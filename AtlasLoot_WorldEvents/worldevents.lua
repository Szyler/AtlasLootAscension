local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")






-- Index
--- Permanent Events
---- Argent Tournament
--- Seasonal Events
---- Brewfest
---- Children's Week
---- Day of the Dead
---- Feast of Winter Veil
---- Hallow's End
---- Harvest Festival
---- Love is in the Air
---- Lunar Festival
---- Midsummer Fire Festival
---- Noblegarden
---- Pilgrim's Bounty
--- Reaccouring Events
---- Bash'ir Landing Skyguard Raid
---- Darkmoon Faire
---- Elemental Invasion
---- Gurubashi Arena Booty Run
---- Stranglethorn Fishing Extravaganza
--- Triggered Events
---- Abyssal Council
---- Ethereum Prison
---- Shartuul
---- Skettis
--- One Time Events
---- Scourge Invasion

------------------------
--- Permanent Events ---
------------------------

-------------------------
--- Argent Tournament ---
-------------------------

AtlasLoot_Data["ArgentTournament"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Argent Tournament",
	{
		Name = "Miscellaneous",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.."Alliance" },
			{ itemID = 45714, price = "1 #champwrit#" }, --Darnassus Commendation Badge
			{ itemID = 45715, price = "1 #champwrit#" }, --Exodar Commendation Badge
			{ itemID = 45716, price = "1 #champwrit#" }, --Gnomeregan Commendation Badge
			{ itemID = 45717, price = "1 #champwrit#" }, --Ironforge Commendation Badge
			{ itemID = 45718, price = "1 #champwrit#" }, --Stormwind Commendation Badge
			{ itemID = 46114, desc = "=ds=".."Currency" }, --Champion's Writ
		},
		{
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.."Horde" },
			{ itemID = 45719, price = "1 #champwrit#" }, --Orgrimmar Commendation Badge
			{ itemID = 45723, price = "1 #champwrit#" }, --Undercity Commendation Badge
			{ itemID = 45722, price = "1 #champwrit#" }, --Thunder Bluff Commendation Badge
			{ itemID = 45720, price = "1 #champwrit#" }, --Sen'jin Commendation Badge
			{ itemID = 45721, price = "1 #champwrit#" }, --Silvermoon Commendation Badge
		},
	},
	{
		Name = "Tabards" .. " / " .. "Banner",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.."Alliance" },
			{ itemID = 45021, price = "15 #champseal#" }, --Darnassus Banner
			{ itemID = 45020, price = "15 #champseal#" }, --Exodar Banner
			{ itemID = 45019, price = "15 #champseal#" }, --Gnomeregan Banner
			{ itemID = 45018, price = "15 #champseal#" }, --Ironforge Banner
			{ itemID = 45011, price = "15 #champseal#" }, --Stormwind Banner
			{ itemID = 45579, price = "50 #champseal#" }, --Darnassus Tabard
			{ itemID = 45580, price = "50 #champseal#" }, --Exodar Tabard
			{ itemID = 45578, price = "50 #champseal#" }, --Gnomeregan Tabard
			{ itemID = 45577, price = "50 #champseal#" }, --Ironforge Tabard
			{ itemID = 45574, price = "50 #champseal#" }, --Stormwind Tabard
			{ itemID = 46817, price = "50 #champseal#" }, --Silver Covenant Tabard
			{ itemID = 44990 }, --Champion's Seal
		},
		{
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.."Horde" },
			{ itemID = 45014, price = "15 #champseal#" }, --Orgrimmar Banner
			{ itemID = 45016, price = "15 #champseal#" }, --Undercity Banner
			{ itemID = 45013, price = "15 #champseal#" }, --Thunder Bluff Banner
			{ itemID = 45015, price = "15 #champseal#" }, --Sen'jin Banner
			{ itemID = 45017, price = "15 #champseal#" }, --Silvermoon City Banner
			{ itemID = 45581, price = "50 #champseal#" }, --Orgrimmar Tabard
			{ itemID = 45583, price = "50 #champseal#" }, --Undercity Tabard
			{ itemID = 45584, price = "50 #champseal#" }, --Thunder Bluff Tabard
			{ itemID = 45582, price = "50 #champseal#" }, --Sen'jin Tabard
			{ itemID = 45585, price = "50 #champseal#" }, --Silvermoon City Tabard
			{ itemID = 46818, price = "50 #champseal#" }, --Sunreaver Tabard
			{ icon = "INV_Jewelry_Talisman_08", name = AtlasLoot.Colors.WHITE.. "Argent Crusade" },
			{ itemID = 46843, price = "15 #champseal#" }, --Argent Crusade Banner
			{ itemID = 46874, price = "50 #champseal#" }, --Argent Crusader's Tabard
		},
	},
	{
		Name = "Armor",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.."Alliance" },
			{ itemID = 45156, price = "10 #champseal#" }, --Sash of Shattering Hearts
			{ itemID = 45181, price = "10 #champseal#" }, --Wrap of the Everliving Tree
			{ itemID = 45159, price = "10 #champseal#" }, --Treads of Nimble Evasion
			{ itemID = 45184, price = "10 #champseal#" }, --Cinch of Bonded Servitude
			{ itemID = 45183, price = "10 #champseal#" }, --Treads of the Glorious Spirit
			{ itemID = 45182, price = "10 #champseal#" }, --Gauntlets of Shattered Pride
			{ itemID = 45160, price = "10 #champseal#" }, --Girdle of Valorous Defeat
			{ itemID = 45163, price = "10 #champseal#" }, --Stanchions of Unseatable Furor
			{ itemID = 45153, price = "10 #champseal#" }, --Susurrating Shell Necklace
			{ itemID = 45155, price = "10 #champseal#" }, --Choker of Spiral Focus
			{ itemID = 45154, price = "10 #champseal#" }, --Necklace of Valiant Blood
			{ itemID = 45152, price = "10 #champseal#" }, --Pendant of Azure Dreams
			{ itemID = 45131, price = "10 #champseal#" }, --Jouster's Fury
			{ itemID = 44990 }, --Champion's Seal
		},
		{
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.."Horde" },
			{ itemID = 45209, price = "10 #champseal#" }, --Sash of Trumpted Pride
			{ itemID = 45211, price = "10 #champseal#" }, --Waistguard of Equine Fury
			{ itemID = 45220, price = "10 #champseal#" }, --Treads of the Earnest Squire
			{ itemID = 45215, price = "10 #champseal#" }, --Links of Unquenched Savagery
			{ itemID = 45221, price = "10 #champseal#" }, --Treads of Whispering Dreams
			{ itemID = 45216, price = "10 #champseal#" }, --Gauntlets of Mending Touch
			{ itemID = 45217, price = "10 #champseal#" }, --Clinch of Savage Fury
			{ itemID = 45218, price = "10 #champseal#" }, --Blood-Caked Stompers
			{ itemID = 45206, price = "10 #champseal#" }, --Choker of Feral Fury
			{ itemID = 45207, price = "10 #champseal#" }, --Necklace of Stolen Skulls
			{ itemID = 45213, price = "10 #champseal#" }, --Pendant of Emerald Crusader
			{ itemID = 45223, price = "10 #champseal#" }, --Razor's Edge Pendant
			{ itemID = 45219, price = "10 #champseal#" }, --Jouster's Fury
		},
	},
	{
		Name = "Weapons",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.."Alliance" },
			{ itemID = 45078, price = "25 #champseal#" }, --Dagger of Lunar Purity
			{ itemID = 45077, price = "25 #champseal#" }, --Dagger of the Rising Moon
			{ itemID = 45129, price = "25 #champseal#" }, --Gnomeregan Bonechopper
			{ itemID = 45074, price = "25 #champseal#" }, --Claymore of the Prophet
			{ itemID = 45076, price = "25 #champseal#" }, --Teldrassil Protector
			{ itemID = 45075, price = "25 #champseal#" }, --Ironforge Smasher
			{ itemID = 45128, price = "25 #champseal#" }, --Silvery Sylvan Stave
			{ itemID = 45130, price = "25 #champseal#" }, --Blunderbuss of Khaz Modan
			{ itemID = 44990 }, --Champion's Seal
		},
		{
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.."Horde" },
			{ itemID = 45214, price = "25 #champseal#" }, --Scalpel of the Royal Apothecary
			{ itemID = 45222, price = "25 #champseal#" }, --Spinal Destroyer
			{ itemID = 45208, price = "25 #champseal#" }, --Blade of the Keening Banshee
			{ itemID = 45205, price = "25 #champseal#" }, --Greatsword of the Sin'dorei
			{ itemID = 45204, price = "25 #champseal#" }, --Axe of the Sen'jin Protector
			{ itemID = 45203, price = "25 #champseal#" }, --Grimhorn Crusher
			{ itemID = 45212, price = "25 #champseal#" }, --Staff of Feral Furies
			{ itemID = 45210, price = "25 #champseal#" }, --Sen'jin Beakblade Longrifle
		},
	},
	{
		Name = "Vanity Pets",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.."Alliance" },
			{ itemID = 44998, desc = "Quest Reward" }, --Argent Squire
			{ itemID = 44984, price = "40 #champseal#" }, --Ammen Vale Lashling
			{ itemID = 44965, price = "40 #champseal#" }, --Teldrassil Sproutling
			{ itemID = 44970, price = "40 #champseal#" }, --Dun Morogh Cub
			{ itemID = 44974, price = "40 #champseal#" }, --Elwynn Lamb
			{ itemID = 45002, price = "40 #champseal#" }, --Mechanopeep
			{ itemID = 46820, price = "40 #champseal#" }, --Shimmering Wyrmling
			{ icon = "INV_Jewelry_Talisman_08", name = AtlasLoot.Colors.WHITE.. "Argent Crusade" },
			{ itemID = 47541, price = "150 #champseal#" }, --Argent Pony Bridle
			{ itemID = 44990 }, --Champion's Seal
		},
		{
			{ icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.."Horde" },
			{ itemID = 45022, desc = "Quest Reward" }, --Argent Gruntling
			{ itemID = 44980, price = "40 #champseal#" }, --Mulgore Hatchling
			{ itemID = 45606, price = "40 #champseal#" }, --Sen'jin Fetish
			{ itemID = 44971, price = "40 #champseal#" }, --Tirisfal Batling
			{ itemID = 44973, price = "40 #champseal#" }, --Durotar Scorpion
			{ itemID = 44982, price = "40 #champseal#" }, --Enchanted Broom
			{ itemID = 46821, price = "40 #champseal#" }, --Shimmering Wyrmling
		},
	},
	{
		Name = "Mounts",
		{
			{ icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.."Alliance" },
			{ itemID = 45591, price = "100 #champseal#" }, --Darnassian Nightsaber
			{ itemID = 45590, price = "100 #champseal#" }, --Exodar Elekk
			{ itemID = 45589, price = "100 #champseal#" }, --Gnomeregan Mechanostrider
			{ itemID = 45586, price = "100 #champseal#" }, --Ironforge Ram
			{ itemID = 45125, price = "100 #champseal#" }, --Stormwind Steed
			{ itemID = 46745, price = "500 #gold# 5 #champseal#" }, --Great AtlasLoot.Colors.RED Elekk
			{ itemID = 46752, price = "500 #gold# 5 #champseal#" }, --Swift Gray Steed
			{ itemID = 46744, price = "500 #gold# 5 #champseal#" }, --Swift Moonsaber
			{ itemID = 46748, price = "500 #gold# 5 #champseal#" }, --Swift Violet Ram
			{ itemID = 46747, price = "500 #gold# 5 #champseal#" }, --Turbostrider
			{ itemID = 44990 }, --Champion's Seal
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
			{ itemID = 46751, price = "500 #gold# 5 #champseal#" }, --Swift AtlasLoot.Colors.RED Hawkstrider
			{ itemID = 46746, price = "500 #gold# 5 #champseal#" }, --AtlasLoot.Colors.WHITE Skeletal Warhorse
		},
	},
	{
		Name = "Mounts",
		{
			{ icon = "inv_misc_tabardpvp_01", name = AtlasLoot.Colors.WHITE.. "The Silver Covenant", "=ec1=".."Alliance" },
			{ itemID = 46815, price = "100 #champseal#" }, --Quel'dorei Steed
			{ itemID = 46813, price = "150 #champseal#" }, --Silver Covenant Hippogryph
			{ icon = "INV_Jewelry_Talisman_08", name = AtlasLoot.Colors.WHITE.. "Argent Crusade" },
			{ itemID = 47179, price = "100 #champseal#" }, --Argent Charger
			{ itemID = 47180, price = "100 #champseal#" }, --Argent Warhorse
			{ itemID = 45725, price = "150 #champseal#" }, --Argent Hippogryph
			{ itemID = 44990 }, --Champion's Seal
		},
		{
			{ icon = "inv_misc_tabardpvp_02", name = AtlasLoot.Colors.WHITE.. "The Sunreavers", "=ec1=".."Horde" },
			{ itemID = 46816, price = "100 #champseal#" }, --Sunreaver Hawkstrider
			{ itemID = 46814, price = "150 #champseal#" }, --Sunreaver Dragonhawk
		},
	},
}

