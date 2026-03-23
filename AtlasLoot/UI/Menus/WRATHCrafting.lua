local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local ALCHEMY = GetSpellInfo(2259)
local BLACKSMITHING = GetSpellInfo(2018)
local ARMORSMITH = GetSpellInfo(9788)
local WEAPONSMITH = GetSpellInfo(9787)
local AXESMITH = GetSpellInfo(17041)
local HAMMERSMITH = GetSpellInfo(17040)
local SWORDSMITH = GetSpellInfo(17039)
local COOKING = GetSpellInfo(2550)
local ENCHANTING = GetSpellInfo(7411)
local ENGINEERING = GetSpellInfo(4036)
local GNOMISH = GetSpellInfo(20220)
local GOBLIN = GetSpellInfo(20221)
local FIRSTAID = GetSpellInfo(3273)
local JEWELCRAFTING = GetSpellInfo(25229)
local LEATHERWORKING = GetSpellInfo(2108)
local DRAGONSCALE = GetSpellInfo(10656)
local ELEMENTAL = GetSpellInfo(10658)
local TRIBAL = GetSpellInfo(10660)
local MINING = GetSpellInfo(2575)
local TAILORING = GetSpellInfo(3908)
local MOONCLOTH = GetSpellInfo(26798)
local SHADOWEAVE = GetSpellInfo(26801)
local SPELLFIRE = GetSpellInfo(26797)
local INSCRIPTION = GetSpellInfo(45357)

AtlasLoot:AddNewMenus({
	---------------
	--- Alchemy ---
	---------------
	["AlchemyWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = ALCHEMY,
		Type = "WrathCrafting",
		{ "Battle Elixirs", {} },
		{ "Guardian Elixirs", {} },
		{ "Potions", {} },
		{ "Flasks", {} },
		{ "Transmutes", {} },
		{ "Miscellaneous", {} },
		----{ "High Risk", {} },
	},

	---------------------
	--- Blacksmithing ---
	---------------------
	["SmithingWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = BLACKSMITHING,
		Type = "WrathCrafting",
		{ "Armor - Chest", {} },
		{ "Armor - Feet", {} },
		{ "Armor - Hands", {} },
		{ "Armor - Head", {} },
		{ "Armor - Legs", {} },
		{ "Armor - Shoulder", {} },
		{ "Armor - Waist", {} },
		{ "Armor - Wrist", {} },
		{ "Weapon - One Handed", {} },
		{ "Weapon - Two Handed", {} },
		{ "Weapon - Thrown", {} },
		{ "Shields", {} },
		{ "Item Enhancements", {} },
		{ "Miscellaneous", {} },
		{ ARMORSMITH, {} },
		{ WEAPONSMITH, {} },
		{ AXESMITH, {} },
		{ HAMMERSMITH, {} },
		{ SWORDSMITH, {} },
		--{ "High Risk", {} },
	},

	---------------
	--- Cooking ---
	---------------
	["CookingWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = COOKING,
		Type = "WrathCrafting",
		{ "Cooking", {} },
		--{ "High Risk", {} },
	},

	------------------
	--- Enchanting ---
	------------------
	["EnchantingWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = ENCHANTING,
		Type = "WrathCrafting",
		{ "Boots", {} },
		{ "Bracer", {} },
		{ "Chest", {} },
		{ "Cloak", {} },
		{ "Gloves", {} },
		{ "Rings", {} },
		{ "Shield", {} },
		{ "2H Weapon", {} },
		{ "Weapon", {} },
		{ "Staff", {} },
		{ "Miscellaneous", {} },
		--{ "High Risk", {} },
	},

	-------------------
	--- Engineering ---
	-------------------
	["EngineeringWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = ENGINEERING,
		Type = "WrathCrafting",
		{ "Ammunition", {} },
		{ "Armor", {} },
		{ "Explosives", {} },
		{ "Item Enhancements", {} },
		{ "Weapon", {} },
		{ "Miscellaneous", {} },
		{ "Reagents", {} },
		{ GNOMISH, {} },
		{ GOBLIN, {} },
		--{ "High Risk", {} },
	},

	-------------------
	--- Inscription ---
	-------------------
	["InscriptionWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = INSCRIPTION,
		Type = "WrathCrafting",
		{ "Off-Hand Items", {} },
		{ "Reagents", {} },
		{ "Scrolls", {} },
		{ "Miscellaneous", {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["MAGE"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["MAGE"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], {} },
		{ "Major Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], {} },
		{ "Minor Glyph - " .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], {} },
		--{ "High Risk", {} },
	},

	---------------------
	--- Jewelcrafting ---
	---------------------
	["JewelcraftingWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = JEWELCRAFTING,
		Type = "WrathCrafting",
		{ "Red Gems", {} },
		{ "Blue Gems", {} },
		{ "Yellow Gems", {} },
		{ "Green Gems", {} },
		{ "Orange Gems", {} },
		{ "Purple Gems", {} },
		{ "Meta Gems", {} },
		{ "Prismatic Gems",	{} },
		{ "Dragon's Eyes", {} },
		{ "Trinkets", {} },
		{ "Rings", {} },
		{ "Necks", {} },
		{ "Miscellaneous", {} },
		--{ "High Risk", {} },
	},

	----------------------
	--- Leatherworking ---
	----------------------
	["LeatherworkingWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = LEATHERWORKING,
		Type = "WrathCrafting",
		{ "Leather Armor - Back", {} },
		{ "Leather Armor - Chest", {} },
		{ "Leather Armor - Feet", {} },
		{ "Leather Armor - Hands", {} },
		{ "Leather Armor - Head", {} },
		{ "Leather Armor - Legs", {} },
		{ "Leather Armor - Shoulder", {} },
		{ "Leather Armor - Waist", {} },
		{ "Leather Armor - Wrist", {} },
		{ "Mail Armor - Chest", {} },
		{ "Mail Armor - Feet", {} },
		{ "Mail Armor - Hands", {} },
		{ "Mail Armor - Head", {} },
		{ "Mail Armor - Legs", {} },
		{ "Mail Armor - Shoulder", {} },
		{ "Mail Armor - Waist", {} },
		{ "Mail Armor - Wrist", {} },
		{ "Item Enhancements", {} },
		{ "Quivers and Ammo Pouches", {} },
		{ "Drums, Bags and Misc.", {} },
		{ "Leather", {} },
		--{ "High Risk", {} },
	},

	["MiningWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = MINING,
		Type = "WrathCrafting",
		{ "Smelting", {} },
	},

	["FirstAidWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = FIRSTAID,
		Type = "WrathCrafting",
		{ FIRSTAID, {} },
	},

	-----------------
	--- Tailoring ---
	-----------------
	["TailoringWRATH"] = {
		Module = "AtlasLoot_Crafting_Wrath",
		Name = TAILORING,
		Type = "WrathCrafting",
		{ "Cloth Armor - Back", {} },
		{ "Cloth Armor - Chest", {} },
		{ "Cloth Armor - Feet", {} },
		{ "Cloth Armor - Hands", {} },
		{ "Cloth Armor - Head", {} },
		{ "Cloth Armor - Legs", {} },
		{ "Cloth Armor - Shoulder", {} },
		{ "Cloth Armor - Waist", {} },
		{ "Cloth Armor - Wrist", {} },
		{ "Bags", {} },
		{ "Item Enhancements", {} },
		{ "Cloth", {} },
		{ "Miscellaneous", {} },
		{ "Shirts", {} },
		--{ "High Risk", {} },
	}

})
