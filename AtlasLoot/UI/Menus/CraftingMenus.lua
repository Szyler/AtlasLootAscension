local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local collection = AtlasLoot.ui.menus.collection

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