-----------------------
--- Seasonal Events ---
-----------------------

----------------
--- Brewfest ---
----------------

local brewfest = {}
brewfest.a = {
	Name = "Brewfest" .. " 1",
		{
			{ itemID = 33047, price = "100 #brewfest#" }, --Belbi's Eyesight Enhancing Romance Goggles
			{ itemID = 34008, price = "100 #brewfest#" }, --Blix's Eyesight Enhancing Romance Goggles
			{ itemID = 33968, price = "50 #brewfest#" }, --AtlasLoot.Colors.BLUE Brewfest Hat
			{ itemID = 33864, price = "50 #brewfest#" }, --Brown Brewfest Hat
			{ itemID = 33967, price = "50 #brewfest#" }, --AtlasLoot.Colors.GREEN Brewfest Hat
			{ itemID = 33969, price = "50 #brewfest#" }, --Purple Brewfest Hat
			{ itemID = 33863, price = "200 #brewfest#" }, --Brewfest Dress
			{ itemID = 33862, price = "200 #brewfest#" }, --Brewfest Regalia
			{ itemID = 33868, price = "100 #brewfest#" }, --Brewfest Boots
			{ itemID = 33966, price = "100 #brewfest#" }, --Brewfest Slippers
	},
		{
			{ itemID = 33927, price = "100 #brewfest#" }, --Brewfest Pony Keg
			{ itemID = 46707, price = "100 #brewfest#" }, --Pint-Sized Pink Pachyderm
			{ itemID = 32233, price = "40 #silver#" }, --Wolpertinger's Tankard
			{ itemID = 37599, price = "200 #brewfest#" }, --"Brew of the Month\" Club Membership Form
			{ itemID = 37816, price = "20 #brewfest#" }, --Preserved Brewfest Hops
			{ itemID = 37750, price = "2 #brewfest#" }, --Fresh Brewfest Hops
			{ itemID = 39477, price = "5 #brewfest#" }, --Fresh Dwarven Brewfest Hops
			{ itemID = 39476, price = "5 #brewfest#" }, --Fresh Goblin Brewfest Hops
			{ itemID = 37829 }, --Brewfest Prize Token
	},
}

brewfest.b = {
	Name = "Brewfest" .. " 2",
		{
			{ itemID = 37892 }, --AtlasLoot.Colors.GREEN Brewfest Stein
			{ itemID = 33016 }, --AtlasLoot.Colors.BLUE Brewfest Stein
			{ itemID = 32912 }, --Yellow Brewfest Stein
			{ itemID = 34140 }, --Dark Iron Tankard
			{ itemID = 33976 }, --Brewfest Ram
	},
		{
			{ itemID = 33929 }, --Brewfest Brew
			{ itemID = 34063 }, --Dried Sausage
			{ itemID = 33024 }, --Pickled Sausage
			{ itemID = 38428 }, --Rock-Salted Pretzel
			{ itemID = 33023 }, --Savory Sausage
			{ itemID = 34065 }, --Spiced Onion Cheese
			{ itemID = 33025 }, --Spicy Smoked Sausage
			{ itemID = 34064 }, --Succulent Sausage
			{ itemID = 33043 }, --The Essential Brewfest Pretzel
			{ itemID = 33026 }, --The Golden Link
	},
}

brewfest.c = {
	Name = "Brewfest" .. " 3",
		{
			{ icon = "INV_Cask_04", name = AtlasLoot.Colors.WHITE.."Barleybrew Brewery" },
			{ itemID = 33030 }, --Barleybrew Clear
			{ itemID = 33028 }, --Barleybrew Light
			{ itemID = 33029 }, --Barleybrew Dark
			{ icon = "INV_Cask_04", name = AtlasLoot.Colors.WHITE.."Thunderbrew Brewery" },
			{ itemID = 33031 }, --Thunder 45
			{ itemID = 33032 }, --Thunderbrew Ale
			{ itemID = 33033 }, --Thunderbrew Stout
			{ icon = "INV_Cask_04", name = AtlasLoot.Colors.WHITE.."Gordok Brewery" },
			{ itemID = 33034 }, --Gordok Grog
			{ itemID = 33036 }, --Mudder's Milk
			{ itemID = 33035 }, --Ogre Mead
	},
		{
			{ icon = "INV_Cask_04", name = AtlasLoot.Colors.WHITE.."Drohn's Distillery" },
			{ itemID = 34017 }, --Small Step Brew
			{ itemID = 34018 }, --Long Stride Brew
			{ itemID = 34019 }, --Path of Brew
			{ icon = "INV_Cask_04", name = AtlasLoot.Colors.WHITE.."T'chali's Voodoo Brewery" },
			{ itemID = 34020 }, --Jungle River Water
			{ itemID = 34021 }, --Brewdoo Magic
			{ itemID = 34022 }, --Stout Shrunken Head
	},
}

brewfest.d = {
	Name = "Brew of the Month Club",
		{
			{ itemID = 37488, desc = "=ds=".."January" }, --Wild Winter Pilsner
			{ itemID = 37489, desc = "=ds=".."February" }, --Izzard's Ever Flavor
			{ itemID = 37490, desc = "=ds=".."March" }, --Aromatic Honey Brew
			{ itemID = 37491, desc = "=ds=".."April" }, --Metok's Bubble Bock
			{ itemID = 37492, desc = "=ds=".."May" }, --Springtime Stout
			{ itemID = 37493, desc = "=ds=".."June" }, --Blackrock Lager
	},
		{
			{ itemID = 37494, desc = "=ds=".."July" }, --Stranglethorn Brew
			{ itemID = 37495, desc = "=ds=".."August" }, --Draenic Pale Ale
			{ itemID = 37496, desc = "=ds=".."September" }, --Binary Brew
			{ itemID = 37497, desc = "=ds=".."October" }, --Autumnal Acorn Ale
			{ itemID = 37498, desc = "=ds=".."November" }, --Bartlett's Bitter Brew
			{ itemID = 37499, desc = "=ds=".."December" }, --Lord of Frost's Private Label
	},
}

brewfest.corenCLASSIC = {
	Name = "Coren Direbrew",
		{
			{ itemID = 2037128 }, --Balebrew Charm
			{ itemID = 2037127 }, --Brightbrew Charm
			{ itemID = 2038289 }, --Coren's Lucky Coin
			{ itemID = 2038290 }, --Dark Iron Smoking Pipe
			{ itemID = 2038288 }, --Direbrew Hops
			{ itemID = 2038287 }, --Empty Mug Of Direbrew
			{ itemID = 2037597 }, --Direbrew's Shanker
	},
		{
			{ itemID = 38281 }, --Direbrew's Dire Brew
			{ itemID = 34140 }, --Dark Iron Tankard
			{ itemID = 37828 }, --Great Brewfest Kodo
			{ itemID = 33977 }, --Swift Brewfest Ram
			{ itemID = 37863 }, --Direbrew's Remote
			{ itemID = 38281 }, --Direbrew's Dire Brew
	},
}

