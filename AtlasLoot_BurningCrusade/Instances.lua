local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
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
		{ itemID = 29298, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Champion
		{ itemID = 29299, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Champion
		{ itemID = 29300, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Champion
		{ itemID = 29301, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Champion
		{ itemID = 29294, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Defender
		{ itemID = 29295, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Defender
		{ itemID = 29296, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Defender
		{ itemID = 29297, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Defender
		{ itemID = 15037, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Assassin
		{ itemID = 15038, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Assassin
		{ itemID = 15039, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Assassin
		{ itemID = 15040, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Assassin
		{ itemID = 29302, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Sage
		{ itemID = 29303, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Sage
		{ itemID = 29304, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Sage
		{ itemID = 29305, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Sage
		{ itemID = 29307, rep = "Friendly", maxDifficulty = "Normal" }, --Band of the Eternal Restorer
		{ itemID = 29306, rep = "Honored", maxDifficulty = "Normal" }, --Superior Band of the Eternal Restorer
		{ itemID = 29308, rep = "Revered", maxDifficulty = "Normal" }, --Exquisite Band of the Eternal Restorer
		{ itemID = 29309, rep = "Exalted", maxDifficulty = "Normal" }, --Flawless Band of the Eternal Restorer
}

AtlasLoot:AddItemData({
	["scaleOfSandsRings"] = {scaleOfSandsRings},
	------------
	---Keys ---
	------------
	["BCKeys"] = {
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
				{ itemID = 24490, minDifficulty = "Heroic" }, --The Master's Key
				{ itemID = 32092, minDifficulty = "Heroic" }, --The Eye of Haramad
				{ itemID = 32449, minDifficulty = "Heroic" }, --Essence-Infused Moonstone
			},
	},

	-----------------------------------
	---Auchindoun: Auchenai Crypts ---
	-----------------------------------
	["AuchCrypts"] = {
		{
			{ itemID = 27410, groupID = 1, refLootEntry = 18371 }, --Collar of Command
			{ itemID = 27408, groupID = 1, refLootEntry = 18371 }, --Hope Bearer Helm
			{ itemID = 26055, groupID = 1, refLootEntry = 18371 }, --Oculus of the Hidden Eye
			{ itemID = 27409, groupID = 1, refLootEntry = 18371 }, --Raven-Heart Headdress
			{ itemID = 25964, groupID = 1, refLootEntry = 18371 }, --Shaarde the Lesser
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30587, minDifficulty = "Heroic" }, --Champion's Fire Opal
			{ itemID = 30588, minDifficulty = "Heroic" }, --Potent Fire Opal
			{ itemID = 30586, minDifficulty = "Heroic" }, --Seer's Chrysoprase
			{ itemID = 27866, minDifficulty = "Heroic" }, --Scintillating Headdress of Second Sight
			{ itemID = 27493, minDifficulty = "Heroic" }, --Gloves of the Deadwatcher
			{ itemID = 27865, minDifficulty = "Heroic" }, --Bracers of Shirrak
			{ itemID = 27845, minDifficulty = "Heroic" }, --Magma Plume Boots
			{ itemID = 27847, minDifficulty = "Heroic" }, --Fanblade Pauldrons
			{ itemID = 27846, minDifficulty = "Heroic" }, --Claw of the Watcher
		},
		{
			{ itemID = 27415, groupID = 1, refLootEntry = 18373 }, --Darkguard Face Mask
			{ itemID = 27416, groupID = 1, refLootEntry = 18373 }, --Fetish of the Fallen
			{ itemID = 27412, groupID = 1, refLootEntry = 18373 }, --Ironstaff of Regeneration
			{ itemID = 27414, groupID = 1, refLootEntry = 18373 }, --Mok'Nathal Beast-Mask
			{ itemID = 27413, groupID = 1, refLootEntry = 18373 }, --Ring of the Exarchs
			{ itemID = 27411, groupID = 1, refLootEntry = 18373 }, --Slippers of Serenity
			{ itemID = 29354, minDifficulty = "Heroic" }, --Light-Touched Stole of Altruism
			{ itemID = 29257, minDifficulty = "Heroic" }, --Sash of Arcane Visions
			{ itemID = 29244, minDifficulty = "Heroic" }, --Wave-Song Girdle
			{ itemID = 27867, minDifficulty = "Heroic" }, --Boots of the Unjust
			{ itemID = 27871, minDifficulty = "Heroic" }, --Maladaar's Blessed Chaplet
			{ itemID = 27869, minDifficulty = "Heroic" }, --Soulpriest's Ring of Resolve
			{ itemID = 27523, minDifficulty = "Heroic" }, --Exarch's Diamond Band
			{ itemID = 27872, minDifficulty = "Heroic" }, --The Harvester of Souls
			{ itemID = 2076367, groupID = 1, refLootEntry = 2061754 }, --Blade of the Vigilant Shepherd
			{ itemID = 2070750, groupID = 1, refLootEntry = 2061754 }, --Boots of Illumination
			{ itemID = 2064692, groupID = 1, refLootEntry = 2061754 }, --Chestplate of Spiritual Vigilance
			{ itemID = 2073927, groupID = 1, refLootEntry = 2061754 }, --Cloak of Soul Protection
			{ itemID = 2066560, groupID = 1, refLootEntry = 2061754 }, --Girdle of the Crypt Defender
			{ itemID = 2073046, groupID = 1, refLootEntry = 2061754 }, --Gloves of the Unyielding Exarch
			{ itemID = 2068672, groupID = 1, refLootEntry = 2061754 }, --Legguards of Sacred Duty
			{ itemID = 2063318, groupID = 1, refLootEntry = 2061754 }, --Sanctified Auchenai Shirt
			{ itemID = 2061754, groupID = 1, refLootEntry = 2061754 }, --Shoulderguards of the Auchenai Guardian
			{ itemID = 427870, minDifficulty = "Heroic" }, --Doomplate Legguards
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30587, minDifficulty = "Heroic" }, --Champion's Fire Opal
			{ itemID = 30588, minDifficulty = "Heroic" }, --Potent Fire Opal
			{ itemID = 33836, minDifficulty = "Heroic" }, --The Exarch's Soul Gem
			{ itemID = 30586, minDifficulty = "Heroic" }, --Seer's Chrysoprase
		},
		{
			{ itemID = 27878 }, --Auchenai Death Shroud
			{ itemID = 28268 }, --Natural Mender's Wraps
			{ itemID = 27876 }, --Will of the Fallen Exarch
			{ itemID = 27937 }, --Sky Breaker
			{ itemID = 27877 }, --Draenic Wildstaff
			{ itemID = 27797 }, --Wastewalker Shoulderpads
		},
	},
	------------------------------
	---Auchindoun: Mana-Tombs ---
	------------------------------
	["AuchManaTombs"] = {
		{
			{ itemID = 25941, groupID = 1, refLootEntry = 40110 }, --Boots of the Outlander
			{ itemID = 25943, groupID = 1, refLootEntry = 40110 }, --Creepjacker
			{ itemID = 25942, groupID = 1, refLootEntry = 40110 }, --Faith Bearer's Gauntlets
			{ itemID = 25940, groupID = 1, refLootEntry = 40110 }, --Idol of the Claw
			{ itemID = 28166, groupID = 1, refLootEntry = 40110 }, --Shield of the Void
			{ itemID = 25939, groupID = 1, refLootEntry = 40110 }, --Voidfire Wand			
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30584, minDifficulty = "Heroic" }, --Enscribed Fire Opal
			{ itemID = 30585, minDifficulty = "Heroic" }, --Glistening Fire Opal
			{ itemID = 30583, minDifficulty = "Heroic" }, --Timeless Chrysoprase
			{ itemID = 27816, minDifficulty = "Heroic" }, --Mindrage Pauldrons
			{ itemID = 27818, minDifficulty = "Heroic" }, --Starry Robes of the Crescent
			{ itemID = 27813, minDifficulty = "Heroic" }, --Boots of the Colossus
			{ itemID = 27815, minDifficulty = "Heroic" }, --Totem of the Astral Winds
			{ itemID = 27814, minDifficulty = "Heroic" }, --Twinblade of Mastery
			{ itemID = 27817, minDifficulty = "Heroic" }, --Starbolt Longbow
		},
		{
			{ itemID = 25945, groupID = 1, refLootEntry = 40112 }, --Cloak of Revival
			{ itemID = 25947, groupID = 1, refLootEntry = 40112 }, --Lightning-Rod Pauldrons
			{ itemID = 25946, groupID = 1, refLootEntry = 40112 }, --Nethershade Boots
			{ itemID = 25952, groupID = 1, refLootEntry = 40112 }, --Scimitar of the Nexus-Stalkers
			{ itemID = 25944, groupID = 1, refLootEntry = 40112 }, --Shaarde the Greater
			{ itemID = 25950, groupID = 1, refLootEntry = 40112 }, --Staff of Polarities			
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30584, minDifficulty = "Heroic" }, --Enscribed Fire Opal
			{ itemID = 30585, minDifficulty = "Heroic" }, --Glistening Fire Opal
			{ itemID = 30583, minDifficulty = "Heroic" }, --Timeless Chrysoprase
			{ itemID = 27824, minDifficulty = "Heroic" }, --Robe of the Great Dark Beyond
			{ itemID = 27821, minDifficulty = "Heroic" }, --Extravagant Boots of Malice
			{ itemID = 27825, minDifficulty = "Heroic" }, --Predatory Gloves
			{ itemID = 27826, minDifficulty = "Heroic" }, --Mantle of the Sea Wolf
			{ itemID = 27823, minDifficulty = "Heroic" }, --Shard Encrusted Breastplate
			{ itemID = 27822, minDifficulty = "Heroic" }, --Crystal Band of Valor
		},
		{
			{ itemID = 25957, groupID = 1, refLootEntry = 40115 }, --Ethereal Boots of the Skystrider
			{ itemID = 25953, groupID = 1, refLootEntry = 40115 }, --Ethereal Warp-Bow
			{ itemID = 25962, groupID = 1, refLootEntry = 40115 }, --Longstrider's Loop
			{ itemID = 25955, groupID = 1, refLootEntry = 40115 }, --Mask of the Howling Storm
			{ itemID = 25956, groupID = 1, refLootEntry = 40115 }, --Nexus-Bracers of Vigor
			{ itemID = 25954, groupID = 1, refLootEntry = 40115 }, --Sigil of Shaffar
			{ itemID = 22921 }, --Recipe: Major Frost Protection Potion
			{ itemID = 28490 }, --Shaffar's Wrappings
			{ itemID = 33835, minDifficulty = "Heroic" }, --Shaffar's Wondrous Amulet
			{ itemID = 30584, minDifficulty = "Heroic" }, --Enscribed Fire Opal
			{ itemID = 30585, minDifficulty = "Heroic" }, --Glistening Fire Opal
			{ itemID = 30583, minDifficulty = "Heroic" }, --Timeless Chrysoprase
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 29240, minDifficulty = "Heroic" }, --Bands of Negation
			{ itemID = 30535, minDifficulty = "Heroic" }, --Forestwalker Kilt
			{ itemID = 29352, minDifficulty = "Heroic" }, --Cobalt Band of Tyrigosa
			{ itemID = 32082, minDifficulty = "Heroic" }, --The Fel Barrier
			{ itemID = 27831, minDifficulty = "Heroic" }, --Mantle of the Unforgiven
			{ itemID = 27843, minDifficulty = "Heroic" }, --Glyph-Lined Sash
			{ itemID = 27827, minDifficulty = "Heroic" }, --Lucid Dream Bracers
			{ itemID = 27835, minDifficulty = "Heroic" }, --Stillwater Girdle
			{ itemID = 27844, minDifficulty = "Heroic" }, --Pauldrons of Swift Retribution
			{ itemID = 27798, minDifficulty = "Heroic" }, --Gauntlets of Vindication
			{ itemID = 27837, minDifficulty = "Heroic" }, --Wastewalker Leggings
			{ itemID = 27828, minDifficulty = "Heroic" }, --Warp-Scarab Brooch
			{ itemID = 28400, minDifficulty = "Heroic" }, --Warp-Storm Warblade
			{ itemID = 27829, minDifficulty = "Heroic" }, --Axe of the Nexus-Kings
			{ itemID = 27840, minDifficulty = "Heroic" }, --Scepter of Sha'tar
			{ itemID = 27842, minDifficulty = "Heroic" }, --Grand Scepter of the Nexus-Kings
		},
		{
			{ itemID = 31923, groupID = 2, refLootEntry = 22930 }, --Band of the Crystalline Void
			{ itemID = 31919, groupID = 2, refLootEntry = 22930 }, --Nexus-Prince's Ring of Balance
			{ itemID = 31922, groupID = 2, refLootEntry = 22930 }, --Ring of Conflict Survival
			{ itemID = 31920, groupID = 2, refLootEntry = 22930 }, --Shaffar's Band of Brutality
			{ itemID = 31921, groupID = 2, refLootEntry = 22930 }, --Yor's Collapsing Band
			{ itemID = 31924, groupID = 2, refLootEntry = 22930 }, --Yor's Revenge
			{ itemID = 31570, groupID = 1, refLootEntry = 22930 }, --Mistshroud Tunic
			{ itemID = 31562, groupID = 1, refLootEntry = 22930 }, --Skystalker's Tunic
			{ itemID = 31578, groupID = 1, refLootEntry = 22930 }, --Slatesteel Breastplate
			{ itemID = 31554, groupID = 1, refLootEntry = 22930 }, --Windchanneller's Tunic
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 30584 }, --Enscribed Fire Opal
			{ itemID = 30585 }, --Glistening Fire Opal
			{ itemID = 30583 }, --Timeless Chrysoprase
		},
	},
	---------------------------------
	---Auchindoun: Sethekk Halls ---
	---------------------------------
	["AuchSethekk"] = {
		{
			{ itemID = 27918, groupID = 1, refLootEntry = 40130 }, --Bands of Syth
			{ itemID = 27917, groupID = 1, refLootEntry = 40130 }, --Libram of the Eternal Rest
			{ itemID = 27919, groupID = 1, refLootEntry = 40130 }, --Light-Woven Slippers
			{ itemID = 27914, groupID = 1, refLootEntry = 40130 }, --Moonstrider Boots
			{ itemID = 27916, groupID = 1, refLootEntry = 40130 }, --Sethekk Feather-Darts
			{ itemID = 27915, groupID = 1, refLootEntry = 40130 }, --Sky-Hunter Swift Boots
			{ itemID = 24160 }, --Design: Khorium Inferno Band
			{ itemID = 27633 }, --Terokk's Mask
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30553, minDifficulty = "Heroic" }, --Pristine Fire Opal
			{ itemID = 30554, minDifficulty = "Heroic" }, --Stalwart Fire Opal
			{ itemID = 30552, minDifficulty = "Heroic" }, --Blessed Tanzanite
		},
		{
			{ itemID = 32779, groupID = 1, refLootEntry = 23035 }, --Band of Frigid Elements
			{ itemID = 32769, groupID = 1, refLootEntry = 23035 }, --Belt of the Raven Lord
			{ itemID = 32778, groupID = 1, refLootEntry = 23035 }, --Boots of Righteous Fortitude
			{ itemID = 32781, groupID = 1, refLootEntry = 23035 }, --Talon of Anzu
			{ itemID = 32780, groupID = 1, refLootEntry = 23035 }, --The Boomstick
		 	{ itemID = 29434 }, --Badge of Justice
		 	{ itemID = 30553 }, --Pristine Fire Opal
		 	{ itemID = 30554 }, --Stalwart Fire Opal
		 	{ itemID = 30552 }, --Blessed Tanzanite
			{ itemID = 32768 }, --Reins of the Raven Lord
		},
		{
			{ itemID = 27946, groupID = 2, refLootEntry = 25006 }, --Avian Cloak of Feathers
			{ itemID = 27986, groupID = 2, refLootEntry = 25006 }, --Crow Wing Reaper
			{ itemID = 27985, groupID = 2, refLootEntry = 25006 }, --Deathforge Girdle
			{ itemID = 27936, groupID = 2, refLootEntry = 25006 }, --Greaves of Desolation
			{ itemID = 27875, groupID = 2, refLootEntry = 25006 }, --Hallowed Trousers
			{ itemID = 27838, groupID = 2, refLootEntry = 25006 }, --Incanter's Trousers
			{ itemID = 27925, groupID = 2, refLootEntry = 25006 }, --Ravenclaw Band
			{ itemID = 27981, groupID = 2, refLootEntry = 25006 }, --Sethekk Oracle Cloak
			{ itemID = 27776, groupID = 2, refLootEntry = 25006 }, --Shoulderpads of Assassination
			{ itemID = 27980, groupID = 2, refLootEntry = 25006 }, --Terokk's Nightmace
			{ itemID = 27948, groupID = 2, refLootEntry = 25006 }, --Trousers of Oblivion
			{ itemID = 2076383, groupID = 1, refLootEntry = 2076383 }, --Ikiss's Arcane Talon
			{ itemID = 27632 }, --Terokk's Quill
			{ itemID = 27991 }, --Shadow Labyrinth Key
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
	},
	------------------------------------
	---Auchindoun: Shadow Labyrinth ---
	------------------------------------
	["AuchShadowLab"] = {
		{
			{ itemID = 27888, groupID = 1, refLootEntry = 40140 }, --Dream-Wing Helm
			{ itemID = 27886, groupID = 1, refLootEntry = 40140 }, --Idol of the Emerald Queen
			{ itemID = 27889, groupID = 1, refLootEntry = 40140 }, --Jaedenfire Gloves of Annihilation
			{ itemID = 27884, groupID = 1, refLootEntry = 40140 }, --Ornate Boots of the Sanctified
			{ itemID = 27887, groupID = 1, refLootEntry = 40140 }, --Platinum Shield of the Valorous
			{ itemID = 27885, groupID = 1, refLootEntry = 40140 }, --Soul-Wand of the Aldor
			{ itemID = 2076423, groupID = 1, refLootEntry = 2076423 }, --Fel Ambassador's Blades
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
		},
		{
			{ itemID = 27891, groupID = 1, refLootEntry = 40141 }, --Adamantine Figurine
			{ itemID = 28134, groupID = 1, refLootEntry = 40141 }, --Brooch of Heightened Potential
			{ itemID = 27892, groupID = 1, refLootEntry = 40141 }, --Cloak of the Inciter
			{ itemID = 27468, groupID = 1, refLootEntry = 40141 }, --Moonglade Handwraps
			{ itemID = 27893, groupID = 1, refLootEntry = 40141 }, --Ornate Leggings of the Venerated
			{ itemID = 245794, groupID = 1, refLootEntry = 40141 }, --Verdant's Handwraps
			{ itemID = 27890, groupID = 1, refLootEntry = 40141 }, --Wand of the Netherwing
			{ itemID = 25728 }, --Pattern: Stylin' Purple Hat
			{ itemID = 2076410, groupID = 1, refLootEntry = 2076410 }, --Blackheart's Chaotic Warhammer
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
		},
		{
			{ itemID = 27901, groupID = 1, refLootEntry = 40142 }, --Blackout Truncheon
			{ itemID = 27897, groupID = 1, refLootEntry = 40142 }, --Breastplate of Many Graces
			{ itemID = 27775, groupID = 1, refLootEntry = 40142 }, --Hallowed Pauldrons
			{ itemID = 27900, groupID = 1, refLootEntry = 40142 }, --Jewel of Charismatic Mystique
			{ itemID = 27898, groupID = 1, refLootEntry = 40142 }, --Wrathfire Hand-Cannon
			{ itemID = 30827 }, --Lexicon Demonica
			{ itemID = 2066516, groupID = 1, refLootEntry = 2060617 }, --Cincture of Dark Rituals
			{ itemID = 2070694, groupID = 1, refLootEntry = 2060617 }, --Footwraps of Twisted Shadows
			{ itemID = 2073020, groupID = 1, refLootEntry = 2060617 }, --Gloves of Void Manipulation
			{ itemID = 2060617, groupID = 1, refLootEntry = 2060617 }, --Hood of Shadowed Insights
			{ itemID = 2068607, groupID = 1, refLootEntry = 2060617 }, --Leggings of the Grandmaster
			{ itemID = 2061708, groupID = 1, refLootEntry = 2060617 }, --Mantle of the Shadow Council
			{ itemID = 2064635, groupID = 1, refLootEntry = 2060617 }, --Robe of the Void Pact
			{ itemID = 2076424, groupID = 1, refLootEntry = 2060617 }, --Staff of Empowering Shadows
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
		},
		{
			{ itemID = 27905, groupID = 1, refLootEntry = 40143 }, --Greatsword of Horrid Dreams
			{ itemID = 27912, groupID = 1, refLootEntry = 40143 }, --Harness of the Deep Currents
			{ itemID = 27902, groupID = 1, refLootEntry = 40143 }, --Silent Slippers of Meditation
			{ itemID = 27910, groupID = 1, refLootEntry = 40143 }, --Silvermoon Crest Shield
			{ itemID = 27903, groupID = 1, refLootEntry = 40143 }, --Sonic Spear
			{ itemID = 27913, groupID = 1, refLootEntry = 40143 }, --Whispering Blade of Slaying
			{ itemID = 28230, groupID = 1, refLootEntry = 40146 }, --Hallowed Garments
			{ itemID = 27908, groupID = 1, refLootEntry = 40146 }, --Leggings of Assassination
			{ itemID = 28232, groupID = 1, refLootEntry = 40146 }, --Robe of Oblivion
			{ itemID = 27803, groupID = 1, refLootEntry = 40146 }, --Shoulderguards of the Bold
			{ itemID = 27778, groupID = 1, refLootEntry = 40146 }, --Spaulders of Oblivion
			{ itemID = 27909, groupID = 1, refLootEntry = 40146 }, --Tidefury Kilt
			{ itemID = 245601, groupID = 1, refLootEntry = 40146 }, --Chestpiece of the Tides
			{ itemID = 245303, groupID = 1, refLootEntry = 40146 }, --Kilt of the Tides
			{ itemID = 242896, groupID = 1, refLootEntry = 40146 }, --Shoulderguards of the Sentinel
			{ itemID = 24309 }, --Pattern: Spellstrike Pants
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
			{ itemID = 30532, minDifficulty = "Heroic" }, --Kirin Tor Master's Trousers
			{ itemID = 29357, minDifficulty = "Heroic" }, --Master Thief's Gloves
			{ itemID = 29261, minDifficulty = "Heroic" }, --Girdle of Ferocity
			{ itemID = 29353, minDifficulty = "Heroic" }, --Shockwave Truncheon
			{ itemID = 31722, minDifficulty = "Heroic" }, --Murmur's Essence
			{ itemID = 33840, minDifficulty = "Heroic" }, --Murmur's Whisper
		},
		{
			{ itemID = 23615 }, --Plans: Swiftsteel Gloves
			{ itemID = 22543 }, --Formula: Enchant Boots - Fortitude
			{ itemID = 25731 }, --Pattern: Stylin' Crimson Hat
			{ itemID = 29669 }, --Pattern: Shadow Armor Kit
			{ itemID = 27634 }, --The Saga of Terokk
			{ itemID = 23605 }, --Plans: Felsteel Gloves
			{ itemID = 22544 }, --Formula: Enchant Boots - Dexterity
			{ itemID = 23607 }, --Plans: Felsteel Helm
			{ itemID = 24514 }, --First Key Fragment
		},
	},
	--------------------
	---Black Temple ---
	--------------------
	["BlackTemple"] = {
		{
			{ itemID = 32242, groupID = 1, refLootEntry = 22887 }, --Boots of Oceanic Fury
			{ itemID = 32240, groupID = 1, refLootEntry = 22887 }, --Guise of the Tidal Lurker
			{ itemID = 32241, groupID = 1, refLootEntry = 22887 }, --Helm of Soothing Currents
			{ itemID = 32243, groupID = 1, refLootEntry = 22887 }, --Pearl Inlaid Boots
			{ itemID = 32239, groupID = 1, refLootEntry = 22887 }, --Slippers of the Seacaller
			{ itemID = 32232, groupID = 2, refLootEntry = 22887 }, --Eternium Shell Bracers
			{ itemID = 32234, groupID = 2, refLootEntry = 22887 }, --Fists of Mukoa
			{ itemID = 32377, groupID = 2, refLootEntry = 22887 }, --Mantle of Darkness
			{ itemID = 32245, groupID = 2, refLootEntry = 22887 }, --Tide-stomper's Greaves
			{ itemID = 32238, groupID = 1, refLootEntry = 22887 }, --Ring of Calming Waves
			{ itemID = 32248, groupID = 2, refLootEntry = 22887 }, --Halberd of Desolation
			{ itemID = 32236, groupID = 2, refLootEntry = 22887 }, --Rising Tide
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63451, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 32259, groupID = 1, refLootEntry = 22898 }, --Bands of the Coming Storm
			{ itemID = 32258, groupID = 1, refLootEntry = 22898 }, --Naturalist's Preserving Cinch
			{ itemID = 32256, groupID = 1, refLootEntry = 22898 }, --Waistwrap of Infinity
			{ itemID = 32260, groupID = 2, refLootEntry = 22898 }, --Choker of Endless Nightmares
			{ itemID = 32252, groupID = 2, refLootEntry = 22898 }, --Nether Shadow Tunic
			{ itemID = 32250, groupID = 2, refLootEntry = 22898 }, --Pauldrons of Abyssal Fury
			{ itemID = 32251, groupID = 2, refLootEntry = 22898 }, --Wraps of Precise FlightPathFaction
			{ itemID = 32247, groupID = 1, refLootEntry = 22898 }, --Ring of Captured Storms
			{ itemID = 32261, groupID = 2, refLootEntry = 22898 }, --Band of the Abyssal Lord
			{ itemID = 32255, groupID = 1, refLootEntry = 22898 }, --Felstone Bulwark
			{ itemID = 32237, groupID = 1, refLootEntry = 22898 }, --The Maelstrom's Fury
			{ itemID = 32253, groupID = 2, refLootEntry = 22898 }, --Legionkiller
			{ itemID = 32262, groupID = 2, refLootEntry = 22898 }, --Syphon of the Nathrezim
			{ itemID = 32254, groupID = 2, refLootEntry = 22898 }, --The Brutalizer
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63510, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 32273, groupID = 1, refLootEntry = 22841 }, --Amice of Brilliant Light
			{ itemID = 32276, groupID = 1, refLootEntry = 22841 }, --Flashfire Girdle
			{ itemID = 32270, groupID = 1, refLootEntry = 22841 }, --Focused Mana Bindings
			{ itemID = 32275, groupID = 1, refLootEntry = 22841 }, --Spiritwalker Gauntlets
			{ itemID = 32513, groupID = 1, refLootEntry = 22841 }, --Wristbands of Divine Influence
			{ itemID = 32278, groupID = 2, refLootEntry = 22841 }, --Grips of Silent Justice
			{ itemID = 32268, groupID = 2, refLootEntry = 22841 }, --Myrmidon's Treads
			{ itemID = 32265, groupID = 2, refLootEntry = 22841 }, --Shadow-walker's Cord
			{ itemID = 32264, groupID = 2, refLootEntry = 22841 }, --Shoulders of the Hidden Predator
			{ itemID = 32279, groupID = 2, refLootEntry = 22841 }, --The Seeker's Wristguards
			{ itemID = 32361, groupID = 1, refLootEntry = 22841 }, --Blind-Seers Icon
			{ itemID = 32266, groupID = 2, refLootEntry = 22841 }, --Ring of Deceitful Intent
			{ itemID = 11432 }, --Ashtongue Jewel
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63425, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 32328, groupID = 1, refLootEntry = 22871 }, --Botanist's Gloves of Growth
			{ itemID = 32329, groupID = 1, refLootEntry = 22871 }, --Cowl of Benevolence
			{ itemID = 32512, groupID = 1, refLootEntry = 22871 }, --Girdle of Lordaeron's Fallen
			{ itemID = 32271, groupID = 1, refLootEntry = 22871 }, --Kilt of Immortal Nature
			{ itemID = 32327, groupID = 1, refLootEntry = 22871 }, --Robe of the Shadow Council
			{ itemID = 32280, groupID = 2, refLootEntry = 22871 }, --Gauntlets of Enforcement
			{ itemID = 32324, groupID = 2, refLootEntry = 22871 }, --Insidious Bands
			{ itemID = 32323, groupID = 2, refLootEntry = 22871 }, --Shadowmoon Destroyer's Drape
			{ itemID = 32510, groupID = 2, refLootEntry = 22871 }, --Softstep Boots of Tracking
			{ itemID = 32349, groupID = 1, refLootEntry = 22871 }, --Translucent Spellthread Necklace
			{ itemID = 32507, groupID = 2, refLootEntry = 22871 }, --Gorefiend
			{ itemID = 32325, groupID = 2, refLootEntry = 22871 }, --Rifle of the Stoic Guardian
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63443, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 32339, groupID = 1, refLootEntry = 22948 }, --Belt of Primal Majesty
			{ itemID = 32338, groupID = 1, refLootEntry = 22948 }, --Blood-cursed Shoulderpads
			{ itemID = 32340, groupID = 1, refLootEntry = 22948 }, --Garments of Temperance
			{ itemID = 32337, groupID = 1, refLootEntry = 22948 }, --Shroud of Forgiveness
			{ itemID = 32342, groupID = 2, refLootEntry = 22948 }, --Girdle of Mighty Resolve
			{ itemID = 32341, groupID = 2, refLootEntry = 22948 }, --Leggings of Divine Retribution
			{ itemID = 32334, groupID = 2, refLootEntry = 22948 }, --Vest of Mounting Assault
			{ itemID = 32335, groupID = 2, refLootEntry = 22948 }, --Unstoppable Aggressor's Ring
			{ itemID = 32344, groupID = 1, refLootEntry = 22948 }, --Staff of Immaculate Recovery
			{ itemID = 32343, groupID = 1, refLootEntry = 22948 }, --Wand of Prismatic Focus
			{ itemID = 12571, groupID = 2, refLootEntry = 22948 }, --Bloodboil Breaker
			{ itemID = 32269, groupID = 2, refLootEntry = 22948 }, --Messenger of Fate
			{ itemID = 32348, groupID = 2, refLootEntry = 22948 }, --Soul Cleaver
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63521, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 32354, groupID = 1, refLootEntry = 22856 }, --Crown of Empowered Fate
			{ itemID = 32351, groupID = 1, refLootEntry = 22856 }, --Elunite Empowered Bracers
			{ itemID = 32353, groupID = 1, refLootEntry = 22856 }, --Gloves of Unfailing Faith
			{ itemID = 32352, groupID = 1, refLootEntry = 22856 }, --Naturewarden's Treads
			{ itemID = 32517, groupID = 1, refLootEntry = 22856 }, --The Wavemender's Mantle
			{ itemID = 32346, groupID = 2, refLootEntry = 22856 }, --Boneweave Girdle
			{ itemID = 32345, groupID = 2, refLootEntry = 22856 }, --Dreadboots of the Legion
			{ itemID = 32333, groupID = 2, refLootEntry = 22856 }, --Girdle of Stability
			{ itemID = 32347, groupID = 2, refLootEntry = 22856 }, --Grips of Damnation
			{ itemID = 32350, groupID = 1, refLootEntry = 22856 }, --Touch of Inspiration
			{ itemID = 32362, groupID = 2, refLootEntry = 22856 }, --Pendant of Titans
			{ itemID = 32332, groupID = 2, refLootEntry = 22856 }, --Torch of the Damned
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63940, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 32365, groupID = 2, refLootEntry = 22947 }, --Heartshatter Breastplate
			{ itemID = 32367, groupID = 2, refLootEntry = 22947 }, --Leggings of Devastation
			{ itemID = 32370, groupID = 2, refLootEntry = 22947 }, --Nadina's Pendant of Purity
			{ itemID = 32263, groupID = 2, refLootEntry = 22947 }, --Praetorian's Legguards
			{ itemID = 32366, groupID = 2, refLootEntry = 22947 }, --Shadowmaster's Boots
			{ itemID = 32369, groupID = 2, refLootEntry = 22947 }, --Blade of Savagery
			{ itemID = 31101, sourcePage = {"TSIXSHOULDER","Token"} }, --Pauldrons of the Forgotten Conqueror
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63520, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 32331 }, --Cloak of the Illidari Council
			{ itemID = 32519 }, --Belt of Divine Guidance
			{ itemID = 32518 }, --Veil of Turning Leaves
			{ itemID = 32376 }, --Forest Prowler's Helm
			{ itemID = 32373 }, --Helm of the Illidari Shatterer
			{ itemID = 32326 }, --Twisted Blades of Zarak
			{ itemID = 31101, sourcePage = {"TSIXSHOULDER","Token"} }, --Pauldrons of the Forgotten Conqueror
			{ itemID = 31098, sourcePage = {"TSIXLEGS","Token"} }, --Leggings of the Forgotten Conqueror
			{ itemID = 31097, sourcePage = {"TSIXHEAD","Token"} }, --Helm of the Forgotten Conqueror
			{ itemID = 31092, sourcePage = {"TSIXHAND","Token"} }, --Gloves of the Forgotten Conqueror
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63929, droprate = "1%" }, --Pet Sigil
			{ itemID = 63928, droprate = "1%" }, --Pet Sigil
			{ itemID = 63690, droprate = "1%" }, --Pet Sigil
			{ itemID = 63529, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 32525, groupID = 3, refLootEntry = 22917 }, --Cowl of the Illidari High Lord
			{ itemID = 32500, groupID = 3, refLootEntry = 22917 }, --Crystal Spire of Karabor
			{ itemID = 32496, groupID = 3, refLootEntry = 22917 }, --Memento of Tyrande
			{ itemID = 32363, groupID = 3, refLootEntry = 22917 }, --Naaru-Blessed Life Rod
			{ itemID = 32524, groupID = 3, refLootEntry = 22917 }, --Shroud of the Highborne
			{ itemID = 32483, groupID = 3, refLootEntry = 22917 }, --The Skull of Gul'dan
			{ itemID = 32374, groupID = 3, refLootEntry = 22917 }, --Zhar'doom, Greatstaff of the Devourer
			{ itemID = 32336, groupID = 4, refLootEntry = 22917 }, --Black Bow of the Betrayer
			{ itemID = 32375, groupID = 4, refLootEntry = 22917 }, --Bulwark of Azzinoth
			{ itemID = 32235, groupID = 4, refLootEntry = 22917 }, --Cursed Vision of Sargeras
			{ itemID = 32521, groupID = 4, refLootEntry = 22917 }, --Faceplate of the Impenetrable
			{ itemID = 32505, groupID = 4, refLootEntry = 22917 }, --Madness of the Betrayer
			{ itemID = 32501, groupID = 4, refLootEntry = 22917 }, --Shadowmoon Insignia
			{ itemID = 32471, groupID = 4, refLootEntry = 22917 }, --Shard of Azzinoth
			{ itemID = 32497, groupID = 4, refLootEntry = 22917 }, --Stormrage Signet Ring			
			{ itemID = 31089, sourcePage = {"TSIXCHEST","Token"} }, --Chestguard of the Forgotten Conqueror
			{ itemID = 32837 }, --Warglaive of Azzinoth
			{ itemID = 32838 }, --Warglaive of Azzinoth
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63511, droprate = "1%" }, --Pet Sigil
			{ itemID = 343208 }, --Mount
		},
		{
			{ itemID = 34012 }, --Shroud of the Final Stand
			{ itemID = 32593 }, --Treads of the Den Mother
			{ itemID = 47166 }, --Concubines Attire
			{ itemID = 32608 }, --Pillager's Gauntlets
			{ itemID = 32606 }, --Girdle of the Lightbearer
			{ itemID = 32526 }, --Band of Devastation
			{ itemID = 32528 }, --Blessed Band of Karabor
			{ itemID = 32527 }, --Ring of Ancient Knowledge
			{ itemID = 32330 }, --Totem of Ancestral Guidance
			{ itemID = 32368 }, --Tome of the Lightbringer
			{ itemID = 32257 }, --Idol of the white Stag
			{ itemID = 32943 }, --Swiftsteel Bludgeon
			{ itemID = 34011 }, --Illidari Runeshield
			{ itemID = 15900 }, --Finkle's Vibroblade
			{ itemID = 15951 }, --Reaver Cleaver
			{ itemID = 15952 }, --The Taskmaster
			{ itemID = 32228 }, --Empyrean Sapphire
			{ itemID = 32231 }, --Pyrestone
			{ itemID = 32229 }, --Lionseye
			{ itemID = 32249 }, --Seaspray Emerald
			{ itemID = 32230 }, --Shadowsong Amethyst
			{ itemID = 32227 }, --Crimson Spinel
			{ itemID = 32428 }, --Heart of Darkness
			{ itemID = 32897 }, --Mark of the Illidari
		},
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
		{
			{ itemID = 32738 },
			{ itemID = 32739 },
			{ itemID = 32736 },
			{ itemID = 32737 },
			{ itemID = 32748 }, --Pattern: Bindings of Lightning Reflexes
			{ itemID = 32744 }, --Pattern: Bracers of Renewed Life
			{ itemID = 32750 }, --Pattern: Living Earth Bindings
			{ itemID = 32751 }, --Pattern: Living Earth Shoulders
			{ itemID = 32749 }, --Pattern: Shoulders of Lightning Reflexes
			{ itemID = 32745 }, --Pattern: Shoulderpads of Renewed Life
			{ itemID = 32746 }, --Pattern: Swiftstrike Bracers
			{ itemID = 32747 }, --Pattern: Swiftstrike Shoulders
			{ itemID = 32754 },
			{ itemID = 32755 },
			{ itemID = 32753 },
			{ itemID = 32752 },
		},
	},
	------------------------------------------------
	---Caverns of Time: Old Hillsbrad Foothills ---
	------------------------------------------------
	["CoTOldHillsbrad"] = {
		{
			{ itemID = 27423 }, --Cloak of Impulsiveness
			{ itemID = 27418 }, --Stormreaver Shadow-Kilt
			{ itemID = 27417 }, --Ravenwing Pauldrons
			{ itemID = 27420 }, --Uther's Ceremonial Warboots
			{ itemID = 27436 }, --Iron Band of the Unbreakable
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30589, minDifficulty = "Heroic" }, --Dazzling Chrysoprase
			{ itemID = 30591, minDifficulty = "Heroic" }, --Empowered Fire Opal
			{ itemID = 30590, minDifficulty = "Heroic" }, --Enduring Chrysoprase
			{ itemID = 28212, minDifficulty = "Heroic" }, --Aran's Sorcerous Slacks
			{ itemID = 28214, minDifficulty = "Heroic" }, --Grips of the Lunar Eclipse
			{ itemID = 28215, minDifficulty = "Heroic" }, --Mok'Nathal Mask of Battle
			{ itemID = 28211, minDifficulty = "Heroic" }, --Lieutenant's Signet of Lordaeron
			{ itemID = 28213, minDifficulty = "Heroic" }, --Lordaeron Medical Guide
			{ itemID = 28210, minDifficulty = "Heroic" }, --Bloodskull Destroyer
		},
		{
			{ itemID = 27428 }, --Stormfront Gauntlets
			{ itemID = 27430 }, --Scaled Greaves of Patience
			{ itemID = 27427 }, --Durotan's Battle Harness
			{ itemID = 27424 }, --Amani Venom-Axe
			{ itemID = 27426 }, --Northshire Battlemace
			{ itemID = 22927 }, --Recipe: Ironshield Potion
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30589, minDifficulty = "Heroic" }, --Dazzling Chrysoprase
			{ itemID = 30591, minDifficulty = "Heroic" }, --Empowered Fire Opal
			{ itemID = 30590, minDifficulty = "Heroic" }, --Enduring Chrysoprase
			{ itemID = 28218, minDifficulty = "Heroic" }, --Pontiff's Pantaloons of Prophecy
			{ itemID = 28220, minDifficulty = "Heroic" }, --Moon-Crown Antlers
			{ itemID = 28219, minDifficulty = "Heroic" }, --Emerald-Scale Greaves
			{ itemID = 28221, minDifficulty = "Heroic" }, --Boots of the Watchful Heart
			{ itemID = 28217, minDifficulty = "Heroic" }, --Tarren Mill Vitality Locket
			{ itemID = 28216, minDifficulty = "Heroic" }, --Dathrohan's Ceremonial Hammer
		},
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
			{ itemID = 28223, minDifficulty = "Heroic" }, --Arcanist's Stone
			{ itemID = 28226, minDifficulty = "Heroic" }, --Timeslicer
			{ itemID = 28222, minDifficulty = "Heroic" }, --Reaver of the Infinites	
			{ itemID = 28191, minDifficulty = "Heroic" }, --Mana-Etched Vestments
			{ itemID = 28224, minDifficulty = "Heroic" }, --Wastewalker Helm
			{ itemID = 28401, minDifficulty = "Heroic" }, --Hauberk of Desolation
			{ itemID = 28225, minDifficulty = "Heroic" }, --Doomplate Warhelm
			{ itemID = 33847, minDifficulty = "Heroic" }, --Epoch Hunter's Head
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30589, minDifficulty = "Heroic" }, --Dazzling Chrysoprase
			{ itemID = 30591, minDifficulty = "Heroic" }, --Empowered Fire Opal
			{ itemID = 30590, minDifficulty = "Heroic" }, --Enduring Chrysoprase
			{ itemID = 24173, minDifficulty = "Heroic" }, --Design: Circlet of Arcane Might
		},
		{
			{ itemID = 25729 }, --Pattern: Stylin' Adventure Hat
			{ itemID = 38506 }, --Don Carlos' Famous Hat
			{ itemID = 38329 }, --Don Carlos' Hat
			{ itemID = 38276 }, --Haliscan Brimmed Hat
			{ itemID = 25730 }, --Pattern: Stylin' Jungle Hat
			{ itemID = 25725 },
			{ itemID = 22539 },
		},
	},
	-----------------------------------------
	---Caverns of Time: The Black Morass ---
	-----------------------------------------
	["CoTBlackMorass"] = {
		{
			{ itemID = 27988 }, --Burnoose of Shifting Ages
			{ itemID = 27994 }, --Mantle of Three Terrors
			{ itemID = 27995 }, --Sun-Gilded Shouldercaps
			{ itemID = 27993 }, --Mask of Inner Fire
			{ itemID = 27996 }, --Ring of Spiritual Precision
			{ itemID = 27987 }, --Melmorta's Twilight Longbow
			{ itemID = 29675 }, --Pattern: Arcane Armor Kit
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 30558 }, --Glimmering Fire Opal
			{ itemID = 30556 }, --Glinting Fire Opal
			{ itemID = 30555 }, --Glowing Tanzanite
		},
		{
			{ itemID = 28185 }, --Khadgar's Kilt of Abjuration
			{ itemID = 28186 }, --Laughing Skull Battle-Harness
			{ itemID = 28034 }, --Hourglass of the Unraveller
			{ itemID = 28187 }, --Star-Heart Lamp
			{ itemID = 28184 }, --Millennium Blade
			{ itemID = 28033 }, --Epoch-Mender
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30558, minDifficulty = "Heroic" }, --Glimmering Fire Opal
			{ itemID = 30556, minDifficulty = "Heroic" }, --Glinting Fire Opal
			{ itemID = 30555, minDifficulty = "Heroic" }, --Glowing Tanzanite
		},
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
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30558, minDifficulty = "Heroic" }, --Glimmering Fire Opal
			{ itemID = 30556, minDifficulty = "Heroic" }, --Glinting Fire Opal
			{ itemID = 30555, minDifficulty = "Heroic" }, --Glowing Tanzanite
			{ itemID = 30531, minDifficulty = "Heroic" }, --Breeches of the Occultist
			{ itemID = 29247, minDifficulty = "Heroic" }, --Girdle of the Deathdealer
			{ itemID = 29253, minDifficulty = "Heroic" }, --Girdle of Valorous Deeds
			{ itemID = 29356, minDifficulty = "Heroic" }, --Quantum Blade
			{ itemID = 33858, minDifficulty = "Heroic" }, --Aeonus's Hourglass
		},
	},
	-------------------------------------
	---Caverns of Time: Hyjal Summit ---
	-------------------------------------
	["CoTHyjal"] = {
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
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 61196, droprate = "1%" }, --Pet Sigil
		},
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
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 61287, droprate = "1%" }, --Pet Sigil
		},
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
			{ itemID = 31092, sourcePage = {"TSIXHAND","Token"} },
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
		{
			{ itemID = 30892 }, --Beast-tamer\'s Shoulders"
			{ itemID = 30896 }, --Glory of the Defender"
			{ itemID = 30897 }, --Girdle of Hope"
			{ itemID = 30899 }, --Don Rodrigo\'s Poncho"
			{ itemID = 30901 }, --Boundless Agony"
			{ itemID = 30917 }, --Razorfury Mantle"
			{ itemID = 12308 }, --Infernal Stalker’s Hauberk
			{ itemID = 12309 }, --Plates of Eternal Fury
			{ itemID = 31098, sourcePage = {"TSIXLEGS","Token"} }, --Leggings of the Forgotten Conqueror
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 61289, droprate = "1%" }, --Pet Sigil
		},
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
			{ itemID = 31097, sourcePage = {"TSIXHEAD","Token"} }, --Helm of the Forgotten Conqueror
			{ itemID = 450009, desc = "Quest Requirements", contentsPreview = {{450009},{450010},{34334}}}, --The String of Time
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 61557, droprate = "1%" }, --Pet Sigil
			{ itemID = 1001620 },
		},
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
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
		scaleOfSandsRings,
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
	},
	------------------------------------------
	---Coilfang Reservoir: The Slave Pens ---
	------------------------------------------
	["CFRSlavePens"] = {
		{
			{ itemID = 24359, groupID = 1, refLootEntry = 17941 }, --Princely Reign Leggings
			{ itemID = 24361, groupID = 1, refLootEntry = 17941 }, --Spellfire Longsword
			{ itemID = 24360, groupID = 1, refLootEntry = 17941 }, --Tracker's Belt
			{ itemID = 24357, groupID = 1, refLootEntry = 17941 }, --Vest of Living Lightning
			{ itemID = 24356, groupID = 1, refLootEntry = 17941 }, --Wastewalker Shiv
			{ itemID = 29674 }, --Pattern: Nature Armor Kit
			{ itemID = 2061629, groupID = 1, refLootEntry = 2061629 }, --Betrayer's Guise
			{ itemID = 2066421, groupID = 1, refLootEntry = 2061629 }, --Deceiver's Cord
			{ itemID = 2068507, groupID = 1, refLootEntry = 2061629 }, --Doubter's Leggings
			{ itemID = 2076299, groupID = 1, refLootEntry = 2061629 }, --Faithless Mace
			{ itemID = 2064519, groupID = 1, refLootEntry = 2061629 }, --Traitor's Vest
			{ itemID = 2072940, groupID = 1, refLootEntry = 2061629 }, --Treachery's Grasp
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30604, minDifficulty = "Heroic" }, --Resplendent Fire Opal
			{ itemID = 30605, minDifficulty = "Heroic" }, --Vivid Chrysoprase
			{ itemID = 30603, minDifficulty = "Heroic" }, --Royal Tanzanite
			{ itemID = 27542, minDifficulty = "Heroic" }, --Cord of Belief
			{ itemID = 27545, minDifficulty = "Heroic" }, --Mennu's Scaled Leggings
			{ itemID = 27541, minDifficulty = "Heroic" }, --Archery Belt of the Broken
			{ itemID = 27546, minDifficulty = "Heroic" }, --Traitor's Noose
			{ itemID = 27544, minDifficulty = "Heroic" }, --Totem of Spontaneous Regrowth
			{ itemID = 27543, minDifficulty = "Heroic" }, --Starlight Dagger
		},
		{
			{ itemID = 24379, groupID = 1, refLootEntry = 17991 }, --Bogstrok Scale Cloak
			{ itemID = 24380, groupID = 1, refLootEntry = 17991 }, --Calming Spore Reed
			{ itemID = 24378, groupID = 1, refLootEntry = 17991 }, --Coilfang Hammer of Renewal
			{ itemID = 24381, groupID = 1, refLootEntry = 17991 }, --Coilfang Needler
			{ itemID = 24376, groupID = 1, refLootEntry = 17991 }, --Runed Fungalcap
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30604, minDifficulty = "Heroic" }, --Resplendent Fire Opal
			{ itemID = 30605, minDifficulty = "Heroic" }, --Vivid Chrysoprase
			{ itemID = 30603, minDifficulty = "Heroic" }, --Royal Tanzanite
			{ itemID = 27550, minDifficulty = "Heroic" }, --Ironscale War Cloak
			{ itemID = 27547, minDifficulty = "Heroic" }, --Coldwhisper Cord
			{ itemID = 28124, minDifficulty = "Heroic" }, --Liar's Cord
			{ itemID = 27549, minDifficulty = "Heroic" }, --Wavefury Boots
			{ itemID = 27548, minDifficulty = "Heroic" }, --Girdle of Many Blessings
			{ itemID = 27551, minDifficulty = "Heroic" }, --Skeletal Necklace of Battlerage
		},
		{
			{ itemID = 24364, groupID = 1, refLootEntry = 17942 }, --Azureplate Greaves
			{ itemID = 24365, groupID = 1, refLootEntry = 17942 }, --Deft Handguards
			{ itemID = 24366, groupID = 1, refLootEntry = 17942 }, --Scorpid-Sting Mantle
			{ itemID = 24362, groupID = 1, refLootEntry = 17942 }, --Spore-Soaked Vaneer
			{ itemID = 24363, groupID = 1, refLootEntry = 17942 }, --Unscarred Breastplate
			{ itemID = 27796, minDifficulty = "Heroic" }, --Mana-Etched Spaulders
			{ itemID = 27713, minDifficulty = "Heroic" }, --Pauldrons of Desolation
			{ itemID = 27742, minDifficulty = "Heroic" }, --Mage-Fury Girdle
			{ itemID = 27712, minDifficulty = "Heroic" }, --Shackles of Quagmirran
			{ itemID = 27800, minDifficulty = "Heroic" }, --Earthsoul Britches
			{ itemID = 28337, minDifficulty = "Heroic" }, --Breastplate of Righteous Fury
			{ itemID = 27672, minDifficulty = "Heroic" }, --Girdle of the Immovable
			{ itemID = 27740, minDifficulty = "Heroic" }, --Band of Ursol
			{ itemID = 27683, minDifficulty = "Heroic" }, --Quagmirran's Eye
			{ itemID = 27714, minDifficulty = "Heroic" }, --Swamplight Lantern
			{ itemID = 27673, minDifficulty = "Heroic" }, --Phosphorescent Blade
			{ itemID = 27741, minDifficulty = "Heroic" }, --Bleeding Hollow Warhammer
			{ itemID = 33821, minDifficulty = "Heroic" }, --The Heart of Quagmirran
			{ itemID = 29242, minDifficulty = "Heroic" }, --Boots of Blasphemy
			{ itemID = 30538, minDifficulty = "Heroic" }, --Midnight Legguards
			{ itemID = 32078, minDifficulty = "Heroic" }, --Pauldrons of Wild Magic
			{ itemID = 29349, minDifficulty = "Heroic" }, --Adamantine Chain of the Unbroken
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30604, minDifficulty = "Heroic" }, --Resplendent Fire Opal
			{ itemID = 30605, minDifficulty = "Heroic" }, --Vivid Chrysoprase
			{ itemID = 30603, minDifficulty = "Heroic" }, --Royal Tanzanite
		},
	},
	------------------------------------------
	---Coilfang Reservoir: The Steamvault ---
	------------------------------------------
	["CFRSteamvault"] = {
		{
			{ itemID = 27787, groupID = 1, refLootEntry = 17797 }, --Chestguard of No Remorse
			{ itemID = 27789, groupID = 1, refLootEntry = 17797 }, --Cloak of Whispering Shells
			{ itemID = 27508, groupID = 1, refLootEntry = 17797 }, --Incanter's Gloves
			{ itemID = 27783, groupID = 1, refLootEntry = 17797 }, --Moonrage Girdle
			{ itemID = 27784, groupID = 1, refLootEntry = 17797 }, --Scintillating Coral Band
			{ itemID = 29673 }, --Pattern: Frost Armor Kit
			{ itemID = 30828 }, --Vial of Underworld Loam
			{ itemID = 2076275, groupID = 1, refLootEntry = 2076275 }, --Riptide Staff of the Stormbinder
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30550, minDifficulty = "Heroic" }, --Sundered Chrysoprase
			{ itemID = 30551, minDifficulty = "Heroic" }, --Infused Fire Opal
			{ itemID = 30549, minDifficulty = "Heroic" }, --Shifting Tanzanite
		},
		{
			{ itemID = 27793, groupID = 1, refLootEntry = 17796 }, --Earth Mantle Handwraps
			{ itemID = 27790, groupID = 1, refLootEntry = 17796 }, --Mask of Penance
			{ itemID = 27794, groupID = 1, refLootEntry = 17796 }, --Recoilless Rocket Ripper X-54
			{ itemID = 27791, groupID = 1, refLootEntry = 17796 }, --Serpentcrest Life-Staff
			{ itemID = 27792, groupID = 1, refLootEntry = 17796 }, --Steam-Hinge Chain of Valor		
			{ itemID = 23887 }, --Schematic: Rocket Boots Xtreme
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30550, minDifficulty = "Heroic" }, --Sundered Chrysoprase
			{ itemID = 30551, minDifficulty = "Heroic" }, --Infused Fire Opal
			{ itemID = 30549, minDifficulty = "Heroic" }, --Shifting Tanzanite
		},
		{
			{ itemID = 27874, groupID = 1, refLootEntry = 17798 }, --Beast Lord Leggings
			{ itemID = 27801, groupID = 1, refLootEntry = 17798 }, --Beast Lord Mantle
			{ itemID = 242552, groupID = 1, refLootEntry = 17798 }, --Breastplate of the Divine
			{ itemID = 242767, groupID = 1, refLootEntry = 17798 }, --Breastplate of the Just
			{ itemID = 28203, groupID = 1, refLootEntry = 17798 }, --Breastplate of the Righteous
			{ itemID = 27804, groupID = 1, refLootEntry = 17798 }, --Devilshark Cape
			{ itemID = 27806, groupID = 1, refLootEntry = 17798 }, --Fathomheart Gauntlets
			{ itemID = 27475, groupID = 1, refLootEntry = 17798 }, --Gauntlets of the Bold
			{ itemID = 242853, groupID = 1, refLootEntry = 17798 }, --Gauntlets of the Sentinel
			{ itemID = 244958, groupID = 1, refLootEntry = 17798 }, --Gauntlets of the Tides
			{ itemID = 27738, groupID = 1, refLootEntry = 17798 }, --Incanter's Pauldrons
			{ itemID = 27737, groupID = 1, refLootEntry = 17798 }, --Moonglade Shoulders
			{ itemID = 27805, groupID = 1, refLootEntry = 17798 }, --Ring of the Silver Hand
			{ itemID = 27795, groupID = 1, refLootEntry = 17798 }, --Sash of Serpentra
			{ itemID = 27510, groupID = 1, refLootEntry = 17798 }, --Tidefury Gauntlets
			{ itemID = 245878, groupID = 1, refLootEntry = 17798 }, --Verdant's Shoulders
			{ itemID = 27799, groupID = 1, refLootEntry = 17798 }, --Vermillion Robes of the Dominant
			{ itemID = 24313 }, --Pattern: Battlecast Hood
			{ itemID = 2063341, groupID = 1, refLootEntry = 2061802 }, --Aquamarine Garment
			{ itemID = 2078754, groupID = 1, refLootEntry = 2061802 }, --Coilfang Blade
			{ itemID = 2073099, groupID = 1, refLootEntry = 2061802 }, --Hydrograsp Gauntlets
			{ itemID = 2076276, groupID = 1, refLootEntry = 2061802 }, --Neptulon's Spear
			{ itemID = 2064782, groupID = 1, refLootEntry = 2061802 }, --Steamvault Chestguard
			{ itemID = 2061802, groupID = 1, refLootEntry = 2061802 }, --Tidal Mantle of the Warlord
			{ itemID = 2066632, groupID = 1, refLootEntry = 2061802 }, --Waistguard of the Depths
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30550, minDifficulty = "Heroic" }, --Sundered Chrysoprase
			{ itemID = 30551, minDifficulty = "Heroic" }, --Infused Fire Opal
			{ itemID = 30549, minDifficulty = "Heroic" }, --Shifting Tanzanite
			{ itemID = 30543, minDifficulty = "Heroic" }, --Pontifex Kilt
			{ itemID = 29243, minDifficulty = "Heroic" }, --Wave-Fury Vambraces
			{ itemID = 29463, minDifficulty = "Heroic" }, --Amber Bands of the Aggressor
			{ itemID = 29351, minDifficulty = "Heroic" }, --Wrathtide Longbow
			{ itemID = 31721, minDifficulty = "Heroic" }, --Kalithresh's Trident
			{ itemID = 33827, minDifficulty = "Heroic" }, --The Warlord's Treatise
		},
		{
			{ itemID = 24159 }, --Design: Khorium Band of Frost
			{ itemID = 22533 }, --Formula: Enchant Bracer - Fortitude
			{ itemID = 24367 }, --Orders from Lady Vashj
			{ itemID = 24368 }, --Coilfang Armaments
			{ itemID = 24487 }, --Second Key Fragment
		},
	},
	----------------------------------------
	---Coilfang Reservoir: The Underbog ---
	----------------------------------------
	["CFRUnderbog"] = {
		{
			{ itemID = 24451, groupID = 1, refLootEntry = 17770 }, --Lykul Bloodbands
			{ itemID = 24450, groupID = 1, refLootEntry = 17770 }, --Manaspark Gloves
			{ itemID = 27631, groupID = 1, refLootEntry = 17770 }, --Needle Shrike
			{ itemID = 24452, groupID = 1, refLootEntry = 17770 }, --Starlight Gauntlets
			{ itemID = 24413, groupID = 1, refLootEntry = 17770 }, --Totem of the Thunderhead
			{ itemID = 27746, minDifficulty = "Heroic" }, --Arcanium Signet Bands
			{ itemID = 27745, minDifficulty = "Heroic" }, --Hungarhide Gauntlets
			{ itemID = 27743, minDifficulty = "Heroic" }, --Girdle of Living Flame
			{ itemID = 27748, minDifficulty = "Heroic" }, --Cassock of the Loyal
			{ itemID = 27744, minDifficulty = "Heroic" }, --Idol of Ursoc
			{ itemID = 27747, minDifficulty = "Heroic" }, --Boggspine Knuckles
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30606, minDifficulty = "Heroic" }, --Lambent Chrysoprase
			{ itemID = 30607, minDifficulty = "Heroic" }, --Splendid Fire Opal
			{ itemID = 30608, minDifficulty = "Heroic" }, --Radiant Chrysoprase
		},
		{
			{ itemID = 24459, groupID = 1, refLootEntry = 18105 }, --Cloak of Healing Rays
			{ itemID = 24461, groupID = 1, refLootEntry = 18105 }, --Hatebringer
			{ itemID = 24462, groupID = 1, refLootEntry = 18105 }, --Luminous Pearls of Insight
			{ itemID = 24458, groupID = 1, refLootEntry = 18105 }, --Studded Girdle of Virtue
			{ itemID = 24460, groupID = 1, refLootEntry = 18105 }, --Talisman of Tenacity
			{ itemID = 27760, minDifficulty = "Heroic" }, --Dunewind Sash
			{ itemID = 27759, minDifficulty = "Heroic" }, --Headdress of the Tides
			{ itemID = 27755, minDifficulty = "Heroic" }, --Girdle of Gallantry
			{ itemID = 27758, minDifficulty = "Heroic" }, --Hydra-fang Necklace
			{ itemID = 27761, minDifficulty = "Heroic" }, --Ring of the Shadow Deeps
			{ itemID = 27757, minDifficulty = "Heroic" }, --Greatstaff of the Leviathan
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30606, minDifficulty = "Heroic" }, --Lambent Chrysoprase
			{ itemID = 30607, minDifficulty = "Heroic" }, --Splendid Fire Opal
			{ itemID = 30608, minDifficulty = "Heroic" }, --Radiant Chrysoprase
		},
		{
			{ itemID = 24454, groupID = 1, refLootEntry = 17826 }, --Cloak of Enduring Swiftness
			{ itemID = 24456, groupID = 1, refLootEntry = 17826 }, --Greaves of the Iron Guardian
			{ itemID = 24457, groupID = 1, refLootEntry = 17826 }, --Truth Bearer Shoulderguards
			{ itemID = 24455, groupID = 1, refLootEntry = 17826 }, --Tunic of the Nightwatcher
			{ itemID = 24453, groupID = 1, refLootEntry = 17826 }, --Zangartooth Shortblade
			{ itemID = 27764, minDifficulty = "Heroic" }, --Hands of the Sun
			{ itemID = 27763, minDifficulty = "Heroic" }, --Crown of the Forest Lord
			{ itemID = 27765, minDifficulty = "Heroic" }, --Armwraps of Disdain
			{ itemID = 27766, minDifficulty = "Heroic" }, --Swampstone Necklace
			{ itemID = 27762, minDifficulty = "Heroic" }, --Weathered Band of the Swamplord
			{ itemID = 27767, minDifficulty = "Heroic" }, --Bogreaver
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30606, minDifficulty = "Heroic" }, --Lambent Chrysoprase
			{ itemID = 30607, minDifficulty = "Heroic" }, --Splendid Fire Opal
			{ itemID = 30608, minDifficulty = "Heroic" }, --Radiant Chrysoprase
			{ itemID = 2066521, groupID = 1, refLootEntry = 2061716 }, --Belt of the Broken Marsh
			{ itemID = 2071767, groupID = 1, refLootEntry = 2061716 }, --Bindings of the Lost Draenei
			{ itemID = 2068616, groupID = 1, refLootEntry = 2061716 }, --Bogstalker Leggings
			{ itemID = 2078209, groupID = 1, refLootEntry = 2061716 }, --Bow of the Twisted Underbog
			{ itemID = 2073023, groupID = 1, refLootEntry = 2061716 }, --Clawhandler's Grips
			{ itemID = 2070701, groupID = 1, refLootEntry = 2061716 }, --Fenstrider Boots
			{ itemID = 2076287, groupID = 1, refLootEntry = 2061716 }, --Fist of the Nether Swamp
			{ itemID = 2061716, groupID = 1, refLootEntry = 2061716 }, --Musel'ek's Mire Mantle
			{ itemID = 2063301, groupID = 1, refLootEntry = 2061716 }, --Swamplord's Corrupted Jerkin
		},
		{
			{ itemID = 24463, groupID = 1, refLootEntry = 17882 }, --Pauldrons of Brute Force
			{ itemID = 24481, groupID = 1, refLootEntry = 17882 }, --Robes of the Augurer
			{ itemID = 24465, groupID = 1, refLootEntry = 17882 }, --Shamblehide Chestguard
			{ itemID = 24466, groupID = 1, refLootEntry = 17882 }, --Skulldugger's Leggings
			{ itemID = 24464, groupID = 1, refLootEntry = 17882 }, --The Stalker's Fangs
			{ itemID = 29265 }, --Barkchip Boots
			{ itemID = 30541 }, --Stormsong Kilt
			{ itemID = 32081 }, --Eye of the Stalker
			{ itemID = 29350 }, --The Black Stalk
			{ itemID = 27781 }, --Demonfang Ritual Helm
			{ itemID = 27768 }, --Oracle Belt of Timeless Mystery
			{ itemID = 27938 }, --Savage Mask of the Lynx Lord
			{ itemID = 27773 }, --Barbaric Legstraps
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
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30606, minDifficulty = "Heroic" }, --Lambent Chrysoprase
			{ itemID = 30607, minDifficulty = "Heroic" }, --Splendid Fire Opal
			{ itemID = 30608, minDifficulty = "Heroic" }, --Radiant Chrysoprase
		}
	},
	------------------------------------------------
	---Coilfang Reservoir: Serpentshrine Cavern ---
	------------------------------------------------
	["CFRSerpentshrine"] = {
		{
			{ itemID = 30047, groupID = 1, refLootEntry = 21216 }, --Blackfathom Warbands
			{ itemID = 30050, groupID = 1, refLootEntry = 21216 }, --Boots of the Shifting Nightmare
			{ itemID = 30048, groupID = 1, refLootEntry = 21216 }, --Brighthelm of Justice
			{ itemID = 30056, groupID = 1, refLootEntry = 21216 }, --Robe of Hateful Echoes
			{ itemID = 32516, groupID = 1, refLootEntry = 21216 }, --Wraps of Purification
			{ itemID = 30053, groupID = 2, refLootEntry = 21216 }, --Pauldrons of the Wardancer
			{ itemID = 30054, groupID = 2, refLootEntry = 21216 }, --Ranger-General's Chestguard
			{ itemID = 30055, groupID = 2, refLootEntry = 21216 }, --Shoulderpads of the Stranger
			{ itemID = 600878, minDifficulty = "Heroic" }, --Elemental Lodestone: Hydross the Unstable
			{ itemID = 30052, groupID = 2, refLootEntry = 21216 }, --Ring of Lethality
			{ itemID = 33055, groupID = 2, refLootEntry = 21216 }, --Band of Vile Aggression
			{ itemID = 12149, groupID = 2, refLootEntry = 21216 }, --Ring of Unstable Currents
			{ itemID = 30664, groupID = 2, refLootEntry = 21216 }, --Living Root of the Wildheart
			{ itemID = 30629, groupID = 2, refLootEntry = 21216 }, --Scarab of Displacement
			{ itemID = 30049, groupID = 1, refLootEntry = 21216 }, --Fathomstone
			{ itemID = 30051, groupID = 1, refLootEntry = 21216 }, --Idol of the Crescent Goddess
			{ itemID = 816254, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Cloak - Crushing Wave
			{ itemID = 63338, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 30064, groupID = 1, refLootEntry = 21217 }, --Cord of Screaming Terrors
			{ itemID = 30065, groupID = 1, refLootEntry = 21217 }, --Glowing Breastplate of Truth
			{ itemID = 30062, groupID = 1, refLootEntry = 21217 }, --Grove-Bands of Remulos
			{ itemID = 30066, groupID = 1, refLootEntry = 21217 }, --Tempest-Strider Boots
			{ itemID = 30067, groupID = 1, refLootEntry = 21217 }, --Velvet Boots of the Guardian
			{ itemID = 30060, groupID = 2, refLootEntry = 21217 }, --Boots of Effortless Striking
			{ itemID = 12126, groupID = 2, refLootEntry = 21217 }, --Bracers of Abyssal Might
			{ itemID = 30057, groupID = 2, refLootEntry = 21217 }, --Bracers of Eradication
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 12165, groupID = 2, refLootEntry = 21217 }, --Amulet of Tidal Fury
			{ itemID = 30059, groupID = 2, refLootEntry = 21217 }, --Choker of Animalistic Fury
			{ itemID = 30061, groupID = 2, refLootEntry = 21217 }, --Ancestral Ring of Conquest
			{ itemID = 33054, groupID = 1, refLootEntry = 21217 }, --The Seal of Danzalar
			{ itemID = 30665, groupID = 1, refLootEntry = 21217 }, --Earring of Soulful Meditation
			{ itemID = 30063, groupID = 1, refLootEntry = 21217 }, --Libram of Absolute Truth
			{ itemID = 30058, groupID = 2, refLootEntry = 21217 }, --Mallet of the Tides
		},
		{
			{ itemID = 12128, groupID = 2, refLootEntry = 21215 }, --Boots of Inner Torment
			{ itemID = 30097, groupID = 2, refLootEntry = 21215 }, --Coral-Barbed Shoulderpads
			{ itemID = 12129, groupID = 2, refLootEntry = 21215 }, --Dreadstep Sabatons
			{ itemID = 30095, groupID = 2, refLootEntry = 21215 }, --Fang of the Leviathan
			{ itemID = 30096, groupID = 2, refLootEntry = 21215 }, --Girdle of the Invulnerable
			{ itemID = 30092, groupID = 2, refLootEntry = 21215 }, --Orca-Hide Boots
			{ itemID = 30091, groupID = 2, refLootEntry = 21215 }, --True-Aim Stalker Bands
			{ itemID = 30627, groupID = 2, refLootEntry = 21215 }, --Tsunami Talismanic
			{ itemID = 30240, sourcePage = {"TFIVEHAND","Token"} }, --Gloves of the Vanquished Defender
			{ itemID = 63326, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 12154, groupID = 2, refLootEntry = 21214 }, --Belt of Submerged Might
			{ itemID = 30101, groupID = 2, refLootEntry = 21214 }, --Bloodsea Brigand's Vest
			{ itemID = 30663, groupID = 2, refLootEntry = 21214 }, --Fathom-Brooch of the Tidewalker
			{ itemID = 30099, groupID = 2, refLootEntry = 21214 }, --Frayed Tether of the Drowned
			{ itemID = 12125, groupID = 2, refLootEntry = 21214 }, --Maul of the Bloodied Depths
			{ itemID = 30626, groupID = 2, refLootEntry = 21214 }, --Sextant of Unstable Currents
			{ itemID = 30100, groupID = 2, refLootEntry = 21214 }, --Soul-Strider Boots
			{ itemID = 30090, groupID = 2, refLootEntry = 21214 }, --World Breaker
			{ itemID = 30246, sourcePage = {"TFIVELEGS","Token"} }, --Leggings of the Vanquished Defender
			{ itemID = 63325, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 33058, groupID = 1, refLootEntry = 21213 }, --Band of the Vigilant
			{ itemID = 30075, groupID = 1, refLootEntry = 21213 }, --Gnarled Chestpiece of the Ancients
			{ itemID = 30079, groupID = 1, refLootEntry = 21213 }, --Illidari Shoulderpads
			{ itemID = 30080, groupID = 1, refLootEntry = 21213 }, --Luminescent Rod of the Naaru
			{ itemID = 30084, groupID = 1, refLootEntry = 21213 }, --Pauldrons of the Argent Sentinel
			{ itemID = 30008, groupID = 1, refLootEntry = 21213 }, --Pendant of the Lost Ages
			{ itemID = 30720, groupID = 1, refLootEntry = 21213 }, --Serpent-Coil Braid
			{ itemID = 30068, groupID = 2, refLootEntry = 21213 }, --Girdle of the Tidal Call
			{ itemID = 30085, groupID = 2, refLootEntry = 21213 }, --Mantle of the Tireless Tracker
			{ itemID = 12193, groupID = 2, refLootEntry = 21213 }, --Maul of Glacial Waves
			{ itemID = 30098, groupID = 2, refLootEntry = 21213 }, --Razor-Scale Battlecloak
			{ itemID = 30083, groupID = 2, refLootEntry = 21213 }, --Ring of Sundered Souls
			{ itemID = 30082, groupID = 2, refLootEntry = 21213 }, --Talon of Azshara
			{ itemID = 30081, groupID = 2, refLootEntry = 21213 }, --Warboots of Obliteration
		},
		{
			{ itemID = 30110, groupID = 3, refLootEntry = 21212 }, --Coral Band of the Revived
			{ itemID = 30112, groupID = 3, refLootEntry = 21212 }, --Glorious Gauntlets of Crestfall
			{ itemID = 30621, groupID = 3, refLootEntry = 21212 }, --Prism of Inner Calm
			{ itemID = 30109, groupID = 3, refLootEntry = 21212 }, --Ring of Endless Coils
			{ itemID = 30111, groupID = 3, refLootEntry = 21212 }, --Runetotem's Mantle
			{ itemID = 30107, groupID = 3, refLootEntry = 21212 }, --Vestments of the Sea-Witch
			{ itemID = 30106, groupID = 4, refLootEntry = 21212 }, --Belt of One-Hundred Deaths
			{ itemID = 30104, groupID = 4, refLootEntry = 21212 }, --Cobra-Lash Boots
			{ itemID = 30102, groupID = 4, refLootEntry = 21212 }, --Krakken-Heart Breastplate
			{ itemID = 12148, groupID = 4, refLootEntry = 21212 }, --Ring of Tidal Precision
			{ itemID = 30108, groupID = 3, refLootEntry = 21212 }, --Lightfathom Scepter
			{ itemID = 12194, groupID = 3, refLootEntry = 21212 }, --Tideforged Maul
			{ itemID = 30103, groupID = 4, refLootEntry = 21212 }, --Fang of Vashj
			{ itemID = 30105, groupID = 4, refLootEntry = 21212 }, --Serpent Spine Longbow
			{ itemID = 12151, groupID = 4, refLootEntry = 21212 }, --Tidebound Bows
			{ itemID = 30243, sourcePage = {"TFIVEHEAD","Token"} }, --Helm of the Vanquished Defender
			{ itemID = 29906 }, --Vashj's Vial Remnant
			{ itemID = 450000 }, --Intact Vial of Lady Vashj
			{ itemID = 63320, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 30027 }, --Boots of Courage Unending
			{ itemID = 30022 }, --Pendant of the Perilous
			{ itemID = 30620 }, --Spyglass of the Hidden Fleet
			{ itemID = 30023 }, --Totem of the Maelstrom
			{ itemID = 30021 }, --Wildfury Greatstaff
			{ itemID = 30025 }, --Serpentshrine Shuriken
			{ itemID = 44831 }, --Mmrgrg glm Nuubs
			{ itemID = 30324 }, --Plans: Red Havoc Boots
			{ itemID = 30322 }, --Plans: Red Belt of Battle
			{ itemID = 30323 }, --Plans: Boots of the Protector
			{ itemID = 30321 }, --Plans: Belt of the Guardian
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
			{ itemID = 30183 }, --Nether Vortex
			{ itemID = 32897 }, --Mark of the Illidari
		},
	},
	--------------------
	---Gruul's Lair ---
	--------------------
	["GruulsLair"] = {
		{
			{ itemID = 12088, groupID = 3, refLootEntry = 19044 }, --Spinepiercer
			{ itemID = 28799, groupID = 2, refLootEntry = 18831 }, --Belt of Divine Inspiration
			{ itemID = 28795, groupID = 2, refLootEntry = 18831 }, --Bladespire Warbands
			{ itemID = 12116, groupID = 2, refLootEntry = 18831 }, --Blindeye's Insightful Ward
			{ itemID = 11680, groupID = 2, refLootEntry = 18831 }, --Boots of Converging Paths
			{ itemID = 28797, groupID = 2, refLootEntry = 18831 }, --Brute Cloak of the Ogre-Magi
			{ itemID = 12086, groupID = 2, refLootEntry = 18831 }, --Choker of Primal Wrath
			{ itemID = 12124, groupID = 2, refLootEntry = 18831 }, --Gar Maul
			{ itemID = 28800, groupID = 2, refLootEntry = 18831 }, --Hammer of the Naaru
			{ itemID = 28796, groupID = 2, refLootEntry = 18831 }, --Malefic Mask of the Shadows
			{ itemID = 28801, groupID = 2, refLootEntry = 18831 }, --Maulgar's Warhelm
			{ itemID = 12090, groupID = 2, refLootEntry = 18831 }, --Spellbreaker’s Edge
			{ itemID = 29764, sourcePage = {"TFOURSHOULDER","Token"} }, --Pauldrons of the Fallen Defender
			{ itemID = 816252, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Undaunted Might
			{ itemID = 62311, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 11639, groupID = 2, refLootEntry = 19044 }, --Cloak of Brutal Winds
			{ itemID = 28804, groupID = 2, refLootEntry = 19044 }, --Collar of Cho'gall
			{ itemID = 28803, groupID = 2, refLootEntry = 19044 }, --Cowl of Nature's Breath
			{ itemID = 28824, groupID = 2, refLootEntry = 19044 }, --Gauntlets of Martial Perfection
			{ itemID = 28827, groupID = 2, refLootEntry = 19044 }, --Gauntlets of the Dragonslayer
			{ itemID = 28828, groupID = 2, refLootEntry = 19044 }, --Gronn-Stitched Girdle
			{ itemID = 28822, groupID = 2, refLootEntry = 19044 }, --Teeth of Gruul
			{ itemID = 28810, groupID = 2, refLootEntry = 19044 }, --Windshear Boots
			{ itemID = 28830, groupID = 3, refLootEntry = 19044 }, --Dragonspine Trophy
			{ itemID = 28823, groupID = 3, refLootEntry = 19044 }, --Eye of Gruul
			{ itemID = 11688, groupID = 3, refLootEntry = 19044 }, --Signet of Elemental Savagery
			{ itemID = 29767, sourcePage = {"TFOURLEGS","Token"} }, --Leggings of the Fallen Defender
			{ itemID = 28802, groupID = 3, refLootEntry = 19044 }, --Bloodmaw Magus-Blade
			{ itemID = 28794, groupID = 3, refLootEntry = 19044 }, --Axe of the Gronn Lords
			{ itemID = 28825, groupID = 3, refLootEntry = 19044 }, --Aldori Legacy Defender
			{ itemID = 28826, groupID = 3, refLootEntry = 19044 }, --Shuriken of Negation
			{ itemID = 12088, groupID = 3, refLootEntry = 19044 }, --Spinepiercer
		},
	},
	-------------------------------------------
	---Hellfire Citadel: Hellfire Ramparts ---
	-------------------------------------------
	["HCRamparts"] = {
		{
			{ itemID = 24023, groupID = 1, refLootEntry = 17306 }, --Bracers of Finesse
			{ itemID = 24021, groupID = 1, refLootEntry = 17306 }, --Light-Touched Breastplate
			{ itemID = 24024, groupID = 1, refLootEntry = 17306 }, --Pauldrons of Arcane Rage
			{ itemID = 24022, groupID = 1, refLootEntry = 17306 }, --Scale Leggings of the Skirmisher
			{ itemID = 24020, groupID = 1, refLootEntry = 17306 }, --Shadowrend Longblade
			{ itemID = 27448, minDifficulty = "Heroic" }, --Cloak of the Everliving
			{ itemID = 27451, minDifficulty = "Heroic" }, --Boots of the Darkwalker
			{ itemID = 27450, minDifficulty = "Heroic" }, --Wild Stalker Boots
			{ itemID = 27447, minDifficulty = "Heroic" }, --Bracers of Just Rewards
			{ itemID = 27449, minDifficulty = "Heroic" }, --Blood Knight Defender
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30593, minDifficulty = "Heroic" }, --Iridescent Fire Opal
			{ itemID = 30594, minDifficulty = "Heroic" }, --Effulgent Chrysoprase
			{ itemID = 30592, minDifficulty = "Heroic" }, --Steady Chrysoprase
			{ itemID = 60946, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 24090, groupID = 1, refLootEntry = 17308 }, --Bloodstained Ravager Gauntlets
			{ itemID = 24069, groupID = 1, refLootEntry = 17308 }, --Crystalfire Staff
			{ itemID = 24073, groupID = 1, refLootEntry = 17308 }, --Garrote-String Necklace
			{ itemID = 24094, groupID = 1, refLootEntry = 17308 }, --Heart Fire Warhammer
			{ itemID = 24096, groupID = 1, refLootEntry = 17308 }, --Heartblood Prayer Beads
			{ itemID = 24091, groupID = 1, refLootEntry = 17308 }, --Tenacious Defenders
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
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30593, minDifficulty = "Heroic" }, --Iridescent Fire Opal
			{ itemID = 30594, minDifficulty = "Heroic" }, --Effulgent Chrysoprase
			{ itemID = 30592, minDifficulty = "Heroic" }, --Steady Chrysoprase
			{ itemID = 60947, droprate = "1%" }, --Pet Sigil
		},
		{
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
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 30593 }, --Iridescent Fire Opal
			{ itemID = 30594 }, --Effulgent Chrysoprase
			{ itemID = 30592 }, --Steady Chrysoprase
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
			{ itemID = 61025, droprate = "1%" }, --Pet Sigil
			{ itemID = 23892 }, --Ominous Letter
			{ itemID = 23901 }, --Nazan's Head
		},
	},
	-------------------------------------------
	---Hellfire Citadel: The Blood Furnace ---
	-------------------------------------------
	["HCFurnace"] = {
		{
			{ itemID = 24384, groupID = 1, refLootEntry = 17381 }, --Diamond-Core Sledgemace
			{ itemID = 24388, groupID = 1, refLootEntry = 17381 }, --Girdle of the Gale Storm
			{ itemID = 24387, groupID = 1, refLootEntry = 17381 }, --Ironblade Gauntlets
			{ itemID = 24386, groupID = 1, refLootEntry = 17381 }, --Libram of Saints Departed
			{ itemID = 24385, groupID = 1, refLootEntry = 17381 }, --Pendant of Battle-Lust
			{ itemID = 27485, minDifficulty = "Heroic" }, --Embroidered Cape of Mysteries
			{ itemID = 27488, minDifficulty = "Heroic" }, --Mage-Collar of the Firestorm
			{ itemID = 27483, minDifficulty = "Heroic" }, --Moon-Touched Bands
			{ itemID = 27487, minDifficulty = "Heroic" }, --Bloodlord Legplates
			{ itemID = 27484, minDifficulty = "Heroic" }, --Libram of Avengement
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30601, minDifficulty = "Heroic" }, --Beaming Fire Opal
			{ itemID = 30600, minDifficulty = "Heroic" }, --Fluorescent Tanzanite
			{ itemID = 30602, minDifficulty = "Heroic" }, --Jagged Chrysoprase	
		},
		{
			{ itemID = 24392, groupID = 1, refLootEntry = 17380 }, --Arcing Bracers
			{ itemID = 24390, groupID = 1, refLootEntry = 17380 }, --Auslese's Light Channeler
			{ itemID = 24393, groupID = 1, refLootEntry = 17380 }, --Bloody Surgeon's Mitts
			{ itemID = 24391, groupID = 1, refLootEntry = 17380 }, --Kilt of the Night Strider
			{ itemID = 24389, groupID = 1, refLootEntry = 17380 }, --Legion Blunderbuss
			{ itemID = 27848, minDifficulty = "Heroic" }, --Embroidered Spellpyre Boots
			{ itemID = 27492, minDifficulty = "Heroic" }, --Moonchild Leggings
			{ itemID = 27489, minDifficulty = "Heroic" }, --Virtue Bearer's Vambraces
			{ itemID = 27491, minDifficulty = "Heroic" }, --Signet of Repose
			{ itemID = 27490, minDifficulty = "Heroic" }, --Firebrand Battleaxe
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30601, minDifficulty = "Heroic" }, --Beaming Fire Opal
			{ itemID = 30600, minDifficulty = "Heroic" }, --Fluorescent Tanzanite
			{ itemID = 30602, minDifficulty = "Heroic" }, --Jagged Chrysoprase
		},
		{
			{ itemID = 24398, groupID = 1, refLootEntry = 17377 }, --Mantle of the Dusk-Dweller
			{ itemID = 24395, groupID = 1, refLootEntry = 17377 }, --Mindfire Waistband
			{ itemID = 24397, groupID = 1, refLootEntry = 17377 }, --Raiments of Divine Authority
			{ itemID = 24396, groupID = 1, refLootEntry = 17377 }, --Vest of Vengeance
			{ itemID = 24394, groupID = 1, refLootEntry = 17377 }, --Warsong Howling Axe
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
			{ itemID = 2066390, groupID = 1, refLootEntry = 2061613 }, --Belt of Infernal Dominance
			{ itemID = 2070603, groupID = 1, refLootEntry = 2061613 }, --Boots of Chaotic Energy
			{ itemID = 2072920, groupID = 1, refLootEntry = 2061613 }, --Gloves of the Breaker
			{ itemID = 2068474, groupID = 1, refLootEntry = 2061613 }, --Leggings of Demonic Influence
			{ itemID = 2061613, groupID = 1, refLootEntry = 2061613 }, --Mantle of Fel Ruin
			{ itemID = 2064496, groupID = 1, refLootEntry = 2061613 }, --Robes of the Dark Council
			{ itemID = 2076235, groupID = 1, refLootEntry = 2061613 }, --Staff of Fel Manipulation
			{ itemID = 2063253, groupID = 1, refLootEntry = 2061613 }, --Vestments of Shadow Power
			{ itemID = 27512, minDifficulty = "Heroic" }, --The Willbreaker
			{ itemID = 27507, minDifficulty = "Heroic" }, --Adamantine Repeater
			{ itemID = 32080, minDifficulty = "Heroic" }, --Mantle of Shadowy Embrace
			{ itemID = 29245, minDifficulty = "Heroic" }, --Wave-Crest Striders
			{ itemID = 29239, minDifficulty = "Heroic" }, --Eaglecrest Warboots
			{ itemID = 29347, minDifficulty = "Heroic" }, --Talisman of the Breaker
			{ itemID = 33814, minDifficulty = "Heroic" }, --Keli'dan's Feathered Stave
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30601, minDifficulty = "Heroic" }, --Beaming Fire Opal
			{ itemID = 30600, minDifficulty = "Heroic" }, --Fluorescent Tanzanite
			{ itemID = 30602, minDifficulty = "Heroic" }, --Jagged Chrysoprase
		},
	},
	---------------------------------------------
	---Hellfire Citadel: The Shattered Halls ---
	---------------------------------------------
	["HCShatteredHalls"] = {
		{
			{ itemID = 27517, groupID = 1, refLootEntry = 16807 }, --Bands of Nethekurse
			{ itemID = 27519, groupID = 1, refLootEntry = 16807 }, --Cloak of Malice
			{ itemID = 27520, groupID = 1, refLootEntry = 16807 }, --Greathelm of the Unbreakable
			{ itemID = 27518, groupID = 1, refLootEntry = 16807 }, --Ivory Idol of the Moongoddess
			{ itemID = 27521, groupID = 1, refLootEntry = 16807 }, --Telaari Hunting Girdle
			{ itemID = 24312 }, --Pattern: Spellstrike Hood
			{ itemID = 23735 }, --Grand Warlock's Amulet
			{ itemID = 2070580, groupID = 1, refLootEntry = 2060554 }, --Footsteps of the Dark Pact
			{ itemID = 2072903, groupID = 1, refLootEntry = 2060554 }, --Grips of the Infernal Betrayer
			{ itemID = 2068443, groupID = 1, refLootEntry = 2060554 }, --Legwraps of Fel Corruption
			{ itemID = 2060554, groupID = 1, refLootEntry = 2060554 }, --Nethekurse's Hood of the Fel Shaman
			{ itemID = 2076149, groupID = 1, refLootEntry = 2060554 }, --Nethekurse's Warblade of Discord
			{ itemID = 2064475, groupID = 1, refLootEntry = 2060554 }, --Robe of the Corrupted Shadowmoon
			{ itemID = 2061597, groupID = 1, refLootEntry = 2060554 }, --Shoulderguards of Twisted Legacies
			{ itemID = 25462, minDifficulty = "Heroic" }, --Tome of Dusk
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30548, minDifficulty = "Heroic" }, --Polished Chrysoprase
			{ itemID = 30547, minDifficulty = "Heroic" }, --Luminous Fire Opal
			{ itemID = 30546, minDifficulty = "Heroic" }, --Sovereign Tanzanite
		},
		{
			{ itemID = 30708, groupID = 1, refLootEntry = 20923 }, --Belt of Flowing Thought
			{ itemID = 30710, groupID = 1, refLootEntry = 20923 }, --Blood Guard's Necklace of Ferocity
			{ itemID = 30707, groupID = 1, refLootEntry = 20923 }, --Nimble-foot Treads
			{ itemID = 30709, groupID = 1, refLootEntry = 20923 }, --Pantaloons of Flaming Wrath
			{ itemID = 30705, groupID = 1, refLootEntry = 20923 }, --Spaulders of Slaughter
			{ itemID = 30709 }, --Pantaloons of Flaming Wrath
			{ itemID = 30707 }, --Nimble-foot Treads
			{ itemID = 30708 }, --Belt of Flowing Thought
			{ itemID = 30705 }, --Spaulders of Slaughter
			{ itemID = 30710 }, --Blood Guard's Necklace of Ferocity
			{ itemID = 2063266, groupID = 1, refLootEntry = 2061628 }, --Blood Guard's Defiled Tabard
			{ itemID = 2070624, groupID = 1, refLootEntry = 2061628 }, --Dreadmarch Stompers
			{ itemID = 2064518, groupID = 1, refLootEntry = 2061628 }, --Felheart Chestguard of the Guard
			{ itemID = 2072939, groupID = 1, refLootEntry = 2061628 }, --Grips of the Shattered Halls
			{ itemID = 2061628, groupID = 1, refLootEntry = 2061628 }, --Infernal Shoulderplates of Porung
			{ itemID = 2068506, groupID = 1, refLootEntry = 2061628 }, --Legplates of Demonic Might
			{ itemID = 2066420, groupID = 1, refLootEntry = 2061628 }, --Warworn Girdle of Savagery
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 30548 }, --Polished Chrysoprase
			{ itemID = 30547 }, --Luminous Fire Opal
			{ itemID = 30546 }, --Sovereign Tanzanite
		},
		{
			{ itemID = 27524, groupID = 1, refLootEntry = 16809 }, --Firemaul of Destruction
			{ itemID = 27525, groupID = 1, refLootEntry = 16809 }, --Jeweled Boots of Sanctification
			{ itemID = 27868, groupID = 1, refLootEntry = 16809 }, --Runesong Dagger
			{ itemID = 245159, groupID = 1, refLootEntry = 16809 }, --Shoulderguards of the Tides
			{ itemID = 27526, groupID = 1, refLootEntry = 16809 }, --Skyfire Hawk-Bow
			{ itemID = 27802, groupID = 1, refLootEntry = 16809 }, --Tidefury Shoulderguards
			{ itemID = 2076150, groupID = 1, refLootEntry = 2076150 }, --Fiery Maul of O'mrogg
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30548, minDifficulty = "Heroic" }, --Polished Chrysoprase
			{ itemID = 30547, minDifficulty = "Heroic" }, --Luminous Fire Opal
			{ itemID = 30546, minDifficulty = "Heroic" }, --Sovereign Tanzanite
		},
		{
			{ itemID = 27474, groupID = 1, refLootEntry = 16808 }, --Beast Lord Handguards
			{ itemID = 27533, groupID = 1, refLootEntry = 16808 }, --Demonblood Eviscerator
			{ itemID = 27529, groupID = 1, refLootEntry = 16808 }, --Figurine of the Colossus
			{ itemID = 27528, groupID = 1, refLootEntry = 16808 }, --Gauntlets of Desolation
			{ itemID = 241919, groupID = 1, refLootEntry = 16808 }, --Gauntlets of the Divine
			{ itemID = 242638, groupID = 1, refLootEntry = 16808 }, --Gauntlets of the Just
			{ itemID = 27535, groupID = 1, refLootEntry = 16808 }, --Gauntlets of the Righteous
			{ itemID = 27537, groupID = 1, refLootEntry = 16808 }, --Gloves of Oblivion
			{ itemID = 27527, groupID = 1, refLootEntry = 16808 }, --Greaves of the Shatterer
			{ itemID = 27536, groupID = 1, refLootEntry = 16808 }, --Hallowed Handwraps
			{ itemID = 27534, groupID = 1, refLootEntry = 16808 }, --Hortus' Seal of Brilliance
			{ itemID = 27538, groupID = 1, refLootEntry = 16808 }, --Lightsworn Hammer
			{ itemID = 27540, groupID = 1, refLootEntry = 16808 }, --Nexus Torch
			{ itemID = 27531, groupID = 1, refLootEntry = 16808 }, --Wastewalker Gloves
			{ itemID = 29255, minDifficulty = "Heroic" }, --Bands of Rarefied Magic
			{ itemID = 29263, minDifficulty = "Heroic" }, --Forestheart Bracers
			{ itemID = 29254, minDifficulty = "Heroic" }, --Boots of the Righteous Path
			{ itemID = 23723 }, --Warchief Kargath's Fist
			{ itemID = 29348, minDifficulty = "Heroic" }, --The Bladefist
			{ itemID = 33815, minDifficulty = "Heroic" }, --Bladefist's Seal
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30548, minDifficulty = "Heroic" }, --Polished Chrysoprase
			{ itemID = 30547, minDifficulty = "Heroic" }, --Luminous Fire Opal
			{ itemID = 30546, minDifficulty = "Heroic" }, --Sovereign Tanzanite
		},
		{
			{ itemID = 22554 }, --Formula: Enchant 2H Weapon - Savagery
			{ itemID = 31716 }, --Unused Axe of the Executioner
		},
	},
	--------------------------------------------
	---Hellfire Citadel: Magtheridon's Lair ---
	--------------------------------------------
	["HCMagtheridon"] = {
		{
			{ itemID = 12085, groupID = 3, refLootEntry = 17257 }, --Bracers of Demonic Prowess
			{ itemID = 28777, groupID = 3, refLootEntry = 17257 }, --Cloak of the Pit Stalker
			{ itemID = 28779, groupID = 3, refLootEntry = 17257 }, --Girdle of the Endless Pit
			{ itemID = 28776, groupID = 3, refLootEntry = 17257 }, --Liar's Tongue Gloves
			{ itemID = 28780, groupID = 3, refLootEntry = 17257 }, --Soul-Eater's Handwraps
			{ itemID = 28778, groupID = 3, refLootEntry = 17257 }, --Terror Pit Girdle
			{ itemID = 28775, groupID = 3, refLootEntry = 17257 }, --Thundering Greathelm
			{ itemID = 29458, groupID = 4, refLootEntry = 17257 }, --Aegis of the Vindicator
			{ itemID = 28782, groupID = 4, refLootEntry = 17257 }, --Crystalheart Pulse-Staff
			{ itemID = 28783, groupID = 4, refLootEntry = 17257 }, --Eredar Wand of Obliteration
			{ itemID = 28789, groupID = 4, refLootEntry = 17257 }, --Eye of Magtheridon
			{ itemID = 28774, groupID = 4, refLootEntry = 17257 }, --Glaive of the Pit
			{ itemID = 28781, groupID = 4, refLootEntry = 17257 }, --Karaborian Talisman
			{ itemID = 11687, groupID = 4, refLootEntry = 17257 }, --Ring of Hellfire Mighty
			{ itemID = 29753, sourcePage = {"TFOURCHEST","Token"} }, --Chestguard of the Fallen Defender
			{ itemID = 34845 }, --Pit Lord's Satchel
			{ itemID = 34846 }, --Black Sack of Gems
			{ itemID = 32385, contentsPreview = {
				{28791}, --Ring of the Recalcitrant
				{28790}, --Naaru Lightwarden's Band
				{28793}, --Band of Crimson Fury
				{28792}, --A'dal's Signet of Defense
			} }, --Magtheridon's Head
			{ itemID = 60945, droprate = "1%" }, --Pet Sigil
			{ itemID = 428775, minDifficulty = "Ascended" }, --Bor -o G'urth, the Hand of Death
			{ itemID = 428776, minDifficulty = "Ascended" }, --Lebed -o G'urth, the Finger of Death
		},
	},
	----------------
	---Karazhan ---
	----------------
	["Karazhan"] = {
		{
			{ itemID = 24152, icon = "INV_Misc_Bone_10" }, --Charred Bone Fragment
		},
		{
			{ itemID = 30675 }, --Lurker's Cord
			{ itemID = 30676 }, --Lurker's Grasp
			{ itemID = 30677 }, --Lurker's Belt
			{ itemID = 30678 }, --Lurker's Girdle
			{ itemID = 30684 }, --Ravager's Cuffs
			{ itemID = 30685 }, --Ravager's Wrist-Wraps
			{ itemID = 30686 }, --Ravager's Bands
			{ itemID = 30687 }, --Ravager's Bracers
			{ itemID = 30680 }, --Glider's Foot-Wraps
			{ itemID = 30681 }, --Glider's Boots
			{ itemID = 30682 }, --Glider's Sabatons
			{ itemID = 30683 }, --Glider's Greaves
		},
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
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 30480 }, --Fiery Warhorse's Reins
			{ itemID = 23809 }, --Schematic: Stabilized Eternium Scope
			{ itemID = 60198, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 28567, groupID = 1, refLootEntry = 15687 }, --Belt of Gale Force
			{ itemID = 28569, groupID = 1, refLootEntry = 15687 }, --Boots of Valiance
			{ itemID = 28530, groupID = 1, refLootEntry = 15687 }, --Brooch of Unquenchable Fury
			{ itemID = 28568, groupID = 1, refLootEntry = 15687 }, --Idol of the Avian Heart
			{ itemID = 28565, groupID = 1, refLootEntry = 15687 }, --Nethershard Girdle
			{ itemID = 28570, groupID = 1, refLootEntry = 15687 }, --Shadow-Cloak of Dalaran
			{ itemID = 28525, groupID = 1, refLootEntry = 15687 }, --Signet of Unshakable Faith
			{ itemID = 28566, groupID = 2, refLootEntry = 15687 }, --Crimson Girdle of the Indomitable
			{ itemID = 28545, groupID = 2, refLootEntry = 15687 }, --Edgewalker Longboots
			{ itemID = 28524, groupID = 2, refLootEntry = 15687 }, --Emerald Ripper
			{ itemID = 28528, groupID = 2, refLootEntry = 15687 }, --Moroes' Lucky Pocket Watch
			{ itemID = 28529, groupID = 2, refLootEntry = 15687 }, --Royal Cloak of Arathi Kingsfall
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 22559, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Mongoose
			{ itemID = 60166, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 24492 }, --Keanna's Log
		},
		{
			{ itemID = 28511, groupID = 1, refLootEntry = 16457 }, --Bands of Indwelling
			{ itemID = 28515, groupID = 1, refLootEntry = 16457 }, --Bands of Nefarious Deeds
			{ itemID = 28517, groupID = 1, refLootEntry = 16457 }, --Boots of Foretelling
			{ itemID = 11652, groupID = 1, refLootEntry = 16457 }, --Boots of Sinister Grace
			{ itemID = 28512, groupID = 1, refLootEntry = 16457 }, --Bracers of Justice
			{ itemID = 28520, groupID = 1, refLootEntry = 16457 }, --Gloves of Centering
			{ itemID = 28521, groupID = 1, refLootEntry = 16457 }, --Mitts of the Treemender
			{ itemID = 28522, groupID = 1, refLootEntry = 16457 }, --Shard of the Virtuous
			{ itemID = 28523, groupID = 1, refLootEntry = 16457 }, --Totem of Healing Rains
			{ itemID = 28516, groupID = 2, refLootEntry = 16457 }, --Barbed Choker of Discipline
			{ itemID = 28514, groupID = 2, refLootEntry = 16457 }, --Bracers of Maliciousness
			{ itemID = 28519, groupID = 2, refLootEntry = 16457 }, --Gloves of Quickening
			{ itemID = 28518, groupID = 2, refLootEntry = 16457 }, --Iron Gauntlets of the Maiden
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 816253, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Faith
		},
		{
			{ itemID = 28586 }, --Wicked Witch's Hat
			{ itemID = 28585 }, --Ruby Slippers
			{ itemID = 28587 }, --Legacy
			{ itemID = 28588 }, --Blue Diamond Witchwand
			{ itemID = 61590 }, --Sigil
			{ itemID = 28578 }, --Masquerade Gown
			{ itemID = 28579 }, --Romulo's Poison Vial
			{ itemID = 28572 }, --Blade of the Unrequited
			{ itemID = 28573 }, --Despair
			{ itemID = 61022 }, --Sigil
			{ itemID = 60992 }, --Sigil
			{ itemID = 28582 }, --Red Riding Hood's Cloak
			{ itemID = 28583 }, --Big Bad Wolf's Head
			{ itemID = 28584 }, --Big Bad Wolf's Paw
			{ itemID = 28581 }, --Wolfslayer Sniper Rifle
			{ itemID = 60991 }, --Sigil
			{ itemID = 28594 }, --Trial-FireTrousers
			{ itemID = 28591 }, --Earthsoul Leggings
			{ itemID = 28589 }, --Beastmaw Pauldrons
			{ itemID = 28593 }, --Eternium Greathelm
			{ itemID = 28590 }, --Ribbon of Sacrifice
			{ itemID = 28592 }, --Libram of Souls Redeemed
		},
		{
			{ itemID = 28611, groupID = 1, refLootEntry = 17225 }, --Dragonheart Flameshield
			{ itemID = 28609, groupID = 1, refLootEntry = 17225 }, --Emberspur Talisman
			{ itemID = 12087, groupID = 1, refLootEntry = 17225 }, --Nightpiercer
			{ itemID = 28604, groupID = 1, refLootEntry = 17225 }, --Nightstaff of the Everliving
			{ itemID = 28602, groupID = 1, refLootEntry = 17225 }, --Robe of the Elder Scribes
			{ itemID = 28600, groupID = 1, refLootEntry = 17225 }, --Stonebough Jerkin
			{ itemID = 28603, groupID = 1, refLootEntry = 17225 }, --Talisman of Nightbane
			{ itemID = 28601, groupID = 2, refLootEntry = 17225 }, --Chestguard of the Conniver
			{ itemID = 11637, groupID = 2, refLootEntry = 17225 }, --Covenant of Steel and Flame
			{ itemID = 28610, groupID = 2, refLootEntry = 17225 }, --Ferocious Swift-Kickers
			{ itemID = 28608, groupID = 2, refLootEntry = 17225 }, --Ironstriders of Urgency
			{ itemID = 28597, groupID = 2, refLootEntry = 17225 }, --Panzar'Thar Breastplate
			{ itemID = 28599, groupID = 2, refLootEntry = 17225 }, --Scaled Breastplate of Carnage
			{ itemID = 28606, groupID = 2, refLootEntry = 17225 }, --Shield of Impenetrable Darkness
			{ itemID = 31751 }, --Blazing Signet
			{ itemID = 229739 }, --Tome of Untold Secrets
		},
		{
			{ itemID = 28631, groupID = 2, refLootEntry = 15691 }, --Dragon-Quake Shoulderguards
			{ itemID = 28647, groupID = 2, refLootEntry = 15691 }, --Forest Wind Shoulderpads
			{ itemID = 28649, groupID = 2, refLootEntry = 15691 }, --Garona's Signet Ring
			{ itemID = 28612, groupID = 2, refLootEntry = 15691 }, --Pauldrons of the Solace-Giver
			{ itemID = 28633, groupID = 2, refLootEntry = 15691 }, --Staff of Infinite Mysteries
			{ itemID = 11251, groupID = 2, refLootEntry = 15691 }, --Stormfury Pendant
			{ itemID = 28621, groupID = 2, refLootEntry = 15691 }, --Wrynn Dynasty Greaves
			{ itemID = 29758, sourcePage = {"TFOURHAND","Token"} }, --Gloves of the Fallen Defender
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 60170 }, --Sigil of The Curator
		},
		{
			{ itemID = 28662, groupID = 1, refLootEntry = 15688 }, --Breastplate of the Lightbinder
			{ itemID = 28652, groupID = 1, refLootEntry = 15688 }, --Cincture of Will
			{ itemID = 28655, groupID = 1, refLootEntry = 15688 }, --Cord of Nature's Sustenance
			{ itemID = 28654, groupID = 1, refLootEntry = 15688 }, --Malefic Girdle
			{ itemID = 28661, groupID = 1, refLootEntry = 15688 }, --Mender's Heart-Ring
			{ itemID = 28653, groupID = 1, refLootEntry = 15688 }, --Shadowvine Cloak of Infusion
			{ itemID = 28785, groupID = 1, refLootEntry = 15688 }, --The Lightning Capacitor
			{ itemID = 28657, groupID = 2, refLootEntry = 15688 }, --Fool's Bane
			{ itemID = 28660, groupID = 2, refLootEntry = 15688 }, --Gilded Thorium Cloak
			{ itemID = 28656, groupID = 2, refLootEntry = 15688 }, --Girdle of the Prowler
			{ itemID = 12089, groupID = 2, refLootEntry = 15688 }, --Sanguine Spellfang
			{ itemID = 28658, groupID = 2, refLootEntry = 15688 }, --Terestian's Stranglestaff
			{ itemID = 28659, groupID = 2, refLootEntry = 15688 }, --Xavian Stiletto
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 22561, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Soulfrost
			{ itemID = 60167 }, --Sigil of Terestain Illhoof
		},
		{
			{ itemID = 28728, groupID = 1, refLootEntry = 16524 }, --Aran's Soothing Sapphire
			{ itemID = 28663, groupID = 1, refLootEntry = 16524 }, --Boots of the Incorrupt
			{ itemID = 28670, groupID = 1, refLootEntry = 16524 }, --Boots of the Infernal Coven
			{ itemID = 28726, groupID = 1, refLootEntry = 16524 }, --Mantle of the Mind Flayer
			{ itemID = 28666, groupID = 1, refLootEntry = 16524 }, --Pauldrons of the Justice-Seeker
			{ itemID = 28727, groupID = 1, refLootEntry = 16524 }, --Pendant of the Violet Eye
			{ itemID = 28673, groupID = 1, refLootEntry = 16524 }, --Tirisfal Wand of Ascendancy
			{ itemID = 28672, groupID = 2, refLootEntry = 16524 }, --Drape of the Dark Reavers
			{ itemID = 12084, groupID = 2, refLootEntry = 16524 }, --Drape of the Stormbreaker
			{ itemID = 28669, groupID = 2, refLootEntry = 16524 }, --Rapscallion Boots
			{ itemID = 28674, groupID = 2, refLootEntry = 16524 }, --Saberclaw Talisman
			{ itemID = 28675, groupID = 2, refLootEntry = 16524 }, --Shermanar Great-Ring
			{ itemID = 28671, groupID = 2, refLootEntry = 16524 }, --Steelspine Faceguard
			{ itemID = 23933 }, --Medivh's Journal
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 22560, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Sunfire
			{ itemID = 60372, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 11651, groupID = 1, refLootEntry = 15689 }, --Belt of Whirling Shadows
			{ itemID = 28735, groupID = 1, refLootEntry = 15689 }, --Earthblood Chestguard
			{ itemID = 28733, groupID = 1, refLootEntry = 15689 }, --Girdle of Truth
			{ itemID = 11650, groupID = 1, refLootEntry = 15689 }, --Girdle of Unbound Forces
			{ itemID = 28734, groupID = 1, refLootEntry = 15689 }, --Jewel of Infinite Possibilities
			{ itemID = 28742, groupID = 1, refLootEntry = 15689 }, --Pantaloons of Repentance
			{ itemID = 28731, groupID = 1, refLootEntry = 15689 }, --Shining Chain of the Afterworld
			{ itemID = 28744, groupID = 1, refLootEntry = 15689 }, --Uni-Mind Headdress
			{ itemID = 28732, groupID = 2, refLootEntry = 15689 }, --Cowl of Defiance
			{ itemID = 28743, groupID = 2, refLootEntry = 15689 }, --Mantle of Abrahmis
			{ itemID = 28730, groupID = 2, refLootEntry = 15689 }, --Mithril Band of the Unscarred
			{ itemID = 28740, groupID = 2, refLootEntry = 15689 }, --Rip-Flayer Leggings
			{ itemID = 28741, groupID = 2, refLootEntry = 15689 }, --Skulker's Greaves
			{ itemID = 28729, groupID = 2, refLootEntry = 15689 }, --Spiteblade
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
		},
		{
			{ itemID = 11640, groupID = 1, refLootEntry = 16816 }, --Bindings of Mystic Might
			{ itemID = 28752, groupID = 1, refLootEntry = 16816 }, --Forestlord Striders
			{ itemID = 28756, groupID = 1, refLootEntry = 16816 }, --Headdress of the High Potentate
			{ itemID = 28751, groupID = 1, refLootEntry = 16816 }, --Heart-Flame Leggings
			{ itemID = 28748, groupID = 1, refLootEntry = 16816 }, --Legplates of the Innocent
			{ itemID = 28747, groupID = 2, refLootEntry = 16816 }, --Battlescar Boots
			{ itemID = 28755, groupID = 2, refLootEntry = 16816 }, --Bladed Shoulderpads of the Merciless
			{ itemID = 28746, groupID = 2, refLootEntry = 16816 }, --Fiend Slayer Boots
			{ itemID = 28750, groupID = 2, refLootEntry = 16816 }, --Girdle of Treachery
			{ itemID = 28745, groupID = 2, refLootEntry = 16816 }, --Mithril Chain of Heroism
			{ itemID = 28749, groupID = 2, refLootEntry = 16816 }, --King's Defender
			{ itemID = 28754, groupID = 1, refLootEntry = 16816 }, --Triptych Shield of the Ancients
			{ itemID = 28753, groupID = 1, refLootEntry = 16816 }, --Ring of Recurrence
			{ itemID = 11797, groupID = 1, refLootEntry = 16816 }, --Ring of Shadowed Precision
		},
		{
			{ itemID = 28762, groupID = 2, refLootEntry = 15690 }, --Adornment of Stolen Souls
			{ itemID = 11638, groupID = 2, refLootEntry = 15690 }, --Darkened Boots of the Nathrezim
			{ itemID = 28764, groupID = 2, refLootEntry = 15690 }, --Farstrider Wildercloak
			{ itemID = 28763, groupID = 2, refLootEntry = 15690 }, --Jade Ring of the Everliving
			{ itemID = 28757, groupID = 2, refLootEntry = 15690 }, --Ring of a Thousand Marks
			{ itemID = 28766, groupID = 2, refLootEntry = 15690 }, --Ruby Drape of the Mysticant
			{ itemID = 28765, groupID = 2, refLootEntry = 15690 }, --Stainless Cloak of the Pure Hearted
			{ itemID = 11636, groupID = 2, refLootEntry = 15690 }, --Talisman of Disonnance
			{ itemID = 28770, groupID = 3, refLootEntry = 15690 }, --Nathrezim Mindblade
			{ itemID = 28768, groupID = 3, refLootEntry = 15690 }, --Malchazeen
			{ itemID = 28767, groupID = 3, refLootEntry = 15690 }, --The Decapitator
			{ itemID = 28773, groupID = 3, refLootEntry = 15690 }, --Gorehowl
			{ itemID = 28771, groupID = 3, refLootEntry = 15690 }, --Light's Justice
			{ itemID = 28772, groupID = 3, refLootEntry = 15690 }, --Sunfury Bow of the Phoenix
			{ itemID = 12123, groupID = 3, refLootEntry = 15690 }, --Razorwind
			{ itemID = 29761, sourcePage = {"TFOURHEAD","Token"} }, --Helm of the Fallen Defender
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 138255 }, --Summoner's Stone: Prince Malchezaar
			{ itemID = 60169, droprate = "1%" }, --Pet Sigil
			{ itemID = 499438, minDifficulty = "Heroic" }, --Smoldering Emberwyrm
		},
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
			{ itemID = 23857 }, --Legacy of the Mountain King
			{ itemID = 23864 }, --Torment of the Worgen
			{ itemID = 23862 }, --Redemption of the Fallen
			{ itemID = 23865 }, --Wrath of the Titans
			{ itemID = 21882 }, --Soul Essence
			{ itemID = 21903 }, --Pattern: Soulcloth Shoulders
			{ itemID = 21904 }, --Pattern: Soulcloth Vest 
			{ itemID = 22545 }, --Formula: Enchant Boots - Surefooted
		},
	},
	----------------------------------------
	---Sunwell Isle: Magister's Terrace ---
	----------------------------------------
	["MagistersTerrace"] = {
		{
			{ itemID = 34702 }, --Cloak of Swift Mending
			{ itemID = 34697 }, --Bindings of Raging Fire
			{ itemID = 34701 }, --Leggings of the Betrayed
			{ itemID = 34698 }, --Bracers of the Forest Stalker
			{ itemID = 34700 }, --Gauntlets of Divine Blessings
			{ itemID = 34699 }, --Sun-forged Cleaver
			{ itemID = 35275 }, --Orb of the Sin'dorei
			{ itemID = 34603, groupID = 1, refLootEntry = 24723 }, --Distracting Blades
			{ itemID = 34602, groupID = 1, refLootEntry = 24723 }, --Eversong Cuffs
			{ itemID = 34808, groupID = 1, refLootEntry = 24723 }, --Gloves of Arcane Acuity
			{ itemID = 34799, groupID = 1, refLootEntry = 24723 }, --Hauberk of the War Bringer
			{ itemID = 34604, groupID = 1, refLootEntry = 24723 }, --Jaded Crystal Dagger
			{ itemID = 34601, groupID = 1, refLootEntry = 24723 }, --Shoulderplates of Everlasting Pain
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
		},
		{
			{ itemID = 34605, groupID = 1, refLootEntry = 24744 }, --Breastplate of Fierce Survival
			{ itemID = 34810, groupID = 1, refLootEntry = 24744 }, --Cloak of Blade Turning
			{ itemID = 34606, groupID = 1, refLootEntry = 24744 }, --Edge of Oppression
			{ itemID = 34607, groupID = 1, refLootEntry = 24744 }, --Fel-tinged Mantle
			{ itemID = 34703, groupID = 1, refLootEntry = 24744 }, --Latro's Dancing Blade
			{ itemID = 34608, groupID = 1, refLootEntry = 24744 }, --Rod of the Blazing Lightning
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
		},
		{
			{ itemID = 34789, groupID = 1, refLootEntry = 24560 }, --Bracers of Slaughter
			{ itemID = 34792, groupID = 1, refLootEntry = 24560 }, --Cloak of the Betrayed
			{ itemID = 34700, groupID = 1, refLootEntry = 24560 }, --Gauntlets of Divine Blessings
			{ itemID = 34791, groupID = 1, refLootEntry = 24560 }, --Gauntlets of the Tranquil Waves
			{ itemID = 34473, minDifficulty = "Heroic" }, --Commendation of Kael'thas
			{ itemID = 34472, minDifficulty = "Heroic" }, --Shard of Contempt
			{ itemID = 34470, minDifficulty = "Heroic" }, --Timbal's Focusing Crystal
			{ itemID = 34471, minDifficulty = "Heroic" }, --Vial of the Sunwell
			{ itemID = 35756, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Cloak - Steelweave
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
		},
		{
			{ itemID = 34612, groupID = 1, refLootEntry = 24664 }, --Greaves of the Penitent Knight
			{ itemID = 34615, groupID = 1, refLootEntry = 24664 }, --Netherforce Chestplate
			{ itemID = 34610, groupID = 1, refLootEntry = 24664 }, --Scarlet Sin'dorei Robes
			{ itemID = 34613, groupID = 1, refLootEntry = 24664 }, --Shoulderpads of the Silvermoon Retainer
			{ itemID = 34809, groupID = 1, refLootEntry = 24664 }, --Sunrage Treads
			{ itemID = 34807, groupID = 1, refLootEntry = 24664 }, --Sunstrider Warboots
			{ itemID = 34614, groupID = 1, refLootEntry = 24664 }, --Tunic of the Ranger Lord
			{ itemID = 34616, groupID = 2, refLootEntry = 24664 }, --Breeching Comet
			{ itemID = 34611, groupID = 2, refLootEntry = 24664 }, --Cudgel of Consecration
			{ itemID = 34625, groupID = 2, refLootEntry = 24664 }, --Kharmaa's Ring of Fate
			{ itemID = 34609, groupID = 2, refLootEntry = 24664 }, --Quickening Blade of the Princess
			{ itemID = 34157 }, --Head of Kael'thas	
			{ itemID = 34160 }, --The Signet Ring of Prince Kael'thas
			{ itemID = 35504 }, --Phoenix Hatchling
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 35513, minDifficulty = "Heroic"  }, --Swift White Hawkstrider
		},
		{
			{ itemID = 35516 }, --Sun Touched Satchel
		},
	},
	----------------------------------------
	----------- Karazhan: Crypts -----------
	----------------------------------------
	["KarazhanCryptsTBC"] = {
		{
			{ itemID = 255169 }, --Twinglaive of the Vampire Council
			{ itemID = 255212 }, --Twinglaive of Eternal Slumber
			{ itemID = 259322 }, --Purified Vitae Chalice
			{ itemID = 259365 }, --Funeral Trousers
			{ itemID = 259655 }, --Tombstone Cover
			{ itemID = 259741 }, --Deathsworn Spaulders
			{ itemID = 254068 }, --Sigil of Cynfael
		},
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
		{
			{ itemID = 255917 }, --Forgiveness
			{ itemID = 257135 }, --Drape of the Horse
			{ itemID = 259494 }, --Soulsteel Legplates
			{ itemID = 259580 }, --Forgotten Aegis of Kings
			{ itemID = 259913 }, --Concentrated DeathRecap_GetEvents
			{ itemID = 254069 }, --Sigil of Kurgoth Doomreaver
		},
		{
			{ itemID = 255301 }, --Ghoul Spine Cleaver
			{ itemID = 255373 }, --Conduit of Sinners
			{ itemID = 255509 }, --Spinesplinter Arbalest
			{ itemID = 259408 }, --Deathsworn Pants
			{ itemID = 259784 }, --Bonelink Mantle
			{ itemID = 254070 }, --Sigil of Sinners
		},
		{
			{ itemID = 260936 }, --Soulfire Torch
			{ itemID = 259966 }, --Funeral Handwraps
			{ itemID = 260009 }, --Deathsworn Handguards
			{ itemID = 260052 }, --Bonelink Grasps
			{ itemID = 260095 }, --Soulsteel Gauntlets
		},
		{
			{ itemID = 257178 }, -- Funeral Treads
			{ itemID = 257221 }, -- Deathsworn Boots
			{ itemID = 257673 }, -- Bonelink Greaves
			{ itemID = 257716 }, -- Soulsteel Sabatons
			{ itemID = 254080 }, -- Sigil of Captain Taveir
		},
		{
			{ itemID = 257178 }, -- Funeral Treads
			{ itemID = 257221 }, -- Deathsworn Boots
			{ itemID = 257673 }, -- Bonelink Greaves
			{ itemID = 257716 }, -- Soulsteel Sabatons
			{ itemID = 254078 }, -- Sigil of Kelivex Autumnvale
		},
	},
	--------------------------------------------
	---Blackrock Mountain: Blackrock Caverns ---
	--------------------------------------------
	["BlackrockCavernsTBC"] = {
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
		{
			{ itemID = 250876 }, --Beauty's Favorite Bone
			{ itemID = 250663 }, --Beauty's Chew Toy
			{ itemID = 250706 }, --Beauty's Plate
			{ itemID = 250749 }, --Beauty's Silken Ribbon
			{ itemID = 250833 }, --Kibble
		},
		{
			{ itemID = 247779 }, --Grace of the Herald
			{ itemID = 247827 }, --Corla's Baton
			{ itemID = 46418 }, --Renouncer's Cowl
			{ itemID = 46461 }, --Armbands of Change
			{ itemID = 247736 }, --Signet of Transformation
		},
		{
			{ itemID = 250620 }, --Steelbender's Masterpiece
			{ itemID = 247936 }, --Bracers of Cooled Anger
			{ itemID = 249391 }, --Heat Wave Leggings
			{ itemID = 250121 }, --Burned Gatherings
			{ itemID = 250212 }, --Quicksilver Amulet
			{ itemID = 1180884 }, --Draconic Warhorn: Karsh Steelbender
		},
		{
			{ itemID = 251860 }, --Torturer's Mercy
			{ itemID = 251903 }, --Shield of the Iron Maiden
			{ itemID = 251086 }, --Inquisition Robes
			{ itemID = 251774 }, --Manacles of Pain
			{ itemID = 251817 }, --Skullcracker Ring
		},
	},
	----------------------------------------
	------------- Frozen Reach -------------
	----------------------------------------
	["FrozenReachTBC"] = {
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
	},
	-------------------------------------
	---Sunwell Isle: Sunwell Plateau ---
	-------------------------------------
	["SunwellPlateau"] = {
		{
			{ itemID = 34170, groupID = 2, contentsPreview = {{34386}} }, --Pantaloons of Calming Strife
			{ itemID = 34169, groupID = 2, contentsPreview = {{34384}} }, --Breeches of Natural Aggression
			{ itemID = 34168, groupID = 2 }, --Starstalker Legguards
			{ itemID = 34167, groupID = 2, contentsPreview = {{34382}} }, --Legplates of the Holy Juggernaut
			{ itemID = 34166, groupID = 2 }, --Band of Lucent Beams
			{ itemID = 34165, groupID = 2 }, --Fang of Kalecgos
			{ itemID = 34164, groupID = 2 }, --Dragonscale-Encrusted Longblade
			{ itemID = 34848, sourcePage = {"TSIXWRIST","Token"}}, --Bracers of the Forgotten Conqueror
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63978, groupID = 15 }, --Sigil
		},
		{
			{ itemID = 34177, groupID = 2, refLootEntry = 24882 }, --Clutch of Demise
			{ itemID = 34178, groupID = 2, refLootEntry = 24882 }, --Collar of the Pit Lord
			{ itemID = 34180, groupID = 2, refLootEntry = 24882, contentsPreview = {{34381},{11517}} }, --Felfury Legplates
			{ itemID = 34179, groupID = 2, refLootEntry = 24882 }, --Heart of the Pit
			{ itemID = 34181, groupID = 2, refLootEntry = 24882 }, --Leggings of Calamity
			{ itemID = 34176, groupID = 2, refLootEntry = 24882 }, --Reign of Misery
			{ itemID = 11523, groupID = 2, refLootEntry = 24882 }, --Trophy Scar Band
			--{ itemID = 34381, groupID = 99, refLootEntry = 24882 }, --Felstrength Legplates
			{ itemID = 34853, sourcePage = {"TSIXWAIST","Token"}, groupID = 1 }, --Belt of the Forgotten Conqueror
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 612859, groupID = 16 }, --Summoning Stone - Brutallus
			{ itemID = 63976, groupID = 15 }, --Sigil
		},
		{
			{ itemID = 34352, groupID = 2, refLootEntry = 25038 }, --Borderland Fortress Grips
			{ itemID = 34188, groupID = 2, refLootEntry = 25038, contentsPreview = {{34385}}  }, --Leggings of the Immortal Night
			--{ itemID = 34385, groupID = 99, refLootEntry = 25038 }, --Leggings of the Immortal Beastmaster
			{ itemID = 34186, groupID = 2, refLootEntry = 25038, contentsPreview = {{34383},{11518}}  }, --Chain Links of the Tumultuous Storm
			--{ itemID = 34383, groupID = 99, refLootEntry = 25038 }, --Kilt of Spiritual Reconstruction
			{ itemID = 34184, groupID = 2, refLootEntry = 25038 }, --Brooch of the Highborne
			{ itemID = 34185, groupID = 2, refLootEntry = 25038 }, --Sword Breaker's Bulwark
			{ itemID = 34182, groupID = 2, refLootEntry = 25038 }, --Grand Magister's Staff of Torrents
			{ itemID = 34856, sourcePage = {"TSIXFEET","Token"}, groupID = 1 }, --Boots of the Forgotten Conqueror
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63980, groupID = 15 }, --Sigil
		},
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
			{ itemID = 34206, groupID = 1, refLootEntry = 25166  }, --Book of Highborne Hymns
			{ itemID = 34197, groupID = 2, refLootEntry = 25166  }, --Shiv of Exsanguination
			{ itemID = 34199, groupID = 1, refLootEntry = 25166  }, --Archon's Gavel
			{ itemID = 34203, groupID = 2, refLootEntry = 25166  }, --Grip of Mannoroth
			{ itemID = 34198, groupID = 2, refLootEntry = 25166  }, --Stanchion of Primal Instinct
			{ itemID = 34196, groupID = 2, refLootEntry = 25166  }, --Golden Bow of Quel'Thalas
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 612860 ,groupID = 16, refLootEntry = 25166  }, --Summoning Stone - Sacro\'lythess
			{ itemID = 63984, groupID = 15, refLootEntry = 25166  }, --Sigil
			{ itemID = 63985, groupID = 15, refLootEntry = 25166  }, --Sigil
		},
		{
			{ itemID = 35282, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Dominance
			{ itemID = 35283, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Salvation
			{ itemID = 35284, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Triumph
			{ itemID = 35290, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Conquest
			{ itemID = 35291, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Salvation
			{ itemID = 35292, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Triumphs
			{ itemID = 34848, sourcePage = {"TSIXWRIST","Token"}, groupID = 1}, --Bracers of the Forgotten Conqueror
			{ itemID = 34853, sourcePage = {"TSIXWAIST","Token"}, groupID = 1 }, --Belt of the Forgotten Conqueror
			{ itemID = 34856, sourcePage = {"TSIXFEET","Token"}, groupID = 1 }, --Boots of the Forgotten Conqueror
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
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
			{ itemID = 34213, groupID = 2 }, --Ring of Hardened Resolve
			{ itemID = 34230, groupID = 1 }, --Ring of Omnipotence
			{ itemID = 34427, groupID = 2 }, --Blackened Naaru Sliver
			{ itemID = 34430, groupID = 1 }, --Glimmering Naaru Sliver
			{ itemID = 34429, groupID = 1 }, --Shifting Naaru Sliver
			{ itemID = 34428, groupID = 2 }, --Steely Naaru Sliver
			{ itemID = 34214, groupID = 2 }, --Muramasa
			{ itemID = 34231, groupID = 1 }, --Aegis of Angelic Fortune
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 64004, groupID = 15 }, --Sigil
		},
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
			{ itemID = 34329, groupID = 2, refLootEntry = 25315 }, --Crux of the Apocalypse
			{ itemID = 34247, groupID = 2, refLootEntry = 25315 }, --Apolyon, the Soul-Render
			{ itemID = 34335, groupID = 2, refLootEntry = 25315 }, --Hammer of Sanctification
			{ itemID = 34331, groupID = 2, refLootEntry = 25315 }, --Hand of the Deceiver
			{ itemID = 34336, groupID = 2, refLootEntry = 25315 }, --Sunflare
			{ itemID = 34337, groupID = 2, refLootEntry = 25315 }, --Golden Staff of the Sin'dorei
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 450010, groupID = 1, refLootEntry = 25315,desc = "Quest Requirements", contentsPreview = {{450009},{450010},{34334}} }, --Thori'dal, the Stars' Fury
			{ itemID = 63988, groupID = 15, refLootEntry = 25315 }, --Sigil
			{ itemID = 252676, groupID = 16, refLootEntry = 25315 }, --Essence of the blue Flight
		},
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
			{ itemID = 35191, droprate = "0.06%" }, --Schematic: Wonderheal XTSIX8 Shades
			{ itemID = 35192, droprate = "0.06%" }, --Schematic: Primal-Attuned Goggles
			{ itemID = 35193, droprate = "0.06%" }, --Schematic: Lightning Etched Specs
			{ itemID = 35194, droprate = "0.06%" }, --Schematic: Surestrike Goggles v3.0
			{ itemID = 35195, droprate = "0.06%" }, --Schematic: Mayhem Projection Goggles
			{ itemID = 35196, droprate = "0.06%" }, --Schematic: Hard Khorium Goggles
			{ itemID = 35197, droprate = "0.06%" }, --Schematic: Quad Deathblow X44 Goggles
		},
	},
	----------------------------------
	---Tempest Keep: The Arcatraz ---
	----------------------------------
	["TKArc"] = {
		{
			{ itemID = 28373, groupID = 1, refLootEntry = 40080 }, --Cloak of Scintillating Auras
			{ itemID = 28372, groupID = 1, refLootEntry = 40080 }, --Idol of Feral Shadows
			{ itemID = 28374, groupID = 1, refLootEntry = 40080 }, --Mana-Sphere Shoulderguards
			{ itemID = 28384, groupID = 1, refLootEntry = 40080 }, --Outland Striders
			{ itemID = 28375, groupID = 1, refLootEntry = 40080 }, --Rubium War-Girdle
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
		{
			{ itemID = 28397, groupID = 1, refLootEntry = 40081 }, --Emberhawk Crossbow
			{ itemID = 28396, groupID = 1, refLootEntry = 40081 }, --Gloves of the Unbound
			{ itemID = 28394, groupID = 1, refLootEntry = 40081 }, --Ryngo's Band of Ingenuity
			{ itemID = 28398, groupID = 1, refLootEntry = 40081 }, --The Sleeper's Cord
			{ itemID = 28393, groupID = 1, refLootEntry = 40081 }, --Warmaul of Infused Light
			{ itemID = 2076655, groupID = 1, refLootEntry = 2076655 }, --Axe of Felfire Reckoning
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
		{
			{ itemID = 28387, groupID = 1, refLootEntry = 40082 }, --Lamp of Peaceful Repose
			{ itemID = 28386, groupID = 1, refLootEntry = 40082 }, --Nether Core's Control Rod
			{ itemID = 28392, groupID = 1, refLootEntry = 40082 }, --Reflex Blades
			{ itemID = 28390, groupID = 1, refLootEntry = 40082 }, --Thatia's Self-Correcting Gauntlets
			{ itemID = 28391, groupID = 1, refLootEntry = 40082 }, --Worldfire Chestguard
			{ itemID = 2076654, groupID = 1, refLootEntry = 2076654 }, --Doomsayer's Shadow Blade
			{ itemID = 24308 }, --Pattern: Whitemend Pants" 
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
		{
			{ itemID = 28205, groupID = 2, refLootEntry = 25004 }, --Breastplate of the Bold
			{ itemID = 244872, groupID = 2, refLootEntry = 25004 }, --Breastplate of the Sentinel
			{ itemID = 28419, groupID = 2, refLootEntry = 25004 }, --Choker of Fluid Thought
			{ itemID = 28403, groupID = 2, refLootEntry = 25004 }, --Doomplate Chestguard
			{ itemID = 28407, groupID = 2, refLootEntry = 25004 }, --Elementium Band of the Sentry
			{ itemID = 28413, groupID = 2, refLootEntry = 25004 }, --Hallowed Crown
			{ itemID = 28414, groupID = 2, refLootEntry = 25004 }, --Helm of Assassination
			{ itemID = 28415, groupID = 2, refLootEntry = 25004 }, --Hood of Oblivion
			{ itemID = 28416, groupID = 2, refLootEntry = 25004 }, --Hungering Spineripper
			{ itemID = 28412, groupID = 2, refLootEntry = 25004 }, --Lamp of Peaceful Radiance
			{ itemID = 28418, groupID = 2, refLootEntry = 25004 }, --Shiffar's Nexus-Horn
			{ itemID = 28406, groupID = 2, refLootEntry = 25004 }, --Sigil-Laced Boots
			{ itemID = 28231, groupID = 2, refLootEntry = 25004 }, --Tidefury Chestpiece
			{ itemID = 29241, minDifficulty = "Heroic" }, --Belt of Depravity
			{ itemID = 29248, minDifficulty = "Heroic" }, --Shadowstep Striders
			{ itemID = 29252, minDifficulty = "Heroic" }, --Bracers of Dignity
			{ itemID = 29360, minDifficulty = "Heroic" }, --Vileblade of the Betrayer
			{ itemID = 33861, minDifficulty = "Heroic" }, --The Scroll of Skyriss
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
			{ itemID = 63295 } --Sigil of Harbinger Skyriss
		},
		{
			{ itemID = 24172 }, --Design: Coronet of Verdant Flame
			{ itemID = 22920 }, --Recipe: Major Fire Protection Potion
			{ itemID = 21906 }, --Pattern: Arcanoweave Boots
			{ itemID = 23606 }, --Plans: Felsteel Leggings
			{ itemID = 22556 }, --Formula: Enchant 2H Weapon - Major Agility
			{ itemID = 29672 }, --Pattern: Flame Armor Kit
			{ itemID = 21905 }, --Pattern: Arcanoweave Bracers
			{ itemID = 30824 }, --Overcharged Manacell
			{ itemID = 24488 }, --Third Key Fragment
		},
	},
	----------------------------------
	---Tempest Keep: The Botanica ---
	----------------------------------
	["TKBot"] = {
		{
			{ itemID = 28296, groupID = 1, refLootEntry = 40070 }, --Libram of the Lightbringer
			{ itemID = 28304, groupID = 1, refLootEntry = 40070 }, --Prismatic Mittens of Mending
			{ itemID = 28311, groupID = 1, refLootEntry = 40070 }, --Revenger
			{ itemID = 28301, groupID = 1, refLootEntry = 40070 }, --Syrannis' Mystic Sheen
			{ itemID = 28306, groupID = 1, refLootEntry = 40070 }, --Towering Mantle of the Hunt
			{ itemID = 2066535, groupID = 1, refLootEntry = 2061739 }, --Belt of Botanical Guardianship
			{ itemID = 2064668, groupID = 1, refLootEntry = 2061739 }, --Breastplate of Devastating Confluence
			{ itemID = 2073036, groupID = 1, refLootEntry = 2061739 }, --Gauntlets of Tactical Arcana
			{ itemID = 2070723, groupID = 1, refLootEntry = 2061739 }, --Greaves of Arcane Vitality
			{ itemID = 2068645, groupID = 1, refLootEntry = 2061739 }, --Leggings of Enchanted Flora
			{ itemID = 2061739, groupID = 1, refLootEntry = 2061739 }, --Shoulderguards of Arcane Resonance
			{ itemID = 2076308, groupID = 1, refLootEntry = 2061739 }, --Sword of Sarannis' Resolve
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
			{ itemID = 28769 }, --The Keystone
		},
		{
			{ itemID = 28316, groupID = 1, refLootEntry = 40071 }, --Aegis of the Sunbird
			{ itemID = 28321, groupID = 1, refLootEntry = 40071 }, --Enchanted Thorium Torque
			{ itemID = 28317, groupID = 1, refLootEntry = 40071 }, --Energis Armwraps
			{ itemID = 28318, groupID = 1, refLootEntry = 40071 }, --Obsidian Clodstompers
			{ itemID = 28315, groupID = 1, refLootEntry = 40071 }, --Stormreaver Warblades
			{ itemID = 2066543, groupID = 1, refLootEntry = 2060635 }, --Belt of Floral Synthesis
			{ itemID = 2060635, groupID = 1, refLootEntry = 2060635 }, --Freywinn's Arcane Blossom Helm
			{ itemID = 2070732, groupID = 1, refLootEntry = 2060635 }, --Freywinn's Sprouting Step Sandals
			{ itemID = 2061744, groupID = 1, refLootEntry = 2060635 }, --Freywinn's Verdant Embrace Shoulderpads
			{ itemID = 2068654, groupID = 1, refLootEntry = 2060635 }, --Greaves of Nature's Wrath
			{ itemID = 2064674, groupID = 1, refLootEntry = 2060635 }, --Robes of Botanical Mastery
			{ itemID = 2071776, groupID = 1, refLootEntry = 2060635 }, --Wristwraps of Thornwoven Arcanasmith
			{ itemID = 23617 }, --Plans: Earthpeace Breastplate
			{ itemID = 31744 }, --Botanist's Field Guide
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
		{
			{ itemID = 28327, groupID = 1, refLootEntry = 40072 }, --Arcane Netherband
			{ itemID = 28325, groupID = 1, refLootEntry = 40072 }, --Dreamer's Dragonstaff
			{ itemID = 28324, groupID = 1, refLootEntry = 40072 }, --Gauntlets of Cruel Intention
			{ itemID = 28323, groupID = 1, refLootEntry = 40072 }, --Ring of Umbral Doom
			{ itemID = 28322, groupID = 1, refLootEntry = 40072 }, --Runed Dagger of Solace
			{ itemID = 24310 }, --Pattern: Battlecast Pants
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
		{
			{ itemID = 28339, groupID = 1, refLootEntry = 40073 }, --Boots of the Shifting Sands
			{ itemID = 28338, groupID = 1, refLootEntry = 40073 }, --Devil-Stitched Leggings
			{ itemID = 28340, groupID = 1, refLootEntry = 40073 }, --Mantle of Autumn
			{ itemID = 28328, groupID = 1, refLootEntry = 40073 }, --Mithril-Bark Cloak
			{ itemID = 241962, groupID = 1, refLootEntry = 40073 }, --Spaulders of the Divine
			{ itemID = 242681, groupID = 1, refLootEntry = 40073 }, --Spaulders of the Just
			{ itemID = 27739, groupID = 1, refLootEntry = 40073 }, --Spaulders of the Righteous
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
		{
			{ itemID = 28367, groupID = 1, refLootEntry = 40074 }, --Greatsword of Forlorn Visions
			{ itemID = 28371, groupID = 1, refLootEntry = 40074 }, --Netherfury Cape
			{ itemID = 28342, groupID = 1, refLootEntry = 40074 }, --Warp Infused Drape
			{ itemID = 28345, groupID = 1, refLootEntry = 40074 }, --Warp Splinter's Thorn
			{ itemID = 28347, groupID = 1, refLootEntry = 40074 }, --Warpscale Leggings
			{ itemID = 28341, groupID = 1, refLootEntry = 40074 }, --Warpstaff of Arcanum
			{ itemID = 28370, groupID = 1, refLootEntry = 40077 }, --Bangle of Endless Blessings
			{ itemID = 28228, groupID = 1, refLootEntry = 40077 }, --Beast Lord Cuirass
			{ itemID = 245746, groupID = 1, refLootEntry = 40077 }, --Helm of the Tides
			{ itemID = 28229, groupID = 1, refLootEntry = 40077 }, --Incanter's Robe
			{ itemID = 28343, groupID = 1, refLootEntry = 40077 }, --Jagged Bark Pendant
			{ itemID = 28348, groupID = 1, refLootEntry = 40077 }, --Moonglade Cowl
			{ itemID = 28349, groupID = 1, refLootEntry = 40077 }, --Tidefury Helm
			{ itemID = 247693, groupID = 1, refLootEntry = 40077 }, --Verdant's Cowl
			{ itemID = 28350, groupID = 1, refLootEntry = 40077 }, --Warhelm of the Bold
			{ itemID = 244915, groupID = 1, refLootEntry = 40077 }, --Warhelm of the Sentinel
			{ itemID = 29258, minDifficulty = "Heroic" }, --Boots of Ethereal Manipulation
			{ itemID = 29262, minDifficulty = "Heroic" }, --Boots of the Endless Hunt
			{ itemID = 32072, minDifficulty = "Heroic" }, --Gauntlets of Dissension
			{ itemID = 29359, minDifficulty = "Heroic" }, --Feral Staff of Lashing
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
			{ itemID = 24311 }, --Pattern: Whitemend Hood
			{ itemID = 31085 }, --Top Shard of the Arcatraz Key
			{ itemID = 33859, minDifficulty = "Heroic" }, --Warp Splinter Clipping
		},
	},
	----------------------------------
	---Tempest Keep: The Mechanar ---
	----------------------------------
	["TKMech"] = {
		{
			{ itemID = 28249 }, --Capacitus' Cloak of Calibration
			{ itemID = 28250 }, --Vestia's Pauldrons of Inner Grace
			{ itemID = 28252 }, --Bloodfyre Robes of Annihilation
			{ itemID = 28251 }, --Boots of the Glade-Keeper
			{ itemID = 28248 }, --Totem of the Void
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 30436 }, --Jagged Blue Crystal
			{ itemID = 30437 }, --Jagged Red Crystal
		},
		{
			{ itemID = 28257, groupID = 1, refLootEntry = 40060 }, --Hammer of the Penitent
			{ itemID = 28255, groupID = 1, refLootEntry = 40060 }, --Lunar-Claw Pauldrons
			{ itemID = 28253, groupID = 1, refLootEntry = 40060 }, --Plasma Rat's Hyper-Scythe
			{ itemID = 28256, groupID = 1, refLootEntry = 40060 }, --Thoriumweave Cloak
			{ itemID = 28254, groupID = 1, refLootEntry = 40060 }, --Warp Engineer's Prismatic Chain
			{ itemID = 35582 }, --Schematic: Rocket Boots Xtreme Lite
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30565, minDifficulty = "Heroic" }, --Assassin's Fire Opal
			{ itemID = 30566, minDifficulty = "Heroic" }, --Defender's Tanzanite
			{ itemID = 30564, minDifficulty = "Heroic" }, --Shining Fire Opal
		},
		{
			{ itemID = 28259, groupID = 1, refLootEntry = 40061 }, --Cosmic Lifeband
			{ itemID = 28262, groupID = 1, refLootEntry = 40061 }, --Jade-Skull Breastplate
			{ itemID = 28260, groupID = 1, refLootEntry = 40061 }, --Manual of the Nethermancer
			{ itemID = 28258, groupID = 1, refLootEntry = 40061 }, --Nethershrike
			{ itemID = 28263, groupID = 1, refLootEntry = 40061 }, --Stellaris
			{ itemID = 2076469, groupID = 1, refLootEntry = 2060796 }, --Blade of the Nethermancer
			{ itemID = 2060796, groupID = 1, refLootEntry = 2060796 }, --Cowl of the Raging Nether
			{ itemID = 2066865, groupID = 1, refLootEntry = 2060796 }, --Girdle of Nether Flames
			{ itemID = 2069009, groupID = 1, refLootEntry = 2060796 }, --Leggings of Spectral Inferno
			{ itemID = 2061927, groupID = 1, refLootEntry = 2060796 }, --Pauldrons of Channeled Flame
			{ itemID = 2063478, groupID = 1, refLootEntry = 2060796 }, --Robe of Fiery Arcana
			{ itemID = 2071049, groupID = 1, refLootEntry = 2060796 }, --Slippers of Arcane Embers
			{ itemID = 2078254, groupID = 1, refLootEntry = 2060796 }, --Tome of Burning Secrets
			{ itemID = 22920 }, --Recipe: Major Fire Protection Potion
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30565, minDifficulty = "Heroic" }, --Assassin's Fire Opal
			{ itemID = 30566, minDifficulty = "Heroic" }, --Defender's Tanzanite
			{ itemID = 30564, minDifficulty = "Heroic" }, --Shining Fire Opal
		},
		{
			{ itemID = 28288, groupID = 1, refLootEntry = 40062 }, --Abacus of Violent Odds
			{ itemID = 28269, groupID = 1, refLootEntry = 40062 }, --Baba's Cloak of Arcanistry
			{ itemID = 28265, groupID = 1, refLootEntry = 40062 }, --Dath'Remar's Ring of Defense
			{ itemID = 28267, groupID = 1, refLootEntry = 40062 }, --Edge of the Cosmos
			{ itemID = 27899, groupID = 1, refLootEntry = 40062 }, --Mana Wrath
			{ itemID = 28266, groupID = 1, refLootEntry = 40062 }, --Molten Earth Kilt
			{ itemID = 28275, groupID = 1, refLootEntry = 40065 }, --Beast Lord Helm
			{ itemID = 242595, groupID = 1, refLootEntry = 40065 }, --Helm of the Divine
			{ itemID = 242810, groupID = 1, refLootEntry = 40065 }, --Helm of the Just
			{ itemID = 28285, groupID = 1, refLootEntry = 40065 }, --Helm of the Righteous
			{ itemID = 28278, groupID = 1, refLootEntry = 40065 }, --Incanter's Cowl
			{ itemID = 28202, groupID = 1, refLootEntry = 40065 }, --Moonglade Robe
			{ itemID = 28286, groupID = 1, refLootEntry = 40065 }, --Telescopic Sharprifle
			{ itemID = 28204, groupID = 1, refLootEntry = 40065 }, --Tunic of Assassination
			{ itemID = 247548, groupID = 1, refLootEntry = 40065 }, --Verdant's Robe
			{ itemID = 2076467, groupID = 1, refLootEntry = 2061806 }, --Blade of Arcane Domination
			{ itemID = 2070836, groupID = 1, refLootEntry = 2061806 }, --Boots of Mechanar Mastery
			{ itemID = 2078253, groupID = 1, refLootEntry = 2061806 }, --Bulwark of Tempest Control
			{ itemID = 2073947, groupID = 1, refLootEntry = 2061806 }, --Cloak of the Calculated Conjuror
			{ itemID = 2066639, groupID = 1, refLootEntry = 2061806 }, --Girdle of Arcane Precision
			{ itemID = 2073104, groupID = 1, refLootEntry = 2061806 }, --Gloves of the Nether Strategist
			{ itemID = 2068757, groupID = 1, refLootEntry = 2061806 }, --Leggings of Tactical Insight
			{ itemID = 2076468, groupID = 1, refLootEntry = 2061806 }, --Mace of Implemented Destruction
			{ itemID = 2061806, groupID = 1, refLootEntry = 2061806 }, --Mantle of Arcanum Calculation
			{ itemID = 2063343, groupID = 1, refLootEntry = 2061806 }, --Robe of Strategic Enigma
			{ itemID = 29251, minDifficulty = "Heroic" }, --Boots of the Pious
			{ itemID = 32076, minDifficulty = "Heroic" }, --Handguards of the Steady
			{ itemID = 30533, minDifficulty = "Heroic" }, --Vanquisher's Legplates
			{ itemID = 29362, minDifficulty = "Heroic" }, --The Sun Eater
			{ itemID = 33860, minDifficulty = "Heroic" }, --Pathaleon's Projector
			{ itemID = 31086, minDifficulty = "Heroic" }, --Bottom Shard of the Arcatraz Key
			{ itemID = 21907 }, --Pattern: Arcanoweave Robe
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30565, minDifficulty = "Heroic" }, --Assassin's Fire Opal
			{ itemID = 30566, minDifficulty = "Heroic" }, --Defender's Tanzanite
			{ itemID = 30564, minDifficulty = "Heroic" }, --Shining Fire Opal
		},
	},
	-----------------------------
	---Tempest Keep: The Eye ---
	-----------------------------
	["TKEye"] = {
		{
			{ itemID = 29922, groupID = 1, refLootEntry = 19514 }, --Band of Al'ar
			{ itemID = 29921, groupID = 1, refLootEntry = 19514 }, --Fire Crest Breastplate
			{ itemID = 29918, groupID = 1, refLootEntry = 19514 }, --Mindstorm Wristbands
			{ itemID = 29920, groupID = 1, refLootEntry = 19514 }, --Phoenix-Ring of Rebirth
			{ itemID = 12153, groupID = 1, refLootEntry = 19514 }, --Phoenixfire Drape
			{ itemID = 29923, groupID = 1, refLootEntry = 19514 }, --Talisman of the Sun King
			{ itemID = 30447, groupID = 1, refLootEntry = 19514 }, --Tome of Fiery Redemption
			{ itemID = 12168, groupID = 2, refLootEntry = 19514 }, --Ashen Talon
			{ itemID = 12155, groupID = 2, refLootEntry = 19514 }, --Girdle of the Eternal Blaze
			{ itemID = 29947, groupID = 2, refLootEntry = 19514 }, --Gloves of the Searing Grip
			{ itemID = 29925, groupID = 2, refLootEntry = 19514 }, --Phoenix-Wing Cloak
			{ itemID = 30448, groupID = 2, refLootEntry = 19514 }, --Talon of Al'ar
			{ itemID = 600867, minDifficulty = "Heroic" }, --Elemental Lodestone: Al'ar
			{ itemID = 29949, groupID = 2, refLootEntry = 19514 }, --Arcanite Steam-Pistol
			{ itemID = 29948, groupID = 2, refLootEntry = 19514 }, --Claw of the Phoenix
			{ itemID = 29924, groupID = 2, refLootEntry = 19514 }, --Netherbane
			{ itemID = 32944, groupID = 2, refLootEntry = 19514 }, --Talon of the Phoenix
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 1816254 }, --Forumla: Enchant Cloak - Phoenix Fire
			{ itemID = 62443, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 29986, groupID = 2, refLootEntry = 19516 }, --Cowl of the Grand Engineer
			{ itemID = 30619, groupID = 2, refLootEntry = 19516 }, --Fel Reaver's Piston
			{ itemID = 29983, groupID = 2, refLootEntry = 19516 }, --Fel-Steel Warhelm
			{ itemID = 29984, groupID = 2, refLootEntry = 19516 }, --Girdle of Zaetar
			{ itemID = 29985, groupID = 2, refLootEntry = 19516 }, --Void Reaver Greaves
			{ itemID = 12150, groupID = 2, refLootEntry = 19516 }, --Voidforged Band
			{ itemID = 30450, groupID = 2, refLootEntry = 19516 }, --Warp-Spring Coil
			{ itemID = 32515, groupID = 2, refLootEntry = 19516 }, --Wristguards of Determination
			{ itemID = 30249, sourcePage = {"TFIVESHOULDER","Token"} }, --Pauldrons of the Vanquished Defender
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
		{
			{ itemID = 29981, groupID = 1, refLootEntry = 18805 }, --Ethereum Life-Staff
			{ itemID = 29965, groupID = 1, refLootEntry = 18805 }, --Girdle of the Righteous Path
			{ itemID = 29977, groupID = 1, refLootEntry = 18805 }, --Star-Soul Breeches
			{ itemID = 29972, groupID = 1, refLootEntry = 18805 }, --Trousers of the Astromancer
			{ itemID = 29982, groupID = 1, refLootEntry = 18805 }, --Wand of the Forgotten Star
			{ itemID = 29976, groupID = 1, refLootEntry = 18805 }, --Worldstorm Gauntlets
			{ itemID = 12167, groupID = 2, refLootEntry = 18805 }, --Astromancer's Fury
			{ itemID = 32267, groupID = 2, refLootEntry = 18805 }, --Boots of the Resilient
			{ itemID = 12166, groupID = 2, refLootEntry = 18805 }, --Choker of Fallen Stars
			{ itemID = 29950, groupID = 2, refLootEntry = 18805 }, --Greaves of the Bloodwarder
			{ itemID = 29962, groupID = 2, refLootEntry = 18805 }, --Heartrazor
			{ itemID = 30446, groupID = 2, refLootEntry = 18805 }, --Solarian's Sapphire
			{ itemID = 29951, groupID = 2, refLootEntry = 18805 }, --Star-Strider Boots
			{ itemID = 29966, groupID = 2, refLootEntry = 18805 }, --Vambraces of Ending
			{ itemID = 30449, groupID = 2, refLootEntry = 18805 }, --Void Star Talisman
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 62309, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 29990, groupID = 4, refLootEntry = 19622 }, --Crown of the Sun
			{ itemID = 29987, groupID = 4, refLootEntry = 19622 }, --Gauntlets of the Sun King
			{ itemID = 29992, groupID = 4, refLootEntry = 19622 }, --Royal Cloak of the Sunstriders
			{ itemID = 29991, groupID = 4, refLootEntry = 19622 }, --Sunhawk Leggings
			{ itemID = 29989, groupID = 4, refLootEntry = 19622 }, --Sunshower Light Cloak
			{ itemID = 29988, groupID = 4, refLootEntry = 19622 }, --The Nexus Key
			{ itemID = 29997, groupID = 5, refLootEntry = 19622 }, --Band of the Ranger-General
			{ itemID = 12127, groupID = 5, refLootEntry = 19622 }, --Bindings of the Eternal Flame
			{ itemID = 29995, groupID = 5, refLootEntry = 19622 }, --Leggings of Murderous Intent
			{ itemID = 29996, groupID = 5, refLootEntry = 19622 }, --Rod of the Sun King
			{ itemID = 29998, groupID = 5, refLootEntry = 19622 }, --Royal Gauntlets of Silvermoon
			{ itemID = 29994, groupID = 5, refLootEntry = 19622 }, --Thalassian Wildercloak
			{ itemID = 29993, groupID = 5, refLootEntry = 19622 }, --Twinblade of the Phoenix
			{ itemID = 29905 }, --Kael's Vial Remnant
			{ itemID = 32405, contentsPreview = {
				{ itemID = 30018 }, --Lord Sanguinar's Claim
				{ itemID = 30017 }, --Telonicus's Pendant of Mayhem
				{ itemID = 30007 }, --The Darkener's Grasp
				{ itemID = 30015 }, --The Sun King's Talisman
				}
			}, --Verdant Sphere
			{ itemID = 450001 }, --Intact Vial of Kael'thas Sunstrider
			{ itemID = 30237, sourcePage = {"TFIVECHEST","Token"} }, --Chestguard of the Vanquished Defender
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 62498, droprate = "1%" }, --Pet Sigil
			{ itemID = 32458 }, --Ashes of Al'ar
		},
		{
			{ itemID = 30024 }, --Mantle of the Elven Kings
			{ itemID = 30020 }, --Fire-Cord of the Magus
			{ itemID = 30029 }, --Bark-Gloves of Ancient Wisdom
			{ itemID = 30026 }, --Bands of the Celestial Archer
			{ itemID = 30030 }, --Girdle of Fallen Stars
			{ itemID = 30028 }, --Seventh Ring of the Tirisfalen
			{ itemID = 2032902 }, --Bottled Nethergron Extract
			{ itemID = 30324 }, --Plans: Red Havoc Boots
			{ itemID = 30322 }, --Plans: Red Belt of Battle
			{ itemID = 30323 }, --Plans: Boots of the Protector
			{ itemID = 30321 }, --Plans: Belt of the Guardian
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
			{ itemID = 30183 }, --Nether Vortex
			{ itemID = 32897 }, --Mark of the Illidari
		},
		{
			{ itemID = 30312 }, --Infinity Blade
			{ itemID = 30311 }, --Warp Slicer
			{ itemID = 30317 }, --Cosmic Infuser
			{ itemID = 30316 }, --Devastation
			{ itemID = 30313 }, --Staff of Disintegration
			{ itemID = 30314 }, --Phaseshift Bulwark
			{ itemID = 30318 }, --Netherstrand Longbow
		},
	},
	----------------
	---Zul'Aman ---
	----------------
	["ZulAman"] = {
		{
			{ itemID = 33480, groupID = 1, refLootEntry = 23576 }, --Cord of Braided Troll Hair
			{ itemID = 33971, groupID = 1, refLootEntry = 23576 }, --Elunite Imbued Leggings
			{ itemID = 33285, groupID = 1, refLootEntry = 23576 }, --Fury of the Ursine
			{ itemID = 33327, groupID = 1, refLootEntry = 23576 }, --Mask of Introspection
			{ itemID = 33203, groupID = 1, refLootEntry = 23576 }, --Robes of Heavenly Purpose
			{ itemID = 33498, groupID = 1, refLootEntry = 23576 }, --Signet of the Quiet Forest
			{ itemID = 33211, groupID = 2, refLootEntry = 23576 }, --Bladeangel's Money Belt
			{ itemID = 33640, groupID = 2, refLootEntry = 23576 }, --Fury
			{ itemID = 33191, groupID = 2, refLootEntry = 23576 }, --Jungle Stompers
			{ itemID = 33206, groupID = 2, refLootEntry = 23576 }, --Pauldrons of Primal Fury
			{ itemID = 33495, groupID = 2, refLootEntry = 23576 }, --Rage
			{ itemID = 12267, groupID = 2, refLootEntry = 23576 }, --Savage Guardian Helm
			{ itemID = 12266, groupID = 2, refLootEntry = 23576 }, --Savage Spirit Mask
			{ itemID = 33496, groupID = 2, refLootEntry = 23576 }, --Signet of Primal Wrath
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63944, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 33283, groupID = 1, refLootEntry = 23574 }, --Amani Punisher
			{ itemID = 33281, groupID = 1, refLootEntry = 23574 }, --Brooch of Nature's Mercy
			{ itemID = 33216, groupID = 1, refLootEntry = 23574 }, --Chestguard of Hidden Purpose
			{ itemID = 33286, groupID = 1, refLootEntry = 23574 }, --Mojo-mender's Mask
			{ itemID = 33591, groupID = 1, refLootEntry = 23574 }, --Shadowcaster's Drape
			{ itemID = 33293, groupID = 1, refLootEntry = 23574 }, --Signet of Ancient Magics
			{ itemID = 33214, groupID = 2, refLootEntry = 23574 }, --Akil'zon's Talonblade
			{ itemID = 33215, groupID = 2, refLootEntry = 23574 }, --Bloodstained Elven Battlevest
			{ itemID = 33590, groupID = 2, refLootEntry = 23574 }, --Cloak of Fiends
			{ itemID = 33481, groupID = 2, refLootEntry = 23574 }, --Pauldrons of Stone Resolve
			{ itemID = 33500, groupID = 2, refLootEntry = 23574 }, --Signet of Eternal Life
			{ itemID = 33492, groupID = 2, refLootEntry = 23574 }, --Trollbane
			{ itemID = 12269, groupID = 2, refLootEntry = 23574 }, --Windcaller's Pauldrons
			{ itemID = 12268, groupID = 2, refLootEntry = 23574 }, --Windspeaker's Mantle
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63943, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 33357, groupID = 1, refLootEntry = 23578 }, --Footpads of Madness
			{ itemID = 33356, groupID = 1, refLootEntry = 23578 }, --Helm of Natural Regeneration
			{ itemID = 33489, groupID = 1, refLootEntry = 23578 }, --Mantle of Ill Intent
			{ itemID = 33490, groupID = 1, refLootEntry = 23578 }, --Staff of Dark Mending
			{ itemID = 33354, groupID = 1, refLootEntry = 23578 }, --Wub's Cursed Hexblade
			{ itemID = 33328, groupID = 2, refLootEntry = 23578 }, --Arrow-fall Chestguard
			{ itemID = 12271, groupID = 2, refLootEntry = 23578 }, --Blazeforged Breastplate
			{ itemID = 33326, groupID = 2, refLootEntry = 23578 }, --Bulwark of the Amani Empire
			{ itemID = 12270, groupID = 2, refLootEntry = 23578 }, --Flamewoven Hauberk
			{ itemID = 33805, groupID = 2, refLootEntry = 23578 }, --Shadowhunter's Treads
			{ itemID = 33329, groupID = 2, refLootEntry = 23578 }, --Shadowtooth Trollskin Cuirass
			{ itemID = 33499, groupID = 2, refLootEntry = 23578 }, --Signet of the Last Defender
			{ itemID = 33491, groupID = 2, refLootEntry = 23578 }, --Tuskbreaker
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63946, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 33533, groupID = 1, refLootEntry = 23577 }, --Avalanche Leggings
			{ itemID = 33483, groupID = 1, refLootEntry = 23577 }, --Life-step Belt
			{ itemID = 33497, groupID = 1, refLootEntry = 23577 }, --Mana Attuned Band
			{ itemID = 33317, groupID = 1, refLootEntry = 23577 }, --Robe of Departed Spirits
			{ itemID = 33322, groupID = 1, refLootEntry = 23577 }, --Shimmer-pelt Vest
			{ itemID = 33299, groupID = 1, refLootEntry = 23577 }, --Spaulders of the Advocate
			{ itemID = 12272, groupID = 2, refLootEntry = 23577 }, --Claws of the Wildstalker
			{ itemID = 12305, groupID = 2, refLootEntry = 23577 }, --Gauntlets of the Primal Strike
			{ itemID = 33300, groupID = 2, refLootEntry = 23577 }, --Shoulderpads of Dancing Blades
			{ itemID = 33979, groupID = 2, refLootEntry = 23577 }, --Sightless Head
			{ itemID = 33303, groupID = 2, refLootEntry = 23577 }, --Skullshatter Warboots
			{ itemID = 33465, groupID = 2, refLootEntry = 23577 }, --Staff of Primal Fury
			{ itemID = 33297, groupID = 2, refLootEntry = 23577 }, --The Savage's Choker
			{ itemID = 33493, groupID = 2, refLootEntry = 23577 }, --Umbral Shiv
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63945, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 33494, groupID = 1, refLootEntry = 24239 }, --Amani Divining Staff
			{ itemID = 33592, groupID = 1, refLootEntry = 24239 }, --Cloak of Ancient Rituals
			{ itemID = 33446, groupID = 1, refLootEntry = 24239 }, --Girdle of Stromgarde's Hope
			{ itemID = 33464, groupID = 1, refLootEntry = 24239 }, --Hex Lord's Voodoo Pauldrons
			{ itemID = 33453, groupID = 1, refLootEntry = 24239 }, --Hood of Hexing
			{ itemID = 33463, groupID = 1, refLootEntry = 24239 }, --Hood of the Third Eye
			{ itemID = 33828, groupID = 1, refLootEntry = 24239 }, --Tome of Diabolic Remedy
			{ itemID = 33421, groupID = 2, refLootEntry = 24239 }, --Battleworn Tuskguard
			{ itemID = 33432, groupID = 2, refLootEntry = 24239 }, --Coif of the Jungle Stalker
			{ itemID = 33389, groupID = 2, refLootEntry = 24239 }, --Dagger of Bad Mojo
			{ itemID = 33388, groupID = 2, refLootEntry = 24239 }, --Heartless
			{ itemID = 33298, groupID = 2, refLootEntry = 24239 }, --Prowler's Strikeblade
			{ itemID = 34029, groupID = 2, refLootEntry = 24239 }, --Tiny Voodoo Mask
			{ itemID = 38634, groupID = 2, refLootEntry = 24239 }, --Troll Dice
			{ itemID = 2033307, droprate = { "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Witchdoctor
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } },  --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63962, droprate = "1%" }, --Pet Sigil
			{ itemID = 1333809 }, --Amani Bear
		},
		{
			{ itemID = 33469, groupID = 1, refLootEntry = 23863 }, --Hauberk of the Empire's Champion
			{ itemID = 33829, groupID = 1, refLootEntry = 23863 }, --Hex Shrunken Head
			{ itemID = 33466, groupID = 1, refLootEntry = 23863 }, --Loop of Cursed Bones
			{ itemID = 33471, groupID = 1, refLootEntry = 23863 }, --Two-toed Sandals
			{ itemID = 33830, groupID = 2, refLootEntry = 23863 }, --Ancient Aqir Artifact
			{ itemID = 33831, groupID = 2, refLootEntry = 23863 }, --Berserker's Call
			{ itemID = 33473, groupID = 2, refLootEntry = 23863 }, --Chestguard of the Warlord
			{ itemID = 33479, groupID = 2, refLootEntry = 23863 }, --Grimgrin Faceguard
			{ itemID = 24537, groupID = 2, refLootEntry = 23863 }, --Waistband of Crushed Skulls
			{ itemID = 33307, droprate = { "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Executioner
			{ itemID = 33102 }, --Blood of Zul'Jin	
			{ itemID = 33474, groupID = 3, refLootEntry = 23863 }, --Ancient Amani Longbow
			{ itemID = 33467, groupID = 3, refLootEntry = 23863 }, --Blade of Twisted Visions
			{ itemID = 33476, groupID = 3, refLootEntry = 23863 }, --Cleaver of the Unforgiving
			{ itemID = 33468, groupID = 3, refLootEntry = 23863 }, --Dark Blessing
			{ itemID = 12265, groupID = 3, refLootEntry = 23863 }, --Hook of the Wild Hunt
			{ itemID = 33478, groupID = 3, refLootEntry = 23863 }, --Jin'rohk, The Great Apocalypse
			{ itemID = 34071, groupID = 3, refLootEntry = 23863 }, --Seething Hate
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63949, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 21824 }, --The Krakmon Wand
			{ itemID = 24574 }, --Massacre Cloak
			{ itemID = 28354 }, --Throat Crushers
			{ itemID = 33059 }, --Seal of the Amani'shi Berserker
			{ itemID = 33983 }, --Staff of Blazing Glory
			{ itemID = 39755 }, --String of Ears
			{ itemID = 33865 }, --Amani Hex Stick
			{ itemID = 33930 }, --Amani Charm of the Bloodletter
			{ itemID = 33932 }, --Amani Charm of the Witch Doctor
			{ itemID = 33931 }, --Amani Charm of Mighty Mojo
			{ itemID = 33933 }, --Amani Charm of the Raging Defender
			{ itemID = 33993 }, --Mojo
		},
		{
			{ itemID = 229194 }, --The Krakmon Wand
			{ itemID = 229193 }, --Massacre Cloak
			{ itemID = 229196 }, --Throat Crushers
			{ itemID = 229192 }, --Seal of the Amani'shi Berserker
			{ itemID = 229195 }, --Staff of Blazing Glory
		},
	},
	------------------------
	---World Bosses TBC ---
	------------------------
	["WorldBossesTBC"] = {
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
})
	------------------------
	----Item Sacks TBC ----
	------------------------
	AtlasLoot:AddItemData("extraItemInfo",{
		[34846] = {
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
		},
		[222637] = {
			{ itemID = 229194 }, --The Krakmon Wand
			{ itemID = 229193 }, --Massacre Cloak
			{ itemID = 229196 }, --Throat Crushers
			{ itemID = 229192 }, --Seal of the Amani'shi Berserker
			{ itemID = 229195 }, --Staff of Blazing Glory
		},
		[229739] = {
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
		},
	})
	AtlasLoot:AddItemData("lootableLinks", {
		[29758] = {"TFOURHAND","Token"}, --Gloves of the Fallen Defender
	})