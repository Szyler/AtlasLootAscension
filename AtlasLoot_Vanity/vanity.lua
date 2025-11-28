local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")





---------------
--- Tabards ---
---------------

AtlasLoot_Data["Tabards"] = {
	Module = "AtlasLoot_Vanity",
	Name = "Tabards",
	{
		Name = "Page 1",
		{
			{ itemID = 51534 }, --Wrathful Gladiator's Tabard
			{ itemID = 49086 }, --Relentless Gladiator's Tabard
			{ itemID = 45983 }, --Furious Gladiator's Tabard
			{ itemID = 43349, desc = "=ds=".."Achievement Reward" }, --Tabard of Brute Force
			{ itemID = 40643, desc = "=ds=".."Achievement Reward" }, --Tabard of the Achiever
			{ itemID = 43348, desc = "=ds=".."Achievement Reward" }, --Tabard of the Explorer
			{ itemID = 43300, desc = "=ds=".."Achievement Reward" }, --Loremaster's Colors
			{ itemID = 49052, desc = "=ds=".."Achievement Reward".." =ec1=".."Alliance" }, --Tabard of Conquest
			{ itemID = 49054, desc = "=ds=".."Achievement Reward".." =ec1=".."Horde" }, --Tabard of Conquest
			{ itemID = 46874 }, --Argent Crusader's Tabard
			{ itemID = 46817 }, --Silver Covenant Tabard
			{ itemID = 46818 }, --Sunreaver Tabard
		},
		{
			{ itemID = 43154 }, --Tabard of the Argent Crusade
			{ itemID = 43157 }, --Tabard of the Kirin Tor
			{ itemID = 43155 }, --Tabard of the Ebon Blade
			{ itemID = 43156 }, --Tabard of the Wyrmrest Accord
			{ itemID = 45579 }, --Darnassus Tabard
			{ itemID = 45580 }, --Exodar Tabard
			{ itemID = 45578 }, --Gnomeregan Tabard
			{ itemID = 45577 }, --Ironforge Tabard
			{ itemID = 45574 }, --Stormwind Tabard
			{ itemID = 45581 }, --Orgrimmar Tabard
			{ itemID = 45582 }, --Sen'jin Tabard
			{ itemID = 45585 }, --Silvermoon City Tabard
			{ itemID = 45584 }, --Thunder Bluff Tabard
			{ itemID = 45583 }, --Undercity Tabard
		},
	},
	{
		Name = "Page 2",
		{
			{ itemID = 38312 }, --Tabard of Brilliance
			{ itemID = 23705 }, --Tabard of Flame
			{ itemID = 23709 }, --Tabard of Frost
			{ itemID = 38313 }, --Tabard of Fury
			{ itemID = 38309 }, --Tabard of Nature
			{ itemID = 38310 }, --Tabard of the Arcane
			{ itemID = 38314 }, --Tabard of the Defender
			{ itemID = 38311 }, --Tabard of the Void
			{ itemID = 35279 }, --Tabard of Summer Skies
			{ itemID = 35280 }, --Tabard of Summer Flames
			{ itemID = 31404 }, --Green Trophy Tabard of the Illidari
			{ itemID = 31405 }, --Purple Trophy Tabard of the Illidari
			{ itemID = 24344 }, --Tabard of the Hand
			{ itemID = 25549 }, --Blood Knight Tabard
		},
		{
			{ itemID = 31779 }, --Aldor Tabard
			{ itemID = 31804 }, --Cenarion Expedition Tabard
			{ itemID = 31776 }, --Consortium Tabard
			{ itemID = 23999 }, --Honor Hold Tabard
			{ itemID = 31777 }, --Keepers of Time Tabard
			{ itemID = 31774 }, --Kurenai Tabard
			{ itemID = 31778 }, --Lower City Tabard
			{ itemID = 31773 }, --Mag'har Tabard
			{ itemID = 32828 }, --Ogri'la Tabard
			{ itemID = 31781 }, --Sha'tar Tabard
			{ itemID = 31775 }, --Sporeggar Tabard
			{ itemID = 31780 }, --Scryers Tabard
			{ itemID = 32445 }, --Skyguard Tabard
			{ itemID = 35221 }, --Tabard of the Shattered Sun
			{ itemID = 24004 }, --Thrallmar Tabard
		},
	},
	{
		Name = "Page 3",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.."Alliance" },
			{ itemID = 15196 }, --Private's Tabard
			{ itemID = 15198 }, --Knight's Colors
			{ itemID = 20132 }, --Arathor Battle Tabard
			{ itemID = 19032 }, --Stormpike Battle Tabard
			{ itemID = 19506 }, --Silverwing Battle Tabard
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.."Horde" },
			{ itemID = 15197 }, --Scout's Tabard
			{ itemID = 15199 }, --Stone Guard's Herald
			{ itemID = 20131 }, --Battle Tabard of the Defilers
			{ itemID = 19031 }, --Frostwolf Battle Tabard
			{ itemID = 19505 }, --Warsong Battle Tabard
		},
		{
			{ itemID = 23192 }, --Tabard of the Scarlet Crusade",  "0%
			{ itemID = 5976 }, --Guild Tabard
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Unattainable Tabards" },
			{ itemID = 36941 }, --Competitor's Tabard
			{ itemID = 22999 }, --Tabard of the Agent Dawn
			{ itemID = 28788 }, --Tabard of the Protector
			{ itemID = 19160 }, --Contest Winner's Tabard
		},
	},
}