brewfest.corenTBC = {
	Name = "Coren Direbrew",
		{
			{ itemID = 37128 }, --Balebrew Charm
			{ itemID = 37127 }, --Brightbrew Charm
			{ itemID = 38289 }, --Coren's Lucky Coin
			{ itemID = 38290 }, --Dark Iron Smoking Pipe
			{ itemID = 38288 }, --Direbrew Hops
			{ itemID = 38287 }, --Empty Mug Of Direbrew
			{ itemID = 37597 }, --Direbrew's Shanker
	},
		{
			{ itemID = 38281 }, --Direbrew's Dire Brew
			{ itemID = 34140 }, --Dark Iron Tankard
			{ itemID = 37828 }, --Great Brewfest Kodo
			{ itemID = 33977 }, --Swift Brewfest Ram
			{ itemID = 37863 }, --Direbrew's Remote
			{ itemID = 38281 }, --Direbrew's Dire Brew
	},
}

brewfest.corenWRATH = {
	Name = "Coren Direbrew",
		{
			{ itemID = 49078 }, --Ancient Pickled Egg
			{ itemID = 49118 }, --Bubbling Balebrew Charm
			{ itemID = 49116 }, --Bitter Brightbrew Charm
			{ itemID = 49080 }, --Brawler's Souvenir
			{ itemID = 49074 }, --Coren's Chromium Coaster
			{ itemID = 49076 }, --Mithril Pocketwatch
			{ itemID = 49120 }, --Direbrew's Shanker 2.0
			{ itemID = 48663 }, --Tankard O' Terror
	},
		{
			{ itemID = 38281 }, --Direbrew's Dire Brew
			{ itemID = 34140 }, --Dark Iron Tankard
			{ itemID = 37828 }, --Great Brewfest Kodo
			{ itemID = 33977 }, --Swift Brewfest Ram
			{ itemID = 37863 }, --Direbrew's Remote
			{ itemID = 38281 }, --Direbrew's Dire Brew
	},
}

AtlasLoot_Data["BrewfestCLASSIC"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Brewfest",
	brewfest.a,
	brewfest.b,
	brewfest.c,
	brewfest.d,
	brewfest.corenCLASSIC,
}

AtlasLoot_Data["BrewfestTBC"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Brewfest",
	brewfest.a,
	brewfest.b,
	brewfest.c,
	brewfest.d,
	brewfest.corenTBC,
}

AtlasLoot_Data["BrewfestWRATH"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Brewfest",
	brewfest.a,
	brewfest.b,
	brewfest.c,
	brewfest.d,
	brewfest.corenWRATH,
}

-----------------------
--- Children's Week ---
-----------------------

AtlasLoot_Data["ChildrensWeek"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Children's Week",
	{
		Name = "Children's Week",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Azeroth" },
			{ itemID = 23007 }, --Piglet's Collar
			{ itemID = 23015 }, --Rat Cage
			{ itemID = 23002 }, --Turtle Box
			{ itemID = 23022 }, --Curmudgeon's Payoff
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Outland" },
			{ itemID = 32616 }, --Egbert's Egg
			{ itemID = 32622 }, --Elekk Training Collar
			{ itemID = 32617 }, --Sleepy Willy
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Northrend" },
			{ itemID = 46545 }, --Curious Oracle Hatchling
			{ itemID = 46544 }, --Curious Wolvar Pup
		},
	},
}

-----------------------
--- Day of the Dead ---
-----------------------

AtlasLoot_Data["DayoftheDead"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Day of the Dead",
	{
		Name = "Day of the Dead",
		{
			{ itemID = 46831 }, --Macabre Marionette
			{ itemID = 46860, price = "5 #copper#" }, --Whimsical Skull Mask
			{ itemID = 46861, price = "1 #gold#" }, --Bouquet of AtlasLoot.Colors.ORANGE Marigolds
			{ itemID = 46690, price = "5 #copper#" }, --Candy Skull
			{ itemID = 46711, price = "30 #copper#" }, --Spirit Candle
			{ itemID = 46718, price = "10 #copper#" }, --AtlasLoot.Colors.ORANGE Marigold
			{ itemID = 46710, price = "20 #silver#" }, --Recipe: Bread of the Dead
			{ itemID = 46691 }, --Bread of the Dead
		},
	},
}

----------------------------
--- Feast of Winter Veil ---
----------------------------

AtlasLoot_Data["Winterviel"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Feast of Winter Veil",
	{
		Name = "Miscellaneous",
		{
			{ itemID = 21525 }, --AtlasLoot.Colors.GREEN Winter Hat
			{ itemID = 21524 }, --AtlasLoot.Colors.RED Winter Hat
			{ itemID = 17712 }, --Winter Veil Disguise Kit
			{ itemID = 17202 }, --Snowball
			{ itemID = 34191 }, --Handful of Snowflakes
			{ itemID = 21212 }, --Fresh Holly
			{ itemID = 21519 }, --Mistletoe
			{ icon = "INV_Holiday_Christmas_Present_01", name = AtlasLoot.Colors.WHITE.."Smokywood Pastures Vendor" },
			{ itemID = 34262 }, --Pattern: Winter Boots
			{ itemID = 34319 }, --Pattern: AtlasLoot.Colors.RED Winter Clothes
			{ itemID = 34261 }, --Pattern: AtlasLoot.Colors.GREEN Winter Clothes
			{ itemID = 34413 }, --Recipe: Hot Apple Cider
			{ itemID = 17201 }, --Recipe: Egg Nog
			{ itemID = 17200 }, --Recipe: Gingerbread Cookie
		},
		{
			{ itemID = 17344 }, --Candy Cane
			{ itemID = 17406 }, --Holiday Cheesewheel
			{ itemID = 17407 }, --Graccu's Homemade Meat Pie
			{ itemID = 17408 }, --Spicy Beefstick
			{ itemID = 34410 }, --Honeyed Holiday Ham
			{ itemID = 17404 }, --Blended Bean Brew
			{ itemID = 17405 }, --AtlasLoot.Colors.GREEN Garden Tea
			{ itemID = 34412 }, --Sparkling Apple Cider
			{ itemID = 17196 }, --Holiday Spirits
			{ itemID = 17403 }, --Steamwheedle Fizzy Spirits
			{ itemID = 17402 }, --Greatfather's Winter Ale
			{ itemID = 17194 }, --Holiday Spices
			{ itemID = 17303 }, --AtlasLoot.Colors.BLUE Ribboned Wrapping Paper
			{ itemID = 17304 }, --AtlasLoot.Colors.GREEN Ribboned Wrapping Paper
			{ itemID = 17307 }, --Purple Ribboned Wrapping Paper
		},
	},
	{
		Name = "Presents",
		{
			{ icon = "INV_Holiday_Christmas_Present_01", name = AtlasLoot.Colors.WHITE.."Gaily Wrapped Present" },
			{ itemID = 21301 }, --AtlasLoot.Colors.GREEN Helper Box
			{ itemID = 21308 }, --Jingling Bell
			{ itemID = 21305 }, --AtlasLoot.Colors.RED Helper Box
			{ itemID = 21309 }, --Snowman Kit
			{ icon = "INV_Holiday_Christmas_Present_01", name = AtlasLoot.Colors.WHITE.."Festive Gift" },
			{ itemID = 21328 }, --Wand of Holiday Cheer
			{ icon = "INV_Holiday_Christmas_Present_01", name = "Winter Veil Gift" },
			{ itemID = 34425 }, --Clockwork Rocket Bot
			{ icon = "INV_Holiday_Christmas_Present_01", name = AtlasLoot.Colors.WHITE.."Gently Shaken Gift" },
			{ itemID = 21235 }, --Winter Veil Roast
			{ itemID = 21241 }, --Winter Veil Eggnog
		},
		{
			{ icon = "INV_Holiday_Christmas_Present_01", name = AtlasLoot.Colors.WHITE.."Festive Gift" },
			{ itemID = 21325 }, --Mechanical Greench
			{ itemID = 21213 }, --Preserved Holly
			{ itemID = 17706 }, --Plans: Edge of Winter
			{ itemID = 17725 }, --Formula: Enchant Weapon - Winter's Might
			{ itemID = 17720 }, --Schematic: Snowmaster 9000
			{ itemID = 17722 }, --Pattern: Gloves of the Greatfather
			{ itemID = 17709 }, --Recipe: Elixir of Frost Power
			{ itemID = 17724 }, --Pattern: AtlasLoot.Colors.GREEN Holiday Shirt
			{ icon = "INV_Holiday_Christmas_Present_01", name = "Carefully Wrapped Present" },
			{ itemID = 21254 }, --Winter Veil Cookie
			{ icon = "INV_Holiday_Christmas_Present_01", name = "Smokywood Pastures Extra-Special Gift" },
			{ itemID = 21215 }, --Graccu's Mince Meat Fruitcake
		},
	},
}

--------------------
--- Hallow's End ---
--------------------
local HorsemanCLASSIC = {
	Name = "Headless Horseman",
	{
		{ itemID = 2033808 }, --The Horseman's Helm
		{ itemID = 2034075 }, --Ring of Ghoulish Delight
		{ itemID = 2034073 }, --The Horseman's Signet Ring
		{ itemID = 2034074 }, --Witching Band
		{ itemID = 2038175 }, --The Horseman's Blade
	},
	{
		{ itemID = 34068 }, --Weighted Jack-o'-Lantern
		{ itemID = 33226 }, --Tricky Treat
		{ itemID = 37012 }, --The Horseman's Reins
		{ itemID = 37011 }, --Magic Broom
		{ itemID = 33292 }, --Hallowed Helm
		{ itemID = 33154 }, --Sinister Squashling
	},
}

local HorsemanTBC = {
	Name = "Headless Horseman",
	{
		{ itemID = 33808 }, --The Horseman's Helm
		{ itemID = 34075 }, --Ring of Ghoulish Delight
		{ itemID = 34073 }, --The Horseman's Signet Ring
		{ itemID = 34074 }, --Witching Band
		{ itemID = 38175 }, --The Horseman's Blade
	},
	{
		{ itemID = 34068 }, --Weighted Jack-o'-Lantern
		{ itemID = 33226 }, --Tricky Treat
		{ itemID = 37012 }, --The Horseman's Reins
		{ itemID = 37011 }, --Magic Broom
		{ itemID = 33292 }, --Hallowed Helm
		{ itemID = 33154 }, --Sinister Squashling
	},
}

