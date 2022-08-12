local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

AtlasLoot_SubMenus["WorldEventsCLASSIC"] = {
	Module = "AtlasLootWorldEvents";
	{ "Seasonal", "BrewfestCLASSIC", "Header"};
	{ "", "BrewfestCLASSIC"};
	{ "", "DayoftheDead"};
	{ "", "HalloweenCLASSIC"};
	{ "", "Valentineday"};
	{ "", "MidsummerFestivalCLASSIC"};
	{ "", "PilgrimsBounty"};
	{ "", "ChildrensWeek"};
	{ "", "Winterviel"};
	{ "", "HarvestFestival"};
	{ "", "LunarFestival"};
	{ "", "Noblegarden"};
	{ "Other", "Darkmoon", "Header"};
	{ "", "Darkmoon"};
	{ "", "GurubashiArena"};
	{ "", "AbyssalCouncil"};
	{ "", "ElementalInvasion"};
	{ "", "ScourgeInvasionEvent"};
	{ "", "FishingExtravaganza"};
};

	AtlasLoot_SubMenus["WorldEventsTBC"] = {
		Module = "AtlasLootWorldEvents";
		{ "Seasonal", "BrewfestTBC", "Header"};
		{ "", "BrewfestTBC"};
		{ "", "DayoftheDead"};
		{ "", "HalloweenTBC"};
		{ "", "Valentineday"};
		{ "", "MidsummerFestivalTBC"};
		{ "", "PilgrimsBounty"};
		{ "", "ChildrensWeek"};
		{ "", "Winterviel"};
		{ "", "HarvestFestival"};
		{ "", "LunarFestival"};
		{ "", "Noblegarden"};
		{ "Other", "BashirLanding", "Header"};
		{ "", "BashirLanding"};
		{ "", "GurubashiArena"};
		{ "", "Shartuul"};
		{ "", "AbyssalCouncil"};
		{ "", "Skettis"};
		{ "", "Darkmoon"};
		{ "", "FishingExtravaganza"};
		{ "", "EthereumPrison"};
	};

	AtlasLoot_SubMenus["WorldEventsWRATH"] = {
		Module = "AtlasLootWorldEvents";
		{ "Seasonal", "BrewfestWRATH", "Header"};
		{ "", "BrewfestWRATH"};
		{ "", "DayoftheDead"};
		{ "", "HalloweenWRATH"};
		{ "", "Valentineday"};
		{ "", "MidsummerFestivalWRATH"};
		{ "", "PilgrimsBounty"};
		{ "", "ChildrensWeek"};
		{ "", "Winterviel"};
		{ "", "HarvestFestival"};
		{ "", "LunarFestival"};
		{ "", "Noblegarden"};
		{ "Other", "ArgentTournament", "Header"};
		{ "", "ArgentTournament"};
		{ "", "GurubashiArena"};
		{ "", "Shartuul"};
		{ "", "Skettis"};
		{ "", "Darkmoon"};
		{ "", "FishingExtravaganza"};
	};
