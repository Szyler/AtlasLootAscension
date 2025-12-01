local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local difficultys = {
	{"Heroic Bloodforged", 2},
	{"Bloodforged", 1},
	{"Superior", 4},
	{"Heroic", 4},
	{"Ascended", 6}
}

local function getNormalLevel(discription)
	for _, match in ipairs(difficultys) do
		if string.match(discription, match[1]) then
			return match[1], match[2]
		end
	end
end

local function getMythicLevel(description)
	for i = 1, 40 do
  		local mythicNumber = string.match(description, "Mythic (%d+)")

		if mythicNumber then
			if tonumber(mythicNumber) == i then
				return "Mythic "..i, (5 + i)
			end
		end
	end
	if string.match(description, "Mythic") then
		return "Mythic", 5
	end
end

function AtlasLoot:GetDifficultyFromDescription(item)
	if not item then return end
	local _, description, _ = string.split("@", item.description, 3)
	if not description then return end
	local dif, difNum = getMythicLevel(description)
	if dif then
		return dif, difNum
	else
		return getNormalLevel(item.description)
	end
end

local itemLevels = {
	{1, 101}, -- Vanilla / Classic
	{101, 178}, -- TBC
	{167, 290}, -- WoTLK
}

function AtlasLoot:MatchItemLevelBracket(ogILevel, newILevel)
	for _, bracket in pairs(itemLevels) do
		if ogILevel > bracket[1] and ogILevel < bracket[2] and newILevel > ogILevel and newILevel < bracket[2] then return true end
	end
end

local updateFrameCreated
function AtlasLoot:CreateUpdateText()
    if updateFrameCreated then return end
    local updateCounterFrame = CreateFrame("Frame", "AtlasLootDbUpdate", UIParrnt, nil)
	updateCounterFrame:SetPoint("CENTER",0,200)
	updateCounterFrame:SetSize(400,50)
	updateCounterFrame:Hide()
	updateCounterFrame.cText = updateCounterFrame:CreateFontString("AtlasLootDbUpdateText","OVERLAY","GameFontNormal")
	updateCounterFrame.cText:Show()
	updateCounterFrame.cText:SetPoint("CENTER",0,0)
	updateCounterFrame.lastIDText = updateCounterFrame:CreateFontString("AtlasLootIDUpdateText","OVERLAY","GameFontNormal")
	updateCounterFrame.lastIDText:Show()
	updateCounterFrame.lastIDText:SetPoint("TOP", updateCounterFrame.cText, "BOTTOM" ,10,0)
    updateFrameCreated = true
end

local function removeExtraText(text)
	text = text:gsub( "Bloodforged", "" )
	text = text:gsub( "%W", "" )
	return text
end


function AtlasLoot:GetSourceList()
	local itemSource = {}
	self:IsLootTableAvailable("AtlasLootOriginalWoW")
	self:IsLootTableAvailable("AtlasLootBurningCrusade")
	self:IsLootTableAvailable("AtlasLootWotLK")
	self:IsLootTableAvailable("AtlasLoot_Crafting_OriginalWoW")
    for _, data in pairs(AtlasLoot_Data) do
		if data.Type then
			for _, t in ipairs(data) do
				for _, side in ipairs(t) do
					for _, itemData in pairs(side) do
						if type(itemData) == "table" then
							if itemData.itemID then
								for _, dif in ipairs(self.Difficulties[data.Type]) do
									local itemType = GetItemInfoInstant(itemData.itemID) or nil
									if dif[2] ~= 3 and itemType then
										itemSource[dif[1]] = itemSource[dif[1]] or {}
										local name = itemType.name:gsub( "%W", "" )..itemType.inventoryType
										itemSource[dif[1]][name] = itemSource[dif[1]][name] or {}
										local itemTable = itemSource[dif[1]][name]
											local function checkForDuplicate(itemID)
												for _ , item in pairs(itemTable) do
													if item[1] == itemID then return true end
												end
											end
										if not checkForDuplicate(itemData.itemID) then
											tinsert(itemTable, {itemData.itemID, itemType.itemLevel})
										end
									end
								end
							end
						end
					end
				end
			end
		end
    end
	if self:CheckIfEmptyTable(itemSource) then return end
	return itemSource
end

function AtlasLoot:UpdateItemIDsDatabase(firstID, lastID)
	wipe(AtlasLootItemCache)
	local itemSource = self:GetSourceList()
	if not itemSource then return end
    self:CreateUpdateText()
    AtlasLootDbUpdate:Show()

	local maxDuration = (self.selectedProfile.ItemLoadingSpeed*500)/GetFramerate()
    local startTime = debugprofilestop()
	firstID = firstID or 1
	lastID = lastID or 10000000
	AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)

		local function checkID(item, difficulty, difficultyNum)
			if difficulty and item and item.name then
				local foundName = removeExtraText(item.name)..item.inventoryType
				if foundName then
					local itemData = itemSource[difficulty] and itemSource[difficulty][foundName]
					if itemData then
						for _ , storedItem in pairs(itemData) do
							local orignalID = storedItem[1]
							AtlasLootItemCache[orignalID] = AtlasLootItemCache[orignalID] or {}
							if not AtlasLootItemCache[orignalID][difficultyNum] or self:MatchItemLevelBracket(storedItem[2], item.itemLevel) then
								AtlasLootItemCache[orignalID][difficultyNum] = item.itemID
								AtlasLootIDUpdateText:SetText("Last ItemID Added: "..firstID)
							end
						end
					end
				end
			end
			AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)
		end

    local function continue()
		if self:CheckIfEmptyTable(itemSource) then
			return
		end
        startTime = debugprofilestop()
        while (firstID ~= lastID) do
			local item = GetItemInfoInstant(firstID)
			local difficulty, difficultyNum = self:GetDifficultyFromDescription(item)
			if item and difficulty and difficultyNum then
				checkID(item, difficulty, difficultyNum)
			end
			firstID = firstID + 1
            AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)
            if (debugprofilestop() - startTime > maxDuration) then
				collectgarbage("collect")
                Timer.After(0, continue)
                return
            end
        end
		AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\nUpdate Complete Reloadui To Save")
    end

    return continue()
