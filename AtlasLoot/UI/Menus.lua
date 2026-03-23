--[[
Menu.lua
Defines the table listings for the dropdown lists.
]]

--Invoke all libraries

local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local menusKeyTable = {}
local menusTemp = {}
function AtlasLoot:AddNewMenus(menus)
	for menuName, menu in pairs(menus) do
		menusTemp[menuName] = menu
		for i, menuKey in ipairs(menu) do
			if menuKey[2] and #menuKey[2] > 0 then
				menusKeyTable[menuKey[2][1]] = {menuName, i}
			else
				menusKeyTable[menuName..i] = {menuName, i}
			end
		end
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
	return (self.ui.menus.data[menusKeyTable[iD][1]] and (self.ui.menus.data[menusKeyTable[iD][1]].DisplayName or self.ui.menus.data[menusKeyTable[iD][1]].Name)) or nil
end

function AtlasLoot:GetDataPageName(iD)
	return self.ui.menus.data[menusKeyTable[iD][1]] and self.ui.menus.data[menusKeyTable[iD][1]][menusKeyTable[iD][2]][1] or nil
end

function AtlasLoot:GetSourceLocation(iD)
	return menusKeyTable[iD][1], menusKeyTable[iD][2]
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
		{"Crafting", "Crafting" },
		{"Sets/Collections", "Collections" },
		{"PvP Rewards", "PVP" },
		{"Vanity", "Vanity" },
		{"Ascension Vanity Collection", "CollectionsAscension" },
		{"Factions", "Factions" },
		{"World Events", "WorldEvents" },
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
		{ "OldKeys", Header = "Raids:" },
		{ "ZulGurub" },
		{ "MoltenCore" },
		{ "Onyxia60" },
		{ "BlackwingLair" },
		{ "RuinsofAQ" },
		{ "TempleofAQ" },
		{ "Naxxramas60" },
		{ "WorldBossesCLASSIC" },
		---- Dungeons -----
		{ "OldKeys", Header = "Dungeons:" },
		{ "ClassicDungeonExt", OnDamand = {"ClassicDungeonExt", true, "All Dungeon Items"}},
		{ "BlackfathomDeeps" },
		{ "BlackrockDepths" },
		{ "BlackrockCaverns" },
		{ "LowerBlackrock" },
		{ "UpperBlackrock" },
		{ "TheDeadmines" },
		{ "DireMaulNorth" },
		{ "DireMaulEast" },
		{ "DireMaulWest" },
		{ "Gnomeregan" },
		{ "KarazhanCrypts" },
		{ "Maraudon" },
		{ "RagefireChasm" },
		{ "RazorfenDowns" },
		{ "RazorfenKraul" },
		{ "ScarletMonastery" },
		{ "Scholomance" },
		{ "ShadowfangKeep" },
		{ "TheStockade" },
		{ "Stratholme" },
		{ "SunkenTemple" },
		{ "Uldaman" },
		{ "WailingCaverns" },
		{ "ZulFarrak" },
		{ "VaultsOfTheInquisition" },
		{ "RoadToDeOtherSide" },
		{ "SharedDungeonLoot" },
		{ "BCKeys", Header = "Manastorm:" },
		{ "FrozenReach" },
	}

	collection["Dungeons and RaidsTBC"] = {
		Module = "AtlasLootBurningCrusade",
		---- Raids ----
		{ "BCKeys", Header = "Raids:" },
		{ "Karazhan" },
		{ "GruulsLair" },
		{ "HCMagtheridon" },
		{ "CFRSerpentshrine" },
		{ "TKEye" },
		{ "ZulAman" },
		{ "CoTHyjal" },
		{ "BlackTemple" },
		{ "SunwellPlateau" },
		{ "WorldBossesTBC", },
		---- Dungeons -----
		{ "BCKeys", Header = "Dungeons:" },
		{ "All Dungeon Items", "BCDungeon", OnDamand = {"BCDungeon", true, "All Dungeon Items"}},
		{ "HCRamparts" },
		{ "HCShatteredHalls" },
		{ "HCFurnace" },
		{ "TKBot" },
		{ "TKArc" },
		{ "TKMech" },
		{ "AuchCrypts" },
		{ "AuchManaTombs" },
		{ "AuchSethekk" },
		{ "AuchShadowLab" },
		{ "CoTOldHillsbrad" },
		{ "CoTBlackMorass" },
		{ "CFRSlavePens" },
		{ "CFRSteamvault" },
		{ "CFRUnderbog" },
		{ "MagistersTerrace" },
		{ "KarazhanCryptsTBC" },
		{ "BlackrockCavernsTBC" },
		{ "BCKeys", Header = "Manastorm:" },
		{ "FrozenReachTBC" },
	}

	collection["Dungeons and RaidsWRATH"] = {
		Module = "AtlasLootWotLK",
		---- Raids ----
		{ "WrathKeys", Header = "Raids:" },
		{ "Naxxramas80" },
		{ "Sartharion" },
		{ "Malygos" },
		{ "VaultofArchavon" },
		{ "Ulduar" },
		{ "TrialoftheCrusader" },
		{ "Onyxia80" },
		{ "IcecrownCitadel" },
		{ "Halion" },
		---- Dungeons -----
		{ "WrathKeys", Header = "Dungeons:" },
		{ "All Dungeon Items", "WrathDungeon", OnDamand = {"WrathDungeon", true, "All Dungeon Items"}},
		{ "Ahnkahet" },
		{ "AzjolNerub" },
		{ "CoTStratholme" },
		{ "DrakTharonKeep" },
		{ "ForgeofSouls" },
		{ "Gundrak" },
		{ "HallsofLightning" },
		{ "HallsofReflection" },
		{ "HallsofStone" },
		{ "TheNexus" },
		{ "TheOculus" },
		{ "PitofSaron" },
		{ "TrialoftheChampion" },
		{ "UtgardeKeep" },
		{ "UtgardePinnacle" },
		{ "TheVioletHold" },
	}

	------------------------------------- Crafting Menus -------------------------------------
	collection.CraftingCLASSIC = {
		Module = "AtlasLootCraftingOriginalWoW",
		{ "AlchemyCLASSIC" },
		{ "SmithingCLASSIC" },
		{ "EnchantingCLASSIC" },
		{ "EngineeringCLASSIC" },
		{ "LeatherworkingCLASSIC" },
		{ "TailoringCLASSIC" },
		{ "MiningCLASSIC" },
		{ "CookingCLASSIC" },
		{ "FirstAidCLASSIC" },
	};

	collection.CraftingTBC = {
		Module = "AtlasLootCraftingBurningCrusade",
		{ "AlchemyTBC" },
		{ "SmithingTBC" },
		{ "EnchantingTBC" },
		{ "EngineeringTBC" },
		{ "JewelcraftingTBC" },
		{ "LeatherworkingTBC" },
		{ "TailoringTBC" },
		{ "MiningTBC" },
		{ "CookingTBC" },
		{ "FirstAidTBC" },
	};

	collection.CraftingWRATH = {
		Module = "AtlasLootCraftingWotLK",
		{ "AlchemyWRATH" },
		{ "SmithingWRATH" },
		{ "EnchantingWRATH" },
		{ "EngineeringWRATH" },
		{ "JewelcraftingWRATH" },
		{ "LeatherworkingWRATH" },
		{ "TailoringWRATH" },
		{ "Inscription" },
		{ "MiningWRATH" },
		{ "CookingWRATH" },
		{ "FirstAidWRATH" },
	};

	------------------------------------- Collections Menus -------------------------------------
	collection.CollectionsCLASSIC = {
		Module = "AtlasLootOriginalWoW",
		{ "Heirloom" },
		{ "ClassicSets" },
		{ "WorldEpicsCLASSIC" },
		{ "MarkOfTriumph" },
		{ "WorldforgedClassic", OnDamand = {"WorldforgedClassic", false, "Worldforged Items"}},
		{ "TONE", Header = "Dungeon Sets" },
		{ "DungeonSetsCLASSIC" },
		{ "DungeonSetsUpgradedCLASSIC" },
		{ "TONE", Header = "Raid Sets" },
		{ "ZGSets" },
		{ "AQ20Sets" },
		{ "TONE", Header = "Tier Sets" },
		{ "TONE" },
		{ "TTWO" },
		{ "T2.5" },
		{ "TTHREE" },
	}

	collection.CollectionsTBC = {
		Module = "AtlasLootBurningCrusade",
		{ "Heirloom" },
		{ "DS3" },
		{ "WorldRaresTBC" },
		{ "WorldEpicsTBC" },
		{ "TBCSets" },
		{ "BadgeShatt", Header = "Badge of Justice Rewards" },
		{ "BadgeShatt" },
		{ "BadgeSunwell" },
		{ "SunmoteSunwell" },
		{ "TFOUR", Header = "Tier Sets" },
		{ "TFOUR" },
		{ "TFIVE" },
		{ "TSIX" },
	}
	collection.CollectionsWRATH = {
		Module = "AtlasLootWotLK",
		{ "Heirloom" },
		{ "WorldEpicsWrath" },
		{ "Legendaries" },
		{ "EmblemofHeroism", Header = "Badge Rewards" },
		{ "EmblemofHeroism" },
		{ "EmblemofValor" },
		{ "EmblemofConquest" },
		{ "EmblemofTriumph" },
		{ "EmblemofFrost" },
		{ "TSEVEN", Header = "Tier Sets" },
		{ "TSEVEN" },
		{ "TEIGHT" },
		{ "TNINE" },
		{ "TTEN" },
	}

	------------------------------------- Vanity Menus -------------------------------------
	collection.VanityCLASSIC = {
		Module = "AtlasLootVanity",
		{ "Tabards" },
		{ "VanityPets" },
		{ "Mounts" },
	}
	collection.VanityTBC = collection.VanityCLASSIC
	collection.VanityWRATH = collection.VanityCLASSIC
	
	------------------------------------- Faction Menus -------------------------------------
	collection.FactionsCLASSIC = {
	Module = "AtlasLootOriginalWoW",
	{ "Argent" },
	{ "AQBroodRings" },
	{ "AlteracFactions" },
	{ "ArathiBasinFactions" },
	{ "Timbermaw" },
	{ "Zandalar" },
	{ "Bloodsail" },
	{ "Cenarion" },
	{ "Hydraxian" },
	{ "DesolaceCentaurClans" },
	{ "Thorium" },
	{ "Wintersaber" },
	}

	collection.FactionsTBC = {
		Module = "AtlasLootBurningCrusade",
		{ "ShattrathFlasks" },
		{ "Aldor" },
		{ "Scryer" },
		{ "Shatar" },
		{ "LowerCity" },
		{ "CExpedition" },
		{ "HonorHold" },
		{ "Thrallmar" },
		{ "Kurenai" },
		{ "Maghar" },
		{ "Ogrila" },
		{ "Skyguard" },
		{ "Sporeggar" },
		{ "Tranquillien" },
		{ "Ashtongue" },
		{ "Consortium" },
		{ "KeepersofTime" },
		{ "Netherwing" },
		{ "ScaleSands" },
		{ "SunOffensive" },
		{ "VioletEye" },
	}

	collection.FactionsWRATH = {
		Module = "AtlasLootWotLK",
		{ "AllianceVanguard" },
		{ "WinterfinRetreat" },
		{ "TheWyrmrestAccord" },
		{ "KnightsoftheEbonBlade" },
		{ "TheOracles" },
		{ "TheSonsofHodir" },
		{ "HordeExpedition" },
		{ "TheKaluak" },
		{ "KirinTor" },
		{ "ArgentCrusade" },
		{ "FrenzyheartTribe" },
		{ "AshenVerdict" },
	}

	------------------------------------- PvP Menus -------------------------------------

	collection.PVPCLASSIC = {
		Module = "AtlasLootOriginalWoW",
		{ "AVMisc", Header = "PVP Factions" },
		{ "AVMisc" },
		{ "AB_A" },
		{ "AB_H" },
		{ "WSG_A" },
		{ "WSG_H" },
		{ "PVPWeapons60" },
		{ "PvP60Accessories" },
		{ "PvP60Ench" },
		{ "PVPDruid", Header = "PVP Sets" },
		{ "PVPDruid" },
		{ "PVPHunter" },
		{ "PVPMage" },
		{ "PVPPaladin" },
		{ "PVPPriest" },
		{ "PVPRogue" },
		{ "PVPShaman" },
		{ "PVPWarlock" },
		{ "PVPWarrior" },
	}

	collection.PVPTBC = {
		Module = "AtlasLootBurningCrusade",
		{ "PVPHellfire", Header = "PVP Factions" },
		{ "PVPHellfire" },
		{ "PVPHalaa" },
		{ "PVPSpiritTowers" },
		{ "PVPTwinSpireRuins" },
		{ "PVP70RepGear" },
		{ "PvP70HonorVendor", Header = "PVP Gear" },
		{ "PvP70HonorVendor" },
		{ "Pvp70Season1" },
		{ "Pvp70Season2" },
		{ "Pvp70Season3" },
		{ "Pvp70Season4" },
	}

	collection.PVPWRATH = {
		Module = "AtlasLootWotLK",
		{ "LakeWintergrasp", Header = "PVP Factions" },
		{ "LakeWintergrasp" },
		{ "VentureBay" },
		{ "PvP80Misc" },
		{ "PVPidolWRATH" },
		{ "PvP80NonSet" },
		{ "WeaponsWRATH" },
		{ "ArenaDruidWRATH", Header = "PVP Sets" },
		{ "ArenaDruidWRATH" },
		{ "ArenaHunterWRATH" },
		{ "ArenaMageWRATH" },
		{ "ArenaPaladinWRATH" },
		{ "ArenaPriestWRATH" },
		{ "ArenaRogueWRATH" },
		{ "ArenaShamanWRATH" },
		{ "ArenaWarlockWRATH" },
		{ "ArenaWarriorWRATH" },
		{ "ArenaDeathKnightWRATH" },
	}

	------------------------------------- World Event Menus -------------------------------------
	collection.WorldEventsCLASSIC = {
		Module = "AtlasLootWorldEvents",
		{ "BrewfestCLASSIC", Header = "Seasonal" },
		{ "BrewfestCLASSIC" },
		{ "DayoftheDead" },
		{ "HalloweenCLASSIC" },
		{ "Valentineday" },
		{ "MidsummerFestivalCLASSIC" },
		{ "PilgrimsBounty" },
		{ "ChildrensWeek" },
		{ "Winterviel" },
		{ "HarvestFestival" },
		{ "LunarFestival" },
		{ "Noblegarden" },
		{ "Darkmoon", Header = "Other" },
		{ "Darkmoon" },
		{ "GurubashiArena" },
		{ "AbyssalCouncil" },
		{ "ElementalInvasion" },
		{ "ScourgeInvasionEvent" },
		{ "FishingExtravaganza" },
	}

	collection.WorldEventsTBC = {
		Module = "AtlasLootWorldEvents",
		{ "BrewfestTBC", Header = "Seasonal" },
		{ "BrewfestTBC" },
		{ "DayoftheDead" },
		{ "HalloweenTBC" },
		{ "Valentineday" },
		{ "MidsummerFestivalTBC" },
		{ "PilgrimsBounty" },
		{ "ChildrensWeek" },
		{ "Winterviel" },
		{ "HarvestFestival" },
		{ "LunarFestival" },
		{ "Noblegarden" },
		{ "BashirLanding", Header = "Other" },
		{ "BashirLanding" },
		{ "GurubashiArena" },
		{ "Shartuul" },
		{ "AbyssalCouncil" },
		{ "Skettis" },
		{ "Darkmoon" },
		{ "FishingExtravaganza" },
		{ "EthereumPrison" },
	}

	collection.WorldEventsWRATH = {
		Module = "AtlasLootWorldEvents",
		{ "BrewfestWRATH", Header = "Seasonal" },
		{ "BrewfestWRATH" },
		{ "DayoftheDead" },
		{ "HalloweenWRATH" },
		{ "Valentineday" },
		{ "MidsummerFestivalWRATH" },
		{ "PilgrimsBounty" },
		{ "ChildrensWeek" },
		{ "Winterviel" },
		{ "HarvestFestival" },
		{ "LunarFestival" },
		{ "Noblegarden" },
		{ "ArgentTournament", Header = "Other" },
		{ "ArgentTournament" },
		{ "GurubashiArena" },
		{ "Shartuul" },
		{ "Skettis" },
		{ "Darkmoon" },
		{ "FishingExtravaganza" },
	}

	------------------------------------- Ascension Vanity Menus -------------------------------------
	collection.CollectionsAscensionCLASSIC = {
		{ "VanityConvenience" },
		{ "VanityStonesOfRetreat" },
		{ "VanityHeirlooms" },
		{ "VanityManastorm" },
		{ "VanityMounts" },
		{ "VanityPets" },
		{ "VanityToys" },
		{ "VanityKeys" },
		{ "VanityTomes" },
		{ "VanitySeasonal" },
		{ "VanityConsumable" },
		{ "VanityUncategorized" },
		{ "VanityWeapons" },
		{ "VanityArmor" },
		{ "VanityMiscellaneous" },
		{ "VanitySpells" },
		{ "VanityTamedPets" },
	}

	collection.CollectionsAscensionTBC = collection.CollectionsAscensionCLASSIC
	collection.CollectionsAscensionWRATH = collection.CollectionsAscensionCLASSIC

end

AtlasLoot_Data["EmptyTable"] = {
	Name = "Select a Loot Table...",
	{Name = "Select a Loot Table... " },
}