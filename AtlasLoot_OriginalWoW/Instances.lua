local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
AtlasLoot:AddItemData({
------------------------
--- Dungeons & Raids ---
------------------------
------------
--- Keys ---
------------
	["OldKeys"] = {
		{
			{ icon = "INV_Box_01", name = "Keys" },
			{ itemID = 7146 }, --The Scarlet Key
			{ itemID = 12382 }, --Key to the City
			{ itemID = 6893 }, --Workshop Key
			{ itemID = 11000 }, --Shadowforge Key
			{ itemID = 11140 }, --Prison Cell Key
			{ itemID = 18249 }, --Crescent Key
			{ itemID = 13704 }, --Skeleton Key
			{ icon = "INV_Box_01", name = "Dungeon Set 2" },
			{ itemID = 22057 }, --Brazier of Invocation
			{ itemID = 21986 }, --Banner of Provocation
			{ icon = "INV_Box_01", name = "Misc" },
			{ itemID = 19931 }, --Gurubashi Mojo Madness
			{ itemID = 13523 }, --Blood of Innocents
			{ itemID = 18746 }, --Divination Scryer
			{ itemID = 18663 }, --J'eevee's Jar
			{ itemID = 19974 }, --Mudskunk Lure
			{ itemID = 7733 }, --Staff of Prehistoria
			{ itemID = 10818 }, --Yeh'kinya's Scroll
		},
	},
-----------------------------------------
--- Ahn'Qiraj: The Ruins of Ahn'Qiraj ---
-----------------------------------------
	["RuinsofAQ"] = {
		{
			{ itemID = 22217 }, --Kurinnaxx's Venom Sac
			{ itemID = 1506051, sourcePage = {"AQ20SetsBACK","Token"} }, --Ceremonial Qiraji Drape
		},
		{
			{ itemID = 21495 }, --Legplates of the Qiraji Command
			{ icon = "INV_Box_01", name = "Rajaxx's Captains" },
			{ itemID = 21810 }, --Treads of the Wandering Nomad
			{ itemID = 21809 }, --Fury of the Forgotten Swarm
			{ itemID = 21806 }, --Gavel of Qiraji Authority
		},
		{
			{ itemID = 1506051, sourcePage = {"AQ20SetsBACK","Token"} }, --Ceremonial Qiraji Drape
			{ icon = "INV_Box_01", name = "Lieutenant General Andorov" },
			{ itemID = 22221 }, --Plans: Obsidian Mail Tunic
			{ itemID = 22219 }, --Plans: Jagged Obsidian Shield
		},
		{
			{ itemID = 1506053, sourcePage = {"AQ20SetsNECK","Token"} }, --Ceremonial Qiraji Pendant
			{ itemID = 22220, contentsPreview = {22194} }, --Plans: Black Grasp of the Destroyer
		},
		{
			{ itemID = 1506052, sourcePage = {"AQ20SetsFINGER","Token"} }, --Ceremonial Qiraji Ring
		},
		{

			{ itemID = 1506052, sourcePage = {"AQ20SetsFINGER","Token"} }, --Ceremonial Qiraji Ring
		},
		{
			{ itemID = 21220 }, --Head of Ossirian the Unscarred
			{ itemID = 21504 }, --Charm of the Shifting Sands
			{ itemID = 21507 }, --Amulet of the Shifting Sands
			{ itemID = 21505 }, --Choker of the Shifting Sands
			{ itemID = 21506 }, --Pendant of the Shifting Sands
			{ itemID = 1506053, sourcePage = {"AQ20SetsNECK","Token"} }, --Ceremonial Qiraji Pendant
		},
		{
			{ itemID = 20873 }, --Alabaster Idol
			{ itemID = 20869 }, --Amber Idol
			{ itemID = 20866 }, --Azure Idol
			{ itemID = 20870 }, --Jasper Idol
			{ itemID = 20868 }, --Lambent Idol
			{ itemID = 20871 }, --Obsidian Idol
			{ itemID = 20867 }, --Onyx Idol
			{ itemID = 20872 }, --Vermillion Idol
			{ itemID = 22202 }, --Small Obsidian Shard
			{ itemID = 22203 }, --Large Obsidian Shard
			{ itemID = 21404 }, --Dagger of Veiled Shadows
			{ itemID = 21413 }, --Blade of Vaulted Secrets
			{ itemID = 21395 }, --Blade of Eternal Justice
			{ itemID = 20864 }, --Bone Scarab
			{ itemID = 20861 }, --Bronze Scarab
			{ itemID = 20863 }, --Clay Scarab
			{ itemID = 20862 }, --Crystal Scarab
			{ itemID = 20859 }, --Gold Scarab
			{ itemID = 20865 }, --Ivory Scarab
			{ itemID = 20860 }, --Silver Scarab
			{ itemID = 20858 }, --Stone Scarab
			{ itemID = 21761 }, --Scarab Coffer Key
			{ itemID = 21407 }, --Mace of Unending Life
			{ itemID = 21410 }, --Gavel of Infinite Wisdom
			{ itemID = 21398 }, --Hammer of the Gathering Storm
			{ itemID = 21401 }, --Scythe of the Unseen Path
			{ itemID = 21392 }, --Sickle of Unyielding Strength
		},
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
------------------------------------------
--- Ahn'Qiraj: The Temple of Ahn'Qiraj ---
------------------------------------------
	["TempleofAQ"] = {
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 22222 }, --Plans: Thick Obsidian Breastplate
			{ itemID = 22196 }, --Thick Obsidian Breastplate
			{ itemID = 20928, sourcePage = {"TTWO.5FEET","Token"} }, --Bindings of the Lost Nomad
		},
		{
			{ itemID = 21697 }, --Cape of the Trinity
			{ itemID = 21694 }, --Ternary Mantle
			{ itemID = 21696 }, --Robes of the Triumvirate
			{ itemID = 21693 }, --Guise of the Devourer
			{ itemID = 21692 }, --Triad Girdle
			{ itemID = 21695 }, --Angelista's Touch
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 21680 }, --Vest of Swift Execution
			{ itemID = 21603 }, --Wand of Qiraji Nobility
			{ itemID = 21681 }, --Ring of the Devoured
			{ itemID = 21685 }, --Petrified Scarab
			{ itemID = 21689 }, --Gloves of Ebru
			{ itemID = 21691 }, --Ooze-ridden Gauntlets
			{ itemID = 21688 }, --Boots of the Fallen Hero
			{ itemID = 21690 }, --Angelista's Charm
			{ itemID = 21686 }, --Mantle of Phrenic Power
			{ itemID = 21682 }, --Bile-Covered Gauntlets
			{ itemID = 21684 }, --Mantle of the Desert's Fury
			{ itemID = 21683 }, --Mantle of the Desert Crusade
			{ itemID = 21687 }, --Ukko's Ring of Darkness
			{ itemID = 20928, sourcePage = {"TTWO.5FEET","Token"} }, --Bindings of the Lost Nomad
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 20932, sourcePage = {"TTWO.5SHOULDER","Token"} }, --Spaulders of the Imperial Guard
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 20932, sourcePage = {"TTWO.5SHOULDER","Token"} }, --Spaulders of the Imperial Guard
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 20932, sourcePage = {"TTWO.5SHOULDER","Token"} }, --Spaulders of the Imperial Guard
			{ itemID = 20931, sourcePage = {"TTWO.5LEGS","Token"} }, --Hardened Qiraj Chitin
			{ itemID = 20930, sourcePage = {"TTWO.5HEAD","Token"} }, --Diadem of the Desert Prince
			{ itemID = 20928, sourcePage = {"TTWO.5FEET","Token"} }, --Bindings of the Lost Nomad
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 20932, sourcePage = {"TTWO.5SHOULDER","Token"} }, --Spaulders of the Imperial Guard
			{ itemID = 20931, sourcePage = {"TTWO.5LEGS","Token"} }, --Hardened Qiraj Chitin
		},
		{
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 20930, sourcePage = {"TTWO.5HEAD","Token"} }, --Diadem of the Desert Prince
			{ itemID = 20726 }, --Formula: Enchant Gloves - Threat
			{ itemID = 20735 }, --Formula: Enchant Cloak - Subtlety
		},
		{
			{ itemID = 21237 }, --Imperial Qiraji Regalia
			{ itemID = 21232 }, --Imperial Qiraji Armaments
			{ itemID = 20931, sourcePage = {"TTWO.5LEGS","Token"} }, --Hardened Qiraj Chitin
		},
		{
			{ itemID = 21221 }, --Eye of C'Thun
			{ itemID = 20933, sourcePage = {"TTWO.5CHEST","Token"} }, --Husk of the Old God
			{ itemID = 22734, contentsPreview = { 22632, 22589, 22631, 22630} }, --Base of Atiesh
		},
		{
			{ itemID = 21838 }, --Garb of Royal Ascension
			{ itemID = 21888 }, --Gloves of the Immortal
			{ itemID = 21889 }, --Gloves of the Redeemed Prophecy
			{ itemID = 21836 }, --Ritssyn's Ring of Chaos
			{ itemID = 21891 }, --Shard of the Fallen Star
			{ itemID = 21856 }, --Neretzek, The Blood Drinker
			{ itemID = 21837 }, --Anubisath Warhammer
			{ itemID = 22202 }, --Small Obsidian Shard
			{ itemID = 22203 }, --Large Obsidian Shard
			{ itemID = 21218 }, --Blue Qiraji Resonating Crystal
			{ itemID = 21324 }, --Yellow Qiraji Resonating Crystal
			{ itemID = 21323 }, --Green Qiraji Resonating Crystal
			{ itemID = 21321 }, --Red Qiraji Resonating Crystal
		},
		{
			{ itemID = 1319786, desc = "Quest Requirements", contentsPreview = {{20878},{20868},{20872},{20859,3},{20864,3}} }, --Inscription of the Stormcaller
			{ itemID = 1319785, desc = "Quest Requirements", contentsPreview = {{20881},{20869},{20871},{20861,3},{20862,3}} }, --Inscription of the Stalker
			{ itemID = 1319789, desc = "Quest Requirements", contentsPreview = {{20874},{20872},{20866},{20864,3},{20858,3}} }, --Inscription of the Oracle
			{ itemID = 1319790, desc = "Quest Requirements", contentsPreview = {{20879},{20873},{20868},{20865,3},{20859,3}} }, --Inscription of the Genesis
			{ itemID = 1319787, desc = "Quest Requirements", contentsPreview = {{20877},{20871},{20867},{20862,3},{20860,3}} }, --Inscription of the Enigma
			{ itemID = 1319788, desc = "Quest Requirements", contentsPreview = {{20875},{20870},{20869},{20863,3},{20861,3}} }, --Inscription of the Doomcaller
			{ itemID = 1319784, desc = "Quest Requirements", contentsPreview = {{20876},{20867},{20870},{20860,3},{20863,3}} }, --Inscription of the Deathdealer
			{ itemID = 1319782, desc = "Quest Requirements", contentsPreview = {{20882},{20866},{20873},{20858,3},{20865,3}} }, --Inscription of the Conqueror
			{ itemID = 1319783, desc = "Quest Requirements", contentsPreview = {{20878},{20868},{20872},{20859,3},{20864,3}} }, --Inscription of the Avenger
		},
		{
			{ itemID = 20876 }, --Idol of Death
			{ itemID = 20879 }, --Idol of Life
			{ itemID = 20875 }, --Idol of Night
			{ itemID = 20878 }, --Idol of Rebirth
			{ itemID = 20881 }, --Idol of Strife
			{ itemID = 20877 }, --Idol of the Sage
			{ itemID = 20874 }, --Idol of the Sun
			{ itemID = 20882 }, --Idol of War
			{ itemID = 21230 }, --Ancient Qiraji Artifact
			{ itemID = 21762 }, --Greater Scarab Coffer Key
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
	["AQOpening"] = {
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
			{ itemID = 21175 }, --The Scepter of the Shifting Sands
			{ itemID = 21176 }, --Black Qiraji Resonating Crystal
			{ itemID = 21522 }, --Shadowsong's Sorrow
			{ itemID = 21523 }, --Fang of Korialstrasz
			{ itemID = 21520 }, --Ravencrest's Legacy
			{ itemID = 21521 }, --Runesword of the Red
		},
	},
	-------------------------
	--- Blackfathom Deeps ---
	-------------------------
	["BlackfathomDeeps"] = {
		{
		},
		{
		},
		{
			{ itemID = 1470 }, --Murloc Skin Bag
		},
		{
		},
		{
			{ itemID = 5881 }, --Head of Kelris
		},
		{
		},
		{
			{ icon = "INV_Box_01", name = "Quest Item" },
			{ itemID = 5359 }, --Lorgalis Manuscript
			{ itemID = 16762 }, --Fathom Core
		},
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
	--------------------------------------------
	--- Blackrock Mountain: Blackrock Dephts ---
	--------------------------------------------
	["BlackrockDepths"] = {
		{
			{ itemID = 14486 }, --Pattern: Cloak of Fire
		},
		{
			{ itemID = 11630 }, --Rockshard Pellets
			{ itemID = 11813 }, --Formula: Smoking Heart of the Mountain
			{ itemID = 11811, "Smoking Heart of the Mountain", maxDifficulty = "Normal" },
		},
		{
			{ itemID = 11140 }, --Prison Cell Key
		},
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
			{ itemID = 22270 }, --Entrenching Boots
			{ itemID = 22257 }, --Bloodclot Band
			{ itemID = 22266 }, --Flarethorn
			{ itemID = 11702 }, --Grizzle's Skinner
			{ itemID = 11610 }, --Plans: Dark Iron Pulverizer
			{ itemID = 11634 }, --Silkweb Gloves
			{ itemID = 11633 }, --Spiderfang Carapace
			{ itemID = 11635 }, --Hookfang Shanker
			{ itemID = 11662 }, --Ban'thok Sash
			{ itemID = 11665 }, --Ogreseer Fists
			{ itemID = 11728 }, --Savage Gladiator Leggings
			{ itemID = 11824 }, --Cyclopean Band
		},
		{
			{ icon = "INV_Misc_Bag_09", name = "Dungeon Set 2 Summonable", desc = "Theldren" },
			{ itemID = 22330 }, --Shroud of Arcane Mastery
			{ itemID = 22305 }, --Ironweave Mantle
			{ itemID = 22317 }, --Lefty's Brass Knuckle
			{ itemID = 22318 }, --Malgen's Long Bow
			{ itemID = 22047 }, --Top Piece of Lord Valthalak's Amulet
		},
		{
		},
		{
			{ itemID = 11000 }, --Shadowforge Key
		},
		{
			{ itemID = 11207 }, --Formula: Enchant Weapon - Fiery Weapon
		},
		{
			{ icon = "INV_Box_01", name = "The Vault" },
			{ itemID = 11309 }, --The Heart of the Mountain
			{ icon = "INV_Box_01", name = "The Secret Safe" },
			{ itemID = 22256 }, --Mana Shaping Handwraps
			{ itemID = 11929 }, --Haunting Specter Leggings
			{ itemID = 11926 }, --Deathdealer Breastplate
			{ itemID = 22205 }, --Black Steel Bindings
			{ itemID = 22255 }, --Magma Forged Band
			{ itemID = 11920 }, --Wraith Scythe
			{ itemID = 11923 }, --The Hammer of Grace
			{ itemID = 22254 }, --Wand of Eternal Light
			{ icon = "INV_Box_01", name = "Dark Coffer" },
			{ itemID = 11752 }, --Black Blood of the Tormented
			{ itemID = 11751 }, --Burning Essence
			{ itemID = 11753 }, --Eye of Kajal
		},
		{
		},
		{
		},
		{
			{ itemID = 11840 }, --Master Builder's Shirt
			{ itemID = 10999 }, --Ironfel
		},
		{
			{ itemID = 19268 }, --Ace of Elementals
			{ itemID = 21987 }, --Incendicite of Incendius
			{ itemID = 11126 }, --Tablet of Kurniya
		},
		{
		},
		{
			{ itemID = 11464 }, --Marshal Windsor's Lost Information
		},
		{
			{ itemID = 21956 }, --Design: Dark Iron Scorpid
			{ itemID = 11268 }, --Head of Argelmach
			{ itemID = 11465 }, --Marshal Windsor's Lost Information
		},
		{
			{ itemID = 11312 }, --Lost Thunderbrew Recipe
		},
		{
		},
		{
			{ itemID = 11612 }, --Plans: Dark Iron Plate
			{ itemID = 2662 }, --Ribbly's Quiver
			{ itemID = 2663 }, --Ribbly's Bandolier
			{ itemID = 11742 }, --Wayfarer's Knapsack
			{ itemID = 11313 }, --Ribbly's Head
		},
		{
			{ itemID = 13483 }, --Recipe: Transmute Fire to Earth
			{ itemID = 18653 }, --Schematic: Goblin Jumper Cables XL
			{ itemID = 15759 }, --Pattern: Black Dragonscale Breastplate
			{ itemID = 11602 }, --Grim Guzzler Key
			{ itemID = 11325 }, --Dark Iron Ale Mug
		},
		{
			{ itemID = 23320 }, --Tablet of Flame Shock VI
		},
		{
		},
		{
			{ icon = "INV_Box_01", name = "Chest of The Seven" },
			{ itemID = 11929 }, --Haunting Specter Leggings
			{ itemID = 11925 }, --Ghostshroud
			{ itemID = 11926 }, --Deathdealer Breastplate
			{ itemID = 11927 }, --Legplates of the Eternal Guardian
			{ itemID = 11922 }, --Blood-etched Blade
			{ itemID = 11920 }, --Wraith Scythe
			{ itemID = 11923 }, --The Hammer of Grace
			{ itemID = 11921 }, --Impervious Giant
		},
		{
			{ icon = "INV_Box_01", name = "Shadowforge Flame Keeper" },
			{ itemID = 11885 }, --Shadowforge Torch
		},
		{
		},
		{
			{ itemID = 12033 }, --Thaurissan Family Jewels
		},
		{
			{ itemID = 12554 }, --Hands of the Exalted Herald
			{ itemID = 12556 }, --High Priestess Boots
			{ itemID = 12557 }, --Ebonsteel Spaulders
			{ itemID = 12553 }, --Swiftwalker Boots
		},
		{
			{ itemID = 11614 }, --Plans: Dark Iron Mail
			{ itemID = 11615 }, --Plans: Dark Iron Shoulders
		},
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
			{ itemID = 15781 }, --Pattern: Black Dragonscale Leggings
			{ itemID = 15770 }, --Pattern: Black Dragonscale Shoulders
			{ itemID = 16053 }, --Schematic: Master Engineer's Goggles
			{ itemID = 16049 }, --Schematic: Dark Iron Bomb
			{ itemID = 16048 }, --Schematic: Dark Iron Rifle
			{ itemID = 18654 }, --Schematic: Gnomish Alarm-O-Bot
			{ itemID = 18661 }, --Schematic: World Enlarger
			{ itemID = 11754 }, --Black Diamond
			{ itemID = 11078 }, --Relic Coffer Key
			{ itemID = 18945 }, --Dark Iron Residue
			{ itemID = 11468 }, --Dark Iron Fanny Pack
			{ itemID = 11446 }, --A Crumpled Up Note
		},
	},
	--------------------------------------------
	--- Blackrock Mountain: Blackrock Caverns ---
	--------------------------------------------
	["BlackrockCavernsCLASSIC"] = {
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
			{ itemID = 6011 }, -- Recipe: Flask of Mighty Power
		},
		{
			{ itemID = 223128 }, -- Beauty's Favorite Bone
			{ itemID = 219576 }, -- Beauty's Chew Toy
			{ itemID = 222146 }, -- Beauty's Plate
			{ itemID = 222844 }, -- Beauty's Silken Ribbon
			{ itemID = 223076 }, -- Kibble
		},
		{
			{ itemID = 212713 }, -- Grace of the Herald
			{ itemID = 212826 }, -- Corla's Baton
			{ itemID = 203224 }, -- Renouncer's Cowl
			{ itemID = 211728 }, -- Armbands of Change
			{ itemID = 212654 }, -- Signet of Transformation
		},
		{
			{ itemID = 218298 }, -- Steelbender's Masterpiece
			{ itemID = 213383 }, -- Bracers of Cooled Anger
			{ itemID = 215448 }, -- Heat Wave Leggings
			{ itemID = 217674 }, -- Burned Gatherings
			{ itemID = 218255 }, -- Quicksilver Amulet
			{ itemID = 1180884 }, -- Draconic Warhorn: Karsh Steelbender
		},
		{
			{ itemID = 232104 }, -- Torturer's Mercy
			{ itemID = 232147 }, -- Shield of the Iron Maiden
			{ itemID = 231828 }, -- Inquisition Robes
			{ itemID = 231871 }, -- Manacles of Pain
			{ itemID = 232061 }, -- Skullcracker Ring
		},
	},
	-------------------------------------------------
	--- Blackrock Mountain: Lower Blackrock Spire ---
	-------------------------------------------------
	["LowerBlackrock"] = {
		{
			{ itemID = 18987 }, --Blackhand's Command
		},
		{
			{ itemID = 12812 }, --Unfired Plate Gauntlets
			{ itemID = 12631 }, --Fiery Plate Gauntlets
			{ itemID = 12699 }, --Plans: Fiery Plate Gauntlets
			{ itemID = 12533 }, --Roughshod Pike
			{ itemID = 12740 }, --Fifth Mosh'aru Tablet
			{ itemID = 12741 }, --Sixth Mosh'aru Tablet
			{ itemID = 12345 }, --Bijou's Belongings
		},
		[4] = {
			{ itemID = 12336 }, --Gemstone of Spirestone
			{ itemID = 12534 }, --Omokk's Head
			{ itemID = 16670 }, --Boots of Elements
		},
		[5] = {
			{ itemID = 13284 }, --Swiftdart Battleboots
			{ itemID = 13285 }, --The Blackrock Slicer
		},
		[6] = {
			{ itemID = 13282 }, --Ogreseer Tower Boots
			{ itemID = 13283 }, --Magus Ring
			{ itemID = 13261 }, --Globe of D'sak
		},
		[7] = {
			{ itemID = 12654 }, --Doomshot
			{ itemID = 13352 }, --Vosh'gajin's Snakestone
			{ itemID = 12821 }, --Plans: Dawn's Edge
			{ itemID = 16712 }, --Shadowcraft Gloves
		},
		[8] = {
			{ itemID = 12335 }, --Gemstone of Smolderthorn
		},
		[9] = {
			{ itemID = 21984 }, --Left Piece of Lord Valthalak's Amulet
			{ itemID = 22046 }, --Right Piece of Lord Valthalak's Amulet
		},
		[10] = {
			{ itemID = 12838, contentsPreview = {12784} }, --Plans: Arcanite Reaper
		},
		[13] = {
			{ itemID = 18784 }, --Top Half of Advanced Armorsmithing: Volume III
			{ itemID = 12725 }, --Plans: Enchanted Thorium Helm
			{ itemID = 12712 }, --Warosh's Mojo
			{ itemID = 15867 }, --Prismcharm
		},
		[14] = {
			{ itemID = 12835, contentsPreview = {12798} }, --Plans: Annihilator
			{ itemID = 21955 }, --Design: Black Diamond Crab
		},
		[18] = {
			{ itemID = 12337 }, --Gemstone of Bloodaxe
		},
		[19] = {
			{ itemID = 13181 }, --Demonskin Gloves
			{ itemID = 13182 }, --Phase Blade
		},
		[20] = {
			{ itemID = 14513 }, --Pattern: Robe of the Archmage
			{ itemID = 14152 }, --Robe of the Archmage
			{ itemID = 13494 }, --Recipe: Greater Fire Protection Potion
			{ itemID = 16250 }, --Formula: Enchant Weapon - Superior Striking
			{ itemID = 16244 }, --Formula: Enchant Gloves - Greater Strength
			{ itemID = 15749 }, --Pattern: Volcanic Breastplate
			{ itemID = 15775 }, --Pattern: Volcanic Shoulders
			{ itemID = 12219 }, --Unadorned Seal of Ascension
			{ itemID = 21982 }, --Ogre Warbeads
		},
	},
	-------------------------------------------------
	--- Blackrock Mountain: Upper Blackrock Spire ---
	-------------------------------------------------
	["UpperBlackrock"] = {
		{
			{ itemID = 12905 }, --Wildfire Cape
			{ itemID = 12927 }, --TruestrikeShoulders
			{ itemID = 12929 }, --Emberfury Talisman
			{ itemID = 12926 }, --Flaming Band
			{ itemID = 17322 }, --Eye of the Emberseer
			{ itemID = 21988 }, --Ember of Emberseer
			{ itemID = 16672 }, --Gauntlets of Elements
		},
		{
			{ itemID = 12609 }, --Polychromatic Visionwrap
			{ itemID = 12589 }, --Dustfeather Sash
			{ itemID = 12603 }, --Nightbrace Tunic
			{ itemID = 12606 }, --Crystallized Girdle
			{ itemID = 18657 }, --Schematic: Hyper-Radiant Flame Reflector
			{ itemID = 18638 }, --Hyper-Radiant Flame Reflector
			{ itemID = 16695 }, --Devout Mantle
		},
		{
			{ itemID = 13371 }, --Father Flame
		},
		{
			{ itemID = 12358 }, --Darkstone Tablet
			{ itemID = 12352 }, --Doomrigger's Clasp
		},
		{
			{ itemID = 12604 }, --Starfire Tiara
			{ itemID = 12930 }, --Briarwood Reed
			{ itemID = 12605 }, --Serpentine Skuller
		},
		{
			{ itemID = 12837, contentsPreview = {12794} }, --Plans: Masterwork Stormhammer
			{ itemID = 12834, contentsPreview = {12790} }, --Plans: Arcanite Champion
			{ itemID = 18779 }, --Bottom Half of Advanced Armorsmithing: Volume I
			{ itemID = 12727 }, --Plans: Enchanted Thorium Breastplate
			{ icon = "INV_Box_01", name = "Unforged Rune Covered Breastplate" },
			{ itemID = 12806 }, --Unforged Rune Covered Breastplate
			{ itemID = 12696 }, --Plans: Demon Forged Breastplate
		},
		{
			{ itemID = 12630 }, --Head of Rend Blackhand
		},
		{
			{ itemID = 12871 }, --Chromatic Carapace
			{ itemID = 12945 }, --Legplates of the Chromatic Defier
			{ itemID = 12903 }, --Legguards of the Chromatic Defier
			{ itemID = 12895 }, --Breastplate of the Chromatic Flight
			{ itemID = 22225 }, --Dragonskin Cowl
			{ itemID = 12960 }, --Tribal War Feathers
			{ itemID = 12953 }, --Dragoneye Coif
			{ itemID = 12952 }, --Gyth's Skull
			{ itemID = 13522 }, --Recipe: Flask of Chromatic Resistance
			{ itemID = 16669 }, --Pauldrons of Elements
		},
		{
			{ itemID = 24101 }, --Book of Ferocious Bite V
			{ itemID = 19227 }, --Ace of Beasts
		},
		{
			{ icon = "INV_Misc_Bag_09", name = "Dungeon Set 2 Summonable", desc = "Lord Valthalak" },
		},
		{
			{ itemID = 15730, contentsPreview = {15047} }, --Pattern: Red Dragonscale Breastplate
			{ itemID = 13519 }, --Recipe: Flask of the Titans
			{ itemID = 16663 }, --Blood of the Black Dragon Champion
		},
		{
			{ itemID = 13260 }, --Wind Dancer Boots
			{ itemID = 24102 }, --Manual of Eviscerate IX
			{ itemID = 16247 }, --Formula: Enchant 2H Weapon - Superior Impact
			{ itemID = 12607 }, --Brilliant Chromatic Scale
			{ itemID = 12219 }, --Unadorned Seal of Ascension
		},
	},
	---------------------------------------
	--- Blackrock Mountain: Molten Core ---
	---------------------------------------
	["MoltenCore"] = {
		{
			{ itemID = 2522362, sourcePage = {"TONEWRIST","Token"} }, --Molten Wristguards
			{ itemID = 17329 }, --Hand of Lucifron
		},
		{
			{ itemID = 2522359, sourcePage = {"TONELEGS","Token"} }, --Molten Leggaurds
		},
		{
			{ itemID = 2522364, sourcePage = {"TONEHAND","Token"} }, --Molten Girdle
			{ itemID = 17331 }, --Hand of Gehennas
		},
		{
			{ itemID = 2522360, sourcePage = {"TONEHEAD","Token"} }, --Molten Headpiece
			{ itemID = 18564 }, --Bindings of the Windseeker
			{ itemID = 19019 }, --Thunderfury, Blessed Blade of the Windseeker
			{ itemID = 17782 }, --Talisman of Binding Shard
			{ itemID = 11879 }, --Medallion of Binding Shard
		},
		{
			{ itemID = 2522363, sourcePage = {"TONEWAIST","Token"} }, --Molten Handgaurds
			{ itemID = 17332 }, --Hand of Shazzrah
		},
		{
			{ itemID = 2522361, sourcePage = {"TONESHOULDER","Token"} }, --Molten Spaulders
			{ itemID = 18563 }, --Bindings of the Windseeker
			{ itemID = 19019 }, --Thunderfury, Blessed Blade of the Windseeker
		},
		{
			{ itemID = 2522350, sourcePage = {"TONECHEST","Token"} }, --Molten Tunic
			{ itemID = 17203 }, --Sulfuron Ingot
			{ itemID = 17182 }, --Sulfuras, Hand of Ragnaros
		},
		{
			{ itemID = 2522365, sourcePage = {"TONEFEET","Token"} }, --Molten Boots
			{ itemID = 17330 }, --Hand of Sulfuron
		},
		{
		},
		{
			{ itemID = 2522459, sourcePage = {"TTWOLEGS","Token"} }, --Chromatic Leggaurds
			{ itemID = 21110 }, --Draconic for Dummies
			{ itemID = 17204 }, --Eye of Sulfuras
			{ itemID = 17182 }, --Sulfuras, Hand of Ragnaros
			{ itemID = 19017 }, --Essence of the Firelord
			{ itemID = 19019 }, --Thunderfury, Blessed Blade of the Windseeker
			{ itemID = 102107, minDifficulty = "Heroic" }, -- Reins of the Magmatic Steed
		},
		{
			{ itemID = 17010 }, --Fiery Core
			{ itemID = 17011 }, --Lava Core
			{ itemID = 11382 }, --Blood of the Mountain
			{ itemID = 17012 }, --Core Leather
		},
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
	------------------------------------------
	--- Blackrock Mountain: Blackwing Lair ---
	------------------------------------------
	["BlackwingLair"] = {
		{
			{ itemID = 2522462, sourcePage = {"TTWOWRIST","Token"} }, --Chromatic Wristguards
			{ itemID = 53144, droprate = 5 }, --Formula: Enchant Cloak - Blazing
		},
		{
			{ itemID = 2522463, sourcePage = {"TTWOWAIST","Token"} }, --Chromatic Girdle
		},
		{
			{ itemID = 2522465, sourcePage = {"TTWOFEET","Token"} }, --Chromatic Boots
			{ itemID = 53142, droprate = 5 }, -- Formula: Enchant Cloak - Draconic Might
			{ itemID = 20383 }, --Head of the Broodlord Lashlayer
		},
		{
			{ itemID = 2522464, sourcePage = {"TTWOHAND","Token"} }, --Chromatic Handgaurds
		},
		{
			{ itemID = 2522464, sourcePage = {"TTWOHAND","Token"} }, --Chromatic Handgaurds
		},
		{
			{ itemID = 2522464, sourcePage = {"TTWOHAND","Token"} }, --Chromatic Handgaurds
		},
		{
			{ itemID = 2522461, sourcePage = {"TTWOSHOULDER","Token"} }, --Chromatic Spaulders
		},
		{
			{ itemID = 2522450, sourcePage = {"TTWOCHEST","Token"} }, --Chromatic Tunic
			{ itemID = 19003, contentsPreview = {19383, 19384, 19366, 21138} }, --Head of Nefarian
			{ itemID = 21138 }, --Red Scepter Shard
		},
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
			{ itemID = 18562 }, --Elementium Ore
			{ itemID = 21109 }, --Draconic for Dummies
		},
	},
	----------------------
	--- Dire Maul East ---
	----------------------
	["DireMaulEast"] = {
		{
			{ itemID = 18267 }, --Recipe: Runn Tum Tuber Surprise
			{ itemID = 18261 }, --Book of Incantations
			{ itemID = 18249 }, --Crescent Key
		},
		{
		},
		{
			{ itemID = 18426 }, --Lethtendris's Web
		},
		{
			{ itemID = 18354 }, --Pimgib's Collar
		},
		{
		},
		{
			{ itemID = 18501 }, --Felvine Shard
		},
		{
			{ icon = "INV_Misc_Bag_09", name = "Dungeon Set 2 Summonable", desc = "Isalien" },
			{ itemID = 22304 }, --Ironweave Gloves
			{ itemID = 22472 }, --Boots of Ferocity
			{ itemID = 22401 }, --Libram of Hope
			{ itemID = 22345 }, --Totem of Rebirth
			{ itemID = 22315 }, --Hammer of Revitalization
			{ itemID = 22314 }, --Huntsman's Harpoon
			{ itemID = 21984 }, --Left Piece of Lord Valthalak's Amulet
			{ itemID = 22046 }, --Right Piece of Lord Valthalak's Amulet
		},
		{
			{ itemID = 18295 }, --Phasing Boots
			{ itemID = 18298 }, --Unbridled Leggings
			{ itemID = 18296 }, --Marksman Bands
			{ itemID = 18289 }, --Barbed Thorn Necklace
		},
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
			{ itemID = 18470 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18473 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18468 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18472 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18469 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18465 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18471 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18467 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18466 }, --Royal Seal of Eldre'Thalas
			{ itemID = 18401 }, --Foror's Compendium of Dragon Slaying
			{ itemID = 18348 }, --Quel'Serrar
		},
	},
	-----------------------
	--- Dire Maul North ---
	-----------------------
	["DireMaulNorth"] = {
		{
			{ itemID = 18268 }, --Gordok Inner Door Key
		},
		{
		},
		{
			{ icon = "INV_Box_01", name = "Fengus's Chest" },
			{ itemID = 18266 }, --Gordok Courtyard Key
		},
		{
			{ itemID = 18517 }, --Pattern: Chromatic Cloak
			{ itemID = 18518 }, --Pattern: Hide of the Wild
			{ itemID = 18519 }, --Pattern: Shifting Cloak
			{ itemID = 18414 }, --Pattern: Belt of the Archmage
			{ itemID = 18418 }, --Pattern: Cloak of Warding
			{ itemID = 18415 }, --Pattern: Felcloth Gloves
			{ itemID = 18416 }, --Pattern: Inferno Gloves
			{ itemID = 18417 }, --Pattern: Mooncloth Gloves
			{ itemID = 18514 }, --Pattern: Girdle of Insight
			{ itemID = 18515 }, --Pattern: Mongoose Boots
			{ itemID = 18516 }, --Pattern: Swift Flight Bracers
			{ icon = "INV_Box_01", name = "Ogre Tannin Basket" },
			{ itemID = 18240 }, --Ogre Tannin
			{ itemID = 18509 }, --Chromatic Cloak
			{ itemID = 18510 }, --Hide of the Wild
			{ itemID = 18511 }, --Shifting Cloak
			{ itemID = 18405 }, --Belt of the Archmage
			{ itemID = 18413 }, --Cloak of Warding
			{ itemID = 18407 }, --Felcloth Gloves
			{ itemID = 18408 }, --Inferno Gloves
			{ itemID = 18409 }, --Mooncloth Gloves
			{ itemID = 18504 }, --Girdle of Insight
			{ itemID = 18506 }, --Mongoose Boots
			{ itemID = 18508 }, --Swift Flight Bracers
		},
		{
		},
		{
		},
		{
		},
		{
			{ itemID = 19258 }, --Ace of Warlords
			{ itemID = 18780 }, --Top Half of Advanced Armorsmithing: Volume I
			{ itemID = 12727 }, --Plans: Enchanted Thorium Breastplate
		},
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
	----------------------
	--- Dire Maul West ---
	----------------------
	["DireMaulWest"] = {
		{
		},
		{
		},
		{
			{ itemID = 22309 }, --Pattern: Big Bag of Enchantment
		},
		{
		},
		{
		},
		{
		},
		{
			{ icon = "INV_Box_01", name = "The Prince's Chest" },
			{ itemID = 18336 }, --Gauntlet of Gordok Might
		},
		{
			{ itemID = 18487 }, --Pattern: Mooncloth Robe
		},
		{
			{ itemID = 18344 }, --Stonebark Gauntlets
			{ itemID = 18340 }, --Eidolon Talisman
			{ itemID = 18338 }, --Wand of Arcane Potency
		},
	},
	------------------
	--- Gnomeregan ---
	------------------
	["Gnomeregan"] = {
		{
			{ itemID = 14639 }, --Schematic: Minor Recombobulator
		},
		{
			{ itemID = 9277 }, --Techbot's Memory Core
		},
		{
		},
		{
		},
		{
			{ itemID = 6893 }, --Workshop Key
		},
		{
		},
		{
		},
		{
			{ itemID = 4415 }, --Schematic: Craftsman's Monocle
			{ itemID = 4413 }, --Schematic: Discombobulator Ray
			{ itemID = 4411 }, --Schematic: Flame Deflector
			{ itemID = 7742 }, --Schematic: Gnomish Cloaking Device
			{ itemID = 9299 }, --Thermaplugg's Safe Combination
		},
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
	["KarazhanCrypts"] = {
		{
			{ itemID = 252821 }, -- Twinglaive of the Vampire Council
			{ itemID = 252906 }, -- Twinglaive of Eternal Slumber
			{ itemID = 254389 }, -- Purified Vitae Chalice
			{ itemID = 254432 }, -- Funeral Trousers
			{ itemID = 254758 }, -- Tombstone Cover
			{ itemID = 254888 }, -- Deathsworn Spaulders
			{ itemID = 254068 }, -- Sigil of Cynfael
		},
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
			{ itemID = 254077, contentsPreview = {{1414603}, {1414604}, {1414605}, {1414606}} }, -- Forgotten Core
			{ itemID = 254067 }, -- Sigil of Dryn Miel
			{ itemID = 1179133 }, -- Reins of the Mawsworn Charger
		},
		{
			{ itemID = 253677 }, -- Forgiveness
			{ itemID = 253763 }, -- Drape of the Horse
			{ itemID = 254629 }, -- Soulsteel Legplates
			{ itemID = 254715 }, -- Forgotten Aegis of Kings
			{ itemID = 255104 }, -- Concentrated DeathRecap_GetEvents
			{ itemID = 254069 }, -- Sigil of Kurgoth Doomreaver
		},
		{
			{ itemID = 253004 }, -- Ghoul Spine Cleaver
			{ itemID = 253053 }, -- Conduit of Sinners
			{ itemID = 253102 }, -- Spinesplinter Arbalest
			{ itemID = 254532 }, -- Deathsworn Pants
			{ itemID = 254941 }, -- Bonelink Mantle
			{ itemID = 254070 }, -- Sigil of Sinners
		},
		{
			{ itemID = 254088 }, --Funeral Treads
			{ itemID = 254131 }, --Deathsworn Boots
			{ itemID = 254174 }, --Bonelink Greaves
			{ itemID = 254217 }, --Soulsteel Sabatons
			{ itemID = 254080 }, --Sigil of Captain Taveir
		},
		{
			{ itemID = 254088 }, --Funeral Treads
			{ itemID = 254131 }, --Deathsworn Boots
			{ itemID = 254174 }, --Bonelink Greaves
			{ itemID = 254217 }, --Soulsteel Sabatons
			{ itemID = 254078 }, --Sigil of Kelivex Autumnvale
		},
	},
	----------------
	--- Maraudon ---
	----------------
	["Maraudon"] = {
		{
			{ itemID = 17746 }, --Noxxion's Shackles
			{ itemID = 17744 }, --Heart of Noxxion
			{ itemID = 17745 }, --Noxious Shooter
			{ itemID = 17702 }, --Celebrian Rod
		},
		{
			{ itemID = 17750 }, --Chloromesh Girdle
			{ itemID = 17748 }, --Vinerot Sandals
			{ itemID = 17749 }, --Phytoskin Spaulders
			{ itemID = 17751 }, --Brusslehide Leggings
		},
		{
			{ itemID = 17755 }, --Satyrmane Sash
			{ itemID = 17754 }, --Infernal Trickster Leggings
			{ itemID = 17752 }, --Satyr's Lash
			{ itemID = 17703 }, --Celebrian Diamond
		},
		{
			{ itemID = 17741 }, --Nature's Embrace
			{ itemID = 17742 }, --Fungus Shroud Armor
			{ itemID = 17767 }, --Bloomsprout Headpiece
		},
		{
			{ itemID = 17739 }, --Grovekeeper's Drape
			{ itemID = 17740 }, --Soothsayer's Headdress
			{ itemID = 17738 }, --Claw of Celebras
		},
		{
			{ itemID = 17736 }, --Rockgrip Gauntlets
			{ itemID = 17734 }, --Helm of the Mountain
			{ itemID = 17737 }, --Cloud Stone
			{ itemID = 17943 }, --Fist of Stone
		},
		{
		},
		{
			{ itemID = 17732 }, --Rotgrip Mantle
			{ itemID = 17728 }, --Albino Crocscale Boots
			{ itemID = 17730 }, --Gatorbite Axe
		},
		{
		},
		{
			{ itemID = 17764 }, --Gem of the Fourth Khan
			{ itemID = 17765 }, --Gem of the Fifth Khan
		},
	},
	----------------------
	--- Ragefire Chasm ---
	----------------------
	["RagefireChasm"] = {
		{
			{ itemID = 14540 }, --Taragaman the Hungerer's Heart
		},
		{
			{ itemID = 24225 }, --Blood of the Wrathful
		},
		{
		},
		{
		},
	},
	----------------------
	--- Razorfen Downs ---
	----------------------
	["RazorfenDowns"] = {
		{
			{ icon = "INV_Box_01", name = "Tuten'kash" },
			{ itemID = 10776 }, --Silky Spider Cape
			{ itemID = 10777 }, --Arachnid Gloves
			{ itemID = 10775 }, --Carapace of Tuten'kash
		},
		{
			{ itemID = 3831 }, --Recipe: Mighty Troll's Blood Potion
			{ itemID = 10841, spellID = 13028 }, --Goldthorn Tea
		},
		{
			{ itemID = 10771 }, --Deathmage Sash
			{ itemID = 10769 }, --Glowing Eye of Mordresh
			{ itemID = 10770 }, --Mordresh's Lifeless Skull
		},
		{
			{ itemID = 10774 }, --Fleshhide Shoulders
			{ itemID = 10772 }, --Glutton's Cleaver
		},
		{
			{ itemID = 10768 }, --Boar Champion's Belt
			{ itemID = 10758 }, --X'caliboar
			{ itemID = 10767 }, --Savage Boar's Guard
		},
		{
		},
		{
			{ itemID = 10762 }, --Robes of the Lich
			{ itemID = 10765 }, --Bonefingers
			{ itemID = 10764 }, --Deathchill Armor
			{ itemID = 10763 }, --Icemetal Barbute
			{ itemID = 10761 }, --Coldrage Dagger
			{ itemID = 10420 }, --Skull of the Coldbringer
		},
		{
			{ itemID = 10760 }, --Swine Fists
			{ itemID = 10766 }, --Plaguerot Sprig
		},
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
	----------------------
	--- Razorfen Kraul ---
	----------------------
	["RazorfenKraul"] = {
		{
			{ itemID = 6841 }, --Vial of Phlogiston
		},
		{
		},
		{
		},
		{
			{ itemID = 6679 }, --Armor Piercer
		},
		{
		},
		{
		},
		{
		},
		{
			{ itemID = 17008 }, --Small Scroll
			{ itemID = 5793 }, --Razorflank's Heart
			{ itemID = 5792 }, --Razorflank's Medallion
		},
		{
		},
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
	-------------------------
	--- Scarlet Monastery ---
	-------------------------
	["Scarlet Monastery"] = {
		{
			{ itemID = 7719 }, --Raging Berserker's Helm
			{ itemID = 7718 }, --Herod's Shoulder
			{ itemID = 10330 }, --Scarlet Leggings
			{ itemID = 7717 }, --Ravager
			{ icon = "INV_Box_01", name = "Scarlet Trainee" },
			{ itemID = 23192 }, --Tabard of the Scarlet Crusade
		},
		{
			{ itemID = 19507 }, --Inquisitor's Shawl
			{ itemID = 19508 }, --Branded Leather Bracers
			{ itemID = 19509 }, --Dusty Mail Boots
		},
		{
			{ itemID = 7724 }, --Gauntlets of Divinity
			{ itemID = 10330 }, --Scarlet Leggings
			{ itemID = 7723 }, --Mograine's Might
			{ itemID = 7726 }, --Aegis of the Scarlet Commander
		},
		{
			{ itemID = 7720 }, --Whitemane's Chapeau
			{ itemID = 7722 }, --Triune Amulet
			{ itemID = 7721 }, --Hand of Righteousness
			{ itemID = 20976 }, --Design: Citrine Pendant of Golden Healing
		},
		{
			{ itemID = 7683 }, --Bloody Brass Knuckles
			{ itemID = 7682 }, --Torturing Poker
		},
		{
			{ itemID = 7684 }, --Bloodmage Mantle
			{ itemID = 7685 }, --Orb of the Forgotten Seer
		},
		{
			{ itemID = 7688 }, --Ironspine's Ribcage
			{ itemID = 7686 }, --Ironspine's Eye
			{ itemID = 7687 }, --Ironspine's Fist
		},
		{
			{ itemID = 7709 }, --Blighted Leggings
			{ itemID = 7731 }, --Ghostshard Talisman
			{ itemID = 7708 }, --Necrotic Wand
		},
		{
			{ itemID = 7691 }, --Embalmed Shroud
			{ itemID = 7690 }, --Ebon Vise
			{ itemID = 7689 }, --Morbid Dawn
		},
		{
			{ itemID = 7756 }, --Dog Training Gloves
			{ itemID = 7710 }, --Loksey's Training Stick
			{ itemID = 3456 }, --Dog Whistle
		},
		{
			{ itemID = 34227 }, --Deadman's Hand
			{ itemID = 7712 }, --Mantle of Doan
			{ itemID = 7711 }, --Robe of Doan
			{ itemID = 7714 }, --Hypnotic Blade
			{ itemID = 7713 }, --Illusionary Rod
			{ icon = "INV_Box_01", name = "Doan's Strongbox" },
			{ itemID = 7146 }, --The Scarlet Key
		},
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
	-------------------
	--- Scholomance ---
	-------------------
	["Scholomance"] = {
		{
			{ itemID = 13873 }, --Viewing Room Key
			{ itemID = 13471 }, --The Deed to Brill
			{ itemID = 13448 }, --The Deed to Caer Darrow
			{ itemID = 13450 }, --The Deed to Southshore
			{ itemID = 13451 }, --The Deed to Tarren Mill
		},
		{
			{ itemID = 13523 }, --Blood of Innocents
		},
		{
			{ itemID = 13956 }, --Clutch of Andros
			{ itemID = 13957 }, --Gargoyle Slashers
			{ itemID = 13969 }, --Loomguard Armbraces
			{ itemID = 13967 }, --Windreaver Greaves
			{ itemID = 13955 }, --Stoneform Shoulders
			{ itemID = 13960 }, --Heart of the Fiend
			{ itemID = 14024 }, --Frightalon
			{ itemID = 13983 }, --Gravestone War Axe
			{ itemID = 16734 }, --Boots of Valor
		},
		{
			{ itemID = 13725 }, --Krastinov's Bag of Horrors
			{ itemID = 13523 }, --Blood of Innocents
		},
		{
			{ itemID = 13873 }, --Viewing Room Key
			{ itemID = 18782 }, --Top Half of Advanced Armorsmithing: Volume II
			{ itemID = 12726 }, --Plans: Enchanted Thorium Leggings
		},
		{
			{ itemID = 18760 }, --Necromantic Band
			{ itemID = 18758 }, --Specter's Blade
			{ itemID = 18759 }, --Malicious Axe
			{ itemID = 18761 }, --Oblivion's Touch
			{ itemID = 18749 }, --Charger's Lost Soul
		},
		{
		},
		{
			{ itemID = 18692 }, --Death Knight Sabatons
			{ itemID = 14576 }, --Ebon Hilt of Marduk
		},
		{
			{ itemID = 13521 }, --Recipe: Flask of Supreme Power
			{ itemID = 13626 }, --Human Head of Ras Frostwhisper
			{ itemID = 13986 }, --Crown of Caer Darrow
			{ itemID = 13984 }, --Darrowspike
			{ itemID = 13982 }, --Warblade of Caer Darrow
			{ itemID = 14002 }, --Darrowshire Strongguard
			{ icon = "INV_Box_01", name = "Frostwhisper's Embalming Fluid" },
			{ itemID = 12736 }, --Frostwhisper's Embalming Fluid
		},
		{
			{ icon = "INV_Misc_Bag_09", name = "Dungeon Set 2 Summonable", desc = "Kormok" },
			{ itemID = 22303 }, --Ironweave Pants
			{ itemID = 22326 }, --Amalgam's Band
			{ itemID = 22331 }, --Band of the Steadfast Hero
			{ itemID = 22332 }, --Blade of Necromancy
			{ itemID = 22333 }, --Hammer of Divine Might
			{ itemID = 21984 }, --Left Piece of Lord Valthalak's Amulet
			{ itemID = 22046 }, --Right Piece of Lord Valthalak's Amulet
		},
		{
			{ itemID = 13523 }, --Blood of Innocents
		},
		{
			{ itemID = 13523 }, --Blood of Innocents
		},
		{
		},
		{
		},
		{
		},
		{
		},
		{
			{ itemID = 13937 }, --Headmaster's Charge
			{ itemID = 14514 }, --Pattern: Robe of the Void
			{ itemID = 14153 }, --Robe of the Void
			{ itemID = 13944 }, --Tombstone Breastplate
			{ itemID = 13398 }, --Boots of the Shrieker
			{ itemID = 13950 }, --Detention Strap
			{ itemID = 13951 }, --Vigorsteel Vambraces
			{ itemID = 22433 }, --Don Mauricio's Band of Domination
			{ itemID = 13964 }, --Witchblade
			{ itemID = 13953 }, --Silent Fang
			{ itemID = 13938 }, --Bonecreeper Stylus
			{ itemID = 16698 }, --Dreadmist Mask
			{ itemID = 16686 }, --Magister's Crown
			{ itemID = 16693 }, --Devout Crown
			{ itemID = 16707 }, --Shadowcraft Cap
			{ itemID = 16720 }, --Wildheart Cowl
			{ itemID = 16677 }, --Beaststalker's Cap
			{ itemID = 16667 }, --Coif of Elements
			{ itemID = 16731 }, --Helm of Valor
			{ itemID = 16727 }, --Lightforge Helm
			{ itemID = 19276 }, --Ace of Portals
			{ itemID = 13501 }, --Recipe: Major Mana Potion
		},
		{
			{ itemID = 18697 }, --Coldstone Slippers
			{ itemID = 18698 }, --Tattered Leather Hood
			{ itemID = 18699 }, --Icy Tomb Spaulders
			{ itemID = 18700 }, --Malefic Bracers
			{ itemID = 14536 }, --Bonebrace Hauberk
			{ itemID = 18702 }, --Belt of the Ordained
			{ itemID = 18701 }, --Innervating Band
			{ itemID = 16254 }, --Formula: Enchant Weapon - Lifestealing
			{ itemID = 16255 }, --Formula: Enchant 2H Weapon - Major Spirit
			{ itemID = 15773 }, --Pattern: Wicked Leather Armor
			{ itemID = 15776 }, --Pattern: Runic Leather Armor
			{ itemID = 12753 }, --Skin of Shadow
			{ itemID = 13920 }, --Healthy Dragon Scale
			{ itemID = 16705 }, --Dreadmist Wraps
			{ itemID = 16684 }, --Magister's Gloves
			{ itemID = 16685 }, --Magister's Belt
			{ itemID = 16710 }, --Shadowcraft Bracers
			{ itemID = 16716 }, --Wildheart Belt
			{ itemID = 16722 }, --Lightforge Bracers
		},
	},
	-----------------------
	--- Shadowfang Keep ---
	-----------------------
	["ShadowfangKeep"] = {
		{
		},
		{
			{ itemID = 6642 }, --Phantom Armor
			{ itemID = 6641 }, --Haunting Blade
		},
		{
		},
		{
			{ itemID = 6341 }, --Eerie Stable Lantern
			{ itemID = 932 }, --Fel Steed Saddlebags
		},
		{
		},
		{
		},
		{
		},
		{
		},
		{
		},
		{
			{ itemID = 5943 }, --Rift Bracers
		},
		{
		},
		{
		},
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
	------------------
	--- Stratholme ---
	------------------
	["Stratholme"] = {
		{
		},
		{
			{ itemID = 13304 }, --Festival Lane Postbox Key
			{ itemID = 13303 }, --Crusaders' Square Postbox Key
			{ itemID = 13307 }, --Fras Siabi's Postbox Key
			{ itemID = 13305 }, --Elders' Square Postbox Key
			{ itemID = 13302 }, --Market Row Postbox Key
			{ itemID = 13306 }, --King's Square Postbox Key
		},
		{
			{ itemID = 13172 }, --Siabi's Premium Tobacco
			{ itemID = 13171 }, --Smokey's Lighter
		},
		{
			{ itemID = 22736 }, --Andonisus, Reaper of Souls
		},
		{
		},
		{
		},
		{
			{ itemID = 13403 }, --Grimgore Noose
			{ itemID = 13402 }, --Timmy's Galoshes
			{ itemID = 13400 }, --Vambraces of the Sadist
			{ itemID = 13401 }, --The Cruel Hand of Timmy
			{ itemID = 16724 }, --Lightforge Gauntlets
		},
		{
			{ icon = "INV_Box_01", name = "Malor's Strongbox" },
			{ itemID = 12845 }, --Medallion of Faith
		},
		{
			{ itemID = 18781 }, --Bottom Half of Advanced Armorsmithing: Volume II
			{ itemID = 12726 }, --Plans: Enchanted Thorium Leggings
			{ itemID = 13351 }, --Crimson Hammersmith's Apron
			{ itemID = 12824 }, --Plans: Enchanted Battlehammer
		},
		{
			{ itemID = 12827 }, --Plans: Serenity
		},
		{
			{ itemID = 13377 }, --Miniature Cannon Balls
			{ itemID = 12839, contentsPreview = {12783} }, --Plans: Heartseeker
		},
		{
			{ itemID = 22897 }, --Tome of Conjure Food VII
			{ itemID = 12811 }, --Righteous Orb
			{ icon = "INV_Box_01", name = "Unfinished Painting" },
			{ itemID = 14679 }, --Of Love and Family
		},
		{
			{ itemID = 13353 }, --Book of the Dead
			{ itemID = 14512 }, --Pattern: Truefaith Vestments
			{ itemID = 14154 }, --Truefaith Vestments
			{ itemID = 18720 }, --Shroud of the Nathrezim
			{ itemID = 13369 }, --Fire Striders
			{ itemID = 13358 }, --Wyrmtongue Shoulders
			{ itemID = 13359 }, --Crown of Tyranny
			{ itemID = 18718 }, --Grand Crusader's Helm
			{ itemID = 12103 }, --Star of Mystaria
			{ itemID = 13360 }, --Gift of the Elven Magi
			{ itemID = 13348 }, --Demonshear
			{ itemID = 18717 }, --Hammer of the Grand Crusader
			{ itemID = 16725 }, --Lightforge Boots
			{ itemID = 13520 }, --Recipe: Flask of Distilled Wisdom
			{ itemID = 13250 }, --Head of Balnazzar
		},
		{
			{ icon = "INV_Misc_Bag_09", name = "Dungeon Set 2 Summonable", desc = "Sothos and Jarien" },
			{ itemID = 22301 }, --Ironweave Robe
			{ itemID = 22328 }, --Legplates of Vigilance
			{ itemID = 22327 }, --Amulet of the Redeemed
			{ itemID = 22334 }, --Band of Mending
			{ itemID = 22329 }, --Scepter of Interminable Focus
			{ itemID = 21984 }, --Left Piece of Lord Valthalak's Amulet
			{ itemID = 22046 }, --Right Piece of Lord Valthalak's Amulet
		},
		{
		},
		{
			{ itemID = 13514 }, --Wail of the Banshee
		},
		{
			{ itemID = 18783 }, --Bottom Half of Advanced Armorsmithing: Volume III
			{ itemID = 12725 }, --Plans: Enchanted Thorium Helm
			{ itemID = 13350 }, --Insignia of the Black Guard
			{ itemID = 12825 }, --Plans: Blazing Rapier
		},
		{
			{ itemID = 12830 }, --Plans: Corruption
		},
		{
			{ itemID = 13508 }, --Eye of Arachnida
		},
		{
			{ itemID = 12833, contentsPreview = {12796} }, --Plans: Hammer of the Titans
		},
		{
			{ itemID = 12382 }, --Key to the City
		},
		{
			{ itemID = 13374 }, --Soulstealer Mantle
			{ itemID = 18723 }, --Animated Chain Necklace
			{ itemID = 13373 }, --Band of Flesh
			{ itemID = 13515 }, --Ramstein's Lightning Bolts
			{ itemID = 13372 }, --Slavedriver's Cane
			{ itemID = 13375 }, --Crest of Retribution
			{ itemID = 16737 }, --Gauntlets of Valor
		},
		{
			{ itemID = 13251, contentsPreview = {13246,13249,13243} }, --Head of Baron Rivendare
			{ itemID = 13335 }, --Deathcharger's Reins
		},
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
	---------------------
	--- The Deadmines ---
	---------------------
	["TheDeadmines"] = {
		{
			{ itemID = 3019 }, --Noble's Robe
			{ itemID = 4660 }, --Walking Boots
		},
		{
			{ itemID = 5967 }, --Girdle of Nobility
			{ itemID = 3902 }, --Staff of Nobles
		},
		{
			{ itemID = 1875 }, --Thistlenettle's Badge
		},
		{
		},
		{
		},
		{
			{ itemID = 7365 }, --Gnoam Sprecklesprocket
		},
		{
			{ itemID = 5397 }, --Defias Gunpowder
		},
		{
		},
		{
		},
		{
		},
		{
			{ itemID = 8490 }, --Cat Carrier (Siamese)
		},
		{
			{ itemID = 2874 }, --An Unsent Letter
			{ itemID = 3637 }, --Head of VanCleef
		},
	},
	--------------------
	--- The Stockade ---
	--------------------
	["TheStockade"] = {
		{
			{ itemID = 3630 }, --Head of Targorr
			{ itemID = 56971, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 3640 }, --Head of Deepfury
			{ itemID = 56970, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 2926 }, --Head of Bazil Thredd
			{ itemID = 56972, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 56973, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 3628 }, --Hand of Dextren Ward
			{ itemID = 56969, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 56974, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 2909 }, --Red Wool Bandana
		},
	},
	-------------------------
	--- The Sunken Temple ---
	-------------------------
	["SunkenTemple"] = {
		{
			{ itemID = 10802 }, --Wingveil Cloak
			{ itemID = 10801 }, --Slitherscale Boots
		},
		{
			{ itemID = 10787 }, --Atal'ai Gloves
			{ itemID = 10783 }, --Atal'ai Spaulders
			{ itemID = 10785 }, --Atal'ai Leggings
			{ itemID = 10784 }, --Atal'ai Breastplate
			{ itemID = 10786 }, --Atal'ai Boots
			{ itemID = 10788 }, --Atal'ai Girdle
			{ itemID = 20606 }, --Amber Voodoo Feather
			{ itemID = 20607 }, --Blue Voodoo Feather
			{ itemID = 20608 }, --Green Voodoo Feather
		},
		{
			{ itemID = 10800 }, --Darkwater Bracers
			{ itemID = 10798 }, --Atal'alarion's Tusk Ring
			{ itemID = 10799 }, --Headspike
		},
		{
		},
		{
		},
		{
			{ itemID = 10663 }, --Essence of Hakkar
		},
		{
			{ itemID = 10806 }, --Vestments of the Atal'ai Prophet
			{ itemID = 10808 }, --Gloves of the Atal'ai Prophet
			{ itemID = 10807 }, --Kilt of the Atal'ai Prophet
			{ itemID = 6212 }, --Head of Jammal'an
		},
		{
			{ itemID = 10805 }, --Eater of the Dead
			{ itemID = 10804 }, --Fist of the Damned
			{ itemID = 10803 }, --Blade of the Wretched
		},
		{
			{ itemID = 20022 }, --Azure Key
			{ itemID = 20085 }, --Arcane Shard
			{ itemID = 20025 }, --Blood of Morphaz
			{ itemID = 20019 }, --Tooth of Morphaz
		},
		{
		},
		{
			{ itemID = 10454 }, --Essence of Eranikus
			{ itemID = 10455 }, --Chained Essence of Eranikus
		},
		{
			{ itemID = 10630 }, --Soulcatcher Halo
			{ itemID = 10629 }, --Mistwalker Boots
			{ itemID = 10632 }, --Slimescale Bracers
			{ itemID = 10631 }, --Murkwater Gauntlets
			{ itemID = 10633 }, --Silvershell Leggings
			{ itemID = 10634 }, --Mindseye Circle
			{ itemID = 15733 }, --Pattern: Green Dragonscale Leggings
			{ itemID = 16216 }, --Formula: Enchant Cloak - Greater Resistance
			{ itemID = 11318 }, --Atal'ai Haze
			{ itemID = 6181 }, --Fetish of Hakkar
			{ itemID = 10623 }, --Winter's Bite
			{ itemID = 10625 }, --Stealthblade
			{ itemID = 10628 }, --Deathblow
			{ itemID = 10626 }, --Ragehammer
			{ itemID = 10627 }, --Bludgeon of the Grinning Dog
			{ itemID = 10624 }, --Stinging Bow
		},
	},
	---------------
	--- Uldaman ---
	---------------
	["Uldaman"] = {
		{
			{ itemID = 4635 }, --Hammertoe's Amulet
		},
		{
			{ itemID = 4631 }, --Tablet of Ryun'eh
		},
		{
			{ itemID = 8027 }, --Krom Stoutarm's Treasure
		},
		{
			{ itemID = 8026 }, --Garrett Family Treasure
		},
		{
			{ itemID = 9375 }, --Expert Goldminer's Helmet
			{ itemID = 9378 }, --Shovelphlange's Mining Axe
			{ itemID = 9382 }, --Tromping Miner's Boots
		},
		{
			{ icon = "INV_Box_01", name = "Baelog" },
			{ itemID = 9401 }, --Nordic Longshank
			{ itemID = 9400 }, --Baelog's Shortbow
			{ itemID = 9399 }, --Precision Arrow
			{ icon = "INV_Box_01", name = "Eric 'The Swift'" },
			{ itemID = 9394 }, --Horned Viking Helmet
			{ itemID = 9398 }, --Worn Running Boots
			{ itemID = 2459 }, --Swiftness Potion
			{ icon = "INV_Box_01", name = "Olaf" },
			{ itemID = 9404 }, --Olaf's All Purpose Shield
			{ itemID = 9403 }, --Battered Viking Shield
			{ itemID = 1177 }, --Oil of Olaf
			{ icon = "INV_Box_01", name = "Baelog's Chest" },
			{ itemID = 7740 }, --Gni'kiv Medallion
			{ icon = "INV_Box_01", name = "Conspicuous Urn" },
			{ itemID = 7671 }, --Shattered Necklace Topaz
		},
		{
			{ itemID = 9390 }, --Revelosh's Gloves
			{ itemID = 9389 }, --Revelosh's Spaulders
			{ itemID = 9388 }, --Revelosh's Armguards
			{ itemID = 9387 }, --Revelosh's Boots
			{ itemID = 7741 }, --The Shaft of Tsol
		},
		{
			{ itemID = 9407 }, --Stoneweaver Leggings
			{ itemID = 9409 }, --Ironaya's Bracers
			{ itemID = 9408 }, --Ironshod Bludgeon
		},
		{
			{ itemID = 8053 }, --Obsidian Power Source
		},
		{
			{ itemID = 9411 }, --Rockshard Pauldrons
			{ itemID = 9410 }, --Cragfists
		},
		{
			{ itemID = 11311 }, --Emberscale Cape
			{ itemID = 11310 }, --Flameseer Mantle
			{ itemID = 9419 }, --Galgann's Firehammer
			{ itemID = 9412 }, --Galgann's Fireblaster
		},
		{
			{ itemID = 5824 }, --Tablet of Will
		},
		{
			{ itemID = 7669 }, --Shattered Necklace Ruby
		},
		{
			{ itemID = 9415 }, --Grimlok's Tribal Vestments
			{ itemID = 9414 }, --Oilskin Leggings
			{ itemID = 9416 }, --Grimlok's Charge
			{ itemID = 7670 }, --Shattered Necklace Sapphire
		},
		{
			{ itemID = 11118 }, --Archaedic Stone
			{ itemID = 9418 }, --Stoneslayer
			{ itemID = 9413 }, --The Rockpounder
			{ itemID = 7672 }, --Shattered Necklace Power Source
		},
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
	-----------------------
	--- Wailing Caverns ---
	-----------------------
	["WailingCaverns"] = {
		{
			{ itemID = 6475 }, --Pattern: Deviate Scale Gloves
			{ itemID = 6474 }, --Pattern: Deviate Scale Cloak
		},
		{
			{ itemID = 5334 }, --99-Year-Old Port
		},
		{
			{ itemID = 5425 }, --Runescale Girdle
			{ itemID = 5426 }, --Serpent's Kiss
		},
		{
			{ itemID = 5423 }, --Boahn's Fang
			{ itemID = 5422 }, --Brambleweed Leggings
		},
		{
		},
		{
			{ itemID = 6446 }, --Snakeskin Bag
		},
		{
		},
		{
		},
		{
		},
		{
		},
		{
		},
		{
			{ itemID = 10441 }, --Glowing Shard
		},
		{
			{ itemID = 6632 }, --Feyscale Cloak
			{ itemID = 5243 }, --Firebelcher
		},
	},
	------------------
	--- Zul'Farrak ---
	------------------
	["ZulFarrak"] = {
		{
			{ itemID = 9640 }, --Vice Grips
			{ itemID = 9641 }, --Lifeblood Amulet
			{ itemID = 9639 }, --The Hand of Antu'sul
			{ itemID = 9379 }, --Sang'thraze the Deflector
			{ itemID = 9372 }, --Sul'thraze the Lasher
		},
		{
			{ itemID = 10660 }, --First Mosh'aru Tablet
		},
		{
			{ itemID = 18083 }, --Jumanza Grips
			{ itemID = 18082 }, --Zum'rah's Vexing Cane
		},
		{
			{ itemID = 9471 }, --Nekrum's Medallion
		},
		{
			{ itemID = 9470 }, --Bad Mojo Mask
			{ itemID = 9473 }, --Jinxed Hoodoo Skin
			{ itemID = 9474 }, --Jinxed Hoodoo Kilt
			{ itemID = 9475 }, --Diabolic Skiver
		},
		{
			{ itemID = 12471 }, --Desertwalker Cane
		},
		{
			{ itemID = 8444 }, --Executioner's Key
		},
		{
			{ itemID = 8548 }, --Divino-matic Rod
		},
		{
			{ itemID = 9234 }, --Tiara of the Deep
			{ itemID = 10661 }, --Second Mosh'aru Tablet
		},
		{
			{ itemID = 9469 }, --Gahz'rilla Scale Armor
			{ itemID = 9467 }, --Gahz'rilla Fang
			{ itemID = 8707 }, --Gahz'rilla's Electrified Scale
		},
		{
			{ itemID = 9479 }, --Embrace of the Lycan
			{ itemID = 9476 }, --Big Bad Pauldrons
			{ itemID = 9478 }, --Ripsaw
			{ itemID = 9477 }, --The Chief's Enforcer
			{ itemID = 11086 }, --Jang'thraze the Protector
			{ itemID = 9372 }, --Sul'thraze the Lasher
		},
		{
			{ itemID = 12470 }, --Sandstalker Ankleguards
		},
		{
			{ itemID = 9512 }, --Blackmetal Cape
			{ itemID = 9484 }, --Spellshock Leggings
			{ itemID = 862 }, --Runed Ring
			{ itemID = 6440 }, --Brainlash
			{ itemID = 9243 }, --Shriveled Heart
			{ itemID = 9523 }, --Troll Temper
			{ itemID = 9238 }, --Uncracked Scarab Shell
			{ itemID = 5616 }, --Gutwrencher
			{ itemID = 9511 }, --Bloodletter Scalpel
			{ itemID = 9481 }, --The Minotaur
			{ itemID = 9480 }, --Eyegouger
			{ itemID = 9482 }, --Witch Doctor's Cane
			{ itemID = 9483 }, --Flaming Incinerator
			{ itemID = 2040 }, --Troll Protector
		},
	},
	-----------------
	--- Zul'Gurub ---
	-----------------
	["ZulGurub"] = {
		{
			{ icon = "INV_Banner_01", name = "ZG Sets", sourcePage = {{"ZGSets", "	", 1},"Source"} },
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
		},
		{
			{ icon = "INV_Banner_01", name = "ZG Sets", sourcePage = {{"ZGSets", "	", 1},"Source"} },
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
			{ itemID = 22216 }, --Venoxis's Venom Sac
		},
		{
			{ icon = "INV_Banner_01", name = "ZG Sets", sourcePage = {{"ZGSets", "	", 1},"Source"} },
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
		},
		{
				{ itemID = 19872 }, --Swift Razzashi Raptor
			{ icon = "INV_Banner_01", name = "ZG Sets", sourcePage = {{"ZGSets", "	", 1},"Source"} },
			{ itemID = 22637 }, --Primal Hakkari Idol
			{ itemID = 19943 }, --Massive Mojo
		},
		{
			{ icon = "INV_Box_01", name = "Gri'lek" },
			{ itemID = 19961 }, --Gri'lek's Grinder
			{ itemID = 19962 }, --Gri'lek's Carver
			{ itemID = 19939 }, --Gri'lek's Blood
			{ icon = "INV_Box_01", name = "Hazza'rah" },
			{ itemID = 19968 }, --Fiery Retributer
			{ itemID = 19967 }, --Thoughtblighter
			{ itemID = 19942 }, --Hazza'rah's Dream Thread
			{ icon = "INV_Box_01", name = "Renataki" },
			{ itemID = 19964 }, --Renataki's Soul Conduit
			{ itemID = 19963 }, --Pitchfork of Madness
			{ itemID = 19940 }, --Renataki's Tooth
			{ icon = "INV_Box_01", name = "Wushoolay" },
			{ itemID = 19965 }, --Wushoolay's Poker
			{ itemID = 19993 }, --Hoodoo Hunting Bow
			{ itemID = 19941 }, --Wushoolay's Mane
		},
		{
			{ itemID = 19945 }, --Foror's Eyepatch
			{ itemID = 19944 }, --Nat Pagle's Fish Terminator
			{ itemID = 19947 }, --Nat Pagle's Broken Reel
			{ itemID = 19946 }, --Tigule's Harpoon
			{ itemID = 22739 }, --Tome of Polymorph: Turtle
		},
		{
			{ itemID = 19902 }, --Swift Zulian Tiger
			{ icon = "INV_Banner_01", name = "ZG Sets", sourcePage = {{"ZGSets", "	", 1},"Source"} },
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
			{ itemID = 60101, droprate = "1%" }, --Pet Sigil
		},
		{
			{ itemID = 19914 }, --Panther Hide Sack
			{ icon = "INV_Banner_01", name = "ZG Sets", sourcePage = {{"ZGSets", "	", 1},"Source"} },
			{ itemID = 19943 }, --Massive Mojo
			{ itemID = 19881 }, --Channeler's Head
		},
		{
			{ icon = "INV_Banner_01", name = "ZG Sets", sourcePage = {{"ZGSets", "	", 1},"Source"} },
			{ itemID = 22637 }, --Primal Hakkari Idol
			{ itemID = 19943 }, --Massive Mojo
		},
		{
			{ itemID = 19802 }, --Heart of Hakkar
			{ itemID = 19950 }, --Zandalarian Hero Charm
			{ itemID = 19949 }, --Zandalarian Hero Medallion
			{ itemID = 19948 }, --Zandalarian Hero Badge
			{ itemID = 19943 }, --Massive Mojo
		},
		{
			{ itemID = 19975 }, --Zulian Mudskunk
		},
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
		{
			{ itemID = 20259 }, --Shadow Panther Hide Gloves
			{ itemID = 20261 }, --Shadow Panther Hide Belt
			{ itemID = 20263 }, --Gurubashi Helm
			{ itemID = 19908 }, --Sceptre of Smiting
			{ itemID = 19921 }, --Zulian Hacker
			{ itemID = 20258 }, --Zulian Ceremonial Staff
			{ itemID = 19727 }, --Blood Scythe
			{ itemID = 48126 }, --Razzashi Hatchling
			{ itemID = 19726 }, --Bloodvine
			{ itemID = 19774 }, --Souldarite
			{ itemID = 19767 }, --Primal Bat Leather
			{ itemID = 19768 }, --Primal Tiger Leather
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
		{
			{ itemID = 19708 }, --Blue Hakkari Bijou
			{ itemID = 19713 }, --Bronze Hakkari Bijou
			{ itemID = 19715 }, --Gold Hakkari Bijou
			{ itemID = 19711 }, --Green Hakkari Bijou
			{ itemID = 19710 }, --Orange Hakkari Bijou
			{ itemID = 19712 }, --Purple Hakkari Bijou
			{ itemID = 19707 }, --Red Hakkari Bijou
			{ itemID = 19714 }, --Silver Hakkari Bijou
			{ itemID = 19709 }, --Yellow Hakkari Bijou
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
			{ itemID = 20077 }, --Zandalar Signet of Might
			{ itemID = 20076 }, --Zandalar Signet of Mojo
			{ itemID = 20078 }, --Zandalar Signet of Serenity
			{ itemID = 22635 }, --Savage Guard
		},
	},
	-----------------
	--- Naxxramas ---
	-----------------
	["Naxxramas60"] = {
		{
			{ itemID = 22354, sourcePage = {"TTHREESHOULDER","Token"} }, --Desecrated Pauldrons
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60187 }, --Sigil of Patchwerk
		},
		{
			{ itemID = 22354, sourcePage = {"TTHREESHOULDER","Token"} }, --Desecrated Pauldrons
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60176 }, --Sigil of Grobbulus
		},
		{
			{ itemID = 22354, sourcePage = {"TTHREESHOULDER","Token"} }, --Desecrated Pauldrons
			{ itemID = 22355, sourcePage = {"TTHREEWRIST","Token"} }, --Desecrated Bracers
			{ itemID = 22356, sourcePage = {"TTHREEWAIST","Token"} }, --Desecrated Waistguard
			{ itemID = 22358, sourcePage = {"TTHREEFEET","Token"} }, --Desecrated Sabatons
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60177 }, --Sigil of Gluth
		},
		{
			{ itemID = 22353, sourcePage = {"TTHREEHEAD","Token"} }, --Desecrated Helmet
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60173 }, -- Sigil of Thaddius
		},
		{
			{ itemID = 22355, sourcePage = {"TTHREEWRIST","Token"} }, --Desecrated Bracers
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60182 }, --Sigil of Anub'Rekhan
		},
		{
			{ itemID = 22355, sourcePage = {"TTHREEWRIST","Token"} }, --Desecrated Bracers
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60180 }, --Sigil of Grand Widow Faerlina
		},
		{
			{ itemID = 22357, sourcePage = {"TTHREEHAND","Token"} }, --Desecrated Gauntlets
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60179 }, --Sigil of Maexxna
		},
		{
			{ itemID = 22358, sourcePage = {"TTHREEFEET","Token"} }, --Desecrated Sabatons
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60190 }, --Sigil of Instructor Razuvious
		},
		{
			{ itemID = 22358, sourcePage = {"TTHREESHOULDER","Token"} }, --Desecrated Sabatons
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60189 }, --Sigil of Gothik the Harvester
		},
		{
			{ itemID = 23071 }, --Leggings of Apocalypse
			{ itemID = 22809 }, --Maul of the Redeemed Crusader
			{ itemID = 22691 }, --Corrupted Ashbringer
			{ itemID = 22811 }, --Soulstring
			{ itemID = 23025 }, --Seal of the Damned
			{ itemID = 23027 }, --Warmth of Forgiveness
			{ itemID = 22349, sourcePage = {"TTHREECHEST","Token"} }, --Desecrated Breastplate
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
		},
		{
			{ itemID = 22356, sourcePage = {"TTHREEWAIST","Token"} }, --Desecrated Waistguard
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60181 }, --Sigil of Noth the Plaguebringer
		},
		{
			{ itemID = 22356, sourcePage = {"TTHREEWAIST","Token"} }, --Desecrated Waistguard
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60178 }, --Sigil of Heigan the Unclean
		},
		{
			{ itemID = 22352, sourcePage = {"TTHREELEGS","Token"} }, --Desecrated Legplates
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60186 }, --Sigil of Loatheb
		},
		{
			{ itemID = 23545 }, --Power of the Scourge
			{ itemID = 23547 }, --Resilience of the Scourge
			{ itemID = 23549 }, --Fortitude of the Scourge
			{ itemID = 23548 }, --Might of the Scourge
			{ itemID = 22726 }, --Splinter of Atiesh
			{ itemID = 22727 }, --Frame of Atiesh
			{ itemID = 60184 }, --Sigil of Sapphiron
		},
		{
			{ itemID = 22520 }, --The Phylactery of Kel'Thuzad
			{ itemID = 23207 }, --Mark of the Champion
			{ itemID = 23206 }, --Mark of the Champion
			{ itemID = 1510496, sourcePage = {"TTHREEFINGER","Token"} }, --Desecrated Ring
			{ itemID = 22733 }, --Staff Head of Atiesh
			{ itemID = 22632 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22589 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22631 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22630 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 60185, droprate = "1%" }, --Sigil
		},
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
			{ itemID = 22376 }, --Wartorn Cloth Scrap
			{ itemID = 22373 }, --Wartorn Leather Scrap
			{ itemID = 22374 }, --Wartorn Chain Scrap
			{ itemID = 22375 }, --Wartorn Plate Scrap
			{ itemID = 22708 }, --Fate of Ramaladni
			{ itemID = 23055 }, --Word of Thawing
		},
	},
	------------------------
	--- Onyxia's Lair 60 ---
	------------------------
	["Onyxia60"] = {
		{},
		{
			{ itemID = 2522460, sourcePage = {"TTWOHEAD","Token"} }, --Chromatic Headpiece
			{ itemID = 97269 }, --Head of Onyxia
			{ itemID = 18404 }, -- Onyxia Tooth Pendant
			{ itemID = 18403 }, -- Dragonslayer's Signet
			{ itemID = 18406 }, -- Onyxia Blood Talisman
			{ itemID = 15410 }, -- Scale of Onyxia
			{ itemID = 17966 }, --Onyxia Hide Backpack
			{ itemID = 53140, droprate = 5 }, --Formula: Enchant Cloak - Dragon Fire
			{ itemID = 1180299 }, -- Draconic Warhorn: Onyxia
			{ itemID = 49636, minDifficulty = "Heroic" }, -- Reins of the Onyxian Drake
		},
	},
	["FrozenReach"] = {
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
			{ itemID = 1519393 }, -- Beastmaster's Whistle: Arktos
			{ itemID = 49095 }, -- Incarnation: Arktos
			{ itemID = 49093 }, -- Arktos
		},
	},
	["SharedDungeonLoot"] = {
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
			{ itemID = 1559405 }, --Girdle of Golem Strength
			{ itemID = 1563011 }, --Silver-lined Belt
			{ itemID = 1563134 }, --Belt of the Gladiator
			{ itemID = 1563145 }, --Enormous Ogre Belt
			{ itemID = 1523173 }, --Abomination Skin Leggings
			{ itemID = 1563010 }, --Dreamsinger Legguards
			{ itemID = 1563074 }, --Golem Shard Leggings
			{ itemID = 1563114 }, --Troll's Bane Leggings
			{ itemID = 1563099 }, --Moccasins of the White Hare
			{ itemID = 1563100 }, --Furen's Boots
			{ itemID = 2248085 }, --Gordok Knuckleband
			{ itemID = 2448085 }, --Flattened Elven Ring
			{ itemID = 1563094 }, --The Queen's Jewel
			{ itemID = 1563095 }, --Assault Band
			{ itemID = 1563097 }, --Thunderbrow Ring
			{ itemID = 1551713 }, --Ankh of Life
		},
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
	},
	--------------------
	--- World Bosses ---
	--------------------
	----------------------------
	--- Dragons of Nightmare ---
	----------------------------
	["WorldBossesCLASSIC"] = {
		{
			{ itemID = 20581 }, --Staff of Rampant Growth
			{ itemID = 17070 }, --Fang of the Mystics
			{ itemID = 19130 }, --Cold Snap
			{ itemID = 17113 }, --Amberseal Keeper
			{ itemID = 20636 }, --Hibernation Crystal
			{ itemID = 20582 }, --Trance Stone
			{ itemID = 18665 }, --The Eye of Shadow
			{ itemID = 18704 }, --Mature Blue Dragon Sinew
			{ itemID = 18714 }, --Ancient Sinew Wrapped Lamina
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
		{
			{ itemID = 20623 }, --Circlet of Restless Dreams
			{ itemID = 20615 }, --Dragonspur Wraps
			{ itemID = 122884 }, --Wristguards of the Shifting Sands
			{ itemID = 122885 }, --Waistguard of the Shifting Sands
			{ itemID = 18544 }, --Doomhide Gauntlets
			{ itemID = 20627 }, --Dark Heart Pants
			{ itemID = 20633 }, --Unnatural Leather Spaulders
			{ itemID = 20617 }, --Ancient Corroded Leggings
			{ itemID = 20624 }, --Ring of the Unliving
			{ itemID = 20622 }, --Dragonheart Necklace
			{ itemID = 18541 }, --Puissant Cape
			{ itemID = 18204 }, --Eskhandar's Pelt
		},
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
		{
			{ itemID = 18547 }, --Unmelting Ice Girdle
			{ itemID = 20616 }, --Dragonbone Wristguards
			{ itemID = 20619 }, --Acid Inscribed Greaves
			{ itemID = 20637 }, --Acid Inscribed Pauldrons
		},
	},
})
------------------------
-- Item Sacks Classic --
------------------------
AtlasLoot:AddItemData("extraItemInfo", {
	[22637] = {
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
	[21232] = {
		{ itemID = 21242 }, --Blessed Qiraji War Axe
		{ itemID = 21272 }, --Blessed Qiraji Musket
		{ itemID = 21244 }, --Blessed Qiraji Pugio
		{ itemID = 21269 }, --Blessed Qiraji Bulwark
	},
	[21237] = {
		{ itemID = 21273 }, --Blessed Qiraji Acolyte Staff
		{ itemID = 21275 }, --Blessed Qiraji Augur Staff
		{ itemID = 21268 }, --Blessed Qiraji War Hammer
	},
	[21221] = {
		{ itemID = 21710 }, --Cloak of the Fallen God
		{ itemID = 21712 }, --Amulet of the Fallen God
		{ itemID = 21709 }, --Ring of the Fallen God
	},
})
