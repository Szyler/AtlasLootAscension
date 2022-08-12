local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

--		{ #, "MOUNTMENU", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Mounts"], ""};
--		{ #, "PETMENU", "INV_Box_PetCarrier_01", "=ds="..AL["Vanity Pets"], ""};
--		{ #, "Tabards3", "INV_Shirt_GuildTabard_01", "=ds="..AL["Tabards"], ""};
--		{ #, "CardGame1", "INV_Misc_Ticket_Tarot_Madness", "=ds="..AL["Upper Deck Card Game Items"], ""};
--		{ #, "PVPMENU", "INV_Axe_02", "=ds="..AL["PvP Rewards"], ""};

		AtlasLoot_SubMenus["CollectionsCLASSIC"] = {
			Module = "AtlasLootOriginalWoW";
			{ "", "ClassicSets"};
			{ "", "WorldEpicsCLASSIC"};
			{ "", "ZGSets"};
			{ "", "AQ20Sets"};
			{ "", "T0"};
			{ "", "T1"};
			{ "", "T2"};
			{ "", "T2.5"};
			{ "", "T3"};
		};

		AtlasLoot_SubMenus["CollectionsTBC"] = {
			Module = "AtlasLootBurningCrusade";
			{ "", "DS3"};
			{ "", "WorldEpicsTBC"};
			{ "", "TBCSets"};
			{ AL["Badge of Justice Rewards"], "BadgeShatt", "Header"};
			{ "", "BadgeShatt"};
			{ "", "BadgeSunwell"};
			{ "Tier Sets", "T4", "Header"};
			{ "", "T4"};
			{ "", "T5"};
			{ "", "T6"};
		};

	AtlasLoot_Data["SETMENUWRATH"] = {
		{ 1, "EMBLEMOFFROSTMENU", "inv_misc_frostemblem_01", "=ds="..AL["Emblem of Frost Rewards"], "=q5="..AL["Wrath of the Lich King"]};
		{ 2, "EMBLEMOFTRIUMPHMENU", "spell_holy_summonchampion", "=ds="..AL["Emblem of Triumph Rewards"], "=q5="..AL["Wrath of the Lich King"]};
		{ 3, "EMBLEMOFCONQUESTMENU", "Spell_Holy_ChampionsGrace", "=ds="..AL["Emblem of Conquest Rewards"], "=q5="..AL["Wrath of the Lich King"]};
		{ 4, "EMBLEMOFVALORMENU", "Spell_Holy_ProclaimChampion_02", "=ds="..AL["Emblem of Valor Rewards"], "=q5="..AL["Wrath of the Lich King"]};
		{ 5, "EMBLEMOFHEROISMMENU", "Spell_Holy_ProclaimChampion", "=ds="..AL["Emblem of Heroism Rewards"], "=q5="..AL["Wrath of the Lich King"]};
		{ 7, "Heirloom", "INV_Sword_43", "=ds="..AL["Heirloom"], ""};
		{ 8, "WorldEpicsWrath", "INV_Sword_109", "=ds=".."World Epics", ""};
		{ 9, "SETSWRATHOFLICHKING", "inv_misc_monsterscales_15", "=ds="..AL["Wrath of the Lich King Sets"], ""};
		{ 10, "Legendaries", "INV_Staff_Medivh", "=ds="..AL["Legendary Items"], ""};
		{ 16, "T7T8SET", "INV_Chest_Chain_15", "=ds="..AL["Tier 7/8 Sets"], "=q5="..AL["10/25 Man"]};
		{ 17, "T9SET", "inv_gauntlets_80", "=ds="..AL["Tier 9 Sets"], "=q5="..AL["10/25 Man"]};
		{ 18, "T10SET", "INV_Chest_Chain_15", "=ds="..AL["Tier 10 Sets"], "=q5="..AL["10/25 Man"]};
		Prev = "SETMENUTBC";
		Next = "SETMENUCLASSIC";
		Submenu = "Expansion";
	};

	AtlasLoot_Data["70TOKENMENU"] = {
		{ 2, "HardModeCloth", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Cloth"], ""};
		{ 3, "HardModeMail", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Mail"], ""};
		{ 4, "HardModeResist", "Spell_Holy_ChampionsBond", "=ds="..AL["Fire Resistance Gear"], ""};
		{ 6, "HardModeRelic", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Relic"], ""};
		{ 8, "HardModeWeapons", "Spell_Holy_ChampionsBond", "=ds="..AL["Weapons"], ""};
		{ 17, "HardModeLeather", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Leather"], ""};
		{ 18, "HardModePlate", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Plate"], ""};
		{ 19, "HardModeCloaks", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Back"], ""};
		{ 21, "HardModeArena", "Spell_Holy_ChampionsBond", "=ds="..AL["PvP Rewards"], ""};
		{ 23, "HardModeAccessories", "Spell_Holy_ChampionsBond", "=ds="..AL["Accessories"], ""};
		Back = "SETMENUTBC";
	};

	AtlasLoot_Data["EMBLEMOFHEROISMMENU"] = {
		{ 2, "EmblemofHeroism", "Spell_Holy_ProclaimChampion", "=ds="..BabbleInventory["Armor"].." & "..AL["Weapons"], ""};
		{ 3, "EmblemofHeroism3", "Spell_Holy_ProclaimChampion", "=ds="..BabbleInventory["Miscellaneous"], ""};
		{ 4, "LEVEL80PVPSETS", "Spell_Holy_ProclaimChampion", "=ds="..AL["Level 80 PvP Sets"], "" };
		{ 17, "EmblemofHeroism2", "Spell_Holy_ProclaimChampion", "=ds="..AL["Accessories"], ""};
		{ 18, "EmblemofHeroism4", "Spell_Holy_ProclaimChampion", "=ds="..AL["Heirloom"], ""};
		Back = "SETMENUWRATH";
	};

	AtlasLoot_Data["EMBLEMOFCONQUESTMENU"] = {
		{ 2, "EmblemofConquest1", "Spell_Holy_ChampionsGrace", "=ds="..AL["Vendor"], ""};
		{ 17, "LEVEL80PVPSETS", "Spell_Holy_ChampionsGrace", "=ds="..AL["Level 80 PvP Sets"], "" };
		Back = "SETMENUWRATH";
	};

	AtlasLoot_Data["EMBLEMOFVALORMENU"] = {
		{ 2, "EmblemofValor", "Spell_Holy_ProclaimChampion_02", "=ds="..BabbleInventory["Armor"], ""};
		{ 3, "LEVEL80PVPSETS", "Spell_Holy_ProclaimChampion_02", "=ds="..AL["Level 80 PvP Sets"], "" };
		{ 17, "EmblemofValor2", "Spell_Holy_ProclaimChampion_02", "=ds="..AL["Accessories"], ""};
		Back = "SETMENUWRATH";
	};

	AtlasLoot_Data["EMBLEMOFTRIUMPHMENU"] = {
		{ 2, "EmblemofTriumph1_A", "spell_holy_summonchampion", "=ds="..BabbleInventory["Armor"], ""};
		{ 3, "EmblemofTriumph2", "spell_holy_summonchampion", "=ds="..AL["Accessories"].." & "..AL["Weapons"], ""};
		{ 17, "LEVEL80PVPSETS", "spell_holy_summonchampion", "=ds="..AL["Level 80 PvP Sets"], "" };
		{ 18, "T9SET", "spell_holy_summonchampion", "=ds="..AL["Tier 9 Sets"], "=q5="..AL["10/25 Man"]};
		Back = "SETMENUWRATH";
	};

	AtlasLoot_Data["EMBLEMOFFROSTMENU"] = {
		{ 2, "EmblemofFrost", "inv_misc_frostemblem_01", "=ds="..BabbleInventory["Armor"].." & "..AL["Weapons"], ""};
		{ 17, "T10SET", "inv_misc_frostemblem_01", "=ds="..AL["Tier 10 Sets"], "=q5="..AL["10/25 Man"]};
		Back = "SETMENUWRATH";
	};

	AtlasLoot_Data["MOUNTMENU"] = {
		{ 2, "MountsAlliance1", "achievement_pvp_a_16", "=ds="..AL["Alliance Mounts"], ""};
		{ 3, "MountsFaction1", "ability_mount_warhippogryph", "=ds="..AL["Neutral Faction Mounts"], ""};
		{ 4, "MountsRare1", "ability_mount_drake_bronze", "=ds="..AL["Rare Mounts"], ""};
		{ 5, "MountsEvent1", "achievement_halloween_witch_01", "=ds="..AL["World Events"], ""};
		{ 17, "MountsHorde1", "achievement_pvp_h_16", "=ds="..AL["Horde Mounts"], ""};
		{ 18, "MountsPvP1", "ability_mount_netherdrakeelite", "=ds="..AL["PvP Mounts"], ""};
		{ 19, "MountsCraftQuestPromotion1", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Quest"].." / "..AL["Promotional"].." / "..AL["Crafted Mounts"], ""};
		Back = "SETMENU";
		Submenu = "Expansion";
	};

	AtlasLoot_Data["PETMENU"] = {
		{ 2, "PetsMerchant1", "spell_nature_polymorph", "=ds="..AL["Merchant Sold"], ""};
		{ 3, "PetsRare1", "spell_shaman_hex", "=ds="..AL["Rare"], ""};
		{ 4, "PetsPromotional1", "inv_netherwhelp", "=ds="..AL["Promotional"], ""};
		{ 5, "PetsAccessories1", "inv_misc_petbiscuit_01", "=ds="..AL["Accessories"], ""};
		{ 17, "PetsQuestCrafted1", "inv_drink_19", "=ds="..AL["Quest"].." / "..AL["Crafted"], ""};
		{ 18, "PetsEvent1", "inv_pet_egbert", "=ds="..AL["World Events"], ""};
		{ 19, "PetsPetStore1", "INV_Misc_Coin_01", "=ds="..AL["Pet Store"], ""};
		Back = "SETMENU";
		Submenu = "Expansion";
	};

	AtlasLoot_Data["SETSCLASSIC"] = {
		{ 2, "VWOWSets1", "INV_Pants_12", "=ds="..AL["Defias Leather"], "=q5="..BabbleZone["The Deadmines"]};
		{ 3, "VWOWSets1", "INV_Shirt_16", "=ds="..AL["Embrace of the Viper"], "=q5="..BabbleZone["Wailing Caverns"]};
		{ 4, "VWOWSets1", "INV_Gauntlets_19", "=ds="..AL["Chain of the Scarlet Crusade"], "=q5="..BabbleZone["Scarlet Monastery"]};
		{ 5, "VWOWSets1", "INV_Helmet_01", "=ds="..AL["The Gladiator"], "=q5="..BabbleZone["Blackrock Depths"]};
		{ 6, "VWOWSets2", "INV_Boots_Cloth_05", "=ds="..AL["Ironweave Battlesuit"], "=q5="..AL["Various Locations"]};
		{ 7, "VWOWSets2", "INV_Boots_02", "=ds="..AL["The Postmaster"], "=q5="..BabbleZone["Stratholme"]};
		{ 8, "VWOWScholo", "INV_Shoulder_02", "=ds="..AL["Necropile Raiment"], "=q5="..BabbleZone["Scholomance"]};
		{ 9, "VWOWScholo", "INV_Belt_16", "=ds="..AL["Cadaverous Garb"], "=q5="..BabbleZone["Scholomance"]};
		{ 10, "VWOWScholo", "INV_Gauntlets_26", "=ds="..AL["Bloodmail Regalia"], "=q5="..BabbleZone["Scholomance"]};
		{ 11, "VWOWScholo", "INV_Belt_12", "=ds="..AL["Deathbone Guardian"], "=q5="..BabbleZone["Scholomance"]};
		{ 12, "VWOWSets3", "INV_Weapon_ShortBlade_16", "=ds="..AL["Spider's Kiss"], "=q5="..BabbleZone["Lower Blackrock Spire"]};
		{ 13, "VWOWSets3", "INV_Sword_43", "=ds="..AL["Dal'Rend's Arms"], "=q5="..BabbleZone["Upper Blackrock Spire"]};
		{ 17, "VWOWSets3", "INV_Misc_MonsterScales_15", "=ds="..AL["Shard of the Gods"], "=q5="..AL["Various Locations"]};
		{ 18, "VWOWSets3", "INV_Misc_MonsterClaw_04", "=ds="..AL["Spirit of Eskhandar"], "=q5="..AL["Various Locations"]};
		{ 20, "VWOWZulGurub", "INV_Weapon_Hand_01", "=ds="..AL["Misc Zul'Gurub Sets"], ""};
		Back = "SETMENUCLASSIC";
	};

	AtlasLoot_Data["SETSBURNINGCURSADE"] = {
		{ 2, "TBCSets", "INV_Sword_76", "=ds="..AL["Latro's Flurry"], "=q5="..AL["World Drop"]};
		{ 3, "TBCSets", "INV_Jewelry_Necklace_36", "=ds="..AL["The Twin Stars"], "=q5="..AL["World Drop"]};
		{ 4, "TBCSets", "INV_Weapon_Hand_14", "=ds="..AL["The Fists of Fury"], "=q5="..BabbleZone["Hyjal Summit"]};
		{ 5, "TBCSets", "INV_Weapon_Glave_01", "=ds="..AL["The Twin Blades of Azzinoth"], "=q5="..BabbleZone["Black Temple"]};
		Back = "SETMENUTBC";
	};

	AtlasLoot_Data["SETSWRATHOFLICHKING"] = {
		{ 2, "WOTLKSets", "inv_jewelry_necklace_27", "=ds="..AL["Raine's Revenge"], "=q5="..AL["World Drop"]};
		{ 3, "WOTLKSets", "inv_misc_monsterscales_15", "=ds="..AL["Purified Shard of the Gods"], "=q5="..BabbleZone["Onyxia's Lair"]};
		{ 4, "WOTLKSets", "inv_misc_monsterscales_15", "=ds="..AL["Shiny Shard of the Gods"], "=q5="..BabbleZone["Onyxia's Lair"]};
		Back = "SETMENUWRATH";
	};

	AtlasLoot_Data["T0SET"] = {
		{ 3, "T0Druid", "Spell_Nature_Regeneration", "=ds=".."Druid", ""};
		{ 4, "T0Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 5, "T0Priest", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], ""};
		{ 6, "T0Shaman", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], ""};
		{ 7, "T0Warrior", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
		{ 18, "T0Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 19, "T0Paladin", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], ""};
		{ 20, "T0Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 21, "T0Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		Back = "SETMENUCLASSIC";
	};

	AtlasLoot_Data["DS3SET"] = {
		{ 2, "DS3Cloth", "Spell_Holy_InnerFire", "=ds="..AL["Hallowed Raiment"], "=q5="..BabbleInventory["Cloth"]};
		{ 3, "DS3Cloth", "INV_Elemental_Mote_Nether", "=ds="..AL["Mana-Etched Regalia"], "=q5="..BabbleInventory["Cloth"]};
		{ 5, "DS3Leather", "Ability_Rogue_SinisterCalling", "=ds="..AL["Assassination Armor"], "=q5="..BabbleInventory["Leather"]};
		{ 6, "DS3Leather", "Ability_Hunter_RapidKilling", "=ds="..AL["Wastewalker Armor"], "=q5="..BabbleInventory["Leather"]};
		{ 8, "DS3Mail", "Ability_Hunter_Pet_Wolf", "=ds="..AL["Beast Lord Armor"], "=q5="..BabbleInventory["Mail"]};
		{ 9, "DS3Mail", "INV_Helmet_70", "=ds="..AL["Tidefury Raiment"], "=q5="..BabbleInventory["Mail"]};
		{ 11, "DS3Plate", "Spell_Fire_EnchantWeapon", "=ds="..AL["Bold Armor"], "=q5="..BabbleInventory["Plate"]};
		{ 12, "DS3Plate", "INV_Hammer_02", "=ds="..AL["Righteous Armor"], "=q5="..BabbleInventory["Plate"]};
		{ 17, "DS3Cloth", "Ability_Creature_Cursed_04", "=ds="..AL["Incanter's Regalia"], "=q5="..BabbleInventory["Cloth"]};
		{ 18, "DS3Cloth", "Ability_Creature_Cursed_03", "=ds="..AL["Oblivion Raiment"], "=q5="..BabbleInventory["Cloth"]};
		{ 20, "DS3Leather", "Spell_Holy_SealOfRighteousness", "=ds="..AL["Moonglade Raiment"], "=q5="..BabbleInventory["Leather"]};
		{ 23, "DS3Mail", "Ability_FiegnDead", "=ds="..AL["Desolation Battlegear"], "=q5="..BabbleInventory["Mail"]};
		{ 26, "DS3Plate", "INV_Helmet_08", "=ds="..AL["Doomplate Battlegear"], "=q5="..BabbleInventory["Plate"]};
		Back = "SETMENUTBC";
		Next = "T4SET";
	};

	AtlasLoot_Data["T1SET"] = {
		{ 1, "T1Druid", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Tier 1 Sets"]};
		{ 3, "T1Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], "=q5="..AL["Tier 1 Sets"]};
		{ 5, "T1Priest", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Tier 1 Sets"]};
		{ 7, "T1Shaman", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Tier 1 Sets"]};
		{ 9, "T1Warrior", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Tier 1 Sets"]};
		{ 16, "T1Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], "=q5="..AL["Tier 1 Sets"]};
		{ 18, "T1Paladin", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Tier 1 Sets"]};
		{ 20, "T1Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], "=q5="..AL["Tier 1 Sets"]};
		{ 22, "T1Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], "=q5="..AL["Tier 1 Sets"]};
		{ 10, "T1DPSWarrior", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Tier 1 Sets"]};
		Prev = "T3SET";
		Next = "T2SET";
		Back = "SETMENUCLASSIC";
	};

	AtlasLoot_Data["T2SET"] = {
		{ 1, "T2Druid", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Tier 2 Sets"]};
		{ 3, "T2Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], "=q5="..AL["Tier 2 Sets"]};
		{ 5, "T2Priest", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Tier 2 Sets"]};
		{ 7, "T2Shaman", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Tier 2 Sets"]};
		{ 9, "T2Warrior", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Tier 2 Sets"]};
		{ 16, "T2Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], "=q5="..AL["Tier 2 Sets"]};
		{ 18, "T2Paladin", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Tier 2 Sets"]};
		{ 20, "T2Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], "=q5="..AL["Tier 2 Sets"]};
		{ 22, "T2Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], "=q5="..AL["Tier 2 Sets"]};
		{ 10, "T2DPSWarrior", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Tier 2 Sets"]};
		Prev = "T1SET";
		Next = "T3SET";
		Back = "SETMENUCLASSIC";
	};

	AtlasLoot_Data["T3SET"] = {
		{ 1, "T3Druid", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Tier 3 Sets"]};
		{ 3, "T3Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], "=q5="..AL["Tier 3 Sets"]};
		{ 5, "T3Priest", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Tier 3 Sets"]};
		{ 7, "T3Shaman", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Tier 3 Sets"]};
		{ 9, "T3Warrior", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Tier 3 Sets"]};
		{ 16, "T3Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], "=q5="..AL["Tier 3 Sets"]};
		{ 18, "T3Paladin", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Tier 3 Sets"]};
		{ 20, "T3Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], "=q5="..AL["Tier 3 Sets"]};
		{ 22, "T3Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], "=q5="..AL["Tier 3 Sets"]};
		{ 10, "T3DPSWarrior", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Tier 3 Sets"]};
		Prev = "T2SET";
		Next = "T1SET";
		Back = "SETMENUCLASSIC";
	};

	AtlasLoot_Data["T4SET"] = {	
		{ 2, "T4DruidBalance", "Spell_Nature_InsectSwarm", "=ds=".."Druid", "=q5="..AL["Balance"]};
		{ 3, "T4DruidFeral", "Ability_Druid_Maul", "=ds=".."Druid", "=q5="..AL["Feral"]};
		{ 4, "T4DruidRestoration", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Restoration"]};
		{ 6, "T4Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 8, "T4Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 10, "T4PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 11, "T4PaladinProtection", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
		{ 12, "T4PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
		{ 17, "T4PriestHoly", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "T4PriestShadow", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
		{ 20, "T4Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 22, "T4ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "T4ShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "T4ShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
		{ 26, "T4Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		{ 28, "T4WarriorFury", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
		{ 29, "T4WarriorProtection", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
		Back = "SETMENUTBC";
		Prev = "DS3SET";
		Next = "T5SET";
	};	
	
	AtlasLoot_Data["T5SET"] = {	
		{ 2, "T5DruidBalance", "Spell_Nature_InsectSwarm", "=ds=".."Druid", "=q5="..AL["Balance"]};
		{ 3, "T5DruidFeral", "Ability_Druid_Maul", "=ds=".."Druid", "=q5="..AL["Feral"]};
		{ 4, "T5DruidRestoration", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Restoration"]};
		{ 6, "T5Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 8, "T5Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 10, "T5PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 11, "T5PaladinProtection", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
		{ 12, "T5PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
		{ 17, "T5PriestHoly", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "T5PriestShadow", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
		{ 20, "T5Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 22, "T5ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "T5ShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "T5ShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
		{ 26, "T5Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		{ 28, "T5WarriorFury", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
		{ 29, "T5WarriorProtection", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
		Back = "SETMENUTBC";
		Prev = "T4SET";
		Next = "T6SET";
	};	
	
	AtlasLoot_Data["T6SET"] = {	
		{ 2, "T6DruidBalance", "Spell_Nature_InsectSwarm", "=ds=".."Druid", "=q5="..AL["Balance"]};
		{ 3, "T6DruidFeral", "Ability_Druid_Maul", "=ds=".."Druid", "=q5="..AL["Feral"]};
		{ 4, "T6DruidRestoration", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Restoration"]};
		{ 6, "T6Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 8, "T6Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 10, "T6PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 11, "T6PaladinProtection", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
		{ 12, "T6PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
		{ 17, "T6PriestHoly", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "T6PriestShadow", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
		{ 20, "T6Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 22, "T6ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "T6ShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "T6ShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
		{ 26, "T6Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		{ 28, "T6WarriorFury", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
		{ 29, "T6WarriorProtection", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
		Back = "SETMENUTBC";
		Prev = "T5SET";
	};	

	AtlasLoot_Data["T7T8SET"] = {
		{ 2, "NaxxDeathKnightDPS", "Spell_Deathknight_DeathStrike", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
		{ 3, "NaxxDeathKnightTank", "Spell_Deathknight_DeathStrike", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
		{ 5, "NaxxDruidBalance", "Spell_Nature_InsectSwarm", "=ds=".."Druid", "=q5="..AL["Balance"]};
		{ 6, "NaxxDruidFeral", "Ability_Druid_Maul", "=ds=".."Druid", "=q5="..AL["Feral"]};
		{ 7, "NaxxDruidRestoration", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Restoration"]};
		{ 9, "NaxxHunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 11, "NaxxMage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 13, "NaxxPaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 14, "NaxxPaladinProtection", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
		{ 15, "NaxxPaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
		{ 17, "NaxxPriestHoly", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "NaxxPriestShadow", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
		{ 20, "NaxxRogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 22, "NaxxShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "NaxxShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "NaxxShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
		{ 26, "NaxxWarlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		{ 28, "NaxxWarriorFury", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
		{ 29, "NaxxWarriorProtection", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
		Back = "SETMENUWRATH";
		Next = "T9SET";
	};

	AtlasLoot_Data["T9SET"] = {
		{ 2, "T9DeathKnightDPS_A", "Spell_Deathknight_DeathStrike", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
		{ 3, "T9DeathKnightTank_A", "Spell_Deathknight_DeathStrike", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
		{ 5, "T9DruidBalance_A", "Spell_Nature_InsectSwarm", "=ds=".."Druid", "=q5="..AL["Balance"]};
		{ 6, "T9DruidFeral_A", "Ability_Druid_Maul", "=ds=".."Druid", "=q5="..AL["Feral"]};
		{ 7, "T9DruidRestoration_A", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Restoration"]};
		{ 9, "T9Hunter_A", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 11, "T9Mage_A", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 13, "T9PaladinHoly_A", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 14, "T9PaladinProtection_A", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
		{ 15, "T9PaladinRetribution_A", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
		{ 17, "T9PriestHoly_A", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "T9PriestShadow_A", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
		{ 20, "T9Rogue_A", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 22, "T9ShamanElemental_A", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "T9ShamanEnhancement_A", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "T9ShamanRestoration_A", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
		{ 26, "T9Warlock_A", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		{ 28, "T9WarriorFury_A", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
		{ 29, "T9WarriorProtection_A", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
		Back = "SETMENUWRATH";
		Prev = "T7T8SET";
		Next = "T10SET";
	};

	AtlasLoot_Data["T10SET"] = {
		{ 2, "T10DeathKnightDPS", "Spell_Deathknight_DeathStrike", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
		{ 3, "T10DeathKnightTank", "Spell_Deathknight_DeathStrike", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
		{ 5, "T10DruidBalance", "Spell_Nature_InsectSwarm", "=ds=".."Druid", "=q5="..AL["Balance"]};
		{ 6, "T10DruidFeral", "Ability_Druid_Maul", "=ds=".."Druid", "=q5="..AL["Feral"]};
		{ 7, "T10DruidRestoration", "Spell_Nature_Regeneration", "=ds=".."Druid", "=q5="..AL["Restoration"]};
		{ 9, "T10Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 11, "T10Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 13, "T10PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 14, "T10PaladinProtection", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
		{ 15, "T10PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
		{ 17, "T10PriestHoly", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "T10PriestShadow", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
		{ 20, "T10Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 22, "T10ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "T10ShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "T10ShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
		{ 26, "T10Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		{ 28, "T10WarriorFury", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
		{ 29, "T10WarriorProtection", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
		Back = "SETMENUWRATH";
		Prev = "T9SET";
	};