local HorsemanWRATH = {
	Name = "Headless Horseman",
	{
		{ itemID = 49126 }, --The Horseman's Horrific Helm
		{ itemID = 49121 }, --Ring of Ghoulish Glee
		{ itemID = 49123 }, --The Horseman's Seal
		{ itemID = 49124 }, --Wicked Witch's Band
		{ itemID = 49128 }, --The Horseman's Baleful Blade
	},
	{
		{ itemID = 34068 }, --Weighted Jack-o'-Lantern
		{ itemID = 33226 }, --Tricky Treat
		{ itemID = 37012 }, --The Horseman's Reins
		{ itemID = 37011 }, --Magic Broom
		{ itemID = 33292 }, --Hallowed Helm
		{ itemID = 33154 }, --Sinister Squashling
	},
}

local HallowsEnd = {
	Name = "Miscellaneous",
	{
		{ itemID = 33117 }, --Jack-o'-Lantern
		{ itemID = 20400 }, --Pumpkin Bag
		{ itemID = 33189 }, --Rickety Magic Broom
		{ itemID = 18633 }, --Styleen's Sour Suckerpop
		{ itemID = 18632 }, --Moonbrook Riot Taffy
		{ itemID = 18635 }, --Bellara's Nutterbar
		{ itemID = 20557 }, --Hallow's End Pumpkin Treat
		{ icon = "inv_gauntlets_06", name = "Handful of Candy" },
		{ itemID = 37585 }, --Chewy Fel Taffy
		{ itemID = 37583 }, --G.N.E.R.D.S.
		{ itemID = 37582 }, --Pyroblast Cinnamon Ball
		{ itemID = 37584 }, --Soothing Spearmint Candy
	},
	{
		{ icon = "INV_Misc_Bag_11", name = "=q6=#".."Treat Bag" },
		{ itemID = 33292 }, --Hallowed Helm
		{ itemID = 33154 }, --Sinister Squashling
		{ itemID = 20410 }, --Hallowed Wand - Bat
		{ itemID = 20409 }, --Hallowed Wand - Ghost
		{ itemID = 20399 }, --Hallowed Wand - Leper Gnome
		{ itemID = 20398 }, --Hallowed Wand - Ninja
		{ itemID = 20397 }, --Hallowed Wand - Pirate
		{ itemID = 20413 }, --Hallowed Wand - Random
		{ itemID = 20411 }, --Hallowed Wand - Skeleton
		{ itemID = 20414 }, --Hallowed Wand - Wisp
		{ itemID = 20389 }, --Candy Corn
		{ itemID = 20388 }, --Lollipop
		{ itemID = 20390 }, --Candy Bar
	},
}

local HallowsEndMasks = {
	Name = "Masks",
	{
		{ icon = "INV_Misc_Bag_11", name = AtlasLoot.Colors.WHITE.."Treat Bag" },
		{ itemID = 34003 }, --Flimsy Male Draenei Mask
		{ itemID = 20561 }, --Flimsy Male Dwarf Mask
		{ itemID = 20391 }, --Flimsy Male Gnome Mask
		{ itemID = 20566 }, --Flimsy Male Human Mask
		{ itemID = 20564 }, --Flimsy Male Nightelf Mask
		{ itemID = 34002 }, --Flimsy Male Blood Elf Mask
		{ itemID = 20570 }, --Flimsy Male Orc Mask
		{ itemID = 20572 }, --Flimsy Male Tauren Mask
		{ itemID = 20568 }, --Flimsy Male Troll Mask
		{ itemID = 20573 }, --Flimsy Male Undead Mask
	},
	{
		{ itemID = 34001 }, --Flimsy Female Draenei Mask
		{ itemID = 20562 }, --Flimsy Female Dwarf Mask
		{ itemID = 20392 }, --Flimsy Female Gnome Mask
		{ itemID = 20565 }, --Flimsy Female Human Mask
		{ itemID = 20563 }, --Flimsy Female Nightelf Mask
		{ itemID = 34000 }, --Flimsy Female Blood Elf Mask
		{ itemID = 20569 }, --Flimsy Female Orc Mask
		{ itemID = 20571 }, --Flimsy Female Tauren Mask
		{ itemID = 20567 }, --Flimsy Female Troll Mask
		{ itemID = 20574 }, --Flimsy Female Undead Mask
	},
}

AtlasLoot_Data["HalloweenCLASSIC"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Hallow's End",
	HallowsEnd,
	HallowsEndMasks,
	HorsemanCLASSIC,
}

AtlasLoot_Data["HalloweenTBC"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Hallow's End",
	HallowsEnd,
	HallowsEndMasks,
	HorsemanTBC,
}

AtlasLoot_Data["HalloweenWRATH"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Hallow's End",
	HallowsEnd,
	HallowsEndMasks,
	HorsemanWRATH,
}

------------------------
--- Harvest Festival ---
------------------------

AtlasLoot_Data["HarvestFestival"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Harvest Festival",
	{
		Name = "Harvest Festival",
		{
			{ itemID = 19697 }, --Bounty of the Harvest
			{ itemID = 20009 }, --For the Light!
			{ itemID = 20010 }, --The Horde's Hellscream
			{ itemID = 19995 }, --Harvest Boar
			{ itemID = 19996 }, --Harvest Fish
			{ itemID = 19994 }, --Harvest Fruit
			{ itemID = 19997 }, --Harvest Nectar
		},
	},
}

--------------------------
--- Love is in the Air ---
--------------------------

AtlasLoot_Data["Valentineday"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Love is in the Air",
	{
		Name = "Page 1",
		{
			{ itemID = 34480, price = "10 #valentineday#" }, --Romantic Picnic Basket
			{ itemID = 21815, price = "1 #valentineday2#" }, --Love Token
			{ itemID = 50163, price = "5 #valentineday#" }, --Lovely Rose
			{ itemID = 22218, price = "2 #valentineday#" }, --Handful of Rose Petals
			{ itemID = 22200, price = "5 #valentineday#" }, --Silver Shafted Arrow
			{ itemID = 22235, price = "40 #valentineday#" }, --Truesilver Shafted Arrow
			{ itemID = 21813, price = "2 #valentineday#" }, --Bag of Heart Candies
			{ itemID = 21812, price = "10 #valentineday#" }, --Box of Chocolates
			{ itemID = 50160, price = "20 #valentineday#" }, --Lovely Dress Box
			{ itemID = 50161, price = "20 #valentineday#" }, --Dinner Suit Box
			{ itemID = 34258, price = "5 #valentineday#" }, --Love Rocket
			{ itemID = 22261, price = "10 #valentineday#" }, --Love Fool
		},
		{
			{ itemID = 49859, price = "1 #valentineday#" }, --"Bravado\" Cologne
			{ itemID = 49861, price = "1 #valentineday#" }, --"STALWART\" Cologne
			{ itemID = 49860, price = "1 #valentineday#" }, --"Wizardry\" Cologne
			{ itemID = 49856, price = "1 #valentineday#" }, --"VICTORY\" Perfume
			{ itemID = 49858, price = "1 #valentineday#" }, --"Forever\" Perfume
			{ itemID = 49857, price = "1 #valentineday#" }, --"Enchantress\" Perfume
			{ itemID = 21815 }, --Love Token
			{ itemID = 49916 }, --Lovely Charm Bracelet
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "INV_Box_02", name = AtlasLoot.Colors.WHITE.. "Lovely Dress Box" },
			{ itemID = 22279 }, --Lovely Black Dress
			{ itemID = 22276 }, --Lovely AtlasLoot.Colors.RED Dress
			{ itemID = 22278 }, --Lovely AtlasLoot.Colors.BLUE Dress
			{ itemID = 22280 }, --Lovely Purple Dress
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Dinner Suit Box" },
			{ itemID = 22277 }, --AtlasLoot.Colors.RED Dinner Suit
			{ itemID = 22281 }, --AtlasLoot.Colors.BLUE Dinner Suit
			{ itemID = 22282 }, --Purple Dinner Suit
		},
		{
			{ icon = "INV_ValentinesBoxOfChocolates02", name = AtlasLoot.Colors.WHITE.."Box of Chocolates" },
			{ itemID = 22237 }, --Dark Desire
			{ itemID = 22238 }, --Very Berry Cream
			{ itemID = 22236 }, --Buttermilk Deligh
			{ itemID = 22239 }, --Sweet Surprise 
			{ icon = "inv_valentinescandysack", name = AtlasLoot.Colors.WHITE.. "Bag of Heart Candies" },
			{ itemID = 21816 }, --Heart Candy
			{ itemID = 21817 }, --Heart Candy
			{ itemID = 21818 }, --Heart Candy
			{ itemID = 21819 }, --Heart Candy
			{ itemID = 21820 }, --Heart Candy
			{ itemID = 21821 }, --Heart Candy
			{ itemID = 21822 }, --Heart Candy
			{ itemID = 21823 }, --Heart Candy
		},
	},
	{
		Name = "Page 3",
		{
			{ itemID = 51804 }, --Winking Eye of Love
			{ itemID = 51805 }, --Heartbreak Charm
			{ itemID = 51806 }, --Shard of Pirouetting Happiness
			{ itemID = 51807 }, --Sweet Perfume Broach
			{ itemID = 51808 }, --Choker of the Pure Heart
			{ itemID = 49715 }, --Forever-Lovely Rose
			{ itemID = 50741 }, --Vile Fumigator's Mask
		},
		{
			{ itemID = 50446 }, --Toxic Wasteling
			{ itemID = 50471 }, --The Heartbreaker
			{ itemID = 50250 }, --Big Love Rocket
		},
	},
}

----------------------
--- Lunar Festival ---
----------------------

