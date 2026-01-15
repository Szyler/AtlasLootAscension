local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local color = AtlasLoot.Colors

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

function AtlasLoot:InitializeTBCCraftingMenu()
    local menu = self.ui.menus.data

	-- ClassicRaid
    menu["ZulGurub"] = {
        Module = "AtlasLoot_OriginalWoW",
        Name = "Zul'Gurub",
        Type = "ClassicRaid",
        Map = "ZulGurub",
        { "High Priestess Jeklik", { 14517 } },
        { "High Priest Venoxis", { 14507 } },
        { "High Priestess Mar'li", { 14510 } },
        { "Bloodlord Mandokir", { 11382 } },
        { "Gahz'ranka", { 15114 } },
        { "High Priest Thekal", { 14509 } },
        { "High Priestess Arlokk", { 14515 } },
        { "Jin'do the Hexxer", { 11380 } },
        { "Hakkar", { 14834 } },
    }

---------------
--- Alchemy ---
---------------
menu["AlchemyTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = ALCHEMY,
	Type = "BCCrafting",
	{ "Battle Elixirs", },
	{ "Guardian Elixirs", },
	{ "Potions", },
	{ "Flasks", },
	{ "Transmutes", },
	{ "Miscellaneous", },
	{ "High Risk", },
}

---------------------
--- Blacksmithing ---
---------------------

menu["SmithingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = BLACKSMITHING,
	Type = "BCCrafting",
	{ "Armor" .. color.WHITE .. " - Chest", },
	{ "Armor" .. color.WHITE .. " - Feet", },
	{ "Armor" .. color.WHITE .. " - Hands", },
	{ "Armor" .. color.WHITE .. " - Head", },
	{ "Armor" .. color.WHITE .. " - Legs", },
	{ "Armor" .. color.WHITE .. " - Shoulder", },
	{ "Armor" .. color.WHITE .. " - Waist",	},
	{ "Armor" .. color.WHITE .. " - Wrist",	},
	{ "Weapon " .. color.WHITE .." - OneHanded", },
	{ "Weapon " .. color.WHITE .." - TwoHanded", },
	{ "Item Enhancements", },
	{ "Miscellaneous", },
	{ ARMORSMITH, },
	{ WEAPONSMITH, },
	{ AXESMITH, },
	{ HAMMERSMITH, },
	{ SWORDSMITH, },
	{ "High Risk", },
}

---------------
--- Cooking ---
---------------

menu["CookingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = COOKING,
	Type = "BCCrafting",
	{ "Normal", },
	{ "High Risk", },
}

------------------
--- Enchanting ---
------------------

menu["EnchantingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = ENCHANTING,
	Type = "BCCrafting",
	{ "Boots", },
	{ "Bracer",	},
	{ "Chest", },
	{ "Cloak", },
	{ "Gloves", },
	{ "Ring", },
	{ "Shield", },
	{ "Two Handed Weapon", },
	{ "Weapon",	},
	{ "Miscellaneous", },
	{ "High Risk", },
}

-------------------
--- Engineering ---
-------------------

menu["EngineeringTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = ENGINEERING,
	Type = "BCCrafting",
	{ "Ammunition", },
	{ "Armor", },
	{ "Armor", },
	{ "Explosives", },
	{ "Item Enhancements", },
	{ "Miscellaneous", },
	{ "Reagents", },
	{ "Weapon", },
	{ GNOMISH, },
	{ GOBLIN, },
	{ "High Risk", },
}

-----------------
--- First Aid ---
-----------------
menu["FirstAid"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = FIRSTAID,
	Type = "BCCrafting",
	{ FIRSTAID, },
}

---------------------
--- Jewelcrafting ---
---------------------
menu["JewelcraftingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = JEWELCRAFTING,
	Type = "BCCrafting",
	{ "Red Gems", },
	{ "Blue Gems", },
	{ "Yellow Gems", },
	{ "Green Gems", },
	{ "Orange Gems", },
	{ "Purple Gems", },
	{ "Meta Gems", },
	{ "Prismatic Gems",	},
	{ "Trinkets", },
	{ "Rings", },
	{ "Necks", },
	{ "Miscellaneous", },
	{ "High Risk", },
}

----------------------
--- Leatherworking ---
----------------------
menu["LeatherworkingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = LEATHERWORKING,
	Type = "BCCrafting",
	{ "Leather Armor" .. color.WHITE .. " - Back", },
	{ "Leather Armor" .. color.WHITE .. " - Chest", },
	{ "Leather Armor" .. color.WHITE .. " - Feet", },
	{ "Leather Armor" .. color.WHITE .. " - Hands", },
	{ "Leather Armor" .. color.WHITE .. " - Head", },
	{ "Leather Armor" .. color.WHITE .. " - Legs", },
	{ "Leather Armor" .. color.WHITE .. " - Shoulder", },
	{ "Leather Armor" .. color.WHITE .. " - Waist", },
	{ "Leather Armor" .. color.WHITE .. " - Wrist",	},
	{ "Mail Armor" .. color.WHITE .. " - Chest", },
	{ "Mail Armor" .. color.WHITE .. " - Feet", },
	{ "Mail Armor" .. color.WHITE .. " - Hands", },
	{ "Mail Armor" .. color.WHITE .. " - Head", },
	{ "Mail Armor" .. color.WHITE .. " - Legs", },
	{ "Mail Armor" .. color.WHITE .. " - Shoulder", },
	{ "Mail Armor" .. color.WHITE .. " - Waist", },
	{ "Mail Armor" .. color.WHITE .. " - Wrist", },
	{ "Item Enhancements", },
	{ "Quivers and Ammo Pouches", },
	{ "Drums, Bags and Misc.", },
	{ "Leather", },
	{ DRAGONSCALE, },
	{ ELEMENTAL, },
	{ TRIBAL, },
	{ "High Risk", },
}

menu["MiningTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = MINING,
	Type = "BCCrafting",
	{ MINING, },
}

menu["FirstAidTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = FIRSTAID,
	Type = "BCCrafting",
	{ FIRSTAID, },
}

-----------------
--- Tailoring ---
-----------------
menu["TailoringTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = TAILORING,
	Type = "BCCrafting",
	{ "Cloth Armor" .. color.WHITE .. " - Back", },
	{ "Cloth Armor" .. color.WHITE .. " - Chest", },
	{ "Cloth Armor" .. color.WHITE .. " - Feet", },
	{ "Cloth Armor" .. color.WHITE .. " - Hands", },
	{ "Cloth Armor" .. color.WHITE .. " - Head", },
	{ "Cloth Armor" .. color.WHITE .. " - Legs", },
	{ "Cloth Armor" .. color.WHITE .. " - Shoulder", },
	{ "Cloth Armor" .. color.WHITE .. " - Waist", },
	{ "Cloth Armor" .. color.WHITE .. " - Wrist", },
	{ "Bags", },
	{ "Item Enhancements", },
	{ "Cloth", },
	{ "Miscellaneous", },
	{ MOONCLOTH, },
	{ SHADOWEAVE, },
	{ SPELLFIRE, },
	{ "High Risk", },
}

end
