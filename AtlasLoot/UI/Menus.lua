--[[
Menu.lua
Defines the table listings for the dropdown lists.
]]

--Invoke all libraries

local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local menusTemp = {}
function AtlasLoot:AddNewMenus(menus)
	for menuName, menu in pairs(menus) do
		menusTemp[menuName] = menu
	end
end

function AtlasLoot:GetDataType(iD)
	local sourceInfo = self:GetSourcesExtendedInfo()
	return sourceInfo[iD] and sourceInfo[iD][1].Type or nil
end

function AtlasLoot:GetDataName(iD)
	return self.ui.menus.data[iD] and self.ui.menus.data[iD].Name or nil
end

function AtlasLoot:GetDataDisplayName(iD)
	return (self.ui.menus.data[iD] and (self.ui.menus.data[iD].DisplayName or self.ui.menus.data[iD].Name)) or nil
end

function AtlasLoot:GetDataPageName(iD, i)
	return self.ui.menus.data[iD] and self.ui.menus.data[iD][i][1] or nil
end

function AtlasLoot:GetDataModule(iD)
	return self.ui.menus.data[iD] and self.ui.menus.data[iD].Module or nil
end

function AtlasLoot:GetDataMap(iD)
	return self.ui.menus.data[iD] and self.ui.menus.data[iD].Map or nil
end

function AtlasLoot:InitializeMenus()
	self.ui.menus = {collection = {}, data = menusTemp}
	local menus = self.ui.menus
	local collection = menus.collection


	--This is a multi-layer table defining the main loot listing.
	--Entries have the text to display, loot table or sub table to link to and if the link is to a loot table or sub table
	menus.modules = {
		{"Dungeons and Raids", "Dungeons and Raids", 2},
		{"Crafting", "Crafting"},
		{"Sets/Collections", "Collections"},
		{"PvP Rewards", "PVP"},
		{"Vanity", "Vanity"},
		{"Ascension Vanity Collection", "CollectionsAscension"},
		{"Factions", "Factions"},
		{"World Events", "WorldEvents"},
	}

	menus.expansion = {
		{ "Classic", "CLASSIC" },
		{ "Burning Crusade", "TBC" },
		{ "Wrath of the Lich King", "WRATH" },
	}

	-------------------------------------Dungeon and Raid Menus-------------------------------------
	collection["Dungeons and RaidsCLASSIC"] = {
		Module = "AtlasLootOriginalWoW",
		---- Raids ----
		{ "Raids:", "OldKeys", "Header" },
		{ "", "ZulGurub", "", "Zul'Gurub" },
		{ "", "MoltenCore", "", "Molten Core" },
		{ "", "Onyxia60", "", "Onyxias Lair" },
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
		{ "", "ScarletMonastery", "", "Scarlet Monastery" },
		{ "", "Scholomance", "", "Scholomance" },
		{ "", "ShadowfangKeep", "", "Shadowfang Keep" },
		{ "", "TheStockade", "", "The Stockade" },
		{ "", "Stratholme", "", "Stratholme" },
		{ "", "SunkenTemple", "", "Sunken Temple" },
		{ "", "Uldaman", "", "Uldaman" },
		{ "", "WailingCaverns", "", "Wailing Caverns" },
		{ "", "ZulFarrak", "", "Zul'Farrak" },
		{ "", "VaultsOfTheInquisition", "", "Vaults of the Inquisition" },
		{ "", "RoadToDeOtherSide", "", "Road to De Other Side" },
		{ "", "SharedDungeonLoot", "", "Shared Dungeon Loot" },
		{ "Manastorm:", "BCKeys", "Header" },
		{ "", "FrozenReach", "", "Frozen Reach" },
	}

	collection["Dungeons and RaidsTBC"] = {
		Module = "AtlasLootBurningCrusade",
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
		{ "Dungeon Sets", "TONE", "Header"},
		{ "", "DungeonSetsCLASSIC"},
		{ "", "DungeonSetsUpgradedCLASSIC"},
		{ "Raid Sets", "TONE", "Header"},
		{ "", "ZGSets"},
		{ "", "AQ20Sets"},
		{ "Tier Sets", "TONE", "Header"},
		{ "", "TONE"},
		{ "", "TTWO"},
		{ "", "T2.5"},
		{ "", "TTHREE"},
	}

	collection.CollectionsTBC = {
		Module = "AtlasLootBurningCrusade",
		{ "", "Heirloom"},
		{ "", "DS3"},
		{ "", "WorldRaresTBC"},
		{ "", "WorldEpicsTBC"},
		{ "", "TBCSets"},
		{ "Badge of Justice Rewards", "BadgeShatt", "Header"},
		{ "", "BadgeShatt"},
		{ "", "BadgeSunwell"},
		{ "", "SunmoteSunwell"},
		{ "Tier Sets", "TFOUR", "Header"},
		{ "", "TFOUR"},
		{ "", "TFIVE"},
		{ "", "TSIX"},
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
		{ "Tier Sets", "TSEVEN", "Header"},
		{ "", "TSEVEN"},
		{ "", "TEIGHT"},
		{ "", "TNINE"},
		{ "", "TTEN"},
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
		{ "", "VanityWeapons" },
		{ "", "VanityArmor" },
		{ "", "VanityMiscellaneous" },
		{ "", "VanitySpells" },
		{ "", "VanityTamedPets" },
	}

	collection.CollectionsAscensionTBC = collection.CollectionsAscensionCLASSIC
	collection.CollectionsAscensionWRATH = collection.CollectionsAscensionCLASSIC

end

AtlasLoot_Data["EmptyTable"] = {
	Name = "Select a Loot Table...",
	{Name = "Select a Loot Table..."},
}