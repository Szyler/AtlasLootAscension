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

function AtlasLoot:InitializeClassicCraftingMenu()
    local menu = self.ui.menus.data

	menu["AlchemyCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = ALCHEMY,
		Type = "ClassicCrafting",
		{ "Battle Elixirs", {"AlchemyCLASSIC1"} },
		{ "Guardian Elixirs", {"AlchemyCLASSIC2"} },
		{ "Potions", {"AlchemyCLASSIC3"} },
		{ "Flasks", {"AlchemyCLASSIC4"} },
		{ "Transmutes", {"AlchemyCLASSIC5"} },
		{ "Miscellaneous", {"AlchemyCLASSIC6"} },
		{ "High Risk", {"AlchemyCLASSIC7"} },
	}
	---------------------
	--- Blacksmithing ---
	---------------------
	menu["SmithingCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = BLACKSMITHING,
		Type = "ClassicCrafting",
		{ "Armor - Chest", {"SmithingCLASSIC1"} },
		{ "Armor - Feet", {"SmithingCLASSIC2"} },
		{ "Armor - Hands", {"SmithingCLASSIC3"} },
		{ "Armor - Head", {"SmithingCLASSIC4"} },
		{ "Armor - Legs", {"SmithingCLASSIC5"} },
		{ "Armor - Shoulder", {"SmithingCLASSIC6"} },
		{ "Armor - Waist", {"SmithingCLASSIC7"} },
		{ "Armor - Wrist", {"SmithingCLASSIC8"} },
		{ "Weapon - One Handed", {"SmithingCLASSIC9"} },
		{ "Weapon - Two Handed", {"SmithingCLASSIC10"} },
		{ "Weapon - Thrown", {"SmithingCLASSIC11"} },
		{ "Shield", {"SmithingCLASSIC12"} },
		{ "Item Enhancements", {"SmithingCLASSIC13"} },
		{ "Miscellaneous", {"SmithingCLASSIC14"} },
		{ ARMORSMITH, {"SmithingCLASSIC15"} },
		{ WEAPONSMITH, {"SmithingCLASSIC16"} },
		{ "High Risk", {"SmithingCLASSIC17"} },
	}
	---------------
	--- Cooking ---
	---------------
	menu["CookingCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = COOKING,
		Type = "ClassicCrafting",
		{ "Cooking", {"CookingCLASSIC1"} },
		{ "High Risk", {"CookingCLASSIC2"} },
		{ "High Risk".." - ".."Miscellaneous", {"CookingCLASSIC3"} },
	}
	------------------
	--- Enchanting ---
	------------------
	menu["EnchantingCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = ENCHANTING,
		Type = "ClassicCrafting",
		{ "Enchant Boots", {"EnchantingCLASSIC1"} },
		{ "Enchant Bracer", {"EnchantingCLASSIC2"} },
		{ "Enchant Chest", {"EnchantingCLASSIC3"} },
		{ "Enchant Cloak", {"EnchantingCLASSIC4"} },
		{ "Enchant Gloves", {"EnchantingCLASSIC5"} },
		{ "Enchant Shield", {"EnchantingCLASSIC6"} },
		{ "Enchant 2H Weapon", {"EnchantingCLASSIC7"} },
		{ "Enchant Weapon", {"EnchantingCLASSIC8"} },
		{ "Miscellaneous", {"EnchantingCLASSIC9"} },
		{ "High Risk", {"EnchantingCLASSIC10"} },
	}
	-------------------
	--- Engineering ---
	-------------------
	menu["EngineeringCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = ENGINEERING,
		Type = "ClassicCrafting",
		{ "Ammunition", {"EngineeringCLASSIC1"} },
		{ "Armor", {"EngineeringCLASSIC2"} },
		{ "Explosives", {"EngineeringCLASSIC3"} },
		{ "Item Enhancements", {"EngineeringCLASSIC4"} },
		{ "Miscellaneous", {"EngineeringCLASSIC5"} },
		{ "Miscellaneous", {"EngineeringCLASSIC6"} },
		{ "Reagents", {"EngineeringCLASSIC7"} },
		{ "Weapon", {"EngineeringCLASSIC8"} },
		{ GNOMISH, {"EngineeringCLASSIC9"} },
		{ GOBLIN, {"EngineeringCLASSIC10"} },
		{ "High Risk", {"EngineeringCLASSIC11"} },
	}
	-----------------
	--- First Aid ---
	-----------------
	menu["FirstAidCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = FIRSTAID,
		Type = "ClassicCrafting",
		{ FIRSTAID, {"FirstAidCLASSIC1"} },
	}
	----------------------
	--- Leatherworking ---
	----------------------
	menu["LeatherworkingCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = LEATHERWORKING,
		Type = "ClassicCrafting",
		{ "Leather Armor - Back", {"LeatherworkingCLASSIC1"} },
		{ "Leather Armor - Chest", {"LeatherworkingCLASSIC2"} },
		{ "Leather Armor - Feet", {"LeatherworkingCLASSIC3"} },
		{ "Leather Armor - Hands", {"LeatherworkingCLASSIC4"} },
		{ "Leather Armor - Head", {"LeatherworkingCLASSIC5"} },
		{ "Leather Armor - Legs", {"LeatherworkingCLASSIC6"} },
		{ "Leather Armor - Shoulder", {"LeatherworkingCLASSIC7"} },
		{ "Leather Armor - Waist", {"LeatherworkingCLASSIC8"} },
		{ "Leather Armor - Wrist", {"LeatherworkingCLASSIC9"} },
		{ "Mail Armor - Chest", {"LeatherworkingCLASSIC10"} },
		{ "Mail Armor - Feet", {"LeatherworkingCLASSIC11"} },
		{ "Mail Armor - Hands", {"LeatherworkingCLASSIC12"} },
		{ "Mail Armor - Head", {"LeatherworkingCLASSIC13"} },
		{ "Mail Armor - Legs", {"LeatherworkingCLASSIC14"} },
		{ "Mail Armor - Shoulder", {"LeatherworkingCLASSIC15"} },
		{ "Mail Armor - Waist", {"LeatherworkingCLASSIC16"} },
		{ "Mail Armor - Wrist", {"LeatherworkingCLASSIC17"} },
		{ "Item Enhancements", {"LeatherworkingCLASSIC18"} },
		{ "Quivers and Ammo Pouches", {"LeatherworkingCLASSIC19"} },
		{ "Drums, Bags and Misc.", {"LeatherworkingCLASSIC20"} },
		{ "Leather", {"LeatherworkingCLASSIC21"} },
		{ DRAGONSCALE, {"LeatherworkingCLASSIC22"} },
		{ ELEMENTAL, {"LeatherworkingCLASSIC23"} },
		{ TRIBAL, {"LeatherworkingCLASSIC24"} },
		{ "High Risk", {"LeatherworkingCLASSIC25"} },
	}
	--------------
	--- Mining ---
	--------------
	menu["MiningCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = MINING,
		Type = "ClassicCrafting",
		{ "Smelting", {"MiningCLASSIC1"} },
		{ "Materials", {"MiningCLASSIC2"} },
	}
	-----------------
	--- Tailoring ---
	-----------------
	menu["TailoringCLASSIC"] = {
		Module = "AtlasLoot_Crafting_OriginalWoW",
		Name = TAILORING,
		Type = "ClassicCrafting",
		{ "Cloth Armor - Back", {"TailoringCLASSIC1"} },
		{ "Cloth Armor - Chest", {"TailoringCLASSIC2"} },
		{ "Cloth Armor - Feet", {"TailoringCLASSIC3"} },
		{ "Cloth Armor - Hands", {"TailoringCLASSIC4"} },
		{ "Cloth Armor - Head", {"TailoringCLASSIC5"} },
		{ "Cloth Armor - Legs", {"TailoringCLASSIC6"} },
		{ "Cloth Armor - Shoulder", {"TailoringCLASSIC7"} },
		{ "Cloth Armor - Waist", {"TailoringCLASSIC8"} },
		{ "Cloth Armor - Wrist", {"TailoringCLASSIC9"} },
		{ "Bags", {"TailoringCLASSIC10"} },
		{ "Miscellaneous", {"TailoringCLASSIC11"} },
		{ "Shirts", {"TailoringCLASSIC12"} },
		{ "High Risk", {"TailoringCLASSIC13"} },
	}
end
