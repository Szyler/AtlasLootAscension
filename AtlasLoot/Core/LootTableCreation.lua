local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

--Creates tables for raid tokens from the collections tables
function AtlasLoot:CreateToken(dataID)
	local newDataID, slotType = string.split("-", dataID, 2)
	local itemType = "INVTYPE_"..slotType
	local slotName = self:GetEquipmentSlotName(itemType)
	
	--Creates data set of the item type
	if (self.data.token[dataID] == nil) then
		self.data.token[dataID] = {
			Name = slotName,
			Type = self:GetDataType(newDataID),
			Back = true,
			NoSubt = true,
			[1] = {}
		}
	end

	local count = 1
	--Fills table with items
	while self.data.item[newDataID..count] do
		for _, item in ipairs(self.data.item[newDataID..count]) do
			if item.itemID then
				local itemT = gsub(select(9, self:GetItemInfo(item.itemID)), "INVTYPE_ROBE", "INVTYPE_CHEST")
				if itemType == itemT then
					table.insert(self.data.token[dataID][1], {itemID = item.itemID, desc = self:GetDataPageName(newDataID..count)})
				end
			end
		end
		count = count + 1
	end
	self:ShowItemsFrame("refresh")
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
						itemData.dropLoc = {self:GetDataDisplayName(dataID), self:GetDataPageName(dataID)}
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

	-- Combind robes with chest
	local function getEquip(equipLoc)
		if equipLoc == "INVTYPE_ROBE" then
			return "INVTYPE_CHEST"
		end
		return equipLoc
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
	local function sortItem(item, armorSubType, equipLoc, armorType)
		if not unsorted[armorSubType] then unsorted[armorSubType] = {} end
		if equipLoc and not unsorted[armorSubType][getEquip(equipLoc)] then unsorted[armorSubType][getEquip(equipLoc)] = {} end
		if equipLoc then
			table.insert(unsorted[armorSubType][getEquip(equipLoc)], {item, armorType})
		else
			local type = armorType or "Misc"
			local subType = armorSubType or "Misc"
			if not unsorted[subType] then unsorted[subType] = {} end
			if not unsorted[subType]["Misc"] then unsorted[subType]["Misc"] = {} end
			table.insert(unsorted[subType]["Misc"], {item, type})
		end

		self.data.onDemand[typeL] = {Name = name, Type = typeL, filter = true }
		for aType, v in pairs(unsorted) do
			for eLoc, t in pairs(v) do
				for i, items in ipairs(t) do
					local slot = self:GetEquipmentSlotName(getEquip(eLoc))
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
	local function processItem(itemData)
		if not itemData then return end
		if itemData.itemID then
			self:ItemsLoading(-1)
			local armorType, armorSubType, _, equipLoc = select(6,self:GetItemInfo(itemData.itemID, true))
			if not isDungeon or armorType == "Armor" or armorType == "Weapon" then
				sortItem(itemData, armorSubType, equipLoc, armorType)
			end
		end
	end
	-- rate limit tied to half the current frame rate
	self:ItemsLoading(#itemList)
	self:RateLimitLoadTable(itemList, processItem)
end
