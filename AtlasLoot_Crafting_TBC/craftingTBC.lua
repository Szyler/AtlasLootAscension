local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local color = AtlasLoot.Colors



local ALCHEMY = GetSpellInfo(2259)
local BLACKSMITHING = GetSpellInfo(2018)
local ARMORSMITH = GetSpellInfo(9788)
local WEAPONSMITH = GetSpellInfo(9787)
local AXESMITH = GetSpellInfo(17041)
local HAMMERSMITH = GetSpellInfo(17040)
local SWORDSMITH = GetSpellInfo(17039)
local COOKING = GetSpellInfo(2550)
local ENCHANTING = GetSpellInfo(7411)
local ENGINEERING = GetSpellInfo(4036)
local GNOMISH = GetSpellInfo(20220)
local GOBLIN = GetSpellInfo(20221)
local FIRSTAID = GetSpellInfo(3273)
local JEWELCRAFTING = GetSpellInfo(25229)
local LEATHERWORKING = GetSpellInfo(2108)
local DRAGONSCALE = GetSpellInfo(10656)
local ELEMENTAL = GetSpellInfo(10658)
local TRIBAL = GetSpellInfo(10660)
local MINING = GetSpellInfo(2575)
local TAILORING = GetSpellInfo(3908)
local MOONCLOTH = GetSpellInfo(26798)
local SHADOWEAVE = GetSpellInfo(26801)
local SPELLFIRE = GetSpellInfo(26797)

local gap = {"gap"}

-- Index
--- Tradeskill List
---- Alchemy
----- Battle Elixirs
----- Guardian Elixirs
----- Potions
----- Flasks
----- Transmutes
----- Miscellaneous
---- Blacksmithing
----- Armor
----- Weapons
----- Enhancements
----- Miscellaneous
----- Armorsmith
----- Weaponsmith
----- Axesmith
----- Hammersmith
----- Swordsmith
---- Cooking
---- Enchanting
----- Boots
----- Bracers
----- Chest
----- Cloaks
----- Gloves
----- Rings
----- Shields
----- 2 Hand Weapons
----- 1 Hand Weapons
----- Staves
----- Miscellaneous
---- Engineering
---- First Aid
---- Inscription
---- Jewelcrafting
---- Leatherworking
---- Mining
---- Tailoring
--- Other
---- Crafted Epic Weapons

-----------------------
--- Tradeskill List ---
-----------------------

---------------
--- Alchemy ---
---------------
AtlasLoot_Data["AlchemyTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = ALCHEMY,
	Type = "BCCrafting",
	{
		Name = "Battle Elixirs",
		{
			{ itemID = 22835, spellID = 28558 }, --Elixir of Major Shadow Power
			{ itemID = 22833, spellID = 28556 }, --Elixir of Major Firepower
			{ itemID = 31679, spellID = 38960 }, --Fel Strength Elixir
			{ itemID = 22831, spellID = 28553 }, --Elixir of Major Agility
			{ itemID = 22827, spellID = 28549 }, --Elixir of Major Frost Power
			{ itemID = 28104, spellID = 33741 }, --Elixir of Mastery
			{ itemID = 22825, spellID = 28545 }, --Elixir of Healing Power
			{ itemID = 22824, spellID = 28544 }, --Elixir of Major Strength
			{ itemID = 28103, spellID = 33740 }, --Adept's Elixir
			{ itemID = 28102, spellID = 33738 }, --Onslaught Elixir
		},
	},
	{
		Name = "Guardian Elixirs",
		{
			{ itemID = 22848, spellID = 28578 }, --Elixir of Empowerment
			{ itemID = 22840, spellID = 28570 }, --Elixir of Major Mageblood
			{ itemID = 22834, spellID = 28557 }, --Elixir of Major Defense
			{ itemID = 32068, spellID = 39639 }, --Elixir of Ironskin
			{ itemID = 32063, spellID = 39637 }, --Earthen Elixir
			{ itemID = 32067, spellID = 39638 }, --Elixir of Draenic Wisdom
			{ itemID = 32062, spellID = 39636 }, --Elixir of Major Fortitude
		},
	},
	{
		Name = "Potions",
		{
			{ itemID = 22850, spellID = 28586 }, --Super Rejuvenation Potion
			{ itemID = 31677, spellID = 38961 }, --Fel Mana Potion
			{ itemID = 22849, spellID = 28579 }, --Ironshield Potion
			{ itemID = 22845, spellID = 28575 }, --Major Arcane Protection Potion
			{ itemID = 22841, spellID = 28571 }, --Major Fire Protection Potion
			{ itemID = 22842, spellID = 28572 }, --Major Frost Protection Potion
			{ itemID = 22847, spellID = 28577 }, --Major Holy Protection Potion
			{ itemID = 22844, spellID = 28573 }, --Major Nature Protection Potion
			{ itemID = 22846, spellID = 28576 }, --Major Shadow Protection Potion
			{ itemID = 22839, spellID = 28565 }, --Destruction Potion
			{ itemID = 22838, spellID = 28564 }, --Haste Potion
			{ itemID = 22837, spellID = 28563 }, --Heroic Potion
			{ itemID = 22836, spellID = 28562 }, --Major Dreamless Sleep Potion
			{ itemID = 31676, spellID = 38962 }, --Fel Regeneration Potion
			{ itemID = 22832, spellID = 28555 }, --Super Mana Potion
		},
		{
			{ itemID = 22871, spellID = 28554 }, --Shrouding Potion
			{ itemID = 34440, spellID = 45061 }, --Mad Alchemist's Potion
			{ itemID = 22829, spellID = 28551 }, --Super Healing Potion
			{ itemID = 22828, spellID = 28550 }, --Insane Strength Potion
			{ itemID = 22826, spellID = 28546 }, --Sneaking Potion
			{ itemID = 28101, spellID = 33733 }, --Unstable Mana Potion
			{ itemID = 28100, spellID = 33732 }, --Volatile Healing Potion
		},
	},
	{
		Name = "Flasks",
		{
			{ itemID = 33208, spellID = 42736 }, --Flask of Chromatic Wonder
			{ itemID = 22861, spellID = 28590 }, --Flask of Blinding Light
			{ itemID = 22851, spellID = 28587 }, --Flask of Fortification
			{ itemID = 22853, spellID = 28588 }, --Flask of Mighty Restoration
			{ itemID = 22866, spellID = 28591 }, --Flask of Pure Death
			{ itemID = 22854, spellID = 28589 }, --Flask of Relentless Assault
		},
	},
	{
		Name = "Transmutes",
		{
			{ itemID = 23571, spellID = 29688 }, --Transmute: Primal Might
			{ itemID = 25867, spellID = 32765 }, --Transmute: Earthstorm Diamond
			{ itemID = 25868, spellID = 32766 }, --Transmute: Skyfire Diamond
			{ itemID = 21886, spellID = 28585 }, --Transmute: Primal Earth to Life
			{ itemID = 22457, spellID = 28583 }, --Transmute: Primal Fire to Mana
			{ itemID = 22452, spellID = 28584 }, --Transmute: Primal Life to Earth
			{ itemID = 21884, spellID = 28582 }, --Transmute: Primal Mana to Fire
			{ itemID = 21885, spellID = 28580 }, --Transmute: Primal Shadow to Water
			{ itemID = 22456, spellID = 28581 }, --Transmute: Primal Water to Shadow
			{ itemID = 21884, spellID = 28566 }, --Transmute: Primal Air to Fire
			{ itemID = 21885, spellID = 28567 }, --Transmute: Primal Earth to Water
			{ itemID = 22452, spellID = 28568 }, --Transmute: Primal Fire to Earth
			{ itemID = 22451, spellID = 28569 }, --Transmute: Primal Water to Air
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 19931, spellID = 24266 }, --Gurubashi Mojo Madness
			{ itemID = 9154, spellID = 11460 }, --Elixir of Detect Undead
			{ itemID = 18294, spellID = 22808 }, --Elixir of Greater Water Breathing
			{ itemID = 9061, spellID = 11456 }, --Goblin Rocket Fuel
			{ itemID = 8956, spellID = 11451 }, --Oil of Immolation
			{ itemID = 10592, spellID = 12609 }, --Catseye Elixir
			{ itemID = 3829, spellID = 3454 }, --Frost Oil
			{ itemID = 9149, spellID = 11459 }, --Philosopher's Stone
			{ itemID = 3828, spellID = 3453 }, --Elixir of Detect Lesser Invisibility
			{ itemID = 3824, spellID = 3449 }, --Shadow Oil
			{ itemID = 6371, spellID = 7837 }, --Fire Oil
			{ itemID = 5996, spellID = 7179 }, --Elixir of Water Breathing
			{ itemID = 6370, spellID = 7836 }, --Blackmouth Oil
		},
	},
	{
		Name = "High Risk",
		{
			{ name = "Rare", icon = "INV_Box_01"},
			{ itemID = 1203258, spellID = 979362 }, --Impure Flask of Manifesting Power
			{ itemID = 1203260, spellID = 979364 }, --Impure Flask of the Warsong
			{ itemID = 1203262, spellID = 979366 }, --Impure Flask of the Kirin Tor
			{ itemID = 1203264, spellID = 979368 }, --Impure Flask of Butchery
			{ itemID = 1203266, spellID = 979370 }, --Impure Flask of the Unyielding
			{ itemID = 1203268, spellID = 979372 }, --Impure Flask of Unrelenting Power
			{ itemID = 1203270, spellID = 979374 }, --Impure Flask of Savage Assault
			{ itemID = 1203272, spellID = 979376 }, --Impure Flask of Shattering Thunder
			{ itemID = 1203274, spellID = 979378 }, --Impure Flask of the Executioner
			{ itemID = 1203276, spellID = 979380 }, --Impure Flask of Deep Meditation
			{ itemID = 1203278, spellID = 979382 }, --Impure Flask of Adept Striking
		},
		{
			{ name = "Epic", icon = "INV_Box_01"},
			{ itemID = 1203259, spellID = 979363 }, --Pure Flask of Manifesting Power
			{ itemID = 1203261, spellID = 979365 }, --Pure Flask of the Warsong
			{ itemID = 1203263, spellID = 979367 }, --Pure Flask of the Kirin Tor
			{ itemID = 1203265, spellID = 979369 }, --Pure Flask of Butchery
			{ itemID = 1203267, spellID = 979371 }, --Pure Flask of the Unyielding
			{ itemID = 1203269, spellID = 979373 }, --Pure Flask of Unrelenting Power
			{ itemID = 1203271, spellID = 979375 }, --Pure Flask of Savage Assault
			{ itemID = 1203273, spellID = 979377 }, --Pure Flask of Shattering Thunder
			{ itemID = 1203275, spellID = 979379 }, --Pure Flask of the Executioner
			{ itemID = 1203277, spellID = 979381 }, --Pure Flask of Deep Meditation
			{ itemID = 1203279, spellID = 979383 }, --Pure Flask of Adept Striking
		},
	},
}



---------------------
--- Blacksmithing ---
---------------------

