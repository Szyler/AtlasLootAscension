--[[
Menu.lua
Defines the table listings for the dropdown lists.
]]

--Invoke all libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")

--This is a multi-layer table defining the main loot listing.
--Entries have the text to display, loot table or sub table to link to and if the link is to a loot table or sub table
AtlasLoot_Modules = {
	{AL["Dungeons and Raids"], "Dungeons and Raids", 2};
	{AL["Crafting"], "Crafting"};
	{AL["Sets/Collections"], "Collections"};
	{AL["PvP Rewards"], "PVP"};
	{AL["World Bosses"], "WorldBossesMenu"};
	{AL["Reputation Factions"], "Reputations"};
	{AL["World Events"], "WorldEvents"};
};

AtlasLoot_SubMenus = {};

AtlasLoot_ExpansionMenu = {
		{ AL["Classic"], "CLASSIC" };
		{ AL["Burning Crusade"], "TBC" };
		--{ AL["Wrath of the Lich King"], "WRATH" };
};

AtlasLoot_Data["EmptyTable"] = {
	Name = AL["Select a Loot Table..."];
	{Name = AL["Select a Loot Table..."]};
};