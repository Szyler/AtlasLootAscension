local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local color = AtlasLoot.Colors
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local gap = {"gap"}
-- Index
--- Dungeons & Raids
---- Keys
---- Ahn'Qiraj: The Ruins of Ahn'Qiraj
---- Ahn'Qiraj: The Temple of Ahn'Qiraj
---- AQ Enchants
---- Blackfathom Deeps
---- Blackrock Mountain: Blackrock Dephts
---- Blackrock Mountain: Lower Blackrock Spire
---- Blackrock Mountain: Upper Blackrock Spire
---- Blackrock Mountain: Molten Core
---- Blackrock Mountain: Blackwing Lair
---- Dire Maul Books
---- Dire Maul East
---- Dire Maul North
---- Dire Maul West
---- Gnomeregan
---- Maraudon
---- Ragefire Chasm
---- Razorfen Downs
---- Razorfen Kraul
---- Scarlet Monastery
---- Scholomance
---- Shadowfang Keep
---- Stratholme
---- The Deadmines
---- The Stockade
---- The Sunken Temple
---- Uldaman
---- Wailing Caverns
---- Zul'Farrak
---- Zul'Gurub
---- Naxxramas
---- Onyxia
--- Sets & Collections
---- Dungeon 1 and 2 Sets (D1/D2)
---- Tier 1/2 Sets (T1/T2)
---- Tier 3 Sets (T3)
---- Vanilla WoW Sets
---- ZG Sets
---- AQ20 Sets
---- AQ40 Sets
---- BoE World Epics
--- PvP
---- Alterac Valley
---- Arathi Basin
---- Warsong Gulch
---- PvP Level 60 Rare and Epic Sets
---- PvP Level 60 Weapons
---- PvP Level 60 Accessories
---- PvP Level 60 Enchants
--- Factions
---- Misc
---- Argent Dawn
---- Bloodsail Buccaneers & Hydraxian Waterlords
---- Brood of Nozdormu
---- Cenarion Circle
---- Stormpike Guard & Frostwolf Clan
---- Thorium Brotherhood
---- Timbermaw Hold
---- Zandalar Tribe
--- World Bosses
---- Dragons of Nightmare
---- Azuregos
---- Classic Kazzak
---- Setis

------------------------
--- Dungeons & Raids ---
------------------------

------------
--- Keys ---
------------

AtlasLoot_Data["OldKeys"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Old Keys",
	{
		Name = "Old Keys",
		{
			{ icon = "INV_Box_01", name = color.WHITE..BabbleInventory["Key"].."s" },
			{ itemID = 7146 }, --The Scarlet Key
			{ itemID = 12382 }, --Key to the City
			{ itemID = 6893 }, --Workshop Key
			{ itemID = 11000 }, --Shadowforge Key
			{ itemID = 11140 }, --Prison Cell Key
			{ itemID = 18249 }, --Crescent Key
			{ itemID = 13704 }, --Skeleton Key
			gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Dungeon Set 2"] },
			{ itemID = 22057 }, --Brazier of Invocation
			{ itemID = 21986 }, --Banner of Provocation
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE..AL["Misc"] },
			{ itemID = 19931 }, --Gurubashi Mojo Madness
			{ itemID = 13523 }, --Blood of Innocents
			{ itemID = 18746 }, --Divination Scryer
			{ itemID = 18663 }, --J'eevee's Jar
			{ itemID = 19974 }, --Mudskunk Lure
			{ itemID = 7733 }, --Staff of Prehistoria
			{ itemID = 10818 }, --Yeh'kinya's Scroll
		},
	},
}

-----------------------------------------
--- Ahn'Qiraj: The Ruins of Ahn'Qiraj ---
-----------------------------------------

AtlasLoot_Data["RuinsofAQ"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Ruins of Ahn'Qiraj"],
	Type = "ClassicRaid",
	Map = "TheRuinsofAhnQiraj",
	{
		Name = BabbleBoss["Kurinnaxx"],
		{
			{ itemID = 21500, groupID = 1, refLootEntry = 15348 }, --Belt of the Inquisition
			{ itemID = 21503, groupID = 1, refLootEntry = 15348 }, --Belt of the Sand Reaver
			{ itemID = 21809, groupID = 1, refLootEntry = 15348 }, --Fury of the Forgotten Swarm
			{ itemID = 21498, groupID = 1, refLootEntry = 15348 }, --Qiraji Sacrificial Dagger
			{ itemID = 21502, groupID = 1, refLootEntry = 15348 }, --Sand Reaver Wristguards
			{ itemID = 21501, groupID = 1, refLootEntry = 15348 }, --Toughened Silithid Hide Gloves
			{ itemID = 21810, groupID = 1, refLootEntry = 15348 }, --Treads of the Wandering Nomad
			{ itemID = 21499, groupID = 1, refLootEntry = 15348 }, --Vestments of the Shifting Sands
			gap,
			{ itemID = 22217 }, --Kurinnaxx's Venom Sac
		},
		{
			{ itemID = 1506051, lootTable = {"AQ20SetsBACK","Token"} }, --Ceremonial Qiraji Drape
		},
	},
	{
		Name = BabbleBoss["General Rajaxx"],
		{
			{ itemID = 21497, groupID = 1, refLootEntry = 15341 }, --Boots of the Qiraji General
			{ itemID = 21493, groupID = 1, refLootEntry = 15341 }, --Boots of the Vanguard
			{ itemID = 21496, groupID = 1, refLootEntry = 15341 }, --Bracers of Qiraji Command
			{ itemID = 21806, groupID = 1, refLootEntry = 15341 }, --Gavel of Qiraji Authority
			{ itemID = 21495, groupID = 1, refLootEntry = 15341 }, --Legplates of the Qiraji Command
			{ itemID = 21492, groupID = 1, refLootEntry = 15341 }, --Manslayer of the Qiraji
			{ itemID = 21477, groupID = 1, refLootEntry = 15341 }, --Ring of Fury
			{ itemID = 21494, groupID = 1, refLootEntry = 15341 }, --Southwind's Grasps

			{ itemID = 21495 }, --Legplates of the Qiraji Command
			{ icon = "INV_Box_01", name = color.WHITE..AL["Rajaxx's Captains"] },
			{ itemID = 21810 }, --Treads of the Wandering Nomad
			{ itemID = 21809 }, --Fury of the Forgotten Swarm
			{ itemID = 21806 }, --Gavel of Qiraji Authority
		},
		{
			{ itemID = 1506051, lootTable = {"AQ20SetsBACK","Token"} }, --Ceremonial Qiraji Drape
			{ icon = "INV_Box_01", name = color.WHITE..BabbleBoss["Lieutenant General Andorov"] },
			{ itemID = 22221 }, --Plans: Obsidian Mail Tunic
			{ itemID = 22219 }, --Plans: Jagged Obsidian Shield
		},
	},
	{
		Name = BabbleBoss["Moam"],
		{
			{ itemID = 21472, groupID = 1, refLootEntry = 15340 }, --Dustwind Turban
			{ itemID = 21473, groupID = 1, refLootEntry = 15340 }, --Eye of Moam
			{ itemID = 21469, groupID = 1, refLootEntry = 15340 }, --Gauntlets of Southwind
			{ itemID = 21479, groupID = 1, refLootEntry = 15340 }, --Gauntlets of the Immovable
			{ itemID = 21475, groupID = 1, refLootEntry = 15340 }, --Legplates of the Destroyer
			{ itemID = 21468, groupID = 1, refLootEntry = 15340 }, --Mantle of Maz'Nadir
			{ itemID = 21476, groupID = 1, refLootEntry = 15340 }, --Obsidian Scaled Leggings
			{ itemID = 21471, groupID = 1, refLootEntry = 15340 }, --Talon of Furious Concentration
			{ itemID = 21467, groupID = 1, refLootEntry = 15340 }, --Thick Silithid Chestguard

		},
		{
			{ itemID = 1506053, lootTable = {"AQ20SetsNECK","Token"} }, --Ceremonial Qiraji Pendant
		gap,
			{ itemID = 22220, contentsPreview = {22194} }, --Plans: Black Grasp of the Destroyer
		},
	},
	{
		Name = BabbleBoss["Buru the Gorger"],
		{
			{ itemID = 21485, groupID = 1, refLootEntry = 15370 }, --Buru's Skull Fragment
			{ itemID = 21474, groupID = 1, refLootEntry = 15370 }, --Chitinous Shoulderguards
			{ itemID = 21488, groupID = 1, refLootEntry = 15370 }, --Fetish of Chitinous Spikes
			{ itemID = 21486, groupID = 1, refLootEntry = 15370 }, --Gloves of the Swarm
			{ itemID = 21489, groupID = 1, refLootEntry = 15370 }, --Quicksand Waders
			{ itemID = 21491, groupID = 1, refLootEntry = 15370 }, --Scaled Bracers of the Gorger
			{ itemID = 21490, groupID = 1, refLootEntry = 15370 }, --Slime Kickers
			{ itemID = 21487, groupID = 1, refLootEntry = 15370 }, --Slimy Scaled Gauntlets
			{ itemID = 21455, groupID = 1, refLootEntry = 15370 }, --Southwind Helm
		},
		{
			{ itemID = 1506052, lootTable = {"AQ20SetsFINGER","Token"} }, --Ceremonial Qiraji Ring
		},
	},
	{
		Name = BabbleBoss["Ayamiss the Hunter"],
		{
			{ itemID = 21481, groupID = 1, refLootEntry = 15369 }, --Boots of the Desert Protector
			{ itemID = 21482, groupID = 1, refLootEntry = 15369 }, --Boots of the Fiery Sands
			{ itemID = 21478, groupID = 1, refLootEntry = 15369 }, --Bow of Taut Sinew
			{ itemID = 21470, groupID = 1, refLootEntry = 15369 }, --Cloak of the Savior
			{ itemID = 21479, groupID = 1, refLootEntry = 15369 }, --Gauntlets of the Immovable
			{ itemID = 21484, groupID = 1, refLootEntry = 15369 }, --Helm of Regrowth
			{ itemID = 21483, groupID = 1, refLootEntry = 15369 }, --Ring of the Desert Winds
			{ itemID = 21480, groupID = 1, refLootEntry = 15369 }, --Scaled Silithid Gauntlets
			{ itemID = 21466, groupID = 1, refLootEntry = 15369 }, --Stinger of Ayamiss
		},
		{
			{ itemID = 1506052, lootTable = {"AQ20SetsFINGER","Token"} }, --Ceremonial Qiraji Ring
		},
	},
	{
		Name = BabbleBoss["Ossirian the Unscarred"],
		{
			{ itemID = 21457, groupID = 1, refLootEntry = 15339 }, --Bracers of Brutality
			{ itemID = 21459, groupID = 1, refLootEntry = 15339 }, --Crossbow of Imminent Doom
			{ itemID = 21460, groupID = 1, refLootEntry = 15339 }, --Helm of Domination
			{ itemID = 21463, groupID = 1, refLootEntry = 15339 }, --Ossirian's Binding
			{ itemID = 21715, groupID = 1, refLootEntry = 15339 }, --Sand Polished Hammer
			{ itemID = 21456, groupID = 1, refLootEntry = 15339 }, --Sandstorm Cloak
			{ itemID = 15028, groupID = 1, refLootEntry = 15339 }, --Time-Lost Pocketwatch
			{ itemID = 21458, groupID = 2, refLootEntry = 15339 }, --Gauntlets of New Life
			{ itemID = 21462, groupID = 2, refLootEntry = 15339 }, --Gloves of Dark Wisdom
			{ itemID = 21461, groupID = 2, refLootEntry = 15339 }, --Leggings of the Black Blizzard
			{ itemID = 21453, groupID = 2, refLootEntry = 15339 }, --Mantle of the Horusath
			{ itemID = 21454, groupID = 2, refLootEntry = 15339 }, --Runic Stone Shoulders
			{ itemID = 21464, groupID = 2, refLootEntry = 15339 }, --Shackles of the Unscarred
			{ itemID = 21452, groupID = 2, refLootEntry = 15339 }, --Staff of the Ruins
			{ itemID = 1506054, groupID = 2, refLootEntry = 15339 }, --Sword of the RuinsofAQ
			gap,
			{ itemID = 21220 }, --Head of Ossirian the Unscarred
		},
		{
			{ itemID = 21504 }, --Charm of the Shifting Sands
			{ itemID = 21507 }, --Amulet of the Shifting Sands
			{ itemID = 21505 }, --Choker of the Shifting Sands
			{ itemID = 21506 }, --Pendant of the Shifting Sands
		gap,
			{ itemID = 1506053, lootTable = {"AQ20SetsNECK","Token"} }, --Ceremonial Qiraji Pendant
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 20873 }, --Alabaster Idol
			{ itemID = 20869 }, --Amber Idol
			{ itemID = 20866 }, --Azure Idol
			{ itemID = 20870 }, --Jasper Idol
			{ itemID = 20868 }, --Lambent Idol
			{ itemID = 20871 }, --Obsidian Idol
			{ itemID = 20867 }, --Onyx Idol
			{ itemID = 20872 }, --Vermillion Idol
		gap,
			{ itemID = 22202 }, --Small Obsidian Shard
			{ itemID = 22203 }, --Large Obsidian Shard
		gap,
			{ itemID = 21404 }, --Dagger of Veiled Shadows
			{ itemID = 21416 }, --Kris of Unspoken Names
			{ itemID = 21413 }, --Blade of Vaulted Secrets
			{ itemID = 21395 }, --Blade of Eternal Justice
		},
		{
			{ itemID = 20864 }, --Bone Scarab
			{ itemID = 20861 }, --Bronze Scarab
			{ itemID = 20863 }, --Clay Scarab
			{ itemID = 20862 }, --Crystal Scarab
			{ itemID = 20859 }, --Gold Scarab
			{ itemID = 20865 }, --Ivory Scarab
			{ itemID = 20860 }, --Silver Scarab
			{ itemID = 20858 }, --Stone Scarab
			{ itemID = 21761 }, --Scarab Coffer Key
		gap,
			{ itemID = 21407 }, --Mace of Unending Life
			{ itemID = 21410 }, --Gavel of Infinite Wisdom
			{ itemID = 21398 }, --Hammer of the Gathering Storm
			{ itemID = 21401 }, --Scythe of the Unseen Path
			{ itemID = 21392 }, --Sickle of Unyielding Strength
		},
	},
	{
		Name = AL["AQ Enchants"],
		{
			{ itemID = 20728 }, --Formula: Enchant Gloves - Frost Power
			{ itemID = 20731 }, --Formula: Enchant Gloves - Superior Agility
			{ itemID = 20734 }, --Formula: Enchant Cloak - Stealth
			{ itemID = 20729 }, --Formula: Enchant Gloves - Fire Power
			{ itemID = 20736 }, --Formula: Enchant Cloak - Dodge
			{ itemID = 20730 }, --Formula: Enchant Gloves - Healing Power
			{ itemID = 20727 }, --Formula: Enchant Gloves - Shadow Power
		},
	},
}

------------------------------------------
--- Ahn'Qiraj: The Temple of Ahn'Qiraj ---
------------------------------------------

AtlasLoot_Data["TempleofAQ"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Temple of Ahn'Qiraj"],
	Type = "ClassicRaid",
	Map = "TheTempleofAhnQiraj",
	{
		Name = BabbleBoss["The Prophet Skeram"],
		{
			{ itemID = 21705, groupID = 1, refLootEntry = 15263 }, --Boots of the Fallen Prophet
			{ itemID = 21704, groupID = 1, refLootEntry = 15263 }, --Boots of the Redeemed Prophecy
			{ itemID = 21703, groupID = 1, refLootEntry = 15263 }, --Hammer of Ji'zhi
			{ itemID = 21698, groupID = 1, refLootEntry = 15263 }, --Leggings of Immersion
			{ itemID = 21707, groupID = 1, refLootEntry = 15263 }, --Ring of Swarming Thought
			{ itemID = 21128, groupID = 1, refLootEntry = 15263 }, --Staff of the Qiraji Prophets
			{ itemID = 21702, groupID = 2, refLootEntry = 15263 }, --Amulet of Foul Warding
			{ itemID = 21699, groupID = 2, refLootEntry = 15263 }, --Barrage Shoulders
			{ itemID = 21706, groupID = 2, refLootEntry = 15263 }, --Boots of the Unwavering Will
			{ itemID = 21814, groupID = 2, refLootEntry = 15263 }, --Breastplate of Annihilation
			{ itemID = 21701, groupID = 2, refLootEntry = 15263 }, --Cloak of Concentrated Hatred
			{ itemID = 21700, groupID = 2, refLootEntry = 15263 }, --Pendant of the Qiraji Guardian
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			gap,
			{ itemID = 22222 }, --Plans: Thick Obsidian Breastplate
			{ itemID = 22196 }, --Thick Obsidian Breastplate
			gap,
			{ itemID = 20928, lootTable = {"T2.5FEET","Token"} }, --Bindings of the Lost Nomad
		},
	},
	{
		Name = BabbleBoss["The Bug Family"],
		{
			{ itemID = 21697 }, --Cape of the Trinity
			{ itemID = 21694 }, --Ternary Mantle
			{ itemID = 21696 }, --Robes of the Triumvirate
			{ itemID = 21693 }, --Guise of the Devourer
			{ itemID = 21692 }, --Triad Girdle
			{ itemID = 21695 }, --Angelista's Touch
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			gap,
			{ itemID = 21680 }, --Vest of Swift Execution
			{ itemID = 21603 }, --Wand of Qiraji Nobility
			{ itemID = 21681 }, --Ring of the Devoured
			{ itemID = 21685 }, --Petrified Scarab
		},
		{
			{ itemID = 21689 }, --Gloves of Ebru
			{ itemID = 21691 }, --Ooze-ridden Gauntlets
			{ itemID = 21688 }, --Boots of the Fallen Hero
			{ itemID = 21690 }, --Angelista's Charm
			gap,
			{ itemID = 21686 }, --Mantle of Phrenic Power
			{ itemID = 21682 }, --Bile-Covered Gauntlets
			{ itemID = 21684 }, --Mantle of the Desert's Fury
			{ itemID = 21683 }, --Mantle of the Desert Crusade
			{ itemID = 21687 }, --Ukko's Ring of Darkness
			gap,
			{ itemID = 20928, lootTable = {"T2.5FEET","Token"} }, --Bindings of the Lost Nomad
		},
	},
	{
		Name = BabbleBoss["Battleguard Sartura"],
		{
			{ itemID = 21669, groupID = 1, refLootEntry = 15516 }, --Creeping Vine Helm
			{ itemID = 21676, groupID = 1, refLootEntry = 15516 }, --Leggings of the Festering Swarm
			{ itemID = 21678, groupID = 1, refLootEntry = 15516 }, --Necklace of Purity
			{ itemID = 21648, groupID = 1, refLootEntry = 15516 }, --Recomposed Boots
			{ itemID = 21671, groupID = 1, refLootEntry = 15516 }, --Robes of the Battleguard
			{ itemID = 21666, groupID = 1, refLootEntry = 15516 }, --Sartura's Might
			{ itemID = 21670, groupID = 2, refLootEntry = 15516 }, --Badge of the Swarmguard
			{ itemID = 21674, groupID = 2, refLootEntry = 15516 }, --Gauntlets of Steadfast Determination
			{ itemID = 21672, groupID = 2, refLootEntry = 15516 }, --Gloves of Enforcement
			{ itemID = 21667, groupID = 2, refLootEntry = 15516 }, --Legplates of Blazing Light
			{ itemID = 21673, groupID = 2, refLootEntry = 15516 }, --Silithid Claw
			{ itemID = 21675, groupID = 2, refLootEntry = 15516 }, --Thick Qirajihide Belt
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
		   	gap,
			{ itemID = 20932, lootTable = {"T2.5SHOULDER","Token"} }, --Spaulders of the Imperial Guard
		},
	},
	{
		Name = BabbleBoss["Fankriss the Unyielding"],
		{
			{ itemID = 21627, groupID = 1, refLootEntry = 15510 }, --Cloak of Untold Secrets
			{ itemID = 21647, groupID = 1, refLootEntry = 15510 }, --Fetish of the Sand Reaver
			{ itemID = 22402, groupID = 1, refLootEntry = 15510 }, --Libram of Grace
			{ itemID = 21663, groupID = 1, refLootEntry = 15510 }, --Robes of the Guardian Saint
			{ itemID = 21651, groupID = 1, refLootEntry = 15510 }, --Scaled Sand Reaver Leggings
			{ itemID = 22396, groupID = 1, refLootEntry = 15510 }, --Totem of Life
			{ itemID = 21650, groupID = 2, refLootEntry = 15510 }, --Ancient Qiraji Ripper
			{ itemID = 21635, groupID = 2, refLootEntry = 15510 }, --Barb of the Sand Reaver
			{ itemID = 21664, groupID = 2, refLootEntry = 15510 }, --Barbed Choker
			{ itemID = 21665, groupID = 2, refLootEntry = 15510 }, --Mantle of Wicked Revenge
			{ itemID = 21639, groupID = 2, refLootEntry = 15510 }, --Pauldrons of the Unrelenting
			{ itemID = 21652, groupID = 2, refLootEntry = 15510 }, --Silithid Carapace Chestguard
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			gap,
			{ itemID = 20932, lootTable = {"T2.5SHOULDER","Token"} }, --Spaulders of the Imperial Guard
		},
	},
	{
		Name = BabbleBoss["Viscidus"],
		{
			{ itemID = 21688, groupID = 1, refLootEntry = 15299 }, --Boots of the Fallen Hero
			{ itemID = 22399, groupID = 1, refLootEntry = 15299 }, --Idol of Health
			{ itemID = 21625, groupID = 1, refLootEntry = 15299 }, --Scarab Brooch
			{ itemID = 21622, groupID = 1, refLootEntry = 15299 }, --Sharpened Silithid Femur
			{ itemID = 21682, groupID = 2, refLootEntry = 15299 }, --Bile-Covered Gauntlets
			{ itemID = 21624, groupID = 2, refLootEntry = 15299 }, --Gauntlets of Kalimdor
			{ itemID = 21623, groupID = 2, refLootEntry = 15299 }, --Gauntlets of the Righteous Champion
			{ itemID = 21691, groupID = 2, refLootEntry = 15299 }, --Ooze-ridden Gauntlets
			{ itemID = 21677, groupID = 2, refLootEntry = 15299 }, --Ring of the Qiraji Fury
			{ itemID = 21626, groupID = 2, refLootEntry = 15299 }, --Slime-coated Leggings
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			gap,
			{ itemID = 20932, lootTable = {"T2.5SHOULDER","Token"} }, --Spaulders of the Imperial Guard
			{ itemID = 20931, lootTable = {"T2.5LEGS","Token"} }, --Hardened Qiraj Chitin
			{ itemID = 20930, lootTable = {"T2.5HEAD","Token"} }, --Diadem of the Desert Prince
			{ itemID = 20928, lootTable = {"T2.5FEET","Token"} }, --Bindings of the Lost Nomad
		},
	},
	{ 
		Name = BabbleBoss["Princess Huhuran"],
		{
			{ itemID = 21619, groupID = 1, refLootEntry = 15509 }, --Gloves of the Messiah
			{ itemID = 21620, groupID = 1, refLootEntry = 15509 }, --Ring of the Martyr
			{ itemID = 21668, groupID = 1, refLootEntry = 15509 }, --Scaled Leggings of Qiraji Fury
			{ itemID = 21694, groupID = 1, refLootEntry = 15509 }, --Ternary Mantle
			{ itemID = 21603, groupID = 1, refLootEntry = 15509 }, --Wand of Qiraji Nobility
			{ itemID = 21617, groupID = 1, refLootEntry = 15509 }, --Wasphide Gauntlets
			{ itemID = 21621, groupID = 2, refLootEntry = 15509 }, --Cloak of the Golden Hive
			{ itemID = 21618, groupID = 2, refLootEntry = 15509 }, --Hive Defiler Wristguards
			{ itemID = 21616, groupID = 2, refLootEntry = 15509 }, --Huhuran's Stinger
			{ itemID = 21683, groupID = 2, refLootEntry = 15509 }, --Mantle of the Desert Crusade
			{ itemID = 21680, groupID = 2, refLootEntry = 15509 }, --Vest of Swift Executioner
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			gap,
			{ itemID = 20932, lootTable = {"T2.5SHOULDER","Token"} }, --Spaulders of the Imperial Guard
			{ itemID = 20931, lootTable = {"T2.5LEGS","Token"} }, --Hardened Qiraj Chitin
		},
	},
	{
		Name = BabbleBoss["The Twin Emperors"],
		{
			{ itemID = 21608, groupID = 1, refLootEntry = 15275 }, --Amulet of Vek'nilash
			{ itemID = 21606, groupID = 1, refLootEntry = 15275 }, --Belt of the Fallen Emperor
			{ itemID = 21600, groupID = 1, refLootEntry = 15275 }, --Boots of Epiphany
			{ itemID = 21604, groupID = 1, refLootEntry = 15275 }, --Bracelets of Royal Redemption
			{ itemID = 21607, groupID = 1, refLootEntry = 15275 }, --Grasp of the Fallen Emperor
			{ itemID = 21679, groupID = 1, refLootEntry = 15275 }, --Kalimdor's Revenge
			{ itemID = 21602, groupID = 1, refLootEntry = 15275 }, --Qiraji Execution Bracers
			{ itemID = 21609, groupID = 1, refLootEntry = 15275 }, --Regenerating Belt of Vek'nilash
			{ itemID = 21601, groupID = 1, refLootEntry = 15275 }, --Ring of Emperor Vek'lor
			{ itemID = 21598, groupID = 1, refLootEntry = 15275 }, --Royal Qiraji Belt
			{ itemID = 21597, groupID = 1, refLootEntry = 15275 }, --Royal Scepter of Vek'lor
			{ itemID = 21599, groupID = 1, refLootEntry = 15275 }, --Vek'lor's Gloves of Devastation
		},
		{
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			gap,
			{ itemID = 20930, lootTable = {"T2.5HEAD","Token"} }, --Diadem of the Desert Prince
			gap,
			{ itemID = 20726 }, --Formula: Enchant Gloves - Threat
			{ itemID = 20735 }, --Formula: Enchant Cloak - Subtlety

		},
	},
	{
		Name = BabbleBoss["Ouro"],
		{
			{ itemID = 15029, groupID = 1, refLootEntry = 15517 }, --Aera's Poison Gland
			{ itemID = 21611, groupID = 1, refLootEntry = 15517 }, --Burrower Bracers
			{ itemID = 21615, groupID = 1, refLootEntry = 15517 }, --Don Rigoberto's Lost Hat
			{ itemID = 21610, groupID = 1, refLootEntry = 15517 }, --Wormscale Blocker
			{ itemID = 21708, groupID = 2, refLootEntry = 15517 }, --Beetle Scaled Wristguards
			{ itemID = 21605, groupID = 2, refLootEntry = 15517 }, --Gloves of the Hidden Temple
			{ itemID = 21645, groupID = 2, refLootEntry = 15517 }, --Hive Tunneler's Boots
			{ itemID = 23570, groupID = 2, refLootEntry = 15517 }, --Jom Gabbar
			{ itemID = 23557, groupID = 2, refLootEntry = 15517 }, --Larvae of the Great Worm
			{ itemID = 23558, groupID = 2, refLootEntry = 15517 }, --The Burrower's Shells
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments

		gap,
			{ itemID = 20931, lootTable = {"T2.5LEGS","Token"} }, --Hardened Qiraj Chitin
		},
	},
	{
		Name = BabbleBoss["C'Thun"],
		{
			{ itemID = 21583, groupID = 1, refLootEntry = 15727 }, --Cloak of Clarity
			{ itemID = 22731, groupID = 1, refLootEntry = 15727 }, --Cloak of the Devoured
			{ itemID = 21585, groupID = 1, refLootEntry = 15727 }, --Dark Storm Gauntlets
			{ itemID = 22730, groupID = 1, refLootEntry = 15727 }, --Eyestalk Waist Cord
			{ itemID = 21582, groupID = 1, refLootEntry = 15727 }, --Grasp of the Old God
			{ itemID = 21839, groupID = 1, refLootEntry = 15727 }, --Scepter of the False Prophet
			{ itemID = 21586, groupID = 2, refLootEntry = 15727 }, --Belt of Never-ending Agony
			{ itemID = 21134, groupID = 2, refLootEntry = 15727 }, --Dark Edge of Insanity
			{ itemID = 21126, groupID = 2, refLootEntry = 15727 }, --Death's Sting
			{ itemID = 21581, groupID = 2, refLootEntry = 15727 }, --Gauntlets of Annihilation
			{ itemID = 22732, groupID = 2, refLootEntry = 15727 }, --Mark of C'Thun
			{ itemID = 21596, groupID = 2, refLootEntry = 15727 }, --Ring of the Godslayer
			{ itemID = 21579, groupID = 2, refLootEntry = 15727 }, --Vanquished Tentacle of C'Thunder
		},
		{
			{ itemID = 21221 }, --Eye of C'Thun
			gap,
			{ itemID = 20933, lootTable = {"T2.5CHEST","Token"} }, --Husk of the Old God
			gap,
			{ itemID = 22734, contentsPreview = { 22632, 22589, 22631, 22630} }, --Base of Atiesh
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 21838 }, --Garb of Royal Ascension
			{ itemID = 21888 }, --Gloves of the Immortal
			{ itemID = 21889 }, --Gloves of the Redeemed Prophecy
			{ itemID = 21836 }, --Ritssyn's Ring of Chaos
			{ itemID = 21891 }, --Shard of the Fallen Star
			{ itemID = 21856 }, --Neretzek, The Blood Drinker
			{ itemID = 21837 }, --Anubisath Warhammer
		gap,
			{ itemID = 22202 }, --Small Obsidian Shard
			{ itemID = 22203 }, --Large Obsidian Shard
		},
		{
			{ itemID = 21218 }, --Blue Qiraji Resonating Crystal
			{ itemID = 21324 }, --Yellow Qiraji Resonating Crystal
			{ itemID = 21323 }, --Green Qiraji Resonating Crystal
			{ itemID = 21321 }, --Red Qiraji Resonating Crystal
		},
	},
	{
		Name = AL["Shoulder Enchants"],
		{
			{ itemID = 1319786, desc = AL["Quest Requirements"], contentsPreview = {{20878},{20868},{20872},{20859,3},{20864,3}} }, --Inscription of the Stormcaller
			{ itemID = 1319785, desc = AL["Quest Requirements"], contentsPreview = {{20881},{20869},{20871},{20861,3},{20862,3}} }, --Inscription of the Stalker
			{ itemID = 1319789, desc = AL["Quest Requirements"], contentsPreview = {{20874},{20872},{20866},{20864,3},{20858,3}} }, --Inscription of the Oracle
			{ itemID = 1319790, desc = AL["Quest Requirements"], contentsPreview = {{20879},{20873},{20868},{20865,3},{20859,3}} }, --Inscription of the Genesis
			{ itemID = 1319787, desc = AL["Quest Requirements"], contentsPreview = {{20877},{20871},{20867},{20862,3},{20860,3}} }, --Inscription of the Enigma
			{ itemID = 1319788, desc = AL["Quest Requirements"], contentsPreview = {{20875},{20870},{20869},{20863,3},{20861,3}} }, --Inscription of the Doomcaller
			{ itemID = 1319784, desc = AL["Quest Requirements"], contentsPreview = {{20876},{20867},{20870},{20860,3},{20863,3}} }, --Inscription of the Deathdealer
			{ itemID = 1319782, desc = AL["Quest Requirements"], contentsPreview = {{20882},{20866},{20873},{20858,3},{20865,3}} }, --Inscription of the Conqueror
			{ itemID = 1319783, desc = AL["Quest Requirements"], contentsPreview = {{20878},{20868},{20872},{20859,3},{20864,3}} }, --Inscription of the Avenger
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 20876 }, --Idol of Death
			{ itemID = 20879 }, --Idol of Life
			{ itemID = 20875 }, --Idol of Night
			{ itemID = 20878 }, --Idol of Rebirth
			{ itemID = 20881 }, --Idol of Strife
			{ itemID = 20877 }, --Idol of the Sage
			{ itemID = 20874 }, --Idol of the Sun
			{ itemID = 20882 }, --Idol of War
		gap,
			{ itemID = 21230 }, --Ancient Qiraji Artifact
		gap,
			{ itemID = 21762 }, --Greater Scarab Coffer Key
		},
		{
			{ itemID = 20864 }, --Bone Scarab
			{ itemID = 20861 }, --Bronze Scarab
			{ itemID = 20863 }, --Clay Scarab
			{ itemID = 20862 }, --Crystal Scarab
			{ itemID = 20859 }, --Gold Scarab
			{ itemID = 20865 }, --Ivory Scarab
			{ itemID = 20860 }, --Silver Scarab
			{ itemID = 20858 }, --Stone Scarab
		},
	},
}

AtlasLoot_Data["AQOpening"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "AQOpening",
	{
		Name = "AQOpening",
		{
			{ itemID = 21138 }, --Red Scepter Shard
			{ itemID = 21530 }, --Onyx Embedded Leggings
			{ itemID = 21529 }, --Amulet of Shadow Shielding
			{ itemID = 21139 }, --Green Scepter Shard
			{ itemID = 21532 }, --Drudge Boots
			{ itemID = 21531 }, --Drake Tooth Necklace
			{ itemID = 21137 }, --Blue Scepter Shard
			{ itemID = 21517 }, --Gnomish Turban of Psychic Might
			{ itemID = 21527 }, --Darkwater Robes
			{ itemID = 21526 }, --Band of Icy Depths
			{ itemID = 21025 }, --Recipe: Dirge's Kickin' Chimaerok Chops
		},
		{
			{ itemID = 21175 }, --The Scepter of the Shifting Sands
			{ itemID = 21176 }, --Black Qiraji Resonating Crystal
			{ itemID = 21522 }, --Shadowsong's Sorrow
			{ itemID = 21523 }, --Fang of Korialstrasz
			{ itemID = 21520 }, --Ravencrest's Legacy
			{ itemID = 21521 }, --Runesword of the Red
		},
	},}

-------------------------
--- Blackfathom Deeps ---
-------------------------

AtlasLoot_Data["BlackfathomDeeps"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Blackfathom Deeps"],
	Type = "ClassicDungeon",
	Map = "BlackfathomDeeps",
	{
		Name = BabbleBoss["Ghamoo-ra"],
		{
			{ itemID = 6908, groupID = 1, refLootEntry = 4887 }, --Ghamoo-ra's Bind
			{ itemID = 6907, groupID = 1, refLootEntry = 4887 }, --Tortoise Armor
		},
	},
	{
		Name = BabbleBoss["Lady Sarevess"],
		{
			{ itemID = 11121, groupID = 1, refLootEntry = 4831 }, --Darkwater Talwar
			{ itemID = 888, groupID = 1, refLootEntry = 4831 }, --Naga Battle Gloves
			{ itemID = 3078, groupID = 1, refLootEntry = 4831 }, --Naga Heartpiercer
			{ itemID = 2075095, groupID = 1, refLootEntry = 2075095 }, --Trident of the Azure Depths
			{ itemID = 2078581, groupID = 1, refLootEntry = 2075095 }, --Twilight Tideshooter
		},
	},
	{
		Name = BabbleBoss["Gelihast"],
		{
			{ itemID = 6906, groupID = 1, refLootEntry = 6243 }, --Algae Fists
			{ itemID = 6905, groupID = 1, refLootEntry = 6243 }, --Reef Axe
			{ itemID = 1470 }, --Murloc Skin Bag
			gap,
			{ itemID = 2075303, groupID = 1, refLootEntry = 2075303 }, --Gelihast's Watery Edge
			{ itemID = 2078029, groupID = 1, refLootEntry = 2075303 }, --Tidecaller's Blade
		},
	},
	{
		Name = BabbleBoss["Baron Aquanis"],
		{
			{ itemID = 3414, groupID = 1, refLootEntry = 12876 }, --Crested Scepter
			{ itemID = 2567, groupID = 1, refLootEntry = 12876 }, --Evocator's Blade
			{ itemID = 1481, groupID = 1, refLootEntry = 12876 }, --Grimclaw
			{ itemID = 3416, groupID = 1, refLootEntry = 12876 }, --Martyr's Chain
			{ itemID = 1491, groupID = 1, refLootEntry = 12876 }, --Ring of Precision
			{ itemID = 3415, groupID = 1, refLootEntry = 12876 }, --Staff of the Friar

		},
	},
	{
		Name = BabbleBoss["Twilight Lord Kelris"],
		{
			{ itemID = 6903, groupID = 1, refLootEntry = 4832 }, --Gaze Dreamer Pants
			{ itemID = 1155, groupID = 1, refLootEntry = 4832 }, --Rod of the Sleepwalker
			gap,
			{ itemID = 2062689, groupID = 1, refLootEntry = 2061224 }, --Cultist's Duskweave Shirt
			{ itemID = 2069953, groupID = 1, refLootEntry = 2061224 }, --Footwraps of Eldritch Chaos
			{ itemID = 2072401, groupID = 1, refLootEntry = 2061224 }, --Gloves of the Ancient Whisper
			{ itemID = 2067763, groupID = 1, refLootEntry = 2061224 }, --Leggings of Blackfathom Rituals
			{ itemID = 2064014, groupID = 1, refLootEntry = 2061224 }, --Robes of the Shadowed Moon
			{ itemID = 2061224, groupID = 1, refLootEntry = 2061224 }, --Shoulders of the Twilight Ascendant
			{ itemID = 2075096, groupID = 1, refLootEntry = 2061224 }, --Staff of the Cult's Embrace
		},
		{
			{ itemID = 5881 }, --Head of Kelris
		},
	},
	{
		Name = BabbleBoss["Old Serra'kis"],
		{
			{ itemID = 6902, groupID = 1, refLootEntry = 4830 }, --Bands of Serra'kis
			{ itemID = 6904, groupID = 1, refLootEntry = 4830 }, --Bite of Serra'kis
			{ itemID = 6901, groupID = 1, refLootEntry = 4830 }, --Glowing Thresher Cape
		},
	},
	{
		Name = BabbleBoss["Aku'mai"],
		{
			{ itemID = 6910, groupID = 1, refLootEntry = 4829 }, --Leech Pants
			{ itemID = 6911, groupID = 1, refLootEntry = 4829 }, --Moss Cinch
			{ itemID = 6909, groupID = 1, refLootEntry = 4829 }, --Strike of the Hydra
			gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Quest Item"] },
			{ itemID = 5359 }, --Lorgalis Manuscript
			{ itemID = 16762 }, --Fathom Core
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 1486 }, --Tree Bark Jacket
			{ itemID = 3416 }, --Martyr's Chain
			{ itemID = 1491 }, --Ring of Precision
			{ itemID = 3413 }, --Doomspike
			{ itemID = 2567 }, --Evocator's Blade
			{ itemID = 3417 }, --Onyx Claymore
			{ itemID = 1454 }, --Axe of the Enforcer
			{ itemID = 1481 }, --Grimclaw
			{ itemID = 3414 }, --Crested Scepter
			{ itemID = 3415 }, --Staff of the Friar
			{ itemID = 2271 }, --Staff of the Blessed Seer
		},
	},
}

--------------------------------------------
--- Blackrock Mountain: Blackrock Dephts ---
--------------------------------------------

AtlasLoot_Data["BlackrockDepths"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Blackrock Depths"],
	Type = "ClassicDungeonExt",
	Map = "BlackrockDepths",
	{
		Name = AL["Overmaster Pyron"],
		{
			{ itemID = 14486 }, --Pattern: Cloak of Fire
		},
	},
	{
		Name = BabbleBoss["Lord Roccor"],
		{
			{ itemID = 11632, groupID = 1, refLootEntry = 9025 }, --Earthslag Shoulders
			{ itemID = 22397, groupID = 1, refLootEntry = 9025 }, --Idol of Ferocity
			{ itemID = 22234, groupID = 1, refLootEntry = 9025 }, --Mantle of Lost Hope
			{ itemID = 11631, groupID = 1, refLootEntry = 9025 }, --Stoneshell Guard
			{ itemID = 11630 }, --Rockshard Pellets
		},
		{
			{ itemID = 11813 }, --Formula: Smoking Heart of the Mountain
			{ itemID = 11811, "=q3=Smoking Heart of the Mountain", maxDifficulty = "Normal" },
		},
	},
	{
		Name = BabbleBoss["High Interrogator Gerstahn"],
		{
			{ itemID = 11626, groupID = 1, refLootEntry = 9018 }, --Blackveil Cape
			{ itemID = 11625, groupID = 1, refLootEntry = 9018 }, --Enthralled Sphere
			{ itemID = 22240, groupID = 1, refLootEntry = 9018 }, --Greaves of Withering Despair
			{ itemID = 11624, groupID = 1, refLootEntry = 9018 }, --Kentic Amice
			gap,
			{ itemID = 2075523, groupID = 1, refLootEntry = 2060319 }, --Blade of Shadow Truth
			{ itemID = 2066002, groupID = 1, refLootEntry = 2060319 }, --Girdle of Subjugation
			{ itemID = 2072597, groupID = 1, refLootEntry = 2060319 }, --Gloves of Hidden Torment
			{ itemID = 2061333, groupID = 1, refLootEntry = 2060319 }, --Mantle of Dark Insights
			{ itemID = 2068018, groupID = 1, refLootEntry = 2060319 }, --Pants of Suppressed Pain
			{ itemID = 2064156, groupID = 1, refLootEntry = 2060319 }, --Robe of Sinister Shadows
			{ itemID = 2070185, groupID = 1, refLootEntry = 2060319 }, --Slippers of Searing Shadows
			{ itemID = 2060319, groupID = 1, refLootEntry = 2060319 }, --Veil of the Interrogator
			{ itemID = 2062929, groupID = 1, refLootEntry = 2060319 }, --Whispering Shirt of Secrets
		},
		{
			{ itemID = 11140 }, --Prison Cell Key
		},
	},
	{
		Name = "Ring of Law",
		{
			{ itemID = 11677 }, --Graverot Cape
			{ itemID = 11675 }, --Shadefiend Boots
			{ itemID = 11731 }, --Savage Gladiator Greaves
			{ itemID = 11678 }, --Carapace of Anub'shiah
			{ itemID = 11685 }, --Splinthide Shoulders
			{ itemID = 11686 }, --Girdle of Beastial Fury
			{ itemID = 11679 }, --Rubicund Armguards
			{ itemID = 11730 }, --Savage Gladiator Grips
			{ itemID = 11726 }, --Savage Gladiator Chain
			{ itemID = 22271 }, --Leggings of Frenzied Magic
			{ itemID = 11729 }, --Savage Gladiator Helm
			{ itemID = 11722 }, --Dregmetal Spaulders
			{ itemID = 11703 }, --Stonewall Girdle
		},
		{
			{ itemID = 22270 }, --Entrenching Boots
			{ itemID = 22257 }, --Bloodclot Band
			{ itemID = 22266 }, --Flarethorn
			{ itemID = 11702 }, --Grizzle's Skinner
			{ itemID = 11610 }, --Plans: Dark Iron Pulverizer
		gap,
			{ itemID = 11634 }, --Silkweb Gloves
			{ itemID = 11633 }, --Spiderfang Carapace
			{ itemID = 11635 }, --Hookfang Shanker
		gap,
			{ itemID = 11662 }, --Ban'thok Sash
			{ itemID = 11665 }, --Ogreseer Fists
			{ itemID = 11728 }, --Savage Gladiator Leggings
			{ itemID = 11824 }, --Cyclopean Band
		},
	},
	{
		Name = AL["Theldren"],
		{
			{ icon = "INV_Misc_Bag_09", name = color.WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..AL["Theldren"] },
			{ itemID = 22330 }, --Shroud of Arcane Mastery
			{ itemID = 22305 }, --Ironweave Mantle
			{ itemID = 22317 }, --Lefty's Brass Knuckle
			{ itemID = 22318 }, --Malgen's Long Bow
			{ itemID = 22047 }, --Top Piece of Lord Valthalak's Amulet
		},
	},
	{
		Name = BabbleBoss["Houndmaster Grebmar"],
		{
			{ itemID = 11627, groupID = 1, refLootEntry = 9319 }, --Fleetfoot Greaves
			{ itemID = 11628, groupID = 1, refLootEntry = 9319 }, --Houndmaster's Bow
			{ itemID = 11629, groupID = 1, refLootEntry = 9319 }, --Houndmaster's Rifle
			{ itemID = 11623, groupID = 1, refLootEntry = 9319 }, --Spritecaster Cape
			gap,
			{ itemID = 2070214, groupID = 1, refLootEntry = 2061346 }, --Ashen Path Boots
			{ itemID = 2075567, groupID = 1, refLootEntry = 2061346 }, --Broadaxe of Burning Wrath
			{ itemID = 2068050, groupID = 1, refLootEntry = 2061346 }, --Charred Hide Leggings
			{ itemID = 2064170, groupID = 1, refLootEntry = 2061346 }, --Emberclasped Tunic
			{ itemID = 2062955, groupID = 1, refLootEntry = 2061346 }, --Flameforged Undershirt
			{ itemID = 2061346, groupID = 1, refLootEntry = 2061346 }, --Houndmaster's Fiery Pauldrons
			{ itemID = 2078064, groupID = 1, refLootEntry = 2061346 }, --Inferno Edge
			{ itemID = 2072616, groupID = 1, refLootEntry = 2061346 }, --Molten Grasp Gauntlets
			{ itemID = 2066025, groupID = 1, refLootEntry = 2061346 }, --Searing Leather Belt

		},
	},
	{
		Name = "Monument of Franclorn Forgewright",
		{
			{ itemID = 11000 }, --Shadowforge Key
		},
	},
	{
		Name = BabbleBoss["Pyromancer Loregrain"],
		{
			{ itemID = 11747, groupID = 1, refLootEntry = 9024 }, --Flamestrider Robes
			{ itemID = 11750, groupID = 1, refLootEntry = 9024 }, --Kindling Stave
			{ itemID = 11748, groupID = 1, refLootEntry = 9024 }, --Pyric Caduceus
			{ itemID = 11749, groupID = 1, refLootEntry = 9024 }, --Searingscale Leggings
			gap,
			{ itemID = 2061334, groupID = 1, refLootEntry = 2060320 }, --Emberclad Mantle
			{ itemID = 2060320, groupID = 1, refLootEntry = 2060320 }, --Fiery Obsidian Hood
			{ itemID = 2064157, groupID = 1, refLootEntry = 2060320 }, --Flameforged Robe
			{ itemID = 2062930, groupID = 1, refLootEntry = 2060320 }, --Infernoweave Undershirt
			{ itemID = 2066003, groupID = 1, refLootEntry = 2060320 }, --Lava-bound Sash
			{ itemID = 2068019, groupID = 1, refLootEntry = 2060320 }, --Molten Core Leggings
			{ itemID = 2075525, groupID = 1, refLootEntry = 2060320 }, --Pyromancer's Emberstaff
		},
		{
			{ itemID = 11207 }, --Formula: Enchant Weapon - Fiery Weapon
		},
	},
	{
		Name = AL["The Vault"],
		{
			{ icon = "INV_Box_01", name = color.WHITE..AL["The Vault"] },
			{ itemID = 11309 }, --The Heart of the Mountain
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["The Secret Safe"] },
			{ itemID = 22256 }, --Mana Shaping Handwraps
			{ itemID = 11929 }, --Haunting Specter Leggings
			{ itemID = 11926 }, --Deathdealer Breastplate
			{ itemID = 22205 }, --Black Steel Bindings
			{ itemID = 22255 }, --Magma Forged Band
			{ itemID = 11920 }, --Wraith Scythe
			{ itemID = 11923 }, --The Hammer of Grace
			{ itemID = 22254 }, --Wand of Eternal Light
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE..AL["Dark Coffer"] },
			{ itemID = 11752 }, --Black Blood of the Tormented
			{ itemID = 11751 }, --Burning Essence
			{ itemID = 11753 }, --Eye of Kajal
		},
	},
	{
		Name = BabbleBoss["Warder Stilgiss"],
		{
			{ itemID = 11784, groupID = 1, refLootEntry = 9041 }, --Arbiter's Blade
			{ itemID = 11782, groupID = 1, refLootEntry = 9041 }, --Boreal Mantle
			{ itemID = 11783, groupID = 1, refLootEntry = 9041 }, --Chillsteel Girdle
			{ itemID = 22241, groupID = 1, refLootEntry = 9041 }, --Dark Warder's Pauldrons
			gap,
			{ itemID = 2070212, groupID = 1, refLootEntry = 2060332 }, --Boots of Frostbound Steel
			{ itemID = 2072614, groupID = 1, refLootEntry = 2060332 }, --Gloves of Glacial Grasp
			{ itemID = 2068048, groupID = 1, refLootEntry = 2060332 }, --Leggings of Icesteel
			{ itemID = 2061345, groupID = 1, refLootEntry = 2060332 }, --Mantle of the Frost Warden
			{ itemID = 2062953, groupID = 1, refLootEntry = 2060332 }, --Robe of Blackrock Enclosure
			{ itemID = 2060332, groupID = 1, refLootEntry = 2060332 }, --Stilgiss's Frostcrown
			{ itemID = 2075529, groupID = 1, refLootEntry = 2060332 }, --Stilgiss's Icestaff

		},
	},
	{
		Name = BabbleBoss["Verek"],
		{
			{ itemID = 11755, groupID = 1, refLootEntry = 9042 }, --Verek's Collar
			{ itemID = 22242, groupID = 1, refLootEntry = 9042 }, --Verek's Leash
		},
	},
	{
		Name = BabbleBoss["Fineous Darkvire"],
		{
			{ itemID = 11839, groupID = 1, refLootEntry = 9056 }, --Chief Architect's Monocle
			{ itemID = 22223, groupID = 1, refLootEntry = 9056 }, --Foreman's Head Protector
			{ itemID = 11842, groupID = 1, refLootEntry = 9056 }, --Lead Surveyor's Mantle
			{ itemID = 11841, groupID = 1, refLootEntry = 9056 }, --Senior Designer's Pantaloons
			gap,
			{ itemID = 2060314, groupID = 1, refLootEntry = 2060314 }, --Cowl of the Dark Architect
			{ itemID = 2070171, groupID = 1, refLootEntry = 2060314 }, --Footwraps of the Deep Forge
			{ itemID = 2072584, groupID = 1, refLootEntry = 2060314 }, --Gloves of the Iron Artisan
			{ itemID = 2068004, groupID = 1, refLootEntry = 2060314 }, --Leggings of Molten Design
			{ itemID = 2075534, groupID = 1, refLootEntry = 2060314 }, --Maul of Fiery Reckoning
			{ itemID = 2064143, groupID = 1, refLootEntry = 2060314 }, --Robes of Elemental Craft
			{ itemID = 2062919, groupID = 1, refLootEntry = 2060314 }, --Shirt of Arcane Design
		},
		{
			{ itemID = 11840 }, --Master Builder's Shirt
		gap,
			{ itemID = 10999 }, --Ironfel
		},
	},
	{
		Name = BabbleBoss["Lord Incendius"],
		{
			{ itemID = 11764, groupID = 1, refLootEntry = 9017 }, --Cinderhide Armsplints
			{ itemID = 11767, groupID = 1, refLootEntry = 9017 }, --Emberplate Armguards
			{ itemID = 11766, groupID = 1, refLootEntry = 9017 }, --Flameweave Cuffs
			{ itemID = 11765, groupID = 1, refLootEntry = 9017 }, --Pyremail Wristguards
			gap,
			{ itemID = 19268 }, --Ace of Elementals
			gap,
			{ itemID = 21987 }, --Incendicite of Incendius
			{ itemID = 11126 }, --Tablet of Kurniya
		},
	},
	{
		Name = BabbleBoss["Bael'Gar"],
		{
			{ itemID = 11803, groupID = 1, refLootEntry = 9016 }, --Force of Magma
			{ itemID = 11802, groupID = 1, refLootEntry = 9016 }, --Lavacrest Leggings
			{ itemID = 11805, groupID = 1, refLootEntry = 9016 }, --Rubidium Hammer
			{ itemID = 11807, groupID = 1, refLootEntry = 9016 }, --Sash of the Burning Heart
		},
	},
	{
		Name = BabbleBoss["General Angerforge"],
		{
			{ itemID = 11816, groupID = 1, refLootEntry = 9033 }, --Angerforge's Battle Axe
			{ itemID = 11810, groupID = 1, refLootEntry = 9033 }, --Force of Will
			{ itemID = 11817, groupID = 1, refLootEntry = 9033 }, --Lord General's Sword
			{ itemID = 11820, groupID = 1, refLootEntry = 9033 }, --Royal Decorated Armor
			{ itemID = 11821, groupID = 1, refLootEntry = 9033 }, --Warstrife Leggings
			gap,
			{ itemID = 2061331, groupID = 1, refLootEntry = 2061331 }, --Angerforge's Emberguard Pauldrons
			{ itemID = 2062928, groupID = 1, refLootEntry = 2061331 }, --Angerforge's Fiery Bastion
			{ itemID = 2070183, groupID = 1, refLootEntry = 2061331 }, --Boots of Blazing Authority
			{ itemID = 2072595, groupID = 1, refLootEntry = 2061331 }, --Handguards of the Dark Flame
			{ itemID = 2068016, groupID = 1, refLootEntry = 2061331 }, --Legplates of the Infernal Warden
			{ itemID = 2066000, groupID = 1, refLootEntry = 2061331 }, --Molten Command Girdle
			{ itemID = 2075528, groupID = 1, refLootEntry = 2061331 }, --Obsidian Decimator
			gap,
			{ itemID = 11464 }, --Marshal Windsor's Lost Information
		},
	},
	{
		Name = BabbleBoss["Golem Lord Argelmach"],
		{
			{ itemID = 11823, groupID = 1, refLootEntry = 8983 }, --Luminary Kilt
			{ itemID = 11669, groupID = 1, refLootEntry = 8983 }, --Naglering
			{ itemID = 11822, groupID = 1, refLootEntry = 8983 }, --Omnicast Boots
			{ itemID = 11819, groupID = 1, refLootEntry = 8983 }, --Second Wind
			gap,
			{ itemID = 2060318, groupID = 1, refLootEntry = 2060318 }, --Argelmach's Elemental Headgear
			{ itemID = 2068017, groupID = 1, refLootEntry = 2060318 }, --Argelmach's Reinforced Leggings
			{ itemID = 2064155, groupID = 1, refLootEntry = 2060318 }, --Dark Iron Chestwraps of Mastery
			{ itemID = 2061332, groupID = 1, refLootEntry = 2060318 }, --Engineering Shoulderguards of the Golem Lord
			{ itemID = 2066001, groupID = 1, refLootEntry = 2060318 }, --Golem-Crafted Waistband
			{ itemID = 2072596, groupID = 1, refLootEntry = 2060318 }, --Hands of the Master Artificer
			{ itemID = 2070184, groupID = 1, refLootEntry = 2060318 }, --Machinist's Boots of Argelmach
			{ itemID = 2075522, groupID = 1, refLootEntry = 2060318 }, --Runed Dagger of the Manufactory
		},
		{
			{ itemID = 21956 }, --Design: Dark Iron Scorpid
		gap,
			{ itemID = 11268 }, --Head of Argelmach
			{ itemID = 11465 }, --Marshal Windsor's Lost Information
		},
	},
	{
		Name = BabbleBoss["Hurley Blackbreath"],
		{
			{ itemID = 18043, groupID = 1, refLootEntry = 9537 }, --Coal Miner Boots
			{ itemID = 22275, groupID = 1, refLootEntry = 9537 }, --Firemoss Boots
			{ itemID = 18044, groupID = 1, refLootEntry = 9537 }, --Hurley's Tankard
			{ itemID = 11735, groupID = 1, refLootEntry = 9537 }, --Ragefury Eyepatch
			gap,
			{ itemID = 2067998, groupID = 1, refLootEntry = 2060309 }, --Ale-Soaked Trousers
			{ itemID = 2060309, groupID = 1, refLootEntry = 2060309 }, --Blackbreath's Fiery Eyepatch
			{ itemID = 2075586, groupID = 1, refLootEntry = 2060309 }, --Blackbreath's Hammer of Fury
			{ itemID = 2070165, groupID = 1, refLootEntry = 2060309 }, --Blazing Tavern Boots
			{ itemID = 2072580, groupID = 1, refLootEntry = 2060309 }, --Grim Guzzler Grips
			{ itemID = 2064139, groupID = 1, refLootEntry = 2060309 }, --Inferno Embrace Vest
			{ itemID = 2065983, groupID = 1, refLootEntry = 2060309 }, --Molten Band Waistguard
			{ itemID = 2062914, groupID = 1, refLootEntry = 2060309 }, --Tavern Reveler's Shirts
		},
		{
			{ itemID = 11312 }, --Lost Thunderbrew Recipe
		},
	},
	{
		Name = BabbleBoss["Phalanx"],
		{
			{ itemID = 11744, groupID = 1, refLootEntry = 9502 }, --Bloodfist
			{ itemID = 11745, groupID = 1, refLootEntry = 9502 }, --Fists of Phalanx
			{ itemID = 22212, groupID = 1, refLootEntry = 9502 }, --Golem Fitted Pauldrons
		},
	},
	{
		Name = BabbleBoss["Ribbly Screwspigot"],
		{
			{ itemID = 11612 }, --Plans: Dark Iron Plate
			{ itemID = 2662 }, --Ribbly's Quiver
			{ itemID = 2663 }, --Ribbly's Bandolier
			{ itemID = 11742 }, --Wayfarer's Knapsack
			{ itemID = 11313 }, --Ribbly's Head
			gap,
			{ itemID = 2064140, groupID = 1, refLootEntry = 2061319 }, --Blackrock Engineer's Tunic
			{ itemID = 2072581, groupID = 1, refLootEntry = 2061319 }, --Cogspark Gloves
			{ itemID = 2065984, groupID = 1, refLootEntry = 2061319 }, --Dark Iron Tinkerer's Belt
			{ itemID = 2070166, groupID = 1, refLootEntry = 2061319 }, --Flameforged Boots
			{ itemID = 2075588, groupID = 1, refLootEntry = 2061319 }, --Gnomish Gizmo Dagger
			{ itemID = 2067999, groupID = 1, refLootEntry = 2061319 }, --Molten Alloy Greaves
			{ itemID = 2061319, groupID = 1, refLootEntry = 2061319 }, --Ribbly's Precision Pauldrons
			{ itemID = 2062915, groupID = 1, refLootEntry = 2061319 }, --Screwspigot's Workshop Vest
		},
	},
	{
		Name = BabbleBoss["Plugger Spazzring"],
		{
			{ itemID = 12791, groupID = 1, refLootEntry = 9499 }, --Barman Shanker
			{ itemID = 12793, groupID = 1, refLootEntry = 9499 }, --Mixologist's Tunic
			gap,
			{ itemID = 2072578, groupID = 1, refLootEntry = 2060307 }, --Barkeep's Grip
			{ itemID = 2065981, groupID = 1, refLootEntry = 2060307 }, --Crafty Waistband
			{ itemID = 2064137, groupID = 1, refLootEntry = 2060307 }, --Entrepreneur's Vestment
			{ itemID = 2070163, groupID = 1, refLootEntry = 2060307 }, --Goblin's Nimble Shoes
			{ itemID = 2062912, groupID = 1, refLootEntry = 2060307 }, --Grim Guzzler Garb
			{ itemID = 2075581, groupID = 1, refLootEntry = 2060307 }, --Mug Smasher
			{ itemID = 2060307, groupID = 1, refLootEntry = 2060307 }, --Spazzring's Ingenious Cap
			{ itemID = 2067996, groupID = 1, refLootEntry = 2060307 }, --Tavern Trousers
		},
		{
			{ itemID = 13483 }, --Recipe: Transmute Fire to Earth
			{ itemID = 18653 }, --Schematic: Goblin Jumper Cables XL
			{ itemID = 15759 }, --Pattern: Black Dragonscale Breastplate
			{ itemID = 11602 }, --Grim Guzzler Key
			{ itemID = 11325 }, --Dark Iron Ale Mug
		},
	},
	{
		Name = BabbleBoss["Ambassador Flamelash"],
		{
			{ itemID = 11832, groupID = 1, refLootEntry = 9156 }, --Burst of Knowledge
			{ itemID = 11812, groupID = 1, refLootEntry = 9156 }, --Cape of the Fire Salamander
			{ itemID = 11808, groupID = 1, refLootEntry = 9156 }, --Circle of Flame
			{ itemID = 11809, groupID = 1, refLootEntry = 9156 }, --Flame Wrath
			{ itemID = 11814, groupID = 1, refLootEntry = 9156 }, --Molten Fists
			gap,
			{ itemID = 2075539, groupID = 1, refLootEntry = 2075539 }, --Flamelash's Inferno Pike
		},
		{
			{ itemID = 23320 }, --Tablet of Flame Shock VI
		},
	},
	{
		Name = BabbleBoss["Panzor the Invincible"] .." (" ..AL["Rare"] ..")",
		{
			{ itemID = 11785, groupID = 1, refLootEntry = 8923 }, --Rock Golem Bulwark
			{ itemID = 11787, groupID = 1, refLootEntry = 8923 }, --Shalehusk Boots
			{ itemID = 22245, groupID = 1, refLootEntry = 8923 }, --Soot Encrusted Footwear
			{ itemID = 11786, groupID = 1, refLootEntry = 8923 }, --Stone of the Earthstorm
		},
	},
	{
		Name = "Summoner's Tomb",
		{
			{ icon = "INV_Box_01", name = color.WHITE..BabbleBoss["Chest of The Seven"] },
			{ itemID = 11929 }, --Haunting Specter Leggings
			{ itemID = 11925 }, --Ghostshroud
			{ itemID = 11926 }, --Deathdealer Breastplate
			{ itemID = 11927 }, --Legplates of the Eternal Guardian
			{ itemID = 11922 }, --Blood-etched Blade
			{ itemID = 11920 }, --Wraith Scythe
			{ itemID = 11923 }, --The Hammer of Grace
			{ itemID = 11921 }, --Impervious Giant
		},
	},
	{
		Name = AL["Shadowforge Flame Keeper"],
		{
			{ icon = "INV_Box_01", name = color.WHITE..AL["Shadowforge Flame Keeper"] },
			{ itemID = 11885 }, --Shadowforge Torch
		},
	},
	{
		Name = BabbleBoss["Magmus"],
		{
			{ itemID = 11746, groupID = 1, refLootEntry = 9938 }, --Golem Skull Helm
			{ itemID = 22208, groupID = 1, refLootEntry = 9938 }, --Lavastone Hammer
			{ itemID = 22400, groupID = 1, refLootEntry = 9938 }, --Libram of Truth
			{ itemID = 11935, groupID = 1, refLootEntry = 9938 }, --Magmus Stone
			{ itemID = 22395, groupID = 1, refLootEntry = 9938 }, --Totem of Rage
		},
	},
	{
		Name = BabbleBoss["Emperor Dagran Thaurissan"],
		{
			{ itemID = 12557, groupID = 1, refLootEntry = 8929 }, --Ebonsteel Spaulders
			{ itemID = 12554, groupID = 1, refLootEntry = 8929 }, --Hands of the Exalted Herald
			{ itemID = 12556, groupID = 1, refLootEntry = 8929 }, --High Priestess Boots
			{ itemID = 12553, groupID = 1, refLootEntry = 8929 }, --Swiftwalker Boots
			{ itemID = 11931, groupID = 1, refLootEntry = 9019 }, --Dreadforge Retaliator
			{ itemID = 11934, groupID = 1, refLootEntry = 9019 }, --Emperor's Seal
			{ itemID = 11932, groupID = 1, refLootEntry = 9019 }, --Guiding Stave of Wisdom
			{ itemID = 11815, groupID = 1, refLootEntry = 9019 }, --Hand of Justice
			{ itemID = 11933, groupID = 1, refLootEntry = 9019 }, --Imperial Jewel
			{ itemID = 11684, groupID = 1, refLootEntry = 9019 }, --Ironfoe
			{ itemID = 11924, groupID = 1, refLootEntry = 9019 }, --Robes of the Royal Crown
			{ itemID = 22207, groupID = 1, refLootEntry = 9019 }, --Sash of the Grand Hunt
			{ itemID = 11928, groupID = 1, refLootEntry = 9019 }, --Thaurissan's Royal Scepter
			{ itemID = 11930, groupID = 1, refLootEntry = 9019 }, --The Emperor's New Cape
			{ itemID = 22204, groupID = 1, refLootEntry = 9019 }, --Wristguards of Renown
		},
		{
			{ itemID = 12033 }, --Thaurissan Family Jewels
			gap,
			{ itemID = 2070192, groupID = 1, refLootEntry = 2060325 }, --Emberwalkers
			{ itemID = 2061338, groupID = 1, refLootEntry = 2060325 }, --Flameforged Mantle
			{ itemID = 2068026, groupID = 1, refLootEntry = 2060325 }, --Leggings of Molten Dominion
			{ itemID = 2075524, groupID = 1, refLootEntry = 2060325 }, --Molten Iron Mace
			{ itemID = 2064161, groupID = 1, refLootEntry = 2060325 }, --Robes of the Dark Emperor
			{ itemID = 2060325, groupID = 1, refLootEntry = 2060325 }, --Thaurissan's Ember Crown
		},
	},
	{
		Name = BabbleBoss["Princess Moira Bronzebeard"],
		{
			{ itemID = 12554 }, --Hands of the Exalted Herald
			{ itemID = 12556 }, --High Priestess Boots
			{ itemID = 12557 }, --Ebonsteel Spaulders
			{ itemID = 12553 }, --Swiftwalker Boots
		},
	},
	{
		Name = "Blacksmith Plans",
		{
			{ itemID = 11614 }, --Plans: Dark Iron Mail
			{ itemID = 11615 }, --Plans: Dark Iron Shoulders
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 12552 }, --Blisterbane Wrap
			{ itemID = 12551 }, --Stoneshield Cloak
			{ itemID = 12542 }, --Funeral Pyre Vestment
			{ itemID = 12546 }, --Aristocratic Cuffs
			{ itemID = 12550 }, --Runed Golem Shackles
			{ itemID = 12547 }, --Mar Alom's Grip
			{ itemID = 12549 }, --Braincage
			{ itemID = 12555 }, --Battlechaser's Greaves
			{ itemID = 12531 }, --Searing Needle
			{ itemID = 12535 }, --Doomforged Straightedge
			{ itemID = 12527 }, --Ribsplitter
			{ itemID = 12528 }, --The Judge's Gavel
			{ itemID = 12532 }, --Spire of the Stoneshaper
		},
		{
			{ itemID = 15781 }, --Pattern: Black Dragonscale Leggings
			{ itemID = 15770 }, --Pattern: Black Dragonscale Shoulders
			{ itemID = 16053 }, --Schematic: Master Engineer's Goggles
			{ itemID = 16049 }, --Schematic: Dark Iron Bomb
			{ itemID = 16048 }, --Schematic: Dark Iron Rifle
			{ itemID = 18654 }, --Schematic: Gnomish Alarm-O-Bot
			{ itemID = 18661 }, --Schematic: World Enlarger
		gap,
			{ itemID = 11754 }, --Black Diamond
			{ itemID = 11078 }, --Relic Coffer Key
			{ itemID = 18945 }, --Dark Iron Residue
			{ itemID = 11468 }, --Dark Iron Fanny Pack
			{ itemID = 11446 }, --A Crumpled Up Note
		},
	},
}


--------------------------------------------
--- Blackrock Mountain: Blackrock Caverns ---
--------------------------------------------

AtlasLoot_Data["BlackrockCaverns"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["Blackrock Caverns"],
	Type = "ClassicDungeonExt",
	--Map = "BlackrockDepths",
	{
		Name = AL["Ascendant Lord Obsidius"],
		WebID = {39705,"npc"},
		{
			{ itemID = 241661 }, -- Amber Messenger
			{ itemID = 241833 }, -- Witching Hourglass
			{ itemID = 241876 }, -- Crepuscular Shield
			{ itemID = 240379 }, -- Raz's Pauldrons
			{ itemID = 241500 }, -- Twitching Shadows
			{ itemID = 241543 }, -- Carrier Wave Pendant
			{ itemID = 241704 }, -- Clutches of Dying Light
			{ itemID = 241747 }, -- Willowy Crown
			{ itemID = 241790 }, -- Kyrstel Mantle
		},
		{
			{ itemID = 6011 }, -- Recipe: Flask of Mighty Power
		},
	},
	{
		Name = AL["Beauty"],
		WebID = {39700,"npc"},
		{
			{ itemID = 223128 }, -- Beauty's Favorite Bone
			{ itemID = 219576 }, -- Beauty's Chew Toy
			{ itemID = 222146 }, -- Beauty's Plate
			{ itemID = 222844 }, -- Beauty's Silken Ribbon
			{ itemID = 223076 }, -- Kibble
		},
	},
	{
		Name = AL["Corla, Herald of Twilight"],
		WebID = {39679,"npc"},
		{
			{ itemID = 212713 }, -- Grace of the Herald
			{ itemID = 212826 }, -- Corla's Baton
			{ itemID = 203224 }, -- Renouncer's Cowl
			{ itemID = 211728 }, -- Armbands of Change
			{ itemID = 212654 }, -- Signet of Transformation
		},
	},
	{
		Name = AL["Karsh Steelbender <Twilight Armorer>"],
		WebID = {39698,"npc"},
		{
			{ itemID = 218298 }, -- Steelbender's Masterpiece
			{ itemID = 213383 }, -- Bracers of Cooled Anger
			{ itemID = 215448 }, -- Heat Wave Leggings
			{ itemID = 217674 }, -- Burned Gatherings
			{ itemID = 218255 }, -- Quicksilver Amulet
		},
		{
			{ itemID = 1180884 }, -- Draconic Warhorn: Karsh Steelbender
		},
	},
	{
		Name = AL["Rom'ogg Bonecrusher"],
		WebID = {39665,"npc"},
		{
			{ itemID = 232104 }, -- Torturer's Mercy
			{ itemID = 232147 }, -- Shield of the Iron Maiden
			{ itemID = 231828 }, -- Inquisition Robes
			{ itemID = 231871 }, -- Manacles of Pain
			{ itemID = 232061 }, -- Skullcracker Ring
		},
	},
}
-------------------------------------------------
--- Blackrock Mountain: Lower Blackrock Spire ---
-------------------------------------------------

AtlasLoot_Data["LowerBlackrock"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Lower Blackrock Spire"],
	Type = "ClassicDungeonExt",
	Loadfirst = 3,
	Map = "BlackrockSpire",
	{
		Name = AL["Scarshield Quartermaster"],
		{
			{ itemID = 18987 }, --Blackhand's Command
		},
	},
	{
		Name = AL["Quest Item"],
		{
			{ itemID = 12812 }, --Unfired Plate Gauntlets
			{ itemID = 12631 }, --Fiery Plate Gauntlets
			{ itemID = 12699 }, --Plans: Fiery Plate Gauntlets
			{ itemID = 12533 }, --Roughshod Pike
			{ itemID = 12740 }, --Fifth Mosh'aru Tablet
			{ itemID = 12741 }, --Sixth Mosh'aru Tablet
			{ itemID = 12345 }, --Bijou's Belongings
		},
	},
	{
		Name = BabbleBoss["Spirestone Butcher"] .." (" ..AL["Rare"] ..")",
		{
			{ itemID = 12608, groupID = 1, refLootEntry = 9219 }, --Butcher's Apron
			{ itemID = 13286, groupID = 1, refLootEntry = 9219 }, --Rivenspike
			{ itemID = 2075549, groupID = 1, refLootEntry = 2075549 }, --Butcher's Cleaver of the Blackrock
		},
	},
	{
		Name = BabbleBoss["Highlord Omokk"],
		{
			{ itemID = 16670, groupID = 1, refLootEntry = 9196 }, --Boots of Elements
			{ itemID = 13167, groupID = 1, refLootEntry = 9196 }, --Fist of Omokk
			{ itemID = 13168, groupID = 1, refLootEntry = 9196 }, --Plate of the Shaman King
			{ itemID = 13170, groupID = 1, refLootEntry = 9196 }, --Skyshroud Leggings
			{ itemID = 13166, groupID = 1, refLootEntry = 9196 }, --Slamshot Shoulders
			{ itemID = 13169, groupID = 1, refLootEntry = 9196 }, --Tressermane Leggings
			gap,
			{ itemID = 2075540, groupID = 1, refLootEntry = 2075540 }, --Omokk's Crushing Maul
		},
		{
			{ itemID = 12336 }, --Gemstone of Spirestone
			gap,
			{ itemID = 12534 }, --Omokk's Head
		},
		{
			{ itemID = 16670 }, --Boots of Elements
		},
	},
	{
		Name = BabbleBoss["Spirestone Battle Lord"] .." (" ..AL["Rare"] ..")",
		{
			{ itemID = 13284 }, --Swiftdart Battleboots
			{ itemID = 13285 }, --The Blackrock Slicer
		},
	},
	{
		Name = BabbleBoss["Spirestone Lord Magus"] .." (" ..AL["Rare"] ..")",
		{
			{ itemID = 13282 }, --Ogreseer Tower Boots
			{ itemID = 13283 }, --Magus Ring
			{ itemID = 13261 }, --Globe of D'sak
		},
	},
	{
		Name = BabbleBoss["Shadow Hunter Vosh'gajin"],
		{
			{ itemID = 12651, groupID = 1, refLootEntry = 9236 }, --Blackcrow
			{ itemID = 13257, groupID = 1, refLootEntry = 9236 }, --Demonic Runed Spaulders
			{ itemID = 12626, groupID = 1, refLootEntry = 9236 }, --Funeral Cuffs
			{ itemID = 12653, groupID = 1, refLootEntry = 9236 }, --Riphook
			{ itemID = 16712, groupID = 1, refLootEntry = 9236 }, --Shadowcraft Gloves
			{ itemID = 13255, groupID = 1, refLootEntry = 9236 }, --Trueaim Gauntlets
			gap,
			{ itemID = 2070249, groupID = 1, refLootEntry = 2061376 }, --Blackrock Footguards
			{ itemID = 2075550, groupID = 1, refLootEntry = 2061376 }, --Bloodcurse Ritual Blade
			{ itemID = 2064198, groupID = 1, refLootEntry = 2061376 }, --Dark Loa's Leather Hauberk
			{ itemID = 2072647, groupID = 1, refLootEntry = 2061376 }, --Hexmaster's Grips
			{ itemID = 2078062, groupID = 1, refLootEntry = 2061376 }, --Night Hexer's Dagger
			{ itemID = 2068087, groupID = 1, refLootEntry = 2061376 }, --Shadowstride Leather Leggings
			{ itemID = 2062984, groupID = 1, refLootEntry = 2061376 }, --Smolderthorn Ritual Garb
			{ itemID = 2066056, groupID = 1, refLootEntry = 2061376 }, --Voodoo-Threaded Waistband
			{ itemID = 2061376, groupID = 1, refLootEntry = 2061376 }, --Vosh'gajin's Hexweave Pauldrons
		},
		{
			{ itemID = 12654 }, --Doomshot
			{ itemID = 13352 }, --Vosh'gajin's Snakestone
			{ itemID = 12821 }, --Plans: Dawn's Edge
		},
		{
			{ itemID = 16712 }, --Shadowcraft Gloves
		},
	},
	{
		Name = BabbleBoss["War Master Voone"],
		{
			{ itemID = 16676, groupID = 1, refLootEntry = 9237 }, --Beaststalker's Gloves
			{ itemID = 13179, groupID = 1, refLootEntry = 9237 }, --Brazecore Armguards
			{ itemID = 28972, groupID = 1, refLootEntry = 9237 }, --Flightblade Throwing Axe
			{ itemID = 22231, groupID = 1, refLootEntry = 9237 }, --Kayser's Boots of Precision
			{ itemID = 12582, groupID = 1, refLootEntry = 9237 }, --Keris of Zul'Serak
			{ itemID = 13177, groupID = 1, refLootEntry = 9237 }, --Talisman of Evasion
			gap,
			{ itemID = 2075551, groupID = 1, refLootEntry = 2062131 }, --Axe of Voone's Cunning
			{ itemID = 2063642, groupID = 1, refLootEntry = 2062131 }, --Battleworn Shirt of the Blackrock
			{ itemID = 2071949, groupID = 1, refLootEntry = 2062131 }, --Bracers of the Orcish Vanguard
			{ itemID = 2065237, groupID = 1, refLootEntry = 2062131 }, --Chestplate of the War Master
			{ itemID = 2073473, groupID = 1, refLootEntry = 2062131 }, --Gauntlets of Strategic Wrath
			{ itemID = 2067125, groupID = 1, refLootEntry = 2062131 }, --Girdle of Orgrimmar's Might
			{ itemID = 2071329, groupID = 1, refLootEntry = 2062131 }, --Greaves of the Spire Keeper
			{ itemID = 2069321, groupID = 1, refLootEntry = 2062131 }, --Legplates of the Black Dragon's Herald
			{ itemID = 2062131, groupID = 1, refLootEntry = 2062131 }, --Voone's Commanding Pauldrons
		},
		{
			{ itemID = 12335 }, --Gemstone of Smolderthorn
		},
	},
	{
		Name = BabbleBoss["Mor Grayhoof"] .." (" ..AL["Summon"] ..")",
		{
			{ itemID = 22325, groupID = 1, refLootEntry = 16080 }, --Belt of the Trickster
			{ itemID = 22398, groupID = 1, refLootEntry = 16080 }, --Idol of Rejuvenation
			{ itemID = 22306, groupID = 1, refLootEntry = 16080 }, --Ironweave Belt
			{ itemID = 22322, groupID = 1, refLootEntry = 16080 }, --The Jaw Breaker
			{ itemID = 22319, groupID = 1, refLootEntry = 16080 }, --Tome of Divine Right
			gap,
			{ itemID = 2066307, groupID = 1, refLootEntry = 2060519 }, --Ethereal Waistcord
			{ itemID = 2076084, groupID = 1, refLootEntry = 2060519 }, --Ghostly Staff of the Elements
			{ itemID = 2060519, groupID = 1, refLootEntry = 2060519 }, --Grayhoof Spectral Helm
			{ itemID = 2063218, groupID = 1, refLootEntry = 2060519 }, --Haunting Vest of the Ancestors
			{ itemID = 2068370, groupID = 1, refLootEntry = 2060519 }, --Phantom Breeches
			{ itemID = 2072872, groupID = 1, refLootEntry = 2060519 }, --Shamanistic Grips
			{ itemID = 2061575, groupID = 1, refLootEntry = 2060519 }, --Spiritbound Shoulderguards
		},
		{
			{ itemID = 21984 }, --Left Piece of Lord Valthalak's Amulet
			{ itemID = 22046 }, --Right Piece of Lord Valthalak's Amulet
		},
	},
	{
		Name = BabbleBoss["Bannok Grimaxe"] .." (" ..AL["Rare"] ..")",
		{
			{ itemID = 12637, groupID = 1, refLootEntry = 9596 }, --Backusarian Gauntlets
			{ itemID = 12634, groupID = 1, refLootEntry = 9596 }, --Chiselbrand Girdle
			{ itemID = 12621, groupID = 1, refLootEntry = 9596 }, --Demonfork
			gap,
			{ itemID = 2070236, groupID = 1, refLootEntry = 2061362 }, --Boots of Ogre Might
			{ itemID = 2062969, groupID = 1, refLootEntry = 2061362 }, --Garb of the Dark Horde
			{ itemID = 2072633, groupID = 1, refLootEntry = 2061362 }, --Gauntlets of Brutal Dominion
			{ itemID = 2066040, groupID = 1, refLootEntry = 2061362 }, --Girdle of Blackened Faith
			{ itemID = 2064187, groupID = 1, refLootEntry = 2061362 }, --Grimaxe Warplate
			{ itemID = 2075593, groupID = 1, refLootEntry = 2061362 }, --Grimaxe's Fellblade
			{ itemID = 2068071, groupID = 1, refLootEntry = 2061362 }, --Legguards of the Spire
			{ itemID = 2061362, groupID = 1, refLootEntry = 2061362 }, --Ogre's Spiremantle
			{ itemID = 2071618, groupID = 1, refLootEntry = 2061362 }, --Wristguards of the Dark Mountain
		},
		{
			{ itemID = 12838, contentsPreview = {12784} }, --Plans: Arcanite Reaper
		},
	},
	{
		Name = BabbleBoss["Mother Smolderweb"],
		{
			{ itemID = 13244, groupID = 1, refLootEntry = 10596 }, --Gilded Gauntlets
			{ itemID = 13213, groupID = 1, refLootEntry = 10596 }, --Smolderweb's Eye
			{ itemID = 13183, groupID = 1, refLootEntry = 10596 }, --Venomspitter
			{ itemID = 16715, groupID = 1, refLootEntry = 10596 }, --Wildheart Boots
		},
	},
	{
		Name = BabbleBoss["Crystal Fang"],
		{
			{ itemID = 13184, groupID = 1, refLootEntry = 10376 }, --Fallbrush Handgrips
			{ itemID = 13218, groupID = 1, refLootEntry = 10376 }, --Fang of the Crystal Spider
			{ itemID = 13185, groupID = 1, refLootEntry = 10376 }, --Sunderseer Mantle
		},
	},
	{
		Name = BabbleBoss["Urok Doomhowl"] .." (" ..AL["Summon"] ..")",
		{
			{ itemID = 22232, groupID = 1, refLootEntry = 10584 }, --Marksman's Girdle
			{ itemID = 13259, groupID = 1, refLootEntry = 10584 }, --Ribsteel Footguards
			{ itemID = 13178, groupID = 1, refLootEntry = 10584 }, --Rosewine Circle
			{ itemID = 13258, groupID = 1, refLootEntry = 10584 }, --Slaghide Gauntlets
			gap,
			{ itemID = 2075664, groupID = 1, refLootEntry = 2075664 }, --Doomhowl's Arcane Cleaver
		},
		{
			{ itemID = 18784 }, --Top Half of Advanced Armorsmithing: Volume III
			{ itemID = 12725 }, --Plans: Enchanted Thorium Helm
			gap,
			{ itemID = 12712 }, --Warosh's Mojo
			{ itemID = 15867 }, --Prismcharm
		},
	},
	{
		Name = BabbleBoss["Quartermaster Zigris"],
		{
			{ itemID = 13252, groupID = 1, refLootEntry = 9736 }, --Cloudrunner Girdle
			{ itemID = 13253, groupID = 1, refLootEntry = 9736 }, --Hands of Power
			gap,
			{ itemID = 2064188, groupID = 1, refLootEntry = 2060343 }, --Blackrock Chestguard of Command
			{ itemID = 2078628, groupID = 1, refLootEntry = 2060343 }, --Blazefall Rifle
			{ itemID = 2071619, groupID = 1, refLootEntry = 2060343 }, --Bracers of Volcanic Might
			{ itemID = 2075603, groupID = 1, refLootEntry = 2060343 }, --Craghammer of the Dark Horde
			{ itemID = 2060343, groupID = 1, refLootEntry = 2060343 }, --Darkfire Helm of the Spire
			{ itemID = 2062970, groupID = 1, refLootEntry = 2060343 }, --Emberwoven Tunic
			{ itemID = 2072634, groupID = 1, refLootEntry = 2060343 }, --Gauntlets of the Forgebinder
			{ itemID = 2066041, groupID = 1, refLootEntry = 2060343 }, --Girdle of Emberlinked Chains
			{ itemID = 2068072, groupID = 1, refLootEntry = 2060343 }, --Lavaforged Legplates
			{ itemID = 2070237, groupID = 1, refLootEntry = 2060343 }, --Molten Stompers
		},
		{
			{ itemID = 12835, contentsPreview = {12798} }, --Plans: Annihilator
			{ itemID = 21955 }, --Design: Black Diamond Crab
		},
	},
	{
		Name = BabbleBoss["Gizrul the Slavener"],
		{
			{ itemID = 13208, groupID = 1, refLootEntry = 10268 }, --Bleak Howler Armguards
			{ itemID = 13205, groupID = 1, refLootEntry = 10268 }, --Rhombeard Protector
			{ itemID = 16718, groupID = 1, refLootEntry = 10268 }, --Wildheart Spaulders
			{ itemID = 13206, groupID = 1, refLootEntry = 10268 }, --Wolfshear Leggings
		},
	},
	{
		Name = BabbleBoss["Halycon"],
		{
			{ itemID = 13212, groupID = 1, refLootEntry = 10220 }, --Halycon's Spiked Collar
			{ itemID = 22313, groupID = 1, refLootEntry = 10220 }, --Ironweave Bracers
			{ itemID = 13210, groupID = 1, refLootEntry = 10220 }, --Pads of the Dread Wolf
			{ itemID = 13211, groupID = 1, refLootEntry = 10220 }, --Slashclaw Bracers
		},
	},
	{
		Name = BabbleBoss["Ghok Bashguud"] .." (" ..AL["Rare"] ..")",
		{
			{ itemID = 13203, groupID = 1, refLootEntry = 9718 }, --Armswake Cloak
			{ itemID = 13204, groupID = 1, refLootEntry = 9718 }, --Bashguuder
			{ itemID = 13198, groupID = 1, refLootEntry = 9718 }, --Hurd Smasher
			gap,
			{ itemID = 2066196, groupID = 1, refLootEntry = 2060448 }, --Ashen Waistplate
			{ itemID = 2064316, groupID = 1, refLootEntry = 2060448 }, --Charred Chestguard
			{ itemID = 2063112, groupID = 1, refLootEntry = 2060448 }, --Emberwoven Shirt
			{ itemID = 2060448, groupID = 1, refLootEntry = 2060448 }, --Firebrand Battlehelm
			{ itemID = 2061485, groupID = 1, refLootEntry = 2060448 }, --Flameforged Pauldrons
			{ itemID = 2072778, groupID = 1, refLootEntry = 2060448 }, --Inferno Gauntlets
			{ itemID = 2068247, groupID = 1, refLootEntry = 2060448 }, --Lavaforged Legplates
			{ itemID = 2070402, groupID = 1, refLootEntry = 2060448 }, --Molten Greaves
			{ itemID = 2075602, groupID = 1, refLootEntry = 2060448 }, --Searing Mace
			{ itemID = 2078072, groupID = 1, refLootEntry = 2060448 }, --Volcanic Bulwark
		},
	},
	{
		Name = BabbleBoss["Overlord Wyrmthalak"],
		{
			{ itemID = 16679, groupID = 1, refLootEntry = 9568 }, --Beaststalker's Mantle
			{ itemID = 13148, groupID = 1, refLootEntry = 9568 }, --Chillpike
			{ itemID = 13164, groupID = 1, refLootEntry = 9568 }, --Heart of the Scale
			{ itemID = 22321, groupID = 1, refLootEntry = 9568 }, --Heart of Wyrmthalak
			{ itemID = 13143, groupID = 1, refLootEntry = 9568 }, --Mark of the Dragon Lord
			{ itemID = 13162, groupID = 1, refLootEntry = 9568 }, --Reiver Claws
			{ itemID = 13163, groupID = 1, refLootEntry = 9568 }, --Relentless Scythe
			{ itemID = 13161, groupID = 1, refLootEntry = 9568 }, --Trindlehaven Staff
			gap,
			{ itemID = 2075591, groupID = 1, refLootEntry = 2075591 }, --Wyrmthalak's Spire of Domination
			gap,
			{ itemID = 12337 }, --Gemstone of Bloodaxe
		},
	},
	{
		Name = BabbleBoss["Burning Felguard"] .." (" ..AL["Rare"] ..", " ..AL["Random"] ..")",
		{
			{ itemID = 13181 }, --Demonskin Gloves
			{ itemID = 13182 }, --Phase Blade
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 14513 }, --Pattern: Robe of the Archmage
			{ itemID = 14152 }, --Robe of the Archmage
		gap,
			{ itemID = 13494 }, --Recipe: Greater Fire Protection Potion
			{ itemID = 16250 }, --Formula: Enchant Weapon - Superior Striking
			{ itemID = 16244 }, --Formula: Enchant Gloves - Greater Strength
			{ itemID = 15749 }, --Pattern: Volcanic Breastplate
			{ itemID = 15775 }, --Pattern: Volcanic Shoulders
		gap,
			{ itemID = 12219 }, --Unadorned Seal of Ascension
			{ itemID = 21982 }, --Ogre Warbeads
		},
	},
}

-------------------------------------------------
--- Blackrock Mountain: Upper Blackrock Spire ---
-------------------------------------------------

AtlasLoot_Data["UpperBlackrock"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Upper Blackrock Spire"],
	Type = "ClassicDungeonExt",
	Map = "BlackrockSpire",
	{
		Name = BabbleBoss["Pyroguard Emberseer"],
		{
			{ itemID = 12905 }, --Wildfire Cape
			{ itemID = 12927 }, --TruestrikeShoulders
			{ itemID = 12929 }, --Emberfury Talisman
			{ itemID = 12926 }, --Flaming Band
		gap,
			{ itemID = 17322 }, --Eye of the Emberseer
			{ itemID = 21988 }, --Ember of Emberseer
		},
		{
			{ itemID = 16672 }, --Gauntlets of Elements
		},
	},
	{
		Name = BabbleBoss["Solakar Flamewreath"],
		{
			{ itemID = 12609 }, --Polychromatic Visionwrap
			{ itemID = 12589 }, --Dustfeather Sash
			{ itemID = 12603 }, --Nightbrace Tunic
			{ itemID = 12606 }, --Crystallized Girdle
		gap,
			{ itemID = 18657 }, --Schematic: Hyper-Radiant Flame Reflector
			{ itemID = 18638 }, --Hyper-Radiant Flame Reflector
		},
		{
			{ itemID = 16695 }, --Devout Mantle
		},
	},
	{
		Name = AL["Father Flame"],
		{
			{ itemID = 13371 }, --Father Flame
		},
	},
	{
		Name = AL["Quest Item"],
		{
			{ itemID = 12358 }, --Darkstone Tablet
			{ itemID = 12352 }, --Doomrigger's Clasp
		},
	},
	{
		Name = BabbleBoss["Jed Runewatcher"],
		{
			{ itemID = 12604 }, --Starfire Tiara
			{ itemID = 12930 }, --Briarwood Reed
			{ itemID = 12605 }, --Serpentine Skuller
		},
	},
	{
		Name = BabbleBoss["Goraluk Anvilcrack"],
		{
			{ itemID = 18047, groupID = 1, refLootEntry = 10899 }, --Flame Walkers
			{ itemID = 13502, groupID = 1, refLootEntry = 10899 }, --Handcrafted Mastersmith Girdle
			{ itemID = 13498, groupID = 1, refLootEntry = 10899 }, --Handcrafted Mastersmith Leggings
			{ itemID = 18048, groupID = 1, refLootEntry = 10899 }, --Mastersmith's Hammer
			{ itemID = 2060353, groupID = 1, refLootEntry = 2060353 }, --Anvilcrack's Helm of Protection
			{ itemID = 2068092, groupID = 1, refLootEntry = 2060353 }, --Anvilcrack's Legplates of Fortitude
			{ itemID = 2070254, groupID = 1, refLootEntry = 2060353 }, --Boots of the Emberforge
			{ itemID = 2064203, groupID = 1, refLootEntry = 2060353 }, --Breastplate of Dark Steel
			{ itemID = 2066061, groupID = 1, refLootEntry = 2060353 }, --Girdle of the Black Forge
			{ itemID = 2072652, groupID = 1, refLootEntry = 2060353 }, --Grips of the Molten Hammer
			{ itemID = 2075694, groupID = 1, refLootEntry = 2060353 }, --Mace of the Anvil Master
			{ itemID = 2061379, groupID = 1, refLootEntry = 2060353 }, --Shoulderguards of Shadow Anvil
		},
		{
			{ itemID = 12837, contentsPreview = {12794} }, --Plans: Masterwork Stormhammer
			{ itemID = 12834, contentsPreview = {12790} }, --Plans: Arcanite Champion
			{ itemID = 18779 }, --Bottom Half of Advanced Armorsmithing: Volume I
			{ itemID = 12727 }, --Plans: Enchanted Thorium Breastplate
			{ icon = "INV_Box_01", name = color.WHITE..AL["Unforged Rune Covered Breastplate"] },
			{ itemID = 12806 }, --Unforged Rune Covered Breastplate
			{ itemID = 12696 }, --Plans: Demon Forged Breastplate
		},
	},
	{
		Name = BabbleBoss["Warchief Rend Blackhand"],
		{
			{ itemID = 18103, groupID = 1, refLootEntry = 10429 }, --Band of Rumination
			{ itemID = 12936, groupID = 1, refLootEntry = 10429 }, --Battleborn Armbraces
			{ itemID = 12583, groupID = 1, refLootEntry = 10429 }, --Blackhand Doomsaw
			{ itemID = 12588, groupID = 1, refLootEntry = 10429 }, --Bonespike Shoulder
			{ itemID = 12940, groupID = 1, refLootEntry = 10429 }, --Dal'Rend's Sacred Charge
			{ itemID = 12939, groupID = 1, refLootEntry = 10429 }, --Dal'Rend's Tribal Guardian
			{ itemID = 12953, groupID = 1, refLootEntry = 10429 }, --Dragoneye Coif
			{ itemID = 18102, groupID = 1, refLootEntry = 10429 }, --Dragonrider Boots
			{ itemID = 22225, groupID = 1, refLootEntry = 10429 }, --Dragonskin Cowl
			{ itemID = 12587, groupID = 1, refLootEntry = 10429 }, --Eye of Rend
			{ itemID = 22247, groupID = 1, refLootEntry = 10429 }, --Faith Healer's Boots
			{ itemID = 12590, groupID = 1, refLootEntry = 10429 }, --Felstriker
			{ itemID = 18104, groupID = 1, refLootEntry = 10429 }, --Feralsurge Girdle
			{ itemID = 12952, groupID = 1, refLootEntry = 10429 }, --Gyth's Skull
			{ itemID = 16669, groupID = 1, refLootEntry = 10429 }, --Pauldrons of Elements
			{ itemID = 16733, groupID = 1, refLootEntry = 10429 }, --Spaulders of Valor
			{ itemID = 12960, groupID = 1, refLootEntry = 10429 }, --Tribal War Feathers
			{ itemID = 12935, groupID = 1, refLootEntry = 10429 }, --Warmaster Legguards
		},
		{
			{ itemID = 12630 }, --Head of Rend Blackhand
			gap,
			{ itemID = 2070220, groupID = 1, refLootEntry = 2060335 }, --Boots of the Black Warpath
			{ itemID = 2064175, groupID = 1, refLootEntry = 2060335 }, --Chestguard of Dire Command
			{ itemID = 2078632, groupID = 1, refLootEntry = 2060335 }, --Crossbow of Smoldering Dominion
			{ itemID = 2060335, groupID = 1, refLootEntry = 2060335 }, --Eyepatch of the Dark Warchief
			{ itemID = 2066030, groupID = 1, refLootEntry = 2060335 }, --Girdle of Blackened Resolve
			{ itemID = 2072621, groupID = 1, refLootEntry = 2060335 }, --Grips of the Warchief's Fury
			{ itemID = 2068055, groupID = 1, refLootEntry = 2060335 }, --Leggings of the Shadow Sire
			{ itemID = 2061350, groupID = 1, refLootEntry = 2060335 }, --Mantle of Blackrock Authority
			{ itemID = 2075642, groupID = 1, refLootEntry = 2060335 }, --Polearm of the Dark Horde
		},
	},
	{
		Name = BabbleBoss["Gyth"],
		{
			{ itemID = 12871 }, --Chromatic Carapace
			{ itemID = 12945 }, --Legplates of the Chromatic Defier
			{ itemID = 12903 }, --Legguards of the Chromatic Defier
			{ itemID = 12895 }, --Breastplate of the Chromatic Flight
		gap,
			{ itemID = 22225 }, --Dragonskin Cowl
			{ itemID = 12960 }, --Tribal War Feathers
			{ itemID = 12953 }, --Dragoneye Coif
			{ itemID = 12952 }, --Gyth's Skull
		gap,
			{ itemID = 13522 }, --Recipe: Flask of Chromatic Resistance
		},
		{
			{ itemID = 16669 }, --Pauldrons of Elements
		},
	},
	{
		Name = BabbleBoss["The Beast"],
		{
			{ itemID = 12966, groupID = 1, refLootEntry = 10430 }, --Blackmist Armguards
			{ itemID = 12963, groupID = 1, refLootEntry = 10430 }, --Blademaster Leggings
			{ itemID = 12967, groupID = 1, refLootEntry = 10430 }, --Bloodmoon Cloak
			{ itemID = 12709, groupID = 1, refLootEntry = 10430 }, --Finkle's Skinner
			{ itemID = 12968, groupID = 1, refLootEntry = 10430 }, --Frostweaver Cape
			{ itemID = 22311, groupID = 1, refLootEntry = 10430 }, --Ironweave Boots
			{ itemID = 16729, groupID = 1, refLootEntry = 10430 }, --Lightforge Spaulders
			{ itemID = 12969, groupID = 1, refLootEntry = 10430 }, --Seeping Willow
			{ itemID = 12965, groupID = 1, refLootEntry = 10430 }, --Spiritshroud Leggings
			{ itemID = 12964, groupID = 1, refLootEntry = 10430 }, --Tristam Legguards
		},
		{
			{ itemID = 24101 }, --Book of Ferocious Bite V
			{ itemID = 19227 }, --Ace of Beasts
		},
	},
	{
		Name = BabbleBoss["Lord Valthalak"] .." (" ..AL["Summon"] ..")",
		{
			{ icon = "INV_Misc_Bag_09", name = color.WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..BabbleBoss["Lord Valthalak"] },
			{ itemID = 22336, groupID = 1, refLootEntry = 16042 }, --Draconian Aegis of the Legion
			{ itemID = 22343, groupID = 1, refLootEntry = 16042 }, --Handguards of Savagery
			{ itemID = 22302, groupID = 1, refLootEntry = 16042 }, --Ironweave Cowl
			{ itemID = 22342, groupID = 1, refLootEntry = 16042 }, --Leggings of Torment
			{ itemID = 22335, groupID = 1, refLootEntry = 16042 }, --Lord Valthalak's Staff of Command
			{ itemID = 22340, groupID = 1, refLootEntry = 16042 }, --Pendant of Celerity
			{ itemID = 22339, groupID = 1, refLootEntry = 16042 }, --Rune Band of Wizardry
			{ itemID = 22337, groupID = 1, refLootEntry = 16042 }, --Shroud of Domination
			gap,
			{ itemID = 2076074, groupID = 1, refLootEntry = 2076074 }, --Valthalak's Shadowrend Staff
		},
	},
	{
		Name = BabbleBoss["General Drakkisath"],
		{
			{ itemID = 16674, groupID = 1, refLootEntry = 10363 }, --Beaststalker's Tunic
			{ itemID = 12592, groupID = 1, refLootEntry = 10363 }, --Blackblade of Shahram
			{ itemID = 16730, groupID = 1, refLootEntry = 10363 }, --Breastplate of Valor
			{ itemID = 13142, groupID = 1, refLootEntry = 10363 }, --Brigam Girdle
			{ itemID = 16690, groupID = 1, refLootEntry = 10363 }, --Devout Robe
			{ itemID = 12602, groupID = 1, refLootEntry = 10363 }, --Draconian Deflector
			{ itemID = 22268, groupID = 1, refLootEntry = 10363 }, --Draconic Infused Emblem
			{ itemID = 16700, groupID = 1, refLootEntry = 10363 }, --Dreadmist Robe
			{ itemID = 16726, groupID = 1, refLootEntry = 10363 }, --Lightforge Breastplate
			{ itemID = 16688, groupID = 1, refLootEntry = 10363 }, --Magister's Robes
			{ itemID = 13098, groupID = 1, refLootEntry = 10363 }, --Painweaver Band
			{ itemID = 22269, groupID = 1, refLootEntry = 10363 }, --Shadow Prowler's Cloak
			{ itemID = 16721, groupID = 1, refLootEntry = 10363 }, --Shadowcraft Tunic
			{ itemID = 22267, groupID = 1, refLootEntry = 10363 }, --Spellweaver's Turban
			{ itemID = 22253, groupID = 1, refLootEntry = 10363 }, --Tome of the Lost
			{ itemID = 13141, groupID = 1, refLootEntry = 10363 }, --Tooth of Gnarr
			{ itemID = 16666, groupID = 1, refLootEntry = 10363 }, --Vest of Elements
			{ itemID = 16706, groupID = 1, refLootEntry = 10363 }, --Wildheart Vest
			{ itemID = 2075623, groupID = 1, refLootEntry = 2075623 }, --Drakkisath's Conflagrant Greatblade
		},
		{
			{ itemID = 15730, contentsPreview = {15047} }, --Pattern: Red Dragonscale Breastplate
			{ itemID = 13519 }, --Recipe: Flask of the Titans
			{ itemID = 16663 }, --Blood of the Black Dragon Champion
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 13260 }, --Wind Dancer Boots
			{ itemID = 24102 }, --Manual of Eviscerate IX
			{ itemID = 16247 }, --Formula: Enchant 2H Weapon - Superior Impact
		gap,
			{ itemID = 12607 }, --Brilliant Chromatic Scale
			{ itemID = 12219 }, --Unadorned Seal of Ascension
		},
	},
}
---------------------------------------
--- Blackrock Mountain: Molten Core ---
---------------------------------------

AtlasLoot_Data["MoltenCore"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Molten Core"],
	Type = "ClassicRaid",
	Map = "MoltenCore",
	{
		Name = BabbleBoss["Lucifron"],
		{
			{ itemID = 17072, groupID = 1, refLootEntry = 12056 }, --Blastershot Launcher
			{ itemID = 18829, groupID = 1, refLootEntry = 12056 }, --Deep Earth Spaulders
			{ itemID = 18824, groupID = 1, refLootEntry = 12056 }, --Magma Tempered Boots
			{ itemID = 19136, groupID = 1, refLootEntry = 12056 }, --Mana Igniting Cord
			{ itemID = 18872, groupID = 1, refLootEntry = 12056 }, --Manastorm Leggings
			{ itemID = 18822, groupID = 1, refLootEntry = 12056 }, --Obsidian Edged Blade
			{ itemID = 17110, groupID = 1, refLootEntry = 12056 }, --Seal of the Archmagus
			{ itemID = 18842, groupID = 1, refLootEntry = 12056 }, --Staff of Dominance
			{ itemID = 19146, groupID = 1, refLootEntry = 12056 }, --Wristguards of Stability
		},
		{
			{ itemID = 2522362, lootTable = {"T1WRIST","Token"} }, --Molten Wristguards
			{ itemID = 17329 }, --Hand of Lucifron
		},
	},
	{
		Name = BabbleBoss["Magmadar"],
		{
			{ itemID = 18823, groupID = 1, refLootEntry = 11982 }, --Aged Core Leather Gloves
			{ itemID = 17105, groupID = 1, refLootEntry = 11982 }, --Aurastone Hammer
			{ itemID = 12573, groupID = 1, refLootEntry = 11982 }, --Corebound Shoulders
			{ itemID = 17066, groupID = 1, refLootEntry = 11982 }, --Drillborer Disk
			{ itemID = 17073, groupID = 1, refLootEntry = 11982 }, --Earthshaker
			{ itemID = 18203, groupID = 1, refLootEntry = 11982 }, --Eskhandar's Right Claw
			{ itemID = 17071, groupID = 1, refLootEntry = 11982 }, --Gutgore Ripper
			{ itemID = 18879, groupID = 1, refLootEntry = 11982 }, --Heavy Dark Iron Ring
			{ itemID = 18870, groupID = 1, refLootEntry = 11982 }, --Helm of the Lifegiver
			{ itemID = 17065, groupID = 1, refLootEntry = 11982 }, --Medallion of Steadfast Might
		},
		{
			{ itemID = 2522359, lootTable = {"T1LEGS","Token"} }, --Molten Leggaurds
		},
	},
	{
		Name = BabbleBoss["Gehennas"],
		{
			{ itemID = 18832, groupID = 1, refLootEntry = 12259 }, --Brutality Blade
			{ itemID = 17077, groupID = 1, refLootEntry = 12259 }, --Crimson Shocker
			{ itemID = 19142, groupID = 1, refLootEntry = 12259 }, --Fire Runed Grimoire
			{ itemID = 19143, groupID = 1, refLootEntry = 12259 }, --Flameguard Gauntlets
			{ itemID = 18861, groupID = 1, refLootEntry = 12259 }, --Flamewaker Legplates
			{ itemID = 12594, groupID = 1, refLootEntry = 12259 }, --Flamewalker Shoulderguards
			{ itemID = 18821, groupID = 1, refLootEntry = 12259 }, --Quick Strike Ring
			{ itemID = 19144, groupID = 1, refLootEntry = 12259 }, --Sabatons of the Flamewalker
			{ itemID = 18878, groupID = 1, refLootEntry = 12259 }, --Sorcerous Dagger
		},
		{
			{ itemID = 2522364, lootTable = {"T1HAND","Token"} }, --Molten Girdle
		gap,
			{ itemID = 17331 }, --Hand of Gehennas
		},
	},
	{
		Name = BabbleBoss["Garr"],
		{
			{ itemID = 18823, groupID = 1, refLootEntry = 12057 }, --Aged Core Leather Gloves
			{ itemID = 17105, groupID = 1, refLootEntry = 12057 }, --Aurastone Hammer
			{ itemID = 17066, groupID = 1, refLootEntry = 12057 }, --Drillborer Disk
			{ itemID = 17073, groupID = 1, refLootEntry = 12057 }, --Earthshaker
			{ itemID = 18203, groupID = 1, refLootEntry = 12057 }, --Eskhandar's Right Claw
			{ itemID = 17071, groupID = 1, refLootEntry = 12057 }, --Gutgore Ripper
			{ itemID = 18879, groupID = 1, refLootEntry = 12057 }, --Heavy Dark Iron Ring
			{ itemID = 18870, groupID = 1, refLootEntry = 12057 }, --Helm of the Lifegiver
			{ itemID = 17065, groupID = 1, refLootEntry = 12057 }, --Medallion of Steadfast Mighty
		},
		{
			{ itemID = 2522360, lootTable = {"T1HEAD","Token"} }, --Molten Headpiece
		gap,
			{ itemID = 18564 }, --Bindings of the Windseeker
			{ itemID = 19019 }, --Thunderfury, Blessed Blade of the Windseeker
		gap,
			{ itemID = 17782 }, --Talisman of Binding Shard
			{ itemID = 11879 }, --Medallion of Binding Shard
		},
	},
	{
		Name = BabbleBoss["Shazzrah"],
		{
			{ itemID = 17103, groupID = 1, refLootEntry = 12264 }, --Azuresong Mageblade
			{ itemID = 17109, groupID = 1, refLootEntry = 12264 }, --Choker of Enlightenment
			{ itemID = 12597, groupID = 1, refLootEntry = 12264 }, --Embercloth Robe
			{ itemID = 12909, groupID = 1, refLootEntry = 12264 }, --Embercloth Wraps
			{ itemID = 19147, groupID = 1, refLootEntry = 12264 }, --Ring of Spell Power
			{ itemID = 19145, groupID = 1, refLootEntry = 12264 }, --Robe of Volatile Power
			{ itemID = 18875, groupID = 1, refLootEntry = 12264 }, --Salamander Scale Pants
			{ itemID = 17074, groupID = 1, refLootEntry = 12264 }, --Shadowstrike
			{ itemID = 17069, groupID = 1, refLootEntry = 12264 }, --Striker's Mark
			{ itemID = 18820, groupID = 1, refLootEntry = 12264 }, --Talisman of Ephemeral Power
		},
		{
			{ itemID = 2522363, lootTable = {"T1WAIST","Token"} }, --Molten Handgaurds
		gap,
			{ itemID = 17332 }, --Hand of Shazzrah
		},
	},
	{
		Name = BabbleBoss["Baron Geddon"],
		{
			{ itemID = 17072, groupID = 1, refLootEntry = 12056 }, --Blastershot Launcher
			{ itemID = 18829, groupID = 1, refLootEntry = 12056 }, --Deep Earth Spaulders
			{ itemID = 18824, groupID = 1, refLootEntry = 12056 }, --Magma Tempered Boots
			{ itemID = 19136, groupID = 1, refLootEntry = 12056 }, --Mana Igniting Cord
			{ itemID = 18872, groupID = 1, refLootEntry = 12056 }, --Manastorm Leggings
			{ itemID = 18822, groupID = 1, refLootEntry = 12056 }, --Obsidian Edged Blade
			{ itemID = 17110, groupID = 1, refLootEntry = 12056 }, --Seal of the Archmagus
			{ itemID = 18842, groupID = 1, refLootEntry = 12056 }, --Staff of Dominance
			{ itemID = 19146, groupID = 1, refLootEntry = 12056 }, --Wristguards of Stability
		},
		{
			{ itemID = 2522361, lootTable = {"T1SHOULDER","Token"} }, --Molten Spaulders
		gap,
			{ itemID = 18563 }, --Bindings of the Windseeker
			{ itemID = 19019 }, --Thunderfury, Blessed Blade of the Windseeker
		},
	},
	{
		Name = BabbleBoss["Golemagg the Incinerator"],
		{
			{ itemID = 17072, groupID = 1, refLootEntry = 11988 }, --Blastershot Launcher
			{ itemID = 18829, groupID = 1, refLootEntry = 11988 }, --Deep Earth Spaulders
			{ itemID = 12908, groupID = 1, refLootEntry = 11988 }, --Magma Forged Walkers
			{ itemID = 18824, groupID = 1, refLootEntry = 11988 }, --Magma Tempered Boots
			{ itemID = 19136, groupID = 1, refLootEntry = 11988 }, --Mana Igniting Cord
			{ itemID = 18872, groupID = 1, refLootEntry = 11988 }, --Manastorm Leggings
			{ itemID = 18822, groupID = 1, refLootEntry = 11988 }, --Obsidian Edged Blade
			{ itemID = 17110, groupID = 1, refLootEntry = 11988 }, --Seal of the Archmagus
			{ itemID = 18842, groupID = 1, refLootEntry = 11988 }, --Staff of Dominance
			{ itemID = 19146, groupID = 1, refLootEntry = 11988 }, --Wristguards of Stability
		},
		{
			{ itemID = 2522350, lootTable = {"T1CHEST","Token"} }, --Molten Tunic
		gap,
			{ itemID = 17203 }, --Sulfuron Ingot
			{ itemID = 17182 }, --Sulfuras, Hand of Ragnaros
		},
	},
	{
		Name = BabbleBoss["Sulfuron Harbinger"],
		{
			{ itemID = 17103, groupID = 1, refLootEntry = 12098 }, --Azuresong Mageblade
			{ itemID = 12872, groupID = 1, refLootEntry = 12098 }, --Blazing Slippers
			{ itemID = 17109, groupID = 1, refLootEntry = 12098 }, --Choker of Enlightenment
			{ itemID = 12595, groupID = 1, refLootEntry = 12098 }, --Flamebound Harness
			{ itemID = 19147, groupID = 1, refLootEntry = 12098 }, --Ring of Spell Power
			{ itemID = 19145, groupID = 1, refLootEntry = 12098 }, --Robe of Volatile Power
			{ itemID = 18875, groupID = 1, refLootEntry = 12098 }, --Salamander Scale Pants
			{ itemID = 17074, groupID = 1, refLootEntry = 12098 }, --Shadowstrike
			{ itemID = 17069, groupID = 1, refLootEntry = 12098 }, --Striker's Mark
			{ itemID = 18820, groupID = 1, refLootEntry = 12098 }, --Talisman of Ephemeral Power
		},
		{
			{ itemID = 2522365, lootTable = {"T1FEET","Token"} }, --Molten Boots
		gap,
			{ itemID = 17330 }, --Hand of Sulfuron
		},
	},
	{
		Name = BabbleBoss["Majordomo Executus"],
		{
			{ itemID = 18806, groupID = 1, refLootEntry = 12018 }, --Core Forged Greaves
			{ itemID = 18805, groupID = 1, refLootEntry = 12018 }, --Core Hound Tooth
			{ itemID = 18803, groupID = 1, refLootEntry = 12018 }, --Finkle's Lava Dredger
			{ itemID = 19139, groupID = 1, refLootEntry = 12018 }, --Fireguard Shoulders
			{ itemID = 18715, groupID = 1, refLootEntry = 12018 }, --Lok'delar, Stave of the Ancient Keepers
			{ itemID = 18713, groupID = 1, refLootEntry = 12018 }, --Rhok'delar, Longbow of the Ancient Keepers
			{ itemID = 18812, groupID = 1, refLootEntry = 12018 }, --Wristguards of True Flight
			{ itemID = 18609, groupID = 2, refLootEntry = 12018 }, --Anathema
			{ itemID = 18608, groupID = 2, refLootEntry = 12018 }, --Benediction
			{ itemID = 19140, groupID = 2, refLootEntry = 12018 }, --Cauterizing Band
			{ itemID = 18811, groupID = 2, refLootEntry = 12018 }, --Fireproof Cloak
			{ itemID = 18808, groupID = 2, refLootEntry = 12018 }, --Gloves of the Hypnotic Flame
			{ itemID = 18809, groupID = 2, refLootEntry = 12018 }, --Sash of Whispered Secrets
			{ itemID = 18810, groupID = 2, refLootEntry = 12018 }, --Wild Growth Spaulders
		},
	},
	{
		Name = BabbleBoss["Ragnaros"],
		{
			{ itemID = 17063, groupID = 1, refLootEntry = 11502 }, --Band of Accuria
			{ itemID = 19138, groupID = 1, refLootEntry = 11502 }, --Band of Sulfuras
			{ itemID = 18814, groupID = 1, refLootEntry = 11502 }, --Choker of the Fire Lord
			{ itemID = 17102, groupID = 1, refLootEntry = 11502 }, --Cloak of the Shrouded Mists
			{ itemID = 18817, groupID = 1, refLootEntry = 11502 }, --Crown of Destruction
			{ itemID = 17107, groupID = 1, refLootEntry = 11502 }, --Dragon's Blood Cape
			{ itemID = 19137, groupID = 1, refLootEntry = 11502 }, --Onslaught Girdle
			{ itemID = 12572, groupID = 1, refLootEntry = 11502 }, --Veil of Flame Worshipper
			{ itemID = 17083, groupID = 2, refLootEntry = 11502 }, --Blade of Dragon Bone
			{ itemID = 17076, groupID = 2, refLootEntry = 11502 }, --Bonereaver's Edge
			{ itemID = 18815, groupID = 2, refLootEntry = 11502 }, --Essence of the Pure Flame
			{ itemID = 17106, groupID = 2, refLootEntry = 11502 }, --Malistar's Defender
			{ itemID = 18816, groupID = 2, refLootEntry = 11502 }, --Perdition's Blade
			{ itemID = 17082, groupID = 2, refLootEntry = 11502 }, --Shard of the Flame
			{ itemID = 17104, groupID = 2, refLootEntry = 11502 }, --Spinal Reaper
		},
		{
			{ itemID = 2522459, lootTable = {"T2LEGS","Token"} }, --Chromatic Leggaurds
		gap,
			{ itemID = 21110 }, --Draconic for Dummies
		gap,
			{ itemID = 17204 }, --Eye of Sulfuras
			{ itemID = 17182 }, --Sulfuras, Hand of Ragnaros
		gap,
			{ itemID = 19017 }, --Essence of the Firelord
			{ itemID = 19019 }, --Thunderfury, Blessed Blade of the Windseeker
			{ itemID = 102107, minDifficulty = "Heroic" }, -- Reins of the Magmatic Steed
		},
	},
	{
		Name = "Random Boss Drops",
		{
			{ itemID = 17010 }, --Fiery Core
			{ itemID = 17011 }, --Lava Core
			{ itemID = 11382 }, --Blood of the Mountain
			{ itemID = 17012 }, --Core Leather
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 18264, contentsPreview = {18262} }, --Plans: Elemental Sharpening Stone
			{ itemID = 18292, contentsPreview = {18282} }, --Schematic: Core Marksman Rifle
			{ itemID = 18291, contentsPreview = {18168} }, --Schematic: Force Reactive Disk
			{ itemID = 18290, contentsPreview = {18290} }, --Schematic: Biznicks 247x128 Accurascope
			{ itemID = 18259 }, --Formula: Enchant Weapon - Spell Power
			{ itemID = 18260 }, --Formula: Enchant Weapon - Healing Power
			{ itemID = 18252, contentsPreview = {18251} }, --Pattern: Core Armor Kit
			{ itemID = 18265, contentsPreview = {18263} }, --Pattern: Flarecore Wraps
			{ itemID = 21371, contentsPreview = {21342} }, --Pattern: Core Felcloth Bag
			{ itemID = 18257, contentsPreview = {18257} }, --Recipe: Major Rejuvenation Potion
		},
	},
}

------------------------------------------
--- Blackrock Mountain: Blackwing Lair ---
------------------------------------------

AtlasLoot_Data["BlackwingLair"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Blackwing Lair"],
	Type = "ClassicRaid",
	Map = "BlackwingLair",
	{
		Name = BabbleBoss["Razorgore the Untamed"],
		{
			{ itemID = 19369, groupID = 1, refLootEntry = 12435 }, --Gloves of Rapid Evolution
			{ itemID = 19370, groupID = 1, refLootEntry = 12435 }, --Mantle of the Blackwing Cabal
			{ itemID = 19401, groupID = 1, refLootEntry = 12435 }, --Primalist's Linked Legguards
			{ itemID = 19397, groupID = 1, refLootEntry = 12435 }, --Ring of Blackrock
			{ itemID = 15027, groupID = 1, refLootEntry = 12435 }, --Soulsong Crystal
			{ itemID = 19337, groupID = 1, refLootEntry = 12435 }, --The Black Book
			{ itemID = 19336, groupID = 2, refLootEntry = 12435 }, --Arcane Infused Gem
			{ itemID = 19357, groupID = 2, refLootEntry = 12435 }, --Herald of Woe
			{ itemID = 15026, groupID = 2, refLootEntry = 12435 }, --Living Blood Gem
			{ itemID = 19405, groupID = 2, refLootEntry = 12435 }, --Malfurion's Blessed Bulwark
			{ itemID = 19335, groupID = 2, refLootEntry = 12435 }, --Spineshatter
			{ itemID = 19334, groupID = 2, refLootEntry = 12435 }, --The Untamed Blade
			{ itemID = 19434, groupID = 1, refLootEntry = 400469 }, --Band of Dark Dominion
			{ itemID = 19437, groupID = 1, refLootEntry = 400469 }, --Boots of Pure Thought
			{ itemID = 19436, groupID = 1, refLootEntry = 400469 }, --Cloak of Draconic Might
			{ itemID = 19362, groupID = 1, refLootEntry = 400469 }, --Doom's Edge
			{ itemID = 19354, groupID = 1, refLootEntry = 400469 }, --Draconic Avenger
			{ itemID = 19358, groupID = 1, refLootEntry = 400469 }, --Draconic Maul
			{ itemID = 19435, groupID = 1, refLootEntry = 400469 }, --Essence Gatherer
			{ itemID = 19439, groupID = 1, refLootEntry = 400469 }, --Interlaced Shadow Jerkin
			{ itemID = 19438, groupID = 1, refLootEntry = 400469 }, --Ringo's Blizzard Boots
		},
		{
			{ itemID = 2522462, lootTable = {"T2WRIST","Token"} }, --Chromatic Wristguards
			gap,
			{ itemID = 53144, droprate = 5 }, --Formula: Enchant Cloak - Blazing
		},
	},
	{
		Name = BabbleBoss["Vaelastrasz the Corrupt"],
		{
			{ itemID = 19403, groupID = 1, refLootEntry = 13020 }, --Band of Forced Concentration
			{ itemID = 19367, groupID = 1, refLootEntry = 13020 }, --Dragon's Touch
			{ itemID = 19339, groupID = 1, refLootEntry = 13020 }, --Mind Quickening Gem
			{ itemID = 19371, groupID = 1, refLootEntry = 13020 }, --Pendant of the Fallen Dragon
			{ itemID = 19348, groupID = 1, refLootEntry = 13020 }, --Red Dragonscale Protector
			{ itemID = 19430, groupID = 1, refLootEntry = 13020 }, --Shroud of Pure Thought
			{ itemID = 19346, groupID = 2, refLootEntry = 13020 }, --Dragonfang Blade
			{ itemID = 19394, groupID = 2, refLootEntry = 13020 }, --Drake Talon Pauldrons
			{ itemID = 19372, groupID = 2, refLootEntry = 13020 }, --Helm of Endless Rage
			{ itemID = 14000, groupID = 2, refLootEntry = 13020 }, --Ring of Trinity Force
			{ itemID = 19340, groupID = 2, refLootEntry = 13020 }, --Rune of Metamorphosis
			{ itemID = 19343, groupID = 2, refLootEntry = 13020 }, --Scrolls of Blinding Light
		},
		{
			{ itemID = 2522463, lootTable = {"T2WAIST","Token"} }, --Chromatic Girdle
		},
	},
	{
		Name = BabbleBoss["Broodlord Lashlayer"],
		{
			{ itemID = 19345, groupID = 1, refLootEntry = 12017 }, --Aegis of Preservation
			{ itemID = 19399, groupID = 1, refLootEntry = 12017 }, --Black Ash Robe
			{ itemID = 19373, groupID = 1, refLootEntry = 12017 }, --Black Brood Pauldrons
			{ itemID = 19374, groupID = 1, refLootEntry = 12017 }, --Bracers of Arcane Accuracy
			{ itemID = 19402, groupID = 1, refLootEntry = 12017 }, --Legguards of the Fallen Crusader
			{ itemID = 19432, groupID = 2, refLootEntry = 12017 }, --Circle of Applied Force
			{ itemID = 19365, groupID = 2, refLootEntry = 12017 }, --Claw of the Black Drake
			{ itemID = 19350, groupID = 2, refLootEntry = 12017 }, --Heartstriker
			{ itemID = 19408, groupID = 2, refLootEntry = 12017 }, --Kirasath'Dargonax, Fate of the Devourer
			{ itemID = 19341, groupID = 2, refLootEntry = 12017 }, --Lifegiving Gem
			{ itemID = 19351, groupID = 2, refLootEntry = 12017 }, --Maladath, Runed Blade of the Black Flight
			{ itemID = 19342, groupID = 2, refLootEntry = 12017 }, --Venomous Totem
		},
		{
			{ itemID = 2522465, lootTable = {"T2FEET","Token"} }, --Chromatic Boots
		gap,
			{ itemID = 53142, droprate = 5 }, -- Formula: Enchant Cloak - Draconic Might
		gap,
			{ itemID = 20383 }, --Head of the Broodlord Lashlayer
		},
	},
	{
		Name = BabbleBoss["Firemaw"],
		{
			{ itemID = 19407, groupID = 1, refLootEntry = 11983 }, --Ebony Flame Gloves
			{ itemID = 19433, groupID = 1, refLootEntry = 11983 }, --Emberweave Leggings
			{ itemID = 19400, groupID = 1, refLootEntry = 11983 }, --Firemaw's Clutch
			{ itemID = 19344, groupID = 1, refLootEntry = 11983 }, --Natural Alignment Crystal
			{ itemID = 19395, groupID = 1, refLootEntry = 11983 }, --Rejuvenating Gem
			{ itemID = 19355, groupID = 1, refLootEntry = 11983 }, --Shadow Wing Focus Staff
			{ itemID = 19398, groupID = 2, refLootEntry = 11983 }, --Cloak of Firemaw
			{ itemID = 19368, groupID = 2, refLootEntry = 11983 }, --Dragonbreath Hand Cannon
			{ itemID = 19406, groupID = 2, refLootEntry = 11983 }, --Drake Fang Talisman
			{ itemID = 19353, groupID = 2, refLootEntry = 11983 }, --Drake Talon Cleaver
			{ itemID = 19431, groupID = 2, refLootEntry = 11983 }, --Styleen's Impeding Scarab
			{ itemID = 19396, groupID = 2, refLootEntry = 11983 }, --Taut Dragonhide Belt
		},
		{
			{ itemID = 2522464, lootTable = {"T2HAND","Token"} }, --Chromatic Handgaurds
		},
	},
	{
		Name = BabbleBoss["Ebonroc"],
		{
			{ itemID = 19345, groupID = 1, refLootEntry = 34036 }, --Aegis of Preservation
			{ itemID = 19403, groupID = 1, refLootEntry = 34036 }, --Band of Forced Concentration
			{ itemID = 19368, groupID = 1, refLootEntry = 34036 }, --Dragonbreath Hand Cannon
			{ itemID = 19406, groupID = 1, refLootEntry = 34036 }, --Drake Fang Talisman
			{ itemID = 19353, groupID = 1, refLootEntry = 34036 }, --Drake Talon Cleaver
			{ itemID = 19394, groupID = 1, refLootEntry = 34036 }, --Drake Talon Pauldrons
			{ itemID = 19407, groupID = 1, refLootEntry = 34036 }, --Ebony Flame Gloves
			{ itemID = 19405, groupID = 1, refLootEntry = 34036 }, --Malfurion's Blessed Bulwark
			{ itemID = 19395, groupID = 1, refLootEntry = 34036 }, --Rejuvenating Gem
			{ itemID = 19397, groupID = 1, refLootEntry = 34036 }, --Ring of Blackrock
			{ itemID = 19355, groupID = 1, refLootEntry = 34036 }, --Shadow Wing Focus Staff
			{ itemID = 19396, groupID = 1, refLootEntry = 34036 }, --Taut Dragonhide Belt
		},
		{
			{ itemID = 2522464, lootTable = {"T2HAND","Token"} }, --Chromatic Handgaurds
		},
	},
	{
		Name = BabbleBoss["Flamegor"],
		{
			{ itemID = 19432, groupID = 1, refLootEntry = 34037 }, --Circle of Applied Force
			{ itemID = 19367, groupID = 1, refLootEntry = 34037 }, --Dragon's Touch
			{ itemID = 19353, groupID = 1, refLootEntry = 34037 }, --Drake Talon Cleaver
			{ itemID = 19394, groupID = 1, refLootEntry = 34037 }, --Drake Talon Pauldrons
			{ itemID = 19433, groupID = 1, refLootEntry = 34037 }, --Emberweave Leggings
			{ itemID = 19357, groupID = 1, refLootEntry = 34037 }, --Herald of Woe
			{ itemID = 19395, groupID = 1, refLootEntry = 34037 }, --Rejuvenating Gem
			{ itemID = 19397, groupID = 1, refLootEntry = 34037 }, --Ring of Blackrock
			{ itemID = 14000, groupID = 1, refLootEntry = 34037 }, --Ring of Trinity Force
			{ itemID = 19355, groupID = 1, refLootEntry = 34037 }, --Shadow Wing Focus Staff
			{ itemID = 19430, groupID = 1, refLootEntry = 34037 }, --Shroud of Pure Thought
			{ itemID = 19431, groupID = 1, refLootEntry = 34037 }, --Styleen's Impeding Scarab
			{ itemID = 19396, groupID = 1, refLootEntry = 34037 }, --Taut Dragonhide Belt

		},
		{
			{ itemID = 2522464, lootTable = {"T2HAND","Token"} }, --Chromatic Handgaurds
		},
	},
	{
		Name = BabbleBoss["Chromaggus"],
		{
			{ itemID = 19388, groupID = 1, refLootEntry = 14020 }, --Angelista's Grasp
			{ itemID = 19347, groupID = 1, refLootEntry = 14020 }, --Claw of Chromaggus
			{ itemID = 19349, groupID = 1, refLootEntry = 14020 }, --Elementium Reinforced Bulwark
			{ itemID = 19385, groupID = 1, refLootEntry = 14020 }, --Empowered Leggings
			{ itemID = 19392, groupID = 1, refLootEntry = 14020 }, --Girdle of the Fallen Crusader
			{ itemID = 19393, groupID = 1, refLootEntry = 14020 }, --Primalist's Linked Waistguard
			{ itemID = 19391, groupID = 1, refLootEntry = 14020 }, --Shimmering Geta
			{ itemID = 19361, groupID = 2, refLootEntry = 14020 }, --Ashjre'thul, Crossbow of Smiting
			{ itemID = 19352, groupID = 2, refLootEntry = 14020 }, --Chromatically Tempered Sword
			{ itemID = 19387, groupID = 2, refLootEntry = 14020 }, --Drakeadon's Stompers
			{ itemID = 19386, groupID = 2, refLootEntry = 14020 }, --Elementium Threaded Cloak
			{ itemID = 19390, groupID = 2, refLootEntry = 14020 }, --Taut Dragonhide Gloves
			{ itemID = 19389, groupID = 2, refLootEntry = 14020 }, --Taut Dragonhide Shoulderpads
		},
		{
			{ itemID = 2522461, lootTable = {"T2SHOULDER","Token"} }, --Chromatic Spaulders
		},
	},
	{
		Name = BabbleBoss["Nefarian"],
		{
			{ itemID = 19378, groupID = 1, refLootEntry = 11583 }, --Cloak of the Brood Lord
			{ itemID = 19360, groupID = 1, refLootEntry = 11583 }, --Lok'amir il Romathis
			{ itemID = 19375, groupID = 1, refLootEntry = 11583 }, --Mish'undare, Circlet of the Mind Flayer
			{ itemID = 19379, groupID = 1, refLootEntry = 11583 }, --Neltharion's Tear
			{ itemID = 19382, groupID = 1, refLootEntry = 11583 }, --Pure Elementium Band
			{ itemID = 19356, groupID = 1, refLootEntry = 11583 }, --Staff of the Shadow Flame
			{ itemID = 14001, groupID = 2, refLootEntry = 11583 }, --Archimtiros' Ring of Armageddon
			{ itemID = 19376, groupID = 2, refLootEntry = 11583 }, --Archimtiros' Ring of Reckoning
			{ itemID = 19364, groupID = 2, refLootEntry = 11583 }, --Ashkandi, Greatsword of the Brotherhood
			{ itemID = 19381, groupID = 2, refLootEntry = 11583 }, --Boots of the Shadow Flame
			{ itemID = 19363, groupID = 2, refLootEntry = 11583 }, --Crul'shorukh, Edge of Chaos
			{ itemID = 19377, groupID = 2, refLootEntry = 11583 }, --Prestor's Talisman of Connivery
			{ itemID = 19380, groupID = 2, refLootEntry = 11583 }, --Therazane's Link
		},
		{
			{ itemID = 2522450, lootTable = {"T2CHEST","Token"} }, --Chromatic Tunic
		gap,
			{ itemID = 19003, contentsPreview = {19383, 19384, 19366, 21138} }, --Head of Nefarian
			{ itemID = 21138 }, --Red Scepter Shard
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 19436 }, --Cloak of Draconic Might
			{ itemID = 19437 }, --Boots of Pure Thought
			{ itemID = 19438 }, --Ringo's Blizzard Boots
			{ itemID = 19439 }, --Interlaced Shadow Jerkin
			{ itemID = 19434 }, --Band of Dark Dominion
			{ itemID = 19362 }, --Doom's Edge
			{ itemID = 19354 }, --Draconic Avenger
			{ itemID = 19358 }, --Draconic Maul
			{ itemID = 19435 }, --Essence Gatherer
		},
		{
			{ itemID = 18562 }, --Elementium Ore
		gap,
			{ itemID = 21109 }, --Draconic for Dummies
		},
	},
}

----------------------
--- Dire Maul East ---
----------------------

AtlasLoot_Data["DireMaulEast"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Dire Maul"] .." East",
	Type = "ClassicDungeonExt",
	Map = "DireMaul",
	{
		Name = BabbleBoss["Pusillin"],
		{
			{ itemID = 18267 }, --Recipe: Runn Tum Tuber Surprise
		gap,
			{ itemID = 18261 }, --Book of Incantations
			{ itemID = 18249 }, --Crescent Key
		},
	},
	{
		Name = BabbleBoss["Zevrim Thornhoof"],
		{
			{ itemID = 18308, groupID = 1, refLootEntry = 11490 }, --Clever Hat
			{ itemID = 18319, groupID = 1, refLootEntry = 11490 }, --Fervent Helm
			{ itemID = 18306, groupID = 1, refLootEntry = 11490 }, --Gloves of Shadowy Mist
			{ itemID = 18313, groupID = 1, refLootEntry = 11490 }, --Helm of Awareness
			{ itemID = 18323, groupID = 1, refLootEntry = 11490 }, --Satyr's Bow
		},
	},
	{
		Name = BabbleBoss["Lethtendris"],
		{
			{ itemID = 18302, groupID = 1, refLootEntry = 14327 }, --Band of Vigor
			{ itemID = 18325, groupID = 1, refLootEntry = 14327 }, --Felhide Cap
			{ itemID = 18301, groupID = 1, refLootEntry = 14327 }, --Lethtendris's Wand
			{ itemID = 18354, groupID = 1, refLootEntry = 14327 }, --Pimgib's Collar
			{ itemID = 18311, groupID = 1, refLootEntry = 14327 }, --Quel'dorei Channeling Rod
			gap,
			{ itemID = 2066685, groupID = 1, refLootEntry = 2064835 }, --Girdle of Eldritch Wards
			{ itemID = 2068811, groupID = 1, refLootEntry = 2064835 }, --Leggings of Dark Incantations
			{ itemID = 2064835, groupID = 1, refLootEntry = 2064835 }, --Robe of Arcane Whispers
			{ itemID = 2070881, groupID = 1, refLootEntry = 2064835 }, --Slippers of Shadowed Paths
			{ itemID = 2075995, groupID = 1, refLootEntry = 2064835 }, --Staff of Demonic Empowerment
		},
		{
			{ itemID = 18426 }, --Lethtendris's Web
		},
	},
	{
		Name = BabbleBoss["Pimgib"],
		{
			{ itemID = 18354 }, --Pimgib's Collar
		},
	},
	{
		Name = BabbleBoss["Hydrospawn"],
		{
			{ itemID = 18305, groupID = 1, refLootEntry = 13280 }, --Breakwater Legguards
			{ itemID = 18307, groupID = 1, refLootEntry = 13280 }, --Riptide Shoes
			{ itemID = 18317, groupID = 1, refLootEntry = 13280 }, --Tempest Talisman
			{ itemID = 18322, groupID = 1, refLootEntry = 13280 }, --Waterspout Boots
			{ itemID = 18324, groupID = 1, refLootEntry = 13280 }, --Waveslicer
		},
	},
	{
		Name = BabbleBoss["Alzzin the Wildshaper"],
		{
			{ itemID = 18321, groupID = 1, refLootEntry = 11492 }, --Energetic Rod
			{ itemID = 18312, groupID = 1, refLootEntry = 11492 }, --Energized Chestplate
			{ itemID = 18310, groupID = 1, refLootEntry = 11492 }, --Fiendish Machete
			{ itemID = 18309, groupID = 1, refLootEntry = 11492 }, --Gloves of Restoration
			{ itemID = 18318, groupID = 1, refLootEntry = 11492 }, --Merciful Greaves
			{ itemID = 18326, groupID = 1, refLootEntry = 11492 }, --Razor Gauntlets
			{ itemID = 18314, groupID = 1, refLootEntry = 11492 }, --Ring of Demonic Guile
			{ itemID = 18315, groupID = 1, refLootEntry = 11492 }, --Ring of Demonic Potency
			{ itemID = 18328, groupID = 1, refLootEntry = 11492 }, --Shadewood Cloak
			{ itemID = 18327, groupID = 1, refLootEntry = 11492 }, --Whipvine Cord			
		},
		{
			{ itemID = 18501 }, --Felvine Shard
		},
	},
	{
		Name = BabbleBoss["Isalien"],
		{
			{ icon = "INV_Misc_Bag_09", name = color.WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..BabbleBoss["Isalien"] },
			{ itemID = 22304 }, --Ironweave Gloves
			{ itemID = 22472 }, --Boots of Ferocity
			{ itemID = 22401 }, --Libram of Hope
			{ itemID = 22345 }, --Totem of Rebirth
			{ itemID = 22315 }, --Hammer of Revitalization
			{ itemID = 22314 }, --Huntsman's Harpoon
		},
		{
			{ itemID = 21984 }, --Left Piece of Lord Valthalak's Amulet
			{ itemID = 22046 }, --Right Piece of Lord Valthalak's Amulet
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 18295 }, --Phasing Boots
			{ itemID = 18298 }, --Unbridled Leggings
			{ itemID = 18296 }, --Marksman Bands
			{ itemID = 18289 }, --Barbed Thorn Necklace
		},
	},
	{
		Name = "Dire Maul Books",
		{
			{ itemID = 18364 }, --The Emerald Dream
			{ itemID = 18361 }, --The Greatest Race of Hunters
			{ itemID = 18358 }, --The Arcanist's Cookbook
			{ itemID = 18359 }, --The Light and How to Swing It
			{ itemID = 18362 }, --Holy Bologna: What the Light Won't Tell You
			{ itemID = 18356 }, --Garona: A Study on Stealth and Treachery
			{ itemID = 18363 }, --Frost Shock and You
			{ itemID = 18360 }, --Harnessing Shadows
			{ itemID = 18357 }, --Codex of Defense
			{ itemID = 18333 }, --Libram of Focus
			{ itemID = 18334 }, --Libram of Protection
			{ itemID = 18332 }, --Libram of Rapidity
		},
		{
			{ itemID = 18470 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18473 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18468 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18472 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18469 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18465 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18471 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18467 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18466 }, --Royal Seal of Eldre'Thalas
		gap,
			{ itemID = 18401 }, --Foror's Compendium of Dragon Slaying
			{ itemID = 18348 }, --Quel'Serrar
		},
	},
}
-----------------------
--- Dire Maul North ---
-----------------------

AtlasLoot_Data["DireMaulNorth"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Dire Maul"] .." North",
	Type = "ClassicDungeonExt",
	Map = "DireMaul",
	{
		Name = BabbleBoss["Guard Mol'dar"],
		{
			{ itemID = 18498, groupID = 0, refLootEntry = 14326 }, --Hedgecutter
			{ itemID = 18493, groupID = 1, refLootEntry = 14326 }, --Bulky Iron Spaulders
			{ itemID = 18494, groupID = 1, refLootEntry = 14326 }, --Denwatcher's Shoulders
			{ itemID = 2218464, groupID = 1, refLootEntry = 14326 }, --Flattened Elven Ring
			{ itemID = 18459, groupID = 1, refLootEntry = 14326 }, --Gallant's Wristguards
			{ itemID = 2018464, groupID = 1, refLootEntry = 14326 }, --Gordok Knuckleband
			{ itemID = 18464, groupID = 1, refLootEntry = 14326 }, --Gordok Nose Ring
			{ itemID = 18496, groupID = 1, refLootEntry = 14326 }, --Heliotrope Cloak
			{ itemID = 18451, groupID = 1, refLootEntry = 14326 }, --Hyena Hide Belt
			{ itemID = 18462, groupID = 1, refLootEntry = 14326 }, --Jagged Bone Fist
			{ itemID = 18458, groupID = 1, refLootEntry = 14326 }, --Modest Armguards
			{ itemID = 18463, groupID = 1, refLootEntry = 14326 }, --Ogre Pocket Knife
			{ itemID = 18450, groupID = 1, refLootEntry = 14326 }, --Robe of Combustion
			{ itemID = 18497, groupID = 1, refLootEntry = 14326 }, --Sublime Wristguards
			{ itemID = 18460, groupID = 1, refLootEntry = 14326 }, --Unsophisticated Hand Cannon
			{ itemID = 2075994, groupID = 1, refLootEntry = 2075994 }, --Mol'dar's Berserker Axe
		},
		{
			{ itemID = 18268 }, --Gordok Inner Door Key
		},
	},
	{
		Name = BabbleBoss["Stomper Kreeg"],
		{
			{ itemID = 2218464, groupID = 1, refLootEntry = 14322 }, --Flattened Elven Ring
			{ itemID = 18459, groupID = 1, refLootEntry = 14322 }, --Gallant's Wristguards
			{ itemID = 2018464, groupID = 1, refLootEntry = 14322 }, --Gordok Knuckleband
			{ itemID = 18464, groupID = 1, refLootEntry = 14322 }, --Gordok Nose Ring
			{ itemID = 18451, groupID = 1, refLootEntry = 14322 }, --Hyena Hide Belt
			{ itemID = 18462, groupID = 1, refLootEntry = 14322 }, --Jagged Bone Fist
			{ itemID = 18425, groupID = 1, refLootEntry = 14322 }, --Kreeg's Mug
			{ itemID = 18458, groupID = 1, refLootEntry = 14322 }, --Modest Armguards
			{ itemID = 18463, groupID = 1, refLootEntry = 14322 }, --Ogre Pocket Knife
			{ itemID = 18450, groupID = 1, refLootEntry = 14322 }, --Robe of Combustion
			{ itemID = 18460, groupID = 1, refLootEntry = 14322 }, --Unsophisticated Hand Cannon
			{ itemID = 2075991, groupID = 1, refLootEntry = 2075991 }, --Kreeg's Jovial Smash

		},
	},
	{
		Name = BabbleBoss["Guard Fengus"],
		{
			{ itemID = 18493, groupID = 1, refLootEntry = 14321 }, --Bulky Iron Spaulders
			{ itemID = 18494, groupID = 1, refLootEntry = 14321 }, --Denwatcher's Shoulders
			{ itemID = 2218464, groupID = 1, refLootEntry = 14321 }, --Flattened Elven Ring
			{ itemID = 18459, groupID = 1, refLootEntry = 14321 }, --Gallant's Wristguards
			{ itemID = 2018464, groupID = 1, refLootEntry = 14321 }, --Gordok Knuckleband
			{ itemID = 18464, groupID = 1, refLootEntry = 14321 }, --Gordok Nose Ring
			{ itemID = 18498, groupID = 1, refLootEntry = 14321 }, --Hedgecutter
			{ itemID = 18496, groupID = 1, refLootEntry = 14321 }, --Heliotrope Cloak
			{ itemID = 18451, groupID = 1, refLootEntry = 14321 }, --Hyena Hide Belt
			{ itemID = 18462, groupID = 1, refLootEntry = 14321 }, --Jagged Bone Fist
			{ itemID = 18458, groupID = 1, refLootEntry = 14321 }, --Modest Armguards
			{ itemID = 18463, groupID = 1, refLootEntry = 14321 }, --Ogre Pocket Knife
			{ itemID = 18450, groupID = 1, refLootEntry = 14321 }, --Robe of Combustion
			{ itemID = 18497, groupID = 1, refLootEntry = 14321 }, --Sublime Wristguards
			{ itemID = 18460, groupID = 1, refLootEntry = 14321 }, --Unsophisticated Hand Cannon
			{ itemID = 2075990, groupID = 1, refLootEntry = 2075990 }, --Fengus's Warblade
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE..AL["Fengus's Chest"] },
			{ itemID = 18266 }, --Gordok Courtyard Key
		},
	},
	{
		Name = AL["Knot Thimblejack"],
		{
			{ itemID = 18517 }, --Pattern: Chromatic Cloak
			{ itemID = 18518 }, --Pattern: Hide of the Wild
			{ itemID = 18519 }, --Pattern: Shifting Cloak
			{ itemID = 18414 }, --Pattern: Belt of the Archmage
			{ itemID = 18418 }, --Pattern: Cloak of Warding
		gap,
			{ itemID = 18415 }, --Pattern: Felcloth Gloves
			{ itemID = 18416 }, --Pattern: Inferno Gloves
			{ itemID = 18417 }, --Pattern: Mooncloth Gloves
			{ itemID = 18514 }, --Pattern: Girdle of Insight
			{ itemID = 18515 }, --Pattern: Mongoose Boots
			{ itemID = 18516 }, --Pattern: Swift Flight Bracers
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Ogre Tannin Basket"] },
			{ itemID = 18240 }, --Ogre Tannin
		},
		{
			{ itemID = 18509 }, --Chromatic Cloak
			{ itemID = 18510 }, --Hide of the Wild
			{ itemID = 18511 }, --Shifting Cloak
			{ itemID = 18405 }, --Belt of the Archmage
		gap,
			{ itemID = 18413 }, --Cloak of Warding
			{ itemID = 18407 }, --Felcloth Gloves
			{ itemID = 18408 }, --Inferno Gloves
			{ itemID = 18409 }, --Mooncloth Gloves
			{ itemID = 18504 }, --Girdle of Insight
			{ itemID = 18506 }, --Mongoose Boots
			{ itemID = 18508 }, --Swift Flight Bracers
		},
	},
	{
		Name = BabbleBoss["Guard Slip'kik"],
		{
			{ itemID = 18493, groupID = 1, refLootEntry = 14323 }, --Bulky Iron Spaulders
			{ itemID = 18494, groupID = 1, refLootEntry = 14323 }, --Denwatcher's Shoulders
			{ itemID = 2218464, groupID = 1, refLootEntry = 14323 }, --Flattened Elven Ring
			{ itemID = 18459, groupID = 1, refLootEntry = 14323 }, --Gallant's Wristguards
			{ itemID = 2018464, groupID = 1, refLootEntry = 14323 }, --Gordok Knuckleband
			{ itemID = 18464, groupID = 1, refLootEntry = 14323 }, --Gordok Nose Ring
			{ itemID = 18498, groupID = 1, refLootEntry = 14323 }, --Hedgecutter
			{ itemID = 18496, groupID = 1, refLootEntry = 14323 }, --Heliotrope Cloak
			{ itemID = 18451, groupID = 1, refLootEntry = 14323 }, --Hyena Hide Belt
			{ itemID = 18462, groupID = 1, refLootEntry = 14323 }, --Jagged Bone Fist
			{ itemID = 18458, groupID = 1, refLootEntry = 14323 }, --Modest Armguards
			{ itemID = 18463, groupID = 1, refLootEntry = 14323 }, --Ogre Pocket Knife
			{ itemID = 18450, groupID = 1, refLootEntry = 14323 }, --Robe of Combustion
			{ itemID = 18497, groupID = 1, refLootEntry = 14323 }, --Sublime Wristguards
			{ itemID = 18460, groupID = 1, refLootEntry = 14323 }, --Unsophisticated Hand Cannon
			{ itemID = 2078157, groupID = 1, refLootEntry = 2075992 }, --Gordok Defender's Bulwark
			{ itemID = 2075992, groupID = 1, refLootEntry = 2075992 }, --Slip'kik's Cudgel of Might
		},
	},
	{
		Name = BabbleBoss["Captain Kromcrush"],
		{
			{ itemID = 18507, groupID = 1, refLootEntry = 14325 }, --Boots of the Full Moon
			{ itemID = 18503, groupID = 1, refLootEntry = 14325 }, --Kromcrush's Chestplate
			{ itemID = 18502, groupID = 1, refLootEntry = 14325 }, --Monstrous Glaive
			{ itemID = 18505, groupID = 1, refLootEntry = 14325 }, --Mugger's Belt
			{ itemID = 2075993, groupID = 1, refLootEntry = 2075993 }, --Kromcrush's Dualblade
		},
	},
	{
		Name = BabbleBoss["Cho'Rush the Observer"],
		{
			{ itemID = 18484, groupID = 1, refLootEntry = 14324 }, --Cho'Rush's Blade
			{ itemID = 18490, groupID = 1, refLootEntry = 14324 }, --Insightful Hood
			{ itemID = 18483, groupID = 1, refLootEntry = 14324 }, --Mana Channeling Wand
			{ itemID = 18485, groupID = 1, refLootEntry = 14324 }, --Observer's Shield
		},
	},
	{
		Name = BabbleBoss["King Gordok"],
		{
			{ itemID = 18522, groupID = 1, refLootEntry = 11501 }, --Band of the Ogre King
			{ itemID = 18520, groupID = 1, refLootEntry = 11501 }, --Barbarous Blade
			{ itemID = 18525, groupID = 1, refLootEntry = 11501 }, --Bracers of Prosperity
			{ itemID = 18523, groupID = 1, refLootEntry = 11501 }, --Brightly Glowing Stone
			{ itemID = 18526, groupID = 1, refLootEntry = 11501 }, --Crown of the Ogre King
			{ itemID = 18521, groupID = 1, refLootEntry = 11501 }, --Grimy Metal Boots
			{ itemID = 18527, groupID = 1, refLootEntry = 11501 }, --Harmonious Gauntlets
			{ itemID = 18524, groupID = 1, refLootEntry = 11501 }, --Leggings of Destruction
			{ itemID = 2075747, groupID = 1, refLootEntry = 2075747 }, --Bloodthirster of the Gordok King
		},
		{
			{ itemID = 19258 }, --Ace of Warlords
		gap,
			{ itemID = 18780 }, --Top Half of Advanced Armorsmithing: Volume I
			{ itemID = 12727 }, --Plans: Enchanted Thorium Breastplate
		},
	},
	{
		Name = AL["DM North Tribute Chest"],
		{
			{ itemID = 18538 }, --Treant's Bane
			{ itemID = 18495 }, --Redoubt Cloak
			{ itemID = 18532 }, --Mindsurge Robe
			{ itemID = 18528 }, --Cyclone Spaulders
			{ itemID = 18530 }, --Ogre Forged Hauberk
			{ itemID = 18533 }, --Gordok Bracers of Power
			{ itemID = 18529 }, --Elemental Plate Girdle
			{ itemID = 18500 }, --Tarnished Elven Ring
			{ itemID = 18537 }, --Counterattack Lodestone
			{ itemID = 18531 }, --Unyielding Maul
			{ itemID = 18534 }, --Rod of the Ogre Magi
			{ itemID = 18499 }, --Barrier Shield
		},
		{
			{ itemID = 18475 }, --Oddly Magical Belt
			{ itemID = 18478 }, --Hyena Hide Jerkin
			{ itemID = 18477 }, --Shaggy Leggings
			{ itemID = 18476 }, --Mud Stained Boots
			{ itemID = 18479 }, --Carrion Scorpid Helm
			{ itemID = 18480 }, --Scarab Plate Helm
			{ itemID = 18481 }, --Skullcracking Mace
			{ itemID = 18482 }, --Ogre Toothpick Shooter
			{ itemID = 18655 }, --Schematic: Major Recombobulator
		},
	},
}

----------------------
--- Dire Maul West ---
----------------------

AtlasLoot_Data["DireMaulWest"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Dire Maul"] .." West",
	Type = "ClassicDungeonExt",
	Map = "DireMaul",
	{
		Name = BabbleBoss["Tendris Warpwood"],
		{
			{ itemID = 18352, groupID = 1, refLootEntry = 11489 }, --Petrified Bark Shield
			{ itemID = 18353, groupID = 1, refLootEntry = 11489 }, --Stoneflower Staff
			{ itemID = 18390, groupID = 1, refLootEntry = 11489 }, --Tanglemoss Leggings
			{ itemID = 18393, groupID = 1, refLootEntry = 11489 }, --Warpwood Binding
		},
	},
	{
		Name = BabbleBoss["Illyanna Ravenoak"],
		{
			{ itemID = 18383, groupID = 1, refLootEntry = 11488 }, --Force Imbued Gauntlets
			{ itemID = 18349, groupID = 1, refLootEntry = 11488 }, --Gauntlets of Accuracy
			{ itemID = 18386, groupID = 1, refLootEntry = 11488 }, --Padre's Trousers
			{ itemID = 18347, groupID = 1, refLootEntry = 11488 }, --Well Balanced Axe
			gap,
			{ itemID = 2075745, groupID = 1, refLootEntry = 2061470 }, --Blade of the Ancient Grove
			{ itemID = 2064298, groupID = 1, refLootEntry = 2061470 }, --Guardian's Embrace
			{ itemID = 2068224, groupID = 1, refLootEntry = 2061470 }, --Leafbound Leggings
			{ itemID = 2070381, groupID = 1, refLootEntry = 2061470 }, --Pathfinder's Treads
			{ itemID = 2061470, groupID = 1, refLootEntry = 2061470 }, --Ravenoak's Arcane Mantle
			{ itemID = 2078643, groupID = 1, refLootEntry = 2061470 }, --Sentinel's Longbow
			{ itemID = 2066176, groupID = 1, refLootEntry = 2061470 }, --Wildsweaver Belt

		},
	},
	{
		Name = BabbleBoss["Magister Kalendris"],
		{
			{ itemID = 18350, groupID = 1, refLootEntry = 11487 }, --Amplifying Cloak
			{ itemID = 18397, groupID = 1, refLootEntry = 11487 }, --Elder Magus Pendant
			{ itemID = 18374, groupID = 1, refLootEntry = 11487 }, --Flamescarred Shoulders
			{ itemID = 18351, groupID = 1, refLootEntry = 11487 }, --Magically Sealed Bracers
			{ itemID = 18371, groupID = 1, refLootEntry = 11487 }, --Mindtap Talisman
			gap,
			{ itemID = 2068338, groupID = 1, refLootEntry = 2063190 }, --Eldre'Thalas Ritual Leggings
			{ itemID = 2066279, groupID = 1, refLootEntry = 2063190 }, --Highborne Aether Sash
			{ itemID = 2064392, groupID = 1, refLootEntry = 2063190 }, --Magister's Enchanted Robe
			{ itemID = 2070488, groupID = 1, refLootEntry = 2063190 }, --Shadowform Tainted Slippers
			{ itemID = 2071702, groupID = 1, refLootEntry = 2063190 }, --Shen'dralar Warding Bracers
			{ itemID = 2063190, groupID = 1, refLootEntry = 2063190 }, --Sorcerer's Arcane Tunic
		},
		{
			{ itemID = 22309 }, --Pattern: Big Bag of Enchantment
		},
	},
	{
		Name = BabbleBoss["Tsu'zee"],
		{
			{ itemID = 18387, groupID = 1, refLootEntry = 11467 }, --Brightspark Gloves
			{ itemID = 18345, groupID = 1, refLootEntry = 11467 }, --Murmuring Ring
			{ itemID = 18346, groupID = 1, refLootEntry = 11467 }, --Threadbare Trousers
			gap,
			{ itemID = 2075741, groupID = 1, refLootEntry = 2061468 }, --Blade of Lingering Woe
			{ itemID = 2068222, groupID = 1, refLootEntry = 2061468 }, --Echoing Fate Trousers
			{ itemID = 2064296, groupID = 1, refLootEntry = 2061468 }, --Eldre'Thalas Shroud
			{ itemID = 2070379, groupID = 1, refLootEntry = 2061468 }, --Haunting Step Slippers
			{ itemID = 2061468, groupID = 1, refLootEntry = 2061468 }, --Spectral Whisper Shoulderpads
			{ itemID = 2063092, groupID = 1, refLootEntry = 2061468 }, --Veil of the Phantasmal
			{ itemID = 2071657, groupID = 1, refLootEntry = 2061468 }, --Wristbands of the Eternal
		},
	},
	{
		Name = BabbleBoss["Immol'thar"],
		{
			{ itemID = 18384, groupID = 1, refLootEntry = 11496 }, --Bile-etched Spaulders
			{ itemID = 18372, groupID = 1, refLootEntry = 11496 }, --Blade of the New Moon
			{ itemID = 18389, groupID = 1, refLootEntry = 11496 }, --Cloak of the Cosmos
			{ itemID = 18394, groupID = 1, refLootEntry = 11496 }, --Demon Howl Wristguards
			{ itemID = 18381, groupID = 1, refLootEntry = 11496 }, --Evil Eye Pendant
			{ itemID = 18391, groupID = 1, refLootEntry = 11496 }, --Eyestalk Cord
			{ itemID = 18379, groupID = 1, refLootEntry = 11496 }, --Odious Greaves
			{ itemID = 18377, groupID = 1, refLootEntry = 11496 }, --Quickdraw Gloves
			{ itemID = 18385, groupID = 1, refLootEntry = 11496 }, --Robe of Everlasting Night
			{ itemID = 18370, groupID = 1, refLootEntry = 11496 }, --Vigilance Charm
		},
	},
	{
		Name = BabbleBoss["Lord Hel'nurath"],
		{
			{ itemID = 18757, groupID = 0, refLootEntry = 14506 }, --Diabolic Mantle
			{ itemID = 18756, groupID = 1, refLootEntry = 14506 }, --Dreadguard's Protector
			{ itemID = 18754, groupID = 1, refLootEntry = 14506 }, --Fel Hardened Bracers
			{ itemID = 18755, groupID = 1, refLootEntry = 14506 }, --Xorothian Firestick
		},
	},
	{
		Name = BabbleBoss["Prince Tortheldrin"],
		{
			{ itemID = 18375, groupID = 1, refLootEntry = 11486 }, --Bracers of the Eclipse
			{ itemID = 18373, groupID = 1, refLootEntry = 11486 }, --Chestplate of Tranquility
			{ itemID = 18392, groupID = 1, refLootEntry = 11486 }, --Distracting Dagger
			{ itemID = 18380, groupID = 1, refLootEntry = 11486 }, --Eldritch Reinforced Legplates
			{ itemID = 18395, groupID = 1, refLootEntry = 11486 }, --Emerald Flame Ring
			{ itemID = 18382, groupID = 1, refLootEntry = 11486 }, --Fluctuating Cloak
			{ itemID = 18396, groupID = 1, refLootEntry = 11486 }, --Mind Carver
			{ itemID = 18378, groupID = 1, refLootEntry = 11486 }, --Silvermoon Leggings
			{ itemID = 18388, groupID = 1, refLootEntry = 11486 }, --Stoneshatter
			{ itemID = 18376, groupID = 1, refLootEntry = 11486 }, --Timeworn Mace
			gap,
			{ itemID = 2075744, groupID = 1, refLootEntry = 2060435 }, --Axe of the Fallen Highborne
			{ itemID = 2064297, groupID = 1, refLootEntry = 2060435 }, --Breastplate of the Corrupted Prince
			{ itemID = 2060435, groupID = 1, refLootEntry = 2060435 }, --Crown of the Arcane Highborne
			{ itemID = 2072757, groupID = 1, refLootEntry = 2060435 }, --Gauntlets of the Ancient Tyrant
			{ itemID = 2066175, groupID = 1, refLootEntry = 2060435 }, --Girdle of Enchanted Power
			{ itemID = 2068223, groupID = 1, refLootEntry = 2060435 }, --Legplates of the Forsaken Lineage
			{ itemID = 2070380, groupID = 1, refLootEntry = 2060435 }, --Sabatons of Eternal Ambition
			{ itemID = 2061469, groupID = 1, refLootEntry = 2060435 }, --Shoulderguards of Demonic Pacts
			{ itemID = 2063093, groupID = 1, refLootEntry = 2060435 }, --Vestments of Eldre'Thalas
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE..AL["The Prince's Chest"] },
			{ itemID = 18336 }, --Gauntlet of Gordok Might
		},
	},
	{
		Name = AL["Shen'dralar Provisioner"],
		{
			{ itemID = 18487 }, --Pattern: Mooncloth Robe
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 18344 }, --Stonebark Gauntlets
			{ itemID = 18340 }, --Eidolon Talisman
			{ itemID = 18338 }, --Wand of Arcane Potency
		},
	},
}
------------------
--- Gnomeregan ---
------------------

AtlasLoot_Data["Gnomeregan"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Gnomeregan"],
	Type = "ClassicDungeon",
	Map = "Gnomeregan",
	{
		Name = AL["Namdo Bizzfizzle"],
		{
			{ itemID = 14639 }, --Schematic: Minor Recombobulator
		},
	},
	{
		Name = BabbleBoss["Techbot"],
		{
			{ itemID = 9444, groupID = 1, refLootEntry = 6231 }, --Techbot CPU Shell
			{ itemID = 3041, groupID = 1, refLootEntry = 1221203 }, --"Mage-Eye" Blunderbuss
			{ itemID = 15285, groupID = 1, refLootEntry = 1221203 }, --Archer's Longbow
			{ itemID = 3201, groupID = 1, refLootEntry = 1221203 }, --Barbarian War Axe
			{ itemID = 3042, groupID = 1, refLootEntry = 1221203 }, --BKP "Sparrow" Smallbore
			{ itemID = 2014, groupID = 1, refLootEntry = 1221203 }, --Black Metal Greatsword
			{ itemID = 2015, groupID = 1, refLootEntry = 1221203 }, --Black Metal War Axe
			{ itemID = 1998, groupID = 1, refLootEntry = 1221203 }, --Bloodscalp Channeling Staff
			{ itemID = 3210, groupID = 1, refLootEntry = 1221203 }, --Brutal War Axe
			{ itemID = 3206, groupID = 1, refLootEntry = 1221203 }, --Cavalier Two-hander
			{ itemID = 2819, groupID = 1, refLootEntry = 1221203 }, --Cross Dagger
			{ itemID = 2084, groupID = 1, refLootEntry = 1221203 }, --Darksteel Bastard Sword
			{ itemID = 753, groupID = 1, refLootEntry = 1221203 }, --Dragonmaw Shortsword
			{ itemID = 8184, groupID = 1, refLootEntry = 1221203 }, --Firestarter
			{ itemID = 3336, groupID = 1, refLootEntry = 1221203 }, --Flesh Piercer
			{ itemID = 15250, groupID = 1, refLootEntry = 1221203 }, --Glimmering Flamberge
			{ itemID = 9489, groupID = 1, refLootEntry = 1221203 }, --Gyromatic Icemaker
			{ itemID = 15232, groupID = 1, refLootEntry = 1221203 }, --Hacking Cleaver
			{ itemID = 15242, groupID = 1, refLootEntry = 1221203 }, --Honed Stiletto
			{ itemID = 865, groupID = 1, refLootEntry = 1221203 }, --Leaden Mace
			{ itemID = 15284, groupID = 1, refLootEntry = 1221203 }, --Long Battle Bow
			{ itemID = 2077, groupID = 1, refLootEntry = 1221203 }, --Magician Staff
			{ itemID = 4474, groupID = 1, refLootEntry = 1221203 }, --Ravenwood Bow
			{ itemID = 15225, groupID = 1, refLootEntry = 1221203 }, --Sequoia Hammer
			{ itemID = 3851, groupID = 1, refLootEntry = 1221203 }, --Solid Iron Maul
			{ itemID = 15231, groupID = 1, refLootEntry = 1221203 }, --Splitting Hatchet
			{ itemID = 756, groupID = 1, refLootEntry = 1221203 }, --Tunnel Pick
			{ itemID = 3186, groupID = 1, refLootEntry = 1221203 }, --Viking Sword
			{ itemID = 5214, groupID = 1, refLootEntry = 1221203 }, --Wand of Eventide
		},
		{
			{ itemID = 9277 }, --Techbot's Memory Core
		},
	},
	{
		Name = BabbleBoss["Grubbis"],
		{
			{ itemID = 9445, groupID = 1, refLootEntry = 7361 }, --Grubbis Paws
		},
	},
	{
		Name = BabbleBoss["Viscous Fallout"],
		{
			{ itemID = 9454, groupID = 1, refLootEntry = 7079 }, --Acidic Walkers
			{ itemID = 9452, groupID = 1, refLootEntry = 7079 }, --Hydrocane
			{ itemID = 9453, groupID = 1, refLootEntry = 7079 }, --Toxic Revenger
		},
	},
	{
		Name = BabbleBoss["Electrocutioner 6000"],
		{
			{ itemID = 9447, groupID = 1, refLootEntry = 6235 }, --Electrocutioner Lagnut
			{ itemID = 9446, groupID = 1, refLootEntry = 6235 }, --Electrocutioner Leg
			{ itemID = 9448, groupID = 1, refLootEntry = 6235 }, --Spidertank Oilrag
			{ itemID = 6893 }, --Workshop Key
		},
	},
	{
		Name = BabbleBoss["Crowd Pummeler 9-60"],
		{
			{ itemID = 406004, groupID = 1, refLootEntry = 6229 }, --Calibrated Puncher
			{ itemID = 9450, groupID = 1, refLootEntry = 6229 }, --Gnomebot Operating Boots
			{ itemID = 9449, groupID = 1, refLootEntry = 6229 }, --Manual Crowd Pummeler
		},
	},
	{
		Name = BabbleBoss["Dark Iron Ambassador"],
		{
			{ itemID = 9455, groupID = 1, refLootEntry = 6228 }, --Emissary Cuffs
			{ itemID = 9456, groupID = 1, refLootEntry = 6228 }, --Glass Shooter
			{ itemID = 9457, groupID = 1, refLootEntry = 6228 }, --Royal Diplomatic Scepter
			gap,
			{ itemID = 2065872, groupID = 1, refLootEntry = 2060261 }, --Belt of Cinderweave
			{ itemID = 2070034, groupID = 1, refLootEntry = 2060261 }, --Boots of the Luminous Depths
			{ itemID = 2060261, groupID = 1, refLootEntry = 2060261 }, --Cowl of Fiery Intrigue
			{ itemID = 2072484, groupID = 1, refLootEntry = 2060261 }, --Gloves of the Hidden Pyre
			{ itemID = 2061272, groupID = 1, refLootEntry = 2060261 }, --Mantle of the Emberborn
			{ itemID = 2062793, groupID = 1, refLootEntry = 2060261 }, --Robe of Dark Conspiracy
			{ itemID = 2075302, groupID = 1, refLootEntry = 2060261 }, --Staff of Radiant Subterfuge
			{ itemID = 2067870, groupID = 1, refLootEntry = 2060261 }, --Trousers of Shadowflame
		},
	},
	{
		Name = BabbleBoss["Mekgineer Thermaplugg"],
		{
			{ itemID = 9461, groupID = 1, refLootEntry = 7800 }, --Charged Gear
			{ itemID = 9492, groupID = 1, refLootEntry = 7800 }, --Electromagnetic Gigaflux Reactivator
			{ itemID = 9458, groupID = 1, refLootEntry = 7800 }, --Thermaplugg's Central Core
			{ itemID = 9459, groupID = 1, refLootEntry = 7800 }, --Thermaplugg's Left Arm
			{ itemID = 4415 }, --Schematic: Craftsman's Monocle
			{ itemID = 4413 }, --Schematic: Discombobulator Ray
			{ itemID = 4411 }, --Schematic: Flame Deflector
			{ itemID = 7742 }, --Schematic: Gnomish Cloaking Device
			{ itemID = 9299 }, --Thermaplugg's Safe Combination
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 9508 }, --Mechbuilder's Overalls
			{ itemID = 9491 }, --Hotshot Pilot's Gloves
			{ itemID = 9509 }, --Petrolspill Leggings
			{ itemID = 9510 }, --Caverndeep Trudgers
			{ itemID = 9490 }, --Gizmotron Megachopper
			{ itemID = 9485 }, --Vibroblade
			{ itemID = 9486 }, --Supercharger Battle Axe
			{ itemID = 9488 }, --Oscillating Power Hammer
			{ itemID = 9487 }, --Hi-tech Supergun
			{ itemID = 9327 }, --Security DELTA Data Access Card
			{ itemID = 9326 }, --Grime-Encrusted Ring
			{ itemID = 9362 }, --Brilliant Gold Ring
			{ itemID = 9538 }, --Talvash's Gold Ring
		},
	},
}

AtlasLoot_Data["KarazhanCrypts"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["The Karazhan Crypts"],
	Type = "ClassicDungeonExt",
	--Map = "Gnomeregan",
	{
		Name = AL["Cynfael"],
		WebID = {254401,"npc"},
		{
			{ itemID = 252821 }, -- Twinglaive of the Vampire Council
			{ itemID = 252906 }, -- Twinglaive of Eternal Slumber
			{ itemID = 254389 }, -- Purified Vitae Chalice
			{ itemID = 254432 }, -- Funeral Trousers
			{ itemID = 254758 }, -- Tombstone Cover
			{ itemID = 254888 }, -- Deathsworn Spaulders
		},
		{
			{ itemID = 254068 }, -- Sigil of Cynfael
		},
	},
	{
		Name = AL["Dryn Miel <The Second Eidolon>"],
		WebID = {254413,"npc"},
		{
			{ itemID = 253151 }, -- Sorrow of the Eclipse
			{ itemID = 253442 }, -- Cryptsteel Maul
			{ itemID = 253634 }, -- Dakrya, Hand of the Second Eidolon
			{ itemID = 253720 }, -- Mourner's Cloak
			{ itemID = 254260 }, -- Remembrance of Aegwynn
			{ itemID = 254303 }, -- Missing Promise
			{ itemID = 254672 }, -- Niko's Amulet
			{ itemID = 254845 }, -- Funeral Mantle
			{ itemID = 254984 }, -- Soulsteel Shoulderguards
			{ itemID = 255061 }, -- Blossom of Sorrow
		},
		{
			{ itemID = 254077, contentsPreview = {{1414603}, {1414604}, {1414605}, {1414606}} }, -- Forgotten Core
		gap,
			{ itemID = 254067 }, -- Sigil of Dryn Miel
		gap,
			{ itemID = 1179133 }, -- Reins of the Mawsworn Charger
		},

	},
	{
		Name = AL["Kurgoth Doomreaver"],
		WebID = {254406,"npc"},
		{
			{ itemID = 253677 }, -- Forgiveness
			{ itemID = 253763 }, -- Drape of the Horse
			{ itemID = 254629 }, -- Soulsteel Legplates
			{ itemID = 254715 }, -- Forgotten Aegis of Kings
			{ itemID = 255104 }, -- Concentrated DeathRecap_GetEvents
		},
		{
			{ itemID = 254069 }, -- Sigil of Kurgoth Doomreaver
		},
	},
	{
		Name = AL["The Judgement of Sinners"],
		WebID = {254405,"npc"},
		{
			{ itemID = 253004 }, -- Ghoul Spine Cleaver
			{ itemID = 253053 }, -- Conduit of Sinners
			{ itemID = 253102 }, -- Spinesplinter Arbalest
			{ itemID = 254532 }, -- Deathsworn Pants
			{ itemID = 254941 }, -- Bonelink Mantle
		},
		{
			{ itemID = 254070 }, -- Sigil of Sinners
		},
	},
	{
		Name = AL["Captain Taveir (Rare Spawn)"],
		WebID = {254495,"npc"},
		{
			{ itemID = 254088 }, --Funeral Treads
			{ itemID = 254131 }, --Deathsworn Boots
			{ itemID = 254174 }, --Bonelink Greaves
			{ itemID = 254217 }, --Soulsteel Sabatons
		},
		{
			{ itemID = 254080 }, --Sigil of Captain Taveir
		},
	},
	{
		Name = AL["Kelivex Autumnvale (Rare Spawn)"],
		WebID = {254493,"npc"},
		{
			{ itemID = 254088 }, --Funeral Treads
			{ itemID = 254131 }, --Deathsworn Boots
			{ itemID = 254174 }, --Bonelink Greaves
			{ itemID = 254217 }, --Soulsteel Sabatons
		},
		{
			{ itemID = 254078 }, --Sigil of Kelivex Autumnvale
		},
	},
}


----------------
--- Maraudon ---
----------------

AtlasLoot_Data["Maraudon"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Maraudon"],
	Type = "ClassicDungeon",
	Map = "Maraudon",
	{
		Name = BabbleBoss["Noxxion"],
		{
			{ itemID = 17746 }, --Noxxion's Shackles
			{ itemID = 17744 }, --Heart of Noxxion
			{ itemID = 17745 }, --Noxious Shooter
			{ itemID = 17702 }, --Celebrian Rod
		},
	},
	{
		Name = BabbleBoss["Razorlash"],
		{
			{ itemID = 17750 }, --Chloromesh Girdle
			{ itemID = 17748 }, --Vinerot Sandals
			{ itemID = 17749 }, --Phytoskin Spaulders
			{ itemID = 17751 }, --Brusslehide Leggings
		},
	},
	{
		Name = BabbleBoss["Lord Vyletongue"],
		{
			{ itemID = 2078661, groupID = 1, refLootEntry = 2075821 }, --Corrupting Wildfire Bow
			{ itemID = 2075821, groupID = 1, refLootEntry = 2075821 }, --Vyletongue's Shadowfang

			{ itemID = 17755 }, --Satyrmane Sash
			{ itemID = 17754 }, --Infernal Trickster Leggings
			{ itemID = 17752 }, --Satyr's Lash
			{ itemID = 17703 }, --Celebrian Diamond
		},
	},
	{
		Name = BabbleBoss["Meshlok the Harvester"],
		{
			{ itemID = 17741 }, --Nature's Embrace
			{ itemID = 17742 }, --Fungus Shroud Armor
			{ itemID = 17767 }, --Bloomsprout Headpiece
		},
	},
	{
		Name = BabbleBoss["Celebras the Cursed"],
		{
			{ itemID = 17739 }, --Grovekeeper's Drape
			{ itemID = 17740 }, --Soothsayer's Headdress
			{ itemID = 17738 }, --Claw of Celebras
			{ itemID = 2075820, groupID = 1, refLootEntry = 2075820 }, --Branch of the Cursed Grove

		},
	},
	{
		Name = BabbleBoss["Landslide"],
		{
			{ itemID = 17736 }, --Rockgrip Gauntlets
			{ itemID = 17734 }, --Helm of the Mountain
			{ itemID = 17737 }, --Cloud Stone
			{ itemID = 17943 }, --Fist of Stone
		},
	},
	{
		Name = BabbleBoss["Tinkerer Gizlock"],
		{
			{ itemID = 2078151, groupID = 1, refLootEntry = 2062870 }, --Barrier of Gears and Sparks
			{ itemID = 2075957, groupID = 1, refLootEntry = 2062870 }, --Blade of Ingenious Design
			{ itemID = 2078724, groupID = 1, refLootEntry = 2062870 }, --Engineer's Precision Rifle
			{ itemID = 2062870, groupID = 1, refLootEntry = 2062870 }, --Gizlock's Ingenious Chestplate
			{ itemID = 2072537, groupID = 1, refLootEntry = 2062870 }, --Innovator's Grips
			{ itemID = 2070104, groupID = 1, refLootEntry = 2062870 }, --Mechanized Footguards
			{ itemID = 2067948, groupID = 1, refLootEntry = 2062870 }, --Tinkering Legguards
			{ itemID = 2065940, groupID = 1, refLootEntry = 2062870 }, --Waistband of Goblin Craft
		},
	},
	{
		Name = BabbleBoss["Rotgrip"],
		{
			{ itemID = 17732 }, --Rotgrip Mantle
			{ itemID = 17728 }, --Albino Crocscale Boots
			{ itemID = 17730 }, --Gatorbite Axe
		},
	},
	{
		Name = BabbleBoss["Princess Theradras"],
		{
			{ itemID = 17713, groupID = 1, refLootEntry = 35009 }, --Blackstone Ring
			{ itemID = 17780, groupID = 1, refLootEntry = 35009 }, --Blade of Eternal Darkness
			{ itemID = 17714, groupID = 1, refLootEntry = 35009 }, --Bracers of the Stone Princess
			{ itemID = 17710, groupID = 1, refLootEntry = 35009 }, --Charstone Dirk
			{ itemID = 17711, groupID = 1, refLootEntry = 35009 }, --Elemental Rockridge Leggings
			{ itemID = 17715, groupID = 1, refLootEntry = 35009 }, --Eye of Theradras
			{ itemID = 17707, groupID = 1, refLootEntry = 35009 }, --Gemshard Heart
			{ itemID = 17766, groupID = 1, refLootEntry = 35009 }, --Princess Theradras' Scepter
		},
	},
	{
		Name = AL["Quest Item"],
		{
			{ itemID = 17764 }, --Gem of the Fourth Khan
			{ itemID = 17765 }, --Gem of the Fifth Khan
		},
	},
}
----------------------
--- Ragefire Chasm ---
----------------------
AtlasLoot_Data["RagefireChasm"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Ragefire Chasm"],
	Type = "ClassicDungeon",
	Map = "RagefireChasm",
	{
		Name = BabbleBoss["Taragaman the Hungerer"],
		{
			{ itemID = 14145, groupID = 1, refLootEntry = 11520 }, --Cursed Felblade
			{ itemID = 11321, groupID = 1, refLootEntry = 11520 }, --The Hungerer
			{ itemID = 2075751, groupID = 1, refLootEntry = 2075751 }, --Flamebreaker Greatsword
			{ itemID = 14540 }, --Taragaman the Hungerer's Heart
		},
	},
	{
		Name = AL["Zelemar the Wrathful"],
		{
			{ itemID = 14147, groupID = 1, refLootEntry = 17830 }, --Cavedweller Bracers
			{ itemID = 14148, groupID = 1, refLootEntry = 17830 }, --Crystalline Cuffs
			{ itemID = 24225 }, --Blood of the Wrathful
		},
	},
	{
		Name = BabbleBoss["Jergosh the Invoker"],
		{
			{ itemID = 2559, groupID = 1, refLootEntry = 11518 }, --Ebonstone Staff
			{ itemID = 14150, groupID = 1, refLootEntry = 11518 }, --Robe of Evocation
			{ itemID = 2070388, groupID = 1, refLootEntry = 2061477 }, --Boots of Shadowy Flame
			{ itemID = 2066182, groupID = 1, refLootEntry = 2061477 }, --Cincture of Searing Corruption
			{ itemID = 2072766, groupID = 1, refLootEntry = 2061477 }, --Gloves of Fel Mastery
			{ itemID = 2063101, groupID = 1, refLootEntry = 2061477 }, --Invoker's Fiery Mantle
			{ itemID = 2068231, groupID = 1, refLootEntry = 2061477 }, --Leggings of the Chasm's Embrace
			{ itemID = 2064304, groupID = 1, refLootEntry = 2061477 }, --Robe of Demonic Rituals
			{ itemID = 2061477, groupID = 1, refLootEntry = 2061477 }, --Shoulders of Infernal Invocation
			{ itemID = 2075749, groupID = 1, refLootEntry = 2061477 }, --Staff of the Infernal Conclave
		},
	},
	{
		Name = AL["Oggleflint"],
		{
			{ itemID = 68194, groupID = 1, refLootEntry = 11517 }, --Oggleflint's Inspirer
			{ itemID = 14149, groupID = 1, refLootEntry = 11517 }, --Subterranean Cape
			{ itemID = 2075748, groupID = 1, refLootEntry = 2075748 }, --Emberforge Mallet
		},
	},
}

----------------------
--- Razorfen Downs ---
----------------------

AtlasLoot_Data["RazorfenDowns"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Razorfen Downs"],
	Type = "ClassicDungeon",
	Map = "RazorfenDowns",
	{
		Name = BabbleBoss["Tuten'kash"],
		{
			{ icon = "INV_Box_01", name = color.WHITE..BabbleBoss["Tuten'kash"] },
			{ itemID = 10776 }, --Silky Spider Cape
			{ itemID = 10777 }, --Arachnid Gloves
			{ itemID = 10775 }, --Carapace of Tuten'kash
		},
	},
	{
		Name = AL["Henry Stern"],
		{
			{ itemID = 3831 }, --Recipe: Mighty Troll's Blood Potion
			{ itemID = 10841, spellID = 13028 }, --Goldthorn Tea
		},
	},
	{
		Name = BabbleBoss["Mordresh Fire Eye"],
		{
			{ itemID = 10771 }, --Deathmage Sash
			{ itemID = 10769 }, --Glowing Eye of Mordresh
			{ itemID = 10770 }, --Mordresh's Lifeless Skull
		},
	},
	{
		Name = BabbleBoss["Glutton"],
		{
			{ itemID = 10774 }, --Fleshhide Shoulders
			{ itemID = 10772 }, --Glutton's Cleaver
		},
	},
	{
		Name = BabbleBoss["Ragglesnout"],
		{
			{ itemID = 2075397, groupID = 1, refLootEntry = 2075397 }, --Blade of Ragglesnout's Gloom
			{ itemID = 10768 }, --Boar Champion's Belt
			{ itemID = 10758 }, --X'caliboar
			{ itemID = 10767 }, --Savage Boar's Guard
		},
	},
	{
		Name = AL["Lady Falther'ess"],
		{
			{ itemID = 2069624, groupID = 1, refLootEntry = 2063851 }, --Ghostly Harbinger's Slippers
			{ itemID = 2065473, groupID = 1, refLootEntry = 2063851 }, --Phantom Conqueror's Girdle
			{ itemID = 2063851, groupID = 1, refLootEntry = 2063851 }, --Spectral Emissary's Raiment
			{ itemID = 2067417, groupID = 1, refLootEntry = 2063851 }, --Wailing Envoy's Leggings
		},
	},
	{
		Name = BabbleBoss["Amnennar the Coldbringer"],
		{
			{ itemID = 10762 }, --Robes of the Lich
			{ itemID = 10765 }, --Bonefingers
			{ itemID = 10764 }, --Deathchill Armor
			{ itemID = 10763 }, --Icemetal Barbute
			{ itemID = 10761 }, --Coldrage Dagger
			{ itemID = 10420 }, --Skull of the Coldbringer
		},
	},
	{
		Name = BabbleBoss["Plaguemaw the Rotting"],
		{
			{ itemID = 10760 }, --Swine Fists
			{ itemID = 10766 }, --Plaguerot Sprig
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 10574 }, --Corpseshroud
			{ itemID = 10581 }, --Death's Head Vestment
			{ itemID = 10578 }, --Thoughtcast Boots
			{ itemID = 10583 }, --Quillward Harness
			{ itemID = 10582 }, --Briar Tredders
			{ itemID = 10584 }, --Stormgale Fists
			{ itemID = 10573 }, --Boneslasher
			{ itemID = 10570 }, --Manslayer
			{ itemID = 10571 }, --Ebony Boneclub
			{ itemID = 10567 }, --Quillshooter
			{ itemID = 10572 }, --Freezing Shard
		},
	},
}

----------------------
--- Razorfen Kraul ---
----------------------

AtlasLoot_Data["RazorfenKraul"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Razorfen Kraul"],
	Type = "ClassicDungeon",
	Map = "RazorfenKraul",
	{
		Name = AL["Roogug"],
		{
			{ itemID = 2039, groupID = 1, refLootEntry = 6168 }, --Plains Ring
			{ itemID = 2177, groupID = 1, refLootEntry = 6168 }, --Quartzstone Staff
			{ itemID = 2075273, groupID = 1, refLootEntry = 2075273 }, --Earthshaker's Staff
			{ itemID = 6841 }, --Vial of Phlogiston
		},
	},
	{
		Name = AL["Aggem Thorncurse"],
		{
			{ itemID = 2551, groupID = 1, refLootEntry = 4424 }, --Boar Bolter
			{ itemID = 6681, groupID = 1, refLootEntry = 4424 }, --Thornspike
			{ itemID = 2074993, groupID = 1, refLootEntry = 2074993 }, --Thorncurse Ritual Dagger
		},
	},
	{
		Name = BabbleBoss["Death Speaker Jargba"],
		{
			{ itemID = 6685, groupID = 1, refLootEntry = 4428 }, --Death Speaker Mantle
			{ itemID = 6682, groupID = 1, refLootEntry = 4428 }, --Death Speaker Robes
			{ itemID = 2816, groupID = 1, refLootEntry = 4428 }, --Death Speaker Scepter
			gap,
			{ itemID = 2074995, groupID = 1, refLootEntry = 2074995 }, --Shadowbind Relic

		},
	},
	{
		Name = AL["Razorfen Spearhide"],
		{
			{ itemID = 6679 }, --Armor Piercer
		},
	},
	{
		Name = BabbleBoss["Overlord Ramtusk"],
		{
			{ itemID = 6687, groupID = 1, refLootEntry = 4420 }, --Corpsemaker
			{ itemID = 6686, groupID = 1, refLootEntry = 4420 }, --Tusken Helm
			{ itemID = 2074991, groupID = 1, refLootEntry = 2074991 }, --Thorned Axe of Ramtusk
		},
	},
	{
		Name = BabbleBoss["Agathelos the Raging"],
		{
			{ itemID = 6690, groupID = 1, refLootEntry = 4422 }, --Ferine Leggings
			{ itemID = 6691, groupID = 1, refLootEntry = 4422 }, --Swinetusk Shank
		},
	},
	{
		Name = BabbleBoss["Blind Hunter"],
		{
			{ itemID = 6697, groupID = 1, refLootEntry = 4425 }, --Batwing Mantle
			{ itemID = 6696, groupID = 1, refLootEntry = 4425 }, --Nightstalker Bow
			{ itemID = 6695, groupID = 1, refLootEntry = 4425 }, --Stygian Bone Amulet
			{ itemID = 25874, groupID = 1, refLootEntry = 25874 }, --Bloodied Knife
		},
	},
	{
		Name = BabbleBoss["Charlga Razorflank"],
		{
			{ itemID = 6693, groupID = 1, refLootEntry = 4421 }, --Agamaggan's Clutch
			{ itemID = 6694, groupID = 1, refLootEntry = 4421 }, --Heart of Agamaggan
			{ itemID = 6692, groupID = 1, refLootEntry = 4421 }, --Pronged Reaver
			gap,
			{ itemID = 2074992, groupID = 1, refLootEntry = 2074992 }, --Staff of Thorned Purity
		},
		{
			{ itemID = 17008 }, --Small Scroll
			{ itemID = 5793 }, --Razorflank's Heart
			{ itemID = 5792 }, --Razorflank's Medallion
		},
	},
	{
		Name = BabbleBoss["Earthcaller Halmgar"],
		{
			{ itemID = 6688, groupID = 1, refLootEntry = 4842 }, --Whisperwind Headdress
			{ itemID = 6689, groupID = 1, refLootEntry = 4842 }, --Wind Spirit Staff
			gap,
			{ itemID = 2075098, groupID = 1, refLootEntry = 2075098 }, --Halmgar's Earthshatter Staff
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 2264 }, --Mantle of Thieves
			{ itemID = 1978 }, --Wolfclaw Gloves
			{ itemID = 1488 }, --Avenger's Armor
			{ itemID = 4438 }, --Pugilist Bracers
			{ itemID = 2039 }, --Plains Ring
			{ itemID = 776 }, --Vendetta
			{ itemID = 1727 }, --Sword of Decay
			{ itemID = 1975 }, --Pysan's Old Greatsword
			{ itemID = 1976 }, --Slaghammer
			{ itemID = 2549 }, --Staff of the Shade
		},
	},
}
-------------------------
--- Scarlet Monastery ---
-------------------------

AtlasLoot_Data["Scarlet Monastery"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Scarlet Monastery"],
	Type = "ClassicDungeon",
	Map = "ScarletMonastery",
	{
		Name = "Armory",
		{
			{ itemID = 7719 }, --Raging Berserker's Helm
			{ itemID = 7718 }, --Herod's Shoulder
			{ itemID = 10330 }, --Scarlet Leggings
			{ itemID = 7717 }, --Ravager
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Scarlet Trainee"] },
			{ itemID = 23192 }, --Tabard of the Scarlet Crusade
		},
	},
	{
		Name = BabbleZone["Cathedral"] .. " - " .. color.WHITE..BabbleBoss["High Inquisitor Fairbanks"],
		{
			{ itemID = 19507 }, --Inquisitor's Shawl
			{ itemID = 19508 }, --Branded Leather Bracers
			{ itemID = 19509 }, --Dusty Mail Boots
		},
		{
			{ itemID = 2071486, groupID = 1, refLootEntry = 2060073 }, --Bindings of Grim Vigilance
			{ itemID = 2060073, groupID = 1, refLootEntry = 2060073 }, --Cowl of Hidden Betrayal
			{ itemID = 2069600, groupID = 1, refLootEntry = 2060073 }, --Footwraps of Withered Light
			{ itemID = 2072099, groupID = 1, refLootEntry = 2060073 }, --Gloves of Damned Secrets
			{ itemID = 2067394, groupID = 1, refLootEntry = 2060073 }, --Leggings of Silent Truth
			{ itemID = 2075033, groupID = 1, refLootEntry = 2060073 }, --Mace of Fallen Faith
			{ itemID = 2063839, groupID = 1, refLootEntry = 2060073 }, --Robe of Faded Glory
			{ itemID = 2065453, groupID = 1, refLootEntry = 2060073 }, --Sash of Inquisitive Shadows
			{ itemID = 2073645, groupID = 1, refLootEntry = 2060073 }, --Tabard of the Veiled Crusade
		},
	},
	{
		Name = color.WHITE..BabbleBoss["Scarlet Commander Mograine"],
		{
			{ itemID = 7724 }, --Gauntlets of Divinity
			{ itemID = 10330 }, --Scarlet Leggings
			{ itemID = 7723 }, --Mograine's Might
			{ itemID = 7726 }, --Aegis of the Scarlet Commander
		},
		{
			{ itemID = 2074916, groupID = 1, refLootEntry = 2060012 }, --Crusader's Redemption Maul
			{ itemID = 2062273, groupID = 1, refLootEntry = 2060012 }, --Curass of Mograine's Legacy
			{ itemID = 2072050, groupID = 1, refLootEntry = 2060012 }, --Gauntlets of Righteous Command
			{ itemID = 2065384, groupID = 1, refLootEntry = 2060012 }, --Girdle of Fanatical Fury
			{ itemID = 2069520, groupID = 1, refLootEntry = 2060012 }, --Greaves of the Purging Flame
			{ itemID = 2060012, groupID = 1, refLootEntry = 2060012 }, --Helm of Unyielding Zeal
			{ itemID = 2067303, groupID = 1, refLootEntry = 2060012 }, --Legplates of the Zealous Assault
			{ itemID = 2061093, groupID = 1, refLootEntry = 2060012 }, --Pauldrons of the Scarlet Crusade
			{ itemID = 2073618, groupID = 1, refLootEntry = 2060012 }, --Tabard of the Scarlet Son
		},
	},
	{
		Name = color.WHITE..BabbleBoss["High Inquisitor Whitemane"],
		{
			{ itemID = 7720 }, --Whitemane's Chapeau
			{ itemID = 7722 }, --Triune Amulet
			{ itemID = 7721 }, --Hand of Righteousness
			{ itemID = 20976 }, --Design: Citrine Pendant of Golden Healing
		},
	},
	{
		Name = BabbleZone["Graveyard"] .. " - " .. color.WHITE..BabbleBoss["Interrogator Vishas"],
		{
			{ itemID = 7683 }, --Bloody Brass Knuckles
			{ itemID = 7682 }, --Torturing Poker
			{ itemID = 25874, groupID = 1, refLootEntry = 25874 }, --Bloodied Knife
		},
		{
			{ itemID = 2069521, groupID = 1, refLootEntry = 2060013 }, --Boots of Fanatic Stride
			{ itemID = 2062274, groupID = 1, refLootEntry = 2060013 }, --Chestguard of Painful Truths
			{ itemID = 2072051, groupID = 1, refLootEntry = 2060013 }, --Grips of Cruel Extraction
			{ itemID = 2067304, groupID = 1, refLootEntry = 2060013 }, --Leggings of the Scarlet Judge
			{ itemID = 2065385, groupID = 1, refLootEntry = 2060013 }, --Sash of Inquisitorial Zeal
			{ itemID = 2073619, groupID = 1, refLootEntry = 2060013 }, --Tabard of Purging Flames
			{ itemID = 2060013, groupID = 1, refLootEntry = 2060013 }, --Vishas's Interrogator Helm
			{ itemID = 2074918, groupID = 1, refLootEntry = 2060013 }, --Vishas's Torturer Dagger
		},
	},
		{
		Name = color.WHITE..BabbleBoss["Bloodmage Thalnos"],
		{
			{ itemID = 7684 }, --Bloodmage Mantle
			{ itemID = 7685 }, --Orb of the Forgotten Seer
		},
	},
	{
		Name = color.WHITE..BabbleBoss["Ironspine"],
		{
			{ itemID = 7688 }, --Ironspine's Ribcage
			{ itemID = 7686 }, --Ironspine's Eye
			{ itemID = 7687 }, --Ironspine's Fist
		},
		{
			{ itemID = 2075311, groupID = 1, refLootEntry = 2075311 }, --Ironspine Maledict
		},
	},
		{
		Name = color.WHITE..BabbleBoss["Azshir the Sleepless"],
		{
			{ itemID = 7709 }, --Blighted Leggings
			{ itemID = 7731 }, --Ghostshard Talisman
			{ itemID = 7708 }, --Necrotic Wand
		},
		{
			{ itemID = 2069646, groupID = 1, refLootEntry = 2060088 }, --Boots of Insomnia
			{ itemID = 2065494, groupID = 1, refLootEntry = 2060088 }, --Cincture of Restless Spirits
			{ itemID = 2075312, groupID = 1, refLootEntry = 2060088 }, --Dagger of Haunted Zeal
			{ itemID = 2072130, groupID = 1, refLootEntry = 2060088 }, --Grasp of the Unquiet Dead
			{ itemID = 2062390, groupID = 1, refLootEntry = 2060088 }, --Haunted Crusade Robe
			{ itemID = 2067439, groupID = 1, refLootEntry = 2060088 }, --Legwraps of the Eternal Watch
			{ itemID = 2060088, groupID = 1, refLootEntry = 2060088 }, --Sleepless Vigil Eyepatch
		},
	},
		{
		Name = color.WHITE..BabbleBoss["Fallen Champion"],
		{
			{ itemID = 7691 }, --Embalmed Shroud
			{ itemID = 7690 }, --Ebon Vise
			{ itemID = 7689 }, --Morbid Dawn
		},
		{
			{ itemID = 2064020, groupID = 1, refLootEntry = 2060214 }, --Breastplate of the Faded Light
			{ itemID = 2061228, groupID = 1, refLootEntry = 2060214 }, --Epaulets of Fanatical Guard
			{ itemID = 2072408, groupID = 1, refLootEntry = 2060214 }, --Gauntlets of Twisted Faith
			{ itemID = 2065784, groupID = 1, refLootEntry = 2060214 }, --Girdle of the Lost Sentinel
			{ itemID = 2067775, groupID = 1, refLootEntry = 2060214 }, --Greaves of Abandoned Oaths
			{ itemID = 2060214, groupID = 1, refLootEntry = 2060214 }, --Helm of Zealous Perdition
			{ itemID = 2075310, groupID = 1, refLootEntry = 2060214 }, --Maul of the Doomed Crusader
			{ itemID = 2069965, groupID = 1, refLootEntry = 2060214 }, --Sabatons of Doomed Valor
			{ itemID = 2073678, groupID = 1, refLootEntry = 2060214 }, --Tabard of Scarlet Betrayal
			{ itemID = 2062701, groupID = 1, refLootEntry = 2060214 }, --Tabard of the Fallen Crusaders
		},
	},
	{
		Name = BabbleZone["Library"] .. " - " .. color.WHITE..BabbleBoss["Houndmaster Loksey"],
		{
			{ itemID = 7756 }, --Dog Training Gloves
			{ itemID = 7710 }, --Loksey's Training Stick
			{ itemID = 3456 }, --Dog Whistle
		},
		{
			{ itemID = 2074914, groupID = 1, refLootEntry = 2062271 }, --Bloodhound's Cleaver
			{ itemID = 2069518, groupID = 1, refLootEntry = 2062271 }, --Boots of the Beastmaster
			{ itemID = 2065382, groupID = 1, refLootEntry = 2062271 }, --Houndmaster's Leather Belt
			{ itemID = 2072048, groupID = 1, refLootEntry = 2062271 }, --Loksey's Padded Grips
			{ itemID = 2062271, groupID = 1, refLootEntry = 2062271 }, --Loksey's Zealous Vest
			{ itemID = 2067301, groupID = 1, refLootEntry = 2062271 }, --Scarlet Hound Leggings
			{ itemID = 2073617, groupID = 1, refLootEntry = 2062271 }, --Tabard of the Scarlet Handler

		},
	},
	{
		Name = color.WHITE..BabbleBoss["Arcanist Doan"],
		{
			{ itemID = 34227 }, --Deadman's Hand
			{ itemID = 7712 }, --Mantle of Doan
			{ itemID = 7711 }, --Robe of Doan
			{ itemID = 7714 }, --Hypnotic Blade
			{ itemID = 7713 }, --Illusionary Rod
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Doan's Strongbox"] },
			{ itemID = 7146 }, --The Scarlet Key
		},
		{
			{ itemID = 2065781, groupID = 1, refLootEntry = 2061226 }, --Cincture of Binding
			{ itemID = 2069962, groupID = 1, refLootEntry = 2061226 }, --Footwraps of Detonation
			{ itemID = 2061226, groupID = 1, refLootEntry = 2061226 }, --Mantle of Zealotry
			{ itemID = 2067772, groupID = 1, refLootEntry = 2061226 }, --Purifier's Chausses
			{ itemID = 2064018, groupID = 1, refLootEntry = 2061226 }, --Robes of Arcane Vigilance
			{ itemID = 2075309, groupID = 1, refLootEntry = 2061226 }, --Spellbinder's Staff
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 7728 }, --Beguiler Robes
			{ itemID = 7755 }, --Flintrock Shoulders
			{ itemID = 7727 }, --Watchman Pauldrons
			{ itemID = 7760 }, --Warchief Kilt
			{ itemID = 7754 }, --Harbinger Boots
			{ itemID = 5819 }, --Sunblaze Coif
			{ itemID = 7759 }, --Archon Chestpiece
			{ itemID = 10328 }, --Scarlet Chestpiece
			{ itemID = 10332 }, --Scarlet Boots
			{ itemID = 2262 }, --Mark of Kern
			{ itemID = 1992 }, --Swampchill Fetish
			{ itemID = 10333 }, --Scarlet Wristguards
			{ itemID = 10331 }, --Scarlet Gauntlets
			{ itemID = 10329 }, --Scarlet Belt
		},
		{
			{ itemID = 5756 }, --Sliverblade
			{ itemID = 8225 }, --Tainted Pierce
			{ itemID = 8226 }, --The Butcher
			{ itemID = 7786 }, --Headsplitter
			{ itemID = 7761 }, --Steelclaw Reaver
			{ itemID = 7753 }, --Bloodspiller
			{ itemID = 7752 }, --Dreamslayer
			{ itemID = 7736 }, --Fight Club
			{ itemID = 7730 }, --Cobalt Crusher
			{ itemID = 7758 }, --Ruthless Shiv
			{ itemID = 7757 }, --Windweaver Staff
			{ itemID = 7787 }, --Resplendent Guardian
			{ itemID = 7729 }, --Chesterfall Musket
		},
	},
}
-------------------
--- Scholomance ---
-------------------

AtlasLoot_Data["Scholomance"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Scholomance"],
	Type = "ClassicDungeonExt",
	Loadfirst = 3,
	Map = "Scholomance",
	{
		Name = AL["Quest Item"],
		{
			{ itemID = 13873 }, --Viewing Room Key
		gap,
			{ itemID = 13471 }, --The Deed to Brill
			{ itemID = 13448 }, --The Deed to Caer Darrow
			{ itemID = 13450 }, --The Deed to Southshore
			{ itemID = 13451 }, --The Deed to Tarren Mill
		},
	},
	{
		Name = BabbleBoss["Blood Steward of Kirtonos"],
		{
			{ itemID = 13523 }, --Blood of Innocents
		},
		{
			{ itemID = 18702, groupID = 1, refLootEntry = 12501 }, --Belt of the Ordained
			{ itemID = 14536, groupID = 1, refLootEntry = 12501 }, --Bonebrace Hauberk
			{ itemID = 18697, groupID = 1, refLootEntry = 12501 }, --Coldstone Slippers
			{ itemID = 16705, groupID = 1, refLootEntry = 12501 }, --Dreadmist Wraps
			{ itemID = 18699, groupID = 1, refLootEntry = 12501 }, --Icy Tomb Spaulders
			{ itemID = 18701, groupID = 1, refLootEntry = 12501 }, --Innervating Band
			{ itemID = 16722, groupID = 1, refLootEntry = 12501 }, --Lightforge Bracers
			{ itemID = 16685, groupID = 1, refLootEntry = 12501 }, --Magister's Belt
			{ itemID = 16684, groupID = 1, refLootEntry = 12501 }, --Magister's Gloves
			{ itemID = 18700, groupID = 1, refLootEntry = 12501 }, --Malefic Bracers
			{ itemID = 16710, groupID = 1, refLootEntry = 12501 }, --Shadowcraft Bracers
			{ itemID = 18698, groupID = 1, refLootEntry = 12501 }, --Tattered Leather Hood
			{ itemID = 16716, groupID = 1, refLootEntry = 12501 }, --Wildheart Belt
		},
	},
	{
		Name = BabbleBoss["Kirtonos the Herald"],
		{
			{ itemID = 13956 }, --Clutch of Andros
			{ itemID = 13957 }, --Gargoyle Slashers
			{ itemID = 13969 }, --Loomguard Armbraces
			{ itemID = 13967 }, --Windreaver Greaves
			{ itemID = 13955 }, --Stoneform Shoulders
			{ itemID = 13960 }, --Heart of the Fiend
			{ itemID = 14024 }, --Frightalon
			{ itemID = 13983 }, --Gravestone War Axe
		},
		{
			{ itemID = 16734 }, --Boots of Valor
		},
	},
	{
		Name = BabbleBoss["Jandice Barov"],
		{
			{ itemID = 14541, groupID = 1, refLootEntry = 10503 }, --Barovian Family Sword
			{ itemID = 16701, groupID = 1, refLootEntry = 10503 }, --Dreadmist Mantle
			{ itemID = 14545, groupID = 1, refLootEntry = 10503 }, --Ghostloom Leggings
			{ itemID = 18689, groupID = 1, refLootEntry = 10503 }, --Phantasmal Cloak
			{ itemID = 14548, groupID = 1, refLootEntry = 10503 }, --Royal Cap Spaulders
			{ itemID = 22394, groupID = 1, refLootEntry = 10503 }, --Staff of Metanoia
			{ itemID = 18690, groupID = 1, refLootEntry = 10503 }, --Wraithplate Leggings
			gap,
			{ itemID = 2072739, groupID = 1, refLootEntry = 2060425 }, --Gloves of Misty Illusions
			{ itemID = 2068200, groupID = 1, refLootEntry = 2060425 }, --Leggings of Deceptive Allure
			{ itemID = 2061448, groupID = 1, refLootEntry = 2060425 }, --Mantle of Phantasmal Echoes
			{ itemID = 2064276, groupID = 1, refLootEntry = 2060425 }, --Robe of the Veiled Enchanter
			{ itemID = 2066158, groupID = 1, refLootEntry = 2060425 }, --Sash of Ghostly Visions
			{ itemID = 2070359, groupID = 1, refLootEntry = 2060425 }, --Slippers of the Haunted Path
			{ itemID = 2075658, groupID = 1, refLootEntry = 2060425 }, --Stave of Ethereal Masquerade
			{ itemID = 2060425, groupID = 1, refLootEntry = 2060425 }, --Veil of Illusive Wisdom
		},
		{
			{ itemID = 13725 }, --Krastinov's Bag of Horrors
			{ itemID = 13523 }, --Blood of Innocents
		},
	},
	{
		Name = BabbleBoss["Rattlegore"],
		{
			{ itemID = 18686, groupID = 1, refLootEntry = 11622 }, --Bone Golem Shoulders
			{ itemID = 14539, groupID = 1, refLootEntry = 11622 }, --Bone Ring Helm
			{ itemID = 14537, groupID = 1, refLootEntry = 11622 }, --Corpselight Greaves
			{ itemID = 14538, groupID = 1, refLootEntry = 11622 }, --Deadwalker Mantle
			{ itemID = 14531, groupID = 1, refLootEntry = 11622 }, --Frightskull Shaft
			{ itemID = 14528, groupID = 1, refLootEntry = 11622 }, --Rattlecage Buckler
			{ itemID = 16711, groupID = 1, refLootEntry = 11622 }, --Shadowcraft Boots
		gap,
			{ itemID = 13873 }, --Viewing Room Key
		},
		{
			{ itemID = 18782 }, --Top Half of Advanced Armorsmithing: Volume II
			{ itemID = 12726 }, --Plans: Enchanted Thorium Leggings
		},
	},
	{
		Name = BabbleBoss["Death Knight Darkreaver"],
		{
			{ itemID = 18760 }, --Necromantic Band
			{ itemID = 18758 }, --Specter's Blade
			{ itemID = 18759 }, --Malicious Axe
			{ itemID = 18761 }, --Oblivion's Touch
		gap,
			{ itemID = 18749 }, --Charger's Lost Soul
		},
	},
	{
		Name = BabbleBoss["Vectus"],
		{
			{ itemID = 18691, groupID = 1, refLootEntry = 10432 }, --Dark Advisor's Pendant
			{ itemID = 14577, groupID = 1, refLootEntry = 10432 }, --Skullsmoke Pants
		},
	},
	{
		Name = BabbleBoss["Marduk Blackpool"],
		{
			{ itemID = 18692 }, --Death Knight Sabatons
			{ itemID = 14576 }, --Ebon Hilt of Marduk
			gap,
			{ itemID = 2075643, groupID = 1, refLootEntry = 2060354 }, --Blade of the Cursed Knight
			{ itemID = 2064204, groupID = 1, refLootEntry = 2060354 }, --Chestplate of the Scourgelord
			{ itemID = 2072658, groupID = 1, refLootEntry = 2060354 }, --Gauntlets of Forsaken Might
			{ itemID = 2066068, groupID = 1, refLootEntry = 2060354 }, --Girdle of Dark Command
			{ itemID = 2068099, groupID = 1, refLootEntry = 2060354 }, --Greaves of Plagueland Terror
			{ itemID = 2060354, groupID = 1, refLootEntry = 2060354 }, --Helm of the Blackpool Guardian
			{ itemID = 2070260, groupID = 1, refLootEntry = 2060354 }, --Sabatons of Necrotic March
			{ itemID = 2061381, groupID = 1, refLootEntry = 2060354 }, --Shoulderguards of Scholomance Sentinel
			{ itemID = 2062995, groupID = 1, refLootEntry = 2060354 }, --Vestment of Undeath
		},
	},
	{
		Name = BabbleBoss["Ras Frostwhisper"],
		{
			{ itemID = 13314, groupID = 1, refLootEntry = 10508 }, --Alanna's Embrace
			{ itemID = 14487, groupID = 1, refLootEntry = 10508 }, --Bonechill Hammer
			{ itemID = 14525, groupID = 1, refLootEntry = 10508 }, --Boneclenched Gauntlets
			{ itemID = 14503, groupID = 1, refLootEntry = 10508 }, --Death's Clutch
			{ itemID = 14340, groupID = 1, refLootEntry = 10508 }, --Freezing Lich Robes
			{ itemID = 14502, groupID = 1, refLootEntry = 10508 }, --Frostbite Girdle
			{ itemID = 13952, groupID = 1, refLootEntry = 10508 }, --Iceblade Hacker
			{ itemID = 18696, groupID = 1, refLootEntry = 10508 }, --Intricately Runed Shield
			{ itemID = 14522, groupID = 1, refLootEntry = 10508 }, --Maelstrom Leggings
			{ itemID = 16689, groupID = 1, refLootEntry = 10508 }, --Magister's Mantle
			{ itemID = 18694, groupID = 1, refLootEntry = 10508 }, --Shadowy Mail Greaves
			{ itemID = 18693, groupID = 1, refLootEntry = 10508 }, --Shivery Handwraps
			{ itemID = 18695, groupID = 1, refLootEntry = 10508 }, --Spellbound Tomes
		},
		{
			{ itemID = 13521 }, --Recipe: Flask of Supreme Power
		gap,
			{ itemID = 13626 }, --Human Head of Ras Frostwhisper
			{ itemID = 13986 }, --Crown of Caer Darrow
			{ itemID = 13984 }, --Darrowspike
			{ itemID = 13982 }, --Warblade of Caer Darrow
			{ itemID = 14002 }, --Darrowshire Strongguard
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Frostwhisper's Embalming Fluid"] },
			{ itemID = 12736 }, --Frostwhisper's Embalming Fluid
		},
	},
	{
		Name = BabbleBoss["Kormok"],
		{
			{ icon = "INV_Misc_Bag_09", name = color.WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..BabbleBoss["Kormok"] },
			{ itemID = 22303 }, --Ironweave Pants
			{ itemID = 22326 }, --Amalgam's Band
			{ itemID = 22331 }, --Band of the Steadfast Hero
			{ itemID = 22332 }, --Blade of Necromancy
			{ itemID = 22333 }, --Hammer of Divine Might
		gap,
			{ itemID = 21984 }, --Left Piece of Lord Valthalak's Amulet
			{ itemID = 22046 }, --Right Piece of Lord Valthalak's Amulet
		},
	},
	{
		Name = BabbleBoss["Instructor Malicia"],
		{
			{ itemID = 18680, groupID = 1, refLootEntry = 10505 }, --Ancient Bone Bow
			{ itemID = 14614, groupID = 1, refLootEntry = 10505 }, --Bloodmail Belt
			{ itemID = 14616, groupID = 1, refLootEntry = 10505 }, --Bloodmail Boots
			{ itemID = 14615, groupID = 1, refLootEntry = 10505 }, --Bloodmail Gauntlets
			{ itemID = 14611, groupID = 1, refLootEntry = 10505 }, --Bloodmail Hauberk
			{ itemID = 14612, groupID = 1, refLootEntry = 10505 }, --Bloodmail Legguards
			{ itemID = 18681, groupID = 1, refLootEntry = 10505 }, --Burial Shawl
			{ itemID = 18684, groupID = 1, refLootEntry = 10505 }, --Dimly Opalescent Ring
			{ itemID = 18682, groupID = 1, refLootEntry = 10505 }, --Ghoul Skin Leggings
			{ itemID = 23201, groupID = 1, refLootEntry = 10505 }, --Libram of Divinity
			{ itemID = 14637, groupID = 1, refLootEntry = 10505 }, --Cadaverous Armor
			{ itemID = 14636, groupID = 1, refLootEntry = 10505 }, --Cadaverous Belt
			{ itemID = 14640, groupID = 1, refLootEntry = 10505 }, --Cadaverous Gloves
			{ itemID = 14638, groupID = 1, refLootEntry = 10505 }, --Cadaverous Leggings
			{ itemID = 14641, groupID = 1, refLootEntry = 10505 }, --Cadaverous Walkers
			gap,
			{ itemID = 2060724, groupID = 1, refLootEntry = 2060724 }, --Cowl of Dark Instruction
			{ itemID = 2073133, groupID = 1, refLootEntry = 2060724 }, --Gloves of Forbidden Teaching
			{ itemID = 2068810, groupID = 1, refLootEntry = 2060724 }, --Leggings of the Gravebinder
			{ itemID = 2061843, groupID = 1, refLootEntry = 2060724 }, --Mantle of Malicious Knowledge
			{ itemID = 2063359, groupID = 1, refLootEntry = 2060724 }, --Necromantic Attire
			{ itemID = 2064834, groupID = 1, refLootEntry = 2060724 }, --Robes of the Deathbinder
			{ itemID = 2070879, groupID = 1, refLootEntry = 2060724 }, --Sandals of the Dark Arts
			{ itemID = 2066684, groupID = 1, refLootEntry = 2060724 }, --Sash of Shadowed Lore
			{ itemID = 2073955, groupID = 1, refLootEntry = 2060724 }, --Shroud of the Underworld Scholar
			{ itemID = 2075660, groupID = 1, refLootEntry = 2060724 }, --Staff of Grave Calls
		},
		{
			{ itemID = 14624, groupID = 1, refLootEntry = 10505 }, --Deathbone Chestplate
			{ itemID = 14622, groupID = 1, refLootEntry = 10505 }, --Deathbone Gauntlets
			{ itemID = 14620, groupID = 1, refLootEntry = 10505 }, --Deathbone Girdle
			{ itemID = 14623, groupID = 1, refLootEntry = 10505 }, --Deathbone Legguards
			{ itemID = 14621, groupID = 1, refLootEntry = 10505 }, --Deathbone Sabatons
			{ itemID = 18683, groupID = 1, refLootEntry = 10505 }, --Hammer of the Vesper
			{ itemID = 14631, groupID = 1, refLootEntry = 10505 }, --Necropile Boots
			{ itemID = 14629, groupID = 1, refLootEntry = 10505 }, --Necropile Cuffs
			{ itemID = 14632, groupID = 1, refLootEntry = 10505 }, --Necropile Leggings
			{ itemID = 14633, groupID = 1, refLootEntry = 10505 }, --Necropile Mantle
			{ itemID = 14626, groupID = 1, refLootEntry = 10505 }, --Necropile Robe
			{ itemID = 16710, groupID = 1, refLootEntry = 10505 }, --Shadowcraft Bracers
			{ itemID = 23200, groupID = 1, refLootEntry = 10505 }, --Totem of Sustaining
			gap,
			{ itemID = 13523 }, --Blood of Innocents
		},
	},
	{
		Name = BabbleBoss["Doctor Theolen Krastinov"],
		{
			{ itemID = 18680, groupID = 1, refLootEntry = 11261 }, --Ancient Bone Bow
			{ itemID = 14614, groupID = 1, refLootEntry = 11261 }, --Bloodmail Belt
			{ itemID = 14616, groupID = 1, refLootEntry = 11261 }, --Bloodmail Boots
			{ itemID = 14615, groupID = 1, refLootEntry = 11261 }, --Bloodmail Gauntlets
			{ itemID = 14611, groupID = 1, refLootEntry = 11261 }, --Bloodmail Hauberk
			{ itemID = 14612, groupID = 1, refLootEntry = 11261 }, --Bloodmail Legguards
			{ itemID = 18681, groupID = 1, refLootEntry = 11261 }, --Burial Shawl
			{ itemID = 18684, groupID = 1, refLootEntry = 11261 }, --Dimly Opalescent Ring
			{ itemID = 18682, groupID = 1, refLootEntry = 11261 }, --Ghoul Skin Leggings
			{ itemID = 23201, groupID = 1, refLootEntry = 11261 }, --Libram of Divinity
			{ itemID = 14637, groupID = 1, refLootEntry = 11261 }, --Cadaverous Armor
			{ itemID = 14636, groupID = 1, refLootEntry = 11261 }, --Cadaverous Belt
			{ itemID = 14640, groupID = 1, refLootEntry = 11261 }, --Cadaverous Gloves
			{ itemID = 14638, groupID = 1, refLootEntry = 11261 }, --Cadaverous Leggings
			{ itemID = 14641, groupID = 1, refLootEntry = 11261 }, --Cadaverous Walkers
			gap,
			{ itemID = 2075714, groupID = 1, refLootEntry = 2060424 }, --Axe of the Morbidly Curious
			{ itemID = 2071649, groupID = 1, refLootEntry = 2060424 }, --Bindings of Perverse Knowledge
			{ itemID = 2070356, groupID = 1, refLootEntry = 2060424 }, --Footwraps of Cold Calculation
			{ itemID = 2072736, groupID = 1, refLootEntry = 2060424 }, --Gloves of Sinister Arts
			{ itemID = 2060424, groupID = 1, refLootEntry = 2060424 }, --Headpiece of the Butcher
			{ itemID = 2068197, groupID = 1, refLootEntry = 2060424 }, --Leggings of Unholy Precision
			{ itemID = 2063070, groupID = 1, refLootEntry = 2060424 }, --Shirt of Macabre Science
			{ itemID = 2061446, groupID = 1, refLootEntry = 2060424 }, --Shoulderguards of Grisly Intent
			{ itemID = 2066155, groupID = 1, refLootEntry = 2060424 }, --Strap of Dark Experimentation
			{ itemID = 2073740, groupID = 1, refLootEntry = 2060424 }, --Tabard of the Cult
			{ itemID = 2064274, groupID = 1, refLootEntry = 2060424 }, --Vestments of Necrotic Insight

		},
		{
			{ itemID = 14624, groupID = 1, refLootEntry = 11261 }, --Deathbone Chestplate
			{ itemID = 14622, groupID = 1, refLootEntry = 11261 }, --Deathbone Gauntlets
			{ itemID = 14620, groupID = 1, refLootEntry = 11261 }, --Deathbone Girdle
			{ itemID = 14623, groupID = 1, refLootEntry = 11261 }, --Deathbone Legguards
			{ itemID = 14621, groupID = 1, refLootEntry = 11261 }, --Deathbone Sabatons
			{ itemID = 18683, groupID = 1, refLootEntry = 11261 }, --Hammer of the Vesper
			{ itemID = 14631, groupID = 1, refLootEntry = 11261 }, --Necropile Boots
			{ itemID = 14629, groupID = 1, refLootEntry = 11261 }, --Necropile Cuffs
			{ itemID = 14632, groupID = 1, refLootEntry = 11261 }, --Necropile Leggings
			{ itemID = 14633, groupID = 1, refLootEntry = 11261 }, --Necropile Mantle
			{ itemID = 14626, groupID = 1, refLootEntry = 11261 }, --Necropile Robe
			{ itemID = 16710, groupID = 1, refLootEntry = 11261 }, --Shadowcraft Bracers
			{ itemID = 23200, groupID = 1, refLootEntry = 11261 }, --Totem of Sustaining
			gap,
			{ itemID = 13523 }, --Blood of Innocents
		},
	},
	{
		Name = BabbleBoss["Lorekeeper Polkelt"],
		{
			{ itemID = 18680, groupID = 1, refLootEntry = 10901 }, --Ancient Bone Bow
			{ itemID = 14614, groupID = 1, refLootEntry = 10901 }, --Bloodmail Belt
			{ itemID = 14616, groupID = 1, refLootEntry = 10901 }, --Bloodmail Boots
			{ itemID = 14615, groupID = 1, refLootEntry = 10901 }, --Bloodmail Gauntlets
			{ itemID = 14611, groupID = 1, refLootEntry = 10901 }, --Bloodmail Hauberk
			{ itemID = 14612, groupID = 1, refLootEntry = 10901 }, --Bloodmail Legguards
			{ itemID = 18681, groupID = 1, refLootEntry = 10901 }, --Burial Shawl
			{ itemID = 14637, groupID = 1, refLootEntry = 10901 }, --Cadaverous Armor
			{ itemID = 14636, groupID = 1, refLootEntry = 10901 }, --Cadaverous Belt
			{ itemID = 14640, groupID = 1, refLootEntry = 10901 }, --Cadaverous Gloves
			{ itemID = 14638, groupID = 1, refLootEntry = 10901 }, --Cadaverous Leggings
			{ itemID = 14641, groupID = 1, refLootEntry = 10901 }, --Cadaverous Walkers
			{ itemID = 18684, groupID = 1, refLootEntry = 10901 }, --Dimly Opalescent Ring
			{ itemID = 16705, groupID = 1, refLootEntry = 10901 }, --Dreadmist Wraps
			{ itemID = 18682, groupID = 1, refLootEntry = 10901 }, --Ghoul Skin Leggings
			gap,
			{ itemID = 2075695, groupID = 1, refLootEntry = 2075695 }, --Polkelt's Plague Mace
		},
		{
			{ itemID = 14624, groupID = 1, refLootEntry = 10901 }, --Deathbone Chestplate
			{ itemID = 14622, groupID = 1, refLootEntry = 10901 }, --Deathbone Gauntlets
			{ itemID = 14620, groupID = 1, refLootEntry = 10901 }, --Deathbone Girdle
			{ itemID = 14623, groupID = 1, refLootEntry = 10901 }, --Deathbone Legguards
			{ itemID = 14621, groupID = 1, refLootEntry = 10901 }, --Deathbone Sabatons
			{ itemID = 18683, groupID = 1, refLootEntry = 10901 }, --Hammer of the Vesper
			{ itemID = 23201, groupID = 1, refLootEntry = 10901 }, --Libram of Divinity
			{ itemID = 14631, groupID = 1, refLootEntry = 10901 }, --Necropile Boots
			{ itemID = 14629, groupID = 1, refLootEntry = 10901 }, --Necropile Cuffs
			{ itemID = 14632, groupID = 1, refLootEntry = 10901 }, --Necropile Leggings
			{ itemID = 14633, groupID = 1, refLootEntry = 10901 }, --Necropile Mantle
			{ itemID = 14626, groupID = 1, refLootEntry = 10901 }, --Necropile Robe
			{ itemID = 23200, groupID = 1, refLootEntry = 10901 }, --Totem of Sustaining		
		},
	},
	{
		Name = BabbleBoss["The Ravenian"],
		{
			{ itemID = 18680, groupID = 1, refLootEntry = 10507 }, --Ancient Bone Bow
			{ itemID = 14614, groupID = 1, refLootEntry = 10507 }, --Bloodmail Belt
			{ itemID = 14616, groupID = 1, refLootEntry = 10507 }, --Bloodmail Boots
			{ itemID = 14615, groupID = 1, refLootEntry = 10507 }, --Bloodmail Gauntlets
			{ itemID = 14611, groupID = 1, refLootEntry = 10507 }, --Bloodmail Hauberk
			{ itemID = 14612, groupID = 1, refLootEntry = 10507 }, --Bloodmail Legguards
			{ itemID = 18681, groupID = 1, refLootEntry = 10507 }, --Burial Shawl
			{ itemID = 14637, groupID = 1, refLootEntry = 10507 }, --Cadaverous Armor
			{ itemID = 14636, groupID = 1, refLootEntry = 10507 }, --Cadaverous Belt
			{ itemID = 14640, groupID = 1, refLootEntry = 10507 }, --Cadaverous Gloves
			{ itemID = 14638, groupID = 1, refLootEntry = 10507 }, --Cadaverous Leggings
			{ itemID = 14641, groupID = 1, refLootEntry = 10507 }, --Cadaverous Walkers
			{ itemID = 18684, groupID = 1, refLootEntry = 10507 }, --Dimly Opalescent Ring
			{ itemID = 18682, groupID = 1, refLootEntry = 10507 }, --Ghoul Skin Leggings
			{ itemID = 18683, groupID = 1, refLootEntry = 10507 }, --Hammer of the Vesper
		},
		{
			{ itemID = 14624, groupID = 1, refLootEntry = 10507 }, --Deathbone Chestplate
			{ itemID = 14622, groupID = 1, refLootEntry = 10507 }, --Deathbone Gauntlets
			{ itemID = 14620, groupID = 1, refLootEntry = 10507 }, --Deathbone Girdle
			{ itemID = 14623, groupID = 1, refLootEntry = 10507 }, --Deathbone Legguards
			{ itemID = 14621, groupID = 1, refLootEntry = 10507 }, --Deathbone Sabatons
			{ itemID = 23201, groupID = 1, refLootEntry = 10507 }, --Libram of Divinity
			{ itemID = 14631, groupID = 1, refLootEntry = 10507 }, --Necropile Boots
			{ itemID = 14629, groupID = 1, refLootEntry = 10507 }, --Necropile Cuffs
			{ itemID = 14632, groupID = 1, refLootEntry = 10507 }, --Necropile Leggings
			{ itemID = 14633, groupID = 1, refLootEntry = 10507 }, --Necropile Mantle
			{ itemID = 14626, groupID = 1, refLootEntry = 10507 }, --Necropile Robe
			{ itemID = 23200, groupID = 1, refLootEntry = 10507 }, --Totem of Sustaining
			{ itemID = 16716, groupID = 1, refLootEntry = 10507 }, --Wildheart Belt
		},
	},
	{
		Name = BabbleBoss["Lord Alexei Barov"],
		{
			{ itemID = 18680, groupID = 1, refLootEntry = 10504 }, --Ancient Bone Bow
			{ itemID = 14614, groupID = 1, refLootEntry = 10504 }, --Bloodmail Belt
			{ itemID = 14616, groupID = 1, refLootEntry = 10504 }, --Bloodmail Boots
			{ itemID = 14615, groupID = 1, refLootEntry = 10504 }, --Bloodmail Gauntlets
			{ itemID = 14611, groupID = 1, refLootEntry = 10504 }, --Bloodmail Hauberk
			{ itemID = 14612, groupID = 1, refLootEntry = 10504 }, --Bloodmail Legguards
			{ itemID = 18681, groupID = 1, refLootEntry = 10504 }, --Burial Shawl
			{ itemID = 14637, groupID = 1, refLootEntry = 10504 }, --Cadaverous Armor
			{ itemID = 14636, groupID = 1, refLootEntry = 10504 }, --Cadaverous Belt
			{ itemID = 14640, groupID = 1, refLootEntry = 10504 }, --Cadaverous Gloves
			{ itemID = 14638, groupID = 1, refLootEntry = 10504 }, --Cadaverous Leggings
			{ itemID = 14641, groupID = 1, refLootEntry = 10504 }, --Cadaverous Walkers
			{ itemID = 18684, groupID = 1, refLootEntry = 10504 }, --Dimly Opalescent Ring
			{ itemID = 18682, groupID = 1, refLootEntry = 10504 }, --Ghoul Skin Leggings
			{ itemID = 18683, groupID = 1, refLootEntry = 10504 }, --Hammer of the Vesper
			gap,
			{ itemID = 2060426, groupID = 1, refLootEntry = 2060426 }, --Barov's Shadowed Greathelm
			{ itemID = 2064277, groupID = 1, refLootEntry = 2060426 }, --Caer Darrow Chestplate
			{ itemID = 2066159, groupID = 1, refLootEntry = 2060426 }, --Cinch of Necromantic Power
			{ itemID = 2068201, groupID = 1, refLootEntry = 2060426 }, --Deathknight's Legplates
			{ itemID = 2072740, groupID = 1, refLootEntry = 2060426 }, --Gloves of the Forsaken Nobility
			{ itemID = 2070360, groupID = 1, refLootEntry = 2060426 }, --Gravewalker's Sabatons
			{ itemID = 2063074, groupID = 1, refLootEntry = 2060426 }, --Shirt of Eternal Commitment
			{ itemID = 2061449, groupID = 1, refLootEntry = 2060426 }, --Shoulderguards of Unholy Might
			{ itemID = 2075659, groupID = 1, refLootEntry = 2060426 }, --Sword of the Barov Protectorate
		},
		{
			{ itemID = 14624, groupID = 1, refLootEntry = 10504 }, --Deathbone Chestplate
			{ itemID = 14622, groupID = 1, refLootEntry = 10504 }, --Deathbone Gauntlets
			{ itemID = 14620, groupID = 1, refLootEntry = 10504 }, --Deathbone Girdle
			{ itemID = 14623, groupID = 1, refLootEntry = 10504 }, --Deathbone Legguards
			{ itemID = 14621, groupID = 1, refLootEntry = 10504 }, --Deathbone Sabatons

			{ itemID = 23201, groupID = 1, refLootEntry = 10504 }, --Libram of Divinity
			{ itemID = 16722, groupID = 1, refLootEntry = 10504 }, --Lightforge Bracers
			{ itemID = 14631, groupID = 1, refLootEntry = 10504 }, --Necropile Boots
			{ itemID = 14629, groupID = 1, refLootEntry = 10504 }, --Necropile Cuffs
			{ itemID = 14632, groupID = 1, refLootEntry = 10504 }, --Necropile Leggings
			{ itemID = 14633, groupID = 1, refLootEntry = 10504 }, --Necropile Mantle
			{ itemID = 14626, groupID = 1, refLootEntry = 10504 }, --Necropile Robe
			{ itemID = 23200, groupID = 1, refLootEntry = 10504 }, --Totem of Sustaining
		},
	},
	{
		Name = BabbleBoss["Lady Illucia Barov"],
		{
			{ itemID = 18680, groupID = 1, refLootEntry = 10502 }, --Ancient Bone Bow
			{ itemID = 14614, groupID = 1, refLootEntry = 10502 }, --Bloodmail Belt
			{ itemID = 14616, groupID = 1, refLootEntry = 10502 }, --Bloodmail Boots
			{ itemID = 14615, groupID = 1, refLootEntry = 10502 }, --Bloodmail Gauntlets
			{ itemID = 14611, groupID = 1, refLootEntry = 10502 }, --Bloodmail Hauberk
			{ itemID = 14612, groupID = 1, refLootEntry = 10502 }, --Bloodmail Legguards
			{ itemID = 18681, groupID = 1, refLootEntry = 10502 }, --Burial Shawl
			{ itemID = 14637, groupID = 1, refLootEntry = 10502 }, --Cadaverous Armor
			{ itemID = 14636, groupID = 1, refLootEntry = 10502 }, --Cadaverous Belt
			{ itemID = 14640, groupID = 1, refLootEntry = 10502 }, --Cadaverous Gloves
			{ itemID = 14638, groupID = 1, refLootEntry = 10502 }, --Cadaverous Leggings
			{ itemID = 14641, groupID = 1, refLootEntry = 10502 }, --Cadaverous Walkers
			{ itemID = 18684, groupID = 1, refLootEntry = 10502 }, --Dimly Opalescent Ring
			{ itemID = 18682, groupID = 1, refLootEntry = 10502 }, --Ghoul Skin Leggings
			{ itemID = 18683, groupID = 1, refLootEntry = 10502 }, --Hammer of the Vesper
			gap,
			{ itemID = 2064322, groupID = 1, refLootEntry = 2060456 }, --Breastplate of Eternal Servitude
			{ itemID = 2060456, groupID = 1, refLootEntry = 2060456 }, --Crown of the Cursed Baroness
			{ itemID = 2072782, groupID = 1, refLootEntry = 2060456 }, --Gauntlets of the Undying Sorceress
			{ itemID = 2066201, groupID = 1, refLootEntry = 2060456 }, --Girdle of Necromantic Allegiance
			{ itemID = 2070408, groupID = 1, refLootEntry = 2060456 }, --Greaves of Shadow's Embrace
			{ itemID = 2068253, groupID = 1, refLootEntry = 2060456 }, --Legplates of the Scholomancer
			{ itemID = 2061491, groupID = 1, refLootEntry = 2060456 }, --Mantle of Agonizing Shadows
			{ itemID = 2063118, groupID = 1, refLootEntry = 2060456 }, --Shirt of the Forsaken Nobility
			{ itemID = 2078633, groupID = 1, refLootEntry = 2060456 }, --Wand of Domination
		},
		{
			{ itemID = 14624, groupID = 1, refLootEntry = 10502 }, --Deathbone Chestplate
			{ itemID = 14622, groupID = 1, refLootEntry = 10502 }, --Deathbone Gauntlets
			{ itemID = 14620, groupID = 1, refLootEntry = 10502 }, --Deathbone Girdle
			{ itemID = 14623, groupID = 1, refLootEntry = 10502 }, --Deathbone Legguards
			{ itemID = 14621, groupID = 1, refLootEntry = 10502 }, --Deathbone Sabatons
			{ itemID = 23201, groupID = 1, refLootEntry = 10502 }, --Libram of Divinity
			{ itemID = 16722, groupID = 1, refLootEntry = 10502 }, --Lightforge Bracers
			{ itemID = 14631, groupID = 1, refLootEntry = 10502 }, --Necropile Boots
			{ itemID = 14629, groupID = 1, refLootEntry = 10502 }, --Necropile Cuffs
			{ itemID = 14632, groupID = 1, refLootEntry = 10502 }, --Necropile Leggings
			{ itemID = 14633, groupID = 1, refLootEntry = 10502 }, --Necropile Mantle
			{ itemID = 14626, groupID = 1, refLootEntry = 10502 }, --Necropile Robe
			{ itemID = 23200, groupID = 1, refLootEntry = 10502 }, --Totem of Sustaining
		},
	},
	{
		Name = BabbleBoss["Darkmaster Gandling"],
		{
			{ itemID = 13937 }, --Headmaster's Charge
			{ itemID = 14514 }, --Pattern: Robe of the Void
			{ itemID = 14153 }, --Robe of the Void
			{ itemID = 13944 }, --Tombstone Breastplate
			{ itemID = 13398 }, --Boots of the Shrieker
		gap,
			{ itemID = 13950 }, --Detention Strap
			{ itemID = 13951 }, --Vigorsteel Vambraces
			{ itemID = 22433 }, --Don Mauricio's Band of Domination
			{ itemID = 13964 }, --Witchblade
			{ itemID = 13953 }, --Silent Fang
			{ itemID = 13938 }, --Bonecreeper Stylus
		},
		{
			{ itemID = 16698 }, --Dreadmist Mask
			{ itemID = 16686 }, --Magister's Crown
			{ itemID = 16693 }, --Devout Crown
			{ itemID = 16707 }, --Shadowcraft Cap
			{ itemID = 16720 }, --Wildheart Cowl
			{ itemID = 16677 }, --Beaststalker's Cap
			{ itemID = 16667 }, --Coif of Elements
			{ itemID = 16731 }, --Helm of Valor
			{ itemID = 16727 }, --Lightforge Helm
		gap,
			{ itemID = 19276 }, --Ace of Portals
		gap,
			{ itemID = 13501 }, --Recipe: Major Mana Potion
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 18697 }, --Coldstone Slippers
			{ itemID = 18698 }, --Tattered Leather Hood
			{ itemID = 18699 }, --Icy Tomb Spaulders
			{ itemID = 18700 }, --Malefic Bracers
			{ itemID = 14536 }, --Bonebrace Hauberk
			{ itemID = 18702 }, --Belt of the Ordained
			{ itemID = 18701 }, --Innervating Band
		gap,
			{ itemID = 16254 }, --Formula: Enchant Weapon - Lifestealing
			{ itemID = 16255 }, --Formula: Enchant 2H Weapon - Major Spirit
			{ itemID = 15773 }, --Pattern: Wicked Leather Armor
			{ itemID = 15776 }, --Pattern: Runic Leather Armor
		gap,
			{ itemID = 12753 }, --Skin of Shadow
			{ itemID = 13920 }, --Healthy Dragon Scale
		},
		{
			{ itemID = 16705 }, --Dreadmist Wraps
			{ itemID = 16684 }, --Magister's Gloves
			{ itemID = 16685 }, --Magister's Belt
			{ itemID = 16710 }, --Shadowcraft Bracers
			{ itemID = 16716 }, --Wildheart Belt
			{ itemID = 16722 }, --Lightforge Bracers
		},
	},
}
-----------------------
--- Shadowfang Keep ---
-----------------------

AtlasLoot_Data["ShadowfangKeep"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Shadowfang Keep"],
	Type = "ClassicDungeon",
	Map = "ShadowfangKeep",
	{
		Name = AL["Apothecary Hummel"],
		{
			{ itemID = 397168, groupID = 1, refLootEntry = 36296 }, --Choker of the Pure Heart
			{ itemID = 397132, groupID = 1, refLootEntry = 36296 }, --Heartbreak Charm
			{ itemID = 397144, groupID = 1, refLootEntry = 36296 }, --Shard of Pirouetting Happiness
			{ itemID = 397156, groupID = 1, refLootEntry = 36296 }, --Sweet Perfume Broach
			{ itemID = 397120, groupID = 1, refLootEntry = 36296 }, --Winking Eye of Love
			{ itemID = 388912, groupID = 2, refLootEntry = 36296 }, --Forever-Lovely Rose
			{ itemID = 392168, groupID = 2, refLootEntry = 36296 }, --Vile Fumigator's Mask
			gap,
			{ itemID = 2067220, groupID = 1, refLootEntry = 2061045 }, --Belt of Lingering Scent
			{ itemID = 2071427, groupID = 1, refLootEntry = 2061045 }, --Boots of Aromatic Stealth
			{ itemID = 2072004, groupID = 1, refLootEntry = 2061045 }, --Bracers of Irresistible Aroma
			{ itemID = 2077631, groupID = 1, refLootEntry = 2061045 }, --Dagger of the Chemist
			{ itemID = 2073571, groupID = 1, refLootEntry = 2061045 }, --Gloves of the Perfume Master
			{ itemID = 2061045, groupID = 1, refLootEntry = 2061045 }, --Headpiece of Alchemical Whispers
			{ itemID = 2069435, groupID = 1, refLootEntry = 2061045 }, --Hummel's Alchemical Trousers
			{ itemID = 2062216, groupID = 1, refLootEntry = 2061045 }, --Perfumer's Epaulets
			{ itemID = 2065313, groupID = 1, refLootEntry = 2061045 }, --Robes of the Forsaken Alchemist
		},
	},
	{
		Name = BabbleBoss["Deathsworn Captain"],
		{
			{ itemID = 6642 }, --Phantom Armor
			{ itemID = 6641 }, --Haunting Blade
		},
	},
	{
		Name = AL["Rethilgore"],
		{
			{ itemID = 6341, groupID = 1, refLootEntry = 3914 }, --Eerie Stable Lantern
			{ itemID = 5254, groupID = 1, refLootEntry = 3914 }, --Rugged Spaulders
		},
	},
	{
		Name = AL["Felsteed"],
		{
			{ itemID = 6341 }, --Eerie Stable Lantern
			{ itemID = 932 }, --Fel Steed Saddlebags
		},
	},
	{
		Name = BabbleBoss["Razorclaw the Butcher"],
		{
			{ itemID = 6226, groupID = 1, refLootEntry = 3886 }, --Bloody Apron
			{ itemID = 1292, groupID = 1, refLootEntry = 3886 }, --Butcher's Cleaver
			{ itemID = 6633, groupID = 1, refLootEntry = 3886 }, --Butcher's Slicer
			gap,
			{ itemID = 2074899, groupID = 1, refLootEntry = 2074899 }, --Butcher's Cleave
		},
	},
	{
		Name = BabbleBoss["Baron Silverlaine"],
		{
			{ itemID = 6323, groupID = 1, refLootEntry = 3887 }, --Baron's Scepter
			{ itemID = 6321, groupID = 1, refLootEntry = 3887 }, --Silverlaine's Family Seal
			gap,
			{ itemID = 2065467, groupID = 1, refLootEntry = 2062363 }, --Cursed Belt of the Spectral Baron
			{ itemID = 2074900, groupID = 1, refLootEntry = 2062363 }, --Gloomhammer of Silverlaine
			{ itemID = 2067408, groupID = 1, refLootEntry = 2062363 }, --Haunted Leggings of the Forsaken
			{ itemID = 2062363, groupID = 1, refLootEntry = 2062363 }, --Silverlaine's Sorrowful Vestments
			{ itemID = 2069615, groupID = 1, refLootEntry = 2062363 }, --Wraithwalker's Boots
		},
	},
	{
		Name = BabbleBoss["Commander Springvale"],
		{
			{ itemID = 3191, groupID = 1, refLootEntry = 4278 }, --Arced War Axe
			{ itemID = 6320, groupID = 1, refLootEntry = 4278 }, --Commander's Crest
			gap,
			{ itemID = 2069616, groupID = 1, refLootEntry = 2061124 }, --Accursed Sabatons of Springvale
			{ itemID = 2062364, groupID = 1, refLootEntry = 2061124 }, --Chestguard of the Cursed Commander
			{ itemID = 2074948, groupID = 1, refLootEntry = 2061124 }, --Enchanted Worgenblade
			{ itemID = 2067409, groupID = 1, refLootEntry = 2061124 }, --Legplates of Gilnean Valor
			{ itemID = 2065468, groupID = 1, refLootEntry = 2061124 }, --Necromantic Girdle of Springvale
			{ itemID = 2072112, groupID = 1, refLootEntry = 2061124 }, --Plaguebound Gauntlets
			{ itemID = 2077991, groupID = 1, refLootEntry = 2061124 }, --Shield of Arugal's Guardian
			{ itemID = 2061124, groupID = 1, refLootEntry = 2061124 }, --Springvale's Aegis Pauldrons
		},
	},
	{
		Name = BabbleBoss["Odo the Blindwatcher"],
		{
			{ itemID = 6319, groupID = 1, refLootEntry = 4279 }, --Girdle of the Blindwatcher
			{ itemID = 6318, groupID = 1, refLootEntry = 4279 }, --Odo's Ley Staff
		},
	},
	{
		Name = BabbleBoss["Fenrus the Devourer"],
		{
			{ itemID = 3230, groupID = 1, refLootEntry = 4274 }, --Black Wolf Bracers
			{ itemID = 6340, groupID = 1, refLootEntry = 4274 }, --Fenrus' Hide
		},
	},
	{
		Name = BabbleBoss["Arugal's Voidwalker"],
		{
			{ itemID = 5943 }, --Rift Bracers
		},
	},
	{
		Name = BabbleBoss["Wolf Master Nandos"],
		{
			{ itemID = 3748, groupID = 1, refLootEntry = 3927 }, --Feline Mantle
			{ itemID = 6314, groupID = 1, refLootEntry = 3927 }, --Wolfmaster Cape
		},
	},
	{
		Name = BabbleBoss["Archmage Arugal"],
		{
			{ itemID = 6392, groupID = 1, refLootEntry = 4275 }, --Belt of Arugal
			{ itemID = 6220, groupID = 1, refLootEntry = 4275 }, --Meteor Shard
			{ itemID = 6324, groupID = 1, refLootEntry = 4275 }, --Robes of Arugal
			gap,
			{ itemID = 2065405, groupID = 1, refLootEntry = 2060050 }, --Arugal's Enchanted Sash
			{ itemID = 2060050, groupID = 1, refLootEntry = 2060050 }, --Cowl of Arugal's Remorse
			{ itemID = 2069546, groupID = 1, refLootEntry = 2060050 }, --Footwraps of the Haunted Keep
			{ itemID = 2067336, groupID = 1, refLootEntry = 2060050 }, --Leggings of Shadowed Legacy
			{ itemID = 2061098, groupID = 1, refLootEntry = 2060050 }, --Mantle of the Cursed Archmage
			{ itemID = 2063810, groupID = 1, refLootEntry = 2060050 }, --Robes of Worgen Influence
			{ itemID = 2074947, groupID = 1, refLootEntry = 2060050 }, --Staff of Arugal's Wrath
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 2292 }, --Necrology Robes
			{ itemID = 1974 }, --Mindthrust Bracers
			{ itemID = 1489 }, --Gloomshroud Armor
			{ itemID = 1935 }, --Assassin's Blade
			{ itemID = 1482 }, --Shadowfang
			{ itemID = 2205 }, --Duskbringer
			{ itemID = 2807 }, --Guillotine Axe
			{ itemID = 1318 }, --Night Reaver
			{ itemID = 1483 }, --Face Smasher
			{ itemID = 3194 }, --Black Malice
			{ itemID = 1484 }, --Witching Stave
		},
	},
}

------------------
--- Stratholme ---
------------------

AtlasLoot_Data["Stratholme"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Stratholme"],
	Type = "ClassicDungeonExt",
	Map = "Stratholme",
	{
		Name = BabbleBoss["Skul"],
		{
			{ itemID = 13394, groupID = 1, refLootEntry = 10393 }, --Skul's Cold Embrace
			{ itemID = 13395, groupID = 1, refLootEntry = 10393 }, --Skul's Fingerbone Claws
			{ itemID = 13396, groupID = 1, refLootEntry = 10393 }, --Skul's Ghastly Touch
		},
	},
	{
		Name = "Mailbox Keys",
		{
			{ itemID = 13304 }, --Festival Lane Postbox Key
			{ itemID = 13303 }, --Crusaders' Square Postbox Key
			{ itemID = 13307 }, --Fras Siabi's Postbox Key
			{ itemID = 13305 }, --Elders' Square Postbox Key
			{ itemID = 13302 }, --Market Row Postbox Key
			{ itemID = 13306 }, --King's Square Postbox Key
		},
	},
	{
		Name = BabbleBoss["Fras Siabi"],
		{
			{ itemID = 13172 }, --Siabi's Premium Tobacco
			{ itemID = 13171 }, --Smokey's Lighter
		},
	},
	{
		Name = "Atiesh <Hand of Sargeras>",
		{
			{ itemID = 22736 }, --Andonisus, Reaper of Souls
		},
	},
	{
		Name = BabbleBoss["Hearthsinger Forresten"],
		{
			{ itemID = 16682, groupID = 1, refLootEntry = 10558 }, --Magister's Boots
			{ itemID = 13379, groupID = 1, refLootEntry = 10558 }, --Piccolo of the Flaming Fire
			{ itemID = 13384, groupID = 1, refLootEntry = 10558 }, --Rainbow Girdle
			{ itemID = 13378, groupID = 1, refLootEntry = 10558 }, --Songbird Blouse
			{ itemID = 13383, groupID = 1, refLootEntry = 10558 }, --Woollies of the Prancing Minstrel
			gap,
			{ itemID = 2072713, groupID = 1, refLootEntry = 2061425 }, --Ballad Singer's Gloves
			{ itemID = 2068164, groupID = 1, refLootEntry = 2061425 }, --Bard’s Echoing Leggings
			{ itemID = 2061425, groupID = 1, refLootEntry = 2061425 }, --Forresten's Harmonious Mantle
			{ itemID = 2070323, groupID = 1, refLootEntry = 2061425 }, --Forresten's Staccato Boots
			{ itemID = 2064244, groupID = 1, refLootEntry = 2061425 }, --Hearthsinger's Tuneful Vest
			{ itemID = 2078635, groupID = 1, refLootEntry = 2061425 }, --Lament of the Bard Bow
			{ itemID = 2063046, groupID = 1, refLootEntry = 2061425 }, --Lamenting Minstrel's Shirt
			{ itemID = 2066123, groupID = 1, refLootEntry = 2061425 }, --Melodic Bard's Belt
		},
	},
	{
		Name = BabbleBoss["The Unforgiven"],
		{
			{ itemID = 13404, groupID = 1, refLootEntry = 10516 }, --Mask of the Unforgiven
			{ itemID = 13408, groupID = 1, refLootEntry = 10516 }, --Soul Breaker
			{ itemID = 13409, groupID = 1, refLootEntry = 10516 }, --Tearfall Bracers
			{ itemID = 13405, groupID = 1, refLootEntry = 10516 }, --Wailing Nightbane Pauldrons
			{ itemID = 16717, groupID = 1, refLootEntry = 10516 }, --Wildheart Gloves
		},
	},
	{
		Name = BabbleBoss["Timmy the Cruel"],
		{
			{ itemID = 13403 }, --Grimgore Noose
			{ itemID = 13402 }, --Timmy's Galoshes
			{ itemID = 13400 }, --Vambraces of the Sadist
			{ itemID = 13401 }, --The Cruel Hand of Timmy
		},
		{
			{ itemID = 16724 }, --Lightforge Gauntlets
		},
	},
	{
		Name = AL["Malor's Strongbox"],
		{
			{ icon = "INV_Box_01", name = color.WHITE..AL["Malor's Strongbox"] },
			{ itemID = 12845 }, --Medallion of Faith
		},
	},
	{
		Name = BabbleBoss["Crimson Hammersmith"] .." (" ..AL["Summon"] ..")",
		{
			{ itemID = 18781 }, --Bottom Half of Advanced Armorsmithing: Volume II
			{ itemID = 12726 }, --Plans: Enchanted Thorium Leggings
			{ itemID = 13351 }, --Crimson Hammersmith's Apron
			{ itemID = 12824 }, --Plans: Enchanted Battlehammer
		},
	},
	{
		Name = "Plans: Serenity",
		{
			{ itemID = 12827 }, --Plans: Serenity
		},
	},
	{
		Name = BabbleBoss["Cannon Master Willey"],
		{
			{ itemID = 18721, groupID = 1, refLootEntry = 10997 }, --Barrage Girdle
			{ itemID = 13382, groupID = 1, refLootEntry = 10997 }, --Cannonball Runner
			{ itemID = 22403, groupID = 1, refLootEntry = 10997 }, --Diana's Pearl Necklace
			{ itemID = 22407, groupID = 1, refLootEntry = 10997 }, --Helm of the New Moon
			{ itemID = 22405, groupID = 1, refLootEntry = 10997 }, --Mantle of the Scarlet Crusade
			{ itemID = 13381, groupID = 1, refLootEntry = 10997 }, --Master Cannoneer Boots
			{ itemID = 22406, groupID = 1, refLootEntry = 10997 }, --Redemption
			{ itemID = 16708, groupID = 1, refLootEntry = 10997 }, --Shadowcraft Spaulders
			{ itemID = 22404, groupID = 1, refLootEntry = 10997 }, --Willey's Back Scratcher
			{ itemID = 13380, groupID = 1, refLootEntry = 10997 }, --Willey's Portable Howitzer
			{ itemID = 13377 }, --Miniature Cannon Balls
			gap,
			{ itemID = 2075700, groupID = 1, refLootEntry = 2061445 }, --Axe of the Crusader's Command
			{ itemID = 2066152, groupID = 1, refLootEntry = 2061445 }, --Belt of Scarlet Munitions
			{ itemID = 2070353, groupID = 1, refLootEntry = 2061445 }, --Boots of Precision Stride
			{ itemID = 2071647, groupID = 1, refLootEntry = 2061445 }, --Bracers of the Defensive Barrage
			{ itemID = 2063067, groupID = 1, refLootEntry = 2061445 }, --Cannonade Shirt
			{ itemID = 2064271, groupID = 1, refLootEntry = 2061445 }, --Chestplate of Artillery Command
			{ itemID = 2072734, groupID = 1, refLootEntry = 2061445 }, --Gauntlets of Tactical Mastery
			{ itemID = 2068194, groupID = 1, refLootEntry = 2061445 }, --Legplates of the Zealous Siege
			{ itemID = 2061445, groupID = 1, refLootEntry = 2061445 }, --Shoulderguards of Willey's Vigil
			{ itemID = 2073739, groupID = 1, refLootEntry = 2061445 }, --Tabard of the Scarlet Bastion
			{ itemID = 2078638, groupID = 1, refLootEntry = 2061445 }, --Willey's Repeater	
		},
		{
			{ itemID = 12839, contentsPreview = {12783} }, --Plans: Heartseeker
		},
	},
	{
		Name = BabbleBoss["Archivist Galford"],
		{
			{ itemID = 13386, groupID = 1, refLootEntry = 10811 }, --Archivist Cape
			{ itemID = 18716, groupID = 1, refLootEntry = 10811 }, --Ash Covered Boots
			{ itemID = 16692, groupID = 1, refLootEntry = 10811 }, --Devout Gloves
			{ itemID = 13387, groupID = 1, refLootEntry = 10811 }, --Foresight Girdle
			{ itemID = 13385, groupID = 1, refLootEntry = 10811 }, --Tome of Knowledge
			gap,
			{ itemID = 2066149, groupID = 1, refLootEntry = 2060422 }, --Belt of Burning Records
			{ itemID = 2060422, groupID = 1, refLootEntry = 2060422 }, --Cowl of the Zealous Archivist
			{ itemID = 2072731, groupID = 1, refLootEntry = 2060422 }, --Gloves of Fervent Manuscripts
			{ itemID = 2068190, groupID = 1, refLootEntry = 2060422 }, --Leggings of the Devout Scribe
			{ itemID = 2063064, groupID = 1, refLootEntry = 2060422 }, --Robes of the Scarlet Chronicler
			{ itemID = 2070350, groupID = 1, refLootEntry = 2060422 }, --Slippers of Flamelit Lore
			{ itemID = 2073737, groupID = 1, refLootEntry = 2060422 }, --Tabard of the Scarlet Tomekeeper
			{ itemID = 2075680, groupID = 1, refLootEntry = 2060422 }, --Tome of Pyroclastic Knowledge
		},
		{
			{ itemID = 22897 }, --Tome of Conjure Food VII
			gap,
			{ itemID = 12811 }, --Righteous Orb
			gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Unfinished Painting"] },
			{ itemID = 14679 }, --Of Love and Family
		},
	},
	{
		Name = BabbleBoss["Balnazzar"],
		{
			{ itemID = 13353 }, --Book of the Dead
			{ itemID = 14512 }, --Pattern: Truefaith Vestments
			{ itemID = 14154 }, --Truefaith Vestments
		gap,
			{ itemID = 18720 }, --Shroud of the Nathrezim
			{ itemID = 13369 }, --Fire Striders
			{ itemID = 13358 }, --Wyrmtongue Shoulders
			{ itemID = 13359 }, --Crown of Tyranny
			{ itemID = 18718 }, --Grand Crusader's Helm
			{ itemID = 12103 }, --Star of Mystaria
			{ itemID = 13360 }, --Gift of the Elven Magi
			{ itemID = 13348 }, --Demonshear
			{ itemID = 18717 }, --Hammer of the Grand Crusader
		},
		{
			{ itemID = 16725 }, --Lightforge Boots
		gap,
			{ itemID = 13520 }, --Recipe: Flask of Distilled Wisdom
		gap,
			{ itemID = 13250 }, --Head of Balnazzar
		},
	},
	{
		Name = AL["Sothos and Jarien"],
		{
			{ icon = "INV_Misc_Bag_09", name = color.WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..AL["Sothos and Jarien"] },
			{ itemID = 22301 }, --Ironweave Robe
			{ itemID = 22328 }, --Legplates of Vigilance
			{ itemID = 22327 }, --Amulet of the Redeemed
			{ itemID = 22334 }, --Band of Mending
			{ itemID = 22329 }, --Scepter of Interminable Focus
		gap,
			{ itemID = 21984 }, --Left Piece of Lord Valthalak's Amulet
			{ itemID = 22046 }, --Right Piece of Lord Valthalak's Amulet
		},
	},
	{
		Name = BabbleBoss["Stonespine"],
		{
			{ itemID = 13399, groupID = 1, refLootEntry = 10809 }, --Gargoyle Shredder Talons
			{ itemID = 13397, groupID = 1, refLootEntry = 10809 }, --Stoneskin Gargoyle Cape
			{ itemID = 13954, groupID = 1, refLootEntry = 10809 }, --Verdant Footpads
		},
	},
	{
		Name = BabbleBoss["Baroness Anastari"],
		{
			{ itemID = 18728, groupID = 1, refLootEntry = 10436 }, --Anastari Heirloom
			{ itemID = 13534, groupID = 1, refLootEntry = 10436 }, --Banshee Finger
			{ itemID = 16704, groupID = 1, refLootEntry = 10436 }, --Dreadmist Sandals
			{ itemID = 18729, groupID = 1, refLootEntry = 10436 }, --Screeching Bow
			{ itemID = 18730, groupID = 1, refLootEntry = 10436 }, --Shadowy Laced Handwraps
			{ itemID = 13539, groupID = 2, refLootEntry = 10436 }, --Banshee's Touch
			{ itemID = 13537, groupID = 2, refLootEntry = 10436 }, --Chillhide Bracers
			{ itemID = 13535, groupID = 2, refLootEntry = 10436 }, --Coldtouch Phantom Wraps
			{ itemID = 13538, groupID = 2, refLootEntry = 10436 }, --Windshrieker Pauldrons
			gap,
			{ itemID = 13514 }, --Wail of the Banshee
		},
	},
	{
		Name = BabbleBoss["Black Guard Swordsmith"] .." (" ..AL["Summon"] ..")",
		{
			{ itemID = 18783 }, --Bottom Half of Advanced Armorsmithing: Volume III
			{ itemID = 12725 }, --Plans: Enchanted Thorium Helm
		gap,
			{ itemID = 13350 }, --Insignia of the Black Guard
			{ itemID = 12825 }, --Plans: Blazing Rapier
		},
	},
	{
		Name = "Plans: Corruption",
		{
			{ itemID = 12830 }, --Plans: Corruption
		},
	},
	{
		Name = BabbleBoss["Nerub'enkan"],
		{
			{ itemID = 16675, groupID = 1, refLootEntry = 10437 }, --Beaststalker's Boots
			{ itemID = 18738, groupID = 1, refLootEntry = 10437 }, --Carapace Spine Crossbow
			{ itemID = 18739, groupID = 1, refLootEntry = 10437 }, --Chitinous Plate Legguards
			{ itemID = 13529, groupID = 1, refLootEntry = 10437 }, --Husk of Nerub'enkan
			{ itemID = 18740, groupID = 1, refLootEntry = 10437 }, --Thuzadin Sash
			{ itemID = 13533, groupID = 2, refLootEntry = 10437 }, --Acid-etched Pauldrons
			{ itemID = 13531, groupID = 2, refLootEntry = 10437 }, --Crypt Stalker Leggings
			{ itemID = 13532, groupID = 2, refLootEntry = 10437 }, --Darkspinner Claws
			{ itemID = 13530, groupID = 2, refLootEntry = 10437 }, --Fangdrip Runners
		},
		{
			{ itemID = 13508 }, --Eye of Arachnida
		},
	},
	{
		Name = BabbleBoss["Maleki the Pallid"],
		{
			{ itemID = 18737, groupID = 1, refLootEntry = 10438 }, --Bone Slicing Hatchet
			{ itemID = 16691, groupID = 1, refLootEntry = 10438 }, --Devout Sandals
			{ itemID = 18735, groupID = 1, refLootEntry = 10438 }, --Maleki's Footwraps
			{ itemID = 18734, groupID = 1, refLootEntry = 10438 }, --Pale Moon Cloak
			{ itemID = 13525, groupID = 2, refLootEntry = 10438 }, --Darkbind Fingers
			{ itemID = 13526, groupID = 2, refLootEntry = 10438 }, --Flamescarred Girdle
			{ itemID = 13527, groupID = 2, refLootEntry = 10438 }, --Lavawalker Greaves
			{ itemID = 13528, groupID = 2, refLootEntry = 10438 }, --Twilight Void Bracers
			gap,
			{ itemID = 2071645, groupID = 1, refLootEntry = 2060418 }, --Bracers of the Faded Soul
			{ itemID = 2072730, groupID = 1, refLootEntry = 2060418 }, --Gloves of Mana Drain
			{ itemID = 2060418, groupID = 1, refLootEntry = 2060418 }, --Hood of Pallid Chill
			{ itemID = 2068189, groupID = 1, refLootEntry = 2060418 }, --Leggings of Icy Demise
			{ itemID = 2061442, groupID = 1, refLootEntry = 2060418 }, --Mantle of Necrotic Frost
			{ itemID = 2064267, groupID = 1, refLootEntry = 2060418 }, --Robe of the Lifeless Mage
			{ itemID = 2066148, groupID = 1, refLootEntry = 2060418 }, --Sash of Undeath
			{ itemID = 2063063, groupID = 1, refLootEntry = 2060418 }, --Shirt of the Lich's Grip
			{ itemID = 2070349, groupID = 1, refLootEntry = 2060418 }, --Slippers of the Frostbitten
			{ itemID = 2075644, groupID = 1, refLootEntry = 2060418 }, --Staff of the Pale Sorcerer
		},
		{
			{ itemID = 12833, contentsPreview = {12796} }, --Plans: Hammer of the Titans
		},
	},
	{
		Name = BabbleBoss["Magistrate Barthilas"],
		{
			{ itemID = 18727, groupID = 1, refLootEntry = 10435 }, --Crimson Felt Hat
			{ itemID = 18722, groupID = 1, refLootEntry = 10435 }, --Death Grips
			{ itemID = 23198, groupID = 1, refLootEntry = 10435 }, --Idol of Brutality
			{ itemID = 18726, groupID = 1, refLootEntry = 10435 }, --Magistrate's Cuffs
			{ itemID = 18725, groupID = 1, refLootEntry = 10435 }, --Peacemaker
			{ itemID = 13376, groupID = 1, refLootEntry = 10435 }, --Royal Tribunal Cloak
		gap,
			{ itemID = 12382 }, --Key to the City
		},
	},
	{
		Name = BabbleBoss["Ramstein the Gorger"],
		{
			{ itemID = 13374 }, --Soulstealer Mantle
			{ itemID = 18723 }, --Animated Chain Necklace
			{ itemID = 13373 }, --Band of Flesh
			{ itemID = 13515 }, --Ramstein's Lightning Bolts
			{ itemID = 13372 }, --Slavedriver's Cane
			{ itemID = 13375 }, --Crest of Retribution
		},
		{
			{ itemID = 16737 }, --Gauntlets of Valor
		},
	},
	{
		Name = BabbleBoss["Baron Rivendare"],
		{
			{ itemID = 16678, groupID = 1, refLootEntry = 10440 }, --Beaststalker's Pants
			{ itemID = 13368, groupID = 1, refLootEntry = 10440 }, --Bonescraper
			{ itemID = 13340, groupID = 1, refLootEntry = 10440 }, --Cape of the Black Baron
			{ itemID = 16694, groupID = 1, refLootEntry = 10440 }, --Devout Skirt
			{ itemID = 13344, groupID = 1, refLootEntry = 10440 }, --Dracorian Gauntlets
			{ itemID = 16699, groupID = 1, refLootEntry = 10440 }, --Dreadmist Leggings
			{ itemID = 22410, groupID = 1, refLootEntry = 10440 }, --Gauntlets of Deftness
			{ itemID = 22411, groupID = 1, refLootEntry = 10440 }, --Helm of the Executioner
			{ itemID = 16668, groupID = 1, refLootEntry = 10440 }, --Kilt of Elements
			{ itemID = 16732, groupID = 1, refLootEntry = 10440 }, --Legplates of Valor
			{ itemID = 16728, groupID = 1, refLootEntry = 10440 }, --Lightforge Legplates
			{ itemID = 16687, groupID = 1, refLootEntry = 10440 }, --Magister's Leggings
			{ itemID = 22408, groupID = 1, refLootEntry = 10440 }, --Ritssyn's Wand of Bad Mojo
			{ itemID = 13346, groupID = 1, refLootEntry = 10440 }, --Robes of the Exalted
			gap,
			{ itemID = 2075645, groupID = 1, refLootEntry = 2075645 }, --Rivendare's Runeblade
		},
		{
			{ itemID = 13349, groupID = 1, refLootEntry = 10440 }, --Scepter of the Unholy
			{ itemID = 13345, groupID = 1, refLootEntry = 10440 }, --Seal of Rivendare
			{ itemID = 16709, groupID = 1, refLootEntry = 10440 }, --Shadowcraft Pants
			{ itemID = 13361, groupID = 1, refLootEntry = 10440 }, --Skullforge Reaver
			{ itemID = 22412, groupID = 1, refLootEntry = 10440 }, --Thuzadin Mantle
			{ itemID = 22409, groupID = 1, refLootEntry = 10440 }, --Tunic of the Crescent Moon
			{ itemID = 16719, groupID = 1, refLootEntry = 10440 }, --Wildheart Kilt
			gap,
			{ itemID = 13505, groupID = 1, refLootEntry = 10440 }, --Runeblade of Baron Rivendare
			gap,
			{ itemID = 13251, contentsPreview = {13246,13249,13243} }, --Head of Baron Rivendare
			gap,
			{ itemID = 13335 }, --Deathcharger's Reins
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 18743 }, --Gracious Cape
			{ itemID = 17061 }, --Juno's Shadow
			{ itemID = 18745 }, --Sacred Cloth Leggings
			{ itemID = 18744 }, --Plaguebat Fur Gloves
			{ itemID = 18736 }, --Plaguehound Leggings
			{ itemID = 18742 }, --Stratholme Militia Shoulderguard
			{ itemID = 18741 }, --Morlune's Bracer
			{ itemID = 16249 }, --Formula: Enchant 2H Weapon - Major Intellect
			{ itemID = 16248 }, --Formula: Enchant Weapon - Unholy
			{ itemID = 18658 }, --Schematic: Ultra-Flash Shadow Reflector
			{ itemID = 16052 }, --Schematic: Voice Amplification Modulator
			{ itemID = 15777 }, --Pattern: Runic Leather Shoulders
			{ itemID = 15768 }, --Pattern: Wicked Leather Belt
			{ itemID = 14495 }, --Pattern: Ghostweave Pants
		},
		{
			{ itemID = 16697 }, --Devout Bracers
			{ itemID = 16702 }, --Dreadmist Belt
			{ itemID = 16685 }, --Magister's Belt
			{ itemID = 16714 }, --Wildheart Bracers
			{ itemID = 16681 }, --Beaststalker's Bindings
			{ itemID = 16671 }, --Bindings of Elements
			{ itemID = 16736 }, --Belt of Valor
			{ itemID = 16723 }, --Lightforge Belt
			{ itemID = 12811 }, --Righteous Orb
			{ itemID = 12735 }, --Frayed Abomination Stitching
		},
	},
}
---------------------
--- The Deadmines ---
---------------------

AtlasLoot_Data["TheDeadmines"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["The Deadmines"],
	Type = "ClassicDungeon",
	Map = "TheDeadmines",
	{
		Name = BabbleBoss["Marisa du'Paige"],
		{
			{ itemID = 3019 }, --Noble's Robe
			{ itemID = 4660 }, --Walking Boots
		},
	},
	{
		Name = BabbleBoss["Brainwashed Noble"],
		{
			{ itemID = 5967 }, --Girdle of Nobility
			{ itemID = 3902 }, --Staff of Nobles
		},
	},
	{
		Name = BabbleBoss["Foreman Thistlenettle"],
		{
			{ itemID = 1875 }, --Thistlenettle's Badge
		},
	},
	{
		Name = BabbleBoss["Rhahk'Zor"],
		{
			{ itemID = 5187, groupID = 1, refLootEntry = 644 }, --Rhahk'Zor's Hammer
			{ itemID = 872, groupID = 1, refLootEntry = 644 }, --Rockslicer
			gap,
			{ itemID = 2074199, groupID = 1, refLootEntry = 2074199 }, --Rhahk'Zor's Pulverizing Greatmaul

		},
	},
	{
		Name = BabbleBoss["Miner Johnson"],
		{
			{ itemID = 5443, groupID = 1, refLootEntry = 3586 }, --Gold-plated Buckler
			{ itemID = 5444, groupID = 1, refLootEntry = 3586 }, --Miner's Cape
			gap,
			{ itemID = 2066951, groupID = 1, refLootEntry = 2060859 }, --Belt of the Forlorn Marauder
			{ itemID = 2071136, groupID = 1, refLootEntry = 2060859 }, --Boots of Wayward Resolve
			{ itemID = 2073321, groupID = 1, refLootEntry = 2060859 }, --Gloves of Grudging Labor
			{ itemID = 2069110, groupID = 1, refLootEntry = 2060859 }, --Leggings of the Mineshaft
			{ itemID = 2060859, groupID = 1, refLootEntry = 2060859 }, --Rebel's Helm of Vigilance
			{ itemID = 2074842, groupID = 1, refLootEntry = 2060859 }, --Reckoning Pickaxe
			{ itemID = 2063525, groupID = 1, refLootEntry = 2060859 }, --Stonemason's Defiant Chestguard

		},
	},
	{
		Name = BabbleBoss["Sneed's Shredder"],
		{
			{ itemID = 1937, groupID = 1, refLootEntry = 642 }, --Buzz Saw
			{ itemID = 2169, groupID = 1, refLootEntry = 642 }, --Buzzer Blade
			{ itemID = 7365 }, --Gnoam Sprecklesprocket
		},
	},
	{
		Name = BabbleBoss["Sneed"],
		{
			{ itemID = 5195, groupID = 1, refLootEntry = 642 }, --Gold-flecked Gloves
			{ itemID = 5194, groupID = 1, refLootEntry = 642 }, --Taskmaster Axe
			{ itemID = 5397 }, --Defias Gunpowder
		},
	},
	{
		Name = BabbleBoss["Gilnid"],
		{
			{ itemID = 1156, groupID = 1, refLootEntry = 1763 }, --Lavishly Jeweled Ring
			{ itemID = 5199, groupID = 1, refLootEntry = 1763 }, --Smelting Pants
			gap,
			{ itemID = 2070103, groupID = 1, refLootEntry = 2062869 }, --Ember-Scorched Footguards
			{ itemID = 2062869, groupID = 1, refLootEntry = 2062869 }, --Foreman's Melted Chestguard
			{ itemID = 2074446, groupID = 1, refLootEntry = 2062869 }, --Forgemaster's One-Handed Mallet
			{ itemID = 2065939, groupID = 1, refLootEntry = 2062869 }, --Ore-Tempered Waistwrap
			{ itemID = 2067947, groupID = 1, refLootEntry = 2062869 }, --Searing Metallurgy Leggings
			{ itemID = 2072536, groupID = 1, refLootEntry = 2062869 }, --Smelter's Grasping Gloves
		},
	},
	{
		Name = BabbleBoss["Captain Greenskin"],
		{
			{ itemID = 10403, groupID = 1, refLootEntry = 647 }, --Blackened Defias Belt
			{ itemID = 5201, groupID = 1, refLootEntry = 647 }, --Emberstone Staff
			{ itemID = 5200, groupID = 1, refLootEntry = 647 }, --Impaling Harpoon
			gap,
			{ itemID = 2067944, groupID = 1, refLootEntry = 2060296 }, --Buccaneer's Breeches
			{ itemID = 2065937, groupID = 1, refLootEntry = 2060296 }, --Corsair's Binding Cord
			{ itemID = 2070101, groupID = 1, refLootEntry = 2060296 }, --Deckhand's Treaders
			{ itemID = 2062866, groupID = 1, refLootEntry = 2060296 }, --Defias Sorcerer's Tunic
			{ itemID = 2060296, groupID = 1, refLootEntry = 2060296 }, --Greenskin's Enchanted Hat
			{ itemID = 2074202, groupID = 1, refLootEntry = 2060296 }, --Harpoon of the Seawolf
		},
	},
	{
		Name = BabbleBoss["Mr. Smite"],
		{
			{ itemID = 7230, groupID = 1, refLootEntry = 646 }, --Smite's Mighty Hammer
			{ itemID = 5196, groupID = 1, refLootEntry = 646 }, --Smite's Reaver
			{ itemID = 5192, groupID = 1, refLootEntry = 646 }, --Thief's Blade
			gap,
			{ itemID = 2074201, groupID = 1, refLootEntry = 2062269 }, --Anchorblade
			{ itemID = 2062269, groupID = 1, refLootEntry = 2062269 }, --First Mate's Robe
			{ itemID = 2067299, groupID = 1, refLootEntry = 2062269 }, --Seafarer's Trousers
		},
	},
	{
		Name = BabbleBoss["Cookie"],
		{
			{ itemID = 5198, groupID = 1, refLootEntry = 645 }, --Cookie's Stirring Rod
			{ itemID = 5197, groupID = 1, refLootEntry = 645 }, --Cookie's Tenderizer
			{ itemID = 8490 }, --Cat Carrier (Siamese)
			gap,
			{ itemID = 2074200, groupID = 1, refLootEntry = 2074200 }, --Cookie's Culinary Codex		
		},
	},
	{
		Name = BabbleBoss["Edwin VanCleef"],
		{
			{ itemID = 10399, groupID = 1, refLootEntry = 639 }, --Blackened Defias Armor
			{ itemID = 5193, groupID = 1, refLootEntry = 639 }, --Cape of the Brotherhood
			{ itemID = 5202, groupID = 1, refLootEntry = 639 }, --Corsair's Overshirt
			{ itemID = 5191, groupID = 1, refLootEntry = 639 }, --Cruel Barb
			gap,
			{ itemID = 2062270, groupID = 1, refLootEntry = 2060010 }, --Chestguard of the Reclaimed
			{ itemID = 2061091, groupID = 1, refLootEntry = 2060010 }, --Defiant Mantle
			{ itemID = 2072047, groupID = 1, refLootEntry = 2060010 }, --Hands of the Betrayed Artisan
			{ itemID = 2074197, groupID = 1, refLootEntry = 2060010 }, --Saber of the Lost Mason
			{ itemID = 2060010, groupID = 1, refLootEntry = 2060010 }, --Stonemason's Visage
			{ itemID = 2077903, groupID = 1, refLootEntry = 2060010 }, --Sword of the Defias Leader
			{ itemID = 2069517, groupID = 1, refLootEntry = 2060010 }, --Treads of the Insurgent
			{ itemID = 2067300, groupID = 1, refLootEntry = 2060010 }, --VanCleef's Leggings of Rebellion
		},
		{
			{ itemID = 2874 }, --An Unsent Letter
			{ itemID = 3637 }, --Head of VanCleef
		},
	},
}

--------------------
--- The Stockade ---
--------------------

AtlasLoot_Data["TheStockade"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["The Stockade"],
	Type = "ClassicDungeon",
	Map = "TheStockade",
	{
		Name = BabbleBoss["Targorr the Dread"],
		{
			{ itemID = 5305, groupID = 1, refLootEntry = 1696 }, --Dreadful Blade
			gap,
			{ itemID = 2074427, groupID = 1, refLootEntry = 2074427 }, --Blade of Dreadfury
		},
		{
			{ itemID = 3630 }, --Head of Targorr
		gap,
			{ itemID = 56971, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = BabbleBoss["Kam Deepfury"],
		{
			{ itemID = 1985, groupID = 1, refLootEntry = 1666 }, --Kam's Buckler
			{ itemID = 2280, groupID = 1, refLootEntry = 1666 }, --Kam's Walking Stick
			{ itemID = 1903, groupID = 1, refLootEntry = 1666 }, --Knee Cracker
			gap,
			{ itemID = 2069643, groupID = 1, refLootEntry = 2062387 }, --Cindershade Footwraps
			{ itemID = 2067436, groupID = 1, refLootEntry = 2062387 }, --Dark Iron Legguards
			{ itemID = 2062387, groupID = 1, refLootEntry = 2062387 }, --Deepfury Shadowbind Vest
			{ itemID = 2065491, groupID = 1, refLootEntry = 2062387 }, --Molten Chain Belt
			{ itemID = 2077929, groupID = 1, refLootEntry = 2062387 }, --Stockade Guard Shield
			{ itemID = 2074425, groupID = 1, refLootEntry = 2062387 }, --Thaurissan's Rebellion Crusher
		},
		{
			{ itemID = 3640 }, --Head of Deepfury
		gap,
			{ itemID = 56970, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = BabbleBoss["Bazil Thredd"],
		{
			{ itemID = 1897, groupID = 1, refLootEntry = 1716 }, --Behander
			gap,
			{ itemID = 2062245, groupID = 1, refLootEntry = 2060004 }, --Brotherhood Operative Vest
			{ itemID = 2074433, groupID = 1, refLootEntry = 2060004 }, --Defiant Leader's Blade
			{ itemID = 2061079, groupID = 1, refLootEntry = 2060004 }, --Defias Insurrection Shoulderguards
			{ itemID = 2065360, groupID = 1, refLootEntry = 2060004 }, --Rogue Mason's Girdle
			{ itemID = 2072029, groupID = 1, refLootEntry = 2060004 }, --Seditionist's Grips
			{ itemID = 2067266, groupID = 1, refLootEntry = 2060004 }, --Stockade Breaker Leggings
			{ itemID = 2077932, groupID = 1, refLootEntry = 2060004 }, --Stormwind Rebel's Edge
			{ itemID = 2069486, groupID = 1, refLootEntry = 2060004 }, --Stormwind Stonemason Boots
			{ itemID = 2060004, groupID = 1, refLootEntry = 2060004 }, --Thredd's Conspirator Mask
		},
		{
			{ itemID = 2926 }, --Head of Bazil Thredd
			{ itemID = 56972, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = BabbleBoss["Hamhock"],
		{
			{ itemID = 2827, groupID = 1, refLootEntry = 1717 }, --Hamhock's Ham Hacker
			gap,
			{ itemID = 2074434, groupID = 1, refLootEntry = 2074434 }, --Hamhock's Riot Cleaver
		},
		{
			{ itemID = 56973, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = BabbleBoss["Dextren Ward"],
		{
			{ itemID = 3432, groupID = 1, refLootEntry = 1663 }, --Unnecessary Big Shanker
			gap,
			{ itemID = 2069527, groupID = 1, refLootEntry = 2062284 }, --Footpads of the Imprisoned
			{ itemID = 2067315, groupID = 1, refLootEntry = 2062284 }, --Leggings of the Rebellion
			{ itemID = 2074422, groupID = 1, refLootEntry = 2062284 }, --Polearm of Ward's Defiance
			{ itemID = 2065390, groupID = 1, refLootEntry = 2062284 }, --Sash of the Riotous
			{ itemID = 2062284, groupID = 1, refLootEntry = 2062284 }, --Vest of the Captive Monitor
		},
		{
			{ itemID = 3628 }, --Hand of Dextren Ward
		gap,
			{ itemID = 56969, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = BabbleBoss["Bruegal Ironknuckle"],
		{
			{ itemID = 2942, groupID = 1, refLootEntry = 1720 }, --Iron Knuckles
			{ itemID = 3228, groupID = 1, refLootEntry = 1720 }, --Jimmied Handcuffs
			{ itemID = 2941, groupID = 1, refLootEntry = 1720 }, --Prison Shank
			gap,
			{ itemID = 2074436, groupID = 1, refLootEntry = 2062246 }, --Bruegal's Knuckle Smasher
			{ itemID = 2071460, groupID = 1, refLootEntry = 2062246 }, --Cuffs of Mercenary's Resolve
			{ itemID = 2069487, groupID = 1, refLootEntry = 2062246 }, --Hightread Adept Stompers
			{ itemID = 2062246, groupID = 1, refLootEntry = 2062246 }, --Knuckle-Vaulted Vest
			{ itemID = 2067267, groupID = 1, refLootEntry = 2062246 }, --Leggings of the Ironbreaker
		},
		{
			{ itemID = 56974, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Quest Item's",
		{
			{ itemID = 2909 }, --Red Wool Bandana
		},
	},
}

-------------------------
--- The Sunken Temple ---
-------------------------

AtlasLoot_Data["SunkenTemple"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Sunken Temple",
	Type = "ClassicDungeon",
	Map = "TheSunkenTemple",
	{
		Name = "Spawn of Hakkar",
		{
			{ itemID = 10802 }, --Wingveil Cloak
			{ itemID = 10801 }, --Slitherscale Boots
			gap,
			{ itemID = 13014, groupID = 1, refLootEntry = 24028 }, --Axe of Rin'ji
			{ itemID = 13126, groupID = 1, refLootEntry = 24028 }, --Battlecaller Gauntlets
			{ itemID = 13027, groupID = 1, refLootEntry = 24028 }, --Bonesnapper
			{ itemID = 13008, groupID = 1, refLootEntry = 24028 }, --Dalewind Trousers
			{ itemID = 5266, groupID = 1, refLootEntry = 24028 }, --Eye of Adaegus
			{ itemID = 13073, groupID = 1, refLootEntry = 24028 }, --Mugthol's Helm
			{ itemID = 13144, groupID = 1, refLootEntry = 24028 }, --Serenity Belt
			{ itemID = 13059, groupID = 1, refLootEntry = 24028 }, --Stoneraven
			{ itemID = 11302, groupID = 1, refLootEntry = 24028 }, --Uther's Strength
			{ itemID = 13052, groupID = 1, refLootEntry = 24028 }, --Warmonger
			{ itemID = 809, groupID = 1, refLootEntry = 24084 }, --Bloodrazor
			{ itemID = 1315, groupID = 1, refLootEntry = 24084 }, --Lei of Lilies
			{ itemID = 17007, groupID = 1, refLootEntry = 24084 }, --Stonerender Gauntlets
			{ itemID = 1979, groupID = 1, refLootEntry = 24084 }, --Wall of the Dead

		},
	},
	{
		Name = "Troll Minibosses",
		{
			{ itemID = 10787 }, --Atal'ai Gloves
			{ itemID = 10783 }, --Atal'ai Spaulders
			{ itemID = 10785 }, --Atal'ai Leggings
			{ itemID = 10784 }, --Atal'ai Breastplate
			{ itemID = 10786 }, --Atal'ai Boots
			{ itemID = 10788 }, --Atal'ai Girdle
		gap,
			{ itemID = 20606 }, --Amber Voodoo Feather
			{ itemID = 20607 }, --Blue Voodoo Feather
			{ itemID = 20608 }, --Green Voodoo Feather
		},
	},
	{
		Name = BabbleBoss["Atal'alarion"],
		{
			{ itemID = 10800 }, --Darkwater Bracers
			{ itemID = 10798 }, --Atal'alarion's Tusk Ring
			{ itemID = 10799 }, --Headspike
		},
	},
	{
		Name = BabbleBoss["Dreamscythe"],
		{
			{ itemID = 12464, groupID = 1, refLootEntry = 35011 }, --Bloodfire Talons
			{ itemID = 12466, groupID = 1, refLootEntry = 35011 }, --Dawnspire Cord
			{ itemID = 10795, groupID = 1, refLootEntry = 35011 }, --Drakeclaw Band
			{ itemID = 12463, groupID = 1, refLootEntry = 35011 }, --Drakefang Butcher
			{ itemID = 10796, groupID = 1, refLootEntry = 35011 }, --Drakestone
			{ itemID = 10797, groupID = 1, refLootEntry = 35011 }, --Firebreather
			{ itemID = 12465, groupID = 1, refLootEntry = 35011 }, --Nightfall Drape
			{ itemID = 12243, groupID = 1, refLootEntry = 35011 }, --Smoldering Claw
		},
	},
	{
		Name = BabbleBoss["Weaver"],
		{
			{ itemID = 12464, groupID = 1, refLootEntry = 35011 }, --Bloodfire Talons
			{ itemID = 12466, groupID = 1, refLootEntry = 35011 }, --Dawnspire Cord
			{ itemID = 10795, groupID = 1, refLootEntry = 35011 }, --Drakeclaw Band
			{ itemID = 12463, groupID = 1, refLootEntry = 35011 }, --Drakefang Butcher
			{ itemID = 10796, groupID = 1, refLootEntry = 35011 }, --Drakestone
			{ itemID = 10797, groupID = 1, refLootEntry = 35011 }, --Firebreather
			{ itemID = 12465, groupID = 1, refLootEntry = 35011 }, --Nightfall Drape
			{ itemID = 12243, groupID = 1, refLootEntry = 35011 }, --Smoldering Claw
		},
	},
	{
		Name = BabbleBoss["Avatar of Hakkar"],
		{
			{ itemID = 10846, groupID = 1, refLootEntry = 35012 }, --Bloodshot Greaves
			{ itemID = 12462, groupID = 1, refLootEntry = 35012 }, --Embrace of the Wind Serpent
			{ itemID = 10843, groupID = 1, refLootEntry = 35012 }, --Featherskin Cape
			{ itemID = 10838, groupID = 1, refLootEntry = 35012 }, --Might of Hakkar
			{ itemID = 10844, groupID = 1, refLootEntry = 35012 }, --Spire of Hakkar
			{ itemID = 10845, groupID = 1, refLootEntry = 35012 }, --Warrior's Embrace
			{ itemID = 10842, groupID = 1, refLootEntry = 35012 }, --Windscale Sarong
		gap,
			{ itemID = 10663 }, --Essence of Hakkar
		},
	},
	{
		Name = BabbleBoss["Jammal'an the Prophet"],
		{
			{ itemID = 10806 }, --Vestments of the Atal'ai Prophet
			{ itemID = 10808 }, --Gloves of the Atal'ai Prophet
			{ itemID = 10807 }, --Kilt of the Atal'ai Prophet
			gap,
			{ itemID = 2062811, groupID = 1, refLootEntry = 2061283 }, --Augur's Vestment
			{ itemID = 2065886, groupID = 1, refLootEntry = 2061283 }, --Girdle of Dark Rituals
			{ itemID = 2072498, groupID = 1, refLootEntry = 2061283 }, --Handwraps of Prophetic Sacrifice
			{ itemID = 2061283, groupID = 1, refLootEntry = 2061283 }, --Mantle of the Atal'ai Prophet
			{ itemID = 2064074, groupID = 1, refLootEntry = 2061283 }, --Robes of Shadow Invocation
			{ itemID = 2075191, groupID = 1, refLootEntry = 2061283 }, --Staff of Hakkar's Chosen
			{ itemID = 2067888, groupID = 1, refLootEntry = 2061283 }, --Trousers of Fel Insight
		},
		{
			{ itemID = 6212 }, --Head of Jammal'an
		},
	},
	{
		Name = BabbleBoss["Ogom the Wretched"],
		{
			{ itemID = 10805 }, --Eater of the Dead
			{ itemID = 10804 }, --Fist of the Damned
			{ itemID = 10803 }, --Blade of the Wretched
			gap,
			{ itemID = 2075192, groupID = 1, refLootEntry = 2060266 }, --Blade of the Soulflayer's Wrath
			{ itemID = 2065885, groupID = 1, refLootEntry = 2060266 }, --Bloodbound Sash of Shadows
			{ itemID = 2071564, groupID = 1, refLootEntry = 2060266 }, --Cuffs of the Suffering Pact
			{ itemID = 2070044, groupID = 1, refLootEntry = 2060266 }, --Footwraps of the Corrupted
			{ itemID = 2072497, groupID = 1, refLootEntry = 2060266 }, --Gloves of the Twisted Will
			{ itemID = 2067887, groupID = 1, refLootEntry = 2060266 }, --Leggings of Dark Allegiance
			{ itemID = 2062810, groupID = 1, refLootEntry = 2060266 }, --Ogom's Wretched Shroud
			{ itemID = 2064073, groupID = 1, refLootEntry = 2060266 }, --Robe of the Cursed Protector
			{ itemID = 2060266, groupID = 1, refLootEntry = 2060266 }, --Veil of the Wretched Oath
		},
	},
	{
		Name = BabbleBoss["Morphaz"],
		{
			{ itemID = 12464, groupID = 1, refLootEntry = 35011 }, --Bloodfire Talons
			{ itemID = 12466, groupID = 1, refLootEntry = 35011 }, --Dawnspire Cord
			{ itemID = 10795, groupID = 1, refLootEntry = 35011 }, --Drakeclaw Band
			{ itemID = 12463, groupID = 1, refLootEntry = 35011 }, --Drakefang Butcher
			{ itemID = 10796, groupID = 1, refLootEntry = 35011 }, --Drakestone
			{ itemID = 10797, groupID = 1, refLootEntry = 35011 }, --Firebreather
			{ itemID = 12465, groupID = 1, refLootEntry = 35011 }, --Nightfall Drape
			{ itemID = 12243, groupID = 1, refLootEntry = 35011 }, --Smoldering Clawhandler
			gap,
			{ itemID = 20022 }, --Azure Key
			{ itemID = 20085 }, --Arcane Shard
			{ itemID = 20025 }, --Blood of Morphaz
			{ itemID = 20019 }, --Tooth of Morphaz
		},
	},
	{
		Name = BabbleBoss["Hazzas"],
		{
			{ itemID = 12464, groupID = 1, refLootEntry = 35011 }, --Bloodfire Talons
			{ itemID = 12466, groupID = 1, refLootEntry = 35011 }, --Dawnspire Cord
			{ itemID = 10795, groupID = 1, refLootEntry = 35011 }, --Drakeclaw Band
			{ itemID = 12463, groupID = 1, refLootEntry = 35011 }, --Drakefang Butcher
			{ itemID = 10796, groupID = 1, refLootEntry = 35011 }, --Drakestone
			{ itemID = 10797, groupID = 1, refLootEntry = 35011 }, --Firebreather
			{ itemID = 12465, groupID = 1, refLootEntry = 35011 }, --Nightfall Drape
			{ itemID = 12243, groupID = 1, refLootEntry = 35011 }, --Smoldering Clawhandler
		},
	},
	{
		Name = BabbleBoss["Shade of Eranikus"],
		{
			{ itemID = 10835, groupID = 1, refLootEntry = 5709 }, --Crest of Supremacy
			{ itemID = 10828, groupID = 1, refLootEntry = 5709 }, --Dire Nail
			{ itemID = 10847, groupID = 1, refLootEntry = 5709 }, --Dragon's Call
			{ itemID = 10833, groupID = 1, refLootEntry = 5709 }, --Horns of Eranikus
			{ itemID = 10836, groupID = 1, refLootEntry = 5709 }, --Rod of Corrosion
			{ itemID = 10829, groupID = 1, refLootEntry = 5709 }, --The Dragon's Eye
			{ itemID = 10837, groupID = 1, refLootEntry = 5709 }, --Tooth of Eranikus
		gap,
			{ itemID = 10454 }, --Essence of Eranikus
			{ itemID = 10455 }, --Chained Essence of Eranikus
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 10630 }, --Soulcatcher Halo
			{ itemID = 10629 }, --Mistwalker Boots
			{ itemID = 10632 }, --Slimescale Bracers
			{ itemID = 10631 }, --Murkwater Gauntlets
			{ itemID = 10633 }, --Silvershell Leggings
			{ itemID = 10634 }, --Mindseye Circle
		gap,
			{ itemID = 15733 }, --Pattern: color.GREEN Dragonscale Leggings
			{ itemID = 16216 }, --Formula: Enchant Cloak - Greater Resistance
		gap,
			{ itemID = 11318 }, --Atal'ai Haze
			{ itemID = 6181 }, --Fetish of Hakkar
		},
		{
			{ itemID = 10623 }, --Winter's Bite
			{ itemID = 10625 }, --Stealthblade
			{ itemID = 10628 }, --Deathblow
			{ itemID = 10626 }, --Ragehammer
			{ itemID = 10627 }, --Bludgeon of the Grinning Dog
			{ itemID = 10624 }, --Stinging Bow
		},
	},
}

---------------
--- Uldaman ---
---------------

AtlasLoot_Data["Uldaman"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Uldaman"],
	Type = "ClassicDungeon",
	Map = "Uldaman",
	{
		Name = AL["Magregan Deepshadow"],
		{
			{ itemID = 4635 }, --Hammertoe's Amulet
		},
	},
	{
		Name = "Tablet of Ryun'eh",
		{
			{ itemID = 4631 }, --Tablet of Ryun'eh
		},
	},
	{
		Name = AL["Krom Stoutarm's Chest"],
		{
			{ itemID = 8027 }, --Krom Stoutarm's Treasure
		},
	},
	{
		Name = AL["Garrett Family Chest"],
		{
			{ itemID = 8026 }, --Garrett Family Treasure
		},
	},
	{
		Name = BabbleBoss["Digmaster Shovelphlange"],
		{
			{ itemID = 9375 }, --Expert Goldminer's Helmet
			{ itemID = 9378 }, --Shovelphlange's Mining Axe
			{ itemID = 9382 }, --Tromping Miner's Boots
		},
	},
	{
		Name = BabbleBoss["Baelog"],
		{
			{ icon = "INV_Box_01", name = color.WHITE..BabbleBoss["Baelog"] },
			{ itemID = 9401 }, --Nordic Longshank
			{ itemID = 9400 }, --Baelog's Shortbow
			{ itemID = 9399 }, --Precision Arrow
			gap,
			{ itemID = 2078598, groupID = 1, refLootEntry = 2060219 }, --Ancient Bow of Uldaman
			{ itemID = 2060219, groupID = 1, refLootEntry = 2060219 }, --Baelog's Helm of Nordic Adventure
			{ itemID = 2075322, groupID = 1, refLootEntry = 2060219 }, --Baelog's Sword of Discovery
			{ itemID = 2062709, groupID = 1, refLootEntry = 2060219 }, --Explorers' League Tunic
			{ itemID = 2067783, groupID = 1, refLootEntry = 2060219 }, --Legwraps of the Lost Viking
			{ itemID = 2069974, groupID = 1, refLootEntry = 2060219 }, --Runic Pathfinder's Boots
			{ itemID = 2065792, groupID = 1, refLootEntry = 2060219 }, --Titanforged Girdle
			{ itemID = 2064027, groupID = 1, refLootEntry = 2060219 }, --Uldaman Raider's Chestguard
			{ itemID = 3595662, groupID = 1, refLootEntry = 3595662 }, --Dwarven Crossbow

		gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Eric 'The Swift'"] },
			{ itemID = 9394 }, --Horned Viking Helmet
			{ itemID = 9398 }, --Worn Running Boots
			{ itemID = 2459 }, --Swiftness Potion
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Olaf"] },
			{ itemID = 9404 }, --Olaf's All Purpose Shield
			{ itemID = 9403 }, --Battered Viking Shield
			{ itemID = 1177 }, --Oil of Olaf
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE..AL["Baelog's Chest"] },
			{ itemID = 7740 }, --Gni'kiv Medallion
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..AL["Conspicuous Urn"] },
			{ itemID = 7671 }, --Shattered Necklace Topaz
		},
	},
	{
		Name = BabbleBoss["Revelosh"],
		{
			{ itemID = 9390 }, --Revelosh's Gloves
			{ itemID = 9389 }, --Revelosh's Spaulders
			{ itemID = 9388 }, --Revelosh's Armguards
			{ itemID = 9387 }, --Revelosh's Boots
		gap,
			{ itemID = 7741 }, --The Shaft of Tsol
		},
	},
	{
		Name = BabbleBoss["Ironaya"],
		{
			{ itemID = 9407 }, --Stoneweaver Leggings
			{ itemID = 9409 }, --Ironaya's Bracers
			{ itemID = 9408 }, --Ironshod Bludgeon
			gap,
			{ itemID = 2075372, groupID = 1, refLootEntry = 2075372 }, --Arcing War Mace of Ironaya
		},
	},
	{
		Name = BabbleBoss["Obsidian Sentinel"],
		{
			{ itemID = 8053 }, --Obsidian Power Source
			gap,
			{ itemID = 2075372, groupID = 1, refLootEntry = 2075372 }, --Arcing War Mace of Ironaya
			{ itemID = 868, groupID = 1, refLootEntry = 24080 }, --Ardent Custodian
			{ itemID = 2825, groupID = 1, refLootEntry = 24080 }, --Bow of Searing Arrows
			{ itemID = 867, groupID = 1, refLootEntry = 24080 }, --Gloves of Holy Might
			{ itemID = 1980, groupID = 1, refLootEntry = 24080 }, --Underworld Band
		},
	},
	{
		Name = BabbleBoss["Ancient Stone Keeper"],
		{
			{ itemID = 9411 }, --Rockshard Pauldrons
			{ itemID = 9410 }, --Cragfists
		},
	},
	{
		Name = BabbleBoss["Galgann Firehammer"],
		{
			{ itemID = 11311 }, --Emberscale Cape
			{ itemID = 11310 }, --Flameseer Mantle
			{ itemID = 9419 }, --Galgann's Firehammer
			{ itemID = 9412 }, --Galgann's Fireblaster
			gap,
			{ itemID = 2065828, groupID = 1, refLootEntry = 2060239 }, --Belt of Incandescent Warding
			{ itemID = 2070006, groupID = 1, refLootEntry = 2060239 }, --Firewalker's Sandals
			{ itemID = 2075384, groupID = 1, refLootEntry = 2060239 }, --Flamelash Dagger of the Dark Iron
			{ itemID = 2061250, groupID = 1, refLootEntry = 2060239 }, --Galgann's Emberguard Mantle
			{ itemID = 2060239, groupID = 1, refLootEntry = 2060239 }, --Galgann's Flamebinder Circlet
			{ itemID = 2072445, groupID = 1, refLootEntry = 2060239 }, --Inferno Grasp Handwraps
			{ itemID = 2067823, groupID = 1, refLootEntry = 2060239 }, --Molten Core Legwraps
			{ itemID = 2062748, groupID = 1, refLootEntry = 2060239 }, --Pyroclasmic Robes of Galgann
			{ itemID = 3595662, groupID = 1, refLootEntry = 3595662 }, --Dwarven Crossbow
		},
	},
	{
		Name = "Tablet of Will",
		{
			{ itemID = 5824 }, --Tablet of Will
		},
	},
	{
		Name = "Shadowforge Cache",
		{
			{ itemID = 7669 }, --Shattered Necklace Ruby
		},
	},
	{
		Name = BabbleBoss["Grimlok"],
		{
			{ itemID = 9415 }, --Grimlok's Tribal Vestments
			{ itemID = 9414 }, --Oilskin Leggings
			{ itemID = 9416 }, --Grimlok's Charge
			gap,
			{ itemID = 2075109, groupID = 1, refLootEntry = 2075109 }, --Grimlok's Lightning Rod
			gap,
			{ itemID = 7670 }, --Shattered Necklace Sapphire
		},
	},
	{
		Name = BabbleBoss["Archaedas"],
		{
			{ itemID = 11118 }, --Archaedic Stone
			{ itemID = 9418 }, --Stoneslayer
			{ itemID = 9413 }, --The Rockpounder
			gap,
			{ itemID = 7672 }, --Shattered Necklace Power Source
			gap,
			{ itemID = 2074735, groupID = 1, refLootEntry = 2074735 }, --Hammer of the Titanic Sentinel
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 9397 }, --Energy Cloak
			{ itemID = 9431 }, --Papal Fez
			{ itemID = 9429 }, --Miner's Hat of the Deep
			{ itemID = 9420 }, --Adventurer's Pith Helmet
			{ itemID = 9406 }, --Spirewind Fetter
			{ itemID = 9428 }, --Unearthed Bands
			{ itemID = 9430 }, --Spaulders of a Lost Age
			{ itemID = 9396 }, --Legguards of the Vault
			{ itemID = 9432 }, --Skullplate Bracers
			{ itemID = 9393 }, --Beacon of Hope
			{ itemID = 7666 }, --Shattered Necklace
			{ itemID = 7673 }, --Talvash's Enhancing Necklace
		},
		{
			{ itemID = 9384 }, --Stonevault Shiv
			{ itemID = 9392 }, --Annealed Blade
			{ itemID = 9424 }, --Ginn-su Sword
			{ itemID = 9465 }, --Digmaster 5000
			{ itemID = 9383 }, --Obsidian Cleaver
			{ itemID = 9425 }, --Pendulum of Doom
			{ itemID = 9386 }, --Excavator's Brand
			{ itemID = 9427 }, --Stonevault Bonebreaker
			{ itemID = 9423 }, --The Jackhammer
			{ itemID = 9391 }, --The Shoveler
			{ itemID = 9381 }, --Earthen Rod
			{ itemID = 9426 }, --Monolithic Bow
			{ itemID = 9422 }, --Shadowforge Bushmaster
		},
	},
}

-----------------------
--- Wailing Caverns ---
-----------------------

AtlasLoot_Data["WailingCaverns"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Wailing Caverns"],
	Type = "ClassicDungeon",
	Map = "WailingCaverns",
	{
		Name = AL["Kalldan Felmoon"],
		{
			{ itemID = 6475 }, --Pattern: Deviate Scale Gloves
			{ itemID = 6474 }, --Pattern: Deviate Scale Cloak
		},
	},
	{
		Name = BabbleBoss["Mad Magglish"],
		{
			{ itemID = 5334 }, --99-Year-Old Port
		},
	},
	{
		Name = BabbleBoss["Trigore the Lasher"],
		{
			{ itemID = 5425 }, --Runescale Girdle
			{ itemID = 5426 }, --Serpent's Kiss
		},
	},
	{
		Name = BabbleBoss["Boahn"],
		{
			{ itemID = 5423 }, --Boahn's Fang
			{ itemID = 5422 }, --Brambleweed Leggings
		},
	},
	{
		Name = BabbleBoss["Lord Cobrahn"],
		{
			{ itemID = 6460, groupID = 1, refLootEntry = 3669 }, --Cobrahn's Grasp
			{ itemID = 10410, groupID = 1, refLootEntry = 3669 }, --Leggings of the Fang
			{ itemID = 6465, groupID = 1, refLootEntry = 3669 }, --Robe of the Moccasin
			gap,
			{ itemID = 2062556, groupID = 1, refLootEntry = 2062556 }, --Cobrahn's Enshrouded Vestments
			{ itemID = 2067626, groupID = 1, refLootEntry = 2062556 }, --Dreamwoven Leggings
			{ itemID = 2069826, groupID = 1, refLootEntry = 2062556 }, --Footwraps of the Nightmare
			{ itemID = 2072280, groupID = 1, refLootEntry = 2062556 }, --Grip of the Emerald Coils
			{ itemID = 2077980, groupID = 1, refLootEntry = 2062556 }, --Mace of Twisted Dreams
			{ itemID = 2065656, groupID = 1, refLootEntry = 2062556 }, --Serpentbinder's Girdle
			{ itemID = 2074847, groupID = 1, refLootEntry = 2062556 }, --Venomfang Claws
		},
	},
	{
		Name = BabbleBoss["Lady Anacondra"],
		{
			{ itemID = 10412, groupID = 1, refLootEntry = 3671 }, --Belt of the Fang
			{ itemID = 5404, groupID = 1, refLootEntry = 3671 }, --Serpent's Shoulders
			{ itemID = 6446 }, --Snakeskin Bag
			gap,
			{ itemID = 2063944, groupID = 1, refLootEntry = 2063944 }, --Anacondra's Envenomed Vestment
			{ itemID = 2072297, groupID = 1, refLootEntry = 2063944 }, --Clutches of the Serpent
			{ itemID = 2067648, groupID = 1, refLootEntry = 2063944 }, --Corrupted Dreamweave Leggings
			{ itemID = 2069850, groupID = 1, refLootEntry = 2063944 }, --Creeping Vine Sandals
			{ itemID = 2065673, groupID = 1, refLootEntry = 2063944 }, --Serpentbinder's Sash
			{ itemID = 2074849, groupID = 1, refLootEntry = 2063944 }, --Venomous Channeler's Staff			
		},
	},
	{
		Name = BabbleBoss["Kresh"],
		{
			{ itemID = 13245, groupID = 1, refLootEntry = 3653 }, --Kresh's Back
			{ itemID = 6447, groupID = 1, refLootEntry = 3653 }, --Worn Turtle Shell Shield
		},
	},
	{
		Name = BabbleBoss["Lord Pythas"],
		{
			{ itemID = 6473, groupID = 1, refLootEntry = 3670 }, --Armor of the Fang
			{ itemID = 6472, groupID = 1, refLootEntry = 3670 }, --Stinging Viper
			gap,
			{ itemID = 2074848, groupID = 1, refLootEntry = 2062557 }, --Axe of the Serpent's Fury
			{ itemID = 2065657, groupID = 1, refLootEntry = 2062557 }, --Belt of the Emerald Coil
			{ itemID = 2069827, groupID = 1, refLootEntry = 2062557 }, --Boots of the Nightmare's Path
			{ itemID = 2077981, groupID = 1, refLootEntry = 2062557 }, --Fang of the Dreaming Warden
			{ itemID = 2072281, groupID = 1, refLootEntry = 2062557 }, --Grips of the Dreambinder
			{ itemID = 2067627, groupID = 1, refLootEntry = 2062557 }, --Leggings of the Fang's Whisper
			{ itemID = 2062557, groupID = 1, refLootEntry = 2062557 }, --Robes of the Serpent's Dream
		},
	},
	{
		Name = BabbleBoss["Skum"],
		{
			{ itemID = 6449, groupID = 1, refLootEntry = 3674 }, --Glowing Lizardscale Cloak
			{ itemID = 6448, groupID = 1, refLootEntry = 3674 }, --Tail Spike
		},
	},
	{
		Name = BabbleBoss["Lord Serpentis"],
		{
			{ itemID = 10411, groupID = 1, refLootEntry = 3673 }, --Footpads of the Fang
			{ itemID = 6459, groupID = 1, refLootEntry = 3673 }, --Savage Trodders
			{ itemID = 5970, groupID = 1, refLootEntry = 3673 }, --Serpent Gloves
			{ itemID = 6469, groupID = 1, refLootEntry = 3673 }, --Venomstrike
			gap,
			{ itemID = 2074851, groupID = 1, refLootEntry = 2061180 }, --Axe of the Dream's Echo
			{ itemID = 2065658, groupID = 1, refLootEntry = 2061180 }, --Belt of Corrupted Growth
			{ itemID = 2071498, groupID = 1, refLootEntry = 2061180 }, --Bracers of Elemental Disruption
			{ itemID = 2069828, groupID = 1, refLootEntry = 2061180 }, --Footwraps of the Fang
			{ itemID = 2072282, groupID = 1, refLootEntry = 2061180 }, --Grips of the Untamed
			{ itemID = 2067628, groupID = 1, refLootEntry = 2061180 }, --Leggings of Serpentine Will
			{ itemID = 2061180, groupID = 1, refLootEntry = 2061180 }, --Serpentis's Chaotic Mantle
			{ itemID = 2062558, groupID = 1, refLootEntry = 2061180 }, --Vestments of Twisted Dreams
		},
	},
	{
		Name = BabbleBoss["Verdan the Everliving"],
		{
			{ itemID = 6631, groupID = 1, refLootEntry = 5775 }, --Living Root
			{ itemID = 6630, groupID = 1, refLootEntry = 5775 }, --Seedcloud Buckler
			{ itemID = 6629, groupID = 1, refLootEntry = 5775 }, --Sporid Cape
		},
	},
	{
		Name = BabbleBoss["Mutanus the Devourer"],
		{
			{ itemID = 6463, groupID = 1, refLootEntry = 3654 }, --Deep Fathom Ring
			{ itemID = 6627, groupID = 1, refLootEntry = 3654 }, --Mutant Scale Breastplate
			{ itemID = 6461, groupID = 1, refLootEntry = 3654 }, --Slime-encrusted Pads
			{ itemID = 10441 }, --Glowing Shard
		},
	},
	{
		Name = BabbleBoss["Deviate Faerie Dragon"],
		{
			{ itemID = 6632 }, --Feyscale Cloak
			{ itemID = 5243 }, --Firebelcher
		},
	},
}

------------------
--- Zul'Farrak ---
------------------

AtlasLoot_Data["ZulFarrak"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Zul'Farrak"],
	Type = "ClassicDungeon",
	Map = "ZulFarrak",
	{
		Name = BabbleBoss["Antu'sul"],
		{
			{ itemID = 9640 }, --Vice Grips
			{ itemID = 9641 }, --Lifeblood Amulet
			{ itemID = 9639 }, --The Hand of Antu'sul
			gap,
			{ itemID = 9379 }, --Sang'thraze the Deflector
			{ itemID = 9372 }, --Sul'thraze the Lasher
			gap,
			{ itemID = 2062888, groupID = 1, refLootEntry = 2062888 }, --Antu'sul's Mystic Garb
			{ itemID = 2075450, groupID = 1, refLootEntry = 2062888 }, --Antu'sul's Thunderous Mace
			{ itemID = 2067968, groupID = 1, refLootEntry = 2062888 }, --Bindings of Earthen Spirits
			{ itemID = 2065958, groupID = 1, refLootEntry = 2062888 }, --Desert Walker's Belt
			{ itemID = 2072557, groupID = 1, refLootEntry = 2062888 }, --Earthshaper's Grips
			{ itemID = 2070137, groupID = 1, refLootEntry = 2062888 }, --Farraki Ritual Sandals
			{ itemID = 2064118, groupID = 1, refLootEntry = 2062888 }, --Sandfury Shaman's Vest
			{ itemID = 2071591, groupID = 1, refLootEntry = 2062888 }, --Wrists of the Voodoo Guardians
		},
	},
	{
		Name = BabbleBoss["Theka the Martyr"],
		{
			{ itemID = 13134, groupID = 1, refLootEntry = 24046 }, --Belt of the Gladiator
			{ itemID = 13109, groupID = 1, refLootEntry = 24046 }, --Blackflame Cape
			{ itemID = 13043, groupID = 1, refLootEntry = 24046 }, --Blade of the Titans
			{ itemID = 13055, groupID = 1, refLootEntry = 24046 }, --Bonechewer
			{ itemID = 13018, groupID = 1, refLootEntry = 24046 }, --Executioner's Cleaver
			{ itemID = 13076, groupID = 1, refLootEntry = 24046 }, --Giantslayer Bracers
			{ itemID = 13035, groupID = 1, refLootEntry = 24046 }, --Serpent Slicer
			{ itemID = 13089, groupID = 1, refLootEntry = 24046 }, --Skibi's Pendant
			{ itemID = 13039, groupID = 1, refLootEntry = 24046 }, --Skull Splitting Crossbow
			{ itemID = 13112, groupID = 1, refLootEntry = 24046 }, --Winged Helm
			gap,
			{ itemID = 2072490, groupID = 1, refLootEntry = 2061278 }, --Gloves of Ancestral Duty
			{ itemID = 2067879, groupID = 1, refLootEntry = 2061278 }, --Leggings of Devotion's Sacrifice
			{ itemID = 2061278, groupID = 1, refLootEntry = 2061278 }, --Mantle of Sacred Resolve
			{ itemID = 2062802, groupID = 1, refLootEntry = 2061278 }, --Robe of the Martyr's Zeal
			{ itemID = 2065879, groupID = 1, refLootEntry = 2061278 }, --Sash of the Desert Guardian
			{ itemID = 2075378, groupID = 1, refLootEntry = 2061278 }, --Staff of Theka's Legacy
		},
		{
			{ itemID = 10660 }, --First Mosh'aru Tablet
		},
	},
	{
		Name = BabbleBoss["Witch Doctor Zum'rah"],
		{
			{ itemID = 18083 }, --Jumanza Grips
			{ itemID = 18082 }, --Zum'rah's Vexing Cane
			gap,
			{ itemID = 2065844, groupID = 1, refLootEntry = 2060247 }, --Girdle of Dark Rituals
			{ itemID = 2064045, groupID = 1, refLootEntry = 2060247 }, --Hexed Armor of Zum'rah
			{ itemID = 2067841, groupID = 1, refLootEntry = 2060247 }, --Leggings of the Desert Witch Doctor
			{ itemID = 2062765, groupID = 1, refLootEntry = 2060247 }, --Mystic Shaman's Tunic
			{ itemID = 2061259, groupID = 1, refLootEntry = 2060247 }, --Sandfury Ritual Shoulderpads
			{ itemID = 2071544, groupID = 1, refLootEntry = 2060247 }, --Spiritbinder's Bindings
			{ itemID = 2075377, groupID = 1, refLootEntry = 2060247 }, --Zum'rah's Shadowstaff
			{ itemID = 2060247, groupID = 1, refLootEntry = 2060247 }, --Zum'rah's Voodoo Headdress
		},
	},
	{
		Name = BabbleBoss["Nekrum Gutchewer"],
		{
			{ itemID = 14549, groupID = 1, refLootEntry = 24081 }, --Boots of Avoidance
			{ itemID = 2164, groupID = 1, refLootEntry = 24081 }, --Gut Ripper
			{ itemID = 1981, groupID = 1, refLootEntry = 24081 }, --Icemail Jerkin
			{ itemID = 1982, groupID = 1, refLootEntry = 24081 }, --Nightblade
			gap,
			{ itemID = 2072488, groupID = 1, refLootEntry = 2060263 }, --Bloodstained Handguards
			{ itemID = 2065878, groupID = 1, refLootEntry = 2060263 }, --Desert Hunter's Girdle
			{ itemID = 2075425, groupID = 1, refLootEntry = 2060263 }, --Foecrusher's Voodoo Maul
			{ itemID = 2061276, groupID = 1, refLootEntry = 2060263 }, --Gutchewer's Ritual Shoulderguards
			{ itemID = 2070037, groupID = 1, refLootEntry = 2060263 }, --Mystic Sandals of Nekrum
			{ itemID = 2060263, groupID = 1, refLootEntry = 2060263 }, --Nekrum's Voodoo Helm
			{ itemID = 2064068, groupID = 1, refLootEntry = 2060263 }, --Sandfury Protector's Chestplate
			{ itemID = 2062800, groupID = 1, refLootEntry = 2060263 }, --Savage Tanaris Tunic
			{ itemID = 2067877, groupID = 1, refLootEntry = 2060263 }, --Trollbone Legplates
		},
		{
			{ itemID = 9471 }, --Nekrum's Medallion
		},
	},
	{
		Name = BabbleBoss["Shadowpriest Sezz'ziz"],
		{
			{ itemID = 9470 }, --Bad Mojo Mask
			{ itemID = 9473 }, --Jinxed Hoodoo Skin
			{ itemID = 9474 }, --Jinxed Hoodoo Kilt
			{ itemID = 9475 }, --Diabolic Skiver
			gap,
			{ itemID = 2072461, groupID = 1, refLootEntry = 2061261 }, --Grips of Loa's Dark Whispers
			{ itemID = 2067843, groupID = 1, refLootEntry = 2061261 }, --Leggings of the Enshadowed Ritual
			{ itemID = 2061261, groupID = 1, refLootEntry = 2061261 }, --Mantle of Duskbinding Shadows
			{ itemID = 2062767, groupID = 1, refLootEntry = 2061261 }, --Robes of the Forsaken Voids
			{ itemID = 2065846, groupID = 1, refLootEntry = 2061261 }, --Sash of the Eclipsed Spirits
			{ itemID = 2075380, groupID = 1, refLootEntry = 2061261 }, --Staff of the Twilit Chanter

		},
	},
	{
		Name = BabbleBoss["Dustwraith"],
		{
			{ itemID = 12471 }, --Desertwalker Cane
			gap,
			{ itemID = 2071607, groupID = 1, refLootEntry = 2061348 }, --Bindings of the Perished
			{ itemID = 2075611, groupID = 1, refLootEntry = 2061348 }, --Dagger of Silent Strikes
			{ itemID = 2068053, groupID = 1, refLootEntry = 2061348 }, --Dune Wraith Legwraps
			{ itemID = 2062957, groupID = 1, refLootEntry = 2061348 }, --Ethereal Whisper Shirt
			{ itemID = 2072619, groupID = 1, refLootEntry = 2061348 }, --Gloves of the Ghostly Veil
			{ itemID = 2061348, groupID = 1, refLootEntry = 2061348 }, --Sandfury Phantom Epaulets
			{ itemID = 2070217, groupID = 1, refLootEntry = 2061348 }, --Spectral Sandstalker Boots
			{ itemID = 2064173, groupID = 1, refLootEntry = 2061348 }, --Veil of Desert Spirits
			{ itemID = 2066028, groupID = 1, refLootEntry = 2061348 }, --Wraith's Whispering Cord
		},
	},
	{
		Name = BabbleBoss["Sergeant Bly"],
		{
			{ itemID = 1718, groupID = 1, refLootEntry = 24040 }, --Basilisk Hide Pants
			{ itemID = 2802, groupID = 1, refLootEntry = 24040 }, --Blazing Emblem
			{ itemID = 13064, groupID = 1, refLootEntry = 24040 }, --Jaina's Firestarter
			{ itemID = 1714, groupID = 1, refLootEntry = 24040 }, --Necklace of Calisea
			{ itemID = 13117, groupID = 1, refLootEntry = 24040 }, --Ogron's Sash
			{ itemID = 13132, groupID = 1, refLootEntry = 24040 }, --Skeletal Shoulders
			{ itemID = 13138, groupID = 1, refLootEntry = 24040 }, --The Silencer
			{ itemID = 1722, groupID = 1, refLootEntry = 24040 }, --Thornstone Sledgehammer
			{ itemID = 13029, groupID = 1, refLootEntry = 24040 }, --Umbral Crystal
			{ itemID = 868, groupID = 1, refLootEntry = 24080 }, --Ardent Custodian
			{ itemID = 2825, groupID = 1, refLootEntry = 24080 }, --Bow of Searing Arrows
			{ itemID = 867, groupID = 1, refLootEntry = 24080 }, --Gloves of Holy Might
			{ itemID = 1980, groupID = 1, refLootEntry = 24080 }, --Underworld Band
			{ itemID = 14549, groupID = 1, refLootEntry = 24081 }, --Boots of Avoidance
			{ itemID = 2164, groupID = 1, refLootEntry = 24081 }, --Gut Ripper
			{ itemID = 1981, groupID = 1, refLootEntry = 24081 }, --Icemail Jerkin
			{ itemID = 1982, groupID = 1, refLootEntry = 24081 }, --Nightblade
			gap,
			{ itemID = 2075405, groupID = 1, refLootEntry = 2061258 }, --Blade of Bly's Resolve
			{ itemID = 2064044, groupID = 1, refLootEntry = 2061258 }, --Breastplate of Bly's Valor
			{ itemID = 2072459, groupID = 1, refLootEntry = 2061258 }, --Gauntlets of the Sandstorm
			{ itemID = 2067840, groupID = 1, refLootEntry = 2061258 }, --Legplates of Tactical Advantage
			{ itemID = 2062764, groupID = 1, refLootEntry = 2061258 }, --Mercenary's Light Shirt
			{ itemID = 2065843, groupID = 1, refLootEntry = 2061258 }, --Opportunist's Girdle
			{ itemID = 2078045, groupID = 1, refLootEntry = 2061258 }, --Protector's Trollskin Shield
			{ itemID = 2070016, groupID = 1, refLootEntry = 2061258 }, --Sandfury Stompers
			{ itemID = 2061258, groupID = 1, refLootEntry = 2061258 }, --Shoulderguards of Desert Command

		},
		{
			{ itemID = 8444 }, --Executioner's Key
		},
	},
	{
		Name = BabbleBoss["Sandfury Executioner"],
		{
			{ itemID = 8548 }, --Divino-matic Rod
		},
	},
	{
		Name = BabbleBoss["Hydromancer Velratha"],
		{
			{ itemID = 14549, groupID = 1, refLootEntry = 24081 }, --Boots of Avoidance
			{ itemID = 2164, groupID = 1, refLootEntry = 24081 }, --Gut Ripper
			{ itemID = 1981, groupID = 1, refLootEntry = 24081 }, --Icemail Jerkin
			{ itemID = 1982, groupID = 1, refLootEntry = 24081 }, --Nightblade
			{ itemID = 1169, groupID = 1, refLootEntry = 24082 }, --Blackskull Shield
			{ itemID = 871, groupID = 1, refLootEntry = 24082 }, --Flurry Axe
			{ itemID = 1447, groupID = 1, refLootEntry = 24082 }, --Ring of Saviors
			{ itemID = 940, groupID = 1, refLootEntry = 24082 }, --Robes of Insight
			{ itemID = 14551, groupID = 1, refLootEntry = 24083 }, --Edgemaster's Handguards
			{ itemID = 2291, groupID = 1, refLootEntry = 24083 }, --Kang the Decapitator
			{ itemID = 2100, groupID = 1, refLootEntry = 24083 }, --Precisely Calibrated Boomstick
			{ itemID = 943, groupID = 1, refLootEntry = 24083 }, --Warden Staff
			{ itemID = 2064066, groupID = 1, refLootEntry = 2060262 }, --Aquaflow Breastplate
			{ itemID = 2071556, groupID = 1, refLootEntry = 2060262 }, --Cascade Bracers
			{ itemID = 2062798, groupID = 1, refLootEntry = 2060262 }, --Hydromancer's Robe
			{ itemID = 2067875, groupID = 1, refLootEntry = 2060262 }, --Springsurge Legplates
			{ itemID = 2065876, groupID = 1, refLootEntry = 2060262 }, --Tidewoven Girdle
			{ itemID = 2060262, groupID = 1, refLootEntry = 2060262 }, --Waterbind Helm of Velratha
			{ itemID = 2075424, groupID = 1, refLootEntry = 2060262 }, --Wavecaller Staff
		},
		{
			{ itemID = 9234 }, --Tiara of the Deep
			{ itemID = 10661 }, --Second Mosh'aru Tablet
		},
	},
	{
		Name = BabbleBoss["Gahz'rilla"],
		{
			{ itemID = 9469 }, --Gahz'rilla Scale Armor
			{ itemID = 9467 }, --Gahz'rilla Fang
		gap,
			{ itemID = 8707 }, --Gahz'rilla's Electrified Scale
		},
	},
	{
		Name = BabbleBoss["Chief Ukorz Sandscalp"],
		{
			{ itemID = 9479 }, --Embrace of the Lycan
			{ itemID = 9476 }, --Big Bad Pauldrons
			{ itemID = 9478 }, --Ripsaw
			{ itemID = 9477 }, --The Chief's Enforcer
		gap,
			{ itemID = 11086 }, --Jang'thraze the Protector
			{ itemID = 9372 }, --Sul'thraze the Lasher
		},
		{
			{ itemID = 2065845, groupID = 1, refLootEntry = 2061260 }, --Belt of the Tanaris Wastes
			{ itemID = 2070017, groupID = 1, refLootEntry = 2061260 }, --Boots of the Sandstorm
			{ itemID = 2071545, groupID = 1, refLootEntry = 2061260 }, --Bracers of the Sun-Scorched
			{ itemID = 2072460, groupID = 1, refLootEntry = 2061260 }, --Gauntlets of the Farraki
			{ itemID = 2067842, groupID = 1, refLootEntry = 2061260 }, --Legguards of the Exiled
			{ itemID = 2061260, groupID = 1, refLootEntry = 2061260 }, --Sandfury Mantle
			{ itemID = 2064046, groupID = 1, refLootEntry = 2061260 }, --Sandscalp’s Breastplate
			{ itemID = 2075376, groupID = 1, refLootEntry = 2061260 }, --Staff of the Zul'Farrak Guardian
			{ itemID = 2062766, groupID = 1, refLootEntry = 2061260 }, --Tunic of the Desert Chief
		},
	},
	{
		Name = BabbleBoss["Zerillis"],
		{
			{ itemID = 12470 }, --Sandstalker Ankleguards
			{ itemID = 14549, groupID = 1, refLootEntry = 24081 }, --Boots of Avoidance
			{ itemID = 2164, groupID = 1, refLootEntry = 24081 }, --Gut Ripper
			{ itemID = 1981, groupID = 1, refLootEntry = 24081 }, --Icemail Jerkin
			{ itemID = 1982, groupID = 1, refLootEntry = 24081 }, --Nightblade
			{ itemID = 2075612, groupID = 1, refLootEntry = 2060334 }, --Axe of the Sandstorm Guardian
			{ itemID = 2066027, groupID = 1, refLootEntry = 2060334 }, --Belt of Elemental Secrets
			{ itemID = 2070216, groupID = 1, refLootEntry = 2060334 }, --Boots of the Hidden Path
			{ itemID = 2078630, groupID = 1, refLootEntry = 2060334 }, --Desert Hunter's Bow
			{ itemID = 2072618, groupID = 1, refLootEntry = 2060334 }, --Gloves of the Enigmatic Loa
			{ itemID = 2060334, groupID = 1, refLootEntry = 2060334 }, --Helm of the Desert Guard
			{ itemID = 2068052, groupID = 1, refLootEntry = 2060334 }, --Leggings of the Sacred Sands
			{ itemID = 2064172, groupID = 1, refLootEntry = 2060334 }, --Mystic Vest of Zerillis
			{ itemID = 2062956, groupID = 1, refLootEntry = 2060334 }, --Shirt of the Sandfury
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 9512 }, --Blackmetal Cape
			{ itemID = 9484 }, --Spellshock Leggings
			{ itemID = 862 }, --Runed Ring
			{ itemID = 6440 }, --Brainlash
		gap,
			{ itemID = 9243 }, --Shriveled Heart
		gap,
			{ itemID = 9523 }, --Troll Temper
			{ itemID = 9238 }, --Uncracked Scarab Shell
		},
		{
			{ itemID = 5616 }, --Gutwrencher
			{ itemID = 9511 }, --Bloodletter Scalpel
			{ itemID = 9481 }, --The Minotaur
			{ itemID = 9480 }, --Eyegouger
			{ itemID = 9482 }, --Witch Doctor's Cane
			{ itemID = 9483 }, --Flaming Incinerator
			{ itemID = 2040 }, --Troll Protector
		},
	},
}

-----------------
--- Zul'Gurub ---
-----------------

AtlasLoot_Data["ZulGurub"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Zul'Gurub"],
	Type = "ClassicRaid",
	Map = "ZulGurub",
	{
		Name = BabbleBoss["High Priestess Jeklik"],
		{
			{ itemID = 19928, groupID = 1, refLootEntry = 14517 }, --Animist's Spaulders
			{ itemID = 19918, groupID = 1, refLootEntry = 14517 }, --Jeklik's Crusher
			{ itemID = 19923, groupID = 1, refLootEntry = 14517 }, --Jeklik's Opaline Talisman
			{ itemID = 20265, groupID = 1, refLootEntry = 14517 }, --Peacekeeper Boots
			{ itemID = 19920, groupID = 1, refLootEntry = 14517 }, --Primalist's Band
			{ itemID = 20262, groupID = 1, refLootEntry = 14517 }, --Seafury Boots
			{ itemID = 19915, groupID = 1, refLootEntry = 14517 }, --Zulian Defender
			{ itemID = 22721, groupID = 2, refLootEntry = 14517 }, --Band of Servitude
			{ itemID = 22716, groupID = 2, refLootEntry = 14517 }, --Belt of Untapped Power
			{ itemID = 22718, groupID = 2, refLootEntry = 14517 }, --Blooddrenched Mask
			{ itemID = 22711, groupID = 2, refLootEntry = 14517 }, --Cloak of the Hakkari Worshippers
			{ itemID = 22715, groupID = 2, refLootEntry = 14517 }, --Gloves of the Tormented
			{ itemID = 22712, groupID = 2, refLootEntry = 14517 }, --Might of the Tribe
			{ itemID = 22714, groupID = 2, refLootEntry = 14517 }, --Sacrificial Gauntlets
			{ itemID = 22722, groupID = 2, refLootEntry = 14517 }, --Seal of the Gurubashi Berserker
			{ itemID = 22720, groupID = 2, refLootEntry = 14517 }, --Zulian Headdress

		},
		{
			{ itemID = 22713, groupID = 2, refLootEntry = 14517 }, --Zulian Scepter of Rites
			gap,
			{ icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} },
			gap,
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
		},
	},
	{
		Name = BabbleBoss["High Priest Venoxis"],
		{
			{ itemID = 19906, groupID = 1, refLootEntry = 14507 }, --Blooddrenched Footpads
			{ itemID = 19903, groupID = 1, refLootEntry = 14507 }, --Fang of Venoxis
			{ itemID = 19904, groupID = 1, refLootEntry = 14507 }, --Runed Bloodstained Hauberk
			{ itemID = 19905, groupID = 1, refLootEntry = 14507 }, --Zanzil's Band
			{ itemID = 19900, groupID = 1, refLootEntry = 14507 }, --Zulian Stone Axe
			{ itemID = 19907, groupID = 1, refLootEntry = 14507 }, --Zulian Tigerhide Cloak
			{ itemID = 22721, groupID = 2, refLootEntry = 14507 }, --Band of Servitude
			{ itemID = 22716, groupID = 2, refLootEntry = 14507 }, --Belt of Untapped Power
			{ itemID = 22718, groupID = 2, refLootEntry = 14507 }, --Blooddrenched Mask
			{ itemID = 22711, groupID = 2, refLootEntry = 14507 }, --Cloak of the Hakkari Worshippers
			{ itemID = 22715, groupID = 2, refLootEntry = 14507 }, --Gloves of the Tormented
			{ itemID = 22712, groupID = 2, refLootEntry = 14507 }, --Might of the Tribe
			{ itemID = 22714, groupID = 2, refLootEntry = 14507 }, --Sacrificial Gauntlets
			{ itemID = 22722, groupID = 2, refLootEntry = 14507 }, --Seal of the Gurubashi Berserker
			{ itemID = 22720, groupID = 2, refLootEntry = 14507 }, --Zulian Headdress
			{ itemID = 22713, groupID = 2, refLootEntry = 14507 }, --Zulian Scepter of Rites
		},
		{
			{ icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} },
		gap,
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
		gap,
			{ itemID = 22216 }, --Venoxis's Venom Sac
		},
	},
	{
		Name = BabbleBoss["High Priestess Mar'li"],
		{
			{ itemID = 19925, groupID = 1, refLootEntry = 14510 }, --Band of Jin
			{ itemID = 19919, groupID = 1, refLootEntry = 14510 }, --Bloodstained Greaves
			{ itemID = 20032, groupID = 1, refLootEntry = 14510 }, --Flowing Ritual Robes
			{ itemID = 19930, groupID = 1, refLootEntry = 14510 }, --Mar'li's Eye
			{ itemID = 19927, groupID = 1, refLootEntry = 14510 }, --Mar'li's Touch
			{ itemID = 19871, groupID = 1, refLootEntry = 14510 }, --Talisman of Protection
			{ itemID = 22721, groupID = 2, refLootEntry = 14510 }, --Band of Servitude
			{ itemID = 22716, groupID = 2, refLootEntry = 14510 }, --Belt of Untapped Power
			{ itemID = 22718, groupID = 2, refLootEntry = 14510 }, --Blooddrenched Mask
			{ itemID = 22711, groupID = 2, refLootEntry = 14510 }, --Cloak of the Hakkari Worshippers
			{ itemID = 22715, groupID = 2, refLootEntry = 14510 }, --Gloves of the Tormented
			{ itemID = 22712, groupID = 2, refLootEntry = 14510 }, --Might of the Tribe
			{ itemID = 22714, groupID = 2, refLootEntry = 14510 }, --Sacrificial Gauntlets
			{ itemID = 22722, groupID = 2, refLootEntry = 14510 }, --Seal of the Gurubashi Berserker
			{ itemID = 22720, groupID = 2, refLootEntry = 14510 }, --Zulian Headdress
			{ itemID = 22713, groupID = 2, refLootEntry = 14510 }, --Zulian Scepter of Rites
		},
		{
			{ icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} },
		gap,
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
		},
	},
	{
		Name = BabbleBoss["Bloodlord Mandokir"],
		{
			{ itemID = 19867, groupID = 1, refLootEntry = 11382 }, --Bloodlord's Defender
			{ itemID = 19874, groupID = 1, refLootEntry = 11382 }, --Halberd of Smiting
			{ itemID = 20038, groupID = 1, refLootEntry = 11382 }, --Mandokir's Sting
			{ itemID = 19866, groupID = 1, refLootEntry = 11382 }, --Warblade of the Hakkari
			{ itemID = 19877, groupID = 2, refLootEntry = 11382 }, --Animist's Leggings
			{ itemID = 19869, groupID = 2, refLootEntry = 11382 }, --Blooddrenched Grips
			{ itemID = 19878, groupID = 2, refLootEntry = 11382 }, --Bloodsoaked Pauldrons
			{ itemID = 19895, groupID = 2, refLootEntry = 11382 }, --Bloodtinged Kilt
			{ itemID = 19870, groupID = 2, refLootEntry = 11382 }, --Hakkari Loa Cloak
			{ itemID = 19873, groupID = 2, refLootEntry = 11382 }, --Overlord's Crimson Band
			{ itemID = 19863, groupID = 2, refLootEntry = 11382 }, --Primalist's Seal
			{ itemID = 19893, groupID = 2, refLootEntry = 11382 }, --Zanzil's Seal
		},
		{
				{ itemID = 19872 }, --Swift Razzashi Raptor
			gap,
			{ icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} },
			gap,
			{ itemID = 22637 }, --Primal Hakkari Idol
			{ itemID = 19943 }, --Massive Mojo
		},
	},
	{
		Name = BabbleZone["Zul'Gurub"],
		{
			{ icon = "INV_Box_01", name = color.WHITE..BabbleBoss["Gri'lek"] },
			{ itemID = 19961 }, --Gri'lek's Grinder
			{ itemID = 19962 }, --Gri'lek's Carver
			{ itemID = 19939 }, --Gri'lek's Blood
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..BabbleBoss["Hazza'rah"] },
			{ itemID = 19968 }, --Fiery Retributer
			{ itemID = 19967 }, --Thoughtblighter
			{ itemID = 19942 }, --Hazza'rah's Dream Thread
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE..BabbleBoss["Renataki"] },
			{ itemID = 19964 }, --Renataki's Soul Conduit
			{ itemID = 19963 }, --Pitchfork of Madness
			{ itemID = 19940 }, --Renataki's Tooth
		gap,
			{ icon = "INV_Box_01", name = color.WHITE..BabbleBoss["Wushoolay"] },
			{ itemID = 19965 }, --Wushoolay's Poker
			{ itemID = 19993 }, --Hoodoo Hunting Bow
			{ itemID = 19941 }, --Wushoolay's Mane
		},
	},
	{
		Name = BabbleBoss["Gahz'ranka"],
		{
			{ itemID = 19945 }, --Foror's Eyepatch
			{ itemID = 19944 }, --Nat Pagle's Fish Terminator
		gap,
			{ itemID = 19947 }, --Nat Pagle's Broken Reel
			{ itemID = 19946 }, --Tigule's Harpoon
		gap,
			{ itemID = 22739 }, --Tome of Polymorph: Turtle
		},
	},
	{
		Name = BabbleBoss["High Priest Thekal"],
		{
			{ itemID = 19897, groupID = 1, refLootEntry = 14509 }, --Betrayer's Boots
			{ itemID = 20266, groupID = 1, refLootEntry = 14509 }, --Peacekeeper Leggings
			{ itemID = 19899, groupID = 1, refLootEntry = 14509 }, --Ritualistic Legguards
			{ itemID = 20260, groupID = 1, refLootEntry = 14509 }, --Seafury Leggings
			{ itemID = 19898, groupID = 1, refLootEntry = 14509 }, --Seal of Jin
			{ itemID = 19896, groupID = 1, refLootEntry = 14509 }, --Thekal's Grasp
			{ itemID = 19901, groupID = 1, refLootEntry = 14509 }, --Zulian Slicer
			{ itemID = 22721, groupID = 2, refLootEntry = 14509 }, --Band of Servitude
			{ itemID = 22716, groupID = 2, refLootEntry = 14509 }, --Belt of Untapped Power
			{ itemID = 22718, groupID = 2, refLootEntry = 14509 }, --Blooddrenched Mask
			{ itemID = 22711, groupID = 2, refLootEntry = 14509 }, --Cloak of the Hakkari Worshippers
			{ itemID = 22715, groupID = 2, refLootEntry = 14509 }, --Gloves of the Tormented
			{ itemID = 22712, groupID = 2, refLootEntry = 14509 }, --Might of the Tribe
			{ itemID = 22714, groupID = 2, refLootEntry = 14509 }, --Sacrificial Gauntlets
			{ itemID = 22722, groupID = 2, refLootEntry = 14509 }, --Seal of the Gurubashi Berserker
			{ itemID = 22720, groupID = 2, refLootEntry = 14509 }, --Zulian Headdress
			{ itemID = 22713, groupID = 2, refLootEntry = 14509 }, --Zulian Scepter of Rites
		},
		{
			{ itemID = 19902 }, --Swift Zulian Tiger
			gap,
			{ icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} },
			gap,
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
			gap,
			{ itemID = 60101, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = BabbleBoss["High Priestess Arlokk"],
		{
			{ itemID = 19910, groupID = 1, refLootEntry = 14515 }, --Arlokk's Grasp
			{ itemID = 19922, groupID = 1, refLootEntry = 14515 }, --Arlokk's Hoodoo Stick
			{ itemID = 19913, groupID = 1, refLootEntry = 14515 }, --Bloodsoaked Greaves
			{ itemID = 19912, groupID = 1, refLootEntry = 14515 }, --Overlord's Onyx Band
			{ itemID = 19909, groupID = 1, refLootEntry = 14515 }, --Will of Arlokk
			{ itemID = 22721, groupID = 2, refLootEntry = 14515 }, --Band of Servitude
			{ itemID = 22716, groupID = 2, refLootEntry = 14515 }, --Belt of Untapped Power
			{ itemID = 22718, groupID = 2, refLootEntry = 14515 }, --Blooddrenched Mask
			{ itemID = 22711, groupID = 2, refLootEntry = 14515 }, --Cloak of the Hakkari Worshippers
			{ itemID = 22715, groupID = 2, refLootEntry = 14515 }, --Gloves of the Tormented
			{ itemID = 22712, groupID = 2, refLootEntry = 14515 }, --Might of the Tribe
			{ itemID = 22714, groupID = 2, refLootEntry = 14515 }, --Sacrificial Gauntlets
			{ itemID = 22722, groupID = 2, refLootEntry = 14515 }, --Seal of the Gurubashi Berserker
			{ itemID = 22720, groupID = 2, refLootEntry = 14515 }, --Zulian Headdress
			{ itemID = 22713, groupID = 2, refLootEntry = 14515 }, --Zulian Scepter of Rites
			gap,
			{ itemID = 19914 }, --Panther Hide Sack
		},
		{
			{ icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} },
		gap,
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
		},

	},
	{
		Name = BabbleBoss["Jin'do the Hexxer"],
		{
			{ itemID = 19891, groupID = 1, refLootEntry = 11380 }, --Jin'do's Bag of Whammies
			{ itemID = 19885, groupID = 1, refLootEntry = 11380 }, --Jin'do's Evil Eye
			{ itemID = 19890, groupID = 1, refLootEntry = 11380 }, --Jin'do's Hexxer
			{ itemID = 19884, groupID = 1, refLootEntry = 11380 }, --Jin'do's Judgement
			{ itemID = 19892, groupID = 2, refLootEntry = 11380 }, --Animist's Boots
			{ itemID = 19889, groupID = 2, refLootEntry = 11380 }, --Blooddrenched Leggings
			{ itemID = 19894, groupID = 2, refLootEntry = 11380 }, --Bloodsoaked Gauntlets
			{ itemID = 19875, groupID = 2, refLootEntry = 11380 }, --Bloodstained Coif
			{ itemID = 19887, groupID = 2, refLootEntry = 11380 }, --Bloodstained Legplates
			{ itemID = 19929, groupID = 2, refLootEntry = 11380 }, --Bloodtinged Gloves
			{ itemID = 19888, groupID = 2, refLootEntry = 11380 }, --Overlord's Embrace
			{ itemID = 19886, groupID = 2, refLootEntry = 11380 }, --The Hexxer's Cover
		},
		{
			{ icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} },
		gap,
			{ itemID = 22637 }, --Primal Hakkari Idol
			{ itemID = 19943 }, --Massive Mojo
		},
	},
	{
		Name = BabbleBoss["Hakkar"],
		{
			{ itemID = 19855, groupID = 1, refLootEntry = 14834 }, --Bloodsoaked Legplates
			{ itemID = 19857, groupID = 1, refLootEntry = 14834 }, --Cloak of Consumption
			{ itemID = 20264, groupID = 1, refLootEntry = 14834 }, --Peacekeeper Gauntlets
			{ itemID = 20257, groupID = 1, refLootEntry = 14834 }, --Seafury Gauntlets
			{ itemID = 19876, groupID = 1, refLootEntry = 14834 }, --Soul Corrupter's Necklace
			{ itemID = 19856, groupID = 1, refLootEntry = 14834 }, --The Eye of Hakkar
			{ itemID = 19862, groupID = 2, refLootEntry = 14834 }, --Aegis of the Blood God
			{ itemID = 19852, groupID = 2, refLootEntry = 14834 }, --Ancient Hakkari Manslayer
			{ itemID = 19864, groupID = 2, refLootEntry = 14834 }, --Bloodcaller
			{ itemID = 19859, groupID = 2, refLootEntry = 14834 }, --Fang of the Faceless
			{ itemID = 19853, groupID = 2, refLootEntry = 14834 }, --Gurubashi Dwarf Destroyer
			{ itemID = 19861, groupID = 2, refLootEntry = 14834 }, --Touch of Chaos
			{ itemID = 19865, groupID = 2, refLootEntry = 14834 }, --Warblade of the Hakkari
			{ itemID = 19854, groupID = 2, refLootEntry = 14834 }, --Zin'rokh, Destroyer of Worlds
			{ itemID = 19862, groupID = 3, refLootEntry = 14834 }, --Aegis of the Blood God
			{ itemID = 19852, groupID = 3, refLootEntry = 14834 }, --Ancient Hakkari Manslayer
			{ itemID = 19864, groupID = 3, refLootEntry = 14834 }, --Bloodcaller
			{ itemID = 19855, groupID = 3, refLootEntry = 14834 }, --Bloodsoaked Legplates
			{ itemID = 19857, groupID = 3, refLootEntry = 14834 }, --Cloak of Consumption
			{ itemID = 19859, groupID = 3, refLootEntry = 14834 }, --Fang of the Faceless
			{ itemID = 19853, groupID = 3, refLootEntry = 14834 }, --Gurubashi Dwarf Destroyer
			{ itemID = 20264, groupID = 3, refLootEntry = 14834 }, --Peacekeeper Gauntlets
			{ itemID = 20257, groupID = 3, refLootEntry = 14834 }, --Seafury Gauntlets
			{ itemID = 19876, groupID = 3, refLootEntry = 14834 }, --Soul Corrupter's Necklace
			{ itemID = 19856, groupID = 3, refLootEntry = 14834 }, --The Eye of Hakkar
			{ itemID = 19861, groupID = 3, refLootEntry = 14834 }, --Touch of Chaos
			{ itemID = 19865, groupID = 3, refLootEntry = 14834 }, --Warblade of the Hakkari
			{ itemID = 19854, groupID = 3, refLootEntry = 14834 }, --Zin'rokh, Destroyer of Worlds
		},
		{
			{ itemID = 19802 }, --Heart of Hakkar
			{ itemID = 19950 }, --Zandalarian Hero Charm
			{ itemID = 19949 }, --Zandalarian Hero Medallion
			{ itemID = 19948 }, --Zandalarian Hero Badge
		gap,
			{ itemID = 19943 }, --Massive Mojo
		},
	},
	{
		Name = "Muddy Churning Waters",
		{
			{ itemID = 19975 }, --Zulian Mudskunk
		},
	},
	{
		Name = "Shared ZG Priest Drops",
		{
			{ itemID = 22721 }, --Band of Servitude
			{ itemID = 22722 }, --Seal of the Gurubashi Berserker
			{ itemID = 22711 }, --Cloak of the Hakkari Worshipers
			{ itemID = 22712 }, --Might of the Tribe
			{ itemID = 22720 }, --Zulian Headdress
			{ itemID = 22716 }, --Belt of Untapped Power
			{ itemID = 22718 }, --Blooddrenched Mask
			{ itemID = 22715 }, --Gloves of the Tormented
			{ itemID = 22714 }, --Sacrificial Gauntlets
			{ itemID = 22713 }, --Zulian Scepter of Rites
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 20259 }, --Shadow Panther Hide Gloves
			{ itemID = 20261 }, --Shadow Panther Hide Belt
			{ itemID = 20263 }, --Gurubashi Helm
			{ itemID = 19908 }, --Sceptre of Smiting
			{ itemID = 19921 }, --Zulian Hacker
			{ itemID = 20258 }, --Zulian Ceremonial Staff
			{ itemID = 19727 }, --Blood Scythe
			{ itemID = 48126 }, --Razzashi Hatchling
		gap,
			{ itemID = 19726 }, --Bloodvine
			{ itemID = 19774 }, --Souldarite
			{ itemID = 19767 }, --Primal Bat Leather
			{ itemID = 19768 }, --Primal Tiger Leather
		},
		{
			{ itemID = 19821 }, --Punctured Voodoo Doll
			{ itemID = 19816 }, --Punctured Voodoo Doll
			{ itemID = 19818 }, --Punctured Voodoo Doll
			{ itemID = 19815 }, --Punctured Voodoo Doll
			{ itemID = 19820 }, --Punctured Voodoo Doll
			{ itemID = 19814 }, --Punctured Voodoo Doll
			{ itemID = 19817 }, --Punctured Voodoo Doll
			{ itemID = 19819 }, --Punctured Voodoo Doll
			{ itemID = 19813 }, --Punctured Voodoo Doll
		},
	},
	{
		Name = "Coin's and Bijou's",
		{
			{ itemID = 19708 }, --Blue Hakkari Bijou
			{ itemID = 19713 }, --Bronze Hakkari Bijou
			{ itemID = 19715 }, --Gold Hakkari Bijou
			{ itemID = 19711 }, --Green Hakkari Bijou
			{ itemID = 19710 }, --color.ORANGE Hakkari Bijou
			{ itemID = 19712 }, --Purple Hakkari Bijou
			{ itemID = 19707 }, --Red Hakkari Bijou
			{ itemID = 19714 }, --Silver Hakkari Bijou
			{ itemID = 19709 }, --Yellow Hakkari Bijou
		},
		{
			{ itemID = 19706 }, --Bloodscalp Coin
			{ itemID = 19701 }, --Gurubashi Coin
			{ itemID = 19700 }, --Hakkari Coin
			{ itemID = 19699 }, --Razzashi Coin
			{ itemID = 19704 }, --Sandfury Coin
			{ itemID = 19705 }, --Skullsplitter Coin
			{ itemID = 19702 }, --Vilebranch Coin
			{ itemID = 19703 }, --Witherbark Coin
			{ itemID = 19698 }, --Zulian Coin
		},
	},
	{
		Name = "ZG Enchants",
		{
			{ itemID = 19790 }, --Animist's Caress
			{ itemID = 19785 }, --Falcon's Call
			{ itemID = 19787 }, --Presence of Sight
			{ itemID = 19783 }, --Syncretist's Sigil
			{ itemID = 19789 }, --Prophetic Aura
			{ itemID = 19784 }, --Death's Embrace
			{ itemID = 19786 }, --Vodouisant's Vigilant Embrace
			{ itemID = 19788 }, --Hoodoo Hex
			{ itemID = 19782 }, --Presence of Might
		},
		{
			{ itemID = 20077 }, --Zandalar Signet of Might
			{ itemID = 20076 }, --Zandalar Signet of Mojo
			{ itemID = 20078 }, --Zandalar Signet of Serenity
		gap,
			{ itemID = 22635 }, --Savage Guard
		},
	},
}

-----------------
--- Naxxramas ---
-----------------

AtlasLoot_Data["Naxxramas60"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Naxxramas"],
	Type = "ClassicRaid",
	Map = "Naxxramas60",
	{
		Name = BabbleBoss["Patchwerk"],
		WebID = {16028,"npc"},
		{
			{ itemID = 22961, groupID = 2, refLootEntry = 16028 }, --Band of Reanimation
			{ itemID = 22960, groupID = 2, refLootEntry = 16028 }, --Cloak of Suturing
			{ itemID = 22815, groupID = 2, refLootEntry = 16028 }, --Severance
			{ itemID = 22818, groupID = 2, refLootEntry = 16028 }, --The Plague Bearer
			{ itemID = 22820, groupID = 2, refLootEntry = 16028 }, --Wand of Fates
		},
		{
			{ itemID = 22354, lootTable = {"T3SHOULDER","Token"} }, --Desecrated Pauldrons
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60187 }, --Sigil of Patchwerk
		},
	},
	{
		Name = BabbleBoss["Grobbulus"],
		WebID = {15931,"npc"},
		{
			{ itemID = 22803, groupID = 2, refLootEntry = 15931 }, --Midnight Haze
			{ itemID = 22988, groupID = 2, refLootEntry = 15931 }, --The End of Dreams
			{ itemID = 22810, groupID = 2, refLootEntry = 15931 }, --Toxin Injector
		},
		{
			{ itemID = 22354, lootTable = {"T3SHOULDER","Token"} }, --Desecrated Pauldrons
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60176 }, --Sigil of Grobbulus
		},
	},
	{
		Name = BabbleBoss["Gluth"],
		WebID = {15932,"npc"},
		{
			{ itemID = 22813, groupID = 2, refLootEntry = 15932 }, --Claymore of Unholy Might
			{ itemID = 23075, groupID = 2, refLootEntry = 15932 }, --Death's Bargain
			{ itemID = 22994, groupID = 2, refLootEntry = 15932 }, --Digested Hand of Power
			{ itemID = 22981, groupID = 2, refLootEntry = 15932 }, --Gluth's Missing Collar
			{ itemID = 22983, groupID = 2, refLootEntry = 15932 }, --Rime Covered Mantle
		},
		{
			{ itemID = 22354, lootTable = {"T3SHOULDER","Token"} }, --Desecrated Pauldrons
			{ itemID = 22355, lootTable = {"T3WRIST","Token"} }, --Desecrated Bracers
			{ itemID = 22356, lootTable = {"T3WAIST","Token"} }, --Desecrated Waistguard
			{ itemID = 22358, lootTable = {"T3FEET","Token"} }, --Desecrated Sabatons
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60177 }, --Sigil of Gluth
		},
	},
	{
		Name = BabbleBoss["Thaddius"],
		WebID = {15928,"npc"},
		{
			{ itemID = 15032, groupID = 2, refLootEntry = 15928 }, --Dislocated Spine
			{ itemID = 23001, groupID = 2, refLootEntry = 15928 }, --Eye of the Scourge
			{ itemID = 23070, groupID = 2, refLootEntry = 15928 }, --Leggings of Polarity
			{ itemID = 23000, groupID = 2, refLootEntry = 15928 }, --Plated Abomination Ribcage
			{ itemID = 22808, groupID = 2, refLootEntry = 15928 }, --The Castigator
		},
		{
			{ itemID = 22353, lootTable = {"T3HEAD","Token"} }, --Desecrated Helmet
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60173 }, -- Sigil of Thaddius
		},
	},
	{
		Name = BabbleBoss["Anub'Rekhan"],
		WebID = {15956,"npc"},
		{
			{ itemID = 22939, groupID = 2, refLootEntry = 15956 }, --Band of Unanswered Prayers
			{ itemID = 22938, groupID = 2, refLootEntry = 15956 }, --Cryptfiend Silk Cloak
			{ itemID = 22937, groupID = 2, refLootEntry = 15956 }, --Gem of Nerubis
			{ itemID = 22936, groupID = 2, refLootEntry = 15956 }, --Wristguards of Vengeance
		},
		{
			{ itemID = 22355, lootTable = {"T3WRIST","Token"} }, --Desecrated Bracers
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60182 }, --Sigil of Anub'Rekhan
		},
	},
	{
		Name = BabbleBoss["Grand Widow Faerlina"],
		WebID = {15953,"npc"},
		{
			{ itemID = 22943, groupID = 2, refLootEntry = 15953 }, --Malice Stone Pendant
			{ itemID = 22942, groupID = 2, refLootEntry = 15953 }, --The Widow's Embrace
			{ itemID = 22806, groupID = 2, refLootEntry = 15953 }, --Widow's Remorse
		},
		{
			{ itemID = 22355, lootTable = {"T3WRIST","Token"} }, --Desecrated Bracers
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60180 }, --Sigil of Grand Widow Faerlina
		},
	},
	{
		Name = BabbleBoss["Maexxna"],
		WebID = {15952,"npc"},
		{
			{ itemID = 23220, groupID = 2, refLootEntry = 15952 }, --Crystal Webbed Robe
			{ itemID = 22954, groupID = 2, refLootEntry = 15952 }, --Kiss of the Spider
			{ itemID = 22804, groupID = 2, refLootEntry = 15952 }, --Maexxna's Fang
			{ itemID = 22947, groupID = 2, refLootEntry = 15952 }, --Pendant of Forgotten Names
			{ itemID = 22807, groupID = 2, refLootEntry = 15952 }, --Wraith Blade
		},
		{
			{ itemID = 22357, lootTable = {"T3HAND","Token"} }, --Desecrated Gauntlets
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60179 }, --Sigil of Maexxna
		},
	},
	{
		Name = BabbleBoss["Instructor Razuvious"],
		WebID = {16061,"npc"},
		{
			{ itemID = 23219, groupID = 2, refLootEntry = 16061 }, --Girdle of the Mentor
			{ itemID = 23014, groupID = 2, refLootEntry = 16061 }, --Iblis, Blade of the Fallen Seraph
			{ itemID = 23004, groupID = 2, refLootEntry = 16061 }, --Idol of Longevity
			{ itemID = 15030, groupID = 2, refLootEntry = 16061 }, --Jagged Cold Steel Knife
			{ itemID = 23018, groupID = 2, refLootEntry = 16061 }, --Signet of the Fallen Defender
			{ itemID = 23328, groupID = 2, refLootEntry = 16061 }, --The Unholy Blade
			{ itemID = 23017, groupID = 2, refLootEntry = 16061 }, --Veil of Eclipse
			{ itemID = 23009, groupID = 2, refLootEntry = 16061 }, --Wand of the Whispering Dead
		},
		{
			{ itemID = 22358, lootTable = {"T3FEET","Token"} }, --Desecrated Sabatons
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60190 }, --Sigil of Instructor Razuvious
		},
	},
	{
		Name = BabbleBoss["Gothik the Harvester"],
		WebID = {16060,"npc"},
		{
			{ itemID = 23073, groupID = 2, refLootEntry = 16060 }, --Boots of Displacement
			{ itemID = 23023, groupID = 2, refLootEntry = 16060 }, --Sadist's Collar
			{ itemID = 23021, groupID = 2, refLootEntry = 16060 }, --The Soul Harvester's Bindings
		},
		{
			{ itemID = 22358, lootTable = {"T3SHOULDER","Token"} }, --Desecrated Sabatons
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60189 }, --Sigil of Gothik the Harvester
		},
	},
	{
		Name = BabbleBoss["The Four Horsemen"],
		WebID = {181366,"object"},
		{
			{ itemID = 23071 }, --Leggings of Apocalypse
			{ itemID = 22809 }, --Maul of the Redeemed Crusader
			{ itemID = 22691 }, --Corrupted Ashbringer
			{ itemID = 22811 }, --Soulstring
			{ itemID = 23025 }, --Seal of the Damned
			{ itemID = 23027 }, --Warmth of Forgiveness
		},
		{
			{ itemID = 22349, lootTable = {"T3CHEST","Token"} }, --Desecrated Breastplate
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		},
	},
	{
		Name = BabbleBoss["Noth the Plaguebringer"],
		WebID = {15954,"npc"},
		{
			{ itemID = 23031, groupID = 2, refLootEntry = 15954 }, --Band of the Inevitable
			{ itemID = 23030, groupID = 2, refLootEntry = 15954 }, --Cloak of the Scourge
			{ itemID = 22816, groupID = 2, refLootEntry = 15954 }, --Hatchet of Sundered Bone
			{ itemID = 23006, groupID = 2, refLootEntry = 15954 }, --Libram of Light
			{ itemID = 23029, groupID = 2, refLootEntry = 15954 }, --Noth's Frigid Heart
			{ itemID = 23005, groupID = 2, refLootEntry = 15954 }, --Totem of Flowing Water
		},
		{
			{ itemID = 22356, lootTable = {"T3WAIST","Token"} }, --Desecrated Waistguard
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60181 }, --Sigil of Noth the Plaguebringer
		},
	},
	{
		Name = BabbleBoss["Heigan the Unclean"],
		WebID = {15936,"npc"},
		{
			{ itemID = 23068, groupID = 2, refLootEntry = 15936 }, --Legplates of Carnage
			{ itemID = 23036, groupID = 2, refLootEntry = 15936 }, --Necklace of Necropsy
			{ itemID = 23035, groupID = 2, refLootEntry = 15936 }, --Preceptor's Hat
		},
		{
			{ itemID = 22356, lootTable = {"T3WAIST","Token"} }, --Desecrated Waistguard
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60178 }, --Sigil of Heigan the Unclean
		},
	},
	{
		Name = BabbleBoss["Loatheb"],
		WebID = {16011,"npc"},
		{
			{ itemID = 23038, groupID = 2, refLootEntry = 16011 }, --Band of Unnatural Forces
			{ itemID = 22800, groupID = 2, refLootEntry = 16011 }, --Brimstone Staff
			{ itemID = 23042, groupID = 2, refLootEntry = 16011 }, --Loatheb's Reflection
			{ itemID = 23037, groupID = 2, refLootEntry = 16011 }, --Ring of Spiritual Fervor
			{ itemID = 23039, groupID = 2, refLootEntry = 16011 }, --The Eye of Nerub
		},
		{
			{ itemID = 22352, lootTable = {"T3LEGS","Token"} }, --Desecrated Legplates
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60186 }, --Sigil of Loatheb
		},
	},
	{
		Name = BabbleBoss["Sapphiron"],
		WebID = {15989,"npc"},
		{
			{ itemID = 23242, groupID = 2, refLootEntry = 15989 }, --Claw of the Frost Wyrm
			{ itemID = 23050, groupID = 2, refLootEntry = 15989 }, --Cloak of the Necropolis
			{ itemID = 23047, groupID = 2, refLootEntry = 15989 }, --Eye of the Dead
			{ itemID = 19761, groupID = 2, refLootEntry = 15989 }, --Fang of the Frost Wyrm
			{ itemID = 23072, groupID = 2, refLootEntry = 15989 }, --Fists of the Unrelenting
			{ itemID = 23040, groupID = 2, refLootEntry = 15989 }, --Glyph of Deflection
			{ itemID = 23049, groupID = 2, refLootEntry = 15989 }, --Sapphiron's Left Eye
			{ itemID = 23048, groupID = 2, refLootEntry = 15989 }, --Sapphiron's Right Eye
			{ itemID = 23045, groupID = 2, refLootEntry = 15989 }, --Shroud of Dominion
			{ itemID = 23041, groupID = 2, refLootEntry = 15989 }, --Slayer's Crest
			{ itemID = 23043, groupID = 2, refLootEntry = 15989 }, --The Face of Death
			{ itemID = 23046, groupID = 2, refLootEntry = 15989 }, --The Restrained Essence of Sapphiron
		},
		{
			{ itemID = 23545 }, --Power of the Scourge
			{ itemID = 23547 }, --Resilience of the Scourge
			{ itemID = 23549 }, --Fortitude of the Scourge
			{ itemID = 23548 }, --Might of the Scourge
		gap,
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		gap,
			{ itemID = 60184 }, --Sigil of Sapphiron
		},
	},
	{
		Name = BabbleBoss["Kel'Thuzad"],
		WebID = {15990,"npc"},
		{
			{ itemID = 22821, groupID = 2, refLootEntry = 15990 }, --Doomfinger
			{ itemID = 23057, groupID = 2, refLootEntry = 15990 }, --Gem of Trapped Innocents
			{ itemID = 23054, groupID = 2, refLootEntry = 15990 }, --Gressil, Dawn of Ruin
			{ itemID = 23056, groupID = 2, refLootEntry = 15990 }, --Hammer of the Twisting Nether
			{ itemID = 22802, groupID = 2, refLootEntry = 15990 }, --Kingsfall
			{ itemID = 15036, groupID = 2, refLootEntry = 15990 }, --Lordaeron's Lament
			{ itemID = 22798, groupID = 2, refLootEntry = 15990 }, --Might of Menethil
			{ itemID = 22812, groupID = 2, refLootEntry = 15990 }, --Nerubian Slavemaker
			{ itemID = 22819, groupID = 2, refLootEntry = 15990 }, --Shield of Condemnation
			{ itemID = 22799, groupID = 2, refLootEntry = 15990 }, --Soulseeker
			{ itemID = 15033, groupID = 2, refLootEntry = 15990 }, --Staff of Twisted Dreams
			{ itemID = 23053, groupID = 2, refLootEntry = 15990 }, --Stormrage's Talisman of Seething
			{ itemID = 23577, groupID = 2, refLootEntry = 15990 }, --The Hungering Cold
		},
		{
			{ itemID = 22520 }, --The Phylactery of Kel'Thuzad
			{ itemID = 23207 }, --Mark of the Champion
			{ itemID = 23206 }, --Mark of the Champion
		gap,
			{ itemID = 1510496, lootTable = {"T3FINGER","Token"} }, --Desecrated Ring
		gap,
			{ itemID = 22733 }, --Staff Head of Atiesh
			{ itemID = 22632 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22589 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22631 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22630 }, --Atiesh, Greatstaff of the Guardian
		gap,
			{ itemID = 60185, droprate = "1%" }, --Sigil
		},
	},
	{
		Name = AL["Shared Frost Resistance Gear"],
		{
			{ itemID = 22968 }, -- Glacial Mantle
			{ itemID = 23019 }, -- Icebane Helmet
			{ itemID = 23020 }, -- Polar Helmet
			{ itemID = 23028 }, -- Hailstone Band
			{ itemID = 23033 }, -- Icy Scale Coif
			{ itemID = 22967 }, -- Icy Scale Spaulders
			{ itemID = 22941 }, -- Polar Shoulder Pads
			{ itemID = 22940 }, -- Icebane Pauldrons
			{ itemID = 22935 }, -- Touch of Frost
			{ itemID = 23032 }, -- Glacial Headdress
		},
	},
	{
		Name = AL["Trash Mobs"],
		{
			{ itemID = 23069 }, --Necro-Knight's Garb
			{ itemID = 23226 }, --Ghoul Skin Tunic
			{ itemID = 23663 }, --Girdle of Elemental Fury
			{ itemID = 23664 }, --Pauldrons of Elemental Fury
			{ itemID = 23665 }, --Leggings of Elemental Fury
			{ itemID = 23666 }, --Belt of the Grand Crusader
			{ itemID = 23667 }, --Spaulders of the Grand Crusader
			{ itemID = 23668 }, --Leggings of the Grand Crusader
			{ itemID = 23044 }, --Harbinger of Doom
			{ itemID = 23221 }, --Misplaced Servo Arm
			{ itemID = 23238 }, --Stygian Buckler
			{ itemID = 23237 }, --Ring of the Eternal Flame
		},
		{
			{ itemID = 22376 }, --Wartorn Cloth Scrap
			{ itemID = 22373 }, --Wartorn Leather Scrap
			{ itemID = 22374 }, --Wartorn Chain Scrap
			{ itemID = 22375 }, --Wartorn Plate Scrap
		gap,
			{ itemID = 22708 }, --Fate of Ramaladni
			{ itemID = 23055 }, --Word of Thawing
		},
	},
}

---------------------
--- Onyxia's Lair 60 ---
---------------------

AtlasLoot_Data["Onyxia60"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Onyxia's Lair"],
	Type = "ClassicRaid",
	Map = "Onyxia60",
	{
		Name = BabbleZone["Onyxia's Lair"],
		WebID = {10184,"npc"},
		{
			{ itemID = 17067, groupID = 2, refLootEntry = 10184 }, --Ancient Cornerstone Grimoire
			{ itemID = 18212, groupID = 2, refLootEntry = 10184 }, --Band of Nyxondra
			{ itemID = 12596, groupID = 2, refLootEntry = 10184 }, --Charred Breastplate
			{ itemID = 17068, groupID = 2, refLootEntry = 10184 }, --Deathbringer
			{ itemID = 18210, groupID = 2, refLootEntry = 10184 }, --Draconic Effigy
			{ itemID = 18205, groupID = 2, refLootEntry = 10184 }, --Eskhandar's Collar
			{ itemID = 11571, groupID = 2, refLootEntry = 10184 }, --Flame-Infused Sceptre
			{ itemID = 18215, groupID = 2, refLootEntry = 10184 }, --Insignia of the Dragon
			{ itemID = 17084, groupID = 2, refLootEntry = 10184 }, --Mace of the Dragon Knight
			{ itemID = 18216, groupID = 2, refLootEntry = 10184 }, --Neltharion's Badge
			{ itemID = 18813, groupID = 2, refLootEntry = 10184 }, --Ring of Binding
			{ itemID = 17078, groupID = 2, refLootEntry = 10184 }, --Sapphiron Drape
			{ itemID = 17064, groupID = 2, refLootEntry = 10184 }, --Shard of the Scale
			{ itemID = 17075, groupID = 2, refLootEntry = 10184 }, --Vis'kag the Bloodletter
			{ itemID = 18211, groupID = 2, refLootEntry = 10184 }, --Wand of the Noble
		},
		{
			{ itemID = 2522460, lootTable = {"T2HEAD","Token"} }, --Chromatic Headpiece
			gap,
			{ itemID = 97269 }, --Head of Onyxia
			{ itemID = 18404 }, -- Onyxia Tooth Pendant
			{ itemID = 18403 }, -- Dragonslayer's Signet
			{ itemID = 18406 }, -- Onyxia Blood Talisman
			gap,
			{ itemID = 15410 }, -- Scale of Onyxia
			{ itemID = 17966 }, --Onyxia Hide Backpack
			gap,
			{ itemID = 53140, droprate = 5 }, --Formula: Enchant Cloak - Dragon Fire
			gap,
			{ itemID = 1180299 }, -- Draconic Warhorn: Onyxia
			gap,
			{ itemID = 49636, minDifficulty = "Heroic" }, -- Reins of the Onyxian Drake
		},
	},
}

AtlasLoot_Data["FrozenReach"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["Frozen Reach"],
	Type = "Manastorm",
	{
		Name = AL["Frozen Reach"],
		WebID ={98888,"item"},
		{
			{ itemID = 1519391 }, -- Reclaimed Blade of the Frozen Sepulcher
			{ itemID = 1519392 }, -- Frigid Bow of the Bonded Souls
			{ itemID = 1519380 }, -- Necklace of Frozen Reach
			{ itemID = 1519381 }, -- Beartooth Pendant
			{ itemID = 1519382 }, -- Alva's Gift
			{ itemID = 1519383 }, -- Ring of the Frozen Sepulcher
			{ itemID = 1519384 }, -- Ring of Bonded Souls
			{ itemID = 1519385 }, -- Signet of Arktos
			{ itemID = 1519386 }, -- Alva's Kinship Ring
			{ itemID = 1519387 }, -- Frozen Forgiveness
			{ itemID = 1519388 }, -- Frozen Vengeance
			{ itemID = 1519389 }, -- Call of the Sepulcher
			{ itemID = 1519390 }, -- Arktos' Resillience
			{ itemID = 1519379 }, -- Amulet of the Bonded Souls
		},
		{
			{ itemID = 1519393 }, -- Beastmaster's Whistle: Arktos
			{ itemID = 49095 }, -- Incarnation: Arktos
			{ itemID = 49093 }, -- Arktos
		},
	}
}

AtlasLoot_Data["SharedDungeonLoot"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["Shared Dungeon Loot"],
	Type = "ClassicDungeonExt",
	{
		Name = AL["Heroic"].." - "..color.WHITE..AL["Page 1"],
		{
			{ itemID = 1552721 }, --Holy Shroud
			{ itemID = 1553020 }, --Enduring Cap
			{ itemID = 1563102 }, --Cassandra's Grace
			{ itemID = 1563112 }, --Winged Helm
			{ itemID = 1563127 }, --Frostreaver Crown
			{ itemID = 1563128 }, --High Bergg Helm
			{ itemID = 1523169 }, --Scorn's Icy Choker
			{ itemID = 1563087 }, --River Pride Choker
			{ itemID = 1563089 }, --Skibi's Pendant
			{ itemID = 1552278 }, --Forest Tracker Epaulets
			{ itemID = 1563115 }, --Sheepshear Mantle
			{ itemID = 1563131 }, --Sparkleshell Mantle
			{ itemID = 1523178 }, --Mantle of Lady Falther'ess
			{ itemID = 1563005 }, --Amy's Blanket
			{ itemID = 1563109 }, --Blackflame Cape
		},
		{
			{ itemID = 1551715 }, --Polished Jazeraint Armor
			{ itemID = 1551717 }, --Double Link Tunic
			{ itemID = 1552800 }, --Black Velvet Robes
			{ itemID = 1559433 }, --Forgotten Wraps
			{ itemID = 1563012 }, --Yorgen Bracers
			{ itemID = 1563076 }, --Giantslayer Bracers
			{ itemID = 1563106 }, --Glowing Magical Bracelets
			{ itemID = 1550754 }, --Shortsword of Vengeance
			{ itemID = 1552011 }, --Twisted Sabre
			{ itemID = 1552912 }, --Claw of the Shadowmancer
			{ itemID = 1554090 }, --Mug O' Hurt
			{ itemID = 1554091 }, --Widowmaker
		},
	},
	{
		Name = AL["Heroic"].." - "..color.WHITE..AL["Page 2"],
		{
			{ itemID = 1559359 }, --Wirt's Third Leg
			{ itemID = 1562974 }, --The Black Knight
			{ itemID = 1563024 }, --Beazel's Basher
			{ itemID = 1563032 }, --Sword of Corruption
			{ itemID = 1563035 }, --Serpent Slicer
			{ itemID = 1563048 }, --Looming Gavel
			{ itemID = 1552299 }, --Burning War Axe
			{ itemID = 1552877 }, --Combatant Claymore
			{ itemID = 1553203 }, --Dense Triangle Mace
			{ itemID = 1563016 }, --Killmaim
			{ itemID = 1563018 }, --Executioner's Cleaver
			{ itemID = 1563041 }, --Guardian Blade
			{ itemID = 1563043 }, --Blade of the Titans
			{ itemID = 1563049 }, --Deanship Claymore
			{ itemID = 1563051 }, --Witchfury
		},
		{
			{ itemID = 1551203 }, --Aegis of Stormwind
			{ itemID = 1563079 }, --Shield of Thorsen
			{ itemID = 1563082 }, --Mountainside Buckler
			{ itemID = 1563031 }, --Orb of Mistmantle
			{ itemID = 1563019 }, --Harpyclaw Short Bow
			{ itemID = 1563021 }, --Needle Threader
			{ itemID = 2248297 }, --Oversimplified Stick Chucker
			{ itemID = 1523177 }, --Lady Falther'ess' Finger
			{ itemID = 1552098 }, --Double-barreled Shotgun
			{ itemID = 1563037 }, --Crystalpine Stinger
			{ itemID = 1563039 }, --Skull Splitting Crossbow
			{ itemID = 1563062 }, --Thunderwood
			{ itemID = 1523170 }, --The Frozen Clutch
			{ itemID = 1550720 }, --Brawler Gloves
			{ itemID = 1563071 }, --Plated Fist of Hakoo
		},
	},
	{
		Name = AL["Heroic"].." - "..color.WHITE..AL["Page 3"],
		{
			{ itemID = 1559405 }, --Girdle of Golem Strength
			{ itemID = 1563011 }, --Silver-lined Belt
			{ itemID = 1563134 }, --Belt of the Gladiator
			{ itemID = 1563145 }, --Enormous Ogre Belt
			{ itemID = 1523173 }, --Abomination Skin Leggings
			{ itemID = 1563010 }, --Dreamsinger Legguards
			{ itemID = 1563074 }, --Golem Shard Leggings
			{ itemID = 1563114 }, --Troll's Bane Leggings
			{ itemID = 1563099 }, --Moccasins of the color.WHITE Hare
			{ itemID = 1563100 }, --Furen's Boots
			{ itemID = 2248085 }, --Gordok Knuckleband
			{ itemID = 2448085 }, --Flattened Elven Ring
			{ itemID = 1563094 }, --The Queen's Jewel
			{ itemID = 1563095 }, --Assault Band
			{ itemID = 1563097 }, --Thunderbrow Ring
		},
		{
			{ itemID = 1551713 }, --Ankh of Life
		},
	},
	{
		Name = AL["Mythic"].." - "..color.WHITE..AL["Page 1"],
		{
			{ itemID = 2431147 }, --Pendant of Cunning
			{ itemID = 2431178 }, --Amulet of Unstable Power
			{ itemID = 2431196 }, --Amulet of Sanctification
			{ itemID = 2431148 }, --Demon Hide Spaulders
			{ itemID = 294191 }, --Cloak of Dark Bargain
			{ itemID = 2431140 }, --Cloak of Entropy
			{ itemID = 2431143 }, --Shroud of Frenzy
			{ itemID = 2431127 }, --Hauberk of Totemic Rage
			{ itemID = 2431136 }, --Breastplate of Blade Turning
			{ itemID = 2431152 }, --Chestguard of Illumination
			{ itemID = 2431286 }, --Breastplate of Rapid Striking
			{ itemID = 2431127 }, --Hauberk of Totemic Rage
			{ itemID = 2431136 }, --Breastplate of Blade Turning
			{ itemID = 2431152 }, --Chestguard of Illumination
			{ itemID = 2431286 }, --Breastplate of Rapid Striking
		},
		{
			{ itemID = 2431175 }, --Blade Dancer's Wristguards
			{ itemID = 2431284 }, --Bracers of Recklessness
			{ itemID = 2431175 }, --Blade Dancer's Wristguards
			{ itemID = 2431284 }, --Bracers of Recklessness
			{ itemID = 2431134 }, --Blade of Misfortune
			{ itemID = 2431139 }, --Fist of Reckoning
			{ itemID = 2431142 }, --Blade of Trapped Knowledge
			{ itemID = 2431153 }, --Axe of the Legion
			{ itemID = 2431193 }, --Blade of Unquenched Thirst
			{ itemID = 2431200 }, --Shield of the Wayward Footman
			{ itemID = 2431204 }, --The Gunblade
			{ itemID = 2431137 }, --Gauntlets of Purification
			{ itemID = 2431149 }, --Gloves of Pandemonium
			{ itemID = 2431150 }, --Gloves of Piety
			{ itemID = 2431180 }, --Gauntlets of the Skullsplitter
		},
	},
	{
		Name = AL["Mythic"].." - "..color.WHITE..AL["Page 2"],
		{
			{ itemID = 2431131 }, --Sash of Silent Blades
			{ itemID = 2431138 }, --Storm Lord's Girdle
			{ itemID = 2431151 }, --Girdle of Siege
			{ itemID = 2431202 }, --Girdle of Divine Blessing
			{ itemID = 2431133 }, --Leggings of Concentrated Darkness
			{ itemID = 2431226 }, --Leggings of the Sly
			{ itemID = 431276 }, --Boots of Zealotry
			{ itemID = 2431125 }, --Boots of the Decimator
			{ itemID = 2431173 }, --Boots of Savagery
			{ itemID = 2431187 }, --Boots of the Pathfinder
			{ itemID = 2431230 }, --Abyss Walker's Boots
		},
	}

}

--------------------------
--- Sets & Collections ---
--------------------------

------------------------------------
------ Mark of Triumph Vendor ------
------------------------------------

AtlasLoot_Data["MarkOfTriumph"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["Mark of Triumph Vendor"],
	Type = "ClassicDungeonExt",
	{
		Name = AL["Page 1"],
		WebID = {1414503,"npc"},
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
		},
		{
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
		},
	},
	{
		Name = AL["Page 2"],
		WebID = {1414503,"npc"},
		{
			{ itemID = 1414555 }, -- Shroud of the Cathedral
			{ itemID = 1414556 }, -- Dragonfang Talisman
			{ itemID = 1414557 }, -- Dungeonlord's Drape
			{ itemID = 1414558 }, -- Golden Greathelm
			{ itemID = 1414559 }, -- Lunar Splinter
			{ itemID = 1414515 }, -- Soothing Aquamarine Cloak
		},
	},
}
------------------------------------
--- Dungeon 1 and 2 Sets (D1/D2) ---
------------------------------------

AtlasLoot_Data["T0"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Dungeon Sets",
	Type = "ClassicDungeonExt",
	{
		Name = AL["Wildheart Raiment"],
		{
			{ itemID = 16720, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Wildheart Cowl
			{ itemID = 16718, desc = "=ds=" ..BabbleBoss["Gizrul the Slavener"] .." (" ..AL["LBRS"] ..")" }, --Wildheart Spaulders
			{ itemID = 16706, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Wildheart Vest
			{ itemID = 16714, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }, --Wildheart Bracers
			{ itemID = 16717, desc = "=ds=" ..BabbleBoss["The Unforgiven"] .." (" ..AL["Strat"] ..")" }, --Wildheart Gloves
			{ itemID = 16716, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Scholo"] ..")" }, --Wildheart Belt
			{ itemID = 16719, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Wildheart Kilt
			{ itemID = 16715, desc = "=ds=" ..BabbleBoss["Mother Smolderweb"] .." (" ..AL["LBRS"] ..")" }, --Wildheart Boots
		},
	},
	{
		Name = AL["Beaststalker Armor"],
		{
			{ itemID = 16677, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Beaststalker's Cap
			{ itemID = 16679, desc = "=ds=" ..BabbleBoss["Overlord Wyrmthalak"] .." (" ..AL["LBRS"] ..")" }, --Beaststalker's Mantle
			{ itemID = 16674, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Beaststalker's Tunic
			{ itemID = 16681, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }, --Beaststalker's Bindings
			{ itemID = 16676, desc = "=ds=" ..BabbleBoss["War Master Voone"] .." (" ..AL["LBRS"] ..")" }, --Beaststalker's Gloves
			{ itemID = 16680, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }, --Beaststalker's Belt
			{ itemID = 16678, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Beaststalker's Pants
			{ itemID = 16675, desc = "=ds=" ..BabbleBoss["Nerub'enkan"] .." (" ..AL["Strat"] ..")" }, --Beaststalker's Boots
		},
	},
	{
		Name = AL["Magister's Regalia"],
		{
			{ itemID = 16686, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Magister's Crown
			{ itemID = 16689, desc = "=ds=" ..BabbleBoss["Ras Frostwhisper"] .." (" ..AL["Scholo"] ..")" }, --Magister's Mantle
			{ itemID = 16688, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Magister's Robes
			{ itemID = 16683, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }, --Magister's Bindings
			{ itemID = 16684, desc = "=ds=" ..BabbleBoss["Doctor Theolen Krastinov"] .." (" ..AL["Scholo"] ..")" }, --Magister's Gloves
			{ itemID = 16685, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }, --Magister's Belt
			{ itemID = 16687, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Magister's Leggings
			{ itemID = 16682, desc = "=ds=" ..BabbleBoss["Hearthsinger Forresten"] .." (" ..AL["Strat"] ..")" }, --Magister's Boots
		},
	},
	{
		Name = AL["Lightforge Armor"],
		{
			{ itemID = 16727, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Lightforge Helm
			{ itemID = 16729, desc = "=ds=" ..BabbleBoss["The Beast"] .." (" ..AL["UBRS"] ..")" }, --Lightforge Spaulders
			{ itemID = 16726, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Lightforge Breastplate
			{ itemID = 16722, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Scholo"] ..")" }, --Lightforge Bracers
			{ itemID = 16724, desc = "=ds=" ..BabbleBoss["Timmy the Cruel"] .." (" ..AL["Strat"] ..")" }, --Lightforge Gauntlets
			{ itemID = 16723, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }, --Lightforge Belt
			{ itemID = 16728, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Lightforge Legplates
			{ itemID = 16725, desc = "=ds=" ..BabbleBoss["Balnazzar"] .." (" ..AL["Strat"] ..")" }, --Lightforge Boots
		},

	},
	{
		Name = AL["Vestments of the Devout"],
		{
			{ itemID = 16693, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Devout Crown
			{ itemID = 16695, desc = "=ds=" ..BabbleBoss["Solakar Flamewreath"] .." (" ..AL["UBRS"] ..")" }, --Devout Mantle
			{ itemID = 16690, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Devout Robe
			{ itemID = 16697, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }, --Devout Bracers
			{ itemID = 16692, "=q3=Devout Gloves", "=ds=" ..BabbleBoss["Archivist Galford"] .." (" ..AL["Strat"] ..")" },
			{ itemID = 16696, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }, --Devout Belt
			{ itemID = 16694, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Devout Skirt
			{ itemID = 16691, desc = "=ds=" ..BabbleBoss["Maleki the Pallid"] .." (" ..AL["Strat"] ..")" }, --Devout Sandals
		},
	},
	{
		Name = AL["Shadowcraft Armor"],
		{
			{ itemID = 16707, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Shadowcraft Cap
			{ itemID = 16708, desc = "=ds=" ..BabbleBoss["Cannon Master Willey"] .." (" ..AL["Strat"] ..")" }, --Shadowcraft Spaulders
			{ itemID = 16721, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Shadowcraft Tunic
			{ itemID = 16710, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Scholo"] ..")" }, --Shadowcraft Bracers
			{ itemID = 16712, desc = "=ds=" ..BabbleBoss["Shadow Hunter Vosh'gajin"] .." (" ..AL["LBRS"] ..")" }, --Shadowcraft Gloves
			{ itemID = 16713, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }, --Shadowcraft Belt
			{ itemID = 16709, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Shadowcraft Pants
			{ itemID = 16711, desc = "=ds=" ..BabbleBoss["Rattlegore"] .." (" ..AL["Scholo"] ..")" }, --Shadowcraft Boots
		},
	},
	{
		Name = AL["The Elements"],
		{
			{ itemID = 16667, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Coif of Elements
			{ itemID = 16669, desc = "=ds=" ..BabbleBoss["Gyth"] .." (" ..AL["UBRS"] ..")" }, --Pauldrons of Elements
			{ itemID = 16666, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Vest of Elements
			{ itemID = 16671, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }, --Bindings of Elements
			{ itemID = 16672, desc = "=ds=" ..BabbleBoss["Pyroguard Emberseer"] .." (" ..AL["UBRS"] ..")" }, --Gauntlets of Elements
			{ itemID = 16673, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }, --Cord of Elements
			{ itemID = 16668, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Kilt of Elements
			{ itemID = 16670, desc = "=ds=" ..BabbleBoss["Highlord Omokk"] .." (" ..AL["LBRS"] ..")" }, --Boots of Elements
		},
	},
	{
		Name = AL["Dreadmist Raiment"],
		{
			{ itemID = 16698, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Dreadmist Mask
			{ itemID = 16701, desc = "=ds=" ..BabbleBoss["Jandice Barov"] .." (" ..AL["Scholo"] ..")" }, --Dreadmist Mantle
			{ itemID = 16700, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Dreadmist Robe
			{ itemID = 16703, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }, --Dreadmist Bracers
			{ itemID = 16705, desc = "=ds=" ..BabbleBoss["Lorekeeper Polkelt"] .." (" ..AL["Scholo"] ..")" }, --Dreadmist Wraps
			{ itemID = 16702, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }, --Dreadmist Belt
			{ itemID = 16699, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Dreadmist Leggings
			{ itemID = 16704, desc = "=ds=" ..BabbleBoss["Baroness Anastari"] .." (" ..AL["Strat"] ..")" }, --Dreadmist Sandals
		},
	},
	{
		Name = AL["Battlegear of Valor"],
		{
			{ itemID = 16731, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }, --Helm of Valor
			{ itemID = 16733, desc = "=ds=" ..BabbleBoss["Warchief Rend Blackhand"] .." (" ..AL["UBRS"] ..")" }, --Spaulders of Valor
			{ itemID = 16730, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }, --Breastplate of Valor
			{ itemID = 16735, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }, --Bracers of Valor
			{ itemID = 16737, desc = "=ds=" ..BabbleBoss["Ramstein the Gorger"] .." (" ..AL["Strat"] ..")" }, --Gauntlets of Valor
			{ itemID = 16736, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }, --Belt of Valor
			{ itemID = 16732, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }, --Legplates of Valor
			{ itemID = 16734, desc = "=ds=" ..BabbleBoss["Kirtonos the Herald"] .." (" ..AL["Scholo"] ..")" }, --Boots of Valor
		},
	},
	{
		Name = "Lightborne",
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
	},
	{
		Name = "Thornheart",
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
	},
	{
		Name = "Currents",
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
	},
	{
		Name = "Bravery",
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
	},
	{
		Name = "Courage",
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
	},
	{
		Name = AL["Necropile Raiment"],
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
	},
	{
		Name = AL["Cadaverous Garb"],
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
	},
	{
		Name = AL["Bloodmail Regalia"],
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
	},
	{
		Name = AL["Deathbone Guardian"],
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
}

AtlasLoot_Data["T0.5"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Dungeon Sets Quest Upgrades",
	Type = "ClassicDungeonExt",
	{
		Name = AL["Feralheart Raiment"],
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
	},
	{
		Name = AL["Beastmaster Armor"],  
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
	},
	{
		Name = AL["Sorcerer's Regalia"],
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
	},
	{
		Name = AL["Soulforge Armor"],  
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
	},
	{
		Name = AL["Vestments of the Virtuous"],  
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
	},
	{
		Name = AL["Darkmantle Armor"],
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
	},
	{
		Name = AL["The Five Thunders"],
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
	},
	{
		Name = AL["Deathmist Raiment"],
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
	},
	{
		Name = AL["Battlegear of Heroism"],
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
}

-----------------------------
--- Tier 1/2 Sets (T1/T2) ---
-----------------------------

AtlasLoot_Data["T1"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Tier 1",
	Type = "ClassicRaid",
	{
		Name = "Druid"..color.WHITE.." - "..AL["Restoration"],
		{
			{ itemID = 16834, desc = "=ds=" ..BabbleBoss["Garr"] }, --Cenarion Helm
			{ itemID = 16836, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Cenarion Spaulders
			{ itemID = 16833, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Cenarion Vestments
			{ itemID = 16830, desc = "=ds=" ..AL["Trash Mobs"] }, --Cenarion Bracers
			{ itemID = 16831, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Cenarion Gloves
			{ itemID = 16828, desc = "=ds=" ..AL["Trash Mobs"] }, --Cenarion Belt
			{ itemID = 16835, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Cenarion Leggings
			{ itemID = 16829, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Cenarion Boots
		},
	},
	{
		Name = "Druid" ..color.WHITE.." - "..AL["Guardian"],
		{
			{ itemID = 13437, desc = "=ds=" ..BabbleBoss["Garr"] }, --Cenarion Cover
			{ itemID = 13439, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Cenarion Pauldrons
			{ itemID = 13436, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Cenarion Tunic
			{ itemID = 13434, desc = "=ds=" ..AL["Trash Mobs"] }, --Cenarion Bands
			{ itemID = 13435, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Cenarion Handguards
			{ itemID = 13432, desc = "=ds=" ..AL["Trash Mobs"] }, --Cenarion Girdle
			{ itemID = 13438, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Cenarion Pants
			{ itemID = 13433, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Cenarion Treads
		},
	},
	{
		Name = "Druid" ..color.WHITE.." - "..AL["Feral"],
		{
			{ itemID = 10984, desc = "=ds=" ..BabbleBoss["Garr"] }, --Cenarion Cover
			{ itemID = 10986, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Cenarion Pauldrons
			{ itemID = 10983, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Cenarion Tunic
			{ itemID = 10981, desc = "=ds=" ..AL["Trash Mobs"] }, --Cenarion Bands
			{ itemID = 10982, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Cenarion Handguards
			{ itemID = 10979, desc = "=ds=" ..AL["Trash Mobs"] }, --Cenarion Girdle
			{ itemID = 10985, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Cenarion Pants
			{ itemID = 10980, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Cenarion Treads
		},
	},
	{
		Name = "Druid" ..color.WHITE.." - "..AL["Balance"],
		{
			{ itemID = 10395, desc = "=ds=" ..BabbleBoss["Garr"] }, --Cenarion Cover
			{ itemID = 10396, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Cenarion Pauldrons
			{ itemID = 10415, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Cenarion Tunic
			{ itemID = 10416, desc = "=ds=" ..AL["Trash Mobs"] }, --Cenarion Bands
			{ itemID = 10425, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Cenarion Handguards
			{ itemID = 10468, desc = "=ds=" ..AL["Trash Mobs"] }, --Cenarion Girdle
			{ itemID = 10469, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Cenarion Pants
			{ itemID = 10516, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Cenarion Treads
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ itemID = 16846, desc = "=ds=" ..BabbleBoss["Garr"] }, --Giantstalker's Helmet
			{ itemID = 16848, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }, --Giantstalker's Epaulets
			{ itemID = 16845, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Giantstalker's Breastplate
			{ itemID = 16850, desc = "=ds=" ..AL["Trash Mobs"] }, --Giantstalker's Bracers
			{ itemID = 16852, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Giantstalker's Gloves
			{ itemID = 16851, desc = "=ds=" ..AL["Trash Mobs"] }, --Giantstalker's Belt
			{ itemID = 16847, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Giantstalker's Leggings
			{ itemID = 16849, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Giantstalker's Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ itemID = 16795, desc = "=ds=" ..BabbleBoss["Garr"] }, --Arcanist Crown
			{ itemID = 16797, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Arcanist Mantle
			{ itemID = 16798, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Arcanist Robes
			{ itemID = 16799, desc = "=ds=" ..AL["Trash Mobs"] }, --Arcanist Bindings
			{ itemID = 16801, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Arcanist Gloves
			{ itemID = 16802, desc = "=ds=" ..AL["Trash Mobs"] }, --Arcanist Belt
			{ itemID = 16796, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Arcanist Leggings
			{ itemID = 16800, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Arcanist Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - "..AL["Holy"],
		{
			{ itemID = 16854, desc = "=ds=" ..BabbleBoss["Garr"] }, --Lawbringer Helm
			{ itemID = 16856, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Lawbringer Spaulders
			{ itemID = 16853, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Lawbringer Chestguard
			{ itemID = 16857, desc = "=ds=" ..AL["Trash Mobs"] }, --Lawbringer Bracers
			{ itemID = 16860, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Lawbringer Gauntlets
			{ itemID = 16858, desc = "=ds=" ..AL["Trash Mobs"] }, --Lawbringer Belt
			{ itemID = 16855, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Lawbringer Legplates
			{ itemID = 16859, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Lawbringer Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - "..AL["Protection"],
		{
			{ itemID = 11536, desc = "=ds=" ..BabbleBoss["Garr"] }, --Lawbringer Greathelm
			{ itemID = 11538, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Lawbringer Pauldrons
			{ itemID = 11535, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Lawbringer Breastplate
			{ itemID = 11531, desc = "=ds=" ..AL["Trash Mobs"] }, --Lawbringer Wristguards
			{ itemID = 11533, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Lawbringer Handguards
			{ itemID = 11534, desc = "=ds=" ..AL["Trash Mobs"] }, --Lawbringer Waistguard
			{ itemID = 11537, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Lawbringer Legguards
			{ itemID = 11532, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Lawbringer Stompers
		},
	},
		{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - "..AL["Retribution"],
		{
			{ itemID = 11236, desc = "=ds=" ..BabbleBoss["Garr"] }, --Lawbringer Helmet
			{ itemID = 11237, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Lawbringer Epaulets
			{ itemID = 11238, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Lawbringer Chestpiece
			{ itemID = 11244, desc = "=ds=" ..AL["Trash Mobs"] }, --Lawbringer Bands
			{ itemID = 11245, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Lawbringer Gloves
			{ itemID = 11246, desc = "=ds=" ..AL["Trash Mobs"] }, --Lawbringer Girdle
			{ itemID = 11247, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Lawbringer Greaves
			{ itemID = 11248, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Lawbringer Treads
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - ".. AL["Healing"],
		{
			{ itemID = 16813, desc = "=ds=" ..BabbleBoss["Garr"] }, --Circlet of Prophecy
			{ itemID = 16816, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }, --Mantle of Prophecy
			{ itemID = 16815, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] },
			{ itemID = 16819, desc = "=ds=" ..AL["Trash Mobs"] }, --Vambraces of Prophecy
			{ itemID = 16812, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Gloves of Prophecy
			{ itemID = 16817, desc = "=ds=" ..AL["Trash Mobs"] }, --Girdle of Prophecy
			{ itemID = 16814, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Pants of Prophecy
			{ itemID = 16811, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Boots of Prophecy
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - ".. AL["Shadow"],
		{
			{ itemID = 10012, desc = "=ds=" ..BabbleBoss["Garr"] }, --Circlet of Prophecy
			{ itemID = 10013, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }, --Mantle of Prophecy
			{ itemID = 10291, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Gown of Prophecy
			{ itemID = 10292, desc = "=ds=" ..AL["Trash Mobs"] }, --Vambraces of Prophecy
			{ itemID = 10293, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Gloves of Prophecy
			{ itemID = 10294, desc = "=ds=" ..AL["Trash Mobs"] }, --Girdle of Prophecy
			{ itemID = 10295, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Pants of Prophecy
			{ itemID = 10334, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Boots of Prophecy
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ itemID = 16821, desc = "=ds=" ..BabbleBoss["Garr"] }, --Nightslayer Cover
			{ itemID = 16823, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }, --Nightslayer Shoulder Pads
			{ itemID = 16820, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Nightslayer Chestpiece
			{ itemID = 16825, desc = "=ds=" ..AL["Trash Mobs"] }, --Nightslayer Bracelets
			{ itemID = 16826, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Nightslayer Gloves
			{ itemID = 16827, desc = "=ds=" ..AL["Trash Mobs"] }, --Nightslayer Belt
			{ itemID = 16822, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Nightslayer Pants
			{ itemID = 16824, desc = "=ds=" ..BabbleBoss["Shazzrah"] }, --Nightslayer Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - "..AL["Restoration"],
		{
			{ itemID = 16842, desc = "=ds=" ..BabbleBoss["Garr"] }, --Earthfury Helmet
			{ itemID = 16844, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Earthfury Epaulets
			{ itemID = 16841, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Earthfury Vestments
			{ itemID = 16840, desc = "=ds=" ..AL["Trash Mobs"] }, --Earthfury Bracers
			{ itemID = 16839, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Earthfury Gauntlets
			{ itemID = 16838, desc = "=ds=" ..AL["Trash Mobs"] }, --Earthfury Belt
			{ itemID = 16843, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Earthfury Legguards
			{ itemID = 16837, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Earthfury Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - "..AL["Enhancement"],
		{
			{ itemID = 11794, desc = "=ds=" ..BabbleBoss["Garr"] }, --Earthfury Cover
			{ itemID = 11796, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Earthfury Pauldrons
			{ itemID = 11792, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Earthfury Tunic
			{ itemID = 11793, desc = "=ds=" ..AL["Trash Mobs"] }, --Earthfury Bands
			{ itemID = 11791, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Earthfury Gloves
			{ itemID = 11790, desc = "=ds=" ..AL["Trash Mobs"] }, --Earthfury Girdle
			{ itemID = 11789, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Earthfury Leggings
			{ itemID = 11795, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Earthfury Treads
		},
	},
		{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - "..AL["Elemental"],
		{
			{ itemID = 10861, desc = "=ds=" ..BabbleBoss["Garr"] }, --Earthfury Cover
			{ itemID = 10908, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Earthfury Pauldrons
			{ itemID = 10923, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }, --Earthfury Tunic
			{ itemID = 10924, desc = "=ds=" ..AL["Trash Mobs"] }, --Earthfury Bands
			{ itemID = 10925, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Earthfury Gloves
			{ itemID = 10926, desc = "=ds=" ..AL["Trash Mobs"] }, --Earthfury Girdle
			{ itemID = 10960, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Earthfury Leggings
			{ itemID = 10961, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Earthfury Treads
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ itemID = 16808, desc = "=ds=" ..BabbleBoss["Garr"] }, --Felheart Horns
			{ itemID = 16807, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }, --Felheart Shoulder Pads
			{ itemID = 16809, "=q4=Felheart Robes", "=ds=" ..BabbleBoss["Golemagg the Incinerator"] },
			{ itemID = 16804, desc = "=ds=" ..AL["Trash Mobs"] }, --Felheart Bracers
			{ itemID = 16805, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Felheart Gloves
			{ itemID = 16806, desc = "=ds=" ..AL["Trash Mobs"] }, --Felheart Belt
			{ itemID = 16810, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Felheart Pants
			{ itemID = 16803, "=q4=Felheart Slippers", "=ds=" ..BabbleBoss["Shazzrah"], "1" },
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] ..color.WHITE.." - ".. AL["Tank"],
		{
			{ itemID = 16866, desc = "=ds=" ..BabbleBoss["Garr"] }, --Helm of Might
			{ itemID = 16868, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }, --Pauldrons of Might
			{ itemID = 16865, "=q4=Breastplate of Might", "=ds=" ..BabbleBoss["Golemagg the Incinerator"], "1" },
			{ itemID = 16861, desc = "=ds=" ..AL["Trash Mobs"] }, --Bracers of Might
			{ itemID = 16863, desc = "=ds=" ..BabbleBoss["Lucifron"] }, --Gauntlets of Might
			{ itemID = 16864, desc = "=ds=" ..AL["Trash Mobs"] }, --Belt of Might
			{ itemID = 16867, desc = "=ds=" ..BabbleBoss["Magmadar"] }, --Legplates of Might
			{ itemID = 16862, desc = "=ds=" ..BabbleBoss["Gehennas"] }, --Sabatons of Might
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] ..color.WHITE.." - ".. AL["DPS"],
		{
			{ itemID = 10480, desc = "=ds=" ..BabbleBoss["Garr"] },--Faceguard of Might
			{ itemID = 10481, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] },--Shoulderpads of Might
			{ itemID = 10482, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] },--Chesttplate of Might
			{ itemID = 10483, desc = "=ds=" ..AL["Trash Mobs"] },--Wristguards of Might
			{ itemID = 10484, desc = "=ds=" ..BabbleBoss["Lucifron"] },--Handguards of Might
			{ itemID = 10485, desc = "=ds=" ..AL["Trash Mobs"] },--Girdle of Might
			{ itemID = 10486, desc = "=ds=" ..BabbleBoss["Magmadar"] },--Legguards of Might
			{ itemID = 10487, desc = "=ds=" ..BabbleBoss["Gehennas"] },--Stompers of Might
		},
	},
}

-- T2 Sets
AtlasLoot_Data["T2"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Tier 2",
	Type = "ClassicRaid",
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"]..color.WHITE.." - Healer",
		{
			{ itemID = 16900, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Stormrage Cover
			{ itemID = 16902, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Stormrage Pauldrons
			{ itemID = 16897, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Stormrage Chestguard
			{ itemID = 16904, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Stormrage Bracers
			{ itemID = 16899, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Stormrage Handguards
			{ itemID = 16903, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Stormrage Belt
			{ itemID = 16901, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Stormrage Legguards
			{ itemID = 16898, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Stormrage Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] ..color.WHITE.." - Tank",
		{
			{ itemID = 1517000, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Stormrage Cover
			{ itemID = 1517002, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Stormrage Pauldrons
			{ itemID = 1516997, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Stormrage Chestguard
			{ itemID = 1517004, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Stormrage Bracers
			{ itemID = 1516999, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Stormrage Handguards
			{ itemID = 1517003, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Stormrage Belt
			{ itemID = 1517001, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Stormrage Legguards
			{ itemID = 1516998, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Stormrage Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] ..color.WHITE.." - Caster",
		{
			{ itemID = 1516892, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Stormrage Cover
			{ itemID = 1516894, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Stormrage Pauldrons
			{ itemID = 1516889, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Stormrage Chestguard
			{ itemID = 1516896, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Stormrage Bracers
			{ itemID = 1516891, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Stormrage Handguards
			{ itemID = 1516895, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Stormrage Belt
			{ itemID = 1516893, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Stormrage Legguards
			{ itemID = 1516890, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Stormrage Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ itemID = 16939, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Dragonstalker's Helm
			{ itemID = 16937, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Dragonstalker's Spaulders
			{ itemID = 16942, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Dragonstalker's Breastplate
			{ itemID = 16935, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Dragonstalker's Bracers
			{ itemID = 16940, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Dragonstalker's Gauntlets
			{ itemID = 16936, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Dragonstalker's Belt
			{ itemID = 16938, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Dragonstalker's Legguards
			{ itemID = 16941, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Dragonstalker's Greaves
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ itemID = 16914, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Netherwind Crown
			{ itemID = 16917, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Netherwind Mantle
			{ itemID = 16916, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Netherwind Robes
			{ itemID = 16918, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Netherwind Bindings
			{ itemID = 16913, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Netherwind Gloves
			{ itemID = 16818, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Netherwind Belt
			{ itemID = 16915, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Netherwind Pants
			{ itemID = 16912, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Netherwind Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"],
		{
			{ itemID = 16955, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Judgement Crown
			{ itemID = 16953, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Judgement Spaulders
			{ itemID = 16958, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Judgement Breastplate
			{ itemID = 16951, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Judgement Bindings
			{ itemID = 16956, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Judgement Gauntlets
			{ itemID = 16952, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Judgement Belt
			{ itemID = 16954, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Judgement Legplates
			{ itemID = 16957, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Judgement Sabatons
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - Tank",
		{
			{ itemID = 1516955, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Judgement Crown
			{ itemID = 1516953, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Judgement Spaulders
			{ itemID = 1516958, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Judgement Breastplate
			{ itemID = 1516951, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Judgement Bindings
			{ itemID = 1516956, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Judgement Gauntlets
			{ itemID = 1516952, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Judgement Belt
			{ itemID = 1516954, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Judgement Legplates
			{ itemID = 1516957, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Judgement Sabatons
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - Healer",
		{
			{ itemID = 16921, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Halo of Transcendence
			{ itemID = 16924, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Pauldrons of Transcendence
			{ itemID = 16923, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Robes of Transcendence
			{ itemID = 16926, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Bindings of Transcendence
			{ itemID = 16920, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Handguards of Transcendence
			{ itemID = 16925, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Belt of Transcendence
			{ itemID = 16922, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Leggings of Transcendence
			{ itemID = 16919, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Boots of Transcendence
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - Caster",
		{
			{ itemID = 1516921, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Halo of Transcendence
			{ itemID = 1516924, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Pauldrons of Transcendence
			{ itemID = 1516923, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Robes of Transcendence
			{ itemID = 1516926, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Bindings of Transcendence
			{ itemID = 1516920, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Handguards of Transcendence
			{ itemID = 1516925, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Belt of Transcendence
			{ itemID = 1516922, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Leggings of Transcendence
			{ itemID = 1516919, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Boots of Transcendence
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ itemID = 16908, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Bloodfang Hood
			{ itemID = 16832, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Bloodfang Spaulders
			{ itemID = 16905, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Bloodfang Chestpiece
			{ itemID = 16911, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Bloodfang Bracers
			{ itemID = 16907, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Bloodfang Gloves
			{ itemID = 16910, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Bloodfang Belt
			{ itemID = 16909, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Bloodfang Pants
			{ itemID = 16906, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Bloodfang Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - Healer",
		{
			{ itemID = 16947, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Helmet of Ten Storms
			{ itemID = 16945, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Epaulets of Ten Storms
			{ itemID = 16950, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Breastplate of Ten Storms
			{ itemID = 16943, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Bracers of Ten Storms
			{ itemID = 16948, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Gauntlets of Ten Storms
			{ itemID = 16944, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Belt of Ten Storms
			{ itemID = 16946, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Legplates of Ten Storms
			{ itemID = 16949, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Greaves of Ten Storms
		},
	},
	{		
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - Caster",
		{
			{ itemID = 10962, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Helmet of Ten Storms
			{ itemID = 10963, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Epaulets of Ten Storms
			{ itemID = 10964, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Breastplate of Ten Storms
			{ itemID = 10965, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Bracers of Ten Storms
			{ itemID = 11001, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Gauntlets of Ten Storms
			{ itemID = 11002, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Belt of Ten Storms
			{ itemID = 11003, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Legplates of Ten Storms
			{ itemID = 11004, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Greaves of Ten Storms
		},
	},
	{		
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - Hybrid",
		{
			{ itemID = 1516947, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Helmet of Ten Storms
			{ itemID = 1516945, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Epaulets of Ten Storms
			{ itemID = 1516950, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Breastplate of Ten Storms
			{ itemID = 1516943, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Bracers of Ten Storms
			{ itemID = 1516948, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Gauntlets of Ten Storms
			{ itemID = 1516944, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Belt of Ten Storms
			{ itemID = 1516946, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Legplates of Ten Storms
			{ itemID = 1516949, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Greaves of Ten Storms
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ itemID = 16929, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Nemesis Skullcap
			{ itemID = 16932, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Nemesis Spaulders
			{ itemID = 16931, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Nemesis Robes
			{ itemID = 16934, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Nemesis Bracers
			{ itemID = 16928, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Nemesis Gloves
			{ itemID = 16933, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Nemesis Belt
			{ itemID = 16930, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Nemesis Leggings
			{ itemID = 16927, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Nemesis Boots
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - DPS",
		{
			{ itemID = 10904, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Faceguard of Wrath
			{ itemID = 10902, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Shoulderpads of Wrath
			{ itemID = 10907, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Chestplate of Wrath
			{ itemID = 10900, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Wristguards of Wrath
			{ itemID = 10905, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Grippers of Wrath
			{ itemID = 10901, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Belt of Wrath
			{ itemID = 10903, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Legguards of Wrath
			{ itemID = 10906, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Stompers of Wrath
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - Block Tank",
		{
			{ itemID = 16963, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Helm of Wrath
			{ itemID = 16961, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Pauldrons of Wrath
			{ itemID = 16966, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Breastplate of Wrath
			{ itemID = 16959, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Bracelets of Wrath
			{ itemID = 16964, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Gauntlets of Wrath
			{ itemID = 16960, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Waistband of Wrath
			{ itemID = 16962, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Legplates of Wrath
			{ itemID = 16965, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Sabatons of Wrath
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - Avoidance Tank",
		{
			{ itemID = 1516963, desc = "=ds=" ..BabbleBoss["Onyxia"] },--Faceguard of Wrath
			{ itemID = 1516961, desc = "=ds=" ..BabbleBoss["Chromaggus"] },--Shoulderpads of Wrath
			{ itemID = 1516966, desc = "=ds=" ..BabbleBoss["Nefarian"] },--Chestplate of Wrath
			{ itemID = 1516959, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] },--Wristguards of Wrath
			{ itemID = 1516964, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] },--Grippers of Wrath
			{ itemID = 1516960, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] },--Belt of Wrath
			{ itemID = 1516962, desc = "=ds=" ..BabbleBoss["Ragnaros"] },--Legguards of Wrath
			{ itemID = 1516965, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] },--Stompers of Wrath
		},
	},
}

------------------------
--- Tier 3 Sets (T3) ---
------------------------

AtlasLoot_Data["T3"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Tier 3",
	Type = "ClassicRaid",
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] ..color.WHITE.." - Healing",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] ..color.WHITE.." - Haste",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] ..color.WHITE.." - Feral Dps",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] ..color.WHITE.." - Tank",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] ..color.WHITE.." - Healing",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] ..color.WHITE.." - Dps",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] ..color.WHITE.." - Tank",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] ..color.WHITE.." - Healing",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] ..color.WHITE.." - Dps",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] ..color.WHITE.." - Enhancement",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] ..color.WHITE.." - Spell",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] ..color.WHITE.." - Block Tank",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] ..color.WHITE.." - Parry Tank",
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
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] ..color.WHITE.." - DPS",
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
}

------------------------
--- Vanilla WoW Sets ---
------------------------

AtlasLoot_Data["ClassicSets"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["Classic Sets"],
	{
		Name = AL["Defias Leather"],
		{
			{ itemID = 10399, desc = "=ds==q2="..BabbleBoss["Edwin VanCleef"] }, --Blackened Defias Armor
			{ itemID = 10401, desc = "=ds==q2="..AL["Defias Overseer/Taskmaster"] }, --Blackened Defias Gloves
			{ itemID = 10403, desc = "=ds==q2="..BabbleBoss["Captain Greenskin"] }, --Blackened Defias Belt
			{ itemID = 10400, desc = "=ds==q2="..AL["Defias Overseer/Taskmaster"] }, --Blackened Defias Leggings
			{ itemID = 10402, desc = "=ds==q2="..AL["Defias Strip Miner"] }, --Blackened Defias Boots
		},
	},
	{
		Name = AL["Embrace of the Viper"],
		{
			{ itemID = 6473, desc = "=ds==q2="..BabbleBoss["Lord Pythas"] }, --Armor of the Fang
			{ itemID = 10413, desc = "=ds==q2="..AL["Druid of the Fang"] }, --Gloves of the Fang
			{ itemID = 10412, desc = "=ds==q2="..BabbleBoss["Lady Anacondra"] }, --Belt of the Fang
			{ itemID = 10410, desc = "=ds==q2="..BabbleBoss["Lord Cobrahn"] }, --Leggings of the Fang
			{ itemID = 10411, desc = "=ds==q2="..BabbleBoss["Lord Serpentis"] }, --Footpads of the Fang
		},
	},
	{
		Name = AL["Chain of the Scarlet Crusade"],
		{
			{ itemID = 10328, desc = "=ds==q2="..AL["Scarlet Champion"] }, --Scarlet Chestpiece
			{ itemID = 10333, desc = "=ds==q2="..AL["Scarlet Protector/Guardsman"] }, --Scarlet Wristguards
			{ itemID = 10331, desc = "=ds==q2="..AL["Scarlet Centurion"] }, --Scarlet Gauntlets
			{ itemID = 10329, desc = "=ds==q2="..AL["Scarlet Defender/Myrmidon"] }, --Scarlet Belt
			{ itemID = 10330, desc = "=ds==q2="..AL["Herod/Mograine"] }, --Scarlet Leggings
			{ itemID = 10332, desc = "=ds==q2="..AL["Trash Mobs"] }, --Scarlet Boots
		},
	},
	{
		Name = AL["The Gladiator"],
		{
			{ itemID = 11729, desc = "=ds==q2=#brd3#, "..BabbleBoss["Hedrum the Creeper"] }, --Savage Gladiator Helm
			{ itemID = 11726, desc = "=ds==q2="..BabbleBoss["Gorosh the Dervish"] }, --Savage Gladiator Chain
			{ itemID = 11730, desc = "=ds==q2="..BabbleBoss["Eviscerator"] }, --Savage Gladiator Grips
			{ itemID = 11728, desc = "=ds==q2="..BabbleBoss["Ok'thor the Breaker"] }, --Savage Gladiator Leggings
			{ itemID = 11731, desc = "=ds==q2="..BabbleBoss["Anub'shiah"] }, --Savage Gladiator Greaves
		},
	},
	{
		Name = AL["Ironweave Battlesuit"],
		{
			{ itemID = 22302, desc = "=ds==q2="..BabbleBoss["Lord Valthalak"].." (#z9#)" }, --Ironweave Cowl
			{ itemID = 22305, desc = "=ds==q2="..AL["Theldren"].." ("..BabbleZone["Blackrock Depths"]..")" }, --Ironweave Mantle
			{ itemID = 22301, desc = "=ds==q2="..AL["Sothos and Jarien"].." ("..BabbleZone["Stratholme"]..")" }, --Ironweave Robe
			{ itemID = 22313, desc = "=ds==q2="..BabbleBoss["Halycon"].." (#z10#)" }, --Ironweave Bracers
			{ itemID = 22304, desc = "=ds==q2="..BabbleBoss["Isalien"].." ("..BabbleZone["Dire Maul (East)"]..")" }, --Ironweave Gloves
			{ itemID = 22306, desc = "=ds==q2="..BabbleBoss["Mor Grayhoof"].." (#z10#)" }, --Ironweave Belt
			{ itemID = 22303, desc = "=ds==q2="..BabbleBoss["Kormok"].." ("..BabbleZone["Scholomance"]..")" }, --Ironweave Pants
			{ itemID = 22311, desc = "=ds==q2="..BabbleBoss["The Beast"].." (#z9#)" }, --Ironweave Boots
		},
	},
	{
		Name = AL["The Postmaster"],
		{
			{ itemID = 13390 }, --The Postmaster's Band
			{ itemID = 13388 }, --The Postmaster's Tunic
			{ itemID = 13389 }, --The Postmaster's Trousers
			{ itemID = 13391 }, --The Postmaster's Treads
			{ itemID = 13392 }, --The Postmaster's Seal
		},
	},
	{
		Name = AL["Shard of the Gods"],
		{
			{ itemID = 17082, desc = "=ds==q2="..BabbleBoss["Ragnaros"].." ("..BabbleZone["Molten Core"]..")" }, --Shard of the Flame
			{ itemID = 17064, desc = "=ds==q2="..BabbleBoss["Onyxia"].." ("..BabbleZone["Onyxia's Lair"]..")" }, --Shard of the Scale
		},
	},
	{
		Name = AL["Spirit of Eskhandar"],
		{
			{ itemID = 18204 }, --Eskhandar's Pelt
			{ itemID = 18203 }, --Eskhandar's Right Claw
			{ itemID = 18202 }, --Eskhandar's Left Claw
		},
	},
	{
		Name = AL["Spider's Kiss"],
		{
			{ itemID = 13218 }, --Fang of the Crystal Spider
			{ itemID = 13183 }, --Venomspitter
		},
	},
	{
		Name = AL["Dal'Rend's Arms"],
		{
			{ itemID = 12940 }, --Dal'Rend's Sacred Charge
			{ itemID = 12939 }, --Dal'Rend's Tribal Guardian
		},
	},
	{
		Name = AL["Major Mojo Infusion"],
		{
			{ itemID = 19898 }, --Seal of Jin
			{ itemID = 19925 }, --Band of Jin
		},
	},
	{
		Name = AL["Overlord's Resolution"],
		{
			{ itemID = 19873 }, --Overlord's Crimson Band
			{ itemID = 19912 }, --Overlord's Onyx Band
		},
	},
	{
		Name = AL["Primal Blessing"],
		{
			{ itemID = 19896 }, --Thekal's Grasp
			{ itemID = 19910 }, --Arlokk's Grasp
		},
	},
	{
		Name = AL["Prayer of the Primal"],
		{
			{ itemID = 19863 }, --Primalist's Seal
			{ itemID = 19920 }, --Primalist's Band
		},
	},
	{
		Name = AL["Zanzil's Concentration"],
		{
			{ itemID = 19905 }, --Zanzil's Band
			{ itemID = 19893 }, --Zanzil's Seal
		},
	},
	{
		Name = AL["The Twin Blades of Hakkari"],
		{
			{ itemID = 19865 }, --Warblade of the Hakkari
			{ itemID = 19866 }, --Warblade of the Hakkari
		},
	},
}

---------------
--- ZG Sets ---
---------------

AtlasLoot_Data["ZGSets"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["Zul'Gurub Sets"],
	Type = "ClassicRaid",
	{
		Name = AL["Haruspex's Garb"],
		{
			{ itemID = 19955 }, -- =q4=Wushoolay's Charm of Nature" 
			{ itemID = 19613, desc = "=ds="..BabbleFaction["Exalted"] }, --Pristine Enchanted South Seas Kelp
			{ itemID = 19838, desc = "=q4="..AL["Primal Hakkari Tabard"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Haruspex's Tunic
			{ itemID = 19839, desc = "=q4="..AL["Primal Hakkari Sash"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Haruspex's Belt
			{ itemID = 19840, desc = "=q4="..AL["Primal Hakkari Stanchion"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Haruspex's Bracers
		},
	},
	{
		Name = AL["Predator's Armor"],
		{
			{ itemID = 19953 }, -- =q4=Renataki's Charm of Beasts" 
			{ itemID = 19621, desc = "=ds="..BabbleFaction["Exalted"] }, --Maelstrom's Wrath
			{ itemID = 19831, desc = "=q4="..AL["Primal Hakkari Aegis"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Predator's Mantle
			{ itemID = 19832, desc = "=q4="..AL["Primal Hakkari Shawl"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Predator's Belt
			{ itemID = 19833, desc = "=q4="..AL["Primal Hakkari Bindings"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Predator's Bracers
		},
	},
	{
		Name = AL["Illusionist's Attire"],
		{
			{ itemID = 19959 }, -- =q4=Hazza'rah's Charm of Magic" 
			{ itemID = 19601, desc = "=ds="..BabbleFaction["Exalted"] }, --Jewel of Kajaro
			{ itemID = 20034, desc = "=q4="..AL["Primal Hakkari Kossack"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Illusionist's Robe
			{ itemID = 19845, desc = "=q4="..AL["Primal Hakkari Shawl"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Illusionist's Mantle
			{ itemID = 19846, desc = "=q4="..AL["Primal Hakkari Bindings"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Illusionist's Wraps
		},
	},
	{
		Name = AL["Freethinker's Armor"],
		{
			{ itemID = 19952 }, -- =q4=Gri'lek's Charm of Valor" 
			{ itemID = 19588, desc = "=ds="..BabbleFaction["Exalted"] }, --Hero's Brand
			{ itemID = 19825, desc = "=q4="..AL["Primal Hakkari Tabard"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Freethinker's Breastplate
			{ itemID = 19826, desc = "=q4="..AL["Primal Hakkari Shawl"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Freethinker's Belt
			{ itemID = 19827, desc = "=q4="..AL["Primal Hakkari Bindings"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Freethinker's Armguards
		},
	},
	{
		Name = AL["Confessor's Raiment"],
		{
			{ itemID = 19958 }, -- =q4=Hazza'rah's Charm of Healing" 
			{ itemID = 19594, desc = "=ds="..BabbleFaction["Exalted"] }, --The All-Seeing Eye of Zuldazar
			{ itemID = 19841, desc = "=q4="..AL["Primal Hakkari Aegis"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Confessor's Mantle
			{ itemID = 19842, desc = "=q4="..AL["Primal Hakkari Sash"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Confessor's Bindings
			{ itemID = 19843, desc = "=q4="..AL["Primal Hakkari Stanchion"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Confessor's Wraps
		},
	},
	{
		Name = AL["Madcap's Outfit"],
		{
			{ itemID = 19954 }, -- =q4=Renataki's Charm of Trickery" 
			{ itemID = 19617, desc = "=ds="..BabbleFaction["Exalted"] }, --Zandalarian Shadow Mastery Talisman
			{ itemID = 19834, desc = "=q4="..AL["Primal Hakkari Aegis"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Madcap's Tunic
			{ itemID = 19835, desc = "=q4="..AL["Primal Hakkari Girdle"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Madcap's Mantle
			{ itemID = 19836, desc = "=q4="..AL["Primal Hakkari Armsplint"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Madcap's Bracers
		},
	},
	{
		Name = AL["Augur's Regalia"],
		{
			{ itemID = 19956 }, -- =q4=Wushoolay's Charm of Spirits" 
			{ itemID = 19609, desc = "=ds="..BabbleFaction["Exalted"] }, --Unmarred Vision of Voodress
			{ itemID = 19828, desc = "=q4="..AL["Primal Hakkari Tabard"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Augur's Hauberk
			{ itemID = 19829, desc = "=q4="..AL["Primal Hakkari Girdle"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Augur's Belt
			{ itemID = 19830, desc = "=q4="..AL["Primal Hakkari Armsplint"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Augur's Bracers
		},
	},
	{
		Name = AL["Demoniac's Threads"],
		{
			{ itemID = 19957 }, -- =q4=Hazza'rah's Charm of Destruction" 
			{ itemID = 19605, desc = "=ds="..BabbleFaction["Exalted"] }, --Kezan's Unstoppable Taint
			{ itemID = 20033, desc = "=q4="..AL["Primal Hakkari Kossack"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Demoniac's Robe
			{ itemID = 19849, desc = "=q4="..AL["Primal Hakkari Sash"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Demoniac's Mantle
			{ itemID = 19848, desc = "=q4="..AL["Primal Hakkari Stanchion"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Demoniac's Wraps
		},
	},
	{
		Name = AL["Vindicator's Battlegear"],
		{
			{ itemID = 19951 }, -- =q4=Gri'lek's Charm of Might" 
			{ itemID = 19577, desc = "=ds="..BabbleFaction["Exalted"] }, --Rage of Mugamba
			{ itemID = 19822, desc = "=q4="..AL["Primal Hakkari Kossack"]..", =ds="..BabbleFaction["Revered"] }, --Zandalar Vindicator's Breastplate
			{ itemID = 19823, desc = "=q4="..AL["Primal Hakkari Girdle"]..", =ds="..BabbleFaction["Honored"] }, --Zandalar Vindicator's Belt
			{ itemID = 19824, desc = "=q4="..AL["Primal Hakkari Armsplint"]..", =ds="..BabbleFaction["Friendly"] }, --Zandalar Vindicator's Armguards
		},
	},
}

-----------------
--- AQ20 Sets ---
-----------------

AtlasLoot_Data["AQ20Sets"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["AQ20 Class Sets"],
	Type = "ClassicRaid",
	{
		Name = AL["Symbols of Unending Life"],
		{
			{ itemID = 1506017, desc = "=q4="..AL["Qiraji Ornate Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Locket of Unending Life
			{ itemID = 21409, groupID = 3, refLootEntry = 15341 }, --Cloak of Unending Life
			{ itemID = 21408, groupID = 4, refLootEntry = 15369 }, --Band of Unending Life
		},
	},
	{
		Name = AL["Trappings of the Unseen Path"],
		{
			{ itemID = 1506018, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Choker of the Unseen Path
			{ itemID = 21403, groupID = 3, refLootEntry = 15341 }, --Cloak of the Unseen Path
			{ itemID = 21402, groupID = 4, refLootEntry = 15369 }, --Signet of the Unseen Path
		},
	},
	{
		Name = AL["Trappings of Vaulted Secrets"],
		{
			{ itemID = 1506021, desc = "=q4="..AL["Qiraji Ornate Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Charm of Vaulted Secrets
			{ itemID = 21415, groupID = 3, refLootEntry = 15341 }, --Drape of Vaulted Secrets
			{ itemID = 21414, groupID = 4, refLootEntry = 15369 }, --Band of Vaulted Secrets
		},
	},
	{
		Name = AL["Battlegear of Eternal Justice"],
		{
			{ itemID = 1506020, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Medallion of Eternal Justice
			{ itemID = 21397, groupID = 3, refLootEntry = 15341 }, --Cape of Eternal Justice
			{ itemID = 21396, groupID = 4, refLootEntry = 15369 }, --Ring of Eternal Justice
		},
	},
	{
		Name = AL["Finery of Infinite Wisdom"],
		{
			{ itemID = 1506023, desc = "=q4="..AL["Qiraji Ornate Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Bayadere of Infinite Wisdom
			{ itemID = 21412, groupID = 3, refLootEntry = 15341 }, --Shroud of Infinite Wisdom
			{ itemID = 21411, groupID = 4, refLootEntry = 15369 }, --Ring of Infinite Wisdom
		},
	},
	{
		Name = AL["Emblems of Veiled Shadows"],
		{
			{ itemID = 1506021, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Charm of Vaulted Secrets
			{ itemID = 21406, groupID = 3, refLootEntry = 15341 }, --Cloak of Veiled Shadows
			{ itemID = 21405, groupID = 4, refLootEntry = 15369 }, --Band of Veiled Shadows
		},
	},
	{
		Name = AL["Gift of the Gathering Storm"],
		{
			{ itemID = 1506024, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Necklace of the Gathering Storm
			{ itemID = 21400, groupID = 3, refLootEntry = 15341 }, --Cloak of the Gathering Storm
			{ itemID = 21399, groupID = 4, refLootEntry = 15369 }, --Ring of the Gathering Storm
		},
	},
	{
		Name = AL["Implements of Unspoken Names"],
		{
			{ itemID = 1506026, desc = "=q4="..AL["Qiraji Ornate Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Bayadere of Unspoken Names
			{ itemID = 21418, groupID = 3, refLootEntry = 15341 }, --Shroud of Unspoken Names
			{ itemID = 21417, groupID = 4, refLootEntry = 15369 }, --Ring of Unspoken Names
		},
	},
	{
		Name = AL["Battlegear of Unyielding Strength"],
		{
			{ itemID = 1506025, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Collar of Unyielding Strength
			{ itemID = 21394, groupID = 3, refLootEntry = 15341 }, --Drape of Unyielding Strength
			{ itemID = 21393, groupID = 4, refLootEntry = 15369 }, --Signet of Unyielding Strength
		},
	},
	{
		Name = AL["Keepsakes of Endless Machinations"],
		{
			{ itemID = 1506027, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Choker of Endless Machinations
			{ itemID = 1506028, groupID = 3, refLootEntry = 15341 }, --Shroud of Endless Machinations
			{ itemID = 1506029, groupID = 4, refLootEntry = 15369 }, --Loop of Endless Machinations
		},
	},
	{
		Name = AL["Regalia of Roaring Earth"],
		{
			{ itemID = 1506019, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Pendant of Roaring Earth
			{ itemID = 1506031, groupID = 3, refLootEntry = 15341 }, --Drape of Roaring Earth
			{ itemID = 1506030, groupID = 4, refLootEntry = 15369 }, --Signet of Roaring Earth
		},
	},
	{
		Name = AL["Relics of Ferocious Vigor"],
		{
			{ itemID = 1506034, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Choker of Ferocious Vigor
			{ itemID = 1506033, groupID = 3, refLootEntry = 15341 }, --Cape of Ferocious Vigor
			{ itemID = 1506032, groupID = 4, refLootEntry = 15369 }, --Signet of Ferocious Vigor
		},
	},
	{
		Name = AL["Laurels of the Faithful Zealot"],
		{
			{ itemID = 1506037, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Locket of the Faithful Zealot
			{ itemID = 1506036, groupID = 3, refLootEntry = 15341 }, --Shroud of the Faithful Zealot
			{ itemID = 1506035, groupID = 4, refLootEntry = 15369 }, --Band of the Faithful Zealot
		},
	},
	{
		Name = AL["Instruments of Masterful Technique"],
		{
			{ itemID = 1506040, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Locket of Masterful Technique
			{ itemID = 1506039, groupID = 3, refLootEntry = 15341 }, --Drape of Masterful Technique
			{ itemID = 1506038, groupID = 4, refLootEntry = 15369 }, --Band of Masterful Technique
		},
	},
	{
		Name = AL["Decorations of Martial Prowess"],
		{
			{ itemID = 1506043, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Lariat of Martial Prowess
			{ itemID = 1506042, groupID = 3, refLootEntry = 15341 }, --Cloak of Martial Prowess
			{ itemID = 1506041, groupID = 4, refLootEntry = 15369 }, --Ring of Martial Prowess
		},
	},
	{
		Name = AL["Trophies of Unrivaled Rage"],
		{
			{ itemID = 1506046, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Collar of Unrivaled Rage
			{ itemID = 1506045, groupID = 3, refLootEntry = 15341 }, --Cloak of Unrivaled Rage
			{ itemID = 1506044, groupID = 4, refLootEntry = 15369 }, --Signet of Unrivaled Rage
		},
	},
	{
		Name = AL["Remnants of Expansive Research"],
		{
			{ itemID = 1506049, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }, --Bayadere of Expansive Research
			{ itemID = 1506048, groupID = 3, refLootEntry = 15341 }, --Drape of Expansive Research
			{ itemID = 1506047, groupID = 4, refLootEntry = 15369 }, --Loop of Expansive Research
		},
	},
}

-----------------
--- AQ40 Sets ---
-----------------

AtlasLoot_Data["T2.5"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["AQ40 Class Sets"] .." (Tier 2.5)",
	Type = "ClassicRaid",
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"],
		{
			{ itemID = 21357 }, -- =q4=Genesis Vest" 
			{ itemID = 21353 }, -- =q4=Genesis Helm" 
			{ itemID = 21356 }, -- =q4=Genesis Trousers" 
			{ itemID = 21354 }, -- =q4=Genesis Shoulderpads" 
			{ itemID = 21355 }, -- =q4=Genesis Boots" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] ..color.WHITE.." - Tank",
		{
			{ itemID = 1507029 }, -- =q4=Genesis Carapace" 
			{ itemID = 1507025 }, -- =q4=Genesis Mask" 
			{ itemID = 1507028 }, -- =q4=Genesis Pants" 
			{ itemID = 1507026 }, -- =q4=Genesis Shoulderpads" 
			{ itemID = 1507027 }, -- =q4=Genesis Treads" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] ..color.WHITE.." - Feral",
		{
			{ itemID = 1507024 }, -- =q4=Genesis Garb" 
			{ itemID = 1507020 }, -- =q4=Genesis Visor" 
			{ itemID = 1507023 }, -- =q4=Genesis Legguards" 
			{ itemID = 1507021 }, -- =q4=Genesis Pauldrons" 
			{ itemID = 1507022 }, -- =q4=Genesis Footwraps" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ itemID = 21370 }, -- =q4=Striker's Hauberk" 
			{ itemID = 21366 }, -- =q4=Striker's Diadem" 
			{ itemID = 21368 }, -- =q4=Striker's Leggings" 
			{ itemID = 21367 }, -- =q4=Striker's Pauldrons" 
			{ itemID = 21365 }, -- =q4=Striker's Footguards" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ itemID = 21343 }, -- =q4=Enigma Robes" 
			{ itemID = 21347 }, -- =q4=Enigma Circlet" 
			{ itemID = 21346 }, -- =q4=Enigma Leggings" 
			{ itemID = 21345 }, -- =q4=Enigma Shoulderpads" 
			{ itemID = 21344 }, -- =q4=Enigma Boots" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"],
		{
			{ itemID = 21389 }, -- =q4=Avenger's Breastplate" 
			{ itemID = 21387 }, -- =q4=Avenger's Crown" 
			{ itemID = 21390 }, -- =q4=Avenger's Legguards" 
			{ itemID = 21391 }, -- =q4=Avenger's Pauldrons" 
			{ itemID = 21388 }, -- =q4=Avenger's Greaves" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .." - Tank",
		{
			{ itemID = 1507030 }, -- =q4=Avenger's Carapace" 
			{ itemID = 1507031 }, -- =q4=Avenger's Laurels" 
			{ itemID = 1507033 }, -- =q4=Avenger's Legplates" 
			{ itemID = 1507034 }, -- =q4=Avenger's Shoulderguards" 
			{ itemID = 1507032 }, -- =q4=Avenger's Sabatons" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"],
		{
			{ itemID = 21351 }, -- =q4=Vestments of the Oracle" 
			{ itemID = 21348 }, -- =q4=Tiara of the Oracle" 
			{ itemID = 21352 }, -- =q4=Trousers of the Oracle" 
			{ itemID = 21350 }, -- =q4=Mantle of the Oracle" 
			{ itemID = 21349 }, -- =q4=Footwraps of the Oracle" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ itemID = 21364 }, -- =q4=Deathdealer's Vest" 
			{ itemID = 21360 }, -- =q4=Deathdealer's Helm" 
			{ itemID = 21362 }, -- =q4=Deathdealer's Leggings" 
			{ itemID = 21361 }, -- =q4=Deathdealer's Spaulders" 
			{ itemID = 21359 }, -- =q4=Deathdealer's Boots" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],
		{
			{ itemID = 21374 }, -- =q4=Stormcaller's Hauberk" 
			{ itemID = 21372 }, -- =q4=Stormcaller's Diadem" 
			{ itemID = 21375 }, -- =q4=Stormcaller's Leggings" 
			{ itemID = 21376 }, -- =q4=Stormcaller's Pauldrons" 
			{ itemID = 21373 }, -- =q4=Stormcaller's Footguards" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .." - Hybrid",
		{
			{ itemID = 1507017 }, -- =q4=Stormcaller's Chestguard" 
			{ itemID = 1507015 }, -- =q4=Stormcaller's Crown" 
			{ itemID = 1507018 }, -- =q4=Stormcaller's Greaves" 
			{ itemID = 1507019 }, -- =q4=Stormcaller's Epaulets" 
			{ itemID = 1507016 }, -- =q4=Stormcaller's Stompers" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ itemID = 21334 }, -- =q4=Doomcaller's Robes" 
			{ itemID = 21337 }, -- =q4=Doomcaller's Circlet" 
			{ itemID = 21336 }, -- =q4=Doomcaller's Trousers" 
			{ itemID = 21335 }, -- =q4=Doomcaller's Mantle" 
			{ itemID = 21338 }, -- =q4=Doomcaller's Footwraps" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .." - Tank",
		{
			{ itemID = 21331 }, -- =q4=Conqueror's Breastplate" 
			{ itemID = 21329 }, -- =q4=Conqueror's Crown" 
			{ itemID = 21332 }, -- =q4=Conqueror's Legguards" 
			{ itemID = 21330 }, -- =q4=Conqueror's Spaulders" 
			{ itemID = 21333 }, -- =q4=Conqueror's Greaves" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .." - Parry Tank",
		{
			{ itemID = 1507002 }, -- =q4=Conqueror's Carapace" 
			{ itemID = 1507000 }, -- =q4=Conqueror's Tusks" 
			{ itemID = 1507003 }, -- =q4=Conqueror's Tassets" 
			{ itemID = 1507001 }, -- =q4=Conqueror's Shoulderplates" 
			{ itemID = 1507004 }, -- =q4=Conqueror's Advance" 
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .." - DPS",
		{
			{ itemID = 10912 }, -- =q4=Conqueror's Chestplate" 
			{ itemID = 10910 }, -- =q4=Conqueror's Headguard" 
			{ itemID = 10913 }, -- =q4=Conqueror's Platelegs" 
			{ itemID = 10911 }, -- =q4=Conqueror's Shoulderpads" 
			{ itemID = 10914 }, -- =q4=Conqueror's War Stompers" 
		},
	},
}

-----------------------
--- BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsCLASSIC"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["BoE World Epics"],
	Type = "ClassicDungeonExt",
	{
		Name = AL["Level 30-39"],
		{
			{ itemID = 867 },--Gloves of Holy Might
			{ itemID = 1981 },--Icemail Jerkin
			{ itemID = 1980 }, -- =q4=Underworld Band" 
		},
		{
			{ itemID = 869 }, -- =q4=Dazzling Longsword" 
			{ itemID = 1982 },--Nightblade
			{ itemID = 870 },--Fiery War Axe
			{ itemID = 868 },--Ardent Custodian
			{ itemID = 873 },--Staff of Jordan
			{ itemID = 1204 },--The Green Tower
			{ itemID = 2825 },--Bow of Searing Arrows
		},
	},
	{
		Name = AL["Level 40-49"],
		{
			{ itemID = 3075 },--Eye of Flame
			{ itemID = 940 },--Robes of Insight
			{ itemID = 14551 },--Edgemaster's Handguards
			{ itemID = 17007 },--Stonerender Gauntlets
			{ itemID = 14549 },--Boots of Avoidance
			{ itemID = 1315 }, -- =q4=Lei of Lilies" 
			{ itemID = 942 }, -- =q4=Freezing Band" 
			{ itemID = 1447 }, -- =q4=Ring of Saviors" 
		},
		{
			{ itemID = 2164 },--Gut Ripper
			{ itemID = 2163 },--Shadowblade
			{ itemID = 809 }, -- =q4=Bloodrazor" 
			{ itemID = 871 }, -- =q4=Flurry Axe" 
			{ itemID = 2291 },--Kang the Decapitator
			{ itemID = 810 },--Hammer of the Northern Wind
			{ itemID = 2915 }, -- =q4=Taran Icebreaker" 
			{ itemID = 812 },--Glowing Brightwood Staff
			{ itemID = 943 },--Warden Staff
			{ itemID = 1169 },--Blackskull Shield
			{ itemID = 1979 },--Wall of the Dead
			{ itemID = 2824 },--Hurricane
			{ itemID = 2100, desc = "=ds=#w5#" },--Precisely Calibrated Boomstick
		},
	},
	{
		Name = AL["Level 50-60"],
		{
			{ itemID = 3475 }, -- =q4=Cloak of Flames" 
			{ itemID = 14553 },--Sash of Mercy
			{ itemID = 2245 },--Helm of Narv
			{ itemID = 14552 },--Stockade Pauldrons
			{ itemID = 14554 },--Cloudkeeper Legplates
			{ itemID = 1443 }, -- =q4=Jeweled Amulet of Cainwyn" 
			{ itemID = 14558 }, -- =q4=Lady Maye's Pendant" 
			{ itemID = 2246 }, -- =q4=Myrmidon's Signet" 
			{ itemID = 833 }, -- =q4=Lifestone" 
			{ itemID = 14557 }, -- =q4=The Lion Horn of Stormwind" 
		},
		{
			{ itemID = 14555 },--Alcor's Sunrazor
			{ itemID = 2244 }, -- =q4=Krol Blade" 
			{ itemID = 1728 }, -- =q4=Teebu's Blazing Longsword" 
			{ itemID = 2801 },--Blade of Hanna
			{ itemID = 647 },--Destiny
			{ itemID = 811 }, -- =q4=Axe of the Deep Woods" 
			{ itemID = 1263 },--Brain Hacker
			{ itemID = 2243 },--Hand of Edward the Odd
			{ itemID = 944 },--Elemental Mage Staff
			{ itemID = 1168 },--Skullflame Shield
			{ itemID = 2099, desc = "=ds=#w5#" },--Dwarven Hand Cannon
		},
	},
}

-----------
--- PvP ---
-----------

----------------------
--- Alterac Valley ---
----------------------

AtlasLoot_Data["AVMisc"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Alterac Valley"],
	{
		Name = AL["Misc. Rewards"],
		{
			{ icon = "INV_BannerPVP_02", name = color.WHITE..BabbleFaction["Alliance"], desc = "=q5="..BabbleFaction["Stormpike Guard"] },
			{ itemID = 19030, price = "50000 #alliance#" }, --Stormpike Battle Charger
			{ itemID = 19045, price = "15000 #alliance#" }, --Stormpike Battle Standard
			{ itemID = 19032, price = "15000 #alliance#" }, --Stormpike Battle Tabard
			{ itemID = 19316, price = "60 #silver# 1 #faction#" }, --Ice Threaded Arrow
			{ itemID = 17348, price = "10 #silver# 8 #faction#" }, --Major Healing Draught
			{ itemID = 17349, price = "5 #silver# 1 #faction#" }, --Superior Healing Draught
			{ itemID = 19301, price = "70 #silver#" }, --Alterac Manna Biscuit
			{ itemID = 19307, price = "80 #silver#" }, --Alterac Heavy Runecloth Bandage
		},
		{
			{ icon = "INV_BannerPVP_01", name = color.WHITE..BabbleFaction["Horde"], desc = "=q5="..BabbleFaction["Frostwolf Clan"] },
			{ itemID = 19029, price = "50000 #horde#" }, --Horn of the Frostwolf Howler
			{ itemID = 19046, price = "15000 #horde#" }, --Frostwolf Battle Standard
			{ itemID = 19031, price = "15000 #horde#" }, --Frostwolf Battle Tabard
			{ itemID = 19317, price = "60 #silver# 1 #faction#" }, --Ice Threaded Bullet
			{ itemID = 17351, price = "10 #silver# 8 #faction#" }, --Major Mana Draught
			{ itemID = 17352, price = "5 #silver# 1 #faction#" }, --Superior Mana Draught
			{ itemID = 19318, price = "50 #silver#" }, --Bottled Alterac Spring Water
		},
	},
	{
		Name = "Alliance",
		{
			{ itemID = 19086, price = "1600 #alliance#" }, --Stormpike Sage's Cloak
			{ itemID = 19084, price = "1600 #alliance#" }, --Stormpike Soldier's Cloak
			{ itemID = 19094, price = "3000 #alliance#" }, --Stormpike Cloth Girdle
			{ itemID = 19093, price = "3000 #alliance#" }, --Stormpike Leather Girdle
			{ itemID = 19092, price = "3000 #alliance#" }, --Stormpike Mail Girdle
			{ itemID = 19091, price = "3000 #alliance#" }, --Stormpike Plate Girdle
			{ itemID = 19098, price = "1600 #alliance#" }, --Stormpike Sage's Pendant
			{ itemID = 19097, price = "1600 #alliance#" }, --Stormpike Soldier's Pendant
			{ itemID = 19100, price = "2400 #alliance#" }, --Electrified Dagger
			{ itemID = 19104, price = "2400 #alliance#" }, --Stormstrike Hammer
			{ itemID = 19102, price = "3000 #alliance#" }, --Crackling Staff
			{ itemID = 19320, price = "1600 #alliance#" }, --Gnoll Skin Bandolier
			{ itemID = 19319, price = "1600 #alliance#" }, --Harpy Hide Quiver
			{ itemID = 19325, price = "5000 #faction#" }, --Don Julio's Band
		},
		{
			{ itemID = 21563, price = "5000 #faction#" }, --Don Rodrigo's Band
			{ itemID = 19312, price = "5000 #faction#" }, --Lei of the Lifegiver
			{ itemID = 19315, price = "5000 #faction#" }, --Therazane's Touch
			{ itemID = 19308, price = "5000 #faction#" }, --Tome of Arcane Domination
			{ itemID = 19309, price = "5000 #faction#" }, --Tome of Shadow Force
			{ itemID = 19311, price = "5000 #faction#" }, --Tome of Fiery Arcana
			{ itemID = 19310, price = "5000 #faction#" }, --Tome of the Ice Lord
			{ itemID = 19324, price = "5000 #faction#" }, --The Lobotomizer
			{ itemID = 19321, price = "5000 #faction#" }, --The Immovable Object
			{ itemID = 19323, price = "5000 #faction#" }, --The Unstoppable Force
		},
	},
	{
		Name = "Horde",
		{
			{ itemID = 19085, price = "1600 #horde#" }, --Frostwolf Advisor's Cloak
			{ itemID = 19083, price = "1600 #horde#" }, --Frostwolf Legionnaire's Cloak
			{ itemID = 19090, price = "3000 #horde#" }, --Frostwolf Cloth Belt
			{ itemID = 19089, price = "3000 #horde#" }, --Frostwolf Leather Belt
			{ itemID = 19088, price = "3000 #horde#" }, --Frostwolf Mail Belt
			{ itemID = 19087, price = "3000 #horde#" }, --Frostwolf Plate Belt
			{ itemID = 19096, price = "1600 #horde#" }, --Frostwolf Advisor's Pendant
			{ itemID = 19095, price = "1600 #horde#" }, --Frostwolf Legionnaire's Pendant
			{ itemID = 19099, price = "2400 #horde#" }, --Glacial Blade
			{ itemID = 19103, price = "2400 #horde#" }, --Frostbite
			{ itemID = 19101, price = "3000 #horde#" }, --Whiteout Staff
			{ itemID = 19320, price = "1600 #horde#" }, --Gnoll Skin Bandolier
			{ itemID = 19319, price = "1600 #horde#" }, --Harpy Hide Quiver
		},
		{
			{ itemID = 19325, price = "5000 #faction#" }, --Don Julio's Band
			{ itemID = 21563, price = "5000 #faction#" }, --Don Rodrigo's Band
			{ itemID = 19312, price = "5000 #faction#" }, --Lei of the Lifegiver
			{ itemID = 19315, price = "5000 #faction#" }, --Therazane's Touch
			{ itemID = 19308, price = "5000 #faction#" }, --Tome of Arcane Domination
			{ itemID = 19309, price = "5000 #faction#" }, --Tome of Shadow Force
			{ itemID = 19311, price = "5000 #faction#" }, --Tome of Fiery Arcana
			{ itemID = 19310, price = "5000 #faction#" }, --Tome of the Ice Lord
			{ itemID = 19324, price = "5000 #faction#" }, --The Lobotomizer
			{ itemID = 19321, price = "5000 #faction#" }, --The Immovable Object
			{ itemID = 19323, price = "5000 #faction#" }, --The Unstoppable Force
		},
	},
}

--------------------
--- Arathi Basin ---
--------------------

AtlasLoot_Data["AB_A"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Arathi Basin"] ..color.WHITE.." (Alliance)",
	{
		Name = AL["Misc. Rewards"],
		WebID = {509,"faction"},
		{
			{ itemID = 17349, price = "5 #silver# 1 #alliance#" }, --Superior Healing Draught
			{ itemID = 17352, price = "5 #silver# 1 #alliance#" }, --Superior Mana Draught
			{ itemID = 20225, price = "18 #silver#" }, --Highlander's Enriched Ration
			{ itemID = 20227, price = "13,5 #silver#" }, --Highlander's Iron Ration
			{ itemID = 20226, price = "9 #silver#" }, --Highlander's Field Ration
			{ itemID = 20243, price = "18 #silver#" }, --Highlander's Runecloth Bandage
			{ itemID = 20237, price = "13,5 #silver#" }, --Highlander's Mageweave Bandage
			{ itemID = 20244, price = "9 #silver#" }, --Highlander's Silk Bandage
			{ itemID = 21119, price = "300 #alliance#" }, --Talisman of Arathor
			{ itemID = 21118, price = "300 #alliance#" }, --Talisman of Arathor
			{ itemID = 21117, price = "400 #alliance#" }, --Talisman of Arathor
			{ itemID = 20071, price = "3000 #alliance#" }, --Talisman of Arathor
		},
	},
	{
		Name = AL["Level 60 Rewards"],
		WebID = {509,"faction"},
		{
			{ itemID = 20073, price = "5000 #alliance#" }, --Cloak of the Honor Guard
			{ itemID = 20070, price = "9000 #alliance#" }, --Sageclaw
			{ itemID = 20069, price = "16000 #alliance#" }, --Ironbark Staff
		},
	},
	{
		Name = AL["Level 40-49 Rewards"],
		WebID = {509,"faction"},
		{
			{ itemID = 20097, price = "400 #alliance#" }, --Highlander's Cloth Girdle
			{ itemID = 20094, price = "400 #alliance#" }, --Highlander's Cloth Boots
			{ itemID = 20115, price = "400 #alliance#" }, --Highlander's Leather Girdle
			{ itemID = 20103, price = "400 #alliance#" }, --Highlander's Lizardhide Girdle
			{ itemID = 20112, price = "400 #alliance#" }, --Highlander's Leather Boots
			{ itemID = 20100, price = "400 #alliance#" }, --Highlander's Lizardhide Boots
			{ itemID = 20089, price = "300 #alliance#" }, --Highlander's Chain Girdle
			{ itemID = 20088, price = "400 #alliance#" }, --Highlander's Chain Girdle
			{ itemID = 20119, price = "300 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20118, price = "400 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20092, price = "300 #alliance#" }, --Highlander's Chain Greaves
			{ itemID = 20091, price = "400 #alliance#" }, --Highlander's Chain Greaves
			{ itemID = 20122, price = "300 #alliance#" }, --Highlander's Mail Greaves
			{ itemID = 20121, price = "400 #alliance#" }, --Highlander's Mail Greaves
			{ itemID = 20107, price = "300 #alliance#" }, --Highlander's Lamellar Girdle
		},
		{
			{ itemID = 20106, price = "400 #alliance#" }, --Highlander's Lamellar Girdle
			{ itemID = 20125, price = "300 #alliance#" }, --Highlander's Plate Girdle
			{ itemID = 20124, price = "400 #alliance#" }, --Highlander's Plate Girdle
			{ itemID = 20110, price = "300 #alliance#" }, --Highlander's Lamellar Greaves
			{ itemID = 20109, price = "400 #alliance#" }, --Highlander's Lamellar Greaves
			{ itemID = 20128, price = "300 #alliance#" }, --Highlander's Plate Greaves
			{ itemID = 20127, price = "400 #alliance#" }, --Highlander's Plate Greaves
		},
	},
	{
		Name = AL["Level 30-39 Rewards"],
		WebID = {509,"faction"},
		{
			{ itemID = 20098, price = "300 #alliance#" }, --Highlander's Cloth Girdle
			{ itemID = 20095, price = "300 #alliance#" }, --Highlander's Cloth Boots
			{ itemID = 20116, price = "300 #alliance#" }, --Highlander's Leather Girdle
			{ itemID = 20104, price = "300 #alliance#" }, --Highlander's Lizardhide Girdle
			{ itemID = 20113, price = "300 #alliance#" }, --Highlander's Leather Boots
			{ itemID = 20101, price = "300 #alliance#" }, --Highlander's Lizardhide Boots
		},
	},
	{
		Name = AL["Level 20-29 Rewards"],
		WebID = {509,"faction"},
		{
			{ itemID = 20099, price = "300 #alliance#" }, --Highlander's Cloth Girdle
			{ itemID = 20096, price = "300 #alliance#" }, --Highlander's Cloth Boots
			{ itemID = 20117, price = "300 #alliance#" }, --Highlander's Leather Girdle
			{ itemID = 20105, price = "300 #alliance#" }, --Highlander's Lizardhide Girdle
			{ itemID = 20120, price = "300 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20090, price = "300 #alliance#" }, --Highlander's Padded Girdle
			{ itemID = 20114, price = "300 #alliance#" }, --Highlander's Leather Boots
			{ itemID = 20102, price = "300 #alliance#" }, --Highlander's Lizardhide Boots
			{ itemID = 20123, price = "300 #alliance#" }, --Highlander's Mail Greaves
			{ itemID = 20093, price = "300 #alliance#" }, --Highlander's Padded Greaves
			{ itemID = 20108, price = "300 #alliance#" }, --Highlander's Lamellar Girdle
			{ itemID = 20126, price = "300 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20111, price = "300 #alliance#" }, --Highlander's Lamellar Greaves
			{ itemID = 20129, price = "300 #alliance#" }, --Highlander's Mail Greaves
		},
	},
	{
		Name = AL["The Highlander's Intent"],
		WebID = {509,"faction"},
		{
			{ itemID = 20061, price = "9000 #alliance#" }, --Highlander's Epaulets
			{ itemID = 20047, price = "3000 #alliance#" }, --Highlander's Cloth Girdle
			{ itemID = 20054, price = "3000 #alliance#" }, --Highlander's Cloth Boots
		},
	},
	{
		Name = AL["The Highlander's Purpose"],
		WebID = {509,"faction"},
		{
			{ itemID = 20059, price = "9000 #alliance#" }, --Highlander's Leather Shoulders
			{ itemID = 20045, price = "3000 #alliance#" }, --Highlander's Leather Girdle
			{ itemID = 20052, price = "3000 #alliance#" }, --Highlander's Leather Boots
		},
	},
	{
		Name = AL["The Highlander's Will"],
		WebID = {509,"faction"},
		{
			{ itemID = 20060, price = "9000 #alliance#" }, --Highlander's Lizardhide Shoulders
			{ itemID = 20046, price = "3000 #alliance#" }, --Highlander's Lizardhide Girdle
			{ itemID = 20053, price = "3000 #alliance#" }, --Highlander's Lizardhide Boots
		},
	},
	{
		Name = AL["The Highlander's Determination"],
		WebID = {509,"faction"},
		{
			{ itemID = 20055, price = "9000 #alliance#" }, --Highlander's Chain Pauldrons
			{ itemID = 20043, price = "3000 #alliance#" }, --Highlander's Chain Girdle
			{ itemID = 20050, price = "3000 #alliance#" }, --Highlander's Chain Greaves
		},
	},
	{
		Name = AL["The Highlander's Fortitude"],
		WebID = {509,"faction"},
		{
			{ itemID = 20056, price = "9000 #alliance#" }, --Highlander's Mail Pauldrons
			{ itemID = 20044, price = "3000 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20051, price = "3000 #alliance#" }, --Highlander's Mail Greaves
		},
	},
	{
		Name = AL["The Highlander's Resolution"],
		WebID = {509,"faction"},
		{
			{ itemID = 20057, price = "9000 #alliance#" }, --Highlander's Plate Spaulders
			{ itemID = 20041, price = "3000 #alliance#" }, --Highlander's Plate Girdle
			{ itemID = 20048, price = "3000 #alliance#" }, --Highlander's Plate Greaves
		},
	},
	{
		Name = AL["The Highlander's Resolve"],
		WebID = {509,"faction"},
		{
			{ itemID = 20058, price = "9000 #alliance#" }, --Highlander's Lamellar Spaulders
			{ itemID = 20042, price = "3000 #alliance#" }, --Highlander's Lamellar Girdle
			{ itemID = 20049, price = "3000 #alliance#" }, --Highlander's Lamellar Greaves
		},
	},
}

AtlasLoot_Data["AB_H"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Arathi Basin"] ..color.WHITE.." (Horde)",
	{
		Name = AL["Misc. Rewards"],
		WebID = {510,"faction"},
		{
			{ itemID = 17349, price = "5 #silver# 5 #horde#" }, --Superior Healing Draught
			{ itemID = 17352, price = "5 #silver# 5 #horde#" }, --Superior Mana Draught
			{ itemID = 20222, price = "18 #silver#" }, --Defiler's Enriched Ration
			{ itemID = 20224, price = "15 #silver#" }, --Defiler's Iron Ration
			{ itemID = 20223, price = "9 #silver#" }, --Defiler's Field Ration
			{ itemID = 20234, price = "18 #silver#" }, --Defiler's Runecloth Bandage
			{ itemID = 20232, price = "15 #silver#" }, --Defiler's Mageweave Bandage
			{ itemID = 20235, price = "9 #silver#" }, --Defiler's Silk Bandage
			{ itemID = 21116, price = "300 #horde#" }, --Defiler's Talisman
			{ itemID = 21120, price = "300 #horde#" }, --Defiler's Talisman
			{ itemID = 21115, price = "400 #horde#" }, --Defiler's Talisman
			{ itemID = 20072, price = "3000 #horde#" }, --Defiler's Talisman
		},
	},
	{
		Name = AL["Level 60 Rewards"],
		WebID = {510,"faction"},
		{
			{ itemID = 20068, price = "5000 #horde#" }, --Deathguard's Cloak
			{ itemID = 20214, price = "9000 #horde#" }, --Mindfang
			{ itemID = 20220, price = "16000 #horde#" }, --Ironbark Staff
		},
	},
	{
		Name = AL["Level 40-49 Rewards"],
		WebID = {510,"faction"},
		{
			{ itemID = 20165, price = "400 #horde#" }, --Defiler's Cloth Girdle
			{ itemID = 20160, price = "400 #horde#" }, --Defiler's Cloth Boots
			{ itemID = 20193, price = "400 #horde#" }, --Defiler's Leather Girdle
			{ itemID = 20174, price = "400 #horde#" }, --Defiler's Lizardhide Girdle
			{ itemID = 20189, price = "400 #horde#" }, --Defiler's Leather Boots
			{ itemID = 20170, price = "400 #horde#" }, --Defiler's Lizardhide Boots
			{ itemID = 20153, price = "300 #horde#" }, --Defiler's Chain Girdle
			{ itemID = 20151, price = "400 #horde#" }, --Defiler's Chain Girdle
			{ itemID = 20198, price = "300 #horde#" }, --Defiler's Mail Girdle
			{ itemID = 20196, price = "400 #horde#" }, --Defiler's Mail Girdle
			{ itemID = 20156, price = "300 #horde#" }, --Defiler's Chain Greaves
			{ itemID = 20155, price = "400 #horde#" }, --Defiler's Chain Greaves
			{ itemID = 20200, price = "300 #horde#" }, --Defiler's Mail Greaves
			{ itemID = 20202, price = "400 #horde#" }, --Defiler's Mail Greaves
			{ itemID = 20180, price = "300 #horde#" }, --Defiler's Lamellar Girdle
		},
		{
			{ itemID = 20179, price = "400 #horde#" }, --Defiler's Lamellar Girdle
			{ itemID = 20206, price = "300 #horde#" }, --Defiler's Plate Girdle
			{ itemID = 20205, price = "400 #horde#" }, --Defiler's Plate Girdle
			{ itemID = 20183, price = "300 #horde#" }, --Defiler's Lamellar Greaves
			{ itemID = 20185, price = "400 #horde#" }, --Defiler's Lamellar Greaves
			{ itemID = 20209, price = "300 #horde#" }, --Defiler's Plate Greaves
			{ itemID = 20211, price = "400 #horde#" }, --Defiler's Plate Greaves
		},
	},
	{
		Name = AL["Level 30-39 Rewards"],
		WebID = {510,"faction"},
		{
			{ itemID = 20166, price = "300 #horde#" }, --Defiler's Cloth Girdle
			{ itemID = 20161, price = "300 #horde#" }, --Defiler's Cloth Boots
			{ itemID = 20192, price = "300 #horde#" }, --Defiler's Leather Girdle
			{ itemID = 20173, price = "300 #horde#" }, --Defiler's Lizardhide Girdle
			{ itemID = 20187, price = "300 #horde#" }, --Defiler's Leather Boots
			{ itemID = 20168, price = "300 #horde#" }, --Defiler's Lizardhide Boots
		},
	},
	{
		Name = AL["Level 20-29 Rewards"],
		WebID = {510,"faction"},
		{
			{ itemID = 20164, price = "300 #horde#" }, --Defiler's Cloth Girdle
			{ itemID = 20162, price = "300 #horde#" }, --Defiler's Cloth Boots
			{ itemID = 20191, price = "300 #horde#" }, --Defiler's Leather Girdle
			{ itemID = 20172, price = "300 #horde#" }, --Defiler's Lizardhide Girdle
			{ itemID = 20152, price = "300 #horde#" }, --Defiler's Chain Girdle
			{ itemID = 20197, price = "300 #horde#" }, --Defiler's Padded Girdle
			{ itemID = 20188, price = "300 #horde#" }, --Defiler's Leather Boots
			{ itemID = 20169, price = "300 #horde#" }, --Defiler's Lizardhide Boots
			{ itemID = 20201, price = "300 #horde#" }, --Defiler's Mail Greaves
		[0] = { itemID = 20157, price = "300 #horde#" }, --Defiler's Chain Greaves
			{ itemID = 20178, price = "300 #horde#" }, --Defiler's Lamellar Girdle
			{ itemID = 20207, price = "300 #horde#" }, --Defiler's Mail Girdle
			{ itemID = 20182, price = "300 #horde#" }, --Defiler's Lamellar Greaves
			{ itemID = 20210, price = "300 #horde#" }, --Defiler's Mail Greaves
		},
	},
	{
		Name = AL["The Defiler's Intent"],
		WebID = {510,"faction"},
		{
			{ itemID = 20176, price = "9000 #horde#" }, --Defiler's Epaulets
			{ itemID = 20163, price = "3000 #horde#" }, --Defiler's Cloth Girdle
			{ itemID = 20159, price = "3000 #horde#" }, --Defiler's Cloth Boots
		},
	},
	{
		Name = AL["The Defiler's Purpose"],
		WebID = {510,"faction"},
		{
			{ itemID = 20194, price = "9000 #horde#" }, --Defiler's Leather Shoulders
			{ itemID = 20190, price = "3000 #horde#" }, --Defiler's Leather Girdle
			{ itemID = 20186, price = "3000 #horde#" }, --Defiler's Leather Boots
		},
	},
	{
		Name = AL["The Defiler's Will"],
		WebID = {510,"faction"},
		{
			{ itemID = 20175, price = "9000 #horde#" }, --Defiler's Lizardhide Shoulders
			{ itemID = 20171, price = "3000 #horde#" }, --Defiler's Lizardhide Girdle
			{ itemID = 20167, price = "3000 #horde#" }, --Defiler's Lizardhide Boots
		},
	},
	{
		Name = AL["The Defiler's Determination"],
		WebID = {510,"faction"},
		{
			{ itemID = 20158, price = "9000 #horde#" }, --Defiler's Chain Pauldrons
			{ itemID = 20150, price = "3000 #horde#" }, --Defiler's Chain Girdle
			{ itemID = 20154, price = "3000 #horde#" }, --Defiler's Chain Greaves
		},
	},
	{
		Name = AL["The Defiler's Fortitude"],
		WebID = {510,"faction"},
		{
			{ itemID = 20203, price = "9000 #horde#" }, --Defiler's Mail Pauldrons
			{ itemID = 20195, price = "3000 #horde#" }, --Defiler's Mail Girdle
			{ itemID = 20199, price = "3000 #horde#" }, --Defiler's Mail Greaves
		},
	},
	{
		Name = AL["The Defiler's Resolution"],
		WebID = {510,"faction"},
		{
			{ itemID = 20212, price = "9000 #horde#" }, --Defiler's Plate Spaulders
			{ itemID = 20204, price = "3000 #horde#" }, --Defiler's Plate Girdle
			{ itemID = 20208, price = "3000 #horde#" }, --Defiler's Plate Greaves
		},
	},
	{
		Name = AL["The Defiler's Resolve"],
		WebID = {510,"faction"},
		{
			{ itemID = 20184, price = "9000 #horde#" }, --Defiler's Lamellar Spaulders
			{ itemID = 20177, price = "3000 #horde#" }, --Defiler's Lamellar Girdle
			{ itemID = 20181, price = "3000 #horde#" }, --Defiler's Lamellar Greaves
		},
	},
}

---------------------
--- Warsong Gulch ---
---------------------

AtlasLoot_Data["WSG_A"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Warsong Gulch"] ..color.WHITE.." (Alliance)",
	{
		Name = AL["Misc. Rewards"],
		WebID = {890,"faction"},
		{
			{ itemID = 19506, price = "12000 #faction#" }, --Silverwing Battle Tabard
			{ itemID = 17348, price = "10 #silver# 2 #faction#" }, --Major Healing Draught
			{ itemID = 17349, price = "5 #silver# 5 #faction#" }, --Superior Healing Draught
			{ itemID = 19060, price = "20 #silver#" }, --Warsong Gulch Enriched Ration
			{ itemID = 19062, price = "10 #silver#" }, --Warsong Gulch Field Ration
			{ itemID = 19067, price = "15 #silver#" }, --Warsong Gulch Mageweave Bandage
		},
	},
	{
		Name = AL["Accessories"],
		WebID = {890,"faction"},
		{
			{ itemID = 20428, price = "100 #alliance#" }, --Caretaker's Cape
			{ itemID = 19533, price = "100 #alliance#" }, --Caretaker's Cape
			{ itemID = 19532, price = "300 #alliance#" }, --Caretaker's Cape
			{ itemID = 19531, price = "300 #alliance#" }, --Caretaker's Cape
			{ itemID = 19530, price = "1600 #alliance#" }, --Caretaker's Cape
			{ itemID = 20444, price = "100 #alliance#" }, --Sentinel's Medallion
			{ itemID = 19541, price = "100 #alliance#" }, --Sentinel's Medallion
			{ itemID = 19540, price = "300 #alliance#" }, --Sentinel's Medallion
			{ itemID = 19539, price = "300 #alliance#" }, --Sentinel's Medallion
			{ itemID = 19538, price = "1600 #alliance#" }, --Sentinel's Medallion
			{ itemID = 21568, price = "300 #alliance#" }, --Rune of Duty
			{ itemID = 21567, price = "300 #alliance#" }, --Rune of Duty
		},
		{
			{ itemID = 20431, price = "100 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 19525, price = "100 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 19524, price = "300 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 19523, price = "300 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 19522, price = "1600 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 20439, price = "100 #alliance#" }, --Protector's Band
			{ itemID = 19517, price = "100 #alliance#" }, --Protector's Band
			{ itemID = 19515, price = "300 #alliance#" }, --Protector's Band
			{ itemID = 19516, price = "300 #alliance#" }, --Protector's Band
			{ itemID = 19514, price = "1600 #alliance#" }, --Protector's Band
			{ itemID = 21566, price = "300 #alliance#" }, --Rune of Perfection
			{ itemID = 21565, price = "300 #alliance#" }, --Rune of Perfection
		},
	},
	{
		Name = AL["Weapons"],
		WebID = {890,"faction"},
		{
			{ itemID = 20443, price = "300 #alliance#" }, --Sentinel's Blade
			{ itemID = 19549, price = "400 #alliance#" }, --Sentinel's Blade
			{ itemID = 19548, price = "500 #alliance#" }, --Sentinel's Blade
			{ itemID = 19547, price = "700 #alliance#" }, --Sentinel's Blade
			{ itemID = 19546, price = "6000 #alliance#" }, --Sentinel's Blade
			{ itemID = 20440, price = "300 #alliance#" }, --Protector's Sword
			{ itemID = 19557, price = "400 #alliance#" }, --Protector's Sword
			{ itemID = 19556, price = "500 #alliance#" }, --Protector's Sword
			{ itemID = 19555, price = "700 #alliance#" }, --Protector's Sword
			{ itemID = 19554, price = "6000 #alliance#" }, --Protector's Sword
		},
		{
			{ itemID = 20434, price = "500 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 19573, price = "700 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 19572, price = "1000 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 19571, price = "5000 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 19570, price = "15000 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 20438, price = "300 #alliance#" }, --Outrunner's Bow
			{ itemID = 19565, price = "400 #alliance#" }, --Outrunner's Bow
			{ itemID = 19564, price = "500 #alliance#" }, --Outrunner's Bow
			{ itemID = 19563, price = "700 #alliance#" }, --Outrunner's Bow
			{ itemID = 19562, price = "6000 #alliance#" }, --Outrunner's Bow
		},
	},
	{
		Name = BabbleInventory["Armor"],
		WebID = {890,"faction"},
		{
			{ itemID = 19597, price = "500 #alliance#" }, --Dryad's Wrist Bindings
			{ itemID = 19596, price = "700 #alliance#" }, --Dryad's Wrist Bindings
			{ itemID = 19595, price = "5000 #alliance#" }, --Dryad's Wrist Bindings
			{ itemID = 19590, price = "500 #alliance#" }, --Forest Stalker's Bracers
			{ itemID = 19589, price = "700 #alliance#" }, --Forest Stalker's Bracers
			{ itemID = 19587, price = "5000 #alliance#" }, --Forest Stalker's Bracers
			{ itemID = 19584, price = "500 #alliance#" }, --Windtalker's Wristguards
			{ itemID = 19583, price = "700 #alliance#" }, --Windtalker's Wristguards
			{ itemID = 19582, price = "5000 #alliance#" }, --Windtalker's Wristguards
			{ itemID = 19581, price = "500 #alliance#" }, --Berserker Bracers
			{ itemID = 19580, price = "700 #alliance#" }, --Berserker Bracers
			{ itemID = 19578, price = "5000 #alliance#" }, --Berserker Bracers
		},
		{
			{ itemID = 22752, price = "9000 #alliance#" }, --Sentinel's Silk Leggings
			{ itemID = 22749, price = "9000 #alliance#" }, --Sentinel's Leather Pants
			{ itemID = 22750, price = "9000 #alliance#" }, --Sentinel's Lizardhide Pants
			{ itemID = 22748, price = "9000 #alliance#" }, --Sentinel's Chain Leggings
			{ itemID = 30497, price = "9000 #alliance#" }, --Sentinel's Mail Leggings
			{ itemID = 22753, price = "9000 #alliance#" }, --Sentinel's Lamellar Legguards
			{ itemID = 22672, price = "9000 #alliance#" }, --Sentinel's Plate Legguards
		},
	},
}

AtlasLoot_Data["WSG_H"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Warsong Gulch"] ..color.WHITE.." (Horde)",
	{
		Name = AL["Misc. Rewards"],
		WebID = {889,"faction"},
		{
			{ itemID = 19505, price = "12000 #faction#" }, --Warsong Battle Tabard
			{ itemID = 17351, price = "10 #silver# 2 #faction#" }, --Major Mana Draught
			{ itemID = 17352, price = "5 #silver# 5 #faction#" }, --Superior Mana Draught
			{ itemID = 19061, price = "15 #silver#" }, --Warsong Gulch Iron Ration
			{ itemID = 19066, price = "20 #silver#" }, --Warsong Gulch Runecloth Bandage
			{ itemID = 19068, price = "10 #silver#" }, --Warsong Gulch Silk Bandage
		},
	},
	{
		Name = AL["Accessories"],
		WebID = {889,"faction"},
		{
			{ itemID = 20427, price = "100 #horde#" }, --Battle Healer's Cloak
			{ itemID = 19529, price = "100 #horde#" }, --Battle Healer's Cloak
			{ itemID = 19528, price = "300 #horde#" }, --Battle Healer's Cloak
			{ itemID = 19527, price = "300 #horde#" }, --Battle Healer's Cloak
			{ itemID = 19526, price = "1600 #horde#" }, --Battle Healer's Cloak
			{ itemID = 20442, price = "100 #horde#" }, --Scout's Medallion
			{ itemID = 19537, price = "100 #horde#" }, --Scout's Medallion
			{ itemID = 19536, price = "300 #horde#" }, --Scout's Medallion
			{ itemID = 19535, price = "300 #horde#" }, --Scout's Medallion
			{ itemID = 19534, price = "1600 #horde#" }, --Scout's Medallion
			{ itemID = 21568, price = "300 #horde#" }, --Rune of Duty
			{ itemID = 21567, price = "300 #horde#" }, --Rune of Duty
		},
		{
			{ itemID = 20426, price = "100 #horde#" }, --Advisor's Ring
			{ itemID = 19521, price = "100 #horde#" }, --Advisor's Ring
			{ itemID = 19520, price = "300 #horde#" }, --Advisor's Ring
			{ itemID = 19519, price = "300 #horde#" }, --Advisor's Ring
			{ itemID = 19518, price = "1600 #horde#" }, --Advisor's Ring
			{ itemID = 20429, price = "100 #horde#" }, --Legionnaire's Band
			{ itemID = 19513, price = "100 #horde#" }, --Legionnaire's Band
			{ itemID = 19512, price = "300 #horde#" }, --Legionnaire's Band
			{ itemID = 19511, price = "300 #horde#" }, --Legionnaire's Band
			{ itemID = 19510, price = "1600 #horde#" }, --Legionnaire's Band
			{ itemID = 21566, price = "300 #horde#" }, --Rune of Perfection
			{ itemID = 21565, price = "300 #horde#" }, --Rune of Perfection
		},
	},
	{
		Name = AL["Weapons"],
		WebID = {889,"faction"},
		{
			{ itemID = 20441, price = "300 #horde#" }, --Scout's Blade
			{ itemID = 19545, price = "400 #horde#" }, --Scout's Blade
			{ itemID = 19544, price = "500 #horde#" }, --Scout's Blade
			{ itemID = 19543, price = "700 #horde#" }, --Scout's Blade
			{ itemID = 19542, price = "6000 #horde#" }, --Scout's Blade
			{ itemID = 20430, price = "300 #horde#" }, --Legionnaire's Sword
			{ itemID = 19553, price = "400 #horde#" }, --Legionnaire's Sword
			{ itemID = 19552, price = "500 #horde#" }, --Legionnaire's Sword
			{ itemID = 19551, price = "700 #horde#" }, --Legionnaire's Sword
			{ itemID = 19550, price = "6000 #horde#" }, --Legionnaire's Sword
		},
		{
			{ itemID = 20425, price = "500 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 19569, price = "700 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 19568, price = "1000 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 19567, price = "5000 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 19566, price = "15000 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 20437, price = "300 #horde#" }, --Outrider's Bow
			{ itemID = 19561, price = "400 #horde#" }, --Outrider's Bow
			{ itemID = 19560, price = "500 #horde#" }, --Outrider's Bow
			{ itemID = 19559, price = "700 #horde#" }, --Outrider's Bow
			{ itemID = 19558, price = "6000 #horde#" }, --Outrider's Bow
		},
	},
	{
		Name = BabbleInventory["Armor"],
		WebID = {889,"faction"},
		{
			{ itemID = 19597, price = "500 #horde#" }, --Dryad's Wrist Bindings
			{ itemID = 19596, price = "700 #horde#" }, --Dryad's Wrist Bindings
			{ itemID = 19595, price = "5000 #horde#" }, --Dryad's Wrist Bindings
			{ itemID = 19590, price = "500 #horde#" }, --Forest Stalker's Bracers
			{ itemID = 19589, price = "700 #horde#" }, --Forest Stalker's Bracers
			{ itemID = 19587, price = "5000 #horde#" }, --Forest Stalker's Bracers
			{ itemID = 19584, price = "500 #horde#" }, --Windtalker's Wristguards
			{ itemID = 19583, price = "700 #horde#" }, --Windtalker's Wristguards
			{ itemID = 19582, price = "5000 #horde#" }, --Windtalker's Wristguards
			{ itemID = 19581, price = "500 #horde#" }, --Berserker Bracers
			{ itemID = 19580, price = "700 #horde#" }, --Berserker Bracers
			{ itemID = 19578, price = "5000 #horde#" }, --Berserker Bracers
		},
		{
			{ itemID = 22747, price = "9000 #horde#" }, --Outrider's Silk Leggings
			{ itemID = 22740, price = "9000 #horde#" }, --Outrider's Leather Pants
			{ itemID = 22741, price = "9000 #horde#" }, --Outrider's Lizardhide Pants
			{ itemID = 22673, price = "9000 #horde#" }, --Outrider's Chain Leggings
			{ itemID = 22676, price = "9000 #horde#" }, --Outrider's Mail Leggings
			{ itemID = 30498, price = "9000 #horde#" }, --Outrider's Lamellar Legguards
			{ itemID = 22651, price = "9000 #horde#" }, --Outrider's Plate Legguards
		},
	},
}

---------------------------------------
--- PvP Level 60 Rare and Epic Sets ---
---------------------------------------
AtlasLoot_Data["PVPDruid"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"],
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16424, price = "9435 #alliance#" }, --Lieutenant Commander's Dragonhide Headguard
			{ itemID = 16423, price = "6885 #alliance#" }, --Lieutenant Commander's Dragonhide Shoulders
			{ itemID = 16421, price = "9435 #alliance#" }, --Knight-Captain's Dragonhide Chestpiece
			{ itemID = 16397, price = "5000 #alliance#" }, --Knight-Lieutenant's Dragonhide Grips
			{ itemID = 16422, price = "9435 #alliance#" }, --Knight-Captain's Dragonhide Leggings
			{ itemID = 16393, price = "5000 #alliance#" }, --Knight-Lieutenant's Dragonhide Treads
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 23308, price = "24000 #alliance#" }, --Lieutenant Commander's Dragonhide Headguard
			{ itemID = 23309, price = "14000 #alliance#" }, --Lieutenant Commander's Dragonhide Shoulders
			{ itemID = 23294, price = "24000 #alliance#" }, --Knight-Captain's Dragonhide Chestpiece
			{ itemID = 23280, price = "14000 #alliance#" }, --Knight-Lieutenant's Dragonhide Grips
			{ itemID = 23295, price = "24000 #alliance#" }, --Knight-Captain's Dragonhide Leggings
			{ itemID = 23281, price = "14000 #alliance#" }, --Knight-Lieutenant's Dragonhide Treads
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16451, price = "68200 #alliance#" }, --Field Marshal's Dragonhide Helmet
			{ itemID = 16449, price = "52200 #alliance#" }, --Field Marshal's Dragonhide Spaulders
			{ itemID = 16452, price = "68200 #alliance#" }, --Field Marshal's Dragonhide Breastplate
			{ itemID = 16448, price = "52200 #alliance#" }, --Marshal's Dragonhide Gauntlets
			{ itemID = 16450, price = "68200 #alliance#" }, --Marshal's Dragonhide Legguards
			{ itemID = 16459, price = "52200 #alliance#" }, --Marshal's Dragonhide Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6116550, price = "2370 #arena# #horde#" }, --Grand Marshal's Chain Helm
			{ itemID = 6116551, price = "1930 #arena# #horde#" }, --Grand Marshal's Chain Spaulders
			{ itemID = 6116549, price = "2370 #arena# #horde#" }, --Grand Marshal's Chain Breastplate
			{ itemID = 6116555, price = "1430 #arena# #horde#" }, --Grand Marshal's Chain Grips
			{ itemID = 6116552, price = "2370 #arena# #horde#" }, --Grand Marshal's Chain Legguards
			{ itemID = 6116554, price = "1430 #arena# #horde#" }, --Grand Marshal's Chain Boots
		},
	},
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16503, price = "9435 #horde#" }, --Champion's Dragonhide Headguard
			{ itemID = 16501, price = "6885 #horde#" }, --Champion's Dragonhide Shoulders
			{ itemID = 16504, price = "9435 #horde#" }, --Legionnaire's Dragonhide Chestpiece
			{ itemID = 16496, price = "5000 #horde#" }, --Blood Guard's Dragonhide Grips
			{ itemID = 16502, price = "9435 #horde#" }, --Legionnaire's Dragonhide Leggings
			{ itemID = 16494, price = "5000 #horde#" }, --Blood Guard's Dragonhide Treads
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 23253, price = "24000 #horde#" }, --Champion's Dragonhide Headguard
			{ itemID = 23254, price = "14000 #horde#" }, --Champion's Dragonhide Shoulders
			{ itemID = 22877, price = "24000 #horde#" }, --Legionnaire's Dragonhide Chestpiece
			{ itemID = 22863, price = "14000 #horde#" }, --Blood Guard's Dragonhide Grips
			{ itemID = 22878, price = "24000 #horde#" }, --Legionnaire's Dragonhide Leggings
			{ itemID = 22852, price = "14000 #horde#" }, --Blood Guard's Dragonhide Treads
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16550, price = "68200 #horde#" }, --Warlord's Dragonhide Helmet
			{ itemID = 16551, price = "52200 #horde#" }, --Warlord's Dragonhide Epaulets
			{ itemID = 16549, price = "68200 #horde#" }, --Warlord's Dragonhide Hauberk
			{ itemID = 16555, price = "52200 #horde#" }, --General's Dragonhide Gloves
			{ itemID = 16552, price = "68200 #horde#" }, --General's Dragonhide Leggings
			{ itemID = 16554, price = "52200 #horde#" }, --General's Dragonhide Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6116451, price = "2370 #arena# #alliance#" }, --High Warlord's Dragonhide Helmet
			{ itemID = 6116449, price = "1930 #arena# #alliance#" }, --High Warlord's Dragonhide Epaulets
			{ itemID = 6116452, price = "2370 #arena# #alliance#" }, --High Warlord's Dragonhide Hauberk
			{ itemID = 6116448, price = "1430 #arena# #alliance#" }, --High High Warlord's Dragonhide Gloves
			{ itemID = 6116450, price = "2370 #arena# #alliance#" }, --High High Warlord's Dragonhide Leggings
			{ itemID = 6116459, price = "1430 #arena# #alliance#" }, --High High Warlord's Dragonhide Boots
		},
	},
	{
		Name = "Weapons",
		{
			{ itemID = 24551 }, -- Talisman of the Horde
			{ itemID = 25829 }, -- Talisman of the Alliance
			{ itemID = 18883 }, -- Grand Marshal's War Staff
			{ itemID = 18884 }, -- High Warlord's War Staff
			{ itemID = 18885 }, -- Grand Marshal's Focus Staff
			{ itemID = 18886 }, -- High Warlord's Focus Staff
			{ itemID = 18887 }, -- Grand Marshal's Magebow
			{ itemID = 18888 }, -- High Warlord's Magebow
			{ itemID = 18889 }, -- Grand Marshal's Soulpiercer
			{ itemID = 18890 }, -- High Warlord's Soulpiercer
			{ itemID = 18892 }, -- Grand Marshal's Spear
			{ itemID = 18893 }, -- High Warlord's Spear
			{ itemID = 18894 }, -- Commander's Touch of Hope
			{ itemID = 18895 }, -- High Warlord's Touch of Hope
			{ itemID = 18910 }, -- Grand Marshal's Soulblade
			{ itemID = 18911 }, -- High Warlord's Soulblade
			{ itemID = 18912 }, -- Grand Marshal's Salvation
			{ itemID = 18913 }, -- High Warlord's Salvation
			{ itemID = 18914 }, -- Grand Marshal's Conviction
			{ itemID = 18915 }, -- High Warlord's Conviction
		},
		{
			{ itemID = 18920 }, -- High Warlord's Mage Cannon
			{ itemID = 18921 }, -- Grand Marshal's Mage Cannon
			{ itemID = 18924 }, -- Grand Marshal's Barrier
			{ itemID = 18925 }, -- High Warlord's Barrier
			{ itemID = 3200533 }, -- Combatant's Amulet of Brawn
			{ itemID = 3200534 }, -- Combatant's Amulet of Prowess
			{ itemID = 3200535 }, -- Combatant's Amulet of Acumen
			{ itemID = 3200536 }, -- Combatant's Amulet of Intuition
			{ itemID = 3200537 }, -- Combatant's Loop of Prowess
			{ itemID = 3200538 }, -- Combatant's Loop of Brawn
			{ itemID = 3200539 }, -- Combatant's Loop of Acumen
			{ itemID = 3200540 }, -- Combatant's Loop of Intuition
			{ itemID = 3200541 }, -- Combatant's Cloak of Prowess
			{ itemID = 3200542 }, -- Combatant's Cloak of Brawn
			{ itemID = 3200543 }, -- Combatant's Cloak of Acumen
		},
	},
	{
		Name = "test",
		{
			{ itemID = 3200544 }, -- Combatant's Cloak of Intuition
			{ itemID = 3200545 }, -- Combatant's Amulet of Bravery
			{ itemID = 3200546 }, -- Combatant's Amulet of Proficiency
			{ itemID = 3200547 }, -- Combatant's Amulet of Alacrity
			{ itemID = 3200548 }, -- Combatant's Amulet of Insight
			{ itemID = 3200549 }, -- Combatant's Loop of Proficiency
			{ itemID = 3200550 }, -- Combatant's Loop of Bravery
			{ itemID = 3200551 }, -- Combatant's Loop of Alacrity
			{ itemID = 3200552 }, -- Combatant's Loop of Insight
			{ itemID = 3200553 }, -- Combatant's Cloak of Proficiency
			{ itemID = 3200554 }, -- Combatant's Cloak of Bravery
			{ itemID = 3200555 }, -- Combatant's Cloak of Alacrity
			{ itemID = 3200556 }, -- Combatant's Cloak of Insight
			{ itemID = 3016441 }, -- Field Marshal's Coronet
			{ itemID = 3016443 }, -- Field Marshal's Silk Vestments
		},
		{
			{ itemID = 3016444 }, -- Field Marshal's Silk Spaulders
			{ itemID = 3016449 }, -- Field Marshal's Dragonhide Spaulders
			{ itemID = 3016451 }, -- Field Marshal's Dragonhide Helmet
			{ itemID = 3016452 }, -- Field Marshal's Dragonhide Breastplate
			{ itemID = 3016453 }, -- Field Marshal's Leather Chestpiece
			{ itemID = 3016455 }, -- Field Marshal's Leather Mask
			{ itemID = 3016457 }, -- Field Marshal's Leather Epaulets
			{ itemID = 3016465 }, -- Field Marshal's Chain Helm
			{ itemID = 3016466 }, -- Field Marshal's Chain Breastplate
			{ itemID = 3016468 }, -- Field Marshal's Chain Spaulders
			{ itemID = 3016473 }, -- Field Marshal's Lamellar Chestplate
			{ itemID = 3016474 }, -- Field Marshal's Lamellar Faceguard
			{ itemID = 3016476 }, -- Field Marshal's Lamellar Pauldrons
			{ itemID = 3016477 }, -- Field Marshal's Plate Armor
			{ itemID = 3016478 }, -- Field Marshal's Plate Helm
		},
	},
	{
		Name = "test",
		{
			{ itemID = 3016480 }, -- Field Marshal's Plate Shoulderguards
			{ itemID = 3016533 }, -- Warlord's Silk Cowl
			{ itemID = 3016535 }, -- Warlord's Silk Raiment
			{ itemID = 3016536 }, -- Warlord's Silk Amice
			{ itemID = 3016541 }, -- Warlord's Plate Armor
			{ itemID = 3016542 }, -- Warlord's Plate Headpiece
			{ itemID = 3016544 }, -- Warlord's Plate Shoulders
			{ itemID = 3016549 }, -- Warlord's Dragonhide Hauberk
			{ itemID = 3016550 }, -- Warlord's Dragonhide Helmet
			{ itemID = 3016551 }, -- Warlord's Dragonhide Epaulets
			{ itemID = 3016561 }, -- Warlord's Leather Helm
			{ itemID = 3016562 }, -- Warlord's Leather Spaulders
			{ itemID = 3016563 }, -- Warlord's Leather Breastplate
			{ itemID = 3016565 }, -- Warlord's Chain Chestpiece
			{ itemID = 3016566 }, -- Warlord's Chain Helmet
		},
		{
			{ itemID = 3016568 }, -- Warlord's Chain Shoulders
			{ itemID = 3016577 }, -- Warlord's Linked Armor
			{ itemID = 3016578 }, -- Warlord's Linked Helm
			{ itemID = 3016580 }, -- Warlord's Linked Spaulders
			{ itemID = 3017578 }, -- Field Marshal's Coronal
			{ itemID = 3017580 }, -- Field Marshal's Dreadweave Shoulders
			{ itemID = 3017581 }, -- Field Marshal's Dreadweave Robe
			{ itemID = 3017590 }, -- Warlord's Dreadweave Mantle
			{ itemID = 3017591 }, -- Warlord's Dreadweave Hood
			{ itemID = 3017592 }, -- Warlord's Dreadweave Robe
			{ itemID = 3017602 }, -- Field Marshal's Headdress
			{ itemID = 3017604 }, -- Field Marshal's Satin Mantle
			{ itemID = 3017605 }, -- Field Marshal's Satin Vestments
			{ itemID = 3017622 }, -- Warlord's Satin Mantle
			{ itemID = 3017623 }, -- Warlord's Satin Cowl
		},
	},
	{
		Name = "test",
		{
			{ itemID = 3017624 }, -- Warlord's Satin Robes
			{ itemID = 3029609 }, -- Field Marshal's Linked Armor
			{ itemID = 3029610 }, -- Field Marshal's Linked Helm
			{ itemID = 3029611 }, -- Field Marshal's Linked Spaulders
			{ itemID = 3029615 }, -- Warlord's Lamellar Chestplate
			{ itemID = 3029616 }, -- Warlord's Lamellar Faceguard
			{ itemID = 3029617 }, -- Warlord's Lamellar Pauldrons
		},
	},
}



AtlasLoot_Data["PVPHunter"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16428, price = "9435 #alliance#" }, --Lieutenant Commander's Chain Helm
			{ itemID = 16427, price = "6885 #alliance#" }, --Lieutenant Commander's Chain Shoulders
			{ itemID = 16425, price = "9435 #alliance#" }, --Knight-Captain's Chain Hauberk
			{ itemID = 16403, price = "5000 #alliance#" }, --Knight-Lieutenant's Chain Vices
			{ itemID = 16426, price = "9435 #alliance#" }, --Knight-Captain's Chain Legguards
			{ itemID = 16401, price = "5000 #alliance#" }, --Knight-Lieutenant's Chain Greaves
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 23306, price = "24000 #alliance#" }, --Lieutenant Commander's Chain Helm
			{ itemID = 23307, price = "14000 #alliance#" }, --Lieutenant Commander's Chain Shoulders
			{ itemID = 23292, price = "24000 #alliance#" }, --Knight-Captain's Chain Hauberk
			{ itemID = 23279, price = "14000 #alliance#" }, --Knight-Lieutenant's Chain Vices
			{ itemID = 23293, price = "24000 #alliance#" }, --Knight-Captain's Chain Legguards
			{ itemID = 23278, price = "14000 #alliance#" }, --Knight-Lieutenant's Chain Greaves
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16465, price = "68200 #alliance#" }, --Field Marshal's Chain Helm
			{ itemID = 16468, price = "52200 #alliance#" }, --Field Marshal's Chain Spaulders
			{ itemID = 16466, price = "68200 #alliance#" }, --Field Marshal's Chain Breastplate
			{ itemID = 16463, price = "52200 #alliance#" }, --Marshal's Chain Grips
			{ itemID = 16467, price = "68200 #alliance#" }, --Marshal's Chain Legguards
			{ itemID = 16462, price = "52200 #alliance#" }, --Marshal's Chain Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6116465, price = "2370 #arena# #alliance#" }, --Grand Marshal's Chain Helm
			{ itemID = 6116468, price = "1930 #arena# #alliance#" }, --Grand Marshal's Chain Spaulders
			{ itemID = 6116466, price = "2370 #arena# #alliance#" }, --Grand Marshal's Chain Breastplate
			{ itemID = 6116463, price = "1430 #arena# #alliance#" }, --Grand Marshal's Chain Grips
			{ itemID = 6116467, price = "2370 #arena# #alliance#" }, --Grand Marshal's Chain Legguards
			{ itemID = 6116462, price = "1430 #arena# #alliance#" }, --Grand Marshal's Chain Boots
		},
	},
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16526, price = "9435 #horde#" }, --Champion's Chain Helm
			{ itemID = 16528, price = "6885 #horde#" }, --Champion's Chain Shoulders
			{ itemID = 16525, price = "9435 #horde#" }, --Legionnaire's Chain Hauberk
			{ itemID = 16530, price = "5000 #horde#" }, --Blood Guard's Chain Vices
			{ itemID = 16527, price = "9435 #horde#" }, --Legionnaire's Chain Legguards
			{ itemID = 16531, price = "5000 #horde#" }, --Blood Guard's Chain Greaves
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 23251, price = "24000 #horde#" }, --Champion's Chain Helm
			{ itemID = 23252, price = "14000 #horde#" }, --Champion's Chain Shoulders
			{ itemID = 22874, price = "24000 #horde#" }, --Legionnaire's Chain Hauberk
			{ itemID = 22862, price = "14000 #horde#" }, --Blood Guard's Chain Vices
			{ itemID = 22875, price = "24000 #horde#" }, --Legionnaire's Chain Legguards
			{ itemID = 22843, price = "14000 #horde#" }, --Blood Guard's Chain Greaves
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16566, price = "68200 #horde#" }, --Warlord's Chain Helmet
			{ itemID = 16568, price = "52200 #horde#" }, --Warlord's Chain Shoulders
			{ itemID = 16565, price = "68200 #horde#" }, --Warlord's Chain Chestpiece
			{ itemID = 16571, price = "52200 #horde#" }, --General's Chain Gloves
			{ itemID = 16567, price = "68200 #horde#" }, --General's Chain Legguards
			{ itemID = 16569, price = "52200 #horde#" }, --General's Chain Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6116566, price = "2370 #arena# #horde#" }, --High Warlord's Chain Helmet
			{ itemID = 6116568, price = "1930 #arena# #horde#" }, --High Warlord's Chain Shoulders
			{ itemID = 6116565, price = "2370 #arena# #horde#" }, --High Warlord's Chain Chestpiece
			{ itemID = 6116571, price = "1430 #arena# #horde#" }, --High High Warlord's Chain Gloves
			{ itemID = 6116567, price = "2370 #arena# #horde#" }, --High High Warlord's Chain Legguards
			{ itemID = 6116569, price = "1430 #arena# #horde#" }, --High High Warlord's Chain Boots
		},
	},
}

AtlasLoot_Data["PVPMage"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16416, price = "9435 #alliance#" }, --Lieutenant Commander's Silk Cowl
			{ itemID = 16415, price = "6885 #alliance#" }, --Lieutenant Commander's Silk Mantle
			{ itemID = 16413, price = "9435 #alliance#" }, --Knight-Captain's Silk Tunic
			{ itemID = 16391, price = "5000 #alliance#" }, --Knight-Lieutenant's Silk Handwraps
			{ itemID = 16414, price = "9435 #alliance#" }, --Knight-Captain's Silk Legguards
			{ itemID = 16369, price = "5000 #alliance#" }, --Knight-Lieutenant's Silk Walkers
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 23318, price = "24000 #alliance#" }, --Lieutenant Commander's Silk Cowl
			{ itemID = 23319, price = "14000 #alliance#" }, --Lieutenant Commander's Silk Mantle
			{ itemID = 23305, price = "24000 #alliance#" }, --Knight-Captain's Silk Tunic
			{ itemID = 23290, price = "14000 #alliance#" }, --Knight-Lieutenant's Silk Handwraps
			{ itemID = 23304, price = "24000 #alliance#" }, --Knight-Captain's Silk Legguards
			{ itemID = 23291, price = "14000 #alliance#" }, --Knight-Lieutenant's Silk Walkers
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16441, price = "68200 #alliance#" }, --Field Marshal's Coronet
			{ itemID = 16444, price = "52200 #alliance#" }, --Field Marshal's Silk Spaulders
			{ itemID = 16443, price = "68200 #alliance#" }, --Field Marshal's Silk Vestments
			{ itemID = 16440, price = "52200 #alliance#" }, --Marshal's Silk Gloves
			{ itemID = 16442, price = "68200 #alliance#" }, --Marshal's Silk Leggings
			{ itemID = 16437, price = "52200 #alliance#" }, --Marshal's Silk Footwraps
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6116441, price = "2370 #arena# #alliance#" }, --Grand Marshal's Coronet
			{ itemID = 6116444, price = "1930 #arena# #alliance#" }, --Grand Marshal's Silk Spaulders
			{ itemID = 6116443, price = "2370 #arena# #alliance#" }, --Grand Marshal's Silk Vestments
			{ itemID = 6116440, price = "1430 #arena# #alliance#" }, --Grand Marshal's Silk Gloves
			{ itemID = 6116442, price = "2370 #arena# #alliance#" }, --Grand Marshal's Silk Leggings
			{ itemID = 6116437, price = "1430 #arena# #alliance#" }, --Grand Marshal's Silk Footwraps
		},
	},
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16489, price = "9435 #horde#" }, --Champion's Silk Cowl
			{ itemID = 16492, price = "6885 #horde#" }, --Champion's Silk Mantle
			{ itemID = 16491, price = "9435 #horde#" }, --Legionnaire's Silk Tunic
			{ itemID = 16487, price = "5000 #horde#" }, --Blood Guard's Silk Handwraps
			{ itemID = 16490, price = "9435 #horde#" }, --Legionnaire's Silk Legguards
			{ itemID = 16485, price = "5000 #horde#" }, --Blood Guard's Silk Walkers
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 23263, price = "24000 #horde#" }, --Champion's Silk Cowl
			{ itemID = 23264, price = "14000 #horde#" }, --Champion's Silk Mantle
			{ itemID = 22886, price = "24000 #horde#" }, --Legionnaire's Silk Tunic
			{ itemID = 22870, price = "14000 #horde#" }, --Blood Guard's Silk Handwraps
			{ itemID = 22883, price = "24000 #horde#" }, --Legionnaire's Silk Legguards
			{ itemID = 22860, price = "14000 #horde#" }, --Blood Guard's Silk Walkers
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16533, price = "68200 #horde#" }, --Warlord's Silk Cowl
			{ itemID = 16536, price = "52200 #horde#" }, --Warlord's Silk Amice
			{ itemID = 16535, price = "68200 #horde#" }, --Warlord's Silk Raiment
			{ itemID = 16540, price = "52200 #horde#" }, --General's Silk Handguards
			{ itemID = 16534, price = "68200 #horde#" }, --General's Silk Trousers
			{ itemID = 16539, price = "52200 #horde#" }, --General's Silk Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6116533, price = "2370 #arena# #horde#" }, --High Warlord's Silk Cowl
			{ itemID = 6116536, price = "1930 #arena# #horde#" }, --High Warlord's Silk Amice
			{ itemID = 6116535, price = "2370 #arena# #horde#" }, --High Warlord's Silk Raiment
			{ itemID = 6116540, price = "1430 #arena# #horde#" }, --High High Warlord's Silk Handguards
			{ itemID = 6116534, price = "2370 #arena# #horde#" }, --High High Warlord's Silk Trousers
			{ itemID = 6116539, price = "1430 #arena# #horde#" }, --High High Warlord's Silk Boots
		},
	},
}

AtlasLoot_Data["PVPPaladin"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"],
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16434, price = "9435 #alliance#" }, --Lieutenant Commander's Lamellar Headguard
			{ itemID = 16436, price = "6885 #alliance#" }, --Lieutenant Commander's Lamellar Shoulders
			{ itemID = 16433, price = "9435 #alliance#" }, --Knight-Captain's Lamellar Breastplate
			{ itemID = 16410, price = "5000 #alliance#" }, --Knight-Lieutenant's Lamellar Gauntlets
			{ itemID = 16435, price = "9435 #alliance#" }, --Knight-Captain's Lamellar Leggings
			{ itemID = 16409, price = "5000 #alliance#" }, --Knight-Lieutenant's Lamellar Sabatons
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 23276, price = "24000 #alliance#" }, --Lieutenant Commander's Lamellar Headguard
			{ itemID = 23277, price = "14000 #alliance#" }, --Lieutenant Commander's Lamellar Shoulders
			{ itemID = 23272, price = "24000 #alliance#" }, --Knight-Captain's Lamellar Breastplate
			{ itemID = 23274, price = "14000 #alliance#" }, --Knight-Lieutenant's Lamellar Gauntlets
			{ itemID = 23273, price = "24000 #alliance#" }, --Knight-Captain's Lamellar Leggings
			{ itemID = 23275, price = "14000 #alliance#" }, --Knight-Lieutenant's Lamellar Sabatons
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16474, price = "68200 #alliance#" }, --Field Marshal's Lamellar Faceguard
			{ itemID = 16476, price = "52200 #alliance#" }, --Field Marshal's Lamellar Pauldrons
			{ itemID = 16473, price = "68200 #alliance#" }, --Field Marshal's Lamellar Chestplate
			{ itemID = 16471, price = "52200 #alliance#" }, --Marshal's Lamellar Gloves
			{ itemID = 16475, price = "68200 #alliance#" }, --Marshal's Lamellar Legplates
			{ itemID = 16472, price = "52200 #alliance#" }, --Marshal's Lamellar Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6116474, price = "2370 #arena# #alliance#" }, --Grand Marshal's Lamellar Faceguard
			{ itemID = 6116476, price = "1930 #arena# #alliance#" }, --Grand Marshal's Lamellar Pauldrons
			{ itemID = 6116473, price = "2370 #arena# #alliance#" }, --Grand Marshal's Lamellar Chestplate
			{ itemID = 6116471, price = "1430 #arena# #alliance#" }, --Grand Marshal's Lamellar Gloves
			{ itemID = 6116475, price = "2370 #arena# #alliance#" }, --Grand Marshal's Lamellar Legplates
			{ itemID = 6116472, price = "1430 #arena# #alliance#" }, --Grand Marshal's Lamellar Boots
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 29604, price = "24000 #horde#" }, --Champion's Lamellar Headguard
			{ itemID = 29605, price = "14000 #horde#" }, --Champion's Lamellar Shoulders
			{ itemID = 29602, price = "24000 #horde#" }, --Legionnaire's Lamellar Breastplate
			{ itemID = 29600, price = "14000 #horde#" }, --Blood Guard's Lamellar Gauntlets
			{ itemID = 29603, price = "24000 #horde#" }, --Legionnaire's Lamellar Leggings
			{ itemID = 29601, price = "14000 #horde#" }, --Blood Guard's Lamellar Sabatons
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 29616, price = "68200 #horde#" }, --Warlord's Lamellar Faceguard
			{ itemID = 29617, price = "52200 #horde#" }, --Warlord's Lamellar Pauldrons
			{ itemID = 29615, price = "68200 #horde#" }, --Warlord's Lamellar Chestplate
			{ itemID = 29613, price = "52200 #horde#" }, --General's Lamellar Gloves
			{ itemID = 29614, price = "68200 #horde#" }, --General's Lamellar Legplates
			{ itemID = 29612, price = "52200 #horde#" }, --General's Lamellar Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6129616, price = "2370 #arena# #horde#" }, --High Warlord's Lamellar Faceguard
			{ itemID = 6129617, price = "1930 #arena# #horde#" }, --High Warlord's Lamellar Pauldrons
			{ itemID = 6129615, price = "2370 #arena# #horde#" }, --High Warlord's Lamellar Chestplate
			{ itemID = 6129613, price = "1430 #arena# #horde#" }, --High High Warlord's Lamellar Gloves
			{ itemID = 6129614, price = "2370 #arena# #horde#" }, --High High Warlord's Lamellar Legplates
			{ itemID = 6129612, price = "1430 #arena# #horde#" }, --High High Warlord's Lamellar Boots
		},
	},
}

AtlasLoot_Data["PVPPriest"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"],
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 17598, price = "9435 #alliance#" }, --Lieutenant Commander's Satin Hood
			{ itemID = 17601, price = "6885 #alliance#" }, --Lieutenant Commander's Satin Mantle
			{ itemID = 17600, price = "9435 #alliance#" }, --Knight-Captain's Satin Tunic
			{ itemID = 17596, price = "5000 #alliance#" }, --Knight-Lieutenant's Satin Handwraps
			{ itemID = 17599, price = "9435 #alliance#" }, --Knight-Captain's Satin Legguards
			{ itemID = 17594, price = "5000 #alliance#" }, --Knight-Lieutenant's Satin Walkers
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 23316, price = "24000 #alliance#" }, --Lieutenant Commander's Satin Hood
			{ itemID = 23317, price = "14000 #alliance#" }, --Lieutenant Commander's Satin Mantle
			{ itemID = 23303, price = "24000 #alliance#" }, --Knight-Captain's Satin Tunic
			{ itemID = 23288, price = "14000 #alliance#" }, --Knight-Lieutenant's Satin Handwraps
			{ itemID = 23302, price = "24000 #alliance#" }, --Knight-Captain's Satin Legguards
			{ itemID = 23289, price = "14000 #alliance#" }, --Knight-Lieutenant's Satin Walkers
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 17602, price = "68200 #alliance#" }, --Field Marshal's Headdress
			{ itemID = 17604, price = "52200 #alliance#" }, --Field Marshal's Satin Mantle
			{ itemID = 17605, price = "68200 #alliance#" }, --Field Marshal's Satin Vestments
			{ itemID = 17608, price = "52200 #alliance#" }, --Marshal's Satin Gloves
			{ itemID = 17603, price = "68200 #alliance#" }, --Marshal's Satin Pants
			{ itemID = 17607, price = "52200 #alliance#" }, --Marshal's Satin Sandals
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6117602, price = "2370 #arena# #alliance#" }, --Grand Marshal's Headdress
			{ itemID = 6117604, price = "1930 #arena# #alliance#" }, --Grand Marshal's Satin Mantle
			{ itemID = 6117605, price = "2370 #arena# #alliance#" }, --Grand Marshal's Satin Vestments
			{ itemID = 6117608, price = "1430 #arena# #alliance#" }, --Grand Marshal's Satin Gloves
			{ itemID = 6117603, price = "2370 #arena# #alliance#" }, --Grand Marshal's Satin Pants
			{ itemID = 6117607, price = "1430 #arena# #alliance#" }, --Grand Marshal's Satin Sandals
		},
	},
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16489, price = "9435 #horde#" }, --Champion's Satin Hood
			{ itemID = 16492, price = "6885 #horde#" }, --Champion's Satin Mantle
			{ itemID = 16491, price = "9435 #horde#" }, --Legionnaire's Satin Tunic
			{ itemID = 16487, price = "5000 #horde#" }, --Blood Guard's Satin Handwraps
			{ itemID = 16490, price = "9435 #horde#" }, --Legionnaire's Satin Legguards
			{ itemID = 16485, price = "5000 #horde#" }, --Blood Guard's Satin Walkers
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 23261, price = "24000 #horde#" }, --Champion's Satin Hood
			{ itemID = 23262, price = "14000 #horde#" }, --Champion's Satin Mantle
			{ itemID = 22885, price = "24000 #horde#" }, --Legionnaire's Satin Tunic
			{ itemID = 22869, price = "14000 #horde#" }, --Blood Guard's Satin Handwraps
			{ itemID = 22882, price = "24000 #horde#" }, --Legionnaire's Satin Legguards
			{ itemID = 22859, price = "14000 #horde#" }, --Blood Guard's Satin Walkers
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 17623, price = "68200 #horde#" }, --Warlord's Satin Cowl
			{ itemID = 17622, price = "52200 #horde#" }, --Warlord's Satin Mantle
			{ itemID = 17624, price = "68200 #horde#" }, --Warlord's Satin Robes
			{ itemID = 17620, price = "52200 #horde#" }, --General's Satin Gloves
			{ itemID = 17625, price = "68200 #horde#" }, --General's Satin Leggings
			{ itemID = 17618, price = "52200 #horde#" }, --General's Satin Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6117623, price = "2370 #arena# #horde#" }, --High Warlord's Satin Cowl
			{ itemID = 6117622, price = "1930 #arena# #horde#" }, --High Warlord's Satin Mantle
			{ itemID = 6117624, price = "2370 #arena# #horde#" }, --High Warlord's Satin Robes
			{ itemID = 6117620, price = "1430 #arena# #horde#" }, --High High Warlord's Satin Gloves
			{ itemID = 6117625, price = "2370 #arena# #horde#" }, --High High Warlord's Satin Leggings
			{ itemID = 6117618, price = "1430 #arena# #horde#" }, --High High Warlord's Satin Boots
		},
	},
}


AtlasLoot_Data["PVPRogue"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16418, price = "9435 #alliance#" }, --Lieutenant Commander's Leather Helm
			{ itemID = 16420, price = "6885 #alliance#" }, --Lieutenant Commander's Leather Shoulders
			{ itemID = 16417, price = "9435 #alliance#" }, --Knight-Captain's Leather Chestpiece
			{ itemID = 16396, price = "5000 #alliance#" }, --Knight-Lieutenant's Leather Grips
			{ itemID = 16419, price = "9435 #alliance#" }, --Knight-Captain's Leather Legguards
			{ itemID = 16392, price = "5000 #alliance#" }, --Knight-Lieutenant's Leather Walkers
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 23312, price = "24000 #alliance#" }, --Lieutenant Commander's Leather Helm
			{ itemID = 23313, price = "14000 #alliance#" }, --Lieutenant Commander's Leather Shoulders
			{ itemID = 23298, price = "24000 #alliance#" }, --Knight-Captain's Leather Chestpiece
			{ itemID = 23284, price = "14000 #alliance#" }, --Knight-Lieutenant's Leather Grips
			{ itemID = 23299, price = "24000 #alliance#" }, --Knight-Captain's Leather Legguards
			{ itemID = 23285, price = "14000 #alliance#" }, --Knight-Lieutenant's Leather Walkers
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16455, price = "68200 #alliance#" }, --Field Marshal's Leather Mask
			{ itemID = 16457, price = "52200 #alliance#" }, --Field Marshal's Leather Epaulets
			{ itemID = 16453, price = "68200 #alliance#" }, --Field Marshal's Leather Chestpiece
			{ itemID = 16454, price = "52200 #alliance#" }, --Marshal's Leather Handgrips
			{ itemID = 16456, price = "68200 #alliance#" }, --Marshal's Leather Leggings
			{ itemID = 16446, price = "52200 #alliance#" }, --Marshal's Leather Footguards
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6116455, price = "2370 #arena# #alliance#" }, --Grand Marshal's Leather Mask
			{ itemID = 6116457, price = "1930 #arena# #alliance#" }, --Grand Marshal's Leather Epaulets
			{ itemID = 6116453, price = "2370 #arena# #alliance#" }, --Grand Marshal's Leather Chestpiece
			{ itemID = 6116454, price = "1430 #arena# #alliance#" }, --Grand Marshal's Leather Handgrips
			{ itemID = 6116456, price = "2370 #arena# #alliance#" }, --Grand Marshal's Leather Leggings
			{ itemID = 6116446, price = "1430 #arena# #alliance#" }, --Grand Marshal's Leather Footguards
		},
	},
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16506, price = "9435 #horde#" }, --Champion's Leather Helm
			{ itemID = 16507, price = "6885 #horde#" }, --Champion's Leather Shoulders
			{ itemID = 16505, price = "9435 #horde#" }, --Legionnaire's Leather Chestpiece
			{ itemID = 16499, price = "5000 #horde#" }, --Blood Guard's Leather Grips
			{ itemID = 16508, price = "9435 #horde#" }, --Legionnaire's Leather Legguards
			{ itemID = 16498, price = "5000 #horde#" }, --Blood Guard's Leather Walkers
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 23257, price = "24000 #horde#" }, --Champion's Leather Helm
			{ itemID = 23258, price = "14000 #horde#" }, --Champion's Leather Shoulders
			{ itemID = 22879, price = "24000 #horde#" }, --Legionnaire's Leather Chestpiece
			{ itemID = 22864, price = "14000 #horde#" }, --Blood Guard's Leather Grips
			{ itemID = 22880, price = "24000 #horde#" }, --Legionnaire's Leather Legguards
			{ itemID = 22856, price = "14000 #horde#" }, --Blood Guard's Leather Walkers
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16561, price = "68200 #horde#" }, --Warlord's Leather Helm
			{ itemID = 16562, price = "52200 #horde#" }, --Warlord's Leather Spaulders
			{ itemID = 16563, price = "68200 #horde#" }, --Warlord's Leather Breastplate
			{ itemID = 16560, price = "52200 #horde#" }, --General's Leather Mitts
			{ itemID = 16564, price = "68200 #horde#" }, --General's Leather Legguards
			{ itemID = 16558, price = "52200 #horde#" }, --General's Leather Treads
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6116561, price = "2370 #arena# #horde#" }, --High Warlord's Leather Helm
			{ itemID = 6116562, price = "1930 #arena# #horde#" }, --High Warlord's Leather Spaulders
			{ itemID = 6116563, price = "2370 #arena# #horde#" }, --High Warlord's Leather Breastplate
			{ itemID = 6116560, price = "1430 #arena# #horde#" }, --High High Warlord's Leather Mitts
			{ itemID = 6116564, price = "2370 #arena# #horde#" }, --High High Warlord's Leather Legguards
			{ itemID = 6116558, price = "1430 #arena# #horde#" }, --High High Warlord's Leather Treads
		},
	},
}

AtlasLoot_Data["PVPShaman"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 29598, price = "24000 #alliance#" }, --Lieutenant Commander's Mail Headguard
			{ itemID = 29599, price = "14000 #alliance#" }, --Lieutenant Commander's Mail Pauldrons
			{ itemID = 29596, price = "24000 #alliance#" }, --Knight-Captain's Mail Hauberk
			{ itemID = 29595, price = "14000 #alliance#" }, --Knight-Lieutenant's Mail Vices
			{ itemID = 29597, price = "24000 #alliance#" }, --Knight-Captain's Mail Legguards
			{ itemID = 29594, price = "14000 #alliance#" }, --Knight-Lieutenant's Mail Greaves
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 29610, price = "68200 #alliance#" }, --Field Marshal's Mail Helm
			{ itemID = 29611, price = "52200 #alliance#" }, --Field Marshal's Mail Spaulders
			{ itemID = 29609, price = "68200 #alliance#" }, --Field Marshal's Mail Armor
			{ itemID = 29607, price = "52200 #alliance#" }, --Marshal's Mail Gauntlets
			{ itemID = 29608, price = "68200 #alliance#" }, --Marshal's Mail Leggings
			{ itemID = 29606, price = "52200 #alliance#" }, --Marshal's Mail Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6129610, price = "2370 #arena# #alliance#" }, --Grand Marshal's Mail Helm
			{ itemID = 6129611, price = "1930 #arena# #alliance#" }, --Grand Marshal's Mail Spaulders
			{ itemID = 6129609, price = "2370 #arena# #alliance#" }, --Grand Marshal's Mail Armor
			{ itemID = 6129607, price = "1430 #arena# #alliance#" }, --Grand Marshal's Mail Gauntlets
			{ itemID = 6129608, price = "2370 #arena# #alliance#" }, --Grand Marshal's Mail Leggings
			{ itemID = 6129606, price = "1430 #arena# #alliance#" }, --Grand Marshal's Mail Boots
		},
	},
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16521, price = "9435 #horde#" }, --Champion's Mail Headguard
			{ itemID = 16524, price = "6885 #horde#" }, --Champion's Mail Pauldrons
			{ itemID = 16522, price = "9435 #horde#" }, --Legionnaire's Mail Hauberk
			{ itemID = 16519, price = "5000 #horde#" }, --Blood Guard's Mail Vices
			{ itemID = 16523, price = "9435 #horde#" }, --Legionnaire's Mail Legguards
			{ itemID = 16518, price = "5000 #horde#" }, --Blood Guard's Mail Greaves
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 23259, price = "24000 #horde#" }, --Champion's Mail Headguard
			{ itemID = 23260, price = "14000 #horde#" }, --Champion's Mail Pauldrons
			{ itemID = 22876, price = "24000 #horde#" }, --Legionnaire's Mail Hauberk
			{ itemID = 22867, price = "14000 #horde#" }, --Blood Guard's Mail Vices
			{ itemID = 22887, price = "24000 #horde#" }, --Legionnaire's Mail Legguards
			{ itemID = 22857, price = "14000 #horde#" }, --Blood Guard's Mail Greaves
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16578, price = "68200 #horde#" }, --Warlord's Mail Helm
			{ itemID = 16580, price = "52200 #horde#" }, --Warlord's Mail Spaulders
			{ itemID = 16577, price = "68200 #horde#" }, --Warlord's Mail Armor
			{ itemID = 16574, price = "52200 #horde#" }, --General's Mail Gauntlets
			{ itemID = 16579, price = "68200 #horde#" }, --General's Mail Leggings
			{ itemID = 16573, price = "52200 #horde#" }, --General's Mail Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6116578, price = "2370 #arena# #horde#" }, --High Warlord's Mail Helm
			{ itemID = 6116580, price = "1930 #arena# #horde#" }, --High Warlord's Mail Spaulders
			{ itemID = 6116577, price = "2370 #arena# #horde#" }, --High Warlord's Mail Armor
			{ itemID = 6116574, price = "1430 #arena# #horde#" }, --High High Warlord's Mail Gauntlets
			{ itemID = 6116579, price = "2370 #arena# #horde#" }, --High High Warlord's Mail Leggings
			{ itemID = 6116573, price = "1430 #arena# #horde#" }, --High High Warlord's Mail Boots
		},
	},
}

AtlasLoot_Data["PVPWarlock"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 17566, price = "9435 #alliance#" }, --Lieutenant Commander's Dreadweave Cowl
			{ itemID = 17569, price = "6885 #alliance#" }, --Lieutenant Commander's Dreadweave Spaulders
			{ itemID = 17568, price = "9435 #alliance#" }, --Knight-Captain's Dreadweave Tunic
			{ itemID = 17564, price = "5000 #alliance#" }, --Knight-Lieutenant's Dreadweave Handwraps
			{ itemID = 17567, price = "9435 #alliance#" }, --Knight-Captain's Dreadweave Legguards
			{ itemID = 17562, price = "5000 #alliance#" }, --Knight-Lieutenant's Dreadweave Walkers
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 23310, price = "24000 #alliance#" }, --Lieutenant Commander's Dreadweave Cowl
			{ itemID = 23311, price = "14000 #alliance#" }, --Lieutenant Commander's Dreadweave Spaulders
			{ itemID = 23297, price = "24000 #alliance#" }, --Knight-Captain's Dreadweave Tunic
			{ itemID = 23282, price = "14000 #alliance#" }, --Knight-Lieutenant's Dreadweave Handwraps
			{ itemID = 23296, price = "24000 #alliance#" }, --Knight-Captain's Dreadweave Legguards
			{ itemID = 23283, price = "14000 #alliance#" }, --Knight-Lieutenant's Dreadweave Walkers
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6117578, price = "2370 #arena# #alliance#" }, --Grand Marshal's Coronal
			{ itemID = 6117580, price = "1930 #arena# #alliance#" }, --Grand Marshal's Dreadweave Shoulders
			{ itemID = 6117581, price = "2370 #arena# #alliance#" }, --Grand Marshal's Dreadweave Robe
			{ itemID = 6117584, price = "1430 #arena# #alliance#" }, --Grand Marshal's Dreadweave Gloves
			{ itemID = 6117579, price = "2370 #arena# #alliance#" }, --Grand Marshal's Dreadweave Leggings
			{ itemID = 6117583, price = "1430 #arena# #alliance#" }, --Grand Marshal's Dreadweave Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 17578, price = "68200 #alliance#" }, --Field Marshal's Coronal
			{ itemID = 17580, price = "52200 #alliance#" }, --Field Marshal's Dreadweave Shoulders
			{ itemID = 17581, price = "68200 #alliance#" }, --Field Marshal's Dreadweave Robe
			{ itemID = 17584, price = "52200 #alliance#" }, --Marshal's Dreadweave Gloves
			{ itemID = 17579, price = "68200 #alliance#" }, --Marshal's Dreadweave Leggings
			{ itemID = 17583, price = "52200 #alliance#" }, --Marshal's Dreadweave Boots
		},
	},
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 17570, price = "9435 #horde#" }, --Champion's Dreadweave Cowl
			{ itemID = 17573, price = "6885 #horde#" }, --Champion's Dreadweave Spaulders
			{ itemID = 17572, price = "9435 #horde#" }, --Legionnaire's Dreadweave Tunic
			{ itemID = 17577, price = "5000 #horde#" }, --Blood Guard's Dreadweave Handwraps
			{ itemID = 17571, price = "9435 #horde#" }, --Legionnaire's Dreadweave Legguards
			{ itemID = 17576, price = "5000 #horde#" }, --Blood Guard's Dreadweave Walkers
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 23255, price = "24000 #horde#" }, --Champion's Dreadweave Cowl
			{ itemID = 23256, price = "14000 #horde#" }, --Champion's Dreadweave Spaulders
			{ itemID = 22884, price = "24000 #horde#" }, --Legionnaire's Dreadweave Tunic
			{ itemID = 22865, price = "14000 #horde#" }, --Blood Guard's Dreadweave Handwraps
			{ itemID = 22881, price = "24000 #horde#" }, --Legionnaire's Dreadweave Legguards
			{ itemID = 22855, price = "14000 #horde#" }, --Blood Guard's Dreadweave Walkers
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 17591, price = "68200 #horde#" }, --Warlord's Dreadweave Hood
			{ itemID = 17590, price = "52200 #horde#" }, --Warlord's Dreadweave Mantle
			{ itemID = 17592, price = "68200 #horde#" }, --Warlord's Dreadweave Robe
			{ itemID = 17588, price = "52200 #horde#" }, --General's Dreadweave Gloves
			{ itemID = 17593, price = "68200 #horde#" }, --General's Dreadweave Pants
			{ itemID = 17586, price = "52200 #horde#" }, --General's Dreadweave Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6117591, price = "2370 #arena# #horde#" }, --High Warlord's Dreadweave Hood
			{ itemID = 6117590, price = "1930 #arena# #horde#" }, --High Warlord's Dreadweave Mantle
			{ itemID = 6117592, price = "2370 #arena# #horde#" }, --High Warlord's Dreadweave Robe
			{ itemID = 6117588, price = "1430 #arena# #horde#" }, --High High Warlord's Dreadweave Gloves
			{ itemID = 6117593, price = "2370 #arena# #horde#" }, --High High Warlord's Dreadweave Pants
			{ itemID = 6117586, price = "1430 #arena# #horde#" }, --High High Warlord's Dreadweave Boots
		},
	},
}

AtlasLoot_Data["PVPWarrior"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16429, price = "9435 #alliance#" }, --Lieutenant Commander's Plate Helm
			{ itemID = 16432, price = "6885 #alliance#" }, --Lieutenant Commander's Plate Shoulders
			{ itemID = 16430, price = "9435 #alliance#" }, --Knight-Captain's Plate Hauberk
			{ itemID = 16406, price = "5000 #alliance#" }, --Knight-Lieutenant's Plate Gauntlets
			{ itemID = 16431, price = "9435 #alliance#" }, --Knight-Captain's Plate Leggings
			{ itemID = 16405, price = "5000 #alliance#" }, --Knight-Lieutenant's Plate Greaves
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 23314, price = "24000 #alliance#" }, --Lieutenant Commander's Plate Helm
			{ itemID = 23315, price = "14000 #alliance#" }, --Lieutenant Commander's Plate Shoulders
			{ itemID = 23300, price = "24000 #alliance#" }, --Knight-Captain's Plate Hauberk
			{ itemID = 23286, price = "14000 #alliance#" }, --Knight-Lieutenant's Plate Gauntlets
			{ itemID = 23301, price = "24000 #alliance#" }, --Knight-Captain's Plate Leggings
			{ itemID = 23287, price = "14000 #alliance#" }, --Knight-Lieutenant's Plate Greaves
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 16478, price = "68200 #alliance#" }, --Field Marshal's Plate Helm
			{ itemID = 16480, price = "52200 #alliance#" }, --Field Marshal's Plate Shoulderguards
			{ itemID = 16477, price = "68200 #alliance#" }, --Field Marshal's Plate Armor
			{ itemID = 16484, price = "52200 #alliance#" }, --Marshal's Plate Gauntlets
			{ itemID = 16479, price = "68200 #alliance#" }, --Marshal's Plate Legguards
			{ itemID = 16483, price = "52200 #alliance#" }, --Marshal's Plate Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Alliance)",
		{
			{ itemID = 6116478, price = "2370 #arena# #alliance#" }, --Grand Marshal's Plate Helm
			{ itemID = 6116480, price = "1930 #arena# #alliance#" }, --Grand Marshal's Plate Shoulderguards
			{ itemID = 6116477, price = "2370 #arena# #alliance#" }, --Grand Marshal's Plate Armor
			{ itemID = 6116484, price = "1430 #arena# #alliance#" }, --Grand Marshal's Plate Gauntlets
			{ itemID = 6116479, price = "2370 #arena# #alliance#" }, --Grand Marshal's Plate Legguards
			{ itemID = 6116483, price = "1430 #arena# #alliance#" }, --Grand Marshal's Plate Boots
		},
	},
	{
		Name = AL["Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16514, price = "9435 #horde#" }, --Champion's Plate Helm
			{ itemID = 16516, price = "6885 #horde#" }, --Champion's Plate Shoulders
			{ itemID = 16513, price = "9435 #horde#" }, --Legionnaire's Plate Hauberk
			{ itemID = 16510, price = "5000 #horde#" }, --Blood Guard's Plate Gauntlets
			{ itemID = 16515, price = "9435 #horde#" }, --Legionnaire's Plate Leggings
			{ itemID = 16509, price = "5000 #horde#" }, --Blood Guard's Plate Greaves
		},
	},
	{
		Name = AL["Superior Rare Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 23244, price = "24000 #horde#" }, --Champion's Plate Helm
			{ itemID = 23243, price = "14000 #horde#" }, --Champion's Plate Shoulders
			{ itemID = 22872, price = "24000 #horde#" }, --Legionnaire's Plate Hauberk
			{ itemID = 22868, price = "14000 #horde#" }, --Blood Guard's Plate Gauntlets
			{ itemID = 22873, price = "24000 #horde#" }, --Legionnaire's Plate Leggings
			{ itemID = 22858, price = "14000 #horde#" }, --Blood Guard's Plate Greaves
		},
	},
	{
		Name = AL["Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 16542, price = "68200 #horde#" }, --Warlord's Plate Headpiece
			{ itemID = 16544, price = "52200 #horde#" }, --Warlord's Plate Shoulders
			{ itemID = 16541, price = "68200 #horde#" }, --Warlord's Plate Armor
			{ itemID = 16548, price = "52200 #horde#" }, --General's Plate Gauntlets
			{ itemID = 16543, price = "68200 #horde#" }, --General's Plate Leggings
			{ itemID = 16545, price = "52200 #horde#" }, --General's Plate Boots
		},
	},
	{
		Name = AL["Superior Epic Set"] ..color.WHITE.." (Horde)",
		{
			{ itemID = 6116542, price = "2370 #arena# #horde#" }, --High Warlord's Plate Headpiece
			{ itemID = 6116544, price = "1930 #arena# #horde#" }, --High Warlord's Plate Shoulders
			{ itemID = 6116541, price = "2370 #arena# #horde#" }, --High Warlord's Plate Armor
			{ itemID = 6116548, price = "1430 #arena# #horde#" }, --High High Warlord's Plate Gauntlets
			{ itemID = 6116543, price = "2370 #arena# #horde#" }, --High High Warlord's Plate Leggings
			{ itemID = 6116545, price = "1430 #arena# #horde#" }, --High High Warlord's Plate Boots
		},
	},
}

----------------------------
--- PvP Level 60 Weapons ---
----------------------------

AtlasLoot_Data["PVPWeapons60"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["PvP Weapons (Level 60)"],
	{
		Name = "Grand Marshal's (Alliance)",
		{
			{ itemID = 18843, price = "34100 #alliance#" }, --Grand Marshal's Right Hand Blade
			{ itemID = 18847, price = "34100 #alliance#" }, --Grand Marshal's Left Hand Blade
			{ itemID = 23451, price = "34100 #alliance#" }, --Grand Marshal's Mageblade
			{ itemID = 18838, price = "34100 #alliance#" }, --Grand Marshal's Dirk
			{ itemID = 12584, price = "34100 #alliance#" }, --Grand Marshal's Longsword
			{ itemID = 23456, price = "34100 #alliance#" }, --Grand Marshal's Swiftblade
			{ itemID = 18876, price = "68200 #alliance#" }, --Grand Marshal's Claymore
			{ itemID = 18827, price = "34100 #alliance#" }, --Grand Marshal's Handaxe
			{ itemID = 18830, price = "68200 #alliance#" }, --Grand Marshal's Sunderer
			{ itemID = 23454, price = "34100 #alliance#" }, --Grand Marshal's Warhammer
			{ itemID = 18865, price = "34100 #alliance#" }, --Grand Marshal's Punisher
			{ itemID = 18867, price = "68200 #alliance#" }, --Grand Marshal's Battle Hammer
			{ itemID = 23455, price = "68200 #alliance#" }, --Grand Marshal's Demolisher
			{ itemID = 18869, price = "68200 #alliance#" }, --Grand Marshal's Glaive
			{ itemID = 18873, price = "68200 #alliance#" }, --Grand Marshal's Stave
		},
		{
			{ itemID = 18825, price = "34100 #alliance#" }, --Grand Marshal's Aegis
			{ itemID = 18833, price = "34100 #alliance#" }, --Grand Marshal's Bullseye
			{ itemID = 18836, price = "34100 #alliance#" }, --Grand Marshal's Repeater
			{ itemID = 18855, price = "34100 #alliance#" }, --Grand Marshal's Hand Cannon
			{ itemID = 23452, price = "34100 #alliance#" }, --Grand Marshal's Tome of Power
			{ itemID = 23453, price = "34100 #alliance#" }, --Grand Marshal's Tome of Restoration
		},
	},
	{
		Name = "Lieutenant Commander's (Alliance)",
		{
			{ itemID = 918843, price = "20000 #alliance#" }, --Lieutenant Commander's Right Hand Blade
			{ itemID = 918847, price = "20000 #alliance#" }, --Lieutenant Commander's Left Hand Blade
			{ itemID = 923451, price = "20000 #alliance#" }, --Lieutenant Commander's Mageblade
			{ itemID = 918838, price = "20000 #alliance#" }, --Lieutenant Commander's Dirk
			{ itemID = 912584, price = "20000 #alliance#" }, --Lieutenant Commander's Longsword
			{ itemID = 923456, price = "20000 #alliance#" }, --Lieutenant Commander's Swiftblade
			{ itemID = 918876, price = "34100 #alliance#" }, --Lieutenant Commander's Claymore
			{ itemID = 918827, price = "20000 #alliance#" }, --Lieutenant Commander's Handaxe
			{ itemID = 918830, price = "34100 #alliance#" }, --Lieutenant Commander's Sunderer
			{ itemID = 923454, price = "20000 #alliance#" }, --Lieutenant Commander's Warhammer
			{ itemID = 918865, price = "20000 #alliance#" }, --Lieutenant Commander's Punisher
			{ itemID = 918867, price = "34100 #alliance#" }, --Lieutenant Commander's Battle Hammer
			{ itemID = 923455, price = "34100 #alliance#" }, --Lieutenant Commander's Demolisher
			{ itemID = 918869, price = "34100 #alliance#" }, --Lieutenant Commander's Glaive
			{ itemID = 918873, price = "34100 #alliance#" }, --Lieutenant Commander's Stave
		},
		{
			{ itemID = 918825, price = "20000 #alliance#" }, --Lieutenant Commander's Aegis
			{ itemID = 918833, price = "20000 #alliance#" }, --Lieutenant Commander's Bullseye
			{ itemID = 918836, price = "20000 #alliance#" }, --Lieutenant Commander's Repeater
			{ itemID = 918855, price = "20000 #alliance#" }, --Lieutenant Commander's Hand Cannon
			{ itemID = 923452, price = "20000 #alliance#" }, --Lieutenant Commander's Tome of Power
			{ itemID = 923453, price = "20000 #alliance#" }, --Lieutenant Commander's Tome of Restoration
		},
	},
	{
		Name = "High Warlord's (Horde)",
		{
			{ itemID = 18844, price = "34100 #horde#" }, --High Warlord's Right Claw
			{ itemID = 18848, price = "34100 #horde#" }, --High Warlord's Left Claw
			{ itemID = 23466, price = "34100 #horde#" }, --High Warlord's Spellblade
			{ itemID = 18840, price = "34100 #horde#" }, --High Warlord's Razor
			{ itemID = 16345, price = "34100 #horde#" }, --High Warlord's Blade
			{ itemID = 23467, price = "34100 #horde#" }, --High Warlord's Quickblade
			{ itemID = 18877, price = "68200 #horde#" }, --High Warlord's Greatsword
			{ itemID = 18828, price = "34100 #horde#" }, --High Warlord's Cleaver
			{ itemID = 18831, price = "68200 #horde#" }, --High Warlord's Battle Axe
			{ itemID = 23464, price = "34100 #horde#" }, --High Warlord's Battle Mace
			{ itemID = 18866, price = "34100 #horde#" }, --High Warlord's Bludgeon
			{ itemID = 18868, price = "68200 #horde#" }, --High Warlord's Pulverizer
			{ itemID = 23465, price = "68200 #horde#" }, --High Warlord's Destroyer
			{ itemID = 18871, price = "68200 #horde#" }, --High Warlord's Pig Sticker
			{ itemID = 18874, price = "68200 #horde#" }, --High Warlord's War Staff
		},
		{
			{ itemID = 18826, price = "34100 #horde#" }, --High Warlord's Shield Wall
			{ itemID = 18835, price = "34100 #horde#" }, --High Warlord's Recurve
			{ itemID = 18837, price = "34100 #horde#" }, --High Warlord's Crossbow
			{ itemID = 18860, price = "34100 #horde#" }, --High Warlord's Street Sweeper
			{ itemID = 23468, price = "34100 #horde#" }, --High Warlord's Tome of Destruction
			{ itemID = 23469, price = "34100 #horde#" }, --High Warlord's Tome of Mending
		},

	},
	{
		Name = "Champion's (Horde)",
		{
			{ itemID = 918844, price = "20000 #horde#" }, --Champion's Right Claw
			{ itemID = 918848, price = "20000 #horde#" }, --Champion's Left Claw
			{ itemID = 923466, price = "20000 #horde#" }, --Champion's Spellblade
			{ itemID = 918840, price = "20000 #horde#" }, --Champion's Razor
			{ itemID = 916345, price = "20000 #horde#" }, --Champion's Blade
			{ itemID = 923467, price = "20000 #horde#" }, --Champion's Quickblade
			{ itemID = 918877, price = "34100 #horde#" }, --Champion's Greatsword
			{ itemID = 918828, price = "20000 #horde#" }, --Champion's Cleaver
			{ itemID = 918831, price = "34100 #horde#" }, --Champion's Battle Axe
			{ itemID = 923464, price = "20000 #horde#" }, --Champion's Battle Mace
			{ itemID = 918866, price = "20000 #horde#" }, --Champion's Bludgeon
			{ itemID = 918868, price = "34100 #horde#" }, --Champion's Pulverizer
			{ itemID = 923465, price = "34100 #horde#" }, --Champion's Destroyer
			{ itemID = 918871, price = "34100 #horde#" }, --Champion's Pig Sticker
			{ itemID = 918874, price = "34100 #horde#" }, --Champion's War Staff
		},
		{
			{ itemID = 918826, price = "20000 #horde#" }, --Champion's Shield Wall
			{ itemID = 918835, price = "20000 #horde#" }, --Champion's Recurve
			{ itemID = 918837, price = "20000 #horde#" }, --Champion's Crossbow
			{ itemID = 918860, price = "20000 #horde#" }, --Champion's Street Sweeper
			{ itemID = 923468, price = "20000 #horde#" }, --Champion's Tome of Destruction
			{ itemID = 923469, price = "20000 #horde#" }, --Champion's Tome of Mending
		},
	},
}

--------------------------------
--- PvP Level 60 Accessories ---
--------------------------------
AtlasLoot_Data["PvP60Accessories"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["PvP Accessories (Level 60)"],
	{
		Name = "Alliance 1",
		{
			{ itemID = 100533, price = "34100 #alliance#" }, --Combatant's Amulet of Victory
			{ itemID = 100534, price = "34100 #alliance#" }, --Combatant's Amulet of Triumph
			{ itemID = 100535, price = "34100 #alliance#" }, --Combatant's Amulet of Dominance
			{ itemID = 100536, price = "34100 #alliance#" }, --Combatant's Amulet of Conquest
			{ itemID = 100537, price = "34100 #alliance#" }, --Combatant's Loop of Triumph
			{ itemID = 100538, price = "34100 #alliance#" }, --Combatant's Loop of Victory
			{ itemID = 100539, price = "34100 #alliance#" }, --Combatant's Loop of Dominance
			{ itemID = 100540, price = "34100 #alliance#" }, --Combatant's Loop of Conquest
			{ itemID = 100541, price = "34100 #alliance#" }, --Combatant's Cloak of Triumph
			{ itemID = 100542, price = "34100 #alliance#" }, --Combatant's Cloak of Victory
			{ itemID = 100543, price = "34100 #alliance#" }, --Combatant's Cloak of Dominance
			{ itemID = 100544, price = "34100 #alliance#" }, --Combatant's Cloak of Conquest
		},
		{
			{ itemID = 100526, price = " #alliance#" }, --Battlemaster's Fury
			{ itemID = 100527, price = " #alliance#" }, --Battlemaster's Rage
			{ itemID = 100528, price = " #alliance#" }, --Battlemaster's Ruination
			{ itemID = 100529, price = " #alliance#" }, --Insignia of the Alliance
			{ itemID = 100530, price = " #alliance#" }, --Insignia of the Horde
			{ itemID = 100531, price = " #alliance#" }, --Combatant's Scroll of Battle
			{ itemID = 100532, price = " #alliance#" }, --Combatant's Scroll of Sorcery
		},
	},
	{
		Name = "Alliance 2",
		{
			{ itemID = 29465, price = "50000 #alliance#" }, --Black Battlestrider
			{ itemID = 29467, price = "50000 #alliance#" }, --Black War Ram
			{ itemID = 29468, price = "50000 #alliance#" }, --Black War Steed Bridle
			{ itemID = 29471, price = "50000 #alliance#" }, --Reins of the Black War Tiger
			{ itemID = 35906, price = "50000 #alliance#" }, --Reins of the Black War Elekk
			{ itemID = 18863, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18856, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18859, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18864, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18862, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18857, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 29593, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18858, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18854, price = "2805 #alliance#" }, --Insignia of the Alliance
		},
		{
			{ itemID = 15196, price = "15000 #alliance#" }, --Private's Tabard
			{ itemID = 15198, price = "20000 #alliance#" }, --Knight's Colors
			{ itemID = 18606, price = "15300 #alliance#" }, --Alliance Battle Standard
			{ itemID = 18839, price = "10 #silver# 1 #alliance#" }, --Combat Healing Potion
			{ itemID = 18841, price = "10 #silver# 1 #alliance#" }, --Combat Mana Potion
			{ itemID = 32455, price = "12 #silver# 1 #alliance#" }, --Star's Lament
		},
	},
	{
		Name = "Alliance 3",
		{
			{ itemID = 18457, price = "300 #alliance#" }, --Sergeant Major's Silk Cuffs
			{ itemID = 18456, price = "1600 #alliance#" }, --Sergeant Major's Silk Cuffs
			{ itemID = 18455, price = "300 #alliance#" }, --Sergeant Major's Dragonhide Armsplints
			{ itemID = 18454, price = "1600 #alliance#" }, --Sergeant Major's Dragonhide Armsplints
			{ itemID = 18453, price = "300 #alliance#" }, --Sergeant Major's Leather Armsplints
			{ itemID = 18452, price = "1600 #alliance#" }, --Sergeant Major's Leather Armsplints
			{ itemID = 18449, price = "300 #alliance#" }, --Sergeant Major's Chain Armguards
			{ itemID = 18448, price = "1600 #alliance#" }, --Sergeant Major's Chain Armguards
			{ itemID = 18447, price = "300 #alliance#" }, --Sergeant Major's Plate Wristguards
			{ itemID = 18445, price = "1600 #alliance#" }, --Sergeant Major's Plate Wristguards
		},
		{
			{ itemID = 18440, price = "100 #alliance#" }, --Sergeant's Cape
			{ itemID = 18441, price = "300 #alliance#" }, --Sergeant's Cape
			{ itemID = 16342, price = "1600 #alliance#" }, --Sergeant's Cape
			{ itemID = 18442, price = "100 #alliance#" }, --Master Sergeant's Insignia
			{ itemID = 18444, price = "300 #alliance#" }, --Master Sergeant's Insignia
			{ itemID = 18443, price = "1600 #alliance#" }, --Master Sergeant's Insignia
		},
	},
	{
		Name = "Horde 1",
		{
			{ itemID = 100533, price = "34100 #horde#" }, --Combatant's Amulet of Victory
			{ itemID = 100534, price = "34100 #horde#" }, --Combatant's Amulet of Triumph
			{ itemID = 100535, price = "34100 #horde#" }, --Combatant's Amulet of Dominance
			{ itemID = 100536, price = "34100 #horde#" }, --Combatant's Amulet of Conquest
			{ itemID = 100537, price = "34100 #horde#" }, --Combatant's Loop of Triumph
			{ itemID = 100538, price = "34100 #horde#" }, --Combatant's Loop of Victory
			{ itemID = 100539, price = "34100 #horde#" }, --Combatant's Loop of Dominance
			{ itemID = 100540, price = "34100 #horde#" }, --Combatant's Loop of Conquest
			{ itemID = 100541, price = "34100 #horde#" }, --Combatant's Cloak of Triumph
			{ itemID = 100542, price = "34100 #horde#" }, --Combatant's Cloak of Victory
			{ itemID = 100543, price = "34100 #horde#" }, --Combatant's Cloak of Dominance
			{ itemID = 100544, price = "34100 #horde#" }, --Combatant's Cloak of Conquest
		},
		{
			{ itemID = 100526, price = " #horde#" }, --Battlemaster's Fury
			{ itemID = 100527, price = " #horde#" }, --Battlemaster's Rage
			{ itemID = 100528, price = " #horde#" }, --Battlemaster's Ruination
			{ itemID = 100529, price = " #horde#" }, --Insignia of the Alliance
			{ itemID = 100530, price = " #horde#" }, --Insignia of the Horde
			{ itemID = 100531, price = " #horde#" }, --Combatant's Scroll of Battle
			{ itemID = 100532, price = " #horde#" }, --Combatant's Scroll of Sorcery
		},
	},
	{
		Name = "Horde 2",
		{
			{ itemID = 29466, price = "50000 #horde#" }, --Black War Kodo
			{ itemID = 29469, price = "50000 #horde#" }, --Horn of the Black War Wolf
			{ itemID = 29470, price = "50000 #horde#" }, --Red Skeletal Warhorse
			{ itemID = 29472, price = "50000 #horde#" }, --Whistle of the Black War Raptor
			{ itemID = 34129, price = "50000 #horde#" }, --Swift Warstrider
			{ itemID = 18853, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18846, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18850, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 29592, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18851, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18849, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18845, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18852, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18834, price = "2805 #horde#" }, --Insignia of the Horde
		},
		{
			{ itemID = 15197, price = "15000 #horde#" }, --Scout's Tabard
			{ itemID = 15199, price = "20000 #horde#" }, --Stone Guard's Herald
			{ itemID = 18607, price = "15300 #horde#" }, --Horde Battle Standard
			{ itemID = 18839, price = "10 #silver# 1 #horde#" }, --Combat Healing Potion
			{ itemID = 18841, price = "10 #silver# 1 #horde#" }, --Combat Mana Potion
			{ itemID = 32455, price = "12 #silver# 1 #horde#" }, --Star's Lament
		},
	},
	{
		Name = "Horde 3",
		{
			{ itemID = 18437, price = "300 #horde#" }, --First Sergeant's Silk Cuffs
			{ itemID = 16486, price = "1600 #horde#" }, --First Sergeant's Silk Cuffs
			{ itemID = 18436, price = "300 #horde#" }, --First Sergeant's Dragonhide Armguards
			{ itemID = 18434, price = "1600 #horde#" }, --First Sergeant's Dragonhide Armguards
			{ itemID = 18435, price = "300 #horde#" }, --First Sergeant's Leather Armguards
			{ itemID = 16497, price = "1600 #horde#" }, --First Sergeant's Leather Armguards
			{ itemID = 18432, price = "300 #horde#" }, --First Sergeant's Mail Wristguards
			{ itemID = 16532, price = "1600 #horde#" }, --First Sergeant's Mail Wristguards
			{ itemID = 18430, price = "300 #horde#" }, --First Sergeant's Plate Bracers
			{ itemID = 18429, price = "1600 #horde#" }, --First Sergeant's Plate Bracers
		},
		{
			{ itemID = 18427, price = "100 #horde#" }, --Sergeant's Cloak
			{ itemID = 16341, price = "300 #horde#" }, --Sergeant's Cloak
			{ itemID = 18461, price = "1600 #horde#" }, --Sergeant's Cloak
			{ itemID = 15200, price = "100 #horde#" }, --Senior Sergeant's Insignia
			{ itemID = 18428, price = "300 #horde#" }, --Senior Sergeant's Insignia
			{ itemID = 16335, price = "1600 #horde#" }, --Senior Sergeant's Insignia
		},
	},
}

AtlasLoot_Data["PvP60Ench"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["PvP Enchants"],
	{
		Name = AL["PvP Enchants"],
		{
			{ itemID = 100545, price = "25000 #alliance#" }, --Superior Resistance
			{ itemID = 100546, price = "25000 #alliance#" }, --Lesser Resilience
			{ itemID = 100547, price = "25000 #alliance#" }, --Absorption
			{ itemID = 100548, price = "25000 #alliance#" }, --Lesser Stats
			{ itemID = 100549, price = "25000 #alliance#" }, --Superior Intellect
			{ itemID = 100550, price = "25000 #alliance#" }, --Nature Power
			{ itemID = 100551, price = "25000 #alliance#" }, --Arcane Power
			{ itemID = 100552, price = "25000 #alliance#" }, --Holy Power
			{ itemID = 100553, price = "25000 #alliance#" }, --Greater Healing Power
			{ itemID = 100554, price = "25000 #alliance#" }, --Superior Strength
			{ itemID = 100555, price = "25000 #alliance#" }, --Greater Riding Skill
			{ itemID = 100556, price = "25000 #alliance#" }, --Lesser Boar's Speed
			{ itemID = 100557, price = "25000 #alliance#" }, --Lesser Cat's Swiftness
			{ itemID = 100558, price = "25000 #alliance#" }, --Lesser Falcon's Quickness
			{ itemID = 100559, price = "25000 #alliance#" }, --Lesser Stamina
		},
		{
			{ itemID = 100560, price = "25000 #alliance#" }, --Lesser Stats
			{ itemID = 100561, price = "40000 #alliance#" }, --Lesser Blood Draining
			{ itemID = 100563, price = "40000 #alliance#" }, --Lesser Arcanum of Dominance
			{ itemID = 100564, price = "50000 #alliance#" }, --Lesser Arcanum of Triumph
			{ itemID = 449570, price = "40000 #alliance#" }, --Lesser Inscription of the Gladiator
			{ itemID = 449571, price = "40000 #alliance#" }, --Lesser Inscription of the Battle Mage
		},
	},
}
----------------
--- Factions ---
----------------

------------
--- Misc ---
------------

AtlasLoot_Data["DesolaceCentaurClans"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Desolace Centaur Clans",
	{
		Name = BabbleFaction["Magram Clan Centaur"],
		WebID = {93,"faction"},
		{
			{ itemID = 6789}, --Ceremonial Centaur Blanket
			{ itemID = 6788}, --Magram Hunter's Belt
		},
	},
	{
		Name = BabbleFaction["Gelkis Clan Centaur"],
		WebID = {92,"faction"},
		{
			{ itemID = 6773}, --Gelkis Marauder Chain
			{ itemID = 6774}, --Uthek's Finger
		},
	},
}

AtlasLoot_Data["Wintersaber"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Wintersaber Trainers"],
	{
		Name = BabbleFaction["Wintersaber Trainers"],
		{
			{ itemID = 13086}, --Reins of the Winterspring Frostsaber 
		},
	},
}

AtlasLoot_Data["ArathiBasinFactions"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Arathi Basin"],
	{
		Name = BabbleFaction["The League of Arathor"] .." (" ..BabbleFaction["Alliance"] ..")",
		WebID = {509,"faction"},
		{
			{ itemID = 20132}, --Arathor Battle Tabard
		},
	},
	{
		Name = BabbleFaction["The Defilers"] .." (" ..BabbleFaction["Horde"] ..")",
		WebID = {510,"faction"},
		{
			{ itemID = 20131}, --Battle Tabard of the Defilers
		},
	},
}

-------------------
--- Argent Dawn ---
-------------------

AtlasLoot_Data["Argent"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Argent Dawn"],
	{
		Name = BabbleFaction["Argent Dawn"],
		WebID = {529,"faction"},
		{
			{ itemID = 22689}, --Sanctified Leather Helm
			{ itemID = 22690}, --Leggings of the Plague Hunter
			{ itemID = 22681}, --Band of Piety
			{ itemID = 22680}, --Band of Resolution
			{ itemID = 22688}, --Verimonde's Last Resort
			{ itemID = 22679}, --Supply Bag 
			{ itemID = 22638}, --Shadow Guard
			{ itemID = 22523}, --Insignia of the Dawn
			{ itemID = 12844}, --Argent Dawn Valor Token
		},
		{
			{ itemID = 22667}, --Bracers of Hope
			{ itemID = 22668}, --Bracers of Subterfuge
			{ itemID = 22657}, --Amulet of the Dawn
			{ itemID = 22659}, --Medallion of the Dawn
			{ itemID = 22678}, --Talisman of Ascendance
			{ itemID = 22656}, --The Purifier
			{ itemID = 22636}, --Ice Guard
			{ itemID = 22524}, --Insignia of the Crusade
		},
	},
	{
		Name = BabbleFaction["Friendly"],
		WebID = {529,"faction"},
		{
			{ itemID = 13724}, --Enriched Manna Biscuit
			{ itemID = 23122 }, --Consecrated Sharpening Stone
			{ itemID = 23123 }, --Blessed Wizard Oil
		},
	},
	{
		Name = BabbleFaction["Honored"],
		WebID = {529,"faction"},
		{
			{ itemID = 1519874 }, -- Crusader's Libram
			{ itemID = 1519875 }, -- Idol of the Fang
			{ itemID = 23084 }, -- Gloves of Undead Cleansing
			{ itemID = 23085 }, -- Robe of Undead Cleansing	
			{ itemID = 23091 }, -- Bracers of Undead Cleansing   
		},
		{
			{ itemID = 13482}, --Recipe: Transmute Air to Fire
			{ itemID = 19203}, --Plans: Girdle of the Dawn
			{ itemID = 19446}, --Formula: Enchant Bracer - Mana Regeneration
			{ itemID = 19442}, --Formula: Powerful Anti-Venom
			{ itemID = 19328}, --Pattern: Dawn Treaders
			{ itemID = 19216}, --Pattern: Argent Boots
		},
	},
	{
		Name = BabbleFaction["Revered"],
		WebID = {529,"faction"},
		{
			{ itemID = 1519867 }, -- Arcanist's Cloak
			{ itemID = 1519883 }, -- Batleather Armbands
			{ itemID = 1519884 }, -- Spaulders of Dusk
			{ itemID = 18171}, --Arcane Mantle of the Dawn
			{ itemID = 18169}, --Flame Mantle of the Dawn
			{ itemID = 18170}, --Frost Mantle of the Dawn
			{ itemID = 18172}, --Nature Mantle of the Dawn
			{ itemID = 18173}, --Shadow Mantle of the Dawn
		},
		{
			{ itemID = 19205}, --Plans: Gloves of the Dawn
			{ itemID = 19447}, --Formula: Enchant Bracer - Healing
			{ itemID = 19329}, --Pattern: Golden Mantle of the Dawn
			{ itemID = 19217}, --Pattern: Argent Shoulders
			{ itemID = 13810}, --Blessed Sunfruit
			{ itemID = 13813}, --Blessed Sunfruit Juice
		},
	},
	{
		Name = BabbleFaction["Exalted"],
		WebID = {529,"faction"},
		{
			{ itemID = 43072 }, -- Blessed Robe of Undead Cleansing
			{ itemID = 43073 }, -- Blessed Gloves of Undead Cleansing
			{ itemID = 43074 }, -- Blessed Mantle of Undead Cleansing
			{ itemID = 43075 }, -- Blessed Trousers of Undead Cleansing
			{ itemID = 43076 }, -- Blessed Tunic of Undead Slaying
			{ itemID = 43077 }, -- Blessed Shoulderpads of Undead Slaying
			{ itemID = 43079 }, -- Blessed Leggings of Undead Slaying
			{ itemID = 43080 }, -- Blessed Hauberk of Undead Slaying
			{ itemID = 43081 }, -- Blessed Pauldrons of Undead Slaying
			{ itemID = 43082 }, -- Blessed Handguards of Undead Slaying
			{ itemID = 43083 }, -- Blessed Greaves of Undead Slaying
			{ itemID = 43078 }, -- Blessed Grips of Undead Slaying
			{ itemID = 43070 }, -- Blessed Gauntlets of Undead Slaying
			{ itemID = 43069 }, -- Blessed Breastplate of Undead Slaying
			{ itemID = 43068 }, -- Blessed Spaulders of Undead Slaying
		},
		{
			{ itemID = 43071 }, -- Blessed Legplates of Undead Slaying
			{ itemID = 1519880 }, -- Crusader's Girdle
			{ itemID = 1519882 }, -- Darkened Leather Woolies
			{ itemID = 1519881 }, -- Stompers of the Argent Dawn
			{ itemID = 1519865 }, -- Purified Necklace of the Damned
			{ itemID = 18182}, --Chromatic Mantle of the Dawn
		},
	},
}
---------------------------------------------------
--- Bloodsail Buccaneers & Hydraxian Waterlords ---
---------------------------------------------------

AtlasLoot_Data["Bloodsail"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Bloodsail Buccaneers"],
	{
		Name = BabbleFaction["Bloodsail Buccaneers"],
		WebID = {87,"faction"},
		{
			{ icon = "INV_Helmet_66", name = color.WHITE..BabbleFaction["Neutral"] },
			{ itemID = 22742}, --Bloodsail Shirt
			{ itemID = 22743}, --Bloodsail Sash
			{ itemID = 22745}, --Bloodsail Pants
			{ itemID = 22744}, --Bloodsail Boots
			{ icon = "INV_Helmet_66", name = color.WHITE..BabbleFaction["Friendly"] },
			{ itemID = 12185}, --Bloodsail Admiral's Hat
		},
	},
}

AtlasLoot_Data["Hydraxian"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Hydraxian Waterlords"],
	{
		Name = BabbleFaction["Hydraxian Waterlords"],
		WebID = {749,"faction"},
		{
			{ icon = "Spell_Frost_SummonWaterElemental_2", name = color.WHITE..BabbleFaction["Honored"] },
			{ itemID = 18399}, --Ocean's Breeze 
			{ itemID = 18398}, --Tidal Loop 
			{ itemID = 17333}, --Aqual Quintessence
		},
		{
			{ icon = "Spell_Frost_SummonWaterElemental_2", name = color.WHITE..BabbleFaction["Revered"] },
			{ itemID = 22754}, --Eternal Quintessence
		},
	},
}
-------------------------
--- Brood of Nozdormu ---
-------------------------

AtlasLoot_Data["AQBroodRings"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Brood of Nozdormu"],
	{
		Name = BabbleFaction["Brood of Nozdormu"],
		WebID = {910,"faction"},
		{
			{ icon = "INV_Jewelry_Ring_40", name = color.WHITE..AL["Path of the Conqueror"] },
			{ itemID = 21201}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21202}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21203}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21204}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21205}, --Signet Ring of the Bronze Dragonflight
			{ icon = "INV_Jewelry_Ring_40", name = color.WHITE..AL["Path of the Invoker"] },
			{ itemID = 21206}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21207}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21208}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21209}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21210}, --Signet Ring of the Bronze Dragonflight
		},
		{
			{ icon = "INV_Jewelry_Ring_40", name = color.WHITE..AL["Path of the Protector"] },
			{ itemID = 21196}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21197}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21198}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21199}, --Signet Ring of the Bronze Dragonflight
			{ itemID = 21200}, --Signet Ring of the Bronze Dragonflight
		},
	},
}

-----------------------
--- Cenarion Circle ---
-----------------------

AtlasLoot_Data["Cenarion"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Cenarion Circle"],
	{
		Name = BabbleFaction["Friendly"],
		WebID = {609,"faction"},
		{
			{ itemID = 22209}, --Plans: Heavy Obsidian Belt
			{ itemID = 22768}, --Plans: Ironvine Belt
			{ itemID = 20732}, --Formula: Enchant Cloak - Greater Fire Resistance
			{ itemID = 22769}, --Pattern: Bramblewood Belt
			{ itemID = 20509}, --Pattern: Sandstalker Bracers
			{ itemID = 20506}, --Pattern: Spitfire Bracers
			{ itemID = 22772}, --Pattern: Sylvan Shoulders
			{ itemID = 22310}, --Pattern: Cenarion Herb Bag
		},
		{
			{ icon = "INV_QirajIdol_Amber", name = color.WHITE..AL["Token Hand-Ins"] },
			{ itemID = 21187}, --Earthweave Cloak
			{ itemID = 21178}, --Gloves of Earthen Power
			{ itemID = 21179}, --Band of Earthen Wrath
			{ itemID = 20802}, --Cenarion Combat Badge
			{ itemID = 20800}, --Cenarion Logistics Badge
			{ itemID = 20801}, --Cenarion Tactical Badge
			{ itemID = 21508}, --Mark of Cenarius
			{ itemID = 21515}, --Mark of Remulos
		},
	},
	{
		Name = BabbleFaction["Honored"],
		WebID = {609,"faction"},
		{
			{ itemID = 1519873 }, -- Sandcovered Libram
			{ itemID = 1519872 }, -- Sandcovered Relic
			{ itemID = 1519871 }, -- Sandcovered Idol
			{ itemID = 22767}, --Plans: Ironvine Gloves
			{ itemID = 22214}, --Plans: Light Obsidian Belt
			{ itemID = 20733}, --Formula: Enchant Cloak - Greater Nature Resistance
			{ itemID = 22770}, --Pattern: Bramblewood Boots
			{ itemID = 20510}, --Pattern: Sandstalker Gauntlets
			{ itemID = 20507}, --Pattern: Spitfire Gauntlets
			{ itemID = 22773}, --Pattern: Sylvan Crown
		},
		{
			{ icon = "INV_QirajIdol_Amber", name = color.WHITE..AL["Token Hand-Ins"] },
			{ itemID = 21183}, --Earthpower Vest
			{ itemID = 21182}, --Band of Earthen Might
			{ itemID = 21181}, --Grace of Earth
		},

	},
	{
		Name = BabbleFaction["Revered"],
		WebID = {609,"faction"},
		{
			{ itemID = 1519870 }, -- Amulet of the Third War
			{ itemID = 1519869 }, -- Arcane Infused Staff
			{ itemID = 1519868 }, -- Qiraji Shell	
			{ itemID = 856001 }, -- Sentinel Guardian Vestments
			{ itemID = 856002 }, -- Blessed Branch of the Cenarion Circle
			{ itemID = 22766}, --Plans: Ironvine Breastplate
			{ itemID = 22219}, --Plans: Jagged Obsidian Shield
			{ itemID = 22771}, --Pattern: Bramblewood Helm
			{ itemID = 20511}, --Pattern: Sandstalker Breastplate
			{ itemID = 20508}, --Pattern: Spitfire Breastplate
			{ itemID = 22683}, --Pattern: Gaea's Embrace
			{ itemID = 22312}, --Pattern: Satchel of Cenarius
			{ itemID = 22774}, --Pattern: Sylvan Vest
			{ itemID = 46514}, -- Formula: Enchant Bracers - Lesser Expertise
		},
		{
			{ icon = "INV_QirajIdol_Amber", name = color.WHITE..AL["Token Hand-Ins"] },
			{ itemID = 21186}, --Rockfury Bracers
			{ itemID = 21184}, --Deeprock Bracers
			{ itemID = 21189}, --Might of Cenarius
			{ itemID = 21185}, --Earthcalm Orb
		},
	},
	{
		Name = BabbleFaction["Exalted"],
		WebID = {609,"faction"},
		{
			{ itemID = 1519862 }, -- Ancient Buckler
			{ itemID = 1519863 }, -- Cenarion Clubber
			{ itemID = 1519864 }, -- Polished Qiraji Halberd
			{ itemID = 1519866 }, -- Cloak of the Shifting Sands
			{ itemID = 1519808 }, -- Sentinel Vambraces
			{ itemID = 856000 }, -- Cowl of the Inside Circle
			{ itemID = 1312121 }, -- Corroded Qiraji Wraps
			{ itemID = 1519807 }, -- Cenarion Infantry Helmet
			{ itemID = 1519809 }, -- Qiraji Tracker Vestments
			{ itemID = 22221}, --Plans: Obsidian Mail Tunic
			{ itemID = 20382}, --Pattern: Dreamscale Breastplate
		},
		{
			{ icon = "INV_QirajIdol_Amber", name = color.WHITE..AL["Token Hand-Ins"] },
			{ itemID = 21190}, --Wrath of Cenarius
			{ itemID = 21180}, --Earthstrike
			{ itemID = 21188}, --Fist of Cenarius
		},
	},  
}

----------------------------------------
--- Stormpike Guard & Frostwolf Clan ---
----------------------------------------

AtlasLoot_Data["AlteracFactions"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleZone["Alterac Valley"],
	{
		Name = BabbleFaction["Stormpike Guard"] .." (" ..BabbleFaction["Alliance"] ..")",
		WebID = {730,"faction"},
		{
			{ itemID = 17904}, --Stormpike Insignia Rank 6
			{ itemID = 17903}, --Stormpike Insignia Rank 5
			{ itemID = 17902}, --Stormpike Insignia Rank 4
			{ itemID = 17901}, --Stormpike Insignia Rank 3
			{ itemID = 17900}, --Stormpike Insignia Rank 2
			{ itemID = 17691}, --Stormpike Insignia Rank 1
			{ itemID = 20648}, --Cold Forged Hammer
			{ itemID = 19106}, --Ice Barbed Spear
			{ itemID = 19108}, --Wand of Biting Cold
			{ itemID = 19107}, --Bloodseeker
		},
	},
	{
		Name = BabbleFaction["Frostwolf Clan"] .." (" ..BabbleFaction["Horde"] ..")",
		WebID = {729,"faction"},
		{
			{ itemID = 17909}, --Frostwolf Insignia Rank 6
			{ itemID = 17908}, --Frostwolf Insignia Rank 5
			{ itemID = 17907}, --Frostwolf Insignia Rank 4
			{ itemID = 17906}, --Frostwolf Insignia Rank 3
			{ itemID = 17905}, --Frostwolf Insignia Rank 2
			{ itemID = 17690}, --Frostwolf Insignia Rank 1
		},
	},
}

---------------------------
--- Thorium Brotherhood ---
---------------------------

AtlasLoot_Data["Thorium"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Thorium Brotherhood"],
	{
		Name = BabbleFaction["Friendly"],
		WebID = {59,"faction"},
		{
			{ itemID = 17051}, --Plans: Dark Iron Bracers
			{ itemID = 20761}, --Recipe: Transmute Elemental Fire
			{ itemID = 19444}, --Formula: Enchant Weapon - Strength
			{ itemID = 17023}, --Pattern: Molten Helm
			{ itemID = 17022}, --Pattern: Corehound Boots
			{ itemID = 17018}, --Pattern: Flarecore Gloves
		},
	},
	{
		Name = BabbleFaction["Honored"],
		WebID = {59,"faction"},
		{
			{ itemID = 1519907 }, -- Thorium Linked Wristsguards
			{ itemID = 1519908 }, -- Brawlers Totem
		},
		{
			{ itemID = 17060}, --Plans: Dark Iron Destroyer
			{ itemID = 17059}, --Plans: Dark Iron Reaver
			{ itemID = 17049}, --Plans: Fiery Chain Girdle
			{ itemID = 19206}, --Plans: Dark Iron Helm
			{ itemID = 19448}, --Formula: Enchant Weapon - Mighty Spirit
			{ itemID = 17025}, --Pattern: Black Dragonscale Boots
			{ itemID = 19330}, --Pattern: Lava Belt
			{ itemID = 17017}, --Pattern: Flarecore Mantle
			{ itemID = 19219}, --Pattern: Flarecore Robe
		},
	},
	{
		Name = BabbleFaction["Revered"],
		WebID = {59,"faction"},
		{
			{ itemID = 1519905 }, -- Thorium Reinforced Buckler
			{ itemID = 1519906 }, -- Thorium Studded Pants
			{ itemID = 1519904 }, -- Rust Covered Belt
		},
		{
			{ itemID = 18592}, --Plans: Sulfuron Hammer
			{ itemID = 17052}, --Plans: Dark Iron Leggings
			{ itemID = 17053}, --Plans: Fiery Chain Shoulders
			{ itemID = 19209}, --Plans: Blackfury
			{ itemID = 19208}, --Plans: Black Amnesty
			{ itemID = 19207}, --Plans: Dark Iron Gauntlets
			{ itemID = 19449}, --Formula: Enchant Weapon - Mighty Intellect
			{ itemID = 19331}, --Pattern: Chromatic Gauntlets
			{ itemID = 19332}, --Pattern: Corehound Belt
			{ itemID = 19333}, --Pattern: Molten Belt
			{ itemID = 19220}, --Pattern: Flarecore Leggings
		},
	},
	{
		Name = BabbleFaction["Exalted"],
		WebID = {59,"faction"},
		{
			{ itemID = 1519900 }, -- Thorium Staff
			{ itemID = 1519902 }, -- Thorium Throwing Knives
			{ itemID = 1519901 }, -- Thorium Rifle
		},
		{
			{ itemID = 19211}, --Plans: Blackguard
			{ itemID = 20040}, --Plans: Dark Iron Boots
			{ itemID = 19210}, --Plans: Ebon Hand
			{ itemID = 19212}, --Plans: Nightfall
		},
	},
}
----------------------
--- Timbermaw Hold ---
----------------------

AtlasLoot_Data["Timbermaw"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Timbermaw Hold"],
    {
		Name = BabbleFaction["Timbermaw Hold"],
		WebID = {576,"faction"},
		{
			{ itemID = 16768 }, -- Furbold Medicine Pouch
			{ itemID = 16769 }, -- Furbolg Medicine Totem
		},
	},
    {
		Name = BabbleFaction["Friendly"],
		WebID = {576,"faction"},
		{
			{ itemID = 20254 }, -- Pattern: Warbear Woolies
			{ itemID = 13484 }, -- Recipe: Transmute Earth to Water
			{ itemID = 20253 }, -- Pattern: Warbear Harness
			{ itemID = 20253 }, -- Formula: Enchant 2H Weapon - Agility
		},
	},
	{
		Name = BabbleFaction["Honored"],
		WebID = {576,"faction"},
		{
			{ itemID = 1519894 }, -- Timbermaw Root
		},
		{
			{ itemID = 19215 }, -- Pattern: Wisdom of the Timbermaw
			{ itemID = 19326 }, -- Pattern: Might of the Timbermaw
			{ itemID = 19202 }, -- Plans: Heavy Timbermaw Belt
			{ itemID = 19445 }, -- Formula: Enchant Weapon - Agility
		},
	},
	{
		Name = BabbleFaction["Revered"],
		WebID = {576,"faction"},
		{
			{ itemID = 856010 }, -- Handcrafted Beast Cleaver
			{ itemID = 856012 }, -- Resounding Earth Hood
			{ itemID = 856013 }, -- Hunting Hatchet
			{ itemID = 856014 }, -- Enchanted Pawpads
			{ itemID = 1519802 }, -- Timbermaw Fur Cloak
			{ itemID = 1519893 }, -- Ring of Mending
			{ itemID = 1519895 }, -- Timbermaw Talisman
		},
		{
			{ itemID = 19218 }, -- Pattern: Mantle of the Timbermaw
			{ itemID = 19204 }, -- Plans: Heavy Timbermaw Boots
			{ itemID = 46520 }, -- Formula: Enchant Cloak - Lesser Spell Penetration
		},
	},
	{
		Name = BabbleFaction["Exalted"],
		WebID = {576,"faction"},
		{
			{ itemID = 21326 }, -- Defender of the Timbermaw
			{ itemID = 856009 }, -- Ursine Woodstaff
			{ itemID = 856011 }, -- Combed Furline Handwraps
			{ itemID = 1519801 }, -- Timbermaw Tracker's Belt
			{ itemID = 1519803 }, -- Fur Lined Leggings
			{ itemID = 1519890 }, -- Timbermaw Spellblade
			{ itemID = 1519891 }, -- Timbermaw Shanker
			{ itemID = 1519892 }, -- The "Prized" Possession
		},
	},
}

----------------------
--- Zandalar Tribe ---
----------------------

AtlasLoot_Data["Zandalar"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = BabbleFaction["Zandalar Tribe"],
	{
		Name = AL["Miscellaneous"],
		WebID = {270,"faction"},
		{
			{ itemID = 19858}, --Zandalar Honor Token
		},
	},
	{
		Name = BabbleFaction["Friendly"],
		WebID = {270,"faction"},
		{
			{ itemID = 20012}, --Recipe: Greater Dreamless Sleep
			{ itemID = 19778}, --Plans: Bloodsoul Gauntlets
			{ itemID = 19781}, --Plans: Darksoul Shoulders
			{ itemID = 20757}, --Formula: Brilliant Mana Oil
			{ itemID = 20001}, --Schematic: Bloodvine Lens
			{ itemID = 19771}, --Pattern: Primal Batskin Bracers
			{ itemID = 19766}, --Pattern: Bloodvine Boots
		},
	},
	{
		Name = BabbleFaction["Honored"],
		WebID = {270,"faction"},
		{
			{ itemID = 20014}, --Recipe: Major Troll's Blood Potion
			{ itemID = 19777}, --Plans: Bloodsoul Shoulders
			{ itemID = 19780}, --Plans: Darksoul Leggings
			{ itemID = 20756}, --Formula: Brilliant Wizard Oil
			{ itemID = 20000}, --Schematic: Bloodvine Goggles
			{ itemID = 19773}, --Pattern: Blood Tiger Shoulders
			{ itemID = 19770}, --Pattern: Primal Batskin Gloves
			{ itemID = 19765}, --Pattern: Bloodvine Leggings
			{ itemID = 20031}, --Essence Mango
		},
	},
	{
		Name = BabbleFaction["Revered"],
		WebID = {270,"faction"},
		{
			{ itemID = 20080}, --Sheen of Zanza
			{ itemID = 20079}, --Spirit of Zanza
			{ itemID = 20081}, --Swiftness of Zanza
			{ itemID = 20011}, --Recipe: Mageblood Potion
			{ itemID = 19776}, --Plans: Bloodsoul Breastplate
			{ itemID = 19779}, --Plans: Darksoul Breastplate
			{ itemID = 19772}, --Pattern: Blood Tiger Breastplate
			{ itemID = 19769}, --Pattern: Primal Batskin Jerkin
			{ itemID = 19764}, --Pattern: Bloodvine Vest
		},
	},
	{
		Name = BabbleFaction["Exalted"],
		WebID = {270,"faction"},
		{
			{ itemID = 20077}, --Zandalar Signet of Might
			{ itemID = 20076}, --Zandalar Signet of Mojo
			{ itemID = 20078}, --Zandalar Signet of Serenity
			{ itemID = 20013}, --Recipe: Living Action Potion
--[[ 		{ itemID = 500890 }, -- Zandalarian Voodoo Mask
			{ itemID = 500960 }, -- Zandalarian Voodoo Mask
			{ itemID = 501080 }, -- Zandalarian Voodoo Mask
			{ itemID = 501150 }, -- Zandalarian Voodoo Mask
			{ itemID = 502410 }, -- Zandalarian Voodoo Mask
			{ itemID = 502760 }, -- Zandalarian Voodoo Mask
			{ itemID = 503260 }, -- Zandalarian Voodoo Mask
			{ itemID = 503920 }, -- Zandalarian Voodoo Mask
			{ itemID = 507650 }, -- Zandalarian Voodoo Mask
			{ itemID = 508260 }, -- Zandalarian Voodoo Mask
		},
		{
			{ itemID = 508320 }, -- Zandalarian Voodoo Mask
			{ itemID = 508370 }, -- Zandalarian Voodoo Mask
			{ itemID = 508430 }, -- Zandalarian Voodoo Mask
			{ itemID = 508480 }, -- Zandalarian Voodoo Mask
			{ itemID = 508550 }, -- Zandalarian Voodoo Mask
			{ itemID = 508620 }, -- Zandalarian Voodoo Mask
			{ itemID = 508670 }, -- Zandalarian Voodoo Mask
			{ itemID = 500800 }, -- Zandalarian Voodoo Mask
			{ itemID = 508210 }, -- Zandalarian Voodoo Mask
 ]]	
		},
	},
}

--------------------
--- World Bosses ---
--------------------

----------------------------
--- Dragons of Nightmare ---
----------------------------

AtlasLoot_Data["WorldBossesCLASSIC"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = AL["World Bosses"],
	Type = "ClassicRaid",
	{
		Name = "Weapons/Trinkets",
		{
			{ itemID = 20581 }, --Staff of Rampant Growth
			{ itemID = 17070 }, --Fang of the Mystics
			{ itemID = 19130 }, --Cold Snap
			{ itemID = 17113 }, --Amberseal Keeper
			{ itemID = 20636 }, --Hibernation Crystal
			{ itemID = 20582 }, --Trance Stone
			{ itemID = 18665 }, --The Eye of Shadow
			{ itemID = 18704 }, --Mature color.BLUE Dragon Sinew
			{ itemID = 18714 }, --Ancient Sinew Wrapped Lamina
		},
		{
			{ itemID = 20580 }, --Hammer of Bestial Fury
			{ itemID = 20599 }, --Polished Ironwood Crossbow
			{ itemID = 18202 }, --Eskhandar's Left Claw
			{ itemID = 20577 }, --Nightmare Blade
			{ itemID = 20578 }, --Emerald Dragonfang
			{ itemID = 17112 }, --Empyrean Demolisher
			{ itemID = 18542 }, --Typhoon
			{ itemID = 20644 }, --Nightmare Engulfed Object
			{ itemID = 20600 }, --Malfurion's Signet Ring
		},
	},
	{
		Name = "Physical Gear",
		{
			{ itemID = 20623 }, --Circlet of Restless Dreams
			{ itemID = 20615 }, --Dragonspur Wraps
			{ itemID = 122884 }, --Wristguards of the Shifting Sands
			{ itemID = 122885 }, --Waistguard of the Shifting Sands
			{ itemID = 18544 }, --Doomhide Gauntlets
			{ itemID = 20627 }, --Dark Heart Pants
			{ itemID = 20633 }, --Unnatural Leather Spaulders
			{ itemID = 20617 }, --Ancient Corroded Leggings
		},
		{
			{ itemID = 20624 }, --Ring of the Unliving
			{ itemID = 20622 }, --Dragonheart Necklace
			{ itemID = 18541 }, --Puissant Cape
			{ itemID = 18204 }, --Eskhandar's Pelt
		},
	},
	{
		Name = "Caster Gear",
		{
			{itemID = 19132 }, --Crystal Adorned Crown
			{ itemID = 18546 }, --Infernal Headcage
			{ itemID = 20628 }, --Deviate Growth Cap
			{ itemID = 18545 }, --Leggings of Arcane Supremacy
			{ itemID = 19133 }, --Fel Infused Leggings
			{ itemID = 20638 }, --Leggings of the Demented Mind
			{ itemID = 20639 }, --Strangely Glyphed Legplates
			{ itemID = 19131 }, --Snowblind Shoes
			{ itemID = 20631 }, --Mendicant's Slippers
			{ itemID = 20634 }, --Boots of Fright
			{ itemID = 20621 }, --Boots of the Endless Moor
			{ itemID = 20629 }, --Malignant Footguards
		},
		{
			{ itemID = 20630 }, --Gauntlets of the Shining Light
			{ itemID = 20618 }, --Gloves of Delusional Power
			{ itemID = 20635 }, --Jade Inlaid Vestments
			{ itemID = 19135 }, --Blacklight Bracer
			{ itemID = 122886 }, --Bracers of the Sand Prince
			{ itemID = 20626 }, --Black Bark Wristbands
			{ itemID = 122887 }, --Belt of the Sand Prince
			{ itemID = 19134 }, --Flayed Doomguard Belt
			{ itemID = 20625 }, --Belt of the Dark Bog
			{ itemID = 20579 }, --Green Dragonskin Cloak
			{ itemID = 18208 }, --Drape of Benediction
			{ itemID = 20632 }, --Mindtear Band
			{ itemID = 18543 }, --Ring of Entropy
		},
	},
	{
		Name = "Tank Gear",
		{
			{ itemID = 18547 }, --Unmelting Ice Girdle
			{ itemID = 20616 }, --Dragonbone Wristguards
			{ itemID = 20619 }, --Acid Inscribed Greaves
			{ itemID = 20637 }, --Acid Inscribed Pauldrons
		},
	},
}

------------------------
-- Item Sacks Classic --
------------------------

AtlasLoot_ExtraData[22637] = {
	{ itemID = 19790 }, --Animist's Caress
	{ itemID = 19785 }, --Falcon's Call
	{ itemID = 19787 }, --Presence of Sight
	{ itemID = 19783 }, --Syncretist's Sigil
	{ itemID = 19789 }, --Prophetic Aura
	{ itemID = 19784 }, --Death's Embrace
	{ itemID = 19786 }, --Vodouisant's Vigilant Embrace
	{ itemID = 19788 }, --Hoodoo Hex
	{ itemID = 19782 }, --Presence of Might
}

AtlasLoot_ExtraData[21232] = {
	{ itemID = 21242 }, --Blessed Qiraji War Axe
	{ itemID = 21272 }, --Blessed Qiraji Musket
	{ itemID = 21244 }, --Blessed Qiraji Pugio
	{ itemID = 21269 }, --Blessed Qiraji Bulwark
}

AtlasLoot_ExtraData[21237] = {
	{ itemID = 21273 }, --Blessed Qiraji Acolyte Staff
	{ itemID = 21275 }, --Blessed Qiraji Augur Staff
	{ itemID = 21268 }, --Blessed Qiraji War Hammer
}

AtlasLoot_ExtraData[21221] = {
	{ itemID = 21710 }, --Cloak of the Fallen God
	{ itemID = 21712 }, --Amulet of the Fallen God
	{ itemID = 21709 }, --Ring of the Fallen God
}