AtlasLoot_Data["SmithingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = BLACKSMITHING,
	Type = "BCCrafting",
	{
		Name = "Armor" .. color.WHITE .. " - Chest",
		{
			{ itemID = 28484, spellID = 34534 }, --Bulwark of Kings
			{ itemID = 28485, spellID = 36257 }, --Bulwark of the Ancient Kings
			{ itemID = 23565, spellID = 36256 }, --Embrace of the Twisting Nether
			{ itemID = 31369, spellID = 38477 }, --Iceguard Breastplate
			{ itemID = 23564, spellID = 34530 }, --Twisting Nether Chain Shirt
			{ itemID = 31364, spellID = 38473 }, --Wildguard Breastplate
			{ itemID = 34377, spellID = 46144 }, --Hard Khorium Battleplate
			{ itemID = 34379, spellID = 46142 }, --Sunblessed Breastplate
			{ itemID = 23527, spellID = 29649 }, --Earthpeace Breastplate
			{ itemID = 23522, spellID = 29645 }, --Ragesteel Breastplate
			{ itemID = 23513, spellID = 29617 }, --Flamebane Breastplate
			{ itemID = 23509, spellID = 29610 }, --Enchanted Adamantite Breastplate
			{ itemID = 28483, spellID = 34533 }, --Breastplate of Kings
			{ itemID = 23563, spellID = 34529 }, --Nether Chain Shirt
			{ itemID = 23507, spellID = 29606 }, --Adamantite Breastplate
		},
		{
			{ itemID = 30074, spellID = 36129 }, --Heavy Earthforged Breastplate
			{ itemID = 30076, spellID = 36130 }, --Stormforged Hauberk
			{ itemID = 23489, spellID = 29550 }, --Fel Iron Breastplate
			{ itemID = 23490, spellID = 29556 }, --Fel Iron Chain Tunic
		}
	},
	{
		Name = "Armor" .. color.WHITE .. " - Feet",
		{
			{ itemID = 30033, spellID = 36391 }, --Boots of the Protector
			{ itemID = 30031, spellID = 36392 }, --Red Havoc Boots
			{ itemID = 32402, spellID = 40033 }, --Shadesteel Sabots
			{ itemID = 23525, spellID = 29630 }, --Khorium Boots
			{ itemID = 23511, spellID = 29611 }, --Enchanted Adamantite Boots
			{ itemID = 23487, spellID = 29548 }, --Fel Iron Plate Boots
		}
	},
	{
		Name = "Armor" .. color.WHITE .. " - Hands",
		{
			{ itemID = 23526, spellID = 29648 }, --Swiftsteel Gloves
			{ itemID = 23531, spellID = 29658 }, --Felfury Gauntlets
			{ itemID = 23532, spellID = 29622 }, --Gauntlets of the Iron Tower
			{ itemID = 23533, spellID = 29662 }, --Steelgrip Gauntlets
			{ itemID = 34380, spellID = 46140 }, --Sunblessed Gauntlets
			{ itemID = 34378, spellID = 46141 }, --Hard Khorium Battlefists
			{ itemID = 23520, spellID = 29642 }, --Ragesteel Gloves
			{ itemID = 23517, spellID = 29619 }, --Felsteel Gloves
			{ itemID = 23514, spellID = 29616 }, --Flamebane Gloves
			{ itemID = 23508, spellID = 29605 }, --Adamantite Plate Gloves
			{ itemID = 23491, spellID = 29552 }, --Fel Iron Chain Gloves
			{ itemID = 23482, spellID = 29545 }, --Fel Iron Plate Gloves
		}
	},
	{
		Name = "Armor" .. color.WHITE .. " - Head",
		{
			{ itemID = 31371, spellID = 38479 }, --Iceguard Helm
			{ itemID = 31368, spellID = 38476 }, --Wildguard Helm
			{ itemID = 23535, spellID = 29664 }, --Helm of the Stalwart Defender
			{ itemID = 23536, spellID = 29668 }, --Oathkeeper's Helm
			{ itemID = 23534, spellID = 29663 }, --Storm Helm
			{ itemID = 23519, spellID = 29621 }, --Felsteel Helm
			{ itemID = 23521, spellID = 29643 }, --Ragesteel Helm
			{ itemID = 23516, spellID = 29615 }, --Flamebane Helm
			{ itemID = 23493, spellID = 29551 }, --Fel Iron Chain Coif
		}
	},
	{
		Name = "Armor" .. color.WHITE .. " - Legs",
		{
			{ itemID = 31370, spellID = 38478 }, --Iceguard Leggings
			{ itemID = 32404, spellID = 40035 }, --Shadesteel Greaves
			{ itemID = 31367, spellID = 38475 }, --Wildguard Leggings
			{ itemID = 23512, spellID = 29613 }, --Enchanted Adamantite Leggings
			{ itemID = 23518, spellID = 29620 }, --Felsteel Leggings
			{ itemID = 23523, spellID = 29629 }, --Khorium Pants
			{ itemID = 23488, spellID = 29549 }, --Fel Iron Plate Pants
		}
	},
	{
		Name = "Armor" .. color.WHITE .. " - Shoulder",
		{		
			{ itemID = 32573, spellID = 41135 }, --Dawnsteel Shoulders
			{ itemID = 33173, spellID = 42662 }, --Ragesteel Shoulders
			{ itemID = 32570, spellID = 41133 }, --Swiftsteel Shoulders
		}
	},
	{
		Name = "Armor" .. color.WHITE .. " - Waist",
		{
			{ itemID = 30034, spellID = 36389 }, --Belt of the Guardian
			{ itemID = 30032, spellID = 36390 }, --color.RED Belt of Battle
			{ itemID = 32401, spellID = 40036 }, --Shadesteel Girdle
			{ itemID = 23524, spellID = 29628 }, --Khorium Belt
			{ itemID = 23510, spellID = 29608 }, --Enchanted Adamantite Belt
			{ itemID = 23484, spellID = 29547 }, --Fel Iron Plate Belt
		}
	},
	{
		Name = "Armor" .. color.WHITE .. " - Wrist",
		{
			{ itemID = 32571, spellID = 41134 }, --Dawnsteel Bracers
			{ itemID = 32403, spellID = 40034 }, --Shadesteel Bracers
			{ itemID = 32568, spellID = 41132 }, --Swiftsteel Bracers
			{ itemID = 23537, spellID = 29669 }, --Black Felsteel Bracers
			{ itemID = 23539, spellID = 29672 }, --Blessed Bracers
			{ itemID = 23538, spellID = 29671 }, --Bracers of the color.GREEN Fortress
			{ itemID = 23515, spellID = 29614 }, --Flamebane Bracers
			{ itemID = 23506, spellID = 29603 }, --Adamantite Plate Bracers
			{ itemID = 23494, spellID = 29553 }, --Fel Iron Chain Bracers
		}
	},
	{
		Name = "Weapon " .. color.WHITE .." - OneHanded",
		{
			{ itemID = 28432, spellID = 34542 }, --Black Planar Edge
			{ itemID = 28427, spellID = 36258 }, --Blazefury
			{ itemID = 28426, spellID = 34537 }, --Blazeguard
			{ itemID = 28438, spellID = 34546 }, --Dragonmaw
			{ itemID = 28439, spellID = 36262 }, --Dragonstrike
			{ itemID = 28433, spellID = 36260 }, --Wicked Edge of the Planes
			{ itemID = 23555, spellID = 29699 }, --Dirge
			{ itemID = 23554, spellID = 29698 }, --Eternium Runed Blade
			{ itemID = 23542, spellID = 29694 }, --Fel Edged Battleaxe
			{ itemID = 23540, spellID = 29692 }, --Felsteel Longblade
			{ itemID = 23556, spellID = 29700 }, --Hand of Eternity
			{ itemID = 23544, spellID = 29696 }, --Runic Hammer
			{ itemID = 28437, spellID = 34545 }, --Drakefist Hammer
			{ itemID = 28425, spellID = 34535 }, --Fireguard
			{ itemID = 28431, spellID = 34541 }, --The Planar Edge
		},
		{
			{ itemID = 29204, spellID = 34983 }, --Felsteel Whisper Knives
			{ itemID = 30089, spellID = 36136 }, --Lavaforged Warhammer
			{ itemID = 30087, spellID = 36134 }, --Stormforged Axe
			{ itemID = 30077, spellID = 36131 }, --Windforged Rapier
			{ itemID = 23505, spellID = 29571 }, --Adamantite Rapier
			{ itemID = 23504, spellID = 29569 }, --Adamantite Dagger
			{ itemID = 23498, spellID = 29558 }, --Fel Iron Hammer
			{ itemID = 23497, spellID = 29557 }, --Fel Iron Hatchet
		}
	},
	{
		Name = "Weapon " .. color.WHITE .." - TwoHanded",
		{
			{ itemID = 28436, spellID = 36261 }, --Bloodmoon
			{ itemID = 28441, spellID = 34548 }, --Deep Thunder
			{ itemID = 28429, spellID = 34540 }, --Lionheart Champion
			{ itemID = 28430, spellID = 36259 }, --Lionheart Executioner
			{ itemID = 28435, spellID = 34544 }, --Mooncleaver
			{ itemID = 28442, spellID = 36263 }, --Stormherald
			{ itemID = 23546, spellID = 29697 }, --Fel Hardened Maul
			{ itemID = 23543, spellID = 29695 }, --Felsteel Reaper
			{ itemID = 32854, spellID = 43846 }, --Hammer of Righteous Might
			{ itemID = 23541, spellID = 29693 }, --Khorium Champion
			{ itemID = 28428, spellID = 34538 }, --Lionheart Blade
			{ itemID = 28434, spellID = 34543 }, --Lunar Crescent
			{ itemID = 28440, spellID = 34547 }, --Thunder
			{ itemID = 30093, spellID = 36137 }, --Great Earthforged Hammer
			{ itemID = 30088, spellID = 36135 }, --Skyforged Great Axe
		},
		{
			{ itemID = 30086, spellID = 36133 }, --Stoneforged Claymore
			{ itemID = 23503, spellID = 29568 }, --Adamantite Cleaver
			{ itemID = 23502, spellID = 29566 }, --Adamantite Maul
			{ itemID = 23499, spellID = 29565 }, --Fel Iron Greatsword
		},
	},
	{
		Name = "Item Enhancements",
		{
			{ itemID = 23530, spellID = 29657 }, --Felsteel Shield Spike
			{ itemID = 23529, spellID = 29656 }, --Adamantite Sharpening Stone
			{ itemID = 28421, spellID = 34608 }, --Adamantite Weightstone
			{ itemID = 33185, spellID = 42688 }, --Adamantite Weapon Chain
			{ itemID = 18262, spellID = 22757 }, --Elemental Sharpening Stone
			{ itemID = 12645, spellID = 16651 }, --Thorium Shield Spike
			{ itemID = 7969, spellID = 9964 }, --Mithril Spurs
			{ itemID = 7967, spellID = 9939 }, --Mithril Shield Spike
			{ itemID = 23576, spellID = 29729 }, --Greater Ward of Shielding
			{ itemID = 25521, spellID = 32285 }, --Greater Rune of Warding
			{ itemID = 23575, spellID = 29728 }, --Lesser Ward of Shielding
			{ itemID = 23559, spellID = 32284 }, --Lesser Rune of Warding
			{ itemID = 23528, spellID = 29654 }, --Fel Sharpening Stone
			{ itemID = 28420, spellID = 34607 }, --Fel Weightstone
		}
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 15872, spellID = 19669 }, --Arcanite Skeleton Key
			{ itemID = 25845, spellID = 32657 }, --Eternium Rod
			{ itemID = 25844, spellID = 32656 }, --Adamantite Rod
			{ itemID = 25843, spellID = 32655 }, --Fel Iron Rod
		}
	},
	{
		Name = ARMORSMITH,
		{
			{ itemID = 30074, spellID = 36129 }, --Heavy Earthforged Breastplate
			{ itemID = 30076, spellID = 36130 }, --Stormforged Hauberk
			{ itemID = 28483, spellID = 34533 }, --Breastplate of Kings
			{ itemID = 23563, spellID = 34529 }, --Nether Chain Shirt
			{ itemID = 28484, spellID = 34534 }, --Bulwark of Kings
			{ itemID = 28485, spellID = 36257 }, --Bulwark of the Ancient Kings
			{ itemID = 23565, spellID = 36256 }, --Embrace of the Twisting Nether
			{ itemID = 23564, spellID = 34530 }, --Twisting Nether Chain Shirt
		}
	},
	{
		Name = WEAPONSMITH,
		{
			{ itemID = 30071, spellID = 36125 }, --Light Earthforged Blade
			{ itemID = 30073, spellID = 36128 }, --Light Emberforged Hammer
			{ itemID = 30072, spellID = 36126 }, --Light Skyforged Axe
		}
	},
	{
		Name = AXESMITH,
		{
			{ itemID = 30088, spellID = 36135 }, --Skyforged Great Axe
			{ itemID = 30087, spellID = 36134 }, --Stormforged Axe
			{ itemID = 28434, spellID = 34543 }, --Lunar Crescent
			{ itemID = 28431, spellID = 34541 }, --The Planar Edge
			{ itemID = 28432, spellID = 34542 }, --Black Planar Edge
			{ itemID = 28436, spellID = 36261 }, --Bloodmoon
			{ itemID = 28435, spellID = 34544 }, --Mooncleaver
			{ itemID = 28433, spellID = 36260 }, --Wicked Edge of the Planes
		}
	},
	{
		Name = HAMMERSMITH,
		{
			{ itemID = 30093, spellID = 36137 }, --Great Earthforged Hammer
			{ itemID = 30089, spellID = 36136 }, --Lavaforged Warhammer
			{ itemID = 28437, spellID = 34545 }, --Drakefist Hammer
			{ itemID = 28440, spellID = 34547 }, --Thunder
			{ itemID = 28441, spellID = 34548 }, --Deep Thunder
			{ itemID = 28438, spellID = 34546 }, --Dragonmaw
			{ itemID = 28439, spellID = 36262 }, --Dragonstrike
			{ itemID = 28442, spellID = 36263 }, --Stormherald
		}
	},
	{
		Name = SWORDSMITH,
		{
			{ itemID = 30086, spellID = 36133 }, --Stoneforged Claymore
			{ itemID = 30077, spellID = 36131 }, --Windforged Rapier
			{ itemID = 28425, spellID = 34535 }, --Fireguard
			{ itemID = 28428, spellID = 34538 }, --Lionheart Blade
			{ itemID = 28427, spellID = 36258 }, --Blazefury
			{ itemID = 28426, spellID = 34537 }, --Blazeguard
			{ itemID = 28429, spellID = 34540 }, --Lionheart Champion
			{ itemID = 28430, spellID = 36259 }, --Lionheart Executioner
		}
	},
	{
		Name = "High Risk",
		{
			{ name = "Rare", icon = "INV_Box_01"},
			{ itemID = 1204033, spellID = 979534 }, --Hulking Belt Buckle
			{ itemID = 1204035, spellID = 979536 }, --Blade Master's Belt Buckle
			{ itemID = 1204037, spellID = 979538 }, --Agile Belt Buckle
			{ itemID = 1204039, spellID = 979540 }, --Eluding Belt Buckle
			{ itemID = 1204041, spellID = 979542 }, --Scholar's Belt Buckle
			{ itemID = 1204043, spellID = 979544 }, --Priestly Belt Buckle
			{ itemID = 1204045, spellID = 979546 }, --Champion\'s Belt Buckle
			{ itemID = 1204047, spellID = 979548 }, --Guarded Belt Buckle
		},
		{
			{ name = "Epic", icon = "INV_Box_01"},
			{ itemID = 1204034, spellID = 979535 }, --Mastercraft Hulking Belt Buckle
			{ itemID = 1204036, spellID = 979537 }, --Mastercraft Blade Master's Belt Buckle
			{ itemID = 1204038, spellID = 979539 }, --Mastercraft Agile Belt Buckle
			{ itemID = 1204040, spellID = 979541 }, --Mastercraft Eluding Belt Buckle
			{ itemID = 1204042, spellID = 979543 }, --Mastercraft Scholar's Belt Buckle
			{ itemID = 1204044, spellID = 979545 }, --Mastercraft Priestly Belt Buckle
			{ itemID = 1204046, spellID = 979547 }, --Mastercraft Champion\'s Belt Buckle
			{ itemID = 1204048, spellID = 979549 }, --Mastercraft Guarded Belt Buckle
		}
	},
}

