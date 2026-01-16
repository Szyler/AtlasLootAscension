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

AtlasLoot:AddNewMenus({
	---------------
	--- Alchemy ---
	---------------
	["AlchemyTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = ALCHEMY,
		Type = "BCCrafting",
		{ "Battle Elixirs", {} },
		{ "Guardian Elixirs", {} },
		{ "Potions", {} },
		{ "Flasks", {} },
		{ "Transmutes", {} },
		{ "Miscellaneous", {} },
		{ "High Risk", {} },
	},

	---------------------
	--- Blacksmithing ---
	---------------------
	["SmithingTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = BLACKSMITHING,
		Type = "BCCrafting",
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
		{ "Item Enhancements", {} },
		{ "Miscellaneous", {} },
		{ ARMORSMITH, {} },
		{ WEAPONSMITH, {} },
		{ AXESMITH, {} },
		{ HAMMERSMITH, {} },
		{ SWORDSMITH, {} },
		{ "High Risk", {} },
	},

	---------------
	--- Cooking ---
	---------------
	["CookingTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = COOKING,
		Type = "BCCrafting",
		{ "Cooking", {} },
		{ "High Risk", {} },
	},

	------------------
	--- Enchanting ---
	------------------
	["EnchantingTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = ENCHANTING,
		Type = "BCCrafting",
		{ "Boots", {} },
		{ "Bracer", {} },
		{ "Chest", {} },
		{ "Cloak", {} },
		{ "Gloves", {} },
		{ "Rings", {} },
		{ "Shield", {} },
		{ "2H Weapon", {} },
		{ "Weapon", {} },
		{ "Miscellaneous", {} },
		{ "High Risk", {} },
	},

	-------------------
	--- Engineering ---
	-------------------
	["EngineeringTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = ENGINEERING,
		Type = "BCCrafting",
		{ "Ammunition", {} },
		{ "Armor", {} },
		{ "Explosives", {} },
		{ "Item Enhancements", {} },
		{ "Miscellaneous", {} },
		{ "Miscellaneous", {} },
		{ "Reagents", {} },
		{ "Weapon", {} },
		{ GNOMISH, {} },
		{ GOBLIN, {} },
		{ "High Risk", {} },
	},

	---------------------
	--- Jewelcrafting ---
	---------------------
	["JewelcraftingTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = JEWELCRAFTING,
		Type = "BCCrafting",
		{ "Red Gems", {} },
		{ "Blue Gems", {} },
		{ "Yellow Gems", {} },
		{ "Green Gems", {} },
		{ "Orange Gems", {} },
		{ "Purple Gems", {} },
		{ "Meta Gems", {} },
		{ "Prismatic Gems",	{} },
		{ "Trinkets", {} },
		{ "Rings", {} },
		{ "Necks", {} },
		{ "Miscellaneous", {} },
		{ "High Risk", {} },
	},

	----------------------
	--- Leatherworking ---
	----------------------
	["LeatherworkingTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = LEATHERWORKING,
		Type = "BCCrafting",
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
		{ DRAGONSCALE, {} },
		{ ELEMENTAL, {} },
		{ TRIBAL, {} },
		{ "High Risk", {} },
	},

	["MiningTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = MINING,
		Type = "BCCrafting",
		{ "Smelting", {} },
	},

	["FirstAidTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = FIRSTAID,
		Type = "BCCrafting",
		{ FIRSTAID, {} },
	},

	-----------------
	--- Tailoring ---
	-----------------
	["TailoringTBC"] = {
		Module = "AtlasLoot_Crafting_TBC",
		Name = TAILORING,
		Type = "BCCrafting",
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
		{ MOONCLOTH, {} },
		{ SHADOWEAVE, {} },
		{ SPELLFIRE, {} },
		{ "High Risk", {} },
	}

})
