local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local equipmentNames = {
	INVTYPE_HEAD = {"Head"},
    INVTYPE_SHOULDER = {"Shoulder"},
    INVTYPE_CHEST = {"Chest"},
    INVTYPE_ROBE = {"Chest"},
	INVTYPE_WRIST = {"Wrist"},
    INVTYPE_HAND = {"Hands"},
    INVTYPE_WAIST = {"Waist"},
	INVTYPE_LEGS = {"Legs"},
    INVTYPE_FEET = {"Feet"},
    INVTYPE_FINGER = {"Ring"},
	INVTYPE_CLOAK = {"Back"},
    INVTYPE_NECK = {"Neck"},
	INVTYPE_TRINKET = {"Trinket"},
    INVTYPE_BODY = {"Shirt"},
    INVTYPE_TABARD = {"Tarbard"},
    ["One-Handed Axes"] = {"Axe1H","One-Handed Axes"},
    ["Two-Handed Axes"] = {"Axe2H","Two-Handed Axes"},
	["One-Handed Swords"] = {"Sword1H","One-Handed Swords"},
    ["Two-Handed Swords"] = {"Sword2H","Two-Handed Swords"},
	["One-Handed Maces"] = {"Mace1H","One-Handed Maces"},
    ["Two-Handed Maces"] = {"Mace2H","Two-Handed Maces"},
	Daggers = {"Dagger", "Daggers"},
	["Fist Weapons"] = {"Fist", "Fist Weapons"},
	Shields = {"Shield"},
	Polearms = {"Polearm"},
	Bows = {"Bows"},
	Guns = {"Guns"},
	Crossbows = {"Crossbows"},
	Thrown = {"Thrown"},
	Wands = {"Wands"},
	Staves = {"Staves"},
	["Fishing Poles"] = {"FishingPole", "Fishing Poles"},
	OffHands = {"OffHand", "OffHands"},
    Consumable = {"Consumable"},
}

function AtlasLoot:GetEquipmentSlotInfo(slot)
    return equipmentNames[slot]
end

function AtlasLoot:GetEquipmentList()
    return equipmentNames
end