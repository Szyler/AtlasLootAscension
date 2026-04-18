--[[
Menu.lua
Defines the table listings for the dropdown lists.
]]

--Invoke all libraries

local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local menusKeyTable = {}
local menusTemp = {}
local mapKeys = {}

function AtlasLoot:AddNewMenus(menus)
	for menuName, menu in pairs(menus) do
		menusTemp[menuName] = menu
		if menusTemp[menuName].Map then
			mapKeys[menusTemp[menuName].Map] = menuName
		end
		for i, menuKey in ipairs(menu) do
			if menuKey[2] and #menuKey[2] > 0 then
				menusKeyTable[menuKey[2][1]] = {menuName, i}
			end
			menusKeyTable[menuName..i] = {menuName, i}
		end
	end
end

function AtlasLoot:GetSourcesExtendedInfo(iD)
	local sourceInfo = {
		Type = self:GetDataType(iD),
		SourceName = self:GetDataDisplayName(iD),
		Source = {self:GetSourceLocation(iD)},
		Module = self:GetDataModule(iD),
		Name = self:GetDataPageName(iD),
		CollectionModuleName = self:GetCollectionModuleName(iD)
	}
	return sourceInfo
end

local collectionKeys
function AtlasLoot:GetCollectionModuleName(iD)
	if not collectionKeys then
		collectionKeys = {}
		for moduleName, module in pairs(self.ui.menus.collection) do
			for _, subMenu in ipairs(module) do
				collectionKeys[subMenu[1]] = moduleName
			end
		end
	end
	return collectionKeys[iD]
end

function AtlasLoot:GetDataType(iD)
	if self.ui.menus.data[iD] then
		return self.ui.menus.data[iD].Type or ""
	elseif menusKeyTable[iD] then
		return self.ui.menus.data[menusKeyTable[iD][1]] and self.ui.menus.data[menusKeyTable[iD][1]].Type or ""
	end
	return ""
end

function AtlasLoot:GetDataVanity(iD)
	if self.ui.menus.data[iD] then
		return self.ui.menus.data[iD].vanity or nil
	elseif menusKeyTable[iD] then
		return self.ui.menus.data[menusKeyTable[iD][1]] and self.ui.menus.data[menusKeyTable[iD][1]].vanity or nil
	end
end

function AtlasLoot:GetDataName(iD)
	if self.ui.menus.data[iD] then
		return self.ui.menus.data[iD].Name or ""
	elseif menusKeyTable[iD] then
		return self.ui.menus.data[menusKeyTable[iD][1]] and self.ui.menus.data[menusKeyTable[iD][1]].Name or ""
	end
	return ""
end

function AtlasLoot:GetDataDisplayName(iD)
	if self.ui.menus.data[iD] then
		return (self.ui.menus.data[iD].DisplayName or self.ui.menus.data[iD].Name) or ""
	elseif menusKeyTable[iD] then
		return (self.ui.menus.data[menusKeyTable[iD][1]] and (self.ui.menus.data[menusKeyTable[iD][1]].DisplayName or self.ui.menus.data[menusKeyTable[iD][1]].Name)) or ""
	end
	return ""
end

function AtlasLoot:GetDataPageName(iD, tableNum)
	if tableNum then
		return self.ui.menus.data[iD] and self.ui.menus.data[iD][tableNum] and self.ui.menus.data[iD][tableNum][1] or ""
	elseif menusKeyTable[iD] then
		return self.ui.menus.data[menusKeyTable[iD][1]] and self.ui.menus.data[menusKeyTable[iD][1]][menusKeyTable[iD][2]] and self.ui.menus.data[menusKeyTable[iD][1]][menusKeyTable[iD][2]][1] or ""
	end
	return ""
end

function AtlasLoot:GetSourceLocation(iD)
	if not menusKeyTable[iD] then return iD end
	return menusKeyTable[iD][1], menusKeyTable[iD][2]
end