AtlasLoot_Data["LunarFestival"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Lunar Festival",
	{
		Name = "Miscellaneous",
		{
			{ itemID = 21540 }, --Elune's Lantern
			{ itemID = 21157 }, --Festive AtlasLoot.Colors.GREEN Dress
			{ itemID = 21538 }, --Festive Pink Dress
			{ itemID = 21539 }, --Festive Purple Dress
			{ itemID = 21541 }, --Festive Black Pant Suit
			{ itemID = 21544 }, --Festive AtlasLoot.Colors.BLUE Pant Suit
			{ itemID = 21543 }, --Festive Teal Pant Suit
			{ itemID = 21537 }, --Festival Dumplings
			{ itemID = 21713 }, --Elune's Candle
			{ itemID = 21100 }, --Coin of Ancestry
		},
		{
			{ icon = "INV_Box_02", name = "Lunar Festival Fireworks Pack" },
			{ itemID = 21558 }, --Small AtlasLoot.Colors.BLUE Rocket
			{ itemID = 21559 }, --Small AtlasLoot.Colors.GREEN Rocket
			{ itemID = 21557 }, --Small AtlasLoot.Colors.RED Rocket
			{ itemID = 21561 }, --Small AtlasLoot.Colors.WHITE Rocket
			{ itemID = 21562 }, --Small Yellow Rocket
			{ itemID = 21589 }, --Large AtlasLoot.Colors.BLUE Rocket
			{ itemID = 21590 }, --Large AtlasLoot.Colors.GREEN Rocket
			{ itemID = 21592 }, --Large AtlasLoot.Colors.RED Rocket
			{ itemID = 21593 }, --Large AtlasLoot.Colors.WHITE Rocket
			{ itemID = 21595 }, --Large Yellow Rocket
			{ icon = "INV_Misc_LuckyMoneyEnvelope", name = "Lucky AtlasLoot.Colors.RED Envelope" },
			{ itemID = 21744 }, --Lucky Rocket Cluster
			{ itemID = 21745 }, --Elder's Moonstone
		},
	},
	{
		Name = "Crafting Patterns",
		{
			{ itemID = 21738 }, --Schematic: Firework Launcher 
			{ icon = "INV_Scroll_03", name = "Small Rocket Recipes" },
			{ itemID = 21724 }, --Schematic: Small AtlasLoot.Colors.BLUE Rocket
			{ itemID = 21725 }, --Schematic: Small AtlasLoot.Colors.GREEN Rocket
			{ itemID = 21726 }, --Schematic: Small AtlasLoot.Colors.RED Rocket
			{ icon = "INV_Scroll_04", name = "Large Rocket Recipes" },
			{ itemID = 21727 }, --Schematic: Large AtlasLoot.Colors.BLUE Rocket
			{ itemID = 21728 }, --Schematic: Large AtlasLoot.Colors.GREEN Rocket
			{ itemID = 21729 }, --Schematic: Large AtlasLoot.Colors.RED Rocket
			{ itemID = 21722 }, --Pattern: Festival Dress
		},
		{
			{ itemID = 21737 }, --Schematic: Cluster Launcher
			{ icon = "INV_Scroll_05", name = "Cluster Rocket Recipes" },
			{ itemID = 21730 }, --Schematic: AtlasLoot.Colors.BLUE Rocket Cluster
			{ itemID = 21731 }, --Schematic: AtlasLoot.Colors.GREEN Rocket Cluster
			{ itemID = 21732 }, --Schematic: AtlasLoot.Colors.RED Rocket Cluster
			{ icon = "INV_Scroll_06", name = "Large Cluster Rocket Recipes" },
			{ itemID = 21733 }, --Schematic: Large AtlasLoot.Colors.BLUE Rocket Cluster
			{ itemID = 21734 }, --Schematic: Large AtlasLoot.Colors.GREEN Rocket Cluster
			{ itemID = 21735 }, --Schematic: Large AtlasLoot.Colors.RED Rocket Cluster
			{ itemID = 21723 }, --Pattern: Festival Suit
		},
	},
}

-------------------------------
--- Midsummer Fire Festival ---
-------------------------------

local lordAhuneTBC = {
	Name = "Lord Ahune",
	{
		{ itemID = 35507 }, --Amulet of Bitter Hatred
		{ itemID = 35509 }, --Amulet of Glacial Tranquility
		{ itemID = 35508 }, --Choker of the Arctic Flow
		{ itemID = 35511 }, --Hailstone Pendant
		{ itemID = 35498 }, --Formula: Enchant Weapon - Deathfrost
		{ itemID = 34955 }, --Scorched Stone
		{ itemID = 35723 }, --Shards of Ahune
		{ itemID = 35279 }, --Tabard of Summer Skies
		{ itemID = 35280 }, --Tabard of Summer Flames
	},
	{
		{ itemID = 35497 }, --Cloak of the Frigid Winds
		{ itemID = 35496 }, --Icebound Cloak
		{ itemID = 35494 }, --Shroud of Winter's Chill
		{ itemID = 35495 }, --The Frost Lord's War Cloak
		{ itemID = 35514 }, --Frostscythe of Lord Ahune
	},
}

local lordAhuneWRATH = {
	Name = "Lord Ahune",
	{
		{ itemID = 54805 }, --Cloak of the Frigid Winds
		{ itemID = 54801 }, --Icebound Cloak
		{ itemID = 54804 }, --Shroud of Winter's Chill
		{ itemID = 54803 }, --The Frost Lord's Battle Shroud
		{ itemID = 54802 }, --The Frost Lord's War Cloak
		{ itemID = 35498 }, --Formula: Enchant Weapon - Deathfrost
		{ itemID = 35723 }, --Shards of Ahune
		{ itemID = 35279 }, --Tabard of Summer Skies
		{ itemID = 35280 }, --Tabard of Summer Flames
	},
	{
		{ itemID = 54536 }, --Satchel of Chilled Goods
		{ itemID = 54806 }, --Frostscythe of Lord Ahune
		{ itemID = 53641 }, --Ice Chip
	},
}

local midSummerMain = {
	Name = "Midsummer Fire Festival",
	{
		{ itemID = 34686, price = "350 #fireflower#" }, --Brazier of Dancing Flames
		{ itemID = 23083, price = "350 #fireflower#" }, --Captured Flame
		{ itemID = 23379 }, --Cinder Bracers
		{ itemID = 23246, price = "2 #fireflower#" }, --Fiery Festival Brew
		{ itemID = 23435, price = "5 #fireflower#" }, --Elderberry Pie
		{ itemID = 23327, price = "5 #fireflower#" }, --Fire-toasted Bun
		{ itemID = 23326, price = "5 #fireflower#" }, --Midsummer Sausage
		{ itemID = 23211, price = "5 #fireflower#" }, --Toasted Smorc
		{ itemID = 34684, price = "2 #fireflower#" }, --Handful of Summer Petals
		{ itemID = 23215, price = "5 #fireflower#" }, --Bag of Smorc Ingredients
		{ itemID = 34599, price = "5 #fireflower#" }, --Juggling Torch
		{ itemID = 23247 }, --Burning Blossom
	},
	{
		{ itemID = 23323 }, --Crown of the Fire Festival
		{ itemID = 23324, price = "100 #fireflower#" }, --Mantle of the Fire Festival
		{ itemID = 34685, price = "100 #fireflower#" }, --Vestment of Summer
		{ itemID = 34683, price = "200 #fireflower#" }, --Sandals of Summer
	},
}

AtlasLoot_Data["MidsummerFestivalCLASSIC"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Midsummer Fire Festival",
	midSummerMain,
}

AtlasLoot_Data["MidsummerFestivalTBC"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Midsummer Fire Festival",
	midSummerMain,
	lordAhuneTBC,
}

AtlasLoot_Data["MidsummerFestivalWRATH"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Midsummer Fire Festival",
	midSummerMain,
	lordAhuneWRATH,
}

-------------------
--- Noblegarden ---
-------------------

AtlasLoot_Data["Noblegarden"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Noblegarden",
	{
		Name = "Noblegarden",
		{
			{ itemID = 44793, price = "100 #noblegarden#" }, --Tome of Polymorph: Rabbit
			{ itemID = 44794, price = "100 #noblegarden#" }, --Spring Rabbit's Foot
			{ itemID = 44803, price = "50 #noblegarden#" }, --Spring Circlet
			{ itemID = 19028, price = "50 #noblegarden#" }, --Elegant Dress
			{ itemID = 44800, price = "50 #noblegarden#" }, --Spring Robes
			{ itemID = 45073, price = "50 #noblegarden#" }, --Spring Flowers
			{ itemID = 6833, price = "25 #noblegarden#" }, --AtlasLoot.Colors.WHITE Tuxedo Shirt
			{ itemID = 6835, price = "25 #noblegarden#" }, --Black Tuxedo Pants
			{ itemID = 44792, price = "10 #noblegarden#" }, --Blossoming Branch
			{ itemID = 44818, price = "5 #noblegarden#" }, --Noblegarden Egg
			{ itemID = 45067 }, --Egg Basket
			{ itemID = 44791 }, --Noblegarden Chocolate
		},
	},
}
------------------------
--- Pilgrim's Bounty ---
------------------------

AtlasLoot_Data["PilgrimsBounty"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Pilgrim's Bounty",
	{
		Name = "Pilgrim's Bounty",
		{
			{ itemID = 46809 }, --Bountiful Cookbook
			{ itemID = 44860 }, --Recipe: Spice Bread Stuffing
			{ itemID = 44862 }, --Recipe: Pumpkin Pie
			{ itemID = 44858 }, --Recipe: Cranberry Chutney
			{ itemID = 44859 }, --Recipe: Candied Sweet Potato
			{ itemID = 44861 }, --Recipe: Slow-Roasted Turkey
			{ itemID = 46888 }, --Bountiful Basket
			{ itemID = 44855 }, --Teldrassil Sweet Potato
			{ itemID = 44854 }, --Tangy Wetland Cranberries
			{ itemID = 46784 }, --Ripe Elwynn Pumpkin
			{ itemID = 44835 }, --Autumnal Herbs
			{ itemID = 44853 }, --Honey
		},
		{
			{ itemID = 44810 }, --Turkey Cage
			{ itemID = 46723 }, --Pilgrim's Hat
			{ itemID = 46800 }, --Pilgrim's Attire
			{ itemID = 44785 }, --Pilgrim's Dress
			{ itemID = 46824 }, --Pilgrim's Robe
			{ itemID = 44788 }, --Pilgrim's Boots
			{ itemID = 44844 }, --Turkey Caller
		},
	},
}

