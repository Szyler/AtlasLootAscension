local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local ItemUtil = {parent = AtlasLoot}
AtlasLoot.ItemUtil = ItemUtil

local equipmentSlots = {
	-- 1 INVTYPE_HEAD
	{
		name = "Head",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	-- 2 INVTYPE_NECK
	{
		name = "Neck",
		pvpCost = "24000 #faction#",
	},
	-- 3 INVTYPE_SHOULDERS
	{
		name = "Shoulders",
		pvpCost = "24000 #faction#",
		arenaCost = "1125 #arena#",
	},
	-- 4 INVTYPE_BODY
	{
		name = "Shirt",
	},
	-- 5 INVTYPE_CHEST
	{
		name = "Chest",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	-- 6 INVTYPE_WAIST
	{
		name = "Waist",
		pvpCost = "17000 #faction#",
	},
	-- 7 INVTYPE_LEGS
	{
		name = "Legs",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	-- 8 INVTYPE_FEET
	{
		name = "Feet",
		pvpCost = "24000 #faction#",
	},
	-- 9 INVTYPE_WRISTS
	{
		name = "Wrists",
		pvpCost = "17000 #faction#",
	},
	-- 10 INVTYPE_HANDS
	{
		name = "Hands",
		pvpCost = "20000 #faction#",
		arenaCost = "1000 #arena#",
	},
	-- 11 INVTYPE_FINGER
	{
		name = "Ring",
		pvpCost = "24000 #faction#",
	},
	-- 12 INVTYPE_TRINKET
	{
		name = "Trinket",
		pvpCost = "30400 #faction#",
	},
	-- 13 INVTYPE_WEAPON
	{
		name = "One-Handed Weapon",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#",
	},
	-- 14 INVTYPE_SHIELD
	{
		name = "Shield",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#",
	},
	-- 15 INVTYPE_RANGED
	{
		name = "Ranged",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#",
	},
	-- 16 INVTYPE_CLOAK
	{
		name = "Back",
		pvpCost = "30400 #faction#",
	},
	-- 17 INVTYPE_2HWEAPON
	{
		name = "Two-Handed Weapon",
		pvpCost = "40000 #faction#",
		arenaCost = "2700 #arena#",
	},
	-- 18 INVTYPE_BAG
	{
		name = "Bag",
	},
	-- 19 INVTYPE_TABARD
	{
		name = "Tabard",
	},
	-- 20 INVTYPE_ROBE
	{
		name = "Robe",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	-- 21 INVTYPE_WEAPONMAINHAND
	{
		name = "Main Hand",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#",
	},
	-- 22 INVTYPE_WEAPONOFFHAND
	{
		name = "Off Hand",
		pvpCost = "24000 #faction#",
		arenaCost = "750 #arena#",
	},
	-- 23 INVTYPE_HOLDABLE
	{
		name = "Held In Off-Hand",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#",
	},
	-- 24 INVTYPE_AMMO
	{
		name = "Ammo",
	},
	-- 25 INVTYPE_THROWN
	{
		name = "Thrown",
		pvpCost = "15000 #faction#",
		arenaCost = "750 #arena#",
	},
	-- 26 INVTYPE_RANGEDRIGHT
	{
		name = "Ranged Right",
	},
	-- 27 INVTYPE_QUIVER
	{
		name = "Quiver",
	},
	-- 28 INVTYPE_RELIC
	{
		name = "Relic",
		pvpCost = "15000 #faction#",
		arenaCost = "750 #arena#",
	},
	{
		name = "None Equipable",
	},
}

-- custom getiteminfo returns same formate as getiteminfo but will use info from either getiteminfo or getiteminfoinstant
function ItemUtil:GetItemInfo(item)
	if not item or item == 0 then return end
	item = tonumber(item) and Item:CreateFromID(item) or Item:CreateFromLink(item)

	local itemInfo = item:GetInfoInstant() or {}
	itemInfo.link = item:GetLink()
	if not itemInfo.itemID then return {} end

	itemInfo.className = _G["ITEM_CLASS_"..itemInfo.classID]
	itemInfo.subclassName = self:GetSubClassName(itemInfo.classID, itemInfo.subclassID)
	itemInfo.inventoryTypeName = equipmentSlots[itemInfo.inventoryType] and equipmentSlots[itemInfo.inventoryType].name
	itemInfo.isToken = itemInfo.description and itemInfo.description:find("Global Token for Tier", 1, true) or nil
	return itemInfo
end

function ItemUtil:GetItemEquiplocation(id)
	return self:GetItemInfo(id).inventoryType
end

function ItemUtil:GetItemName(id)
	return self:GetItemInfo(id).name
end

function ItemUtil:GetItemIcon(id)
	return self:GetItemInfo(id).icon
end

function ItemUtil:GetItemLink(id)
	return self:GetItemInfo(id).link
end

function ItemUtil:GetItemQuality(id)
	return self:GetItemInfo(id).quality
end

function ItemUtil:GetItemLevel(id)
	return GetItemLevelInstant(id)
end

function ItemUtil:GetClassName(id)
	return self:GetItemInfo(id).className
end

function ItemUtil:GetSubClassName(classID, subclassID)
	if not subclassID then return end
	return _G["ITEM_SUBCLASS_"..classID.."_"..subclassID]
end

function ItemUtil:GetSlotName(slot)
	if not equipmentSlots[slot] then return end
	return equipmentSlots[slot].name, equipmentSlots[slot].altName
end

function ItemUtil:GetSlotCost(slot)
	if not equipmentSlots[slot] then return end
	return equipmentSlots[slot].pvpCost, equipmentSlots[slot].arenaCost
end

function ItemUtil:GetList()
    return equipmentSlots
end

function ItemUtil:GetDropRate(refLootEntry, groupID)
	if not refLootEntry or not groupID then return end

	if self.parent.data.itemDropRates[refLootEntry] and self.parent.data.itemDropRates[refLootEntry][groupID] then
		return string.format("%.2f%%",(self.parent.data.itemDropRates[refLootEntry][groupID])*100) or nil
	end
end

local function IgnoreTables(dataSource)
	local cTable = {"CraftingCLASSIC", "CraftingTBC", "CraftingWRATH", "CollectionsAscensionCLASSIC", "CollectionsAscensionTBC", "CollectionsAscensionWRATH"}
	for _, t in pairs(cTable) do
		for _, crafting in  ipairs(AtlasLoot.ui.menus.collection[t]) do
			if crafting[3] then
				for _, ignore in pairs(crafting[3]) do
					if dataSource == ignore[2] then return true end
				end
			end
			if dataSource == crafting[2] then return true end
		end
	end
end

local itemSourceList = {}
function ItemUtil:CreateItemSourceList()
	local function addItem(itemData, dataType)
		if type(itemData) == "table" then
			local sourceData = self.parent:GetSourcesExtendedInfo(dataType)
			if sourceData and sourceData.Source and itemData.itemID then
				itemSourceList[itemData.itemID] = sourceData.Source
				if itemData.spellID then
					local recipeID = self.parent.TradeSkill:GetRecipeID(itemData.spellID) or nil
					if recipeID and (itemSourceList[recipeID] and not IgnoreTables(dataType) or not itemSourceList[recipeID]) then
						itemSourceList[recipeID] = sourceData.Source
					end
				end
			else
				for _, nextData in pairs(itemData) do
					addItem(nextData, dataType)
				end
			end
		end
	end

	for dataType, data in pairs(self.parent.data.item) do
		addItem(data, dataType)
	end
end


local function getNormalItemID(id)
	if ItemIDsDatabaseCorrectedIDs[id] or ItemIDsDatabase[id] then return id end
	-- Corrected itemIDs database
	-- Search's and returns the normal itemID
	for normalID, item in pairs(ItemIDsDatabaseCorrectedIDs) do
		for _, newID in pairs(item) do
			if newID == id then
				return normalID
			end
		end
	end
	-- Main itemIDs database
	-- Search's and returns the normal itemID
	for normalID, item in pairs(ItemIDsDatabase) do
		for _, newID in pairs(item) do
			if newID == id then
				return normalID
			end
		end
	end
end

-- Gets the drop source for an item
function ItemUtil:GetItemSource(itemID)
	local itemSource = itemSourceList[getNormalItemID(itemID)]
	if itemSource and itemSource[1] and itemSource[2] then
		return "Item Source: " .. self.parent.Colors.CYAN.. self.parent:GetDisplayNameByID(itemSource[1]) .. self.parent.Colors.WHITE .. " - " .. self.parent:GetDataPageName(itemSource[1], itemSource[2])
	end
end