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
	["AlchemyCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = ALCHEMY,
		Type = "ClassicCrafting",
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
	["SmithingCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = BLACKSMITHING,
		Type = "ClassicCrafting",
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
		{ "Shield", {} },
		{ "Item Enhancements", {} },
		{ "Miscellaneous", {} },
		{ ARMORSMITH, {} },
		{ WEAPONSMITH, {} },
		{ "High Risk", {} },
	},
	---------------
	--- Cooking ---
	---------------
	["CookingCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = COOKING,
		Type = "ClassicCrafting",
		{ "Cooking", {} },
		{ "High Risk", {} },
		{ "High Risk".." - ".."Miscellaneous", {} },
	},
	------------------
	--- Enchanting ---
	------------------
	["EnchantingCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = ENCHANTING,
		Type = "ClassicCrafting",
		{ "Boots", {} },
		{ "Bracer", {} },
		{ "Chest", {} },
		{ "Cloak", {} },
		{ "Gloves", {} },
		{ "Shield", {} },
		{ "2H Weapon", {} },
		{ "Weapon", {} },
		{ "Miscellaneous", {} },
		{ "High Risk", {} },
	},
	-------------------
	--- Engineering ---
	-------------------
	["EngineeringCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = ENGINEERING,
		Type = "ClassicCrafting",
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
	-----------------
	--- First Aid ---
	-----------------
	["FirstAidCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = FIRSTAID,
		Type = "ClassicCrafting",
		{ FIRSTAID, {} },
	},
	----------------------
	--- Leatherworking ---
	----------------------
	["LeatherworkingCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = LEATHERWORKING,
		Type = "ClassicCrafting",
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
	--------------
	--- Mining ---
	--------------
	["MiningCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = MINING,
		Type = "ClassicCrafting",
		{ "Smelting", {} },
		{ "Materials", {} },
	},
	-----------------
	--- Tailoring ---
	-----------------
	["TailoringCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = TAILORING,
		Type = "ClassicCrafting",
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
		{ "Miscellaneous", {} },
		{ "Shirts", {} },
		{ "High Risk", {} },
	}
})