--------------------------
--- Reaccouring Events ---
--------------------------

-------------------------------------
--- Bash'ir Landing Skyguard Raid ---
-------------------------------------

AtlasLoot_Data["BashirLanding"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Bash'ir Landing Skyguard",
	{
		Name = "Bash'ir Landing Skyguard Raid",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Phase 1", desc = "=q1=".."Aether-tech Assistant" },
			{ itemID = 32596 }, --Unstable Flask of the Elder
			{ itemID = 32600 }, --Unstable Flask of the Physician
			{ itemID = 32599 }, --Unstable Flask of the Bandit
			{ itemID = 32597 }, --Unstable Flask of the Soldier
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Phase 2", desc = "=q1=".."Aether-tech Adept" },
			{ itemID = 32634 }, --Unstable Amethyst
			{ itemID = 32637 }, --Unstable Citrine
			{ itemID = 32635 }, --Unstable Peridot
			{ itemID = 32636 }, --Unstable Sapphire
			{ itemID = 32639 }, --Unstable Talasite
			{ itemID = 32638 }, --Unstable Topaz
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Phase 3", desc = "=q1=".."Aether-tech Master" },
			{ itemID = 32641 }, --Imbued Unstable Diamond
			{ itemID = 32640 }, --Potent Unstable Diamond
			{ itemID = 32759 }, --Accelerator Module
			{ itemID = 32630 }, --Small Gold Metamorphosis Geode
			{ itemID = 32631 }, --Small Silver Metamorphosis Geode
			{ itemID = 32627 }, --Small Copper Metamorphosis Geode
			{ itemID = 32625 }, --Small Iron Metamorphosis Geode
			{ itemID = 32629 }, --Large Gold Metamorphosis Geode
			{ itemID = 32628 }, --Large Silver Metamorphosis Geode
			{ itemID = 32626 }, --Large Copper Metamorphosis Geode
			{ itemID = 32624 }, --Large Iron Metamorphosis Geode
		},
	},
}
----------------------
--- Darkmoon Faire ---
----------------------

AtlasLoot_Data["Darkmoon"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Darkmoon Faire",
	{
		Name = "Darkmoon Faire Rewards",
		{
			{ itemID = 19491, price = "1200 #darkmoon#" }, --Amulet of the Darkmoon
			{ itemID = 19426, price = "1200 #darkmoon#" }, --Orb of the Darkmoon
			{ itemID = 19296, price = "40 #darkmoon#" }, --Greater Darkmoon Prize
			{ itemID = 19297, price = "12 #darkmoon#" }, --Lesser Darkmoon Prize
			{ itemID = 19298, price = "5 #darkmoon#" }, --Minor Darkmoon Prize
			{ itemID = 19291, price = "50 #darkmoon#" }, --Darkmoon Storage Box
			{ itemID = 19293, price = "50 #darkmoon#" }, --Last Year's Mutton
			{ itemID = 22729, price = "40 #darkmoon#" }, --Schematic: Steam Tonk Controller
			{ itemID = 19292, price = "10 #darkmoon#" }, --Last Month's Mutton
			{ itemID = 19295, price = "5 #darkmoon#" }, --Darkmoon Flower
			{ itemID = 19182 }, --Darkmoon Faire Prize Ticket
		},
		{
			{ itemID = 19302 }, --Darkmoon Ring
			{ itemID = 19303 }, --Darkmoon Necklace
			{ itemID = 11026 }, --Tree Frog Box
			{ itemID = 11027 }, --Wood Frog Box
			{ itemID = 19450 }, --A Jubling's Tiny Home
		},
	},
	{
		Name = "Low Level Decks",
		{
			{ itemID = 37163 }, --Rogues Deck
			{ itemID = 38318 }, --Darkmoon Robe
			{ itemID = 39509 }, --Darkmoon Vest
			{ itemID = 39507 }, --Darkmoon Chain Shirt
			{ itemID = 37164 }, --Swords Deck
			{ itemID = 39894 }, --Darkcloth Shoulders
			{ itemID = 39895 }, --Cloaked Shoulderpads
			{ itemID = 39897 }, --Azure Shoulderguards
		},
		{
			{ itemID = 44148 }, --Mages Deck
			{ itemID = 44215 }, --Darkmoon Necklace
			{ itemID = 44213 }, --Darkmoon Pendant
			{ itemID = 44158 }, --Demons Deck
			{ itemID = 44217 }, --Darkmoon Dirk
			{ itemID = 44218 }, --Darkmoon Executioner
			{ itemID = 44219 }, --Darkmoon Magestaff
		},
	},
	{
		Name = "Original and BC Trinkets",
		{
			{ itemID = 19228 }, --Beasts Deck
			{ itemID = 19288 }, --Darkmoon Card: AtlasLoot.Colors.BLUE Dragon
			{ itemID = 19267 }, --Elementals Deck
			{ itemID = 19289 }, --Darkmoon Card: Maelstrom
			{ itemID = 19277 }, --Portals Deck
			{ itemID = 19290 }, --Darkmoon Card: Twisting Nether
			{ itemID = 19257 }, --Warlords Deck
			{ itemID = 19287 }, --Darkmoon Card: Heroism
		},
		{
			{ itemID = 31890 }, --Blessings Deck
			{ itemID = 31856 }, --Darkmoon Card: Crusade
			{ itemID = 31907 }, --Furies Deck
			{ itemID = 31858 }, --Darkmoon Card: Vengeance
			{ itemID = 31914 }, --Lunacy Deck
			{ itemID = 31859 }, --Darkmoon Card: Madness
			{ itemID = 31891 }, --Storms Deck
			{ itemID = 31857 }, --Darkmoon Card: Wrath
		},
	},
	{
		Name = "WotLK Trinkets",
		{
			{ itemID = 44276 }, --Chaos Deck
			{ itemID = 42989 }, --Darkmoon Card: Berserker!
			{ itemID = 44259 }, --Prisms Deck
			{ itemID = 42988 }, --Darkmoon Card: Illusion
			{ itemID = 44294 }, --Undeath Deck
			{ itemID = 42990 }, --Darkmoon Card: Death
		},
		{
			{ itemID = 44326 }, --Nobles Deck
			{ itemID = 44253 }, --Darkmoon Card: Greatness
			{ itemID = 42987 }, --Darkmoon Card: Greatness
			{ itemID = 44254 }, --Darkmoon Card: Greatness
			{ itemID = 44255 }, --Darkmoon Card: Greatness
		},
	},
}

--------------------------
--- Elemental Invasion ---
--------------------------

AtlasLoot_Data["ElementalInvasion"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Elemental Invasion",
	{
		Name = "Elemental Invasion",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Baron Charr".."", "=q1=".."Fire"..", ".."Un'Goro Crater" },
			{ itemID = 18671 }, --Baron Charr's Sceptre
			{ itemID = 19268 }, --Ace of Elementals
			{ itemID = 18672 }, --Elemental Ember
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Princess Tempestria".."", "=q1=".."Water"..", ".."Winterspring" },
			{ itemID = 18678 }, --Tempestria's Frozen Necklace
			{ itemID = 19268 }, --Ace of Elementals
			{ itemID = 21548 }, --Pattern: Stormshroud Gloves
			{ itemID = 18679 }, --Frigid Ring
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Avalanchion".."", "=q1=".."Earth"..", ".."Azshara" },
			{ itemID = 18673 }, --Avalanchion's Stony Hide
			{ itemID = 19268 }, --Ace of Elementals
			{ itemID = 18674 }, --Hardened Stone Band
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."The Windreaver".."", "=q1=".."Wind"..", ".."Silithus" },
			{ itemID = 18676 }, --Sash of the Windreaver
			{ itemID = 19268 }, --Ace of Elementals
			{ itemID = 21548 }, --Pattern: Stormshroud Gloves
			{ itemID = 18677 }, --Zephyr Cloak
		},
	},
}

---------------------------------
--- Gurubashi Arena Booty Run ---
---------------------------------

AtlasLoot_Data["GurubashiArena"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Gurubashi Arena Booty Run",
	{
		Name = "Gurubashi Arena Booty Run",
		{
			{ itemID = 18709 }, --Arena Wristguards
			{ itemID = 18710 }, --Arena Bracers
			{ itemID = 18711 }, --Arena Bands
			{ itemID = 18712 }, --Arena Vambraces
		},
		{
			{ itemID = 18706, desc = ", =q1=".."This Item Begins a Quest" }, --Arena Master
			{ itemID = 19024 }, --Arena Grand Master
		},
	},
}

------------------------------------------
--- Stranglethorn Fishing Extravaganza ---
------------------------------------------

AtlasLoot_Data["FishingExtravaganza"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Stranglethorn Fishing",
	{
		Name = "Stranglethorn Fishing Extravaganza",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."First Prize", "=q1=".."Master Angler" },
			{ itemID = 19970 }, --Arcanite Fishing Pole
			{ itemID = 19979 }, --Hook of the Master Angler
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Rare Fish" },
			{ itemID = 19805 }, --Keefer's Angelfish
			{ itemID = 19803 }, --Brownell's AtlasLoot.Colors.BLUE Striped Racer
			{ itemID = 19806 }, --Dezian Queenfish
			{ itemID = 19808 }, --Rockhide Strongfish
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Rare Fish Rewards" },
			{ itemID = 19972 }, --Lucky Fishing Hat
			{ itemID = 19969 }, --Nat Pagle's Extreme Anglin' Boots
			{ itemID = 19971 }, --High Test Eternium Fishing Line		{
		},
	},
}

------------------------
--- Triggered Events ---
------------------------

-----------------------
--- Abyssal Council ---
-----------------------

