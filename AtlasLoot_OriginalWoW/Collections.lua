local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

--------------------------
--- Sets & Collections ---
--------------------------

------------------------------------
------ Mark of Triumph Vendor ------
------------------------------------
AtlasLoot:AddItemData("dontSort", {
	["MarkOfTriumph"] = {
		{
			{ itemID = 212827 }, -- Corla's Baton
			{ itemID = 218299 }, -- Steelbender's Masterpiece
			{ itemID = 223129 }, -- Beauty's Favorite Bone
			{ itemID = 232148 }, -- Shield of the Iron Maiden
			{ itemID = 241662 }, -- Amber Messenger
			{ itemID = 241877 }, -- Crepuscular Shield
			{ itemID = 1414504 }, -- Aegis of Impunity
			{ itemID = 1414505 }, -- Aegis of Sanctity
			{ itemID = 1414506 }, -- Draenei Focusing Crystal
			{ itemID = 1414507 }, -- Holdable Ruby
			{ itemID = 1414510 }, -- Blessed Windstone
			{ itemID = 1414511 }, -- Hoodoo Detector
			{ itemID = 1414512 }, -- Bloodied Bone Dagger
			{ itemID = 1414513 }, -- Ring of the Damned
			{ itemID = 1414514 }, -- Wraith Choker
			{ itemID = 1414517 }, -- Band of the Titans
			{ itemID = 1414518 }, -- Lichbone Neck
			{ itemID = 1414519 }, -- Scarlet Friar's Cloak
			{ itemID = 1414520 }, -- Rose of Remembrance
			{ itemID = 1414521 }, -- Azerothian Diamond Ring
			{ itemID = 1414522 }, -- Memento of Quel'thalas
			{ itemID = 1414523 }, -- Cape of Eternal Shrouding
			{ itemID = 1414524 }, -- Drakefury Scale
			{ itemID = 1414525 }, -- Ironguard Signet
			{ itemID = 1414526 }, -- Ursinefur Cloak
			{ itemID = 1414527 }, -- Molten Forged Necklace
			{ itemID = 1414551 }, -- Birdbrain's Cage
			{ itemID = 1414552 }, -- Assassin's Cover
			{ itemID = 1414553 }, -- Spiritual Tauren Headdress
			{ itemID = 1414554 }, -- Rubicon Crown
			{ itemID = 1414555 }, -- Shroud of the Cathedral
			{ itemID = 1414556 }, -- Dragonfang Talisman
			{ itemID = 1414557 }, -- Dungeonlord's Drape
			{ itemID = 1414558 }, -- Golden Greathelm
			{ itemID = 1414559 }, -- Lunar Splinter
			{ itemID = 1414515 }, -- Soothing Aquamarine Cloak
		},
	},
	------------------------------------
	--- Dungeon 1 and 2 Sets (D1/D2) ---
	------------------------------------
	["DungeonSetsCLASSIC"] = {
		{
			{ itemID = 16720, desc = "Darkmaster Gandling - Scholo" }, --Wildheart Cowl
			{ itemID = 16718, desc = "Gizrul the Slavener - LBRS" }, --Wildheart Spaulders
			{ itemID = 16706, desc = "General Drakkisath - UBRS" }, --Wildheart Vest
			{ itemID = 16714, desc = "Trash Mobs - Strat" }, --Wildheart Bracers
			{ itemID = 16717, desc = "The Unforgiven - Strat" }, --Wildheart Gloves
			{ itemID = 16716, desc = "Trash Mobs - Scholo" }, --Wildheart Belt
			{ itemID = 16719, desc = "Baron Rivendare - Strat" }, --Wildheart Kilt
			{ itemID = 16715, desc = "Mother Smolderweb - LBRS" }, --Wildheart Boots
		},
		{
			{ itemID = 16677, desc = "Darkmaster Gandling - Scholo" }, --Beaststalker's Cap
			{ itemID = 16679, desc = "Overlord Wyrmthalak - LBRS" }, --Beaststalker's Mantle
			{ itemID = 16674, desc = "General Drakkisath - UBRS" }, --Beaststalker's Tunic
			{ itemID = 16681, desc = "Trash Mobs - Strat" }, --Beaststalker's Bindings
			{ itemID = 16676, desc = "War Master Voone - LBRS" }, --Beaststalker's Gloves
			{ itemID = 16680, desc = "Trash Mobs - LBRS" }, --Beaststalker's Belt
			{ itemID = 16678, desc = "Baron Rivendare - Strat" }, --Beaststalker's Pants
			{ itemID = 16675, desc = "Nerub'enkan - Strat" }, --Beaststalker's Boots
		},
		{
			{ itemID = 16686, desc = "Darkmaster Gandling - Scholo" }, --Magister's Crown
			{ itemID = 16689, desc = "Ras Frostwhisper - Scholo" }, --Magister's Mantle
			{ itemID = 16688, desc = "General Drakkisath - UBRS" }, --Magister's Robes
			{ itemID = 16683, desc = "Trash Mobs - LBRS" }, --Magister's Bindings
			{ itemID = 16684, desc = "Doctor Theolen Krastinov - Scholo" }, --Magister's Gloves
			{ itemID = 16685, desc = "Trash Mobs - Strat" }, --Magister's Belt
			{ itemID = 16687, desc = "Baron Rivendare - Strat" }, --Magister's Leggings
			{ itemID = 16682, desc = "Hearthsinger Forresten - Strat" }, --Magister's Boots
		},
		{
			{ itemID = 16727, desc = "Darkmaster Gandling - Scholo" }, --Lightforge Helm
			{ itemID = 16729, desc = "The Beast - UBRS" }, --Lightforge Spaulders
			{ itemID = 16726, desc = "General Drakkisath - UBRS" }, --Lightforge Breastplate
			{ itemID = 16722, desc = "Trash Mobs - Scholo" }, --Lightforge Bracers
			{ itemID = 16724, desc = "Timmy the Cruel - Strat" }, --Lightforge Gauntlets
			{ itemID = 16723, desc = "Trash Mobs - Strat" }, --Lightforge Belt
			{ itemID = 16728, desc = "Baron Rivendare - Strat" }, --Lightforge Legplates
			{ itemID = 16725, desc = "Balnazzar - Strat" }, --Lightforge Boots
		},
		{
			{ itemID = 16693, desc = "Darkmaster Gandling - Scholo" }, --Devout Crown
			{ itemID = 16695, desc = "Solakar Flamewreath - UBRS" }, --Devout Mantle
			{ itemID = 16690, desc = "General Drakkisath - UBRS" }, --Devout Robe
			{ itemID = 16697, desc = "Trash Mobs - Strat" }, --Devout Bracers
			{ itemID = 16692, desc = "Archivist Galford - Strat" },
			{ itemID = 16696, desc = "Trash Mobs - LBRS" }, --Devout Belt
			{ itemID = 16694, desc = "Baron Rivendare - Strat" }, --Devout Skirt
			{ itemID = 16691, desc = "Maleki the Pallid - Strat" }, --Devout Sandals
		},
		{
			{ itemID = 16707, desc = "Darkmaster Gandling - Scholo" }, --Shadowcraft Cap
			{ itemID = 16708, desc = "Cannon Master Willey - Strat" }, --Shadowcraft Spaulders
			{ itemID = 16721, desc = "General Drakkisath - UBRS" }, --Shadowcraft Tunic
			{ itemID = 16710, desc = "Trash Mobs - Scholo" }, --Shadowcraft Bracers
			{ itemID = 16712, desc = "Shadow Hunter Vosh'gajin - LBRS" }, --Shadowcraft Gloves
			{ itemID = 16713, desc = "Trash Mobs - LBRS" }, --Shadowcraft Belt
			{ itemID = 16709, desc = "Baron Rivendare - Strat" }, --Shadowcraft Pants
			{ itemID = 16711, desc = "Rattlegore - Scholo" }, --Shadowcraft Boots
		},
		{
			{ itemID = 16667, desc = "Darkmaster Gandling - Scholo" }, --Coif of Elements
			{ itemID = 16669, desc = "Gyth - UBRS" }, --Pauldrons of Elements
			{ itemID = 16666, desc = "General Drakkisath - UBRS" }, --Vest of Elements
			{ itemID = 16671, desc = "Trash Mobs - Strat" }, --Bindings of Elements
			{ itemID = 16672, desc = "Pyroguard Emberseer - UBRS" }, --Gauntlets of Elements
			{ itemID = 16673, desc = "Trash Mobs - LBRS" }, --Cord of Elements
			{ itemID = 16668, desc = "Baron Rivendare - Strat" }, --Kilt of Elements
			{ itemID = 16670, desc = "Highlord Omokk - LBRS" }, --Boots of Elements
		},
		{
			{ itemID = 16698, desc = "Darkmaster Gandling - Scholo" }, --Dreadmist Mask
			{ itemID = 16701, desc = "Jandice Barov - Scholo" }, --Dreadmist Mantle
			{ itemID = 16700, desc = "General Drakkisath - UBRS" }, --Dreadmist Robe
			{ itemID = 16703, desc = "Trash Mobs - LBRS" }, --Dreadmist Bracers
			{ itemID = 16705, desc = "Lorekeeper Polkelt - Scholo" }, --Dreadmist Wraps
			{ itemID = 16702, desc = "Trash Mobs - Strat" }, --Dreadmist Belt
			{ itemID = 16699, desc = "Baron Rivendare - Strat" }, --Dreadmist Leggings
			{ itemID = 16704, desc = "Baroness Anastari - Strat" }, --Dreadmist Sandals
		},
		{
			{ itemID = 16731, desc = "Darkmaster Gandling - Scholo" }, --Helm of Valor
			{ itemID = 16733, desc = "Warchief Rend Blackhand - UBRS" }, --Spaulders of Valor
			{ itemID = 16730, desc = "General Drakkisath - UBRS" }, --Breastplate of Valor
			{ itemID = 16735, desc = "Trash Mobs - LBRS" }, --Bracers of Valor
			{ itemID = 16737, desc = "Ramstein the Gorger - Strat" }, --Gauntlets of Valor
			{ itemID = 16736, desc = "Trash Mobs - LBRS" }, --Belt of Valor
			{ itemID = 16732, desc = "Baron Rivendare - Strat" }, --Legplates of Valor
			{ itemID = 16734, desc = "Kirtonos the Herald - Scholo" }, --Boots of Valor
		},
		{
			{ itemID = 46567 }, --Lightborne Faceguard
			{ itemID = 46610 }, --Lightborne Shoulderguards
			{ itemID = 53162 }, --Lightborne Chestguard
			{ itemID = 201774 }, --Lightborne Wrists
			{ itemID = 54110 }, --Lightborne Handguards
			{ itemID = 202325 }, --Lightborne Cord
			{ itemID = 53309 }, --Lightborne Legguards
			{ itemID = 202459 }, --Lightborne Boots
		},
		{
			{ itemID = 56579 }, --Thornheart Cover
			{ itemID = 97953 }, --Thornheart Mantle
			{ itemID = 56730 }, --Thornheart Tunic
			{ itemID = 54346 }, --Thornheart Bands
			{ itemID = 98099 }, --Thornheart Gauntlets
			{ itemID = 54153 }, --Thornheart Sash
			{ itemID = 98013 }, --Thornheart Leggings
			{ itemID = 54219 }, --Thornheart Treads
		},
		{
			{ itemID = 98718 }, --Headdress of Currents
			{ itemID = 98761 }, --Shoulderpads of Currents
			{ itemID = 98805 }, --Tunic of Currents
			{ itemID = 99537 }, --Bracers of Currents
			{ itemID = 98938 }, --Gloves of Currents
			{ itemID = 99494 }, --Belt of Currents
			{ itemID = 98895 }, --Kilt of Currents
			{ itemID = 99580 }, --Boots of Currents
		},
		{
			{ itemID = 98389 }, --Faceguard Bravery
			{ itemID = 98491 }, --Shoulderpads of Bravery
			{ itemID = 98589 }, --Chestguard of Bravery
			{ itemID = 136455 }, --Bracers of Bravery
			{ itemID = 192589 }, --Gauntlets of Bravery
			{ itemID = 191643 }, --Belt of Bravery
			{ itemID = 98632 }, --Leggings of Bravery
			{ itemID = 98675 }, --Stompers of Bravery
		},
		{
			{ itemID = 98142 }, --Greathelm of Courage
			{ itemID = 98185 }, --Pauldrons of Courage
			{ itemID = 98228 }, --Chestplate of Courage
			{ itemID = 194184 }, --Bracers of Courage
			{ itemID = 99167 }, --Gauntlets of Courage
			{ itemID = 194292 }, --Belt of Courage
			{ itemID = 98271  }, --Legguards of Courage
			{ itemID = 98346  }, --Treads of Courage
		},
		{
			{ itemID = 14626 }, --Necropile Robe
        	{ itemID = 14629 }, --Necropile Cuffs
        	{ itemID = 14631 }, --Necropile Boots
        	{ itemID = 14632 }, --Necropile Leggings
        	{ itemID = 14633 }, --Necropile Mantle
        	{ itemID = 99029 }, --Necropile Belt
        	{ itemID = 99387 }, --Necropile Crown
        	{ itemID = 99430 }, --Necropile Gloves
		},
		{
			{ itemID = 14011 }, --Cadaverous Crown
			{ itemID = 14012 }, --Cadaverous Shoulders
			{ itemID = 14637 }, --Cadaverous Armor
			{ itemID = 14014 }, --Cadaverous Cuffs
			{ itemID = 14640 }, --Cadaverous Gloves
			{ itemID = 14636 }, --Cadaverous Belt
			{ itemID = 14638 }, --Cadaverous Leggings
			{ itemID = 14641 }, --Cadaverous Walkers
		},
		{
			{ itemID = 14611 }, --Bloodmail Hauberk
        	{ itemID = 14612 }, --Bloodmail Legguards
        	{ itemID = 14614 }, --Bloodmail Belt
        	{ itemID = 14615 }, --Bloodmail Gauntlets
        	{ itemID = 14616 }, --Bloodmail Boots
        	{ itemID = 99705 }, --Bloodmail Coif
        	{ itemID = 99790 }, --Bloodmail Pauldrons
        	{ itemID = 99835 }, --Bloodmail Wristguards
		},
		{
			{ itemID = 14621 }, --Deathbone Sabatons
        	{ itemID = 14623 }, --Deathbone Legguards
        	{ itemID = 14620 }, --Deathbone Girdle
        	{ itemID = 14622 }, --Deathbone Gauntlets
        	{ itemID = 14030 }, --Deathbone Wristguards
        	{ itemID = 14624 }, --Deathbone Chestplate
        	{ itemID = 14032 }, --Deathbone Pauldrons
        	{ itemID = 14033 }, --Deathbone Helmet
		},
	},

	["DungeonSetsUpgradedCLASSIC"] = {
		{
			{ itemID = 22109, maxDifficulty = "Normal" },  --Feralheart Cowl
			{ itemID = 22112, maxDifficulty = "Normal" },  --Feralheart Spaulders
			{ itemID = 22113, maxDifficulty = "Normal" },  --Feralheart Vest
			{ itemID = 22108, maxDifficulty = "Normal" },  --Feralheart Bracers
			{ itemID = 22110, maxDifficulty = "Normal" },  --Feralheart Gloves
			{ itemID = 22106, maxDifficulty = "Normal" },  --Feralheart Belt
			{ itemID = 22111, maxDifficulty = "Normal" },  --Feralheart Kilt
			{ itemID = 22107, maxDifficulty = "Normal" },  --Feralheart Boots
		},
		{
			{ itemID = 22013, maxDifficulty = "Normal" },  --Beastmaster's Cap
			{ itemID = 22016, maxDifficulty = "Normal" },  --Beastmaster's Mantle
			{ itemID = 22060, maxDifficulty = "Normal" },  --Beastmaster's Tunic
			{ itemID = 22011, maxDifficulty = "Normal" },  --Beastmaster's Bindings
			{ itemID = 22015, maxDifficulty = "Normal" },  --Beastmaster's Gloves
			{ itemID = 22010, maxDifficulty = "Normal" },  --Beastmaster's Belt
			{ itemID = 22017, maxDifficulty = "Normal" },  --Beastmaster's Pants
			{ itemID = 22061, maxDifficulty = "Normal" },  --Beastmaster's Boots
		},
		{
			{ itemID = 22065, maxDifficulty = "Normal" },  --Sorcerer's Crown
			{ itemID = 22068, maxDifficulty = "Normal" },  --Sorcerer's Mantle
			{ itemID = 22069, maxDifficulty = "Normal" },  --Sorcerer's Robes
			{ itemID = 22063, maxDifficulty = "Normal" },  --Sorcerer's Bindings
			{ itemID = 22066, maxDifficulty = "Normal" },  --Sorcerer's Gloves
			{ itemID = 22062, maxDifficulty = "Normal" },  --Sorcerer's Belt
			{ itemID = 22067, maxDifficulty = "Normal" },  --Sorcerer's Leggings
			{ itemID = 22064, maxDifficulty = "Normal" },  --Sorcerer's Boots
		},
		{
			{ itemID = 22091, maxDifficulty = "Normal" },  --Soulforge Helm
			{ itemID = 22093, maxDifficulty = "Normal" },  --Soulforge Spaulders
			{ itemID = 22089, maxDifficulty = "Normal" },  --Soulforge Breastplate
			{ itemID = 22088, maxDifficulty = "Normal" },  --Soulforge Bracers
			{ itemID = 22090, maxDifficulty = "Normal" },  --Soulforge Gauntlets
			{ itemID = 22086, maxDifficulty = "Normal" },  --Soulforge Belt
			{ itemID = 22092, maxDifficulty = "Normal" },  --Soulforge Legplates
			{ itemID = 22087, maxDifficulty = "Normal" },  --Soulforge Boots
		},
		{
			{ itemID = 22080, maxDifficulty = "Normal" },  --Virtuous Crown
			{ itemID = 22082, maxDifficulty = "Normal" },  --Virtuous Mantle
			{ itemID = 22083, maxDifficulty = "Normal" },  --Virtuous Robe
			{ itemID = 22079, maxDifficulty = "Normal" },  --Virtuous Bracers
			{ itemID = 22081, maxDifficulty = "Normal" },  --Virtuous Gloves
			{ itemID = 22078, maxDifficulty = "Normal" },  --Virtuous Belt
			{ itemID = 22085, maxDifficulty = "Normal" },  --Virtuous Skirt
			{ itemID = 22084, maxDifficulty = "Normal" },  --Virtuous Sandals
		},
		{
			{ itemID = 22005, maxDifficulty = "Normal" },  --Darkmantle Cap
			{ itemID = 22008, maxDifficulty = "Normal" },  --Darkmantle Spaulders
			{ itemID = 22009, maxDifficulty = "Normal" },  --Darkmantle Tunic
			{ itemID = 22004, maxDifficulty = "Normal" },  --Darkmantle Bracers
			{ itemID = 22006, maxDifficulty = "Normal" },  --Darkmantle Gloves
			{ itemID = 22002, maxDifficulty = "Normal" },  --Darkmantle Belt
			{ itemID = 22007, maxDifficulty = "Normal" },  --Darkmantle Pants
			{ itemID = 22003, maxDifficulty = "Normal" },  --Darkmantle Boots
		},
		{
			{ itemID = 22097, maxDifficulty = "Normal" },  --Coif of The Five Thunders
			{ itemID = 22101, maxDifficulty = "Normal" },  --Pauldrons of The Five Thunders
			{ itemID = 22102, maxDifficulty = "Normal" },  --Vest of The Five Thunders
			{ itemID = 22095, maxDifficulty = "Normal" },  --Bindings of The Five Thunders
			{ itemID = 22099, maxDifficulty = "Normal" },  --Gauntlets of The Five Thunders
			{ itemID = 22098, maxDifficulty = "Normal" },  --Cord of The Five Thunders
			{ itemID = 22100, maxDifficulty = "Normal" },  --Kilt of The Five Thunders
			{ itemID = 22096, maxDifficulty = "Normal" },  --Boots of The Five Thunders
		},
		{
			{ itemID = 22074, maxDifficulty = "Normal" },  --Deathmist Mask
			{ itemID = 22073, maxDifficulty = "Normal" },  --Deathmist Mantle
			{ itemID = 22075, maxDifficulty = "Normal" },  --Deathmist Robe
			{ itemID = 22071, maxDifficulty = "Normal" },  --Deathmist Bracers
			{ itemID = 22077, maxDifficulty = "Normal" },  --Deathmist Wraps
			{ itemID = 22070, maxDifficulty = "Normal" },  --Deathmist Belt
			{ itemID = 22072, maxDifficulty = "Normal" },  --Deathmist Leggings
			{ itemID = 22076, maxDifficulty = "Normal" },  --Deathmist Sandals
		},
		{
			{ itemID = 21999, maxDifficulty = "Normal" },  --Helm of Heroism
			{ itemID = 22001, maxDifficulty = "Normal" },  --Spaulders of Heroism
			{ itemID = 21997, maxDifficulty = "Normal" },  --Breastplate of Heroism
			{ itemID = 21996, maxDifficulty = "Normal" },  --Bracers of Heroism
			{ itemID = 21998, maxDifficulty = "Normal" },  --Gauntlets of Heroism
			{ itemID = 21994, maxDifficulty = "Normal" },  --Belt of Heroism
			{ itemID = 22000, maxDifficulty = "Normal" },  --Legplates of Heroism
			{ itemID = 21995, maxDifficulty = "Normal" },  --Boots of Heroism
		},
	},

	-----------------------------
	--- Tier 1/2 Sets (T1/T2) ---
	-----------------------------

	["TONE"] = {
		{
			{ itemID = 16834, desc = "Garr" }, --Cenarion Helm
			{ itemID = 16836, desc = "Baron Geddon" }, --Cenarion Spaulders
			{ itemID = 16833, desc = "Golemagg the Incinerator" }, --Cenarion Vestments
			{ itemID = 16830, desc = "Trash Mobs" }, --Cenarion Bracers
			{ itemID = 16831, desc = "Shazzrah" }, --Cenarion Gloves
			{ itemID = 16828, desc = "Trash Mobs" }, --Cenarion Belt
			{ itemID = 16835, desc = "Magmadar" }, --Cenarion Leggings
			{ itemID = 16829, desc = "Lucifron" }, --Cenarion Boots
		},
		{
			{ itemID = 13437, desc = "Garr" }, --Cenarion Cover
			{ itemID = 13439, desc = "Baron Geddon" }, --Cenarion Pauldrons
			{ itemID = 13436, desc = "Golemagg the Incinerator" }, --Cenarion Tunic
			{ itemID = 13434, desc = "Trash Mobs" }, --Cenarion Bands
			{ itemID = 13435, desc = "Shazzrah" }, --Cenarion Handguards
			{ itemID = 13432, desc = "Trash Mobs" }, --Cenarion Girdle
			{ itemID = 13438, desc = "Magmadar" }, --Cenarion Pants
			{ itemID = 13433, desc = "Lucifron" }, --Cenarion Treads
		},
		{
			{ itemID = 10984, desc = "Garr" }, --Cenarion Cover
			{ itemID = 10986, desc = "Baron Geddon" }, --Cenarion Pauldrons
			{ itemID = 10983, desc = "Golemagg the Incinerator" }, --Cenarion Tunic
			{ itemID = 10981, desc = "Trash Mobs" }, --Cenarion Bands
			{ itemID = 10982, desc = "Shazzrah" }, --Cenarion Handguards
			{ itemID = 10979, desc = "Trash Mobs" }, --Cenarion Girdle
			{ itemID = 10985, desc = "Magmadar" }, --Cenarion Pants
			{ itemID = 10980, desc = "Lucifron" }, --Cenarion Treads
		},
		{
			{ itemID = 10395, desc = "Garr" }, --Cenarion Cover
			{ itemID = 10396, desc = "Baron Geddon" }, --Cenarion Pauldrons
			{ itemID = 10415, desc = "Golemagg the Incinerator" }, --Cenarion Tunic
			{ itemID = 10416, desc = "Trash Mobs" }, --Cenarion Bands
			{ itemID = 10425, desc = "Shazzrah" }, --Cenarion Handguards
			{ itemID = 10468, desc = "Trash Mobs" }, --Cenarion Girdle
			{ itemID = 10469, desc = "Magmadar" }, --Cenarion Pants
			{ itemID = 10516, desc = "Lucifron" }, --Cenarion Treads
		},
		{
			{ itemID = 16846, desc = "Garr" }, --Giantstalker's Helmet
			{ itemID = 16848, desc = "Sulfuron Harbinger" }, --Giantstalker's Epaulets
			{ itemID = 16845, desc = "Golemagg the Incinerator" }, --Giantstalker's Breastplate
			{ itemID = 16850, desc = "Trash Mobs" }, --Giantstalker's Bracers
			{ itemID = 16852, desc = "Shazzrah" }, --Giantstalker's Gloves
			{ itemID = 16851, desc = "Trash Mobs" }, --Giantstalker's Belt
			{ itemID = 16847, desc = "Magmadar" }, --Giantstalker's Leggings
			{ itemID = 16849, desc = "Gehennas" }, --Giantstalker's Boots
		},
		{
			{ itemID = 16795, desc = "Garr" }, --Arcanist Crown
			{ itemID = 16797, desc = "Baron Geddon" }, --Arcanist Mantle
			{ itemID = 16798, desc = "Golemagg the Incinerator" }, --Arcanist Robes
			{ itemID = 16799, desc = "Trash Mobs" }, --Arcanist Bindings
			{ itemID = 16801, desc = "Shazzrah" }, --Arcanist Gloves
			{ itemID = 16802, desc = "Trash Mobs" }, --Arcanist Belt
			{ itemID = 16796, desc = "Magmadar" }, --Arcanist Leggings
			{ itemID = 16800, desc = "Lucifron" }, --Arcanist Boots
		},
		{
			{ itemID = 16854, desc = "Garr" }, --Lawbringer Helm
			{ itemID = 16856, desc = "Baron Geddon" }, --Lawbringer Spaulders
			{ itemID = 16853, desc = "Golemagg the Incinerator" }, --Lawbringer Chestguard
			{ itemID = 16857, desc = "Trash Mobs" }, --Lawbringer Bracers
			{ itemID = 16860, desc = "Gehennas" }, --Lawbringer Gauntlets
			{ itemID = 16858, desc = "Trash Mobs" }, --Lawbringer Belt
			{ itemID = 16855, desc = "Magmadar" }, --Lawbringer Legplates
			{ itemID = 16859, desc = "Lucifron" }, --Lawbringer Boots
		},
		{
			{ itemID = 11536, desc = "Garr" }, --Lawbringer Greathelm
			{ itemID = 11538, desc = "Baron Geddon" }, --Lawbringer Pauldrons
			{ itemID = 11535, desc = "Golemagg the Incinerator" }, --Lawbringer Breastplate
			{ itemID = 11531, desc = "Trash Mobs" }, --Lawbringer Wristguards
			{ itemID = 11533, desc = "Gehennas" }, --Lawbringer Handguards
			{ itemID = 11534, desc = "Trash Mobs" }, --Lawbringer Waistguard
			{ itemID = 11537, desc = "Magmadar" }, --Lawbringer Legguards
			{ itemID = 11532, desc = "Lucifron" }, --Lawbringer Stompers
		},
		{
			{ itemID = 11236, desc = "Garr" }, --Lawbringer Helmet
			{ itemID = 11237, desc = "Baron Geddon" }, --Lawbringer Epaulets
			{ itemID = 11238, desc = "Golemagg the Incinerator" }, --Lawbringer Chestpiece
			{ itemID = 11244, desc = "Trash Mobs" }, --Lawbringer Bands
			{ itemID = 11245, desc = "Gehennas" }, --Lawbringer Gloves
			{ itemID = 11246, desc = "Trash Mobs" }, --Lawbringer Girdle
			{ itemID = 11247, desc = "Magmadar" }, --Lawbringer Greaves
			{ itemID = 11248, desc = "Lucifron" }, --Lawbringer Treads
		},
		{
			{ itemID = 16813, desc = "Garr" }, --Circlet of Prophecy
			{ itemID = 16816, desc = "Sulfuron Harbinger" }, --Mantle of Prophecy
			{ itemID = 16815, desc = "Golemagg the Incinerator" },
			{ itemID = 16819, desc = "Trash Mobs" }, --Vambraces of Prophecy
			{ itemID = 16812, desc = "Gehennas" }, --Gloves of Prophecy
			{ itemID = 16817, desc = "Trash Mobs" }, --Girdle of Prophecy
			{ itemID = 16814, desc = "Magmadar" }, --Pants of Prophecy
			{ itemID = 16811, desc = "Shazzrah" }, --Boots of Prophecy
		},
		{
			{ itemID = 10012, desc = "Garr" }, --Circlet of Prophecy
			{ itemID = 10013, desc = "Sulfuron Harbinger" }, --Mantle of Prophecy
			{ itemID = 10291, desc = "Golemagg the Incinerator" }, --Gown of Prophecy
			{ itemID = 10292, desc = "Trash Mobs" }, --Vambraces of Prophecy
			{ itemID = 10293, desc = "Gehennas" }, --Gloves of Prophecy
			{ itemID = 10294, desc = "Trash Mobs" }, --Girdle of Prophecy
			{ itemID = 10295, desc = "Magmadar" }, --Pants of Prophecy
			{ itemID = 10334, desc = "Shazzrah" }, --Boots of Prophecy
		},
		{
			{ itemID = 16821, desc = "Garr" }, --Nightslayer Cover
			{ itemID = 16823, desc = "Sulfuron Harbinger" }, --Nightslayer Shoulder Pads
			{ itemID = 16820, desc = "Golemagg the Incinerator" }, --Nightslayer Chestpiece
			{ itemID = 16825, desc = "Trash Mobs" }, --Nightslayer Bracelets
			{ itemID = 16826, desc = "Gehennas" }, --Nightslayer Gloves
			{ itemID = 16827, desc = "Trash Mobs" }, --Nightslayer Belt
			{ itemID = 16822, desc = "Magmadar" }, --Nightslayer Pants
			{ itemID = 16824, desc = "Shazzrah" }, --Nightslayer Boots
		},
		{
			{ itemID = 16842, desc = "Garr" }, --Earthfury Helmet
			{ itemID = 16844, desc = "Baron Geddon" }, --Earthfury Epaulets
			{ itemID = 16841, desc = "Golemagg the Incinerator" }, --Earthfury Vestments
			{ itemID = 16840, desc = "Trash Mobs" }, --Earthfury Bracers
			{ itemID = 16839, desc = "Gehennas" }, --Earthfury Gauntlets
			{ itemID = 16838, desc = "Trash Mobs" }, --Earthfury Belt
			{ itemID = 16843, desc = "Magmadar" }, --Earthfury Legguards
			{ itemID = 16837, desc = "Lucifron" }, --Earthfury Boots
		},
		{
			{ itemID = 11794, desc = "Garr" }, --Earthfury Cover
			{ itemID = 11796, desc = "Baron Geddon" }, --Earthfury Pauldrons
			{ itemID = 11792, desc = "Golemagg the Incinerator" }, --Earthfury Tunic
			{ itemID = 11793, desc = "Trash Mobs" }, --Earthfury Bands
			{ itemID = 11791, desc = "Gehennas" }, --Earthfury Gloves
			{ itemID = 11790, desc = "Trash Mobs" }, --Earthfury Girdle
			{ itemID = 11789, desc = "Magmadar" }, --Earthfury Leggings
			{ itemID = 11795, desc = "Lucifron" }, --Earthfury Treads
		},
		{
			{ itemID = 10861, desc = "Garr" }, --Earthfury Cover
			{ itemID = 10908, desc = "Baron Geddon" }, --Earthfury Pauldrons
			{ itemID = 10923, desc = "Golemagg the Incinerator" }, --Earthfury Tunic
			{ itemID = 10924, desc = "Trash Mobs" }, --Earthfury Bands
			{ itemID = 10925, desc = "Gehennas" }, --Earthfury Gloves
			{ itemID = 10926, desc = "Trash Mobs" }, --Earthfury Girdle
			{ itemID = 10960, desc = "Magmadar" }, --Earthfury Leggings
			{ itemID = 10961, desc = "Lucifron" }, --Earthfury Treads
		},
		{
			{ itemID = 16808, desc = "Garr" }, --Felheart Horns
			{ itemID = 16807, desc = "Baron Geddon" }, --Felheart Shoulder Pads
			{ itemID = 16809, desc =  "Golemagg the Incinerator" },
			{ itemID = 16804, desc = "Trash Mobs" }, --Felheart Bracers
			{ itemID = 16805, desc = "Lucifron" }, --Felheart Gloves
			{ itemID = 16806, desc = "Trash Mobs" }, --Felheart Belt
			{ itemID = 16810, desc = "Magmadar" }, --Felheart Pants
			{ itemID = 16803, desc = "Shazzrah" },
		},
		{
			{ itemID = 16866, desc = "Garr" }, --Helm of Might
			{ itemID = 16868, desc = "Sulfuron Harbinger" }, --Pauldrons of Might
			{ itemID = 16865, desc = "Golemagg the Incinerator" },
			{ itemID = 16861, desc = "Trash Mobs" }, --Bracers of Might
			{ itemID = 16863, desc = "Lucifron" }, --Gauntlets of Might
			{ itemID = 16864, desc = "Trash Mobs" }, --Belt of Might
			{ itemID = 16867, desc = "Magmadar" }, --Legplates of Might
			{ itemID = 16862, desc = "Gehennas" }, --Sabatons of Might
		},
		{
			{ itemID = 10480, desc = "Garr" },--Faceguard of Might
			{ itemID = 10481, desc = "Sulfuron Harbinger" },--Shoulderpads of Might
			{ itemID = 10482, desc = "Golemagg the Incinerator" },--Chesttplate of Might
			{ itemID = 10483, desc = "Trash Mobs" },--Wristguards of Might
			{ itemID = 10484, desc = "Lucifron" },--Handguards of Might
			{ itemID = 10485, desc = "Trash Mobs" },--Girdle of Might
			{ itemID = 10486, desc = "Magmadar" },--Legguards of Might
			{ itemID = 10487, desc = "Gehennas" },--Stompers of Might
		},
	},

	-- T2 Sets
	["TTWO"] = {
		{
			{ itemID = 16900, desc = "Onyxia" },--Stormrage Cover
			{ itemID = 16902, desc = "Chromaggus" },--Stormrage Pauldrons
			{ itemID = 16897, desc = "Nefarian" },--Stormrage Chestguard
			{ itemID = 16904, desc = "Razorgore the Untamed" },--Stormrage Bracers
			{ itemID = 16899, desc = "Firemaw, Ebonroc, Flamegor" },--Stormrage Handguards
			{ itemID = 16903, desc = "Vaelastrasz the Corrupt" },--Stormrage Belt
			{ itemID = 16901, desc = "Ragnaros" },--Stormrage Legguards
			{ itemID = 16898, desc = "Broodlord Lashlayer" },--Stormrage Boots
		},
		{
			{ itemID = 1517000, desc = "Onyxia" },--Stormrage Cover
			{ itemID = 1517002, desc = "Chromaggus" },--Stormrage Pauldrons
			{ itemID = 1516997, desc = "Nefarian" },--Stormrage Chestguard
			{ itemID = 1517004, desc = "Razorgore the Untamed" },--Stormrage Bracers
			{ itemID = 1516999, desc = " Firemaw, Ebonroc, Flamegor" },--Stormrage Handguards
			{ itemID = 1517003, desc = "Vaelastrasz the Corrupt" },--Stormrage Belt
			{ itemID = 1517001, desc = "Ragnaros" },--Stormrage Legguards
			{ itemID = 1516998, desc = "Broodlord Lashlayer" },--Stormrage Boots
		},
		{
			{ itemID = 1516892, desc = "Onyxia" },--Stormrage Cover
			{ itemID = 1516894, desc = "Chromaggus" },--Stormrage Pauldrons
			{ itemID = 1516889, desc = "Nefarian" },--Stormrage Chestguard
			{ itemID = 1516896, desc = "Razorgore the Untamed" },--Stormrage Bracers
			{ itemID = 1516891, desc = " Firemaw, Ebonroc, Flamegor" },--Stormrage Handguards
			{ itemID = 1516895, desc = "Vaelastrasz the Corrupt" },--Stormrage Belt
			{ itemID = 1516893, desc = "Ragnaros" },--Stormrage Legguards
			{ itemID = 1516890, desc = "Broodlord Lashlayer" },--Stormrage Boots
		},
		{
			{ itemID = 16939, desc = "Onyxia" },--Dragonstalker's Helm
			{ itemID = 16937, desc = "Chromaggus" },--Dragonstalker's Spaulders
			{ itemID = 16942, desc = "Nefarian" },--Dragonstalker's Breastplate
			{ itemID = 16935, desc = "Razorgore the Untamed" },--Dragonstalker's Bracers
			{ itemID = 16940, desc = " Firemaw, Ebonroc, Flamegor" },--Dragonstalker's Gauntlets
			{ itemID = 16936, desc = "Vaelastrasz the Corrupt" },--Dragonstalker's Belt
			{ itemID = 16938, desc = "Ragnaros" },--Dragonstalker's Legguards
			{ itemID = 16941, desc = "Broodlord Lashlayer" },--Dragonstalker's Greaves
		},
		{
			{ itemID = 16914, desc = "Onyxia" },--Netherwind Crown
			{ itemID = 16917, desc = "Chromaggus" },--Netherwind Mantle
			{ itemID = 16916, desc = "Nefarian" },--Netherwind Robes
			{ itemID = 16918, desc = "Razorgore the Untamed" },--Netherwind Bindings
			{ itemID = 16913, desc = " Firemaw, Ebonroc, Flamegor" },--Netherwind Gloves
			{ itemID = 16818, desc = "Vaelastrasz the Corrupt" },--Netherwind Belt
			{ itemID = 16915, desc = "Ragnaros" },--Netherwind Pants
			{ itemID = 16912, desc = "Broodlord Lashlayer" },--Netherwind Boots
		},
		{
			{ itemID = 16955, desc = "Onyxia" },--Judgement Crown
			{ itemID = 16953, desc = "Chromaggus" },--Judgement Spaulders
			{ itemID = 16958, desc = "Nefarian" },--Judgement Breastplate
			{ itemID = 16951, desc = "Razorgore the Untamed" },--Judgement Bindings
			{ itemID = 16956, desc = " Firemaw, Ebonroc, Flamegor" },--Judgement Gauntlets
			{ itemID = 16952, desc = "Vaelastrasz the Corrupt" },--Judgement Belt
			{ itemID = 16954, desc = "Ragnaros" },--Judgement Legplates
			{ itemID = 16957, desc = "Broodlord Lashlayer" },--Judgement Sabatons
		},
		{
			{ itemID = 1516955, desc = "Onyxia" },--Judgement Crown
			{ itemID = 1516953, desc = "Chromaggus" },--Judgement Spaulders
			{ itemID = 1516958, desc = "Nefarian" },--Judgement Breastplate
			{ itemID = 1516951, desc = "Razorgore the Untamed" },--Judgement Bindings
			{ itemID = 1516956, desc = " Firemaw, Ebonroc, Flamegor" },--Judgement Gauntlets
			{ itemID = 1516952, desc = "Vaelastrasz the Corrupt" },--Judgement Belt
			{ itemID = 1516954, desc = "Ragnaros" },--Judgement Legplates
			{ itemID = 1516957, desc = "Broodlord Lashlayer" },--Judgement Sabatons
		},
		{
			{ itemID = 16921, desc = "Onyxia" },--Halo of Transcendence
			{ itemID = 16924, desc = "Chromaggus" },--Pauldrons of Transcendence
			{ itemID = 16923, desc = "Nefarian" },--Robes of Transcendence
			{ itemID = 16926, desc = "Razorgore the Untamed" },--Bindings of Transcendence
			{ itemID = 16920, desc = " Firemaw, Ebonroc, Flamegor" },--Handguards of Transcendence
			{ itemID = 16925, desc = "Vaelastrasz the Corrupt" },--Belt of Transcendence
			{ itemID = 16922, desc = "Ragnaros" },--Leggings of Transcendence
			{ itemID = 16919, desc = "Broodlord Lashlayer" },--Boots of Transcendence
		},
		{
			{ itemID = 1516921, desc = "Onyxia" },--Halo of Transcendence
			{ itemID = 1516924, desc = "Chromaggus" },--Pauldrons of Transcendence
			{ itemID = 1516923, desc = "Nefarian" },--Robes of Transcendence
			{ itemID = 1516926, desc = "Razorgore the Untamed" },--Bindings of Transcendence
			{ itemID = 1516920, desc = " Firemaw, Ebonroc, Flamegor" },--Handguards of Transcendence
			{ itemID = 1516925, desc = "Vaelastrasz the Corrupt" },--Belt of Transcendence
			{ itemID = 1516922, desc = "Ragnaros" },--Leggings of Transcendence
			{ itemID = 1516919, desc = "Broodlord Lashlayer" },--Boots of Transcendence
		},
		{
			{ itemID = 16908, desc = "Onyxia" },--Bloodfang Hood
			{ itemID = 16832, desc = "Chromaggus" },--Bloodfang Spaulders
			{ itemID = 16905, desc = "Nefarian" },--Bloodfang Chestpiece
			{ itemID = 16911, desc = "Razorgore the Untamed" },--Bloodfang Bracers
			{ itemID = 16907, desc = " Firemaw, Ebonroc, Flamegor" },--Bloodfang Gloves
			{ itemID = 16910, desc = "Vaelastrasz the Corrupt" },--Bloodfang Belt
			{ itemID = 16909, desc = "Ragnaros" },--Bloodfang Pants
			{ itemID = 16906, desc = "Broodlord Lashlayer" },--Bloodfang Boots
		},
		{
			{ itemID = 16947, desc = "Onyxia" },--Helmet of Ten Storms
			{ itemID = 16945, desc = "Chromaggus" },--Epaulets of Ten Storms
			{ itemID = 16950, desc = "Nefarian" },--Breastplate of Ten Storms
			{ itemID = 16943, desc = "Razorgore the Untamed" },--Bracers of Ten Storms
			{ itemID = 16948, desc = " Firemaw, Ebonroc, Flamegor" },--Gauntlets of Ten Storms
			{ itemID = 16944, desc = "Vaelastrasz the Corrupt" },--Belt of Ten Storms
			{ itemID = 16946, desc = "Ragnaros" },--Legplates of Ten Storms
			{ itemID = 16949, desc = "Broodlord Lashlayer" },--Greaves of Ten Storms
		},
		{
			{ itemID = 10962, desc = "Onyxia" },--Helmet of Ten Storms
			{ itemID = 10963, desc = "Chromaggus" },--Epaulets of Ten Storms
			{ itemID = 10964, desc = "Nefarian" },--Breastplate of Ten Storms
			{ itemID = 10965, desc = "Razorgore the Untamed" },--Bracers of Ten Storms
			{ itemID = 11001, desc = " Firemaw, Ebonroc, Flamegor" },--Gauntlets of Ten Storms
			{ itemID = 11002, desc = "Vaelastrasz the Corrupt" },--Belt of Ten Storms
			{ itemID = 11003, desc = "Ragnaros" },--Legplates of Ten Storms
			{ itemID = 11004, desc = "Broodlord Lashlayer" },--Greaves of Ten Storms
		},
		{
			{ itemID = 1516947, desc = "Onyxia" },--Helmet of Ten Storms
			{ itemID = 1516945, desc = "Chromaggus" },--Epaulets of Ten Storms
			{ itemID = 1516950, desc = "Nefarian" },--Breastplate of Ten Storms
			{ itemID = 1516943, desc = "Razorgore the Untamed" },--Bracers of Ten Storms
			{ itemID = 1516948, desc = " Firemaw, Ebonroc, Flamegor" },--Gauntlets of Ten Storms
			{ itemID = 1516944, desc = "Vaelastrasz the Corrupt" },--Belt of Ten Storms
			{ itemID = 1516946, desc = "Ragnaros" },--Legplates of Ten Storms
			{ itemID = 1516949, desc = "Broodlord Lashlayer" },--Greaves of Ten Storms
		},
		{
			{ itemID = 16929, desc = "Onyxia" },--Nemesis Skullcap
			{ itemID = 16932, desc = "Chromaggus" },--Nemesis Spaulders
			{ itemID = 16931, desc = "Nefarian" },--Nemesis Robes
			{ itemID = 16934, desc = "Razorgore the Untamed" },--Nemesis Bracers
			{ itemID = 16928, desc = " Firemaw, Ebonroc, Flamegor" },--Nemesis Gloves
			{ itemID = 16933, desc = "Vaelastrasz the Corrupt" },--Nemesis Belt
			{ itemID = 16930, desc = "Ragnaros" },--Nemesis Leggings
			{ itemID = 16927, desc = "Broodlord Lashlayer" },--Nemesis Boots
		},
		{
			{ itemID = 10904, desc = "Onyxia" },--Faceguard of Wrath
			{ itemID = 10902, desc = "Chromaggus" },--Shoulderpads of Wrath
			{ itemID = 10907, desc = "Nefarian" },--Chestplate of Wrath
			{ itemID = 10900, desc = "Razorgore the Untamed" },--Wristguards of Wrath
			{ itemID = 10905, desc = " Firemaw, Ebonroc, Flamegor" },--Grippers of Wrath
			{ itemID = 10901, desc = "Vaelastrasz the Corrupt" },--Belt of Wrath
			{ itemID = 10903, desc = "Ragnaros" },--Legguards of Wrath
			{ itemID = 10906, desc = "Broodlord Lashlayer" },--Stompers of Wrath
		},
		{
			{ itemID = 16963, desc = "Onyxia" },--Helm of Wrath
			{ itemID = 16961, desc = "Chromaggus" },--Pauldrons of Wrath
			{ itemID = 16966, desc = "Nefarian" },--Breastplate of Wrath
			{ itemID = 16959, desc = "Razorgore the Untamed" },--Bracelets of Wrath
			{ itemID = 16964, desc = " Firemaw, Ebonroc, Flamegor" },--Gauntlets of Wrath
			{ itemID = 16960, desc = "Vaelastrasz the Corrupt" },--Waistband of Wrath
			{ itemID = 16962, desc = "Ragnaros" },--Legplates of Wrath
			{ itemID = 16965, desc = "Broodlord Lashlayer" },--Sabatons of Wrath
		},
		{
			{ itemID = 1516963, desc = "Onyxia" },--Faceguard of Wrath
			{ itemID = 1516961, desc = "Chromaggus" },--Shoulderpads of Wrath
			{ itemID = 1516966, desc = "Nefarian" },--Chestplate of Wrath
			{ itemID = 1516959, desc = "Razorgore the Untamed" },--Wristguards of Wrath
			{ itemID = 1516964, desc = " Firemaw, Ebonroc, Flamegor" },--Grippers of Wrath
			{ itemID = 1516960, desc = "Vaelastrasz the Corrupt" },--Belt of Wrath
			{ itemID = 1516962, desc = "Ragnaros" },--Legguards of Wrath
			{ itemID = 1516965, desc = "Broodlord Lashlayer" },--Stompers of Wrath
		},
	},

	------------------------
	--- Tier 3 Sets (T3) ---
	------------------------

	["TTHREE"] = {
		{
			{ itemID = 22490 }, --Dreamwalker Headpiece
			{ itemID = 22491 }, --Dreamwalker Spaulders
			{ itemID = 22488 }, --Dreamwalker Tunic
			{ itemID = 22495 }, --Dreamwalker Wristguards
			{ itemID = 22493 }, --Dreamwalker Handguards
			{ itemID = 22494 }, --Dreamwalker Girdle
			{ itemID = 22489 }, --Dreamwalker Legguards
			{ itemID = 22492 }, --Dreamwalker Boots
			{ itemID = 23064 }, --Ring of the Dreamwalker
		},
		{
			{ itemID = 1522490 }, --Dreamwalker Headpiece
			{ itemID = 1522491 }, --Dreamwalker Spaulders
			{ itemID = 1522488 }, --Dreamwalker Tunic
			{ itemID = 1522495 }, --Dreamwalker Wristguards
			{ itemID = 1522493 }, --Dreamwalker Handguards
			{ itemID = 1522494 }, --Dreamwalker Girdle
			{ itemID = 1522489 }, --Dreamwalker Legguards
			{ itemID = 1522492 }, --Dreamwalker Boots
			{ itemID = 1523064 }, --Ring of the Dreamwalker
		},
		{
			{ itemID = 1532490 }, --Dreamwalker Headpiece
			{ itemID = 1532491 }, --Dreamwalker Spaulders
			{ itemID = 1532488 }, --Dreamwalker Tunic
			{ itemID = 1532495 }, --Dreamwalker Wristguards
			{ itemID = 1532493 }, --Dreamwalker Handguards
			{ itemID = 1532494 }, --Dreamwalker Girdle
			{ itemID = 1532489 }, --Dreamwalker Legguards
			{ itemID = 1532492 }, --Dreamwalker Boots
			{ itemID = 1533064 }, --Ring of the Dreamwalker
		},
		{
			{ itemID = 1507037 }, --Dreamwalker Headpiece
			{ itemID = 1507038 }, --Dreamwalker Spaulders
			{ itemID = 1507035 }, --Dreamwalker Tunic
			{ itemID = 1507042 }, --Dreamwalker Wristguards
			{ itemID = 1507040 }, --Dreamwalker Handguards
			{ itemID = 1507041 }, --Dreamwalker Girdle
			{ itemID = 1507036 }, --Dreamwalker Legguards
			{ itemID = 1507039 }, --Dreamwalker Boots
			{ itemID = 1507043 }, --Ring of the Dreamwalker
		},
		{
			{ itemID = 22438 }, --Cryptstalker Headpiece
			{ itemID = 22439 }, --Cryptstalker Spaulders
			{ itemID = 22436 }, --Cryptstalker Tunic
			{ itemID = 22443 }, --Cryptstalker Wristguards
			{ itemID = 22441 }, --Cryptstalker Handguards
			{ itemID = 22442 }, --Cryptstalker Girdle
			{ itemID = 22437 }, --Cryptstalker Legguards
			{ itemID = 22440 }, --Cryptstalker Boots
			{ itemID = 23067 }, --Ring of the Cryptstalker
		},
		{
			{ itemID = 22498 }, --Frostfire Circlet
			{ itemID = 22499 }, --Frostfire Shoulderpads
			{ itemID = 22496 }, --Frostfire Robe
			{ itemID = 22503 }, --Frostfire Bindings
			{ itemID = 22501 }, --Frostfire Gloves
			{ itemID = 22502 }, --Frostfire Belt
			{ itemID = 22497 }, --Frostfire Leggings
			{ itemID = 22500 }, --Frostfire Sandals
			{ itemID = 23062 }, --Frostfire Ring
		},
		{
			{ itemID = 22428 }, --Redemption Headpiece
			{ itemID = 22429 }, --Redemption Spaulders
			{ itemID = 22425 }, --Redemption Tunic
			{ itemID = 22424 }, --Redemption Wristguards
			{ itemID = 22426 }, --Redemption Handguards
			{ itemID = 22431 }, --Redemption Girdle
			{ itemID = 22427 }, --Redemption Legguards
			{ itemID = 22430 }, --Redemption Boots
			{ itemID = 23066 }, --Ring of Redemption
		},
		{
			{ itemID = 1532428 }, --Redemption Headpiece
			{ itemID = 1532429 }, --Redemption Spaulders
			{ itemID = 1532425 }, --Redemption Tunic
			{ itemID = 1532424 }, --Redemption Wristguards
			{ itemID = 1532426 }, --Redemption Handguards
			{ itemID = 1532431 }, --Redemption Girdle
			{ itemID = 1532427 }, --Redemption Legguards
			{ itemID = 1532430 }, --Redemption Boots
			{ itemID = 1533066 }, --Ring of Redemption
		},
		{
			{ itemID = 1522428 }, --Redemption Headpiece
			{ itemID = 1522429 }, --Redemption Spaulders
			{ itemID = 1522425 }, --Redemption Tunic
			{ itemID = 1522424 }, --Redemption Wristguards
			{ itemID = 1522426 }, --Redemption Handguards
			{ itemID = 1522431 }, --Redemption Girdle
			{ itemID = 1522427 }, --Redemption Legguards
			{ itemID = 1522430 }, --Redemption Boots
			{ itemID = 1523066 }, --Ring of Redemption
		},
		{
			{ itemID = 22514 }, --Circlet of Faith
			{ itemID = 22515 }, --Shoulderpads of Faith
			{ itemID = 22512 }, --Robe of Faith
			{ itemID = 22519 }, --Bindings of Faith
			{ itemID = 22517 }, --Gloves of Faith
			{ itemID = 22518 }, --Belt of Faith
			{ itemID = 22513 }, --Leggings of Faith
			{ itemID = 22516 }, --Sandals of Faith
			{ itemID = 23061 }, --Ring of Faith
		},
		{
			{ itemID = 1522514 }, --Circlet of Faith
			{ itemID = 1522515 }, --Shoulderpads of Faith
			{ itemID = 1522512 }, --Robe of Faith
			{ itemID = 1522519 }, --Bindings of Faith
			{ itemID = 1522517 }, --Gloves of Faith
			{ itemID = 1522518 }, --Belt of Faith
			{ itemID = 1522513 }, --Leggings of Faith
			{ itemID = 1522516 }, --Sandals of Faith
			{ itemID = 1523061 }, --Ring of Faith
		},
		{
			{ itemID = 22478 }, --Bonescythe Helmet
			{ itemID = 22479 }, --Bonescythe Pauldrons
			{ itemID = 22476 }, --Bonescythe Breastplate
			{ itemID = 22483 }, --Bonescythe Bracers
			{ itemID = 22481 }, --Bonescythe Gauntlets
			{ itemID = 22482 }, --Bonescythe Waistguard
			{ itemID = 22477 }, --Bonescythe Legplates
			{ itemID = 22480 }, --Bonescythe Sabatons
			{ itemID = 23060 }, --Bonescythe Ring
		},
		{
			{ itemID = 22466 }, --Earthshatter Headpiece
			{ itemID = 22467 }, --Earthshatter Spaulders
			{ itemID = 22464 }, --Earthshatter Tunic
			{ itemID = 22471 }, --Earthshatter Wristguards
			{ itemID = 22469 }, --Earthshatter Handguards
			{ itemID = 22470 }, --Earthshatter Girdle
			{ itemID = 22465 }, --Earthshatter Legguards
			{ itemID = 22468 }, --Earthshatter Boots
			{ itemID = 23065 }, --Ring of the Earthshatterer
		},
		{
			{ itemID = 1522466 }, --Earthshatter Headpiece
			{ itemID = 1522467 }, --Earthshatter Spaulders
			{ itemID = 1522464 }, --Earthshatter Tunic
			{ itemID = 1522471 }, --Earthshatter Wristguards
			{ itemID = 1522469 }, --Earthshatter Handguards
			{ itemID = 1522470 }, --Earthshatter Girdle
			{ itemID = 1522465 }, --Earthshatter Legguards
			{ itemID = 1522468 }, --Earthshatter Boots
			{ itemID = 1523065 }, --Ring of the Earthshatterer
		},
		{
			{ itemID = 22506 }, --Plagueheart Circlet
			{ itemID = 22507 }, --Plagueheart Shoulderpads
			{ itemID = 22504 }, --Plagueheart Robe
			{ itemID = 22511 }, --Plagueheart Bindings
			{ itemID = 22509 }, --Plagueheart Gloves
			{ itemID = 22510 }, --Plagueheart Belt
			{ itemID = 22505 }, --Plagueheart Leggings
			{ itemID = 22508 }, --Plagueheart Sandals
			{ itemID = 23063 }, --Plagueheart Ring
		},
		{
			{ itemID = 22418 }, --Dreadnaught Helmet
			{ itemID = 22419 }, --Dreadnaught Pauldrons
			{ itemID = 22416 }, --Dreadnaught Breastplate
			{ itemID = 22423 }, --Dreadnaught Bracers
			{ itemID = 22421 }, --Dreadnaught Gauntlets
			{ itemID = 22422 }, --Dreadnaught Waistguard
			{ itemID = 22417 }, --Dreadnaught Legplates
			{ itemID = 22420 }, --Dreadnaught Sabatons
			{ itemID = 23059 }, --Ring of the Dreadnaught
		},
		{
			{ itemID = 1522418 }, --Dreadnaught Helmet
			{ itemID = 1522419 }, --Dreadnaught Pauldrons
			{ itemID = 1522416 }, --Dreadnaught Breastplate
			{ itemID = 1522423 }, --Dreadnaught Bracers
			{ itemID = 1522421 }, --Dreadnaught Gauntlets
			{ itemID = 1522422 }, --Dreadnaught Waistguard
			{ itemID = 1522417 }, --Dreadnaught Legplates
			{ itemID = 1522420 }, --Dreadnaught Sabatons
			{ itemID = 1523059 }, --Ring of the Dreadnaught
		},
		{
			{ itemID = 10490 }, --Dreadborne Helmet
			{ itemID = 10491 }, --Dreadborne Pauldrons
			{ itemID = 10488 }, --Dreadborne Breastplate
			{ itemID = 10495 }, --Dreadborne Bracers
			{ itemID = 10493 }, --Dreadborne Gauntlets
			{ itemID = 10494 }, --Dreadborne Waistguard
			{ itemID = 10489 }, --Dreadborne Legplates
			{ itemID = 10492 }, --Dreadborne Sabatons
			{ itemID = 10496 }, --Dreadborne Ring
		},
	},

	------------------------
	--- Vanilla WoW Sets ---
	------------------------

	["ClassicSets"] = {
		{
			{ itemID = 10399, desc = "Edwin VanCleef" }, --Blackened Defias Armor
			{ itemID = 10401, desc = "Defias Overseer/Taskmaster" }, --Blackened Defias Gloves
			{ itemID = 10403, desc = "Captain Greenskin" }, --Blackened Defias Belt
			{ itemID = 10400, desc = "Defias Overseer/Taskmaster" }, --Blackened Defias Leggings
			{ itemID = 10402, desc = "Defias Strip Miner" }, --Blackened Defias Boots
		},
		{
			{ itemID = 6473, desc = "Lord Pythas" }, --Armor of the Fang
			{ itemID = 10413, desc = "Druid of the Fang" }, --Gloves of the Fang
			{ itemID = 10412, desc = "Lady Anacondra" }, --Belt of the Fang
			{ itemID = 10410, desc = "Lord Cobrahn" }, --Leggings of the Fang
			{ itemID = 10411, desc = "Lord Serpentis" }, --Footpads of the Fang
		},
		{
			{ itemID = 10328, desc = "Scarlet Champion" }, --Scarlet Chestpiece
			{ itemID = 10333, desc = "Scarlet Protector/Guardsman" }, --Scarlet Wristguards
			{ itemID = 10331, desc = "Scarlet Centurion" }, --Scarlet Gauntlets
			{ itemID = 10329, desc = "Scarlet Defender/Myrmidon" }, --Scarlet Belt
			{ itemID = 10330, desc = "Herod/Mograine" }, --Scarlet Leggings
			{ itemID = 10332, desc = "Trash Mobs" }, --Scarlet Boots
		},
		{
			{ itemID = 11729, desc = "#brd3#, ".."Hedrum the Creeper" }, --Savage Gladiator Helm
			{ itemID = 11726, desc = "Gorosh the Dervish" }, --Savage Gladiator Chain
			{ itemID = 11730, desc = "Eviscerator" }, --Savage Gladiator Grips
			{ itemID = 11728, desc = "Ok'thor the Breaker" }, --Savage Gladiator Leggings
			{ itemID = 11731, desc = "Anub'shiah" }, --Savage Gladiator Greaves
		},
		{
			{ itemID = 22302, desc = "Lord Valthalak" }, --Ironweave Cowl
			{ itemID = 22305, desc = "Theldren - Blackrock Depths" }, --Ironweave Mantle
			{ itemID = 22301, desc = "Sothos and Jarien - Stratholme" }, --Ironweave Robe
			{ itemID = 22313, desc = "Halycon" }, --Ironweave Bracers
			{ itemID = 22304, desc = "Isalien - Dire Maul (East)" }, --Ironweave Gloves
			{ itemID = 22306, desc = "Mor Grayhoof" }, --Ironweave Belt
			{ itemID = 22303, desc = "Kormok - Scholomance" }, --Ironweave Pants
			{ itemID = 22311, desc = "The Beast" }, --Ironweave Boots
		},
		{
			{ itemID = 13390 }, --The Postmaster's Band
			{ itemID = 13388 }, --The Postmaster's Tunic
			{ itemID = 13389 }, --The Postmaster's Trousers
			{ itemID = 13391 }, --The Postmaster's Treads
			{ itemID = 13392 }, --The Postmaster's Seal
		},
		{
			{ itemID = 17082, desc = "Ragnaros - Molten Core" }, --Shard of the Flame
			{ itemID = 17064, desc = "Onyxia - Onyxia's Lair" }, --Shard of the Scale
		},
		{
			{ itemID = 18204 }, --Eskhandar's Pelt
			{ itemID = 18203 }, --Eskhandar's Right Claw
			{ itemID = 18202 }, --Eskhandar's Left Claw
		},
		{
			{ itemID = 13218 }, --Fang of the Crystal Spider
			{ itemID = 13183 }, --Venomspitter
		},
		{
			{ itemID = 12940 }, --Dal'Rend's Sacred Charge
			{ itemID = 12939 }, --Dal'Rend's Tribal Guardian
		},
		{
			{ itemID = 19898 }, --Seal of Jin
			{ itemID = 19925 }, --Band of Jin
		},
		{
			{ itemID = 19873 }, --Overlord's Crimson Band
			{ itemID = 19912 }, --Overlord's Onyx Band
		},
		{
			{ itemID = 19896 }, --Thekal's Grasp
			{ itemID = 19910 }, --Arlokk's Grasp
		},
		{
			{ itemID = 19863 }, --Primalist's Seal
			{ itemID = 19920 }, --Primalist's Band
		},
		{
			{ itemID = 19905 }, --Zanzil's Band
			{ itemID = 19893 }, --Zanzil's Seal
		},
		{
			{ itemID = 19865 }, --Warblade of the Hakkari
			{ itemID = 19866 }, --Warblade of the Hakkari
		},
	},

	---------------
	--- ZG Sets ---
	---------------

	["ZGSets"] = {
		{
			{ itemID = 19955 }, --Wushoolay's Charm of Nature" 
			{ itemID = 19613, desc = "Exalted" }, --Pristine Enchanted South Seas Kelp
			{ itemID = 19838, desc = "Revered" }, --Zandalar Haruspex's Tunic
			{ itemID = 19839, desc = "Honored" }, --Zandalar Haruspex's Belt
			{ itemID = 19840, desc = "Friendly" }, --Zandalar Haruspex's Bracers
		},
		{
			{ itemID = 19953 }, --Renataki's Charm of Beasts" 
			{ itemID = 19621, desc = "Exalted" }, --Maelstrom's Wrath
			{ itemID = 19831, desc = "Revered" }, --Zandalar Predator's Mantle
			{ itemID = 19832, desc = "Honored" }, --Zandalar Predator's Belt
			{ itemID = 19833, desc = "Friendly" }, --Zandalar Predator's Bracers
		},
		{
			{ itemID = 19959 }, --Hazza'rah's Charm of Magic" 
			{ itemID = 19601, desc = "Exalted" }, --Jewel of Kajaro
			{ itemID = 20034, desc = "Revered" }, --Zandalar Illusionist's Robe
			{ itemID = 19845, desc = "Honored" }, --Zandalar Illusionist's Mantle
			{ itemID = 19846, desc = "Friendly" }, --Zandalar Illusionist's Wraps
		},
		{
			{ itemID = 19952 }, --Gri'lek's Charm of Valor" 
			{ itemID = 19588, desc = "Exalted" }, --Hero's Brand
			{ itemID = 19825, desc = "Revered" }, --Zandalar Freethinker's Breastplate
			{ itemID = 19826, desc = "Honored" }, --Zandalar Freethinker's Belt
			{ itemID = 19827, desc = "Friendly" }, --Zandalar Freethinker's Armguards
		},
		{
			{ itemID = 19958 }, --Hazza'rah's Charm of Healing" 
			{ itemID = 19594, desc = "Exalted" }, --The All-Seeing Eye of Zuldazar
			{ itemID = 19841, desc = "Revered" }, --Zandalar Confessor's Mantle
			{ itemID = 19842, desc = "Honored" }, --Zandalar Confessor's Bindings
			{ itemID = 19843, desc = "Friendly" }, --Zandalar Confessor's Wraps
		},
		{
			{ itemID = 19954 }, --Renataki's Charm of Trickery" 
			{ itemID = 19617, desc = "Exalted" }, --Zandalarian Shadow Mastery Talisman
			{ itemID = 19834, desc = "Revered" }, --Zandalar Madcap's Tunic
			{ itemID = 19835, desc = "Honored" }, --Zandalar Madcap's Mantle
			{ itemID = 19836, desc = "Friendly" }, --Zandalar Madcap's Bracers
		},
		{
			{ itemID = 19956 }, --Wushoolay's Charm of Spirits" 
			{ itemID = 19609, desc = "Exalted" }, --Unmarred Vision of Voodress
			{ itemID = 19828, desc = "Revered" }, --Zandalar Augur's Hauberk
			{ itemID = 19829, desc = "Honored" }, --Zandalar Augur's Belt
			{ itemID = 19830, desc = "Friendly" }, --Zandalar Augur's Bracers
		},
		{
			{ itemID = 19957 }, --Hazza'rah's Charm of Destruction" 
			{ itemID = 19605, desc = "Exalted" }, --Kezan's Unstoppable Taint
			{ itemID = 20033, desc = "Revered" }, --Zandalar Demoniac's Robe
			{ itemID = 19849, desc = "Honored" }, --Zandalar Demoniac's Mantle
			{ itemID = 19848, desc = "Friendly" }, --Zandalar Demoniac's Wraps
		},
		{
			{ itemID = 19951 }, --Gri'lek's Charm of Might" 
			{ itemID = 19577, desc = "Exalted" }, --Rage of Mugamba
			{ itemID = 19822, desc = "Revered" }, --Zandalar Vindicator's Breastplate
			{ itemID = 19823, desc = "Honored" }, --Zandalar Vindicator's Belt
			{ itemID = 19824, desc = "Friendly" }, --Zandalar Vindicator's Armguards
		},
	},

	-----------------
	--- AQ20 Sets ---
	-----------------

	["AQ20Sets"] = {
		{
			{ itemID = 1506017, desc = "Qiraji Ornate Hilt - Exalted" }, --Locket of Unending Life
			{ itemID = 21409, groupID = 3, refLootEntry = 15341 }, --Cloak of Unending Life
			{ itemID = 21408, groupID = 4, refLootEntry = 15369 }, --Band of Unending Life
		},
		{
			{ itemID = 1506018, desc = "Qiraji Spiked Hilt - Exalted" }, --Choker of the Unseen Path
			{ itemID = 21403, groupID = 3, refLootEntry = 15341 }, --Cloak of the Unseen Path
			{ itemID = 21402, groupID = 4, refLootEntry = 15369 }, --Signet of the Unseen Path
		},
		{
			{ itemID = 1506021, desc = "Qiraji Ornate Hilt - Exalted" }, --Charm of Vaulted Secrets
			{ itemID = 21415, groupID = 3, refLootEntry = 15341 }, --Drape of Vaulted Secrets
			{ itemID = 21414, groupID = 4, refLootEntry = 15369 }, --Band of Vaulted Secrets
		},
		{
			{ itemID = 1506020, desc = "Qiraji Spiked Hilt - Exalted" }, --Medallion of Eternal Justice
			{ itemID = 21397, groupID = 3, refLootEntry = 15341 }, --Cape of Eternal Justice
			{ itemID = 21396, groupID = 4, refLootEntry = 15369 }, --Ring of Eternal Justice
		},
		{
			{ itemID = 1506023, desc = "Qiraji Ornate Hilt - Exalted" }, --Bayadere of Infinite Wisdom
			{ itemID = 21412, groupID = 3, refLootEntry = 15341 }, --Shroud of Infinite Wisdom
			{ itemID = 21411, groupID = 4, refLootEntry = 15369 }, --Ring of Infinite Wisdom
		},
		{
			{ itemID = 1506021, desc = "Qiraji Spiked Hilt - Exalted" }, --Charm of Vaulted Secrets
			{ itemID = 21406, groupID = 3, refLootEntry = 15341 }, --Cloak of Veiled Shadows
			{ itemID = 21405, groupID = 4, refLootEntry = 15369 }, --Band of Veiled Shadows
		},
		{
			{ itemID = 1506024, desc = "Qiraji Spiked Hilt - Exalted" }, --Necklace of the Gathering Storm
			{ itemID = 21400, groupID = 3, refLootEntry = 15341 }, --Cloak of the Gathering Storm
			{ itemID = 21399, groupID = 4, refLootEntry = 15369 }, --Ring of the Gathering Storm
		},
		{
			{ itemID = 1506026, desc = "Qiraji Ornate Hilt - Exalted" }, --Bayadere of Unspoken Names
			{ itemID = 21418, groupID = 3, refLootEntry = 15341 }, --Shroud of Unspoken Names
			{ itemID = 21417, groupID = 4, refLootEntry = 15369 }, --Ring of Unspoken Names
		},
		{
			{ itemID = 1506025, desc = "Qiraji Spiked Hilt - Exalted" }, --Collar of Unyielding Strength
			{ itemID = 21394, groupID = 3, refLootEntry = 15341 }, --Drape of Unyielding Strength
			{ itemID = 21393, groupID = 4, refLootEntry = 15369 }, --Signet of Unyielding Strength
		},
		{
			{ itemID = 1506027, desc = "Qiraji Spiked Hilt - Exalted" }, --Choker of Endless Machinations
			{ itemID = 1506028, groupID = 3, refLootEntry = 15341 }, --Shroud of Endless Machinations
			{ itemID = 1506029, groupID = 4, refLootEntry = 15369 }, --Loop of Endless Machinations
		},
		{
			{ itemID = 1506019, desc = "Qiraji Spiked Hilt - Exalted" }, --Pendant of Roaring Earth
			{ itemID = 1506031, groupID = 3, refLootEntry = 15341 }, --Drape of Roaring Earth
			{ itemID = 1506030, groupID = 4, refLootEntry = 15369 }, --Signet of Roaring Earth
		},
		{
			{ itemID = 1506034, desc = "Qiraji Spiked Hilt - Exalted" }, --Choker of Ferocious Vigor
			{ itemID = 1506033, groupID = 3, refLootEntry = 15341 }, --Cape of Ferocious Vigor
			{ itemID = 1506032, groupID = 4, refLootEntry = 15369 }, --Signet of Ferocious Vigor
		},
		{
			{ itemID = 1506037, desc = "Qiraji Spiked Hilt - Exalted" }, --Locket of the Faithful Zealot
			{ itemID = 1506036, groupID = 3, refLootEntry = 15341 }, --Shroud of the Faithful Zealot
			{ itemID = 1506035, groupID = 4, refLootEntry = 15369 }, --Band of the Faithful Zealot
		},
		{
			{ itemID = 1506040, desc = "Qiraji Spiked Hilt - Exalted" }, --Locket of Masterful Technique
			{ itemID = 1506039, groupID = 3, refLootEntry = 15341 }, --Drape of Masterful Technique
			{ itemID = 1506038, groupID = 4, refLootEntry = 15369 }, --Band of Masterful Technique
		},
		{
			{ itemID = 1506043, desc = "Qiraji Spiked Hilt - Exalted" }, --Lariat of Martial Prowess
			{ itemID = 1506042, groupID = 3, refLootEntry = 15341 }, --Cloak of Martial Prowess
			{ itemID = 1506041, groupID = 4, refLootEntry = 15369 }, --Ring of Martial Prowess
		},
		{
			{ itemID = 1506046, desc = "Qiraji Spiked Hilt - Exalted" }, --Collar of Unrivaled Rage
			{ itemID = 1506045, groupID = 3, refLootEntry = 15341 }, --Cloak of Unrivaled Rage
			{ itemID = 1506044, groupID = 4, refLootEntry = 15369 }, --Signet of Unrivaled Rage
		},
		{
			{ itemID = 1506049, desc = "Qiraji Spiked Hilt - Exalted" }, --Bayadere of Expansive Research
			{ itemID = 1506048, groupID = 3, refLootEntry = 15341 }, --Drape of Expansive Research
			{ itemID = 1506047, groupID = 4, refLootEntry = 15369 }, --Loop of Expansive Research
		},
	},

	-----------------
	--- AQ40 Sets ---
	-----------------

	["T2.5"] = {
		{
			{ itemID = 21357 }, --Genesis Vest" 
			{ itemID = 21353 }, --Genesis Helm" 
			{ itemID = 21356 }, --Genesis Trousers" 
			{ itemID = 21354 }, --Genesis Shoulderpads" 
			{ itemID = 21355 }, --Genesis Boots" 
		},
		{
			{ itemID = 1507029 }, --Genesis Carapace" 
			{ itemID = 1507025 }, --Genesis Mask" 
			{ itemID = 1507028 }, --Genesis Pants" 
			{ itemID = 1507026 }, --Genesis Shoulderpads" 
			{ itemID = 1507027 }, --Genesis Treads" 
		},
		{
			{ itemID = 1507024 }, --Genesis Garb" 
			{ itemID = 1507020 }, --Genesis Visor" 
			{ itemID = 1507023 }, --Genesis Legguards" 
			{ itemID = 1507021 }, --Genesis Pauldrons" 
			{ itemID = 1507022 }, --Genesis Footwraps" 
		},
		{
			{ itemID = 21370 }, --Striker's Hauberk" 
			{ itemID = 21366 }, --Striker's Diadem" 
			{ itemID = 21368 }, --Striker's Leggings" 
			{ itemID = 21367 }, --Striker's Pauldrons" 
			{ itemID = 21365 }, --Striker's Footguards" 
		},
		{
			{ itemID = 21343 }, --Enigma Robes" 
			{ itemID = 21347 }, --Enigma Circlet" 
			{ itemID = 21346 }, --Enigma Leggings" 
			{ itemID = 21345 }, --Enigma Shoulderpads" 
			{ itemID = 21344 }, --Enigma Boots" 
		},
		{
			{ itemID = 21389 }, --Avenger's Breastplate" 
			{ itemID = 21387 }, --Avenger's Crown" 
			{ itemID = 21390 }, --Avenger's Legguards" 
			{ itemID = 21391 }, --Avenger's Pauldrons" 
			{ itemID = 21388 }, --Avenger's Greaves" 
		},
		{
			{ itemID = 1507030 }, --Avenger's Carapace" 
			{ itemID = 1507031 }, --Avenger's Laurels" 
			{ itemID = 1507033 }, --Avenger's Legplates" 
			{ itemID = 1507034 }, --Avenger's Shoulderguards" 
			{ itemID = 1507032 }, --Avenger's Sabatons" 
		},
		{
			{ itemID = 21351 }, --Vestments of the Oracle" 
			{ itemID = 21348 }, --Tiara of the Oracle" 
			{ itemID = 21352 }, --Trousers of the Oracle" 
			{ itemID = 21350 }, --Mantle of the Oracle" 
			{ itemID = 21349 }, --Footwraps of the Oracle" 
		},
		{
			{ itemID = 21364 }, --Deathdealer's Vest" 
			{ itemID = 21360 }, --Deathdealer's Helm" 
			{ itemID = 21362 }, --Deathdealer's Leggings" 
			{ itemID = 21361 }, --Deathdealer's Spaulders" 
			{ itemID = 21359 }, --Deathdealer's Boots" 
		},
		{
			{ itemID = 21374 }, --Stormcaller's Hauberk" 
			{ itemID = 21372 }, --Stormcaller's Diadem" 
			{ itemID = 21375 }, --Stormcaller's Leggings" 
			{ itemID = 21376 }, --Stormcaller's Pauldrons" 
			{ itemID = 21373 }, --Stormcaller's Footguards" 
		},
		{
			{ itemID = 1507017 }, --Stormcaller's Chestguard" 
			{ itemID = 1507015 }, --Stormcaller's Crown" 
			{ itemID = 1507018 }, --Stormcaller's Greaves" 
			{ itemID = 1507019 }, --Stormcaller's Epaulets" 
			{ itemID = 1507016 }, --Stormcaller's Stompers" 
		},
		{
			{ itemID = 21334 }, --Doomcaller's Robes" 
			{ itemID = 21337 }, --Doomcaller's Circlet" 
			{ itemID = 21336 }, --Doomcaller's Trousers" 
			{ itemID = 21335 }, --Doomcaller's Mantle" 
			{ itemID = 21338 }, --Doomcaller's Footwraps" 
		},
		{
			{ itemID = 21331 }, --Conqueror's Breastplate" 
			{ itemID = 21329 }, --Conqueror's Crown" 
			{ itemID = 21332 }, --Conqueror's Legguards" 
			{ itemID = 21330 }, --Conqueror's Spaulders" 
			{ itemID = 21333 }, --Conqueror's Greaves" 
		},
		{
			{ itemID = 1507002 }, --Conqueror's Carapace" 
			{ itemID = 1507000 }, --Conqueror's Tusks" 
			{ itemID = 1507003 }, --Conqueror's Tassets" 
			{ itemID = 1507001 }, --Conqueror's Shoulderplates" 
			{ itemID = 1507004 }, --Conqueror's Advance" 
		},
		{
			{ itemID = 10912 }, --Conqueror's Chestplate" 
			{ itemID = 10910 }, --Conqueror's Headguard" 
			{ itemID = 10913 }, --Conqueror's Platelegs" 
			{ itemID = 10911 }, --Conqueror's Shoulderpads" 
			{ itemID = 10914 }, --Conqueror's War Stompers" 
		},
	},

	-----------------------
	--- BoE World Epics ---
	-----------------------

	["WorldEpicsCLASSIC"] = {
		{
			{ itemID = 867 },--Gloves of Holy Might
			{ itemID = 1981 },--Icemail Jerkin
			{ itemID = 1980 }, --Underworld Band" 
			{ itemID = 869 }, --Dazzling Longsword" 
			{ itemID = 1982 },--Nightblade
			{ itemID = 870 },--Fiery War Axe
			{ itemID = 868 },--Ardent Custodian
			{ itemID = 873 },--Staff of Jordan
			{ itemID = 1204 },--The Green Tower
			{ itemID = 2825 },--Bow of Searing Arrows
		},
		{
			{ itemID = 3075 },--Eye of Flame
			{ itemID = 940 },--Robes of Insight
			{ itemID = 14551 },--Edgemaster's Handguards
			{ itemID = 17007 },--Stonerender Gauntlets
			{ itemID = 14549 },--Boots of Avoidance
			{ itemID = 1315 }, --Lei of Lilies" 
			{ itemID = 942 }, --Freezing Band" 
			{ itemID = 1447 }, --Ring of Saviors" 
			{ itemID = 2164 },--Gut Ripper
			{ itemID = 2163 },--Shadowblade
			{ itemID = 809 }, --Bloodrazor" 
			{ itemID = 871 }, --Flurry Axe" 
			{ itemID = 2291 },--Kang the Decapitator
			{ itemID = 810 },--Hammer of the Northern Wind
			{ itemID = 2915 }, --Taran Icebreaker" 
			{ itemID = 812 },--Glowing Brightwood Staff
			{ itemID = 943 },--Warden Staff
			{ itemID = 1169 },--Blackskull Shield
			{ itemID = 1979 },--Wall of the Dead
			{ itemID = 2824 },--Hurricane
			{ itemID = 2100 },--Precisely Calibrated Boomstick
		},
		{
			{ itemID = 3475 }, --Cloak of Flames" 
			{ itemID = 14553 },--Sash of Mercy
			{ itemID = 2245 },--Helm of Narv
			{ itemID = 14552 },--Stockade Pauldrons
			{ itemID = 14554 },--Cloudkeeper Legplates
			{ itemID = 1443 }, --Jeweled Amulet of Cainwyn" 
			{ itemID = 14558 }, --Lady Maye's Pendant" 
			{ itemID = 2246 }, --Myrmidon's Signet" 
			{ itemID = 833 }, --Lifestone" 
			{ itemID = 14557 }, --The Lion Horn of Stormwind" 
			{ itemID = 14555 },--Alcor's Sunrazor
			{ itemID = 2244 }, --Krol Blade" 
			{ itemID = 1728 }, --Teebu's Blazing Longsword" 
			{ itemID = 2801 },--Blade of Hanna
			{ itemID = 647 },--Destiny
			{ itemID = 811 }, --Axe of the Deep Woods" 
			{ itemID = 1263 },--Brain Hacker
			{ itemID = 2243 },--Hand of Edward the Odd
			{ itemID = 944 },--Elemental Mage Staff
			{ itemID = 1168 },--Skullflame Shield
			{ itemID = 2099 },--Dwarven Hand Cannon
		},
	},
})
