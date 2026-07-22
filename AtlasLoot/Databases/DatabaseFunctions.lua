local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local difficultys = {
	{"Heroic Bloodforged", 2},
	{"Bloodforged", 1},
	{"Superior", 4},
	{"Heroic", 4},
	{"Ascended", 6}
}

local excludeList = {
	"Ancient"
}

-- checks exclusion list for unwanted item difficultys
local function checkExclude(discription)
	for _, exclude in pairs(excludeList) do
		if string.match(discription, exclude) then
			return false
		end
	end
	return true
end

-- returns correct difficultys
local function getNormalLevel(discription)
	for _, match in ipairs(difficultys) do
		if string.match(discription, match[1]) and checkExclude(discription) then
			return match[1], match[2]
		end
	end
end

-- returns the correct mythic level
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

	local function addItem(itemData, dataType)
		if type(itemData) == "table" then
			local typeData = self:GetDataType(dataType)
			local diffList = self.Difficulties:GetList(typeData)
			if typeData and diffList and itemData.itemID then
				for _, dif in ipairs(diffList) do
					local itemInfo = self:GetItemInfo(itemData.itemID) or nil
					if dif[2] ~= 3 and itemInfo then
						itemSource[dif[1]] = itemSource[dif[1]] or {}
						local name = itemInfo.name:gsub( "%W", "" )..itemInfo.inventoryType
						itemSource[dif[1]][name] = itemSource[dif[1]][name] or {}
						local itemTable = itemSource[dif[1]][name]
							local function checkForDuplicate(itemID)
								for _ , item in pairs(itemTable) do
									if item[1] == itemID then return true end
								end
							end
						if not checkForDuplicate(itemData.itemID) then
							tinsert(itemTable, {itemData.itemID, itemInfo.itemLevel})
						end
					end
				end
			else
				for _, nextData in pairs(itemData) do
					addItem(nextData, dataType)
				end
			end
		end
	end

	for dataType, data in pairs(self.data.item) do
		addItem(data, dataType)
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
			local item = self.ItemUtil:GetItemInfo(firstID)
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
	if correctID and self.ItemUtil:GetItemName(correctID) then
		return correctID
	end
	return id
end

function AtlasLoot:GetMerchantItems(missingOnly)
	AtlasLootOtherIds = AtlasLootOtherIds or {}
	tinsert(AtlasLootOtherIds, {})
	local numItems = GetMerchantNumItems()
	if numItems then
		for index = 1, numItems do
			local link = GetMerchantItemLink(index)
			local itemID = GetItemInfoFromHyperlink(link)
			local itemName = self.ItemUtil:GetItemName(itemID)
			local _, itemCost, currency = GetMerchantItemCostItem (index, 1)
			local currencyID = currency and GetItemInfoFromHyperlink(currency)

			if missingOnly then
				if not self:GetItemSource(itemID) then
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

function AtlasLoot:InitializeDataTables()
	if self.data then return end
	self.data = {
		item = { EmptyTable = {}},
		token = {},
		map = {},
		crafting = {},
		extraItemInfo = {},
		itemDropRates = {},
		lootableLinks = {},
		onDemand = {}
	}
end

function AtlasLoot:AddItemData(var1, var2)
	local dataType, data
	if type(var1) == "table" then
		data = var1
	else
		dataType = var1
		data = var2
	end

	self:InitializeDataTables()
	if dataType == "sort" then
		local function addItem(item)
			if item.refLootEntry then
				if not self.data.item[item.refLootEntry] then self.data.item[item.refLootEntry] = {} end
				table.insert(self.data.item[item.refLootEntry], item)
			end
		end
		self:RateLimitLoadTable(data, addItem)
	elseif dataType and dataType ~= "dontSort" then
		for tableName, table in pairs(data) do
			self.data[dataType][tableName] = table
		end
	else
		for tableName, tableParent in pairs(data) do
			for i, table in pairs(tableParent) do
				self.data.item[tableName..i] = table
				if dataType == "dontSort" then self.data.item[tableName..i].dontSort = true end
				for _, item in ipairs(self.data.item[tableName..i]) do
					item.refLootEntry = tableName..i
				end
			end
		end
	end
	wipe(data)
	collectgarbage("collect")