AtlasLoot_Data["AbyssalCouncil"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Abyssal Council",
	{
		Name = "Templars",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Crimson Templar".."", "=q1=".."Fire" },
			{ itemID = 20657 }, --Crystal Tipped Stiletto
			{ itemID = 20655 }, --Abyssal Cloth Handwraps
			{ itemID = 20656 }, --Abyssal Mail Sabatons
			{ itemID = 20513 }, --Abyssal Crest
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Azure Templar".."", "=q1=".."Water" },
			{ itemID = 20654 }, --Amethyst War Staff
			{ itemID = 20652 }, --Abyssal Cloth Slippers
			{ itemID = 20653 }, --Abyssal Plate Gauntlets
			{ itemID = 20513 }, --Abyssal Crest
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Hoary Templar".."", "=q1=".."Wind" },
			{ itemID = 20660 }, --Stonecutting Glaive
			{ itemID = 20658 }, --Abyssal Leather Boots
			{ itemID = 20659 }, --Abyssal Mail Handguards
			{ itemID = 20513 }, --Abyssal Crest
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Earthen Templar".."", "=q1=".."Earth" },
			{ itemID = 20663 }, --Deep Strike Bow
			{ itemID = 20661 }, --Abyssal Leather Gloves
			{ itemID = 20662 }, --Abyssal Plate Greaves
			{ itemID = 20513 }, --Abyssal Crest
		},
	},
	{
		Name = "Dukes",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."The Duke of Cynders".."", "=q1=".."Fire" },
			{ itemID = 20665 }, --Abyssal Leather Leggings
			{ itemID = 20666 }, --Hardened Steel Warhammer
			{ itemID = 20514 }, --Abyssal Signet
			{ itemID = 20664 }, --Abyssal Cloth Sash
			{ itemID = 21989 }, --Cinder of Cynders
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."The Duke of Fathoms".."", "=q1=".."Water" },
			{ itemID = 20668 }, --Abyssal Mail Legguards
			{ itemID = 20669, price = "29.62%" }, --Darkstone Claymore
			{ itemID = 20514 }, --Abyssal Signet
			{ itemID = 20667 }, --Abyssal Leather Belt
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."The Duke of Zephyrs".."", "=q1=".."Wind" },
			{ itemID = 20674 }, --Abyssal Cloth Pants
			{ itemID = 20675, price = "29.73%" }, --Soulrender
			{ itemID = 20514 }, --Abyssal Signet
			{ itemID = 20673 }, --Abyssal Plate Girdle
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."The Duke of Shards".."", "=q1=".."Earth" },
			{ itemID = 20671 }, --Abyssal Plate Legplates
			{ itemID = 20672 }, --Sparkling Crystal Wand
			{ itemID = 20514 }, --Abyssal Signet
			{ itemID = 20670 }, --Abyssal Mail Clutch
		},
	},
	{
		Name = "High Council",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Prince Skaldrenox".."", "=q1=".."Fire" },
			{ itemID = 20682 }, --Elemental Focus Band
			{ itemID = 20515 }, --Abyssal Scepter
			{ itemID = 20681 }, --Abyssal Leather Bracers
			{ itemID = 20680 }, --Abyssal Mail Pauldrons
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Lord Skwol".."", "=q1=".."Water" },
			{ itemID = 20685, price = "24.48%" }, --Wavefront Necklace
			{ itemID = 20515 }, --Abyssal Scepter
			{ itemID = 20684 }, --Abyssal Mail Armguards
			{ itemID = 20683 }, --Abyssal Plate Epaulets
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."High Marshal Whirlaxis".."", "=q1=".."Wind" },
			{ itemID = 20691 }, --Windshear Cape
			{ itemID = 20515 }, --Abyssal Scepter
			{ itemID = 20690 }, --Abyssal Cloth Wristbands
			{ itemID = 20689 }, --Abyssal Leather Shoulders
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Baron Kazum".."", "=q1=".."Earth" },
			{ itemID = 20688 }, --Earthen Guard
			{ itemID = 20515 }, --Abyssal Scepter
			{ itemID = 20686 }, --Abyssal Cloth Amice
			{ itemID = 20687 }, --Abyssal Plate Vambraces
		},
	},
}

-----------------------
--- Ethereum Prison ---
-----------------------

AtlasLoot_Data["EthereumPrison"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Ethereum Prison",
	{
		Name = "Armbreaker Huffaz",
		{
			{ itemID = 31943 }, --Ethereum Band
			{ itemID = 31939 }, --Dark Cloak
			{ itemID = 31938 }, --Enigmatic Cloak
			{ itemID = 31936 }, --Fiery Cloak
			{ itemID = 31935 }, --Frigid Cloak
			{ itemID = 31937 }, --Living Cloak
			{ itemID = 31957 }, --Ethereum Prisoner I.D. Tag
			{ itemID = 31928 }, --Dark Band
			{ itemID = 31929 }, --Enigmatic Band
			{ itemID = 31925 }, --Fiery Band
			{ itemID = 31926 }, --Frigid Band
			{ itemID = 31927 }, --Living Band
		},
	},
	{
		Name = "Fel Tinkerer Zortan",
		{
			{ itemID = 31573 }, --Mistshroud Boots
			{ itemID = 31939 }, --Dark Cloak
			{ itemID = 31938 }, --Enigmatic Cloak
			{ itemID = 31936 }, --Fiery Cloak
			{ itemID = 31935 }, --Frigid Cloak
			{ itemID = 31937 }, --Living Cloak
			{ itemID = 31957 }, --Ethereum Prisoner I.D. Tag
			{ itemID = 31928 }, --Dark Band
			{ itemID = 31929 }, --Enigmatic Band
			{ itemID = 31925 }, --Fiery Band
			{ itemID = 31926 }, --Frigid Band
			{ itemID = 31927 }, --Living Band
		},
	},
	{
		Name = "Forgosh",
		{
			{ itemID = 31565 }, --Skystalker's Boots
			{ itemID = 31939 }, --Dark Cloak
			{ itemID = 31938 }, --Enigmatic Cloak
			{ itemID = 31936 }, --Fiery Cloak
			{ itemID = 31935 }, --Frigid Cloak
			{ itemID = 31937 }, --Living Cloak
			{ itemID = 31957 }, --Ethereum Prisoner I.D. Tag
			{ itemID = 31928 }, --Dark Band
			{ itemID = 31929 }, --Enigmatic Band
			{ itemID = 31925 }, --Fiery Band
			{ itemID = 31926 }, --Frigid Band
			{ itemID = 31927 }, --Living Band
		},
	},
	{
		Name = "Gul'bor",
		{
			{ itemID = 31940 }, --Ethereum Torque
			{ itemID = 31939 }, --Dark Cloak
			{ itemID = 31938 }, --Enigmatic Cloak
			{ itemID = 31936 }, --Fiery Cloak
			{ itemID = 31935 }, --Frigid Cloak
			{ itemID = 31937 }, --Living Cloak
			{ itemID = 31957 }, --Ethereum Prisoner I.D. Tag
			{ itemID = 31928 }, --Dark Band
			{ itemID = 31929 }, --Enigmatic Band
			{ itemID = 31925 }, --Fiery Band
			{ itemID = 31926 }, --Frigid Band
			{ itemID = 31927 }, --Living Band
		},
	},
	{
		Name = "Malevus the Mad",
		{
			{ itemID = 31581 }, --Slatesteel Boots
			{ itemID = 31939 }, --Dark Cloak
			{ itemID = 31938 }, --Enigmatic Cloak
			{ itemID = 31936 }, --Fiery Cloak
			{ itemID = 31935 }, --Frigid Cloak
			{ itemID = 31937 }, --Living Cloak
			{ itemID = 31957 }, --Ethereum Prisoner I.D. Tag
			{ itemID = 31928 }, --Dark Band
			{ itemID = 31929 }, --Enigmatic Band
			{ itemID = 31925 }, --Fiery Band
			{ itemID = 31926 }, --Frigid Band
			{ itemID = 31927 }, --Living Band
		},
	},
	{
		Name = "Porfus the Gem Gorger",
		{
			{ itemID = 31557 }, --Windchanneller's Boots
			{ itemID = 31939 }, --Dark Cloak
			{ itemID = 31938 }, --Enigmatic Cloak
			{ itemID = 31936 }, --Fiery Cloak
			{ itemID = 31935 }, --Frigid Cloak
			{ itemID = 31937 }, --Living Cloak
			{ itemID = 31957 }, --Ethereum Prisoner I.D. Tag
			{ itemID = 31928 }, --Dark Band
			{ itemID = 31929 }, --Enigmatic Band
			{ itemID = 31925 }, --Fiery Band
			{ itemID = 31926 }, --Frigid Band
			{ itemID = 31927 }, --Living Band
		},
	},
	{
		Name = "Wrathbringer Laz-tarash",
		{
			{ itemID = 32520 }, --Manaforged Sphere
			{ itemID = 31939 }, --Dark Cloak
			{ itemID = 31938 }, --Enigmatic Cloak
			{ itemID = 31936 }, --Fiery Cloak
			{ itemID = 31935 }, --Frigid Cloak
			{ itemID = 31937 }, --Living Cloak
			{ itemID = 31957 }, --Ethereum Prisoner I.D. Tag
			{ itemID = 31928 }, --Dark Band
			{ itemID = 31929 }, --Enigmatic Band
			{ itemID = 31925 }, --Fiery Band
			{ itemID = 31926 }, --Frigid Band
			{ itemID = 31927 }, --Living Band
		},
	},
	{
		Name = "Bash'ir Landing Stasis Chambers",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Trelopades" },
			{ itemID = 32522 }, --Demonic Bulwark
			{ itemID = 31941 }, --Mark of the Nexus-King
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."King Dorfbruiser" },
			{ itemID = 31577 }, --Slatesteel Shoulders
			{ itemID = 31941 }, --Mark of the Nexus-King
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Gorgolon the All-seeing" },
			{ itemID = 31569 }, --Mistshroud Shoulders
			{ itemID = 31941 }, --Mark of the Nexus-King
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Matron Li-sahar" },
			{ itemID = 31553 }, --Windchanneller's Mantle
			{ itemID = 31941 }, --Mark of the Nexus-King
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Solus the Eternal" },
			{ itemID = 31561 }, --Skystalker's Shoulders
			{ itemID = 31941 }, --Mark of the Nexus-King
		},
	},
}

