local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")



--Table holding all loot tables is initialised here as it loads early
AtlasLoot_Data = {
	["EmptyTable"] = {
		Name = "Select a Loot Table...",
		{Name = "Select a Loot Table..."},
	}
}
AtlasLoot.itemData = { EmptyTable = {} }
AtlasLoot_ItemData = {}
AtlasLoot_TokenData = {}
AtlasLoot_MapData = {}
AtlasLoot_ExtraData = {}
AtlasLoot_CraftingData = {
	AquireType = {},
	Trainer = {},
	WorldDrop = {},
	LimitedVendor = {},
	QuestDrop = {},
	MobDrop = {},
	RecipeQuest = {},
	Vendor = {},
	RepVendor = {},
	RecipeVendor = {},
	RecipeWorldDrop = {},
	RecipeRepVendor = {},
}

AtlasLoot_CraftingData["Custom"] = {
[1] = { "DISCOVERY_ALCH_ELIXIRFLASK" },
[2] = { "DISCOVERY_ALCH_POTION" },
[3] = { "DISCOVERY_ALCH_XMUTE" },
[4] = { "DISCOVERY_ALCH_PROT" },
[5] = { "DAILY_COOKING_MEAT", "Shattrath", 0, 0 },
[6] = { "DAILY_COOKING_FISH", "Shattrath", 0, 0 },
[7] = { "DAILY_FISHING_SHATT", "Shattrath", 0, 0 },
[8] = { "DEFAULT_RECIPE" },
[9] = { "CRAFTED_ENGINEERS" },
[10] = { "ONYXIA_HEAD_QUEST", "Onyxia's Lair", 0, 0 },
[11] = { "EDGE_OF_MADNESS", "Zul'Gurub", 0, 0 },
[12] = { "DISCOVERY_ALCH_WRATH" },
[13] = { "HENRY_STERN_RFD", "Razorfen Downs", 0, 0 },
[14] = { "DISCOVERY_INSC_MINOR" },
[15] = { "DISCOVERY_INSC_NORTHREND" },
[16] = { "ENG_GNOMER", "Gnomeregan", 0, 0 },
[17] = { "ENG_FLOOR_ITEM_BRD", "Blackrock Depths", 0, 0 },
[18] = { "DISCOVERY_ALCH_NORTHREND_RESEARCH" },
[19] = { "DISCOVERY_ALCH_NORTHREND_XMUTE" },
[20] = { "Custom36" },
[21] = { "Custom36" },
[22] = { "AQ40_RANDOM_BOP", "Temple of Ahn'Qiraj", 0, 0 },
[23] = { "DM_CACHE", "Dire Maul", 59.04, 48.82 },
[24] = { "SUNWELL_RANDOM", "Sunwell Plateau", 0, 0 },
[25] = { "BRD_RANDOM_ROOM", "Blackrock Depths", 0, 0 },
[26] = { "MC_RANDOM", "Molten Core", 0, 0 },
[27] = { "HYJAL_RANDOM", "Hyjal Summit", 0, 0 },
[28] = { "Custom36" },
[29] = { "ZA_RANDOM", "Zul'Aman", 0, 0 },
[30] = { "SCHOLO_BOOK_SPAWN", "Scholomance", 0, 0 },
[31] = { "STRATH_BS_PLANS", "Stratholme", 0, 0 },
[32] = { "DM_TRIBUTE", "Dire Maul", 59.04, 48.82 },
[33] = { "Custom36" },
[34] = { "BT_RANDOM", "Black Temple", 0, 0 },
[35] = { "Random Level 70 instance drop" },
[36] = { "Custom36" },
[37] = { "SSC_RANDOM", "Serpentshrine Cavern", 0, 0 },
[38] = { "DAILY_COOKING_DAL", "Dalaran", 0, 0 },
[39] = { "ULDUAR_RANDOM", "Ulduar", 0, 0 },
[40] = { "DISCOVERY_INSC_BOOK" },
[41] = { "Custom41" },
[42] = { "TOC25_RANDOM" },
[43] = { "TK_RANDOM", "The Eye", 0, 0 },
[44] = { "Custom44" },
[45] = { "Custom45" },
[46] = { "Random Level 70 instance drop/Raid Trash Drop".."/".."TBC Callboard Cache" },
}

AtlasLoot_CraftingData["Seasonal"] = {
[1] = { GetCategoryInfo(156) }, -- Winter's Veil
[2] = { GetCategoryInfo(160) }, -- Lunar Festival
[3] = { "Darkmoon Faire" }, -- Darkmoon Faire
[4] = { GetCategoryInfo(161) }, -- Midsummer
[5] = { GetCategoryInfo(14981) }, -- Pilgrim's Bounty
[6] = { "Day of the Dead" }, -- Day of the Dead
}

----------------------
--- Heirloom Items ---
----------------------
AtlasLoot_Data["Heirloom"] = {
	Name = "Heirloom",
	{
		Name = "Trinkets",
		{
			{ itemID = 1642992, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }, --Discerning Eye of the Beast
			{ itemID = 1642991, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }, --Swift Hand of Justice
			{ itemID = 1644098, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }, --Inherited Insignia of the Alliance
			{ itemID = 1644097, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }, --Inherited Insignia of the Horde
		},
	},
	{
		Name = "Necks",
		{
			{ itemID = 1339077, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
			{ itemID = 1339076, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
			{ itemID = 1339078, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
			{ itemID = 339076, price = ""  }, --Pendant of Adventure
			{ itemID = 339100, price = ""  }, --Pendant of Discovery
		},
	},
	{
		Name = "Rings",
		{
			{ itemID = 1339079, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
			{ itemID = 1339080, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
			{ itemID = 1339081, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
			{ itemID = 1339082, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
			{ itemID = 1339083, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
			{ itemID = 50255 }, --Dread Pirate Ring
		},
	},
	{
		Name = "Weapons",
		{
			{ itemID = 1642944, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --Balanced Heartseeker
			{ itemID = 1642945, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --Venerable Dal'Rend's Sacred Charge
			{ itemID = 1642948, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --Devout Aurastone Hammer
			{ itemID = 1648716, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --Venerable Mass of McGowan
			{ itemID = 1644091, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --Sharpened Scarlet Kris
			{ itemID = 1644096, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --Battleworn Thrash Blade
			{ itemID = 1644094, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --The Blessed Hammer of Grace
			{ itemID = 3140350, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --Urn of Aspiring Light
			{ itemID = 3148335, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }, --Polished Observer's Shield
		},
		{
			{ itemID = 1642943, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Bloodied Arcanite Reaper
			{ itemID = 3142943, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Sturdied Arcanite Spear
			{ itemID = 1648718, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Repurposed Lava Dredger
			{ itemID = 1642947, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Dignified Headmaster's Charge
			{ itemID = 1644092, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Reforged Truesilver Champion
			{ itemID = 1644095, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Grand Staff of Jordan
			{ itemID = 1642946, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Charmed Ancient Bone Bow
			{ itemID = 1644093, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Upgraded Dwarven Hand Cannon
			{ itemID = 1642846, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }, --Wand of the Forgotten Lich
		},
	},
	{
		Name = "Might",
		{
			{ itemID = 1339126, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" }, --Head
			{ itemID = 3142949, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  },	--Shoulders
			{ itemID = 1339087, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Back
			{ itemID = 3148685, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#" },	--Chest
			{ itemID = 1339112, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Wrists
			{ itemID = 1339133, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },	--Gloves
			{ itemID = 1339098, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Waist
			{ itemID = 1339119, price = "600 #tokenofprestige# | 90000 #marks# | TBD #bazaar#" },	--Legs
			{ itemID = 1339105, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Boots
		},
	},
	{
		Name = "Shadowcraft",
		{
			{ itemID = 1339121, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" }, --Head
			{ itemID = 1642952, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#" }, --Shoulders
			{ itemID = 1339088, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Back
			{ itemID = 1648689, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#" }, --Chest
			{ itemID = 1339107, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Wrists
			{ itemID = 1339128, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },	--Gloves
			{ itemID = 1339093, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" }, --Waist
			{ itemID = 1339114, price = "600 #tokenofprestige# | 90000 #marks# | TBD #bazaar#" }, --Legs
			{ itemID = 1339100, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" }, --Boots
		},
	},
	{
		Name = "Dreadmist",
		{
			{ itemID = 1339120, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Head
			{ itemID = 1642985, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#" },	--Shoulders
			{ itemID = 1339086, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Back
			{ itemID = 1648691, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#" },	--Chest
			{ itemID = 1339106, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Wrists
			{ itemID = 1339127, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },	--Gloves
			{ itemID = 1339092, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Waist
			{ itemID = 1339113, price = "600 #tokenofprestige# | 90000 #marks# | TBD #bazaar#" },	--Legs
			{ itemID = 1339099, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Boots
		},
	},
	{
		Name = "Herods",
		{
			{ itemID = 1339124, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Head
			{ itemID = 1642950, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#" },	--Shoulders
			{ itemID = 1339084, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Back
			{ itemID = 1648677, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#" },	--Chest
			{ itemID = 1339110, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Wrists
			{ itemID = 1339131, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },	--Gloves
			{ itemID = 1339096, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Waist
			{ itemID = 1339117, price = "600 #tokenofprestige# | 90000 #marks# | TBD #bazaar#" },	--Legs
			{ itemID = 1339103, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Boots
		},
	},
	{
		Name = "Elements",
		{
			{ itemID = 1339123, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Head
			{ itemID = 1642951, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#" },	--Shoulders
			{ itemID = 1339090, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Back
			{ itemID = 1648683, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#" },	--Chest
			{ itemID = 1339109, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Wrists
			{ itemID = 1339130, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },	--Gloves
			{ itemID = 1339095, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Waist
			{ itemID = 1339116, price = "600 #tokenofprestige# | 90000 #marks# | TBD #bazaar#" },	--Legs
			{ itemID = 1339102, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Boots
		},
	},
	{
		Name = "Valor",
		{
			{ itemID = 1339125, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Head
			{ itemID = 1642949, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#" },	--Shoulders
			{ itemID = 1339085, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Back
			{ itemID = 1648685, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#" },	--Chest
			{ itemID = 1339111, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Wrists
			{ itemID = 1339132, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },	--Gloves
			{ itemID = 1339097, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Waist
			{ itemID = 1339118, price = "600 #tokenofprestige# | 90000 #marks# | TBD #bazaar#" },	--Legs
			{ itemID = 1339104, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Boots		
		},
	},
	{
		Name = "IronFeather",
		{
			{ itemID = 1339122, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Head
			{ itemID = 1642984, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#" },	--Shoulders
			{ itemID = 1339089, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Back
			{ itemID = 1648687, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#" },	--Chest
			{ itemID = 1339108, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Wrists
			{ itemID = 1339129, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },	--Gloves
			{ itemID = 1339094, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Waist
			{ itemID = 1339115, price = "600 #tokenofprestige# | 90000 #marks# | TBD #bazaar#" },	--Legs
			{ itemID = 1339101, price = "375 #tokenofprestige# | 75000 #marks# | TBD #bazaar#" },	--Boots
		},
	},
	{
		Name = "Pvp Shoulders",
		{
			{ itemID = 1644107, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }, --Exquisite Sunderseer Mantle
			{ itemID = 1644103, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }, --Exceptional Stormshroud Shoulders
			{ itemID = 1644105, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }, --Lasting Feralheart Spaulders
			{ itemID = 1644102, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }, --Aged Pauldrons of The Five Thunders
			{ itemID = 1644101, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }, --Prized Beastmaster's Mantle
			{ itemID = 1644100, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }, --Pristine Lightforge Spaulders
			{ itemID = 1644099, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }, --Strengthened Stockade Pauldrons
		},
	},
}

WorldforgedClassic = {
	{ itemID = 202555 }, --Rusty Blunderbuss
	{ itemID = 217842 }, --Bonechopper
	{ itemID = 217843 }, --Apprentice's Cane
	{ itemID = 217844 }, --Dustworn Saber
	{ itemID = 217845 }, --Defender's Wall
	{ itemID = 217846 }, --Tattered Tunic
	{ itemID = 217847 }, --Shroud of Infernal Shadows
	{ itemID = 217848 }, --Felthread Warbelt
	{ itemID = 217849 }, --Kris of Corrupted Flame
	{ itemID = 217850 }, --Fel Infused Rifle
	{ itemID = 217851 }, --Junglewood Recurve
	{ itemID = 217860 }, --Shadow Cowl
	{ itemID = 278843 }, --Flesh Flayer Hook
	{ itemID = 278844 }, --Andorhal Manual
	{ itemID = 278845 }, --Reliever's Burden
	{ itemID = 278846 }, --Plague Mask
	{ itemID = 278847 }, --Libram of Remembrance
	{ itemID = 278848 }, --Blightbloom Talisman
	{ itemID = 278849 }, --Wraithbone Ring
	{ itemID = 278850 }, --Lost Scout's Idol
	{ itemID = 278851 }, --Skeletal Club
	{ itemID = 278852 }, --Infantry Gauntlets
	{ itemID = 278853 }, --Manacles of Eternal Shadow
	{ itemID = 278854 }, --Vampire Blood
	{ itemID = 354059 }, --Prodigy's Staff
	{ itemID = 354060 }, --Tarothae's Vow
	{ itemID = 354061 }, --Sunwoven Satchel
	{ itemID = 354062 }, --Travel Cloak
	{ itemID = 354063 }, --Bottle of Endless Melon Juice
	{ itemID = 354064 }, --Cloak of Owlkin Feathers
	{ itemID = 354065 }, --Lost Rangari Ring
	{ itemID = 354066 }, --Crystalline Crown
	{ itemID = 354067 }, --Exodar Fragment
	{ itemID = 354068 }, --Totem of the Vale
	{ itemID = 354069 }, --Scourgewarped Bow
	{ itemID = 354071 }, --Faded Ward of the East Sanctum
	{ itemID = 354072 }, --Vial of Desolate Waters
	{ itemID = 354073 }, --Falithas Rune
	{ itemID = 354074 }, --Shan'dor Rune
	{ itemID = 354075 }, --Meleath Rune
	{ itemID = 354076 }, --Fundamentals of Arcana - Third Edition
	{ itemID = 354077 }, --Everyday Applications of Pyromancy
	{ itemID = 354078 }, --Principles of Cryomancy - Ultimate Edition, Version 2
	{ itemID = 354079 }, --Fairbreeze Feast
	{ itemID = 354083 }, --Coil of Ula-Tek
	{ itemID = 354084 }, --Fang of Ula-Tek
	{ itemID = 354085 }, --Serpentbane Ring
	{ itemID = 354086 }, --Arkonite Saber
	{ itemID = 354087 }, --Arkonite Amulet
	{ itemID = 354088 }, --Blessed Arkonite Torch
	{ itemID = 354089 }, --Cowlen's Lost Gloves
	{ itemID = 354090 }, --Stillpine Cloak
	{ itemID = 354091 }, --Staff of Sciani
	{ itemID = 354092 }, --Fishbone Band
	{ itemID = 354093 }, --Ravager Quill
	{ itemID = 354095 }, --Tempered Mail
	{ itemID = 354096 }, --Light of the Highborne
	{ itemID = 354097 }, --Dread Satchel
	{ itemID = 354098 }, --Sigil of the Unmarked Mausoleum
	{ itemID = 354099 }, --Obsidian Smithing Hammer
	{ itemID = 354100 }, --Shield of Fading Light
	{ itemID = 354101 }, --Silkwrapped Cloak
	{ itemID = 354102 }, --Bloodweave Bindings
	{ itemID = 354103 }, --Sil'Vedore
	{ itemID = 354104 }, --Blessed Robes
	{ itemID = 354105 }, --Offering to Oocto
	{ itemID = 354107 }, --Stolen Highborne Bracelet
	{ itemID = 354108 }, --Boots of the Wilderness
	{ itemID = 354109 }, --Cryostasis Heart
	{ itemID = 354110 }, --Bloodcrystal Branch
	{ itemID = 354111 }, --Voidweaver Robes
	{ itemID = 354112 }, --Web Wrappings
	{ itemID = 354113 }, --Axxarien Kilt
	{ itemID = 354114 }, --Shield of the Royal Guard
	{ itemID = 354115 }, --Cartographer's Pack
	{ itemID = 354116 }, --Bloodcursed Ring
	{ itemID = 354117 }, --Veridian Eye
	{ itemID = 354118 }, --Ritualistic Nazzivien Headdress
	{ itemID = 354119 }, --Docile Mystwood Lasher
	{ itemID = 354120 }, --Vector Rifle
	{ itemID = 354121 }, --Bloodwater
	{ itemID = 354122 }, --Vindicator's Shoulderguards
	{ itemID = 354123 }, --Ravager Trainer's Spaulders
	{ itemID = 354124 }, --Veridian Scale Mail
	{ itemID = 354125 }, --Warp Engineer's Boots
	{ itemID = 354126 }, --Bloodwashed Gloves
	{ itemID = 354127 }, --Flower of Tranquility
	{ itemID = 354128 }, --Staff of Talons
	{ itemID = 354130 }, --Venture Co. Logging Axe
	{ itemID = 354131 }, --Ziz's Alchemy Goggles
	{ itemID = 354132 }, --Light of the Talondeep Path
	{ itemID = 354133 }, --Grim Sorcerer Totem
	{ itemID = 354134 }, --Resonite Band
	{ itemID = 354135 }, --Barrel Smasher
	{ itemID = 354136 }, --Venture Co. Union Buster
	{ itemID = 354137 }, --Woven Ceremonial Belt
	{ itemID = 354138 }, --Unclaimed Sack
	{ itemID = 354139 }, --Fire Strike
	{ itemID = 354140 }, --Bloodfury Feather Cloak
	{ itemID = 354141 }, --Wind Shearer
	{ itemID = 354142 }, --Breastplate of the Current
	{ itemID = 354143 }, --Boulder Greaves
	{ itemID = 354144 }, --Vengeful Heart
	{ itemID = 354146 }, --Crimson Dragonscale
	{ itemID = 354147 }, --Balgaras's Foul Amulet
	{ itemID = 354148 }, --Wyrmscale Spaulders
	{ itemID = 354149 }, --Kixxle's Experimental Potion
	{ itemID = 354150 }, --Recipe: Kixxle's Experimental Potion
	{ itemID = 354151 }, --Cursed Legguards of the Intrepid
	{ itemID = 354152 }, --Cursed Cape of the Wave Mistress
	{ itemID = 354153 }, --Mossy Hide Armor
	{ itemID = 354154 }, --Chewed Wrappings
	{ itemID = 354157 }, --Frightened Kitten
	{ itemID = 354158 }, --Arkonite Orb
	{ itemID = 354159 }, --Abandoned Boots
	{ itemID = 354160 }, --Shoulderpads of the Conjuror
	{ itemID = 354161 }, --Flamescoured Bow
	{ itemID = 354162 }, --Burning Gauntlets
	{ itemID = 354163 }, --Ritual Robes
	{ itemID = 354164 }, --Blade of Thunder
	{ itemID = 354165 }, --Moonglow Bag
	{ itemID = 354166 }, --Shadowprey Bag
	{ itemID = 354167 }, --Hatefury Skull Totem
	{ itemID = 354168 }, --Hatefury Wand
	{ itemID = 354169 }, --Spear of Hatred
	{ itemID = 354170 }, --Circlet of Desolation
	{ itemID = 354171 }, --Blade of Dread
	{ itemID = 354172 }, --Woven Flowers
	{ itemID = 354173 }, --Caravan Guard Vest
	{ itemID = 354174 }, --Caravan Guard Pauldrons
	{ itemID = 354175 }, --Sorrow of the Kodo
	{ itemID = 354176 }, --Bone Splitter
	{ itemID = 354177 }, --Offering to Azshara
	{ itemID = 354178 }, --Water Seer's Headdress
	{ itemID = 354179 }, --Diving Boots
	{ itemID = 354180 }, --Zelyn'Theris
	{ itemID = 354181 }, --Lost Mariner Leggings
	{ itemID = 354182 }, --Lost Mariner Bracers
	{ itemID = 354183 }, --Orb of Dawn
	{ itemID = 354184 }, --Kodo Hide Cloak
	{ itemID = 354185 }, --Burning Blade Ritual Knife
	{ itemID = 354186 }, --Heretical Libram
	{ itemID = 354187 }, --Doomwarden
	{ itemID = 354188 }, --Pillaged Legguards
	{ itemID = 354189 }, --Gelkis Cleaver
	{ itemID = 354190 }, --Shell Cracker
	{ itemID = 354191 }, --Sunken Ring
	{ itemID = 354192 }, --Gloves of Patience
	{ itemID = 354193 }, --The Undying Eye
	{ itemID = 354194 }, --Magram Hatchet
	{ itemID = 354195 }, --Crown of the Great Khan
	{ itemID = 354196 }, --Jairal'Kesh, Staff of Summoning
	{ itemID = 354197 }, --Shadowbreaker
	{ itemID = 354198 }, --Kodo Hunter
	{ itemID = 354199 }, --The Winning Javelin
	{ itemID = 354200 }, --Bone Harvester
	{ itemID = 354201 }, --Buried Bracers
	{ itemID = 354202 }, --Stormpiercer
	{ itemID = 354203 }, --Maraudine Breastplate
	{ itemID = 354204 }, --Maraudine Cape
	{ itemID = 354205 }, --Maraudine Gloves
	{ itemID = 354206 }, --Icon of Khan Maraudos
	{ itemID = 354207 }, --Ambereye Amulet
	{ itemID = 354208 }, --Greataxe of Kolk
	{ itemID = 354209 }, --Shadowshard Shield
	{ itemID = 354210 }, --Ring of Arakosh
	{ itemID = 354211 }, --Ring of Korvaix
	{ itemID = 354212 }, --Antique Alteraci Skirt
	{ itemID = 354213 }, --Alteraci Avenger
	{ itemID = 354214 }, --Embrace of the Fifth
	{ itemID = 354215 }, --Crushridge Fingerguards
	{ itemID = 354216 }, --Battleplate of Crimson Resolve
	{ itemID = 354217 }, --Syndicate Chopping Axe
	{ itemID = 354218 }, --Libram of the Third Host
	{ itemID = 354219 }, --Sentry Shot
	{ itemID = 354220 }, --Staff of Argus
	{ itemID = 354221 }, --Icecracker
	{ itemID = 354222 }, --Ogre Toothpick
	{ itemID = 354223 }, --Frozen Alterac Banner
	{ itemID = 354224 }, --Frostwatch Defender
	{ itemID = 354225 }, --Tempered Syndicate Boots
	{ itemID = 354226 }, --Dandred's Harvester
	{ itemID = 354228 }, --Cape of the Mire
	{ itemID = 354229 }, --Fallow Tunic
	{ itemID = 354230 }, --Kreil's Gauntlets
	{ itemID = 354231 }, --Sorrow's Light
	{ itemID = 354232 }, --Grave Leggings
	{ itemID = 354233 }, --Holy Atal'ai Band
	{ itemID = 354234 }, --Spear of Emerald
	{ itemID = 354235 }, --Icon of Blood
	{ itemID = 354236 }, --Defiled Necklace
	{ itemID = 354237 }, --Dragoncarver
	{ itemID = 354238 }, --Sharpened Dragon Bone
	{ itemID = 354239 }, --Pauldrons of the Ancient Prophet
	{ itemID = 354240 }, --Kazkaz's Ceremonial Mask
	{ itemID = 354241 }, --Atal'ai Alchemy Gloves
	{ itemID = 354242 }, --Sha-Bane Staff
	{ itemID = 354243 }, --Splinterspear Belt
	{ itemID = 354244 }, --Itharius's Bracers
	{ itemID = 354245 }, --Biggs's Spare Legguards
	{ itemID = 354246 }, --Atal'ai Angler Boots
	{ itemID = 354247 }, --Emerald Tear
	{ itemID = 354248 }, --Idol to Hakkar
	{ itemID = 354249 }, --Distant Wanderer Pack
	{ itemID = 354250 }, --Sawtooth Jaw
	{ itemID = 354251 }, --Signet of Lire'kes
	{ itemID = 354252 }, --Bracers of Emerald Will
	{ itemID = 354253 }, --Swamp Talker's Crossbow
	{ itemID = 354254 }, --Marsh Bonebreaker
	{ itemID = 354255 }, --Cartographer's Cape
	{ itemID = 354256 }, --Exile's Amulet
	{ itemID = 354257 }, --Dusksinger Band
	{ itemID = 354258 }, --Choker of Hakkar
	{ itemID = 354259 }, --Murloc Crown
	{ itemID = 354260 }, --Rusted Shield
	{ itemID = 354261 }, --Marsh Adventurer Boots
	{ itemID = 354262 }, --Unusual Emerald Scales
	{ itemID = 354263 }, --Robe of Woven Dreams
	{ itemID = 354264 }, --Scout's Bracers
	{ itemID = 354265 }, --Giant Ruby Eye
	{ itemID = 354266 }, --The Wanderer's Stirring Rod
	{ itemID = 354268 }, --Everdark Shard
	{ itemID = 354269 }, --Woodcleaving Axe
	{ itemID = 354271 }, --Drape of the Lost
	{ itemID = 354273 }, --Vigilant Glaive
	{ itemID = 354274 }, --Bag of Folding
	{ itemID = 354275 }, --On the Importance of Arcane Foci
	{ itemID = 354276 }, --Bear's Head Apprentice Robe
	{ itemID = 354277 }, --Totem of Venc
	{ itemID = 354278 }, --Legashi Hellmail
	{ itemID = 354279 }, --Kim'Jael's "Trustworthy" Boots
	{ itemID = 354280 }, --Pattern: Blue Dragonscale Armor Kit
	{ itemID = 354283 }, --Vuna'thell
	{ itemID = 354286 }, --Recipe: Miru Berry Strudel
	{ itemID = 354289 }, --Mushroom Growth Formula
	{ itemID = 354292 }, --Recipe: Freshly Brewed Firewater
	{ itemID = 354293 }, --Pattern: Flameweave Armor Patch
	{ itemID = 354295 }, --Cardinal Power Crystal
	{ itemID = 354300 }, --Hexed Staff
	{ itemID = 354312 }, --Leyline Research
	{ itemID = 354325 }, --Torn Cloak
	{ itemID = 354326 }, --Hive Regal Claw
	{ itemID = 354327 }, --Hercular's Unstable Orb
	{ itemID = 354328 }, --Burning Vanguard Hauberk
	{ itemID = 354446 }, --Bastion of the Fallen
	{ itemID = 354447 }, --Faded Promise Ring
	{ itemID = 354448 }, --Veneration to the Ancient Ones
	{ itemID = 354449 }, --Axe of Slaughter
	{ itemID = 354450 }, --Bloodied Gauntlets
	{ itemID = 354451 }, --Vulture Hide Leggings
	{ itemID = 354452 }, --Betrayal's Edge
	{ itemID = 354453 }, --Banner of the Dark Riders
	{ itemID = 354454 }, --Reverence of the Ancient Ones
	{ itemID = 354455 }, --Kire, Exaltation of the Ancient Ones
	{ itemID = 354456 }, --Girdle of the Shadowslayer
	{ itemID = 354457 }, --Ariden's Circlet
	{ itemID = 354458 }, --Branch of Mourning
	{ itemID = 354459 }, --Aion of Desolation
	{ itemID = 354460 }, --Pauldrons of Shadow
	{ itemID = 354461 }, --Celsalia's Luxorious Robes
	{ itemID = 354462 }, --Shorean's Ironwood Longbow
	{ itemID = 354463 }, --Ashen Boots
	{ itemID = 354464 }, --Volkmar's Enchanting Rod
	{ itemID = 354465 }, --The Master's Bottle
	{ itemID = 354466 }, --Vintner's Wristguards
	{ itemID = 354467 }, --Recipe: Miru Berry Wine
	{ itemID = 354468 }, --Bag of Folding
	{ itemID = 354469 }, --Fragment of K'aresh
	{ itemID = 354471 }, --Mineral Fragment
	{ itemID = 354472 }, --Watcher of Tomes
	{ itemID = 354473 }, --Slayer's Claymore
	{ itemID = 354474 }, --Cord of Reverence
	{ itemID = 354475 }, --Aloof Tauren's Herbs
	{ itemID = 354476 }, --Bones to Munch
	{ itemID = 354477 }, --Lookout Scope
	{ itemID = 354478 }, --Goldenmist Waterblade
	{ itemID = 354479 }, --Earth Reverent's Sash
	{ itemID = 354480 }, --Staff of the Wind Sisters
	{ itemID = 354481 }, --Needlewind Crossbow
	{ itemID = 354482 }, --Engine Safety Belt
	{ itemID = 354483 }, --Freewind Gloves
	{ itemID = 354485 }, --Warcaster Slippers
	{ itemID = 354486 }, --Dustscour Courier Belt
	{ itemID = 354487 }, --Alteraci Band
	{ itemID = 354488 }, --Shredder's Medallion
	{ itemID = 354489 }, --Syndicate Crossbow
	{ itemID = 354490 }, --Tombbound Warhammer
	{ itemID = 354491 }, --Bloodscalp Cord
	{ itemID = 354492 }, --Tinkering Belt
	{ itemID = 354493 }, --Sky Shot Cloak
	{ itemID = 354494 }, --Bloodsail Longbow
	{ itemID = 354495 }, --Grom'gol Hunting Rifle
	{ itemID = 354497 }, --Wind Ritual Staff
	{ itemID = 354498 }, --Axe of the Lost
	{ itemID = 354499 }, --Nightmare's Edge
	{ itemID = 354500 }, --Khazno's Shotgun
	{ itemID = 354501 }, --Crocolisk Hunter's Bow
	{ itemID = 354502 }, --Wand of the Ancients
	{ itemID = 354503 }, --Sandworn Arcanist Staff
	{ itemID = 354504 }, --Duststorm Sash
	{ itemID = 354505 }, --Cracked Earth Vest
	{ itemID = 354506 }, --Planned Strike Cord
	{ itemID = 354507 }, --Quel'Danil Amulet
	{ itemID = 354509 }, --Sash of Contemplation
	{ itemID = 354510 }, --Ancient Vilebranch Gloves
	{ itemID = 354511 }, --Nightmarish Bracers
	{ itemID = 354512 }, --Fractured Shoulderpads
	{ itemID = 354513 }, --Wand of the Sands
	{ itemID = 354514 }, --Belt of the Shen'dralar
	{ itemID = 354515 }, --Beezil's Pants
	{ itemID = 354516 }, --Drywallow Gloves
	{ itemID = 354517 }, --Inscribed Sash
	{ itemID = 354518 }, --Theramore Girdle
	{ itemID = 354519 }, --Burnt Spaulders
	{ itemID = 354521 }, --Old Theramore Guard Plate
	{ itemID = 354522 }, --Draenic Longbow
	{ itemID = 354523 }, --Felshot
	{ itemID = 410010 }, --Phylactery Shard
	{ itemID = 410011 }, --Wagon Sack
	{ itemID = 410012 }, --Shimmering Scarlet Cane
	{ itemID = 410013 }, --Scarlet Overalls
	{ itemID = 410014 }, --Scarlet Slicer
	{ itemID = 410015 }, --Radley's Special Scope
	{ itemID = 410016 }, --Northridge Hatchet
	{ itemID = 410017 }, --Bloodied Pants
	{ itemID = 410018 }, --Tracker's Plagued Spike
	{ itemID = 410019 }, --Sentinel Sharpshooter
	{ itemID = 410020 }, --Ebonblight Slippers
	{ itemID = 410021 }, --Burning Judgement
	{ itemID = 410022 }, --Scarlet Band
	{ itemID = 410023 }, --Scarlet Shield
	{ itemID = 410024 }, --Brightflame Codex
	{ itemID = 410025 }, --Scarlet Robe
	{ itemID = 410026 }, --Scarlet Pauldrons
	{ itemID = 410027 }, --Charred Slicer
	{ itemID = 410028 }, --Staff of the Twisted Spirit
	{ itemID = 410029 }, --Scourgestalker’s Girdle
	{ itemID = 410030 }, --Bonescourge Dagger
	{ itemID = 410031 }, --Ghoul-Stitched Shoulders
	{ itemID = 410032 }, --Fetid Mace
	{ itemID = 410033 }, --Graveyard Striker
	{ itemID = 410034 }, --Decayed Grippers
	{ itemID = 410035 }, --Plagued Cloak
	{ itemID = 410036 }, --Apothecary Cowl
	{ itemID = 410038 }, --Bravecrest Chain
	{ itemID = 410039 }, --Dustsworn Sash
	{ itemID = 410040 }, --Excavator's Pick
	{ itemID = 410041 }, --The Eternal's Journal
	{ itemID = 410042 }, --Wand of Twilight
	{ itemID = 410043 }, --Twilight Talisman
	{ itemID = 410044 }, --Shadow Slinger Pants
	{ itemID = 410045 }, --Infested Pauldrons
	{ itemID = 410046 }, --Trigdy's Pistol
	{ itemID = 410047 }, --Standard Cenarion Spear
	{ itemID = 410048 }, --Ancient Sentinel Headdress
	{ itemID = 410049 }, --Southwind Defender
	{ itemID = 410050 }, --Runaway's Tunic
	{ itemID = 410051 }, --Darnell's Blade
	{ itemID = 410052 }, --Scarab Smasher
	{ itemID = 410053 }, --Horde Recruitment Insignia
	{ itemID = 410054 }, --Alliance Recruitment Badge
	{ itemID = 410055 }, --Twilight's Presence
	{ itemID = 410056 }, --Geo Band
	{ itemID = 410057 }, --Cursed Ritual Carver
	{ itemID = 410058 }, --Wind Pendant
	{ itemID = 410059 }, --Qiraji Scale Greaves
	{ itemID = 410060 }, --Chitin Thread Wraps
	{ itemID = 410061 }, --Silithic Scale Hauberk
	{ itemID = 410062 }, --Hardened Scarab Gauntlets
	{ itemID = 410063 }, --Soldier's Bulwark
	{ itemID = 410064 }, --Rockstalker Silk Robe
	{ itemID = 410065 }, --Idol of Shifting Sands
	{ itemID = 410066 }, --Sandreaver Longbow
	{ itemID = 410067 }, --Twilight Prophet Staff
	{ itemID = 410068 }, --Scorpionscale Mantle
	{ itemID = 410069 }, --Carapace Clasps
	{ itemID = 410070 }, --Lost Cenarion Bolter
	{ itemID = 410071 }, --Sandstone Sniper
	{ itemID = 410072 }, --Bracers of the Bound Storm
	{ itemID = 410073 }, --Old God Carving
	{ itemID = 410074 }, --Sandstorm Shaper
	{ itemID = 410075 }, --Brigade Blunderbuss
	{ itemID = 410076 }, --Purple Steppers
	{ itemID = 410077 }, --Chitinsunder Greataxe
	{ itemID = 410079 }, --Timbermaw Idol
	{ itemID = 410080 }, --Thermal Pendant
	{ itemID = 410081 }, --Researcher's Dish
	{ itemID = 410082 }, --Chillbane Cleaver
	{ itemID = 410083 }, --Winter Band
	{ itemID = 410085 }, --Winter's Last Embrace
	{ itemID = 410086 }, --Fur-Lined Vest
	{ itemID = 410087 }, --Excavator's Buckler
	{ itemID = 410088 }, --Windsong Totem
	{ itemID = 410089 }, --Glacierpaw Bindings
	{ itemID = 410090 }, --Flattened Shoulderpad
	{ itemID = 410091 }, --Snowtalon Crossbow
	{ itemID = 410092 }, --Icemaw Greatmaul
	{ itemID = 410093 }, --Aurorawhirl Pick
	{ itemID = 410094 }, --Frostglade Saber
	{ itemID = 410095 }, --Wailing Talisman
	{ itemID = 410096 }, --Lonely Gauntlets
	{ itemID = 410097 }, --Wintergale Cloak
	{ itemID = 410098 }, --Snowstalker Rifle
	{ itemID = 410099 }, --Frostsaber Halberd
	{ itemID = 410100 }, --Coldsnap Girdle
	{ itemID = 410101 }, --Owlbeast Pantaloons
	{ itemID = 410102 }, --Owlbeast Talon
	{ itemID = 410103 }, --Horror Horns
	{ itemID = 410104 }, --Non-Slip Winter Boots
	{ itemID = 410105 }, --Winterbite Legguards
	{ itemID = 410106 }, --Winterfall Dagger
	{ itemID = 410107 }, --Cold Wristguards
	{ itemID = 410108 }, --Chillhammer
	{ itemID = 410109 }, --Ice Thistle Cape
	{ itemID = 410110 }, --Hunter's Knife
	{ itemID = 410111 }, --Aurora Orb
	{ itemID = 410112 }, --Stormchill Spaulders
	{ itemID = 410113 }, --Azure Focusing Staff
	{ itemID = 410114 }, --Maddening Signet
	{ itemID = 410115 }, --Eversleet Handguards
	{ itemID = 410116 }, --Frostweave Vestment
	{ itemID = 410117 }, --Starfall Longbow
	{ itemID = 410118 }, --Ice Shaver
	{ itemID = 410119 }, --The Leaping Arc
	{ itemID = 410120 }, --Ve'il's Unstable Fel Potion
	{ itemID = 410121 }, --Darkwhisper Spear
	{ itemID = 410122 }, --Concentrated Fel Crystal
	{ itemID = 410123 }, --Hyjal Protector's Knuckleduster
	{ itemID = 410124 }, --Libram of Amphibious Devotion
	{ itemID = 410125 }, --Snowpeak Claymore
	{ itemID = 410127 }, --Cryptfiend Fang
	{ itemID = 410128 }, --Revival Garments
	{ itemID = 410129 }, --Argent Sentry Pauldrons
	{ itemID = 410130 }, --Fungal Cleaver
	{ itemID = 410131 }, --Forbidden Fruit
	{ itemID = 410132 }, --Mossflayer Lost Totem
	{ itemID = 410133 }, --Tainted Wasteblade
	{ itemID = 410134 }, --Resilient Stompers
	{ itemID = 410135 }, --Idol of Breathing Life
	{ itemID = 410136 }, --Deadcapitator
	{ itemID = 410137 }, --Scarlet Doctrine
	{ itemID = 410138 }, --Scarlet Crossbow
	{ itemID = 410139 }, --Scarlet Cauterizer
	{ itemID = 410140 }, --Scorched Runeblade
	{ itemID = 410141 }, --Malleus Haereticorum
	{ itemID = 410142 }, --Ghoulbane Gauntlets
	{ itemID = 410143 }, --The Silver Blade
	{ itemID = 410144 }, --Plague Purger
	{ itemID = 410145 }, --Pattern: Mossflayer Armor Patch
	{ itemID = 410146 }, --Robin the Young Plaguebat
	{ itemID = 410147 }, --Bubbling Blood of Heroes
	{ itemID = 410148 }, --Ring of Memorial
	{ itemID = 410149 }, --Deathguard Vambraces
	{ itemID = 410150 }, --Cryptsilk Cuffs
	{ itemID = 410151 }, --Adon's Second Blade
	{ itemID = 410152 }, --Watchman Helm
	{ itemID = 410153 }, --Quel'thalas Commander Aegis
	{ itemID = 410154 }, --Plaguebloom Spear
	{ itemID = 410155 }, --Ghost-thread Shroud
	{ itemID = 410156 }, --Red Metal Pauldrons
	{ itemID = 410157 }, --Spiritwoven Vestments
	{ itemID = 410158 }, --Blight Bomber
	{ itemID = 410159 }, --Mushroom Pickin' Bag
	{ itemID = 410160 }, --Ghost Buster
	{ itemID = 410161 }, --Assisting Hand
	{ itemID = 410162 }, --Junior Mallet
	{ itemID = 410163 }, --Sorrow Leggings
	{ itemID = 410164 }, --Gravewood Belt
	{ itemID = 410165 }, --Plague Fiend Chain
	{ itemID = 410166 }, --Wailing Spirit Amulet
	{ itemID = 410167 }, --Ebonshadow Breeches
	{ itemID = 410168 }, --Havenfire Crown
	{ itemID = 410169 }, --Havenfire Crown
	{ itemID = 410170 }, --Ravenridge Shotgun
	{ itemID = 410171 }, --Bleakfang Handwraps
	{ itemID = 410172 }, --Gravecall Staff
	{ itemID = 410173 }, --Eboncrypt Band
	{ itemID = 410174 }, --Scourge Cloak
	{ itemID = 410175 }, --Deathwhisper Wand
	{ itemID = 410176 }, --Plagued Pitchfork
	{ itemID = 410177 }, --Shadowgrasp Sash
	{ itemID = 410178 }, --Borelgore's Chewtoy
	{ itemID = 410179 }, --Flamefist Claw
	{ itemID = 410180 }, --Darkflight Totem
	{ itemID = 410181 }, --Cinderstrike Mace
	{ itemID = 410182 }, --Ashfall Vambraces
	{ itemID = 410183 }, --Dark Iron Handwraps
	{ itemID = 410184 }, --Magmaweave Pantaloons
	{ itemID = 410185 }, --Flamescale Spire
	{ itemID = 410186 }, --Charfall Mantle
	{ itemID = 410187 }, --Firestorm Cloak
	{ itemID = 410188 }, --Red Chain Belt
	{ itemID = 410189 }, --Ancient Whetstone
	{ itemID = 410190 }, --Volcanic Aegis
	{ itemID = 410191 }, --Inferno Gavel
	{ itemID = 410192 }, --Smolderwing Decapitator
	{ itemID = 410193 }, --Madness Crown
	{ itemID = 410194 }, --Ashenpeak Band
	{ itemID = 410195 }, --Blackrock Side Blade
	{ itemID = 410196 }, --Blackrock Hatchet
	{ itemID = 410197 }, --Blackrock Pike
	{ itemID = 410198 }, --Emberstep Sabatons
	{ itemID = 410199 }, --Charblaze Rifle
	{ itemID = 410200 }, --Spiked Maul
	{ itemID = 410201 }, --Obsidian Boltthrower
	{ itemID = 410202 }, --The Final Strike
	{ itemID = 410203 }, --Grave Offering
	{ itemID = 410204 }, --Burnscorch Wand
	{ itemID = 410205 }, --Wyrmkin Shiv
	{ itemID = 410206 }, --Empty Ogre Loot Sack
	{ itemID = 410207 }, --Blisterhide Headguard
	{ itemID = 410208 }, --Ashendawn Bow
	{ itemID = 410209 }, --Lava Absorbing Blade
	{ itemID = 410210 }, --Firegut Emblem
	{ itemID = 410211 }, --Ashen Cape
	{ itemID = 410212 }, --Moltenflow Tome
	{ itemID = 410213 }, --Charred Signet
	{ itemID = 410214 }, --Embershard Choker
	{ itemID = 410215 }, --Flamescale Leggings
	{ itemID = 410216 }, --Blazing Ember
	{ itemID = 410217 }, --Smokeshell Gauntlets
	{ itemID = 410218 }, --Cinderthread Sash
	{ itemID = 410219 }, --Bloodspire Staff
	{ itemID = 410220 }, --Infernal Fang
	{ itemID = 410221 }, --Ashstone Robes
	{ itemID = 410222 }, --Moltengore Spaulders
	{ itemID = 410223 }, --Searsteel Claymore
	{ itemID = 410224 }, --Charbite Mace
	{ itemID = 410225 }, --Embercarve Greataxe
	{ itemID = 410226 }, --Blackbreach Handaxe
	{ itemID = 410227 }, --Lavasilk Footpads
	{ itemID = 410228 }, --Magma Poker
	{ itemID = 410229 }, --Firebrand Libram
	{ itemID = 410230 }, --Searwind Wand
	{ itemID = 410231 }, --Flayer's Helmet
	{ itemID = 410232 }, --Sticky Sabatons
	{ itemID = 410233 }, --Scarlet Blunderbuss
	{ itemID = 410234 }, --Skippy's Bone
	{ itemID = 410235 }, --Spiced Rum
	{ itemID = 410238 }, --Flame-Kissed Wraps
	{ itemID = 415001 }, --Stromgarde Spell Tome
	{ itemID = 415002 }, --Stromgarde Buckler
	{ itemID = 415003 }, --Caretaker's Burden
	{ itemID = 415004 }, --Peace of the Dead
	{ itemID = 415005 }, --Syndicate Shanker
	{ itemID = 415006 }, --Blade of the Syndicate Lord
	{ itemID = 415007 }, --Muffled Boots
	{ itemID = 415008 }, --Onestone's One Stone
	{ itemID = 415009 }, --Water Drawing Cap
	{ itemID = 415010 }, --Musty Horse Blanket
	{ itemID = 415011 }, --Syndiclap
	{ itemID = 415012 }, --Commode Cleaver
	{ itemID = 415013 }, --Witherbark Headsmasher
	{ itemID = 415014 }, --The Withered Totem
	{ itemID = 415015 }, --Rough Weathered Ring
	{ itemID = 415016 }, --Skullknocker
	{ itemID = 415017 }, --Heavy Tempered Blade
	{ itemID = 415018 }, --Withered Trollkin Shoulders
	{ itemID = 415019 }, --Poacher's Bow
	{ itemID = 415020 }, --Dark Iron Blaster
	{ itemID = 415021 }, --Ancient Dark Iron Mace
	{ itemID = 415022 }, --Stolen War Pendant
	{ itemID = 415023 }, --Forgotten Fitted Pants
	{ itemID = 415024 }, --Abandonded Wristguard
	{ itemID = 415025 }, --Interlinked Fingerguards
	{ itemID = 415026 }, --Watchguard's Prized Plate
	{ itemID = 415027 }, --Thunder Infused Offering
	{ itemID = 415028 }, --Suprisingly Sturdy Helm
	{ itemID = 415029 }, --Ancient Wavepiercer
	{ itemID = 415030 }, --Boarder's Axe
	{ itemID = 415031 }, --Circle of Waves Idol
	{ itemID = 415032 }, --Hammerfall Wristguards
	{ itemID = 415033 }, --Brumn's Unfinished Project
	{ itemID = 415034 }, --Deadweight Pauldrons
	{ itemID = 415035 }, --Versatile Fishing Blanket
	{ itemID = 415036 }, --Offering Pendant
	{ itemID = 415037 }, --Mountain Climbers
	{ itemID = 415038 }, --Plains Bolter
	{ itemID = 415039 }, --Earth Infused Offering
	{ itemID = 415040 }, --Loose Treasure Pants
	{ itemID = 415041 }, --Grave Spite
	{ itemID = 415042 }, --Arcane Impaler
	{ itemID = 415043 }, --Silken Travel Gloves
	{ itemID = 415044 }, --Flame Infused Offering Band
	{ itemID = 415045 }, --Mok'rash's Circlet
	{ itemID = 415046 }, --Hull Breaker
	{ itemID = 415047 }, --Keelhaul's Saber
	{ itemID = 415048 }, --Cannon Loaders
	{ itemID = 415049 }, --Tamas's Black Powder Pouch
	{ itemID = 415050 }, --Bloodsail Decksweeper
	{ itemID = 415051 }, --Gorilla Pelt
	{ itemID = 415052 }, --Blackwater Booty Band
	{ itemID = 415053 }, --Gorlash's Seaweed Salad
	{ itemID = 415054 }, --Premium Banana
	{ itemID = 415055 }, --Pilfered Plate Pants
	{ itemID = 415056 }, --Zanzil Vial Pendant
	{ itemID = 415057 }, --Alchemist's Ladel
	{ itemID = 415058 }, --Sea Cleaver
	{ itemID = 415059 }, --Special Seashell
	{ itemID = 415060 }, --Buccaneer Shiv
	{ itemID = 415061 }, --Naga Throwing Trident
	{ itemID = 415062 }, --Jose's Best Slacks
	{ itemID = 415063 }, --Mangled Wraps
	{ itemID = 415064 }, --Sharpened Raptor Tooth
	{ itemID = 415065 }, --A Guide to a Succubus' Darkest Secrets
	{ itemID = 415066 }, --Pristine Tethis Feather
	{ itemID = 415067 }, --Ancient Sea-dweller Charm
	{ itemID = 415068 }, --Voodoo Bonemaker
	{ itemID = 415069 }, --South Sea Dress
	{ itemID = 415070 }, --Jungle Stalker Pauldrons
	{ itemID = 415071 }, --Hunting Spear
	{ itemID = 415072 }, --Mosh'Ogg Stave
	{ itemID = 415073 }, --Kal'ai Jewel
	{ itemID = 415074 }, --Ravaged Shoulderpads
	{ itemID = 415075 }, --Bloodscalper
	{ itemID = 415076 }, --Panther Shredders
	{ itemID = 415077 }, --Zul'Kunda Tribe Trophy
	{ itemID = 415078 }, --Wizard Cuffs
	{ itemID = 415079 }, --Yojamba Hex Skull
	{ itemID = 415080 }, --Depleted Elemental Lodestone
	{ itemID = 415081 }, --Zul'Kunda Blood Ring
	{ itemID = 415082 }, --Bloodscalp Beastmastery Amulet
	{ itemID = 415083 }, --Zul'Kunda Scout Vest
	{ itemID = 415084 }, --Bloodscalp Skullpiercer
	{ itemID = 415085 }, --Jungle Defender
	{ itemID = 415087 }, --Nesingwary Tracking Boots
	{ itemID = 415088 }, --Riverheart Crest
	{ itemID = 415089 }, --Last Guardian
	{ itemID = 415090 }, --Jungle Medicine Compendium
	{ itemID = 415091 }, --Jungle Broadblade
	{ itemID = 415092 }, --The Wrangler
	{ itemID = 415093 }, --Shiv of Warm Greetings
	{ itemID = 415094 }, --Witchdoctor Mixing Gloves
	{ itemID = 415095 }, --Kurzen Eviscerator
	{ itemID = 415096 }, --Kurzen Madness Blade
	{ itemID = 415097 }, --Crystallized Shield
	{ itemID = 415098 }, --Gurubashi Trainee Hatchet
	{ itemID = 415099 }, --Rebel Runners
	{ itemID = 415100 }, --Axe Swingers
	{ itemID = 415101 }, --Splinter Guard
	{ itemID = 415102 }, --Cogwheel Band
	{ itemID = 415103 }, --Mosh'Ogg Totem
	{ itemID = 415104 }, --Mind's Eye Fragment
	{ itemID = 415105 }, --Fifth Staff of Mosh'Ogg Magic Circle
	{ itemID = 415106 }, --Thunder Fur Cloak
	{ itemID = 415107 }, --Skullsplitter Crossbow
	{ itemID = 415108 }, --Martyr Cross Book
	{ itemID = 415109 }, --Mystic Druid Idol
	{ itemID = 415110 }, --Traveler's Lost Bag
	{ itemID = 415111 }, --Crystallized Amulet
	{ itemID = 415112 }, --Crystallized Wristguards
	{ itemID = 415113 }, --The Ironjaw
	{ itemID = 415114 }, --Stonesplitter
	{ itemID = 415115 }, --Fallen Gladiator's Shield
	{ itemID = 415116 }, --Nature's Defiance
	{ itemID = 415117 }, --Lazy Hat
	{ itemID = 415118 }, --Jubuwal Witchdoctor Amulet
	{ itemID = 415119 }, --Ring of Accurate Endeavors
	{ itemID = 415120 }, --Muckrake's Soup Bowl
	{ itemID = 415121 }, --Coldridge Crusher
	{ itemID = 415122 }, --Polished Alteraci Breastplate
	{ itemID = 415123 }, --Blood Soaked Spike
	{ itemID = 415124 }, --Syndicate Slicer
	{ itemID = 415125 }, --Feline's Grasp
	{ itemID = 415126 }, --Forgotten Warrior's Pauldrons
	{ itemID = 415127 }, --Ice-Forged Gauntlets
	{ itemID = 415128 }, --Tracker's Scope
	{ itemID = 415129 }, --Totem of the Flowing River
	{ itemID = 415130 }, --Tribal Pads
	{ itemID = 415131 }, --Safety Gloves
	{ itemID = 415132 }, --The Rock Binder
	{ itemID = 415133 }, --Spark of Infernus
	{ itemID = 415134 }, --Shadowforge Shotgun
	{ itemID = 415135 }, --Shadowforged Deflector
	{ itemID = 415136 }, --Toe Hammer
	{ itemID = 415137 }, --Bloodstained Pendant
	{ itemID = 415138 }, --Staff of the Earth Guardian
	{ itemID = 415139 }, --Real Big Bone
	{ itemID = 415140 }, --Garek's Comfortable Robe
	{ itemID = 415141 }, --Thorkaf's Prototype
	{ itemID = 415142 }, --Deflector's Wargreaves
	{ itemID = 415143 }, --Tomb Seeker
	{ itemID = 415144 }, --Tombscarred Guardian
	{ itemID = 415145 }, --Rock Runners
	{ itemID = 415146 }, --Stonewalker's Totem
	{ itemID = 415147 }, --Spellpiercing Cloak
	{ itemID = 415148 }, --Earth Bindings
	{ itemID = 415149 }, --Ogre Fire Poker
	{ itemID = 415150 }, --Stonebloom Idol
	{ itemID = 415151 }, --Ogre Cloth
	{ itemID = 415152 }, --Duelist Gloves
	{ itemID = 415153 }, --Dustbringer
	{ itemID = 415154 }, --Focusing Spirit Band
	{ itemID = 415155 }, --Bone Carver
	{ itemID = 415156 }, --Sunscorched Thrower
	{ itemID = 415157 }, --Ragescorn Circlet
	{ itemID = 415158 }, --Unearthed Pauldrons
	{ itemID = 415159 }, --Wind-Worn Longbow
	{ itemID = 415160 }, --Cowl of the Stone Summoner
	{ itemID = 415161 }, --Bloodstained Helm
	{ itemID = 450238 }, --Frostwalker Boots
	{ itemID = 450239 }, --Spicy Candle
	{ itemID = 450240 }, --Lost Adventurer's Ring
	{ itemID = 450241 }, --Forgotten Knapsack
	{ itemID = 450242 }, --Glinting Necklace
	{ itemID = 450243 }, --Snow Shovel
	{ itemID = 450244 }, --Lumber Axe
	{ itemID = 450245 }, --Lost Mountaineer's Bow
	{ itemID = 450246 }, --Magnus' Mug
	{ itemID = 450247 }, --Chilly Pickaxe
	{ itemID = 450248 }, --Bone Needle
	{ itemID = 450249 }, --Gnomeregan Spanner
	{ itemID = 450250 }, --Sailor's Ring
	{ itemID = 450251 }, --Wendigo Fur Cloak
	{ itemID = 450252 }, --Frostmane Axe
	{ itemID = 450253 }, --Frozen Finger
	{ itemID = 450254 }, --Arctic Imbued Stick
	{ itemID = 450256 }, --Claw of Vagash
	{ itemID = 450257 }, --Heavy Ogre Axe
	{ itemID = 450258 }, --Grizlak's Candle
	{ itemID = 450259 }, --Large Buzzard Talon
	{ itemID = 450260 }, --Tunnel Rat Pike
	{ itemID = 450261 }, --Miner's League Vest
	{ itemID = 450262 }, --Sword of Stone
	{ itemID = 450263 }, --Galgosh's Other Bone
	{ itemID = 450264 }, --Brother's Special Gift
	{ itemID = 450265 }, --Ol' Blunderbuss
	{ itemID = 450266 }, --Dark Iron Collar
	{ itemID = 450267 }, --Ogre Loincloth
	{ itemID = 450268 }, --Frenzy Fin
	{ itemID = 450269 }, --Scrap Shield
	{ itemID = 450270 }, --Lost Traveler's Ring
	{ itemID = 450271 }, --Frayed Backwrap
	{ itemID = 450272 }, --Enchanted Scribe's Feather
	{ itemID = 450273 }, --Crater's Silk Drape
	{ itemID = 450274 }, --Runed Pantaloons
	{ itemID = 450275 }, --Charred Greaves
	{ itemID = 450276 }, --Dusty Sorcerer Hat
	{ itemID = 450277 }, --Chain of the Forgotten Prisoner
	{ itemID = 450500 }, --Worn Grunt Axe
	{ itemID = 450501 }, --Abandoned Peon's Sack
	{ itemID = 450502 }, --Wristguards of the Elements
	{ itemID = 450503 }, --Sturdy Peon Blanket
	{ itemID = 450504 }, --Large Kodo Bone
	{ itemID = 450505 }, --Stolen Tauren Cloak
	{ itemID = 450506 }, --Ancestor's Axe
	{ itemID = 450507 }, --Aloof Tauren's Herb Incense
	{ itemID = 450508 }, --Burning Blade Ring
	{ itemID = 450509 }, --Bloodied Torn Bracers
	{ itemID = 450510 }, --Travel Sack
	{ itemID = 450511 }, --Gem of Fortitude
	{ itemID = 450512 }, --Defias Special Bucket
	{ itemID = 450513 }, --Wax Stained Bag
	{ itemID = 450514 }, --Deadman Walkers
	{ itemID = 450515 }, --Mother's Loose Fang
	{ itemID = 450517 }, --Bones to Gnaw
	{ itemID = 450518 }, --Bones to Munch
	{ itemID = 450519 }, --Stormwind Memento
	{ itemID = 450520 }, --Lookout Scope
	{ itemID = 450522 }, --Murloc Voodoo Doll
	{ itemID = 450523 }, --Enchanted Straw Appendage
	{ itemID = 450524 }, --Lexicon Ring
	{ itemID = 450525 }, --Thunderfall Wand
	{ itemID = 450526 }, --Thunderfall Hunting Gun
	{ itemID = 450527 }, --Loop of the Sly Rogue
	{ itemID = 450528 }, --The Candle
	{ itemID = 450529 }, --Gnoll Subjugator
	{ itemID = 450530 }, --Rot Hide Mantle
	{ itemID = 450531 }, --Ravenous Eye
	{ itemID = 450532 }, --Alchemy Research Notes
	{ itemID = 450533 }, --Rot Hide Harness
	{ itemID = 450534 }, --Stolen Rot Hide Circlet
	{ itemID = 450535 }, --Thule's Curse Parchment
	{ itemID = 450536 }, --Grandpa's Scarlet Blade
	{ itemID = 450537 }, --Arcane Glinting Shard
	{ itemID = 450538 }, --Ancient Lordaeron Jewel
	{ itemID = 450539 }, --Sack of Pine Seeds
	{ itemID = 450540 }, --Ivar's Femur
	{ itemID = 450541 }, --Nightlash Gown
	{ itemID = 450542 }, --Small Claw of the Meat Wagon
	{ itemID = 450543 }, --Poison Unguent Extract
	{ itemID = 450544 }, --Gilnean Monocle
	{ itemID = 450545 }, --Grimson Cloak
	{ itemID = 450546 }, --Fenris Ring
	{ itemID = 450547 }, --Ravenclaw Bone Necklace
	{ itemID = 450548 }, --Corroded Quel'thalas Ring 
	{ itemID = 450549 }, --Worn Quel'thalas Heirloom
	{ itemID = 450550 }, --Old Quel'thalas Brooch
	{ itemID = 450551 }, --Fisherman's Last Wish
	{ itemID = 450552 }, --Peculiar Gold Nugget
	{ itemID = 450553 }, --Mrlrgrl Pitchfork
	{ itemID = 450554 }, --Rusty Quel'thalas Circlet
	{ itemID = 450555 }, --Murky Quel'thalas Drape
	{ itemID = 450556 }, --People's Militia Crossbow
	{ itemID = 450557 }, --Stolen Thunderbrew Flask
	{ itemID = 450558 }, --Terrible Defias Mixture
	{ itemID = 450559 }, --Madness Cursed Notes
	{ itemID = 450560 }, --Harvest Golem Scythe
	{ itemID = 450561 }, --People's Militia Badge
	{ itemID = 450562 }, --Defias Honorcode Memento
	{ itemID = 450563 }, --Defias Sprig
	{ itemID = 450564 }, --Old Defias Gun
	{ itemID = 450565 }, --Defias Assassin Cloak
	{ itemID = 450566 }, --Ring of the Lexicon
	{ itemID = 450567 }, --Dirtpaw Trousers
	{ itemID = 450568 }, --Yowler's Howl
	{ itemID = 450569 }, --Dragon Matriarch Cloak
	{ itemID = 450570 }, --Stolen Ilgalar Neckpiece
	{ itemID = 450571 }, --Blackrock Summoner's Garb
	{ itemID = 450572 }, --Shadowhide Claw
	{ itemID = 450573 }, --Blackrock Render
	{ itemID = 450574 }, --Three Corner Coil
	{ itemID = 450575 }, --Three Corner Carp
	{ itemID = 450576 }, --Three Corner Cape
	{ itemID = 450577 }, --Mrrrllrl Stick
	{ itemID = 450578 }, --Aqualon's Bolt
	{ itemID = 450579 }, --Thresher's Tooth
	{ itemID = 450580 }, --Ribchaser's Loop
	{ itemID = 450581 }, --Eliza's Pendant
	{ itemID = 450582 }, --Fullmoon Howl
	{ itemID = 450583 }, --Naraxis Fang
	{ itemID = 450584 }, --Haunted Bouquet
	{ itemID = 450585 }, --Gutspill Cloak
	{ itemID = 450586 }, --Sack of Regenerating Provisions
	{ itemID = 450587 }, --Nightwatch Circlet
	{ itemID = 450588 }, --Dusty Priest Cloak
	{ itemID = 450589 }, --Pack Lead Bone Ring
	{ itemID = 450590 }, --Defias Night Blade
	{ itemID = 450591 }, --Vul'Gol Torch
	{ itemID = 450592 }, --Venom Sample
	{ itemID = 450593 }, --Cursed Toy
	{ itemID = 450594 }, --The Jitters
	{ itemID = 450595 }, --Raven Hill Backscratcher
	{ itemID = 450597 }, --Casket Will
	{ itemID = 450598 }, --Catacombs Torch
	{ itemID = 450599 }, --Alchemy Visceral Juice
	{ itemID = 450600 }, --Ruby Skeletal Ring
	{ itemID = 450601 }, --Poisoned Pendant
	{ itemID = 450602 }, --Hazard Mantle
	{ itemID = 450603 }, --Peculiar Root
	{ itemID = 450604 }, --Darkest Night Loop
	{ itemID = 450605 }, --Munitions Delivery Package
	{ itemID = 450606 }, --Emerald Glinting Scale
	{ itemID = 450607 }, --Hope for Atonement
	{ itemID = 450609 }, --Bristleback Staff
	{ itemID = 450610 }, --Thornmantle Quills
	{ itemID = 450611 }, --Bristleback Quill
	{ itemID = 450612 }, --Brambleblade
	{ itemID = 450613 }, --Feather of the Mother Harpy
	{ itemID = 450614 }, --Venture Co. Unique Concoction
	{ itemID = 450615 }, --Fallen Hardwood Plank
	{ itemID = 450616 }, --Snaggle's Engage Whistle
	{ itemID = 450617 }, --Long Fishing Spear
	{ itemID = 450618 }, --Windfury Harpy Claw
	{ itemID = 450619 }, --Galak Smasher
	{ itemID = 450620 }, --Venture Co. Ring
	{ itemID = 450621 }, --Discarded Wagon Wheel
	{ itemID = 450622 }, --Interloper's Loop
	{ itemID = 450623 }, --Lyrath's Pan Flute
	{ itemID = 450624 }, --Amani Relic Amulet
	{ itemID = 450625 }, --Sin'dorei Battle Staff
	{ itemID = 450626 }, --Blight Potion
	{ itemID = 450627 }, --Scourge Blight Staff
	{ itemID = 450628 }, --Broken Windrunner Scotch Bottle
	{ itemID = 450629 }, --Goldenmist Everflowing Water
	{ itemID = 450630 }, --Crystalized Mana Wyrm Core
	{ itemID = 450631 }, --Blackpaw Scavenger Pick
	{ itemID = 450632 }, --Huntress Sentinel Ring
	{ itemID = 450633 }, --Fallen Eye Jewel
	{ itemID = 450634 }, --Dawnstar Paladin Claymore
	{ itemID = 450635 }, --Second War Axe
	{ itemID = 450636 }, --Ancient Amani Shield
	{ itemID = 450637 }, --An'owyn Fragment
	{ itemID = 450638 }, --Lost Bone Necklace 
	{ itemID = 450639 }, --Loded Ring
	{ itemID = 450640 }, --Vial of Dread Water
	{ itemID = 450641 }, --Honor Blade
	{ itemID = 450642 }, --Wailing Sapphire Gem
	{ itemID = 450643 }, --Stylish Cloak
	{ itemID = 450644 }, --Bloody Wedding Ring
	{ itemID = 450645 }, --Northwatch Hand Cannon
	{ itemID = 450646 }, --Affray Cuirras
	{ itemID = 450647 }, --Captain's Spyglass
	{ itemID = 450648 }, --Overwatch Bow
	{ itemID = 450649 }, --Special Excavation Lantern
	{ itemID = 450650 }, --Burial Wraps
	{ itemID = 450652 }, --Grave Restoration Mixture
	{ itemID = 450653 }, --All Natural Herbal Potion
	{ itemID = 450654 }, --Recruit's Life Saving Potion
	{ itemID = 450655 }, --Sunstrider Wraps
	{ itemID = 450656 }, --Arcane Tinged Water
	{ itemID = 450657 }, --Water Wraps
	{ itemID = 450658 }, --Worn Shovel
	{ itemID = 450659 }, --Patrolman's Sword
	{ itemID = 450670 }, --Drumstick
	{ itemID = 450671 }, --Fire Poker
	{ itemID = 450672 }, --Mossy Bag
	{ itemID = 450673 }, --Moonbathed Necklace
	{ itemID = 450674 }, --Glen Guardian
	{ itemID = 450675 }, --Lily Corsage
	{ itemID = 450676 }, --Tracker's Dagger
	{ itemID = 450677 }, --Webbed Cloak
	{ itemID = 450678 }, --Dripping Fang
	{ itemID = 450679 }, --Crystal Collecting Sack
	{ itemID = 450680 }, --Novice's Regenerating Concoction
	{ itemID = 450681 }, --Rabbit's Paw
	{ itemID = 450682 }, --Spine Hammer
	{ itemID = 450683 }, --Edan's Stripe
	{ itemID = 450684 }, --Salvaged Cannon
	{ itemID = 450685 }, --Dark Iron Vest
	{ itemID = 450686 }, --Thawed Boots
	{ itemID = 450687 }, --Voodoo Kilt
	{ itemID = 450689 }, --Centaur Axe
	{ itemID = 450691 }, --Treasured Cutlass
	{ itemID = 450692 }, --Logsplitter
	{ itemID = 450694 }, --Skull Sword
	{ itemID = 450696 }, --Quilbow
	{ itemID = 450697 }, --Raptorscale Cloak
	{ itemID = 450700 }, --Gardening Gloves
	{ itemID = 450701 }, --Defias Cowl
	{ itemID = 450703 }, --Silky Spaulders
	{ itemID = 450705 }, --Dustrunner Bindings
	{ itemID = 450706 }, --Field Rations
	{ itemID = 450707 }, --Assassin's Crossbow
	{ itemID = 450709 }, --Harpy Hunter
	{ itemID = 450711 }, --Sailor's Gambeson
	{ itemID = 450712 }, --Margoz' Spare Stompers
	{ itemID = 450713 }, --Farm Hands
	{ itemID = 450717 }, --Conscript's Wraps
	{ itemID = 450718 }, --Sailor's Cuffs
	{ itemID = 450720 }, --Retired Grunt's Chainmail
	{ itemID = 450721 }, --Heavy Boots
	{ itemID = 450724 }, --Grunt's Chain Leggings
	{ itemID = 450729 }, --Enchanted Kobold Lantern
	{ itemID = 450740 }, --Skull Ring
	{ itemID = 450741 }, --Bramble Shield
	{ itemID = 450744 }, --Throwing Rock
	{ itemID = 450745 }, --Southfury Totem
	{ itemID = 450746 }, --Burning Blade Mark
	{ itemID = 450748 }, --Defias Handshake
	{ itemID = 450750 }, --Totem Charged Mace
	{ itemID = 450751 }, --Retired Shadow Blade
	{ itemID = 450752 }, --Warsong Timbercleaver
	{ itemID = 450753 }, --Orcish Fishing Device
	{ itemID = 450755 }, --Scalper's Sack
	{ itemID = 450756 }, --Maestra's Training Longbow
	{ itemID = 450757 }, --Thistlefur Fur Shroud
	{ itemID = 450758 }, --Old Arcanus Robe
	{ itemID = 450762 }, --Warm Whoolies
	{ itemID = 450767 }, --Poacher's Crossbow
	{ itemID = 450768 }, --Thunder Hide Tailspike
	{ itemID = 450771 }, --Padded Vest
	{ itemID = 450773 }, --Flexible Gloves
	{ itemID = 450775 }, --Field Trousers
	{ itemID = 450780 }, --Claw Scarred Mail
	{ itemID = 450782 }, --Miner Handwraps
	{ itemID = 450788 }, --String of Ears
	{ itemID = 450789 }, --Firestarter
	{ itemID = 450799 }, --Apprentice's Harpoon
	{ itemID = 450803 }, --Stormwitch Staff
	{ itemID = 450805 }, --Furbolg War Drum
	{ itemID = 450806 }, --Jar of Spiders
	{ itemID = 450807 }, --Bathran's Cursed Twig
	{ itemID = 450809 }, --Jack's Toothpicker
	{ itemID = 450812 }, --Ironbeard's Axe
	{ itemID = 450815 }, --Ravine Sack
	{ itemID = 450816 }, --Silverwing Grovekeeper's Bow
	{ itemID = 450822 }, --Party Pants
	{ itemID = 450825 }, --Wizard Wraps
	{ itemID = 450826 }, --Arkonite Crystal
	{ itemID = 450827 }, --Bristlebow
	{ itemID = 450829 }, --Nightshot
	{ itemID = 450835 }, --Suspiciously Brown Trousers
	{ itemID = 450838 }, --Adventurer Gloves
	{ itemID = 450840 }, --Soldier's Mail
	{ itemID = 450850 }, --Guide to Elven Restoration - Vol. I
	{ itemID = 450860 }, --Rosebud Ring
	{ itemID = 450865 }, --Frostmane Totem
	{ itemID = 450869 }, --Ulag's Cleaver
	{ itemID = 450870 }, --Heavy Iron Pan
	{ itemID = 450871 }, --Murder Machete
	{ itemID = 450872 }, --Heavy Logsplitter
	{ itemID = 450873 }, --Woodbreaker Mallet
	{ itemID = 450874 }, --Butchery Blade
	{ itemID = 450876 }, --Fallen Bow
	{ itemID = 450877 }, --Riding Cloak
	{ itemID = 450882 }, --Forgotten Trunks
	{ itemID = 450885 }, --Sunbands
	{ itemID = 450886 }, --The "Kodo Egg"
	{ itemID = 450909 }, --Liquid Arcane
	{ itemID = 450910 }, --Tiloa's Flowers
	{ itemID = 450919 }, --Officer's Pike
	{ itemID = 450920 }, --Fel Infused Band
	{ itemID = 450923 }, --Mystral Staff
	{ itemID = 450930 }, --Haren's Tankard
	{ itemID = 450931 }, --Burial Blade
	{ itemID = 450932 }, --Sharpened Chopper
	{ itemID = 450934 }, --Sentinel's Blade
	{ itemID = 450935 }, --Dropped Bag
	{ itemID = 450946 }, --Untouched Cactus Fruit
	{ itemID = 450948 }, --Bleakheart Piercer
	{ itemID = 450979 }, --Boar Harvester
	{ itemID = 450980 }, --Rider's Ring
	{ itemID = 450981 }, --Intact Wagon Wheel
	{ itemID = 450983 }, --Apprentice Staff
	{ itemID = 450988 }, --Sturdy Fishing Pole
	{ itemID = 450993 }, --Delicious Dried Corn
	{ itemID = 451023 }, --Cursed Fire Scar Pendant
	{ itemID = 451024 }, --Elune Tear Fragment
	{ itemID = 451025 }, --Bloodtooth Neck
	{ itemID = 451026 }, --Repelling Necklace
	{ itemID = 451027 }, --Swashbuckler's Chain
	{ itemID = 451046 }, --Felforged Meteor Fragment
	{ itemID = 451047 }, --Echo of Aessina
	{ itemID = 451048 }, --Ursangous' Claw
	{ itemID = 451049 }, --Endless Moonwell Chalice
	{ itemID = 451052 }, --Etched Tablet
	{ itemID = 451084 }, --Heavy Bone
	{ itemID = 451085 }, --Stump Biter
	{ itemID = 451088 }, --The Dark Soul
	{ itemID = 451090 }, --Billy Bag
	{ itemID = 451096 }, --Garren's Pitchfork
	{ itemID = 451097 }, --Haunted Ring
	{ itemID = 451098 }, --Captain's Shield
	{ itemID = 451099 }, --Murloc Ritual Staff
	{ itemID = 451102 }, --Peon Motivator
	{ itemID = 451105 }, --Waterlogged Musket
	{ itemID = 451107 }, --Travel Sack
	{ itemID = 451111 }, --Defias Shanker
	{ itemID = 451114 }, --Sharpened Pike
	{ itemID = 451117 }, --Defias Magus Staff
	{ itemID = 451123 }, --Drudger Smash
	{ itemID = 451125 }, --Lohgan's Best Bag
	{ itemID = 451129 }, --Defias Toe Knife
	{ itemID = 451401 }, --Billy Bag
	{ itemID = 451993 }, --Arcane-Tinged Flower
	{ itemID = 460000 }, --Dwarven Demolition Kit
	{ itemID = 500560 }, --Lumberjack's Thick Gloves
	{ itemID = 500658 }, --Shockzip's Saw Blade
	{ itemID = 500659 }, --Ironhew's Spare Chopper
	{ itemID = 500661 }, --Tracker's Blade
	{ itemID = 500662 }, --Kargan's Mask
	{ itemID = 500663 }, --Icehide Cloak
	{ itemID = 500664 }, --Grim's Tankard
	{ itemID = 500809 }, --Grunir's Mug
	{ itemID = 500810 }, --Durnar's Stein
	{ itemID = 500811 }, --Morin's Jug
	{ itemID = 500813 }, --Melika's Ring
	{ itemID = 500814 }, --Goldshire Traveler's Boots
	{ itemID = 500815 }, --Defias Turncoat's Jerkin
	{ itemID = 500816 }, --Supply Runner's Pants
	{ itemID = 500817 }, --Scholar's Ring of Enlightenment
	{ itemID = 500818 }, --Minervia's Pendant of Atonement
	{ itemID = 500819 }, --Tome of Second Chances
	{ itemID = 500820 }, --Ring of Embered Thought
	{ itemID = 500821 }, --Charstone Warband
	{ itemID = 500822 }, --Ashen Dreambinder
	{ itemID = 500823 }, --Verdant Ember Loop
	{ itemID = 515003 }, --Tarantula Hunter Rifle
	{ itemID = 515004 }, --Solliden Family Broom
	{ itemID = 515005 }, --Misplaced Pitchfork
	{ itemID = 515006 }, --Washed Ashore Bottle
	{ itemID = 515007 }, --Old Wagon Wheel
	{ itemID = 515008 }, --Puddle-jumper Dagger
	{ itemID = 515009 }, --Dalaran Mage Garb
	{ itemID = 515010 }, --Evil-Infused Cuffs
	{ itemID = 515011 }, --Deathstalker Cloak
	{ itemID = 515012 }, --Forsaken Stone Braid
	{ itemID = 515013 }, --Gravedigger's Delight
	{ itemID = 515014 }, --Agamand Farmer Trousers
	{ itemID = 515015 }, --Apothecary's Lantern
	{ itemID = 515016 }, --Haunted Mace
	{ itemID = 515017 }, --Faulty Stone Golem
	{ itemID = 515018 }, --Dwarven Explosive Barrel
	{ itemID = 515019 }, --Leftover Mining Trousers
	{ itemID = 515020 }, --Scarlet Insignia
	{ itemID = 515021 }, --Windshaper Wraps
	{ itemID = 515022 }, --Old Snapjaw Shell
	{ itemID = 515023 }, --Timelost Captain Shield
	{ itemID = 515024 }, --Hillsbrad Shovel
	{ itemID = 515025 }, --Mudsnout Effigy
	{ itemID = 515026 }, --Deadman's Dagger
	{ itemID = 515027 }, --Eroded Pit Fighter Knuckles
	{ itemID = 515028 }, --Twilight Bands
	{ itemID = 515029 }, --Furbolg War-drum
	{ itemID = 515030 }, --Empty Satchel
	{ itemID = 515031 }, --Suspicious Deathcap
	{ itemID = 515032 }, --Agamand Walking Stick
	{ itemID = 515033 }, --Ghostflame Scripture
	{ itemID = 515034 }, --Moon-knawed Bone Spire
	{ itemID = 515035 }, --Blackwood Torch
	{ itemID = 515036 }, --Hunk of Darkshore Driftwood
	{ itemID = 515037 }, --Fanatic's Cursed Blade
	{ itemID = 515038 }, --Ancient Highborne Tome
	{ itemID = 515039 }, --Ancient Family Heirloom
	{ itemID = 515040 }, --Uncovered Highborne Scroll
	{ itemID = 515041 }, --Foreman's Lightcap
	{ itemID = 515042 }, --Shipwrecked Crate
	{ itemID = 515043 }, --Waterlogged Sparkler
	{ itemID = 515044 }, --Docile Night Web Hatchling
	{ itemID = 515045 }, --Tide Turner
	{ itemID = 515046 }, --Enchanted Flora Waist
	{ itemID = 515047 }, --Unpleasant Ring
	{ itemID = 515143 }, --Moonlight Infused Band
	{ itemID = 515144 }, --Wild Tracker Bindings
	{ itemID = 515145 }, --Seamstress Scissors
	{ itemID = 515146 }, --Heartwood Cleaver
	{ itemID = 515147 }, --Lakebottom Treads
	{ itemID = 515148 }, --Shen'dralar Staff
	{ itemID = 515149 }, --Stolen Highborne Spaulders
	{ itemID = 515150 }, --Grasping Claw
	{ itemID = 515151 }, --Tome of the Valiant
	{ itemID = 515152 }, --Ogre Cleaver
	{ itemID = 515153 }, --Gordunni Thumbtack
	{ itemID = 515154 }, --Gnoll-Gnawed Bone Bat
	{ itemID = 515155 }, --Grim Totem
	{ itemID = 515156 }, --Grimtotem Outrider’s Vest
	{ itemID = 515157 }, --Grimtotem Relic
	{ itemID = 515158 }, --Worn Angler Cord
	{ itemID = 515159 }, --Savage Crossbow
	{ itemID = 515160 }, --Gnoll Stompers
	{ itemID = 515161 }, --Bench Breaker
	{ itemID = 515162 }, --Secluded Soothsayer's Pipes
	{ itemID = 515163 }, --Ambercoil Pendant
	{ itemID = 515164 }, --Silithid Husk Shield
	{ itemID = 515165 }, --Shimmering Silithid Carapace
	{ itemID = 515166 }, --Bug Catchers
	{ itemID = 515167 }, --Beastpile Drape
	{ itemID = 515168 }, --Long-Clawed Gnoll Paw
	{ itemID = 515169 }, --Nightfallen Longbow
	{ itemID = 515170 }, --Denrunner Tomahawk
	{ itemID = 515171 }, --Torn Hide Spaulders
	{ itemID = 515172 }, --Woodpaw Greatblade
	{ itemID = 515173 }, --Orb of Isildien Echoes
	{ itemID = 515174 }, --Shattered Highborne Blade
	{ itemID = 515175 }, --Isildien Tender's Wand
	{ itemID = 515176 }, --Runestone Figurine
	{ itemID = 515177 }, --Ogre Kneepad
	{ itemID = 515178 }, --Necklace of the Sunken Empire
	{ itemID = 515179 }, --Rotted Yolk
	{ itemID = 515180 }, --Moonwell Drops
	{ itemID = 515181 }, --Yeti Napkin
	{ itemID = 515182 }, --Shen'dralar Slicer
	{ itemID = 515183 }, --Moon-Infused Breeches
	{ itemID = 515184 }, --Sentinel Wrap
	{ itemID = 515185 }, --Zapping Rod
	{ itemID = 515186 }, --Strider Shot
	{ itemID = 515187 }, --Strider Waist Piece
	{ itemID = 515188 }, --Band of Scales
	{ itemID = 515189 }, --Solarsal Pendant
	{ itemID = 515190 }, --Tidebaron’s Sigil
	{ itemID = 515191 }, --Hatestrike
	{ itemID = 515192 }, --Tanner Gloves
	{ itemID = 515193 }, --Thunderfur Cloak
	{ itemID = 515194 }, --Crown of Stone
	{ itemID = 515195 }, --Dormant Dreamscale
	{ itemID = 515196 }, --Ravenwind Fangblade
	{ itemID = 515197 }, --Gilded Stone Bulwark
	{ itemID = 515198 }, --Ancient Elvish Bag
	{ itemID = 515199 }, --Ravenwind Codex
	{ itemID = 515200 }, --Zaetar's Lost Heirloom
	{ itemID = 515201 }, --Staff of Twin Blossoms
	{ itemID = 515202 }, --Forgotten Wristguards
	{ itemID = 515203 }, --Night Sentinel's Aim
	{ itemID = 515204 }, --Bloodscorn Ritual Kris
	{ itemID = 515205 }, --Accursed Yeti Horn
	{ itemID = 515206 }, --Buccaneer's Barrier
	{ itemID = 515207 }, --Durn's Loot Bag
	{ itemID = 515208 }, --Scorched Bindings
	{ itemID = 515209 }, --Corrupted Dragon Eye
	{ itemID = 515210 }, --Greedy Fool's Potion
	{ itemID = 515211 }, --Blackhoof Warmaul
	{ itemID = 515212 }, --Missing Apprentice Wand
	{ itemID = 515213 }, --Venomsilk Spellblade
	{ itemID = 515214 }, --Mudcrush Shoulders
	{ itemID = 515215 }, --Singed Flintlock
	{ itemID = 515216 }, --Deserter's Last Resort
	{ itemID = 515217 }, --Bloodfen Prowler Vest
	{ itemID = 515218 }, --Bloodfen Talon
	{ itemID = 515219 }, --Emberstring Drakebow
	{ itemID = 515220 }, --Denflame Channeler
	{ itemID = 515221 }, --Enchanted Dragon Bone
	{ itemID = 515222 }, --Scalebane Pendant
	{ itemID = 515223 }, --Emberscale Greatsword
	{ itemID = 515224 }, --Emberheart Talisman
	{ itemID = 515225 }, --Wheel of Misfortune
	{ itemID = 515226 }, --Tidefury Cutlass
	{ itemID = 515227 }, --Buzzcoil Tongs
	{ itemID = 515228 }, --Cylla's Endless Potion
	{ itemID = 515229 }, --Stonemaul Crusher’s Girdle
	{ itemID = 515230 }, --Marshfall Mantle
	{ itemID = 515231 }, --Salt Scoured Boarding Axe
	{ itemID = 515232 }, --Spotter's Rifle
	{ itemID = 515233 }, --Crokolisk Hunter
	{ itemID = 515234 }, --Primitive Murloc Skewer
	{ itemID = 515235 }, --Muck Trudgers
	{ itemID = 515236 }, --Northpoint Helmet
	{ itemID = 515237 }, --Brackish Spellweave Robe
	{ itemID = 515238 }, --Sturdy Coffin Lid
	{ itemID = 515239 }, --Swamplight Concoction
	{ itemID = 515240 }, --Bogcaller Totem
	{ itemID = 515241 }, --Idol of the Brooding Shadow
	{ itemID = 515242 }, --Tome of Sundered Souls
	{ itemID = 515243 }, --Shadowsilk Seared Cuirass
	{ itemID = 515244 }, --Golem Chunk
	{ itemID = 515245 }, --Shoulderpads of Deep Thinking
	{ itemID = 515246 }, --Glassweb Ward Shroud
	{ itemID = 515247 }, --Caravan Crossbow
	{ itemID = 515248 }, --Dorius' Shield
	{ itemID = 515249 }, --Stomped Diary
	{ itemID = 515251 }, --Magma Petting Mittens
	{ itemID = 515252 }, --Dark Iron Leatherpads
	{ itemID = 515253 }, --Scorching Lodepebble
	{ itemID = 515254 }, --Scorched Greatblade
	{ itemID = 515255 }, --Dark Iron Slippers
	{ itemID = 515256 }, --Fire Poker
	{ itemID = 515257 }, --Steam Pressure Totem
	{ itemID = 515258 }, --Eye of Twilight
	{ itemID = 515259 }, --Disciplinary Rifle
	{ itemID = 515260 }, --Contraband Magician Rod
	{ itemID = 515261 }, --Zamael's Corrupted Twilight
	{ itemID = 515262 }, --Slave Band
	{ itemID = 515263 }, --Dark Iron Scorcher
	{ itemID = 515264 }, --Heavy War Golem Rune
	{ itemID = 515265 }, --Freedom Falchion
	{ itemID = 515266 }, --Slave Worker Pantaloons
	{ itemID = 515267 }, --Break-time Gloves
	{ itemID = 515268 }, --Dark Iron Loop
	{ itemID = 515269 }, --Incendosaur Bone String
	{ itemID = 515270 }, --Dark Iron Legplates
	{ itemID = 515271 }, --Dark Iron Wristbands
	{ itemID = 515272 }, --Elder Pipe
	{ itemID = 515273 }, --Overseer's Mystic Wrench
	{ itemID = 515274 }, --Molten Fang Tooth
	{ itemID = 515275 }, --Scorched Mail Tunic
	{ itemID = 515276 }, --Cogbolt's Special
	{ itemID = 515277 }, --Burned Blade Shiv
	{ itemID = 515278 }, --Dark Iron Hood
	{ itemID = 515279 }, --Sharp Chain Belt
	{ itemID = 515281 }, --Nethergarde Mining Cap
	{ itemID = 515282 }, --Mo'arg Saw Shield
	{ itemID = 515283 }, --Nethergarde Foreman Chest
	{ itemID = 515284 }, --Runed Ogre Wrap
	{ itemID = 515285 }, --Ogre Finger Sleeve
	{ itemID = 515286 }, --Old War Wraps
	{ itemID = 515287 }, --Orcish Demon Slayer
	{ itemID = 515288 }, --Elvish Demon Reaver
	{ itemID = 515289 }, --Demon Claw
	{ itemID = 515290 }, --Evoker's Twisted Coil
	{ itemID = 515291 }, --Shadowsworn Reaper
	{ itemID = 515292 }, --Collector's Junk
	{ itemID = 515293 }, --Dreadweaver
	{ itemID = 515294 }, --Dreadmaul Head Smasher
	{ itemID = 515295 }, --Charred Slicer
	{ itemID = 515296 }, --Demon Kickers
	{ itemID = 515297 }, --Crude Voodoo Doll
	{ itemID = 515298 }, --Doomlord Slasher
	{ itemID = 515299 }, --Pauldron of the First War
	{ itemID = 515300 }, --Cursed Drape
	{ itemID = 515301 }, --Ancient Dragonmaw Token
	{ itemID = 515302 }, --Fallen Soldier's Shank
	{ itemID = 515303 }, --Doom Pendant
	{ itemID = 515304 }, --Bloodmage Coil
	{ itemID = 515305 }, --Lost Faith
	{ itemID = 515306 }, --Portal Fragment
	{ itemID = 515312 }, --Ror's Wrecker
	{ itemID = 515313 }, --Timelost Vestments 
	{ itemID = 515314 }, --Emerald Circle Charm
	{ itemID = 515315 }, --Jadefire Bone Breaker
	{ itemID = 515316 }, --Lost Shipment Wristguards
	{ itemID = 515317 }, --Jadefire Piercer
	{ itemID = 515318 }, --Felhound Tendril
	{ itemID = 515319 }, --Bubbling Fel Mixture
	{ itemID = 515320 }, --Silverhand Spaulders
	{ itemID = 515321 }, --Xorothian Slippers
	{ itemID = 515322 }, --Jaednar Spire
	{ itemID = 515323 }, --Bottled Oozeling
	{ itemID = 515324 }, --Infernal Tender
	{ itemID = 515325 }, --Highborne Carver
	{ itemID = 515326 }, --Niby's Training Collar
	{ itemID = 515327 }, --Umbral Stalker's Tarp
	{ itemID = 515328 }, --Fallen Sentinel's Leggings
	{ itemID = 515329 }, --Ironwood Cap
	{ itemID = 515330 }, --Sindelle's Fuzzy Cuffs
	{ itemID = 515331 }, --Heart of the Warpwood
	{ itemID = 515333 }, --Crystal of Cruel Corruption
	{ itemID = 515334 }, --Talonbranch Sweeper
	{ itemID = 515336 }, --Timbermaw Defender
	{ itemID = 515337 }, --Timbermaw Girdle
	{ itemID = 515338 }, --Ring of Purity
	{ itemID = 515339 }, --Necklace of Purity
	{ itemID = 515340 }, --Acid Bolter
	{ itemID = 515341 }, --Fel Cleaver
	{ itemID = 515342 }, --Bitterbranch Claymore
	{ itemID = 515343 }, --Rotwood Sabre
	{ itemID = 515354 }, --Dinosaur Tranquilizer
	{ itemID = 515355 }, --Boom-Bling Choker
	{ itemID = 515356 }, --Cenarion Dreamcatcher
	{ itemID = 515357 }, --Marsh Shooter
	{ itemID = 515358 }, --Mystic Geode
	{ itemID = 515360 }, --Bug Repellant
	{ itemID = 515361 }, --Bonechipper Dagger
	{ itemID = 515362 }, --Jane's Lucky Hat
	{ itemID = 515363 }, --Silverback Cape
	{ itemID = 515364 }, --Tongs of Miscalibration
	{ itemID = 515365 }, --Pylon Charged Staff
	{ itemID = 515366 }, --Lost Fighter's Crossbow
	{ itemID = 515367 }, --Talon Ripper
	{ itemID = 515368 }, --Brand New Bikini
	{ itemID = 515369 }, --Idol of the Terror Claw
	{ itemID = 515370 }, --Dino Wacker
	{ itemID = 515371 }, --Wrangler's Cord
	{ itemID = 515372 }, --Thunderstomp Scale
	{ itemID = 515373 }, --Doomfall Spark
	{ itemID = 515374 }, --Retired Hero's Helm
	{ itemID = 515375 }, --Pterrodax Scale Cloak
	{ itemID = 515376 }, --Shifting Form
	{ itemID = 515377 }, --Serpent Spine Pauldrons
	{ itemID = 515378 }, --Sparkshard Necklace
	{ itemID = 515379 }, --Egg Thief's Handwraps
	{ itemID = 515380 }, --Qiarji Stinger
	{ itemID = 515381 }, --Cindersguard Saber
	{ itemID = 515382 }, --Ringo's Star
	{ itemID = 515383 }, --One Ring to Flame Them All
	{ itemID = 515384 }, --Ember Crown
	{ itemID = 515385 }, --Blaze Runners
	{ itemID = 515386 }, --Totem of Scorching Sparks
	{ itemID = 515387 }, --Molten Fang
	{ itemID = 515388 }, --Slightly Sticky Cloak
	{ itemID = 515389 }, --Golakka Scoured Legguards
	{ itemID = 515390 }, --Ballast Laden Pauldrons
	{ itemID = 515391 }, --Campsite Shrapnel
	{ itemID = 515392 }, --Carapace Plated Chest
	{ itemID = 515393 }, --Carapace Cracker
	{ itemID = 515394 }, --Crystal Fused Carapace
	{ itemID = 515395 }, --Gorishi Antenna
	{ itemID = 515396 }, --Cord of Living Vines
	{ itemID = 515397 }, --Elegantly Designed Cuffs
	{ itemID = 515398 }, --Silithid Ritual Robe
	{ itemID = 515399 }, --Ravasaur Talon
	{ itemID = 515400 }, --Tawana's Spare Axe
	{ itemID = 515401 }, --Caravaneer's Machete
	{ itemID = 515402 }, --Marsh Treaders
	{ itemID = 515403 }, --Caravan Utility Hammer
	{ itemID = 515404 }, --Jungle String Bow
	{ itemID = 515405 }, --Lucky Fisherman's Breeches
	{ itemID = 515406 }, --Water Dredger's Wrap
	{ itemID = 515407 }, --Expedition Bracers
	{ itemID = 515408 }, --Hidden Stash
	{ itemID = 515409 }, --Hexweave Gloves
	{ itemID = 515410 }, --Fossilized Smasher
	{ itemID = 515411 }, --Goblin Plant Slicer
	{ itemID = 515412 }, --Friendly Sludgemonster
	{ itemID = 515413 }, --Spring Shard
	{ itemID = 515414 }, --Libram of Ancient Warding
	{ itemID = 515415 }, --Prancefin Ring
	{ itemID = 515425 }, --Nightsong Waraxe
	{ itemID = 515426 }, --Mystral Compass
	{ itemID = 515427 }, --Fine Silk Wraps
	{ itemID = 515428 }, --Teldrassil Begonias
	{ itemID = 515429 }, --Torn Spellbook Page
	{ itemID = 515430 }, --Arlithrien Moon Orb
	{ itemID = 515431 }, --Lunar Tome
	{ itemID = 515432 }, --Whisperwind Boots
	{ itemID = 515433 }, --Timberling Dagger
	{ itemID = 515434 }, --Starfall Edge
	{ itemID = 515435 }, --Blade of the Submerged Moon
	{ itemID = 515436 }, --Whisperwind Heirloom
	{ itemID = 515437 }, --Timberbane Axe
	{ itemID = 515438 }, --Lifesap Blade
	{ itemID = 515439 }, --Spirited Cane
	{ itemID = 515440 }, --Blade of Severed Souls
	{ itemID = 515441 }, --Abandoned Fishing Rod
	{ itemID = 515442 }, --Rock Smasher
	{ itemID = 515444 }, --Dirge of the Dead
	{ itemID = 515466 }, --Alchemist's Ladel
	{ itemID = 515502 }, --Failed Parachute
	{ itemID = 515503 }, --Forgotten Pauldron
	{ itemID = 515504 }, --Grimtotem Darkblade
	{ itemID = 515505 }, --Centaur Mining Axe
	{ itemID = 515506 }, --Galak Chicken Smasher
	{ itemID = 515507 }, --Wyvern Trapper Spear
	{ itemID = 515508 }, --Highperch Necklace
	{ itemID = 515509 }, --Darkcloud Braid
	{ itemID = 515510 }, --Deadman's Signet
	{ itemID = 515511 }, --Drowned Diver's Ring
	{ itemID = 515512 }, --Grimtotem Jaw Smasher
	{ itemID = 515513 }, --Galak Shortbow
	{ itemID = 515514 }, --Cursed Elemental Scepter
	{ itemID = 515515 }, --Slightly Magical Kodo Bone
	{ itemID = 515516 }, --Darkcloud Totem
	{ itemID = 515517 }, --Highlands Vest
	{ itemID = 515518 }, --Caravaner's Bracers
	{ itemID = 515519 }, --Pack Kodo Satchel
	{ itemID = 515520 }, --Cloud Serpent Feather
	{ itemID = 515524 }, --Scuba Slayer's Blade
	{ itemID = 515525 }, --Drowned Diver's Helm
	{ itemID = 515528 }, --Tahonda Gauntlets
	{ itemID = 515529 }, --Pirate's Mail
	{ itemID = 515530 }, --Abandoned Moonshine
	{ itemID = 515531 }, --Pip's Rad Stone
	{ itemID = 515532 }, --Survivor's Trousers
	{ itemID = 515533 }, --Kodo War Drum
	{ itemID = 515534 }, --Silithid Bug Blaster
	{ itemID = 515535 }, --Isolated Inventor's Bulk
	{ itemID = 515536 }, --Runway Scraper
	{ itemID = 515537 }, --U.L.T.R.A Racing Goggles
	{ itemID = 515538 }, --Giant Wood Splinter
	{ itemID = 515539 }, --Ancient Jeweler's Staff
	{ itemID = 515540 }, --Goblin Racing Boots
	{ itemID = 515541 }, --The Tickler
	{ itemID = 515542 }, --Sizzling Potion
	{ itemID = 515599 }, --Sacrificial Carver
	{ itemID = 515600 }, --Legashi Bracers
	{ itemID = 515601 }, --Eldara's Stargazer
	{ itemID = 515602 }, --Gauntlets of the Overlook
	{ itemID = 515603 }, --Cliffwalker Legplates
	{ itemID = 515604 }, --Lyre of the Grand Scribe
	{ itemID = 515605 }, --The Wrath of Arkkoroc
	{ itemID = 515606 }, --Idol of the Ocean's Depths
	{ itemID = 515607 }, --Hydraxian Staff
	{ itemID = 515608 }, --Ravencrest Signet
	{ itemID = 515609 }, --Spitelash Waistguards
	{ itemID = 515610 }, --Vanessa's Eyepatch
	{ itemID = 515611 }, --Hydra Hide Belt
	{ itemID = 515612 }, --Cilkeck's Gloves
	{ itemID = 515613 }, --Necklace of Unbroken Waves
	{ itemID = 515614 }, --Shahiar's Lost Horn
	{ itemID = 515615 }, --Deep Hydra's Scales
	{ itemID = 515616 }, --Scalebeard's Old Shell
	{ itemID = 515617 }, --Stormslicer
	{ itemID = 515618 }, --Thalassian Circlet
	{ itemID = 515619 }, --Azure Will
	{ itemID = 515620 }, --Crystalized Shield
	{ itemID = 515621 }, --Imitation of Zin-Eldari
	{ itemID = 515622 }, --Claws of the Lion
	{ itemID = 515623 }, --Might of Azshara
	{ itemID = 515624 }, --Beth'Amara Shard
	{ itemID = 515625 }, --Markri Turret
	{ itemID = 515626 }, --Shoulderguards of Zin-Malor
	{ itemID = 515627 }, --Claws of the Bear
	{ itemID = 515628 }, --The Bear Feet
	{ itemID = 515629 }, --Spitelash Warbanner
	{ itemID = 515630 }, --Burning Band
	{ itemID = 515631 }, --Ruinbreaker
	{ itemID = 515632 }, --Hand of the Cliffs
	{ itemID = 515633 }, --Elune's Glow
	{ itemID = 515634 }, --Ish'thel Falesh, Gaze of Eldara
	{ itemID = 515676 }, --The Compliance Crusher
	{ itemID = 515677 }, --Salma's Summer Dress
	{ itemID = 515678 }, --Field Boots
	{ itemID = 515679 }, --Pumpkin Smashers
	{ itemID = 515680 }, --Gnoll Cleaver
	{ itemID = 515681 }, --Harvester’s Aegis
	{ itemID = 515682 }, --Defias Throwing Knife
	{ itemID = 515683 }, --Blessed Mail Wraps
	{ itemID = 515684 }, --Defias Apothecary Pants
	{ itemID = 515685 }, --Quarry Sledge
	{ itemID = 515686 }, --Harvest Scythe
	{ itemID = 515687 }, --Rower's Jerkin
	{ itemID = 515688 }, --Featherbeard’s Bulwark Blaster
	{ itemID = 515689 }, --Zun’watha Cleaver
	{ itemID = 515690 }, --Overwatch Longrifle
	{ itemID = 515691 }, --Dwarven Drinking Pants
	{ itemID = 515692 }, --Anchorfoot Greaves
	{ itemID = 515693 }, --Highvale Wellband
	{ itemID = 515694 }, --Highvale Ranger Bow
	{ itemID = 515695 }, --Zipcoil’s Zapper Cap
	{ itemID = 515696 }, --Hide Piercer
	{ itemID = 515697 }, --Hexweave Robes
	{ itemID = 515698 }, --Idol of the Broodmother
	{ itemID = 515699 }, --Brood Caller’s Raiment
	{ itemID = 515700 }, --Broodsilk Gloves
	{ itemID = 515701 }, --Floodworn Shoulderguards
	{ itemID = 515702 }, --Aerie Faith Vambraces
	{ itemID = 515703 }, --Ooze Cleansed Shoulderpads
	{ itemID = 515704 }, --Drowned Link Belt
	{ itemID = 515705 }, --Soothsayer Shroud
	{ itemID = 515706 }, --Elder Highpeak’s Keepsake
	{ itemID = 515707 }, --Hexcall Gavel
	{ itemID = 515708 }, --Blood Keeper's Staff
	{ itemID = 515709 }, --Zul Warder’s Cloak
	{ itemID = 515710 }, --Ring of the Sunken Courier
	{ itemID = 515711 }, --Slime Coated Cloak
	{ itemID = 515712 }, --Sludge Hammer
	{ itemID = 515713 }, --Fort Defender Band
	{ itemID = 515714 }, --Vilebranch Beastlance
	{ itemID = 515715 }, --Shadowpounce Cowl
	{ itemID = 515716 }, --Terrapine Carapace
	{ itemID = 515717 }, --Idol of the Aerie
	{ itemID = 515718 }, --Revantusk Hide Steppers
	{ itemID = 515719 }, --Seabreeze Hauberk
	{ itemID = 515720 }, --Trapper’s Lone Band
	{ itemID = 515721 }, --Bloodthread Leggings
	{ itemID = 515722 }, --Oozling Thoughtcore
	{ itemID = 515723 }, --Treads of the Verdant Threshold
	{ itemID = 515724 }, --Vilebranch Warthrower
	{ itemID = 515725 }, --Fleshcarver Athame
	{ itemID = 515726 }, --The Blood Talon
	{ itemID = 515727 }, --Shellsplitter Girdle
	{ itemID = 515728 }, --Flayer's Edge
	{ itemID = 515729 }, --Highnest Repeater
	{ itemID = 515730 }, --Blood Drinker
	{ itemID = 515731 }, --Vilebranch Ritual Dagger
	{ itemID = 515732 }, --Libram of Resolute Light
	{ itemID = 515733 }, --Wand of the Broodbound
	{ itemID = 515734 }, --High Cascade Cord
	{ itemID = 515735 }, --Desperate Defense
	{ itemID = 515736 }, --Tiki Shield
	{ itemID = 515737 }, --Dive's Instruction Manual
	{ itemID = 515738 }, --Inventor's Sand Band
	{ itemID = 515739 }, --Sandfury Blade
	{ itemID = 515740 }, --Time Stream Slasher
	{ itemID = 515741 }, --Ancestral Warblade
	{ itemID = 515742 }, --Wastewander Alchemist’s Robe
	{ itemID = 515743 }, --Betrayer's Blade
	{ itemID = 515744 }, --Sandswept Binding
	{ itemID = 515745 }, --Deadman Gauntlets
	{ itemID = 515747 }, --Dustwhisper Legguards
	{ itemID = 515748 }, --Sand Cover
	{ itemID = 515749 }, --Notice of Urgent Delivery
	{ itemID = 515750 }, --Watcher's Mantle
	{ itemID = 515755 }, --Explorer's Last Wish
	{ itemID = 515764 }, --Tender's Hat
	{ itemID = 515765 }, --Sky Guard's Cuirass
	{ itemID = 515767 }, --Hivebreakers’ Ward
	{ itemID = 515769 }, --Venom-Infused Screwdriver
	{ itemID = 515770 }, --Lid of the Dead
	{ itemID = 515771 }, --Cyclok's Sanity
	{ itemID = 515772 }, --Dunemaul Warbelt
	{ itemID = 515773 }, --Treasure Seeker's Gloves
	{ itemID = 515775 }, --Carapace Carver
	{ itemID = 515781 }, --Hazzali Antenna
	{ itemID = 515782 }, --Last Stand
	{ itemID = 515783 }, --Chitinous Chest
	{ itemID = 515791 }, --Ancient Wagon Wheel
	{ itemID = 515797 }, --Blister Chain
	{ itemID = 515798 }, --Desert Trader's Pants
	{ itemID = 515800 }, --Treasure Seeking Lodestone
	{ itemID = 515801 }, --The Wingman
	{ itemID = 515822 }, --Sun Cover
	{ itemID = 515823 }, --Winkey's Misplaced Wrench
	{ itemID = 515824 }, --Water Binder
	{ itemID = 515825 }, --Diving Boots
	{ itemID = 515826 }, --Sea Legs
	{ itemID = 515827 }, --Hull Wood Hunk
	{ itemID = 515828 }, --Captain's Compass
	{ itemID = 515829 }, --Southsea Raider Gloves
	{ itemID = 515830 }, --Wave Wraps
	{ itemID = 515834 }, --Fisher's Misfortune
	{ itemID = 515835 }, --Lens of Questionable Visions
	{ itemID = 515836 }, --Noon's Shade Relic
	{ itemID = 515837 }, --Desert Gambeson
	{ itemID = 515838 }, --Dunemaul Crusher
	{ itemID = 515839 }, --Stylish Racing Hat
	{ itemID = 515840 }, --Sandfury Ritual Mace
	{ itemID = 515841 }, --Sandfury Boomerang
	{ itemID = 515842 }, --Sorrow Bolter
	{ itemID = 515843 }, --Southmoon Amulet
	{ itemID = 515844 }, --Seed of Overgrowth
	{ itemID = 515900 }, --Sand Stompers
	{ itemID = 515901 }, --Sandstalker
	{ itemID = 515902 }, --Duneshot Armguards
	{ itemID = 515903 }, --High Seas Axe
	{ itemID = 515904 }, --Sand Polished Pauldrons
	{ itemID = 515906 }, --Executioner's Axe
	{ itemID = 515909 }, --Dunecaller's Spire
	{ itemID = 515954 }, --Minstrel's Magic
	{ itemID = 516037 }, --Sturdy Spectral Ring
	{ itemID = 518943 }, --Billy's Life Savings
	{ itemID = 521000 }, --Rootbark Girdle
	{ itemID = 521001 }, --Patched Verdant Cloak
	{ itemID = 521002 }, --Moonwell Cane
	{ itemID = 521003 }, --Timber Maul
	{ itemID = 521004 }, --Saplingweave Handwraps
	{ itemID = 521005 }, --Thornpaw Trousers
	{ itemID = 521006 }, --Wildwood Shortbow
	{ itemID = 521007 }, --Gnarlpine Jerkin
	{ itemID = 521008 }, --Nightbreeze Armguards
	{ itemID = 521009 }, --Groveprowler Gloves
	{ itemID = 521010 }, --Chipped Sentinel Blade
	{ itemID = 521011 }, --Dewleaf Piercer
	{ itemID = 521012 }, --Bloodfeather Wand
	{ itemID = 521013 }, --Harpy Feather Drape
	{ itemID = 521014 }, --Trickster's Signet
	{ itemID = 521015 }, --Featherlight Bow
	{ itemID = 521016 }, --Starfall Splitter
	{ itemID = 521017 }, --Glenwhisper Robes
	{ itemID = 521018 }, --Starbloom Legwraps
	{ itemID = 521019 }, --Moonglade Cord
	{ itemID = 521020 }, --Aldrassil Bindings
	{ itemID = 521021 }, --Woodwalker Hauberk
	{ itemID = 521022 }, --Duskrunner Shield
	{ itemID = 521023 }, --Thornrunner Throwing Star
	{ itemID = 521024 }, --Gloomrider Rifle
	{ itemID = 521026 }, --Wildwood Shortbow
	{ itemID = 521027 }, --Faded Gravecloth Cuffs
	{ itemID = 521028 }, --Old Waterlogged Boots
	{ itemID = 521029 }, --Agamand Sharpshooter
	{ itemID = 521030 }, --Nightfallen Jerkin
	{ itemID = 521031 }, --Rattlecage Warplate
	{ itemID = 521032 }, --Wailing Sash
	{ itemID = 521033 }, --Maggot Eye Musket
	{ itemID = 521034 }, --Ghostmoor Cloak
	{ itemID = 521035 }, --Duskbat Crossbow
	{ itemID = 521036 }, --Coastline Vest
	{ itemID = 521037 }, --Handcrafted Scalemail
	{ itemID = 521038 }, --Pious Wristwraps
	{ itemID = 521039 }, --Bow of Zealotry
	{ itemID = 521040 }, --Wailing Sash
	{ itemID = 521041 }, --Hermit's Leggings
	{ itemID = 521042 }, --Farstrider’s Grips
	{ itemID = 521043 }, --Crude Grimscale Sash
	{ itemID = 521044 }, --Decayed Cape
	{ itemID = 521045 }, --Rotten Greatblade
	{ itemID = 521046 }, --Riverwind Hammer
	{ itemID = 521047 }, --Spellribbon Wand
	{ itemID = 521048 }, --Silvermoon Musket
	{ itemID = 521049 }, --Rusty Falchion
	{ itemID = 521050 }, --Duskwither Hatchet
	{ itemID = 521051 }, --Farstrider Pounder
	{ itemID = 521052 }, --Scout's Slicer
	{ itemID = 521053 }, --Hawkrider Boots
	{ itemID = 521054 }, --Amani Band
	{ itemID = 521055 }, --Sunsail Chestguard
	{ itemID = 521056 }, --Faded Sunfeather Wraps
	{ itemID = 521057 }, --Dawnsworn Pendant
	{ itemID = 521058 }, --Apprentice Vestments
	{ itemID = 521059 }, --Dakota Steppe Greaves
	{ itemID = 521060 }, --Windstamp Gloves
	{ itemID = 521061 }, --Softbrush Sash
	{ itemID = 521062 }, --Stonebull Cloth
	{ itemID = 521063 }, --Palemane Threads
	{ itemID = 521064 }, --Thunderwalk Breastplate
	{ itemID = 521065 }, --Cloudchaser Pendant
	{ itemID = 521066 }, --Bael'dun Waraxe
	{ itemID = 521067 }, --Pilfered Bloodhoof Bow
	{ itemID = 521068 }, --Golden Plains Crossbow
	{ itemID = 521069 }, --Kodo Beast Idol
	{ itemID = 521070 }, --Windhoof Totem
	{ itemID = 521071 }, --Plainsblade
	{ itemID = 521072 }, --Skychaser Wand
	{ itemID = 521073 }, --Sunchaser Blade
	{ itemID = 521074 }, --Swiftfoot Slippers
	{ itemID = 521075 }, --Hawkrunner Bracers
	{ itemID = 521076 }, --Steppereaver Hatchet
	{ itemID = 521078 }, --Windhoof Totem
	{ itemID = 521079 }, --Bloodtalon Vestments
	{ itemID = 521080 }, --Kul Tiras Handwraps
	{ itemID = 521081 }, --Redrock Sash
	{ itemID = 521082 }, --Kul Tiras Armplates
	{ itemID = 521083 }, --Charred Battlegreaves
	{ itemID = 521084 }, --Grunt's Old Knife
	{ itemID = 521086 }, --Tiragarde Drape
	{ itemID = 521087 }, --Rocktusk Poker
	{ itemID = 521088 }, --Crocolisk Deterrent
	{ itemID = 521089 }, --Earthshatterer Gavel
	{ itemID = 521090 }, --Searing Sands Focus
	{ itemID = 521092 }, --Champion's Band
	{ itemID = 521093 }, --Waterlogged Warbelt
	{ itemID = 521094 }, --Rusty Greaves
	{ itemID = 521095 }, --Stillpine Jerkin
	{ itemID = 521096 }, --Feathered Pants
	{ itemID = 521097 }, --Silvermyst Slippers
	{ itemID = 521098 }, --Wrathscale Bulwark
	{ itemID = 521099 }, --Wrathscale Banner
	{ itemID = 521100 }, --Crazed Kurken Libram
	{ itemID = 521101 }, --Darnassus Longbow
	{ itemID = 521102 }, --Skitter Blaster
	{ itemID = 521103 }, --Owlbeast Ritual Stick
	{ itemID = 521104 }, --Fish Gutter
	{ itemID = 521105 }, --Peasant Log Chopper
	{ itemID = 521106 }, --Stillpine Gavel
	{ itemID = 521107 }, --Blood Elf Dagger
	{ itemID = 521108 }, --Wreckage Signet
	{ itemID = 521109 }, --Alliance Cord
	{ itemID = 521110 }, --Ancient Highborne Choker
	{ itemID = 521111 }, --Azuremoon Band
	{ itemID = 521112 }, --Silt Shore Hammer
	{ itemID = 521115 }, --Eastvale Buckler
	{ itemID = 521116 }, --Mauled Armplates
	{ itemID = 521117 }, --Honed Steel Axe
	{ itemID = 521118 }, --Plundered Goldshire Vanguard
	{ itemID = 521119 }, --Splinter Fist Cowl
	{ itemID = 521120 }, --Brightwood Gloves
	{ itemID = 521121 }, --Decayed Breeches
	{ itemID = 521122 }, --Traveler's Forest Cloak
	{ itemID = 521123 }, --Smuggled Stormwind Choker
	{ itemID = 521124 }, --Stolen Greatsword
	{ itemID = 521125 }, --Murloc Piercer
	{ itemID = 521126 }, --Westfall Family Heirloom
	{ itemID = 521127 }, --The Vanishing Strap
	{ itemID = 521128 }, --Fisherman's Jerkin
	{ itemID = 521129 }, --Pilfered Heirloom
	{ itemID = 521130 }, --Old Valgan Slippers
	{ itemID = 521131 }, --Darkstrand Kilt
	{ itemID = 521132 }, --Chain Belt of the Elements
	{ itemID = 521133 }, --Lordamere Cuffs
	{ itemID = 521134 }, --Feral Stitched Boots
	{ itemID = 521135 }, --Ravenclaw Infantry Gloves
	{ itemID = 521136 }, --Dalaran Robes
	{ itemID = 521137 }, --Dalaran Hatchet
	{ itemID = 521139 }, --Gilnean Lance
	{ itemID = 521140 }, --Gilnean Bolter
	{ itemID = 521142 }, --Mountaineer Hatchet
	{ itemID = 521143 }, --Dwarven Sandals
	{ itemID = 521144 }, --Tattered Shoulders
	{ itemID = 521145 }, --Stolen Mountaineer Chest
	{ itemID = 521146 }, --Old Stitched Bindings
	{ itemID = 521147 }, --Vermin Staff
	{ itemID = 521148 }, --Farstrider Crossbow
	{ itemID = 521149 }, --Thelsamar Hood
	{ itemID = 521150 }, --Dwarven Mail Gauntlets
	{ itemID = 521151 }, --Abandoned Greatsword
	{ itemID = 521152 }, --Grawmug's Cape
	{ itemID = 521153 }, --Earthenwind Band
	{ itemID = 521154 }, --Drowned Pendant
	{ itemID = 521155 }, --Spider Silk Vestments
	{ itemID = 521156 }, --Sinter Wive's Rope
	{ itemID = 521157 }, --Stoneflow Handwraps
	{ itemID = 521158 }, --Twilight Vale
	{ itemID = 521159 }, --Blackwood Jerkin
	{ itemID = 521160 }, --Shorebreeze Sabatons
	{ itemID = 521161 }, --Highborne Trousers
	{ itemID = 521162 }, --Auberdine Scimitar
	{ itemID = 521163 }, --Wild Longbow
	{ itemID = 521164 }, --Relicseeker Staff
	{ itemID = 521165 }, --Stormscale Guard
	{ itemID = 521166 }, --Moonrest Slippers
	{ itemID = 521167 }, --Bristle Pads
	{ itemID = 521168 }, --Silt Blade
	{ itemID = 521169 }, --Mystwood Glaive
	{ itemID = 521170 }, --Nazzivus Cover
	{ itemID = 521171 }, --Wildkin Kris
	{ itemID = 521172 }, --Bloodmyst Totem
	{ itemID = 521173 }, --Bloodwatch Libram
	{ itemID = 521174 }, --Bloodcursed Gavel
	{ itemID = 521175 }, --Epochbreaker Warmaul
	{ itemID = 521178 }, --Ghostclaw Vest
	{ itemID = 521179 }, --Blight Infused Mantle
	{ itemID = 521180 }, --Dreadscar Girdle
	{ itemID = 521181 }, --Darnassian Grips
	{ itemID = 521182 }, --Kel'gash's War Breeches
	{ itemID = 521183 }, --Tormentor’s Boots
	{ itemID = 521184 }, --Old Lordaeron Cape
	{ itemID = 521185 }, --Sunseeker Libram
	{ itemID = 521188 }, --Venture Co. Spaulders
	{ itemID = 521189 }, --Waterlogged Gloves
	{ itemID = 521190 }, --Venture Co. Boots
	{ itemID = 521191 }, --Steelrider Girdle
	{ itemID = 521192 }, --Bramblestaff
	{ itemID = 521193 }, --Stormcall Totem
	{ itemID = 521194 }, --Venture Co. Dirk
	{ itemID = 521195 }, --Giant Qiraji Scale
	{ itemID = 521196 }, --Malgin's Barback
	{ itemID = 521197 }, --Takar's Old Wand
	{ itemID = 521198 }, --Bristleback Thorn
	{ itemID = 521199 }, --Blackthorn Splitter
	{ itemID = 521200 }, --Razorthorn Claymore
	{ itemID = 521201 }, --Thornweaver Mace
	{ itemID = 521202 }, --Dustdevil Cape
	{ itemID = 521203 }, --Plainstalker Vest
	{ itemID = 521204 }, --Venture Co. Sabatons
	{ itemID = 521205 }, --Savannah Cowl
	{ itemID = 521206 }, --Kodo Stompers
	{ itemID = 521208 }, --Gnoll Crafted Spaulder
	{ itemID = 521209 }, --Gnoll Cap
	{ itemID = 521210 }, --Alther's Chain Wrap
	{ itemID = 521211 }, --Stonewatch Handwraps
	{ itemID = 521212 }, --Tharil'zun's Trek Boots
	{ itemID = 521213 }, --Old Redridge Buckler
	{ itemID = 521214 }, --Mongrel Blade
	{ itemID = 521215 }, --Everstill Claymore
	{ itemID = 521216 }, --Blackrock Waraxe
	{ itemID = 521217 }, --Rusty Redridge Rifle
	{ itemID = 521218 }, --Adventurer's Crossbow
	{ itemID = 521219 }, --Tidecaller's Hammer
	{ itemID = 521220 }, --Old War Tome
	{ itemID = 521222 }, --Red Mage Wand
	{ itemID = 521223 }, --Charred Spaulders
	{ itemID = 521224 }, --Cliffwalker Cuffs
	{ itemID = 521225 }, --Sunsown Grips
	{ itemID = 521226 }, --Huntress Threads
	{ itemID = 521227 }, --Deepmoss Fang
	{ itemID = 521228 }, --Windsong Shortbow
	{ itemID = 521229 }, --Crossroads Short Sword
	{ itemID = 521230 }, --Talon Idol
	{ itemID = 521231 }, --Grimtotem Striker
	{ itemID = 521233 }, --Wyvern Vest
	{ itemID = 521234 }, --Helcular's Pendant
	{ itemID = 521235 }, --Darrow Silverband
	{ itemID = 521236 }, --Tracker's Blade
	{ itemID = 521237 }, --Camouflaged Bow
	{ itemID = 521238 }, --Oracle's Fishy Staff
	{ itemID = 521239 }, --Ray's Farmhand
	{ itemID = 521240 }, --Daggerspine Rod
	{ itemID = 521241 }, --Bear Decapitator
	{ itemID = 521242 }, --Brazie’s Gauntlets
	{ itemID = 521243 }, --Syndicate Treads
	{ itemID = 521244 }, --Ancient Durnholde Girdle
	{ itemID = 521245 }, --Mismatched Shoulderpads
	{ itemID = 521246 }, --Heisen’s Loop
	{ itemID = 521248 }, --Old Dragonmaw Cleaver
	{ itemID = 521249 }, --Borrowed Dark Iron Signet
	{ itemID = 521250 }, --Crude Bluegill Totem
	{ itemID = 521251 }, --Dragonmaw Ritual Staff
	{ itemID = 521252 }, --Dark Iron Harvester
	{ itemID = 521253 }, --Pilfered Stormpike Polearm
	{ itemID = 521254 }, --Swiftgear Sniper
	{ itemID = 521255 }, --Thelsamar Bow
	{ itemID = 521256 }, --Old Dragon Bone
	{ itemID = 521257 }, --Arakor Mace
	{ itemID = 521258 }, --Mirefin Belt
	{ itemID = 521259 }, --Raptor-Gnawed Cap
	{ itemID = 521260 }, --Vestments of the Unbound
	{ itemID = 521261 }, --Stubborn Dwarf Slippers
	{ itemID = 521264 }, --Hunter's Tunic
	{ itemID = 521265 }, --Malorne's Girdle
	{ itemID = 521266 }, --Rehomed Belt
	{ itemID = 521267 }, --Leyline Channeling Rod
	{ itemID = 521268 }, --Coldhewn Tanning Gloves
	{ itemID = 521318 }, --Roland's Striker
	{ itemID = 521319 }, --Infiltrator's Shield
	{ itemID = 521320 }, --Stardust Scoured Helmet
	{ itemID = 521321 }, --Honed Steel Axe
	{ itemID = 521322 }, --Splinter Fist Cowl
	{ itemID = 521323 }, --Brightwood Gloves
	{ itemID = 666451 }, --Young Plaguebat
	{ itemID = 666603 }, --Recipe: Vi'el's Unstable Fel Potion
	{ itemID = 734931 }, --Recipe: Weaver's Embrace
	{ itemID = 824378 }, --Ancient Femur
	{ itemID = 824379 }, --Voodoo Guardian
	{ itemID = 824380 }, --Triad's Spear
	{ itemID = 824381 }, --Sinister Garb
	{ itemID = 824382 }, --Old Northshire Bolter
	{ itemID = 824383 }, --Old Gardening Gloves
	{ itemID = 824384 }, --Shadewell Stabber
	{ itemID = 824385 }, --Forsaken Tome
	{ itemID = 824386 }, --Grimtotem Bow
	{ itemID = 824387 }, --Traitor's Last Kiss
	{ itemID = 824388 }, --Sun Touched Club
	{ itemID = 824389 }, --Ceremonial Gloves
	{ itemID = 824390 }, --Decayed Sharpshot
	{ itemID = 824391 }, --Sturdy Arrow
	{ itemID = 824392 }, --Cain's Oathblade
	{ itemID = 824393 }, --Deadman’s Cover
	{ itemID = 824394 }, --Radiant Rifle
	{ itemID = 824395 }, --Ancient Battleaxe
	{ itemID = 824396 }, --Radiant Fanatic Helmet
	{ itemID = 824397 }, --Rocket Shrapnel
	{ itemID = 824398 }, --Vulture Cult Idol
	{ itemID = 824399 }, --Disciple String
	{ itemID = 824400 }, --Nest Thorn
	{ itemID = 824401 }, --Carrion Eye
	{ itemID = 903016 }, --Fel Dust
	{ itemID = 1262811 }, --Abomination Hook
	{ itemID = 2088888 }, --Prophet's Divine Staff
	{ itemID = 3595662 }, --Dwarven Crossbow
	{ itemID = 4050651 }, --Sunken Zoram Spear
	{ itemID = 4050652 }, --Elven Militia Crown
	{ itemID = 4050653 }, --Pristine Tortoise Carapace
}

AtlasLoot_ItemData = {
	{ itemID = 28453, groupID = 1, refLootEntry = 16152 }, --Bracers of the White Stag
	{ itemID = 28505, groupID = 1, refLootEntry = 16152 }, --Gauntlets of Renewed Hope
	{ itemID = 28508, groupID = 1, refLootEntry = 16152 }, --Gloves of Saintly Blessings
	{ itemID = 28507, groupID = 1, refLootEntry = 16152 }, --Handwraps of Flowing Thought
	{ itemID = 28477, groupID = 1, refLootEntry = 16152 }, --Harbinger Bands
	{ itemID = 28510, groupID = 1, refLootEntry = 16152 }, --Spectral Band of Innervation
	{ itemID = 28503, groupID = 1, refLootEntry = 16152 }, --Whirlwind Bracers
	{ itemID = 28506, groupID = 2, refLootEntry = 16152 }, --Gloves of Dexterous Manipulation
	{ itemID = 11249, groupID = 2, refLootEntry = 16152 }, --Ring of Eternal Flame
	{ itemID = 28454, groupID = 2, refLootEntry = 16152 }, --Stalker's War Bands
	{ itemID = 28504, groupID = 2, refLootEntry = 16152 }, --Steelhawk Crossbow
	{ itemID = 28502, groupID = 2, refLootEntry = 16152 }, --Vambraces of Courage
	{ itemID = 28509, groupID = 2, refLootEntry = 16152 }, --Worgen Claw Necklace
	{ itemID = 12504, groupID = 1, refLootEntry = 15082 }, --Battleweaver's Medallion
	{ itemID = 19968, groupID = 1, refLootEntry = 15082 }, --Fiery Retributer
	{ itemID = 19962, groupID = 1, refLootEntry = 15082 }, --Gri'lek's Carver
	{ itemID = 19961, groupID = 1, refLootEntry = 15082 }, --Gri'lek's Grinder
	{ itemID = 19993, groupID = 1, refLootEntry = 15082 }, --Hoodoo Hunting Bow
	{ itemID = 19963, groupID = 1, refLootEntry = 15082 }, --Pitchfork of Madness
	{ itemID = 19964, groupID = 1, refLootEntry = 15082 }, --Renataki's Soul Conduit
	{ itemID = 19967, groupID = 1, refLootEntry = 15082 }, --Thoughtblighter
	{ itemID = 19965, groupID = 1, refLootEntry = 15082 }, --Wushoolay's Poker
	{ itemID = 19951, groupID = 2, refLootEntry = 15082 }, --Gri'lek's Charm of Might
	{ itemID = 19952, groupID = 2, refLootEntry = 15082 }, --Gri'lek's Charm of Valor
	{ itemID = 19957, groupID = 2, refLootEntry = 15082 }, --Hazza'rah's Charm of Destruction
	{ itemID = 19958, groupID = 2, refLootEntry = 15082 }, --Hazza'rah's Charm of Healing
	{ itemID = 19959, groupID = 2, refLootEntry = 15082 }, --Hazza'rah's Charm of Magic
	{ itemID = 19953, groupID = 2, refLootEntry = 15082 }, --Renataki's Charm of Beasts
	{ itemID = 19954, groupID = 2, refLootEntry = 15082 }, --Renataki's Charm of Trickery
	{ itemID = 19955, groupID = 2, refLootEntry = 15082 }, --Wushoolay's Charm of Nature
	{ itemID = 19956, groupID = 2, refLootEntry = 15082 }, --Wushoolay's Charm of Spirits
	{ itemID = 12504, groupID = 1, refLootEntry = 340000 }, --Battleweaver's Medallion
	{ itemID = 19968, groupID = 1, refLootEntry = 340000 }, --Fiery Retributer
	{ itemID = 19962, groupID = 1, refLootEntry = 340000 }, --Gri'lek's Carver
	{ itemID = 19961, groupID = 1, refLootEntry = 340000 }, --Gri'lek's Grinder
	{ itemID = 19993, groupID = 1, refLootEntry = 340000 }, --Hoodoo Hunting Bow
	{ itemID = 19963, groupID = 1, refLootEntry = 340000 }, --Pitchfork of Madness
	{ itemID = 19964, groupID = 1, refLootEntry = 340000 }, --Renataki's Soul Conduit
	{ itemID = 19967, groupID = 1, refLootEntry = 340000 }, --Thoughtblighter
	{ itemID = 19965, groupID = 1, refLootEntry = 340000 }, --Wushoolay's Poker
	{ itemID = 19951, groupID = 2, refLootEntry = 340000 }, --Gri'lek's Charm of Might
	{ itemID = 19952, groupID = 2, refLootEntry = 340000 }, --Gri'lek's Charm of Valor
	{ itemID = 19957, groupID = 2, refLootEntry = 340000 }, --Hazza'rah's Charm of Destruction
	{ itemID = 19958, groupID = 2, refLootEntry = 340000 }, --Hazza'rah's Charm of Healing
	{ itemID = 19959, groupID = 2, refLootEntry = 340000 }, --Hazza'rah's Charm of Magic
	{ itemID = 19953, groupID = 2, refLootEntry = 340000 }, --Renataki's Charm of Beasts
	{ itemID = 19954, groupID = 2, refLootEntry = 340000 }, --Renataki's Charm of Trickery
	{ itemID = 19955, groupID = 2, refLootEntry = 340000 }, --Wushoolay's Charm of Nature
	{ itemID = 19956, groupID = 2, refLootEntry = 340000 }, --Wushoolay's Charm of Spirits
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
	{ itemID = 12504, groupID = 1, refLootEntry = 15084 }, --Battleweaver's Medallion
	{ itemID = 19968, groupID = 1, refLootEntry = 15084 }, --Fiery Retributer
	{ itemID = 19962, groupID = 1, refLootEntry = 15084 }, --Gri'lek's Carver
	{ itemID = 19961, groupID = 1, refLootEntry = 15084 }, --Gri'lek's Grinder
	{ itemID = 19993, groupID = 1, refLootEntry = 15084 }, --Hoodoo Hunting Bow
	{ itemID = 19963, groupID = 1, refLootEntry = 15084 }, --Pitchfork of Madness
	{ itemID = 19964, groupID = 1, refLootEntry = 15084 }, --Renataki's Soul Conduit
	{ itemID = 19967, groupID = 1, refLootEntry = 15084 }, --Thoughtblighter
	{ itemID = 19965, groupID = 1, refLootEntry = 15084 }, --Wushoolay's Poker
	{ itemID = 19951, groupID = 2, refLootEntry = 15084 }, --Gri'lek's Charm of Might
	{ itemID = 19952, groupID = 2, refLootEntry = 15084 }, --Gri'lek's Charm of Valor
	{ itemID = 19957, groupID = 2, refLootEntry = 15084 }, --Hazza'rah's Charm of Destruction
	{ itemID = 19958, groupID = 2, refLootEntry = 15084 }, --Hazza'rah's Charm of Healing
	{ itemID = 19959, groupID = 2, refLootEntry = 15084 }, --Hazza'rah's Charm of Magic
	{ itemID = 19953, groupID = 2, refLootEntry = 15084 }, --Renataki's Charm of Beasts
	{ itemID = 19954, groupID = 2, refLootEntry = 15084 }, --Renataki's Charm of Trickery
	{ itemID = 19955, groupID = 2, refLootEntry = 15084 }, --Wushoolay's Charm of Nature
	{ itemID = 19956, groupID = 2, refLootEntry = 15084 }, --Wushoolay's Charm of Spirits
	{ itemID = 28588, groupID = 1, refLootEntry = 18168 }, --Blue Diamond Witchwand
	{ itemID = 28587, groupID = 1, refLootEntry = 18168 }, --Legacy
	{ itemID = 28585, groupID = 1, refLootEntry = 18168 }, --Ruby Slippers
	{ itemID = 28586, groupID = 1, refLootEntry = 18168 }, --Wicked Witch's Hat
	{ itemID = 28589, groupID = 2, refLootEntry = 18168 }, --Beastmaw Pauldrons
	{ itemID = 28591, groupID = 2, refLootEntry = 18168 }, --Earthsoul Leggings
	{ itemID = 28593, groupID = 2, refLootEntry = 18168 }, --Eternium Greathelm
	{ itemID = 28592, groupID = 2, refLootEntry = 18168 }, --Libram of Souls Redeemed
	{ itemID = 28590, groupID = 2, refLootEntry = 18168 }, --Ribbon of Sacrifice
	{ itemID = 28594, groupID = 2, refLootEntry = 18168 }, --Trial-Fire Trousers
	{ itemID = 12504, groupID = 1, refLootEntry = 15085 }, --Battleweaver's Medallion
	{ itemID = 19968, groupID = 1, refLootEntry = 15085 }, --Fiery Retributer
	{ itemID = 19962, groupID = 1, refLootEntry = 15085 }, --Gri'lek's Carver
	{ itemID = 19961, groupID = 1, refLootEntry = 15085 }, --Gri'lek's Grinder
	{ itemID = 19993, groupID = 1, refLootEntry = 15085 }, --Hoodoo Hunting Bow
	{ itemID = 19963, groupID = 1, refLootEntry = 15085 }, --Pitchfork of Madness
	{ itemID = 19964, groupID = 1, refLootEntry = 15085 }, --Renataki's Soul Conduit
	{ itemID = 19967, groupID = 1, refLootEntry = 15085 }, --Thoughtblighter
	{ itemID = 19965, groupID = 1, refLootEntry = 15085 }, --Wushoolay's Poker
	{ itemID = 19951, groupID = 2, refLootEntry = 15085 }, --Gri'lek's Charm of Might
	{ itemID = 19952, groupID = 2, refLootEntry = 15085 }, --Gri'lek's Charm of Valor
	{ itemID = 19957, groupID = 2, refLootEntry = 15085 }, --Hazza'rah's Charm of Destruction
	{ itemID = 19958, groupID = 2, refLootEntry = 15085 }, --Hazza'rah's Charm of Healing
	{ itemID = 19959, groupID = 2, refLootEntry = 15085 }, --Hazza'rah's Charm of Magic
	{ itemID = 19953, groupID = 2, refLootEntry = 15085 }, --Renataki's Charm of Beasts
	{ itemID = 19954, groupID = 2, refLootEntry = 15085 }, --Renataki's Charm of Trickery
	{ itemID = 19955, groupID = 2, refLootEntry = 15085 }, --Wushoolay's Charm of Nature
	{ itemID = 19956, groupID = 2, refLootEntry = 15085 }, --Wushoolay's Charm of Spirits
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
	{ itemID = 21579, groupID = 2, refLootEntry = 15727 }, --Vanquished Tentacle of C'Thun
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
	{ itemID = 21690, groupID = 1, refLootEntry = 15511 }, --Angelista's Charm
	{ itemID = 21697, groupID = 1, refLootEntry = 15511 }, --Cape of the Trinity
	{ itemID = 21689, groupID = 1, refLootEntry = 15511 }, --Gloves of Ebru
	{ itemID = 21686, groupID = 1, refLootEntry = 15511 }, --Mantle of Phrenic Power
	{ itemID = 21681, groupID = 1, refLootEntry = 15511 }, --Ring of the Devoured
	{ itemID = 21696, groupID = 1, refLootEntry = 15511 }, --Robes of the Triumvirate
	{ itemID = 21695, groupID = 2, refLootEntry = 15511 }, --Angelista's Touch
	{ itemID = 21693, groupID = 2, refLootEntry = 15511 }, --Guise of the Devourer
	{ itemID = 21684, groupID = 2, refLootEntry = 15511 }, --Mantle of the Desert's Fury
	{ itemID = 21685, groupID = 2, refLootEntry = 15511 }, --Petrified Scarab
	{ itemID = 21692, groupID = 2, refLootEntry = 15511 }, --Triad Girdle
	{ itemID = 21687, groupID = 2, refLootEntry = 15511 }, --Ukko's Ring of Darkness
	{ itemID = 15029, groupID = 1, refLootEntry = 15517 }, --Aera's Poison Gland
	{ itemID = 21611, groupID = 1, refLootEntry = 15517 }, --Burrower Bracers
	{ itemID = 21615, groupID = 1, refLootEntry = 15517 }, --Don Rigoberto's Lost Hat
	{ itemID = 21610, groupID = 1, refLootEntry = 15517 }, --Wormscale Blocker
	{ itemID = 21708, groupID = 2, refLootEntry = 15517 }, --Beetle Scaled Wristguards
	{ itemID = 21605, groupID = 2, refLootEntry = 15517 }, --Gloves of the Hidden Temple
	{ itemID = 21645, groupID = 2, refLootEntry = 15517 }, --Hive Tunneler's Boots
	{ itemID = 23570, groupID = 2, refLootEntry = 15517 }, --Jom Gabbar
	{ itemID = 23557, groupID = 2, refLootEntry = 15517 }, --Larvae of the Great Worm
	{ itemID = 23558, groupID = 2, refLootEntry = 15517 }, --The Burrower's Shell
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
	{ itemID = 21680, groupID = 2, refLootEntry = 15509 }, --Vest of Swift Execution
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
	{ itemID = 32519, groupID = 2, refLootEntry = 22949 }, --Belt of Divine Guidance
	{ itemID = 32331, groupID = 2, refLootEntry = 22949 }, --Cloak of the Illidari Council
	{ itemID = 32376, groupID = 2, refLootEntry = 22949 }, --Forest Prowler's Helm
	{ itemID = 32373, groupID = 2, refLootEntry = 22949 }, --Helm of the Illidari Shatterer
	{ itemID = 32326, groupID = 2, refLootEntry = 22949 }, --Twisted Blades of Zarak
	{ itemID = 32518, groupID = 2, refLootEntry = 22949 }, --Veil of Turning Leaves
	{ itemID = 32339, groupID = 1, refLootEntry = 22948 }, --Belt of Primal Majesty
	{ itemID = 32338, groupID = 1, refLootEntry = 22948 }, --Blood-cursed Shoulderpads
	{ itemID = 32340, groupID = 1, refLootEntry = 22948 }, --Garments of Temperance
	{ itemID = 32337, groupID = 1, refLootEntry = 22948 }, --Shroud of Forgiveness
	{ itemID = 32344, groupID = 1, refLootEntry = 22948 }, --Staff of Immaculate Recovery
	{ itemID = 32343, groupID = 1, refLootEntry = 22948 }, --Wand of Prismatic Focus
	{ itemID = 12571, groupID = 2, refLootEntry = 22948 }, --Bloodboil Breaker
	{ itemID = 32342, groupID = 2, refLootEntry = 22948 }, --Girdle of Mighty Resolve
	{ itemID = 32341, groupID = 2, refLootEntry = 22948 }, --Leggings of Divine Retribution
	{ itemID = 32269, groupID = 2, refLootEntry = 22948 }, --Messenger of Fate
	{ itemID = 32348, groupID = 2, refLootEntry = 22948 }, --Soul Cleaver
	{ itemID = 32335, groupID = 2, refLootEntry = 22948 }, --Unstoppable Aggressor's Ring
	{ itemID = 32334, groupID = 2, refLootEntry = 22948 }, --Vest of Mounting Assault
	{ itemID = 32242, groupID = 1, refLootEntry = 22887 }, --Boots of Oceanic Fury
	{ itemID = 32240, groupID = 1, refLootEntry = 22887 }, --Guise of the Tidal Lurker
	{ itemID = 32241, groupID = 1, refLootEntry = 22887 }, --Helm of Soothing Currents
	{ itemID = 32243, groupID = 1, refLootEntry = 22887 }, --Pearl Inlaid Boots
	{ itemID = 32238, groupID = 1, refLootEntry = 22887 }, --Ring of Calming Waves
	{ itemID = 32239, groupID = 1, refLootEntry = 22887 }, --Slippers of the Seacaller
	{ itemID = 32232, groupID = 2, refLootEntry = 22887 }, --Eternium Shell Bracers
	{ itemID = 32234, groupID = 2, refLootEntry = 22887 }, --Fists of Mukoa
	{ itemID = 32248, groupID = 2, refLootEntry = 22887 }, --Halberd of Desolation
	{ itemID = 32377, groupID = 2, refLootEntry = 22887 }, --Mantle of Darkness
	{ itemID = 32236, groupID = 2, refLootEntry = 22887 }, --Rising Tide
	{ itemID = 32245, groupID = 2, refLootEntry = 22887 }, --Tide-stomper's Greaves
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
	{ itemID = 32369, groupID = 2, refLootEntry = 22947 }, --Blade of Savagery
	{ itemID = 32365, groupID = 2, refLootEntry = 22947 }, --Heartshatter Breastplate
	{ itemID = 32367, groupID = 2, refLootEntry = 22947 }, --Leggings of Devastation
	{ itemID = 32370, groupID = 2, refLootEntry = 22947 }, --Nadina's Pendant of Purity
	{ itemID = 32263, groupID = 2, refLootEntry = 22947 }, --Praetorian's Legguards
	{ itemID = 32366, groupID = 2, refLootEntry = 22947 }, --Shadowmaster's Boots
	{ itemID = 32354, groupID = 1, refLootEntry = 22856 }, --Crown of Empowered Fate
	{ itemID = 32351, groupID = 1, refLootEntry = 22856 }, --Elunite Empowered Bracers
	{ itemID = 32353, groupID = 1, refLootEntry = 22856 }, --Gloves of Unfailing Faith
	{ itemID = 32352, groupID = 1, refLootEntry = 22856 }, --Naturewarden's Treads
	{ itemID = 32517, groupID = 1, refLootEntry = 22856 }, --The Wavemender's Mantle
	{ itemID = 32350, groupID = 1, refLootEntry = 22856 }, --Touch of Inspiration
	{ itemID = 32346, groupID = 2, refLootEntry = 22856 }, --Boneweave Girdle
	{ itemID = 32345, groupID = 2, refLootEntry = 22856 }, --Dreadboots of the Legion
	{ itemID = 32333, groupID = 2, refLootEntry = 22856 }, --Girdle of Stability
	{ itemID = 32347, groupID = 2, refLootEntry = 22856 }, --Grips of Damnation
	{ itemID = 32362, groupID = 2, refLootEntry = 22856 }, --Pendant of Titans
	{ itemID = 32332, groupID = 2, refLootEntry = 22856 }, --Torch of the Damned
	{ itemID = 32273, groupID = 1, refLootEntry = 22841 }, --Amice of Brilliant Light
	{ itemID = 32361, groupID = 1, refLootEntry = 22841 }, --Blind-Seers Icon
	{ itemID = 32276, groupID = 1, refLootEntry = 22841 }, --Flashfire Girdle
	{ itemID = 32270, groupID = 1, refLootEntry = 22841 }, --Focused Mana Bindings
	{ itemID = 32275, groupID = 1, refLootEntry = 22841 }, --Spiritwalker Gauntlets
	{ itemID = 32513, groupID = 1, refLootEntry = 22841 }, --Wristbands of Divine Influence
	{ itemID = 32278, groupID = 2, refLootEntry = 22841 }, --Grips of Silent Justice
	{ itemID = 32268, groupID = 2, refLootEntry = 22841 }, --Myrmidon's Treads
	{ itemID = 32266, groupID = 2, refLootEntry = 22841 }, --Ring of Deceitful Intent
	{ itemID = 32265, groupID = 2, refLootEntry = 22841 }, --Shadow-walker's Cord
	{ itemID = 32264, groupID = 2, refLootEntry = 22841 }, --Shoulders of the Hidden Predator
	{ itemID = 32279, groupID = 2, refLootEntry = 22841 }, --The Seeker's Wristguards
	{ itemID = 32259, groupID = 1, refLootEntry = 22898 }, --Bands of the Coming Storm
	{ itemID = 32255, groupID = 1, refLootEntry = 22898 }, --Felstone Bulwark
	{ itemID = 32258, groupID = 1, refLootEntry = 22898 }, --Naturalist's Preserving Cinch
	{ itemID = 32247, groupID = 1, refLootEntry = 22898 }, --Ring of Captured Storms
	{ itemID = 32237, groupID = 1, refLootEntry = 22898 }, --The Maelstrom's Fury
	{ itemID = 32256, groupID = 1, refLootEntry = 22898 }, --Waistwrap of Infinity
	{ itemID = 32261, groupID = 2, refLootEntry = 22898 }, --Band of the Abyssal Lord
	{ itemID = 32260, groupID = 2, refLootEntry = 22898 }, --Choker of Endless Nightmares
	{ itemID = 32253, groupID = 2, refLootEntry = 22898 }, --Legionkiller
	{ itemID = 32252, groupID = 2, refLootEntry = 22898 }, --Nether Shadow Tunic
	{ itemID = 32250, groupID = 2, refLootEntry = 22898 }, --Pauldrons of Abyssal Fury
	{ itemID = 32262, groupID = 2, refLootEntry = 22898 }, --Syphon of the Nathrezim
	{ itemID = 32254, groupID = 2, refLootEntry = 22898 }, --The Brutalizer
	{ itemID = 32251, groupID = 2, refLootEntry = 22898 }, --Wraps of Precise Flight
	{ itemID = 32328, groupID = 1, refLootEntry = 22871 }, --Botanist's Gloves of Growth
	{ itemID = 32329, groupID = 1, refLootEntry = 22871 }, --Cowl of Benevolence
	{ itemID = 32512, groupID = 1, refLootEntry = 22871 }, --Girdle of Lordaeron's Fallen
	{ itemID = 32271, groupID = 1, refLootEntry = 22871 }, --Kilt of Immortal Nature
	{ itemID = 32327, groupID = 1, refLootEntry = 22871 }, --Robe of the Shadow Council
	{ itemID = 32349, groupID = 1, refLootEntry = 22871 }, --Translucent Spellthread Necklace
	{ itemID = 32280, groupID = 2, refLootEntry = 22871 }, --Gauntlets of Enforcement
	{ itemID = 32507, groupID = 2, refLootEntry = 22871 }, --Gorefiend
	{ itemID = 32324, groupID = 2, refLootEntry = 22871 }, --Insidious Bands
	{ itemID = 32325, groupID = 2, refLootEntry = 22871 }, --Rifle of the Stoic Guardian
	{ itemID = 32323, groupID = 2, refLootEntry = 22871 }, --Shadowmoon Destroyer's Drape
	{ itemID = 32510, groupID = 2, refLootEntry = 22871 }, --Softstep Boots of Tracking
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
	{ itemID = 19345, groupID = 1, refLootEntry = 34036 }, --Aegis of Preservation
	{ itemID = 19403, groupID = 1, refLootEntry = 34036 }, --Band of Forced Concentration
	{ itemID = 16907, groupID = 1, refLootEntry = 34036 }, --Bloodfang Gloves
	{ itemID = 19368, groupID = 1, refLootEntry = 34036 }, --Dragonbreath Hand Cannon
	{ itemID = 16940, groupID = 1, refLootEntry = 34036 }, --Dragonstalker's Gauntlets
	{ itemID = 19406, groupID = 1, refLootEntry = 34036 }, --Drake Fang Talisman
	{ itemID = 19353, groupID = 1, refLootEntry = 34036 }, --Drake Talon Cleaver
	{ itemID = 19394, groupID = 1, refLootEntry = 34036 }, --Drake Talon Pauldrons
	{ itemID = 19407, groupID = 1, refLootEntry = 34036 }, --Ebony Flame Gloves
	{ itemID = 16964, groupID = 1, refLootEntry = 34036 }, --Gauntlets of Wrath
	{ itemID = 16948, groupID = 1, refLootEntry = 34036 }, --Gloves of Ten Storms
	{ itemID = 10905, groupID = 1, refLootEntry = 34036 }, --Grips of Wrath
	{ itemID = 16920, groupID = 1, refLootEntry = 34036 }, --Handguards of Transcendence
	{ itemID = 16956, groupID = 1, refLootEntry = 34036 }, --Judgement Gauntlets
	{ itemID = 19405, groupID = 1, refLootEntry = 34036 }, --Malfurion's Blessed Bulwark
	{ itemID = 16928, groupID = 1, refLootEntry = 34036 }, --Nemesis Gloves
	{ itemID = 16913, groupID = 1, refLootEntry = 34036 }, --Netherwind Gloves
	{ itemID = 19395, groupID = 1, refLootEntry = 34036 }, --Rejuvenating Gem
	{ itemID = 19397, groupID = 1, refLootEntry = 34036 }, --Ring of Blackrock
	{ itemID = 19355, groupID = 1, refLootEntry = 34036 }, --Shadow Wing Focus Staff
	{ itemID = 16899, groupID = 1, refLootEntry = 34036 }, --Stormrage Handguards
	{ itemID = 19396, groupID = 1, refLootEntry = 34036 }, --Taut Dragonhide Belt
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
	{ itemID = 16907, groupID = 1, refLootEntry = 34037 }, --Bloodfang Gloves
	{ itemID = 19432, groupID = 1, refLootEntry = 34037 }, --Circle of Applied Force
	{ itemID = 19367, groupID = 1, refLootEntry = 34037 }, --Dragon's Touch
	{ itemID = 16940, groupID = 1, refLootEntry = 34037 }, --Dragonstalker's Gauntlets
	{ itemID = 19353, groupID = 1, refLootEntry = 34037 }, --Drake Talon Cleaver
	{ itemID = 19394, groupID = 1, refLootEntry = 34037 }, --Drake Talon Pauldrons
	{ itemID = 19433, groupID = 1, refLootEntry = 34037 }, --Emberweave Leggings
	{ itemID = 16964, groupID = 1, refLootEntry = 34037 }, --Gauntlets of Wrath
	{ itemID = 16948, groupID = 1, refLootEntry = 34037 }, --Gloves of Ten Storms
	{ itemID = 10905, groupID = 1, refLootEntry = 34037 }, --Grips of Wrath
	{ itemID = 16920, groupID = 1, refLootEntry = 34037 }, --Handguards of Transcendence
	{ itemID = 19357, groupID = 1, refLootEntry = 34037 }, --Herald of Woe
	{ itemID = 16956, groupID = 1, refLootEntry = 34037 }, --Judgement Gauntlets
	{ itemID = 16928, groupID = 1, refLootEntry = 34037 }, --Nemesis Gloves
	{ itemID = 16913, groupID = 1, refLootEntry = 34037 }, --Netherwind Gloves
	{ itemID = 19395, groupID = 1, refLootEntry = 34037 }, --Rejuvenating Gem
	{ itemID = 19397, groupID = 1, refLootEntry = 34037 }, --Ring of Blackrock
	{ itemID = 14000, groupID = 1, refLootEntry = 34037 }, --Ring of Trinity Force
	{ itemID = 19355, groupID = 1, refLootEntry = 34037 }, --Shadow Wing Focus Staff
	{ itemID = 19430, groupID = 1, refLootEntry = 34037 }, --Shroud of Pure Thought
	{ itemID = 16899, groupID = 1, refLootEntry = 34037 }, --Stormrage Handguards
	{ itemID = 19431, groupID = 1, refLootEntry = 34037 }, --Styleen's Impeding Scarab
	{ itemID = 19396, groupID = 1, refLootEntry = 34037 }, --Taut Dragonhide Belt
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
	{ itemID = 12154, groupID = 2, refLootEntry = 21214 }, --Belt of Submerged Might
	{ itemID = 30101, groupID = 2, refLootEntry = 21214 }, --Bloodsea Brigand's Vest
	{ itemID = 30663, groupID = 2, refLootEntry = 21214 }, --Fathom-Brooch of the Tidewalker
	{ itemID = 30099, groupID = 2, refLootEntry = 21214 }, --Frayed Tether of the Drowned
	{ itemID = 12125, groupID = 2, refLootEntry = 21214 }, --Maul of the Bloodied Depths
	{ itemID = 30626, groupID = 2, refLootEntry = 21214 }, --Sextant of Unstable Currents
	{ itemID = 30100, groupID = 2, refLootEntry = 21214 }, --Soul-Strider Boots
	{ itemID = 30090, groupID = 2, refLootEntry = 21214 }, --World Breaker
	{ itemID = 30047, groupID = 1, refLootEntry = 21216 }, --Blackfathom Warbands
	{ itemID = 30050, groupID = 1, refLootEntry = 21216 }, --Boots of the Shifting Nightmare
	{ itemID = 30048, groupID = 1, refLootEntry = 21216 }, --Brighthelm of Justice
	{ itemID = 30049, groupID = 1, refLootEntry = 21216 }, --Fathomstone
	{ itemID = 30051, groupID = 1, refLootEntry = 21216 }, --Idol of the Crescent Goddess
	{ itemID = 30056, groupID = 1, refLootEntry = 21216 }, --Robe of Hateful Echoes
	{ itemID = 32516, groupID = 1, refLootEntry = 21216 }, --Wraps of Purification
	{ itemID = 33055, groupID = 2, refLootEntry = 21216 }, --Band of Vile Aggression
	{ itemID = 30664, groupID = 2, refLootEntry = 21216 }, --Living Root of the Wildheart
	{ itemID = 30053, groupID = 2, refLootEntry = 21216 }, --Pauldrons of the Wardancer
	{ itemID = 30054, groupID = 2, refLootEntry = 21216 }, --Ranger-General's Chestguard
	{ itemID = 30052, groupID = 2, refLootEntry = 21216 }, --Ring of Lethality
	{ itemID = 12149, groupID = 2, refLootEntry = 21216 }, --Ring of Unstable Currents
	{ itemID = 30629, groupID = 2, refLootEntry = 21216 }, --Scarab of Displacement
	{ itemID = 30055, groupID = 2, refLootEntry = 21216 }, --Shoulderpads of the Stranger
	{ itemID = 30110, groupID = 3, refLootEntry = 21212 }, --Coral Band of the Revived
	{ itemID = 30112, groupID = 3, refLootEntry = 21212 }, --Glorious Gauntlets of Crestfall
	{ itemID = 30108, groupID = 3, refLootEntry = 21212 }, --Lightfathom Scepter
	{ itemID = 30621, groupID = 3, refLootEntry = 21212 }, --Prism of Inner Calm
	{ itemID = 30109, groupID = 3, refLootEntry = 21212 }, --Ring of Endless Coils
	{ itemID = 30111, groupID = 3, refLootEntry = 21212 }, --Runetotem's Mantle
	{ itemID = 12194, groupID = 3, refLootEntry = 21212 }, --Tideforged Maul
	{ itemID = 30107, groupID = 3, refLootEntry = 21212 }, --Vestments of the Sea-Witch
	{ itemID = 30106, groupID = 4, refLootEntry = 21212 }, --Belt of One-Hundred Deaths
	{ itemID = 30104, groupID = 4, refLootEntry = 21212 }, --Cobra-Lash Boots
	{ itemID = 30103, groupID = 4, refLootEntry = 21212 }, --Fang of Vashj
	{ itemID = 30102, groupID = 4, refLootEntry = 21212 }, --Krakken-Heart Breastplate
	{ itemID = 12148, groupID = 4, refLootEntry = 21212 }, --Ring of Tidal Precision
	{ itemID = 30105, groupID = 4, refLootEntry = 21212 }, --Serpent Spine Longbow
	{ itemID = 12151, groupID = 4, refLootEntry = 21212 }, --Tidebound Bow
	{ itemID = 12128, groupID = 2, refLootEntry = 21215 }, --Boots of Inner Torment
	{ itemID = 30097, groupID = 2, refLootEntry = 21215 }, --Coral-Barbed Shoulderpads
	{ itemID = 12129, groupID = 2, refLootEntry = 21215 }, --Dreadstep Sabatons
	{ itemID = 30095, groupID = 2, refLootEntry = 21215 }, --Fang of the Leviathan
	{ itemID = 30096, groupID = 2, refLootEntry = 21215 }, --Girdle of the Invulnerable
	{ itemID = 30092, groupID = 2, refLootEntry = 21215 }, --Orca-Hide Boots
	{ itemID = 30091, groupID = 2, refLootEntry = 21215 }, --True-Aim Stalker Bands
	{ itemID = 30627, groupID = 2, refLootEntry = 21215 }, --Tsunami Talisman
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
	{ itemID = 30047, groupID = 1, refLootEntry = 21216 }, --Blackfathom Warbands
	{ itemID = 30050, groupID = 1, refLootEntry = 21216 }, --Boots of the Shifting Nightmare
	{ itemID = 30048, groupID = 1, refLootEntry = 21216 }, --Brighthelm of Justice
	{ itemID = 30049, groupID = 1, refLootEntry = 21216 }, --Fathomstone
	{ itemID = 30051, groupID = 1, refLootEntry = 21216 }, --Idol of the Crescent Goddess
	{ itemID = 30056, groupID = 1, refLootEntry = 21216 }, --Robe of Hateful Echoes
	{ itemID = 32516, groupID = 1, refLootEntry = 21216 }, --Wraps of Purification
	{ itemID = 33055, groupID = 2, refLootEntry = 21216 }, --Band of Vile Aggression
	{ itemID = 30664, groupID = 2, refLootEntry = 21216 }, --Living Root of the Wildheart
	{ itemID = 30053, groupID = 2, refLootEntry = 21216 }, --Pauldrons of the Wardancer
	{ itemID = 30054, groupID = 2, refLootEntry = 21216 }, --Ranger-General's Chestguard
	{ itemID = 30052, groupID = 2, refLootEntry = 21216 }, --Ring of Lethality
	{ itemID = 12149, groupID = 2, refLootEntry = 21216 }, --Ring of Unstable Currents
	{ itemID = 30629, groupID = 2, refLootEntry = 21216 }, --Scarab of Displacement
	{ itemID = 30055, groupID = 2, refLootEntry = 21216 }, --Shoulderpads of the Stranger
	{ itemID = 30064, groupID = 1, refLootEntry = 21217 }, --Cord of Screaming Terrors
	{ itemID = 30665, groupID = 1, refLootEntry = 21217 }, --Earring of Soulful Meditation
	{ itemID = 30065, groupID = 1, refLootEntry = 21217 }, --Glowing Breastplate of Truth
	{ itemID = 30062, groupID = 1, refLootEntry = 21217 }, --Grove-Bands of Remulos
	{ itemID = 30063, groupID = 1, refLootEntry = 21217 }, --Libram of Absolute Truth
	{ itemID = 30066, groupID = 1, refLootEntry = 21217 }, --Tempest-Strider Boots
	{ itemID = 33054, groupID = 1, refLootEntry = 21217 }, --The Seal of Danzalar
	{ itemID = 30067, groupID = 1, refLootEntry = 21217 }, --Velvet Boots of the Guardian
	{ itemID = 12165, groupID = 2, refLootEntry = 21217 }, --Amulet of Tidal Fury
	{ itemID = 30061, groupID = 2, refLootEntry = 21217 }, --Ancestral Ring of Conquest
	{ itemID = 30060, groupID = 2, refLootEntry = 21217 }, --Boots of Effortless Striking
	{ itemID = 12126, groupID = 2, refLootEntry = 21217 }, --Bracers of Abyssal Might
	{ itemID = 30057, groupID = 2, refLootEntry = 21217 }, --Bracers of Eradication
	{ itemID = 30059, groupID = 2, refLootEntry = 21217 }, --Choker of Animalistic Fury
	{ itemID = 30058, groupID = 2, refLootEntry = 21217 }, --Mallet of the Tides
	{ itemID = 11639, groupID = 2, refLootEntry = 19044 }, --Cloak of Brutal Winds
	{ itemID = 28804, groupID = 2, refLootEntry = 19044 }, --Collar of Cho'gall
	{ itemID = 28803, groupID = 2, refLootEntry = 19044 }, --Cowl of Nature's Breath
	{ itemID = 28824, groupID = 2, refLootEntry = 19044 }, --Gauntlets of Martial Perfection
	{ itemID = 28827, groupID = 2, refLootEntry = 19044 }, --Gauntlets of the Dragonslayer
	{ itemID = 28828, groupID = 2, refLootEntry = 19044 }, --Gronn-Stitched Girdle
	{ itemID = 28822, groupID = 2, refLootEntry = 19044 }, --Teeth of Gruul
	{ itemID = 28810, groupID = 2, refLootEntry = 19044 }, --Windshear Boots
	{ itemID = 28825, groupID = 3, refLootEntry = 19044 }, --Aldori Legacy Defender
	{ itemID = 28794, groupID = 3, refLootEntry = 19044 }, --Axe of the Gronn Lords
	{ itemID = 28802, groupID = 3, refLootEntry = 19044 }, --Bloodmaw Magus-Blade
	{ itemID = 28830, groupID = 3, refLootEntry = 19044 }, --Dragonspine Trophy
	{ itemID = 28823, groupID = 3, refLootEntry = 19044 }, --Eye of Gruul
	{ itemID = 28826, groupID = 3, refLootEntry = 19044 }, --Shuriken of Negation
	{ itemID = 11688, groupID = 3, refLootEntry = 19044 }, --Signet of Elemental Savagery
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
	{ itemID = 11640, groupID = 1, refLootEntry = 16816 }, --Bindings of Mystic Might
	{ itemID = 28752, groupID = 1, refLootEntry = 16816 }, --Forestlord Striders
	{ itemID = 28756, groupID = 1, refLootEntry = 16816 }, --Headdress of the High Potentate
	{ itemID = 28751, groupID = 1, refLootEntry = 16816 }, --Heart-Flame Leggings
	{ itemID = 28748, groupID = 1, refLootEntry = 16816 }, --Legplates of the Innocent
	{ itemID = 28753, groupID = 1, refLootEntry = 16816 }, --Ring of Recurrence
	{ itemID = 11797, groupID = 1, refLootEntry = 16816 }, --Ring of Shadowed Precision
	{ itemID = 28754, groupID = 1, refLootEntry = 16816 }, --Triptych Shield of the Ancients
	{ itemID = 28747, groupID = 2, refLootEntry = 16816 }, --Battlescar Boots
	{ itemID = 28755, groupID = 2, refLootEntry = 16816 }, --Bladed Shoulderpads of the Merciless
	{ itemID = 28746, groupID = 2, refLootEntry = 16816 }, --Fiend Slayer Boots
	{ itemID = 28750, groupID = 2, refLootEntry = 16816 }, --Girdle of Treachery
	{ itemID = 28749, groupID = 2, refLootEntry = 16816 }, --King's Defender
	{ itemID = 28745, groupID = 2, refLootEntry = 16816 }, --Mithril Chain of Heroism
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
	{ itemID = 28529, groupID = 2, refLootEntry = 15687 }, --Royal Cloak of Arathi Kings
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
	{ itemID = 28762, groupID = 2, refLootEntry = 15690 }, --Adornment of Stolen Souls
	{ itemID = 11638, groupID = 2, refLootEntry = 15690 }, --Darkened Boots of the Nathrezim
	{ itemID = 28764, groupID = 2, refLootEntry = 15690 }, --Farstrider Wildercloak
	{ itemID = 28763, groupID = 2, refLootEntry = 15690 }, --Jade Ring of the Everliving
	{ itemID = 28757, groupID = 2, refLootEntry = 15690 }, --Ring of a Thousand Marks
	{ itemID = 28766, groupID = 2, refLootEntry = 15690 }, --Ruby Drape of the Mysticant
	{ itemID = 28765, groupID = 2, refLootEntry = 15690 }, --Stainless Cloak of the Pure Hearted
	{ itemID = 11636, groupID = 2, refLootEntry = 15690 }, --Talisman of Disonnance
	{ itemID = 28773, groupID = 3, refLootEntry = 15690 }, --Gorehowl
	{ itemID = 28771, groupID = 3, refLootEntry = 15690 }, --Light's Justice
	{ itemID = 28768, groupID = 3, refLootEntry = 15690 }, --Malchazeen
	{ itemID = 28770, groupID = 3, refLootEntry = 15690 }, --Nathrezim Mindblade
	{ itemID = 12123, groupID = 3, refLootEntry = 15690 }, --Razorwind
	{ itemID = 28772, groupID = 3, refLootEntry = 15690 }, --Sunfury Bow of the Phoenix
	{ itemID = 28767, groupID = 3, refLootEntry = 15690 }, --The Decapitator
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
	{ itemID = 28631, groupID = 2, refLootEntry = 15691 }, --Dragon-Quake Shoulderguards
	{ itemID = 28647, groupID = 2, refLootEntry = 15691 }, --Forest Wind Shoulderpads
	{ itemID = 28649, groupID = 2, refLootEntry = 15691 }, --Garona's Signet Ring
	{ itemID = 28612, groupID = 2, refLootEntry = 15691 }, --Pauldrons of the Solace-Giver
	{ itemID = 28633, groupID = 2, refLootEntry = 15691 }, --Staff of Infinite Mysteries
	{ itemID = 11251, groupID = 2, refLootEntry = 15691 }, --Stormfury Pendant
	{ itemID = 28621, groupID = 2, refLootEntry = 15691 }, --Wrynn Dynasty Greaves
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
	{ itemID = 11687, groupID = 4, refLootEntry = 17257 }, --Ring of Hellfire Might
	{ itemID = 17072, groupID = 1, refLootEntry = 12056 }, --Blastershot Launcher
	{ itemID = 18829, groupID = 1, refLootEntry = 12056 }, --Deep Earth Spaulders
	{ itemID = 18824, groupID = 1, refLootEntry = 12056 }, --Magma Tempered Boots
	{ itemID = 19136, groupID = 1, refLootEntry = 12056 }, --Mana Igniting Cord
	{ itemID = 18872, groupID = 1, refLootEntry = 12056 }, --Manastorm Leggings
	{ itemID = 18822, groupID = 1, refLootEntry = 12056 }, --Obsidian Edged Blade
	{ itemID = 17110, groupID = 1, refLootEntry = 12056 }, --Seal of the Archmagus
	{ itemID = 18842, groupID = 1, refLootEntry = 12056 }, --Staff of Dominance
	{ itemID = 19146, groupID = 1, refLootEntry = 12056 }, --Wristguards of Stability
	{ itemID = 18823, groupID = 1, refLootEntry = 12057 }, --Aged Core Leather Gloves
	{ itemID = 17105, groupID = 1, refLootEntry = 12057 }, --Aurastone Hammer
	{ itemID = 17066, groupID = 1, refLootEntry = 12057 }, --Drillborer Disk
	{ itemID = 17073, groupID = 1, refLootEntry = 12057 }, --Earthshaker
	{ itemID = 18203, groupID = 1, refLootEntry = 12057 }, --Eskhandar's Right Claw
	{ itemID = 17071, groupID = 1, refLootEntry = 12057 }, --Gutgore Ripper
	{ itemID = 18879, groupID = 1, refLootEntry = 12057 }, --Heavy Dark Iron Ring
	{ itemID = 18870, groupID = 1, refLootEntry = 12057 }, --Helm of the Lifegiver
	{ itemID = 17065, groupID = 1, refLootEntry = 12057 }, --Medallion of Steadfast Might
	{ itemID = 18832, groupID = 1, refLootEntry = 12259 }, --Brutality Blade
	{ itemID = 17077, groupID = 1, refLootEntry = 12259 }, --Crimson Shocker
	{ itemID = 19142, groupID = 1, refLootEntry = 12259 }, --Fire Runed Grimoire
	{ itemID = 19143, groupID = 1, refLootEntry = 12259 }, --Flameguard Gauntlets
	{ itemID = 18861, groupID = 1, refLootEntry = 12259 }, --Flamewaker Legplates
	{ itemID = 12594, groupID = 1, refLootEntry = 12259 }, --Flamewalker Shoulderguards
	{ itemID = 18821, groupID = 1, refLootEntry = 12259 }, --Quick Strike Ring
	{ itemID = 19144, groupID = 1, refLootEntry = 12259 }, --Sabatons of the Flamewalker
	{ itemID = 18878, groupID = 1, refLootEntry = 12259 }, --Sorcerous Dagger
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
	{ itemID = 18832, groupID = 1, refLootEntry = 12118 }, --Brutality Blade
	{ itemID = 17077, groupID = 1, refLootEntry = 12118 }, --Crimson Shocker
	{ itemID = 19142, groupID = 1, refLootEntry = 12118 }, --Fire Runed Grimoire
	{ itemID = 19143, groupID = 1, refLootEntry = 12118 }, --Flameguard Gauntlets
	{ itemID = 12599, groupID = 1, refLootEntry = 12118 }, --Flameguard Legguards
	{ itemID = 12598, groupID = 1, refLootEntry = 12118 }, --Flametouched Leggings
	{ itemID = 18861, groupID = 1, refLootEntry = 12118 }, --Flamewaker Legplates
	{ itemID = 18821, groupID = 1, refLootEntry = 12118 }, --Quick Strike Ring
	{ itemID = 19144, groupID = 1, refLootEntry = 12118 }, --Sabatons of the Flamewalker
	{ itemID = 18878, groupID = 1, refLootEntry = 12118 }, --Sorcerous Dagger
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
	{ itemID = 22939, groupID = 2, refLootEntry = 15956 }, --Band of Unanswered Prayers
	{ itemID = 22938, groupID = 2, refLootEntry = 15956 }, --Cryptfiend Silk Cloak
	{ itemID = 22937, groupID = 2, refLootEntry = 15956 }, --Gem of Nerubis
	{ itemID = 22936, groupID = 2, refLootEntry = 15956 }, --Wristguards of Vengeance
	{ itemID = 23032, groupID = 5, refLootEntry = 15956 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15956 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15956 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15956 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15956 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15956 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15956 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15956 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15956 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15956 }, --Touch of Frost
	{ itemID = 22813, groupID = 2, refLootEntry = 15932 }, --Claymore of Unholy Might
	{ itemID = 23075, groupID = 2, refLootEntry = 15932 }, --Death's Bargain
	{ itemID = 22994, groupID = 2, refLootEntry = 15932 }, --Digested Hand of Power
	{ itemID = 22981, groupID = 2, refLootEntry = 15932 }, --Gluth's Missing Collar
	{ itemID = 22983, groupID = 2, refLootEntry = 15932 }, --Rime Covered Mantle
	{ itemID = 23032, groupID = 5, refLootEntry = 15932 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15932 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15932 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15932 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15932 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15932 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15932 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15932 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15932 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15932 }, --Touch of Frost
	{ itemID = 23073, groupID = 2, refLootEntry = 16060 }, --Boots of Displacement
	{ itemID = 23023, groupID = 2, refLootEntry = 16060 }, --Sadist's Collar
	{ itemID = 23021, groupID = 2, refLootEntry = 16060 }, --The Soul Harvester's Bindings
	{ itemID = 23032, groupID = 5, refLootEntry = 16060 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 16060 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 16060 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 16060 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 16060 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 16060 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 16060 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 16060 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 16060 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 16060 }, --Touch of Frost
	{ itemID = 22943, groupID = 2, refLootEntry = 15953 }, --Malice Stone Pendant
	{ itemID = 22942, groupID = 2, refLootEntry = 15953 }, --The Widow's Embrace
	{ itemID = 22806, groupID = 2, refLootEntry = 15953 }, --Widow's Remorse
	{ itemID = 23032, groupID = 5, refLootEntry = 15953 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15953 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15953 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15953 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15953 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15953 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15953 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15953 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15953 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15953 }, --Touch of Frost
	{ itemID = 22803, groupID = 2, refLootEntry = 15931 }, --Midnight Haze
	{ itemID = 22988, groupID = 2, refLootEntry = 15931 }, --The End of Dreams
	{ itemID = 22810, groupID = 2, refLootEntry = 15931 }, --Toxin Injector
	{ itemID = 23032, groupID = 5, refLootEntry = 15931 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15931 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15931 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15931 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15931 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15931 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15931 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15931 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15931 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15931 }, --Touch of Frost
	{ itemID = 23068, groupID = 2, refLootEntry = 15936 }, --Legplates of Carnage
	{ itemID = 23036, groupID = 2, refLootEntry = 15936 }, --Necklace of Necropsy
	{ itemID = 23035, groupID = 2, refLootEntry = 15936 }, --Preceptor's Hat
	{ itemID = 23032, groupID = 5, refLootEntry = 15936 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15936 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15936 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15936 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15936 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15936 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15936 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15936 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15936 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15936 }, --Touch of Frost
	{ itemID = 22691, groupID = 2, refLootEntry = 16062 }, --Corrupted Ashbringer
	{ itemID = 23071, groupID = 2, refLootEntry = 16062 }, --Leggings of Apocalypse
	{ itemID = 22809, groupID = 2, refLootEntry = 16062 }, --Maul of the Redeemed Crusader
	{ itemID = 23025, groupID = 2, refLootEntry = 16062 }, --Seal of the Damned
	{ itemID = 22811, groupID = 2, refLootEntry = 16062 }, --Soulstring
	{ itemID = 23027, groupID = 2, refLootEntry = 16062 }, --Warmth of Forgiveness
	{ itemID = 23032, groupID = 5, refLootEntry = 16062 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 16062 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 16062 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 16062 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 16062 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 16062 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 16062 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 16062 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 16062 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 16062 }, --Touch of Frost
	{ itemID = 22691, groupID = 6, refLootEntry = 16062 }, --Corrupted Ashbringer
	{ itemID = 23219, groupID = 2, refLootEntry = 16061 }, --Girdle of the Mentor
	{ itemID = 23014, groupID = 2, refLootEntry = 16061 }, --Iblis, Blade of the Fallen Seraph
	{ itemID = 23004, groupID = 2, refLootEntry = 16061 }, --Idol of Longevity
	{ itemID = 15030, groupID = 2, refLootEntry = 16061 }, --Jagged Cold Steel Knife
	{ itemID = 23018, groupID = 2, refLootEntry = 16061 }, --Signet of the Fallen Defender
	{ itemID = 23328, groupID = 2, refLootEntry = 16061 }, --The Unholy Blade
	{ itemID = 23017, groupID = 2, refLootEntry = 16061 }, --Veil of Eclipse
	{ itemID = 23009, groupID = 2, refLootEntry = 16061 }, --Wand of the Whispering Dead
	{ itemID = 23032, groupID = 5, refLootEntry = 16061 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 16061 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 16061 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 16061 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 16061 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 16061 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 16061 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 16061 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 16061 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 16061 }, --Touch of Frost
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
	{ itemID = 23032, groupID = 5, refLootEntry = 15990 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15990 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15990 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15990 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15990 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15990 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15990 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15990 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15990 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15990 }, --Touch of Frost
	{ itemID = 23038, groupID = 2, refLootEntry = 16011 }, --Band of Unnatural Forces
	{ itemID = 22800, groupID = 2, refLootEntry = 16011 }, --Brimstone Staff
	{ itemID = 23042, groupID = 2, refLootEntry = 16011 }, --Loatheb's Reflection
	{ itemID = 23037, groupID = 2, refLootEntry = 16011 }, --Ring of Spiritual Fervor
	{ itemID = 23039, groupID = 2, refLootEntry = 16011 }, --The Eye of Nerub
	{ itemID = 23032, groupID = 5, refLootEntry = 16011 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 16011 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 16011 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 16011 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 16011 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 16011 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 16011 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 16011 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 16011 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 16011 }, --Touch of Frost
	{ itemID = 23220, groupID = 2, refLootEntry = 15952 }, --Crystal Webbed Robe
	{ itemID = 22954, groupID = 2, refLootEntry = 15952 }, --Kiss of the Spider
	{ itemID = 22804, groupID = 2, refLootEntry = 15952 }, --Maexxna's Fang
	{ itemID = 22947, groupID = 2, refLootEntry = 15952 }, --Pendant of Forgotten Names
	{ itemID = 22807, groupID = 2, refLootEntry = 15952 }, --Wraith Blade
	{ itemID = 23032, groupID = 5, refLootEntry = 15952 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15952 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15952 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15952 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15952 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15952 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15952 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15952 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15952 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15952 }, --Touch of Frost
	{ itemID = 23031, groupID = 2, refLootEntry = 15954 }, --Band of the Inevitable
	{ itemID = 23030, groupID = 2, refLootEntry = 15954 }, --Cloak of the Scourge
	{ itemID = 22816, groupID = 2, refLootEntry = 15954 }, --Hatchet of Sundered Bone
	{ itemID = 23006, groupID = 2, refLootEntry = 15954 }, --Libram of Light
	{ itemID = 23029, groupID = 2, refLootEntry = 15954 }, --Noth's Frigid Heart
	{ itemID = 23005, groupID = 2, refLootEntry = 15954 }, --Totem of Flowing Water
	{ itemID = 23032, groupID = 5, refLootEntry = 15954 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15954 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15954 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15954 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15954 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15954 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15954 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15954 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15954 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15954 }, --Touch of Frost
	{ itemID = 22961, groupID = 2, refLootEntry = 16028 }, --Band of Reanimation
	{ itemID = 22960, groupID = 2, refLootEntry = 16028 }, --Cloak of Suturing
	{ itemID = 22815, groupID = 2, refLootEntry = 16028 }, --Severance
	{ itemID = 22818, groupID = 2, refLootEntry = 16028 }, --The Plague Bearer
	{ itemID = 22820, groupID = 2, refLootEntry = 16028 }, --Wand of Fates
	{ itemID = 23032, groupID = 5, refLootEntry = 16028 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 16028 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 16028 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 16028 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 16028 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 16028 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 16028 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 16028 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 16028 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 16028 }, --Touch of Frost
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
	{ itemID = 23032, groupID = 5, refLootEntry = 15989 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15989 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15989 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15989 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15989 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15989 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15989 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15989 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15989 }, --Polar Shoulder Pads
	{ itemID = 22935, groupID = 5, refLootEntry = 15989 }, --Touch of Frost
	{ itemID = 15032, groupID = 2, refLootEntry = 15928 }, --Dislocated Spine
	{ itemID = 23001, groupID = 2, refLootEntry = 15928 }, --Eye of the Scourge
	{ itemID = 23070, groupID = 2, refLootEntry = 15928 }, --Leggings of Polarity
	{ itemID = 23000, groupID = 2, refLootEntry = 15928 }, --Plated Abomination Ribcage
	{ itemID = 22808, groupID = 2, refLootEntry = 15928 }, --The Castigator
	{ itemID = 23032, groupID = 5, refLootEntry = 15928 }, --Glacial Headdress
	{ itemID = 22968, groupID = 5, refLootEntry = 15928 }, --Glacial Mantle
	{ itemID = 23028, groupID = 5, refLootEntry = 15928 }, --Hailstone Band
	{ itemID = 23019, groupID = 5, refLootEntry = 15928 }, --Icebane Helmet
	{ itemID = 22940, groupID = 5, refLootEntry = 15928 }, --Icebane Pauldrons
	{ itemID = 23033, groupID = 5, refLootEntry = 15928 }, --Icy Scale Coif
	{ itemID = 22967, groupID = 5, refLootEntry = 15928 }, --Icy Scale Spaulders
	{ itemID = 23020, groupID = 5, refLootEntry = 15928 }, --Polar Helmet
	{ itemID = 22941, groupID = 5, refLootEntry = 15928 }, --Polar Shoulder Pads
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
	{ itemID = 21481, groupID = 1, refLootEntry = 15369 }, --Boots of the Desert Protector
	{ itemID = 21482, groupID = 1, refLootEntry = 15369 }, --Boots of the Fiery Sands
	{ itemID = 21478, groupID = 1, refLootEntry = 15369 }, --Bow of Taut Sinew
	{ itemID = 21470, groupID = 1, refLootEntry = 15369 }, --Cloak of the Savior
	{ itemID = 21479, groupID = 1, refLootEntry = 15369 }, --Gauntlets of the Immovable
	{ itemID = 21484, groupID = 1, refLootEntry = 15369 }, --Helm of Regrowth
	{ itemID = 21483, groupID = 1, refLootEntry = 15369 }, --Ring of the Desert Winds
	{ itemID = 21480, groupID = 1, refLootEntry = 15369 }, --Scaled Silithid Gauntlets
	{ itemID = 21466, groupID = 1, refLootEntry = 15369 }, --Stinger of Ayamiss
	{ itemID = 1506038, groupID = 4, refLootEntry = 15369 }, --Band of Masterful Technique
	{ itemID = 1506035, groupID = 4, refLootEntry = 15369 }, --Band of the Faithful Zealot
	{ itemID = 21408, groupID = 4, refLootEntry = 15369 }, --Band of Unending Life
	{ itemID = 21414, groupID = 4, refLootEntry = 15369 }, --Band of Vaulted Secrets
	{ itemID = 21405, groupID = 4, refLootEntry = 15369 }, --Band of Veiled Shadows
	{ itemID = 1506029, groupID = 4, refLootEntry = 15369 }, --Loop of Endless Machinations
	{ itemID = 1506047, groupID = 4, refLootEntry = 15369 }, --Loop of Expansive Research
	{ itemID = 21396, groupID = 4, refLootEntry = 15369 }, --Ring of Eternal Justice
	{ itemID = 21411, groupID = 4, refLootEntry = 15369 }, --Ring of Infinite Wisdom
	{ itemID = 1506041, groupID = 4, refLootEntry = 15369 }, --Ring of Martial Prowess
	{ itemID = 21399, groupID = 4, refLootEntry = 15369 }, --Ring of the Gathering Storm
	{ itemID = 21417, groupID = 4, refLootEntry = 15369 }, --Ring of Unspoken Names
	{ itemID = 1506032, groupID = 4, refLootEntry = 15369 }, --Signet of Ferocious Vigor
	{ itemID = 1506030, groupID = 4, refLootEntry = 15369 }, --Signet of Roaring Earth
	{ itemID = 21402, groupID = 4, refLootEntry = 15369 }, --Signet of the Unseen Path
	{ itemID = 1506044, groupID = 4, refLootEntry = 15369 }, --Signet of Unrivaled Rage
	{ itemID = 21393, groupID = 4, refLootEntry = 15369 }, --Signet of Unyielding Strength
	{ itemID = 21485, groupID = 1, refLootEntry = 15370 }, --Buru's Skull Fragment
	{ itemID = 21474, groupID = 1, refLootEntry = 15370 }, --Chitinous Shoulderguards
	{ itemID = 21488, groupID = 1, refLootEntry = 15370 }, --Fetish of Chitinous Spikes
	{ itemID = 21486, groupID = 1, refLootEntry = 15370 }, --Gloves of the Swarm
	{ itemID = 21489, groupID = 1, refLootEntry = 15370 }, --Quicksand Waders
	{ itemID = 21491, groupID = 1, refLootEntry = 15370 }, --Scaled Bracers of the Gorger
	{ itemID = 21490, groupID = 1, refLootEntry = 15370 }, --Slime Kickers
	{ itemID = 21487, groupID = 1, refLootEntry = 15370 }, --Slimy Scaled Gauntlets
	{ itemID = 21455, groupID = 1, refLootEntry = 15370 }, --Southwind Helm
	{ itemID = 1506038, groupID = 4, refLootEntry = 15370 }, --Band of Masterful Technique
	{ itemID = 1506035, groupID = 4, refLootEntry = 15370 }, --Band of the Faithful Zealot
	{ itemID = 21408, groupID = 4, refLootEntry = 15370 }, --Band of Unending Life
	{ itemID = 21414, groupID = 4, refLootEntry = 15370 }, --Band of Vaulted Secrets
	{ itemID = 21405, groupID = 4, refLootEntry = 15370 }, --Band of Veiled Shadows
	{ itemID = 1506029, groupID = 4, refLootEntry = 15370 }, --Loop of Endless Machinations
	{ itemID = 1506047, groupID = 4, refLootEntry = 15370 }, --Loop of Expansive Research
	{ itemID = 21396, groupID = 4, refLootEntry = 15370 }, --Ring of Eternal Justice
	{ itemID = 21411, groupID = 4, refLootEntry = 15370 }, --Ring of Infinite Wisdom
	{ itemID = 1506041, groupID = 4, refLootEntry = 15370 }, --Ring of Martial Prowess
	{ itemID = 21399, groupID = 4, refLootEntry = 15370 }, --Ring of the Gathering Storm
	{ itemID = 21417, groupID = 4, refLootEntry = 15370 }, --Ring of Unspoken Names
	{ itemID = 1506032, groupID = 4, refLootEntry = 15370 }, --Signet of Ferocious Vigor
	{ itemID = 1506030, groupID = 4, refLootEntry = 15370 }, --Signet of Roaring Earth
	{ itemID = 21402, groupID = 4, refLootEntry = 15370 }, --Signet of the Unseen Path
	{ itemID = 1506044, groupID = 4, refLootEntry = 15370 }, --Signet of Unrivaled Rage
	{ itemID = 21393, groupID = 4, refLootEntry = 15370 }, --Signet of Unyielding Strength
	{ itemID = 21497, groupID = 1, refLootEntry = 15341 }, --Boots of the Qiraji General
	{ itemID = 21493, groupID = 1, refLootEntry = 15341 }, --Boots of the Vanguard
	{ itemID = 21496, groupID = 1, refLootEntry = 15341 }, --Bracers of Qiraji Command
	{ itemID = 21806, groupID = 1, refLootEntry = 15341 }, --Gavel of Qiraji Authority
	{ itemID = 21495, groupID = 1, refLootEntry = 15341 }, --Legplates of the Qiraji Command
	{ itemID = 21492, groupID = 1, refLootEntry = 15341 }, --Manslayer of the Qiraji
	{ itemID = 21477, groupID = 1, refLootEntry = 15341 }, --Ring of Fury
	{ itemID = 21494, groupID = 1, refLootEntry = 15341 }, --Southwind's Grasp
	{ itemID = 21397, groupID = 3, refLootEntry = 15341 }, --Cape of Eternal Justice
	{ itemID = 1506033, groupID = 3, refLootEntry = 15341 }, --Cape of Ferocious Vigor
	{ itemID = 1506042, groupID = 3, refLootEntry = 15341 }, --Cloak of Martial Prowess
	{ itemID = 21400, groupID = 3, refLootEntry = 15341 }, --Cloak of the Gathering Storm
	{ itemID = 21403, groupID = 3, refLootEntry = 15341 }, --Cloak of the Unseen Path
	{ itemID = 21409, groupID = 3, refLootEntry = 15341 }, --Cloak of Unending Life
	{ itemID = 1506045, groupID = 3, refLootEntry = 15341 }, --Cloak of Unrivaled Rage
	{ itemID = 21406, groupID = 3, refLootEntry = 15341 }, --Cloak of Veiled Shadows
	{ itemID = 1506048, groupID = 3, refLootEntry = 15341 }, --Drape of Expansive Research
	{ itemID = 1506039, groupID = 3, refLootEntry = 15341 }, --Drape of Masterful Technique
	{ itemID = 1506031, groupID = 3, refLootEntry = 15341 }, --Drape of Roaring Earth
	{ itemID = 21394, groupID = 3, refLootEntry = 15341 }, --Drape of Unyielding Strength
	{ itemID = 21415, groupID = 3, refLootEntry = 15341 }, --Drape of Vaulted Secrets
	{ itemID = 1506028, groupID = 3, refLootEntry = 15341 }, --Shroud of Endless Machinations
	{ itemID = 21412, groupID = 3, refLootEntry = 15341 }, --Shroud of Infinite Wisdom
	{ itemID = 1506036, groupID = 3, refLootEntry = 15341 }, --Shroud of the Faithful Zealot
	{ itemID = 21418, groupID = 3, refLootEntry = 15341 }, --Shroud of Unspoken Names
	{ itemID = 21500, groupID = 1, refLootEntry = 15348 }, --Belt of the Inquisition
	{ itemID = 21503, groupID = 1, refLootEntry = 15348 }, --Belt of the Sand Reaver
	{ itemID = 21809, groupID = 1, refLootEntry = 15348 }, --Fury of the Forgotten Swarm
	{ itemID = 21498, groupID = 1, refLootEntry = 15348 }, --Qiraji Sacrificial Dagger
	{ itemID = 21502, groupID = 1, refLootEntry = 15348 }, --Sand Reaver Wristguards
	{ itemID = 21501, groupID = 1, refLootEntry = 15348 }, --Toughened Silithid Hide Gloves
	{ itemID = 21810, groupID = 1, refLootEntry = 15348 }, --Treads of the Wandering Nomad
	{ itemID = 21499, groupID = 1, refLootEntry = 15348 }, --Vestments of the Shifting Sands
	{ itemID = 21397, groupID = 4, refLootEntry = 15348 }, --Cape of Eternal Justice
	{ itemID = 1506033, groupID = 4, refLootEntry = 15348 }, --Cape of Ferocious Vigor
	{ itemID = 1506042, groupID = 4, refLootEntry = 15348 }, --Cloak of Martial Prowess
	{ itemID = 21400, groupID = 4, refLootEntry = 15348 }, --Cloak of the Gathering Storm
	{ itemID = 21403, groupID = 4, refLootEntry = 15348 }, --Cloak of the Unseen Path
	{ itemID = 21409, groupID = 4, refLootEntry = 15348 }, --Cloak of Unending Life
	{ itemID = 1506045, groupID = 4, refLootEntry = 15348 }, --Cloak of Unrivaled Rage
	{ itemID = 21406, groupID = 4, refLootEntry = 15348 }, --Cloak of Veiled Shadows
	{ itemID = 1506048, groupID = 4, refLootEntry = 15348 }, --Drape of Expansive Research
	{ itemID = 1506039, groupID = 4, refLootEntry = 15348 }, --Drape of Masterful Technique
	{ itemID = 1506031, groupID = 4, refLootEntry = 15348 }, --Drape of Roaring Earth
	{ itemID = 21394, groupID = 4, refLootEntry = 15348 }, --Drape of Unyielding Strength
	{ itemID = 21415, groupID = 4, refLootEntry = 15348 }, --Drape of Vaulted Secrets
	{ itemID = 1506028, groupID = 4, refLootEntry = 15348 }, --Shroud of Endless Machinations
	{ itemID = 21412, groupID = 4, refLootEntry = 15348 }, --Shroud of Infinite Wisdom
	{ itemID = 1506036, groupID = 4, refLootEntry = 15348 }, --Shroud of the Faithful Zealot
	{ itemID = 21418, groupID = 4, refLootEntry = 15348 }, --Shroud of Unspoken Names
	{ itemID = 21472, groupID = 1, refLootEntry = 15340 }, --Dustwind Turban
	{ itemID = 21473, groupID = 1, refLootEntry = 15340 }, --Eye of Moam
	{ itemID = 21469, groupID = 1, refLootEntry = 15340 }, --Gauntlets of Southwind
	{ itemID = 21479, groupID = 1, refLootEntry = 15340 }, --Gauntlets of the Immovable
	{ itemID = 21475, groupID = 1, refLootEntry = 15340 }, --Legplates of the Destroyer
	{ itemID = 21468, groupID = 1, refLootEntry = 15340 }, --Mantle of Maz'Nadir
	{ itemID = 21476, groupID = 1, refLootEntry = 15340 }, --Obsidian Scaled Leggings
	{ itemID = 21471, groupID = 1, refLootEntry = 15340 }, --Talon of Furious Concentration
	{ itemID = 21467, groupID = 1, refLootEntry = 15340 }, --Thick Silithid Chestguard
	{ itemID = 1506049, groupID = 4, refLootEntry = 15340 }, --Bayadere of Expansive Research
	{ itemID = 1506023, groupID = 4, refLootEntry = 15340 }, --Bayadere of Infinite Wisdom
	{ itemID = 1506026, groupID = 4, refLootEntry = 15340 }, --Bayadere of Unspoken Names
	{ itemID = 1506021, groupID = 4, refLootEntry = 15340 }, --Charm of Vaulted Secrets
	{ itemID = 1506027, groupID = 4, refLootEntry = 15340 }, --Choker of Endless Machinations
	{ itemID = 1506034, groupID = 4, refLootEntry = 15340 }, --Choker of Ferocious Vigor
	{ itemID = 1506018, groupID = 4, refLootEntry = 15340 }, --Choker of the Unseen Path
	{ itemID = 1506046, groupID = 4, refLootEntry = 15340 }, --Collar of Unrivaled Rage
	{ itemID = 1506025, groupID = 4, refLootEntry = 15340 }, --Collar of Unyielding Strength
	{ itemID = 1506043, groupID = 4, refLootEntry = 15340 }, --Lariat of Martial Prowess
	{ itemID = 1506022, groupID = 4, refLootEntry = 15340 }, --Lariat of Veiled Shadows
	{ itemID = 1506040, groupID = 4, refLootEntry = 15340 }, --Locket of Masterful Technique
	{ itemID = 1506037, groupID = 4, refLootEntry = 15340 }, --Locket of the Faithful Zealot
	{ itemID = 1506017, groupID = 4, refLootEntry = 15340 }, --Locket of Unending Life
	{ itemID = 1506020, groupID = 4, refLootEntry = 15340 }, --Medallion of Eternal Justice
	{ itemID = 1506024, groupID = 4, refLootEntry = 15340 }, --Necklace of the Gathering Storm
	{ itemID = 1506019, groupID = 4, refLootEntry = 15340 }, --Pendant of Roaring Earth
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
	{ itemID = 1506054, groupID = 2, refLootEntry = 15339 }, --Sword of the Ruins
	{ itemID = 1506049, groupID = 4, refLootEntry = 15339 }, --Bayadere of Expansive Research
	{ itemID = 1506023, groupID = 4, refLootEntry = 15339 }, --Bayadere of Infinite Wisdom
	{ itemID = 1506026, groupID = 4, refLootEntry = 15339 }, --Bayadere of Unspoken Names
	{ itemID = 21395, groupID = 4, refLootEntry = 15339 }, --Blade of Eternal Justice
	{ itemID = 21413, groupID = 4, refLootEntry = 15339 }, --Blade of Vaulted Secrets
	{ itemID = 1506021, groupID = 4, refLootEntry = 15339 }, --Charm of Vaulted Secrets
	{ itemID = 1506027, groupID = 4, refLootEntry = 15339 }, --Choker of Endless Machinations
	{ itemID = 1506034, groupID = 4, refLootEntry = 15339 }, --Choker of Ferocious Vigor
	{ itemID = 1506018, groupID = 4, refLootEntry = 15339 }, --Choker of the Unseen Path
	{ itemID = 1506046, groupID = 4, refLootEntry = 15339 }, --Collar of Unrivaled Rage
	{ itemID = 1506025, groupID = 4, refLootEntry = 15339 }, --Collar of Unyielding Strength
	{ itemID = 21404, groupID = 4, refLootEntry = 15339 }, --Dagger of Veiled Shadows
	{ itemID = 21410, groupID = 4, refLootEntry = 15339 }, --Gavel of Infinite Wisdom
	{ itemID = 21398, groupID = 4, refLootEntry = 15339 }, --Hammer of the Gathering Storm
	{ itemID = 21416, groupID = 4, refLootEntry = 15339 }, --Kris of Unspoken Names
	{ itemID = 1506043, groupID = 4, refLootEntry = 15339 }, --Lariat of Martial Prowess
	{ itemID = 1506022, groupID = 4, refLootEntry = 15339 }, --Lariat of Veiled Shadows
	{ itemID = 1506040, groupID = 4, refLootEntry = 15339 }, --Locket of Masterful Technique
	{ itemID = 1506037, groupID = 4, refLootEntry = 15339 }, --Locket of the Faithful Zealot
	{ itemID = 1506017, groupID = 4, refLootEntry = 15339 }, --Locket of Unending Life
	{ itemID = 21407, groupID = 4, refLootEntry = 15339 }, --Mace of Unending Life
	{ itemID = 1506020, groupID = 4, refLootEntry = 15339 }, --Medallion of Eternal Justice
	{ itemID = 1506024, groupID = 4, refLootEntry = 15339 }, --Necklace of the Gathering Storm
	{ itemID = 1506019, groupID = 4, refLootEntry = 15339 }, --Pendant of Roaring Earth
	{ itemID = 21401, groupID = 4, refLootEntry = 15339 }, --Scythe of the Unseen Path
	{ itemID = 21392, groupID = 4, refLootEntry = 15339 }, --Sickle of Unyielding Strength
	{ itemID = 29922, groupID = 1, refLootEntry = 19514 }, --Band of Al'ar
	{ itemID = 29921, groupID = 1, refLootEntry = 19514 }, --Fire Crest Breastplate
	{ itemID = 29918, groupID = 1, refLootEntry = 19514 }, --Mindstorm Wristbands
	{ itemID = 29920, groupID = 1, refLootEntry = 19514 }, --Phoenix-Ring of Rebirth
	{ itemID = 12153, groupID = 1, refLootEntry = 19514 }, --Phoenixfire Drape
	{ itemID = 29923, groupID = 1, refLootEntry = 19514 }, --Talisman of the Sun King
	{ itemID = 30447, groupID = 1, refLootEntry = 19514 }, --Tome of Fiery Redemption
	{ itemID = 29949, groupID = 2, refLootEntry = 19514 }, --Arcanite Steam-Pistol
	{ itemID = 12168, groupID = 2, refLootEntry = 19514 }, --Ashen Talon
	{ itemID = 29948, groupID = 2, refLootEntry = 19514 }, --Claw of the Phoenix
	{ itemID = 12155, groupID = 2, refLootEntry = 19514 }, --Girdle of the Eternal Blaze
	{ itemID = 29947, groupID = 2, refLootEntry = 19514 }, --Gloves of the Searing Grip
	{ itemID = 29924, groupID = 2, refLootEntry = 19514 }, --Netherbane
	{ itemID = 29925, groupID = 2, refLootEntry = 19514 }, --Phoenix-Wing Cloak
	{ itemID = 30448, groupID = 2, refLootEntry = 19514 }, --Talon of Al'ar
	{ itemID = 32944, groupID = 2, refLootEntry = 19514 }, --Talon of the Phoenix
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
	{ itemID = 29986, groupID = 2, refLootEntry = 19516 }, --Cowl of the Grand Engineer
	{ itemID = 30619, groupID = 2, refLootEntry = 19516 }, --Fel Reaver's Piston
	{ itemID = 29983, groupID = 2, refLootEntry = 19516 }, --Fel-Steel Warhelm
	{ itemID = 29984, groupID = 2, refLootEntry = 19516 }, --Girdle of Zaetar
	{ itemID = 29985, groupID = 2, refLootEntry = 19516 }, --Void Reaver Greaves
	{ itemID = 12150, groupID = 2, refLootEntry = 19516 }, --Voidforged Band
	{ itemID = 30450, groupID = 2, refLootEntry = 19516 }, --Warp-Spring Coil
	{ itemID = 32515, groupID = 2, refLootEntry = 19516 }, --Wristguards of Determination
	{ itemID = 30888, groupID = 1, refLootEntry = 17808 }, --Anetheron's Noose
	{ itemID = 30885, groupID = 1, refLootEntry = 17808 }, --Archbishop's Slippers
	{ itemID = 30886, groupID = 1, refLootEntry = 17808 }, --Enchanted Leather Sandals
	{ itemID = 30878, groupID = 1, refLootEntry = 17808 }, --Glimmering Steel Mantle
	{ itemID = 30887, groupID = 1, refLootEntry = 17808 }, --Golden Links of Restoration
	{ itemID = 30884, groupID = 1, refLootEntry = 17808 }, --Hatefury Mantle
	{ itemID = 30916, groupID = 1, refLootEntry = 17808 }, --Leggings of Channeled Elements
	{ itemID = 30882, groupID = 2, refLootEntry = 17808 }, --Bastion of Light
	{ itemID = 30881, groupID = 2, refLootEntry = 17808 }, --Blade of Infamy
	{ itemID = 30879, groupID = 2, refLootEntry = 17808 }, --Don Alejandro's Money Belt
	{ itemID = 12307, groupID = 2, refLootEntry = 17808 }, --Dreadforge Pauldrons
	{ itemID = 12306, groupID = 2, refLootEntry = 17808 }, --Mantle of Glimmering Dreams
	{ itemID = 30883, groupID = 2, refLootEntry = 17808 }, --Pillar of Ferocity
	{ itemID = 30880, groupID = 2, refLootEntry = 17808 }, --Quickstrider Moccasins
	{ itemID = 30874, groupID = 2, refLootEntry = 17808 }, --The Unbreakable Will
	{ itemID = 30919, groupID = 2, refLootEntry = 17808 }, --Valestalker Girdle
	{ itemID = 30909, groupID = 3, refLootEntry = 17968 }, --Antonidas's Aegis of Rapt Concentration
	{ itemID = 30908, groupID = 3, refLootEntry = 17968 }, --Apostle of Argus
	{ itemID = 30912, groupID = 3, refLootEntry = 17968 }, --Leggings of Eternity
	{ itemID = 30913, groupID = 3, refLootEntry = 17968 }, --Robes of Rhonin
	{ itemID = 30904, groupID = 3, refLootEntry = 17968 }, --Savior's Grasp
	{ itemID = 30911, groupID = 3, refLootEntry = 17968 }, --Scepter of Purification
	{ itemID = 30910, groupID = 3, refLootEntry = 17968 }, --Tempest of Chaos
	{ itemID = 30906, groupID = 4, refLootEntry = 17968 }, --Bristleblitz Striker
	{ itemID = 30902, groupID = 4, refLootEntry = 17968 }, --Cataclysm's Edge
	{ itemID = 30903, groupID = 4, refLootEntry = 17968 }, --Legguards of Endless Rage
	{ itemID = 30907, groupID = 4, refLootEntry = 17968 }, --Mail of Fevered Pursuit
	{ itemID = 30905, groupID = 4, refLootEntry = 17968 }, --Midnight Chestguard
	{ itemID = 12386, groupID = 4, refLootEntry = 17968 }, --Ring of the Stormborn
	{ itemID = 12387, groupID = 4, refLootEntry = 17968 }, --Signet of Shattered Valor
	{ itemID = 12313, groupID = 4, refLootEntry = 17968 }, --The Defiler's Cudgel
	{ itemID = 12312, groupID = 4, refLootEntry = 17968 }, --Worldbreaker’s Edge
	{ itemID = 30892, groupID = 2, refLootEntry = 17842 }, --Beast-tamer's Shoulders
	{ itemID = 30901, groupID = 2, refLootEntry = 17842 }, --Boundless Agony
	{ itemID = 30899, groupID = 2, refLootEntry = 17842 }, --Don Rodrigo's Poncho
	{ itemID = 30897, groupID = 2, refLootEntry = 17842 }, --Girdle of Hope
	{ itemID = 30896, groupID = 2, refLootEntry = 17842 }, --Glory of the Defender
	{ itemID = 12308, groupID = 2, refLootEntry = 17842 }, --Infernal Stalker’s Hauberk
	{ itemID = 12309, groupID = 2, refLootEntry = 17842 }, --Plates of Eternal Fury
	{ itemID = 30917, groupID = 2, refLootEntry = 17842 }, --Razorfury Mantle
	{ itemID = 15834, groupID = 1, refLootEntry = 92179 }, --Aetherflux Shroud
	{ itemID = 15899, groupID = 1, refLootEntry = 92179 }, --Amulet of Futures Past
	{ itemID = 15839, groupID = 1, refLootEntry = 92179 }, --Charm of the Chronomender
	{ itemID = 15831, groupID = 1, refLootEntry = 92179 }, --Girdle of Falling Sand
	{ itemID = 15041, groupID = 1, refLootEntry = 92179 }, --Key of Time
	{ itemID = 15835, groupID = 1, refLootEntry = 92179 }, --Time Reaver's Gown
	{ itemID = 15840, groupID = 1, refLootEntry = 92179 }, --Timewaker's Treads
	{ itemID = 15896, groupID = 2, refLootEntry = 92179 }, --Cloak of the Final Hour
	{ itemID = 18764, groupID = 2, refLootEntry = 92179 }, --Echo of Eons
	{ itemID = 15828, groupID = 2, refLootEntry = 92179 }, --Final Countdown Bands
	{ itemID = 15838, groupID = 2, refLootEntry = 92179 }, --Flickering Amulet
	{ itemID = 15898, groupID = 2, refLootEntry = 92179 }, --Hourglass Casing
	{ itemID = 15830, groupID = 2, refLootEntry = 92179 }, --Infinite Scale Talisman
	{ itemID = 12388, groupID = 2, refLootEntry = 92179 }, --Pendant of Temporal Flux
	{ itemID = 15836, groupID = 2, refLootEntry = 92179 }, --Pendant of the Evil Twin
	{ itemID = 12389, groupID = 2, refLootEntry = 92179 }, --Pendant of Timeless Might
	{ itemID = 30895, groupID = 2, refLootEntry = 17888 }, --Angelista's Sash
	{ itemID = 30915, groupID = 2, refLootEntry = 17888 }, --Belt of Seething Fury
	{ itemID = 30894, groupID = 2, refLootEntry = 17888 }, --Blue Suede Shoes
	{ itemID = 30900, groupID = 2, refLootEntry = 17888 }, --Bow-stitched Leggings
	{ itemID = 12310, groupID = 2, refLootEntry = 17888 }, --Felstrider Boots
	{ itemID = 30918, groupID = 2, refLootEntry = 17888 }, --Hammer of Atonement
	{ itemID = 30889, groupID = 2, refLootEntry = 17888 }, --Kaz'rogal's Hardened Heart
	{ itemID = 30898, groupID = 2, refLootEntry = 17888 }, --Shady Dealer's Pantaloons
	{ itemID = 30893, groupID = 2, refLootEntry = 17888 }, --Sun-touched Chain Leggings
	{ itemID = 30914, groupID = 1, refLootEntry = 17767 }, --Belt of the Crescent Moon
	{ itemID = 30862, groupID = 1, refLootEntry = 17767 }, --Blessed Adamantite Bracers
	{ itemID = 30871, groupID = 1, refLootEntry = 17767 }, --Bracers of Martyrdom
	{ itemID = 30872, groupID = 1, refLootEntry = 17767 }, --Chronicle of Dark Secrets
	{ itemID = 30870, groupID = 1, refLootEntry = 17767 }, --Cuffs of Devastation
	{ itemID = 30869, groupID = 1, refLootEntry = 17767 }, --Howling Wind Bracers
	{ itemID = 30868, groupID = 1, refLootEntry = 17767 }, --Rejuvenating Bracers
	{ itemID = 30891, groupID = 2, refLootEntry = 17767 }, --Black Featherlight Boots
	{ itemID = 30866, groupID = 2, refLootEntry = 17767 }, --Blood-stained Pauldrons
	{ itemID = 12311, groupID = 2, refLootEntry = 17767 }, --Boneclad Girdle
	{ itemID = 30864, groupID = 2, refLootEntry = 17767 }, --Bracers of the Pathfinder
	{ itemID = 30863, groupID = 2, refLootEntry = 17767 }, --Deadly Cuffs
	{ itemID = 30861, groupID = 2, refLootEntry = 17767 }, --Furious Shackles
	{ itemID = 30873, groupID = 2, refLootEntry = 17767 }, --Stillwater Boots
	{ itemID = 30865, groupID = 2, refLootEntry = 17767 }, --Tracker's Blade
	{ itemID = 34177, groupID = 2, refLootEntry = 24882 }, --Clutch of Demise
	{ itemID = 34178, groupID = 2, refLootEntry = 24882 }, --Collar of the Pit Lord
	{ itemID = 34180, groupID = 2, refLootEntry = 24882 }, --Felfury Legplates
	{ itemID = 34179, groupID = 2, refLootEntry = 24882 }, --Heart of the Pit
	{ itemID = 34181, groupID = 2, refLootEntry = 24882 }, --Leggings of Calamity
	{ itemID = 34176, groupID = 2, refLootEntry = 24882 }, --Reign of Misery
	{ itemID = 11523, groupID = 2, refLootEntry = 24882 }, --Trophy Scar Band
	{ itemID = 34381, groupID = 99, refLootEntry = 24882 }, --Felstrength Legplates
	{ itemID = 34352, groupID = 2, refLootEntry = 25038 }, --Borderland Fortress Grips
	{ itemID = 34184, groupID = 2, refLootEntry = 25038 }, --Brooch of the Highborne
	{ itemID = 34186, groupID = 2, refLootEntry = 25038 }, --Chain Links of the Tumultuous Storm
	{ itemID = 34182, groupID = 2, refLootEntry = 25038 }, --Grand Magister's Staff of Torrents
	{ itemID = 34188, groupID = 2, refLootEntry = 25038 }, --Leggings of the Immortal Night
	{ itemID = 34185, groupID = 2, refLootEntry = 25038 }, --Sword Breaker's Bulwark
	{ itemID = 34383, groupID = 99, refLootEntry = 25038 }, --Kilt of Spiritual Reconstruction
	{ itemID = 34385, groupID = 99, refLootEntry = 25038 }, --Leggings of the Immortal Beast
	{ itemID = 34210, groupID = 1, refLootEntry = 25166 }, --Amice of the Convoker
	{ itemID = 34204, groupID = 1, refLootEntry = 25166 }, --Amulet of Unfettered Magics
	{ itemID = 34199, groupID = 1, refLootEntry = 25166 }, --Archon's Gavel
	{ itemID = 34206, groupID = 1, refLootEntry = 25166 }, --Book of Highborne Hymns
	{ itemID = 34208, groupID = 1, refLootEntry = 25166 }, --Equilibrium Epaulets
	{ itemID = 34202, groupID = 1, refLootEntry = 25166 }, --Shawl of Wonderment
	{ itemID = 34205, groupID = 1, refLootEntry = 25166 }, --Shroud of Redeemed Souls
	{ itemID = 34209, groupID = 1, refLootEntry = 25166 }, --Spaulders of Reclamation
	{ itemID = 34193, groupID = 1, refLootEntry = 25166 }, --Spaulders of the Thalassian Savior
	{ itemID = 34189, groupID = 2, refLootEntry = 25166 }, --Band of Ruinous Delight
	{ itemID = 34190, groupID = 2, refLootEntry = 25166 }, --Crimson Paragon's Cover
	{ itemID = 34196, groupID = 2, refLootEntry = 25166 }, --Golden Bow of Quel'Thalas
	{ itemID = 34203, groupID = 2, refLootEntry = 25166 }, --Grip of Mannoroth
	{ itemID = 34194, groupID = 2, refLootEntry = 25166 }, --Mantle of the Golden Forest
	{ itemID = 34192, groupID = 2, refLootEntry = 25166 }, --Pauldrons of Perseverance
	{ itemID = 34197, groupID = 2, refLootEntry = 25166 }, --Shiv of Exsanguination
	{ itemID = 34195, groupID = 2, refLootEntry = 25166 }, --Shoulderpads of Vehemence
	{ itemID = 34198, groupID = 2, refLootEntry = 25166 }, --Stanchion of Primal Instinct
	{ itemID = 34392, groupID = 99, refLootEntry = 25166 }, --Demontooth Shoulderpads
	{ itemID = 34390, groupID = 99, refLootEntry = 25166 }, --Erupting Epaulets
	{ itemID = 34388, groupID = 99, refLootEntry = 25166 }, --Pauldrons of Berserking
	{ itemID = 34393, groupID = 99, refLootEntry = 25166 }, --Shoulderpads of Knowledge's Pursuit
	{ itemID = 34391, groupID = 99, refLootEntry = 25166 }, --Spaulders of Devastation
	{ itemID = 34389, groupID = 99, refLootEntry = 25166 }, --Spaulders of the Thalassian Defender
	{ itemID = 35282, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Dominance
	{ itemID = 35283, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Salvation
	{ itemID = 35284, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Band of Triumph
	{ itemID = 35290, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Conquest
	{ itemID = 35291, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Salvation
	{ itemID = 35292, groupID = 2, refLootEntry = 25837 }, --Sin'dorei Pendant of Triumph
	{ itemID = 34247, groupID = 2, refLootEntry = 25315 }, --Apolyon, the Soul-Render
	{ itemID = 34329, groupID = 2, refLootEntry = 25315 }, --Crux of the Apocalypse
	{ itemID = 34337, groupID = 2, refLootEntry = 25315 }, --Golden Staff of the Sin'dorei
	{ itemID = 34335, groupID = 2, refLootEntry = 25315 }, --Hammer of Sanctification
	{ itemID = 34331, groupID = 2, refLootEntry = 25315 }, --Hand of the Deceiver
	{ itemID = 34336, groupID = 2, refLootEntry = 25315 }, --Sunflare
	{ itemID = 34245, groupID = 3, refLootEntry = 25315 }, --Cover of Ursol the Wise
	{ itemID = 34332, groupID = 3, refLootEntry = 25315 }, --Cowl of Gul'dan
	{ itemID = 34339, groupID = 3, refLootEntry = 25315 }, --Cowl of Light's Purity
	{ itemID = 34340, groupID = 3, refLootEntry = 25315 }, --Dark Conjuror's Collar
	{ itemID = 34344, groupID = 3, refLootEntry = 25315 }, --Handguards of Defiled Worlds
	{ itemID = 34342, groupID = 3, refLootEntry = 25315 }, --Handguards of the Dawn
	{ itemID = 34243, groupID = 3, refLootEntry = 25315 }, --Helm of Burning Righteousness
	{ itemID = 34402, groupID = 3, refLootEntry = 25315 }, --Shroud of Chieftain Ner'zhul
	{ itemID = 34242, groupID = 3, refLootEntry = 25315 }, --Tattered Cape of Antonidas
	{ itemID = 34341, groupID = 4, refLootEntry = 25315 }, --Borderland Paingrips
	{ itemID = 34241, groupID = 4, refLootEntry = 25315 }, --Cloak of Unforgivable Sin
	{ itemID = 34333, groupID = 4, refLootEntry = 25315 }, --Coif of Alleria
	{ itemID = 34345, groupID = 4, refLootEntry = 25315 }, --Crown of Anasterian
	{ itemID = 34244, groupID = 4, refLootEntry = 25315 }, --Duplicitous Guise
	{ itemID = 34343, groupID = 4, refLootEntry = 25315 }, --Thalassian Ranger Gauntlets
	{ itemID = 34247, groupID = 5, refLootEntry = 25315 }, --Apolyon, the Soul-Render
	{ itemID = 34341, groupID = 5, refLootEntry = 25315 }, --Borderland Paingrips
	{ itemID = 34241, groupID = 5, refLootEntry = 25315 }, --Cloak of Unforgivable Sin
	{ itemID = 34333, groupID = 5, refLootEntry = 25315 }, --Coif of Alleria
	{ itemID = 34245, groupID = 5, refLootEntry = 25315 }, --Cover of Ursol the Wise
	{ itemID = 34332, groupID = 5, refLootEntry = 25315 }, --Cowl of Gul'dan
	{ itemID = 34339, groupID = 5, refLootEntry = 25315 }, --Cowl of Light's Purity
	{ itemID = 34345, groupID = 5, refLootEntry = 25315 }, --Crown of Anasterian
	{ itemID = 34329, groupID = 5, refLootEntry = 25315 }, --Crux of the Apocalypse
	{ itemID = 34340, groupID = 5, refLootEntry = 25315 }, --Dark Conjuror's Collar
	{ itemID = 34244, groupID = 5, refLootEntry = 25315 }, --Duplicitous Guise
	{ itemID = 34337, groupID = 5, refLootEntry = 25315 }, --Golden Staff of the Sin'dorei
	{ itemID = 34335, groupID = 5, refLootEntry = 25315 }, --Hammer of Sanctification
	{ itemID = 34331, groupID = 5, refLootEntry = 25315 }, --Hand of the Deceiver
	{ itemID = 34344, groupID = 5, refLootEntry = 25315 }, --Handguards of Defiled Worlds
	{ itemID = 34342, groupID = 5, refLootEntry = 25315 }, --Handguards of the Dawn
	{ itemID = 34243, groupID = 5, refLootEntry = 25315 }, --Helm of Burning Righteousness
	{ itemID = 34402, groupID = 5, refLootEntry = 25315 }, --Shroud of Chieftain Ner'zhul
	{ itemID = 34336, groupID = 5, refLootEntry = 25315 }, --Sunflare
	{ itemID = 34242, groupID = 5, refLootEntry = 25315 }, --Tattered Cape of Antonidas
	{ itemID = 34343, groupID = 5, refLootEntry = 25315 }, --Thalassian Ranger Gauntlets
	{ itemID = 34403, groupID = 99, refLootEntry = 25315 }, --Cover of Ursoc the Mighty
	{ itemID = 34400, groupID = 99, refLootEntry = 25315 }, --Crown of Dath'Remar
	{ itemID = 34406, groupID = 99, refLootEntry = 25315 }, --Gloves of Tyri's Power
	{ itemID = 34405, groupID = 99, refLootEntry = 25315 }, --Helm of Arcane Purity
	{ itemID = 34401, groupID = 99, refLootEntry = 25315 }, --Helm of Uther's Resolve
	{ itemID = 34404, groupID = 99, refLootEntry = 25315 }, --Mask of the Fury Hunter
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
	{ itemID = 33214, groupID = 18, refLootEntry = 23574 }, --Akil'zon's Talonblade
	{ itemID = 33283, groupID = 18, refLootEntry = 23574 }, --Amani Punisher
	{ itemID = 33215, groupID = 18, refLootEntry = 23574 }, --Bloodstained Elven Battlevest
	{ itemID = 33281, groupID = 18, refLootEntry = 23574 }, --Brooch of Nature's Mercy
	{ itemID = 33216, groupID = 18, refLootEntry = 23574 }, --Chestguard of Hidden Purpose
	{ itemID = 33590, groupID = 18, refLootEntry = 23574 }, --Cloak of Fiends
	{ itemID = 33286, groupID = 18, refLootEntry = 23574 }, --Mojo-mender's Mask
	{ itemID = 33481, groupID = 18, refLootEntry = 23574 }, --Pauldrons of Stone Resolve
	{ itemID = 33591, groupID = 18, refLootEntry = 23574 }, --Shadowcaster's Drape
	{ itemID = 33293, groupID = 18, refLootEntry = 23574 }, --Signet of Ancient Magics
	{ itemID = 33500, groupID = 18, refLootEntry = 23574 }, --Signet of Eternal Life
	{ itemID = 33492, groupID = 18, refLootEntry = 23574 }, --Trollbane
	{ itemID = 12269, groupID = 18, refLootEntry = 23574 }, --Windcaller's Pauldrons
	{ itemID = 12268, groupID = 18, refLootEntry = 23574 }, --Windspeaker's Mantle
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
	{ itemID = 33533, groupID = 18, refLootEntry = 23577 }, --Avalanche Leggings
	{ itemID = 12272, groupID = 18, refLootEntry = 23577 }, --Claws of the Wildstalker
	{ itemID = 12305, groupID = 18, refLootEntry = 23577 }, --Gauntlets of the Primal Strike
	{ itemID = 33483, groupID = 18, refLootEntry = 23577 }, --Life-step Belt
	{ itemID = 33497, groupID = 18, refLootEntry = 23577 }, --Mana Attuned Band
	{ itemID = 33317, groupID = 18, refLootEntry = 23577 }, --Robe of Departed Spirits
	{ itemID = 33322, groupID = 18, refLootEntry = 23577 }, --Shimmer-pelt Vest
	{ itemID = 33300, groupID = 18, refLootEntry = 23577 }, --Shoulderpads of Dancing Blades
	{ itemID = 33979, groupID = 18, refLootEntry = 23577 }, --Sightless Head
	{ itemID = 33303, groupID = 18, refLootEntry = 23577 }, --Skullshatter Warboots
	{ itemID = 33299, groupID = 18, refLootEntry = 23577 }, --Spaulders of the Advocate
	{ itemID = 33465, groupID = 18, refLootEntry = 23577 }, --Staff of Primal Fury
	{ itemID = 33297, groupID = 18, refLootEntry = 23577 }, --The Savage's Choker
	{ itemID = 33493, groupID = 18, refLootEntry = 23577 }, --Umbral Shiv
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
	{ itemID = 33494, groupID = 18, refLootEntry = 24239 }, --Amani Divining Staff
	{ itemID = 33421, groupID = 18, refLootEntry = 24239 }, --Battleworn Tuskguard
	{ itemID = 33592, groupID = 18, refLootEntry = 24239 }, --Cloak of Ancient Rituals
	{ itemID = 33432, groupID = 18, refLootEntry = 24239 }, --Coif of the Jungle Stalker
	{ itemID = 33389, groupID = 18, refLootEntry = 24239 }, --Dagger of Bad Mojo
	{ itemID = 33446, groupID = 18, refLootEntry = 24239 }, --Girdle of Stromgarde's Hope
	{ itemID = 33388, groupID = 18, refLootEntry = 24239 }, --Heartless
	{ itemID = 33464, groupID = 18, refLootEntry = 24239 }, --Hex Lord's Voodoo Pauldrons
	{ itemID = 33453, groupID = 18, refLootEntry = 24239 }, --Hood of Hexing
	{ itemID = 33463, groupID = 18, refLootEntry = 24239 }, --Hood of the Third Eye
	{ itemID = 33298, groupID = 18, refLootEntry = 24239 }, --Prowler's Strikeblade
	{ itemID = 34029, groupID = 18, refLootEntry = 24239 }, --Tiny Voodoo Mask
	{ itemID = 33828, groupID = 18, refLootEntry = 24239 }, --Tome of Diabolic Remedy
	{ itemID = 38634, groupID = 18, refLootEntry = 24239 }, --Troll Dice
	{ itemID = 33332, groupID = 1, refLootEntry = 23578 }, --Enamelled Disc of Mojo
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
	{ itemID = 33328, groupID = 18, refLootEntry = 23578 }, --Arrow-fall Chestguard
	{ itemID = 12271, groupID = 18, refLootEntry = 23578 }, --Blazeforged Breastplate
	{ itemID = 33326, groupID = 18, refLootEntry = 23578 }, --Bulwark of the Amani Empire
	{ itemID = 33332, groupID = 18, refLootEntry = 23578 }, --Enamelled Disc of Mojo
	{ itemID = 12270, groupID = 18, refLootEntry = 23578 }, --Flamewoven Hauberk
	{ itemID = 33357, groupID = 18, refLootEntry = 23578 }, --Footpads of Madness
	{ itemID = 33356, groupID = 18, refLootEntry = 23578 }, --Helm of Natural Regeneration
	{ itemID = 33489, groupID = 18, refLootEntry = 23578 }, --Mantle of Ill Intent
	{ itemID = 33805, groupID = 18, refLootEntry = 23578 }, --Shadowhunter's Treads
	{ itemID = 33329, groupID = 18, refLootEntry = 23578 }, --Shadowtooth Trollskin Cuirass
	{ itemID = 33499, groupID = 18, refLootEntry = 23578 }, --Signet of the Last Defender
	{ itemID = 33490, groupID = 18, refLootEntry = 23578 }, --Staff of Dark Mending
	{ itemID = 33491, groupID = 18, refLootEntry = 23578 }, --Tuskbreaker
	{ itemID = 33354, groupID = 18, refLootEntry = 23578 }, --Wub's Cursed Hexblade
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
	{ itemID = 33211, groupID = 18, refLootEntry = 23576 }, --Bladeangel's Money Belt
	{ itemID = 33480, groupID = 18, refLootEntry = 23576 }, --Cord of Braided Troll Hair
	{ itemID = 33971, groupID = 18, refLootEntry = 23576 }, --Elunite Imbued Leggings
	{ itemID = 33640, groupID = 18, refLootEntry = 23576 }, --Fury
	{ itemID = 33285, groupID = 18, refLootEntry = 23576 }, --Fury of the Ursine
	{ itemID = 33191, groupID = 18, refLootEntry = 23576 }, --Jungle Stompers
	{ itemID = 33327, groupID = 18, refLootEntry = 23576 }, --Mask of Introspection
	{ itemID = 33206, groupID = 18, refLootEntry = 23576 }, --Pauldrons of Primal Fury
	{ itemID = 33495, groupID = 18, refLootEntry = 23576 }, --Rage
	{ itemID = 33203, groupID = 18, refLootEntry = 23576 }, --Robes of Heavenly Purpose
	{ itemID = 12267, groupID = 18, refLootEntry = 23576 }, --Savage Guardian Helm
	{ itemID = 12266, groupID = 18, refLootEntry = 23576 }, --Savage Spirit Mask
	{ itemID = 33496, groupID = 18, refLootEntry = 23576 }, --Signet of Primal Wrath
	{ itemID = 33498, groupID = 18, refLootEntry = 23576 }, --Signet of the Quiet Forest
	{ itemID = 33469, groupID = 1, refLootEntry = 23863 }, --Hauberk of the Empire's Champion
	{ itemID = 33829, groupID = 1, refLootEntry = 23863 }, --Hex Shrunken Head
	{ itemID = 33466, groupID = 1, refLootEntry = 23863 }, --Loop of Cursed Bones
	{ itemID = 33471, groupID = 1, refLootEntry = 23863 }, --Two-toed Sandals
	{ itemID = 33830, groupID = 2, refLootEntry = 23863 }, --Ancient Aqir Artifact
	{ itemID = 33831, groupID = 2, refLootEntry = 23863 }, --Berserker's Call
	{ itemID = 33473, groupID = 2, refLootEntry = 23863 }, --Chestguard of the Warlord
	{ itemID = 33479, groupID = 2, refLootEntry = 23863 }, --Grimgrin Faceguard
	{ itemID = 24537, groupID = 2, refLootEntry = 23863 }, --Waistband of Crushed Skulls
	{ itemID = 33474, groupID = 3, refLootEntry = 23863 }, --Ancient Amani Longbow
	{ itemID = 33467, groupID = 3, refLootEntry = 23863 }, --Blade of Twisted Visions
	{ itemID = 33476, groupID = 3, refLootEntry = 23863 }, --Cleaver of the Unforgiving
	{ itemID = 33468, groupID = 3, refLootEntry = 23863 }, --Dark Blessing
	{ itemID = 12265, groupID = 3, refLootEntry = 23863 }, --Hook of the Wild Hunt
	{ itemID = 33478, groupID = 3, refLootEntry = 23863 }, --Jin'rohk, The Great Apocalypse
	{ itemID = 34071, groupID = 3, refLootEntry = 23863 }, --Seething Hate
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
	{ itemID = 12391, groupID = 3, refLootEntry = 11382 }, --Battleweaver's Armor
	{ itemID = 12390, groupID = 3, refLootEntry = 11382 }, --Battleweaver's Spaulders
	{ itemID = 12473, groupID = 3, refLootEntry = 11382 }, --Battleweaver's Wristguards
	{ itemID = 19829, groupID = 3, refLootEntry = 11382 }, --Zandalar Augur's Belt
	{ itemID = 19830, groupID = 3, refLootEntry = 11382 }, --Zandalar Augur's Bracers
	{ itemID = 19828, groupID = 3, refLootEntry = 11382 }, --Zandalar Augur's Hauberk
	{ itemID = 19842, groupID = 3, refLootEntry = 11382 }, --Zandalar Confessor's Bindings
	{ itemID = 19841, groupID = 3, refLootEntry = 11382 }, --Zandalar Confessor's Mantle
	{ itemID = 19843, groupID = 3, refLootEntry = 11382 }, --Zandalar Confessor's Wraps
	{ itemID = 19849, groupID = 3, refLootEntry = 11382 }, --Zandalar Demoniac's Mantle
	{ itemID = 20033, groupID = 3, refLootEntry = 11382 }, --Zandalar Demoniac's Robe
	{ itemID = 19848, groupID = 3, refLootEntry = 11382 }, --Zandalar Demoniac's Wraps
	{ itemID = 19827, groupID = 3, refLootEntry = 11382 }, --Zandalar Freethinker's Armguards
	{ itemID = 19826, groupID = 3, refLootEntry = 11382 }, --Zandalar Freethinker's Belt
	{ itemID = 19825, groupID = 3, refLootEntry = 11382 }, --Zandalar Freethinker's Breastplate
	{ itemID = 19839, groupID = 3, refLootEntry = 11382 }, --Zandalar Haruspex's Belt
	{ itemID = 19840, groupID = 3, refLootEntry = 11382 }, --Zandalar Haruspex's Bracers
	{ itemID = 19838, groupID = 3, refLootEntry = 11382 }, --Zandalar Haruspex's Tunic
	{ itemID = 19845, groupID = 3, refLootEntry = 11382 }, --Zandalar Illusionist's Mantle
	{ itemID = 20034, groupID = 3, refLootEntry = 11382 }, --Zandalar Illusionist's Robe
	{ itemID = 19846, groupID = 3, refLootEntry = 11382 }, --Zandalar Illusionist's Wraps
	{ itemID = 19836, groupID = 3, refLootEntry = 11382 }, --Zandalar Madcap's Bracers
	{ itemID = 19835, groupID = 3, refLootEntry = 11382 }, --Zandalar Madcap's Mantle
	{ itemID = 19834, groupID = 3, refLootEntry = 11382 }, --Zandalar Madcap's Tunic
	{ itemID = 19832, groupID = 3, refLootEntry = 11382 }, --Zandalar Predator's Belt
	{ itemID = 19833, groupID = 3, refLootEntry = 11382 }, --Zandalar Predator's Bracers
	{ itemID = 19831, groupID = 3, refLootEntry = 11382 }, --Zandalar Predator's Mantle
	{ itemID = 19824, groupID = 3, refLootEntry = 11382 }, --Zandalar Vindicator's Armguards
	{ itemID = 19823, groupID = 3, refLootEntry = 11382 }, --Zandalar Vindicator's Belt
	{ itemID = 19822, groupID = 3, refLootEntry = 11382 }, --Zandalar Vindicator's Breastplate
	{ itemID = 12503, groupID = 1, refLootEntry = 15114 }, --Battleweaver's Necklace
	{ itemID = 19945, groupID = 1, refLootEntry = 15114 }, --Foror's Eyepatch
	{ itemID = 19947, groupID = 1, refLootEntry = 15114 }, --Nat Pagle's Broken Reel
	{ itemID = 19944, groupID = 1, refLootEntry = 15114 }, --Nat Pagle's Fish Terminator
	{ itemID = 19946, groupID = 1, refLootEntry = 15114 }, --Tigule's Harpoon
	{ itemID = 20263, groupID = 2, refLootEntry = 15114 }, --Gurubashi Helm
	{ itemID = 19908, groupID = 2, refLootEntry = 15114 }, --Sceptre of Smiting
	{ itemID = 20261, groupID = 2, refLootEntry = 15114 }, --Shadow Panther Hide Belt
	{ itemID = 20259, groupID = 2, refLootEntry = 15114 }, --Shadow Panther Hide Gloves
	{ itemID = 20258, groupID = 2, refLootEntry = 15114 }, --Zulian Ceremonial Staff
	{ itemID = 19921, groupID = 2, refLootEntry = 15114 }, --Zulian Hacker
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
	{ itemID = 12391, groupID = 3, refLootEntry = 14509 }, --Battleweaver's Armor
	{ itemID = 12390, groupID = 3, refLootEntry = 14509 }, --Battleweaver's Spaulders
	{ itemID = 12473, groupID = 3, refLootEntry = 14509 }, --Battleweaver's Wristguards
	{ itemID = 19829, groupID = 3, refLootEntry = 14509 }, --Zandalar Augur's Belt
	{ itemID = 19830, groupID = 3, refLootEntry = 14509 }, --Zandalar Augur's Bracers
	{ itemID = 19828, groupID = 3, refLootEntry = 14509 }, --Zandalar Augur's Hauberk
	{ itemID = 19842, groupID = 3, refLootEntry = 14509 }, --Zandalar Confessor's Bindings
	{ itemID = 19841, groupID = 3, refLootEntry = 14509 }, --Zandalar Confessor's Mantle
	{ itemID = 19843, groupID = 3, refLootEntry = 14509 }, --Zandalar Confessor's Wraps
	{ itemID = 19849, groupID = 3, refLootEntry = 14509 }, --Zandalar Demoniac's Mantle
	{ itemID = 20033, groupID = 3, refLootEntry = 14509 }, --Zandalar Demoniac's Robe
	{ itemID = 19848, groupID = 3, refLootEntry = 14509 }, --Zandalar Demoniac's Wraps
	{ itemID = 19827, groupID = 3, refLootEntry = 14509 }, --Zandalar Freethinker's Armguards
	{ itemID = 19826, groupID = 3, refLootEntry = 14509 }, --Zandalar Freethinker's Belt
	{ itemID = 19825, groupID = 3, refLootEntry = 14509 }, --Zandalar Freethinker's Breastplate
	{ itemID = 19839, groupID = 3, refLootEntry = 14509 }, --Zandalar Haruspex's Belt
	{ itemID = 19840, groupID = 3, refLootEntry = 14509 }, --Zandalar Haruspex's Bracers
	{ itemID = 19838, groupID = 3, refLootEntry = 14509 }, --Zandalar Haruspex's Tunic
	{ itemID = 19845, groupID = 3, refLootEntry = 14509 }, --Zandalar Illusionist's Mantle
	{ itemID = 20034, groupID = 3, refLootEntry = 14509 }, --Zandalar Illusionist's Robe
	{ itemID = 19846, groupID = 3, refLootEntry = 14509 }, --Zandalar Illusionist's Wraps
	{ itemID = 19836, groupID = 3, refLootEntry = 14509 }, --Zandalar Madcap's Bracers
	{ itemID = 19835, groupID = 3, refLootEntry = 14509 }, --Zandalar Madcap's Mantle
	{ itemID = 19834, groupID = 3, refLootEntry = 14509 }, --Zandalar Madcap's Tunic
	{ itemID = 19832, groupID = 3, refLootEntry = 14509 }, --Zandalar Predator's Belt
	{ itemID = 19833, groupID = 3, refLootEntry = 14509 }, --Zandalar Predator's Bracers
	{ itemID = 19831, groupID = 3, refLootEntry = 14509 }, --Zandalar Predator's Mantle
	{ itemID = 19824, groupID = 3, refLootEntry = 14509 }, --Zandalar Vindicator's Armguards
	{ itemID = 19823, groupID = 3, refLootEntry = 14509 }, --Zandalar Vindicator's Belt
	{ itemID = 19822, groupID = 3, refLootEntry = 14509 }, --Zandalar Vindicator's Breastplate
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
	{ itemID = 12391, groupID = 3, refLootEntry = 14507 }, --Battleweaver's Armor
	{ itemID = 12390, groupID = 3, refLootEntry = 14507 }, --Battleweaver's Spaulders
	{ itemID = 12473, groupID = 3, refLootEntry = 14507 }, --Battleweaver's Wristguards
	{ itemID = 19829, groupID = 3, refLootEntry = 14507 }, --Zandalar Augur's Belt
	{ itemID = 19830, groupID = 3, refLootEntry = 14507 }, --Zandalar Augur's Bracers
	{ itemID = 19828, groupID = 3, refLootEntry = 14507 }, --Zandalar Augur's Hauberk
	{ itemID = 19842, groupID = 3, refLootEntry = 14507 }, --Zandalar Confessor's Bindings
	{ itemID = 19841, groupID = 3, refLootEntry = 14507 }, --Zandalar Confessor's Mantle
	{ itemID = 19843, groupID = 3, refLootEntry = 14507 }, --Zandalar Confessor's Wraps
	{ itemID = 19849, groupID = 3, refLootEntry = 14507 }, --Zandalar Demoniac's Mantle
	{ itemID = 20033, groupID = 3, refLootEntry = 14507 }, --Zandalar Demoniac's Robe
	{ itemID = 19848, groupID = 3, refLootEntry = 14507 }, --Zandalar Demoniac's Wraps
	{ itemID = 19827, groupID = 3, refLootEntry = 14507 }, --Zandalar Freethinker's Armguards
	{ itemID = 19826, groupID = 3, refLootEntry = 14507 }, --Zandalar Freethinker's Belt
	{ itemID = 19825, groupID = 3, refLootEntry = 14507 }, --Zandalar Freethinker's Breastplate
	{ itemID = 19839, groupID = 3, refLootEntry = 14507 }, --Zandalar Haruspex's Belt
	{ itemID = 19840, groupID = 3, refLootEntry = 14507 }, --Zandalar Haruspex's Bracers
	{ itemID = 19838, groupID = 3, refLootEntry = 14507 }, --Zandalar Haruspex's Tunic
	{ itemID = 19845, groupID = 3, refLootEntry = 14507 }, --Zandalar Illusionist's Mantle
	{ itemID = 20034, groupID = 3, refLootEntry = 14507 }, --Zandalar Illusionist's Robe
	{ itemID = 19846, groupID = 3, refLootEntry = 14507 }, --Zandalar Illusionist's Wraps
	{ itemID = 19836, groupID = 3, refLootEntry = 14507 }, --Zandalar Madcap's Bracers
	{ itemID = 19835, groupID = 3, refLootEntry = 14507 }, --Zandalar Madcap's Mantle
	{ itemID = 19834, groupID = 3, refLootEntry = 14507 }, --Zandalar Madcap's Tunic
	{ itemID = 19832, groupID = 3, refLootEntry = 14507 }, --Zandalar Predator's Belt
	{ itemID = 19833, groupID = 3, refLootEntry = 14507 }, --Zandalar Predator's Bracers
	{ itemID = 19831, groupID = 3, refLootEntry = 14507 }, --Zandalar Predator's Mantle
	{ itemID = 19824, groupID = 3, refLootEntry = 14507 }, --Zandalar Vindicator's Armguards
	{ itemID = 19823, groupID = 3, refLootEntry = 14507 }, --Zandalar Vindicator's Belt
	{ itemID = 19822, groupID = 3, refLootEntry = 14507 }, --Zandalar Vindicator's Breastplate
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
	{ itemID = 12391, groupID = 3, refLootEntry = 14515 }, --Battleweaver's Armor
	{ itemID = 12390, groupID = 3, refLootEntry = 14515 }, --Battleweaver's Spaulders
	{ itemID = 12473, groupID = 3, refLootEntry = 14515 }, --Battleweaver's Wristguards
	{ itemID = 19829, groupID = 3, refLootEntry = 14515 }, --Zandalar Augur's Belt
	{ itemID = 19830, groupID = 3, refLootEntry = 14515 }, --Zandalar Augur's Bracers
	{ itemID = 19828, groupID = 3, refLootEntry = 14515 }, --Zandalar Augur's Hauberk
	{ itemID = 19842, groupID = 3, refLootEntry = 14515 }, --Zandalar Confessor's Bindings
	{ itemID = 19841, groupID = 3, refLootEntry = 14515 }, --Zandalar Confessor's Mantle
	{ itemID = 19843, groupID = 3, refLootEntry = 14515 }, --Zandalar Confessor's Wraps
	{ itemID = 19849, groupID = 3, refLootEntry = 14515 }, --Zandalar Demoniac's Mantle
	{ itemID = 20033, groupID = 3, refLootEntry = 14515 }, --Zandalar Demoniac's Robe
	{ itemID = 19848, groupID = 3, refLootEntry = 14515 }, --Zandalar Demoniac's Wraps
	{ itemID = 19827, groupID = 3, refLootEntry = 14515 }, --Zandalar Freethinker's Armguards
	{ itemID = 19826, groupID = 3, refLootEntry = 14515 }, --Zandalar Freethinker's Belt
	{ itemID = 19825, groupID = 3, refLootEntry = 14515 }, --Zandalar Freethinker's Breastplate
	{ itemID = 19839, groupID = 3, refLootEntry = 14515 }, --Zandalar Haruspex's Belt
	{ itemID = 19840, groupID = 3, refLootEntry = 14515 }, --Zandalar Haruspex's Bracers
	{ itemID = 19838, groupID = 3, refLootEntry = 14515 }, --Zandalar Haruspex's Tunic
	{ itemID = 19845, groupID = 3, refLootEntry = 14515 }, --Zandalar Illusionist's Mantle
	{ itemID = 20034, groupID = 3, refLootEntry = 14515 }, --Zandalar Illusionist's Robe
	{ itemID = 19846, groupID = 3, refLootEntry = 14515 }, --Zandalar Illusionist's Wraps
	{ itemID = 19836, groupID = 3, refLootEntry = 14515 }, --Zandalar Madcap's Bracers
	{ itemID = 19835, groupID = 3, refLootEntry = 14515 }, --Zandalar Madcap's Mantle
	{ itemID = 19834, groupID = 3, refLootEntry = 14515 }, --Zandalar Madcap's Tunic
	{ itemID = 19832, groupID = 3, refLootEntry = 14515 }, --Zandalar Predator's Belt
	{ itemID = 19833, groupID = 3, refLootEntry = 14515 }, --Zandalar Predator's Bracers
	{ itemID = 19831, groupID = 3, refLootEntry = 14515 }, --Zandalar Predator's Mantle
	{ itemID = 19824, groupID = 3, refLootEntry = 14515 }, --Zandalar Vindicator's Armguards
	{ itemID = 19823, groupID = 3, refLootEntry = 14515 }, --Zandalar Vindicator's Belt
	{ itemID = 19822, groupID = 3, refLootEntry = 14515 }, --Zandalar Vindicator's Breastplate
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
	{ itemID = 22713, groupID = 2, refLootEntry = 14517 }, --Zulian Scepter of Rites
	{ itemID = 12391, groupID = 3, refLootEntry = 14517 }, --Battleweaver's Armor
	{ itemID = 12390, groupID = 3, refLootEntry = 14517 }, --Battleweaver's Spaulders
	{ itemID = 12473, groupID = 3, refLootEntry = 14517 }, --Battleweaver's Wristguards
	{ itemID = 19829, groupID = 3, refLootEntry = 14517 }, --Zandalar Augur's Belt
	{ itemID = 19830, groupID = 3, refLootEntry = 14517 }, --Zandalar Augur's Bracers
	{ itemID = 19828, groupID = 3, refLootEntry = 14517 }, --Zandalar Augur's Hauberk
	{ itemID = 19842, groupID = 3, refLootEntry = 14517 }, --Zandalar Confessor's Bindings
	{ itemID = 19841, groupID = 3, refLootEntry = 14517 }, --Zandalar Confessor's Mantle
	{ itemID = 19843, groupID = 3, refLootEntry = 14517 }, --Zandalar Confessor's Wraps
	{ itemID = 19849, groupID = 3, refLootEntry = 14517 }, --Zandalar Demoniac's Mantle
	{ itemID = 20033, groupID = 3, refLootEntry = 14517 }, --Zandalar Demoniac's Robe
	{ itemID = 19848, groupID = 3, refLootEntry = 14517 }, --Zandalar Demoniac's Wraps
	{ itemID = 19827, groupID = 3, refLootEntry = 14517 }, --Zandalar Freethinker's Armguards
	{ itemID = 19826, groupID = 3, refLootEntry = 14517 }, --Zandalar Freethinker's Belt
	{ itemID = 19825, groupID = 3, refLootEntry = 14517 }, --Zandalar Freethinker's Breastplate
	{ itemID = 19839, groupID = 3, refLootEntry = 14517 }, --Zandalar Haruspex's Belt
	{ itemID = 19840, groupID = 3, refLootEntry = 14517 }, --Zandalar Haruspex's Bracers
	{ itemID = 19838, groupID = 3, refLootEntry = 14517 }, --Zandalar Haruspex's Tunic
	{ itemID = 19845, groupID = 3, refLootEntry = 14517 }, --Zandalar Illusionist's Mantle
	{ itemID = 20034, groupID = 3, refLootEntry = 14517 }, --Zandalar Illusionist's Robe
	{ itemID = 19846, groupID = 3, refLootEntry = 14517 }, --Zandalar Illusionist's Wraps
	{ itemID = 19836, groupID = 3, refLootEntry = 14517 }, --Zandalar Madcap's Bracers
	{ itemID = 19835, groupID = 3, refLootEntry = 14517 }, --Zandalar Madcap's Mantle
	{ itemID = 19834, groupID = 3, refLootEntry = 14517 }, --Zandalar Madcap's Tunic
	{ itemID = 19832, groupID = 3, refLootEntry = 14517 }, --Zandalar Predator's Belt
	{ itemID = 19833, groupID = 3, refLootEntry = 14517 }, --Zandalar Predator's Bracers
	{ itemID = 19831, groupID = 3, refLootEntry = 14517 }, --Zandalar Predator's Mantle
	{ itemID = 19824, groupID = 3, refLootEntry = 14517 }, --Zandalar Vindicator's Armguards
	{ itemID = 19823, groupID = 3, refLootEntry = 14517 }, --Zandalar Vindicator's Belt
	{ itemID = 19822, groupID = 3, refLootEntry = 14517 }, --Zandalar Vindicator's Breastplate
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
	{ itemID = 12391, groupID = 3, refLootEntry = 14510 }, --Battleweaver's Armor
	{ itemID = 12390, groupID = 3, refLootEntry = 14510 }, --Battleweaver's Spaulders
	{ itemID = 12473, groupID = 3, refLootEntry = 14510 }, --Battleweaver's Wristguards
	{ itemID = 19829, groupID = 3, refLootEntry = 14510 }, --Zandalar Augur's Belt
	{ itemID = 19830, groupID = 3, refLootEntry = 14510 }, --Zandalar Augur's Bracers
	{ itemID = 19828, groupID = 3, refLootEntry = 14510 }, --Zandalar Augur's Hauberk
	{ itemID = 19842, groupID = 3, refLootEntry = 14510 }, --Zandalar Confessor's Bindings
	{ itemID = 19841, groupID = 3, refLootEntry = 14510 }, --Zandalar Confessor's Mantle
	{ itemID = 19843, groupID = 3, refLootEntry = 14510 }, --Zandalar Confessor's Wraps
	{ itemID = 19849, groupID = 3, refLootEntry = 14510 }, --Zandalar Demoniac's Mantle
	{ itemID = 20033, groupID = 3, refLootEntry = 14510 }, --Zandalar Demoniac's Robe
	{ itemID = 19848, groupID = 3, refLootEntry = 14510 }, --Zandalar Demoniac's Wraps
	{ itemID = 19827, groupID = 3, refLootEntry = 14510 }, --Zandalar Freethinker's Armguards
	{ itemID = 19826, groupID = 3, refLootEntry = 14510 }, --Zandalar Freethinker's Belt
	{ itemID = 19825, groupID = 3, refLootEntry = 14510 }, --Zandalar Freethinker's Breastplate
	{ itemID = 19839, groupID = 3, refLootEntry = 14510 }, --Zandalar Haruspex's Belt
	{ itemID = 19840, groupID = 3, refLootEntry = 14510 }, --Zandalar Haruspex's Bracers
	{ itemID = 19838, groupID = 3, refLootEntry = 14510 }, --Zandalar Haruspex's Tunic
	{ itemID = 19845, groupID = 3, refLootEntry = 14510 }, --Zandalar Illusionist's Mantle
	{ itemID = 20034, groupID = 3, refLootEntry = 14510 }, --Zandalar Illusionist's Robe
	{ itemID = 19846, groupID = 3, refLootEntry = 14510 }, --Zandalar Illusionist's Wraps
	{ itemID = 19836, groupID = 3, refLootEntry = 14510 }, --Zandalar Madcap's Bracers
	{ itemID = 19835, groupID = 3, refLootEntry = 14510 }, --Zandalar Madcap's Mantle
	{ itemID = 19834, groupID = 3, refLootEntry = 14510 }, --Zandalar Madcap's Tunic
	{ itemID = 19832, groupID = 3, refLootEntry = 14510 }, --Zandalar Predator's Belt
	{ itemID = 19833, groupID = 3, refLootEntry = 14510 }, --Zandalar Predator's Bracers
	{ itemID = 19831, groupID = 3, refLootEntry = 14510 }, --Zandalar Predator's Mantle
	{ itemID = 19824, groupID = 3, refLootEntry = 14510 }, --Zandalar Vindicator's Armguards
	{ itemID = 19823, groupID = 3, refLootEntry = 14510 }, --Zandalar Vindicator's Belt
	{ itemID = 19822, groupID = 3, refLootEntry = 14510 }, --Zandalar Vindicator's Breastplate
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
	{ itemID = 12391, groupID = 3, refLootEntry = 11380 }, --Battleweaver's Armor
	{ itemID = 12390, groupID = 3, refLootEntry = 11380 }, --Battleweaver's Spaulders
	{ itemID = 12473, groupID = 3, refLootEntry = 11380 }, --Battleweaver's Wristguards
	{ itemID = 19829, groupID = 3, refLootEntry = 11380 }, --Zandalar Augur's Belt
	{ itemID = 19830, groupID = 3, refLootEntry = 11380 }, --Zandalar Augur's Bracers
	{ itemID = 19828, groupID = 3, refLootEntry = 11380 }, --Zandalar Augur's Hauberk
	{ itemID = 19842, groupID = 3, refLootEntry = 11380 }, --Zandalar Confessor's Bindings
	{ itemID = 19841, groupID = 3, refLootEntry = 11380 }, --Zandalar Confessor's Mantle
	{ itemID = 19843, groupID = 3, refLootEntry = 11380 }, --Zandalar Confessor's Wraps
	{ itemID = 19849, groupID = 3, refLootEntry = 11380 }, --Zandalar Demoniac's Mantle
	{ itemID = 20033, groupID = 3, refLootEntry = 11380 }, --Zandalar Demoniac's Robe
	{ itemID = 19848, groupID = 3, refLootEntry = 11380 }, --Zandalar Demoniac's Wraps
	{ itemID = 19827, groupID = 3, refLootEntry = 11380 }, --Zandalar Freethinker's Armguards
	{ itemID = 19826, groupID = 3, refLootEntry = 11380 }, --Zandalar Freethinker's Belt
	{ itemID = 19825, groupID = 3, refLootEntry = 11380 }, --Zandalar Freethinker's Breastplate
	{ itemID = 19839, groupID = 3, refLootEntry = 11380 }, --Zandalar Haruspex's Belt
	{ itemID = 19840, groupID = 3, refLootEntry = 11380 }, --Zandalar Haruspex's Bracers
	{ itemID = 19838, groupID = 3, refLootEntry = 11380 }, --Zandalar Haruspex's Tunic
	{ itemID = 19845, groupID = 3, refLootEntry = 11380 }, --Zandalar Illusionist's Mantle
	{ itemID = 20034, groupID = 3, refLootEntry = 11380 }, --Zandalar Illusionist's Robe
	{ itemID = 19846, groupID = 3, refLootEntry = 11380 }, --Zandalar Illusionist's Wraps
	{ itemID = 19836, groupID = 3, refLootEntry = 11380 }, --Zandalar Madcap's Bracers
	{ itemID = 19835, groupID = 3, refLootEntry = 11380 }, --Zandalar Madcap's Mantle
	{ itemID = 19834, groupID = 3, refLootEntry = 11380 }, --Zandalar Madcap's Tunic
	{ itemID = 19832, groupID = 3, refLootEntry = 11380 }, --Zandalar Predator's Belt
	{ itemID = 19833, groupID = 3, refLootEntry = 11380 }, --Zandalar Predator's Bracers
	{ itemID = 19831, groupID = 3, refLootEntry = 11380 }, --Zandalar Predator's Mantle
	{ itemID = 19824, groupID = 3, refLootEntry = 11380 }, --Zandalar Vindicator's Armguards
	{ itemID = 19823, groupID = 3, refLootEntry = 11380 }, --Zandalar Vindicator's Belt
	{ itemID = 19822, groupID = 3, refLootEntry = 11380 }, --Zandalar Vindicator's Breastplate
	{ itemID = 27415, groupID = 1, refLootEntry = 18373 }, --Darkguard Face Mask
	{ itemID = 27416, groupID = 1, refLootEntry = 18373 }, --Fetish of the Fallen
	{ itemID = 27412, groupID = 1, refLootEntry = 18373 }, --Ironstaff of Regeneration
	{ itemID = 27414, groupID = 1, refLootEntry = 18373 }, --Mok'Nathal Beast-Mask
	{ itemID = 27413, groupID = 1, refLootEntry = 18373 }, --Ring of the Exarchs
	{ itemID = 27411, groupID = 1, refLootEntry = 18373 }, --Slippers of Serenity
	{ itemID = 2076367, groupID = 1, refLootEntry = 2061754 }, --Blade of the Vigilant Shepherd
	{ itemID = 2070750, groupID = 1, refLootEntry = 2061754 }, --Boots of Illumination
	{ itemID = 2064692, groupID = 1, refLootEntry = 2061754 }, --Chestplate of Spiritual Vigilance
	{ itemID = 2073927, groupID = 1, refLootEntry = 2061754 }, --Cloak of Soul Protection
	{ itemID = 2066560, groupID = 1, refLootEntry = 2061754 }, --Girdle of the Crypt Defender
	{ itemID = 2073046, groupID = 1, refLootEntry = 2061754 }, --Gloves of the Unyielding Exarch
	{ itemID = 2068672, groupID = 1, refLootEntry = 2061754 }, --Legguards of Sacred Duty
	{ itemID = 2063318, groupID = 1, refLootEntry = 2061754 }, --Sanctified Auchenai Shirt
	{ itemID = 2061754, groupID = 1, refLootEntry = 2061754 }, --Shoulderguards of the Auchenai Guardian
	{ itemID = 27410, groupID = 1, refLootEntry = 18371 }, --Collar of Command
	{ itemID = 27408, groupID = 1, refLootEntry = 18371 }, --Hope Bearer Helm
	{ itemID = 26055, groupID = 1, refLootEntry = 18371 }, --Oculus of the Hidden Eye
	{ itemID = 27409, groupID = 1, refLootEntry = 18371 }, --Raven-Heart Headdress
	{ itemID = 25964, groupID = 1, refLootEntry = 18371 }, --Shaarde the Lesser
	{ itemID = 25957, groupID = 1, refLootEntry = 40115 }, --Ethereal Boots of the Skystrider
	{ itemID = 25953, groupID = 1, refLootEntry = 40115 }, --Ethereal Warp-Bow
	{ itemID = 25962, groupID = 1, refLootEntry = 40115 }, --Longstrider's Loop
	{ itemID = 25955, groupID = 1, refLootEntry = 40115 }, --Mask of the Howling Storm
	{ itemID = 25956, groupID = 1, refLootEntry = 40115 }, --Nexus-Bracers of Vigor
	{ itemID = 25954, groupID = 1, refLootEntry = 40115 }, --Sigil of Shaffar
	{ itemID = 2076364, groupID = 1, refLootEntry = 2076364 }, --Shaffar's Ethereal Scepter
	{ itemID = 25941, groupID = 1, refLootEntry = 40110 }, --Boots of the Outlander
	{ itemID = 25943, groupID = 1, refLootEntry = 40110 }, --Creepjacker
	{ itemID = 25942, groupID = 1, refLootEntry = 40110 }, --Faith Bearer's Gauntlets
	{ itemID = 25940, groupID = 1, refLootEntry = 40110 }, --Idol of the Claw
	{ itemID = 28166, groupID = 1, refLootEntry = 40110 }, --Shield of the Void
	{ itemID = 25939, groupID = 1, refLootEntry = 40110 }, --Voidfire Wand
	{ itemID = 25945, groupID = 1, refLootEntry = 40112 }, --Cloak of Revival
	{ itemID = 25947, groupID = 1, refLootEntry = 40112 }, --Lightning-Rod Pauldrons
	{ itemID = 25946, groupID = 1, refLootEntry = 40112 }, --Nethershade Boots
	{ itemID = 25952, groupID = 1, refLootEntry = 40112 }, --Scimitar of the Nexus-Stalkers
	{ itemID = 25944, groupID = 1, refLootEntry = 40112 }, --Shaarde the Greater
	{ itemID = 25950, groupID = 1, refLootEntry = 40112 }, --Staff of Polarities
	{ itemID = 31570, groupID = 1, refLootEntry = 22930 }, --Mistshroud Tunic
	{ itemID = 31562, groupID = 1, refLootEntry = 22930 }, --Skystalker's Tunic
	{ itemID = 31578, groupID = 1, refLootEntry = 22930 }, --Slatesteel Breastplate
	{ itemID = 31554, groupID = 1, refLootEntry = 22930 }, --Windchanneller's Tunic
	{ itemID = 31923, groupID = 2, refLootEntry = 22930 }, --Band of the Crystalline Void
	{ itemID = 31919, groupID = 2, refLootEntry = 22930 }, --Nexus-Prince's Ring of Balance
	{ itemID = 31922, groupID = 2, refLootEntry = 22930 }, --Ring of Conflict Survival
	{ itemID = 31920, groupID = 2, refLootEntry = 22930 }, --Shaffar's Band of Brutality
	{ itemID = 31921, groupID = 2, refLootEntry = 22930 }, --Yor's Collapsing Band
	{ itemID = 31924, groupID = 2, refLootEntry = 22930 }, --Yor's Revenge
	{ itemID = 32779, groupID = 1, refLootEntry = 23035 }, --Band of Frigid Elements
	{ itemID = 32769, groupID = 1, refLootEntry = 23035 }, --Belt of the Raven Lord
	{ itemID = 32778, groupID = 1, refLootEntry = 23035 }, --Boots of Righteous Fortitude
	{ itemID = 32781, groupID = 1, refLootEntry = 23035 }, --Talon of Anzu
	{ itemID = 32780, groupID = 1, refLootEntry = 23035 }, --The Boomstick
	{ itemID = 27918, groupID = 1, refLootEntry = 40130 }, --Bands of Syth
	{ itemID = 27917, groupID = 1, refLootEntry = 40130 }, --Libram of the Eternal Rest
	{ itemID = 27919, groupID = 1, refLootEntry = 40130 }, --Light-Woven Slippers
	{ itemID = 27914, groupID = 1, refLootEntry = 40130 }, --Moonstrider Boots
	{ itemID = 27916, groupID = 1, refLootEntry = 40130 }, --Sethekk Feather-Darts
	{ itemID = 27915, groupID = 1, refLootEntry = 40130 }, --Sky-Hunter Swift Boots
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
	{ itemID = 27888, groupID = 1, refLootEntry = 40140 }, --Dream-Wing Helm
	{ itemID = 27886, groupID = 1, refLootEntry = 40140 }, --Idol of the Emerald Queen
	{ itemID = 27889, groupID = 1, refLootEntry = 40140 }, --Jaedenfire Gloves of Annihilation
	{ itemID = 27884, groupID = 1, refLootEntry = 40140 }, --Ornate Boots of the Sanctified
	{ itemID = 27887, groupID = 1, refLootEntry = 40140 }, --Platinum Shield of the Valorous
	{ itemID = 27885, groupID = 1, refLootEntry = 40140 }, --Soul-Wand of the Aldor
	{ itemID = 2076423, groupID = 1, refLootEntry = 2076423 }, --Fel Ambassador's Blade
	{ itemID = 27891, groupID = 1, refLootEntry = 40141 }, --Adamantine Figurine
	{ itemID = 28134, groupID = 1, refLootEntry = 40141 }, --Brooch of Heightened Potential
	{ itemID = 27892, groupID = 1, refLootEntry = 40141 }, --Cloak of the Inciter
	{ itemID = 27468, groupID = 1, refLootEntry = 40141 }, --Moonglade Handwraps
	{ itemID = 27893, groupID = 1, refLootEntry = 40141 }, --Ornate Leggings of the Venerated
	{ itemID = 245794, groupID = 1, refLootEntry = 40141 }, --Verdant's Handwraps
	{ itemID = 27890, groupID = 1, refLootEntry = 40141 }, --Wand of the Netherwing
	{ itemID = 2076410, groupID = 1, refLootEntry = 2076410 }, --Blackheart's Chaotic Warhammer
	{ itemID = 27901, groupID = 1, refLootEntry = 40142 }, --Blackout Truncheon
	{ itemID = 27897, groupID = 1, refLootEntry = 40142 }, --Breastplate of Many Graces
	{ itemID = 27775, groupID = 1, refLootEntry = 40142 }, --Hallowed Pauldrons
	{ itemID = 27900, groupID = 1, refLootEntry = 40142 }, --Jewel of Charismatic Mystique
	{ itemID = 27898, groupID = 1, refLootEntry = 40142 }, --Wrathfire Hand-Cannon
	{ itemID = 2066516, groupID = 1, refLootEntry = 2060617 }, --Cincture of Dark Rituals
	{ itemID = 2070694, groupID = 1, refLootEntry = 2060617 }, --Footwraps of Twisted Shadows
	{ itemID = 2073020, groupID = 1, refLootEntry = 2060617 }, --Gloves of Void Manipulation
	{ itemID = 2060617, groupID = 1, refLootEntry = 2060617 }, --Hood of Shadowed Insights
	{ itemID = 2068607, groupID = 1, refLootEntry = 2060617 }, --Leggings of the Grandmaster
	{ itemID = 2061708, groupID = 1, refLootEntry = 2060617 }, --Mantle of the Shadow Council
	{ itemID = 2064635, groupID = 1, refLootEntry = 2060617 }, --Robe of the Void Pact
	{ itemID = 2076424, groupID = 1, refLootEntry = 2060617 }, --Staff of Empowering Shadows
	{ itemID = 27905, groupID = 1, refLootEntry = 40143 }, --Greatsword of Horrid Dreams
	{ itemID = 27912, groupID = 1, refLootEntry = 40143 }, --Harness of the Deep Currents
	{ itemID = 27902, groupID = 1, refLootEntry = 40143 }, --Silent Slippers of Meditation
	{ itemID = 27910, groupID = 1, refLootEntry = 40143 }, --Silvermoon Crest Shield
	{ itemID = 27903, groupID = 1, refLootEntry = 40143 }, --Sonic Spear
	{ itemID = 27913, groupID = 1, refLootEntry = 40143 }, --Whispering Blade of Slaying
	{ itemID = 245601, groupID = 1, refLootEntry = 40146 }, --Chestpiece of the Tides
	{ itemID = 28230, groupID = 1, refLootEntry = 40146 }, --Hallowed Garments
	{ itemID = 245303, groupID = 1, refLootEntry = 40146 }, --Kilt of the Tides
	{ itemID = 27908, groupID = 1, refLootEntry = 40146 }, --Leggings of Assassination
	{ itemID = 28232, groupID = 1, refLootEntry = 40146 }, --Robe of Oblivion
	{ itemID = 27803, groupID = 1, refLootEntry = 40146 }, --Shoulderguards of the Bold
	{ itemID = 242896, groupID = 1, refLootEntry = 40146 }, --Shoulderguards of the Sentinel
	{ itemID = 27778, groupID = 1, refLootEntry = 40146 }, --Spaulders of Oblivion
	{ itemID = 27909, groupID = 1, refLootEntry = 40146 }, --Tidefury Kilt
	{ itemID = 6910, groupID = 1, refLootEntry = 4829 }, --Leech Pants
	{ itemID = 6911, groupID = 1, refLootEntry = 4829 }, --Moss Cinch
	{ itemID = 6909, groupID = 1, refLootEntry = 4829 }, --Strike of the Hydra
	{ itemID = 3414, groupID = 1, refLootEntry = 12876 }, --Crested Scepter
	{ itemID = 2567, groupID = 1, refLootEntry = 12876 }, --Evocator's Blade
	{ itemID = 1481, groupID = 1, refLootEntry = 12876 }, --Grimclaw
	{ itemID = 3416, groupID = 1, refLootEntry = 12876 }, --Martyr's Chain
	{ itemID = 1491, groupID = 1, refLootEntry = 12876 }, --Ring of Precision
	{ itemID = 3415, groupID = 1, refLootEntry = 12876 }, --Staff of the Friar
	{ itemID = 6906, groupID = 1, refLootEntry = 6243 }, --Algae Fists
	{ itemID = 6905, groupID = 1, refLootEntry = 6243 }, --Reef Axe
	{ itemID = 2075303, groupID = 1, refLootEntry = 2075303 }, --Gelihast's Watery Edge
	{ itemID = 2078029, groupID = 1, refLootEntry = 2075303 }, --Tidecaller's Blade
	{ itemID = 6908, groupID = 1, refLootEntry = 4887 }, --Ghamoo-ra's Bind
	{ itemID = 6907, groupID = 1, refLootEntry = 4887 }, --Tortoise Armor
	{ itemID = 11121, groupID = 1, refLootEntry = 4831 }, --Darkwater Talwar
	{ itemID = 888, groupID = 1, refLootEntry = 4831 }, --Naga Battle Gloves
	{ itemID = 3078, groupID = 1, refLootEntry = 4831 }, --Naga Heartpiercer
	{ itemID = 2075095, groupID = 1, refLootEntry = 2075095 }, --Trident of the Azure Depths
	{ itemID = 2078581, groupID = 1, refLootEntry = 2075095 }, --Twilight Tideshooter
	{ itemID = 1454, groupID = 1, refLootEntry = 12902 }, --Axe of the Enforcer
	{ itemID = 3413, groupID = 1, refLootEntry = 12902 }, --Doomspike
	{ itemID = 3417, groupID = 1, refLootEntry = 12902 }, --Onyx Claymore
	{ itemID = 2271, groupID = 1, refLootEntry = 12902 }, --Staff of the Blessed Seer
	{ itemID = 1486, groupID = 1, refLootEntry = 12902 }, --Tree Bark Jacket
	{ itemID = 2063131, groupID = 1, refLootEntry = 2060461 }, --Aqueous Tunic
	{ itemID = 2066221, groupID = 1, refLootEntry = 2060461 }, --Belt of Surging Waves
	{ itemID = 2064337, groupID = 1, refLootEntry = 2060461 }, --Cloak of Aquatic Echoes
	{ itemID = 2072799, groupID = 1, refLootEntry = 2060461 }, --Gloves of Rippling Waters
	{ itemID = 2060461, groupID = 1, refLootEntry = 2060461 }, --Helm of Tidal Resonance
	{ itemID = 2068273, groupID = 1, refLootEntry = 2060461 }, --Leggings of Watery Embrace
	{ itemID = 2061504, groupID = 1, refLootEntry = 2060461 }, --Mantle of Flowing Currents
	{ itemID = 2075858, groupID = 1, refLootEntry = 2060461 }, --Maul of Elemental Torrent
	{ itemID = 2070426, groupID = 1, refLootEntry = 2060461 }, --Sandals of Briny Fortitude
	{ itemID = 6902, groupID = 1, refLootEntry = 4830 }, --Bands of Serra'kis
	{ itemID = 6904, groupID = 1, refLootEntry = 4830 }, --Bite of Serra'kis
	{ itemID = 6901, groupID = 1, refLootEntry = 4830 }, --Glowing Thresher Cape
	{ itemID = 6903, groupID = 1, refLootEntry = 4832 }, --Gaze Dreamer Pants
	{ itemID = 1155, groupID = 1, refLootEntry = 4832 }, --Rod of the Sleepwalker
	{ itemID = 2062689, groupID = 1, refLootEntry = 2061224 }, --Cultist's Duskweave Shirt
	{ itemID = 2069953, groupID = 1, refLootEntry = 2061224 }, --Footwraps of Eldritch Chaos
	{ itemID = 2072401, groupID = 1, refLootEntry = 2061224 }, --Gloves of the Ancient Whisper
	{ itemID = 2067763, groupID = 1, refLootEntry = 2061224 }, --Leggings of Blackfathom Rituals
	{ itemID = 2064014, groupID = 1, refLootEntry = 2061224 }, --Robes of the Shadowed Moon
	{ itemID = 2061224, groupID = 1, refLootEntry = 2061224 }, --Shoulders of the Twilight Ascendant
	{ itemID = 2075096, groupID = 1, refLootEntry = 2061224 }, --Staff of the Cult's Embrace
	{ itemID = 11832, groupID = 1, refLootEntry = 9156 }, --Burst of Knowledge
	{ itemID = 11812, groupID = 1, refLootEntry = 9156 }, --Cape of the Fire Salamander
	{ itemID = 11808, groupID = 1, refLootEntry = 9156 }, --Circle of Flame
	{ itemID = 11809, groupID = 1, refLootEntry = 9156 }, --Flame Wrath
	{ itemID = 11814, groupID = 1, refLootEntry = 9156 }, --Molten Fists
	{ itemID = 2075539, groupID = 1, refLootEntry = 2075539 }, --Flamelash's Inferno Pike
	{ itemID = 11803, groupID = 1, refLootEntry = 9016 }, --Force of Magma
	{ itemID = 11802, groupID = 1, refLootEntry = 9016 }, --Lavacrest Leggings
	{ itemID = 11805, groupID = 1, refLootEntry = 9016 }, --Rubidium Hammer
	{ itemID = 11807, groupID = 1, refLootEntry = 9016 }, --Sash of the Burning Heart
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
	{ itemID = 2070192, groupID = 1, refLootEntry = 2060325 }, --Emberwalkers
	{ itemID = 2061338, groupID = 1, refLootEntry = 2060325 }, --Flameforged Mantle
	{ itemID = 2068026, groupID = 1, refLootEntry = 2060325 }, --Leggings of Molten Dominion
	{ itemID = 2075524, groupID = 1, refLootEntry = 2060325 }, --Molten Iron Mace
	{ itemID = 2064161, groupID = 1, refLootEntry = 2060325 }, --Robes of the Dark Emperor
	{ itemID = 2060325, groupID = 1, refLootEntry = 2060325 }, --Thaurissan's Ember Crown
	{ itemID = 11839, groupID = 1, refLootEntry = 9056 }, --Chief Architect's Monocle
	{ itemID = 22223, groupID = 1, refLootEntry = 9056 }, --Foreman's Head Protector
	{ itemID = 11842, groupID = 1, refLootEntry = 9056 }, --Lead Surveyor's Mantle
	{ itemID = 11841, groupID = 1, refLootEntry = 9056 }, --Senior Designer's Pantaloons
	{ itemID = 2060314, groupID = 1, refLootEntry = 2060314 }, --Cowl of the Dark Architect
	{ itemID = 2070171, groupID = 1, refLootEntry = 2060314 }, --Footwraps of the Deep Forge
	{ itemID = 2072584, groupID = 1, refLootEntry = 2060314 }, --Gloves of the Iron Artisan
	{ itemID = 2068004, groupID = 1, refLootEntry = 2060314 }, --Leggings of Molten Design
	{ itemID = 2075534, groupID = 1, refLootEntry = 2060314 }, --Maul of Fiery Reckoning
	{ itemID = 2064143, groupID = 1, refLootEntry = 2060314 }, --Robes of Elemental Craft
	{ itemID = 2062919, groupID = 1, refLootEntry = 2060314 }, --Shirt of Arcane Design
	{ itemID = 11816, groupID = 1, refLootEntry = 9033 }, --Angerforge's Battle Axe
	{ itemID = 11810, groupID = 1, refLootEntry = 9033 }, --Force of Will
	{ itemID = 11817, groupID = 1, refLootEntry = 9033 }, --Lord General's Sword
	{ itemID = 11820, groupID = 1, refLootEntry = 9033 }, --Royal Decorated Armor
	{ itemID = 11821, groupID = 1, refLootEntry = 9033 }, --Warstrife Leggings
	{ itemID = 2061331, groupID = 1, refLootEntry = 2061331 }, --Angerforge's Emberguard Pauldrons
	{ itemID = 2062928, groupID = 1, refLootEntry = 2061331 }, --Angerforge's Fiery Bastion
	{ itemID = 2070183, groupID = 1, refLootEntry = 2061331 }, --Boots of Blazing Authority
	{ itemID = 2072595, groupID = 1, refLootEntry = 2061331 }, --Handguards of the Dark Flame
	{ itemID = 2068016, groupID = 1, refLootEntry = 2061331 }, --Legplates of the Infernal Warden
	{ itemID = 2066000, groupID = 1, refLootEntry = 2061331 }, --Molten Command Girdle
	{ itemID = 2075528, groupID = 1, refLootEntry = 2061331 }, --Obsidian Decimator
	{ itemID = 11823, groupID = 1, refLootEntry = 8983 }, --Luminary Kilt
	{ itemID = 11669, groupID = 1, refLootEntry = 8983 }, --Naglering
	{ itemID = 11822, groupID = 1, refLootEntry = 8983 }, --Omnicast Boots
	{ itemID = 11819, groupID = 1, refLootEntry = 8983 }, --Second Wind
	{ itemID = 2060318, groupID = 1, refLootEntry = 2060318 }, --Argelmach's Elemental Headgear
	{ itemID = 2068017, groupID = 1, refLootEntry = 2060318 }, --Argelmach's Reinforced Leggings
	{ itemID = 2064155, groupID = 1, refLootEntry = 2060318 }, --Dark Iron Chestwraps of Mastery
	{ itemID = 2061332, groupID = 1, refLootEntry = 2060318 }, --Engineering Shoulderguards of the Golem Lord
	{ itemID = 2066001, groupID = 1, refLootEntry = 2060318 }, --Golem-Crafted Waistband
	{ itemID = 2072596, groupID = 1, refLootEntry = 2060318 }, --Hands of the Master Artificer
	{ itemID = 2070184, groupID = 1, refLootEntry = 2060318 }, --Machinist's Boots of Argelmach
	{ itemID = 2075522, groupID = 1, refLootEntry = 2060318 }, --Runed Dagger of the Manufactory
	{ itemID = 11626, groupID = 1, refLootEntry = 9018 }, --Blackveil Cape
	{ itemID = 11625, groupID = 1, refLootEntry = 9018 }, --Enthralled Sphere
	{ itemID = 22240, groupID = 1, refLootEntry = 9018 }, --Greaves of Withering Despair
	{ itemID = 11624, groupID = 1, refLootEntry = 9018 }, --Kentic Amice
	{ itemID = 2075523, groupID = 1, refLootEntry = 2060319 }, --Blade of Shadow Truth
	{ itemID = 2066002, groupID = 1, refLootEntry = 2060319 }, --Girdle of Subjugation
	{ itemID = 2072597, groupID = 1, refLootEntry = 2060319 }, --Gloves of Hidden Torment
	{ itemID = 2061333, groupID = 1, refLootEntry = 2060319 }, --Mantle of Dark Insights
	{ itemID = 2068018, groupID = 1, refLootEntry = 2060319 }, --Pants of Suppressed Pain
	{ itemID = 2064156, groupID = 1, refLootEntry = 2060319 }, --Robe of Sinister Shadows
	{ itemID = 2070185, groupID = 1, refLootEntry = 2060319 }, --Slippers of Searing Shadows
	{ itemID = 2060319, groupID = 1, refLootEntry = 2060319 }, --Veil of the Interrogator
	{ itemID = 2062929, groupID = 1, refLootEntry = 2060319 }, --Whispering Shirt of Secrets
	{ itemID = 11627, groupID = 1, refLootEntry = 9319 }, --Fleetfoot Greaves
	{ itemID = 11628, groupID = 1, refLootEntry = 9319 }, --Houndmaster's Bow
	{ itemID = 11629, groupID = 1, refLootEntry = 9319 }, --Houndmaster's Rifle
	{ itemID = 11623, groupID = 1, refLootEntry = 9319 }, --Spritecaster Cape
	{ itemID = 2070214, groupID = 1, refLootEntry = 2061346 }, --Ashen Path Boots
	{ itemID = 2075567, groupID = 1, refLootEntry = 2061346 }, --Broadaxe of Burning Wrath
	{ itemID = 2068050, groupID = 1, refLootEntry = 2061346 }, --Charred Hide Leggings
	{ itemID = 2064170, groupID = 1, refLootEntry = 2061346 }, --Emberclasped Tunic
	{ itemID = 2062955, groupID = 1, refLootEntry = 2061346 }, --Flameforged Undershirt
	{ itemID = 2061346, groupID = 1, refLootEntry = 2061346 }, --Houndmaster's Fiery Pauldrons
	{ itemID = 2078064, groupID = 1, refLootEntry = 2061346 }, --Inferno Edge
	{ itemID = 2072616, groupID = 1, refLootEntry = 2061346 }, --Molten Grasp Gauntlets
	{ itemID = 2066025, groupID = 1, refLootEntry = 2061346 }, --Searing Leather Belt
	{ itemID = 18043, groupID = 1, refLootEntry = 9537 }, --Coal Miner Boots
	{ itemID = 22275, groupID = 1, refLootEntry = 9537 }, --Firemoss Boots
	{ itemID = 18044, groupID = 1, refLootEntry = 9537 }, --Hurley's Tankard
	{ itemID = 11735, groupID = 1, refLootEntry = 9537 }, --Ragefury Eyepatch
	{ itemID = 2067998, groupID = 1, refLootEntry = 2060309 }, --Ale-Soaked Trousers
	{ itemID = 2060309, groupID = 1, refLootEntry = 2060309 }, --Blackbreath's Fiery Eyepatch
	{ itemID = 2075586, groupID = 1, refLootEntry = 2060309 }, --Blackbreath's Hammer of Fury
	{ itemID = 2070165, groupID = 1, refLootEntry = 2060309 }, --Blazing Tavern Boots
	{ itemID = 2072580, groupID = 1, refLootEntry = 2060309 }, --Grim Guzzler Grips
	{ itemID = 2064139, groupID = 1, refLootEntry = 2060309 }, --Inferno Embrace Vest
	{ itemID = 2065983, groupID = 1, refLootEntry = 2060309 }, --Molten Band Waistguard
	{ itemID = 2062914, groupID = 1, refLootEntry = 2060309 }, --Tavern Reveler's Shirt
	{ itemID = 11764, groupID = 1, refLootEntry = 9017 }, --Cinderhide Armsplints
	{ itemID = 11767, groupID = 1, refLootEntry = 9017 }, --Emberplate Armguards
	{ itemID = 11766, groupID = 1, refLootEntry = 9017 }, --Flameweave Cuffs
	{ itemID = 11765, groupID = 1, refLootEntry = 9017 }, --Pyremail Wristguards
	{ itemID = 11632, groupID = 1, refLootEntry = 9025 }, --Earthslag Shoulders
	{ itemID = 22397, groupID = 1, refLootEntry = 9025 }, --Idol of Ferocity
	{ itemID = 22234, groupID = 1, refLootEntry = 9025 }, --Mantle of Lost Hope
	{ itemID = 11631, groupID = 1, refLootEntry = 9025 }, --Stoneshell Guard
	{ itemID = 11746, groupID = 1, refLootEntry = 9938 }, --Golem Skull Helm
	{ itemID = 22208, groupID = 1, refLootEntry = 9938 }, --Lavastone Hammer
	{ itemID = 22400, groupID = 1, refLootEntry = 9938 }, --Libram of Truth
	{ itemID = 11935, groupID = 1, refLootEntry = 9938 }, --Magmus Stone
	{ itemID = 22395, groupID = 1, refLootEntry = 9938 }, --Totem of Rage
	{ itemID = 11785, groupID = 1, refLootEntry = 8923 }, --Rock Golem Bulwark
	{ itemID = 11787, groupID = 1, refLootEntry = 8923 }, --Shalehusk Boots
	{ itemID = 22245, groupID = 1, refLootEntry = 8923 }, --Soot Encrusted Footwear
	{ itemID = 11786, groupID = 1, refLootEntry = 8923 }, --Stone of the Earth
	{ itemID = 11744, groupID = 1, refLootEntry = 9502 }, --Bloodfist
	{ itemID = 11745, groupID = 1, refLootEntry = 9502 }, --Fists of Phalanx
	{ itemID = 22212, groupID = 1, refLootEntry = 9502 }, --Golem Fitted Pauldrons
	{ itemID = 12791, groupID = 1, refLootEntry = 9499 }, --Barman Shanker
	{ itemID = 12793, groupID = 1, refLootEntry = 9499 }, --Mixologist's Tunic
	{ itemID = 2072578, groupID = 1, refLootEntry = 2060307 }, --Barkeep's Grip
	{ itemID = 2065981, groupID = 1, refLootEntry = 2060307 }, --Crafty Waistband
	{ itemID = 2064137, groupID = 1, refLootEntry = 2060307 }, --Entrepreneur's Vestment
	{ itemID = 2070163, groupID = 1, refLootEntry = 2060307 }, --Goblin's Nimble Shoes
	{ itemID = 2062912, groupID = 1, refLootEntry = 2060307 }, --Grim Guzzler Garb
	{ itemID = 2075581, groupID = 1, refLootEntry = 2060307 }, --Mug Smasher
	{ itemID = 2060307, groupID = 1, refLootEntry = 2060307 }, --Spazzring's Ingenious Cap
	{ itemID = 2067996, groupID = 1, refLootEntry = 2060307 }, --Tavern Trousers
	{ itemID = 11747, groupID = 1, refLootEntry = 9024 }, --Flamestrider Robes
	{ itemID = 11750, groupID = 1, refLootEntry = 9024 }, --Kindling Stave
	{ itemID = 11748, groupID = 1, refLootEntry = 9024 }, --Pyric Caduceus
	{ itemID = 11749, groupID = 1, refLootEntry = 9024 }, --Searingscale Leggings
	{ itemID = 2061334, groupID = 1, refLootEntry = 2060320 }, --Emberclad Mantle
	{ itemID = 2060320, groupID = 1, refLootEntry = 2060320 }, --Fiery Obsidian Hood
	{ itemID = 2064157, groupID = 1, refLootEntry = 2060320 }, --Flameforged Robe
	{ itemID = 2062930, groupID = 1, refLootEntry = 2060320 }, --Infernoweave Undershirt
	{ itemID = 2066003, groupID = 1, refLootEntry = 2060320 }, --Lava-bound Sash
	{ itemID = 2068019, groupID = 1, refLootEntry = 2060320 }, --Molten Core Leggings
	{ itemID = 2075525, groupID = 1, refLootEntry = 2060320 }, --Pyromancer's Emberstaff
	{ itemID = 2064140, groupID = 1, refLootEntry = 2061319 }, --Blackrock Engineer's Tunic
	{ itemID = 2072581, groupID = 1, refLootEntry = 2061319 }, --Cogspark Gloves
	{ itemID = 2065984, groupID = 1, refLootEntry = 2061319 }, --Dark Iron Tinkerer's Belt
	{ itemID = 2070166, groupID = 1, refLootEntry = 2061319 }, --Flameforged Boots
	{ itemID = 2075588, groupID = 1, refLootEntry = 2061319 }, --Gnomish Gizmo Dagger
	{ itemID = 2067999, groupID = 1, refLootEntry = 2061319 }, --Molten Alloy Greaves
	{ itemID = 2061319, groupID = 1, refLootEntry = 2061319 }, --Ribbly's Precision Pauldrons
	{ itemID = 2062915, groupID = 1, refLootEntry = 2061319 }, --Screwspigot's Workshop Vest
	{ itemID = 11755, groupID = 1, refLootEntry = 9042 }, --Verek's Collar
	{ itemID = 22242, groupID = 1, refLootEntry = 9042 }, --Verek's Leash
	{ itemID = 11784, groupID = 1, refLootEntry = 9041 }, --Arbiter's Blade
	{ itemID = 11782, groupID = 1, refLootEntry = 9041 }, --Boreal Mantle
	{ itemID = 11783, groupID = 1, refLootEntry = 9041 }, --Chillsteel Girdle
	{ itemID = 22241, groupID = 1, refLootEntry = 9041 }, --Dark Warder's Pauldrons
	{ itemID = 2070212, groupID = 1, refLootEntry = 2060332 }, --Boots of Frostbound Steel
	{ itemID = 2072614, groupID = 1, refLootEntry = 2060332 }, --Gloves of Glacial Grasp
	{ itemID = 2068048, groupID = 1, refLootEntry = 2060332 }, --Leggings of Icesteel
	{ itemID = 2061345, groupID = 1, refLootEntry = 2060332 }, --Mantle of the Frost Warden
	{ itemID = 2062953, groupID = 1, refLootEntry = 2060332 }, --Robe of Blackrock Enclosure
	{ itemID = 2060332, groupID = 1, refLootEntry = 2060332 }, --Stilgiss's Frostcrown
	{ itemID = 2075529, groupID = 1, refLootEntry = 2060332 }, --Stilgiss's Icestaff
	{ itemID = 12637, groupID = 1, refLootEntry = 9596 }, --Backusarian Gauntlets
	{ itemID = 12634, groupID = 1, refLootEntry = 9596 }, --Chiselbrand Girdle
	{ itemID = 12621, groupID = 1, refLootEntry = 9596 }, --Demonfork
	{ itemID = 2070236, groupID = 1, refLootEntry = 2061362 }, --Boots of Ogre Might
	{ itemID = 2062969, groupID = 1, refLootEntry = 2061362 }, --Garb of the Dark Horde
	{ itemID = 2072633, groupID = 1, refLootEntry = 2061362 }, --Gauntlets of Brutal Dominion
	{ itemID = 2066040, groupID = 1, refLootEntry = 2061362 }, --Girdle of Blackened Faith
	{ itemID = 2064187, groupID = 1, refLootEntry = 2061362 }, --Grimaxe Warplate
	{ itemID = 2075593, groupID = 1, refLootEntry = 2061362 }, --Grimaxe's Fellblade
	{ itemID = 2068071, groupID = 1, refLootEntry = 2061362 }, --Legguards of the Spire
	{ itemID = 2061362, groupID = 1, refLootEntry = 2061362 }, --Ogre's Spiremantle
	{ itemID = 2071618, groupID = 1, refLootEntry = 2061362 }, --Wristguards of the Dark Mountain
	{ itemID = 12608, groupID = 1, refLootEntry = 9219 }, --Butcher's Apron
	{ itemID = 13286, groupID = 1, refLootEntry = 9219 }, --Rivenspike
	{ itemID = 2075549, groupID = 1, refLootEntry = 2075549 }, --Butcher's Cleaver of the Blackrock
	{ itemID = 13184, groupID = 1, refLootEntry = 10376 }, --Fallbrush Handgrips
	{ itemID = 13218, groupID = 1, refLootEntry = 10376 }, --Fang of the Crystal Spider
	{ itemID = 13185, groupID = 1, refLootEntry = 10376 }, --Sunderseer Mantle
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
	{ itemID = 13203, groupID = 1, refLootEntry = 9718 }, --Armswake Cloak
	{ itemID = 13204, groupID = 1, refLootEntry = 9718 }, --Bashguuder
	{ itemID = 13198, groupID = 1, refLootEntry = 9718 }, --Hurd Smasher
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
	{ itemID = 13208, groupID = 1, refLootEntry = 10268 }, --Bleak Howler Armguards
	{ itemID = 13205, groupID = 1, refLootEntry = 10268 }, --Rhombeard Protector
	{ itemID = 16718, groupID = 1, refLootEntry = 10268 }, --Wildheart Spaulders
	{ itemID = 13206, groupID = 1, refLootEntry = 10268 }, --Wolfshear Leggings
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
	{ itemID = 13212, groupID = 1, refLootEntry = 10220 }, --Halycon's Spiked Collar
	{ itemID = 22313, groupID = 1, refLootEntry = 10220 }, --Ironweave Bracers
	{ itemID = 13210, groupID = 1, refLootEntry = 10220 }, --Pads of the Dread Wolf
	{ itemID = 13211, groupID = 1, refLootEntry = 10220 }, --Slashclaw Bracers
	{ itemID = 16670, groupID = 1, refLootEntry = 9196 }, --Boots of Elements
	{ itemID = 13167, groupID = 1, refLootEntry = 9196 }, --Fist of Omokk
	{ itemID = 13168, groupID = 1, refLootEntry = 9196 }, --Plate of the Shaman King
	{ itemID = 13170, groupID = 1, refLootEntry = 9196 }, --Skyshroud Leggings
	{ itemID = 13166, groupID = 1, refLootEntry = 9196 }, --Slamshot Shoulders
	{ itemID = 13169, groupID = 1, refLootEntry = 9196 }, --Tressermane Leggings
	{ itemID = 2075540, groupID = 1, refLootEntry = 2075540 }, --Omokk's Crushing Maul
	{ itemID = 12930, groupID = 1, refLootEntry = 10509 }, --Briarwood Reed
	{ itemID = 12605, groupID = 1, refLootEntry = 10509 }, --Serpentine Skuller
	{ itemID = 12604, groupID = 1, refLootEntry = 10509 }, --Starfire Tiara
	{ itemID = 2066047, groupID = 1, refLootEntry = 2061367 }, --Belt of Runic Guardianship
	{ itemID = 2064192, groupID = 1, refLootEntry = 2061367 }, --Chestplate of the Rune Guardian
	{ itemID = 2072640, groupID = 1, refLootEntry = 2061367 }, --Gauntlets of the Runewatcher
	{ itemID = 2070243, groupID = 1, refLootEntry = 2061367 }, --Greaves of Dark Runes
	{ itemID = 2068078, groupID = 1, refLootEntry = 2061367 }, --Legplates of Arcane Vigilance
	{ itemID = 2075661, groupID = 1, refLootEntry = 2061367 }, --Mace of Wardens' Runes
	{ itemID = 2071623, groupID = 1, refLootEntry = 2061367 }, --Rune-Engraved Bracers
	{ itemID = 2061367, groupID = 1, refLootEntry = 2061367 }, --Runewarded Spaulders
	{ itemID = 2078085, groupID = 1, refLootEntry = 2061367 }, --Shield of Blackrock Inscription
	{ itemID = 2062975, groupID = 1, refLootEntry = 2061367 }, --Sigil-Bound Undershirt
	{ itemID = 22336, groupID = 1, refLootEntry = 16042 }, --Draconian Aegis of the Legion
	{ itemID = 22343, groupID = 1, refLootEntry = 16042 }, --Handguards of Savagery
	{ itemID = 22302, groupID = 1, refLootEntry = 16042 }, --Ironweave Cowl
	{ itemID = 22342, groupID = 1, refLootEntry = 16042 }, --Leggings of Torment
	{ itemID = 22335, groupID = 1, refLootEntry = 16042 }, --Lord Valthalak's Staff of Command
	{ itemID = 22340, groupID = 1, refLootEntry = 16042 }, --Pendant of Celerity
	{ itemID = 22339, groupID = 1, refLootEntry = 16042 }, --Rune Band of Wizardry
	{ itemID = 22337, groupID = 1, refLootEntry = 16042 }, --Shroud of Domination
	{ itemID = 2076074, groupID = 1, refLootEntry = 2076074 }, --Valthalak's Shadowrend Staff
	{ itemID = 22325, groupID = 1, refLootEntry = 16080 }, --Belt of the Trickster
	{ itemID = 22398, groupID = 1, refLootEntry = 16080 }, --Idol of Rejuvenation
	{ itemID = 22306, groupID = 1, refLootEntry = 16080 }, --Ironweave Belt
	{ itemID = 22322, groupID = 1, refLootEntry = 16080 }, --The Jaw Breaker
	{ itemID = 22319, groupID = 1, refLootEntry = 16080 }, --Tome of Divine Right
	{ itemID = 2066307, groupID = 1, refLootEntry = 2060519 }, --Ethereal Waistcord
	{ itemID = 2076084, groupID = 1, refLootEntry = 2060519 }, --Ghostly Staff of the Elements
	{ itemID = 2060519, groupID = 1, refLootEntry = 2060519 }, --Grayhoof Spectral Helm
	{ itemID = 2063218, groupID = 1, refLootEntry = 2060519 }, --Haunting Vest of the Ancestors
	{ itemID = 2068370, groupID = 1, refLootEntry = 2060519 }, --Phantom Breeches
	{ itemID = 2072872, groupID = 1, refLootEntry = 2060519 }, --Shamanistic Grips
	{ itemID = 2061575, groupID = 1, refLootEntry = 2060519 }, --Spiritbound Shoulderguards
	{ itemID = 13244, groupID = 1, refLootEntry = 10596 }, --Gilded Gauntlets
	{ itemID = 13213, groupID = 1, refLootEntry = 10596 }, --Smolderweb's Eye
	{ itemID = 13183, groupID = 1, refLootEntry = 10596 }, --Venomspitter
	{ itemID = 16715, groupID = 1, refLootEntry = 10596 }, --Wildheart Boots
	{ itemID = 16679, groupID = 1, refLootEntry = 9568 }, --Beaststalker's Mantle
	{ itemID = 13148, groupID = 1, refLootEntry = 9568 }, --Chillpike
	{ itemID = 13164, groupID = 1, refLootEntry = 9568 }, --Heart of the Scale
	{ itemID = 22321, groupID = 1, refLootEntry = 9568 }, --Heart of Wyrmthalak
	{ itemID = 13143, groupID = 1, refLootEntry = 9568 }, --Mark of the Dragon Lord
	{ itemID = 13162, groupID = 1, refLootEntry = 9568 }, --Reiver Claws
	{ itemID = 13163, groupID = 1, refLootEntry = 9568 }, --Relentless Scythe
	{ itemID = 13161, groupID = 1, refLootEntry = 9568 }, --Trindlehaven Staff
	{ itemID = 2075591, groupID = 1, refLootEntry = 2075591 }, --Wyrmthalak's Spire of Domination
	{ itemID = 12929, groupID = 1, refLootEntry = 9816 }, --Emberfury Talisman
	{ itemID = 12926, groupID = 1, refLootEntry = 9816 }, --Flaming Band
	{ itemID = 16672, groupID = 1, refLootEntry = 9816 }, --Gauntlets of Elements
	{ itemID = 12927, groupID = 1, refLootEntry = 9816 }, --Truestrike Shoulders
	{ itemID = 12905, groupID = 1, refLootEntry = 9816 }, --Wildfire Cape
	{ itemID = 13252, groupID = 1, refLootEntry = 9736 }, --Cloudrunner Girdle
	{ itemID = 13253, groupID = 1, refLootEntry = 9736 }, --Hands of Power
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
	{ itemID = 13284, groupID = 1, refLootEntry = 9218 }, --Swiftdart Battleboots
	{ itemID = 13285, groupID = 1, refLootEntry = 9218 }, --The Blackrock Slicer
	{ itemID = 2075548, groupID = 1, refLootEntry = 2075548 }, --Decapitator's Bloodthirst Axe
	{ itemID = 12651, groupID = 1, refLootEntry = 9236 }, --Blackcrow
	{ itemID = 13257, groupID = 1, refLootEntry = 9236 }, --Demonic Runed Spaulders
	{ itemID = 12626, groupID = 1, refLootEntry = 9236 }, --Funeral Cuffs
	{ itemID = 12653, groupID = 1, refLootEntry = 9236 }, --Riphook
	{ itemID = 16712, groupID = 1, refLootEntry = 9236 }, --Shadowcraft Gloves
	{ itemID = 13255, groupID = 1, refLootEntry = 9236 }, --Trueaim Gauntlets
	{ itemID = 2070249, groupID = 1, refLootEntry = 2061376 }, --Blackrock Footguards
	{ itemID = 2075550, groupID = 1, refLootEntry = 2061376 }, --Bloodcurse Ritual Blade
	{ itemID = 2064198, groupID = 1, refLootEntry = 2061376 }, --Dark Loa's Leather Hauberk
	{ itemID = 2072647, groupID = 1, refLootEntry = 2061376 }, --Hexmaster's Grips
	{ itemID = 2078062, groupID = 1, refLootEntry = 2061376 }, --Night Hexer's Dagger
	{ itemID = 2068087, groupID = 1, refLootEntry = 2061376 }, --Shadowstride Leather Leggings
	{ itemID = 2062984, groupID = 1, refLootEntry = 2061376 }, --Smolderthorn Ritual Garb
	{ itemID = 2066056, groupID = 1, refLootEntry = 2061376 }, --Voodoo-Threaded Waistband
	{ itemID = 2061376, groupID = 1, refLootEntry = 2061376 }, --Vosh'gajin's Hexweave Pauldrons
	{ itemID = 12606, groupID = 1, refLootEntry = 10264 }, --Crystallized Girdle
	{ itemID = 16695, groupID = 1, refLootEntry = 10264 }, --Devout Mantle
	{ itemID = 12589, groupID = 1, refLootEntry = 10264 }, --Dustfeather Sash
	{ itemID = 13371, groupID = 1, refLootEntry = 10264 }, --Father Flame
	{ itemID = 12603, groupID = 1, refLootEntry = 10264 }, --Nightbrace Tunic
	{ itemID = 12609, groupID = 1, refLootEntry = 10264 }, --Polychromatic Visionwrap
	{ itemID = 2075618, groupID = 1, refLootEntry = 2075618 }, --Grappling Flamewreath Halberd
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
	{ itemID = 22232, groupID = 1, refLootEntry = 10584 }, --Marksman's Girdle
	{ itemID = 13259, groupID = 1, refLootEntry = 10584 }, --Ribsteel Footguards
	{ itemID = 13178, groupID = 1, refLootEntry = 10584 }, --Rosewine Circle
	{ itemID = 13258, groupID = 1, refLootEntry = 10584 }, --Slaghide Gauntlets
	{ itemID = 2075664, groupID = 1, refLootEntry = 2075664 }, --Doomhowl's Arcane Cleaver
	{ itemID = 16676, groupID = 1, refLootEntry = 9237 }, --Beaststalker's Gloves
	{ itemID = 13179, groupID = 1, refLootEntry = 9237 }, --Brazecore Armguards
	{ itemID = 28972, groupID = 1, refLootEntry = 9237 }, --Flightblade Throwing Axe
	{ itemID = 22231, groupID = 1, refLootEntry = 9237 }, --Kayser's Boots of Precision
	{ itemID = 12582, groupID = 1, refLootEntry = 9237 }, --Keris of Zul'Serak
	{ itemID = 13177, groupID = 1, refLootEntry = 9237 }, --Talisman of Evasion
	{ itemID = 2075551, groupID = 1, refLootEntry = 2062131 }, --Axe of Voone's Cunning
	{ itemID = 2063642, groupID = 1, refLootEntry = 2062131 }, --Battleworn Shirt of the Blackrock
	{ itemID = 2071949, groupID = 1, refLootEntry = 2062131 }, --Bracers of the Orcish Vanguard
	{ itemID = 2065237, groupID = 1, refLootEntry = 2062131 }, --Chestplate of the War Master
	{ itemID = 2073473, groupID = 1, refLootEntry = 2062131 }, --Gauntlets of Strategic Wrath
	{ itemID = 2067125, groupID = 1, refLootEntry = 2062131 }, --Girdle of Orgrimmar's Might
	{ itemID = 2071329, groupID = 1, refLootEntry = 2062131 }, --Greaves of the Spire Keeper
	{ itemID = 2069321, groupID = 1, refLootEntry = 2062131 }, --Legplates of the Black Dragon's Herald
	{ itemID = 2062131, groupID = 1, refLootEntry = 2062131 }, --Voone's Commanding Pauldrons
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
	{ itemID = 2070220, groupID = 1, refLootEntry = 2060335 }, --Boots of the Black Warpath
	{ itemID = 2064175, groupID = 1, refLootEntry = 2060335 }, --Chestguard of Dire Command
	{ itemID = 2078632, groupID = 1, refLootEntry = 2060335 }, --Crossbow of Smoldering Dominion
	{ itemID = 2060335, groupID = 1, refLootEntry = 2060335 }, --Eyepatch of the Dark Warchief
	{ itemID = 2066030, groupID = 1, refLootEntry = 2060335 }, --Girdle of Blackened Resolve
	{ itemID = 2072621, groupID = 1, refLootEntry = 2060335 }, --Grips of the Warchief's Fury
	{ itemID = 2068055, groupID = 1, refLootEntry = 2060335 }, --Leggings of the Shadow Sire
	{ itemID = 2061350, groupID = 1, refLootEntry = 2060335 }, --Mantle of Blackrock Authority
	{ itemID = 2075642, groupID = 1, refLootEntry = 2060335 }, --Polearm of the Dark Horde
	{ itemID = 13261, groupID = 1, refLootEntry = 9217 }, --Globe of D'sak
	{ itemID = 13283, groupID = 1, refLootEntry = 9217 }, --Magus Ring
	{ itemID = 13282, groupID = 1, refLootEntry = 9217 }, --Ogreseer Tower Boots
	{ itemID = 2075547, groupID = 1, refLootEntry = 2075547 }, --Wizz'Magg's Arcane Conduit
	{ itemID = 13181, groupID = 1, refLootEntry = 10263 }, --Demonskin Gloves
	{ itemID = 13182, groupID = 1, refLootEntry = 10263 }, --Phase Blade
	{ itemID = 2075617, groupID = 1, refLootEntry = 2075617 }, --Flamesurge Edge
	{ itemID = 24359, groupID = 1, refLootEntry = 17941 }, --Princely Reign Leggings
	{ itemID = 24361, groupID = 1, refLootEntry = 17941 }, --Spellfire Longsword
	{ itemID = 24360, groupID = 1, refLootEntry = 17941 }, --Tracker's Belt
	{ itemID = 24357, groupID = 1, refLootEntry = 17941 }, --Vest of Living Lightning
	{ itemID = 24356, groupID = 1, refLootEntry = 17941 }, --Wastewalker Shiv
	{ itemID = 2061629, groupID = 1, refLootEntry = 2061629 }, --Betrayer's Guise
	{ itemID = 2066421, groupID = 1, refLootEntry = 2061629 }, --Deceiver's Cord
	{ itemID = 2068507, groupID = 1, refLootEntry = 2061629 }, --Doubter's Leggings
	{ itemID = 2076299, groupID = 1, refLootEntry = 2061629 }, --Faithless Mace
	{ itemID = 2064519, groupID = 1, refLootEntry = 2061629 }, --Traitor's Vest
	{ itemID = 2072940, groupID = 1, refLootEntry = 2061629 }, --Treachery's Grasp
	{ itemID = 24364, groupID = 1, refLootEntry = 17942 }, --Azureplate Greaves
	{ itemID = 24365, groupID = 1, refLootEntry = 17942 }, --Deft Handguards
	{ itemID = 24366, groupID = 1, refLootEntry = 17942 }, --Scorpid-Sting Mantle
	{ itemID = 24362, groupID = 1, refLootEntry = 17942 }, --Spore-Soaked Vaneer
	{ itemID = 24363, groupID = 1, refLootEntry = 17942 }, --Unscarred Breastplate
	{ itemID = 24379, groupID = 1, refLootEntry = 17991 }, --Bogstrok Scale Cloak
	{ itemID = 24380, groupID = 1, refLootEntry = 17991 }, --Calming Spore Reed
	{ itemID = 24378, groupID = 1, refLootEntry = 17991 }, --Coilfang Hammer of Renewal
	{ itemID = 24381, groupID = 1, refLootEntry = 17991 }, --Coilfang Needler
	{ itemID = 24376, groupID = 1, refLootEntry = 17991 }, --Runed Fungalcap
	{ itemID = 27787, groupID = 1, refLootEntry = 17797 }, --Chestguard of No Remorse
	{ itemID = 27789, groupID = 1, refLootEntry = 17797 }, --Cloak of Whispering Shells
	{ itemID = 27508, groupID = 1, refLootEntry = 17797 }, --Incanter's Gloves
	{ itemID = 27783, groupID = 1, refLootEntry = 17797 }, --Moonrage Girdle
	{ itemID = 27784, groupID = 1, refLootEntry = 17797 }, --Scintillating Coral Band
	{ itemID = 2076275, groupID = 1, refLootEntry = 2076275 }, --Riptide Staff of the Stormbinder
	{ itemID = 27793, groupID = 1, refLootEntry = 17796 }, --Earth Mantle Handwraps
	{ itemID = 27790, groupID = 1, refLootEntry = 17796 }, --Mask of Penance
	{ itemID = 27794, groupID = 1, refLootEntry = 17796 }, --Recoilless Rocket Ripper X-54
	{ itemID = 27791, groupID = 1, refLootEntry = 17796 }, --Serpentcrest Life-Staff
	{ itemID = 27792, groupID = 1, refLootEntry = 17796 }, --Steam-Hinge Chain of Valor
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
	{ itemID = 2063341, groupID = 1, refLootEntry = 2061802 }, --Aquamarine Garment
	{ itemID = 2078754, groupID = 1, refLootEntry = 2061802 }, --Coilfang Blade
	{ itemID = 2073099, groupID = 1, refLootEntry = 2061802 }, --Hydrograsp Gauntlets
	{ itemID = 2076276, groupID = 1, refLootEntry = 2061802 }, --Neptulon's Spear
	{ itemID = 2064782, groupID = 1, refLootEntry = 2061802 }, --Steamvault Chestguard
	{ itemID = 2061802, groupID = 1, refLootEntry = 2061802 }, --Tidal Mantle of the Warlord
	{ itemID = 2066632, groupID = 1, refLootEntry = 2061802 }, --Waistguard of the Depths
	{ itemID = 24459, groupID = 1, refLootEntry = 18105 }, --Cloak of Healing Rays
	{ itemID = 24461, groupID = 1, refLootEntry = 18105 }, --Hatebringer
	{ itemID = 24462, groupID = 1, refLootEntry = 18105 }, --Luminous Pearls of Insight
	{ itemID = 24458, groupID = 1, refLootEntry = 18105 }, --Studded Girdle of Virtue
	{ itemID = 24460, groupID = 1, refLootEntry = 18105 }, --Talisman of Tenacity
	{ itemID = 24451, groupID = 1, refLootEntry = 17770 }, --Lykul Bloodbands
	{ itemID = 24450, groupID = 1, refLootEntry = 17770 }, --Manaspark Gloves
	{ itemID = 27631, groupID = 1, refLootEntry = 17770 }, --Needle Shrike
	{ itemID = 24452, groupID = 1, refLootEntry = 17770 }, --Starlight Gauntlets
	{ itemID = 24413, groupID = 1, refLootEntry = 17770 }, --Totem of the Thunderhead
	{ itemID = 24454, groupID = 1, refLootEntry = 17826 }, --Cloak of Enduring Swiftness
	{ itemID = 24456, groupID = 1, refLootEntry = 17826 }, --Greaves of the Iron Guardian
	{ itemID = 24457, groupID = 1, refLootEntry = 17826 }, --Truth Bearer Shoulderguards
	{ itemID = 24455, groupID = 1, refLootEntry = 17826 }, --Tunic of the Nightwatcher
	{ itemID = 24453, groupID = 1, refLootEntry = 17826 }, --Zangartooth Shortblade
	{ itemID = 2066521, groupID = 1, refLootEntry = 2061716 }, --Belt of the Broken Marsh
	{ itemID = 2071767, groupID = 1, refLootEntry = 2061716 }, --Bindings of the Lost Draenei
	{ itemID = 2068616, groupID = 1, refLootEntry = 2061716 }, --Bogstalker Leggings
	{ itemID = 2078209, groupID = 1, refLootEntry = 2061716 }, --Bow of the Twisted Underbog
	{ itemID = 2073023, groupID = 1, refLootEntry = 2061716 }, --Clawhandler's Grips
	{ itemID = 2070701, groupID = 1, refLootEntry = 2061716 }, --Fenstrider Boots
	{ itemID = 2076287, groupID = 1, refLootEntry = 2061716 }, --Fist of the Nether Swamp
	{ itemID = 2061716, groupID = 1, refLootEntry = 2061716 }, --Musel'ek's Mire Mantle
	{ itemID = 2063301, groupID = 1, refLootEntry = 2061716 }, --Swamplord's Corrupted Jerkin
	{ itemID = 24463, groupID = 1, refLootEntry = 17882 }, --Pauldrons of Brute Force
	{ itemID = 24481, groupID = 1, refLootEntry = 17882 }, --Robes of the Augurer
	{ itemID = 24465, groupID = 1, refLootEntry = 17882 }, --Shamblehide Chestguard
	{ itemID = 24466, groupID = 1, refLootEntry = 17882 }, --Skulldugger's Leggings
	{ itemID = 24464, groupID = 1, refLootEntry = 17882 }, --The Stalker's Fangs
	{ itemID = 10403, groupID = 1, refLootEntry = 647 }, --Blackened Defias Belt
	{ itemID = 5201, groupID = 1, refLootEntry = 647 }, --Emberstone Staff
	{ itemID = 5200, groupID = 1, refLootEntry = 647 }, --Impaling Harpoon
	{ itemID = 2067944, groupID = 1, refLootEntry = 2060296 }, --Buccaneer's Breeches
	{ itemID = 2065937, groupID = 1, refLootEntry = 2060296 }, --Corsair's Binding Cord
	{ itemID = 2070101, groupID = 1, refLootEntry = 2060296 }, --Deckhand's Treaders
	{ itemID = 2062866, groupID = 1, refLootEntry = 2060296 }, --Defias Sorcerer's Tunic
	{ itemID = 2060296, groupID = 1, refLootEntry = 2060296 }, --Greenskin's Enchanted Hat
	{ itemID = 2074202, groupID = 1, refLootEntry = 2060296 }, --Harpoon of the Seawolf
	{ itemID = 5198, groupID = 1, refLootEntry = 645 }, --Cookie's Stirring Rod
	{ itemID = 5197, groupID = 1, refLootEntry = 645 }, --Cookie's Tenderizer
	{ itemID = 2074200, groupID = 1, refLootEntry = 2074200 }, --Cookie's Culinary Codex
	{ itemID = 10399, groupID = 1, refLootEntry = 639 }, --Blackened Defias Armor
	{ itemID = 5193, groupID = 1, refLootEntry = 639 }, --Cape of the Brotherhood
	{ itemID = 5202, groupID = 1, refLootEntry = 639 }, --Corsair's Overshirt
	{ itemID = 5191, groupID = 1, refLootEntry = 639 }, --Cruel Barb
	{ itemID = 2062270, groupID = 1, refLootEntry = 2060010 }, --Chestguard of the Reclaimed
	{ itemID = 2061091, groupID = 1, refLootEntry = 2060010 }, --Defiant Mantle
	{ itemID = 2072047, groupID = 1, refLootEntry = 2060010 }, --Hands of the Betrayed Artisan
	{ itemID = 2074197, groupID = 1, refLootEntry = 2060010 }, --Saber of the Lost Mason
	{ itemID = 2060010, groupID = 1, refLootEntry = 2060010 }, --Stonemason's Visage
	{ itemID = 2077903, groupID = 1, refLootEntry = 2060010 }, --Sword of the Defias Leader
	{ itemID = 2069517, groupID = 1, refLootEntry = 2060010 }, --Treads of the Insurgent
	{ itemID = 2067300, groupID = 1, refLootEntry = 2060010 }, --VanCleef's Leggings of Rebellion
	{ itemID = 1156, groupID = 1, refLootEntry = 1763 }, --Lavishly Jeweled Ring
	{ itemID = 5199, groupID = 1, refLootEntry = 1763 }, --Smelting Pants
	{ itemID = 2070103, groupID = 1, refLootEntry = 2062869 }, --Ember-Scorched Footguards
	{ itemID = 2062869, groupID = 1, refLootEntry = 2062869 }, --Foreman's Melted Chestguard
	{ itemID = 2074446, groupID = 1, refLootEntry = 2062869 }, --Forgemaster's One-Handed Mallet
	{ itemID = 2065939, groupID = 1, refLootEntry = 2062869 }, --Ore-Tempered Waistwrap
	{ itemID = 2067947, groupID = 1, refLootEntry = 2062869 }, --Searing Metallurgy Leggings
	{ itemID = 2072536, groupID = 1, refLootEntry = 2062869 }, --Smelter's Grasping Gloves
	{ itemID = 5443, groupID = 1, refLootEntry = 3586 }, --Gold-plated Buckler
	{ itemID = 5444, groupID = 1, refLootEntry = 3586 }, --Miner's Cape
	{ itemID = 2066951, groupID = 1, refLootEntry = 2060859 }, --Belt of the Forlorn Marauder
	{ itemID = 2071136, groupID = 1, refLootEntry = 2060859 }, --Boots of Wayward Resolve
	{ itemID = 2073321, groupID = 1, refLootEntry = 2060859 }, --Gloves of Grudging Labor
	{ itemID = 2069110, groupID = 1, refLootEntry = 2060859 }, --Leggings of the Mineshaft
	{ itemID = 2060859, groupID = 1, refLootEntry = 2060859 }, --Rebel's Helm of Vigilance
	{ itemID = 2074842, groupID = 1, refLootEntry = 2060859 }, --Reckoning Pickaxe
	{ itemID = 2063525, groupID = 1, refLootEntry = 2060859 }, --Stonemason's Defiant Chestguard
	{ itemID = 7230, groupID = 1, refLootEntry = 646 }, --Smite's Mighty Hammer
	{ itemID = 5196, groupID = 1, refLootEntry = 646 }, --Smite's Reaver
	{ itemID = 5192, groupID = 1, refLootEntry = 646 }, --Thief's Blade
	{ itemID = 2074201, groupID = 1, refLootEntry = 2062269 }, --Anchorblade
	{ itemID = 2062269, groupID = 1, refLootEntry = 2062269 }, --First Mate's Robe
	{ itemID = 2067299, groupID = 1, refLootEntry = 2062269 }, --Seafarer's Trousers
	{ itemID = 5187, groupID = 1, refLootEntry = 644 }, --Rhahk'Zor's Hammer
	{ itemID = 872, groupID = 1, refLootEntry = 644 }, --Rockslicer
	{ itemID = 2074199, groupID = 1, refLootEntry = 2074199 }, --Rhahk'Zor's Pulverizing Greatmaul
	{ itemID = 1937, groupID = 1, refLootEntry = 642 }, --Buzz Saw
	{ itemID = 2169, groupID = 1, refLootEntry = 642 }, --Buzzer Blade
	{ itemID = 5195, groupID = 1, refLootEntry = 642 }, --Gold-flecked Gloves
	{ itemID = 5194, groupID = 1, refLootEntry = 642 }, --Taskmaster Axe
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
	{ itemID = 18507, groupID = 1, refLootEntry = 14325 }, --Boots of the Full Moon
	{ itemID = 18503, groupID = 1, refLootEntry = 14325 }, --Kromcrush's Chestplate
	{ itemID = 18502, groupID = 1, refLootEntry = 14325 }, --Monstrous Glaive
	{ itemID = 18505, groupID = 1, refLootEntry = 14325 }, --Mugger's Belt
	{ itemID = 2075993, groupID = 1, refLootEntry = 2075993 }, --Kromcrush's Dualblade
	{ itemID = 18484, groupID = 1, refLootEntry = 14324 }, --Cho'Rush's Blade
	{ itemID = 18490, groupID = 1, refLootEntry = 14324 }, --Insightful Hood
	{ itemID = 18483, groupID = 1, refLootEntry = 14324 }, --Mana Channeling Wand
	{ itemID = 18485, groupID = 1, refLootEntry = 14324 }, --Observer's Shield
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
	{ itemID = 18305, groupID = 1, refLootEntry = 13280 }, --Breakwater Legguards
	{ itemID = 18307, groupID = 1, refLootEntry = 13280 }, --Riptide Shoes
	{ itemID = 18317, groupID = 1, refLootEntry = 13280 }, --Tempest Talisman
	{ itemID = 18322, groupID = 1, refLootEntry = 13280 }, --Waterspout Boots
	{ itemID = 18324, groupID = 1, refLootEntry = 13280 }, --Waveslicer
	{ itemID = 18383, groupID = 1, refLootEntry = 11488 }, --Force Imbued Gauntlets
	{ itemID = 18349, groupID = 1, refLootEntry = 11488 }, --Gauntlets of Accuracy
	{ itemID = 18386, groupID = 1, refLootEntry = 11488 }, --Padre's Trousers
	{ itemID = 18347, groupID = 1, refLootEntry = 11488 }, --Well Balanced Axe
	{ itemID = 2075745, groupID = 1, refLootEntry = 2061470 }, --Blade of the Ancient Grove
	{ itemID = 2064298, groupID = 1, refLootEntry = 2061470 }, --Guardian's Embrace
	{ itemID = 2068224, groupID = 1, refLootEntry = 2061470 }, --Leafbound Leggings
	{ itemID = 2070381, groupID = 1, refLootEntry = 2061470 }, --Pathfinder's Treads
	{ itemID = 2061470, groupID = 1, refLootEntry = 2061470 }, --Ravenoak's Arcane Mantle
	{ itemID = 2078643, groupID = 1, refLootEntry = 2061470 }, --Sentinel's Longbow
	{ itemID = 2066176, groupID = 1, refLootEntry = 2061470 }, --Wildsweaver Belt
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
	{ itemID = 18522, groupID = 1, refLootEntry = 11501 }, --Band of the Ogre King
	{ itemID = 18520, groupID = 1, refLootEntry = 11501 }, --Barbarous Blade
	{ itemID = 18525, groupID = 1, refLootEntry = 11501 }, --Bracers of Prosperity
	{ itemID = 18523, groupID = 1, refLootEntry = 11501 }, --Brightly Glowing Stone
	{ itemID = 18526, groupID = 1, refLootEntry = 11501 }, --Crown of the Ogre King
	{ itemID = 18521, groupID = 1, refLootEntry = 11501 }, --Grimy Metal Boots
	{ itemID = 18527, groupID = 1, refLootEntry = 11501 }, --Harmonious Gauntlets
	{ itemID = 18524, groupID = 1, refLootEntry = 11501 }, --Leggings of Destruction
	{ itemID = 2075747, groupID = 1, refLootEntry = 2075747 }, --Bloodthirster of the Gordok King
	{ itemID = 18302, groupID = 1, refLootEntry = 14327 }, --Band of Vigor
	{ itemID = 18325, groupID = 1, refLootEntry = 14327 }, --Felhide Cap
	{ itemID = 18301, groupID = 1, refLootEntry = 14327 }, --Lethtendris's Wand
	{ itemID = 18354, groupID = 1, refLootEntry = 14327 }, --Pimgib's Collar
	{ itemID = 18311, groupID = 1, refLootEntry = 14327 }, --Quel'dorei Channeling Rod
	{ itemID = 2066685, groupID = 1, refLootEntry = 2064835 }, --Girdle of Eldritch Wards
	{ itemID = 2068811, groupID = 1, refLootEntry = 2064835 }, --Leggings of Dark Incantations
	{ itemID = 2064835, groupID = 1, refLootEntry = 2064835 }, --Robe of Arcane Whispers
	{ itemID = 2070881, groupID = 1, refLootEntry = 2064835 }, --Slippers of Shadowed Paths
	{ itemID = 2075995, groupID = 1, refLootEntry = 2064835 }, --Staff of Demonic Empowerment
	{ itemID = 18757, groupID = 0, refLootEntry = 14506 }, --Diabolic Mantle
	{ itemID = 18756, groupID = 1, refLootEntry = 14506 }, --Dreadguard's Protector
	{ itemID = 18754, groupID = 1, refLootEntry = 14506 }, --Fel Hardened Bracers
	{ itemID = 18755, groupID = 1, refLootEntry = 14506 }, --Xorothian Firestick
	{ itemID = 18350, groupID = 1, refLootEntry = 11487 }, --Amplifying Cloak
	{ itemID = 18397, groupID = 1, refLootEntry = 11487 }, --Elder Magus Pendant
	{ itemID = 18374, groupID = 1, refLootEntry = 11487 }, --Flamescarred Shoulders
	{ itemID = 18351, groupID = 1, refLootEntry = 11487 }, --Magically Sealed Bracers
	{ itemID = 18371, groupID = 1, refLootEntry = 11487 }, --Mindtap Talisman
	{ itemID = 2068338, groupID = 1, refLootEntry = 2063190 }, --Eldre'Thalas Ritual Leggings
	{ itemID = 2066279, groupID = 1, refLootEntry = 2063190 }, --Highborne Aether Sash
	{ itemID = 2064392, groupID = 1, refLootEntry = 2063190 }, --Magister's Enchanted Robe
	{ itemID = 2070488, groupID = 1, refLootEntry = 2063190 }, --Shadowform Tainted Slippers
	{ itemID = 2071702, groupID = 1, refLootEntry = 2063190 }, --Shen'dralar Warding Bracers
	{ itemID = 2063190, groupID = 1, refLootEntry = 2063190 }, --Sorcerer's Arcane Tunic
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
	{ itemID = 2075744, groupID = 1, refLootEntry = 2060435 }, --Axe of the Fallen Highborne
	{ itemID = 2064297, groupID = 1, refLootEntry = 2060435 }, --Breastplate of the Corrupted Prince
	{ itemID = 2060435, groupID = 1, refLootEntry = 2060435 }, --Crown of the Arcane Highborne
	{ itemID = 2072757, groupID = 1, refLootEntry = 2060435 }, --Gauntlets of the Ancient Tyrant
	{ itemID = 2066175, groupID = 1, refLootEntry = 2060435 }, --Girdle of Enchanted Power
	{ itemID = 2068223, groupID = 1, refLootEntry = 2060435 }, --Legplates of the Forsaken Lineage
	{ itemID = 2070380, groupID = 1, refLootEntry = 2060435 }, --Sabatons of Eternal Ambition
	{ itemID = 2061469, groupID = 1, refLootEntry = 2060435 }, --Shoulderguards of Demonic Pacts
	{ itemID = 2063093, groupID = 1, refLootEntry = 2060435 }, --Vestments of Eldre'Thalas
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
	{ itemID = 18352, groupID = 1, refLootEntry = 11489 }, --Petrified Bark Shield
	{ itemID = 18353, groupID = 1, refLootEntry = 11489 }, --Stoneflower Staff
	{ itemID = 18390, groupID = 1, refLootEntry = 11489 }, --Tanglemoss Leggings
	{ itemID = 18393, groupID = 1, refLootEntry = 11489 }, --Warpwood Binding
	{ itemID = 18387, groupID = 1, refLootEntry = 11467 }, --Brightspark Gloves
	{ itemID = 18345, groupID = 1, refLootEntry = 11467 }, --Murmuring Ring
	{ itemID = 18346, groupID = 1, refLootEntry = 11467 }, --Threadbare Trousers
	{ itemID = 2075741, groupID = 1, refLootEntry = 2061468 }, --Blade of Lingering Woe
	{ itemID = 2068222, groupID = 1, refLootEntry = 2061468 }, --Echoing Fate Trousers
	{ itemID = 2064296, groupID = 1, refLootEntry = 2061468 }, --Eldre'Thalas Shroud
	{ itemID = 2070379, groupID = 1, refLootEntry = 2061468 }, --Haunting Step Slippers
	{ itemID = 2061468, groupID = 1, refLootEntry = 2061468 }, --Spectral Whisper Shoulderpads
	{ itemID = 2063092, groupID = 1, refLootEntry = 2061468 }, --Veil of the Phantasmal
	{ itemID = 2071657, groupID = 1, refLootEntry = 2061468 }, --Wristbands of the Eternal
	{ itemID = 18308, groupID = 1, refLootEntry = 11490 }, --Clever Hat
	{ itemID = 18319, groupID = 1, refLootEntry = 11490 }, --Fervent Helm
	{ itemID = 18306, groupID = 1, refLootEntry = 11490 }, --Gloves of Shadowy Mist
	{ itemID = 18313, groupID = 1, refLootEntry = 11490 }, --Helm of Awareness
	{ itemID = 18323, groupID = 1, refLootEntry = 11490 }, --Satyr's Bow
	{ itemID = 2077759, groupID = 1, refLootEntry = 2077759 }, --Frostbite Cleaver
	{ itemID = 2078897, groupID = 1, refLootEntry = 2077759 }, --Glacier's Whisper
	{ itemID = 406004, groupID = 1, refLootEntry = 6229 }, --Calibrated Puncher
	{ itemID = 9450, groupID = 1, refLootEntry = 6229 }, --Gnomebot Operating Boots
	{ itemID = 9449, groupID = 1, refLootEntry = 6229 }, --Manual Crowd Pummeler
	{ itemID = 9455, groupID = 1, refLootEntry = 6228 }, --Emissary Cuffs
	{ itemID = 9456, groupID = 1, refLootEntry = 6228 }, --Glass Shooter
	{ itemID = 9457, groupID = 1, refLootEntry = 6228 }, --Royal Diplomatic Scepter
	{ itemID = 2065872, groupID = 1, refLootEntry = 2060261 }, --Belt of Cinderweave
	{ itemID = 2070034, groupID = 1, refLootEntry = 2060261 }, --Boots of the Luminous Depths
	{ itemID = 2060261, groupID = 1, refLootEntry = 2060261 }, --Cowl of Fiery Intrigue
	{ itemID = 2072484, groupID = 1, refLootEntry = 2060261 }, --Gloves of the Hidden Pyre
	{ itemID = 2061272, groupID = 1, refLootEntry = 2060261 }, --Mantle of the Emberborn
	{ itemID = 2062793, groupID = 1, refLootEntry = 2060261 }, --Robe of Dark Conspiracy
	{ itemID = 2075302, groupID = 1, refLootEntry = 2060261 }, --Staff of Radiant Subterfuge
	{ itemID = 2067870, groupID = 1, refLootEntry = 2060261 }, --Trousers of Shadowflame
	{ itemID = 9447, groupID = 1, refLootEntry = 6235 }, --Electrocutioner Lagnut
	{ itemID = 9446, groupID = 1, refLootEntry = 6235 }, --Electrocutioner Leg
	{ itemID = 9448, groupID = 1, refLootEntry = 6235 }, --Spidertank Oilrag
	{ itemID = 9445, groupID = 1, refLootEntry = 7361 }, --Grubbis Paws
	{ itemID = 9461, groupID = 1, refLootEntry = 7800 }, --Charged Gear
	{ itemID = 9492, groupID = 1, refLootEntry = 7800 }, --Electromagnetic Gigaflux Reactivator
	{ itemID = 9458, groupID = 1, refLootEntry = 7800 }, --Thermaplugg's Central Core
	{ itemID = 9459, groupID = 1, refLootEntry = 7800 }, --Thermaplugg's Left Arm
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
	{ itemID = 9454, groupID = 1, refLootEntry = 7079 }, --Acidic Walkers
	{ itemID = 9452, groupID = 1, refLootEntry = 7079 }, --Hydrocane
	{ itemID = 9453, groupID = 1, refLootEntry = 7079 }, --Toxic Revenger
	{ itemID = 24090, groupID = 1, refLootEntry = 17308 }, --Bloodstained Ravager Gauntlets
	{ itemID = 24069, groupID = 1, refLootEntry = 17308 }, --Crystalfire Staff
	{ itemID = 24073, groupID = 1, refLootEntry = 17308 }, --Garrote-String Necklace
	{ itemID = 24094, groupID = 1, refLootEntry = 17308 }, --Heart Fire Warhammer
	{ itemID = 24096, groupID = 1, refLootEntry = 17308 }, --Heartblood Prayer Beads
	{ itemID = 24091, groupID = 1, refLootEntry = 17308 }, --Tenacious Defender
	{ itemID = 24023, groupID = 1, refLootEntry = 17306 }, --Bracers of Finesse
	{ itemID = 24021, groupID = 1, refLootEntry = 17306 }, --Light-Touched Breastplate
	{ itemID = 24024, groupID = 1, refLootEntry = 17306 }, --Pauldrons of Arcane Rage
	{ itemID = 24022, groupID = 1, refLootEntry = 17306 }, --Scale Leggings of the Skirmisher
	{ itemID = 24020, groupID = 1, refLootEntry = 17306 }, --Shadowrend Longblade
	{ itemID = 24392, groupID = 1, refLootEntry = 17380 }, --Arcing Bracers
	{ itemID = 24390, groupID = 1, refLootEntry = 17380 }, --Auslese's Light Channeler
	{ itemID = 24393, groupID = 1, refLootEntry = 17380 }, --Bloody Surgeon's Mitts
	{ itemID = 24391, groupID = 1, refLootEntry = 17380 }, --Kilt of the Night Strider
	{ itemID = 24389, groupID = 1, refLootEntry = 17380 }, --Legion Blunderbuss
	{ itemID = 24398, groupID = 1, refLootEntry = 17377 }, --Mantle of the Dusk-Dweller
	{ itemID = 24395, groupID = 1, refLootEntry = 17377 }, --Mindfire Waistband
	{ itemID = 24397, groupID = 1, refLootEntry = 17377 }, --Raiments of Divine Authority
	{ itemID = 24396, groupID = 1, refLootEntry = 17377 }, --Vest of Vengeance
	{ itemID = 24394, groupID = 1, refLootEntry = 17377 }, --Warsong Howling Axe
	{ itemID = 2066390, groupID = 1, refLootEntry = 2061613 }, --Belt of Infernal Dominance
	{ itemID = 2070603, groupID = 1, refLootEntry = 2061613 }, --Boots of Chaotic Energy
	{ itemID = 2072920, groupID = 1, refLootEntry = 2061613 }, --Gloves of the Breaker
	{ itemID = 2068474, groupID = 1, refLootEntry = 2061613 }, --Leggings of Demonic Influence
	{ itemID = 2061613, groupID = 1, refLootEntry = 2061613 }, --Mantle of Fel Ruin
	{ itemID = 2064496, groupID = 1, refLootEntry = 2061613 }, --Robes of the Dark Council
	{ itemID = 2076235, groupID = 1, refLootEntry = 2061613 }, --Staff of Fel Manipulation
	{ itemID = 2063253, groupID = 1, refLootEntry = 2061613 }, --Vestments of Shadow Power
	{ itemID = 24384, groupID = 1, refLootEntry = 17381 }, --Diamond-Core Sledgemace
	{ itemID = 24388, groupID = 1, refLootEntry = 17381 }, --Girdle of the Gale Storm
	{ itemID = 24387, groupID = 1, refLootEntry = 17381 }, --Ironblade Gauntlets
	{ itemID = 24386, groupID = 1, refLootEntry = 17381 }, --Libram of Saints Departed
	{ itemID = 24385, groupID = 1, refLootEntry = 17381 }, --Pendant of Battle-Lust
	{ itemID = 30708, groupID = 1, refLootEntry = 20923 }, --Belt of Flowing Thought
	{ itemID = 30710, groupID = 1, refLootEntry = 20923 }, --Blood Guard's Necklace of Ferocity
	{ itemID = 30707, groupID = 1, refLootEntry = 20923 }, --Nimble-foot Treads
	{ itemID = 30709, groupID = 1, refLootEntry = 20923 }, --Pantaloons of Flaming Wrath
	{ itemID = 30705, groupID = 1, refLootEntry = 20923 }, --Spaulders of Slaughter
	{ itemID = 2063266, groupID = 1, refLootEntry = 2061628 }, --Blood Guard's Defiled Tabard
	{ itemID = 2070624, groupID = 1, refLootEntry = 2061628 }, --Dreadmarch Stompers
	{ itemID = 2064518, groupID = 1, refLootEntry = 2061628 }, --Felheart Chestguard of the Guard
	{ itemID = 2072939, groupID = 1, refLootEntry = 2061628 }, --Grips of the Shattered Halls
	{ itemID = 2061628, groupID = 1, refLootEntry = 2061628 }, --Infernal Shoulderplates of Porung
	{ itemID = 2068506, groupID = 1, refLootEntry = 2061628 }, --Legplates of Demonic Might
	{ itemID = 2066420, groupID = 1, refLootEntry = 2061628 }, --Warworn Girdle of Savagery
	{ itemID = 27517, groupID = 1, refLootEntry = 16807 }, --Bands of Nethekurse
	{ itemID = 27519, groupID = 1, refLootEntry = 16807 }, --Cloak of Malice
	{ itemID = 27520, groupID = 1, refLootEntry = 16807 }, --Greathelm of the Unbreakable
	{ itemID = 27518, groupID = 1, refLootEntry = 16807 }, --Ivory Idol of the Moongoddess
	{ itemID = 27521, groupID = 1, refLootEntry = 16807 }, --Telaari Hunting Girdle
	{ itemID = 2070580, groupID = 1, refLootEntry = 2060554 }, --Footsteps of the Dark Pact
	{ itemID = 2072903, groupID = 1, refLootEntry = 2060554 }, --Grips of the Infernal Betrayer
	{ itemID = 2068443, groupID = 1, refLootEntry = 2060554 }, --Legwraps of Fel Corruption
	{ itemID = 2060554, groupID = 1, refLootEntry = 2060554 }, --Nethekurse's Hood of the Fel Shaman
	{ itemID = 2076149, groupID = 1, refLootEntry = 2060554 }, --Nethekurse's Warblade of Discord
	{ itemID = 2064475, groupID = 1, refLootEntry = 2060554 }, --Robe of the Corrupted Shadowmoon
	{ itemID = 2061597, groupID = 1, refLootEntry = 2060554 }, --Shoulderguards of Twisted Legacies
	{ itemID = 27524, groupID = 1, refLootEntry = 16809 }, --Firemaul of Destruction
	{ itemID = 27525, groupID = 1, refLootEntry = 16809 }, --Jeweled Boots of Sanctification
	{ itemID = 27868, groupID = 1, refLootEntry = 16809 }, --Runesong Dagger
	{ itemID = 245159, groupID = 1, refLootEntry = 16809 }, --Shoulderguards of the Tides
	{ itemID = 27526, groupID = 1, refLootEntry = 16809 }, --Skyfire Hawk-Bow
	{ itemID = 27802, groupID = 1, refLootEntry = 16809 }, --Tidefury Shoulderguards
	{ itemID = 2076150, groupID = 1, refLootEntry = 2076150 }, --Fiery Maul of O'mrogg
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
	{ itemID = 34609, groupID = 2, refLootEntry = 24664 }, --Quickening Blade of the Prince
	{ itemID = 34789, groupID = 1, refLootEntry = 24560 }, --Bracers of Slaughter
	{ itemID = 34792, groupID = 1, refLootEntry = 24560 }, --Cloak of the Betrayed
	{ itemID = 34700, groupID = 1, refLootEntry = 24560 }, --Gauntlets of Divine Blessings
	{ itemID = 34791, groupID = 1, refLootEntry = 24560 }, --Gauntlets of the Tranquil Waves
	{ itemID = 34603, groupID = 1, refLootEntry = 24723 }, --Distracting Blades
	{ itemID = 34602, groupID = 1, refLootEntry = 24723 }, --Eversong Cuffs
	{ itemID = 34808, groupID = 1, refLootEntry = 24723 }, --Gloves of Arcane Acuity
	{ itemID = 34799, groupID = 1, refLootEntry = 24723 }, --Hauberk of the War Bringer
	{ itemID = 34604, groupID = 1, refLootEntry = 24723 }, --Jaded Crystal Dagger
	{ itemID = 34601, groupID = 1, refLootEntry = 24723 }, --Shoulderplates of Everlasting Pain
	{ itemID = 34605, groupID = 1, refLootEntry = 24744 }, --Breastplate of Fierce Survival
	{ itemID = 34810, groupID = 1, refLootEntry = 24744 }, --Cloak of Blade Turning
	{ itemID = 34606, groupID = 1, refLootEntry = 24744 }, --Edge of Oppression
	{ itemID = 34607, groupID = 1, refLootEntry = 24744 }, --Fel-tinged Mantle
	{ itemID = 34703, groupID = 1, refLootEntry = 24744 }, --Latro's Dancing Blade
	{ itemID = 34608, groupID = 1, refLootEntry = 24744 }, --Rod of the Blazing Light
	{ itemID = 2075820, groupID = 1, refLootEntry = 2075820 }, --Branch of the Cursed Grove
	{ itemID = 2078661, groupID = 1, refLootEntry = 2075821 }, --Corrupting Wildfire Bow
	{ itemID = 2075821, groupID = 1, refLootEntry = 2075821 }, --Vyletongue's Shadowfang
	{ itemID = 1169, groupID = 1, refLootEntry = 24082 }, --Blackskull Shield
	{ itemID = 871, groupID = 1, refLootEntry = 24082 }, --Flurry Axe
	{ itemID = 1447, groupID = 1, refLootEntry = 24082 }, --Ring of Saviors
	{ itemID = 940, groupID = 1, refLootEntry = 24082 }, --Robes of Insight
	{ itemID = 2078726, groupID = 1, refLootEntry = 2075960 }, --Theradras' Spirit Cutter
	{ itemID = 2075960, groupID = 1, refLootEntry = 2075960 }, --Zaetar's Legacy Polearm
	{ itemID = 17713, groupID = 1, refLootEntry = 35009 }, --Blackstone Ring
	{ itemID = 17780, groupID = 1, refLootEntry = 35009 }, --Blade of Eternal Darkness
	{ itemID = 17714, groupID = 1, refLootEntry = 35009 }, --Bracers of the Stone Princess
	{ itemID = 17710, groupID = 1, refLootEntry = 35009 }, --Charstone Dirk
	{ itemID = 17711, groupID = 1, refLootEntry = 35009 }, --Elemental Rockridge Leggings
	{ itemID = 17715, groupID = 1, refLootEntry = 35009 }, --Eye of Theradras
	{ itemID = 17707, groupID = 1, refLootEntry = 35009 }, --Gemshard Heart
	{ itemID = 17766, groupID = 1, refLootEntry = 35009 }, --Princess Theradras' Scepter
	{ itemID = 2078151, groupID = 1, refLootEntry = 2062870 }, --Barrier of Gears and Sparks
	{ itemID = 2075957, groupID = 1, refLootEntry = 2062870 }, --Blade of Ingenious Design
	{ itemID = 2078724, groupID = 1, refLootEntry = 2062870 }, --Engineer's Precision Rifle
	{ itemID = 2062870, groupID = 1, refLootEntry = 2062870 }, --Gizlock's Ingenious Chestplate
	{ itemID = 2072537, groupID = 1, refLootEntry = 2062870 }, --Innovator's Grips
	{ itemID = 2070104, groupID = 1, refLootEntry = 2062870 }, --Mechanized Footguards
	{ itemID = 2067948, groupID = 1, refLootEntry = 2062870 }, --Tinkering Legguards
	{ itemID = 2065940, groupID = 1, refLootEntry = 2062870 }, --Waistband of Goblin Craft
	{ itemID = 2078725, groupID = 1, refLootEntry = 2075959 }, --Bow of Manifest Harmony
	{ itemID = 2075959, groupID = 1, refLootEntry = 2075959 }, --Spirit Keeper's Cleaver
	{ itemID = 14151, groupID = 1, refLootEntry = 11519 }, --Chanting Blade
	{ itemID = 2179, groupID = 1, refLootEntry = 11519 }, --Satyr's Scimitar
	{ itemID = 2075750, groupID = 1, refLootEntry = 2075750 }, --Blade of Sinister Venom
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
	{ itemID = 68194, groupID = 1, refLootEntry = 11517 }, --Oggleflint's Inspirer
	{ itemID = 14149, groupID = 1, refLootEntry = 11517 }, --Subterranean Cape
	{ itemID = 2075748, groupID = 1, refLootEntry = 2075748 }, --Emberforge Mallet
	{ itemID = 14145, groupID = 1, refLootEntry = 11520 }, --Cursed Felblade
	{ itemID = 11321, groupID = 1, refLootEntry = 11520 }, --The Hungerer
	{ itemID = 2075751, groupID = 1, refLootEntry = 2075751 }, --Flamebreaker Greatsword
	{ itemID = 14147, groupID = 1, refLootEntry = 17830 }, --Cavedweller Bracers
	{ itemID = 14148, groupID = 1, refLootEntry = 17830 }, --Crystalline Cuffs
	{ itemID = 2069624, groupID = 1, refLootEntry = 2063851 }, --Ghostly Harbinger's Slippers
	{ itemID = 2065473, groupID = 1, refLootEntry = 2063851 }, --Phantom Conqueror's Girdle
	{ itemID = 2063851, groupID = 1, refLootEntry = 2063851 }, --Spectral Emissary's Raiment
	{ itemID = 2067417, groupID = 1, refLootEntry = 2063851 }, --Wailing Envoy's Leggings
	{ itemID = 2075397, groupID = 1, refLootEntry = 2075397 }, --Blade of Ragglesnout's Gloom
	{ itemID = 6690, groupID = 1, refLootEntry = 4422 }, --Ferine Leggings
	{ itemID = 6691, groupID = 1, refLootEntry = 4422 }, --Swinetusk Shank
	{ itemID = 2551, groupID = 1, refLootEntry = 4424 }, --Boar Bolter
	{ itemID = 6681, groupID = 1, refLootEntry = 4424 }, --Thornspike
	{ itemID = 2074993, groupID = 1, refLootEntry = 2074993 }, --Thorncurse Ritual Dagger
	{ itemID = 6697, groupID = 1, refLootEntry = 4425 }, --Batwing Mantle
	{ itemID = 6696, groupID = 1, refLootEntry = 4425 }, --Nightstalker Bow
	{ itemID = 6695, groupID = 1, refLootEntry = 4425 }, --Stygian Bone Amulet
	{ itemID = 25874, groupID = 1, refLootEntry = 25874 }, --Bloodied Knife
	{ itemID = 6693, groupID = 1, refLootEntry = 4421 }, --Agamaggan's Clutch
	{ itemID = 6694, groupID = 1, refLootEntry = 4421 }, --Heart of Agamaggan
	{ itemID = 6692, groupID = 1, refLootEntry = 4421 }, --Pronged Reaver
	{ itemID = 2074992, groupID = 1, refLootEntry = 2074992 }, --Staff of Thorned Purity
	{ itemID = 6685, groupID = 1, refLootEntry = 4428 }, --Death Speaker Mantle
	{ itemID = 6682, groupID = 1, refLootEntry = 4428 }, --Death Speaker Robes
	{ itemID = 2816, groupID = 1, refLootEntry = 4428 }, --Death Speaker Scepter
	{ itemID = 2074995, groupID = 1, refLootEntry = 2074995 }, --Shadowbind Relic
	{ itemID = 6688, groupID = 1, refLootEntry = 4842 }, --Whisperwind Headdress
	{ itemID = 6689, groupID = 1, refLootEntry = 4842 }, --Wind Spirit Staff
	{ itemID = 2075098, groupID = 1, refLootEntry = 2075098 }, --Halmgar's Earthshatter Staff
	{ itemID = 6687, groupID = 1, refLootEntry = 4420 }, --Corpsemaker
	{ itemID = 6686, groupID = 1, refLootEntry = 4420 }, --Tusken Helm
	{ itemID = 2074991, groupID = 1, refLootEntry = 2074991 }, --Thorned Axe of Ramtusk
	{ itemID = 2039, groupID = 1, refLootEntry = 6168 }, --Plains Ring
	{ itemID = 2177, groupID = 1, refLootEntry = 6168 }, --Quartzstone Staff
	{ itemID = 2075273, groupID = 1, refLootEntry = 2075273 }, --Earthshaker's Staff
	{ itemID = 2065781, groupID = 1, refLootEntry = 2061226 }, --Cincture of Binding
	{ itemID = 2069962, groupID = 1, refLootEntry = 2061226 }, --Footwraps of Detonation
	{ itemID = 2061226, groupID = 1, refLootEntry = 2061226 }, --Mantle of Zealotry
	{ itemID = 2067772, groupID = 1, refLootEntry = 2061226 }, --Purifier's Chausses
	{ itemID = 2064018, groupID = 1, refLootEntry = 2061226 }, --Robes of Arcane Vigilance
	{ itemID = 2075309, groupID = 1, refLootEntry = 2061226 }, --Spellbinder's Staff
	{ itemID = 2069646, groupID = 1, refLootEntry = 2060088 }, --Boots of Insomnia
	{ itemID = 2065494, groupID = 1, refLootEntry = 2060088 }, --Cincture of Restless Spirits
	{ itemID = 2075312, groupID = 1, refLootEntry = 2060088 }, --Dagger of Haunted Zeal
	{ itemID = 2072130, groupID = 1, refLootEntry = 2060088 }, --Grasp of the Unquiet Dead
	{ itemID = 2062390, groupID = 1, refLootEntry = 2060088 }, --Haunted Crusade Robe
	{ itemID = 2067439, groupID = 1, refLootEntry = 2060088 }, --Legwraps of the Eternal Watch
	{ itemID = 2060088, groupID = 1, refLootEntry = 2060088 }, --Sleepless Vigil Eyepatch
	{ itemID = 2075034, groupID = 1, refLootEntry = 2075034 }, --Thalnos's Undying Pyrestaff
	{ itemID = 2064020, groupID = 1, refLootEntry = 2060214 }, --Breastplate of the Faded Light
	{ itemID = 2061228, groupID = 1, refLootEntry = 2060214 }, --Epaulets of Fanatical Guard
	{ itemID = 2072408, groupID = 1, refLootEntry = 2060214 }, --Gauntlets of Twisted Faith
	{ itemID = 2065784, groupID = 1, refLootEntry = 2060214 }, --Girdle of the Lost Sentinel
	{ itemID = 2067775, groupID = 1, refLootEntry = 2060214 }, --Greaves of Abandoned Oaths
	{ itemID = 2060214, groupID = 1, refLootEntry = 2060214 }, --Helm of Zealous Perdition
	{ itemID = 2075310, groupID = 1, refLootEntry = 2060214 }, --Maul of the Doomed Crusader
	{ itemID = 2069965, groupID = 1, refLootEntry = 2060214 }, --Sabatons of Doomed Valor
	{ itemID = 2073678, groupID = 1, refLootEntry = 2060214 }, --Tabard of Scarlet Betrayal
	{ itemID = 2062701, groupID = 1, refLootEntry = 2060214 }, --Tabard of the Fallen Crusader
	{ itemID = 2062272, groupID = 1, refLootEntry = 2060011 }, --Breastplate of Herod
	{ itemID = 2060011, groupID = 1, refLootEntry = 2060011 }, --Cowl of the Scarlet Champion
	{ itemID = 2072049, groupID = 1, refLootEntry = 2060011 }, --Gauntlets of the Armory
	{ itemID = 2065383, groupID = 1, refLootEntry = 2060011 }, --Girdle of the Crusader's Wrath
	{ itemID = 2069519, groupID = 1, refLootEntry = 2060011 }, --Greaves of Valor
	{ itemID = 2067302, groupID = 1, refLootEntry = 2060011 }, --Legguards of Fanaticism
	{ itemID = 2061092, groupID = 1, refLootEntry = 2060011 }, --Pauldrons of Zealotry
	{ itemID = 2074915, groupID = 1, refLootEntry = 2060011 }, --Twin-bladed Axe of Herod
	{ itemID = 2071486, groupID = 1, refLootEntry = 2060073 }, --Bindings of Grim Vigilance
	{ itemID = 2060073, groupID = 1, refLootEntry = 2060073 }, --Cowl of Hidden Betrayal
	{ itemID = 2069600, groupID = 1, refLootEntry = 2060073 }, --Footwraps of Withered Light
	{ itemID = 2072099, groupID = 1, refLootEntry = 2060073 }, --Gloves of Damned Secrets
	{ itemID = 2067394, groupID = 1, refLootEntry = 2060073 }, --Leggings of Silent Truth
	{ itemID = 2075033, groupID = 1, refLootEntry = 2060073 }, --Mace of Fallen Faith
	{ itemID = 2063839, groupID = 1, refLootEntry = 2060073 }, --Robe of Faded Glory
	{ itemID = 2065453, groupID = 1, refLootEntry = 2060073 }, --Sash of Inquisitive Shadows
	{ itemID = 2073645, groupID = 1, refLootEntry = 2060073 }, --Tabard of the Veiled Crusade
	{ itemID = 2074914, groupID = 1, refLootEntry = 2062271 }, --Bloodhound's Cleaver
	{ itemID = 2069518, groupID = 1, refLootEntry = 2062271 }, --Boots of the Beastmaster
	{ itemID = 2065382, groupID = 1, refLootEntry = 2062271 }, --Houndmaster's Leather Belt
	{ itemID = 2072048, groupID = 1, refLootEntry = 2062271 }, --Loksey's Padded Grips
	{ itemID = 2062271, groupID = 1, refLootEntry = 2062271 }, --Loksey's Zealous Vest
	{ itemID = 2067301, groupID = 1, refLootEntry = 2062271 }, --Scarlet Hound Leggings
	{ itemID = 2073617, groupID = 1, refLootEntry = 2062271 }, --Tabard of the Scarlet Handler
	{ itemID = 25874, groupID = 1, refLootEntry = 25874 }, --Bloodied Knife
	{ itemID = 2069521, groupID = 1, refLootEntry = 2060013 }, --Boots of Fanatic Stride
	{ itemID = 2062274, groupID = 1, refLootEntry = 2060013 }, --Chestguard of Painful Truths
	{ itemID = 2072051, groupID = 1, refLootEntry = 2060013 }, --Grips of Cruel Extraction
	{ itemID = 2067304, groupID = 1, refLootEntry = 2060013 }, --Leggings of the Scarlet Judge
	{ itemID = 2065385, groupID = 1, refLootEntry = 2060013 }, --Sash of Inquisitorial Zeal
	{ itemID = 2073619, groupID = 1, refLootEntry = 2060013 }, --Tabard of Purging Flames
	{ itemID = 2060013, groupID = 1, refLootEntry = 2060013 }, --Vishas's Interrogator Helm
	{ itemID = 2074918, groupID = 1, refLootEntry = 2060013 }, --Vishas's Torturer Dagger
	{ itemID = 2075311, groupID = 1, refLootEntry = 2075311 }, --Ironspine Maledict
	{ itemID = 2074916, groupID = 1, refLootEntry = 2060012 }, --Crusader's Redemption Maul
	{ itemID = 2062273, groupID = 1, refLootEntry = 2060012 }, --Curass of Mograine's Legacy
	{ itemID = 2072050, groupID = 1, refLootEntry = 2060012 }, --Gauntlets of Righteous Command
	{ itemID = 2065384, groupID = 1, refLootEntry = 2060012 }, --Girdle of Fanatical Fury
	{ itemID = 2069520, groupID = 1, refLootEntry = 2060012 }, --Greaves of the Purging Flame
	{ itemID = 2060012, groupID = 1, refLootEntry = 2060012 }, --Helm of Unyielding Zeal
	{ itemID = 2067303, groupID = 1, refLootEntry = 2060012 }, --Legplates of the Zealous Assault
	{ itemID = 2061093, groupID = 1, refLootEntry = 2060012 }, --Pauldrons of the Scarlet Crusade
	{ itemID = 2073618, groupID = 1, refLootEntry = 2060012 }, --Tabard of the Scarlet Son
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
	{ itemID = 18680, groupID = 1, refLootEntry = 11261 }, --Ancient Bone Bow
	{ itemID = 14614, groupID = 1, refLootEntry = 11261 }, --Bloodmail Belt
	{ itemID = 14616, groupID = 1, refLootEntry = 11261 }, --Bloodmail Boots
	{ itemID = 14615, groupID = 1, refLootEntry = 11261 }, --Bloodmail Gauntlets
	{ itemID = 14611, groupID = 1, refLootEntry = 11261 }, --Bloodmail Hauberk
	{ itemID = 14612, groupID = 1, refLootEntry = 11261 }, --Bloodmail Legguards
	{ itemID = 18681, groupID = 1, refLootEntry = 11261 }, --Burial Shawl
	{ itemID = 14637, groupID = 1, refLootEntry = 11261 }, --Cadaverous Armor
	{ itemID = 14636, groupID = 1, refLootEntry = 11261 }, --Cadaverous Belt
	{ itemID = 14640, groupID = 1, refLootEntry = 11261 }, --Cadaverous Gloves
	{ itemID = 14638, groupID = 1, refLootEntry = 11261 }, --Cadaverous Leggings
	{ itemID = 14641, groupID = 1, refLootEntry = 11261 }, --Cadaverous Walkers
	{ itemID = 14624, groupID = 1, refLootEntry = 11261 }, --Deathbone Chestplate
	{ itemID = 14622, groupID = 1, refLootEntry = 11261 }, --Deathbone Gauntlets
	{ itemID = 14620, groupID = 1, refLootEntry = 11261 }, --Deathbone Girdle
	{ itemID = 14623, groupID = 1, refLootEntry = 11261 }, --Deathbone Legguards
	{ itemID = 14621, groupID = 1, refLootEntry = 11261 }, --Deathbone Sabatons
	{ itemID = 18684, groupID = 1, refLootEntry = 11261 }, --Dimly Opalescent Ring
	{ itemID = 18682, groupID = 1, refLootEntry = 11261 }, --Ghoul Skin Leggings
	{ itemID = 18683, groupID = 1, refLootEntry = 11261 }, --Hammer of the Vesper
	{ itemID = 23201, groupID = 1, refLootEntry = 11261 }, --Libram of Divinity
	{ itemID = 16684, groupID = 1, refLootEntry = 11261 }, --Magister's Gloves
	{ itemID = 14631, groupID = 1, refLootEntry = 11261 }, --Necropile Boots
	{ itemID = 14629, groupID = 1, refLootEntry = 11261 }, --Necropile Cuffs
	{ itemID = 14632, groupID = 1, refLootEntry = 11261 }, --Necropile Leggings
	{ itemID = 14633, groupID = 1, refLootEntry = 11261 }, --Necropile Mantle
	{ itemID = 14626, groupID = 1, refLootEntry = 11261 }, --Necropile Robe
	{ itemID = 23200, groupID = 1, refLootEntry = 11261 }, --Totem of Sustaining
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
	{ itemID = 18680, groupID = 1, refLootEntry = 10505 }, --Ancient Bone Bow
	{ itemID = 14614, groupID = 1, refLootEntry = 10505 }, --Bloodmail Belt
	{ itemID = 14616, groupID = 1, refLootEntry = 10505 }, --Bloodmail Boots
	{ itemID = 14615, groupID = 1, refLootEntry = 10505 }, --Bloodmail Gauntlets
	{ itemID = 14611, groupID = 1, refLootEntry = 10505 }, --Bloodmail Hauberk
	{ itemID = 14612, groupID = 1, refLootEntry = 10505 }, --Bloodmail Legguards
	{ itemID = 18681, groupID = 1, refLootEntry = 10505 }, --Burial Shawl
	{ itemID = 14637, groupID = 1, refLootEntry = 10505 }, --Cadaverous Armor
	{ itemID = 14636, groupID = 1, refLootEntry = 10505 }, --Cadaverous Belt
	{ itemID = 14640, groupID = 1, refLootEntry = 10505 }, --Cadaverous Gloves
	{ itemID = 14638, groupID = 1, refLootEntry = 10505 }, --Cadaverous Leggings
	{ itemID = 14641, groupID = 1, refLootEntry = 10505 }, --Cadaverous Walkers
	{ itemID = 14624, groupID = 1, refLootEntry = 10505 }, --Deathbone Chestplate
	{ itemID = 14622, groupID = 1, refLootEntry = 10505 }, --Deathbone Gauntlets
	{ itemID = 14620, groupID = 1, refLootEntry = 10505 }, --Deathbone Girdle
	{ itemID = 14623, groupID = 1, refLootEntry = 10505 }, --Deathbone Legguards
	{ itemID = 14621, groupID = 1, refLootEntry = 10505 }, --Deathbone Sabatons
	{ itemID = 18684, groupID = 1, refLootEntry = 10505 }, --Dimly Opalescent Ring
	{ itemID = 18682, groupID = 1, refLootEntry = 10505 }, --Ghoul Skin Leggings
	{ itemID = 18683, groupID = 1, refLootEntry = 10505 }, --Hammer of the Vesper
	{ itemID = 23201, groupID = 1, refLootEntry = 10505 }, --Libram of Divinity
	{ itemID = 14631, groupID = 1, refLootEntry = 10505 }, --Necropile Boots
	{ itemID = 14629, groupID = 1, refLootEntry = 10505 }, --Necropile Cuffs
	{ itemID = 14632, groupID = 1, refLootEntry = 10505 }, --Necropile Leggings
	{ itemID = 14633, groupID = 1, refLootEntry = 10505 }, --Necropile Mantle
	{ itemID = 14626, groupID = 1, refLootEntry = 10505 }, --Necropile Robe
	{ itemID = 16710, groupID = 1, refLootEntry = 10505 }, --Shadowcraft Bracers
	{ itemID = 23200, groupID = 1, refLootEntry = 10505 }, --Totem of Sustaining
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
	{ itemID = 14541, groupID = 1, refLootEntry = 10503 }, --Barovian Family Sword
	{ itemID = 16701, groupID = 1, refLootEntry = 10503 }, --Dreadmist Mantle
	{ itemID = 14545, groupID = 1, refLootEntry = 10503 }, --Ghostloom Leggings
	{ itemID = 18689, groupID = 1, refLootEntry = 10503 }, --Phantasmal Cloak
	{ itemID = 14548, groupID = 1, refLootEntry = 10503 }, --Royal Cap Spaulders
	{ itemID = 22394, groupID = 1, refLootEntry = 10503 }, --Staff of Metanoia
	{ itemID = 18690, groupID = 1, refLootEntry = 10503 }, --Wraithplate Leggings
	{ itemID = 2072739, groupID = 1, refLootEntry = 2060425 }, --Gloves of Misty Illusions
	{ itemID = 2068200, groupID = 1, refLootEntry = 2060425 }, --Leggings of Deceptive Allure
	{ itemID = 2061448, groupID = 1, refLootEntry = 2060425 }, --Mantle of Phantasmal Echoes
	{ itemID = 2064276, groupID = 1, refLootEntry = 2060425 }, --Robe of the Veiled Enchanter
	{ itemID = 2066158, groupID = 1, refLootEntry = 2060425 }, --Sash of Ghostly Visions
	{ itemID = 2070359, groupID = 1, refLootEntry = 2060425 }, --Slippers of the Haunted Path
	{ itemID = 2075658, groupID = 1, refLootEntry = 2060425 }, --Stave of Ethereal Masquerade
	{ itemID = 2060425, groupID = 1, refLootEntry = 2060425 }, --Veil of Illusive Wisdom
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
	{ itemID = 14624, groupID = 1, refLootEntry = 10502 }, --Deathbone Chestplate
	{ itemID = 14622, groupID = 1, refLootEntry = 10502 }, --Deathbone Gauntlets
	{ itemID = 14620, groupID = 1, refLootEntry = 10502 }, --Deathbone Girdle
	{ itemID = 14623, groupID = 1, refLootEntry = 10502 }, --Deathbone Legguards
	{ itemID = 14621, groupID = 1, refLootEntry = 10502 }, --Deathbone Sabatons
	{ itemID = 18684, groupID = 1, refLootEntry = 10502 }, --Dimly Opalescent Ring
	{ itemID = 18682, groupID = 1, refLootEntry = 10502 }, --Ghoul Skin Leggings
	{ itemID = 18683, groupID = 1, refLootEntry = 10502 }, --Hammer of the Vesper
	{ itemID = 23201, groupID = 1, refLootEntry = 10502 }, --Libram of Divinity
	{ itemID = 16722, groupID = 1, refLootEntry = 10502 }, --Lightforge Bracers
	{ itemID = 14631, groupID = 1, refLootEntry = 10502 }, --Necropile Boots
	{ itemID = 14629, groupID = 1, refLootEntry = 10502 }, --Necropile Cuffs
	{ itemID = 14632, groupID = 1, refLootEntry = 10502 }, --Necropile Leggings
	{ itemID = 14633, groupID = 1, refLootEntry = 10502 }, --Necropile Mantle
	{ itemID = 14626, groupID = 1, refLootEntry = 10502 }, --Necropile Robe
	{ itemID = 23200, groupID = 1, refLootEntry = 10502 }, --Totem of Sustaining
	{ itemID = 2064322, groupID = 1, refLootEntry = 2060456 }, --Breastplate of Eternal Servitude
	{ itemID = 2060456, groupID = 1, refLootEntry = 2060456 }, --Crown of the Cursed Baroness
	{ itemID = 2072782, groupID = 1, refLootEntry = 2060456 }, --Gauntlets of the Undying Sorceress
	{ itemID = 2066201, groupID = 1, refLootEntry = 2060456 }, --Girdle of Necromantic Allegiance
	{ itemID = 2070408, groupID = 1, refLootEntry = 2060456 }, --Greaves of Shadow's Embrace
	{ itemID = 2068253, groupID = 1, refLootEntry = 2060456 }, --Legplates of the Scholomancer
	{ itemID = 2061491, groupID = 1, refLootEntry = 2060456 }, --Mantle of Agonizing Shadows
	{ itemID = 2063118, groupID = 1, refLootEntry = 2060456 }, --Shirt of the Forsaken Nobility
	{ itemID = 2078633, groupID = 1, refLootEntry = 2060456 }, --Wand of Domination
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
	{ itemID = 14624, groupID = 1, refLootEntry = 10504 }, --Deathbone Chestplate
	{ itemID = 14622, groupID = 1, refLootEntry = 10504 }, --Deathbone Gauntlets
	{ itemID = 14620, groupID = 1, refLootEntry = 10504 }, --Deathbone Girdle
	{ itemID = 14623, groupID = 1, refLootEntry = 10504 }, --Deathbone Legguards
	{ itemID = 14621, groupID = 1, refLootEntry = 10504 }, --Deathbone Sabatons
	{ itemID = 18684, groupID = 1, refLootEntry = 10504 }, --Dimly Opalescent Ring
	{ itemID = 18682, groupID = 1, refLootEntry = 10504 }, --Ghoul Skin Leggings
	{ itemID = 18683, groupID = 1, refLootEntry = 10504 }, --Hammer of the Vesper
	{ itemID = 23201, groupID = 1, refLootEntry = 10504 }, --Libram of Divinity
	{ itemID = 16722, groupID = 1, refLootEntry = 10504 }, --Lightforge Bracers
	{ itemID = 14631, groupID = 1, refLootEntry = 10504 }, --Necropile Boots
	{ itemID = 14629, groupID = 1, refLootEntry = 10504 }, --Necropile Cuffs
	{ itemID = 14632, groupID = 1, refLootEntry = 10504 }, --Necropile Leggings
	{ itemID = 14633, groupID = 1, refLootEntry = 10504 }, --Necropile Mantle
	{ itemID = 14626, groupID = 1, refLootEntry = 10504 }, --Necropile Robe
	{ itemID = 23200, groupID = 1, refLootEntry = 10504 }, --Totem of Sustaining
	{ itemID = 2060426, groupID = 1, refLootEntry = 2060426 }, --Barov's Shadowed Greathelm
	{ itemID = 2064277, groupID = 1, refLootEntry = 2060426 }, --Caer Darrow Chestplate
	{ itemID = 2066159, groupID = 1, refLootEntry = 2060426 }, --Cinch of Necromantic Power
	{ itemID = 2068201, groupID = 1, refLootEntry = 2060426 }, --Deathknight's Legplates
	{ itemID = 2072740, groupID = 1, refLootEntry = 2060426 }, --Gloves of the Forsaken Nobility
	{ itemID = 2070360, groupID = 1, refLootEntry = 2060426 }, --Gravewalker's Sabatons
	{ itemID = 2063074, groupID = 1, refLootEntry = 2060426 }, --Shirt of Eternal Commitment
	{ itemID = 2061449, groupID = 1, refLootEntry = 2060426 }, --Shoulderguards of Unholy Might
	{ itemID = 2075659, groupID = 1, refLootEntry = 2060426 }, --Sword of the Barov Protectorate
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
	{ itemID = 14624, groupID = 1, refLootEntry = 10901 }, --Deathbone Chestplate
	{ itemID = 14622, groupID = 1, refLootEntry = 10901 }, --Deathbone Gauntlets
	{ itemID = 14620, groupID = 1, refLootEntry = 10901 }, --Deathbone Girdle
	{ itemID = 14623, groupID = 1, refLootEntry = 10901 }, --Deathbone Legguards
	{ itemID = 14621, groupID = 1, refLootEntry = 10901 }, --Deathbone Sabatons
	{ itemID = 18684, groupID = 1, refLootEntry = 10901 }, --Dimly Opalescent Ring
	{ itemID = 16705, groupID = 1, refLootEntry = 10901 }, --Dreadmist Wraps
	{ itemID = 18682, groupID = 1, refLootEntry = 10901 }, --Ghoul Skin Leggings
	{ itemID = 18683, groupID = 1, refLootEntry = 10901 }, --Hammer of the Vesper
	{ itemID = 23201, groupID = 1, refLootEntry = 10901 }, --Libram of Divinity
	{ itemID = 14631, groupID = 1, refLootEntry = 10901 }, --Necropile Boots
	{ itemID = 14629, groupID = 1, refLootEntry = 10901 }, --Necropile Cuffs
	{ itemID = 14632, groupID = 1, refLootEntry = 10901 }, --Necropile Leggings
	{ itemID = 14633, groupID = 1, refLootEntry = 10901 }, --Necropile Mantle
	{ itemID = 14626, groupID = 1, refLootEntry = 10901 }, --Necropile Robe
	{ itemID = 23200, groupID = 1, refLootEntry = 10901 }, --Totem of Sustaining
	{ itemID = 2075695, groupID = 1, refLootEntry = 2075695 }, --Polkelt's Plague Mace
	{ itemID = 2075643, groupID = 1, refLootEntry = 2060354 }, --Blade of the Cursed Knight
	{ itemID = 2064204, groupID = 1, refLootEntry = 2060354 }, --Chestplate of the Scourgelord
	{ itemID = 2072658, groupID = 1, refLootEntry = 2060354 }, --Gauntlets of Forsaken Might
	{ itemID = 2066068, groupID = 1, refLootEntry = 2060354 }, --Girdle of Dark Command
	{ itemID = 2068099, groupID = 1, refLootEntry = 2060354 }, --Greaves of Plagueland Terror
	{ itemID = 2060354, groupID = 1, refLootEntry = 2060354 }, --Helm of the Blackpool Guardian
	{ itemID = 2070260, groupID = 1, refLootEntry = 2060354 }, --Sabatons of Necrotic March
	{ itemID = 2061381, groupID = 1, refLootEntry = 2060354 }, --Shoulderguards of Scholomance Sentinel
	{ itemID = 2062995, groupID = 1, refLootEntry = 2060354 }, --Vestment of Undeath
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
	{ itemID = 18695, groupID = 1, refLootEntry = 10508 }, --Spellbound Tome
	{ itemID = 18686, groupID = 1, refLootEntry = 11622 }, --Bone Golem Shoulders
	{ itemID = 14539, groupID = 1, refLootEntry = 11622 }, --Bone Ring Helm
	{ itemID = 14537, groupID = 1, refLootEntry = 11622 }, --Corpselight Greaves
	{ itemID = 14538, groupID = 1, refLootEntry = 11622 }, --Deadwalker Mantle
	{ itemID = 14531, groupID = 1, refLootEntry = 11622 }, --Frightskull Shaft
	{ itemID = 14528, groupID = 1, refLootEntry = 11622 }, --Rattlecage Buckler
	{ itemID = 16711, groupID = 1, refLootEntry = 11622 }, --Shadowcraft Boots
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
	{ itemID = 14624, groupID = 1, refLootEntry = 10507 }, --Deathbone Chestplate
	{ itemID = 14622, groupID = 1, refLootEntry = 10507 }, --Deathbone Gauntlets
	{ itemID = 14620, groupID = 1, refLootEntry = 10507 }, --Deathbone Girdle
	{ itemID = 14623, groupID = 1, refLootEntry = 10507 }, --Deathbone Legguards
	{ itemID = 14621, groupID = 1, refLootEntry = 10507 }, --Deathbone Sabatons
	{ itemID = 18684, groupID = 1, refLootEntry = 10507 }, --Dimly Opalescent Ring
	{ itemID = 18682, groupID = 1, refLootEntry = 10507 }, --Ghoul Skin Leggings
	{ itemID = 18683, groupID = 1, refLootEntry = 10507 }, --Hammer of the Vesper
	{ itemID = 23201, groupID = 1, refLootEntry = 10507 }, --Libram of Divinity
	{ itemID = 14631, groupID = 1, refLootEntry = 10507 }, --Necropile Boots
	{ itemID = 14629, groupID = 1, refLootEntry = 10507 }, --Necropile Cuffs
	{ itemID = 14632, groupID = 1, refLootEntry = 10507 }, --Necropile Leggings
	{ itemID = 14633, groupID = 1, refLootEntry = 10507 }, --Necropile Mantle
	{ itemID = 14626, groupID = 1, refLootEntry = 10507 }, --Necropile Robe
	{ itemID = 23200, groupID = 1, refLootEntry = 10507 }, --Totem of Sustaining
	{ itemID = 16716, groupID = 1, refLootEntry = 10507 }, --Wildheart Belt
	{ itemID = 18691, groupID = 1, refLootEntry = 10432 }, --Dark Advisor's Pendant
	{ itemID = 14577, groupID = 1, refLootEntry = 10432 }, --Skullsmoke Pants
	{ itemID = 397168, groupID = 1, refLootEntry = 36296 }, --Choker of the Pure Heart
	{ itemID = 397132, groupID = 1, refLootEntry = 36296 }, --Heartbreak Charm
	{ itemID = 397144, groupID = 1, refLootEntry = 36296 }, --Shard of Pirouetting Happiness
	{ itemID = 397156, groupID = 1, refLootEntry = 36296 }, --Sweet Perfume Broach
	{ itemID = 397120, groupID = 1, refLootEntry = 36296 }, --Winking Eye of Love
	{ itemID = 388912, groupID = 2, refLootEntry = 36296 }, --Forever-Lovely Rose
	{ itemID = 392168, groupID = 2, refLootEntry = 36296 }, --Vile Fumigator's Mask
	{ itemID = 2067220, groupID = 1, refLootEntry = 2061045 }, --Belt of Lingering Scent
	{ itemID = 2071427, groupID = 1, refLootEntry = 2061045 }, --Boots of Aromatic Stealth
	{ itemID = 2072004, groupID = 1, refLootEntry = 2061045 }, --Bracers of Irresistible Aroma
	{ itemID = 2077631, groupID = 1, refLootEntry = 2061045 }, --Dagger of the Chemist
	{ itemID = 2073571, groupID = 1, refLootEntry = 2061045 }, --Gloves of the Perfume Master
	{ itemID = 2061045, groupID = 1, refLootEntry = 2061045 }, --Headpiece of Alchemical Whispers
	{ itemID = 2069435, groupID = 1, refLootEntry = 2061045 }, --Hummel's Alchemical Trousers
	{ itemID = 2062216, groupID = 1, refLootEntry = 2061045 }, --Perfumer's Epaulets
	{ itemID = 2065313, groupID = 1, refLootEntry = 2061045 }, --Robes of the Forsaken Alchemist
	{ itemID = 6392, groupID = 1, refLootEntry = 4275 }, --Belt of Arugal
	{ itemID = 6220, groupID = 1, refLootEntry = 4275 }, --Meteor Shard
	{ itemID = 6324, groupID = 1, refLootEntry = 4275 }, --Robes of Arugal
	{ itemID = 2065405, groupID = 1, refLootEntry = 2060050 }, --Arugal's Enchanted Sash
	{ itemID = 2060050, groupID = 1, refLootEntry = 2060050 }, --Cowl of Arugal's Remorse
	{ itemID = 2069546, groupID = 1, refLootEntry = 2060050 }, --Footwraps of the Haunted Keep
	{ itemID = 2067336, groupID = 1, refLootEntry = 2060050 }, --Leggings of Shadowed Legacy
	{ itemID = 2061098, groupID = 1, refLootEntry = 2060050 }, --Mantle of the Cursed Archmage
	{ itemID = 2063810, groupID = 1, refLootEntry = 2060050 }, --Robes of Worgen Influence
	{ itemID = 2074947, groupID = 1, refLootEntry = 2060050 }, --Staff of Arugal's Wrath
	{ itemID = 6323, groupID = 1, refLootEntry = 3887 }, --Baron's Scepter
	{ itemID = 6321, groupID = 1, refLootEntry = 3887 }, --Silverlaine's Family Seal
	{ itemID = 2065467, groupID = 1, refLootEntry = 2062363 }, --Cursed Belt of the Spectral Baron
	{ itemID = 2074900, groupID = 1, refLootEntry = 2062363 }, --Gloomhammer of Silverlaine
	{ itemID = 2067408, groupID = 1, refLootEntry = 2062363 }, --Haunted Leggings of the Forsaken
	{ itemID = 2062363, groupID = 1, refLootEntry = 2062363 }, --Silverlaine's Sorrowful Vestments
	{ itemID = 2069615, groupID = 1, refLootEntry = 2062363 }, --Wraithwalker's Boots
	{ itemID = 6641, groupID = 1, refLootEntry = 3872 }, --Haunting Blade
	{ itemID = 6642, groupID = 1, refLootEntry = 3872 }, --Phantom Armor
	{ itemID = 2074894, groupID = 1, refLootEntry = 2060080 }, --Blade of the Winter Captain
	{ itemID = 2062365, groupID = 1, refLootEntry = 2060080 }, --Chestplate of Midwinter Resolve
	{ itemID = 2072113, groupID = 1, refLootEntry = 2060080 }, --Gauntlets of the Forsaken Guardian
	{ itemID = 2065469, groupID = 1, refLootEntry = 2060080 }, --Girdle of Cold Vigilance
	{ itemID = 2069617, groupID = 1, refLootEntry = 2060080 }, --Greaves of Frosted Duty
	{ itemID = 2060080, groupID = 1, refLootEntry = 2060080 }, --Helm of the Winter Warden
	{ itemID = 2067410, groupID = 1, refLootEntry = 2060080 }, --Legguards of the Icy Sentinel
	{ itemID = 2061125, groupID = 1, refLootEntry = 2060080 }, --Pauldrons of the Frozen Protector
	{ itemID = 3191, groupID = 1, refLootEntry = 4278 }, --Arced War Axe
	{ itemID = 6320, groupID = 1, refLootEntry = 4278 }, --Commander's Crest
	{ itemID = 2069616, groupID = 1, refLootEntry = 2061124 }, --Accursed Sabatons of Springvale
	{ itemID = 2062364, groupID = 1, refLootEntry = 2061124 }, --Chestguard of the Cursed Commander
	{ itemID = 2074948, groupID = 1, refLootEntry = 2061124 }, --Enchanted Worgenblade
	{ itemID = 2067409, groupID = 1, refLootEntry = 2061124 }, --Legplates of Gilnean Valor
	{ itemID = 2065468, groupID = 1, refLootEntry = 2061124 }, --Necromantic Girdle of Springvale
	{ itemID = 2072112, groupID = 1, refLootEntry = 2061124 }, --Plaguebound Gauntlets
	{ itemID = 2077991, groupID = 1, refLootEntry = 2061124 }, --Shield of Arugal's Guardian
	{ itemID = 2061124, groupID = 1, refLootEntry = 2061124 }, --Springvale's Aegis Pauldrons
	{ itemID = 3230, groupID = 1, refLootEntry = 4274 }, --Black Wolf Bracers
	{ itemID = 6340, groupID = 1, refLootEntry = 4274 }, --Fenrus' Hide
	{ itemID = 6319, groupID = 1, refLootEntry = 4279 }, --Girdle of the Blindwatcher
	{ itemID = 6318, groupID = 1, refLootEntry = 4279 }, --Odo's Ley Staff
	{ itemID = 6226, groupID = 1, refLootEntry = 3886 }, --Bloody Apron
	{ itemID = 1292, groupID = 1, refLootEntry = 3886 }, --Butcher's Cleaver
	{ itemID = 6633, groupID = 1, refLootEntry = 3886 }, --Butcher's Slicer
	{ itemID = 2074899, groupID = 1, refLootEntry = 2074899 }, --Butcher's Cleave
	{ itemID = 6341, groupID = 1, refLootEntry = 3914 }, --Eerie Stable Lantern
	{ itemID = 5254, groupID = 1, refLootEntry = 3914 }, --Rugged Spaulders
	{ itemID = 23173, groupID = 1, refLootEntry = 14682 }, --Abomination Skin Leggings
	{ itemID = 23171, groupID = 1, refLootEntry = 14682 }, --The Axe of Severing
	{ itemID = 3748, groupID = 1, refLootEntry = 3927 }, --Feline Mantle
	{ itemID = 6314, groupID = 1, refLootEntry = 3927 }, --Wolfmaster Cape
	{ itemID = 1897, groupID = 1, refLootEntry = 1716 }, --Behander
	{ itemID = 2062245, groupID = 1, refLootEntry = 2060004 }, --Brotherhood Operative Vest
	{ itemID = 2074433, groupID = 1, refLootEntry = 2060004 }, --Defiant Leader's Blade
	{ itemID = 2061079, groupID = 1, refLootEntry = 2060004 }, --Defias Insurrection Shoulderguards
	{ itemID = 2065360, groupID = 1, refLootEntry = 2060004 }, --Rogue Mason's Girdle
	{ itemID = 2072029, groupID = 1, refLootEntry = 2060004 }, --Seditionist's Grips
	{ itemID = 2067266, groupID = 1, refLootEntry = 2060004 }, --Stockade Breaker Leggings
	{ itemID = 2077932, groupID = 1, refLootEntry = 2060004 }, --Stormwind Rebel's Edge
	{ itemID = 2069486, groupID = 1, refLootEntry = 2060004 }, --Stormwind Stonemason Boots
	{ itemID = 2060004, groupID = 1, refLootEntry = 2060004 }, --Thredd's Conspirator Mask
	{ itemID = 2942, groupID = 1, refLootEntry = 1720 }, --Iron Knuckles
	{ itemID = 3228, groupID = 1, refLootEntry = 1720 }, --Jimmied Handcuffs
	{ itemID = 2941, groupID = 1, refLootEntry = 1720 }, --Prison Shank
	{ itemID = 2074436, groupID = 1, refLootEntry = 2062246 }, --Bruegal's Knuckle Smasher
	{ itemID = 2071460, groupID = 1, refLootEntry = 2062246 }, --Cuffs of Mercenary's Resolve
	{ itemID = 2069487, groupID = 1, refLootEntry = 2062246 }, --Hightread Adept Stompers
	{ itemID = 2062246, groupID = 1, refLootEntry = 2062246 }, --Knuckle-Vaulted Vest
	{ itemID = 2067267, groupID = 1, refLootEntry = 2062246 }, --Leggings of the Ironbreaker
	{ itemID = 3432, groupID = 1, refLootEntry = 1663 }, --Unnecessary Big Shanker
	{ itemID = 2069527, groupID = 1, refLootEntry = 2062284 }, --Footpads of the Imprisoned
	{ itemID = 2067315, groupID = 1, refLootEntry = 2062284 }, --Leggings of the Rebellion
	{ itemID = 2074422, groupID = 1, refLootEntry = 2062284 }, --Polearm of Ward's Defiance
	{ itemID = 2065390, groupID = 1, refLootEntry = 2062284 }, --Sash of the Riotous
	{ itemID = 2062284, groupID = 1, refLootEntry = 2062284 }, --Vest of the Captive Monitor
	{ itemID = 2827, groupID = 1, refLootEntry = 1717 }, --Hamhock's Ham Hacker
	{ itemID = 2074434, groupID = 1, refLootEntry = 2074434 }, --Hamhock's Riot Cleaver
	{ itemID = 1985, groupID = 1, refLootEntry = 1666 }, --Kam's Buckler
	{ itemID = 2280, groupID = 1, refLootEntry = 1666 }, --Kam's Walking Stick
	{ itemID = 1903, groupID = 1, refLootEntry = 1666 }, --Knee Cracker
	{ itemID = 2069643, groupID = 1, refLootEntry = 2062387 }, --Cindershade Footwraps
	{ itemID = 2067436, groupID = 1, refLootEntry = 2062387 }, --Dark Iron Legguards
	{ itemID = 2062387, groupID = 1, refLootEntry = 2062387 }, --Deepfury Shadowbind Vest
	{ itemID = 2065491, groupID = 1, refLootEntry = 2062387 }, --Molten Chain Belt
	{ itemID = 2077929, groupID = 1, refLootEntry = 2062387 }, --Stockade Guard Shield
	{ itemID = 2074425, groupID = 1, refLootEntry = 2062387 }, --Thaurissan's Rebellion Crusher
	{ itemID = 5305, groupID = 1, refLootEntry = 1696 }, --Dreadful Blade
	{ itemID = 2074427, groupID = 1, refLootEntry = 2074427 }, --Blade of Dreadfury
	{ itemID = 13386, groupID = 1, refLootEntry = 10811 }, --Archivist Cape
	{ itemID = 18716, groupID = 1, refLootEntry = 10811 }, --Ash Covered Boots
	{ itemID = 16692, groupID = 1, refLootEntry = 10811 }, --Devout Gloves
	{ itemID = 13387, groupID = 1, refLootEntry = 10811 }, --Foresight Girdle
	{ itemID = 13385, groupID = 1, refLootEntry = 10811 }, --Tome of Knowledge
	{ itemID = 2066149, groupID = 1, refLootEntry = 2060422 }, --Belt of Burning Records
	{ itemID = 2060422, groupID = 1, refLootEntry = 2060422 }, --Cowl of the Zealous Archivist
	{ itemID = 2072731, groupID = 1, refLootEntry = 2060422 }, --Gloves of Fervent Manuscripts
	{ itemID = 2068190, groupID = 1, refLootEntry = 2060422 }, --Leggings of the Devout Scribe
	{ itemID = 2063064, groupID = 1, refLootEntry = 2060422 }, --Robes of the Scarlet Chronicler
	{ itemID = 2070350, groupID = 1, refLootEntry = 2060422 }, --Slippers of Flamelit Lore
	{ itemID = 2073737, groupID = 1, refLootEntry = 2060422 }, --Tabard of the Scarlet Tomekeeper
	{ itemID = 2075680, groupID = 1, refLootEntry = 2060422 }, --Tome of Pyroclastic Knowledge
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
	{ itemID = 13505, groupID = 1, refLootEntry = 10440 }, --Runeblade of Baron Rivendare
	{ itemID = 13349, groupID = 1, refLootEntry = 10440 }, --Scepter of the Unholy
	{ itemID = 13345, groupID = 1, refLootEntry = 10440 }, --Seal of Rivendare
	{ itemID = 16709, groupID = 1, refLootEntry = 10440 }, --Shadowcraft Pants
	{ itemID = 13361, groupID = 1, refLootEntry = 10440 }, --Skullforge Reaver
	{ itemID = 22412, groupID = 1, refLootEntry = 10440 }, --Thuzadin Mantle
	{ itemID = 22409, groupID = 1, refLootEntry = 10440 }, --Tunic of the Crescent Moon
	{ itemID = 16719, groupID = 1, refLootEntry = 10440 }, --Wildheart Kilt
	{ itemID = 2075645, groupID = 1, refLootEntry = 2075645 }, --Rivendare's Runeblade
	{ itemID = 18728, groupID = 1, refLootEntry = 10436 }, --Anastari Heirloom
	{ itemID = 13534, groupID = 1, refLootEntry = 10436 }, --Banshee Finger
	{ itemID = 16704, groupID = 1, refLootEntry = 10436 }, --Dreadmist Sandals
	{ itemID = 18729, groupID = 1, refLootEntry = 10436 }, --Screeching Bow
	{ itemID = 18730, groupID = 1, refLootEntry = 10436 }, --Shadowy Laced Handwraps
	{ itemID = 13539, groupID = 2, refLootEntry = 10436 }, --Banshee's Touch
	{ itemID = 13537, groupID = 2, refLootEntry = 10436 }, --Chillhide Bracers
	{ itemID = 13535, groupID = 2, refLootEntry = 10436 }, --Coldtouch Phantom Wraps
	{ itemID = 13538, groupID = 2, refLootEntry = 10436 }, --Windshrieker Pauldrons
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
	{ itemID = 2075681, groupID = 1, refLootEntry = 2060423 }, --Blade of Illusive Glory
	{ itemID = 2064268, groupID = 1, refLootEntry = 2060423 }, --Breastplate of Veiled Divinity
	{ itemID = 2072732, groupID = 1, refLootEntry = 2060423 }, --Gauntlets of Eternal Vigilance
	{ itemID = 2066150, groupID = 1, refLootEntry = 2060423 }, --Girdle of Unyielding Zeal
	{ itemID = 2070351, groupID = 1, refLootEntry = 2060423 }, --Greaves of the Inquisitor
	{ itemID = 2060423, groupID = 1, refLootEntry = 2060423 }, --Helm of Arcane Righteousness
	{ itemID = 2068191, groupID = 1, refLootEntry = 2060423 }, --Legplates of the Redeemer
	{ itemID = 2063065, groupID = 1, refLootEntry = 2060423 }, --Purifier's Undershirt
	{ itemID = 2061443, groupID = 1, refLootEntry = 2060423 }, --Shoulderguards of Fallen Honor
	{ itemID = 2073738, groupID = 1, refLootEntry = 2060423 }, --Tabard of the Betrayed Crusader
	{ itemID = 2071646, groupID = 1, refLootEntry = 2060423 }, --Wristguards of the Scarlet Judge
	{ itemID = 16682, groupID = 1, refLootEntry = 10558 }, --Magister's Boots
	{ itemID = 13379, groupID = 1, refLootEntry = 10558 }, --Piccolo of the Flaming Fire
	{ itemID = 13384, groupID = 1, refLootEntry = 10558 }, --Rainbow Girdle
	{ itemID = 13378, groupID = 1, refLootEntry = 10558 }, --Songbird Blouse
	{ itemID = 13383, groupID = 1, refLootEntry = 10558 }, --Woollies of the Prancing Minstrel
	{ itemID = 2072713, groupID = 1, refLootEntry = 2061425 }, --Ballad Singer's Gloves
	{ itemID = 2068164, groupID = 1, refLootEntry = 2061425 }, --Bard’s Echoing Leggings
	{ itemID = 2061425, groupID = 1, refLootEntry = 2061425 }, --Forresten's Harmonious Mantle
	{ itemID = 2070323, groupID = 1, refLootEntry = 2061425 }, --Forresten's Staccato Boots
	{ itemID = 2064244, groupID = 1, refLootEntry = 2061425 }, --Hearthsinger's Tuneful Vest
	{ itemID = 2078635, groupID = 1, refLootEntry = 2061425 }, --Lament of the Bard Bow
	{ itemID = 2063046, groupID = 1, refLootEntry = 2061425 }, --Lamenting Minstrel's Shirt
	{ itemID = 2066123, groupID = 1, refLootEntry = 2061425 }, --Melodic Bard's Belt
	{ itemID = 18727, groupID = 1, refLootEntry = 10435 }, --Crimson Felt Hat
	{ itemID = 18722, groupID = 1, refLootEntry = 10435 }, --Death Grips
	{ itemID = 23198, groupID = 1, refLootEntry = 10435 }, --Idol of Brutality
	{ itemID = 18726, groupID = 1, refLootEntry = 10435 }, --Magistrate's Cuffs
	{ itemID = 18725, groupID = 1, refLootEntry = 10435 }, --Peacemaker
	{ itemID = 13376, groupID = 1, refLootEntry = 10435 }, --Royal Tribunal Cloak
	{ itemID = 18737, groupID = 1, refLootEntry = 10438 }, --Bone Slicing Hatchet
	{ itemID = 16691, groupID = 1, refLootEntry = 10438 }, --Devout Sandals
	{ itemID = 18735, groupID = 1, refLootEntry = 10438 }, --Maleki's Footwraps
	{ itemID = 18734, groupID = 1, refLootEntry = 10438 }, --Pale Moon Cloak
	{ itemID = 13525, groupID = 2, refLootEntry = 10438 }, --Darkbind Fingers
	{ itemID = 13526, groupID = 2, refLootEntry = 10438 }, --Flamescarred Girdle
	{ itemID = 13527, groupID = 2, refLootEntry = 10438 }, --Lavawalker Greaves
	{ itemID = 13528, groupID = 2, refLootEntry = 10438 }, --Twilight Void Bracers
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
	{ itemID = 16681, groupID = 1, refLootEntry = 12500 }, --Beaststalker's Bindings
	{ itemID = 16736, groupID = 1, refLootEntry = 12500 }, --Belt of Valor
	{ itemID = 16671, groupID = 1, refLootEntry = 12500 }, --Bindings of Elements
	{ itemID = 16697, groupID = 1, refLootEntry = 12500 }, --Devout Bracers
	{ itemID = 16702, groupID = 1, refLootEntry = 12500 }, --Dreadmist Belt
	{ itemID = 18743, groupID = 1, refLootEntry = 12500 }, --Gracious Cape
	{ itemID = 17061, groupID = 1, refLootEntry = 12500 }, --Juno's Shadow
	{ itemID = 16723, groupID = 1, refLootEntry = 12500 }, --Lightforge Belt
	{ itemID = 16685, groupID = 1, refLootEntry = 12500 }, --Magister's Belt
	{ itemID = 18741, groupID = 1, refLootEntry = 12500 }, --Morlune's Bracer
	{ itemID = 18744, groupID = 1, refLootEntry = 12500 }, --Plaguebat Fur Gloves
	{ itemID = 18736, groupID = 1, refLootEntry = 12500 }, --Plaguehound Leggings
	{ itemID = 18745, groupID = 1, refLootEntry = 12500 }, --Sacred Cloth Leggings
	{ itemID = 18742, groupID = 1, refLootEntry = 12500 }, --Stratholme Militia Shoulderguard
	{ itemID = 16714, groupID = 1, refLootEntry = 12500 }, --Wildheart Bracers
	{ itemID = 2063039, groupID = 1, refLootEntry = 2061423 }, --Divine Crusader's Chestguard
	{ itemID = 2075703, groupID = 1, refLootEntry = 2061423 }, --Hammer of Sacred Conviction
	{ itemID = 2068156, groupID = 1, refLootEntry = 2061423 }, --Holy Crusader's Legguards
	{ itemID = 2066116, groupID = 1, refLootEntry = 2061423 }, --Lightforged Girdle of Zeal
	{ itemID = 2072711, groupID = 1, refLootEntry = 2061423 }, --Pious Gauntlets of the Zealous
	{ itemID = 2070316, groupID = 1, refLootEntry = 2061423 }, --Sanctified Treads
	{ itemID = 2073724, groupID = 1, refLootEntry = 2061423 }, --Tabard of the Scarlet Zealot
	{ itemID = 2061423, groupID = 1, refLootEntry = 2061423 }, --Zealot's Faithful Shoulderplates
	{ itemID = 16675, groupID = 1, refLootEntry = 10437 }, --Beaststalker's Boots
	{ itemID = 18738, groupID = 1, refLootEntry = 10437 }, --Carapace Spine Crossbow
	{ itemID = 18739, groupID = 1, refLootEntry = 10437 }, --Chitinous Plate Legguards
	{ itemID = 13529, groupID = 1, refLootEntry = 10437 }, --Husk of Nerub'enkan
	{ itemID = 18740, groupID = 1, refLootEntry = 10437 }, --Thuzadin Sash
	{ itemID = 13533, groupID = 2, refLootEntry = 10437 }, --Acid-etched Pauldrons
	{ itemID = 13531, groupID = 2, refLootEntry = 10437 }, --Crypt Stalker Leggings
	{ itemID = 13532, groupID = 2, refLootEntry = 10437 }, --Darkspinner Claws
	{ itemID = 13530, groupID = 2, refLootEntry = 10437 }, --Fangdrip Runners
	{ itemID = 13394, groupID = 1, refLootEntry = 10393 }, --Skul's Cold Embrace
	{ itemID = 13395, groupID = 1, refLootEntry = 10393 }, --Skul's Fingerbone Claws
	{ itemID = 13396, groupID = 1, refLootEntry = 10393 }, --Skul's Ghastly Touch
	{ itemID = 13399, groupID = 1, refLootEntry = 10809 }, --Gargoyle Shredder Talons
	{ itemID = 13397, groupID = 1, refLootEntry = 10809 }, --Stoneskin Gargoyle Cape
	{ itemID = 13954, groupID = 1, refLootEntry = 10809 }, --Verdant Footpads
	{ itemID = 2064269, groupID = 1, refLootEntry = 2064269 }, --Blighted Messenger's Robe
	{ itemID = 2070352, groupID = 1, refLootEntry = 2064269 }, --Boots of Stygian Paths
	{ itemID = 2075707, groupID = 1, refLootEntry = 2064269 }, --Codex of the Cursed Envoy
	{ itemID = 2068192, groupID = 1, refLootEntry = 2064269 }, --Leggings of Shattered Oaths
	{ itemID = 2066151, groupID = 1, refLootEntry = 2064269 }, --Sash of the Forsaken Courier
	{ itemID = 13404, groupID = 1, refLootEntry = 10516 }, --Mask of the Unforgiven
	{ itemID = 13408, groupID = 1, refLootEntry = 10516 }, --Soul Breaker
	{ itemID = 13409, groupID = 1, refLootEntry = 10516 }, --Tearfall Bracers
	{ itemID = 13405, groupID = 1, refLootEntry = 10516 }, --Wailing Nightbane Pauldrons
	{ itemID = 16717, groupID = 1, refLootEntry = 10516 }, --Wildheart Gloves
	{ itemID = 10846, groupID = 1, refLootEntry = 35012 }, --Bloodshot Greaves
	{ itemID = 12462, groupID = 1, refLootEntry = 35012 }, --Embrace of the Wind Serpent
	{ itemID = 10843, groupID = 1, refLootEntry = 35012 }, --Featherskin Cape
	{ itemID = 10838, groupID = 1, refLootEntry = 35012 }, --Might of Hakkar
	{ itemID = 10844, groupID = 1, refLootEntry = 35012 }, --Spire of Hakkar
	{ itemID = 10845, groupID = 1, refLootEntry = 35012 }, --Warrior's Embrace
	{ itemID = 10842, groupID = 1, refLootEntry = 35012 }, --Windscale Sarong
	{ itemID = 12464, groupID = 1, refLootEntry = 35011 }, --Bloodfire Talons
	{ itemID = 12466, groupID = 1, refLootEntry = 35011 }, --Dawnspire Cord
	{ itemID = 10795, groupID = 1, refLootEntry = 35011 }, --Drakeclaw Band
	{ itemID = 12463, groupID = 1, refLootEntry = 35011 }, --Drakefang Butcher
	{ itemID = 10796, groupID = 1, refLootEntry = 35011 }, --Drakestone
	{ itemID = 10797, groupID = 1, refLootEntry = 35011 }, --Firebreather
	{ itemID = 12465, groupID = 1, refLootEntry = 35011 }, --Nightfall Drape
	{ itemID = 12243, groupID = 1, refLootEntry = 35011 }, --Smoldering Claw
	{ itemID = 10786, groupID = 1, refLootEntry = 35010 }, --Atal'ai Boots
	{ itemID = 10784, groupID = 1, refLootEntry = 35010 }, --Atal'ai Breastplate
	{ itemID = 10788, groupID = 1, refLootEntry = 35010 }, --Atal'ai Girdle
	{ itemID = 10787, groupID = 1, refLootEntry = 35010 }, --Atal'ai Gloves
	{ itemID = 10785, groupID = 1, refLootEntry = 35010 }, --Atal'ai Leggings
	{ itemID = 10783, groupID = 1, refLootEntry = 35010 }, --Atal'ai Spaulders
	{ itemID = 2078020, groupID = 1, refLootEntry = 2061281 }, --Bloodbound Cleaver
	{ itemID = 2062805, groupID = 1, refLootEntry = 2061281 }, --Bloodhex Chestplate
	{ itemID = 2071560, groupID = 1, refLootEntry = 2061281 }, --Cursed Armguards
	{ itemID = 2075194, groupID = 1, refLootEntry = 2061281 }, --Fang of the Soulflayer
	{ itemID = 2072493, groupID = 1, refLootEntry = 2061281 }, --Hakkari Clasped Handguards
	{ itemID = 2067882, groupID = 1, refLootEntry = 2061281 }, --Legplates of Shadow Incantations
	{ itemID = 2061281, groupID = 1, refLootEntry = 2061281 }, --Shoulderguards of Dark Rituals
	{ itemID = 2070040, groupID = 1, refLootEntry = 2061281 }, --Souleater Greaves
	{ itemID = 2065882, groupID = 1, refLootEntry = 2061281 }, --Voodoo Chain Belt
	{ itemID = 12464, groupID = 1, refLootEntry = 35011 }, --Bloodfire Talons
	{ itemID = 12466, groupID = 1, refLootEntry = 35011 }, --Dawnspire Cord
	{ itemID = 10795, groupID = 1, refLootEntry = 35011 }, --Drakeclaw Band
	{ itemID = 12463, groupID = 1, refLootEntry = 35011 }, --Drakefang Butcher
	{ itemID = 10796, groupID = 1, refLootEntry = 35011 }, --Drakestone
	{ itemID = 10797, groupID = 1, refLootEntry = 35011 }, --Firebreather
	{ itemID = 12465, groupID = 1, refLootEntry = 35011 }, --Nightfall Drape
	{ itemID = 12243, groupID = 1, refLootEntry = 35011 }, --Smoldering Claw
	{ itemID = 10786, groupID = 1, refLootEntry = 35010 }, --Atal'ai Boots
	{ itemID = 10784, groupID = 1, refLootEntry = 35010 }, --Atal'ai Breastplate
	{ itemID = 10788, groupID = 1, refLootEntry = 35010 }, --Atal'ai Girdle
	{ itemID = 10787, groupID = 1, refLootEntry = 35010 }, --Atal'ai Gloves
	{ itemID = 10785, groupID = 1, refLootEntry = 35010 }, --Atal'ai Leggings
	{ itemID = 10783, groupID = 1, refLootEntry = 35010 }, --Atal'ai Spaulders
	{ itemID = 2071561, groupID = 1, refLootEntry = 2061282 }, --Bindings of the Enforcer
	{ itemID = 2061282, groupID = 1, refLootEntry = 2061282 }, --Bloodcurse Mantle of Hukku
	{ itemID = 2067884, groupID = 1, refLootEntry = 2061282 }, --Corrupted Legwraps of the Atal'ai
	{ itemID = 2062807, groupID = 1, refLootEntry = 2061282 }, --Hukku's Ritual Garb
	{ itemID = 2070042, groupID = 1, refLootEntry = 2061282 }, --Hukku's Tainted Steps
	{ itemID = 2064071, groupID = 1, refLootEntry = 2061282 }, --Shadowchannel Robe of Hukku
	{ itemID = 2072495, groupID = 1, refLootEntry = 2061282 }, --Spectral Grip
	{ itemID = 2075196, groupID = 1, refLootEntry = 2061282 }, --Wand of Green Channeling
	{ itemID = 2062811, groupID = 1, refLootEntry = 2061283 }, --Augur's Vestment
	{ itemID = 2065886, groupID = 1, refLootEntry = 2061283 }, --Girdle of Dark Rituals
	{ itemID = 2072498, groupID = 1, refLootEntry = 2061283 }, --Handwraps of Prophetic Sacrifice
	{ itemID = 2061283, groupID = 1, refLootEntry = 2061283 }, --Mantle of the Atal'ai Prophet
	{ itemID = 2064074, groupID = 1, refLootEntry = 2061283 }, --Robes of Shadow Invocation
	{ itemID = 2075191, groupID = 1, refLootEntry = 2061283 }, --Staff of Hakkar's Chosen
	{ itemID = 2067888, groupID = 1, refLootEntry = 2061283 }, --Trousers of Fel Insight
	{ itemID = 10786, groupID = 1, refLootEntry = 35010 }, --Atal'ai Boots
	{ itemID = 10784, groupID = 1, refLootEntry = 35010 }, --Atal'ai Breastplate
	{ itemID = 10788, groupID = 1, refLootEntry = 35010 }, --Atal'ai Girdle
	{ itemID = 10787, groupID = 1, refLootEntry = 35010 }, --Atal'ai Gloves
	{ itemID = 10785, groupID = 1, refLootEntry = 35010 }, --Atal'ai Leggings
	{ itemID = 10783, groupID = 1, refLootEntry = 35010 }, --Atal'ai Spaulders
	{ itemID = 2078021, groupID = 1, refLootEntry = 2060264 }, --Barrier of the Jungle Vigiliant
	{ itemID = 2075195, groupID = 1, refLootEntry = 2060264 }, --Blade of the Atal'ai Acolyte
	{ itemID = 2070041, groupID = 1, refLootEntry = 2060264 }, --Footwraps of the Faithful
	{ itemID = 2072494, groupID = 1, refLootEntry = 2060264 }, --Handguards of Forbidden Rites
	{ itemID = 2067883, groupID = 1, refLootEntry = 2060264 }, --Legwraps of Dark Communion
	{ itemID = 2065883, groupID = 1, refLootEntry = 2060264 }, --Sash of the Hakkari Devotee
	{ itemID = 2060264, groupID = 1, refLootEntry = 2060264 }, --Veil of the Defiant Cultist
	{ itemID = 2062806, groupID = 1, refLootEntry = 2060264 }, --Vestments of Ritual Zeal
	{ itemID = 10786, groupID = 1, refLootEntry = 35010 }, --Atal'ai Boots
	{ itemID = 10784, groupID = 1, refLootEntry = 35010 }, --Atal'ai Breastplate
	{ itemID = 10788, groupID = 1, refLootEntry = 35010 }, --Atal'ai Girdle
	{ itemID = 10787, groupID = 1, refLootEntry = 35010 }, --Atal'ai Gloves
	{ itemID = 10785, groupID = 1, refLootEntry = 35010 }, --Atal'ai Leggings
	{ itemID = 10783, groupID = 1, refLootEntry = 35010 }, --Atal'ai Spaulders
	{ itemID = 2071563, groupID = 1, refLootEntry = 2060265 }, --Bloodbinder's Bracers of Enchantment
	{ itemID = 2062809, groupID = 1, refLootEntry = 2060265 }, --Hexweaver's Robe of Twilight
	{ itemID = 2060265, groupID = 1, refLootEntry = 2060265 }, --Shadowbinder's Hood of Rituals
	{ itemID = 2067886, groupID = 1, refLootEntry = 2060265 }, --Soulflayer's Leggings of the Swamp
	{ itemID = 2075198, groupID = 1, refLootEntry = 2060265 }, --Staff of the Wicked Ritual
	{ itemID = 2065884, groupID = 1, refLootEntry = 2060265 }, --Voodoo Sash of the Atal'ai
	{ itemID = 12464, groupID = 1, refLootEntry = 35011 }, --Bloodfire Talons
	{ itemID = 12466, groupID = 1, refLootEntry = 35011 }, --Dawnspire Cord
	{ itemID = 10795, groupID = 1, refLootEntry = 35011 }, --Drakeclaw Band
	{ itemID = 12463, groupID = 1, refLootEntry = 35011 }, --Drakefang Butcher
	{ itemID = 10796, groupID = 1, refLootEntry = 35011 }, --Drakestone
	{ itemID = 10797, groupID = 1, refLootEntry = 35011 }, --Firebreather
	{ itemID = 12465, groupID = 1, refLootEntry = 35011 }, --Nightfall Drape
	{ itemID = 12243, groupID = 1, refLootEntry = 35011 }, --Smoldering Claw
	{ itemID = 2075192, groupID = 1, refLootEntry = 2060266 }, --Blade of the Soulflayer's Wrath
	{ itemID = 2065885, groupID = 1, refLootEntry = 2060266 }, --Bloodbound Sash of Shadows
	{ itemID = 2071564, groupID = 1, refLootEntry = 2060266 }, --Cuffs of the Suffering Pact
	{ itemID = 2070044, groupID = 1, refLootEntry = 2060266 }, --Footwraps of the Corrupted
	{ itemID = 2072497, groupID = 1, refLootEntry = 2060266 }, --Gloves of the Twisted Will
	{ itemID = 2067887, groupID = 1, refLootEntry = 2060266 }, --Leggings of Dark Allegiance
	{ itemID = 2062810, groupID = 1, refLootEntry = 2060266 }, --Ogom's Wretched Shroud
	{ itemID = 2064073, groupID = 1, refLootEntry = 2060266 }, --Robe of the Cursed Protector
	{ itemID = 2060266, groupID = 1, refLootEntry = 2060266 }, --Veil of the Wretched Oath
	{ itemID = 10835, groupID = 1, refLootEntry = 5709 }, --Crest of Supremacy
	{ itemID = 10828, groupID = 1, refLootEntry = 5709 }, --Dire Nail
	{ itemID = 10847, groupID = 1, refLootEntry = 5709 }, --Dragon's Call
	{ itemID = 10833, groupID = 1, refLootEntry = 5709 }, --Horns of Eranikus
	{ itemID = 10836, groupID = 1, refLootEntry = 5709 }, --Rod of Corrosion
	{ itemID = 10829, groupID = 1, refLootEntry = 5709 }, --The Dragon's Eye
	{ itemID = 10837, groupID = 1, refLootEntry = 5709 }, --Tooth of Eranikus
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
	{ itemID = 12464, groupID = 1, refLootEntry = 35011 }, --Bloodfire Talons
	{ itemID = 12466, groupID = 1, refLootEntry = 35011 }, --Dawnspire Cord
	{ itemID = 10795, groupID = 1, refLootEntry = 35011 }, --Drakeclaw Band
	{ itemID = 12463, groupID = 1, refLootEntry = 35011 }, --Drakefang Butcher
	{ itemID = 10796, groupID = 1, refLootEntry = 35011 }, --Drakestone
	{ itemID = 10797, groupID = 1, refLootEntry = 35011 }, --Firebreather
	{ itemID = 12465, groupID = 1, refLootEntry = 35011 }, --Nightfall Drape
	{ itemID = 12243, groupID = 1, refLootEntry = 35011 }, --Smoldering Claw
	{ itemID = 10786, groupID = 1, refLootEntry = 35010 }, --Atal'ai Boots
	{ itemID = 10784, groupID = 1, refLootEntry = 35010 }, --Atal'ai Breastplate
	{ itemID = 10788, groupID = 1, refLootEntry = 35010 }, --Atal'ai Girdle
	{ itemID = 10787, groupID = 1, refLootEntry = 35010 }, --Atal'ai Gloves
	{ itemID = 10785, groupID = 1, refLootEntry = 35010 }, --Atal'ai Leggings
	{ itemID = 10783, groupID = 1, refLootEntry = 35010 }, --Atal'ai Spaulders
	{ itemID = 2070039, groupID = 1, refLootEntry = 2061280 }, --Boots of Dark Rituals
	{ itemID = 2062804, groupID = 1, refLootEntry = 2061280 }, --Chestguard of Atal'ai Shadows
	{ itemID = 2065881, groupID = 1, refLootEntry = 2061280 }, --Cincture of Hakkar's Whispers
	{ itemID = 2072492, groupID = 1, refLootEntry = 2061280 }, --Gloves of the Exiled Protector
	{ itemID = 2075193, groupID = 1, refLootEntry = 2061280 }, --Mace of the Skeleton Storm
	{ itemID = 2061280, groupID = 1, refLootEntry = 2061280 }, --Mantle of the Sunken Zealot
	{ itemID = 2067881, groupID = 1, refLootEntry = 2061280 }, --Trousers of the Swamp Guardian
	{ itemID = 2071559, groupID = 1, refLootEntry = 2061280 }, --Wristwraps of the Temple Keeper
	{ itemID = 10786, groupID = 1, refLootEntry = 35010 }, --Atal'ai Boots
	{ itemID = 10784, groupID = 1, refLootEntry = 35010 }, --Atal'ai Breastplate
	{ itemID = 10788, groupID = 1, refLootEntry = 35010 }, --Atal'ai Girdle
	{ itemID = 10787, groupID = 1, refLootEntry = 35010 }, --Atal'ai Gloves
	{ itemID = 10785, groupID = 1, refLootEntry = 35010 }, --Atal'ai Leggings
	{ itemID = 10783, groupID = 1, refLootEntry = 35010 }, --Atal'ai Spaulders
	{ itemID = 2075197, groupID = 1, refLootEntry = 2062808 }, --Axe of Atal'ai Doom
	{ itemID = 2064072, groupID = 1, refLootEntry = 2062808 }, --Chestguard of Rituals
	{ itemID = 2070043, groupID = 1, refLootEntry = 2062808 }, --Footguards of the Serpent
	{ itemID = 2072496, groupID = 1, refLootEntry = 2062808 }, --Handwraps of Zul'Lor
	{ itemID = 2067885, groupID = 1, refLootEntry = 2062808 }, --Leggings of the Dark Zealot
	{ itemID = 2062808, groupID = 1, refLootEntry = 2062808 }, --Veil of Hakkari Shadows
	{ itemID = 2071562, groupID = 1, refLootEntry = 2062808 }, --Wristbands of Soulflayer's Might
	{ itemID = 28387, groupID = 1, refLootEntry = 40082 }, --Lamp of Peaceful Repose
	{ itemID = 28386, groupID = 1, refLootEntry = 40082 }, --Nether Core's Control Rod
	{ itemID = 28392, groupID = 1, refLootEntry = 40082 }, --Reflex Blades
	{ itemID = 28390, groupID = 1, refLootEntry = 40082 }, --Thatia's Self-Correcting Gauntlets
	{ itemID = 28391, groupID = 1, refLootEntry = 40082 }, --Worldfire Chestguard
	{ itemID = 2076654, groupID = 1, refLootEntry = 2076654 }, --Doomsayer's Shadow Blade
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
	{ itemID = 28397, groupID = 1, refLootEntry = 40081 }, --Emberhawk Crossbow
	{ itemID = 28396, groupID = 1, refLootEntry = 40081 }, --Gloves of the Unbound
	{ itemID = 28394, groupID = 1, refLootEntry = 40081 }, --Ryngo's Band of Ingenuity
	{ itemID = 28398, groupID = 1, refLootEntry = 40081 }, --The Sleeper's Cord
	{ itemID = 28393, groupID = 1, refLootEntry = 40081 }, --Warmaul of Infused Light
	{ itemID = 2076655, groupID = 1, refLootEntry = 2076655 }, --Axe of Felfire Reckoning
	{ itemID = 28373, groupID = 1, refLootEntry = 40080 }, --Cloak of Scintillating Auras
	{ itemID = 28372, groupID = 1, refLootEntry = 40080 }, --Idol of Feral Shadows
	{ itemID = 28374, groupID = 1, refLootEntry = 40080 }, --Mana-Sphere Shoulderguards
	{ itemID = 28384, groupID = 1, refLootEntry = 40080 }, --Outland Striders
	{ itemID = 28375, groupID = 1, refLootEntry = 40080 }, --Rubium War-Girdle
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
	{ itemID = 2071776, groupID = 1, refLootEntry = 2060635 }, --Wristwraps of Thornwoven Arcana
	{ itemID = 28339, groupID = 1, refLootEntry = 40073 }, --Boots of the Shifting Sands
	{ itemID = 28338, groupID = 1, refLootEntry = 40073 }, --Devil-Stitched Leggings
	{ itemID = 28340, groupID = 1, refLootEntry = 40073 }, --Mantle of Autumn
	{ itemID = 28328, groupID = 1, refLootEntry = 40073 }, --Mithril-Bark Cloak
	{ itemID = 241962, groupID = 1, refLootEntry = 40073 }, --Spaulders of the Divine
	{ itemID = 242681, groupID = 1, refLootEntry = 40073 }, --Spaulders of the Just
	{ itemID = 27739, groupID = 1, refLootEntry = 40073 }, --Spaulders of the Righteous
	{ itemID = 28327, groupID = 1, refLootEntry = 40072 }, --Arcane Netherband
	{ itemID = 28325, groupID = 1, refLootEntry = 40072 }, --Dreamer's Dragonstaff
	{ itemID = 28324, groupID = 1, refLootEntry = 40072 }, --Gauntlets of Cruel Intention
	{ itemID = 28323, groupID = 1, refLootEntry = 40072 }, --Ring of Umbral Doom
	{ itemID = 28322, groupID = 1, refLootEntry = 40072 }, --Runed Dagger of Solace
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
	{ itemID = 28257, groupID = 1, refLootEntry = 40060 }, --Hammer of the Penitent
	{ itemID = 28255, groupID = 1, refLootEntry = 40060 }, --Lunar-Claw Pauldrons
	{ itemID = 28253, groupID = 1, refLootEntry = 40060 }, --Plasma Rat's Hyper-Scythe
	{ itemID = 28256, groupID = 1, refLootEntry = 40060 }, --Thoriumweave Cloak
	{ itemID = 28254, groupID = 1, refLootEntry = 40060 }, --Warp Engineer's Prismatic Chain
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
	{ itemID = 2074735, groupID = 1, refLootEntry = 2074735 }, --Hammer of the Titanic Sentinel
	{ itemID = 2078598, groupID = 1, refLootEntry = 2060219 }, --Ancient Bow of Uldaman
	{ itemID = 2060219, groupID = 1, refLootEntry = 2060219 }, --Baelog's Helm of Nordic Adventure
	{ itemID = 2075322, groupID = 1, refLootEntry = 2060219 }, --Baelog's Sword of Discovery
	{ itemID = 2062709, groupID = 1, refLootEntry = 2060219 }, --Explorers' League Tunic
	{ itemID = 2067783, groupID = 1, refLootEntry = 2060219 }, --Legwraps of the Lost Viking
	{ itemID = 2069974, groupID = 1, refLootEntry = 2060219 }, --Runic Pathfinder's Boots
	{ itemID = 2065792, groupID = 1, refLootEntry = 2060219 }, --Titanforged Girdle
	{ itemID = 2064027, groupID = 1, refLootEntry = 2060219 }, --Uldaman Raider's Chestguard
	{ itemID = 3595662, groupID = 1, refLootEntry = 3595662 }, --Dwarven Crossbow
	{ itemID = 2065828, groupID = 1, refLootEntry = 2060239 }, --Belt of Incandescent Warding
	{ itemID = 2070006, groupID = 1, refLootEntry = 2060239 }, --Firewalker's Sandals
	{ itemID = 2075384, groupID = 1, refLootEntry = 2060239 }, --Flamelash Dagger of the Dark Iron
	{ itemID = 2061250, groupID = 1, refLootEntry = 2060239 }, --Galgann's Emberguard Mantle
	{ itemID = 2060239, groupID = 1, refLootEntry = 2060239 }, --Galgann's Flamebinder Circlet
	{ itemID = 2072445, groupID = 1, refLootEntry = 2060239 }, --Inferno Grasp Handwraps
	{ itemID = 2067823, groupID = 1, refLootEntry = 2060239 }, --Molten Core Legwraps
	{ itemID = 2062748, groupID = 1, refLootEntry = 2060239 }, --Pyroclasmic Robes of Galgann
	{ itemID = 3595662, groupID = 1, refLootEntry = 3595662 }, --Dwarven Crossbow
	{ itemID = 2075109, groupID = 1, refLootEntry = 2075109 }, --Grimlok's Lightning Rod
	{ itemID = 2075372, groupID = 1, refLootEntry = 2075372 }, --Arcing War Mace of Ironaya
	{ itemID = 868, groupID = 1, refLootEntry = 24080 }, --Ardent Custodian
	{ itemID = 2825, groupID = 1, refLootEntry = 24080 }, --Bow of Searing Arrows
	{ itemID = 867, groupID = 1, refLootEntry = 24080 }, --Gloves of Holy Might
	{ itemID = 1980, groupID = 1, refLootEntry = 24080 }, --Underworld Band
	{ itemID = 6632, groupID = 1, refLootEntry = 5912 }, --Feyscale Cloak
	{ itemID = 5243, groupID = 1, refLootEntry = 5912 }, --Firebelcher
	{ itemID = 13245, groupID = 1, refLootEntry = 3653 }, --Kresh's Back
	{ itemID = 6447, groupID = 1, refLootEntry = 3653 }, --Worn Turtle Shell Shield
	{ itemID = 10412, groupID = 1, refLootEntry = 3671 }, --Belt of the Fang
	{ itemID = 5404, groupID = 1, refLootEntry = 3671 }, --Serpent's Shoulders
	{ itemID = 2063944, groupID = 1, refLootEntry = 2063944 }, --Anacondra's Envenomed Vestment
	{ itemID = 2072297, groupID = 1, refLootEntry = 2063944 }, --Clutches of the Serpent
	{ itemID = 2067648, groupID = 1, refLootEntry = 2063944 }, --Corrupted Dreamweave Leggings
	{ itemID = 2069850, groupID = 1, refLootEntry = 2063944 }, --Creeping Vine Sandals
	{ itemID = 2065673, groupID = 1, refLootEntry = 2063944 }, --Serpentbinder's Sash
	{ itemID = 2074849, groupID = 1, refLootEntry = 2063944 }, --Venomous Channeler's Staff
	{ itemID = 6460, groupID = 1, refLootEntry = 3669 }, --Cobrahn's Grasp
	{ itemID = 10410, groupID = 1, refLootEntry = 3669 }, --Leggings of the Fang
	{ itemID = 6465, groupID = 1, refLootEntry = 3669 }, --Robe of the Moccasin
	{ itemID = 2062556, groupID = 1, refLootEntry = 2062556 }, --Cobrahn's Enshrouded Vestments
	{ itemID = 2067626, groupID = 1, refLootEntry = 2062556 }, --Dreamwoven Leggings
	{ itemID = 2069826, groupID = 1, refLootEntry = 2062556 }, --Footwraps of the Nightmare
	{ itemID = 2072280, groupID = 1, refLootEntry = 2062556 }, --Grip of the Emerald Coils
	{ itemID = 2077980, groupID = 1, refLootEntry = 2062556 }, --Mace of Twisted Dreams
	{ itemID = 2065656, groupID = 1, refLootEntry = 2062556 }, --Serpentbinder's Girdle
	{ itemID = 2074847, groupID = 1, refLootEntry = 2062556 }, --Venomfang Claws
	{ itemID = 6473, groupID = 1, refLootEntry = 3670 }, --Armor of the Fang
	{ itemID = 6472, groupID = 1, refLootEntry = 3670 }, --Stinging Viper
	{ itemID = 2074848, groupID = 1, refLootEntry = 2062557 }, --Axe of the Serpent's Fury
	{ itemID = 2065657, groupID = 1, refLootEntry = 2062557 }, --Belt of the Emerald Coil
	{ itemID = 2069827, groupID = 1, refLootEntry = 2062557 }, --Boots of the Nightmare's Path
	{ itemID = 2077981, groupID = 1, refLootEntry = 2062557 }, --Fang of the Dreaming Warden
	{ itemID = 2072281, groupID = 1, refLootEntry = 2062557 }, --Grips of the Dreambinder
	{ itemID = 2067627, groupID = 1, refLootEntry = 2062557 }, --Leggings of the Fang's Whisper
	{ itemID = 2062557, groupID = 1, refLootEntry = 2062557 }, --Robes of the Serpent's Dream
	{ itemID = 10411, groupID = 1, refLootEntry = 3673 }, --Footpads of the Fang
	{ itemID = 6459, groupID = 1, refLootEntry = 3673 }, --Savage Trodders
	{ itemID = 5970, groupID = 1, refLootEntry = 3673 }, --Serpent Gloves
	{ itemID = 6469, groupID = 1, refLootEntry = 3673 }, --Venomstrike
	{ itemID = 2074851, groupID = 1, refLootEntry = 2061180 }, --Axe of the Dream's Echo
	{ itemID = 2065658, groupID = 1, refLootEntry = 2061180 }, --Belt of Corrupted Growth
	{ itemID = 2071498, groupID = 1, refLootEntry = 2061180 }, --Bracers of Elemental Disruption
	{ itemID = 2069828, groupID = 1, refLootEntry = 2061180 }, --Footwraps of the Fang
	{ itemID = 2072282, groupID = 1, refLootEntry = 2061180 }, --Grips of the Untamed
	{ itemID = 2067628, groupID = 1, refLootEntry = 2061180 }, --Leggings of Serpentine Will
	{ itemID = 2061180, groupID = 1, refLootEntry = 2061180 }, --Serpentis's Chaotic Mantle
	{ itemID = 2062558, groupID = 1, refLootEntry = 2061180 }, --Vestments of Twisted Dreams
	{ itemID = 6463, groupID = 1, refLootEntry = 3654 }, --Deep Fathom Ring
	{ itemID = 6627, groupID = 1, refLootEntry = 3654 }, --Mutant Scale Breastplate
	{ itemID = 6461, groupID = 1, refLootEntry = 3654 }, --Slime-encrusted Pads
	{ itemID = 6449, groupID = 1, refLootEntry = 3674 }, --Glowing Lizardscale Cloak
	{ itemID = 6448, groupID = 1, refLootEntry = 3674 }, --Tail Spike
	{ itemID = 6631, groupID = 1, refLootEntry = 5775 }, --Living Root
	{ itemID = 6630, groupID = 1, refLootEntry = 5775 }, --Seedcloud Buckler
	{ itemID = 6629, groupID = 1, refLootEntry = 5775 }, --Sporid Cape
	{ itemID = 2062888, groupID = 1, refLootEntry = 2062888 }, --Antu'sul's Mystic Garb
	{ itemID = 2075450, groupID = 1, refLootEntry = 2062888 }, --Antu'sul's Thunderous Mace
	{ itemID = 2067968, groupID = 1, refLootEntry = 2062888 }, --Bindings of Earthen Spirits
	{ itemID = 2065958, groupID = 1, refLootEntry = 2062888 }, --Desert Walker's Belt
	{ itemID = 2072557, groupID = 1, refLootEntry = 2062888 }, --Earthshaper's Grips
	{ itemID = 2070137, groupID = 1, refLootEntry = 2062888 }, --Farraki Ritual Sandals
	{ itemID = 2064118, groupID = 1, refLootEntry = 2062888 }, --Sandfury Shaman's Vest
	{ itemID = 2071591, groupID = 1, refLootEntry = 2062888 }, --Wrists of the Voodoo Guardians
	{ itemID = 2065845, groupID = 1, refLootEntry = 2061260 }, --Belt of the Tanaris Wastes
	{ itemID = 2070017, groupID = 1, refLootEntry = 2061260 }, --Boots of the Sandstorm
	{ itemID = 2071545, groupID = 1, refLootEntry = 2061260 }, --Bracers of the Sun-Scorched
	{ itemID = 2072460, groupID = 1, refLootEntry = 2061260 }, --Gauntlets of the Farraki
	{ itemID = 2067842, groupID = 1, refLootEntry = 2061260 }, --Legguards of the Exiled
	{ itemID = 2061260, groupID = 1, refLootEntry = 2061260 }, --Sandfury Mantle
	{ itemID = 2064046, groupID = 1, refLootEntry = 2061260 }, --Sandscalp’s Breastplate
	{ itemID = 2075376, groupID = 1, refLootEntry = 2061260 }, --Staff of the Zul'Farrak Guardian
	{ itemID = 2062766, groupID = 1, refLootEntry = 2061260 }, --Tunic of the Desert Chief
	{ itemID = 2071607, groupID = 1, refLootEntry = 2061348 }, --Bindings of the Perished
	{ itemID = 2075611, groupID = 1, refLootEntry = 2061348 }, --Dagger of Silent Strikes
	{ itemID = 2068053, groupID = 1, refLootEntry = 2061348 }, --Dune Wraith Legwraps
	{ itemID = 2062957, groupID = 1, refLootEntry = 2061348 }, --Ethereal Whisper Shirt
	{ itemID = 2072619, groupID = 1, refLootEntry = 2061348 }, --Gloves of the Ghostly Veil
	{ itemID = 2061348, groupID = 1, refLootEntry = 2061348 }, --Sandfury Phantom Epaulets
	{ itemID = 2070217, groupID = 1, refLootEntry = 2061348 }, --Spectral Sandstalker Boots
	{ itemID = 2064173, groupID = 1, refLootEntry = 2061348 }, --Veil of Desert Spirits
	{ itemID = 2066028, groupID = 1, refLootEntry = 2061348 }, --Wraith's Whispering Cord
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
	{ itemID = 14549, groupID = 1, refLootEntry = 24081 }, --Boots of Avoidance
	{ itemID = 2164, groupID = 1, refLootEntry = 24081 }, --Gut Ripper
	{ itemID = 1981, groupID = 1, refLootEntry = 24081 }, --Icemail Jerkin
	{ itemID = 1982, groupID = 1, refLootEntry = 24081 }, --Nightblade
	{ itemID = 2072488, groupID = 1, refLootEntry = 2060263 }, --Bloodstained Handguards
	{ itemID = 2065878, groupID = 1, refLootEntry = 2060263 }, --Desert Hunter's Girdle
	{ itemID = 2075425, groupID = 1, refLootEntry = 2060263 }, --Foecrusher's Voodoo Maul
	{ itemID = 2061276, groupID = 1, refLootEntry = 2060263 }, --Gutchewer's Ritual Shoulderguards
	{ itemID = 2070037, groupID = 1, refLootEntry = 2060263 }, --Mystic Sandals of Nekrum
	{ itemID = 2060263, groupID = 1, refLootEntry = 2060263 }, --Nekrum's Voodoo Helm
	{ itemID = 2064068, groupID = 1, refLootEntry = 2060263 }, --Sandfury Protector's Chestplate
	{ itemID = 2062800, groupID = 1, refLootEntry = 2060263 }, --Savage Tanaris Tunic
	{ itemID = 2067877, groupID = 1, refLootEntry = 2060263 }, --Trollbone Legplates
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
	{ itemID = 25876, groupID = 1, refLootEntry = 25876 }, --Gleaming Throwing Axe
	{ itemID = 2075426, groupID = 1, refLootEntry = 2061275 }, --Blooddrinker War Axe
	{ itemID = 2064067, groupID = 1, refLootEntry = 2061275 }, --Desert Guardian's Chestplate
	{ itemID = 2071557, groupID = 1, refLootEntry = 2061275 }, --Dune Stalker's Bracers
	{ itemID = 2065877, groupID = 1, refLootEntry = 2061275 }, --Farraki Defender's Girdle
	{ itemID = 2061275, groupID = 1, refLootEntry = 2061275 }, --Sandfury Tribal Pauldrons
	{ itemID = 2070036, groupID = 1, refLootEntry = 2061275 }, --Sandsurfer's Sabatons
	{ itemID = 2062799, groupID = 1, refLootEntry = 2061275 }, --Sun-Bleached Ritual Shirt
	{ itemID = 2067876, groupID = 1, refLootEntry = 2061275 }, --Tanaris Windwalkers
	{ itemID = 2072487, groupID = 1, refLootEntry = 2061275 }, --Voodoo Grasp Gauntlets
	{ itemID = 2066026, groupID = 1, refLootEntry = 2061347 }, --Belt of the Arid Defender
	{ itemID = 2071606, groupID = 1, refLootEntry = 2061347 }, --Bracers of the Desert Wind
	{ itemID = 2070215, groupID = 1, refLootEntry = 2061347 }, --Dune Stalker Greaves
	{ itemID = 2061347, groupID = 1, refLootEntry = 2061347 }, --Dunereaver's Grit Pauldrons
	{ itemID = 2075610, groupID = 1, refLootEntry = 2061347 }, --Furybound Axe
	{ itemID = 2068051, groupID = 1, refLootEntry = 2061347 }, --Legguards of the Dunewalker
	{ itemID = 2064171, groupID = 1, refLootEntry = 2061347 }, --Sandfury Battleplate
	{ itemID = 2072617, groupID = 1, refLootEntry = 2061347 }, --Sandshaper's Gauntlets
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
	{ itemID = 2075405, groupID = 1, refLootEntry = 2061258 }, --Blade of Bly's Resolve
	{ itemID = 2064044, groupID = 1, refLootEntry = 2061258 }, --Breastplate of Bly's Valor
	{ itemID = 2072459, groupID = 1, refLootEntry = 2061258 }, --Gauntlets of the Sandstorm
	{ itemID = 2067840, groupID = 1, refLootEntry = 2061258 }, --Legplates of Tactical Advantage
	{ itemID = 2062764, groupID = 1, refLootEntry = 2061258 }, --Mercenary's Light Shirt
	{ itemID = 2065843, groupID = 1, refLootEntry = 2061258 }, --Opportunist's Girdle
	{ itemID = 2078045, groupID = 1, refLootEntry = 2061258 }, --Protector's Trollskin Shield
	{ itemID = 2070016, groupID = 1, refLootEntry = 2061258 }, --Sandfury Stompers
	{ itemID = 2061258, groupID = 1, refLootEntry = 2061258 }, --Shoulderguards of Desert Command
	{ itemID = 2072461, groupID = 1, refLootEntry = 2061261 }, --Grips of Loa's Dark Whispers
	{ itemID = 2067843, groupID = 1, refLootEntry = 2061261 }, --Leggings of the Enshadowed Ritual
	{ itemID = 2061261, groupID = 1, refLootEntry = 2061261 }, --Mantle of Duskbinding Shadows
	{ itemID = 2062767, groupID = 1, refLootEntry = 2061261 }, --Robes of the Forsaken Voids
	{ itemID = 2065846, groupID = 1, refLootEntry = 2061261 }, --Sash of the Eclipsed Spirits
	{ itemID = 2075380, groupID = 1, refLootEntry = 2061261 }, --Staff of the Twilit Chanter
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
	{ itemID = 2072490, groupID = 1, refLootEntry = 2061278 }, --Gloves of Ancestral Duty
	{ itemID = 2067879, groupID = 1, refLootEntry = 2061278 }, --Leggings of Devotion's Sacrifice
	{ itemID = 2061278, groupID = 1, refLootEntry = 2061278 }, --Mantle of Sacred Resolve
	{ itemID = 2062802, groupID = 1, refLootEntry = 2061278 }, --Robe of the Martyr's Zeal
	{ itemID = 2065879, groupID = 1, refLootEntry = 2061278 }, --Sash of the Desert Guardian
	{ itemID = 2075378, groupID = 1, refLootEntry = 2061278 }, --Staff of Theka's Legacy
	{ itemID = 2065844, groupID = 1, refLootEntry = 2060247 }, --Girdle of Dark Rituals
	{ itemID = 2064045, groupID = 1, refLootEntry = 2060247 }, --Hexed Armor of Zum'rah
	{ itemID = 2067841, groupID = 1, refLootEntry = 2060247 }, --Leggings of the Desert Witch Doctor
	{ itemID = 2062765, groupID = 1, refLootEntry = 2060247 }, --Mystic Shaman's Tunic
	{ itemID = 2061259, groupID = 1, refLootEntry = 2060247 }, --Sandfury Ritual Shoulderpads
	{ itemID = 2071544, groupID = 1, refLootEntry = 2060247 }, --Spiritbinder's Bindings
	{ itemID = 2075377, groupID = 1, refLootEntry = 2060247 }, --Zum'rah's Shadowstaff
	{ itemID = 2060247, groupID = 1, refLootEntry = 2060247 }, --Zum'rah's Voodoo Headdress
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
	{ itemID = 229739, refLootEntry = 15687 }, --Tome of Untold Secrets
	{ itemID = 22559, refLootEntry = 15687, droprate = { nil, "2%", "5%", "7%", "10%" } }, --Formula: Enchant Weapon - Mongoose
	{ itemID = 60166, refLootEntry = 15687, droprate = "1%" }, --Pet Sigil

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
	{ itemID = 28529, groupID = 2, refLootEntry = 15687 }, --Royal Cloak of Arathi Kings
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
	{ itemID = 28529, groupID = 2, refLootEntry = 15687 }, --Royal Cloak of Arathi Kings
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
	{ itemID = 28529, groupID = 2, refLootEntry = 15687 }, --Royal Cloak of Arathi Kings



}