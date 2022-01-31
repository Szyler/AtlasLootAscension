local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

-- Index
--- Dungeons & Raids
---- Keys
---- Auchindoun: Auchenai Crypts
---- Auchindoun: Mana-Tombs
---- Auchindoun: Sethekk Halls
---- Auchindoun: Shadow Labyrinth
---- Black Temple
---- Caverns of Time: Old Hillsbrad Foothills
---- Caverns of Time: The Black Morass
---- Caverns of Time: Hyjal Summit
---- Coilfang Reservoir: The Slave Pens
---- Coilfang Reservoir: The Steamvault
---- Coilfang Reservoir: The Underbog
---- Coilfang Reservoir: Serpentshrine Cavern
---- Gruul's Lair
---- Hellfire Citadel: Hellfire Ramparts
---- Hellfire Citadel: The Blood Furnace
---- Hellfire Citadel: The Shattered Halls
---- Hellfire Citadel: Magtheridon's Lair
---- Karazhan
---- Sunwell Isle: Magister's Terrace
---- Sunwell Isle: Sunwell Plateau
---- Tempest Keep: The Arcatraz
---- Tempest Keep: The Botanica
---- Tempest Keep: The Mechanar
---- Tempest Keep: The Eye
---- Zul'Aman
--- Factions
---- Ashtongue Deathsworn
---- Cenarion Expedition
---- Honor Hold
---- Keepers of Time
---- Kurenai
---- Lower City
---- Netherwing
---- Ogri'la
---- Sha'tari Skyguard
---- Shattered Sun Offensive
---- Sporeggar
---- The Aldor
---- The Consortium
---- The Mag'har
---- The Scale of the Sands
---- The Scryers
---- The Sha'tar
---- The Violet Eye
---- Thrallmar
---- Tranquillien
---- Misc
--- PvP
---- World PvP - Hellfire Peninsula: Hellfire Fortifications
---- World PvP - Nagrand: Halaa
---- World PvP - Terokkar Forest: Bone Wastes
---- World PvP - Zangarmarsh: Twin Spire Ruins
---- Rep-PvP Level 70 - Armor Sets
---- PvP Level 70 - Accessories
---- PvP Level 70 - Non Set Epics
---- Arena - Armor Sets
---- Arena Season 2 - Weapons
---- Arena Season 3 - Weapons
---- Arena Season 4 - Weapons
--- Sets & Collections
---- Dungeon 3 Sets (D3)
---- Tier 4/Tier 5/Tier 6
---- The Burning Crusade Sets
---- Badge of Justice Rewards
---- BoE World Epics
--- World Bosses

	------------------------
	--- Dungeons & Raids ---
	------------------------


	--------------------
	--- Black Temple ---
	--------------------

	AtlasLoot_Data["BTNajentus"] = {
		{ 1, 32239, "", "=q4=Slippers of the Seacaller", "=ds=#s12#, #a1#", "", "15%"};
		{ 2, 32240, "", "=q4=Guise of the Tidal Lurker", "=ds=#s1#, #a2#", "", "16%"};
		{ 3, 32377, "", "=q4=Mantle of Darkness", "=ds=#s3#, #a2#", "", "15%"};
		{ 4, 32241, "", "=q4=Helm of Soothing Currents", "=ds=#s1#, #a3#", "", "10%"};
		{ 5, 32234, "", "=q4=Fists of Mukoa", "=ds=#s9#, #a3#", "", "16%"};
		{ 6, 32242, "", "=q4=Boots of Oceanic Fury", "=ds=#s12#, #a3#", "", "6%"};
		{ 7, 32232, "", "=q4=Eternium Shell Bracers", "=ds=#s8#, #a4#", "", "16%"};
		{ 8, 32243, "", "=q4=Pearl Inlaid Boots", "=ds=#s12#, #a4#", "", "10%"};
		{ 9, 32245, "", "=q4=Tide-stomper's Greaves", "=ds=#s12#, #a4#", "", "7%"};
		{ 16, 32238, "", "=q4=Ring of Calming Waves", "=ds=#s13#", "", "16%"};
		{ 17, 32247, "", "=q4=Ring of Captured Storms", "=ds=#s13#", "", "16%"};
		{ 18, 32237, "", "=q4=The Maelstrom's Fury", "=ds=#h3#, #w4#", "", "15%"};
		{ 19, 32236, "", "=q4=Rising Tide", "=ds=#h1#, #w1#", "", "16%"};
		{ 20, 32248, "", "=q4=Halberd of Desolation", "=ds=#w7#", "", "16%"};
		{ 22, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Next = "BTSupremus";
	};

	AtlasLoot_Data["BTSupremus"] = {
		{ 1, 32256, "", "=q4=Waistwrap of Infinity", "=ds=#s10#, #a1#", "", "16%"};
		{ 2, 32252, "", "=q4=Nether Shadow Tunic", "=ds=#s5#, #a2#", "", "14%"};
		{ 3, 32259, "", "=q4=Bands of the Coming Storm", "=ds=#s8#, #a3#", "", "6%"};
		{ 4, 32251, "", "=q4=Wraps of Precise Flight", "=ds=#s8#, #a3#", "", "15%"};
		{ 5, 32258, "", "=q4=Naturalist's Preserving Cinch", "=ds=#s10#, #a3#", "", "9%"};
		{ 6, 32250, "", "=q4=Pauldrons of Abyssal Fury", "=ds=#s3#, #a4#", "", "16%"};
		{ 8, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 32260, "", "=q4=Choker of Endless Nightmares", "=ds=#s2#", "", "17%"};
		{ 17, 32261, "", "=q4=Band of the Abyssal Lord", "=ds=#s13#", "", "14%"};
		{ 18, 32257, "", "=q4=Idol of the White Stag", "=ds=#s16#, #w14#", "", "15%"};
		{ 19, 32254, "", "=q4=The Brutalizer", "=ds=#h1#, #w1#", "", "15%"};
		{ 20, 32262, "", "=q4=Syphon of the Nathrezim", "=ds=#h1#, #w6#", "", "16%"};
		{ 21, 32255, "", "=q4=Felstone Bulwark", "=ds=#w8#", "", "15%"};
		{ 22, 32253, "", "=q4=Legionkiller", "=ds=#w3#", "", "16%"};
		Prev = "BTNajentus";
		Next = "BTAkama";
	};

	AtlasLoot_Data["BTAkama"] = {
		{ 1, 32273, "", "=q4=Amice of Brilliant Light", "=ds=#s3#, #a1#", "", "16%"};
		{ 2, 32270, "", "=q4=Focused Mana Bindings", "=ds=#s8#, #a1#", "", "15%"};
		{ 3, 32513, "", "=q4=Wristbands of Divine Influence", "=ds=#s8#, #a1#", "", "16%"};
		{ 4, 32265, "", "=q4=Shadow-walker's Cord", "=ds=#s10#, #a2#", "", "16%"};
		{ 5, 32271, "", "=q4=Kilt of Immortal Nature", "=ds=#s11#, #a2#", "", "14%"};
		{ 6, 32264, "", "=q4=Shoulders of the Hidden Predator", "=ds=#s3#, #a3#", "", "16%"};
		{ 7, 32275, "", "=q4=Spiritwalker Gauntlets", "=ds=#s9#, #a3#", "", "9%"};
		{ 8, 32276, "", "=q4=Flashfire Girdle", "=ds=#s10#, #a3#", "", "5%"};
		{ 9, 32279, "", "=q4=The Seeker's Wristguards", "=ds=#s8#, #a4#", "", "8%"};
		{ 10, 32278, "", "=q4=Grips of Silent Justice", "=ds=#s9#, #a4#", "", "15%"};
		{ 11, 32263, "", "=q4=Praetorian's Legguards", "=ds=#s11#, #a4#", "", "14%"};
		{ 12, 32268, "", "=q4=Myrmidon's Treads", "=ds=#s12#, #a4#", "", "16%"};
		{ 16, 32266, "", "=q4=Ring of Deceitful Intent", "=ds=#s13#", "", "16%"};
		{ 17, 32361, "", "=q4=Blind-Seers Icon", "=ds=#s15#", "", "15%"};
		{ 19, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "BTSupremus";
		Next = "BTGorefiend";
	};

	AtlasLoot_Data["BTGorefiend"] = {
		{ 1, 32323, "", "=q4=Shadowmoon Destroyer's Drape", "=ds=#s4#", "", "17%"};
		{ 2, 32329, "", "=q4=Cowl of Benevolence", "=ds=#s1#, #a1#", "", "17%"};
		{ 3, 32327, "", "=q4=Robe of the Shadow Council", "=ds=#s5#, #a1#", "", "15%"};
		{ 4, 32324, "", "=q4=Insidious Bands", "=ds=#s8#, #a2#", "", "17%"};
		{ 5, 32328, "", "=q4=Botanist's Gloves of Growth", "=ds=#s9#, #a2#", "", "17%"};
		{ 6, 32510, "", "=q4=Softstep Boots of Tracking", "=ds=#s12#, #a3#", "", "15%"};
		{ 7, 32280, "", "=q4=Gauntlets of Enforcement", "=ds=#s9#, #a4#", "", "15%"};
		{ 8, 32512, "", "=q4=Girdle of Lordaeron's Fallen", "=ds=#s10#, #a4#", "", "19%"};
		{ 16, 32330, "", "=q4=Totem of Ancestral Guidance", "=ds=#s16#, #w15#", "", "13%"};
		{ 17, 32348, "", "=q4=Soul Cleaver", "=ds=#h2#, #w1#", "", "19%"};
		{ 18, 32326, "", "=q4=Twisted Blades of Zarak", "=ds=#w11#", "", "11%"};
		{ 19, 32325, "", "=q4=Rifle of the Stoic Guardian", "=ds=#w5#", "", "14%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "BTAkama";
		Next = "BTBloodboil";
	};

	AtlasLoot_Data["BTBloodboil"] = {
		{ 1, 32337, "", "=q4=Shroud of Forgiveness", "=ds=#s4#", "", "16%"};
		{ 2, 32338, "", "=q4=Blood-cursed Shoulderpads", "=ds=#s3#, #a1#", "", "15%"};
		{ 3, 32340, "", "=q4=Garments of Temperance", "=ds=#s5#, #a1#", "", "15%"};
		{ 4, 32339, "", "=q4=Belt of Primal Majesty", "=ds=#s10#, #a2#", "", "14%"};
		{ 5, 32334, "", "=q4=Vest of Mounting Assault", "=ds=#s5#, #a3#", "", "15%"};
		{ 6, 32342, "", "=q4=Girdle of Mighty Resolve", "=ds=#s10#, #a4#", "", "8%"};
		{ 7, 32333, "", "=q4=Girdle of Stability", "=ds=#s10#, #a4#", "", "16%"};
		{ 8, 32341, "", "=q4=Leggings of Divine Retribution", "=ds=#s11#, #a4#", "", "14%"};
		{ 16, 32335, "", "=q4=Unstoppable Aggressor's Ring", "=ds=#s13#", "", "16%"};
		{ 17, 32501, "", "=q4=Shadowmoon Insignia", "=ds=#s14#", "", "15%"};
		{ 18, 32269, "", "=q4=Messenger of Fate", "=ds=#h1#, #w4#", "", "16%"};
		{ 19, 32344, "", "=q4=Staff of Immaculate Recovery", "=ds=#w9#", "", "15%"};
		{ 20, 32343, "", "=q4=Wand of Prismatic Focus", "=ds=#w12#", "", "14%"};
		{ 22, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "BTGorefiend";
		Next = "BTEssencofSouls";
	};

	AtlasLoot_Data["BTEssencofSouls"] = {
		{ 1, 32353, "", "=q4=Gloves of Unfailing Faith", "=ds=#s9#, #a1#", "", "17%"};
		{ 2, 32351, "", "=q4=Elunite Empowered Bracers", "=ds=#s8#, #a2#", "", "8%"};
		{ 3, 32347, "", "=q4=Grips of Damnation", "=ds=#s9#, #a2#", "", "16%"};
		{ 4, 32352, "", "=q4=Naturewarden's Treads", "=ds=#s12#, #a2#", "", "9%"};
		{ 5, 32517, "", "=q4=The Wavemender's Mantle", "=ds=#s3#, #a3#", "", "17%"};
		{ 6, 32346, "", "=q4=Boneweave Girdle", "=ds=#s10#, #a3#", "", "16%"};
		{ 7, 32354, "", "=q4=Crown of Empowered Fate", "=ds=#s1#, #a4#", "", "16%"};
		{ 8, 32345, "", "=q4=Dreadboots of the Legion", "=ds=#s12#, #a4#", "", "15%"};
		{ 16, 32349, "", "=q4=Translucent Spellthread Necklace", "=ds=#s2#", "", "16%"};
		{ 17, 32362, "", "=q4=Pendant of Titans", "=ds=#s2#", "", "15%"};
		{ 18, 32350, "", "=q4=Touch of Inspiration", "=ds=#s15#", "", "16%"};
		{ 19, 32332, "", "=q4=Torch of the Damned", "=ds=#h2#, #w6#", "", "17%"};
		{ 20, 32363, "", "=q4=Naaru-Blessed Life Rod", "=ds=#w12#", "", "14%"};
		{ 22, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "BTBloodboil";
		Next = "BTShahraz";
	};

	AtlasLoot_Data["BTShahraz"] = {
		{ 1, 32367, "", "=q4=Leggings of Devastation", "=ds=#s11#, #a1#", "", "16%"};
		{ 2, 32366, "", "=q4=Shadowmaster's Boots", "=ds=#s12#, #a2#", "", "15%"};
		{ 3, 32365, "", "=q4=Heartshatter Breastplate", "=ds=#s5#, #a4#", "", "15%"};
		{ 4, 32370, "", "=q4=Nadina's Pendant of Purity", "=ds=#s2#", "", "15%"};
		{ 5, 32368, "", "=q4=Tome of the Lightbringer", "=ds=#s16#, #w16#", "", "15%"};
		{ 6, 32369, "", "=q4=Blade of Savagery", "=ds=#h1#, #w10#", "", "15%"};
		{ 16, 31101, "", "=q4=Pauldrons of the Forgotten Conqueror", "=ds=#m23# #e15#", "", "76%"};
		{ 17, 31103, "", "=q4=Pauldrons of the Forgotten Protector", "=ds=#m23# #e15#", "", "80%"};
		{ 18, 31102, "", "=q4=Pauldrons of the Forgotten Vanquisher", "=ds=#m23# #e15#", "", "77%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "BTEssencofSouls";
		Next = "BTCouncil";
	};

	AtlasLoot_Data["BTCouncil"] = {
		{ 1, 32331, "", "=q4=Cloak of the Illidari Council", "=ds=#s4#", "", "16%"};
		{ 2, 32519, "", "=q4=Belt of Divine Guidance", "=ds=#s10#, #a1#", "", "16%"};
		{ 3, 32518, "", "=q4=Veil of Turning Leaves", "=ds=#s3#, #a2#", "", "12%"};
		{ 4, 32376, "", "=q4=Forest Prowler's Helm", "=ds=#s1#, #a3#", "", "17%"};
		{ 5, 32373, "", "=q4=Helm of the Illidari Shatterer", "=ds=#s1#, #a4#", "", "17%"};
		{ 6, 32505, "", "=q4=Madness of the Betrayer", "=ds=#s14#", "", "16%"};
		{ 16, 31098, "", "=q4=Leggings of the Forgotten Conqueror", "=ds=#m23# #e15#", "", "34%"};
		{ 17, 31100, "", "=q4=Leggings of the Forgotten Protector", "=ds=#m23# #e15#", "", "33%"};
		{ 18, 31099, "", "=q4=Leggings of the Forgotten Vanquisher", "=ds=#m23# #e15#", "", "34%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "BTShahraz";
		Next = "BTIllidanStormrage";
	};

	AtlasLoot_Data["BTIllidanStormrage"] = {
		{ 1, 32524, "", "=q4=Shroud of the Highborne", "=ds=#s4#", "", "16%"};
		{ 2, 32525, "", "=q4=Cowl of the Illidari High Lord", "=ds=#s1#, #a1#", "", "15%"};
		{ 3, 32235, "", "=q4=Cursed Vision of Sargeras", "=ds=#s1#, #a2#", "", "16%"};
		{ 4, 32521, "", "=q4=Faceplate of the Impenetrable", "=ds=#s1#, #a4#", "", "14%"};
		{ 5, 32497, "", "=q4=Stormrage Signet Ring", "=ds=#s13#", "", "15%"};
		{ 6, 32483, "", "=q4=The Skull of Gul'dan", "=ds=#s14#", "", "16%"};
		{ 7, 32496, "", "=q4=Memento of Tyrande", "=ds=#s14#", "", "15%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 11, 32837, "", "=q5=Warglaive of Azzinoth", "=ds=#h3#, #w10#, =q1=#m1# =ds=#c9#, #c6#", "", "4%"};
		{ 12, 32838, "", "=q5=Warglaive of Azzinoth", "=ds=#h4#, #w10#, =q1=#m1# =ds=#c9#, #c6#", "", "4%"};
		{ 16, 31089, "", "=q4=Chestguard of the Forgotten Conqueror", "=ds=#m23# #e15#", "", "78%"};
		{ 17, 31091, "", "=q4=Chestguard of the Forgotten Protector", "=ds=#m23# #e15#", "", "79%"};
		{ 18, 31090, "", "=q4=Chestguard of the Forgotten Vanquisher", "=ds=#m23# #e15#", "", "78%"};
		{ 20, 32471, "", "=q4=Shard of Azzinoth", "=ds=#h1#, #w4#", "", "16%"};
		{ 21, 32500, "", "=q4=Crystal Spire of Karabor", "=ds=#h3#, #w6#", "", "15%"};
		{ 22, 32374, "", "=q4=Zhar'doom, Greatstaff of the Devourer", "=ds=#w9#", "", "14%"};
		{ 23, 32375, "", "=q4=Bulwark of Azzinoth", "=ds=#w8#", "", "14%"};
		{ 24, 32336, "", "=q4=Black Bow of the Betrayer", "=ds=#w2#", "", "16%"};
		Prev = "BTCouncil";
	};

	AtlasLoot_Data["BTTrash"] = {
		{ 1, 32590, "", "=q4=Nethervoid Cloak", "=ds=#s4#", "", "1%"};
		{ 2, 34012, "", "=q4=Shroud of the Final Stand", "=ds=#s4#", "", "1%"};
		{ 3, 32609, "", "=q4=Boots of the Divine Light", "=ds=#s12#, #a1#", "", "1%"};
		{ 4, 32593, "", "=q4=Treads of the Den Mother", "=ds=#s12#, #a2#", "", "1%"};
		{ 5, 32592, "", "=q4=Chestguard of Relentless Storms", "=ds=#s5#, #a3#", "", "1%"};
		{ 6, 32608, "", "=q4=Pillager's Gauntlets", "=ds=#s9#, #a4#", "", "1%"};
		{ 7, 32606, "", "=q4=Girdle of the Lightbearer", "=ds=#s10#, #a4#", "", "1%"};
		{ 8, 32591, "", "=q4=Choker of Serrated Blades", "=ds=#s2#", "", "1%"};
		{ 9, 32589, "", "=q4=Hellfire-Encased Pendant", "=ds=#s2#", "", "1%"};
		{ 10, 32526, "", "=q4=Band of Devastation", "=ds=#s13#", "", "1%"};
		{ 11, 32528, "", "=q4=Blessed Band of Karabor", "=ds=#s13#", "", "1%"};
		{ 12, 32527, "", "=q4=Ring of Ancient Knowledge", "=ds=#s13#", "", "2%"};
		{ 16, 34009, "", "=q4=Hammer of Judgement", "=ds=#h3#, #w6#", "", "1%"};
		{ 17, 32943, "", "=q4=Swiftsteel Bludgeon", "=ds=#h1#, #w6#", "", "2%"};
		{ 18, 34011, "", "=q4=Illidari Runeshield", "=ds=#w8#", "", "1%"};
		{ 20, 32228, "", "=q4=Empyrean Sapphire", "=ds=#e7#", "", "12%"};
		{ 21, 32231, "", "=q4=Pyrestone", "=ds=#e7#", "", "8%"};
		{ 22, 32229, "", "=q4=Lionseye", "=ds=#e7#", "", "6%"};
		{ 23, 32249, "", "=q4=Seaspray Emerald", "=ds=#e7#", "", "9%"};
		{ 24, 32230, "", "=q4=Shadowsong Amethyst", "=ds=#e7#", "", "6%"};
		{ 25, 32227, "", "=q4=Crimson Spinel", "=ds=#e7#", "", "8%"};
		{ 27, 32428, "", "=q3=Heart of Darkness", "=ds=#e8#", "", "16%"};
		{ 28, 32897, "", "=q2=Mark of the Illidari", "=ds=#m20#", "", "27%"};
	};

	AtlasLoot_Data["BTPatterns"] = {
		{ 1, 32738, "", "=q4=Plans: Dawnsteel Bracers", "=ds=#p2# (375)"};
		{ 2, 32739, "", "=q4=Plans: Dawnsteel Shoulders", "=ds=#p2# (375)"};
		{ 3, 32736, "", "=q4=Plans: Swiftsteel Bracers", "=ds=#p2# (375)"};
		{ 4, 32737, "", "=q4=Plans: Swiftsteel Shoulders", "=ds=#p2# (375)"};
		{ 5, 32748, "", "=q4=Pattern: Bindings of Lightning Reflexes", "=ds=#p7# (375)"};
		{ 6, 32744, "", "=q4=Pattern: Bracers of Renewed Life", "=ds=#p7# (375)"};
		{ 7, 32750, "", "=q4=Pattern: Living Earth Bindings", "=ds=#p7# (375)"};
		{ 8, 32751, "", "=q4=Pattern: Living Earth Shoulders", "=ds=#p7# (375)"};
		{ 9, 32749, "", "=q4=Pattern: Shoulders of Lightning Reflexes", "=ds=#p7# (375)"};
		{ 10, 32745, "", "=q4=Pattern: Shoulderpads of Renewed Life", "=ds=#p7# (375)"};
		{ 11, 32746, "", "=q4=Pattern: Swiftstrike Bracers", "=ds=#p7# (375)"};
		{ 12, 32747, "", "=q4=Pattern: Swiftstrike Shoulders", "=ds=#p7# (375)"};
		{ 16, 32754, "", "=q4=Pattern: Bracers of Nimble Thought", "=ds=#p8# (375)"};
		{ 17, 32755, "", "=q4=Pattern: Mantle of Nimble Thought", "=ds=#p8# (375)"};
		{ 18, 32753, "", "=q4=Pattern: Swiftheal Mantle", "=ds=#p8# (375)"};
		{ 19, 32752, "", "=q4=Pattern: Swiftheal Wraps", "=ds=#p8# (375)"};
	};

	
		-------------------------------------
		--- Caverns of Time: Hyjal Summit ---
		-------------------------------------

	AtlasLoot_Data["MountHyjalWinterchill"] = {
		{ 1, 30871, "", "=q4=Bracers of Martyrdom", "=ds=#s8#, #a1#", "", "17%"};
		{ 2, 30870, "", "=q4=Cuffs of Devastation", "=ds=#s8#, #a1#", "", "16%"};
		{ 3, 30863, "", "=q4=Deadly Cuffs", "=ds=#s8#, #a2#", "", "15%"};
		{ 4, 30868, "", "=q4=Rejuvenating Bracers", "=ds=#s8#, #a2#", "", "16%"};
		{ 5, 30864, "", "=q4=Bracers of the Pathfinder", "=ds=#s8#, #a3#", "", "15%"};
		{ 6, 30869, "", "=q4=Howling Wind Bracers", "=ds=#s8#, #a3#", "", "12%"};
		{ 7, 30873, "", "=q4=Stillwater Boots", "=ds=#s12#, #a3#", "", "14%"};
		{ 8, 30866, "", "=q4=Blood-stained Pauldrons", "=ds=#s3#, #a4#", "", "15%"};
		{ 9, 30862, "", "=q4=Blessed Adamantite Bracers", "=ds=#s8#, #a4#", "", "15%"};
		{ 10, 30861, "", "=q4=Furious Shackles", "=ds=#s8#, #a4#", "", "15%"};
		{ 16, 30865, "", "=q4=Tracker's Blade", "=ds=#h1#, #w4#", "", "15%"};
		{ 17, 30872, "", "=q4=Chronicle of Dark Secrets", "=ds=#s15#", "", "16%"};
		{ 19, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 21, 32459, "", "=q1=Time-Phased Phylactery", "=ds=#m3#", "", "8%"};
		Next = "MountHyjalAnetheron";
	};

	AtlasLoot_Data["MountHyjalAnetheron"] = {
		{ 1, 30884, "", "=q4=Hatefury Mantle", "=ds=#s3#, #a1#", "", "16%"};
		{ 2, 30888, "", "=q4=Anetheron's Noose", "=ds=#s10#, #a1#", "", "16%"};
		{ 3, 30885, "", "=q4=Archbishop's Slippers", "=ds=#s12#, #a1#", "", "17%"};
		{ 4, 30879, "", "=q4=Don Alejandro's Money Belt", "=ds=#s10#, #a2#", "", "16%"};
		{ 5, 30886, "", "=q4=Enchanted Leather Sandals", "=ds=#s12#, #a2#", "", "15%"};
		{ 6, 30887, "", "=q4=Golden Links of Restoration", "=ds=#s5#, #a3#", "", "16%"};
		{ 7, 30880, "", "=q4=Quickstrider Moccasins", "=ds=#s12#, #a3#", "", "16%"};
		{ 8, 30878, "", "=q4=Glimmering Steel Mantle", "=ds=#s3#, #a4#", "", "16%"};
		{ 16, 30874, "", "=q4=The Unbreakable Will", "=ds=#h1#, #w10#", "", "16%"};
		{ 17, 30881, "", "=q4=Blade of Infamy", "=ds=#h1#, #w10#", "", "15%"};
		{ 18, 30883, "", "=q4=Pillar of Ferocity", "=ds=#w9#", "", "16%"};
		{ 19, 30882, "", "=q4=Bastion of Light", "=ds=#w8#", "", "15%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "MountHyjalWinterchill";
		Next = "MountHyjalKazrogal";
	};

	AtlasLoot_Data["MountHyjalKazrogal"] = {
		{ 1, 30895, "", "=q4=Angelista's Sash", "=ds=#s10#, #a1#", "", "16%"};
		{ 2, 30916, "", "=q4=Leggings of Channeled Elements", "=ds=#s11#, #a1#", "", "17%"};
		{ 3, 30894, "", "=q4=Blue Suede Shoes", "=ds=#s12#, #a1#", "", "16%"};
		{ 4, 30917, "", "=q4=Razorfury Mantle", "=ds=#s3#, #a2#", "", "17%"};
		{ 5, 30914, "", "=q4=Belt of the Crescent Moon", "=ds=#s10#, #a2#", "", "9%"};
		{ 6, 30891, "", "=q4=Black Featherlight Boots", "=ds=#s12#, #a2#", "", "14%"};
		{ 7, 30892, "", "=q4=Beast-tamer's Shoulders", "=ds=#s3#, #a3#", "", "15%"};
		{ 8, 30919, "", "=q4=Valestalker Girdle", "=ds=#s10#, #a3#", "", "15%"};
		{ 9, 30893, "", "=q4=Sun-touched Chain Leggings", "=ds=#s11#, #a3#", "", "15%"};
		{ 10, 30915, "", "=q4=Belt of Seething Fury", "=ds=#s10#, #a4#", "", "17%"};
		{ 16, 30918, "", "=q4=Hammer of Atonement", "=ds=#h3#, #w6#", "", "17%"};
		{ 17, 30889, "", "=q4=Kaz'rogal's Hardened Heart", "=ds=#w8#", "", "16%"};
		{ 19, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "MountHyjalAnetheron";
		Next = "MountHyjalAzgalor";
	};

	AtlasLoot_Data["MountHyjalAzgalor"] = {
		{ 1, 30899, "", "=q4=Don Rodrigo's Poncho", "=ds=#s5#, #a2#", "", "15%"};
		{ 2, 30898, "", "=q4=Shady Dealer's Pantaloons", "=ds=#s11#, #a2#", "", "16%"};
		{ 3, 30900, "", "=q4=Bow-stitched Leggings", "=ds=#s11#, #a3#", "", "15%"};
		{ 4, 30896, "", "=q4=Glory of the Defender", "=ds=#s5#, #a4#", "", "15%"};
		{ 5, 30897, "", "=q4=Girdle of Hope", "=ds=#s10#, #a4#", "", "15%"};
		{ 6, 30901, "", "=q4=Boundless Agony", "=ds=#h1#, #w4#", "", "16%"};
		{ 16, 31092, "", "=q4=Gloves of the Forgotten Conqueror", "=ds=#m23# #e15#", "", "74%"};
		{ 17, 31094, "", "=q4=Gloves of the Forgotten Protector", "=ds=#m23# #e15#", "", "73%"};
		{ 18, 31093, "", "=q4=Gloves of the Forgotten Vanquisher", "=ds=#m23# #e15#", "", "73%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "MountHyjalKazrogal";
		Next = "MountHyjalArchimonde";
	};

	AtlasLoot_Data["MountHyjalArchimonde"] = {
		{ 1, 30913, "", "=q4=Robes of Rhonin", "=ds=#s5#, #a1#", "", "15%"};
		{ 2, 30912, "", "=q4=Leggings of Eternity", "=ds=#s11#, #a1#", "", "15%"};
		{ 3, 30905, "", "=q4=Midnight Chestguard", "=ds=#s5#, #a2#", "", "14%"};
		{ 4, 30907, "", "=q4=Mail of Fevered Pursuit", "=ds=#s5#, #a3#", "", "15%"};
		{ 5, 30904, "", "=q4=Savior's Grasp", "=ds=#s5#, #a4#", "", "14%"};
		{ 6, 30903, "", "=q4=Legguards of Endless Rage", "=ds=#s11#, #a4#", "", "15%"};
		{ 7, 30911, "", "=q4=Scepter of Purification", "=ds=#s15#", "", "15%"};
		{ 9, 30910, "", "=q4=Tempest of Chaos", "=ds=#h3#, #w10#", "", "14%"};
		{ 10, 30902, "", "=q4=Cataclysm's Edge", "=ds=#h2#, #w10#", "", "15%"};
		{ 11, 30908, "", "=q4=Apostle of Argus", "=ds=#w9#", "", "15%"};
		{ 12, 30909, "", "=q4=Antonidas's Aegis of Rapt Concentration", "=ds=#w8#", "", "15%"};
		{ 13, 30906, "", "=q4=Bristleblitz Striker", "=ds=#w2#", "", "16%"};
		{ 16, 31097, "", "=q4=Helm of the Forgotten Conqueror", "=ds=#m23# #e15#", "", "70%"};
		{ 17, 31095, "", "=q4=Helm of the Forgotten Protector", "=ds=#m23# #e15#", "", "72%"};
		{ 18, 31096, "", "=q4=Helm of the Forgotten Vanquisher", "=ds=#m23# #e15#", "", "73%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "MountHyjalAzgalor";
	};

	AtlasLoot_Data["MountHyjalTrash"] = {
		{ 1, 32590, "", "=q4=Nethervoid Cloak", "=ds=#s4#", "", "1%"};
		{ 2, 34010, "", "=q4=Pepe's Shroud of Pacification", "=ds=#s4#", "", "1%"};
		{ 3, 32609, "", "=q4=Boots of the Divine Light", "=ds=#s12#, #a1#", "", "1%"};
		{ 4, 32592, "", "=q4=Chestguard of Relentless Storms", "=ds=#s5#, #a3#", "", "1%"};
		{ 5, 32591, "", "=q4=Choker of Serrated Blades", "=ds=#s2#", "", "1%"};
		{ 6, 32589, "", "=q4=Hellfire-Encased Pendant", "=ds=#s2#", "", "1%"};
		{ 7, 34009, "", "=q4=Hammer of Judgement", "=ds=#h3#, #w6#", "", "1%"};
		{ 8, 32946, "", "=q4=Claw of Molten Fury", "=ds=#h3#, #w13#", "", "0.46%"};
		{ 9, 32945, "", "=q4=Fist of Molten Fury", "=ds=#h4#, #w13#", "", "0.42%"};
		{ 11, 32428, "", "=q3=Heart of Darkness", "=ds=#e8#", "", "16%"};
		{ 12, 32897, "", "=q2=Mark of the Illidari", "=ds=#m20#", "", "27%"};
		{ 16, 32285, "", "=q4=Design: Flashing Crimson Spinel", "=ds=#p12# (375)", "", "4%"};
		{ 17, 32296, "", "=q4=Design: Great Lionseye", "=ds=#p12# (375)", "", "3%"};
		{ 18, 32303, "", "=q4=Design: Inscribed Pyrestone", "=ds=#p12# (375)", "", "3%"};
		{ 19, 32295, "", "=q4=Design: Mystic Lionseye", "=ds=#p12# (375)", "", "4%"};
		{ 20, 32298, "", "=q4=Design: Shifting Shadowsong Amethyst", "=ds=#p12# (375)", "", "4%"};
		{ 21, 32297, "", "=q4=Design: Sovereign Shadowsong Amethyst", "=ds=#p12# (375)", "", "4%"};
		{ 22, 32289, "", "=q4=Design: Stormy Empyrean Sapphire", "=ds=#p12# (375)", "", "4%"};
		{ 23, 32307, "", "=q4=Design: Veiled Pyrestone", "=ds=#p12# (375)", "", "3%"};
	};

	
		------------------------------------------------
		--- Coilfang Reservoir: Serpentshrine Cavern ---
		------------------------------------------------

	AtlasLoot_Data["CFRSerpentHydross"] = {
		{ 1, 30056, "", "=q4=Robe of Hateful Echoes", "=ds=#s5#, #a1#", "", "18%"};
		{ 2, 32516, "", "=q4=Wraps of Purification", "=ds=#s8#, #a1#", "", "18%"};
		{ 3, 30050, "", "=q4=Boots of the Shifting Nightmare", "=ds=#s12#, #a1#", "", "17%"};
		{ 4, 30055, "", "=q4=Shoulderpads of the Stranger", "=ds=#s3#, #a2#", "", "16%"};
		{ 5, 30047, "", "=q4=Blackfathom Warbands", "=ds=#s8#, #a3#", "", "19%"};
		{ 6, 30054, "", "=q4=Ranger-General's Chestguard", "=ds=#s5#, #a3#", "", "18%"};
		{ 7, 30048, "", "=q4=Brighthelm of Justice", "=ds=#s1#, #a4#", "", "21%"};
		{ 8, 30053, "", "=q4=Pauldrons of the Wardancer", "=ds=#s3#, #a4#", "", "16%"};
		{ 16, 30052, "", "=q4=Ring of Lethality", "=ds=#s13#", "", "20%"};
		{ 17, 33055, "", "=q4=Band of Vile Aggression", "=ds=#s13#", "", "14%"};
		{ 18, 30664, "", "=q4=Living Root of the Wildheart", "=ds=#s14#, =q1=#m1# =ds=#c1#", "", "18%"};
		{ 19, 30629, "", "=q4=Scarab of Displacement", "=ds=#s14#", "", "21%"};
		{ 20, 30049, "", "=q4=Fathomstone", "=ds=#s15#", "", "19%"};
		{ 21, 30051, "", "=q4=Idol of the Crescent Goddess", "=ds=#s16#, #w14#", "", "11%"};
		{ 23, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Next = "CFRSerpentLurker";
	};

	AtlasLoot_Data["CFRSerpentLurker"] = {
		{ 1, 30064, "", "=q4=Cord of Screaming Terrors", "=ds=#s10#, #a1#", "", "17%"};
		{ 2, 30067, "", "=q4=Velvet Boots of the Guardian", "=ds=#s12#, #a1#", "", "17%"};
		{ 3, 30062, "", "=q4=Grove-Bands of Remulos", "=ds=#s8#, #a2#", "", "21%"};
		{ 4, 30060, "", "=q4=Boots of Effortless Striking", "=ds=#s12#, #a2#", "", "21%"};
		{ 5, 30066, "", "=q4=Tempest-Strider Boots", "=ds=#s12#, #a3#", "", "21%"};
		{ 6, 30065, "", "=q4=Glowing Breastplate of Truth", "=ds=#s5#, #a4#", "", "20%"};
		{ 7, 30057, "", "=q4=Bracers of Eradication", "=ds=#s8#, #a4#", "", "19%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 30059, "", "=q4=Choker of Animalistic Fury", "=ds=#s2#", "", "21%"};
		{ 17, 30061, "", "=q4=Ancestral Ring of Conquest", "=ds=#s13#", "", "20%"};
		{ 18, 33054, "", "=q4=The Seal of Danzalar", "=ds=#s13#", "", "14%"};
		{ 19, 30665, "", "=q4=Earring of Soulful Meditation", "=ds=#s14#, =q1=#m1# =ds=#c5#", "", "18%"};
		{ 20, 30063, "", "=q4=Libram of Absolute Truth", "=ds=#s16#, #w16#", "", "17%"};
		{ 21, 30058, "", "=q4=Mallet of the Tides", "=ds=#h1#, #w6#", "", "20%"};
		Prev = "CFRSerpentHydross";
		Next = "CFRSerpentLeotheras";
	};

	AtlasLoot_Data["CFRSerpentLeotheras"] = {
		{ 1, 30092, "", "=q4=Orca-Hide Boots", "=ds=#s12#, #a2#", "", "13%"};
		{ 2, 30097, "", "=q4=Coral-Barbed Shoulderpads", "=ds=#s3#, #a3#", "", "15%"};
		{ 3, 30091, "", "=q4=True-Aim Stalker Bands", "=ds=#s8#, #a3#", "", "17%"};
		{ 4, 30096, "", "=q4=Girdle of the Invulnerable", "=ds=#s10#, #a4#", "", "14%"};
		{ 5, 30627, "", "=q4=Tsunami Talisman", "=ds=#s14#", "", "15%"};
		{ 6, 30095, "", "=q4=Fang of the Leviathan", "=ds=#h3#, #w10#", "", "14%"};
		{ 16, 30239, "", "=q4=Gloves of the Vanquished Champion", "=ds=#m22# #e15#", "", "63%"};
		{ 17, 30240, "", "=q4=Gloves of the Vanquished Defender", "=ds=#m22# #e15#", "", "67%"};
		{ 18, 30241, "", "=q4=Gloves of the Vanquished Hero", "=ds=#m22# #e15#", "", "65%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "CFRSerpentLurker";
		Next = "CFRSerpentKarathress";
	};

	AtlasLoot_Data["CFRSerpentKarathress"] = {
		{ 1, 30100, "", "=q4=Soul-Strider Boots", "=ds=#s12#, #a1#", "", "15%"};
		{ 2, 30101, "", "=q4=Bloodsea Brigand's Vest", "=ds=#s5#, #a2#", "", "15%"};
		{ 3, 30099, "", "=q4=Frayed Tether of the Drowned", "=ds=#s2#", "", "15%"};
		{ 4, 30663, "", "=q4=Fathom-Brooch of the Tidewalker", "=ds=#s14#, =q1=#m1# =ds=#c7#", "", "15%"};
		{ 5, 30626, "", "=q4=Sextant of Unstable Currents", "=ds=#s14#", "", "14%"};
		{ 6, 30090, "", "=q4=World Breaker", "=ds=#h2#, #w6#", "", "15%"};
		{ 16, 30245, "", "=q4=Leggings of the Vanquished Champion", "=ds=#m22# #e15#", "", "62%"};
		{ 17, 30246, "", "=q4=Leggings of the Vanquished Defender", "=ds=#m22# #e15#", "", "61%"};
		{ 18, 30247, "", "=q4=Leggings of the Vanquished Hero", "=ds=#m22# #e15#", "", "62%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "CFRSerpentLeotheras";
		Next = "CFRSerpentMorogrim";
	};

	AtlasLoot_Data["CFRSerpentMorogrim"] = {
		{ 1, 30098, "", "=q4=Razor-Scale Battlecloak", "=ds=#s4#", "", "22%"};
		{ 2, 30079, "", "=q4=Illidari Shoulderpads", "=ds=#s3#, #a1#", "", "15%"};
		{ 3, 30075, "", "=q4=Gnarled Chestpiece of the Ancients", "=ds=#s5#, #a2#", "", "19%"};
		{ 4, 30085, "", "=q4=Mantle of the Tireless Tracker", "=ds=#s3#, #a3#", "", "20%"};
		{ 5, 30068, "", "=q4=Girdle of the Tidal Call", "=ds=#s10#, #a3#", "", "17%"};
		{ 6, 30084, "", "=q4=Pauldrons of the Argent Sentinel", "=ds=#s3#, #a4#", "", "21%"};
		{ 7, 30081, "", "=q4=Warboots of Obliteration", "=ds=#s12#, #a4#", "", "21%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 30008, "", "=q4=Pendant of the Lost Ages", "=ds=#s2#", "", "18%"};
		{ 17, 30083, "", "=q4=Ring of Sundered Souls", "=ds=#s13#", "", "21%"};
		{ 18, 33058, "", "=q4=Band of the Vigilant", "=ds=#s13#", "", "19%"};
		{ 19, 30720, "", "=q4=Serpent-Coil Braid", "=ds=#s14#, =q1=#m1# =ds=#c3#", "", "20%"};
		{ 20, 30082, "", "=q4=Talon of Azshara", "=ds=#h1#, #w10#", "", "20%"};
		{ 21, 30080, "", "=q4=Luminescent Rod of the Naaru", "=ds=#w12#", "", "15%"};
		Prev = "CFRSerpentKarathress";
		Next = "CFRSerpentVashj";
	};

	AtlasLoot_Data["CFRSerpentVashj"] = {
		{ 1, 30107, "", "=q4=Vestments of the Sea-Witch", "=ds=#s5#, #a1#", "", "13%"};
		{ 2, 30111, "", "=q4=Runetotem's Mantle", "=ds=#s3#, #a2#", "", "14%"};
		{ 3, 30106, "", "=q4=Belt of One-Hundred Deaths", "=ds=#s10#, #a2#", "", "12%"};
		{ 4, 30104, "", "=q4=Cobra-Lash Boots", "=ds=#s12#, #a3#", "", "13%"};
		{ 5, 30102, "", "=q4=Krakken-Heart Breastplate", "=ds=#s5#, #a4#", "", "15%"};
		{ 6, 30112, "", "=q4=Glorious Gauntlets of Crestfall", "=ds=#s9#, #a4#", "", "14%"};
		{ 7, 30109, "", "=q4=Ring of Endless Coils", "=ds=#s13#", "", "13%"};
		{ 8, 30110, "", "=q4=Coral Band of the Revived", "=ds=#s13#", "", "16%"};
		{ 9, 30621, "", "=q4=Prism of Inner Calm", "=ds=#s14#", "", "13%"};
		{ 10, 30103, "", "=q4=Fang of Vashj", "=ds=#h1#, #w4#", "", "14%"};
		{ 11, 30108, "", "=q4=Lightfathom Scepter", "=ds=#h3#, #w6#", "", "14%"};
		{ 12, 30105, "", "=q4=Serpent Spine Longbow", "=ds=#w2#", "", "13%"};
		{ 16, 30242, "", "=q4=Helm of the Vanquished Champion", "=ds=#m22# #e15#", "", "61%"};
		{ 17, 30243, "", "=q4=Helm of the Vanquished Defender", "=ds=#m22# #e15#", "", "62%"};
		{ 18, 30244, "", "=q4=Helm of the Vanquished Hero", "=ds=#m22# #e15#", "", "63%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 22, 29906, "", "=q1=Vashj's Vial Remnant", "=ds=#m3#", "", "35%"};
		Prev = "CFRSerpentMorogrim";
	};

	AtlasLoot_Data["CFRSerpentTrash"] = {
		{ 1, 30027, "", "=q4=Boots of Courage Unending", "=ds=#s12#, #a4#", "", "3%"};
		{ 2, 30022, "", "=q4=Pendant of the Perilous", "=ds=#s2#", "", "3%"};
		{ 3, 30620, "", "=q4=Spyglass of the Hidden Fleet", "=ds=#s14#", "", "4%"};
		{ 4, 30023, "", "=q4=Totem of the Maelstrom", "=ds=#s16#, #w15#", "", "3%"};
		{ 5, 30021, "", "=q4=Wildfury Greatstaff", "=ds=#w9#", "", "3%"};
		{ 6, 30025, "", "=q4=Serpentshrine Shuriken", "=ds=#w11#", "", "3%"};
		{ 8, 30324, "", "=q4=Plans: Red Havoc Boots", "=ds=#p2# (375)", "", "1%"};
		{ 9, 30322, "", "=q4=Plans: Red Belt of Battle", "=ds=#p2# (375)", "", "2%"};
		{ 10, 30323, "", "=q4=Plans: Boots of the Protector", "=ds=#p2# (375)", "", "2%"};
		{ 11, 30321, "", "=q4=Plans: Belt of the Guardian", "=ds=#p2# (375)", "", "2%"};
		{ 12, 30280, "", "=q4=Pattern: Belt of Blasting", "=ds=#p8# (375)", "", "1%"};
		{ 13, 30282, "", "=q4=Pattern: Boots of Blasting", "=ds=#p8# (375)", "", "1%"};
		{ 14, 30283, "", "=q4=Pattern: Boots of the Long Road", "=ds=#p8# (375)", "", "2%"};
		{ 15, 30281, "", "=q4=Pattern: Belt of the Long Road", "=ds=#p8# (375)", "", "1%"};
		{ 16, 30308, "", "=q4=Pattern: Hurricane Boots", "=ds=#p7# (375)", "", "1%"};
		{ 17, 30304, "", "=q4=Pattern: Monsoon Belt", "=ds=#p7# (375)", "", "1%"};
		{ 18, 30305, "", "=q4=Pattern: Boots of Natural Grace", "=ds=#p7# (375)", "", "2%"};
		{ 19, 30307, "", "=q4=Pattern: Boots of the Crimson Hawk", "=ds=#p7# (375)", "", "1%"};
		{ 20, 30306, "", "=q4=Pattern: Boots of Utter Darkness", "=ds=#p7# (375)", "", "2%"};
		{ 21, 30301, "", "=q4=Pattern: Belt of Natural Power", "=ds=#p7# (375)", "", "1%"};
		{ 22, 30303, "", "=q4=Pattern: Belt of the Black Eagle", "=ds=#p7# (375)", "", "1%"};
		{ 23, 30302, "", "=q4=Pattern: Belt of Deep Shadow", "=ds=#p7# (375)", "", "1%"};
		{ 25, 30183, "", "=q4=Nether Vortex", "=ds=#e8#", "", "75%"};
		{ 27, 32897, "", "=q2=Mark of the Illidari", "=ds=#m20#", "", "27%"};
	};

		--------------------
		--- Gruul's Lair ---
		--------------------

	AtlasLoot_Data["GruulsLairHighKingMaulgar"] = {
		{ 1, 28797, "", "=q4=Brute Cloak of the Ogre-Magi", "#s4#", "", "8.39%"};
		{ 2, 28799, "", "=q4=Belt of Divine Inspiration", "#s10#, #a1#", "", "9.98%"};
		{ 3, 28796, "", "=q4=Malefic Mask of the Shadows", "=ds=#s1#, #a2#", "", "12.93%"};
		{ 4, 28801, "", "=q4=Maulgar's Warhelm", "=ds=#s1#, #a3#", "", "21.32%"};
		{ 5, 28795, "", "=q4=Bladespire Warbands", "=ds=#s8#, #a4#", "", "12.02%"};
		{ 6, 28800, "", "=q4=Hammer of the Naaru", "=ds=#h2#, #w6#", "", "15.87%"};
		{ 16, 29763, "", "=q4=Pauldrons of the Fallen Champion", "=ds=#m21# #e15#", "", "22.68%"};
		{ 17, 29764, "", "=q4=Pauldrons of the Fallen Defender", "=ds=#m21# #e15#", "", "34.69%"};
		{ 18, 29762, "", "=q4=Pauldrons of the Fallen Hero", "=ds=#m21# #e15#", "", "25.62%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Next = "GruulGruul";
	};

	AtlasLoot_Data["GruulGruul"] = {
		{ 1, 28804, "", "=q4=Collar of Cho'gall", "=ds=#s1#, #a1#", "", "14.96%"};
		{ 2, 28803, "", "=q4=Cowl of Nature's Breath", "=ds=#s1#, #a2#", "", "14.21%"};
		{ 3, 28828, "", "=q4=Gronn-Stitched Girdle", "=ds=#s10#, #a2#", "", "11.22%"};
		{ 4, 28827, "", "=q4=Gauntlets of the Dragonslayer", "=ds=#s9#, #a3#", "", "7.48%"};
		{ 5, 28810, "", "=q4=Windshear Boots", "=ds=#s12#, #a3#", "", "10.22%"};
		{ 6, 28824, "", "=q4=Gauntlets of Martial Perfection", "=ds=#s9#, #a4#", "", "12.22%"};
		{ 7, 28822, "", "=q4=Teeth of Gruul", "=ds=#s2#", "", "11.47%"};
		{ 8, 28823, "", "=q4=Eye of Gruul", "=ds=#s14#", "", "6.73%"};
		{ 9, 28830, "", "=q4=Dragonspine Trophy", "=ds=#s14#", "", "11.72%"};
		{ 11, 31750, "", "=q1=Earthen Signet", "=ds=#m3#", "", "100%"};
		{ 16, 29766, "", "=q4=Leggings of the Fallen Champion", "=ds=#m21# #e15#", "", "23.69%"};
		{ 17, 29767, "", "=q4=Leggings of the Fallen Defender", "=ds=#m21# #e15#", "", "17.46%"};
		{ 18, 29765, "", "=q4=Leggings of the Fallen Hero", "=ds=#m21# #e15#", "", "30.17%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 22, 28802, "", "=q4=Bloodmaw Magus-Blade", "=ds=#h3#, #w10#", "", "9.23%"};
		{ 23, 28794, "", "=q4=Axe of the Gronn Lords", "=ds=#h2#, #w1#", "", "6.73%"};
		{ 24, 28825, "", "=q4=Aldori Legacy Defender", "=ds=#w8#", "", "2.99%"};
		{ 25, 28826, "", "=q4=Shuriken of Negation", "=ds=#w11#", "", "16.21%"};
		Prev = "GruulsLairHighKingMaulgar";
	};
		---------------------------
		--- Gruul's Lair HEROIC ---
		---------------------------

	AtlasLoot_Data["GruulsLairHighKingMaulgarHEROIC"] = {
		{ 1, 228797, "", "=q4=Brute Cloak of the Ogre-Magi", "#s4#", "", "8.39%"};
		{ 2, 228799, "", "=q4=Belt of Divine Inspiration", "#s10#, #a1#", "", "9.98%"};
		{ 3, 228796, "", "=q4=Malefic Mask of the Shadows", "=ds=#s1#, #a2#", "", "12.93%"};
		{ 4, 228801, "", "=q4=Maulgar's Warhelm", "=ds=#s1#, #a3#", "", "21.32%"};
		{ 5, 228795, "", "=q4=Bladespire Warbands", "=ds=#s8#, #a4#", "", "12.02%"};
		{ 6, 228800, "", "=q4=Hammer of the Naaru", "=ds=#h2#, #w6#", "", "15.87%"};
		{ 16, 229763, "", "=q4=Pauldrons of the Fallen Champion", "=ds=#m21# #e15#", "", "22.68%"};
		{ 17, 229764, "", "=q4=Pauldrons of the Fallen Defender", "=ds=#m21# #e15#", "", "34.69%"};
		{ 18, 229762, "", "=q4=Pauldrons of the Fallen Hero", "=ds=#m21# #e15#", "", "25.62%"};
		{ 20, 229434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Next = "GruulGruulHEROIC";
	};

	AtlasLoot_Data["GruulGruulHEROIC"] = {
		{ 1, 228804, "", "=q4=Collar of Cho'gall", "=ds=#s1#, #a1#", "", "14.96%"};
		{ 2, 228803, "", "=q4=Cowl of Nature's Breath", "=ds=#s1#, #a2#", "", "14.21%"};
		{ 3, 228828, "", "=q4=Gronn-Stitched Girdle", "=ds=#s10#, #a2#", "", "11.22%"};
		{ 4, 228827, "", "=q4=Gauntlets of the Dragonslayer", "=ds=#s9#, #a3#", "", "7.48%"};
		{ 5, 228810, "", "=q4=Windshear Boots", "=ds=#s12#, #a3#", "", "10.22%"};
		{ 6, 228824, "", "=q4=Gauntlets of Martial Perfection", "=ds=#s9#, #a4#", "", "12.22%"};
		{ 7, 228822, "", "=q4=Teeth of Gruul", "=ds=#s2#", "", "11.47%"};
		{ 8, 228823, "", "=q4=Eye of Gruul", "=ds=#s14#", "", "6.73%"};
		{ 9, 228830, "", "=q4=Dragonspine Trophy", "=ds=#s14#", "", "11.72%"};
		{ 11, 31750, "", "=q1=Earthen Signet", "=ds=#m3#", "", "100%"};
		{ 16, 229766, "", "=q4=Leggings of the Fallen Champion", "=ds=#m21# #e15#", "", "23.69%"};
		{ 17, 229767, "", "=q4=Leggings of the Fallen Defender", "=ds=#m21# #e15#", "", "17.46%"};
		{ 18, 229765, "", "=q4=Leggings of the Fallen Hero", "=ds=#m21# #e15#", "", "30.17%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 22, 228802, "", "=q4=Bloodmaw Magus-Blade", "=ds=#h3#, #w10#", "", "9.23%"};
		{ 23, 228794, "", "=q4=Axe of the Gronn Lords", "=ds=#h2#, #w1#", "", "6.73%"};
		{ 24, 228825, "", "=q4=Aldori Legacy Defender", "=ds=#w8#", "", "2.99%"};
		{ 25, 228826, "", "=q4=Shuriken of Negation", "=ds=#w11#", "", "16.21%"};
		Prev = "GruulsLairHighKingMaulgarHEROIC";
	};
	
		--------------------------------------------
		--- Hellfire Citadel: Magtheridon's Lair ---
		--------------------------------------------

	AtlasLoot_Data["HCMagtheridon"] = {
		{ 1, 28777, "", "=q4=Cloak of the Pit Stalker", "=ds=#s4#"};
		{ 2, 28780, "", "=q4=Soul-Eater's Handwraps", "=ds=#s9#, #a1#"};
		{ 3, 28776, "", "=q4=Liar's Tongue Gloves", "=ds=#s9#, #a2#"};
		{ 4, 28778, "", "=q4=Terror Pit Girdle", "=ds=#s10#, #a3#"};
		{ 5, 28775, "", "=q4=Thundering Greathelm", "=ds=#s1#, #a4#"};
		{ 6, 28779, "", "=q4=Girdle of the Endless Pit", "=ds=#s10#, #a4#"};
		{ 7, 28789, "", "=q4=Eye of Magtheridon", "=ds=#s14#"};
		{ 8, 28781, "", "=q4=Karaborian Talisman", "=ds=#s15#"};
		{ 10, 28774, "", "=q4=Glaive of the Pit", "=ds=#w7#"};
		{ 11, 28782, "", "=q4=Crystalheart Pulse-Staff", "=ds=#w9#"};
		{ 12, 29458, "", "=q4=Aegis of the Vindicator", "=ds=#w8#"};
		{ 13, 28783, "", "=q4=Eredar Wand of Obliteration", "=ds=#w12#"};
		{ 15, 34846, "", "=q2=Black Sack of Gems", "=ds=#e1#"};
		{ 16, 29754, "", "=q4=Chestguard of the Fallen Champion", "=ds=#m21# #e15#"};
		{ 17, 29753, "", "=q4=Chestguard of the Fallen Defender", "=ds=#m21# #e15#"};
		{ 18, 29755, "", "=q4=Chestguard of the Fallen Hero", "=ds=#m21# #e15#"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 22, 32385, "", "=q4=Magtheridon's Head", "=ds=#m2#", "", "100%"};
		{ 23, 28791, "", "=q4=Ring of the Recalcitrant", "=q1=#m4#: =ds=#s13#"};
		{ 24, 28790, "", "=q4=Naaru Lightwarden's Band", "=q1=#m4#: =ds=#s13#"};
		{ 25, 28793, "", "=q4=Band of Crimson Fury", "=q1=#m4#: =ds=#s13#"};
		{ 26, 28792, "", "=q4=A'dal's Signet of Defense", "=q1=#m4#: =ds=#s13#"};
		{ 28, 34845, "", "=q4=Pit Lord's Satchel", "=ds=#e1# #m15#"};
	};
		---------------------------------------------------
		--- Hellfire Citadel: Magtheridon's Lair Heroic ---
		---------------------------------------------------

	AtlasLoot_Data["HCMagtheridonHEROIC"] = {
		{ 1, 228777, "", "=q4=Cloak of the Pit Stalker", "=ds=#s4#"};
		{ 2, 228780, "", "=q4=Soul-Eater's Handwraps", "=ds=#s9#, #a1#"};
		{ 3, 228776, "", "=q4=Liar's Tongue Gloves", "=ds=#s9#, #a2#"};
		{ 4, 228778, "", "=q4=Terror Pit Girdle", "=ds=#s10#, #a3#"};
		{ 5, 228775, "", "=q4=Thundering Greathelm", "=ds=#s1#, #a4#"};
		{ 6, 228779, "", "=q4=Girdle of the Endless Pit", "=ds=#s10#, #a4#"};
		{ 7, 228789, "", "=q4=Eye of Magtheridon", "=ds=#s14#"};
		{ 8, 228781, "", "=q4=Karaborian Talisman", "=ds=#s15#"};
		{ 10, 228774, "", "=q4=Glaive of the Pit", "=ds=#w7#"};
		{ 11, 228782, "", "=q4=Crystalheart Pulse-Staff", "=ds=#w9#"};
		{ 12, 229458, "", "=q4=Aegis of the Vindicator", "=ds=#w8#"};
		{ 13, 228783, "", "=q4=Eredar Wand of Obliteration", "=ds=#w12#"};
		{ 15, 34846, "", "=q2=Black Sack of Gems", "=ds=#e1#"};
		{ 16, 229754, "", "=q4=Chestguard of the Fallen Champion", "=ds=#m21# #e15#"};
		{ 17, 229753, "", "=q4=Chestguard of the Fallen Defender", "=ds=#m21# #e15#"};
		{ 18, 229755, "", "=q4=Chestguard of the Fallen Hero", "=ds=#m21# #e15#"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 22, 32385, "", "=q4=Magtheridon's Head", "=ds=#m2#", "", "100%"};
		{ 23, 28791, "", "=q4=Ring of the Recalcitrant", "=q1=#m4#: =ds=#s13#"};
		{ 24, 28790, "", "=q4=Naaru Lightwarden's Band", "=q1=#m4#: =ds=#s13#"};
		{ 25, 28793, "", "=q4=Band of Crimson Fury", "=q1=#m4#: =ds=#s13#"};
		{ 26, 28792, "", "=q4=A'dal's Signet of Defense", "=q1=#m4#: =ds=#s13#"};
		{ 28, 34845, "", "=q4=Pit Lord's Satchel", "=ds=#e1# #m15#"};
	};
		----------------
		--- Karazhan ---
		----------------

	AtlasLoot_Data["KaraCharredBoneFragment"] = {
		{ 1, 24152, "INV_Misc_Bone_10", "=q1=Charred Bone Fragment", "=ds=#m3#"};
	};

	AtlasLoot_Data["KaraNamed"] = {
		{ 1, 0, "Ability_Hunter_Pet_Spider", "=q6="..BabbleBoss["Hyakiss the Lurker"], "=q5="..AL["Spider"]};
		{ 2, 30675, "", "=q4=Lurker's Cord", "=ds=#s10#, #a1# =q2=#m16#", "", "32.81%"};
		{ 3, 30676, "", "=q4=Lurker's Grasp", "=ds=#s10#, #a2# =q2=#m16#", "", "9.38%"};
		{ 4, 30677, "", "=q4=Lurker's Belt", "=ds=#s10#, #a3# =q2=#m16#", "", "23.44%"};
		{ 5, 30678, "", "=q4=Lurker's Girdle", "=ds=#s10#, #a4# =q2=#m16#", "", "15.62%"};
		{ 7, 0, "Ability_Hunter_Pet_Hyena", "=q6="..BabbleBoss["Rokad the Ravager"], "=q5="..AL["Darkhound"]};
		{ 8, 30684, "", "=q4=Ravager's Cuffs", "=ds=#s8#, #a1# =q2=#m16#", "", "27.78%"};
		{ 9, 30685, "", "=q4=Ravager's Wrist-Wraps", "=ds=#s8#, #a2# =q2=#m16#", "", "11.11%"};
		{ 10, 30686, "", "=q4=Ravager's Bands", "=ds=#s8#, #a3# =q2=#m16#", "", "23.33%"};
		{ 11, 30687, "", "=q4=Ravager's Bracers", "=ds=#s8#, #a4# =q2=#m16#", "", "8.89%"};
		{ 16, 0, "Ability_Hunter_Pet_Bat", "=q6="..BabbleBoss["Shadikith the Glider"], "=q5="..AL["Bat"]};
		{ 17, 30680, "", "=q4=Glider's Foot-Wraps", "=ds=#s12#, #a1# =q2=#m16#", "", "9.68%"};
		{ 18, 30681, "", "=q4=Glider's Boots", "=ds=#s12#, #a2# =q2=#m16#", "", "22.58%"};
		{ 19, 30682, "", "=q4=Glider's Sabatons", "=ds=#s12#, #a3# =q2=#m16#", "", "9.68%"};
		{ 20, 30683, "", "=q4=Glider's Greaves", "=ds=#s12#, #a4# =q2=#m16#", "", "8.60%"};
	};

	AtlasLoot_Data["KaraAttumen"] = {
		{ 1, 28477, "", "=q4=Harbinger Bands", "=ds=#s8#, #a1#", "", "14.68%"};
		{ 2, 28507, "", "=q4=Handwraps of Flowing Thought", "=ds=#s9#, #a1#", "", "12.44%"};
		{ 3, 28508, "", "=q4=Gloves of Saintly Blessings", "=ds=#s9#, #a1#", "", "11.69%"};
		{ 4, 28453, "", "=q4=Bracers of the White Stag", "=ds=#s8#, #a2#", "", "12.19%"};
		{ 5, 28506, "", "=q4=Gloves of Dexterous Manipulation", "=ds=#s9#, #a2#", "", "14.68%"};
		{ 6, 28503, "", "=q4=Whirlwind Bracers", "=ds=#s8#, #a3#", "", "9.20%"};
		{ 7, 28454, "", "=q4=Stalker's War Bands", "=ds=#s8#, #a3#", "", "16.17%"};
		{ 8, 28502, "", "=q4=Vambraces of Courage", "=ds=#s8#, #a4#", "", "10.70%"};
		{ 9, 28505, "", "=q4=Gauntlets of Renewed Hope", "=ds=#s9#, #a4#", "", "10.95%"};
		{ 16, 28509, "", "=q4=Worgen Claw Necklace", "=ds=#s2#", "", "17.16%"};
		{ 17, 28510, "", "=q4=Spectral Band of Innervation", "=ds=#s13#", "", "10.70%"};
		{ 18, 28504, "", "=q4=Steelhawk Crossbow", "=ds=#w3#", "", "12.44%"};
		{ 19, 30480, "", "=q4=Fiery Warhorse's Reins", "=ds=#e12#", "", "0.25%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 23, 23809, "", "=q3=Schematic: Stabilized Eternium Scope", "=ds=#p5# (375)", "", "1.00%"};
		Next = "KaraMoroes";
	};

	AtlasLoot_Data["KaraMoroes"] = {
		{ 1, 28529, "", "=q4=Royal Cloak of Arathi Kings", "=ds=#s4#", "", "15.91%"};
		{ 2, 28570, "", "=q4=Shadow-Cloak of Dalaran", "=ds=#s4#", "", "12.18%"};
		{ 3, 28565, "", "=q4=Nethershard Girdle", "=ds=#s10#, #a1#", "", "14.08%"};
		{ 4, 28545, "", "=q4=Edgewalker Longboots", "=ds=#s12#, #a2#", "", "11.07%"};
		{ 5, 28567, "", "=q4=Belt of Gale Force", "=ds=#s10#, #a3#", "", "12.05%"};
		{ 6, 28566, "", "=q4=Crimson Girdle of the Indomitable", "=ds=#s10#, #a4#", "", "10.81%"};
		{ 7, 28569, "", "=q4=Boots of Valiance", "=ds=#s12#, #a4#", "", "11.33%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 28530, "", "=q4=Brooch of Unquenchable Fury", "=ds=#s2#", "", "12.25%"};
		{ 17, 28528, "", "=q4=Moroes' Lucky Pocket Watch", "=ds=#s14#", "", "12.05%"};
		{ 18, 28525, "", "=q4=Signet of Unshakable Faith", "=ds=#s15#", "", "14.54%"};
		{ 19, 28568, "", "=q4=Idol of the Avian Heart", "=ds=#s16#, #w14#", "", "14.08%"};
		{ 20, 28524, "", "=q4=Emerald Ripper", "=ds=#h1#, #w4#", "", "12.90%"};
		{ 22, 22559, "", "=q3=Formula: Enchant Weapon - Mongoose", "=ds=#p4# (375)", "", "1.05%"};
	Prev = "KaraAttumen";
	Next = "KaraMaiden";
	};

	AtlasLoot_Data["KaraKeannaLog"] = {
		{ 1, 24492, "", "=q1=Keanna's Log", "=ds=#m3#"};
	};

	AtlasLoot_Data["KaraMaiden"] = {
		{ 1, 28511, "", "=q4=Bands of Indwelling", "=ds=#s8#, #a1#", "", "12.46%"};
		{ 2, 28515, "", "=q4=Bands of Nefarious Deeds", "=ds=#s8#, #a1#", "", "13.87%"};
		{ 3, 28517, "", "=q4=Boots of Foretelling", "=ds=#s12#, #a1#", "", "16.96%"};
		{ 4, 28514, "", "=q4=Bracers of Maliciousness", "=ds=#s8#, #a2#", "", "15.90%"};
		{ 5, 28521, "", "=q4=Mitts of the Treemender", "=ds=#s9#, #a2#", "", "13.16%"};
		{ 6, 28520, "", "=q4=Gloves of Centering", "=ds=#s9#, #a3#", "", "13.16%"};
		{ 7, 28519, "", "=q4=Gloves of Quickening", "=ds=#s9#, #a3#", "", "14.22%"};
		{ 8, 28512, "", "=q4=Bracers of Justice", "=ds=#s8#, #a4#", "", "15%"};
		{ 9, 28518, "", "=q4=Iron Gauntlets of the Maiden", "=ds=#s9#, #a4#", "", "12.63%"};
		{ 16, 28516, "", "=q4=Barbed Choker of Discipline", "=ds=#s2#", "", "11.48%"};
		{ 17, 28523, "", "=q4=Totem of Healing Rains", "=ds=#s16#, #w15#", "", "14.58%"};
		{ 18, 28522, "", "=q4=Shard of the Virtuous", "=ds=#h3#, #w6#", "", "10.69%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraMoroes";
		Next = "KaraOperaEvent";
	};

	AtlasLoot_Data["KaraOperaEvent"] = {
		{ 1, 0, "INV_Box_01", "=q6="..AL["Shared Drops"], ""};
		{ 2, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 3, 28594, "", "=q4=Trial-FireTrousers", "=ds=#s11#, #a1#", "", "15.96%"};
		{ 4, 28591, "", "=q4=Earthsoul Leggings", "=ds=#s11#, #a2#", "", "12.45%"};
		{ 5, 28589, "", "=q4=Beastmaw Pauldrons", "=ds=#s3#, #a3#", "", "12.54%"};
		{ 6, 28593, "", "=q4=Eternium Greathelm", "=ds=#s1#, #a4#", "", "11.53%"};
		{ 7, 28590, "", "=q4=Ribbon of Sacrifice", "=ds=#s14#", "", "18.41%"};
		{ 8, 28592, "", "=q4=Libram of Souls Redeemed", "=ds=#s16#, #w16#", "", "8.38%"};
		{ 10, 0, "INV_Box_01", "=q6="..BabbleBoss["The Crone"], "=q5="..AL["Wizard of Oz"]};
		{ 11, 28586, "", "=q4=Wicked Witch's Hat", "=ds=#s1#, #a1#", "", "20.12%"};
		{ 12, 28585, "", "=q4=Ruby Slippers", "=ds=#s12#, #a1#", "", "25.39%"};
		{ 13, 28587, "", "=q4=Legacy", "=ds=#h2#, #w1#", "", "20.43%"};
		{ 14, 28588, "", "=q4=Blue Diamond Witchwand", "=ds=#w12#", "", "17.96%"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Romulo & Julianne"], "=q5="..AL["Romulo & Julianne"]};
		{ 17, 28578, "", "=q4=Masquerade Gown", "=ds=#s5#, #a1#", "", "22.73%"};
		{ 18, 28579, "", "=q4=Romulo's Poison Vial", "=ds=#s14#", "", "29.54%"};
		{ 19, 28572, "", "=q4=Blade of the Unrequited", "=ds=#h1#, #w4#", "", "13.52%"};
		{ 20, 28573, "", "=q4=Despair", "=ds=#h2#, #w10#", "", "30.07%"};
		{ 24, 0, "INV_Box_01", "=q6="..BabbleBoss["The Big Bad Wolf"], "=q5="..AL["Red Riding Hood"]};
		{ 25, 28582, "", "=q4=Red Riding Hood's Cloak", "=ds=#s4#", "", "12.85%"};
		{ 26, 28583, "", "=q4=Big Bad Wolf's Head", "=ds=#s1#, #a3#", "", "16.37%"};
		{ 27, 28584, "", "=q4=Big Bad Wolf's Paw", "=ds=#h3#, #w13#", "", "16.12%"};
		{ 28, 28581, "", "=q4=Wolfslayer Sniper Rifle", "=ds=#w5#", "", "22.42%"};
		Prev = "KaraMaiden";
		Next = "KaraCurator";
	};

	AtlasLoot_Data["KaraCurator"] = {
		{ 1, 28612, "", "=q4=Pauldrons of the Solace-Giver", "=ds=#s3#, #a1#", "", "15.19%"};
		{ 2, 28647, "", "=q4=Forest Wind Shoulderpads", "=ds=#s3#, #a2#", "", "10.56%"};
		{ 3, 28631, "", "=q4=Dragon-Quake Shoulderguards", "=ds=#s3#, #a3#", "", "13.47%"};
		{ 4, 28621, "", "=q4=Wrynn Dynasty Greaves", "=ds=#s11#, #a4#", "", "11.85%"};
		{ 5, 28649, "", "=q4=Garona's Signet Ring", "=ds=#s13#", "", "12.07%"};
		{ 6, 28633, "", "=q4=Staff of Infinite Mysteries", "=ds=#w9#", "", "12.28%"};
		{ 8, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 29757, "", "=q4=Gloves of the Fallen Champion", "=ds=#m21# #e15#", "", "29.42%"};
		{ 17, 29758, "", "=q4=Gloves of the Fallen Defender", "=ds=#m21# #e15#", "", "23.60%"};
		{ 18, 29756, "", "=q4=Gloves of the Fallen Hero", "=ds=#m21# #e15#", "", "21.66%"};
		Prev = "KaraOperaEvent";
		Next = "KaraIllhoof";
	};

	AtlasLoot_Data["KaraIllhoof"] = {
		{ 1, 28660, "", "=q4=Gilded Thorium Cloak", "=ds=#s4#", "", "14.63%"};
		{ 2, 28653, "", "=q4=Shadowvine Cloak of Infusion", "=ds=#s4#", "", "10.45%"};
		{ 3, 28652, "", "=q4=Cincture of Will", "=ds=#s10#, #a1#", "", "10.75%"};
		{ 4, 28654, "", "=q4=Malefic Girdle", "=ds=#s10#, #a1#", "", "11.04%"};
		{ 5, 28655, "", "=q4=Cord of Nature's Sustenance", "=ds=#s10#, #a2#", "", "14.93%"};
		{ 6, 28656, "", "=q4=Girdle of the Prowler", "=ds=#s10#, #a3#", "", "17.91%"};
		{ 7, 28662, "", "=q4=Breastplate of the Lightbinder", "=ds=#s5#, #a4#", "", "17.31%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 28661, "", "=q4=Mender's Heart-Ring", "=ds=#s13#", "", "11.64%"};
		{ 17, 28785, "", "=q4=The Lightning Capacitor", "=ds=#s14#", "", "10.75%"};
		{ 18, 28657, "", "=q4=Fool's Bane", "=ds=#h1#, #w6#", "", "14.63%"};
		{ 19, 28658, "", "=q4=Terestian's Stranglestaff", "=ds=#w9#", "", "7.46%"};
		{ 20, 28659, "", "=q4=Xavian Stiletto", "=ds=#w11#", "", "13.43%"};
		{ 22, 22561, "", "=q3=Formula: Enchant Weapon - Soulfrost", "=ds=#p4# (375)", "", "0.30%"};
		Prev = "KaraCurator";
		Next = "KaraAran";
	};

	AtlasLoot_Data["KaraAran"] = {
		{ 1, 28672, "", "=q4=Drape of the Dark Reavers", "=ds=#s4#", "", "11.70%"};
		{ 2, 28726, "", "=q4=Mantle of the Mind Flayer", "=ds=#s3#, #a1#", "", "16.03%"};
		{ 3, 28670, "", "=q4=Boots of the Infernal Coven", "=ds=#s12#, #a1#", "", "9.29%"};
		{ 4, 28663, "", "=q4=Boots of the Incorrupt", "=ds=#s12#, #a1#", "", "12.72%"};
		{ 5, 28669, "", "=q4=Rapscallion Boots", "=ds=#s12#, #a2#", "", "11.32%"};
		{ 6, 28671, "", "=q4=Steelspine Faceguard", "=ds=#s1#, #a3#", "", "12.21%"};
		{ 7, 28666, "", "=q4=Pauldrons of the Justice-Seeker", "=ds=#s3#, #a4#", "", "11.58%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 11, 23933, "", "=q1=Medivh's Journal", "=ds=#m3#", "", "100%"};
		{ 16, 28674, "", "=q4=Saberclaw Talisman", "=ds=#s2#", "", "11.20%"};
		{ 17, 28675, "", "=q4=Shermanar Great-Ring", "=ds=#s13#", "", "10.43%"};
		{ 18, 28727, "", "=q4=Pendant of the Violet Eye", "=ds=#s14#", "", "15.39%"};
		{ 19, 28728, "", "=q4=Aran's Soothing Sapphire", "=ds=#s15#", "", "12.72%"};
		{ 20, 28673, "", "=q4=Tirisfal Wand of Ascendancy", "=ds=#w12#", "", "7.25%"};
		{ 22, 22560, "", "=q3=Formula: Enchant Weapon - Sunfire", "=ds=#p4# (375)", "", "0.76%"};
		Prev = "KaraIllhoof";
		Next = "KaraNetherspite";
	};

	AtlasLoot_Data["KaraNetherspite"] = {
		{ 1, 28744, "", "=q4=Uni-Mind Headdress", "=ds=#s1#, #a1#", "", "12.91%"};
		{ 2, 28742, "", "=q4=Pantaloons of Repentence", "=ds=#s11#, #a1#", "", "10.99%"};
		{ 3, 28732, "", "=q4=Cowl of Defiance", "=ds=#s1#, #a2#", "", "17.31%"};
		{ 4, 28741, "", "=q4=Skulker's Greaves", "=ds=#s11#, #a2#", "", "15.38%"};
		{ 5, 28735, "", "=q4=Earthblood Chestguard", "=ds=#s5#, #a3#", "", "15.93%"};
		{ 6, 28740, "", "=q4=Rip-Flayer Leggings", "=ds=#s11#, #a3#", "", "10.16%"};
		{ 7, 28743, "", "=q4=Mantle of Abrahmis", "=ds=#s3#, #a4#", "", "9.34%"};
		{ 8, 28733, "", "=q4=Girdle of Truth", "=ds=#s10#, #a4#", "", "10.44%"};
		{ 16, 28731, "", "=q4=Shining Chain of the Afterworld", "=ds=#s2#", "", "15.11%"};
		{ 17, 28730, "", "=q4=Mithril Band of the Unscarred", "=ds=#s13#", "", "10.99%"};
		{ 18, 28734, "", "=q4=Jewel of Infinite Possibilities", "=ds=#s15#", "", "11.64%"};
		{ 19, 28729, "", "=q4=Spiteblade", "=ds=#h1#, #w10#", "", "6.32%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraAran";
		Next = "KaraChess";
	};

	AtlasLoot_Data["KaraChess"] = {
		{ 1, 28756, "", "=q4=Headdress of the High Potentate", "=ds=#s1#, #a1#", "", "17.98%"};
		{ 2, 28755, "", "=q4=Bladed Shoulderpads of the Merciless", "=ds=#s3#, #a2#", "", "13.55%"};
		{ 3, 28750, "", "=q4=Girdle of Treachery", "=ds=#s10#, #a2#", "", "15.02%"};
		{ 4, 28752, "", "=q4=Forestlord Striders", "=ds=#s12#, #a2#", "", "14.04%"};
		{ 5, 28751, "", "=q4=Heart-Flame Leggings", "=ds=#s11#, #a3#", "", "12.56%"};
		{ 6, 28746, "", "=q4=Fiend Slayer Boots", "=ds=#s12#, #a3#", "", "16.26%"};
		{ 7, 28748, "", "=q4=Legplates of the Innocent", "=ds=#s11#, #a4#", "", "13.79%"};
		{ 8, 28747, "", "=q4=Battlescar Boots", "=ds=#s12#, #a4#", "", "13.79%"};
		{ 16, 28745, "", "=q4=Mithril Chain of Heroism", "=ds=#s2#", "", "12.81%"};
		{ 17, 28753, "", "=q4=Ring of Recurrence", "=ds=#s13#", "", "12.56%"};
		{ 18, 28749, "", "=q4=King's Defender", "=ds=#h1#, #w10#", "", "12.07%"};
		{ 19, 28754, "", "=q4=Triptych Shield of the Ancients", "=ds=#w8#", "", "13.30%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraNetherspite";
		Next = "KaraNightbane";
	};

	AtlasLoot_Data["KaraNightbane"] = {
		{ 1, 28602, "", "=q4=Robe of the Elder Scribes", "=ds=#s5#, #a1#", "", "17.38%"};
		{ 2, 28600, "", "=q4=Stonebough Jerkin", "=ds=#s5#, #a2#", "", "13.33%"};
		{ 3, 28601, "", "=q4=Chestguard of the Conniver", "=ds=#s5#, #a2#", "", "10.24%"};
		{ 4, 28599, "", "=q4=Scaled Breastplate of Carnage", "=ds=#s5#, #a3#", "", "11.67%"};
		{ 5, 28610, "", "=q4=Ferocious Swift-Kickers", "=ds=#s12#, #a3#", "", "15.71%"};
		{ 6, 28597, "", "=q4=Panzar'Thar Breastplate", "=ds=#s5#, #a4#", "", "10.00%"};
		{ 7, 28608, "", "=q4=Ironstriders of Urgency", "=ds=#s12#, #a4#", "", "9.05%"};
		{ 9, 31751, "", "=q1=Blazing Signet", "=ds=#m3#", "", "100%"};
		{ 10, 24139, "", "=q1=Faint Arcane Essence", "=ds=#m3#", "", "100%"};
		{ 16, 28609, "", "=q4=Emberspur Talisman", "=ds=#s2#", "", "13.33%"};
		{ 17, 28603, "", "=q4=Talisman of Nightbane", "=ds=#s15#", "", "12.62%"};
		{ 18, 28604, "", "=q4=Nightstaff of the Everliving", "=ds=#w9#", "", "16.67%"};
		{ 19, 28611, "", "=q4=Dragonheart Flameshield", "=ds=#w8#", "", "13.57%"};
		{ 20, 28606, "", "=q4=Shield of Impenetrable Darkness", "=ds=#w8#", "", "12.14%"};
		{ 22, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraChess";
		Next = "KaraPrince";
	};

	AtlasLoot_Data["KaraPrince"] = {
		{ 1, 28765, "", "=q4=Stainless Cloak of the Pure Hearted", "=ds=#s4#", "", "10.37%"};
		{ 2, 28766, "", "=q4=Ruby Drape of the Mysticant", "=ds=#s4#", "", "12.50%"};
		{ 3, 28764, "", "=q4=Farstrider Wildercloak", "=ds=#s4#", "", "15.96%"};
		{ 4, 28762, "", "=q4=Adornment of Stolen Souls", "=ds=#s2#", "", "9.57%"};
		{ 5, 28763, "", "=q4=Jade Ring of the Everliving", "=ds=#s13#", "", "11.84%"};
		{ 6, 28757, "", "=q4=Ring of a Thousand Marks", "=ds=#s13#", "", "12.90%"};
		{ 8, 28770, "", "=q4=Nathrezim Mindblade", "=ds=#h3#, #w4#", "", "10.64%"};
		{ 9, 28768, "", "=q4=Malchazeen", "=ds=#h1#, #w4#", "", "9.84%"};
		{ 10, 28767, "", "=q4=The Decapitator", "=ds=#h1#, #w1#", "", "15.43%"};
		{ 11, 28773, "", "=q4=Gorehowl", "=ds=#h2#, #w1#", "", "12.63%"};
		{ 12, 28771, "", "=q4=Light's Justice", "=ds=#h3#, #w6#", "", "11.17%"};
		{ 13, 28772, "", "=q4=Sunfury Bow of the Phoenix", "=ds=#w2#", "", "9.97%"};
		{ 16, 29760, "", "=q4=Helm of the Fallen Champion", "=ds=#m21# #e15#", "", "23.01%"};
		{ 17, 29761, "", "=q4=Helm of the Fallen Defender", "=ds=#m21# #e15#", "", "26.73%"};
		{ 18, 29759, "", "=q4=Helm of the Fallen Hero", "=ds=#m21# #e15#", "", "20.48%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraNightbane";
	};

	AtlasLoot_Data["KaraTrash"] = {
		{ 1, 30642, "", "=q4=Drape of the Righteous", "=ds=#s4#", "", "0.22%"};
		{ 2, 30668, "", "=q4=Grasp of the Dead", "=ds=#s9#, #a1#", "", "0.17%"};
		{ 3, 30673, "", "=q4=Inferno Waist Cord", "=ds=#s10#, #a1#", "", "0.21%"};
		{ 4, 30644, "", "=q4=Grips of the Deftness", "=ds=#s9#, #a2#", "", "0.23%"};
		{ 5, 30674, "", "=q4=Zierhut's Lost Treads", "=ds=#s12#, #a2#", "", "0.17%"};
		{ 6, 30643, "", "=q4=Belt of the Tracker", "=ds=#s10#, #a3#", "", "0.19%"};
		{ 7, 30641, "", "=q4=Boots of Elusion", "=ds=#s12#, #a4#", "", "0.13%"};
		{ 9, 23857, "", "=q1=Legacy of the Mountain King", "=ds="};
		{ 10, 23864, "", "=q1=Torment of the Worgen", "=ds="};
		{ 11, 23862, "", "=q1=Redemption of the Fallen", "=ds="};
		{ 12, 23865, "", "=q1=Wrath of the Titans", "=ds="};
		{ 14, 21882, "", "=q1=Soul Essence", "=ds=#e8#"};
		{ 16, 30666, "", "=q4=Ritssyn's Lost Pendant", "=ds=#s2#", "", "0.18%"};
		{ 17, 30667, "", "=q4=Ring of Unrelenting Storms", "=ds=#s13#", "", "0.17%"};
		{ 19, 21903, "", "=q4=Pattern: Soulcloth Shoulders", "=ds=#p8# (375)", "", "0.74%"};
		{ 20, 21904, "", "=q4=Pattern: Soulcloth Vest", "=ds=#p8# (375)", "", "1.07%"};
		{ 21, 22545, "", "=q2=Formula: Enchant Boots - Surefooted", "=ds=#p4# (370)", "", "0.66%"};
	};
		-----------------------
		--- Karazhan Heroic ---
		-----------------------



	AtlasLoot_Data["KaraNamedHEROIC"] = {
		{ 1, 0, "Ability_Hunter_Pet_Spider", "=q6="..BabbleBoss["Hyakiss the Lurker"], "=q5="..AL["Spider"]};
		{ 2, 230675, "", "=q4=Lurker's Cord", "=ds=#s10#, #a1# =q2=#m16#", "", "32.81%"};
		{ 3, 230676, "", "=q4=Lurker's Grasp", "=ds=#s10#, #a2# =q2=#m16#", "", "9.38%"};
		{ 4, 230677, "", "=q4=Lurker's Belt", "=ds=#s10#, #a3# =q2=#m16#", "", "23.44%"};
		{ 5, 230678, "", "=q4=Lurker's Girdle", "=ds=#s10#, #a4# =q2=#m16#", "", "15.62%"};
		{ 7, 0, "Ability_Hunter_Pet_Hyena", "=q6="..BabbleBoss["Rokad the Ravager"], "=q5="..AL["Darkhound"]};
		{ 8, 230684, "", "=q4=Ravager's Cuffs", "=ds=#s8#, #a1# =q2=#m16#", "", "27.78%"};
		{ 9, 230685, "", "=q4=Ravager's Wrist-Wraps", "=ds=#s8#, #a2# =q2=#m16#", "", "11.11%"};
		{ 10, 230686, "", "=q4=Ravager's Bands", "=ds=#s8#, #a3# =q2=#m16#", "", "23.33%"};
		{ 11, 230687, "", "=q4=Ravager's Bracers", "=ds=#s8#, #a4# =q2=#m16#", "", "8.89%"};
		{ 16, 0, "Ability_Hunter_Pet_Bat", "=q6="..BabbleBoss["Shadikith the Glider"], "=q5="..AL["Bat"]};
		{ 17, 230680, "", "=q4=Glider's Foot-Wraps", "=ds=#s12#, #a1# =q2=#m16#", "", "9.68%"};
		{ 18, 230681, "", "=q4=Glider's Boots", "=ds=#s12#, #a2# =q2=#m16#", "", "22.58%"};
		{ 19, 230682, "", "=q4=Glider's Sabatons", "=ds=#s12#, #a3# =q2=#m16#", "", "9.68%"};
		{ 20, 230683, "", "=q4=Glider's Greaves", "=ds=#s12#, #a4# =q2=#m16#", "", "8.60%"};
	};

	AtlasLoot_Data["KaraAttumenHEROIC"] = {
		{ 1, 228477, "", "=q4=Harbinger Bands", "=ds=#s8#, #a1#", "", "14.68%"};
		{ 2, 228507, "", "=q4=Handwraps of Flowing Thought", "=ds=#s9#, #a1#", "", "12.44%"};
		{ 3, 228508, "", "=q4=Gloves of Saintly Blessings", "=ds=#s9#, #a1#", "", "11.69%"};
		{ 4, 228453, "", "=q4=Bracers of the White Stag", "=ds=#s8#, #a2#", "", "12.19%"};
		{ 5, 228506, "", "=q4=Gloves of Dexterous Manipulation", "=ds=#s9#, #a2#", "", "14.68%"};
		{ 6, 228503, "", "=q4=Whirlwind Bracers", "=ds=#s8#, #a3#", "", "9.20%"};
		{ 7, 228454, "", "=q4=Stalker's War Bands", "=ds=#s8#, #a3#", "", "16.17%"};
		{ 8, 228502, "", "=q4=Vambraces of Courage", "=ds=#s8#, #a4#", "", "10.70%"};
		{ 9, 228505, "", "=q4=Gauntlets of Renewed Hope", "=ds=#s9#, #a4#", "", "10.95%"};
		{ 16, 228509, "", "=q4=Worgen Claw Necklace", "=ds=#s2#", "", "17.16%"};
		{ 17, 228510, "", "=q4=Spectral Band of Innervation", "=ds=#s13#", "", "10.70%"};
		{ 18, 228504, "", "=q4=Steelhawk Crossbow", "=ds=#w3#", "", "12.44%"};
		{ 19, 30480, "", "=q4=Fiery Warhorse's Reins", "=ds=#e12#", "", "0.25%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 23, 23809, "", "=q3=Schematic: Stabilized Eternium Scope", "=ds=#p5# (375)", "", "1.00%"};
		Next = "KaraMoroesHEROIC";
	};

	AtlasLoot_Data["KaraMoroesHEROIC"] = {
		{ 1, 228529, "", "=q4=Royal Cloak of Arathi Kings", "=ds=#s4#", "", "15.91%"};
		{ 2, 228570, "", "=q4=Shadow-Cloak of Dalaran", "=ds=#s4#", "", "12.18%"};
		{ 3, 228565, "", "=q4=Nethershard Girdle", "=ds=#s10#, #a1#", "", "14.08%"};
		{ 4, 228545, "", "=q4=Edgewalker Longboots", "=ds=#s12#, #a2#", "", "11.07%"};
		{ 5, 228567, "", "=q4=Belt of Gale Force", "=ds=#s10#, #a3#", "", "12.05%"};
		{ 6, 228566, "", "=q4=Crimson Girdle of the Indomitable", "=ds=#s10#, #a4#", "", "10.81%"};
		{ 7, 228569, "", "=q4=Boots of Valiance", "=ds=#s12#, #a4#", "", "11.33%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 228530, "", "=q4=Brooch of Unquenchable Fury", "=ds=#s2#", "", "12.25%"};
		{ 17, 228528, "", "=q4=Moroes' Lucky Pocket Watch", "=ds=#s14#", "", "12.05%"};
		{ 18, 228525, "", "=q4=Signet of Unshakable Faith", "=ds=#s15#", "", "14.54%"};
		{ 19, 228568, "", "=q4=Idol of the Avian Heart", "=ds=#s16#, #w14#", "", "14.08%"};
		{ 20, 228524, "", "=q4=Emerald Ripper", "=ds=#h1#, #w4#", "", "12.90%"};
		{ 22, 22559, "", "=q3=Formula: Enchant Weapon - Mongoose", "=ds=#p4# (375)", "", "1.05%"};
	Prev = "KaraAttumenHEROIC";
	Next = "KaraMaidenHEROIC";
	};

	AtlasLoot_Data["KaraMaidenHEROIC"] = {
		{ 1, 228511, "", "=q4=Bands of Indwelling", "=ds=#s8#, #a1#", "", "12.46%"};
		{ 2, 228515, "", "=q4=Bands of Nefarious Deeds", "=ds=#s8#, #a1#", "", "13.87%"};
		{ 3, 228517, "", "=q4=Boots of Foretelling", "=ds=#s12#, #a1#", "", "16.96%"};
		{ 4, 228514, "", "=q4=Bracers of Maliciousness", "=ds=#s8#, #a2#", "", "15.90%"};
		{ 5, 228521, "", "=q4=Mitts of the Treemender", "=ds=#s9#, #a2#", "", "13.16%"};
		{ 6, 228520, "", "=q4=Gloves of Centering", "=ds=#s9#, #a3#", "", "13.16%"};
		{ 7, 228519, "", "=q4=Gloves of Quickening", "=ds=#s9#, #a3#", "", "14.22%"};
		{ 8, 228512, "", "=q4=Bracers of Justice", "=ds=#s8#, #a4#", "", "15%"};
		{ 9, 228518, "", "=q4=Iron Gauntlets of the Maiden", "=ds=#s9#, #a4#", "", "12.63%"};
		{ 16, 228516, "", "=q4=Barbed Choker of Discipline", "=ds=#s2#", "", "11.48%"};
		{ 17, 228523, "", "=q4=Totem of Healing Rains", "=ds=#s16#, #w15#", "", "14.58%"};
		{ 18, 228522, "", "=q4=Shard of the Virtuous", "=ds=#h3#, #w6#", "", "10.69%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraMoroesHEROIC";
		Next = "KaraOperaEventHEROIC";
	};

	AtlasLoot_Data["KaraOperaEventHEROIC"] = {
		{ 1, 0, "INV_Box_01", "=q6="..AL["Shared Drops"], ""};
		{ 2, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 3, 228594, "", "=q4=Trial-FireTrousers", "=ds=#s11#, #a1#", "", "15.96%"};
		{ 4, 228591, "", "=q4=Earthsoul Leggings", "=ds=#s11#, #a2#", "", "12.45%"};
		{ 5, 228589, "", "=q4=Beastmaw Pauldrons", "=ds=#s3#, #a3#", "", "12.54%"};
		{ 6, 228593, "", "=q4=Eternium Greathelm", "=ds=#s1#, #a4#", "", "11.53%"};
		{ 7, 228590, "", "=q4=Ribbon of Sacrifice", "=ds=#s14#", "", "18.41%"};
		{ 8, 228592, "", "=q4=Libram of Souls Redeemed", "=ds=#s16#, #w16#", "", "8.38%"};
		{ 10, 0, "INV_Box_01", "=q6="..BabbleBoss["The Crone"], "=q5="..AL["Wizard of Oz"]};
		{ 11, 228586, "", "=q4=Wicked Witch's Hat", "=ds=#s1#, #a1#", "", "20.12%"};
		{ 12, 228585, "", "=q4=Ruby Slippers", "=ds=#s12#, #a1#", "", "25.39%"};
		{ 13, 228587, "", "=q4=Legacy", "=ds=#h2#, #w1#", "", "20.43%"};
		{ 14, 228588, "", "=q4=Blue Diamond Witchwand", "=ds=#w12#", "", "17.96%"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Romulo & Julianne"], "=q5="..AL["Romulo & Julianne"]};
		{ 17, 228578, "", "=q4=Masquerade Gown", "=ds=#s5#, #a1#", "", "22.73%"};
		{ 18, 228579, "", "=q4=Romulo's Poison Vial", "=ds=#s14#", "", "29.54%"};
		{ 19, 228572, "", "=q4=Blade of the Unrequited", "=ds=#h1#, #w4#", "", "13.52%"};
		{ 20, 228573, "", "=q4=Despair", "=ds=#h2#, #w10#", "", "30.07%"};
		{ 24, 0, "INV_Box_01", "=q6="..BabbleBoss["The Big Bad Wolf"], "=q5="..AL["Red Riding Hood"]};
		{ 25, 228582, "", "=q4=Red Riding Hood's Cloak", "=ds=#s4#", "", "12.85%"};
		{ 26, 228583, "", "=q4=Big Bad Wolf's Head", "=ds=#s1#, #a3#", "", "16.37%"};
		{ 27, 228584, "", "=q4=Big Bad Wolf's Paw", "=ds=#h3#, #w13#", "", "16.12%"};
		{ 28, 228581, "", "=q4=Wolfslayer Sniper Rifle", "=ds=#w5#", "", "22.42%"};
		Prev = "KaraMaidenHEROIC";
		Next = "KaraCuratorHEROIC";
	};

	AtlasLoot_Data["KaraCuratorHEROIC"] = {
		{ 1, 228612, "", "=q4=Pauldrons of the Solace-Giver", "=ds=#s3#, #a1#", "", "15.19%"};
		{ 2, 228647, "", "=q4=Forest Wind Shoulderpads", "=ds=#s3#, #a2#", "", "10.56%"};
		{ 3, 228631, "", "=q4=Dragon-Quake Shoulderguards", "=ds=#s3#, #a3#", "", "13.47%"};
		{ 4, 228621, "", "=q4=Wrynn Dynasty Greaves", "=ds=#s11#, #a4#", "", "11.85%"};
		{ 5, 228649, "", "=q4=Garona's Signet Ring", "=ds=#s13#", "", "12.07%"};
		{ 6, 228633, "", "=q4=Staff of Infinite Mysteries", "=ds=#w9#", "", "12.28%"};
		{ 8, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 229757, "", "=q4=Gloves of the Fallen Champion", "=ds=#m21# #e15#", "", "29.42%"};
		{ 17, 229758, "", "=q4=Gloves of the Fallen Defender", "=ds=#m21# #e15#", "", "23.60%"};
		{ 18, 229756, "", "=q4=Gloves of the Fallen Hero", "=ds=#m21# #e15#", "", "21.66%"};
		Prev = "KaraOperaEventHEROIC";
		Next = "KaraIllhoofHEROIC";
	};

	AtlasLoot_Data["KaraIllhoofHEROIC"] = {
		{ 1, 228660, "", "=q4=Gilded Thorium Cloak", "=ds=#s4#", "", "14.63%"};
		{ 2, 228653, "", "=q4=Shadowvine Cloak of Infusion", "=ds=#s4#", "", "10.45%"};
		{ 3, 228652, "", "=q4=Cincture of Will", "=ds=#s10#, #a1#", "", "10.75%"};
		{ 4, 228654, "", "=q4=Malefic Girdle", "=ds=#s10#, #a1#", "", "11.04%"};
		{ 5, 228655, "", "=q4=Cord of Nature's Sustenance", "=ds=#s10#, #a2#", "", "14.93%"};
		{ 6, 228656, "", "=q4=Girdle of the Prowler", "=ds=#s10#, #a3#", "", "17.91%"};
		{ 7, 228662, "", "=q4=Breastplate of the Lightbinder", "=ds=#s5#, #a4#", "", "17.31%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 228661, "", "=q4=Mender's Heart-Ring", "=ds=#s13#", "", "11.64%"};
		{ 17, 228785, "", "=q4=The Lightning Capacitor", "=ds=#s14#", "", "10.75%"};
		{ 18, 228657, "", "=q4=Fool's Bane", "=ds=#h1#, #w6#", "", "14.63%"};
		{ 19, 228658, "", "=q4=Terestian's Stranglestaff", "=ds=#w9#", "", "7.46%"};
		{ 20, 228659, "", "=q4=Xavian Stiletto", "=ds=#w11#", "", "13.43%"};
		{ 22, 22561, "", "=q3=Formula: Enchant Weapon - Soulfrost", "=ds=#p4# (375)", "", "0.30%"};
		Prev = "KaraCuratorHEROIC";
		Next = "KaraAranHEROIC";
	};

	AtlasLoot_Data["KaraAranHEROIC"] = {
		{ 1, 228672, "", "=q4=Drape of the Dark Reavers", "=ds=#s4#", "", "11.70%"};
		{ 2, 228726, "", "=q4=Mantle of the Mind Flayer", "=ds=#s3#, #a1#", "", "16.03%"};
		{ 3, 228670, "", "=q4=Boots of the Infernal Coven", "=ds=#s12#, #a1#", "", "9.29%"};
		{ 4, 228663, "", "=q4=Boots of the Incorrupt", "=ds=#s12#, #a1#", "", "12.72%"};
		{ 5, 228669, "", "=q4=Rapscallion Boots", "=ds=#s12#, #a2#", "", "11.32%"};
		{ 6, 228671, "", "=q4=Steelspine Faceguard", "=ds=#s1#, #a3#", "", "12.21%"};
		{ 7, 228666, "", "=q4=Pauldrons of the Justice-Seeker", "=ds=#s3#, #a4#", "", "11.58%"};
		{ 9, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 11, 223933, "", "=q1=Medivh's Journal", "=ds=#m3#", "", "100%"};
		{ 16, 228674, "", "=q4=Saberclaw Talisman", "=ds=#s2#", "", "11.20%"};
		{ 17, 228675, "", "=q4=Shermanar Great-Ring", "=ds=#s13#", "", "10.43%"};
		{ 18, 228727, "", "=q4=Pendant of the Violet Eye", "=ds=#s14#", "", "15.39%"};
		{ 19, 228728, "", "=q4=Aran's Soothing Sapphire", "=ds=#s15#", "", "12.72%"};
		{ 20, 228673, "", "=q4=Tirisfal Wand of Ascendancy", "=ds=#w12#", "", "7.25%"};
		{ 22, 22560, "", "=q3=Formula: Enchant Weapon - Sunfire", "=ds=#p4# (375)", "", "0.76%"};
		Prev = "KaraIllhoofHEROIC";
		Next = "KaraNetherspiteHEROIC";
	};

	AtlasLoot_Data["KaraNetherspiteHEROIC"] = {
		{ 1, 228744, "", "=q4=Uni-Mind Headdress", "=ds=#s1#, #a1#", "", "12.91%"};
		{ 2, 228742, "", "=q4=Pantaloons of Repentence", "=ds=#s11#, #a1#", "", "10.99%"};
		{ 3, 228732, "", "=q4=Cowl of Defiance", "=ds=#s1#, #a2#", "", "17.31%"};
		{ 4, 228741, "", "=q4=Skulker's Greaves", "=ds=#s11#, #a2#", "", "15.38%"};
		{ 5, 228735, "", "=q4=Earthblood Chestguard", "=ds=#s5#, #a3#", "", "15.93%"};
		{ 6, 228740, "", "=q4=Rip-Flayer Leggings", "=ds=#s11#, #a3#", "", "10.16%"};
		{ 7, 228743, "", "=q4=Mantle of Abrahmis", "=ds=#s3#, #a4#", "", "9.34%"};
		{ 8, 228733, "", "=q4=Girdle of Truth", "=ds=#s10#, #a4#", "", "10.44%"};
		{ 16, 228731, "", "=q4=Shining Chain of the Afterworld", "=ds=#s2#", "", "15.11%"};
		{ 17, 228730, "", "=q4=Mithril Band of the Unscarred", "=ds=#s13#", "", "10.99%"};
		{ 18, 228734, "", "=q4=Jewel of Infinite Possibilities", "=ds=#s15#", "", "11.64%"};
		{ 19, 228729, "", "=q4=Spiteblade", "=ds=#h1#, #w10#", "", "6.32%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraAranHEROIC";
		Next = "KaraChessHEROIC";
	};

	AtlasLoot_Data["KaraChessHEROIC"] = {
		{ 1, 228756, "", "=q4=Headdress of the High Potentate", "=ds=#s1#, #a1#", "", "17.98%"};
		{ 2, 228755, "", "=q4=Bladed Shoulderpads of the Merciless", "=ds=#s3#, #a2#", "", "13.55%"};
		{ 3, 228750, "", "=q4=Girdle of Treachery", "=ds=#s10#, #a2#", "", "15.02%"};
		{ 4, 228752, "", "=q4=Forestlord Striders", "=ds=#s12#, #a2#", "", "14.04%"};
		{ 5, 228751, "", "=q4=Heart-Flame Leggings", "=ds=#s11#, #a3#", "", "12.56%"};
		{ 6, 228746, "", "=q4=Fiend Slayer Boots", "=ds=#s12#, #a3#", "", "16.26%"};
		{ 7, 228748, "", "=q4=Legplates of the Innocent", "=ds=#s11#, #a4#", "", "13.79%"};
		{ 8, 228747, "", "=q4=Battlescar Boots", "=ds=#s12#, #a4#", "", "13.79%"};
		{ 16, 228745, "", "=q4=Mithril Chain of Heroism", "=ds=#s2#", "", "12.81%"};
		{ 17, 228753, "", "=q4=Ring of Recurrence", "=ds=#s13#", "", "12.56%"};
		{ 18, 228749, "", "=q4=King's Defender", "=ds=#h1#, #w10#", "", "12.07%"};
		{ 19, 228754, "", "=q4=Triptych Shield of the Ancients", "=ds=#w8#", "", "13.30%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraNetherspiteHEROIC";
		Next = "KaraNightbaneHEROIC";
	};

	AtlasLoot_Data["KaraNightbaneHEROIC"] = {
		{ 1, 228602, "", "=q4=Robe of the Elder Scribes", "=ds=#s5#, #a1#", "", "17.38%"};
		{ 2, 228600, "", "=q4=Stonebough Jerkin", "=ds=#s5#, #a2#", "", "13.33%"};
		{ 3, 228601, "", "=q4=Chestguard of the Conniver", "=ds=#s5#, #a2#", "", "10.24%"};
		{ 4, 228599, "", "=q4=Scaled Breastplate of Carnage", "=ds=#s5#, #a3#", "", "11.67%"};
		{ 5, 228610, "", "=q4=Ferocious Swift-Kickers", "=ds=#s12#, #a3#", "", "15.71%"};
		{ 6, 228597, "", "=q4=Panzar'Thar Breastplate", "=ds=#s5#, #a4#", "", "10.00%"};
		{ 7, 228608, "", "=q4=Ironstriders of Urgency", "=ds=#s12#, #a4#", "", "9.05%"};
		{ 9, 231751, "", "=q1=Blazing Signet", "=ds=#m3#", "", "100%"};
		{ 10, 224139, "", "=q1=Faint Arcane Essence", "=ds=#m3#", "", "100%"};
		{ 16, 228609, "", "=q4=Emberspur Talisman", "=ds=#s2#", "", "13.33%"};
		{ 17, 228603, "", "=q4=Talisman of Nightbane", "=ds=#s15#", "", "12.62%"};
		{ 18, 228604, "", "=q4=Nightstaff of the Everliving", "=ds=#w9#", "", "16.67%"};
		{ 19, 228611, "", "=q4=Dragonheart Flameshield", "=ds=#w8#", "", "13.57%"};
		{ 20, 228606, "", "=q4=Shield of Impenetrable Darkness", "=ds=#w8#", "", "12.14%"};
		{ 22, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraChessHEROIC";
		Next = "KaraPrinceHEROIC";
	};

	AtlasLoot_Data["KaraPrinceHEROIC"] = {
		{ 1, 228765, "", "=q4=Stainless Cloak of the Pure Hearted", "=ds=#s4#", "", "10.37%"};
		{ 2, 228766, "", "=q4=Ruby Drape of the Mysticant", "=ds=#s4#", "", "12.50%"};
		{ 3, 228764, "", "=q4=Farstrider Wildercloak", "=ds=#s4#", "", "15.96%"};
		{ 4, 228762, "", "=q4=Adornment of Stolen Souls", "=ds=#s2#", "", "9.57%"};
		{ 5, 228763, "", "=q4=Jade Ring of the Everliving", "=ds=#s13#", "", "11.84%"};
		{ 6, 228757, "", "=q4=Ring of a Thousand Marks", "=ds=#s13#", "", "12.90%"};
		{ 8, 228770, "", "=q4=Nathrezim Mindblade", "=ds=#h3#, #w4#", "", "10.64%"};
		{ 9, 228768, "", "=q4=Malchazeen", "=ds=#h1#, #w4#", "", "9.84%"};
		{ 10, 228767, "", "=q4=The Decapitator", "=ds=#h1#, #w1#", "", "15.43%"};
		{ 11, 228773, "", "=q4=Gorehowl", "=ds=#h2#, #w1#", "", "12.63%"};
		{ 12, 228771, "", "=q4=Light's Justice", "=ds=#h3#, #w6#", "", "11.17%"};
		{ 13, 228772, "", "=q4=Sunfury Bow of the Phoenix", "=ds=#w2#", "", "9.97%"};
		{ 16, 229760, "", "=q4=Helm of the Fallen Champion", "=ds=#m21# #e15#", "", "23.01%"};
		{ 17, 229761, "", "=q4=Helm of the Fallen Defender", "=ds=#m21# #e15#", "", "26.73%"};
		{ 18, 229759, "", "=q4=Helm of the Fallen Hero", "=ds=#m21# #e15#", "", "20.48%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "KaraNightbaneHEROIC";
	};

	AtlasLoot_Data["KaraTrashHEROIC"] = {
		{ 1, 230642, "", "=q4=Drape of the Righteous", "=ds=#s4#", "", "0.22%"};
		{ 2, 230668, "", "=q4=Grasp of the Dead", "=ds=#s9#, #a1#", "", "0.17%"};
		{ 3, 230673, "", "=q4=Inferno Waist Cord", "=ds=#s10#, #a1#", "", "0.21%"};
		{ 4, 230644, "", "=q4=Grips of the Deftness", "=ds=#s9#, #a2#", "", "0.23%"};
		{ 5, 230674, "", "=q4=Zierhut's Lost Treads", "=ds=#s12#, #a2#", "", "0.17%"};
		{ 6, 230643, "", "=q4=Belt of the Tracker", "=ds=#s10#, #a3#", "", "0.19%"};
		{ 7, 230641, "", "=q4=Boots of Elusion", "=ds=#s12#, #a4#", "", "0.13%"};
		{ 9, 23857, "", "=q1=Legacy of the Mountain King", "=ds="};
		{ 10, 23864, "", "=q1=Torment of the Worgen", "=ds="};
		{ 11, 23862, "", "=q1=Redemption of the Fallen", "=ds="};
		{ 12, 23865, "", "=q1=Wrath of the Titans", "=ds="};
		{ 14, 21882, "", "=q1=Soul Essence", "=ds=#e8#"};
		{ 16, 230666, "", "=q4=Ritssyn's Lost Pendant", "=ds=#s2#", "", "0.18%"};
		{ 17, 230667, "", "=q4=Ring of Unrelenting Storms", "=ds=#s13#", "", "0.17%"};
		{ 19, 21903, "", "=q4=Pattern: Soulcloth Shoulders", "=ds=#p8# (375)", "", "0.74%"};
		{ 20, 21904, "", "=q4=Pattern: Soulcloth Vest", "=ds=#p8# (375)", "", "1.07%"};
		{ 21, 22545, "", "=q2=Formula: Enchant Boots - Surefooted", "=ds=#p4# (370)", "", "0.66%"};
	};

	
		-------------------------------------
		--- Sunwell Isle: Sunwell Plateau ---
		-------------------------------------

	AtlasLoot_Data["SPKalecgos"] = {
		{ 1, 34170, "", "=q4=Pantaloons of Calming Strife", "=ds=#s11#, #a1#"};
		{ 2, 34386, "", "=q4=Pantaloons of Growing Strife", "=ds=#m29#"};
		{ 3, 34169, "", "=q4=Breeches of Natural Aggression", "=ds=#s11#, #a2#"};
		{ 4, 34384, "", "=q4=Breeches of Natural Splendor", "=ds=#m29#"};
		{ 5, 34168, "", "=q4=Starstalker Legguards", "=ds=#s11#, #a3#", "", "1.#INF%"};
		{ 6, 34167, "", "=q4=Legplates of the Holy Juggernaut", "=ds=#s11#, #a4#"};
		{ 7, 34382, "", "=q4=Judicator's Legguards", "=ds=#m29#"};
		{ 8, 34166, "", "=q4=Band of Lucent Beams", "=ds=#s13#", "", "1.#INF%"};
		{ 9, 34165, "", "=q4=Fang of Kalecgos", "=ds=#h1#, #w4#"};
		{ 10, 34164, "", "=q4=Dragonscale-Encrusted Longblade", "=ds=#h1#, #w10#"};
		{ 16, 34848, "", "=q4=Bracers of the Forgotten Conqueror", "=ds=#m23# #e15#", "", "10%"};
		{ 17, 34851, "", "=q4=Bracers of the Forgotten Protector", "=ds=#m23# #e15#", "", "11%"};
		{ 18, 34852, "", "=q4=Bracers of the Forgotten Vanquisher", "=ds=#m23# #e15#", "", "12%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Next = "SPBrutallus";
	};

	AtlasLoot_Data["SPBrutallus"] = {
		{ 1, 34181, "", "=q4=Leggings of Calamity", "=ds=#s11#, #a1#", "", "15%"};
		{ 2, 34180, "", "=q4=Felfury Legplates", "=ds=#s11#, #a4#", "", "13%"};
		{ 3, 34381, "", "=q4=Felstrength Legplates", "=ds=#m29#"};
		{ 4, 34178, "", "=q4=Collar of the Pit Lord", "=ds=#s2#", "", "15%"};
		{ 5, 34177, "", "=q4=Clutch of Demise", "=ds=#s2#", "", "15%"};
		{ 6, 34179, "", "=q4=Heart of the Pit", "=ds=#s15#", "", "13%"};
		{ 7, 34176, "", "=q4=Reign of Misery", "=ds=#h3#, #w6#", "", "17%"};
		{ 16, 34853, "", "=q4=Belt of the Forgotten Conqueror", "=ds=#m23# #e15#", "", "74%"};
		{ 17, 34854, "", "=q4=Belt of the Forgotten Protector", "=ds=#m23# #e15#", "", "70%"};
		{ 18, 34855, "", "=q4=Belt of the Forgotten Vanquisher", "=ds=#m23# #e15#", "", "75%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "SPKalecgos";
		Next = "SPFelmyst";
	};

	AtlasLoot_Data["SPFelmyst"] = {
		{ 1, 34352, "", "=q4=Borderland Fortress Grips", "=ds=#s9#, #a4#", "", "15%"};
		{ 2, 34188, "", "=q4=Leggings of the Immortal Night", "=ds=#s11#, #a2#", "", "14%"};
		{ 3, 34385, "", "=q4=Leggings of the Immortal Beast", "=ds=#m29#"};
		{ 4, 34186, "", "=q4=Chain Links of the Tumultuous Storm", "=ds=#s11#, #a3#", "", "15%"};
		{ 5, 34383, "", "=q4=Kilt of Spiritual Reconstruction", "=ds=#m29#"};
		{ 6, 34184, "", "=q4=Brooch of the Highborne", "=ds=#s2#", "", "16%"};
		{ 7, 34185, "", "=q4=Sword Breaker's Bulwark", "=ds=#w8#", "", "16%"};
		{ 8, 34182, "", "=q4=Grand Magister's Staff of Torrents", "=ds=#w9#", "", "17%"};
		{ 16, 34856, "", "=q4=Boots of the Forgotten Conqueror", "=ds=#m23# #e15#", "", "79%"};
		{ 17, 34857, "", "=q4=Boots of the Forgotten Protector", "=ds=#m23# #e15#", "", "86%"};
		{ 18, 34858, "", "=q4=Boots of the Forgotten Vanquisher", "=ds=#m23# #e15#", "", "77%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "SPBrutallus";
		Next = "SPEredarTwins";
	};

	AtlasLoot_Data["SPEredarTwins"] = {
		{ 1, 34205, "", "=q4=Shroud of Redeemed Souls", "=ds=#s4#", "", "18%"};
		{ 2, 34190, "", "=q4=Crimson Paragon's Cover", "=ds=#s4#", "", "16%"};
		{ 3, 34210, "", "=q4=Amice of the Convoker", "=ds=#s3#, #a1#", "", "19%"};
		{ 4, 34202, "", "=q4=Shawl of Wonderment", "=ds=#s3#, #a1#", "", "23%"};
		{ 5, 34393, "", "=q4=Shoulderpads of Knowledge's Pursuit", "=ds=#m29#"};
		{ 6, 34209, "", "=q4=Spaulders of Reclamation", "=ds=#s3#, #a2#", "", "20%"};
		{ 7, 34391, "", "=q4=Spaulders of Devastation", "=ds=#m29#"};
		{ 8, 34195, "", "=q4=Shoulderpads of Vehemence", "=ds=#s3#, #a2#", "", "17%"};
		{ 9, 34392, "", "=q4=Demontooth Shoulderpads", "=ds=#m29#"};
		{ 10, 34194, "", "=q4=Mantle of the Golden Forest", "=ds=#s3#, #a3#", "", "21%"};
		{ 11, 34208, "", "=q4=Equilibrium Epaulets", "=ds=#s3#, #a3#", "", "19%"};
		{ 12, 34390, "", "=q4=Erupting Epaulets", "=ds=#m29#"};
		{ 13, 34192, "", "=q4=Pauldrons of Perseverance", "=ds=#s3#, #a4#", "", "19%"};
		{ 14, 34388, "", "=q4=Pauldrons of Berserking", "=ds=#m29#"};
		{ 16, 34193, "", "=q4=Spaulders of the Thalassian Savior", "=ds=#s3#, #a4#", "", "17%"};
		{ 17, 34389, "", "=q4=Spaulders of the Thalassian Defender", "=ds=#m29#"};
		{ 18, 35290, "", "=q4=Sin'dorei Pendant of Conquest", "=ds=#s2#", "", "33%"};
		{ 19, 35291, "", "=q4=Sin'dorei Pendant of Salvation", "=ds=#s2#", "", "32%"};
		{ 20, 35292, "", "=q4=Sin'dorei Pendant of Triumph", "=ds=#s2#", "", "32%"};
		{ 21, 34204, "", "=q4=Amulet of Unfettered Magics", "=ds=#s2#", "", "20%"};
		{ 22, 34189, "", "=q4=Band of Ruinous Delight", "=ds=#s13#", "", "18%"};
		{ 23, 34206, "", "=q4=Book of Highborne Hymns", "=ds=#s15#", "", "22%"};
		{ 24, 34197, "", "=q4=Shiv of Exsanguination", "=ds=#h1#, #w4#", "", "23%"};
		{ 25, 34199, "", "=q4=Archon's Gavel", "=ds=#h3#, #w6#", "", "17%"};
		{ 26, 34203, "", "=q4=Grip of Mannoroth", "=ds=#h4#, #w13#", "", "20%"};
		{ 27, 34198, "", "=q4=Stanchion of Primal Instinct", "=ds=#w9#", "", "19%"};
		{ 28, 34196, "", "=q4=Golden Bow of Quel'Thalas", "=ds=#w3#", "", "18%"};
		{ 30, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "SPFelmyst";
		Next = "SPMuru";
	};

	AtlasLoot_Data["SPMuru"] = {
		{ 1, 34232, "", "=q4=Fel Conquerer Raiments", "=ds=#s5#, #a1#", "", "13%"};
		{ 2, 34233, "", "=q4=Robes of Faltered Light", "=ds=#s5#, #a1#", "", "17%"};
		{ 3, 34399, "", "=q4=Robes of Ghostly Hatred", "=ds=#m29#"};
		{ 4, 34212, "", "=q4=Sunglow Vest", "=ds=#s5#, #a2#", "", "14%"};
		{ 5, 34398, "", "=q4=Utopian Tunic of Elune", "=ds=#m29#"};
		{ 6, 34211, "", "=q4=Harness of Carnal Instinct", "=ds=#s5#, #a2#", "", "15%"};
		{ 7, 34397, "", "=q4=Bladed Chaos Tunic", "=ds=#m29#"};
		{ 8, 34234, "", "=q4=Shadowed Gauntlets of Paroxysm", "=ds=#s9#, #a2#", "", "18%"};
		{ 9, 34408, "", "=q4=Gloves of the Forest Drifter", "=ds=#m29#"};
		{ 10, 34229, "", "=q4=Garments of Serene Shores", "=ds=#s5#, #a3#", "", "13%"};
		{ 11, 34396, "", "=q4=Garments of Crashing Shores", "=ds=#m29#"};
		{ 12, 34228, "", "=q4=Vicious Hawkstrider Hauberk", "=ds=#s5#, #a3#", "", "15%"};
		{ 13, 34215, "", "=q4=Warharness of Reckless Fury", "=ds=#s5#, #a4#", "", "16%"};
		{ 14, 34394, "", "=q4=Breastplate of Agony's Aversion", "=ds=#m29#"};
		{ 15, 34240, "", "=q4=Gauntlets of the Soothed Soul", "=ds=#s9#, #a4#", "", "15%"};
		{ 16, 34216, "", "=q4=Heroic Judicator's Chestguard", "=ds=#s5#, #a4#", "", "16%"};
		{ 17, 34395, "", "=q4=Noble Judicator's Chestguard", "=ds=#m29#"};
		{ 18, 34213, "", "=q4=Ring of Hardened Resolve", "=ds=#s13#", "", "15%"};
		{ 19, 34230, "", "=q4=Ring of Omnipotence", "=ds=#s13#", "", "16%"};
		{ 20, 35282, "", "=q4=Sin'dorei Band of Dominance", "=ds=#s13#", "", "31%"};
		{ 21, 35283, "", "=q4=Sin'dorei Band of Salvation", "=ds=#s13#", "", "31%"};
		{ 22, 35284, "", "=q4=Sin'dorei Band of Triumph", "=ds=#s13#", "", "34%"};
		{ 23, 34427, "", "=q4=Blackened Naaru Sliver", "=ds=#s14#", "", "13%"};
		{ 24, 34430, "", "=q4=Glimmering Naaru Sliver", "=ds=#s14#", "", "16%"};
		{ 25, 34429, "", "=q4=Shifting Naaru Sliver", "=ds=#s14#", "", "15%"};
		{ 26, 34428, "", "=q4=Steely Naaru Sliver", "=ds=#s14#", "", "15%"};
		{ 27, 34214, "", "=q4=Muramasa", "=ds=#h1#, #w10#", "", "16%"};
		{ 28, 34231, "", "=q4=Aegis of Angelic Fortune", "=ds=#w8#", "", "14%"};
		{ 30, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "SPEredarTwins";
		Next = "SPKiljaeden";
	};

	AtlasLoot_Data["SPKiljaeden"] = {
		{ 1, 34241, "", "=q4=Cloak of Unforgivable Sin", "=ds=#s4#", "", "16%"};
		{ 2, 34242, "", "=q4=Tattered Cape of Antonidas", "=ds=#s4#", "", "16%"};
		{ 3, 34339, "", "=q4=Cowl of Light's Purity", "=ds=#s1#, #a1#", "", "18%"};
		{ 4, 34405, "", "=q4=Helm of Arcane Purity", "=ds=#m29#"};
		{ 5, 34340, "", "=q4=Dark Conjuror's Collar", "=ds=#s1#, #a1#", "", "20%"};
		{ 6, 34342, "", "=q4=Handguards of the Dawn", "=ds=#s9#, #a1#", "", "19%"};
		{ 7, 34406, "", "=q4=Gloves of Tyri's Power", "=ds=#m29#"};
		{ 8, 34344, "", "=q4=Handguards of the Defiled Worlds", "=ds=#s9#, #a1#", "", "22%"};
		{ 9, 34244, "", "=q4=Duplicitous Guise", "=ds=#s1#, #a2#", "", "17%"};
		{ 10, 34404, "", "=q4=Mask of the Furry Hunter", "=ds=#m29#"};
		{ 11, 34245, "", "=q4=Cover of Ursol the Wise", "=ds=#s1#, #a2#", "", "14%"};
		{ 12, 34403, "", "=q4=Cover of Ursoc the Mighty", "=ds=#m29#"};
		{ 13, 34333, "", "=q4=Coif of Alleria", "=ds=#s1#, #a3#", "", "14%"};
		{ 14, 34332, "", "=q4=Cowl of Gul'dan", "=ds=#s1#, #a3#", "", "14%"};
		{ 15, 34402, "", "=q4=Shroud of Chieftain Ner'zhul", "=ds=#m29#"};
		{ 16, 34343, "", "=q4=Thalassian Ranger Gauntlets", "=ds=#s9#, #a3#", "", "18%"};
		{ 17, 34243, "", "=q4=Helm of Burning Righteousness", "=ds=#s1#, #a4#", "", "21%"};
		{ 18, 34401, "", "=q4=Helm of Uther's Resolve", "=ds=#m29#"};
		{ 19, 34345, "", "=q4=Crown of Anasterian", "=ds=#s1#, #a4#", "", "16%"};
		{ 20, 34400, "", "=q4=Crown of Dath'Remar", "=ds=#m29#"};
		{ 21, 34341, "", "=q4=Borderland Paingrips", "=ds=#s9#, #a4#", "", "18%"};
		{ 23, 34334, "", "=q5=Thori'dal, the Stars' Fury", "=ds=#w2#", "", "6%"};
		{ 25, 34329, "", "=q4=Crux of the Apocalypse", "=ds=#h1#, #w4#", "", "16%"};
		{ 26, 34247, "", "=q4=Apolyon, the Soul-Render", "=ds=#h2#, #w10#", "", "17%"};
		{ 27, 34335, "", "=q4=Hammer of Sanctification", "=ds=#h3#, #w6#", "", "20%"};
		{ 28, 34331, "", "=q4=Hand of the Deceiver", "=ds=#h3#, #w13#", "", "17%"};
		{ 29, 34336, "", "=q4=Sunflare", "=ds=#h3#, #w4#", "", "18%"};
		{ 30, 34337, "", "=q4=Golden Staff of the Sin'dorei", "=ds=#w9#", "", "14%"};
		Prev = "SPMuru";
	};

	AtlasLoot_Data["SPTrash"] = {
		{ 1, 34351, "", "=q4=Tranquil Majesty Wraps", "=ds=#s9#, #a2#", "", "1%"};
		{ 2, 34407, "", "=q4=Tranquil Moonlight Wraps", "=ds=#m29#"};
		{ 3, 34350, "", "=q4=Gauntlets of the Ancient Shadowmoon", "=ds=#s9#, #a3#", "", "2%"};
		{ 4, 34409, "", "=q4=Gauntlets of the Ancient Frostwolf", "=ds=#m29#"};
		{ 5, 35733, "", "=q4=Ring of Harmonic Beauty", "=ds=#s13#", "", "8%"};
		{ 6, 34183, "", "=q4=Shivering Felspine", "=ds=#h2#, #w7#", "", "1%"};
		{ 7, 34346, "", "=q4=Mounting Vengeance", "=ds=#h4#, #w13#", "", "2%"};
		{ 8, 34349, "", "=q4=Blade of Life's Inevitability", "=ds=#w11#", "", "2%"};
		{ 9, 34348, "", "=q4=Wand of Cleansing Light", "=ds=#w12#", "", "4%"};
		{ 10, 34347, "", "=q4=Wand of the Demonsoul", "=ds=#w12#", "", "2%"};
		{ 12, 35273, "", "=q3=Study of Advanced Smelting", "=ds=#p23# (375)", "", "3%"};
		{ 14, 34664, "", "=q3=Sunmote", "=ds=#m20#", "", "66%"};
		{ 16, 32228, "", "=q4=Empyrean Sapphire", "=ds=#e7#", "", "12%"};
		{ 17, 32231, "", "=q4=Pyrestone", "=ds=#e7#", "", "8%"};
		{ 18, 32229, "", "=q4=Lionseye", "=ds=#e7#", "", "6%"};
		{ 19, 32249, "", "=q4=Seaspray Emerald", "=ds=#e7#", "", "9%"};
		{ 20, 32230, "", "=q4=Shadowsong Amethyst", "=ds=#e7#", "", "6%"};
		{ 21, 32227, "", "=q4=Crimson Spinel", "=ds=#e7#", "", "8%"};
		{ 23, 35208, "", "=q4=Plans: Sunblessed Gauntlets", "=ds=#p2# (365)", "", "0.25%"};
		{ 24, 35210, "", "=q4=Plans: Sunblessed Breastplate", "=ds=#p2# (365)", "", "0.25%"};
		{ 25, 35209, "", "=q4=Plans: Hard Khorium Battlefists", "=ds=#p2# (365)", "", "6%"};
		{ 26, 35211, "", "=q4=Plans: Hard Khorium Battleplate", "=ds=#p2# (365)", "", "0.38%"};
	};

	AtlasLoot_Data["SPPatterns"] = {
		{ 1, 35212, "", "=q4=Pattern: Leather Gauntlets of the Sun", "=ds=#p7# (365)"};
		{ 2, 35216, "", "=q4=Pattern: Leather Chestguard of the Sun", "=ds=#p7# (365)"};
		{ 3, 35213, "", "=q4=Pattern: Fletcher's Gloves of the Phoenix", "=ds=#p7# (365)"};
		{ 4, 35217, "", "=q4=Pattern: Pattern: Embrace of the Phoenix", "=ds=#p7# (365)"};
		{ 5, 35214, "", "=q4=Pattern: Gloves of Immortal Dusk", "=ds=#p7# (365)"};
		{ 6, 35218, "", "=q4=Pattern: Carapace of Sun and Shadow", "=ds=#p7# (365)"};
		{ 7, 35215, "", "=q4=Pattern: Sun-Drenched Scale Gloves", "=ds=#p7# (365)"};
		{ 8, 35219, "", "=q4=Pattern: Sun-Drenched Scale Chestguard", "=ds=#p7# (365)"};
		{ 9, 35204, "", "=q4=Pattern: Sunfire Handwraps", "=ds=#p8# (365)"};
		{ 10, 35206, "", "=q4=Pattern: Sunfire Robe", "=ds=#p8# (365)"};
		{ 11, 35205, "", "=q4=Pattern: Hands of Eternal Light", "=ds=#p8# (365)"};
		{ 12, 35207, "", "=q4=Pattern: Robe of Eternal Light", "=ds=#p8# (365)"};
		{ 13, 35198, "", "=q4=Design: Loop of Forged Power", "=ds=#p12# (365)"};
		{ 14, 35201, "", "=q4=Design: Pendant of Sunfire", "=ds=#p12# (365)"};
		{ 15, 35199, "", "=q4=Design: Ring of Flowing Life", "=ds=#p12# (365)"};
		{ 16, 35202, "", "=q4=Design: Amulet of Flowing Life", "=ds=#p12# (365)"};
		{ 17, 35200, "", "=q4=Design: Hard Khorium Band", "=ds=#p12# (365)"};
		{ 18, 35203, "", "=q4=Design: Hard Khorium Choker", "=ds=#p12# (365)"};
		{ 19, 35186, "", "=q4=Schematic: Annihilator Holo-Gogs", "=ds=#p5# (375)"};
		{ 20, 35187, "", "=q4=Schematic: Justicebringer 3000 Specs", "=ds=#p5# (375)"};
		{ 21, 35189, "", "=q4=Schematic: Powerheal 9000 Lens", "=ds=#p5# (375)"};
		{ 22, 35190, "", "=q4=Schematic: Hyper-Magnified Moon Specs", "=ds=#p5# (375)"};
		{ 23, 35191, "", "=q4=Schematic: Wonderheal XT68 Shades", "=ds=#p5# (375)"};
		{ 24, 35192, "", "=q4=Schematic: Primal-Attuned Goggles", "=ds=#p5# (375)"};
		{ 25, 35193, "", "=q4=Schematic: Lightning Etched Specs", "=ds=#p5# (375)"};
		{ 26, 35194, "", "=q4=Schematic: Surestrike Goggles v3.0", "=ds=#p5# (375)"};
		{ 27, 35195, "", "=q4=Schematic: Mayhem Projection Goggles", "=ds=#p5# (375)"};
		{ 28, 35196, "", "=q4=Schematic: Hard Khorium Goggles", "=ds=#p5# (375)"};
		{ 29, 35197, "", "=q4=Schematic: Quad Deathblow X44 Goggles", "=ds=#p5# (375)"};
	};

		-----------------------------
		--- Tempest Keep: The Eye ---
		-----------------------------

	AtlasLoot_Data["TKEyeAlar"] = {
		{ 1, 29925, "", "=q4=Phoenix-Wing Cloak", "=ds=#s4#", "", "23%"};
		{ 2, 29918, "", "=q4=Mindstorm Wristbands", "=ds=#s8#, #a1#", "", "22%"};
		{ 3, 29947, "", "=q4=Gloves of the Searing Grip", "=ds=#s9#, #a2#", "", "23%"};
		{ 4, 29921, "", "=q4=Fire Crest Breastplate", "=ds=#s5#, #a3#", "", "20%"};
		{ 5, 29922, "", "=q4=Band of Al'Ar", "=ds=#s13#", "", "21%"};
		{ 6, 29920, "", "=q4=Phoenix-Ring of Rebirth", "=ds=#s13#", "", "21%"};
		{ 7, 30448, "", "=q4=Talon of Al'ar", "=ds=#s14#, =q1=#m1# =ds=#c2#", "", "22%"};
		{ 8, 30447, "", "=q4=Tome of Fiery Redemption", "=ds=#s14#, =q1=#m1# =ds=#c4#", "", "21%"};
		{ 9, 29923, "", "=q4=Talisman of the Sun King", "=ds=#s15#", "", "23%"};
		{ 16, 32944, "", "=q4=Talon of the Phoenix", "=ds=#h3#, #w13#", "", "12%"};
		{ 17, 29948, "", "=q4=Claw of the Phoenix", "=ds=#h4#, #w13#", "", "10%"};
		{ 18, 29924, "", "=q4=Netherbane", "=ds=#h1#, #w1#", "", "21%"};
		{ 19, 29949, "", "=q4=Arcanite Steam-Pistol", "=ds=#w5#", "", "22%"};
		{ 21, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Next = "TKEyeVoidReaver";
	};

	AtlasLoot_Data["TKEyeVoidReaver"] = {
		{ 1, 29986, "", "=q4=Cowl of the Grand Engineer", "=ds=#s1#, #a1#", "", "13%"};
		{ 2, 29984, "", "=q4=Girdle of Zaetar", "=ds=#s10#, #a2#", "", "13%"};
		{ 3, 29985, "", "=q4=Void Reaver Greaves", "=ds=#s11#, #a3#", "", "14%"};
		{ 4, 29983, "", "=q4=Fel-Steel Warhelm", "=ds=#s1#, #a4#", "", "12%"};
		{ 5, 32515, "", "=q4=Wristguards of Determination", "=ds=#s8#, #a4#", "", "13%"};
		{ 6, 30619, "", "=q4=Fel Reaver's Piston", "=ds=#s14#", "", "13%"};
		{ 7, 30450, "", "=q4=Warp-Spring Coil", "=ds=#s14#, =q1=#m1# =ds=#c6#", "", "12%"};
		{ 16, 30248, "", "=q4=Pauldrons of the Vanquished Champion", "=ds=#m22# #e15#", "", "61%"};
		{ 17, 30249, "", "=q4=Pauldrons of the Vanquished Defender", "=ds=#m22# #e15#", "", "62%"};
		{ 18, 30250, "", "=q4=Pauldrons of the Vanquished Hero", "=ds=#m22# #e15#", "", "61%"};
		{ 20, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "TKEyeAlar";
		Next = "TKEyeSolarian";
	};

	AtlasLoot_Data["TKEyeSolarian"] = {
		{ 1, 29977, "", "=q4=Star-Soul Breeches", "=ds=#s11#, #a1#", "", "19%"};
		{ 2, 29972, "", "=q4=Trousers of the Astromancer", "=ds=#s11#, #a1#", "", "19%"};
		{ 3, 29966, "", "=q4=Vambraces of Ending", "=ds=#s8#, #a2#", "", "23%"};
		{ 4, 29976, "", "=q4=Worldstorm Gauntlets", "=ds=#s9#, #a3#", "", "18%"};
		{ 5, 29951, "", "=q4=Star-Strider Boots", "=ds=#s12#, #a3#", "", "23%"};
		{ 6, 29965, "", "=q4=Girdle of the Righteous Path", "=ds=#s10#, #a4#", "", "21%"};
		{ 7, 29950, "", "=q4=Greaves of the Bloodwarder", "=ds=#s11#, #a4#", "", "19%"};
		{ 8, 32267, "", "=q4=Boots of the Resilient", "=ds=#s12#, #a4#", "", "17%"};
		{ 16, 30446, "", "=q4=Solarian's Sapphire", "=ds=#s14#, =q1=#m1# =ds=#c9#", "", "21%"};
		{ 17, 30449, "", "=q4=Void Star Talisman", "=ds=#s14#, =q1=#m1# =ds=#c8#", "", "22%"};
		{ 18, 29962, "", "=q4=Heartrazor", "=ds=#h1#, #w4#", "", "23%"};
		{ 19, 29981, "", "=q4=Ethereum Life-Staff", "=ds=#w9#", "", "21%"};
		{ 20, 29982, "", "=q4=Wand of the Forgotten Star", "=ds=#w12#", "", "18%"};
		{ 22, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		Prev = "TKEyeVoidReaver";
		Next = "TKEyeKaelthas";
	};

	AtlasLoot_Data["TKEyeKaelthas"] = {
		{ 1, 29992, "", "=q4=Royal Cloak of the Sunstriders", "=ds=#s4#", "", "14%"};
		{ 2, 29989, "", "=q4=Sunshower Light Cloak", "=ds=#s4#", "", "12%"};
		{ 3, 29994, "", "=q4=Thalassian Wildercloak", "=ds=#s4#", "", "14%"};
		{ 4, 29990, "", "=q4=Crown of the Sun", "=ds=#s1#, #a1#", "", "14%"};
		{ 5, 29987, "", "=q4=Gauntlets of the Sun-King", "=ds=#s9#, #a1#", "", "14%"};
		{ 6, 29995, "", "=q4=Leggings of Murderous Intent", "=ds=#s11#, #a2#", "", "15%"};
		{ 7, 29991, "", "=q4=Sunhawk Leggings", "=ds=#s11#, #a3#", "", "13%"};
		{ 8, 29998, "", "=q4=Royal Gauntlets of Silvermoon", "=ds=#s9#, #a4#", "", "12%"};
		{ 9, 29997, "", "=q4=Band of the Ranger-General", "=ds=#s13#", "", "14%"};
		{ 10, 29993, "", "=q4=Twinblade of the Phoenix", "=ds=#h2#, #w10#", "", "12%"};
		{ 11, 29996, "", "=q4=Rod of the Sun King", "=ds=#h1#, #w6#", "", "15%"};
		{ 12, 29988, "", "=q4=The Nexus Key", "=ds=#w9#", "", "14%"};
		{ 14, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 16, 30236, "", "=q4=Chestguard of the Vanquished Champion", "=ds=#m22# #e15#", "", "69%"};
		{ 17, 30237, "", "=q4=Chestguard of the Vanquished Defender", "=ds=#m22# #e15#", "", "68%"};
		{ 18, 30238, "", "=q4=Chestguard of the Vanquished Hero", "=ds=#m22# #e15#", "", "66%"};
		{ 20, 32458, "", "=q4=Ashes of Al'ar", "=ds=#e12#", "", "2%"};
		{ 22, 32405, "", "=q4=Verdant Sphere", "=ds=#m2#", "", "100%"};
		{ 23, 30018, "", "=q4=Lord Sanguinar's Claim", "=q1=#m4#: =ds=#s2#"};
		{ 24, 30017, "", "=q4=Telonicus's Pendant of Mayhem", "=q1=#m4#: =ds=#s2#"};
		{ 25, 30007, "", "=q4=The Darkener's Grasp", "=q1=#m4#: =ds=#s2#"};
		{ 26, 30015, "", "=q4=The Sun King's Talisman", "=q1=#m4#: =ds=#s2#"};
		{ 28, 29905, "", "=q1=Kael's Vial Remnant", "=ds=#m3#", "", "37%"};
		Prev = "TKEyeSolarian";
	};

	AtlasLoot_Data["TKEyeTrash"] = {
		{ 1, 30024, "", "=q4=Mantle of the Elven Kings", "=ds=#s3#, #a1#", "", "3%"};
		{ 2, 30020, "", "=q4=Fire-Cord of the Magus", "=ds=#s10#, #a1#", "", "2%"};
		{ 3, 30029, "", "=q4=Bark-Gloves of Ancient Wisdom", "=ds=#s9#, #a2#", "", "2%"};
		{ 4, 30026, "", "=q4=Bands of the Celestial Archer", "=ds=#s8#, #a3#", "", "2%"};
		{ 5, 30030, "", "=q4=Girdle of Fallen Stars", "=ds=#s10#, #a3#", "", "2%"};
		{ 6, 30028, "", "=q4=Seventh Ring of the Tirisfalen", "=ds=#s13#", "", "2%"};
		{ 8, 30324, "", "=q4=Plans: Red Havoc Boots", "=ds=#p2# (375)", "", "1%"};
		{ 9, 30322, "", "=q4=Plans: Red Belt of Battle", "=ds=#p2# (375)", "", "2%"};
		{ 10, 30323, "", "=q4=Plans: Boots of the Protector", "=ds=#p2# (375)", "", "2%"};
		{ 11, 30321, "", "=q4=Plans: Belt of the Guardian", "=ds=#p2# (375)", "", "2%"};
		{ 12, 30280, "", "=q4=Pattern: Belt of Blasting", "=ds=#p8# (375)", "", "1%"};
		{ 13, 30282, "", "=q4=Pattern: Boots of Blasting", "=ds=#p8# (375)", "", "1%"};
		{ 14, 30283, "", "=q4=Pattern: Boots of the Long Road", "=ds=#p8# (375)", "", "2%"};
		{ 15, 30281, "", "=q4=Pattern: Belt of the Long Road", "=ds=#p8# (375)", "", "1%"};
		{ 16, 30308, "", "=q4=Pattern: Hurricane Boots", "=ds=#p7# (375)", "", "1%"};
		{ 17, 30304, "", "=q4=Pattern: Monsoon Belt", "=ds=#p7# (375)", "", "1%"};
		{ 18, 30305, "", "=q4=Pattern: Boots of Natural Grace", "=ds=#p7# (375)", "", "2%"};
		{ 19, 30307, "", "=q4=Pattern: Boots of the Crimson Hawk", "=ds=#p7# (375)", "", "1%"};
		{ 20, 30306, "", "=q4=Pattern: Boots of Utter Darkness", "=ds=#p7# (375)", "", "2%"};
		{ 21, 30301, "", "=q4=Pattern: Belt of Natural Power", "=ds=#p7# (375)", "", "1%"};
		{ 22, 30303, "", "=q4=Pattern: Belt of the Black Eagle", "=ds=#p7# (375)", "", "1%"};
		{ 23, 30302, "", "=q4=Pattern: Belt of Deep Shadow", "=ds=#p7# (375)", "", "1%"};
		{ 25, 30183, "", "=q4=Nether Vortex", "=ds=#e8#", "", "75%"};
		{ 27, 32897, "", "=q2=Mark of the Illidari", "=ds=#m20#", "", "27%"};
	};

	AtlasLoot_Data["TKEyeLegendaries"] = {
		{ 1, 30312, "", "=q5=Infinity Blade", "=ds=#h1#, #w4#"};
		{ 2, 30311, "", "=q5=Warp Slicer", "=ds=#h1#, #w10#"};
		{ 3, 30317, "", "=q5=Cosmic Infuser", "=ds=#h3#, #w6#"};
		{ 4, 30316, "", "=q5=Devastation", "=ds=#h2#, #w1#"};
		{ 5, 30313, "", "=q5=Staff of Disintegration", "=ds=#w9#"};
		{ 6, 30314, "", "=q5=Phaseshift Bulwark", "=ds=#w8#"};
		{ 7, 30318, "", "=q5=Netherstrand Longbow", "=ds=#w2#, =q1=#m1# =ds=#c2#"};
		{ 8, 30319, "", "=q5=Nether Spike", "=ds=#w17#"};
	};

		----------------
		--- Zul'Aman ---
		----------------

	AtlasLoot_Data["ZANalorakk"] = {
		{ 1, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 2, 33203, "", "=q4=Robes of Heavenly Purpose", "=ds=#s5#, #a1#", "", "13%"};
		{ 3, 33285, "", "=q4=Fury of the Ursine", "=ds=#s8#, #a1#", "", "13%"};
		{ 4, 33211, "", "=q4=Bladeangel's Money Belt", "=ds=#s10#, #a2#", "", "14%"};
		{ 5, 33206, "", "=q4=Pauldrons of Primal Fury", "=ds=#s3#, #a3#", "", "13%"};
		{ 6, 33327, "", "=q4=Mask of Introspection", "=ds=#s1#, #a4#", "", "13%"};
		{ 7, 33191, "", "=q4=Jungle Stompers", "=ds=#s12#, #a4#", "", "13%"};
		{ 8, 33640, "", "=q4=Fury", "=ds=#h4#, #w13#", "", "14%"};
		{ 10, 33307, "", "=q3=Formula: Enchant Weapon - Executioner", "=ds=#p4# (375)", "", "3%"};
		Next = "ZAAkilZon";
	};

	AtlasLoot_Data["ZAAkilZon"] = {
		{ 1, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 2, 33286, "", "=q4=Mojo-mender's Mask", "=ds=#s1#, #a3#", "", "13%"};
		{ 3, 33215, "", "=q4=Bloodstained Elven Battlevest", "=ds=#s5#, #a4#", "", "13%"};
		{ 4, 33216, "", "=q4=Chestguard of Hidden Purpose", "=ds=#s5#, #a4#", "", "13%"};
		{ 5, 33281, "", "=q4=Brooch of Nature's Mercy", "=ds=#s2#", "", "13%"};
		{ 6, 33293, "", "=q4=Signet of Ancient Magics", "=ds=#s13#", "", "13%"};
		{ 7, 33214, "", "=q4=Akil'zon's Talonblade", "=ds=#h1#, #w10#", "", "13%"};
		{ 8, 33283, "", "=q4=Amani Punisher", "=ds=#h3#, #w6#", "", "14%"};
		{ 10, 33307, "", "=q3=Formula: Enchant Weapon - Executioner", "=ds=#p4# (375)", "", "3%"};
		Prev = "ZANalorakk";
		Next = "ZAJanAlai";
	};

	AtlasLoot_Data["ZAJanAlai"] = {
		{ 1, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 2, 33357, "", "=q4=Footpads of Madness", "=ds=#s12#, #a1#", "", "13%"};
		{ 3, 33356, "", "=q4=Helm of Natural Regeneration", "=ds=#s1#, #a2#", "", "13%"};
		{ 4, 33329, "", "=q4=Shadowtooth Trollskin Cuirass", "=ds=#s5#, #a2#", "", "13%"};
		{ 5, 33328, "", "=q4=Arrow-fall Chestguard", "=ds=#s5#, #a3#", "", "13%"};
		{ 6, 33354, "", "=q4=Wub's Cursed Hexblade", "=ds=#h3#, #w4#", "", "14%"};
		{ 7, 33326, "", "=q4=Bulwark of the Amani Empire", "=ds=#w8#", "", "13%"};
		{ 8, 33332, "", "=q4=Enamelled Disc of Mojo", "=ds=#w8#", "", "12%"};
		{ 10, 33307, "", "=q3=Formula: Enchant Weapon - Executioner", "=ds=#p4# (375)", "", "3%"};
		Prev = "ZAAkilZon";
		Next = "ZAHalazzi";
	};

	AtlasLoot_Data["ZAHalazzi"] = {
		{ 1, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 2, 33317, "", "=q4=Robe of Departed Spirits", "=ds=#s5#, #a1#", "", "13%"};
		{ 3, 33300, "", "=q4=Shoulderpads of Dancing Blades", "=ds=#s3#, #a2#", "", "14%"};
		{ 4, 33322, "", "=q4=Shimmer-pelt Vest", "=ds=#s5#, #a2#", "", "13%"};
		{ 5, 33533, "", "=q4=Avalanche Leggings", "=ds=#s11#, #a3#", "", "13%"};
		{ 6, 33299, "", "=q4=Spaulders of the Advocate", "=ds=#s3#, #a4#", "", "13%"};
		{ 7, 33303, "", "=q4=Skullshatter Warboots", "=ds=#s12#, #a4#", "", "14%"};
		{ 8, 33297, "", "=q4=The Savage's Choker", "=ds=#s2#", "", "13%"};
		{ 10, 33307, "", "=q3=Formula: Enchant Weapon - Executioner", "=ds=#p4# (375)", "", "3%"};
		Prev = "ZAJanAlai";
		Next = "ZAMalacrass";
	};

	AtlasLoot_Data["ZAMalacrass"] = {
		{ 1, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 2, 33592, "", "=q4=Cloak of Ancient Rituals", "=ds=#s4#", "", "13%"};
		{ 3, 33453, "", "=q4=Hood of Hexing", "=ds=#s1#, #a1#", "", "13%"};
		{ 4, 33463, "", "=q4=Hood of the Third Eye", "=ds=#s1#, #a1#", "", "13%"};
		{ 5, 33432, "", "=q4=Coif of the Jungle Stalker", "=ds=#s1#, #a3#", "", "15%"};
		{ 6, 33464, "", "=q4=Hex Lord's Voodoo Pauldrons", "=ds=#s3#, #a3#", "", "13%"};
		{ 7, 33421, "", "=q4=Battleworn Tuskguard", "=ds=#s1#, #a4#", "", "15%"};
		{ 8, 33446, "", "=q4=Girdle of Stromgarde's Hope", "=ds=#s10#, #a4#", "", "15%"};
		{ 10, 33307, "", "=q3=Formula: Enchant Weapon - Executioner", "=ds=#p4# (375)", "", "3%"};
		{ 16, 33829, "", "=q4=Hex Shrunken Head", "=ds=#s14#", "", "12%"};
		{ 17, 34029, "", "=q4=Tiny Voodoo Mask", "=ds=#s14#", "", "25%"};
		{ 18, 33828, "", "=q4=Tome of Diabolic Remedy", "=ds=#s14#", "", "13%"};
		{ 19, 33389, "", "=q4=Dagger of Bad Mojo", "=ds=#h1#, #w4#", "", "15%"};
		{ 20, 33298, "", "=q4=Prowler's Strikeblade", "=ds=#h1#, #w4#", "", "14%"};
		{ 21, 33388, "", "=q4=Heartless", "=ds=#h1#, #w10#", "", "15%"};
		{ 22, 33465, "", "=q4=Staff of Primal Fury", "=ds=#w9#", "", "13%"};
		Prev = "ZAHalazzi";
		Next = "ZAZuljin";
	};

	AtlasLoot_Data["ZAZuljin"] = {
		{ 1, 29434, "", "=q4=Badge of Justice", "=ds=#e15#", "", "100%"};
		{ 2, 33471, "", "=q4=Two-toed Sandals", "=ds=#s12#, #a1#", "", "15%"};
		{ 3, 33479, "", "=q4=Grimgin Faceguard", "=ds=#s1#, #a2#", "", "15%"};
		{ 4, 33469, "", "=q4=Hauberk of the Empire's Champion", "=ds=#s5#, #a3#", "", "16%"};
		{ 5, 33473, "", "=q4=Chestguard of the Warlord", "=ds=#s5#, #a4#", "", "15%"};
		{ 6, 33466, "", "=q4=Loop of Cursed Bones", "=ds=#s2#", "", "14%"};
		{ 7, 33830, "", "=q4=Ancient Aqir Artifact", "=ds=#s14#", "", "14%"};
		{ 8, 33831, "", "=q4=Berserker's Call", "=ds=#s14#", "", "14%"};
		{ 10, 33307, "", "=q3=Formula: Enchant Weapon - Executioner", "=ds=#p4# (375)", "", "3%"};
		{ 16, 33467, "", "=q4=Blade of Twisted Visions", "=ds=#h3#, #w10#", "", "14%"};
		{ 17, 33478, "", "=q4=Jin'rohk, The Great Apocalypse", "=ds=#h2#, #w10#", "", "14%"};
		{ 18, 33476, "", "=q4=Cleaver of the Unforgiving", "=ds=#h1#, #w1#", "", "15%"};
		{ 19, 33468, "", "=q4=Dark Blessing", "=ds=#h3#, #w6#", "", "15%"};
		{ 20, 33474, "", "=q4=Ancient Amani Longbow", "=ds=#w2#", "", "14%"};
		{ 22, 33102, "", "=q4=Blood of Zul'Jin", "=ds=#m2#", "", "87%"};
		Prev = "ZAMalacrass";
	};

	AtlasLoot_Data["ZATimedChest"] = {
		{ 1, 0, "INV_Box_01", "=q6=#x30#", ""};
		{ 2, 33590, "", "=q4=Cloak of Fiends", "=ds=#s4#", "", "10%"};
		{ 3, 33591, "", "=q4=Shadowcaster's Drape", "=ds=#s4#", "", "11%"};
		{ 4, 33489, "", "=q4=Mantle of Ill Intent", "=ds=#s3#, #a1#", "", "11%"};
		{ 5, 33480, "", "=q4=Cord of Braided Troll Hair", "=ds=#s10#, #a1#", "", "10%"};
		{ 6, 33483, "", "=q4=Life-step Belt", "=ds=#s10#, #a2#", "", "12%"};
		{ 7, 33971, "", "=q4=Elunite Imbued Leggings", "=ds=#s11#, #a2#", "", "10%"};
		{ 8, 33805, "", "=q4=Shadowhunter's Treads", "=ds=#s12#, #a3#", "", "10%"};
		{ 9, 33481, "", "=q4=Pauldrons of Stone Resolve", "=ds=#s3#, #a4#", "", "11%"};
		{ 16, 0, "INV_Box_01", "=q6=#x31#", ""};
		{ 17, 33495, "", "=q4=Rage", "=ds=#h3#, #w13#", "", "12%"};
		{ 18, 33493, "", "=q4=Umbral Shiv", "=ds=#h1#, #w4#", "", "12%"};
		{ 19, 33492, "", "=q4=Trollbane", "=ds=#h2#, #w1#", "", "11%"};
		{ 20, 33490, "", "=q4=Staff of Dark Mending", "=ds=#w9#", "", "13%"};
		{ 21, 33494, "", "=q4=Amani Divining Staff", "=ds=#w9#", "", "11%"};
		{ 22, 33491, "", "=q4=Tuskbreaker", "=ds=#w5#", "", "12%"};
		{ 24, 0, "INV_Box_01", "=q6=#x32#", ""};
		{ 25, 33497, "", "=q4=Mana Attuned Band", "=ds=#s13#", "", "18%"};
		{ 26, 33500, "", "=q4=Signet of Eternal Life", "=ds=#s13#", "", "20%"};
		{ 27, 33496, "", "=q4=Signet of Primal Wrath", "=ds=#s13#", "", "23%"};
		{ 28, 33499, "", "=q4=Signet of the Last Defender", "=ds=#s13#", "", "18%"};
		{ 29, 33498, "", "=q4=Signet of the Quiet Forest", "=ds=#s13#", "", "21%"};
	};

	AtlasLoot_Data["ZATrash"] = {
		{ 1, 33993, "", "=q3=Mojo", "=ds=#e13#"};
		{ 3, 33865, "", "=q2=Amani Hex Stick", "=ds=#m20#", "", "40%"};
		{ 4, 33930, "", "=q2=Amani Charm of the Bloodletter", "=ds=#m26#", "", "25%"};
		{ 5, 33932, "", "=q2=Amani Charm of the Witch Doctor", "=ds=#m26#", "", "24%"};
		{ 6, 33931, "", "=q2=Amani Charm of Mighty Mojo", "=ds=#m26#", "", "25%"};
		{ 7, 33933, "", "=q2=Amani Charm of the Raging Defender", "=ds=#m26#", "", "25%"};
	};

	--------------------
	--- World Bosses ---
	--------------------

	AtlasLoot_Data["WorldBossesBC"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Doom Lord Kazzak"], ""};
		{ 2, 30735, "", "=q4=Ancient Spellcloak of the Highborne", "=ds=#s4#", "", "16.5%"};
		{ 3, 30734, "", "=q4=Leggings of the Seventh Circle", "=ds=#s11#, #a1#", "", "17.0%"};
		{ 4, 30737, "", "=q4=Gold-Leaf Wildboots", "=ds=#s12#, #a2#", "", "21.1%"};
		{ 5, 30739, "", "=q4=Scaled Greaves of the Marksman", "=ds=#s11#, #a3#", "", "14.0%"};
		{ 6, 30740, "", "=q4=Ripfiend Shoulderplates", "=ds=#s3#, #a4#", "", "16.1%"};
		{ 7, 30741, "", "=q4=Topaz-Studded Battlegrips", "=ds=#s9#, #a4#", "", "17.0%"};
		{ 8, 30736, "", "=q4=Ring of Flowing Light", "=ds=#s13#", "", "15.8%"};
		{ 9, 30738, "", "=q4=Ring of Reciprocity", "=ds=#s13#", "", "23.4%"};
		{ 10, 30733, "", "=q4=Hope Ender", "=ds=#h1#, #w10#", "", "16.7%"};
		{ 11, 30732, "", "=q4=Exodar Life-Staff", "=ds=#w9#", "", "17.1%"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Doomwalker"], ""};
		{ 17, 30729, "", "=q4=Black-Iron Battlecloak", "=ds=#s4#", "", "19.6%"};
		{ 18, 30725, "", "=q4=Anger-Spark Gloves", "=ds=#s9#, #a1#", "", "17.9%"};
		{ 19, 30727, "", "=q4=Gilded Trousers of Benediction", "=ds=#s11#, #a1#", "", "18.1%"};
		{ 20, 30730, "", "=q4=Terrorweave Tunic", "=ds=#s5#, #a2#", "", "18.8%"};
		{ 21, 30728, "", "=q4=Fathom-Helm of the Deeps", "=ds=#s1#, #a3#", "", "16.2%"};
		{ 22, 30731, "", "=q4=Faceguard of the Endless Watch", "=ds=#s1#, #a4#", "", "18.1%"};
		{ 23, 30726, "", "=q4=Archaic Charm of Presence", "=ds=#s2#", "", "20.9%"};
		{ 24, 30723, "", "=q4=Talon of the Tempest", "=ds=#h3#, #w4#", "", "15.4%"};
		{ 25, 30722, "", "=q4=Ethereum Nexus-Reaver", "=ds=#h2#, #w1#", "", "16.0%"};
		{ 26, 30724, "", "=q4=Barrel-Blade Longrifle", "=ds=#w5#", "", "20.0%"};
	};