---------------
--- Cooking ---
---------------

AtlasLoot_Data["CookingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = COOKING,
	Type = "BCCrafting",
	{
		Name = "Page 1",
		{
			{ itemID = 33052, spellID = 42302 }, --Fisherman's Feast
			{ itemID = 33053, spellID = 42305 }, --Hot Buttered Trout
			{ itemID = 27667, spellID = 33296 }, --Spicy Crawdad
			{ itemID = 31673, spellID = 38868 }, --Crunchy Serpent
			{ itemID = 31672, spellID = 38867 }, --Mok'Nathal Shortribs
			{ itemID = 27666, spellID = 33295 }, --Golden Fish Sticks
			{ itemID = 34411, spellID = 45022 }, --Hot Apple Cider
			{ itemID = 27658, spellID = 33287 }, --Roasted Clefthoof
			{ itemID = 33825, spellID = 43707 }, --Skullfish Soup
			{ itemID = 33872, spellID = 43765 }, --Spicy Hot Talbuk
			{ itemID = 27660, spellID = 33289 }, --Talbuk Steak
			{ itemID = 27659, spellID = 33288 }, --Warp Burger
			{ itemID = 27664, spellID = 33293 }, --Grilled Mudfish
			{ itemID = 27665, spellID = 33294 }, --Poached Bluefish
			{ itemID = 33048, spellID = 42296 }, --Stewed Trout
		},
		{
			{ itemID = 27657, spellID = 33286 }, --Blackened Basilisk
			{ itemID = 27663, spellID = 33292 }, --Blackened Sporefish
			{ itemID = 27656, spellID = 33285 }, --Sporeling Snack
			{ itemID = 27661, spellID = 33290 }, --Blackened Trout
			{ itemID = 33867, spellID = 43761 }, --Broiled Bloodfin
			{ itemID = 27651, spellID = 33279 }, --Buzzard Bites
			{ itemID = 30155, spellID = 36210 }, --Clam Bar
			{ itemID = 21023, spellID = 25659 }, --Dirge's Kickin' Chimaerok Chops
			{ itemID = 100626, spellID = 966455 }, --Azerothian Schmorgus Boards
			{ itemID = 100609, spellID = 966436 }, --Chilled Lava Eels
			{ itemID = 100608, spellID = 966435 }, --Chillwind Flank Steaks
			{ itemID = 100607, spellID = 966434 }, --Hippogryph Steaks
			{ itemID = 100606, spellID = 966433 }, --Steamed Makrinni Claws
			{ itemID = 100605, spellID = 966432 }, --Rubbed Ravasaur Ribss
			{ itemID = 100604, spellID = 966431 }, --Hearty Stegodon Stews
		}
	},
	{
		Name = "Page 2",
		{
			{ itemID = 100603, spellID = 966430 }, --Crispy Pterrordax Wings
			{ itemID = 100602, spellID = 966429 }, --Spicy Dino Jerkys
			{ itemID = 100601, spellID = 966428 }, --Dirge's Nevermelt Ice Creams
			{ itemID = 100599, spellID = 966427 }, --Silithid Snacks
			{ itemID = 100598, spellID = 966426 }, --Hydra Scale Soups
			{ itemID = 100597, spellID = 966425 }, --Ghostly Goulashs
			{ itemID = 100583, spellID = 966398 }, --Seared Cunning Carps
			{ itemID = 33874, spellID = 43772 }, --Kibler's Bits
			{ itemID = 27655, spellID = 33284 }, --Ravager Dog
			{ itemID = 33866, spellID = 43758 }, --Stormchops
		}
	},
	{
		Name = "High Risk",
		{
			{ name = "Rare", icon = "INV_Box_01"},
			{ itemID = 1203280, spellID = 979384 }, --Infused Living Soup
			{ itemID = 1203282, spellID = 979386 }, --Infused Charred Steak
			{ itemID = 1203284, spellID = 979388 }, --Infused Steamed Wontons
			{ itemID = 1203286, spellID = 979390 }, --Infused Air Fried Chops
			{ itemID = 1203288, spellID = 979392 }, --Infused Rock\'s Stew (Airsick lowlander flavor text)
			{ itemID = 1203290, spellID = 979394 }, --Infused Clear-Cut Chops
			{ itemID = 1203292, spellID = 979396 }, --Infused Clear-Cut Wontons
			{ itemID = 1203294, spellID = 979398 }, --Infused Clear-Cut Steak
			{ itemID = 1203358, spellID = 979463 }, --Infused Bold Simmered Stew
			{ itemID = 1203360, spellID = 979465 }, --Infused Bold Duck Stew
			{ itemID = 1203338, spellID = 979443 }, --Infused Subtle Chops
			{ itemID = 1203340, spellID = 979445 }, --Infused Subtle Steak
			{ itemID = 1203342, spellID = 979447 }, --Infused Subtle Wontons
			{ itemID = 1203344, spellID = 979449 }, --Infused Subtle Soup
			{ itemID = 1203346, spellID = 979451 }, --Infused Bold Stew
			{ itemID = 1203296, spellID = 979400 }, --Infused Piercing Chops
			{ itemID = 1203298, spellID = 979402 }, --Infused Piercing Steak
			{ itemID = 1203300, spellID = 979404 }, --Infused Seared Wontons
			{ itemID = 1203302, spellID = 979406 }, --Infused Seared Chops
			{ itemID = 1203316, spellID = 979421 }, --Infused Duck Stew
			{ itemID = 1203318, spellID = 979423 }, --Infused Chunky Stew
			{ itemID = 1203320, spellID = 979425 }, --Infused Simmered Stew
			{ itemID = 1203322, spellID = 979427 }, --Infused Wizard Wontons
			{ itemID = 1203324, spellID = 979429 }, --Infused Wizard Soup
			{ itemID = 1203326, spellID = 979431 }, --Infused Heightened Wontons
			{ itemID = 1203336, spellID = 979441 }, --Infused Vibrant Chops
			{ itemID = 1203304, spellID = 979408 }, --Infused Savory Stew
			{ itemID = 1203306, spellID = 979410 }, --Infused Savory Chops
			{ itemID = 1203308, spellID = 979413 }, --Infused Savory Steak
			{ itemID = 1203310, spellID = 979415 }, --Infused Savory Wontons
			{ itemID = 1203312, spellID = 979417 }, --Infused color.RED-Hot Stew
			{ itemID = 1203314, spellID = 979419 }, --Infused Blazing Stew
			{ itemID = 1203328, spellID = 979433 }, --Infused Hearty Living Soup
			{ itemID = 1203330, spellID = 979435 }, --Infused Hearty Air Fried Chops
			{ itemID = 1203332, spellID = 979437 }, --Infused Hearty Charred Steak
			{ itemID = 1203334, spellID = 979439 }, --Infused Hearty Steamed Wontons
			{ itemID = 1203348, spellID = 979453 }, --Infused Mana Charged Roast
			{ itemID = 1203350, spellID = 979455 }, --Infused Sizzling Roast
			{ itemID = 1203352, spellID = 979457 }, --Infused Wild Roast
			{ itemID = 1203354, spellID = 979459 }, --Infused Winter Roast
			{ itemID = 1203356, spellID = 979461 }, --Infused Blackened Roast
		},
		{
			{ name = "Epic", icon = "INV_Box_01"},
			{ itemID = 1203281, spellID = 979385 }, --Charged Living Soup
			{ itemID = 1203283, spellID = 979387 }, --Charged Charred Steak
			{ itemID = 1203285, spellID = 979389 }, --Charged Steamed Wontons
			{ itemID = 1203287, spellID = 979391 }, --Charged Air Fried Chops
			{ itemID = 1203289, spellID = 979393 }, --Charged Rock\'s Stew (Airsick lowlander flavor text)
			{ itemID = 1203291, spellID = 979395 }, --Charged Clear-Cut Chops
			{ itemID = 1203293, spellID = 979397 }, --Charged Clear-Cut Wontons
			{ itemID = 1203295, spellID = 979399 }, --Charged Clear-Cut Steak
			{ itemID = 1203359, spellID = 979464 }, --Charged Bold Simmered Stew
			{ itemID = 1203361, spellID = 979466 }, --Charged Bold Duck Stew
			{ itemID = 1203339, spellID = 979444 }, --Charged Subtle Chops
			{ itemID = 1203341, spellID = 979446 }, --Charged Subtle Steak
			{ itemID = 1203343, spellID = 979448 }, --Charged Subtle Wontons
			{ itemID = 1203345, spellID = 979450 }, --Charged Subtle Soup
			{ itemID = 1203347, spellID = 979452 }, --Charged Bold Stew
			{ itemID = 1203297, spellID = 979401 }, --Charged Piercing Chops
			{ itemID = 1203299, spellID = 979403 }, --Charged Piercing Steak
			{ itemID = 1203301, spellID = 979405 }, --Charged Seared Wontons
			{ itemID = 1203303, spellID = 979407 }, --Charged Seared Chops
			{ itemID = 1203317, spellID = 979422 }, --Charged Duck Stew
			{ itemID = 1203319, spellID = 979424 }, --Charged Chunky Stew
			{ itemID = 1203321, spellID = 979426 }, --Charged Simmered Stew
			{ itemID = 1203323, spellID = 979428 }, --Charged Wizard Wontons
			{ itemID = 1203325, spellID = 979430 }, --Charged Wizard Soup
			{ itemID = 1203327, spellID = 979432 }, --Charged Heightened Wontons
			{ itemID = 1203337, spellID = 979442 }, --Charged Vibrant Chops
			{ itemID = 1203305, spellID = 979409 }, --Charged Savory Stew
			{ itemID = 1203307, spellID = 979412 }, --Charged Savory Chops
			{ itemID = 1203309, spellID = 979414 }, --Charged Savory Steak
			{ itemID = 1203311, spellID = 979416 }, --Charged Savory Wontons
			{ itemID = 1203313, spellID = 979418 }, --Charged color.RED-Hot Stew
			{ itemID = 1203315, spellID = 979420 }, --Charged Blazing Stew
			{ itemID = 1203329, spellID = 979434 }, --Charged Hearty Living Soup
			{ itemID = 1203331, spellID = 979436 }, --Charged Hearty Air Fried Chops
			{ itemID = 1203333, spellID = 979438 }, --Charged Hearty Charred Steak
			{ itemID = 1203335, spellID = 979440 }, --Charged Hearty Steamed Wontons
			{ itemID = 1203349, spellID = 979454 }, --Charged Mana Charged Roast
			{ itemID = 1203351, spellID = 979456 }, --Charged Sizzling Roast
			{ itemID = 1203353, spellID = 979458 }, --Charged Wild Roast
			{ itemID = 1203355, spellID = 979460 }, --Charged Winter Roast
			{ itemID = 1203357, spellID = 979462 }, --Charged Blackened Roast
		}
	},
}

------------------
--- Enchanting ---
------------------

