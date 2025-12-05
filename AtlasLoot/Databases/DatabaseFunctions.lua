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

local equipLocType = {
    INVTYPE_HEAD = 1,
	INVTYPE_SHOULDER = 2,
	INVTYPE_BODY = 3,
    INVTYPE_CHEST = 3,
	INVTYPE_ROBE = 3,
	INVTYPE_WRIST = 4,
	INVTYPE_HAND = 5,
    INVTYPE_WAIST = 6,
    INVTYPE_LEGS = 7,
    INVTYPE_FEET = 8,
    INVTYPE_CLOAK = 9,
	INVTYPE_FINGER = 10,
	INVTYPE_NECK = 11,
    INVTYPE_TRINKET = 12,
    INVTYPE_RANGED = 13,
	INVTYPE_RANGEDRIGHT = 14,
	INVTYPE_THROWN = 15,
	INVTYPE_WEAPON = 16,
	INVTYPE_WEAPONMAINHAND = 17,
    INVTYPE_WEAPONOFFHAND = 18,
    INVTYPE_2HWEAPON = 19,
    INVTYPE_SHIELD = 20,
	INVTYPE_HOLDABLE = 21,
    INVTYPE_RELIC = 22,
	INVTYPE_BAG = 23,
    INVTYPE_TABARD = 24,
    INVTYPE_AMMO = 25,
    INVTYPE_QUIVER = 26,
	INVTYPE_NON_EQUIP = 27,
}

local subType = {
    Cloth = 1,
    Leather = 2,
    Mail = 3,
    Plate = 4,
	Bows = 5,
    Guns = 6,
	Crossbows = 7,
    Wands = 8,
	Thrown = 9,
    ["One-Handed Axes"] = 10,
    ["Two-Handed Axes"] = 11,
    ["One-Handed Maces"] = 12,
    ["Two-Handed Maces"] = 13,
    ["One-Handed Swords"] = 14,
    ["Two-Handed Swords"] = 15,
	Polearms = 16,
    Staves = 17,
    ["Fist Weapons"] = 18,
    Daggers = 19,
    Shields = 20,
    Miscellaneous = 21,
	Librams = 22,
    Idols = 23,
    Totems = 24,
    Sigils = 25,
    ["Fishing Poles"] = 26,
	Enchanting = 27,
	Quest = 28,
	Pet = 29
}

local baseType = {
	Armor = 1, Weapon = 2, Recipe = 3, Quest = 4, Miscellaneous = 5
}

local function createItemCatagoiresTable()
	local newTable = {}
		for _, base in pairs(baseType) do
			newTable[base] = {}
			for _, sub in pairs(subType) do
				newTable[base][sub] = {}
				for _, loc in pairs(equipLocType) do
					newTable[base][sub][loc] = {}
				end
			end
		end
	return newTable
end

local function sortItemData(itemData)
	if itemData.sorted then return itemData end
	local itemCatagories = createItemCatagoiresTable()

	for _, itemData in pairs(itemData) do
		local itemType, itemSubType, _, itemEquipLoc = select(6, AtlasLoot:GetItemInfo(itemData.itemID))
		local iType = itemCatagories[baseType[itemType]]
		if iType and iType[subType[itemSubType]] then
			local addType
			if itemEquipLoc and equipLocType[itemEquipLoc] then
				addType = iType[subType[itemSubType]][equipLocType[itemEquipLoc]]
			else
				addType = iType[subType[itemSubType]]
			end
			table.insert(addType, itemData)
		else
			table.insert(itemCatagories[5], itemData)
		end
	end

	local sortedTable = {{}}
	local function getLootItem(cat)
		if cat.refLootEntry then
			if #sortedTable[#sortedTable] >= 30 then
				table.insert(sortedTable, {})
			end
			table.insert(sortedTable[#sortedTable], cat)
		else
			for _, item in ipairs(cat) do
				getLootItem(item)
			end
		end
	end
	getLootItem(itemCatagories)
	sortedTable.sorted = true
	return sortedTable

end

function AtlasLoot:GetSourceData(dataSource_backup, dataID, tablenum)
	local itemData, dataSource
	if dataSource_backup == "currentWishList" then
		dataSource = self.currentWishList[dataID]
		itemData = self.currentWishList[dataID][tablenum]
	elseif dataID == "SearchResult" then
		dataSource = AtlasLootCharDB[dataID]
		itemData = AtlasLootCharDB[dataID][1]
	elseif dataSource_backup == "AtlasLoot_Data" then
		dataSource = self.ui.menus.data[dataID]
		itemData = sortItemData(self.itemData[dataSource[tablenum][2]])
		self.itemData[dataSource[tablenum][2]] = itemData
	end
	return dataSource, itemData, #itemData
end