function AtlasLoot:GetDataModule(iD)
	if self.ui.menus.data[iD] then
		return self.ui.menus.data[iD].Module or ""
	elseif menusKeyTable[iD] then
		return self.ui.menus.data[menusKeyTable[iD][1]] and self.ui.menus.data[menusKeyTable[iD][1]].Module or ""
	end
	return ""
end

function AtlasLoot:GetDataMap(iD)
	if self.ui.menus.data[iD] then
		return self.ui.menus.data[iD].Map
	elseif menusKeyTable[iD] then
		return self.ui.menus.data[menusKeyTable[iD][1]] and self.ui.menus.data[menusKeyTable[iD][1]].Map
	end
end

function AtlasLoot:GetMapInstance(iD)
	return mapKeys[iD] or nil
end

function AtlasLoot:InitializeMenus()
	self.ui.menus = {collection = {}, data = menusTemp}
	local menus = self.ui.menus
	local collection = menus.collection
	if self.selectedProfile.isAdmin then AtlasLoot_SourceKeyTable = menusKeyTable end


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
		Module = "AtlasLoot_OriginalWoW",
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
		{ "BlackrockCavernsCLASSIC" },
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
		{ "FrozenReach", Header = "Manastorm:" },
		{ "FrozenReach" },
	}

	collection["Dungeons and RaidsTBC"] = {
		Module = "AtlasLoot_BurningCrusade",
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
		{ "BCDungeon", OnDamand = {"BCDungeon", true, "All Dungeon Items"}},
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
		{ "FrozenReachTBC", Header = "Manastorm:" },
		{ "FrozenReachTBC" },
	}

	collection["Dungeons and RaidsWRATH"] = {
		Module = "AtlasLoot_WrathoftheLichKing",
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
		{ "WrathDungeon", OnDamand = {"WrathDungeon", true, "All Dungeon Items"}},
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
		Module = "AtlasLoot_Crafting_OriginalWoW",
		{ "AlchemyCLASSIC" },
		{ "SmithingCLASSIC" },
		{ "EnchantingCLASSIC" },
		{ "EngineeringCLASSIC" },
		{ "LeatherworkingCLASSIC" },
		{ "TailoringCLASSIC" },
		{ "MiningCLASSIC" },
		{ "CookingCLASSIC" },
		{ "FirstAidCLASSIC" },
	}

	collection.CraftingTBC = {
		Module = "AtlasLoot_Crafting_TBC",
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
	}

	collection.CraftingWRATH = {
		Module = "AtlasLoot_Crafting_Wrath",
		{ "AlchemyWRATH" },
		{ "SmithingWRATH" },
		{ "EnchantingWRATH" },
		{ "EngineeringWRATH" },
		{ "JewelcraftingWRATH" },
		{ "LeatherworkingWRATH" },
		{ "TailoringWRATH" },
		{ "InscriptionWRATH" },
		{ "MiningWRATH" },
		{ "CookingWRATH" },
		{ "FirstAidWRATH" },
	}

	------------------------------------- Collections Menus -------------------------------------
	collection.CollectionsCLASSIC = {
		Module = "AtlasLoot_OriginalWoW",
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
		Module = "AtlasLoot_BurningCrusade",
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
		Module = "AtlasLoot_WrathoftheLichKing",
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
		Module = "AtlasLoot_Vanity",
		{ "Tabards" },
		{ "VanityPets" },
		{ "Mounts" },
	}
	collection.VanityTBC = collection.VanityCLASSIC
	collection.VanityWRATH = collection.VanityCLASSIC
	
	------------------------------------- Faction Menus -------------------------------------
	collection.FactionsCLASSIC = {
	Module = "AtlasLoot_OriginalWoW",
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
		Module = "AtlasLoot_BurningCrusade",
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
		Module = "AtlasLoot_WrathoftheLichKing",
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
		Module = "AtlasLoot_OriginalWoW",
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
		Module = "AtlasLoot_BurningCrusade",
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
		Module = "AtlasLoot_WrathoftheLichKing",
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
		Module = "AtlasLoot_WorldEvents",
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
		Module = "AtlasLoot_WorldEvents",
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
		Module = "AtlasLoot_WorldEvents",
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