AtlasLoot_Data["EnchantingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = ENCHANTING,
	Type = "BCCrafting",
	{
		Name = "Enchant Boots",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27954 }, --Enchant Boots - Surefooted
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34008 }, --Enchant Boots - Boar's Speed
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34007 }, --Enchant Boots - Cat's Swiftness
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27951 }, --Enchant Boots - Dexterity
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27950 }, --Enchant Boots - Fortitude
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27948 }, --Enchant Boots - Vitality
		}
	},
	{
		Name = "Enchant Bracer",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27917 }, --Enchant Bracers - Spellpower
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27914 }, --Enchant Bracers - Fortitude
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27913 }, --Enchant Bracers - Restore Mana Prime
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27911 }, --Enchant Bracers - Superior Healing
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27906 }, --Enchant Bracers - Major Defense
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27905 }, --Enchant Bracers - Stats
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27899 }, --Enchant Bracers - Brawn
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34001 }, --Enchant Bracers - Major Intellect
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34002 }, --Enchant Bracers - Assault
		},
	},
	{
		Name = "Enchant Chest",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 46594 }, --Enchant Chest - Defense
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27960 }, --Enchant Chest - Exceptional Stats
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33992 }, --Enchant Chest - Major Resilience
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33990 }, --Enchant Chest - Major Spirit
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27957 }, --Enchant Chest - Exceptional Health
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33991 }, --Enchant Chest - Restore Mana Prime
		},
	},
	{
		Name = "Enchant Cloak",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 47051 }, --Enchant Cloak - Steelweave
			{ icon = "Spell_Holy_GreaterHeal", spellID = 351501 }, --Enchant Cloak - Crushing Wave
			{ icon = "Spell_Holy_GreaterHeal", spellID = 351530 }, --Enchant Cloak - Phoenix Fire
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34005 }, --Enchant Cloak - Greater Arcane Resistance
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34006 }, --Enchant Cloak - Greater Shadow Resistance
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27962 }, --Enchant Cloak - Major Resistance
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34003 }, --Enchant Cloak - Spell Penetration
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34004 }, --Enchant Cloak - Greater Agility
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27961 }, --Enchant Cloak - Major Armor
			{ icon = "Spell_Holy_GreaterHeal", spellID = 25082 }, --Enchant Cloak - Greater Nature Resistance
			{ icon = "Spell_Holy_GreaterHeal", spellID = 25083 }, --Enchant Cloak - Stealth
			{ icon = "Spell_Holy_GreaterHeal", spellID = 25084 }, --Enchant Cloak - Subtlety
			{ icon = "Spell_Holy_GreaterHeal", spellID = 25086 }, --Enchant Cloak - Dodge
		},
	},
	{
		Name = "Enchant Gloves",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33997 }, --Enchant Gloves - Major Spellpower
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33994 }, --Enchant Gloves - Spell Strike
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33999 }, --Enchant Gloves - Major Healing
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33995 }, --Enchant Gloves - Major Strength
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33996 }, --Enchant Gloves - Assault
			{ icon = "Spell_Holy_GreaterHeal", spellID = 33993 }, --Enchant Gloves - Blasting
			{ icon = "Spell_Holy_GreaterHeal", spellID = 225080 }, --Enchant Gloves - Superior Agility
			{ icon = "Spell_Holy_GreaterHeal", spellID = 25072 }, --Enchant Gloves - Threat
		},
	},
	{
		Name = "Enchant Ring",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27927 }, --Enchant Ring - Stats
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27926 }, --Enchant Ring - Healing Power
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27924 }, --Enchant Ring - Spellpower
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27920 }, --Enchant Ring - Striking
		},
	},
	{
		Name = "Enchant Shield",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27947 }, --Enchant Shield - Resistance
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27946 }, --Enchant Shield - Shield Block
			{ icon = "Spell_Holy_GreaterHeal", spellID = 44383 }, --Enchant Shield - Resilience
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27945 }, --Enchant Shield - Intellect
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34009 }, --Enchant Shield - Major Stamina
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27944 }, --Enchant Shield - Tough Shield
		},
	},
	{
		Name = "Enchant 2H Weapon",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27977 }, --Enchant 2H Weapon - Major Agility
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27971 }, --Enchant 2H Weapon - Savagery
		},
	},
	{
		Name = "Enchant Weapon",
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 351535 }, --Enchant Weapon - Witchdoctor
			{ icon = "Spell_Holy_GreaterHeal", spellID = 42974 }, --Enchant Weapon - Executioner
			{ icon = "Spell_Holy_GreaterHeal", spellID = 820034 }, --Enchant Weapon - Undaunted Might
			{ icon = "Spell_Holy_GreaterHeal", spellID = 359012 }, --Enchant Weapon - Faith
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27984 }, --Enchant Weapon - Mongoose
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27982 }, --Enchant Weapon - Soulfrost
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27981 }, --Enchant Weapon - Sunfire
		},
		{
			{ icon = "Spell_Holy_GreaterHeal", spellID = 28004 }, --Enchant Weapon - Battlemaster
			{ icon = "Spell_Holy_GreaterHeal", spellID = 28003 }, --Enchant Weapon - Spellsurge
			{ icon = "Spell_Holy_GreaterHeal", spellID = 46578 }, --Enchant Weapon - Deathfrost
			{ icon = "Spell_Holy_GreaterHeal", spellID = 34010 }, --Enchant Weapon - Major Healing
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27975 }, --Enchant Weapon - Major Spellpower
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27972 }, --Enchant Weapon - Potency
			{ icon = "Spell_Holy_GreaterHeal", spellID = 42620 }, --Enchant Weapon - Greater Agility
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27968 }, --Enchant Weapon - Major Intellect
			{ icon = "Spell_Holy_GreaterHeal", spellID = 27967 }, --Enchant Weapon - Major Striking
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 22463, spellID = 32667 }, --Runed Eternium Rod
			{ itemID = 22449, spellID = 45765 }, --Void Shatter
			{ itemID = 22448, spellID = 42615 }, --Small Prismatic Shard
			{ itemID = 22449, spellID = 28022 }, --Large Prismatic Shard
			{ itemID = 22460, spellID = 28027 }, --Prismatic Sphere
			{ itemID = 22448, spellID = 42613 }, --Nexus Transformation
			{ itemID = 11811, spellID = 15596 }, --Smoking Heart of the Mountain
			{ itemID = 22462, spellID = 32665 }, --Runed Adamantite Rod
			{ itemID = 22522, spellID = 28019 }, --Superior Wizard Oil
			{ itemID = 22521, spellID = 28016 }, --Superior Mana Oil
		},
	},
	{
		Name = "High Risk",
		{
			{ name = "Rare", icon = "INV_Box_01"},
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968677 }, --Enchant Weapon - Void Assault
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968680 }, --Enchant Weapon - Dread Assault
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968683 }, --Enchant Weapon - Twisted Evoker
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968686 }, --Enchant Weapon - Twisted Assault
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968689 }, --Enchant Weapon - Twisted Channeler
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968692 }, --Enchant Weapon - Dread Omen Strikes
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968695 }, --Enchant Weapon - Void Flows
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968698 }, --Enchant Weapon - Void Blasting
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968701 }, --Enchant Weapon - Dread Precision
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968770 }, --Enchant Weapon - Twisted Crusader
		},
		{
			{ name = "Epic", icon = "INV_Box_01"},
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968678 }, --Enchant Weapon - Overpowering Void Assault
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968681 }, --Enchant Weapon - Overpowering Dread Assault
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968684 }, --Enchant Weapon - Overpowering Twisted Evoker
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968687 }, --Enchant Weapon - Overpowering Twisted Assault
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968690 }, --Enchant Weapon - Overpowering Twisted Channeler
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968693 }, --Enchant Weapon - Overpowering Dread Omen Strikes
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968696 }, --Enchant Weapon - Overpowering Void Flows
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968699 }, --Enchant Weapon - Overpowering Void Blasting
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968702 }, --Enchant Weapon - Overpowering Dread Precision
			{ icon = "Spell_Holy_GreaterHeal", spellID = 1968771 }, --Enchant Weapon - Overpowering Twisted Crusader
		},
	},
}


-------------------
--- Engineering ---
-------------------

AtlasLoot_Data["EngineeringTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = ENGINEERING,
	Type = "BCCrafting",
	{
		Name = "Ammunition",
		{
			{ itemID = 20475, spellID = 43676 }, --Adamantite Arrow Maker
			{ itemID = 34504, spellID = 30347 }, --Adamantite Shell Machine
			{ itemID = 23772, spellID = 30346 }, --Fel Iron Shells
		},
	},
	{
		Name = "Armor",
		{
			{ itemID = 34847, spellID = 46111 }, --Annihilator Holo-Gogs
			{ itemID = 23838, spellID = 30565 }, --Foreman's Enchanted Helmet
			{ itemID = 23839, spellID = 30566 }, --Foreman's Reinforced Helmet
			{ itemID = 23829, spellID = 30575 }, --Gnomish Battle Goggles
			{ itemID = 23828, spellID = 30574 }, --Gnomish Power Goggles
			{ itemID = 34357, spellID = 46115 }, --Hard Khorium Goggles
			{ itemID = 35182, spellID = 46109 }, --Hyper-Magnified Moon Specs
			{ itemID = 35185, spellID = 46107 }, --Justicebringer 3000 Specs
			{ itemID = 34355, spellID = 46112 }, --Lightning Etched Specs
			{ itemID = 34354, spellID = 46114 }, --Mayhem Projection Goggles
			{ itemID = 35181, spellID = 46108 }, --Powerheal 9000 Lens
			{ itemID = 35184, spellID = 46110 }, --Primal-Attuned Goggles
		},
		{
			{ itemID = 34353, spellID = 46116 }, --Quad Deathblow X44 Goggles
			{ itemID = 34356, spellID = 46113 }, --Surestrike Goggles v3.0
			{ itemID = 35183, spellID = 46106 }, --Wonderheal XT68 Shades
			{ itemID = 32478, spellID = 41317 }, --Deathblow X11 Goggles
			{ itemID = 32474, spellID = 41314 }, --Surestrike Goggles v2.0
			{ itemID = 32494, spellID = 41320 }, --Destruction Holo-gogs
			{ itemID = 32461, spellID = 40274 }, --Furious Gizmatic Goggles
			{ itemID = 32476, spellID = 41315 }, --Gadgetstorm Goggles
			{ itemID = 32472, spellID = 41311 }, --Justicebringer 2000 Specs
			{ itemID = 32475, spellID = 41316 }, --Living Replicator Specs
			{ itemID = 32480, spellID = 41319 }, --Magnified Moon Specs
			{ itemID = 32473, spellID = 41312 }, --Tankatronic Goggles
		},
	},
	{
		Name = "Armor",
		{
			{ itemID = 23763, spellID = 30325 }, --Hyper-Vision Goggles
			{ itemID = 23824, spellID = 30556 }, --Rocket Boots Xtreme
			{ itemID = 35581, spellID = 46697 }, --Rocket Boots Xtreme Lite
			{ itemID = 23836, spellID = 30563 }, --Goblin Rocket Launcher
			{ itemID = 23825, spellID = 30570 }, --Nigh-Invulnerability Belt
			{ itemID = 23762, spellID = 30318 }, --Ultra-Spectropic Detection Goggles
			{ itemID = 23758, spellID = 30316 }, --Cogspinner Goggles
			{ itemID = 23835, spellID = 30569 }, --Gnomish Poultryizer
			{ itemID = 23761, spellID = 30317 }, --Power Amplification Goggles
		},
	},
	{
		Name = "Explosives",
		{
			{ itemID = 23819, spellID = 30547 }, --Elemental Seaforium Charge
			{ itemID = 23827, spellID = 30560 }, --Super Sapper Charge
			{ itemID = 23737, spellID = 30311 }, --Adamantite Grenade
			{ itemID = 23826, spellID = 30558 }, --The Bigger One
			{ itemID = 23736, spellID = 30310 }, --Fel Iron Bomb
		},
	},
	{
		Name = "Item Enhancements",
		{
			{ itemID = 23766, spellID = 30334 }, --Stabilized Eternium Scope
			{ itemID = 23765, spellID = 30332 }, --Khorium Scope
			{ itemID = 23764, spellID = 30329 }, --Adamantite Scope
			{ itemID = 18283, spellID = 22793 }, --Biznicks 247x128 Accurascope
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 34061, spellID = 44157 }, --Turbo-Charged Flying Machine
			{ itemID = 34060, spellID = 44155 }, --Flying Machine
			{ itemID = 23774, spellID = 30348 }, --Fel Iron Toolbox
			{ itemID = 23767, spellID = 30337 }, --Crashin' Thrashin' Robot
			{ itemID = 34113, spellID = 44391 }, --Field Repair Bot 110G
			{ itemID = 33093, spellID = 30552 }, --Mana Potion Injector
			{ itemID = 23771, spellID = 30344 }, --color.GREEN Smoke Flare
			{ itemID = 25886, spellID = 32814 }, --Purple Smoke Flare
			{ itemID = 23768, spellID = 30341 }, --color.WHITE Smoke Flare
			{ itemID = 33092, spellID = 30551 }, --Healing Potion Injector
			{ itemID = 23841, spellID = 30568 }, --Gnomish Flame Turret
			{ itemID = 23821, spellID = 30548 }, --Zapthrottle Mote Extractor
		},
	},
	{
		Name = "Reagents",
		{
			{ itemID = 23787, spellID = 30309 }, --Felsteel Stabilizer
			{ itemID = 23785, spellID = 30307 }, --Hardened Adamantite Tube
			{ itemID = 23786, spellID = 30308 }, --Khorium Power Core
			{ itemID = 32423, spellID = 39971 }, --Icy Blasting Primers
			{ itemID = 23784, spellID = 30306 }, --Adamantite Frame
			{ itemID = 23783, spellID = 30305 }, --Handful of Fel Iron Bolts
			{ itemID = 23781, spellID = 30303 }, --Elemental Blasting Powder
			{ itemID = 23782, spellID = 30304 }, --Fel Iron Casing
		},
	},
	{
		Name = "Weapon",
		{
			{ itemID = 32756, spellID = 41307 }, --Gyro-balanced Khorium Destroyer
			{ itemID = 23748, spellID = 30315 }, --Ornate Khorium Rifle
			{ itemID = 23747, spellID = 30314 }, --Felsteel Boomstick
			{ itemID = 23746, spellID = 30313 }, --Adamantite Rifle
			{ itemID = 23742, spellID = 30312 }, --Fel Iron Musket
		},
	},
	{
		Name = GNOMISH,
		{
			{ itemID = 23825, spellID = 30570 }, --Nigh-Invulnerability Belt
			{ itemID = 23835, spellID = 30569 }, --Gnomish Poultryizer
			{ itemID = 30544, spellID = 36955 }, --Ultrasafe Transporter - Toshley's Station
		},
	},
	{
		Name = GOBLIN,
		{
			{ itemID = 23836, spellID = 30563 }, --Goblin Rocket Launcher
			{ itemID = 30542, spellID = 36954 }, --Dimensional Ripper - Area 52
		},
	},
	{
		Name = "High Risk",
		{
			{ name = "Rare", icon = "INV_Box_01"},
			{ itemID = 1204101, spellID = 979550 }, --Gnomish Magnification Polish
			{ itemID = 1204103, spellID = 979552 }, --Gnomish Sharpening Polish
			{ itemID = 1204105, spellID = 979554 }, --Gnomish Prismatic Polish
			{ itemID = 1204107, spellID = 979556 }, --Felfire Scope
			{ itemID = 1204109, spellID = 979558 }, --Sighted Scope
			{ itemID = 1204111, spellID = 979560 }, --Quickshot Scope
		},
		{
			{ name = "Epic", icon = "INV_Box_01"},
			{ itemID = 1204102, spellID = 979551 }, --Fine Gnomish Magnification Polish
			{ itemID = 1204104, spellID = 979553 }, --Fine Gnomish Sharpening Polish
			{ itemID = 1204106, spellID = 979555 }, --Fine Gnomish Prismatic Polish
			{ itemID = 1204108, spellID = 979557 }, --Focused Felfire Scope
			{ itemID = 1204110, spellID = 979559 }, --Focused Sighted Scope
			{ itemID = 1204112, spellID = 979561 }, --Focused Quickshot Scope
		},
	},
}

