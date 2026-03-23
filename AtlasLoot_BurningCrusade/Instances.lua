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
			{ itemID = 29354, minDifficulty = "Heroic" }, --Light-Touched Stole of Altruism
			{ itemID = 29257, minDifficulty = "Heroic" }, --Sash of Arcane Visions
			{ itemID = 29244, minDifficulty = "Heroic" }, --Wave-Song Girdle
			{ itemID = 27867, minDifficulty = "Heroic" }, --Boots of the Unjust
			{ itemID = 27871, minDifficulty = "Heroic" }, --Maladaar's Blessed Chaplet
			{ itemID = 27869, minDifficulty = "Heroic" }, --Soulpriest's Ring of Resolve
			{ itemID = 27523, minDifficulty = "Heroic" }, --Exarch's Diamond Band
			{ itemID = 27872, minDifficulty = "Heroic" }, --The Harvester of Souls
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
			{ itemID = 24160 }, --Design: Khorium Inferno Band
			{ itemID = 27633 }, --Terokk's Mask
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30553, minDifficulty = "Heroic" }, --Pristine Fire Opal
			{ itemID = 30554, minDifficulty = "Heroic" }, --Stalwart Fire Opal
			{ itemID = 30552, minDifficulty = "Heroic" }, --Blessed Tanzanite
		},
		{
		 	{ itemID = 29434 }, --Badge of Justice
		 	{ itemID = 30553 }, --Pristine Fire Opal
		 	{ itemID = 30554 }, --Stalwart Fire Opal
		 	{ itemID = 30552 }, --Blessed Tanzanite
			{ itemID = 32768 }, --Reins of the Raven Lord
		},
		{
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
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
		},
		{
			{ itemID = 25728 }, --Pattern: Stylin' Purple Hat
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
		},
		{
			{ itemID = 30827 }, --Lexicon Demonica
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30563, minDifficulty = "Heroic" }, --Regal Tanzanite
			{ itemID = 30559, minDifficulty = "Heroic" }, --Etched Fire Opal
			{ itemID = 30560, minDifficulty = "Heroic" }, --Rune Covered Chrysoprase
		},
		{
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
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63451, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63510, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 11432 }, --Ashtongue Jewel
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63425, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63443, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63521, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63940, droprate = "1%" }, --Pet Sigil
		},
		{
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
			{ itemID = 29674 }, --Pattern: Nature Armor Kit
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
			{ itemID = 29673 }, --Pattern: Frost Armor Kit
			{ itemID = 30828 }, --Vial of Underworld Loam
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30550, minDifficulty = "Heroic" }, --Sundered Chrysoprase
			{ itemID = 30551, minDifficulty = "Heroic" }, --Infused Fire Opal
			{ itemID = 30549, minDifficulty = "Heroic" }, --Shifting Tanzanite
		},
		{
			{ itemID = 23887 }, --Schematic: Rocket Boots Xtreme
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30550, minDifficulty = "Heroic" }, --Sundered Chrysoprase
			{ itemID = 30551, minDifficulty = "Heroic" }, --Infused Fire Opal
			{ itemID = 30549, minDifficulty = "Heroic" }, --Shifting Tanzanite
		},
		{
			{ itemID = 24313 }, --Pattern: Battlecast Hood
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
		},
		{
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
			{ itemID = 600878, minDifficulty = "Heroic" }, --Elemental Lodestone: Hydross the Unstable
			{ itemID = 816254, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Cloak - Crushing Wave
			{ itemID = 63338, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 29434 }, --Badge of Justice
		},
		{
			{ itemID = 30240, sourcePage = {"TFIVEHAND","Token"} }, --Gloves of the Vanquished Defender
			{ itemID = 63326, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 30246, sourcePage = {"TFIVELEGS","Token"} }, --Leggings of the Vanquished Defender
			{ itemID = 63325, droprate = "1%" }, --Pet Sigil
		},
		{
		},
		{
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
			{ itemID = 29764, sourcePage = {"TFOURSHOULDER","Token"} }, --Pauldrons of the Fallen Defender
			{ itemID = 816252, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Undaunted Might
			{ itemID = 62311, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 29767, sourcePage = {"TFOURLEGS","Token"} }, --Leggings of the Fallen Defender
		},
	},
	-------------------------------------------
	---Hellfire Citadel: Hellfire Ramparts ---
	-------------------------------------------
	["HCRamparts"] = {
		{
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
			{ itemID = 24312 }, --Pattern: Spellstrike Hood
			{ itemID = 23735 }, --Grand Warlock's Amulet
			{ itemID = 25462, minDifficulty = "Heroic" }, --Tome of Dusk
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30548, minDifficulty = "Heroic" }, --Polished Chrysoprase
			{ itemID = 30547, minDifficulty = "Heroic" }, --Luminous Fire Opal
			{ itemID = 30546, minDifficulty = "Heroic" }, --Sovereign Tanzanite
		},
		{
			{ itemID = 30709 }, --Pantaloons of Flaming Wrath
			{ itemID = 30707 }, --Nimble-foot Treads
			{ itemID = 30708 }, --Belt of Flowing Thought
			{ itemID = 30705 }, --Spaulders of Slaughter
			{ itemID = 30710 }, --Blood Guard's Necklace of Ferocity
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 30548 }, --Polished Chrysoprase
			{ itemID = 30547 }, --Luminous Fire Opal
			{ itemID = 30546 }, --Sovereign Tanzanite
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30548, minDifficulty = "Heroic" }, --Polished Chrysoprase
			{ itemID = 30547, minDifficulty = "Heroic" }, --Luminous Fire Opal
			{ itemID = 30546, minDifficulty = "Heroic" }, --Sovereign Tanzanite
		},
		{
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
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 30480 }, --Fiery Warhorse's Reins
			{ itemID = 23809 }, --Schematic: Stabilized Eternium Scope
			{ itemID = 60198, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 22559, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Mongoose
			{ itemID = 60166, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 24492 }, --Keanna's Log
		},
		{
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
			{ itemID = 31751 }, --Blazing Signet
			{ itemID = 229739 }, --Tome of Untold Secrets
		},
		{
			{ itemID = 29758, sourcePage = {"TFOURHAND","Token"} }, --Gloves of the Fallen Defender
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 60170 }, --Sigil of The Curator
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 22561, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Soulfrost
			{ itemID = 60167 }, --Sigil of Terestain Illhoof
		},
		{
			{ itemID = 23933 }, --Medivh's Journal
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 22560, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Sunfire
			{ itemID = 60372, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 229739 }, --Tome of Untold Secrets
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
		},
		{
		},
		{
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
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
		},
		{
			{ itemID = 34473, minDifficulty = "Heroic" }, --Commendation of Kael'thas
			{ itemID = 34472, minDifficulty = "Heroic" }, --Shard of Contempt
			{ itemID = 34470, minDifficulty = "Heroic" }, --Timbal's Focusing Crystal
			{ itemID = 34471, minDifficulty = "Heroic" }, --Vial of the Sunwell
			{ itemID = 35756, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Cloak - Steelweave
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
		},
		{
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
			{ itemID = 34853, sourcePage = {"TSIXWAIST","Token"}, groupID = 1 }, --Belt of the Forgotten Conqueror
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 612859, groupID = 16 }, --Summoning Stone - Brutallus
			{ itemID = 63976, groupID = 15 }, --Sigil
		},
		{
			{ itemID = 34856, sourcePage = {"TSIXFEET","Token"}, groupID = 1 }, --Boots of the Forgotten Conqueror
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63980, groupID = 15 }, --Sigil
		},
		{
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
		{
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
			{ itemID = 34664 }, --Sunmote
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
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
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
		{
			{ itemID = 24308 }, --Pattern: Whitemend Pants" 
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30582, minDifficulty = "Heroic" }, --Deadly Fire Opal
			{ itemID = 30575, minDifficulty = "Heroic" }, --Nimble Fire Opal
			{ itemID = 30581, minDifficulty = "Heroic" }, --Durable Fire Opal
		},
		{
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
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
			{ itemID = 28769 }, --The Keystone
		},
		{
			{ itemID = 23617 }, --Plans: Earthpeace Breastplate
			{ itemID = 31744 }, --Botanist's Field Guide
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
		{
			{ itemID = 24310 }, --Pattern: Battlecast Pants
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
		{
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30574, minDifficulty = "Heroic" }, --Brutal Tanzanite
			{ itemID = 30572, minDifficulty = "Heroic" }, --Imperial Tanzanite
			{ itemID = 30573, minDifficulty = "Heroic" }, --Mysterious Fire Opal
		},
		{
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
			{ itemID = 35582 }, --Schematic: Rocket Boots Xtreme Lite
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30565, minDifficulty = "Heroic" }, --Assassin's Fire Opal
			{ itemID = 30566, minDifficulty = "Heroic" }, --Defender's Tanzanite
			{ itemID = 30564, minDifficulty = "Heroic" }, --Shining Fire Opal
		},
		{
			{ itemID = 22920 }, --Recipe: Major Fire Protection Potion
			{ itemID = 29434, minDifficulty = "Heroic" }, --Badge of Justice
			{ itemID = 30565, minDifficulty = "Heroic" }, --Assassin's Fire Opal
			{ itemID = 30566, minDifficulty = "Heroic" }, --Defender's Tanzanite
			{ itemID = 30564, minDifficulty = "Heroic" }, --Shining Fire Opal
		},
		{
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
			{ itemID = 600867, minDifficulty = "Heroic" }, --Elemental Lodestone: Al'ar
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 1816254 }, --Forumla: Enchant Cloak - Phoenix Fire
			{ itemID = 62443, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 30249, sourcePage = {"TFIVESHOULDER","Token"} }, --Pauldrons of the Vanquished Defender
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
		},
		{
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 62309, droprate = "1%" }, --Pet Sigil
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
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63944, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63943, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63946, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }, --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63945, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 2033307, droprate = { "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Witchdoctor
			{ itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } },  --Primal Amani Idol
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 400751, maxDifficulty = "Normal" }, --Raider's Commendations
			{ itemID = 98570 }, --Mystic Orb
			{ itemID = 63962, droprate = "1%" }, --Pet Sigil
			{ itemID = 1333809 }, --Amani Bear
		},
		{
			{ itemID = 33307, droprate = { "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Executioner
			{ itemID = 33102 }, --Blood of Zul'Jin	
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