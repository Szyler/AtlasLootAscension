local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local collection = AtlasLoot.ui.menus.collection

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