-------------------
--- Vanity Pets ---
-------------------

AtlasLoot_Data["VanityPets"] = {
	Module = "AtlasLoot_Vanity",
	Name = "Vanity Pets",
	{
		Name = "Merchant Sold",
		{
			{ itemID = 44984 }, --Ammen Vale Lashling
			{ itemID = 54436 }, --Blue Clockwork Rocket Bot
			{ itemID = 44970 }, --Dun Morogh Cub
			{ itemID = 44973 }, --Durotar Scorpion
			{ itemID = 44974 }, --Elwynn Lamb
			{ itemID = 44982 }, --Enchanted Broom
			{ itemID = 39973 }, --Ghostly Skull
			{ itemID = 45002 }, --Mechanopeep
			{ itemID = 44980 }, --Mulgore Hatchling
			{ itemID = 45606 }, --Sen'jin Fetish
			{ itemID = 44965 }, --Teldrassil Sproutling
			{ itemID = 44971 }, --Tirisfal Batling
			{ itemID = 44822 }, --Albino Snake
			{ itemID = 11023 }, --Ancona Chicken
			{ itemID = 10360 }, --Black Kingsnake
		},
		{
			{ itemID = 10361 }, --Brown Snake
			{ itemID = 29958 }, --Blue Dragonhawk Hatchling
			{ itemID = 29901 }, --Blue Moth Egg
			{ itemID = 29364 }, --Brown Rabbit Crate
			{ itemID = 46398 }, --Calico Cat
			{ itemID = 8485 }, --Cat Carrier (Bombay)
			{ itemID = 8486 }, --Cat Carrier (Cornish Rex)
			{ itemID = 8487 }, --Cat Carrier (AtlasLoot.Colors.ORANGE Tabby)
			{ itemID = 8490 }, --Cat Carrier (Siamese)
			{ itemID = 8488 }, --Cat Carrier (Silver Tabby)
			{ itemID = 8489 }, --Cat Carrier (Green Kitten)
			{ itemID = 10393 }, --Cockroach
			{ itemID = 10392 }, --Crimson Snake
			{ itemID = 29953 }, --Golden Dragonhawk Hatchling
			{ itemID = 8500 }, --Great Horned Owl
		},
	},
	{
		Name = "Merchant Sold",
		{
			{ itemID = 8501 }, --Hawk Owl
			{ itemID = 29363 }, --Mana Wyrmling
			{ itemID = 48120 }, --Obsidian Hatchling
			{ itemID = 8496 }, --Parrot Cage (Cockatiel)
			{ itemID = 8492 }, --Parrot Cage (Green Wing Macaw)
			{ itemID = 8495 }, --Parrot Cage (Senegal)
			{ itemID = 10394 }, --Prairie Dog Whistle
			{ itemID = 8497 }, --Rabbit Crate (Snowshoe)
			{ itemID = 29956 }, --Red Dragonhawk Hatchling
			{ itemID = 29902 }, --Red Moth Egg
			{ itemID = 29957 }, --Silver Dragonhawk Hatchling
			{ itemID = 11026 }, --Tree Frog Box
			{ itemID = 29904 }, --White Moth Egg
			{ itemID = 11027 }, --Wood Frog Box
			{ itemID = 29903 }, --Yellow Moth Egg
		},
	},
	{
		Name = "Quest".." / ".."Crafted",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Quest" },
			{ itemID = 45022 }, --Argent Gruntling
			{ itemID = 44998 }, --Argent Squire
			{ itemID = 35350 }, --Chuck's Bucket
			{ itemID = 33818 }, --Muckbreath's Bucket
			{ itemID = 35349 }, --Snarly's Bucket
			{ itemID = 44983 }, --Strand Crawler
			{ itemID = 33816 }, --Toothy's Bucket
			{ itemID = 19450 }, --A Jubling's Tiny Home
			{ itemID = 11110 }, --Chicken Egg
			{ itemID = 10398 }, --Mechanical Chicken
			{ itemID = 31760 }, --Miniwing
			{ itemID = 12529 }, --Smolderweb Carrier
			{ itemID = 11474 }, --Sprite Darter Egg
			{ itemID = 12264 }, --Worg Carrier
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Crafted" },
			{ itemID = 15996 }, --Lifelike Mechanical Toad
			{ itemID = 11826 }, --Lil' Smoky
			{ itemID = 4401 }, --Mechanical Squirrel Box
			{ itemID = 11825 }, --Pet Bombling
			{ itemID = 21277 }, --Tranquil Mechanical Yeti
		},
	},
	{
		Name = "Rare",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Achievement" },
			{ itemID = 44738 }, --Kirin Tor Familiar
			{ itemID = 44841 }, --Little Fawn's Salt Lick
			{ itemID = 49912 }, --Perky Pug
			{ itemID = 49646 }, --Core Hound Pup
			{ itemID = 40653 }, --Reeking Pet Carrier
			{ itemID = 44810 }, --Turkey Cage
			{ itemID = 44819 }, --Baby Blizzard Bear
			{ itemID = 49362 }, --Onyxian Whelpling
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Faction" },
			{ itemID = 38628 }, --Nether Ray Fry
			{ itemID = 44723 }, --Nurtured Penguin Egg
			{ itemID = 46820 }, --Shimmering Wyrmling
			{ itemID = 46821 }, --Shimmering Wyrmling
			{ itemID = 34478 }, --Tiny Sporebat
			{ itemID = 39898 }, --Cobra Hatchling
			{ itemID = 44721 }, --Proto-Drake Whelp
			{ itemID = 39896 }, --Tickbird Hatchling
			{ itemID = 39899 }, --White Tickbird Hatchling
		},
	},
	{
		Name = "Rare",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."World Drop" },
			{ itemID = 8494 }, --Parrot Cage (Hyacinth Macaw)
			{ itemID = 43698 }, --Giant Sewer Rat
			{ itemID = 34535 }, --Azure Whelpling
			{ itemID = 29960 }, --Captured Firefly
			{ itemID = 8491 }, --Cat Carrier (Black Tabby)
			{ itemID = 10822 }, --Dark Whelpling
			{ itemID = 48112 }, --Darting Hatchling
			{ itemID = 20769 }, --Disgusting Oozeling
			{ itemID = 48116 }, --Gundrak Hatchling
			{ itemID = 48118 }, --Leaping Hatchling
			{ itemID = 27445 }, --Magical Crawdad Box
			{ itemID = 48122 }, --Ravasaur Hatchling
			{ itemID = 48124 }, --Razormaw Hatchling
			{ itemID = 8499 }, --Tiny Crimson Whelpling
		},
		{
			{ itemID = 8498 }, --Tiny Emerald Whelpling
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Dungeon/Raid" },
			{ itemID = 33993, desc = "=q1=" .. "Zul'Aman" }, --Mojo
			{ itemID = 35504, desc = "=q2=" .. "Kael'thas Sunstrider" .. ", =q1=" .. "Magisters' Terrace" }, --Phoenix Hatchling
			{ itemID = 38658, desc = "=q2=" .. "Prince Tenris Mirkblood" .. ", =q1=" .. "Karazhan" }, --Vampiric Batling
			{ itemID = 48114, desc = "=q2=" .. "Deviate Ravager/Deviate Guardian" .. ", =q1=" .. "Wailing Caverns" }, --Deviate Hatchling
			{ itemID = 48126, desc = "=q2=" .. "Razzashi Raptor" .. ", =q1=" .. "Zul'Gurub" }, --Razzashi Hatchling
		},
	},
	{
		Name = "World Events",
		{
			{ itemID = 23083 }, --Captured Flame
			{ itemID = 34425 }, --Clockwork Rocket Bot
			{ itemID = 46545 }, --Curious Oracle Hatchling
			{ itemID = 46544 }, --Curious Wolvar Pup
			{ itemID = 32616 }, --Egbert's Egg
			{ itemID = 32622 }, --Elekk Training Collar
			{ itemID = 53641 }, --Ice Chip
			{ itemID = 46707 }, --Pint-Sized Pink Pachyderm
			{ itemID = 34955 }, --Scorched Stone
			{ itemID = 33154 }, --Sinister Squashling
			{ itemID = 32617 }, --Sleepy Willy
			{ itemID = 44794 }, --Spring Rabbit's Foot
			{ itemID = 32233 }, --Wolpertinger's Tankard
			{ itemID = 50446 }, --Toxic Wasteling
		},
		{
			{ itemID = 21301 }, --Green Helper Box
			{ itemID = 21308 }, --Jingling Bell
			{ itemID = 23007 }, --Piglet's Collar
			{ itemID = 23015 }, --Rat Cage
			{ itemID = 21305 }, --Red Helper Box
			{ itemID = 21309 }, --Snowman Kit
			{ itemID = 22235 }, --Truesilver Shafted Arrow
			{ itemID = 23002 }, --Turtle Box
		},
	},
	{
		Name = "Promotional",
		{
			{ itemID = 34493 }, --Dragon Kite
			{ itemID = 23713 }, --Hippogryph Hatchling
			{ itemID = 49287 }, --Tuskarr Kite
			{ itemID = 32588 }, --Banana Charm
			{ itemID = 20371 }, --Blue Murloc Egg
			{ itemID = 13584 }, --Diablo Stone
			{ itemID = 39286 }, --Frosty's Collar
			{ itemID = 37297 }, --Gold Medallion
			{ itemID = 46802 }, --Heavy Murloc Egg
			{ itemID = 30360 }, --Lurky's Egg
			{ itemID = 45180 }, --Murkimus' Little Spear
			{ itemID = 25535 }, --Netherwhelp's Collar
			{ itemID = 13583 }, --Panda Collar
			{ itemID = 22114 }, --Pink Murloc Egg
			{ itemID = 34492 }, --Rocket Chicken
		},
		{
			{ itemID = 38050 }, --Soul-Trader Beacon
			{ itemID = 49343 }, --Spectral Tiger Cub
			{ itemID = 39656 }, --Tyrael's Hilt
			{ itemID = 41133 }, --Unhatched Mr. Chilly
			{ itemID = 46767 }, --Warbot Ignition Key
			{ itemID = 13582 }, --Zergling Leash
			{ itemID = 56806 }, --Mini Thor
		},
	},
	{
		Name = "Pet Store",
		{
			{ itemID = 49693 }, --Lil' Phylactery
			{ itemID = 54847 }, --Lil' XT
			{ itemID = 49665 }, --Pandaren Monk
			{ itemID = 49663 }, --Wind Rider Cub
			{ itemID = 49662 }, --Gryphon Hatchling
		},
	},
	{
		Name = "Accessories",
		{
			{ itemID = 47541 }, --Argent Pony Bridle
			{ itemID = 35223 }, --Papa Hummel's Old-Fashioned Pet Biscuit
			{ itemID = 37431 }, --Fetch Ball
			{ itemID = 43626 }, --Happy Pet Snack
			{ itemID = 43352 }, --Pet Grooming Kit
			{ itemID = 44820 }, --Red Ribbon Pet Leash
			{ itemID = 37460 }, --Rope Pet Leash
		},
	},
}