-----------------
--- First Aid ---
-----------------

AtlasLoot_Data["FirstAid"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = FIRSTAID,
	Type = "BCCrafting",
	{
		Name = FIRSTAID,
		{
			{ itemID = 34722, spellID = 45546 }, --Heavy Frostweave Bandage
			{ itemID = 34721, spellID = 45545 }, --Frostweave Bandage
			{ itemID = 21991, spellID = 27033 }, --Heavy Netherweave Bandage
			{ itemID = 21990, spellID = 27032 }, --Netherweave Bandage
			{ itemID = 19440, spellID = 23787 }, --Powerful Anti-Venom
			{ itemID = 14530, spellID = 18630 }, --Heavy Runecloth Bandage
			{ itemID = 14529, spellID = 18629 }, --Runecloth Bandage
			{ itemID = 8545, spellID = 10841 }, --Heavy Mageweave Bandage
			{ itemID = 8544, spellID = 10840 }, --Mageweave Bandage
			{ itemID = 6451, spellID = 7929 }, --Heavy Silk Bandage
			{ itemID = 6450, spellID = 7928 }, --Silk Bandage
			{ itemID = 6453, spellID = 7935 }, --Strong Anti-Venom
			{ itemID = 3531, spellID = 3278 }, --Heavy Wool Bandage
			{ itemID = 3530, spellID = 3277 }, --Wool Bandage
			{ itemID = 6452, spellID = 7934 }, --Anti-Venom
			{ itemID = 2581, spellID = 3276 }, --Heavy Linen Bandage
			{ itemID = 1251, spellID = 3275 }, --Linen Bandage
		},
	},
}

---------------------
--- Jewelcrafting ---
---------------------