end

local subTypes = {
	"Cloth",
	"Leather",
	"Mail",
	"Plate",
	"Bows",
	"Guns",
	"Crossbows",
	"Wands",
	"Thrown",
	"One-Handed Axes",
	"Two-Handed Axes",
	"One-Handed Maces",
	"Two-Handed Maces",
	"One-Handed Swords",
	"Two-Handed Swords",
	"Polearms",
	"Staves",
	"Fist Weapons",
	"Daggers",
	"Shields",
	"Miscellaneous",
	"Librams",
	"Idols",
	"Totems",
	"Sigils",
	"Fishing Poles",
	"Alchemy",
	"Blacksmithing",
	"Cooking",
	"Enchanting",
	"Engineering",
	"Firstaid",
	"Leatherworking",
	"Mining",
	"Tailoring",
	"Quest",
	"Pet",
	"Mount"
}
local subType = {}
--creates a key table for subtypes giving them a number value
for i, sType in ipairs(subTypes) do
	subType[sType] = i
end

local baseType = {
	Armor = 1, Weapon = 2, Recipe = 3, Quest = 4, Miscellaneous = 5
}

local displayData = {}

local function getLootItem(newTable, node)
    if not node then return end
    -- Check if this is an item entry object rather than a category container
    if node.itemID or node.refLootEntry then
        if #newTable[#newTable] >= 30 then 
            table.insert(newTable, {}) 
        end
        table.insert(newTable[#newTable], node)
    else
        -- Recursively unpack nested sub-categories down to the individual items
        for _, subNode in pairs(node) do
            getLootItem(newTable, subNode)
        end
    end
end

local function sortItemData(self, dataSource, dataID, tablenum)
    if not dataSource or not dataSource[tablenum] then return end
    
    local lootTables = { self.data.item[dataID..tablenum] and dataID..tablenum }
    local lootTableName = (self.data.item[dataID..tablenum] and dataID..tablenum) or 
                          (#dataSource[tablenum][2] > 0 and self.data.item[dataSource[tablenum][2][1]] and dataSource[tablenum][2][1])
    
    if displayData[lootTableName] then return displayData[lootTableName] end
    
    local dontSort, isVanity = false, false
    if #dataSource[tablenum][2] > 0 then
        for _, ref in pairs(dataSource[tablenum][2]) do
            if self.data.item[ref] then
                dontSort = dontSort or self.data.item[ref].dontSort
                isVanity = isVanity or self.data.item[ref].vanityCollection
                table.insert(lootTables, ref)
            end
        end
    end
    
    dontSort = dontSort or (self.data.item[lootTableName] and self.data.item[lootTableName].dontSort) or false
    isVanity = isVanity or (self.data.item[lootTableName] and self.data.item[lootTableName].vanityCollection) or false
    if #lootTables == 0 then return end
    
    local newTable = {{}}
    local duplicateCheck = {}
    
    if not dontSort then
        local itemCatagories = {}
        for _, lootTableSelection in ipairs(lootTables) do
            if self.data.item[lootTableSelection] then
                for _, itemData in ipairs(self.data.item[lootTableSelection]) do
                    if itemData and itemData.itemID and not duplicateCheck[itemData.itemID] then
                        local itemInfo = self.ItemUtil:GetItemInfo(itemData.itemID)
                        
                        -- Graceful fallbacks for uncategorised or pending item database queries
                        local className = itemInfo and itemInfo.className or "Miscellaneous"
                        local subclassName = itemInfo and itemInfo.subclassName or "Miscellaneous"
                        local inventoryType = itemInfo and itemInfo.inventoryType
                        
                        local bTypeIdx = baseType[className] or 5
                        if not itemCatagories[bTypeIdx] then
                            itemCatagories[bTypeIdx] = {}
                        end
                        local iType = itemCatagories[bTypeIdx]
                        
                        local sTypeIdx = subType[subclassName] or 21
                        if not iType[sTypeIdx] then
                            iType[sTypeIdx] = {}
                        end
                        
                        local addType
                        if inventoryType then
                            if not iType[sTypeIdx][inventoryType] then
                                iType[sTypeIdx][inventoryType] = {}
                            end
                            addType = iType[sTypeIdx][inventoryType]
                        else
                            addType = iType[sTypeIdx]
                        end
                        
                        table.insert(addType, itemData)
                        
                        if not itemData.name then
                            duplicateCheck[itemData.itemID] = true
                        end
                    end
                end
            end
        end
        
        -- FIX: Process sparse array indices correctly without breaking via pairs lookup
        for i = 1, 5 do
            local itemCat = itemCatagories[i]
            if itemCat then
                local currentPage = #newTable
                local countBefore = #newTable[currentPage]
                
                getLootItem(newTable, itemCat)
                
                -- Check if items were added to the current grid workspace
                if #newTable[currentPage] > countBefore or #newTable > currentPage then
                    if #newTable[#newTable] >= 30 then
                        table.insert(newTable, {})
                    end
                    -- Insert visual padding block between major item category shifts
                    if #newTable[#newTable] ~= 15 and #newTable[#newTable] ~= 0 then
                        local lastEntry = newTable[#newTable][#newTable[#newTable]]
                        if lastEntry and lastEntry[1] ~= "blankLine" then
                            table.insert(newTable[#newTable], {"blankLine"})
                        end
                    end
                end
            end
        end
        AtlasLootITEMCAT = itemCatagories
        
    elseif isVanity then
        newTable = self.data.item[lootTableName] or {{}}
    else
        for itemNum, item in ipairs(self.data.item[lootTableName] or {}) do
            if (#newTable[#newTable] ~= 0 and item.pageBreak) then
                if #newTable[#newTable] < 16 then
                    for i = 1, (15 - #newTable[#newTable]) do
                        table.insert(newTable[#newTable], {"blankLine"})
                    end
                elseif #newTable[#newTable] > 15 then
                    table.insert(newTable, {})
                end
            end
            table.insert(newTable[#newTable], item)
            if #newTable[#newTable] >= 30 and itemNum ~= #self.data.item[lootTableName] then
                table.insert(newTable, {})
            end
        end
    end
    
    displayData[lootTableName] = newTable
    if self.selectedProfile and self.selectedProfile.isAdmin then
        AtlaslootDisplaydata = displayData
    end
    return displayData[lootTableName]
end





-- Main function for retrieval of a loot tables display data and item data
function AtlasLoot:GetSourceData(dataSource_backup, dataID, tablenum)
	local itemData, dataSource
	if dataSource_backup == "currentWishList" then
		dataSource = self.currentWishList[dataID]
		itemData = self.currentWishList[dataID][tablenum]
	elseif dataSource_backup == "token" then
		dataSource = self.data.token[dataID]
		itemData = self.data.token[dataID]
	elseif dataSource_backup == "onDemand" then
		dataSource = self.data.onDemand[dataID]
		itemData = self.data.onDemand[dataID][tablenum]
	elseif dataSource_backup == "AtlasLoot_Data_Cache" then
		dataSource = AtlasLoot_Data_Cache[dataID]
		itemData = AtlasLoot_Data_Cache[dataID][tablenum]
	elseif dataID == "SearchResult" then
		dataSource = AtlasLootCharDB[dataID]
		itemData = AtlasLootCharDB[dataID][1]
	elseif dataSource_backup == "itemData" then
		dataSource = self.ui.menus.data[dataID]
		itemData = sortItemData(self, dataSource, dataID, tablenum)
	end
	if not itemData then return end
	return dataSource, itemData, #itemData
end