--------------
--- Mounts ---
--------------
AtlasLoot_Data["Mounts"] = {
	Module = "AtlasLoot_Vanity",
	Name = "Mounts",
	{
		Name = "Alliance Mounts".." Page 1",
		{
			{ icon = "inv_misc_tournaments_symbol_nightelf", name = AtlasLoot.Colors.WHITE.. "Darnassus" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 18766 }, --Reins of the Swift Frostsaber
			{ itemID = 18767 }, --Reins of the Swift Mistsaber
			{ itemID = 18902 }, --Reins of the Swift Stormsaber
			{ itemID = 8632 }, --Reins of the Spotted Frostsaber
			{ itemID = 47100 }, --Reins of the Striped Dawnsaber
			{ itemID = 8631 }, --Reins of the Striped Frostsaber
			{ itemID = 8629 }, --Reins of the Striped Nightsaber
		},
		{
			{ icon = "inv_misc_tournaments_symbol_gnome", name = AtlasLoot.Colors.WHITE.. "Gnomeregan Exiles" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 18772 }, --Swift Green Mechanostrider
			{ itemID = 18773 }, --Swift Green Mechanostrider
			{ itemID = 18774 }, --Swift Yellow Mechanostrider
			{ itemID = 8595 }, --Blue Mechanostrider
			{ itemID = 13321 }, --Green Mechanostrider
			{ itemID = 8563 }, --Red Mechanostrider
			{ itemID = 13322 }, --Unpainted Mechanostrider
		},
	},
	{
		Name = "Alliance Mounts".." Page 2",
		{
			{ icon = "inv_misc_tournaments_symbol_dwarf", name = AtlasLoot.Colors.WHITE.. "Ironforge" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 18786 }, --Swift Brown Ram
			{ itemID = 18787 }, --Swift Gray Ram
			{ itemID = 18785 }, --Swift Green Ram
			{ itemID = 5872 }, --Brown Ram
			{ itemID = 5864 }, --Gray Ram
			{ itemID = 5873 }, --White Ram
			{ icon = "inv_misc_tournaments_symbol_draenei", name = AtlasLoot.Colors.WHITE.. "Exodar" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 29745 }, --Great Green Elekk
			{ itemID = 29746 }, --Great Green Elekk
			{ itemID = 29747 }, --Great Purple Elekk
			{ itemID = 28481 }, --Brown Elekk
			{ itemID = 29744 }, --Gray Elekk
			{ itemID = 29743 }, --Purple Elekk
		},
		{
			{ icon = "inv_misc_tournaments_symbol_human", name = AtlasLoot.Colors.WHITE.. "Stormwind" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 18777 }, --Swift Brown Steed
			{ itemID = 18776 }, --Swift Palomino
			{ itemID = 18778 }, --Swift Green Steed
			{ itemID = 2411 }, --Black Stallion Bridle
			{ itemID = 5656 }, --Brown Horse Bridle
			{ itemID = 5655 }, --Chestnut Mare Bridle
			{ itemID = 2414 }, --Pinto Bridle
		},
	},
	{
		Name = "Alliance Mounts".." Page 3",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. "Alliance Flying Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 25473 }, --Swift Green Gryphon
			{ itemID = 25528 }, --Swift Green Gryphon
			{ itemID = 25529 }, --Swift Purple Gryphon
			{ itemID = 25527 }, --Swift Red Gryphon
			{ itemID = 25471 }, --Ebon Gryphon
			{ itemID = 25470 }, --Golden Gryphon
			{ itemID = 25472 }, --Snowy Gryphon
			{ itemID = 44225 }, --Reins of the Armored Brown Bear
			{ itemID = 44230 }, --Reins of the Wooly Mammoth
			{ itemID = 44235 }, --Reins of the Traveler's Tundra Mammoth
			{ itemID = 44689 }, --Armored Snowy Gryphon
		},
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. "Kurenai" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 29227 }, --Reins of the Cobalt War Talbuk
			{ itemID = 29229 }, --Reins of the Silver War Talbuk
			{ itemID = 29230 }, --Reins of the Tan War Talbuk
			{ itemID = 29231 }, --Reins of the Green War Talbuk
			{ itemID = 31830 }, --Reins of the Cobalt Riding Talbuk
			{ itemID = 31832 }, --Reins of the Silver Riding Talbuk
			{ itemID = 31834 }, --Reins of the Tan Riding Talbuk
			{ itemID = 31836 }, --Reins of the Green Riding Talbuk
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. "Wintersaber Trainers" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 13086 }, --Reins of the Winterspring Frostsaber
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. "The Silver Covenant" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 46815 }, --Quel'dorei Steed
			{ itemID = 46813 }, --Silver Covenant Hippogryph
		},
	},
	{
		Name = "Horde Mounts".." Page 1",
		{
			{ icon = "inv_misc_tournaments_symbol_orc", name = AtlasLoot.Colors.WHITE.. "Orgrimmar" .. "Mounts", desc = "=ec1=".."Horde" },
			{ itemID = 18796 }, --Horn of the Swift Brown Wolf
			{ itemID = 18798 }, --Horn of the Swift Gray Wolf
			{ itemID = 18797 }, --Horn of the Swift Timber Wolf
			{ itemID = 46099 }, --Horn of the Black Wolf
			{ itemID = 5668 }, --Horn of the Brown Wolf
			{ itemID = 5665 }, --Horn of the Dire Wolf
			{ itemID = 1132 }, --Horn of the Timber Wolf
		},
		{
			{ icon = "inv_misc_tournaments_symbol_bloodelf", name = AtlasLoot.Colors.WHITE.. "Silvermoon City" .. "Mounts", desc = "=ec1=".."Horde" },
			{ itemID = 29223 }, --Swift Green Hawkstrider
			{ itemID = 28936 }, --Swift Pink Hawkstrider
			{ itemID = 29224 }, --Swift Purple Hawkstrider
			{ itemID = 29221 }, --Black Hawkstrider
			{ itemID = 29220 }, --Blue Hawkstrider
			{ itemID = 29222 }, --Purple Hawkstrider
			{ itemID = 28927 }, --Red Hawkstrider
		},
	},
	{
		Name = "Horde Mounts".." Page 2",
		{
			{ icon = "inv_misc_tournaments_symbol_troll", name = AtlasLoot.Colors.WHITE.. "Darkspear Trolls" .. "Mounts", desc = "=ec1=".."Horde" },
			{ itemID = 18788 }, --Swift Green Raptor
			{ itemID = 18789 }, --Swift Olive Raptor
			{ itemID = 18790 }, --Swift AtlasLoot.Colors.ORANGE Raptor
			{ itemID = 8588 }, --Whistle of the Emerald Raptor
			{ itemID = 8591 }, --Whistle of the Turquoise Raptor
			{ itemID = 8592 }, --Whistle of the Violet Raptor
			{ icon = "inv_misc_tournaments_symbol_tauren", name = AtlasLoot.Colors.WHITE.. "Thunder Bluff" .. "Mounts", desc = "=ec1=".."Horde" },
			{ itemID = 18794 }, --Great Brown Kodo
			{ itemID = 18795 }, --Great Gray Kodo
			{ itemID = 18793 }, --Great Green Kodo
			{ itemID = 15290 }, --Brown Kodo
			{ itemID = 15277 }, --Gray Kodo
			{ itemID = 46100 }, --White Kodo
		},
		{
			{ icon = "inv_misc_tournaments_symbol_scourge", name = AtlasLoot.Colors.WHITE.. "Undercity" .. "Mounts", desc = "=ec1=".."Horde" },
			{ itemID = 13334 }, --Green Skeletal Warhorse
			{ itemID = 47101 }, --Ochre Skeletal Warhorse
			{ itemID = 18791 }, --Purple Skeletal Warhorse
			{ itemID = 46308 }, --Black Skeletal Horse
			{ itemID = 13332 }, --Blue Skeletal Horse
			{ itemID = 13333 }, --Brown Skeletal Horse
			{ itemID = 13331 }, --Red Skeletal Horse
		},
	},
	{
		Name = "Horde Mounts".." Page 3",
		{
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.. "Horde Flying Mounts", desc = "=ec1=".."Horde" },
			{ itemID = 25531 }, --Swift Green Wind Rider
			{ itemID = 25533 }, --Swift Purple Wind Rider
			{ itemID = 25477 }, --Swift Red Wind Rider
			{ itemID = 25532 }, --Swift Yellow Wind Rider
			{ itemID = 25475 }, --Blue Wind Rider
			{ itemID = 25476 }, --Green Wind Rider
			{ itemID = 25474 }, --Tawny Wind Rider
			{ itemID = 44226 }, --Reins of the Armored Brown Bear
			{ itemID = 44231 }, --Reins of the Wooly Mammoth
			{ itemID = 44234 }, --Reins of the Traveler's Tundra Mammoth
			{ itemID = 44690 }, --Armored Green Wind Rider
		},
		{
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.. "The Mag'har" .. "Mounts", desc = "=ec1=".."Horde" },
			{ itemID = 29102 }, --Reins of the Cobalt War Talbuk
			{ itemID = 29104 }, --Reins of the Silver War Talbuk
			{ itemID = 29105 }, --Reins of the Tan War Talbuk
			{ itemID = 29103 }, --Reins of the Green War Talbuk
			{ itemID = 31829 }, --Reins of the Cobalt Riding Talbuk
			{ itemID = 31831 }, --Reins of the Silver Riding Talbuk
			{ itemID = 31833 }, --Reins of the Tan Riding Talbuk
			{ itemID = 31835 }, --Reins of the Green Riding Talbuk
			{ icon = "INV_BannerPVP_02", name = "=q6=Ravasaur Trainers ", "=ec1=".."Alliance" },
			{ itemID = 46102 }, --Whistle of the Venomhide Ravasaur
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. "The Sunreavers" .. "Mounts", desc = "=ec1=".."Alliance" },
			{ itemID = 46816 }, --Sunreaver Hawkstrider
			{ itemID = 46814 }, --Sunreaver Dragonhawk
		},
	},
	{
		Name = "Neutral Faction Mounts",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Netherwing" .. "Mounts" },
			{ itemID = 32858 }, --Reins of the Azure Netherwing Drake
			{ itemID = 32859 }, --Reins of the Cobalt Netherwing Drake
			{ itemID = 32857 }, --Reins of the Onyx Netherwing Drake
			{ itemID = 32860 }, --Reins of the Purple Netherwing Drake
			{ itemID = 32861 }, --Reins of the Veridian Netherwing Drake
			{ itemID = 32862 }, --Reins of the Violet Netherwing Drake
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Sha'tari Skyguard" .. "Mounts" },
			{ itemID = 32319 }, --Blue Riding Nether Ray
			{ itemID = 32314 }, --Green Riding Nether Ray
			{ itemID = 32317 }, --Red Riding Nether Ray
			{ itemID = 32316 }, --Purple Riding Nether Ray
			{ itemID = 32318 }, --Silver Riding Nether Ray
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Cenarion Expedition" .. "Mounts" },
			{ itemID = 33999 }, --Cenarion War Hippogryph
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "The Sons of Hodir" .. "Mounts" },
			{ itemID = 43958 }, --Reins of the Ice Mammoth
			{ itemID = 44080 }, --Reins of the Ice Mammoth
			{ itemID = 43961 }, --Reins of the Grand Ice Mammoth
			{ itemID = 44086 }, --Reins of the Grand Ice Mammoth
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "The Wyrmrest Accord" .. "Mounts" },
			{ itemID = 43955 }, --Reins of the Red Drake
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "The Oracles" .. "Mounts" },
			{ itemID = 44707, desc = "Mysterious Egg" }, --Reins of the Green Proto-Drake
		},
	},
	{
		Name = "PvP Mounts",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Arena Reward" },
			{ itemID = 30609 }, --Swift Nether Drake
			{ itemID = 34092 }, --Merciless Nether Drake
			{ itemID = 37676 }, --Vengeful Nether Drake
			{ itemID = 43516 }, --Brutal Nether Drake
			{ itemID = 46171 }, --Deadly Gladiator's Frostwyrm
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Alliance PvP Mounts" },
			{ itemID = 29465 }, --Black Battlestrider
			{ itemID = 29467 }, --Black War Ram
			{ itemID = 29468 }, --Black War Steed Bridle
			{ itemID = 35906 }, --Reins of the Black War Elekk
			{ itemID = 29471 }, --Reins of the Black War Tiger
			{ itemID = 19030 }, --Stormpike Battle Charger
			{ itemID = 43956 }, --Reins of the Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Halaa PvP Mounts" },
			{ itemID = 28915 }, --Reins of the Dark Riding Talbuk
			{ itemID = 29228 }, --Reins of the Dark War Talbuk
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Horde PvP Mounts" },
			{ itemID = 29466 }, --Black War Kodo
			{ itemID = 29469 }, --Horn of the Black War Wolf
			{ itemID = 29470 }, --Red Skeletal Warhorse
			{ itemID = 34129 }, --Swift Warstrider
			{ itemID = 29472 }, --Whistle of the Black War Raptor
			{ itemID = 19029 }, --Horn of the Frostwolf Howler
			{ itemID = 44077 }, --Reins of the Black War Mammoth
		},
	},
	{
		Name = "Rare Mounts".." Page 1",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Dungeon/Raid" },
			{ itemID = 33809 }, --Amani War Bear
			{ itemID = 32458 }, --Ashes of Al'ar
			{ itemID = "49098", desc = "=q1=" .. "Trial of the Crusader" }, --Crusader's Black Warhorse","=q2=" .. "A Tribute to Immortality" .. 
			{ itemID = "49096", desc = "=q1=" .. "Trial of the Crusader" }, --Crusader's Green Warhorse","=q2=" .. "A Tribute to Immortality" .. 
			{ itemID = 13335, desc = "=q2=".."Baron Rivendare"..", =q1=".."Stratholme" }, --Deathcharger's Reins
			{ itemID = 30480, desc = "=q2=".."Attumen the Huntsman"..", =q1=".."Karazhan", "0.25%" }, --Fiery Warhorse's Reins
			{ itemID = 50818, desc = "=q2=" .."The Lich King" .. ", =q1=" .. "Icecrown Citadel" }, --Invincible's Reins
			{ itemID = 45693, desc = "=q2=" .. "Alone in the Darkness" .. ", =q1=" .. "Ulduar" }, --Mimiron's Head
			{ itemID = 43986, desc = "=q2=".."Sartharion"..", =q1=".."10 Man".." ".."The Obsidian Sanctum".." ".."Hard Mode" }, --Reins of the Black Drake
			{ itemID = 43954, desc = "=q2=".."Sartharion"..", =q1=".."25 Man".." ".."The Obsidian Sanctum".." ".."Hard Mode" }, --Reins of the Twilight Drake
			{ itemID = 43953, desc = "=q2=" .. "The Oculus" }, --Reins of the Green Drake
			{ itemID = 43952, desc = "=q2=".."Malygos"..", =q1=".."25 Man".." ".."The Eye of Eternity" }, --Reins of the Azure Drake
			{ itemID = 44151, desc = "=q2=".."Skadi the Ruthless"..", =q1=".."Heroic".." ".."Utgarde Pinnacle" }, --Reins of the Green Proto-Drake
			{ itemID = 43951, desc = "=q2=".."Infinite Corruptor"..", =q1=".."Heroic".." ".."Old Stratholme" }, --Reins of the Bronze Drake
		},
		{
			{ itemID = "52200", desc = "=q1=" .. "Icecrown Citadel" }, --Reins of the Crimson Deathcharger","=q2=" .. "The Lich King" .. 
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 32768, desc = "=q2=".."Anzu"..", =q1=".."Sethekk Halls" }, --Reins of the Raven Lord
			{ itemID = 49046, desc = "=q2=" .. "A Tribute to Insanity (50)" .. ", =q1=" .. "Trial of the Crusader" }, --Swift Horde Wolf --Horde
			{ itemID = 49044, desc = "=q2=" .. "A Tribute to Insanity (50)" .. ", =q1=" .. "Trial of the Crusader" }, --Swift Alliance Steed --Alliance
			{ itemID = 35513, desc = "=q2=".."Crimson Sorcerer"..", =q1=".."Magisters' Terrace" }, --Swift Green Hawkstrider
			{ itemID = 19872, desc = "=q2=".."Bloodlord Mandokir"..", =q1=".."Zul'Gurub", "0.43%" }, --Swift Razzashi Raptor
			{ itemID = 19902, desc = "=q2=".."High Priest Thekal"..", =q1=".."Zul'Gurub", " 0.70%" }, --Swift Zulian Tiger
		},
	},
	{
		Name = "Rare Mounts".." Page 2",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Achievement Reward" },
			{ itemID = 44223 }, --Reins of the Black War Bear
			{ itemID = 44224 }, --Reins of the Black War Bear
			{ itemID = 44843 }, --Blue Dragonhawk Mount
			{ itemID = 44842 }, --Red Dragonhawk Mount
			{ itemID = 44178 }, --Reins of the Albino Drake
			{ itemID = 44164 }, --Reins of the Black Proto-Drake
			{ itemID = 45801 }, --Reins of the Ironbound Proto-Drake
			{ itemID = 44175 }, --Reins of the Plagued Proto-Drake
			{ itemID = 44160 }, --Reins of the Red Proto-Drake
			{ itemID = 45802 }, --Reins of the Rusted Proto-Drake
			{ itemID = 44177 }, --Reins of the Violet Proto-Drake
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Rare Mounts" },
			{ itemID = 44168 }, --Reins of the Time-Lost Proto-Drake
			{ itemID = 46109 }, --Sea Turtle
			{ itemID = 21218, desc = "=q2=".."Trash Mobs"..", =q1=".."Ahn'Qiraj" }, --Blue Qiraji Resonating Crystal
			{ itemID = 21323, desc = "=q2=".."Trash Mobs"..", =q1=".."Ahn'Qiraj" }, --Green Qiraji Resonating Crystal
			{ itemID = 21321, desc = "=q2=".."Trash Mobs"..", =q1=".."Ahn'Qiraj" }, --Red Qiraji Resonating Crystal
			{ itemID = 21324, desc = "=q2=".."Trash Mobs"..", =q1=".."Ahn'Qiraj" }, --Yellow Qiraji Resonating Crystal
		},
	},
	{
		Name = "Rare Mounts".." Page 3",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Quest Reward" },
			{ itemID = 21176, desc = "Quest Reward" }, --Black Qiraji Resonating Crystal
			{ itemID = 43962, desc = "Quest Reward"..": ".."Hyldnir Spoils" }, --Reins of the White Polar Bear
		},
	},
	{
		Name = "Crafted Mounts",
		{
			{ itemID = 54797 }, --Frosty Flying Carpet
			{ itemID = 44558 }, --Magnificent Flying Carpet
			{ itemID = 44413 }, --Mekgineer's Chopper
			{ itemID = 41508 }, --Mechano-hog
			{ itemID = 34061 }, --Turbo-Charged Flying Machine Control
			{ itemID = 44554 }, --Flying Carpet
			{ itemID = 34060 }, --Flying Machine Control
		},
	},
	{
		Name = "Promotional Mounts",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Promotional Mounts" },
			{ itemID = 43599 }, --Big Blizzard Bear
			{ itemID = 37719 }, --Swift Zhevra
			{ itemID = 54860 }, --X-53 Touring Rocket
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Card Game Mounts" },
			{ itemID = 54068 }, --Wooly White Rhino 
			{ itemID = 49282 }, --Big Battle Bear
			{ itemID = 49290 }, --Magic Rooster Egg
			{ itemID = 49284 }, --Reins of the Swift Spectral Tiger
			{ itemID = 23720 }, --Riding Turtle
			{ itemID = 49286 }, --X-51 Nether-Rocket X-TREME
			{ itemID = 49283 }, --Reins of the Spectral Tiger
			{ itemID = 49285 }, --X-51 Nether-Rocket
		},
	},
	{
		Name = "World Events".." Page 1",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.."Alliance" },
			{ itemID = 45591, price = "100 #champseal#" }, --Darnassian Nightsaber
			{ itemID = 45590, price = "100 #champseal#" }, --Exodar Elekk
			{ itemID = 45589, price = "100 #champseal#" }, --Gnomeregan Mechanostrider
			{ itemID = 45586, price = "100 #champseal#" }, --Ironforge Ram
			{ itemID = 45125, price = "100 #champseal#" }, --Stormwind Steed
			{ itemID = 46745, price = "500 #gold# 5 #champseal#" }, --Great Red Elekk
			{ itemID = 46752, price = "500 #gold# 5 #champseal#" }, --Swift Gray Steed
			{ itemID = 46744, price = "500 #gold# 5 #champseal#" }, --Swift Moonsaber
			{ itemID = 46748, price = "500 #gold# 5 #champseal#" }, --Swift Violet Ram
			{ itemID = 46747, price = "500 #gold# 5 #champseal#" }, --Turbostrider
			{ itemID = 47179, price = "100 #champseal#" }, --Argent Charger
			{ itemID = 47180, price = "100 #champseal#" }, --Argent Warhorse
		},
		{
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.."Horde" },
			{ itemID = 45593, price = "100 #champseal#" }, --Darkspear Raptor
			{ itemID = 45597, price = "100 #champseal#" }, --Forsaken Warhorse
			{ itemID = 45595, price = "100 #champseal#" }, --Orgrimmar Wolf
			{ itemID = 45596, price = "100 #champseal#" }, --Silvermoon Hawkstrider
			{ itemID = 45592, price = "100 #champseal#" }, --Thunder Bluff Kodo
			{ itemID = 46750, price = "500 #gold# 5 #champseal#" }, --Great Golden Kodo
			{ itemID = 46749, price = "500 #gold# 5 #champseal#" }, --Swift Burgundy Wolf
			{ itemID = 46743, price = "500 #gold# 5 #champseal#" }, --Swift Purple Raptor
			{ itemID = 46751, price = "500 #gold# 5 #champseal#" }, --Swift Red Hawkstrider
			{ itemID = 46746, price = "500 #gold# 5 #champseal#" }, --White Skeletal Warhorse
			{ itemID = 45725, price = "150 #champseal#" }, --Argent Hippogryph
		},
	},
	{
		Name = "World Events".." Page 2",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Brewfest" },
			{ itemID = 37828, desc = "=q2=".."Headless Horseman" }, --Great Brewfest Kodo
			{ itemID = 33977, desc = "=q2=".."Headless Horseman" }, --Swift Brewfest Ram
			{ itemID = 33976 }, --Brewfest Ram
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Hallow's End" },
			{ itemID = 37012, desc = "=q2=".."Headless Horseman" }, --The Horseman's Reins
			{ itemID = 37011, desc = "=q2=".."Headless Horseman" }, --Magic Broom
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Love is in the Air" },
			{ itemID = 50250 }, --Big Love Rocket
		},
	},
}