AtlasLoot_Data["JewelcraftingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = JEWELCRAFTING,
	Type = "BCCrafting",
	{
		Name = "Red Gems",
		{
			{ itemID = 32193, spellID = 39705 }, --Bold Crimson Spinel
			{ itemID = 32197, spellID = 39712 }, --Bright Crimson Spinel
			{ itemID = 32194, spellID = 39706 }, --Delicate Crimson Spinel
			{ itemID = 32199, spellID = 39714 }, --Flashing Crimson Spinel
			{ itemID = 32196, spellID = 39711 }, --Runed Crimson Spinel
			{ itemID = 32198, spellID = 39713 }, --Subtle Crimson Spinel
			{ itemID = 32195, spellID = 39710 }, --Teardrop Crimson Spinel
			{ itemID = 33131, spellID = 42589 }, --Crimson Sun
			{ itemID = 33133, spellID = 42558 }, --Don Julio's Heart
			{ itemID = 33134, spellID = 42588 }, --Kailee's Rose
		},
		{
			{ itemID = 24027, spellID = 31084 }, --Bold Living Ruby
			{ itemID = 24031, spellID = 31089 }, --Bright Living Ruby
			{ itemID = 24028, spellID = 31085 }, --Delicate Living Ruby
			{ itemID = 24036, spellID = 31091 }, --Flashing Living Ruby
			{ itemID = 24030, spellID = 31088 }, --Runed Living Ruby
			{ itemID = 24032, spellID = 31090 }, --Subtle Living Ruby
			{ itemID = 24029, spellID = 31087 }, --Teardrop Living Ruby
			{ itemID = 23097, spellID = 28907 }, --Delicate Blood Garnet
			{ itemID = 23096, spellID = 28906 }, --Runed Blood Garnet
			{ itemID = 23095, spellID = 28905 }, --Bold Blood Garnet
			{ itemID = 28595, spellID = 34590 }, --Bright Blood Garnet
			{ itemID = 23094, spellID = 28903 }, --Teardrop Blood Garnet
		},
	},
	{
		Name = "Blue Gems",
		{
			{ itemID = 32202, spellID = 39717 }, --Lustrous Empyrean Sapphire
			{ itemID = 32200, spellID = 39715 }, --Solid Empyrean Sapphire
			{ itemID = 32201, spellID = 39716 }, --Sparkling Empyrean Sapphire
			{ itemID = 32203, spellID = 39718 }, --Stormy Empyrean Sapphire
			{ itemID = 33135, spellID = 42590 }, --Falling Star
			{ itemID = 24037, spellID = 31094 }, --Lustrous Star of Elune
			{ itemID = 24033, spellID = 31092 }, --Solid Star of Elune
			{ itemID = 24035, spellID = 31149 }, --Sparkling Star of Elune
			{ itemID = 24039, spellID = 31095 }, --Stormy Star of Elune
			{ itemID = 23121, spellID = 28957 }, --Lustrous Azure Moonstone
			{ itemID = 23120, spellID = 28955 }, --Stormy Azure Moonstone
			{ itemID = 23119, spellID = 28953 }, --Sparkling Azure Moonstone
			{ itemID = 23118, spellID = 28950 }, --Solid Azure Moonstone
		},
	},
	{
		Name = "Yellow Gems",
		{
			{ itemID = 32204, spellID = 39719 }, --Brilliant Lionseye
			{ itemID = 32207, spellID = 39722 }, --Gleaming Lionseye
			{ itemID = 32210, spellID = 39725 }, --Great Lionseye
			{ itemID = 32209, spellID = 39724 }, --Mystic Lionseye
			{ itemID = 35761, spellID = 47056 }, --Quick Lionseye
			{ itemID = 32206, spellID = 39721 }, --Rigid Lionseye
			{ itemID = 32205, spellID = 39720 }, --Smooth Lionseye
			{ itemID = 32208, spellID = 39723 }, --Thick Lionseye
			{ itemID = 33140, spellID = 42592 }, --Blood of Amber
			{ itemID = 33144, spellID = 42593 }, --Facet of Eternity
			{ itemID = 33143, spellID = 42591 }, --Stone of Blades
		},
		{
			{ itemID = 24047, spellID = 31096 }, --Brilliant Dawnstone
			{ itemID = 24050, spellID = 31099 }, --Gleaming Dawnstone
			{ itemID = 31861, spellID = 39452 }, --Great Dawnstone
			{ itemID = 24053, spellID = 31101 }, --Mystic Dawnstone
			{ itemID = 35315, spellID = 46403 }, --Quick Dawnstone
			{ itemID = 24051, spellID = 31098 }, --Rigid Dawnstone
			{ itemID = 24048, spellID = 31097 }, --Smooth Dawnstone
			{ itemID = 24052, spellID = 31100 }, --Thick Dawnstone
			{ itemID = 31860, spellID = 39451 }, --Great Golden Draenite
			{ itemID = 23116, spellID = 28948 }, --Rigid Golden Draenite
			{ itemID = 28290, spellID = 34069 }, --Smooth Golden Draenite
			{ itemID = 23115, spellID = 28947 }, --Thick Golden Draenite
			{ itemID = 23114, spellID = 28944 }, --Gleaming Golden Draenite
			{ itemID = 23113, spellID = 28938 }, --Brilliant Golden Draenite
		},
	},
	{
		Name = "Green Gems",
		{
			{ itemID = 32225, spellID = 39741 }, --Dazzling Seaspray Emerald
			{ itemID = 32223, spellID = 39739 }, --Enduring Seaspray Emerald
			{ itemID = 35759, spellID = 47053 }, --Forceful Seaspray Emerald
			{ itemID = 32226, spellID = 39742 }, --Jagged Seaspray Emerald
			{ itemID = 32224, spellID = 39740 }, --Radiant Seaspray Emerald
			{ itemID = 35758, spellID = 47054 }, --Steady Seaspray Emerald
		},
		{
			{ itemID = 24065, spellID = 31112 }, --Dazzling Talasite
			{ itemID = 24062, spellID = 31110 }, --Enduring Talasite
			{ itemID = 35318, spellID = 46405 }, --Forceful Talasite
			{ itemID = 24067, spellID = 31113 }, --Jagged Talasite
			{ itemID = 24066, spellID = 31111 }, --Radiant Talasite
			{ itemID = 33782, spellID = 43493 }, --Steady Talasite
			{ itemID = 23106, spellID = 28924 }, --Dazzling Deep Peridot
			{ itemID = 23105, spellID = 28918 }, --Enduring Deep Peridot
			{ itemID = 23104, spellID = 28917 }, --Jagged Deep Peridot
			{ itemID = 23103, spellID = 28916 }, --Radiant Deep Peridot
		},
	},
	{
		Name = "Orange Gems",
		{
			{ itemID = 32220, spellID = 39736 }, --Glinting Pyrestone
			{ itemID = 32217, spellID = 39733 }, --Inscribed Pyrestone
			{ itemID = 32219, spellID = 39735 }, --Luminous Pyrestone
			{ itemID = 32218, spellID = 39734 }, --Potent Pyrestone
			{ itemID = 35760, spellID = 47055 }, --Reckless Pyrestone
			{ itemID = 32221, spellID = 39737 }, --Veiled Pyrestone
			{ itemID = 32222, spellID = 39738 }, --Wicked Pyrestone
		},
		{
			{ itemID = 24061, spellID = 31109 }, --Glinting Noble Topaz
			{ itemID = 24058, spellID = 31106 }, --Inscribed Noble Topaz
			{ itemID = 24060, spellID = 31108 }, --Luminous Noble Topaz
			{ itemID = 24059, spellID = 31107 }, --Potent Noble Topaz
			{ itemID = 35316, spellID = 46404 }, --Reckless Noble Topaz
			{ itemID = 31867, spellID = 39470 }, --Veiled Noble Topaz
			{ itemID = 31868, spellID = 39471 }, --Wicked Noble Topaz
			{ itemID = 31866, spellID = 39466 }, --Veiled Flame Spessarite
			{ itemID = 31869, spellID = 39467 }, --Wicked Flame Spessarite
			{ itemID = 23100, spellID = 28914 }, --Glinting Flame Spessarite
			{ itemID = 23099, spellID = 28912 }, --Luminous Flame Spessarite
			{ itemID = 23098, spellID = 28910 }, --Inscribed Flame Spessarite
			{ itemID = 23101, spellID = 28915 }, --Potent Flame Spessarite
		},
	},
	{
		Name = "Purple Gems",
		{
			{ itemID = 32213, spellID = 39729 }, --Balanced Shadowsong Amethyst
			{ itemID = 32215, spellID = 39731 }, --Glowing Shadowsong Amethyst
			{ itemID = 32214, spellID = 39730 }, --Infused Shadowsong Amethyst
			{ itemID = 37503, spellID = 48789 }, --Purified Shadowsong Amethyst
			{ itemID = 32216, spellID = 39732 }, --Royal Shadowsong Amethyst
			{ itemID = 32212, spellID = 39728 }, --Shifting Shadowsong Amethyst
			{ itemID = 32211, spellID = 39727 }, --Sovereign Shadowsong Amethyst
			{ itemID = 31863, spellID = 39463 }, --Balanced Nightseye
			{ itemID = 24056, spellID = 31104 }, --Glowing Nightseye
			{ itemID = 31865, spellID = 39462 }, --Infused Nightseye
			{ itemID = 35707, spellID = 46803 }, --Regal Nightseye
		},
		{
			{ itemID = 24057, spellID = 31105 }, --Royal Nightseye
			{ itemID = 24055, spellID = 31103 }, --Shifting Nightseye
			{ itemID = 24054, spellID = 31102 }, --Sovereign Nightseye
			{ itemID = 32836, spellID = 41429 }, --Purified Shadow Pearl
			{ itemID = 31862, spellID = 39455 }, --Balanced Shadow Draenite
			{ itemID = 31864, spellID = 39458 }, --Infused Shadow Draenite
			{ itemID = 23111, spellID = 28936 }, --Sovereign Shadow Draenite
			{ itemID = 23110, spellID = 28933 }, --Shifting Shadow Draenite
			{ itemID = 23109, spellID = 28927 }, --Royal Shadow Draenite
			{ itemID = 23108, spellID = 28925 }, --Glowing Shadow Draenite
		},
	},
	{
		Name = "Meta Gems",
		{
			{ itemID = 35503, spellID = 46601 }, --Ember Skyfire Diamond
			{ itemID = 34220, spellID = 44794 }, --Chaotic Skyfire Diamond
			{ itemID = 25890, spellID = 32871 }, --Destructive Skyfire Diamond
			{ itemID = 25895, spellID = 32874 }, --Enigmatic Skyfire Diamond
			{ itemID = 25893, spellID = 32872 }, --Mystical Skyfire Diamond
			{ itemID = 25894, spellID = 32873 }, --Swift Skyfire Diamond
			{ itemID = 32410, spellID = 39963 }, --Thundering Skyfire Diamond
			{ itemID = 35501, spellID = 46597 }, --Eternal Earthstorm Diamond
			{ itemID = 25897, spellID = 32867 }, --Bracing Earthstorm Diamond
			{ itemID = 25899, spellID = 32869 }, --Brutal Earthstorm Diamond
			{ itemID = 25901, spellID = 32870 }, --Insightful Earthstorm Diamond
			{ itemID = 25896, spellID = 32866 }, --Powerful Earthstorm Diamond
			{ itemID = 32409, spellID = 39961 }, --Relentless Earthstorm Diamond
			{ itemID = 25898, spellID = 32868 }, --Tenacious Earthstorm Diamond
		},
	},
	{
		Name = "Prismatic Gems",
		{
			{ itemID = 22459, spellID = 28028 }, --Void Sphere
			{ itemID = 22460, spellID = 28027 }, --Prismatic Sphere
			{ itemID = 42701, spellID = 62941 }, --Prismatic Black Diamond
		},
	},
	{
		Name = "Trinkets",
		{
			{ itemID = 35700, spellID = 46777 }, --Figurine - Crimson Serpent
			{ itemID = 35693, spellID = 46775 }, --Figurine - Empyrean Tortoise
			{ itemID = 35694, spellID = 46776 }, --Figurine - Khorium Boar
			{ itemID = 35703, spellID = 46779 }, --Figurine - Seaspray Albatross
			{ itemID = 35702, spellID = 46778 }, --Figurine - Shadowsong Panther
			{ itemID = 24125, spellID = 31080 }, --Figurine - Dawnstone Crab
			{ itemID = 24124, spellID = 31079 }, --Figurine - Felsteel Boar
			{ itemID = 24126, spellID = 31081 }, --Figurine - Living Ruby Serpent
			{ itemID = 24128, spellID = 31083 }, --Figurine - Nightseye Panther
			{ itemID = 24127, spellID = 31082 }, --Figurine - Talasite Owl
		},
		{
			{ itemID = 21784, spellID = 26912 }, --Figurine - Black Diamond Crab
			{ itemID = 21789, spellID = 26914 }, --Figurine - Dark Iron Scorpid
			{ itemID = 21777, spellID = 26909 }, --Figurine - Emerald Owl
			{ itemID = 21769, spellID = 26900 }, --Figurine - Ruby Serpent
			{ itemID = 21763, spellID = 26882 }, --Figurine - Truesilver Boar
			{ itemID = 21760, spellID = 26881 }, --Figurine - Truesilver Crab
			{ itemID = 21756, spellID = 26873 }, --Figurine - Golden Hare
			{ itemID = 21748, spellID = 26872 }, --Figurine - Jade Owl
			{ itemID = 21758, spellID = 26875 }, --Figurine - Black Pearl Panther
		},
	},
	{
		Name = "Rings"..color.WHITE.." - Page 1",
		{
			{ itemID = 24086, spellID = 31057 }, --Arcane Khorium Band
			{ itemID = 24089, spellID = 31061 }, --Blazing Eternium Band
			{ itemID = 24085, spellID = 31056 }, --Khorium Band of Leaves
			{ itemID = 30825, spellID = 37855 }, --Ring of Arcane Shielding
			{ itemID = 24088, spellID = 31060 }, --Delicate Eternium Ring
			{ itemID = 24080, spellID = 31054 }, --Khorium Band of Frost
			{ itemID = 24082, spellID = 31055 }, --Khorium Inferno Band
			{ itemID = 24079, spellID = 31053 }, --Khorium Band of Shadows
			{ itemID = 24087, spellID = 31058 }, --Heavy Felsteel Ring
		},
		{
			{ itemID = 24078, spellID = 31052 }, --Heavy Adamantite Ring
			{ itemID = 32774, spellID = 41415 }, --The Black Pearl
			{ itemID = 32772, spellID = 41414 }, --Brilliant Pearl Band
			{ itemID = 24076, spellID = 31050 }, --Azure Moonstone Ring
			{ itemID = 21779, spellID = 26916 }, --Band of Natural Fire
			{ itemID = 24074, spellID = 31048 }, --Fel Iron Blood Ring
			{ itemID = 24075, spellID = 31049 }, --Golden Draenite Ring
			{ itemID = 29160, spellID = 34961 }, --Emerald Lion Ring
			{ itemID = 21778, spellID = 26910 }, --Ring of Bitter Shadows
			{ itemID = 29159, spellID = 34960 }, --Glowing Thorium Band
			{ itemID = 21775, spellID = 26907 }, --Onslaught Ring
		},
	},
	{
		Name = "Rings"..color.WHITE.." - Page 2",
		{
			{ itemID = 21768, spellID = 26903 }, --Sapphire Signet
			{ itemID = 30422, spellID = 36526 }, --Diamond Focus Ring
			{ itemID = 21767, spellID = 26902 }, --Simple Opal Ring
			{ itemID = 21753, spellID = 26896 }, --Gem Studded Band
			{ itemID = 21754, spellID = 26887 }, --The Aquamarine Ward
			{ itemID = 21765, spellID = 26885 }, --Truesilver Healing Ring
			{ itemID = 30421, spellID = 36525 }, --color.RED Ring of Destruction
			{ itemID = 20964, spellID = 26874 }, --Aquamarine Signet
			{ itemID = 29158, spellID = 34959 }, --Truesilver Commander's Ring
			{ itemID = 29157, spellID = 34955 }, --Golden Ring of Power
			{ itemID = 20961, spellID = 25621 }, --Citrine Ring of Rapid Healing
			{ itemID = 20960, spellID = 25620 }, --Engraved Truesilver Ring
			{ itemID = 20959, spellID = 25619 }, --The Jade Eye
			{ itemID = 20958, spellID = 25617 }, --Blazing Citrine Ring
			{ itemID = 20955, spellID = 25613 }, --Golden Dragon Ring
		},
		{
			{ itemID = 20833, spellID = 25323 }, --Wicked Moonstone Ring
			{ itemID = 30420, spellID = 36524 }, --Heavy Jade Ring
			{ itemID = 20828, spellID = 25318 }, --Ring of Twilight Shadows
			{ itemID = 20826, spellID = 25305 }, --Heavy Silver Ring
			{ itemID = 20827, spellID = 25317 }, --Ring of Silver Might
			{ itemID = 20823, spellID = 25287 }, --Gloom Band
			{ itemID = 30804, spellID = 37818 }, --Bronze Band of Force
			{ itemID = 20820, spellID = 25284 }, --Simple Pearl Ring
			{ itemID = 20907, spellID = 25490 }, --Solid Bronze Ring
			{ itemID = 20818, spellID = 25280 }, --Elegant Silver Ring
			{ itemID = 20821, spellID = 25283 }, --Inlaid Malachite Ring
			{ itemID = 25439, spellID = 32179 }, --Tigerseye Band
			{ itemID = 21932, spellID = 26926 }, --Heavy Copper Ring
			{ itemID = 20906, spellID = 25493 }, --Braided Copper Ring
			{ itemID = 21931, spellID = 26925 }, --Woven Copper Ring
		},
	},
	{
		Name = "Necks"..color.WHITE.." - Page 1",
		{
			{ itemID = 24117, spellID = 31072 }, --Embrace of the Dawn
			{ itemID = 24114, spellID = 31070 }, --Braided Eternium Chain
			{ itemID = 24116, spellID = 31071 }, --Eye of the Night
			{ itemID = 24092, spellID = 31062 }, --Pendant of Frozen Flame
			{ itemID = 24097, spellID = 31065 }, --Pendant of Shadow's End
			{ itemID = 24093, spellID = 31063 }, --Pendant of Thawing
			{ itemID = 24098, spellID = 31066 }, --Pendant of the Null Rune
			{ itemID = 24095, spellID = 31064 }, --Pendant of Withering
			{ itemID = 24110, spellID = 31068 }, --Living Ruby Pendant
			{ itemID = 24106, spellID = 31067 }, --Thick Felsteel Necklace
			{ itemID = 32508, spellID = 40514 }, --Necklace of the Deep
			{ itemID = 24077, spellID = 31051 }, --Thick Adamantite Necklace
			{ itemID = 21792, spellID = 26915 }, --Necklace of the Diamond Tower
		},
	},
	{
		Name = "Necks"..color.WHITE.." - Page 2",
		{
			{ itemID = 21791, spellID = 26911 }, --Living Emerald Pendant
			{ itemID = 21790, spellID = 26908 }, --Sapphire Pendant of Winter Night
			{ itemID = 21766, spellID = 26897 }, --Opal Necklace of Impact
			{ itemID = 21764, spellID = 26883 }, --Ruby Pendant of Fire
			{ itemID = 21755, spellID = 26876 }, --Aquamarine Pendant of the Warrior
			{ itemID = 45627, spellID = 63743 }, --Amulet of Truesight
			{ itemID = 20967, spellID = 25622 }, --Citrine Pendant of Golden Healing
			{ itemID = 20966, spellID = 25618 }, --Jade Pendant of Blasting
			{ itemID = 20831, spellID = 25320 }, --Heavy Golden Necklace of Battle
		},
		{
			{ itemID = 20950, spellID = 25610 }, --Pendant of the Agate Shield
			{ itemID = 20830, spellID = 25339 }, --Amulet of the Moon
			{ itemID = 20909, spellID = 25498 }, --Barbaric Iron Collar
			{ itemID = 31154, spellID = 38175 }, --Bronze Torc
			{ itemID = 30419, spellID = 36523 }, --Brilliant Necklace
			{ itemID = 21933, spellID = 26927 }, --Thick Bronze Necklace
			{ itemID = 21934, spellID = 26928 }, --Ornate Tigerseye Necklace
			{ itemID = 25438, spellID = 32178 }, --Malachite Pendant
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 24123, spellID = 31078 }, --Circlet of Arcane Might
			{ itemID = 24122, spellID = 31077 }, --Coronet of the Verdant Flame
			{ itemID = 32776, spellID = 41418 }, --Crown of the Sea Witch
			{ itemID = 35945, spellID = 47280 }, --Brilliant Glass
			{ itemID = 31079, spellID = 38068 }, --Mercurial Adamantite
			{ itemID = 21774, spellID = 26906 }, --Emerald Crown of Destruction
			{ itemID = 20969, spellID = 26878 }, --Ruby Crown of Restoration
		},
		{
			{ itemID = 21752, spellID = 26880 }, --Thorium Setting
			{ itemID = 25883, spellID = 32809 }, --Dense Stone Statue
			{ itemID = 25882, spellID = 32808 }, --Solid Stone Statue
			{ itemID = 20963, spellID = 25615 }, --Mithril Filigree
			{ itemID = 20954, spellID = 25612 }, --Heavy Iron Knuckles
			{ itemID = 20832, spellID = 25321 }, --Moonsoul Crown
			{ itemID = 25881, spellID = 32807 }, --Heavy Stone Statue
			{ itemID = 20817, spellID = 25278 }, --Bronze Setting
			{ itemID = 25880, spellID = 32801 }, --Coarse Stone Statue
			{ itemID = 20816, spellID = 25255 }, --Delicate Copper Wire
			{ itemID = 25498, spellID = 32259 }, --Rough Stone Statue
		},
	},
	{
		Name = "High Risk",
		{
			{ name = "Rare", icon = "INV_Box_01"},
			{ itemID = 1204165, spellID = 979639 }, --Deep Gold Twisted Pendant
			{ itemID = 1204167, spellID = 979641 }, --Bloodshadow Twisted Pendant
			{ itemID = 1204169, spellID = 979643 }, --Azureflame Twisted Pendant
			{ itemID = 1204171, spellID = 979645 }, --Shadowgold Dread Pendant
			{ itemID = 1204173, spellID = 979647 }, --Deep Azure Dread Pendant
			{ itemID = 1204175, spellID = 979649 }, --Bloodflame Dread Pendant
			{ itemID = 1204177, spellID = 979651 }, --Living Night Void Pendant
			{ itemID = 1204179, spellID = 979653 }, --Dawnstar Void Pendant
			{ itemID = 1204181, spellID = 979655 }, --Noble Talasite Void Pendant
		},
		{
			{ name = "Epic", icon = "INV_Box_01"},
			{ itemID = 1204166, spellID = 979640 }, --Engraved Deep Gold Twisted Pendant
			{ itemID = 1204168, spellID = 979642 }, --Engraved Bloodshadow Twisted Pendant
			{ itemID = 1204170, spellID = 979644 }, --Engraved Azureflame Twisted Pendant
			{ itemID = 1204172, spellID = 979646 }, --Engraved Shadowgold Dread Pendant
			{ itemID = 1204174, spellID = 979648 }, --Engraved Deep Azure Dread Pendant
			{ itemID = 1204176, spellID = 979650 }, --Engraved Bloodflame Dread Pendant
			{ itemID = 1204178, spellID = 979652 }, --Engraved Living Night Void Pendant
			{ itemID = 1204180, spellID = 979654 }, --Engraved Dawnstar Void Pendant
			{ itemID = 1204182, spellID = 979656 }, --Engraved Noble Talasite Void Pendant
		},
	},
}

