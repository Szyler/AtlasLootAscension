--Invoke all libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0");
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0");

--Dungeon and Raid Menus

    AtlasLoot_SubMenus["Dungeons and RaidsCLASSIC"] = {
        Module = "AtlasLootOriginalWoW";
        {"Raids:", "OldKeys", "Header"};
        {"", "MoltenCore"};
        {"", "ZulGurub"};
        {"", "Onyxia60"};
        {"", "BlackwingLair"};
        {"", "RuinsofAQ"};
        {"", "TempleofAQ"};
        {"", "Naxxramas60"};
        {"Dungeons:", "OldKeys", "Header"};
        {"", "BlackfathomDeeps"};
        {"", "BlackrockDepths"};
        {"", "LowerBlackrock"};
        {"", "UpperBlackrock"};
        {"", "TheDeadmines"};
        {"", "DireMaulNorth"};
        {"", "DireMaulEast"};
        {"", "DireMaulWest"};
        {"", "Gnomeregan"};
        {"", "Maraudon"};
        {"", "RagefireChasm"};
        {"", "RazorfenDowns"};
        {"", "RazorfenKraul"};
        {"", "Scarlet Monastery"};
        {"", "Scholomance"};
        {"", "ShadowfangKeep"};
        {"", "TheStockade"};
        {"", "Stratholme"};
        {"", "SunkenTemple"};
        {"", "Uldaman"};
        {"", "WailingCaverns"};
        {"", "ZulFarrak"};
    };

    AtlasLoot_SubMenus["Dungeons and RaidsTBC"] = {
        Module = "AtlasLootBurningCrusade";
        {"Raids:", "BCKeys", "Header"};
        {"", "Karazhan"};
        {"", "GruulsLair"};
        {"", "HCMagtheridon"};
        {"", "ZulAman"};
        {"", "CFRSerpentshrine"};
        {"", "TKEye"};
        {"", "CoTHyjal"};
        {"", "BlackTemple"};
        {"", "SunwellPlateau"};
        ---- Dungeons -----
        {"Dungeons:", "BCKeys", "Header"};
        {"", "HCRamparts"};
        {"", "HCShatteredHalls"};
        {"", "HCFurnace"};
        {"", "TKBot"};
        {"", "TKArc"};
        {"", "TKMech"};
        {"", "AuchCrypts"};
        {"", "AuchManaTombs"};
        {"", "AuchSethekk"};
        {"", "AuchShadowLab"};
        {"", "CoTOldHillsbrad"};
        {"", "CoTBlackMorass"};
        {"", "CFRSlavePens"};
        {"", "CFRSteamvault"};
        {"", "CFRUnderbog"};
        {"", "MagistersTerrace"};
    };

    AtlasLoot_SubMenus["Dungeons and RaidsWRATH"] = {
        Module = "AtlasLootWotLK";
        {"Raids:", "WrathKeys", "Header"};
        {"", "Naxxramas80"};
        {"", "Sartharion"};
        {"", "Malygos"};
        {"", "VaultofArchavon_A"};
        {"", "Ulduar"};
        {"", "TrialoftheCrusader_A"};
        {"", "Onyxia_1"};
        {"", "IcecrownCitadel"};
        {"", "Halion"};
        {"Dungeons:", "WrathKeys", "Header"};
        {"", "Ahnkahet"};
        {"", "AzjolNerub"};
        {"", "CoTStratholme"};
        {"", "DrakTharonKeep"};
        {"", "ForgeofSouls"};
        {"", "Gundrak"};
        {"", "HallsofLightning"};
        {"", "HallsofReflection"};
        {"", "HallsofStone"};
        {"", "TheNexus"};
        {"", "TheOculus"};
        {"", "PitofSaron"};
        {"", "TrialoftheChampion"};
        {"", "UtgardeKeep"};
        {"", "UtgardePinnacle"};
        {"", "TheVioletHold"};
    };

    AtlasLoot_SubMenus["WorldBossesMenuCLASSIC"] = {
        Module = "AtlasLootOriginalWoW";
        { "","WorldBossesCLASSIC"};
    };

    AtlasLoot_SubMenus["WorldBossesMenuTBC"] = {
        Module = "AtlasLootBurningCrusade";
        { "","WorldBossesTBC"};
    };