local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local equipmentSlots = {
	INVTYPE_HEAD = {
		name = "Head",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_NECK = {
		name = "Neck",
		pvpCost = "24000 #faction#",
	},
	INVTYPE_SHOULDER = {
		name = "Shoulders",
		pvpCost = "24000 #faction#",
		arenaCost = "1125 #arena#",
	},
	INVTYPE_BODY = {
		name = "Shirt",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_CHEST = {
		name = "Chest",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_ROBE = {
		name = "Chest",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_WAIST = {
		name = "Waist",
		pvpCost = "17000 #faction#",
	},
	INVTYPE_LEGS = {
		name = "Legs",
		pvpCost = "30000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_FEET = {
		name = "Feet",
		pvpCost = "24000 #faction#",
	},
	INVTYPE_WRIST = {
		name = "Wrists",
		pvpCost = "17000 #faction#",
	},
	INVTYPE_HAND = {
		name = "Hands",
		pvpCost = "20000 #faction#",
		arenaCost = "1000 #arena#",
	},
	INVTYPE_FINGER = {
		name = "Ring",
		pvpCost = "24000 #faction#",
	},
	INVTYPE_TRINKET = {
		name = "Trinket",
		pvpCost = "30400 #faction#",
	},
	INVTYPE_CLOAK = {
		name = "Back",
		pvpCost = "30400 #faction#",
	},
	INVTYPE_TABARD = {
		name = "Tabard",
	},
	-- Specific Weapon Slots from ArmorTypes
	INVTYPE_WEAPON = {
		name = "One-Handed Weapon",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#",
	},
	INVTYPE_2HWEAPON = {
		name = "Two-Handed Weapon",
		pvpCost = "40000 #faction#",
		arenaCost = "2700 #arena#",
	},
	INVTYPE_WEAPONMAINHAND = {
		name = "Main Hand",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#",
	},
	INVTYPE_WEAPONOFFHAND = {
		name = "Off Hand",
		pvpCost = "24000 #faction#",
		arenaCost = "750 #arena#",
	},
	INVTYPE_SHIELD = {
		name = "Shield",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_HOLDABLE = {
		name = "Held In Off-Hand",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_RANGED = {
		name = "Ranged",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_RANGEDRIGHT = {
		name = "Ranged Weapon",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#",
	},
	INVTYPE_THROWN = {
		name = "Thrown",
		pvpCost = "15000 #faction#",
		arenaCost = "750 #arena#",
	},
	INVTYPE_RELIC = {
		name = "Relic",
		pvpCost = "15000 #faction#",
		arenaCost = "750 #arena#",
	},
	-- Weapon Sub-Types
	["One-Handed Axes"] = {
		name = "Axe1H",
		altName = "One-Handed Axes",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#"
	},
	["Two-Handed Axes"] = {
		name = "Axe2H",
		altName = "Two-Handed Axes",
		pvpCost = "40000 #faction#",
		arenaCost = "2700 #arena#"
	},
	["One-Handed Swords"] = {
		name = "Sword1H",
		altName = "One-Handed Swords",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#"
	},
	["Two-Handed Swords"] = {
		name = "Sword2H",
		altName = "Two-Handed Swords",
		pvpCost = "40000 #faction#",
		arenaCost = "2700 #arena#"
	},
	["One-Handed Maces"] = {
		name = "Mace1H",
		altName = "One-Handed Maces",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#"
	},
	["Two-Handed Maces"] = {
		name = "Mace2H",
		altName = "Two-Handed Maces",
		pvpCost = "40000 #faction#",
		arenaCost = "2700 #arena#"
	},
	Daggers = {
		name = "Dagger",
		altName = "Daggers",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#"
	},
	["Fist Weapons"] = {
		name = "Fist",
		altName = "Fist Weapons",
		pvpCost = "24000 #faction#",
		arenaCost = "1875 #arena#"
	},
	Shields = {
		name = "Shield",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#"
	},
	Polearms = {
		name = "Polearm",
		pvpCost = "40000 #faction#",
		arenaCost = "2700 #arena#"
	},
	Bows = {
		name = "Bows",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#"
	},
	Guns = {
		name = "Guns",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#"
	},
	Crossbows = {
		name = "Crossbows",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#"
	},
	Thrown = {
		name = "Thrown",
		pvpCost = "15000 #faction#",
		arenaCost = "750 #arena#"
	},
	Wands = {
		name = "Wands",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#"
	},
	Staves = {
		name = "Staves",
		pvpCost = "40000 #faction#",
		arenaCost = "2700 #arena#"
	},
	["Fishing Poles"] = {
		name = "FishingPole",
		altName = "Fishing Poles"
	},
	OffHands = {
		name = "OffHand",
		altName = "OffHands",
		pvpCost = "15000 #faction#",
		arenaCost = "1500 #arena#"
	},
	Consumable = {
		name = "Consumable"
	},
}

function AtlasLoot:GetEquipmentSlotName(slot)
	if not equipmentSlots[slot] then return end
	return equipmentSlots[slot].name, equipmentSlots[slot].altName
end

function AtlasLoot:GetEquipmentSlotCost(slot)
	if not equipmentSlots[slot] then return end
	return equipmentSlots[slot].pvpCost, equipmentSlots[slot].arenaCost
end

function AtlasLoot:GetEquipmentList()
    return equipmentSlots
end