----------------------
--- Leatherworking ---
----------------------
AtlasLoot_Data["LeatherworkingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = LEATHERWORKING,
	Type = "BCCrafting",
	{
		Name = "Leather Armor" .. color.WHITE .. " - Back",
		{
			{ itemID = 33122, spellID = 42546 }, --Cloak of Darkness
		},
	},
	{
		Name = "Leather Armor" .. color.WHITE .. " - Chest",
		{
			{ itemID = 29525, spellID = 35589 }, --Primalstrike Vest
			{ itemID = 29522, spellID = 35585 }, --Windhawk Hauberk
			{ itemID = 34369, spellID = 46138 }, --Carapace of Sun and Shadow
			{ itemID = 34371, spellID = 46136 }, --Leather Chestguard of the Sun
			{ itemID = 33204, spellID = 42731 }, --Shadowprowler's Chestguard
			{ itemID = 25689, spellID = 32495 }, --Heavy Clefthoof Vest
			{ itemID = 29974, spellID = 36078 }, --Living Crystal Breastplate
			{ itemID = 29973, spellID = 36077 }, --Primalstorm Breastplate
			{ itemID = 25671, spellID = 32473 }, --Thick Draenic Vest
			{ itemID = 25676, spellID = 32481 }, --Wild Draenish Vest
		},
	},
	{
		Name = "Leather Armor" .. color.WHITE .. " - Feet",
		{
			{ itemID = 30041, spellID = 36355 }, --Boots of Natural Grace
			{ itemID = 30039, spellID = 36357 }, --Boots of Utter Darkness
			{ itemID = 32394, spellID = 40003 }, --Redeemed Soul Moccasins
			{ itemID = 32394, spellID = 40003 }, --Redeemed Soul Moccasins
			{ itemID = 25691, spellID = 32497 }, --Heavy Clefthoof Boots
			{ itemID = 29499, spellID = 35536 }, --Blastguard Boots
			{ itemID = 29497, spellID = 35534 }, --Enchanted Clefthoof Boots
			{ itemID = 25686, spellID = 32493 }, --Fel Leather Boots
			{ itemID = 25668, spellID = 32472 }, --Thick Draenic Boots
			{ itemID = 25673, spellID = 32478 }, --Wild Draenish Boots
		},
	},
	{
		Name = "Leather Armor" .. color.WHITE .. " - Hands",
		{
			{ itemID = 29503, spellID = 35559 }, --Cobrascale Gloves
			{ itemID = 34370, spellID = 46134 }, --Gloves of Immortal Dusk
			{ itemID = 29506, spellID = 35562 }, --Gloves of the Living Touch
			{ itemID = 34372, spellID = 46132 }, --Leather Gauntlets of the Sun
			{ itemID = 29507, spellID = 35563 }, --Windslayer Wraps
			{ itemID = 29496, spellID = 35533 }, --Enchanted Clefthoof Gloves
			{ itemID = 25685, spellID = 32490 }, --Fel Leather Gloves
			{ itemID = 25674, spellID = 32479 }, --Wild Draenish Gloves
			{ itemID = 25669, spellID = 32470 }, --Thick Draenic Gloves
		},
	},
	{
		Name = "Leather Armor" .. color.WHITE .. " - Head",
		{
			{ itemID = 29502, spellID = 35558 }, --Cobrascale Hood
			{ itemID = 29505, spellID = 35561 }, --Hood of Primal Life
			{ itemID = 29504, spellID = 35560 }, --Windscale Hood
			{ itemID = 25682, spellID = 32489 }, --Stylin' Jungle Hat
			{ itemID = 25680, spellID = 32485 }, --Stylin' Purple Hat
		},
	},
	{
		Name = "Leather Armor" .. color.WHITE .. " - Legs",
		{
			{ itemID = 32396, spellID = 40005 }, --Redeemed Soul Legguards
			{ itemID = 25690, spellID = 32496 }, --Heavy Clefthoof Leggings
			{ itemID = 29498, spellID = 35535 }, --Blastguard Pants
			{ itemID = 29495, spellID = 35532 }, --Enchanted Clefthoof Leggings
			{ itemID = 25687, spellID = 32494 }, --Fel Leather Leggings
			{ itemID = 25675, spellID = 32480 }, --Wild Draenish Leggings
			{ itemID = 25670, spellID = 32471 }, --Thick Draenic Pants
		},
	},
	{
		Name = "Leather Armor" .. color.WHITE .. " - Shoulder",
		{
			{ itemID = 32583, spellID = 41157 }, --Shoulderpads of Renewed Life
			{ itemID = 32581, spellID = 41160 }, --Swiftstrike Shoulders
		},
	},
	{
		Name = "Leather Armor" .. color.WHITE .. " - Waist",
		{
			{ itemID = 30040, spellID = 36351 }, --Belt of Deep Shadow
			{ itemID = 30042, spellID = 36349 }, --Belt of Natural Power
			{ itemID = 29526, spellID = 35590 }, --Primalstrike Belt
			{ itemID = 32393, spellID = 40006 }, --Redeemed Soul Cinch
			{ itemID = 29524, spellID = 35587 }, --Windhawk Belt
		},
	},
	{
		Name = "Leather Armor" .. color.WHITE .. " - Wrist",
		{
			{ itemID = 32582, spellID = 41156 }, --Bracers of Renewed Life
			{ itemID = 29527, spellID = 35591 }, --Primalstrike Bracers
			{ itemID = 32395, spellID = 40004 }, --Redeemed Soul Wristguards
			{ itemID = 32580, spellID = 41158 }, --Swiftstrike Bracers
			{ itemID = 29523, spellID = 35588 }, --Windhawk Bracers
		},
	},
	{
		Name = "Mail Armor" .. color.WHITE .. " - Chest",
		{
			{ itemID = 29519, spellID = 35580 }, --Netherstrike Breastplate
			{ itemID = 29515, spellID = 35575 }, --Ebon Netherscale Breastplate
			{ itemID = 34373, spellID = 46137 }, --Embrace of the Phoenix
			{ itemID = 34375, spellID = 46139 }, --Sun-Drenched Scale Chestguard
			{ itemID = 29514, spellID = 35574 }, --Thick Netherscale Breastplate
			{ itemID = 25696, spellID = 32500 }, --Felstalker Breastplate
			{ itemID = 29975, spellID = 36079 }, --Golden Dragonstrike Breastplate
			{ itemID = 25657, spellID = 32465 }, --Felscale Breastplate
			{ itemID = 25660, spellID = 32468 }, --Scaled Draenic Vest
		},
	},
	{
		Name = "Mail Armor" .. color.WHITE .. " - Feet",
		{
			{ itemID = 30043, spellID = 36359 }, --Hurricane Boots
			{ itemID = 32398, spellID = 39997 }, --Boots of Shackled Souls
			{ itemID = 30045, spellID = 36358 }, --Boots of the Crimson Hawk
			{ itemID = 29512, spellID = 35567 }, --Earthen Netherscale Boots
			{ itemID = 29493, spellID = 35528 }, --Flamescale Boots
			{ itemID = 25693, spellID = 32503 }, --Netherfury Boots
			{ itemID = 29491, spellID = 35527 }, --Enchanted Felscale Boots
			{ itemID = 25659, spellID = 32469 }, --Scaled Draenic Boots
			{ itemID = 25655, spellID = 32463 }, --Felscale Boots
		},
	},
	{
		Name = "Mail Armor" .. color.WHITE .. " - Hands",
		{
			{ itemID = 34376, spellID = 46135 }, --Sun-Drenched Scale Gloves
			{ itemID = 34374, spellID = 46133 }, --Fletcher's Gloves of the Phoenix
			{ itemID = 29509, spellID = 35568 }, --Windstrike Gloves
			{ itemID = 29511, spellID = 35573 }, --Netherdrake Gloves
			{ itemID = 25661, spellID = 32467 }, --Scaled Draenic Gloves
			{ itemID = 25654, spellID = 32462 }, --Felscale Gloves
		},
	},
	{
		Name = "Mail Armor" .. color.WHITE .. " - Head",
		{
			{ itemID = 29508, spellID = 35564 }, --Living Dragonscale Helm
			{ itemID = 29510, spellID = 35572 }, --Netherdrake Helm
			{ itemID = 25681, spellID = 32487 }, --Stylin' Adventure Hat
			{ itemID = 25683, spellID = 32488 }, --Stylin' Crimson Hat
			{ itemID = 29490, spellID = 35526 }, --Enchanted Felscale Gloves
		},
	},
	{
		Name = "Mail Armor" .. color.WHITE .. " - Legs",
		{
			{ itemID = 32400, spellID = 40001 }, --Greaves of Shackled Souls
			{ itemID = 29492, spellID = 35529 }, --Flamescale Leggings
			{ itemID = 29489, spellID = 35525 }, --Enchanted Felscale Leggings
			{ itemID = 25692, spellID = 32502 }, --Netherfury Leggings
			{ itemID = 25656, spellID = 32464 }, --Felscale Pants
			{ itemID = 25662, spellID = 32466 }, --Scaled Draenic Pants
		},
	},
	{
		Name = "Mail Armor" .. color.WHITE .. " - Shoulder",
		{
			{ itemID = 32575, spellID = 41162 }, --Shoulders of Lightning Reflexes
			{ itemID = 32579, spellID = 41164 }, --Living Earth Shoulders
		},
	},
	{
		Name = "Mail Armor" .. color.WHITE .. " - Waist",
		{
			{ itemID = 32397, spellID = 40002 }, --Waistguard of Shackled Souls
			{ itemID = 29520, spellID = 35582 }, --Netherstrike Belt
			{ itemID = 30044, spellID = 36353 }, --Monsoon Belt
			{ itemID = 29516, spellID = 35576 }, --Ebon Netherscale Belt
			{ itemID = 30046, spellID = 36352 }, --Belt of the Black Eagle
			{ itemID = 25695, spellID = 32498 }, --Felstalker Belt
			{ itemID = 29494, spellID = 35531 }, --Flamescale Belt
			{ itemID = 29500, spellID = 35537 }, --Blastguard Belt
			{ itemID = 25694, spellID = 32501 }, --Netherfury Belt
		},
	},
	{
		Name = "Mail Armor" .. color.WHITE .. " - Wrist",
		{
			{ itemID = 29521, spellID = 35584 }, --Netherstrike Bracers
			{ itemID = 32399, spellID = 52733 }, --Bracers of Shackled Souls
			{ itemID = 29517, spellID = 35577 }, --Ebon Netherscale Bracers
			{ itemID = 32577, spellID = 41163 }, --Living Earth Bindings
			{ itemID = 32574, spellID = 41161 }, --Bindings of Lightning Reflexes
			{ itemID = 25697, spellID = 32499 }, --Felstalker Bracer
		},
	},
	{
		Name = "Item Enhancements",
		{
			{ itemID = 29536, spellID = 35557 }, --Nethercleft Leg Armor
			{ itemID = 29535, spellID = 35554 }, --Nethercobra Leg Armor
			{ itemID = 29534, spellID = 35555 }, --Clefthide Leg Armor
			{ itemID = 29533, spellID = 35549 }, --Cobrahide Leg Armor
			{ itemID = 18251, spellID = 22727 }, --Core Armor Kit
			{ itemID = 38376, spellID = 50963 }, --Heavy Borean Armor Kit
			{ itemID = 34207, spellID = 44770 }, --Glove Reinforcements
		},
		{
			{ itemID = 29488, spellID = 35524 }, --Arcane Armor Kit
			{ itemID = 29485, spellID = 35521 }, --Flame Armor Kit
			{ itemID = 29486, spellID = 35522 }, --Frost Armor Kit
			{ itemID = 29487, spellID = 35523 }, --Nature Armor Kit
			{ itemID = 29483, spellID = 35520 }, --Shadow Armor Kit
			{ itemID = 38375, spellID = 50962 }, --Borean Armor Kit
			{ itemID = 34330, spellID = 44970 }, --Heavy Knothide Armor Kit
			{ itemID = 25652, spellID = 32458 }, --Magister's Armor Kit
			{ itemID = 25651, spellID = 32457 }, --Vindicator's Armor Kit
			{ itemID = 25650, spellID = 32456 }, --Knothide Armor Kit
			{ itemID = 25679, spellID = 32482 }, --Comfortable Insoles
		},
	},
	{
		Name = "Quivers and Ammo Pouches",
		{
			{ itemID = 34106, spellID = 44768 }, --Netherscale Ammo Pouch
			{ itemID = 34105, spellID = 44359 }, --Quiver of a Thousand Feathers
			{ itemID = 34099, spellID = 44343 }, --Knothide Ammo Pouch
			{ itemID = 34100, spellID = 44344 }, --Knothide Quiver
		},
	},
	{
		Name = "Drums, Bags and Misc.",
		{
			{ itemID = 29529, spellID = 35543 }, --Drums of Battle
			{ itemID = 34490, spellID = 45117 }, --Bag of Many Hides
			{ itemID = 25653, spellID = 32461 }, --Riding Crop
			{ itemID = 29532, spellID = 35538 }, --Drums of Panic
			{ itemID = 29531, spellID = 35539 }, --Drums of Restoration
			{ itemID = 29530, spellID = 35544 }, --Drums of Speed
			{ itemID = 29528, spellID = 35540 }, --Drums of War
			{ itemID = 29540, spellID = 35530 }, --Reinforced Mining Bag
			{ itemID = 34482, spellID = 45100 }, --Leatherworker's Satchel
		},
	},
	{
		Name = "Leather",
		{
			{ itemID = 23793, spellID = 32455 }, --Heavy Knothide Leather
			{ itemID = 21887, spellID = 32454 }, --Knothide Leather
		},
	},
	{
		Name = DRAGONSCALE,
		{
			{ itemID = 29516, spellID = 35576 }, --Ebon Netherscale Belt
			{ itemID = 29517, spellID = 35577 }, --Ebon Netherscale Bracers
			{ itemID = 29515, spellID = 35575 }, --Ebon Netherscale Breastplate
			{ itemID = 29520, spellID = 35582 }, --Netherstrike Belt
			{ itemID = 29521, spellID = 35584 }, --Netherstrike Bracers
			{ itemID = 29519, spellID = 35580 }, --Netherstrike Breastplate
			{ itemID = 29975, spellID = 36079 }, --Golden Dragonstrike Breastplate
		},
	},
	{
		Name = ELEMENTAL,
		{
			{ itemID = 29526, spellID = 35590 }, --Primalstrike Belt
			{ itemID = 29527, spellID = 35591 }, --Primalstrike Bracers
			{ itemID = 29525, spellID = 35589 }, --Primalstrike Vest
			{ itemID = 29973, spellID = 36077 }, --Primalstorm Breastplate
		},
	},
	{
		Name = TRIBAL,
		{
			{ itemID = 29524, spellID = 35587 }, --Windhawk Belt
			{ itemID = 29523, spellID = 35588 }, --Windhawk Bracers
			{ itemID = 29522, spellID = 35585 }, --Windhawk Hauberk
			{ itemID = 29974, spellID = 36078 }, --Living Crystal Breastplate
		},
	},
	{
		Name = "High Risk",
		{
			{ name = "Rare", icon = "INV_Box_01"},
			{ itemID = 1204021, spellID = 979522 }, --Cobra Strike Gambeson
			{ itemID = 1204023, spellID = 979524 }, --Fel Strike Gambeson
			{ itemID = 1204025, spellID = 979526 }, --Wind Gambeson
			{ itemID = 1204027, spellID = 979528 }, --True Strike Gambeson
			{ itemID = 1204029, spellID = 979530 }, --Clefthoof Gambeson
			{ itemID = 1204031, spellID = 979532 }, --Subtle Gambeson
		},
		{
			{ name = "Epic", icon = "INV_Box_01"},
			{ itemID = 1204022, spellID = 979523 }, --Mastercraft Cobra Strike Gambeson
			{ itemID = 1204024, spellID = 979525 }, --Mastercraft Fel Strike Gambeson
			{ itemID = 1204026, spellID = 979527 }, --Mastercraft Wind Gambeson
			{ itemID = 1204028, spellID = 979529 }, --Mastercraft True Strike Gambeson
			{ itemID = 1204030, spellID = 979531 }, --Mastercraft Clefthoof Gambeson
			{ itemID = 1204032, spellID = 979533 }, --Mastercraft Subtle Gambeson
		},
	},
}

