local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local color = AtlasLoot.Colors




local gap = {"gap"}
--Index
---Dungeons & BCRaids
----Keys
----Auchindoun: Auchenai Crypts
----Auchindoun: Mana-Tombs
----Auchindoun: Sethekk Halls
----Auchindoun: Shadow Labyrinth
----Black Temple
----Caverns of Time: Old Hillsbrad Foothills
----Caverns of Time: The Black Morass
----Caverns of Time: Hyjal Summit
----Coilfang Reservoir: The Slave Pens
----Coilfang Reservoir: The Steamvault
----Coilfang Reservoir: The Underbog
----Coilfang Reservoir: Serpentshrine Cavern
----Gruul's Lair
----Hellfire Citadel: Hellfire Ramparts
----Hellfire Citadel: The Blood Furnace
----Hellfire Citadel: The Shattered Halls
----Hellfire Citadel: Magtheridon's Lair
----Karazhan
----Sunwell Isle: Magister's Terrace
----Sunwell Isle: Sunwell Plateau
----Tempest Keep: The Arcatraz
----Tempest Keep: The Botanica
----Tempest Keep: The Mechanar
----Tempest Keep: The Eye
----Zul'Aman
---Factions
----Ashtongue Deathsworn
----Cenarion Expedition
----Honor Hold
----Keepers of Time
----Kurenai
----Lower City
----Netherwing
----Ogri'la
----Sha'tari Skyguard
----Shattered Sun Offensive
----Sporeggar
----The Aldor
----The Consortium
----The Mag'har
----The Scale of the Sands
----The Scryers
----The Sha'tar
----The Violet Eye
----Thrallmar
----Tranquillien
----Misc
---PvP
----World PvP - Hellfire Peninsula: Hellfire Fortifications
----World PvP - Nagrand: Halaa
----World PvP - Terokkar Forest: Bone Wastes
----World PvP - Zangarmarsh: Twin Spire Ruins
----Pvp70Season1
----Arena Season 2 - Weapons
----Arena Season 3 - Weapons
----Arena Season 4 - Weapons
---Sets & Collections
----Dungeon 3 Sets (D3)
----Tier 4/Tier 5/Tier 6
----The Burning Crusade Sets
----Badge of Justice Rewards
----BoE World Epics
----World Bosses

--The scale of the sand rep rings
local scaleOfSandsRings = {
	Name = "Rings",
	{
		{ itemID = 29298, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Champion
		{ itemID = 29299, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Champion
		{ itemID = 29300, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Champion
		{ itemID = 29301, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Champion
		gap,
		{ itemID = 29294, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Defender
		{ itemID = 29295, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Defender
		{ itemID = 29296, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Defender
		{ itemID = 29297, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Defender
		gap,
		{ itemID = 15037, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Assassin
		{ itemID = 15038, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Assassin
		{ itemID = 15039, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Assassin
		{ itemID = 15040, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Assassin
	},
	{
		{ itemID = 29302, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Sage
		{ itemID = 29303, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Sage
		{ itemID = 29304, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Sage
		{ itemID = 29305, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Sage
		gap,
		{ itemID = 29307, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Restorer
		{ itemID = 29306, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Restorer
		{ itemID = 29308, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Restorer
		{ itemID = 29309, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Restorer
	}
}

------------------------
---Dungeons & BCRaids ---
------------------------

------------
---Keys ---
------------

AtlasLoot_Data["BCKeys"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "BCKeys",
	{
		Name = "BCKeys",
		{
			{ itemID = 27991 }, --Shadow Labyrinth Key
			{ itemID = 28395 }, --Shattered Halls Key
			{ itemID = 31084 }, --Key to the Arcatraz
			{ itemID = 30622, minDifficulty = "Heroic" }, --Flamewrought Key
			{ itemID = 30637, minDifficulty = "Heroic" }, --Flamewrought Key
			{ itemID = 30623, minDifficulty = "Heroic" }, --Reservoir Key
			{ itemID = 30633, minDifficulty = "Heroic" }, --Auchenai Key
			{ itemID = 30635, minDifficulty = "Heroic" }, --Key of Time
			{ itemID = 30634, minDifficulty = "Heroic" }, --Warpforged Key
			{ icon = "INV_Box_01", name = color.WHITE.."Raid", minDifficulty = "Heroic" },
			{ itemID = 24490, minDifficulty = "Heroic" }, --The Master's Key
			{ icon = "INV_Box_01", name = color.WHITE.."Misc", minDifficulty = "Heroic" },
			{ itemID = 32092, minDifficulty = "Heroic" }, --The Eye of Haramad
			{ itemID = 32449, minDifficulty = "Heroic" }, --Essence-Infused Moonstone
		},
	},
}

-----------------------------------
---Auchindoun: Auchenai Crypts ---
-----------------------------------

AtlasLoot_Data["AuchCrypts"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Auchindoun" .. ": " .. "Auchenai Crypts",
	DisplayName = "Auchenai Crypts",
	Type = "BCDungeon",
	Map = "AuchAuchenaiCrypts",
	WebID = {18371, "npc"},
	{
		Name = "Shirrak the Dead Watcher",
		{
			{ itemID = 27410, groupID = 1, refLootEntry = 18371 }; --Collar of Command
			{ itemID = 27408, groupID = 1, refLootEntry = 18371 }; --Hope Bearer Helm
			{ itemID = 26055, groupID = 1, refLootEntry = 18371 }; --Oculus of the Hidden Eye
			{ itemID = 27409, groupID = 1, refLootEntry = 18371 }; --Raven-Heart Headdress
			{ itemID = 25964, groupID = 1, refLootEntry = 18371 }; --Shaarde the Lesser

		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30587, minDifficulty = "Heroic" }, --Champion's Fire Opal
			{ itemID = 30588, minDifficulty = "Heroic" }, --Potent Fire Opal
			{ itemID = 30586, minDifficulty = "Heroic" }, --Seer's Chrysoprase
			gap,
			{ itemID = 27866, minDifficulty = "Heroic" }, --Scintillating Headdress of Second Sight
			{ itemID = 27493, minDifficulty = "Heroic" }, --Gloves of the Deadwatcher
			{ itemID = 27865, minDifficulty = "Heroic" }, --Bracers of Shirrak
			{ itemID = 27845, minDifficulty = "Heroic" }, --Magma Plume Boots
			{ itemID = 27847, minDifficulty = "Heroic" }, --Fanblade Pauldrons
			{ itemID = 27846, minDifficulty = "Heroic" }, --Claw of the Watcher
		},
	},
	{
		Name = "Exarch Maladaar",
		{
			{ itemID = 27415, groupID = 1, refLootEntry = 18373 }; --Darkguard Face Mask
			{ itemID = 27416, groupID = 1, refLootEntry = 18373 }; --Fetish of the Fallen
			{ itemID = 27412, groupID = 1, refLootEntry = 18373 }; --Ironstaff of Regeneration
			{ itemID = 27414, groupID = 1, refLootEntry = 18373 }; --Mok'Nathal Beast-Mask
			{ itemID = 27413, groupID = 1, refLootEntry = 18373 }; --Ring of the Exarchs
			{ itemID = 27411, groupID = 1, refLootEntry = 18373 }; --Slippers of Serenity
			gap,
			{ itemID = 29354, minDifficulty = "Heroic" }, --Light-Touched Stole of Altruism
			{ itemID = 29257, minDifficulty = "Heroic" }, --Sash of Arcane Visions
			{ itemID = 29244, minDifficulty = "Heroic" }, --Wave-Song Girdle
			{ itemID = 27867, minDifficulty = "Heroic" }, --Boots of the Unjust
			{ itemID = 27871, minDifficulty = "Heroic" }, --Maladaar's Blessed Chaplet
			{ itemID = 27869, minDifficulty = "Heroic" }, --Soulpriest's Ring of Resolve
			{ itemID = 27523, minDifficulty = "Heroic" }, --Exarch's Diamond Band
			{ itemID = 27872, minDifficulty = "Heroic" }, --The Harvester of Souls
			gap,
			{ itemID = 2076367, groupID = 1, refLootEntry = 2061754 }; --Blade of the Vigilant Shepherd
			{ itemID = 2070750, groupID = 1, refLootEntry = 2061754 }; --Boots of Illumination
			{ itemID = 2064692, groupID = 1, refLootEntry = 2061754 }; --Chestplate of Spiritual Vigilance
			{ itemID = 2073927, groupID = 1, refLootEntry = 2061754 }; --Cloak of Soul Protection
			{ itemID = 2066560, groupID = 1, refLootEntry = 2061754 }; --Girdle of the Crypt Defender
			{ itemID = 2073046, groupID = 1, refLootEntry = 2061754 }; --Gloves of the Unyielding Exarch
			{ itemID = 2068672, groupID = 1, refLootEntry = 2061754 }; --Legguards of Sacred Duty
			{ itemID = 2063318, groupID = 1, refLootEntry = 2061754 }; --Sanctified Auchenai Shirt
			{ itemID = 2061754, groupID = 1, refLootEntry = 2061754 }; --Shoulderguards of the Auchenai Guardian
		},
		{
			{ itemID = 427870, minDifficulty = "Heroic" }, --Doomplate Legguards
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30587, minDifficulty = "Heroic" }, --Champion's Fire Opal
			{ itemID = 30588, minDifficulty = "Heroic" }, --Potent Fire Opal
			{ itemID = 33836, minDifficulty = "Heroic" }, --The Exarch's Soul Gem
			gap,
			{ itemID = 30586, minDifficulty = "Heroic" }, --Seer's Chrysoprase
		},
	},
	{
		Name = "Avatar of the Martyred",
		{
			{ itemID = 27878 }, --Auchenai Death Shroud
			{ itemID = 28268 }, --Natural Mender's Wraps
			{ itemID = 27876 }, --Will of the Fallen Exarch
			{ itemID = 27937 }, --Sky Breaker
			{ itemID = 27877 }, --Draenic Wildstaff
			{ itemID = 27797 }, --Wastewalker Shoulderpads
		},
	},
}

------------------------------
---Auchindoun: Mana-Tombs ---
------------------------------

AtlasLoot_Data["AuchManaTombs"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Auchindoun" .. ": " .. "Mana-Tombs",
	DisplayName = "Mana-Tombs",
	Type = "BCDungeon",
	Map = "AuchManaTombs",
	{
		Name = "Pandemonius",
		{
			{ itemID = 25941, groupID = 1, refLootEntry = 40110 }; --Boots of the Outlander
			{ itemID = 25943, groupID = 1, refLootEntry = 40110 }; --Creepjacker
			{ itemID = 25942, groupID = 1, refLootEntry = 40110 }; --Faith Bearer's Gauntlets
			{ itemID = 25940, groupID = 1, refLootEntry = 40110 }; --Idol of the Claw
			{ itemID = 28166, groupID = 1, refLootEntry = 40110 }; --Shield of the Void
			{ itemID = 25939, groupID = 1, refLootEntry = 40110 }; --Voidfire Wand			
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30584, minDifficulty = "Heroic" }, --Enscribed Fire Opal
			{ itemID = 30585, minDifficulty = "Heroic" }, --Glistening Fire Opal
			{ itemID = 30583, minDifficulty = "Heroic" }, --Timeless Chrysoprase
			gap,
			{ itemID = 27816, minDifficulty = "Heroic" }, --Mindrage Pauldrons
			{ itemID = 27818, minDifficulty = "Heroic" }, --Starry Robes of the Crescent
			{ itemID = 27813, minDifficulty = "Heroic" }, --Boots of the Colossus
			{ itemID = 27815, minDifficulty = "Heroic" }, --Totem of the Astral Winds
			{ itemID = 27814, minDifficulty = "Heroic" }, --Twinblade of Mastery
			{ itemID = 27817, minDifficulty = "Heroic" }, --Starbolt Longbow
		},
	},
	{
		Name = "Tavarok",
		{
			{ itemID = 25945, groupID = 1, refLootEntry = 40112 }; --Cloak of Revival
			{ itemID = 25947, groupID = 1, refLootEntry = 40112 }; --Lightning-Rod Pauldrons
			{ itemID = 25946, groupID = 1, refLootEntry = 40112 }; --Nethershade Boots
			{ itemID = 25952, groupID = 1, refLootEntry = 40112 }; --Scimitar of the Nexus-Stalkers
			{ itemID = 25944, groupID = 1, refLootEntry = 40112 }; --Shaarde the Greater
			{ itemID = 25950, groupID = 1, refLootEntry = 40112 }; --Staff of Polarities			
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30584, minDifficulty = "Heroic" }, --Enscribed Fire Opal
			{ itemID = 30585, minDifficulty = "Heroic" }, --Glistening Fire Opal
			{ itemID = 30583, minDifficulty = "Heroic" }, --Timeless Chrysoprase
			gap,
			{ itemID = 27824, minDifficulty = "Heroic" }, --Robe of the Great Dark Beyond
			{ itemID = 27821, minDifficulty = "Heroic" }, --Extravagant Boots of Malice
			{ itemID = 27825, minDifficulty = "Heroic" }, --Predatory Gloves
			{ itemID = 27826, minDifficulty = "Heroic" }, --Mantle of the Sea Wolf
			{ itemID = 27823, minDifficulty = "Heroic" }, --Shard Encrusted Breastplate
			{ itemID = 27822, minDifficulty = "Heroic" }, --Crystal Band of Valor
		},
	},
	{
		Name = "Nexus-Prince Shaffar",
		{
			{ itemID = 25957, groupID = 1, refLootEntry = 40115 }; --Ethereal Boots of the Skystrider
			{ itemID = 25953, groupID = 1, refLootEntry = 40115 }; --Ethereal Warp-Bow
			{ itemID = 25962, groupID = 1, refLootEntry = 40115 }; --Longstrider's Loop
			{ itemID = 25955, groupID = 1, refLootEntry = 40115 }; --Mask of the Howling Storm
			{ itemID = 25956, groupID = 1, refLootEntry = 40115 }; --Nexus-Bracers of Vigor
			{ itemID = 25954, groupID = 1, refLootEntry = 40115 }; --Sigil of Shaffar
			gap,
			{ itemID = 22921 }, --Recipe: Major Frost Protection Potion
			{ itemID = 28490 }, --Shaffar's Wrappings
			{ itemID = 33835, minDifficulty = "Heroic" }, --Shaffar's Wondrous Amulet
			gap,
			{ itemID = 30584, minDifficulty = "Heroic" }, --Enscribed Fire Opal
			{ itemID = 30585, minDifficulty = "Heroic" }, --Glistening Fire Opal
			{ itemID = 30583, minDifficulty = "Heroic" }, --Timeless Chrysoprase
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 29240, minDifficulty = "Heroic" }, --Bands of Negation
			{ itemID = 30535, minDifficulty = "Heroic" }, --Forestwalker Kilt
			{ itemID = 29352, minDifficulty = "Heroic" }, --Cobalt Band of Tyrigosa
			{ itemID = 32082, minDifficulty = "Heroic" }, --The Fel Barrier
			gap,
			{ itemID = 27831, minDifficulty = "Heroic" }, --Mantle of the Unforgiven
			{ itemID = 27843, minDifficulty = "Heroic" }, --Glyph-Lined Sash
			{ itemID = 27827, minDifficulty = "Heroic" }, --Lucid Dream Bracers
			{ itemID = 27835, minDifficulty = "Heroic" }, --Stillwater Girdle
			{ itemID = 27844, minDifficulty = "Heroic" }, --Pauldrons of Swift Retribution
			{ itemID = 27798, minDifficulty = "Heroic" }, --Gauntlets of Vindication
			gap,
			{ itemID = 27837, minDifficulty = "Heroic" }, --Wastewalker Leggings
			{ itemID = 27828, minDifficulty = "Heroic" }, --Warp-Scarab Brooch
			{ itemID = 28400, minDifficulty = "Heroic" }, --Warp-Storm Warblade
			{ itemID = 27829, minDifficulty = "Heroic" }, --Axe of the Nexus-Kings
			{ itemID = 27840, minDifficulty = "Heroic" }, --Scepter of Sha'tar
			{ itemID = 27842, minDifficulty = "Heroic" }, --Grand Scepter of the Nexus-Kings
		},
	},
	{
		Name = "Yor" .. " (" .. "Heroic" .. ")",
		{
			{ itemID = 31923, groupID = 2, refLootEntry = 22930 }; --Band of the Crystalline Void
			{ itemID = 31919, groupID = 2, refLootEntry = 22930 }; --Nexus-Prince's Ring of Balance
			{ itemID = 31922, groupID = 2, refLootEntry = 22930 }; --Ring of Conflict Survival
			{ itemID = 31920, groupID = 2, refLootEntry = 22930 }; --Shaffar's Band of Brutality
			{ itemID = 31921, groupID = 2, refLootEntry = 22930 }; --Yor's Collapsing Band
			{ itemID = 31924, groupID = 2, refLootEntry = 22930 }; --Yor's Revenge
			gap,
			{ itemID = 31570, groupID = 1, refLootEntry = 22930 }; --Mistshroud Tunic
			{ itemID = 31562, groupID = 1, refLootEntry = 22930 }; --Skystalker's Tunic
			{ itemID = 31578, groupID = 1, refLootEntry = 22930 }; --Slatesteel Breastplate
			{ itemID = 31554, groupID = 1, refLootEntry = 22930 }; --Windchanneller's Tunic
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			gap,
			{ itemID = 30584 }, --Enscribed Fire Opal
			{ itemID = 30585 }, --Glistening Fire Opal
			{ itemID = 30583 }, --Timeless Chrysoprase
		},
	},
}

---------------------------------
---Auchindoun: Sethekk Halls ---
---------------------------------

AtlasLoot_Data["AuchSethekk"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Auchindoun" .. ": " .. "Sethekk Halls",
	DisplayName = "Sethekk Halls",
	Type = "BCDungeon",
	Map = "AuchSethekkHalls",
	{
		Name = "Darkweaver Syth",
		{
			{ itemID = 27918, groupID = 1, refLootEntry = 40130 }; --Bands of Syth
			{ itemID = 27917, groupID = 1, refLootEntry = 40130 }; --Libram of the Eternal Rest
			{ itemID = 27919, groupID = 1, refLootEntry = 40130 }; --Light-Woven Slippers
			{ itemID = 27914, groupID = 1, refLootEntry = 40130 }; --Moonstrider Boots
			{ itemID = 27916, groupID = 1, refLootEntry = 40130 }; --Sethekk Feather-Darts
			{ itemID = 27915, groupID = 1, refLootEntry = 40130 }; --Sky-Hunter Swift Boots
			gap,
			{ itemID = 24160 }, --Design: Khorium Inferno Band
			gap,
			{ itemID = 27633 }, --Terokk's Mask
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30553, minDifficulty = "Heroic" }, --Pristine Fire Opal
			{ itemID = 30554, minDifficulty = "Heroic" }, --Stalwart Fire Opal
			{ itemID = 30552, minDifficulty = "Heroic" }, --Blessed Tanzanite
			gap,
			{ itemID = 25461, minDifficulty = "Heroic" }, --Book of Forgotten Names
		},
	},
	{
		Name = "Anzu" .. " (" .. "Heroic" .. ")",
		{
			{ itemID = 32779, groupID = 1, refLootEntry = 23035 }; --Band of Frigid Elements
			{ itemID = 32769, groupID = 1, refLootEntry = 23035 }; --Belt of the Raven Lord
			{ itemID = 32778, groupID = 1, refLootEntry = 23035 }; --Boots of Righteous Fortitude
			{ itemID = 32781, groupID = 1, refLootEntry = 23035 }; --Talon of Anzu
			{ itemID = 32780, groupID = 1, refLootEntry = 23035 }; --The Boomstick
		},
		{
		 	{ itemID = 29434 }, --Badge of Justice
		 	gap,
		 	{ itemID = 30553 }, --Pristine Fire Opal
		 	{ itemID = 30554 }, --Stalwart Fire Opal
		 	{ itemID = 30552 }, --Blessed Tanzanite
			gap,
			{ itemID = 32768 }, --Reins of the Raven Lord
	}
},
	{
		Name = "Talon King Ikiss",
		{
			{ itemID = 27946, groupID = 2, refLootEntry = 25006 }; --Avian Cloak of Feathers
			{ itemID = 27986, groupID = 2, refLootEntry = 25006 }; --Crow Wing Reaper
			{ itemID = 27985, groupID = 2, refLootEntry = 25006 }; --Deathforge Girdle
			{ itemID = 27936, groupID = 2, refLootEntry = 25006 }; --Greaves of Desolation
			{ itemID = 27875, groupID = 2, refLootEntry = 25006 }; --Hallowed Trousers
			{ itemID = 27838, groupID = 2, refLootEntry = 25006 }; --Incanter's Trousers
			{ itemID = 27925, groupID = 2, refLootEntry = 25006 }; --Ravenclaw Band
			{ itemID = 27981, groupID = 2, refLootEntry = 25006 }; --Sethekk Oracle Cloak
			{ itemID = 27776, groupID = 2, refLootEntry = 25006 }; --Shoulderpads of Assassination
			{ itemID = 27980, groupID = 2, refLootEntry = 25006 }; --Terokk's Nightmace
			{ itemID = 27948, groupID = 2, refLootEntry = 25006 }; --Trousers of Oblivion
			{ itemID = 2076383, groupID = 1, refLootEntry = 2076383 }; --Ikiss's Arcane Talon
			gap,
			{ itemID = 27632 }, --Terokk's Quill
			gap,
			{ itemID = 27991 }, --Shadow Labyrinth Key
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30553, minDifficulty = "Heroic" }, --Pristine Fire Opal
			{ itemID = 30554, minDifficulty = "Heroic" }, --Stalwart Fire Opal
			{ itemID = 30552, minDifficulty = "Heroic" }, --Blessed Tanzanite
			{ itemID = 29249, minDifficulty = "Heroic" }, --Bands of the Benevolent
			{ itemID = 29259, minDifficulty = "Heroic" }, --Bracers of the Hunt
			{ itemID = 32073, minDifficulty = "Heroic" }, --Spaulders of Dementia
			{ itemID = 29355, minDifficulty = "Heroic" }, --Terokk's Shadowstaff
			{ itemID = 33834, minDifficulty = "Heroic" }, --The Headfeathers of Ikiss
		}
	}
}

------------------------------------
---Auchindoun: Shadow Labyrinth ---
------------------------------------

AtlasLoot_Data["AuchShadowLab"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Auchindoun" .. ": " .. "Shadow Labyrinth",
	DisplayName = "Shadow Labyrinth",
	Type = "BCDungeon",
	Map = "AuchShadowLabyrinth",
	{
		Name = "Ambassador Hellmaw",
		{
			{ itemID = 27888, groupID = 1, refLootEntry = 40140 }; --Dream-Wing Helm
			{ itemID = 27886, groupID = 1, refLootEntry = 40140 }; --Idol of the Emerald Queen
			{ itemID = 27889, groupID = 1, refLootEntry = 40140 }; --Jaedenfire Gloves of Annihilation
			{ itemID = 27884, groupID = 1, refLootEntry = 40140 }; --Ornate Boots of the Sanctified
			{ itemID = 27887, groupID = 1, refLootEntry = 40140 }; --Platinum Shield of the Valorous
			{ itemID = 27885, groupID = 1, refLootEntry = 40140 }; --Soul-Wand of the Aldor
			{ itemID = 2076423, groupID = 1, refLootEntry = 2076423 }; --Fel Ambassador's Blades
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
		},
	},
	{
		Name = "Blackheart the Inciter",
		{
			{ itemID = 27891, groupID = 1, refLootEntry = 40141 }; --Adamantine Figurine
			{ itemID = 28134, groupID = 1, refLootEntry = 40141 }; --Brooch of Heightened Potential
			{ itemID = 27892, groupID = 1, refLootEntry = 40141 }; --Cloak of the Inciter
			{ itemID = 27468, groupID = 1, refLootEntry = 40141 }; --Moonglade Handwraps
			{ itemID = 27893, groupID = 1, refLootEntry = 40141 }; --Ornate Leggings of the Venerated
			{ itemID = 245794, groupID = 1, refLootEntry = 40141 }; --Verdant's Handwraps
			{ itemID = 27890, groupID = 1, refLootEntry = 40141 }; --Wand of the Netherwing
			gap,
			{ itemID = 25728 }, --Pattern: Stylin' Purple Hat
			{ itemID = 30808 }, --Book of Fel Names
			gap,
			{ itemID = 2076410, groupID = 1, refLootEntry = 2076410 }; --Blackheart's Chaotic Warhammer
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
	}
},
	{
		Name = "Grandmaster Vorpil",
		{
			{ itemID = 27901, groupID = 1, refLootEntry = 40142 }; --Blackout Truncheon
			{ itemID = 27897, groupID = 1, refLootEntry = 40142 }; --Breastplate of Many Graces
			{ itemID = 27775, groupID = 1, refLootEntry = 40142 }; --Hallowed Pauldrons
			{ itemID = 27900, groupID = 1, refLootEntry = 40142 }; --Jewel of Charismatic Mystique
			{ itemID = 27898, groupID = 1, refLootEntry = 40142 }; --Wrathfire Hand-Cannon
			gap,			
			{ itemID = 30827 }, --Lexicon Demonica
			gap,
			{ itemID = 2066516, groupID = 1, refLootEntry = 2060617 }; --Cincture of Dark Rituals
			{ itemID = 2070694, groupID = 1, refLootEntry = 2060617 }; --Footwraps of Twisted Shadows
			{ itemID = 2073020, groupID = 1, refLootEntry = 2060617 }; --Gloves of Void Manipulation
			{ itemID = 2060617, groupID = 1, refLootEntry = 2060617 }; --Hood of Shadowed Insights
			{ itemID = 2068607, groupID = 1, refLootEntry = 2060617 }; --Leggings of the Grandmaster
			{ itemID = 2061708, groupID = 1, refLootEntry = 2060617 }; --Mantle of the Shadow Council
			{ itemID = 2064635, groupID = 1, refLootEntry = 2060617 }; --Robe of the Void Pact
			{ itemID = 2076424, groupID = 1, refLootEntry = 2060617 }; --Staff of Empowering Shadows
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
		},
	},
	{
		Name = "Murmur",
		{
			{ itemID = 27905, groupID = 1, refLootEntry = 40143 }; --Greatsword of Horrid Dreams
			{ itemID = 27912, groupID = 1, refLootEntry = 40143 }; --Harness of the Deep Currents
			{ itemID = 27902, groupID = 1, refLootEntry = 40143 }; --Silent Slippers of Meditation
			{ itemID = 27910, groupID = 1, refLootEntry = 40143 }; --Silvermoon Crest Shield
			{ itemID = 27903, groupID = 1, refLootEntry = 40143 }; --Sonic Spear
			{ itemID = 27913, groupID = 1, refLootEntry = 40143 }; --Whispering Blade of Slaying
			{ itemID = 28230, groupID = 1, refLootEntry = 40146 }; --Hallowed Garments
			{ itemID = 27908, groupID = 1, refLootEntry = 40146 }; --Leggings of Assassination
			{ itemID = 28232, groupID = 1, refLootEntry = 40146 }; --Robe of Oblivion
			{ itemID = 27803, groupID = 1, refLootEntry = 40146 }; --Shoulderguards of the Bold
			{ itemID = 27778, groupID = 1, refLootEntry = 40146 }; --Spaulders of Oblivion
			{ itemID = 27909, groupID = 1, refLootEntry = 40146 }; --Tidefury Kilt
			gap,
			{ itemID = 245601, groupID = 1, refLootEntry = 40146 }; --Chestpiece of the Tides
			{ itemID = 245303, groupID = 1, refLootEntry = 40146 }; --Kilt of the Tides
			{ itemID = 242896, groupID = 1, refLootEntry = 40146 }; --Shoulderguards of the Sentinel


		},
		{
			{ itemID = 24309 }, --Pattern: Spellstrike Pants
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
			gap,
			{ itemID = 30532, minDifficulty = "Heroic" }, --Kirin Tor Master's Trousers
			{ itemID = 29357, minDifficulty = "Heroic" }, --Master Thief's Gloves
			{ itemID = 29261, minDifficulty = "Heroic" }, --Girdle of Ferocity
			{ itemID = 29353, minDifficulty = "Heroic" }, --Shockwave Truncheon
			gap,
			{ itemID = 31722, minDifficulty = "Heroic" }, --Murmur's Essence
			{ itemID = 33840, minDifficulty = "Heroic" }, --Murmur's Whisper
		},

	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Trash Mobs", "=q5=" .. "Mana-Tombs" },
			{ itemID = 23615 }, --Plans: Swiftsteel Gloves
			{ itemID = 22543 }, --Formula: Enchant Boots - Fortitude
			{ icon = "INV_Box_01", name = color.WHITE.. "Trash Mobs", "=q5=" .. "Sethekk Halls" },
			{ itemID = 25731 }, --Pattern: Stylin' Crimson Hat
			{ itemID = 29669 }, --Pattern: Shadow Armor Kit
			{ icon = "INV_Box_01", name = color.WHITE.. "The Saga of Terokk", "=q5=" .. "Sethekk Halls" },
			{ itemID = 27634 }, --The Saga of Terokk
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Trash Mobs", "=q5=" .. "Auchenai Crypts" },
			{ itemID = 23605 }, --Plans: Felsteel Gloves
			{ itemID = 22544 }, --Formula: Enchant Boots - Dexterity
			{ icon = "INV_Box_01", name = color.WHITE.. "Trash Mobs", "=q5=" .. "Shadow Labyrinth" },
			{ itemID = 23607 }, --Plans: Felsteel Helm
			{ icon = "INV_Box_01", name = color.WHITE.. "First Fragment Guardian", "=q5=" .. "Shadow Labyrinth" },
			{ itemID = 24514 }, --First Key Fragment
		},
	}
}




--------------------
---Black Temple ---
--------------------

AtlasLoot_Data["BlackTemple"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Black Temple",
	Type = "BCRaid",
	Map = "BlackTemple",
	{
		Name = "High Warlord Naj'entus",
		{
			{ itemID = 32242, groupID = 1, refLootEntry = 22887 }; --Boots of Oceanic Fury
			{ itemID = 32240, groupID = 1, refLootEntry = 22887 }; --Guise of the Tidal Lurker
			{ itemID = 32241, groupID = 1, refLootEntry = 22887 }; --Helm of Soothing Currents
			{ itemID = 32243, groupID = 1, refLootEntry = 22887 }; --Pearl Inlaid Boots
			{ itemID = 32239, groupID = 1, refLootEntry = 22887 }; --Slippers of the Seacaller
			{ itemID = 32232, groupID = 2, refLootEntry = 22887 }; --Eternium Shell Bracers
			{ itemID = 32234, groupID = 2, refLootEntry = 22887 }; --Fists of Mukoa
			{ itemID = 32377, groupID = 2, refLootEntry = 22887 }; --Mantle of Darkness
			{ itemID = 32245, groupID = 2, refLootEntry = 22887 }; --Tide-stomper's Greaves
		},
		{
			{ itemID = 32238, groupID = 1, refLootEntry = 22887 }; --Ring of Calming Waves
			{ itemID = 32248, groupID = 2, refLootEntry = 22887 }; --Halberd of Desolation
			{ itemID = 32236, groupID = 2, refLootEntry = 22887 }; --Rising Tide
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63451, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Supremus",
		{
			{ itemID = 32259, groupID = 1, refLootEntry = 22898 }; --Bands of the Coming Storm
			{ itemID = 32258, groupID = 1, refLootEntry = 22898 }; --Naturalist's Preserving Cinch
			{ itemID = 32256, groupID = 1, refLootEntry = 22898 }; --Waistwrap of Infinity
			{ itemID = 32260, groupID = 2, refLootEntry = 22898 }; --Choker of Endless Nightmares
			{ itemID = 32252, groupID = 2, refLootEntry = 22898 }; --Nether Shadow Tunic
			{ itemID = 32250, groupID = 2, refLootEntry = 22898 }; --Pauldrons of Abyssal Fury
			{ itemID = 32251, groupID = 2, refLootEntry = 22898 }; --Wraps of Precise FlightPathFaction
			gap,
			{ itemID = 32247, groupID = 1, refLootEntry = 22898 }; --Ring of Captured Storms
			{ itemID = 32261, groupID = 2, refLootEntry = 22898 }; --Band of the Abyssal Lord
		},
		{
			{ itemID = 32255, groupID = 1, refLootEntry = 22898 }; --Felstone Bulwark
			{ itemID = 32237, groupID = 1, refLootEntry = 22898 }; --The Maelstrom's Fury
			{ itemID = 32253, groupID = 2, refLootEntry = 22898 }; --Legionkiller
			{ itemID = 32262, groupID = 2, refLootEntry = 22898 }; --Syphon of the Nathrezim
			{ itemID = 32254, groupID = 2, refLootEntry = 22898 }; --The Brutalizer
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63510, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Shade of Akama",
		{
			{ itemID = 32273, groupID = 1, refLootEntry = 22841 }; --Amice of Brilliant Light
			{ itemID = 32276, groupID = 1, refLootEntry = 22841 }; --Flashfire Girdle
			{ itemID = 32270, groupID = 1, refLootEntry = 22841 }; --Focused Mana Bindings
			{ itemID = 32275, groupID = 1, refLootEntry = 22841 }; --Spiritwalker Gauntlets
			{ itemID = 32513, groupID = 1, refLootEntry = 22841 }; --Wristbands of Divine Influence
			{ itemID = 32278, groupID = 2, refLootEntry = 22841 }; --Grips of Silent Justice
			{ itemID = 32268, groupID = 2, refLootEntry = 22841 }; --Myrmidon's Treads
			{ itemID = 32265, groupID = 2, refLootEntry = 22841 }; --Shadow-walker's Cord
			{ itemID = 32264, groupID = 2, refLootEntry = 22841 }; --Shoulders of the Hidden Predator
			{ itemID = 32279, groupID = 2, refLootEntry = 22841 }; --The Seeker's Wristguards
		},
		{
			{ itemID = 32361, groupID = 1, refLootEntry = 22841 }; --Blind-Seers Icon
			{ itemID = 32266, groupID = 2, refLootEntry = 22841 }; --Ring of Deceitful Intent
			{ itemID = 11432 }, --Ashtongue Jewel
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63425, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Teron Gorefiend",
		{
			{ itemID = 32328, groupID = 1, refLootEntry = 22871 }; --Botanist's Gloves of Growth
			{ itemID = 32329, groupID = 1, refLootEntry = 22871 }; --Cowl of Benevolence
			{ itemID = 32512, groupID = 1, refLootEntry = 22871 }; --Girdle of Lordaeron's Fallen
			{ itemID = 32271, groupID = 1, refLootEntry = 22871 }; --Kilt of Immortal Nature
			{ itemID = 32327, groupID = 1, refLootEntry = 22871 }; --Robe of the Shadow Council
			{ itemID = 32280, groupID = 2, refLootEntry = 22871 }; --Gauntlets of Enforcement
			{ itemID = 32324, groupID = 2, refLootEntry = 22871 }; --Insidious Bands
			{ itemID = 32323, groupID = 2, refLootEntry = 22871 }; --Shadowmoon Destroyer's Drape
			{ itemID = 32510, groupID = 2, refLootEntry = 22871 }; --Softstep Boots of Tracking
		},
		{
			{ itemID = 32349, groupID = 1, refLootEntry = 22871 }; --Translucent Spellthread Necklace
			gap,
			{ itemID = 32507, groupID = 2, refLootEntry = 22871 }; --Gorefiend
			{ itemID = 32325, groupID = 2, refLootEntry = 22871 }; --Rifle of the Stoic Guardian
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63443, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Gurtogg Bloodboil",
		{
			{ itemID = 32339, groupID = 1, refLootEntry = 22948 }; --Belt of Primal Majesty
			{ itemID = 32338, groupID = 1, refLootEntry = 22948 }; --Blood-cursed Shoulderpads
			{ itemID = 32340, groupID = 1, refLootEntry = 22948 }; --Garments of Temperance
			{ itemID = 32337, groupID = 1, refLootEntry = 22948 }; --Shroud of Forgiveness
			{ itemID = 32342, groupID = 2, refLootEntry = 22948 }; --Girdle of Mighty Resolve
			{ itemID = 32341, groupID = 2, refLootEntry = 22948 }; --Leggings of Divine Retribution
			{ itemID = 32334, groupID = 2, refLootEntry = 22948 }; --Vest of Mounting Assault
		},
		{
			{ itemID = 32335, groupID = 2, refLootEntry = 22948 }; --Unstoppable Aggressor's Ring
			gap,
			{ itemID = 32344, groupID = 1, refLootEntry = 22948 }; --Staff of Immaculate Recovery
			{ itemID = 32343, groupID = 1, refLootEntry = 22948 }; --Wand of Prismatic Focus
			{ itemID = 12571, groupID = 2, refLootEntry = 22948 }; --Bloodboil Breaker
			{ itemID = 32269, groupID = 2, refLootEntry = 22948 }; --Messenger of Fate
			{ itemID = 32348, groupID = 2, refLootEntry = 22948 }; --Soul Cleaver

			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63521, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Reliquary of the Lost",
		{
			{ itemID = 32354, groupID = 1, refLootEntry = 22856 }; --Crown of Empowered Fate
			{ itemID = 32351, groupID = 1, refLootEntry = 22856 }; --Elunite Empowered Bracers
			{ itemID = 32353, groupID = 1, refLootEntry = 22856 }; --Gloves of Unfailing Faith
			{ itemID = 32352, groupID = 1, refLootEntry = 22856 }; --Naturewarden's Treads
			{ itemID = 32517, groupID = 1, refLootEntry = 22856 }; --The Wavemender's Mantle
			{ itemID = 32346, groupID = 2, refLootEntry = 22856 }; --Boneweave Girdle
			{ itemID = 32345, groupID = 2, refLootEntry = 22856 }; --Dreadboots of the Legion
			{ itemID = 32333, groupID = 2, refLootEntry = 22856 }; --Girdle of Stability
			{ itemID = 32347, groupID = 2, refLootEntry = 22856 }; --Grips of Damnation
		},
		{
			{ itemID = 32350, groupID = 1, refLootEntry = 22856 }; --Touch of Inspiration
			{ itemID = 32362, groupID = 2, refLootEntry = 22856 }; --Pendant of Titans
			{ itemID = 32332, groupID = 2, refLootEntry = 22856 }; --Torch of the Damned

			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63940, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Mother Shahraz",
		{
			{ itemID = 32365, groupID = 2, refLootEntry = 22947 }; --Heartshatter Breastplate
			{ itemID = 32367, groupID = 2, refLootEntry = 22947 }; --Leggings of Devastation
			{ itemID = 32370, groupID = 2, refLootEntry = 22947 }; --Nadina's Pendant of Purity
			{ itemID = 32263, groupID = 2, refLootEntry = 22947 }; --Praetorian's Legguards
			{ itemID = 32366, groupID = 2, refLootEntry = 22947 }; --Shadowmaster's Boots
			gap,
			{ itemID = 32369, groupID = 2, refLootEntry = 22947 }; --Blade of Savagery
		},
		{
			{ itemID = 31101, lootTable = {"T6SHOULDER","Token"} }, --Pauldrons of the Forgotten Conqueror
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63520, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "The Illidari Council",
		{
			{ itemID = 32331 }, --Cloak of the Illidari Council
			{ itemID = 32519 }, --Belt of Divine Guidance
			{ itemID = 32518 }, --Veil of Turning Leaves
			{ itemID = 32376 }, --Forest Prowler's Helm
			{ itemID = 32373 }, --Helm of the Illidari Shatterer
			{ itemID = 32326 }, --Twisted Blades of Zarak
		},
		{
			{ itemID = 31101, lootTable = {"T6SHOULDER","Token"} }, --Pauldrons of the Forgotten Conqueror
			{ itemID = 31098, lootTable = {"T6LEGS","Token"} }, --Leggings of the Forgotten Conqueror
			{ itemID = 31097, lootTable = {"T6HEAD","Token"} }, --Helm of the Forgotten Conqueror
			{ itemID = 31092, lootTable = {"T6HAND","Token"} }, --Gloves of the Forgotten Conqueror
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63929, droprate = "1%" }, --Pet Sigil
			{ itemID = 63928, droprate = "1%" }, --Pet Sigil
			{ itemID = 63690, droprate = "1%" }, --Pet Sigil
			{ itemID = 63529, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Illidan Stormrage",
		{
			{ itemID = 32525, groupID = 3, refLootEntry = 22917 }; --Cowl of the Illidari High Lord
			{ itemID = 32500, groupID = 3, refLootEntry = 22917 }; --Crystal Spire of Karabor
			{ itemID = 32496, groupID = 3, refLootEntry = 22917 }; --Memento of Tyrande
			{ itemID = 32363, groupID = 3, refLootEntry = 22917 }; --Naaru-Blessed Life Rod
			{ itemID = 32524, groupID = 3, refLootEntry = 22917 }; --Shroud of the Highborne
			{ itemID = 32483, groupID = 3, refLootEntry = 22917 }; --The Skull of Gul'dan
			{ itemID = 32374, groupID = 3, refLootEntry = 22917 }; --Zhar'doom, Greatstaff of the Devourer
			{ itemID = 32336, groupID = 4, refLootEntry = 22917 }; --Black Bow of the Betrayer
			{ itemID = 32375, groupID = 4, refLootEntry = 22917 }; --Bulwark of Azzinoth
			{ itemID = 32235, groupID = 4, refLootEntry = 22917 }; --Cursed Vision of Sargeras
			{ itemID = 32521, groupID = 4, refLootEntry = 22917 }; --Faceplate of the Impenetrable
			{ itemID = 32505, groupID = 4, refLootEntry = 22917 }; --Madness of the Betrayer
			{ itemID = 32501, groupID = 4, refLootEntry = 22917 }; --Shadowmoon Insignia
			{ itemID = 32471, groupID = 4, refLootEntry = 22917 }; --Shard of Azzinoth
			{ itemID = 32497, groupID = 4, refLootEntry = 22917 }; --Stormrage Signet Ring			
		},
		{
			{ itemID = 31089, lootTable = {"T6CHEST","Token"} }, --Chestguard of the Forgotten Conqueror
			gap,
			{ itemID = 32837 }, --Warglaive of Azzinoth
			{ itemID = 32838 }, --Warglaive of Azzinoth
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63511, droprate = "1%" }, --Pet Sigil
			gap,
			{ itemID = 343208 }, --Mount
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 34012 }, --Shroud of the Final Stand
			{ itemID = 32593 }, --Treads of the Den Mother
			{ itemID = 47166 }, --Concubines Attire
			{ itemID = 32608 }, --Pillager's Gauntlets
			{ itemID = 32606 }, --Girdle of the Lightbearer
			gap,
			{ itemID = 32526 }, --Band of Devastation
			{ itemID = 32528 }, --Blessed Band of Karabor
			{ itemID = 32527 }, --Ring of Ancient Knowledge
			gap,
			{ itemID = 32330 }, --Totem of Ancestral Guidance
			{ itemID = 32368 }, --Tome of the Lightbringer
			{ itemID = 32257 }, --Idol of the white Stag
		},
		{
			{ itemID = 32943 }, --Swiftsteel Bludgeon
			{ itemID = 34011 }, --Illidari Runeshield
			{ itemID = 15900 }, --Finkle's Vibroblade
			{ itemID = 15951 }, --Reaver Cleaver
			{ itemID = 15952 }, --The Taskmaster
		},
		{
			{ itemID = 32228 }, --Empyrean Sapphire
			{ itemID = 32231 }, --Pyrestone
			{ itemID = 32229 }, --Lionseye
			{ itemID = 32249 }, --Seaspray Emerald
			{ itemID = 32230 }, --Shadowsong Amethyst
			{ itemID = 32227 }, --Crimson Spinel
			{ itemID = 32428 }, --Heart of Darkness
			{ itemID = 32897 }, --Mark of the Illidari
		},
	},
	{
		Name = "Reputation Trinkets",
		{
			{ itemID = 32486 }, --Ashtongue Talisman of Equilibrium
			{ itemID = 32487 }, --Ashtongue Talisman of Swiftness
			{ itemID = 32488 }, --Ashtongue Talisman of Insight
			{ itemID = 32489 }, --Ashtongue Talisman of Zeal
			{ itemID = 32490 }, --Ashtongue Talisman of Acumen
			{ itemID = 32492 }, --Ashtongue Talisman of Lethality
			{ itemID = 32491 }, --Ashtongue Talisman of Vision
			{ itemID = 32493 }, --Ashtongue Talisman of Shadows
			{ itemID = 32485 }, --Ashtongue Talisman of Valor
		},
	},
	{
		Name = "BT Patterns/Plans",
		{
			{ itemID = 32738 },
			{ itemID = 32739 },
			{ itemID = 32736 },
			{ itemID = 32737 },
			gap,
			{ itemID = 32748 }, --Pattern: Bindings of Lightning Reflexes
			{ itemID = 32744 }, --Pattern: Bracers of Renewed Life
			{ itemID = 32750 }, --Pattern: Living Earth Bindings
			{ itemID = 32751 }, --Pattern: Living Earth Shoulders
			{ itemID = 32749 }, --Pattern: Shoulders of Lightning Reflexes
			{ itemID = 32745 }, --Pattern: Shoulderpads of Renewed Life
			{ itemID = 32746 }, --Pattern: Swiftstrike Bracers
			{ itemID = 32747 }, --Pattern: Swiftstrike Shoulders
		},
		{
			{ itemID = 32754 },
			{ itemID = 32755 },
			{ itemID = 32753 },
			{ itemID = 32752 },
		},
	}
}


------------------------------------------------
---Caverns of Time: Old Hillsbrad Foothills ---
------------------------------------------------

AtlasLoot_Data["CoTOldHillsbrad"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Caverns of Time" .. ": " .. "Old Hillsbrad Foothills",
	DisplayName = "Old Hillsbrad Foothills",
	Type = "BCDungeon",
	Map = "CoTOldHillsbrad",
	{
		Name = "Lieutenant Drake",
		{
			{ itemID = 27423 }, --Cloak of Impulsiveness
			{ itemID = 27418 }, --Stormreaver Shadow-Kilt
			{ itemID = 27417 }, --Ravenwing Pauldrons
			{ itemID = 27420 }, --Uther's Ceremonial Warboots
			{ itemID = 27436 }, --Iron Band of the Unbreakable
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30589, minDifficulty = "Heroic" }, --Dazzling Chrysoprase
			{ itemID = 30591, minDifficulty = "Heroic" }, --Empowered Fire Opal
			{ itemID = 30590, minDifficulty = "Heroic" }, --Enduring Chrysoprase
			gap,
			{ itemID = 28212, minDifficulty = "Heroic" }, --Aran's Sorcerous Slacks
			{ itemID = 28214, minDifficulty = "Heroic" }, --Grips of the Lunar Eclipse
			{ itemID = 28215, minDifficulty = "Heroic" }, --Mok'Nathal Mask of Battle
			{ itemID = 28211, minDifficulty = "Heroic" }, --Lieutenant's Signet of Lordaeron
			{ itemID = 28213, minDifficulty = "Heroic" }, --Lordaeron Medical Guide
			{ itemID = 28210, minDifficulty = "Heroic" }, --Bloodskull Destroyer
		},
	},
	{
		Name = "Captain Skarloc",
		{
			{ itemID = 27428 }, --Stormfront Gauntlets
			{ itemID = 27430 }, --Scaled Greaves of Patience
			{ itemID = 27427 }, --Durotan's Battle Harness
			{ itemID = 27424 }, --Amani Venom-Axe
			{ itemID = 27426 }, --Northshire Battlemace
			gap,
			{ itemID = 22927 }, --Recipe: Ironshield Potion
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30589, minDifficulty = "Heroic" }, --Dazzling Chrysoprase
			{ itemID = 30591, minDifficulty = "Heroic" }, --Empowered Fire Opal
			{ itemID = 30590, minDifficulty = "Heroic" }, --Enduring Chrysoprase
			gap,
			{ itemID = 28218, minDifficulty = "Heroic" }, --Pontiff's Pantaloons of Prophecy
			{ itemID = 28220, minDifficulty = "Heroic" }, --Moon-Crown Antlers
			{ itemID = 28219, minDifficulty = "Heroic" }, --Emerald-Scale Greaves
			{ itemID = 28221, minDifficulty = "Heroic" }, --Boots of the Watchful Heart
			{ itemID = 28217, minDifficulty = "Heroic" }, --Tarren Mill Vitality Locket
			{ itemID = 28216, minDifficulty = "Heroic" }, --Dathrohan's Ceremonial Hammer
		},
	},
	{
		Name = "Epoch Hunter",
		{
			{ itemID = 27433 }, --Pauldrons of Sufferance
			{ itemID = 27434 }, --Mantle of Perenolde
			{ itemID = 27440 }, --Diamond Prism of Recurrence
			{ itemID = 27432 }, --Broxigar's Ring of Valor
			{ itemID = 27431 }, --Time-Shifted Dagger
			{ itemID = 29250, minDifficulty = "Heroic" }, --Cord of Sanctification
			{ itemID = 29246, minDifficulty = "Heroic" }, --Nightfall Wristguards
			{ itemID = 29357, minDifficulty = "Heroic" }, --Master Thief's Gloves
			{ itemID = 30534, minDifficulty = "Heroic" }, --Wyrmscale Greaves
			{ itemID = 30536, minDifficulty = "Heroic" }, --Greaves of the Martyr
			{ itemID = 27911, minDifficulty = "Heroic" }, --Epoch's Whispering Cinch
			{ itemID = 28344, minDifficulty = "Heroic" }, --Wyrmfury Pauldrons
			{ itemID = 28233, minDifficulty = "Heroic" }, --Necklace of Resplendent Hope
			{ itemID = 27904, minDifficulty = "Heroic" }, --Resounding Ring of Glory
			{ itemID = 28227, minDifficulty = "Heroic" }, --Sparking Arcanite Ring
		},
		{
			{ itemID = 28223, minDifficulty = "Heroic" }, --Arcanist's Stone
			{ itemID = 28226, minDifficulty = "Heroic" }, --Timeslicer
			{ itemID = 28222, minDifficulty = "Heroic" }, --Reaver of the Infinites	
			{ itemID = 28191, minDifficulty = "Heroic" }, --Mana-Etched Vestments
			{ itemID = 28224, minDifficulty = "Heroic" }, --Wastewalker Helm
			{ itemID = 28401, minDifficulty = "Heroic" }, --Hauberk of Desolation
			{ itemID = 28225, minDifficulty = "Heroic" }, --Doomplate Warhelm
			{ itemID = 33847, minDifficulty = "Heroic" }, --Epoch Hunter's Head
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30589, minDifficulty = "Heroic" }, --Dazzling Chrysoprase
			{ itemID = 30591, minDifficulty = "Heroic" }, --Empowered Fire Opal
			{ itemID = 30590, minDifficulty = "Heroic" }, --Enduring Chrysoprase
			{ itemID = 24173, minDifficulty = "Heroic" }, --Design: Circlet of Arcane Might
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Trash Mobs", "=q5=" .. "Old Hillsbrad Foothills" },
			{ itemID = 25729 }, --Pattern: Stylin' Adventure Hat
			gap,
			{ icon = "INV_Box_01", name = color.WHITE.. "Don Carlos", "=q5=" .. "Old Hillsbrad Foothills" },
			{ itemID = 38506 }, --Don Carlos' Famous Hat
			{ itemID = 38329 }, --Don Carlos' Hat
			{ itemID = 38276 }, --Haliscan Brimmed Hat
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Trash Mobs", "=q5=" .. "The Black Morass" },
			{ itemID = 25730 }, --Pattern: Stylin' Jungle Hat
			gap,
			{ icon = "INV_Box_01", name = color.WHITE.. "Thomas Yance", "=q5=" .. "Old Hillsbrad Foothills" },
			{ itemID = 25725 },
			gap,
			{ icon = "INV_Box_01", name = color.WHITE.. "Aged Dalaran Wizard", "=q5=" .. "Old Hillsbrad Foothills" },
			{ itemID = 22539 },
		},
	}
}





-----------------------------------------
---Caverns of Time: The Black Morass ---
-----------------------------------------

AtlasLoot_Data["CoTBlackMorass"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Caverns of Time" .. ": " .. "The Black Morass",
	DisplayName = "The Black Morass",
	Type = "BCDungeon",
	Map = "CoTBlackMorass",
	{
		Name = "Chrono Lord Deja",
		{
			{ itemID = 27988 }, --Burnoose of Shifting Ages
			{ itemID = 27994 }, --Mantle of Three Terrors
			{ itemID = 27995 }, --Sun-Gilded Shouldercaps
			{ itemID = 27993 }, --Mask of Inner Fire
			{ itemID = 27996 }, --Ring of Spiritual Precision
			{ itemID = 27987 }, --Melmorta's Twilight Longbow
			{ itemID = 29675 }, --Pattern: Arcane Armor Kit
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			gap,
			{ itemID = 30558 }, --Glimmering Fire Opal
			{ itemID = 30556 }, --Glinting Fire Opal
			{ itemID = 30555 }, --Glowing Tanzanite
		},
	},
	{
		Name = "Temporus",
		{
			{ itemID = 28185 }, --Khadgar's Kilt of Abjuration
			{ itemID = 28186 }, --Laughing Skull Battle-Harness
			{ itemID = 28034 }, --Hourglass of the Unraveller
			{ itemID = 28187 }, --Star-Heart Lamp
			{ itemID = 28184 }, --Millennium Blade
			{ itemID = 28033 }, --Epoch-Mender
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30558, minDifficulty = "Heroic" }, --Glimmering Fire Opal
			{ itemID = 30556, minDifficulty = "Heroic" }, --Glinting Fire Opal
			{ itemID = 30555, minDifficulty = "Heroic" }, --Glowing Tanzanite
		},
	},
	{
		Name = "Aeonus",
		{
			{ itemID = 28193 }, --Mana-Etched Crown
			{ itemID = 27509 }, --Handgrips of Assassination
			{ itemID = 27873 }, --Moonglade Pants
			{ itemID = 28192 }, --Helm of Desolation
			{ itemID = 27977 }, --Legplates of the Bold
			{ itemID = 27839 }, --Legplates of the Righteous
			{ itemID = 28206 }, --Cowl of the Guiltless
			{ itemID = 28194 }, --Primal Surge Bracers
			{ itemID = 28207 }, --Pauldrons of the Crimson Flight
			{ itemID = 28190 }, --Scarab of the Infinite Cycle
			{ itemID = 28189 }, --Latro's Shifting Sword
			{ itemID = 28188 }, --Bloodfire Greatstaff
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30558, minDifficulty = "Heroic" }, --Glimmering Fire Opal
			{ itemID = 30556, minDifficulty = "Heroic" }, --Glinting Fire Opal
			{ itemID = 30555, minDifficulty = "Heroic" }, --Glowing Tanzanite
			gap,
			{ itemID = 30531, minDifficulty = "Heroic" }, --Breeches of the Occultist
			{ itemID = 29247, minDifficulty = "Heroic" }, --Girdle of the Deathdealer
			{ itemID = 29253, minDifficulty = "Heroic" }, --Girdle of Valorous Deeds
			{ itemID = 29356, minDifficulty = "Heroic" }, --Quantum Blade
			{ itemID = 33858, minDifficulty = "Heroic" }, --Aeonus's Hourglass
		},
	}
}

-------------------------------------
---Caverns of Time: Hyjal Summit ---
-------------------------------------

AtlasLoot_Data["CoTHyjal"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Caverns of Time" .. ": " .. "Hyjal Summit",
	DisplayName = "Hyjal Summit",
	Type = "BCRaid",
	Map = "CoTHyjal",
	{
		Name = "Rage Winterchill",
		WebID = {17767,"npc"},
		{
			{ itemID = 30871 }, --Bracers of Martyrdom
			{ itemID = 30870 }, --Cuffs of Devastation
			{ itemID = 30863 }, --Deadly Cuffs
			{ itemID = 30868 }, --Rejuvenating Bracers
			{ itemID = 30864 }, --Bracers of the Pathfinder
			{ itemID = 30869 }, --Howling Wind Bracers
			{ itemID = 30873 }, --Stillwater Boots
			{ itemID = 30866 }, --Blood-stained Pauldrons
			{ itemID = 30862 }, --Blessed Adamantite Bracers
			{ itemID = 30861 }, --Furious Shackles
			{ itemID = 12311 }, --Boneclad Girdle
			{ itemID = 32459 }, --Time-Phased Phylactery
			{ itemID = 30865 }, --Tracker's Blade
			{ itemID = 30872 }, --Chronicle of Dark Secrets
			{ itemID = 30891 }, --Black Featherlight Boots
			{ itemID = 30914 }, --Belt of the Crescent Moon
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 61196, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Anetheron",
		WebID = {17808,"npc"},
		{
			{ itemID = 30884 }, --Hatefury Mantle
			{ itemID = 30888 }, --Anetheron's Noose
			{ itemID = 30885 }, --Archbishop's Slippers
			{ itemID = 30879 }, --Don Alejandro's Money Belt
			{ itemID = 30886 }, --Enchanted Leather Sandals
			{ itemID = 30887 }, --Golden Links of Restoration
			{ itemID = 30880 }, --Quickstrider Moccasins
			{ itemID = 30878 }, --Glimmering Steel Mantle
			{ itemID = 12306 }, --Mantle of Glimmering Dreams
			{ itemID = 12307 }, --Dreadforge Pauldrons
			{ itemID = 30874 }, --The Unbreakable Will
			{ itemID = 30881 }, --Blade of Infamy
			{ itemID = 30883 }, --Pillar of Ferocity
			{ itemID = 30882 }, --Bastion of Light
			{ itemID = 30916 }, --Leggings of Channeled Elements
			{ itemID = 30919 }, --Valestalker Girdle
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 61287, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Kaz'rogal",
		WebID = {17888,"npc"},
		{
			{ itemID = 30889 }, --Kaz\'rogal\'s Hardened Heart"
			{ itemID = 30893 }, --Sun-touched Chain Leggings"
			{ itemID = 30894 }, --Blue Suede Shoes"
			{ itemID = 12310 }, --Felstrider Boots
			{ itemID = 30895 }, --Angelista\'s Sash"
			{ itemID = 30898 }, --Shady Dealer\'s Pantaloons"
			{ itemID = 30900 }, --Bow-stitched Leggings"
			{ itemID = 30915 }, --Belt of Seething Fury"
			{ itemID = 30918 }, --Hammer of Atonement"
			gap,
			{ itemID = 31092, lootTable = {"T6HAND","Token"} },
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
	},
	{
		Name = "Azgalor",
		WebID = {17842,"npc"},
		{
			{ itemID = 30892 }, --Beast-tamer\'s Shoulders"
			{ itemID = 30896 }, --Glory of the Defender"
			{ itemID = 30897 }, --Girdle of Hope"
			{ itemID = 30899 }, --Don Rodrigo\'s Poncho"
			{ itemID = 30901 }, --Boundless Agony"
			{ itemID = 30917 }, --Razorfury Mantle"
			{ itemID = 12308 }, --Infernal Stalker’s Hauberk
			{ itemID = 12309 }, --Plates of Eternal Fury
		},
		{
			{ itemID = 31098, lootTable = {"T6LEGS","Token"} }, --Leggings of the Forgotten Conqueror
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 61289, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Archimonde",
		WebID = {17968,"npc"},
		{
			{ itemID = 30913 }, --Robes of Rhonin
			{ itemID = 30912 }, --Leggings of Eternity
			{ itemID = 30905 }, --Midnight Chestguard
			{ itemID = 30907 }, --Mail of Fevered Pursuit
			{ itemID = 30904 }, --Savior's Grasp
			{ itemID = 30903 }, --Legguards of Endless Rage
			{ itemID = 30911 }, --Scepter of Purification
			{ itemID = 30910 }, --Tempest of Chaos
			{ itemID = 30902 }, --Cataclysm's Edge
			{ itemID = 30908 }, --Apostle of Argus
			{ itemID = 30909 }, --Antonidas's Aegis of Rapt Concentration
			{ itemID = 30906 }, --Bristleblitz Striker
			{ itemID = 12387 }, --Signet of Shattered Valor
			{ itemID = 12386 }, --Ring of the Stormborn
			{ itemID = 12313 }, --The Defiler's Cudgel
		},
		{
			{ itemID = 31097, lootTable = {"T6HEAD","Token"} }, --Helm of the Forgotten Conqueror
			gap,
			{ itemID = 450009, desc = "Quest Requirements", contentsPreview = {{450009},{450010},{34334}}}, --The String of Time
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 61557, droprate = "1%" }, --Pet Sigil
			{ itemID = 1001620 },
		},
	},
	{
		Name = "Chromius",
		WebID = {92179,"npc"},
		{
			{ itemID = 15828 }, --Final Countdown Bands
			{ itemID = 15831 }, --Girdle of Falling Sand
			{ itemID = 15898 }, --Hourglass Casing
			{ itemID = 15835 }, --Time Reaver's Gown
			{ itemID = 15840 }, --Timewaker's Treads
			{ itemID = 15896 }, --Cloak of the Final Hour
			{ itemID = 15834 }, --Aetherflux Shroud
			{ itemID = 15839 }, --Charm of the Chronomender
			{ itemID = 15899 }, --Amulet of Futures Past
			{ itemID = 15838 }, --Flickering Amulet
			{ itemID = 15836 }, --Pendant of the Evil Twin
			{ itemID = 15830 }, --Infinite Scale Talisman
			{ itemID = 18764 }, --Echo of Eons
			{ itemID = 15041 }, --Key of Time
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
	},
	{
		Name = "Trash Mobs".." - Items",
		{
			{ itemID = 32590 }, --Nethervoid Cloak
			{ itemID = 34010 }, --Pepe's Shroud of Pacification
			{ itemID = 32609 }, --Boots of the Divine Light
			{ itemID = 32592 }, --Chestguard of Relentless Storms
			{ itemID = 32591 }, --Choker of Serrated Blades
			{ itemID = 32589 }, --Hellfire-Encased Pendant
			{ itemID = 34009 }, --Hammer of Judgement
			{ itemID = 32946 }, --Claw of Molten Fury
			{ itemID = 32945 }, --Fist of Molten Fury
			{ itemID = 14986 },
			{ itemID = 32428 }, --Heart of Darkness
			{ itemID = 32897 }, --Mark of the Illidari
			{ itemID = 32227 }, --Crimson Spinel
			{ itemID = 32228 }, --Empyrean Sapphire
			{ itemID = 32229 }, --Lionseye
			{ itemID = 32230 }, --Shadowsong Amethyst
			{ itemID = 32231 }, --Pyrestone
			{ itemID = 32249 }, --Seaspray Emerald
		},
	},
	scaleOfSandsRings,
	{
		Name = "Crafting Recipe Drops Page 1",
		{
			{ itemID = 15315 }, --Design: Purified Shadowsong Amethyst
			{ itemID = 32274 }, --Design: Bold Crimson Spinel
			{ itemID = 32277 }, --Design: Delicate Crimson Spinel
			{ itemID = 32281 }, --Design: Teardrop Crimson Spinel
			{ itemID = 32282 }, --Design: Runed Crimson Spinel
			{ itemID = 32283 }, --Design: Bright Crimson Spinel
			{ itemID = 32284 }, --Design: Subtle Crimson Spinel
			{ itemID = 32285 }, --Design: Flashing Crimson Spinel
			{ itemID = 32286 }, --Design: Solid Empyrean Sapphire
			{ itemID = 32287 }, --Design: Sparkling Empyrean Sapphire
			{ itemID = 32288 }, --Design: Lustrous Empyrean Sapphire
			{ itemID = 32289 }, --Design: Stormy Empyrean Sapphire
			{ itemID = 32290 }, --Design: Brilliant Lionseye
			{ itemID = 32291 }, --Design: Smooth Lionseye
			{ itemID = 32292 }, --Design: Rigid Lionseye
			{ itemID = 32293 }, --Design: Gleaming Lionseye
			{ itemID = 32294 }, --Design: Thick Lionseye
			{ itemID = 32295 }, --Design: Mystic Lionseye
			{ itemID = 32296 }, --Design: Great Lionseye
			{ itemID = 32297 }, --Design: Sovereign Shadowsong Amethyst
			{ itemID = 32298 }, --Design: Shifting Shadowsong Amethyst
			{ itemID = 32299 }, --Design: Balanced Shadowsong Amethyst
			{ itemID = 32300 }, --Design: Infused Shadowsong Amethyst
			{ itemID = 32301 }, --Design: Glowing Shadowsong Amethyst
			{ itemID = 32302 }, --Design: Royal Shadowsong Amethyst
			{ itemID = 32303 }, --Design: Inscribed Pyrestone
			{ itemID = 32304 }, --Design: Potent Pyrestone
			{ itemID = 32305 }, --Design: Luminous Pyrestone
			{ itemID = 32306 }, --Design: Glinting Pyrestone
			{ itemID = 32307 }, --Design: Veiled Pyrestone
		},
	},
	{
		Name = "Crafting Recipe Drops Page 2",
		{
			{ itemID = 32308 }, --Design: Wicked Pyrestone
			{ itemID = 32309 }, --Design: Enduring Seaspray Emerald
			{ itemID = 32310 }, --Design: Radiant Seaspray Emerald
			{ itemID = 32311 }, --Design: Dazzling Seaspray Emerald
			{ itemID = 32312 }, --Design: Jagged Seaspray Emerald
			{ itemID = 35762 }, --Design: Reckless Pyrestone
			{ itemID = 35763 }, --Design: Quick Lionseye
			{ itemID = 35764 }, --Design: Steady Seaspray Emerald
			{ itemID = 35765 }, --Design: Forceful Seaspray Emerald
			{ itemID = 884039 }, --Design: Fractured Crimson Spinel
			{ itemID = 32736 }, --Plans: Swiftsteel Bracers
			{ itemID = 32739 }, --Plans: Dawnsteel Shoulders
			{ itemID = 32745 }, --Pattern: Shoulderpads of Renewed Life
			{ itemID = 32746 }, --Pattern: Swiftstrike Bracers
			{ itemID = 32748 }, --Pattern: Bindings of Lightning Reflexes
			{ itemID = 32751 }, --Pattern: Living Earth Shoulders
			{ itemID = 32752 }, --Pattern: Swiftheal Wraps
			{ itemID = 32755 }, --Pattern: Mantle of Nimble Thought
		},
	}
}

------------------------------------------
---Coilfang Reservoir: The Slave Pens ---
------------------------------------------

AtlasLoot_Data["CFRSlavePens"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Coilfang Reservoir" .. ": " .. "The Slave Pens",
	DisplayName = "The Slave Pens",
	Type = "BCDungeon",
	Map = "CFRTheSlavePens",
	{
		Name = "Mennu the Betrayer",
		{
			{ itemID = 24359, groupID = 1, refLootEntry = 17941 }; --Princely Reign Leggings
			{ itemID = 24361, groupID = 1, refLootEntry = 17941 }; --Spellfire Longsword
			{ itemID = 24360, groupID = 1, refLootEntry = 17941 }; --Tracker's Belt
			{ itemID = 24357, groupID = 1, refLootEntry = 17941 }; --Vest of Living Lightning
			{ itemID = 24356, groupID = 1, refLootEntry = 17941 }; --Wastewalker Shiv
			gap,
			{ itemID = 29674 }, --Pattern: Nature Armor Kit
			gap,
			{ itemID = 2061629, groupID = 1, refLootEntry = 2061629 }; --Betrayer's Guise
			{ itemID = 2066421, groupID = 1, refLootEntry = 2061629 }; --Deceiver's Cord
			{ itemID = 2068507, groupID = 1, refLootEntry = 2061629 }; --Doubter's Leggings
			{ itemID = 2076299, groupID = 1, refLootEntry = 2061629 }; --Faithless Mace
			{ itemID = 2064519, groupID = 1, refLootEntry = 2061629 }; --Traitor's Vest
			{ itemID = 2072940, groupID = 1, refLootEntry = 2061629 }; --Treachery's Grasp
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30604, minDifficulty = "Heroic" }, --Resplendent Fire Opal
			{ itemID = 30605, minDifficulty = "Heroic" }, --Vivid Chrysoprase
			{ itemID = 30603, minDifficulty = "Heroic" }, --Royal Tanzanite
			gap,
			{ itemID = 27542, minDifficulty = "Heroic" }, --Cord of Belief
			{ itemID = 27545, minDifficulty = "Heroic" }, --Mennu's Scaled Leggings
			{ itemID = 27541, minDifficulty = "Heroic" }, --Archery Belt of the Broken
			{ itemID = 27546, minDifficulty = "Heroic" }, --Traitor's Noose
			{ itemID = 27544, minDifficulty = "Heroic" }, --Totem of Spontaneous Regrowth
			{ itemID = 27543, minDifficulty = "Heroic" }, --Starlight Dagger
		},

	},
	{
		Name = "Rokmar the Crackler",
		{
			{ itemID = 24379, groupID = 1, refLootEntry = 17991 }; --Bogstrok Scale Cloak
			{ itemID = 24380, groupID = 1, refLootEntry = 17991 }; --Calming Spore Reed
			{ itemID = 24378, groupID = 1, refLootEntry = 17991 }; --Coilfang Hammer of Renewal
			{ itemID = 24381, groupID = 1, refLootEntry = 17991 }; --Coilfang Needler
			{ itemID = 24376, groupID = 1, refLootEntry = 17991 }; --Runed Fungalcap
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30604, minDifficulty = "Heroic" }, --Resplendent Fire Opal
			{ itemID = 30605, minDifficulty = "Heroic" }, --Vivid Chrysoprase
			{ itemID = 30603, minDifficulty = "Heroic" }, --Royal Tanzanite
			gap,
			{ itemID = 27550, minDifficulty = "Heroic" }, --Ironscale War Cloak
			{ itemID = 27547, minDifficulty = "Heroic" }, --Coldwhisper Cord
			{ itemID = 28124, minDifficulty = "Heroic" }, --Liar's Cord
			{ itemID = 27549, minDifficulty = "Heroic" }, --Wavefury Boots
			{ itemID = 27548, minDifficulty = "Heroic" }, --Girdle of Many Blessings
			{ itemID = 27551, minDifficulty = "Heroic" }, --Skeletal Necklace of Battlerage
		},
	},
	{
		Name = "Quagmirran",
		{
			{ itemID = 24364, groupID = 1, refLootEntry = 17942 }; --Azureplate Greaves
			{ itemID = 24365, groupID = 1, refLootEntry = 17942 }; --Deft Handguards
			{ itemID = 24366, groupID = 1, refLootEntry = 17942 }; --Scorpid-Sting Mantle
			{ itemID = 24362, groupID = 1, refLootEntry = 17942 }; --Spore-Soaked Vaneer
			{ itemID = 24363, groupID = 1, refLootEntry = 17942 }; --Unscarred Breastplate
			gap,
			{ itemID = 27796, minDifficulty = "Heroic" }, --Mana-Etched Spaulders
			{ itemID = 27713, minDifficulty = "Heroic" }, --Pauldrons of Desolation
			{ itemID = 27742, minDifficulty = "Heroic" }, --Mage-Fury Girdle
			{ itemID = 27712, minDifficulty = "Heroic" }, --Shackles of Quagmirran
			{ itemID = 27800, minDifficulty = "Heroic" }, --Earthsoul Britches
			{ itemID = 28337, minDifficulty = "Heroic" }, --Breastplate of Righteous Fury
			{ itemID = 27672, minDifficulty = "Heroic" }, --Girdle of the Immovable
			{ itemID = 27740, minDifficulty = "Heroic" }, --Band of Ursol
		},
		{
			{ itemID = 27683, minDifficulty = "Heroic" }, --Quagmirran's Eye
			{ itemID = 27714, minDifficulty = "Heroic" }, --Swamplight Lantern
			{ itemID = 27673, minDifficulty = "Heroic" }, --Phosphorescent Blade
			{ itemID = 27741, minDifficulty = "Heroic" }, --Bleeding Hollow Warhammer
			{ itemID = 33821, minDifficulty = "Heroic" }, --The Heart of Quagmirran
			{ itemID = 29242, minDifficulty = "Heroic" }, --Boots of Blasphemy
			{ itemID = 30538, minDifficulty = "Heroic" }, --Midnight Legguards
			{ itemID = 32078, minDifficulty = "Heroic" }, --Pauldrons of Wild Magic
			{ itemID = 29349, minDifficulty = "Heroic" }, --Adamantine Chain of the Unbroken
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30604, minDifficulty = "Heroic" }, --Resplendent Fire Opal
			{ itemID = 30605, minDifficulty = "Heroic" }, --Vivid Chrysoprase
			{ itemID = 30603, minDifficulty = "Heroic" }, --Royal Tanzanite
		},
	}
}

------------------------------------------
---Coilfang Reservoir: The Steamvault ---
------------------------------------------

AtlasLoot_Data["CFRSteamvault"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Coilfang Reservoir" .. ": " .. "The Steamvault",
	DisplayName = "The Steamvault",
	Type = "BCDungeon",
	Map = "CFRTheSteamvault",
	{
		Name = "Hydromancer Thespia",
		{
			{ itemID = 27787, groupID = 1, refLootEntry = 17797 }; --Chestguard of No Remorse
			{ itemID = 27789, groupID = 1, refLootEntry = 17797 }; --Cloak of Whispering Shells
			{ itemID = 27508, groupID = 1, refLootEntry = 17797 }; --Incanter's Gloves
			{ itemID = 27783, groupID = 1, refLootEntry = 17797 }; --Moonrage Girdle
			{ itemID = 27784, groupID = 1, refLootEntry = 17797 }; --Scintillating Coral Band
			
			gap,
			{ itemID = 29673 }, --Pattern: Frost Armor Kit
			{ itemID = 30828 }, --Vial of Underworld Loam
			gap,
			{ itemID = 2076275, groupID = 1, refLootEntry = 2076275 }; --Riptide Staff of the Stormbinder
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30550, minDifficulty = "Heroic" }, --Sundered Chrysoprase
			{ itemID = 30551, minDifficulty = "Heroic" }, --Infused Fire Opal
			{ itemID = 30549, minDifficulty = "Heroic" }, --Shifting Tanzanite
		},
	},
	{
		Name = "Mekgineer Steamrigger",
		{
			{ itemID = 27793, groupID = 1, refLootEntry = 17796 }; --Earth Mantle Handwraps
			{ itemID = 27790, groupID = 1, refLootEntry = 17796 }; --Mask of Penance
			{ itemID = 27794, groupID = 1, refLootEntry = 17796 }; --Recoilless Rocket Ripper X-54
			{ itemID = 27791, groupID = 1, refLootEntry = 17796 }; --Serpentcrest Life-Staff
			{ itemID = 27792, groupID = 1, refLootEntry = 17796 }; --Steam-Hinge Chain of Valor		
			gap,
			{ itemID = 23887 }, --Schematic: Rocket Boots Xtreme
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30550, minDifficulty = "Heroic" }, --Sundered Chrysoprase
			{ itemID = 30551, minDifficulty = "Heroic" }, --Infused Fire Opal
			{ itemID = 30549, minDifficulty = "Heroic" }, --Shifting Tanzanite
		},
	},
	{
		Name = "Warlord Kalithresh",
		{
			{ itemID = 27874, groupID = 1, refLootEntry = 17798 }; --Beast Lord Leggings
			{ itemID = 27801, groupID = 1, refLootEntry = 17798 }; --Beast Lord Mantle
			{ itemID = 242552, groupID = 1, refLootEntry = 17798 }; --Breastplate of the Divine
			{ itemID = 242767, groupID = 1, refLootEntry = 17798 }; --Breastplate of the Just
			{ itemID = 28203, groupID = 1, refLootEntry = 17798 }; --Breastplate of the Righteous
			{ itemID = 27804, groupID = 1, refLootEntry = 17798 }; --Devilshark Cape
			{ itemID = 27806, groupID = 1, refLootEntry = 17798 }; --Fathomheart Gauntlets
			{ itemID = 27475, groupID = 1, refLootEntry = 17798 }; --Gauntlets of the Bold
			{ itemID = 242853, groupID = 1, refLootEntry = 17798 }; --Gauntlets of the Sentinel
			{ itemID = 244958, groupID = 1, refLootEntry = 17798 }; --Gauntlets of the Tides
			{ itemID = 27738, groupID = 1, refLootEntry = 17798 }; --Incanter's Pauldrons
			{ itemID = 27737, groupID = 1, refLootEntry = 17798 }; --Moonglade Shoulders
			{ itemID = 27805, groupID = 1, refLootEntry = 17798 }; --Ring of the Silver Hand
			{ itemID = 27795, groupID = 1, refLootEntry = 17798 }; --Sash of Serpentra
			{ itemID = 27510, groupID = 1, refLootEntry = 17798 }; --Tidefury Gauntlets
			{ itemID = 245878, groupID = 1, refLootEntry = 17798 }; --Verdant's Shoulders
			{ itemID = 27799, groupID = 1, refLootEntry = 17798 }; --Vermillion Robes of the Dominant
			gap,
			{ itemID = 24313 }, --Pattern: Battlecast Hood
			gap,
			{ itemID = 2063341, groupID = 1, refLootEntry = 2061802 }; --Aquamarine Garment
			{ itemID = 2078754, groupID = 1, refLootEntry = 2061802 }; --Coilfang Blade
			{ itemID = 2073099, groupID = 1, refLootEntry = 2061802 }; --Hydrograsp Gauntlets
			{ itemID = 2076276, groupID = 1, refLootEntry = 2061802 }; --Neptulon's Spear
			{ itemID = 2064782, groupID = 1, refLootEntry = 2061802 }; --Steamvault Chestguard
			{ itemID = 2061802, groupID = 1, refLootEntry = 2061802 }; --Tidal Mantle of the Warlord
			{ itemID = 2066632, groupID = 1, refLootEntry = 2061802 }; --Waistguard of the Depths
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30550, minDifficulty = "Heroic" }, --Sundered Chrysoprase
			{ itemID = 30551, minDifficulty = "Heroic" }, --Infused Fire Opal
			{ itemID = 30549, minDifficulty = "Heroic" }, --Shifting Tanzanite
			gap,
			{ itemID = 30543, minDifficulty = "Heroic" }, --Pontifex Kilt
			{ itemID = 29243, minDifficulty = "Heroic" }, --Wave-Fury Vambraces
			{ itemID = 29463, minDifficulty = "Heroic" }, --Amber Bands of the Aggressor
			{ itemID = 29351, minDifficulty = "Heroic" }, --Wrathtide Longbow
			{ itemID = 31721, minDifficulty = "Heroic" }, --Kalithresh's Trident
			{ itemID = 33827, minDifficulty = "Heroic" }, --The Warlord's Treatise
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 24159 }, --Design: Khorium Band of Frost
			{ itemID = 22533 }, --Formula: Enchant Bracer - Fortitude
			{ itemID = 24367 }, --Orders from Lady Vashj
			{ itemID = 24368 }, --Coilfang Armaments
			{ icon = "INV_Box_01", name = color.WHITE.. "Second Fragment Guardian", "=q5=" .. "The Steamvault" },
			{ itemID = 24487 }, --Second Key Fragment
		},
	}
}

----------------------------------------
---Coilfang Reservoir: The Underbog ---
----------------------------------------

AtlasLoot_Data["CFRUnderbog"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Coilfang Reservoir" .. ": " .. "The Underbog",
	DisplayName = "The Underbog",
	Type = "BCDungeon",
	Map = "CFRTheUnderbog",
	{
		Name = "Hungarfen",
		{
			{ itemID = 24451, groupID = 1, refLootEntry = 17770 }; --Lykul Bloodbands
			{ itemID = 24450, groupID = 1, refLootEntry = 17770 }; --Manaspark Gloves
			{ itemID = 27631, groupID = 1, refLootEntry = 17770 }; --Needle Shrike
			{ itemID = 24452, groupID = 1, refLootEntry = 17770 }; --Starlight Gauntlets
			{ itemID = 24413, groupID = 1, refLootEntry = 17770 }; --Totem of the Thunderhead
			gap,
			{ itemID = 27746, minDifficulty = "Heroic" }, --Arcanium Signet Bands
			{ itemID = 27745, minDifficulty = "Heroic" }, --Hungarhide Gauntlets
			{ itemID = 27743, minDifficulty = "Heroic" }, --Girdle of Living Flame
			{ itemID = 27748, minDifficulty = "Heroic" }, --Cassock of the Loyal
			{ itemID = 27744, minDifficulty = "Heroic" }, --Idol of Ursoc
			{ itemID = 27747, minDifficulty = "Heroic" }, --Boggspine Knuckles
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30606, minDifficulty = "Heroic" }, --Lambent Chrysoprase
			{ itemID = 30607, minDifficulty = "Heroic" }, --Splendid Fire Opal
			{ itemID = 30608, minDifficulty = "Heroic" }, --Radiant Chrysoprase
		},
	},
	{
		Name = "Ghaz'an",
		{
			{ itemID = 24459, groupID = 1, refLootEntry = 18105 }; --Cloak of Healing Rays
			{ itemID = 24461, groupID = 1, refLootEntry = 18105 }; --Hatebringer
			{ itemID = 24462, groupID = 1, refLootEntry = 18105 }; --Luminous Pearls of Insight
			{ itemID = 24458, groupID = 1, refLootEntry = 18105 }; --Studded Girdle of Virtue
			{ itemID = 24460, groupID = 1, refLootEntry = 18105 }; --Talisman of Tenacity
			gap,
			{ itemID = 27760, minDifficulty = "Heroic" }, --Dunewind Sash
			{ itemID = 27759, minDifficulty = "Heroic" }, --Headdress of the Tides
			{ itemID = 27755, minDifficulty = "Heroic" }, --Girdle of Gallantry
			{ itemID = 27758, minDifficulty = "Heroic" }, --Hydra-fang Necklace
			{ itemID = 27761, minDifficulty = "Heroic" }, --Ring of the Shadow Deeps
			{ itemID = 27757, minDifficulty = "Heroic" }, --Greatstaff of the Leviathan
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30606, minDifficulty = "Heroic" }, --Lambent Chrysoprase
			{ itemID = 30607, minDifficulty = "Heroic" }, --Splendid Fire Opal
			{ itemID = 30608, minDifficulty = "Heroic" }, --Radiant Chrysoprase
		},
	},
	{
		Name = "Swamplord Musel'ek",
		{
			{ itemID = 24454, groupID = 1, refLootEntry = 17826 }; --Cloak of Enduring Swiftness
			{ itemID = 24456, groupID = 1, refLootEntry = 17826 }; --Greaves of the Iron Guardian
			{ itemID = 24457, groupID = 1, refLootEntry = 17826 }; --Truth Bearer Shoulderguards
			{ itemID = 24455, groupID = 1, refLootEntry = 17826 }; --Tunic of the Nightwatcher
			{ itemID = 24453, groupID = 1, refLootEntry = 17826 }; --Zangartooth Shortblade
			gap,
			{ itemID = 27764, minDifficulty = "Heroic" }, --Hands of the Sun
			{ itemID = 27763, minDifficulty = "Heroic" }, --Crown of the Forest Lord
			{ itemID = 27765, minDifficulty = "Heroic" }, --Armwraps of Disdain
			{ itemID = 27766, minDifficulty = "Heroic" }, --Swampstone Necklace
			{ itemID = 27762, minDifficulty = "Heroic" }, --Weathered Band of the Swamplord
			{ itemID = 27767, minDifficulty = "Heroic" }, --Bogreaver
			gap,

		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30606, minDifficulty = "Heroic" }, --Lambent Chrysoprase
			{ itemID = 30607, minDifficulty = "Heroic" }, --Splendid Fire Opal
			{ itemID = 30608, minDifficulty = "Heroic" }, --Radiant Chrysoprase
			gap,
			{ itemID = 2066521, groupID = 1, refLootEntry = 2061716 }; --Belt of the Broken Marsh
			{ itemID = 2071767, groupID = 1, refLootEntry = 2061716 }; --Bindings of the Lost Draenei
			{ itemID = 2068616, groupID = 1, refLootEntry = 2061716 }; --Bogstalker Leggings
			{ itemID = 2078209, groupID = 1, refLootEntry = 2061716 }; --Bow of the Twisted Underbog
			{ itemID = 2073023, groupID = 1, refLootEntry = 2061716 }; --Clawhandler's Grips
			{ itemID = 2070701, groupID = 1, refLootEntry = 2061716 }; --Fenstrider Boots
			{ itemID = 2076287, groupID = 1, refLootEntry = 2061716 }; --Fist of the Nether Swamp
			{ itemID = 2061716, groupID = 1, refLootEntry = 2061716 }; --Musel'ek's Mire Mantle
			{ itemID = 2063301, groupID = 1, refLootEntry = 2061716 }; --Swamplord's Corrupted Jerkin
		},
	},
	{
		Name = "The Black Stalker",
		{
			{ itemID = 24463, groupID = 1, refLootEntry = 17882 }; --Pauldrons of Brute Force
			{ itemID = 24481, groupID = 1, refLootEntry = 17882 }; --Robes of the Augurer
			{ itemID = 24465, groupID = 1, refLootEntry = 17882 }; --Shamblehide Chestguard
			{ itemID = 24466, groupID = 1, refLootEntry = 17882 }; --Skulldugger's Leggings
			{ itemID = 24464, groupID = 1, refLootEntry = 17882 }; --The Stalker's Fangs
			gap,
			{ itemID = 29265 }, --Barkchip Boots
			{ itemID = 30541 }, --Stormsong Kilt
			{ itemID = 32081 }, --Eye of the Stalker
			{ itemID = 29350 }, --The Black Stalk
			{ itemID = 27781 }, --Demonfang Ritual Helm
			{ itemID = 27768 }, --Oracle Belt of Timeless Mystery
			{ itemID = 27938 }, --Savage Mask of the Lynx Lord
			{ itemID = 27773 }, --Barbaric Legstraps
		},
		{
			{ itemID = 27779 }, --Bone Chain Necklace
			{ itemID = 27780 }, --Ring of Fabled Hope
			{ itemID = 27896 }, --Alembic of Infernal Power
			{ itemID = 27770 }, --Argussian Compass
			{ itemID = 27907 }, --Mana-Etched Pantaloons
			{ itemID = 27771 }, --Doomplate Shoulderguards
			{ itemID = 27769 }, --Endbringer
			{ itemID = 27772 }, --Stormshield of Renewal
			{ itemID = 24248 }, --Brain of the Black Stalker
			{ itemID = 33826 }, --Black Stalker Egg
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30606, minDifficulty = "Heroic" }, --Lambent Chrysoprase
			{ itemID = 30607, minDifficulty = "Heroic" }, --Splendid Fire Opal
			{ itemID = 30608, minDifficulty = "Heroic" }, --Radiant Chrysoprase
		}
	},
}
------------------------------------------------
---Coilfang Reservoir: Serpentshrine Cavern ---
------------------------------------------------

AtlasLoot_Data["CFRSerpentshrine"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Coilfang Reservoir" .. ": " .. "Serpentshrine Cavern",
	DisplayName = "Serpentshrine Cavern",
	Type = "BCRaid",
	Map = "CFRSerpentshrineCavern",
	{
		Name = "Hydross the Unstable",
		WebID = {21216,"npc"},
		{
			{ itemID = 30047, groupID = 1, refLootEntry = 21216 }; --Blackfathom Warbands
			{ itemID = 30050, groupID = 1, refLootEntry = 21216 }; --Boots of the Shifting Nightmare
			{ itemID = 30048, groupID = 1, refLootEntry = 21216 }; --Brighthelm of Justice
			{ itemID = 30056, groupID = 1, refLootEntry = 21216 }; --Robe of Hateful Echoes
			{ itemID = 32516, groupID = 1, refLootEntry = 21216 }; --Wraps of Purification
			{ itemID = 30053, groupID = 2, refLootEntry = 21216 }; --Pauldrons of the Wardancer
			{ itemID = 30054, groupID = 2, refLootEntry = 21216 }; --Ranger-General's Chestguard
			{ itemID = 30055, groupID = 2, refLootEntry = 21216 }; --Shoulderpads of the Stranger
			gap,
			{ itemID = 600878, minDifficulty = "Heroic" }, --Elemental Lodestone: Hydross the Unstable
		},
		{
			{ itemID = 30052, groupID = 2, refLootEntry = 21216 }; --Ring of Lethality
			{ itemID = 33055, groupID = 2, refLootEntry = 21216 }; --Band of Vile Aggression
			{ itemID = 12149, groupID = 2, refLootEntry = 21216 }; --Ring of Unstable Currents
			{ itemID = 30664, groupID = 2, refLootEntry = 21216 }; --Living Root of the Wildheart
			{ itemID = 30629, groupID = 2, refLootEntry = 21216 }; --Scarab of Displacement
			{ itemID = 30049, groupID = 1, refLootEntry = 21216 }; --Fathomstone
			{ itemID = 30051, groupID = 1, refLootEntry = 21216 }; --Idol of the Crescent Goddess
			gap,
			{ itemID = 816254, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Cloak - Crushing Wave
			gap,
			{ itemID = 63338, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "The Lurker Below",
		{
			{ itemID = 30064, groupID = 1, refLootEntry = 21217 }; --Cord of Screaming Terrors
			{ itemID = 30065, groupID = 1, refLootEntry = 21217 }; --Glowing Breastplate of Truth
			{ itemID = 30062, groupID = 1, refLootEntry = 21217 }; --Grove-Bands of Remulos
			{ itemID = 30066, groupID = 1, refLootEntry = 21217 }; --Tempest-Strider Boots
			{ itemID = 30067, groupID = 1, refLootEntry = 21217 }; --Velvet Boots of the Guardian
			{ itemID = 30060, groupID = 2, refLootEntry = 21217 }; --Boots of Effortless Striking
			{ itemID = 12126, groupID = 2, refLootEntry = 21217 }; --Bracers of Abyssal Might
			{ itemID = 30057, groupID = 2, refLootEntry = 21217 }; --Bracers of Eradication
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			gap,
			{ itemID = 12165, groupID = 2, refLootEntry = 21217 }; --Amulet of Tidal Fury
			{ itemID = 30059, groupID = 2, refLootEntry = 21217 }; --Choker of Animalistic Fury
			{ itemID = 30061, groupID = 2, refLootEntry = 21217 }; --Ancestral Ring of Conquest
			{ itemID = 33054, groupID = 1, refLootEntry = 21217 }; --The Seal of Danzalar
			{ itemID = 30665, groupID = 1, refLootEntry = 21217 }; --Earring of Soulful Meditation
			{ itemID = 30063, groupID = 1, refLootEntry = 21217 }; --Libram of Absolute Truth
			{ itemID = 30058, groupID = 2, refLootEntry = 21217 }; --Mallet of the Tides


		},
	},
	{
		Name = "Leotheras the Blind",
		WebID = {21215,"npc"},
		{
			{ itemID = 12128, groupID = 2, refLootEntry = 21215 }; --Boots of Inner Torment
			{ itemID = 30097, groupID = 2, refLootEntry = 21215 }; --Coral-Barbed Shoulderpads
			{ itemID = 12129, groupID = 2, refLootEntry = 21215 }; --Dreadstep Sabatons
			{ itemID = 30095, groupID = 2, refLootEntry = 21215 }; --Fang of the Leviathan
			{ itemID = 30096, groupID = 2, refLootEntry = 21215 }; --Girdle of the Invulnerable
			{ itemID = 30092, groupID = 2, refLootEntry = 21215 }; --Orca-Hide Boots
			{ itemID = 30091, groupID = 2, refLootEntry = 21215 }; --True-Aim Stalker Bands
			{ itemID = 30627, groupID = 2, refLootEntry = 21215 }; --Tsunami Talismanic
		},
		{
			{ itemID = 30240, lootTable = {"T5HAND","Token"} }, --Gloves of the Vanquished Defender
			gap,
			{ itemID = 63326, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Fathom-Lord Karathress",
		WebID = {21214,"npc"},
		{
			{ itemID = 12154, groupID = 2, refLootEntry = 21214 }; --Belt of Submerged Might
			{ itemID = 30101, groupID = 2, refLootEntry = 21214 }; --Bloodsea Brigand's Vest
			{ itemID = 30663, groupID = 2, refLootEntry = 21214 }; --Fathom-Brooch of the Tidewalker
			{ itemID = 30099, groupID = 2, refLootEntry = 21214 }; --Frayed Tether of the Drowned
			{ itemID = 12125, groupID = 2, refLootEntry = 21214 }; --Maul of the Bloodied Depths
			{ itemID = 30626, groupID = 2, refLootEntry = 21214 }; --Sextant of Unstable Currents
			{ itemID = 30100, groupID = 2, refLootEntry = 21214 }; --Soul-Strider Boots
			{ itemID = 30090, groupID = 2, refLootEntry = 21214 }; --World Breaker
		},
		{
			{ itemID = 30246, lootTable = {"T5LEGS","Token"} }, --Leggings of the Vanquished Defender
			gap,
			{ itemID = 63325, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Morogrim Tidewalker",
		WebID = {21213,"npc"},
		{
			{ itemID = 33058, groupID = 1, refLootEntry = 21213 }; --Band of the Vigilant
			{ itemID = 30075, groupID = 1, refLootEntry = 21213 }; --Gnarled Chestpiece of the Ancients
			{ itemID = 30079, groupID = 1, refLootEntry = 21213 }; --Illidari Shoulderpads
			{ itemID = 30080, groupID = 1, refLootEntry = 21213 }; --Luminescent Rod of the Naaru
			{ itemID = 30084, groupID = 1, refLootEntry = 21213 }; --Pauldrons of the Argent Sentinel
			{ itemID = 30008, groupID = 1, refLootEntry = 21213 }; --Pendant of the Lost Ages
			{ itemID = 30720, groupID = 1, refLootEntry = 21213 }; --Serpent-Coil Braid
			{ itemID = 30068, groupID = 2, refLootEntry = 21213 }; --Girdle of the Tidal Call
			{ itemID = 30085, groupID = 2, refLootEntry = 21213 }; --Mantle of the Tireless Tracker
			{ itemID = 12193, groupID = 2, refLootEntry = 21213 }; --Maul of Glacial Waves
			{ itemID = 30098, groupID = 2, refLootEntry = 21213 }; --Razor-Scale Battlecloak
			{ itemID = 30083, groupID = 2, refLootEntry = 21213 }; --Ring of Sundered Souls
			{ itemID = 30082, groupID = 2, refLootEntry = 21213 }; --Talon of Azshara
			{ itemID = 30081, groupID = 2, refLootEntry = 21213 }; --Warboots of Obliteration
		},
	},
	{
		Name = "Lady Vashj",
		WebID = {21212,"npc"},
		{
			{ itemID = 30110, groupID = 3, refLootEntry = 21212 }; --Coral Band of the Revived
			{ itemID = 30112, groupID = 3, refLootEntry = 21212 }; --Glorious Gauntlets of Crestfall
			{ itemID = 30621, groupID = 3, refLootEntry = 21212 }; --Prism of Inner Calm
			{ itemID = 30109, groupID = 3, refLootEntry = 21212 }; --Ring of Endless Coils
			{ itemID = 30111, groupID = 3, refLootEntry = 21212 }; --Runetotem's Mantle
			{ itemID = 30107, groupID = 3, refLootEntry = 21212 }; --Vestments of the Sea-Witch
			{ itemID = 30106, groupID = 4, refLootEntry = 21212 }; --Belt of One-Hundred Deaths
			{ itemID = 30104, groupID = 4, refLootEntry = 21212 }; --Cobra-Lash Boots
			{ itemID = 30102, groupID = 4, refLootEntry = 21212 }; --Krakken-Heart Breastplate
			{ itemID = 12148, groupID = 4, refLootEntry = 21212 }; --Ring of Tidal Precision
		},
		{
			{ itemID = 30108, groupID = 3, refLootEntry = 21212 }; --Lightfathom Scepter
			{ itemID = 12194, groupID = 3, refLootEntry = 21212 }; --Tideforged Maul
			{ itemID = 30103, groupID = 4, refLootEntry = 21212 }; --Fang of Vashj
			{ itemID = 30105, groupID = 4, refLootEntry = 21212 }; --Serpent Spine Longbow
			{ itemID = 12151, groupID = 4, refLootEntry = 21212 }; --Tidebound Bows
			gap,
			{ itemID = 30243, lootTable = {"T5HEAD","Token"} }, --Helm of the Vanquished Defender
			gap,
			{ itemID = 29906 }, --Vashj's Vial Remnant
			{ itemID = 450000 }, --Intact Vial of Lady Vashj
			gap,
			{ itemID = 63320, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 30027 }, --Boots of Courage Unending
			{ itemID = 30022 }, --Pendant of the Perilous
			{ itemID = 30620 }, --Spyglass of the Hidden Fleet
			{ itemID = 30023 }, --Totem of the Maelstrom
			{ itemID = 30021 }, --Wildfury Greatstaff
			{ itemID = 30025 }, --Serpentshrine Shuriken
			{ itemID = 44831 }, --Mmrgrg glm Nuubs
			gap,
			{ itemID = 30324 }, --Plans: Red Havoc Boots
			{ itemID = 30322 }, --Plans: Red Belt of Battle
			{ itemID = 30323 }, --Plans: Boots of the Protector
			{ itemID = 30321 }, --Plans: Belt of the Guardian
		},
		{
			{ itemID = 30280 }, --Pattern: Belt of Blasting
			{ itemID = 30282 }, --Pattern: Boots of Blasting
			{ itemID = 30283 }, --Pattern: Boots of the Long Road
			{ itemID = 30281 }, --Pattern: Belt of the Long Road
			{ itemID = 30308 }, --Pattern: Hurricane Boots
			{ itemID = 30304 }, --Pattern: Monsoon Belt
			{ itemID = 30305 }, --Pattern: Boots of Natural Grace
			{ itemID = 30307 }, --Pattern: Boots of the Crimson Hawk
			{ itemID = 30306 }, --Pattern: Boots of Utter Darkness
			{ itemID = 30301 }, --Pattern: Belt of Natural Power
			{ itemID = 30303 }, --Pattern: Belt of the Black Eagle
			{ itemID = 30302 }, --Pattern: Belt of Deep Shadow
			gap,
			{ itemID = 30183 }, --Nether Vortex
			{ itemID = 32897 }, --Mark of the Illidari
		},
	}
}

--------------------
---Gruul's Lair ---
--------------------

AtlasLoot_Data["GruulsLair"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Gruul's Lair",
	Type = "BCRaid",
	Map = "GruulsLair",
	{
		Name = "High King Maulgar",
		WebID = {18831,"npc"},
		{
			{ itemID = 12088, groupID = 3, refLootEntry = 19044 }; --Spinepiercer
			{ itemID = 28799, groupID = 2, refLootEntry = 18831 }; --Belt of Divine Inspiration
			{ itemID = 28795, groupID = 2, refLootEntry = 18831 }; --Bladespire Warbands
			{ itemID = 12116, groupID = 2, refLootEntry = 18831 }; --Blindeye's Insightful Ward
			{ itemID = 11680, groupID = 2, refLootEntry = 18831 }; --Boots of Converging Paths
			{ itemID = 28797, groupID = 2, refLootEntry = 18831 }; --Brute Cloak of the Ogre-Magi
			{ itemID = 12086, groupID = 2, refLootEntry = 18831 }; --Choker of Primal Wrath
			{ itemID = 12124, groupID = 2, refLootEntry = 18831 }; --Gar Maul
			{ itemID = 28800, groupID = 2, refLootEntry = 18831 }; --Hammer of the Naaru
			{ itemID = 28796, groupID = 2, refLootEntry = 18831 }; --Malefic Mask of the Shadows
			{ itemID = 28801, groupID = 2, refLootEntry = 18831 }; --Maulgar's Warhelm
			{ itemID = 12090, groupID = 2, refLootEntry = 18831 }; --Spellbreaker’s Edge
		},
		{
			{ itemID = 29764, lootTable = {"T4SHOULDER","Token"} }, --Pauldrons of the Fallen Defender
			gap,
			{ itemID = 816252, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Undaunted Might
			gap,
			{ itemID = 62311, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Gruul the Dragonkiller",
		WebID = {19044,"npc"},
		{
			{ itemID = 11639, groupID = 2, refLootEntry = 19044 }; --Cloak of Brutal Winds
			{ itemID = 28804, groupID = 2, refLootEntry = 19044 }; --Collar of Cho'gall
			{ itemID = 28803, groupID = 2, refLootEntry = 19044 }; --Cowl of Nature's Breath
			{ itemID = 28824, groupID = 2, refLootEntry = 19044 }; --Gauntlets of Martial Perfection
			{ itemID = 28827, groupID = 2, refLootEntry = 19044 }; --Gauntlets of the Dragonslayer
			{ itemID = 28828, groupID = 2, refLootEntry = 19044 }; --Gronn-Stitched Girdle
			{ itemID = 28822, groupID = 2, refLootEntry = 19044 }; --Teeth of Gruul
			{ itemID = 28810, groupID = 2, refLootEntry = 19044 }; --Windshear Boots
			{ itemID = 28830, groupID = 3, refLootEntry = 19044 }; --Dragonspine Trophy
			{ itemID = 28823, groupID = 3, refLootEntry = 19044 }; --Eye of Gruul
			{ itemID = 11688, groupID = 3, refLootEntry = 19044 }; --Signet of Elemental Savagery
		},
		{
			{ itemID = 29767, lootTable = {"T4LEGS","Token"} }, --Leggings of the Fallen Defender
			gap,
			{ itemID = 28802, groupID = 3, refLootEntry = 19044 }; --Bloodmaw Magus-Blade
			{ itemID = 28794, groupID = 3, refLootEntry = 19044 }; --Axe of the Gronn Lords
			{ itemID = 28825, groupID = 3, refLootEntry = 19044 }; --Aldori Legacy Defender
			{ itemID = 28826, groupID = 3, refLootEntry = 19044 }; --Shuriken of Negation
			{ itemID = 12088, groupID = 3, refLootEntry = 19044 }; --Spinepiercer
		},

	}
}



-------------------------------------------
---Hellfire Citadel: Hellfire Ramparts ---
-------------------------------------------

AtlasLoot_Data["HCRamparts"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Hellfire Citadel" .. ": " .. "Hellfire Ramparts",
	DisplayName = "Hellfire Ramparts",
	Type = "BCDungeon",
	Map = "HCHellfireRamparts",
	{
		Name = "Watchkeeper Gargolmar",
		WebID = {17306,"npc"},
		{
			{ itemID = 24023, groupID = 1, refLootEntry = 17306 }; --Bracers of Finesse
			{ itemID = 24021, groupID = 1, refLootEntry = 17306 }; --Light-Touched Breastplate
			{ itemID = 24024, groupID = 1, refLootEntry = 17306 }; --Pauldrons of Arcane Rage
			{ itemID = 24022, groupID = 1, refLootEntry = 17306 }; --Scale Leggings of the Skirmisher
			{ itemID = 24020, groupID = 1, refLootEntry = 17306 }; --Shadowrend Longblade
			gap,
			{ itemID = 27448, minDifficulty = "Heroic" }, --Cloak of the Everliving
			{ itemID = 27451, minDifficulty = "Heroic" }, --Boots of the Darkwalker
			{ itemID = 27450, minDifficulty = "Heroic" }, --Wild Stalker Boots
			{ itemID = 27447, minDifficulty = "Heroic" }, --Bracers of Just Rewards
			{ itemID = 27449, minDifficulty = "Heroic" }, --Blood Knight Defender
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30593, minDifficulty = "Heroic" }, --Iridescent Fire Opal
			{ itemID = 30594, minDifficulty = "Heroic" }, --Effulgent Chrysoprase
			{ itemID = 30592, minDifficulty = "Heroic" }, --Steady Chrysoprase
			gap,
			{ itemID = 60946, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Omor the Unscarred",
		WebID = {17308,"npc"},
		{
			{ itemID = 24090, groupID = 1, refLootEntry = 17308 }; --Bloodstained Ravager Gauntlets
			{ itemID = 24069, groupID = 1, refLootEntry = 17308 }; --Crystalfire Staff
			{ itemID = 24073, groupID = 1, refLootEntry = 17308 }; --Garrote-String Necklace
			{ itemID = 24094, groupID = 1, refLootEntry = 17308 }; --Heart Fire Warhammer
			{ itemID = 24096, groupID = 1, refLootEntry = 17308 }; --Heartblood Prayer Beads
			{ itemID = 24091, groupID = 1, refLootEntry = 17308 }; --Tenacious Defenders
			gap,
			{ itemID = 27465, minDifficulty = "Heroic" }, --Mana-Etched Gloves
			{ itemID = 27466, minDifficulty = "Heroic" }, --Headdress of Alacrity
			{ itemID = 27462, minDifficulty = "Heroic" }, --Crimson Bracers of Gloom
			{ itemID = 27467, minDifficulty = "Heroic" }, --Silent-Strider Kneeboots
			{ itemID = 27478, minDifficulty = "Heroic" }, --Girdle of the Blasted Reaches
			{ itemID = 27539, minDifficulty = "Heroic" }, --Justice Bearer's Pauldrons
			{ itemID = 27906, minDifficulty = "Heroic" }, --Crimsonforge Breastplate
			{ itemID = 27464, minDifficulty = "Heroic" }, --Omor's Unyielding Will
			{ itemID = 27895, minDifficulty = "Heroic" }, --Band of Many Prisms
			{ itemID = 27477, minDifficulty = "Heroic" }, --Faol's Signet of Cleansing
			{ itemID = 27463, minDifficulty = "Heroic" }, --Terror Flame Dagger
			{ itemID = 27476, minDifficulty = "Heroic" }, --Truncheon of Five Hells
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30593, minDifficulty = "Heroic" }, --Iridescent Fire Opal
			{ itemID = 30594, minDifficulty = "Heroic" }, --Effulgent Chrysoprase
			{ itemID = 30592, minDifficulty = "Heroic" }, --Steady Chrysoprase
			gap,
			{ itemID = 60947, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Vazruden",
		WebID = {17537,"npc"},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Reinforced Fel Iron Chest" },
			{ itemID = 24150 }, --Mok'Nathal Wildercloak
			{ itemID = 24083 }, --Lifegiver Britches
			{ itemID = 24063 }, --Shifting Sash of Midnight
			{ itemID = 24046 }, --Kilt of Rolling Thunders
			{ itemID = 24064 }, --Ironsole Clompers
			{ itemID = 24045 }, --Band of Renewal
			{ itemID = 24154 }, --Witching Band
			{ itemID = 24151 }, --Mok'Nathal Clan Ring
			{ itemID = 24044 }, --Hellreaver
			{ itemID = 24155 }, --Ursol's Claw
			{ itemID = 29264 }, --Tree-Mender's Belt
			{ itemID = 32077 }, --Wrath Infused Gauntlets
			{ itemID = 29238 }, --Lion's Heart Girdle
			{ itemID = 29346 }, --Feltooth Eviscerator
			gap,
			{ itemID = 29434 }, --Badge of Justice
			gap,
			{ itemID = 30593 }, --Iridescent Fire Opal
			{ itemID = 30594 }, --Effulgent Chrysoprase
			{ itemID = 30592 }, --Steady Chrysoprase
		},
		{
			{ itemID = 27452 }, --Light Scribe Bands
			{ itemID = 27461 }, --Chestguard of the Prowler
			{ itemID = 27456 }, --Raiments of Nature's Breath
			{ itemID = 27454 }, --Volcanic Pauldrons
			{ itemID = 27458 }, --Oceansong Kilt
			{ itemID = 27455 }, --Irondrake Faceguard
			{ itemID = 27459 }, --Vambraces of Daring
			{ itemID = 27457 }, --Life Bearer's Gauntlets
			{ itemID = 27453 }, --Averinn's Ring of Slaying
			{ itemID = 27460 }, --Reavers' Ring
			gap,
			{ itemID = 61025, droprate = "1%" }, --Pet Sigil
			gap,
			{ icon = "INV_Box_01", name = color.WHITE.. "Vazruden" },
			{ itemID = 23892 }, --Ominous Letter
			gap,
			{ icon = "INV_Box_01", name = color.WHITE.. "Nazan" },
			{ itemID = 23901 }, --Nazan's Head
		},
	},
}




-------------------------------------------
---Hellfire Citadel: The Blood Furnace ---
-------------------------------------------

AtlasLoot_Data["HCFurnace"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Hellfire Citadel" .. ": " .. "The Blood Furnace",
	DisplayName = "The Blood Furnace",
	Type = "BCDungeon",
	Map = "HCBloodFurnace",
	{
		Name = "The Maker",
		{
			{ itemID = 24384, groupID = 1, refLootEntry = 17381 }; --Diamond-Core Sledgemace
			{ itemID = 24388, groupID = 1, refLootEntry = 17381 }; --Girdle of the Gale Storm
			{ itemID = 24387, groupID = 1, refLootEntry = 17381 }; --Ironblade Gauntlets
			{ itemID = 24386, groupID = 1, refLootEntry = 17381 }; --Libram of Saints Departed
			{ itemID = 24385, groupID = 1, refLootEntry = 17381 }; --Pendant of Battle-Lust
			{ itemID = 27485, minDifficulty = "Heroic" }, --Embroidered Cape of Mysteries
			{ itemID = 27488, minDifficulty = "Heroic" }, --Mage-Collar of the Firestorm
			{ itemID = 27483, minDifficulty = "Heroic" }, --Moon-Touched Bands
			{ itemID = 27487, minDifficulty = "Heroic" }, --Bloodlord Legplates
			{ itemID = 27484, minDifficulty = "Heroic" }, --Libram of Avengement
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30601, minDifficulty = "Heroic" }, --Beaming Fire Opal
			{ itemID = 30600, minDifficulty = "Heroic" }, --Fluorescent Tanzanite
			{ itemID = 30602, minDifficulty = "Heroic" }, --Jagged Chrysoprase	
		},
	},
	{
		Name = "Broggok",
		{
			{ itemID = 24392, groupID = 1, refLootEntry = 17380 }; --Arcing Bracers
			{ itemID = 24390, groupID = 1, refLootEntry = 17380 }; --Auslese's Light Channeler
			{ itemID = 24393, groupID = 1, refLootEntry = 17380 }; --Bloody Surgeon's Mitts
			{ itemID = 24391, groupID = 1, refLootEntry = 17380 }; --Kilt of the Night Strider
			{ itemID = 24389, groupID = 1, refLootEntry = 17380 }; --Legion Blunderbuss
			{ itemID = 27848, minDifficulty = "Heroic" }, --Embroidered Spellpyre Boots
			{ itemID = 27492, minDifficulty = "Heroic" }, --Moonchild Leggings
			{ itemID = 27489, minDifficulty = "Heroic" }, --Virtue Bearer's Vambraces
			{ itemID = 27491, minDifficulty = "Heroic" }, --Signet of Repose
			{ itemID = 27490, minDifficulty = "Heroic" }, --Firebrand Battleaxe
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30601, minDifficulty = "Heroic" }, --Beaming Fire Opal
			{ itemID = 30600, minDifficulty = "Heroic" }, --Fluorescent Tanzanite
			{ itemID = 30602, minDifficulty = "Heroic" }, --Jagged Chrysoprase
		},
	},
	{
		Name = "Keli'dan the Breaker",
		{
			{ itemID = 24398, groupID = 1, refLootEntry = 17377 }; --Mantle of the Dusk-Dweller
			{ itemID = 24395, groupID = 1, refLootEntry = 17377 }; --Mindfire Waistband
			{ itemID = 24397, groupID = 1, refLootEntry = 17377 }; --Raiments of Divine Authority
			{ itemID = 24396, groupID = 1, refLootEntry = 17377 }; --Vest of Vengeance
			{ itemID = 24394, groupID = 1, refLootEntry = 17377 }; --Warsong Howling Axe
			{ itemID = 28264, minDifficulty = "Heroic" }, --Wastewalker Tunic
			{ itemID = 27497, minDifficulty = "Heroic" }, --Doomplate Gauntlets
			{ itemID = 27506, minDifficulty = "Heroic" }, --Robe of Effervescent Light
			{ itemID = 27514, minDifficulty = "Heroic" }, --Leggings of the Unrepentant
			{ itemID = 27522, minDifficulty = "Heroic" }, --World's End Bracers
			{ itemID = 27494, minDifficulty = "Heroic" }, --Emerald Eye Bracer
			{ itemID = 27505, minDifficulty = "Heroic" }, --Ruby Helm of the Just
			{ itemID = 27788, minDifficulty = "Heroic" }, --Bloodsworn Warboots
			{ itemID = 27495, minDifficulty = "Heroic" }, --Soldier's Dog Tags
			{ itemID = 28121, minDifficulty = "Heroic" }, --Icon of Unyielding Courage
			gap,
			{ itemID = 2066390, groupID = 1, refLootEntry = 2061613 }; --Belt of Infernal Dominance
			{ itemID = 2070603, groupID = 1, refLootEntry = 2061613 }; --Boots of Chaotic Energy
			{ itemID = 2072920, groupID = 1, refLootEntry = 2061613 }; --Gloves of the Breaker
			{ itemID = 2068474, groupID = 1, refLootEntry = 2061613 }; --Leggings of Demonic Influence
			{ itemID = 2061613, groupID = 1, refLootEntry = 2061613 }; --Mantle of Fel Ruin
			{ itemID = 2064496, groupID = 1, refLootEntry = 2061613 }; --Robes of the Dark Council
			{ itemID = 2076235, groupID = 1, refLootEntry = 2061613 }; --Staff of Fel Manipulation
			{ itemID = 2063253, groupID = 1, refLootEntry = 2061613 }; --Vestments of Shadow Power
		},
		{
			{ itemID = 27512, minDifficulty = "Heroic" }, --The Willbreaker
			{ itemID = 27507, minDifficulty = "Heroic" }, --Adamantine Repeater
			{ itemID = 32080, minDifficulty = "Heroic" }, --Mantle of Shadowy Embrace
			{ itemID = 29245, minDifficulty = "Heroic" }, --Wave-Crest Striders
			{ itemID = 29239, minDifficulty = "Heroic" }, --Eaglecrest Warboots
			{ itemID = 29347, minDifficulty = "Heroic" }, --Talisman of the Breaker
			gap,
			{ itemID = 33814, minDifficulty = "Heroic" }, --Keli'dan's Feathered Stave
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30601, minDifficulty = "Heroic" }, --Beaming Fire Opal
			{ itemID = 30600, minDifficulty = "Heroic" }, --Fluorescent Tanzanite
			{ itemID = 30602, minDifficulty = "Heroic" }, --Jagged Chrysoprase
		},

	}
}

---------------------------------------------
---Hellfire Citadel: The Shattered Halls ---
---------------------------------------------

AtlasLoot_Data["HCShatteredHalls"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Hellfire Citadel" .. ": " .. "The Shattered Halls",
	DisplayName = "The Shattered Halls",
	Type = "BCDungeon",
	Map = "HCTheShatteredHalls",
	{
		Name = "Grand Warlock Nethekurse",
		{
			{ itemID = 27517, groupID = 1, refLootEntry = 16807 }; --Bands of Nethekurse
			{ itemID = 27519, groupID = 1, refLootEntry = 16807 }; --Cloak of Malice
			{ itemID = 27520, groupID = 1, refLootEntry = 16807 }; --Greathelm of the Unbreakable
			{ itemID = 27518, groupID = 1, refLootEntry = 16807 }; --Ivory Idol of the Moongoddess
			{ itemID = 27521, groupID = 1, refLootEntry = 16807 }; --Telaari Hunting Girdle
			gap,
			{ itemID = 24312 }, --Pattern: Spellstrike Hood
			gap,
			{ itemID = 23735 }, --Grand Warlock's Amulet
			gap,
			{ itemID = 2070580, groupID = 1, refLootEntry = 2060554 }; --Footsteps of the Dark Pact
			{ itemID = 2072903, groupID = 1, refLootEntry = 2060554 }; --Grips of the Infernal Betrayer
			{ itemID = 2068443, groupID = 1, refLootEntry = 2060554 }; --Legwraps of Fel Corruption
			{ itemID = 2060554, groupID = 1, refLootEntry = 2060554 }; --Nethekurse's Hood of the Fel Shaman
			{ itemID = 2076149, groupID = 1, refLootEntry = 2060554 }; --Nethekurse's Warblade of Discord
			{ itemID = 2064475, groupID = 1, refLootEntry = 2060554 }; --Robe of the Corrupted Shadowmoon
			{ itemID = 2061597, groupID = 1, refLootEntry = 2060554 }; --Shoulderguards of Twisted Legacies
		},
		{
			{ itemID = 25462, minDifficulty = "Heroic" }, --Tome of Dusk

			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30548, minDifficulty = "Heroic" }, --Polished Chrysoprase
			{ itemID = 30547, minDifficulty = "Heroic" }, --Luminous Fire Opal
			{ itemID = 30546, minDifficulty = "Heroic" }, --Sovereign Tanzanite
		},
	},
	{
		Name = "Blood Guard Porung",
		{
			{ itemID = 30708, groupID = 1, refLootEntry = 20923 }; --Belt of Flowing Thought
			{ itemID = 30710, groupID = 1, refLootEntry = 20923 }; --Blood Guard's Necklace of Ferocity
			{ itemID = 30707, groupID = 1, refLootEntry = 20923 }; --Nimble-foot Treads
			{ itemID = 30709, groupID = 1, refLootEntry = 20923 }; --Pantaloons of Flaming Wrath
			{ itemID = 30705, groupID = 1, refLootEntry = 20923 }; --Spaulders of Slaughter
			{ itemID = 30709 }, --Pantaloons of Flaming Wrath
			{ itemID = 30707 }, --Nimble-foot Treads
			{ itemID = 30708 }, --Belt of Flowing Thought
			{ itemID = 30705 }, --Spaulders of Slaughter
			{ itemID = 30710 }, --Blood Guard's Necklace of Ferocity
			gap,
			{ itemID = 2063266, groupID = 1, refLootEntry = 2061628 }; --Blood Guard's Defiled Tabard
			{ itemID = 2070624, groupID = 1, refLootEntry = 2061628 }; --Dreadmarch Stompers
			{ itemID = 2064518, groupID = 1, refLootEntry = 2061628 }; --Felheart Chestguard of the Guard
			{ itemID = 2072939, groupID = 1, refLootEntry = 2061628 }; --Grips of the Shattered Halls
			{ itemID = 2061628, groupID = 1, refLootEntry = 2061628 }; --Infernal Shoulderplates of Porung
			{ itemID = 2068506, groupID = 1, refLootEntry = 2061628 }; --Legplates of Demonic Might
			{ itemID = 2066420, groupID = 1, refLootEntry = 2061628 }; --Warworn Girdle of Savagery
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			gap,
			{ itemID = 30548 }, --Polished Chrysoprase
			{ itemID = 30547 }, --Luminous Fire Opal
			{ itemID = 30546 }, --Sovereign Tanzanite
		},
	},
	{
		Name = "Warbringer O'mrogg",
		{
			{ itemID = 27524, groupID = 1, refLootEntry = 16809 }; --Firemaul of Destruction
			{ itemID = 27525, groupID = 1, refLootEntry = 16809 }; --Jeweled Boots of Sanctification
			{ itemID = 27868, groupID = 1, refLootEntry = 16809 }; --Runesong Dagger
			{ itemID = 245159, groupID = 1, refLootEntry = 16809 }; --Shoulderguards of the Tides
			{ itemID = 27526, groupID = 1, refLootEntry = 16809 }; --Skyfire Hawk-Bow
			{ itemID = 27802, groupID = 1, refLootEntry = 16809 }; --Tidefury Shoulderguards
			gap,
			{ itemID = 2076150, groupID = 1, refLootEntry = 2076150 }; --Fiery Maul of O'mrogg
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30548, minDifficulty = "Heroic" }, --Polished Chrysoprase
			{ itemID = 30547, minDifficulty = "Heroic" }, --Luminous Fire Opal
			{ itemID = 30546, minDifficulty = "Heroic" }, --Sovereign Tanzanite
		},
	},
	{
		Name = "Warchief Kargath Bladefist",
		{
			{ itemID = 27474, groupID = 1, refLootEntry = 16808 }; --Beast Lord Handguards
			{ itemID = 27533, groupID = 1, refLootEntry = 16808 }; --Demonblood Eviscerator
			{ itemID = 27529, groupID = 1, refLootEntry = 16808 }; --Figurine of the Colossus
			{ itemID = 27528, groupID = 1, refLootEntry = 16808 }; --Gauntlets of Desolation
			{ itemID = 241919, groupID = 1, refLootEntry = 16808 }; --Gauntlets of the Divine
			{ itemID = 242638, groupID = 1, refLootEntry = 16808 }; --Gauntlets of the Just
			{ itemID = 27535, groupID = 1, refLootEntry = 16808 }; --Gauntlets of the Righteous
			{ itemID = 27537, groupID = 1, refLootEntry = 16808 }; --Gloves of Oblivion
			{ itemID = 27527, groupID = 1, refLootEntry = 16808 }; --Greaves of the Shatterer
			{ itemID = 27536, groupID = 1, refLootEntry = 16808 }; --Hallowed Handwraps
			{ itemID = 27534, groupID = 1, refLootEntry = 16808 }; --Hortus' Seal of Brilliance
			{ itemID = 27538, groupID = 1, refLootEntry = 16808 }; --Lightsworn Hammer
			{ itemID = 27540, groupID = 1, refLootEntry = 16808 }; --Nexus Torch
			{ itemID = 27531, groupID = 1, refLootEntry = 16808 }; --Wastewalker Gloves

		},
		{
			{ itemID = 29255, minDifficulty = "Heroic" }, --Bands of Rarefied Magic
			{ itemID = 29263, minDifficulty = "Heroic" }, --Forestheart Bracers
			{ itemID = 29254, minDifficulty = "Heroic" }, --Boots of the Righteous Path
			gap,
			{ itemID = 23723 }, --Warchief Kargath's Fist
			{ itemID = 29348, minDifficulty = "Heroic" }, --The Bladefist
			gap,
			{ itemID = 33815, minDifficulty = "Heroic" }, --Bladefist's Seal
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30548, minDifficulty = "Heroic" }, --Polished Chrysoprase
			{ itemID = 30547, minDifficulty = "Heroic" }, --Luminous Fire Opal
			{ itemID = 30546, minDifficulty = "Heroic" }, --Sovereign Tanzanite
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 22554 }, --Formula: Enchant 2H Weapon - Savagery
			{ icon = "INV_Box_01", name = color.WHITE.. "Shattered Hand Executioner" },
			{ itemID = 31716 }, --Unused Axe of the Executioner
		},
	}
}
--------------------------------------------
---Hellfire Citadel: Magtheridon's Lair ---
--------------------------------------------

AtlasLoot_Data["HCMagtheridon"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Hellfire Citadel" .. ": " .. "Magtheridon's Lair",
	DisplayName = "Magtheridon's Lair",
	Type = "BCRaid",
	Map = "HCMagtheridonsLair",
	{
		Name = "Magtheridon",
		WebID = {17257,"npc"},
		{
			{ itemID = 12085, groupID = 3, refLootEntry = 17257 }; --Bracers of Demonic Prowess
			{ itemID = 28777, groupID = 3, refLootEntry = 17257 }; --Cloak of the Pit Stalker
			{ itemID = 28779, groupID = 3, refLootEntry = 17257 }; --Girdle of the Endless Pit
			{ itemID = 28776, groupID = 3, refLootEntry = 17257 }; --Liar's Tongue Gloves
			{ itemID = 28780, groupID = 3, refLootEntry = 17257 }; --Soul-Eater's Handwraps
			{ itemID = 28778, groupID = 3, refLootEntry = 17257 }; --Terror Pit Girdle
			{ itemID = 28775, groupID = 3, refLootEntry = 17257 }; --Thundering Greathelm
			{ itemID = 29458, groupID = 4, refLootEntry = 17257 }; --Aegis of the Vindicator
			{ itemID = 28782, groupID = 4, refLootEntry = 17257 }; --Crystalheart Pulse-Staff
			{ itemID = 28783, groupID = 4, refLootEntry = 17257 }; --Eredar Wand of Obliteration
			{ itemID = 28789, groupID = 4, refLootEntry = 17257 }; --Eye of Magtheridon
			{ itemID = 28774, groupID = 4, refLootEntry = 17257 }; --Glaive of the Pit
			{ itemID = 28781, groupID = 4, refLootEntry = 17257 }; --Karaborian Talisman
			{ itemID = 11687, groupID = 4, refLootEntry = 17257 }; --Ring of Hellfire Mighty
		},
		{
			{ itemID = 29753, lootTable = {"T4CHEST","Token"} }, --Chestguard of the Fallen Defender
			gap,
			{ itemID = 34845 }, --Pit Lord's Satchel
			{ itemID = 34846 }, --Black Sack of Gems
			{ itemID = 32385, contentsPreview = {
				{28791}, --Ring of the Recalcitrant
				{28790}, --Naaru Lightwarden's Band
				{28793}, --Band of Crimson Fury
				{28792}, --A'dal's Signet of Defense
			} }, --Magtheridon's Head
			gap,
			{ itemID = 60945, droprate = "1%" }, --Pet Sigil
			gap,
			{ itemID = 428775, minDifficulty = "Ascended" }, --Bor -o G'urth, the Hand of Death
			{ itemID = 428776, minDifficulty = "Ascended" }, --Lebed -o G'urth, the Finger of Death
		},
	}
}
----------------
---Karazhan ---
----------------

AtlasLoot_Data["Karazhan"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Karazhan",
	Type = "BCRaid",
	Map = "Karazhan",
	Loadfirst = 3,
	{
		Name = "Charred Bone Fragment (" .. "Quest Item" .. ")",
		{
			{ itemID = 24152, icon = "INV_Misc_Bone_10" }, --Charred Bone Fragment
	}
},
	{
		Name = "Servant's Quarter Animal Bosses",
		{
			{ icon = "Ability_Hunter_Pet_Spider", name = color.WHITE.. "Hyakiss the Lurker", "=q5=" .. "Spider" },
			{ itemID = 30675 }, --Lurker's Cord
			{ itemID = 30676 }, --Lurker's Grasp
			{ itemID = 30677 }, --Lurker's Belt
			{ itemID = 30678 }, --Lurker's Girdle
			gap,
			{ icon = "Ability_Hunter_Pet_Hyena", name = color.WHITE.. "Rokad the Ravager", "=q5=" .. "Darkhound" },
			{ itemID = 30684 }, --Ravager's Cuffs
			{ itemID = 30685 }, --Ravager's Wrist-Wraps
			{ itemID = 30686 }, --Ravager's Bands
			{ itemID = 30687 }, --Ravager's Bracers
		},
		{
			{ icon = "Ability_Hunter_Pet_Bat", name = color.WHITE.. "Shadikith the Glider", "=q5=" .. "Bat" },
			{ itemID = 30680 }, --Glider's Foot-Wraps
			{ itemID = 30681 }, --Glider's Boots
			{ itemID = 30682 }, --Glider's Sabatons
			{ itemID = 30683 }, --Glider's Greaves
		},
	},
	{
		Name = "Attumen the Huntsman",
		WebID = {16152,"npc"},
		{
			{ itemID = 28477 }, --Harbinger Bands
			{ itemID = 28507 }, --Handwraps of Flowing Thought
			{ itemID = 28508 }, --Gloves of Saintly Blessings
			{ itemID = 28453 }, --Bracers of the color.WHITE Stag
			{ itemID = 28506 }, --Gloves of Dexterous Manipulation
			{ itemID = 28503 }, --Whirlwind Bracers
			{ itemID = 28454 }, --Stalker's War Bands
			{ itemID = 28502 }, --Vambraces of Courage
			{ itemID = 28505 }, --Gauntlets of Renewed Hope
			{ itemID = 28509 }, --Worgen Claw Necklace
			{ itemID = 11249 }, --Ring of Eternal Flame
			{ itemID = 28510 }, --Spectral Band of Innervation
			{ itemID = 28504 }, --Steelhawk Crossbow
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			gap,
			{ itemID = 30480 }, --Fiery Warhorse's Reins
			gap,
			{ itemID = 23809 }, --Schematic: Stabilized Eternium Scope
			gap,
			{ itemID = 60198, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Moroes",
		WebID = {15687,"npc"},
		{
			{ itemID = 28567, groupID = 1, refLootEntry = 15687 }; --Belt of Gale Force
			{ itemID = 28569, groupID = 1, refLootEntry = 15687 }; --Boots of Valiance
			{ itemID = 28530, groupID = 1, refLootEntry = 15687 }; --Brooch of Unquenchable Fury
			{ itemID = 28568, groupID = 1, refLootEntry = 15687 }; --Idol of the Avian Heart
			{ itemID = 28565, groupID = 1, refLootEntry = 15687 }; --Nethershard Girdle
			{ itemID = 28570, groupID = 1, refLootEntry = 15687 }; --Shadow-Cloak of Dalaran
			{ itemID = 28525, groupID = 1, refLootEntry = 15687 }; --Signet of Unshakable Faith
			{ itemID = 28566, groupID = 2, refLootEntry = 15687 }; --Crimson Girdle of the Indomitable
			{ itemID = 28545, groupID = 2, refLootEntry = 15687 }; --Edgewalker Longboots
			{ itemID = 28524, groupID = 2, refLootEntry = 15687 }; --Emerald Ripper
			{ itemID = 28528, groupID = 2, refLootEntry = 15687 }; --Moroes' Lucky Pocket Watch
			{ itemID = 28529, groupID = 2, refLootEntry = 15687 }; --Royal Cloak of Arathi Kingsfall
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			gap,
			{ itemID = 22559, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Mongoose
			gap,
			{ itemID = 60166, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Keanna's Log (" .. "Quest Item" .. ")",
		{
			{ itemID = 24492 }, --Keanna's Log
		},
	},
	{
		Name = "Maiden of Virtue",
		WebID = {16457,"npc"},
		{
			{ itemID = 28511, groupID = 1, refLootEntry = 16457 }; --Bands of Indwelling
			{ itemID = 28515, groupID = 1, refLootEntry = 16457 }; --Bands of Nefarious Deeds
			{ itemID = 28517, groupID = 1, refLootEntry = 16457 }; --Boots of Foretelling
			{ itemID = 11652, groupID = 1, refLootEntry = 16457 }; --Boots of Sinister Grace
			{ itemID = 28512, groupID = 1, refLootEntry = 16457 }; --Bracers of Justice
			{ itemID = 28520, groupID = 1, refLootEntry = 16457 }; --Gloves of Centering
			{ itemID = 28521, groupID = 1, refLootEntry = 16457 }; --Mitts of the Treemender
			{ itemID = 28522, groupID = 1, refLootEntry = 16457 }; --Shard of the Virtuous
			{ itemID = 28523, groupID = 1, refLootEntry = 16457 }; --Totem of Healing Rains
			{ itemID = 28516, groupID = 2, refLootEntry = 16457 }; --Barbed Choker of Discipline
			{ itemID = 28514, groupID = 2, refLootEntry = 16457 }; --Bracers of Maliciousness
			{ itemID = 28519, groupID = 2, refLootEntry = 16457 }; --Gloves of Quickening
			{ itemID = 28518, groupID = 2, refLootEntry = 16457 }; --Iron Gauntlets of the Maiden
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			gap,
			{ itemID = 816253, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Faith
		},
	},
	{
		Name = "Opera Event",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "The Crone", "=q5=" .. "Wizard of Oz" },
			{ itemID = 28586 }, --Wicked Witch's Hat
			{ itemID = 28585 }, --Ruby Slippers
			{ itemID = 28587 }, --Legacy
			{ itemID = 28588 }, --Blue Diamond Witchwand
			{ itemID = 61590 }, --Sigil
			gap,
			{ icon = "INV_Box_01", name = color.WHITE.. "Romulo & Julianne", "=q5=" .. "Romulo & Julianne" },
			{ itemID = 28578 }, --Masquerade Gown
			{ itemID = 28579 }, --Romulo's Poison Vial
			{ itemID = 28572 }, --Blade of the Unrequited
			{ itemID = 28573 }, --Despair
			{ itemID = 61022 }, --Sigil
			{ itemID = 60992 }, --Sigil
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "The Big Bad Wolf", "=q5=" .. "color.RED Riding Hood" },
			{ itemID = 28582 }, --Red Riding Hood's Cloak
			{ itemID = 28583 }, --Big Bad Wolf's Head
			{ itemID = 28584 }, --Big Bad Wolf's Paw
			{ itemID = 28581 }, --Wolfslayer Sniper Rifle
			{ itemID = 60991 }, --Sigil
			gap,
			{ icon = "INV_Box_01", name = color.WHITE.. "Shared Drops" },
			{ itemID = 28594 }, --Trial-FireTrousers
			{ itemID = 28591 }, --Earthsoul Leggings
			{ itemID = 28589 }, --Beastmaw Pauldrons
			{ itemID = 28593 }, --Eternium Greathelm
			{ itemID = 28590 }, --Ribbon of Sacrifice
			{ itemID = 28592 }, --Libram of Souls Redeemed
		},
	},
	{
		Name = "Nightbane",
		WebID = {17225,"npc"},
		{
			{ itemID = 28611, groupID = 1, refLootEntry = 17225 }; --Dragonheart Flameshield
			{ itemID = 28609, groupID = 1, refLootEntry = 17225 }; --Emberspur Talisman
			{ itemID = 12087, groupID = 1, refLootEntry = 17225 }; --Nightpiercer
			{ itemID = 28604, groupID = 1, refLootEntry = 17225 }; --Nightstaff of the Everliving
			{ itemID = 28602, groupID = 1, refLootEntry = 17225 }; --Robe of the Elder Scribes
			{ itemID = 28600, groupID = 1, refLootEntry = 17225 }; --Stonebough Jerkin
			{ itemID = 28603, groupID = 1, refLootEntry = 17225 }; --Talisman of Nightbane
			{ itemID = 28601, groupID = 2, refLootEntry = 17225 }; --Chestguard of the Conniver
			{ itemID = 11637, groupID = 2, refLootEntry = 17225 }; --Covenant of Steel and Flame
			{ itemID = 28610, groupID = 2, refLootEntry = 17225 }; --Ferocious Swift-Kickers
			{ itemID = 28608, groupID = 2, refLootEntry = 17225 }; --Ironstriders of Urgency
			{ itemID = 28597, groupID = 2, refLootEntry = 17225 }; --Panzar'Thar Breastplate
			{ itemID = 28599, groupID = 2, refLootEntry = 17225 }; --Scaled Breastplate of Carnage
			{ itemID = 28606, groupID = 2, refLootEntry = 17225 }; --Shield of Impenetrable Darkness
		},
		{
			{ itemID = 31751 }, --Blazing Signet
			gap,
			{ itemID = 229739 }, --Tome of Untold Secrets
		},
	},
	{
		Name = "The Curator",
		WebID = {15691,"npc"},
		{
			{ itemID = 28631, groupID = 2, refLootEntry = 15691 }; --Dragon-Quake Shoulderguards
			{ itemID = 28647, groupID = 2, refLootEntry = 15691 }; --Forest Wind Shoulderpads
			{ itemID = 28649, groupID = 2, refLootEntry = 15691 }; --Garona's Signet Ring
			{ itemID = 28612, groupID = 2, refLootEntry = 15691 }; --Pauldrons of the Solace-Giver
			{ itemID = 28633, groupID = 2, refLootEntry = 15691 }; --Staff of Infinite Mysteries
			{ itemID = 11251, groupID = 2, refLootEntry = 15691 }; --Stormfury Pendant
			{ itemID = 28621, groupID = 2, refLootEntry = 15691 }; --Wrynn Dynasty Greaves
		},
		{
			{ itemID = 29758, lootTable = {"T4HAND","Token"} }, --Gloves of the Fallen Defender
			gap,
			{ itemID = 229739 }, --Tome of Untold Secrets
			gap,
			{ itemID = 60170 }, --Sigil of The Curator
		},
	},
	{
		Name = "Terestian Illhoof",
		WebID = {15688,"npc"},
		{
			{ itemID = 28662, groupID = 1, refLootEntry = 15688 }; --Breastplate of the Lightbinder
			{ itemID = 28652, groupID = 1, refLootEntry = 15688 }; --Cincture of Will
			{ itemID = 28655, groupID = 1, refLootEntry = 15688 }; --Cord of Nature's Sustenance
			{ itemID = 28654, groupID = 1, refLootEntry = 15688 }; --Malefic Girdle
			{ itemID = 28661, groupID = 1, refLootEntry = 15688 }; --Mender's Heart-Ring
			{ itemID = 28653, groupID = 1, refLootEntry = 15688 }; --Shadowvine Cloak of Infusion
			{ itemID = 28785, groupID = 1, refLootEntry = 15688 }; --The Lightning Capacitor
			{ itemID = 28657, groupID = 2, refLootEntry = 15688 }; --Fool's Bane
			{ itemID = 28660, groupID = 2, refLootEntry = 15688 }; --Gilded Thorium Cloak
			{ itemID = 28656, groupID = 2, refLootEntry = 15688 }; --Girdle of the Prowler
			{ itemID = 12089, groupID = 2, refLootEntry = 15688 }; --Sanguine Spellfang
			{ itemID = 28658, groupID = 2, refLootEntry = 15688 }; --Terestian's Stranglestaff
			{ itemID = 28659, groupID = 2, refLootEntry = 15688 }; --Xavian Stiletto
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			gap,
			{ itemID = 22561, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Soulfrost
			gap,
			{ itemID = 60167 }, --Sigil of Terestain Illhoof
		},
	},
	{
		Name = "Shade of Aran",
		WebID = {16524,"npc"},
		{
			{ itemID = 28728, groupID = 1, refLootEntry = 16524 }; --Aran's Soothing Sapphire
			{ itemID = 28663, groupID = 1, refLootEntry = 16524 }; --Boots of the Incorrupt
			{ itemID = 28670, groupID = 1, refLootEntry = 16524 }; --Boots of the Infernal Coven
			{ itemID = 28726, groupID = 1, refLootEntry = 16524 }; --Mantle of the Mind Flayer
			{ itemID = 28666, groupID = 1, refLootEntry = 16524 }; --Pauldrons of the Justice-Seeker
			{ itemID = 28727, groupID = 1, refLootEntry = 16524 }; --Pendant of the Violet Eye
			{ itemID = 28673, groupID = 1, refLootEntry = 16524 }; --Tirisfal Wand of Ascendancy
			{ itemID = 28672, groupID = 2, refLootEntry = 16524 }; --Drape of the Dark Reavers
			{ itemID = 12084, groupID = 2, refLootEntry = 16524 }; --Drape of the Stormbreaker
			{ itemID = 28669, groupID = 2, refLootEntry = 16524 }; --Rapscallion Boots
			{ itemID = 28674, groupID = 2, refLootEntry = 16524 }; --Saberclaw Talisman
			{ itemID = 28675, groupID = 2, refLootEntry = 16524 }; --Shermanar Great-Ring
			{ itemID = 28671, groupID = 2, refLootEntry = 16524 }; --Steelspine Faceguard
			gap,
			{ itemID = 23933 }, --Medivh's Journal
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			gap,
			{ itemID = 22560, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Sunfire
			gap,
			{ itemID = 60372, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Netherspite",
		WebID = {15689,"npc"},
		{
			{ itemID = 11651, groupID = 1, refLootEntry = 15689 }; --Belt of Whirling Shadows
			{ itemID = 28735, groupID = 1, refLootEntry = 15689 }; --Earthblood Chestguard
			{ itemID = 28733, groupID = 1, refLootEntry = 15689 }; --Girdle of Truth
			{ itemID = 11650, groupID = 1, refLootEntry = 15689 }; --Girdle of Unbound Forces
			{ itemID = 28734, groupID = 1, refLootEntry = 15689 }; --Jewel of Infinite Possibilities
			{ itemID = 28742, groupID = 1, refLootEntry = 15689 }; --Pantaloons of Repentance
			{ itemID = 28731, groupID = 1, refLootEntry = 15689 }; --Shining Chain of the Afterworld
			{ itemID = 28744, groupID = 1, refLootEntry = 15689 }; --Uni-Mind Headdress
			{ itemID = 28732, groupID = 2, refLootEntry = 15689 }; --Cowl of Defiance
			{ itemID = 28743, groupID = 2, refLootEntry = 15689 }; --Mantle of Abrahmis
			{ itemID = 28730, groupID = 2, refLootEntry = 15689 }; --Mithril Band of the Unscarred
			{ itemID = 28740, groupID = 2, refLootEntry = 15689 }; --Rip-Flayer Leggings
			{ itemID = 28741, groupID = 2, refLootEntry = 15689 }; --Skulker's Greaves
			{ itemID = 28729, groupID = 2, refLootEntry = 15689 }; --Spiteblade
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			gap,
			{ itemID = 29434 }, --Badge of Justice
			gap,
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
		},
	},
	{
		Name = "Chess Event",
		WebID = {185119,"object"},
		{
			{ itemID = 11640, groupID = 1, refLootEntry = 16816 }; --Bindings of Mystic Might
			{ itemID = 28752, groupID = 1, refLootEntry = 16816 }; --Forestlord Striders
			{ itemID = 28756, groupID = 1, refLootEntry = 16816 }; --Headdress of the High Potentate
			{ itemID = 28751, groupID = 1, refLootEntry = 16816 }; --Heart-Flame Leggings
			{ itemID = 28748, groupID = 1, refLootEntry = 16816 }; --Legplates of the Innocent
			{ itemID = 28747, groupID = 2, refLootEntry = 16816 }; --Battlescar Boots
			{ itemID = 28755, groupID = 2, refLootEntry = 16816 }; --Bladed Shoulderpads of the Merciless
			{ itemID = 28746, groupID = 2, refLootEntry = 16816 }; --Fiend Slayer Boots
			{ itemID = 28750, groupID = 2, refLootEntry = 16816 }; --Girdle of Treachery
			{ itemID = 28745, groupID = 2, refLootEntry = 16816 }; --Mithril Chain of Heroism
		},
		{
			{ itemID = 28749, groupID = 2, refLootEntry = 16816 }; --King's Defender
			{ itemID = 28754, groupID = 1, refLootEntry = 16816 }; --Triptych Shield of the Ancients
			{ itemID = 28753, groupID = 1, refLootEntry = 16816 }; --Ring of Recurrence
			{ itemID = 11797, groupID = 1, refLootEntry = 16816 }; --Ring of Shadowed Precision
		}
	},
	{
		Name = "Prince Malchezaar",
		WebID = {15690,"npc"},
		{
			{ itemID = 28762, groupID = 2, refLootEntry = 15690 }; --Adornment of Stolen Souls
			{ itemID = 11638, groupID = 2, refLootEntry = 15690 }; --Darkened Boots of the Nathrezim
			{ itemID = 28764, groupID = 2, refLootEntry = 15690 }; --Farstrider Wildercloak
			{ itemID = 28763, groupID = 2, refLootEntry = 15690 }; --Jade Ring of the Everliving
			{ itemID = 28757, groupID = 2, refLootEntry = 15690 }; --Ring of a Thousand Marks
			{ itemID = 28766, groupID = 2, refLootEntry = 15690 }; --Ruby Drape of the Mysticant
			{ itemID = 28765, groupID = 2, refLootEntry = 15690 }; --Stainless Cloak of the Pure Hearted
			{ itemID = 11636, groupID = 2, refLootEntry = 15690 }; --Talisman of Disonnance
			{ itemID = 28770, groupID = 3, refLootEntry = 15690 }; --Nathrezim Mindblade
			{ itemID = 28768, groupID = 3, refLootEntry = 15690 }; --Malchazeen
			{ itemID = 28767, groupID = 3, refLootEntry = 15690 }; --The Decapitator
			{ itemID = 28773, groupID = 3, refLootEntry = 15690 }; --Gorehowl
			{ itemID = 28771, groupID = 3, refLootEntry = 15690 }; --Light's Justice
			{ itemID = 28772, groupID = 3, refLootEntry = 15690 }; --Sunfury Bow of the Phoenix
			{ itemID = 12123, groupID = 3, refLootEntry = 15690 }; --Razorwind
		},
		{
			{ itemID = 29761, lootTable = {"T4HEAD","Token"} }, --Helm of the Fallen Defender
			gap,
			{ itemID = 229739 }, --Tome of Untold Secrets
			gap,
			{ itemID = 138255 }, --Summoner's Stone: Prince Malchezaar
			gap,
			{ itemID = 60169, droprate = "1%" }, --Pet Sigil
			gap,
			{ itemID = 499438, minDifficulty = "Heroic" }, --Smoldering Emberwyrm
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 30642 }, --Drape of the Righteous
			{ itemID = 30668 }, --Grasp of the Dead
			{ itemID = 30673 }, --Inferno Waist Cord
			{ itemID = 30644 }, --Grips of the Deftness
			{ itemID = 30674 }, --Zierhut's Lost Treads
			{ itemID = 30643 }, --Belt of the Tracker
			{ itemID = 30641 }, --Boots of Elusion
			{ itemID = 30666 }, --Ritssyn's Lost Pendant
			{ itemID = 30667 }, --Ring of Unrelenting Storms
		},
		{
			{ itemID = 23857 }, --Legacy of the Mountain King
			{ itemID = 23864 }, --Torment of the Worgen
			{ itemID = 23862 }, --Redemption of the Fallen
			{ itemID = 23865 }, --Wrath of the Titans
			gap,
			{ itemID = 21882 }, --Soul Essence
			gap,
			{ itemID = 21903 }, --Pattern: Soulcloth Shoulders
			{ itemID = 21904 }, --Pattern: Soulcloth Vest 
			{ itemID = 22545 }, --Formula: Enchant Boots - Surefooted
		},
	}
}
----------------------------------------
---Sunwell Isle: Magister's Terrace ---
----------------------------------------

AtlasLoot_Data["MagistersTerrace"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Sunwell Isle" .. ": " .. "Magisters' Terrace",
	DisplayName = "Magisters' Terrace",
	Type = "BCDungeon",
	Map = "MagistersTerrace",
	{
		Name = "Selin Fireheart",
		WebID = {24723, "npc"},
		{
			{ itemID = 34702 }, --Cloak of Swift Mending
			{ itemID = 34697 }, --Bindings of Raging Fire
			{ itemID = 34701 }, --Leggings of the Betrayed
			{ itemID = 34698 }, --Bracers of the Forest Stalker
			{ itemID = 34700 }, --Gauntlets of Divine Blessings
			{ itemID = 34699 }, --Sun-forged Cleaver
			{ itemID = 35275 }, --Orb of the Sin'dorei
		},
		{
			{ itemID = 34603, groupID = 1, refLootEntry = 24723 }; --Distracting Blades
			{ itemID = 34602, groupID = 1, refLootEntry = 24723 }; --Eversong Cuffs
			{ itemID = 34808, groupID = 1, refLootEntry = 24723 }; --Gloves of Arcane Acuity
			{ itemID = 34799, groupID = 1, refLootEntry = 24723 }; --Hauberk of the War Bringer
			{ itemID = 34604, groupID = 1, refLootEntry = 24723 }; --Jaded Crystal Dagger
			{ itemID = 34601, groupID = 1, refLootEntry = 24723 }; --Shoulderplates of Everlasting Pain
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
		},
	},
	{
		Name = "Vexallus",
		WebID = {24744, "npc"},
		{
			{ itemID = 34605, groupID = 1, refLootEntry = 24744 }; --Breastplate of Fierce Survival
			{ itemID = 34810, groupID = 1, refLootEntry = 24744 }; --Cloak of Blade Turning
			{ itemID = 34606, groupID = 1, refLootEntry = 24744 }; --Edge of Oppression
			{ itemID = 34607, groupID = 1, refLootEntry = 24744 }; --Fel-tinged Mantle
			{ itemID = 34703, groupID = 1, refLootEntry = 24744 }; --Latro's Dancing Blade
			{ itemID = 34608, groupID = 1, refLootEntry = 24744 }; --Rod of the Blazing Lightning
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
		},
	},
	{
		Name = "Priestess Delrissa",
		WebID = {24560, "npc"},
		{
			{ itemID = 34789, groupID = 1, refLootEntry = 24560 }; --Bracers of Slaughter
			{ itemID = 34792, groupID = 1, refLootEntry = 24560 }; --Cloak of the Betrayed
			{ itemID = 34700, groupID = 1, refLootEntry = 24560 }; --Gauntlets of Divine Blessings
			{ itemID = 34791, groupID = 1, refLootEntry = 24560 }; --Gauntlets of the Tranquil Waves
			gap,
			{ itemID = 34473, minDifficulty = "Heroic" }, --Commendation of Kael'thas
			{ itemID = 34472, minDifficulty = "Heroic" }, --Shard of Contempt
			{ itemID = 34470, minDifficulty = "Heroic" }, --Timbal's Focusing Crystal
			{ itemID = 34471, minDifficulty = "Heroic" }, --Vial of the Sunwell
		},
		{
			{ itemID = 35756, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Cloak - Steelweave
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice

		},
	},
	{
		Name = "Kael'thas Sunstrider",
		WebID = {24664, "npc"},
		{
			{ itemID = 34612, groupID = 1, refLootEntry = 24664 }; --Greaves of the Penitent Knight
			{ itemID = 34615, groupID = 1, refLootEntry = 24664 }; --Netherforce Chestplate
			{ itemID = 34610, groupID = 1, refLootEntry = 24664 }; --Scarlet Sin'dorei Robes
			{ itemID = 34613, groupID = 1, refLootEntry = 24664 }; --Shoulderpads of the Silvermoon Retainer
			{ itemID = 34809, groupID = 1, refLootEntry = 24664 }; --Sunrage Treads
			{ itemID = 34807, groupID = 1, refLootEntry = 24664 }; --Sunstrider Warboots
			{ itemID = 34614, groupID = 1, refLootEntry = 24664 }; --Tunic of the Ranger Lord
			{ itemID = 34616, groupID = 2, refLootEntry = 24664 }; --Breeching Comet
			{ itemID = 34611, groupID = 2, refLootEntry = 24664 }; --Cudgel of Consecration
			{ itemID = 34625, groupID = 2, refLootEntry = 24664 }; --Kharmaa's Ring of Fate
			{ itemID = 34609, groupID = 2, refLootEntry = 24664 }; --Quickening Blade of the Princess
			gap,
			{ itemID = 34157 }, --Head of Kael'thas	
			{ itemID = 34160 }, --The Signet Ring of Prince Kael'thas
			gap,
			{ itemID = 35504 }, --Phoenix Hatchling
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 35513, minDifficulty = "Heroic"  }, --Swift White Hawkstrider
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 35516 }, --Sun Touched Satchel
		},
	}
}

AtlasLoot_Data["KarazhanCryptsTBC"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "The Karazhan Crypts",
	Type = "BCkarazhanCrypts",
	Index = 5,
	--Map = "Gnomeregan",
	{
		Name = "Cynfael",
		WebID = {254401,"npc"},
		{
			{ itemID = 255169 }, --Twinglaive of the Vampire Council
			{ itemID = 255212 }, --Twinglaive of Eternal Slumber
			{ itemID = 259322 }, --Purified Vitae Chalice
			{ itemID = 259365 }, --Funeral Trousers
			{ itemID = 259655 }, --Tombstone Cover
			{ itemID = 259741 }, --Deathsworn Spaulders
			{ itemID = 254068 }, --Sigil of Cynfael
		},
	},
	{
		Name = "Dryn Miel <The Second Eidolon>",
		WebID = {254413,"npc"},
		{
			{ itemID = 255677 }, --Sorrow of the Eclipse
			{ itemID = 255720 }, --Cryptsteel Maul
			{ itemID = 255809 }, --Dakrya, Hand of the Second Eidolon
			{ itemID = 257092 }, --Mourner's Cloak
			{ itemID = 258412 }, --Remembrance of Aegwynn
			{ itemID = 258836 }, --Missing Promise
			{ itemID = 259537 }, --Niko's Amulet
			{ itemID = 259698 }, --Funeral Mantle
			{ itemID = 259827 }, --Soulsteel Shoulderguards
			{ itemID = 259870 }, --Blossom of Sorrow
			{ itemID = 228836 }, --Soul Cage Reliquary
			{ itemID = 254077, contentsPreview = {{1414603}, {1414604}, {1414605}, {1414606}} }, --Forgotten Core
			{ itemID = 254067 }, --Sigil of Dryn Miel
			{ itemID = 1179133 }, --Reins of the Mawsworn Charger
		},

	},
	{
		Name = "Kurgoth Doomreaver",
		WebID = {254406,"npc"},
		{
			{ itemID = 255917 }, --Forgiveness
			{ itemID = 257135 }, --Drape of the Horse
			{ itemID = 259494 }, --Soulsteel Legplates
			{ itemID = 259580 }, --Forgotten Aegis of Kings
			{ itemID = 259913 }, --Concentrated DeathRecap_GetEvents
			{ itemID = 254069 }, --Sigil of Kurgoth Doomreaver
		},
	},
	{
		Name = "The Judgement of Sinners",
		WebID = {254405,"npc"},
		{
			{ itemID = 255301 }, --Ghoul Spine Cleaver
			{ itemID = 255373 }, --Conduit of Sinners
			{ itemID = 255509 }, --Spinesplinter Arbalest
			{ itemID = 259408 }, --Deathsworn Pants
			{ itemID = 259784 }, --Bonelink Mantle
			{ itemID = 254070 }, --Sigil of Sinners
		},
	},
	{
		Name = "Takan Velor <The Hero of Deadwind>",
		WebID = {654564,"npc"},
		{
			{ itemID = 260936 }, --Soulfire Torch
			{ itemID = 259966 }, --Funeral Handwraps
			{ itemID = 260009 }, --Deathsworn Handguards
			{ itemID = 260052 }, --Bonelink Grasps
			{ itemID = 260095 }, --Soulsteel Gauntlets
		},
	},
	{
		Name = "Captain Taveir (Rare Spawn)",
		WebID = {254495,"npc"},
		{
			{ itemID = 257178 }, -- Funeral Treads
			{ itemID = 257221 }, -- Deathsworn Boots
			{ itemID = 257673 }, -- Bonelink Greaves
			{ itemID = 257716 }, -- Soulsteel Sabatons
			{ itemID = 254080 }, -- Sigil of Captain Taveir
		},
	},
	{
		Name = "Kelivex Autumnvale (Rare Spawn)",
		WebID = {254493,"npc"},
		{
			{ itemID = 257178 }, -- Funeral Treads
			{ itemID = 257221 }, -- Deathsworn Boots
			{ itemID = 257673 }, -- Bonelink Greaves
			{ itemID = 257716 }, -- Soulsteel Sabatons
			{ itemID = 254078 }, -- Sigil of Kelivex Autumnvale
		},
	}
}

--------------------------------------------
---Blackrock Mountain: Blackrock Caverns ---
--------------------------------------------

AtlasLoot_Data["BlackrockCavernsTBC"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Blackrock Caverns",
	Type = "BCDungeon",
	--Map = "BlackrockDepths",
	{
		Name = "Ascendant Lord Obsidius",
		WebID = {39705,"npc"},
		{
			{ itemID = 252075 }, --Amber Messenger
			{ itemID = 252711 }, --Witching Hourglass
			{ itemID = 252771 }, --Crepuscular Shield
			{ itemID = 251946 }, --Raz's Pauldrons
			{ itemID = 251989 }, --Twitching Shadows
			{ itemID = 252032 }, --Carrier Wave Pendant
			{ itemID = 252118 }, --Clutches of Dying Light
			{ itemID = 252161 }, --Willowy Crown
			{ itemID = 252615 }, --Kyrstel Mantle
			{ itemID = 6011 }, --Recipe: Flask of Mighty Power
		},
	},
	{
		Name = "Beauty",
		WebID = {39700,"npc"},
		{
			{ itemID = 250876 }, --Beauty's Favorite Bone
			{ itemID = 250663 }, --Beauty's Chew Toy
			{ itemID = 250706 }, --Beauty's Plate
			{ itemID = 250749 }, --Beauty's Silken Ribbon
			{ itemID = 250833 }, --Kibble
		},
	},
	{
		Name = "Corla, Herald of Twilight",
		WebID = {39679,"npc"},
		{
			{ itemID = 247779 }, --Grace of the Herald
			{ itemID = 247827 }, --Corla's Baton
			{ itemID = 46418 }, --Renouncer's Cowl
			{ itemID = 46461 }, --Armbands of Change
			{ itemID = 247736 }, --Signet of Transformation
		},
	},
	{
		Name = "Karsh Steelbender <Twilight Armorer>",
		WebID = {39698,"npc"},
		{
			{ itemID = 250620 }, --Steelbender's Masterpiece
			{ itemID = 247936 }, --Bracers of Cooled Anger
			{ itemID = 249391 }, --Heat Wave Leggings
			{ itemID = 250121 }, --Burned Gatherings
			{ itemID = 250212 }, --Quicksilver Amulet
			{ itemID = 1180884 }, --Draconic Warhorn: Karsh Steelbender
		},
	},
	{
		Name = "Rom'ogg Bonecrusher",
		WebID = {39665,"npc"},
		{
			{ itemID = 251860 }, --Torturer's Mercy
			{ itemID = 251903 }, --Shield of the Iron Maiden
			{ itemID = 251086 }, --Inquisition Robes
			{ itemID = 251774 }, --Manacles of Pain
			{ itemID = 251817 }, --Skullcracker Ring
		},
	}
}

AtlasLoot_Data["FrozenReachTBC"] = {
	Module = "AtlasLoot_OriginalWoW",
	Name = "Frozen Reach",
	Type = "ManastormTBC",
	{
		Name = "Frozen Reach",
		WebID = {1298888,"item"},
		{
			{ itemID = 1529392 }, --Frigid Bow of the Bonded Souls
			{ itemID = 1529391 }, --Reclaimed Blade of the Frozen Sepulcher
			{ itemID = 1529390 }, --Arktos' Resillience
			{ itemID = 1529389 }, --Call of the Sepulcher
			{ itemID = 1529388 }, --Frozen Vengeance
			{ itemID = 1529387 }, --Frozen Forgiveness
			{ itemID = 1529386 }, --Alva's Kinship Ring
			{ itemID = 1529385 }, --Signet of Arktos
			{ itemID = 1529384 }, --Ring of Bonded Souls
			{ itemID = 1529383 }, --Ring of the Frozen Sepulcher
			{ itemID = 1529382 }, --Alva's Gift
			{ itemID = 1529381 }, --Beartooth Pendant
			{ itemID = 1529380 }, --Necklace of Frozen Reach
			{ itemID = 1529379 }, --Amulet of the Bonded Souls
			{ itemID = 1519393 }, --Beastmaster's Whistle: Arktos
			{ itemID = 49095 }, --Incarnation: Arktos
			{ itemID = 49093 }, --Arktos
		},
	}
}
-------------------------------------
---Sunwell Isle: Sunwell Plateau ---
-------------------------------------

AtlasLoot_Data["SunwellPlateau"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Sunwell Isle" .. ": " .. "Sunwell Plateau",
	DisplayName = "Sunwell Plateau",
	Type = "BCRaid",
	Map = "SunwellPlateau",
	{
		Name = "Kalecgos",
		WebID = {24892,"npc"},
		{
			{ itemID = 34170, groupID = 2, contentsPreview = {{34386}} }, --Pantaloons of Calming Strife
			{ itemID = 34169, groupID = 2, contentsPreview = {{34384}} }, --Breeches of Natural Aggression
			{ itemID = 34168, groupID = 2 }, --Starstalker Legguards
			{ itemID = 34167, groupID = 2, contentsPreview = {{34382}} }, --Legplates of the Holy Juggernaut
			{ itemID = 34166, groupID = 2 }, --Band of Lucent Beams
			{ itemID = 34165, groupID = 2 }, --Fang of Kalecgos
			{ itemID = 34164, groupID = 2 }, --Dragonscale-Encrusted Longblade
		},
		{
			{ itemID = 34848, lootTable = {"T6WRIST","Token"}}, --Bracers of the Forgotten Conqueror
			gap,
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63978, groupID = 15 }, --Sigil
		},
	},
	{
		Name = "Brutallus",
		WebID = {24882,"npc"},
		{
			{ itemID = 34177, groupID = 2, refLootEntry = 24882 }, --Clutch of Demise
			{ itemID = 34178, groupID = 2, refLootEntry = 24882 }, --Collar of the Pit Lord
			{ itemID = 34180, groupID = 2, refLootEntry = 24882, contentsPreview = {{34381},{11517}} }, --Felfury Legplates
			{ itemID = 34179, groupID = 2, refLootEntry = 24882 }, --Heart of the Pit
			{ itemID = 34181, groupID = 2, refLootEntry = 24882 }, --Leggings of Calamity
			{ itemID = 34176, groupID = 2, refLootEntry = 24882 }, --Reign of Misery
			{ itemID = 11523, groupID = 2, refLootEntry = 24882 }, --Trophy Scar Band
			--{ itemID = 34381, groupID = 99, refLootEntry = 24882 }, --Felstrength Legplates
		},
		{			
			{ itemID = 34853, lootTable = {"T6WAIST","Token"}, groupID = 1 }, --Belt of the Forgotten Conqueror
			gap,
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 612859, groupID = 16 }, --Summoning Stone - Brutallus
			{ itemID = 63976, groupID = 15 }, --Sigil
		},
	},
	{
		Name = "Felmyst",
		WebID = {25038,"npc"},
		{

			{ itemID = 34352, groupID = 2, refLootEntry = 25038 }, --Borderland Fortress Grips
			{ itemID = 34188, groupID = 2, refLootEntry = 25038, contentsPreview = {{34385}}  }, --Leggings of the Immortal Night
			--{ itemID = 34385, groupID = 99, refLootEntry = 25038 }, --Leggings of the Immortal Beastmaster
			{ itemID = 34186, groupID = 2, refLootEntry = 25038, contentsPreview = {{34383},{11518}}  }, --Chain Links of the Tumultuous Storm
			--{ itemID = 34383, groupID = 99, refLootEntry = 25038 }, --Kilt of Spiritual Reconstruction
			{ itemID = 34184, groupID = 2, refLootEntry = 25038 }, --Brooch of the Highborne
			gap,
			{ itemID = 34185, groupID = 2, refLootEntry = 25038 }, --Sword Breaker's Bulwark
			{ itemID = 34182, groupID = 2, refLootEntry = 25038 }, --Grand Magister's Staff of Torrents
		},
		{
			{ itemID = 34856, lootTable = {"T6FEET","Token"}, groupID = 1 }, --Boots of the Forgotten Conqueror
			gap,
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63980, groupID = 15 }, --Sigil
		},
	},
	{
		Name = "Grand Warlock Alythess",
		WebID = {25166,"npc"},
		{
			{ itemID = 34205, groupID = 1, refLootEntry = 25166  }, --Shroud of Redeemed Souls
			{ itemID = 34190, groupID = 2, refLootEntry = 25166  }, --Crimson Paragon's Cover
			{ itemID = 34210, groupID = 1, refLootEntry = 25166  }, --Amice of the Convoker
			{ itemID = 34202, groupID = 1, refLootEntry = 25166 , contentsPreview = {{34393}} }, --Shawl of Wonderment
			{ itemID = 34209, groupID = 1, refLootEntry = 25166 , contentsPreview = {{34391}} }, --Spaulders of Reclamation
			{ itemID = 34195, groupID = 2, refLootEntry = 25166 , contentsPreview = {{34392}} }, --Shoulderpads of Vehemence
			{ itemID = 34194, groupID = 2, refLootEntry = 25166  }, --Mantle of the Golden Forest
			{ itemID = 34208, groupID = 1, refLootEntry = 25166 , contentsPreview = {{34390},{11433}} }, --Equilibrium Epaulets
			{ itemID = 34192, groupID = 2, refLootEntry = 25166 , contentsPreview = {{34388}} }, --Pauldrons of Perseverance
			{ itemID = 34193, groupID = 1, refLootEntry = 25166 , contentsPreview = {{34389},{11483}} }, --Spaulders of the Thalassian Savior
			{ itemID = 34204, groupID = 1, refLootEntry = 25166  }, --Amulet of Unfettered Magics
			{ itemID = 34189, groupID = 2, refLootEntry = 25166  }, --Band of Ruinous Delight

		},
		{
			{ itemID = 34206, groupID = 1, refLootEntry = 25166  }, --Book of Highborne Hymns
			{ itemID = 34197, groupID = 2, refLootEntry = 25166  }, --Shiv of Exsanguination
			{ itemID = 34199, groupID = 1, refLootEntry = 25166  }, --Archon's Gavel
			{ itemID = 34203, groupID = 2, refLootEntry = 25166  }, --Grip of Mannoroth
			{ itemID = 34198, groupID = 2, refLootEntry = 25166  }, --Stanchion of Primal Instinct
			{ itemID = 34196, groupID = 2, refLootEntry = 25166  }, --Golden Bow of Quel'Thalas
			gap,
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 612860 ,groupID = 16, refLootEntry = 25166  }, --Summoning Stone - Sacro\'lythess
			{ itemID = 63984, groupID = 15, refLootEntry = 25166  }, --Sigil
			{ itemID = 63985, groupID = 15, refLootEntry = 25166  }, --Sigil
		},
	},
	{
		Name = "High Commander Arynyes <Shadowsword Captain>",
		WebID = {25837,"npc"},
		{
			{ itemID = 35282, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Dominance
			{ itemID = 35283, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Salvation
			{ itemID = 35284, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Triumph
			{ itemID = 35290, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Conquest
			{ itemID = 35291, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Salvation
			{ itemID = 35292, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Triumphs
		},
		{
			{ itemID = 34848, lootTable = {"T6WRIST","Token"}, groupID = 1}, --Bracers of the Forgotten Conqueror
			{ itemID = 34853, lootTable = {"T6WAIST","Token"}, groupID = 1 }, --Belt of the Forgotten Conqueror
			{ itemID = 34856, lootTable = {"T6FEET","Token"}, groupID = 1 }, --Boots of the Forgotten Conqueror
			gap,
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
	},
	{
		Name = "M'uru",
		WebID = {25741,"npc"}, --Entropius: 25840
		{
			{ itemID = 34232, groupID = 1 }, --Fel Conquerer Raiments
			{ itemID = 34233, groupID = 1, contentsPreview = {{34399}} }, --Robes of Faltered Light
			{ itemID = 34212, groupID = 1, contentsPreview = {{34398}} }, --Sunglow Vest
			{ itemID = 34211, groupID = 2, contentsPreview = {{34397}} }, --Harness of Carnal Instinct
			{ itemID = 34234, groupID = 2, contentsPreview = {{34408}} }, --Shadowed Gauntlets of Paroxysm
			{ itemID = 34229, groupID = 1, contentsPreview = {{34396},{11485}} }, --Garments of Serene Shores
			{ itemID = 34228, groupID = 2 }, --Vicious Hawkstrider Hauberk
			{ itemID = 34215, groupID = 2, contentsPreview = {{34394},{11484}} }, --Warharness of Reckless Fury
			{ itemID = 34240, groupID = 1 }, --Gauntlets of the Soothed Soul
			{ itemID = 34216, groupID = 2, contentsPreview = {{34395}} }, --Valiant Judicator's Chestguard
			gap,
			{ itemID = 34213, groupID = 2 }, --Ring of Hardened Resolve
			{ itemID = 34230, groupID = 1 }, --Ring of Omnipotence
		},
		{
			{ itemID = 34427, groupID = 2 }, --Blackened Naaru Sliver
			{ itemID = 34430, groupID = 1 }, --Glimmering Naaru Sliver
			{ itemID = 34429, groupID = 1 }, --Shifting Naaru Sliver
			{ itemID = 34428, groupID = 2 }, --Steely Naaru Sliver
			gap,
			{ itemID = 34214, groupID = 2 }, --Muramasa
			{ itemID = 34231, groupID = 1 }, --Aegis of Angelic Fortune
			gap,
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 64004, groupID = 15 }, --Sigil
		},
	},
	{
		Name = "Kil'jaeden",
		WebID = {25315,"npc"},
		{
			{ itemID = 34241, groupID = 4, refLootEntry = 25315 }, --Cloak of Unforgivable Sin
			{ itemID = 34242, groupID = 3, refLootEntry = 25315 }, --Tattered Cape of Antonidas
			{ itemID = 34339, groupID = 3, refLootEntry = 25315, contentsPreview = {{34405}} }, --Cowl of Light's Purity
			{ itemID = 34340, groupID = 3, refLootEntry = 25315 }, --Dark Conjuror's Collar
			{ itemID = 34342, groupID = 3, refLootEntry = 25315, contentsPreview = {{34406}} }, --Handguards of the Dawn
			{ itemID = 34344, groupID = 3, refLootEntry = 25315 }, --Handguards of the Defiled Worlds
			{ itemID = 34244, groupID = 4, refLootEntry = 25315, contentsPreview = {{34404}} }, --Duplicitous Guise
			{ itemID = 34245, groupID = 3, refLootEntry = 25315, contentsPreview = {{34403}} }, --Cover of Ursol the Wise
			{ itemID = 34333, groupID = 4, refLootEntry = 25315 }, --Coif of Alleria
			{ itemID = 34332, groupID = 3, refLootEntry = 25315, contentsPreview = {{34402},{10736}} }, --Cowl of Gul'dan
			{ itemID = 34402, groupID = 3, refLootEntry = 25315 }, --Shroud of Chieftain Ner'zhul
			{ itemID = 34343, groupID = 4, refLootEntry = 25315 }, --Thalassian Ranger Gauntlets
			{ itemID = 34243, groupID = 3, refLootEntry = 25315, contentsPreview = {{34401}} }, --Helm of Burning Righteousness
			{ itemID = 34345, groupID = 4, refLootEntry = 25315, contentsPreview = {{10735},{34400}} }, --Crown of Anasterian
			{ itemID = 34341, groupID = 4, refLootEntry = 25315, contentsPreview = {{11520}} }, --Borderland Paingrips
		},
		{
			{ itemID = 34329, groupID = 2, refLootEntry = 25315 }, --Crux of the Apocalypse
			{ itemID = 34247, groupID = 2, refLootEntry = 25315 }, --Apolyon, the Soul-Render
			{ itemID = 34335, groupID = 2, refLootEntry = 25315 }, --Hammer of Sanctification
			{ itemID = 34331, groupID = 2, refLootEntry = 25315 }, --Hand of the Deceiver
			{ itemID = 34336, groupID = 2, refLootEntry = 25315 }, --Sunflare
			{ itemID = 34337, groupID = 2, refLootEntry = 25315 }, --Golden Staff of the Sin'dorei
			gap,
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 450010, groupID = 1, refLootEntry = 25315,desc = "Quest Requirements", contentsPreview = {{450009},{450010},{34334}} }, --Thori'dal, the Stars' Fury
			{ itemID = 63988, groupID = 15, refLootEntry = 25315 }, --Sigil
			{ itemID = 252676, groupID = 16, refLootEntry = 25315 }, --Essence of the blue Flight
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 34351, groupID = 1, contentsPreview = {{34407}} }, --Tranquil Majesty Wraps
			{ itemID = 34350, groupID = 1, contentsPreview = {{34409},{11519}} }, --Gauntlets of the Ancient Shadowmoon
			{ itemID = 35733, groupID = 1 }, --Ring of Harmonic Beauty
			{ itemID = 34183, groupID = 1 }, --Shivering Felspine
			{ itemID = 34346, groupID = 1 }, --Mounting Vengeance
			{ itemID = 34349, groupID = 1 }, --Blade of Life's Inevitability
			{ itemID = 34348, groupID = 1 }, --Wand of Cleansing Light
			{ itemID = 34347, groupID = 1 }, --Wand of the Demonsoul
			{ itemID = 35273 }, --Study of Advanced Smelting
			{ itemID = 34664 }, --Sunmote
		},
	},
	{
		Name = "Jewelcrafting",
		{
			{ itemID = 32228, groupID = 3, refLootEntry = 25315 }, --Empyrean Sapphire
			{ itemID = 32231, groupID = 3, refLootEntry = 25315 }, --Pyrestone
			{ itemID = 32229, groupID = 3, refLootEntry = 25315 }, --Lionseye
			{ itemID = 32249, groupID = 3, refLootEntry = 25315 }, --Seaspray Emerald
			{ itemID = 32230, groupID = 3, refLootEntry = 25315 }, --Shadowsong Amethyst
			{ itemID = 32227, groupID = 3, refLootEntry = 25315 }, --Crimson Spinel
			{ itemID = 35198, droprate = "0.06%" }, --Design: Loop of Forged Power
			{ itemID = 35201, droprate = "0.06%" }, --Design: Pendant of Sunfire
			{ itemID = 35199, droprate = "0.06%" }, --Design: Ring of Flowing Life
			{ itemID = 35202, droprate = "0.06%" }, --Design: Amulet of Flowing Life
			{ itemID = 35200, droprate = "0.06%" }, --Design: Hard Khorium Band
			{ itemID = 35203, droprate = "0.06%" }, --Design: Hard Khorium Choker
		},
	},
	{
		Name = "Patterns/Plans",
		{
			{ itemID = 35212, droprate = "0.06%" }, --Pattern: Leather Gauntlets of the Sun
			{ itemID = 35216, droprate = "0.06%" }, --Pattern: Leather Chestguard of the Sun
			{ itemID = 35213, droprate = "0.06%" }, --Pattern: Fletcher's Gloves of the Phoenix
			{ itemID = 35217, droprate = "0.06%" }, --Pattern: Pattern: Embrace of the Phoenix
			{ itemID = 35214, droprate = "0.06%" }, --Pattern: Gloves of Immortal Dusk
			{ itemID = 35218, droprate = "0.06%" }, --Pattern: Carapace of Sun and Shadow
			{ itemID = 35215, droprate = "0.06%" }, --Pattern: Sun-Drenched Scale Gloves
			{ itemID = 35219, droprate = "0.06%" }, --Pattern: Sun-Drenched Scale Chestguard
			{ itemID = 35204, droprate = "0.06%" }, --Pattern: Sunfire Handwraps
			{ itemID = 35206, droprate = "0.06%" }, --Pattern: Sunfire Robe
			{ itemID = 35205, droprate = "0.06%" }, --Pattern: Hands of Eternal Light
			{ itemID = 35207, droprate = "0.06%" }, --Pattern: Robe of Eternal Light
			{ itemID = 35208, droprate = "0.06%" }, --Plans: Sunblessed Gauntlets
			{ itemID = 35210, droprate = "0.06%" }, --Plans: Sunblessed Breastplate
			{ itemID = 35209, droprate = "0.06%" }, --Plans: Hard Khorium Battlefists
			{ itemID = 35211, droprate = "0.06%" }, --Plans: Hard Khorium Battleplate
			{ itemID = 35186, droprate = "0.06%" }, --Schematic: Annihilator Holo-Gogs
			{ itemID = 35187, droprate = "0.06%" }, --Schematic: Justicebringer 3000 Specs
			{ itemID = 35189, droprate = "0.06%" }, --Schematic: Powerheal 9000 Lens
			{ itemID = 35190, droprate = "0.06%" }, --Schematic: Hyper-Magnified Moon Specs
			{ itemID = 35191, droprate = "0.06%" }, --Schematic: Wonderheal XT68 Shades
			{ itemID = 35192, droprate = "0.06%" }, --Schematic: Primal-Attuned Goggles
			{ itemID = 35193, droprate = "0.06%" }, --Schematic: Lightning Etched Specs
			{ itemID = 35194, droprate = "0.06%" }, --Schematic: Surestrike Goggles v3.0
			{ itemID = 35195, droprate = "0.06%" }, --Schematic: Mayhem Projection Goggles
			{ itemID = 35196, droprate = "0.06%" }, --Schematic: Hard Khorium Goggles
			{ itemID = 35197, droprate = "0.06%" }, --Schematic: Quad Deathblow X44 Goggles
		},
	}
}

----------------------------------
---Tempest Keep: The Arcatraz ---
----------------------------------

AtlasLoot_Data["TKArc"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Tempest Keep" .. ": " .. "The Arcatraz",
	DisplayName = "The Arcatraz",
	Type = "BCDungeon",
	Map = "TempestKeepArcatraz",
	{
		Name = "Zereketh the Unbound",
		WebID = {40080, "npc"},
		{
			{ itemID = 28373, groupID = 1, refLootEntry = 40080 }; --Cloak of Scintillating Auras
			{ itemID = 28372, groupID = 1, refLootEntry = 40080 }; --Idol of Feral Shadows
			{ itemID = 28374, groupID = 1, refLootEntry = 40080 }; --Mana-Sphere Shoulderguards
			{ itemID = 28384, groupID = 1, refLootEntry = 40080 }; --Outland Striders
			{ itemID = 28375, groupID = 1, refLootEntry = 40080 }; --Rubium War-Girdle
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
	},
	{
		Name = "Wrath-Scryer Soccothrates",
		WebID = {40081, "npc"},
		{
			{ itemID = 28397, groupID = 1, refLootEntry = 40081 }; --Emberhawk Crossbow
			{ itemID = 28396, groupID = 1, refLootEntry = 40081 }; --Gloves of the Unbound
			{ itemID = 28394, groupID = 1, refLootEntry = 40081 }; --Ryngo's Band of Ingenuity
			{ itemID = 28398, groupID = 1, refLootEntry = 40081 }; --The Sleeper's Cord
			{ itemID = 28393, groupID = 1, refLootEntry = 40081 }; --Warmaul of Infused Light
			{ itemID = 2076655, groupID = 1, refLootEntry = 2076655 }; --Axe of Felfire Reckoning
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
	},
	{
		Name = "Dalliah the Doomsayer",
		WebID = {40082, "npc"},
		{
			{ itemID = 28387, groupID = 1, refLootEntry = 40082 }; --Lamp of Peaceful Repose
			{ itemID = 28386, groupID = 1, refLootEntry = 40082 }; --Nether Core's Control Rod
			{ itemID = 28392, groupID = 1, refLootEntry = 40082 }; --Reflex Blades
			{ itemID = 28390, groupID = 1, refLootEntry = 40082 }; --Thatia's Self-Correcting Gauntlets
			{ itemID = 28391, groupID = 1, refLootEntry = 40082 }; --Worldfire Chestguard
			{ itemID = 2076654, groupID = 1, refLootEntry = 2076654 }; --Doomsayer's Shadow Blade
			gap,
			{ itemID = 24308 }, --Pattern: Whitemend Pants" 
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
	},
	{
		Name = "Harbinger Skyriss",
		WebID = {25004, "npc"},
		{
			{ itemID = 28205, groupID = 2, refLootEntry = 25004 }; --Breastplate of the Bold
			{ itemID = 244872, groupID = 2, refLootEntry = 25004 }; --Breastplate of the Sentinel
			{ itemID = 28419, groupID = 2, refLootEntry = 25004 }; --Choker of Fluid Thought
			{ itemID = 28403, groupID = 2, refLootEntry = 25004 }; --Doomplate Chestguard
			{ itemID = 28407, groupID = 2, refLootEntry = 25004 }; --Elementium Band of the Sentry
			{ itemID = 28413, groupID = 2, refLootEntry = 25004 }; --Hallowed Crown
			{ itemID = 28414, groupID = 2, refLootEntry = 25004 }; --Helm of Assassination
			{ itemID = 28415, groupID = 2, refLootEntry = 25004 }; --Hood of Oblivion
			{ itemID = 28416, groupID = 2, refLootEntry = 25004 }; --Hungering Spineripper
			{ itemID = 28412, groupID = 2, refLootEntry = 25004 }; --Lamp of Peaceful Radiance
			{ itemID = 28418, groupID = 2, refLootEntry = 25004 }; --Shiffar's Nexus-Horn
			{ itemID = 28406, groupID = 2, refLootEntry = 25004 }; --Sigil-Laced Boots
			{ itemID = 28231, groupID = 2, refLootEntry = 25004 }; --Tidefury Chestpiece
		},
		{
			{ itemID = 29241, minDifficulty = "Heroic" }, --Belt of Depravity
			{ itemID = 29248, minDifficulty = "Heroic" }, --Shadowstep Striders
			{ itemID = 29252, minDifficulty = "Heroic" }, --Bracers of Dignity
			{ itemID = 29360, minDifficulty = "Heroic" }, --Vileblade of the Betrayer
			{ itemID = 33861, minDifficulty = "Heroic" }, --The Scroll of Skyriss
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
			gap,
			{ itemID = 63295 } --Sigil of Harbinger Skyriss

		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 24172 }, --Design: Coronet of Verdant Flame
			{ itemID = 22920 }, --Recipe: Major Fire Protection Potion
			{ itemID = 21906 }, --Pattern: Arcanoweave Boots
			{ itemID = 23606 }, --Plans: Felsteel Leggings
			{ itemID = 22556 }, --Formula: Enchant 2H Weapon - Major Agility
			{ itemID = 29672 }, --Pattern: Flame Armor Kit
			{ itemID = 21905 }, --Pattern: Arcanoweave Bracers
		},
		{
			{ itemID = 30824 }, --Overcharged Manacell
			gap,
			{ itemID = 24488 }, --Third Key Fragment
		},
	}
}

----------------------------------
---Tempest Keep: The Botanica ---
----------------------------------

AtlasLoot_Data["TKBot"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Tempest Keep" .. ": " .. "The Botanica",
	DisplayName = "The Botanica",
	Type = "BCDungeon",
	Map = "TempestKeepBotanica",
	{
		Name = "Commander Sarannis",
		WebID = {40070,"npc"},
		{
			{ itemID = 28296, groupID = 1, refLootEntry = 40070 }; --Libram of the Lightbringer
			{ itemID = 28304, groupID = 1, refLootEntry = 40070 }; --Prismatic Mittens of Mending
			{ itemID = 28311, groupID = 1, refLootEntry = 40070 }; --Revenger
			{ itemID = 28301, groupID = 1, refLootEntry = 40070 }; --Syrannis' Mystic Sheen
			{ itemID = 28306, groupID = 1, refLootEntry = 40070 }; --Towering Mantle of the Hunt
			gap,
			{ itemID = 2066535, groupID = 1, refLootEntry = 2061739 }; --Belt of Botanical Guardianship
			{ itemID = 2064668, groupID = 1, refLootEntry = 2061739 }; --Breastplate of Devastating Confluence
			{ itemID = 2073036, groupID = 1, refLootEntry = 2061739 }; --Gauntlets of Tactical Arcana
			{ itemID = 2070723, groupID = 1, refLootEntry = 2061739 }; --Greaves of Arcane Vitality
			{ itemID = 2068645, groupID = 1, refLootEntry = 2061739 }; --Leggings of Enchanted Flora
			{ itemID = 2061739, groupID = 1, refLootEntry = 2061739 }; --Shoulderguards of Arcane Resonance
			{ itemID = 2076308, groupID = 1, refLootEntry = 2061739 }; --Sword of Sarannis' Resolve
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
			gap,
			{ itemID = 28769 }, --The Keystone
		},
	},
	{
		Name = "High Botanist Freywinn",
		WebID = {40071,"npc"},
		{
			{ itemID = 28316, groupID = 1, refLootEntry = 40071 }; --Aegis of the Sunbird
			{ itemID = 28321, groupID = 1, refLootEntry = 40071 }; --Enchanted Thorium Torque
			{ itemID = 28317, groupID = 1, refLootEntry = 40071 }; --Energis Armwraps
			{ itemID = 28318, groupID = 1, refLootEntry = 40071 }; --Obsidian Clodstompers
			{ itemID = 28315, groupID = 1, refLootEntry = 40071 }; --Stormreaver Warblades
			gap,
			{ itemID = 2066543, groupID = 1, refLootEntry = 2060635 }; --Belt of Floral Synthesis
			{ itemID = 2060635, groupID = 1, refLootEntry = 2060635 }; --Freywinn's Arcane Blossom Helm
			{ itemID = 2070732, groupID = 1, refLootEntry = 2060635 }; --Freywinn's Sprouting Step Sandals
			{ itemID = 2061744, groupID = 1, refLootEntry = 2060635 }; --Freywinn's Verdant Embrace Shoulderpads
			{ itemID = 2068654, groupID = 1, refLootEntry = 2060635 }; --Greaves of Nature's Wrath
			{ itemID = 2064674, groupID = 1, refLootEntry = 2060635 }; --Robes of Botanical Mastery
			{ itemID = 2071776, groupID = 1, refLootEntry = 2060635 }; --Wristwraps of Thornwoven Arcanasmith
		},
		{
			{ itemID = 23617 }, --Plans: Earthpeace Breastplate
			gap,
			{ itemID = 31744 }, --Botanist's Field Guide
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
	},
	{
		Name = "Thorngrin the Tender",
		WebID = {40072,"npc"},
		{
			{ itemID = 28327, groupID = 1, refLootEntry = 40072 }; --Arcane Netherband
			{ itemID = 28325, groupID = 1, refLootEntry = 40072 }; --Dreamer's Dragonstaff
			{ itemID = 28324, groupID = 1, refLootEntry = 40072 }; --Gauntlets of Cruel Intention
			{ itemID = 28323, groupID = 1, refLootEntry = 40072 }; --Ring of Umbral Doom
			{ itemID = 28322, groupID = 1, refLootEntry = 40072 }; --Runed Dagger of Solace
			gap,
			{ itemID = 24310 }, --Pattern: Battlecast Pants
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
	},
	{
		Name = "Laj",
		WebID = {40072,"npc"},
		{
			{ itemID = 28339, groupID = 1, refLootEntry = 40073 }; --Boots of the Shifting Sands
			{ itemID = 28338, groupID = 1, refLootEntry = 40073 }; --Devil-Stitched Leggings
			{ itemID = 28340, groupID = 1, refLootEntry = 40073 }; --Mantle of Autumn
			{ itemID = 28328, groupID = 1, refLootEntry = 40073 }; --Mithril-Bark Cloak
			{ itemID = 241962, groupID = 1, refLootEntry = 40073 }; --Spaulders of the Divine
			{ itemID = 242681, groupID = 1, refLootEntry = 40073 }; --Spaulders of the Just
			{ itemID = 27739, groupID = 1, refLootEntry = 40073 }; --Spaulders of the Righteous
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
	},
	{
		Name = "Warp Splinter",
		WebID = {40074,"npc"},
		{
			{ itemID = 28367, groupID = 1, refLootEntry = 40074 }; --Greatsword of Forlorn Visions
			{ itemID = 28371, groupID = 1, refLootEntry = 40074 }; --Netherfury Cape
			{ itemID = 28342, groupID = 1, refLootEntry = 40074 }; --Warp Infused Drape
			{ itemID = 28345, groupID = 1, refLootEntry = 40074 }; --Warp Splinter's Thorn
			{ itemID = 28347, groupID = 1, refLootEntry = 40074 }; --Warpscale Leggings
			{ itemID = 28341, groupID = 1, refLootEntry = 40074 }; --Warpstaff of Arcanum
			{ itemID = 28370, groupID = 1, refLootEntry = 40077 }; --Bangle of Endless Blessings
			{ itemID = 28228, groupID = 1, refLootEntry = 40077 }; --Beast Lord Cuirass
			{ itemID = 245746, groupID = 1, refLootEntry = 40077 }; --Helm of the Tides
			{ itemID = 28229, groupID = 1, refLootEntry = 40077 }; --Incanter's Robe
			{ itemID = 28343, groupID = 1, refLootEntry = 40077 }; --Jagged Bark Pendant
			{ itemID = 28348, groupID = 1, refLootEntry = 40077 }; --Moonglade Cowl
			{ itemID = 28349, groupID = 1, refLootEntry = 40077 }; --Tidefury Helm
			{ itemID = 247693, groupID = 1, refLootEntry = 40077 }; --Verdant's Cowl
			{ itemID = 28350, groupID = 1, refLootEntry = 40077 }; --Warhelm of the Bold
		},
		{
			{ itemID = 244915, groupID = 1, refLootEntry = 40077 }; --Warhelm of the Sentinel
			gap,
			{ itemID = 29258, minDifficulty = "Heroic" }, --Boots of Ethereal Manipulation
			{ itemID = 29262, minDifficulty = "Heroic" }, --Boots of the Endless Hunt
			{ itemID = 32072, minDifficulty = "Heroic" }, --Gauntlets of Dissension
			{ itemID = 29359, minDifficulty = "Heroic" }, --Feral Staff of Lashing
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
			gap,
			{ itemID = 24311 }, --Pattern: Whitemend Hood
			gap,
			{ itemID = 31085 }, --Top Shard of the Arcatraz Key
			{ itemID = 33859, minDifficulty = "Heroic" }, --Warp Splinter Clipping
		},
	}
}



----------------------------------
---Tempest Keep: The Mechanar ---
----------------------------------

AtlasLoot_Data["TKMech"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Tempest Keep" .. ": " .. "The Mechanar",
	DisplayName = "The Mechanar",
	Type = "BCDungeon",
	Map = "TempestKeepMechanar",
	{
		Name = "Cache of the Legion",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Cache of the Legion" },
			{ itemID = 28249 }, --Capacitus' Cloak of Calibration
			{ itemID = 28250 }, --Vestia's Pauldrons of Inner Grace
			{ itemID = 28252 }, --Bloodfyre Robes of Annihilation
			{ itemID = 28251 }, --Boots of the Glade-Keeper
			{ itemID = 28248 }, --Totem of the Void
			gap,
			{ itemID = 29434 }, --Badge of Justice
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Gatewatcher Gyro-Kill" },
			{ itemID = 30436 }, --Jagged Blue Crystal
			gap,
			{ icon = "INV_Box_01", name = color.WHITE.. "Gatewatcher Iron-Hand" },
			{ itemID = 30437 }, --Jagged Red Crystal
		},
	},
	{
		Name = "Mechano-Lord Capacitus",
		{
			{ itemID = 28257, groupID = 1, refLootEntry = 40060 }; --Hammer of the Penitent
			{ itemID = 28255, groupID = 1, refLootEntry = 40060 }; --Lunar-Claw Pauldrons
			{ itemID = 28253, groupID = 1, refLootEntry = 40060 }; --Plasma Rat's Hyper-Scythe
			{ itemID = 28256, groupID = 1, refLootEntry = 40060 }; --Thoriumweave Cloak
			{ itemID = 28254, groupID = 1, refLootEntry = 40060 }; --Warp Engineer's Prismatic Chain
			gap,
			{ itemID = 35582 }, --Schematic: Rocket Boots Xtreme Lite
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30565, minDifficulty = "Heroic" }, --Assassin's Fire Opal
			{ itemID = 30566, minDifficulty = "Heroic" }, --Defender's Tanzanite
			{ itemID = 30564, minDifficulty = "Heroic" }, --Shining Fire Opal
		},
	},
	{
		Name = "Nethermancer Sepethrea",
		{
			{ itemID = 28259, groupID = 1, refLootEntry = 40061 }; --Cosmic Lifeband
			{ itemID = 28262, groupID = 1, refLootEntry = 40061 }; --Jade-Skull Breastplate
			{ itemID = 28260, groupID = 1, refLootEntry = 40061 }; --Manual of the Nethermancer
			{ itemID = 28258, groupID = 1, refLootEntry = 40061 }; --Nethershrike
			{ itemID = 28263, groupID = 1, refLootEntry = 40061 }; --Stellaris
			gap,
			{ itemID = 2076469, groupID = 1, refLootEntry = 2060796 }; --Blade of the Nethermancer
			{ itemID = 2060796, groupID = 1, refLootEntry = 2060796 }; --Cowl of the Raging Nether
			{ itemID = 2066865, groupID = 1, refLootEntry = 2060796 }; --Girdle of Nether Flames
			{ itemID = 2069009, groupID = 1, refLootEntry = 2060796 }; --Leggings of Spectral Inferno
			{ itemID = 2061927, groupID = 1, refLootEntry = 2060796 }; --Pauldrons of Channeled Flame
			{ itemID = 2063478, groupID = 1, refLootEntry = 2060796 }; --Robe of Fiery Arcana
			{ itemID = 2071049, groupID = 1, refLootEntry = 2060796 }; --Slippers of Arcane Embers
			{ itemID = 2078254, groupID = 1, refLootEntry = 2060796 }; --Tome of Burning Secrets
		},
		{
			{ itemID = 22920 }, --Recipe: Major Fire Protection Potion
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30565, minDifficulty = "Heroic" }, --Assassin's Fire Opal
			{ itemID = 30566, minDifficulty = "Heroic" }, --Defender's Tanzanite
			{ itemID = 30564, minDifficulty = "Heroic" }, --Shining Fire Opal
		},
	},
	{
		Name = "Pathaleon the Calculator",
		{
			{ itemID = 28288, groupID = 1, refLootEntry = 40062 }; --Abacus of Violent Odds
			{ itemID = 28269, groupID = 1, refLootEntry = 40062 }; --Baba's Cloak of Arcanistry
			{ itemID = 28265, groupID = 1, refLootEntry = 40062 }; --Dath'Remar's Ring of Defense
			{ itemID = 28267, groupID = 1, refLootEntry = 40062 }; --Edge of the Cosmos
			{ itemID = 27899, groupID = 1, refLootEntry = 40062 }; --Mana Wrath
			{ itemID = 28266, groupID = 1, refLootEntry = 40062 }; --Molten Earth Kilt
			{ itemID = 28275, groupID = 1, refLootEntry = 40065 }; --Beast Lord Helm
			{ itemID = 242595, groupID = 1, refLootEntry = 40065 }; --Helm of the Divine
			{ itemID = 242810, groupID = 1, refLootEntry = 40065 }; --Helm of the Just
			{ itemID = 28285, groupID = 1, refLootEntry = 40065 }; --Helm of the Righteous
			{ itemID = 28278, groupID = 1, refLootEntry = 40065 }; --Incanter's Cowl
			{ itemID = 28202, groupID = 1, refLootEntry = 40065 }; --Moonglade Robe
			{ itemID = 28286, groupID = 1, refLootEntry = 40065 }; --Telescopic Sharprifle
			{ itemID = 28204, groupID = 1, refLootEntry = 40065 }; --Tunic of Assassination
			{ itemID = 247548, groupID = 1, refLootEntry = 40065 }; --Verdant's Robe
			gap,
			{ itemID = 2076467, groupID = 1, refLootEntry = 2061806 }; --Blade of Arcane Domination
			{ itemID = 2070836, groupID = 1, refLootEntry = 2061806 }; --Boots of Mechanar Mastery
			{ itemID = 2078253, groupID = 1, refLootEntry = 2061806 }; --Bulwark of Tempest Control
			{ itemID = 2073947, groupID = 1, refLootEntry = 2061806 }; --Cloak of the Calculated Conjuror
			{ itemID = 2066639, groupID = 1, refLootEntry = 2061806 }; --Girdle of Arcane Precision
			{ itemID = 2073104, groupID = 1, refLootEntry = 2061806 }; --Gloves of the Nether Strategist
			{ itemID = 2068757, groupID = 1, refLootEntry = 2061806 }; --Leggings of Tactical Insight
			{ itemID = 2076468, groupID = 1, refLootEntry = 2061806 }; --Mace of Implemented Destruction
			{ itemID = 2061806, groupID = 1, refLootEntry = 2061806 }; --Mantle of Arcanum Calculation
			{ itemID = 2063343, groupID = 1, refLootEntry = 2061806 }; --Robe of Strategic Enigma
		},
		{
			{ itemID = 29251, minDifficulty = "Heroic" }, --Boots of the Pious
			{ itemID = 32076, minDifficulty = "Heroic" }, --Handguards of the Steady
			{ itemID = 30533, minDifficulty = "Heroic" }, --Vanquisher's Legplates
			{ itemID = 29362, minDifficulty = "Heroic" }, --The Sun Eater
			gap,
			{ itemID = 33860, minDifficulty = "Heroic" }, --Pathaleon's Projector
			{ itemID = 31086, minDifficulty = "Heroic" }, --Bottom Shard of the Arcatraz Key
			gap,
			{ itemID = 21907 }, --Pattern: Arcanoweave Robe
			gap,
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			gap,
			{ itemID = 30565, minDifficulty = "Heroic" }, --Assassin's Fire Opal
			{ itemID = 30566, minDifficulty = "Heroic" }, --Defender's Tanzanite
			{ itemID = 30564, minDifficulty = "Heroic" }, --Shining Fire Opal
		},
	}
}
-----------------------------
---Tempest Keep: The Eye ---
-----------------------------

AtlasLoot_Data["TKEye"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Tempest Keep" .. ": " .. "The Eye",
	DisplayName = "The Eye",
	Type = "BCRaid",
	Map = "TempestKeepTheEye",
	{
		Name = "Al'ar",
		WebID = {19514,"npc"},
		{
			{ itemID = 29922, groupID = 1, refLootEntry = 19514 }; --Band of Al'ar
			{ itemID = 29921, groupID = 1, refLootEntry = 19514 }; --Fire Crest Breastplate
			{ itemID = 29918, groupID = 1, refLootEntry = 19514 }; --Mindstorm Wristbands
			{ itemID = 29920, groupID = 1, refLootEntry = 19514 }; --Phoenix-Ring of Rebirth
			{ itemID = 12153, groupID = 1, refLootEntry = 19514 }; --Phoenixfire Drape
			{ itemID = 29923, groupID = 1, refLootEntry = 19514 }; --Talisman of the Sun King
			{ itemID = 30447, groupID = 1, refLootEntry = 19514 }; --Tome of Fiery Redemption
			{ itemID = 12168, groupID = 2, refLootEntry = 19514 }; --Ashen Talon
			{ itemID = 12155, groupID = 2, refLootEntry = 19514 }; --Girdle of the Eternal Blaze
			{ itemID = 29947, groupID = 2, refLootEntry = 19514 }; --Gloves of the Searing Grip
			{ itemID = 29925, groupID = 2, refLootEntry = 19514 }; --Phoenix-Wing Cloak
			{ itemID = 30448, groupID = 2, refLootEntry = 19514 }; --Talon of Al'ar
		},
		{
			{ itemID = 600867, minDifficulty = "Heroic" }, --Elemental Lodestone: Al'ar
			{ itemID = 29949, groupID = 2, refLootEntry = 19514 }; --Arcanite Steam-Pistol
			{ itemID = 29948, groupID = 2, refLootEntry = 19514 }; --Claw of the Phoenix
			{ itemID = 29924, groupID = 2, refLootEntry = 19514 }; --Netherbane
			{ itemID = 32944, groupID = 2, refLootEntry = 19514 }; --Talon of the Phoenix
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 1816254 }, --Forumla: Enchant Cloak - Phoenix Fire
			gap,
			{ itemID = 62443, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Void Reaver",
		WebID = {19516,"npc"},
		{
			{ itemID = 29986, groupID = 2, refLootEntry = 19516 }; --Cowl of the Grand Engineer
			{ itemID = 30619, groupID = 2, refLootEntry = 19516 }; --Fel Reaver's Piston
			{ itemID = 29983, groupID = 2, refLootEntry = 19516 }; --Fel-Steel Warhelm
			{ itemID = 29984, groupID = 2, refLootEntry = 19516 }; --Girdle of Zaetar
			{ itemID = 29985, groupID = 2, refLootEntry = 19516 }; --Void Reaver Greaves
			{ itemID = 12150, groupID = 2, refLootEntry = 19516 }; --Voidforged Band
			{ itemID = 30450, groupID = 2, refLootEntry = 19516 }; --Warp-Spring Coil
			{ itemID = 32515, groupID = 2, refLootEntry = 19516 }; --Wristguards of Determination
		},
		{
			{ itemID = 30249, lootTable = {"T5SHOULDER","Token"} }, --Pauldrons of the Vanquished Defender
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
	},
	{
		Name = "High Astromancer Solarian",
		WebID = {18805,"npc"},
		{
			{ itemID = 29981, groupID = 1, refLootEntry = 18805 }; --Ethereum Life-Staff
			{ itemID = 29965, groupID = 1, refLootEntry = 18805 }; --Girdle of the Righteous Path
			{ itemID = 29977, groupID = 1, refLootEntry = 18805 }; --Star-Soul Breeches
			{ itemID = 29972, groupID = 1, refLootEntry = 18805 }; --Trousers of the Astromancer
			{ itemID = 29982, groupID = 1, refLootEntry = 18805 }; --Wand of the Forgotten Star
			{ itemID = 29976, groupID = 1, refLootEntry = 18805 }; --Worldstorm Gauntlets
			{ itemID = 12167, groupID = 2, refLootEntry = 18805 }; --Astromancer's Fury
			{ itemID = 32267, groupID = 2, refLootEntry = 18805 }; --Boots of the Resilient
			{ itemID = 12166, groupID = 2, refLootEntry = 18805 }; --Choker of Fallen Stars
			{ itemID = 29950, groupID = 2, refLootEntry = 18805 }; --Greaves of the Bloodwarder
			{ itemID = 29962, groupID = 2, refLootEntry = 18805 }; --Heartrazor
			{ itemID = 30446, groupID = 2, refLootEntry = 18805 }; --Solarian's Sapphire
			{ itemID = 29951, groupID = 2, refLootEntry = 18805 }; --Star-Strider Boots
			{ itemID = 29966, groupID = 2, refLootEntry = 18805 }; --Vambraces of Ending
			{ itemID = 30449, groupID = 2, refLootEntry = 18805 }; --Void Star Talisman
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 62309, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Kael'thas Sunstrider",
		WebID = {19622,"npc"},
		{
			{ itemID = 29990, groupID = 4, refLootEntry = 19622 }; --Crown of the Sun
			{ itemID = 29987, groupID = 4, refLootEntry = 19622 }; --Gauntlets of the Sun King
			{ itemID = 29992, groupID = 4, refLootEntry = 19622 }; --Royal Cloak of the Sunstriders
			{ itemID = 29991, groupID = 4, refLootEntry = 19622 }; --Sunhawk Leggings
			{ itemID = 29989, groupID = 4, refLootEntry = 19622 }; --Sunshower Light Cloak
			{ itemID = 29988, groupID = 4, refLootEntry = 19622 }; --The Nexus Key
			{ itemID = 29997, groupID = 5, refLootEntry = 19622 }; --Band of the Ranger-General
			{ itemID = 12127, groupID = 5, refLootEntry = 19622 }; --Bindings of the Eternal Flame
			{ itemID = 29995, groupID = 5, refLootEntry = 19622 }; --Leggings of Murderous Intent
			{ itemID = 29996, groupID = 5, refLootEntry = 19622 }; --Rod of the Sun King
			{ itemID = 29998, groupID = 5, refLootEntry = 19622 }; --Royal Gauntlets of Silvermoon
			{ itemID = 29994, groupID = 5, refLootEntry = 19622 }; --Thalassian Wildercloak
			{ itemID = 29993, groupID = 5, refLootEntry = 19622 }; --Twinblade of the Phoenix
		},
		{
			{ itemID = 29905 }, --Kael's Vial Remnant
			{ itemID = 32405, contentsPreview = {
				{ itemID = 30018 }, --Lord Sanguinar's Claim
				{ itemID = 30017 }, --Telonicus's Pendant of Mayhem
				{ itemID = 30007 }, --The Darkener's Grasp
				{ itemID = 30015 }, --The Sun King's Talisman
				}
			}, --Verdant Sphere
			gap,
			{ itemID = 450001 }, --Intact Vial of Kael'thas Sunstrider
			{ itemID = 30237, lootTable = {"T5CHEST","Token"} }, --Chestguard of the Vanquished Defender
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 62498, droprate = "1%" }, --Pet Sigil
			gap,
			{ itemID = 32458 }, --Ashes of Al'ar
		},

	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 30024 }, --Mantle of the Elven Kings
			{ itemID = 30020 }, --Fire-Cord of the Magus
			{ itemID = 30029 }, --Bark-Gloves of Ancient Wisdom
			{ itemID = 30026 }, --Bands of the Celestial Archer
			{ itemID = 30030 }, --Girdle of Fallen Stars
			{ itemID = 30028 }, --Seventh Ring of the Tirisfalen
			gap,
			{ itemID = 2032902 }, --Bottled Nethergron Extract
			gap,
			{ itemID = 30324 }, --Plans: Red Havoc Boots
			{ itemID = 30322 }, --Plans: Red Belt of Battle
			{ itemID = 30323 }, --Plans: Boots of the Protector
			{ itemID = 30321 }, --Plans: Belt of the Guardian
		},
		{
			{ itemID = 30280 }, --Pattern: Belt of Blasting
			{ itemID = 30282 }, --Pattern: Boots of Blasting
			{ itemID = 30283 }, --Pattern: Boots of the Long Road
			{ itemID = 30281 }, --Pattern: Belt of the Long Road
			{ itemID = 30308 }, --Pattern: Hurricane Boots
			{ itemID = 30304 }, --Pattern: Monsoon Belt
			{ itemID = 30305 }, --Pattern: Boots of Natural Grace
			{ itemID = 30307 }, --Pattern: Boots of the Crimson Hawk
			{ itemID = 30306 }, --Pattern: Boots of Utter Darkness
			{ itemID = 30301 }, --Pattern: Belt of Natural Power
			{ itemID = 30303 }, --Pattern: Belt of the Black Eagle
			{ itemID = 30302 }, --Pattern: Belt of Deep Shadow
			gap,
			{ itemID = 30183 }, --Nether Vortex
			{ itemID = 32897 }, --Mark of the Illidari
		},
	},
	{
		Name = "Legendary Items for Kael'thas Fight",
		{
			{ itemID = 30312 }, --Infinity Blade
			{ itemID = 30311 }, --Warp Slicer
			{ itemID = 30317 }, --Cosmic Infuser
			{ itemID = 30316 }, --Devastation
			{ itemID = 30313 }, --Staff of Disintegration
			{ itemID = 30314 }, --Phaseshift Bulwark
			{ itemID = 30318 }, --Netherstrand Longbow
		},
	}
}


----------------
---Zul'Aman ---
----------------

AtlasLoot_Data["ZulAman"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Zul'Aman",
	Type = "BCRaid",
	Map = "ZulAman",
	{
		Name = "Nalorakk",
		{
			{ itemID = 33480, groupID = 1, refLootEntry = 23576 }; --Cord of Braided Troll Hair
			{ itemID = 33971, groupID = 1, refLootEntry = 23576 }; --Elunite Imbued Leggings
			{ itemID = 33285, groupID = 1, refLootEntry = 23576 }; --Fury of the Ursine
			{ itemID = 33327, groupID = 1, refLootEntry = 23576 }; --Mask of Introspection
			{ itemID = 33203, groupID = 1, refLootEntry = 23576 }; --Robes of Heavenly Purpose
			{ itemID = 33498, groupID = 1, refLootEntry = 23576 }; --Signet of the Quiet Forest
			{ itemID = 33211, groupID = 2, refLootEntry = 23576 }; --Bladeangel's Money Belt
			{ itemID = 33640, groupID = 2, refLootEntry = 23576 }; --Fury
			{ itemID = 33191, groupID = 2, refLootEntry = 23576 }; --Jungle Stompers
			{ itemID = 33206, groupID = 2, refLootEntry = 23576 }; --Pauldrons of Primal Fury
			{ itemID = 33495, groupID = 2, refLootEntry = 23576 }; --Rage
			{ itemID = 12267, groupID = 2, refLootEntry = 23576 }; --Savage Guardian Helm
			{ itemID = 12266, groupID = 2, refLootEntry = 23576 }; --Savage Spirit Mask
			{ itemID = 33496, groupID = 2, refLootEntry = 23576 }; --Signet of Primal Wrath
		},
		{
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63944, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Akil'zon",
		{
			{ itemID = 33283, groupID = 1, refLootEntry = 23574 }; --Amani Punisher
			{ itemID = 33281, groupID = 1, refLootEntry = 23574 }; --Brooch of Nature's Mercy
			{ itemID = 33216, groupID = 1, refLootEntry = 23574 }; --Chestguard of Hidden Purpose
			{ itemID = 33286, groupID = 1, refLootEntry = 23574 }; --Mojo-mender's Mask
			{ itemID = 33591, groupID = 1, refLootEntry = 23574 }; --Shadowcaster's Drape
			{ itemID = 33293, groupID = 1, refLootEntry = 23574 }; --Signet of Ancient Magics
			{ itemID = 33214, groupID = 2, refLootEntry = 23574 }; --Akil'zon's Talonblade
			{ itemID = 33215, groupID = 2, refLootEntry = 23574 }; --Bloodstained Elven Battlevest
			{ itemID = 33590, groupID = 2, refLootEntry = 23574 }; --Cloak of Fiends
			{ itemID = 33481, groupID = 2, refLootEntry = 23574 }; --Pauldrons of Stone Resolve
			{ itemID = 33500, groupID = 2, refLootEntry = 23574 }; --Signet of Eternal Life
			{ itemID = 33492, groupID = 2, refLootEntry = 23574 }; --Trollbane
			{ itemID = 12269, groupID = 2, refLootEntry = 23574 }; --Windcaller's Pauldrons
			{ itemID = 12268, groupID = 2, refLootEntry = 23574 }; --Windspeaker's Mantle
		},
		{
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63943, droprate = "1%" }, --Pet Sigil
		},

	},
	{
		Name = "Jan'alai",
		{
			{ itemID = 33332, groupID = 1, refLootEntry = 23578 }; --Enamelled Disc of Mojo
			{ itemID = 33357, groupID = 1, refLootEntry = 23578 }; --Footpads of Madness
			{ itemID = 33356, groupID = 1, refLootEntry = 23578 }; --Helm of Natural Regeneration
			{ itemID = 33489, groupID = 1, refLootEntry = 23578 }; --Mantle of Ill Intent
			{ itemID = 33490, groupID = 1, refLootEntry = 23578 }; --Staff of Dark Mending
			{ itemID = 33354, groupID = 1, refLootEntry = 23578 }; --Wub's Cursed Hexblade
			{ itemID = 33328, groupID = 2, refLootEntry = 23578 }; --Arrow-fall Chestguard
			{ itemID = 12271, groupID = 2, refLootEntry = 23578 }; --Blazeforged Breastplate
			{ itemID = 33326, groupID = 2, refLootEntry = 23578 }; --Bulwark of the Amani Empire
			{ itemID = 12270, groupID = 2, refLootEntry = 23578 }; --Flamewoven Hauberk
			{ itemID = 33805, groupID = 2, refLootEntry = 23578 }; --Shadowhunter's Treads
			{ itemID = 33329, groupID = 2, refLootEntry = 23578 }; --Shadowtooth Trollskin Cuirass
			{ itemID = 33499, groupID = 2, refLootEntry = 23578 }; --Signet of the Last Defender
			{ itemID = 33491, groupID = 2, refLootEntry = 23578 }; --Tuskbreaker
		},
		{
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63946, droprate = "1%" }, --Pet Sigil
		},

	},
	{
		Name = "Halazzi",
		{
			{ itemID = 33533, groupID = 1, refLootEntry = 23577 }; --Avalanche Leggings
			{ itemID = 33483, groupID = 1, refLootEntry = 23577 }; --Life-step Belt
			{ itemID = 33497, groupID = 1, refLootEntry = 23577 }; --Mana Attuned Band
			{ itemID = 33317, groupID = 1, refLootEntry = 23577 }; --Robe of Departed Spirits
			{ itemID = 33322, groupID = 1, refLootEntry = 23577 }; --Shimmer-pelt Vest
			{ itemID = 33299, groupID = 1, refLootEntry = 23577 }; --Spaulders of the Advocate
			{ itemID = 12272, groupID = 2, refLootEntry = 23577 }; --Claws of the Wildstalker
			{ itemID = 12305, groupID = 2, refLootEntry = 23577 }; --Gauntlets of the Primal Strike
			{ itemID = 33300, groupID = 2, refLootEntry = 23577 }; --Shoulderpads of Dancing Blades
			{ itemID = 33979, groupID = 2, refLootEntry = 23577 }; --Sightless Head
			{ itemID = 33303, groupID = 2, refLootEntry = 23577 }; --Skullshatter Warboots
			{ itemID = 33465, groupID = 2, refLootEntry = 23577 }; --Staff of Primal Fury
			{ itemID = 33297, groupID = 2, refLootEntry = 23577 }; --The Savage's Choker
			{ itemID = 33493, groupID = 2, refLootEntry = 23577 }; --Umbral Shiv
		},
		{
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63945, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Hex Lord Malacrass",
		{
			{ itemID = 33494, groupID = 1, refLootEntry = 24239 }; --Amani Divining Staff
			{ itemID = 33592, groupID = 1, refLootEntry = 24239 }; --Cloak of Ancient Rituals
			{ itemID = 33446, groupID = 1, refLootEntry = 24239 }; --Girdle of Stromgarde's Hope
			{ itemID = 33464, groupID = 1, refLootEntry = 24239 }; --Hex Lord's Voodoo Pauldrons
			{ itemID = 33453, groupID = 1, refLootEntry = 24239 }; --Hood of Hexing
			{ itemID = 33463, groupID = 1, refLootEntry = 24239 }; --Hood of the Third Eye
			{ itemID = 33828, groupID = 1, refLootEntry = 24239 }; --Tome of Diabolic Remedy
			{ itemID = 33421, groupID = 2, refLootEntry = 24239 }; --Battleworn Tuskguard
			{ itemID = 33432, groupID = 2, refLootEntry = 24239 }; --Coif of the Jungle Stalker
			{ itemID = 33389, groupID = 2, refLootEntry = 24239 }; --Dagger of Bad Mojo
			{ itemID = 33388, groupID = 2, refLootEntry = 24239 }; --Heartless
			{ itemID = 33298, groupID = 2, refLootEntry = 24239 }; --Prowler's Strikeblade
			{ itemID = 34029, groupID = 2, refLootEntry = 24239 }; --Tiny Voodoo Mask
			{ itemID = 38634, groupID = 2, refLootEntry = 24239 }; --Troll Dice
		},
		{
			{ itemID = 2033307, droprate = { "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Witchdoctor
			gap,
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } },  --Primal Amani Idol
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			gap,
			{ itemID = 63962, droprate = "1%" }, --Pet Sigil
			gap,
			{ itemID = 1333809 }, --Amani Bear
		},
	},
	{
		Name = "Zul'jin",
		{
			{ itemID = 33469, groupID = 1, refLootEntry = 23863 }; --Hauberk of the Empire's Champion
			{ itemID = 33829, groupID = 1, refLootEntry = 23863 }; --Hex Shrunken Head
			{ itemID = 33466, groupID = 1, refLootEntry = 23863 }; --Loop of Cursed Bones
			{ itemID = 33471, groupID = 1, refLootEntry = 23863 }; --Two-toed Sandals
			{ itemID = 33830, groupID = 2, refLootEntry = 23863 }; --Ancient Aqir Artifact
			{ itemID = 33831, groupID = 2, refLootEntry = 23863 }; --Berserker's Call
			{ itemID = 33473, groupID = 2, refLootEntry = 23863 }; --Chestguard of the Warlord
			{ itemID = 33479, groupID = 2, refLootEntry = 23863 }; --Grimgrin Faceguard
			{ itemID = 24537, groupID = 2, refLootEntry = 23863 }; --Waistband of Crushed Skulls
			gap,
			{ itemID = 33307, droprate = { "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Executioner
			gap,
			{ itemID = 33102 }, --Blood of Zul'Jin	
		},
		{
			{ itemID = 33474, groupID = 3, refLootEntry = 23863 }; --Ancient Amani Longbow
			{ itemID = 33467, groupID = 3, refLootEntry = 23863 }; --Blade of Twisted Visions
			{ itemID = 33476, groupID = 3, refLootEntry = 23863 }; --Cleaver of the Unforgiving
			{ itemID = 33468, groupID = 3, refLootEntry = 23863 }; --Dark Blessing
			{ itemID = 12265, groupID = 3, refLootEntry = 23863 }; --Hook of the Wild Hunt
			{ itemID = 33478, groupID = 3, refLootEntry = 23863 }; --Jin'rohk, The Great Apocalypse
			{ itemID = 34071, groupID = 3, refLootEntry = 23863 }; --Seething Hate
			gap,
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb

			gap,
			{ itemID = 63949, droprate = "1%" }, --Pet Sigil
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 21824 }, --The Krakmon Wand
			{ itemID = 24574 }, --Massacre Cloak
			{ itemID = 28354 }, --Throat Crushers
			{ itemID = 33059 }, --Seal of the Amani'shi Berserker
			{ itemID = 33983 }, --Staff of Blazing Glory
			{ itemID = 39755 }, --String of Ears
		},
		{
			{ itemID = 33865 }, --Amani Hex Stick
			{ itemID = 33930 }, --Amani Charm of the Bloodletter
			{ itemID = 33932 }, --Amani Charm of the Witch Doctor
			{ itemID = 33931 }, --Amani Charm of Mighty Mojo
			{ itemID = 33933 }, --Amani Charm of the Raging Defender
			gap,
			{ itemID = 33993 }, --Mojo
		},
	},
	{
		Name = "Enchants",
		{
			{ itemID = 229194 }, --The Krakmon Wand
			{ itemID = 229193 }, --Massacre Cloak
			{ itemID = 229196 }, --Throat Crushers
			{ itemID = 229192 }, --Seal of the Amani'shi Berserker
			{ itemID = 229195 }, --Staff of Blazing Glory
		},
	}
}





----------------
---Factions ---
----------------

----------------------------
---Ashtongue Deathsworn ---
----------------------------

AtlasLoot_Data["Ashtongue"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Ashtongue Deathsworn",
	Type = "BCRaid",
	{
		Name = "Friendly",
		{
			{ itemID = 32444 }, --Plans: Shadesteel Girdle" 
			{ itemID = 32442 }, --Plans: Shadesteel Bracers" 
			{ itemID = 32436 }, --Pattern: Redeemed Soul Cinch
			{ itemID = 32435 }, --Pattern: Redeemed Soul Legguards
			{ itemID = 32430 }, --Pattern: Bracers of Shackled Souls
			{ itemID = 32429 }, --Pattern: Boots of Shackled Souls
			{ itemID = 32440 }, --Pattern: Soulguard Girdle" 
			{ itemID = 32438 }, --Pattern: Soulguard Bracers" 
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 32443 }, --Plans: Shadesteel Greaves" 
			{ itemID = 32441 }, --Plans: Shadesteel Sabots" 
			{ itemID = 32433 }, --Pattern: Redeemed Soul Mocassins
			{ itemID = 32434 }, --Pattern: Redeemed Soul Wristguards
			{ itemID = 32431 }, --Pattern: Greaves of Shackled Souls
			{ itemID = 32432 }, --Pattern: Waistguard of Shackled Souls
			{ itemID = 32447 }, --Pattern: Night's End" 
			{ itemID = 32439 }, --Pattern: Soulguard Leggings" 
			{ itemID = 32437 }, --Pattern: Soulguard Slippers" 
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 32486 }, --Ashtongue Talisman of Equilibrium
			{ itemID = 32487 }, --Ashtongue Talisman of Swiftness
			{ itemID = 32488 }, --Ashtongue Talisman of Insight
			{ itemID = 32489 }, --Ashtongue Talisman of Zeal
			{ itemID = 32490 }, --Ashtongue Talisman of Acumen
			{ itemID = 32492 }, --Ashtongue Talisman of Lethality
			{ itemID = 32491 }, --Ashtongue Talisman of Vision
			{ itemID = 32493 }, --Ashtongue Talisman of Shadows
			{ itemID = 32485 }, --Ashtongue Talisman of Valor
		},
	}
}

----------------------------
---Cenarion Expedition ---
----------------------------

AtlasLoot_Data["CExpedition"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Cenarion Expedition",
	{
		Name = "Friendly",
		{
			{ itemID = 25737 }, --Pattern: Heavy Clefthoof Boots
			{ itemID = 24417 }, --Scout's Arrow
			{ itemID = 23814 }, --Schematic: color.GREEN Smoke Flare
			{ itemID = 24429 },
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 25838 }, --Warden's Hauberk
			{ itemID = 25836 }, --Preserver's Cudgel
			{ itemID = 25835 }, --Explorer's Walking Stick
			{ itemID = 25735 }, --Pattern: Heavy Clefthoof Vest
			{ itemID = 25736 }, --Pattern: Heavy Clefthoof Leggings
			{ itemID = 29194 }, --Arcanum of Nature Warding
			{ itemID = 25869 }, --Recipe: Transmute Earthstorm Diamond
			{ itemID = 32070 }, --Recipe: Earthen Elixir
			{ itemID = 23618 }, --Plans: Adamantite Sharpening Stone
			{ itemID = 28632 }, --Plans: Adamantite Weightstone
			{ itemID = 25526 }, --Plans: Greater Rune of Warding
			{ itemID = 29720 }, --Pattern: Clefthide Leg Armor
			{ itemID = 30623 }, --Reservoir Key
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 31392 }, --Plans: Wildguard Helm
			{ itemID = 31391 }, --Plans: Wildguard Leggings
			{ itemID = 29174 }, --Watcher's Cowl
			{ itemID = 29173 }, --Strength of the Untamed
			{ itemID = 31949 }, --Warden's Arrow
			{ itemID = 24183 }, --Design: Nightseye Panther
			{ itemID = 29192 }, --Arcanum of Ferocity
			{ itemID = 22918 }, --Recipe: Transmute Primal Water to Air
			{ itemID = 28271 }, --Formula: Enchant Gloves - Spell Strike
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29170 }, --Windcaller's Orb
			{ itemID = 29172 }, --Ashyen's Gift
			{ itemID = 29171 }, --Earthwarden
			{ itemID = 33999 }, --Cenarion War Hippogryph
			{ itemID = 31390 }, --Plans: Wildguard Breastplate
			{ itemID = 31402 }, --Design: The Natural Ward
			{ itemID = 33149 }, --Formula: Enchant Cloak - Stealth
			{ itemID = 31356 }, --Recipe: Flask of Distilled Wisdom
			{ itemID = 22922 }, --Recipe: Major Nature Protection Potion
			{ itemID = 29721 }, --Pattern: Nethercleft Leg Armor
			{ itemID = 31804 }, --Cenarion Expedition Tabard
		},
	}
}

------------------
---Honor Hold ---
------------------

AtlasLoot_Data["HonorHold"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Honor Hold" .. " - " .. "Alliance",
	{
		Name = "Friendly",
		{
			{ itemID = 29213 }, --Pattern: Felstalker Belt
			{ itemID = 23142 }, --Design: Enduring Deep Peridot
			{ itemID = 22531 }, --Formula: Enchant Bracer - Superior Healing
			{ itemID = 24007 }, --Footman's Waterskin
			{ itemID = 24008 }, --Dried Mushroom Rations
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 25826 }, --Sage's Band
			{ itemID = 25825 }, --Footman's Longsword
			{ itemID = 29214 }, --Pattern: Felstalker Bracers
			{ itemID = 29215 }, --Pattern: Felstalker Breastplate
			{ itemID = 29196 }, --Arcanum of Fire Warding
			{ itemID = 25870 }, --Recipe: Transmute Skyfire Diamond
			{ itemID = 22905 }, --Recipe: Elixir of Major Agility
			{ itemID = 29719 }, --Pattern: Cobrahide Leg Armor
			{ itemID = 30622 }, --Flamewrought Key
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29169 }, --Ring of Convalescence
			{ itemID = 29166 }, --Hellforged Halberd
			{ itemID = 32883 }, --Felbane Slugs
			{ itemID = 24180 }, --Design: Dawnstone Crab
			{ itemID = 29189 }, --Arcanum of Renewal
			{ itemID = 22547 }, --Formula: Enchant Chest - Exceptional Stats
			{ itemID = 34218 }, --Pattern: Netherscale Ammo Pouch
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29153 }, --Blade of the Archmage
			{ itemID = 29156 }, --Honor's Call
			{ itemID = 29151 }, --Veteran's Musket
			{ itemID = 33150 }, --Formula: Enchant Cloak - Subtlety
			{ itemID = 23619 }, --Plans: Felsteel Shield Spike
			{ itemID = 29722 }, --Pattern: Nethercobra Leg Armor
			{ itemID = 23999}, --Honor Hold Tabard
		},
	}
}

-----------------------
---Keepers of Time ---
-----------------------

AtlasLoot_Data["KeepersofTime"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Keepers of Time",
	{
		Name = "Honored",
		{
			{ itemID = 29198 }, --Arcanum of Frost Warding
			{ itemID = 28272 }, --Formula: Enchant Gloves - Major Spellpower
			{ itemID = 22536 }, --Formula: Enchant Ring - Spellpower
			{ itemID = 25910 }, --Design: Enigmatic Skyfire Diamond
			{ itemID = 33160 }, --Design: Facet of Eternity
			{ itemID = 29713 }, --Pattern: Drums of Panic
			{ itemID = 30635 }, --Key of Time
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29184 }, --Timewarden's Leggings
			{ itemID = 29185 }, --Continuum Blade
			{ itemID = 24181 }, --Design: Living Ruby Serpent
			{ itemID = 24174 }, --Design: Pendant of Frozen Flame
			{ itemID = 29186 }, --Arcanum of the Defender
			{ itemID = 33158 }, --Design: Stone of Blades
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29183 }, --Bindings of the Timewalker
			{ itemID = 29181 }, --Timelapse Shard
			{ itemID = 29182 }, --Riftmaker
			{ itemID = 33152 }, --Formula: Enchant Gloves - Superior Agility
			{ itemID = 31355 }, --Recipe: Flask of Supreme Power
			{ itemID = 31777 }, --Keepers of Time Tabard
		},
	}
}

---------------
---Kurenai ---
---------------

AtlasLoot_Data["Kurenai"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Kurenai" .. " - " .. "Alliance",
	{
		Name = "Friendly",
		{
			{ itemID = 29217 }, --Pattern: Netherfury Belt
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 29144 }, --Worg Hide Quiver
			{ itemID = 29219 }, --Pattern: Netherfury Leggings
			{ itemID = 34175 }, --Pattern: Drums of Restoration
			{ itemID = 34173 }, --Pattern: Drums of Speed
			{ itemID = 30444 }, --Pattern: Reinforced Mining Bag
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29148 }, --Blackened Leather Spaulders
			{ itemID = 29142 }, --Kurenai Kilt
			{ itemID = 29146 }, --Band of Elemental Spirits
			{ itemID = 29218 }, --Pattern: Netherfury Boots
			{ itemID = 30443 }, --Recipe: Transmute Primal Fire to Earth
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29227 }, --Reins of the Cobalt War Talbuk
			{ itemID = 29229 }, --Reins of the Silver War Talbuk
			{ itemID = 29230 }, --Reins of the Tan War Talbuk
			{ itemID = 29231 }, --Reins of the color.WHITE War Talbuk
			{ itemID = 31830 }, --Reins of the Cobalt Riding Talbuk
			{ itemID = 31832 }, --Reins of the Silver Riding Talbuk
			{ itemID = 31834 }, --Reins of the Tan Riding Talbuk
			{ itemID = 31836 }, --Reins of the color.WHITE Riding Talbuk
			{ itemID = 29140 }, --Cloak of the Ancient Spirits
			{ itemID = 29136 }, --Far Seer's Helm
			{ itemID = 29138 }, --Arechron's Gift
			{ itemID = 31774 }, --Kurenai Tabard
		},
	}
}

------------------
---Lower City ---
------------------

AtlasLoot_Data["LowerCity"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Lower City",
	{
		Name = "Friendly",
		{
			{ itemID = 23138 }, --Design: Potent Flame Spessarite
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 30836 }, --Leggings of the Skettis Exile
			{ itemID = 30835 }, --Salvager's Hauberk
			{ itemID = 30841 }, --Lower City Prayerbook
			{ itemID = 24179 }, --Design: Felsteel Boar
			{ itemID = 24175 }, --Design: Pendant of Thawing
			{ itemID = 30846 }, --Arcanum of the Outcast
			{ itemID = 22910 }, --Recipe: Elixir of Major Shadow Power
			{ itemID = 33157 }, --Design: Falling Star
			{ itemID = 34200 }, --Pattern: Quiver of a Thousand Arrows
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29199 }, --Arcanum of Shadow Warding
			{ itemID = 22538 }, --Formula: Enchant Ring - Stats
			{ itemID = 30833 }, --Pattern: Cloak of Arcane Evasion
			{ itemID = 30633 }, --Auchenai Key
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 30834 }, --Shapeshifter's Signet
			{ itemID = 30832 }, --Gavel of Unearthed Secrets
			{ itemID = 30830 }, --Trident of the Outcast Tribe
			{ itemID = 33148 }, --Formula: Enchant Cloak - Dodge
			{ itemID = 31357 }, --Recipe: Flask of Chromatic Resistance
			{ itemID = 31778 }, --Lower City Tabard
		},
	}
}

------------------
---Netherwing ---
------------------

AtlasLoot_Data["Netherwing"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Netherwing",
	{
		Name = "Friendly",
		{
			{ itemID = 32694 }, --Overseer's Badge
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 32695 }, --Captain's Badge
			{ itemID = 32863 }, --Skybreaker Whip
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 32864 }, --Commander's Badge
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 32858 }, --Reins of the Azure Netherwing Drake
			{ itemID = 32859 }, --Reins of the Cobalt Netherwing Drake
			{ itemID = 32857 }, --Reins of the Onyx Netherwing Drake
			{ itemID = 32860 }, --Reins of the Purple Netherwing Drake
			{ itemID = 32861 }, --Reins of the Veridian Netherwing Drake
			{ itemID = 32862 }, --Reins of the Violet Netherwing Drake
		},
	}
}

---------------
---Ogri'la ---
---------------

AtlasLoot_Data["Ogrila"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Ogri'la",
	{
		Name = "Friendly",
		{
			{ itemID = 32910 }, --Red Ogre Brew Special
			{ itemID = 32909 }, --Blue Ogre Brew Special
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 32784, price = "2 #ogrilashard#" }, --Red Ogre Brew
			{ itemID = 32783, price = "3 #ogrilashard#" }, --Blue Ogre Brew
			{ itemID = 32572 }, --Apexis Crystal
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 32653, price = "1 #ogrilacrystal# 50 #ogrilashard#" }, --Apexis Cloak
			{ itemID = 32654, price = "1 #ogrilacrystal# 50 #ogrilashard#" }, --Crystalforged Trinket
			{ itemID = 32652, price = "1 #ogrilacrystal# 50 #ogrilashard#" }, --Ogri'la Aegis
			{ itemID = 32650, price = "1 #ogrilacrystal# 50 #ogrilashard#" }, --Cerulean Crystal Rod
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 32647, price = "4 #ogrilacrystal# 100 #ogrilashard#" }, --Shard-bound Bracers
			{ itemID = 32648, price = "4 #ogrilacrystal# 100 #ogrilashard#" }, --Vortex Walking Boots
			{ itemID = 32651 , price = "4 #ogrilacrystal# 100 #ogrilashard#" }, --Crystal Orb of Enlightenment
			{ itemID = 32645, price = "4 #ogrilacrystal# 100 #ogrilashard#" }, --Crystalline Crossbow
			{ itemID = 32828 , price = "10 #ogrilashard#" }, --Ogri'la Tabard
			{ itemID = 32569 }, --Apexis Shard
		},
	}
}

-------------------------
---Sha'tari Skyguard ---
-------------------------

AtlasLoot_Data["Skyguard"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Sha'tari Skyguard",
	{
		Name = "Friendly",
		{
			{ itemID = 32722 }, --Enriched Terocone Juice
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 32721 }, --Skyguard Rations
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 32539 }, --Skyguard's Drape
			{ itemID = 32538 }, --Skywitch's Drape
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 32770 }, --Skyguard Silver Cross
			{ itemID = 32771 }, --Airman's Ribbon of Gallantry
			{ itemID = 32319 }, --Blue Riding Nether Ray
			{ itemID = 32314 }, --color.GREEN Riding Nether Ray
			{ itemID = 32317 }, --Red Riding Nether Ray
			{ itemID = 32316 }, --Purple Riding Nether Ray
			{ itemID = 32318 }, --Silver Riding Nether Ray
			{ itemID = 38628 }, --Nether Ray Fry
			{ itemID = 32445 }, --Skyguard Tabard
		},
	}
}

-------------------------------
---Shattered Sun Offensive ---
-------------------------------

AtlasLoot_Data["SunOffensive"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Shattered Sun Offensive",
	{
		Name = "Friendly",
		{
			{ itemID = 35244 }, --Design: Bold Crimson Spinel
			{ itemID = 35245 }, --Design: Bright Crimson Spinel
			{ itemID = 35255 }, --Design: Brilliant Lionseye
			{ itemID = 35246 }, --Design: Delicate Crimson Spinel
			{ itemID = 35256 }, --Design: Gleaming Lionseye
			{ itemID = 35262 }, --Design: Lustrous Empyrean Sapphire
			{ itemID = 35248 }, --Design: Runed Crimson Spinel
			{ itemID = 35260 }, --Design: Smooth Lionseye
			{ itemID = 35263 }, --Design: Solid Empyrean Sapphire
			{ itemID = 35264 }, --Design: Sparkling Empyrean Sapphire
			{ itemID = 35249 }, --Design: Subtle Crimson Spinel
			{ itemID = 35250 }, --Design: Teardrop Crimson Spinel
			{ itemID = 35261 }, --Design: Thick Lionseye
			{ itemID = 34780 }, --Naaru Ration
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 35238 }, --Design: Balanced Shadowsong Amethyst
			{ itemID = 35251 }, --Design: Dazzling Seaspray Emerald
			{ itemID = 35266 }, --Design: Glinting Pyrestone
			{ itemID = 35239 }, --Design: Glowing Shadowsong Amethyst
			{ itemID = 35240 }, --Design: Infused Shadowsong Amethyst
			{ itemID = 35253 }, --Design: Jagged Seaspray Emerald
			{ itemID = 35268 }, --Design: Luminous Pyrestone
			{ itemID = 35269 }, --Design: Potent Pyrestone
			{ itemID = 35254 }, --Design: Radiant Seaspray Emerald
			{ itemID = 34872 }, --Formula: Void Shatter
			{ itemID = 35500 }, --Formula: Enchant Chest - Defense
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 35769 }, --Design: Forceful Seaspray Emerald
			{ itemID = 35768 }, --Design: Quick Lionseye
			{ itemID = 35767 }, --Design: Reckless Pyrestone
			{ itemID = 35766 }, --Design: Steady Seaspray Emerald
			{ itemID = 34665 }, --Bombardier's Blade
			{ itemID = 34667 }, --Archmage's Guile
			{ itemID = 34672 }, --Inuuro's Blade
			{ itemID = 34666 }, --The Sunbreaker
			{ itemID = 34671 }, --K'iru's Presage
			{ itemID = 34670 }, --Seeker's Gavel
			{ itemID = 34673 }, --Legionfoe
			{ itemID = 34674 }, --Truestrike Crossbow
			{ itemID = 29193 }, --Arcanum of the Gladiator
		},
		{
			{ itemID = 35252 }, --Design: Enduring Seaspray Emerald
			{ itemID = 35697 }, --Design: Figurine - Crimson Serpent
			{ itemID = 35695 }, --Design: Figurine - Empyrean Tortoise
			{ itemID = 35696 }, --Design: Figurine - Khorium Boar
			{ itemID = 35699 }, --Design: Figurine - Seaspray Albatross
			{ itemID = 35698 }, --Design: Figurine - Shadowsong Panther
			{ itemID = 35259 }, --Design: Rigid Lionseye
			{ itemID = 35241 }, --Design: Royal Shadowsong Amethyst
			{ itemID = 35271 }, --Design: Wicked Pyrestone
			{ itemID = 35505 }, --Design: Ember Skyfire Diamond
			{ itemID = 35502 }, --Design: Eternal Earthstorm Diamond
			{ itemID = 35708 }, --Design: Regal Nightseye
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 34678 }, --Shattered Sun Pendant of Acumen
			{ itemID = 34679 }, --Shattered Sun Pendant of Might
			{ itemID = 34680 }, --Shattered Sun Pendant of Resolve
			{ itemID = 34677 }, --Shattered Sun Pendant of Restoration
			{ itemID = 34676 }, --Dawnforged Defender
			{ itemID = 34675 }, --Sunward Crest
			{ itemID = 35325 }, --Design: Forceful Talasite
			{ itemID = 35322 }, --Design: Quick Dawnstone
			{ itemID = 35323 }, --Design: Reckless Noble Topaz
			{ itemID = 35221 }, --Tabard of the Shattered Sun
		},
		{
			{ itemID = 35247 }, --Design: Flashing Crimson Spinel
			{ itemID = 35257 }, --Design: Great Lionseye
			{ itemID = 35267 }, --Design: Inscribed Pyrestone
			{ itemID = 35258 }, --Design: Mystic Lionseye
			{ itemID = 37504 }, --Design: Purified Shadowsong Amethyst
			{ itemID = 35242 }, --Design: Shifting Shadowsong Amethyst
			{ itemID = 35243 }, --Design: Sovereign Shadowsong Amethyst
			{ itemID = 35265 }, --Design: Stormy Empyrean Sapphire
			{ itemID = 35270 }, --Design: Veiled Pyrestone
			{ itemID = 35755 }, --Recipe: Assassin's Alchemist Stone
			{ itemID = 35752 }, --Recipe: Guardian's Alchemist Stone
			{ itemID = 35754 }, --Recipe: Redeemer's Alchemist Stone
			{ itemID = 35753 }, --Recipe: Sorcerer's Alchemist Stone
		},
	}
}

-----------------
---Sporeggar ---
-----------------

AtlasLoot_Data["Sporeggar"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Sporeggar",
	{
		Name = "Friendly",
		{
			{ itemID = 27689, price = "2 #glowcap#" }, --Recipe: Sporeling Snack
			{ itemID = 30156, price = "1 #glowcap#" },
			{ itemID = 25548 , price = "1 #glowcap#" }, --Tallstalk Mushroom
			{ itemID = 24539 , price = "2 #glowcap#" }, --Marsh Lichen
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 25827, price = "25 #glowcap#" }, --Muck-Covered Drape
			{ itemID = 25828, price = "15 #glowcap#" }, --Petrified Lichen Guard
			{ itemID = 25550 , price = "1 #glowcap#" }, --Redcap Toadstool
		},
		 { itemID = 24245 }, --Glowcap
	},
	{
		Name = "Revered",
		{
			{ itemID = 29150, price = "45 #glowcap#" }, --Hardened Stone Shard
			{ itemID = 29149, price = "20 #glowcap#" }, --Sporeling's Firestick
			{ itemID = 22916, price = "25 #glowcap#" }, --Recipe: Transmute Primal Earth to Water
			{ itemID = 38229, price = "25 #glowcap#" },
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 34478, price = "30 #glowcap#" }, --Tiny Sporebat
			{ itemID = 22906, price = "30 #glowcap#" }, --Recipe: Shrouding Potion
			{ itemID = 31775 , price = "10 #glowcap#" }, --Sporeggar Tabard
		},
	}
}

-----------------
---The Aldor ---
-----------------

AtlasLoot_Data["Aldor"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "The Aldor",
	{
		Name = "Friendly",
		{
			{ itemID = 23149 }, --Design: Gleaming Golden Draenite
			{ itemID = 23601 }, --Plans: Flamebane Bracers
			{ itemID = 30842 }, --Pattern: Flameheart Bracers
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 29129 }, --Anchorite's Robes
			{ itemID = 23145 }, --Design: Royal Shadow Draenite
			{ itemID = 23603 }, --Plans: Flamebane Gloves
			{ itemID = 29704 }, --Pattern: Blastguard Belt
			{ itemID = 29693 }, --Pattern: Flamescale Belt
			{ itemID = 30843 }, --Pattern: Flameheart Gloves
			{ itemID = 24293 }, --Pattern: Silver Spellthread
		},
		{
			{ itemID = 2028907, desc = "Shoulder Enchants" }, --Inscription Inscription of the Blade
			{ itemID = 2028908, desc = "Shoulder Enchants" }, --Inscription Inscription of the Knight
			{ itemID = 2028904, desc = "Shoulder Enchants" }, --Inscription Inscription of the Oracle
			{ itemID = 2028903, desc = "Shoulder Enchants" }, --Inscription Inscription of the Orb
			{ itemID = 28881, desc = "Shoulder Enchants" }, --Inscription of Discipline
			{ itemID = 28878, desc = "Shoulder Enchants" }, --Inscription of Faith
			{ itemID = 28885, desc = "Shoulder Enchants" }, --Inscription of Vengeance
			{ itemID = 28882, desc = "Shoulder Enchants" }, --Inscription of Warding
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29127 }, --Vindicator's Hauberk
			{ itemID = 29128 }, --Lightwarden's Band
			{ itemID = 29130 }, --Auchenai Staff
			{ itemID = 24177 }, --Design: Pendant of Shadow's End
			{ itemID = 23604 }, --Plans: Flamebane Breastplate
			{ itemID = 29703 }, --Pattern: Blastguard Boots
			{ itemID = 29691 }, --Pattern: Flamescale Boots
			{ itemID = 25721 }, --Pattern: Vindicator's Armor Kit
		},
		{
			{ itemID = 2028910, desc = "Shoulder Enchants" }, --Greater Inscription of the Blade
			{ itemID = 2028911, desc = "Shoulder Enchants" }, --Greater Inscription of the Knight
			{ itemID = 2028912, desc = "Shoulder Enchants" }, --Greater Inscription of the Oracle
			{ itemID = 2028909, desc = "Shoulder Enchants" }, --Greater Inscription of the Orb
			{ itemID = 28886, desc = "Shoulder Enchants" }, --Greater Inscription of Discipline
			{ itemID = 28887, desc = "Shoulder Enchants" }, --Greater Inscription of Faith
			{ itemID = 28888, desc = "Shoulder Enchants" }, --Greater Inscription of Vengeance
			{ itemID = 28889, desc = "Shoulder Enchants" }, --Greater Inscription of Warding
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29123 }, --Medallion of the Lightbearer
			{ itemID = 29124 }, --Vindicator's Brand
			{ itemID = 23602 }, --Plans: Flamebane Helm
			{ itemID = 29702 }, --Pattern: Blastguard Pants
			{ itemID = 29689 }, --Pattern: Flamescale Leggings
			{ itemID = 24295 }, --Pattern: Golden Spellthread
			{ itemID = 30844 }, --Pattern: Flameheart Vest
			{ itemID = 31779 }, --Aldor Tabard
		},
		{
			{ itemID = 2228910, desc = "Shoulder Enchants" }, --Masters Inscription of the Blade
			{ itemID = 2228911, desc = "Shoulder Enchants" }, --Masters Inscription of the Knight
			{ itemID = 2228912, desc = "Shoulder Enchants" }, --Masters Inscription of the Oracle
			{ itemID = 2228909, desc = "Shoulder Enchants" }, --Masters Inscription of the Orb
			{ itemID = 228886, desc = "Shoulder Enchants" }, --Masters Inscription of Discipline
			{ itemID = 228887, desc = "Shoulder Enchants" }, --Masters Inscription of Faith
			{ itemID = 228888, desc = "Shoulder Enchants" }, --Masters Inscription of Vengeance
			{ itemID = 228889, desc = "Shoulder Enchants" }, --Masters Inscription of Warding
			{ itemID = 2228913, desc = "Shoulder Enchants" }, --Masters Inscription of Guardian
			{ itemID = 2228914, desc = "Shoulder Enchants" }, --Masters Inscription of Phalanx
			{ itemID = 228891, desc = "Shoulder Enchants" }, --Masters Inscription of Protection
			{ itemID = 228890, desc = "Shoulder Enchants" }, --Masters Inscription of Vigilance
		},
	}
}

----------------------
---The Consortium ---
----------------------

AtlasLoot_Data["Consortium"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "The Consortium",
	{
		Name = "Friendly",
		{
			{ itemID = 25732 }, --Pattern: Fel Leather Gloves
			{ itemID = 28274 }, --Formula: Enchant Cloak - Spell Penetration
			{ itemID = 23146 }, --Design: Shifting Shadow Draenite
			{ itemID = 23136 }, --Design: Luminous Flame Spessarite
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 29457 }, --Nethershard
			{ itemID = 29456 }, --Gift of the Ethereal
			{ itemID = 29118 }, --Smuggler's Ammo Pouch
			{ itemID = 25733 }, --Pattern: Fel Leather Boots
			{ itemID = 23134 }, --Design: Delicate Blood Garnet
			{ itemID = 23155 }, --Design: Lustrous Azure Moonstone
			{ itemID = 23150 }, --Design: Thick Golden Draenite
			{ itemID = 22552 }, --Formula: Enchant Weapon - Major Striking
			{ itemID = 25908 }, --Design: Swift Skyfire Diamond
			{ itemID = 25902 }, --Design: Powerful Earthstorm Diamond
			{ itemID = 24314 }, --Pattern: Bag of Jewels
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29117 }, --Stormspire Vest
			{ itemID = 29116 }, --Nomad's Leggings
			{ itemID = 29115 }, --Consortium Blaster
			{ itemID = 24178 }, --Design: Pendant of the Null Rune
			{ itemID = 25734 }, --Pattern: Fel Leather Leggings
			{ itemID = 22535 }, --Formula: Enchant Ring - Striking
			{ itemID = 23874 }, --Schematic: Elemental Seaforium Charge
			{ itemID = 25903 }, --Design: Bracing Earthstorm Diamond
			{ itemID = 33156 }, --Design: Crimson Sun
			{ itemID = 33305 }, --Design: Don Julio's Heart
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29122 }, --Nether Runner's Cowl
			{ itemID = 29119 }, --Haramad's Bargain
			{ itemID = 29121 }, --Guile of Khoraazi
			{ itemID = 33622 }, --Design: Relentless Earthstorm Diamond
			{ itemID = 31776 }, --Consortium Tabard
		},
	}
}

-------------------
---The Mag'har ---
-------------------

AtlasLoot_Data["Maghar"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "The Mag'har" .. " - " .. "Horde",
	{
		Name = "Friendly",
		{
			{ itemID = 25741 }, --Pattern: Netherfury Belt
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 29143 }, --Clefthoof Hide Quiver
			{ itemID = 25742 }, --Pattern: Netherfury Leggings
			{ itemID = 34174 }, --Pattern: Drums of Restoration
			{ itemID = 34172 }, --Pattern: Drums of Speed
			{ itemID = 29664 }, --Pattern: Reinforced Mining Bag
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29147 }, --Talbuk Hide Spaulders
			{ itemID = 29141 }, --Tempest Leggings
			{ itemID = 29145 }, --Band of Ancestral Spirits
			{ itemID = 25743 }, --Pattern: Netherfury Boots
			{ itemID = 22917 }, --Recipe: Transmute Primal Fire to Earth
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29102 }, --Reins of the Cobalt War Talbuk
			{ itemID = 29104 }, --Reins of the Silver War Talbuk
			{ itemID = 29105 }, --Reins of the Tan War Talbuk
			{ itemID = 29103 }, --Reins of the color.WHITE War Talbuk
			{ itemID = 31829 }, --Reins of the Cobalt Riding Talbuk
			{ itemID = 31831 }, --Reins of the Silver Riding Talbuk
			{ itemID = 31833 }, --Reins of the Tan Riding Talbuk
			{ itemID = 31835 }, --Reins of the color.WHITE Riding Talbuk
			{ itemID = 29139 }, --Ceremonial Cover
			{ itemID = 29135 }, --Earthcaller's Headdress
			{ itemID = 29137 }, --Hellscream's Will
			{ itemID = 31773 }, --Mag'har Tabard
		},
	}
}

------------------------------
---The Scale of the Sands ---
------------------------------

AtlasLoot_Data["ScaleSands"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "The Scale of the Sands",
	scaleOfSandsRings,
	{
		Name = "Friendly",
		{
			{ itemID = 32274 }, --Design: Bold Crimson Spinel
			{ itemID = 32283 }, --Design: Bright Crimson Spinel
			{ itemID = 32277 }, --Design: Delicate Crimson Spinel
			{ itemID = 32282 }, --Design: Runed Crimson Spinel
			{ itemID = 32284 }, --Design: Subtle Crimson Spinel
			{ itemID = 32281 }, --Design: Teardrop Crimson Spinel
			{ itemID = 32288 }, --Design: Lustrous Empyrean Sapphire
			{ itemID = 32286 }, --Design: Solid Empyrean Sapphire
			{ itemID = 32287 }, --Design: Sparkling Empyrean Sapphire
			{ itemID = 32290 }, --Design: Brilliant Lionseye
			{ itemID = 32293 }, --Design: Gleaming Lionseye
			{ itemID = 32291 }, --Design: Smooth Lionseye
			{ itemID = 32294 }, --Design: Thick Lionseye
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 35763 }, --Design: Quick Lionseye
			{ itemID = 32306 }, --Design: Glinting Pyrestone
			{ itemID = 32305 }, --Design: Luminous Pyrestone
			{ itemID = 32304 }, --Design: Potent Pyrestone
			{ itemID = 35762 }, --Design: Reckless Pyrestone
			{ itemID = 32299 }, --Design: Balanced Shadowsong Amethyst
			{ itemID = 32301 }, --Design: Glowing Shadowsong Amethyst
			{ itemID = 32300 }, --Design: Infused Shadowsong Amethyst
			{ itemID = 32311 }, --Design: Dazzling Seaspray Emerald
			{ itemID = 35765 }, --Design: Forceful Seaspray Emerald
			{ itemID = 32312 }, --Design: Jagged Seaspray Emerald
			{ itemID = 32310 }, --Design: Radiant Seaspray Emerald
			{ itemID = 35764 }, --Design: Steady Seaspray Emerald
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 31737 }, --Timeless Arrow
			{ itemID = 31735 }, --Timeless Shell
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 32292 }, --Design: Rigid Lionseye
			{ itemID = 32308 }, --Design: Wicked Pyrestone
			{ itemID = 32309 }, --Design: Enduring Seaspray Emerald
			{ itemID = 32302 }, --Design: Royal Shadowsong Amethyst
		},
	}
}

-------------------
---The Scryers ---
-------------------

AtlasLoot_Data["Scryer"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "The Scryers",
	{
		Name = "Friendly",
		{
			{ itemID = 23133 }, --Design: Runed Blood Garnet
			{ itemID = 23597 }, --Plans: Enchanted Adamantite Belt
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 23143 }, --Design: Dazzling Deep Peridot
			{ itemID = 23598 }, --Plans: Enchanted Adamantite Boots
			{ itemID = 29701 }, --Pattern: Enchanted Clefthoof Boots
			{ itemID = 29682 }, --Pattern: Enchanted Felscale Gloves
			{ itemID = 24292 }, --Pattern: Mystic Spellthread
		},
		{
			{ itemID = 28907, desc = "Shoulder Enchants" }, --Inscription Inscription of the Blade
			{ itemID = 28908, desc = "Shoulder Enchants" }, --Inscription Inscription of the Knight
			{ itemID = 28904, desc = "Shoulder Enchants" }, --Inscription Inscription of the Oracle
			{ itemID = 28903, desc = "Shoulder Enchants" }, --Inscription Inscription of the Orb
			{ itemID = 2028881, desc = "Shoulder Enchants" }, --Inscription of Discipline
			{ itemID = 2028878, desc = "Shoulder Enchants" }, --Inscription of Faith
			{ itemID = 2028885, desc = "Shoulder Enchants" }, --Inscription of Vengeance
			{ itemID = 2028882, desc = "Shoulder Enchants" }, --Inscription of Warding
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29131 }, --Retainer's Leggings
			{ itemID = 29134 }, --Gauntlets of the Chosen
			{ itemID = 29132 }, --Scryer's Bloodgem
			{ itemID = 29133 }, --Seer's Cane
			{ itemID = 24176 }, --Design: Pendant of Withering
			{ itemID = 22908 }, --Recipe: Elixir of Major Firepower
			{ itemID = 23599 }, --Plans: Enchanted Adamantite Breastplate
			{ itemID = 29700 }, --Pattern: Enchanted Clefthoof Gloves
			{ itemID = 29684 }, --Pattern: Enchanted Felscale Boots
		},
		{
			{ itemID = 25722, desc = "Shoulder Enchants" }, --Pattern: Magister's Armor Kit
			{ itemID = 28910, desc = "Shoulder Enchants" }, --Greater Inscription of the Blade
			{ itemID = 28911, desc = "Shoulder Enchants" }, --Greater Inscription of the Knight
			{ itemID = 28912, desc = "Shoulder Enchants" }, --Greater Inscription of the Oracle
			{ itemID = 28909, desc = "Shoulder Enchants" }, --Greater Inscription of the Orb
			{ itemID = 2028886, desc = "Shoulder Enchants" }, --Greater Inscription of Discipline
			{ itemID = 2028887, desc = "Shoulder Enchants" }, --Greater Inscription of Faith
			{ itemID = 2028888, desc = "Shoulder Enchants" }, --Greater Inscription of Vengeance
			{ itemID = 2028889, desc = "Shoulder Enchants" }, --Greater Inscription of Warding
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29126 }, --Seer's Signet
			{ itemID = 29125 }, --Retainer's Blade
			{ itemID = 23600 }, --Plans: Enchanted Adamantite Leggings
			{ itemID = 29698 }, --Pattern: Enchanted Clefthoof Leggings
			{ itemID = 29677 }, --Pattern: Enchanted Felscale Leggings
			{ itemID = 24294 }, --Pattern: Runic Spellthread
			{ itemID = 31780 }, --Scryers Tabard
		},
		{
			{ itemID = 228910, desc = "Shoulder Enchants" }, --Masters Inscription of the Blade
			{ itemID = 228911, desc = "Shoulder Enchants" }, --Masters Inscription of the Knight
			{ itemID = 228912, desc = "Shoulder Enchants" }, --Masters Inscription of the Oracle
			{ itemID = 228909, desc = "Shoulder Enchants" }, --Masters Inscription of the Orb
			{ itemID = 2228886, desc = "Shoulder Enchants" }, --Masters Inscription of Discipline
			{ itemID = 2228887, desc = "Shoulder Enchants" }, --Masters Inscription of Faith
			{ itemID = 2228888, desc = "Shoulder Enchants" }, --Masters Inscription of Vengeance
			{ itemID = 2228889, desc = "Shoulder Enchants" }, --Masters Inscription of Warding
			{ itemID = 228913, desc = "Shoulder Enchants" }, --Masters Inscription of Guardian
			{ itemID = 228914, desc = "Shoulder Enchants" }, --Masters Inscription of Phalanx
			{ itemID = 2228891, desc = "Shoulder Enchants" }, --Masters Inscription of Protection
			{ itemID = 2228890, desc = "Shoulder Enchants" }, --Masters Inscription of Vigilance
		},
	}
}

-------------------
---The Sha'tar ---
-------------------

AtlasLoot_Data["Shatar"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "The Sha'tar",
	{
		Name = "Friendly",
		{
			{ itemID = 25904 }, --Design: Insightful Earthstorm Diamond
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 29180 }, --Blessed Scale Girdle
			{ itemID = 29179 }, --Xi'ri's Gift
			{ itemID = 24182 }, --Design: Talasite Owl
			{ itemID = 29191 }, --Arcanum of Power
			{ itemID = 22915 }, --Recipe: Transmute Primal Air to Fire
			{ itemID = 28281 }, --Formula: Enchant Weapon - Major Healing
			{ itemID = 13517 }, --Recipe: Alchemist's Stone
			{ itemID = 22537 }, --Formula: Enchant Ring - Healing Power
			{ itemID = 33159 }, --Design: Blood of Amber
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 30826 }, --Design: Ring of Arcane Shielding
			{ itemID = 29195 }, --Arcanum of Arcane Warding
			{ itemID = 28273 }, --Formula: Enchant Gloves - Major Healing
			{ itemID = 33155 }, --Design: Kailee's Rose
			{ itemID = 29717 }, --Pattern: Drums of Battle
			{ itemID = 30634 }, --Warpforged Key
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29177 }, --A'dal's Command
			{ itemID = 29175 }, --Gavel of Pure Light
			{ itemID = 29176 }, --Crest of the Sha'tar
			{ itemID = 33153 }, --Formula: Enchant Gloves - Threat
			{ itemID = 31354 }, --Recipe: Flask of the Titans
			{ itemID = 31781 }, --Sha'tar Tabard
		},
	}
}

----------------------
---The Violet Eye ---
----------------------

AtlasLoot_Data["VioletEye"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "The Violet Eye",
	{
		Name = "Rings",
		{
			{ icon = "INV_Jewelry_Ring_62", name = color.WHITE.. "Path of the Violet Assassin" },
			{ itemID = 29280 }, --Violet Signet
			{ itemID = 29281 }, --Violet Signet
			{ itemID = 29282 }, --Violet Signet
			{ itemID = 29283 }, --Violet Signet of the Master Assassin
			gap,
			{ icon = "INV_Jewelry_Ring_62", name = color.WHITE.. "Path of the Violet Mage" },
			{ itemID = 29284 }, --Violet Signet
			{ itemID = 29285 }, --Violet Signet
			{ itemID = 29286 }, --Violet Signet
			{ itemID = 29287 }, --Violet Signet of the Archmage
		},
		{
			{ icon = "INV_Jewelry_Ring_62", name = color.WHITE.. "Path of the Violet Restorer" },
			{ itemID = 29288 }, --Violet Signet
			{ itemID = 29289 }, --Violet Signet
			{ itemID = 29291 }, --Violet Signet
			{ itemID = 29290 }, --Violet Signet of the Grand Restorer
			gap,
			{ icon = "INV_Jewelry_Ring_62", name = color.WHITE.. "Path of the Violet Protector" },
			{ itemID = 29276 }, --Violet Signet
			{ itemID = 29277 }, --Violet Signet
			{ itemID = 29278 }, --Violet Signet
			{ itemID = 29279 }, --Violet Signet of the Great Protector
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 31113 }, --Violet Badge
			{ itemID = 31395 }, --Plans: Iceguard Helm
			{ itemID = 31393 }, --Plans: Iceguard Breastplate
			{ itemID = 31401 }, --Design: The Frozen Eye
			{ itemID = 29187 }, --Inscription of Endurance
			{ itemID = 33209 }, --Recipe: Flask of Chromatic Wonder
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 34581 }, --Mysterious Arrow
			{ itemID = 34582 }, --Mysterious Shell
			{ itemID = 31394 }, --Plans: Iceguard Leggings
			{ itemID = 33205 }, --Pattern: Shadowprowler's Chestguard
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 33124 }, --Pattern: Cloak of Darkness
			{ itemID = 33165 }, --Formula: Enchant Weapon - Greater Agility
		},
	}
}

-----------------
---Thrallmar ---
-----------------

AtlasLoot_Data["Thrallmar"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Thrallmar" .. " - " .. "Horde",
	{
		Name = "Friendly",
		{
			{ itemID = 25738 }, --Pattern: Felstalker Belt
			{ itemID = 31359 }, --Design: Enduring Deep Peridot
			{ itemID = 24000 }, --Formula: Enchant Bracer - Superior Healing
			{ itemID = 24006 }, --Grunt's Waterskin
			{ itemID = 24009 }, --Dried Fruit Rations
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 25824 }, --Farseer's Band
			{ itemID = 25823 }, --Grunt's Waraxe
			{ itemID = 25739 }, --Pattern: Felstalker Bracers
			{ itemID = 25740 }, --Pattern: Felstalker Breastplate
			{ itemID = 29197 }, --Arcanum of Fire Warding
			{ itemID = 29232 }, --Recipe: Transmute Skyfire Diamond
			{ itemID = 24001 }, --Recipe: Elixir of Major Agility
			{ itemID = 31361 }, --Pattern: Cobrahide Leg Armor
			{ itemID = 30637 }, --Flamewrought Key
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 29168 }, --Ancestral Band
			{ itemID = 29167 }, --Blackened Spear
			{ itemID = 32882 }, --Hellfire Shot
			{ itemID = 31358 }, --Design: Dawnstone Crab
			{ itemID = 29190 }, --Arcanum of Renewal
			{ itemID = 24003 }, --Formula: Enchant Chest - Exceptional Stats
			{ itemID = 34201 }, --Pattern: Netherscale Ammo Pouch
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 29155 }, --Stormcaller
			{ itemID = 29165 }, --Warbringer
			{ itemID = 29152 }, --Marksman's Bow
			{ itemID = 33151 }, --Formula: Enchant Cloak - Subtlety
			{ itemID = 24002 }, --Plans: Felsteel Shield Spike
			{ itemID = 31362 }, --Pattern: Nethercobra Leg Armor
			{ itemID = 24004 }, --Thrallmar Tabard
		},
	}
}

--------------------
---Tranquillien ---
--------------------

AtlasLoot_Data["Tranquillien"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Tranquillien" .. " - " .. "Horde",
	{
		Name = "Friendly",
		{
			{ itemID = 22991 }, --Apprentice Boots
			{ itemID = 22992 }, --Bogwalker Boots
			{ itemID = 22993 }, --Volunteer's Greaves
			{ itemID = 28164 }, --Tranquillien Flamberge
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 28155 }, --Apothecary's Waistband
			{ itemID = 28158 }, --Batskin Belt
			{ itemID = 28162 }, --Tranquillien Defender's Girdle
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 22986 }, --Apothecary's Robe
			{ itemID = 22987 }, --Deathstalker's Vest
			{ itemID = 22985 }, --Suncrown Hauberk
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 22990 }, --Tranquillien Champion's Cloak
		},
	}
}

------------
---Misc ---
------------

AtlasLoot_Data["ShattrathFlasks"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Shattrath Flasks",
	{
		Name = "Shattrath Flasks",
		{
			{ itemID = 32898 }, --Shattrath Flask of Fortification
			{ itemID = 32899 }, --Shattrath Flask of Mighty
			{ itemID = 32901 }, --Shattrath Flask of Relentless
			{ itemID = 32900 }, --Shattrath Flask of Supreme Power
		},
	}
}

-----------
---PvP ---
-----------

---------------------------------------------------------------
---World PvP - Hellfire Peninsula: Hellfire Fortifications ---
---------------------------------------------------------------

AtlasLoot_Data["PVPHellfire"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Hellfire Fortifications",
	{
		Name = "Hellfire Fortifications",
		{
			{ itemID = 27833, desc = "=ds=15 #markthrallmarhhold#" }, --Band of the Victor
			{ itemID = 27786, desc = "=ds=10 #markthrallmarhhold#" }, --Barbed Deep Peridot
			{ itemID = 28360, desc = "=ds=10 #markthrallmarhhold#" }, --Mighty Blood Garnet
		},
		{
			{ icon = "INV_BannerPVP_02", name = color.WHITE.."Alliance" },
			{ itemID = 24520, desc = "=ds=5 #markhhold#" }, --Honor Hold Favor
			{ itemID = 24579, desc = "=ds=".."Currency (Alliance)" }, --Mark of Honor Hold
			{ itemID = 27830, desc = "=ds=15 #markthrallmarhhold#" }, --Circlet of the Victor
			{ itemID = 27785, desc = "=ds=10 #markthrallmarhhold#" }, --Notched Deep Peridot
			{ itemID = 27777, desc = "=ds=10 #markthrallmarhhold#" }, --Stark Blood Garnet
			{ icon = "INV_BannerPVP_01", name = color.WHITE.."Horde" },
			{ itemID = 24522, desc = "=ds=5 #markthrallmar#" }, --Thrallmar Favor
			{ itemID = 24581, desc = "=ds=".."Currency (Horde)" }, --Mark of Thrallmar
		},
	}
}

AtlasLoot_Data["PVPHalaa"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Nagrand" .. ": " .. "Halaa",
	{
		Name = "Page 1",
		{
			{ itemID = 28915 , price = "70 #halaabattle# 15 #halaaresearch#" }, --Reins of the Dark Riding Talbuk
			{ itemID = 27679, price = "100 #halaabattle#" }, --Sublime Mystic Dawnstone
			{ itemID = 27649, price = "40 #halaabattle# 2 #halaaresearch#" }, --Hierophant's Leggings
			{ itemID = 27648, price = "40 #halaabattle# 2 #halaaresearch#" }, --Dreamstalker Leggings
			{ itemID = 27650, price = "40 #halaabattle# 2 #halaaresearch#" }, --Shadowstalker's Leggings
			{ itemID = 27647, price = "40 #halaabattle# 2 #halaaresearch#" }, --Marksman's Legguards
			{ itemID = 27652, price = "40 #halaabattle# 2 #halaaresearch#" }, --Stormbreaker's Leggings
			{ itemID = 27654, price = "40 #halaabattle# 2 #halaaresearch#" }, --Avenger's Legguards
			{ itemID = 27653, price = "40 #halaabattle# 2 #halaaresearch#" }, --Slayer's Legguards
			{ itemID = 24208 }, --Design: Mystic Dawnstone
			{ itemID = 26045 }, --Halaa Battle Token
			{ itemID = 29228 , price = "100 #halaabattle# 20 #halaaresearch#" }, --Reins of the Dark War Talbuk
			{ itemID = 27680, price = "8 #halaaresearch#" }, --Halaani Bag
		},
		{
			{ itemID = 27638, price = "20 #halaabattle# 1 #halaaresearch#" }, --Hierophant's Sash
			{ itemID = 27645, price = "20 #halaabattle# 1 #halaaresearch#" }, --Dreamstalker Sash
			{ itemID = 27637, price = "20 #halaabattle# 1 #halaaresearch#" }, --Shadowstalker's Sash
			{ itemID = 27646, price = "20 #halaabattle# 1 #halaaresearch#" }, --Marksman's Belt
			{ itemID = 27643, price = "20 #halaabattle# 1 #halaaresearch#" }, --Stormbreaker's Girdle
			{ itemID = 27644, price = "20 #halaabattle# 1 #halaaresearch#" }, --Avenger's Waistguard
			{ itemID = 27639, price = "20 #halaabattle# 1 #halaaresearch#" }, --Slayer's Waistguard
			{ itemID = 33783, price = "4 #halaaresearch#" }, --Design: Steady Talasite
			{ itemID = 32071, price = "2 #halaaresearch#" }, --Recipe: Elixir of Ironskin
			{ itemID = 26044 }, --Halaa Research Token
		},
	},
	{
		Name = "Page 2",
		{
			{ itemID = 30611 }, --Halaani Razorshaft
			{ itemID = 30615 }, --Halaani Whiskey
			{ icon = "INV_BannerPVP_02", name = color.WHITE.."Alliance" },
			{ itemID = 30598 }, --Don Amancio's Heart
			{ itemID = 30597 }, --Halaani Claymore
			{ itemID = 30599 }, --Avenging Blades
			{ itemID = 30612 }, --Halaani Grimshot
			{ icon = "INV_BannerPVP_01", name = color.WHITE.."Horde" },
			{ itemID = 30571 }, --Don Rodrigo's Heart
			{ itemID = 30570 }, --Arkadian Claymore
			{ itemID = 30568 }, --The Sharp Cookie
		},
	}
}

AtlasLoot_Data["PVPSpiritTowers"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Spirit Towers",
	{
		Name = "Terokkar Forest" .. ": " .. "Spirit Towers",
		{
			{ itemID = 28553 , price = "50 #spiritshard#" }, --Band of the Exorcist
			{ itemID = 28557, price = "8 #spiritshard#" }, --Swift Starfire Diamond
			{ itemID = 28759, price = "18 #spiritshard#" }, --Exorcist's Dreadweave Hood
			{ itemID = 28574, price = "18 #spiritshard#" }, --Exorcist's Dragonhide Helm
			{ itemID = 28575, price = "18 #spiritshard#" }, --Exorcist's Wyrmhide Helm
			{ itemID = 28577, price = "18 #spiritshard#" }, --Exorcist's Linked Helm
			{ itemID = 28560, price = "18 #spiritshard#" }, --Exorcist's Lamellar Helm
			{ itemID = 28761, price = "18 #spiritshard#" }, --Exorcist's Scaled Helm
			{ itemID = 32947, price = "2 #spiritshard#" }, --Auchenai Healing Potion
			{ itemID = 28558 }, --Spirit Shard
		},
		{
			{ itemID = 28555 , price = "50 #spiritshard#" }, --Seal of the Exorcist
			{ itemID = 28556, price = "8 #spiritshard#" }, --Swift Windfire Diamond
			{ itemID = 28760, price = "18 #spiritshard#" }, --Exorcist's Silk Hood
			{ itemID = 28561, price = "18 #spiritshard#" }, --Exorcist's Leather Helm
			{ itemID = 28576, price = "18 #spiritshard#" }, --Exorcist's Chain Helm
			{ itemID = 28758, price = "18 #spiritshard#" }, --Exorcist's Mail Helm
			{ itemID = 28559, price = "18 #spiritshard#" }, --Exorcist's Plate Helm
			{ itemID = 32948, price = "2 #spiritshard#" }, --Auchenai Mana Potion
		},
	}
}

AtlasLoot_Data["PVPTwinSpireRuins"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Twin Spire Ruins",
	{
		Name = "Zangarmarsh" .. ": " .. "Twin Spire Ruins",
		{
			{ itemID = 27990, price = "15 #markthrallmarhhold#" }, --Idol of Savagery
			{ itemID = 27984, price = "15 #markthrallmarhhold#" }, --Totem of Impact
			{ itemID = 27922, price = "30 #markthrallmarhhold#" }, --Mark of Defiance
			{ itemID = 27929, price = "15 #markthrallmarhhold#" }, --Terminal Edge
			{ itemID = 27939, price = "15 #markthrallmarhhold#" }, --Incendic Rod
			{ itemID = 24579, desc = "=ds=".."Currency (Alliance)" }, --Mark of Honor Hold
		},
		{
			{ itemID = 27983, price = "15 #markthrallmarhhold#" }, --Libram of Zeal
			{ itemID = 27920, price = "30 #markthrallmarhhold#" }, --Mark of Conquest
			{ itemID = 27927, price = "30 #markthrallmarhhold#" }, --Mark of Vindication
			{ itemID = 27930, price = "15 #markthrallmarhhold#" }, --Splintermark
			{ itemID = 24581, desc = "=ds=".."Currency (Horde)" }, --Mark of Thrallmar
		},
	}
}

-------------------------------------
---Rep-PvP Level 70 - Armor Sets ---
-------------------------------------

AtlasLoot_Data["PVP70RepGear"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Rep PVP Gear",
	{
		Name = "Cloth",
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Satin Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 35339, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Satin Hood
			{ itemID = 35341, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Satin Mantle
			{ itemID = 35342, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Satin Robe
			{ itemID = 35338, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Satin Gloves
			{ itemID = 35340, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Satin Leggings
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Mooncloth Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 35333, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Mooncloth Cowl
			{ itemID = 35336, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Mooncloth Shoulderpads
			{ itemID = 35337, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Mooncloth Vestments
			{ itemID = 35335, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Mooncloth Mitts
			{ itemID = 35334, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Mooncloth Legguards
		},
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Evoker's Silk Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 35344, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Evoker's Silk Cowl
			{ itemID = 35343, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Evoker's Silk Amice
			{ itemID = 35346, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Evoker's Silk Raiment
			{ itemID = 35345, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Evoker's Silk Handguards
			{ itemID = 35347, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Evoker's Silk Trousers
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Dreadweave Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 35329, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Dreadweave Hood
			{ itemID = 35331, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Dreadweave Mantle
			{ itemID = 35332, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Dreadweave Robe
			{ itemID = 35328, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Dreadweave Gloves
			{ itemID = 35330, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Dreadweave Leggings
		},
	},
	{
		Name = "Leather",
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Dragonhide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 35357, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Dragonhide Helm
			{ itemID = 35359, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Dragonhide Spaulders
			{ itemID = 35360, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Dragonhide Robe
			{ itemID = 35356, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Dragonhide Gloves
			{ itemID = 35358, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Dragonhide Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Wyrmhide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 35372, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Wyrmhide Helm
			{ itemID = 35374, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Wyrmhide Spaulders
			{ itemID = 35375, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Wyrmhide Robe
			{ itemID = 35371, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Wyrmhide Gloves
			{ itemID = 35373, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Wyrmhide Legguards
		},
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Kodohide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 35362, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Kodohide Helm
			{ itemID = 35364, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Kodohide Spaulders
			{ itemID = 35365, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Kodohide Robe
			{ itemID = 35361, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Kodohide Gloves
			{ itemID = 35363, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Kodohide Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Opportunist's Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 35367, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Opportunist's Leather Helm
			{ itemID = 35369, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Opportunist's Leather Spaulders
			{ itemID = 35370, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Opportunist's Leather Tunic
			{ itemID = 35366, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Opportunist's Leather Gloves
			{ itemID = 35368, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Opportunist's Leather Legguards
		},
	},
	{
		Name = "Mail",
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Seer's Linked Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 35383, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Seer's Linked Helm
			{ itemID = 35385, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Seer's Linked Spaulders
			{ itemID = 35381, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Seer's Linked Armor
			{ itemID = 35382, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Seer's Linked Gauntlets
			{ itemID = 35384, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Seer's Linked Leggings
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Seer's Mail Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 35388, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Seer's Mail Helm
			{ itemID = 35390, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Seer's Mail Spaulders
			{ itemID = 35386, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Seer's Mail Armor
			{ itemID = 35387, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Seer's Mail Gauntlets
			{ itemID = 35389, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Seer's Mail Leggings
		},
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Seer's Ringmail Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 35393, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Seer's Ringmail Headpiece
			{ itemID = 35395, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Seer's Ringmail Shoulderpads
			{ itemID = 35391, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Seer's Ringmail Chestguard
			{ itemID = 35392, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Seer's Ringmail Gloves
			{ itemID = 35394, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Seer's Ringmail Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Stalker's Chain Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 35378, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Stalker's Chain Helm
			{ itemID = 35380, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Stalker's Chain Spaulders
			{ itemID = 35376, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Stalker's Chain Armor
			{ itemID = 35377, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Stalker's Chain Gauntlets
			{ itemID = 35379, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Stalker's Chain Leggings
		},
	},
	{
		Name = "Plate",
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Crusader's Scaled Battledgear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 35414, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Crusader's Scaled Helm
			{ itemID = 35416, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Crusader's Scaled Shoulders
			{ itemID = 35412, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Crusader's Scaled Chestpiece
			{ itemID = 35413, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Crusader's Scaled Gauntlets
			{ itemID = 35415, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Crusader's Scaled Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Crusader's Ornamented Battledgear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 35404, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Crusader's Ornamented Headguard
			{ itemID = 35406, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Crusader's Ornamented Spaulders
			{ itemID = 35402, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Crusader's Ornamented Chestplate
			{ itemID = 35403, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Crusader's Ornamented Gloves
			{ itemID = 35405, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Crusader's Ornamented Leggings
		},
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Savage's Plate Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] },
			{ itemID = 35409, desc = "=ds=".."Thrallmar".."/".."Honor Hold"..", =ec1=".."Honored" }, --Savage Plate Helm
			{ itemID = 35411, desc = "=ds=".."Lower City"..", =ec1=".."Honored" }, --Savage Plate Shoulders
			{ itemID = 35407, desc = "=ds=".."The Sha'tar"..", =ec1=".."Honored" }, --Savage Plate Chestpiece
			{ itemID = 35408, desc = "=ds=".."Cenarion Expedition"..", =ec1=".."Honored" }, --Savage Plate Gauntlets
			{ itemID = 35410, desc = "=ds=".."Keepers of Time"..", =ec1=".."Honored" }, --Savage Plate Legguards
		},
	},
	{
		Name = "Cloth" .. " - " .. "Alliance",
			{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Satin Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 28705 }, --Grand Marshal's Satin Hood
			{ itemID = 28707 }, --Grand Marshal's Satin Mantle
			{ itemID = 28708 }, --Grand Marshal's Satin Robe
			{ itemID = 28704 }, --Grand Marshal's Satin Gloves
			{ itemID = 28706 }, --Grand Marshal's Satin Leggings
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Mooncloth Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 31622 }, --Grand Marshal's Mooncloth Cowl
			{ itemID = 31624 }, --Grand Marshal's Mooncloth Shoulderpads
			{ itemID = 31625 }, --Grand Marshal's Mooncloth Vestments
			{ itemID = 31620 }, --Grand Marshal's Mooncloth Mitts
			{ itemID = 31623 }, --Grand Marshal's Mooncloth Legguards
		},
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Evoker's Silk Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 28715 }, --Grand Marshal's Silk Cowl
			{ itemID = 28714 }, --Grand Marshal's Silk Amice
			{ itemID = 28717 }, --Grand Marshal's Silk Raiment
			{ itemID = 28716 }, --Grand Marshal's Silk Handguards
			{ itemID = 28718 }, --Grand Marshal's Silk Trousers
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Dreadweave Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28625 }, --Grand Marshal's Dreadweave Hood
			{ itemID = 28627 }, --Grand Marshal's Dreadweave Mantle
			{ itemID = 28628 }, --Grand Marshal's Dreadweave Robe
			{ itemID = 28624 }, --Grand Marshal's Dreadweave Gloves
			{ itemID = 28626 }, --Grand Marshal's Dreadweave Leggings
			},

	},
	{
		Name = "Leather" .. " - " .. "Alliance",
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Dragonhide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 28619 }, --Grand Marshal's Dragonhide Helm
			{ itemID = 28622 }, --Grand Marshal's Dragonhide Spaulders
			{ itemID = 28623 }, --Grand Marshal's Dragonhide Robe
			{ itemID = 28618 }, --Grand Marshal's Dragonhide Gloves
			{ itemID = 28620 }, --Grand Marshal's Dragonhide Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Wyrmhide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 31590 }, --Grand Marshal's Wyrmhide Helm
			{ itemID = 31592 }, --Grand Marshal's Wyrmhide Spaulders
			{ itemID = 31593 }, --Grand Marshal's Wyrmhide Robe
			{ itemID = 31589 }, --Grand Marshal's Wyrmhide Gloves
			{ itemID = 31591 }, --Grand Marshal's Wyrmhide Legguards
		},
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Kodohide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 28720 }, --Grand Marshal's Kodohide Helm
			{ itemID = 28722 }, --Grand Marshal's Kodohide Spaulders
			{ itemID = 28723 }, --Grand Marshal's Kodohide Robe
			{ itemID = 28719 }, --Grand Marshal's Kodohide Gloves
			{ itemID = 28721 }, --Grand Marshal's Kodohide Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Opportunist's Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 28685 }, --Grand Marshal's Leather Helm
			{ itemID = 28687 }, --Grand Marshal's Leather Spaulders
			{ itemID = 28688 }, --Grand Marshal's Leather Tunic
			{ itemID = 28684 }, --Grand Marshal's Leather Gloves
			{ itemID = 28686 }, --Grand Marshal's Leather Legguards
		},
	},
	{
		Name = "Mail" .. " - " .. "Alliance",
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Seer's Linked Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28691 }, --Grand Marshal's Linked Helm
			{ itemID = 28693 }, --Grand Marshal's Linked Spaulders
			{ itemID = 28689 }, --Grand Marshal's Linked Armor
			{ itemID = 28690 }, --Grand Marshal's Linked Gauntlets
			{ itemID = 28692 }, --Grand Marshal's Linked Leggings
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Seer's Mail Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28696 }, --Grand Marshal's Mail Helm
			{ itemID = 28698 }, --Grand Marshal's Mail Spaulders
			{ itemID = 28694 }, --Grand Marshal's Mail Armor
			{ itemID = 28695 }, --Grand Marshal's Mail Gauntlets
			{ itemID = 28697 }, --Grand Marshal's Mail Leggings
		},
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Seer's Ringmail Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 31642 }, --Grand Marshal's Ringmail Headpiece
			{ itemID = 31644 }, --Grand Marshal's Ringmail Shoulderpads
			{ itemID = 31640 }, --Grand Marshal's Ringmail Chestguard
			{ itemID = 31641 }, --Grand Marshal's Ringmail Gloves
			{ itemID = 31643 }, --Grand Marshal's Ringmail Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Stalker's Chain Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 28615 }, --Grand Marshal's Chain Helm
			{ itemID = 28617 }, --Grand Marshal's Chain Spaulders
			{ itemID = 28613 }, --Grand Marshal's Chain Armor
			{ itemID = 28614 }, --Grand Marshal's Chain Gauntlets
			{ itemID = 28616 }, --Grand Marshal's Chain Leggings
		},
	},
	{
		Name = "Plate" .. " - " .. "Alliance",
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Crusader's Scaled Battledgear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 28711 }, --Grand Marshal's Scaled Helm
			{ itemID = 28713 }, --Grand Marshal's Scaled Shoulders
			{ itemID = 28709 }, --Grand Marshal's Scaled Chestpiece
			{ itemID = 28710 }, --Grand Marshal's Scaled Gauntlets
			{ itemID = 28712 }, --Grand Marshal's Scaled Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Crusader's Ornamented Battledgear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 31632 }, --Grand Marshal's Ornamented Headguard
			{ itemID = 31634 }, --Grand Marshal's Ornamented Spaulders
			{ itemID = 31630 }, --Grand Marshal's Ornamented Chestplate
			{ itemID = 31631 }, --Grand Marshal's Ornamented Gloves
			{ itemID = 31633 }, --Grand Marshal's Ornamented Leggings
		},
		{
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Savage's Plate Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] },
			{ itemID = 28701 }, --Grand Marshal's Plate Helm
			{ itemID = 28703 }, --Grand Marshal's Plate Shoulders
			{ itemID = 28699 }, --Grand Marshal's Plate Chestpiece
			{ itemID = 28700 }, --Grand Marshal's Plate Gauntlets
			{ itemID = 28702 }, --Grand Marshal's Plate Legguards
			{ icon = "INV_BannerPVP_02", name = "=q6=".."Gladiator's Aegis", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 28681 }, --Grand Marshal's Lamellar Helm
			{ itemID = 28683 }, --Grand Marshal's Lamellar Shoulders
			{ itemID = 28679 }, --Grand Marshal's Lamellar Chestpiece
			{ itemID = 28680 }, --Grand Marshal's Lamellar Gauntlets
			{ itemID = 28724 }, --Grand Marshal's Lamellar Legguards
		},
	},
	{
		Name = "Cloth" .. " - Horde",
		{
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Satin Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 28857 }, --High Warlord's Satin Hood
			{ itemID = 28859 }, --High Warlord's Satin Mantle
			{ itemID = 28860 }, --High Warlord's Satin Robe
			{ itemID = 28856 }, --High Warlord's Satin Gloves
			{ itemID = 28858 }, --High Warlord's Satin Leggings
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Mooncloth Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 31626 }, --High Warlord's Mooncloth Cowl
			{ itemID = 31628 }, --High Warlord's Mooncloth Shoulderpads
			{ itemID = 31629 }, --High Warlord's Mooncloth Vestments
			{ itemID = 31621 }, --High Warlord's Mooncloth Mitts
			{ itemID = 31627 }, --High Warlord's Mooncloth Legguards
		},
		{
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Evoker's Silk Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 28867 }, --High Warlord's Silk Cowl
			{ itemID = 28866 }, --High Warlord's Silk Amice
			{ itemID = 28869 }, --High Warlord's Silk Raiment
			{ itemID = 28868 }, --High Warlord's Silk Handguards
			{ itemID = 28870 }, --High Warlord's Silk Trousers
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Dreadweave Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28818 }, --High Warlord's Dreadweave Hood
			{ itemID = 28820 }, --High Warlord's Dreadweave Mantle
			{ itemID = 28821 }, --High Warlord's Dreadweave Robe
			{ itemID = 28817 }, --High Warlord's Dreadweave Gloves
			{ itemID = 28819 }, --High Warlord's Dreadweave Leggings
		},
	},
	{
		Name = "Leather" .. " - Horde",
		{
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Dragonhide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 28812 }, --High Warlord's Dragonhide Helm
			{ itemID = 28814 }, --High Warlord's Dragonhide Spaulders
			{ itemID = 28815 }, --High Warlord's Dragonhide Robe
			{ itemID = 28811 }, --High Warlord's Dragonhide Gloves
			{ itemID = 28813 }, --High Warlord's Dragonhide Legguards
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Wyrmhide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 28872 }, --High Warlord's Wyrmhide Helm
			{ itemID = 28874 }, --High Warlord's Wyrmhide Spaulders
			{ itemID = 28875 }, --High Warlord's Wyrmhide Robe
			{ itemID = 28871 }, --High Warlord's Wyrmhide Gloves
			{ itemID = 28873 }, --High Warlord's Wyrmhide Legguards
		},
		{
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Kodohide Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 31585 }, --High Warlord's Kodohide Helm
			{ itemID = 31587 }, --High Warlord's Kodohide Spaulders
			{ itemID = 31588 }, --High Warlord's Kodohide Robe
			{ itemID = 31584 }, --High Warlord's Kodohide Gloves
			{ itemID = 31586 }, --High Warlord's Kodohide Legguards
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Opportunist's Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 28837 }, --High Warlord's Leather Helm
			{ itemID = 28839 }, --High Warlord's Leather Spaulders
			{ itemID = 28840 }, --High Warlord's Leather Tunic
			{ itemID = 28836 }, --High Warlord's Leather Gloves
			{ itemID = 28838 }, --High Warlord's Leather Legguards
		},
	},
	{
		Name = "Mail" .. " - Horde",
		{
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Seer's Linked Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28843 }, --High Warlord's Linked Helm
			{ itemID = 28845 }, --High Warlord's Linked Spaulders
			{ itemID = 28841 }, --High Warlord's Linked Armor
			{ itemID = 28842 }, --High Warlord's Linked Gauntlets
			{ itemID = 28844 }, --High Warlord's Linked Leggings
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Seer's Mail Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28848 }, --High Warlord's Mail Helm
			{ itemID = 28850 }, --High Warlord's Mail Spaulders
			{ itemID = 28846 }, --High Warlord's Mail Armor
			{ itemID = 28847 }, --High Warlord's Mail Gauntlets
			{ itemID = 28849 }, --High Warlord's Mail Leggings
		},
		{
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Seer's Ringmail Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 31648 }, --High Warlord's Ringmail Headpiece
			{ itemID = 31650 }, --High Warlord's Ringmail Shoulderpads
			{ itemID = 31646 }, --High Warlord's Ringmail Chestguard
			{ itemID = 31647 }, --High Warlord's Ringmail Gloves
			{ itemID = 31649 }, --High Warlord's Ringmail Legguards
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Stalker's Chain Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 28807 }, --High Warlord's Chain Helm
			{ itemID = 28809 }, --High Warlord's Chain Spaulders
			{ itemID = 28805 }, --High Warlord's Chain Armor
			{ itemID = 28806 }, --High Warlord's Chain Gauntlets
			{ itemID = 28808 }, --High Warlord's Chain Leggings
		},
	},
	{
		Name = "Plate" .. " - Horde",
		{
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Crusader's Scaled Battledgear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 28863 }, --High Warlord's Scaled Helm
			{ itemID = 28865 }, --High Warlord's Scaled Shoulders
			{ itemID = 28861 }, --High Warlord's Scaled Chestpiece
			{ itemID = 28862 }, --High Warlord's Scaled Gauntlets
			{ itemID = 28864 }, --High Warlord's Scaled Legguards
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Crusader's Ornamented Battledgear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 31637 }, --High Warlord's Ornamented Headguard
			{ itemID = 31639 }, --High Warlord's Ornamented Spaulders
			{ itemID = 31635 }, --High Warlord's Ornamented Chestplate
			{ itemID = 31636 }, --High Warlord's Ornamented Gloves
			{ itemID = 31638 }, --High Warlord's Ornamented Leggings
		},
		{
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Savage's Plate Battlegear", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] },
			{ itemID = 28853 }, --High Warlord's Plate Helm
			{ itemID = 28855 }, --High Warlord's Plate Shoulders
			{ itemID = 28851 }, --High Warlord's Plate Chestpiece
			{ itemID = 28852 }, --High Warlord's Plate Gauntlets
			{ itemID = 28854 }, --High Warlord's Plate Legguards
			{ icon = "INV_BannerPVP_01", name = "=q6=".."Gladiator's Aegis", desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 28833 }, --High Warlord's Lamellar Helm
			{ itemID = 28835 }, --High Warlord's Lamellar Shoulders
			{ itemID = 28831 }, --High Warlord's Lamellar Chestpiece
			{ itemID = 28832 }, --High Warlord's Lamellar Gauntlets
			{ itemID = 28834 }, --High Warlord's Lamellar Legguards
		},
	}
}




-----------------------------------
---PvP Level 70 - Area Seasons ---
-----------------------------------

AtlasLoot_Data["PvP70HonorVendor"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Honor Vendor",
	{
		Name = "PvP Accessories",
		{
			{ itemID = 18863, price = "50 #silver#" }, --Insignia of the Alliance
			{ itemID = 18853, price = "50 #silver#" }, --Insignia of the Horde
			{ itemID = 18864, price = "20 #gold#" }, --Insignia of the Alliance
			{ itemID = 18852, price = "20 #gold#" }, --Insignia of the Horde
			{ itemID = 28234, price = "5000 #faction#" }, --Medallion of the Alliance
			{ itemID = 37864, price = "30000 #faction#" }, --Medallion of the Alliance
			{ itemID = 28239, price = "5000 #faction#" }, --Medallion of the Horde
			{ itemID = 37865, price = "30000 #faction#" }, --Medallion of the Horde
			{ itemID = 25829, price = "30000 #faction#" }, --Talisman of the Alliance
			{ itemID = 24551, price = "30000 #faction#" }, --Talisman of the Horde
			{ itemID = 383082, price = "12000 #faction#" }, --Ability Purge
			{ itemID = 18606, price = "15300 #faction#" }, --Alliance Battle Standard
			{ itemID = 1235070, price = "10000 #faction#" }, --Bloody Mark of War
			{ itemID = 18675, price = "1 #silver#" }, --Military Ranks of the Horde & Alliance
			{ itemID = 97730, price = "1000 #faction#" }, --Worldforged Key Fragment
		},
		{
			{ itemID = 98570, price = "200 #faction#" }, --Mystic Orb
			{ itemID = 98462, price = "500 #faction#" }, --Mystic Rune
			{ itemID = 1101243, price = "6000 #faction#" }, --Scroll of Talent Unlearning
			{ itemID = 383083, price = "6000 #faction#" }, --Talent Purge
			{ itemID = 18839, price = "1 #faction#" }, --Combat Healing Potion
			{ itemID = 18841, price = "1 #faction#" }, --Combat Mana Potion
			{ itemID = 246189, price = "50000 #faction#" }, --Mystic Draught
			{ itemID = 106954, price = "68200 #faction#" }, --Tome Of Specialization II
			{ itemID = 32453, price = "1 #gold#" }, --Star's Tears
			{ itemID = 30183, price = "50000 #faction#" }, --Nether Vortex
			{ itemID = 23572, price = "20000 #faction#" }, --Primal Nether
			{ itemID = 15198, price = "20000 #faction#" }, --Knight's Colors
			{ itemID = 15196, price = "15000 #faction#" }, --Private's Tabard
			{ itemID = 15197, price = "15000 #faction#" }, --Scout's Tabard
			{ itemID = 15199, price = "20000 #faction#" }, --Stone Guard's Herald
		},
	}
}

--Arena Season 1
AtlasLoot_Data["Pvp70Season1"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Arena Season 1",
	{
		Name = "Accessories",
		WebID = {41015, "npc"},
		{
			{ itemID = 28378, price = "Arena" }, --Sergeant's Heavy Cape
			{ itemID = 28377, price = "Arena" }, --Sergeant's Heavy Cloak
			{ itemID = 28245, price = "Arena" }, --Pendant of Dominance
			{ itemID = 28244, price = "Arena" }, --Pendant of Triumph
			{ itemID = 28247, price = "Arena" }, --Band of Dominance
			{ itemID = 28246, price = "Arena" }, --Band of Triumph
		},
	},
	{
		Name = "Gems & Enchants",
		{
			{ itemID = 205062, price = "5000 #faction#" }, --Resplendent Fire Agate
			{ itemID = 205064, price = "5000 #faction#" }, --Lucent Fire Agate
			{ itemID = 205066, price = "5000 #faction#" }, --Empowered Fire Agate
			{ itemID = 205068, price = "5000 #faction#" }, --Durable Fire Agate
			{ itemID = 205070, price = "5000 #faction#" }, --Piercing Idocrase
			{ itemID = 205072, price = "5000 #faction#" }, --Tense Idocrase
			{ itemID = 205074, price = "5000 #faction#" }, --Mysterious Heliotrope
			{ itemID = 1505062, price = "100 #arena#" }, --Resplendent Fire Opal
			{ itemID = 1505064, price = "100 #arena#" }, --Lucent Fire Opal
			{ itemID = 1505066, price = "100 #arena#" }, --Empowered Fire Opal
			{ itemID = 1505068, price = "100 #arena#" }, --Durable Fire Opal
			{ itemID = 1505070, price = "100 #arena#" }, --Piercing Evergem
			{ itemID = 1505072, price = "100 #arena#" }, --Tense Evergem
			{ itemID = 1505074, price = "100 #arena#" }, --Mysterious Shadowgem
			{ itemID = 449572, price = "23000 #faction#" }, --Superior Inscription of the Archmage
			{ itemID = 449573, price = "23000 #faction#" }, --Superior Inscription of the Brawler
			{ itemID = 449576, price = "25000 #faction#" }, --Arcanum of the Archmage
			{ itemID = 449577, price = "25000 #faction#" }, --Arcanum of the Brawler
		},
	},
	{
		Name = "Physical Damage ".."Weapons",
		WebID = {41015, "npc"},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28918 , price = "Arena", faction = "Horde" }, --High Warlord's Decapitator
			{ itemID = 414334 , price = "Arena", faction = "Horde" }, --High Warlord's Executioner
			{ itemID = 414335 , price = "Arena", faction = "Horde" }, --High Warlord's Battlehammer
			{ itemID = 28917 , price = "Arena", faction = "Horde" }, --High Warlord's Bonegrinder
			{ itemID = 28919 , price = "Arena", faction = "Horde" }, --High Warlord's Smasher
			{ itemID = 28923 , price = "Arena", faction = "Horde" }, --High Warlord's Painsaw
			{ itemID = 414326 , price = "Arena", faction = "Horde" }, --High Warlord's Polearm
			{ itemID = 414327 , price = "Arena", faction = "Horde" }, --High Warlord's Claymore
			{ itemID = 28293 , price = "Arena", faction = "Horde" }, --High Warlord's Greatsword
			{ itemID = 28925 , price = "Arena", faction = "Horde" }, --High Warlord's Pummeler
			{ itemID = 28937 , price = "Arena", faction = "Horde" }, --High Warlord's Slicer
			{ itemID = 28926 , price = "Arena", faction = "Horde" }, --High Warlord's Quickblade
			{ itemID = 28920 , price = "Arena", faction = "Horde" }, --High Warlord's Cleaver
			{ itemID = 414343 , price = "Arena", faction = "Horde" }, --High Warlord's Chopper
			{ itemID = 28921 , price = "Arena", faction = "Horde" }, --High Warlord's Hacker
			{ itemID = 28924 , price = "Arena", faction = "Horde" }, --High Warlord's Bonecracker
			{ itemID = 28922 , price = "Arena", faction = "Horde" }, --High Warlord's Left Render
			{ itemID = 28928 , price = "Arena", faction = "Horde" }, --High Warlord's Right Ripper
			{ itemID = 414344 , price = "Arena", faction = "Horde" }, --High Warlord's Mutilator
			{ itemID = 28930 , price = "Arena", faction = "Horde" }, --High Warlord's Shiv
			{ itemID = 28929 , price = "Arena", faction = "Horde" }, --High Warlord's Shanker
			{ itemID = 414332 , price = "Arena", faction = "Horde" }, --High Warlord's Longbow
			{ itemID = 28933 , price = "Arena", faction = "Horde" }, --High Warlord's Heavy Crossbow
			{ itemID = 414348 , price = "Arena", faction = "Horde" }, --High Warlord's Rifle
			{ itemID = 28939 , price = "Arena", faction = "Horde" }, --High Warlord's Shield Wall
			{ itemID = 414347 , price = "Arena", faction = "Horde" }, --High Warlord's War Edge

			{ itemID = 28945 , "Arena", faction = "Alliance" }, --Grand Marshal's Decapitator
			{ itemID = 414304 , "Arena", faction = "Alliance" }, --Grand Marshal's Executioner
			{ itemID = 414305 , "Arena", faction = "Alliance" }, --Grand Marshal's Battlehammer
			{ itemID = 28942 , "Arena", faction = "Alliance" }, --Grand Marshal's Bonegrinder
			{ itemID = 28948 , "Arena", faction = "Alliance" }, --Grand Marshal's Smasher
			{ itemID = 28949 , "Arena", faction = "Alliance" }, --Grand Marshal's Painsaw
			{ itemID = 414323 , "Arena", faction = "Alliance" }, --Grand Marshal's Polearm
			{ itemID = 414324 , "Arena", faction = "Alliance" }, --Grand Marshal's Claymore
			{ itemID = 28943 , "Arena", faction = "Alliance" }, --Grand Marshal's Greatsword
			{ itemID = 28951 , "Arena", faction = "Alliance" }, --Grand Marshal's Pummeler
			{ itemID = 28956 , "Arena", faction = "Alliance" }, --Grand Marshal's Slicer
			{ itemID = 28952 , "Arena", faction = "Alliance" }, --Grand Marshal's Quickblade
			{ itemID = 28944 , "Arena", faction = "Alliance" }, --Grand Marshal's Cleaver
			{ itemID = 414313 , "Arena", faction = "Alliance" }, --Grand Marshal's Chopper
			{ itemID = 28946 , "Arena", faction = "Alliance" }, --Grand Marshal's Hacker
			{ itemID = 28950 , "Arena", faction = "Alliance" }, --Grand Marshal's Bonecracker
			{ itemID = 28947 , "Arena", faction = "Alliance" }, --Grand Marshal's Left Render
			{ itemID = 28953 , "Arena", faction = "Alliance" }, --Grand Marshal's Right Ripper
			{ itemID = 414314 , "Arena", faction = "Alliance" }, --Grand Marshal's Mutilator
			{ itemID = 28955 , "Arena", faction = "Alliance" }, --Grand Marshal's Shiv
			{ itemID = 28954 , "Arena", faction = "Alliance" }, --Grand Marshal's Shanker
			{ itemID = 414302 , "Arena", faction = "Alliance" }, --Grand Marshal's Longbow
			{ itemID = 28960 , "Arena", faction = "Alliance" }, --Grand Marshal's Heavy Crossbow
			{ itemID = 414318 , "Arena", faction = "Alliance" }, --Grand Marshal's Rifle
			{ itemID = 414317 , "Arena", faction = "Alliance" }, --Grand Marshal's War Edge
			{ itemID = 28940 , "Arena", faction = "Alliance" }, --Grand Marshal's Shield Wall
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 28298, price = "Arena" }, --Gladiator's Decapitator
			{ itemID = 509122, price = "Arena" }, --Gladiator's Executioner
			{ itemID = 509130, price = "Arena" }, --Gladiator's Battlehammer
			{ itemID = 28299, price = "Arena" }, --Gladiator's Bonegrinder
			{ itemID = 509134, price = "Arena" }, --Gladiator's Smasher
			{ itemID = 28300, price = "Arena" }, --Gladiator's Painsaw
			{ itemID = 414329, price = "Arena" }, --Gladiator's Polearm
			{ itemID = 414352, price = "Arena" }, --Gladiator's Claymore
			{ itemID = 24550, price = "Arena" }, --Gladiator's Greatsword
			{ itemID = 28305, price = "Arena" }, --Gladiator's Pummeler
			{ itemID = 28295, price = "Arena" }, --Gladiator's Slicer
			{ itemID = 28307, price = "Arena" }, --Gladiator's Quickblade
			{ itemID = 28308, price = "Arena" }, --Gladiator's Cleaver
			{ itemID = 509123, price = "Arena" }, --Gladiator's Chopper
			{ itemID = 28309, price = "Arena" }, --Gladiator's Hacker
			{ itemID = 28302, price = "Arena" }, --Gladiator's Bonecracker
			{ itemID = 28314, price = "Arena" }, --Gladiator's Left Render
			{ itemID = 28313, price = "Arena" }, --Gladiator's Right Ripper
			{ itemID = 414360, price = "Arena" }, --Gladiator's Mutilator
			{ itemID = 28310, price = "Arena" }, --Gladiator's Shiv
			{ itemID = 28312, price = "Arena" }, --Gladiator's Shanker
			{ itemID = 509126, price = "Arena" }, --Gladiator's Longbow
			{ itemID = 28294, price = "Arena" }, --Gladiator's Heavy Crossbow
			{ itemID = 509127, price = "Arena" }, --Gladiator's Rifle
			{ itemID = 28319, price = "Arena" }, --Gladiator's War Edge
			{ itemID = 28358, price = "Arena" }, --Gladiator's Shield Wall
		},
	},
	{
		Name = "Caster ".."Weapons",
		WebID = {41015, "npc"},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 414333 , price = "Arena", faction = "Horde" }, --High Warlord's Magebow
			{ itemID = 414349 , price = "Arena", faction = "Horde" }, --High Warlord's Piercing Touch
			{ itemID = 414350 , price = "Arena", faction = "Horde" }, --High Warlord's Touch of Defeat
			{ itemID = 414330 , price = "Arena", faction = "Horde" }, --High Warlord's Barrier
			{ itemID = 414331 , price = "Arena", faction = "Horde" }, --High Warlord's Redoubt
			{ itemID = 28938 , price = "Arena", faction = "Horde" }, --High Warlord's Endgame
			{ itemID = 414345 , price = "Arena", faction = "Horde" }, --High Warlord's Grimoire
			{ itemID = 414346 , price = "Arena", faction = "Horde" }, --High Warlord's Reprieve
			{ itemID = 414351 , price = "Arena", faction = "Horde" }, --High Warlord's Libram of Fortitude

			{ itemID = 414303 , "Arena", faction = "Alliance" }, --Grand Marshal's Magebow
			{ itemID = 414319 , "Arena", faction = "Alliance" }, --Grand Marshal's Piercing Touch
			{ itemID = 414320 , "Arena", faction = "Alliance" }, --Grand Marshal's Touch of Defeat
			{ itemID = 414300 , "Arena", faction = "Alliance" }, --Grand Marshal's Barrier
			{ itemID = 414301 , "Arena", faction = "Alliance" }, --Grand Marshal's Redoubt
			{ itemID = 28941 , "Arena", faction = "Alliance" }, --Grand Marshal's Endgame
			{ itemID = 414315 , "Arena", faction = "Alliance" }, --Grand Marshal's Grimoire
			{ itemID = 414316 , "Arena", faction = "Alliance" }, --Grand Marshal's Reprieve
			{ itemID = 414321 , "Arena", faction = "Alliance" }, --Grand Marshal's Libram of Fortitude
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 509128, price = "Arena" }, --Gladiator's Battle Staff
			{ itemID = 509133, price = "Arena" }, --Gladiator's Guardian Staff
			{ itemID = 24557, price = "Arena" }, --Gladiator's War Staff
			{ itemID = 509129, price = "Arena" }, --Gladiator's Battlemace
			{ itemID = 32450, price = "Arena" }, --Gladiator's Gavel
			{ itemID = 509132, price = "Arena" }, --Gladiator's Guardian Mace
			{ itemID = 32451, price = "Arena" }, --Gladiator's Salvation
			{ itemID = 509136, price = "Arena" }, --Gladiator's Battleslicer
			{ itemID = 28297, price = "Arena" }, --Gladiator's Spellblade
			{ itemID = 414328, price = "Arena" }, --Gladiator's Dagger
			{ itemID = 509137, price = "Arena" }, --Gladiator's Magebow
			{ itemID = 509125, price = "Arena" }, --Gladiator's Piercing Touch
			{ itemID = 28320, price = "Arena" }, --Gladiator's Touch of Defeat
			{ itemID = 509103, price = "Arena" }, --Gladiator's Barrier
			{ itemID = 509117, price = "Arena" }, --Gladiator's Redoubt
			{ itemID = 28346, price = "Arena" }, --Gladiator's Endgame
			{ itemID = 509124, price = "Arena" }, --Gladiator's Grimoire
			{ itemID = 32452, price = "Arena" }, --Gladiator's Reprieve
			{ itemID = 509140, price = "Arena" }, --Gladiator's Libram of Fortitude
		},
	},
	{
		Name = "Cloth".."Offset",
		WebID = {41015, "npc"},
		{
			{ itemID = 28402, price = "Arena" }, --General's Dreadweave Stalkers
			{ itemID = 28404, price = "Arena" }, --General's Dreadweave Belt
			{ itemID = 28405, price = "Arena" }, --General's Dreadweave Cuffs
			{ itemID = 28409, price = "Arena" }, --General's Silk Belt
			{ itemID = 28410, price = "Arena" }, --General's Silk Footguards
			{ itemID = 28411, price = "Arena" }, --General's Silk Cuffs
			{ itemID = 32974, price = "Arena" }, --General's Mooncloth Belt
			{ itemID = 32975, price = "Arena" }, --General's Mooncloth Slippers
			{ itemID = 32973, price = "Arena" }, --General's Mooncloth Cuffs
		},
	},
	{
		Name = "Leather".."Offset",
		WebID = {41015, "npc"},
		{
			{ itemID = 31594, price = "Arena" }, --General's Kodohide Belt
			{ itemID = 31595, price = "Arena" }, --General's Kodohide Boots
			{ itemID = 31598, price = "Arena" }, --General's Kodohide Bracers
			{ itemID = 28422, price = "Arena" }, --General's Leather Boots
			{ itemID = 28423, price = "Arena" }, --General's Leather Belt
			{ itemID = 28424, price = "Arena" }, --General's Leather Bracers
			{ itemID = 28443, price = "Arena" }, --General's Dragonhide Belt
			{ itemID = 28444, price = "Arena" }, --General's Dragonhide Boots
			{ itemID = 28445, price = "Arena" }, --General's Dragonhide Bracers
			{ itemID = 28446, price = "Arena" }, --General's Wyrmhide Belt
			{ itemID = 28447, price = "Arena" }, --General's Wyrmhide Boots
			{ itemID = 28448, price = "Arena" }, --General's Wyrmhide Bracers
		},
	 },
	{
		Name = "Mail".."Offset",
		WebID = {41015, "npc"},
		{
			{ itemID = 28449, price = "Arena" }, --General's Chain Sabatons
			{ itemID = 28450, price = "Arena" }, --General's Chain Girdle
			{ itemID = 28451, price = "Arena" }, --General's Chain Bracers
			{ itemID = 28629, price = "Arena" }, --General's Linked Girdle
			{ itemID = 28630, price = "Arena" }, --General's Linked Sabatons
			{ itemID = 28605, price = "Arena" }, --General's Linked Bracers
			{ itemID = 28639, price = "Arena" }, --General's Mail Girdle
			{ itemID = 28640, price = "Arena" }, --General's Mail Sabatons
			{ itemID = 28638, price = "Arena" }, --General's Mail Bracers
			{ itemID = 32992, price = "Arena" }, --General's Ringmail Girdle
			{ itemID = 32993, price = "Arena" }, --General's Ringmail Sabatons
			{ itemID = 32991, price = "Arena" }, --General's Ringmail Bracers
		},
	},
	{
		Name = "Plate".."Offset",
		WebID = {41015, "npc"},
		{
			{ itemID = 28643, price = "Arena" }, --General's Lamellar Bracers
			{ itemID = 28641, price = "Arena" }, --General's Lamellar Belt
			{ itemID = 28642, price = "Arena" }, --General's Lamellar Greaves
			{ itemID = 28383, price = "Arena" }, --General's Plate Greaves
			{ itemID = 28385, price = "Arena" }, --General's Plate Belt
			{ itemID = 28381, price = "Arena" }, --General's Plate Bracers
			{ itemID = 32982, price = "Arena" }, --General's Ornamented Belt
			{ itemID = 32984, price = "Arena" }, --General's Ornamented Greaves
			{ itemID = 32983, price = "Arena" }, --General's Ornamented Bracers
			{ itemID = 28644, price = "Arena" }, --General's Scaled Belt
			{ itemID = 28645, price = "Arena" }, --General's Scaled Greaves
			{ itemID = 28646, price = "Arena" }, --General's Scaled Bracers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28807, price = "Arena", faction = "Horde" }, --High Warlord's Chain Helm
			{ itemID = 28809, price = "Arena", faction = "Horde" }, --High Warlord's Chain Spaulders
			{ itemID = 28805, price = "Arena", faction = "Horde" }, --High Warlord's Chain Armor
			{ itemID = 28808, price = "Arena", faction = "Horde" }, --High Warlord's Chain Leggings
			{ itemID = 28806, price = "Arena", faction = "Horde" }, --High Warlord's Chain Gauntlets

			{ itemID = 28615, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Helm
			{ itemID = 28617, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Spaulders
			{ itemID = 28613, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Armor
			{ itemID = 28616, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Leggings
			{ itemID = 28614, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Gauntlets
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 28331, price = "Arena" }, --Gladiator's Chain Helm
			{ itemID = 28333, price = "Arena" }, --Gladiator's Chain Spaulders
			{ itemID = 28334, price = "Arena" }, --Gladiator's Chain Armor
			{ itemID = 28335, price = "Arena" }, --Gladiator's Chain Gauntlets
			{ itemID = 28332, price = "Arena" }, --Gladiator's Chain Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28867, price = "Arena", faction = "Horde" }, --High Warlord's Silk Cowl
			{ itemID = 28866, price = "Arena", faction = "Horde" }, --High Warlord's Silk Amice
			{ itemID = 28870, price = "Arena", faction = "Horde" }, --High Warlord's Silk Trousers
			{ itemID = 28868, price = "Arena", faction = "Horde" }, --High Warlord's Silk Handguards
			{ itemID = 28869, price = "Arena", faction = "Horde" }, --High Warlord's Silk Raiment

			{ itemID = 28715, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Cowl
			{ itemID = 28714, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Amice
			{ itemID = 28718, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Trousers
			{ itemID = 28716, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Handguards
			{ itemID = 28717, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Raiment
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 25855, price = "Arena" }, --Gladiator's Silk Cowl
			{ itemID = 25854, price = "Arena" }, --Gladiator's Silk Amice
			{ itemID = 25856, price = "Arena" }, --Gladiator's Silk Raiment
			{ itemID = 25857, price = "Arena" }, --Gladiator's Silk Handguards
			{ itemID = 25858, price = "Arena" }, --Gladiator's Silk Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28837, price = "Arena", faction = "Horde" }, --High Warlord's Leather Helm
			{ itemID = 28839, price = "Arena", faction = "Horde" }, --High Warlord's Leather Spaulders
			{ itemID = 28840, price = "Arena", faction = "Horde" }, --High Warlord's Leather Tunic
			{ itemID = 28838, price = "Arena", faction = "Horde" }, --High Warlord's Leather Legguards
			{ itemID = 28836, price = "Arena", faction = "Horde" }, --High Warlord's Leather Gloves

			{ itemID = 28685, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Helm
			{ itemID = 28687, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Spaulders
			{ itemID = 28688, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Tunic
			{ itemID = 28686, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Legguards
			{ itemID = 28684, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Gloves
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 25830, price = "Arena" }, --Gladiator's Leather Helm
			{ itemID = 25832, price = "Arena" }, --Gladiator's Leather Spaulders
			{ itemID = 25831, price = "Arena" }, --Gladiator's Leather Tunic
			{ itemID = 25834, price = "Arena" }, --Gladiator's Leather Gloves
			{ itemID = 25833, price = "Arena" }, --Gladiator's Leather Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28853, price = "Arena", faction = "Horde" }, --High Warlord's Plate Helm
			{ itemID = 28855, price = "Arena", faction = "Horde" }, --High Warlord's Plate Shoulders
			{ itemID = 28851, price = "Arena", faction = "Horde" }, --High Warlord's Plate Chestpiece
			{ itemID = 28854, price = "Arena", faction = "Horde" }, --High Warlord's Plate Legguards
			{ itemID = 28852, price = "Arena", faction = "Horde" }, --High Warlord's Plate Gauntlets

			{ itemID = 28701, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Helm
			{ itemID = 28703, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Shoulders
			{ itemID = 28699, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Chestpiece
			{ itemID = 28702, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Legguards
			{ itemID = 28700, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Gauntlets
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 24545, price = "Arena" }, --Gladiator's Plate Helm
			{ itemID = 24546, price = "Arena" }, --Gladiator's Plate Shoulders
			{ itemID = 24544, price = "Arena" }, --Gladiator's Plate Chestpiece
			{ itemID = 24549, price = "Arena" }, --Gladiator's Plate Gauntlets
			{ itemID = 24547, price = "Arena" }, --Gladiator's Plate Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. color.WHITE.."Demonology",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28818, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Hood
			{ itemID = 28820, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Mantle
			{ itemID = 28819, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Leggings
			{ itemID = 28817, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Gloves
			{ itemID = 28821, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Robe

			{ itemID = 28625, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Hood
			{ itemID = 28627, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Mantle
			{ itemID = 28626, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Leggings
			{ itemID = 28624, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Gloves
			{ itemID = 28628, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Robe
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 24553, price = "Arena" }, --Gladiator's Dreadweave Hood
			{ itemID = 24554, price = "Arena" }, --Gladiator's Dreadweave Mantle
			{ itemID = 24552, price = "Arena" }, --Gladiator's Dreadweave Robe
			{ itemID = 24556, price = "Arena" }, --Gladiator's Dreadweave Gloves
			{ itemID = 24555, price = "Arena" }, --Gladiator's Dreadweave Leggings
		},
	},

	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. color.WHITE.."Destruction",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 30187, price = "Arena" }, --Gladiator's Felweave Cowl
			{ itemID = 30186, price = "Arena" }, --Gladiator's Felweave Amice
			{ itemID = 30200, price = "Arena" }, --Gladiator's Felweave Raiment
			{ itemID = 30188, price = "Arena" }, --Gladiator's Felweave Handguards
			{ itemID = 30201, price = "Arena" }, --Gladiator's Felweave Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - "..color.WHITE.."Feral",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28812, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Helm
			{ itemID = 28814, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Spaulders
			{ itemID = 28815, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Tunic
			{ itemID = 28813, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Legguards
			{ itemID = 28811, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Gloves

			{ itemID = 28619, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Helm
			{ itemID = 28622, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Spaulders
			{ itemID = 28623, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Tunic
			{ itemID = 28620, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Legguards
			{ itemID = 28618, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Gloves
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 28127, price = "Arena" }, --Gladiator's Dragonhide Helm
			{ itemID = 28129, price = "Arena" }, --Gladiator's Dragonhide Spaulders
			{ itemID = 28130, price = "Arena" }, --Gladiator's Dragonhide Tunic
			{ itemID = 28126, price = "Arena" }, --Gladiator's Dragonhide Gloves
			{ itemID = 28128, price = "Arena" }, --Gladiator's Dragonhide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. color.WHITE.."Balance",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28872, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Helm
			{ itemID = 28874, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Spaulders
			{ itemID = 28875, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Tunic
			{ itemID = 28873, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Legguards
			{ itemID = 28871, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Gloves

			{ itemID = 28720, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Helm
			{ itemID = 28722, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Spaulders
			{ itemID = 28723, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Tunic
			{ itemID = 28721, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Legguards
			{ itemID = 28719, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Gloves
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 28137, price = "Arena" }, --Gladiator's Wyrmhide Helm
			{ itemID = 28139, price = "Arena" }, --Gladiator's Wyrmhide Spaulders
			{ itemID = 28140, price = "Arena" }, --Gladiator's Wyrmhide Tunic
			{ itemID = 28136, price = "Arena" }, --Gladiator's Wyrmhide Gloves
			{ itemID = 28138, price = "Arena" }, --Gladiator's Wyrmhide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. color.WHITE.."Restoration",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31585, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Helm
			{ itemID = 31587, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Spaulders
			{ itemID = 31588, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Tunic
			{ itemID = 31586, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Legguards
			{ itemID = 31584, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Gloves

			{ itemID = 31590, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Helm
			{ itemID = 31592, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Spaulders
			{ itemID = 31593, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Tunic
			{ itemID = 31591, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Legguards
			{ itemID = 31589, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Gloves
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31376, price = "Arena" }, --Gladiator's Kodohide Helm
			{ itemID = 31378, price = "Arena" }, --Gladiator's Kodohide Spaulders
			{ itemID = 31379, price = "Arena" }, --Gladiator's Kodohide Tunic
			{ itemID = 31375, price = "Arena" }, --Gladiator's Kodohide Gloves
			{ itemID = 31377, price = "Arena" }, --Gladiator's Kodohide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Enhancement",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28843, price = "Arena", faction = "Horde" }, --High Warlord's Linked Helm
			{ itemID = 28845, price = "Arena", faction = "Horde" }, --High Warlord's Linked Spaulders
			{ itemID = 28841, price = "Arena", faction = "Horde" }, --High Warlord's Linked Armor
			{ itemID = 28844, price = "Arena", faction = "Horde" }, --High Warlord's Linked Leggings
			{ itemID = 28842, price = "Arena", faction = "Horde" }, --High Warlord's Linked Gauntlets

			{ itemID = 28691, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Helm
			{ itemID = 28693, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Spaulders
			{ itemID = 28689, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Armor
			{ itemID = 28692, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Leggings
			{ itemID = 28690, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Gauntlets
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 25998, price = "Arena" }, --Gladiator's Linked Helm
			{ itemID = 25999, price = "Arena" }, --Gladiator's Linked Spaulders
			{ itemID = 25997, price = "Arena" }, --Gladiator's Linked Armor
			{ itemID = 26000, price = "Arena" }, --Gladiator's Linked Gauntlets
			{ itemID = 26001, price = "Arena" }, --Gladiator's Linked Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Elemental",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28848, price = "Arena", faction = "Horde" }, --High Warlord's Mail Helm
			{ itemID = 28850, price = "Arena", faction = "Horde" }, --High Warlord's Mail Spaulders
			{ itemID = 28846, price = "Arena", faction = "Horde" }, --High Warlord's Mail Armor
			{ itemID = 28849, price = "Arena", faction = "Horde" }, --High Warlord's Mail Leggings
			{ itemID = 28847, price = "Arena", faction = "Horde" }, --High Warlord's Mail Gauntlets

			{ itemID = 28696, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Helm
			{ itemID = 28698, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Spaulders
			{ itemID = 28694, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Armor
			{ itemID = 28697, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Leggings
			{ itemID = 28695, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Gauntlets
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 27471, price = "Arena" }, --Gladiator's Mail Helm
			{ itemID = 27473, price = "Arena" }, --Gladiator's Mail Spaulders
			{ itemID = 27469, price = "Arena" }, --Gladiator's Mail Armor
			{ itemID = 27470, price = "Arena" }, --Gladiator's Mail Gauntlets
			{ itemID = 27472, price = "Arena" }, --Gladiator's Mail Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Restoration",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31648, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Helm
			{ itemID = 31650, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Spaulders
			{ itemID = 31646, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Armor
			{ itemID = 31649, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Leggings
			{ itemID = 31647, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Gauntlets

			{ itemID = 31642, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Helm
			{ itemID = 31644, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Spaulders
			{ itemID = 31640, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Armor
			{ itemID = 31643, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Leggings
			{ itemID = 31641, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Gauntlets
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31400, price = "Arena" }, --Gladiator's Ringmail Helm
			{ itemID = 31407, price = "Arena" }, --Gladiator's Ringmail Spaulders
			{ itemID = 31396, price = "Arena" }, --Gladiator's Ringmail Armor
			{ itemID = 31397, price = "Arena" }, --Gladiator's Ringmail Gauntlets
			{ itemID = 31406, price = "Arena" }, --Gladiator's Ringmail Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " ..color.WHITE.. "Protection",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 27704, price = "Arena" }, --Gladiator's Lamellar Helm
			{ itemID = 27706, price = "Arena" }, --Gladiator's Lamellar Shoulders
			{ itemID = 27702, price = "Arena" }, --Gladiator's Lamellar Chestpiece
			{ itemID = 27703, price = "Arena" }, --Gladiator's Lamellar Gauntlets
			{ itemID = 27705, price = "Arena" }, --Gladiator's Lamellar Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Retribution",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28863, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Helm
			{ itemID = 28865, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Shoulders
			{ itemID = 28861, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Chestpiece
			{ itemID = 28864, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Legguards
			{ itemID = 28862, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Gauntlets

			{ itemID = 28711, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Helm
			{ itemID = 28713, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Shoulders
			{ itemID = 28709, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Chestpiece
			{ itemID = 28712, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Legguards
			{ itemID = 28710, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Gauntlets
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 27881, price = "Arena" }, --Gladiator's Scaled Helm
			{ itemID = 27883, price = "Arena" }, --Gladiator's Scaled Shoulders
			{ itemID = 27879, price = "Arena" }, --Gladiator's Scaled Chestpiece
			{ itemID = 27880, price = "Arena" }, --Gladiator's Scaled Gauntlets
			{ itemID = 27882, price = "Arena" }, --Gladiator's Scaled Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Holy",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31637, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Headcover
			{ itemID = 31639, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Spaulders
			{ itemID = 31635, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Chestguard
			{ itemID = 31638, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Legplates
			{ itemID = 31636, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Gloves

			{ itemID = 31632, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Headcover
			{ itemID = 31634, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Spaulders
			{ itemID = 31630, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Chestguard
			{ itemID = 31633, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Legplates
			{ itemID = 31631, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Gloves
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31616, price = "Arena" }, --Gladiator's Ornamented Headcover
			{ itemID = 31619, price = "Arena" }, --Gladiator's Ornamented Spaulders
			{ itemID = 31613, price = "Arena" }, --Gladiator's Ornamented Chestguard
			{ itemID = 31614, price = "Arena" }, --Gladiator's Ornamented Gloves
			{ itemID = 31618, price = "Arena" }, --Gladiator's Ornamented Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. color.WHITE.."Shadow",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28857, price = "Arena", faction = "Horde" }, --High Warlord's Satin Hood
			{ itemID = 28859, price = "Arena", faction = "Horde" }, --High Warlord's Satin Mantle
			{ itemID = 28858, price = "Arena", faction = "Horde" }, --High Warlord's Satin Leggings
			{ itemID = 28856, price = "Arena", faction = "Horde" }, --High Warlord's Satin Gloves
			{ itemID = 28860, price = "Arena", faction = "Horde" }, --High Warlord's Satin Robe

			{ itemID = 28705, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Hood
			{ itemID = 28707, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Mantle
			{ itemID = 28706, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Leggings
			{ itemID = 28704, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Gloves
			{ itemID = 28708, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Robe
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 27708, price = "Arena" }, --Gladiator's Satin Hood
			{ itemID = 27710, price = "Arena" }, --Gladiator's Satin Mantle
			{ itemID = 27711, price = "Arena" }, --Gladiator's Satin Robe
			{ itemID = 27707, price = "Arena" }, --Gladiator's Satin Gloves
			{ itemID = 27709, price = "Arena" }, --Gladiator's Satin Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. color.WHITE.."Holy",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31626, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Hood
			{ itemID = 31628, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Mantle
			{ itemID = 31627, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Leggings
			{ itemID = 31621, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Gloves
			{ itemID = 31629, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Robe
			
			{ itemID = 31622, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Hood
			{ itemID = 31624, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Mantle
			{ itemID = 31623, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Leggings
			{ itemID = 31620, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Gloves
			{ itemID = 31625, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Robe
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31410, price = "Arena" }, --Gladiator's Mooncloth Hood
			{ itemID = 31412, price = "Arena" }, --Gladiator's Mooncloth Mantle
			{ itemID = 31413, price = "Arena" }, --Gladiator's Mooncloth Robe
			{ itemID = 31409, price = "Arena" }, --Gladiator's Mooncloth Gloves
			{ itemID = 31411, price = "Arena" }, --Gladiator's Mooncloth Leggings
		},
	},
}

--Arena Season 2
AtlasLoot_Data["Pvp70Season2"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Arena Season 2",
	{
		Name = "Back",
		WebID = {41025, "npc"},
		{
			{ itemID = 278419, price = "Arena"  }, --Veteran's Cloak of Conquest
			{ itemID = 278422, price = "Arena"  }, --Veteran's Cloak of Cruelty
			{ itemID = 278418, price = "Arena"  }, --Veteran's Cloak of Power
			{ itemID = 278417, price = "Arena"  }, --Veteran's Cloak of Salvation
			{ itemID = 278420, price = "Arena"  }, --Veteran's Cloak of Triumph
			{ itemID = 278421, price = "Arena"  }, --Veteran's Cloak of Tyranny
		},
	},
	{
		Name = "Rings",
		WebID = {41025, "npc"},
		{
			{ itemID = 278414, price = "Arena"  }, --Veteran's Band of Accuracy
			{ itemID = 278410, price = "Arena"  }, --Veteran's Band of Conquest
			{ itemID = 278413, price = "Arena"  }, --Veteran's Band of Cruelty
			{ itemID = 33056, price = "Arena"  }, --Veteran's Band of Dominance
			{ itemID = 278412, price = "Arena"  }, --Veteran's Band of Precision
			{ itemID = 278415, price = "Arena"  }, --Veteran's Band of Reprieve
			{ itemID = 33064, price = "Arena"  }, --Veteran's Band of Salvation
			{ itemID = 278416, price = "Arena"  }, --Veteran's Band of Subjugation
			{ itemID = 33057, price = "Arena"  }, --Veteran's Band of Triumph
			{ itemID = 278411, price = "Arena"  }, --Veteran's Band of Tyranny	   
		},
	},
	{
		Name = "Neck",
		WebID = {41025, "npc"},
		{
			{ itemID = 33067, price = "Arena"  }, --Veteran's Pendant of Conquest
			{ itemID = 278409, price = "Arena"  }, --Veteran's Pendant of Cruelty
			{ itemID = 33065, price = "Arena"  }, --Veteran's Pendant of Dominance
			{ itemID = 278407, price = "Arena"  }, --Veteran's Pendant of Reprieve
			{ itemID = 33068, price = "Arena"  }, --Veteran's Pendant of Salvation
			{ itemID = 278408, price = "Arena"  }, --Veteran's Pendant of Subjugation
			{ itemID = 33066, price = "Arena"  }, --Veteran's Pendant of Triumph
			{ itemID = 278406, price = "Arena"  }, --Veteran's Pendant of Tyranny
		},
	},
	{
		Name = "Gems & Enchants",
		{
			{ itemID = 205062, price = "5000 #faction#" }, --Resplendent Fire Agate
			{ itemID = 205064, price = "5000 #faction#" }, --Lucent Fire Agate
			{ itemID = 205066, price = "5000 #faction#" }, --Empowered Fire Agate
			{ itemID = 205068, price = "5000 #faction#" }, --Durable Fire Agate
			{ itemID = 205070, price = "5000 #faction#" }, --Piercing Idocrase
			{ itemID = 205072, price = "5000 #faction#" }, --Tense Idocrase
			{ itemID = 205074, price = "5000 #faction#" }, --Mysterious Heliotrope
			{ itemID = 1505062, price = "100 #arena#" }, --Resplendent Fire Opal
			{ itemID = 1505064, price = "100 #arena#" }, --Lucent Fire Opal
			{ itemID = 1505066, price = "100 #arena#" }, --Empowered Fire Opal
			{ itemID = 1505068, price = "100 #arena#" }, --Durable Fire Opal
			{ itemID = 1505070, price = "100 #arena#" }, --Piercing Evergem
			{ itemID = 1505072, price = "100 #arena#" }, --Tense Evergem
			{ itemID = 1505074, price = "100 #arena#" }, --Mysterious Shadowgem
			{ itemID = 449572, price = "23000 #faction#" }, --Superior Inscription of the Archmage
			{ itemID = 449573, price = "23000 #faction#" }, --Superior Inscription of the Brawler
			{ itemID = 449576, price = "25000 #faction#" }, --Arcanum of the Archmage
			{ itemID = 449577, price = "25000 #faction#" }, --Arcanum of the Brawler
		},
	},
	{
		Name = "Physical Damage ".."Weapons",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28298, price = "Arena" }, --Gladiator's Decapitator
			{ itemID = 509122, price = "Arena" }, --Gladiator's Executioner
			{ itemID = 509130, price = "Arena" }, --Gladiator's Battlehammer
			{ itemID = 28299, price = "Arena" }, --Gladiator's Bonegrinder
			{ itemID = 509134, price = "Arena" }, --Gladiator's Smasher
			{ itemID = 28300, price = "Arena" }, --Gladiator's Painsaw
			{ itemID = 414329, price = "Arena" }, --Gladiator's Polearm
			{ itemID = 414352, price = "Arena" }, --Gladiator's Claymore
			{ itemID = 24550, price = "Arena" }, --Gladiator's Greatsword
			{ itemID = 28305, price = "Arena" }, --Gladiator's Pummeler
			{ itemID = 28295, price = "Arena" }, --Gladiator's Slicer
			{ itemID = 28307, price = "Arena" }, --Gladiator's Quickblade
			{ itemID = 28308, price = "Arena" }, --Gladiator's Cleaver
			{ itemID = 509123, price = "Arena" }, --Gladiator's Chopper
			{ itemID = 28309, price = "Arena" }, --Gladiator's Hacker
			{ itemID = 28302, price = "Arena" }, --Gladiator's Bonecracker
			{ itemID = 28314, price = "Arena" }, --Gladiator's Left Render
			{ itemID = 28313, price = "Arena" }, --Gladiator's Right Ripper
			{ itemID = 414360, price = "Arena" }, --Gladiator's Mutilator
			{ itemID = 28310, price = "Arena" }, --Gladiator's Shiv
			{ itemID = 28312, price = "Arena" }, --Gladiator's Shanker
			{ itemID = 509126, price = "Arena" }, --Gladiator's Longbow
			{ itemID = 28294, price = "Arena" }, --Gladiator's Heavy Crossbow
			{ itemID = 509127, price = "Arena" }, --Gladiator's Rifle
			{ itemID = 28319, price = "Arena" }, --Gladiator's War Edge
			{ itemID = 28358, price = "Arena" }, --Gladiator's Shield Wall
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31966, price = "Arena" }, --Merciless Gladiator's Decapitator
			{ itemID = 131966, price = "Arena" }, --Merciless Gladiator's Executioner
			{ itemID = 509090, price = "Arena" }, --Merciless Gladiator's Battlehammer
			{ itemID = 31959, price = "Arena" }, --Merciless Gladiator's Bonegrinder
			{ itemID = 509094, price = "Arena" }, --Merciless Gladiator's Smasher
			{ itemID = 32025, price = "Arena" }, --Merciless Gladiator's Painsaw
			{ itemID = 414354, price = "Arena" }, --Merciless Gladiator's Polearm
			{ itemID = 414355, price = "Arena" }, --Merciless Gladiator's Claymore
			{ itemID = 31984, price = "Arena" }, --Merciless Gladiator's Greatsword
			{ itemID = 32026, price = "Arena" }, --Merciless Gladiator's Pummeler
			{ itemID = 32052, price = "Arena" }, --Merciless Gladiator's Slicer
			{ itemID = 32027, price = "Arena" }, --Merciless Gladiator's Quickblade
			{ itemID = 509142, price = "Arena" }, --Merciless Gladiator's Cleaver
			{ itemID = 509083, price = "Arena" }, --Merciless Gladiator's Chopper
			{ itemID = 31985, price = "Arena" }, --Merciless Gladiator's Hacker
			{ itemID = 31958, price = "Arena" }, --Merciless Gladiator's Bonecracker
			{ itemID = 32003, price = "Arena" }, --Merciless Gladiator's Left Ripper
			{ itemID = 32028, price = "Arena" }, --Merciless Gladiator's Right Ripper
			{ itemID = 414369, price = "Arena" }, --Merciless Gladiator's Mutilator
			{ itemID = 32046, price = "Arena" }, --Merciless Gladiator's Shiv
			{ itemID = 32044, price = "Arena" }, --Merciless Gladiator's Shanker
			{ itemID = 509086, price = "Arena" }, --Merciless Gladiator's Longbow
			{ itemID = 31986, price = "Arena" }, --Merciless Gladiator's Heavy Crossbow
			{ itemID = 509087, price = "Arena" }, --Merciless Gladiator's Rifle
			{ itemID = 509081, price = "Arena" }, --Merciless Gladiator's War Edge
			{ itemID = 32045, price = "Arena" }, --Merciless Gladiator's Shield Wall
		},
	},
	{
		Name = "Caster ".."Weapons",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 509128, price = "Arena" }, --Gladiator's Battle Staff
			{ itemID = 509133, price = "Arena" }, --Gladiator's Guardian Staff
			{ itemID = 24557, price = "Arena" }, --Gladiator's War Staff
			{ itemID = 509129, price = "Arena" }, --Gladiator's Battlemace
			{ itemID = 32450, price = "Arena" }, --Gladiator's Gavel
			{ itemID = 509132, price = "Arena" }, --Gladiator's Guardian Mace
			{ itemID = 32451, price = "Arena" }, --Gladiator's Salvation
			{ itemID = 509136, price = "Arena" }, --Gladiator's Battleslicer
			{ itemID = 28297, price = "Arena" }, --Gladiator's Spellblade
			{ itemID = 414328, price = "Arena" }, --Gladiator's Dagger
			{ itemID = 509137, price = "Arena" }, --Gladiator's Magebow
			{ itemID = 509125, price = "Arena" }, --Gladiator's Piercing Touch
			{ itemID = 28320, price = "Arena" }, --Gladiator's Touch of Defeat
			{ itemID = 509103, price = "Arena" }, --Gladiator's Barrier
			{ itemID = 509117, price = "Arena" }, --Gladiator's Redoubt
			{ itemID = 28346, price = "Arena" }, --Gladiator's Endgame
			{ itemID = 509124, price = "Arena" }, --Gladiator's Grimoire
			{ itemID = 32452, price = "Arena" }, --Gladiator's Reprieve
			{ itemID = 509140, price = "Arena" }, --Gladiator's Libram of Fortitude
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 509088, price = "Arena" }, --Merciless Gladiator's Battle Staff
			{ itemID = 509093, price = "Arena" }, --Merciless Gladiator's Guardian Staff
			{ itemID = 32055, price = "Arena" }, --Merciless Gladiator's War Staff
			{ itemID = 509089, price = "Arena" }, --Merciless Gladiator's Battlemace
			{ itemID = 32963, price = "Arena" }, --Merciless Gladiator's Gavel
			{ itemID = 509092, price = "Arena" }, --Merciless Gladiator's Guardian Mace
			{ itemID = 32964, price = "Arena" }, --Merciless Gladiator's Salvation
			{ itemID = 509096, price = "Arena" }, --Merciless Gladiator's Battleslicer
			{ itemID = 509098, price = "Arena" }, --Merciless Gladiator's Spellblade
			{ itemID = 414353, price = "Arena" }, --Merciless Gladiator's Dagger
			{ itemID = 509097, price = "Arena" }, --Merciless Gladiator's Magebow
			{ itemID = 509085, price = "Arena" }, --Merciless Gladiator's Piercing Touch
			{ itemID = 509144, price = "Arena" }, --Merciless Gladiator's Touch of Defeat
			{ itemID = 33313, price = "Arena" }, --Merciless Gladiator's Barrier
			{ itemID = 33309, price = "Arena" }, --Merciless Gladiator's Redoubt
			{ itemID = 31978, price = "Arena" }, --Merciless Gladiator's Endgame
			{ itemID = 509084, price = "Arena" }, --Merciless Gladiator's Grimoire
			{ itemID = 32961, price = "Arena" }, --Merciless Gladiator's Reprieve
			{ itemID = 414370, price = "Arena" }, --Merciless Gladiator's Libram of Fortitude
		},
	},
	{
		Name = "Cloth".."Offset",
		WebID = {41025, "npc"},
        {
			{ itemID = 32811, price = "Arena" }, --Veteran's Dreadweave Cuffs
			{ itemID = 32799, price = "Arena" }, --Veteran's Dreadweave Belt
			{ itemID = 32787, price = "Arena" }, --Veteran's Dreadweave Stalkers
			{ itemID = 32820, price = "Arena" }, --Veteran's Silk Cuffs
			{ itemID = 32807, price = "Arena" }, --Veteran's Silk Belt
			{ itemID = 32795, price = "Arena" }, --Veteran's Silk Footguards
			{ itemID = 32980, price = "Arena" }, --Veteran's Mooncloth Cuffs
			{ itemID = 32979, price = "Arena" }, --Veteran's Mooncloth Belt
			{ itemID = 32981, price = "Arena" }, --Veteran's Mooncloth Slippers
		},
    },
	{
		Name = "Leather".."Offset",
		WebID = {41025, "npc"},
        {
			{ itemID = 32812, price = "Arena" }, --Veteran's Kodohide Bracers
			{ itemID = 32800, price = "Arena" }, --Veteran's Kodohide Belt
			{ itemID = 32788, price = "Arena" }, --Veteran's Kodohide Boots
			{ itemID = 32814, price = "Arena" }, --Veteran's Leather Bracers
			{ itemID = 32802, price = "Arena" }, --Veteran's Leather Belt
			{ itemID = 32790, price = "Arena" }, --Veteran's Leather Boots
			{ itemID = 32810, price = "Arena" }, --Veteran's Dragonhide Bracers
			{ itemID = 32798, price = "Arena" }, --Veteran's Dragonhide Belt
			{ itemID = 32786, price = "Arena" }, --Veteran's Dragonhide Boots
			{ itemID = 32821, price = "Arena" }, --Veteran's Wyrmhide Bracers
			{ itemID = 32808, price = "Arena" }, --Veteran's Wyrmhide Belt
			{ itemID = 32796, price = "Arena" }, --Veteran's Wyrmhide Boots
		},
    },
	{
		Name = "Mail".."Offset",
		WebID = {41025, "npc"},
        {
			{ itemID = 32809, price = "Arena" }, --Veteran's Chain Bracers
			{ itemID = 32797, price = "Arena" }, --Veteran's Chain Girdle
			{ itemID = 32785, price = "Arena" }, --Veteran's Chain Sabatons
			{ itemID = 32816, price = "Arena" }, --Veteran's Linked Bracers
			{ itemID = 32803, price = "Arena" }, --Veteran's Linked Girdle
			{ itemID = 32791, price = "Arena" }, --Veteran's Linked Sabatons
			{ itemID = 32817, price = "Arena" }, --Veteran's Mail Bracers
			{ itemID = 32804, price = "Arena" }, --Veteran's Mail Girdle
			{ itemID = 32792, price = "Arena" }, --Veteran's Mail Sabatons
			{ itemID = 32997, price = "Arena" }, --Veteran's Ringmail Bracers
			{ itemID = 32998, price = "Arena" }, --Veteran's Ringmail Girdle
			{ itemID = 32999, price = "Arena" }, --Veteran's Ringmail Sabatons
		},
    },
	{
		Name = "Plate".."Offset",
		WebID = {41025, "npc"},
        {
			{ itemID = 32813, price = "Arena" }, --Veteran's Lamellar Bracers
			{ itemID = 32801, price = "Arena" }, --Veteran's Lamellar Belt
			{ itemID = 32789, price = "Arena" }, --Veteran's Lamellar Greaves
			{ itemID = 32818, price = "Arena" }, --Veteran's Plate Bracers
			{ itemID = 32805, price = "Arena" }, --Veteran's Plate Belt
			{ itemID = 32793, price = "Arena" }, --Veteran's Plate Greaves
			{ itemID = 32989, price = "Arena" }, --Veteran's Ornamented Bracers
			{ itemID = 32988, price = "Arena" }, --Veteran's Ornamented Belt
			{ itemID = 32990, price = "Arena" }, --Veteran's Ornamented Greaves
			{ itemID = 32819, price = "Arena" }, --Veteran's Scaled Bracers
			{ itemID = 32806, price = "Arena" }, --Veteran's Scaled Belt
			{ itemID = 32794, price = "Arena" }, --Veteran's Scaled Greaves
		},
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28331, price = "Arena" }, --Gladiator's Chain Helm
			{ itemID = 28333, price = "Arena" }, --Gladiator's Chain Spaulders
			{ itemID = 28334, price = "Arena" }, --Gladiator's Chain Armor
			{ itemID = 28335, price = "Arena" }, --Gladiator's Chain Gauntlets
			{ itemID = 28332, price = "Arena" }, --Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31962, price = "Arena" }, --Merciless Gladiator's Chain Helm
			{ itemID = 31964, price = "Arena" }, --Merciless Gladiator's Chain Spaulders
			{ itemID = 31960, price = "Arena" }, --Merciless Gladiator's Chain Armor
			{ itemID = 31961, price = "Arena" }, --Merciless Gladiator's Chain Gauntlets
			{ itemID = 31963, price = "Arena" }, --Merciless Gladiator's Chain Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 25855, price = "Arena" }, --Gladiator's Silk Cowl
			{ itemID = 25854, price = "Arena" }, --Gladiator's Silk Amice
			{ itemID = 25856, price = "Arena" }, --Gladiator's Silk Raiment
			{ itemID = 25857, price = "Arena" }, --Gladiator's Silk Handguards
			{ itemID = 25858, price = "Arena" }, --Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32048, price = "Arena" }, --Merciless Gladiator's Silk Cowl
			{ itemID = 32047, price = "Arena" }, --Merciless Gladiator's Silk Amice
			{ itemID = 32050, price = "Arena" }, --Merciless Gladiator's Silk Raiment
			{ itemID = 32049, price = "Arena" }, --Merciless Gladiator's Silk Handguards
			{ itemID = 32051, price = "Arena" }, --Merciless Gladiator's Silk Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 25830, price = "Arena" }, --Gladiator's Leather Helm
			{ itemID = 25832, price = "Arena" }, --Gladiator's Leather Spaulders
			{ itemID = 25831, price = "Arena" }, --Gladiator's Leather Tunic
			{ itemID = 25834, price = "Arena" }, --Gladiator's Leather Gloves
			{ itemID = 25833, price = "Arena" }, --Gladiator's Leather Legguards
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31999, price = "Arena" }, --Merciless Gladiator's Leather Helm
			{ itemID = 32001, price = "Arena" }, --Merciless Gladiator's Leather Spaulders
			{ itemID = 32002, price = "Arena" }, --Merciless Gladiator's Leather Tunic
			{ itemID = 31998, price = "Arena" }, --Merciless Gladiator's Leather Gloves
			{ itemID = 32000, price = "Arena" }, --Merciless Gladiator's Leather Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 24545, price = "Arena" }, --Gladiator's Plate Helm
			{ itemID = 24546, price = "Arena" }, --Gladiator's Plate Shoulders
			{ itemID = 24544, price = "Arena" }, --Gladiator's Plate Chestpiece
			{ itemID = 24549, price = "Arena" }, --Gladiator's Plate Gauntlets
			{ itemID = 24547, price = "Arena" }, --Gladiator's Plate Legguards
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 30488, price = "Arena" }, --Merciless Gladiator's Plate Helm
			{ itemID = 30490, price = "Arena" }, --Merciless Gladiator's Plate Shoulders
			{ itemID = 30486, price = "Arena" }, --Merciless Gladiator's Plate Chestpiece
			{ itemID = 30487, price = "Arena" }, --Merciless Gladiator's Plate Gauntlets
			{ itemID = 30489, price = "Arena" }, --Merciless Gladiator's Plate Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. "Demonology",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 24553, price = "Arena" }, --Gladiator's Dreadweave Hood
			{ itemID = 24554, price = "Arena" }, --Gladiator's Dreadweave Mantle
			{ itemID = 24552, price = "Arena" }, --Gladiator's Dreadweave Robe
			{ itemID = 24556, price = "Arena" }, --Gladiator's Dreadweave Gloves
			{ itemID = 24555, price = "Arena" }, --Gladiator's Dreadweave Leggings
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31974, price = "Arena" }, --Merciless Gladiator's Dreadweave Hood
			{ itemID = 31976, price = "Arena" }, --Merciless Gladiator's Dreadweave Mantle
			{ itemID = 31977, price = "Arena" }, --Merciless Gladiator's Dreadweave Robe
			{ itemID = 31973, price = "Arena" }, --Merciless Gladiator's Dreadweave Gloves
			{ itemID = 31975, price = "Arena" }, --Merciless Gladiator's Dreadweave Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. color.WHITE.."Destruction",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 30187, price = "Arena" }, --Gladiator's Felweave Cowl
			{ itemID = 30186, price = "Arena" }, --Gladiator's Felweave Amice
			{ itemID = 30200, price = "Arena" }, --Gladiator's Felweave Raiment
			{ itemID = 30188, price = "Arena" }, --Gladiator's Felweave Handguards
			{ itemID = 30201, price = "Arena" }, --Gladiator's Felweave Trousers
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31980, price = "Arena" }, --Merciless Gladiator's Felweave Cowl
			{ itemID = 31979, price = "Arena" }, --Merciless Gladiator's Felweave Amice
			{ itemID = 31982, price = "Arena" }, --Merciless Gladiator's Felweave Raiment
			{ itemID = 31981, price = "Arena" }, --Merciless Gladiator's Felweave Handguards
			{ itemID = 31983, price = "Arena" }, --Merciless Gladiator's Felweave Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - "..color.WHITE.."Feral",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28127, price = "Arena" }, --Gladiator's Dragonhide Helm
			{ itemID = 28129, price = "Arena" }, --Gladiator's Dragonhide Spaulders
			{ itemID = 28130, price = "Arena" }, --Gladiator's Dragonhide Tunic
			{ itemID = 28126, price = "Arena" }, --Gladiator's Dragonhide Gloves
			{ itemID = 28128, price = "Arena" }, --Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31968, price = "Arena" }, --Merciless Gladiator's Dragonhide Helm
			{ itemID = 31971, price = "Arena" }, --Merciless Gladiator's Dragonhide Spaulders
			{ itemID = 31972, price = "Arena" }, --Merciless Gladiator's Dragonhide Tunic
			{ itemID = 31967, price = "Arena" }, --Merciless Gladiator's Dragonhide Gloves
			{ itemID = 31969, price = "Arena" }, --Merciless Gladiator's Dragonhide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. color.WHITE.."Balance",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28137, price = "Arena" }, --Gladiator's Wyrmhide Helm
			{ itemID = 28139, price = "Arena" }, --Gladiator's Wyrmhide Spaulders
			{ itemID = 28140, price = "Arena" }, --Gladiator's Wyrmhide Tunic
			{ itemID = 28136, price = "Arena" }, --Gladiator's Wyrmhide Gloves
			{ itemID = 28138, price = "Arena" }, --Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32057, price = "Arena" }, --Merciless Gladiator's Wyrmhide Helm
			{ itemID = 32059, price = "Arena" }, --Merciless Gladiator's Wyrmhide Spaulders
			{ itemID = 32060, price = "Arena" }, --Merciless Gladiator's Wyrmhide Tunic
			{ itemID = 32056, price = "Arena" }, --Merciless Gladiator's Wyrmhide Gloves
			{ itemID = 32058, price = "Arena" }, --Merciless Gladiator's Wyrmhide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. color.WHITE.."Restoration",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31376, price = "Arena" }, --Gladiator's Kodohide Helm
			{ itemID = 31378, price = "Arena" }, --Gladiator's Kodohide Spaulders
			{ itemID = 31379, price = "Arena" }, --Gladiator's Kodohide Tunic
			{ itemID = 31375, price = "Arena" }, --Gladiator's Kodohide Gloves
			{ itemID = 31377, price = "Arena" }, --Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31988, price = "Arena" }, --Merciless Gladiator's Kodohide Helm
			{ itemID = 31990, price = "Arena" }, --Merciless Gladiator's Kodohide Spaulders
			{ itemID = 31991, price = "Arena" }, --Merciless Gladiator's Kodohide Tunic
			{ itemID = 31987, price = "Arena" }, --Merciless Gladiator's Kodohide Gloves
			{ itemID = 31989, price = "Arena" }, --Merciless Gladiator's Kodohide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Enhancement",
			{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 25998, price = "Arena" }, --Gladiator's Linked Helm
			{ itemID = 25999, price = "Arena" }, --Gladiator's Linked Spaulders
			{ itemID = 25997, price = "Arena" }, --Gladiator's Linked Armor
			{ itemID = 26000, price = "Arena" }, --Gladiator's Linked Gauntlets
			{ itemID = 26001, price = "Arena" }, --Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32006, price = "Arena" }, --Merciless Gladiator's Linked Helm
			{ itemID = 32008, price = "Arena" }, --Merciless Gladiator's Linked Spaulders
			{ itemID = 32004, price = "Arena" }, --Merciless Gladiator's Linked Armor
			{ itemID = 32005, price = "Arena" }, --Merciless Gladiator's Linked Gauntlets
			{ itemID = 32007, price = "Arena" }, --Merciless Gladiator's Linked Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Elemental",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 27471, price = "Arena" }, --Gladiator's Mail Helm
			{ itemID = 27473, price = "Arena" }, --Gladiator's Mail Spaulders
			{ itemID = 27469, price = "Arena" }, --Gladiator's Mail Armor
			{ itemID = 27470, price = "Arena" }, --Gladiator's Mail Gauntlets
			{ itemID = 27472, price = "Arena" }, --Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32011, price = "Arena" }, --Merciless Gladiator's Mail Helm
			{ itemID = 32013, price = "Arena" }, --Merciless Gladiator's Mail Spaulders
			{ itemID = 32009, price = "Arena" }, --Merciless Gladiator's Mail Armor
			{ itemID = 32010, price = "Arena" }, --Merciless Gladiator's Mail Gauntlets
			{ itemID = 32012, price = "Arena" }, --Merciless Gladiator's Mail Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Restoration",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31400, price = "Arena" }, --Gladiator's Ringmail Helm
			{ itemID = 31407, price = "Arena" }, --Gladiator's Ringmail Spaulders
			{ itemID = 31396, price = "Arena" }, --Gladiator's Ringmail Armor
			{ itemID = 31397, price = "Arena" }, --Gladiator's Ringmail Gauntlets
			{ itemID = 31406, price = "Arena" }, --Gladiator's Ringmail Leggings
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32031, price = "Arena" }, --Merciless Gladiator's Ringmail Helm
			{ itemID = 32033, price = "Arena" }, --Merciless Gladiator's Ringmail Spaulders
			{ itemID = 32029, price = "Arena" }, --Merciless Gladiator's Ringmail Armor
			{ itemID = 32030, price = "Arena" }, --Merciless Gladiator's Ringmail Gauntlets
			{ itemID = 32032, price = "Arena" }, --Merciless Gladiator's Ringmail Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Protection",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 27704, price = "Arena" }, --Gladiator's Lamellar Helm
			{ itemID = 27706, price = "Arena" }, --Gladiator's Lamellar Shoulders
			{ itemID = 27702, price = "Arena" }, --Gladiator's Lamellar Chestpiece
			{ itemID = 27703, price = "Arena" }, --Gladiator's Lamellar Gauntlets
			{ itemID = 27705, price = "Arena" }, --Gladiator's Lamellar Legguards
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 31997, price = "Arena" }, --Merciless Gladiator's Lamellar Helm
			{ itemID = 31996, price = "Arena" }, --Merciless Gladiator's Lamellar Shoulders
			{ itemID = 31992, price = "Arena" }, --Merciless Gladiator's Lamellar Chestpiece
			{ itemID = 31993, price = "Arena" }, --Merciless Gladiator's Lamellar Gauntlets
			{ itemID = 31995, price = "Arena" }, --Merciless Gladiator's Lamellar Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Retribution",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 27881, price = "Arena" }, --Gladiator's Scaled Helm
			{ itemID = 27883, price = "Arena" }, --Gladiator's Scaled Shoulders
			{ itemID = 27879, price = "Arena" }, --Gladiator's Scaled Chestpiece
			{ itemID = 27880, price = "Arena" }, --Gladiator's Scaled Gauntlets
			{ itemID = 27882, price = "Arena" }, --Gladiator's Scaled Legguards
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32041, price = "Arena" }, --Merciless Gladiator's Scaled Helm
			{ itemID = 32043, price = "Arena" }, --Merciless Gladiator's Scaled Shoulders
			{ itemID = 32039, price = "Arena" }, --Merciless Gladiator's Scaled Chestpiece
			{ itemID = 32040, price = "Arena" }, --Merciless Gladiator's Scaled Gauntlets
			{ itemID = 32042, price = "Arena" }, --Merciless Gladiator's Scaled Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Holy",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31616, price = "Arena" }, --Gladiator's Ornamented Headcover
			{ itemID = 31619, price = "Arena" }, --Gladiator's Ornamented Spaulders
			{ itemID = 31613, price = "Arena" }, --Gladiator's Ornamented Chestguard
			{ itemID = 31614, price = "Arena" }, --Gladiator's Ornamented Gloves
			{ itemID = 31618, price = "Arena" }, --Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32022, price = "Arena" }, --Merciless Gladiator's Ornamented Headcover
			{ itemID = 32024, price = "Arena" }, --Merciless Gladiator's Ornamented Spaulders
			{ itemID = 32020, price = "Arena" }, --Merciless Gladiator's Ornamented Chestguard
			{ itemID = 32021, price = "Arena" }, --Merciless Gladiator's Ornamented Gloves
			{ itemID = 32023, price = "Arena" }, --Merciless Gladiator's Ornamented Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. color.WHITE.."Shadow",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 27708, price = "Arena" }, --Gladiator's Satin Hood
			{ itemID = 27710, price = "Arena" }, --Gladiator's Satin Mantle
			{ itemID = 27711, price = "Arena" }, --Gladiator's Satin Robe
			{ itemID = 27707, price = "Arena" }, --Gladiator's Satin Gloves
			{ itemID = 27709, price = "Arena" }, --Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32035, price = "Arena" }, --Merciless Gladiator's Satin Hood
			{ itemID = 32037, price = "Arena" }, --Merciless Gladiator's Satin Mantle
			{ itemID = 32038, price = "Arena" }, --Merciless Gladiator's Satin Robe
			{ itemID = 32034, price = "Arena" }, --Merciless Gladiator's Satin Gloves
			{ itemID = 32036, price = "Arena" }, --Merciless Gladiator's Satin Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. color.WHITE.."Holy",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31410, price = "Arena" }, --Gladiator's Mooncloth Hood
			{ itemID = 31412, price = "Arena" }, --Gladiator's Mooncloth Mantle
			{ itemID = 31413, price = "Arena" }, --Gladiator's Mooncloth Robe
			{ itemID = 31409, price = "Arena" }, --Gladiator's Mooncloth Gloves
			{ itemID = 31411, price = "Arena" }, --Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 32016, price = "Arena" }, --Merciless Gladiator's Mooncloth Hood
			{ itemID = 32018, price = "Arena" }, --Merciless Gladiator's Mooncloth Mantle
			{ itemID = 32019, price = "Arena" }, --Merciless Gladiator's Mooncloth Robe
			{ itemID = 32015, price = "Arena" }, --Merciless Gladiator's Mooncloth Gloves
			{ itemID = 32017, price = "Arena" }, --Merciless Gladiator's Mooncloth Leggings
		},
	},
}

--Arena Season 3
AtlasLoot_Data["Pvp70Season3"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Arena Season 3",
	{
		Name = "Accessories",
		WebID = {41035, "npc"},
		{
			{ itemID = 901000, price = "Arena" }, --Vindicator's Cloak of Battle
			{ itemID = 901001, price = "Arena" }, --Vindicator's Cloak of Condemnation
			{ itemID = 901002, price = "Arena" }, --Vindicator's Cloak of Power
			{ itemID = 901003, price = "Arena" }, --Vindicator's Cloak of Salvation
			{ itemID = 33918, price = "Arena" }, --Vindicator's Band of Salvation
			{ itemID = 33919, price = "Arena" }, --Vindicator's Band of Triumph
			{ itemID = 433919, price = "Arena" }, --Vindicator's Band of Combat
			{ itemID = 33853, price = "Arena" }, --Vindicator's Band of Dominance
			{ itemID = 35320, price = "Arena" }, --Vindicator's band of Subjugation 
			{ itemID = 901015, price = "Arena" }, --Vindicator's Band of Critical Mass
			{ itemID = 33920, price = "Arena" }, --Vindicator's Pendant of Conquest
			{ itemID = 33921, price = "Arena" }, --Vindicator's Pendant of Dominance
			{ itemID = 33922, price = "Arena" }, --Vindicator's Pendant of Salvation
			{ itemID = 33923, price = "Arena" }, --Vindicator's Pendant of Triumph
			{ itemID = 433923, price = "Arena" }, --Vindicator's Pendant of Power
			{ itemID = 433924, price = "Arena" }, --Vindicator's Pendant of Combat
		},
	},
	{
		Name = "Physical Damage ".."Weapons",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31966, price = "Arena" }, --Merciless Gladiator's Decapitator
			{ itemID = 131966, price = "Arena" }, --Merciless Gladiator's Executioner
			{ itemID = 509090, price = "Arena" }, --Merciless Gladiator's Battlehammer
			{ itemID = 31959, price = "Arena" }, --Merciless Gladiator's Bonegrinder
			{ itemID = 509094, price = "Arena" }, --Merciless Gladiator's Smasher
			{ itemID = 32025, price = "Arena" }, --Merciless Gladiator's Painsaw
			{ itemID = 414354, price = "Arena" }, --Merciless Gladiator's Polearm
			{ itemID = 414355, price = "Arena" }, --Merciless Gladiator's Claymore
			{ itemID = 31984, price = "Arena" }, --Merciless Gladiator's Greatsword
			{ itemID = 32026, price = "Arena" }, --Merciless Gladiator's Pummeler
			{ itemID = 32052, price = "Arena" }, --Merciless Gladiator's Slicer
			{ itemID = 32027, price = "Arena" }, --Merciless Gladiator's Quickblade
			{ itemID = 509142, price = "Arena" }, --Merciless Gladiator's Cleaver
			{ itemID = 509083, price = "Arena" }, --Merciless Gladiator's Chopper
			{ itemID = 31985, price = "Arena" }, --Merciless Gladiator's Hacker
			{ itemID = 31958, price = "Arena" }, --Merciless Gladiator's Bonecracker
			{ itemID = 32003, price = "Arena" }, --Merciless Gladiator's Left Ripper
			{ itemID = 32028, price = "Arena" }, --Merciless Gladiator's Right Ripper
			{ itemID = 414369, price = "Arena" }, --Merciless Gladiator's Mutilator
			{ itemID = 32046, price = "Arena" }, --Merciless Gladiator's Shiv
			{ itemID = 32044, price = "Arena" }, --Merciless Gladiator's Shanker
			{ itemID = 509086, price = "Arena" }, --Merciless Gladiator's Longbow
			{ itemID = 31986, price = "Arena" }, --Merciless Gladiator's Heavy Crossbow
			{ itemID = 509087, price = "Arena" }, --Merciless Gladiator's Rifle
			{ itemID = 509081, price = "Arena" }, --Merciless Gladiator's War Edge
			{ itemID = 32045, price = "Arena" }, --Merciless Gladiator's Shield Wall
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 33670, price = "Arena" }, --Vengeful Gladiator's Decapitator
			{ itemID = 34014, price = "Arena" }, --Vengeful Gladiator's Executioner
			{ itemID = 300136, price = "Arena" }, --Vengeful Gladiator's Battlehammer
			{ itemID = 33663, price = "Arena" }, --Vengeful Gladiator's Bonegrinder
			{ itemID = 300140, price = "Arena" }, --Vengeful Gladiator's Smasher
			{ itemID = 33727, price = "Arena" }, --Vengeful Gladiator's Painsaw
			{ itemID = 414356, price = "Arena" }, --Vengeful Gladiator's Polearm
			{ itemID = 414357, price = "Arena" }, --Vengeful Gladiator's Claymore
			{ itemID = 33688, price = "Arena" }, --Vengeful Gladiator's Greatsword
			{ itemID = 33733, price = "Arena" }, --Vengeful Gladiator's Pummeler
			{ itemID = 33762, price = "Arena" }, --Vengeful Gladiator's Slicer
			{ itemID = 414377, price = "Arena" }, --Vengeful Gladiator's Quickblade
			{ itemID = 33669, price = "Arena" }, --Vengeful Gladiator's Cleaver
			{ itemID = 34015, price = "Arena" }, --Vengeful Gladiator's Chopper
			{ itemID = 414371, price = "Arena" }, --Vengeful Gladiator's Hacker
			{ itemID = 414376, price = "Arena" }, --Vengeful Gladiator's Bonecracker
			{ itemID = 34016, price = "Arena" }, --Vengeful Gladiator's Left Render
			{ itemID = 33737, price = "Arena" }, --Vengeful Gladiator's Right Ripper
			{ itemID = 414378, price = "Arena" }, --Vengeful Gladiator's Mutilator
			{ itemID = 414379, price = "Arena" }, --Vengeful Gladiator's Shiv
			{ itemID = 33754, price = "Arena" }, --Vengeful Gladiator's Shanker
			{ itemID = 34529, price = "Arena" }, --Vengeful Gladiator's Longbow
			{ itemID = 33006, price = "Arena" }, --Vengeful Gladiator's Heavy Crossbow
			{ itemID = 34530, price = "Arena" }, --Vengeful Gladiator's Rifle
			{ itemID = 33765, price = "Arena" }, --Vengeful Gladiator's War Edge
			{ itemID = 33755, price = "Arena" }, --Vengeful Gladiator's Shield Wall
		},
	},
	{
		Name = "Caster ".."Weapons",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 509088, price = "Arena" }, --Merciless Gladiator's Battle Staff
			{ itemID = 509093, price = "Arena" }, --Merciless Gladiator's Guardian Staff
			{ itemID = 32055, price = "Arena" }, --Merciless Gladiator's War Staff
			{ itemID = 509089, price = "Arena" }, --Merciless Gladiator's Battlemace
			{ itemID = 32963, price = "Arena" }, --Merciless Gladiator's Gavel
			{ itemID = 509092, price = "Arena" }, --Merciless Gladiator's Guardian Mace
			{ itemID = 32964, price = "Arena" }, --Merciless Gladiator's Salvation
			{ itemID = 509096, price = "Arena" }, --Merciless Gladiator's Battleslicer
			{ itemID = 509098, price = "Arena" }, --Merciless Gladiator's Spellblade
			{ itemID = 414353, price = "Arena" }, --Merciless Gladiator's Dagger
			{ itemID = 509097, price = "Arena" }, --Merciless Gladiator's Magebow
			{ itemID = 509085, price = "Arena" }, --Merciless Gladiator's Piercing Touch
			{ itemID = 509144, price = "Arena" }, --Merciless Gladiator's Touch of Defeat
			{ itemID = 33313, price = "Arena" }, --Merciless Gladiator's Barrier
			{ itemID = 33309, price = "Arena" }, --Merciless Gladiator's Redoubt
			{ itemID = 31978, price = "Arena" }, --Merciless Gladiator's Endgame
			{ itemID = 509084, price = "Arena" }, --Merciless Gladiator's Grimoire
			{ itemID = 32961, price = "Arena" }, --Merciless Gladiator's Reprieve
			{ itemID = 414370, price = "Arena" }, --Merciless Gladiator's Libram of Fortitude
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 34540, price = "Arena" }, --Vengeful Gladiator's Battle Staff
			{ itemID = 300139, price = "Arena" }, --Vengeful Gladiator's Guardian Staff
			{ itemID = 33766, price = "Arena" }, --Vengeful Gladiator's War Staff
			{ itemID = 300135, price = "Arena" }, --Vengeful Gladiator's Battlemace
			{ itemID = 33687, price = "Arena" }, --Vengeful Gladiator's Gavel
			{ itemID = 300138, price = "Arena" }, --Vengeful Gladiator's Guardian Mace
			{ itemID = 33743, price = "Arena" }, --Vengeful Gladiator's Salvation
			{ itemID = 300147, price = "Arena" }, --Vengeful Gladiator's Battleslicer
			{ itemID = 33763, price = "Arena" }, --Vengeful Gladiator's Spellblade
			{ itemID = 300137, price = "Arena" }, --Vengeful Gladiator's Dagger
			{ itemID = 300148, price = "Arena" }, --Vengeful Gladiator's Magebow
			{ itemID = 34066, price = "Arena" }, --Vengeful Gladiator's Piercing Touch
			{ itemID = 33764, price = "Arena" }, --Vengeful Gladiator's Touch of Defeat
			{ itemID = 33661, price = "Arena" }, --Vengeful Gladiator's Barrier
			{ itemID = 33735, price = "Arena" }, --Vengeful Gladiator's Redoubt
			{ itemID = 33681, price = "Arena" }, --Vengeful Gladiator's Endgame
			{ itemID = 34033, price = "Arena" }, --Vengeful Gladiator's Grimoire
			{ itemID = 33736, price = "Arena" }, --Vengeful Gladiator's Reprieve
			{ itemID = 300149, price = "Arena" }, --Vengeful Gladiator's Libram of Fortitude
		},
	},
	{
		Name = "Cloth ".."Offset",
		WebID = {41035, "npc"},
		{
			{ itemID = 33883, price = "Arena" }, --Vindicator's Dreadweave Cuffs
			{ itemID = 33882, price = "Arena" }, --Vindicator's Dreadweave Belt
			{ itemID = 33884, price = "Arena" }, --Vindicator's Dreadweave Stalkers
			{ itemID = 33913, price = "Arena" }, --Vindicator's Silk Cuffs
			{ itemID = 33912, price = "Arena" }, --Vindicator's Silk Belt
			{ itemID = 33914, price = "Arena" }, --Vindicator's Silk Footguards
			{ itemID = 33901, price = "Arena" }, --Vindicator's Mooncloth Cuffs
			{ itemID = 33900, price = "Arena" }, --Vindicator's Mooncloth Belt
			{ itemID = 33902, price = "Arena" }, --Vindicator's Mooncloth Slippers
		},
	},
	{
		Name = "Leather ".."Offset",
		WebID = {41035, "npc"},
		{
			{ itemID = 33881, price = "Arena" }, --Vindicator's Dragonhide Bracers
			{ itemID = 33879, price = "Arena" }, --Vindicator's Dragonhide Belt
			{ itemID = 33880, price = "Arena" }, --Vindicator's Dragonhide Boots
			{ itemID = 33887, price = "Arena" }, --Vindicator's Kodohide Bracers
			{ itemID = 33885, price = "Arena" }, --Vindicator's Kodohide Belt
			{ itemID = 33886, price = "Arena" }, --Vindicator's Kodohide Boots
			{ itemID = 33893, price = "Arena" }, --Vindicator's Leather Bracers
			{ itemID = 33891, price = "Arena" }, --Vindicator's Leather Belt
			{ itemID = 33892, price = "Arena" }, --Vindicator's Leather Boots
			{ itemID = 33917, price = "Arena" }, --Vindicator's Wyrmhide Bracers
			{ itemID = 33915, price = "Arena" }, --Vindicator's Wyrmhide Belt
			{ itemID = 33916, price = "Arena" }, --Vindicator's Wyrmhide Boots
		},
	},
	{
		Name = "Mail ".."Offset",
		WebID = {41035, "npc"},
		{
			{ itemID = 33876, price = "Arena" }, --Vindicator's Chain Bracers
			{ itemID = 33877, price = "Arena" }, --Vindicator's Chain Girdle
			{ itemID = 33878, price = "Arena" }, --Vindicator's Chain Sabatons
			{ itemID = 33894, price = "Arena" }, --Vindicator's Linked Bracers
			{ itemID = 33895, price = "Arena" }, --Vindicator's Linked Girdle
			{ itemID = 33896, price = "Arena" }, --Vindicator's Linked Sabatons
			{ itemID = 33897, price = "Arena" }, --Vindicator's Mail Bracers
			{ itemID = 33898, price = "Arena" }, --Vindicator's Mail Girdle
			{ itemID = 33899, price = "Arena" }, --Vindicator's Mail Sabatons
			{ itemID = 33909, price = "Arena" }, --Vindicator's Scaled Belt
			{ itemID = 33910, price = "Arena" }, --Vindicator's Scaled Bracers
			{ itemID = 33911, price = "Arena" }, --Vindicator's Scaled Greaves
			{ itemID = 33906, price = "Arena" }, --Vindicator's Ringmail Bracers
			{ itemID = 33907, price = "Arena" }, --Vindicator's Ringmail Girdle
			{ itemID = 33908, price = "Arena" }, --Vindicator's Ringmail Sabatons
		},
	},
	{
		Name = "Plate ".."Offset",
		WebID = {41035, "npc"},
		{
			{ itemID = 33889, price = "Arena" }, --Vindicator's Lamellar Bracers
			{ itemID = 33888, price = "Arena" }, --Vindicator's Lamellar Belt
			{ itemID = 33890, price = "Arena" }, --Vindicator's Lamellar Greaves
			{ itemID = 33903, price = "Arena" }, --Vindicator's Ornamented Belt
			{ itemID = 33904, price = "Arena" }, --Vindicator's Ornamented Bracers
			{ itemID = 33905, price = "Arena" }, --Vindicator's Ornamented Greaves
			{ itemID = 33813, price = "Arena" }, --Vindicator's Plate Bracers
			{ itemID = 33811, price = "Arena" }, --Vindicator's Plate Belt
			{ itemID = 33812, price = "Arena" }, --Vindicator's Plate Greaves
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31962, price = "Arena" }, --Merciless Gladiator's Chain Helm
			{ itemID = 31964, price = "Arena" }, --Merciless Gladiator's Chain Spaulders
			{ itemID = 31960, price = "Arena" }, --Merciless Gladiator's Chain Armor
			{ itemID = 31961, price = "Arena" }, --Merciless Gladiator's Chain Gauntlets
			{ itemID = 31963, price = "Arena" }, --Merciless Gladiator's Chain Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923477, price = "Arena" }, --Vengeful Gladiator's Chain Helm
			{ itemID = 923479, price = "Arena" }, --Vengeful Gladiator's Chain Spaulders
			{ itemID = 923475, price = "Arena" }, --Vengeful Gladiator's Chain Armor
			{ itemID = 923476, price = "Arena" }, --Vengeful Gladiator's Chain Gauntlets
			{ itemID = 923478, price = "Arena" }, --Vengeful Gladiator's Chain Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32048, price = "Arena" }, --Merciless Gladiator's Silk Cowl
			{ itemID = 32047, price = "Arena" }, --Merciless Gladiator's Silk Amice
			{ itemID = 32050, price = "Arena" }, --Merciless Gladiator's Silk Raiment
			{ itemID = 32049, price = "Arena" }, --Merciless Gladiator's Silk Handguards
			{ itemID = 32051, price = "Arena" }, --Merciless Gladiator's Silk Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923546, price = "Arena" }, --Vengeful Gladiator's Silk Cowl
			{ itemID = 923545, price = "Arena" }, --Vengeful Gladiator's Silk Amice
			{ itemID = 923548, price = "Arena" }, --Vengeful Gladiator's Silk Raiment
			{ itemID = 923547, price = "Arena" }, --Vengeful Gladiator's Silk Handguards
			{ itemID = 923549, price = "Arena" }, --Vengeful Gladiator's Silk Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31999, price = "Arena" }, --Merciless Gladiator's Leather Helm
			{ itemID = 32001, price = "Arena" }, --Merciless Gladiator's Leather Spaulders
			{ itemID = 32002, price = "Arena" }, --Merciless Gladiator's Leather Tunic
			{ itemID = 31998, price = "Arena" }, --Merciless Gladiator's Leather Gloves
			{ itemID = 32000, price = "Arena" }, --Merciless Gladiator's Leather Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923506, price = "Arena" }, --Vengeful Gladiator's Leather Helm
			{ itemID = 923508, price = "Arena" }, --Vengeful Gladiator's Leather Spaulders
			{ itemID = 923509, price = "Arena" }, --Vengeful Gladiator's Leather Tunic
			{ itemID = 923505, price = "Arena" }, --Vengeful Gladiator's Leather Gloves
			{ itemID = 923507, price = "Arena" }, --Vengeful Gladiator's Leather Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 30488, price = "Arena" }, --Merciless Gladiator's Plate Helm
			{ itemID = 30490, price = "Arena" }, --Merciless Gladiator's Plate Shoulders
			{ itemID = 30486, price = "Arena" }, --Merciless Gladiator's Plate Chestpiece
			{ itemID = 30487, price = "Arena" }, --Merciless Gladiator's Plate Gauntlets
			{ itemID = 30489, price = "Arena" }, --Merciless Gladiator's Plate Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923472, price = "Arena" }, --Vengeful Gladiator's Plate Helm
			{ itemID = 923474, price = "Arena" }, --Vengeful Gladiator's Plate Shoulders
			{ itemID = 923470, price = "Arena" }, --Vengeful Gladiator's Plate Chestpiece
			{ itemID = 923471, price = "Arena" }, --Vengeful Gladiator's Plate Gauntlets
			{ itemID = 923473, price = "Arena" }, --Vengeful Gladiator's Plate Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. color.WHITE.."Demonology",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31974, price = "Arena" }, --Merciless Gladiator's Dreadweave Hood
			{ itemID = 31976, price = "Arena" }, --Merciless Gladiator's Dreadweave Mantle
			{ itemID = 31977, price = "Arena" }, --Merciless Gladiator's Dreadweave Robe
			{ itemID = 31973, price = "Arena" }, --Merciless Gladiator's Dreadweave Gloves
			{ itemID = 31975, price = "Arena" }, --Merciless Gladiator's Dreadweave Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923486, price = "Arena" }, --Vengeful Gladiator's Dreadweave Hood
			{ itemID = 923488, price = "Arena" }, --Vengeful Gladiator's Dreadweave Mantle
			{ itemID = 923489, price = "Arena" }, --Vengeful Gladiator's Dreadweave Robe
			{ itemID = 923485, price = "Arena" }, --Vengeful Gladiator's Dreadweave Gloves
			{ itemID = 923487, price = "Arena" }, --Vengeful Gladiator's Dreadweave Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. color.WHITE.."Destruction",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31980, price = "Arena" }, --Merciless Gladiator's Felweave Cowl
			{ itemID = 31979, price = "Arena" }, --Merciless Gladiator's Felweave Amice
			{ itemID = 31982, price = "Arena" }, --Merciless Gladiator's Felweave Raiment
			{ itemID = 31981, price = "Arena" }, --Merciless Gladiator's Felweave Handguards
			{ itemID = 31983, price = "Arena" }, --Merciless Gladiator's Felweave Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 33683, price = "Arena" }, --Vengeful Gladiator's Felweave Cowl
			{ itemID = 33682, price = "Arena" }, --Vengeful Gladiator's Felweave Amice
			{ itemID = 33685, price = "Arena" }, --Vengeful Gladiator's Felweave Raiment
			{ itemID = 33684, price = "Arena" }, --Vengeful Gladiator's Felweave Handguards
			{ itemID = 33686, price = "Arena" }, --Vengeful Gladiator's Felweave Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - "..color.WHITE.."Feral",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31968, price = "Arena" }, --Merciless Gladiator's Dragonhide Helm
			{ itemID = 31971, price = "Arena" }, --Merciless Gladiator's Dragonhide Spaulders
			{ itemID = 31972, price = "Arena" }, --Merciless Gladiator's Dragonhide Tunic
			{ itemID = 31967, price = "Arena" }, --Merciless Gladiator's Dragonhide Gloves
			{ itemID = 31969, price = "Arena" }, --Merciless Gladiator's Dragonhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923481, price = "Arena" }, --Vengeful Gladiator's Dragonhide Helm
			{ itemID = 923483, price = "Arena" }, --Vengeful Gladiator's Dragonhide Spaulders
			{ itemID = 923484, price = "Arena" }, --Vengeful Gladiator's Dragonhide Tunic
			{ itemID = 923480, price = "Arena" }, --Vengeful Gladiator's Dragonhide Gloves
			{ itemID = 923482, price = "Arena" }, --Vengeful Gladiator's Dragonhide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. color.WHITE.."Balance",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32057, price = "Arena" }, --Merciless Gladiator's Wyrmhide Helm
			{ itemID = 32059, price = "Arena" }, --Merciless Gladiator's Wyrmhide Spaulders
			{ itemID = 32060, price = "Arena" }, --Merciless Gladiator's Wyrmhide Tunic
			{ itemID = 32056, price = "Arena" }, --Merciless Gladiator's Wyrmhide Gloves
			{ itemID = 32058, price = "Arena" }, --Merciless Gladiator's Wyrmhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923551, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Helm
			{ itemID = 923553, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Spaulders
			{ itemID = 923554, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Tunic
			{ itemID = 923550, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Gloves
			{ itemID = 923552, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. color.WHITE.."Restoration",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31988, price = "Arena" }, --Merciless Gladiator's Kodohide Helm
			{ itemID = 31990, price = "Arena" }, --Merciless Gladiator's Kodohide Spaulders
			{ itemID = 31991, price = "Arena" }, --Merciless Gladiator's Kodohide Tunic
			{ itemID = 31987, price = "Arena" }, --Merciless Gladiator's Kodohide Gloves
			{ itemID = 31989, price = "Arena" }, --Merciless Gladiator's Kodohide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923496, price = "Arena" }, --Vengeful Gladiator's Kodohide Helm
			{ itemID = 923498, price = "Arena" }, --Vengeful Gladiator's Kodohide Spaulders
			{ itemID = 923499, price = "Arena" }, --Vengeful Gladiator's Kodohide Tunic
			{ itemID = 923495, price = "Arena" }, --Vengeful Gladiator's Kodohide Gloves
			{ itemID = 923497, price = "Arena" }, --Vengeful Gladiator's Kodohide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Enhancement",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32006, price = "Arena" }, --Merciless Gladiator's Linked Helm
			{ itemID = 32008, price = "Arena" }, --Merciless Gladiator's Linked Spaulders
			{ itemID = 32004, price = "Arena" }, --Merciless Gladiator's Linked Armor
			{ itemID = 32005, price = "Arena" }, --Merciless Gladiator's Linked Gauntlets
			{ itemID = 32007, price = "Arena" }, --Merciless Gladiator's Linked Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923512, price = "Arena" }, --Vengeful Gladiator's Linked Helm
			{ itemID = 923514, price = "Arena" }, --Vengeful Gladiator's Linked Spaulders
			{ itemID = 923510, price = "Arena" }, --Vengeful Gladiator's Linked Armor
			{ itemID = 923511, price = "Arena" }, --Vengeful Gladiator's Linked Gauntlets
			{ itemID = 923513, price = "Arena" }, --Vengeful Gladiator's Linked Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Elemental",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32011, price = "Arena" }, --Merciless Gladiator's Mail Helm
			{ itemID = 32013, price = "Arena" }, --Merciless Gladiator's Mail Spaulders
			{ itemID = 32009, price = "Arena" }, --Merciless Gladiator's Mail Armor
			{ itemID = 32010, price = "Arena" }, --Merciless Gladiator's Mail Gauntlets
			{ itemID = 32012, price = "Arena" }, --Merciless Gladiator's Mail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923517, price = "Arena" }, --Vengeful Gladiator's Mail Helm
			{ itemID = 923519, price = "Arena" }, --Vengeful Gladiator's Mail Spaulders
			{ itemID = 923515, price = "Arena" }, --Vengeful Gladiator's Mail Armor
			{ itemID = 923516, price = "Arena" }, --Vengeful Gladiator's Mail Gauntlets
			{ itemID = 923518, price = "Arena" }, --Vengeful Gladiator's Mail Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Restoration",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32031, price = "Arena" }, --Merciless Gladiator's Ringmail Helm
			{ itemID = 32033, price = "Arena" }, --Merciless Gladiator's Ringmail Spaulders
			{ itemID = 32029, price = "Arena" }, --Merciless Gladiator's Ringmail Armor
			{ itemID = 32030, price = "Arena" }, --Merciless Gladiator's Ringmail Gauntlets
			{ itemID = 32032, price = "Arena" }, --Merciless Gladiator's Ringmail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923532, price = "Arena" }, --Vengeful Gladiator's Ringmail Helm
			{ itemID = 923534, price = "Arena" }, --Vengeful Gladiator's Ringmail Spaulders
			{ itemID = 923530, price = "Arena" }, --Vengeful Gladiator's Ringmail Armor
			{ itemID = 923531, price = "Arena" }, --Vengeful Gladiator's Ringmail Gauntlets
			{ itemID = 923533, price = "Arena" }, --Vengeful Gladiator's Ringmail Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Protection",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31997, price = "Arena" }, --Merciless Gladiator's Lamellar Helm
			{ itemID = 31996, price = "Arena" }, --Merciless Gladiator's Lamellar Shoulders
			{ itemID = 31992, price = "Arena" }, --Merciless Gladiator's Lamellar Chestpiece
			{ itemID = 31993, price = "Arena" }, --Merciless Gladiator's Lamellar Gauntlets
			{ itemID = 31995, price = "Arena" }, --Merciless Gladiator's Lamellar Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923504, price = "Arena" }, --Vengeful Gladiator's Lamellar Helm
			{ itemID = 923503, price = "Arena" }, --Vengeful Gladiator's Lamellar Shoulders
			{ itemID = 923500, price = "Arena" }, --Vengeful Gladiator's Lamellar Chestpiece
			{ itemID = 923501, price = "Arena" }, --Vengeful Gladiator's Lamellar Gauntlets
			{ itemID = 923502, price = "Arena" }, --Vengeful Gladiator's Lamellar Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Retribution",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32041, price = "Arena" }, --Merciless Gladiator's Scaled Helm
			{ itemID = 32043, price = "Arena" }, --Merciless Gladiator's Scaled Shoulders
			{ itemID = 32039, price = "Arena" }, --Merciless Gladiator's Scaled Chestpiece
			{ itemID = 32040, price = "Arena" }, --Merciless Gladiator's Scaled Gauntlets
			{ itemID = 32042, price = "Arena" }, --Merciless Gladiator's Scaled Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923542, price = "Arena" }, --Vengeful Gladiator's Scaled Helm
			{ itemID = 923544, price = "Arena" }, --Vengeful Gladiator's Scaled Shoulders
			{ itemID = 923540, price = "Arena" }, --Vengeful Gladiator's Scaled Chestpiece
			{ itemID = 923541, price = "Arena" }, --Vengeful Gladiator's Scaled Gauntlets
			{ itemID = 923543, price = "Arena" }, --Vengeful Gladiator's Scaled Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Holy",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32022, price = "Arena" }, --Merciless Gladiator's Ornamented Headcover
			{ itemID = 32024, price = "Arena" }, --Merciless Gladiator's Ornamented Spaulders
			{ itemID = 32020, price = "Arena" }, --Merciless Gladiator's Ornamented Chestguard
			{ itemID = 32021, price = "Arena" }, --Merciless Gladiator's Ornamented Gloves
			{ itemID = 32023, price = "Arena" }, --Merciless Gladiator's Ornamented Legplates
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923527, price = "Arena" }, --Vengeful Gladiator's Ornamented Headcover
			{ itemID = 923529, price = "Arena" }, --Vengeful Gladiator's Ornamented Spaulders
			{ itemID = 923525, price = "Arena" }, --Vengeful Gladiator's Ornamented Chestguard
			{ itemID = 923526, price = "Arena" }, --Vengeful Gladiator's Ornamented Gloves
			{ itemID = 923528, price = "Arena" }, --Vengeful Gladiator's Ornamented Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. color.WHITE.."Shadow",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32035, price = "Arena" }, --Merciless Gladiator's Satin Hood
			{ itemID = 32037, price = "Arena" }, --Merciless Gladiator's Satin Mantle
			{ itemID = 32038, price = "Arena" }, --Merciless Gladiator's Satin Robe
			{ itemID = 32034, price = "Arena" }, --Merciless Gladiator's Satin Gloves
			{ itemID = 32036, price = "Arena" }, --Merciless Gladiator's Satin Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923536, price = "Arena" }, --Vengeful Gladiator's Satin Hood
			{ itemID = 923538, price = "Arena" }, --Vengeful Gladiator's Satin Mantle
			{ itemID = 923539, price = "Arena" }, --Vengeful Gladiator's Satin Robe
			{ itemID = 923535, price = "Arena" }, --Vengeful Gladiator's Satin Gloves
			{ itemID = 923537, price = "Arena" }, --Vengeful Gladiator's Satin Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. color.WHITE.."Holy",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32016, price = "Arena" }, --Merciless Gladiator's Mooncloth Hood
			{ itemID = 32018, price = "Arena" }, --Merciless Gladiator's Mooncloth Mantle
			{ itemID = 32019, price = "Arena" }, --Merciless Gladiator's Mooncloth Robe
			{ itemID = 32015, price = "Arena" }, --Merciless Gladiator's Mooncloth Gloves
			{ itemID = 32017, price = "Arena" }, --Merciless Gladiator's Mooncloth Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 923521, price = "Arena" }, --Vengeful Gladiator's Mooncloth Hood
			{ itemID = 923523, price = "Arena" }, --Vengeful Gladiator's Mooncloth Mantle
			{ itemID = 923524, price = "Arena" }, --Vengeful Gladiator's Mooncloth Robe
			{ itemID = 923520, price = "Arena" }, --Vengeful Gladiator's Mooncloth Gloves
			{ itemID = 923522, price = "Arena" }, --Vengeful Gladiator's Mooncloth Leggings
		},
	},
}

--Arena Season 4
AtlasLoot_Data["Pvp70Season4"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Arena Season 4",
	{
		Name = "Back",
		WebID = {41045, "npc"},
			{
			{ itemID = 41591, price = "Arena" }, --Guardian's Cloak of Battle
			{ itemID = 41592, price = "Arena" }, --Guardian's Cloak of Condemnation
			{ itemID = 44429, price = "Arena" }, --Guardian's Cloak of Power
			{ itemID = 44431, price = "Arena" }, --Guardian's Cloak of Salvation
			{ itemID = 278405, price = "Arena" }, --Guardian's Cloak of Cruelty
			{ itemID = 278404, price = "Arena" }, --Guardian's Cloak of Tyranny
		},
	},
	{
		Name = "Rings",
		WebID = {41045, "npc"},
		{
			{ itemID = 414399, price = "Arena" }, --Guardian's Band of Accuracy
			{ itemID = 46728, price = "Arena" }, --Guardian's Band of Conquest
			{ itemID = 35129, price = "Arena" }, --Guardian's Band of Dominance
			{ itemID = 414400, price = "Arena" }, --Guardian's Band of Precision
			{ itemID = 46727, price = "Arena" }, --Guardian's Band of Reprieve
			{ itemID = 35130, price = "Arena" }, --Guardian's Band of Salvation
			{ itemID = 37927, price = "Arena" }, --Guardian's Band of Subjugation
			{ itemID = 35131, price = "Arena" }, --Guardian's Band of Triumph
			{ itemID = 278403, price = "Arena" }, --Guardian's Band of Cruelty
			{ itemID = 278400, price = "Arena" }, --Guardian's Band of Tyranny
		},
	},
	{
		Name = "Neck",
		WebID = {41045, "npc"},
		{
			{ itemID = 35132, price = "Arena" }, --Guardian's Pendant of Conquest
			{ itemID = 35133, price = "Arena" }, --Guardian's Pendant of Dominance
			{ itemID = 37929, price = "Arena" }, --Guardian's Pendant of Reprieve
			{ itemID = 35134, price = "Arena" }, --Guardian's Pendant of Salvation
			{ itemID = 37928, price = "Arena" }, --Guardian's Pendant of Subjugation
			{ itemID = 35135, price = "Arena" }, --Guardian's Pendant of Triumph
			{ itemID = 278401, price = "Arena" }, --Guardian's Pendant of Cruelty
			{ itemID = 278402, price = "Arena" }, --Guardian's Pendant of Tyranny
		},
	},
	{
		Name = "Trinket",
		WebID = {41045, "npc"},
		{
			{ itemID = 41588, price = "Arena" }, --Battlemaster's Audacity
			{ itemID = 41587, price = "Arena" }, --Battlemaster's Celerity
			{ itemID = 41590, price = "Arena" }, --Battlemaster's Courage
			{ itemID = 46705, price = "Arena" }, --Battlemaster's Cruelty
			{ itemID = 41589, price = "Arena" }, --Battlemaster's Resolve
		},
	},
	{
		Name = "Gems & Enchants",
		{
			{ itemID = 1505062, price = "5000 #faction#" }, --Resplendent Fire Opal
			{ itemID = 1505064, price = "5000 #faction#" }, --Lucent Fire Opal
			{ itemID = 1505066, price = "5000 #faction#" }, --Empowered Fire Opal
			{ itemID = 1505068, price = "5000 #faction#" }, --Durable Fire Opal
			{ itemID = 1505070, price = "5000 #faction#" }, --Piercing Evergem
			{ itemID = 1505072, price = "5000 #faction#" }, --Tense Evergem
			{ itemID = 1505074, price = "5000 #faction#" }, --Mysterious Shadowgem
			{ itemID = 1449572, price = "23000 #faction#" }, --Vindicator's Inscription of the Archmage
			{ itemID = 1449573, price = "23000 #faction#" }, --Vindicator's Inscription of the Brawler
			{ itemID = 1449576, price = "25000 #faction#" }, --Vindicator's Arcanum of the Archmage
			{ itemID = 1449577, price = "25000 #faction#" }, --Vindicator's Arcanum of the Brawler
		},
	},
	{
		Name = "Physical Damage ".."Weapons",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 33670, price = "Arena" }, --Vengeful Gladiator's Decapitator
			{ itemID = 34014, price = "Arena" }, --Vengeful Gladiator's Executioner
			{ itemID = 300136, price = "Arena" }, --Vengeful Gladiator's Battlehammer
			{ itemID = 33663, price = "Arena" }, --Vengeful Gladiator's Bonegrinder
			{ itemID = 300140, price = "Arena" }, --Vengeful Gladiator's Smasher
			{ itemID = 33727, price = "Arena" }, --Vengeful Gladiator's Painsaw
			{ itemID = 414356, price = "Arena" }, --Vengeful Gladiator's Polearm
			{ itemID = 414357, price = "Arena" }, --Vengeful Gladiator's Claymore
			{ itemID = 33688, price = "Arena" }, --Vengeful Gladiator's Greatsword
			{ itemID = 33733, price = "Arena" }, --Vengeful Gladiator's Pummeler
			{ itemID = 33762, price = "Arena" }, --Vengeful Gladiator's Slicer
			{ itemID = 414377, price = "Arena" }, --Vengeful Gladiator's Quickblade
			{ itemID = 33669, price = "Arena" }, --Vengeful Gladiator's Cleaver
			{ itemID = 34015, price = "Arena" }, --Vengeful Gladiator's Chopper
			{ itemID = 414371, price = "Arena" }, --Vengeful Gladiator's Hacker
			{ itemID = 414376, price = "Arena" }, --Vengeful Gladiator's Bonecracker
			{ itemID = 34016, price = "Arena" }, --Vengeful Gladiator's Left Render
			{ itemID = 33737, price = "Arena" }, --Vengeful Gladiator's Right Ripper
			{ itemID = 414378, price = "Arena" }, --Vengeful Gladiator's Mutilator
			{ itemID = 414379, price = "Arena" }, --Vengeful Gladiator's Shiv
			{ itemID = 33754, price = "Arena" }, --Vengeful Gladiator's Shanker
			{ itemID = 34529, price = "Arena" }, --Vengeful Gladiator's Longbow
			{ itemID = 33006, price = "Arena" }, --Vengeful Gladiator's Heavy Crossbow
			{ itemID = 34530, price = "Arena" }, --Vengeful Gladiator's Rifle
			{ itemID = 33765, price = "Arena" }, --Vengeful Gladiator's War Edge
			{ itemID = 33755, price = "Arena" }, --Vengeful Gladiator's Shield Wall
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 34997, price = "Arena" }, --Brutal Gladiator's Decapitator
			{ itemID = 414389, price = "Arena" }, --Brutal Gladiator's Executioner
			{ itemID = 414390, price = "Arena" }, --Brutal Gladiator's Battlehammer
			{ itemID = 34989, price = "Arena" }, --Brutal Gladiator's Bonegrinder
			{ itemID = 414391, price = "Arena" }, --Brutal Gladiator's Smasher
			{ itemID = 35064, price = "Arena" }, --Brutal Gladiator's Painsaw
			{ itemID = 414397, price = "Arena" }, --Brutal Gladiator's Polearm
			{ itemID = 414396, price = "Arena" }, --Brutal Gladiator's Claymore
			{ itemID = 35015, price = "Arena" }, --Brutal Gladiator's Greatsword
			{ itemID = 35071, price = "Arena" }, --Brutal Gladiator's Pummeler
			{ itemID = 35101, price = "Arena" }, --Brutal Gladiator's Slicer
			{ itemID = 35072, price = "Arena" }, --Brutal Gladiator's Quickblade
			{ itemID = 34996, price = "Arena" }, --Brutal Gladiator's Cleaver
			{ itemID = 34995, price = "Arena" }, --Brutal Gladiator's Chopper
			{ itemID = 35017, price = "Arena" }, --Brutal Gladiator's Hacker
			{ itemID = 34988, price = "Arena" }, --Brutal Gladiator's Bonecracker
			{ itemID = 35037, price = "Arena" }, --Brutal Gladiator's Left Render
			{ itemID = 35076, price = "Arena" }, --Brutal Gladiator's Right Ripper
			{ itemID = 35058, price = "Arena" }, --Brutal Gladiator's Mutilator
			{ itemID = 35095, price = "Arena" }, --Brutal Gladiator's Shiv
			{ itemID = 35093, price = "Arena" }, --Brutal Gladiator's Shanker
			{ itemID = 35047, price = "Arena" }, --Brutal Gladiator's Longbow
			{ itemID = 35018, price = "Arena" }, --Brutal Gladiator's Heavy Crossbow
			{ itemID = 35075, price = "Arena" }, --Brutal Gladiator's Rifle
			{ itemID = 35108, price = "Arena" }, --Brutal Gladiator's War Edge		
			{ itemID = 35094, price = "Arena" }, --Brutal Gladiator's Shield Wall
		},
	},
	{
		Name = "Caster ".."Weapons",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 34540, price = "Arena" }, --Vengeful Gladiator's Battle Staff
			{ itemID = 300139, price = "Arena" }, --Vengeful Gladiator's Guardian Staff
			{ itemID = 33766, price = "Arena" }, --Vengeful Gladiator's War Staff
			{ itemID = 300135, price = "Arena" }, --Vengeful Gladiator's Battlemace
			{ itemID = 33687, price = "Arena" }, --Vengeful Gladiator's Gavel
			{ itemID = 300138, price = "Arena" }, --Vengeful Gladiator's Guardian Mace
			{ itemID = 33743, price = "Arena" }, --Vengeful Gladiator's Salvation
			{ itemID = 300147, price = "Arena" }, --Vengeful Gladiator's Battleslicer
			{ itemID = 33763, price = "Arena" }, --Vengeful Gladiator's Spellblade
			{ itemID = 300137, price = "Arena" }, --Vengeful Gladiator's Dagger
			{ itemID = 300148, price = "Arena" }, --Vengeful Gladiator's Magebow
			{ itemID = 34066, price = "Arena" }, --Vengeful Gladiator's Piercing Touch
			{ itemID = 33764, price = "Arena" }, --Vengeful Gladiator's Touch of Defeat
			{ itemID = 33661, price = "Arena" }, --Vengeful Gladiator's Barrier
			{ itemID = 33735, price = "Arena" }, --Vengeful Gladiator's Redoubt
			{ itemID = 33681, price = "Arena" }, --Vengeful Gladiator's Endgame
			{ itemID = 34033, price = "Arena" }, --Vengeful Gladiator's Grimoire
			{ itemID = 33736, price = "Arena" }, --Vengeful Gladiator's Reprieve
			{ itemID = 300149, price = "Arena" }, --Vengeful Gladiator's Libram of Fortitude
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 34987, price = "Arena" }, --Brutal Gladiator's Battle Staff
			{ itemID = 414392, price = "Arena" }, --Brutal Gladiator's Guardian Staff
			{ itemID = 35109, price = "Arena" }, --Brutal Gladiator's War Staff
			{ itemID = 414393, price = "Arena" }, --Brutal Gladiator's Battlemace
			{ itemID = 35014, price = "Arena" }, --Brutal Gladiator's Gavel
			{ itemID = 414394, price = "Arena" }, --Brutal Gladiator's Guardian Mace
			{ itemID = 35082, price = "Arena" }, --Brutal Gladiator's Salvation
			{ itemID = 414395, price = "Arena" }, --Brutal Gladiator's Battleslicer
			{ itemID = 35102, price = "Arena" }, --Brutal Gladiator's Spellblade
			{ itemID = 414398, price = "Arena" }, --Brutal Gladiator's Dagger
			{ itemID = 414388, price = "Arena" }, --Brutal Gladiator's Magebow
			{ itemID = 35065, price = "Arena" }, --Brutal Gladiator's Piercing Touch
			{ itemID = 35107, price = "Arena" }, --Brutal Gladiator's Touch of Defeat
			{ itemID = 34986, price = "Arena" }, --Brutal Gladiator's Barrier
			{ itemID = 35073, price = "Arena" }, --Brutal Gladiator's Redoubt
			{ itemID = 35008, price = "Arena" }, --Brutal Gladiator's Endgame
			{ itemID = 35016, price = "Arena" }, --Brutal Gladiator's Grimoire
			{ itemID = 35074, price = "Arena" }, --Brutal Gladiator's Reprieve
			{ itemID = 35039, price = "Arena" }, --Brutal Gladiator's Libram of Fortitude
		},
	},
	{
		Name = "Cloth ".."Offset",
		WebID = {41045, "npc"},
		{
			{ itemID = 35168, price = "Arena" }, --Guardian's Dreadweave Cuffs
			{ itemID = 35153, price = "Arena" }, --Guardian's Dreadweave Belt
			{ itemID = 35138, price = "Arena" }, --Guardian's Dreadweave Stalkers
			{ itemID = 35174, price = "Arena" }, --Guardian's Mooncloth Cuffs
			{ itemID = 35159, price = "Arena" }, --Guardian's Mooncloth Belt
			{ itemID = 35144, price = "Arena" }, --Guardian's Mooncloth Slippers
			{ itemID = 35179, price = "Arena" }, --Guardian's Silk Cuffs
			{ itemID = 35164, price = "Arena" }, --Guardian's Silk Belt
			{ itemID = 35149, price = "Arena" }, --Guardian's Silk Footguards
		},

	},
	{
		Name = "Leather ".."Offset",
		WebID = {41045, "npc"},
		{
			{ itemID = 35167, price = "Arena" }, --Guardian's Dragonhide Bracers
			{ itemID = 35152, price = "Arena" }, --Guardian's Dragonhide Belt
			{ itemID = 35137, price = "Arena" }, --Guardian's Dragonhide Boots
			{ itemID = 35169, price = "Arena" }, --Guardian's Kodohide Bracers
			{ itemID = 35154, price = "Arena" }, --Guardian's Kodohide Belt
			{ itemID = 35139, price = "Arena" }, --Guardian's Kodohide Boots
			{ itemID = 35171, price = "Arena" }, --Guardian's Leather Bracers
			{ itemID = 35156, price = "Arena" }, --Guardian's Leather Belt
			{ itemID = 35141, price = "Arena" }, --Guardian's Leather Boots
			{ itemID = 35180, price = "Arena" }, --Guardian's Wyrmhide Bracers
			{ itemID = 35165, price = "Arena" }, --Guardian's Wyrmhide Belt
			{ itemID = 35150, price = "Arena" }, --Guardian's Wyrmhide Boots
		},
	},
	{
		Name = "Mail ".."Offset",
		WebID = {41045, "npc"},
		{
			{ itemID = 35166, price = "Arena" }, --Guardian's Chain Bracers
			{ itemID = 35151, price = "Arena" }, --Guardian's Chain Girdle
			{ itemID = 35136, price = "Arena" }, --Guardian's Chain Sabatons
			{ itemID = 35172, price = "Arena" }, --Guardian's Linked Bracers
			{ itemID = 35157, price = "Arena" }, --Guardian's Linked Girdle
			{ itemID = 35142, price = "Arena" }, --Guardian's Linked Sabatons
			{ itemID = 35173, price = "Arena" }, --Guardian's Mail Bracers
			{ itemID = 35158, price = "Arena" }, --Guardian's Mail Girdle
			{ itemID = 35143, price = "Arena" }, --Guardian's Mail Sabatons
			{ itemID = 35177, price = "Arena" }, --Guardian's Ringmail Bracers
			{ itemID = 35162, price = "Arena" }, --Guardian's Ringmail Girdle
			{ itemID = 35147, price = "Arena" }, --Guardian's Ringmail Sabatons
		},

	},
	{
		Name = "Plate ".."Offset",
		WebID = {41045, "npc"},
		{
			{ itemID = 35170, price = "Arena" }, --Guardian's Lamellar Bracers
			{ itemID = 35155, price = "Arena" }, --Guardian's Lamellar Belt
			{ itemID = 35140, price = "Arena" }, --Guardian's Lamellar Greaves
			{ itemID = 35175, price = "Arena" }, --Guardian's Ornamented Bracers
			{ itemID = 35160, price = "Arena" }, --Guardian's Ornamented Belt
			{ itemID = 35145, price = "Arena" }, --Guardian's Ornamented Greaves
			{ itemID = 35176, price = "Arena" }, --Guardian's Plate Bracers
			{ itemID = 35161, price = "Arena" }, --Guardian's Plate Belt
			{ itemID = 35146, price = "Arena" }, --Guardian's Plate Greaves
			{ itemID = 35178, price = "Arena" }, --Guardian's Scaled Bracers
			{ itemID = 35163, price = "Arena" }, --Guardian's Scaled Belt
			{ itemID = 35148, price = "Arena" }, --Guardian's Scaled Greaves
		},

	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923477, price = "Arena" }, --Vengeful Gladiator's Chain Helm
			{ itemID = 923479, price = "Arena" }, --Vengeful Gladiator's Chain Spaulders
			{ itemID = 923475, price = "Arena" }, --Vengeful Gladiator's Chain Armor
			{ itemID = 923476, price = "Arena" }, --Vengeful Gladiator's Chain Gauntlets
			{ itemID = 923478, price = "Arena" }, --Vengeful Gladiator's Chain Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 34992, price = "Arena" }, --Brutal Gladiator's Chain Helm
			{ itemID = 34994, price = "Arena" }, --Brutal Gladiator's Chain Spaulders
			{ itemID = 34990, price = "Arena" }, --Brutal Gladiator's Chain Armor
			{ itemID = 34991, price = "Arena" }, --Brutal Gladiator's Chain Gauntlets
			{ itemID = 34993, price = "Arena" }, --Brutal Gladiator's Chain Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923546, price = "Arena" }, --Vengeful Gladiator's Silk Cowl
			{ itemID = 923545, price = "Arena" }, --Vengeful Gladiator's Silk Amice
			{ itemID = 923548, price = "Arena" }, --Vengeful Gladiator's Silk Raiment
			{ itemID = 923547, price = "Arena" }, --Vengeful Gladiator's Silk Handguards
			{ itemID = 923549, price = "Arena" }, --Vengeful Gladiator's Silk Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35097, price = "Arena" }, --Brutal Gladiator's Silk Cowl
			{ itemID = 35096, price = "Arena" }, --Brutal Gladiator's Silk Amice
			{ itemID = 35099, price = "Arena" }, --Brutal Gladiator's Silk Raiment
			{ itemID = 35098, price = "Arena" }, --Brutal Gladiator's Silk Handguards
			{ itemID = 35100, price = "Arena" }, --Brutal Gladiator's Silk Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923506, price = "Arena" }, --Vengeful Gladiator's Leather Helm
			{ itemID = 923508, price = "Arena" }, --Vengeful Gladiator's Leather Spaulders
			{ itemID = 923509, price = "Arena" }, --Vengeful Gladiator's Leather Tunic
			{ itemID = 923505, price = "Arena" }, --Vengeful Gladiator's Leather Gloves
			{ itemID = 923507, price = "Arena" }, --Vengeful Gladiator's Leather Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35033, price = "Arena" }, --Brutal Gladiator's Leather Helm
			{ itemID = 35035, price = "Arena" }, --Brutal Gladiator's Leather Spaulders
			{ itemID = 35036, price = "Arena" }, --Brutal Gladiator's Leather Tunic
			{ itemID = 35032, price = "Arena" }, --Brutal Gladiator's Leather Gloves
			{ itemID = 35034, price = "Arena" }, --Brutal Gladiator's Leather Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923472, price = "Arena" }, --Vengeful Gladiator's Plate Helm
			{ itemID = 923474, price = "Arena" }, --Vengeful Gladiator's Plate Shoulders
			{ itemID = 923470, price = "Arena" }, --Vengeful Gladiator's Plate Chestpiece
			{ itemID = 923471, price = "Arena" }, --Vengeful Gladiator's Plate Gauntlets
			{ itemID = 923473, price = "Arena" }, --Vengeful Gladiator's Plate Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35068, price = "Arena" }, --Brutal Gladiator's Plate Helm
			{ itemID = 35070, price = "Arena" }, --Brutal Gladiator's Plate Shoulders
			{ itemID = 35066, price = "Arena" }, --Brutal Gladiator's Plate Chestpiece
			{ itemID = 35067, price = "Arena" }, --Brutal Gladiator's Plate Gauntlets
			{ itemID = 35069, price = "Arena" }, --Brutal Gladiator's Plate Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. color.WHITE.."Demonology",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923486, price = "Arena" }, --Vengeful Gladiator's Dreadweave Hood
			{ itemID = 923488, price = "Arena" }, --Vengeful Gladiator's Dreadweave Mantle
			{ itemID = 923489, price = "Arena" }, --Vengeful Gladiator's Dreadweave Robe
			{ itemID = 923485, price = "Arena" }, --Vengeful Gladiator's Dreadweave Gloves
			{ itemID = 923487, price = "Arena" }, --Vengeful Gladiator's Dreadweave Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35004, price = "Arena" }, --Brutal Gladiator's Dreadweave Hood
			{ itemID = 35006, price = "Arena" }, --Brutal Gladiator's Dreadweave Mantle
			{ itemID = 35007, price = "Arena" }, --Brutal Gladiator's Dreadweave Robe
			{ itemID = 35003, price = "Arena" }, --Brutal Gladiator's Dreadweave Gloves
			{ itemID = 35005, price = "Arena" }, --Brutal Gladiator's Dreadweave Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. color.WHITE.."Destruction",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 33683, price = "Arena" }, --Vengeful Gladiator's Felweave Cowl
			{ itemID = 33682, price = "Arena" }, --Vengeful Gladiator's Felweave Amice
			{ itemID = 33685, price = "Arena" }, --Vengeful Gladiator's Felweave Raiment
			{ itemID = 33684, price = "Arena" }, --Vengeful Gladiator's Felweave Handguards
			{ itemID = 33686, price = "Arena" }, --Vengeful Gladiator's Felweave Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35010, price = "Arena" }, --Brutal Gladiator's Felweave Cowl
			{ itemID = 35009, price = "Arena" }, --Brutal Gladiator's Felweave Amice
			{ itemID = 35012, price = "Arena" }, --Brutal Gladiator's Felweave Raiment
			{ itemID = 35011, price = "Arena" }, --Brutal Gladiator's Felweave Handguards
			{ itemID = 35013, price = "Arena" }, --Brutal Gladiator's Felweave Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - "..color.WHITE.."Feral",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923481, price = "Arena" }, --Vengeful Gladiator's Dragonhide Helm
			{ itemID = 923483, price = "Arena" }, --Vengeful Gladiator's Dragonhide Spaulders
			{ itemID = 923484, price = "Arena" }, --Vengeful Gladiator's Dragonhide Tunic
			{ itemID = 923480, price = "Arena" }, --Vengeful Gladiator's Dragonhide Gloves
			{ itemID = 923482, price = "Arena" }, --Vengeful Gladiator's Dragonhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 34999, price = "Arena" }, --Brutal Gladiator's Dragonhide Helm
			{ itemID = 35001, price = "Arena" }, --Brutal Gladiator's Dragonhide Spaulders
			{ itemID = 35002, price = "Arena" }, --Brutal Gladiator's Dragonhide Tunic
			{ itemID = 34998, price = "Arena" }, --Brutal Gladiator's Dragonhide Gloves
			{ itemID = 35000, price = "Arena" }, --Brutal Gladiator's Dragonhide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. color.WHITE.."Balance",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923551, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Helm
			{ itemID = 923553, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Spaulders
			{ itemID = 923554, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Tunic
			{ itemID = 923550, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Gloves
			{ itemID = 923552, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35112, price = "Arena" }, --Brutal Gladiator's Wyrmhide Helm
			{ itemID = 35114, price = "Arena" }, --Brutal Gladiator's Wyrmhide Spaulders
			{ itemID = 35115, price = "Arena" }, --Brutal Gladiator's Wyrmhide Tunic
			{ itemID = 35111, price = "Arena" }, --Brutal Gladiator's Wyrmhide Gloves
			{ itemID = 35113, price = "Arena" }, --Brutal Gladiator's Wyrmhide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. color.WHITE.."Restoration",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923496, price = "Arena" }, --Vengeful Gladiator's Kodohide Helm
			{ itemID = 923498, price = "Arena" }, --Vengeful Gladiator's Kodohide Spaulders
			{ itemID = 923499, price = "Arena" }, --Vengeful Gladiator's Kodohide Tunic
			{ itemID = 923495, price = "Arena" }, --Vengeful Gladiator's Kodohide Gloves
			{ itemID = 923497, price = "Arena" }, --Vengeful Gladiator's Kodohide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35023, price = "Arena" }, --Brutal Gladiator's Kodohide Helm
			{ itemID = 35025, price = "Arena" }, --Brutal Gladiator's Kodohide Spaulders
			{ itemID = 35026, price = "Arena" }, --Brutal Gladiator's Kodohide Tunic
			{ itemID = 35022, price = "Arena" }, --Brutal Gladiator's Kodohide Gloves
			{ itemID = 35024, price = "Arena" }, --Brutal Gladiator's Kodohide Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Enhancement",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923512, price = "Arena" }, --Vengeful Gladiator's Linked Helm
			{ itemID = 923514, price = "Arena" }, --Vengeful Gladiator's Linked Spaulders
			{ itemID = 923510, price = "Arena" }, --Vengeful Gladiator's Linked Armor
			{ itemID = 923511, price = "Arena" }, --Vengeful Gladiator's Linked Gauntlets
			{ itemID = 923513, price = "Arena" }, --Vengeful Gladiator's Linked Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35044, price = "Arena" }, --Brutal Gladiator's Linked Helm
			{ itemID = 35046, price = "Arena" }, --Brutal Gladiator's Linked Spaulders
			{ itemID = 35042, price = "Arena" }, --Brutal Gladiator's Linked Armor
			{ itemID = 35043, price = "Arena" }, --Brutal Gladiator's Linked Gauntlets
			{ itemID = 35045, price = "Arena" }, --Brutal Gladiator's Linked Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Elemental",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923517, price = "Arena" }, --Vengeful Gladiator's Mail Helm
			{ itemID = 923519, price = "Arena" }, --Vengeful Gladiator's Mail Spaulders
			{ itemID = 923515, price = "Arena" }, --Vengeful Gladiator's Mail Armor
			{ itemID = 923516, price = "Arena" }, --Vengeful Gladiator's Mail Gauntlets
			{ itemID = 923518, price = "Arena" }, --Vengeful Gladiator's Mail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35050, price = "Arena" }, --Brutal Gladiator's Mail Helm
			{ itemID = 35052, price = "Arena" }, --Brutal Gladiator's Mail Spaulders
			{ itemID = 35048, price = "Arena" }, --Brutal Gladiator's Mail Armor
			{ itemID = 35049, price = "Arena" }, --Brutal Gladiator's Mail Gauntlets
			{ itemID = 35051, price = "Arena" }, --Brutal Gladiator's Mail Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..color.WHITE.."Restoration",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923532, price = "Arena" }, --Vengeful Gladiator's Ringmail Helm
			{ itemID = 923534, price = "Arena" }, --Vengeful Gladiator's Ringmail Spaulders
			{ itemID = 923530, price = "Arena" }, --Vengeful Gladiator's Ringmail Armor
			{ itemID = 923531, price = "Arena" }, --Vengeful Gladiator's Ringmail Gauntlets
			{ itemID = 923533, price = "Arena" }, --Vengeful Gladiator's Ringmail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35079, price = "Arena" }, --Brutal Gladiator's Ringmail Helm
			{ itemID = 35081, price = "Arena" }, --Brutal Gladiator's Ringmail Spaulders
			{ itemID = 35077, price = "Arena" }, --Brutal Gladiator's Ringmail Armor
			{ itemID = 35078, price = "Arena" }, --Brutal Gladiator's Ringmail Gauntlets
			{ itemID = 35080, price = "Arena" }, --Brutal Gladiator's Ringmail Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Protection",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923504, price = "Arena" }, --Vengeful Gladiator's Lamellar Helm
			{ itemID = 923503, price = "Arena" }, --Vengeful Gladiator's Lamellar Shoulders
			{ itemID = 923500, price = "Arena" }, --Vengeful Gladiator's Lamellar Chestpiece
			{ itemID = 923501, price = "Arena" }, --Vengeful Gladiator's Lamellar Gauntlets
			{ itemID = 923502, price = "Arena" }, --Vengeful Gladiator's Lamellar Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35029, price = "Arena" }, --Brutal Gladiator's Lamellar Helm
			{ itemID = 35031, price = "Arena" }, --Brutal Gladiator's Lamellar Shoulders
			{ itemID = 35027, price = "Arena" }, --Brutal Gladiator's Lamellar Chestpiece
			{ itemID = 35028, price = "Arena" }, --Brutal Gladiator's Lamellar Gauntlets
			{ itemID = 35030, price = "Arena" }, --Brutal Gladiator's Lamellar Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Retribution",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923542, price = "Arena" }, --Vengeful Gladiator's Scaled Helm
			{ itemID = 923544, price = "Arena" }, --Vengeful Gladiator's Scaled Shoulders
			{ itemID = 923540, price = "Arena" }, --Vengeful Gladiator's Scaled Chestpiece
			{ itemID = 923541, price = "Arena" }, --Vengeful Gladiator's Scaled Gauntlets
			{ itemID = 923543, price = "Arena" }, --Vengeful Gladiator's Scaled Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35090, price = "Arena" }, --Brutal Gladiator's Scaled Helm
			{ itemID = 35092, price = "Arena" }, --Brutal Gladiator's Scaled Shoulders
			{ itemID = 35088, price = "Arena" }, --Brutal Gladiator's Scaled Chestpiece
			{ itemID = 35089, price = "Arena" }, --Brutal Gladiator's Scaled Gauntlets
			{ itemID = 35091, price = "Arena" }, --Brutal Gladiator's Scaled Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. color.WHITE.."Holy",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923527, price = "Arena" }, --Vengeful Gladiator's Ornamented Headcover
			{ itemID = 923529, price = "Arena" }, --Vengeful Gladiator's Ornamented Spaulders
			{ itemID = 923525, price = "Arena" }, --Vengeful Gladiator's Ornamented Chestguard
			{ itemID = 923526, price = "Arena" }, --Vengeful Gladiator's Ornamented Gloves
			{ itemID = 923528, price = "Arena" }, --Vengeful Gladiator's Ornamented Legplates
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35061, price = "Arena" }, --Brutal Gladiator's Ornamented Headcover
			{ itemID = 35063, price = "Arena" }, --Brutal Gladiator's Ornamented Spaulders
			{ itemID = 35059, price = "Arena" }, --Brutal Gladiator's Ornamented Chestguard
			{ itemID = 35060, price = "Arena" }, --Brutal Gladiator's Ornamented Gloves
			{ itemID = 35062, price = "Arena" }, --Brutal Gladiator's Ornamented Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. color.WHITE.."Shadow",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923536, price = "Arena" }, --Vengeful Gladiator's Satin Hood
			{ itemID = 923538, price = "Arena" }, --Vengeful Gladiator's Satin Mantle
			{ itemID = 923539, price = "Arena" }, --Vengeful Gladiator's Satin Robe
			{ itemID = 923535, price = "Arena" }, --Vengeful Gladiator's Satin Gloves
			{ itemID = 923537, price = "Arena" }, --Vengeful Gladiator's Satin Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35084, price = "Arena" }, --Brutal Gladiator's Satin Hood
			{ itemID = 35086, price = "Arena" }, --Brutal Gladiator's Satin Mantle
			{ itemID = 35087, price = "Arena" }, --Brutal Gladiator's Satin Robe
			{ itemID = 35083, price = "Arena" }, --Brutal Gladiator's Satin Gloves
			{ itemID = 35085, price = "Arena" }, --Brutal Gladiator's Satin Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. color.WHITE.."Holy",
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923521, price = "Arena" }, --Vengeful Gladiator's Mooncloth Hood
			{ itemID = 923523, price = "Arena" }, --Vengeful Gladiator's Mooncloth Mantle
			{ itemID = 923524, price = "Arena" }, --Vengeful Gladiator's Mooncloth Robe
			{ itemID = 923520, price = "Arena" }, --Vengeful Gladiator's Mooncloth Gloves
			{ itemID = 923522, price = "Arena" }, --Vengeful Gladiator's Mooncloth Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Arena Points"},
			{ itemID = 35054, price = "Arena" }, --Brutal Gladiator's Mooncloth Hood
			{ itemID = 35056, price = "Arena" }, --Brutal Gladiator's Mooncloth Mantle
			{ itemID = 35057, price = "Arena" }, --Brutal Gladiator's Mooncloth Robe
			{ itemID = 35053, price = "Arena" }, --Brutal Gladiator's Mooncloth Gloves
			{ itemID = 35055, price = "Arena" }, --Brutal Gladiator's Mooncloth Leggings
		},
	},
}

--------------------------
---Sets & Collections ---
--------------------------

---------------------------
---Dungeon 3 Sets (D3) ---
---------------------------

	AtlasLoot_Data["DS3"] = {
	Module = "AtlasLoot_BurningCrusade",
			Name = "Dungeon 3 Sets",
			Type = "BCDungeon",
		{
			Name = "Hallowed Raiment",
					{
			{ itemID = 28413, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Hallowed Crown
			 { itemID = 27775, desc = {"Shadow Labyrinth", "Grandmaster Vorpil"} }, --Hallowed Pauldrons
			 { itemID = 28230, desc = {"Shadow Labyrinth", "Murmur"} }, --Hallowed Garments
			 { itemID = 27536, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Hallowed Handwraps
			 { itemID = 27875, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Hallowed Trousers
			},
		},
		{
			Name = "Mana-Etched Regalia",
					{
			{ itemID = 28193, desc = {"The Black Morass", "Aeonus"} }, --Mana-Etched Crown
			 { itemID = 27796, desc = {"The Slave Pens", "Quagmirran".."Heroic Mode" } }, --Mana-Etched Spaulders
			 { itemID = 28191, desc = {"Old Hillsbrad Foothills".."Heroic Mode", "Epoch Hunter"} }, --Mana-Etched Vestments
			 { itemID = 27465, desc = {"Hellfire Ramparts".."Heroic Mode", "Omor the Unscarred"} }, --Mana-Etched Gloves
			 { itemID = 27907, desc = {"The Slave Pens", "The Black Stalker".."Heroic Mode" } }, --Mana-Etched Pantaloons
			},
		},
		{
			Name = "Incanter's Regalia",
					{
			{ itemID = 28278, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Incanter's Cowl
			 { itemID = 27738, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Incanter's Pauldrons
			 { itemID = 28229, desc = {"The Botanica", "Warp Splinter"} }, --Incanter's Robe
			 { itemID = 27508, desc = {"The Steamvault", "Hydromancer Thespia"} }, --Incanter's Gloves
			 { itemID = 27838, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Incanter's Trousers
			},
		},
		{
			Name = "Oblivion Raiment",
					{
			{ itemID = 28415, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Hood of Oblivion
			 { itemID = 27778, desc = {"Shadow Labyrinth", "Murmur"} }, --Spaulders of Oblivion
			 { itemID = 28232, desc = {"Shadow Labyrinth", "Murmur"} }, --Robe of Oblivion
			 { itemID = 27537, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Gloves of Oblivion
			 { itemID = 27948, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Trousers of Oblivion
			},
		},
		{
			Name = "Assassination Armor",
					{
			{ itemID = 28414, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Helm of Assassination
			 { itemID = 27776, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Shoulderpads of Assassination
			 { itemID = 28204, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Tunic of Assassination
			 { itemID = 27509, desc = {"The Black Morass", "Aeonus"} }, --Handgrips of Assassination
			 { itemID = 27908, desc = {"Shadow Labyrinth", "Murmur"} }, --Leggings of Assassination
			},
		},
		{
			Name = "Wastewalker Armor",
					{
			{ itemID = 28224, desc = {"Old Hillsbrad Foothills".."Heroic Mode", "Epoch Hunter"} }, --Wastewalker Helm
			 { itemID = 27797, desc = {"Auchenai Crypts".."Heroic Mode", "Avatar"} }, --Wastewalker Shoulderpads
			 { itemID = 28264, desc = {"The Blood Furnace".."Heroic Mode", "Keli'dan the Breaker"} }, --Wastewalker Tunic
			 { itemID = 27531, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Wastewalker Gloves
			 { itemID = 27837, desc = {"Mana-Tombs".."Heroic Mode", "Nexus-Prince Shaffar"} }, --Wastewalker Leggings
			},
		},
		{
			Name = "Moonglade Raiment",
					{
			{ itemID = 28348, desc = {"The Botanica", "Warp Splinter"} }, --Moonglade Cowl
			 { itemID = 27737, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Moonglade Shoulders
			 { itemID = 28202, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Moonglade Robe
			 { itemID = 27468, desc = {"Shadow Labyrinth", "Blackheart the Inciter"} }, --Moonglade Handwraps
			 { itemID = 27873, desc = {"The Black Morass", "Aeonus"} }, --Moonglade Pants
			},
		},
		{
			Name = "Beast Lord Armor",
					{
			{ itemID = 28275, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Beast Lord Helm
			 { itemID = 27801, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Beast Lord Mantle
			 { itemID = 28228, desc = {"The Botanica", "Warp Splinter"} }, --Beast Lord Curiass
			 { itemID = 27474, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Beast Lord Handguards
			 { itemID = 27874, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Beast Lord Leggings
			},
		},
		{
			Name = "Tidefury Raiment",
					{
			{ itemID = 28349, desc = {"The Botanica", "Warp Splinter"} }, --Tidefury Helm
			 { itemID = 27802, desc = {"The Shattered Halls", "Warbringer O'mrogg"} }, --Tidefury Shoulderguards
			 { itemID = 28231, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Tidefury Chestpiece
			 { itemID = 27510, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Tidefury Gauntlets
			 { itemID = 27909, desc = {"Shadow Labyrinth", "Murmur"} }, --Tidefury Kilt
			},
		},
		{
			Name = "Desolation Battlegear",
					{
			{ itemID = 28192, desc = {"The Black Morass", "Aeonus"} }, --Helm of Desolation
			 { itemID = 27713, desc = {"The Slave Pens", "Quagmirran".."Heroic Mode" } }, --Pauldrons of Desolation
			 { itemID = 28401, desc = {"Old Hillsbrad Foothills".."Heroic Mode", "Epoch Hunter"} }, --Hauberk of Desolation
			 { itemID = 27528, desc = {"The Shattered Halls", "Warchief Kargath Bladefist"} }, --Gauntlets of Desolation
			 { itemID = 27936, desc = {"Sethekk Halls", "Talon King Ikiss"} }, --Greaves of Desolation
			},
		},
		{
			Name = "Bold Armor",
					{
			{ itemID = 28350, desc = {"The Botanica", "Warp Splinter"} }, --Warhelm of the Bold
			 { itemID = 27803, desc = {"Shadow Labyrinth", "Murmur"} }, --Shoulderguards of the Bold
			 { itemID = 28205, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Breastplate of the Bold
			 { itemID = 27475, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Gauntlets of the Bold
			 { itemID = 27977, desc = {"The Black Morass", "Aeonus"} }, --Legplates of the Bold
			},
		},
		{
			Name = "Righteous Armor",
					{
			{ itemID = 28285, desc = {"The Mechanar", "Pathaleon the Calculator"} }, --Helm of the Righteous
			 { itemID = 27739, desc = {"The Botanica", "Laj"} }, --Spaulders of the Righteous
			 { itemID = 28203, desc = {"The Steamvault", "Warlord Kalithresh"} }, --Breastplate of the Righteous
			 { itemID = 27535, desc = {"The Shattered Halls", "Warbringer O'mrogg"} }, --Gauntlets of the Righteous
			 { itemID = 27839, desc = {"The Black Morass", "Aeonus"} }, --Legplates of the Righteous
			},
		},
		{
			Name = "Doomplate Battlegear",
					{
			{ itemID = 28225, desc = {"Old Hillsbrad Foothills".."Heroic Mode", "Epoch Hunter"} }, --Doomplate Warhelm
			 { itemID = 27771, desc = {"The Slave Pens", "The Black Stalker".."Heroic Mode" } }, --Doomplate Shouldergards
			 { itemID = 28403, desc = {"The Arcatraz", "Harbinger Skyriss"} }, --Doomplate Chestguard
			 { itemID = 27497, desc = {"The Blood Furnace".."Heroic Mode", "Keli'dan the Breaker"} }, --Doomplate Gauntlets
			 { itemID = 27870, desc = {"Auchenai Crypts".."Heroic Mode", "Exarch Maladaar"} }, --Doomplate Legguards
			},
		},
		{
			Name = "Divine Armor",
					{
			{ itemID = 242595 },
			 { itemID = 241962 },
			 { itemID = 242552 },
			 { itemID = 242509 },
			 { itemID = 241919 },
			},
			},
			{
			Name = "Armor of the Just",
					{
			{ itemID = 242810 },
			 { itemID = 242681 },
			 { itemID = 242767 },
			 { itemID = 242724 },
			 { itemID = 242638 },
			},
			},
			{
			Name = "Sentinel's Armor",
					{
			{ itemID = 244915 },
			 { itemID = 242896 },
			 { itemID = 244872 },
			 { itemID = 244286 },
			 { itemID = 242853 },
			},
			},
			{
			Name = "Raiment of the Tides",
					{
			{ itemID = 245746 },
			 { itemID = 245159 },
			 { itemID = 245601 },
			 { itemID = 245303 },
			 { itemID = 244958 },
			},
			},
			{
			Name = "Verdant's Regalia",
					{
			{ itemID = 247693 },
			 { itemID = 245878 },
			 { itemID = 245962 },
			 { itemID = 245794 },
			 { itemID = 247548 },
			},
	}
}

--------------
---Tier 4 ---
--------------

	AtlasLoot_Data["T4"] = {
	Module = "AtlasLoot_BurningCrusade",
		Name = "Tier 4",
		Type = "BCRaid",
		{
			Name = "Druid"..color.WHITE.." - ".."Feral",
			{
				{ itemID = 29098, desc = {"Karazhan", "Prince Malchezaar"} }, --Stag-Helm of Malorne
				{ itemID = 29100, desc = {"Gruul's Lair", "High King Maulgar"} }, --Mantle of Malorne
				{ itemID = 29096, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Breastplate of Malorne
				{ itemID = 29097, desc = {"Karazhan", "The Curator"} }, --Gauntlets of Malorne
				{ itemID = 29099, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Greaves of Malorne
			},
		},
		{
			Name = "Druid"..color.WHITE.." - ".."Restoration",
			{
				{ itemID = 29086, desc = {"Karazhan", "Prince Malchezaar"} }, --Crown of Malorne
				{ itemID = 29089, desc = {"Gruul's Lair", "High King Maulgar"} }, --Shoulderguards of Malorne
				{ itemID = 29087, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Chestguard of Malorne
				{ itemID = 29090, desc = {"Karazhan", "The Curator"} }, --Handguards of Malorne
				{ itemID = 29088, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Legguards of Malorne
			},
		},
		{
			Name = "Druid"..color.WHITE.." - ".."Balance",
			{
				{ itemID = 29093, desc = {"Karazhan", "Prince Malchezaar"} }, --Antlers of Malorne
				{ itemID = 29095, desc = {"Gruul's Lair", "High King Maulgar"} }, --Pauldrons of Malorne
				{ itemID = 29091, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Chestpiece of Malorne
				{ itemID = 29092, desc = {"Karazhan", "The Curator"} }, --Gloves of Malorne
				{ itemID = 29094, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Britches of Malorne
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
			{
				{ itemID = 29081, desc = {"Karazhan", "Prince Malchezaar"} }, --Demon Stalker Greathelm
				{ itemID = 29084, desc = {"Gruul's Lair", "High King Maulgar"} }, --Demon Stalker Shoulderguards
				{ itemID = 29082, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Demon Stalker Harness
				{ itemID = 29085, desc = {"Karazhan", "The Curator"} }, --Demon Stalker Gauntlets
				{ itemID = 29083, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Demon Stalker Greaves
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
			{
				{ itemID = 29076, desc = {"Karazhan", "Prince Malchezaar"} }, --Collar of the Aldor
				{ itemID = 29079, desc = {"Gruul's Lair", "High King Maulgar"} }, --Pauldrons of the Aldor
				{ itemID = 29077, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Vestments of the Aldor
				{ itemID = 29080, desc = {"Karazhan", "The Curator"} }, --Gloves of the Aldor
				{ itemID = 29078, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Legwraps of the Aldor
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Protection",
			{
				{ itemID = 29068, desc = {"Karazhan", "Prince Malchezaar"} }, --Justicar Faceguard
				{ itemID = 29070, desc = {"Gruul's Lair", "High King Maulgar"} }, --Justicar Shoulderguards
				{ itemID = 29066, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Justicar Chestguard
				{ itemID = 29067, desc = {"Karazhan", "The Curator"} }, --Justicar Handguards
				{ itemID = 29069, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Justicar Legguards
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Retribution",
			{
				{ itemID = 29073, desc = {"Karazhan", "Prince Malchezaar"} }, --Justicar Crown
				{ itemID = 29075, desc = {"Gruul's Lair", "High King Maulgar"} }, --Justicar Shoulderplates
				{ itemID = 29071, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Justicar Breastplate
				{ itemID = 29072, desc = {"Karazhan", "The Curator"} }, --Justicar Gauntlets
				{ itemID = 29074, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Justicar Greaves
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Holy",
			{
				{ itemID = 29061, desc = {"Karazhan", "Prince Malchezaar"} }, --Justicar Diadem
				{ itemID = 29064, desc = {"Gruul's Lair", "High King Maulgar"} }, --Justicar Pauldrons
				{ itemID = 29062, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Justicar Chestpiece
				{ itemID = 29065, desc = {"Karazhan", "The Curator"} }, --Justicar Gloves
				{ itemID = 29063, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Justicar Leggings
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - ".."Holy",
			{
				{ itemID = 29049, desc = {"Karazhan", "Prince Malchezaar"} }, --Light-Collar of the Incarnate
				{ itemID = 29054, desc = {"Gruul's Lair", "High King Maulgar"} }, --Light-Mantle of the Incarnate
				{ itemID = 29050, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Robes of the Incarnate
				{ itemID = 29055, desc = {"Karazhan", "The Curator"} }, --Handwraps of the Incarnate
				{ itemID = 29053, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Trousers of the Incarnate
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - ".."Shadow",
			{
				{ itemID = 29058, desc = {"Karazhan", "Prince Malchezaar"} }, --Soul-Collar of the Incarnate
				{ itemID = 29060, desc = {"Gruul's Lair", "High King Maulgar"} }, --Soul-Mantle of the Incarnate
				{ itemID = 29056, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Shroud of the Incarnate
				{ itemID = 29057, desc = {"Karazhan", "The Curator"} }, --Gloves of the Incarnate
				{ itemID = 29059, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Leggings of the Incarnate
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
			{
				{ itemID = 29044, desc = {"Karazhan", "Prince Malchezaar"} }, --Netherblade Facemask
				{ itemID = 29047, desc = {"Gruul's Lair", "High King Maulgar"} }, --Netherblade Shoulderpads
				{ itemID = 29045, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Netherblade Chestpiece
				{ itemID = 29048, desc = {"Karazhan", "The Curator"} }, --Netherblade Gloves
				{ itemID = 29046, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Netherblade Breeches
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Enhancement",
			{
				{ itemID = 29040, desc = {"Karazhan", "Prince Malchezaar"} }, --Cyclone Helm
				{ itemID = 29043, desc = {"Gruul's Lair", "High King Maulgar"} }, --Cyclone Shoulderplates
				{ itemID = 29038, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Cyclone Breastplate
				{ itemID = 29039, desc = {"Karazhan", "The Curator"} }, --Cyclone Gauntlets
				{ itemID = 29042, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Cyclone War-Kilt
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Restoration",	
			{
				{ itemID = 29028, desc = {"Karazhan", "Prince Malchezaar"} }, --Cyclone Headdress
				{ itemID = 29031, desc = {"Gruul's Lair", "High King Maulgar"} }, --Cyclone Shoulderpads
				{ itemID = 29029, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Cyclone Hauberk
				{ itemID = 29032, desc = {"Karazhan", "The Curator"} }, --Cyclone Gloves
				{ itemID = 29030, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Cyclone Kilt
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Elemental",
			{
				{ itemID = 29035, desc = {"Karazhan", "Prince Malchezaar"} }, --Cyclone Faceguard
				{ itemID = 29037, desc = {"Gruul's Lair", "High King Maulgar"} }, --Cyclone Shoulderguards
				{ itemID = 29033, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Cyclone Chestguard
				{ itemID = 29034, desc = {"Karazhan", "The Curator"} }, --Cyclone Handguards
				{ itemID = 29036, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Cyclone Legguards
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
			{
				{ itemID = 28963, desc = {"Karazhan", "Prince Malchezaar"} }, --Voidheart Crown
				{ itemID = 28967, desc = {"Gruul's Lair", "High King Maulgar"} }, --Voidheart Mantle
				{ itemID = 28964, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Voidheart Robe
				{ itemID = 28968, desc = {"Karazhan", "The Curator"} }, --Voidheart Gloves
				{ itemID = 28966, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Voidheart Leggings
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Protection",
			{
				{ itemID = 29011, desc = {"Karazhan", "Prince Malchezaar"} }, --Warbringer Greathelm
				{ itemID = 29016, desc = {"Gruul's Lair", "High King Maulgar"} }, --Warbringer Shoulderguards
				{ itemID = 29012, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Warbringer Chestguard
				{ itemID = 29017, desc = {"Karazhan", "The Curator"} }, --Warbringer Handguards
				{ itemID = 29015, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Warbringer Legguards
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Protection",
			{
				{ itemID = 14984, desc = {"Karazhan", "Prince Malchezaar"} }, --Warbringer Helmet
				{ itemID = 14988, desc = {"Gruul's Lair", "High King Maulgar"} }, --Warbringer Pauldrons
				{ itemID = 14985, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Warbringer Hauberk
				{ itemID = 14989, desc = {"Karazhan", "The Curator"} }, --Warbringer Gloves
				{ itemID = 14987, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Warbringer Leggings
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Fury",
			{
				{ itemID = 29021, desc = {"Karazhan", "Prince Malchezaar"} }, --Warbringer Battle-Helm
				{ itemID = 29023, desc = {"Gruul's Lair", "High King Maulgar"} }, --Warbringer Shoulderplates
				{ itemID = 29019, desc = {"Magtheridon's Lair", "Magtheridon"} }, --Warbringer Breastplate
				{ itemID = 29020, desc = {"Karazhan", "The Curator"} }, --Warbringer Gauntlets
				{ itemID = 29022, desc = {"Gruul's Lair", "Gruul the Dragonkiller"} }, --Warbringer Greaves
		},
	}
}

--------------
---Tier 5 ---
--------------

AtlasLoot_Data["T5"] = {
	Module = "AtlasLoot_BurningCrusade",
		Name = "Tier 5",
		Type = "BCRaid",
		{
			Name = "Druid"..color.WHITE.." - ".."Feral",
			{
				{ itemID = 30228, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Nordrassil Headdress
				{ itemID = 30230, desc = {"The Eye", "Void Reaver"} }, --Nordrassil Feral-Mantle
				{ itemID = 30222, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Nordrassil Chestplate
				{ itemID = 30223, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Nordrassil Handgrips
				{ itemID = 30229, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Nordrassil Feral-Kilt
			},
		},
		{
			Name = "Druid"..color.WHITE.." - ".."Restoration",
			{
				{ itemID = 30219, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Nordrassil Headguard
				{ itemID = 30221, desc = {"The Eye", "Void Reaver"} }, --Nordrassil Life-Mantle
				{ itemID = 30216, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Nordrassil Chestguard
				{ itemID = 30217, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Nordrassil Gloves
				{ itemID = 30220, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Nordrassil Life-Kilt
			},
		},
		{
			Name = "Druid"..color.WHITE.." - ".."Balance",
			{
				{ itemID = 30233, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Nordrassil Headpiece
				{ itemID = 30235, desc = {"The Eye", "Void Reaver"} }, --Nordrassil Wrath-Mantle
				{ itemID = 30231, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Nordrassil Chestpiece
				{ itemID = 30232, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Nordrassil Gauntlets
				{ itemID = 30234, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Nordrassil Wrath-Kilt
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
			{
				{ itemID = 30141, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Rift Stalker Helm
				{ itemID = 30143, desc = {"The Eye", "Void Reaver"} }, --Rift Stalker Mantle
				{ itemID = 30139, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Rift Stalker Hauberk
				{ itemID = 30140, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Rift Stalker Gauntlets
				{ itemID = 30142, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Rift Stalker Leggings
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
			{
				{ itemID = 30206, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cowl of Tirisfal
				{ itemID = 30210, desc = {"The Eye", "Void Reaver"} }, --Mantle of Tirisfal
				{ itemID = 30196, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Robes of Tirisfal
				{ itemID = 30205, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Gloves of Tirisfal
				{ itemID = 30207, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Leggings of Tirisfal
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Protection",
			{
				{ itemID = 30125, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Crystalforge Faceguard
				{ itemID = 30127, desc = {"The Eye", "Void Reaver"} }, --Crystalforge Shoulderguards
				{ itemID = 30123, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Crystalforge Chestguard
				{ itemID = 30124, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Crystalforge Handguards
				{ itemID = 30126, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Crystalforge Legguards
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Retribution",
			{
				{ itemID = 30131, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Crystalforge War-Helm
				{ itemID = 30133, desc = {"The Eye", "Void Reaver"} }, --Crystalforge Shoulderbraces
				{ itemID = 30129, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Crystalforge Breastplate
				{ itemID = 30130, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Crystalforge Gauntlets
				{ itemID = 30132, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Crystalforge Greaves
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Holy",
			{
				{ itemID = 30136, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Crystalforge Greathelm
				{ itemID = 30138, desc = {"The Eye", "Void Reaver"} }, --Crystalforge Pauldrons
				{ itemID = 30134, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Crystalforge Chestpiece
				{ itemID = 30135, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Crystalforge Gloves
				{ itemID = 30137, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Crystalforge Leggings
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - ".."Holy",
			{
				{ itemID = 30152, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cowl of the Avatar
				{ itemID = 30154, desc = {"The Eye", "Void Reaver"} }, --Mantle of the Avatar
				{ itemID = 30150, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Vestments of the Avatar
				{ itemID = 30151, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Gloves of the Avatar
				{ itemID = 30153, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Breeches of the Avatar
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - ".."Shadow",
			{
				{ itemID = 30161, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Hood of the Avatar
				{ itemID = 30163, desc = {"The Eye", "Void Reaver"} }, --Wings of the Avatar
				{ itemID = 30159, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Shroud of the Avatar
				{ itemID = 30160, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Handguards of the Avatar
				{ itemID = 30162, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Leggings of the Avatar
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
			{
				{ itemID = 30146, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Deathmantle Helm
				{ itemID = 30149, desc = {"The Eye", "Void Reaver"} }, --Deathmantle Shoulderpads
				{ itemID = 30144, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Deathmantle Chestguard
				{ itemID = 30145, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Deathmantle Handguards
				{ itemID = 30148, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Deathmantle Legguards
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Enhancement",
			{
				{ itemID = 30190, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cataclysm Helm
				{ itemID = 30194, desc = {"The Eye", "Void Reaver"} }, --Cataclysm Shoulderplates
				{ itemID = 30185, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Cataclysm Chestplate
				{ itemID = 30189, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Cataclysm Gauntlets
				{ itemID = 30192, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Cataclysm Legplates
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Restoration",
			{
				{ itemID = 30166, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cataclysm Headguard
				{ itemID = 30168, desc = {"The Eye", "Void Reaver"} }, --Cataclysm Shoulderguards
				{ itemID = 30164, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Cataclysm Chestguard
				{ itemID = 30165, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Cataclysm Gloves
				{ itemID = 30167, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Cataclysm Legguards
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Elemental",
			{
				{ itemID = 30171, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Cataclysm Headpiece
				{ itemID = 30173, desc = {"The Eye", "Void Reaver"} }, --Cataclysm Shoulderpads
				{ itemID = 30169, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Cataclysm Chestpiece
				{ itemID = 30170, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Cataclysm Handgrips
				{ itemID = 30172, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Cataclysm Leggings
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
			{
				{ itemID = 30212, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Hood of the Corruptor
				{ itemID = 30215, desc = {"The Eye", "Void Reaver"} }, --Mantle of the Corruptor
				{ itemID = 30214, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Robe of the Corruptor
				{ itemID = 30211, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Gloves of the Corruptor
				{ itemID = 30213, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Leggings of the Corruptor
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Protection",
			{
				{ itemID = 30115, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Destroyer Greathelm
				{ itemID = 30117, desc = {"The Eye", "Void Reaver"} }, --Destroyer Shoulderguards
				{ itemID = 30113, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Destroyer Chestguard
				{ itemID = 30114, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Destroyer Handguards
				{ itemID = 30116, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Destroyer Legguards
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Protection",
			{
				{ itemID = 14992, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Destroyer Helmet
				{ itemID = 14994, desc = {"The Eye", "Void Reaver"} }, --Destroyer Pauldrons
				{ itemID = 14990, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Destroyer Hauberk
				{ itemID = 14991, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Destroyer Gloves
				{ itemID = 14993, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Destroyer Leggings
			},
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Fury",
			{
				{ itemID = 30120, desc = {"Serpentshrine Cavern", "Lady Vashj"} }, --Destroyer Battle-Helm
				{ itemID = 30122, desc = {"The Eye", "Void Reaver"} }, --Destroyer Shoulderblades
				{ itemID = 30118, desc = {"The Eye", "Kael'thas Sunstrider"} }, --Destroyer Breastplate
				{ itemID = 30119, desc = {"Serpentshrine Cavern", "Leotheras the Blind"} }, --Destroyer Gauntlets
				{ itemID = 30121, desc = {"Serpentshrine Cavern", "Fathom-Lord Karathress"} }, --Destroyer Greaves
			},
	}
}

--------------
---Tier 6 ---
--------------

	AtlasLoot_Data["T6"] = {
	Module = "AtlasLoot_BurningCrusade",
			Name = "Tier 6",
			Type = "BCRaid",
		{
			Name = "Druid"..color.WHITE.." - ".."Feral",
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
		},
		{
			Name = "Druid"..color.WHITE.." - ".."Restoration",
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
		},
		{
			Name = "Druid"..color.WHITE.." - ".."Balance",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Protection",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Retribution",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..color.WHITE.." - ".."Holy",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - ".."Holy",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..color.WHITE.." - ".."Shadow",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Enhancement",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Restoration",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..color.WHITE.." - ".."Elemental",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Protection".. " - Block",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Protection".. " - Parry",
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
		},
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..color.WHITE.." - ".."Fury",
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
	}
}


--------------------------------
---The Burning Crusade Sets ---
--------------------------------

AtlasLoot_Data["TBCSets"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Burning Crusade Sets",
	{
		Name = "Latro's Flurry",
		{
			{ itemID = 34703 }, --Latro's Dancing Blade
			{ itemID = 28189 }, --Latro's Shifting Sword
		},
	},
	{
		Name = "The Twin Stars",
		{
			{ itemID = 31338  }, --Charlotte's Ivy
		 	{ itemID = 31339  }, --Lola's Eve
		},
	},
	{
		Name = "The Fists of Fury",
		{
			{ itemID = 32946 }, --Claw of Molten Fury
		 	{ itemID = 32945 }, --Fist of Molten Fury
		},
	},
	{
		Name = "The Twin Blades of Azzinoth",
		{
			{ itemID = 32837 }, --Warglaive of Azzinoth
		 	{ itemID = 32838 }, --Warglaive of Azzinoth
		},
	}
}

--------------------------------
---Badge of Justice Rewards ---
--------------------------------

AtlasLoot_Data["BadgeShatt"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Shattrath City",
	{
		Name = "Cloth",
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
	},
	{
		Name = "Leather",
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
	},
	{
		Name = "Mail",
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
	},
	{
		Name = "Plate",
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
	},
	{
		Name = "Back",
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
	},
	{
		Name = "Totem" .. "s - " .. "Idol" .. "s - " .. "Libram" .. "s",
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
	},
	{
		Name = "Weapons",
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
	},
	{
		Name = "Accessories",
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
	},
	{
		Name = "Fire Resistance Gear",
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
	}
}

AtlasLoot_Data["BadgeSunwell"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Sunwell Isle",
	{
		Name = "Cloth",
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
	},
	{
		Name = "Leather",
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
	},
	{
		Name = "Mail",
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
	},
	{
		Name = "Plate",
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
	},
	{
		Name = "Weapons",
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
	},
	{
		Name = "Accessories",
		{
			{ itemID = 34887 , price = "60 #heroic#" }, --Angelista's Revenge
			{ itemID = 34890 , price = "60 #heroic#" }, --Anveena's Touch
			{ itemID = 34889 , price = "60 #heroic#" }, --Fused Nethergon Band
			{ itemID = 34888 , price = "60 #heroic#" }, --Ring of the Stalwart Protector
		},
	}
}

AtlasLoot_Data["SunmoteSunwell"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Yrma - Sunmote Vendor",
	Type = "BCRaid",
	{
		Name = "Sunmote Vendor",
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
		},
		{
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
	}
}



AtlasLoot_Data["HardModeArena"] = {
	Module = "AtlasLoot_BurningCrusade",
			Name = "Hardmode arena",
		{
			Name = "Hardmode arena",
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
			},
			{
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
	}
}

AtlasLoot_Data["HardModeArena2"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "Hardmode arena2",
	{
		Name = "Hardmode arena2",
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
		},
		{
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
	}
}

-----------------------
---BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsTBC"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "BoE World Epics",
	Type = "BCDungeon",
	{
		Name = "BoE World Epics",
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
		},
		{
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
	}
}

AtlasLoot_Data["WorldRaresTBC"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "BoE World Rares",
	Type = "BCDungeon",
	{
		Name = "Page 1",
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
		},
		{
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
}

------------------------
---World Bosses TBC ---
------------------------

AtlasLoot_Data["WorldBossesTBC"] = {
	Module = "AtlasLoot_BurningCrusade",
	Name = "World Bosses",
	Type = "BCRaid",
	{
		Name = "Doom Lord Kazzak",
		{
			{ itemID = 30735 }, --Ancient Spellcloak of the Highborne
			{ itemID = 30734 }, --Leggings of the Seventh Circle
			{ itemID = 30737 }, --Gold-Leaf Wildboots
			{ itemID = 30739 }, --Scaled Greaves of the Marksman
			{ itemID = 30740 }, --Ripfiend Shoulderplates
			{ itemID = 30741 }, --Topaz-Studded Battlegrips
			{ itemID = 30736  }, --Ring of Flowing Light
			{ itemID = 30738  }, --Ring of Reciprocity
			{ itemID = 30733  }, --Hope Ender
			{ itemID = 30732  }, --Exodar Life-Staff
			{ itemID = 229739 }, --Tome of Untold Secrets
		},
	},
	{
		Name = "Doomwalker",
		{
			{ itemID = 30729 }, --Black-Iron Battlecloak
			{ itemID = 30725 }, --Anger-Spark Gloves
			{ itemID = 30727 }, --Gilded Trousers of Benediction
			{ itemID = 30730  }, --Terrorweave Tunic
			{ itemID = 30728 }, --Fathom-Helm of the Deeps
			{ itemID = 30731 }, --Faceguard of the Endless Watch
			{ itemID = 30726  }, --Archaic Charm of Presence
			{ itemID = 30723 }, --Talon of the Tempest
			{ itemID = 30722 }, --Ethereum Nexus-Reaver
			{ itemID = 30724 }, --Barrel-Blade Longrifle
			{ itemID = 229739 }, --Tome of Untold Secrets
		},
	}
}

------------------------
----Item Sacks TBC ----
------------------------

AtlasLoot_ExtraData[34846] = {
	{itemID = 23437 },
	{itemID = 23438 },
	{itemID = 23439 },
	{itemID = 23441 },
	{itemID = 23436 },
	{itemID = 23440 },
	{itemID = 32230 },
	{itemID = 32249 },
	{itemID = 32231 },
	{itemID = 32229 },
	{itemID = 32228 },
	{itemID = 32227 },
}

AtlasLoot_ExtraData[222637] = {
	{ itemID = 229194 }, --The Krakmon Wand
	{ itemID = 229193 }, --Massacre Cloak
	{ itemID = 229196 }, --Throat Crushers
	{ itemID = 229192 }, --Seal of the Amani'shi Berserker
	{ itemID = 229195 }, --Staff of Blazing Glory
}

AtlasLoot_ExtraData[229739] = {
	Faction = {"The Scryers", "The Aldor"},
	["The Scryers"] = {
		{ itemID = 228910, desc = "Shoulder Enchants" }, --Masters Inscription of the Blade
		{ itemID = 228911, desc = "Shoulder Enchants" }, --Masters Inscription of the Knight
		{ itemID = 228912, desc = "Shoulder Enchants" }, --Masters Inscription of the Oracle
		{ itemID = 228909, desc = "Shoulder Enchants" }, --Masters Inscription of the Orb
		{ itemID = 2228886, desc = "Shoulder Enchants" }, --Masters Inscription of Discipline
		{ itemID = 2228887, desc = "Shoulder Enchants" }, --Masters Inscription of Faith
		{ itemID = 2228888, desc = "Shoulder Enchants" }, --Masters Inscription of Vengeance
		{ itemID = 2228889, desc = "Shoulder Enchants" }, --Masters Inscription of Warding
		{ itemID = 228913, desc = "Shoulder Enchants" }, --Masters Inscription of Guardian
		{ itemID = 228914, desc = "Shoulder Enchants" }, --Masters Inscription of Phalanx
		{ itemID = 2228891, desc = "Shoulder Enchants" }, --Masters Inscription of Protection
		{ itemID = 2228890, desc = "Shoulder Enchants" }, --Masters Inscription of Vigilance
	},
	["The Aldor"] = {
		{ itemID = 2228910, desc = "Shoulder Enchants" }, --Masters Inscription of the Blade
		{ itemID = 2228911, desc = "Shoulder Enchants" }, --Masters Inscription of the Knight
		{ itemID = 2228912, desc = "Shoulder Enchants" }, --Masters Inscription of the Oracle
		{ itemID = 2228909, desc = "Shoulder Enchants" }, --Masters Inscription of the Orb
		{ itemID = 228886, desc = "Shoulder Enchants" }, --Masters Inscription of Discipline
		{ itemID = 228887, desc = "Shoulder Enchants" }, --Masters Inscription of Faith
		{ itemID = 228888, desc = "Shoulder Enchants" }, --Masters Inscription of Vengeance
		{ itemID = 228889, desc = "Shoulder Enchants" }, --Masters Inscription of Warding
		{ itemID = 2228913, desc = "Shoulder Enchants" }, --Masters Inscription of Guardian
		{ itemID = 2228914, desc = "Shoulder Enchants" }, --Masters Inscription of Phalanx
		{ itemID = 228891, desc = "Shoulder Enchants" }, --Masters Inscription of Protection
		{ itemID = 228890, desc = "Shoulder Enchants" }, --Masters Inscription of Vigilance
	}
}