----------------
--- Shartuul ---
----------------

AtlasLoot_Data["Shartuul"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Shartuul",
	{
		Name = "Shartuul",
		{
			{ itemID = 32941 }, --Corruptor's Signet
			{ itemID = 32676 }, --Depleted Cloth Bracers
			{ itemID = 32675 }, --Depleted Mail Gauntlets
			{ itemID = 32677 }, --Depleted Cloak
			{ itemID = 32678 }, --Depleted Ring
			{ itemID = 32672 }, --Depleted Badge
			{ itemID = 32673 }, --Depleted Dagger
			{ itemID = 32674 }, --Depleted Sword
			{ itemID = 32670 }, --Depleted Two-Handed Axe
			{ itemID = 32671 }, --Depleted Mace
			{ itemID = 32679 }, --Depleted Staff
		},
		{
			{ itemID = 32942 }, --Ring of the Overseer
			{ itemID = 32655 }, --Crystalweave Bracers
			{ itemID = 32656 }, --Crystalhide Handwraps
			{ itemID = 32665 }, --Crystalweave Cape
			{ itemID = 32664 }, --Dreamcrystal Band
			{ itemID = 32658 }, --Badge of Tenacity
			{ itemID = 32659 }, --Crystal-Infused Shiv
			{ itemID = 32660 }, --Crystalforged Sword
			{ itemID = 32663 }, --Apexis Cleaver
			{ itemID = 32661 }, --Apexis Crystal Mace
			{ itemID = 32662 }, --Flaming Quartz Staff
		},
	},
}

---------------
--- Skettis ---
---------------

AtlasLoot_Data["Skettis"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Skettis",
	{
		Name = "Darkscreecher Akkarai",
		{
			{ itemID = 32529, price = "17.3%" }, --Heretic's Gauntlets
			{ itemID = 32715 }, --Akkarai's Talons
			{ itemID = 31558 }, --Windchanneller's Bindings
			{ itemID = 31555 }, --Windchanneller's Ceinture
			{ itemID = 31566 }, --Skystalker's Bracers
			{ itemID = 31563 }, --Skystalker's Cord
			{ itemID = 31574 }, --Mistshroud Bracers
			{ itemID = 31571 }, --Mistshroud Belt
			{ itemID = 31582 }, --Slatesteel Bracers
			{ itemID = 31579 }, --Slatesteel Girdle
			{ itemID = 32514 }, --Skettis Band
		},
	},
	{
		Name = "Karrog",
		{
			{ itemID = 32533 }, --Karrog's Shard
			{ itemID = 32717 }, --Karrog's Spine
			{ itemID = 31558 }, --Windchanneller's Bindings
			{ itemID = 31555 }, --Windchanneller's Ceinture
			{ itemID = 31566 }, --Skystalker's Bracers
			{ itemID = 31563 }, --Skystalker's Cord
			{ itemID = 31574 }, --Mistshroud Bracers
			{ itemID = 31571 }, --Mistshroud Belt
			{ itemID = 31582 }, --Slatesteel Bracers
			{ itemID = 31579 }, --Slatesteel Girdle
			{ itemID = 32514 }, --Skettis Band
		},
	},
	{
		Name = "Gezzarak the Huntress",
		{
			{ itemID = 32531, price = "16.9%" }, --Gezzarak's Fang
			{ itemID = 32716 }, --Gezzarak's Claws
			{ itemID = 31558 }, --Windchanneller's Bindings
			{ itemID = 31555 }, --Windchanneller's Ceinture
			{ itemID = 31566 }, --Skystalker's Bracers
			{ itemID = 31563 }, --Skystalker's Cord
			{ itemID = 31574 }, --Mistshroud Bracers
			{ itemID = 31571 }, --Mistshroud Belt
			{ itemID = 31582 }, --Slatesteel Bracers
			{ itemID = 31579 }, --Slatesteel Girdle
			{ itemID = 32514 }, --Skettis Band
		},
	},
	{
		Name = "Vakkiz the Windrager",
		{
			{ itemID = 32532 }, --Windrager's Coils
			{ itemID = 32718 }, --Vakkiz's Scale
			{ itemID = 31558 }, --Windchanneller's Bindings
			{ itemID = 31555 }, --Windchanneller's Ceinture
			{ itemID = 31566 }, --Skystalker's Bracers
			{ itemID = 31563 }, --Skystalker's Cord
			{ itemID = 31574 }, --Mistshroud Bracers
			{ itemID = 31571 }, --Mistshroud Belt
			{ itemID = 31582 }, --Slatesteel Bracers
			{ itemID = 31579 }, --Slatesteel Girdle
			{ itemID = 32514 }, --Skettis Band
		},
	},
	{
		Name = "Terokk",
		{
			{ itemID = 32540 }, --Terokk's Might
			{ itemID = 32541 }, --Terokk's Wisdom
			{ itemID = 31556 }, --Windchanneller's Leggings
			{ itemID = 31564 }, --Skystalker's Leggings
			{ itemID = 31572 }, --Mistshroud Pants
			{ itemID = 31580 }, --Slatesteel Leggings
			{ itemID = 32535 }, --Gift of the Talonpriests
			{ itemID = 32534, price = "11.2%" }, --Brooch of the Immortal King
			{ itemID = 32782 }, --Time-Lost Figurine
			{ itemID = 32536, desc = "=ds= =q2=".."(has random enchantment)" }, --Terokk's Gavel
			{ itemID = 32537, desc = "=ds= =q2=".."(has random enchantment)" }, --Terokk's Gavel
		},
	},
	{
		Name = "Talonpriest Ishaal",
		{
			{ itemID = 32523 }, --Ishaal's Almanac
		},
	},
	{
		Name = "Hazzik's Package",
		{
			{ itemID = 32687 }, --Hazzik's Package
		},
	},
}

-----------------------
--- One Time Events ---
-----------------------

------------------------
--- Scourge Invasion ---
------------------------

AtlasLoot_Data["ScourgeInvasionEvent"] = {
	Module = "AtlasLoot_WorldEvents",
	Name = "Scourge Invasion",
	{
		Name = "Page 1",
		{
			{ itemID = 40601 }, --Argent Dawn Banner
			{ itemID = 40593 }, --Argent Tome
			{ itemID = 40492 }, --Argent War Horn
			{ itemID = 23123 }, --Blessed Wizard Oil
			{ itemID = 23122 }, --Consecrated Sharpening Stone
			{ itemID = 22999 }, --Tabard of the Argent Dawn
			{ itemID = 43531 }, --Argent Healing Potion
			{ itemID = 43530 }, --Argent Mana Potion
			{ itemID = 22484, desc = "=ds=".."Currency" }, --Necrotic Rune
		},
		{
			{ itemID = 40110 }, --Haunted Memento
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Prince Tenris Mirkblood", "=q5=" .. "Karazhan" },
			{ itemID = 29434 }, --Badge of Justice
			{ itemID = 39769 }, --Arcanite Ripper
			{ itemID = 38658 }, --Vampiric Batling
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Blessed Regalia of Undead Cleansing" },
			{ itemID = 43074 }, --Blessed Mantle of Undead Cleansing
			{ itemID = 43072 }, --Blessed Robe of Undead Cleansing
			{ itemID = 43073 }, --Blessed Gloves of Undead Cleansing
			{ itemID = 43075 }, --Blessed Trousers of Undead Cleansing
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Undead Slayer's Blessed Armor" },
			{ itemID = 43077 }, --Blessed Shoulderpads of Undead Slaying
			{ itemID = 43076 }, --Blessed Tunic of Undead Slaying
			{ itemID = 43078 }, --Blessed Grips of Undead Slaying
			{ itemID = 43079 }, --Blessed Leggings of Undead Slaying
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Blessed Garb of the Undead Slayer" },
			{ itemID = 43081 }, --Blessed Pauldrons of Undead Slaying
			{ itemID = 43080 }, --Blessed Hauberk of Undead Slaying
			{ itemID = 43082 }, --Blessed Handguards of Undead Slaying
			{ itemID = 43083 }, --Blessed Greaves of Undead Slaying
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. "Blessed Battlegear of Undead Slaying" },
			{ itemID = 43068 }, --Blessed Spaulders of Undead Slaying
			{ itemID = 43069 }, --Blessed Breastplate of Undead Slaying
			{ itemID = 43070 }, --Blessed Gauntlets of Undead Slaying
			{ itemID = 43071 }, --Blessed Legplates of Undead Slaying
		},
	},
	{
		Name = "Page 3",
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Balzaphon", "=q1=".."Stratholme" },
			{ itemID = 23126 }, --Waistband of Balzaphon
			{ itemID = 23125 }, --Chains of the Lich
			{ itemID = 23124 }, --Staff of Balzaphon
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Lord Blackwood", "=q1=".."Scholomance".."" },
			{ itemID = 23156 }, --Blackwood's Thigh
			{ itemID = 23132 }, --Lord Blackwood's Blade
			{ itemID = 23139 }, --Lord Blackwood's Buckler
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Revanchion", "=q1=".."Dire Maul (East)" },
			{ itemID = 23127 }, --Cloak of Revanchion
			{ itemID = 23129 }, --Bracers of Mending
			{ itemID = 23128 }, --The Shadow's Grasp
		},
		{
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Scorn", "=q1=".."Scarlet Monastery".." - ".."Graveyard" },
			{ itemID = 23170 }, --The Frozen Clutch
			{ itemID = 23169 }, --Scorn's Icy Choker
			{ itemID = 23168 }, --Scorn's Focal Dagger
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Sever", "=q1=".."Shadowfang Keep" },
			{ itemID = 23173 }, --Abomination Skin Leggings
			{ itemID = 23171 }, --The Axe of Severing
			{ icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.."Lady Falther'ess", "=q1=".."Razorfen Downs" },
			{ itemID = 23178 }, --Mantle of Lady Falther'ess
			{ itemID = 23177 }, --Lady Falther'ess' Finger
		},
	},
}