end

--[[
AtlasLoot:GetItemDifficultyID(id, difficulty)
Finds the Ids of other difficulties based on the normal id of the item and the difficulty parameter given.
On the form of {ID, {bloodforged, heroic bloodforged, normal, heroic, mythic, mythic1/ascended, mythic2, ... ,mythicN}}
]]
function AtlasLoot:GetItemDifficultyID(id, difficulty)
	if not difficulty or difficulty == 3 then return id end
	local correctID = GetItemDifficultyID(id, difficulty)
	if correctID and self:GetItemInfo(correctID) then
		return correctID
	end
	return id
end

local runOnce
function AtlasLoot:GetMerchantItems(missingOnly)
	AtlasLootOtherIds = AtlasLootOtherIds or {}
	tinsert(AtlasLootOtherIds, {})
	local numItems = GetMerchantNumItems()
	if numItems then
		for index = 1, numItems do
			local link = GetMerchantItemLink(index)
			local itemID = GetItemInfoFromHyperlink(link)
			local itemName = self:GetItemInfo(itemID)
			local _, itemCost, currency = GetMerchantItemCostItem (index, 1)
			local currencyID = currency and GetItemInfoFromHyperlink(currency)

			if missingOnly then
				if not runOnce then
					self:CreateItemSourceList(true)
					runOnce = true
				end

				if not self.ItemSourceList[itemID] then
					tinsert(AtlasLootOtherIds[#AtlasLootOtherIds], { itemID, itemName })
				end
			elseif not missingOnly then
				if itemCost then
					tinsert(AtlasLootOtherIds[#AtlasLootOtherIds], { itemID, itemCost, currencyID, itemName})
				else
					tinsert(AtlasLootOtherIds[#AtlasLootOtherIds], { itemID, itemName })
				end
			end
		end
	end
end
--[[ Regex used on the merchant data to put it in a better formate for atlasloot
search with this
\{(.*)
(.+?),(.*)
(.+?)"(.+?)"(.*)
(.*)

replace with this
{ itemID = $2 }; --$5

]]

function AtlasLoot:CreateMainLootTable()
	local function addItem(item)
		if item.refLootEntry then
			if not self.itemData[item.refLootEntry] then self.itemData[item.refLootEntry] = {} end
			table.insert(self.itemData[item.refLootEntry], item)
		end
	end
	self:RateLimitLoadTable(AtlasLoot_ItemData, addItem)
end

local itemCatagories = {
	Armor = {Cloth = {}, Leather = {}, Mail = {}, Plate = {}, Misc = {}},
	Weapon = {},
	Misc = {}
}

local function sortItemData(dataSource)
	if dataSource.sorted then return dataSource end
	for _, itemData in pairs(dataSource) do
		local itemType, itemSubType, _, itemEquipLoc = select(6, AtlasLoot:GetItemInfo(itemData.itemID))
		print(itemType)
		local iType = itemCatagories[itemType]
		if iType and iType[itemSubType] then
			local addType
			if itemEquipLoc then
				iType[itemSubType][itemEquipLoc] = iType[itemSubType][itemEquipLoc] or {}
				addType = iType[itemSubType][itemEquipLoc]
			else
				iType[itemSubType].Misc = iType[itemSubType].Misc or {}
				addType = iType[itemSubType].Misc
			end
			table.insert(addType, itemData)
		elseif iType then
			iType.Misc = iType.Misc or {}
			table.insert(iType.Misc, itemData)
		else
			table.insert(itemCatagories.Misc, itemData)
		end
	end

	local function getLootItem(table)
		for _, item in pairs(table) do
			if item.refLootEntry then
				return item
			else
				return getLootItem(item)
			end
		end
	end

	local sortedTable = {{}}
	for _, catType in pairs(itemCatagories) do
		if #sortedTable[#sortedTable] > 30 then
			sortedTable[(#sortedTable+1)] = {}
		end
		local newTable = sortedTable[#sortedTable]
		local item = getLootItem(catType)
		table.insert(newTable, item)
	end
	sortedTable.sorted = true
	dataSource = sortedTable
	return dataSource, #dataSource

end

function AtlasLoot:GetSourceData(dataSource_backup, dataID, tablenum)
	local dataTable, dataSource
	if dataSource_backup == "AtlasLoot_CurrentWishList" then
		dataTable = _G["AtlasLootWishList"]
	elseif dataSource_backup == "AtlasLoot_Data" then
		dataSource = self.ui.menus.data[dataID]
		dataTable = self.itemData[dataSource[tablenum][2]]
	end
	local itemData, numberPages = sortItemData(dataTable)
	return dataSource, itemData, numberPages
end