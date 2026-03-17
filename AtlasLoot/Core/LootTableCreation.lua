local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


--Creates tables for raid tokens from the collections tables
function AtlasLoot:CreateToken(dataID)
	local itemType, slotType, itemName, itemType2
	--orginal dataID
	local orgID = dataID
	--list of item types to find
	local names = { {"HEAD", "INVTYPE_HEAD", "Head"}, {"SHOULDER", "INVTYPE_SHOULDER", "Shoulders"}, {"CHEST", "INVTYPE_CHEST", "Chest", "INVTYPE_ROBE"}, {"WRIST", "INVTYPE_WRIST", "Wrists"}, {"HAND", "INVTYPE_HAND", "Hands"}, {"WAIST", "INVTYPE_WAIST", "Waist"}, {"LEGS", "INVTYPE_LEGS", "Legs"}, {"FEET", "INVTYPE_FEET", "Feet"}, {"FINGER", "INVTYPE_FINGER", "Rings"}, {"BACK", "INVTYPE_CLOAK", "Back"}, {"NECK", "INVTYPE_NECK", "Necklace"}}
	--finds the item type to create a list of
	for _, b in pairs(names) do
		dataID = gsub(dataID, b[1], "")
		slotType = gsub(orgID, dataID, "")
		if slotType == b[1] then
			itemType = b[2]
			itemType2 = b[4]
			itemName = b[3]
			break
		end
	end
	--Creates data set of the item type
	if (self.data.token[orgID] == nil) then
		self.data.token[orgID] = {
			Name = itemName,
			Type = self:GetDataType(dataID),
			Back = true,
			NoSubt = true,
			[1] = {}
		}
	end
	local function addItem(itemID, desc)
		local itemT = select(9, self:GetItemInfo(itemID))
		if itemType == itemT or itemType2 == itemT then
			table.insert(self.data.token[orgID][1], {itemID = itemID, desc = desc})
		end
	end
	local count = 1
	--Fills table with items
	while self.data.item[dataID..count] do
		for _, item in ipairs(self.data.item[dataID..count]) do
			if item.itemID then
				addItem(item.itemID, self:GetDataPageName(dataID, count))
			end
		end
		count = count + 1
	end
	self:ShowItemsFrame("refresh")
end

local function checkForWorldforgedUpdate(typeL)
	local currentNumber = 0
	-- Check if cache exists and count items in it
	if AtlasLoot_Data_Cache and AtlasLoot_Data_Cache[typeL] then
		for _, t in ipairs(AtlasLoot_Data_Cache[typeL]) do
				for _, v in ipairs(t) do
					if type(v) == "table" and v.itemID then
						currentNumber = currentNumber + 1
					end
				end
		end
	end
	-- Check if the global list exists and compare item count
	if _G[typeL] and #_G[typeL] ~= currentNumber then
		return true
	end
end

--Creates a sorted and consolidated loottable of all of an xpacs dungeon loot
function AtlasLoot:CreateOnDemandLootTable(typeL, isDungeon, name)
	if isDungeon then
		-- Return and show loot table if its already been created
		if self.data.onDemand and self.data.onDemand[typeL] then return self:ShowItemsFrame(typeL, "AtlasLoot_OnDemand", 1, 1) end
	else
		-- Return and show loot table if its already been created and up to date
		if not AtlasLoot_Data_Cache or checkForWorldforgedUpdate(typeL) then
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
				for tableNum, itemData in ipairs(data) do
					if type(itemData) == "table" and itemData.itemID and not checkList[itemData.itemID] then
						itemData.dropLoc = {self:GetDataDisplayName(dataID), self:GetDataPageName(dataID,tableNum)}
						itemData.lootTable = {{dataID, "AtlasLoot_Data", tableNum}, "Source"}
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
	-- Text Conversion
	local function getEquipSlot(slot)
		local equipSlots = {
			INVTYPE_HEAD = "Head", INVTYPE_SHOULDER = "Shoulder", INVTYPE_CHEST = "Chest",
			INVTYPE_WRIST = "Wrist", INVTYPE_HAND = "Hands", INVTYPE_WAIST = "Waist",
			INVTYPE_LEGS = "Legs", INVTYPE_FEET = "Feet", INVTYPE_FINGER = "Ring",
			INVTYPE_CLOAK = "Back", INVTYPE_NECK = "Neck", INVTYPE_WEAPONOFFHAND = "Off Hand",
			INVTYPE_WEAPONMAINHAND = "Mainhand", INVTYPE_TRINKET = "Trinket", INVTYPE_HOLDABLE = "Caster Offhand"}
		return equipSlots[slot] and " - "..equipSlots[slot] or nil
	end

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
			self:ShowItemsFrame(typeL, "AtlasLoot_OnDemand", 1, 1)
			firstLoad = true
		end
		if not isDungeon then
			AtlasLoot_Data_Cache[typeL] = self.data.onDemand[typeL]
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
					local slot = getEquipSlot(getEquip(eLoc))
					local name = slot and items[2] and aType.." "..items[2]..slot or aType or ""
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
