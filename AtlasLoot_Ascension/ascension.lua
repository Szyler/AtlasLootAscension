local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")

-- Index
--- Collections
---- Mounts
---- Pets
---- Appearances
---- Weapons
---- Incarnations
---- Illusions
---- Pet Cosmetics
--- Store Items
---- Convenience
---- Mounts
---- Pets
---- Toys
---- Appearances
---- Bundles
--- Event Items
---- Felforged
---- Seasonal
 

print("Ascension Module Loaded");
	------------------------
	---   Event Items	 ---
	------------------------

		-----------------
		--- Felforged ---
		-----------------

	AtlasLoot_Data["SoulRewards"] = {
		{ 1, 13, "", "=q5=Rites of the Felborne: Felborne", "5000#felsoul#"};
		{ 2, 246191, "", "=q5=Rites of the Felborne: Fel Abiding Energy", "5000#felsoul#"};
		{ 3, 246193, "", "=q5=Rites of the Felborne: Fel Strike", "5000#felsoul#"};
		{ 5, 79240, "", "=q5=Wrathblade", "5000#felsoul#"};
		{ 6, 79241, "", "=q5=Staff of Guldan", "5000#felsoul#"};
		{ 7, 79242, "", "=q5=Unholy Ebon Halberd", "5000#felsoul#"};
		{ 8, 124382, "", "=q5=Edict of Argus", "5000#felsoul#"};
		{ 9, 124385, "", "=q5=Blazing Demonhilt Sword", "5000#felsoul#"};
		{ 10, 499863, "", "=q5=Felreaver's Edge", "5000#felsoul#"};
		{ 12, 79256, "", "=q5=Beastmaster's Whistle: Felhound", "5000#felsoul#"};
		{ 13, 79258, "", "=q5=Beastmaster's Whistle: White Felbat", "5000#felsoul#"};
		{ 14, 79260, "", "=q5=Beastmaster's Whistle: Armored Soulhound", "5000#felsoul#"};
		{ 15, 79262, "", "=q5=Beastmaster's Whistle: Felflame Talbuk", "5000#felsoul#"};
		{ 16, 405, "", "=q5=Demon Scroll: Red Imp", "2500#felsoul#"};
		{ 18, 499940, "", "=q5=Reins of the Illidari Felstalker", "5000#felsoul#"};
		{ 20, 79171, "", "=q5=Demon Hunter Blindfold", "5000#felsoul#"};
		{ 22, 82304, "", "=q5=Zealous Felslinger's Girdle", "2280#felsoul#"};
		{ 23, 82305, "", "=q5=Zealous Felslinger's Boots", "2550#felsoul#"};
		{ 24, 82306, "", "=q5=Zealous Felslinger's Robe", "4450#felsoul#"};
		{ 25, 82307, "", "=q5=Zealous Felslinger's Handwraps", "4450#felsoul#"};
		{ 26, 82308, "", "=q5=Zealous Felslinger's Visage", "2550#felsoul#"};
		{ 27, 82309, "", "=q5=Zealous Felslinger's Leggings", "4450#felsoul#"};
		{ 28, 82310, "", "=q5=Zealous Felslinger's Epaulets", "2550#felsoul#"};
		{ 29, 82312, "", "=q5=Zealous Felslinger's Cuffs", "2280#felsoul#"};
	};

	AtlasLoot_Data["FelProgression"] = {
		{ 1, 3001008, "", "=q5=Felforged Tome: Apprentice Riding", "50#felsoul#"};
		{ 2, 3001007, "", "=q5=Felforged Tome: Journeyman Riding", "1000#felsoul#"};
		{ 3, 1030180, "", "=q5=Felforged Tome: Track Humanoid", "450#felsoul#"};
		{ 5, 1008017, "", "=q5=Legion's Lexicon", "2500#felsoul#"};
		{ 7, 409, "", "=q5=Insignia of the Burning Legion", "200#felsoul#"};
		{ 8, 101428, "", "=q5=Greater Insignia of the Burning Legion", "2000#felsoul#"};
		{ 16, 101255, "", "=q5=Felforged Reins of the Illidari Felstalker", "250#felsoul#"};
		{ 18, 1008018, "", "=q1=Small Brown Pouch", "1#felsoul#"};
		{ 19, 1008019, "", "=q1=Brown Leather Satchel", "5#felsoul#"};
		{ 20, 1008023, "", "=q1=Large Brown Sack", "25#felsoul#"};
		{ 21, 1008020, "", "=q1=Huge Brown Sack", "50#felsoul#"};
		{ 22, 1008025, "", "=q1=Runecloth Bag", "75#felsoul#"};
		{ 23, 1008022, "", "=q2=Traveler's Backpack", "100#felsoul#"};
	};

	AtlasLoot_Data["FelHeirloom"] = {
		{ 1, 492672, "", "=q5=Magtheridon's Felforged Crown", "2550#felsoul#"};
		{ 2, 492186, "", "=q5=Magtheridon's Felforged Spaulders", "2550#felsoul#"};
		{ 3, 492194, "", "=q5=Magtheridon's Felforged Carapace", "4450#felsoul#"};
		{ 4, 492191, "", "=q5=Magtheridon's Felforged Waistguard", "2280#felsoul#"};
		{ 5, 492195, "", "=q5=Magtheridon's Felforged Leggaurds", "4450#felsoul#"};
		{ 6, 492192, "", "=q5=Magtheridon's Felforged Sabatons", "2550#felsoul#"};
		{ 7, 492189, "", "=q5=Magtheridon's Felforged Bracers", "2280#felsoul#"};
		{ 8, 492190, "", "=q5=Magtheridon's Felforged Gauntlets", "4550#felsoul#"};
		{ 9, 492193, "", "=q5=Magtheridon's Felforged Cloak", "2280#felsoul#"};
		{ 16, 494213, "", "=q5=Archimonde's Felforged Crown", "2550#felsoul#"};
		{ 17, 492286, "", "=q5=Archimonde's Felforged Pauldron", "2550#felsoul#"};
		{ 18, 492294, "", "=q5=Archimonde's Felforged Carapace", "4450#felsoul#"};
		{ 19, 492291, "", "=q5=Archimonde's Felforged Waistband", "2280#felsoul#"};
		{ 20, 492295, "", "=q5=Archimonde's Felforged Leggings", "4450#felsoul#"};
		{ 21, 492292, "", "=q5=Archimonde's Felforged Boots", "25500#felsoul#"};
		{ 22, 492289, "", "=q5=Archimonde's Felforged Bracer", "2280#felsoul#"};
		{ 23, 492290, "", "=q5=Archimonde's Felforged Gauntlet", "4550#felsoul#"};
		{ 24, 492293, "", "=q5=Archimonde's Felforged Drape", "2280#felsoul#"};
	};

	AtlasLoot_Data["LegionCrest"] = {

	};
	