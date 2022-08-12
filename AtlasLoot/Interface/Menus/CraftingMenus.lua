local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

	AtlasLoot_SubMenus["CraftingCLASSIC"] = {
		Module = "AtlasLootCrafting";
		{ "", "AlchemyCLASSIC"};
		{ "", "SmithingCLASSIC"};
		{ "", "EnchantingCLASSIC"};
		{ "", "EngineeringCLASSIC"};
		{ "", "LeatherworkingCLASSIC"};
		{ "", "TailoringCLASSIC"};
		{ "", "MiningCLASSIC"};
		{ "", "CookingCLASSIC"};
		{ "", "FirstAidCLASSIC"};
		{"High Risk:", "", "Header"};
		{ "", "AlchemyHighRiskCLASSIC"};
		{ "", "SmithingHighRiskCLASSIC"};
		{ "", "EnchantingHighRiskCLASSIC"};
		{ "", "EngineeringHighRiskCLASSIC"};
		{ "", "LeatherworkingHighRiskCLASSIC"};
		{ "", "TailoringHighRiskCLASSIC"};
		{ "", "CookingHighRiskCLASSIC"};
	};

	AtlasLoot_SubMenus["CraftingTBC"] = {
		Module = "AtlasLootCrafting";
		{ "", "AlchemyTBC"};
		{ "", "SmithingTBC"};
		{ "", "EnchantingTBC"};
		{ "", "EngineeringTBC"};
		{ "", "JewelcraftingTBC"};
		{ "", "LeatherworkingTBC"};
		{ "", "TailoringTBC"};
		{ "", "MiningTBC"};
		{ "", "CookingTBC"};
		{ "", "FirstAidTBC"};
		{"High Risk:", "", "Header"};
		{ "", "AlchemyHighRiskTBC"};
		{ "", "SmithingHighRiskTBC"};
		{ "", "EnchantingHighRiskTBC"};
		{ "", "EngineeringHighRiskTBC"};
		{ "", "JewelcraftingHighRiskTBC"};
		{ "", "LeatherworkingHighRiskTBC"};
		{ "", "TailoringHighRiskTBC"};
		{ "", "CookingHighRiskTBC"};
	};

	AtlasLoot_SubMenus["CraftingWRATH"] = {
		Module = "AtlasLootCrafting";
		{ "", "AlchemyWRATH"};
		{ "", "SmithingWRATH"};
		{ "", "EnchantingWRATH"};
		{ "", "EngineeringWRATH"};
		{ "", "JewelcraftingWRATH"};
		{ "", "LeatherworkingWRATH"};
		{ "", "TailoringWRATH"};
		{ "", "Inscription"};
		{ "", "MiningWRATH"};
		{ "", "CookingWRATH"};
		{ "", "FirstAidWRATH"};
		{"High Risk:", "", "Header"};
--[[ 		{ "", "AlchemyHighRiskWRATH"};
		{ "", "SmithingHighRiskWRATH"};
		{ "", "EnchantingHighRiskWRATH"};
		{ "", "EngineeringHighRiskWRATH"};
		{ "", "JewelcraftingHighRiskWRATH"};
		{ "", "LeatherworkingHighRiskWRATH"};
		{ "", "TailoringHighRiskWRATH"}; ]]
	};
