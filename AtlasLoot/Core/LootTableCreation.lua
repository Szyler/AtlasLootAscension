local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

--Creates tables for raid tokens from the collections tables
function AtlasLoot:CreateToken(dataID, slotNumber)
	local newDataID = dataID..slotNumber
	local slotName = self.ItemUtil:GetSlotName(slotNumber)

	--Creates data set of the item type
	if (self.data.token[newDataID] == nil) then
		self.data.token[newDataID] = {
			Name = slotName,
			Type = self:GetDataType(dataID),
			Back = true,
			NoSubt = true,
			[1] = {}
		}
	end

	local count = 1
	--Fills table with items
	while self.data.item[dataID..count] do
		for _, item in ipairs(self.data.item[dataID..count]) do
			if item.itemID then
				local slot = self.ItemUtil:GetItemEquiplocation(item.itemID)
				if slot == 20 then slot = 5 end
				if slotNumber == slot then
					table.insert(self.data.token[newDataID][1], {itemID = item.itemID, desc = self:GetDataPageName(dataID..count)})
				end
			end
		end
		count = count + 1
	end
end

local function checkForWorldforgedUpdate(self, typeL)
	if AtlasLoot_Data_Cache[typeL] and (not AtlasLoot_Data_Cache[typeL].Version or AtlasLoot_Data_Cache[typeL].Version ~= self.Version) then
		return true
	end
end

--Creates a sorted and consolidated loottable of all of an xpacs dungeon loot
function AtlasLoot:CreateOnDemandLootTable(typeL, isDungeon, name)
	if isDungeon then
		-- Return and show loot table if its already been created
		if self.data.onDemand and self.data.onDemand[typeL] then return self:ShowItemsFrame(typeL, "onDemand", 1, 1) end
	else
		-- Return and show loot table if its already been created and up to date
		if not AtlasLoot_Data_Cache or checkForWorldforgedUpdate(self, typeL) then
			AtlasLoot_Data_Cache = {}
		elseif AtlasLoot_Data_Cache and AtlasLoot_Data_Cache[typeL] then
			return self:ShowItemsFrame(typeL, "AtlasLoot_Data_Cache", 1, 1)
		end
	end
	-- Create ondemand loot table if it dosnt exist
	if not self.data.onDemand then self.data.onDemand = {} end

	if isDungeon then
		--Creates a table of all dungeon items
		local itemList = {}
		local checkList = {}
		for dataID, data in pairs(self.data.item) do
			local dataType = self:GetDataType(dataID)
			if dataType and dataType == typeL then
				for _, itemData in ipairs(data) do
					if type(itemData) == "table" and itemData.itemID and not checkList[itemData.itemID] then
						itemData.dropLoc = {self:GetDisplayNameByID(dataID), self:GetDataPageName(dataID)}
						local dataSource, tableNum = self:GetSourceLocation(dataID)
						itemData.sourcePage = {{dataSource, "itemData", tableNum}, "Source"}
						checkList[itemData.itemID] = true
						table.insert(itemList, itemData)
					end
				end
			end
		end
		wipe(checkList)
		self:PopulateOnDemandLootTable(itemList, typeL, name, isDungeon)
	else
		self:PopulateOnDemandLootTable(_G[typeL], typeL, name, isDungeon)
	end
end


function AtlasLoot:PopulateOnDemandLootTable(itemList, typeL, name, isDungeon)
	local function correctText(text)
		text = gsub(text, "Cloth Armor %- Back", "Back")
		text = gsub(text, "Miscellaneous Armor %- " , "")
		text = gsub(text, "Armor %- " , "Armor "..self.Colors.WHITE.."%- ")
		text = gsub(text, "Weapon %- " , self.Colors.WHITE.."%- ")
		return text
	end

	-- Show the loot table or refresh it
	local firstLoad
	local function showTable()
		if firstLoad then
			self:ShowItemsFrame("refresh")
		else
			self:ShowItemsFrame(typeL, "onDemand", 1, 1)
			firstLoad = true
		end
		if not isDungeon then
			AtlasLoot_Data_Cache[typeL] = self.data.onDemand[typeL]
			AtlasLoot_Data_Cache[typeL].Version = self.Version
		end
	end

	local unsorted = {}
	-- Creates type catagorys and then adds items to them
	local function sortItem(item, armorSubClassID, armorInventoryType, armorClassID)
		if not unsorted[armorSubClassID] then unsorted[armorSubClassID] = {} end
		if armorInventoryType and not unsorted[armorSubClassID][armorInventoryType] then unsorted[armorSubClassID][armorInventoryType] = {} end
		if armorInventoryType then
			table.insert(unsorted[armorSubClassID][armorInventoryType], {item, armorClassID})
		else
			local type = armorClassID or "Misc"
			local subType = armorSubClassID or "Misc"
			if not unsorted[subType] then unsorted[subType] = {} end
			if not unsorted[subType]["Misc"] then unsorted[subType]["Misc"] = {} end
			table.insert(unsorted[subType]["Misc"], {item, type})
		end

		self.data.onDemand[typeL] = {Name = name, Type = typeL, filter = true }
		for aType, v in pairs(unsorted) do
			for eLoc, t in pairs(v) do
				for i, items in ipairs(t) do
					local slot = self.ItemUtil:GetSlotName(eLoc)
					local name = slot and items[2] and aType.." "..items[2].." - "..slot or aType or ""
					local lootType = self.data.onDemand[typeL]
					if i == 1 then
						table.insert(lootType,{Name = correctText(name), {}})
					end
					if #lootType[#lootType][#lootType[#lootType]] >= 30 then
                		table.insert(lootType[#lootType], {})
            		end
					table.insert(lootType[#lootType][#lootType[#lootType]], items[1])
				end
			end
		end
		showTable()
	end

	-- Load items to cache and check they are either an armor or weapon
	local function processItem(item)
		if not item then return end
		if item.itemID then
			self:ItemsLoading(-1)
			local itemData = self.ItemUtil:GetItemInfo(item.itemID)
			if not isDungeon or itemData.classID == 4 or itemData.classID == 2 then
				sortItem(item, itemData.subclassID, itemData.inventoryType, itemData.classID)
			end
		end
	end
	-- rate limit tied to half the current frame rate
	self:ItemsLoading(#itemList)
	self:RateLimitLoadTable(itemList, processItem)
end
