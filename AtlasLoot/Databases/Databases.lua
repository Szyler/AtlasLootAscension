local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

function AtlasLoot:InitializeDatabases()
	self:AddItemData("crafting", {
		Custom = {
			{ "DISCOVERY_ALCH_ELIXIRFLASK" },
			{ "DISCOVERY_ALCH_POTION" },
			{ "DISCOVERY_ALCH_XMUTE" },
			{ "DISCOVERY_ALCH_PROT" },
			{ "DAILY_COOKING_MEAT", "Shattrath", 0, 0 },
			{ "DAILY_COOKING_FISH", "Shattrath", 0, 0 },
			{ "DAILY_FISHING_SHATT", "Shattrath", 0, 0 },
			{ "DEFAULT_RECIPE" },
			{ "CRAFTED_ENGINEERS" },
			{ "ONYXIA_HEAD_QUEST", "Onyxia's Lair", 0, 0 },
			{ "EDGE_OF_MADNESS", "Zul'Gurub", 0, 0 },
			{ "DISCOVERY_ALCH_WRATH" },
			{ "HENRY_STERN_RFD", "Razorfen Downs", 0, 0 },
			{ "DISCOVERY_INSC_MINOR" },
			{ "DISCOVERY_INSC_NORTHREND" },
			{ "ENG_GNOMER", "Gnomeregan", 0, 0 },
			{ "ENG_FLOOR_ITEM_BRD", "Blackrock Depths", 0, 0 },
			{ "DISCOVERY_ALCH_NORTHREND_RESEARCH" },
			{ "DISCOVERY_ALCH_NORTHREND_XMUTE" },
			{ "Custom36" },
			{ "Custom36" },
			{ "AQ40_RANDOM_BOP", "Temple of Ahn'Qiraj", 0, 0 },
			{ "DM_CACHE", "Dire Maul", 59.04, 48.82 },
			{ "SUNWELL_RANDOM", "Sunwell Plateau", 0, 0 },
			{ "BRD_RANDOM_ROOM", "Blackrock Depths", 0, 0 },
			{ "MC_RANDOM", "Molten Core", 0, 0 },
			{ "HYJAL_RANDOM", "Hyjal Summit", 0, 0 },
			{ "Custom36" },
			{ "ZA_RANDOM", "Zul'Aman", 0, 0 },
			{ "SCHOLO_BOOK_SPAWN", "Scholomance", 0, 0 },
			{ "STRATH_BS_PLANS", "Stratholme", 0, 0 },
			{ "DM_TRIBUTE", "Dire Maul", 59.04, 48.82 },
			{ "Custom36" },
			{ "BT_RANDOM", "Black Temple", 0, 0 },
			{ "Random Level 70 instance drop" },
			{ "Custom36" },
			{ "SSC_RANDOM", "Serpentshrine Cavern", 0, 0 },
			{ "DAILY_COOKING_DAL", "Dalaran", 0, 0 },
			{ "ULDUAR_RANDOM", "Ulduar", 0, 0 },
			{ "DISCOVERY_INSC_BOOK" },
			{ "Custom41" },
			{ "TOC25_RANDOM" },
			{ "TK_RANDOM", "The Eye", 0, 0 },
			{ "Custom44" },
			{ "Custom45" },
			{ "Random Level 70 instance drop/Raid Trash Drop".."/".."TBC Callboard Cache" },
		}
	})

	self:AddItemData("crafting", {
		Seasonal = {
			{ GetCategoryInfo(156) }, -- Winter's Veil
			{ GetCategoryInfo(160) }, -- Lunar Festival
			{ "Darkmoon Faire" }, -- Darkmoon Faire
			{ GetCategoryInfo(161) }, -- Midsummer
			{ GetCategoryInfo(14981) }, -- Pilgrim's Bounty
			{ "Day of the Dead" }, -- Day of the Dead
		}
	})

	self:AddItemData({
	----------------------
	--- Heirloom Items ---
	----------------------
		["Heirloom"] = {
			{
				{ itemID = 1642992, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }, --Discerning Eye of the Beast
				{ itemID = 1642991, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }, --Swift Hand of Justice
				{ itemID = 1644098, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }, --Inherited Insignia of the Alliance
				{ itemID = 1644097, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }, --Inherited Insignia of the Horde
			},
			{
				{ itemID = 1339077, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
				{ itemID = 1339076, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
				{ itemID = 1339078, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
				{ itemID = 339076, price = ""  }, --Pendant of Adventure
				{ itemID = 339100, price = ""  }, --Pendant of Discovery
			},
			{
				{ itemID = 1339079, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
				{ itemID = 1339080, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
				{ itemID = 1339081, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
				{ itemID = 1339082, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
				{ itemID = 1339083, price = "225 #tokenofprestige# | 60000 #marks# | TBD #bazaar#" },
				{ itemID = 50255 }, --Dread Pirate Ring
			},
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
	})

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
		{ itemID = 354172 }, --Woven Flowers
		{ itemID = 354173 }, --Caravan Guard Vest
		{ itemID = 354174 }, --Caravan Guard Pauldrons
		{ itemID = 354175 }, --Sorrow of the Kodo
		{ itemID = 354176 }, --Bone Splitter
		{ itemID = 354177 }, --Offering to Azshara
		{ itemID = 354178 }, --Water Seer's Headdress
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
		{ itemID = 521118 }, --Plundered Goldshire Vanguard
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
		{ itemID = 4050651 }, --Sunken Zoram Spear
		{ itemID = 4050652 }, --Elven Militia Crown
		{ itemID = 4050653 }, --Pristine Tortoise Carapace
	}

	if AtlasLoot_Data_Cache and AtlasLoot_Data_Cache.WorldforgedClassic and AtlasLoot_Data_Cache.WorldforgedClassic.Version and AtlasLoot_Data_Cache.WorldforgedClassic.Version == self.Version then
		wipe(WorldforgedClassic)
	end

	self:AddItemData("crafting", {
		CraftingRecipes = {
			[80000] = { SkillIndex =  40 },
			[80001] = { SkillIndex =  40 },
			[80002] = { SkillIndex =  40 },
			[80003] = { SkillIndex =  40 },
			[80004] = { SkillIndex =  40 },
			[80005] = { SkillIndex =  40 },
			[80006] = { RecipeItemEntry =  21302, SkillIndex =  40 },
			[80007] = { SkillIndex =  40 },
			[80008] = { SkillIndex =  40 },
			[80009] = { SkillIndex =  40 },
			[80010] = { SkillIndex =  40 },
			[80011] = { SkillIndex =  40 },
			[80012] = { SkillIndex =  40 },
			[80013] = { SkillIndex =  40 },
			[80014] = { SkillIndex =  40 },
			[80015] = { SkillIndex =  40 },
			[80016] = { SkillIndex =  40 },
			[80017] = { SkillIndex =  40 },
			[80018] = { SkillIndex =  40 },
			[80019] = { SkillIndex =  40 },
			[80020] = { SkillIndex =  40 },
			[3275] = { SkillIndex =  129 },
			[3276] = { SkillIndex =  129 },
			[3277] = { SkillIndex =  129 },
			[3278] = { SkillIndex =  129 },
			[7928] = { SkillIndex =  129 },
			[7929] = { RecipeItemEntry =  16112, SkillIndex =  129 },
			[7934] = { SkillIndex =  129 },
			[7935] = { RecipeItemEntry =  6454, SkillIndex =  129 },
			[10840] = { RecipeItemEntry =  16113, SkillIndex =  129 },
			[10841] = { SkillIndex =  129 },
			[18629] = { SkillIndex =  129 },
			[18630] = { SkillIndex =  129 },
			[23787] = { RecipeItemEntry =  19442, SkillIndex =  129 },
			[27032] = { RecipeItemEntry =  21992, SkillIndex =  129 },
			[27033] = { RecipeItemEntry =  21993, SkillIndex =  129 },
			[45545] = { SkillIndex =  129 },
			[45546] = { RecipeItemEntry =  39152, SkillIndex =  129 },
			[2660] = { SkillIndex =  164 },
			[2661] = { SkillIndex =  164 },
			[2662] = { SkillIndex =  164 },
			[2663] = { SkillIndex =  164 },
			[2664] = { SkillIndex =  164 },
			[2665] = { SkillIndex =  164 },
			[2666] = { SkillIndex =  164 },
			[2667] = { RecipeItemEntry =  2881, SkillIndex =  164 },
			[2668] = { SkillIndex =  164 },
			[2670] = { SkillIndex =  164 },
			[2671] = { SkillIndex =  164 },
			[2672] = { SkillIndex =  164 },
			[2673] = { RecipeItemEntry =  5578, SkillIndex =  164 },
			[2674] = { SkillIndex =  164 },
			[2675] = { SkillIndex =  164 },
			[2737] = { SkillIndex =  164 },
			[2738] = { SkillIndex =  164 },
			[2739] = { SkillIndex =  164 },
			[2740] = { SkillIndex =  164 },
			[2741] = { SkillIndex =  164 },
			[2742] = { SkillIndex =  164 },
			[3115] = { SkillIndex =  164 },
			[3116] = { SkillIndex =  164 },
			[3117] = { SkillIndex =  164 },
			[3292] = { SkillIndex =  164 },
			[3293] = { SkillIndex =  164 },
			[3294] = { SkillIndex =  164 },
			[3295] = { RecipeItemEntry =  2883, SkillIndex =  164 },
			[3296] = { SkillIndex =  164 },
			[3297] = { RecipeItemEntry =  3608, SkillIndex =  164 },
			[3319] = { SkillIndex =  164 },
			[3320] = { SkillIndex =  164 },
			[3321] = { RecipeItemEntry =  3609, SkillIndex =  164 },
			[3323] = { SkillIndex =  164 },
			[3324] = { SkillIndex =  164 },
			[3325] = { RecipeItemEntry =  3610, SkillIndex =  164 },
			[3326] = { SkillIndex =  164 },
			[3328] = { SkillIndex =  164 },
			[3330] = { RecipeItemEntry =  2882, SkillIndex =  164 },
			[3331] = { SkillIndex =  164 },
			[3333] = { SkillIndex =  164 },
			[3334] = { RecipeItemEntry =  3611, SkillIndex =  164 },
			[3336] = { RecipeItemEntry =  3612, SkillIndex =  164 },
			[3337] = { SkillIndex =  164 },
			[3491] = { SkillIndex =  164 },
			[3492] = { RecipeItemEntry =  12162, SkillIndex =  164 },
			[3493] = { RecipeItemEntry =  3866, SkillIndex =  164 },
			[3494] = { RecipeItemEntry =  10858, SkillIndex =  164 },
			[3495] = { RecipeItemEntry =  3867, SkillIndex =  164 },
			[3496] = { RecipeItemEntry =  12163, SkillIndex =  164 },
			[3497] = { RecipeItemEntry =  3868, SkillIndex =  164 },
			[3498] = { RecipeItemEntry =  12164, SkillIndex =  164 },
			[3500] = { RecipeItemEntry =  3869, SkillIndex =  164 },
			[3501] = { SkillIndex =  164 },
			[3502] = { SkillIndex =  164 },
			[3503] = { RecipeItemEntry =  6047, SkillIndex =  164 },
			[3504] = { RecipeItemEntry =  3870, SkillIndex =  164 },
			[3505] = { RecipeItemEntry =  3871, SkillIndex =  164 },
			[3506] = { SkillIndex =  164 },
			[3507] = { RecipeItemEntry =  3872, SkillIndex =  164 },
			[3508] = { SkillIndex =  164 },
			[3511] = { RecipeItemEntry =  3873, SkillIndex =  164 },
			[3513] = { RecipeItemEntry =  3874, SkillIndex =  164 },
			[3515] = { RecipeItemEntry =  3875, SkillIndex =  164 },
			[6517] = { SkillIndex =  164 },
			[6518] = { RecipeItemEntry =  5543, SkillIndex =  164 },
			[7221] = { RecipeItemEntry =  6044, SkillIndex =  164 },
			[7222] = { RecipeItemEntry =  6045, SkillIndex =  164 },
			[7223] = { SkillIndex =  164 },
			[7224] = { RecipeItemEntry =  6046, SkillIndex =  164 },
			[7408] = { SkillIndex =  164 },
			[7817] = { SkillIndex =  164 },
			[7818] = { SkillIndex =  164 },
			[8366] = { SkillIndex =  164 },
			[8367] = { RecipeItemEntry =  6735, SkillIndex =  164 },
			[8368] = { SkillIndex =  164 },
			[8768] = { SkillIndex =  164 },
			[8880] = { SkillIndex =  164 },
			[9811] = { RecipeItemEntry =  7978, SkillIndex =  164 },
			[9813] = { RecipeItemEntry =  7979, SkillIndex =  164 },
			[9814] = { RecipeItemEntry =  7980, SkillIndex =  164 },
			[9818] = { RecipeItemEntry =  7981, SkillIndex =  164 },
			[9820] = { RecipeItemEntry =  7982, SkillIndex =  164 },
			[9916] = { SkillIndex =  164 },
			[9918] = { SkillIndex =  164 },
			[9920] = { SkillIndex =  164 },
			[9921] = { SkillIndex =  164 },
			[9926] = { SkillIndex =  164 },
			[9928] = { SkillIndex =  164 },
			[9931] = { SkillIndex =  164 },
			[9933] = { RecipeItemEntry =  7975, SkillIndex =  164 },
			[9935] = { SkillIndex =  164 },
			[9937] = { RecipeItemEntry =  7995, SkillIndex =  164 },
			[9939] = { RecipeItemEntry =  7976, SkillIndex =  164 },
			[9942] = { SkillIndex =  164 },
			[9945] = { RecipeItemEntry =  7983, SkillIndex =  164 },
			[9950] = { RecipeItemEntry =  7984, SkillIndex =  164 },
			[9952] = { RecipeItemEntry =  7985, SkillIndex =  164 },
			[9954] = { SkillIndex =  164 },
			[9957] = { SkillIndex =  164 },
			[9959] = { SkillIndex =  164 },
			[9961] = { SkillIndex =  164 },
			[9964] = { RecipeItemEntry =  7989, SkillIndex =  164 },
			[9966] = { RecipeItemEntry =  7991, SkillIndex =  164 },
			[9968] = { SkillIndex =  164 },
			[9970] = { RecipeItemEntry =  7990, SkillIndex =  164 },
			[9972] = { SkillIndex =  164 },
			[9974] = { SkillIndex =  164 },
			[9979] = { SkillIndex =  164 },
			[9980] = { SkillIndex =  164 },
			[9983] = { SkillIndex =  164 },
			[9985] = { SkillIndex =  164 },
			[9986] = { SkillIndex =  164 },
			[9987] = { SkillIndex =  164 },
			[9993] = { SkillIndex =  164 },
			[9995] = { RecipeItemEntry =  7992, SkillIndex =  164 },
			[9997] = { RecipeItemEntry =  8029, SkillIndex =  164 },
			[10001] = { SkillIndex =  164 },
			[10003] = { SkillIndex =  164 },
			[10005] = { RecipeItemEntry =  7993, SkillIndex =  164 },
			[10007] = { RecipeItemEntry =  74274, SkillIndex =  164 },
			[10009] = { RecipeItemEntry =  8028, SkillIndex =  164 },
			[10011] = { SkillIndex =  164 },
			[10013] = { RecipeItemEntry =  8030, SkillIndex =  164 },
			[10015] = { SkillIndex =  164 },
			[11454] = { RecipeItemEntry =  10713, SkillIndex =  164 },
			[11643] = { RecipeItemEntry =  9367, SkillIndex =  164 },
			[12259] = { RecipeItemEntry =  10424, SkillIndex =  164 },
			[12260] = { SkillIndex =  164 },
			[14379] = { SkillIndex =  164 },
			[14380] = { SkillIndex =  164 },
			[15292] = { RecipeItemEntry =  11610, SkillIndex =  164 },
			[15293] = { RecipeItemEntry =  11614, SkillIndex =  164 },
			[15294] = { RecipeItemEntry =  11611, SkillIndex =  164 },
			[15295] = { RecipeItemEntry =  11615, SkillIndex =  164 },
			[15296] = { RecipeItemEntry =  11612, SkillIndex =  164 },
			[15972] = { SkillIndex =  164 },
			[15973] = { RecipeItemEntry =  12261, SkillIndex =  164 },
			[16639] = { SkillIndex =  164 },
			[16640] = { SkillIndex =  164 },
			[16641] = { SkillIndex =  164 },
			[16642] = { RecipeItemEntry =  12682, SkillIndex =  164 },
			[16643] = { RecipeItemEntry =  12683, SkillIndex =  164 },
			[16644] = { RecipeItemEntry =  12684, SkillIndex =  164 },
			[16645] = { RecipeItemEntry =  12685, SkillIndex =  164 },
			[16646] = { RecipeItemEntry =  12687, SkillIndex =  164 },
			[16647] = { RecipeItemEntry =  12688, SkillIndex =  164 },
			[16648] = { RecipeItemEntry =  12689, SkillIndex =  164 },
			[16649] = { RecipeItemEntry =  12690, SkillIndex =  164 },
			[16650] = { RecipeItemEntry =  12691, SkillIndex =  164 },
			[16651] = { RecipeItemEntry =  12692, SkillIndex =  164 },
			[16652] = { RecipeItemEntry =  12693, SkillIndex =  164 },
			[16653] = { RecipeItemEntry =  12694, SkillIndex =  164 },
			[16654] = { RecipeItemEntry =  12695, SkillIndex =  164 },
			[16655] = { RecipeItemEntry =  12699, SkillIndex =  164 },
			[16656] = { RecipeItemEntry =  12697, SkillIndex =  164 },
			[16657] = { RecipeItemEntry =  12700, SkillIndex =  164 },
			[16658] = { RecipeItemEntry =  12701, SkillIndex =  164 },
			[16659] = { RecipeItemEntry =  12702, SkillIndex =  164 },
			[16660] = { RecipeItemEntry =  12698, SkillIndex =  164 },
			[16661] = { RecipeItemEntry =  12703, SkillIndex =  164 },
			[16662] = { RecipeItemEntry =  12704, SkillIndex =  164 },
			[16663] = { RecipeItemEntry =  12705, SkillIndex =  164 },
			[16664] = { RecipeItemEntry =  12706, SkillIndex =  164 },
			[16665] = { RecipeItemEntry =  12707, SkillIndex =  164 },
			[16667] = { RecipeItemEntry =  12696, SkillIndex =  164 },
			[16724] = { RecipeItemEntry =  12711, SkillIndex =  164 },
			[16725] = { RecipeItemEntry =  12713, SkillIndex =  164 },
			[16726] = { RecipeItemEntry =  12714, SkillIndex =  164 },
			[16728] = { RecipeItemEntry =  12716, SkillIndex =  164 },
			[16729] = { RecipeItemEntry =  12717, SkillIndex =  164 },
			[16730] = { RecipeItemEntry =  12715, SkillIndex =  164 },
			[16731] = { RecipeItemEntry =  12718, SkillIndex =  164 },
			[16732] = { RecipeItemEntry =  12719, SkillIndex =  164 },
			[16741] = { RecipeItemEntry =  12720, SkillIndex =  164 },
			[16742] = { RecipeItemEntry =  12725, SkillIndex =  164 },
			[16744] = { RecipeItemEntry =  12726, SkillIndex =  164 },
			[16745] = { RecipeItemEntry =  12727, SkillIndex =  164 },
			[16746] = { RecipeItemEntry =  12728, SkillIndex =  164 },
			[16960] = { SkillIndex =  164 },
			[16965] = { SkillIndex =  164 },
			[16967] = { SkillIndex =  164 },
			[16969] = { RecipeItemEntry =  12819, SkillIndex =  164 },
			[16970] = { RecipeItemEntry =  12821, SkillIndex =  164 },
			[16971] = { RecipeItemEntry =  12823, SkillIndex =  164 },
			[16973] = { RecipeItemEntry =  12824, SkillIndex =  164 },
			[16978] = { RecipeItemEntry =  12825, SkillIndex =  164 },
			[16980] = { SkillIndex =  164 },
			[16983] = { RecipeItemEntry =  12827, SkillIndex =  164 },
			[16984] = { RecipeItemEntry =  12828, SkillIndex =  164 },
			[16985] = { RecipeItemEntry =  12830, SkillIndex =  164 },
			[16986] = { SkillIndex =  164 },
			[16987] = { SkillIndex =  164 },
			[16988] = { RecipeItemEntry =  12833, SkillIndex =  164 },
			[16990] = { RecipeItemEntry =  12834, SkillIndex =  164 },
			[16991] = { RecipeItemEntry =  12835, SkillIndex =  164 },
			[16992] = { RecipeItemEntry =  12836, SkillIndex =  164 },
			[16993] = { RecipeItemEntry =  12837, SkillIndex =  164 },
			[16994] = { RecipeItemEntry =  12838, SkillIndex =  164 },
			[16995] = { RecipeItemEntry =  12839, SkillIndex =  164 },
			[19666] = { SkillIndex =  164 },
			[19667] = { SkillIndex =  164 },
			[19668] = { SkillIndex =  164 },
			[19669] = { SkillIndex =  164 },
			[20201] = { SkillIndex =  164 },
			[20872] = { RecipeItemEntry =  17049, SkillIndex =  164 },
			[20873] = { RecipeItemEntry =  17053, SkillIndex =  164 },
			[20874] = { RecipeItemEntry =  17051, SkillIndex =  164 },
			[20876] = { RecipeItemEntry =  17052, SkillIndex =  164 },
			[20890] = { RecipeItemEntry =  17059, SkillIndex =  164 },
			[20897] = { RecipeItemEntry =  17060, SkillIndex =  164 },
			[21161] = { RecipeItemEntry =  18592, SkillIndex =  164 },
			[21913] = { RecipeItemEntry =  17706, SkillIndex =  164 },
			[22757] = { RecipeItemEntry =  18264, SkillIndex =  164 },
			[23628] = { RecipeItemEntry =  19202, SkillIndex =  164 },
			[23629] = { RecipeItemEntry =  19204, SkillIndex =  164 },
			[23632] = { RecipeItemEntry =  19203, SkillIndex =  164 },
			[23633] = { RecipeItemEntry =  19205, SkillIndex =  164 },
			[23636] = { RecipeItemEntry =  19206, SkillIndex =  164 },
			[23637] = { RecipeItemEntry =  19207, SkillIndex =  164 },
			[23638] = { RecipeItemEntry =  19208, SkillIndex =  164 },
			[23639] = { RecipeItemEntry =  19209, SkillIndex =  164 },
			[23650] = { RecipeItemEntry =  19210, SkillIndex =  164 },
			[23652] = { RecipeItemEntry =  19211, SkillIndex =  164 },
			[23653] = { RecipeItemEntry =  19212, SkillIndex =  164 },
			[24136] = { RecipeItemEntry =  19776, SkillIndex =  164 },
			[24137] = { RecipeItemEntry =  19777, SkillIndex =  164 },
			[24138] = { RecipeItemEntry =  19778, SkillIndex =  164 },
			[24139] = { RecipeItemEntry =  19779, SkillIndex =  164 },
			[24140] = { RecipeItemEntry =  19780, SkillIndex =  164 },
			[24141] = { RecipeItemEntry =  19781, SkillIndex =  164 },
			[24399] = { RecipeItemEntry =  20040, SkillIndex =  164 },
			[24912] = { RecipeItemEntry =  20553, SkillIndex =  164 },
			[24913] = { RecipeItemEntry =  20555, SkillIndex =  164 },
			[24914] = { RecipeItemEntry =  20554, SkillIndex =  164 },
			[27585] = { RecipeItemEntry =  22209, SkillIndex =  164 },
			[27586] = { RecipeItemEntry =  22219, SkillIndex =  164 },
			[27587] = { RecipeItemEntry =  22222, SkillIndex =  164 },
			[27588] = { RecipeItemEntry =  22214, SkillIndex =  164 },
			[27589] = { RecipeItemEntry =  22220, SkillIndex =  164 },
			[27590] = { RecipeItemEntry =  22221, SkillIndex =  164 },
			[27829] = { RecipeItemEntry =  22388, SkillIndex =  164 },
			[27830] = { RecipeItemEntry =  22390, SkillIndex =  164 },
			[27832] = { RecipeItemEntry =  22389, SkillIndex =  164 },
			[28242] = { SkillIndex =  164 },
			[28243] = { SkillIndex =  164 },
			[28244] = { SkillIndex =  164 },
			[28461] = { RecipeItemEntry =  22766, SkillIndex =  164 },
			[28462] = { RecipeItemEntry =  22767, SkillIndex =  164 },
			[28463] = { RecipeItemEntry =  22768, SkillIndex =  164 },
			[29545] = { SkillIndex =  164 },
			[29547] = { SkillIndex =  164 },
			[29548] = { SkillIndex =  164 },
			[29549] = { SkillIndex =  164 },
			[29550] = { SkillIndex =  164 },
			[29551] = { SkillIndex =  164 },
			[29552] = { SkillIndex =  164 },
			[29553] = { SkillIndex =  164 },
			[29556] = { SkillIndex =  164 },
			[29557] = { SkillIndex =  164 },
			[29558] = { SkillIndex =  164 },
			[29565] = { SkillIndex =  164 },
			[29566] = { RecipeItemEntry =  23590, SkillIndex =  164 },
			[29568] = { RecipeItemEntry =  23591, SkillIndex =  164 },
			[29569] = { RecipeItemEntry =  23592, SkillIndex =  164 },
			[29571] = { RecipeItemEntry =  23593, SkillIndex =  164 },
			[29603] = { RecipeItemEntry =  23594, SkillIndex =  164 },
			[29605] = { RecipeItemEntry =  23595, SkillIndex =  164 },
			[29606] = { RecipeItemEntry =  23596, SkillIndex =  164 },
			[29608] = { RecipeItemEntry =  23597, SkillIndex =  164 },
			[29610] = { RecipeItemEntry =  23599, SkillIndex =  164 },
			[29611] = { RecipeItemEntry =  23598, SkillIndex =  164 },
			[29613] = { RecipeItemEntry =  23600, SkillIndex =  164 },
			[29614] = { RecipeItemEntry =  23601, SkillIndex =  164 },
			[29615] = { RecipeItemEntry =  23602, SkillIndex =  164 },
			[29616] = { RecipeItemEntry =  23603, SkillIndex =  164 },
			[29617] = { RecipeItemEntry =  23604, SkillIndex =  164 },
			[29619] = { RecipeItemEntry =  23605, SkillIndex =  164 },
			[29620] = { RecipeItemEntry =  23606, SkillIndex =  164 },
			[29621] = { RecipeItemEntry =  23607, SkillIndex =  164 },
			[29622] = { RecipeItemEntry =  23621, SkillIndex =  164 },
			[29628] = { RecipeItemEntry =  23608, SkillIndex =  164 },
			[29629] = { RecipeItemEntry =  23609, SkillIndex =  164 },
			[29630] = { RecipeItemEntry =  23610, SkillIndex =  164 },
			[29642] = { RecipeItemEntry =  23611, SkillIndex =  164 },
			[29643] = { RecipeItemEntry =  23612, SkillIndex =  164 },
			[29645] = { RecipeItemEntry =  23613, SkillIndex =  164 },
			[29648] = { RecipeItemEntry =  23615, SkillIndex =  164 },
			[29649] = { RecipeItemEntry =  23617, SkillIndex =  164 },
			[29654] = { SkillIndex =  164 },
			[29656] = { RecipeItemEntry =  23618, SkillIndex =  164 },
			[29657] = { RecipeItemEntry =  23619, SkillIndex =  164 },
			[29658] = { RecipeItemEntry =  23620, SkillIndex =  164 },
			[29662] = { RecipeItemEntry =  23622, SkillIndex =  164 },
			[29663] = { RecipeItemEntry =  23623, SkillIndex =  164 },
			[29664] = { RecipeItemEntry =  23624, SkillIndex =  164 },
			[29668] = { RecipeItemEntry =  23625, SkillIndex =  164 },
			[29669] = { RecipeItemEntry =  23626, SkillIndex =  164 },
			[29671] = { RecipeItemEntry =  23627, SkillIndex =  164 },
			[29672] = { RecipeItemEntry =  23628, SkillIndex =  164 },
			[29692] = { RecipeItemEntry =  23629, SkillIndex =  164 },
			[29693] = { RecipeItemEntry =  23630, SkillIndex =  164 },
			[29694] = { RecipeItemEntry =  23631, SkillIndex =  164 },
			[29695] = { RecipeItemEntry =  23632, SkillIndex =  164 },
			[29696] = { RecipeItemEntry =  23633, SkillIndex =  164 },
			[29697] = { RecipeItemEntry =  23634, SkillIndex =  164 },
			[29698] = { RecipeItemEntry =  23635, SkillIndex =  164 },
			[29699] = { RecipeItemEntry =  23636, SkillIndex =  164 },
			[29700] = { RecipeItemEntry =  23637, SkillIndex =  164 },
			[29728] = { RecipeItemEntry =  23638, SkillIndex =  164 },
			[29729] = { RecipeItemEntry =  23639, SkillIndex =  164 },
			[32284] = { SkillIndex =  164 },
			[32285] = { RecipeItemEntry =  25526, SkillIndex =  164 },
			[32655] = { SkillIndex =  164 },
			[32656] = { RecipeItemEntry =  25846, SkillIndex =  164 },
			[32657] = { RecipeItemEntry =  25847, SkillIndex =  164 },
			[34529] = { SkillIndex =  164 },
			[34530] = { SkillIndex =  164 },
			[34533] = { SkillIndex =  164 },
			[34534] = { SkillIndex =  164 },
			[34535] = { SkillIndex =  164 },
			[34537] = { SkillIndex =  164 },
			[34538] = { SkillIndex =  164 },
			[34540] = { SkillIndex =  164 },
			[34541] = { SkillIndex =  164 },
			[34542] = { SkillIndex =  164 },
			[34543] = { SkillIndex =  164 },
			[34544] = { SkillIndex =  164 },
			[34545] = { SkillIndex =  164 },
			[34546] = { SkillIndex =  164 },
			[34547] = { SkillIndex =  164 },
			[34548] = { SkillIndex =  164 },
			[34607] = { SkillIndex =  164 },
			[34608] = { RecipeItemEntry =  28632, SkillIndex =  164 },
			[34979] = { SkillIndex =  164 },
			[34981] = { SkillIndex =  164 },
			[34982] = { SkillIndex =  164 },
			[34983] = { SkillIndex =  164 },
			[36122] = { SkillIndex =  164 },
			[36124] = { SkillIndex =  164 },
			[36125] = { SkillIndex =  164 },
			[36126] = { SkillIndex =  164 },
			[36128] = { SkillIndex =  164 },
			[36129] = { SkillIndex =  164 },
			[36130] = { SkillIndex =  164 },
			[36131] = { SkillIndex =  164 },
			[36133] = { SkillIndex =  164 },
			[36134] = { SkillIndex =  164 },
			[36135] = { SkillIndex =  164 },
			[36136] = { SkillIndex =  164 },
			[36137] = { SkillIndex =  164 },
			[36256] = { SkillIndex =  164 },
			[36257] = { SkillIndex =  164 },
			[36258] = { SkillIndex =  164 },
			[36259] = { SkillIndex =  164 },
			[36260] = { SkillIndex =  164 },
			[36261] = { SkillIndex =  164 },
			[36262] = { SkillIndex =  164 },
			[36263] = { SkillIndex =  164 },
			[36389] = { RecipeItemEntry =  30321, SkillIndex =  164 },
			[36390] = { RecipeItemEntry =  30322, SkillIndex =  164 },
			[36391] = { RecipeItemEntry =  30323, SkillIndex =  164 },
			[36392] = { RecipeItemEntry =  30324, SkillIndex =  164 },
			[38473] = { RecipeItemEntry =  31390, SkillIndex =  164 },
			[38475] = { RecipeItemEntry =  31391, SkillIndex =  164 },
			[38476] = { RecipeItemEntry =  31392, SkillIndex =  164 },
			[38477] = { RecipeItemEntry =  31393, SkillIndex =  164 },
			[38478] = { RecipeItemEntry =  31394, SkillIndex =  164 },
			[38479] = { RecipeItemEntry =  31395, SkillIndex =  164 },
			[40033] = { RecipeItemEntry =  32441, SkillIndex =  164 },
			[40034] = { RecipeItemEntry =  32442, SkillIndex =  164 },
			[40035] = { RecipeItemEntry =  32443, SkillIndex =  164 },
			[40036] = { RecipeItemEntry =  32444, SkillIndex =  164 },
			[41132] = { RecipeItemEntry =  32736, SkillIndex =  164 },
			[41133] = { RecipeItemEntry =  32737, SkillIndex =  164 },
			[41134] = { RecipeItemEntry =  32738, SkillIndex =  164 },
			[41135] = { RecipeItemEntry =  32739, SkillIndex =  164 },
			[42662] = { RecipeItemEntry =  33174, SkillIndex =  164 },
			[42688] = { RecipeItemEntry =  33186, SkillIndex =  164 },
			[43549] = { RecipeItemEntry =  33792, SkillIndex =  164 },
			[43846] = { RecipeItemEntry =  33954, SkillIndex =  164 },
			[46140] = { RecipeItemEntry =  35208, SkillIndex =  164 },
			[46141] = { RecipeItemEntry =  35209, SkillIndex =  164 },
			[46142] = { RecipeItemEntry =  35210, SkillIndex =  164 },
			[46144] = { RecipeItemEntry =  35211, SkillIndex =  164 },
			[52567] = { SkillIndex =  164 },
			[52568] = { SkillIndex =  164 },
			[52569] = { SkillIndex =  164 },
			[52570] = { SkillIndex =  164 },
			[52571] = { SkillIndex =  164 },
			[52572] = { SkillIndex =  164 },
			[54550] = { SkillIndex =  164 },
			[54551] = { SkillIndex =  164 },
			[54552] = { SkillIndex =  164 },
			[54553] = { SkillIndex =  164 },
			[54554] = { SkillIndex =  164 },
			[54555] = { SkillIndex =  164 },
			[54556] = { SkillIndex =  164 },
			[54557] = { SkillIndex =  164 },
			[54917] = { SkillIndex =  164 },
			[54918] = { SkillIndex =  164 },
			[54941] = { SkillIndex =  164 },
			[54944] = { SkillIndex =  164 },
			[54945] = { SkillIndex =  164 },
			[54946] = { SkillIndex =  164 },
			[54947] = { SkillIndex =  164 },
			[54948] = { SkillIndex =  164 },
			[54949] = { SkillIndex =  164 },
			[54978] = { RecipeItemEntry =  41124, SkillIndex =  164 },
			[54979] = { RecipeItemEntry =  41123, SkillIndex =  164 },
			[54980] = { RecipeItemEntry =  41120, SkillIndex =  164 },
			[54981] = { RecipeItemEntry =  41122, SkillIndex =  164 },
			[55013] = { SkillIndex =  164 },
			[55014] = { SkillIndex =  164 },
			[55015] = { SkillIndex =  164 },
			[55017] = { SkillIndex =  164 },
			[55055] = { SkillIndex =  164 },
			[55056] = { SkillIndex =  164 },
			[55057] = { SkillIndex =  164 },
			[55058] = { SkillIndex =  164 },
			[55174] = { SkillIndex =  164 },
			[55177] = { SkillIndex =  164 },
			[55179] = { SkillIndex =  164 },
			[55181] = { SkillIndex =  164 },
			[55182] = { SkillIndex =  164 },
			[55183] = { SkillIndex =  164 },
			[55184] = { SkillIndex =  164 },
			[55185] = { SkillIndex =  164 },
			[55186] = { SkillIndex =  164 },
			[55187] = { SkillIndex =  164 },
			[55200] = { SkillIndex =  164 },
			[55201] = { SkillIndex =  164 },
			[55202] = { SkillIndex =  164 },
			[55203] = { SkillIndex =  164 },
			[55204] = { SkillIndex =  164 },
			[55206] = { SkillIndex =  164 },
			[55298] = { SkillIndex =  164 },
			[55300] = { SkillIndex =  164 },
			[55301] = { SkillIndex =  164 },
			[55302] = { SkillIndex =  164 },
			[55303] = { SkillIndex =  164 },
			[55304] = { SkillIndex =  164 },
			[55305] = { SkillIndex =  164 },
			[55306] = { SkillIndex =  164 },
			[55307] = { SkillIndex =  164 },
			[55308] = { SkillIndex =  164 },
			[55309] = { SkillIndex =  164 },
			[55310] = { SkillIndex =  164 },
			[55311] = { SkillIndex =  164 },
			[55312] = { SkillIndex =  164 },
			[55369] = { SkillIndex =  164 },
			[55370] = { SkillIndex =  164 },
			[55371] = { SkillIndex =  164 },
			[55372] = { SkillIndex =  164 },
			[55373] = { SkillIndex =  164 },
			[55374] = { SkillIndex =  164 },
			[55375] = { SkillIndex =  164 },
			[55376] = { SkillIndex =  164 },
			[55377] = { SkillIndex =  164 },
			[55656] = { SkillIndex =  164 },
			[55732] = { SkillIndex =  164 },
			[55834] = { SkillIndex =  164 },
			[55835] = { SkillIndex =  164 },
			[55839] = { SkillIndex =  164 },
			[56234] = { SkillIndex =  164 },
			[56280] = { SkillIndex =  164 },
			[56357] = { SkillIndex =  164 },
			[56400] = { SkillIndex =  164 },
			[56549] = { SkillIndex =  164 },
			[56550] = { SkillIndex =  164 },
			[56551] = { SkillIndex =  164 },
			[56552] = { SkillIndex =  164 },
			[56553] = { SkillIndex =  164 },
			[56554] = { SkillIndex =  164 },
			[56555] = { SkillIndex =  164 },
			[56556] = { SkillIndex =  164 },
			[59405] = { SkillIndex =  164 },
			[59406] = { SkillIndex =  164 },
			[59436] = { SkillIndex =  164 },
			[59438] = { SkillIndex =  164 },
			[59440] = { SkillIndex =  164 },
			[59441] = { SkillIndex =  164 },
			[59442] = { SkillIndex =  164 },
			[61008] = { SkillIndex =  164 },
			[61009] = { SkillIndex =  164 },
			[61010] = { SkillIndex =  164 },
			[62202] = { RecipeItemEntry =  44937, SkillIndex =  164 },
			[63182] = { SkillIndex =  164 },
			[63187] = { RecipeItemEntry =  45088, SkillIndex =  164 },
			[63188] = { RecipeItemEntry =  45089, SkillIndex =  164 },
			[63189] = { RecipeItemEntry =  45090, SkillIndex =  164 },
			[63190] = { RecipeItemEntry =  45091, SkillIndex =  164 },
			[63191] = { RecipeItemEntry =  45092, SkillIndex =  164 },
			[63192] = { RecipeItemEntry =  45093, SkillIndex =  164 },
			[67091] = { RecipeItemEntry =  47622, SkillIndex =  164 },
			[67092] = { RecipeItemEntry =  47623, SkillIndex =  164 },
			[67093] = { RecipeItemEntry =  47624, SkillIndex =  164 },
			[67094] = { RecipeItemEntry =  47625, SkillIndex =  164 },
			[67095] = { RecipeItemEntry =  47626, SkillIndex =  164 },
			[67096] = { RecipeItemEntry =  47627, SkillIndex =  164 },
			[67130] = { RecipeItemEntry =  47640, SkillIndex =  164 },
			[67131] = { RecipeItemEntry =  47641, SkillIndex =  164 },
			[67132] = { RecipeItemEntry =  47644, SkillIndex =  164 },
			[67133] = { RecipeItemEntry =  47645, SkillIndex =  164 },
			[67134] = { RecipeItemEntry =  47643, SkillIndex =  164 },
			[67135] = { RecipeItemEntry =  47642, SkillIndex =  164 },
			[70562] = { RecipeItemEntry =  49969, SkillIndex =  164 },
			[70563] = { RecipeItemEntry =  49970, SkillIndex =  164 },
			[70565] = { RecipeItemEntry =  49971, SkillIndex =  164 },
			[70566] = { RecipeItemEntry =  49972, SkillIndex =  164 },
			[70567] = { RecipeItemEntry =  49973, SkillIndex =  164 },
			[70568] = { RecipeItemEntry =  49974, SkillIndex =  164 },
			[934537] = { SkillIndex =  164 },
			[934540] = { SkillIndex =  164 },
			[934542] = { SkillIndex =  164 },
			[934544] = { SkillIndex =  164 },
			[934546] = { SkillIndex =  164 },
			[934548] = { SkillIndex =  164 },
			[936258] = { SkillIndex =  164 },
			[936259] = { SkillIndex =  164 },
			[936260] = { SkillIndex =  164 },
			[936261] = { SkillIndex =  164 },
			[936262] = { SkillIndex =  164 },
			[936263] = { SkillIndex =  164 },
			[968019] = { RecipeItemEntry =  967251, SkillIndex =  164 },
			[968020] = { RecipeItemEntry =  967252, SkillIndex =  164 },
			[968022] = { RecipeItemEntry =  967254, SkillIndex =  164 },
			[968023] = { RecipeItemEntry =  967255, SkillIndex =  164 },
			[968025] = { RecipeItemEntry =  967257, SkillIndex =  164 },
			[968026] = { RecipeItemEntry =  967258, SkillIndex =  164 },
			[968028] = { RecipeItemEntry =  967260, SkillIndex =  164 },
			[968029] = { RecipeItemEntry =  967261, SkillIndex =  164 },
			[968031] = { RecipeItemEntry =  967263, SkillIndex =  164 },
			[968032] = { RecipeItemEntry =  967264, SkillIndex =  164 },
			[968034] = { RecipeItemEntry =  967266, SkillIndex =  164 },
			[968035] = { RecipeItemEntry =  967267, SkillIndex =  164 },
			[968037] = { RecipeItemEntry =  967269, SkillIndex =  164 },
			[968038] = { RecipeItemEntry =  967270, SkillIndex =  164 },
			[968040] = { RecipeItemEntry =  967272, SkillIndex =  164 },
			[968041] = { RecipeItemEntry =  967273, SkillIndex =  164 },
			[968480] = { RecipeItemEntry =  967683, SkillIndex =  164 },
			[968481] = { RecipeItemEntry =  967684, SkillIndex =  164 },
			[968482] = { RecipeItemEntry =  967685, SkillIndex =  164 },
			[979349] = { RecipeItemEntry =  1203249, SkillIndex =  164 },
			[979350] = { SkillIndex =  164 },
			[979351] = { RecipeItemEntry =  1203251, SkillIndex =  164 },
			[979534] = { RecipeItemEntry =  1204085, SkillIndex =  164 },
			[979535] = { RecipeItemEntry =  1204086, SkillIndex =  164 },
			[979536] = { RecipeItemEntry =  1204087, SkillIndex =  164 },
			[979537] = { RecipeItemEntry =  1204088, SkillIndex =  164 },
			[979538] = { RecipeItemEntry =  1204089, SkillIndex =  164 },
			[979539] = { RecipeItemEntry =  1204090, SkillIndex =  164 },
			[979540] = { RecipeItemEntry =  1204091, SkillIndex =  164 },
			[979541] = { RecipeItemEntry =  1204092, SkillIndex =  164 },
			[979542] = { RecipeItemEntry =  1204093, SkillIndex =  164 },
			[979543] = { RecipeItemEntry =  1204094, SkillIndex =  164 },
			[979544] = { RecipeItemEntry =  1204095, SkillIndex =  164 },
			[979545] = { RecipeItemEntry =  1204096, SkillIndex =  164 },
			[979546] = { RecipeItemEntry =  1204097, SkillIndex =  164 },
			[979547] = { RecipeItemEntry =  1204098, SkillIndex =  164 },
			[979548] = { RecipeItemEntry =  1204099, SkillIndex =  164 },
			[979549] = { RecipeItemEntry =  1204100, SkillIndex =  164 },
			[1979337] = { RecipeItemEntry =  1303529, SkillIndex =  164 },
			[1979338] = { RecipeItemEntry =  1303530, SkillIndex =  164 },
			[1979339] = { RecipeItemEntry =  1303531, SkillIndex =  164 },
			[1979340] = { RecipeItemEntry =  1303532, SkillIndex =  164 },
			[2149] = { SkillIndex =  165 },
			[2152] = { SkillIndex =  165 },
			[2153] = { SkillIndex =  165 },
			[2158] = { RecipeItemEntry =  2406, SkillIndex =  165 },
			[2159] = { SkillIndex =  165 },
			[2160] = { SkillIndex =  165 },
			[2161] = { SkillIndex =  165 },
			[2162] = { SkillIndex =  165 },
			[2163] = { RecipeItemEntry =  2407, SkillIndex =  165 },
			[2164] = { RecipeItemEntry =  2408, SkillIndex =  165 },
			[2165] = { SkillIndex =  165 },
			[2166] = { SkillIndex =  165 },
			[2167] = { SkillIndex =  165 },
			[2168] = { SkillIndex =  165 },
			[2169] = { RecipeItemEntry =  2409, SkillIndex =  165 },
			[2881] = { SkillIndex =  165 },
			[3753] = { SkillIndex =  165 },
			[3756] = { SkillIndex =  165 },
			[3759] = { SkillIndex =  165 },
			[3760] = { SkillIndex =  165 },
			[3761] = { SkillIndex =  165 },
			[3762] = { RecipeItemEntry =  4293, SkillIndex =  165 },
			[3763] = { SkillIndex =  165 },
			[3764] = { SkillIndex =  165 },
			[3765] = { RecipeItemEntry =  7360, SkillIndex =  165 },
			[3766] = { SkillIndex =  165 },
			[3767] = { RecipeItemEntry =  4294, SkillIndex =  165 },
			[3768] = { SkillIndex =  165 },
			[3769] = { RecipeItemEntry =  4296, SkillIndex =  165 },
			[3770] = { SkillIndex =  165 },
			[3771] = { RecipeItemEntry =  4297, SkillIndex =  165 },
			[3772] = { RecipeItemEntry =  7613, SkillIndex =  165 },
			[3773] = { RecipeItemEntry =  4299, SkillIndex =  165 },
			[3774] = { SkillIndex =  165 },
			[3775] = { RecipeItemEntry =  4298, SkillIndex =  165 },
			[3776] = { SkillIndex =  165 },
			[3777] = { RecipeItemEntry =  4300, SkillIndex =  165 },
			[3778] = { RecipeItemEntry =  14635, SkillIndex =  165 },
			[3779] = { RecipeItemEntry =  4301, SkillIndex =  165 },
			[3780] = { SkillIndex =  165 },
			[3816] = { SkillIndex =  165 },
			[3817] = { SkillIndex =  165 },
			[3818] = { SkillIndex =  165 },
			[4096] = { RecipeItemEntry =  13287, SkillIndex =  165 },
			[4097] = { RecipeItemEntry =  13288, SkillIndex =  165 },
			[5244] = { RecipeItemEntry =  5083, SkillIndex =  165 },
			[6661] = { SkillIndex =  165 },
			[6702] = { RecipeItemEntry =  5786, SkillIndex =  165 },
			[6703] = { RecipeItemEntry =  5787, SkillIndex =  165 },
			[6704] = { RecipeItemEntry =  5788, SkillIndex =  165 },
			[6705] = { RecipeItemEntry =  5789, SkillIndex =  165 },
			[7126] = { SkillIndex =  165 },
			[7133] = { RecipeItemEntry =  5972, SkillIndex =  165 },
			[7135] = { SkillIndex =  165 },
			[7147] = { SkillIndex =  165 },
			[7149] = { RecipeItemEntry =  5973, SkillIndex =  165 },
			[7151] = { SkillIndex =  165 },
			[7153] = { RecipeItemEntry =  5974, SkillIndex =  165 },
			[7156] = { SkillIndex =  165 },
			[7953] = { RecipeItemEntry =  6474, SkillIndex =  165 },
			[7954] = { RecipeItemEntry =  6475, SkillIndex =  165 },
			[7955] = { RecipeItemEntry =  6476, SkillIndex =  165 },
			[8322] = { RecipeItemEntry =  6710, SkillIndex =  165 },
			[9058] = { SkillIndex =  165 },
			[9059] = { SkillIndex =  165 },
			[9060] = { SkillIndex =  165 },
			[9062] = { SkillIndex =  165 },
			[9064] = { RecipeItemEntry =  7288, SkillIndex =  165 },
			[9065] = { SkillIndex =  165 },
			[9068] = { SkillIndex =  165 },
			[9070] = { RecipeItemEntry =  7289, SkillIndex =  165 },
			[9072] = { RecipeItemEntry =  7290, SkillIndex =  165 },
			[9074] = { SkillIndex =  165 },
			[9145] = { SkillIndex =  165 },
			[9146] = { RecipeItemEntry =  7361, SkillIndex =  165 },
			[9147] = { RecipeItemEntry =  7362, SkillIndex =  165 },
			[9148] = { RecipeItemEntry =  7363, SkillIndex =  165 },
			[9149] = { RecipeItemEntry =  7364, SkillIndex =  165 },
			[9193] = { SkillIndex =  165 },
			[9194] = { SkillIndex =  165 },
			[9195] = { RecipeItemEntry =  7449, SkillIndex =  165 },
			[9196] = { SkillIndex =  165 },
			[9197] = { RecipeItemEntry =  7450, SkillIndex =  165 },
			[9198] = { SkillIndex =  165 },
			[9201] = { SkillIndex =  165 },
			[9202] = { RecipeItemEntry =  7451, SkillIndex =  165 },
			[9206] = { SkillIndex =  165 },
			[9207] = { RecipeItemEntry =  7452, SkillIndex =  165 },
			[9208] = { RecipeItemEntry =  7453, SkillIndex =  165 },
			[10482] = { SkillIndex =  165 },
			[10487] = { SkillIndex =  165 },
			[10490] = { RecipeItemEntry =  8384, SkillIndex =  165 },
			[10499] = { SkillIndex =  165 },
			[10507] = { SkillIndex =  165 },
			[10509] = { RecipeItemEntry =  8385, SkillIndex =  165 },
			[10511] = { SkillIndex =  165 },
			[10516] = { RecipeItemEntry =  8409, SkillIndex =  165 },
			[10518] = { SkillIndex =  165 },
			[10520] = { RecipeItemEntry =  8386, SkillIndex =  165 },
			[10525] = { RecipeItemEntry =  8395, SkillIndex =  165 },
			[10529] = { RecipeItemEntry =  8403, SkillIndex =  165 },
			[10531] = { RecipeItemEntry =  8387, SkillIndex =  165 },
			[10533] = { RecipeItemEntry =  8397, SkillIndex =  165 },
			[10542] = { RecipeItemEntry =  8398, SkillIndex =  165 },
			[10544] = { RecipeItemEntry =  8404, SkillIndex =  165 },
			[10546] = { RecipeItemEntry =  8405, SkillIndex =  165 },
			[10548] = { SkillIndex =  165 },
			[10550] = { SkillIndex =  165 },
			[10552] = { SkillIndex =  165 },
			[10554] = { RecipeItemEntry =  8399, SkillIndex =  165 },
			[10556] = { SkillIndex =  165 },
			[10558] = { SkillIndex =  165 },
			[10560] = { RecipeItemEntry =  8389, SkillIndex =  165 },
			[10562] = { RecipeItemEntry =  8390, SkillIndex =  165 },
			[10564] = { RecipeItemEntry =  8400, SkillIndex =  165 },
			[10566] = { RecipeItemEntry =  8406, SkillIndex =  165 },
			[10568] = { RecipeItemEntry =  8401, SkillIndex =  165 },
			[10570] = { RecipeItemEntry =  8402, SkillIndex =  165 },
			[10572] = { RecipeItemEntry =  8407, SkillIndex =  165 },
			[10574] = { RecipeItemEntry =  8408, SkillIndex =  165 },
			[10619] = { SkillIndex =  165 },
			[10621] = { SkillIndex =  165 },
			[10630] = { SkillIndex =  165 },
			[10632] = { SkillIndex =  165 },
			[10647] = { SkillIndex =  165 },
			[10650] = { SkillIndex =  165 },
			[14930] = { SkillIndex =  165 },
			[14932] = { SkillIndex =  165 },
			[19047] = { SkillIndex =  165 },
			[19048] = { RecipeItemEntry =  15724, SkillIndex =  165 },
			[19049] = { RecipeItemEntry =  15725, SkillIndex =  165 },
			[19050] = { RecipeItemEntry =  15726, SkillIndex =  165 },
			[19051] = { RecipeItemEntry =  15727, SkillIndex =  165 },
			[19052] = { RecipeItemEntry =  15728, SkillIndex =  165 },
			[19053] = { RecipeItemEntry =  15729, SkillIndex =  165 },
			[19054] = { RecipeItemEntry =  15730, SkillIndex =  165 },
			[19055] = { RecipeItemEntry =  15731, SkillIndex =  165 },
			[19058] = { SkillIndex =  165 },
			[19059] = { RecipeItemEntry =  15732, SkillIndex =  165 },
			[19060] = { RecipeItemEntry =  15733, SkillIndex =  165 },
			[19061] = { RecipeItemEntry =  15734, SkillIndex =  165 },
			[19062] = { RecipeItemEntry =  15735, SkillIndex =  165 },
			[19063] = { RecipeItemEntry =  15737, SkillIndex =  165 },
			[19064] = { RecipeItemEntry =  15738, SkillIndex =  165 },
			[19065] = { RecipeItemEntry =  15739, SkillIndex =  165 },
			[19066] = { RecipeItemEntry =  15740, SkillIndex =  165 },
			[19067] = { RecipeItemEntry =  15741, SkillIndex =  165 },
			[19068] = { RecipeItemEntry =  15742, SkillIndex =  165 },
			[19070] = { RecipeItemEntry =  15743, SkillIndex =  165 },
			[19071] = { RecipeItemEntry =  15744, SkillIndex =  165 },
			[19072] = { RecipeItemEntry =  15745, SkillIndex =  165 },
			[19073] = { RecipeItemEntry =  15746, SkillIndex =  165 },
			[19074] = { RecipeItemEntry =  15747, SkillIndex =  165 },
			[19075] = { RecipeItemEntry =  15748, SkillIndex =  165 },
			[19076] = { RecipeItemEntry =  15749, SkillIndex =  165 },
			[19077] = { RecipeItemEntry =  15751, SkillIndex =  165 },
			[19078] = { RecipeItemEntry =  15752, SkillIndex =  165 },
			[19079] = { RecipeItemEntry =  15753, SkillIndex =  165 },
			[19080] = { RecipeItemEntry =  15754, SkillIndex =  165 },
			[19081] = { RecipeItemEntry =  15755, SkillIndex =  165 },
			[19082] = { RecipeItemEntry =  15756, SkillIndex =  165 },
			[19083] = { RecipeItemEntry =  15757, SkillIndex =  165 },
			[19084] = { RecipeItemEntry =  15758, SkillIndex =  165 },
			[19085] = { RecipeItemEntry =  15759, SkillIndex =  165 },
			[19086] = { RecipeItemEntry =  15760, SkillIndex =  165 },
			[19087] = { RecipeItemEntry =  15761, SkillIndex =  165 },
			[19088] = { RecipeItemEntry =  15762, SkillIndex =  165 },
			[19089] = { RecipeItemEntry =  15763, SkillIndex =  165 },
			[19090] = { RecipeItemEntry =  15764, SkillIndex =  165 },
			[19091] = { RecipeItemEntry =  15765, SkillIndex =  165 },
			[19092] = { RecipeItemEntry =  15768, SkillIndex =  165 },
			[19093] = { SkillIndex =  165 },
			[19094] = { RecipeItemEntry =  15770, SkillIndex =  165 },
			[19095] = { RecipeItemEntry =  15771, SkillIndex =  165 },
			[19097] = { RecipeItemEntry =  15772, SkillIndex =  165 },
			[19098] = { RecipeItemEntry =  15773, SkillIndex =  165 },
			[19100] = { RecipeItemEntry =  15774, SkillIndex =  165 },
			[19101] = { RecipeItemEntry =  15775, SkillIndex =  165 },
			[19102] = { RecipeItemEntry =  15776, SkillIndex =  165 },
			[19103] = { RecipeItemEntry =  15777, SkillIndex =  165 },
			[19104] = { RecipeItemEntry =  15779, SkillIndex =  165 },
			[19106] = { RecipeItemEntry =  15780, SkillIndex =  165 },
			[19107] = { RecipeItemEntry =  15781, SkillIndex =  165 },
			[20648] = { SkillIndex =  165 },
			[20649] = { SkillIndex =  165 },
			[20650] = { SkillIndex =  165 },
			[20853] = { RecipeItemEntry =  17022, SkillIndex =  165 },
			[20854] = { RecipeItemEntry =  17023, SkillIndex =  165 },
			[20855] = { RecipeItemEntry =  17025, SkillIndex =  165 },
			[21943] = { RecipeItemEntry =  17722, SkillIndex =  165 },
			[22331] = { SkillIndex =  165 },
			[22711] = { RecipeItemEntry =  18239, SkillIndex =  165 },
			[22727] = { RecipeItemEntry =  18252, SkillIndex =  165 },
			[22815] = { SkillIndex =  165 },
			[22921] = { RecipeItemEntry =  18514, SkillIndex =  165 },
			[22922] = { RecipeItemEntry =  18515, SkillIndex =  165 },
			[22923] = { RecipeItemEntry =  18516, SkillIndex =  165 },
			[22926] = { RecipeItemEntry =  18517, SkillIndex =  165 },
			[22927] = { RecipeItemEntry =  18518, SkillIndex =  165 },
			[22928] = { RecipeItemEntry =  18519, SkillIndex =  165 },
			[23190] = { RecipeItemEntry =  18731, SkillIndex =  165 },
			[23399] = { RecipeItemEntry =  18949, SkillIndex =  165 },
			[23703] = { RecipeItemEntry =  19326, SkillIndex =  165 },
			[23704] = { RecipeItemEntry =  19327, SkillIndex =  165 },
			[23705] = { RecipeItemEntry =  19328, SkillIndex =  165 },
			[23706] = { RecipeItemEntry =  19329, SkillIndex =  165 },
			[23707] = { RecipeItemEntry =  19330, SkillIndex =  165 },
			[23708] = { RecipeItemEntry =  19331, SkillIndex =  165 },
			[23709] = { RecipeItemEntry =  19332, SkillIndex =  165 },
			[23710] = { RecipeItemEntry =  19333, SkillIndex =  165 },
			[24121] = { RecipeItemEntry =  19769, SkillIndex =  165 },
			[24122] = { RecipeItemEntry =  19770, SkillIndex =  165 },
			[24123] = { RecipeItemEntry =  19771, SkillIndex =  165 },
			[24124] = { RecipeItemEntry =  19772, SkillIndex =  165 },
			[24125] = { RecipeItemEntry =  19773, SkillIndex =  165 },
			[24654] = { SkillIndex =  165 },
			[24655] = { SkillIndex =  165 },
			[24703] = { RecipeItemEntry =  20382, SkillIndex =  165 },
			[24846] = { RecipeItemEntry =  20506, SkillIndex =  165 },
			[24847] = { RecipeItemEntry =  20507, SkillIndex =  165 },
			[24848] = { RecipeItemEntry =  20508, SkillIndex =  165 },
			[24849] = { RecipeItemEntry =  20509, SkillIndex =  165 },
			[24850] = { RecipeItemEntry =  20510, SkillIndex =  165 },
			[24851] = { RecipeItemEntry =  20511, SkillIndex =  165 },
			[24940] = { RecipeItemEntry =  20576, SkillIndex =  165 },
			[26279] = { RecipeItemEntry =  21548, SkillIndex =  165 },
			[28219] = { SkillIndex =  165 },
			[28220] = { SkillIndex =  165 },
			[28221] = { SkillIndex =  165 },
			[28222] = { SkillIndex =  165 },
			[28223] = { SkillIndex =  165 },
			[28224] = { SkillIndex =  165 },
			[28472] = { RecipeItemEntry =  22771, SkillIndex =  165 },
			[28473] = { RecipeItemEntry =  22770, SkillIndex =  165 },
			[28474] = { RecipeItemEntry =  22769, SkillIndex =  165 },
			[32454] = { SkillIndex =  165 },
			[32455] = { RecipeItemEntry =  25720, SkillIndex =  165 },
			[32456] = { SkillIndex =  165 },
			[32457] = { RecipeItemEntry =  25721, SkillIndex =  165 },
			[32458] = { RecipeItemEntry =  25722, SkillIndex =  165 },
			[32461] = { RecipeItemEntry =  25725, SkillIndex =  165 },
			[32462] = { SkillIndex =  165 },
			[32463] = { SkillIndex =  165 },
			[32464] = { SkillIndex =  165 },
			[32465] = { SkillIndex =  165 },
			[32466] = { SkillIndex =  165 },
			[32467] = { SkillIndex =  165 },
			[32468] = { SkillIndex =  165 },
			[32469] = { SkillIndex =  165 },
			[32470] = { SkillIndex =  165 },
			[32471] = { SkillIndex =  165 },
			[32472] = { SkillIndex =  165 },
			[32473] = { SkillIndex =  165 },
			[32478] = { SkillIndex =  165 },
			[32479] = { SkillIndex =  165 },
			[32480] = { SkillIndex =  165 },
			[32481] = { SkillIndex =  165 },
			[32482] = { RecipeItemEntry =  25726, SkillIndex =  165 },
			[32485] = { RecipeItemEntry =  25728, SkillIndex =  165 },
			[32487] = { RecipeItemEntry =  25729, SkillIndex =  165 },
			[32488] = { RecipeItemEntry =  25731, SkillIndex =  165 },
			[32489] = { RecipeItemEntry =  25730, SkillIndex =  165 },
			[32490] = { RecipeItemEntry =  25732, SkillIndex =  165 },
			[32493] = { RecipeItemEntry =  25733, SkillIndex =  165 },
			[32494] = { RecipeItemEntry =  25734, SkillIndex =  165 },
			[32495] = { RecipeItemEntry =  25735, SkillIndex =  165 },
			[32496] = { RecipeItemEntry =  25736, SkillIndex =  165 },
			[32497] = { RecipeItemEntry =  25737, SkillIndex =  165 },
			[32498] = { RecipeItemEntry =  25738, SkillIndex =  165 },
			[32499] = { RecipeItemEntry =  25739, SkillIndex =  165 },
			[32500] = { RecipeItemEntry =  25740, SkillIndex =  165 },
			[32501] = { RecipeItemEntry =  25741, SkillIndex =  165 },
			[32502] = { RecipeItemEntry =  25742, SkillIndex =  165 },
			[32503] = { RecipeItemEntry =  25743, SkillIndex =  165 },
			[35520] = { RecipeItemEntry =  29669, SkillIndex =  165 },
			[35521] = { RecipeItemEntry =  29672, SkillIndex =  165 },
			[35522] = { RecipeItemEntry =  29673, SkillIndex =  165 },
			[35523] = { RecipeItemEntry =  29674, SkillIndex =  165 },
			[35524] = { RecipeItemEntry =  29675, SkillIndex =  165 },
			[35525] = { RecipeItemEntry =  29677, SkillIndex =  165 },
			[35526] = { RecipeItemEntry =  29682, SkillIndex =  165 },
			[35527] = { RecipeItemEntry =  29684, SkillIndex =  165 },
			[35528] = { RecipeItemEntry =  29691, SkillIndex =  165 },
			[35529] = { RecipeItemEntry =  29689, SkillIndex =  165 },
			[35530] = { RecipeItemEntry =  29664, SkillIndex =  165 },
			[35531] = { RecipeItemEntry =  29693, SkillIndex =  165 },
			[35532] = { RecipeItemEntry =  29698, SkillIndex =  165 },
			[35533] = { RecipeItemEntry =  29700, SkillIndex =  165 },
			[35534] = { RecipeItemEntry =  29701, SkillIndex =  165 },
			[35535] = { RecipeItemEntry =  29702, SkillIndex =  165 },
			[35536] = { RecipeItemEntry =  29703, SkillIndex =  165 },
			[35537] = { RecipeItemEntry =  29704, SkillIndex =  165 },
			[35538] = { RecipeItemEntry =  29713, SkillIndex =  165 },
			[35539] = { RecipeItemEntry =  29714, SkillIndex =  165 },
			[35540] = { SkillIndex =  165 },
			[35543] = { RecipeItemEntry =  29717, SkillIndex =  165 },
			[35544] = { RecipeItemEntry =  29718, SkillIndex =  165 },
			[35549] = { RecipeItemEntry =  29719, SkillIndex =  165 },
			[35554] = { RecipeItemEntry =  29722, SkillIndex =  165 },
			[35555] = { RecipeItemEntry =  29720, SkillIndex =  165 },
			[35557] = { RecipeItemEntry =  29721, SkillIndex =  165 },
			[35558] = { RecipeItemEntry =  29723, SkillIndex =  165 },
			[35559] = { RecipeItemEntry =  29724, SkillIndex =  165 },
			[35560] = { RecipeItemEntry =  29725, SkillIndex =  165 },
			[35561] = { RecipeItemEntry =  29726, SkillIndex =  165 },
			[35562] = { RecipeItemEntry =  29727, SkillIndex =  165 },
			[35563] = { RecipeItemEntry =  29728, SkillIndex =  165 },
			[35564] = { RecipeItemEntry =  29729, SkillIndex =  165 },
			[35567] = { RecipeItemEntry =  29730, SkillIndex =  165 },
			[35568] = { RecipeItemEntry =  29731, SkillIndex =  165 },
			[35572] = { RecipeItemEntry =  29732, SkillIndex =  165 },
			[35573] = { RecipeItemEntry =  29733, SkillIndex =  165 },
			[35574] = { RecipeItemEntry =  29734, SkillIndex =  165 },
			[35575] = { SkillIndex =  165 },
			[35576] = { SkillIndex =  165 },
			[35577] = { SkillIndex =  165 },
			[35580] = { SkillIndex =  165 },
			[35582] = { SkillIndex =  165 },
			[35584] = { SkillIndex =  165 },
			[35585] = { SkillIndex =  165 },
			[35587] = { SkillIndex =  165 },
			[35588] = { SkillIndex =  165 },
			[35589] = { SkillIndex =  165 },
			[35590] = { SkillIndex =  165 },
			[35591] = { SkillIndex =  165 },
			[36074] = { SkillIndex =  165 },
			[36075] = { SkillIndex =  165 },
			[36076] = { SkillIndex =  165 },
			[36077] = { SkillIndex =  165 },
			[36078] = { SkillIndex =  165 },
			[36079] = { SkillIndex =  165 },
			[36349] = { RecipeItemEntry =  30301, SkillIndex =  165 },
			[36351] = { RecipeItemEntry =  30302, SkillIndex =  165 },
			[36352] = { RecipeItemEntry =  30303, SkillIndex =  165 },
			[36353] = { RecipeItemEntry =  30304, SkillIndex =  165 },
			[36355] = { RecipeItemEntry =  30305, SkillIndex =  165 },
			[36357] = { RecipeItemEntry =  30306, SkillIndex =  165 },
			[36358] = { RecipeItemEntry =  30307, SkillIndex =  165 },
			[36359] = { RecipeItemEntry =  30308, SkillIndex =  165 },
			[39997] = { RecipeItemEntry =  32429, SkillIndex =  165 },
			[40001] = { RecipeItemEntry =  32431, SkillIndex =  165 },
			[40002] = { RecipeItemEntry =  32432, SkillIndex =  165 },
			[40003] = { RecipeItemEntry =  32433, SkillIndex =  165 },
			[40004] = { RecipeItemEntry =  32434, SkillIndex =  165 },
			[40005] = { RecipeItemEntry =  32435, SkillIndex =  165 },
			[40006] = { RecipeItemEntry =  32436, SkillIndex =  165 },
			[41156] = { RecipeItemEntry =  32744, SkillIndex =  165 },
			[41157] = { RecipeItemEntry =  32745, SkillIndex =  165 },
			[41158] = { RecipeItemEntry =  32746, SkillIndex =  165 },
			[41160] = { RecipeItemEntry =  32747, SkillIndex =  165 },
			[41161] = { RecipeItemEntry =  32748, SkillIndex =  165 },
			[41162] = { RecipeItemEntry =  32749, SkillIndex =  165 },
			[41163] = { RecipeItemEntry =  32750, SkillIndex =  165 },
			[41164] = { RecipeItemEntry =  32751, SkillIndex =  165 },
			[42546] = { RecipeItemEntry =  33124, SkillIndex =  165 },
			[42731] = { RecipeItemEntry =  33205, SkillIndex =  165 },
			[44343] = { SkillIndex =  165 },
			[44344] = { SkillIndex =  165 },
			[44359] = { RecipeItemEntry =  34200, SkillIndex =  165 },
			[44768] = { RecipeItemEntry =  34201, SkillIndex =  165 },
			[44770] = { SkillIndex =  165 },
			[44953] = { RecipeItemEntry =  34262, SkillIndex =  165 },
			[44970] = { SkillIndex =  165 },
			[45100] = { SkillIndex =  165 },
			[45117] = { RecipeItemEntry =  34491, SkillIndex =  165 },
			[46132] = { RecipeItemEntry =  35212, SkillIndex =  165 },
			[46133] = { RecipeItemEntry =  35213, SkillIndex =  165 },
			[46134] = { RecipeItemEntry =  35214, SkillIndex =  165 },
			[46135] = { RecipeItemEntry =  35215, SkillIndex =  165 },
			[46136] = { RecipeItemEntry =  35216, SkillIndex =  165 },
			[46137] = { RecipeItemEntry =  35217, SkillIndex =  165 },
			[46138] = { RecipeItemEntry =  35218, SkillIndex =  165 },
			[46139] = { RecipeItemEntry =  35219, SkillIndex =  165 },
			[50936] = { SkillIndex =  165 },
			[50938] = { SkillIndex =  165 },
			[50939] = { SkillIndex =  165 },
			[50940] = { SkillIndex =  165 },
			[50941] = { SkillIndex =  165 },
			[50942] = { SkillIndex =  165 },
			[50943] = { SkillIndex =  165 },
			[50944] = { SkillIndex =  165 },
			[50945] = { SkillIndex =  165 },
			[50946] = { SkillIndex =  165 },
			[50947] = { SkillIndex =  165 },
			[50948] = { SkillIndex =  165 },
			[50949] = { SkillIndex =  165 },
			[50950] = { SkillIndex =  165 },
			[50951] = { SkillIndex =  165 },
			[50952] = { SkillIndex =  165 },
			[50953] = { SkillIndex =  165 },
			[50954] = { SkillIndex =  165 },
			[50955] = { SkillIndex =  165 },
			[50956] = { SkillIndex =  165 },
			[50957] = { SkillIndex =  165 },
			[50958] = { SkillIndex =  165 },
			[50959] = { SkillIndex =  165 },
			[50960] = { SkillIndex =  165 },
			[50961] = { SkillIndex =  165 },
			[50962] = { SkillIndex =  165 },
			[50963] = { SkillIndex =  165 },
			[50964] = { SkillIndex =  165 },
			[50965] = { SkillIndex =  165 },
			[50966] = { SkillIndex =  165 },
			[50967] = { SkillIndex =  165 },
			[50970] = { RecipeItemEntry =  44509, SkillIndex =  165 },
			[50971] = { RecipeItemEntry =  44510, SkillIndex =  165 },
			[51568] = { RecipeItemEntry =  38597, SkillIndex =  165 },
			[51569] = { SkillIndex =  165 },
			[51570] = { SkillIndex =  165 },
			[51571] = { SkillIndex =  165 },
			[51572] = { SkillIndex =  165 },
			[52733] = { RecipeItemEntry =  32430, SkillIndex =  165 },
			[55199] = { SkillIndex =  165 },
			[55243] = { SkillIndex =  165 },
			[60599] = { SkillIndex =  165 },
			[60600] = { SkillIndex =  165 },
			[60601] = { SkillIndex =  165 },
			[60604] = { SkillIndex =  165 },
			[60605] = { SkillIndex =  165 },
			[60607] = { SkillIndex =  165 },
			[60608] = { SkillIndex =  165 },
			[60611] = { SkillIndex =  165 },
			[60613] = { SkillIndex =  165 },
			[60620] = { SkillIndex =  165 },
			[60622] = { SkillIndex =  165 },
			[60624] = { SkillIndex =  165 },
			[60627] = { SkillIndex =  165 },
			[60629] = { SkillIndex =  165 },
			[60630] = { SkillIndex =  165 },
			[60631] = { SkillIndex =  165 },
			[60637] = { SkillIndex =  165 },
			[60640] = { SkillIndex =  165 },
			[60643] = { SkillIndex =  165 },
			[60645] = { RecipeItemEntry =  44511, SkillIndex =  165 },
			[60647] = { RecipeItemEntry =  44512, SkillIndex =  165 },
			[60649] = { SkillIndex =  165 },
			[60651] = { SkillIndex =  165 },
			[60652] = { SkillIndex =  165 },
			[60655] = { SkillIndex =  165 },
			[60658] = { SkillIndex =  165 },
			[60660] = { SkillIndex =  165 },
			[60665] = { SkillIndex =  165 },
			[60666] = { SkillIndex =  165 },
			[60669] = { SkillIndex =  165 },
			[60671] = { SkillIndex =  165 },
			[60697] = { RecipeItemEntry =  44513, SkillIndex =  165 },
			[60702] = { RecipeItemEntry =  44514, SkillIndex =  165 },
			[60703] = { RecipeItemEntry =  44515, SkillIndex =  165 },
			[60704] = { RecipeItemEntry =  44516, SkillIndex =  165 },
			[60705] = { RecipeItemEntry =  44517, SkillIndex =  165 },
			[60706] = { RecipeItemEntry =  44518, SkillIndex =  165 },
			[60711] = { RecipeItemEntry =  44519, SkillIndex =  165 },
			[60712] = { RecipeItemEntry =  44520, SkillIndex =  165 },
			[60715] = { RecipeItemEntry =  44521, SkillIndex =  165 },
			[60716] = { RecipeItemEntry =  44522, SkillIndex =  165 },
			[60718] = { RecipeItemEntry =  44523, SkillIndex =  165 },
			[60720] = { RecipeItemEntry =  44524, SkillIndex =  165 },
			[60721] = { RecipeItemEntry =  44525, SkillIndex =  165 },
			[60723] = { RecipeItemEntry =  44526, SkillIndex =  165 },
			[60725] = { RecipeItemEntry =  44527, SkillIndex =  165 },
			[60727] = { RecipeItemEntry =  44528, SkillIndex =  165 },
			[60728] = { RecipeItemEntry =  44530, SkillIndex =  165 },
			[60729] = { RecipeItemEntry =  44531, SkillIndex =  165 },
			[60730] = { RecipeItemEntry =  44532, SkillIndex =  165 },
			[60731] = { RecipeItemEntry =  44533, SkillIndex =  165 },
			[60732] = { RecipeItemEntry =  44534, SkillIndex =  165 },
			[60734] = { RecipeItemEntry =  44535, SkillIndex =  165 },
			[60735] = { RecipeItemEntry =  44536, SkillIndex =  165 },
			[60737] = { RecipeItemEntry =  44537, SkillIndex =  165 },
			[60743] = { RecipeItemEntry =  44538, SkillIndex =  165 },
			[60746] = { RecipeItemEntry =  44539, SkillIndex =  165 },
			[60747] = { RecipeItemEntry =  44540, SkillIndex =  165 },
			[60748] = { RecipeItemEntry =  44541, SkillIndex =  165 },
			[60749] = { RecipeItemEntry =  44542, SkillIndex =  165 },
			[60750] = { RecipeItemEntry =  44543, SkillIndex =  165 },
			[60751] = { RecipeItemEntry =  44544, SkillIndex =  165 },
			[60752] = { RecipeItemEntry =  44545, SkillIndex =  165 },
			[60754] = { RecipeItemEntry =  44546, SkillIndex =  165 },
			[60755] = { RecipeItemEntry =  44547, SkillIndex =  165 },
			[60756] = { RecipeItemEntry =  44548, SkillIndex =  165 },
			[60757] = { RecipeItemEntry =  44549, SkillIndex =  165 },
			[60758] = { RecipeItemEntry =  44550, SkillIndex =  165 },
			[60759] = { RecipeItemEntry =  44551, SkillIndex =  165 },
			[60760] = { RecipeItemEntry =  44552, SkillIndex =  165 },
			[60761] = { RecipeItemEntry =  44553, SkillIndex =  165 },
			[60996] = { RecipeItemEntry =  44584, SkillIndex =  165 },
			[60997] = { RecipeItemEntry =  44585, SkillIndex =  165 },
			[60998] = { RecipeItemEntry =  44586, SkillIndex =  165 },
			[60999] = { RecipeItemEntry =  44587, SkillIndex =  165 },
			[61000] = { RecipeItemEntry =  44588, SkillIndex =  165 },
			[61002] = { RecipeItemEntry =  44589, SkillIndex =  165 },
			[62176] = { RecipeItemEntry =  44932, SkillIndex =  165 },
			[62177] = { RecipeItemEntry =  44933, SkillIndex =  165 },
			[62448] = { SkillIndex =  165 },
			[63194] = { RecipeItemEntry =  45094, SkillIndex =  165 },
			[63195] = { RecipeItemEntry =  45095, SkillIndex =  165 },
			[63196] = { RecipeItemEntry =  45096, SkillIndex =  165 },
			[63197] = { RecipeItemEntry =  45097, SkillIndex =  165 },
			[63198] = { RecipeItemEntry =  45098, SkillIndex =  165 },
			[63199] = { RecipeItemEntry =  45099, SkillIndex =  165 },
			[63200] = { RecipeItemEntry =  45100, SkillIndex =  165 },
			[63201] = { RecipeItemEntry =  45101, SkillIndex =  165 },
			[64661] = { SkillIndex =  165 },
			[67080] = { RecipeItemEntry =  47628, SkillIndex =  165 },
			[67081] = { RecipeItemEntry =  47629, SkillIndex =  165 },
			[67082] = { RecipeItemEntry =  47630, SkillIndex =  165 },
			[67083] = { RecipeItemEntry =  47631, SkillIndex =  165 },
			[67084] = { RecipeItemEntry =  47632, SkillIndex =  165 },
			[67085] = { RecipeItemEntry =  47633, SkillIndex =  165 },
			[67086] = { RecipeItemEntry =  47634, SkillIndex =  165 },
			[67087] = { RecipeItemEntry =  47635, SkillIndex =  165 },
			[67136] = { RecipeItemEntry =  47650, SkillIndex =  165 },
			[67137] = { RecipeItemEntry =  47646, SkillIndex =  165 },
			[67138] = { RecipeItemEntry =  47649, SkillIndex =  165 },
			[67139] = { RecipeItemEntry =  47647, SkillIndex =  165 },
			[67140] = { RecipeItemEntry =  47652, SkillIndex =  165 },
			[67141] = { RecipeItemEntry =  47653, SkillIndex =  165 },
			[67142] = { RecipeItemEntry =  47651, SkillIndex =  165 },
			[67143] = { RecipeItemEntry =  47648, SkillIndex =  165 },
			[69386] = { SkillIndex =  165 },
			[69388] = { SkillIndex =  165 },
			[70554] = { RecipeItemEntry =  49957, SkillIndex =  165 },
			[70555] = { RecipeItemEntry =  49958, SkillIndex =  165 },
			[70556] = { RecipeItemEntry =  49959, SkillIndex =  165 },
			[70557] = { RecipeItemEntry =  49961, SkillIndex =  165 },
			[70558] = { RecipeItemEntry =  49962, SkillIndex =  165 },
			[70559] = { RecipeItemEntry =  49963, SkillIndex =  165 },
			[70560] = { RecipeItemEntry =  49965, SkillIndex =  165 },
			[70561] = { RecipeItemEntry =  49966, SkillIndex =  165 },
			[968001] = { RecipeItemEntry =  967233, SkillIndex =  165 },
			[968002] = { RecipeItemEntry =  967234, SkillIndex =  165 },
			[968004] = { RecipeItemEntry =  967236, SkillIndex =  165 },
			[968005] = { RecipeItemEntry =  967237, SkillIndex =  165 },
			[968007] = { RecipeItemEntry =  967239, SkillIndex =  165 },
			[968008] = { RecipeItemEntry =  967240, SkillIndex =  165 },
			[968010] = { RecipeItemEntry =  967242, SkillIndex =  165 },
			[968011] = { RecipeItemEntry =  967243, SkillIndex =  165 },
			[968013] = { RecipeItemEntry =  967245, SkillIndex =  165 },
			[968014] = { RecipeItemEntry =  967246, SkillIndex =  165 },
			[968016] = { RecipeItemEntry =  967248, SkillIndex =  165 },
			[968017] = { RecipeItemEntry =  967249, SkillIndex =  165 },
			[979329] = { RecipeItemEntry =  1203214, SkillIndex =  165 },
			[979330] = { RecipeItemEntry =  1203215, SkillIndex =  165 },
			[979331] = { RecipeItemEntry =  1203216, SkillIndex =  165 },
			[979332] = { RecipeItemEntry =  1203217, SkillIndex =  165 },
			[979484] = { SkillIndex =  165 },
			[979485] = { SkillIndex =  165 },
			[979486] = { SkillIndex =  165 },
			[979487] = { SkillIndex =  165 },
			[979488] = { SkillIndex =  165 },
			[979489] = { SkillIndex =  165 },
			[979490] = { SkillIndex =  165 },
			[979491] = { SkillIndex =  165 },
			[979522] = { RecipeItemEntry =  1204073, SkillIndex =  165 },
			[979523] = { RecipeItemEntry =  1204074, SkillIndex =  165 },
			[979524] = { RecipeItemEntry =  1204075, SkillIndex =  165 },
			[979525] = { RecipeItemEntry =  1204076, SkillIndex =  165 },
			[979526] = { RecipeItemEntry =  1204077, SkillIndex =  165 },
			[979527] = { RecipeItemEntry =  1204078, SkillIndex =  165 },
			[979528] = { RecipeItemEntry =  1204079, SkillIndex =  165 },
			[979529] = { RecipeItemEntry =  1204080, SkillIndex =  165 },
			[979530] = { RecipeItemEntry =  1204081, SkillIndex =  165 },
			[979531] = { RecipeItemEntry =  1204082, SkillIndex =  165 },
			[979532] = { RecipeItemEntry =  1204083, SkillIndex =  165 },
			[979533] = { RecipeItemEntry =  1204084, SkillIndex =  165 },
			[1979329] = { RecipeItemEntry =  1303521, SkillIndex =  165 },
			[1979330] = { RecipeItemEntry =  1303522, SkillIndex =  165 },
			[1979331] = { RecipeItemEntry =  1303523, SkillIndex =  165 },
			[1979332] = { RecipeItemEntry =  1303524, SkillIndex =  165 },
			[1979484] = { SkillIndex =  165 },
			[1979485] = { SkillIndex =  165 },
			[1979486] = { SkillIndex =  165 },
			[1979487] = { SkillIndex =  165 },
			[1979490] = { SkillIndex =  165 },
			[1979491] = { SkillIndex =  165 },
			[2329] = { SkillIndex =  171 },
			[2330] = { SkillIndex =  171 },
			[2331] = { SkillIndex =  171 },
			[2332] = { SkillIndex =  171 },
			[2333] = { RecipeItemEntry =  3396, SkillIndex =  171 },
			[2334] = { SkillIndex =  171 },
			[2335] = { RecipeItemEntry =  2555, SkillIndex =  171 },
			[2336] = { SkillIndex =  171 },
			[2337] = { SkillIndex =  171 },
			[3170] = { SkillIndex =  171 },
			[3171] = { SkillIndex =  171 },
			[3172] = { RecipeItemEntry =  3393, SkillIndex =  171 },
			[3173] = { SkillIndex =  171 },
			[3174] = { RecipeItemEntry =  3394, SkillIndex =  171 },
			[3175] = { RecipeItemEntry =  3395, SkillIndex =  171 },
			[3176] = { SkillIndex =  171 },
			[3177] = { SkillIndex =  171 },
			[3188] = { RecipeItemEntry =  6211, SkillIndex =  171 },
			[3230] = { RecipeItemEntry =  2553, SkillIndex =  171 },
			[3447] = { SkillIndex =  171 },
			[3448] = { SkillIndex =  171 },
			[3449] = { RecipeItemEntry =  6068, SkillIndex =  171 },
			[3450] = { RecipeItemEntry =  3830, SkillIndex =  171 },
			[3451] = { RecipeItemEntry =  3831, SkillIndex =  171 },
			[3452] = { SkillIndex =  171 },
			[3453] = { RecipeItemEntry =  3832, SkillIndex =  171 },
			[3454] = { RecipeItemEntry =  14634, SkillIndex =  171 },
			[4508] = { RecipeItemEntry =  4597, SkillIndex =  171 },
			[4942] = { RecipeItemEntry =  4624, SkillIndex =  171 },
			[6617] = { RecipeItemEntry =  5640, SkillIndex =  171 },
			[6618] = { RecipeItemEntry =  5643, SkillIndex =  171 },
			[6624] = { RecipeItemEntry =  5642, SkillIndex =  171 },
			[7179] = { SkillIndex =  171 },
			[7181] = { SkillIndex =  171 },
			[7183] = { SkillIndex =  171 },
			[7255] = { RecipeItemEntry =  6053, SkillIndex =  171 },
			[7256] = { RecipeItemEntry =  6054, SkillIndex =  171 },
			[7257] = { RecipeItemEntry =  6055, SkillIndex =  171 },
			[7258] = { RecipeItemEntry =  6056, SkillIndex =  171 },
			[7259] = { RecipeItemEntry =  6057, SkillIndex =  171 },
			[7836] = { SkillIndex =  171 },
			[7837] = { SkillIndex =  171 },
			[7841] = { SkillIndex =  171 },
			[7845] = { SkillIndex =  171 },
			[8240] = { RecipeItemEntry =  6663, SkillIndex =  171 },
			[11448] = { SkillIndex =  171 },
			[11449] = { SkillIndex =  171 },
			[11450] = { SkillIndex =  171 },
			[11451] = { SkillIndex =  171 },
			[11452] = { SkillIndex =  171 },
			[11453] = { RecipeItemEntry =  9293, SkillIndex =  171 },
			[11456] = { RecipeItemEntry =  10644, SkillIndex =  171 },
			[11457] = { SkillIndex =  171 },
			[11458] = { RecipeItemEntry =  9294, SkillIndex =  171 },
			[11459] = { RecipeItemEntry =  9303, SkillIndex =  171 },
			[11460] = { SkillIndex =  171 },
			[11461] = { SkillIndex =  171 },
			[11464] = { RecipeItemEntry =  9295, SkillIndex =  171 },
			[11465] = { SkillIndex =  171 },
			[11466] = { RecipeItemEntry =  9296, SkillIndex =  171 },
			[11467] = { SkillIndex =  171 },
			[11468] = { RecipeItemEntry =  9297, SkillIndex =  171 },
			[11472] = { RecipeItemEntry =  9298, SkillIndex =  171 },
			[11473] = { RecipeItemEntry =  9302, SkillIndex =  171 },
			[11476] = { RecipeItemEntry =  9301, SkillIndex =  171 },
			[11477] = { RecipeItemEntry =  9300, SkillIndex =  171 },
			[11478] = { SkillIndex =  171 },
			[11479] = { RecipeItemEntry =  9304, SkillIndex =  171 },
			[11480] = { RecipeItemEntry =  9305, SkillIndex =  171 },
			[12609] = { SkillIndex =  171 },
			[15833] = { SkillIndex =  171 },
			[17187] = { RecipeItemEntry =  12958, SkillIndex =  171 },
			[17551] = { SkillIndex =  171 },
			[17552] = { RecipeItemEntry =  13476, SkillIndex =  171 },
			[17553] = { RecipeItemEntry =  13477, SkillIndex =  171 },
			[17554] = { RecipeItemEntry =  13478, SkillIndex =  171 },
			[17555] = { RecipeItemEntry =  13479, SkillIndex =  171 },
			[17556] = { RecipeItemEntry =  13480, SkillIndex =  171 },
			[17557] = { RecipeItemEntry =  13481, SkillIndex =  171 },
			[17559] = { RecipeItemEntry =  13482, SkillIndex =  171 },
			[17560] = { RecipeItemEntry =  13483, SkillIndex =  171 },
			[17561] = { RecipeItemEntry =  13484, SkillIndex =  171 },
			[17562] = { RecipeItemEntry =  13485, SkillIndex =  171 },
			[17563] = { RecipeItemEntry =  13486, SkillIndex =  171 },
			[17564] = { RecipeItemEntry =  13487, SkillIndex =  171 },
			[17565] = { RecipeItemEntry =  13488, SkillIndex =  171 },
			[17566] = { RecipeItemEntry =  13489, SkillIndex =  171 },
			[17570] = { RecipeItemEntry =  13490, SkillIndex =  171 },
			[17571] = { RecipeItemEntry =  13491, SkillIndex =  171 },
			[17572] = { RecipeItemEntry =  13492, SkillIndex =  171 },
			[17573] = { RecipeItemEntry =  13493, SkillIndex =  171 },
			[17574] = { RecipeItemEntry =  13494, SkillIndex =  171 },
			[17575] = { RecipeItemEntry =  13495, SkillIndex =  171 },
			[17576] = { RecipeItemEntry =  13496, SkillIndex =  171 },
			[17577] = { RecipeItemEntry =  13497, SkillIndex =  171 },
			[17578] = { RecipeItemEntry =  13499, SkillIndex =  171 },
			[17579] = { SkillIndex =  171 },
			[17580] = { RecipeItemEntry =  13501, SkillIndex =  171 },
			[17632] = { RecipeItemEntry =  13517, SkillIndex =  171 },
			[17634] = { RecipeItemEntry =  13518, SkillIndex =  171 },
			[17635] = { RecipeItemEntry =  13519, SkillIndex =  171 },
			[17636] = { RecipeItemEntry =  13520, SkillIndex =  171 },
			[17637] = { RecipeItemEntry =  13521, SkillIndex =  171 },
			[17638] = { RecipeItemEntry =  13522, SkillIndex =  171 },
			[21923] = { RecipeItemEntry =  17709, SkillIndex =  171 },
			[22732] = { RecipeItemEntry =  18257, SkillIndex =  171 },
			[22808] = { SkillIndex =  171 },
			[24266] = { SkillIndex =  171 },
			[24365] = { RecipeItemEntry =  20011, SkillIndex =  171 },
			[24366] = { RecipeItemEntry =  20012, SkillIndex =  171 },
			[24367] = { RecipeItemEntry =  20013, SkillIndex =  171 },
			[24368] = { RecipeItemEntry =  20014, SkillIndex =  171 },
			[25146] = { RecipeItemEntry =  20761, SkillIndex =  171 },
			[26277] = { RecipeItemEntry =  21547, SkillIndex =  171 },
			[28543] = { RecipeItemEntry =  22900, SkillIndex =  171 },
			[28544] = { SkillIndex =  171 },
			[28545] = { SkillIndex =  171 },
			[28546] = { RecipeItemEntry =  22901, SkillIndex =  171 },
			[28549] = { RecipeItemEntry =  22902, SkillIndex =  171 },
			[28550] = { RecipeItemEntry =  22903, SkillIndex =  171 },
			[28551] = { SkillIndex =  171 },
			[28552] = { RecipeItemEntry =  22904, SkillIndex =  171 },
			[28553] = { RecipeItemEntry =  22905, SkillIndex =  171 },
			[28554] = { RecipeItemEntry =  22906, SkillIndex =  171 },
			[28555] = { RecipeItemEntry =  22907, SkillIndex =  171 },
			[28556] = { RecipeItemEntry =  22908, SkillIndex =  171 },
			[28557] = { RecipeItemEntry =  22909, SkillIndex =  171 },
			[28558] = { RecipeItemEntry =  22910, SkillIndex =  171 },
			[28562] = { RecipeItemEntry =  22911, SkillIndex =  171 },
			[28563] = { RecipeItemEntry =  22912, SkillIndex =  171 },
			[28564] = { RecipeItemEntry =  22913, SkillIndex =  171 },
			[28565] = { RecipeItemEntry =  22914, SkillIndex =  171 },
			[28566] = { RecipeItemEntry =  22915, SkillIndex =  171 },
			[28567] = { RecipeItemEntry =  22916, SkillIndex =  171 },
			[28568] = { RecipeItemEntry =  22917, SkillIndex =  171 },
			[28569] = { RecipeItemEntry =  22918, SkillIndex =  171 },
			[28570] = { RecipeItemEntry =  22919, SkillIndex =  171 },
			[28571] = { RecipeItemEntry =  22920, SkillIndex =  171 },
			[28572] = { RecipeItemEntry =  22921, SkillIndex =  171 },
			[28573] = { RecipeItemEntry =  22922, SkillIndex =  171 },
			[28575] = { RecipeItemEntry =  22923, SkillIndex =  171 },
			[28576] = { RecipeItemEntry =  22924, SkillIndex =  171 },
			[28577] = { RecipeItemEntry =  22925, SkillIndex =  171 },
			[28578] = { RecipeItemEntry =  22926, SkillIndex =  171 },
			[28579] = { RecipeItemEntry =  22927, SkillIndex =  171 },
			[28580] = { SkillIndex =  171 },
			[28581] = { SkillIndex =  171 },
			[28582] = { SkillIndex =  171 },
			[28583] = { SkillIndex =  171 },
			[28584] = { SkillIndex =  171 },
			[28585] = { SkillIndex =  171 },
			[28586] = { SkillIndex =  171 },
			[28587] = { SkillIndex =  171 },
			[28588] = { SkillIndex =  171 },
			[28589] = { SkillIndex =  171 },
			[28590] = { SkillIndex =  171 },
			[28591] = { SkillIndex =  171 },
			[29688] = { RecipeItemEntry =  23574, SkillIndex =  171 },
			[32765] = { RecipeItemEntry =  25869, SkillIndex =  171 },
			[32766] = { RecipeItemEntry =  25870, SkillIndex =  171 },
			[33732] = { SkillIndex =  171 },
			[33733] = { SkillIndex =  171 },
			[33738] = { SkillIndex =  171 },
			[33740] = { SkillIndex =  171 },
			[33741] = { SkillIndex =  171 },
			[38070] = { SkillIndex =  171 },
			[38960] = { RecipeItemEntry =  31680, SkillIndex =  171 },
			[38961] = { RecipeItemEntry =  31682, SkillIndex =  171 },
			[38962] = { RecipeItemEntry =  31681, SkillIndex =  171 },
			[39636] = { SkillIndex =  171 },
			[39637] = { RecipeItemEntry =  32070, SkillIndex =  171 },
			[39638] = { SkillIndex =  171 },
			[39639] = { RecipeItemEntry =  32071, SkillIndex =  171 },
			[41458] = { SkillIndex =  171 },
			[41500] = { SkillIndex =  171 },
			[41501] = { SkillIndex =  171 },
			[41502] = { SkillIndex =  171 },
			[41503] = { SkillIndex =  171 },
			[42736] = { RecipeItemEntry =  33209, SkillIndex =  171 },
			[45061] = { SkillIndex =  171 },
			[47046] = { RecipeItemEntry =  35752, SkillIndex =  171 },
			[47048] = { RecipeItemEntry =  35753, SkillIndex =  171 },
			[47049] = { RecipeItemEntry =  35754, SkillIndex =  171 },
			[47050] = { RecipeItemEntry =  35755, SkillIndex =  171 },
			[53771] = { SkillIndex =  171 },
			[53773] = { SkillIndex =  171 },
			[53774] = { SkillIndex =  171 },
			[53775] = { SkillIndex =  171 },
			[53776] = { SkillIndex =  171 },
			[53777] = { SkillIndex =  171 },
			[53779] = { SkillIndex =  171 },
			[53780] = { SkillIndex =  171 },
			[53781] = { SkillIndex =  171 },
			[53782] = { SkillIndex =  171 },
			[53783] = { SkillIndex =  171 },
			[53784] = { SkillIndex =  171 },
			[53812] = { SkillIndex =  171 },
			[53836] = { SkillIndex =  171 },
			[53837] = { SkillIndex =  171 },
			[53838] = { SkillIndex =  171 },
			[53839] = { SkillIndex =  171 },
			[53840] = { SkillIndex =  171 },
			[53841] = { SkillIndex =  171 },
			[53842] = { SkillIndex =  171 },
			[53847] = { SkillIndex =  171 },
			[53848] = { SkillIndex =  171 },
			[53895] = { SkillIndex =  171 },
			[53898] = { SkillIndex =  171 },
			[53899] = { SkillIndex =  171 },
			[53900] = { SkillIndex =  171 },
			[53901] = { SkillIndex =  171 },
			[53902] = { SkillIndex =  171 },
			[53903] = { SkillIndex =  171 },
			[53904] = { SkillIndex =  171 },
			[53905] = { SkillIndex =  171 },
			[53936] = { RecipeItemEntry =  44564, SkillIndex =  171 },
			[53937] = { RecipeItemEntry =  44566, SkillIndex =  171 },
			[53938] = { RecipeItemEntry =  44568, SkillIndex =  171 },
			[53939] = { RecipeItemEntry =  44565, SkillIndex =  171 },
			[53942] = { RecipeItemEntry =  44567, SkillIndex =  171 },
			[54020] = { SkillIndex =  171 },
			[54213] = { SkillIndex =  171 },
			[54218] = { SkillIndex =  171 },
			[54220] = { SkillIndex =  171 },
			[54221] = { SkillIndex =  171 },
			[54222] = { SkillIndex =  171 },
			[56519] = { SkillIndex =  171 },
			[57425] = { SkillIndex =  171 },
			[57427] = { SkillIndex =  171 },
			[58868] = { SkillIndex =  171 },
			[58871] = { SkillIndex =  171 },
			[60350] = { SkillIndex =  171 },
			[60354] = { SkillIndex =  171 },
			[60355] = { SkillIndex =  171 },
			[60356] = { SkillIndex =  171 },
			[60357] = { SkillIndex =  171 },
			[60365] = { SkillIndex =  171 },
			[60366] = { SkillIndex =  171 },
			[60367] = { SkillIndex =  171 },
			[60396] = { SkillIndex =  171 },
			[60403] = { SkillIndex =  171 },
			[60405] = { SkillIndex =  171 },
			[62213] = { SkillIndex =  171 },
			[62409] = { SkillIndex =  171 },
			[62410] = { SkillIndex =  171 },
			[63732] = { SkillIndex =  171 },
			[66658] = { SkillIndex =  171 },
			[66659] = { SkillIndex =  171 },
			[66660] = { SkillIndex =  171 },
			[66662] = { SkillIndex =  171 },
			[66663] = { SkillIndex =  171 },
			[66664] = { SkillIndex =  171 },
			[67025] = { RecipeItemEntry =  47507, SkillIndex =  171 },
			[966444] = { RecipeItemEntry =  100623, SkillIndex =  171 },
			[968403] = { RecipeItemEntry =  967477, SkillIndex =  171 },
			[968404] = { RecipeItemEntry =  967478, SkillIndex =  171 },
			[968406] = { RecipeItemEntry =  967480, SkillIndex =  171 },
			[968407] = { RecipeItemEntry =  967481, SkillIndex =  171 },
			[968409] = { RecipeItemEntry =  967483, SkillIndex =  171 },
			[968410] = { RecipeItemEntry =  967484, SkillIndex =  171 },
			[968412] = { RecipeItemEntry =  967486, SkillIndex =  171 },
			[968413] = { RecipeItemEntry =  967487, SkillIndex =  171 },
			[968415] = { RecipeItemEntry =  967489, SkillIndex =  171 },
			[968416] = { RecipeItemEntry =  967490, SkillIndex =  171 },
			[968418] = { RecipeItemEntry =  967492, SkillIndex =  171 },
			[968419] = { RecipeItemEntry =  967493, SkillIndex =  171 },
			[968421] = { RecipeItemEntry =  967495, SkillIndex =  171 },
			[968422] = { RecipeItemEntry =  967496, SkillIndex =  171 },
			[968424] = { RecipeItemEntry =  967498, SkillIndex =  171 },
			[968425] = { RecipeItemEntry =  967499, SkillIndex =  171 },
			[968427] = { RecipeItemEntry =  967501, SkillIndex =  171 },
			[968428] = { RecipeItemEntry =  967502, SkillIndex =  171 },
			[968430] = { RecipeItemEntry =  967504, SkillIndex =  171 },
			[968431] = { RecipeItemEntry =  967505, SkillIndex =  171 },
			[968433] = { RecipeItemEntry =  967507, SkillIndex =  171 },
			[968434] = { RecipeItemEntry =  967508, SkillIndex =  171 },
			[979333] = { RecipeItemEntry =  1203218, SkillIndex =  171 },
			[979334] = { RecipeItemEntry =  1203219, SkillIndex =  171 },
			[979335] = { RecipeItemEntry =  1203220, SkillIndex =  171 },
			[979336] = { RecipeItemEntry =  1203221, SkillIndex =  171 },
			[979362] = { RecipeItemEntry =  1203362, SkillIndex =  171 },
			[979363] = { RecipeItemEntry =  1203363, SkillIndex =  171 },
			[979364] = { RecipeItemEntry =  1203364, SkillIndex =  171 },
			[979365] = { RecipeItemEntry =  1203365, SkillIndex =  171 },
			[979366] = { RecipeItemEntry =  1203366, SkillIndex =  171 },
			[979367] = { RecipeItemEntry =  1203367, SkillIndex =  171 },
			[979368] = { RecipeItemEntry =  1203368, SkillIndex =  171 },
			[979369] = { RecipeItemEntry =  1203369, SkillIndex =  171 },
			[979370] = { RecipeItemEntry =  1203370, SkillIndex =  171 },
			[979371] = { RecipeItemEntry =  1203371, SkillIndex =  171 },
			[979372] = { RecipeItemEntry =  1203372, SkillIndex =  171 },
			[979373] = { RecipeItemEntry =  1203373, SkillIndex =  171 },
			[979374] = { RecipeItemEntry =  1203374, SkillIndex =  171 },
			[979375] = { RecipeItemEntry =  1203375, SkillIndex =  171 },
			[979376] = { RecipeItemEntry =  1203376, SkillIndex =  171 },
			[979377] = { RecipeItemEntry =  1203377, SkillIndex =  171 },
			[979378] = { RecipeItemEntry =  1203378, SkillIndex =  171 },
			[979379] = { RecipeItemEntry =  1203379, SkillIndex =  171 },
			[979380] = { RecipeItemEntry =  1203380, SkillIndex =  171 },
			[979381] = { RecipeItemEntry =  1203381, SkillIndex =  171 },
			[979382] = { RecipeItemEntry =  1203382, SkillIndex =  171 },
			[979383] = { RecipeItemEntry =  1203383, SkillIndex =  171 },
			[979468] = { SkillIndex =  171 },
			[979469] = { SkillIndex =  171 },
			[979470] = { SkillIndex =  171 },
			[979471] = { SkillIndex =  171 },
			[979472] = { SkillIndex =  171 },
			[979473] = { SkillIndex =  171 },
			[979474] = { SkillIndex =  171 },
			[979475] = { SkillIndex =  171 },
			[1979333] = { RecipeItemEntry =  1303525, SkillIndex =  171 },
			[1979334] = { RecipeItemEntry =  1303526, SkillIndex =  171 },
			[1979335] = { RecipeItemEntry =  1303527, SkillIndex =  171 },
			[1979336] = { RecipeItemEntry =  1303528, SkillIndex =  171 },
			[1979468] = { SkillIndex =  171 },
			[1979469] = { SkillIndex =  171 },
			[1979470] = { SkillIndex =  171 },
			[1979471] = { SkillIndex =  171 },
			[1979474] = { SkillIndex =  171 },
			[1979475] = { SkillIndex =  171 },
			[2538] = { SkillIndex =  185 },
			[2539] = { SkillIndex =  185 },
			[2540] = { SkillIndex =  185 },
			[2541] = { SkillIndex =  185 },
			[2542] = { RecipeItemEntry =  2697, SkillIndex =  185 },
			[2543] = { RecipeItemEntry =  728, SkillIndex =  185 },
			[2544] = { SkillIndex =  185 },
			[2545] = { RecipeItemEntry =  2698, SkillIndex =  185 },
			[2546] = { SkillIndex =  185 },
			[2547] = { RecipeItemEntry =  2699, SkillIndex =  185 },
			[2548] = { RecipeItemEntry =  2700, SkillIndex =  185 },
			[2549] = { RecipeItemEntry =  2701, SkillIndex =  185 },
			[2795] = { RecipeItemEntry =  2889, SkillIndex =  185 },
			[3370] = { RecipeItemEntry =  3678, SkillIndex =  185 },
			[3371] = { RecipeItemEntry =  3679, SkillIndex =  185 },
			[3372] = { RecipeItemEntry =  3680, SkillIndex =  185 },
			[3373] = { RecipeItemEntry =  3681, SkillIndex =  185 },
			[3376] = { RecipeItemEntry =  3682, SkillIndex =  185 },
			[3377] = { RecipeItemEntry =  3683, SkillIndex =  185 },
			[3397] = { RecipeItemEntry =  3734, SkillIndex =  185 },
			[3398] = { RecipeItemEntry =  3735, SkillIndex =  185 },
			[3399] = { RecipeItemEntry =  3736, SkillIndex =  185 },
			[3400] = { RecipeItemEntry =  3737, SkillIndex =  185 },
			[4094] = { RecipeItemEntry =  4609, SkillIndex =  185 },
			[6412] = { RecipeItemEntry =  5482, SkillIndex =  185 },
			[6413] = { RecipeItemEntry =  5483, SkillIndex =  185 },
			[6414] = { RecipeItemEntry =  5484, SkillIndex =  185 },
			[6415] = { RecipeItemEntry =  5485, SkillIndex =  185 },
			[6416] = { RecipeItemEntry =  5486, SkillIndex =  185 },
			[6417] = { RecipeItemEntry =  5487, SkillIndex =  185 },
			[6418] = { RecipeItemEntry =  5488, SkillIndex =  185 },
			[6419] = { RecipeItemEntry =  5489, SkillIndex =  185 },
			[6499] = { SkillIndex =  185 },
			[6500] = { SkillIndex =  185 },
			[6501] = { RecipeItemEntry =  5528, SkillIndex =  185 },
			[7213] = { RecipeItemEntry =  6039, SkillIndex =  185 },
			[7751] = { RecipeItemEntry =  6325, SkillIndex =  185 },
			[7752] = { RecipeItemEntry =  6326, SkillIndex =  185 },
			[7753] = { RecipeItemEntry =  6328, SkillIndex =  185 },
			[7754] = { RecipeItemEntry =  6329, SkillIndex =  185 },
			[7755] = { RecipeItemEntry =  6330, SkillIndex =  185 },
			[7827] = { RecipeItemEntry =  6368, SkillIndex =  185 },
			[7828] = { RecipeItemEntry =  6369, SkillIndex =  185 },
			[8238] = { RecipeItemEntry =  6661, SkillIndex =  185 },
			[8604] = { SkillIndex =  185 },
			[8607] = { RecipeItemEntry =  6892, SkillIndex =  185 },
			[9513] = { RecipeItemEntry =  7678, SkillIndex =  185 },
			[13028] = { SkillIndex =  185 },
			[15853] = { RecipeItemEntry =  12227, SkillIndex =  185 },
			[15855] = { RecipeItemEntry =  12228, SkillIndex =  185 },
			[15856] = { RecipeItemEntry =  12229, SkillIndex =  185 },
			[15861] = { RecipeItemEntry =  12231, SkillIndex =  185 },
			[15863] = { RecipeItemEntry =  12232, SkillIndex =  185 },
			[15865] = { RecipeItemEntry =  12233, SkillIndex =  185 },
			[15906] = { RecipeItemEntry =  12239, SkillIndex =  185 },
			[15910] = { RecipeItemEntry =  12240, SkillIndex =  185 },
			[15915] = { RecipeItemEntry =  16111, SkillIndex =  185 },
			[15933] = { RecipeItemEntry =  16110, SkillIndex =  185 },
			[15935] = { RecipeItemEntry =  12226, SkillIndex =  185 },
			[18238] = { RecipeItemEntry =  13939, SkillIndex =  185 },
			[18239] = { RecipeItemEntry =  13940, SkillIndex =  185 },
			[18240] = { RecipeItemEntry =  13942, SkillIndex =  185 },
			[18241] = { RecipeItemEntry =  13941, SkillIndex =  185 },
			[18242] = { RecipeItemEntry =  13943, SkillIndex =  185 },
			[18243] = { RecipeItemEntry =  13945, SkillIndex =  185 },
			[18244] = { RecipeItemEntry =  13946, SkillIndex =  185 },
			[18245] = { RecipeItemEntry =  13947, SkillIndex =  185 },
			[18246] = { RecipeItemEntry =  13948, SkillIndex =  185 },
			[18247] = { RecipeItemEntry =  13949, SkillIndex =  185 },
			[20626] = { RecipeItemEntry =  16767, SkillIndex =  185 },
			[20916] = { RecipeItemEntry =  17062, SkillIndex =  185 },
			[21143] = { RecipeItemEntry =  17200, SkillIndex =  185 },
			[21144] = { RecipeItemEntry =  17201, SkillIndex =  185 },
			[21175] = { SkillIndex =  185 },
			[22480] = { RecipeItemEntry =  18046, SkillIndex =  185 },
			[22761] = { RecipeItemEntry =  18267, SkillIndex =  185 },
			[24418] = { RecipeItemEntry =  20075, SkillIndex =  185 },
			[24801] = { SkillIndex =  185 },
			[25659] = { RecipeItemEntry =  21025, SkillIndex =  185 },
			[25704] = { RecipeItemEntry =  21099, SkillIndex =  185 },
			[25954] = { RecipeItemEntry =  21219, SkillIndex =  185 },
			[28267] = { RecipeItemEntry =  22647, SkillIndex =  185 },
			[33276] = { RecipeItemEntry =  27685, SkillIndex =  185 },
			[33277] = { RecipeItemEntry =  27686, SkillIndex =  185 },
			[33278] = { RecipeItemEntry =  27687, SkillIndex =  185 },
			[33279] = { RecipeItemEntry =  27684, SkillIndex =  185 },
			[33284] = { RecipeItemEntry =  27688, SkillIndex =  185 },
			[33285] = { RecipeItemEntry =  27689, SkillIndex =  185 },
			[33286] = { RecipeItemEntry =  27690, SkillIndex =  185 },
			[33287] = { RecipeItemEntry =  27691, SkillIndex =  185 },
			[33288] = { RecipeItemEntry =  27692, SkillIndex =  185 },
			[33289] = { RecipeItemEntry =  27693, SkillIndex =  185 },
			[33290] = { RecipeItemEntry =  27694, SkillIndex =  185 },
			[33291] = { RecipeItemEntry =  27695, SkillIndex =  185 },
			[33292] = { RecipeItemEntry =  27696, SkillIndex =  185 },
			[33293] = { RecipeItemEntry =  27697, SkillIndex =  185 },
			[33294] = { RecipeItemEntry =  27698, SkillIndex =  185 },
			[33295] = { RecipeItemEntry =  27699, SkillIndex =  185 },
			[33296] = { RecipeItemEntry =  27700, SkillIndex =  185 },
			[36210] = { RecipeItemEntry =  30156, SkillIndex =  185 },
			[37836] = { SkillIndex =  185 },
			[38867] = { RecipeItemEntry =  31675, SkillIndex =  185 },
			[38868] = { RecipeItemEntry =  31674, SkillIndex =  185 },
			[42296] = { SkillIndex =  185 },
			[42302] = { SkillIndex =  185 },
			[42305] = { SkillIndex =  185 },
			[43707] = { RecipeItemEntry =  33870, SkillIndex =  185 },
			[43758] = { RecipeItemEntry =  33871, SkillIndex =  185 },
			[43761] = { RecipeItemEntry =  33869, SkillIndex =  185 },
			[43765] = { RecipeItemEntry =  33873, SkillIndex =  185 },
			[43772] = { RecipeItemEntry =  33875, SkillIndex =  185 },
			[43779] = { RecipeItemEntry =  33925, SkillIndex =  185 },
			[45022] = { RecipeItemEntry =  34413, SkillIndex =  185 },
			[45549] = { SkillIndex =  185 },
			[45550] = { SkillIndex =  185 },
			[45551] = { SkillIndex =  185 },
			[45552] = { SkillIndex =  185 },
			[45553] = { SkillIndex =  185 },
			[45554] = { SkillIndex =  185 },
			[45555] = { RecipeItemEntry =  43018, SkillIndex =  185 },
			[45556] = { RecipeItemEntry =  43019, SkillIndex =  185 },
			[45557] = { RecipeItemEntry =  43020, SkillIndex =  185 },
			[45558] = { RecipeItemEntry =  43021, SkillIndex =  185 },
			[45559] = { RecipeItemEntry =  43022, SkillIndex =  185 },
			[45560] = { SkillIndex =  185 },
			[45561] = { SkillIndex =  185 },
			[45562] = { SkillIndex =  185 },
			[45563] = { SkillIndex =  185 },
			[45564] = { SkillIndex =  185 },
			[45565] = { SkillIndex =  185 },
			[45566] = { SkillIndex =  185 },
			[45567] = { RecipeItemEntry =  43023, SkillIndex =  185 },
			[45568] = { RecipeItemEntry =  43024, SkillIndex =  185 },
			[45569] = { SkillIndex =  185 },
			[45570] = { RecipeItemEntry =  43026, SkillIndex =  185 },
			[45571] = { RecipeItemEntry =  43025, SkillIndex =  185 },
			[45695] = { RecipeItemEntry =  34834, SkillIndex =  185 },
			[46684] = { RecipeItemEntry =  35564, SkillIndex =  185 },
			[46688] = { RecipeItemEntry =  35566, SkillIndex =  185 },
			[53056] = { RecipeItemEntry =  39644, SkillIndex =  185 },
			[57421] = { SkillIndex =  185 },
			[57423] = { RecipeItemEntry =  43017, SkillIndex =  185 },
			[57433] = { RecipeItemEntry =  43027, SkillIndex =  185 },
			[57434] = { RecipeItemEntry =  43028, SkillIndex =  185 },
			[57435] = { RecipeItemEntry =  43029, SkillIndex =  185 },
			[57436] = { RecipeItemEntry =  43030, SkillIndex =  185 },
			[57437] = { RecipeItemEntry =  43031, SkillIndex =  185 },
			[57438] = { RecipeItemEntry =  43032, SkillIndex =  185 },
			[57439] = { RecipeItemEntry =  43033, SkillIndex =  185 },
			[57440] = { RecipeItemEntry =  43034, SkillIndex =  185 },
			[57441] = { RecipeItemEntry =  43035, SkillIndex =  185 },
			[57442] = { RecipeItemEntry =  43036, SkillIndex =  185 },
			[57443] = { RecipeItemEntry =  43037, SkillIndex =  185 },
			[58065] = { SkillIndex =  185 },
			[58512] = { RecipeItemEntry =  43507, SkillIndex =  185 },
			[58521] = { RecipeItemEntry =  43508, SkillIndex =  185 },
			[58523] = { RecipeItemEntry =  43509, SkillIndex =  185 },
			[58525] = { RecipeItemEntry =  43510, SkillIndex =  185 },
			[58527] = { RecipeItemEntry =  43505, SkillIndex =  185 },
			[58528] = { RecipeItemEntry =  43506, SkillIndex =  185 },
			[62044] = { RecipeItemEntry =  44862, SkillIndex =  185 },
			[62045] = { RecipeItemEntry =  44861, SkillIndex =  185 },
			[62049] = { RecipeItemEntry =  44858, SkillIndex =  185 },
			[62050] = { RecipeItemEntry =  44860, SkillIndex =  185 },
			[62051] = { RecipeItemEntry =  44859, SkillIndex =  185 },
			[62350] = { RecipeItemEntry =  44954, SkillIndex =  185 },
			[64054] = { SkillIndex =  185 },
			[64358] = { SkillIndex =  185 },
			[65454] = { RecipeItemEntry =  46710, SkillIndex =  185 },
			[66034] = { RecipeItemEntry =  46806, SkillIndex =  185 },
			[66035] = { RecipeItemEntry =  46805, SkillIndex =  185 },
			[66036] = { RecipeItemEntry =  46804, SkillIndex =  185 },
			[66037] = { RecipeItemEntry =  46807, SkillIndex =  185 },
			[66038] = { RecipeItemEntry =  46803, SkillIndex =  185 },
			[418243] = { SkillIndex =  185 },
			[966398] = { RecipeItemEntry =  100581, SkillIndex =  185 },
			[966425] = { RecipeItemEntry =  100610, SkillIndex =  185 },
			[966426] = { RecipeItemEntry =  100611, SkillIndex =  185 },
			[966427] = { RecipeItemEntry =  100612, SkillIndex =  185 },
			[966428] = { RecipeItemEntry =  100613, SkillIndex =  185 },
			[966429] = { RecipeItemEntry =  100614, SkillIndex =  185 },
			[966430] = { RecipeItemEntry =  100615, SkillIndex =  185 },
			[966431] = { RecipeItemEntry =  100616, SkillIndex =  185 },
			[966432] = { RecipeItemEntry =  100617, SkillIndex =  185 },
			[966433] = { RecipeItemEntry =  100618, SkillIndex =  185 },
			[966434] = { RecipeItemEntry =  100619, SkillIndex =  185 },
			[966435] = { RecipeItemEntry =  100620, SkillIndex =  185 },
			[966436] = { RecipeItemEntry =  100621, SkillIndex =  185 },
			[966455] = { RecipeItemEntry =  100627, SkillIndex =  185 },
			[968280] = { RecipeItemEntry =  967321, SkillIndex =  185 },
			[968281] = { RecipeItemEntry =  967322, SkillIndex =  185 },
			[968283] = { RecipeItemEntry =  967324, SkillIndex =  185 },
			[968284] = { RecipeItemEntry =  967325, SkillIndex =  185 },
			[968286] = { RecipeItemEntry =  967327, SkillIndex =  185 },
			[968287] = { RecipeItemEntry =  967328, SkillIndex =  185 },
			[968289] = { RecipeItemEntry =  967330, SkillIndex =  185 },
			[968290] = { RecipeItemEntry =  967331, SkillIndex =  185 },
			[968292] = { RecipeItemEntry =  967333, SkillIndex =  185 },
			[968293] = { RecipeItemEntry =  967334, SkillIndex =  185 },
			[968295] = { RecipeItemEntry =  967336, SkillIndex =  185 },
			[968296] = { RecipeItemEntry =  967337, SkillIndex =  185 },
			[968298] = { RecipeItemEntry =  967339, SkillIndex =  185 },
			[968299] = { RecipeItemEntry =  967340, SkillIndex =  185 },
			[968301] = { RecipeItemEntry =  967342, SkillIndex =  185 },
			[968302] = { RecipeItemEntry =  967343, SkillIndex =  185 },
			[968304] = { RecipeItemEntry =  967345, SkillIndex =  185 },
			[968305] = { RecipeItemEntry =  967346, SkillIndex =  185 },
			[968307] = { RecipeItemEntry =  967348, SkillIndex =  185 },
			[968308] = { RecipeItemEntry =  967349, SkillIndex =  185 },
			[968310] = { RecipeItemEntry =  967351, SkillIndex =  185 },
			[968311] = { RecipeItemEntry =  967352, SkillIndex =  185 },
			[968313] = { RecipeItemEntry =  967354, SkillIndex =  185 },
			[968314] = { RecipeItemEntry =  967355, SkillIndex =  185 },
			[968316] = { RecipeItemEntry =  967357, SkillIndex =  185 },
			[968317] = { RecipeItemEntry =  967358, SkillIndex =  185 },
			[968319] = { RecipeItemEntry =  967360, SkillIndex =  185 },
			[968320] = { RecipeItemEntry =  967361, SkillIndex =  185 },
			[968322] = { RecipeItemEntry =  967363, SkillIndex =  185 },
			[968323] = { RecipeItemEntry =  967364, SkillIndex =  185 },
			[968325] = { RecipeItemEntry =  967366, SkillIndex =  185 },
			[968326] = { RecipeItemEntry =  967367, SkillIndex =  185 },
			[968328] = { RecipeItemEntry =  967369, SkillIndex =  185 },
			[968329] = { RecipeItemEntry =  967370, SkillIndex =  185 },
			[968331] = { RecipeItemEntry =  967372, SkillIndex =  185 },
			[968332] = { RecipeItemEntry =  967373, SkillIndex =  185 },
			[968334] = { RecipeItemEntry =  967375, SkillIndex =  185 },
			[968335] = { RecipeItemEntry =  967376, SkillIndex =  185 },
			[968337] = { RecipeItemEntry =  967378, SkillIndex =  185 },
			[968338] = { RecipeItemEntry =  967379, SkillIndex =  185 },
			[968340] = { RecipeItemEntry =  967381, SkillIndex =  185 },
			[968341] = { RecipeItemEntry =  967382, SkillIndex =  185 },
			[968343] = { RecipeItemEntry =  967384, SkillIndex =  185 },
			[968344] = { RecipeItemEntry =  967385, SkillIndex =  185 },
			[968346] = { RecipeItemEntry =  967387, SkillIndex =  185 },
			[968347] = { RecipeItemEntry =  967388, SkillIndex =  185 },
			[968349] = { RecipeItemEntry =  967390, SkillIndex =  185 },
			[968350] = { RecipeItemEntry =  967391, SkillIndex =  185 },
			[968352] = { RecipeItemEntry =  967393, SkillIndex =  185 },
			[968353] = { RecipeItemEntry =  967394, SkillIndex =  185 },
			[968355] = { RecipeItemEntry =  967396, SkillIndex =  185 },
			[968356] = { RecipeItemEntry =  967397, SkillIndex =  185 },
			[968358] = { RecipeItemEntry =  967399, SkillIndex =  185 },
			[968359] = { RecipeItemEntry =  967400, SkillIndex =  185 },
			[968361] = { RecipeItemEntry =  967402, SkillIndex =  185 },
			[968362] = { RecipeItemEntry =  967403, SkillIndex =  185 },
			[968364] = { RecipeItemEntry =  967405, SkillIndex =  185 },
			[968365] = { RecipeItemEntry =  967406, SkillIndex =  185 },
			[968367] = { RecipeItemEntry =  967408, SkillIndex =  185 },
			[968368] = { RecipeItemEntry =  967409, SkillIndex =  185 },
			[968370] = { RecipeItemEntry =  967411, SkillIndex =  185 },
			[968371] = { RecipeItemEntry =  967412, SkillIndex =  185 },
			[968373] = { RecipeItemEntry =  967414, SkillIndex =  185 },
			[968374] = { RecipeItemEntry =  967415, SkillIndex =  185 },
			[968376] = { RecipeItemEntry =  967417, SkillIndex =  185 },
			[968377] = { RecipeItemEntry =  967418, SkillIndex =  185 },
			[968379] = { RecipeItemEntry =  967420, SkillIndex =  185 },
			[968380] = { RecipeItemEntry =  967421, SkillIndex =  185 },
			[968382] = { RecipeItemEntry =  967423, SkillIndex =  185 },
			[968383] = { RecipeItemEntry =  967424, SkillIndex =  185 },
			[968385] = { RecipeItemEntry =  967426, SkillIndex =  185 },
			[968386] = { RecipeItemEntry =  967427, SkillIndex =  185 },
			[968388] = { RecipeItemEntry =  967429, SkillIndex =  185 },
			[968389] = { RecipeItemEntry =  967430, SkillIndex =  185 },
			[968391] = { RecipeItemEntry =  967432, SkillIndex =  185 },
			[968392] = { RecipeItemEntry =  967433, SkillIndex =  185 },
			[968394] = { RecipeItemEntry =  967435, SkillIndex =  185 },
			[968395] = { RecipeItemEntry =  967436, SkillIndex =  185 },
			[968397] = { RecipeItemEntry =  967438, SkillIndex =  185 },
			[968398] = { RecipeItemEntry =  967439, SkillIndex =  185 },
			[968400] = { RecipeItemEntry =  967441, SkillIndex =  185 },
			[968401] = { RecipeItemEntry =  967442, SkillIndex =  185 },
			[968649] = { RecipeItemEntry =  967700, SkillIndex =  185 },
			[968650] = { RecipeItemEntry =  967701, SkillIndex =  185 },
			[968651] = { RecipeItemEntry =  967702, SkillIndex =  185 },
			[979345] = { RecipeItemEntry =  1203230, SkillIndex =  185 },
			[979346] = { RecipeItemEntry =  1203231, SkillIndex =  185 },
			[979347] = { RecipeItemEntry =  1203232, SkillIndex =  185 },
			[979348] = { RecipeItemEntry =  1203233, SkillIndex =  185 },
			[979355] = { RecipeItemEntry =  1203255, SkillIndex =  185 },
			[979356] = { SkillIndex =  185 },
			[979357] = { RecipeItemEntry =  1203257, SkillIndex =  185 },
			[979384] = { RecipeItemEntry =  1203384, SkillIndex =  185 },
			[979385] = { RecipeItemEntry =  1203385, SkillIndex =  185 },
			[979386] = { RecipeItemEntry =  1203386, SkillIndex =  185 },
			[979387] = { RecipeItemEntry =  1203387, SkillIndex =  185 },
			[979388] = { RecipeItemEntry =  1203388, SkillIndex =  185 },
			[979389] = { RecipeItemEntry =  1203389, SkillIndex =  185 },
			[979390] = { RecipeItemEntry =  1203390, SkillIndex =  185 },
			[979391] = { RecipeItemEntry =  1203391, SkillIndex =  185 },
			[979392] = { RecipeItemEntry =  1203392, SkillIndex =  185 },
			[979393] = { RecipeItemEntry =  1203393, SkillIndex =  185 },
			[979394] = { RecipeItemEntry =  1203394, SkillIndex =  185 },
			[979395] = { RecipeItemEntry =  1203395, SkillIndex =  185 },
			[979396] = { RecipeItemEntry =  1203396, SkillIndex =  185 },
			[979397] = { RecipeItemEntry =  1203397, SkillIndex =  185 },
			[979398] = { RecipeItemEntry =  1203398, SkillIndex =  185 },
			[979399] = { RecipeItemEntry =  1203399, SkillIndex =  185 },
			[979400] = { RecipeItemEntry =  1203400, SkillIndex =  185 },
			[979401] = { RecipeItemEntry =  1203401, SkillIndex =  185 },
			[979402] = { RecipeItemEntry =  1203402, SkillIndex =  185 },
			[979403] = { RecipeItemEntry =  1203403, SkillIndex =  185 },
			[979404] = { RecipeItemEntry =  1203404, SkillIndex =  185 },
			[979405] = { RecipeItemEntry =  1203405, SkillIndex =  185 },
			[979406] = { RecipeItemEntry =  1203406, SkillIndex =  185 },
			[979407] = { RecipeItemEntry =  1203407, SkillIndex =  185 },
			[979408] = { RecipeItemEntry =  1203408, SkillIndex =  185 },
			[979409] = { RecipeItemEntry =  1203409, SkillIndex =  185 },
			[979410] = { RecipeItemEntry =  1203410, SkillIndex =  185 },
			[979412] = { RecipeItemEntry =  1203411, SkillIndex =  185 },
			[979413] = { RecipeItemEntry =  1203412, SkillIndex =  185 },
			[979414] = { RecipeItemEntry =  1203413, SkillIndex =  185 },
			[979415] = { RecipeItemEntry =  1203414, SkillIndex =  185 },
			[979416] = { RecipeItemEntry =  1203415, SkillIndex =  185 },
			[979417] = { RecipeItemEntry =  1203416, SkillIndex =  185 },
			[979418] = { RecipeItemEntry =  1203417, SkillIndex =  185 },
			[979419] = { RecipeItemEntry =  1203418, SkillIndex =  185 },
			[979420] = { RecipeItemEntry =  1203419, SkillIndex =  185 },
			[979421] = { RecipeItemEntry =  1203420, SkillIndex =  185 },
			[979422] = { RecipeItemEntry =  1203421, SkillIndex =  185 },
			[979423] = { RecipeItemEntry =  1203422, SkillIndex =  185 },
			[979424] = { RecipeItemEntry =  1203423, SkillIndex =  185 },
			[979425] = { RecipeItemEntry =  1203424, SkillIndex =  185 },
			[979426] = { RecipeItemEntry =  1203425, SkillIndex =  185 },
			[979427] = { RecipeItemEntry =  1203426, SkillIndex =  185 },
			[979428] = { RecipeItemEntry =  1203427, SkillIndex =  185 },
			[979429] = { RecipeItemEntry =  1203428, SkillIndex =  185 },
			[979430] = { RecipeItemEntry =  1203429, SkillIndex =  185 },
			[979431] = { RecipeItemEntry =  1203430, SkillIndex =  185 },
			[979432] = { RecipeItemEntry =  1203431, SkillIndex =  185 },
			[979433] = { RecipeItemEntry =  1203432, SkillIndex =  185 },
			[979434] = { RecipeItemEntry =  1203433, SkillIndex =  185 },
			[979435] = { RecipeItemEntry =  1203434, SkillIndex =  185 },
			[979436] = { RecipeItemEntry =  1203435, SkillIndex =  185 },
			[979437] = { RecipeItemEntry =  1203436, SkillIndex =  185 },
			[979438] = { RecipeItemEntry =  1203437, SkillIndex =  185 },
			[979439] = { RecipeItemEntry =  1203438, SkillIndex =  185 },
			[979440] = { RecipeItemEntry =  1203439, SkillIndex =  185 },
			[979441] = { RecipeItemEntry =  1203440, SkillIndex =  185 },
			[979442] = { RecipeItemEntry =  1203441, SkillIndex =  185 },
			[979443] = { RecipeItemEntry =  1203442, SkillIndex =  185 },
			[979444] = { RecipeItemEntry =  1203443, SkillIndex =  185 },
			[979445] = { RecipeItemEntry =  1203444, SkillIndex =  185 },
			[979446] = { RecipeItemEntry =  1203445, SkillIndex =  185 },
			[979447] = { RecipeItemEntry =  1203446, SkillIndex =  185 },
			[979448] = { RecipeItemEntry =  1203447, SkillIndex =  185 },
			[979449] = { RecipeItemEntry =  1203448, SkillIndex =  185 },
			[979450] = { RecipeItemEntry =  1203449, SkillIndex =  185 },
			[979451] = { RecipeItemEntry =  1203450, SkillIndex =  185 },
			[979452] = { RecipeItemEntry =  1203451, SkillIndex =  185 },
			[979453] = { RecipeItemEntry =  1203452, SkillIndex =  185 },
			[979454] = { RecipeItemEntry =  1203453, SkillIndex =  185 },
			[979455] = { RecipeItemEntry =  1203454, SkillIndex =  185 },
			[979456] = { RecipeItemEntry =  1203455, SkillIndex =  185 },
			[979457] = { RecipeItemEntry =  1203456, SkillIndex =  185 },
			[979458] = { RecipeItemEntry =  1203457, SkillIndex =  185 },
			[979459] = { RecipeItemEntry =  1203458, SkillIndex =  185 },
			[979460] = { RecipeItemEntry =  1203459, SkillIndex =  185 },
			[979461] = { RecipeItemEntry =  1203460, SkillIndex =  185 },
			[979462] = { RecipeItemEntry =  1203461, SkillIndex =  185 },
			[979463] = { RecipeItemEntry =  1203462, SkillIndex =  185 },
			[979464] = { RecipeItemEntry =  1203463, SkillIndex =  185 },
			[979465] = { RecipeItemEntry =  1203464, SkillIndex =  185 },
			[979466] = { RecipeItemEntry =  1203465, SkillIndex =  185 },
			[979514] = { SkillIndex =  185 },
			[979515] = { SkillIndex =  185 },
			[979516] = { SkillIndex =  185 },
			[979517] = { SkillIndex =  185 },
			[979518] = { SkillIndex =  185 },
			[979519] = { SkillIndex =  185 },
			[979520] = { SkillIndex =  185 },
			[979521] = { SkillIndex =  185 },
			[1979345] = { RecipeItemEntry =  1303537, SkillIndex =  185 },
			[1979346] = { RecipeItemEntry =  1303538, SkillIndex =  185 },
			[1979347] = { RecipeItemEntry =  1303539, SkillIndex =  185 },
			[1979348] = { RecipeItemEntry =  1303540, SkillIndex =  185 },
			[1979514] = { SkillIndex =  185 },
			[1979515] = { SkillIndex =  185 },
			[1979516] = { SkillIndex =  185 },
			[1979517] = { SkillIndex =  185 },
			[1979520] = { SkillIndex =  185 },
			[1979521] = { SkillIndex =  185 },
			[2657] = { SkillIndex =  186 },
			[2658] = { SkillIndex =  186 },
			[2659] = { SkillIndex =  186 },
			[3304] = { SkillIndex =  186 },
			[3307] = { SkillIndex =  186 },
			[3308] = { SkillIndex =  186 },
			[3569] = { SkillIndex =  186 },
			[10097] = { SkillIndex =  186 },
			[10098] = { SkillIndex =  186 },
			[14891] = { SkillIndex =  186 },
			[16153] = { SkillIndex =  186 },
			[22967] = { RecipeItemEntry =  44956, SkillIndex =  186 },
			[29356] = { SkillIndex =  186 },
			[29358] = { SkillIndex =  186 },
			[29359] = { SkillIndex =  186 },
			[29360] = { SkillIndex =  186 },
			[29361] = { SkillIndex =  186 },
			[29686] = { SkillIndex =  186 },
			[35750] = { SkillIndex =  186 },
			[35751] = { SkillIndex =  186 },
			[46353] = { RecipeItemEntry =  35273, SkillIndex =  186 },
			[49252] = { SkillIndex =  186 },
			[49258] = { SkillIndex =  186 },
			[55208] = { SkillIndex =  186 },
			[55211] = { SkillIndex =  186 },
			[70524] = { SkillIndex =  186 },
			[979337] = { RecipeItemEntry =  1203222, SkillIndex =  186 },
			[979338] = { RecipeItemEntry =  1203223, SkillIndex =  186 },
			[979339] = { RecipeItemEntry =  1203224, SkillIndex =  186 },
			[979340] = { RecipeItemEntry =  1203225, SkillIndex =  186 },
			[979476] = { SkillIndex =  186 },
			[979477] = { SkillIndex =  186 },
			[979478] = { SkillIndex =  186 },
			[979479] = { SkillIndex =  186 },
			[979480] = { SkillIndex =  186 },
			[979481] = { SkillIndex =  186 },
			[979482] = { SkillIndex =  186 },
			[979483] = { SkillIndex =  186 },
			[1979476] = { SkillIndex =  186 },
			[1979477] = { SkillIndex =  186 },
			[1979478] = { SkillIndex =  186 },
			[1979479] = { SkillIndex =  186 },
			[1979482] = { SkillIndex =  186 },
			[1979483] = { SkillIndex =  186 },
			[2385] = { SkillIndex =  197 },
			[2386] = { SkillIndex =  197 },
			[2387] = { SkillIndex =  197 },
			[2389] = { RecipeItemEntry =  2598, SkillIndex =  197 },
			[2392] = { SkillIndex =  197 },
			[2393] = { SkillIndex =  197 },
			[2394] = { SkillIndex =  197 },
			[2395] = { SkillIndex =  197 },
			[2396] = { SkillIndex =  197 },
			[2397] = { SkillIndex =  197 },
			[2399] = { SkillIndex =  197 },
			[2401] = { SkillIndex =  197 },
			[2402] = { SkillIndex =  197 },
			[2403] = { RecipeItemEntry =  2601, SkillIndex =  197 },
			[2406] = { SkillIndex =  197 },
			[2963] = { SkillIndex =  197 },
			[2964] = { SkillIndex =  197 },
			[3755] = { SkillIndex =  197 },
			[3757] = { SkillIndex =  197 },
			[3758] = { RecipeItemEntry =  4292, SkillIndex =  197 },
			[3813] = { SkillIndex =  197 },
			[3839] = { SkillIndex =  197 },
			[3840] = { SkillIndex =  197 },
			[3841] = { SkillIndex =  197 },
			[3842] = { SkillIndex =  197 },
			[3843] = { SkillIndex =  197 },
			[3844] = { RecipeItemEntry =  4346, SkillIndex =  197 },
			[3845] = { SkillIndex =  197 },
			[3847] = { RecipeItemEntry =  4345, SkillIndex =  197 },
			[3848] = { SkillIndex =  197 },
			[3849] = { RecipeItemEntry =  4347, SkillIndex =  197 },
			[3850] = { SkillIndex =  197 },
			[3851] = { RecipeItemEntry =  4349, SkillIndex =  197 },
			[3852] = { SkillIndex =  197 },
			[3854] = { RecipeItemEntry =  7114, SkillIndex =  197 },
			[3855] = { SkillIndex =  197 },
			[3856] = { RecipeItemEntry =  4350, SkillIndex =  197 },
			[3857] = { RecipeItemEntry =  14630, SkillIndex =  197 },
			[3858] = { RecipeItemEntry =  4351, SkillIndex =  197 },
			[3859] = { SkillIndex =  197 },
			[3860] = { RecipeItemEntry =  4352, SkillIndex =  197 },
			[3861] = { SkillIndex =  197 },
			[3862] = { RecipeItemEntry =  4355, SkillIndex =  197 },
			[3863] = { RecipeItemEntry =  4353, SkillIndex =  197 },
			[3864] = { RecipeItemEntry =  4356, SkillIndex =  197 },
			[3865] = { SkillIndex =  197 },
			[3866] = { SkillIndex =  197 },
			[3868] = { RecipeItemEntry =  4348, SkillIndex =  197 },
			[3869] = { RecipeItemEntry =  14627, SkillIndex =  197 },
			[3870] = { RecipeItemEntry =  6401, SkillIndex =  197 },
			[3871] = { SkillIndex =  197 },
			[3872] = { RecipeItemEntry =  4354, SkillIndex =  197 },
			[3873] = { RecipeItemEntry =  10728, SkillIndex =  197 },
			[3914] = { SkillIndex =  197 },
			[3915] = { SkillIndex =  197 },
			[6521] = { SkillIndex =  197 },
			[6686] = { RecipeItemEntry =  5771, SkillIndex =  197 },
			[6688] = { RecipeItemEntry =  5772, SkillIndex =  197 },
			[6690] = { SkillIndex =  197 },
			[6692] = { RecipeItemEntry =  5773, SkillIndex =  197 },
			[6693] = { RecipeItemEntry =  5774, SkillIndex =  197 },
			[6695] = { RecipeItemEntry =  5775, SkillIndex =  197 },
			[7623] = { SkillIndex =  197 },
			[7624] = { SkillIndex =  197 },
			[7629] = { RecipeItemEntry =  6271, SkillIndex =  197 },
			[7630] = { RecipeItemEntry =  6270, SkillIndex =  197 },
			[7633] = { RecipeItemEntry =  6272, SkillIndex =  197 },
			[7636] = { SkillIndex =  197 },
			[7639] = { RecipeItemEntry =  6274, SkillIndex =  197 },
			[7643] = { RecipeItemEntry =  6275, SkillIndex =  197 },
			[7892] = { RecipeItemEntry =  6390, SkillIndex =  197 },
			[7893] = { RecipeItemEntry =  6391, SkillIndex =  197 },
			[8465] = { SkillIndex =  197 },
			[8467] = { SkillIndex =  197 },
			[8483] = { SkillIndex =  197 },
			[8489] = { SkillIndex =  197 },
			[8758] = { SkillIndex =  197 },
			[8760] = { SkillIndex =  197 },
			[8762] = { SkillIndex =  197 },
			[8764] = { SkillIndex =  197 },
			[8766] = { SkillIndex =  197 },
			[8770] = { SkillIndex =  197 },
			[8772] = { SkillIndex =  197 },
			[8774] = { SkillIndex =  197 },
			[8776] = { SkillIndex =  197 },
			[8778] = { SkillIndex =  197 },
			[8780] = { RecipeItemEntry =  7092, SkillIndex =  197 },
			[8782] = { RecipeItemEntry =  7091, SkillIndex =  197 },
			[8784] = { RecipeItemEntry =  7090, SkillIndex =  197 },
			[8786] = { RecipeItemEntry =  7089, SkillIndex =  197 },
			[8789] = { RecipeItemEntry =  7087, SkillIndex =  197 },
			[8791] = { SkillIndex =  197 },
			[8793] = { RecipeItemEntry =  7084, SkillIndex =  197 },
			[8795] = { RecipeItemEntry =  7085, SkillIndex =  197 },
			[8797] = { RecipeItemEntry =  7086, SkillIndex =  197 },
			[8799] = { SkillIndex =  197 },
			[8802] = { RecipeItemEntry =  7088, SkillIndex =  197 },
			[8804] = { SkillIndex =  197 },
			[12044] = { SkillIndex =  197 },
			[12045] = { SkillIndex =  197 },
			[12046] = { SkillIndex =  197 },
			[12047] = { RecipeItemEntry =  10316, SkillIndex =  197 },
			[12048] = { SkillIndex =  197 },
			[12049] = { SkillIndex =  197 },
			[12050] = { SkillIndex =  197 },
			[12052] = { SkillIndex =  197 },
			[12053] = { SkillIndex =  197 },
			[12055] = { SkillIndex =  197 },
			[12056] = { RecipeItemEntry =  10300, SkillIndex =  197 },
			[12059] = { RecipeItemEntry =  10301, SkillIndex =  197 },
			[12060] = { RecipeItemEntry =  10302, SkillIndex =  197 },
			[12061] = { SkillIndex =  197 },
			[12062] = { SkillIndex =  197 },
			[12063] = { SkillIndex =  197 },
			[12064] = { RecipeItemEntry =  10311, SkillIndex =  197 },
			[12065] = { SkillIndex =  197 },
			[12066] = { RecipeItemEntry =  10312, SkillIndex =  197 },
			[12067] = { SkillIndex =  197 },
			[12068] = { SkillIndex =  197 },
			[12069] = { SkillIndex =  197 },
			[12070] = { SkillIndex =  197 },
			[12071] = { SkillIndex =  197 },
			[12072] = { SkillIndex =  197 },
			[12073] = { SkillIndex =  197 },
			[12074] = { SkillIndex =  197 },
			[12075] = { RecipeItemEntry =  10314, SkillIndex =  197 },
			[12076] = { SkillIndex =  197 },
			[12077] = { SkillIndex =  197 },
			[12078] = { RecipeItemEntry =  10315, SkillIndex =  197 },
			[12079] = { SkillIndex =  197 },
			[12080] = { RecipeItemEntry =  10317, SkillIndex =  197 },
			[12081] = { RecipeItemEntry =  10318, SkillIndex =  197 },
			[12082] = { SkillIndex =  197 },
			[12083] = { SkillIndex =  197 },
			[12084] = { RecipeItemEntry =  10320, SkillIndex =  197 },
			[12085] = { RecipeItemEntry =  10321, SkillIndex =  197 },
			[12086] = { RecipeItemEntry =  10463, SkillIndex =  197 },
			[12087] = { SkillIndex =  197 },
			[12088] = { SkillIndex =  197 },
			[12089] = { RecipeItemEntry =  10323, SkillIndex =  197 },
			[12090] = { SkillIndex =  197 },
			[12091] = { RecipeItemEntry =  10325, SkillIndex =  197 },
			[12092] = { SkillIndex =  197 },
			[12093] = { RecipeItemEntry =  10326, SkillIndex =  197 },
			[18401] = { SkillIndex =  197 },
			[18402] = { SkillIndex =  197 },
			[18403] = { RecipeItemEntry =  14466, SkillIndex =  197 },
			[18404] = { RecipeItemEntry =  14467, SkillIndex =  197 },
			[18405] = { RecipeItemEntry =  14468, SkillIndex =  197 },
			[18406] = { RecipeItemEntry =  14469, SkillIndex =  197 },
			[18407] = { RecipeItemEntry =  14470, SkillIndex =  197 },
			[18408] = { RecipeItemEntry =  14471, SkillIndex =  197 },
			[18409] = { RecipeItemEntry =  14472, SkillIndex =  197 },
			[18410] = { RecipeItemEntry =  14473, SkillIndex =  197 },
			[18411] = { RecipeItemEntry =  14474, SkillIndex =  197 },
			[18412] = { RecipeItemEntry =  14476, SkillIndex =  197 },
			[18413] = { RecipeItemEntry =  14477, SkillIndex =  197 },
			[18414] = { RecipeItemEntry =  14478, SkillIndex =  197 },
			[18415] = { RecipeItemEntry =  14479, SkillIndex =  197 },
			[18416] = { RecipeItemEntry =  14480, SkillIndex =  197 },
			[18417] = { RecipeItemEntry =  14481, SkillIndex =  197 },
			[18418] = { RecipeItemEntry =  14482, SkillIndex =  197 },
			[18419] = { RecipeItemEntry =  14483, SkillIndex =  197 },
			[18420] = { RecipeItemEntry =  14484, SkillIndex =  197 },
			[18421] = { RecipeItemEntry =  14485, SkillIndex =  197 },
			[18422] = { RecipeItemEntry =  14486, SkillIndex =  197 },
			[18423] = { RecipeItemEntry =  14488, SkillIndex =  197 },
			[18424] = { RecipeItemEntry =  14489, SkillIndex =  197 },
			[18434] = { RecipeItemEntry =  14490, SkillIndex =  197 },
			[18436] = { RecipeItemEntry =  14493, SkillIndex =  197 },
			[18437] = { RecipeItemEntry =  14492, SkillIndex =  197 },
			[18438] = { RecipeItemEntry =  14491, SkillIndex =  197 },
			[18439] = { RecipeItemEntry =  14494, SkillIndex =  197 },
			[18440] = { RecipeItemEntry =  14497, SkillIndex =  197 },
			[18441] = { RecipeItemEntry =  14495, SkillIndex =  197 },
			[18442] = { RecipeItemEntry =  14496, SkillIndex =  197 },
			[18444] = { RecipeItemEntry =  14498, SkillIndex =  197 },
			[18445] = { RecipeItemEntry =  14499, SkillIndex =  197 },
			[18446] = { RecipeItemEntry =  14500, SkillIndex =  197 },
			[18447] = { RecipeItemEntry =  14501, SkillIndex =  197 },
			[18448] = { RecipeItemEntry =  14507, SkillIndex =  197 },
			[18449] = { RecipeItemEntry =  14504, SkillIndex =  197 },
			[18450] = { RecipeItemEntry =  14505, SkillIndex =  197 },
			[18451] = { RecipeItemEntry =  14506, SkillIndex =  197 },
			[18452] = { RecipeItemEntry =  14509, SkillIndex =  197 },
			[18453] = { RecipeItemEntry =  14508, SkillIndex =  197 },
			[18454] = { RecipeItemEntry =  14511, SkillIndex =  197 },
			[18455] = { RecipeItemEntry =  14510, SkillIndex =  197 },
			[18456] = { RecipeItemEntry =  14512, SkillIndex =  197 },
			[18457] = { RecipeItemEntry =  14513, SkillIndex =  197 },
			[18458] = { RecipeItemEntry =  14514, SkillIndex =  197 },
			[18560] = { RecipeItemEntry =  14526, SkillIndex =  197 },
			[19435] = { SkillIndex =  197 },
			[20848] = { RecipeItemEntry =  17017, SkillIndex =  197 },
			[20849] = { RecipeItemEntry =  17018, SkillIndex =  197 },
			[21945] = { RecipeItemEntry =  17724, SkillIndex =  197 },
			[22759] = { RecipeItemEntry =  18265, SkillIndex =  197 },
			[22813] = { SkillIndex =  197 },
			[22866] = { RecipeItemEntry =  18414, SkillIndex =  197 },
			[22867] = { RecipeItemEntry =  18415, SkillIndex =  197 },
			[22868] = { RecipeItemEntry =  18416, SkillIndex =  197 },
			[22869] = { RecipeItemEntry =  18417, SkillIndex =  197 },
			[22870] = { RecipeItemEntry =  18418, SkillIndex =  197 },
			[22902] = { RecipeItemEntry =  18487, SkillIndex =  197 },
			[23662] = { RecipeItemEntry =  19215, SkillIndex =  197 },
			[23663] = { RecipeItemEntry =  19218, SkillIndex =  197 },
			[23664] = { RecipeItemEntry =  19216, SkillIndex =  197 },
			[23665] = { RecipeItemEntry =  19217, SkillIndex =  197 },
			[23666] = { RecipeItemEntry =  19219, SkillIndex =  197 },
			[23667] = { RecipeItemEntry =  19220, SkillIndex =  197 },
			[24091] = { RecipeItemEntry =  19764, SkillIndex =  197 },
			[24092] = { RecipeItemEntry =  19765, SkillIndex =  197 },
			[24093] = { RecipeItemEntry =  19766, SkillIndex =  197 },
			[24901] = { RecipeItemEntry =  20546, SkillIndex =  197 },
			[24902] = { RecipeItemEntry =  20548, SkillIndex =  197 },
			[24903] = { RecipeItemEntry =  20547, SkillIndex =  197 },
			[26085] = { RecipeItemEntry =  21358, SkillIndex =  197 },
			[26086] = { SkillIndex =  197 },
			[26087] = { RecipeItemEntry =  21371, SkillIndex =  197 },
			[26403] = { RecipeItemEntry =  21722, SkillIndex =  197 },
			[26407] = { RecipeItemEntry =  21723, SkillIndex =  197 },
			[26745] = { SkillIndex =  197 },
			[26746] = { SkillIndex =  197 },
			[26747] = { RecipeItemEntry =  21892, SkillIndex =  197 },
			[26749] = { RecipeItemEntry =  21893, SkillIndex =  197 },
			[26750] = { RecipeItemEntry =  21894, SkillIndex =  197 },
			[26751] = { RecipeItemEntry =  21895, SkillIndex =  197 },
			[26752] = { RecipeItemEntry =  21908, SkillIndex =  197 },
			[26753] = { RecipeItemEntry =  21909, SkillIndex =  197 },
			[26754] = { RecipeItemEntry =  21910, SkillIndex =  197 },
			[26755] = { RecipeItemEntry =  21911, SkillIndex =  197 },
			[26756] = { RecipeItemEntry =  21912, SkillIndex =  197 },
			[26757] = { RecipeItemEntry =  21914, SkillIndex =  197 },
			[26758] = { RecipeItemEntry =  21913, SkillIndex =  197 },
			[26759] = { RecipeItemEntry =  21915, SkillIndex =  197 },
			[26760] = { RecipeItemEntry =  21916, SkillIndex =  197 },
			[26761] = { RecipeItemEntry =  21918, SkillIndex =  197 },
			[26762] = { RecipeItemEntry =  21917, SkillIndex =  197 },
			[26763] = { RecipeItemEntry =  21919, SkillIndex =  197 },
			[26764] = { SkillIndex =  197 },
			[26765] = { SkillIndex =  197 },
			[26770] = { SkillIndex =  197 },
			[26771] = { SkillIndex =  197 },
			[26772] = { SkillIndex =  197 },
			[26773] = { RecipeItemEntry =  21896, SkillIndex =  197 },
			[26774] = { RecipeItemEntry =  21897, SkillIndex =  197 },
			[26775] = { RecipeItemEntry =  21898, SkillIndex =  197 },
			[26776] = { RecipeItemEntry =  21899, SkillIndex =  197 },
			[26777] = { RecipeItemEntry =  21900, SkillIndex =  197 },
			[26778] = { RecipeItemEntry =  21901, SkillIndex =  197 },
			[26779] = { RecipeItemEntry =  21902, SkillIndex =  197 },
			[26780] = { RecipeItemEntry =  21903, SkillIndex =  197 },
			[26781] = { RecipeItemEntry =  21904, SkillIndex =  197 },
			[26782] = { RecipeItemEntry =  21905, SkillIndex =  197 },
			[26783] = { RecipeItemEntry =  21906, SkillIndex =  197 },
			[26784] = { RecipeItemEntry =  21907, SkillIndex =  197 },
			[27658] = { RecipeItemEntry =  22307, SkillIndex =  197 },
			[27659] = { RecipeItemEntry =  22308, SkillIndex =  197 },
			[27660] = { RecipeItemEntry =  22309, SkillIndex =  197 },
			[27724] = { RecipeItemEntry =  22310, SkillIndex =  197 },
			[27725] = { RecipeItemEntry =  22312, SkillIndex =  197 },
			[28205] = { SkillIndex =  197 },
			[28207] = { SkillIndex =  197 },
			[28208] = { SkillIndex =  197 },
			[28209] = { SkillIndex =  197 },
			[28210] = { RecipeItemEntry =  22683, SkillIndex =  197 },
			[28480] = { RecipeItemEntry =  22774, SkillIndex =  197 },
			[28481] = { RecipeItemEntry =  22773, SkillIndex =  197 },
			[28482] = { RecipeItemEntry =  22772, SkillIndex =  197 },
			[31373] = { RecipeItemEntry =  24316, SkillIndex =  197 },
			[31430] = { RecipeItemEntry =  24292, SkillIndex =  197 },
			[31431] = { RecipeItemEntry =  24293, SkillIndex =  197 },
			[31432] = { RecipeItemEntry =  24294, SkillIndex =  197 },
			[31433] = { RecipeItemEntry =  24295, SkillIndex =  197 },
			[31434] = { RecipeItemEntry =  24296, SkillIndex =  197 },
			[31435] = { RecipeItemEntry =  24297, SkillIndex =  197 },
			[31437] = { RecipeItemEntry =  24298, SkillIndex =  197 },
			[31438] = { RecipeItemEntry =  24299, SkillIndex =  197 },
			[31440] = { RecipeItemEntry =  24300, SkillIndex =  197 },
			[31441] = { RecipeItemEntry =  24301, SkillIndex =  197 },
			[31442] = { RecipeItemEntry =  24302, SkillIndex =  197 },
			[31443] = { RecipeItemEntry =  24303, SkillIndex =  197 },
			[31444] = { RecipeItemEntry =  24304, SkillIndex =  197 },
			[31448] = { RecipeItemEntry =  24305, SkillIndex =  197 },
			[31449] = { RecipeItemEntry =  24306, SkillIndex =  197 },
			[31450] = { RecipeItemEntry =  24307, SkillIndex =  197 },
			[31451] = { RecipeItemEntry =  24308, SkillIndex =  197 },
			[31452] = { RecipeItemEntry =  24309, SkillIndex =  197 },
			[31453] = { RecipeItemEntry =  24310, SkillIndex =  197 },
			[31454] = { RecipeItemEntry =  24311, SkillIndex =  197 },
			[31455] = { RecipeItemEntry =  24312, SkillIndex =  197 },
			[31456] = { RecipeItemEntry =  24313, SkillIndex =  197 },
			[31459] = { RecipeItemEntry =  24314, SkillIndex =  197 },
			[31460] = { SkillIndex =  197 },
			[31461] = { RecipeItemEntry =  24315, SkillIndex =  197 },
			[36315] = { RecipeItemEntry =  30280, SkillIndex =  197 },
			[36316] = { RecipeItemEntry =  30281, SkillIndex =  197 },
			[36317] = { RecipeItemEntry =  30282, SkillIndex =  197 },
			[36318] = { RecipeItemEntry =  30283, SkillIndex =  197 },
			[36665] = { SkillIndex =  197 },
			[36667] = { SkillIndex =  197 },
			[36668] = { SkillIndex =  197 },
			[36669] = { SkillIndex =  197 },
			[36670] = { SkillIndex =  197 },
			[36672] = { SkillIndex =  197 },
			[36686] = { RecipeItemEntry =  30483, SkillIndex =  197 },
			[37873] = { RecipeItemEntry =  30833, SkillIndex =  197 },
			[37882] = { RecipeItemEntry =  30842, SkillIndex =  197 },
			[37883] = { RecipeItemEntry =  30843, SkillIndex =  197 },
			[37884] = { RecipeItemEntry =  30844, SkillIndex =  197 },
			[40020] = { RecipeItemEntry =  32437, SkillIndex =  197 },
			[40021] = { RecipeItemEntry =  32438, SkillIndex =  197 },
			[40023] = { RecipeItemEntry =  32439, SkillIndex =  197 },
			[40024] = { RecipeItemEntry =  32440, SkillIndex =  197 },
			[40060] = { RecipeItemEntry =  32447, SkillIndex =  197 },
			[41205] = { RecipeItemEntry =  32754, SkillIndex =  197 },
			[41206] = { RecipeItemEntry =  32755, SkillIndex =  197 },
			[41207] = { RecipeItemEntry =  32752, SkillIndex =  197 },
			[41208] = { RecipeItemEntry =  32753, SkillIndex =  197 },
			[44950] = { RecipeItemEntry =  34261, SkillIndex =  197 },
			[44958] = { RecipeItemEntry =  34319, SkillIndex =  197 },
			[46128] = { RecipeItemEntry =  35204, SkillIndex =  197 },
			[46129] = { RecipeItemEntry =  35205, SkillIndex =  197 },
			[46130] = { RecipeItemEntry =  35206, SkillIndex =  197 },
			[46131] = { RecipeItemEntry =  35207, SkillIndex =  197 },
			[49677] = { RecipeItemEntry =  37915, SkillIndex =  197 },
			[50194] = { RecipeItemEntry =  38229, SkillIndex =  197 },
			[50644] = { RecipeItemEntry =  38327, SkillIndex =  197 },
			[50647] = { RecipeItemEntry =  38328, SkillIndex =  197 },
			[55898] = { SkillIndex =  197 },
			[55899] = { SkillIndex =  197 },
			[55900] = { SkillIndex =  197 },
			[55901] = { SkillIndex =  197 },
			[55902] = { SkillIndex =  197 },
			[55903] = { SkillIndex =  197 },
			[55904] = { SkillIndex =  197 },
			[55906] = { SkillIndex =  197 },
			[55907] = { SkillIndex =  197 },
			[55908] = { SkillIndex =  197 },
			[55910] = { SkillIndex =  197 },
			[55911] = { SkillIndex =  197 },
			[55913] = { SkillIndex =  197 },
			[55914] = { SkillIndex =  197 },
			[55919] = { SkillIndex =  197 },
			[55920] = { SkillIndex =  197 },
			[55921] = { SkillIndex =  197 },
			[55922] = { SkillIndex =  197 },
			[55923] = { SkillIndex =  197 },
			[55924] = { SkillIndex =  197 },
			[55925] = { SkillIndex =  197 },
			[55941] = { SkillIndex =  197 },
			[55943] = { SkillIndex =  197 },
			[55993] = { RecipeItemEntry =  42172, SkillIndex =  197 },
			[55994] = { RecipeItemEntry =  42173, SkillIndex =  197 },
			[55995] = { RecipeItemEntry =  42174, SkillIndex =  197 },
			[55996] = { RecipeItemEntry =  42175, SkillIndex =  197 },
			[55997] = { RecipeItemEntry =  42177, SkillIndex =  197 },
			[55998] = { RecipeItemEntry =  42176, SkillIndex =  197 },
			[55999] = { RecipeItemEntry =  42178, SkillIndex =  197 },
			[56000] = { RecipeItemEntry =  42179, SkillIndex =  197 },
			[56001] = { RecipeItemEntry =  42181, SkillIndex =  197 },
			[56002] = { RecipeItemEntry =  42180, SkillIndex =  197 },
			[56003] = { RecipeItemEntry =  42182, SkillIndex =  197 },
			[56004] = { RecipeItemEntry =  42183, SkillIndex =  197 },
			[56005] = { RecipeItemEntry =  42184, SkillIndex =  197 },
			[56006] = { RecipeItemEntry =  42185, SkillIndex =  197 },
			[56007] = { RecipeItemEntry =  42186, SkillIndex =  197 },
			[56008] = { SkillIndex =  197 },
			[56009] = { RecipeItemEntry =  42187, SkillIndex =  197 },
			[56010] = { SkillIndex =  197 },
			[56011] = { RecipeItemEntry =  42188, SkillIndex =  197 },
			[56014] = { SkillIndex =  197 },
			[56015] = { SkillIndex =  197 },
			[56016] = { RecipeItemEntry =  42189, SkillIndex =  197 },
			[56017] = { RecipeItemEntry =  42190, SkillIndex =  197 },
			[56018] = { RecipeItemEntry =  42191, SkillIndex =  197 },
			[56019] = { RecipeItemEntry =  42192, SkillIndex =  197 },
			[56020] = { RecipeItemEntry =  42193, SkillIndex =  197 },
			[56021] = { RecipeItemEntry =  42194, SkillIndex =  197 },
			[56022] = { RecipeItemEntry =  42195, SkillIndex =  197 },
			[56023] = { RecipeItemEntry =  42196, SkillIndex =  197 },
			[56024] = { RecipeItemEntry =  42197, SkillIndex =  197 },
			[56025] = { RecipeItemEntry =  42198, SkillIndex =  197 },
			[56026] = { RecipeItemEntry =  42199, SkillIndex =  197 },
			[56027] = { RecipeItemEntry =  42200, SkillIndex =  197 },
			[56028] = { RecipeItemEntry =  42201, SkillIndex =  197 },
			[56029] = { RecipeItemEntry =  42202, SkillIndex =  197 },
			[56030] = { SkillIndex =  197 },
			[56031] = { SkillIndex =  197 },
			[56048] = { SkillIndex =  197 },
			[59582] = { SkillIndex =  197 },
			[59583] = { SkillIndex =  197 },
			[59584] = { SkillIndex =  197 },
			[59585] = { SkillIndex =  197 },
			[59586] = { SkillIndex =  197 },
			[59587] = { SkillIndex =  197 },
			[59588] = { SkillIndex =  197 },
			[59589] = { SkillIndex =  197 },
			[60969] = { SkillIndex =  197 },
			[60971] = { SkillIndex =  197 },
			[60990] = { SkillIndex =  197 },
			[60993] = { SkillIndex =  197 },
			[60994] = { SkillIndex =  197 },
			[63203] = { RecipeItemEntry =  45102, SkillIndex =  197 },
			[63204] = { RecipeItemEntry =  45103, SkillIndex =  197 },
			[63205] = { RecipeItemEntry =  45104, SkillIndex =  197 },
			[63206] = { RecipeItemEntry =  45105, SkillIndex =  197 },
			[63742] = { SkillIndex =  197 },
			[63924] = { RecipeItemEntry =  45774, SkillIndex =  197 },
			[64729] = { SkillIndex =  197 },
			[64730] = { SkillIndex =  197 },
			[67064] = { RecipeItemEntry =  47657, SkillIndex =  197 },
			[67065] = { RecipeItemEntry =  47656, SkillIndex =  197 },
			[67066] = { RecipeItemEntry =  47655, SkillIndex =  197 },
			[67079] = { RecipeItemEntry =  47654, SkillIndex =  197 },
			[67144] = { RecipeItemEntry =  47636, SkillIndex =  197 },
			[67145] = { RecipeItemEntry =  47639, SkillIndex =  197 },
			[67146] = { RecipeItemEntry =  47638, SkillIndex =  197 },
			[67147] = { RecipeItemEntry =  47637, SkillIndex =  197 },
			[70550] = { RecipeItemEntry =  49953, SkillIndex =  197 },
			[70551] = { RecipeItemEntry =  49954, SkillIndex =  197 },
			[70552] = { RecipeItemEntry =  49955, SkillIndex =  197 },
			[70553] = { RecipeItemEntry =  49956, SkillIndex =  197 },
			[75597] = { RecipeItemEntry =  54798, SkillIndex =  197 },
			[966445] = { RecipeItemEntry =  100624, SkillIndex =  197 },
			[968061] = { RecipeItemEntry =  967293, SkillIndex =  197 },
			[968062] = { RecipeItemEntry =  967294, SkillIndex =  197 },
			[968064] = { RecipeItemEntry =  967296, SkillIndex =  197 },
			[968065] = { RecipeItemEntry =  967297, SkillIndex =  197 },
			[968067] = { RecipeItemEntry =  967299, SkillIndex =  197 },
			[968068] = { RecipeItemEntry =  967300, SkillIndex =  197 },
			[968070] = { RecipeItemEntry =  967302, SkillIndex =  197 },
			[968071] = { RecipeItemEntry =  967303, SkillIndex =  197 },
			[968073] = { RecipeItemEntry =  967305, SkillIndex =  197 },
			[968074] = { RecipeItemEntry =  967306, SkillIndex =  197 },
			[968076] = { RecipeItemEntry =  967308, SkillIndex =  197 },
			[968077] = { RecipeItemEntry =  967309, SkillIndex =  197 },
			[968496] = { RecipeItemEntry =  967813, SkillIndex =  197 },
			[968497] = { RecipeItemEntry =  967814, SkillIndex =  197 },
			[968498] = { RecipeItemEntry =  967815, SkillIndex =  197 },
			[968499] = { RecipeItemEntry =  967816, SkillIndex =  197 },
			[968500] = { RecipeItemEntry =  967817, SkillIndex =  197 },
			[968501] = { RecipeItemEntry =  967818, SkillIndex =  197 },
			[968502] = { RecipeItemEntry =  967819, SkillIndex =  197 },
			[968503] = { RecipeItemEntry =  967820, SkillIndex =  197 },
			[968504] = { RecipeItemEntry =  967821, SkillIndex =  197 },
			[968505] = { RecipeItemEntry =  967822, SkillIndex =  197 },
			[968506] = { RecipeItemEntry =  967823, SkillIndex =  197 },
			[968507] = { RecipeItemEntry =  967824, SkillIndex =  197 },
			[979325] = { RecipeItemEntry =  1203210, SkillIndex =  197 },
			[979326] = { RecipeItemEntry =  1203211, SkillIndex =  197 },
			[979327] = { RecipeItemEntry =  1203212, SkillIndex =  197 },
			[979328] = { RecipeItemEntry =  1203213, SkillIndex =  197 },
			[979498] = { SkillIndex =  197 },
			[979499] = { SkillIndex =  197 },
			[979508] = { SkillIndex =  197 },
			[979509] = { SkillIndex =  197 },
			[979510] = { SkillIndex =  197 },
			[979511] = { SkillIndex =  197 },
			[979512] = { SkillIndex =  197 },
			[979513] = { SkillIndex =  197 },
			[979562] = { RecipeItemEntry =  1204113, SkillIndex =  197 },
			[979563] = { RecipeItemEntry =  1204114, SkillIndex =  197 },
			[979564] = { RecipeItemEntry =  1204115, SkillIndex =  197 },
			[979565] = { RecipeItemEntry =  1204116, SkillIndex =  197 },
			[979566] = { RecipeItemEntry =  1204117, SkillIndex =  197 },
			[979567] = { RecipeItemEntry =  1204118, SkillIndex =  197 },
			[979568] = { RecipeItemEntry =  1204119, SkillIndex =  197 },
			[979569] = { RecipeItemEntry =  1204120, SkillIndex =  197 },
			[979570] = { RecipeItemEntry =  1204121, SkillIndex =  197 },
			[979571] = { RecipeItemEntry =  1204122, SkillIndex =  197 },
			[979572] = { RecipeItemEntry =  1204123, SkillIndex =  197 },
			[979573] = { RecipeItemEntry =  1204124, SkillIndex =  197 },
			[1979325] = { RecipeItemEntry =  1303517, SkillIndex =  197 },
			[1979326] = { RecipeItemEntry =  1303518, SkillIndex =  197 },
			[1979327] = { RecipeItemEntry =  1303519, SkillIndex =  197 },
			[1979328] = { RecipeItemEntry =  1303520, SkillIndex =  197 },
			[1979498] = { SkillIndex =  197 },
			[1979499] = { SkillIndex =  197 },
			[1979508] = { SkillIndex =  197 },
			[1979509] = { SkillIndex =  197 },
			[1979512] = { SkillIndex =  197 },
			[1979513] = { SkillIndex =  197 },
			[3918] = { SkillIndex =  202 },
			[3919] = { SkillIndex =  202 },
			[3920] = { SkillIndex =  202 },
			[3922] = { SkillIndex =  202 },
			[3923] = { SkillIndex =  202 },
			[3924] = { SkillIndex =  202 },
			[3925] = { SkillIndex =  202 },
			[3926] = { SkillIndex =  202 },
			[3928] = { RecipeItemEntry =  4408, SkillIndex =  202 },
			[3929] = { SkillIndex =  202 },
			[3930] = { SkillIndex =  202 },
			[3931] = { SkillIndex =  202 },
			[3932] = { SkillIndex =  202 },
			[3933] = { RecipeItemEntry =  4409, SkillIndex =  202 },
			[3934] = { SkillIndex =  202 },
			[3936] = { SkillIndex =  202 },
			[3937] = { SkillIndex =  202 },
			[3938] = { SkillIndex =  202 },
			[3939] = { RecipeItemEntry =  13309, SkillIndex =  202 },
			[3940] = { RecipeItemEntry =  4410, SkillIndex =  202 },
			[3941] = { SkillIndex =  202 },
			[3942] = { SkillIndex =  202 },
			[3944] = { RecipeItemEntry =  4411, SkillIndex =  202 },
			[3945] = { SkillIndex =  202 },
			[3946] = { SkillIndex =  202 },
			[3947] = { SkillIndex =  202 },
			[3949] = { SkillIndex =  202 },
			[3950] = { SkillIndex =  202 },
			[3952] = { RecipeItemEntry =  14639, SkillIndex =  202 },
			[3953] = { SkillIndex =  202 },
			[3954] = { RecipeItemEntry =  4412, SkillIndex =  202 },
			[3955] = { SkillIndex =  202 },
			[3956] = { SkillIndex =  202 },
			[3957] = { RecipeItemEntry =  13308, SkillIndex =  202 },
			[3958] = { SkillIndex =  202 },
			[3959] = { RecipeItemEntry =  4413, SkillIndex =  202 },
			[3960] = { RecipeItemEntry =  4414, SkillIndex =  202 },
			[3961] = { SkillIndex =  202 },
			[3962] = { SkillIndex =  202 },
			[3963] = { SkillIndex =  202 },
			[3965] = { SkillIndex =  202 },
			[3966] = { RecipeItemEntry =  4415, SkillIndex =  202 },
			[3967] = { SkillIndex =  202 },
			[3968] = { RecipeItemEntry =  4416, SkillIndex =  202 },
			[3969] = { RecipeItemEntry =  13311, SkillIndex =  202 },
			[3971] = { RecipeItemEntry =  7742, SkillIndex =  202 },
			[3972] = { RecipeItemEntry =  4417, SkillIndex =  202 },
			[3973] = { SkillIndex =  202 },
			[3977] = { SkillIndex =  202 },
			[3978] = { SkillIndex =  202 },
			[3979] = { RecipeItemEntry =  13310, SkillIndex =  202 },
			[6458] = { SkillIndex =  202 },
			[7430] = { SkillIndex =  202 },
			[8243] = { RecipeItemEntry =  6672, SkillIndex =  202 },
			[8334] = { SkillIndex =  202 },
			[8339] = { RecipeItemEntry =  6716, SkillIndex =  202 },
			[8895] = { SkillIndex =  202 },
			[9269] = { RecipeItemEntry =  7560, SkillIndex =  202 },
			[9271] = { SkillIndex =  202 },
			[9273] = { RecipeItemEntry =  7561, SkillIndex =  202 },
			[12584] = { SkillIndex =  202 },
			[12585] = { SkillIndex =  202 },
			[12586] = { SkillIndex =  202 },
			[12587] = { RecipeItemEntry =  10601, SkillIndex =  202 },
			[12589] = { SkillIndex =  202 },
			[12590] = { SkillIndex =  202 },
			[12591] = { SkillIndex =  202 },
			[12594] = { SkillIndex =  202 },
			[12595] = { SkillIndex =  202 },
			[12596] = { SkillIndex =  202 },
			[12597] = { RecipeItemEntry =  10602, SkillIndex =  202 },
			[12599] = { SkillIndex =  202 },
			[12603] = { SkillIndex =  202 },
			[12607] = { RecipeItemEntry =  10603, SkillIndex =  202 },
			[12614] = { RecipeItemEntry =  10604, SkillIndex =  202 },
			[12615] = { RecipeItemEntry =  10605, SkillIndex =  202 },
			[12616] = { RecipeItemEntry =  10606, SkillIndex =  202 },
			[12617] = { RecipeItemEntry =  10607, SkillIndex =  202 },
			[12618] = { SkillIndex =  202 },
			[12619] = { SkillIndex =  202 },
			[12620] = { RecipeItemEntry =  10608, SkillIndex =  202 },
			[12621] = { SkillIndex =  202 },
			[12622] = { SkillIndex =  202 },
			[12624] = { RecipeItemEntry =  10609, SkillIndex =  202 },
			[12715] = { SkillIndex =  202 },
			[12716] = { SkillIndex =  202 },
			[12717] = { SkillIndex =  202 },
			[12718] = { SkillIndex =  202 },
			[12720] = { SkillIndex =  202 },
			[12722] = { SkillIndex =  202 },
			[12754] = { SkillIndex =  202 },
			[12755] = { SkillIndex =  202 },
			[12758] = { SkillIndex =  202 },
			[12759] = { SkillIndex =  202 },
			[12760] = { SkillIndex =  202 },
			[12895] = { SkillIndex =  202 },
			[12897] = { SkillIndex =  202 },
			[12899] = { SkillIndex =  202 },
			[12900] = { SkillIndex =  202 },
			[12902] = { SkillIndex =  202 },
			[12903] = { SkillIndex =  202 },
			[12904] = { SkillIndex =  202 },
			[12905] = { SkillIndex =  202 },
			[12906] = { SkillIndex =  202 },
			[12907] = { SkillIndex =  202 },
			[12908] = { SkillIndex =  202 },
			[13240] = { SkillIndex =  202 },
			[15255] = { SkillIndex =  202 },
			[15628] = { RecipeItemEntry =  11828, SkillIndex =  202 },
			[15633] = { RecipeItemEntry =  11827, SkillIndex =  202 },
			[19567] = { SkillIndex =  202 },
			[19788] = { SkillIndex =  202 },
			[19790] = { RecipeItemEntry =  16041, SkillIndex =  202 },
			[19791] = { RecipeItemEntry =  16042, SkillIndex =  202 },
			[19792] = { RecipeItemEntry =  16043, SkillIndex =  202 },
			[19793] = { RecipeItemEntry =  16044, SkillIndex =  202 },
			[19794] = { RecipeItemEntry =  16045, SkillIndex =  202 },
			[19795] = { RecipeItemEntry =  16047, SkillIndex =  202 },
			[19796] = { RecipeItemEntry =  16048, SkillIndex =  202 },
			[19799] = { RecipeItemEntry =  16049, SkillIndex =  202 },
			[19800] = { RecipeItemEntry =  16051, SkillIndex =  202 },
			[19814] = { RecipeItemEntry =  16046, SkillIndex =  202 },
			[19815] = { RecipeItemEntry =  16050, SkillIndex =  202 },
			[19819] = { RecipeItemEntry =  16052, SkillIndex =  202 },
			[19825] = { RecipeItemEntry =  16053, SkillIndex =  202 },
			[19830] = { RecipeItemEntry =  16054, SkillIndex =  202 },
			[19831] = { RecipeItemEntry =  16055, SkillIndex =  202 },
			[19833] = { RecipeItemEntry =  16056, SkillIndex =  202 },
			[21940] = { RecipeItemEntry =  17720, SkillIndex =  202 },
			[22704] = { SkillIndex =  202 },
			[22793] = { RecipeItemEntry =  18290, SkillIndex =  202 },
			[22795] = { RecipeItemEntry =  18292, SkillIndex =  202 },
			[22797] = { RecipeItemEntry =  18291, SkillIndex =  202 },
			[23066] = { RecipeItemEntry =  18647, SkillIndex =  202 },
			[23067] = { RecipeItemEntry =  18649, SkillIndex =  202 },
			[23068] = { RecipeItemEntry =  18648, SkillIndex =  202 },
			[23069] = { RecipeItemEntry =  18650, SkillIndex =  202 },
			[23070] = { SkillIndex =  202 },
			[23071] = { RecipeItemEntry =  18651, SkillIndex =  202 },
			[23077] = { RecipeItemEntry =  18652, SkillIndex =  202 },
			[23078] = { RecipeItemEntry =  18653, SkillIndex =  202 },
			[23079] = { RecipeItemEntry =  18655, SkillIndex =  202 },
			[23080] = { RecipeItemEntry =  18656, SkillIndex =  202 },
			[23081] = { RecipeItemEntry =  18657, SkillIndex =  202 },
			[23082] = { RecipeItemEntry =  18658, SkillIndex =  202 },
			[23096] = { RecipeItemEntry =  18654, SkillIndex =  202 },
			[23129] = { RecipeItemEntry =  18661, SkillIndex =  202 },
			[23486] = { SkillIndex =  202 },
			[23489] = { SkillIndex =  202 },
			[23507] = { RecipeItemEntry =  19027, SkillIndex =  202 },
			[24356] = { RecipeItemEntry =  20000, SkillIndex =  202 },
			[24357] = { RecipeItemEntry =  20001, SkillIndex =  202 },
			[26011] = { SkillIndex =  202 },
			[26416] = { RecipeItemEntry =  21724, SkillIndex =  202 },
			[26417] = { RecipeItemEntry =  21725, SkillIndex =  202 },
			[26418] = { RecipeItemEntry =  21726, SkillIndex =  202 },
			[26420] = { RecipeItemEntry =  21727, SkillIndex =  202 },
			[26421] = { RecipeItemEntry =  21728, SkillIndex =  202 },
			[26422] = { RecipeItemEntry =  21729, SkillIndex =  202 },
			[26423] = { RecipeItemEntry =  21730, SkillIndex =  202 },
			[26424] = { RecipeItemEntry =  21731, SkillIndex =  202 },
			[26425] = { RecipeItemEntry =  21732, SkillIndex =  202 },
			[26426] = { RecipeItemEntry =  21733, SkillIndex =  202 },
			[26427] = { RecipeItemEntry =  21734, SkillIndex =  202 },
			[26428] = { RecipeItemEntry =  21735, SkillIndex =  202 },
			[26442] = { RecipeItemEntry =  21738, SkillIndex =  202 },
			[26443] = { RecipeItemEntry =  21737, SkillIndex =  202 },
			[28327] = { RecipeItemEntry =  22729, SkillIndex =  202 },
			[30303] = { SkillIndex =  202 },
			[30304] = { SkillIndex =  202 },
			[30305] = { SkillIndex =  202 },
			[30306] = { SkillIndex =  202 },
			[30307] = { SkillIndex =  202 },
			[30308] = { SkillIndex =  202 },
			[30309] = { SkillIndex =  202 },
			[30310] = { SkillIndex =  202 },
			[30311] = { SkillIndex =  202 },
			[30312] = { SkillIndex =  202 },
			[30313] = { RecipeItemEntry =  23799, SkillIndex =  202 },
			[30314] = { RecipeItemEntry =  23800, SkillIndex =  202 },
			[30315] = { RecipeItemEntry =  23802, SkillIndex =  202 },
			[30316] = { RecipeItemEntry =  23803, SkillIndex =  202 },
			[30317] = { RecipeItemEntry =  23804, SkillIndex =  202 },
			[30318] = { RecipeItemEntry =  23805, SkillIndex =  202 },
			[30325] = { RecipeItemEntry =  23806, SkillIndex =  202 },
			[30329] = { RecipeItemEntry =  23807, SkillIndex =  202 },
			[30332] = { RecipeItemEntry =  23808, SkillIndex =  202 },
			[30334] = { RecipeItemEntry =  23809, SkillIndex =  202 },
			[30337] = { RecipeItemEntry =  23810, SkillIndex =  202 },
			[30341] = { RecipeItemEntry =  23811, SkillIndex =  202 },
			[30342] = { SkillIndex =  202 },
			[30343] = { SkillIndex =  202 },
			[30344] = { RecipeItemEntry =  23814, SkillIndex =  202 },
			[30346] = { SkillIndex =  202 },
			[30347] = { RecipeItemEntry =  23815, SkillIndex =  202 },
			[30348] = { RecipeItemEntry =  23816, SkillIndex =  202 },
			[30349] = { RecipeItemEntry =  23817, SkillIndex =  202 },
			[30547] = { RecipeItemEntry =  23874, SkillIndex =  202 },
			[30548] = { RecipeItemEntry =  23888, SkillIndex =  202 },
			[30549] = { RecipeItemEntry =  23882, SkillIndex =  202 },
			[30551] = { RecipeItemEntry =  23883, SkillIndex =  202 },
			[30552] = { RecipeItemEntry =  23884, SkillIndex =  202 },
			[30556] = { RecipeItemEntry =  23887, SkillIndex =  202 },
			[30558] = { SkillIndex =  202 },
			[30560] = { SkillIndex =  202 },
			[30561] = { SkillIndex =  202 },
			[30563] = { SkillIndex =  202 },
			[30565] = { SkillIndex =  202 },
			[30566] = { SkillIndex =  202 },
			[30568] = { SkillIndex =  202 },
			[30569] = { SkillIndex =  202 },
			[30570] = { SkillIndex =  202 },
			[30573] = { SkillIndex =  202 },
			[30574] = { SkillIndex =  202 },
			[30575] = { SkillIndex =  202 },
			[32814] = { RecipeItemEntry =  25887, SkillIndex =  202 },
			[36954] = { SkillIndex =  202 },
			[36955] = { SkillIndex =  202 },
			[39895] = { RecipeItemEntry =  32381, SkillIndex =  202 },
			[39971] = { SkillIndex =  202 },
			[39973] = { SkillIndex =  202 },
			[40274] = { SkillIndex =  202 },
			[41307] = { SkillIndex =  202 },
			[41311] = { SkillIndex =  202 },
			[41312] = { SkillIndex =  202 },
			[41314] = { SkillIndex =  202 },
			[41315] = { SkillIndex =  202 },
			[41316] = { SkillIndex =  202 },
			[41317] = { SkillIndex =  202 },
			[41318] = { SkillIndex =  202 },
			[41319] = { SkillIndex =  202 },
			[41320] = { SkillIndex =  202 },
			[41321] = { SkillIndex =  202 },
			[43676] = { RecipeItemEntry =  33804, SkillIndex =  202 },
			[44155] = { SkillIndex =  202 },
			[44157] = { SkillIndex =  202 },
			[44391] = { RecipeItemEntry =  34114, SkillIndex =  202 },
			[46106] = { RecipeItemEntry =  35191, SkillIndex =  202 },
			[46107] = { RecipeItemEntry =  35187, SkillIndex =  202 },
			[46108] = { RecipeItemEntry =  35189, SkillIndex =  202 },
			[46109] = { RecipeItemEntry =  35190, SkillIndex =  202 },
			[46110] = { RecipeItemEntry =  35192, SkillIndex =  202 },
			[46111] = { RecipeItemEntry =  35186, SkillIndex =  202 },
			[46112] = { RecipeItemEntry =  35193, SkillIndex =  202 },
			[46113] = { RecipeItemEntry =  35194, SkillIndex =  202 },
			[46114] = { RecipeItemEntry =  35195, SkillIndex =  202 },
			[46115] = { RecipeItemEntry =  35196, SkillIndex =  202 },
			[46116] = { RecipeItemEntry =  35197, SkillIndex =  202 },
			[46697] = { RecipeItemEntry =  35582, SkillIndex =  202 },
			[53281] = { SkillIndex =  202 },
			[54353] = { SkillIndex =  202 },
			[55252] = { SkillIndex =  202 },
			[56349] = { SkillIndex =  202 },
			[56459] = { SkillIndex =  202 },
			[56460] = { SkillIndex =  202 },
			[56461] = { SkillIndex =  202 },
			[56462] = { SkillIndex =  202 },
			[56463] = { SkillIndex =  202 },
			[56464] = { SkillIndex =  202 },
			[56465] = { SkillIndex =  202 },
			[56466] = { SkillIndex =  202 },
			[56467] = { SkillIndex =  202 },
			[56468] = { SkillIndex =  202 },
			[56469] = { SkillIndex =  202 },
			[56470] = { SkillIndex =  202 },
			[56471] = { SkillIndex =  202 },
			[56472] = { SkillIndex =  202 },
			[56473] = { SkillIndex =  202 },
			[56474] = { SkillIndex =  202 },
			[56475] = { SkillIndex =  202 },
			[56476] = { SkillIndex =  202 },
			[56477] = { SkillIndex =  202 },
			[56478] = { SkillIndex =  202 },
			[56479] = { SkillIndex =  202 },
			[56480] = { SkillIndex =  202 },
			[56481] = { SkillIndex =  202 },
			[56483] = { SkillIndex =  202 },
			[56484] = { SkillIndex =  202 },
			[56486] = { SkillIndex =  202 },
			[56487] = { SkillIndex =  202 },
			[56514] = { SkillIndex =  202 },
			[56574] = { SkillIndex =  202 },
			[60866] = { RecipeItemEntry =  44502, SkillIndex =  202 },
			[60867] = { RecipeItemEntry =  44503, SkillIndex =  202 },
			[60874] = { SkillIndex =  202 },
			[61471] = { SkillIndex =  202 },
			[61481] = { SkillIndex =  202 },
			[61482] = { SkillIndex =  202 },
			[61483] = { SkillIndex =  202 },
			[62271] = { SkillIndex =  202 },
			[63750] = { SkillIndex =  202 },
			[67326] = { SkillIndex =  202 },
			[67790] = { SkillIndex =  202 },
			[67920] = { SkillIndex =  202 },
			[68067] = { RecipeItemEntry =  49050, SkillIndex =  202 },
			[72952] = { RecipeItemEntry =  52022, SkillIndex =  202 },
			[72953] = { RecipeItemEntry =  52023, SkillIndex =  202 },
			[967683] = { RecipeItemEntry =  967689, SkillIndex =  202 },
			[967684] = { RecipeItemEntry =  967690, SkillIndex =  202 },
			[967685] = { RecipeItemEntry =  967691, SkillIndex =  202 },
			[968043] = { RecipeItemEntry =  967275, SkillIndex =  202 },
			[968044] = { RecipeItemEntry =  967276, SkillIndex =  202 },
			[968046] = { RecipeItemEntry =  967278, SkillIndex =  202 },
			[968047] = { RecipeItemEntry =  967279, SkillIndex =  202 },
			[968049] = { RecipeItemEntry =  967281, SkillIndex =  202 },
			[968050] = { RecipeItemEntry =  967282, SkillIndex =  202 },
			[968052] = { RecipeItemEntry =  967284, SkillIndex =  202 },
			[968053] = { RecipeItemEntry =  967285, SkillIndex =  202 },
			[968055] = { RecipeItemEntry =  967287, SkillIndex =  202 },
			[968056] = { RecipeItemEntry =  967288, SkillIndex =  202 },
			[968058] = { RecipeItemEntry =  967290, SkillIndex =  202 },
			[968059] = { RecipeItemEntry =  967291, SkillIndex =  202 },
			[979352] = { RecipeItemEntry =  1203252, SkillIndex =  202 },
			[979353] = { SkillIndex =  202 },
			[979354] = { RecipeItemEntry =  1203254, SkillIndex =  202 },
			[979550] = { RecipeItemEntry =  1204101, SkillIndex =  202 },
			[979551] = { RecipeItemEntry =  1204102, SkillIndex =  202 },
			[979552] = { RecipeItemEntry =  1204103, SkillIndex =  202 },
			[979553] = { RecipeItemEntry =  1204104, SkillIndex =  202 },
			[979554] = { RecipeItemEntry =  1204105, SkillIndex =  202 },
			[979555] = { RecipeItemEntry =  1204106, SkillIndex =  202 },
			[979556] = { RecipeItemEntry =  1204107, SkillIndex =  202 },
			[979557] = { RecipeItemEntry =  1204108, SkillIndex =  202 },
			[979558] = { RecipeItemEntry =  1204109, SkillIndex =  202 },
			[979559] = { RecipeItemEntry =  1204110, SkillIndex =  202 },
			[979560] = { RecipeItemEntry =  1204111, SkillIndex =  202 },
			[979561] = { RecipeItemEntry =  1204112, SkillIndex =  202 },
			[979833] = { SkillIndex =  202 },
			[979834] = { SkillIndex =  202 },
			[979835] = { SkillIndex =  202 },
			[979836] = { SkillIndex =  202 },
			[1979833] = { RecipeItemEntry =  1303541, SkillIndex =  202 },
			[1979834] = { RecipeItemEntry =  1303542, SkillIndex =  202 },
			[1979835] = { RecipeItemEntry =  1303543, SkillIndex =  202 },
			[1979836] = { RecipeItemEntry =  1303544, SkillIndex =  202 },
			[7418] = { SkillIndex =  333 },
			[7420] = { SkillIndex =  333 },
			[7421] = { SkillIndex =  333 },
			[7426] = { SkillIndex =  333 },
			[7428] = { SkillIndex =  333 },
			[7443] = { RecipeItemEntry =  6342, SkillIndex =  333 },
			[7454] = { SkillIndex =  333 },
			[7457] = { SkillIndex =  333 },
			[7745] = { SkillIndex =  333 },
			[7748] = { SkillIndex =  333 },
			[7766] = { RecipeItemEntry =  6344, SkillIndex =  333 },
			[7771] = { SkillIndex =  333 },
			[7776] = { RecipeItemEntry =  6346, SkillIndex =  333 },
			[7779] = { SkillIndex =  333 },
			[7782] = { RecipeItemEntry =  6347, SkillIndex =  333 },
			[7786] = { RecipeItemEntry =  6348, SkillIndex =  333 },
			[7788] = { SkillIndex =  333 },
			[7793] = { RecipeItemEntry =  6349, SkillIndex =  333 },
			[7795] = { SkillIndex =  333 },
			[7857] = { SkillIndex =  333 },
			[7859] = { RecipeItemEntry =  6375, SkillIndex =  333 },
			[7861] = { SkillIndex =  333 },
			[7863] = { SkillIndex =  333 },
			[7867] = { RecipeItemEntry =  6377, SkillIndex =  333 },
			[13378] = { SkillIndex =  333 },
			[13380] = { RecipeItemEntry =  11038, SkillIndex =  333 },
			[13419] = { RecipeItemEntry =  11039, SkillIndex =  333 },
			[13421] = { SkillIndex =  333 },
			[13464] = { RecipeItemEntry =  11081, SkillIndex =  333 },
			[13485] = { SkillIndex =  333 },
			[13501] = { SkillIndex =  333 },
			[13503] = { SkillIndex =  333 },
			[13522] = { RecipeItemEntry =  11098, SkillIndex =  333 },
			[13529] = { SkillIndex =  333 },
			[13536] = { RecipeItemEntry =  11101, SkillIndex =  333 },
			[13538] = { SkillIndex =  333 },
			[13607] = { SkillIndex =  333 },
			[13612] = { RecipeItemEntry =  11150, SkillIndex =  333 },
			[13617] = { RecipeItemEntry =  11151, SkillIndex =  333 },
			[13620] = { RecipeItemEntry =  11152, SkillIndex =  333 },
			[13622] = { SkillIndex =  333 },
			[13626] = { SkillIndex =  333 },
			[13628] = { SkillIndex =  333 },
			[13631] = { SkillIndex =  333 },
			[13635] = { SkillIndex =  333 },
			[13637] = { SkillIndex =  333 },
			[13640] = { SkillIndex =  333 },
			[13642] = { SkillIndex =  333 },
			[13644] = { SkillIndex =  333 },
			[13646] = { RecipeItemEntry =  11163, SkillIndex =  333 },
			[13648] = { SkillIndex =  333 },
			[13653] = { RecipeItemEntry =  11164, SkillIndex =  333 },
			[13655] = { RecipeItemEntry =  11165, SkillIndex =  333 },
			[13657] = { SkillIndex =  333 },
			[13659] = { SkillIndex =  333 },
			[13661] = { SkillIndex =  333 },
			[13663] = { SkillIndex =  333 },
			[13687] = { RecipeItemEntry =  11167, SkillIndex =  333 },
			[13689] = { RecipeItemEntry =  11168, SkillIndex =  333 },
			[13693] = { SkillIndex =  333 },
			[13695] = { SkillIndex =  333 },
			[13698] = { RecipeItemEntry =  11166, SkillIndex =  333 },
			[13700] = { SkillIndex =  333 },
			[13702] = { SkillIndex =  333 },
			[13746] = { SkillIndex =  333 },
			[13794] = { SkillIndex =  333 },
			[13815] = { SkillIndex =  333 },
			[13817] = { RecipeItemEntry =  11202, SkillIndex =  333 },
			[13822] = { SkillIndex =  333 },
			[13836] = { SkillIndex =  333 },
			[13841] = { RecipeItemEntry =  11203, SkillIndex =  333 },
			[13846] = { RecipeItemEntry =  11204, SkillIndex =  333 },
			[13858] = { SkillIndex =  333 },
			[13868] = { RecipeItemEntry =  11205, SkillIndex =  333 },
			[13882] = { RecipeItemEntry =  11206, SkillIndex =  333 },
			[13887] = { SkillIndex =  333 },
			[13890] = { SkillIndex =  333 },
			[13898] = { RecipeItemEntry =  11207, SkillIndex =  333 },
			[13905] = { SkillIndex =  333 },
			[13915] = { RecipeItemEntry =  11208, SkillIndex =  333 },
			[13917] = { SkillIndex =  333 },
			[13931] = { RecipeItemEntry =  11223, SkillIndex =  333 },
			[13933] = { RecipeItemEntry =  11224, SkillIndex =  333 },
			[13935] = { SkillIndex =  333 },
			[13937] = { SkillIndex =  333 },
			[13939] = { SkillIndex =  333 },
			[13941] = { SkillIndex =  333 },
			[13943] = { SkillIndex =  333 },
			[13945] = { RecipeItemEntry =  11225, SkillIndex =  333 },
			[13947] = { RecipeItemEntry =  11226, SkillIndex =  333 },
			[13948] = { SkillIndex =  333 },
			[14293] = { SkillIndex =  333 },
			[14807] = { SkillIndex =  333 },
			[14809] = { SkillIndex =  333 },
			[14810] = { SkillIndex =  333 },
			[15596] = { RecipeItemEntry =  11813, SkillIndex =  333 },
			[17180] = { SkillIndex =  333 },
			[17181] = { SkillIndex =  333 },
			[20008] = { RecipeItemEntry =  16214, SkillIndex =  333 },
			[20009] = { RecipeItemEntry =  16218, SkillIndex =  333 },
			[20010] = { RecipeItemEntry =  16246, SkillIndex =  333 },
			[20011] = { RecipeItemEntry =  16251, SkillIndex =  333 },
			[20012] = { RecipeItemEntry =  16219, SkillIndex =  333 },
			[20013] = { RecipeItemEntry =  16244, SkillIndex =  333 },
			[20014] = { RecipeItemEntry =  16216, SkillIndex =  333 },
			[20015] = { RecipeItemEntry =  16224, SkillIndex =  333 },
			[20016] = { RecipeItemEntry =  16222, SkillIndex =  333 },
			[20017] = { RecipeItemEntry =  16217, SkillIndex =  333 },
			[20020] = { RecipeItemEntry =  16215, SkillIndex =  333 },
			[20023] = { RecipeItemEntry =  16245, SkillIndex =  333 },
			[20024] = { RecipeItemEntry =  16220, SkillIndex =  333 },
			[20025] = { RecipeItemEntry =  16253, SkillIndex =  333 },
			[20026] = { RecipeItemEntry =  16221, SkillIndex =  333 },
			[20028] = { RecipeItemEntry =  16242, SkillIndex =  333 },
			[20029] = { RecipeItemEntry =  16223, SkillIndex =  333 },
			[20030] = { RecipeItemEntry =  16247, SkillIndex =  333 },
			[20031] = { RecipeItemEntry =  16250, SkillIndex =  333 },
			[20032] = { RecipeItemEntry =  16254, SkillIndex =  333 },
			[20033] = { RecipeItemEntry =  16248, SkillIndex =  333 },
			[20034] = { RecipeItemEntry =  16252, SkillIndex =  333 },
			[20035] = { RecipeItemEntry =  16255, SkillIndex =  333 },
			[20036] = { RecipeItemEntry =  16249, SkillIndex =  333 },
			[20051] = { RecipeItemEntry =  16243, SkillIndex =  333 },
			[21931] = { RecipeItemEntry =  17725, SkillIndex =  333 },
			[22749] = { RecipeItemEntry =  18259, SkillIndex =  333 },
			[22750] = { RecipeItemEntry =  18260, SkillIndex =  333 },
			[23799] = { RecipeItemEntry =  19444, SkillIndex =  333 },
			[23800] = { RecipeItemEntry =  19445, SkillIndex =  333 },
			[23801] = { RecipeItemEntry =  19446, SkillIndex =  333 },
			[23802] = { RecipeItemEntry =  19447, SkillIndex =  333 },
			[23803] = { RecipeItemEntry =  19448, SkillIndex =  333 },
			[23804] = { RecipeItemEntry =  19449, SkillIndex =  333 },
			[25072] = { RecipeItemEntry =  20726, SkillIndex =  333 },
			[25073] = { RecipeItemEntry =  20727, SkillIndex =  333 },
			[25074] = { RecipeItemEntry =  20728, SkillIndex =  333 },
			[25078] = { RecipeItemEntry =  20729, SkillIndex =  333 },
			[25079] = { RecipeItemEntry =  20730, SkillIndex =  333 },
			[25080] = { RecipeItemEntry =  20731, SkillIndex =  333 },
			[25081] = { RecipeItemEntry =  20732, SkillIndex =  333 },
			[25082] = { RecipeItemEntry =  20733, SkillIndex =  333 },
			[25083] = { RecipeItemEntry =  20734, SkillIndex =  333 },
			[25084] = { RecipeItemEntry =  20735, SkillIndex =  333 },
			[25086] = { RecipeItemEntry =  20736, SkillIndex =  333 },
			[25124] = { RecipeItemEntry =  20758, SkillIndex =  333 },
			[25125] = { RecipeItemEntry =  20752, SkillIndex =  333 },
			[25126] = { RecipeItemEntry =  20753, SkillIndex =  333 },
			[25127] = { RecipeItemEntry =  20754, SkillIndex =  333 },
			[25128] = { RecipeItemEntry =  20755, SkillIndex =  333 },
			[25129] = { RecipeItemEntry =  20756, SkillIndex =  333 },
			[25130] = { RecipeItemEntry =  20757, SkillIndex =  333 },
			[27837] = { RecipeItemEntry =  22392, SkillIndex =  333 },
			[27899] = { SkillIndex =  333 },
			[27905] = { SkillIndex =  333 },
			[27906] = { RecipeItemEntry =  22530, SkillIndex =  333 },
			[27911] = { RecipeItemEntry =  22531, SkillIndex =  333 },
			[27913] = { RecipeItemEntry =  22532, SkillIndex =  333 },
			[27914] = { RecipeItemEntry =  22533, SkillIndex =  333 },
			[27917] = { RecipeItemEntry =  22534, SkillIndex =  333 },
			[27920] = { RecipeItemEntry =  22535, SkillIndex =  333 },
			[27924] = { RecipeItemEntry =  22536, SkillIndex =  333 },
			[27926] = { RecipeItemEntry =  22537, SkillIndex =  333 },
			[27927] = { RecipeItemEntry =  22538, SkillIndex =  333 },
			[27944] = { SkillIndex =  333 },
			[27945] = { RecipeItemEntry =  22539, SkillIndex =  333 },
			[27946] = { RecipeItemEntry =  22540, SkillIndex =  333 },
			[27947] = { RecipeItemEntry =  22541, SkillIndex =  333 },
			[27948] = { RecipeItemEntry =  22542, SkillIndex =  333 },
			[27950] = { RecipeItemEntry =  22543, SkillIndex =  333 },
			[27951] = { RecipeItemEntry =  22544, SkillIndex =  333 },
			[27954] = { RecipeItemEntry =  22545, SkillIndex =  333 },
			[27957] = { SkillIndex =  333 },
			[27958] = { SkillIndex =  333 },
			[27960] = { RecipeItemEntry =  22547, SkillIndex =  333 },
			[27961] = { SkillIndex =  333 },
			[27962] = { RecipeItemEntry =  22548, SkillIndex =  333 },
			[27967] = { RecipeItemEntry =  22552, SkillIndex =  333 },
			[27968] = { RecipeItemEntry =  22551, SkillIndex =  333 },
			[27971] = { RecipeItemEntry =  22554, SkillIndex =  333 },
			[27972] = { RecipeItemEntry =  22553, SkillIndex =  333 },
			[27975] = { RecipeItemEntry =  22555, SkillIndex =  333 },
			[27977] = { RecipeItemEntry =  22556, SkillIndex =  333 },
			[27981] = { RecipeItemEntry =  22560, SkillIndex =  333 },
			[27982] = { RecipeItemEntry =  22561, SkillIndex =  333 },
			[27984] = { RecipeItemEntry =  22559, SkillIndex =  333 },
			[28003] = { RecipeItemEntry =  22558, SkillIndex =  333 },
			[28004] = { RecipeItemEntry =  22557, SkillIndex =  333 },
			[28016] = { RecipeItemEntry =  22562, SkillIndex =  333 },
			[28019] = { RecipeItemEntry =  22563, SkillIndex =  333 },
			[28021] = { SkillIndex =  333 },
			[28022] = { RecipeItemEntry =  22565, SkillIndex =  333 },
			[28027] = { SkillIndex =  333 },
			[28028] = { SkillIndex =  333 },
			[32664] = { SkillIndex =  333 },
			[32665] = { RecipeItemEntry =  25848, SkillIndex =  333 },
			[32667] = { RecipeItemEntry =  25849, SkillIndex =  333 },
			[33990] = { SkillIndex =  333 },
			[33991] = { SkillIndex =  333 },
			[33992] = { RecipeItemEntry =  28270, SkillIndex =  333 },
			[33993] = { SkillIndex =  333 },
			[33994] = { RecipeItemEntry =  28271, SkillIndex =  333 },
			[33995] = { SkillIndex =  333 },
			[33996] = { SkillIndex =  333 },
			[33997] = { RecipeItemEntry =  28272, SkillIndex =  333 },
			[33999] = { RecipeItemEntry =  28273, SkillIndex =  333 },
			[34001] = { SkillIndex =  333 },
			[34002] = { SkillIndex =  333 },
			[34003] = { RecipeItemEntry =  28274, SkillIndex =  333 },
			[34004] = { SkillIndex =  333 },
			[34005] = { RecipeItemEntry =  28276, SkillIndex =  333 },
			[34006] = { RecipeItemEntry =  28277, SkillIndex =  333 },
			[34007] = { RecipeItemEntry =  28279, SkillIndex =  333 },
			[34008] = { RecipeItemEntry =  28280, SkillIndex =  333 },
			[34009] = { RecipeItemEntry =  28282, SkillIndex =  333 },
			[34010] = { RecipeItemEntry =  28281, SkillIndex =  333 },
			[42613] = { SkillIndex =  333 },
			[42615] = { SkillIndex =  333 },
			[42620] = { RecipeItemEntry =  33165, SkillIndex =  333 },
			[42974] = { RecipeItemEntry =  33307, SkillIndex =  333 },
			[44383] = { SkillIndex =  333 },
			[44483] = { RecipeItemEntry =  37332, SkillIndex =  333 },
			[44484] = { SkillIndex =  333 },
			[44488] = { SkillIndex =  333 },
			[44489] = { SkillIndex =  333 },
			[44492] = { SkillIndex =  333 },
			[44494] = { RecipeItemEntry =  37333, SkillIndex =  333 },
			[44500] = { RecipeItemEntry =  37335, SkillIndex =  333 },
			[44506] = { SkillIndex =  333 },
			[44508] = { SkillIndex =  333 },
			[44509] = { SkillIndex =  333 },
			[44510] = { RecipeItemEntry =  37329, SkillIndex =  333 },
			[44513] = { RecipeItemEntry =  37345, SkillIndex =  333 },
			[44524] = { RecipeItemEntry =  37344, SkillIndex =  333 },
			[44528] = { SkillIndex =  333 },
			[44529] = { SkillIndex =  333 },
			[44555] = { SkillIndex =  333 },
			[44556] = { RecipeItemEntry =  37331, SkillIndex =  333 },
			[44575] = { RecipeItemEntry =  44484, SkillIndex =  333 },
			[44576] = { RecipeItemEntry =  44494, SkillIndex =  333 },
			[44582] = { SkillIndex =  333 },
			[44584] = { SkillIndex =  333 },
			[44588] = { RecipeItemEntry =  37340, SkillIndex =  333 },
			[44589] = { SkillIndex =  333 },
			[44590] = { RecipeItemEntry =  37334, SkillIndex =  333 },
			[44591] = { RecipeItemEntry =  37347, SkillIndex =  333 },
			[44592] = { SkillIndex =  333 },
			[44593] = { RecipeItemEntry =  37326, SkillIndex =  333 },
			[44595] = { RecipeItemEntry =  44473, SkillIndex =  333 },
			[44596] = { RecipeItemEntry =  37330, SkillIndex =  333 },
			[44598] = { RecipeItemEntry =  37346, SkillIndex =  333 },
			[44612] = { SkillIndex =  333 },
			[44616] = { RecipeItemEntry =  37337, SkillIndex =  333 },
			[44621] = { RecipeItemEntry =  37339, SkillIndex =  333 },
			[44623] = { SkillIndex =  333 },
			[44625] = { RecipeItemEntry =  44485, SkillIndex =  333 },
			[44629] = { SkillIndex =  333 },
			[44630] = { RecipeItemEntry =  37338, SkillIndex =  333 },
			[44631] = { RecipeItemEntry =  37349, SkillIndex =  333 },
			[44633] = { RecipeItemEntry =  37343, SkillIndex =  333 },
			[44635] = { SkillIndex =  333 },
			[44636] = { SkillIndex =  333 },
			[44645] = { SkillIndex =  333 },
			[45765] = { RecipeItemEntry =  34872, SkillIndex =  333 },
			[46578] = { RecipeItemEntry =  35498, SkillIndex =  333 },
			[46594] = { RecipeItemEntry =  35500, SkillIndex =  333 },
			[47051] = { RecipeItemEntry =  35756, SkillIndex =  333 },
			[47672] = { RecipeItemEntry =  44471, SkillIndex =  333 },
			[47766] = { RecipeItemEntry =  37336, SkillIndex =  333 },
			[47898] = { RecipeItemEntry =  37348, SkillIndex =  333 },
			[47899] = { RecipeItemEntry =  44488, SkillIndex =  333 },
			[47900] = { SkillIndex =  333 },
			[47901] = { RecipeItemEntry =  44491, SkillIndex =  333 },
			[59619] = { RecipeItemEntry =  44496, SkillIndex =  333 },
			[59621] = { RecipeItemEntry =  44492, SkillIndex =  333 },
			[59625] = { RecipeItemEntry =  44495, SkillIndex =  333 },
			[59636] = { SkillIndex =  333 },
			[60606] = { SkillIndex =  333 },
			[60609] = { SkillIndex =  333 },
			[60616] = { SkillIndex =  333 },
			[60619] = { SkillIndex =  333 },
			[60621] = { SkillIndex =  333 },
			[60623] = { SkillIndex =  333 },
			[60653] = { SkillIndex =  333 },
			[60663] = { SkillIndex =  333 },
			[60668] = { SkillIndex =  333 },
			[60691] = { RecipeItemEntry =  44483, SkillIndex =  333 },
			[60692] = { RecipeItemEntry =  44489, SkillIndex =  333 },
			[60707] = { RecipeItemEntry =  44486, SkillIndex =  333 },
			[60714] = { RecipeItemEntry =  44487, SkillIndex =  333 },
			[60763] = { RecipeItemEntry =  44490, SkillIndex =  333 },
			[60767] = { RecipeItemEntry =  44498, SkillIndex =  333 },
			[62256] = { RecipeItemEntry =  44944, SkillIndex =  333 },
			[62257] = { RecipeItemEntry =  44945, SkillIndex =  333 },
			[62948] = { RecipeItemEntry =  45059, SkillIndex =  333 },
			[62959] = { SkillIndex =  333 },
			[63746] = { SkillIndex =  333 },
			[64441] = { RecipeItemEntry =  46027, SkillIndex =  333 },
			[64579] = { RecipeItemEntry =  46348, SkillIndex =  333 },
			[69412] = { SkillIndex =  333 },
			[71692] = { RecipeItemEntry =  50406, SkillIndex =  333 },
			[225072] = { RecipeItemEntry =  33153, SkillIndex =  333 },
			[225080] = { RecipeItemEntry =  33152, SkillIndex =  333 },
			[225083] = { RecipeItemEntry =  33149, SkillIndex =  333 },
			[225084] = { RecipeItemEntry =  33147, SkillIndex =  333 },
			[225086] = { RecipeItemEntry =  33148, SkillIndex =  333 },
			[351501] = { RecipeItemEntry =  816254, SkillIndex =  333 },
			[351530] = { RecipeItemEntry =  1816254, SkillIndex =  333 },
			[351535] = { RecipeItemEntry =  2033307, SkillIndex =  333 },
			[359012] = { RecipeItemEntry =  816253, SkillIndex =  333 },
			[820034] = { RecipeItemEntry =  816252, SkillIndex =  333 },
			[968677] = { RecipeItemEntry =  967731, SkillIndex =  333 },
			[968678] = { RecipeItemEntry =  967732, SkillIndex =  333 },
			[968680] = { RecipeItemEntry =  967734, SkillIndex =  333 },
			[968681] = { RecipeItemEntry =  967735, SkillIndex =  333 },
			[968683] = { RecipeItemEntry =  967737, SkillIndex =  333 },
			[968684] = { RecipeItemEntry =  967738, SkillIndex =  333 },
			[968686] = { RecipeItemEntry =  967740, SkillIndex =  333 },
			[968687] = { RecipeItemEntry =  967741, SkillIndex =  333 },
			[968689] = { RecipeItemEntry =  967743, SkillIndex =  333 },
			[968690] = { RecipeItemEntry =  967744, SkillIndex =  333 },
			[968692] = { RecipeItemEntry =  967746, SkillIndex =  333 },
			[968693] = { RecipeItemEntry =  967747, SkillIndex =  333 },
			[968695] = { RecipeItemEntry =  967749, SkillIndex =  333 },
			[968696] = { RecipeItemEntry =  967750, SkillIndex =  333 },
			[968698] = { RecipeItemEntry =  967752, SkillIndex =  333 },
			[968699] = { RecipeItemEntry =  967753, SkillIndex =  333 },
			[968701] = { RecipeItemEntry =  967755, SkillIndex =  333 },
			[968702] = { RecipeItemEntry =  967756, SkillIndex =  333 },
			[968770] = { RecipeItemEntry =  967789, SkillIndex =  333 },
			[968771] = { RecipeItemEntry =  967790, SkillIndex =  333 },
			[968779] = { SkillIndex =  333 },
			[968880] = { SkillIndex =  333 },
			[968881] = { SkillIndex =  333 },
			[968882] = { SkillIndex =  333 },
			[968883] = { SkillIndex =  333 },
			[979341] = { RecipeItemEntry =  1203226, SkillIndex =  333 },
			[979342] = { RecipeItemEntry =  1203227, SkillIndex =  333 },
			[979343] = { RecipeItemEntry =  1203228, SkillIndex =  333 },
			[979344] = { RecipeItemEntry =  1203229, SkillIndex =  333 },
			[979492] = { SkillIndex =  333 },
			[979493] = { SkillIndex =  333 },
			[979494] = { SkillIndex =  333 },
			[979495] = { SkillIndex =  333 },
			[979496] = { SkillIndex =  333 },
			[979497] = { SkillIndex =  333 },
			[1968677] = { RecipeItemEntry =  1204145, SkillIndex =  333 },
			[1968678] = { RecipeItemEntry =  1204146, SkillIndex =  333 },
			[1968680] = { RecipeItemEntry =  1204147, SkillIndex =  333 },
			[1968681] = { RecipeItemEntry =  1204148, SkillIndex =  333 },
			[1968683] = { RecipeItemEntry =  1204149, SkillIndex =  333 },
			[1968684] = { RecipeItemEntry =  1204150, SkillIndex =  333 },
			[1968686] = { RecipeItemEntry =  1204151, SkillIndex =  333 },
			[1968687] = { RecipeItemEntry =  1204152, SkillIndex =  333 },
			[1968689] = { RecipeItemEntry =  1204153, SkillIndex =  333 },
			[1968690] = { RecipeItemEntry =  1204154, SkillIndex =  333 },
			[1968692] = { RecipeItemEntry =  1204155, SkillIndex =  333 },
			[1968693] = { RecipeItemEntry =  1204156, SkillIndex =  333 },
			[1968695] = { RecipeItemEntry =  1204157, SkillIndex =  333 },
			[1968696] = { RecipeItemEntry =  1204158, SkillIndex =  333 },
			[1968698] = { RecipeItemEntry =  1204159, SkillIndex =  333 },
			[1968699] = { RecipeItemEntry =  1204160, SkillIndex =  333 },
			[1968701] = { RecipeItemEntry =  1204161, SkillIndex =  333 },
			[1968702] = { RecipeItemEntry =  1204162, SkillIndex =  333 },
			[1968770] = { RecipeItemEntry =  1204163, SkillIndex =  333 },
			[1968771] = { RecipeItemEntry =  1204164, SkillIndex =  333 },
			[1979341] = { RecipeItemEntry =  1303533, SkillIndex =  333 },
			[1979342] = { RecipeItemEntry =  1303534, SkillIndex =  333 },
			[1979343] = { RecipeItemEntry =  1303535, SkillIndex =  333 },
			[1979344] = { RecipeItemEntry =  1303536, SkillIndex =  333 },
			[1979492] = { SkillIndex =  333 },
			[1979493] = { SkillIndex =  333 },
			[1979496] = { SkillIndex =  333 },
			[1979497] = { SkillIndex =  333 },
			[13977861] = { SkillIndex =  732 },
			[13977881] = { SkillIndex =  732 },
			[13977888] = { SkillIndex =  732 },
			[13977889] = { SkillIndex =  732 },
			[13977890] = { SkillIndex =  732 },
			[25255] = { SkillIndex =  755 },
			[25278] = { SkillIndex =  755 },
			[25280] = { SkillIndex =  755 },
			[25283] = { SkillIndex =  755 },
			[25284] = { SkillIndex =  755 },
			[25287] = { SkillIndex =  755 },
			[25305] = { SkillIndex =  755 },
			[25317] = { SkillIndex =  755 },
			[25318] = { SkillIndex =  755 },
			[25320] = { RecipeItemEntry =  20856, SkillIndex =  755 },
			[25321] = { SkillIndex =  755 },
			[25323] = { RecipeItemEntry =  20855, SkillIndex =  755 },
			[25339] = { RecipeItemEntry =  20854, SkillIndex =  755 },
			[25490] = { SkillIndex =  755 },
			[25493] = { SkillIndex =  755 },
			[25498] = { SkillIndex =  755 },
			[25610] = { RecipeItemEntry =  20970, SkillIndex =  755 },
			[25612] = { RecipeItemEntry =  20971, SkillIndex =  755 },
			[25613] = { SkillIndex =  755 },
			[25614] = { SkillIndex =  755 },
			[25615] = { SkillIndex =  755 },
			[25617] = { RecipeItemEntry =  20973, SkillIndex =  755 },
			[25618] = { RecipeItemEntry =  20974, SkillIndex =  755 },
			[25619] = { RecipeItemEntry =  20975, SkillIndex =  755 },
			[25620] = { SkillIndex =  755 },
			[25621] = { SkillIndex =  755 },
			[25622] = { RecipeItemEntry =  20976, SkillIndex =  755 },
			[26872] = { SkillIndex =  755 },
			[26873] = { RecipeItemEntry =  21940, SkillIndex =  755 },
			[26874] = { SkillIndex =  755 },
			[26875] = { RecipeItemEntry =  21941, SkillIndex =  755 },
			[26876] = { SkillIndex =  755 },
			[26878] = { RecipeItemEntry =  21942, SkillIndex =  755 },
			[26880] = { SkillIndex =  755 },
			[26881] = { RecipeItemEntry =  21943, SkillIndex =  755 },
			[26882] = { RecipeItemEntry =  21944, SkillIndex =  755 },
			[26883] = { SkillIndex =  755 },
			[26885] = { SkillIndex =  755 },
			[26887] = { RecipeItemEntry =  21945, SkillIndex =  755 },
			[26896] = { RecipeItemEntry =  21947, SkillIndex =  755 },
			[26897] = { RecipeItemEntry =  21948, SkillIndex =  755 },
			[26900] = { RecipeItemEntry =  21949, SkillIndex =  755 },
			[26902] = { SkillIndex =  755 },
			[26903] = { SkillIndex =  755 },
			[26906] = { RecipeItemEntry =  21952, SkillIndex =  755 },
			[26907] = { SkillIndex =  755 },
			[26908] = { SkillIndex =  755 },
			[26909] = { RecipeItemEntry =  21953, SkillIndex =  755 },
			[26910] = { RecipeItemEntry =  21954, SkillIndex =  755 },
			[26911] = { SkillIndex =  755 },
			[26912] = { RecipeItemEntry =  21955, SkillIndex =  755 },
			[26914] = { RecipeItemEntry =  21956, SkillIndex =  755 },
			[26915] = { RecipeItemEntry =  21957, SkillIndex =  755 },
			[26916] = { SkillIndex =  755 },
			[26918] = { SkillIndex =  755 },
			[26920] = { SkillIndex =  755 },
			[26925] = { SkillIndex =  755 },
			[26926] = { SkillIndex =  755 },
			[26927] = { SkillIndex =  755 },
			[26928] = { SkillIndex =  755 },
			[28903] = { RecipeItemEntry =  23130, SkillIndex =  755 },
			[28905] = { RecipeItemEntry =  23131, SkillIndex =  755 },
			[28906] = { RecipeItemEntry =  23133, SkillIndex =  755 },
			[28907] = { RecipeItemEntry =  23134, SkillIndex =  755 },
			[28910] = { RecipeItemEntry =  23135, SkillIndex =  755 },
			[28912] = { RecipeItemEntry =  23136, SkillIndex =  755 },
			[28914] = { RecipeItemEntry =  23137, SkillIndex =  755 },
			[28915] = { RecipeItemEntry =  23138, SkillIndex =  755 },
			[28916] = { RecipeItemEntry =  23140, SkillIndex =  755 },
			[28917] = { RecipeItemEntry =  23141, SkillIndex =  755 },
			[28918] = { RecipeItemEntry =  23142, SkillIndex =  755 },
			[28924] = { RecipeItemEntry =  23143, SkillIndex =  755 },
			[28925] = { RecipeItemEntry =  23144, SkillIndex =  755 },
			[28927] = { RecipeItemEntry =  23145, SkillIndex =  755 },
			[28933] = { RecipeItemEntry =  23146, SkillIndex =  755 },
			[28936] = { RecipeItemEntry =  23147, SkillIndex =  755 },
			[28938] = { RecipeItemEntry =  23148, SkillIndex =  755 },
			[28944] = { RecipeItemEntry =  23149, SkillIndex =  755 },
			[28947] = { RecipeItemEntry =  23150, SkillIndex =  755 },
			[28948] = { RecipeItemEntry =  23151, SkillIndex =  755 },
			[28950] = { RecipeItemEntry =  23152, SkillIndex =  755 },
			[28953] = { RecipeItemEntry =  23153, SkillIndex =  755 },
			[28955] = { RecipeItemEntry =  23154, SkillIndex =  755 },
			[28957] = { RecipeItemEntry =  23155, SkillIndex =  755 },
			[31048] = { SkillIndex =  755 },
			[31049] = { SkillIndex =  755 },
			[31050] = { SkillIndex =  755 },
			[31051] = { SkillIndex =  755 },
			[31052] = { SkillIndex =  755 },
			[31053] = { RecipeItemEntry =  24158, SkillIndex =  755 },
			[31054] = { RecipeItemEntry =  24159, SkillIndex =  755 },
			[31055] = { RecipeItemEntry =  24160, SkillIndex =  755 },
			[31056] = { RecipeItemEntry =  24161, SkillIndex =  755 },
			[31057] = { RecipeItemEntry =  24162, SkillIndex =  755 },
			[31058] = { RecipeItemEntry =  24163, SkillIndex =  755 },
			[31060] = { RecipeItemEntry =  24164, SkillIndex =  755 },
			[31061] = { RecipeItemEntry =  24165, SkillIndex =  755 },
			[31062] = { RecipeItemEntry =  24174, SkillIndex =  755 },
			[31063] = { RecipeItemEntry =  24175, SkillIndex =  755 },
			[31064] = { RecipeItemEntry =  24176, SkillIndex =  755 },
			[31065] = { RecipeItemEntry =  24177, SkillIndex =  755 },
			[31066] = { RecipeItemEntry =  24178, SkillIndex =  755 },
			[31067] = { RecipeItemEntry =  24166, SkillIndex =  755 },
			[31068] = { RecipeItemEntry =  24167, SkillIndex =  755 },
			[31070] = { RecipeItemEntry =  24168, SkillIndex =  755 },
			[31071] = { RecipeItemEntry =  24169, SkillIndex =  755 },
			[31072] = { RecipeItemEntry =  24170, SkillIndex =  755 },
			[31076] = { RecipeItemEntry =  24171, SkillIndex =  755 },
			[31077] = { RecipeItemEntry =  24172, SkillIndex =  755 },
			[31078] = { RecipeItemEntry =  24173, SkillIndex =  755 },
			[31079] = { RecipeItemEntry =  24179, SkillIndex =  755 },
			[31080] = { RecipeItemEntry =  24180, SkillIndex =  755 },
			[31081] = { RecipeItemEntry =  24181, SkillIndex =  755 },
			[31082] = { RecipeItemEntry =  24182, SkillIndex =  755 },
			[31083] = { RecipeItemEntry =  24183, SkillIndex =  755 },
			[31084] = { RecipeItemEntry =  24193, SkillIndex =  755 },
			[31085] = { RecipeItemEntry =  24194, SkillIndex =  755 },
			[31087] = { RecipeItemEntry =  24195, SkillIndex =  755 },
			[31088] = { RecipeItemEntry =  24196, SkillIndex =  755 },
			[31089] = { RecipeItemEntry =  24192, SkillIndex =  755 },
			[31090] = { RecipeItemEntry =  24197, SkillIndex =  755 },
			[31091] = { RecipeItemEntry =  24198, SkillIndex =  755 },
			[31092] = { RecipeItemEntry =  24199, SkillIndex =  755 },
			[31094] = { RecipeItemEntry =  24201, SkillIndex =  755 },
			[31095] = { RecipeItemEntry =  24202, SkillIndex =  755 },
			[31096] = { RecipeItemEntry =  24203, SkillIndex =  755 },
			[31097] = { RecipeItemEntry =  24204, SkillIndex =  755 },
			[31098] = { RecipeItemEntry =  24205, SkillIndex =  755 },
			[31099] = { RecipeItemEntry =  24206, SkillIndex =  755 },
			[31100] = { RecipeItemEntry =  24207, SkillIndex =  755 },
			[31101] = { RecipeItemEntry =  24208, SkillIndex =  755 },
			[31102] = { RecipeItemEntry =  24209, SkillIndex =  755 },
			[31103] = { RecipeItemEntry =  24210, SkillIndex =  755 },
			[31104] = { RecipeItemEntry =  24211, SkillIndex =  755 },
			[31105] = { RecipeItemEntry =  24212, SkillIndex =  755 },
			[31106] = { RecipeItemEntry =  24213, SkillIndex =  755 },
			[31107] = { RecipeItemEntry =  24214, SkillIndex =  755 },
			[31108] = { RecipeItemEntry =  24215, SkillIndex =  755 },
			[31109] = { RecipeItemEntry =  24216, SkillIndex =  755 },
			[31110] = { RecipeItemEntry =  24217, SkillIndex =  755 },
			[31111] = { RecipeItemEntry =  24218, SkillIndex =  755 },
			[31112] = { RecipeItemEntry =  24219, SkillIndex =  755 },
			[31113] = { RecipeItemEntry =  24220, SkillIndex =  755 },
			[31149] = { RecipeItemEntry =  24200, SkillIndex =  755 },
			[32178] = { SkillIndex =  755 },
			[32179] = { SkillIndex =  755 },
			[32259] = { SkillIndex =  755 },
			[32801] = { SkillIndex =  755 },
			[32807] = { SkillIndex =  755 },
			[32808] = { SkillIndex =  755 },
			[32809] = { SkillIndex =  755 },
			[32810] = { SkillIndex =  755 },
			[32866] = { RecipeItemEntry =  25902, SkillIndex =  755 },
			[32867] = { RecipeItemEntry =  25903, SkillIndex =  755 },
			[32868] = { RecipeItemEntry =  25905, SkillIndex =  755 },
			[32869] = { RecipeItemEntry =  25906, SkillIndex =  755 },
			[32870] = { RecipeItemEntry =  25904, SkillIndex =  755 },
			[32871] = { RecipeItemEntry =  25907, SkillIndex =  755 },
			[32872] = { RecipeItemEntry =  25909, SkillIndex =  755 },
			[32873] = { RecipeItemEntry =  25908, SkillIndex =  755 },
			[32874] = { RecipeItemEntry =  25910, SkillIndex =  755 },
			[34069] = { RecipeItemEntry =  28291, SkillIndex =  755 },
			[34590] = { RecipeItemEntry =  28596, SkillIndex =  755 },
			[34955] = { SkillIndex =  755 },
			[34959] = { SkillIndex =  755 },
			[34960] = { SkillIndex =  755 },
			[34961] = { SkillIndex =  755 },
			[36523] = { SkillIndex =  755 },
			[36524] = { SkillIndex =  755 },
			[36525] = { SkillIndex =  755 },
			[36526] = { SkillIndex =  755 },
			[37818] = { SkillIndex =  755 },
			[37855] = { RecipeItemEntry =  30826, SkillIndex =  755 },
			[38068] = { SkillIndex =  755 },
			[38175] = { SkillIndex =  755 },
			[38503] = { RecipeItemEntry =  31401, SkillIndex =  755 },
			[38504] = { RecipeItemEntry =  31402, SkillIndex =  755 },
			[39451] = { RecipeItemEntry =  31870, SkillIndex =  755 },
			[39452] = { RecipeItemEntry =  31875, SkillIndex =  755 },
			[39455] = { RecipeItemEntry =  31871, SkillIndex =  755 },
			[39458] = { RecipeItemEntry =  31872, SkillIndex =  755 },
			[39462] = { RecipeItemEntry =  31877, SkillIndex =  755 },
			[39463] = { RecipeItemEntry =  31876, SkillIndex =  755 },
			[39466] = { RecipeItemEntry =  31873, SkillIndex =  755 },
			[39467] = { RecipeItemEntry =  31874, SkillIndex =  755 },
			[39470] = { RecipeItemEntry =  31878, SkillIndex =  755 },
			[39471] = { RecipeItemEntry =  31879, SkillIndex =  755 },
			[39705] = { RecipeItemEntry =  32274, SkillIndex =  755 },
			[39706] = { RecipeItemEntry =  32277, SkillIndex =  755 },
			[39710] = { RecipeItemEntry =  32281, SkillIndex =  755 },
			[39711] = { RecipeItemEntry =  32282, SkillIndex =  755 },
			[39712] = { RecipeItemEntry =  32283, SkillIndex =  755 },
			[39713] = { RecipeItemEntry =  32284, SkillIndex =  755 },
			[39714] = { RecipeItemEntry =  32285, SkillIndex =  755 },
			[39715] = { RecipeItemEntry =  32286, SkillIndex =  755 },
			[39716] = { RecipeItemEntry =  32287, SkillIndex =  755 },
			[39717] = { RecipeItemEntry =  32288, SkillIndex =  755 },
			[39718] = { RecipeItemEntry =  32289, SkillIndex =  755 },
			[39719] = { RecipeItemEntry =  32290, SkillIndex =  755 },
			[39720] = { RecipeItemEntry =  32291, SkillIndex =  755 },
			[39721] = { RecipeItemEntry =  32292, SkillIndex =  755 },
			[39722] = { RecipeItemEntry =  32293, SkillIndex =  755 },
			[39723] = { RecipeItemEntry =  32294, SkillIndex =  755 },
			[39724] = { RecipeItemEntry =  32295, SkillIndex =  755 },
			[39725] = { RecipeItemEntry =  32296, SkillIndex =  755 },
			[39727] = { RecipeItemEntry =  32297, SkillIndex =  755 },
			[39728] = { RecipeItemEntry =  32298, SkillIndex =  755 },
			[39729] = { RecipeItemEntry =  32299, SkillIndex =  755 },
			[39730] = { RecipeItemEntry =  32300, SkillIndex =  755 },
			[39731] = { RecipeItemEntry =  32301, SkillIndex =  755 },
			[39732] = { RecipeItemEntry =  32302, SkillIndex =  755 },
			[39733] = { RecipeItemEntry =  32303, SkillIndex =  755 },
			[39734] = { RecipeItemEntry =  32304, SkillIndex =  755 },
			[39735] = { RecipeItemEntry =  32305, SkillIndex =  755 },
			[39736] = { RecipeItemEntry =  32306, SkillIndex =  755 },
			[39737] = { RecipeItemEntry =  32307, SkillIndex =  755 },
			[39738] = { RecipeItemEntry =  32308, SkillIndex =  755 },
			[39739] = { RecipeItemEntry =  32309, SkillIndex =  755 },
			[39740] = { RecipeItemEntry =  32310, SkillIndex =  755 },
			[39741] = { RecipeItemEntry =  32311, SkillIndex =  755 },
			[39742] = { RecipeItemEntry =  32312, SkillIndex =  755 },
			[39961] = { RecipeItemEntry =  32412, SkillIndex =  755 },
			[39963] = { RecipeItemEntry =  32411, SkillIndex =  755 },
			[40514] = { SkillIndex =  755 },
			[41414] = { SkillIndex =  755 },
			[41415] = { SkillIndex =  755 },
			[41418] = { SkillIndex =  755 },
			[41420] = { SkillIndex =  755 },
			[41429] = { SkillIndex =  755 },
			[42558] = { RecipeItemEntry =  33305, SkillIndex =  755 },
			[42588] = { RecipeItemEntry =  33155, SkillIndex =  755 },
			[42589] = { RecipeItemEntry =  33156, SkillIndex =  755 },
			[42590] = { RecipeItemEntry =  33157, SkillIndex =  755 },
			[42591] = { RecipeItemEntry =  33158, SkillIndex =  755 },
			[42592] = { RecipeItemEntry =  33159, SkillIndex =  755 },
			[42593] = { RecipeItemEntry =  33160, SkillIndex =  755 },
			[43493] = { RecipeItemEntry =  33783, SkillIndex =  755 },
			[44794] = { RecipeItemEntry =  34221, SkillIndex =  755 },
			[46122] = { RecipeItemEntry =  35198, SkillIndex =  755 },
			[46123] = { RecipeItemEntry =  35199, SkillIndex =  755 },
			[46124] = { RecipeItemEntry =  35200, SkillIndex =  755 },
			[46125] = { RecipeItemEntry =  35201, SkillIndex =  755 },
			[46126] = { RecipeItemEntry =  35202, SkillIndex =  755 },
			[46127] = { RecipeItemEntry =  35203, SkillIndex =  755 },
			[46403] = { RecipeItemEntry =  15316, SkillIndex =  755 },
			[46404] = { RecipeItemEntry =  15317, SkillIndex =  755 },
			[46405] = { RecipeItemEntry =  15318, SkillIndex =  755 },
			[46597] = { RecipeItemEntry =  35502, SkillIndex =  755 },
			[46601] = { RecipeItemEntry =  35505, SkillIndex =  755 },
			[46775] = { RecipeItemEntry =  35695, SkillIndex =  755 },
			[46776] = { RecipeItemEntry =  35696, SkillIndex =  755 },
			[46777] = { RecipeItemEntry =  35697, SkillIndex =  755 },
			[46778] = { RecipeItemEntry =  35698, SkillIndex =  755 },
			[46779] = { RecipeItemEntry =  35699, SkillIndex =  755 },
			[46803] = { RecipeItemEntry =  35708, SkillIndex =  755 },
			[47053] = { RecipeItemEntry =  35765, SkillIndex =  755 },
			[47054] = { RecipeItemEntry =  35764, SkillIndex =  755 },
			[47055] = { RecipeItemEntry =  35762, SkillIndex =  755 },
			[47056] = { RecipeItemEntry =  35763, SkillIndex =  755 },
			[47280] = { SkillIndex =  755 },
			[48789] = { RecipeItemEntry =  15315, SkillIndex =  755 },
			[53830] = { RecipeItemEntry =  41576, SkillIndex =  755 },
			[53831] = { SkillIndex =  755 },
			[53832] = { SkillIndex =  755 },
			[53834] = { SkillIndex =  755 },
			[53835] = { SkillIndex =  755 },
			[53843] = { SkillIndex =  755 },
			[53844] = { SkillIndex =  755 },
			[53845] = { SkillIndex =  755 },
			[53852] = { SkillIndex =  755 },
			[53853] = { SkillIndex =  755 },
			[53854] = { SkillIndex =  755 },
			[53855] = { SkillIndex =  755 },
			[53856] = { SkillIndex =  755 },
			[53857] = { RecipeItemEntry =  41559, SkillIndex =  755 },
			[53859] = { SkillIndex =  755 },
			[53860] = { SkillIndex =  755 },
			[53861] = { SkillIndex =  755 },
			[53862] = { SkillIndex =  755 },
			[53863] = { SkillIndex =  755 },
			[53864] = { SkillIndex =  755 },
			[53865] = { RecipeItemEntry =  41575, SkillIndex =  755 },
			[53866] = { SkillIndex =  755 },
			[53867] = { SkillIndex =  755 },
			[53868] = { SkillIndex =  755 },
			[53869] = { RecipeItemEntry =  41574, SkillIndex =  755 },
			[53870] = { SkillIndex =  755 },
			[53871] = { SkillIndex =  755 },
			[53872] = { SkillIndex =  755 },
			[53873] = { SkillIndex =  755 },
			[53874] = { SkillIndex =  755 },
			[53875] = { RecipeItemEntry =  41566, SkillIndex =  755 },
			[53876] = { SkillIndex =  755 },
			[53877] = { RecipeItemEntry =  41562, SkillIndex =  755 },
			[53878] = { SkillIndex =  755 },
			[53879] = { RecipeItemEntry =  41565, SkillIndex =  755 },
			[53880] = { SkillIndex =  755 },
			[53881] = { SkillIndex =  755 },
			[53882] = { SkillIndex =  755 },
			[53883] = { SkillIndex =  755 },
			[53884] = { RecipeItemEntry =  41563, SkillIndex =  755 },
			[53885] = { RecipeItemEntry =  41561, SkillIndex =  755 },
			[53886] = { SkillIndex =  755 },
			[53887] = { SkillIndex =  755 },
			[53888] = { RecipeItemEntry =  41564, SkillIndex =  755 },
			[53889] = { SkillIndex =  755 },
			[53890] = { SkillIndex =  755 },
			[53891] = { SkillIndex =  755 },
			[53892] = { SkillIndex =  755 },
			[53893] = { SkillIndex =  755 },
			[53894] = { SkillIndex =  755 },
			[53916] = { SkillIndex =  755 },
			[53917] = { RecipeItemEntry =  41567, SkillIndex =  755 },
			[53918] = { SkillIndex =  755 },
			[53919] = { RecipeItemEntry =  41572, SkillIndex =  755 },
			[53920] = { SkillIndex =  755 },
			[53921] = { RecipeItemEntry =  41568, SkillIndex =  755 },
			[53922] = { SkillIndex =  755 },
			[53923] = { SkillIndex =  755 },
			[53924] = { RecipeItemEntry =  41571, SkillIndex =  755 },
			[53925] = { SkillIndex =  755 },
			[53926] = { SkillIndex =  755 },
			[53927] = { SkillIndex =  755 },
			[53928] = { SkillIndex =  755 },
			[53929] = { RecipeItemEntry =  41573, SkillIndex =  755 },
			[53930] = { SkillIndex =  755 },
			[53931] = { SkillIndex =  755 },
			[53932] = { RecipeItemEntry =  41570, SkillIndex =  755 },
			[53933] = { RecipeItemEntry =  41569, SkillIndex =  755 },
			[53934] = { SkillIndex =  755 },
			[53940] = { SkillIndex =  755 },
			[53941] = { SkillIndex =  755 },
			[53943] = { RecipeItemEntry =  41560, SkillIndex =  755 },
			[53945] = { RecipeItemEntry =  41577, SkillIndex =  755 },
			[53946] = { RecipeItemEntry =  41718, SkillIndex =  755 },
			[53947] = { SkillIndex =  755 },
			[53948] = { RecipeItemEntry =  41719, SkillIndex =  755 },
			[53949] = { RecipeItemEntry =  41578, SkillIndex =  755 },
			[53950] = { RecipeItemEntry =  41817, SkillIndex =  755 },
			[53951] = { RecipeItemEntry =  41790, SkillIndex =  755 },
			[53952] = { RecipeItemEntry =  42138, SkillIndex =  755 },
			[53953] = { SkillIndex =  755 },
			[53954] = { RecipeItemEntry =  41581, SkillIndex =  755 },
			[53955] = { RecipeItemEntry =  41728, SkillIndex =  755 },
			[53956] = { SkillIndex =  755 },
			[53957] = { RecipeItemEntry =  41720, SkillIndex =  755 },
			[53958] = { RecipeItemEntry =  41580, SkillIndex =  755 },
			[53959] = { RecipeItemEntry =  41791, SkillIndex =  755 },
			[53960] = { RecipeItemEntry =  41727, SkillIndex =  755 },
			[53961] = { RecipeItemEntry =  41579, SkillIndex =  755 },
			[53962] = { RecipeItemEntry =  41784, SkillIndex =  755 },
			[53963] = { RecipeItemEntry =  41747, SkillIndex =  755 },
			[53964] = { RecipeItemEntry =  41785, SkillIndex =  755 },
			[53965] = { RecipeItemEntry =  41725, SkillIndex =  755 },
			[53966] = { RecipeItemEntry =  41783, SkillIndex =  755 },
			[53967] = { RecipeItemEntry =  41701, SkillIndex =  755 },
			[53968] = { RecipeItemEntry =  41740, SkillIndex =  755 },
			[53969] = { SkillIndex =  755 },
			[53970] = { RecipeItemEntry =  41796, SkillIndex =  755 },
			[53971] = { RecipeItemEntry =  41703, SkillIndex =  755 },
			[53972] = { RecipeItemEntry =  41820, SkillIndex =  755 },
			[53973] = { RecipeItemEntry =  41702, SkillIndex =  755 },
			[53974] = { RecipeItemEntry =  41726, SkillIndex =  755 },
			[53975] = { RecipeItemEntry =  41789, SkillIndex =  755 },
			[53976] = { RecipeItemEntry =  41777, SkillIndex =  755 },
			[53977] = { RecipeItemEntry =  41780, SkillIndex =  755 },
			[53978] = { RecipeItemEntry =  41734, SkillIndex =  755 },
			[53979] = { RecipeItemEntry =  41794, SkillIndex =  755 },
			[53980] = { RecipeItemEntry =  41582, SkillIndex =  755 },
			[53981] = { RecipeItemEntry =  41733, SkillIndex =  755 },
			[53982] = { RecipeItemEntry =  41792, SkillIndex =  755 },
			[53983] = { RecipeItemEntry =  41689, SkillIndex =  755 },
			[53984] = { RecipeItemEntry =  41686, SkillIndex =  755 },
			[53985] = { RecipeItemEntry =  41688, SkillIndex =  755 },
			[53986] = { RecipeItemEntry =  41730, SkillIndex =  755 },
			[53987] = { RecipeItemEntry =  41690, SkillIndex =  755 },
			[53988] = { RecipeItemEntry =  41721, SkillIndex =  755 },
			[53989] = { SkillIndex =  755 },
			[53990] = { RecipeItemEntry =  41732, SkillIndex =  755 },
			[53991] = { RecipeItemEntry =  41687, SkillIndex =  755 },
			[53992] = { RecipeItemEntry =  41779, SkillIndex =  755 },
			[53993] = { RecipeItemEntry =  41722, SkillIndex =  755 },
			[53994] = { RecipeItemEntry =  41818, SkillIndex =  755 },
			[53995] = { RecipeItemEntry =  41795, SkillIndex =  755 },
			[53996] = { RecipeItemEntry =  41723, SkillIndex =  755 },
			[53997] = { RecipeItemEntry =  41698, SkillIndex =  755 },
			[53998] = { RecipeItemEntry =  41697, SkillIndex =  755 },
			[54000] = { RecipeItemEntry =  41738, SkillIndex =  755 },
			[54001] = { RecipeItemEntry =  41693, SkillIndex =  755 },
			[54002] = { RecipeItemEntry =  41699, SkillIndex =  755 },
			[54003] = { RecipeItemEntry =  41781, SkillIndex =  755 },
			[54004] = { RecipeItemEntry =  41782, SkillIndex =  755 },
			[54005] = { RecipeItemEntry =  41737, SkillIndex =  755 },
			[54006] = { RecipeItemEntry =  41694, SkillIndex =  755 },
			[54007] = { SkillIndex =  755 },
			[54008] = { RecipeItemEntry =  41724, SkillIndex =  755 },
			[54009] = { RecipeItemEntry =  41696, SkillIndex =  755 },
			[54010] = { RecipeItemEntry =  41739, SkillIndex =  755 },
			[54011] = { RecipeItemEntry =  41692, SkillIndex =  755 },
			[54012] = { RecipeItemEntry =  41819, SkillIndex =  755 },
			[54013] = { RecipeItemEntry =  41736, SkillIndex =  755 },
			[54014] = { RecipeItemEntry =  41735, SkillIndex =  755 },
			[54017] = { SkillIndex =  755 },
			[54019] = { RecipeItemEntry =  41793, SkillIndex =  755 },
			[54023] = { RecipeItemEntry =  41778, SkillIndex =  755 },
			[55384] = { RecipeItemEntry =  41414, SkillIndex =  755 },
			[55386] = { RecipeItemEntry =  41415, SkillIndex =  755 },
			[55387] = { RecipeItemEntry =  41416, SkillIndex =  755 },
			[55388] = { RecipeItemEntry =  41417, SkillIndex =  755 },
			[55389] = { RecipeItemEntry =  41418, SkillIndex =  755 },
			[55390] = { RecipeItemEntry =  41419, SkillIndex =  755 },
			[55392] = { RecipeItemEntry =  41420, SkillIndex =  755 },
			[55393] = { RecipeItemEntry =  41421, SkillIndex =  755 },
			[55394] = { RecipeItemEntry =  41422, SkillIndex =  755 },
			[55395] = { RecipeItemEntry =  41423, SkillIndex =  755 },
			[55396] = { RecipeItemEntry =  41403, SkillIndex =  755 },
			[55397] = { RecipeItemEntry =  41404, SkillIndex =  755 },
			[55398] = { RecipeItemEntry =  41405, SkillIndex =  755 },
			[55399] = { RecipeItemEntry =  41406, SkillIndex =  755 },
			[55400] = { RecipeItemEntry =  41407, SkillIndex =  755 },
			[55401] = { RecipeItemEntry =  41408, SkillIndex =  755 },
			[55402] = { RecipeItemEntry =  41409, SkillIndex =  755 },
			[55403] = { RecipeItemEntry =  41410, SkillIndex =  755 },
			[55404] = { RecipeItemEntry =  41411, SkillIndex =  755 },
			[55405] = { RecipeItemEntry =  41412, SkillIndex =  755 },
			[55407] = { RecipeItemEntry =  41413, SkillIndex =  755 },
			[56049] = { RecipeItemEntry =  42298, SkillIndex =  755 },
			[56052] = { RecipeItemEntry =  42301, SkillIndex =  755 },
			[56053] = { RecipeItemEntry =  42309, SkillIndex =  755 },
			[56054] = { RecipeItemEntry =  42299, SkillIndex =  755 },
			[56055] = { RecipeItemEntry =  42314, SkillIndex =  755 },
			[56056] = { RecipeItemEntry =  42302, SkillIndex =  755 },
			[56074] = { RecipeItemEntry =  42300, SkillIndex =  755 },
			[56076] = { RecipeItemEntry =  42303, SkillIndex =  755 },
			[56077] = { RecipeItemEntry =  42304, SkillIndex =  755 },
			[56079] = { RecipeItemEntry =  42305, SkillIndex =  755 },
			[56081] = { RecipeItemEntry =  42306, SkillIndex =  755 },
			[56083] = { RecipeItemEntry =  42307, SkillIndex =  755 },
			[56084] = { RecipeItemEntry =  42308, SkillIndex =  755 },
			[56085] = { RecipeItemEntry =  42310, SkillIndex =  755 },
			[56086] = { RecipeItemEntry =  42311, SkillIndex =  755 },
			[56087] = { RecipeItemEntry =  42312, SkillIndex =  755 },
			[56088] = { RecipeItemEntry =  42313, SkillIndex =  755 },
			[56089] = { RecipeItemEntry =  42315, SkillIndex =  755 },
			[56193] = { SkillIndex =  755 },
			[56194] = { SkillIndex =  755 },
			[56195] = { SkillIndex =  755 },
			[56196] = { SkillIndex =  755 },
			[56197] = { SkillIndex =  755 },
			[56199] = { SkillIndex =  755 },
			[56201] = { SkillIndex =  755 },
			[56202] = { SkillIndex =  755 },
			[56203] = { SkillIndex =  755 },
			[56205] = { SkillIndex =  755 },
			[56206] = { SkillIndex =  755 },
			[56208] = { SkillIndex =  755 },
			[56496] = { RecipeItemEntry =  42648, SkillIndex =  755 },
			[56497] = { RecipeItemEntry =  42649, SkillIndex =  755 },
			[56498] = { RecipeItemEntry =  42650, SkillIndex =  755 },
			[56499] = { RecipeItemEntry =  42651, SkillIndex =  755 },
			[56500] = { RecipeItemEntry =  42652, SkillIndex =  755 },
			[56501] = { RecipeItemEntry =  42653, SkillIndex =  755 },
			[56530] = { SkillIndex =  755 },
			[56531] = { SkillIndex =  755 },
			[58141] = { SkillIndex =  755 },
			[58142] = { SkillIndex =  755 },
			[58143] = { SkillIndex =  755 },
			[58144] = { SkillIndex =  755 },
			[58145] = { SkillIndex =  755 },
			[58146] = { SkillIndex =  755 },
			[58147] = { RecipeItemEntry =  43317, SkillIndex =  755 },
			[58148] = { RecipeItemEntry =  43318, SkillIndex =  755 },
			[58149] = { RecipeItemEntry =  43319, SkillIndex =  755 },
			[58150] = { RecipeItemEntry =  43320, SkillIndex =  755 },
			[58492] = { RecipeItemEntry =  43485, SkillIndex =  755 },
			[58507] = { RecipeItemEntry =  43497, SkillIndex =  755 },
			[58954] = { RecipeItemEntry =  43597, SkillIndex =  755 },
			[59759] = { SkillIndex =  755 },
			[62242] = { SkillIndex =  755 },
			[62941] = { SkillIndex =  755 },
			[63743] = { SkillIndex =  755 },
			[64725] = { SkillIndex =  755 },
			[64726] = { SkillIndex =  755 },
			[64727] = { SkillIndex =  755 },
			[64728] = { SkillIndex =  755 },
			[66338] = { RecipeItemEntry =  46897, SkillIndex =  755 },
			[66428] = { RecipeItemEntry =  46898, SkillIndex =  755 },
			[66429] = { RecipeItemEntry =  46899, SkillIndex =  755 },
			[66430] = { RecipeItemEntry =  46900, SkillIndex =  755 },
			[66431] = { RecipeItemEntry =  46901, SkillIndex =  755 },
			[66432] = { RecipeItemEntry =  46902, SkillIndex =  755 },
			[66433] = { RecipeItemEntry =  46903, SkillIndex =  755 },
			[66434] = { RecipeItemEntry =  46904, SkillIndex =  755 },
			[66435] = { RecipeItemEntry =  46905, SkillIndex =  755 },
			[66436] = { RecipeItemEntry =  46906, SkillIndex =  755 },
			[66437] = { RecipeItemEntry =  46907, SkillIndex =  755 },
			[66438] = { RecipeItemEntry =  46908, SkillIndex =  755 },
			[66439] = { RecipeItemEntry =  46909, SkillIndex =  755 },
			[66440] = { RecipeItemEntry =  46910, SkillIndex =  755 },
			[66441] = { RecipeItemEntry =  46911, SkillIndex =  755 },
			[66442] = { RecipeItemEntry =  46912, SkillIndex =  755 },
			[66443] = { RecipeItemEntry =  46913, SkillIndex =  755 },
			[66444] = { RecipeItemEntry =  46914, SkillIndex =  755 },
			[66445] = { RecipeItemEntry =  46915, SkillIndex =  755 },
			[66446] = { RecipeItemEntry =  46916, SkillIndex =  755 },
			[66447] = { RecipeItemEntry =  46917, SkillIndex =  755 },
			[66448] = { RecipeItemEntry =  46918, SkillIndex =  755 },
			[66449] = { RecipeItemEntry =  46919, SkillIndex =  755 },
			[66450] = { RecipeItemEntry =  46920, SkillIndex =  755 },
			[66451] = { RecipeItemEntry =  46921, SkillIndex =  755 },
			[66452] = { RecipeItemEntry =  46922, SkillIndex =  755 },
			[66453] = { RecipeItemEntry =  46923, SkillIndex =  755 },
			[66497] = { RecipeItemEntry =  46924, SkillIndex =  755 },
			[66498] = { RecipeItemEntry =  46925, SkillIndex =  755 },
			[66499] = { RecipeItemEntry =  46926, SkillIndex =  755 },
			[66500] = { RecipeItemEntry =  46927, SkillIndex =  755 },
			[66501] = { RecipeItemEntry =  46928, SkillIndex =  755 },
			[66502] = { RecipeItemEntry =  46929, SkillIndex =  755 },
			[66503] = { RecipeItemEntry =  46930, SkillIndex =  755 },
			[66504] = { RecipeItemEntry =  46931, SkillIndex =  755 },
			[66505] = { RecipeItemEntry =  46932, SkillIndex =  755 },
			[66506] = { RecipeItemEntry =  46933, SkillIndex =  755 },
			[66553] = { RecipeItemEntry =  46934, SkillIndex =  755 },
			[66554] = { RecipeItemEntry =  46935, SkillIndex =  755 },
			[66555] = { RecipeItemEntry =  46936, SkillIndex =  755 },
			[66556] = { RecipeItemEntry =  46937, SkillIndex =  755 },
			[66557] = { RecipeItemEntry =  46938, SkillIndex =  755 },
			[66558] = { RecipeItemEntry =  46939, SkillIndex =  755 },
			[66559] = { RecipeItemEntry =  46940, SkillIndex =  755 },
			[66560] = { RecipeItemEntry =  46941, SkillIndex =  755 },
			[66561] = { RecipeItemEntry =  46942, SkillIndex =  755 },
			[66562] = { RecipeItemEntry =  46943, SkillIndex =  755 },
			[66563] = { RecipeItemEntry =  46944, SkillIndex =  755 },
			[66564] = { RecipeItemEntry =  46945, SkillIndex =  755 },
			[66565] = { RecipeItemEntry =  46946, SkillIndex =  755 },
			[66566] = { RecipeItemEntry =  46947, SkillIndex =  755 },
			[66567] = { RecipeItemEntry =  46948, SkillIndex =  755 },
			[66568] = { RecipeItemEntry =  46949, SkillIndex =  755 },
			[66569] = { RecipeItemEntry =  46950, SkillIndex =  755 },
			[66570] = { RecipeItemEntry =  46951, SkillIndex =  755 },
			[66571] = { RecipeItemEntry =  46952, SkillIndex =  755 },
			[66572] = { RecipeItemEntry =  46953, SkillIndex =  755 },
			[66573] = { RecipeItemEntry =  46956, SkillIndex =  755 },
			[66574] = { RecipeItemEntry =  47007, SkillIndex =  755 },
			[66575] = { RecipeItemEntry =  47008, SkillIndex =  755 },
			[66576] = { RecipeItemEntry =  47010, SkillIndex =  755 },
			[66577] = { RecipeItemEntry =  47011, SkillIndex =  755 },
			[66578] = { RecipeItemEntry =  47012, SkillIndex =  755 },
			[66579] = { RecipeItemEntry =  47015, SkillIndex =  755 },
			[66580] = { RecipeItemEntry =  47016, SkillIndex =  755 },
			[66581] = { RecipeItemEntry =  47017, SkillIndex =  755 },
			[66582] = { RecipeItemEntry =  47018, SkillIndex =  755 },
			[66583] = { RecipeItemEntry =  47019, SkillIndex =  755 },
			[66584] = { RecipeItemEntry =  47020, SkillIndex =  755 },
			[66585] = { RecipeItemEntry =  47021, SkillIndex =  755 },
			[66586] = { RecipeItemEntry =  47022, SkillIndex =  755 },
			[66587] = { RecipeItemEntry =  47023, SkillIndex =  755 },
			[68253] = { RecipeItemEntry =  49112, SkillIndex =  755 },
			[884036] = { RecipeItemEntry =  884038, SkillIndex =  755 },
			[884037] = { RecipeItemEntry =  884039, SkillIndex =  755 },
			[979639] = { RecipeItemEntry =  1204183, SkillIndex =  755 },
			[979640] = { RecipeItemEntry =  1204184, SkillIndex =  755 },
			[979641] = { RecipeItemEntry =  1204185, SkillIndex =  755 },
			[979642] = { RecipeItemEntry =  1204186, SkillIndex =  755 },
			[979643] = { RecipeItemEntry =  1204187, SkillIndex =  755 },
			[979644] = { RecipeItemEntry =  1204188, SkillIndex =  755 },
			[979645] = { RecipeItemEntry =  1204189, SkillIndex =  755 },
			[979646] = { RecipeItemEntry =  1204190, SkillIndex =  755 },
			[979647] = { RecipeItemEntry =  1204191, SkillIndex =  755 },
			[979648] = { RecipeItemEntry =  1204192, SkillIndex =  755 },
			[979649] = { RecipeItemEntry =  1204193, SkillIndex =  755 },
			[979650] = { RecipeItemEntry =  1204194, SkillIndex =  755 },
			[979651] = { RecipeItemEntry =  1204195, SkillIndex =  755 },
			[979652] = { RecipeItemEntry =  1204196, SkillIndex =  755 },
			[979653] = { RecipeItemEntry =  1204197, SkillIndex =  755 },
			[979654] = { RecipeItemEntry =  1204198, SkillIndex =  755 },
			[979655] = { RecipeItemEntry =  1204199, SkillIndex =  755 },
			[979656] = { RecipeItemEntry =  1204200, SkillIndex =  755 },
			[979837] = { SkillIndex =  755 },
			[979838] = { SkillIndex =  755 },
			[979839] = { SkillIndex =  755 },
			[979840] = { SkillIndex =  755 },
			[45382] = { SkillIndex =  773 },
			[48114] = { SkillIndex =  773 },
			[48116] = { SkillIndex =  773 },
			[48121] = { SkillIndex =  773 },
			[48247] = { SkillIndex =  773 },
			[48248] = { SkillIndex =  773 },
			[50598] = { SkillIndex =  773 },
			[50599] = { SkillIndex =  773 },
			[50600] = { SkillIndex =  773 },
			[50601] = { SkillIndex =  773 },
			[50602] = { SkillIndex =  773 },
			[50603] = { SkillIndex =  773 },
			[50604] = { SkillIndex =  773 },
			[50605] = { SkillIndex =  773 },
			[50606] = { SkillIndex =  773 },
			[50607] = { SkillIndex =  773 },
			[50608] = { SkillIndex =  773 },
			[50609] = { SkillIndex =  773 },
			[50610] = { SkillIndex =  773 },
			[50611] = { SkillIndex =  773 },
			[50612] = { SkillIndex =  773 },
			[50614] = { SkillIndex =  773 },
			[50616] = { SkillIndex =  773 },
			[50617] = { SkillIndex =  773 },
			[50618] = { SkillIndex =  773 },
			[50619] = { SkillIndex =  773 },
			[50620] = { SkillIndex =  773 },
			[52738] = { SkillIndex =  773 },
			[52739] = { SkillIndex =  773 },
			[52840] = { SkillIndex =  773 },
			[52843] = { SkillIndex =  773 },
			[53462] = { SkillIndex =  773 },
			[56943] = { SkillIndex =  773 },
			[56944] = { SkillIndex =  773 },
			[56945] = { SkillIndex =  773 },
			[56946] = { SkillIndex =  773 },
			[56947] = { SkillIndex =  773 },
			[56948] = { SkillIndex =  773 },
			[56949] = { SkillIndex =  773 },
			[56950] = { SkillIndex =  773 },
			[56951] = { SkillIndex =  773 },
			[56952] = { SkillIndex =  773 },
			[56953] = { SkillIndex =  773 },
			[56954] = { SkillIndex =  773 },
			[56955] = { SkillIndex =  773 },
			[56956] = { SkillIndex =  773 },
			[56957] = { SkillIndex =  773 },
			[56958] = { SkillIndex =  773 },
			[56959] = { SkillIndex =  773 },
			[56960] = { SkillIndex =  773 },
			[56961] = { SkillIndex =  773 },
			[56963] = { SkillIndex =  773 },
			[56965] = { SkillIndex =  773 },
			[56968] = { SkillIndex =  773 },
			[56971] = { SkillIndex =  773 },
			[56972] = { SkillIndex =  773 },
			[56973] = { SkillIndex =  773 },
			[56974] = { SkillIndex =  773 },
			[56975] = { SkillIndex =  773 },
			[56976] = { SkillIndex =  773 },
			[56977] = { SkillIndex =  773 },
			[56978] = { SkillIndex =  773 },
			[56979] = { SkillIndex =  773 },
			[56980] = { SkillIndex =  773 },
			[56981] = { SkillIndex =  773 },
			[56982] = { SkillIndex =  773 },
			[56983] = { SkillIndex =  773 },
			[56984] = { SkillIndex =  773 },
			[56985] = { SkillIndex =  773 },
			[56986] = { SkillIndex =  773 },
			[56987] = { SkillIndex =  773 },
			[56988] = { SkillIndex =  773 },
			[56989] = { SkillIndex =  773 },
			[56990] = { SkillIndex =  773 },
			[56991] = { SkillIndex =  773 },
			[56994] = { SkillIndex =  773 },
			[56995] = { SkillIndex =  773 },
			[56996] = { SkillIndex =  773 },
			[56997] = { SkillIndex =  773 },
			[56998] = { SkillIndex =  773 },
			[56999] = { SkillIndex =  773 },
			[57000] = { SkillIndex =  773 },
			[57001] = { SkillIndex =  773 },
			[57002] = { SkillIndex =  773 },
			[57003] = { SkillIndex =  773 },
			[57004] = { SkillIndex =  773 },
			[57005] = { SkillIndex =  773 },
			[57006] = { SkillIndex =  773 },
			[57007] = { SkillIndex =  773 },
			[57008] = { SkillIndex =  773 },
			[57009] = { SkillIndex =  773 },
			[57010] = { SkillIndex =  773 },
			[57011] = { SkillIndex =  773 },
			[57012] = { SkillIndex =  773 },
			[57013] = { SkillIndex =  773 },
			[57014] = { SkillIndex =  773 },
			[57019] = { SkillIndex =  773 },
			[57020] = { SkillIndex =  773 },
			[57021] = { SkillIndex =  773 },
			[57022] = { SkillIndex =  773 },
			[57023] = { SkillIndex =  773 },
			[57024] = { SkillIndex =  773 },
			[57025] = { SkillIndex =  773 },
			[57026] = { SkillIndex =  773 },
			[57027] = { SkillIndex =  773 },
			[57028] = { SkillIndex =  773 },
			[57029] = { SkillIndex =  773 },
			[57030] = { SkillIndex =  773 },
			[57031] = { SkillIndex =  773 },
			[57032] = { SkillIndex =  773 },
			[57033] = { SkillIndex =  773 },
			[57034] = { SkillIndex =  773 },
			[57035] = { SkillIndex =  773 },
			[57036] = { SkillIndex =  773 },
			[57112] = { SkillIndex =  773 },
			[57113] = { SkillIndex =  773 },
			[57114] = { SkillIndex =  773 },
			[57115] = { SkillIndex =  773 },
			[57116] = { SkillIndex =  773 },
			[57117] = { SkillIndex =  773 },
			[57119] = { SkillIndex =  773 },
			[57120] = { SkillIndex =  773 },
			[57121] = { SkillIndex =  773 },
			[57122] = { SkillIndex =  773 },
			[57123] = { SkillIndex =  773 },
			[57124] = { SkillIndex =  773 },
			[57125] = { SkillIndex =  773 },
			[57126] = { SkillIndex =  773 },
			[57127] = { SkillIndex =  773 },
			[57128] = { SkillIndex =  773 },
			[57129] = { SkillIndex =  773 },
			[57130] = { SkillIndex =  773 },
			[57131] = { SkillIndex =  773 },
			[57132] = { SkillIndex =  773 },
			[57133] = { SkillIndex =  773 },
			[57151] = { SkillIndex =  773 },
			[57152] = { SkillIndex =  773 },
			[57153] = { SkillIndex =  773 },
			[57154] = { SkillIndex =  773 },
			[57155] = { SkillIndex =  773 },
			[57156] = { SkillIndex =  773 },
			[57157] = { SkillIndex =  773 },
			[57158] = { SkillIndex =  773 },
			[57159] = { SkillIndex =  773 },
			[57160] = { SkillIndex =  773 },
			[57161] = { SkillIndex =  773 },
			[57162] = { SkillIndex =  773 },
			[57163] = { SkillIndex =  773 },
			[57164] = { SkillIndex =  773 },
			[57165] = { SkillIndex =  773 },
			[57166] = { SkillIndex =  773 },
			[57167] = { SkillIndex =  773 },
			[57168] = { SkillIndex =  773 },
			[57169] = { SkillIndex =  773 },
			[57170] = { SkillIndex =  773 },
			[57172] = { SkillIndex =  773 },
			[57181] = { SkillIndex =  773 },
			[57183] = { SkillIndex =  773 },
			[57184] = { SkillIndex =  773 },
			[57185] = { SkillIndex =  773 },
			[57186] = { SkillIndex =  773 },
			[57187] = { SkillIndex =  773 },
			[57188] = { SkillIndex =  773 },
			[57189] = { SkillIndex =  773 },
			[57190] = { SkillIndex =  773 },
			[57191] = { SkillIndex =  773 },
			[57192] = { SkillIndex =  773 },
			[57193] = { SkillIndex =  773 },
			[57194] = { SkillIndex =  773 },
			[57195] = { SkillIndex =  773 },
			[57196] = { SkillIndex =  773 },
			[57197] = { SkillIndex =  773 },
			[57198] = { SkillIndex =  773 },
			[57199] = { SkillIndex =  773 },
			[57200] = { SkillIndex =  773 },
			[57201] = { SkillIndex =  773 },
			[57202] = { SkillIndex =  773 },
			[57207] = { SkillIndex =  773 },
			[57208] = { SkillIndex =  773 },
			[57209] = { SkillIndex =  773 },
			[57210] = { SkillIndex =  773 },
			[57211] = { SkillIndex =  773 },
			[57212] = { SkillIndex =  773 },
			[57213] = { SkillIndex =  773 },
			[57214] = { SkillIndex =  773 },
			[57215] = { SkillIndex =  773 },
			[57216] = { SkillIndex =  773 },
			[57217] = { SkillIndex =  773 },
			[57218] = { SkillIndex =  773 },
			[57219] = { SkillIndex =  773 },
			[57220] = { SkillIndex =  773 },
			[57221] = { SkillIndex =  773 },
			[57222] = { SkillIndex =  773 },
			[57223] = { SkillIndex =  773 },
			[57224] = { SkillIndex =  773 },
			[57225] = { SkillIndex =  773 },
			[57226] = { SkillIndex =  773 },
			[57227] = { SkillIndex =  773 },
			[57228] = { SkillIndex =  773 },
			[57229] = { SkillIndex =  773 },
			[57230] = { SkillIndex =  773 },
			[57231] = { SkillIndex =  773 },
			[57232] = { SkillIndex =  773 },
			[57233] = { SkillIndex =  773 },
			[57234] = { SkillIndex =  773 },
			[57235] = { SkillIndex =  773 },
			[57236] = { SkillIndex =  773 },
			[57237] = { SkillIndex =  773 },
			[57238] = { SkillIndex =  773 },
			[57239] = { SkillIndex =  773 },
			[57240] = { SkillIndex =  773 },
			[57241] = { SkillIndex =  773 },
			[57242] = { SkillIndex =  773 },
			[57243] = { SkillIndex =  773 },
			[57244] = { SkillIndex =  773 },
			[57245] = { SkillIndex =  773 },
			[57246] = { SkillIndex =  773 },
			[57247] = { SkillIndex =  773 },
			[57248] = { SkillIndex =  773 },
			[57249] = { SkillIndex =  773 },
			[57250] = { SkillIndex =  773 },
			[57251] = { SkillIndex =  773 },
			[57252] = { SkillIndex =  773 },
			[57253] = { SkillIndex =  773 },
			[57257] = { SkillIndex =  773 },
			[57258] = { SkillIndex =  773 },
			[57259] = { SkillIndex =  773 },
			[57260] = { SkillIndex =  773 },
			[57261] = { SkillIndex =  773 },
			[57262] = { SkillIndex =  773 },
			[57263] = { SkillIndex =  773 },
			[57264] = { SkillIndex =  773 },
			[57265] = { SkillIndex =  773 },
			[57266] = { SkillIndex =  773 },
			[57267] = { SkillIndex =  773 },
			[57268] = { SkillIndex =  773 },
			[57269] = { SkillIndex =  773 },
			[57270] = { SkillIndex =  773 },
			[57271] = { SkillIndex =  773 },
			[57272] = { SkillIndex =  773 },
			[57273] = { SkillIndex =  773 },
			[57274] = { SkillIndex =  773 },
			[57275] = { SkillIndex =  773 },
			[57276] = { SkillIndex =  773 },
			[57277] = { SkillIndex =  773 },
			[57703] = { SkillIndex =  773 },
			[57704] = { SkillIndex =  773 },
			[57706] = { SkillIndex =  773 },
			[57707] = { SkillIndex =  773 },
			[57708] = { SkillIndex =  773 },
			[57709] = { SkillIndex =  773 },
			[57710] = { SkillIndex =  773 },
			[57711] = { SkillIndex =  773 },
			[57712] = { SkillIndex =  773 },
			[57713] = { SkillIndex =  773 },
			[57714] = { SkillIndex =  773 },
			[57715] = { SkillIndex =  773 },
			[57716] = { SkillIndex =  773 },
			[57719] = { SkillIndex =  773 },
			[58286] = { SkillIndex =  773 },
			[58287] = { SkillIndex =  773 },
			[58288] = { SkillIndex =  773 },
			[58289] = { SkillIndex =  773 },
			[58296] = { SkillIndex =  773 },
			[58297] = { SkillIndex =  773 },
			[58298] = { SkillIndex =  773 },
			[58299] = { SkillIndex =  773 },
			[58300] = { SkillIndex =  773 },
			[58301] = { SkillIndex =  773 },
			[58302] = { SkillIndex =  773 },
			[58303] = { SkillIndex =  773 },
			[58305] = { SkillIndex =  773 },
			[58306] = { SkillIndex =  773 },
			[58307] = { SkillIndex =  773 },
			[58308] = { SkillIndex =  773 },
			[58310] = { SkillIndex =  773 },
			[58311] = { SkillIndex =  773 },
			[58312] = { SkillIndex =  773 },
			[58313] = { SkillIndex =  773 },
			[58314] = { SkillIndex =  773 },
			[58315] = { SkillIndex =  773 },
			[58316] = { SkillIndex =  773 },
			[58317] = { SkillIndex =  773 },
			[58318] = { SkillIndex =  773 },
			[58319] = { SkillIndex =  773 },
			[58320] = { SkillIndex =  773 },
			[58321] = { SkillIndex =  773 },
			[58322] = { SkillIndex =  773 },
			[58323] = { SkillIndex =  773 },
			[58324] = { SkillIndex =  773 },
			[58325] = { SkillIndex =  773 },
			[58326] = { SkillIndex =  773 },
			[58327] = { SkillIndex =  773 },
			[58328] = { SkillIndex =  773 },
			[58329] = { SkillIndex =  773 },
			[58330] = { SkillIndex =  773 },
			[58331] = { SkillIndex =  773 },
			[58332] = { SkillIndex =  773 },
			[58333] = { SkillIndex =  773 },
			[58336] = { SkillIndex =  773 },
			[58337] = { SkillIndex =  773 },
			[58338] = { SkillIndex =  773 },
			[58339] = { SkillIndex =  773 },
			[58340] = { SkillIndex =  773 },
			[58341] = { SkillIndex =  773 },
			[58342] = { SkillIndex =  773 },
			[58343] = { SkillIndex =  773 },
			[58344] = { SkillIndex =  773 },
			[58345] = { SkillIndex =  773 },
			[58346] = { SkillIndex =  773 },
			[58347] = { SkillIndex =  773 },
			[58472] = { SkillIndex =  773 },
			[58473] = { SkillIndex =  773 },
			[58476] = { SkillIndex =  773 },
			[58478] = { SkillIndex =  773 },
			[58480] = { SkillIndex =  773 },
			[58481] = { SkillIndex =  773 },
			[58482] = { SkillIndex =  773 },
			[58483] = { SkillIndex =  773 },
			[58484] = { SkillIndex =  773 },
			[58485] = { SkillIndex =  773 },
			[58486] = { SkillIndex =  773 },
			[58487] = { SkillIndex =  773 },
			[58488] = { SkillIndex =  773 },
			[58489] = { SkillIndex =  773 },
			[58490] = { SkillIndex =  773 },
			[58491] = { SkillIndex =  773 },
			[58565] = { SkillIndex =  773 },
			[59315] = { SkillIndex =  773 },
			[59326] = { SkillIndex =  773 },
			[59338] = { SkillIndex =  773 },
			[59339] = { SkillIndex =  773 },
			[59340] = { SkillIndex =  773 },
			[59387] = { SkillIndex =  773 },
			[59475] = { SkillIndex =  773 },
			[59478] = { SkillIndex =  773 },
			[59480] = { SkillIndex =  773 },
			[59484] = { SkillIndex =  773 },
			[59486] = { SkillIndex =  773 },
			[59487] = { SkillIndex =  773 },
			[59488] = { SkillIndex =  773 },
			[59489] = { SkillIndex =  773 },
			[59490] = { SkillIndex =  773 },
			[59491] = { SkillIndex =  773 },
			[59493] = { SkillIndex =  773 },
			[59494] = { SkillIndex =  773 },
			[59495] = { SkillIndex =  773 },
			[59496] = { SkillIndex =  773 },
			[59497] = { SkillIndex =  773 },
			[59498] = { SkillIndex =  773 },
			[59499] = { SkillIndex =  773 },
			[59500] = { SkillIndex =  773 },
			[59501] = { SkillIndex =  773 },
			[59502] = { SkillIndex =  773 },
			[59503] = { SkillIndex =  773 },
			[59504] = { SkillIndex =  773 },
			[59559] = { SkillIndex =  773 },
			[59560] = { SkillIndex =  773 },
			[59561] = { SkillIndex =  773 },
			[60336] = { SkillIndex =  773 },
			[60337] = { SkillIndex =  773 },
			[61677] = { SkillIndex =  773 },
			[62162] = { SkillIndex =  773 },
			[64051] = { RecipeItemEntry =  46108, SkillIndex =  773 },
			[64053] = { SkillIndex =  773 },
			[64246] = { SkillIndex =  773 },
			[64247] = { SkillIndex =  773 },
			[64248] = { SkillIndex =  773 },
			[64249] = { SkillIndex =  773 },
			[64250] = { SkillIndex =  773 },
			[64251] = { SkillIndex =  773 },
			[64252] = { SkillIndex =  773 },
			[64253] = { SkillIndex =  773 },
			[64254] = { SkillIndex =  773 },
			[64255] = { SkillIndex =  773 },
			[64256] = { SkillIndex =  773 },
			[64257] = { SkillIndex =  773 },
			[64258] = { SkillIndex =  773 },
			[64259] = { SkillIndex =  773 },
			[64260] = { SkillIndex =  773 },
			[64261] = { SkillIndex =  773 },
			[64262] = { SkillIndex =  773 },
			[64266] = { SkillIndex =  773 },
			[64267] = { SkillIndex =  773 },
			[64268] = { SkillIndex =  773 },
			[64270] = { SkillIndex =  773 },
			[64271] = { SkillIndex =  773 },
			[64273] = { SkillIndex =  773 },
			[64274] = { SkillIndex =  773 },
			[64275] = { SkillIndex =  773 },
			[64276] = { SkillIndex =  773 },
			[64277] = { SkillIndex =  773 },
			[64278] = { SkillIndex =  773 },
			[64279] = { SkillIndex =  773 },
			[64280] = { SkillIndex =  773 },
			[64281] = { SkillIndex =  773 },
			[64282] = { SkillIndex =  773 },
			[64283] = { SkillIndex =  773 },
			[64284] = { SkillIndex =  773 },
			[64285] = { SkillIndex =  773 },
			[64286] = { SkillIndex =  773 },
			[64287] = { SkillIndex =  773 },
			[64288] = { SkillIndex =  773 },
			[64289] = { SkillIndex =  773 },
			[64291] = { SkillIndex =  773 },
			[64294] = { SkillIndex =  773 },
			[64295] = { SkillIndex =  773 },
			[64296] = { SkillIndex =  773 },
			[64297] = { SkillIndex =  773 },
			[64298] = { SkillIndex =  773 },
			[64299] = { SkillIndex =  773 },
			[64300] = { SkillIndex =  773 },
			[64302] = { SkillIndex =  773 },
			[64303] = { SkillIndex =  773 },
			[64304] = { SkillIndex =  773 },
			[64305] = { SkillIndex =  773 },
			[64307] = { SkillIndex =  773 },
			[64308] = { SkillIndex =  773 },
			[64309] = { SkillIndex =  773 },
			[64310] = { SkillIndex =  773 },
			[64311] = { SkillIndex =  773 },
			[64312] = { SkillIndex =  773 },
			[64313] = { SkillIndex =  773 },
			[64314] = { SkillIndex =  773 },
			[64315] = { SkillIndex =  773 },
			[64316] = { SkillIndex =  773 },
			[64317] = { SkillIndex =  773 },
			[64318] = { SkillIndex =  773 },
			[65245] = { SkillIndex =  773 },
			[67600] = { SkillIndex =  773 },
			[68166] = { SkillIndex =  773 },
			[69385] = { SkillIndex =  773 },
			[71015] = { RecipeItemEntry =  50167, SkillIndex =  773 },
			[71101] = { RecipeItemEntry =  50166, SkillIndex =  773 },
			[71102] = { RecipeItemEntry = 50168, SkillIndex = 773 },
	}})

	self:AddItemData("sort", {
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Amulet of the Fallen God
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Amulet of the Shifting Sands
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Charm of the Shifting Sands
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Choker of the Shifting Sands
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Cloak of the Fallen God
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Dragonslayer's Signet
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Mark of the Champion
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Master Dragonslayer's Medallion
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Master Dragonslayer's Orb
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Master Dragonslayer's Ring
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Onyxia Blood Talisman
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Onyxia Tooth Pendant
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Pendant of the Shifting Sands
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Ring of the Fallen God
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Zandalarian Hero Badge
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Zandalarian Hero Charm
		{ itemID = 0, groupID = 0, refLootEntry = 0 }; --Zandalarian Hero Medallion
		{ itemID = 10330, groupID = 0, refLootEntry = 0 }; --Scarlet Leggings
		{ itemID = 10399, groupID = 1, refLootEntry = 639 }; --Blackened Defias Armor
		{ itemID = 10403, groupID = 1, refLootEntry = 647 }; --Blackened Defias Belt
		{ itemID = 10411, groupID = 1, refLootEntry = 3673 }; --Footpads of the Fang
		{ itemID = 10412, groupID = 1, refLootEntry = 3671 }; --Belt of the Fang
		{ itemID = 10470, groupID = 2, refLootEntry = 12264 }; --Eternal Flame Artifact
		{ itemID = 10531, groupID = 4, refLootEntry = 12056 }; --Stoneclad Libram
		{ itemID = 10532, groupID = 2, refLootEntry = 11988 }; --Codex of War Arts
		{ itemID = 10533, groupID = 2, refLootEntry = 12259 }; --Tome of Burning Passion
		{ itemID = 10623, groupID = 0, refLootEntry = 0 }; --Winter's Bite
		{ itemID = 10624, groupID = 0, refLootEntry = 0 }; --Stinging Bow
		{ itemID = 10629, groupID = 0, refLootEntry = 0 }; --Mistwalker Boots
		{ itemID = 10630, groupID = 0, refLootEntry = 0 }; --Soulcatcher Halo
		{ itemID = 10634, groupID = 0, refLootEntry = 0 }; --Mindseye Circle
		{ itemID = 10758, groupID = 0, refLootEntry = 0 }; --X'caliboar
		{ itemID = 10760, groupID = 0, refLootEntry = 0 }; --Swine Fists
		{ itemID = 10761, groupID = 0, refLootEntry = 0 }; --Coldrage Dagger
		{ itemID = 10762, groupID = 0, refLootEntry = 0 }; --Robes of the Lich
		{ itemID = 10763, groupID = 0, refLootEntry = 0 }; --Icemetal Barbute
		{ itemID = 10764, groupID = 0, refLootEntry = 0 }; --Deathchill Armor
		{ itemID = 10765, groupID = 0, refLootEntry = 0 }; --Bonefingers
		{ itemID = 10766, groupID = 0, refLootEntry = 0 }; --Plaguerot Sprig
		{ itemID = 10767, groupID = 0, refLootEntry = 0 }; --Savage Boar's Guard
		{ itemID = 10768, groupID = 0, refLootEntry = 0 }; --Boar Champion's Belt
		{ itemID = 10769, groupID = 0, refLootEntry = 0 }; --Glowing Eye of Mordresh
		{ itemID = 10770, groupID = 0, refLootEntry = 0 }; --Mordresh's Lifeless Skull
		{ itemID = 10771, groupID = 0, refLootEntry = 0 }; --Deathmage Sash
		{ itemID = 10772, groupID = 0, refLootEntry = 0 }; --Glutton's Cleaver
		{ itemID = 10774, groupID = 0, refLootEntry = 0 }; --Fleshhide Shoulders
		{ itemID = 10775, groupID = 0, refLootEntry = 0 }; --Carapace of Tuten'kash
		{ itemID = 10776, groupID = 0, refLootEntry = 0 }; --Silky Spider Cape
		{ itemID = 10777, groupID = 0, refLootEntry = 0 }; --Arachnid Gloves
		{ itemID = 10795, groupID = 1, refLootEntry = 35011 }; --Drakeclaw Band
		{ itemID = 10796, groupID = 1, refLootEntry = 35011 }; --Drakestone
		{ itemID = 10797, groupID = 1, refLootEntry = 35011 }; --Firebreather
		{ itemID = 10798, groupID = 1, refLootEntry = 8580 }; --Atal'alarion's Tusk Ring
		{ itemID = 10799, groupID = 1, refLootEntry = 8580 }; --Headspike
		{ itemID = 10800, groupID = 1, refLootEntry = 8580 }; --Darkwater Bracers
		{ itemID = 10801, groupID = 0, refLootEntry = 0 }; --Slitherscale Boots
		{ itemID = 10802, groupID = 0, refLootEntry = 0 }; --Wingveil Cloak
		{ itemID = 10806, groupID = 1, refLootEntry = 5710 }; --Vestments of the Atal'ai Prophet
		{ itemID = 10807, groupID = 1, refLootEntry = 5710 }; --Kilt of the Atal'ai Prophet
		{ itemID = 10808, groupID = 1, refLootEntry = 5710 }; --Gloves of the Atal'ai Prophet
		{ itemID = 10828, groupID = 1, refLootEntry = 5709 }; --Dire Nail
		{ itemID = 10829, groupID = 1, refLootEntry = 5709 }; --The Dragon's Eye
		{ itemID = 10833, groupID = 1, refLootEntry = 5709 }; --Horns of Eranikus
		{ itemID = 10835, groupID = 1, refLootEntry = 5709 }; --Crest of Supremacy
		{ itemID = 10836, groupID = 1, refLootEntry = 5709 }; --Rod of Corrosion
		{ itemID = 10837, groupID = 1, refLootEntry = 5709 }; --Tooth of Eranikus
		{ itemID = 10838, groupID = 1, refLootEntry = 35012 }; --Might of Hakkar
		{ itemID = 10842, groupID = 1, refLootEntry = 35012 }; --Windscale Sarong
		{ itemID = 10843, groupID = 1, refLootEntry = 35012 }; --Featherskin Cape
		{ itemID = 10844, groupID = 1, refLootEntry = 35012 }; --Spire of Hakkar
		{ itemID = 10845, groupID = 1, refLootEntry = 35012 }; --Warrior's Embrace
		{ itemID = 10846, groupID = 1, refLootEntry = 35012 }; --Bloodshot Greaves
		{ itemID = 10847, groupID = 1, refLootEntry = 5709 }; --Dragon's Call
		{ itemID = 10905, groupID = 1, refLootEntry = 34037 }; --Grips of Wrath
		{ itemID = 11086, groupID = 0, refLootEntry = 0 }; --Jang'thraze the Protector
		{ itemID = 11118, groupID = 0, refLootEntry = 0 }; --Archaedic Stone
		{ itemID = 11121, groupID = 1, refLootEntry = 4831 }; --Darkwater Talwar
		{ itemID = 11249, groupID = 2, refLootEntry = 16152 }; --Ring of Eternal Flame
		{ itemID = 11251, groupID = 2, refLootEntry = 15691 }; --Stormfury Pendant
		{ itemID = 11302, groupID = 1, refLootEntry = 24028 }; --Uther's Strength
		{ itemID = 11310, groupID = 0, refLootEntry = 0 }; --Flameseer Mantle
		{ itemID = 11311, groupID = 0, refLootEntry = 0 }; --Emberscale Cape
		{ itemID = 11321, groupID = 1, refLootEntry = 11520 }; --The Hungerer
		{ itemID = 11329, groupID = 1, refLootEntry = 67529 }; --Talisman of Soul Theft
		{ itemID = 11330, groupID = 1, refLootEntry = 67529 }; --Signet of the Soulflayer
		{ itemID = 11425, groupID = 1, refLootEntry = 67529 }; --Band of the Dead
		{ itemID = 11426, groupID = 1, refLootEntry = 67529 }; --Shroud of Sacrifice
		{ itemID = 11427, groupID = 1, refLootEntry = 67529 }; --Soulrender Rifle
		{ itemID = 11428, groupID = 1, refLootEntry = 67529 }; --Skullcrusher
		{ itemID = 11429, groupID = 1, refLootEntry = 67529 }; --Desecrator
		{ itemID = 11430, groupID = 1, refLootEntry = 67529 }; --Soul Essence Vial
		{ itemID = 11523, groupID = 2, refLootEntry = 24882 }; --Trophy Scar Band
		{ itemID = 1155, groupID = 1, refLootEntry = 4832 }; --Rod of the Sleepwalker
		{ itemID = 1156, groupID = 1, refLootEntry = 1763 }; --Lavishly Jeweled Ring
		{ itemID = 11571, groupID = 4, refLootEntry = 10184 }; --Flame-Infused Sceptre
		{ itemID = 11623, groupID = 1, refLootEntry = 9319 }; --Spritecaster Cape
		{ itemID = 11624, groupID = 1, refLootEntry = 9018 }; --Kentic Amice
		{ itemID = 11625, groupID = 1, refLootEntry = 9018 }; --Enthralled Sphere
		{ itemID = 11626, groupID = 1, refLootEntry = 9018 }; --Blackveil Cape
		{ itemID = 11627, groupID = 1, refLootEntry = 9319 }; --Fleetfoot Greaves
		{ itemID = 11628, groupID = 1, refLootEntry = 9319 }; --Houndmaster's Bow
		{ itemID = 11629, groupID = 1, refLootEntry = 9319 }; --Houndmaster's Rifle
		{ itemID = 11631, groupID = 1, refLootEntry = 9025 }; --Stoneshell Guard
		{ itemID = 11632, groupID = 1, refLootEntry = 9025 }; --Earthslag Shoulders
		{ itemID = 11636, groupID = 2, refLootEntry = 15690 }; --Talisman of Disonnance
		{ itemID = 11637, groupID = 2, refLootEntry = 17225 }; --Covenant of Steel and Flame
		{ itemID = 11638, groupID = 2, refLootEntry = 15690 }; --Darkened Boots of the Nathrezim
		{ itemID = 11639, groupID = 2, refLootEntry = 19044 }; --Cloak of Brutal Winds
		{ itemID = 11640, groupID = 1, refLootEntry = 16816 }; --Bindings of Mystic Might
		{ itemID = 11650, groupID = 1, refLootEntry = 15689 }; --Girdle of Unbound Forces
		{ itemID = 11651, groupID = 1, refLootEntry = 15689 }; --Belt of Whirling Shadows
		{ itemID = 11652, groupID = 1, refLootEntry = 16457 }; --Boots of Sinister Grace
		{ itemID = 11669, groupID = 1, refLootEntry = 8983 }; --Naglering
		{ itemID = 11680, groupID = 2, refLootEntry = 18831 }; --Boots of Converging Paths
		{ itemID = 11684, groupID = 1, refLootEntry = 9019 }; --Ironfoe
		{ itemID = 11687, groupID = 4, refLootEntry = 17257 }; --Ring of Hellfire Might
		{ itemID = 11688, groupID = 3, refLootEntry = 19044 }; --Signet of Elemental Savagery
		{ itemID = 1169, groupID = 1, refLootEntry = 24082 }; --Blackskull Shield
		{ itemID = 11735, groupID = 1, refLootEntry = 9537 }; --Ragefury Eyepatch
		{ itemID = 11744, groupID = 1, refLootEntry = 9502 }; --Bloodfist
		{ itemID = 11745, groupID = 1, refLootEntry = 9502 }; --Fists of Phalanx
		{ itemID = 11746, groupID = 1, refLootEntry = 9938 }; --Golem Skull Helm
		{ itemID = 11747, groupID = 1, refLootEntry = 9024 }; --Flamestrider Robes
		{ itemID = 11748, groupID = 1, refLootEntry = 9024 }; --Pyric Caduceus
		{ itemID = 11749, groupID = 1, refLootEntry = 9024 }; --Searingscale Leggings
		{ itemID = 11750, groupID = 1, refLootEntry = 9024 }; --Kindling Stave
		{ itemID = 11755, groupID = 1, refLootEntry = 9042 }; --Verek's Collar
		{ itemID = 11764, groupID = 1, refLootEntry = 9017 }; --Cinderhide Armsplints
		{ itemID = 11765, groupID = 1, refLootEntry = 9017 }; --Pyremail Wristguards
		{ itemID = 11766, groupID = 1, refLootEntry = 9017 }; --Flameweave Cuffs
		{ itemID = 11767, groupID = 1, refLootEntry = 9017 }; --Emberplate Armguards
		{ itemID = 11768, groupID = 1, refLootEntry = 9017 }; --Incendic Bracers
		{ itemID = 11782, groupID = 1, refLootEntry = 9041 }; --Boreal Mantle
		{ itemID = 11783, groupID = 1, refLootEntry = 9041 }; --Chillsteel Girdle
		{ itemID = 11784, groupID = 1, refLootEntry = 9041 }; --Arbiter's Blade
		{ itemID = 11785, groupID = 1, refLootEntry = 8923 }; --Rock Golem Bulwark
		{ itemID = 11786, groupID = 1, refLootEntry = 8923 }; --Stone of the Earth
		{ itemID = 11787, groupID = 1, refLootEntry = 8923 }; --Shalehusk Boots
		{ itemID = 11797, groupID = 1, refLootEntry = 16816 }; --Ring of Shadowed Precision
		{ itemID = 11802, groupID = 1, refLootEntry = 9016 }; --Lavacrest Leggings
		{ itemID = 11803, groupID = 1, refLootEntry = 9016 }; --Force of Magma
		{ itemID = 11805, groupID = 1, refLootEntry = 9016 }; --Rubidium Hammer
		{ itemID = 11807, groupID = 1, refLootEntry = 9016 }; --Sash of the Burning Heart
		{ itemID = 11808, groupID = 1, refLootEntry = 9156 }; --Circle of Flame
		{ itemID = 11809, groupID = 1, refLootEntry = 9156 }; --Flame Wrath
		{ itemID = 11810, groupID = 1, refLootEntry = 9033 }; --Force of Will
		{ itemID = 11812, groupID = 1, refLootEntry = 9156 }; --Cape of the Fire Salamander
		{ itemID = 11814, groupID = 1, refLootEntry = 9156 }; --Molten Fists
		{ itemID = 11815, groupID = 1, refLootEntry = 9019 }; --Hand of Justice
		{ itemID = 11816, groupID = 1, refLootEntry = 9033 }; --Angerforge's Battle Axe
		{ itemID = 11817, groupID = 1, refLootEntry = 9033 }; --Lord General's Sword
		{ itemID = 11819, groupID = 1, refLootEntry = 8983 }; --Second Wind
		{ itemID = 11820, groupID = 1, refLootEntry = 9033 }; --Royal Decorated Armor
		{ itemID = 11821, groupID = 1, refLootEntry = 9033 }; --Warstrife Leggings
		{ itemID = 11822, groupID = 1, refLootEntry = 8983 }; --Omnicast Boots
		{ itemID = 11823, groupID = 1, refLootEntry = 8983 }; --Luminary Kilt
		{ itemID = 11832, groupID = 1, refLootEntry = 9156 }; --Burst of Knowledge
		{ itemID = 11839, groupID = 1, refLootEntry = 9056 }; --Chief Architect's Monocle
		{ itemID = 11840, groupID = 0, refLootEntry = 0 }; --Master Builder's Shirt
		{ itemID = 11841, groupID = 1, refLootEntry = 9056 }; --Senior Designer's Pantaloons
		{ itemID = 11842, groupID = 1, refLootEntry = 9056 }; --Lead Surveyor's Mantle
		{ itemID = 11924, groupID = 1, refLootEntry = 9019 }; --Robes of the Royal Crown
		{ itemID = 11928, groupID = 1, refLootEntry = 9019 }; --Thaurissan's Royal Scepter
		{ itemID = 11930, groupID = 1, refLootEntry = 9019 }; --The Emperor's New Cape
		{ itemID = 11931, groupID = 1, refLootEntry = 9019 }; --Dreadforge Retaliator
		{ itemID = 11932, groupID = 1, refLootEntry = 9019 }; --Guiding Stave of Wisdom
		{ itemID = 11933, groupID = 1, refLootEntry = 9019 }; --Imperial Jewel
		{ itemID = 11934, groupID = 1, refLootEntry = 9019 }; --Emperor's Seal
		{ itemID = 11935, groupID = 1, refLootEntry = 9938 }; --Magmus Stone
		{ itemID = 12084, groupID = 2, refLootEntry = 16524 }; --Drape of the Stormbreaker
		{ itemID = 12085, groupID = 3, refLootEntry = 17257 }; --Bracers of Demonic Prowess
		{ itemID = 12086, groupID = 2, refLootEntry = 18831 }; --Choker of Primal Wrath
		{ itemID = 12087, groupID = 1, refLootEntry = 17225 }; --Nightpiercer
		{ itemID = 12088, groupID = 3, refLootEntry = 19044 }; --Spinepiercer
		{ itemID = 12089, groupID = 2, refLootEntry = 15688 }; --Sanguine Spellfang
		{ itemID = 12090, groupID = 2, refLootEntry = 18831 }; --Spellbreaker’s Edge
		{ itemID = 12116, groupID = 2, refLootEntry = 18831 }; --Blindeye's Insightful Ward
		{ itemID = 12123, groupID = 3, refLootEntry = 15690 }; --Razorwind
		{ itemID = 12124, groupID = 2, refLootEntry = 18831 }; --Gar Maul
		{ itemID = 12125, groupID = 2, refLootEntry = 21214 }; --Maul of the Bloodied Depths
		{ itemID = 12126, groupID = 2, refLootEntry = 21217 }; --Bracers of Abyssal Might
		{ itemID = 12127, groupID = 5, refLootEntry = 19622 }; --Bindings of the Eternal Flame
		{ itemID = 12128, groupID = 2, refLootEntry = 21215 }; --Boots of Inner Torment
		{ itemID = 12129, groupID = 2, refLootEntry = 21215 }; --Dreadstep Sabatons
		{ itemID = 12148, groupID = 4, refLootEntry = 21212 }; --Ring of Tidal Precision
		{ itemID = 12149, groupID = 2, refLootEntry = 21216 }; --Ring of Unstable Currents
		{ itemID = 12150, groupID = 2, refLootEntry = 19516 }; --Voidforged Band
		{ itemID = 12151, groupID = 4, refLootEntry = 21212 }; --Tidebound Bow
		{ itemID = 12153, groupID = 1, refLootEntry = 19514 }; --Phoenixfire Drape
		{ itemID = 12154, groupID = 2, refLootEntry = 21214 }; --Belt of Submerged Might
		{ itemID = 12155, groupID = 2, refLootEntry = 19514 }; --Girdle of the Eternal Blaze
		{ itemID = 12165, groupID = 2, refLootEntry = 21217 }; --Amulet of Tidal Fury
		{ itemID = 12166, groupID = 2, refLootEntry = 18805 }; --Choker of Fallen Stars
		{ itemID = 12167, groupID = 2, refLootEntry = 18805 }; --Astromancer's Fury
		{ itemID = 12168, groupID = 2, refLootEntry = 19514 }; --Ashen Talon
		{ itemID = 12193, groupID = 2, refLootEntry = 21213 }; --Maul of Glacial Waves
		{ itemID = 12194, groupID = 3, refLootEntry = 21212 }; --Tideforged Maul
		{ itemID = 12243, groupID = 1, refLootEntry = 35011 }; --Smoldering Claw
		{ itemID = 12265, groupID = 3, refLootEntry = 23863 }; --Hook of the Wild Hunt
		{ itemID = 12266, groupID = 2, refLootEntry = 23576 }; --Savage Spirit Mask
		{ itemID = 12267, groupID = 2, refLootEntry = 23576 }; --Savage Guardian Helm
		{ itemID = 12268, groupID = 2, refLootEntry = 23574 }; --Windspeaker's Mantle
		{ itemID = 12269, groupID = 2, refLootEntry = 23574 }; --Windcaller's Pauldrons
		{ itemID = 12270, groupID = 2, refLootEntry = 23578 }; --Flamewoven Hauberk
		{ itemID = 12271, groupID = 2, refLootEntry = 23578 }; --Blazeforged Breastplate
		{ itemID = 12272, groupID = 2, refLootEntry = 23577 }; --Claws of the Wildstalker
		{ itemID = 12305, groupID = 2, refLootEntry = 23577 }; --Gauntlets of the Primal Strike
		{ itemID = 12306, groupID = 2, refLootEntry = 17808 }; --Mantle of Glimmering Dreams
		{ itemID = 12307, groupID = 2, refLootEntry = 17808 }; --Dreadforge Pauldrons
		{ itemID = 12308, groupID = 2, refLootEntry = 17842 }; --Infernal Stalker’s Hauberk
		{ itemID = 12309, groupID = 2, refLootEntry = 17842 }; --Plates of Eternal Fury
		{ itemID = 12310, groupID = 2, refLootEntry = 17888 }; --Felstrider Boots
		{ itemID = 12311, groupID = 2, refLootEntry = 17767 }; --Boneclad Girdle
		{ itemID = 12312, groupID = 4, refLootEntry = 17968 }; --Worldbreaker’s Edge
		{ itemID = 12313, groupID = 4, refLootEntry = 17968 }; --The Defiler's Cudgel
		{ itemID = 12386, groupID = 4, refLootEntry = 17968 }; --Ring of the Stormborn
		{ itemID = 12387, groupID = 4, refLootEntry = 17968 }; --Signet of Shattered Valor
		{ itemID = 12388, groupID = 2, refLootEntry = 92179 }; --Pendant of Temporal Flux
		{ itemID = 12389, groupID = 2, refLootEntry = 92179 }; --Pendant of Timeless Might
		{ itemID = 12390, groupID = 3, refLootEntry = 14517 }; --Battleweaver's Spaulders
		{ itemID = 12391, groupID = 3, refLootEntry = 14517 }; --Battleweaver's Armor
		{ itemID = 12462, groupID = 1, refLootEntry = 35012 }; --Embrace of the Wind Serpent
		{ itemID = 12463, groupID = 1, refLootEntry = 35011 }; --Drakefang Butcher
		{ itemID = 12464, groupID = 1, refLootEntry = 35011 }; --Bloodfire Talons
		{ itemID = 12465, groupID = 1, refLootEntry = 35011 }; --Nightfall Drape
		{ itemID = 12466, groupID = 1, refLootEntry = 35011 }; --Dawnspire Cord
		{ itemID = 12470, groupID = 0, refLootEntry = 0 }; --Sandstalker Ankleguards
		{ itemID = 12471, groupID = 0, refLootEntry = 0 }; --Desertwalker Cane
		{ itemID = 12473, groupID = 3, refLootEntry = 14517 }; --Battleweaver's Wristguards
		{ itemID = 12503, groupID = 1, refLootEntry = 15114 }; --Battleweaver's Necklace
		{ itemID = 12504, groupID = 1, refLootEntry = 340000 }; --Battleweaver's Medallion
		{ itemID = 12553, groupID = 1, refLootEntry = 8929 }; --Swiftwalker Boots
		{ itemID = 12554, groupID = 1, refLootEntry = 8929 }; --Hands of the Exalted Herald
		{ itemID = 12556, groupID = 1, refLootEntry = 8929 }; --High Priestess Boots
		{ itemID = 12557, groupID = 1, refLootEntry = 8929 }; --Ebonsteel Spaulders
		{ itemID = 12571, groupID = 2, refLootEntry = 22948 }; --Bloodboil Breaker
		{ itemID = 12572, groupID = 3, refLootEntry = 11502 }; --Veil of Flame Worshipper
		{ itemID = 12573, groupID = 2, refLootEntry = 11982 }; --Corebound Shoulders
		{ itemID = 12582, groupID = 1, refLootEntry = 9237 }; --Keris of Zul'Serak
		{ itemID = 12583, groupID = 1, refLootEntry = 10429 }; --Blackhand Doomsaw
		{ itemID = 12587, groupID = 1, refLootEntry = 10429 }; --Eye of Rend
		{ itemID = 12588, groupID = 1, refLootEntry = 10429 }; --Bonespike Shoulder
		{ itemID = 12589, groupID = 1, refLootEntry = 10264 }; --Dustfeather Sash
		{ itemID = 12590, groupID = 1, refLootEntry = 10429 }; --Felstriker
		{ itemID = 12592, groupID = 1, refLootEntry = 10363 }; --Blackblade of Shahram
		{ itemID = 12594, groupID = 2, refLootEntry = 12259 }; --Flamewalker Shoulderguards
		{ itemID = 12595, groupID = 2, refLootEntry = 12098 }; --Flamebound Harness
		{ itemID = 12596, groupID = 4, refLootEntry = 10184 }; --Charred Breastplate
		{ itemID = 12597, groupID = 2, refLootEntry = 12264 }; --Embercloth Robe
		{ itemID = 12598, groupID = 2, refLootEntry = 12118 }; --Flametouched Leggings
		{ itemID = 12599, groupID = 2, refLootEntry = 12118 }; --Flameguard Legguards
		{ itemID = 12602, groupID = 1, refLootEntry = 10363 }; --Draconian Deflector
		{ itemID = 12603, groupID = 1, refLootEntry = 10264 }; --Nightbrace Tunic
		{ itemID = 12604, groupID = 1, refLootEntry = 10509 }; --Starfire Tiara
		{ itemID = 12605, groupID = 1, refLootEntry = 10509 }; --Serpentine Skuller
		{ itemID = 12606, groupID = 1, refLootEntry = 10264 }; --Crystallized Girdle
		{ itemID = 12608, groupID = 1, refLootEntry = 9219 }; --Butcher's Apron
		{ itemID = 12609, groupID = 1, refLootEntry = 10264 }; --Polychromatic Visionwrap
		{ itemID = 12621, groupID = 1, refLootEntry = 9596 }; --Demonfork
		{ itemID = 12626, groupID = 1, refLootEntry = 9236 }; --Funeral Cuffs
		{ itemID = 12634, groupID = 1, refLootEntry = 9596 }; --Chiselbrand Girdle
		{ itemID = 12637, groupID = 1, refLootEntry = 9596 }; --Backusarian Gauntlets
		{ itemID = 12651, groupID = 1, refLootEntry = 9236 }; --Blackcrow
		{ itemID = 12653, groupID = 1, refLootEntry = 9236 }; --Riphook
		{ itemID = 12709, groupID = 1, refLootEntry = 10430 }; --Finkle's Skinner
		{ itemID = 12791, groupID = 1, refLootEntry = 9499 }; --Barman Shanker
		{ itemID = 12793, groupID = 1, refLootEntry = 9499 }; --Mixologist's Tunic
		{ itemID = 12872, groupID = 2, refLootEntry = 12098 }; --Blazing Slippers
		{ itemID = 12905, groupID = 1, refLootEntry = 9816 }; --Wildfire Cape
		{ itemID = 12908, groupID = 2, refLootEntry = 11988 }; --Magma Forged Walkers
		{ itemID = 12909, groupID = 2, refLootEntry = 12264 }; --Embercloth Wraps
		{ itemID = 12910, groupID = 2, refLootEntry = 12259 }; --Molten Slugtosser
		{ itemID = 12911, groupID = 2, refLootEntry = 12264 }; --Magma-forged Throwing Knife
		{ itemID = 12926, groupID = 1, refLootEntry = 9816 }; --Flaming Band
		{ itemID = 12927, groupID = 1, refLootEntry = 9816 }; --Truestrike Shoulders
		{ itemID = 12929, groupID = 1, refLootEntry = 9816 }; --Emberfury Talisman
		{ itemID = 12930, groupID = 1, refLootEntry = 10509 }; --Briarwood Reed
		{ itemID = 12935, groupID = 1, refLootEntry = 10429 }; --Warmaster Legguards
		{ itemID = 12936, groupID = 1, refLootEntry = 10429 }; --Battleborn Armbraces
		{ itemID = 12939, groupID = 1, refLootEntry = 10429 }; --Dal'Rend's Tribal Guardian
		{ itemID = 12940, groupID = 1, refLootEntry = 10429 }; --Dal'Rend's Sacred Charge
		{ itemID = 12952, groupID = 1, refLootEntry = 10429 }; --Gyth's Skull
		{ itemID = 12953, groupID = 1, refLootEntry = 10429 }; --Dragoneye Coif
		{ itemID = 12960, groupID = 1, refLootEntry = 10429 }; --Tribal War Feathers
		{ itemID = 12963, groupID = 1, refLootEntry = 10430 }; --Blademaster Leggings
		{ itemID = 12964, groupID = 1, refLootEntry = 10430 }; --Tristam Legguards
		{ itemID = 12965, groupID = 1, refLootEntry = 10430 }; --Spiritshroud Leggings
		{ itemID = 12966, groupID = 1, refLootEntry = 10430 }; --Blackmist Armguards
		{ itemID = 12967, groupID = 1, refLootEntry = 10430 }; --Bloodmoon Cloak
		{ itemID = 12968, groupID = 1, refLootEntry = 10430 }; --Frostweaver Cape
		{ itemID = 12969, groupID = 1, refLootEntry = 10430 }; --Seeping Willow
		{ itemID = 13008, groupID = 1, refLootEntry = 24028 }; --Dalewind Trousers
		{ itemID = 13014, groupID = 1, refLootEntry = 24028 }; --Axe of Rin'ji
		{ itemID = 13018, groupID = 1, refLootEntry = 24046 }; --Executioner's Cleaver
		{ itemID = 13027, groupID = 1, refLootEntry = 24028 }; --Bonesnapper
		{ itemID = 13029, groupID = 1, refLootEntry = 24040 }; --Umbral Crystal
		{ itemID = 13035, groupID = 1, refLootEntry = 24046 }; --Serpent Slicer
		{ itemID = 13039, groupID = 1, refLootEntry = 24046 }; --Skull Splitting Crossbow
		{ itemID = 13043, groupID = 1, refLootEntry = 24046 }; --Blade of the Titans
		{ itemID = 13052, groupID = 1, refLootEntry = 24028 }; --Warmonger
		{ itemID = 13055, groupID = 1, refLootEntry = 24046 }; --Bonechewer
		{ itemID = 13059, groupID = 1, refLootEntry = 24028 }; --Stoneraven
		{ itemID = 13064, groupID = 1, refLootEntry = 24040 }; --Jaina's Firestarter
		{ itemID = 13073, groupID = 1, refLootEntry = 24028 }; --Mugthol's Helm
		{ itemID = 13076, groupID = 1, refLootEntry = 24046 }; --Giantslayer Bracers
		{ itemID = 13089, groupID = 1, refLootEntry = 24046 }; --Skibi's Pendant
		{ itemID = 13098, groupID = 1, refLootEntry = 10363 }; --Painweaver Band
		{ itemID = 13109, groupID = 1, refLootEntry = 24046 }; --Blackflame Cape
		{ itemID = 13112, groupID = 1, refLootEntry = 24046 }; --Winged Helm
		{ itemID = 13117, groupID = 1, refLootEntry = 24040 }; --Ogron's Sash
		{ itemID = 13126, groupID = 1, refLootEntry = 24028 }; --Battlecaller Gauntlets
		{ itemID = 13132, groupID = 1, refLootEntry = 24040 }; --Skeletal Shoulders
		{ itemID = 13134, groupID = 1, refLootEntry = 24046 }; --Belt of the Gladiator
		{ itemID = 13138, groupID = 1, refLootEntry = 24040 }; --The Silencer
		{ itemID = 13141, groupID = 1, refLootEntry = 10363 }; --Tooth of Gnarr
		{ itemID = 13142, groupID = 1, refLootEntry = 10363 }; --Brigam Girdle
		{ itemID = 13143, groupID = 1, refLootEntry = 9568 }; --Mark of the Dragon Lord
		{ itemID = 13144, groupID = 1, refLootEntry = 24028 }; --Serenity Belt
		{ itemID = 13148, groupID = 1, refLootEntry = 9568 }; --Chillpike
		{ itemID = 1315, groupID = 1, refLootEntry = 24084 }; --Lei of Lilies
		{ itemID = 13161, groupID = 1, refLootEntry = 9568 }; --Trindlehaven Staff
		{ itemID = 13162, groupID = 1, refLootEntry = 9568 }; --Reiver Claws
		{ itemID = 13163, groupID = 1, refLootEntry = 9568 }; --Relentless Scythe
		{ itemID = 13164, groupID = 1, refLootEntry = 9568 }; --Heart of the Scale
		{ itemID = 13166, groupID = 1, refLootEntry = 9196 }; --Slamshot Shoulders
		{ itemID = 13167, groupID = 1, refLootEntry = 9196 }; --Fist of Omokk
		{ itemID = 13168, groupID = 1, refLootEntry = 9196 }; --Plate of the Shaman King
		{ itemID = 13169, groupID = 1, refLootEntry = 9196 }; --Tressermane Leggings
		{ itemID = 13170, groupID = 1, refLootEntry = 9196 }; --Skyshroud Leggings
		{ itemID = 13177, groupID = 1, refLootEntry = 9237 }; --Talisman of Evasion
		{ itemID = 13178, groupID = 1, refLootEntry = 10584 }; --Rosewine Circle
		{ itemID = 13179, groupID = 1, refLootEntry = 9237 }; --Brazecore Armguards
		{ itemID = 13181, groupID = 1, refLootEntry = 10263 }; --Demonskin Gloves
		{ itemID = 13182, groupID = 1, refLootEntry = 10263 }; --Phase Blade
		{ itemID = 13183, groupID = 1, refLootEntry = 10596 }; --Venomspitter
		{ itemID = 13184, groupID = 1, refLootEntry = 10376 }; --Fallbrush Handgrips
		{ itemID = 13185, groupID = 1, refLootEntry = 10376 }; --Sunderseer Mantle
		{ itemID = 13198, groupID = 1, refLootEntry = 9718 }; --Hurd Smasher
		{ itemID = 13203, groupID = 1, refLootEntry = 9718 }; --Armswake Cloak
		{ itemID = 13204, groupID = 1, refLootEntry = 9718 }; --Bashguuder
		{ itemID = 13205, groupID = 1, refLootEntry = 10268 }; --Rhombeard Protector
		{ itemID = 13206, groupID = 1, refLootEntry = 10268 }; --Wolfshear Leggings
		{ itemID = 13208, groupID = 1, refLootEntry = 10268 }; --Bleak Howler Armguards
		{ itemID = 13210, groupID = 1, refLootEntry = 10220 }; --Pads of the Dread Wolf
		{ itemID = 13211, groupID = 1, refLootEntry = 10220 }; --Slashclaw Bracers
		{ itemID = 13212, groupID = 1, refLootEntry = 10220 }; --Halycon's Spiked Collar
		{ itemID = 13213, groupID = 1, refLootEntry = 10596 }; --Smolderweb's Eye
		{ itemID = 13218, groupID = 1, refLootEntry = 10376 }; --Fang of the Crystal Spider
		{ itemID = 13244, groupID = 1, refLootEntry = 10596 }; --Gilded Gauntlets
		{ itemID = 13245, groupID = 1, refLootEntry = 3653 }; --Kresh's Back
		{ itemID = 13252, groupID = 1, refLootEntry = 9736 }; --Cloudrunner Girdle
		{ itemID = 13253, groupID = 1, refLootEntry = 9736 }; --Hands of Power
		{ itemID = 13255, groupID = 1, refLootEntry = 9236 }; --Trueaim Gauntlets
		{ itemID = 13257, groupID = 1, refLootEntry = 9236 }; --Demonic Runed Spaulders
		{ itemID = 13258, groupID = 1, refLootEntry = 10584 }; --Slaghide Gauntlets
		{ itemID = 13259, groupID = 1, refLootEntry = 10584 }; --Ribsteel Footguards
		{ itemID = 13261, groupID = 1, refLootEntry = 9217 }; --Globe of D'sak
		{ itemID = 13282, groupID = 1, refLootEntry = 9217 }; --Ogreseer Tower Boots
		{ itemID = 13283, groupID = 1, refLootEntry = 9217 }; --Magus Ring
		{ itemID = 13284, groupID = 1, refLootEntry = 9218 }; --Swiftdart Battleboots
		{ itemID = 13285, groupID = 1, refLootEntry = 9218 }; --The Blackrock Slicer
		{ itemID = 13286, groupID = 1, refLootEntry = 9219 }; --Rivenspike
		{ itemID = 13314, groupID = 1, refLootEntry = 10508 }; --Alanna's Embrace
		{ itemID = 13340, groupID = 1, refLootEntry = 10440 }; --Cape of the Black Baron
		{ itemID = 13344, groupID = 1, refLootEntry = 10440 }; --Dracorian Gauntlets
		{ itemID = 13345, groupID = 1, refLootEntry = 10440 }; --Seal of Rivendare
		{ itemID = 13346, groupID = 1, refLootEntry = 10440 }; --Robes of the Exalted
		{ itemID = 13349, groupID = 1, refLootEntry = 10440 }; --Scepter of the Unholy
		{ itemID = 13361, groupID = 1, refLootEntry = 10440 }; --Skullforge Reaver
		{ itemID = 13368, groupID = 1, refLootEntry = 10440 }; --Bonescraper
		{ itemID = 13371, groupID = 1, refLootEntry = 10264 }; --Father Flame
		{ itemID = 13376, groupID = 1, refLootEntry = 10435 }; --Royal Tribunal Cloak
		{ itemID = 13378, groupID = 1, refLootEntry = 10558 }; --Songbird Blouse
		{ itemID = 13379, groupID = 1, refLootEntry = 10558 }; --Piccolo of the Flaming Fire
		{ itemID = 13380, groupID = 1, refLootEntry = 10997 }; --Willey's Portable Howitzer
		{ itemID = 13381, groupID = 1, refLootEntry = 10997 }; --Master Cannoneer Boots
		{ itemID = 13382, groupID = 1, refLootEntry = 10997 }; --Cannonball Runner
		{ itemID = 13383, groupID = 1, refLootEntry = 10558 }; --Woollies of the Prancing Minstrel
		{ itemID = 13384, groupID = 1, refLootEntry = 10558 }; --Rainbow Girdle
		{ itemID = 13385, groupID = 1, refLootEntry = 10811 }; --Tome of Knowledge
		{ itemID = 13386, groupID = 1, refLootEntry = 10811 }; --Archivist Cape
		{ itemID = 13387, groupID = 1, refLootEntry = 10811 }; --Foresight Girdle
		{ itemID = 13394, groupID = 1, refLootEntry = 10393 }; --Skul's Cold Embrace
		{ itemID = 13395, groupID = 1, refLootEntry = 10393 }; --Skul's Fingerbone Claws
		{ itemID = 13396, groupID = 1, refLootEntry = 10393 }; --Skul's Ghastly Touch
		{ itemID = 13397, groupID = 1, refLootEntry = 10809 }; --Stoneskin Gargoyle Cape
		{ itemID = 13399, groupID = 1, refLootEntry = 10809 }; --Gargoyle Shredder Talons
		{ itemID = 13404, groupID = 1, refLootEntry = 10516 }; --Mask of the Unforgiven
		{ itemID = 13405, groupID = 1, refLootEntry = 10516 }; --Wailing Nightbane Pauldrons
		{ itemID = 13408, groupID = 1, refLootEntry = 10516 }; --Soul Breaker
		{ itemID = 13409, groupID = 1, refLootEntry = 10516 }; --Tearfall Bracers
		{ itemID = 13498, groupID = 1, refLootEntry = 10899 }; --Handcrafted Mastersmith Leggings
		{ itemID = 13502, groupID = 1, refLootEntry = 10899 }; --Handcrafted Mastersmith Girdle
		{ itemID = 13505, groupID = 1, refLootEntry = 10440 }; --Runeblade of Baron Rivendare
		{ itemID = 13525, groupID = 2, refLootEntry = 10438 }; --Darkbind Fingers
		{ itemID = 13526, groupID = 2, refLootEntry = 10438 }; --Flamescarred Girdle
		{ itemID = 13527, groupID = 2, refLootEntry = 10438 }; --Lavawalker Greaves
		{ itemID = 13528, groupID = 2, refLootEntry = 10438 }; --Twilight Void Bracers
		{ itemID = 13529, groupID = 1, refLootEntry = 10437 }; --Husk of Nerub'enkan
		{ itemID = 13530, groupID = 2, refLootEntry = 10437 }; --Fangdrip Runners
		{ itemID = 13531, groupID = 2, refLootEntry = 10437 }; --Crypt Stalker Leggings
		{ itemID = 13532, groupID = 2, refLootEntry = 10437 }; --Darkspinner Claws
		{ itemID = 13533, groupID = 2, refLootEntry = 10437 }; --Acid-etched Pauldrons
		{ itemID = 13534, groupID = 1, refLootEntry = 10436 }; --Banshee Finger
		{ itemID = 13535, groupID = 2, refLootEntry = 10436 }; --Coldtouch Phantom Wraps
		{ itemID = 13537, groupID = 2, refLootEntry = 10436 }; --Chillhide Bracers
		{ itemID = 13538, groupID = 2, refLootEntry = 10436 }; --Windshrieker Pauldrons
		{ itemID = 13539, groupID = 2, refLootEntry = 10436 }; --Banshee's Touch
		{ itemID = 13635, groupID = 1, refLootEntry = 13020 }; --Dragonrider's Crown
		{ itemID = 13636, groupID = 2, refLootEntry = 14020 }; --Dragonsbane Headguard
		{ itemID = 13826, groupID = 1, refLootEntry = 12435 }; --Dragon Hunter's Mantle
		{ itemID = 13952, groupID = 1, refLootEntry = 10508 }; --Iceblade Hacker
		{ itemID = 13954, groupID = 1, refLootEntry = 10809 }; --Verdant Footpads
		{ itemID = 14000, groupID = 2, refLootEntry = 13020 }; --Ring of Trinity Force
		{ itemID = 14145, groupID = 1, refLootEntry = 11520 }; --Cursed Felblade
		{ itemID = 14147, groupID = 1, refLootEntry = 17830 }; --Cavedweller Bracers
		{ itemID = 14148, groupID = 1, refLootEntry = 17830 }; --Crystalline Cuffs
		{ itemID = 14149, groupID = 1, refLootEntry = 11517 }; --Subterranean Cape
		{ itemID = 14150, groupID = 1, refLootEntry = 11518 }; --Robe of Evocation
		{ itemID = 14151, groupID = 1, refLootEntry = 11519 }; --Chanting Blade
		{ itemID = 14340, groupID = 1, refLootEntry = 10508 }; --Freezing Lich Robes
		{ itemID = 1447, groupID = 1, refLootEntry = 24082 }; --Ring of Saviors
		{ itemID = 14487, groupID = 1, refLootEntry = 10508 }; --Bonechill Hammer
		{ itemID = 14502, groupID = 1, refLootEntry = 10508 }; --Frostbite Girdle
		{ itemID = 14503, groupID = 1, refLootEntry = 10508 }; --Death's Clutch
		{ itemID = 14522, groupID = 1, refLootEntry = 10508 }; --Maelstrom Leggings
		{ itemID = 14525, groupID = 1, refLootEntry = 10508 }; --Boneclenched Gauntlets
		{ itemID = 14528, groupID = 1, refLootEntry = 11622 }; --Rattlecage Buckler
		{ itemID = 14531, groupID = 1, refLootEntry = 11622 }; --Frightskull Shaft
		{ itemID = 14536, groupID = 1, refLootEntry = 12501 }; --Bonebrace Hauberk
		{ itemID = 14537, groupID = 1, refLootEntry = 11622 }; --Corpselight Greaves
		{ itemID = 14538, groupID = 1, refLootEntry = 11622 }; --Deadwalker Mantle
		{ itemID = 14539, groupID = 1, refLootEntry = 11622 }; --Bone Ring Helm
		{ itemID = 1454, groupID = 1, refLootEntry = 12902 }; --Axe of the Enforcer
		{ itemID = 14541, groupID = 1, refLootEntry = 10503 }; --Barovian Family Sword
		{ itemID = 14545, groupID = 1, refLootEntry = 10503 }; --Ghostloom Leggings
		{ itemID = 14548, groupID = 1, refLootEntry = 10503 }; --Royal Cap Spaulders
		{ itemID = 14549, groupID = 1, refLootEntry = 24081 }; --Boots of Avoidance
		{ itemID = 14551, groupID = 1, refLootEntry = 24083 }; --Edgemaster's Handguards
		{ itemID = 14577, groupID = 1, refLootEntry = 10432 }; --Skullsmoke Pants
		{ itemID = 14611, groupID = 1, refLootEntry = 11261 }; --Bloodmail Hauberk
		{ itemID = 14612, groupID = 1, refLootEntry = 11261 }; --Bloodmail Legguards
		{ itemID = 14614, groupID = 1, refLootEntry = 11261 }; --Bloodmail Belt
		{ itemID = 14615, groupID = 1, refLootEntry = 11261 }; --Bloodmail Gauntlets
		{ itemID = 14616, groupID = 1, refLootEntry = 11261 }; --Bloodmail Boots
		{ itemID = 14617, groupID = 0, refLootEntry = 0 }; --Sawbones Shirt
		{ itemID = 14620, groupID = 1, refLootEntry = 11261 }; --Deathbone Girdle
		{ itemID = 14621, groupID = 1, refLootEntry = 11261 }; --Deathbone Sabatons
		{ itemID = 14622, groupID = 1, refLootEntry = 11261 }; --Deathbone Gauntlets
		{ itemID = 14623, groupID = 1, refLootEntry = 11261 }; --Deathbone Legguards
		{ itemID = 14624, groupID = 1, refLootEntry = 11261 }; --Deathbone Chestplate
		{ itemID = 14626, groupID = 1, refLootEntry = 11261 }; --Necropile Robe
		{ itemID = 14629, groupID = 1, refLootEntry = 11261 }; --Necropile Cuffs
		{ itemID = 14631, groupID = 1, refLootEntry = 11261 }; --Necropile Boots
		{ itemID = 14632, groupID = 1, refLootEntry = 11261 }; --Necropile Leggings
		{ itemID = 14633, groupID = 1, refLootEntry = 11261 }; --Necropile Mantle
		{ itemID = 14636, groupID = 1, refLootEntry = 11261 }; --Cadaverous Belt
		{ itemID = 14637, groupID = 1, refLootEntry = 11261 }; --Cadaverous Armor
		{ itemID = 14638, groupID = 1, refLootEntry = 11261 }; --Cadaverous Leggings
		{ itemID = 14640, groupID = 1, refLootEntry = 11261 }; --Cadaverous Gloves
		{ itemID = 14641, groupID = 1, refLootEntry = 11261 }; --Cadaverous Walkers
		{ itemID = 1481, groupID = 1, refLootEntry = 12876 }; --Grimclaw
		{ itemID = 1486, groupID = 1, refLootEntry = 12902 }; --Tree Bark Jacket
		{ itemID = 1491, groupID = 1, refLootEntry = 12876 }; --Ring of Precision
		{ itemID = 14995, groupID = 2, refLootEntry = 14020 }; --Death Talon Tunic
		{ itemID = 14997, groupID = 2, refLootEntry = 13020 }; --Bindings of the Sand Keepers
		{ itemID = 15026, groupID = 2, refLootEntry = 12435 }; --Living Blood Gem
		{ itemID = 15027, groupID = 1, refLootEntry = 12435 }; --Soulsong Crystal
		{ itemID = 15028, groupID = 1, refLootEntry = 15339 }; --Time-Lost Pocketwatch
		{ itemID = 15029, groupID = 1, refLootEntry = 15517 }; --Aera's Poison Gland
		{ itemID = 15030, groupID = 2, refLootEntry = 16061 }; --Jagged Cold Steel Knife
		{ itemID = 15032, groupID = 2, refLootEntry = 15928 }; --Dislocated Spine
		{ itemID = 15033, groupID = 2, refLootEntry = 15990 }; --Staff of Twisted Dreams
		{ itemID = 15036, groupID = 2, refLootEntry = 15990 }; --Lordaeron's Lament
		{ itemID = 15041, groupID = 1, refLootEntry = 92179 }; --Key of Time
		{ itemID = 1506054, groupID = 2, refLootEntry = 15339 }; --Sword of the Ruins
		{ itemID = 15225, groupID = 1, refLootEntry = 1221203 }; --Sequoia Hammer
		{ itemID = 15231, groupID = 1, refLootEntry = 1221203 }; --Splitting Hatchet
		{ itemID = 15232, groupID = 1, refLootEntry = 1221203 }; --Hacking Cleaver
		{ itemID = 15242, groupID = 1, refLootEntry = 1221203 }; --Honed Stiletto
		{ itemID = 15250, groupID = 1, refLootEntry = 1221203 }; --Glimmering Flamberge
		{ itemID = 15284, groupID = 1, refLootEntry = 1221203 }; --Long Battle Bow
		{ itemID = 15285, groupID = 1, refLootEntry = 1221203 }; --Archer's Longbow
		{ itemID = 15319, groupID = 2, refLootEntry = 12017 }; --Taut Dragonhide Bracers
		{ itemID = 15320, groupID = 1, refLootEntry = 12017 }; --Black Brood Wristguards
		{ itemID = 15711, groupID = 2, refLootEntry = 12018 }; --Volcanic Arbalest
		{ itemID = 15712, groupID = 4, refLootEntry = 11502 }; --Pyroclasmic Longbow
		{ itemID = 15717, groupID = 1, refLootEntry = 10185 }; --Drakon Soul Shard
		{ itemID = 15828, groupID = 2, refLootEntry = 92179 }; --Final Countdown Bands
		{ itemID = 15830, groupID = 2, refLootEntry = 92179 }; --Infinite Scale Talisman
		{ itemID = 15831, groupID = 1, refLootEntry = 92179 }; --Girdle of Falling Sand
		{ itemID = 15834, groupID = 1, refLootEntry = 92179 }; --Aetherflux Shroud
		{ itemID = 15835, groupID = 1, refLootEntry = 92179 }; --Time Reaver's Gown
		{ itemID = 15836, groupID = 2, refLootEntry = 92179 }; --Pendant of the Evil Twin
		{ itemID = 15838, groupID = 2, refLootEntry = 92179 }; --Flickering Amulet
		{ itemID = 15839, groupID = 1, refLootEntry = 92179 }; --Charm of the Chronomender
		{ itemID = 15840, groupID = 1, refLootEntry = 92179 }; --Timewaker's Treads
		{ itemID = 15896, groupID = 2, refLootEntry = 92179 }; --Cloak of the Final Hour
		{ itemID = 15898, groupID = 2, refLootEntry = 92179 }; --Hourglass Casing
		{ itemID = 15899, groupID = 1, refLootEntry = 92179 }; --Amulet of Futures Past
		{ itemID = 15956, groupID = 3, refLootEntry = 12057 }; --Heavy Boulder Totem
		{ itemID = 15957, groupID = 2, refLootEntry = 12264 }; --Overloaded Totem
		{ itemID = 15958, groupID = 2, refLootEntry = 12118 }; --The Water Duke's Stolen Totem
		{ itemID = 15959, groupID = 2, refLootEntry = 11982 }; --Idol of the Magma Beast
		{ itemID = 16010, groupID = 2, refLootEntry = 12098 }; --Eclipsing Rune of the Herald
		{ itemID = 16087, groupID = 2, refLootEntry = 12018 }; --Flamewalker's Rage Idol
		{ itemID = 16088, groupID = 1, refLootEntry = 64601 }; --Fang of the Mystics
		{ itemID = 16089, groupID = 0, refLootEntry = 64604 }; --Blazefury Medallion
		{ itemID = 16193, groupID = 0, refLootEntry = 64604 }; --Empyrean Demolisher
		{ itemID = 16256, groupID = 0, refLootEntry = 64604 }; --Amberseal Keeper
		{ itemID = 16257, groupID = 1, refLootEntry = 64601 }; --Eskhandar's Left Claw
		{ itemID = 16258, groupID = 0, refLootEntry = 64604 }; --Eskhandar's Pelt
		{ itemID = 16284, groupID = 1, refLootEntry = 64601 }; --Drape of Benediction
		{ itemID = 16609, groupID = 1, refLootEntry = 64601 }; --Puissant Cape
		{ itemID = 16624, groupID = 1, refLootEntry = 64601 }; --Typhoon
		{ itemID = 16625, groupID = 0, refLootEntry = 64604 }; --Ring of Entropy
		{ itemID = 16626, groupID = 0, refLootEntry = 64604 }; --Doomhide Gauntlets
		{ itemID = 16627, groupID = 1, refLootEntry = 64601 }; --Leggings of Arcane Supremacy
		{ itemID = 16666, groupID = 1, refLootEntry = 10363 }; --Vest of Elements
		{ itemID = 16668, groupID = 1, refLootEntry = 10440 }; --Kilt of Elements
		{ itemID = 16669, groupID = 1, refLootEntry = 10429 }; --Pauldrons of Elements
		{ itemID = 16670, groupID = 1, refLootEntry = 9196 }; --Boots of Elements
		{ itemID = 16671, groupID = 1, refLootEntry = 12500 }; --Bindings of Elements
		{ itemID = 16672, groupID = 1, refLootEntry = 9816 }; --Gauntlets of Elements
		{ itemID = 16674, groupID = 1, refLootEntry = 10363 }; --Beaststalker's Tunic
		{ itemID = 16675, groupID = 1, refLootEntry = 10437 }; --Beaststalker's Boots
		{ itemID = 16676, groupID = 1, refLootEntry = 9237 }; --Beaststalker's Gloves
		{ itemID = 16678, groupID = 1, refLootEntry = 10440 }; --Beaststalker's Pants
		{ itemID = 16679, groupID = 1, refLootEntry = 9568 }; --Beaststalker's Mantle
		{ itemID = 16681, groupID = 1, refLootEntry = 12500 }; --Beaststalker's Bindings
		{ itemID = 16682, groupID = 1, refLootEntry = 10558 }; --Magister's Boots
		{ itemID = 16684, groupID = 1, refLootEntry = 12501 }; --Magister's Gloves
		{ itemID = 16685, groupID = 1, refLootEntry = 12501 }; --Magister's Belt
		{ itemID = 16687, groupID = 1, refLootEntry = 10440 }; --Magister's Leggings
		{ itemID = 16688, groupID = 1, refLootEntry = 10363 }; --Magister's Robes
		{ itemID = 16689, groupID = 1, refLootEntry = 10508 }; --Magister's Mantle
		{ itemID = 16690, groupID = 1, refLootEntry = 10363 }; --Devout Robe
		{ itemID = 16691, groupID = 1, refLootEntry = 10438 }; --Devout Sandals
		{ itemID = 16692, groupID = 1, refLootEntry = 10811 }; --Devout Gloves
		{ itemID = 16694, groupID = 1, refLootEntry = 10440 }; --Devout Skirt
		{ itemID = 16695, groupID = 1, refLootEntry = 10264 }; --Devout Mantle
		{ itemID = 16697, groupID = 1, refLootEntry = 12500 }; --Devout Bracers
		{ itemID = 16699, groupID = 1, refLootEntry = 10440 }; --Dreadmist Leggings
		{ itemID = 16700, groupID = 1, refLootEntry = 10363 }; --Dreadmist Robe
		{ itemID = 16701, groupID = 1, refLootEntry = 10503 }; --Dreadmist Mantle
		{ itemID = 16702, groupID = 1, refLootEntry = 12500 }; --Dreadmist Belt
		{ itemID = 16704, groupID = 1, refLootEntry = 10436 }; --Dreadmist Sandals
		{ itemID = 16705, groupID = 1, refLootEntry = 12501 }; --Dreadmist Wraps
		{ itemID = 16706, groupID = 1, refLootEntry = 10363 }; --Wildheart Vest
		{ itemID = 16708, groupID = 1, refLootEntry = 10997 }; --Shadowcraft Spaulders
		{ itemID = 16709, groupID = 1, refLootEntry = 10440 }; --Shadowcraft Pants
		{ itemID = 16710, groupID = 1, refLootEntry = 12501 }; --Shadowcraft Bracers
		{ itemID = 16711, groupID = 1, refLootEntry = 11622 }; --Shadowcraft Boots
		{ itemID = 16712, groupID = 1, refLootEntry = 9236 }; --Shadowcraft Gloves
		{ itemID = 16714, groupID = 1, refLootEntry = 12500 }; --Wildheart Bracers
		{ itemID = 16715, groupID = 1, refLootEntry = 10596 }; --Wildheart Boots
		{ itemID = 16716, groupID = 1, refLootEntry = 12501 }; --Wildheart Belt
		{ itemID = 16717, groupID = 1, refLootEntry = 10516 }; --Wildheart Gloves
		{ itemID = 16718, groupID = 1, refLootEntry = 10268 }; --Wildheart Spaulders
		{ itemID = 16719, groupID = 1, refLootEntry = 10440 }; --Wildheart Kilt
		{ itemID = 16721, groupID = 1, refLootEntry = 10363 }; --Shadowcraft Tunic
		{ itemID = 16722, groupID = 1, refLootEntry = 12501 }; --Lightforge Bracers
		{ itemID = 16723, groupID = 1, refLootEntry = 12500 }; --Lightforge Belt
		{ itemID = 16726, groupID = 1, refLootEntry = 10363 }; --Lightforge Breastplate
		{ itemID = 16728, groupID = 1, refLootEntry = 10440 }; --Lightforge Legplates
		{ itemID = 16729, groupID = 1, refLootEntry = 10430 }; --Lightforge Spaulders
		{ itemID = 16730, groupID = 1, refLootEntry = 10363 }; --Breastplate of Valor
		{ itemID = 16732, groupID = 1, refLootEntry = 10440 }; --Legplates of Valor
		{ itemID = 16733, groupID = 1, refLootEntry = 10429 }; --Spaulders of Valor
		{ itemID = 16736, groupID = 1, refLootEntry = 12500 }; --Belt of Valor
		{ itemID = 16770, groupID = 0, refLootEntry = 64604 }; --Infernal Headcage
		{ itemID = 16771, groupID = 1, refLootEntry = 64601 }; --Unmelting Ice Girdle
		{ itemID = 16772, groupID = 1, refLootEntry = 64601 }; --Cold Snap
		{ itemID = 16899, groupID = 1, refLootEntry = 34037 }; --Stormrage Handguards
		{ itemID = 16907, groupID = 1, refLootEntry = 34037 }; --Bloodfang Gloves
		{ itemID = 16913, groupID = 1, refLootEntry = 34037 }; --Netherwind Gloves
		{ itemID = 16920, groupID = 1, refLootEntry = 34037 }; --Handguards of Transcendence
		{ itemID = 16928, groupID = 1, refLootEntry = 34037 }; --Nemesis Gloves
		{ itemID = 16940, groupID = 1, refLootEntry = 34037 }; --Dragonstalker's Gauntlets
		{ itemID = 16948, groupID = 1, refLootEntry = 34037 }; --Gloves of Ten Storms
		{ itemID = 16956, groupID = 1, refLootEntry = 34037 }; --Judgement Gauntlets
		{ itemID = 16964, groupID = 1, refLootEntry = 34037 }; --Gauntlets of Wrath
		{ itemID = 17007, groupID = 1, refLootEntry = 24084 }; --Stonerender Gauntlets
		{ itemID = 17061, groupID = 1, refLootEntry = 12500 }; --Juno's Shadow
		{ itemID = 17063, groupID = 3, refLootEntry = 11502 }; --Band of Accuria
		{ itemID = 17064, groupID = 4, refLootEntry = 10184 }; --Shard of the Scale
		{ itemID = 17065, groupID = 3, refLootEntry = 12057 }; --Medallion of Steadfast Might
		{ itemID = 17066, groupID = 3, refLootEntry = 12057 }; --Drillborer Disk
		{ itemID = 17067, groupID = 4, refLootEntry = 10184 }; --Ancient Cornerstone Grimoire
		{ itemID = 17068, groupID = 4, refLootEntry = 10184 }; --Deathbringer
		{ itemID = 17069, groupID = 2, refLootEntry = 12264 }; --Striker's Mark
		{ itemID = 17071, groupID = 3, refLootEntry = 12057 }; --Gutgore Ripper
		{ itemID = 17072, groupID = 4, refLootEntry = 12056 }; --Blastershot Launcher
		{ itemID = 17074, groupID = 2, refLootEntry = 12264 }; --Shadowstrike
		{ itemID = 17075, groupID = 4, refLootEntry = 10184 }; --Vis'kag the Bloodletter
		{ itemID = 17076, groupID = 4, refLootEntry = 11502 }; --Bonereaver's Edge
		{ itemID = 17077, groupID = 2, refLootEntry = 12259 }; --Crimson Shocker
		{ itemID = 17078, groupID = 4, refLootEntry = 10184 }; --Sapphiron Drape
		{ itemID = 17082, groupID = 4, refLootEntry = 11502 }; --Shard of the Flame
		{ itemID = 17083, groupID = 4, refLootEntry = 11502 }; --Blade of Dragon Bone
		{ itemID = 17084, groupID = 4, refLootEntry = 10184 }; --Mace of the Dragon Knight
		{ itemID = 17085, groupID = 1, refLootEntry = 64601 }; --Snowblind Shoes
		{ itemID = 17102, groupID = 3, refLootEntry = 11502 }; --Cloak of the Shrouded Mists
		{ itemID = 17103, groupID = 2, refLootEntry = 12264 }; --Azuresong Mageblade
		{ itemID = 17104, groupID = 4, refLootEntry = 11502 }; --Spinal Reaper
		{ itemID = 17105, groupID = 3, refLootEntry = 12057 }; --Aurastone Hammer
		{ itemID = 17106, groupID = 4, refLootEntry = 11502 }; --Malistar's Defender
		{ itemID = 17107, groupID = 3, refLootEntry = 11502 }; --Dragon's Blood Cape
		{ itemID = 17109, groupID = 2, refLootEntry = 12264 }; --Choker of Enlightenment
		{ itemID = 17110, groupID = 4, refLootEntry = 12056 }; --Seal of the Archmagus
		{ itemID = 17120, groupID = 1, refLootEntry = 64601 }; --Crystal Adorned Crown
		{ itemID = 1714, groupID = 1, refLootEntry = 24040 }; --Necklace of Calisea
		{ itemID = 17164, groupID = 0, refLootEntry = 64604 }; --Fel Infused Leggings
		{ itemID = 1718, groupID = 1, refLootEntry = 24040 }; --Basilisk Hide Pants
		{ itemID = 1722, groupID = 1, refLootEntry = 24040 }; --Thornstone Sledgehammer
		{ itemID = 17225, groupID = 0, refLootEntry = 64604 }; --Flayed Doomguard Belt
		{ itemID = 17226, groupID = 0, refLootEntry = 64604 }; --Blacklight Bracer
		{ itemID = 17243, groupID = 1, refLootEntry = 64600 }; --Scepter of the Gate Warden
		{ itemID = 17244, groupID = 1, refLootEntry = 64600 }; --Staff of the Gate Warden
		{ itemID = 17303, groupID = 1, refLootEntry = 64600 }; --Musket of the Gate Warden
		{ itemID = 17304, groupID = 1, refLootEntry = 64627 }; --Crystalized Water Spike
		{ itemID = 17334, groupID = 1, refLootEntry = 64600 }; --Wristguards of the Shifting Sands
		{ itemID = 17356, groupID = 1, refLootEntry = 64600 }; --Waistguard of the Shifting Sands
		{ itemID = 17357, groupID = 1, refLootEntry = 64600 }; --Bracers of the Sand Prince
		{ itemID = 17358, groupID = 1, refLootEntry = 64600 }; --Belt of the Sand Prince
		{ itemID = 17365, groupID = 1, refLootEntry = 64600 }; --Amulet of the Gate Warden
		{ itemID = 17366, groupID = 1, refLootEntry = 64600 }; --Amulet of the Sand Prince
		{ itemID = 17367, groupID = 1, refLootEntry = 64600 }; --Insignia of the Shifting Sands
		{ itemID = 17663, groupID = 1, refLootEntry = 64627 }; --Frostbound Bulwark
		{ itemID = 17664, groupID = 1, refLootEntry = 64627 }; --Glaciermind Spellfocus
		{ itemID = 17665, groupID = 1, refLootEntry = 64627 }; --Glacierborn Greatsword
		{ itemID = 17707, groupID = 1, refLootEntry = 35009 }; --Gemshard Heart
		{ itemID = 17710, groupID = 1, refLootEntry = 35009 }; --Charstone Dirk
		{ itemID = 17711, groupID = 1, refLootEntry = 35009 }; --Elemental Rockridge Leggings
		{ itemID = 17713, groupID = 1, refLootEntry = 35009 }; --Blackstone Ring
		{ itemID = 17714, groupID = 1, refLootEntry = 35009 }; --Bracers of the Stone Princess
		{ itemID = 17715, groupID = 1, refLootEntry = 35009 }; --Eye of Theradras
		{ itemID = 17717, groupID = 0, refLootEntry = 0 }; --Megashot Rifle
		{ itemID = 17718, groupID = 0, refLootEntry = 0 }; --Gizlock's Hypertech Buckler
		{ itemID = 17719, groupID = 0, refLootEntry = 0 }; --Inventor's Focal Sword
		{ itemID = 17728, groupID = 0, refLootEntry = 0 }; --Albino Crocscale Boots
		{ itemID = 17730, groupID = 0, refLootEntry = 0 }; --Gatorbite Axe
		{ itemID = 17732, groupID = 0, refLootEntry = 0 }; --Rotgrip Mantle
		{ itemID = 17734, groupID = 0, refLootEntry = 0 }; --Helm of the Mountain
		{ itemID = 17736, groupID = 0, refLootEntry = 0 }; --Rockgrip Gauntlets
		{ itemID = 17737, groupID = 0, refLootEntry = 0 }; --Cloud Stone
		{ itemID = 17738, groupID = 0, refLootEntry = 0 }; --Claw of Celebras
		{ itemID = 17739, groupID = 0, refLootEntry = 0 }; --Grovekeeper's Drape
		{ itemID = 17740, groupID = 0, refLootEntry = 0 }; --Soothsayer's Headdress
		{ itemID = 17741, groupID = 0, refLootEntry = 0 }; --Nature's Embrace
		{ itemID = 17742, groupID = 0, refLootEntry = 0 }; --Fungus Shroud Armor
		{ itemID = 17744, groupID = 0, refLootEntry = 0 }; --Heart of Noxxion
		{ itemID = 17745, groupID = 0, refLootEntry = 0 }; --Noxious Shooter
		{ itemID = 17746, groupID = 0, refLootEntry = 0 }; --Noxxion's Shackles
		{ itemID = 17748, groupID = 0, refLootEntry = 0 }; --Vinerot Sandals
		{ itemID = 17749, groupID = 0, refLootEntry = 0 }; --Phytoskin Spaulders
		{ itemID = 17750, groupID = 0, refLootEntry = 0 }; --Chloromesh Girdle
		{ itemID = 17751, groupID = 0, refLootEntry = 0 }; --Brusslehide Leggings
		{ itemID = 17752, groupID = 0, refLootEntry = 0 }; --Satyr's Lash
		{ itemID = 17754, groupID = 0, refLootEntry = 0 }; --Infernal Trickster Leggings
		{ itemID = 17755, groupID = 0, refLootEntry = 0 }; --Satyrmane Sash
		{ itemID = 17766, groupID = 1, refLootEntry = 35009 }; --Princess Theradras' Scepter
		{ itemID = 17767, groupID = 0, refLootEntry = 0 }; --Bloomsprout Headpiece
		{ itemID = 17780, groupID = 1, refLootEntry = 35009 }; --Blade of Eternal Darkness
		{ itemID = 17782, groupID = 1, refLootEntry = 12056 }; --Talisman of Binding Shard
		{ itemID = 17912, groupID = 1, refLootEntry = 64627 }; --Glacierwoven Legwraps
		{ itemID = 17913, groupID = 1, refLootEntry = 64627 }; --Frostbite Warcloak
		{ itemID = 17943, groupID = 0, refLootEntry = 0 }; --Fist of Stone
		{ itemID = 18043, groupID = 1, refLootEntry = 9537 }; --Coal Miner Boots
		{ itemID = 18044, groupID = 1, refLootEntry = 9537 }; --Hurley's Tankard
		{ itemID = 18047, groupID = 1, refLootEntry = 10899 }; --Flame Walkers
		{ itemID = 18048, groupID = 1, refLootEntry = 10899 }; --Mastersmith's Hammer
		{ itemID = 18064, groupID = 1, refLootEntry = 64627 }; --Band of Winter's Grasp
		{ itemID = 18065, groupID = 1, refLootEntry = 64627 }; --Frostwoven Spiritbinder Gloves
		{ itemID = 18082, groupID = 0, refLootEntry = 0 }; --Zum'rah's Vexing Cane
		{ itemID = 18083, groupID = 0, refLootEntry = 0 }; --Jumanza Grips
		{ itemID = 18084, groupID = 1, refLootEntry = 64627 }; --Glacierbound Wristguards
		{ itemID = 18085, groupID = 1, refLootEntry = 64627 }; --Frostbite Spellhammer
		{ itemID = 18086, groupID = 1, refLootEntry = 10185 }; --Dreadshot
		{ itemID = 18087, groupID = 1, refLootEntry = 10185 }; --Fissured Warplate
		{ itemID = 18102, groupID = 1, refLootEntry = 10429 }; --Dragonrider Boots
		{ itemID = 18103, groupID = 1, refLootEntry = 10429 }; --Band of Rumination
		{ itemID = 18104, groupID = 1, refLootEntry = 10429 }; --Feralsurge Girdle
		{ itemID = 18107, groupID = 1, refLootEntry = 10185 }; --Ashen Drape
		{ itemID = 18108, groupID = 1, refLootEntry = 10185 }; --Ash Stitched Gauntlets
		{ itemID = 18109, groupID = 1, refLootEntry = 10185 }; --Obsidian Signet
		{ itemID = 18110, groupID = 1, refLootEntry = 10185 }; --Obsidian Emberlance
		{ itemID = 18112, groupID = 1, refLootEntry = 10185 }; --Eruption Cord
		{ itemID = 18124, groupID = 1, refLootEntry = 10185 }; --Basalt Pauldrons
		{ itemID = 18125, groupID = 1, refLootEntry = 10185 }; --Emberthorn
		{ itemID = 18126, groupID = 1, refLootEntry = 10185 }; --Infernos, the Extinguished
		{ itemID = 18203, groupID = 3, refLootEntry = 12057 }; --Eskhandar's Right Claw
		{ itemID = 18205, groupID = 4, refLootEntry = 10184 }; --Eskhandar's Collar
		{ itemID = 18210, groupID = 1, refLootEntry = 10185 }; --Draconic Effigy
		{ itemID = 18211, groupID = 4, refLootEntry = 10184 }; --Wand of the Noble
		{ itemID = 18212, groupID = 4, refLootEntry = 10184 }; --Band of Nyxondra
		{ itemID = 18215, groupID = 4, refLootEntry = 10184 }; --Insignia of the Dragon
		{ itemID = 18216, groupID = 4, refLootEntry = 10184 }; --Neltharion's Badge
		{ itemID = 18301, groupID = 1, refLootEntry = 14327 }; --Lethtendris's Wand
		{ itemID = 18302, groupID = 1, refLootEntry = 14327 }; --Band of Vigor
		{ itemID = 18305, groupID = 1, refLootEntry = 13280 }; --Breakwater Legguards
		{ itemID = 18306, groupID = 1, refLootEntry = 11490 }; --Gloves of Shadowy Mist
		{ itemID = 18307, groupID = 1, refLootEntry = 13280 }; --Riptide Shoes
		{ itemID = 18308, groupID = 1, refLootEntry = 11490 }; --Clever Hat
		{ itemID = 18309, groupID = 1, refLootEntry = 11492 }; --Gloves of Restoration
		{ itemID = 18310, groupID = 1, refLootEntry = 11492 }; --Fiendish Machete
		{ itemID = 18311, groupID = 1, refLootEntry = 14327 }; --Quel'dorei Channeling Rod
		{ itemID = 18312, groupID = 1, refLootEntry = 11492 }; --Energized Chestplate
		{ itemID = 18313, groupID = 1, refLootEntry = 11490 }; --Helm of Awareness
		{ itemID = 18314, groupID = 1, refLootEntry = 11492 }; --Ring of Demonic Guile
		{ itemID = 18315, groupID = 1, refLootEntry = 11492 }; --Ring of Demonic Potency
		{ itemID = 18317, groupID = 1, refLootEntry = 13280 }; --Tempest Talisman
		{ itemID = 18318, groupID = 1, refLootEntry = 11492 }; --Merciful Greaves
		{ itemID = 18319, groupID = 1, refLootEntry = 11490 }; --Fervent Helm
		{ itemID = 18321, groupID = 1, refLootEntry = 11492 }; --Energetic Rod
		{ itemID = 18322, groupID = 1, refLootEntry = 13280 }; --Waterspout Boots
		{ itemID = 18323, groupID = 1, refLootEntry = 11490 }; --Satyr's Bow
		{ itemID = 18324, groupID = 1, refLootEntry = 13280 }; --Waveslicer
		{ itemID = 18325, groupID = 1, refLootEntry = 14327 }; --Felhide Cap
		{ itemID = 18326, groupID = 1, refLootEntry = 11492 }; --Razor Gauntlets
		{ itemID = 18327, groupID = 1, refLootEntry = 11492 }; --Whipvine Cord
		{ itemID = 18328, groupID = 1, refLootEntry = 11492 }; --Shadewood Cloak
		{ itemID = 18345, groupID = 1, refLootEntry = 11467 }; --Murmuring Ring
		{ itemID = 18346, groupID = 1, refLootEntry = 11467 }; --Threadbare Trousers
		{ itemID = 18347, groupID = 1, refLootEntry = 11488 }; --Well Balanced Axe
		{ itemID = 18349, groupID = 1, refLootEntry = 11488 }; --Gauntlets of Accuracy
		{ itemID = 18350, groupID = 1, refLootEntry = 11487 }; --Amplifying Cloak
		{ itemID = 18351, groupID = 1, refLootEntry = 11487 }; --Magically Sealed Bracers
		{ itemID = 18352, groupID = 1, refLootEntry = 11489 }; --Petrified Bark Shield
		{ itemID = 18353, groupID = 1, refLootEntry = 11489 }; --Stoneflower Staff
		{ itemID = 18354, groupID = 1, refLootEntry = 14327 }; --Pimgib's Collar
		{ itemID = 18370, groupID = 1, refLootEntry = 11496 }; --Vigilance Charm
		{ itemID = 18371, groupID = 1, refLootEntry = 11487 }; --Mindtap Talisman
		{ itemID = 18372, groupID = 1, refLootEntry = 11496 }; --Blade of the New Moon
		{ itemID = 18373, groupID = 1, refLootEntry = 11486 }; --Chestplate of Tranquility
		{ itemID = 18374, groupID = 1, refLootEntry = 11487 }; --Flamescarred Shoulders
		{ itemID = 18375, groupID = 1, refLootEntry = 11486 }; --Bracers of the Eclipse
		{ itemID = 18376, groupID = 1, refLootEntry = 11486 }; --Timeworn Mace
		{ itemID = 18377, groupID = 1, refLootEntry = 11496 }; --Quickdraw Gloves
		{ itemID = 18378, groupID = 1, refLootEntry = 11486 }; --Silvermoon Leggings
		{ itemID = 18379, groupID = 1, refLootEntry = 11496 }; --Odious Greaves
		{ itemID = 18380, groupID = 1, refLootEntry = 11486 }; --Eldritch Reinforced Legplates
		{ itemID = 18381, groupID = 1, refLootEntry = 11496 }; --Evil Eye Pendant
		{ itemID = 18382, groupID = 1, refLootEntry = 11486 }; --Fluctuating Cloak
		{ itemID = 18383, groupID = 1, refLootEntry = 11488 }; --Force Imbued Gauntlets
		{ itemID = 18384, groupID = 1, refLootEntry = 11496 }; --Bile-etched Spaulders
		{ itemID = 18385, groupID = 1, refLootEntry = 11496 }; --Robe of Everlasting Night
		{ itemID = 18386, groupID = 1, refLootEntry = 11488 }; --Padre's Trousers
		{ itemID = 18387, groupID = 1, refLootEntry = 11467 }; --Brightspark Gloves
		{ itemID = 18388, groupID = 1, refLootEntry = 11486 }; --Stoneshatter
		{ itemID = 18389, groupID = 1, refLootEntry = 11496 }; --Cloak of the Cosmos
		{ itemID = 18390, groupID = 1, refLootEntry = 11489 }; --Tanglemoss Leggings
		{ itemID = 18391, groupID = 1, refLootEntry = 11496 }; --Eyestalk Cord
		{ itemID = 18392, groupID = 1, refLootEntry = 11486 }; --Distracting Dagger
		{ itemID = 18393, groupID = 1, refLootEntry = 11489 }; --Warpwood Binding
		{ itemID = 18394, groupID = 1, refLootEntry = 11496 }; --Demon Howl Wristguards
		{ itemID = 18395, groupID = 1, refLootEntry = 11486 }; --Emerald Flame Ring
		{ itemID = 18396, groupID = 1, refLootEntry = 11486 }; --Mind Carver
		{ itemID = 18397, groupID = 1, refLootEntry = 11487 }; --Elder Magus Pendant
		{ itemID = 18425, groupID = 1, refLootEntry = 14322 }; --Kreeg's Mug
		{ itemID = 18450, groupID = 1, refLootEntry = 14326 }; --Robe of Combustion
		{ itemID = 18451, groupID = 1, refLootEntry = 14326 }; --Hyena Hide Belt
		{ itemID = 18458, groupID = 1, refLootEntry = 14326 }; --Modest Armguards
		{ itemID = 18459, groupID = 1, refLootEntry = 14326 }; --Gallant's Wristguards
		{ itemID = 18460, groupID = 1, refLootEntry = 14326 }; --Unsophisticated Hand Cannon
		{ itemID = 18462, groupID = 1, refLootEntry = 14326 }; --Jagged Bone Fist
		{ itemID = 18463, groupID = 1, refLootEntry = 14326 }; --Ogre Pocket Knife
		{ itemID = 18464, groupID = 1, refLootEntry = 14326 }; --Gordok Nose Ring
		{ itemID = 18483, groupID = 1, refLootEntry = 14324 }; --Mana Channeling Wand
		{ itemID = 18484, groupID = 1, refLootEntry = 14324 }; --Cho'Rush's Blade
		{ itemID = 18485, groupID = 1, refLootEntry = 14324 }; --Observer's Shield
		{ itemID = 18490, groupID = 1, refLootEntry = 14324 }; --Insightful Hood
		{ itemID = 18493, groupID = 1, refLootEntry = 14326 }; --Bulky Iron Spaulders
		{ itemID = 18494, groupID = 1, refLootEntry = 14326 }; --Denwatcher's Shoulders
		{ itemID = 18496, groupID = 1, refLootEntry = 14326 }; --Heliotrope Cloak
		{ itemID = 18497, groupID = 1, refLootEntry = 14326 }; --Sublime Wristguards
		{ itemID = 18498, groupID = 1, refLootEntry = 14323 }; --Hedgecutter
		{ itemID = 18502, groupID = 1, refLootEntry = 14325 }; --Monstrous Glaive
		{ itemID = 18503, groupID = 1, refLootEntry = 14325 }; --Kromcrush's Chestplate
		{ itemID = 18505, groupID = 1, refLootEntry = 14325 }; --Mugger's Belt
		{ itemID = 18507, groupID = 1, refLootEntry = 14325 }; --Boots of the Full Moon
		{ itemID = 18520, groupID = 1, refLootEntry = 11501 }; --Barbarous Blade
		{ itemID = 18521, groupID = 1, refLootEntry = 11501 }; --Grimy Metal Boots
		{ itemID = 18522, groupID = 1, refLootEntry = 11501 }; --Band of the Ogre King
		{ itemID = 18523, groupID = 1, refLootEntry = 11501 }; --Brightly Glowing Stone
		{ itemID = 18524, groupID = 1, refLootEntry = 11501 }; --Leggings of Destruction
		{ itemID = 18525, groupID = 1, refLootEntry = 11501 }; --Bracers of Prosperity
		{ itemID = 18526, groupID = 1, refLootEntry = 11501 }; --Crown of the Ogre King
		{ itemID = 18527, groupID = 1, refLootEntry = 11501 }; --Harmonious Gauntlets
		{ itemID = 18548, groupID = 1, refLootEntry = 10185 }; --Wyrmguard Talisman
		{ itemID = 18549, groupID = 1, refLootEntry = 10185 }; --Molten Visor
		{ itemID = 18571, groupID = 1, refLootEntry = 10185 }; --Living Lavastone Conduit
		{ itemID = 18572, groupID = 1, refLootEntry = 10185 }; --Corelit Igneous
		{ itemID = 18608, groupID = 2, refLootEntry = 12018 }; --Benediction
		{ itemID = 18609, groupID = 2, refLootEntry = 12018 }; --Anathema
		{ itemID = 18646, groupID = 0, refLootEntry = 18646 }; --The Eye of Divinity
		{ itemID = 18680, groupID = 1, refLootEntry = 11261 }; --Ancient Bone Bow
		{ itemID = 18681, groupID = 1, refLootEntry = 11261 }; --Burial Shawl
		{ itemID = 18682, groupID = 1, refLootEntry = 11261 }; --Ghoul Skin Leggings
		{ itemID = 18683, groupID = 1, refLootEntry = 11261 }; --Hammer of the Vesper
		{ itemID = 18684, groupID = 1, refLootEntry = 11261 }; --Dimly Opalescent Ring
		{ itemID = 18686, groupID = 1, refLootEntry = 11622 }; --Bone Golem Shoulders
		{ itemID = 18689, groupID = 1, refLootEntry = 10503 }; --Phantasmal Cloak
		{ itemID = 18690, groupID = 1, refLootEntry = 10503 }; --Wraithplate Leggings
		{ itemID = 18691, groupID = 1, refLootEntry = 10432 }; --Dark Advisor's Pendant
		{ itemID = 18693, groupID = 1, refLootEntry = 10508 }; --Shivery Handwraps
		{ itemID = 18694, groupID = 1, refLootEntry = 10508 }; --Shadowy Mail Greaves
		{ itemID = 18695, groupID = 1, refLootEntry = 10508 }; --Spellbound Tome
		{ itemID = 18696, groupID = 1, refLootEntry = 10508 }; --Intricately Runed Shield
		{ itemID = 18697, groupID = 1, refLootEntry = 12501 }; --Coldstone Slippers
		{ itemID = 18698, groupID = 1, refLootEntry = 12501 }; --Tattered Leather Hood
		{ itemID = 18699, groupID = 1, refLootEntry = 12501 }; --Icy Tomb Spaulders
		{ itemID = 18700, groupID = 1, refLootEntry = 12501 }; --Malefic Bracers
		{ itemID = 18701, groupID = 1, refLootEntry = 12501 }; --Innervating Band
		{ itemID = 18702, groupID = 1, refLootEntry = 12501 }; --Belt of the Ordained
		{ itemID = 18713, groupID = 2, refLootEntry = 12018 }; --Rhok'delar, Longbow of the Ancient Keepers
		{ itemID = 18715, groupID = 2, refLootEntry = 12018 }; --Lok'delar, Stave of the Ancient Keepers
		{ itemID = 18716, groupID = 1, refLootEntry = 10811 }; --Ash Covered Boots
		{ itemID = 18721, groupID = 1, refLootEntry = 10997 }; --Barrage Girdle
		{ itemID = 18722, groupID = 1, refLootEntry = 10435 }; --Death Grips
		{ itemID = 18725, groupID = 1, refLootEntry = 10435 }; --Peacemaker
		{ itemID = 18726, groupID = 1, refLootEntry = 10435 }; --Magistrate's Cuffs
		{ itemID = 18727, groupID = 1, refLootEntry = 10435 }; --Crimson Felt Hat
		{ itemID = 18728, groupID = 1, refLootEntry = 10436 }; --Anastari Heirloom
		{ itemID = 18729, groupID = 1, refLootEntry = 10436 }; --Screeching Bow
		{ itemID = 18730, groupID = 1, refLootEntry = 10436 }; --Shadowy Laced Handwraps
		{ itemID = 18734, groupID = 1, refLootEntry = 10438 }; --Pale Moon Cloak
		{ itemID = 18735, groupID = 1, refLootEntry = 10438 }; --Maleki's Footwraps
		{ itemID = 18736, groupID = 1, refLootEntry = 12500 }; --Plaguehound Leggings
		{ itemID = 18737, groupID = 1, refLootEntry = 10438 }; --Bone Slicing Hatchet
		{ itemID = 18738, groupID = 1, refLootEntry = 10437 }; --Carapace Spine Crossbow
		{ itemID = 18739, groupID = 1, refLootEntry = 10437 }; --Chitinous Plate Legguards
		{ itemID = 18740, groupID = 1, refLootEntry = 10437 }; --Thuzadin Sash
		{ itemID = 18741, groupID = 1, refLootEntry = 12500 }; --Morlune's Bracer
		{ itemID = 18742, groupID = 1, refLootEntry = 12500 }; --Stratholme Militia Shoulderguard
		{ itemID = 18743, groupID = 1, refLootEntry = 12500 }; --Gracious Cape
		{ itemID = 18744, groupID = 1, refLootEntry = 12500 }; --Plaguebat Fur Gloves
		{ itemID = 18745, groupID = 1, refLootEntry = 12500 }; --Sacred Cloth Leggings
		{ itemID = 18754, groupID = 1, refLootEntry = 14506 }; --Fel Hardened Bracers
		{ itemID = 18755, groupID = 1, refLootEntry = 14506 }; --Xorothian Firestick
		{ itemID = 18756, groupID = 1, refLootEntry = 14506 }; --Dreadguard's Protector
		{ itemID = 18757, groupID = 0, refLootEntry = 14506 }; --Diabolic Mantle
		{ itemID = 18764, groupID = 2, refLootEntry = 92179 }; --Echo of Eons
		{ itemID = 18803, groupID = 2, refLootEntry = 12018 }; --Finkle's Lava Dredger
		{ itemID = 18805, groupID = 2, refLootEntry = 12018 }; --Core Hound Tooth
		{ itemID = 18806, groupID = 2, refLootEntry = 12018 }; --Core Forged Greaves
		{ itemID = 18808, groupID = 2, refLootEntry = 12018 }; --Gloves of the Hypnotic Flame
		{ itemID = 18809, groupID = 2, refLootEntry = 12018 }; --Sash of Whispered Secrets
		{ itemID = 18810, groupID = 2, refLootEntry = 12018 }; --Wild Growth Spaulders
		{ itemID = 18811, groupID = 2, refLootEntry = 12018 }; --Fireproof Cloak
		{ itemID = 18812, groupID = 2, refLootEntry = 12018 }; --Wristguards of True Flight
		{ itemID = 18813, groupID = 4, refLootEntry = 10184 }; --Ring of Binding
		{ itemID = 18814, groupID = 3, refLootEntry = 11502 }; --Choker of the Fire Lord
		{ itemID = 18815, groupID = 4, refLootEntry = 11502 }; --Essence of the Pure Flame
		{ itemID = 18816, groupID = 4, refLootEntry = 11502 }; --Perdition's Blade
		{ itemID = 18817, groupID = 3, refLootEntry = 11502 }; --Crown of Destruction
		{ itemID = 18820, groupID = 2, refLootEntry = 12264 }; --Talisman of Ephemeral Power
		{ itemID = 18821, groupID = 2, refLootEntry = 12259 }; --Quick Strike Ring
		{ itemID = 18822, groupID = 4, refLootEntry = 12056 }; --Obsidian Edged Blade
		{ itemID = 18823, groupID = 3, refLootEntry = 12057 }; --Aged Core Leather Gloves
		{ itemID = 18824, groupID = 4, refLootEntry = 12056 }; --Magma Tempered Boots
		{ itemID = 18829, groupID = 4, refLootEntry = 12056 }; --Deep Earth Spaulders
		{ itemID = 18832, groupID = 2, refLootEntry = 12259 }; --Brutality Blade
		{ itemID = 18842, groupID = 4, refLootEntry = 12056 }; --Staff of Dominance
		{ itemID = 18861, groupID = 2, refLootEntry = 12259 }; --Flamewaker Legplates
		{ itemID = 18870, groupID = 3, refLootEntry = 12057 }; --Helm of the Lifegiver
		{ itemID = 18872, groupID = 4, refLootEntry = 12056 }; --Manastorm Leggings
		{ itemID = 18875, groupID = 2, refLootEntry = 12264 }; --Salamander Scale Pants
		{ itemID = 18878, groupID = 2, refLootEntry = 12259 }; --Sorcerous Dagger
		{ itemID = 18879, groupID = 3, refLootEntry = 12057 }; --Heavy Dark Iron Ring
		{ itemID = 18906, groupID = 1, refLootEntry = 10185 }; --Obsidian Heartseeker
		{ itemID = 1897, groupID = 1, refLootEntry = 1716 }; --Behander
		{ itemID = 1903, groupID = 1, refLootEntry = 1666 }; --Knee Cracker
		{ itemID = 19136, groupID = 4, refLootEntry = 12056 }; --Mana Igniting Cord
		{ itemID = 19137, groupID = 3, refLootEntry = 11502 }; --Onslaught Girdle
		{ itemID = 19138, groupID = 8, refLootEntry = 11502 }; --Band of Sulfuras
		{ itemID = 19139, groupID = 2, refLootEntry = 12018 }; --Fireguard Shoulders
		{ itemID = 19140, groupID = 2, refLootEntry = 12018 }; --Cauterizing Band
		{ itemID = 19142, groupID = 2, refLootEntry = 12259 }; --Fire Runed Grimoire
		{ itemID = 19143, groupID = 2, refLootEntry = 12259 }; --Flameguard Gauntlets
		{ itemID = 19144, groupID = 2, refLootEntry = 12259 }; --Sabatons of the Flamewalker
		{ itemID = 19145, groupID = 2, refLootEntry = 12264 }; --Robe of Volatile Power
		{ itemID = 19146, groupID = 4, refLootEntry = 12056 }; --Wristguards of Stability
		{ itemID = 19147, groupID = 2, refLootEntry = 12264 }; --Ring of Spell Power
		{ itemID = 19334, groupID = 2, refLootEntry = 12435 }; --The Untamed Blade
		{ itemID = 19335, groupID = 2, refLootEntry = 12435 }; --Spineshatter
		{ itemID = 19336, groupID = 2, refLootEntry = 12435 }; --Arcane Infused Gem
		{ itemID = 19337, groupID = 1, refLootEntry = 12435 }; --The Black Book
		{ itemID = 19339, groupID = 1, refLootEntry = 13020 }; --Mind Quickening Gem
		{ itemID = 19340, groupID = 2, refLootEntry = 13020 }; --Rune of Metamorphosis
		{ itemID = 19341, groupID = 2, refLootEntry = 12017 }; --Lifegiving Gem
		{ itemID = 19342, groupID = 2, refLootEntry = 12017 }; --Venomous Totem
		{ itemID = 19343, groupID = 2, refLootEntry = 13020 }; --Scrolls of Blinding Light
		{ itemID = 19344, groupID = 1, refLootEntry = 11983 }; --Natural Alignment Crystal
		{ itemID = 19345, groupID = 1, refLootEntry = 34036 }; --Aegis of Preservation
		{ itemID = 19346, groupID = 2, refLootEntry = 13020 }; --Dragonfang Blade
		{ itemID = 19347, groupID = 1, refLootEntry = 14020 }; --Claw of Chromaggus
		{ itemID = 19348, groupID = 1, refLootEntry = 13020 }; --Red Dragonscale Protector
		{ itemID = 19349, groupID = 1, refLootEntry = 14020 }; --Elementium Reinforced Bulwark
		{ itemID = 19350, groupID = 2, refLootEntry = 12017 }; --Heartstriker
		{ itemID = 19351, groupID = 2, refLootEntry = 12017 }; --Maladath, Runed Blade of the Black Flight
		{ itemID = 19352, groupID = 2, refLootEntry = 14020 }; --Chromatically Tempered Sword
		{ itemID = 19353, groupID = 2, refLootEntry = 11983 }; --Drake Talon Cleaver
		{ itemID = 19355, groupID = 1, refLootEntry = 34037 }; --Shadow Wing Focus Staff
		{ itemID = 19357, groupID = 2, refLootEntry = 12435 }; --Herald of Woe
		{ itemID = 19361, groupID = 2, refLootEntry = 14020 }; --Ashjre'thul, Crossbow of Smiting
		{ itemID = 19365, groupID = 2, refLootEntry = 12017 }; --Claw of the Black Drake
		{ itemID = 19367, groupID = 1, refLootEntry = 34037 }; --Dragon's Touch
		{ itemID = 19368, groupID = 2, refLootEntry = 11983 }; --Dragonbreath Hand Cannon
		{ itemID = 19369, groupID = 1, refLootEntry = 12435 }; --Gloves of Rapid Evolution
		{ itemID = 1937, groupID = 1, refLootEntry = 642 }; --Buzz Saw
		{ itemID = 19370, groupID = 1, refLootEntry = 12435 }; --Mantle of the Blackwing Cabal
		{ itemID = 19371, groupID = 1, refLootEntry = 13020 }; --Pendant of the Fallen Dragon
		{ itemID = 19372, groupID = 2, refLootEntry = 13020 }; --Helm of Endless Rage
		{ itemID = 19373, groupID = 1, refLootEntry = 12017 }; --Black Brood Pauldrons
		{ itemID = 19374, groupID = 1, refLootEntry = 12017 }; --Bracers of Arcane Accuracy
		{ itemID = 19385, groupID = 1, refLootEntry = 14020 }; --Empowered Leggings
		{ itemID = 19386, groupID = 2, refLootEntry = 14020 }; --Elementium Threaded Cloak
		{ itemID = 19387, groupID = 2, refLootEntry = 14020 }; --Drakeadon's Stompers
		{ itemID = 19388, groupID = 1, refLootEntry = 14020 }; --Angelista's Grasp
		{ itemID = 19389, groupID = 2, refLootEntry = 14020 }; --Taut Dragonhide Shoulderpads
		{ itemID = 19390, groupID = 2, refLootEntry = 14020 }; --Taut Dragonhide Gloves
		{ itemID = 19391, groupID = 1, refLootEntry = 14020 }; --Shimmering Geta
		{ itemID = 19392, groupID = 1, refLootEntry = 14020 }; --Girdle of the Fallen Crusader
		{ itemID = 19393, groupID = 1, refLootEntry = 14020 }; --Primalist's Linked Waistguard
		{ itemID = 19394, groupID = 2, refLootEntry = 13020 }; --Drake Talon Pauldrons
		{ itemID = 19395, groupID = 1, refLootEntry = 34037 }; --Rejuvenating Gem
		{ itemID = 19396, groupID = 2, refLootEntry = 11983 }; --Taut Dragonhide Belt
		{ itemID = 19397, groupID = 1, refLootEntry = 34037 }; --Ring of Blackrock
		{ itemID = 19398, groupID = 2, refLootEntry = 11983 }; --Cloak of Firemaw
		{ itemID = 19399, groupID = 1, refLootEntry = 12017 }; --Black Ash Robe
		{ itemID = 19400, groupID = 1, refLootEntry = 11983 }; --Firemaw's Clutch
		{ itemID = 19401, groupID = 1, refLootEntry = 12435 }; --Primalist's Linked Legguards
		{ itemID = 19402, groupID = 1, refLootEntry = 12017 }; --Legguards of the Fallen Crusader
		{ itemID = 19403, groupID = 1, refLootEntry = 34036 }; --Band of Forced Concentration
		{ itemID = 19405, groupID = 2, refLootEntry = 12435 }; --Malfurion's Blessed Bulwark
		{ itemID = 19406, groupID = 2, refLootEntry = 11983 }; --Drake Fang Talisman
		{ itemID = 19407, groupID = 1, refLootEntry = 34036 }; --Ebony Flame Gloves
		{ itemID = 19408, groupID = 2, refLootEntry = 12017 }; --Kirasath'Dargonax, Fate of the Devourer
		{ itemID = 19430, groupID = 1, refLootEntry = 34037 }; --Shroud of Pure Thought
		{ itemID = 19431, groupID = 2, refLootEntry = 11983 }; --Styleen's Impeding Scarab
		{ itemID = 19432, groupID = 2, refLootEntry = 12017 }; --Circle of Applied Force
		{ itemID = 19433, groupID = 1, refLootEntry = 34037 }; --Emberweave Leggings
		{ itemID = 19507, groupID = 0, refLootEntry = 0 }; --Inquisitor's Shawl
		{ itemID = 19508, groupID = 0, refLootEntry = 0 }; --Branded Leather Bracers
		{ itemID = 19509, groupID = 0, refLootEntry = 0 }; --Dusty Mail Boots
		{ itemID = 19761, groupID = 2, refLootEntry = 15989 }; --Fang of the Frost Wyrm
		{ itemID = 1979, groupID = 1, refLootEntry = 24084 }; --Wall of the Dead
		{ itemID = 1980, groupID = 1, refLootEntry = 24080 }; --Underworld Band
		{ itemID = 1981, groupID = 1, refLootEntry = 24081 }; --Icemail Jerkin
		{ itemID = 1982, groupID = 1, refLootEntry = 24081 }; --Nightblade
		{ itemID = 19822, groupID = 3, refLootEntry = 14517 }; --Zandalar Vindicator's Breastplate
		{ itemID = 19823, groupID = 3, refLootEntry = 14517 }; --Zandalar Vindicator's Belt
		{ itemID = 19824, groupID = 3, refLootEntry = 14517 }; --Zandalar Vindicator's Armguards
		{ itemID = 19825, groupID = 3, refLootEntry = 14517 }; --Zandalar Freethinker's Breastplate
		{ itemID = 19826, groupID = 3, refLootEntry = 14517 }; --Zandalar Freethinker's Belt
		{ itemID = 19827, groupID = 3, refLootEntry = 14517 }; --Zandalar Freethinker's Armguards
		{ itemID = 19828, groupID = 3, refLootEntry = 14517 }; --Zandalar Augur's Hauberk
		{ itemID = 19829, groupID = 3, refLootEntry = 14517 }; --Zandalar Augur's Belt
		{ itemID = 19830, groupID = 3, refLootEntry = 14517 }; --Zandalar Augur's Bracers
		{ itemID = 19831, groupID = 3, refLootEntry = 14517 }; --Zandalar Predator's Mantle
		{ itemID = 19832, groupID = 3, refLootEntry = 14517 }; --Zandalar Predator's Belt
		{ itemID = 19833, groupID = 3, refLootEntry = 14517 }; --Zandalar Predator's Bracers
		{ itemID = 19834, groupID = 3, refLootEntry = 14517 }; --Zandalar Madcap's Tunic
		{ itemID = 19835, groupID = 3, refLootEntry = 14517 }; --Zandalar Madcap's Mantle
		{ itemID = 19836, groupID = 3, refLootEntry = 14517 }; --Zandalar Madcap's Bracers
		{ itemID = 198367, groupID = 1, refLootEntry = 11261 }; --Deathbone Pauldrons
		{ itemID = 19838, groupID = 3, refLootEntry = 14517 }; --Zandalar Haruspex's Tunic
		{ itemID = 19839, groupID = 3, refLootEntry = 14517 }; --Zandalar Haruspex's Belt
		{ itemID = 19840, groupID = 3, refLootEntry = 14517 }; --Zandalar Haruspex's Bracers
		{ itemID = 19841, groupID = 3, refLootEntry = 14517 }; --Zandalar Confessor's Mantle
		{ itemID = 19842, groupID = 3, refLootEntry = 14517 }; --Zandalar Confessor's Bindings
		{ itemID = 19843, groupID = 3, refLootEntry = 14517 }; --Zandalar Confessor's Wraps
		{ itemID = 19845, groupID = 3, refLootEntry = 14517 }; --Zandalar Illusionist's Mantle
		{ itemID = 19846, groupID = 3, refLootEntry = 14517 }; --Zandalar Illusionist's Wraps
		{ itemID = 19848, groupID = 3, refLootEntry = 14517 }; --Zandalar Demoniac's Wraps
		{ itemID = 19849, groupID = 3, refLootEntry = 14517 }; --Zandalar Demoniac's Mantle
		{ itemID = 1985, groupID = 1, refLootEntry = 1666 }; --Kam's Buckler
		{ itemID = 19852, groupID = 3, refLootEntry = 14834 }; --Ancient Hakkari Manslayer
		{ itemID = 19853, groupID = 3, refLootEntry = 14834 }; --Gurubashi Dwarf Destroyer
		{ itemID = 19854, groupID = 3, refLootEntry = 14834 }; --Zin'rokh, Destroyer of Worlds
		{ itemID = 19855, groupID = 3, refLootEntry = 14834 }; --Bloodsoaked Legplates
		{ itemID = 19856, groupID = 3, refLootEntry = 14834 }; --The Eye of Hakkar
		{ itemID = 19857, groupID = 3, refLootEntry = 14834 }; --Cloak of Consumption
		{ itemID = 19859, groupID = 3, refLootEntry = 14834 }; --Fang of the Faceless
		{ itemID = 19861, groupID = 3, refLootEntry = 14834 }; --Touch of Chaos
		{ itemID = 19862, groupID = 3, refLootEntry = 14834 }; --Aegis of the Blood God
		{ itemID = 19863, groupID = 2, refLootEntry = 11382 }; --Primalist's Seal
		{ itemID = 19864, groupID = 3, refLootEntry = 14834 }; --Bloodcaller
		{ itemID = 19866, groupID = 1, refLootEntry = 11382 }; --Warblade of the Hakkari
		{ itemID = 19867, groupID = 1, refLootEntry = 11382 }; --Bloodlord's Defender
		{ itemID = 19869, groupID = 2, refLootEntry = 11382 }; --Blooddrenched Grips
		{ itemID = 19870, groupID = 2, refLootEntry = 11382 }; --Hakkari Loa Cloak
		{ itemID = 19871, groupID = 1, refLootEntry = 14510 }; --Talisman of Protection
		{ itemID = 19873, groupID = 2, refLootEntry = 11382 }; --Overlord's Crimson Band
		{ itemID = 19874, groupID = 1, refLootEntry = 11382 }; --Halberd of Smiting
		{ itemID = 19875, groupID = 2, refLootEntry = 11380 }; --Bloodstained Coif
		{ itemID = 19876, groupID = 3, refLootEntry = 14834 }; --Soul Corrupter's Necklace
		{ itemID = 19877, groupID = 2, refLootEntry = 11382 }; --Animist's Leggings
		{ itemID = 19878, groupID = 2, refLootEntry = 11382 }; --Bloodsoaked Pauldrons
		{ itemID = 19884, groupID = 1, refLootEntry = 11380 }; --Jin'do's Judgement
		{ itemID = 19885, groupID = 1, refLootEntry = 11380 }; --Jin'do's Evil Eye
		{ itemID = 19886, groupID = 2, refLootEntry = 11380 }; --The Hexxer's Cover
		{ itemID = 19887, groupID = 2, refLootEntry = 11380 }; --Bloodstained Legplates
		{ itemID = 19888, groupID = 2, refLootEntry = 11380 }; --Overlord's Embrace
		{ itemID = 19889, groupID = 2, refLootEntry = 11380 }; --Blooddrenched Leggings
		{ itemID = 19890, groupID = 1, refLootEntry = 11380 }; --Jin'do's Hexxer
		{ itemID = 19891, groupID = 1, refLootEntry = 11380 }; --Jin'do's Bag of Whammies
		{ itemID = 19892, groupID = 2, refLootEntry = 11380 }; --Animist's Boots
		{ itemID = 19893, groupID = 2, refLootEntry = 11382 }; --Zanzil's Seal
		{ itemID = 19894, groupID = 2, refLootEntry = 11380 }; --Bloodsoaked Gauntlets
		{ itemID = 19895, groupID = 2, refLootEntry = 11382 }; --Bloodtinged Kilt
		{ itemID = 19896, groupID = 1, refLootEntry = 14509 }; --Thekal's Grasp
		{ itemID = 19897, groupID = 1, refLootEntry = 14509 }; --Betrayer's Boots
		{ itemID = 19898, groupID = 1, refLootEntry = 14509 }; --Seal of Jin
		{ itemID = 19899, groupID = 1, refLootEntry = 14509 }; --Ritualistic Legguards
		{ itemID = 19900, groupID = 1, refLootEntry = 14507 }; --Zulian Stone Axe
		{ itemID = 19901, groupID = 1, refLootEntry = 14509 }; --Zulian Slicer
		{ itemID = 19903, groupID = 1, refLootEntry = 14507 }; --Fang of Venoxis
		{ itemID = 19904, groupID = 1, refLootEntry = 14507 }; --Runed Bloodstained Hauberk
		{ itemID = 19905, groupID = 1, refLootEntry = 14507 }; --Zanzil's Band
		{ itemID = 19906, groupID = 1, refLootEntry = 14507 }; --Blooddrenched Footpads
		{ itemID = 19907, groupID = 1, refLootEntry = 14507 }; --Zulian Tigerhide Cloak
		{ itemID = 19908, groupID = 2, refLootEntry = 15114 }; --Sceptre of Smiting
		{ itemID = 19909, groupID = 1, refLootEntry = 14515 }; --Will of Arlokk
		{ itemID = 19910, groupID = 1, refLootEntry = 14515 }; --Arlokk's Grasp
		{ itemID = 19912, groupID = 1, refLootEntry = 14515 }; --Overlord's Onyx Band
		{ itemID = 19913, groupID = 1, refLootEntry = 14515 }; --Bloodsoaked Greaves
		{ itemID = 19915, groupID = 1, refLootEntry = 14517 }; --Zulian Defender
		{ itemID = 19918, groupID = 1, refLootEntry = 14517 }; --Jeklik's Crusher
		{ itemID = 19919, groupID = 1, refLootEntry = 14510 }; --Bloodstained Greaves
		{ itemID = 19920, groupID = 1, refLootEntry = 14517 }; --Primalist's Band
		{ itemID = 19921, groupID = 2, refLootEntry = 15114 }; --Zulian Hacker
		{ itemID = 19922, groupID = 1, refLootEntry = 14515 }; --Arlokk's Hoodoo Stick
		{ itemID = 19923, groupID = 1, refLootEntry = 14517 }; --Jeklik's Opaline Talisman
		{ itemID = 19925, groupID = 1, refLootEntry = 14510 }; --Band of Jin
		{ itemID = 19927, groupID = 1, refLootEntry = 14510 }; --Mar'li's Touch
		{ itemID = 19928, groupID = 1, refLootEntry = 14517 }; --Animist's Spaulders
		{ itemID = 19929, groupID = 2, refLootEntry = 11380 }; --Bloodtinged Gloves
		{ itemID = 19930, groupID = 1, refLootEntry = 14510 }; --Mar'li's Eye
		{ itemID = 19944, groupID = 1, refLootEntry = 15114 }; --Nat Pagle's Fish Terminator
		{ itemID = 19945, groupID = 1, refLootEntry = 15114 }; --Foror's Eyepatch
		{ itemID = 19946, groupID = 1, refLootEntry = 15114 }; --Tigule's Harpoon
		{ itemID = 19947, groupID = 1, refLootEntry = 15114 }; --Nat Pagle's Broken Reel
		{ itemID = 19951, groupID = 2, refLootEntry = 340000 }; --Gri'lek's Charm of Might
		{ itemID = 19952, groupID = 2, refLootEntry = 340000 }; --Gri'lek's Charm of Valor
		{ itemID = 19953, groupID = 2, refLootEntry = 340000 }; --Renataki's Charm of Beasts
		{ itemID = 19954, groupID = 2, refLootEntry = 340000 }; --Renataki's Charm of Trickery
		{ itemID = 19955, groupID = 2, refLootEntry = 340000 }; --Wushoolay's Charm of Nature
		{ itemID = 19956, groupID = 2, refLootEntry = 340000 }; --Wushoolay's Charm of Spirits
		{ itemID = 19957, groupID = 2, refLootEntry = 340000 }; --Hazza'rah's Charm of Destruction
		{ itemID = 19958, groupID = 2, refLootEntry = 340000 }; --Hazza'rah's Charm of Healing
		{ itemID = 19959, groupID = 2, refLootEntry = 340000 }; --Hazza'rah's Charm of Magic
		{ itemID = 19961, groupID = 1, refLootEntry = 340000 }; --Gri'lek's Grinder
		{ itemID = 19962, groupID = 1, refLootEntry = 340000 }; --Gri'lek's Carver
		{ itemID = 19963, groupID = 1, refLootEntry = 340000 }; --Pitchfork of Madness
		{ itemID = 19964, groupID = 1, refLootEntry = 340000 }; --Renataki's Soul Conduit
		{ itemID = 19965, groupID = 1, refLootEntry = 340000 }; --Wushoolay's Poker
		{ itemID = 19967, groupID = 1, refLootEntry = 340000 }; --Thoughtblighter
		{ itemID = 19968, groupID = 1, refLootEntry = 340000 }; --Fiery Retributer
		{ itemID = 1998, groupID = 1, refLootEntry = 1221203 }; --Bloodscalp Channeling Staff
		{ itemID = 19993, groupID = 1, refLootEntry = 340000 }; --Hoodoo Hunting Bow
		{ itemID = 20032, groupID = 1, refLootEntry = 14510 }; --Flowing Ritual Robes
		{ itemID = 20033, groupID = 3, refLootEntry = 14517 }; --Zandalar Demoniac's Robe
		{ itemID = 20034, groupID = 3, refLootEntry = 14517 }; --Zandalar Illusionist's Robe
		{ itemID = 20038, groupID = 1, refLootEntry = 11382 }; --Mandokir's Sting
		{ itemID = 2014, groupID = 1, refLootEntry = 1221203 }; --Black Metal Greatsword
		{ itemID = 2015, groupID = 1, refLootEntry = 1221203 }; --Black Metal War Axe
		{ itemID = 2018464, groupID = 1, refLootEntry = 14326 }; --Gordok Knuckleband
		{ itemID = 20257, groupID = 3, refLootEntry = 14834 }; --Seafury Gauntlets
		{ itemID = 20258, groupID = 2, refLootEntry = 15114 }; --Zulian Ceremonial Staff
		{ itemID = 20259, groupID = 2, refLootEntry = 15114 }; --Shadow Panther Hide Gloves
		{ itemID = 20260, groupID = 1, refLootEntry = 14509 }; --Seafury Leggings
		{ itemID = 20261, groupID = 2, refLootEntry = 15114 }; --Shadow Panther Hide Belt
		{ itemID = 20262, groupID = 1, refLootEntry = 14517 }; --Seafury Boots
		{ itemID = 20263, groupID = 2, refLootEntry = 15114 }; --Gurubashi Helm
		{ itemID = 20264, groupID = 3, refLootEntry = 14834 }; --Peacekeeper Gauntlets
		{ itemID = 20265, groupID = 1, refLootEntry = 14517 }; --Peacekeeper Boots
		{ itemID = 20266, groupID = 1, refLootEntry = 14509 }; --Peacekeeper Leggings
		{ itemID = 202982, groupID = 1, refLootEntry = 11261 }; --Deathbone Helmet
		{ itemID = 2039, groupID = 1, refLootEntry = 6168 }; --Plains Ring
		{ itemID = 2040, groupID = 0, refLootEntry = 0 }; --Troll Protector
		{ itemID = 2060004, groupID = 1, refLootEntry = 2060004 }; --Thredd's Conspirator Mask
		{ itemID = 2060010, groupID = 1, refLootEntry = 2060010 }; --Stonemason's Visage
		{ itemID = 2060011, groupID = 1, refLootEntry = 2060011 }; --Cowl of the Scarlet Champion
		{ itemID = 2060012, groupID = 1, refLootEntry = 2060012 }; --Helm of Unyielding Zeal
		{ itemID = 2060013, groupID = 1, refLootEntry = 2060013 }; --Vishas's Interrogator Helm
		{ itemID = 2060050, groupID = 1, refLootEntry = 2060050 }; --Cowl of Arugal's Remorse
		{ itemID = 2060073, groupID = 1, refLootEntry = 2060073 }; --Cowl of Hidden Betrayal
		{ itemID = 2060080, groupID = 1, refLootEntry = 2060080 }; --Helm of the Winter Warden
		{ itemID = 2060088, groupID = 1, refLootEntry = 2060088 }; --Sleepless Vigil Eyepatch
		{ itemID = 2060214, groupID = 1, refLootEntry = 2060214 }; --Helm of Zealous Perdition
		{ itemID = 2060219, groupID = 1, refLootEntry = 2060219 }; --Baelog's Helm of Nordic Adventure
		{ itemID = 2060247, groupID = 1, refLootEntry = 2060247 }; --Zum'rah's Voodoo Headdress
		{ itemID = 2060261, groupID = 1, refLootEntry = 2060261 }; --Cowl of Fiery Intrigue
		{ itemID = 2060262, groupID = 1, refLootEntry = 2060262 }; --Waterbind Helm of Velratha
		{ itemID = 2060263, groupID = 1, refLootEntry = 2060263 }; --Nekrum's Voodoo Helm
		{ itemID = 2060264, groupID = 1, refLootEntry = 2060264 }; --Veil of the Defiant Cultist
		{ itemID = 2060265, groupID = 1, refLootEntry = 2060265 }; --Shadowbinder's Hood of Rituals
		{ itemID = 2060266, groupID = 1, refLootEntry = 2060266 }; --Veil of the Wretched Oath
		{ itemID = 2060296, groupID = 1, refLootEntry = 2060296 }; --Greenskin's Enchanted Hat
		{ itemID = 2060307, groupID = 1, refLootEntry = 2060307 }; --Spazzring's Ingenious Cap
		{ itemID = 2060309, groupID = 1, refLootEntry = 2060309 }; --Blackbreath's Fiery Eyepatch
		{ itemID = 2060314, groupID = 1, refLootEntry = 2060314 }; --Cowl of the Dark Architect
		{ itemID = 2060318, groupID = 1, refLootEntry = 2060318 }; --Argelmach's Elemental Headgear
		{ itemID = 2060319, groupID = 1, refLootEntry = 2060319 }; --Veil of the Interrogator
		{ itemID = 2060325, groupID = 1, refLootEntry = 2060325 }; --Thaurissan's Ember Crown
		{ itemID = 2060332, groupID = 1, refLootEntry = 2060332 }; --Stilgiss's Frostcrown
		{ itemID = 2060334, groupID = 1, refLootEntry = 2060334 }; --Helm of the Desert Guard
		{ itemID = 2060335, groupID = 1, refLootEntry = 2060335 }; --Eyepatch of the Dark Warchief
		{ itemID = 2060354, groupID = 1, refLootEntry = 2060354 }; --Helm of the Blackpool Guardian
		{ itemID = 2060422, groupID = 1, refLootEntry = 2060422 }; --Cowl of the Zealous Archivist
		{ itemID = 2060423, groupID = 1, refLootEntry = 2060423 }; --Helm of Arcane Righteousness
		{ itemID = 2060424, groupID = 1, refLootEntry = 2060424 }; --Headpiece of the Butcher
		{ itemID = 2060425, groupID = 1, refLootEntry = 2060425 }; --Veil of Illusive Wisdom
		{ itemID = 2060426, groupID = 1, refLootEntry = 2060426 }; --Barov's Shadowed Greathelm
		{ itemID = 2060435, groupID = 1, refLootEntry = 2060435 }; --Crown of the Arcane Highborne
		{ itemID = 2060456, groupID = 1, refLootEntry = 2060456 }; --Crown of the Cursed Baroness
		{ itemID = 2060461, groupID = 1, refLootEntry = 2060461 }; --Helm of Tidal Resonance
		{ itemID = 2060519, groupID = 1, refLootEntry = 2060519 }; --Grayhoof Spectral Helm
		{ itemID = 2060554, groupID = 1, refLootEntry = 2060554 }; --Nethekurse's Hood of the Fel Shaman
		{ itemID = 2060635, groupID = 1, refLootEntry = 2060635 }; --Freywinn's Arcane Blossom Helm
		{ itemID = 2060724, groupID = 1, refLootEntry = 2060724 }; --Cowl of Dark Instruction
		{ itemID = 2060796, groupID = 1, refLootEntry = 2060796 }; --Cowl of the Raging Nether
		{ itemID = 2060859, groupID = 1, refLootEntry = 2060859 }; --Rebel's Helm of Vigilance
		{ itemID = 2061045, groupID = 1, refLootEntry = 2061045 }; --Headpiece of Alchemical Whispers
		{ itemID = 2061079, groupID = 1, refLootEntry = 2060004 }; --Defias Insurrection Shoulderguards
		{ itemID = 2061091, groupID = 1, refLootEntry = 2060010 }; --Defiant Mantle
		{ itemID = 2061092, groupID = 1, refLootEntry = 2060011 }; --Pauldrons of Zealotry
		{ itemID = 2061093, groupID = 1, refLootEntry = 2060012 }; --Pauldrons of the Scarlet Crusade
		{ itemID = 2061098, groupID = 1, refLootEntry = 2060050 }; --Mantle of the Cursed Archmage
		{ itemID = 2061124, groupID = 1, refLootEntry = 2061124 }; --Springvale's Aegis Pauldrons
		{ itemID = 2061125, groupID = 1, refLootEntry = 2060080 }; --Pauldrons of the Frozen Protector
		{ itemID = 2061180, groupID = 1, refLootEntry = 2061180 }; --Serpentis's Chaotic Mantle
		{ itemID = 2061224, groupID = 1, refLootEntry = 2061224 }; --Shoulders of the Twilight Ascendant
		{ itemID = 2061226, groupID = 1, refLootEntry = 2061226 }; --Mantle of Zealotry
		{ itemID = 2061228, groupID = 1, refLootEntry = 2060214 }; --Epaulets of Fanatical Guard
		{ itemID = 2061250, groupID = 1, refLootEntry = 2060239 }; --Galgann's Emberguard Mantle
		{ itemID = 2061258, groupID = 1, refLootEntry = 2061258 }; --Shoulderguards of Desert Command
		{ itemID = 2061259, groupID = 1, refLootEntry = 2060247 }; --Sandfury Ritual Shoulderpads
		{ itemID = 2061260, groupID = 1, refLootEntry = 2061260 }; --Sandfury Mantle
		{ itemID = 2061261, groupID = 1, refLootEntry = 2061261 }; --Mantle of Duskbinding Shadows
		{ itemID = 2061272, groupID = 1, refLootEntry = 2060261 }; --Mantle of the Emberborn
		{ itemID = 2061275, groupID = 1, refLootEntry = 2061275 }; --Sandfury Tribal Pauldrons
		{ itemID = 2061276, groupID = 1, refLootEntry = 2060263 }; --Gutchewer's Ritual Shoulderguards
		{ itemID = 2061278, groupID = 1, refLootEntry = 2061278 }; --Mantle of Sacred Resolve
		{ itemID = 2061280, groupID = 1, refLootEntry = 2061280 }; --Mantle of the Sunken Zealot
		{ itemID = 2061281, groupID = 1, refLootEntry = 2061281 }; --Shoulderguards of Dark Rituals
		{ itemID = 2061282, groupID = 1, refLootEntry = 2061282 }; --Bloodcurse Mantle of Hukku
		{ itemID = 2061283, groupID = 1, refLootEntry = 2061283 }; --Mantle of the Atal'ai Prophet
		{ itemID = 2061319, groupID = 1, refLootEntry = 2061319 }; --Ribbly's Precision Pauldrons
		{ itemID = 2061331, groupID = 1, refLootEntry = 2061331 }; --Angerforge's Emberguard Pauldrons
		{ itemID = 2061332, groupID = 1, refLootEntry = 2060318 }; --Engineering Shoulderguards of the Golem Lord
		{ itemID = 2061333, groupID = 1, refLootEntry = 2060319 }; --Mantle of Dark Insights
		{ itemID = 2061334, groupID = 1, refLootEntry = 2060320 }; --Emberclad Mantle
		{ itemID = 2061338, groupID = 1, refLootEntry = 2060325 }; --Flameforged Mantle
		{ itemID = 2061345, groupID = 1, refLootEntry = 2060332 }; --Mantle of the Frost Warden
		{ itemID = 2061346, groupID = 1, refLootEntry = 2061346 }; --Houndmaster's Fiery Pauldrons
		{ itemID = 2061347, groupID = 1, refLootEntry = 2061347 }; --Dunereaver's Grit Pauldrons
		{ itemID = 2061348, groupID = 1, refLootEntry = 2061348 }; --Sandfury Phantom Epaulets
		{ itemID = 2061350, groupID = 1, refLootEntry = 2060335 }; --Mantle of Blackrock Authority
		{ itemID = 2061362, groupID = 1, refLootEntry = 2061362 }; --Ogre's Spiremantle
		{ itemID = 2061367, groupID = 1, refLootEntry = 2061367 }; --Runewarded Spaulders
		{ itemID = 2061376, groupID = 1, refLootEntry = 2061376 }; --Vosh'gajin's Hexweave Pauldrons
		{ itemID = 2061379, groupID = 1, refLootEntry = 2060353 }; --Shoulderguards of Shadow Anvil
		{ itemID = 2061381, groupID = 1, refLootEntry = 2060354 }; --Shoulderguards of Scholomance Sentinel
		{ itemID = 2061423, groupID = 1, refLootEntry = 2061423 }; --Zealot's Faithful Shoulderplates
		{ itemID = 2061425, groupID = 1, refLootEntry = 2061425 }; --Forresten's Harmonious Mantle
		{ itemID = 2061442, groupID = 1, refLootEntry = 2060418 }; --Mantle of Necrotic Frost
		{ itemID = 2061443, groupID = 1, refLootEntry = 2060423 }; --Shoulderguards of Fallen Honor
		{ itemID = 2061445, groupID = 1, refLootEntry = 2061445 }; --Shoulderguards of Willey's Vigil
		{ itemID = 2061446, groupID = 1, refLootEntry = 2060424 }; --Shoulderguards of Grisly Intent
		{ itemID = 2061448, groupID = 1, refLootEntry = 2060425 }; --Mantle of Phantasmal Echoes
		{ itemID = 2061449, groupID = 1, refLootEntry = 2060426 }; --Shoulderguards of Unholy Might
		{ itemID = 2061468, groupID = 1, refLootEntry = 2061468 }; --Spectral Whisper Shoulderpads
		{ itemID = 2061469, groupID = 1, refLootEntry = 2060435 }; --Shoulderguards of Demonic Pacts
		{ itemID = 2061470, groupID = 1, refLootEntry = 2061470 }; --Ravenoak's Arcane Mantle
		{ itemID = 2061477, groupID = 1, refLootEntry = 2061477 }; --Shoulders of Infernal Invocation
		{ itemID = 2061485, groupID = 1, refLootEntry = 2060448 }; --Flameforged Pauldrons
		{ itemID = 2061491, groupID = 1, refLootEntry = 2060456 }; --Mantle of Agonizing Shadows
		{ itemID = 2061504, groupID = 1, refLootEntry = 2060461 }; --Mantle of Flowing Currents
		{ itemID = 2061575, groupID = 1, refLootEntry = 2060519 }; --Spiritbound Shoulderguards
		{ itemID = 2061597, groupID = 1, refLootEntry = 2060554 }; --Shoulderguards of Twisted Legacies
		{ itemID = 2061613, groupID = 1, refLootEntry = 2061613 }; --Mantle of Fel Ruin
		{ itemID = 2061628, groupID = 1, refLootEntry = 2061628 }; --Infernal Shoulderplates of Porung
		{ itemID = 2061629, groupID = 1, refLootEntry = 2061629 }; --Betrayer's Guise
		{ itemID = 2061708, groupID = 1, refLootEntry = 2060617 }; --Mantle of the Shadow Council
		{ itemID = 2061716, groupID = 1, refLootEntry = 2061716 }; --Musel'ek's Mire Mantle
		{ itemID = 2061739, groupID = 1, refLootEntry = 2061739 }; --Shoulderguards of Arcane Resonance
		{ itemID = 2061744, groupID = 1, refLootEntry = 2060635 }; --Freywinn's Verdant Embrace Shoulderpads
		{ itemID = 2061754, groupID = 1, refLootEntry = 2061754 }; --Shoulderguards of the Auchenai Guardian
		{ itemID = 2061802, groupID = 1, refLootEntry = 2061802 }; --Tidal Mantle of the Warlord
		{ itemID = 2061806, groupID = 1, refLootEntry = 2061806 }; --Mantle of Arcanum Calculation
		{ itemID = 2061843, groupID = 1, refLootEntry = 2060724 }; --Mantle of Malicious Knowledge
		{ itemID = 2061927, groupID = 1, refLootEntry = 2060796 }; --Pauldrons of Channeled Flame
		{ itemID = 2062131, groupID = 1, refLootEntry = 2062131 }; --Voone's Commanding Pauldrons
		{ itemID = 2062216, groupID = 1, refLootEntry = 2061045 }; --Perfumer's Epaulets
		{ itemID = 2062245, groupID = 1, refLootEntry = 2060004 }; --Brotherhood Operative Vest
		{ itemID = 2062246, groupID = 1, refLootEntry = 2062246 }; --Knuckle-Vaulted Vest
		{ itemID = 2062269, groupID = 1, refLootEntry = 2062269 }; --First Mate's Robe
		{ itemID = 2062270, groupID = 1, refLootEntry = 2060010 }; --Chestguard of the Reclaimed
		{ itemID = 2062271, groupID = 1, refLootEntry = 2062271 }; --Loksey's Zealous Vest
		{ itemID = 2062272, groupID = 1, refLootEntry = 2060011 }; --Breastplate of Herod
		{ itemID = 2062273, groupID = 1, refLootEntry = 2060012 }; --Curass of Mograine's Legacy
		{ itemID = 2062274, groupID = 1, refLootEntry = 2060013 }; --Chestguard of Painful Truths
		{ itemID = 2062284, groupID = 1, refLootEntry = 2062284 }; --Vest of the Captive Monitor
		{ itemID = 2062363, groupID = 1, refLootEntry = 2062363 }; --Silverlaine's Sorrowful Vestments
		{ itemID = 2062364, groupID = 1, refLootEntry = 2061124 }; --Chestguard of the Cursed Commander
		{ itemID = 2062365, groupID = 1, refLootEntry = 2060080 }; --Chestplate of Midwinter Resolve
		{ itemID = 2062387, groupID = 1, refLootEntry = 2062387 }; --Deepfury Shadowbind Vest
		{ itemID = 2062390, groupID = 1, refLootEntry = 2060088 }; --Haunted Crusade Robe
		{ itemID = 2062556, groupID = 1, refLootEntry = 2062556 }; --Cobrahn's Enshrouded Vestments
		{ itemID = 2062557, groupID = 1, refLootEntry = 2062557 }; --Robes of the Serpent's Dream
		{ itemID = 2062558, groupID = 1, refLootEntry = 2061180 }; --Vestments of Twisted Dreams
		{ itemID = 2062689, groupID = 1, refLootEntry = 2061224 }; --Cultist's Duskweave Shirt
		{ itemID = 2062701, groupID = 1, refLootEntry = 2060214 }; --Tabard of the Fallen Crusader
		{ itemID = 2062709, groupID = 1, refLootEntry = 2060219 }; --Explorers' League Tunic
		{ itemID = 2062748, groupID = 1, refLootEntry = 2060239 }; --Pyroclasmic Robes of Galgann
		{ itemID = 2062764, groupID = 1, refLootEntry = 2061258 }; --Mercenary's Light Shirt
		{ itemID = 2062765, groupID = 1, refLootEntry = 2060247 }; --Mystic Shaman's Tunic
		{ itemID = 2062766, groupID = 1, refLootEntry = 2061260 }; --Tunic of the Desert Chief
		{ itemID = 2062767, groupID = 1, refLootEntry = 2061261 }; --Robes of the Forsaken Voids
		{ itemID = 2062793, groupID = 1, refLootEntry = 2060261 }; --Robe of Dark Conspiracy
		{ itemID = 2062798, groupID = 1, refLootEntry = 2060262 }; --Hydromancer's Robe
		{ itemID = 2062799, groupID = 1, refLootEntry = 2061275 }; --Sun-Bleached Ritual Shirt
		{ itemID = 2062800, groupID = 1, refLootEntry = 2060263 }; --Savage Tanaris Tunic
		{ itemID = 2062802, groupID = 1, refLootEntry = 2061278 }; --Robe of the Martyr's Zeal
		{ itemID = 2062804, groupID = 1, refLootEntry = 2061280 }; --Chestguard of Atal'ai Shadows
		{ itemID = 2062805, groupID = 1, refLootEntry = 2061281 }; --Bloodhex Chestplate
		{ itemID = 2062806, groupID = 1, refLootEntry = 2060264 }; --Vestments of Ritual Zeal
		{ itemID = 2062807, groupID = 1, refLootEntry = 2061282 }; --Hukku's Ritual Garb
		{ itemID = 2062808, groupID = 1, refLootEntry = 2062808 }; --Veil of Hakkari Shadows
		{ itemID = 2062809, groupID = 1, refLootEntry = 2060265 }; --Hexweaver's Robe of Twilight
		{ itemID = 2062810, groupID = 1, refLootEntry = 2060266 }; --Ogom's Wretched Shroud
		{ itemID = 2062811, groupID = 1, refLootEntry = 2061283 }; --Augur's Vestment
		{ itemID = 2062866, groupID = 1, refLootEntry = 2060296 }; --Defias Sorcerer's Tunic
		{ itemID = 2062869, groupID = 1, refLootEntry = 2062869 }; --Foreman's Melted Chestguard
		{ itemID = 2062870, groupID = 1, refLootEntry = 2062870 }; --Gizlock's Ingenious Chestplate
		{ itemID = 2062888, groupID = 1, refLootEntry = 2062888 }; --Antu'sul's Mystic Garb
		{ itemID = 2062912, groupID = 1, refLootEntry = 2060307 }; --Grim Guzzler Garb
		{ itemID = 2062914, groupID = 1, refLootEntry = 2060309 }; --Tavern Reveler's Shirt
		{ itemID = 2062915, groupID = 1, refLootEntry = 2061319 }; --Screwspigot's Workshop Vest
		{ itemID = 2062919, groupID = 1, refLootEntry = 2060314 }; --Shirt of Arcane Design
		{ itemID = 2062928, groupID = 1, refLootEntry = 2061331 }; --Angerforge's Fiery Bastion
		{ itemID = 2062929, groupID = 1, refLootEntry = 2060319 }; --Whispering Shirt of Secrets
		{ itemID = 2062930, groupID = 1, refLootEntry = 2060320 }; --Infernoweave Undershirt
		{ itemID = 2062953, groupID = 1, refLootEntry = 2060332 }; --Robe of Blackrock Enclosure
		{ itemID = 2062955, groupID = 1, refLootEntry = 2061346 }; --Flameforged Undershirt
		{ itemID = 2062956, groupID = 1, refLootEntry = 2060334 }; --Shirt of the Sandfury
		{ itemID = 2062957, groupID = 1, refLootEntry = 2061348 }; --Ethereal Whisper Shirt
		{ itemID = 2062969, groupID = 1, refLootEntry = 2061362 }; --Garb of the Dark Horde
		{ itemID = 2062970, groupID = 1, refLootEntry = 2060343 }; --Emberwoven Tunic
		{ itemID = 2062975, groupID = 1, refLootEntry = 2061367 }; --Sigil-Bound Undershirt
		{ itemID = 2062984, groupID = 1, refLootEntry = 2061376 }; --Smolderthorn Ritual Garb
		{ itemID = 2062995, groupID = 1, refLootEntry = 2060354 }; --Vestment of Undeath
		{ itemID = 2063039, groupID = 1, refLootEntry = 2061423 }; --Divine Crusader's Chestguard
		{ itemID = 2063046, groupID = 1, refLootEntry = 2061425 }; --Lamenting Minstrel's Shirt
		{ itemID = 2063063, groupID = 1, refLootEntry = 2060418 }; --Shirt of the Lich's Grip
		{ itemID = 2063064, groupID = 1, refLootEntry = 2060422 }; --Robes of the Scarlet Chronicler
		{ itemID = 2063065, groupID = 1, refLootEntry = 2060423 }; --Purifier's Undershirt
		{ itemID = 2063067, groupID = 1, refLootEntry = 2061445 }; --Cannonade Shirt
		{ itemID = 2063070, groupID = 1, refLootEntry = 2060424 }; --Shirt of Macabre Science
		{ itemID = 2063074, groupID = 1, refLootEntry = 2060426 }; --Shirt of Eternal Commitment
		{ itemID = 2063092, groupID = 1, refLootEntry = 2061468 }; --Veil of the Phantasmal
		{ itemID = 2063093, groupID = 1, refLootEntry = 2060435 }; --Vestments of Eldre'Thalas
		{ itemID = 2063101, groupID = 1, refLootEntry = 2061477 }; --Invoker's Fiery Mantle
		{ itemID = 2063112, groupID = 1, refLootEntry = 2060448 }; --Emberwoven Shirt
		{ itemID = 2063118, groupID = 1, refLootEntry = 2060456 }; --Shirt of the Forsaken Nobility
		{ itemID = 2063131, groupID = 1, refLootEntry = 2060461 }; --Aqueous Tunic
		{ itemID = 2063190, groupID = 1, refLootEntry = 2063190 }; --Sorcerer's Arcane Tunic
		{ itemID = 2063218, groupID = 1, refLootEntry = 2060519 }; --Haunting Vest of the Ancestors
		{ itemID = 2063253, groupID = 1, refLootEntry = 2061613 }; --Vestments of Shadow Power
		{ itemID = 2063266, groupID = 1, refLootEntry = 2061628 }; --Blood Guard's Defiled Tabard
		{ itemID = 2063301, groupID = 1, refLootEntry = 2061716 }; --Swamplord's Corrupted Jerkin
		{ itemID = 2063318, groupID = 1, refLootEntry = 2061754 }; --Sanctified Auchenai Shirt
		{ itemID = 2063341, groupID = 1, refLootEntry = 2061802 }; --Aquamarine Garment
		{ itemID = 2063343, groupID = 1, refLootEntry = 2061806 }; --Robe of Strategic Enigma
		{ itemID = 2063359, groupID = 1, refLootEntry = 2060724 }; --Necromantic Attire
		{ itemID = 2063478, groupID = 1, refLootEntry = 2060796 }; --Robe of Fiery Arcana
		{ itemID = 2063525, groupID = 1, refLootEntry = 2060859 }; --Stonemason's Defiant Chestguard
		{ itemID = 2063642, groupID = 1, refLootEntry = 2062131 }; --Battleworn Shirt of the Blackrock
		{ itemID = 2063810, groupID = 1, refLootEntry = 2060050 }; --Robes of Worgen Influence
		{ itemID = 2063839, groupID = 1, refLootEntry = 2060073 }; --Robe of Faded Glory
		{ itemID = 2063851, groupID = 1, refLootEntry = 2063851 }; --Spectral Emissary's Raiment
		{ itemID = 2063944, groupID = 1, refLootEntry = 2063944 }; --Anacondra's Envenomed Vestment
		{ itemID = 2064014, groupID = 1, refLootEntry = 2061224 }; --Robes of the Shadowed Moon
		{ itemID = 2064018, groupID = 1, refLootEntry = 2061226 }; --Robes of Arcane Vigilance
		{ itemID = 2064020, groupID = 1, refLootEntry = 2060214 }; --Breastplate of the Faded Light
		{ itemID = 2064027, groupID = 1, refLootEntry = 2060219 }; --Uldaman Raider's Chestguard
		{ itemID = 2064044, groupID = 1, refLootEntry = 2061258 }; --Breastplate of Bly's Valor
		{ itemID = 2064045, groupID = 1, refLootEntry = 2060247 }; --Hexed Armor of Zum'rah
		{ itemID = 2064046, groupID = 1, refLootEntry = 2061260 }; --Sandscalp’s Breastplate
		{ itemID = 2064066, groupID = 1, refLootEntry = 2060262 }; --Aquaflow Breastplate
		{ itemID = 2064067, groupID = 1, refLootEntry = 2061275 }; --Desert Guardian's Chestplate
		{ itemID = 2064068, groupID = 1, refLootEntry = 2060263 }; --Sandfury Protector's Chestplate
		{ itemID = 2064071, groupID = 1, refLootEntry = 2061282 }; --Shadowchannel Robe of Hukku
		{ itemID = 2064072, groupID = 1, refLootEntry = 2062808 }; --Chestguard of Rituals
		{ itemID = 2064073, groupID = 1, refLootEntry = 2060266 }; --Robe of the Cursed Protector
		{ itemID = 2064074, groupID = 1, refLootEntry = 2061283 }; --Robes of Shadow Invocation
		{ itemID = 2064118, groupID = 1, refLootEntry = 2062888 }; --Sandfury Shaman's Vest
		{ itemID = 2064137, groupID = 1, refLootEntry = 2060307 }; --Entrepreneur's Vestment
		{ itemID = 2064139, groupID = 1, refLootEntry = 2060309 }; --Inferno Embrace Vest
		{ itemID = 2064140, groupID = 1, refLootEntry = 2061319 }; --Blackrock Engineer's Tunic
		{ itemID = 2064143, groupID = 1, refLootEntry = 2060314 }; --Robes of Elemental Craft
		{ itemID = 2064155, groupID = 1, refLootEntry = 2060318 }; --Dark Iron Chestwraps of Mastery
		{ itemID = 2064156, groupID = 1, refLootEntry = 2060319 }; --Robe of Sinister Shadows
		{ itemID = 2064157, groupID = 1, refLootEntry = 2060320 }; --Flameforged Robe
		{ itemID = 2064161, groupID = 1, refLootEntry = 2060325 }; --Robes of the Dark Emperor
		{ itemID = 2064170, groupID = 1, refLootEntry = 2061346 }; --Emberclasped Tunic
		{ itemID = 2064171, groupID = 1, refLootEntry = 2061347 }; --Sandfury Battleplate
		{ itemID = 2064172, groupID = 1, refLootEntry = 2060334 }; --Mystic Vest of Zerillis
		{ itemID = 2064173, groupID = 1, refLootEntry = 2061348 }; --Veil of Desert Spirits
		{ itemID = 2064175, groupID = 1, refLootEntry = 2060335 }; --Chestguard of Dire Command
		{ itemID = 2064187, groupID = 1, refLootEntry = 2061362 }; --Grimaxe Warplate
		{ itemID = 2064188, groupID = 1, refLootEntry = 2060343 }; --Blackrock Chestguard of Command
		{ itemID = 2064192, groupID = 1, refLootEntry = 2061367 }; --Chestplate of the Rune Guardian
		{ itemID = 2064198, groupID = 1, refLootEntry = 2061376 }; --Dark Loa's Leather Hauberk
		{ itemID = 2064203, groupID = 1, refLootEntry = 2060353 }; --Breastplate of Dark Steel
		{ itemID = 2064204, groupID = 1, refLootEntry = 2060354 }; --Chestplate of the Scourgelord
		{ itemID = 2064244, groupID = 1, refLootEntry = 2061425 }; --Hearthsinger's Tuneful Vest
		{ itemID = 2064267, groupID = 1, refLootEntry = 2060418 }; --Robe of the Lifeless Mage
		{ itemID = 2064268, groupID = 1, refLootEntry = 2060423 }; --Breastplate of Veiled Divinity
		{ itemID = 2064269, groupID = 1, refLootEntry = 2064269 }; --Blighted Messenger's Robe
		{ itemID = 2064271, groupID = 1, refLootEntry = 2061445 }; --Chestplate of Artillery Command
		{ itemID = 2064274, groupID = 1, refLootEntry = 2060424 }; --Vestments of Necrotic Insight
		{ itemID = 2064276, groupID = 1, refLootEntry = 2060425 }; --Robe of the Veiled Enchanter
		{ itemID = 2064277, groupID = 1, refLootEntry = 2060426 }; --Caer Darrow Chestplate
		{ itemID = 2064296, groupID = 1, refLootEntry = 2061468 }; --Eldre'Thalas Shroud
		{ itemID = 2064297, groupID = 1, refLootEntry = 2060435 }; --Breastplate of the Corrupted Prince
		{ itemID = 2064298, groupID = 1, refLootEntry = 2061470 }; --Guardian's Embrace
		{ itemID = 2064304, groupID = 1, refLootEntry = 2061477 }; --Robe of Demonic Rituals
		{ itemID = 2064316, groupID = 1, refLootEntry = 2060448 }; --Charred Chestguard
		{ itemID = 2064322, groupID = 1, refLootEntry = 2060456 }; --Breastplate of Eternal Servitude
		{ itemID = 2064337, groupID = 1, refLootEntry = 2060461 }; --Cloak of Aquatic Echoes
		{ itemID = 2064392, groupID = 1, refLootEntry = 2063190 }; --Magister's Enchanted Robe
		{ itemID = 2064475, groupID = 1, refLootEntry = 2060554 }; --Robe of the Corrupted Shadowmoon
		{ itemID = 2064496, groupID = 1, refLootEntry = 2061613 }; --Robes of the Dark Council
		{ itemID = 2064518, groupID = 1, refLootEntry = 2061628 }; --Felheart Chestguard of the Guard
		{ itemID = 2064519, groupID = 1, refLootEntry = 2061629 }; --Traitor's Vest
		{ itemID = 2064635, groupID = 1, refLootEntry = 2060617 }; --Robe of the Void Pact
		{ itemID = 2064668, groupID = 1, refLootEntry = 2061739 }; --Breastplate of Devastating Confluence
		{ itemID = 2064674, groupID = 1, refLootEntry = 2060635 }; --Robes of Botanical Mastery
		{ itemID = 2064692, groupID = 1, refLootEntry = 2061754 }; --Chestplate of Spiritual Vigilance
		{ itemID = 2064782, groupID = 1, refLootEntry = 2061802 }; --Steamvault Chestguard
		{ itemID = 2064834, groupID = 1, refLootEntry = 2060724 }; --Robes of the Deathbinder
		{ itemID = 2064835, groupID = 1, refLootEntry = 2064835 }; --Robe of Arcane Whispers
		{ itemID = 2065237, groupID = 1, refLootEntry = 2062131 }; --Chestplate of the War Master
		{ itemID = 2065313, groupID = 1, refLootEntry = 2061045 }; --Robes of the Forsaken Alchemist
		{ itemID = 2065360, groupID = 1, refLootEntry = 2060004 }; --Rogue Mason's Girdle
		{ itemID = 2065382, groupID = 1, refLootEntry = 2062271 }; --Houndmaster's Leather Belt
		{ itemID = 2065383, groupID = 1, refLootEntry = 2060011 }; --Girdle of the Crusader's Wrath
		{ itemID = 2065384, groupID = 1, refLootEntry = 2060012 }; --Girdle of Fanatical Fury
		{ itemID = 2065385, groupID = 1, refLootEntry = 2060013 }; --Sash of Inquisitorial Zeal
		{ itemID = 2065390, groupID = 1, refLootEntry = 2062284 }; --Sash of the Riotous
		{ itemID = 2065405, groupID = 1, refLootEntry = 2060050 }; --Arugal's Enchanted Sash
		{ itemID = 2065453, groupID = 1, refLootEntry = 2060073 }; --Sash of Inquisitive Shadows
		{ itemID = 2065467, groupID = 1, refLootEntry = 2062363 }; --Cursed Belt of the Spectral Baron
		{ itemID = 2065468, groupID = 1, refLootEntry = 2061124 }; --Necromantic Girdle of Springvale
		{ itemID = 2065469, groupID = 1, refLootEntry = 2060080 }; --Girdle of Cold Vigilance
		{ itemID = 2065473, groupID = 1, refLootEntry = 2063851 }; --Phantom Conqueror's Girdle
		{ itemID = 2065491, groupID = 1, refLootEntry = 2062387 }; --Molten Chain Belt
		{ itemID = 2065494, groupID = 1, refLootEntry = 2060088 }; --Cincture of Restless Spirits
		{ itemID = 2065656, groupID = 1, refLootEntry = 2062556 }; --Serpentbinder's Girdle
		{ itemID = 2065657, groupID = 1, refLootEntry = 2062557 }; --Belt of the Emerald Coil
		{ itemID = 2065658, groupID = 1, refLootEntry = 2061180 }; --Belt of Corrupted Growth
		{ itemID = 2065673, groupID = 1, refLootEntry = 2063944 }; --Serpentbinder's Sash
		{ itemID = 2065781, groupID = 1, refLootEntry = 2061226 }; --Cincture of Binding
		{ itemID = 2065784, groupID = 1, refLootEntry = 2060214 }; --Girdle of the Lost Sentinel
		{ itemID = 2065792, groupID = 1, refLootEntry = 2060219 }; --Titanforged Girdle
		{ itemID = 2065828, groupID = 1, refLootEntry = 2060239 }; --Belt of Incandescent Warding
		{ itemID = 2065843, groupID = 1, refLootEntry = 2061258 }; --Opportunist's Girdle
		{ itemID = 2065845, groupID = 1, refLootEntry = 2061260 }; --Belt of the Tanaris Wastes
		{ itemID = 2065846, groupID = 1, refLootEntry = 2061261 }; --Sash of the Eclipsed Spirits
		{ itemID = 2065872, groupID = 1, refLootEntry = 2060261 }; --Belt of Cinderweave
		{ itemID = 2065876, groupID = 1, refLootEntry = 2060262 }; --Tidewoven Girdle
		{ itemID = 2065877, groupID = 1, refLootEntry = 2061275 }; --Farraki Defender's Girdle
		{ itemID = 2065878, groupID = 1, refLootEntry = 2060263 }; --Desert Hunter's Girdle
		{ itemID = 2065879, groupID = 1, refLootEntry = 2061278 }; --Sash of the Desert Guardian
		{ itemID = 2065881, groupID = 1, refLootEntry = 2061280 }; --Cincture of Hakkar's Whispers
		{ itemID = 2065882, groupID = 1, refLootEntry = 2061281 }; --Voodoo Chain Belt
		{ itemID = 2065883, groupID = 1, refLootEntry = 2060264 }; --Sash of the Hakkari Devotee
		{ itemID = 2065884, groupID = 1, refLootEntry = 2060265 }; --Voodoo Sash of the Atal'ai
		{ itemID = 2065885, groupID = 1, refLootEntry = 2060266 }; --Bloodbound Sash of Shadows
		{ itemID = 2065886, groupID = 1, refLootEntry = 2061283 }; --Girdle of Dark Rituals
		{ itemID = 2065937, groupID = 1, refLootEntry = 2060296 }; --Corsair's Binding Cord
		{ itemID = 2065939, groupID = 1, refLootEntry = 2062869 }; --Ore-Tempered Waistwrap
		{ itemID = 2065940, groupID = 1, refLootEntry = 2062870 }; --Waistband of Goblin Craft
		{ itemID = 2065958, groupID = 1, refLootEntry = 2062888 }; --Desert Walker's Belt
		{ itemID = 2065981, groupID = 1, refLootEntry = 2060307 }; --Crafty Waistband
		{ itemID = 2065983, groupID = 1, refLootEntry = 2060309 }; --Molten Band Waistguard
		{ itemID = 2065984, groupID = 1, refLootEntry = 2061319 }; --Dark Iron Tinkerer's Belt
		{ itemID = 2066000, groupID = 1, refLootEntry = 2061331 }; --Molten Command Girdle
		{ itemID = 2066001, groupID = 1, refLootEntry = 2060318 }; --Golem-Crafted Waistband
		{ itemID = 2066002, groupID = 1, refLootEntry = 2060319 }; --Girdle of Subjugation
		{ itemID = 2066003, groupID = 1, refLootEntry = 2060320 }; --Lava-bound Sash
		{ itemID = 2066025, groupID = 1, refLootEntry = 2061346 }; --Searing Leather Belt
		{ itemID = 2066026, groupID = 1, refLootEntry = 2061347 }; --Belt of the Arid Defender
		{ itemID = 2066027, groupID = 1, refLootEntry = 2060334 }; --Belt of Elemental Secrets
		{ itemID = 2066028, groupID = 1, refLootEntry = 2061348 }; --Wraith's Whispering Cord
		{ itemID = 2066030, groupID = 1, refLootEntry = 2060335 }; --Girdle of Blackened Resolve
		{ itemID = 2066040, groupID = 1, refLootEntry = 2061362 }; --Girdle of Blackened Faith
		{ itemID = 2066041, groupID = 1, refLootEntry = 2060343 }; --Girdle of Emberlinked Chains
		{ itemID = 2066047, groupID = 1, refLootEntry = 2061367 }; --Belt of Runic Guardianship
		{ itemID = 2066056, groupID = 1, refLootEntry = 2061376 }; --Voodoo-Threaded Waistband
		{ itemID = 2066061, groupID = 1, refLootEntry = 2060353 }; --Girdle of the Black Forge
		{ itemID = 2066068, groupID = 1, refLootEntry = 2060354 }; --Girdle of Dark Command
		{ itemID = 2066116, groupID = 1, refLootEntry = 2061423 }; --Lightforged Girdle of Zeal
		{ itemID = 2066123, groupID = 1, refLootEntry = 2061425 }; --Melodic Bard's Belt
		{ itemID = 2066148, groupID = 1, refLootEntry = 2060418 }; --Sash of Undeath
		{ itemID = 2066149, groupID = 1, refLootEntry = 2060422 }; --Belt of Burning Records
		{ itemID = 2066150, groupID = 1, refLootEntry = 2060423 }; --Girdle of Unyielding Zeal
		{ itemID = 2066151, groupID = 1, refLootEntry = 2064269 }; --Sash of the Forsaken Courier
		{ itemID = 2066152, groupID = 1, refLootEntry = 2061445 }; --Belt of Scarlet Munitions
		{ itemID = 2066155, groupID = 1, refLootEntry = 2060424 }; --Strap of Dark Experimentation
		{ itemID = 2066158, groupID = 1, refLootEntry = 2060425 }; --Sash of Ghostly Visions
		{ itemID = 2066159, groupID = 1, refLootEntry = 2060426 }; --Cinch of Necromantic Power
		{ itemID = 2066175, groupID = 1, refLootEntry = 2060435 }; --Girdle of Enchanted Power
		{ itemID = 2066176, groupID = 1, refLootEntry = 2061470 }; --Wildsweaver Belt
		{ itemID = 2066182, groupID = 1, refLootEntry = 2061477 }; --Cincture of Searing Corruption
		{ itemID = 2066196, groupID = 1, refLootEntry = 2060448 }; --Ashen Waistplate
		{ itemID = 2066201, groupID = 1, refLootEntry = 2060456 }; --Girdle of Necromantic Allegiance
		{ itemID = 2066221, groupID = 1, refLootEntry = 2060461 }; --Belt of Surging Waves
		{ itemID = 2066279, groupID = 1, refLootEntry = 2063190 }; --Highborne Aether Sash
		{ itemID = 2066307, groupID = 1, refLootEntry = 2060519 }; --Ethereal Waistcord
		{ itemID = 2066390, groupID = 1, refLootEntry = 2061613 }; --Belt of Infernal Dominance
		{ itemID = 2066420, groupID = 1, refLootEntry = 2061628 }; --Warworn Girdle of Savagery
		{ itemID = 2066421, groupID = 1, refLootEntry = 2061629 }; --Deceiver's Cord
		{ itemID = 2066516, groupID = 1, refLootEntry = 2060617 }; --Cincture of Dark Rituals
		{ itemID = 2066521, groupID = 1, refLootEntry = 2061716 }; --Belt of the Broken Marsh
		{ itemID = 2066535, groupID = 1, refLootEntry = 2061739 }; --Belt of Botanical Guardianship
		{ itemID = 2066543, groupID = 1, refLootEntry = 2060635 }; --Belt of Floral Synthesis
		{ itemID = 2066560, groupID = 1, refLootEntry = 2061754 }; --Girdle of the Crypt Defender
		{ itemID = 2066632, groupID = 1, refLootEntry = 2061802 }; --Waistguard of the Depths
		{ itemID = 2066639, groupID = 1, refLootEntry = 2061806 }; --Girdle of Arcane Precision
		{ itemID = 2066684, groupID = 1, refLootEntry = 2060724 }; --Sash of Shadowed Lore
		{ itemID = 2066685, groupID = 1, refLootEntry = 2064835 }; --Girdle of Eldritch Wards
		{ itemID = 2066865, groupID = 1, refLootEntry = 2060796 }; --Girdle of Nether Flames
		{ itemID = 2066951, groupID = 1, refLootEntry = 2060859 }; --Belt of the Forlorn Marauder
		{ itemID = 2067125, groupID = 1, refLootEntry = 2062131 }; --Girdle of Orgrimmar's Might
		{ itemID = 2067220, groupID = 1, refLootEntry = 2061045 }; --Belt of Lingering Scent
		{ itemID = 2067266, groupID = 1, refLootEntry = 2060004 }; --Stockade Breaker Leggings
		{ itemID = 2067267, groupID = 1, refLootEntry = 2062246 }; --Leggings of the Ironbreaker
		{ itemID = 2067299, groupID = 1, refLootEntry = 2062269 }; --Seafarer's Trousers
		{ itemID = 2067300, groupID = 1, refLootEntry = 2060010 }; --VanCleef's Leggings of Rebellion
		{ itemID = 2067301, groupID = 1, refLootEntry = 2062271 }; --Scarlet Hound Leggings
		{ itemID = 2067302, groupID = 1, refLootEntry = 2060011 }; --Legguards of Fanaticism
		{ itemID = 2067303, groupID = 1, refLootEntry = 2060012 }; --Legplates of the Zealous Assault
		{ itemID = 2067304, groupID = 1, refLootEntry = 2060013 }; --Leggings of the Scarlet Judge
		{ itemID = 2067315, groupID = 1, refLootEntry = 2062284 }; --Leggings of the Rebellion
		{ itemID = 2067336, groupID = 1, refLootEntry = 2060050 }; --Leggings of Shadowed Legacy
		{ itemID = 2067394, groupID = 1, refLootEntry = 2060073 }; --Leggings of Silent Truth
		{ itemID = 2067408, groupID = 1, refLootEntry = 2062363 }; --Haunted Leggings of the Forsaken
		{ itemID = 2067409, groupID = 1, refLootEntry = 2061124 }; --Legplates of Gilnean Valor
		{ itemID = 2067410, groupID = 1, refLootEntry = 2060080 }; --Legguards of the Icy Sentinel
		{ itemID = 2067417, groupID = 1, refLootEntry = 2063851 }; --Wailing Envoy's Leggings
		{ itemID = 2067436, groupID = 1, refLootEntry = 2062387 }; --Dark Iron Legguards
		{ itemID = 2067439, groupID = 1, refLootEntry = 2060088 }; --Legwraps of the Eternal Watch
		{ itemID = 2067626, groupID = 1, refLootEntry = 2062556 }; --Dreamwoven Leggings
		{ itemID = 2067627, groupID = 1, refLootEntry = 2062557 }; --Leggings of the Fang's Whisper
		{ itemID = 2067628, groupID = 1, refLootEntry = 2061180 }; --Leggings of Serpentine Will
		{ itemID = 2067648, groupID = 1, refLootEntry = 2063944 }; --Corrupted Dreamweave Leggings
		{ itemID = 2067763, groupID = 1, refLootEntry = 2061224 }; --Leggings of Blackfathom Rituals
		{ itemID = 2067772, groupID = 1, refLootEntry = 2061226 }; --Purifier's Chausses
		{ itemID = 2067775, groupID = 1, refLootEntry = 2060214 }; --Greaves of Abandoned Oaths
		{ itemID = 2067783, groupID = 1, refLootEntry = 2060219 }; --Legwraps of the Lost Viking
		{ itemID = 2067823, groupID = 1, refLootEntry = 2060239 }; --Molten Core Legwraps
		{ itemID = 2067840, groupID = 1, refLootEntry = 2061258 }; --Legplates of Tactical Advantage
		{ itemID = 2067841, groupID = 1, refLootEntry = 2060247 }; --Leggings of the Desert Witch Doctor
		{ itemID = 2067842, groupID = 1, refLootEntry = 2061260 }; --Legguards of the Exiled
		{ itemID = 2067843, groupID = 1, refLootEntry = 2061261 }; --Leggings of the Enshadowed Ritual
		{ itemID = 2067870, groupID = 1, refLootEntry = 2060261 }; --Trousers of Shadowflame
		{ itemID = 2067875, groupID = 1, refLootEntry = 2060262 }; --Springsurge Legplates
		{ itemID = 2067876, groupID = 1, refLootEntry = 2061275 }; --Tanaris Windwalkers
		{ itemID = 2067877, groupID = 1, refLootEntry = 2060263 }; --Trollbone Legplates
		{ itemID = 2067879, groupID = 1, refLootEntry = 2061278 }; --Leggings of Devotion's Sacrifice
		{ itemID = 2067881, groupID = 1, refLootEntry = 2061280 }; --Trousers of the Swamp Guardian
		{ itemID = 2067882, groupID = 1, refLootEntry = 2061281 }; --Legplates of Shadow Incantations
		{ itemID = 2067883, groupID = 1, refLootEntry = 2060264 }; --Legwraps of Dark Communion
		{ itemID = 2067884, groupID = 1, refLootEntry = 2061282 }; --Corrupted Legwraps of the Atal'ai
		{ itemID = 2067885, groupID = 1, refLootEntry = 2062808 }; --Leggings of the Dark Zealot
		{ itemID = 2067886, groupID = 1, refLootEntry = 2060265 }; --Soulflayer's Leggings of the Swamp
		{ itemID = 2067887, groupID = 1, refLootEntry = 2060266 }; --Leggings of Dark Allegiance
		{ itemID = 2067888, groupID = 1, refLootEntry = 2061283 }; --Trousers of Fel Insight
		{ itemID = 2067944, groupID = 1, refLootEntry = 2060296 }; --Buccaneer's Breeches
		{ itemID = 2067947, groupID = 1, refLootEntry = 2062869 }; --Searing Metallurgy Leggings
		{ itemID = 2067948, groupID = 1, refLootEntry = 2062870 }; --Tinkering Legguards
		{ itemID = 2067968, groupID = 1, refLootEntry = 2062888 }; --Bindings of Earthen Spirits
		{ itemID = 2067996, groupID = 1, refLootEntry = 2060307 }; --Tavern Trousers
		{ itemID = 2067998, groupID = 1, refLootEntry = 2060309 }; --Ale-Soaked Trousers
		{ itemID = 2067999, groupID = 1, refLootEntry = 2061319 }; --Molten Alloy Greaves
		{ itemID = 2068004, groupID = 1, refLootEntry = 2060314 }; --Leggings of Molten Design
		{ itemID = 2068016, groupID = 1, refLootEntry = 2061331 }; --Legplates of the Infernal Warden
		{ itemID = 2068017, groupID = 1, refLootEntry = 2060318 }; --Argelmach's Reinforced Leggings
		{ itemID = 2068018, groupID = 1, refLootEntry = 2060319 }; --Pants of Suppressed Pain
		{ itemID = 2068019, groupID = 1, refLootEntry = 2060320 }; --Molten Core Leggings
		{ itemID = 2068026, groupID = 1, refLootEntry = 2060325 }; --Leggings of Molten Dominion
		{ itemID = 2068048, groupID = 1, refLootEntry = 2060332 }; --Leggings of Icesteel
		{ itemID = 2068050, groupID = 1, refLootEntry = 2061346 }; --Charred Hide Leggings
		{ itemID = 2068051, groupID = 1, refLootEntry = 2061347 }; --Legguards of the Dunewalker
		{ itemID = 2068052, groupID = 1, refLootEntry = 2060334 }; --Leggings of the Sacred Sands
		{ itemID = 2068053, groupID = 1, refLootEntry = 2061348 }; --Dune Wraith Legwraps
		{ itemID = 2068055, groupID = 1, refLootEntry = 2060335 }; --Leggings of the Shadow Sire
		{ itemID = 2068071, groupID = 1, refLootEntry = 2061362 }; --Legguards of the Spire
		{ itemID = 2068078, groupID = 1, refLootEntry = 2061367 }; --Legplates of Arcane Vigilance
		{ itemID = 2068087, groupID = 1, refLootEntry = 2061376 }; --Shadowstride Leather Leggings
		{ itemID = 2068092, groupID = 1, refLootEntry = 2060353 }; --Anvilcrack's Legplates of Fortitude
		{ itemID = 2068099, groupID = 1, refLootEntry = 2060354 }; --Greaves of Plagueland Terror
		{ itemID = 2068156, groupID = 1, refLootEntry = 2061423 }; --Holy Crusader's Legguards
		{ itemID = 2068164, groupID = 1, refLootEntry = 2061425 }; --Bard’s Echoing Leggings
		{ itemID = 2068189, groupID = 1, refLootEntry = 2060418 }; --Leggings of Icy Demise
		{ itemID = 2068190, groupID = 1, refLootEntry = 2060422 }; --Leggings of the Devout Scribe
		{ itemID = 2068191, groupID = 1, refLootEntry = 2060423 }; --Legplates of the Redeemer
		{ itemID = 2068192, groupID = 1, refLootEntry = 2064269 }; --Leggings of Shattered Oaths
		{ itemID = 2068194, groupID = 1, refLootEntry = 2061445 }; --Legplates of the Zealous Siege
		{ itemID = 2068197, groupID = 1, refLootEntry = 2060424 }; --Leggings of Unholy Precision
		{ itemID = 2068200, groupID = 1, refLootEntry = 2060425 }; --Leggings of Deceptive Allure
		{ itemID = 2068201, groupID = 1, refLootEntry = 2060426 }; --Deathknight's Legplates
		{ itemID = 2068222, groupID = 1, refLootEntry = 2061468 }; --Echoing Fate Trousers
		{ itemID = 2068223, groupID = 1, refLootEntry = 2060435 }; --Legplates of the Forsaken Lineage
		{ itemID = 2068224, groupID = 1, refLootEntry = 2061470 }; --Leafbound Leggings
		{ itemID = 2068231, groupID = 1, refLootEntry = 2061477 }; --Leggings of the Chasm's Embrace
		{ itemID = 2068247, groupID = 1, refLootEntry = 2060448 }; --Lavaforged Legplates
		{ itemID = 2068253, groupID = 1, refLootEntry = 2060456 }; --Legplates of the Scholomancer
		{ itemID = 2068273, groupID = 1, refLootEntry = 2060461 }; --Leggings of Watery Embrace
		{ itemID = 2068338, groupID = 1, refLootEntry = 2063190 }; --Eldre'Thalas Ritual Leggings
		{ itemID = 2068370, groupID = 1, refLootEntry = 2060519 }; --Phantom Breeches
		{ itemID = 2068443, groupID = 1, refLootEntry = 2060554 }; --Legwraps of Fel Corruption
		{ itemID = 2068474, groupID = 1, refLootEntry = 2061613 }; --Leggings of Demonic Influence
		{ itemID = 2068506, groupID = 1, refLootEntry = 2061628 }; --Legplates of Demonic Might
		{ itemID = 2068507, groupID = 1, refLootEntry = 2061629 }; --Doubter's Leggings
		{ itemID = 2068607, groupID = 1, refLootEntry = 2060617 }; --Leggings of the Grandmaster
		{ itemID = 2068616, groupID = 1, refLootEntry = 2061716 }; --Bogstalker Leggings
		{ itemID = 2068645, groupID = 1, refLootEntry = 2061739 }; --Leggings of Enchanted Flora
		{ itemID = 2068654, groupID = 1, refLootEntry = 2060635 }; --Greaves of Nature's Wrath
		{ itemID = 2068672, groupID = 1, refLootEntry = 2061754 }; --Legguards of Sacred Duty
		{ itemID = 2068757, groupID = 1, refLootEntry = 2061806 }; --Leggings of Tactical Insight
		{ itemID = 2068810, groupID = 1, refLootEntry = 2060724 }; --Leggings of the Gravebinder
		{ itemID = 2068811, groupID = 1, refLootEntry = 2064835 }; --Leggings of Dark Incantations
		{ itemID = 2069009, groupID = 1, refLootEntry = 2060796 }; --Leggings of Spectral Inferno
		{ itemID = 2069110, groupID = 1, refLootEntry = 2060859 }; --Leggings of the Mineshaft
		{ itemID = 2069321, groupID = 1, refLootEntry = 2062131 }; --Legplates of the Black Dragon's Herald
		{ itemID = 2069435, groupID = 1, refLootEntry = 2061045 }; --Hummel's Alchemical Trousers
		{ itemID = 2069486, groupID = 1, refLootEntry = 2060004 }; --Stormwind Stonemason Boots
		{ itemID = 2069487, groupID = 1, refLootEntry = 2062246 }; --Hightread Adept Stompers
		{ itemID = 2069517, groupID = 1, refLootEntry = 2060010 }; --Treads of the Insurgent
		{ itemID = 2069518, groupID = 1, refLootEntry = 2062271 }; --Boots of the Beastmaster
		{ itemID = 2069519, groupID = 1, refLootEntry = 2060011 }; --Greaves of Valor
		{ itemID = 2069520, groupID = 1, refLootEntry = 2060012 }; --Greaves of the Purging Flame
		{ itemID = 2069521, groupID = 1, refLootEntry = 2060013 }; --Boots of Fanatic Stride
		{ itemID = 2069527, groupID = 1, refLootEntry = 2062284 }; --Footpads of the Imprisoned
		{ itemID = 2069546, groupID = 1, refLootEntry = 2060050 }; --Footwraps of the Haunted Keep
		{ itemID = 2069600, groupID = 1, refLootEntry = 2060073 }; --Footwraps of Withered Light
		{ itemID = 2069615, groupID = 1, refLootEntry = 2062363 }; --Wraithwalker's Boots
		{ itemID = 2069616, groupID = 1, refLootEntry = 2061124 }; --Accursed Sabatons of Springvale
		{ itemID = 2069617, groupID = 1, refLootEntry = 2060080 }; --Greaves of Frosted Duty
		{ itemID = 2069624, groupID = 1, refLootEntry = 2063851 }; --Ghostly Harbinger's Slippers
		{ itemID = 2069643, groupID = 1, refLootEntry = 2062387 }; --Cindershade Footwraps
		{ itemID = 2069646, groupID = 1, refLootEntry = 2060088 }; --Boots of Insomnia
		{ itemID = 2069826, groupID = 1, refLootEntry = 2062556 }; --Footwraps of the Nightmare
		{ itemID = 2069827, groupID = 1, refLootEntry = 2062557 }; --Boots of the Nightmare's Path
		{ itemID = 2069828, groupID = 1, refLootEntry = 2061180 }; --Footwraps of the Fang
		{ itemID = 2069850, groupID = 1, refLootEntry = 2063944 }; --Creeping Vine Sandals
		{ itemID = 2069953, groupID = 1, refLootEntry = 2061224 }; --Footwraps of Eldritch Chaos
		{ itemID = 2069962, groupID = 1, refLootEntry = 2061226 }; --Footwraps of Detonation
		{ itemID = 2069965, groupID = 1, refLootEntry = 2060214 }; --Sabatons of Doomed Valor
		{ itemID = 2069974, groupID = 1, refLootEntry = 2060219 }; --Runic Pathfinder's Boots
		{ itemID = 2070006, groupID = 1, refLootEntry = 2060239 }; --Firewalker's Sandals
		{ itemID = 2070016, groupID = 1, refLootEntry = 2061258 }; --Sandfury Stompers
		{ itemID = 2070017, groupID = 1, refLootEntry = 2061260 }; --Boots of the Sandstorm
		{ itemID = 2070034, groupID = 1, refLootEntry = 2060261 }; --Boots of the Luminous Depths
		{ itemID = 2070036, groupID = 1, refLootEntry = 2061275 }; --Sandsurfer's Sabatons
		{ itemID = 2070037, groupID = 1, refLootEntry = 2060263 }; --Mystic Sandals of Nekrum
		{ itemID = 2070039, groupID = 1, refLootEntry = 2061280 }; --Boots of Dark Rituals
		{ itemID = 2070040, groupID = 1, refLootEntry = 2061281 }; --Souleater Greaves
		{ itemID = 2070041, groupID = 1, refLootEntry = 2060264 }; --Footwraps of the Faithful
		{ itemID = 2070042, groupID = 1, refLootEntry = 2061282 }; --Hukku's Tainted Steps
		{ itemID = 2070043, groupID = 1, refLootEntry = 2062808 }; --Footguards of the Serpent
		{ itemID = 2070044, groupID = 1, refLootEntry = 2060266 }; --Footwraps of the Corrupted
		{ itemID = 2070101, groupID = 1, refLootEntry = 2060296 }; --Deckhand's Treaders
		{ itemID = 2070103, groupID = 1, refLootEntry = 2062869 }; --Ember-Scorched Footguards
		{ itemID = 2070104, groupID = 1, refLootEntry = 2062870 }; --Mechanized Footguards
		{ itemID = 2070137, groupID = 1, refLootEntry = 2062888 }; --Farraki Ritual Sandals
		{ itemID = 2070163, groupID = 1, refLootEntry = 2060307 }; --Goblin's Nimble Shoes
		{ itemID = 2070165, groupID = 1, refLootEntry = 2060309 }; --Blazing Tavern Boots
		{ itemID = 2070166, groupID = 1, refLootEntry = 2061319 }; --Flameforged Boots
		{ itemID = 2070171, groupID = 1, refLootEntry = 2060314 }; --Footwraps of the Deep Forge
		{ itemID = 2070183, groupID = 1, refLootEntry = 2061331 }; --Boots of Blazing Authority
		{ itemID = 2070184, groupID = 1, refLootEntry = 2060318 }; --Machinist's Boots of Argelmach
		{ itemID = 2070185, groupID = 1, refLootEntry = 2060319 }; --Slippers of Searing Shadows
		{ itemID = 2070192, groupID = 1, refLootEntry = 2060325 }; --Emberwalkers
		{ itemID = 2070212, groupID = 1, refLootEntry = 2060332 }; --Boots of Frostbound Steel
		{ itemID = 2070214, groupID = 1, refLootEntry = 2061346 }; --Ashen Path Boots
		{ itemID = 2070215, groupID = 1, refLootEntry = 2061347 }; --Dune Stalker Greaves
		{ itemID = 2070216, groupID = 1, refLootEntry = 2060334 }; --Boots of the Hidden Path
		{ itemID = 2070217, groupID = 1, refLootEntry = 2061348 }; --Spectral Sandstalker Boots
		{ itemID = 2070220, groupID = 1, refLootEntry = 2060335 }; --Boots of the Black Warpath
		{ itemID = 2070236, groupID = 1, refLootEntry = 2061362 }; --Boots of Ogre Might
		{ itemID = 2070237, groupID = 1, refLootEntry = 2060343 }; --Molten Stompers
		{ itemID = 2070243, groupID = 1, refLootEntry = 2061367 }; --Greaves of Dark Runes
		{ itemID = 2070249, groupID = 1, refLootEntry = 2061376 }; --Blackrock Footguards
		{ itemID = 2070254, groupID = 1, refLootEntry = 2060353 }; --Boots of the Emberforge
		{ itemID = 2070260, groupID = 1, refLootEntry = 2060354 }; --Sabatons of Necrotic March
		{ itemID = 2070316, groupID = 1, refLootEntry = 2061423 }; --Sanctified Treads
		{ itemID = 2070323, groupID = 1, refLootEntry = 2061425 }; --Forresten's Staccato Boots
		{ itemID = 2070349, groupID = 1, refLootEntry = 2060418 }; --Slippers of the Frostbitten
		{ itemID = 2070350, groupID = 1, refLootEntry = 2060422 }; --Slippers of Flamelit Lore
		{ itemID = 2070351, groupID = 1, refLootEntry = 2060423 }; --Greaves of the Inquisitor
		{ itemID = 2070352, groupID = 1, refLootEntry = 2064269 }; --Boots of Stygian Paths
		{ itemID = 2070353, groupID = 1, refLootEntry = 2061445 }; --Boots of Precision Stride
		{ itemID = 2070356, groupID = 1, refLootEntry = 2060424 }; --Footwraps of Cold Calculation
		{ itemID = 2070359, groupID = 1, refLootEntry = 2060425 }; --Slippers of the Haunted Path
		{ itemID = 2070360, groupID = 1, refLootEntry = 2060426 }; --Gravewalker's Sabatons
		{ itemID = 2070379, groupID = 1, refLootEntry = 2061468 }; --Haunting Step Slippers
		{ itemID = 2070380, groupID = 1, refLootEntry = 2060435 }; --Sabatons of Eternal Ambition
		{ itemID = 2070381, groupID = 1, refLootEntry = 2061470 }; --Pathfinder's Treads
		{ itemID = 2070388, groupID = 1, refLootEntry = 2061477 }; --Boots of Shadowy Flame
		{ itemID = 2070402, groupID = 1, refLootEntry = 2060448 }; --Molten Greaves
		{ itemID = 2070408, groupID = 1, refLootEntry = 2060456 }; --Greaves of Shadow's Embrace
		{ itemID = 2070426, groupID = 1, refLootEntry = 2060461 }; --Sandals of Briny Fortitude
		{ itemID = 2070488, groupID = 1, refLootEntry = 2063190 }; --Shadowform Tainted Slippers
		{ itemID = 2070580, groupID = 1, refLootEntry = 2060554 }; --Footsteps of the Dark Pact
		{ itemID = 2070603, groupID = 1, refLootEntry = 2061613 }; --Boots of Chaotic Energy
		{ itemID = 2070624, groupID = 1, refLootEntry = 2061628 }; --Dreadmarch Stompers
		{ itemID = 2070694, groupID = 1, refLootEntry = 2060617 }; --Footwraps of Twisted Shadows
		{ itemID = 2070701, groupID = 1, refLootEntry = 2061716 }; --Fenstrider Boots
		{ itemID = 2070723, groupID = 1, refLootEntry = 2061739 }; --Greaves of Arcane Vitality
		{ itemID = 2070732, groupID = 1, refLootEntry = 2060635 }; --Freywinn's Sprouting Step Sandals
		{ itemID = 2070750, groupID = 1, refLootEntry = 2061754 }; --Boots of Illumination
		{ itemID = 2070836, groupID = 1, refLootEntry = 2061806 }; --Boots of Mechanar Mastery
		{ itemID = 2070879, groupID = 1, refLootEntry = 2060724 }; --Sandals of the Dark Arts
		{ itemID = 2070881, groupID = 1, refLootEntry = 2064835 }; --Slippers of Shadowed Paths
		{ itemID = 2071049, groupID = 1, refLootEntry = 2060796 }; --Slippers of Arcane Embers
		{ itemID = 2071136, groupID = 1, refLootEntry = 2060859 }; --Boots of Wayward Resolve
		{ itemID = 2071329, groupID = 1, refLootEntry = 2062131 }; --Greaves of the Spire Keeper
		{ itemID = 2071427, groupID = 1, refLootEntry = 2061045 }; --Boots of Aromatic Stealth
		{ itemID = 2071460, groupID = 1, refLootEntry = 2062246 }; --Cuffs of Mercenary's Resolve
		{ itemID = 2071486, groupID = 1, refLootEntry = 2060073 }; --Bindings of Grim Vigilance
		{ itemID = 2071498, groupID = 1, refLootEntry = 2061180 }; --Bracers of Elemental Disruption
		{ itemID = 2071544, groupID = 1, refLootEntry = 2060247 }; --Spiritbinder's Bindings
		{ itemID = 2071545, groupID = 1, refLootEntry = 2061260 }; --Bracers of the Sun-Scorched
		{ itemID = 2071556, groupID = 1, refLootEntry = 2060262 }; --Cascade Bracers
		{ itemID = 2071557, groupID = 1, refLootEntry = 2061275 }; --Dune Stalker's Bracers
		{ itemID = 2071559, groupID = 1, refLootEntry = 2061280 }; --Wristwraps of the Temple Keeper
		{ itemID = 2071560, groupID = 1, refLootEntry = 2061281 }; --Cursed Armguards
		{ itemID = 2071561, groupID = 1, refLootEntry = 2061282 }; --Bindings of the Enforcer
		{ itemID = 2071562, groupID = 1, refLootEntry = 2062808 }; --Wristbands of Soulflayer's Might
		{ itemID = 2071563, groupID = 1, refLootEntry = 2060265 }; --Bloodbinder's Bracers of Enchantment
		{ itemID = 2071564, groupID = 1, refLootEntry = 2060266 }; --Cuffs of the Suffering Pact
		{ itemID = 2071591, groupID = 1, refLootEntry = 2062888 }; --Wrists of the Voodoo Guardians
		{ itemID = 2071606, groupID = 1, refLootEntry = 2061347 }; --Bracers of the Desert Wind
		{ itemID = 2071607, groupID = 1, refLootEntry = 2061348 }; --Bindings of the Perished
		{ itemID = 2071618, groupID = 1, refLootEntry = 2061362 }; --Wristguards of the Dark Mountain
		{ itemID = 2071619, groupID = 1, refLootEntry = 2060343 }; --Bracers of Volcanic Might
		{ itemID = 2071623, groupID = 1, refLootEntry = 2061367 }; --Rune-Engraved Bracers
		{ itemID = 2071645, groupID = 1, refLootEntry = 2060418 }; --Bracers of the Faded Soul
		{ itemID = 2071646, groupID = 1, refLootEntry = 2060423 }; --Wristguards of the Scarlet Judge
		{ itemID = 2071647, groupID = 1, refLootEntry = 2061445 }; --Bracers of the Defensive Barrage
		{ itemID = 2071649, groupID = 1, refLootEntry = 2060424 }; --Bindings of Perverse Knowledge
		{ itemID = 2071657, groupID = 1, refLootEntry = 2061468 }; --Wristbands of the Eternal
		{ itemID = 2071702, groupID = 1, refLootEntry = 2063190 }; --Shen'dralar Warding Bracers
		{ itemID = 2071767, groupID = 1, refLootEntry = 2061716 }; --Bindings of the Lost Draenei
		{ itemID = 2071776, groupID = 1, refLootEntry = 2060635 }; --Wristwraps of Thornwoven Arcana
		{ itemID = 2071949, groupID = 1, refLootEntry = 2062131 }; --Bracers of the Orcish Vanguard
		{ itemID = 2072004, groupID = 1, refLootEntry = 2061045 }; --Bracers of Irresistible Aroma
		{ itemID = 2072029, groupID = 1, refLootEntry = 2060004 }; --Seditionist's Grips
		{ itemID = 2072047, groupID = 1, refLootEntry = 2060010 }; --Hands of the Betrayed Artisan
		{ itemID = 2072048, groupID = 1, refLootEntry = 2062271 }; --Loksey's Padded Grips
		{ itemID = 2072049, groupID = 1, refLootEntry = 2060011 }; --Gauntlets of the Armory
		{ itemID = 2072050, groupID = 1, refLootEntry = 2060012 }; --Gauntlets of Righteous Command
		{ itemID = 2072051, groupID = 1, refLootEntry = 2060013 }; --Grips of Cruel Extraction
		{ itemID = 2072099, groupID = 1, refLootEntry = 2060073 }; --Gloves of Damned Secrets
		{ itemID = 2072112, groupID = 1, refLootEntry = 2061124 }; --Plaguebound Gauntlets
		{ itemID = 2072113, groupID = 1, refLootEntry = 2060080 }; --Gauntlets of the Forsaken Guardian
		{ itemID = 2072130, groupID = 1, refLootEntry = 2060088 }; --Grasp of the Unquiet Dead
		{ itemID = 2072280, groupID = 1, refLootEntry = 2062556 }; --Grip of the Emerald Coils
		{ itemID = 2072281, groupID = 1, refLootEntry = 2062557 }; --Grips of the Dreambinder
		{ itemID = 2072282, groupID = 1, refLootEntry = 2061180 }; --Grips of the Untamed
		{ itemID = 2072297, groupID = 1, refLootEntry = 2063944 }; --Clutches of the Serpent
		{ itemID = 2072401, groupID = 1, refLootEntry = 2061224 }; --Gloves of the Ancient Whisper
		{ itemID = 2072408, groupID = 1, refLootEntry = 2060214 }; --Gauntlets of Twisted Faith
		{ itemID = 2072445, groupID = 1, refLootEntry = 2060239 }; --Inferno Grasp Handwraps
		{ itemID = 2072459, groupID = 1, refLootEntry = 2061258 }; --Gauntlets of the Sandstorm
		{ itemID = 2072460, groupID = 1, refLootEntry = 2061260 }; --Gauntlets of the Farraki
		{ itemID = 2072461, groupID = 1, refLootEntry = 2061261 }; --Grips of Loa's Dark Whispers
		{ itemID = 2072484, groupID = 1, refLootEntry = 2060261 }; --Gloves of the Hidden Pyre
		{ itemID = 2072487, groupID = 1, refLootEntry = 2061275 }; --Voodoo Grasp Gauntlets
		{ itemID = 2072488, groupID = 1, refLootEntry = 2060263 }; --Bloodstained Handguards
		{ itemID = 2072490, groupID = 1, refLootEntry = 2061278 }; --Gloves of Ancestral Duty
		{ itemID = 2072492, groupID = 1, refLootEntry = 2061280 }; --Gloves of the Exiled Protector
		{ itemID = 2072493, groupID = 1, refLootEntry = 2061281 }; --Hakkari Clasped Handguards
		{ itemID = 2072494, groupID = 1, refLootEntry = 2060264 }; --Handguards of Forbidden Rites
		{ itemID = 2072495, groupID = 1, refLootEntry = 2061282 }; --Spectral Grip
		{ itemID = 2072496, groupID = 1, refLootEntry = 2062808 }; --Handwraps of Zul'Lor
		{ itemID = 2072497, groupID = 1, refLootEntry = 2060266 }; --Gloves of the Twisted Will
		{ itemID = 2072498, groupID = 1, refLootEntry = 2061283 }; --Handwraps of Prophetic Sacrifice
		{ itemID = 2072536, groupID = 1, refLootEntry = 2062869 }; --Smelter's Grasping Gloves
		{ itemID = 2072537, groupID = 1, refLootEntry = 2062870 }; --Innovator's Grips
		{ itemID = 2072557, groupID = 1, refLootEntry = 2062888 }; --Earthshaper's Grips
		{ itemID = 2072578, groupID = 1, refLootEntry = 2060307 }; --Barkeep's Grip
		{ itemID = 2072580, groupID = 1, refLootEntry = 2060309 }; --Grim Guzzler Grips
		{ itemID = 2072581, groupID = 1, refLootEntry = 2061319 }; --Cogspark Gloves
		{ itemID = 2072584, groupID = 1, refLootEntry = 2060314 }; --Gloves of the Iron Artisan
		{ itemID = 2072595, groupID = 1, refLootEntry = 2061331 }; --Handguards of the Dark Flame
		{ itemID = 2072596, groupID = 1, refLootEntry = 2060318 }; --Hands of the Master Artificer
		{ itemID = 2072597, groupID = 1, refLootEntry = 2060319 }; --Gloves of Hidden Torment
		{ itemID = 2072614, groupID = 1, refLootEntry = 2060332 }; --Gloves of Glacial Grasp
		{ itemID = 2072616, groupID = 1, refLootEntry = 2061346 }; --Molten Grasp Gauntlets
		{ itemID = 2072617, groupID = 1, refLootEntry = 2061347 }; --Sandshaper's Gauntlets
		{ itemID = 2072618, groupID = 1, refLootEntry = 2060334 }; --Gloves of the Enigmatic Loa
		{ itemID = 2072619, groupID = 1, refLootEntry = 2061348 }; --Gloves of the Ghostly Veil
		{ itemID = 2072621, groupID = 1, refLootEntry = 2060335 }; --Grips of the Warchief's Fury
		{ itemID = 2072633, groupID = 1, refLootEntry = 2061362 }; --Gauntlets of Brutal Dominion
		{ itemID = 2072634, groupID = 1, refLootEntry = 2060343 }; --Gauntlets of the Forgebinder
		{ itemID = 2072640, groupID = 1, refLootEntry = 2061367 }; --Gauntlets of the Runewatcher
		{ itemID = 2072647, groupID = 1, refLootEntry = 2061376 }; --Hexmaster's Grips
		{ itemID = 2072652, groupID = 1, refLootEntry = 2060353 }; --Grips of the Molten Hammer
		{ itemID = 2072658, groupID = 1, refLootEntry = 2060354 }; --Gauntlets of Forsaken Might
		{ itemID = 2072711, groupID = 1, refLootEntry = 2061423 }; --Pious Gauntlets of the Zealous
		{ itemID = 2072713, groupID = 1, refLootEntry = 2061425 }; --Ballad Singer's Gloves
		{ itemID = 2072730, groupID = 1, refLootEntry = 2060418 }; --Gloves of Mana Drain
		{ itemID = 2072731, groupID = 1, refLootEntry = 2060422 }; --Gloves of Fervent Manuscripts
		{ itemID = 2072732, groupID = 1, refLootEntry = 2060423 }; --Gauntlets of Eternal Vigilance
		{ itemID = 2072734, groupID = 1, refLootEntry = 2061445 }; --Gauntlets of Tactical Mastery
		{ itemID = 2072736, groupID = 1, refLootEntry = 2060424 }; --Gloves of Sinister Arts
		{ itemID = 2072739, groupID = 1, refLootEntry = 2060425 }; --Gloves of Misty Illusions
		{ itemID = 2072740, groupID = 1, refLootEntry = 2060426 }; --Gloves of the Forsaken Nobility
		{ itemID = 2072757, groupID = 1, refLootEntry = 2060435 }; --Gauntlets of the Ancient Tyrant
		{ itemID = 2072766, groupID = 1, refLootEntry = 2061477 }; --Gloves of Fel Mastery
		{ itemID = 2072778, groupID = 1, refLootEntry = 2060448 }; --Inferno Gauntlets
		{ itemID = 2072782, groupID = 1, refLootEntry = 2060456 }; --Gauntlets of the Undying Sorceress
		{ itemID = 2072799, groupID = 1, refLootEntry = 2060461 }; --Gloves of Rippling Waters
		{ itemID = 2072872, groupID = 1, refLootEntry = 2060519 }; --Shamanistic Grips
		{ itemID = 2072903, groupID = 1, refLootEntry = 2060554 }; --Grips of the Infernal Betrayer
		{ itemID = 2072920, groupID = 1, refLootEntry = 2061613 }; --Gloves of the Breaker
		{ itemID = 2072939, groupID = 1, refLootEntry = 2061628 }; --Grips of the Shattered Halls
		{ itemID = 2072940, groupID = 1, refLootEntry = 2061629 }; --Treachery's Grasp
		{ itemID = 2073020, groupID = 1, refLootEntry = 2060617 }; --Gloves of Void Manipulation
		{ itemID = 2073023, groupID = 1, refLootEntry = 2061716 }; --Clawhandler's Grips
		{ itemID = 2073036, groupID = 1, refLootEntry = 2061739 }; --Gauntlets of Tactical Arcana
		{ itemID = 2073046, groupID = 1, refLootEntry = 2061754 }; --Gloves of the Unyielding Exarch
		{ itemID = 2073099, groupID = 1, refLootEntry = 2061802 }; --Hydrograsp Gauntlets
		{ itemID = 2073104, groupID = 1, refLootEntry = 2061806 }; --Gloves of the Nether Strategist
		{ itemID = 2073133, groupID = 1, refLootEntry = 2060724 }; --Gloves of Forbidden Teaching
		{ itemID = 2073321, groupID = 1, refLootEntry = 2060859 }; --Gloves of Grudging Labor
		{ itemID = 2073473, groupID = 1, refLootEntry = 2062131 }; --Gauntlets of Strategic Wrath
		{ itemID = 2073571, groupID = 1, refLootEntry = 2061045 }; --Gloves of the Perfume Master
		{ itemID = 2073617, groupID = 1, refLootEntry = 2062271 }; --Tabard of the Scarlet Handler
		{ itemID = 2073618, groupID = 1, refLootEntry = 2060012 }; --Tabard of the Scarlet Son
		{ itemID = 2073619, groupID = 1, refLootEntry = 2060013 }; --Tabard of Purging Flames
		{ itemID = 2073645, groupID = 1, refLootEntry = 2060073 }; --Tabard of the Veiled Crusade
		{ itemID = 2073678, groupID = 1, refLootEntry = 2060214 }; --Tabard of Scarlet Betrayal
		{ itemID = 2073724, groupID = 1, refLootEntry = 2061423 }; --Tabard of the Scarlet Zealot
		{ itemID = 2073737, groupID = 1, refLootEntry = 2060422 }; --Tabard of the Scarlet Tomekeeper
		{ itemID = 2073738, groupID = 1, refLootEntry = 2060423 }; --Tabard of the Betrayed Crusader
		{ itemID = 2073739, groupID = 1, refLootEntry = 2061445 }; --Tabard of the Scarlet Bastion
		{ itemID = 2073927, groupID = 1, refLootEntry = 2061754 }; --Cloak of Soul Protection
		{ itemID = 2073947, groupID = 1, refLootEntry = 2061806 }; --Cloak of the Calculated Conjuror
		{ itemID = 2073955, groupID = 1, refLootEntry = 2060724 }; --Shroud of the Underworld Scholar
		{ itemID = 2074197, groupID = 1, refLootEntry = 2060010 }; --Saber of the Lost Mason
		{ itemID = 2074199, groupID = 1, refLootEntry = 2074199 }; --Rhahk'Zor's Pulverizing Greatmaul
		{ itemID = 2074200, groupID = 1, refLootEntry = 2074200 }; --Cookie's Culinary Codex
		{ itemID = 2074201, groupID = 1, refLootEntry = 2062269 }; --Anchorblade
		{ itemID = 2074202, groupID = 1, refLootEntry = 2060296 }; --Harpoon of the Seawolf
		{ itemID = 2074422, groupID = 1, refLootEntry = 2062284 }; --Polearm of Ward's Defiance
		{ itemID = 2074425, groupID = 1, refLootEntry = 2062387 }; --Thaurissan's Rebellion Crusher
		{ itemID = 2074427, groupID = 1, refLootEntry = 2074427 }; --Blade of Dreadfury
		{ itemID = 2074433, groupID = 1, refLootEntry = 2060004 }; --Defiant Leader's Blade
		{ itemID = 2074434, groupID = 1, refLootEntry = 2074434 }; --Hamhock's Riot Cleaver
		{ itemID = 2074436, groupID = 1, refLootEntry = 2062246 }; --Bruegal's Knuckle Smasher
		{ itemID = 2074446, groupID = 1, refLootEntry = 2062869 }; --Forgemaster's One-Handed Mallet
		{ itemID = 2074735, groupID = 1, refLootEntry = 2074735 }; --Hammer of the Titanic Sentinel
		{ itemID = 2074842, groupID = 1, refLootEntry = 2060859 }; --Reckoning Pickaxe
		{ itemID = 2074847, groupID = 1, refLootEntry = 2062556 }; --Venomfang Claws
		{ itemID = 2074848, groupID = 1, refLootEntry = 2062557 }; --Axe of the Serpent's Fury
		{ itemID = 2074849, groupID = 1, refLootEntry = 2063944 }; --Venomous Channeler's Staff
		{ itemID = 2074851, groupID = 1, refLootEntry = 2061180 }; --Axe of the Dream's Echo
		{ itemID = 2074894, groupID = 1, refLootEntry = 2060080 }; --Blade of the Winter Captain
		{ itemID = 2074900, groupID = 1, refLootEntry = 2062363 }; --Gloomhammer of Silverlaine
		{ itemID = 2074914, groupID = 1, refLootEntry = 2062271 }; --Bloodhound's Cleaver
		{ itemID = 2074915, groupID = 1, refLootEntry = 2060011 }; --Twin-bladed Axe of Herod
		{ itemID = 2074916, groupID = 1, refLootEntry = 2060012 }; --Crusader's Redemption Maul
		{ itemID = 2074918, groupID = 1, refLootEntry = 2060013 }; --Vishas's Torturer Dagger
		{ itemID = 2074947, groupID = 1, refLootEntry = 2060050 }; --Staff of Arugal's Wrath
		{ itemID = 2074948, groupID = 1, refLootEntry = 2061124 }; --Enchanted Worgenblade
		{ itemID = 2074991, groupID = 1, refLootEntry = 2074991 }; --Thorned Axe of Ramtusk
		{ itemID = 2074992, groupID = 1, refLootEntry = 2074992 }; --Staff of Thorned Purity
		{ itemID = 2074993, groupID = 1, refLootEntry = 2074993 }; --Thorncurse Ritual Dagger
		{ itemID = 2074995, groupID = 1, refLootEntry = 2074995 }; --Shadowbind Relic
		{ itemID = 2075033, groupID = 1, refLootEntry = 2060073 }; --Mace of Fallen Faith
		{ itemID = 2075034, groupID = 1, refLootEntry = 2075034 }; --Thalnos's Undying Pyrestaff
		{ itemID = 2075095, groupID = 1, refLootEntry = 2075095 }; --Trident of the Azure Depths
		{ itemID = 2075096, groupID = 1, refLootEntry = 2061224 }; --Staff of the Cult's Embrace
		{ itemID = 2075098, groupID = 1, refLootEntry = 2075098 }; --Halmgar's Earthshatter Staff
		{ itemID = 2075109, groupID = 1, refLootEntry = 2075109 }; --Grimlok's Lightning Rod
		{ itemID = 2075191, groupID = 1, refLootEntry = 2061283 }; --Staff of Hakkar's Chosen
		{ itemID = 2075192, groupID = 1, refLootEntry = 2060266 }; --Blade of the Soulflayer's Wrath
		{ itemID = 2075193, groupID = 1, refLootEntry = 2061280 }; --Mace of the Skeleton Storm
		{ itemID = 2075194, groupID = 1, refLootEntry = 2061281 }; --Fang of the Soulflayer
		{ itemID = 2075195, groupID = 1, refLootEntry = 2060264 }; --Blade of the Atal'ai Acolyte
		{ itemID = 2075196, groupID = 1, refLootEntry = 2061282 }; --Wand of Green Channeling
		{ itemID = 2075197, groupID = 1, refLootEntry = 2062808 }; --Axe of Atal'ai Doom
		{ itemID = 2075198, groupID = 1, refLootEntry = 2060265 }; --Staff of the Wicked Ritual
		{ itemID = 2075273, groupID = 1, refLootEntry = 2075273 }; --Earthshaker's Staff
		{ itemID = 2075302, groupID = 1, refLootEntry = 2060261 }; --Staff of Radiant Subterfuge
		{ itemID = 2075303, groupID = 1, refLootEntry = 2075303 }; --Gelihast's Watery Edge
		{ itemID = 2075309, groupID = 1, refLootEntry = 2061226 }; --Spellbinder's Staff
		{ itemID = 2075310, groupID = 1, refLootEntry = 2060214 }; --Maul of the Doomed Crusader
		{ itemID = 2075311, groupID = 1, refLootEntry = 2075311 }; --Ironspine Maledict
		{ itemID = 2075312, groupID = 1, refLootEntry = 2060088 }; --Dagger of Haunted Zeal
		{ itemID = 2075322, groupID = 1, refLootEntry = 2060219 }; --Baelog's Sword of Discovery
		{ itemID = 2075372, groupID = 1, refLootEntry = 2075372 }; --Arcing War Mace of Ironaya
		{ itemID = 2075376, groupID = 1, refLootEntry = 2061260 }; --Staff of the Zul'Farrak Guardian
		{ itemID = 2075377, groupID = 1, refLootEntry = 2060247 }; --Zum'rah's Shadowstaff
		{ itemID = 2075378, groupID = 1, refLootEntry = 2061278 }; --Staff of Theka's Legacy
		{ itemID = 2075380, groupID = 1, refLootEntry = 2061261 }; --Staff of the Twilit Chanter
		{ itemID = 2075384, groupID = 1, refLootEntry = 2060239 }; --Flamelash Dagger of the Dark Iron
		{ itemID = 2075397, groupID = 1, refLootEntry = 2075397 }; --Blade of Ragglesnout's Gloom
		{ itemID = 2075405, groupID = 1, refLootEntry = 2061258 }; --Blade of Bly's Resolve
		{ itemID = 2075424, groupID = 1, refLootEntry = 2060262 }; --Wavecaller Staff
		{ itemID = 2075425, groupID = 1, refLootEntry = 2060263 }; --Foecrusher's Voodoo Maul
		{ itemID = 2075426, groupID = 1, refLootEntry = 2061275 }; --Blooddrinker War Axe
		{ itemID = 2075450, groupID = 1, refLootEntry = 2062888 }; --Antu'sul's Thunderous Mace
		{ itemID = 2075522, groupID = 1, refLootEntry = 2060318 }; --Runed Dagger of the Manufactory
		{ itemID = 2075523, groupID = 1, refLootEntry = 2060319 }; --Blade of Shadow Truth
		{ itemID = 2075524, groupID = 1, refLootEntry = 2060325 }; --Molten Iron Mace
		{ itemID = 2075525, groupID = 1, refLootEntry = 2060320 }; --Pyromancer's Emberstaff
		{ itemID = 2075528, groupID = 1, refLootEntry = 2061331 }; --Obsidian Decimator
		{ itemID = 2075529, groupID = 1, refLootEntry = 2060332 }; --Stilgiss's Icestaff
		{ itemID = 2075534, groupID = 1, refLootEntry = 2060314 }; --Maul of Fiery Reckoning
		{ itemID = 2075539, groupID = 1, refLootEntry = 2075539 }; --Flamelash's Inferno Pike
		{ itemID = 2075540, groupID = 1, refLootEntry = 2075540 }; --Omokk's Crushing Maul
		{ itemID = 2075547, groupID = 1, refLootEntry = 2075547 }; --Wizz'Magg's Arcane Conduit
		{ itemID = 2075548, groupID = 1, refLootEntry = 2075548 }; --Decapitator's Bloodthirst Axe
		{ itemID = 2075549, groupID = 1, refLootEntry = 2075549 }; --Butcher's Cleaver of the Blackrock
		{ itemID = 2075550, groupID = 1, refLootEntry = 2061376 }; --Bloodcurse Ritual Blade
		{ itemID = 2075551, groupID = 1, refLootEntry = 2062131 }; --Axe of Voone's Cunning
		{ itemID = 2075567, groupID = 1, refLootEntry = 2061346 }; --Broadaxe of Burning Wrath
		{ itemID = 2075581, groupID = 1, refLootEntry = 2060307 }; --Mug Smasher
		{ itemID = 2075588, groupID = 1, refLootEntry = 2061319 }; --Gnomish Gizmo Dagger
		{ itemID = 2075591, groupID = 1, refLootEntry = 2075591 }; --Wyrmthalak's Spire of Domination
		{ itemID = 2075593, groupID = 1, refLootEntry = 2061362 }; --Grimaxe's Fellblade
		{ itemID = 2075602, groupID = 1, refLootEntry = 2060448 }; --Searing Mace
		{ itemID = 2075603, groupID = 1, refLootEntry = 2060343 }; --Craghammer of the Dark Horde
		{ itemID = 2075610, groupID = 1, refLootEntry = 2061347 }; --Furybound Axe
		{ itemID = 2075611, groupID = 1, refLootEntry = 2061348 }; --Dagger of Silent Strikes
		{ itemID = 2075612, groupID = 1, refLootEntry = 2060334 }; --Axe of the Sandstorm Guardian
		{ itemID = 2075617, groupID = 1, refLootEntry = 2075617 }; --Flamesurge Edge
		{ itemID = 2075618, groupID = 1, refLootEntry = 2075618 }; --Grappling Flamewreath Halberd
		{ itemID = 2075623, groupID = 1, refLootEntry = 2075623 }; --Drakkisath's Conflagrant Greatblade
		{ itemID = 2075642, groupID = 1, refLootEntry = 2060335 }; --Polearm of the Dark Horde
		{ itemID = 2075643, groupID = 1, refLootEntry = 2060354 }; --Blade of the Cursed Knight
		{ itemID = 2075644, groupID = 1, refLootEntry = 2060418 }; --Staff of the Pale Sorcerer
		{ itemID = 2075645, groupID = 1, refLootEntry = 2075645 }; --Rivendare's Runeblade
		{ itemID = 2075658, groupID = 1, refLootEntry = 2060425 }; --Stave of Ethereal Masquerade
		{ itemID = 2075659, groupID = 1, refLootEntry = 2060426 }; --Sword of the Barov Protectorate
		{ itemID = 2075660, groupID = 1, refLootEntry = 2060724 }; --Staff of Grave Calls
		{ itemID = 2075661, groupID = 1, refLootEntry = 2061367 }; --Mace of Wardens' Runes
		{ itemID = 2075664, groupID = 1, refLootEntry = 2075664 }; --Doomhowl's Arcane Cleaver
		{ itemID = 2075680, groupID = 1, refLootEntry = 2060422 }; --Tome of Pyroclastic Knowledge
		{ itemID = 2075681, groupID = 1, refLootEntry = 2060423 }; --Blade of Illusive Glory
		{ itemID = 2075694, groupID = 1, refLootEntry = 2060353 }; --Mace of the Anvil Master
		{ itemID = 2075695, groupID = 1, refLootEntry = 2075695 }; --Polkelt's Plague Mace
		{ itemID = 2075700, groupID = 1, refLootEntry = 2061445 }; --Axe of the Crusader's Command
		{ itemID = 2075703, groupID = 1, refLootEntry = 2061423 }; --Hammer of Sacred Conviction
		{ itemID = 2075707, groupID = 1, refLootEntry = 2064269 }; --Codex of the Cursed Envoy
		{ itemID = 2075714, groupID = 1, refLootEntry = 2060424 }; --Axe of the Morbidly Curious
		{ itemID = 2075741, groupID = 1, refLootEntry = 2061468 }; --Blade of Lingering Woe
		{ itemID = 2075744, groupID = 1, refLootEntry = 2060435 }; --Axe of the Fallen Highborne
		{ itemID = 2075745, groupID = 1, refLootEntry = 2061470 }; --Blade of the Ancient Grove
		{ itemID = 2075747, groupID = 1, refLootEntry = 2075747 }; --Bloodthirster of the Gordok King
		{ itemID = 2075748, groupID = 1, refLootEntry = 2075748 }; --Emberforge Mallet
		{ itemID = 2075749, groupID = 1, refLootEntry = 2061477 }; --Staff of the Infernal Conclave
		{ itemID = 2075750, groupID = 1, refLootEntry = 2075750 }; --Blade of Sinister Venom
		{ itemID = 2075751, groupID = 1, refLootEntry = 2075751 }; --Flamebreaker Greatsword
		{ itemID = 2075820, groupID = 1, refLootEntry = 2075820 }; --Branch of the Cursed Grove
		{ itemID = 2075821, groupID = 1, refLootEntry = 2075821 }; --Vyletongue's Shadowfang
		{ itemID = 2075858, groupID = 1, refLootEntry = 2060461 }; --Maul of Elemental Torrent
		{ itemID = 2075957, groupID = 1, refLootEntry = 2062870 }; --Blade of Ingenious Design
		{ itemID = 2075959, groupID = 1, refLootEntry = 2075959 }; --Spirit Keeper's Cleaver
		{ itemID = 2075990, groupID = 1, refLootEntry = 2075990 }; --Fengus's Warblade
		{ itemID = 2075991, groupID = 1, refLootEntry = 2075991 }; --Kreeg's Jovial Smash
		{ itemID = 2075992, groupID = 1, refLootEntry = 2075992 }; --Slip'kik's Cudgel of Might
		{ itemID = 2075993, groupID = 1, refLootEntry = 2075993 }; --Kromcrush's Dualblade
		{ itemID = 2075994, groupID = 1, refLootEntry = 2075994 }; --Mol'dar's Berserker Axe
		{ itemID = 2075995, groupID = 1, refLootEntry = 2064835 }; --Staff of Demonic Empowerment
		{ itemID = 2076074, groupID = 1, refLootEntry = 2076074 }; --Valthalak's Shadowrend Staff
		{ itemID = 2076084, groupID = 1, refLootEntry = 2060519 }; --Ghostly Staff of the Elements
		{ itemID = 2076149, groupID = 1, refLootEntry = 2060554 }; --Nethekurse's Warblade of Discord
		{ itemID = 2076150, groupID = 1, refLootEntry = 2076150 }; --Fiery Maul of O'mrogg
		{ itemID = 2076235, groupID = 1, refLootEntry = 2061613 }; --Staff of Fel Manipulation
		{ itemID = 2076275, groupID = 1, refLootEntry = 2076275 }; --Riptide Staff of the Stormbinder
		{ itemID = 2076276, groupID = 1, refLootEntry = 2061802 }; --Neptulon's Spear
		{ itemID = 2076287, groupID = 1, refLootEntry = 2061716 }; --Fist of the Nether Swamp
		{ itemID = 2076299, groupID = 1, refLootEntry = 2061629 }; --Faithless Mace
		{ itemID = 2076308, groupID = 1, refLootEntry = 2061739 }; --Sword of Sarannis' Resolve
		{ itemID = 2076364, groupID = 1, refLootEntry = 2076364 }; --Shaffar's Ethereal Scepter
		{ itemID = 2076367, groupID = 1, refLootEntry = 2061754 }; --Blade of the Vigilant Shepherd
		{ itemID = 2076383, groupID = 1, refLootEntry = 2076383 }; --Ikiss's Arcane Talon
		{ itemID = 2076410, groupID = 1, refLootEntry = 2076410 }; --Blackheart's Chaotic Warhammer
		{ itemID = 2076423, groupID = 1, refLootEntry = 2076423 }; --Fel Ambassador's Blade
		{ itemID = 2076424, groupID = 1, refLootEntry = 2060617 }; --Staff of Empowering Shadows
		{ itemID = 2076467, groupID = 1, refLootEntry = 2061806 }; --Blade of Arcane Domination
		{ itemID = 2076468, groupID = 1, refLootEntry = 2061806 }; --Mace of Implemented Destruction
		{ itemID = 2076469, groupID = 1, refLootEntry = 2060796 }; --Blade of the Nethermancer
		{ itemID = 2076654, groupID = 1, refLootEntry = 2076654 }; --Doomsayer's Shadow Blade
		{ itemID = 2076655, groupID = 1, refLootEntry = 2076655 }; --Axe of Felfire Reckoning
		{ itemID = 2077, groupID = 1, refLootEntry = 1221203 }; --Magician Staff
		{ itemID = 2077631, groupID = 1, refLootEntry = 2061045 }; --Dagger of the Chemist
		{ itemID = 2077759, groupID = 1, refLootEntry = 2077759 }; --Frostbite Cleaver
		{ itemID = 2077903, groupID = 1, refLootEntry = 2060010 }; --Sword of the Defias Leader
		{ itemID = 2077929, groupID = 1, refLootEntry = 2062387 }; --Stockade Guard Shield
		{ itemID = 2077932, groupID = 1, refLootEntry = 2060004 }; --Stormwind Rebel's Edge
		{ itemID = 2077980, groupID = 1, refLootEntry = 2062556 }; --Mace of Twisted Dreams
		{ itemID = 2077981, groupID = 1, refLootEntry = 2062557 }; --Fang of the Dreaming Warden
		{ itemID = 2077991, groupID = 1, refLootEntry = 2061124 }; --Shield of Arugal's Guardian
		{ itemID = 2078020, groupID = 1, refLootEntry = 2061281 }; --Bloodbound Cleaver
		{ itemID = 2078021, groupID = 1, refLootEntry = 2060264 }; --Barrier of the Jungle Vigiliant
		{ itemID = 2078029, groupID = 1, refLootEntry = 2075303 }; --Tidecaller's Blade
		{ itemID = 2078045, groupID = 1, refLootEntry = 2061258 }; --Protector's Trollskin Shield
		{ itemID = 2078062, groupID = 1, refLootEntry = 2061376 }; --Night Hexer's Dagger
		{ itemID = 2078064, groupID = 1, refLootEntry = 2061346 }; --Inferno Edge
		{ itemID = 2078072, groupID = 1, refLootEntry = 2060448 }; --Volcanic Bulwark
		{ itemID = 2078085, groupID = 1, refLootEntry = 2061367 }; --Shield of Blackrock Inscription
		{ itemID = 2078151, groupID = 1, refLootEntry = 2062870 }; --Barrier of Gears and Sparks
		{ itemID = 2078157, groupID = 1, refLootEntry = 2075992 }; --Gordok Defender's Bulwark
		{ itemID = 2078209, groupID = 1, refLootEntry = 2061716 }; --Bow of the Twisted Underbog
		{ itemID = 2078253, groupID = 1, refLootEntry = 2061806 }; --Bulwark of Tempest Control
		{ itemID = 2078254, groupID = 1, refLootEntry = 2060796 }; --Tome of Burning Secrets
		{ itemID = 2078581, groupID = 1, refLootEntry = 2075095 }; --Twilight Tideshooter
		{ itemID = 2078598, groupID = 1, refLootEntry = 2060219 }; --Ancient Bow of Uldaman
		{ itemID = 2078628, groupID = 1, refLootEntry = 2060343 }; --Blazefall Rifle
		{ itemID = 2078630, groupID = 1, refLootEntry = 2060334 }; --Desert Hunter's Bow
		{ itemID = 2078632, groupID = 1, refLootEntry = 2060335 }; --Crossbow of Smoldering Dominion
		{ itemID = 2078633, groupID = 1, refLootEntry = 2060456 }; --Wand of Domination
		{ itemID = 2078635, groupID = 1, refLootEntry = 2061425 }; --Lament of the Bard Bow
		{ itemID = 2078638, groupID = 1, refLootEntry = 2061445 }; --Willey's Repeater
		{ itemID = 2078643, groupID = 1, refLootEntry = 2061470 }; --Sentinel's Longbow
		{ itemID = 2078661, groupID = 1, refLootEntry = 2075821 }; --Corrupting Wildfire Bow
		{ itemID = 2078724, groupID = 1, refLootEntry = 2062870 }; --Engineer's Precision Rifle
		{ itemID = 2078725, groupID = 1, refLootEntry = 2075959 }; --Bow of Manifest Harmony
		{ itemID = 2078754, groupID = 1, refLootEntry = 2061802 }; --Coilfang Blade
		{ itemID = 2078897, groupID = 1, refLootEntry = 2077759 }; --Glacier's Whisper
		{ itemID = 2084, groupID = 1, refLootEntry = 1221203 }; --Darksteel Bastard Sword
		{ itemID = 2100, groupID = 1, refLootEntry = 24083 }; --Precisely Calibrated Boomstick
		{ itemID = 21126, groupID = 2, refLootEntry = 15727 }; --Death's Sting
		{ itemID = 21128, groupID = 1, refLootEntry = 15263 }; --Staff of the Qiraji Prophets
		{ itemID = 21134, groupID = 2, refLootEntry = 15727 }; --Dark Edge of Insanity
		{ itemID = 21452, groupID = 2, refLootEntry = 15339 }; --Staff of the Ruins
		{ itemID = 21453, groupID = 2, refLootEntry = 15339 }; --Mantle of the Horusath
		{ itemID = 21454, groupID = 2, refLootEntry = 15339 }; --Runic Stone Shoulders
		{ itemID = 21455, groupID = 1, refLootEntry = 15370 }; --Southwind Helm
		{ itemID = 21456, groupID = 1, refLootEntry = 15339 }; --Sandstorm Cloak
		{ itemID = 21457, groupID = 1, refLootEntry = 15339 }; --Bracers of Brutality
		{ itemID = 21458, groupID = 2, refLootEntry = 15339 }; --Gauntlets of New Life
		{ itemID = 21459, groupID = 1, refLootEntry = 15339 }; --Crossbow of Imminent Doom
		{ itemID = 21460, groupID = 1, refLootEntry = 15339 }; --Helm of Domination
		{ itemID = 21461, groupID = 2, refLootEntry = 15339 }; --Leggings of the Black Blizzard
		{ itemID = 21462, groupID = 2, refLootEntry = 15339 }; --Gloves of Dark Wisdom
		{ itemID = 21463, groupID = 1, refLootEntry = 15339 }; --Ossirian's Binding
		{ itemID = 21464, groupID = 2, refLootEntry = 15339 }; --Shackles of the Unscarred
		{ itemID = 21466, groupID = 1, refLootEntry = 15369 }; --Stinger of Ayamiss
		{ itemID = 21467, groupID = 1, refLootEntry = 15340 }; --Thick Silithid Chestguard
		{ itemID = 21468, groupID = 1, refLootEntry = 15340 }; --Mantle of Maz'Nadir
		{ itemID = 21469, groupID = 1, refLootEntry = 15340 }; --Gauntlets of Southwind
		{ itemID = 21470, groupID = 1, refLootEntry = 15369 }; --Cloak of the Savior
		{ itemID = 21471, groupID = 1, refLootEntry = 15340 }; --Talon of Furious Concentration
		{ itemID = 21472, groupID = 1, refLootEntry = 15340 }; --Dustwind Turban
		{ itemID = 21473, groupID = 1, refLootEntry = 15340 }; --Eye of Moam
		{ itemID = 21474, groupID = 1, refLootEntry = 15370 }; --Chitinous Shoulderguards
		{ itemID = 21475, groupID = 1, refLootEntry = 15340 }; --Legplates of the Destroyer
		{ itemID = 21476, groupID = 1, refLootEntry = 15340 }; --Obsidian Scaled Leggings
		{ itemID = 21477, groupID = 1, refLootEntry = 15341 }; --Ring of Fury
		{ itemID = 21478, groupID = 1, refLootEntry = 15369 }; --Bow of Taut Sinew
		{ itemID = 21479, groupID = 1, refLootEntry = 15369 }; --Gauntlets of the Immovable
		{ itemID = 21480, groupID = 1, refLootEntry = 15369 }; --Scaled Silithid Gauntlets
		{ itemID = 21481, groupID = 1, refLootEntry = 15369 }; --Boots of the Desert Protector
		{ itemID = 21482, groupID = 1, refLootEntry = 15369 }; --Boots of the Fiery Sands
		{ itemID = 21483, groupID = 1, refLootEntry = 15369 }; --Ring of the Desert Winds
		{ itemID = 21484, groupID = 1, refLootEntry = 15369 }; --Helm of Regrowth
		{ itemID = 21485, groupID = 1, refLootEntry = 15370 }; --Buru's Skull Fragment
		{ itemID = 21486, groupID = 1, refLootEntry = 15370 }; --Gloves of the Swarm
		{ itemID = 21487, groupID = 1, refLootEntry = 15370 }; --Slimy Scaled Gauntlets
		{ itemID = 21488, groupID = 1, refLootEntry = 15370 }; --Fetish of Chitinous Spikes
		{ itemID = 21489, groupID = 1, refLootEntry = 15370 }; --Quicksand Waders
		{ itemID = 21490, groupID = 1, refLootEntry = 15370 }; --Slime Kickers
		{ itemID = 21491, groupID = 1, refLootEntry = 15370 }; --Scaled Bracers of the Gorger
		{ itemID = 21492, groupID = 1, refLootEntry = 15341 }; --Manslayer of the Qiraji
		{ itemID = 21493, groupID = 1, refLootEntry = 15341 }; --Boots of the Vanguard
		{ itemID = 21494, groupID = 1, refLootEntry = 15341 }; --Southwind's Grasp
		{ itemID = 21495, groupID = 1, refLootEntry = 15341 }; --Legplates of the Qiraji Command
		{ itemID = 21496, groupID = 1, refLootEntry = 15341 }; --Bracers of Qiraji Command
		{ itemID = 21497, groupID = 1, refLootEntry = 15341 }; --Boots of the Qiraji General
		{ itemID = 21498, groupID = 1, refLootEntry = 15348 }; --Qiraji Sacrificial Dagger
		{ itemID = 21499, groupID = 1, refLootEntry = 15348 }; --Vestments of the Shifting Sands
		{ itemID = 21500, groupID = 1, refLootEntry = 15348 }; --Belt of the Inquisition
		{ itemID = 21501, groupID = 1, refLootEntry = 15348 }; --Toughened Silithid Hide Gloves
		{ itemID = 21502, groupID = 1, refLootEntry = 15348 }; --Sand Reaver Wristguards
		{ itemID = 21503, groupID = 1, refLootEntry = 15348 }; --Belt of the Sand Reaver
		{ itemID = 21524, groupID = 0, refLootEntry = 0 }; --Red Winter Hat
		{ itemID = 21525, groupID = 0, refLootEntry = 0 }; --Green Winter Hat
		{ itemID = 21579, groupID = 2, refLootEntry = 15727 }; --Vanquished Tentacle of C'Thun
		{ itemID = 21581, groupID = 2, refLootEntry = 15727 }; --Gauntlets of Annihilation
		{ itemID = 21582, groupID = 1, refLootEntry = 15727 }; --Grasp of the Old God
		{ itemID = 21583, groupID = 1, refLootEntry = 15727 }; --Cloak of Clarity
		{ itemID = 21585, groupID = 1, refLootEntry = 15727 }; --Dark Storm Gauntlets
		{ itemID = 21586, groupID = 2, refLootEntry = 15727 }; --Belt of Never-ending Agony
		{ itemID = 21596, groupID = 2, refLootEntry = 15727 }; --Ring of the Godslayer
		{ itemID = 21597, groupID = 1, refLootEntry = 15275 }; --Royal Scepter of Vek'lor
		{ itemID = 21598, groupID = 1, refLootEntry = 15275 }; --Royal Qiraji Belt
		{ itemID = 21599, groupID = 1, refLootEntry = 15275 }; --Vek'lor's Gloves of Devastation
		{ itemID = 21600, groupID = 1, refLootEntry = 15275 }; --Boots of Epiphany
		{ itemID = 21601, groupID = 1, refLootEntry = 15275 }; --Ring of Emperor Vek'lor
		{ itemID = 21602, groupID = 1, refLootEntry = 15275 }; --Qiraji Execution Bracers
		{ itemID = 21603, groupID = 1, refLootEntry = 15509 }; --Wand of Qiraji Nobility
		{ itemID = 21604, groupID = 1, refLootEntry = 15275 }; --Bracelets of Royal Redemption
		{ itemID = 21605, groupID = 2, refLootEntry = 15517 }; --Gloves of the Hidden Temple
		{ itemID = 21606, groupID = 1, refLootEntry = 15275 }; --Belt of the Fallen Emperor
		{ itemID = 21607, groupID = 1, refLootEntry = 15275 }; --Grasp of the Fallen Emperor
		{ itemID = 21608, groupID = 1, refLootEntry = 15275 }; --Amulet of Vek'nilash
		{ itemID = 21609, groupID = 1, refLootEntry = 15275 }; --Regenerating Belt of Vek'nilash
		{ itemID = 21610, groupID = 1, refLootEntry = 15517 }; --Wormscale Blocker
		{ itemID = 21611, groupID = 1, refLootEntry = 15517 }; --Burrower Bracers
		{ itemID = 21615, groupID = 1, refLootEntry = 15517 }; --Don Rigoberto's Lost Hat
		{ itemID = 21616, groupID = 2, refLootEntry = 15509 }; --Huhuran's Stinger
		{ itemID = 21617, groupID = 1, refLootEntry = 15509 }; --Wasphide Gauntlets
		{ itemID = 21618, groupID = 2, refLootEntry = 15509 }; --Hive Defiler Wristguards
		{ itemID = 21619, groupID = 1, refLootEntry = 15509 }; --Gloves of the Messiah
		{ itemID = 21620, groupID = 1, refLootEntry = 15509 }; --Ring of the Martyr
		{ itemID = 21621, groupID = 2, refLootEntry = 15509 }; --Cloak of the Golden Hive
		{ itemID = 21622, groupID = 1, refLootEntry = 15299 }; --Sharpened Silithid Femur
		{ itemID = 21623, groupID = 2, refLootEntry = 15299 }; --Gauntlets of the Righteous Champion
		{ itemID = 21624, groupID = 2, refLootEntry = 15299 }; --Gauntlets of Kalimdor
		{ itemID = 21625, groupID = 1, refLootEntry = 15299 }; --Scarab Brooch
		{ itemID = 21626, groupID = 2, refLootEntry = 15299 }; --Slime-coated Leggings
		{ itemID = 21627, groupID = 1, refLootEntry = 15510 }; --Cloak of Untold Secrets
		{ itemID = 21635, groupID = 2, refLootEntry = 15510 }; --Barb of the Sand Reaver
		{ itemID = 21639, groupID = 2, refLootEntry = 15510 }; --Pauldrons of the Unrelenting
		{ itemID = 2164, groupID = 1, refLootEntry = 24081 }; --Gut Ripper
		{ itemID = 21645, groupID = 2, refLootEntry = 15517 }; --Hive Tunneler's Boots
		{ itemID = 21647, groupID = 1, refLootEntry = 15510 }; --Fetish of the Sand Reaver
		{ itemID = 21648, groupID = 1, refLootEntry = 15516 }; --Recomposed Boots
		{ itemID = 21650, groupID = 2, refLootEntry = 15510 }; --Ancient Qiraji Ripper
		{ itemID = 21651, groupID = 1, refLootEntry = 15510 }; --Scaled Sand Reaver Leggings
		{ itemID = 21652, groupID = 2, refLootEntry = 15510 }; --Silithid Carapace Chestguard
		{ itemID = 21663, groupID = 1, refLootEntry = 15510 }; --Robes of the Guardian Saint
		{ itemID = 21665, groupID = 2, refLootEntry = 15510 }; --Mantle of Wicked Revenge
		{ itemID = 21666, groupID = 1, refLootEntry = 15516 }; --Sartura's Might
		{ itemID = 21667, groupID = 2, refLootEntry = 15516 }; --Legplates of Blazing Light
		{ itemID = 21668, groupID = 1, refLootEntry = 15509 }; --Scaled Leggings of Qiraji Fury
		{ itemID = 21669, groupID = 1, refLootEntry = 15516 }; --Creeping Vine Helm
		{ itemID = 21670, groupID = 2, refLootEntry = 15516 }; --Badge of the Swarmguard
		{ itemID = 21671, groupID = 1, refLootEntry = 15516 }; --Robes of the Battleguard
		{ itemID = 21672, groupID = 2, refLootEntry = 15516 }; --Gloves of Enforcement
		{ itemID = 21673, groupID = 2, refLootEntry = 15516 }; --Silithid Claw
		{ itemID = 21674, groupID = 2, refLootEntry = 15516 }; --Gauntlets of Steadfast Determination
		{ itemID = 21675, groupID = 2, refLootEntry = 15516 }; --Thick Qirajihide Belt
		{ itemID = 21676, groupID = 1, refLootEntry = 15516 }; --Leggings of the Festering Swarm
		{ itemID = 21677, groupID = 2, refLootEntry = 15299 }; --Ring of the Qiraji Fury
		{ itemID = 21678, groupID = 1, refLootEntry = 15516 }; --Necklace of Purity
		{ itemID = 21679, groupID = 1, refLootEntry = 15275 }; --Kalimdor's Revenge
		{ itemID = 21680, groupID = 2, refLootEntry = 15509 }; --Vest of Swift Execution
		{ itemID = 21681, groupID = 1, refLootEntry = 15511 }; --Ring of the Devoured
		{ itemID = 21682, groupID = 2, refLootEntry = 15299 }; --Bile-Covered Gauntlets
		{ itemID = 21683, groupID = 2, refLootEntry = 15509 }; --Mantle of the Desert Crusade
		{ itemID = 21684, groupID = 2, refLootEntry = 15511 }; --Mantle of the Desert's Fury
		{ itemID = 21685, groupID = 2, refLootEntry = 15511 }; --Petrified Scarab
		{ itemID = 21686, groupID = 1, refLootEntry = 15511 }; --Mantle of Phrenic Power
		{ itemID = 21687, groupID = 2, refLootEntry = 15511 }; --Ukko's Ring of Darkness
		{ itemID = 21688, groupID = 1, refLootEntry = 15299 }; --Boots of the Fallen Hero
		{ itemID = 21689, groupID = 1, refLootEntry = 15511 }; --Gloves of Ebru
		{ itemID = 2169, groupID = 1, refLootEntry = 642 }; --Buzzer Blade
		{ itemID = 21690, groupID = 1, refLootEntry = 15511 }; --Angelista's Charm
		{ itemID = 21691, groupID = 2, refLootEntry = 15299 }; --Ooze-ridden Gauntlets
		{ itemID = 21692, groupID = 2, refLootEntry = 15511 }; --Triad Girdle
		{ itemID = 21693, groupID = 2, refLootEntry = 15511 }; --Guise of the Devourer
		{ itemID = 21694, groupID = 1, refLootEntry = 15509 }; --Ternary Mantle
		{ itemID = 21695, groupID = 2, refLootEntry = 15511 }; --Angelista's Touch
		{ itemID = 21696, groupID = 1, refLootEntry = 15511 }; --Robes of the Triumvirate
		{ itemID = 21697, groupID = 1, refLootEntry = 15511 }; --Cape of the Trinity
		{ itemID = 21698, groupID = 1, refLootEntry = 15263 }; --Leggings of Immersion
		{ itemID = 21699, groupID = 2, refLootEntry = 15263 }; --Barrage Shoulders
		{ itemID = 21700, groupID = 2, refLootEntry = 15263 }; --Pendant of the Qiraji Guardian
		{ itemID = 21701, groupID = 2, refLootEntry = 15263 }; --Cloak of Concentrated Hatred
		{ itemID = 21702, groupID = 2, refLootEntry = 15263 }; --Amulet of Foul Warding
		{ itemID = 21703, groupID = 1, refLootEntry = 15263 }; --Hammer of Ji'zhi
		{ itemID = 21704, groupID = 1, refLootEntry = 15263 }; --Boots of the Redeemed Prophecy
		{ itemID = 21705, groupID = 1, refLootEntry = 15263 }; --Boots of the Fallen Prophet
		{ itemID = 21706, groupID = 2, refLootEntry = 15263 }; --Boots of the Unwavering Will
		{ itemID = 21707, groupID = 1, refLootEntry = 15263 }; --Ring of Swarming Thought
		{ itemID = 21708, groupID = 2, refLootEntry = 15517 }; --Beetle Scaled Wristguards
		{ itemID = 21715, groupID = 1, refLootEntry = 15339 }; --Sand Polished Hammer
		{ itemID = 2177, groupID = 1, refLootEntry = 6168 }; --Quartzstone Staff
		{ itemID = 2179, groupID = 1, refLootEntry = 11519 }; --Satyr's Scimitar
		{ itemID = 21806, groupID = 1, refLootEntry = 15341 }; --Gavel of Qiraji Authority
		{ itemID = 21809, groupID = 1, refLootEntry = 15348 }; --Fury of the Forgotten Swarm
		{ itemID = 21810, groupID = 1, refLootEntry = 15348 }; --Treads of the Wandering Nomad
		{ itemID = 21814, groupID = 2, refLootEntry = 15263 }; --Breastplate of Annihilation
		{ itemID = 21839, groupID = 1, refLootEntry = 15727 }; --Scepter of the False Prophet
		{ itemID = 2218464, groupID = 1, refLootEntry = 14326 }; --Flattened Elven Ring
		{ itemID = 22204, groupID = 1, refLootEntry = 9019 }; --Wristguards of Renown
		{ itemID = 22206, groupID = 0, refLootEntry = 0 }; --Bouquet of Red Roses
		{ itemID = 22207, groupID = 1, refLootEntry = 9019 }; --Sash of the Grand Hunt
		{ itemID = 22208, groupID = 1, refLootEntry = 9938 }; --Lavastone Hammer
		{ itemID = 22212, groupID = 1, refLootEntry = 9502 }; --Golem Fitted Pauldrons
		{ itemID = 22223, groupID = 1, refLootEntry = 9056 }; --Foreman's Head Protector
		{ itemID = 22225, groupID = 1, refLootEntry = 10429 }; --Dragonskin Cowl
		{ itemID = 22231, groupID = 1, refLootEntry = 9237 }; --Kayser's Boots of Precision
		{ itemID = 22232, groupID = 1, refLootEntry = 10584 }; --Marksman's Girdle
		{ itemID = 22234, groupID = 1, refLootEntry = 9025 }; --Mantle of Lost Hope
		{ itemID = 22240, groupID = 1, refLootEntry = 9018 }; --Greaves of Withering Despair
		{ itemID = 22241, groupID = 1, refLootEntry = 9041 }; --Dark Warder's Pauldrons
		{ itemID = 22242, groupID = 1, refLootEntry = 9042 }; --Verek's Leash
		{ itemID = 22245, groupID = 1, refLootEntry = 8923 }; --Soot Encrusted Footwear
		{ itemID = 22247, groupID = 1, refLootEntry = 10429 }; --Faith Healer's Boots
		{ itemID = 22253, groupID = 1, refLootEntry = 10363 }; --Tome of the Lost
		{ itemID = 22267, groupID = 1, refLootEntry = 10363 }; --Spellweaver's Turban
		{ itemID = 22268, groupID = 1, refLootEntry = 10363 }; --Draconic Infused Emblem
		{ itemID = 22269, groupID = 1, refLootEntry = 10363 }; --Shadow Prowler's Cloak
		{ itemID = 22275, groupID = 1, refLootEntry = 9537 }; --Firemoss Boots
		{ itemID = 22302, groupID = 1, refLootEntry = 16042 }; --Ironweave Cowl
		{ itemID = 22303, groupID = 1, refLootEntry = 16118 }; --Ironweave Pants
		{ itemID = 22306, groupID = 1, refLootEntry = 16080 }; --Ironweave Belt
		{ itemID = 22311, groupID = 1, refLootEntry = 10430 }; --Ironweave Boots
		{ itemID = 22313, groupID = 1, refLootEntry = 10220 }; --Ironweave Bracers
		{ itemID = 22319, groupID = 1, refLootEntry = 16080 }; --Tome of Divine Right
		{ itemID = 22321, groupID = 1, refLootEntry = 9568 }; --Heart of Wyrmthalak
		{ itemID = 22322, groupID = 1, refLootEntry = 16080 }; --The Jaw Breaker
		{ itemID = 22325, groupID = 1, refLootEntry = 16080 }; --Belt of the Trickster
		{ itemID = 22326, groupID = 1, refLootEntry = 16118 }; --Amalgam's Band
		{ itemID = 22331, groupID = 1, refLootEntry = 16118 }; --Band of the Steadfast Hero
		{ itemID = 22332, groupID = 1, refLootEntry = 16118 }; --Blade of Necromancy
		{ itemID = 22333, groupID = 1, refLootEntry = 16118 }; --Hammer of Divine Might
		{ itemID = 22335, groupID = 1, refLootEntry = 16042 }; --Lord Valthalak's Staff of Command
		{ itemID = 22336, groupID = 1, refLootEntry = 16042 }; --Draconian Aegis of the Legion
		{ itemID = 22337, groupID = 1, refLootEntry = 16042 }; --Shroud of Domination
		{ itemID = 22339, groupID = 1, refLootEntry = 16042 }; --Rune Band of Wizardry
		{ itemID = 22340, groupID = 1, refLootEntry = 16042 }; --Pendant of Celerity
		{ itemID = 22342, groupID = 1, refLootEntry = 16042 }; --Leggings of Torment
		{ itemID = 22343, groupID = 1, refLootEntry = 16042 }; --Handguards of Savagery
		{ itemID = 22394, groupID = 1, refLootEntry = 10503 }; --Staff of Metanoia
		{ itemID = 22395, groupID = 1, refLootEntry = 9938 }; --Totem of Rage
		{ itemID = 22396, groupID = 1, refLootEntry = 15510 }; --Totem of Life
		{ itemID = 22397, groupID = 1, refLootEntry = 9025 }; --Idol of Ferocity
		{ itemID = 22398, groupID = 1, refLootEntry = 16080 }; --Idol of Rejuvenation
		{ itemID = 22399, groupID = 1, refLootEntry = 15299 }; --Idol of Health
		{ itemID = 22400, groupID = 1, refLootEntry = 9938 }; --Libram of Truth
		{ itemID = 22402, groupID = 1, refLootEntry = 15510 }; --Libram of Grace
		{ itemID = 22403, groupID = 1, refLootEntry = 10997 }; --Diana's Pearl Necklace
		{ itemID = 22404, groupID = 1, refLootEntry = 10997 }; --Willey's Back Scratcher
		{ itemID = 22405, groupID = 1, refLootEntry = 10997 }; --Mantle of the Scarlet Crusade
		{ itemID = 22406, groupID = 1, refLootEntry = 10997 }; --Redemption
		{ itemID = 22407, groupID = 1, refLootEntry = 10997 }; --Helm of the New Moon
		{ itemID = 22408, groupID = 1, refLootEntry = 10440 }; --Ritssyn's Wand of Bad Mojo
		{ itemID = 22409, groupID = 1, refLootEntry = 10440 }; --Tunic of the Crescent Moon
		{ itemID = 22410, groupID = 1, refLootEntry = 10440 }; --Gauntlets of Deftness
		{ itemID = 22411, groupID = 1, refLootEntry = 10440 }; --Helm of the Executioner
		{ itemID = 22412, groupID = 1, refLootEntry = 10440 }; --Thuzadin Mantle
		{ itemID = 22691, groupID = 6, refLootEntry = 16062 }; --Corrupted Ashbringer
		{ itemID = 2271, groupID = 1, refLootEntry = 12902 }; --Staff of the Blessed Seer
		{ itemID = 22711, groupID = 2, refLootEntry = 14517 }; --Cloak of the Hakkari Worshippers
		{ itemID = 22712, groupID = 2, refLootEntry = 14517 }; --Might of the Tribe
		{ itemID = 22713, groupID = 2, refLootEntry = 14517 }; --Zulian Scepter of Rites
		{ itemID = 22714, groupID = 2, refLootEntry = 14517 }; --Sacrificial Gauntlets
		{ itemID = 22715, groupID = 2, refLootEntry = 14517 }; --Gloves of the Tormented
		{ itemID = 22716, groupID = 2, refLootEntry = 14517 }; --Belt of Untapped Power
		{ itemID = 22718, groupID = 2, refLootEntry = 14517 }; --Blooddrenched Mask
		{ itemID = 22720, groupID = 2, refLootEntry = 14517 }; --Zulian Headdress
		{ itemID = 22721, groupID = 2, refLootEntry = 14517 }; --Band of Servitude
		{ itemID = 22722, groupID = 2, refLootEntry = 14517 }; --Seal of the Gurubashi Berserker
		{ itemID = 22730, groupID = 1, refLootEntry = 15727 }; --Eyestalk Waist Cord
		{ itemID = 22731, groupID = 1, refLootEntry = 15727 }; --Cloak of the Devoured
		{ itemID = 22732, groupID = 2, refLootEntry = 15727 }; --Mark of C'Thun
		{ itemID = 22798, groupID = 2, refLootEntry = 15990 }; --Might of Menethil
		{ itemID = 22799, groupID = 2, refLootEntry = 15990 }; --Soulseeker
		{ itemID = 2280, groupID = 1, refLootEntry = 1666 }; --Kam's Walking Stick
		{ itemID = 22800, groupID = 2, refLootEntry = 16011 }; --Brimstone Staff
		{ itemID = 22802, groupID = 2, refLootEntry = 15990 }; --Kingsfall
		{ itemID = 22803, groupID = 2, refLootEntry = 15931 }; --Midnight Haze
		{ itemID = 22804, groupID = 2, refLootEntry = 15952 }; --Maexxna's Fang
		{ itemID = 22806, groupID = 2, refLootEntry = 15953 }; --Widow's Remorse
		{ itemID = 22807, groupID = 2, refLootEntry = 15952 }; --Wraith Blade
		{ itemID = 22808, groupID = 2, refLootEntry = 15928 }; --The Castigator
		{ itemID = 22809, groupID = 2, refLootEntry = 16062 }; --Maul of the Redeemed Crusader
		{ itemID = 22810, groupID = 2, refLootEntry = 15931 }; --Toxin Injector
		{ itemID = 22811, groupID = 2, refLootEntry = 16062 }; --Soulstring
		{ itemID = 22812, groupID = 2, refLootEntry = 15990 }; --Nerubian Slavemaker
		{ itemID = 22813, groupID = 2, refLootEntry = 15932 }; --Claymore of Unholy Might
		{ itemID = 22815, groupID = 2, refLootEntry = 16028 }; --Severance
		{ itemID = 22816, groupID = 2, refLootEntry = 15954 }; --Hatchet of Sundered Bone
		{ itemID = 22818, groupID = 2, refLootEntry = 16028 }; --The Plague Bearer
		{ itemID = 22819, groupID = 2, refLootEntry = 15990 }; --Shield of Condemnation
		{ itemID = 22820, groupID = 2, refLootEntry = 16028 }; --Wand of Fates
		{ itemID = 22821, groupID = 2, refLootEntry = 15990 }; --Doomfinger
		{ itemID = 2291, groupID = 1, refLootEntry = 24083 }; --Kang the Decapitator
		{ itemID = 22935, groupID = 5, refLootEntry = 16062 }; --Touch of Frost
		{ itemID = 22936, groupID = 2, refLootEntry = 15956 }; --Wristguards of Vengeance
		{ itemID = 22937, groupID = 2, refLootEntry = 15956 }; --Gem of Nerubis
		{ itemID = 22938, groupID = 2, refLootEntry = 15956 }; --Cryptfiend Silk Cloak
		{ itemID = 22939, groupID = 2, refLootEntry = 15956 }; --Band of Unanswered Prayers
		{ itemID = 22940, groupID = 5, refLootEntry = 16062 }; --Icebane Pauldrons
		{ itemID = 22941, groupID = 5, refLootEntry = 16062 }; --Polar Shoulder Pads
		{ itemID = 22942, groupID = 2, refLootEntry = 15953 }; --The Widow's Embrace
		{ itemID = 22943, groupID = 2, refLootEntry = 15953 }; --Malice Stone Pendant
		{ itemID = 22947, groupID = 2, refLootEntry = 15952 }; --Pendant of Forgotten Names
		{ itemID = 22954, groupID = 2, refLootEntry = 15952 }; --Kiss of the Spider
		{ itemID = 22960, groupID = 2, refLootEntry = 16028 }; --Cloak of Suturing
		{ itemID = 22961, groupID = 2, refLootEntry = 16028 }; --Band of Reanimation
		{ itemID = 22967, groupID = 5, refLootEntry = 16062 }; --Icy Scale Spaulders
		{ itemID = 22968, groupID = 5, refLootEntry = 16062 }; --Glacial Mantle
		{ itemID = 22981, groupID = 2, refLootEntry = 15932 }; --Gluth's Missing Collar
		{ itemID = 22983, groupID = 2, refLootEntry = 15932 }; --Rime Covered Mantle
		{ itemID = 22988, groupID = 2, refLootEntry = 15931 }; --The End of Dreams
		{ itemID = 22994, groupID = 2, refLootEntry = 15932 }; --Digested Hand of Power
		{ itemID = 23000, groupID = 2, refLootEntry = 15928 }; --Plated Abomination Ribcage
		{ itemID = 23001, groupID = 2, refLootEntry = 15928 }; --Eye of the Scourge
		{ itemID = 23004, groupID = 2, refLootEntry = 16061 }; --Idol of Longevity
		{ itemID = 23005, groupID = 2, refLootEntry = 15954 }; --Totem of Flowing Water
		{ itemID = 23006, groupID = 2, refLootEntry = 15954 }; --Libram of Light
		{ itemID = 23009, groupID = 2, refLootEntry = 16061 }; --Wand of the Whispering Dead
		{ itemID = 23014, groupID = 2, refLootEntry = 16061 }; --Iblis, Blade of the Fallen Seraph
		{ itemID = 23017, groupID = 2, refLootEntry = 16061 }; --Veil of Eclipse
		{ itemID = 23018, groupID = 2, refLootEntry = 16061 }; --Signet of the Fallen Defender
		{ itemID = 23019, groupID = 5, refLootEntry = 16062 }; --Icebane Helmet
		{ itemID = 23020, groupID = 5, refLootEntry = 16062 }; --Polar Helmet
		{ itemID = 23021, groupID = 2, refLootEntry = 16060 }; --The Soul Harvester's Bindings
		{ itemID = 23023, groupID = 2, refLootEntry = 16060 }; --Sadist's Collar
		{ itemID = 23025, groupID = 2, refLootEntry = 16062 }; --Seal of the Damned
		{ itemID = 23027, groupID = 2, refLootEntry = 16062 }; --Warmth of Forgiveness
		{ itemID = 23028, groupID = 5, refLootEntry = 16062 }; --Hailstone Band
		{ itemID = 23029, groupID = 2, refLootEntry = 15954 }; --Noth's Frigid Heart
		{ itemID = 23030, groupID = 2, refLootEntry = 15954 }; --Cloak of the Scourge
		{ itemID = 23031, groupID = 2, refLootEntry = 15954 }; --Band of the Inevitable
		{ itemID = 23032, groupID = 5, refLootEntry = 16062 }; --Glacial Headdress
		{ itemID = 23033, groupID = 5, refLootEntry = 16062 }; --Icy Scale Coif
		{ itemID = 23035, groupID = 2, refLootEntry = 15936 }; --Preceptor's Hat
		{ itemID = 23036, groupID = 2, refLootEntry = 15936 }; --Necklace of Necropsy
		{ itemID = 23037, groupID = 2, refLootEntry = 16011 }; --Ring of Spiritual Fervor
		{ itemID = 23038, groupID = 2, refLootEntry = 16011 }; --Band of Unnatural Forces
		{ itemID = 23039, groupID = 2, refLootEntry = 16011 }; --The Eye of Nerub
		{ itemID = 23040, groupID = 2, refLootEntry = 15989 }; --Glyph of Deflection
		{ itemID = 23041, groupID = 2, refLootEntry = 15989 }; --Slayer's Crest
		{ itemID = 23042, groupID = 2, refLootEntry = 16011 }; --Loatheb's Reflection
		{ itemID = 23043, groupID = 2, refLootEntry = 15989 }; --The Face of Death
		{ itemID = 23045, groupID = 2, refLootEntry = 15989 }; --Shroud of Dominion
		{ itemID = 23046, groupID = 2, refLootEntry = 15989 }; --The Restrained Essence of Sapphiron
		{ itemID = 23047, groupID = 2, refLootEntry = 15989 }; --Eye of the Dead
		{ itemID = 23048, groupID = 2, refLootEntry = 15989 }; --Sapphiron's Right Eye
		{ itemID = 23049, groupID = 2, refLootEntry = 15989 }; --Sapphiron's Left Eye
		{ itemID = 23050, groupID = 2, refLootEntry = 15989 }; --Cloak of the Necropolis
		{ itemID = 23053, groupID = 2, refLootEntry = 15990 }; --Stormrage's Talisman of Seething
		{ itemID = 23054, groupID = 2, refLootEntry = 15990 }; --Gressil, Dawn of Ruin
		{ itemID = 23056, groupID = 2, refLootEntry = 15990 }; --Hammer of the Twisting Nether
		{ itemID = 23057, groupID = 2, refLootEntry = 15990 }; --Gem of Trapped Innocents
		{ itemID = 23068, groupID = 2, refLootEntry = 15936 }; --Legplates of Carnage
		{ itemID = 23070, groupID = 2, refLootEntry = 15928 }; --Leggings of Polarity
		{ itemID = 23071, groupID = 2, refLootEntry = 16062 }; --Leggings of Apocalypse
		{ itemID = 23072, groupID = 2, refLootEntry = 15989 }; --Fists of the Unrelenting
		{ itemID = 23073, groupID = 2, refLootEntry = 16060 }; --Boots of Displacement
		{ itemID = 23075, groupID = 2, refLootEntry = 15932 }; --Death's Bargain
		{ itemID = 23168, groupID = 0, refLootEntry = 0 }; --Scorn's Focal Dagger
		{ itemID = 23169, groupID = 0, refLootEntry = 0 }; --Scorn's Icy Choker
		{ itemID = 23170, groupID = 0, refLootEntry = 0 }; --The Frozen Clutch
		{ itemID = 23171, groupID = 1, refLootEntry = 14682 }; --The Axe of Severing
		{ itemID = 23173, groupID = 1, refLootEntry = 14682 }; --Abomination Skin Leggings
		{ itemID = 23177, groupID = 0, refLootEntry = 0 }; --Lady Falther'ess' Finger
		{ itemID = 23178, groupID = 0, refLootEntry = 0 }; --Mantle of Lady Falther'ess
		{ itemID = 23198, groupID = 1, refLootEntry = 10435 }; --Idol of Brutality
		{ itemID = 23200, groupID = 1, refLootEntry = 11261 }; --Totem of Sustaining
		{ itemID = 23201, groupID = 1, refLootEntry = 11261 }; --Libram of Divinity
		{ itemID = 23219, groupID = 2, refLootEntry = 16061 }; --Girdle of the Mentor
		{ itemID = 23220, groupID = 2, refLootEntry = 15952 }; --Crystal Webbed Robe
		{ itemID = 23242, groupID = 2, refLootEntry = 15989 }; --Claw of the Frost Wyrm
		{ itemID = 23328, groupID = 2, refLootEntry = 16061 }; --The Unholy Blade
		{ itemID = 23557, groupID = 2, refLootEntry = 15517 }; --Larvae of the Great Worm
		{ itemID = 23558, groupID = 2, refLootEntry = 15517 }; --The Burrower's Shell
		{ itemID = 23570, groupID = 2, refLootEntry = 15517 }; --Jom Gabbar
		{ itemID = 23577, groupID = 2, refLootEntry = 15990 }; --The Hungering Cold
		{ itemID = 24020, groupID = 1, refLootEntry = 17306 }; --Shadowrend Longblade
		{ itemID = 24021, groupID = 1, refLootEntry = 17306 }; --Light-Touched Breastplate
		{ itemID = 24022, groupID = 1, refLootEntry = 17306 }; --Scale Leggings of the Skirmisher
		{ itemID = 24023, groupID = 1, refLootEntry = 17306 }; --Bracers of Finesse
		{ itemID = 24024, groupID = 1, refLootEntry = 17306 }; --Pauldrons of Arcane Rage
		{ itemID = 24069, groupID = 1, refLootEntry = 17308 }; --Crystalfire Staff
		{ itemID = 24073, groupID = 1, refLootEntry = 17308 }; --Garrote-String Necklace
		{ itemID = 24090, groupID = 1, refLootEntry = 17308 }; --Bloodstained Ravager Gauntlets
		{ itemID = 24091, groupID = 1, refLootEntry = 17308 }; --Tenacious Defender
		{ itemID = 24094, groupID = 1, refLootEntry = 17308 }; --Heart Fire Warhammer
		{ itemID = 24096, groupID = 1, refLootEntry = 17308 }; --Heartblood Prayer Beads
		{ itemID = 241919, groupID = 1, refLootEntry = 16808 }; --Gauntlets of the Divine
		{ itemID = 241962, groupID = 1, refLootEntry = 40073 }; --Spaulders of the Divine
		{ itemID = 242509, groupID = 2, refLootEntry = 17881 }; --Legplates of the Divine
		{ itemID = 242552, groupID = 1, refLootEntry = 17798 }; --Breastplate of the Divine
		{ itemID = 242595, groupID = 1, refLootEntry = 40065 }; --Helm of the Divine
		{ itemID = 242638, groupID = 1, refLootEntry = 16808 }; --Gauntlets of the Just
		{ itemID = 242681, groupID = 1, refLootEntry = 40073 }; --Spaulders of the Just
		{ itemID = 242724, groupID = 2, refLootEntry = 17881 }; --Legplates of the Just
		{ itemID = 242767, groupID = 1, refLootEntry = 17798 }; --Breastplate of the Just
		{ itemID = 242810, groupID = 1, refLootEntry = 40065 }; --Helm of the Just
		{ itemID = 242853, groupID = 1, refLootEntry = 17798 }; --Gauntlets of the Sentinel
		{ itemID = 242896, groupID = 1, refLootEntry = 40146 }; --Shoulderguards of the Sentinel
		{ itemID = 24356, groupID = 1, refLootEntry = 17941 }; --Wastewalker Shiv
		{ itemID = 24357, groupID = 1, refLootEntry = 17941 }; --Vest of Living Lightning
		{ itemID = 24359, groupID = 1, refLootEntry = 17941 }; --Princely Reign Leggings
		{ itemID = 24360, groupID = 1, refLootEntry = 17941 }; --Tracker's Belt
		{ itemID = 24361, groupID = 1, refLootEntry = 17941 }; --Spellfire Longsword
		{ itemID = 24362, groupID = 1, refLootEntry = 17942 }; --Spore-Soaked Vaneer
		{ itemID = 24363, groupID = 1, refLootEntry = 17942 }; --Unscarred Breastplate
		{ itemID = 24364, groupID = 1, refLootEntry = 17942 }; --Azureplate Greaves
		{ itemID = 24365, groupID = 1, refLootEntry = 17942 }; --Deft Handguards
		{ itemID = 24366, groupID = 1, refLootEntry = 17942 }; --Scorpid-Sting Mantle
		{ itemID = 24376, groupID = 1, refLootEntry = 17991 }; --Runed Fungalcap
		{ itemID = 24378, groupID = 1, refLootEntry = 17991 }; --Coilfang Hammer of Renewal
		{ itemID = 24379, groupID = 1, refLootEntry = 17991 }; --Bogstrok Scale Cloak
		{ itemID = 24380, groupID = 1, refLootEntry = 17991 }; --Calming Spore Reed
		{ itemID = 24381, groupID = 1, refLootEntry = 17991 }; --Coilfang Needler
		{ itemID = 24384, groupID = 1, refLootEntry = 17381 }; --Diamond-Core Sledgemace
		{ itemID = 24385, groupID = 1, refLootEntry = 17381 }; --Pendant of Battle-Lust
		{ itemID = 24386, groupID = 1, refLootEntry = 17381 }; --Libram of Saints Departed
		{ itemID = 24387, groupID = 1, refLootEntry = 17381 }; --Ironblade Gauntlets
		{ itemID = 24388, groupID = 1, refLootEntry = 17381 }; --Girdle of the Gale Storm
		{ itemID = 24389, groupID = 1, refLootEntry = 17380 }; --Legion Blunderbuss
		{ itemID = 24390, groupID = 1, refLootEntry = 17380 }; --Auslese's Light Channeler
		{ itemID = 24391, groupID = 1, refLootEntry = 17380 }; --Kilt of the Night Strider
		{ itemID = 24392, groupID = 1, refLootEntry = 17380 }; --Arcing Bracers
		{ itemID = 24393, groupID = 1, refLootEntry = 17380 }; --Bloody Surgeon's Mitts
		{ itemID = 24394, groupID = 1, refLootEntry = 17377 }; --Warsong Howling Axe
		{ itemID = 24395, groupID = 1, refLootEntry = 17377 }; --Mindfire Waistband
		{ itemID = 24396, groupID = 1, refLootEntry = 17377 }; --Vest of Vengeance
		{ itemID = 24397, groupID = 1, refLootEntry = 17377 }; --Raiments of Divine Authority
		{ itemID = 24398, groupID = 1, refLootEntry = 17377 }; --Mantle of the Dusk-Dweller
		{ itemID = 24413, groupID = 1, refLootEntry = 17770 }; --Totem of the Thunderhead
		{ itemID = 244286, groupID = 2, refLootEntry = 17881 }; --Legplates of the Sentinel
		{ itemID = 24450, groupID = 1, refLootEntry = 17770 }; --Manaspark Gloves
		{ itemID = 24451, groupID = 1, refLootEntry = 17770 }; --Lykul Bloodbands
		{ itemID = 24452, groupID = 1, refLootEntry = 17770 }; --Starlight Gauntlets
		{ itemID = 24453, groupID = 1, refLootEntry = 17826 }; --Zangartooth Shortblade
		{ itemID = 24454, groupID = 1, refLootEntry = 17826 }; --Cloak of Enduring Swiftness
		{ itemID = 24455, groupID = 1, refLootEntry = 17826 }; --Tunic of the Nightwatcher
		{ itemID = 24456, groupID = 1, refLootEntry = 17826 }; --Greaves of the Iron Guardian
		{ itemID = 24457, groupID = 1, refLootEntry = 17826 }; --Truth Bearer Shoulderguards
		{ itemID = 24458, groupID = 1, refLootEntry = 18105 }; --Studded Girdle of Virtue
		{ itemID = 24459, groupID = 1, refLootEntry = 18105 }; --Cloak of Healing Rays
		{ itemID = 24460, groupID = 1, refLootEntry = 18105 }; --Talisman of Tenacity
		{ itemID = 24461, groupID = 1, refLootEntry = 18105 }; --Hatebringer
		{ itemID = 24462, groupID = 1, refLootEntry = 18105 }; --Luminous Pearls of Insight
		{ itemID = 24463, groupID = 1, refLootEntry = 17882 }; --Pauldrons of Brute Force
		{ itemID = 24464, groupID = 1, refLootEntry = 17882 }; --The Stalker's Fangs
		{ itemID = 24465, groupID = 1, refLootEntry = 17882 }; --Shamblehide Chestguard
		{ itemID = 24466, groupID = 1, refLootEntry = 17882 }; --Skulldugger's Leggings
		{ itemID = 24481, groupID = 1, refLootEntry = 17882 }; --Robes of the Augurer
		{ itemID = 244872, groupID = 2, refLootEntry = 25004 }; --Breastplate of the Sentinel
		{ itemID = 244915, groupID = 1, refLootEntry = 40077 }; --Warhelm of the Sentinel
		{ itemID = 244958, groupID = 1, refLootEntry = 17798 }; --Gauntlets of the Tides
		{ itemID = 245159, groupID = 1, refLootEntry = 16809 }; --Shoulderguards of the Tides
		{ itemID = 245303, groupID = 1, refLootEntry = 40146 }; --Kilt of the Tides
		{ itemID = 24537, groupID = 2, refLootEntry = 23863 }; --Waistband of Crushed Skulls
		{ itemID = 245601, groupID = 1, refLootEntry = 40146 }; --Chestpiece of the Tides
		{ itemID = 245746, groupID = 1, refLootEntry = 40077 }; --Helm of the Tides
		{ itemID = 245794, groupID = 1, refLootEntry = 40141 }; --Verdant's Handwraps
		{ itemID = 245878, groupID = 1, refLootEntry = 17798 }; --Verdant's Shoulders
		{ itemID = 245962, groupID = 2, refLootEntry = 17881 }; --Verdant's Pants
		{ itemID = 247548, groupID = 1, refLootEntry = 40065 }; --Verdant's Robe
		{ itemID = 247693, groupID = 1, refLootEntry = 40077 }; --Verdant's Cowl
		{ itemID = 2551, groupID = 1, refLootEntry = 4424 }; --Boar Bolter
		{ itemID = 2559, groupID = 1, refLootEntry = 11518 }; --Ebonstone Staff
		{ itemID = 2567, groupID = 1, refLootEntry = 12876 }; --Evocator's Blade
		{ itemID = 25874, groupID = 1, refLootEntry = 25874 }; --Large Throwing Knife
		{ itemID = 25876, groupID = 1, refLootEntry = 25876 }; --Gleaming Throwing Axe
		{ itemID = 25939, groupID = 1, refLootEntry = 40110 }; --Voidfire Wand
		{ itemID = 25940, groupID = 1, refLootEntry = 40110 }; --Idol of the Claw
		{ itemID = 25941, groupID = 1, refLootEntry = 40110 }; --Boots of the Outlander
		{ itemID = 25942, groupID = 1, refLootEntry = 40110 }; --Faith Bearer's Gauntlets
		{ itemID = 25943, groupID = 1, refLootEntry = 40110 }; --Creepjacker
		{ itemID = 25944, groupID = 1, refLootEntry = 40112 }; --Shaarde the Greater
		{ itemID = 25945, groupID = 1, refLootEntry = 40112 }; --Cloak of Revival
		{ itemID = 25946, groupID = 1, refLootEntry = 40112 }; --Nethershade Boots
		{ itemID = 25947, groupID = 1, refLootEntry = 40112 }; --Lightning-Rod Pauldrons
		{ itemID = 25950, groupID = 1, refLootEntry = 40112 }; --Staff of Polarities
		{ itemID = 25952, groupID = 1, refLootEntry = 40112 }; --Scimitar of the Nexus-Stalkers
		{ itemID = 25953, groupID = 1, refLootEntry = 40115 }; --Ethereal Warp-Bow
		{ itemID = 25954, groupID = 1, refLootEntry = 40115 }; --Sigil of Shaffar
		{ itemID = 25955, groupID = 1, refLootEntry = 40115 }; --Mask of the Howling Storm
		{ itemID = 25956, groupID = 1, refLootEntry = 40115 }; --Nexus-Bracers of Vigor
		{ itemID = 25957, groupID = 1, refLootEntry = 40115 }; --Ethereal Boots of the Skystrider
		{ itemID = 25962, groupID = 1, refLootEntry = 40115 }; --Longstrider's Loop
		{ itemID = 25964, groupID = 1, refLootEntry = 18371 }; --Shaarde the Lesser
		{ itemID = 26055, groupID = 1, refLootEntry = 18371 }; --Oculus of the Hidden Eye
		{ itemID = 264935, groupID = 1, refLootEntry = 11261 }; --Hauberk of Tenacity
		{ itemID = 265170, groupID = 1, refLootEntry = 11261 }; --Gauntlets of Tenacity
		{ itemID = 267897, groupID = 1, refLootEntry = 11261 }; --Waistguard of Tenacity
		{ itemID = 268347, groupID = 1, refLootEntry = 11261 }; --Legguards of Tenacity
		{ itemID = 269237, groupID = 1, refLootEntry = 11261 }; --Greaves of Tenacity
		{ itemID = 269280, groupID = 1, refLootEntry = 5711 }; --Blade of the Wretched
		{ itemID = 269456, groupID = 1, refLootEntry = 5711 }; --Fist of the Damned
		{ itemID = 269644, groupID = 1, refLootEntry = 5711 }; --Eater of the Dead
		{ itemID = 269747, groupID = 1, refLootEntry = 35010 }; --Atal'ai Spaulders
		{ itemID = 269807, groupID = 1, refLootEntry = 35010 }; --Atal'ai Breastplate
		{ itemID = 269850, groupID = 1, refLootEntry = 35010 }; --Atal'ai Leggings
		{ itemID = 272892, groupID = 1, refLootEntry = 35010 }; --Atal'ai Boots
		{ itemID = 272967, groupID = 1, refLootEntry = 35010 }; --Atal'ai Gloves
		{ itemID = 273130, groupID = 1, refLootEntry = 35010 }; --Atal'ai Girdle
		{ itemID = 273879, groupID = 1, refLootEntry = 9033 }; --Angerforge's Molten Totem
		{ itemID = 273966, groupID = 1, refLootEntry = 14326 }; --Gordok Ritual Totem
		{ itemID = 27408, groupID = 1, refLootEntry = 18371 }; --Hope Bearer Helm
		{ itemID = 27409, groupID = 1, refLootEntry = 18371 }; --Raven-Heart Headdress
		{ itemID = 27410, groupID = 1, refLootEntry = 18371 }; --Collar of Command
		{ itemID = 27411, groupID = 1, refLootEntry = 18373 }; --Slippers of Serenity
		{ itemID = 27412, groupID = 1, refLootEntry = 18373 }; --Ironstaff of Regeneration
		{ itemID = 27413, groupID = 1, refLootEntry = 18373 }; --Ring of the Exarchs
		{ itemID = 27414, groupID = 1, refLootEntry = 18373 }; --Mok'Nathal Beast-Mask
		{ itemID = 27415, groupID = 1, refLootEntry = 18373 }; --Darkguard Face Mask
		{ itemID = 27416, groupID = 1, refLootEntry = 18373 }; --Fetish of the Fallen
		{ itemID = 274503, groupID = 1, refLootEntry = 13280 }; --Wildwater Totem
		{ itemID = 274663, groupID = 1, refLootEntry = 10901 }; --Remulos' Restorative Rites
		{ itemID = 27468, groupID = 1, refLootEntry = 40141 }; --Moonglade Handwraps
		{ itemID = 27474, groupID = 1, refLootEntry = 16808 }; --Beast Lord Handguards
		{ itemID = 27475, groupID = 1, refLootEntry = 17798 }; --Gauntlets of the Bold
		{ itemID = 27508, groupID = 1, refLootEntry = 17797 }; --Incanter's Gloves
		{ itemID = 27509, groupID = 2, refLootEntry = 17881 }; --Handgrips of Assassination
		{ itemID = 27510, groupID = 1, refLootEntry = 17798 }; --Tidefury Gauntlets
		{ itemID = 27517, groupID = 1, refLootEntry = 16807 }; --Bands of Nethekurse
		{ itemID = 27518, groupID = 1, refLootEntry = 16807 }; --Ivory Idol of the Moongoddess
		{ itemID = 27519, groupID = 1, refLootEntry = 16807 }; --Cloak of Malice
		{ itemID = 27520, groupID = 1, refLootEntry = 16807 }; --Greathelm of the Unbreakable
		{ itemID = 27521, groupID = 1, refLootEntry = 16807 }; --Telaari Hunting Girdle
		{ itemID = 27524, groupID = 1, refLootEntry = 16809 }; --Firemaul of Destruction
		{ itemID = 27525, groupID = 1, refLootEntry = 16809 }; --Jeweled Boots of Sanctification
		{ itemID = 27526, groupID = 1, refLootEntry = 16809 }; --Skyfire Hawk-Bow
		{ itemID = 27527, groupID = 1, refLootEntry = 16808 }; --Greaves of the Shatterer
		{ itemID = 27528, groupID = 1, refLootEntry = 16808 }; --Gauntlets of Desolation
		{ itemID = 27529, groupID = 1, refLootEntry = 16808 }; --Figurine of the Colossus
		{ itemID = 27531, groupID = 1, refLootEntry = 16808 }; --Wastewalker Gloves
		{ itemID = 27533, groupID = 1, refLootEntry = 16808 }; --Demonblood Eviscerator
		{ itemID = 27534, groupID = 1, refLootEntry = 16808 }; --Hortus' Seal of Brilliance
		{ itemID = 27535, groupID = 1, refLootEntry = 16808 }; --Gauntlets of the Righteous
		{ itemID = 27536, groupID = 1, refLootEntry = 16808 }; --Hallowed Handwraps
		{ itemID = 27537, groupID = 1, refLootEntry = 16808 }; --Gloves of Oblivion
		{ itemID = 27538, groupID = 1, refLootEntry = 16808 }; --Lightsworn Hammer
		{ itemID = 27540, groupID = 1, refLootEntry = 16808 }; --Nexus Torch
		{ itemID = 275506, groupID = 1, refLootEntry = 10437 }; --Bloodthirsty Ravaging Claw
		{ itemID = 276132, groupID = 1, refLootEntry = 11487 }; --Idol of Lunar Apparitions
		{ itemID = 276243, groupID = 1, refLootEntry = 10809 }; --Petrified Codex
		{ itemID = 27631, groupID = 1, refLootEntry = 17770 }; --Needle Shrike
		{ itemID = 276483, groupID = 1, refLootEntry = 10811 }; --Archived Record of Inquisition
		{ itemID = 27737, groupID = 1, refLootEntry = 17798 }; --Moonglade Shoulders
		{ itemID = 27738, groupID = 1, refLootEntry = 17798 }; --Incanter's Pauldrons
		{ itemID = 27739, groupID = 1, refLootEntry = 40073 }; --Spaulders of the Righteous
		{ itemID = 277569, groupID = 1, refLootEntry = 10503 }; --Reliquary Scripture
		{ itemID = 27775, groupID = 1, refLootEntry = 40142 }; --Hallowed Pauldrons
		{ itemID = 27776, groupID = 2, refLootEntry = 25006 }; --Shoulderpads of Assassination
		{ itemID = 27778, groupID = 1, refLootEntry = 40146 }; --Spaulders of Oblivion
		{ itemID = 27783, groupID = 1, refLootEntry = 17797 }; --Moonrage Girdle
		{ itemID = 27784, groupID = 1, refLootEntry = 17797 }; --Scintillating Coral Band
		{ itemID = 27787, groupID = 1, refLootEntry = 17797 }; --Chestguard of No Remorse
		{ itemID = 27789, groupID = 1, refLootEntry = 17797 }; --Cloak of Whispering Shells
		{ itemID = 27790, groupID = 1, refLootEntry = 17796 }; --Mask of Penance
		{ itemID = 27791, groupID = 1, refLootEntry = 17796 }; --Serpentcrest Life-Staff
		{ itemID = 27792, groupID = 1, refLootEntry = 17796 }; --Steam-Hinge Chain of Valor
		{ itemID = 27793, groupID = 1, refLootEntry = 17796 }; --Earth Mantle Handwraps
		{ itemID = 27794, groupID = 1, refLootEntry = 17796 }; --Recoilless Rocket Ripper X-54
		{ itemID = 27795, groupID = 1, refLootEntry = 17798 }; --Sash of Serpentra
		{ itemID = 27799, groupID = 1, refLootEntry = 17798 }; --Vermillion Robes of the Dominant
		{ itemID = 27801, groupID = 1, refLootEntry = 17798 }; --Beast Lord Mantle
		{ itemID = 27802, groupID = 1, refLootEntry = 16809 }; --Tidefury Shoulderguards
		{ itemID = 27803, groupID = 1, refLootEntry = 40146 }; --Shoulderguards of the Bold
		{ itemID = 27804, groupID = 1, refLootEntry = 17798 }; --Devilshark Cape
		{ itemID = 27805, groupID = 1, refLootEntry = 17798 }; --Ring of the Silver Hand
		{ itemID = 27806, groupID = 1, refLootEntry = 17798 }; --Fathomheart Gauntlets
		{ itemID = 27838, groupID = 2, refLootEntry = 25006 }; --Incanter's Trousers
		{ itemID = 27839, groupID = 2, refLootEntry = 17881 }; --Legplates of the Righteous
		{ itemID = 27868, groupID = 1, refLootEntry = 16809 }; --Runesong Dagger
		{ itemID = 27873, groupID = 2, refLootEntry = 17881 }; --Moonglade Pants
		{ itemID = 27874, groupID = 1, refLootEntry = 17798 }; --Beast Lord Leggings
		{ itemID = 27875, groupID = 2, refLootEntry = 25006 }; --Hallowed Trousers
		{ itemID = 27884, groupID = 1, refLootEntry = 40140 }; --Ornate Boots of the Sanctified
		{ itemID = 27885, groupID = 1, refLootEntry = 40140 }; --Soul-Wand of the Aldor
		{ itemID = 27886, groupID = 1, refLootEntry = 40140 }; --Idol of the Emerald Queen
		{ itemID = 27887, groupID = 1, refLootEntry = 40140 }; --Platinum Shield of the Valorous
		{ itemID = 27888, groupID = 1, refLootEntry = 40140 }; --Dream-Wing Helm
		{ itemID = 27889, groupID = 1, refLootEntry = 40140 }; --Jaedenfire Gloves of Annihilation
		{ itemID = 27890, groupID = 1, refLootEntry = 40141 }; --Wand of the Netherwing
		{ itemID = 27891, groupID = 1, refLootEntry = 40141 }; --Adamantine Figurine
		{ itemID = 27892, groupID = 1, refLootEntry = 40141 }; --Cloak of the Inciter
		{ itemID = 27893, groupID = 1, refLootEntry = 40141 }; --Ornate Leggings of the Venerated
		{ itemID = 27897, groupID = 1, refLootEntry = 40142 }; --Breastplate of Many Graces
		{ itemID = 27898, groupID = 1, refLootEntry = 40142 }; --Wrathfire Hand-Cannon
		{ itemID = 27899, groupID = 1, refLootEntry = 40062 }; --Mana Wrath
		{ itemID = 27900, groupID = 1, refLootEntry = 40142 }; --Jewel of Charismatic Mystique
		{ itemID = 27901, groupID = 1, refLootEntry = 40142 }; --Blackout Truncheon
		{ itemID = 27902, groupID = 1, refLootEntry = 40143 }; --Silent Slippers of Meditation
		{ itemID = 27903, groupID = 1, refLootEntry = 40143 }; --Sonic Spear
		{ itemID = 27905, groupID = 1, refLootEntry = 40143 }; --Greatsword of Horrid Dreams
		{ itemID = 27908, groupID = 1, refLootEntry = 40146 }; --Leggings of Assassination
		{ itemID = 27909, groupID = 1, refLootEntry = 40146 }; --Tidefury Kilt
		{ itemID = 27910, groupID = 1, refLootEntry = 40143 }; --Silvermoon Crest Shield
		{ itemID = 27912, groupID = 1, refLootEntry = 40143 }; --Harness of the Deep Currents
		{ itemID = 27913, groupID = 1, refLootEntry = 40143 }; --Whispering Blade of Slaying
		{ itemID = 27914, groupID = 1, refLootEntry = 40130 }; --Moonstrider Boots
		{ itemID = 27915, groupID = 1, refLootEntry = 40130 }; --Sky-Hunter Swift Boots
		{ itemID = 27916, groupID = 1, refLootEntry = 40130 }; --Sethekk Feather-Darts
		{ itemID = 27917, groupID = 1, refLootEntry = 40130 }; --Libram of the Eternal Rest
		{ itemID = 27918, groupID = 1, refLootEntry = 40130 }; --Bands of Syth
		{ itemID = 27919, groupID = 1, refLootEntry = 40130 }; --Light-Woven Slippers
		{ itemID = 27925, groupID = 2, refLootEntry = 25006 }; --Ravenclaw Band
		{ itemID = 27936, groupID = 2, refLootEntry = 25006 }; --Greaves of Desolation
		{ itemID = 27946, groupID = 2, refLootEntry = 25006 }; --Avian Cloak of Feathers
		{ itemID = 27948, groupID = 2, refLootEntry = 25006 }; --Trousers of Oblivion
		{ itemID = 27977, groupID = 2, refLootEntry = 17881 }; --Legplates of the Bold
		{ itemID = 27980, groupID = 2, refLootEntry = 25006 }; --Terokk's Nightmace
		{ itemID = 27981, groupID = 2, refLootEntry = 25006 }; --Sethekk Oracle Cloak
		{ itemID = 27985, groupID = 2, refLootEntry = 25006 }; --Deathforge Girdle
		{ itemID = 27986, groupID = 2, refLootEntry = 25006 }; --Crow Wing Reaper
		{ itemID = 27987, groupID = 1, refLootEntry = 17879 }; --Melmorta's Twilight Longbow
		{ itemID = 27988, groupID = 1, refLootEntry = 17879 }; --Burnoose of Shifting Ages
		{ itemID = 27993, groupID = 1, refLootEntry = 17879 }; --Mask of Inner Fire
		{ itemID = 27994, groupID = 1, refLootEntry = 17879 }; --Mantle of Three Terrors
		{ itemID = 27995, groupID = 1, refLootEntry = 17879 }; --Sun-Gilded Shouldercaps
		{ itemID = 27996, groupID = 1, refLootEntry = 17879 }; --Ring of Spiritual Precision
		{ itemID = 2802, groupID = 1, refLootEntry = 24040 }; --Blazing Emblem
		{ itemID = 28033, groupID = 1, refLootEntry = 17880 }; --Epoch-Mender
		{ itemID = 28034, groupID = 1, refLootEntry = 17880 }; --Hourglass of the Unraveller
		{ itemID = 28134, groupID = 1, refLootEntry = 40141 }; --Brooch of Heightened Potential
		{ itemID = 2816, groupID = 1, refLootEntry = 4428 }; --Death Speaker Scepter
		{ itemID = 28166, groupID = 1, refLootEntry = 40110 }; --Shield of the Void
		{ itemID = 28184, groupID = 1, refLootEntry = 17880 }; --Millennium Blade
		{ itemID = 28185, groupID = 1, refLootEntry = 17880 }; --Khadgar's Kilt of Abjuration
		{ itemID = 28186, groupID = 1, refLootEntry = 17880 }; --Laughing Skull Battle-Harness
		{ itemID = 28187, groupID = 1, refLootEntry = 17880 }; --Star-Heart Lamp
		{ itemID = 28188, groupID = 1, refLootEntry = 17881 }; --Bloodfire Greatstaff
		{ itemID = 28189, groupID = 1, refLootEntry = 17881 }; --Latro's Shifting Sword
		{ itemID = 2819, groupID = 1, refLootEntry = 1221203 }; --Cross Dagger
		{ itemID = 28190, groupID = 1, refLootEntry = 17881 }; --Scarab of the Infinite Cycle
		{ itemID = 28192, groupID = 2, refLootEntry = 17881 }; --Helm of Desolation
		{ itemID = 28193, groupID = 2, refLootEntry = 17881 }; --Mana-Etched Crown
		{ itemID = 28194, groupID = 1, refLootEntry = 17881 }; --Primal Surge Bracers
		{ itemID = 28202, groupID = 1, refLootEntry = 40065 }; --Moonglade Robe
		{ itemID = 28203, groupID = 1, refLootEntry = 17798 }; --Breastplate of the Righteous
		{ itemID = 28204, groupID = 1, refLootEntry = 40065 }; --Tunic of Assassination
		{ itemID = 28205, groupID = 2, refLootEntry = 25004 }; --Breastplate of the Bold
		{ itemID = 28206, groupID = 1, refLootEntry = 17881 }; --Cowl of the Guiltless
		{ itemID = 28207, groupID = 1, refLootEntry = 17881 }; --Pauldrons of the Crimson Flight
		{ itemID = 28228, groupID = 1, refLootEntry = 40077 }; --Beast Lord Cuirass
		{ itemID = 28229, groupID = 1, refLootEntry = 40077 }; --Incanter's Robe
		{ itemID = 28230, groupID = 1, refLootEntry = 40146 }; --Hallowed Garments
		{ itemID = 28231, groupID = 2, refLootEntry = 25004 }; --Tidefury Chestpiece
		{ itemID = 28232, groupID = 1, refLootEntry = 40146 }; --Robe of Oblivion
		{ itemID = 2825, groupID = 1, refLootEntry = 24080 }; --Bow of Searing Arrows
		{ itemID = 28253, groupID = 1, refLootEntry = 40060 }; --Plasma Rat's Hyper-Scythe
		{ itemID = 28254, groupID = 1, refLootEntry = 40060 }; --Warp Engineer's Prismatic Chain
		{ itemID = 28255, groupID = 1, refLootEntry = 40060 }; --Lunar-Claw Pauldrons
		{ itemID = 28256, groupID = 1, refLootEntry = 40060 }; --Thoriumweave Cloak
		{ itemID = 28257, groupID = 1, refLootEntry = 40060 }; --Hammer of the Penitent
		{ itemID = 28258, groupID = 1, refLootEntry = 40061 }; --Nethershrike
		{ itemID = 28259, groupID = 1, refLootEntry = 40061 }; --Cosmic Lifeband
		{ itemID = 28260, groupID = 1, refLootEntry = 40061 }; --Manual of the Nethermancer
		{ itemID = 28262, groupID = 1, refLootEntry = 40061 }; --Jade-Skull Breastplate
		{ itemID = 28263, groupID = 1, refLootEntry = 40061 }; --Stellaris
		{ itemID = 28265, groupID = 1, refLootEntry = 40062 }; --Dath'Remar's Ring of Defense
		{ itemID = 28266, groupID = 1, refLootEntry = 40062 }; --Molten Earth Kilt
		{ itemID = 28267, groupID = 1, refLootEntry = 40062 }; --Edge of the Cosmos
		{ itemID = 28269, groupID = 1, refLootEntry = 40062 }; --Baba's Cloak of Arcanistry
		{ itemID = 2827, groupID = 1, refLootEntry = 1717 }; --Hamhock's Ham Hacker
		{ itemID = 28275, groupID = 1, refLootEntry = 40065 }; --Beast Lord Helm
		{ itemID = 28278, groupID = 1, refLootEntry = 40065 }; --Incanter's Cowl
		{ itemID = 28285, groupID = 1, refLootEntry = 40065 }; --Helm of the Righteous
		{ itemID = 28286, groupID = 1, refLootEntry = 40065 }; --Telescopic Sharprifle
		{ itemID = 28288, groupID = 1, refLootEntry = 40062 }; --Abacus of Violent Odds
		{ itemID = 28296, groupID = 1, refLootEntry = 40070 }; --Libram of the Lightbringer
		{ itemID = 28301, groupID = 1, refLootEntry = 40070 }; --Syrannis' Mystic Sheen
		{ itemID = 28304, groupID = 1, refLootEntry = 40070 }; --Prismatic Mittens of Mending
		{ itemID = 28306, groupID = 1, refLootEntry = 40070 }; --Towering Mantle of the Hunt
		{ itemID = 28311, groupID = 1, refLootEntry = 40070 }; --Revenger
		{ itemID = 28315, groupID = 1, refLootEntry = 40071 }; --Stormreaver Warblades
		{ itemID = 28316, groupID = 1, refLootEntry = 40071 }; --Aegis of the Sunbird
		{ itemID = 28317, groupID = 1, refLootEntry = 40071 }; --Energis Armwraps
		{ itemID = 28318, groupID = 1, refLootEntry = 40071 }; --Obsidian Clodstompers
		{ itemID = 28321, groupID = 1, refLootEntry = 40071 }; --Enchanted Thorium Torque
		{ itemID = 28322, groupID = 1, refLootEntry = 40072 }; --Runed Dagger of Solace
		{ itemID = 28323, groupID = 1, refLootEntry = 40072 }; --Ring of Umbral Doom
		{ itemID = 28324, groupID = 1, refLootEntry = 40072 }; --Gauntlets of Cruel Intention
		{ itemID = 28325, groupID = 1, refLootEntry = 40072 }; --Dreamer's Dragonstaff
		{ itemID = 28327, groupID = 1, refLootEntry = 40072 }; --Arcane Netherband
		{ itemID = 28328, groupID = 1, refLootEntry = 40073 }; --Mithril-Bark Cloak
		{ itemID = 28338, groupID = 1, refLootEntry = 40073 }; --Devil-Stitched Leggings
		{ itemID = 28339, groupID = 1, refLootEntry = 40073 }; --Boots of the Shifting Sands
		{ itemID = 28340, groupID = 1, refLootEntry = 40073 }; --Mantle of Autumn
		{ itemID = 28341, groupID = 1, refLootEntry = 40074 }; --Warpstaff of Arcanum
		{ itemID = 28342, groupID = 1, refLootEntry = 40074 }; --Warp Infused Drape
		{ itemID = 28343, groupID = 1, refLootEntry = 40077 }; --Jagged Bark Pendant
		{ itemID = 28345, groupID = 1, refLootEntry = 40074 }; --Warp Splinter's Thorn
		{ itemID = 28347, groupID = 1, refLootEntry = 40074 }; --Warpscale Leggings
		{ itemID = 28348, groupID = 1, refLootEntry = 40077 }; --Moonglade Cowl
		{ itemID = 28349, groupID = 1, refLootEntry = 40077 }; --Tidefury Helm
		{ itemID = 28350, groupID = 1, refLootEntry = 40077 }; --Warhelm of the Bold
		{ itemID = 28367, groupID = 1, refLootEntry = 40074 }; --Greatsword of Forlorn Visions
		{ itemID = 28370, groupID = 1, refLootEntry = 40077 }; --Bangle of Endless Blessings
		{ itemID = 28371, groupID = 1, refLootEntry = 40074 }; --Netherfury Cape
		{ itemID = 28372, groupID = 1, refLootEntry = 40080 }; --Idol of Feral Shadows
		{ itemID = 28373, groupID = 1, refLootEntry = 40080 }; --Cloak of Scintillating Auras
		{ itemID = 28374, groupID = 1, refLootEntry = 40080 }; --Mana-Sphere Shoulderguards
		{ itemID = 28375, groupID = 1, refLootEntry = 40080 }; --Rubium War-Girdle
		{ itemID = 28384, groupID = 1, refLootEntry = 40080 }; --Outland Striders
		{ itemID = 28386, groupID = 1, refLootEntry = 40082 }; --Nether Core's Control Rod
		{ itemID = 28387, groupID = 1, refLootEntry = 40082 }; --Lamp of Peaceful Repose
		{ itemID = 28390, groupID = 1, refLootEntry = 40082 }; --Thatia's Self-Correcting Gauntlets
		{ itemID = 28391, groupID = 1, refLootEntry = 40082 }; --Worldfire Chestguard
		{ itemID = 28392, groupID = 1, refLootEntry = 40082 }; --Reflex Blades
		{ itemID = 28393, groupID = 1, refLootEntry = 40081 }; --Warmaul of Infused Light
		{ itemID = 28394, groupID = 1, refLootEntry = 40081 }; --Ryngo's Band of Ingenuity
		{ itemID = 28396, groupID = 1, refLootEntry = 40081 }; --Gloves of the Unbound
		{ itemID = 28397, groupID = 1, refLootEntry = 40081 }; --Emberhawk Crossbow
		{ itemID = 28398, groupID = 1, refLootEntry = 40081 }; --The Sleeper's Cord
		{ itemID = 28403, groupID = 2, refLootEntry = 25004 }; --Doomplate Chestguard
		{ itemID = 28406, groupID = 2, refLootEntry = 25004 }; --Sigil-Laced Boots
		{ itemID = 28407, groupID = 2, refLootEntry = 25004 }; --Elementium Band of the Sentry
		{ itemID = 28412, groupID = 2, refLootEntry = 25004 }; --Lamp of Peaceful Radiance
		{ itemID = 28413, groupID = 2, refLootEntry = 25004 }; --Hallowed Crown
		{ itemID = 28414, groupID = 2, refLootEntry = 25004 }; --Helm of Assassination
		{ itemID = 28415, groupID = 2, refLootEntry = 25004 }; --Hood of Oblivion
		{ itemID = 28416, groupID = 2, refLootEntry = 25004 }; --Hungering Spineripper
		{ itemID = 28418, groupID = 2, refLootEntry = 25004 }; --Shiffar's Nexus-Horn
		{ itemID = 28419, groupID = 2, refLootEntry = 25004 }; --Choker of Fluid Thought
		{ itemID = 28453, groupID = 1, refLootEntry = 16152 }; --Bracers of the White Stag
		{ itemID = 28454, groupID = 2, refLootEntry = 16152 }; --Stalker's War Bands
		{ itemID = 28477, groupID = 1, refLootEntry = 16152 }; --Harbinger Bands
		{ itemID = 28502, groupID = 2, refLootEntry = 16152 }; --Vambraces of Courage
		{ itemID = 28503, groupID = 1, refLootEntry = 16152 }; --Whirlwind Bracers
		{ itemID = 28504, groupID = 2, refLootEntry = 16152 }; --Steelhawk Crossbow
		{ itemID = 28505, groupID = 1, refLootEntry = 16152 }; --Gauntlets of Renewed Hope
		{ itemID = 28506, groupID = 2, refLootEntry = 16152 }; --Gloves of Dexterous Manipulation
		{ itemID = 28507, groupID = 1, refLootEntry = 16152 }; --Handwraps of Flowing Thought
		{ itemID = 28508, groupID = 1, refLootEntry = 16152 }; --Gloves of Saintly Blessings
		{ itemID = 28509, groupID = 2, refLootEntry = 16152 }; --Worgen Claw Necklace
		{ itemID = 28510, groupID = 1, refLootEntry = 16152 }; --Spectral Band of Innervation
		{ itemID = 28511, groupID = 1, refLootEntry = 16457 }; --Bands of Indwelling
		{ itemID = 28512, groupID = 1, refLootEntry = 16457 }; --Bracers of Justice
		{ itemID = 28514, groupID = 2, refLootEntry = 16457 }; --Bracers of Maliciousness
		{ itemID = 28515, groupID = 1, refLootEntry = 16457 }; --Bands of Nefarious Deeds
		{ itemID = 28516, groupID = 2, refLootEntry = 16457 }; --Barbed Choker of Discipline
		{ itemID = 28517, groupID = 1, refLootEntry = 16457 }; --Boots of Foretelling
		{ itemID = 28518, groupID = 2, refLootEntry = 16457 }; --Iron Gauntlets of the Maiden
		{ itemID = 28519, groupID = 2, refLootEntry = 16457 }; --Gloves of Quickening
		{ itemID = 28520, groupID = 1, refLootEntry = 16457 }; --Gloves of Centering
		{ itemID = 28521, groupID = 1, refLootEntry = 16457 }; --Mitts of the Treemender
		{ itemID = 28522, groupID = 1, refLootEntry = 16457 }; --Shard of the Virtuous
		{ itemID = 28523, groupID = 1, refLootEntry = 16457 }; --Totem of Healing Rains
		{ itemID = 28524, groupID = 2, refLootEntry = 15687 }; --Emerald Ripper
		{ itemID = 28525, groupID = 1, refLootEntry = 15687 }; --Signet of Unshakable Faith
		{ itemID = 28528, groupID = 2, refLootEntry = 15687 }; --Moroes' Lucky Pocket Watch
		{ itemID = 28529, groupID = 2, refLootEntry = 15687 }; --Royal Cloak of Arathi Kings
		{ itemID = 28530, groupID = 1, refLootEntry = 15687 }; --Brooch of Unquenchable Fury
		{ itemID = 28545, groupID = 2, refLootEntry = 15687 }; --Edgewalker Longboots
		{ itemID = 28565, groupID = 1, refLootEntry = 15687 }; --Nethershard Girdle
		{ itemID = 28566, groupID = 2, refLootEntry = 15687 }; --Crimson Girdle of the Indomitable
		{ itemID = 28567, groupID = 1, refLootEntry = 15687 }; --Belt of Gale Force
		{ itemID = 28568, groupID = 1, refLootEntry = 15687 }; --Idol of the Avian Heart
		{ itemID = 28569, groupID = 1, refLootEntry = 15687 }; --Boots of Valiance
		{ itemID = 28570, groupID = 1, refLootEntry = 15687 }; --Shadow-Cloak of Dalaran
		{ itemID = 28585, groupID = 1, refLootEntry = 18168 }; --Ruby Slippers
		{ itemID = 28586, groupID = 1, refLootEntry = 18168 }; --Wicked Witch's Hat
		{ itemID = 28587, groupID = 1, refLootEntry = 18168 }; --Legacy
		{ itemID = 28588, groupID = 1, refLootEntry = 18168 }; --Blue Diamond Witchwand
		{ itemID = 28589, groupID = 2, refLootEntry = 18168 }; --Beastmaw Pauldrons
		{ itemID = 28590, groupID = 2, refLootEntry = 18168 }; --Ribbon of Sacrifice
		{ itemID = 28591, groupID = 2, refLootEntry = 18168 }; --Earthsoul Leggings
		{ itemID = 28592, groupID = 2, refLootEntry = 18168 }; --Libram of Souls Redeemed
		{ itemID = 28593, groupID = 2, refLootEntry = 18168 }; --Eternium Greathelm
		{ itemID = 28594, groupID = 2, refLootEntry = 18168 }; --Trial-Fire Trousers
		{ itemID = 28597, groupID = 2, refLootEntry = 17225 }; --Panzar'Thar Breastplate
		{ itemID = 28599, groupID = 2, refLootEntry = 17225 }; --Scaled Breastplate of Carnage
		{ itemID = 28600, groupID = 1, refLootEntry = 17225 }; --Stonebough Jerkin
		{ itemID = 28601, groupID = 2, refLootEntry = 17225 }; --Chestguard of the Conniver
		{ itemID = 28602, groupID = 1, refLootEntry = 17225 }; --Robe of the Elder Scribes
		{ itemID = 28603, groupID = 1, refLootEntry = 17225 }; --Talisman of Nightbane
		{ itemID = 28604, groupID = 1, refLootEntry = 17225 }; --Nightstaff of the Everliving
		{ itemID = 28606, groupID = 2, refLootEntry = 17225 }; --Shield of Impenetrable Darkness
		{ itemID = 28608, groupID = 2, refLootEntry = 17225 }; --Ironstriders of Urgency
		{ itemID = 28609, groupID = 1, refLootEntry = 17225 }; --Emberspur Talisman
		{ itemID = 28610, groupID = 2, refLootEntry = 17225 }; --Ferocious Swift-Kickers
		{ itemID = 28611, groupID = 1, refLootEntry = 17225 }; --Dragonheart Flameshield
		{ itemID = 28612, groupID = 2, refLootEntry = 15691 }; --Pauldrons of the Solace-Giver
		{ itemID = 28621, groupID = 2, refLootEntry = 15691 }; --Wrynn Dynasty Greaves
		{ itemID = 28631, groupID = 2, refLootEntry = 15691 }; --Dragon-Quake Shoulderguards
		{ itemID = 28633, groupID = 2, refLootEntry = 15691 }; --Staff of Infinite Mysteries
		{ itemID = 28647, groupID = 2, refLootEntry = 15691 }; --Forest Wind Shoulderpads
		{ itemID = 28649, groupID = 2, refLootEntry = 15691 }; --Garona's Signet Ring
		{ itemID = 28652, groupID = 1, refLootEntry = 15688 }; --Cincture of Will
		{ itemID = 28653, groupID = 1, refLootEntry = 15688 }; --Shadowvine Cloak of Infusion
		{ itemID = 28654, groupID = 1, refLootEntry = 15688 }; --Malefic Girdle
		{ itemID = 28655, groupID = 1, refLootEntry = 15688 }; --Cord of Nature's Sustenance
		{ itemID = 28656, groupID = 2, refLootEntry = 15688 }; --Girdle of the Prowler
		{ itemID = 28657, groupID = 2, refLootEntry = 15688 }; --Fool's Bane
		{ itemID = 28658, groupID = 2, refLootEntry = 15688 }; --Terestian's Stranglestaff
		{ itemID = 28659, groupID = 2, refLootEntry = 15688 }; --Xavian Stiletto
		{ itemID = 28660, groupID = 2, refLootEntry = 15688 }; --Gilded Thorium Cloak
		{ itemID = 28661, groupID = 1, refLootEntry = 15688 }; --Mender's Heart-Ring
		{ itemID = 28662, groupID = 1, refLootEntry = 15688 }; --Breastplate of the Lightbinder
		{ itemID = 28663, groupID = 1, refLootEntry = 16524 }; --Boots of the Incorrupt
		{ itemID = 28666, groupID = 1, refLootEntry = 16524 }; --Pauldrons of the Justice-Seeker
		{ itemID = 28669, groupID = 2, refLootEntry = 16524 }; --Rapscallion Boots
		{ itemID = 28670, groupID = 1, refLootEntry = 16524 }; --Boots of the Infernal Coven
		{ itemID = 28671, groupID = 2, refLootEntry = 16524 }; --Steelspine Faceguard
		{ itemID = 28672, groupID = 2, refLootEntry = 16524 }; --Drape of the Dark Reavers
		{ itemID = 28673, groupID = 1, refLootEntry = 16524 }; --Tirisfal Wand of Ascendancy
		{ itemID = 28674, groupID = 2, refLootEntry = 16524 }; --Saberclaw Talisman
		{ itemID = 28675, groupID = 2, refLootEntry = 16524 }; --Shermanar Great-Ring
		{ itemID = 28726, groupID = 1, refLootEntry = 16524 }; --Mantle of the Mind Flayer
		{ itemID = 28727, groupID = 1, refLootEntry = 16524 }; --Pendant of the Violet Eye
		{ itemID = 28728, groupID = 1, refLootEntry = 16524 }; --Aran's Soothing Sapphire
		{ itemID = 28729, groupID = 2, refLootEntry = 15689 }; --Spiteblade
		{ itemID = 28730, groupID = 2, refLootEntry = 15689 }; --Mithril Band of the Unscarred
		{ itemID = 28731, groupID = 1, refLootEntry = 15689 }; --Shining Chain of the Afterworld
		{ itemID = 28732, groupID = 2, refLootEntry = 15689 }; --Cowl of Defiance
		{ itemID = 28733, groupID = 1, refLootEntry = 15689 }; --Girdle of Truth
		{ itemID = 28734, groupID = 1, refLootEntry = 15689 }; --Jewel of Infinite Possibilities
		{ itemID = 28735, groupID = 1, refLootEntry = 15689 }; --Earthblood Chestguard
		{ itemID = 28740, groupID = 2, refLootEntry = 15689 }; --Rip-Flayer Leggings
		{ itemID = 28741, groupID = 2, refLootEntry = 15689 }; --Skulker's Greaves
		{ itemID = 28742, groupID = 1, refLootEntry = 15689 }; --Pantaloons of Repentance
		{ itemID = 28743, groupID = 2, refLootEntry = 15689 }; --Mantle of Abrahmis
		{ itemID = 28744, groupID = 1, refLootEntry = 15689 }; --Uni-Mind Headdress
		{ itemID = 28745, groupID = 2, refLootEntry = 16816 }; --Mithril Chain of Heroism
		{ itemID = 28746, groupID = 2, refLootEntry = 16816 }; --Fiend Slayer Boots
		{ itemID = 28747, groupID = 2, refLootEntry = 16816 }; --Battlescar Boots
		{ itemID = 28748, groupID = 1, refLootEntry = 16816 }; --Legplates of the Innocent
		{ itemID = 28749, groupID = 2, refLootEntry = 16816 }; --King's Defender
		{ itemID = 28750, groupID = 2, refLootEntry = 16816 }; --Girdle of Treachery
		{ itemID = 28751, groupID = 1, refLootEntry = 16816 }; --Heart-Flame Leggings
		{ itemID = 28752, groupID = 1, refLootEntry = 16816 }; --Forestlord Striders
		{ itemID = 28753, groupID = 1, refLootEntry = 16816 }; --Ring of Recurrence
		{ itemID = 28754, groupID = 1, refLootEntry = 16816 }; --Triptych Shield of the Ancients
		{ itemID = 28755, groupID = 2, refLootEntry = 16816 }; --Bladed Shoulderpads of the Merciless
		{ itemID = 28756, groupID = 1, refLootEntry = 16816 }; --Headdress of the High Potentate
		{ itemID = 28757, groupID = 2, refLootEntry = 15690 }; --Ring of a Thousand Marks
		{ itemID = 28762, groupID = 2, refLootEntry = 15690 }; --Adornment of Stolen Souls
		{ itemID = 28763, groupID = 2, refLootEntry = 15690 }; --Jade Ring of the Everliving
		{ itemID = 28764, groupID = 2, refLootEntry = 15690 }; --Farstrider Wildercloak
		{ itemID = 28765, groupID = 2, refLootEntry = 15690 }; --Stainless Cloak of the Pure Hearted
		{ itemID = 28766, groupID = 2, refLootEntry = 15690 }; --Ruby Drape of the Mysticant
		{ itemID = 28767, groupID = 3, refLootEntry = 15690 }; --The Decapitator
		{ itemID = 28768, groupID = 3, refLootEntry = 15690 }; --Malchazeen
		{ itemID = 28770, groupID = 3, refLootEntry = 15690 }; --Nathrezim Mindblade
		{ itemID = 28771, groupID = 3, refLootEntry = 15690 }; --Light's Justice
		{ itemID = 28772, groupID = 3, refLootEntry = 15690 }; --Sunfury Bow of the Phoenix
		{ itemID = 28773, groupID = 3, refLootEntry = 15690 }; --Gorehowl
		{ itemID = 28774, groupID = 4, refLootEntry = 17257 }; --Glaive of the Pit
		{ itemID = 28775, groupID = 3, refLootEntry = 17257 }; --Thundering Greathelm
		{ itemID = 28776, groupID = 3, refLootEntry = 17257 }; --Liar's Tongue Gloves
		{ itemID = 28777, groupID = 3, refLootEntry = 17257 }; --Cloak of the Pit Stalker
		{ itemID = 28778, groupID = 3, refLootEntry = 17257 }; --Terror Pit Girdle
		{ itemID = 28779, groupID = 3, refLootEntry = 17257 }; --Girdle of the Endless Pit
		{ itemID = 28780, groupID = 3, refLootEntry = 17257 }; --Soul-Eater's Handwraps
		{ itemID = 28781, groupID = 4, refLootEntry = 17257 }; --Karaborian Talisman
		{ itemID = 28782, groupID = 4, refLootEntry = 17257 }; --Crystalheart Pulse-Staff
		{ itemID = 28783, groupID = 4, refLootEntry = 17257 }; --Eredar Wand of Obliteration
		{ itemID = 28785, groupID = 1, refLootEntry = 15688 }; --The Lightning Capacitor
		{ itemID = 28789, groupID = 4, refLootEntry = 17257 }; --Eye of Magtheridon
		{ itemID = 28794, groupID = 3, refLootEntry = 19044 }; --Axe of the Gronn Lords
		{ itemID = 28795, groupID = 2, refLootEntry = 18831 }; --Bladespire Warbands
		{ itemID = 28796, groupID = 2, refLootEntry = 18831 }; --Malefic Mask of the Shadows
		{ itemID = 28797, groupID = 2, refLootEntry = 18831 }; --Brute Cloak of the Ogre-Magi
		{ itemID = 28799, groupID = 2, refLootEntry = 18831 }; --Belt of Divine Inspiration
		{ itemID = 28800, groupID = 2, refLootEntry = 18831 }; --Hammer of the Naaru
		{ itemID = 28801, groupID = 2, refLootEntry = 18831 }; --Maulgar's Warhelm
		{ itemID = 28802, groupID = 3, refLootEntry = 19044 }; --Bloodmaw Magus-Blade
		{ itemID = 28803, groupID = 2, refLootEntry = 19044 }; --Cowl of Nature's Breath
		{ itemID = 28804, groupID = 2, refLootEntry = 19044 }; --Collar of Cho'gall
		{ itemID = 28810, groupID = 2, refLootEntry = 19044 }; --Windshear Boots
		{ itemID = 28822, groupID = 2, refLootEntry = 19044 }; --Teeth of Gruul
		{ itemID = 28823, groupID = 3, refLootEntry = 19044 }; --Eye of Gruul
		{ itemID = 28824, groupID = 2, refLootEntry = 19044 }; --Gauntlets of Martial Perfection
		{ itemID = 28825, groupID = 3, refLootEntry = 19044 }; --Aldori Legacy Defender
		{ itemID = 28826, groupID = 3, refLootEntry = 19044 }; --Shuriken of Negation
		{ itemID = 28827, groupID = 2, refLootEntry = 19044 }; --Gauntlets of the Dragonslayer
		{ itemID = 28828, groupID = 2, refLootEntry = 19044 }; --Gronn-Stitched Girdle
		{ itemID = 28830, groupID = 3, refLootEntry = 19044 }; --Dragonspine Trophy
		{ itemID = 28972, groupID = 1, refLootEntry = 9237 }; --Flightblade Throwing Axe
		{ itemID = 2941, groupID = 1, refLootEntry = 1720 }; --Prison Shank
		{ itemID = 2942, groupID = 1, refLootEntry = 1720 }; --Iron Knuckles
		{ itemID = 29458, groupID = 4, refLootEntry = 17257 }; --Aegis of the Vindicator
		{ itemID = 29918, groupID = 1, refLootEntry = 19514 }; --Mindstorm Wristbands
		{ itemID = 29920, groupID = 1, refLootEntry = 19514 }; --Phoenix-Ring of Rebirth
		{ itemID = 29921, groupID = 1, refLootEntry = 19514 }; --Fire Crest Breastplate
		{ itemID = 29922, groupID = 1, refLootEntry = 19514 }; --Band of Al'ar
		{ itemID = 29923, groupID = 1, refLootEntry = 19514 }; --Talisman of the Sun King
		{ itemID = 29924, groupID = 2, refLootEntry = 19514 }; --Netherbane
		{ itemID = 29925, groupID = 2, refLootEntry = 19514 }; --Phoenix-Wing Cloak
		{ itemID = 29947, groupID = 2, refLootEntry = 19514 }; --Gloves of the Searing Grip
		{ itemID = 29948, groupID = 2, refLootEntry = 19514 }; --Claw of the Phoenix
		{ itemID = 29949, groupID = 2, refLootEntry = 19514 }; --Arcanite Steam-Pistol
		{ itemID = 29950, groupID = 2, refLootEntry = 18805 }; --Greaves of the Bloodwarder
		{ itemID = 29951, groupID = 2, refLootEntry = 18805 }; --Star-Strider Boots
		{ itemID = 29962, groupID = 2, refLootEntry = 18805 }; --Heartrazor
		{ itemID = 29965, groupID = 1, refLootEntry = 18805 }; --Girdle of the Righteous Path
		{ itemID = 29966, groupID = 2, refLootEntry = 18805 }; --Vambraces of Ending
		{ itemID = 29972, groupID = 1, refLootEntry = 18805 }; --Trousers of the Astromancer
		{ itemID = 29976, groupID = 1, refLootEntry = 18805 }; --Worldstorm Gauntlets
		{ itemID = 29977, groupID = 1, refLootEntry = 18805 }; --Star-Soul Breeches
		{ itemID = 29981, groupID = 1, refLootEntry = 18805 }; --Ethereum Life-Staff
		{ itemID = 29982, groupID = 1, refLootEntry = 18805 }; --Wand of the Forgotten Star
		{ itemID = 29983, groupID = 2, refLootEntry = 19516 }; --Fel-Steel Warhelm
		{ itemID = 29984, groupID = 2, refLootEntry = 19516 }; --Girdle of Zaetar
		{ itemID = 29985, groupID = 2, refLootEntry = 19516 }; --Void Reaver Greaves
		{ itemID = 29986, groupID = 2, refLootEntry = 19516 }; --Cowl of the Grand Engineer
		{ itemID = 29987, groupID = 4, refLootEntry = 19622 }; --Gauntlets of the Sun King
		{ itemID = 29988, groupID = 4, refLootEntry = 19622 }; --The Nexus Key
		{ itemID = 29989, groupID = 4, refLootEntry = 19622 }; --Sunshower Light Cloak
		{ itemID = 29990, groupID = 4, refLootEntry = 19622 }; --Crown of the Sun
		{ itemID = 29991, groupID = 4, refLootEntry = 19622 }; --Sunhawk Leggings
		{ itemID = 29992, groupID = 4, refLootEntry = 19622 }; --Royal Cloak of the Sunstriders
		{ itemID = 29993, groupID = 5, refLootEntry = 19622 }; --Twinblade of the Phoenix
		{ itemID = 29994, groupID = 5, refLootEntry = 19622 }; --Thalassian Wildercloak
		{ itemID = 29995, groupID = 5, refLootEntry = 19622 }; --Leggings of Murderous Intent
		{ itemID = 29996, groupID = 5, refLootEntry = 19622 }; --Rod of the Sun King
		{ itemID = 29997, groupID = 5, refLootEntry = 19622 }; --Band of the Ranger-General
		{ itemID = 29998, groupID = 5, refLootEntry = 19622 }; --Royal Gauntlets of Silvermoon
		{ itemID = 30008, groupID = 1, refLootEntry = 21213 }; --Pendant of the Lost Ages
		{ itemID = 30047, groupID = 1, refLootEntry = 21216 }; --Blackfathom Warbands
		{ itemID = 30048, groupID = 1, refLootEntry = 21216 }; --Brighthelm of Justice
		{ itemID = 30049, groupID = 1, refLootEntry = 21216 }; --Fathomstone
		{ itemID = 30050, groupID = 1, refLootEntry = 21216 }; --Boots of the Shifting Nightmare
		{ itemID = 30051, groupID = 1, refLootEntry = 21216 }; --Idol of the Crescent Goddess
		{ itemID = 30052, groupID = 2, refLootEntry = 21216 }; --Ring of Lethality
		{ itemID = 30053, groupID = 2, refLootEntry = 21216 }; --Pauldrons of the Wardancer
		{ itemID = 30054, groupID = 2, refLootEntry = 21216 }; --Ranger-General's Chestguard
		{ itemID = 30055, groupID = 2, refLootEntry = 21216 }; --Shoulderpads of the Stranger
		{ itemID = 30056, groupID = 1, refLootEntry = 21216 }; --Robe of Hateful Echoes
		{ itemID = 30057, groupID = 2, refLootEntry = 21217 }; --Bracers of Eradication
		{ itemID = 30058, groupID = 2, refLootEntry = 21217 }; --Mallet of the Tides
		{ itemID = 30059, groupID = 2, refLootEntry = 21217 }; --Choker of Animalistic Fury
		{ itemID = 30060, groupID = 2, refLootEntry = 21217 }; --Boots of Effortless Striking
		{ itemID = 30061, groupID = 2, refLootEntry = 21217 }; --Ancestral Ring of Conquest
		{ itemID = 30062, groupID = 1, refLootEntry = 21217 }; --Grove-Bands of Remulos
		{ itemID = 30063, groupID = 1, refLootEntry = 21217 }; --Libram of Absolute Truth
		{ itemID = 30064, groupID = 1, refLootEntry = 21217 }; --Cord of Screaming Terrors
		{ itemID = 30065, groupID = 1, refLootEntry = 21217 }; --Glowing Breastplate of Truth
		{ itemID = 30066, groupID = 1, refLootEntry = 21217 }; --Tempest-Strider Boots
		{ itemID = 30067, groupID = 1, refLootEntry = 21217 }; --Velvet Boots of the Guardian
		{ itemID = 30068, groupID = 2, refLootEntry = 21213 }; --Girdle of the Tidal Call
		{ itemID = 30075, groupID = 1, refLootEntry = 21213 }; --Gnarled Chestpiece of the Ancients
		{ itemID = 30079, groupID = 1, refLootEntry = 21213 }; --Illidari Shoulderpads
		{ itemID = 30080, groupID = 1, refLootEntry = 21213 }; --Luminescent Rod of the Naaru
		{ itemID = 30081, groupID = 2, refLootEntry = 21213 }; --Warboots of Obliteration
		{ itemID = 30082, groupID = 2, refLootEntry = 21213 }; --Talon of Azshara
		{ itemID = 30083, groupID = 2, refLootEntry = 21213 }; --Ring of Sundered Souls
		{ itemID = 30084, groupID = 1, refLootEntry = 21213 }; --Pauldrons of the Argent Sentinel
		{ itemID = 30085, groupID = 2, refLootEntry = 21213 }; --Mantle of the Tireless Tracker
		{ itemID = 30090, groupID = 2, refLootEntry = 21214 }; --World Breaker
		{ itemID = 30091, groupID = 2, refLootEntry = 21215 }; --True-Aim Stalker Bands
		{ itemID = 30092, groupID = 2, refLootEntry = 21215 }; --Orca-Hide Boots
		{ itemID = 30095, groupID = 2, refLootEntry = 21215 }; --Fang of the Leviathan
		{ itemID = 30096, groupID = 2, refLootEntry = 21215 }; --Girdle of the Invulnerable
		{ itemID = 30097, groupID = 2, refLootEntry = 21215 }; --Coral-Barbed Shoulderpads
		{ itemID = 30098, groupID = 2, refLootEntry = 21213 }; --Razor-Scale Battlecloak
		{ itemID = 30099, groupID = 2, refLootEntry = 21214 }; --Frayed Tether of the Drowned
		{ itemID = 30100, groupID = 2, refLootEntry = 21214 }; --Soul-Strider Boots
		{ itemID = 30101, groupID = 2, refLootEntry = 21214 }; --Bloodsea Brigand's Vest
		{ itemID = 30102, groupID = 4, refLootEntry = 21212 }; --Krakken-Heart Breastplate
		{ itemID = 30103, groupID = 4, refLootEntry = 21212 }; --Fang of Vashj
		{ itemID = 30104, groupID = 4, refLootEntry = 21212 }; --Cobra-Lash Boots
		{ itemID = 30105, groupID = 4, refLootEntry = 21212 }; --Serpent Spine Longbow
		{ itemID = 30106, groupID = 4, refLootEntry = 21212 }; --Belt of One-Hundred Deaths
		{ itemID = 30107, groupID = 3, refLootEntry = 21212 }; --Vestments of the Sea-Witch
		{ itemID = 30108, groupID = 3, refLootEntry = 21212 }; --Lightfathom Scepter
		{ itemID = 30109, groupID = 3, refLootEntry = 21212 }; --Ring of Endless Coils
		{ itemID = 30110, groupID = 3, refLootEntry = 21212 }; --Coral Band of the Revived
		{ itemID = 30111, groupID = 3, refLootEntry = 21212 }; --Runetotem's Mantle
		{ itemID = 30112, groupID = 3, refLootEntry = 21212 }; --Glorious Gauntlets of Crestfall
		{ itemID = 3041, groupID = 1, refLootEntry = 1221203 }; --"Mage-Eye" Blunderbuss
		{ itemID = 3042, groupID = 1, refLootEntry = 1221203 }; --BKP "Sparrow" Smallbore
		{ itemID = 30446, groupID = 2, refLootEntry = 18805 }; --Solarian's Sapphire
		{ itemID = 30447, groupID = 1, refLootEntry = 19514 }; --Tome of Fiery Redemption
		{ itemID = 30448, groupID = 2, refLootEntry = 19514 }; --Talon of Al'ar
		{ itemID = 30449, groupID = 2, refLootEntry = 18805 }; --Void Star Talisman
		{ itemID = 30450, groupID = 2, refLootEntry = 19516 }; --Warp-Spring Coil
		{ itemID = 30619, groupID = 2, refLootEntry = 19516 }; --Fel Reaver's Piston
		{ itemID = 30621, groupID = 3, refLootEntry = 21212 }; --Prism of Inner Calm
		{ itemID = 30626, groupID = 2, refLootEntry = 21214 }; --Sextant of Unstable Currents
		{ itemID = 30627, groupID = 2, refLootEntry = 21215 }; --Tsunami Talisman
		{ itemID = 30629, groupID = 2, refLootEntry = 21216 }; --Scarab of Displacement
		{ itemID = 30663, groupID = 2, refLootEntry = 21214 }; --Fathom-Brooch of the Tidewalker
		{ itemID = 30664, groupID = 2, refLootEntry = 21216 }; --Living Root of the Wildheart
		{ itemID = 30665, groupID = 1, refLootEntry = 21217 }; --Earring of Soulful Meditation
		{ itemID = 30705, groupID = 1, refLootEntry = 20923 }; --Spaulders of Slaughter
		{ itemID = 30707, groupID = 1, refLootEntry = 20923 }; --Nimble-foot Treads
		{ itemID = 30708, groupID = 1, refLootEntry = 20923 }; --Belt of Flowing Thought
		{ itemID = 30709, groupID = 1, refLootEntry = 20923 }; --Pantaloons of Flaming Wrath
		{ itemID = 30710, groupID = 1, refLootEntry = 20923 }; --Blood Guard's Necklace of Ferocity
		{ itemID = 30720, groupID = 1, refLootEntry = 21213 }; --Serpent-Coil Braid
		{ itemID = 3078, groupID = 1, refLootEntry = 4831 }; --Naga Heartpiercer
		{ itemID = 30861, groupID = 2, refLootEntry = 17767 }; --Furious Shackles
		{ itemID = 30862, groupID = 1, refLootEntry = 17767 }; --Blessed Adamantite Bracers
		{ itemID = 30863, groupID = 2, refLootEntry = 17767 }; --Deadly Cuffs
		{ itemID = 30864, groupID = 2, refLootEntry = 17767 }; --Bracers of the Pathfinder
		{ itemID = 30865, groupID = 2, refLootEntry = 17767 }; --Tracker's Blade
		{ itemID = 30866, groupID = 2, refLootEntry = 17767 }; --Blood-stained Pauldrons
		{ itemID = 30868, groupID = 1, refLootEntry = 17767 }; --Rejuvenating Bracers
		{ itemID = 30869, groupID = 1, refLootEntry = 17767 }; --Howling Wind Bracers
		{ itemID = 30870, groupID = 1, refLootEntry = 17767 }; --Cuffs of Devastation
		{ itemID = 30871, groupID = 1, refLootEntry = 17767 }; --Bracers of Martyrdom
		{ itemID = 30872, groupID = 1, refLootEntry = 17767 }; --Chronicle of Dark Secrets
		{ itemID = 30873, groupID = 2, refLootEntry = 17767 }; --Stillwater Boots
		{ itemID = 30874, groupID = 2, refLootEntry = 17808 }; --The Unbreakable Will
		{ itemID = 30878, groupID = 1, refLootEntry = 17808 }; --Glimmering Steel Mantle
		{ itemID = 30879, groupID = 2, refLootEntry = 17808 }; --Don Alejandro's Money Belt
		{ itemID = 30880, groupID = 2, refLootEntry = 17808 }; --Quickstrider Moccasins
		{ itemID = 30881, groupID = 2, refLootEntry = 17808 }; --Blade of Infamy
		{ itemID = 30882, groupID = 2, refLootEntry = 17808 }; --Bastion of Light
		{ itemID = 30883, groupID = 2, refLootEntry = 17808 }; --Pillar of Ferocity
		{ itemID = 30884, groupID = 1, refLootEntry = 17808 }; --Hatefury Mantle
		{ itemID = 30885, groupID = 1, refLootEntry = 17808 }; --Archbishop's Slippers
		{ itemID = 30886, groupID = 1, refLootEntry = 17808 }; --Enchanted Leather Sandals
		{ itemID = 30887, groupID = 1, refLootEntry = 17808 }; --Golden Links of Restoration
		{ itemID = 30888, groupID = 1, refLootEntry = 17808 }; --Anetheron's Noose
		{ itemID = 30889, groupID = 2, refLootEntry = 17888 }; --Kaz'rogal's Hardened Heart
		{ itemID = 30891, groupID = 2, refLootEntry = 17767 }; --Black Featherlight Boots
		{ itemID = 30892, groupID = 2, refLootEntry = 17842 }; --Beast-tamer's Shoulders
		{ itemID = 30893, groupID = 2, refLootEntry = 17888 }; --Sun-touched Chain Leggings
		{ itemID = 30894, groupID = 2, refLootEntry = 17888 }; --Blue Suede Shoes
		{ itemID = 30895, groupID = 2, refLootEntry = 17888 }; --Angelista's Sash
		{ itemID = 30896, groupID = 2, refLootEntry = 17842 }; --Glory of the Defender
		{ itemID = 30897, groupID = 2, refLootEntry = 17842 }; --Girdle of Hope
		{ itemID = 30898, groupID = 2, refLootEntry = 17888 }; --Shady Dealer's Pantaloons
		{ itemID = 30899, groupID = 2, refLootEntry = 17842 }; --Don Rodrigo's Poncho
		{ itemID = 30900, groupID = 2, refLootEntry = 17888 }; --Bow-stitched Leggings
		{ itemID = 30901, groupID = 2, refLootEntry = 17842 }; --Boundless Agony
		{ itemID = 30902, groupID = 4, refLootEntry = 17968 }; --Cataclysm's Edge
		{ itemID = 30903, groupID = 4, refLootEntry = 17968 }; --Legguards of Endless Rage
		{ itemID = 30904, groupID = 3, refLootEntry = 17968 }; --Savior's Grasp
		{ itemID = 30905, groupID = 4, refLootEntry = 17968 }; --Midnight Chestguard
		{ itemID = 30906, groupID = 4, refLootEntry = 17968 }; --Bristleblitz Striker
		{ itemID = 30907, groupID = 4, refLootEntry = 17968 }; --Mail of Fevered Pursuit
		{ itemID = 30908, groupID = 3, refLootEntry = 17968 }; --Apostle of Argus
		{ itemID = 30909, groupID = 3, refLootEntry = 17968 }; --Antonidas's Aegis of Rapt Concentration
		{ itemID = 30910, groupID = 3, refLootEntry = 17968 }; --Tempest of Chaos
		{ itemID = 30911, groupID = 3, refLootEntry = 17968 }; --Scepter of Purification
		{ itemID = 30912, groupID = 3, refLootEntry = 17968 }; --Leggings of Eternity
		{ itemID = 30913, groupID = 3, refLootEntry = 17968 }; --Robes of Rhonin
		{ itemID = 30914, groupID = 1, refLootEntry = 17767 }; --Belt of the Crescent Moon
		{ itemID = 30915, groupID = 2, refLootEntry = 17888 }; --Belt of Seething Fury
		{ itemID = 30916, groupID = 1, refLootEntry = 17808 }; --Leggings of Channeled Elements
		{ itemID = 30917, groupID = 2, refLootEntry = 17842 }; --Razorfury Mantle
		{ itemID = 30918, groupID = 2, refLootEntry = 17888 }; --Hammer of Atonement
		{ itemID = 30919, groupID = 2, refLootEntry = 17808 }; --Valestalker Girdle
		{ itemID = 31554, groupID = 1, refLootEntry = 22930 }; --Windchanneller's Tunic
		{ itemID = 31562, groupID = 1, refLootEntry = 22930 }; --Skystalker's Tunic
		{ itemID = 31570, groupID = 1, refLootEntry = 22930 }; --Mistshroud Tunic
		{ itemID = 31578, groupID = 1, refLootEntry = 22930 }; --Slatesteel Breastplate
		{ itemID = 3186, groupID = 1, refLootEntry = 1221203 }; --Viking Sword
		{ itemID = 3191, groupID = 1, refLootEntry = 4278 }; --Arced War Axe
		{ itemID = 31919, groupID = 2, refLootEntry = 22930 }; --Nexus-Prince's Ring of Balance
		{ itemID = 31920, groupID = 2, refLootEntry = 22930 }; --Shaffar's Band of Brutality
		{ itemID = 31921, groupID = 2, refLootEntry = 22930 }; --Yor's Collapsing Band
		{ itemID = 31922, groupID = 2, refLootEntry = 22930 }; --Ring of Conflict Survival
		{ itemID = 31923, groupID = 2, refLootEntry = 22930 }; --Band of the Crystalline Void
		{ itemID = 31924, groupID = 2, refLootEntry = 22930 }; --Yor's Revenge
		{ itemID = 3201, groupID = 1, refLootEntry = 1221203 }; --Barbarian War Axe
		{ itemID = 3206, groupID = 1, refLootEntry = 1221203 }; --Cavalier Two-hander
		{ itemID = 3210, groupID = 1, refLootEntry = 1221203 }; --Brutal War Axe
		{ itemID = 32232, groupID = 2, refLootEntry = 22887 }; --Eternium Shell Bracers
		{ itemID = 32234, groupID = 2, refLootEntry = 22887 }; --Fists of Mukoa
		{ itemID = 32235, groupID = 4, refLootEntry = 22917 }; --Cursed Vision of Sargeras
		{ itemID = 32236, groupID = 2, refLootEntry = 22887 }; --Rising Tide
		{ itemID = 32237, groupID = 1, refLootEntry = 22898 }; --The Maelstrom's Fury
		{ itemID = 32238, groupID = 1, refLootEntry = 22887 }; --Ring of Calming Waves
		{ itemID = 32239, groupID = 1, refLootEntry = 22887 }; --Slippers of the Seacaller
		{ itemID = 32240, groupID = 1, refLootEntry = 22887 }; --Guise of the Tidal Lurker
		{ itemID = 32241, groupID = 1, refLootEntry = 22887 }; --Helm of Soothing Currents
		{ itemID = 32242, groupID = 1, refLootEntry = 22887 }; --Boots of Oceanic Fury
		{ itemID = 32243, groupID = 1, refLootEntry = 22887 }; --Pearl Inlaid Boots
		{ itemID = 32245, groupID = 2, refLootEntry = 22887 }; --Tide-stomper's Greaves
		{ itemID = 32247, groupID = 1, refLootEntry = 22898 }; --Ring of Captured Storms
		{ itemID = 32248, groupID = 2, refLootEntry = 22887 }; --Halberd of Desolation
		{ itemID = 32250, groupID = 2, refLootEntry = 22898 }; --Pauldrons of Abyssal Fury
		{ itemID = 32251, groupID = 2, refLootEntry = 22898 }; --Wraps of Precise Flight
		{ itemID = 32252, groupID = 2, refLootEntry = 22898 }; --Nether Shadow Tunic
		{ itemID = 32253, groupID = 2, refLootEntry = 22898 }; --Legionkiller
		{ itemID = 32254, groupID = 2, refLootEntry = 22898 }; --The Brutalizer
		{ itemID = 32255, groupID = 1, refLootEntry = 22898 }; --Felstone Bulwark
		{ itemID = 32256, groupID = 1, refLootEntry = 22898 }; --Waistwrap of Infinity
		{ itemID = 32258, groupID = 1, refLootEntry = 22898 }; --Naturalist's Preserving Cinch
		{ itemID = 32259, groupID = 1, refLootEntry = 22898 }; --Bands of the Coming Storm
		{ itemID = 32260, groupID = 2, refLootEntry = 22898 }; --Choker of Endless Nightmares
		{ itemID = 32261, groupID = 2, refLootEntry = 22898 }; --Band of the Abyssal Lord
		{ itemID = 32262, groupID = 2, refLootEntry = 22898 }; --Syphon of the Nathrezim
		{ itemID = 32263, groupID = 2, refLootEntry = 22947 }; --Praetorian's Legguards
		{ itemID = 32264, groupID = 2, refLootEntry = 22841 }; --Shoulders of the Hidden Predator
		{ itemID = 32265, groupID = 2, refLootEntry = 22841 }; --Shadow-walker's Cord
		{ itemID = 32266, groupID = 2, refLootEntry = 22841 }; --Ring of Deceitful Intent
		{ itemID = 32267, groupID = 2, refLootEntry = 18805 }; --Boots of the Resilient
		{ itemID = 32268, groupID = 2, refLootEntry = 22841 }; --Myrmidon's Treads
		{ itemID = 32269, groupID = 2, refLootEntry = 22948 }; --Messenger of Fate
		{ itemID = 32270, groupID = 1, refLootEntry = 22841 }; --Focused Mana Bindings
		{ itemID = 32271, groupID = 1, refLootEntry = 22871 }; --Kilt of Immortal Nature
		{ itemID = 32273, groupID = 1, refLootEntry = 22841 }; --Amice of Brilliant Light
		{ itemID = 32275, groupID = 1, refLootEntry = 22841 }; --Spiritwalker Gauntlets
		{ itemID = 32276, groupID = 1, refLootEntry = 22841 }; --Flashfire Girdle
		{ itemID = 32278, groupID = 2, refLootEntry = 22841 }; --Grips of Silent Justice
		{ itemID = 32279, groupID = 2, refLootEntry = 22841 }; --The Seeker's Wristguards
		{ itemID = 3228, groupID = 1, refLootEntry = 1720 }; --Jimmied Handcuffs
		{ itemID = 32280, groupID = 2, refLootEntry = 22871 }; --Gauntlets of Enforcement
		{ itemID = 3230, groupID = 1, refLootEntry = 4274 }; --Black Wolf Bracers
		{ itemID = 32323, groupID = 2, refLootEntry = 22871 }; --Shadowmoon Destroyer's Drape
		{ itemID = 32324, groupID = 2, refLootEntry = 22871 }; --Insidious Bands
		{ itemID = 32325, groupID = 2, refLootEntry = 22871 }; --Rifle of the Stoic Guardian
		{ itemID = 32326, groupID = 2, refLootEntry = 22949 }; --Twisted Blades of Zarak
		{ itemID = 32327, groupID = 1, refLootEntry = 22871 }; --Robe of the Shadow Council
		{ itemID = 32328, groupID = 1, refLootEntry = 22871 }; --Botanist's Gloves of Growth
		{ itemID = 32329, groupID = 1, refLootEntry = 22871 }; --Cowl of Benevolence
		{ itemID = 32331, groupID = 2, refLootEntry = 22949 }; --Cloak of the Illidari Council
		{ itemID = 32332, groupID = 2, refLootEntry = 22856 }; --Torch of the Damned
		{ itemID = 32333, groupID = 2, refLootEntry = 22856 }; --Girdle of Stability
		{ itemID = 32334, groupID = 2, refLootEntry = 22948 }; --Vest of Mounting Assault
		{ itemID = 32335, groupID = 2, refLootEntry = 22948 }; --Unstoppable Aggressor's Ring
		{ itemID = 32336, groupID = 4, refLootEntry = 22917 }; --Black Bow of the Betrayer
		{ itemID = 32337, groupID = 1, refLootEntry = 22948 }; --Shroud of Forgiveness
		{ itemID = 32338, groupID = 1, refLootEntry = 22948 }; --Blood-cursed Shoulderpads
		{ itemID = 32339, groupID = 1, refLootEntry = 22948 }; --Belt of Primal Majesty
		{ itemID = 32340, groupID = 1, refLootEntry = 22948 }; --Garments of Temperance
		{ itemID = 32341, groupID = 2, refLootEntry = 22948 }; --Leggings of Divine Retribution
		{ itemID = 32342, groupID = 2, refLootEntry = 22948 }; --Girdle of Mighty Resolve
		{ itemID = 32343, groupID = 1, refLootEntry = 22948 }; --Wand of Prismatic Focus
		{ itemID = 32344, groupID = 1, refLootEntry = 22948 }; --Staff of Immaculate Recovery
		{ itemID = 32345, groupID = 2, refLootEntry = 22856 }; --Dreadboots of the Legion
		{ itemID = 32346, groupID = 2, refLootEntry = 22856 }; --Boneweave Girdle
		{ itemID = 32347, groupID = 2, refLootEntry = 22856 }; --Grips of Damnation
		{ itemID = 32348, groupID = 2, refLootEntry = 22948 }; --Soul Cleaver
		{ itemID = 32349, groupID = 1, refLootEntry = 22871 }; --Translucent Spellthread Necklace
		{ itemID = 32350, groupID = 1, refLootEntry = 22856 }; --Touch of Inspiration
		{ itemID = 32351, groupID = 1, refLootEntry = 22856 }; --Elunite Empowered Bracers
		{ itemID = 32352, groupID = 1, refLootEntry = 22856 }; --Naturewarden's Treads
		{ itemID = 32353, groupID = 1, refLootEntry = 22856 }; --Gloves of Unfailing Faith
		{ itemID = 32354, groupID = 1, refLootEntry = 22856 }; --Crown of Empowered Fate
		{ itemID = 32361, groupID = 1, refLootEntry = 22841 }; --Blind-Seers Icon
		{ itemID = 32362, groupID = 2, refLootEntry = 22856 }; --Pendant of Titans
		{ itemID = 32363, groupID = 3, refLootEntry = 22917 }; --Naaru-Blessed Life Rod
		{ itemID = 32365, groupID = 2, refLootEntry = 22947 }; --Heartshatter Breastplate
		{ itemID = 32366, groupID = 2, refLootEntry = 22947 }; --Shadowmaster's Boots
		{ itemID = 32367, groupID = 2, refLootEntry = 22947 }; --Leggings of Devastation
		{ itemID = 32369, groupID = 2, refLootEntry = 22947 }; --Blade of Savagery
		{ itemID = 32370, groupID = 2, refLootEntry = 22947 }; --Nadina's Pendant of Purity
		{ itemID = 32373, groupID = 2, refLootEntry = 22949 }; --Helm of the Illidari Shatterer
		{ itemID = 32374, groupID = 3, refLootEntry = 22917 }; --Zhar'doom, Greatstaff of the Devourer
		{ itemID = 32375, groupID = 4, refLootEntry = 22917 }; --Bulwark of Azzinoth
		{ itemID = 32376, groupID = 2, refLootEntry = 22949 }; --Forest Prowler's Helm
		{ itemID = 32377, groupID = 2, refLootEntry = 22887 }; --Mantle of Darkness
		{ itemID = 32471, groupID = 4, refLootEntry = 22917 }; --Shard of Azzinoth
		{ itemID = 32483, groupID = 3, refLootEntry = 22917 }; --The Skull of Gul'dan
		{ itemID = 32496, groupID = 3, refLootEntry = 22917 }; --Memento of Tyrande
		{ itemID = 32497, groupID = 4, refLootEntry = 22917 }; --Stormrage Signet Ring
		{ itemID = 32500, groupID = 3, refLootEntry = 22917 }; --Crystal Spire of Karabor
		{ itemID = 32501, groupID = 4, refLootEntry = 22917 }; --Shadowmoon Insignia
		{ itemID = 32505, groupID = 4, refLootEntry = 22917 }; --Madness of the Betrayer
		{ itemID = 32507, groupID = 2, refLootEntry = 22871 }; --Gorefiend
		{ itemID = 32510, groupID = 2, refLootEntry = 22871 }; --Softstep Boots of Tracking
		{ itemID = 32512, groupID = 1, refLootEntry = 22871 }; --Girdle of Lordaeron's Fallen
		{ itemID = 32513, groupID = 1, refLootEntry = 22841 }; --Wristbands of Divine Influence
		{ itemID = 32515, groupID = 2, refLootEntry = 19516 }; --Wristguards of Determination
		{ itemID = 32516, groupID = 1, refLootEntry = 21216 }; --Wraps of Purification
		{ itemID = 32517, groupID = 1, refLootEntry = 22856 }; --The Wavemender's Mantle
		{ itemID = 32518, groupID = 2, refLootEntry = 22949 }; --Veil of Turning Leaves
		{ itemID = 32519, groupID = 2, refLootEntry = 22949 }; --Belt of Divine Guidance
		{ itemID = 32521, groupID = 4, refLootEntry = 22917 }; --Faceplate of the Impenetrable
		{ itemID = 32524, groupID = 3, refLootEntry = 22917 }; --Shroud of the Highborne
		{ itemID = 32525, groupID = 3, refLootEntry = 22917 }; --Cowl of the Illidari High Lord
		{ itemID = 32769, groupID = 1, refLootEntry = 23035 }; --Belt of the Raven Lord
		{ itemID = 32778, groupID = 1, refLootEntry = 23035 }; --Boots of Righteous Fortitude
		{ itemID = 32779, groupID = 1, refLootEntry = 23035 }; --Band of Frigid Elements
		{ itemID = 32780, groupID = 1, refLootEntry = 23035 }; --The Boomstick
		{ itemID = 32781, groupID = 1, refLootEntry = 23035 }; --Talon of Anzu
		{ itemID = 32944, groupID = 2, refLootEntry = 19514 }; --Talon of the Phoenix
		{ itemID = 33054, groupID = 1, refLootEntry = 21217 }; --The Seal of Danzalar
		{ itemID = 33055, groupID = 2, refLootEntry = 21216 }; --Band of Vile Aggression
		{ itemID = 33058, groupID = 1, refLootEntry = 21213 }; --Band of the Vigilant
		{ itemID = 33191, groupID = 2, refLootEntry = 23576 }; --Jungle Stompers
		{ itemID = 33203, groupID = 18, refLootEntry = 23576 }; --Robes of Heavenly Purpose
		{ itemID = 33206, groupID = 2, refLootEntry = 23576 }; --Pauldrons of Primal Fury
		{ itemID = 33211, groupID = 2, refLootEntry = 23576 }; --Bladeangel's Money Belt
		{ itemID = 33214, groupID = 2, refLootEntry = 23574 }; --Akil'zon's Talonblade
		{ itemID = 33215, groupID = 2, refLootEntry = 23574 }; --Bloodstained Elven Battlevest
		{ itemID = 33216, groupID = 18, refLootEntry = 23574 }; --Chestguard of Hidden Purpose
		{ itemID = 33281, groupID = 18, refLootEntry = 23574 }; --Brooch of Nature's Mercy
		{ itemID = 33283, groupID = 18, refLootEntry = 23574 }; --Amani Punisher
		{ itemID = 33285, groupID = 18, refLootEntry = 23576 }; --Fury of the Ursine
		{ itemID = 33286, groupID = 18, refLootEntry = 23574 }; --Mojo-mender's Mask
		{ itemID = 33293, groupID = 18, refLootEntry = 23574 }; --Signet of Ancient Magics
		{ itemID = 33297, groupID = 2, refLootEntry = 23577 }; --The Savage's Choker
		{ itemID = 33298, groupID = 2, refLootEntry = 24239 }; --Prowler's Strikeblade
		{ itemID = 33299, groupID = 18, refLootEntry = 23577 }; --Spaulders of the Advocate
		{ itemID = 33300, groupID = 2, refLootEntry = 23577 }; --Shoulderpads of Dancing Blades
		{ itemID = 33303, groupID = 2, refLootEntry = 23577 }; --Skullshatter Warboots
		{ itemID = 33317, groupID = 18, refLootEntry = 23577 }; --Robe of Departed Spirits
		{ itemID = 33322, groupID = 18, refLootEntry = 23577 }; --Shimmer-pelt Vest
		{ itemID = 33326, groupID = 2, refLootEntry = 23578 }; --Bulwark of the Amani Empire
		{ itemID = 33327, groupID = 18, refLootEntry = 23576 }; --Mask of Introspection
		{ itemID = 33328, groupID = 2, refLootEntry = 23578 }; --Arrow-fall Chestguard
		{ itemID = 33329, groupID = 2, refLootEntry = 23578 }; --Shadowtooth Trollskin Cuirass
		{ itemID = 33332, groupID = 18, refLootEntry = 23578 }; --Enamelled Disc of Mojo
		{ itemID = 33354, groupID = 18, refLootEntry = 23578 }; --Wub's Cursed Hexblade
		{ itemID = 33356, groupID = 18, refLootEntry = 23578 }; --Helm of Natural Regeneration
		{ itemID = 33357, groupID = 18, refLootEntry = 23578 }; --Footpads of Madness
		{ itemID = 3336, groupID = 1, refLootEntry = 1221203 }; --Flesh Piercer
		{ itemID = 33388, groupID = 2, refLootEntry = 24239 }; --Heartless
		{ itemID = 33389, groupID = 2, refLootEntry = 24239 }; --Dagger of Bad Mojo
		{ itemID = 33421, groupID = 2, refLootEntry = 24239 }; --Battleworn Tuskguard
		{ itemID = 33432, groupID = 2, refLootEntry = 24239 }; --Coif of the Jungle Stalker
		{ itemID = 33446, groupID = 18, refLootEntry = 24239 }; --Girdle of Stromgarde's Hope
		{ itemID = 33453, groupID = 18, refLootEntry = 24239 }; --Hood of Hexing
		{ itemID = 33463, groupID = 18, refLootEntry = 24239 }; --Hood of the Third Eye
		{ itemID = 33464, groupID = 18, refLootEntry = 24239 }; --Hex Lord's Voodoo Pauldrons
		{ itemID = 33465, groupID = 2, refLootEntry = 23577 }; --Staff of Primal Fury
		{ itemID = 33466, groupID = 1, refLootEntry = 23863 }; --Loop of Cursed Bones
		{ itemID = 33467, groupID = 3, refLootEntry = 23863 }; --Blade of Twisted Visions
		{ itemID = 33468, groupID = 3, refLootEntry = 23863 }; --Dark Blessing
		{ itemID = 33469, groupID = 1, refLootEntry = 23863 }; --Hauberk of the Empire's Champion
		{ itemID = 33471, groupID = 1, refLootEntry = 23863 }; --Two-toed Sandals
		{ itemID = 33473, groupID = 2, refLootEntry = 23863 }; --Chestguard of the Warlord
		{ itemID = 33474, groupID = 3, refLootEntry = 23863 }; --Ancient Amani Longbow
		{ itemID = 33476, groupID = 3, refLootEntry = 23863 }; --Cleaver of the Unforgiving
		{ itemID = 33478, groupID = 3, refLootEntry = 23863 }; --Jin'rohk, The Great Apocalypse
		{ itemID = 33479, groupID = 2, refLootEntry = 23863 }; --Grimgrin Faceguard
		{ itemID = 33480, groupID = 18, refLootEntry = 23576 }; --Cord of Braided Troll Hair
		{ itemID = 33481, groupID = 2, refLootEntry = 23574 }; --Pauldrons of Stone Resolve
		{ itemID = 33483, groupID = 18, refLootEntry = 23577 }; --Life-step Belt
		{ itemID = 33489, groupID = 18, refLootEntry = 23578 }; --Mantle of Ill Intent
		{ itemID = 33490, groupID = 18, refLootEntry = 23578 }; --Staff of Dark Mending
		{ itemID = 33491, groupID = 2, refLootEntry = 23578 }; --Tuskbreaker
		{ itemID = 33493, groupID = 2, refLootEntry = 23577 }; --Umbral Shiv
		{ itemID = 33494, groupID = 18, refLootEntry = 24239 }; --Amani Divining Staff
		{ itemID = 33495, groupID = 2, refLootEntry = 23576 }; --Rage
		{ itemID = 33496, groupID = 2, refLootEntry = 23576 }; --Signet of Primal Wrath
		{ itemID = 33497, groupID = 18, refLootEntry = 23577 }; --Mana Attuned Band
		{ itemID = 33498, groupID = 18, refLootEntry = 23576 }; --Signet of the Quiet Forest
		{ itemID = 33499, groupID = 2, refLootEntry = 23578 }; --Signet of the Last Defender
		{ itemID = 33500, groupID = 2, refLootEntry = 23574 }; --Signet of Eternal Life
		{ itemID = 33533, groupID = 18, refLootEntry = 23577 }; --Avalanche Leggings
		{ itemID = 33590, groupID = 2, refLootEntry = 23574 }; --Cloak of Fiends
		{ itemID = 33591, groupID = 18, refLootEntry = 23574 }; --Shadowcaster's Drape
		{ itemID = 33592, groupID = 18, refLootEntry = 24239 }; --Cloak of Ancient Rituals
		{ itemID = 33640, groupID = 2, refLootEntry = 23576 }; --Fury
		{ itemID = 33805, groupID = 2, refLootEntry = 23578 }; --Shadowhunter's Treads
		{ itemID = 33828, groupID = 18, refLootEntry = 24239 }; --Tome of Diabolic Remedy
		{ itemID = 33829, groupID = 1, refLootEntry = 23863 }; --Hex Shrunken Head
		{ itemID = 33830, groupID = 2, refLootEntry = 23863 }; --Ancient Aqir Artifact
		{ itemID = 33831, groupID = 2, refLootEntry = 23863 }; --Berserker's Call
		{ itemID = 33971, groupID = 18, refLootEntry = 23576 }; --Elunite Imbued Leggings
		{ itemID = 33979, groupID = 2, refLootEntry = 23577 }; --Sightless Head
		{ itemID = 34029, groupID = 2, refLootEntry = 24239 }; --Tiny Voodoo Mask
		{ itemID = 34071, groupID = 3, refLootEntry = 23863 }; --Seething Hate
		{ itemID = 3413, groupID = 1, refLootEntry = 12902 }; --Doomspike
		{ itemID = 3414, groupID = 1, refLootEntry = 12876 }; --Crested Scepter
		{ itemID = 3415, groupID = 1, refLootEntry = 12876 }; --Staff of the Friar
		{ itemID = 3416, groupID = 1, refLootEntry = 12876 }; --Martyr's Chain
		{ itemID = 3417, groupID = 1, refLootEntry = 12902 }; --Onyx Claymore
		{ itemID = 34176, groupID = 2, refLootEntry = 24882 }; --Reign of Misery
		{ itemID = 34177, groupID = 2, refLootEntry = 24882 }; --Clutch of Demise
		{ itemID = 34178, groupID = 2, refLootEntry = 24882 }; --Collar of the Pit Lord
		{ itemID = 34179, groupID = 2, refLootEntry = 24882 }; --Heart of the Pit
		{ itemID = 34180, groupID = 2, refLootEntry = 24882 }; --Felfury Legplates
		{ itemID = 34181, groupID = 2, refLootEntry = 24882 }; --Leggings of Calamity
		{ itemID = 34182, groupID = 2, refLootEntry = 25038 }; --Grand Magister's Staff of Torrents
		{ itemID = 34184, groupID = 2, refLootEntry = 25038 }; --Brooch of the Highborne
		{ itemID = 34185, groupID = 2, refLootEntry = 25038 }; --Sword Breaker's Bulwark
		{ itemID = 34186, groupID = 2, refLootEntry = 25038 }; --Chain Links of the Tumultuous Storm
		{ itemID = 34188, groupID = 2, refLootEntry = 25038 }; --Leggings of the Immortal Night
		{ itemID = 34189, groupID = 2, refLootEntry = 25166 }; --Band of Ruinous Delight
		{ itemID = 34190, groupID = 2, refLootEntry = 25166 }; --Crimson Paragon's Cover
		{ itemID = 34192, groupID = 2, refLootEntry = 25166 }; --Pauldrons of Perseverance
		{ itemID = 34193, groupID = 1, refLootEntry = 25166 }; --Spaulders of the Thalassian Savior
		{ itemID = 34194, groupID = 2, refLootEntry = 25166 }; --Mantle of the Golden Forest
		{ itemID = 34195, groupID = 2, refLootEntry = 25166 }; --Shoulderpads of Vehemence
		{ itemID = 34196, groupID = 2, refLootEntry = 25166 }; --Golden Bow of Quel'Thalas
		{ itemID = 34197, groupID = 2, refLootEntry = 25166 }; --Shiv of Exsanguination
		{ itemID = 34198, groupID = 2, refLootEntry = 25166 }; --Stanchion of Primal Instinct
		{ itemID = 34199, groupID = 1, refLootEntry = 25166 }; --Archon's Gavel
		{ itemID = 34202, groupID = 1, refLootEntry = 25166 }; --Shawl of Wonderment
		{ itemID = 34203, groupID = 2, refLootEntry = 25166 }; --Grip of Mannoroth
		{ itemID = 34204, groupID = 1, refLootEntry = 25166 }; --Amulet of Unfettered Magics
		{ itemID = 34205, groupID = 1, refLootEntry = 25166 }; --Shroud of Redeemed Souls
		{ itemID = 34206, groupID = 1, refLootEntry = 25166 }; --Book of Highborne Hymns
		{ itemID = 34208, groupID = 1, refLootEntry = 25166 }; --Equilibrium Epaulets
		{ itemID = 34209, groupID = 1, refLootEntry = 25166 }; --Spaulders of Reclamation
		{ itemID = 34210, groupID = 1, refLootEntry = 25166 }; --Amice of the Convoker
		{ itemID = 34227, groupID = 0, refLootEntry = 0 }; --Deadman's Hand
		{ itemID = 34241, groupID = 5, refLootEntry = 25315 }; --Cloak of Unforgivable Sin
		{ itemID = 34242, groupID = 5, refLootEntry = 25315 }; --Tattered Cape of Antonidas
		{ itemID = 34243, groupID = 5, refLootEntry = 25315 }; --Helm of Burning Righteousness
		{ itemID = 34244, groupID = 5, refLootEntry = 25315 }; --Duplicitous Guise
		{ itemID = 34245, groupID = 5, refLootEntry = 25315 }; --Cover of Ursol the Wise
		{ itemID = 34247, groupID = 5, refLootEntry = 25315 }; --Apolyon, the Soul-Render
		{ itemID = 3432, groupID = 1, refLootEntry = 1663 }; --Unnecessary Big Shanker
		{ itemID = 34329, groupID = 5, refLootEntry = 25315 }; --Crux of the Apocalypse
		{ itemID = 34331, groupID = 5, refLootEntry = 25315 }; --Hand of the Deceiver
		{ itemID = 34332, groupID = 5, refLootEntry = 25315 }; --Cowl of Gul'dan
		{ itemID = 34333, groupID = 5, refLootEntry = 25315 }; --Coif of Alleria
		{ itemID = 34335, groupID = 5, refLootEntry = 25315 }; --Hammer of Sanctification
		{ itemID = 34336, groupID = 5, refLootEntry = 25315 }; --Sunflare
		{ itemID = 34337, groupID = 5, refLootEntry = 25315 }; --Golden Staff of the Sin'dorei
		{ itemID = 34339, groupID = 5, refLootEntry = 25315 }; --Cowl of Light's Purity
		{ itemID = 34340, groupID = 5, refLootEntry = 25315 }; --Dark Conjuror's Collar
		{ itemID = 34341, groupID = 5, refLootEntry = 25315 }; --Borderland Paingrips
		{ itemID = 34342, groupID = 5, refLootEntry = 25315 }; --Handguards of the Dawn
		{ itemID = 34343, groupID = 5, refLootEntry = 25315 }; --Thalassian Ranger Gauntlets
		{ itemID = 34344, groupID = 5, refLootEntry = 25315 }; --Handguards of Defiled Worlds
		{ itemID = 34345, groupID = 5, refLootEntry = 25315 }; --Crown of Anasterian
		{ itemID = 34352, groupID = 2, refLootEntry = 25038 }; --Borderland Fortress Grips
		{ itemID = 34402, groupID = 5, refLootEntry = 25315 }; --Shroud of Chieftain Ner'zhul
		{ itemID = 34601, groupID = 1, refLootEntry = 24723 }; --Shoulderplates of Everlasting Pain
		{ itemID = 34602, groupID = 1, refLootEntry = 24723 }; --Eversong Cuffs
		{ itemID = 34603, groupID = 1, refLootEntry = 24723 }; --Distracting Blades
		{ itemID = 34604, groupID = 1, refLootEntry = 24723 }; --Jaded Crystal Dagger
		{ itemID = 34605, groupID = 1, refLootEntry = 24744 }; --Breastplate of Fierce Survival
		{ itemID = 34606, groupID = 1, refLootEntry = 24744 }; --Edge of Oppression
		{ itemID = 34607, groupID = 1, refLootEntry = 24744 }; --Fel-tinged Mantle
		{ itemID = 34608, groupID = 1, refLootEntry = 24744 }; --Rod of the Blazing Light
		{ itemID = 34609, groupID = 2, refLootEntry = 24664 }; --Quickening Blade of the Prince
		{ itemID = 34610, groupID = 1, refLootEntry = 24664 }; --Scarlet Sin'dorei Robes
		{ itemID = 34611, groupID = 2, refLootEntry = 24664 }; --Cudgel of Consecration
		{ itemID = 34612, groupID = 1, refLootEntry = 24664 }; --Greaves of the Penitent Knight
		{ itemID = 34613, groupID = 1, refLootEntry = 24664 }; --Shoulderpads of the Silvermoon Retainer
		{ itemID = 34614, groupID = 1, refLootEntry = 24664 }; --Tunic of the Ranger Lord
		{ itemID = 34615, groupID = 1, refLootEntry = 24664 }; --Netherforce Chestplate
		{ itemID = 34616, groupID = 2, refLootEntry = 24664 }; --Breeching Comet
		{ itemID = 34625, groupID = 2, refLootEntry = 24664 }; --Kharmaa's Ring of Fate
		{ itemID = 34700, groupID = 1, refLootEntry = 24560 }; --Gauntlets of Divine Blessings
		{ itemID = 34703, groupID = 1, refLootEntry = 24744 }; --Latro's Dancing Blade
		{ itemID = 34789, groupID = 1, refLootEntry = 24560 }; --Bracers of Slaughter
		{ itemID = 34791, groupID = 1, refLootEntry = 24560 }; --Gauntlets of the Tranquil Waves
		{ itemID = 34792, groupID = 1, refLootEntry = 24560 }; --Cloak of the Betrayed
		{ itemID = 34799, groupID = 1, refLootEntry = 24723 }; --Hauberk of the War Bringer
		{ itemID = 34807, groupID = 1, refLootEntry = 24664 }; --Sunstrider Warboots
		{ itemID = 34808, groupID = 1, refLootEntry = 24723 }; --Gloves of Arcane Acuity
		{ itemID = 34809, groupID = 1, refLootEntry = 24664 }; --Sunrage Treads
		{ itemID = 34810, groupID = 1, refLootEntry = 24744 }; --Cloak of Blade Turning
		{ itemID = 35282, groupID = 2, refLootEntry = 25837 }; --Sin'dorei Band of Dominance
		{ itemID = 35283, groupID = 2, refLootEntry = 25837 }; --Sin'dorei Band of Salvation
		{ itemID = 35284, groupID = 2, refLootEntry = 25837 }; --Sin'dorei Band of Triumph
		{ itemID = 35290, groupID = 2, refLootEntry = 25837 }; --Sin'dorei Pendant of Conquest
		{ itemID = 35291, groupID = 2, refLootEntry = 25837 }; --Sin'dorei Pendant of Salvation
		{ itemID = 35292, groupID = 2, refLootEntry = 25837 }; --Sin'dorei Pendant of Triumph
		{ itemID = 3595662, groupID = 1, refLootEntry = 3595662 }; --Dwarven Crossbow
		{ itemID = 3748, groupID = 1, refLootEntry = 3927 }; --Feline Mantle
		{ itemID = 3851, groupID = 1, refLootEntry = 1221203 }; --Solid Iron Maul
		{ itemID = 38634, groupID = 2, refLootEntry = 24239 }; --Troll Dice
		{ itemID = 388912, groupID = 2, refLootEntry = 36296 }; --Forever-Lovely Rose
		{ itemID = 392168, groupID = 2, refLootEntry = 36296 }; --Vile Fumigator's Mask
		{ itemID = 397120, groupID = 1, refLootEntry = 36296 }; --Winking Eye of Love
		{ itemID = 397132, groupID = 1, refLootEntry = 36296 }; --Heartbreak Charm
		{ itemID = 397144, groupID = 1, refLootEntry = 36296 }; --Shard of Pirouetting Happiness
		{ itemID = 397156, groupID = 1, refLootEntry = 36296 }; --Sweet Perfume Broach
		{ itemID = 397168, groupID = 1, refLootEntry = 36296 }; --Choker of the Pure Heart
		{ itemID = 406004, groupID = 1, refLootEntry = 6229 }; --Calibrated Puncher
		{ itemID = 406010, groupID = 0, refLootEntry = 0 }; --Sneeds Sawed-Off
		{ itemID = 406011, groupID = 0, refLootEntry = 0 }; --Torque Shot
		{ itemID = 406012, groupID = 0, refLootEntry = 0 }; --T.H.U.N.D.R
		{ itemID = 406013, groupID = 0, refLootEntry = 0 }; --Trollbane's Hammerlock
		{ itemID = 406014, groupID = 0, refLootEntry = 0 }; --Wig's Banger
		{ itemID = 406015, groupID = 0, refLootEntry = 0 }; --Barovian Peacemaker
		{ itemID = 406016, groupID = 0, refLootEntry = 0 }; --Blackrock Mortar
		{ itemID = 4474, groupID = 1, refLootEntry = 1221203 }; --Ravenwood Bow
		{ itemID = 5108, groupID = 0, refLootEntry = 0 }; --Dark Iron Leather
		{ itemID = 5187, groupID = 1, refLootEntry = 644 }; --Rhahk'Zor's Hammer
		{ itemID = 5191, groupID = 1, refLootEntry = 639 }; --Cruel Barb
		{ itemID = 5192, groupID = 1, refLootEntry = 646 }; --Thief's Blade
		{ itemID = 5193, groupID = 1, refLootEntry = 639 }; --Cape of the Brotherhood
		{ itemID = 5194, groupID = 1, refLootEntry = 642 }; --Taskmaster Axe
		{ itemID = 5195, groupID = 1, refLootEntry = 642 }; --Gold-flecked Gloves
		{ itemID = 5196, groupID = 1, refLootEntry = 646 }; --Smite's Reaver
		{ itemID = 5197, groupID = 1, refLootEntry = 645 }; --Cookie's Tenderizer
		{ itemID = 5198, groupID = 1, refLootEntry = 645 }; --Cookie's Stirring Rod
		{ itemID = 5199, groupID = 1, refLootEntry = 1763 }; --Smelting Pants
		{ itemID = 5200, groupID = 1, refLootEntry = 647 }; --Impaling Harpoon
		{ itemID = 5201, groupID = 1, refLootEntry = 647 }; --Emberstone Staff
		{ itemID = 5202, groupID = 1, refLootEntry = 639 }; --Corsair's Overshirt
		{ itemID = 5214, groupID = 1, refLootEntry = 1221203 }; --Wand of Eventide
		{ itemID = 5243, groupID = 1, refLootEntry = 5912 }; --Firebelcher
		{ itemID = 5254, groupID = 1, refLootEntry = 3914 }; --Rugged Spaulders
		{ itemID = 5266, groupID = 1, refLootEntry = 24028 }; --Eye of Adaegus
		{ itemID = 5305, groupID = 1, refLootEntry = 1696 }; --Dreadful Blade
		{ itemID = 5404, groupID = 1, refLootEntry = 3671 }; --Serpent's Shoulders
		{ itemID = 5443, groupID = 1, refLootEntry = 3586 }; --Gold-plated Buckler
		{ itemID = 5444, groupID = 1, refLootEntry = 3586 }; --Miner's Cape
		{ itemID = 5516, groupID = 0, refLootEntry = 0 }; --Threshadon Fang
		{ itemID = 559300, groupID = 1, refLootEntry = 162703 }; --Withered Faith Cowl
		{ itemID = 559301, groupID = 1, refLootEntry = 162716 }; --Mantle of Caged Light
		{ itemID = 559302, groupID = 1, refLootEntry = 162711 }; --Hollow Glow Robe
		{ itemID = 559305, groupID = 1, refLootEntry = 162704 }; --Ancient Sandals
		{ itemID = 559306, groupID = 1, refLootEntry = 162711 }; --Faithful Servant's Wristwraps
		{ itemID = 559307, groupID = 1, refLootEntry = 162704 }; --Venomsoaked Handwraps
		{ itemID = 559308, groupID = 1, refLootEntry = 162715 }; --Hood of Remorse
		{ itemID = 559309, groupID = 1, refLootEntry = 162703 }; --Shoulders of the Mad Gleam
		{ itemID = 559310, groupID = 1, refLootEntry = 162715 }; --Broken Thought Jerkin
		{ itemID = 559311, groupID = 1, refLootEntry = 162700 }; --Dark Veil Girdle
		{ itemID = 559312, groupID = 1, refLootEntry = 162704 }; --Voodoo Edge Britches
		{ itemID = 559313, groupID = 1, refLootEntry = 162716 }; --Boots of the Rotting Throne
		{ itemID = 559314, groupID = 1, refLootEntry = 162711 }; --Bindings of the Broken Promise
		{ itemID = 559315, groupID = 1, refLootEntry = 162703 }; --Gloves of the Nocturnal Breath
		{ itemID = 559316, groupID = 1, refLootEntry = 162715 }; --Helm of Eternal Penance
		{ itemID = 559317, groupID = 1, refLootEntry = 162703 }; --Spaulders of the Whispering Flame
		{ itemID = 559318, groupID = 1, refLootEntry = 162716 }; --Vest of the Broken Horizon
		{ itemID = 559319, groupID = 1, refLootEntry = 162700 }; --Slumbering Voice Belt
		{ itemID = 559320, groupID = 1, refLootEntry = 162700 }; --Legguards of Spiritual Hunger
		{ itemID = 559321, groupID = 1, refLootEntry = 162711 }; --Greaves of the Funeral Judgement
		{ itemID = 559322, groupID = 1, refLootEntry = 162704 }; --Bracers of Reincarnation
		{ itemID = 559323, groupID = 1, refLootEntry = 162715 }; --Gauntlets of the Avid Spawn
		{ itemID = 559324, groupID = 1, refLootEntry = 162704 }; --Helm of Divine Silence
		{ itemID = 559325, groupID = 1, refLootEntry = 162716 }; --Hollow Ore Pauldrons
		{ itemID = 559326, groupID = 1, refLootEntry = 162704 }; --Breastplate of the Broken Echo
		{ itemID = 559327, groupID = 1, refLootEntry = 162715 }; --Belt of the Earthly Echo
		{ itemID = 559328, groupID = 1, refLootEntry = 162703 }; --Consumed Spirit Legplates
		{ itemID = 559329, groupID = 1, refLootEntry = 162711 }; --Sabatons of the Lost Dominion
		{ itemID = 559330, groupID = 1, refLootEntry = 162716 }; --Vambraces of Innate Hunger
		{ itemID = 559331, groupID = 1, refLootEntry = 162716 }; --Devourer's Gauntlets
		{ itemID = 559332, groupID = 2, refLootEntry = 162703 }; --Signet of Burning Shadows
		{ itemID = 559333, groupID = 2, refLootEntry = 162716 }; --Band of the Three Voices
		{ itemID = 559334, groupID = 2, refLootEntry = 162711 }; --Ring of Tribal Whispers
		{ itemID = 559335, groupID = 2, refLootEntry = 162715 }; --Loop of the Ancient Pact
		{ itemID = 559336, groupID = 2, refLootEntry = 162704 }; --Seal of Silent Temptation
		{ itemID = 559337, groupID = 2, refLootEntry = 162715 }; --Amulet of the Inner Dusk
		{ itemID = 559338, groupID = 2, refLootEntry = 162704 }; --Gorget of the Broken Veil
		{ itemID = 559339, groupID = 2, refLootEntry = 162700 }; --Pendant of Shattered Prayers
		{ itemID = 559340, groupID = 2, refLootEntry = 162716 }; --Chain of Silent Hunger
		{ itemID = 559341, groupID = 2, refLootEntry = 162703 }; --Talisman of the Inner Echo
		{ itemID = 559342, groupID = 2, refLootEntry = 162703 }; --Cape of the Azure Whisper
		{ itemID = 559343, groupID = 2, refLootEntry = 162716 }; --Mutated Heart Cloak
		{ itemID = 559344, groupID = 2, refLootEntry = 162711 }; --Cloak of the Other Side
		{ itemID = 559345, groupID = 2, refLootEntry = 162715 }; --Cape of the Last Feast
		{ itemID = 559346, groupID = 2, refLootEntry = 162700 }; --Cloak of the Last Confessor
		{ itemID = 559347, groupID = 1, refLootEntry = 162704 }; --Deceiver's Sigh
		{ itemID = 559349, groupID = 1, refLootEntry = 162700 }; --Mace of the Dauntless Jailer
		{ itemID = 559350, groupID = 1, refLootEntry = 162703 }; --Skull of the Former King
		{ itemID = 559351, groupID = 1, refLootEntry = 162703 }; --Excascepter of King Darkveil
		{ itemID = 559352, groupID = 1, refLootEntry = 162704 }; --Dark Instinct
		{ itemID = 559354, groupID = 1, refLootEntry = 162711 }; --Glaive of the Bat God
		{ itemID = 559355, groupID = 1, refLootEntry = 162715 }; --Edict of the Sinister King
		{ itemID = 559356, groupID = 1, refLootEntry = 162711 }; --Emblem of the Spider Goddess
		{ itemID = 559357, groupID = 1, refLootEntry = 162716 }; --Fang of the Chimeric Embryo
		{ itemID = 559360, groupID = 2, refLootEntry = 162704 }; --Ancient Sigh Cloak
		{ itemID = 559361, groupID = 2, refLootEntry = 162700 }; --Forgotten Sin Ring
		{ itemID = 559362, groupID = 2, refLootEntry = 162711 }; --Offered Flame Necklace
		{ itemID = 559365, groupID = 1, refLootEntry = 162716 }; --Cutter of the Spawn
		{ itemID = 5616, groupID = 0, refLootEntry = 0 }; --Gutwrencher
		{ itemID = 5970, groupID = 1, refLootEntry = 3673 }; --Serpent Gloves
		{ itemID = 6220, groupID = 1, refLootEntry = 4275 }; --Meteor Shard
		{ itemID = 6226, groupID = 1, refLootEntry = 3886 }; --Bloody Apron
		{ itemID = 6314, groupID = 1, refLootEntry = 3927 }; --Wolfmaster Cape
		{ itemID = 6318, groupID = 1, refLootEntry = 4279 }; --Odo's Ley Staff
		{ itemID = 6319, groupID = 1, refLootEntry = 4279 }; --Girdle of the Blindwatcher
		{ itemID = 6320, groupID = 1, refLootEntry = 4278 }; --Commander's Crest
		{ itemID = 6321, groupID = 1, refLootEntry = 3887 }; --Silverlaine's Family Seal
		{ itemID = 6323, groupID = 1, refLootEntry = 3887 }; --Baron's Scepter
		{ itemID = 6324, groupID = 1, refLootEntry = 4275 }; --Robes of Arugal
		{ itemID = 6340, groupID = 1, refLootEntry = 4274 }; --Fenrus' Hide
		{ itemID = 6341, groupID = 1, refLootEntry = 3914 }; --Eerie Stable Lantern
		{ itemID = 6392, groupID = 1, refLootEntry = 4275 }; --Belt of Arugal
		{ itemID = 6440, groupID = 0, refLootEntry = 0 }; --Brainlash
		{ itemID = 6447, groupID = 1, refLootEntry = 3653 }; --Worn Turtle Shell Shield
		{ itemID = 6448, groupID = 1, refLootEntry = 3674 }; --Tail Spike
		{ itemID = 6449, groupID = 1, refLootEntry = 3674 }; --Glowing Lizardscale Cloak
		{ itemID = 6459, groupID = 1, refLootEntry = 3673 }; --Savage Trodders
		{ itemID = 6460, groupID = 1, refLootEntry = 3669 }; --Cobrahn's Grasp
		{ itemID = 6461, groupID = 1, refLootEntry = 3654 }; --Slime-encrusted Pads
		{ itemID = 6463, groupID = 1, refLootEntry = 3654 }; --Deep Fathom Ring
		{ itemID = 6465, groupID = 1, refLootEntry = 3669 }; --Robe of the Moccasin
		{ itemID = 6469, groupID = 1, refLootEntry = 3673 }; --Venomstrike
		{ itemID = 6472, groupID = 1, refLootEntry = 3670 }; --Stinging Viper
		{ itemID = 6473, groupID = 1, refLootEntry = 3670 }; --Armor of the Fang
		{ itemID = 6627, groupID = 1, refLootEntry = 3654 }; --Mutant Scale Breastplate
		{ itemID = 6629, groupID = 1, refLootEntry = 5775 }; --Sporid Cape
		{ itemID = 6630, groupID = 1, refLootEntry = 5775 }; --Seedcloud Buckler
		{ itemID = 6631, groupID = 1, refLootEntry = 5775 }; --Living Root
		{ itemID = 6632, groupID = 1, refLootEntry = 5912 }; --Feyscale Cloak
		{ itemID = 6633, groupID = 1, refLootEntry = 3886 }; --Butcher's Slicer
		{ itemID = 6641, groupID = 1, refLootEntry = 3872 }; --Haunting Blade
		{ itemID = 6642, groupID = 1, refLootEntry = 3872 }; --Phantom Armor
		{ itemID = 6681, groupID = 1, refLootEntry = 4424 }; --Thornspike
		{ itemID = 6682, groupID = 1, refLootEntry = 4428 }; --Death Speaker Robes
		{ itemID = 6685, groupID = 1, refLootEntry = 4428 }; --Death Speaker Mantle
		{ itemID = 6686, groupID = 1, refLootEntry = 4420 }; --Tusken Helm
		{ itemID = 6687, groupID = 1, refLootEntry = 4420 }; --Corpsemaker
		{ itemID = 6688, groupID = 1, refLootEntry = 4842 }; --Whisperwind Headdress
		{ itemID = 6689, groupID = 1, refLootEntry = 4842 }; --Wind Spirit Staff
		{ itemID = 6690, groupID = 1, refLootEntry = 4422 }; --Ferine Leggings
		{ itemID = 6691, groupID = 1, refLootEntry = 4422 }; --Swinetusk Shank
		{ itemID = 6692, groupID = 1, refLootEntry = 4421 }; --Pronged Reaver
		{ itemID = 6693, groupID = 1, refLootEntry = 4421 }; --Agamaggan's Clutch
		{ itemID = 6694, groupID = 1, refLootEntry = 4421 }; --Heart of Agamaggan
		{ itemID = 6695, groupID = 1, refLootEntry = 4425 }; --Stygian Bone Amulet
		{ itemID = 6696, groupID = 1, refLootEntry = 4425 }; --Nightstalker Bow
		{ itemID = 6697, groupID = 1, refLootEntry = 4425 }; --Batwing Mantle
		{ itemID = 68194, groupID = 1, refLootEntry = 11517 }; --Oggleflint's Inspirer
		{ itemID = 6901, groupID = 1, refLootEntry = 4830 }; --Glowing Thresher Cape
		{ itemID = 6902, groupID = 1, refLootEntry = 4830 }; --Bands of Serra'kis
		{ itemID = 6903, groupID = 1, refLootEntry = 4832 }; --Gaze Dreamer Pants
		{ itemID = 6904, groupID = 1, refLootEntry = 4830 }; --Bite of Serra'kis
		{ itemID = 6905, groupID = 1, refLootEntry = 6243 }; --Reef Axe
		{ itemID = 6906, groupID = 1, refLootEntry = 6243 }; --Algae Fists
		{ itemID = 6907, groupID = 1, refLootEntry = 4887 }; --Tortoise Armor
		{ itemID = 6908, groupID = 1, refLootEntry = 4887 }; --Ghamoo-ra's Bind
		{ itemID = 6909, groupID = 1, refLootEntry = 4829 }; --Strike of the Hydra
		{ itemID = 6910, groupID = 1, refLootEntry = 4829 }; --Leech Pants
		{ itemID = 6911, groupID = 1, refLootEntry = 4829 }; --Moss Cinch
		{ itemID = 7230, groupID = 1, refLootEntry = 646 }; --Smite's Mighty Hammer
		{ itemID = 753, groupID = 1, refLootEntry = 1221203 }; --Dragonmaw Shortsword
		{ itemID = 756, groupID = 1, refLootEntry = 1221203 }; --Tunnel Pick
		{ itemID = 7682, groupID = 0, refLootEntry = 0 }; --Torturing Poker
		{ itemID = 7683, groupID = 0, refLootEntry = 0 }; --Bloody Brass Knuckles
		{ itemID = 7684, groupID = 0, refLootEntry = 0 }; --Bloodmage Mantle
		{ itemID = 7685, groupID = 0, refLootEntry = 0 }; --Orb of the Forgotten Seer
		{ itemID = 7686, groupID = 0, refLootEntry = 0 }; --Ironspine's Eye
		{ itemID = 7687, groupID = 0, refLootEntry = 0 }; --Ironspine's Fist
		{ itemID = 7688, groupID = 0, refLootEntry = 0 }; --Ironspine's Ribcage
		{ itemID = 7689, groupID = 0, refLootEntry = 0 }; --Morbid Dawn
		{ itemID = 7690, groupID = 0, refLootEntry = 0 }; --Ebon Vise
		{ itemID = 7691, groupID = 0, refLootEntry = 0 }; --Embalmed Shroud
		{ itemID = 7708, groupID = 0, refLootEntry = 0 }; --Necrotic Wand
		{ itemID = 7709, groupID = 0, refLootEntry = 0 }; --Blighted Leggings
		{ itemID = 7710, groupID = 0, refLootEntry = 0 }; --Loksey's Training Stick
		{ itemID = 7711, groupID = 0, refLootEntry = 0 }; --Robe of Doan
		{ itemID = 7712, groupID = 0, refLootEntry = 0 }; --Mantle of Doan
		{ itemID = 7713, groupID = 0, refLootEntry = 0 }; --Illusionary Rod
		{ itemID = 7714, groupID = 0, refLootEntry = 0 }; --Hypnotic Blade
		{ itemID = 7717, groupID = 0, refLootEntry = 0 }; --Ravager
		{ itemID = 7718, groupID = 0, refLootEntry = 0 }; --Herod's Shoulder
		{ itemID = 7719, groupID = 0, refLootEntry = 0 }; --Raging Berserker's Helm
		{ itemID = 7723, groupID = 0, refLootEntry = 0 }; --Mograine's Might
		{ itemID = 7724, groupID = 0, refLootEntry = 0 }; --Gauntlets of Divinity
		{ itemID = 7726, groupID = 0, refLootEntry = 0 }; --Aegis of the Scarlet Commander
		{ itemID = 7731, groupID = 0, refLootEntry = 0 }; --Ghostshard Talisman
		{ itemID = 7756, groupID = 0, refLootEntry = 0 }; --Dog Training Gloves
		{ itemID = 809, groupID = 1, refLootEntry = 24084 }; --Bloodrazor
		{ itemID = 8184, groupID = 1, refLootEntry = 1221203 }; --Firestarter
		{ itemID = 83101, groupID = 0, refLootEntry = 0 }; --Phoenix Pants
		{ itemID = 83109, groupID = 0, refLootEntry = 0 }; --Phoenix Gloves
		{ itemID = 83110, groupID = 0, refLootEntry = 0 }; --Bright Belt
		{ itemID = 83119, groupID = 0, refLootEntry = 0 }; --Sanguine Sandals
		{ itemID = 83243, groupID = 0, refLootEntry = 0 }; --Sanguine Cuffs
		{ itemID = 83639, groupID = 0, refLootEntry = 0 }; --Polished Walking Staff
		{ itemID = 84650, groupID = 0, refLootEntry = 0 }; --Elegant Silver Ring
		{ itemID = 84651, groupID = 0, refLootEntry = 0 }; --Thick Bronze Necklace
		{ itemID = 85499, groupID = 0, refLootEntry = 0 }; --Pearl-encrusted Spear
		{ itemID = 865, groupID = 1, refLootEntry = 1221203 }; --Leaden Mace
		{ itemID = 867, groupID = 1, refLootEntry = 24080 }; --Gloves of Holy Might
		{ itemID = 868, groupID = 1, refLootEntry = 24080 }; --Ardent Custodian
		{ itemID = 871, groupID = 1, refLootEntry = 24082 }; --Flurry Axe
		{ itemID = 872, groupID = 1, refLootEntry = 644 }; --Rockslicer
		{ itemID = 888, groupID = 1, refLootEntry = 4831 }; --Naga Battle Gloves
		{ itemID = 9243, groupID = 0, refLootEntry = 0 }; --Shriveled Heart
		{ itemID = 9379, groupID = 0, refLootEntry = 0 }; --Sang'thraze the Deflector
		{ itemID = 9384, groupID = 0, refLootEntry = 0 }; --Stonevault Shiv
		{ itemID = 9387, groupID = 0, refLootEntry = 0 }; --Revelosh's Boots
		{ itemID = 9388, groupID = 0, refLootEntry = 0 }; --Revelosh's Armguards
		{ itemID = 9389, groupID = 0, refLootEntry = 0 }; --Revelosh's Spaulders
		{ itemID = 9390, groupID = 0, refLootEntry = 0 }; --Revelosh's Gloves
		{ itemID = 9393, groupID = 0, refLootEntry = 0 }; --Beacon of Hope
		{ itemID = 9396, groupID = 0, refLootEntry = 0 }; --Legguards of the Vault
		{ itemID = 940, groupID = 1, refLootEntry = 24082 }; --Robes of Insight
		{ itemID = 9400, groupID = 0, refLootEntry = 0 }; --Baelog's Shortbow
		{ itemID = 9401, groupID = 0, refLootEntry = 0 }; --Nordic Longshank
		{ itemID = 9407, groupID = 0, refLootEntry = 0 }; --Stoneweaver Leggings
		{ itemID = 9408, groupID = 0, refLootEntry = 0 }; --Ironshod Bludgeon
		{ itemID = 9409, groupID = 0, refLootEntry = 0 }; --Ironaya's Bracers
		{ itemID = 9410, groupID = 0, refLootEntry = 0 }; --Cragfists
		{ itemID = 9411, groupID = 0, refLootEntry = 0 }; --Rockshard Pauldrons
		{ itemID = 9412, groupID = 0, refLootEntry = 0 }; --Galgann's Fireblaster
		{ itemID = 9413, groupID = 0, refLootEntry = 0 }; --The Rockpounder
		{ itemID = 9414, groupID = 0, refLootEntry = 0 }; --Oilskin Leggings
		{ itemID = 9415, groupID = 0, refLootEntry = 0 }; --Grimlok's Tribal Vestments
		{ itemID = 9416, groupID = 0, refLootEntry = 0 }; --Grimlok's Charge
		{ itemID = 9418, groupID = 0, refLootEntry = 0 }; --Stoneslayer
		{ itemID = 9419, groupID = 0, refLootEntry = 0 }; --Galgann's Firehammer
		{ itemID = 9420, groupID = 0, refLootEntry = 0 }; --Adventurer's Pith Helmet
		{ itemID = 9424, groupID = 0, refLootEntry = 0 }; --Ginn-su Sword
		{ itemID = 9425, groupID = 0, refLootEntry = 0 }; --Pendulum of Doom
		{ itemID = 9426, groupID = 0, refLootEntry = 0 }; --Monolithic Bow
		{ itemID = 9427, groupID = 0, refLootEntry = 0 }; --Stonevault Bonebreaker
		{ itemID = 9428, groupID = 0, refLootEntry = 0 }; --Unearthed Bands
		{ itemID = 943, groupID = 1, refLootEntry = 24083 }; --Warden Staff
		{ itemID = 9431, groupID = 0, refLootEntry = 0 }; --Papal Fez
		{ itemID = 9444, groupID = 1, refLootEntry = 6231 }; --Techbot CPU Shell
		{ itemID = 9445, groupID = 1, refLootEntry = 7361 }; --Grubbis Paws
		{ itemID = 9446, groupID = 1, refLootEntry = 6235 }; --Electrocutioner Leg
		{ itemID = 9447, groupID = 1, refLootEntry = 6235 }; --Electrocutioner Lagnut
		{ itemID = 9448, groupID = 1, refLootEntry = 6235 }; --Spidertank Oilrag
		{ itemID = 9449, groupID = 1, refLootEntry = 6229 }; --Manual Crowd Pummeler
		{ itemID = 9450, groupID = 1, refLootEntry = 6229 }; --Gnomebot Operating Boots
		{ itemID = 9452, groupID = 1, refLootEntry = 7079 }; --Hydrocane
		{ itemID = 9453, groupID = 1, refLootEntry = 7079 }; --Toxic Revenger
		{ itemID = 9454, groupID = 1, refLootEntry = 7079 }; --Acidic Walkers
		{ itemID = 9455, groupID = 1, refLootEntry = 6228 }; --Emissary Cuffs
		{ itemID = 9456, groupID = 1, refLootEntry = 6228 }; --Glass Shooter
		{ itemID = 9457, groupID = 1, refLootEntry = 6228 }; --Royal Diplomatic Scepter
		{ itemID = 9458, groupID = 1, refLootEntry = 7800 }; --Thermaplugg's Central Core
		{ itemID = 9459, groupID = 1, refLootEntry = 7800 }; --Thermaplugg's Left Arm
		{ itemID = 9461, groupID = 1, refLootEntry = 7800 }; --Charged Gear
		{ itemID = 9467, groupID = 0, refLootEntry = 0 }; --Gahz'rilla Fang
		{ itemID = 9469, groupID = 0, refLootEntry = 0 }; --Gahz'rilla Scale Armor
		{ itemID = 9470, groupID = 0, refLootEntry = 0 }; --Bad Mojo Mask
		{ itemID = 9473, groupID = 0, refLootEntry = 0 }; --Jinxed Hoodoo Skin
		{ itemID = 9474, groupID = 0, refLootEntry = 0 }; --Jinxed Hoodoo Kilt
		{ itemID = 9475, groupID = 0, refLootEntry = 0 }; --Diabolic Skiver
		{ itemID = 9476, groupID = 0, refLootEntry = 0 }; --Big Bad Pauldrons
		{ itemID = 9477, groupID = 0, refLootEntry = 0 }; --The Chief's Enforcer
		{ itemID = 9478, groupID = 0, refLootEntry = 0 }; --Ripsaw
		{ itemID = 9479, groupID = 0, refLootEntry = 0 }; --Embrace of the Lycan
		{ itemID = 9480, groupID = 0, refLootEntry = 0 }; --Eyegouger
		{ itemID = 9481, groupID = 0, refLootEntry = 0 }; --The Minotaur
		{ itemID = 9482, groupID = 0, refLootEntry = 0 }; --Witch Doctor's Cane
		{ itemID = 9483, groupID = 0, refLootEntry = 0 }; --Flaming Incinerator
		{ itemID = 9489, groupID = 1, refLootEntry = 1221203 }; --Gyromatic Icemaker
		{ itemID = 9492, groupID = 1, refLootEntry = 7800 }; --Electromagnetic Gigaflux Reactivator
		{ itemID = 9511, groupID = 0, refLootEntry = 0 }; --Bloodletter Scalpel
		{ itemID = 9512, groupID = 0, refLootEntry = 0 }; --Blackmetal Cape
		{ itemID = 9639, groupID = 0, refLootEntry = 0 }; --The Hand of Antu'sul
		{ itemID = 9640, groupID = 0, refLootEntry = 0 }; --Vice Grips
		{ itemID = 9641, groupID = 0, refLootEntry = 0 }; --Lifeblood Amulet
		{ itemID = 99222, groupID = 1, refLootEntry = 11261 }; --Deathbone Wristguards
	})
end