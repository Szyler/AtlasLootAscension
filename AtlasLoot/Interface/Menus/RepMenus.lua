local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

	AtlasLoot_SubMenus["ReputationsCLASSIC"] = {
		Module = "AtlasLootOriginalWoW";
		{ "", "Argent"};
		{ "", "AQBroodRings"};
		{ "", "AlteracFactions"};
		{ "", "ArathiBasinFactions"};
		{ "", "Timbermaw"};
		{ "", "Zandalar"};
		{ "", "Bloodsail"};
		{ "", "Cenarion"};
		{ "", "Hydraxian"};
		{ "", "DesolaceCentaurClans"};
		{ "", "Thorium"};
		{ "", "Wintersaber"};
	};

	AtlasLoot_SubMenus["ReputationsTBC"] = {
		Module = "AtlasLootBurningCrusade";
		{ "", "ShattrathFlasks"};
		{ "", "Aldor"};
		{ "", "Scryer"};
		{ "", "Shatar"};
		{ "", "LowerCity"};
		{ "", "CExpedition"};
		{ "", "HonorHold"};
		{ "", "Thrallmar"};
		{ "", "Kurenai"};
		{ "", "Maghar"};
		{ "", "Ogrila"};
		{ "", "Skyguard"};
		{ "", "Sporeggar"};
		{ "", "Tranquillien"};
		{ "", "Ashtongue"};
		{ "", "Consortium"};
		{ "", "KeepersofTime"};
		{ "", "Netherwing"};
		{ "", "ScaleSands"};
		{ "", "SunOffensive"};
		{ "", "VioletEye"};
	};

	AtlasLoot_SubMenus["ReputationsWRATH"] = {
		Module = "AtlasLootWotLK";
		{ "", "AllianceVanguard1", "spell_misc_hellifrepvphonorholdfavor", "=ds="..BabbleFaction["Alliance Vanguard"], "=q5="..BabbleFaction["Alliance"]};
		{ "", "WinterfinRetreat", "INV_Misc_Shell_04", "=ds="..BabbleFaction["Winterfin Retreat"], "=q5="..BabbleZone["Borean Tundra"]};
		{ "", "TheWyrmrestAccord", "achievement_reputation_wyrmresttemple", "=ds="..BabbleFaction["The Wyrmrest Accord"], "=q5="..BabbleZone["Dragonblight"]};
		{ "", "KnightsoftheEbonBlade", "achievement_reputation_knightsoftheebonblade", "=ds="..BabbleFaction["Knights of the Ebon Blade"], "=q5="..BabbleZone["Zul'Drak"].." / "..BabbleZone["Icecrown"]};
		{ "", "TheOracles", "inv_misc_head_murloc_01", "=ds="..BabbleFaction["The Oracles"], "=q5="..BabbleZone["Sholazar Basin"]};
		{ "", "TheSonsofHodir1", "Spell_Holy_DivinePurpose", "=ds="..BabbleFaction["The Sons of Hodir"], "=q5="..BabbleZone["The Storm Peaks"]};
		{ "", "HordeExpedition1", "spell_misc_hellifrepvpthrallmarfavor", "=ds="..BabbleFaction["Horde Expedition"], "=q5="..BabbleFaction["Horde"]};
		{ "", "TheKaluak", "INV_Fishingpole_03", "=ds="..BabbleFaction["The Kalu'ak"], "" };
		{ "", "KirinTor", "achievement_reputation_kirintor", "=ds="..BabbleFaction["Kirin Tor"], "=q5="..BabbleZone["Borean Tundra"].." / "..BabbleZone["Dalaran"]};
		{ "", "ArgentCrusade", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["Argent Crusade"], "=q5="..BabbleZone["Zul'Drak"].." / "..BabbleZone["Icecrown"]};
		{ "", "FrenzyheartTribe", "ability_mount_whitedirewolf", "=ds="..BabbleFaction["Frenzyheart Tribe"], "=q5="..BabbleZone["Sholazar Basin"]};
		{ "", "AshenVerdict", "INV_Jewelry_Ring_85", "=ds="..BabbleFaction["The Ashen Verdict"], "=q5="..BabbleZone["Icecrown"]};
	};