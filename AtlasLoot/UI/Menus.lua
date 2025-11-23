--[[
Menu.lua
Defines the table listings for the dropdown lists.
]]

--Invoke all libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

function AtlasLoot:InitializeMenus()
	self.ui.menus = {collection = {}}
	local menus = self.ui.menus
	local collection = menus.collection


	--This is a multi-layer table defining the main loot listing.
	--Entries have the text to display, loot table or sub table to link to and if the link is to a loot table or sub table
	menus.modules = {
		{AL["Dungeons and Raids"], "Dungeons and Raids", 2},
		{AL["Crafting"], "Crafting"},
		{AL["Sets/Collections"], "Collections"},
		{AL["PvP Rewards"], "PVP"},
		{AL["Vanity"], "Vanity"},
		{AL["Ascension Vanity Collection"], "CollectionsAscension"},
		{AL["Factions"], "Factions"},
		{AL["World Events"], "WorldEvents"},
	}

	menus.expansion = {
		{ AL["Classic"], "CLASSIC" },
		{ AL["Burning Crusade"], "TBC" },
		{ AL["Wrath of the Lich King"], "WRATH" },
	}

	-------------------------------------Dungeon and Raid Menus-------------------------------------
	collection["Dungeons and RaidsCLASSIC"] = {
		Module = "AtlasLootOriginalWoW",
		SubMenu = "Dungeons and RaidsCLASSIC",
		---- Raids ----
		{ "Raids:", "OldKeys", "Header" },
		{ "", "ZulGurub", "", "Zul'Gurub" },
		{ "", "MoltenCore", "", "Molten Core" },
		{ "", "Onyxia60", "", "Onyxias Hort" },
		{ "", "BlackwingLair", "", "Blackwing Lair" },
		{ "", "RuinsofAQ", "", "Ruinen von Ahn'Qiraj" },
		{ "", "TempleofAQ", "", "Tempel von Ahn'Qiraj" },
		{ "", "Naxxramas60", "", "Naxxramas" },
		{ "", "WorldBossesCLASSIC","", "World Bosses" },
		---- Dungeons -----
		{ "Dungeons:", "OldKeys", "Header" },
		{ "All Dungeon Items", "ClassicDungeonExt", OnDamand = {"ClassicDungeonExt", true}},
		{ "", "BlackfathomDeeps", "", "Blackfathom Deeps" },
		{ "", "BlackrockDepths", "", "Blackrock Depths" },
		{ "", "BlackrockCaverns", "", "Blackrock Caverns" },
		{ "", "LowerBlackrock", "", "Lower Blackrock Spire" },
		{ "", "UpperBlackrock", "", "Upper Blackrock Spire" },
		{ "", "TheDeadmines", "", "The Deadmines" },
		{ "", "DireMaulNorth", "", "Dire Maul (North)", "Dire Maul" },
		{ "", "DireMaulEast", "", "Dire Maul (East)", "Dire Maul" },
		{ "", "DireMaulWest", "", "Dire Maul (West)", "Dire Maul" },
		{ "", "Gnomeregan", "", "Gnomeregan" },
		{ "", "KarazhanCrypts", "", "The Karazhan Crypts" },
		{ "", "Maraudon", "", "Maraudon" },
		{ "", "RagefireChasm", "", "Ragefire Chasm" },
		{ "", "RazorfenDowns", "", "Razorfen Downs" },
		{ "", "RazorfenKraul", "", "Razorfen Kraul" },
		{ "", "Scarlet Monastery", "", "Scarlet Monastery" },
		{ "", "Scholomance", "", "Scholomance" },
		{ "", "ShadowfangKeep", "", "Shadowfang Keep" },
		{ "", "TheStockade", "", "The Stockade" },
		{ "", "Stratholme", "", "Stratholme" },
		{ "", "SunkenTemple", "", "Sunken Temple" },
		{ "", "Uldaman", "", "Uldaman" },
		{ "", "WailingCaverns", "", "Wailing Caverns" },
		{ "", "ZulFarrak", "", "Zul'Farrak" },
		{ "", "SharedDungeonLoot", "", "Shared Dungeon Loot" },
		{ "Manastorm:", "BCKeys", "Header" },
		{ "", "FrozenReach", "", "Frozen Reach" },
	}

	collection["Dungeons and RaidsTBC"] = {
		Module = "AtlasLootBurningCrusade",
		SubMenu = "Dungeons and RaidsTBC",
		---- Raids ----
		{ "Raids:", "BCKeys", "Header" },
		{ "", "Karazhan", "", "Karazhan" },
		{ "", "GruulsLair", "", "Gruul's Lair" },
		{ "", "HCMagtheridon", "", "Magtheridon's Lair" },
		{ "", "CFRSerpentshrine", "", "Serpentshrine Cavern" },
		{ "", "TKEye", "", "Tempest Keep" },
		{ "", "ZulAman", "", "Zul'Aman" },
		{ "", "CoTHyjal", "", "Hyjal Summit" },
		{ "", "BlackTemple", "", "Black Temple" },
		{ "", "SunwellPlateau", "", "Sunwell Plateau" },
		{ "", "WorldBossesTBC","", "World Bosses" },
		---- Dungeons -----
		{ "Dungeons:", "BCKeys", "Header" },
		{ "All Dungeon Items", "BCDungeon", OnDamand = {"BCDungeon", true}},
		{ "", "HCRamparts", "", "Hellfire Ramparts" },
		{ "", "HCShatteredHalls", "", "The Shattered Halls" },
		{ "", "HCFurnace", "", "The Blood Furnace" },
		{ "", "TKBot", "", "The Botanica" },
		{ "", "TKArc", "", "The Arcatraz" },
		{ "", "TKMech", "", "The Mechanar" },
		{ "", "AuchCrypts", "", "Auchenai Crypts" },
		{ "", "AuchManaTombs", "", "Mana-Tombs" },
		{ "", "AuchSethekk", "", "Sethekk Halls" },
		{ "", "AuchShadowLab", "", "Shadow Labyrinth" },
		{ "", "CoTOldHillsbrad", "", "Old Hillsbrad Foothills" },
		{ "", "CoTBlackMorass", "", "The Black Morass" },
		{ "", "CFRSlavePens", "", "The Slave Pens" },
		{ "", "CFRSteamvault", "", "The Steamvault" },
		{ "", "CFRUnderbog", "", "The Underbog" },
		{ "", "MagistersTerrace", "", "Magisters' Terrace" },
		{ "", "KarazhanCryptsTBC", "", "The Karazhan Crypts" },
		{ "", "BlackrockCavernsTBC", "", "Blackrock Caverns" },
		{ "Manastorm:", "BCKeys", "Header" },
		{ "", "FrozenReachTBC", "", "Frozen Reach" },
	}

	collection["Dungeons and RaidsWRATH"] = {
		Module = "AtlasLootWotLK",
		SubMenu = "Dungeons and RaidsWRATH",
		---- Raids ----
		{ "Raids:", "WrathKeys", "Header" },
		{ "", "Naxxramas80", "Naxxramas" },
		{ "", "Sartharion", "Sartharion" },
		{ "", "Malygos", "Malygos" },
		{ "", "VaultofArchavon", "Vault of Archavon" },
		{ "", "Ulduar", "Ulduar" },
		{ "", "TrialoftheCrusader", "Trial of the Crusader" },
		{ "", "Onyxia80", "Onyxia" },
		{ "", "IcecrownCitadel", "Icecrown Citadel" },
		{ "", "Halion", "Halion" },
		---- Dungeons -----
		{ "Dungeons:", "WrathKeys", "Header" },
		{ "All Dungeon Items", "WrathDungeon", OnDamand = {"WrathDungeon", true}},
		{ "", "Ahnkahet", "Ahnkahet" },
		{ "", "AzjolNerub", "AzjolNerub" },
		{ "", "CoTStratholme", "The Culling of Stratholme" },
		{ "", "DrakTharonKeep", "DrakTharon Keep" },
		{ "", "ForgeofSouls", "Forge of Souls" },
		{ "", "Gundrak", "Gundrak" },
		{ "", "HallsofLightning", "Halls of Lightning" },
		{ "", "HallsofReflection", "Halls of Reflection" },
		{ "", "HallsofStone", "Halls of Stone" },
		{ "", "TheNexus", "The Nexus" },
		{ "", "TheOculus", "The Oculus" },
		{ "", "PitofSaron", "Pit of Saron" },
		{ "", "TrialoftheChampion", "Trial of the Champion" },
		{ "", "UtgardeKeep", "Utgarde Keep" },
		{ "", "UtgardePinnacle", "Utgarde Pinnacle" },
		{ "", "TheVioletHold", "The Violet Hold" },
	}

	------------------------------------- Crafting Menus -------------------------------------
	collection.CraftingCLASSIC = {
		Module = "AtlasLootCraftingOriginalWoW",
		{ "", "AlchemyCLASSIC"},
		{ "", "SmithingCLASSIC"},
		{ "", "EnchantingCLASSIC"},
		{ "", "EngineeringCLASSIC"},
		{ "", "LeatherworkingCLASSIC"},
		{ "", "TailoringCLASSIC"},
		{ "", "MiningCLASSIC"},
		{ "", "CookingCLASSIC"},
		{ "", "FirstAidCLASSIC"},
	};

	collection.CraftingTBC = {
		Module = "AtlasLootCraftingBurningCrusade",
		{ "", "AlchemyTBC"},
		{ "", "SmithingTBC"},
		{ "", "EnchantingTBC"},
		{ "", "EngineeringTBC"},
		{ "", "JewelcraftingTBC"},
		{ "", "LeatherworkingTBC"},
		{ "", "TailoringTBC"},
		{ "", "MiningTBC"},
		{ "", "CookingTBC"},
		{ "", "FirstAidTBC"},
	};

	collection.CraftingWRATH = {
		Module = "AtlasLootCraftingWotLK",
		{ "", "AlchemyWRATH"},
		{ "", "SmithingWRATH"},
		{ "", "EnchantingWRATH"},
		{ "", "EngineeringWRATH"},
		{ "", "JewelcraftingWRATH"},
		{ "", "LeatherworkingWRATH"},
		{ "", "TailoringWRATH"},
		{ "", "Inscription"},
		{ "", "MiningWRATH"},
		{ "", "CookingWRATH"},
		{ "", "FirstAidWRATH"},
	};

	------------------------------------- Collections Menus -------------------------------------
	collection.CollectionsCLASSIC = {
		Module = "AtlasLootOriginalWoW",
		{ "", "Heirloom"},
		{ "", "ClassicSets"},
		{ "", "WorldEpicsCLASSIC"},
		{ "", "MarkOfTriumph"},
		{ "Worldforged Items", "WorldforgedClassic", OnDamand = {"WorldforgedClassic", false}},
		{ "Dungeon Sets", "T1", "Header"},
		{ "", "T0"},
		{ "", "T0.5"},
		{ "Raid Sets", "T1", "Header"},
		{ "", "ZGSets"},
		{ "", "AQ20Sets"},
		{ "Tier Sets", "T1", "Header"},
		{ "", "T1"},
		{ "", "T2"},
		{ "", "T2.5"},
		{ "", "T3"},
	}

	collection.CollectionsTBC = {
		Module = "AtlasLootBurningCrusade",
		{ "", "Heirloom"},
		{ "", "DS3"},
		{ "", "WorldRaresTBC"},
		{ "", "WorldEpicsTBC"},
		{ "", "TBCSets"},
		{ AL["Badge of Justice Rewards"], "BadgeShatt", "Header"},
		{ "", "BadgeShatt"},
		{ "", "BadgeSunwell"},
		{ "", "SunmoteSunwell"},
		{ "Tier Sets", "T4", "Header"},
		{ "", "T4"},
		{ "", "T5"},
		{ "", "T6"},
	}
	collection.CollectionsWRATH = {
		Module = "AtlasLootWotLK",
		{ "", "Heirloom"},
		{ "", "WorldEpicsWrath"},
		{ "", "Legendaries"},
		{ "Badge Rewards", "EmblemofHeroism", "Header"},
		{ "", "EmblemofHeroism"},
		{ "", "EmblemofValor"},
		{ "", "EmblemofConquest"},
		{ "", "EmblemofTriumph"},
		{ "", "EmblemofFrost"},
		{ "Tier Sets", "T7", "Header"},
		{ "", "T7"},
		{ "", "T8"},
		{ "", "T9"},
		{ "", "T10"},
	}

	------------------------------------- Vanity Menus -------------------------------------
	collection.VanityCLASSIC = {
		Module = "AtlasLootVanity",
		{ "", "Tabards"},
		{ "", "VanityPets"},
		{ "", "Mounts"},
	}
	collection.VanityTBC = collection.VanityCLASSIC
	collection.VanityWRATH = collection.VanityCLASSIC
	
	------------------------------------- Faction Menus -------------------------------------
	collection.FactionsCLASSIC = {
	Module = "AtlasLootOriginalWoW",
	{ "", "Argent"},
	{ "", "AQBroodRings"},
	{ "", "AlteracFactions"},
	{ "", "ArathiBasinFactions"},
	{ "", "Timbermaw"},
	{ "", "Zandalar"},
	{ "", "Bloodsail"},
	{ "", "Cenarion"},
	{ "", "Hydraxian"},
	{ "", "DesolaceCentaurClans"},
	{ "", "Thorium"},
	{ "", "Wintersaber"},
	}

	collection.FactionsTBC = {
		Module = "AtlasLootBurningCrusade",
		{ "", "ShattrathFlasks"},
		{ "", "Aldor"},
		{ "", "Scryer"},
		{ "", "Shatar"},
		{ "", "LowerCity"},
		{ "", "CExpedition"},
		{ "", "HonorHold"},
		{ "", "Thrallmar"},
		{ "", "Kurenai"},
		{ "", "Maghar"},
		{ "", "Ogrila"},
		{ "", "Skyguard"},
		{ "", "Sporeggar"},
		{ "", "Tranquillien"},
		{ "", "Ashtongue"},
		{ "", "Consortium"},
		{ "", "KeepersofTime"},
		{ "", "Netherwing"},
		{ "", "ScaleSands"},
		{ "", "SunOffensive"},
		{ "", "VioletEye"},
	}

	collection.FactionsWRATH = {
		Module = "AtlasLootWotLK",
		{ "", "AllianceVanguard"},
		{ "", "WinterfinRetreat"},
		{ "", "TheWyrmrestAccord"},
		{ "", "KnightsoftheEbonBlade"},
		{ "", "TheOracles"},
		{ "", "TheSonsofHodir"},
		{ "", "HordeExpedition"},
		{ "", "TheKaluak"},
		{ "", "KirinTor"},
		{ "", "ArgentCrusade"},
		{ "", "FrenzyheartTribe"},
		{ "", "AshenVerdict"},
	}

	------------------------------------- PvP Menus -------------------------------------

	collection.PVPCLASSIC = {
		Module = "AtlasLootOriginalWoW",
		{ "PVP Factions", "AVMisc", "Header"},
		{ "", "AVMisc"},
		{ "", "AB_A"},
		{ "", "AB_H"},
		{ "", "WSG_A"},
		{ "", "WSG_H"},
		{ "", "PVPWeapons60"},
		{ "", "PvP60Accessories"},
		{ "", "PvP60Ench"},
		{ "PVP Sets", "PVPDruid", "Header"},
		{ "", "PVPDruid"},
		{ "", "PVPHunter"},
		{ "", "PVPMage"},
		{ "", "PVPPaladin"},
		{ "", "PVPPriest"},
		{ "", "PVPRogue"},
		{ "", "PVPShaman"},
		{ "", "PVPWarlock"},
		{ "", "PVPWarrior"},
	}

	collection.PVPTBC = {
		Module = "AtlasLootBurningCrusade",
		{ "PVP Factions", "PVPHellfire", "Header"},
		{ "", "PVPHellfire"},
		{ "", "PVPHalaa"},
		{ "", "PVPSpiritTowers"},
		{ "", "PVPTwinSpireRuins"},
		{ "", "PVP70RepGear"},
		{ "PVP Gear", "PvP70HonorVendor", "Header"},
		{ "", "PvP70HonorVendor"},
		{ "", "Pvp70Season1"},
		{ "", "Pvp70Season2"},
		{ "", "Pvp70Season3"},
		{ "", "Pvp70Season4"},
	}

	collection.PVPWRATH = {
		Module = "AtlasLootWotLK",
		{ "PVP Factions", "LakeWintergrasp", "Header"},
		{ "", "LakeWintergrasp"},
		{ "", "VentureBay"},
		{ "", "PvP80Misc"},
		{ "", "PVPidolWRATH"},
		{ "", "PvP80NonSet"},
		{ "", "WeaponsWRATH"},
		{ "PVP Sets", "ArenaDruidWRATH", "Header"},
		{ "", "ArenaDruidWRATH"},
		{ "", "ArenaHunterWRATH"},
		{ "", "ArenaMageWRATH"},
		{ "", "ArenaPaladinWRATH"},
		{ "", "ArenaPriestWRATH"},
		{ "", "ArenaRogueWRATH"},
		{ "", "ArenaShamanWRATH"},
		{ "", "ArenaWarlockWRATH"},
		{ "", "ArenaWarriorWRATH"},
		{ "", "ArenaDeathKnightWRATH"},
	}

	------------------------------------- World Event Menus -------------------------------------
	collection.WorldEventsCLASSIC = {
		Module = "AtlasLootWorldEvents",
		{ "Seasonal", "BrewfestCLASSIC", "Header"},
		{ "", "BrewfestCLASSIC"},
		{ "", "DayoftheDead"},
		{ "", "HalloweenCLASSIC"},
		{ "", "Valentineday"},
		{ "", "MidsummerFestivalCLASSIC"},
		{ "", "PilgrimsBounty"},
		{ "", "ChildrensWeek"},
		{ "", "Winterviel"},
		{ "", "HarvestFestival"},
		{ "", "LunarFestival"},
		{ "", "Noblegarden"},
		{ "Other", "Darkmoon", "Header"},
		{ "", "Darkmoon"},
		{ "", "GurubashiArena"},
		{ "", "AbyssalCouncil"},
		{ "", "ElementalInvasion"},
		{ "", "ScourgeInvasionEvent"},
		{ "", "FishingExtravaganza"},
	}

	collection.WorldEventsTBC = {
		Module = "AtlasLootWorldEvents",
		{ "Seasonal", "BrewfestTBC", "Header"},
		{ "", "BrewfestTBC"},
		{ "", "DayoftheDead"},
		{ "", "HalloweenTBC"},
		{ "", "Valentineday"},
		{ "", "MidsummerFestivalTBC"},
		{ "", "PilgrimsBounty"},
		{ "", "ChildrensWeek"},
		{ "", "Winterviel"},
		{ "", "HarvestFestival"},
		{ "", "LunarFestival"},
		{ "", "Noblegarden"},
		{ "Other", "BashirLanding", "Header"},
		{ "", "BashirLanding"},
		{ "", "GurubashiArena"},
		{ "", "Shartuul"},
		{ "", "AbyssalCouncil"},
		{ "", "Skettis"},
		{ "", "Darkmoon"},
		{ "", "FishingExtravaganza"},
		{ "", "EthereumPrison"},
	}

	collection.WorldEventsWRATH = {
		Module = "AtlasLootWorldEvents",
		{ "Seasonal", "BrewfestWRATH", "Header"},
		{ "", "BrewfestWRATH"},
		{ "", "DayoftheDead"},
		{ "", "HalloweenWRATH"},
		{ "", "Valentineday"},
		{ "", "MidsummerFestivalWRATH"},
		{ "", "PilgrimsBounty"},
		{ "", "ChildrensWeek"},
		{ "", "Winterviel"},
		{ "", "HarvestFestival"},
		{ "", "LunarFestival"},
		{ "", "Noblegarden"},
		{ "Other", "ArgentTournament", "Header"},
		{ "", "ArgentTournament"},
		{ "", "GurubashiArena"},
		{ "", "Shartuul"},
		{ "", "Skettis"},
		{ "", "Darkmoon"},
		{ "", "FishingExtravaganza"},
	}

	------------------------------------- Ascension Vanity Menus -------------------------------------
	collection.CollectionsAscensionCLASSIC = {
		{ "", "VanityConvenience" },
		{ "", "VanityStonesOfRetreat" },
		{ "", "VanityHeirlooms" },
		{ "", "VanityManastorm" },
		{ "", "VanityMounts" },
		{ "", "VanityPets" },
		{ "", "VanityToys" },
		{ "", "VanityKeys" },
		{ "", "VanityTomes" },
		{ "", "VanitySeasonal" },
		{ "", "VanityConsumable" },
		{ "", "VanityUncategorized" },
		{ "Weapons", "", {
			{ "", "VanityAxe1H" },
			{ "", "VanityAxe2H" },
			{ "", "VanitySword1H" },
			{ "", "VanitySword2H" },
			{ "", "VanityMace1H" },
			{ "", "VanityMace2H" },
			{ "", "VanityDagger" },
			{ "", "VanityFist" },
			{ "", "VanityShield" },
			{ "", "VanityPolearm" },
			{ "", "VanityBows" },
			{ "", "VanityGuns" },
			{ "", "VanityCrossbows" },
			{ "", "VanityThrown" },
			{ "", "VanityWands" },
			{ "", "VanityStaves" },
			{ "", "VanityFishingPole" },
			{ "", "VanityOffHand" },
		} },
		{ "Armor", "", {
			{ "", "VanityHead" },
			{ "", "VanityShoulder" },
			{ "", "VanityChest" },
			{ "", "VanityWaist" },
			{ "", "VanityLegs" },
			{ "", "VanityFeet" },
			{ "", "VanityWrist" },
			{ "", "VanityHands" },
			{ "", "VanityBack" },
			{ "", "VanitySets" },
		} },
		{ "Miscellaneous", "", {
			{ "", "VanityShirt" },
			{ "", "VanityTabard" },
			{ "", "VanityBackpack" },
			{ "", "VanityIllusion" },
		} },
		{ "Spells", "", {
			{ "", "VanityVisual" },
			{ "", "VanityEffect" },
			{ "", "VanityIncarnation" },
		} },
		{ "TamedPets", "", {
			{ "", "VanityWhistle" },
			{ "", "VanitySummonStone" },
			{ "", "VanityVellum" },
			{ "", "VanityWarhorn" },
			{ "", "VanityLodestone" },
		} },
		}

	collection.CollectionsAscensionTBC = collection.CollectionsAscensionCLASSIC
	collection.CollectionsAscensionWRATH = collection.CollectionsAscensionCLASSIC

end

AtlasLoot_Data["EmptyTable"] = {
	Name = AL["Select a Loot Table..."],
	{Name = AL["Select a Loot Table..."]},
}