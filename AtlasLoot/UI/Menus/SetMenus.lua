local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local collection = AtlasLoot.ui.menus.collection

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

		collection.VanityCLASSIC = {
			Module = "AtlasLootVanity",
			{ "", "Tabards"},
			{ "", "VanityPets"},
			{ "", "Mounts"},
		}
		
		collection.VanityTBC = collection.VanityCLASSIC
		collection.VanityWRATH = collection.VanityCLASSIC