AtlasLoot_Data["MiningTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = MINING,
	Type = "BCCrafting",
	{
		Name = MINING,
		{
			{ itemID = 35128, spellID = 46353 }, --Smelt Hardened Khorium
			{ itemID = 23573, spellID = 29686 }, --Smelt Hardened Adamantite
			{ itemID = 23449, spellID = 29361 }, --Smelt Khorium
			{ itemID = 23448, spellID = 29360 }, --Smelt Felsteel
			{ itemID = 23447, spellID = 29359 }, --Smelt Eternium
			{ itemID = 23446, spellID = 29358 }, --Smelt Adamantite
			{ itemID = 23445, spellID = 29356 }, --Smelt Fel Iron
			{ itemID = 22574, spellID = 35751 }, --Fire Sunder
			{ itemID = 22573, spellID = 35750 }, --Earth Shatter
		},
	},
}

AtlasLoot_Data["FirstAidTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = FIRSTAID,
	Type = "BCCrafting",
	{
		Name = FIRSTAID,
		{
			{ itemID = 21991, spellID = 27033 }, --Heavy Netherweave Bandage
			{ itemID = 21990, spellID = 27032 }, --Netherweave Bandage
		},
	},
}
-----------------
--- Tailoring ---
-----------------



AtlasLoot_Data["TailoringTBC"] = {
	Module = "AtlasLoot_Crafting_TBC",
	Name = TAILORING,
	Type = "BCCrafting",
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Back",
		{
			{ itemID = 32420, spellID = 40060 }, --Night's End
			{ itemID = 24260, spellID = 31450 }, --Manaweave Cloak
			{ itemID = 24259, spellID = 31449 }, --Vengeance Wrap
			{ itemID = 30831, spellID = 37873 }, --Cloak of Arcane Evasion
			{ itemID = 24253, spellID = 31440 }, --Cloak of Eternity
			{ itemID = 24252, spellID = 31438 }, --Cloak of the Black Void
		},
	},
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Chest",
		{
			{ itemID = 21871, spellID = 26758 }, --Frozen Shadoweave Robe
			{ itemID = 21875, spellID = 26762 }, --Primal Mooncloth Robe
			{ itemID = 21865, spellID = 26781 }, --Soulcloth Vest
			{ itemID = 21848, spellID = 26754 }, --Spellfire Robe
			{ itemID = 34365, spellID = 46131 }, --Robe of Eternal Light
			{ itemID = 34364, spellID = 46130 }, --Sunfire Robe
			{ itemID = 21868, spellID = 26784 }, --Arcanoweave Robe
			{ itemID = 30839, spellID = 37884 }, --Flameheart Vest
			{ itemID = 21861, spellID = 26777 }, --Imbued Netherweave Robe
			{ itemID = 21862, spellID = 26778 }, --Imbued Netherweave Tunic
			{ itemID = 21855, spellID = 26774 }, --Netherweave Tunic
			{ itemID = 21854, spellID = 26773 }, --Netherweave Robe
		},
	},
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Feet",
		{
			{ itemID = 30037, spellID = 36317 }, --Boots of Blasting
			{ itemID = 30035, spellID = 36318 }, --Boots of the Long Road
			{ itemID = 32391, spellID = 40020 }, --Soulguard Slippers
			{ itemID = 21870, spellID = 26757 }, --Frozen Shadoweave Boots
			{ itemID = 21867, spellID = 26783 }, --Arcanoweave Boots
			{ itemID = 21860, spellID = 26776 }, --Imbued Netherweave Boots
			{ itemID = 21853, spellID = 26772 }, --Netherweave Boots
		},
	},
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Hands",
		{
			{ itemID = 32584, spellID = 41207 }, --Swiftheal Wraps
			{ itemID = 34367, spellID = 46129 }, --Hands of Eternal Light
			{ itemID = 21847, spellID = 26753 }, --Spellfire Gloves
			{ itemID = 34366, spellID = 46128 }, --Sunfire Handwraps
			{ itemID = 21863, spellID = 26779 }, --Soulcloth Gloves
			{ itemID = 30838, spellID = 37883 }, --Flameheart Gloves
			{ itemID = 21851, spellID = 26770 }, --Netherweave Gloves
		},
	},
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Head",
		{
			{ itemID = 24267, spellID = 31456 }, --Battlecast Hood
			{ itemID = 24266, spellID = 31455 }, --Spellstrike Hood
			{ itemID = 24264, spellID = 31454 }, --Whitemend Hood
			{ itemID = 24258, spellID = 31448 }, --Resolute Cape
			{ itemID = 24254, spellID = 31441 }, --color.WHITE Remedy Cape
		},
	},
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Legs",
		{
			{ itemID = 24263, spellID = 31453 }, --Battlecast Pants
			{ itemID = 32389, spellID = 40023 }, --Soulguard Leggings
			{ itemID = 24262, spellID = 31452 }, --Spellstrike Pants
			{ itemID = 24261, spellID = 31451 }, --Whitemend Pants
			{ itemID = 21859, spellID = 26775 }, --Imbued Netherweave Pants
			{ itemID = 21852, spellID = 26771 }, --Netherweave Pants
		},
	},
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Shoulder",
		{
			{ itemID = 32587, spellID = 41206 }, --Mantle of Nimble Thought
			{ itemID = 32585, spellID = 41208 }, --Swiftheal Mantle
			{ itemID = 21874, spellID = 26761 }, --Primal Mooncloth Shoulders
			{ itemID = 21864, spellID = 26780 }, --Soulcloth Shoulders
			{ itemID = 21869, spellID = 26756 }, --Frozen Shadoweave Shoulders
		},
	},
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Waist",
		{
			{ itemID = 30038, spellID = 36315 }, --Belt of Blasting
			{ itemID = 30036, spellID = 36316 }, --Belt of the Long Road
			{ itemID = 32390, spellID = 40024 }, --Soulguard Girdle
			{ itemID = 24257, spellID = 31444 }, --Black Belt of Knowledge
			{ itemID = 24256, spellID = 31443 }, --Girdle of Ruination
			{ itemID = 24255, spellID = 31442 }, --Unyielding Girdle
			{ itemID = 21873, spellID = 26760 }, --Primal Mooncloth Belt
			{ itemID = 21846, spellID = 26752 }, --Spellfire Belt
			{ itemID = 21850, spellID = 26765 }, --Netherweave Belt
		},
	},
	{
		Name = "Cloth Armor" .. color.WHITE .. " - Wrist",
		{
			{ itemID = 32586, spellID = 41205 }, --Bracers of Nimble Thought
			{ itemID = 32392, spellID = 40021 }, --Soulguard Bracers
			{ itemID = 21866, spellID = 26782 }, --Arcanoweave Bracers
			{ itemID = 24251, spellID = 31437 }, --Blackstrike Bracers
			{ itemID = 30837, spellID = 37882 }, --Flameheart Bracers
			{ itemID = 24249, spellID = 31434 }, --Unyielding Bracers
			{ itemID = 24250, spellID = 31435 }, --Bracers of Havok
			{ itemID = 21849, spellID = 26764 }, --Netherweave Bracers
		},
	},
	{
		Name = "Bags",
		{
			{ itemID = 21872, spellID = 26759 }, --Ebon Shadowbag
			{ itemID = 38225, spellID = 50194 }, --Mycah's Botanical Bag
			{ itemID = 21876, spellID = 26763 }, --Primal Mooncloth Bag
			{ itemID = 21858, spellID = 26755 }, --Spellfire Bag
			{ itemID = 21341, spellID = 26086 }, --Felcloth Bag
			{ itemID = 24270, spellID = 31459 }, --Bag of Jewels
			{ itemID = 21843, spellID = 26749 }, --Imbued Netherweave Bag
			{ itemID = 21841, spellID = 26746 }, --Netherweave Bag
		},
	},
	{
		Name = "Item Enhancements",
		{
			{ itemID = 24276, spellID = 31433 }, --Golden Spellthread
			{ itemID = 24274, spellID = 31432 }, --Runic Spellthread
			{ itemID = 24273, spellID = 31430 }, --Mystic Spellthread
			{ itemID = 24275, spellID = 31431 }, --Silver Spellthread
		},
	},
	{
		Name = "Cloth",
		{
			{ itemID = 21845, spellID = 26751 }, --Primal Mooncloth
			{ itemID = 24272, spellID = 36686 }, --Shadowcloth
			{ itemID = 24271, spellID = 31373 }, --Spellcloth
			{ itemID = 21842, spellID = 26747 }, --Bolt of Imbued Netherweave
			{ itemID = 21844, spellID = 26750 }, --Bolt of Soulcloth
			{ itemID = 21840, spellID = 26745 }, --Bolt of Netherweave
		},
	},
	{
		Name = "Miscellaneous",
		{
			{itemID = 44554, spellID = 60969 }, --Flying Carpet
			{ itemID = 24268, spellID = 31460 }, --Netherweave Net
		},
	},
	{
		Name = MOONCLOTH,
		{
			{ itemID = 21875, spellID = 26762 }, --Primal Mooncloth Robe
			{ itemID = 21874, spellID = 26761 }, --Primal Mooncloth Shoulders
			{ itemID = 21873, spellID = 26760 }, --Primal Mooncloth Belt
		},
	},
	{
		Name = SHADOWEAVE,
		{
			{ itemID = 21871, spellID = 26758 }, --Frozen Shadoweave Robe
			{ itemID = 21870, spellID = 26757 }, --Frozen Shadoweave Boots
			{ itemID = 21869, spellID = 26756 }, --Frozen Shadoweave Shoulders
		},
	},
	{
		Name = SPELLFIRE,
		{
			{ itemID = 21848, spellID = 26754 }, --Spellfire Robe
			{ itemID = 21847, spellID = 26753 }, --Spellfire Gloves
			{ itemID = 21846, spellID = 26752 }, --Spellfire Belt
		},
	},
	{
		Name = "High Risk",
		{
			{ name = "Rare", icon = "INV_Box_01"},
			{ itemID = 1967813, spellID = 1968496 }, --Wrist Wraps of Twisted Might
			{ itemID = 1967815, spellID = 1968498 }, --Wrist Wraps of Twisted Fury
			{ itemID = 1967817, spellID = 1968500 }, --Wrist Wraps of Twisted Precision
			{ itemID = 1967819, spellID = 1968502 }, --Wrist Wraps of Twisted Efficiency
			{ itemID = 1967821, spellID = 1968504 }, --Wrist Wraps of Twisted Crushing
			{ itemID = 1967823, spellID = 1968506 }, --Wrist Wraps of Twisted Glory
		},
		{
			{ name = "Epic", icon = "INV_Box_01"},
			{ itemID = 1967814, spellID = 1968497 }, --Fitted Wrist Wraps of Twisted Might
			{ itemID = 1967816, spellID = 1968499 }, --Fitted Wrist Wraps of Twisted Fury
			{ itemID = 1967818, spellID = 1968501 }, --Fitted Wrist Wraps of Twisted Precision
			{ itemID = 1967820, spellID = 1968503 }, --Fitted Wrist Wraps of Twisted Efficiency
			{ itemID = 1967822, spellID = 1968505 }, --Fitted Wrist Wraps of Twisted Crushing
			{ itemID = 1967824, spellID = 1968507 }, --Fitted Wrist Wraps of Twisted Glory
		},
	},
}