--[[
Menu.lua
Defines the table listings for the dropdown lists.
]]

--Invoke all libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

--This is a multi-layer table defining the main loot listing.
--Entries have the text to display, loot table or sub table to link to and if the link is to a loot table or sub table
AtlasLoot_Modules = {
	{AL["Dungeons and Raids"], "Dungeons and Raids", 2},
	{AL["Crafting"], "Crafting"},
	{AL["Sets/Collections"], "Collections"},
	{AL["PvP Rewards"], "PVP"},
	{AL["Vanity"], "Vanity"},
	{AL["Ascension Vanity Collection"], "CollectionsAscension"},
	{AL["Reputation Factions"], "Reputations"},
	{AL["World Events"], "WorldEvents"},
}

AtlasLoot_SubMenus = {}

AtlasLoot_ExpansionMenu = {
		{ AL["Classic"], "CLASSIC" },
		{ AL["Burning Crusade"], "TBC" },
		{ AL["Wrath of the Lich King"], "WRATH" },
}

AtlasLoot_Data["EmptyTable"] = {
	Name = AL["Select a Loot Table..."],
	{Name = AL["Select a Loot Table..."]},
}