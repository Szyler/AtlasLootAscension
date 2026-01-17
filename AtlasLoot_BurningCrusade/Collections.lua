local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

AtlasLoot:AddSecondaryLootTable({

--------------------------
---Sets & Collections ---
--------------------------

---------------------------
---Dungeon 3 Sets (D3) ---
---------------------------

	["DS3"] = {
		{
			{ itemID = 28413, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Hallowed Crown
			{ itemID = 27775, desc = {"Shadow Labyrinth", "Grandmaster Vorpil"} }, --Hallowed Pauldrons
			{ itemID = 28230, desc = {"Shadow Labyrinth", "Murmur"} }, --Hallowed Garments
			{ itemID = 27536, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Hallowed Handwraps
			{ itemID = 27875, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Hallowed Trousers
		},
		{
			{ itemID = 28193, desc = {"The Black Morass", "Aeonus"} }, --Mana-Etched Crown
			{ itemID = 27796, desc = {"The Slave Pens", "Quagmirran".."Heroic Mode" } }, --Mana-Etched Spaulders
			{ itemID = 28191, desc = {"Old Hillsbrad Foothills".."Heroic Mode", "Epoch Hunter"} }, --Mana-Etched Vestments
			{ itemID = 27465, desc = {"Hellfire Ramparts".."Heroic Mode", "Omor the Unscarred"} }, --Mana-Etched Gloves
			{ itemID = 27907, desc = {"The Slave Pens", "The Black Stalker".."Heroic Mode" } }, --Mana-Etched Pantaloons
		},
		{
			{ itemID = 28278, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Incanter's Cowl
			{ itemID = 27738, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Incanter's Pauldrons
			{ itemID = 28229, desc = {"The Botanica", "Warp Splinter"} }, --Incanter's Robe
			{ itemID = 27508, desc = {"The Steamvault", "Hydromancer Thespia"} }, --Incanter's Gloves
			{ itemID = 27838, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Incanter's Trousers
		},
		{
			{ itemID = 28415, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Hood of Oblivion
			{ itemID = 27778, desc = {"Shadow Labyrinth", "Murmur"} }, --Spaulders of Oblivion
			{ itemID = 28232, desc = {"Shadow Labyrinth", "Murmur"} }, --Robe of Oblivion
			{ itemID = 27537, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Gloves of Oblivion
			{ itemID = 27948, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Trousers of Oblivion
		},
		{
			{ itemID = 28414, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Helm of Assassination
			{ itemID = 27776, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Shoulderpads of Assassination
			{ itemID = 28204, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Tunic of Assassination
			{ itemID = 27509, desc = {"The Black Morass", "Aeonus"} }, --Handgrips of Assassination
			{ itemID = 27908, desc = {"Shadow Labyrinth", "Murmur"} }, --Leggings of Assassination
		},
		{
			{ itemID = 28224, desc = {"Old Hillsbrad Foothills".."Heroic Mode", "Epoch Hunter"} }, --Wastewalker Helm
			{ itemID = 27797, desc = {"Auchenai Crypts".."Heroic Mode", "Avatar"} }, --Wastewalker Shoulderpads
			{ itemID = 28264, desc = {"The Blood Furnace".."Heroic Mode", "Keli'dan the Breaker"} }, --Wastewalker Tunic
			{ itemID = 27531, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Wastewalker Gloves
			{ itemID = 27837, desc = {"Mana-Tombs".."Heroic Mode", "Nexus-Prince Shaffar"} }, --Wastewalker Leggings
		},
		{
			{ itemID = 28348, desc = {"The Botanica", "Warp Splinter"} }, --Moonglade Cowl
			{ itemID = 27737, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Moonglade Shoulders
			{ itemID = 28202, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Moonglade Robe
			{ itemID = 27468, desc = {"Shadow Labyrinth", "Blackheart the Inciter"} }, --Moonglade Handwraps
			{ itemID = 27873, desc = {"The Black Morass", "Aeonus"} }, --Moonglade Pants
		},
		{
			{ itemID = 28275, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Beast Lord Helm
			{ itemID = 27801, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Beast Lord Mantle
			{ itemID = 28228, desc = {"The Botanica", "Warp Splinter"} }, --Beast Lord Curiass
			{ itemID = 27474, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Beast Lord Handguards
			{ itemID = 27874, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Beast Lord Leggings
		},
		{
			{ itemID = 28349, desc = {"The Botanica", "Warp Splinter"} }, --Tidefury Helm
			{ itemID = 27802, desc = {"The Shattered Halls", "Warbringer O'mrogg"} }, --Tidefury Shoulderguards
			{ itemID = 28231, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Tidefury Chestpiece
			{ itemID = 27510, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Tidefury Gauntlets
			{ itemID = 27909, desc = {"Shadow Labyrinth", "Murmur"} }, --Tidefury Kilt
		},
		{
			{ itemID = 28192, desc = {"The Black Morass", "Aeonus"} }, --Helm of Desolation
			{ itemID = 27713, desc = {"The Slave Pens", "Quagmirran".."Heroic Mode" } }, --Pauldrons of Desolation
			{ itemID = 28401, desc = {"Old Hillsbrad Foothills".."Heroic Mode", "Epoch Hunter"} }, --Hauberk of Desolation
			{ itemID = 27528, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Gauntlets of Desolation
			{ itemID = 27936, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Greaves of Desolation
		},
		{
			{ itemID = 28350, desc = {"The Botanica", "Warp Splinter"} }, --Warhelm of the Bold
			{ itemID = 27803, desc = {"Shadow Labyrinth", "Murmur"} }, --Shoulderguards of the Bold
			{ itemID = 28205, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Breastplate of the Bold
			{ itemID = 27475, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Gauntlets of the Bold
			{ itemID = 27977, desc = {"The Black Morass", "Aeonus"} }, --Legplates of the Bold
		},
		{
			{ itemID = 28285, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Helm of the Righteous
			{ itemID = 27739, desc = {"The Botanica", "Laj"} }, --Spaulders of the Righteous
			{ itemID = 28203, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Breastplate of the Righteous
			{ itemID = 27535, desc = {"The Shattered Halls", "Warbringer O'mrogg"} }, --Gauntlets of the Righteous
			{ itemID = 27839, desc = {"The Black Morass", "Aeonus"} }, --Legplates of the Righteous
		},
		{
			{ itemID = 28225, desc = {"Old Hillsbrad Foothills".."Heroic Mode", "Epoch Hunter"} }, --Doomplate Warhelm
			{ itemID = 27771, desc = {"The Slave Pens", "The Black Stalker".."Heroic Mode" } }, --Doomplate Shouldergards
			{ itemID = 28403, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Doomplate Chestguard
			{ itemID = 27497, desc = {"The Blood Furnace".."Heroic Mode", "Keli'dan the Breaker"} }, --Doomplate Gauntlets
			{ itemID = 27870, desc = {"Auchenai Crypts".."Heroic Mode", "Exarch Maladaar"} }, --Doomplate Legguards
		},
		{
			{ itemID = 242595 },
			{ itemID = 241962 },
			{ itemID = 242552 },
			{ itemID = 242509 },
			{ itemID = 241919 },
		},
		{
			{ itemID = 242810 },
			{ itemID = 242681 },
			{ itemID = 242767 },
			{ itemID = 242724 },
			{ itemID = 242638 },
		},
		{
			{ itemID = 244915 },
			{ itemID = 242896 },
			{ itemID = 244872 },
			{ itemID = 244286 },
			{ itemID = 242853 },
		},
		{
			{ itemID = 245746 },
			{ itemID = 245159 },
			{ itemID = 245601 },
			{ itemID = 245303 },
			{ itemID = 244958 },
		},
		{
			{ itemID = 247693 },
			{ itemID = 245878 },
			{ itemID = 245962 },
			{ itemID = 245794 },
			{ itemID = 247548 },
		},
	},

--------------
---Tier 4 ---
--------------

	["T4"] = {
			{
				{ itemID = 29098, desc = {"Karazhan", "Prince Malchezaar"} }, --Stag-Helm of Malorne
				{ itemID = 29100, desc = {"Gruul's Lair", "High King Maulgar"} }, --Mantle of Malorne
				{ itemID = 29096, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Breastplate of Malorne
				{ itemID = 29097, desc = {"Karazhan", "The Curator"} }, --Gauntlets of Malorne
				{ itemID = 29099, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Greaves of Malorne
			},
			{
				{ itemID = 29086, desc = {"Karazhan", "Prince Malchezaar"} }, --Crown of Malorne
				{ itemID = 29089, desc = {"Gruul's Lair", "High King Maulgar"} }, --Shoulderguards of Malorne
				{ itemID = 29087, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Chestguard of Malorne
				{ itemID = 29090, desc = {"Karazhan", "The Curator"} }, --Handguards of Malorne
				{ itemID = 29088, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Legguards of Malorne
			},
			{
				{ itemID = 29093, desc = {"Karazhan", "Prince Malchezaar"} }, --Antlers of Malorne
				{ itemID = 29095, desc = {"Gruul's Lair", "High King Maulgar"} }, --Pauldrons of Malorne
				{ itemID = 29091, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Chestpiece of Malorne
				{ itemID = 29092, desc = {"Karazhan", "The Curator"} }, --Gloves of Malorne
				{ itemID = 29094, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Britches of Malorne
			},
			{
				{ itemID = 29081, desc = {"Karazhan", "Prince Malchezaar"} }, --Demon Stalker Greathelm
				{ itemID = 29084, desc = {"Gruul's Lair", "High King Maulgar"} }, --Demon Stalker Shoulderguards
				{ itemID = 29082, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Demon Stalker Harness
				{ itemID = 29085, desc = {"Karazhan", "The Curator"} }, --Demon Stalker Gauntlets
				{ itemID = 29083, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Demon Stalker Greaves
			},
			{
				{ itemID = 29076, desc = {"Karazhan", "Prince Malchezaar"} }, --Collar of the Aldor
				{ itemID = 29079, desc = {"Gruul's Lair", "High King Maulgar"} }, --Pauldrons of the Aldor
				{ itemID = 29077, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Vestments of the Aldor
				{ itemID = 29080, desc = {"Karazhan", "The Curator"} }, --Gloves of the Aldor
				{ itemID = 29078, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Legwraps of the Aldor
			},
			{
				{ itemID = 29068, desc = {"Karazhan", "Prince Malchezaar"} }, --Justicar Faceguard
				{ itemID = 29070, desc = {"Gruul's Lair", "High King Maulgar"} }, --Justicar Shoulderguards
				{ itemID = 29066, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Justicar Chestguard
				{ itemID = 29067, desc = {"Karazhan", "The Curator"} }, --Justicar Handguards
				{ itemID = 29069, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Justicar Legguards
			},
			{
				{ itemID = 29073, desc = {"Karazhan", "Prince Malchezaar"} }, --Justicar Crown
				{ itemID = 29075, desc = {"Gruul's Lair", "High King Maulgar"} }, --Justicar Shoulderplates
				{ itemID = 29071, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Justicar Breastplate
				{ itemID = 29072, desc = {"Karazhan", "The Curator"} }, --Justicar Gauntlets
				{ itemID = 29074, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Justicar Greaves
			},
			{
				{ itemID = 29061, desc = {"Karazhan", "Prince Malchezaar"} }, --Justicar Diadem
				{ itemID = 29064, desc = {"Gruul's Lair", "High King Maulgar"} }, --Justicar Pauldrons
				{ itemID = 29062, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Justicar Chestpiece
				{ itemID = 29065, desc = {"Karazhan", "The Curator"} }, --Justicar Gloves
				{ itemID = 29063, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Justicar Leggings
			},
			{
				{ itemID = 29049, desc = {"Karazhan", "Prince Malchezaar"} }, --Light-Collar of the Incarnate
				{ itemID = 29054, desc = {"Gruul's Lair", "High King Maulgar"} }, --Light-Mantle of the Incarnate
				{ itemID = 29050, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Robes of the Incarnate
				{ itemID = 29055, desc = {"Karazhan", "The Curator"} }, --Handwraps of the Incarnate
				{ itemID = 29053, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Trousers of the Incarnate
			},
			{
				{ itemID = 29058, desc = {"Karazhan", "Prince Malchezaar"} }, --Soul-Collar of the Incarnate
				{ itemID = 29060, desc = {"Gruul's Lair", "High King Maulgar"} }, --Soul-Mantle of the Incarnate
				{ itemID = 29056, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Shroud of the Incarnate
				{ itemID = 29057, desc = {"Karazhan", "The Curator"} }, --Gloves of the Incarnate
				{ itemID = 29059, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Leggings of the Incarnate
			},
			{
				{ itemID = 29044, desc = {"Karazhan", "Prince Malchezaar"} }, --Netherblade Facemask
				{ itemID = 29047, desc = {"Gruul's Lair", "High King Maulgar"} }, --Netherblade Shoulderpads
				{ itemID = 29045, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Netherblade Chestpiece
				{ itemID = 29048, desc = {"Karazhan", "The Curator"} }, --Netherblade Gloves
				{ itemID = 29046, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Netherblade Breeches
			},
			{
				{ itemID = 29040, desc = {"Karazhan", "Prince Malchezaar"} }, --Cyclone Helm
				{ itemID = 29043, desc = {"Gruul's Lair", "High King Maulgar"} }, --Cyclone Shoulderplates
				{ itemID = 29038, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Cyclone Breastplate
				{ itemID = 29039, desc = {"Karazhan", "The Curator"} }, --Cyclone Gauntlets
				{ itemID = 29042, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Cyclone War-Kilt
			},
			{
				{ itemID = 29028, desc = {"Karazhan", "Prince Malchezaar"} }, --Cyclone Headdress
				{ itemID = 29031, desc = {"Gruul's Lair", "High King Maulgar"} }, --Cyclone Shoulderpads
				{ itemID = 29029, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Cyclone Hauberk
				{ itemID = 29032, desc = {"Karazhan", "The Curator"} }, --Cyclone Gloves
				{ itemID = 29030, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Cyclone Kilt
			},
			{
				{ itemID = 29035, desc = {"Karazhan", "Prince Malchezaar"} }, --Cyclone Faceguard
				{ itemID = 29037, desc = {"Gruul's Lair", "High King Maulgar"} }, --Cyclone Shoulderguards
				{ itemID = 29033, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Cyclone Chestguard
				{ itemID = 29034, desc = {"Karazhan", "The Curator"} }, --Cyclone Handguards
				{ itemID = 29036, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Cyclone Legguards
			},
			{
				{ itemID = 28963, desc = {"Karazhan", "Prince Malchezaar"} }, --Voidheart Crown
				{ itemID = 28967, desc = {"Gruul's Lair", "High King Maulgar"} }, --Voidheart Mantle
				{ itemID = 28964, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Voidheart Robe
				{ itemID = 28968, desc = {"Karazhan", "The Curator"} }, --Voidheart Gloves
				{ itemID = 28966, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Voidheart Leggings
			},
			{
				{ itemID = 29011, desc = {"Karazhan", "Prince Malchezaar"} }, --Warbringer Greathelm
				{ itemID = 29016, desc = {"Gruul's Lair", "High King Maulgar"} }, --Warbringer Shoulderguards
				{ itemID = 29012, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Warbringer Chestguard
				{ itemID = 29017, desc = {"Karazhan", "The Curator"} }, --Warbringer Handguards
				{ itemID = 29015, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Warbringer Legguards
			},
			{
				{ itemID = 14984, desc = {"Karazhan", "Prince Malchezaar"} }, --Warbringer Helmet
				{ itemID = 14988, desc = {"Gruul's Lair", "High King Maulgar"} }, --Warbringer Pauldrons
				{ itemID = 14985, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Warbringer Hauberk
				{ itemID = 14989, desc = {"Karazhan", "The Curator"} }, --Warbringer Gloves
				{ itemID = 14987, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Warbringer Leggings
			},
			{
				{ itemID = 29021, desc = {"Karazhan", "Prince Malchezaar"} }, --Warbringer Battle-Helm
				{ itemID = 29023, desc = {"Gruul's Lair", "High King Maulgar"} }, --Warbringer Shoulderplates
				{ itemID = 29019, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Warbringer Breastplate
				{ itemID = 29020, desc = {"Karazhan", "The Curator"} }, --Warbringer Gauntlets
				{ itemID = 29022, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Warbringer Greaves
		},
	},

	--------------
	---Tier 5 ---
	--------------

	["T5"] = {
			{
				{ itemID = 30228, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Nordrassil Headdress
				{ itemID = 30230, desc = {"The Eye", "Void Reaver"} }, --Nordrassil Feral-Mantle
				{ itemID = 30222, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Nordrassil Chestplate
				{ itemID = 30223, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Nordrassil Handgrips
				{ itemID = 30229, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Nordrassil Feral-Kilt
			},
			{
				{ itemID = 30219, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Nordrassil Headguard
				{ itemID = 30221, desc = {"The Eye", "Void Reaver"} }, --Nordrassil Life-Mantle
				{ itemID = 30216, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Nordrassil Chestguard
				{ itemID = 30217, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Nordrassil Gloves
				{ itemID = 30220, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Nordrassil Life-Kilt
			},
			{
				{ itemID = 30233, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Nordrassil Headpiece
				{ itemID = 30235, desc = {"The Eye", "Void Reaver"} }, --Nordrassil Wrath-Mantle
				{ itemID = 30231, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Nordrassil Chestpiece
				{ itemID = 30232, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Nordrassil Gauntlets
				{ itemID = 30234, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Nordrassil Wrath-Kilt
			},
			{
				{ itemID = 30141, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Rift Stalker Helm
				{ itemID = 30143, desc = {"The Eye", "Void Reaver"} }, --Rift Stalker Mantle
				{ itemID = 30139, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Rift Stalker Hauberk
				{ itemID = 30140, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Rift Stalker Gauntlets
				{ itemID = 30142, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Rift Stalker Leggings
			},
			{
				{ itemID = 30206, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cowl of Tirisfal
				{ itemID = 30210, desc = {"The Eye", "Void Reaver"} }, --Mantle of Tirisfal
				{ itemID = 30196, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Robes of Tirisfal
				{ itemID = 30205, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Gloves of Tirisfal
				{ itemID = 30207, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Leggings of Tirisfal
			},
			{
				{ itemID = 30125, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Crystalforge Faceguard
				{ itemID = 30127, desc = {"The Eye", "Void Reaver"} }, --Crystalforge Shoulderguards
				{ itemID = 30123, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Crystalforge Chestguard
				{ itemID = 30124, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Crystalforge Handguards
				{ itemID = 30126, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Crystalforge Legguards
			},
			{
				{ itemID = 30131, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Crystalforge War-Helm
				{ itemID = 30133, desc = {"The Eye", "Void Reaver"} }, --Crystalforge Shoulderbraces
				{ itemID = 30129, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Crystalforge Breastplate
				{ itemID = 30130, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Crystalforge Gauntlets
				{ itemID = 30132, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Crystalforge Greaves
			},
			{
				{ itemID = 30136, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Crystalforge Greathelm
				{ itemID = 30138, desc = {"The Eye", "Void Reaver"} }, --Crystalforge Pauldrons
				{ itemID = 30134, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Crystalforge Chestpiece
				{ itemID = 30135, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Crystalforge Gloves
				{ itemID = 30137, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Crystalforge Leggings
			},
			{
				{ itemID = 30152, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cowl of the Avatar
				{ itemID = 30154, desc = {"The Eye", "Void Reaver"} }, --Mantle of the Avatar
				{ itemID = 30150, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Vestments of the Avatar
				{ itemID = 30151, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Gloves of the Avatar
				{ itemID = 30153, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Breeches of the Avatar
			},
			{
				{ itemID = 30161, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Hood of the Avatar
				{ itemID = 30163, desc = {"The Eye", "Void Reaver"} }, --Wings of the Avatar
				{ itemID = 30159, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Shroud of the Avatar
				{ itemID = 30160, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Handguards of the Avatar
				{ itemID = 30162, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Leggings of the Avatar
			},
			{
				{ itemID = 30146, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Deathmantle Helm
				{ itemID = 30149, desc = {"The Eye", "Void Reaver"} }, --Deathmantle Shoulderpads
				{ itemID = 30144, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Deathmantle Chestguard
				{ itemID = 30145, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Deathmantle Handguards
				{ itemID = 30148, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Deathmantle Legguards
			},
			{
				{ itemID = 30190, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cataclysm Helm
				{ itemID = 30194, desc = {"The Eye", "Void Reaver"} }, --Cataclysm Shoulderplates
				{ itemID = 30185, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Cataclysm Chestplate
				{ itemID = 30189, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Cataclysm Gauntlets
				{ itemID = 30192, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Cataclysm Legplates
			},
			{
				{ itemID = 30166, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cataclysm Headguard
				{ itemID = 30168, desc = {"The Eye", "Void Reaver"} }, --Cataclysm Shoulderguards
				{ itemID = 30164, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Cataclysm Chestguard
				{ itemID = 30165, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Cataclysm Gloves
				{ itemID = 30167, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Cataclysm Legguards
			},
			{
				{ itemID = 30171, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cataclysm Headpiece
				{ itemID = 30173, desc = {"The Eye", "Void Reaver"} }, --Cataclysm Shoulderpads
				{ itemID = 30169, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Cataclysm Chestpiece
				{ itemID = 30170, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Cataclysm Handgrips
				{ itemID = 30172, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Cataclysm Leggings
			},
			{
				{ itemID = 30212, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Hood of the Corruptor
				{ itemID = 30215, desc = {"The Eye", "Void Reaver"} }, --Mantle of the Corruptor
				{ itemID = 30214, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Robe of the Corruptor
				{ itemID = 30211, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Gloves of the Corruptor
				{ itemID = 30213, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Leggings of the Corruptor
			},
			{
				{ itemID = 30115, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Destroyer Greathelm
				{ itemID = 30117, desc = {"The Eye", "Void Reaver"} }, --Destroyer Shoulderguards
				{ itemID = 30113, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Destroyer Chestguard
				{ itemID = 30114, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Destroyer Handguards
				{ itemID = 30116, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Destroyer Legguards
			},
			{
				{ itemID = 14992, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Destroyer Helmet
				{ itemID = 14994, desc = {"The Eye", "Void Reaver"} }, --Destroyer Pauldrons
				{ itemID = 14990, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Destroyer Hauberk
				{ itemID = 14991, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Destroyer Gloves
				{ itemID = 14993, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Destroyer Leggings
			},
			{
				{ itemID = 30120, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Destroyer Battle-Helm
				{ itemID = 30122, desc = {"The Eye", "Void Reaver"} }, --Destroyer Shoulderblades
				{ itemID = 30118, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Destroyer Breastplate
				{ itemID = 30119, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Destroyer Gauntlets
				{ itemID = 30121, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Destroyer Greaves
			},
	},

--------------
---Tier 6 ---
--------------

	["T6"] = {
			{
				{ itemID = 31039, desc = {"Hyjal Summit", "Archimonde"} }, --Thunderheart Cover
				{ itemID = 31048, desc = {"Black Temple", "Mother Shahraz"} }, --Thunderheart Pauldrons
				{ itemID = 31042, desc = {"Black Temple", "Illidan Stormrage"} }, --Thunderheart Chestguard
				{ itemID = 34444, desc = {"Sunwell Plateau", "Kalecgos"} }, --Thunderheart Wristguards
				{ itemID = 31034, desc = {"Hyjal Summit", "Kaz'rogal"} }, --Thunderheart Gauntlets
				{ itemID = 34556, desc = {"Sunwell Plateau", "Brutallus"} }, --Thunderheart Waistguard
				{ itemID = 31044, desc = {"Hyjal Summit", "Azgalor"} }, --Thunderheart Leggings
				{ itemID = 34573, desc = {"Sunwell Plateau", "Felmyst"} }, --Thunderheart Treads
			},
			{
				{ itemID = 31037, desc = {"Hyjal Summit", "Archimonde"} }, --Thunderheart Helmet
				{ itemID = 31047, desc = {"Black Temple", "Mother Shahraz"} }, --Thunderheart Spaulders
				{ itemID = 31041, desc = {"Black Temple", "Illidan Stormrage"} }, --Thunderheart Tunic
				{ itemID = 34445, desc = {"Sunwell Plateau", "Kalecgos"} }, --Thunderheart Bracers
				{ itemID = 31032, desc = {"Hyjal Summit", "Kalecgos"} }, --Thunderheart Gloves
				{ itemID = 34554, desc = {"Sunwell Plateau", "Brutallus"} }, --Thunderheart Belt
				{ itemID = 31045, desc = {"Hyjal Summit", "Azgalor"} }, --Thunderheart Legguards
				{ itemID = 34571, desc = {"Sunwell Plateau", "Felmyst"} }, --Thunderheart Boots
			},
			{
				{ itemID = 31040, desc = {"Hyjal Summit", "Archimonde"} }, --Thunderheart Headguard
				{ itemID = 31049, desc = {"Black Temple", "Mother Shahraz"} }, --Thunderheart Shoulderpads
				{ itemID = 31043, desc = {"Black Temple", "Illidan Stormrage"} }, --Thunderheart Vest
				{ itemID = 34446, desc = {"Sunwell Plateau", "Kalecgos"} }, --Thunderheart Bands
				{ itemID = 31035, desc = {"Hyjal Summit", "Kalecgos"} }, --Thunderheart Handguards
				{ itemID = 34555, desc = {"Sunwell Plateau", "Brutallus"} }, --Thunderheart Cord
				{ itemID = 31046, desc = {"Hyjal Summit", "Azgalor"} }, --Thunderheart Pants
				{ itemID = 34572, desc = {"Sunwell Plateau", "Felmyst"} }, --Thunderheart Footwraps
			},
			{
				{ itemID = 31003, desc = {"Hyjal Summit", "Archimonde"} }, --Gronnstalker's Helmet
				{ itemID = 31006, desc = {"Black Temple", "Mother Shahraz"} }, --Gronnstalker's Spaulders
				{ itemID = 31004, desc = {"Black Temple", "Illidan Stormrage"} }, --Gronnstalker's Chestguard
				{ itemID = 34443, desc = {"Sunwell Plateau", "Kalecgos"} }, --Gronnstalker's Bracers
				{ itemID = 31001, desc = {"Hyjal Summit", "Kalecgos"} }, --Gronnstalker's Gloves
				{ itemID = 34549, desc = {"Sunwell Plateau", "Brutallus"} }, --Gronnstalker's Belt
				{ itemID = 31005, desc = {"Hyjal Summit", "Azgalor"} }, --Gronnstalker's Leggings
				{ itemID = 34570, desc = {"Sunwell Plateau", "Felmyst"} }, --Gronnstalker's Boots
			},
			{
				{ itemID = 31056, desc = {"Hyjal Summit", "Archimonde"} }, --Cowl of the Tempest
				{ itemID = 31059, desc = {"Black Temple", "Mother Shahraz"} }, --Mantle of the Tempest
				{ itemID = 31057, desc = {"Black Temple", "Illidan Stormrage"} }, --Robes of the Tempest
				{ itemID = 34447, desc = {"Sunwell Plateau", "Kalecgos"} }, --Bracers of the Tempest
				{ itemID = 31055, desc = {"Hyjal Summit", "Kalecgos"} }, --Gloves of the Tempest
				{ itemID = 34557, desc = {"Sunwell Plateau", "Brutallus"} }, --Belt of the Tempest
				{ itemID = 31058, desc = {"Hyjal Summit", "Azgalor"} }, --Leggings of the Tempest
				{ itemID = 34574, desc = {"Sunwell Plateau", "Felmyst"} }, --Boots of the Tempest
			},
			{
				{ itemID = 30987, desc = {"Hyjal Summit", "Archimonde"} }, --Lightbringer Faceguard
				{ itemID = 30998, desc = {"Black Temple", "Mother Shahraz"} }, --Lightbringer Shoulderguards
				{ itemID = 30991, desc = {"Black Temple", "Illidan Stormrage"} }, --Lightbringer Chestguard
				{ itemID = 34433, desc = {"Sunwell Plateau", "Kalecgos"} }, --Lightbringer Wristguards
				{ itemID = 30985, desc = {"Hyjal Summit", "Kalecgos"} }, --Lightbringer Handguards
				{ itemID = 34488, desc = {"Sunwell Plateau", "Brutallus"} }, --Lightbringer Waistguard
				{ itemID = 30995, desc = {"Hyjal Summit", "Azgalor"} }, --Lightbringer Legguards
				{ itemID = 34560, desc = {"Sunwell Plateau", "Felmyst"} }, --Lightbringer Greaves
			},
			{
				{ itemID = 30989, desc = {"Hyjal Summit", "Archimonde"} }, --Lightbringer War-Helm
				{ itemID = 30997, desc = {"Black Temple", "Mother Shahraz"} }, --Lightbringer Shoulderbraces
				{ itemID = 30990, desc = {"Black Temple", "Illidan Stormrage"} }, --Lightbringer Breastplate
				{ itemID = 34431, desc = {"Sunwell Plateau", "Kalecgos"} }, --Lightbringer Bands
				{ itemID = 30982, desc = {"Hyjal Summit", "Kalecgos"} }, --Lightbringer Gauntlets
				{ itemID = 34485, desc = {"Sunwell Plateau", "Brutallus"} }, --Lightbringer Girdle
				{ itemID = 30993, desc = {"Hyjal Summit", "Azgalor"} }, --Lightbringer Greaves
				{ itemID = 34561, desc = {"Sunwell Plateau", "Felmyst"} }, --Lightbringer Boots
			},
			{
				{ itemID = 30988, desc = {"Hyjal Summit", "Archimonde"} }, --Lightbringer Greathelm
				{ itemID = 30996, desc = {"Black Temple", "Mother Shahraz"} }, --Lightbringer Pauldrons
				{ itemID = 30992, desc = {"Black Temple", "Illidan Stormrage"} }, --Lightbringer Chestpiece
				{ itemID = 34432, desc = {"Sunwell Plateau", "Kalecgos"} }, --Lightbringer Bracers
				{ itemID = 30983, desc = {"Hyjal Summit", "Kalecgos"} }, --Lightbringer Gloves
				{ itemID = 34487, desc = {"Sunwell Plateau", "Brutallus"} }, --Lightbringer Belt
				{ itemID = 30994, desc = {"Hyjal Summit", "Azgalor"} }, --Lightbringer Leggings
				{ itemID = 34559, desc = {"Sunwell Plateau", "Felmyst"} }, --Lightbringer Treads
			},
			{
				{ itemID = 31063, desc = {"Hyjal Summit", "Archimonde"} }, --Cowl of Absolution
				{ itemID = 31069, desc = {"Black Temple", "Mother Shahraz"} }, --Mantle of Absolution
				{ itemID = 31066, desc = {"Black Temple", "Illidan Stormrage"} }, --Vestments of Absolution
				{ itemID = 34435, desc = {"Sunwell Plateau", "Kalecgos"} }, --Cuffs of Absolution
				{ itemID = 31060, desc = {"Hyjal Summit", "Kalecgos"} }, --Gloves of Absolution
				{ itemID = 34527, desc = {"Sunwell Plateau", "Brutallus"} }, --Belt of Absolution
				{ itemID = 31068, desc = {"Hyjal Summit", "Azgalor"} }, --Breeches of Absolution
				{ itemID = 34562, desc = {"Sunwell Plateau", "Felmyst"} }, --Boots of Absolution
			},
			{
				{ itemID = 31064, desc = {"Hyjal Summit", "Archimonde"} }, --Hood of Absolution
				{ itemID = 31070, desc = {"Black Temple", "Mother Shahraz"} }, --Shoulderpads of Absolution
				{ itemID = 31065, desc = {"Black Temple", "Illidan Stormrage"} }, --Shroud of Absolution
				{ itemID = 34434, desc = {"Sunwell Plateau", "Kalecgos"} }, --Bracers of Absolution
				{ itemID = 31061, desc = {"Hyjal Summit", "Kalecgos"} }, --Handguards of Absolution
				{ itemID = 34528, desc = {"Sunwell Plateau", "Brutallus"} }, --Cord of Absolution
				{ itemID = 31067, desc = {"Hyjal Summit", "Azgalor"} }, --Leggings of Absolution
				{ itemID = 34563, desc = {"Sunwell Plateau", "Felmyst"} }, --Treads of Absolution
			},
			{
				{ itemID = 31027, desc = {"Hyjal Summit", "Archimonde"} }, --Slayer's Helm
				{ itemID = 31030, desc = {"Black Temple", "Mother Shahraz"} }, --Slayer's Shoulderpads
				{ itemID = 31028, desc = {"Black Temple", "Illidan Stormrage"} }, --Slayer's Chestguard
				{ itemID = 34448, desc = {"Sunwell Plateau", "Kalecgos"} }, --Slayer's Bracers
				{ itemID = 31026, desc = {"Hyjal Summit", "Kalecgos"} }, --Slayer's Handguards
				{ itemID = 34558, desc = {"Sunwell Plateau", "Brutallus"} }, --Slayer's Belt
				{ itemID = 31029, desc = {"Hyjal Summit", "Azgalor"} }, --Slayer's Legguards
				{ itemID = 34575, desc = {"Sunwell Plateau", "Felmyst"} }, --Slayer's Boots
			},
			{
				{ itemID = 31015, desc = {"Hyjal Summit", "Archimonde"} }, --Skyshatter Cover
				{ itemID = 31024, desc = {"Black Temple", "Mother Shahraz"} }, --Skyshatter Pauldrons
				{ itemID = 31018, desc = {"Black Temple", "Illidan Stormrage"} }, --Skyshatter Tunic
				{ itemID = 34439, desc = {"Sunwell Plateau", "Kalecgos"} }, --Skyshatter Wristguards
				{ itemID = 31011, desc = {"Hyjal Summit", "Kalecgos"} }, --Skyshatter Grips
				{ itemID = 34545, desc = {"Sunwell Plateau", "Brutallus"} }, --Skyshatter Girdle
				{ itemID = 31021, desc = {"Hyjal Summit", "Azgalor"} }, --Skyshatter Pants
				{ itemID = 34567, desc = {"Sunwell Plateau", "Felmyst"} }, --Skyshatter Greaves
			},
			{
				{ itemID = 31012, desc = {"Hyjal Summit", "Archimonde"} }, --Skyshatter Helmet
				{ itemID = 31022, desc = {"Black Temple", "Mother Shahraz"} }, --Skyshatter Shoulderpads
				{ itemID = 31016, desc = {"Black Temple", "Illidan Stormrage"} }, --Skyshatter Chestguard
				{ itemID = 34438, desc = {"Sunwell Plateau", "Kalecgos"} }, --Skyshatter Bracers
				{ itemID = 31007, desc = {"Hyjal Summit", "Kalecgos"} }, --Skyshatter Gloves
				{ itemID = 34543, desc = {"Sunwell Plateau", "Brutallus"} }, --Skyshatter Belt
				{ itemID = 31019, desc = {"Hyjal Summit", "Azgalor"} }, --Skyshatter Leggings
				{ itemID = 34565, desc = {"Sunwell Plateau", "Felmyst"} }, --Skyshatter Boots
			},
			{
				{ itemID = 31014, desc = {"Hyjal Summit", "Archimonde"} }, --Skyshatter Headguard
				{ itemID = 31023, desc = {"Black Temple", "Mother Shahraz"} }, --Skyshatter Mantle
				{ itemID = 31017, desc = {"Black Temple", "Illidan Stormrage"} }, --Skyshatter Breastplate
				{ itemID = 34437, desc = {"Sunwell Plateau", "Kalecgos"} }, --Skyshatter Bands
				{ itemID = 31008, desc = {"Hyjal Summit", "Kalecgos"} }, --Skyshatter Gauntlets
				{ itemID = 34542, desc = {"Sunwell Plateau", "Brutallus"} }, --Skyshatter Cord
				{ itemID = 31020, desc = {"Hyjal Summit", "Azgalor"} }, --Skyshatter Legguards
				{ itemID = 34566, desc = {"Sunwell Plateau", "Felmyst"} }, --Skyshatter Treads
			},
			{
				{ itemID = 31051, desc = {"Hyjal Summit", "Archimonde"} }, --Hood of the Malefic
				{ itemID = 31054, desc = {"Black Temple", "Mother Shahraz"} }, --Mantle of the Malefic
				{ itemID = 31052, desc = {"Black Temple", "Illidan Stormrage"} }, --Robe of the Malefic
				{ itemID = 34436, desc = {"Sunwell Plateau", "Kalecgos"} }, --Bracers of the Malefic
				{ itemID = 31050, desc = {"Hyjal Summit", "Kalecgos"} }, --Gloves of the Malefic
				{ itemID = 34541, desc = {"Sunwell Plateau", "Brutallus"} }, --Belt of the Malefic
				{ itemID = 31053, desc = {"Hyjal Summit", "Azgalor"} }, --Leggings of the Malefic
				{ itemID = 34564, desc = {"Sunwell Plateau", "Felmyst"} }, --Boots of the Malefic
			},
			{
				{ itemID = 30974, desc = {"Hyjal Summit", "Archimonde"} }, --Onslaught Greathelm
				{ itemID = 30980, desc = {"Black Temple", "Mother Shahraz"} }, --Onslaught Shoulderguards
				{ itemID = 30976, desc = {"Black Temple", "Illidan Stormrage"} }, --Onslaught Chestguard
				{ itemID = 34442, desc = {"Sunwell Plateau", "Kalecgos"} }, --Onslaught Wristguards
				{ itemID = 30970, desc = {"Hyjal Summit", "Kalecgos"} }, --Onslaught Handguards
				{ itemID = 34547, desc = {"Sunwell Plateau", "Brutallus"} }, --Onslaught Waistguard
				{ itemID = 30978, desc = {"Hyjal Summit", "Azgalor"} }, --Onslaught Legguards
				{ itemID = 34568, desc = {"Sunwell Plateau", "Felmyst"} }, --Onslaught Boots
			},
			{
				{ itemID = 33642, desc = {"Hyjal Summit", "Archimonde"} }, --Onslaught Greathelm
				{ itemID = 33645, desc = {"Black Temple", "Mother Shahraz"} }, --Onslaught Shoulderguards
				{ itemID = 33643, desc = {"Black Temple", "Illidan Stormrage"} }, --Onslaught Chestguard
				{ itemID = 33646, desc = {"Sunwell Plateau", "Kalecgos"} }, --Onslaught Wristguards
				{ itemID = 33641, desc = {"Hyjal Summit", "Kalecgos"} }, --Onslaught Handguards
				{ itemID = 33647, desc = {"Sunwell Plateau", "Brutallus"} }, --Onslaught Waistguard
				{ itemID = 33644, desc = {"Hyjal Summit", "Azgalor"} }, --Onslaught Legguards
				{ itemID = 33648, desc = {"Sunwell Plateau", "Felmyst"} }, --Onslaught Boots
			},
			{
				{ itemID = 30972, desc = {"Hyjal Summit", "Archimonde"} }, --Onslaught Battle-Helm
				{ itemID = 30979, desc = {"Black Temple", "Mother Shahraz"} }, --Onslaught Shoulderblades
				{ itemID = 30975, desc = {"Black Temple", "Illidan Stormrage"} }, --Onslaught Breastplate
				{ itemID = 34441, desc = {"Sunwell Plateau", "Kalecgos"} }, --Onslaught Bracers
				{ itemID = 30969, desc = {"Hyjal Summit", "Kalecgos"} }, --Onslaught Gauntlets
				{ itemID = 34546, desc = {"Sunwell Plateau", "Brutallus"} }, --Onslaught Belt
				{ itemID = 30977, desc = {"Hyjal Summit", "Azgalor"} }, --Onslaught Greaves
				{ itemID = 34569, desc = {"Sunwell Plateau", "Felmyst"} }, --Onslaught Treads
			},
	},

	--------------------------------
	---The Burning Crusade Sets ---
	--------------------------------
	["TBCSets"] = {
		{
			{ itemID = 34703 }, --Latro's Dancing Blade
			{ itemID = 28189 }, --Latro's Shifting Sword
		},
		{
			{ itemID = 31338  }, --Charlotte's Ivy
		 	{ itemID = 31339  }, --Lola's Eve
		},
		{
			{ itemID = 32946 }, --Claw of Molten Fury
		 	{ itemID = 32945 }, --Fist of Molten Fury
		},

		{
			{ itemID = 32837 }, --Warglaive of Azzinoth
		 	{ itemID = 32838 }, --Warglaive of Azzinoth
		},
	},

--------------------------------
---Badge of Justice Rewards ---
--------------------------------

["BadgeShatt"] = {
		{
			{ itemID = 32090, price = "50 #heroic#" }, --Cowl of Naaru Blessings
			{ itemID = 32089, price = "50 #heroic#" }, --Mana-Binders Cowl
			{ itemID = 33588, price = "35 #heroic#" }, --Runed Spell-cuffs
			{ itemID = 33589, price = "35 #heroic#" }, --Wristguards of Tranquil Thought
			{ itemID = 33587, price = "60 #heroic#" }, --Light-Blessed Bonds
			{ itemID = 33586, price = "60 #heroic#" }, --Studious Wraps
			{ itemID = 33291, price = "60 #heroic#" }, --Voodoo-woven Belt
			{ itemID = 33585, price = "75 #heroic#" }, --Achromic Trousers of the Naaru
			{ itemID = 33584, price = "75 #heroic#" }, --Pantaloons of Arcane Annihilation
		},
		{
			{ itemID = 32088, price = "50 #heroic#" }, --Cowl of Beastly Rage
			{ itemID = 33972, price = "75 #heroic#" }, --Mask of Primal Power
			{ itemID = 32087, price = "50 #heroic#" }, --Mask of the Deceiver
			{ itemID = 33287, price = "60 #heroic#" }, --Gnarled Ironwood Pauldrons
			{ itemID = 33973, price = "60 #heroic#" }, --Pauldrons of Tribal Fury
			{ itemID = 33566, price = "75 #heroic#" }, --Blessed Elunite Coverings
			{ itemID = 33579, price = "75 #heroic#" }, --Vestments of Hibernation
			{ itemID = 33578, price = "35 #heroic#" }, --Armwraps of the Kaldorei Protector
			{ itemID = 33580, price = "35 #heroic#" }, --Band of the Swift Paw
			{ itemID = 33557, price = "35 #heroic#" }, --Gargon's Bracers Peaceful Slumber
			{ itemID = 33540, price = "35 #heroic#" }, --Master Assassin Wristwraps
			{ itemID = 33974, price = "60 #heroic#" }, --Grasp of the Moonkin
			{ itemID = 33539, price = "60 #heroic#" }, --Trickster's Stickyfingers
			{ itemID = 33559, price = "60 #heroic#" }, --Starfire Waistband
			{ itemID = 33583, price = "60 #heroic#" }, --Waistguard of the Great Beast
			{ itemID = 33552, price = "75 #heroic#" }, --Pants of Splendid Recovery
			{ itemID = 33538, price = "75 #heroic#" }, --Shallow-grave Trousers
			{ itemID = 33582, price = "60 #heroic#" }, --Footwraps of Wild Encroachment
			{ itemID = 33577, price = "60 #heroic#" }, --Moon-walkers
			{ itemID = 33222, price = "60 #heroic#" }, --Nyn'jah's Tabi Boots
		},
		{
			{ itemID = 32086, price = "50 #heroic#" }, --Storm Master's Helmet
			{ itemID = 32085, price = "50 #heroic#" }, --Warpstalker Helm
			{ itemID = 33970, price = "60 #heroic#" }, --Pauldrons of the Furious Elements
			{ itemID = 33965, price = "75 #heroic#" }, --Hauberk of the Furious Elements
			{ itemID = 33535, price = "35 #heroic#" }, --Earthquake Bracers
			{ itemID = 33532, price = "35 #heroic#" }, --Gleaming Earthen Bracers
			{ itemID = 33529, price = "35 #heroic#" }, --Steadying Bracers
			{ itemID = 33528, price = "60 #heroic#" }, --Gauntlets of Sniping
			{ itemID = 33534, price = "60 #heroic#" }, --Grips of Nature's Wrath
			{ itemID = 33531, price = "60 #heroic#" }, --Polished Waterscale Gloves
			{ itemID = 33386, price = "60 #heroic#" }, --Man'kin'do's Belt
			{ itemID = 33536, price = "60 #heroic#" }, --Stormwrap
			{ itemID = 33280, price = "60 #heroic#" }, --War-Feathered Loop
			{ itemID = 33530, price = "75 #heroic#" }, --Natural Life Leggings
			{ itemID = 33527, price = "75 #heroic#" }, --Shifting Camouflage Pants
			{ itemID = 33537, price = "60 #heroic#" }, --Treads of Booming Thunder
			{ itemID = 33324, price = "60 #heroic#" }, --Treads of Life Path
		},
		{
			{ itemID = 33810, price = "75 #heroic#" }, --Amani Mask of Death
			{ itemID = 32083, price = "50 #heroic#" }, --Faceguard of Determination
			{ itemID = 32084, price = "50 #heroic#" }, --Helmet of the Steadfast Champion
			{ itemID = 33514, price = "60 #heroic#" }, --Pauldrons of Gruesome Fate
			{ itemID = 33522, price = "75 #heroic#" }, --Chestguard of the Stoic Guardian
			{ itemID = 33516, price = "35 #heroic#" }, --Bracers of the Ancient Phalanx
			{ itemID = 33513, price = "35 #heroic#" }, --Eternium Rage-shackles
			{ itemID = 33520, price = "35 #heroic#" }, --Vambraces of the Naaru
			{ itemID = 33517, price = "60 #heroic#" }, --Bonefist Gauntlets
			{ itemID = 33512, price = "60 #heroic#" }, --Furious Deathgrips
			{ itemID = 33519, price = "60 #heroic#" }, --Handguards of the Templar
			{ itemID = 33331, price = "60 #heroic#" }, --Chain of Unleashed Rage
			{ itemID = 33524, price = "60 #heroic#" }, --Girdle of the Protector
			{ itemID = 33279, price = "60 #heroic#" }, --Iron-tusk Girdle
			{ itemID = 33501, price = "75 #heroic#" }, --Bloodthirster's Greaves
			{ itemID = 33518, price = "75 #heroic#" }, --High Justicar's Legplates
			{ itemID = 33515, price = "75 #heroic#" }, --Unwavering Legguards
			{ itemID = 33207, price = "60 #heroic#" }, --Implacable Guardian Sabatons
			{ itemID = 33523, price = "60 #heroic#" }, --Sabatons of the Righteous Defender
		},
		{
			{ itemID = 29375, price = "25 #heroic#" }, --Bishop's Cloak
			{ itemID = 29382, price = "25 #heroic#" }, --Blood Knight War Cloak
			{ itemID = 35321, price = "60 #heroic#" }, --Cloak of Arcane Alacrity
			{ itemID = 33304, price = "60 #heroic#" }, --Cloak of Subjugated Power
			{ itemID = 35324, price = "60 #heroic#" }, --Cloak of Swift Reprieve
			{ itemID = 33484, price = "60 #heroic#" }, --Dory's Embrace
			{ itemID = 29385, price = "25 #heroic#" }, --Farstrider Defender's Cloak
			{ itemID = 33333, price = "60 #heroic#" }, --Kharmaa's Shroud of Hope
			{ itemID = 29369, price = "25 #heroic#" }, --Shawl of Shifting Probabilities
			{ itemID = 33593, price = "35 #heroic#" }, --Slikk's Cloak of Placation
		},
		{
			{ itemID = 29390, price = "15 #heroic#" }, --Everbloom Idol
			{ itemID = 33508, price = "20 #heroic#" }, --Idol of Budding Life
			{ itemID = 33509, price = "20 #heroic#" }, --Idol of Terror
			{ itemID = 33510, price = "20 #heroic#" }, --Idol of the Unseen Moon
			{ itemID = 33506, price = "20 #heroic#" }, --Skycall Totem
			{ itemID = 33507, price = "20 #heroic#" }, --Stonebreaker's Totem
			{ itemID = 33505, price = "20 #heroic#" }, --Totem of Living Water
			{ itemID = 29389, price = "15 #heroic#" }, --Totem of the Pulsing Earth
			{ itemID = 33503, price = "20 #heroic#" }, --Libram of Divine Judgement
			{ itemID = 33504, price = "20 #heroic#" }, --Libram of Divine Purpose
			{ itemID = 33502, price = "20 #heroic#" }, --Libram of Mending
			{ itemID = 29388, price = "15 #heroic#" }, --Libram of Repentance
		},
		{
			{ itemID = 29275, price = "50 #heroic#" }, --Searing Sunblade
			{ itemID = 33192, price = "25 #heroic#" }, --Carved Witch Doctor's Stick
			{ itemID = 29266, price = "33 #heroic#" }, --Azure-Shield of Coldarra
			{ itemID = 29267, price = "33 #heroic#" }, --Light-Bearer's Faith Shield
			{ itemID = 29268, price = "33 #heroic#" }, --Mazthoril Honor Shield
			{ itemID = 33334 , price = "35 #heroic#" }, --Fetish of the Primal Gods
			{ itemID = 29270 , price = "25 #heroic#" }, --Flametounge Seal
			{ itemID = 29273 , price = "25 #heroic#" }, --Khadgar's Knapsack
			{ itemID = 29272 , price = "25 #heroic#" }, --Orb of the Soul-Eater
			{ itemID = 29269 , price = "25 #heroic#" }, --Sapphiron's Wing Bone
			{ itemID = 29271 , price = "25 #heroic#" }, --Talisman of Kalecgos
			{ itemID = 29274 , price = "25 #heroic#" }, --Tears of Heaven
			{ itemID = 33325 , price = "35 #heroic#" }, --Voodoo Shaker
		},
		{
			{ itemID = 33296 , price = "35 #heroic#" }, --Brooch of Deftness
			{ itemID = 29381 , price = "25 #heroic#" }, --Choker of Vile Intent
			{ itemID = 29374 , price = "25 #heroic#" }, --Necklace of Eternal Hope
			{ itemID = 29368 , price = "25 #heroic#" }, --Manasurge Pendant
			{ itemID = 29386 , price = "25 #heroic#" }, --Necklace of the Juggernaut
			{ itemID = 29373 , price = "25 #heroic#" }, --Band of Halos
			{ itemID = 29379 , price = "25 #heroic#" }, --Ring of Arathi Warlords
			{ itemID = 29367 , price = "25 #heroic#" }, --Ring of Cryptic Dreams
			{ itemID = 29384 , price = "25 #heroic#" }, --Ring of Unyielding Force
			{ itemID = 23572, price = "10 #heroic#" }, --Primal Nether
			{ itemID = 32227, price = "15 #heroic#" }, --Crimson Spinel
			{ itemID = 32229, price = "15 #heroic#" }, --Lionseye
			{ itemID = 32249, price = "15 #heroic#" }, --Seaspray Emerald
			{ itemID = 35326, price = "75 #heroic#" }, --Battlemaster's Alacrity
			{ itemID = 34049, price = "75 #heroic#" }, --Battlemaster's Audacity
			{ itemID = 34163, price = "75 #heroic#" }, --Battlemaster's Cruelty
			{ itemID = 34162, price = "75 #heroic#" }, --Battlemaster's Depravity
			{ itemID = 33832, price = "75 #heroic#" }, --Battlemaster's Determination
			{ itemID = 34050, price = "75 #heroic#" }, --Battlemaster's Perseverance
			{ itemID = 29383, price = "41 #heroic#" }, --Bloodlust Brooch
			{ itemID = 29376, price = "41 #heroic#" }, --Essence of the Martyr
			{ itemID = 29387, price = "41 #heroic#" }, --Gnomeregan Auto-Blocker 600
			{ itemID = 29370, price = "41 #heroic#" }, --Icon of the Silver Crescent
			{ itemID = 30183, price = "15 #heroic#" }, --Nether Vortex
			{ itemID = 32228, price = "15 #heroic#" }, --Empyrean Sapphire
			{ itemID = 32231, price = "15 #heroic#" }, --Pyrestone
			{ itemID = 32230, price = "15 #heroic#" }, --Shadowsong Amethyst
		},
		{
			{ icon = "INV_Box_01", name = "Cloth" },
			{ itemID = 30762, price = "30 #heroic#" }, --Infernoweave Robe
			{ itemID = 30764, price = "20 #heroic#" }, --Infernoweave Gloves
			{ itemID = 30761, price = "30 #heroic#" }, --Infernoweave Leggings
			{ itemID = 30763, price = "20 #heroic#" }, --Infernoweave Boots
			{ icon = "INV_Box_01", name = "Leather" },
			{ itemID = 30776, price = "30 #heroic#" }, --Inferno Hardened Chestguard
			{ itemID = 30780, price = "20 #heroic#" }, --Inferno Hardened Gloves
			{ itemID = 30778, price = "30 #heroic#" }, --Inferno Hardened Leggings
			{ itemID = 30779, price = "20 #heroic#" }, --Inferno Hardened Boots
			{ itemID = 29434 }, --Badge of Justice
			{ icon = "INV_Box_01", name = "Mail" },
			{ itemID = 30773, price = "30 #heroic#" }, --Inferno Forged Hauberk
			{ itemID = 30774, price = "20 #heroic#" }, --Inferno Forged Gloves
			{ itemID = 30772, price = "30 #heroic#" }, --Inferno Forged Leggings
			{ itemID = 30770, price = "20 #heroic#" }, --Inferno Forged Boots
			{ icon = "INV_Box_01", name = "Plate" },
			{ itemID = 30769, price = "30 #heroic#" }, --Inferno Tempered Chestguard
			{ itemID = 30767, price = "20 #heroic#" }, --Inferno Tempered Gauntlets
			{ itemID = 30766, price = "30 #heroic#" }, --Inferno Tempered Leggings
			{ itemID = 30768, price = "20 #heroic#" }, --Inferno Tempered Boots
		},
	},

	["BadgeSunwell"] = {
		{
			{ itemID = 34924, price = "100 #heroic#" }, --Gown of Spiritual Wonder
			{ itemID = 34917, price = "100 #heroic#" }, --Shroud of the Lore`nial
			{ itemID = 34936, price = "100 #heroic#" }, --Tormented Demonsoul Robes
			{ itemID = 34938, price = "75 #heroic#" }, --Enslaved Doomguard Soulgrips
			{ itemID = 34925, price = "100 #heroic#" }, --Adorned Supernal Legwraps
			{ itemID = 34937, price = "100 #heroic#" }, --Corrupted Soulcloth Pantaloons
			{ itemID = 34918, price = "100 #heroic#" }, --Legwraps of Sweltering Flame
			{ itemID = 34919, price = "75 #heroic#" }, --Boots of Incantations
			{ itemID = 34926, price = "75 #heroic#" }, --Slippers of Dutiful Mending
		},
		{
			{ itemID = 34906, price = "100 #heroic#" }, --Embrace of Everlasting Prowess
			{ itemID = 34903, price = "100 #heroic#" }, --Embrace of Starlight
			{ itemID = 34900, price = "100 #heroic#" }, --Shroud of Nature's Harmony
			{ itemID = 34927, price = "100 #heroic#" }, --Tunic of the Dark Hour
			{ itemID = 34904, price = "75 #heroic#" }, --Barbed Gloves of the Sage
			{ itemID = 34911, price = "75 #heroic#" }, --Handwraps of the Aggressor
			{ itemID = 34902, price = "75 #heroic#" }, --Oakleaf-Spun Handguards
			{ itemID = 34929, price = "75 #heroic#" }, --Belt of the Silent Path
			{ itemID = 34905, price = "100 #heroic#" }, --Crystalwind Leggings
			{ itemID = 34901, price = "100 #heroic#" }, --Grovewalker's Leggings
			{ itemID = 34910, price = "100 #heroic#" }, --Tameless Breeches
			{ itemID = 34928, price = "100 #heroic#" }, --Trousers of the Scryers' Retainer
		},
		{
			{ itemID = 34933, price = "100 #heroic#" }, --Hauberk of Whirling Fury
			{ itemID = 34912, price = "100 #heroic#" }, --Scaled Drakeskin Chestguard
			{ itemID = 34930, price = "100 #heroic#" }, --Wave of Life Chestguard
			{ itemID = 34916, price = "75 #heroic#" }, --Gauntlets of Rapidity
			{ itemID = 34935, price = "75 #heroic#" }, --Aftershock Waistguard
			{ itemID = 34932, price = "75 #heroic#" }, --Clutch of the Soothing Breeze
			{ itemID = 34914, price = "100 #heroic#" }, --Leggings of the Pursuit
			{ itemID = 34931, price = "100 #heroic#" }, --Runed Scales of Antiquity
			{ itemID = 34934, price = "100 #heroic#" }, --Rushing Storm Kilt
		},
		{
			{ itemID = 34942, price = "100 #heroic#" }, --Breastplate of Ire
			{ itemID = 34939, price = "100 #heroic#" }, --Chestplate of Stoicism
			{ itemID = 34921, price = "100 #heroic#" }, --Ecclesiastical Cuirass
			{ itemID = 34945, price = "100 #heroic#" }, --Shattrath Protectorate's Breastplate
			{ itemID = 34944, price = "75 #heroic#" }, --Girdle of Seething Rage
			{ itemID = 34941, price = "75 #heroic#" }, --Girdle of the Fearless
			{ itemID = 34923, price = "75 #heroic#" }, --Waistguard of Reparation
			{ itemID = 34922, price = "100 #heroic#" }, --Greaves of Pacification
			{ itemID = 34946, price = "100 #heroic#" }, --Inscribed Legplates of the Aldor
			{ itemID = 34943, price = "100 #heroic#" }, --Legplates of Unending Fury
			{ itemID = 34940, price = "100 #heroic#" }, --Sunguard Legplates
			{ itemID = 34947, price = "75 #heroic#" }, --Blue's Greaves of the Righteous Guardian
		},
		{
			{ itemID = 34893, price = "105 #heroic#" }, --Vanir's Right Fist of Brutality
			{ itemID = 34951, price = "45 #heroic#" }, --Vanir's Left Fist of Brutality
			{ itemID = 34950, price = "45 #heroic#" }, --Vanir's Left Fist of Savagery
			{ itemID = 34895, price = "150 #heroic#" }, --Scryer's Blade of Focus
			{ itemID = 34894, price = "105 #heroic#" }, --Blade of Serration
			{ itemID = 34949, price = "45 #heroic#" }, --Swift Blade of Uncertainty
			{ itemID = 34952, price = "45 #heroic#" }, --The Mutilator
			{ itemID = 34891, price = "150 #heroic#" }, --The Blade of Harbingers
			{ itemID = 34896 , price = "150 #heroic#" }, --Gavel of Naaru Blessings
			{ itemID = 34898 , price = "150 #heroic#" }, --Staff of the Forest Lord
			{ itemID = 34892, price = "150 #heroic#" }, --Crossbow of Relentless Strikes
		},
		{
			{ itemID = 34887 , price = "60 #heroic#" }, --Angelista's Revenge
			{ itemID = 34890 , price = "60 #heroic#" }, --Anveena's Touch
			{ itemID = 34889 , price = "60 #heroic#" }, --Fused Nethergon Band
			{ itemID = 34888 , price = "60 #heroic#" }, --Ring of the Stalwart Protector
		},
	},

	["SunmoteSunwell"] = {
		{
			{ itemID = 10735, contentsPreview = {{34345},{34664}} }, --Cover of Anasterian
			{ itemID = 10736, contentsPreview = {{34332},{34664}} }, --War-Helm of Gul\'dan
			{ itemID = 11433, contentsPreview = {{34208},{34664}} }, --Equilibrium Mantle
			{ itemID = 11483, contentsPreview = {{34193},{34664}} }, --Shoulderguards of the Thalassian Savior
			{ itemID = 11484, contentsPreview = {{34215},{34664}} }, --Casing of Reckless Fury
			{ itemID = 11485, contentsPreview = {{34229},{34664}} }, --Breastplate of Serene Shores
			{ itemID = 11517, contentsPreview = {{34180},{34664}} }, --Felfury Legguards
			{ itemID = 11518, contentsPreview = {{34186},{34664}} }, --Pants of the Tumulutuos Storm
			{ itemID = 11519, contentsPreview = {{34350},{34664}} }, --Gloves of the Ancient Shadowmoon
			{ itemID = 11520, contentsPreview = {{34341},{34664}} }, --Borderland Gauntlets 5076
			{ itemID = 34381, contentsPreview = {{34180},{34664}} }, --Felstrength Legplates
			{ itemID = 34382, contentsPreview = {{34167},{34664}} }, --Judicator\'s Legguards
			{ itemID = 34383, contentsPreview = {{34186},{34664}} }, --Kilt of Spiritual Reconstruction
			{ itemID = 34384, contentsPreview = {{34169},{34664}} }, --Breeches of Natural Splendor
			{ itemID = 34385, contentsPreview = {{34188},{34664}} }, --Leggings of the Immortal Beast
			{ itemID = 34386, contentsPreview = {{34170},{34664}} }, --Pantaloons of Growing Strife
			{ itemID = 34388, contentsPreview = {{34192},{34664}} }, --Pauldrons of Berserking
			{ itemID = 34389, contentsPreview = {{34193},{34664}} }, --Spaulders of the Thalassian Defender
			{ itemID = 34390, contentsPreview = {{34208},{34664}} }, --Erupting Epaulets
			{ itemID = 34391, contentsPreview = {{34209},{34664}} }, --Spaulders of Devastation
			{ itemID = 34392, contentsPreview = {{34195},{34664}} }, --Demontooth Shoulderpads
			{ itemID = 34393, contentsPreview = {{34202},{34664}} }, --Shoulderpads of Knowledge\'s Pursuit
			{ itemID = 34394, contentsPreview = {{34215},{34664}} }, --Breastplate of Agony\'s Aversion
			{ itemID = 34395, contentsPreview = {{34216},{34664}} }, --Noble Judicator\'s Chestguard
			{ itemID = 34396, contentsPreview = {{34229},{34664}} }, --Garments of Crashing Shores
			{ itemID = 34397, contentsPreview = {{34211},{34664}} }, --Bladed Chaos Tunic
			{ itemID = 34398, contentsPreview = {{34212},{34664}} }, --Utopian Tunic of Elune
			{ itemID = 34399, contentsPreview = {{34233},{34664}} }, --Robes of Ghostly Hatred
			{ itemID = 34400, contentsPreview = {{34345},{34664}} }, --Crown of Dath\'Remar
			{ itemID = 34401, contentsPreview = {{34243},{34664}} }, --Helm of Uther\'s Resolve
			{ itemID = 34402, contentsPreview = {{34332},{34664}} }, --Shroud of Chieftain Ner\'zhul
			{ itemID = 34403, contentsPreview = {{34245},{34664}} }, --Cover of Ursoc the Mighty
			{ itemID = 34404, contentsPreview = {{34244},{34664}} }, --Mask of the Fury Hunter
			{ itemID = 34405, contentsPreview = {{34339},{34664}} }, --Helm of Arcane Purity
			{ itemID = 34406, contentsPreview = {{34342},{34664}} }, --Gloves of Tyri\'s Power
			{ itemID = 34407, contentsPreview = {{34351},{34664}} }, --Tranquil Moonlight Wraps
			{ itemID = 34408, contentsPreview = {{34234},{34664}} }, --Gloves of the Forest Drifter
			{ itemID = 34409, contentsPreview = {{34350},{34664}} }, --Gauntlets of the Ancient Frostwolf
		},
	},



	["HardModeArena"] = {
			{
				{ itemID = 32811, price = "25 #heroic#" }, --Veteran's Dreadweave Cuffs
				{ itemID = 32799, price = "40 #heroic#" }, --Veteran's Dreadweave Belt
				{ itemID = 32787, price = "40 #heroic#" }, --Veteran's Dreadweave Stalkers
				{ itemID = 32980, price = "25 #heroic#" }, --Veteran's Mooncloth Cuffs
				{ itemID = 32979, price = "40 #heroic#" }, --Veteran's Mooncloth Belt
				{ itemID = 32981, price = "40 #heroic#" }, --Veteran's Mooncloth Slippers
				{ itemID = 32820, price = "25 #heroic#" }, --Veteran's Silk Cuffs
				{ itemID = 32807, price = "40 #heroic#" }, --Veteran's Silk Belt
				{ itemID = 32795, price = "40 #heroic#" }, --Veteran's Silk Footguards
				{ itemID = 32810, price = "25 #heroic#" }, --Veteran's Dragonhide Bracers
				{ itemID = 32798, price = "40 #heroic#" }, --Veteran's Dragonhide Belt
				{ itemID = 32786, price = "40 #heroic#" }, --Veteran's Dragonhide Boots
				{ itemID = 32812, price = "25 #heroic#" }, --Veteran's Kodohide Bracers
				{ itemID = 32800, price = "40 #heroic#" }, --Veteran's Kodohide Belt
				{ itemID = 32788, price = "40 #heroic#" }, --Veteran's Kodohide Boots
				{ itemID = 32814, price = "25 #heroic#" }, --Veteran's Leather Bracers
				{ itemID = 32802, price = "40 #heroic#" }, --Veteran's Leather Belt
				{ itemID = 32790, price = "40 #heroic#" }, --Veteran's Leather Boots
				{ itemID = 32821, price = "25 #heroic#" }, --Veteran's Wyrmhide Bracers
				{ itemID = 32808, price = "40 #heroic#" }, --Veteran's Wyrmhide Belt
				{ itemID = 32796, price = "40 #heroic#" }, --Veteran's Wyrmhide Boots
			},
	},

["HardModeArena2"] = {
		{
			{ itemID = 32809, price = "25 #heroic#" }, --Veteran's Chain Bracers
			{ itemID = 32797, price = "40 #heroic#" }, --Veteran's Chain Girdle
			{ itemID = 32785, price = "40 #heroic#" }, --Veteran's Chain Sabatons
			{ itemID = 32816, price = "25 #heroic#" }, --Veteran's Linked Bracers
			{ itemID = 32803, price = "40 #heroic#" }, --Veteran's Linked Girdle
			{ itemID = 32791, price = "40 #heroic#" }, --Veteran's Linked Sabatons
			{ itemID = 32817, price = "25 #heroic#" }, --Veteran's Mail Bracers
			{ itemID = 32804, price = "40 #heroic#" }, --Veteran's Mail Girdle
			{ itemID = 32792, price = "40 #heroic#" }, --Veteran's Mail Sabatons
			{ itemID = 32997, price = "25 #heroic#" }, --Veteran's Ringmail Bracers
			{ itemID = 32998, price = "40 #heroic#" }, --Veteran's Ringmail Girdle
			{ itemID = 32999, price = "40 #heroic#" }, --Veteran's Ringmail Sabatons
			{ itemID = 32813, price = "25 #heroic#" }, --Veteran's Lamellar Bracers
			{ itemID = 32801, price = "40 #heroic#" }, --Veteran's Lamellar Belt
			{ itemID = 32789, price = "40 #heroic#" }, --Veteran's Lamellar Greaves
			{ itemID = 32989, price = "25 #heroic#" }, --Veteran's Ornamented Bracers
			{ itemID = 32988, price = "40 #heroic#" }, --Veteran's Ornamented Belt
			{ itemID = 32990, price = "40 #heroic#" }, --Veteran's Ornamented Greaves
			{ itemID = 32818, price = "25 #heroic#" }, --Veteran's Plate Bracers
			{ itemID = 32805, price = "40 #heroic#" }, --Veteran's Plate Belt
			{ itemID = 32793, price = "40 #heroic#" }, --Veteran's Plate Greaves
			{ itemID = 32819, price = "25 #heroic#" }, --Veteran's Scaled Bracers
			{ itemID = 32806, price = "40 #heroic#" }, --Veteran's Scaled Belt
			{ itemID = 32794, price = "40 #heroic#" }, --Veteran's Scaled Greaves
		},
	},

-----------------------
---BoE World Epics ---
-----------------------

["WorldEpicsTBC"] = {
		{
			{ itemID = 31329 }, --Lifegiving Cloak
			{ itemID = 31340 }, --Will of Edward the Odd
			{ itemID = 31343 }, --Kamaei's Cerulean Skirt
			{ itemID = 31333 }, --The Night Watchman
			{ itemID = 31335 }, --Pants of Living Growth
			{ itemID = 31330 }, --Lightning Crown
			{ itemID = 31328 }, --Leggings of Beast Mastery
			{ itemID = 31320 }, --Chestguard of Exile
			{ itemID = 31338 }, --Charlotte's Ivy
			{ itemID = 31321 }, --Choker of Repentance
			{ itemID = 31319 }, --Band of Impenetrable Defenses
			{ itemID = 31339 }, --Lola's Eve
			{ itemID = 31326 }, --Truestrike Ring
			{ itemID = 31331 }, --The Night Blade
			{ itemID = 31336 }, --Blade of Wizardry
			{ itemID = 31332 }, --Blinkstrike
			{ itemID = 31318 }, --Singing Crystal Axe
			{ itemID = 31342 }, --The Ancient Scepter of Sue-Min
			{ itemID = 31322 }, --The Hammer of Destiny
			{ itemID = 31334 }, --Staff of Natural Fury
			{ itemID = 34622 }, --Spinesever
			{ itemID = 31323 }, --Don Santos' Famous Hunting Rifle
		},
	},

["WorldRaresTBC"] = {
		{
			{ itemID = 31187 },
			{ itemID = 31173 },
			{ itemID = 31193 },
			{ itemID = 31175 },
			{ itemID = 31258 },
			{ itemID = 31290 },
			{ itemID = 31153 },
			{ itemID = 31178 },
			{ itemID = 31230 },
			{ itemID = 31186 },
			{ itemID = 31305 },
			{ itemID = 31152 },
			{ itemID = 31295 },
			{ itemID = 31285 },
			{ itemID = 31255 },
			{ itemID = 31303 },
			{ itemID = 31280 },
			{ itemID = 31288 },
			{ itemID = 31299 },
			{ itemID = 31204 },
			{ itemID = 31304 },
			{ itemID = 31190 },
			{ itemID = 31308 },
			{ itemID = 31289 },
			{ itemID = 31237 },
			{ itemID = 31287 },
			{ itemID = 31291 },
			{ itemID = 31234 },
			{ itemID = 31292 },
			{ itemID = 31272 },
			{ itemID = 31282 },
			{ itemID = 31143 },
			{ itemID = 31200 },
			{ itemID = 31240 },
			{ itemID = 31283 },
			{ itemID = 31297 },
			{ itemID = 31147 },
			{ itemID = 31294 },
			{ itemID = 31277 },
			{ itemID = 31275 },
			{ itemID = 31281 },
			{ itemID = 31298 },
			{ itemID = 31226 },
			{ itemID = 31306 },
			{ itemID = 31145 },
			{ itemID = 31222 },
			{ itemID = 31222 },
			{ itemID = 31150 },
			{ itemID = 31149 },
			{ itemID = 31151 },
			{ itemID = 31293 },
			{ itemID = 31180 },
		},
	},
})
