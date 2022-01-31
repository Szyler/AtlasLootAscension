local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")


	AtlasLoot_Data["ASCENSIONMENU"] = {
		{ 1, "Tabard", "Ability_Paladin_ArtofWar", "=ds=Tabards"};
		{ 2, "Toys", "INV_Cask_04", "=ds=Toys"};
		{ 3, "Incarnation", "INV_Misc_Bone_HumanSkull_02", "=ds=Incarnation"};
		{ 4, "Misc", "INV_Misc_Bag_28_Halloween", "=ds=Misc"};
		{ 5, "Pets", "INV_ValentinesBoxOfChocolates02", "=ds=Pets"};
		{ 6, "Hearthstones", "INV_SummerFest_FireFlower", "=ds=Hearthstones"};
		{ 7, "Mounts", "inv_helmet_65", "=ds=Mounts"};
		{ 16, "FELFORGEDMENU", "INV_Trinket_Naxxramas02", "=ds=Felforged"};
	};

	AtlasLoot_Data["FELFORGEDMENU"] = {
		{ 1, "SoulRewards", "Ability_Paladin_ArtofWar", "=ds=SoulRewards"};
		{ 3, "FelProgression", "INV_Cask_04", "=ds=FelProgression"};
		{ 4, "FelHeirloom", "INV_Misc_Bone_HumanSkull_02", "=ds=FelHeirloom"};
		Back = "ASCENSIONMENU";
	};