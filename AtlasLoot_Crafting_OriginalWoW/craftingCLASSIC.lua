local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")

local ALCHEMY = GetSpellInfo(2259)
local BLACKSMITHING = GetSpellInfo(2018)
local ARMORSMITH = GetSpellInfo(9788)
local WEAPONSMITH = GetSpellInfo(9787)
local COOKING = GetSpellInfo(2550)
local ENCHANTING = GetSpellInfo(7411)
local ENGINEERING = GetSpellInfo(4036)
local GNOMISH = GetSpellInfo(20220)
local GOBLIN = GetSpellInfo(20221)
local FIRSTAID = GetSpellInfo(3273)
local LEATHERWORKING = GetSpellInfo(2108)
local DRAGONSCALE = GetSpellInfo(10656)
local ELEMENTAL = GetSpellInfo(10658)
local TRIBAL = GetSpellInfo(10660)
local MINING = GetSpellInfo(2575)
local TAILORING = GetSpellInfo(3908)

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
--- Profession Sets
---- Blacksmithing Mail Sets
---- Blacksmithing Plate Sets
---- Leatherworking Leather Sets
---- Leatherworking Mail Sets
---- Tailoring Sets
--- Other
---- Crafted Epic Weapons

-----------------------
--- Tradeskill List ---
-----------------------

---------------
--- Alchemy ---
---------------
AtlasLoot_Data["AlchemyCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = ALCHEMY,
	Type = "ClassicCrafting",
	{
		Name = AL["Battle Elixirs"],
		{
			{itemID = 13454, spellID = 17573 }, --Greater Arcane Elixir
			{itemID = 13452, spellID = 17571 }, --Elixir of the Mongoose
			{itemID = 13453, spellID = 17557 }, --Elixir of Brute Force
			{itemID = 9224, spellID = 11477 }, --Elixir of Demonslaying
			{itemID = 21546, spellID = 26277 }, --Elixir of Greater Firepower
			{itemID = 9264, spellID = 11476 }, --Elixir of Shadow Power
			{itemID = 9206, spellID = 11472 }, --Elixir of Giants
			{itemID = 9187, spellID = 11467 }, --Elixir of Greater Agility
			{itemID = 9155, spellID = 11461 }, --Arcane Elixir
			{itemID = 17708, spellID = 21923 }, --Elixir of Frost Power
			{itemID = 8949, spellID = 11449 }, --Elixir of Agility
			{itemID = 45621, spellID = 63732 }, --Elixir of Minor Accuracy
			{itemID = 3391, spellID = 3188 }, --Elixir of Ogre's Strength
			{itemID = 3390, spellID = 2333 }, --Elixir of Lesser Agility
			{itemID = 6373, spellID = 7845 }, --Elixir of Firepower
		},
		{
			{itemID = 6662, spellID = 8240 }, --Elixir of Giant Growth
			{itemID = 2457, spellID = 3230 }, --Elixir of Minor Agility
			{itemID = 2454, spellID = 2329 }, --Elixir of Lion's Strength
		},
	},
	{
		Name = AL["Guardian Elixirs"],
		{
			{itemID = 20004, spellID = 24368 }, --Major Troll's Blood Elixir
			{itemID = 20007, spellID = 24365 }, --Mageblood Elixir
			{itemID = 13445, spellID = 17554 }, --Elixir of Superior Defense
			{itemID = 13447, spellID = 17555 }, --Elixir of the Sages
			{itemID = 9088, spellID = 11466 }, --Gift of Arthas
			{itemID = 9179, spellID = 11465 }, --Elixir of Greater Intellect
			{itemID = 8951, spellID = 11450 }, --Elixir of Greater Defense
			{itemID = 3826, spellID = 3451 }, --Mighty Troll's Blood Elixir
			{itemID = 3825, spellID = 3450 }, --Elixir of Fortitude
			{itemID = 3389, spellID = 3177 }, --Elixir of Defense
			{itemID = 3388, spellID = 3176 }, --Strong Troll's Blood Potion
			{itemID = 3383, spellID = 3171 }, --Elixir of Wisdom
			{itemID = 2458, spellID = 2334 }, --Elixir of Minor Fortitude
			{itemID = 3382, spellID = 3170 }, --Weak Troll's Blood Elixir
			{itemID = 5997, spellID = 7183 }, --Elixir of Minor Defense
		},
	},
	{
		Name = AL["Potions"] .. " 1",
		{
			{itemID = 18253, spellID = 22732 }, --Major Rejuvenation Potion
			{itemID = 13444, spellID = 17580 }, --Major Mana Potion
			{itemID = 13461, spellID = 17577 }, --Greater Arcane Protection Potion
			{itemID = 13457, spellID = 17574 }, --Greater Fire Protection Potion
			{itemID = 13456, spellID = 17575 }, --Greater Frost Protection Potion
			{itemID = 13458, spellID = 17576 }, --Greater Nature Protection Potion
			{itemID = 13459, spellID = 17578 }, --Greater Shadow Protection Potion
			{itemID = 20008, spellID = 24367 }, --Living Action Potion
			{itemID = 13462, spellID = 17572 }, --Purification Potion
			{itemID = 13455, spellID = 17570 }, --Greater Stoneshield Potion
			{itemID = 20002, spellID = 24366 }, --Greater Dreamless Sleep Potion
			{itemID = 13446, spellID = 17556 }, --Major Healing Potion
			{itemID = 13443, spellID = 17553 }, --Superior Mana Potion
			{itemID = 6000, spellID = 17525 }, --Potion of Lightning Reflexes
			{itemID = 13442, spellID = 17552 }, --Mighty Rage Potion
		},
		{
			{itemID = 3387, spellID = 3175 }, --Limited Invulnerability Potion
			{itemID = 9172, spellID = 11464 }, --Invisibility Potion
			{itemID = 12190, spellID = 15833 }, --Dreamless Sleep Potion
			{itemID = 9144, spellID = 11458 }, --Wildvine Potion
			{itemID = 4623, spellID = 4942 }, --Lesser Stoneshield Potion
			{itemID = 3928, spellID = 11457 }, --Superior Healing Potion
			{itemID = 9036, spellID = 11453 }, --Magic Resistance Potion
		},
	},
	{
		Name = AL["Potions"] .. " 2",
		{
			{itemID = 9030, spellID = 11452 }, --Restorative Potion
			{itemID = 6149, spellID = 11448 }, --Greater Mana Potion
			{itemID = 6050, spellID = 7258 }, --Frost Protection Potion
			{itemID = 6052, spellID = 7259 }, --Nature Protection Potion
			{itemID = 5633, spellID = 6618 }, --Great Rage Potion
			{itemID = 3823, spellID = 3448 }, --Lesser Invisibility Potion
			{itemID = 6049, spellID = 7257 }, --Fire Protection Potion
			{itemID = 3827, spellID = 3452 }, --Mana Potion
			{itemID = 1710, spellID = 7181 }, --Greater Healing Potion
			{itemID = 5634, spellID = 6624 }, --Free Action Potion
			{itemID = 6048, spellID = 7256 }, --Shadow Protection Potion
			{itemID = 3385, spellID = 3173 }, --Lesser Mana Potion
			{itemID = 3386, spellID = 3174 }, --Potion of Curing
			{itemID = 929, spellID = 3447 }, --Healing Potion
			{itemID = 3384, spellID = 3172 }, --Minor Magic Resistance Potion
		},
		{
			{itemID = 6051, spellID = 7255 }, --Holy Protection Potion
			{itemID = 6372, spellID = 7841 }, --Swim Speed Potion
			{itemID = 5631, spellID = 6617 }, --Rage Potion
			{itemID = 2459, spellID = 2335 }, --Swiftness Potion
			{itemID = 858, spellID = 2337 }, --Lesser Healing Potion
			{itemID = 4596, spellID = 4508 }, --Discolored Healing Potion
			{itemID = 2456, spellID = 2332 }, --Minor Rejuvenation Potion
			{itemID = 2455, spellID = 2331 }, --Minor Mana Potion
			{itemID = 118, spellID = 2330 }, --Minor Healing Potion
		},
	},
	{
		Name = AL["Flasks"],
		{
			{itemID = 13513, spellID = 17638 }, --Flask of Chromatic Resistance
			{itemID = 13511, spellID = 17636 }, --Flask of Distilled Wisdom
			{itemID = 13506, spellID = 17634 }, --Flask of Petrification
			{itemID = 13512, spellID = 17637 }, --Flask of Supreme Power
			{itemID = 13510, spellID = 17635 }, --Flask of the Titans
			{itemID = 6011, spellID = 17640 }, --Flask of the Titans
		},
	},
	{
		Name = AL["Transmutes"],
		{
			{itemID = 3577, spellID = 11479 }, --Transmute: Iron to Gold
			{itemID = 6037, spellID = 11480 }, --Transmute: Mithril to Truesilver
			{itemID = 12360, spellID = 17187 }, --Transmute: Arcanite Bar
			{itemID = 7078, spellID = 17559 }, --Transmute: Air to Fire
			{itemID = 12803, spellID = 17566 }, --Transmute: Earth to Life
			{itemID = 7080, spellID = 17561 }, --Transmute: Earth to Water
			{itemID = 7076, spellID = 17560 }, --Transmute: Fire to Earth
			{itemID = 7076, spellID = 17565 }, --Transmute: Life to Earth
			{itemID = 7080, spellID = 17563 }, --Transmute: Undeath to Water
			{itemID = 7082, spellID = 17562 }, --Transmute: Water to Air
			{itemID = 12808, spellID = 17564 }, --Transmute: Water to Undeath
			{itemID = 7068, spellID = 25146 }, --Transmute: Elemental Fire
		},
	},
	{
		Name = AL["Miscellaneous"],
		{
			{itemID = 19931, spellID = 24266 }, --Gurubashi Mojo Madness
			{itemID = 9210, spellID = 11473 }, --Ghost Dye
			{itemID = 9154, spellID = 11460 }, --Elixir of Detect Undead
			{itemID = 18294, spellID = 22808 }, --Elixir of Greater Water Breathing
			{itemID = 9061, spellID = 11456 }, --Goblin Rocket Fuel
			{itemID = 8956, spellID = 11451 }, --Oil of Immolation
			{itemID = 10592, spellID = 12609 }, --Catseye Elixir
			{itemID = 3829, spellID = 3454 }, --Frost Oil
			{itemID = 9149, spellID = 11459 }, --Philosopher's Stone
			{itemID = 3828, spellID = 3453 }, --Elixir of Detect Lesser Invisibility
			{itemID = 3824, spellID = 3449 }, --Shadow Oil
			{itemID = 6371, spellID = 7837 }, --Fire Oil
			{itemID = 5996, spellID = 7179 }, --Elixir of Water Breathing
			{itemID = 6370, spellID = 7836 }, --Blackmouth Oil
		},
	},
	{
		Name = AL["High Risk"],
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{itemID = 967444, spellID = 968403 }, --Potent Flask of Manifesting Power
			{itemID = 967447, spellID = 968406 }, --Potent Flask of the Warsong
			{itemID = 967450, spellID = 968409 }, --Potent Flask of the Kirin Tor
			{itemID = 967453, spellID = 968412 }, --Potent Flask of Butchery
			{itemID = 967456, spellID = 968415 }, --Potent Flask of the Unyielding
			{itemID = 967459, spellID = 968418 }, --Potent Flask of Unrelenting Power
			{itemID = 967462, spellID = 968421 }, --Potent Flask of Savage Assault
			{itemID = 967465, spellID = 968424 }, --Potent Flask of Shattering Thunder
			{itemID = 967468, spellID = 968427 }, --Potent Flask of the Executioner
			{itemID = 967471, spellID = 968430 }, --Potent Flask of Deep Meditation
			{itemID = 967474, spellID = 968433 }, --Potent Flask of Adept Striking
		},
		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{itemID = 967445, spellID = 968404 }, --Distilled Flask of Manifesting Power
			{itemID = 967448, spellID = 968407 }, --Distilled Flask of the Warsong
			{itemID = 967451, spellID = 968410 }, --Distilled Flask of the Kirin Tor
			{itemID = 967454, spellID = 968413 }, --Distilled Flask of Butchery
			{itemID = 967457, spellID = 968416 }, --Distilled Flask of the Unyielding
			{itemID = 967460, spellID = 968419 }, --Distilled Flask of Unrelenting Power
			{itemID = 967463, spellID = 968422 }, --Distilled Flask of Savage Assault
			{itemID = 967466, spellID = 968425 }, --Distilled Flask of Shattering Thunder
			{itemID = 967469, spellID = 968428 }, --Distilled Flask of the Executioner
			{itemID = 967472, spellID = 968431 }, --Distilled Flask of Deep Meditation
			{itemID = 967475, spellID = 968434 }, --Distilled Flask of Adept Striking
		},
	},
}
---------------------
--- Blacksmithing ---
---------------------
AtlasLoot_Data["SmithingCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = BLACKSMITHING,
	Type = "ClassicCrafting",
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest",
		{
			{itemID = 22669, spellID = 28242 }, --Icebane Breastplate
			{itemID = 12641, spellID = 16746 }, --Invulnerable Mail
			{itemID = 22191, spellID = 27590 }, --Obsidian Mail Tunic
			{itemID = 22196, spellID = 27587 }, --Thick Obsidian Breastplate
			{itemID = 19690, spellID = 24136 }, --Bloodsoul Breastplate
			{itemID = 20550, spellID = 24914 }, --Darkrune Breastplate
			{itemID = 19693, spellID = 24139 }, --Darksoul Breastplate
			{itemID = 22762, spellID = 28461 }, --Ironvine Breastplate
			{itemID = 12618, spellID = 16745 }, --Enchanted Thorium Breastplate
			{itemID = 12422, spellID = 16663 }, --Imperial Plate Chest
			{itemID = 12613, spellID = 16731 }, --Runic Breastplate
			{itemID = 12628, spellID = 16667 }, --Demon Forged Breastplate
			{itemID = 11604, spellID = 15296 }, --Dark Iron Plate
			{itemID = 12624, spellID = 16650 }, --Wildthorn Mail
			{itemID = 12415, spellID = 16648 }, --Radiant Breastplate
		},
		{
			{itemID = 12405, spellID = 16642 }, --Thorium Armor
			{itemID = 7930, spellID = 9959 }, --Heavy Mithril Breastplate
			{itemID = 7939, spellID = 9974 }, --Truesilver Breastplate
			{itemID = 7963, spellID = 9916 }, --Steel Breastplate
			{itemID = 3845, spellID = 3511 }, --Golden Scale Cuirass
			{itemID = 3844, spellID = 3508 }, --Green Iron Hauberk
			{itemID = 7914, spellID = 9813 }, --Barbaric Iron Breastplate
			{itemID = 2870, spellID = 2675 }, --Shining Silver Breastplate
			{itemID = 2869, spellID = 2673 }, --Silvered Bronze Breastplate
			{itemID = 7935, spellID = 9972 }, --Ornate Mithril Breastplate
			{itemID = 6731, spellID = 8367 }, --Ironforge Breastplate
			{itemID = 2866, spellID = 2670 }, --Rough Bronze Cuirass
			{itemID = 2864, spellID = 2667 }, --Runed Copper Breastplate
			{itemID = 3471, spellID = 3321 }, --Copper Chain Vest
			{itemID = 10421, spellID = 12260 }, --Rough Copper Vest
		},
	},
	{ Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet",
		{
			{itemID = 20039, spellID = 24399 }, --Dark Iron Boots
			{itemID = 19048, spellID = 23629 }, --Heavy Timbermaw Boots
			{itemID = 12611, spellID = 16665 }, --Runic Plate Boots
			{itemID = 12426, spellID = 16657 }, --Imperial Plate Boots
			{itemID = 12419, spellID = 16656 }, --Radiant Boots
			{itemID = 12409, spellID = 16652 }, --Thorium Boots
			{itemID = 7936, spellID = 9979 }, --Ornate Mithril Boots
			{itemID = 7933, spellID = 9968 }, --Heavy Mithril Boots
			{itemID = 3847, spellID = 3515 }, --Golden Scale Boots
			{itemID = 3846, spellID = 3513 }, --Polished Steel Boots
			{itemID = 7916, spellID = 9818 }, --Barbaric Iron Boots
			{itemID = 3484, spellID = 3334 }, --Green Iron Boots
			{itemID = 3482, spellID = 3331 }, --Silvered Bronze Boots
			{itemID = 6350, spellID = 7817 }, --Rough Bronze Boots
			{itemID = 3469, spellID = 3319 }, --Copper Chain Boots
		},
	},
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands",
		{
			{itemID = 19164, spellID = 23637 }, --Dark Iron Gauntlets
			{itemID = 22670, spellID = 28243 }, --Icebane Gauntlets
			{itemID = 12639, spellID = 16741 }, --Stronghold Gauntlets
			{itemID = 19692, spellID = 24138 }, --Bloodsoul Gauntlets
			{itemID = 20549, spellID = 24912 }, --Darkrune Gauntlets
			{itemID = 19057, spellID = 23633 }, --Gloves of the Dawn
			{itemID = 22763, spellID = 28462 }, --Ironvine Gloves
			{itemID = 22194, spellID = 27589 }, --Black Grasp of the Destroyer
			{itemID = 12632, spellID = 16661 }, --Storm Gauntlets
			{itemID = 12631, spellID = 16655 }, --Fiery Plate Gauntlets
			{itemID = 7938, spellID = 9954 }, --Truesilver Gauntlets
			{itemID = 12418, spellID = 16654 }, --Radiant Gloves
			{itemID = 7927, spellID = 9950 }, --Ornate Mithril Gloves
			{itemID = 9366, spellID = 11643 }, --Golden Scale Gauntlets
			{itemID = 7919, spellID = 9928 }, --Heavy Mithril Gauntlet
		},
		{
			{itemID = 7917, spellID = 9820 }, --Barbaric Iron Gloves
			{itemID = 3485, spellID = 3336 }, --Green Iron Gauntlets
			{itemID = 3483, spellID = 3333 }, --Silvered Bronze Gauntlets
			{itemID = 3474, spellID = 3325 }, --Gemmed Copper Gauntlets
			{itemID = 3472, spellID = 3323 }, --Runed Copper Gauntlets
		},
	},
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Head",
		{
			{itemID = 19148, spellID = 23636 }, --Dark Iron Helm
			{itemID = 12640, spellID = 16729 }, --Lionheart Helm
			{itemID = 20551, spellID = 24913 }, --Darkrune Helm
			{itemID = 12620, spellID = 16742 }, --Enchanted Thorium Helm
			{itemID = 12636, spellID = 16728 }, --Helm of the Great Chief
			{itemID = 12633, spellID = 16724 }, --Whitesoul Helm
			{itemID = 12612, spellID = 16726 }, --Runic Plate Helm
			{itemID = 12427, spellID = 16658 }, --Imperial Plate Helm
			{itemID = 12417, spellID = 16659 }, --Radiant Circlet
			{itemID = 12410, spellID = 16653 }, --Thorium Helm
			{itemID = 11606, spellID = 15293 }, --Dark Iron Mail
			{itemID = 7937, spellID = 9980 }, --Ornate Mithril Helm
			{itemID = 7934, spellID = 9970 }, --Heavy Mithril Helm
			{itemID = 7931, spellID = 9961 }, --Mithril Coif
			{itemID = 7922, spellID = 9935 }, --Steel Plate Helm
		},
		{
			{itemID = 3837, spellID = 3503 }, --Golden Scale Coif
			{itemID = 12612, spellID = 16726 }, --Runic Plate Helm
			{itemID = 7915, spellID = 9814 }, --Barbaric Iron Helm
			{itemID = 3836, spellID = 3502 }, --Green Iron Helm
		},
	},
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs",
		{
			{itemID = 17013, spellID = 20876 }, --Dark Iron Leggings
			{itemID = 12414, spellID = 16662 }, --Thorium Leggings
			{itemID = 22385, spellID = 27829 }, --Titanic Leggings
			{itemID = 19694, spellID = 24140 }, --Darksoul Leggings
			{itemID = 12619, spellID = 16744 }, --Enchanted Thorium Leggings
			{itemID = 12429, spellID = 16730 }, --Imperial Plate Leggings
			{itemID = 12420, spellID = 16725 }, --Radiant Leggings
			{itemID = 12614, spellID = 16732 }, --Runic Plate Leggings
			{itemID = 30069, spellID = 36122 }, --Earthforged Leggings
			{itemID = 30070, spellID = 36124 }, --Windforged Leggings
			{itemID = 7926, spellID = 9945 }, --Ornate Mithril Pants
			{itemID = 7920, spellID = 9931 }, --Mithril Scale Pants
			{itemID = 7921, spellID = 9933 }, --Heavy Mithril Pants
			{itemID = 7929, spellID = 9957 }, --Orcish War Leggings
			{itemID = 3843, spellID = 3507 }, --Golden Scale Leggings
		},
		{
			{itemID = 3842, spellID = 3506 }, --Green Iron Leggings
			{itemID = 10423, spellID = 12259 }, --Silvered Bronze Leggings
			{itemID = 2865, spellID = 2668 }, --Rough Bronze Leggings
			{itemID = 3473, spellID = 3324 }, --Runed Copper Pants
			{itemID = 2852, spellID = 2662 }, --Copper Chain Pants
		},
	},
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder",
		{
			{itemID = 16988, spellID = 20873 }, --Fiery Chain Shoulders
			{itemID = 19691, spellID = 24137 }, --Bloodsoul Shoulders
			{itemID = 19695, spellID = 24141 }, --Darksoul Shoulders
			{itemID = 12610, spellID = 16664 }, --Runic Plate Shoulders
			{itemID = 12625, spellID = 16660 }, --Dawnbringer Shoulders
			{itemID = 11605, spellID = 15295 }, --Dark Iron Shoulders
			{itemID = 12428, spellID = 16646 }, --Imperial Plate Shoulders
			{itemID = 7932, spellID = 9966 }, --Mithril Scale Shoulders
			{itemID = 7928, spellID = 9952 }, --Ornate Mithril Shoulder
			{itemID = 7918, spellID = 9926 }, --Heavy Mithril Shoulder
			{itemID = 3841, spellID = 3505 }, --Golden Scale Shoulders
			{itemID = 7913, spellID = 9811 }, --Barbaric Iron Shoulders
			{itemID = 3840, spellID = 3504 }, --Green Iron Shoulders
			{itemID = 3481, spellID = 3330 }, --Silvered Bronze Shoulders
			{itemID = 3480, spellID = 3328 }, --Rough Bronze Shoulders
		},
	},
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist",
		{
			{itemID = 22197, spellID = 27585 }, --Heavy Obsidian Belt
			{itemID = 22764, spellID = 28463 }, --Ironvine Belt
			{itemID = 22195, spellID = 27588 }, --Light Obsidian Belt
			{itemID = 16989, spellID = 20872 }, --Fiery Chain Girdle
			{itemID = 19051, spellID = 23632 }, --Girdle of the Dawn
			{itemID = 19043, spellID = 23628 }, --Heavy Timbermaw Belt
			{itemID = 12424, spellID = 16647 }, --Imperial Plate Belt
			{itemID = 12416, spellID = 16645 }, --Radiant Belt
			{itemID = 12406, spellID = 16643 }, --Thorium Belt
			{itemID = 2857, spellID = 2666 }, --Runed Copper Belt
			{itemID = 2851, spellID = 2661 }, --Copper Chain Belt
		},
	},
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist",
		{
			{itemID = 22671, spellID = 28244 }, --Icebane Bracers
			{itemID = 17014, spellID = 20874 }, --Dark Iron Bracers
			{itemID = 12425, spellID = 16649 }, --Imperial Plate Bracers
			{itemID = 12408, spellID = 16644 }, --Thorium Bracers
			{itemID = 7924, spellID = 9937 }, --Mithril Scale Bracers
			{itemID = 6040, spellID = 7223 }, --Golden Scale Bracers
			{itemID = 3835, spellID = 3501 }, --Green Iron Bracers
			{itemID = 2868, spellID = 2672 }, --Patterned Bronze Bracers
			{itemID = 2854, spellID = 2664 }, --Runed Copper Bracers
			{itemID = 2853, spellID = 2663 }, --Copper Bracers
		},
	},
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .. "- One Handed",
		{
			{itemID = 19166, spellID = 23638 }, --Black Amnesty
			{itemID = 19168, spellID = 23652 }, --Blackguard
			{itemID = 19170, spellID = 23650 }, --Ebon Hand
			{itemID = 22384, spellID = 27830 }, --Persuader
			{itemID = 22383, spellID = 27832 }, --Sageblade
			{itemID = 12798, spellID = 16991 }, --Annihilator
			{itemID = 17016, spellID = 20897 }, --Dark Iron Destroyer
			{itemID = 17015, spellID = 20890 }, --Dark Iron Reaver
			{itemID = 12797, spellID = 16992 }, --Frostguard
			{itemID = 12783, spellID = 16995 }, --Heartseeker
			{itemID = 12794, spellID = 16993 }, --Masterwork Stormhammer
			{itemID = 12781, spellID = 16983 }, --Serenity
			{itemID = 12777, spellID = 16978 }, --Blazing Rapier
			{itemID = 12774, spellID = 16970 }, --Dawn's Edge
			{itemID = 30071, spellID = 36125 }, --Light Earthforged Blade
		},
		{
			{itemID = 30073, spellID = 36128 }, --Light Emberforged Hammer
			{itemID = 30072, spellID = 36126 }, --Light Skyforged Axe
			{itemID = 7961, spellID = 10007 }, --Phantom Blade
			{itemID = 7954, spellID = 10003 }, --The Shatterer
			{itemID = 12792, spellID = 16984 }, --Volcanic Hammer
			{itemID = 12773, spellID = 16969 }, --Ornate Thorium Handaxe
			{itemID = 7947, spellID = 10013 }, --Ebon Shiv
			{itemID = 7946, spellID = 10009 }, --Runed Mithril Hammer
			{itemID = 7944, spellID = 10005 }, --Dazzling Mithril Rapier
			{itemID = 7945, spellID = 10001 }, --Big Black Mace
			{itemID = 7943, spellID = 9997 }, --Wicked Mithril Blade
			{itemID = 7942, spellID = 9995 }, --Blue Glittering Axe
			{itemID = 7941, spellID = 9993 }, --Heavy Mithril Axe
			{itemID = 12260, spellID = 15973 }, --Searing Golden Blade
			{itemID = 17704, spellID = 21913 }, --Edge of Winter
		},
	},
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .. "- One Handed",
		{
			{itemID = 12259, spellID = 15972 }, --Glinting Steel Dagger
			{itemID = 3850, spellID = 3493 }, --Jade Serpentblade
			{itemID = 3849, spellID = 3492 }, --Hardened Iron Shortsword
			{itemID = 3492, spellID = 3297 }, --Mighty Iron Hammer
			{itemID = 5541, spellID = 6518 }, --Iridescent Hammer
			{itemID = 3491, spellID = 3296 }, --Heavy Bronze Mace
			{itemID = 3490, spellID = 3295 }, --Deadly Bronze Poniard
			{itemID = 5540, spellID = 6517 }, --Pearl-handled Dagger
			{itemID = 3848, spellID = 3491 }, --Big Bronze Knife
			{itemID = 3489, spellID = 3294 }, --Thick War Axe
			{itemID = 33791, spellID = 43549 }, --Heavy Copper Longsword
			{itemID = 2850, spellID = 2742 }, --Bronze Shortsword
			{itemID = 2849, spellID = 2741 }, --Bronze Axe
			{itemID = 2848, spellID = 2740 }, --Bronze Mace
			{itemID = 2845, spellID = 2738 }, --Copper Axe
		},
		{
			{itemID = 2844, spellID = 2737 }, --Copper Mace
		},
	},
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .. "- Two Handed",
		{
			{itemID = 19167, spellID = 23639 }, --Blackfury
			{itemID = 19169, spellID = 23653 }, --Nightfall
			{itemID = 17193, spellID = 21161 }, --Sulfuron Hammer
			{itemID = 12790, spellID = 16990 }, --Arcanite Champion
			{itemID = 12784, spellID = 16994 }, --Arcanite Reaper
			{itemID = 12796, spellID = 16988 }, --Hammer of the Titans
			{itemID = 12782, spellID = 16985 }, --Corruption
			{itemID = 12776, spellID = 16973 }, --Enchanted Battlehammer
			{itemID = 11607, spellID = 15294 }, --Dark Iron Sunderer
			{itemID = 11608, spellID = 15292 }, --Dark Iron Pulverizer
			{itemID = 7960, spellID = 10015 }, --Truesilver Champion
			{itemID = 7959, spellID = 10011 }, --Blight
			{itemID = 12775, spellID = 16971 }, --Huge Thorium Battleaxe
			{itemID = 3856, spellID = 3500 }, --Shadow Crescent Axe
			{itemID = 3854, spellID = 3497 }, --Frost Tiger Blade
		},
		{
			{itemID = 3855, spellID = 3498 }, --Massive Iron Axe
			{itemID = 3853, spellID = 3496 }, --Moonsteel Broadsword
			{itemID = 3852, spellID = 3495 }, --Golden Iron Destroyer
			{itemID = 3851, spellID = 3494 }, --Solid Iron Maul
			{itemID = 3487, spellID = 3292 }, --Heavy Copper Broadsword
			{itemID = 3488, spellID = 3293 }, --Copper Battle Axe
			{itemID = 7958, spellID = 9987 }, --Bronze Battle Axe
			{itemID = 7957, spellID = 9986 }, --Bronze Greatsword
			{itemID = 7956, spellID = 9985 }, --Bronze Warhammer
			{itemID = 6214, spellID = 7408 }, --Heavy Copper Maul
			{itemID = 7955, spellID = 9983 }, --Copper Claymore
			{itemID = 7166, spellID = 8880 }, --Copper Dagger
			{itemID = 2847, spellID = 2739 }, --Copper Shortsword
		},
	},
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - Thrown",
		{
			{itemID = 29201, spellID = 34979 }, --Thick Bronze Darts
			{itemID = 29203, spellID = 34982 }, --Enchanted Thorium Blades
			{itemID = 29202, spellID = 34981 }, --Whirling Steel Axes
		},
	},
	{
		Name = "Shield",
		{
			{itemID = 22198, spellID = 27586 }, --Jagged Obsidian Shield
		},
	},
	{
		Name = AL["Item Enhancements"],
		{
			{itemID = 12404, spellID = 16641 }, --Dense Sharpening Stone
			{itemID = 12643, spellID = 16640 }, --Dense Weightstone
			{itemID = 7964, spellID = 9918 }, --Solid Sharpening Stone
			{itemID = 7965, spellID = 9921 }, --Solid Weightstone
			{itemID = 6041, spellID = 7224 }, --Steel Weapon Chain
			{itemID = 6043, spellID = 7222 }, --Iron Counterweight
			{itemID = 6042, spellID = 7221 }, --Iron Shield Spike
			{itemID = 2871, spellID = 2674 }, --Heavy Sharpening Stone
			{itemID = 3241, spellID = 3117 }, --Heavy Weightstone
			{itemID = 2863, spellID = 2665 }, --Coarse Sharpening Stone
			{itemID = 3240, spellID = 3116 }, --Coarse Weightstone
			{itemID = 2862, spellID = 2660 }, --Rough Sharpening Stone
			{itemID = 3239, spellID = 3115 }, --Rough Weightstone
		},
	},
	{
		Name = AL["Miscellaneous"],
		{
			{itemID = 15872, spellID = 19669 }, --Arcanite Skeleton Key
			{itemID = 15871, spellID = 19668 }, --Truesilver Skeleton Key
			{itemID = 15870, spellID = 19667 }, --Golden Skeleton Key
			{itemID = 15869, spellID = 19666 }, --Silver Skeleton Key
			{itemID = 16206, spellID = 20201 }, --Arcanite Rod
			{itemID = 12644, spellID = 16639 }, --Dense Grinding Stone
			{itemID = 9060, spellID = 11454 }, --Inlaid Mithril Cylinder
			{itemID = 11144, spellID = 14380 }, --Truesilver Rod
			{itemID = 7966, spellID = 9920 }, --Solid Grinding Stone
			{itemID = 11128, spellID = 14379 }, --Golden Rod
			{itemID = 7071, spellID = 8768 }, --Iron Buckle
			{itemID = 3486, spellID = 3337 }, --Heavy Grinding Stone
			{itemID = 6338, spellID = 7818 }, --Silver Rod
			{itemID = 3478, spellID = 3326 }, --Coarse Grinding Stone
			{itemID = 3470, spellID = 3320 }, --Rough Grinding Stone
		},
	},
	{
		Name = ARMORSMITH,
		{
			{itemID = 30069, spellID = 36122 }, --Earthforged Leggings
			{itemID = 30070, spellID = 36124 }, --Windforged Leggings
		},
	},
	{
		Name = WEAPONSMITH,
		{
			{itemID = 30071, spellID = 36125 }, --Light Earthforged Blade
			{itemID = 30073, spellID = 36128 }, --Light Emberforged Hammer
			{itemID = 30072, spellID = 36126 }, --Light Skyforged Axe
		},
	},
	{
		Name = AL["High Risk"],
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{itemID = 967173, spellID = 968019 }, --Sturdy Living Belt Buckle
			{itemID = 967176, spellID = 968022 }, --Sturdy Deflecting Belt Buckle
			{itemID = 967179, spellID = 968025 }, --Sturdy Roguish Belt Buckle
			{itemID = 967182, spellID = 968028 }, --Sturdy Dancing Belt Buckle
			{itemID = 967185, spellID = 968031 }, --Sturdy Magus Belt Buckle
			{itemID = 967188, spellID = 968034 }, --Sturdy Cleric's Belt Buckle
			{itemID = 967191, spellID = 968037 }, --Sturdy Warlord's Belt Buckle
			{itemID = 967194, spellID = 968040 }, --Sturdy Gaurdian's Belt Buckle
			{itemID = 967681, spellID = 968481 }, --Homicite Key
		},
		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{itemID = 967174, spellID = 968020 }, --Mastercraft Living Belt Buckle
			{itemID = 967177, spellID = 968023 }, --Mastercraft Deflecting Belt Buckle
			{itemID = 967180, spellID = 968026 }, --Mastercraft Roguish Belt Buckle
			{itemID = 967183, spellID = 968029 }, --Mastercraft Dancing Belt Buckle
			{itemID = 967186, spellID = 968032 }, --Mastercraft Magus Belt Buckle
			{itemID = 967189, spellID = 968035 }, --Mastercraft Cleric's Belt Buckle
			{itemID = 967192, spellID = 968038 }, --Mastercraft Warlord's Belt Buckle
			{itemID = 967195, spellID = 968041 }, --Mastercraft Gaurdian's Belt Buckle
			{itemID = 967682, spellID = 968482 }, --Homicite Key
		},
	},
}
---------------
--- Cooking ---
---------------

AtlasLoot_Data["CookingCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = COOKING,
	Type = "ClassicCrafting",
	{
		Name = AL["Page 1"],
		{
			{itemID = 21023, spellID = 25659 }, --Dirge's Kickin' Chimaerok Chops
			{itemID = 100626, spellID = 966455 }, --Azerothian Schmorgus Boards
			{itemID = 100609, spellID = 966436 }, --Chilled Lava Eels
			{itemID = 100608, spellID = 966435 }, --Chillwind Flank Steaks
			{itemID = 100607, spellID = 966434 }, --Hippogryph Steaks
			{itemID = 100606, spellID = 966433 }, --Steamed Makrinni Claws
			{itemID = 100605, spellID = 966432 }, --Rubbed Ravasaur Ribss
			{itemID = 100604, spellID = 966431 }, --Hearty Stegodon Stews
			{itemID = 100603, spellID = 966430 }, --Crispy Pterrordax Wings
			{itemID = 100602, spellID = 966429 }, --Spicy Dino Jerkys
			{itemID = 100601, spellID = 966428 }, --Dirge's Nevermelt Ice Creams
			{itemID = 100599, spellID = 966427 }, --Silithid Snacks
			{itemID = 100598, spellID = 966426 }, --Hydra Scale Soups
			{itemID = 100597, spellID = 966425 }, --Ghostly Goulashs
			{itemID = 100583, spellID = 966398 }, --Seared Cunning Carps
		},
	},
	{
		Name = AL["Page 2"],
		{
			{itemID = 20452, spellID = 24801 }, --Smoked Desert Dumplings
			{itemID = 13935, spellID = 18247 }, --Baked Salmon
			{itemID = 13933, spellID = 18245 }, --Lobster Stew
			{itemID = 13934, spellID = 18246 }, --Mightfish Steak
			{itemID = 18254, spellID = 22761 }, --Runn Tum Tuber Surprise
			{itemID = 35563, spellID = 46684 }, --Charred Bear Kabobs
			{itemID = 35565, spellID = 46688 }, --Juicy Bear Burger
			{itemID = 13931, spellID = 18243 }, --Nightfin Soup
			{itemID = 13932, spellID = 18244 }, --Poached Sunscale Salmon
			{itemID = 13928, spellID = 18240 }, --Grilled Squid
			{itemID = 13929, spellID = 18242 }, --Hot Smoked Bass
			{itemID = 33004, spellID = 64054 }, --Clamlette Magnifique
			{itemID = 13927, spellID = 18239 }, --Cooked Glossy Mightfish
			{itemID = 13930, spellID = 18241 }, --Filet of Redgill
			{itemID = 12218, spellID = 15933 }, --Monster Omelet
		},
		{
			{itemID = 12216, spellID = 15915 }, --Spiced Chili Crab
			{itemID = 6887, spellID = 18238 }, --Spotted Yellowtail
			{itemID = 18045, spellID = 22480 }, --Tender Wolf Steak
			{itemID = 16766, spellID = 20626 }, --Undermine Clam Chowder
			{itemID = 12217, spellID = 15906 }, --Dragonbreath Chili
			{itemID = 12215, spellID = 15910 }, --Heavy Kodo Stew
			{itemID = 17222, spellID = 21175 }, --Spider Sausage
			{itemID = 4457, spellID = 4094 }, --Barbecued Buzzard Wing
			{itemID = 12213, spellID = 15863 }, --Carrion Surprise
			{itemID = 6038, spellID = 7213 }, --Giant Clam Scorcho
			{itemID = 10841, spellID = 13028 }, --Goldthorn Tea
			{itemID = 13851, spellID = 15856 }, --Hot Wolf Ribs
		},
	},
	{
		Name = AL["Page 3"],
		{
			{itemID = 12212, spellID = 15861 }, --Jungle Stew
			{itemID = 8364, spellID = 20916 }, --Mithril Head Trout
			{itemID = 12214, spellID = 15865 }, --Mystery Stew
			{itemID = 12210, spellID = 15855 }, --Roast Raptor
			{itemID = 4594, spellID = 7828 }, --Rockscale Cod
			{itemID = 21217, spellID = 25954 }, --Sagefish Delight
			{itemID = 3729, spellID = 3400 }, --Soothing Turtle Bisque
			{ itemID = 20074, spellID = 24418 }, --Heavy Crocolisk Stew
			{itemID = 3728, spellID = 3399 }, --Tasty Lion Steak
			{itemID = 3665, spellID = 3376 }, --Curiously Tasty Omelet
			{itemID = 5527, spellID = 6500 }, --Goblin Deviled Clams
			{itemID = 3727, spellID = 3398 }, --Hot Lion Chops
			{itemID = 12209, spellID = 15853 }, --Lean Wolf Steak
			{itemID = 3664, spellID = 3373 }, --Crocolisk Gumbo
			{itemID = 3726, spellID = 3397 }, --Big Bear Steak
		},
		{
			{itemID = 3666, spellID = 3377 }, --Gooey Spider Cake
			{itemID = 5480, spellID = 6419 }, --Lean Venison
			{itemID = 2685, spellID = 2548 }, --Succulent Pork Ribs
			{itemID = 4593, spellID = 7755 }, --Bristle Whisker Catfish
			{itemID = 34832, spellID = 45695 }, --Captain Rumsey's Lager
			{itemID = 5479, spellID = 6418 }, --Crispy Lizard Tail
			{itemID = 1082, spellID = 2547 }, --Redridge Goulash
			{itemID = 1017, spellID = 2549 }, --Seasoned Wolf Kabob
			{itemID = 5526, spellID = 6501 }, --Clam Chowder
			{itemID = 5478, spellID = 6417 }, --Dig Rat Stew
			{itemID = 3663, spellID = 3372 }, --Murloc Fin Soup
			{itemID = 2682, spellID = 2545 }, --Cooked Crab Claw
			{itemID = 6657, spellID = 8238 }, --Savory Deviate Delight
			{itemID = 3662, spellID = 3370 }, --Crocolisk Steak
			{itemID = 6890, spellID = 8607 }, --Smoked Bear Meat
		},
	},
	{
		Name = AL["Page 4"],
		{
			{itemID = 2687, spellID = 2546 }, --Dry Pork Ribs
			{itemID = 21072, spellID = 25704 }, --Smoked Sagefish
			{itemID = 2683, spellID = 2544 }, --Crab Cake
			{itemID = 44837, spellID = 62050 }, --Cornbread Stuffing
			{itemID = 733, spellID = 2543 }, --Westfall Stew
			{itemID = 3220, spellID = 3371 }, --Blood Sausage
			{itemID = 22645, spellID = 28267 }, --Crunchy Spider Surprise
			{itemID = 7676, spellID = 9513 }, --Thistle Tea
			{itemID = 27636, spellID = 33278 }, --Bat Bites
			{itemID = 5525, spellID = 6499 }, --Boiled Clams
			{itemID = 2684, spellID = 2541 }, --Coyote Steak
			{itemID = 5476, spellID = 6415 }, --Fillet of Frenzy
			{itemID = 724, spellID = 2542 }, --Goretusk Liver Pie
			{itemID = 6316, spellID = 7754 }, --Loch Frenzy Delight
			{itemID = 4592, spellID = 7753 }, --Longjaw Mud Snapper
		},
		{
			{itemID = 5095, spellID = 7827 }, --Rainbow Fin Albacore
			{itemID = 34112, spellID = 62045 }, --Roasted Turkey
			{itemID = 5477, spellID = 6416 }, --Strider Stew
			{itemID = 1645, spellID = 62044 }, --Tasty Cranberries
			{itemID = 44839, spellID = 62051 }, --Candied Yam
			{itemID = 17198, spellID = 21144 }, --Egg Nog
			{itemID = 5474, spellID = 6414 }, --Roasted Kodo Meat
			{itemID = 44840, spellID = 62049 }, --Cranberry Chutney
			{itemID = 5473, spellID = 6413 }, --Scorpid Surprise
			{itemID = 2888, spellID = 2795 }, --Beer Basted Boar Ribs
			{itemID = 5472, spellID = 6412 }, --Kaldorei Spider Kabob
			{itemID = 2680, spellID = 2539 }, --Spiced Wolf Meat
			{itemID = 6290, spellID = 7751 }, --Brilliant Smallfish
			{itemID = 2679, spellID = 2538 }, --Charred Wolf Meat
			{itemID = 27635, spellID = 33276 }, --Lynx Steak
		},
	},
	{
		Name = AL["Page 5"],
		{
			{itemID = 12224, spellID = 15935 }, --Crispy Bat Wing
			{itemID = 33924, spellID = 43779 }, --Delicious Chocolate Cake
			{itemID = 17197, spellID = 21143 }, --Gingerbread Cookie
			{itemID = 6888, spellID = 8604 }, --Herb Baked Egg
			{itemID = 2681, spellID = 2540 }, --Roasted Boar Meat
			{itemID = 24105, spellID = 33277 }, --Roasted Moongraze Tenderloin
			{itemID = 787, spellID = 7752 }, --Slitherskin Mackerel
			{itemID = 30816, spellID = 37836 }, --Spice Bread
			{itemID = 46691, spellID = 65454 }, --Bread of the Dead
		},
	},
	{
		Name = AL["High Risk"].." - Page 1",
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{itemID = 967510, spellID = 968280 }, --Animated Soup for the Soul
			{itemID = 967513, spellID = 968283 }, --Volcanic Sandwich
			{itemID = 967516, spellID = 968286 }, --Winter Wontons
			{itemID = 967519, spellID = 968289 }, --Storm Steak
			{itemID = 967522, spellID = 968292 }, --Void Touched Stew
			{itemID = 967525, spellID = 968295 }, --Spicy Vulture Steak
			{itemID = 967528, spellID = 968298 }, --Wizard Wontons
			{itemID = 967531, spellID = 968301 }, --Jurassic Burger
			{itemID = 967534, spellID = 968304 }, --Rough-alo wings
			{itemID = 967537, spellID = 968307 }, --The Whooper Sandwich
			{itemID = 967540, spellID = 968310 }, --Vulture a la King
			{itemID = 967543, spellID = 968313 }, --Scorching Hot Steak
			{itemID = 967546, spellID = 968316 }, --Lively Stew
			{itemID = 967549, spellID = 968319 }, --Crawling Steak
		},
		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{itemID = 967511, spellID = 968281 }, --Animated Soup for the Soul
			{itemID = 967514, spellID = 968284 }, --Volcanic Sandwich
			{itemID = 967517, spellID = 968287 }, --Winter Wontons
			{itemID = 967520, spellID = 968290 }, --Storm Steak
			{itemID = 967523, spellID = 968293 }, --Void Touched Stew
			{itemID = 967526, spellID = 968296 }, --Spicy Vulture Steak
			{itemID = 967529, spellID = 968299 }, --Wizard Wontons
			{itemID = 967532, spellID = 968302 }, --Jurassic Burger
			{itemID = 967535, spellID = 968305 }, --Rough-alo wings
			{itemID = 967538, spellID = 968308 }, --The Whooper Sandwich
			{itemID = 967541, spellID = 968311 }, --Vulture a la King
			{itemID = 967544, spellID = 968314 }, --Scorching Hot Steak
			{itemID = 967547, spellID = 968317 }, --Lively Stew
			{itemID = 967550, spellID = 968320 }, --Crawling Steak
		},
	},
	{
		Name = AL["High Risk"].." - Page 2",
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{itemID = 967600, spellID = 968370 }, --Subtle Sandwich
			{itemID = 967603, spellID = 968373 }, --Subtle Wontons
			{itemID = 967606, spellID = 968376 }, --Subtle Sulferous Soup
			{itemID = 967609, spellID = 968379 }, --Strongman Stew
			{itemID = 967612, spellID = 968382 }, --Mysterious Void Roast
			{itemID = 967615, spellID = 968385 }, --Fire Charred Roast
			{itemID = 967618, spellID = 968388 }, --Storm Fried Roast
			{itemID = 967621, spellID = 968391 }, --Winter Roast
			{itemID = 967624, spellID = 968394 }, --Blackened Roast
			{itemID = 967627, spellID = 968397 }, --Dino Delight
			{itemID = 967630, spellID = 968400 }, --Slick-fil-A Sandwich
			{itemID = 967552, spellID = 968322 }, --Breakonator Sandwich
			{itemID = 967600, spellID = 968370 }, --Subtle Steak
		},
		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{itemID = 967601, spellID = 968371 }, --Subtle Sandwich
			{itemID = 967604, spellID = 968374 }, --Subtle Wontons
			{itemID = 967607, spellID = 968377 }, --Subtle Sulferous Soup
			{itemID = 967610, spellID = 968380 }, --Strongman Stew
			{itemID = 967613, spellID = 968383 }, --Mysterious Void Roast
			{itemID = 967616, spellID = 968386 }, --Fire Charred Roast
			{itemID = 967619, spellID = 968389 }, --Storm Fried Roast
			{itemID = 967622, spellID = 968392 }, --Winter Roast
			{itemID = 967625, spellID = 968395 }, --Blackened Roast
			{itemID = 967628, spellID = 968398 }, --Dino Delight
			{itemID = 967631, spellID = 968401 }, --Slick-fil-A Sandwich
			{itemID = 967553, spellID = 968323 }, --Breakonator Sandwich
			{itemID = 967598, spellID = 968368 }, --Subtle Steak
		},
	},
	{
		Name = AL["High Risk"].." - Page 3",
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{itemID = 967555, spellID = 968325 }, --Master Wontons
			{itemID = 967558, spellID = 968328 }, --Big Whack Sandwich
			{itemID = 967561, spellID = 968331 }, --Warping Wontons
			{itemID = 967564, spellID = 968334 }, --Duck Stew
			{itemID = 967567, spellID = 968337 }, --Mountainman Stew
			{itemID = 967570, spellID = 968340 }, --Scorched Stew
			{itemID = 967573, spellID = 968343 }, --Vulcan Wontons
			{itemID = 967576, spellID = 968346 }, --Jurassic Soup
			{itemID = 967579, spellID = 968349 }, --Heightened Wontons
			{itemID = 967582, spellID = 968352 }, --Hearty Spirit Soup
			{itemID = 967585, spellID = 968355 }, --Jurassic Steak
			{itemID = 967588, spellID = 968358 }, --Stormwich Sandwich
			{itemID = 967591, spellID = 968361 }, --Warding Wontons
			{itemID = 967594, spellID = 968364 }, --Rolling Meatballs
		},
		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{itemID = 967556, spellID = 968326 }, --Master Wontons
			{itemID = 967559, spellID = 968329 }, --Big Whack Sandwich
			{itemID = 967562, spellID = 968332 }, --Warping Wontons
			{itemID = 967565, spellID = 968335 }, --Duck Stew
			{itemID = 967568, spellID = 968338 }, --Mountainman Stew
			{itemID = 967571, spellID = 968341 }, --Scorched Stew
			{itemID = 967574, spellID = 968344 }, --Vulcan Wontons
			{itemID = 967577, spellID = 968347 }, --Jurassic Soup
			{itemID = 967580, spellID = 968350 }, --Heightened Wontons
			{itemID = 967583, spellID = 968353 }, --Hearty Spirit Soup
			{itemID = 967586, spellID = 968356 }, --Jurassic Steak
			{itemID = 967589, spellID = 968359 }, --Stormwich Sandwich
			{itemID = 967592, spellID = 968362 }, --Warding Wontons
			{itemID = 967595, spellID = 968365 }, --Rolling Meatballs
		},
	},
	{
		Name = AL["High Risk"].." - "..AL["Miscellaneous"],
		{
			{itemID = 967704, spellID = 968647 }, --Alluring Bait
		},
		{
			{itemID = 967705, spellID = 968648 }, --Irresistible Bait
		},
	},
}

------------------
--- Enchanting ---
------------------

AtlasLoot_Data["EnchantingCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = ENCHANTING,
	Type = "ClassicCrafting",
	{
		Name = AL["Enchant Boots"],
		{
			{spellID = 20023, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Greater Agility
			{spellID = 20024, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Spirit
			{spellID = 20020, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Greater Stamina
			{spellID = 63746, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Lesser Accuracy
			{spellID = 13935, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Agility
			{spellID = 13890, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Minor Speed
		},
		{
			{spellID = 13836, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Stamina
			{spellID = 13687, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Lesser Spirit
			{spellID = 13644, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Lesser Stamina
			{spellID = 13637, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Lesser Agility
			{spellID = 7867, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Minor Agility
			{spellID = 7863, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Minor Stamina
		},
	},
	{
		Name = AL["Enchant Bracer"],
		{
			{spellID = 23802, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Healing Power
			{spellID = 20011, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Superior Stamina
			{spellID = 20010, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Superior Strength
			{spellID = 23801, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Mana Regeneration
			{spellID = 20009, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Superior Spirit
			{spellID = 20008, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Greater Intellect
			{spellID = 13939, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Greater Strength
			{spellID = 13945, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Greater Stamina
			{spellID = 13931, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Deflection
			{spellID = 13846, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Greater Spirit
			{spellID = 13822, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Intellect
			{spellID = 13661, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Strength
			{spellID = 13646, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Lesser Deflection
			{spellID = 13648, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Stamina
			{spellID = 13642, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Spirit
		},
		{
			{spellID = 13622, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Lesser Intellect
			{spellID = 13536, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Lesser Strength
			{spellID = 13501, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Lesser Stamina
			{spellID = 7859, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Lesser Spirit
			{spellID = 7779, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Minor Agility
			{spellID = 7782, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Minor Strength
			{spellID = 7457, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Minor Stamina
			{spellID = 7766, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Minor Spirit
			{spellID = 7418, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Minor Health
			{spellID = 7428, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Minor Deflection
		},
	},
	{
		Name = AL["Enchant Chest"],
		{
			{spellID = 20025, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Greater Stats
			{spellID = 20028, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Major Mana
			{spellID = 20026, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Major Health
			{spellID = 13941, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Stats
			{spellID = 13917, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Superior Mana
			{spellID = 13858, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Superior Health
			{spellID = 13700, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Lesser Stats
			{spellID = 13663, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Greater Mana
			{spellID = 13640, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Greater Health
			{spellID = 13626, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Minor Stats
			{spellID = 13607, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Mana
			{spellID = 13538, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Lesser Absorption
			{spellID = 7857, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Health
			{spellID = 7776, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Lesser Mana
			{spellID = 7748, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Lesser Health
		},
		{
			{spellID = 7426, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Minor Absorption
			{spellID = 7443, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Minor Mana
			{spellID = 7420, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Minor Health
		},
	},
	{
		Name = AL["Enchant Cloak"],
		{
			{spellID = 25081, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Greater Fire Resistance
			{spellID = 20015, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Superior Defense
			{spellID = 20014, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Greater Resistance
			{spellID = 13882, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Lesser Agility
			{spellID = 13746, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Greater Defense
			{spellID = 13794, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Resistance
			{spellID = 13657, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Fire Resistance
			{spellID = 13635, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Defense
			{spellID = 13522, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Lesser Shadow Resistance
			{spellID = 7861, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Lesser Fire Resistance
			{spellID = 13419, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Minor Agility
			{spellID = 13421, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Lesser Protection
			{spellID = 7771, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Minor Protection
			{spellID = 7454, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Minor Resistance
		},
		{
			{spellID = 31150, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Dragon Fire
			{spellID = 31153, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Draconic Might
			{spellID = 31156, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Blazing
		},
	},
	{
		Name = AL["Enchant Gloves"],
		{
			{spellID = 25078, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Fire Power
			{spellID = 25074, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Frost Power
			{spellID = 25079, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Healing Power
			{spellID = 25073, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Shadow Power
			{spellID = 25080, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Superior Agility
			{spellID = 25072, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Threat
			{spellID = 20013, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Greater Strength
			{spellID = 20012, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Greater Agility
			{spellID = 13948, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Minor Haste
			{spellID = 13947, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Riding Skill
			{spellID = 13868, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Advanced Herbalism
			{spellID = 13887, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Strength
			{spellID = 13841, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Advanced Mining
			{spellID = 13815, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Agility
			{spellID = 13698, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Skinning
		},
		{
			{spellID = 13620, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Fishing
			{spellID = 13617, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Herbalism
			{spellID = 13612, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Mining
		},
	},
	{
		Name = AL["Enchant Shield"],
		{
			{spellID = 20016, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Superior Spirit
			{spellID = 20017, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Greater Stamina
			{spellID = 13933, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Frost Resistance
			{spellID = 13905, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Greater Spirit
			{spellID = 13817, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Stamina
			{spellID = 13689, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Lesser Block
			{spellID = 13659, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Spirit
			{spellID = 13631, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Lesser Stamina
			{spellID = 13485, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Lesser Spirit
			{spellID = 13464, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Lesser Protection
			{spellID = 13378, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Minor Stamina
		},
	},
	{
		Name = AL["Enchant 2H Weapon"],
		{
			{spellID = 20036, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Major Intellect
			{spellID = 20035, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Major Spirit
			{spellID = 20030, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Superior Impact
			{spellID = 27837, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Agility
			{spellID = 13937, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Greater Impact
			{spellID = 13695, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Impact
			{spellID = 13529, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Lesser Impact
			{spellID = 13380, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Lesser Spirit
			{spellID = 7793, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Lesser Intellect
			{spellID = 7745, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Minor Impact
		},
	},
	{
		Name = AL["Enchant Weapon"],
		{
			{spellID = 20034, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Crusader
			{spellID = 22750, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Healing Power
			{spellID = 20032, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Lifestealing
			{spellID = 23804, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Mighty Intellect
			{spellID = 23803, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Mighty Spirit
			{spellID = 22749, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Spell Power
			{spellID = 20031, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Superior Striking
			{spellID = 20033, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Unholy Weapon
			{spellID = 23800, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Agility
			{spellID = 23799, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Strength
			{spellID = 20029, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Icy Chill
			{spellID = 13898, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Fiery Weapon
			{spellID = 13943, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Greater Striking
			{spellID = 13915, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Demonslaying
			{spellID = 13693, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Striking
		},
		{
			{spellID = 21931, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Winter's Might
			{spellID = 13655, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Lesser Elemental Slayer
			{spellID = 13653, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Lesser Beastslayer
			{spellID = 13503, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Lesser Striking
			{spellID = 7786, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Minor Beastslayer
			{spellID = 7788, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Minor Striking
		},
	},
	{
		Name = AL["Miscellaneous"],
		{
			{itemID = 20748, spellID = 25130 }, --Brilliant Mana Oil
			{itemID = 20749, spellID = 25129 }, --Brilliant Wizard Oil
			{itemID = 22461, spellID = 32664 }, --Runed Fel Iron Rod
			{itemID = 16207, spellID = 20051 }, --Runed Arcanite Rod
			{itemID = 20750, spellID = 25128 }, --Wizard Oil
			{itemID = 12655, spellID = 17180 }, --Enchanted Thorium
			{itemID = 20747, spellID = 25127 }, --Lesser Mana Oil
			{itemID = 12810, spellID = 17181 }, --Enchanted Leather
			{itemID = 20746, spellID = 25126 }, --Lesser Wizard Oil
			{itemID = 11145, spellID = 13702 }, --Runed Truesilver Rod
			{itemID = 20745, spellID = 25125 }, --Minor Mana Oil
			{itemID = 11130, spellID = 13628 }, --Runed Golden Rod
			{itemID = 6339, spellID = 7795 }, --Runed Silver Rod
			{itemID = 20744, spellID = 25124 }, --Minor Wizard Oil
			{itemID = 6218, spellID = 7421 }, --Runed Copper Rod
		},
		{
			{itemID = 11290, spellID = 14810 }, --Greater Mystic Wand
			{itemID = 11289, spellID = 14809 }, --Lesser Mystic Wand
			{itemID = 11288, spellID = 14807 }, --Greater Magic Wand
			{itemID = 11287, spellID = 14293 }, --Lesser Magic Wand
		},
	},
	{
		Name = AL["High Risk"],
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{icon = "Spell_Holy_GreaterHeal", spellID = 968677 }, --Enchant Weapon - Unstoppable Assault
			{icon = "Spell_Holy_GreaterHeal", spellID = 968680 }, --Enchant Weapon - Lucid Assault
			{icon = "Spell_Holy_GreaterHeal", spellID = 968683 }, --Enchant Weapon - Spellbinder's Rage
			{icon = "Spell_Holy_GreaterHeal", spellID = 968686 }, --Enchant Weapon - Ninja's Focus
			{icon = "Spell_Holy_GreaterHeal", spellID = 968689 }, --Enchant Weapon - Grovewarden's Blessing
			{icon = "Spell_Holy_GreaterHeal", spellID = 968692 }, --Enchant Weapon - Viscious Assault
			{icon = "Spell_Holy_GreaterHeal", spellID = 968695 }, --Enchant Weapon - Arcane Dexterity
			{icon = "Spell_Holy_GreaterHeal", spellID = 968698 }, --Enchant Weapon - Arcane Artillery
			{icon = "Spell_Holy_GreaterHeal", spellID = 968701 }, --Enchant Weapon - Arcane Precision
			{icon = "Spell_Holy_GreaterHeal", spellID = 968770 }, --Enchant Weapon - Crusader II
		},
		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{icon = "Spell_Holy_GreaterHeal", spellID = 968678 }, --Enchant Weapon - Greater Unstoppable Assault
			{icon = "Spell_Holy_GreaterHeal", spellID = 968681 }, --Enchant Weapon - Greater Lucid Assualt
			{icon = "Spell_Holy_GreaterHeal", spellID = 968684 }, --Enchant Weapon - Greater Spellbinder's Rage
			{icon = "Spell_Holy_GreaterHeal", spellID = 968687 }, --Enchant Weapon - Greater Ninja's Focus
			{icon = "Spell_Holy_GreaterHeal", spellID = 968690 }, --Enchant Weapon - Greater Grovewarden's Blessing
			{icon = "Spell_Holy_GreaterHeal", spellID = 968693 }, --Enchant Weapon - Greater Viscious Assault
			{icon = "Spell_Holy_GreaterHeal", spellID = 968696 }, --Enchant Weapon - Greater Arcane Dexterity
			{icon = "Spell_Holy_GreaterHeal", spellID = 968699 }, --Enchant Weapon - Greater Arcane Artillery
			{icon = "Spell_Holy_GreaterHeal", spellID = 968702 }, --Enchant Weapon - Greater Arcane Precision
			{icon = "Spell_Holy_GreaterHeal", spellID = 968771 }, --Enchant Weapon - Crusader III
		},
	},
}

-------------------
--- Engineering ---
-------------------

AtlasLoot_Data["EngineeringCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = ENGINEERING,
	Type = "ClassicCrafting",
	{
		Name = AL["Ammunition"],
		{
			{itemID = 18042, desc = "Quest See Tooltip", quest = {14183,14182, text = "Trade Thorium Shells for Arrows"}}, --Thorium Headed Arrow
			{itemID = 15997, spellID = 19800 }, --Thorium Shells
			{itemID = 10513, spellID = 12621 }, --Mithril Gyro-Shot
			{itemID = 10512, spellID = 12596 }, --Hi-Impact Mithril Slugs
			{itemID = 8069, spellID = 3947 }, --Crafted Solid Shot
			{itemID = 8068, spellID = 3930 }, --Crafted Heavy Shot
			{itemID = 8067, spellID = 3920 }, --Crafted Light Shot
		},
	},
	{
		Name = BabbleInventory["Armor"],
		{
			{itemID = 16022, spellID = 19830 }, --Arcanite Dragonling
			{itemID = 19999, spellID = 24356 }, --Bloodvine Goggles
			{itemID = 19998, spellID = 24357 }, --Bloodvine Lens
			{itemID = 18639, spellID = 23082 }, --Ultra-Flash Shadow Reflector
			{itemID = 18638, spellID = 23081 }, --Hyper-Radiant Flame Reflector
			{itemID = 18634, spellID = 23077 }, --Gyrofreeze Ice Reflector
			{itemID = 10504, spellID = 12622 }, --Green Lens
			{itemID = 16008, spellID = 19825 }, --Master Engineer's Goggles
			{itemID = 16009, spellID = 19819 }, --Voice Amplification Modulator
			{itemID = 18637, spellID = 23079 }, --Major Recombobulator
			{itemID = 15999, spellID = 19794 }, --Spellpower Goggles Xtreme Plus
			{itemID = 10576, spellID = 12624 }, --Mithril Mechanical Dragonling
			{itemID = 10506, spellID = 12617 }, --Deepdive Helmet
			{itemID = 10503, spellID = 12618 }, --Rose Colored Goggles
			{itemID = 10518, spellID = 12616 }, --Parachute Cloak
		},
		{
			{itemID = 10502, spellID = 12615 }, --Spellpower Goggles Xtreme
			{itemID = 10501, spellID = 12607 }, --Catseye Ultra Goggles
			{itemID = 10500, spellID = 12594 }, --Fire Goggles
			{itemID = 4396, spellID = 3969 }, --Mechanical Dragonling
			{itemID = 4393, spellID = 3966 }, --Craftsman's Monocle
			{itemID = 10499, spellID = 12587 }, --Bright-Eye Goggles
			{itemID = 4385, spellID = 3956 }, --Green Tinted Goggles
			{itemID = 4381, spellID = 3952 }, --Minor Recombobulator
			{itemID = 4373, spellID = 3940 }, --Shadow Goggles
			{itemID = 4368, spellID = 3934 }, --Flying Tiger Goggles
		},
	},
	{
		Name = AL["Explosives"],
		{
			{itemID = 16040, spellID = 19831 }, --Arcane Bomb
			{itemID = 16005, spellID = 19799 }, --Dark Iron Bomb
			{itemID = 18594, spellID = 23080 }, --Powerful Seaforium Charge
			{itemID = 15993, spellID = 19790 }, --Thorium Grenade
			{itemID = 18641, spellID = 23070 }, --Dense Dynamite
			{itemID = 10562, spellID = 12619 }, --Hi-Explosive Bomb
			{itemID = 10586, spellID = 12754 }, --The Big One
			{itemID = 10514, spellID = 12603 }, --Mithril Frag Bomb
			{itemID = 10577, spellID = 12716 }, --Goblin Mortar
			{itemID = 10646, spellID = 12760 }, --Goblin Sapper Charge
			{itemID = 10577, spellID = 13240 }, --The Mortar: Reloaded
			{itemID = 18588, spellID = 23069 }, --EZ-Thro Dynamite II
			{itemID = 4398, spellID = 3972 }, --Large Seaforium Charge
			{itemID = 4395, spellID = 3968 }, --Goblin Land Mine
			{itemID = 4394, spellID = 3967 }, --Big Iron Bomb
		},
		{
			{itemID = 4390, spellID = 3962 }, --Iron Grenade
			{itemID = 10507, spellID = 12586 }, --Solid Dynamite
			{itemID = 4403, spellID = 3960 }, --Portable Bronze Mortar
			{itemID = 4380, spellID = 3950 }, --Big Bronze Bomb
			{itemID = 4378, spellID = 3946 }, --Heavy Dynamite
			{itemID = 4374, spellID = 3941 }, --Small Bronze Bomb
			{itemID = 4370, spellID = 3937 }, --Large Copper Bomb
			{itemID = 6714, spellID = 8339 }, --EZ-Thro Dynamite
			{itemID = 4367, spellID = 3933 }, --Small Seaforium Charge
			{itemID = 4365, spellID = 3931 }, --Coarse Dynamite
			{itemID = 4360, spellID = 3923 }, --Rough Copper Bomb
			{itemID = 4358, spellID = 3919 }, --Rough Dynamite
		},
	},
	{
		Name = AL["Item Enhancements"],
		{
			{itemID = 18283, spellID = 22793 }, --Biznicks 247x128 Accurascope
			{itemID = 10548, spellID = 12620 }, --Sniper Scope
			{itemID = 10546, spellID = 12597 }, --Deadly Scope
			{itemID = 4407, spellID = 3979 }, --Accurate Scope
			{itemID = 4406, spellID = 3978 }, --Standard Scope
			{itemID = 4405, spellID = 3977 }, --Crude Scope
		},
	},
	{
		Name = AL["Miscellaneous"],
		{
			{itemID = 18232, spellID = 22704 }, --Field Repair Bot 74A
			{itemID = 23832, spellID = 30573 }, --Gnomish Tonk Controller
			{itemID = 23831, spellID = 30561 }, --Goblin Tonk Controller
			{itemID = 21570, spellID = 26443 }, --Firework Cluster Launcher
			{itemID = 16023, spellID = 19814 }, --Masterwork Target Dummy
			{itemID = 21714, spellID = 26426 }, --Large AtlasLoot.Colors.BLUE Rocket Cluster
			{itemID = 21716, spellID = 26427 }, --Large AtlasLoot.Colors.GREEN Rocket Cluster
			{itemID = 21718, spellID = 26428 }, --Large AtlasLoot.Colors.RED Rocket Cluster
			{itemID = 18645, spellID = 23096 }, --Alarm-O-Bot
			{itemID = 18587, spellID = 23078 }, --Goblin Jumper Cables XL
			{itemID = 15996, spellID = 19793 }, --Lifelike Mechanical Toad
			{itemID = 15846, spellID = 19567 }, --Salt Shaker
			{itemID = 21277, spellID = 26011 }, --Tranquil Mechanical Yeti
			{itemID = 19026, spellID = 23507 }, --Snake Burst Firework
			{itemID = 21569, spellID = 26442 }, --Firework Launcher
		},
		{
			{itemID = 21571, spellID = 26423 }, --Blue Rocket Cluster
			{itemID = 21574, spellID = 26424 }, --Green Rocket Cluster
			{itemID = 21576, spellID = 26425 }, --Red Rocket Cluster
			{itemID = 10720, spellID = 12902 }, --Gnomish Net-o-Matic Projector
			{itemID = 10644, spellID = 12715 }, --Goblin Rocket Fuel Recipe
			{itemID = 10713, spellID = 12895 }, --Inlaid Mithril Cylinder Plans
			{itemID = 11826, spellID = 15633 }, --Lil' Smoky
			{itemID = 11825, spellID = 15628 }, --Pet Bombling
			{itemID = 11590, spellID = 15255 }, --Mechanical Repair Kit
			{itemID = 17716, spellID = 21940 }, --Snowmaster 9000
			{itemID = 4392, spellID = 3965 }, --Advanced Target Dummy
			{itemID = 4852, spellID = 8243 }, --Flash Bomb
			{itemID = 21589, spellID = 26420 }, --Large Blue Rocket
			{itemID = 21590, spellID = 26421 }, --Large Green Rocket
			{itemID = 21592, spellID = 26422 }, --Large Red Rocket
		},
	},
	{
		Name = AL["Miscellaneous"],
		{
			{itemID = 4391, spellID = 3963 }, --Compact Harvest Reaper Kit
			{itemID = 7148, spellID = 9273 }, --Goblin Jumper Cables
			{itemID = 4388, spellID = 3959 }, --Discombobulator Ray
			{itemID = 4386, spellID = 3957 }, --Ice Deflector
			{itemID = 4384, spellID = 3955 }, --Explosive Sheep
			{itemID = 6533, spellID = 9271 }, --Aquadynamic Fish Attractor
			{itemID = 9312, spellID = 23067 }, --Blue Firework
			{itemID = 9313, spellID = 23068 }, --Green Firework
			{itemID = 9318, spellID = 23066 }, --Red Firework
			{itemID = 5507, spellID = 6458 }, --Ornate Spyglass
			{itemID = 21558, spellID = 26416 }, --Small Blue Rocket
			{itemID = 21559, spellID = 26417 }, --Small Green Rocket
			{itemID = 21557, spellID = 26418 }, --Small Red Rocket
			{itemID = 4376, spellID = 3944 }, --Flame Deflector
			{itemID = 6712, spellID = 8334 }, --Practice Lock
		},
		{
			{itemID = 4366, spellID = 3932 }, --Target Dummy
			{itemID = 4401, spellID = 3928 }, --Mechanical Squirrel
		},
	},
	{
		Name = AL["Reagents"],
		{
			{itemID = 16006, spellID = 19815 }, --Delicate Arcanite Converter
			{itemID = 16000, spellID = 19795 }, --Thorium Tube
			{itemID = 7191, spellID = 39895 }, --Fused Wiring
			{itemID = 15994, spellID = 19791 }, --Thorium Widget
			{itemID = 18631, spellID = 23071 }, --Truesilver Transformer
			{itemID = 15992, spellID = 19788 }, --Dense Blasting Powder
			{itemID = 10561, spellID = 12599 }, --Mithril Casing
			{itemID = 10560, spellID = 12591 }, --Unstable Trigger
			{itemID = 10559, spellID = 12589 }, --Mithril Tube
			{itemID = 10498, spellID = 12590 }, --Gyromatic Micro-Adjustor
			{itemID = 10505, spellID = 12585 }, --Solid Blasting Powder
			{itemID = 4389, spellID = 3961 }, --Gyrochronatom
			{itemID = 4387, spellID = 3958 }, --Iron Strut
			{itemID = 10558, spellID = 12584 }, --Gold Power Core
			{itemID = 4382, spellID = 3953 }, --Bronze Framework
		},
		{
			{itemID = 4375, spellID = 3942 }, --Whirring Bronze Gizmo
			{itemID = 4377, spellID = 3945 }, --Heavy Blasting Powder
			{itemID = 4371, spellID = 3938 }, --Bronze Tube
			{itemID = 4404, spellID = 3973 }, --Silver Contact
			{itemID = 4364, spellID = 3929 }, --Coarse Blasting Powder
			{itemID = 4363, spellID = 3926 }, --Copper Modulator
			{itemID = 4361, spellID = 3924 }, --Copper Tube
			{itemID = 4359, spellID = 3922 }, --Handful of Copper Bolts
			{itemID = 4357, spellID = 3918 }, --Rough Blasting Powder
		},
	},
	{
		Name = BabbleInventory["Weapon"],
		{
			{itemID = 18282, spellID = 22795 }, --Core Marksman Rifle
			{itemID = 16007, spellID = 19833 }, --Flawless Arcanite Rifle
			{itemID = 16004, spellID = 19796 }, --Dark Iron Rifle
			{itemID = 15995, spellID = 19792 }, --Thorium Rifle
			{itemID = 10510, spellID = 12614 }, --Mithril Heavy-bore Rifle
			{itemID = 10508, spellID = 12595 }, --Mithril Blunderbuss
			{itemID = 4383, spellID = 3954 }, --Moonsight Rifle
			{itemID = 4379, spellID = 3949 }, --Silver-plated Shotgun
			{itemID = 4372, spellID = 3939 }, --Lovingly Crafted Boomstick
			{itemID = 4369, spellID = 3936 }, --Deadly Blunderbuss
			{itemID = 4362, spellID = 3925 }, --Rough Boomstick
			{itemID = 6219, spellID = 7430 }, --Arclight Spanner
		},
	},
	{
		Name = GNOMISH,
		{
			{itemID = 18986, spellID = 23489 }, --Ultrasafe Transporter - Gadgetzan
			{itemID = 18660, spellID = 23129 }, --World Enlarger
			{itemID = 10726, spellID = 12907 }, --Gnomish Mind Control Cap
			{itemID = 10724, spellID = 12905 }, --Gnomish Rocket Boots
			{itemID = 10721, spellID = 12903 }, --Gnomish Harm Prevention Belt
			{itemID = 10545, spellID = 12897 }, --Gnomish Goggles
			{itemID = 23841, spellID = 30568 }, --Gnomish Flame Turret
			{itemID = 18645, spellID = 23096 }, --Alarm-O-Bot
			{itemID = 10645, spellID = 12759 }, --Gnomish Death Ray
			{itemID = 10725, spellID = 12906 }, --Gnomish Battle Chicken
			{itemID = 10720, spellID = 12902 }, --Gnomish Net-o-Matic Projector
			{itemID = 10716, spellID = 12899 }, --Gnomish Shrink Ray
			{itemID = 10713, spellID = 12895 }, --Inlaid Mithril Cylinder Plans
			{itemID = 4397, spellID = 3971 }, --Gnomish Cloaking Device
			{itemID = 7506, spellID = 9269 }, --Gnomish Universal Remote
		},
	},
	{
		Name = GOBLIN,
		{
			{itemID = 18984, spellID = 23486 }, --Dimensional Ripper - Everlook
			{itemID = 10588, spellID = 12758 }, --Goblin Rocket Helmet
			{itemID = 7189, spellID = 8895 }, --Goblin Rocket Boots
			{itemID = 10543, spellID = 12718 }, --Goblin Construction Helmet
			{itemID = 10542, spellID = 12717 }, --Goblin Mining Helmet
			{itemID = 23827, spellID = 30560 }, --Super Sapper Charge
			{itemID = 23826, spellID = 30558 }, --The Bigger One
			{itemID = 18587, spellID = 23078 }, --Goblin Jumper Cables XL
			{itemID = 10727, spellID = 12908 }, --Goblin Dragon Gun
			{itemID = 10586, spellID = 12754 }, --The Big One
			{itemID = 10587, spellID = 12755 }, --Goblin Bomb Dispenser
			{itemID = 10577, spellID = 12716 }, --Goblin Mortar
			{itemID = 10644, spellID = 12715 }, --Goblin Rocket Fuel Recipe
			{itemID = 10646, spellID = 12760 }, --Goblin Sapper Charge
			{itemID = 10577, spellID = 13240 }, --The Mortar: Reloaded
		},
	},
	{
		Name = AL["High Risk"],
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{itemID = 967197, spellID = 968043 }, --Focused Gnomish Magnifying Lense
			{itemID = 967200, spellID = 968046 }, --Focused Gnomish Focusing Lense
			{itemID = 967203, spellID = 968049 }, --Focused Gnomish Prismatic Lense
			{itemID = 967206, spellID = 968052 }, --Focused Hipfire Scope
			{itemID = 967209, spellID = 968055 }, --Focused Precision Scope
			{itemID = 967212, spellID = 968058 }, --Focused Reflex Scope
		},
		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{itemID = 967198, spellID = 968044 }, --Polished Gnomish Magnifying Lense
			{itemID = 967201, spellID = 968047 }, --Polished Gnomish Focusing Lense
			{itemID = 967204, spellID = 968050 }, --Polished Gnomish Prismatic Lense
			{itemID = 967207, spellID = 968053 }, --Polished Hipfire Scope
			{itemID = 967210, spellID = 968056 }, --Polished Precision Scope
			{itemID = 967213, spellID = 968059 }, --Polished Reflex Scope
		},
	},
}

-----------------
--- First Aid ---
-----------------

AtlasLoot_Data["FirstAidCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = FIRSTAID,
	Type = "ClassicCrafting",
	{
		Name = FIRSTAID,
		{
			{itemID = 19440, spellID = 23787 }, --Powerful Anti-Venom
			{itemID = 14530, spellID = 18630 }, --Heavy Runecloth Bandage
			{itemID = 14529, spellID = 18629 }, --Runecloth Bandage
			{itemID = 8545, spellID = 10841 }, --Heavy Mageweave Bandage
			{itemID = 8544, spellID = 10840 }, --Mageweave Bandage
			{itemID = 6451, spellID = 7929 }, --Heavy Silk Bandage
			{itemID = 6450, spellID = 7928 }, --Silk Bandage
			{itemID = 6453, spellID = 7935 }, --Strong Anti-Venom
			{itemID = 3531, spellID = 3278 }, --Heavy Wool Bandage
			{itemID = 3530, spellID = 3277 }, --Wool Bandage
			{itemID = 6452, spellID = 7934 }, --Anti-Venom
			{itemID = 2581, spellID = 3276 }, --Heavy Linen Bandage
			{itemID = 1251, spellID = 3275 }, --Linen Bandage
		},
	},
}

----------------------
--- Leatherworking ---
----------------------

AtlasLoot_Data["LeatherworkingCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = LEATHERWORKING,
	Type = "ClassicCrafting",
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Back",
		{
			{itemID = 18509, spellID = 22926 }, --Chromatic Cloak
			{itemID = 18511, spellID = 22928 }, --Shifting Cloak
			{itemID = 18510, spellID = 22927 }, --Hide of the Wild
			{itemID = 15138, spellID = 19093 }, --Onyxia Scale Cloak
			{itemID = 8215, spellID = 10574 }, --Wild Leather Cloak
			{itemID = 8216, spellID = 10562 }, --Big Voodoo Cloak
			{itemID = 5965, spellID = 7153 }, --Guardian Cloak
			{itemID = 7377, spellID = 9198 }, --Frost Leather Cloak
			{itemID = 7283, spellID = 9070 }, --Black Whelp Cloak
			{itemID = 6466, spellID = 7953 }, --Deviate Scale Cloak
			{itemID = 2308, spellID = 2159 }, --Fine Leather Cloak
			{itemID = 3719, spellID = 3760 }, --Hillman's Cloak
			{itemID = 2316, spellID = 2168 }, --Dark Leather Cloak
			{itemID = 2310, spellID = 2162 }, --Embossed Leather Cloak
			{itemID = 7276, spellID = 9058 }, --Handstitched Leather Cloak
		},
	},
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest",
		{
			{itemID = 22661, spellID = 28219 }, --Polar Tunic
			{itemID = 15059, spellID = 19095 }, --Living Breastplate
			{itemID = 19685, spellID = 24121 }, --Primal Batskin Jerkin
			{itemID = 19688, spellID = 24124 }, --Blood Tiger Breastplate
			{itemID = 15068, spellID = 19104 }, --Frostsaber Tunic
			{itemID = 15090, spellID = 19102 }, --Runic Leather Armor
			{itemID = 15085, spellID = 19098 }, --Wicked Leather Armor
			{itemID = 15075, spellID = 19081 }, --Chimeric Vest
			{itemID = 15066, spellID = 19086 }, --Ironfeather Breastplate
			{itemID = 15056, spellID = 19079 }, --Stormshroud Armor
			{itemID = 15053, spellID = 19076 }, --Volcanic Breastplate
			{itemID = 15064, spellID = 19068 }, --Warbear Harness
			{itemID = 8349, spellID = 10647 }, --Feathered Breastplate
			{itemID = 8346, spellID = 10630 }, --Gauntlets of the Sea
			{itemID = 8211, spellID = 10544 }, --Wild Leather Vest
		},
		{
			{itemID = 8200, spellID = 10520 }, --Big Voodoo Robe
		},
	},
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest",
		{
			{itemID = 8175, spellID = 10499 }, --Nightscape Tunic
			{itemID = 5739, spellID = 6661 }, --Barbaric Harness
			{itemID = 7374, spellID = 9196 }, --Dusky Leather Armor
			{itemID = 7375, spellID = 9197 }, --Green Whelp Armor
			{itemID = 4256, spellID = 3773 }, --Guardian Armor
			{itemID = 5782, spellID = 6704 }, --Thick Murloc Armor
			{itemID = 4455, spellID = 4096 }, --Raptor Hide Harness
			{itemID = 2314, spellID = 2166 }, --Toughened Leather Armor
			{itemID = 20575, spellID = 24940 }, --Black Whelp Tunic
			{itemID = 2317, spellID = 2169 }, --Dark Leather Tunic
			{itemID = 4244, spellID = 3762 }, --Hillman's Leather Vest
			{itemID = 5781, spellID = 6703 }, --Murloc Scale Breastplate
			{itemID = 6709, spellID = 8322 }, --Moonglow Vest
			{itemID = 4243, spellID = 3761 }, --Fine Leather Tunic
			{itemID = 2300, spellID = 2160 }, --Embossed Leather Vest
		},
		{
			{itemID = 2311, spellID = 2163 }, --White Leather Jerkin
			{itemID = 5957, spellID = 7126 }, --Handstitched Leather Vest
		},
	},

	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet",
		{
			{itemID = 22760, spellID = 28473 }, --Bramblewood Boots
			{itemID = 18506, spellID = 22922 }, --Mongoose Boots
			{itemID = 16982, spellID = 20853 }, --Corehound Boots
			{itemID = 19052, spellID = 23705 }, --Dawn Treaders
			{itemID = 34086, spellID = 44953 }, --Winter Boots
			{itemID = 15073, spellID = 19063 }, --Chimeric Boots
			{itemID = 15071, spellID = 19066 }, --Frostsaber Boots
			{itemID = 8213, spellID = 10566 }, --Wild Leather Boots
			{itemID = 8197, spellID = 10558 }, --Nightscape Boots
			{itemID = 7390, spellID = 9207 }, --Dusky Boots
			{itemID = 7391, spellID = 9208 }, --Swift Boots
			{itemID = 2315, spellID = 2167 }, --Dark Leather Boots
			{itemID = 2307, spellID = 2158 }, --Fine Leather Boots
			{itemID = 2309, spellID = 2161 }, --Embossed Leather Boots
			{itemID = 2302, spellID = 2149 }, --Handstitched Leather Boots
		},
	},
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands",
		{
			{itemID = 22662, spellID = 28220 }, --Polar Gloves
			{itemID = 19686, spellID = 24122 }, --Primal Batskin Gloves
			{itemID = 21278, spellID = 26279 }, --Stormshroud Gloves
			{itemID = 15070, spellID = 19087 }, --Frostsaber Gloves
			{itemID = 15063, spellID = 19084 }, --Devilsaur Gauntlets
			{itemID = 15091, spellID = 19055 }, --Runic Leather Gauntlets
			{itemID = 15074, spellID = 19053 }, --Chimeric Gloves
			{itemID = 15083, spellID = 19049 }, --Wicked Leather Gauntlets
			{itemID = 18238, spellID = 22711 }, --Shadowskin Gloves
			{itemID = 17721, spellID = 21943 }, --Gloves of the Greatfather
			{itemID = 5966, spellID = 7156 }, --Guardian Gloves
			{itemID = 4254, spellID = 3771 }, --Barbaric Gloves
			{itemID = 7359, spellID = 9149 }, --Heavy Earthen Gloves
			{itemID = 4247, spellID = 3764 }, --Hillman's Leather Gloves
			{itemID = 7358, spellID = 9148 }, --Pilferer's Gloves
		},
		{
			{itemID = 4253, spellID = 3770 }, --Toughened Leather Gloves
			{itemID = 7349, spellID = 9146 }, --Herbalist's Gloves
			{itemID = 7348, spellID = 9145 }, --Fletcher's Gloves
			{itemID = 4248, spellID = 3765 }, --Dark Leather Gloves
			{itemID = 7285, spellID = 9074 }, --Nimble Leather Gloves
			{itemID = 7284, spellID = 9072 }, --Red Whelp Gloves
			{itemID = 6467, spellID = 7954 }, --Deviate Scale Gloves
			{itemID = 2312, spellID = 2164 }, --Fine Leather Gloves
			{itemID = 4239, spellID = 3756 }, --Embossed Leather Gloves
		},
	},
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Head",
		{
			{itemID = 16983, spellID = 20854 }, --Molten Helm
			{itemID = 22759, spellID = 28472 }, --Bramblewood Helm
			{itemID = 15094, spellID = 19082 }, --Runic Leather Headband
			{itemID = 15086, spellID = 19071 }, --Wicked Leather Headband
			{itemID = 8348, spellID = 10632 }, --Helm of Fire
			{itemID = 8214, spellID = 10546 }, --Wild Leather Helmet
			{itemID = 8345, spellID = 10621 }, --Wolfshead Helm
			{itemID = 8201, spellID = 10531 }, --Big Voodoo Mask
			{itemID = 8176, spellID = 10507 }, --Nightscape Headband
			{itemID = 8174, spellID = 10490 }, --Comfortable Leather Hat
		},
	},
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs",
		{
			{itemID = 15095, spellID = 19091 }, --Runic Leather Pants
			{itemID = 15062, spellID = 19097 }, --Devilsaur Leggings
			{itemID = 15087, spellID = 19083 }, --Wicked Leather Pants
			{itemID = 15069, spellID = 19074 }, --Frostsaber Leggings
			{itemID = 15065, spellID = 19080 }, --Warbear Woolies
			{itemID = 15060, spellID = 19078 }, --Living Leggings
			{itemID = 15072, spellID = 19073 }, --Chimeric Leggings
			{itemID = 15057, spellID = 19067 }, --Stormshroud Pants
			{itemID = 15054, spellID = 19059 }, --Volcanic Leggings
			{itemID = 29964, spellID = 36074 }, --Blackstorm Leggings
			{itemID = 29970, spellID = 36075 }, --Wildfeather Leggings
			{itemID = 8212, spellID = 10572 }, --Wild Leather Leggings
			{itemID = 8202, spellID = 10560 }, --Big Voodoo Pants
			{itemID = 8193, spellID = 10548 }, --Nightscape Pants
			{itemID = 5963, spellID = 7149 }, --Barbaric Leggings
		},
		{
			{itemID = 7373, spellID = 9195 }, --Dusky Leather Leggings
			{itemID = 5962, spellID = 7147 }, --Guardian Pants
			{itemID = 4255, spellID = 3772 }, --Green Leather Armor
			{itemID = 5958, spellID = 7133 }, --Fine Leather Pants
			{itemID = 5961, spellID = 7135 }, --Dark Leather Pants
			{itemID = 7282, spellID = 9068 }, --Light Leather Pants
			{itemID = 4242, spellID = 3759 }, --Embossed Leather Pants
			{itemID = 7280, spellID = 9064 }, --Rugged Leather Pants
			{itemID = 2303, spellID = 2153 }, --Handstitched Leather Pants
		},

	},
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder",
		{
			{itemID = 19049, spellID = 23704 }, --Timbermaw Brawlers
			{itemID = 19689, spellID = 24125 }, --Blood Tiger Shoulders
			{itemID = 19058, spellID = 23706 }, --Golden Mantle of the Dawn
			{itemID = 15096, spellID = 19103 }, --Runic Leather Shoulders
			{itemID = 15055, spellID = 19101 }, --Volcanic Shoulders
			{itemID = 15058, spellID = 19090 }, --Stormshroud Shoulders
			{itemID = 19044, spellID = 23703 }, --Might of the Timbermaw
			{itemID = 15067, spellID = 19062 }, --Ironfeather Shoulders
			{itemID = 15061, spellID = 19061 }, --Living Shoulders
			{itemID = 8210, spellID = 10529 }, --Wild Leather Shoulders
			{itemID = 8192, spellID = 10516 }, --Nightscape Shoulders
			{itemID = 5964, spellID = 7151 }, --Barbaric Shoulders
			{itemID = 4252, spellID = 3769 }, --Dark Leather Shoulders
			{itemID = 7352, spellID = 9147 }, --Earthen Leather Shoulders
			{itemID = 4251, spellID = 3768 }, --Hillman's Shoulders
		},
	},
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist",
		{
			{itemID = 19162, spellID = 23709 }, --Corehound Belt
			{itemID = 19149, spellID = 23707 }, --Lava Belt
			{itemID = 19163, spellID = 23710 }, --Molten Belt
			{itemID = 18504, spellID = 22921 }, --Girdle of Insight
			{itemID = 22761, spellID = 28474 }, --Bramblewood Belt
			{itemID = 15088, spellID = 19092 }, --Wicked Leather Belt
			{itemID = 15093, spellID = 19072 }, --Runic Leather Belt
			{itemID = 4264, spellID = 3779 }, --Barbaric Belt
			{itemID = 7387, spellID = 9206 }, --Dusky Belt
			{itemID = 4262, spellID = 3778 }, --Gem-studded Leather Belt
			{itemID = 4258, spellID = 3775 }, --Guardian Belt
			{itemID = 4456, spellID = 4097 }, --Raptor Hide Belt
			{itemID = 4257, spellID = 3774 }, --Green Leather Belt
			{itemID = 4249, spellID = 3766 }, --Dark Leather Belt
			{itemID = 4250, spellID = 3767 }, --Hillman's Belt
		},
		{
			{itemID = 6468, spellID = 7955 }, --Deviate Scale Belt
			{itemID = 5780, spellID = 6702 }, --Murloc Scale Belt
			{itemID = 4246, spellID = 3763 }, --Fine Leather Belt
			{itemID = 4237, spellID = 3753 }, --Handstitched Leather Belt
		},
	},
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist",
		{
			{itemID = 22663, spellID = 28221 }, --Polar Bracers
			{itemID = 19687, spellID = 24123 }, --Primal Batskin Bracers
			{itemID = 15092, spellID = 19065 }, --Runic Leather Bracers
			{itemID = 15084, spellID = 19052 }, --Wicked Leather Bracers
			{itemID = 4260, spellID = 3777 }, --Guardian Leather Bracers
			{itemID = 7386, spellID = 9202 }, --Green Whelp Bracers
			{itemID = 5783, spellID = 6705 }, --Murloc Scale Bracers
			{itemID = 7378, spellID = 9201 }, --Dusky Bracers
			{itemID = 4259, spellID = 3776 }, --Green Leather Bracers
			{itemID = 18948, spellID = 23399 }, --Barbaric Bracers
			{itemID = 7281, spellID = 9065 }, --Light Leather Bracers
			{itemID = 7277, spellID = 9059 }, --Handstitched Leather Bracers
		},
	},
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest",
		{
			{itemID = 22664, spellID = 28222 }, --Icy Scale Breastplate
			{itemID = 20380, spellID = 24703 }, --Dreamscale Breastplate
			{itemID = 20478, spellID = 24851 }, --Sandstalker Breastplate
			{itemID = 20479, spellID = 24848 }, --Spitfire Breastplate
			{itemID = 15047, spellID = 19054 }, --Red Dragonscale Breastplate
			{itemID = 15050, spellID = 19085 }, --Black Dragonscale Breastplate
			{itemID = 15048, spellID = 19077 }, --Blue Dragonscale Breastplate
			{itemID = 15045, spellID = 19050 }, --Green Dragonscale Breastplate
			{itemID = 15076, spellID = 19051 }, --Heavy Scorpid Vest
			{itemID = 8367, spellID = 10650 }, --Dragonscale Breastplate
			{itemID = 8203, spellID = 10525 }, --Tough Scorpid Breastplate
			{itemID = 8189, spellID = 10511 }, --Turtle Scale Breastplate
		},
	},
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet",
		{
			{itemID = 16984, spellID = 20855 }, --Black Dragonscale Boots
			{itemID = 8209, spellID = 10554 }, --Tough Scorpid Boots
		},
	},
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands",
		{
			{itemID = 22666, spellID = 28223 }, --Icy Scale Gauntlets
			{itemID = 19157, spellID = 23708 }, --Chromatic Gauntlets
			{itemID = 20477, spellID = 24850 }, --Sandstalker Gauntlets
			{itemID = 20480, spellID = 24847 }, --Spitfire Gauntlets
			{itemID = 20296, spellID = 24655 }, --Green Dragonscale Gauntlets
			{itemID = 15078, spellID = 19064 }, --Heavy Scorpid Gauntlets
			{itemID = 8347, spellID = 10619 }, --Dragonscale Gauntlets
			{itemID = 8204, spellID = 10542 }, --Tough Scorpid Gloves
			{itemID = 8187, spellID = 10509 }, --Turtle Scale Gloves
		},
	},
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Head",
		{
			{itemID = 15080, spellID = 19088 }, --Heavy Scorpid Helm
			{itemID = 8208, spellID = 10570 }, --Tough Scorpid Helm
			{itemID = 8191, spellID = 10552 }, --Turtle Scale Helm
		},
	},
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs",
		{
			{itemID = 20295, spellID = 24654 }, --Blue Dragonscale Leggings
			{itemID = 15052, spellID = 19107 }, --Black Dragonscale Leggings
			{itemID = 15079, spellID = 19075 }, --Heavy Scorpid Leggings
			{itemID = 15046, spellID = 19060 }, --Green Dragonscale Leggings
			{itemID = 29971, spellID = 36076 }, --Dragonstrike Leggings
			{itemID = 8206, spellID = 10568 }, --Tough Scorpid Leggings
			{itemID = 8185, spellID = 10556 }, --Turtle Scale Leggings
		},
	},
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder",
		{
			{itemID = 15051, spellID = 19094 }, --Black Dragonscale Shoulders
			{itemID = 15081, spellID = 19100 }, --Heavy Scorpid Shoulders
			{itemID = 15049, spellID = 19089 }, --Blue Dragonscale Shoulders
			{itemID = 8207, spellID = 10564 }, --Tough Scorpid Shoulders
		},

	},
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist",
		{
			{itemID = 15082, spellID = 19070 }, --Heavy Scorpid Belt
		},
	},
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist",
		{
			{itemID = 22665, spellID = 28224 }, --Icy Scale Bracers
			{itemID = 18508, spellID = 22923 }, --Swift Flight Bracers
			{itemID = 20476, spellID = 24849 }, --Sandstalker Bracers
			{itemID = 20481, spellID = 24846 }, --Spitfire Bracers
			{itemID = 15077, spellID = 19048 }, --Heavy Scorpid Bracers
			{itemID = 8205, spellID = 10533 }, --Tough Scorpid Bracers
			{itemID = 8198, spellID = 10518 }, --Turtle Scale Bracers
		},
	},
	{
		Name = AL["Item Enhancements"],
		{
			{itemID = 15564, spellID = 19058 }, --Rugged Armor Kit
			{itemID = 8173, spellID = 10487 }, --Thick Armor Kit
			{itemID = 4265, spellID = 3780 }, --Heavy Armor Kit
			{itemID = 2313, spellID = 2165 }, --Medium Armor Kit
			{itemID = 2304, spellID = 2152 }, --Light Armor Kit
		},
	},
	{
		Name = AL["Quivers and Ammo Pouches"],
		{
			{itemID = 8217, spellID = 14930 }, --Quickdraw Quiver
			{itemID = 8218, spellID = 14932 }, --Thick Leather Ammo Pouch
			{itemID = 7372, spellID = 9194 }, --Heavy Leather Ammo Pouch
			{itemID = 7371, spellID = 9193 }, --Heavy Quiver
			{itemID = 7278, spellID = 9060 }, --Light Leather Quiver
			{itemID = 7279, spellID = 9062 }, --Small Leather Ammo Pouch
		},
	},
	{
		Name = AL["Drums, Bags and Misc."],
		{
			{itemID = 18258, spellID = 22815 }, --Gordok Ogre Suit
			{itemID = 18662, spellID = 23190 }, --Heavy Leather Ball
			{itemID = 5081, spellID = 5244 }, --Kodo Hide Bag
		},
	},
	{
		Name = BabbleInventory["Leather"],
		{
			{itemID = 8170, spellID = 22331 }, --Rugged Leather
			{itemID = 15407, spellID = 19047 }, --Cured Rugged Hide
			{itemID = 4304, spellID = 20650 }, --Thick Leather
			{itemID = 8172, spellID = 10482 }, --Cured Thick Hide
			{itemID = 4234, spellID = 20649 }, --Heavy Leather
			{itemID = 4236, spellID = 3818 }, --Cured Heavy Hide
			{itemID = 2319, spellID = 20648 }, --Medium Leather
			{itemID = 4233, spellID = 3817 }, --Cured Medium Hide
			{itemID = 4231, spellID = 3816 }, --Cured Light Hide
			{itemID = 2318, spellID = 2881 }, --Light Leather
		},
	},
	{
		Name = DRAGONSCALE,
		{
			{itemID = 20295, spellID = 24654 }, --Blue Dragonscale Leggings
			{itemID = 20296, spellID = 24655 }, --Green Dragonscale Gauntlets
			{itemID = 29971, spellID = 36076 }, --Dragonstrike Leggings
			{itemID = 8367, spellID = 10650 }, --Dragonscale Breastplate
			{itemID = 8347, spellID = 10619 }, --Dragonscale Gauntlets
		},
	},
	{
		Name = ELEMENTAL,
		{
			{itemID = 8346, spellID = 10630 }, --Gauntlets of the Sea
			{itemID = 8348, spellID = 10632 }, --Helm of Fire
			{itemID = 29964, spellID = 36074 }, --Blackstorm Leggings
		},
	},
	{
		Name = TRIBAL,
		{
			{itemID = 8345, spellID = 10621 }, --Wolfshead Helm
			{itemID = 8349, spellID = 10647 }, --Feathered Breastplate
			{itemID = 29970, spellID = 36075 }, --Wildfeather Leggings
		},
	},
	{
		Name = AL["High Risk"],
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{itemID = 967155, spellID = 968001 }, --Sturdy Yeti Gambeson
			{itemID = 967158, spellID = 968004 }, --Sturdy Devilsaur Gambeson
			{itemID = 967161, spellID = 968007 }, --Sturdy Plaguebat Gambeson
			{itemID = 967164, spellID = 968010 }, --Sturdy Sandworm Gambeson
			{itemID = 967167, spellID = 968013 }, --Sturdy Black Scale Gambeson
			{itemID = 967170, spellID = 968016 }, --Sturdy AtlasLoot.Colors.BLUE Scale Gambeson
		},
		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{itemID = 967156, spellID = 968002 }, --Mastercraft Yeti Gambeson
			{itemID = 967159, spellID = 968005 }, --Mastercraft Devilsaur Gambeson
			{itemID = 967162, spellID = 968008 }, --Mastercraft Plaguebat Gambeson
			{itemID = 967165, spellID = 968011 }, --Mastercraft Sandworm Gambeson
			{itemID = 967168, spellID = 968014 }, --Mastercraft Black Scale Gambeson
			{itemID = 967171, spellID = 968017 }, --Mastercraft Blue Scale Gambeson
		},
	},
}

--------------
--- Mining ---
--------------

AtlasLoot_Data["MiningCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = MINING,
	Type = "ClassicCrafting",
	{
		Name = AL["Smelting"],
		{
			{itemID = 17771, spellID = 22967 }, --Smelt Elementium
			{itemID = 12655, spellID = 70524 }, --Enchanted Thorium
			{itemID = 12359, spellID = 16153 }, --Smelt Thorium
			{itemID = 11371, spellID = 14891 }, --Smelt Dark Iron
			{itemID = 6037, spellID = 10098 }, --Smelt Truesilver
			{itemID = 3860, spellID = 10097 }, --Smelt Mithril
			{itemID = 3859, spellID = 3569 }, --Smelt Steel
			{itemID = 3577, spellID = 3308 }, --Smelt Gold
			{itemID = 3575, spellID = 3307 }, --Smelt Iron
			{itemID = 2842, spellID = 2658 }, --Smelt Silver
			{itemID = 2841, spellID = 2659 }, --Smelt Bronze
			{itemID = 3576, spellID = 3304 }, --Smelt Tin
			{itemID = 2840, spellID = 2657 }, --Smelt Copper
		},
	},
	{
		Name = AL["Materials"],
		{
			{itemID = 10620 }, --Thorium
			{itemID = 11370 }, --Dark Iron
			{itemID = 7911 }, --Truesilver
			{itemID = 3858 }, --Mithril
			{itemID = 2776 }, --Gold
			{itemID = 2772 }, --Iron
			{itemID = 2775 }, --Silver
			{itemID = 2771 }, --Tin
			{itemID = 2770 }, --Copper
		},
	},
}

-----------------
--- Tailoring ---
-----------------

AtlasLoot_Data["TailoringCLASSIC"] = {
	Module = "AtlasLoot_Crafting_OriginalWoW",
	Name = TAILORING,
	Type = "ClassicCrafting",
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Back",
		{
			{itemID = 22658, spellID = 28208 }, --Glacial Cloak
			{itemID = 22660, spellID = 28210 }, --Gaea's Embrace
			{itemID = 18413, spellID = 22870 }, --Cloak of Warding
			{itemID = 19047, spellID = 23662 }, --Wisdom of the Timbermaw
			{itemID = 14134, spellID = 18422 }, --Cloak of Fire
			{itemID = 13860, spellID = 18409 }, --Runecloth Cloak
			{itemID = 4327, spellID = 3862 }, --Icy Cloak
			{itemID = 45626, spellID = 63742 }, --Spidersilk Drape
			{itemID = 14103, spellID = 18420 }, --Brightcloth Cloak
			{itemID = 14044, spellID = 18418 }, --Cindercloth Cloak
			{itemID = 4326, spellID = 3861 }, --Long Silken Cloak
			{itemID = 7056, spellID = 8789 }, --Crimson Silk Cloak
			{itemID = 7053, spellID = 8786 }, --Azure Silk Cloak
			{itemID = 7047, spellID = 8780 }, --Hands of Darkness
			{itemID = 4311, spellID = 3844 }, --Heavy Woolen Cloak
		},
		{
			{itemID = 5542, spellID = 6521 }, --Pearl-clasped Cloak
			{itemID = 2584, spellID = 2402 }, --Woolen Cape
			{itemID = 2580, spellID = 2397 }, --Reinforced Linen Cape
			{itemID = 2570, spellID = 2387 }, --Linen Cloak
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest 1",
		{
			{itemID = 19156, spellID = 23666 }, --Flarecore Robe
			{itemID = 22652, spellID = 28207 }, --Glacial Vest
			{itemID = 14152, spellID = 18457 }, --Robe of the Archmage
			{itemID = 14153, spellID = 18458 }, --Robe of the Void
			{itemID = 14154, spellID = 18456 }, --Truefaith Vestments
			{itemID = 19682, spellID = 24091 }, --Bloodvine Vest
			{itemID = 18486, spellID = 22902 }, --Mooncloth Robe
			{itemID = 14138, spellID = 18447 }, --Mooncloth Vest
			{itemID = 22756, spellID = 28480 }, --Sylvan Vest
			{itemID = 14106, spellID = 18451 }, --Felcloth Robe
			{itemID = 14128, spellID = 18446 }, --Wizardweave Robe
			{itemID = 14136, spellID = 18436 }, --Robe of Winter Night
			{itemID = 10021, spellID = 12070 }, --Dreamweave Vest
			{itemID = 14141, spellID = 18416 }, --Ghostweave Vest
			{itemID = 18258, spellID = 22813 }, --Gordok Ogre Suit
		},
		{
			{itemID = 14100, spellID = 18414 }, --Brightcloth Robe
			{itemID = 14042, spellID = 18408 }, --Cindercloth Vest
			{itemID = 13858, spellID = 18406 }, --Runecloth Robe
			{itemID = 13857, spellID = 18407 }, --Runecloth Tunic
			{itemID = 13868, spellID = 18404 }, --Frostweave Robe
			{itemID = 13869, spellID = 18403 }, --Frostweave Tunic
			{itemID = 21542, spellID = 26407 }, --Festive AtlasLoot.Colors.RED Pant Suit
			{itemID = 21154, spellID = 26403 }, --Festival Dress
			{itemID = 10036, spellID = 12093 }, --Tuxedo Jacket
			{itemID = 34087, spellID = 44950 }, --Green Winter Clothes
			{itemID = 34085, spellID = 44958 }, --Red Winter Clothes
			{itemID = 10040, spellID = 12091 }, --White Wedding Dress
			{itemID = 38277, spellID = 50644 }, --Haliscan Jacket
			{itemID = 10053, spellID = 12077 }, --Simple Black Dress
			{itemID = 10042, spellID = 12069 }, --Cindercloth Robe
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest 2",
		{
			{itemID = 10007, spellID = 12056 }, --Red Mageweave Vest
			{itemID = 10004, spellID = 12055 }, --Shadoweave Robe
			{itemID = 10001, spellID = 12050 }, --Black Mageweave Robe
			{itemID = 9998, spellID = 12048 }, --Black Mageweave Vest
			{itemID = 7063, spellID = 8802 }, --Crimson Silk Robe
			{itemID = 7054, spellID = 8770 }, --Robe of Power
			{itemID = 7058, spellID = 8791 }, --Crimson Silk Vest
			{itemID = 7051, spellID = 8764 }, --Earthen Vest
			{itemID = 7065, spellID = 8784 }, --Green Silk Armor
			{itemID = 4324, spellID = 3859 }, --Azure Silk Vest
			{itemID = 5770, spellID = 6692 }, --Robes of Arcana
			{itemID = 5766, spellID = 6690 }, --Lesser Wizard's Robe
			{itemID = 6264, spellID = 7643 }, --Greater Adept's Robe
			{itemID = 6787, spellID = 8467 }, --White Woolen Dress
			{itemID = 2585, spellID = 2403 }, --Gray Woolen Robe
		},
		{
			{itemID = 6263, spellID = 7639 }, --Blue Overalls
			{itemID = 2582, spellID = 2399 }, --Green Woolen Vest
			{itemID = 2578, spellID = 2395 }, --Barbaric Linen Vest
			{itemID = 6242, spellID = 7633 }, --Blue Linen Robe
			{itemID = 6240, spellID = 7630 }, --Blue Linen Vest
			{itemID = 6239, spellID = 7629 }, --Red Linen Vest
			{itemID = 6786, spellID = 8465 }, --Simple Dress
			{itemID = 2572, spellID = 2389 }, --Red Linen Robe
			{itemID = 6238, spellID = 7623 }, --Brown Linen Robe
			{itemID = 6241, spellID = 7624 }, --White Linen Robe
			{itemID = 2568, spellID = 2385 }, --Brown Linen Vest
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet",
		{
			{itemID = 19684, spellID = 24093 }, --Bloodvine Boots
			{itemID = 20537, spellID = 24903 }, --Runed Stygian Boots
			{itemID = 15802, spellID = 19435 }, --Mooncloth Boots
			{itemID = 19056, spellID = 23664 }, --Argent Boots
			{itemID = 14108, spellID = 18437 }, --Felcloth Boots
			{itemID = 13864, spellID = 18423 }, --Runecloth Boots
			{itemID = 10044, spellID = 12088 }, --Cindercloth Boots
			{itemID = 10031, spellID = 12082 }, --Shadoweave Boots
			{itemID = 10026, spellID = 12073 }, --Black Mageweave Boots
			{itemID = 4325, spellID = 3860 }, --Boots of the Enchanter
			{itemID = 4321, spellID = 3856 }, --Spider Silk Slippers
			{itemID = 4320, spellID = 3855 }, --Spidersilk Boots
			{itemID = 4313, spellID = 3847 }, --Red Woolen Boots
			{itemID = 2583, spellID = 2401 }, --Woolen Boots
			{itemID = 4312, spellID = 3845 }, --Soft-soled Linen Boots
		},
		{
			{itemID = 2569, spellID = 2386 }, --Linen Boots
			{itemID = 10046, spellID = 12045 }, --Simple Linen Boots
			{itemID = 6836, spellID = 49677 }, --Dress Shoes
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands",
		{
			{itemID = 16979, spellID = 20849 }, --Flarecore Gloves
			{itemID = 22654, spellID = 28205 }, --Glacial Gloves
			{itemID = 14146, spellID = 18454 }, --Gloves of Spell Mastery
			{itemID = 18407, spellID = 22867 }, --Felcloth Gloves
			{itemID = 18408, spellID = 22868 }, --Inferno Gloves
			{itemID = 18409, spellID = 22869 }, --Mooncloth Gloves
			{itemID = 10019, spellID = 12067 }, --Dreamweave Gloves
			{itemID = 13863, spellID = 18417 }, --Runecloth Gloves
			{itemID = 14101, spellID = 18415 }, --Brightcloth Gloves
			{itemID = 14043, spellID = 18412 }, --Cindercloth Gloves
			{itemID = 14142, spellID = 18413 }, --Ghostweave Gloves
			{itemID = 13870, spellID = 18411 }, --Frostweave Gloves
			{itemID = 10018, spellID = 12066 }, --Red Mageweave Gloves
			{itemID = 10023, spellID = 12071 }, --Shadoweave Gloves
			{itemID = 10003, spellID = 12053 }, --Black Mageweave Gloves
		},
		{
			{itemID = 7064, spellID = 8804 }, --Crimson Silk Gloves
			{itemID = 7049, spellID = 8782 }, --Truefaith Gloves
			{itemID = 4319, spellID = 3854 }, --Azure Silk Gloves
			{itemID = 4318, spellID = 3852 }, --Gloves of Meditation
			{itemID = 4331, spellID = 3868 }, --Phoenix Gloves
			{itemID = 4310, spellID = 3843 }, --Heavy Woolen Gloves
			{itemID = 4307, spellID = 3840 }, --Heavy Linen Gloves
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Head",
		{
			{itemID = 14140, spellID = 18452 }, --Mooncloth Circlet
			{itemID = 22757, spellID = 28481 }, --Sylvan Crown
			{itemID = 14130, spellID = 18450 }, --Wizardweave Turban
			{itemID = 13866, spellID = 18444 }, --Runecloth Headband
			{itemID = 14111, spellID = 18442 }, --Felcloth Hood
			{itemID = 10041, spellID = 12092 }, --Dreamweave Circlet
			{itemID = 10025, spellID = 12086 }, --Shadoweave Mask
			{itemID = 10030, spellID = 12081 }, --Admiral's Hat
			{itemID = 10033, spellID = 12084 }, --Red Mageweave Headband
			{itemID = 10024, spellID = 12072 }, --Black Mageweave Headband
			{itemID = 10008, spellID = 12059 }, --White Bandit Mask
			{itemID = 4323, spellID = 3858 }, --Shadow Hood
			{itemID = 4322, spellID = 3857 }, --Enchanter's Cowl
			{itemID = 7050, spellID = 8762 }, --Silk Headband
			{itemID = 7048, spellID = 8760 }, --Azure Silk Hood
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs",
		{
			{itemID = 19165, spellID = 23667 }, --Flarecore Leggings
			{itemID = 19683, spellID = 24092 }, --Bloodvine Leggings
			{itemID = 20538, spellID = 24901 }, --Runed Stygian Leggings
			{itemID = 14137, spellID = 18440 }, --Mooncloth Leggings
			{itemID = 14104, spellID = 18439 }, --Brightcloth Pants
			{itemID = 14144, spellID = 18441 }, --Ghostweave Pants
			{itemID = 13865, spellID = 18438 }, --Runecloth Pants
			{itemID = 14045, spellID = 18434 }, --Cindercloth Pants
			{itemID = 13871, spellID = 18424 }, --Frostweave Pants
			{itemID = 14107, spellID = 18419 }, --Felcloth Pants
			{itemID = 14132, spellID = 18421 }, --Wizardweave Leggings
			{itemID = 10035, spellID = 12089 }, --Tuxedo Pants
			{itemID = 38278, spellID = 50647 }, --Haliscan Pantaloons
			{itemID = 10009, spellID = 12060 }, --Red Mageweave Pants
			{itemID = 10002, spellID = 12052 }, --Shadoweave Pants
		},
		{
			{itemID = 9999, spellID = 12049 }, --Black Mageweave Leggings
			{itemID = 7046, spellID = 8758 }, --Azure Silk Pants
			{itemID = 4317, spellID = 3851 }, --Phoenix Pants
			{itemID = 10048, spellID = 12047 }, --Colorful Kilt
			{itemID = 4316, spellID = 3850 }, --Heavy Woolen Pants
			{itemID = 10047, spellID = 12046 }, --Simple Kilt
			{itemID = 4309, spellID = 3842 }, --Handstitched Linen Britches
			{itemID = 4343, spellID = 3914 }, --Brown Linen Pants
			{itemID = 10045, spellID = 12044 }, --Simple Linen Pants
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder",
		{
			{itemID = 16980, spellID = 20848 }, --Flarecore Mantle
			{itemID = 19059, spellID = 23665 }, --Argent Shoulders
			{itemID = 19050, spellID = 23663 }, --Mantle of the Timbermaw
			{itemID = 14139, spellID = 18448 }, --Mooncloth Shoulders
			{itemID = 22758, spellID = 28482 }, --Sylvan Shoulders
			{itemID = 14112, spellID = 18453 }, --Felcloth Shoulders
			{itemID = 13867, spellID = 18449 }, --Runecloth Shoulders
			{itemID = 10029, spellID = 12078 }, --Red Mageweave Shoulders
			{itemID = 10028, spellID = 12076 }, --Shadoweave Shoulders
			{itemID = 10027, spellID = 12074 }, --Black Mageweave Shoulders
			{itemID = 7062, spellID = 8799 }, --Crimson Silk Pantaloons
			{itemID = 7060, spellID = 8795 }, --Azure Shoulders
			{itemID = 7059, spellID = 8793 }, --Crimson Silk Shoulders
			{itemID = 7057, spellID = 8774 }, --Green Silken Shoulders
			{itemID = 4315, spellID = 3849 }, --Reinforced Woolen Shoulders
		},
		{
			{itemID = 4314, spellID = 3848 }, --Double-stitched Woolen Shoulders
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist",
		{
			{itemID = 18405, spellID = 22866 }, --Belt of the Archmage
			{itemID = 20539, spellID = 24902 }, --Runed Stygian Belt
			{itemID = 14143, spellID = 18410 }, --Ghostweave Belt
			{itemID = 13856, spellID = 18402 }, --Runecloth Belt
			{itemID = 4329, spellID = 3864 }, --Star Belt
			{itemID = 7061, spellID = 8797 }, --Earthen Silk Belt
			{itemID = 4328, spellID = 3863 }, --Spider Belt
			{itemID = 7052, spellID = 8766 }, --Azure Silk Belt
			{itemID = 7055, spellID = 8772 }, --Crimson Silk Belt
			{itemID = 7026, spellID = 8776 }, --Linen Belt
		},
	},
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist",
		{
			{itemID = 18263, spellID = 22759 }, --Flarecore Wraps
			{itemID = 22655, spellID = 28209 }, --Glacial Wrists
			{itemID = 4308, spellID = 3841 }, --Green Linen Bracers
		},
	},
	{
		Name = AL["Bags"],
		{
			{itemID = 21342, spellID = 26087 }, --Core Felcloth Bag
			{itemID = 14156, spellID = 18455 }, --Bottomless Bag
			{itemID = 21341, spellID = 26086 }, --Felcloth Bag
			{itemID = 22249, spellID = 27660 }, --Big Bag of Enchantment
			{itemID = 14155, spellID = 18445 }, --Mooncloth Bag
			{itemID = 22252, spellID = 27725 }, --Satchel of Cenarius
			{itemID = 22248, spellID = 27659 }, --Enchanted Runecloth Bag
			{itemID = 22251, spellID = 27724 }, --Cenarion Herb Bag
			{itemID = 21340, spellID = 26085 }, --Soul Pouch
			{itemID = 22246, spellID = 27658 }, --Enchanted Mageweave Pouch
			{itemID = 14046, spellID = 18405 }, --Runecloth Bag
			{itemID = 10051, spellID = 12079 }, --Red Mageweave Bag
			{itemID = 10050, spellID = 12065 }, --Mageweave Bag
			{itemID = 5765, spellID = 6695 }, --Black Silk Pack
			{itemID = 5764, spellID = 6693 }, --Green Silk Pack
		},
		{
			{itemID = 4245, spellID = 3813 }, --Small Silk Pack
			{itemID = 5763, spellID = 6688 }, --Red Woolen Bag
			{itemID = 4241, spellID = 3758 }, --Green Woolen Bag
			{itemID = 4240, spellID = 3757 }, --Woolen Bag
			{itemID = 5762, spellID = 6686 }, --Red Linen Bag
			{itemID = 4238, spellID = 3755 }, --Linen Bag
		},
	},
	{
		Name = AL["Miscellaneous"],
		{
			{itemID = 14342, spellID = 18560 }, --Mooncloth
			{itemID = 14048, spellID = 18401 }, --Bolt of Runecloth
			{itemID = 4339, spellID = 3865 }, --Bolt of Mageweave
			{itemID = 4305, spellID = 3839 }, --Bolt of Silk Cloth
			{itemID = 2997, spellID = 2964 }, --Bolt of Woolen Cloth
			{itemID = 2996, spellID = 2963 }, --Bolt of Linen Cloth
		},
	},
	{
		Name = AL["Shirts"],
		{
			{itemID = 10034, spellID = 12085 }, --Tuxedo Shirt
			{itemID = 10055, spellID = 12080 }, --Pink Mageweave Shirt
			{itemID = 10054, spellID = 12075 }, --Lavender Mageweave Shirt
			{itemID = 10052, spellID = 12064 }, --Orange Martial Shirt
			{itemID = 10056, spellID = 12061 }, --Orange Mageweave Shirt
			{itemID = 4336, spellID = 3873 }, --Black Swashbuckler's Shirt
			{itemID = 17723, spellID = 21945 }, --Green Holiday Shirt
			{itemID = 4335, spellID = 3872 }, --Rich Purple Silk Shirt
			{itemID = 6796, spellID = 8489 }, --Red Swashbuckler's Shirt
			{itemID = 4334, spellID = 3871 }, --Formal White Shirt
			{itemID = 6795, spellID = 8483 }, --White Swashbuckler's Shirt
			{itemID = 4333, spellID = 3870 }, --Dark Silk Shirt
			{itemID = 4332, spellID = 3869 }, --Bright Yellow Shirt
			{itemID = 6384, spellID = 7892 }, --Stylish Blue Shirt
			{itemID = 6385, spellID = 7893 }, --Stylish Green Shirt
		},
		{
			{itemID = 4330, spellID = 3866 }, --Stylish Red Shirt
			{itemID = 2587, spellID = 2406 }, --Gray Woolen Shirt
			{itemID = 2579, spellID = 2396 }, --Green Linen Shirt
			{itemID = 2577, spellID = 2394 }, --Blue Linen Shirt
			{itemID = 2575, spellID = 2392 }, --Red Linen Shirt
			{itemID = 2576, spellID = 2393 }, --White Linen Shirt
			{itemID = 4344, spellID = 3915 }, --Brown Linen Shirt
		},
	},
	{
		Name = AL["High Risk"],
		{
			{ name = AL["Rare"], icon = "INV_Box_01"},
			{itemID = 967215, spellID = 968061 }, --Chain Cloak Lining
			{itemID = 967218, spellID = 968064 }, --Sustaining Cloak Lining
			{itemID = 967221, spellID = 968067 }, --Flowing Cloak Lining
			{itemID = 967224, spellID = 968070 }, --Rampager's Cloak Lining
			{itemID = 967227, spellID = 968073 }, --Absorptive Cloak Lining
			{itemID = 967230, spellID = 968076 }, --Nimble Cloak Lining
		},
--[[ 		{
			{ name = AL["Epic"], icon = "INV_Box_01"},
			{itemID = 967216, spellID = 968062 }, ----Mastercraft Chain Cloak Lining
			{itemID = 967219, spellID = 968065 }, ----Mastercraft Sustaining Cloak Lining
			{itemID = 967222, spellID = 968068 }, ----Mastercraft Flowing Cloak Lining
			{itemID = 967225, spellID = 968071 }, ----Mastercraft Rampager's Cloak Lining
			{itemID = 967228, spellID = 968074 }, ----Mastercraft Absorptive Cloak Lining
			{itemID = 967231, spellID = 968077 }, ----Mastercraft Nimble Cloak Lining
		}, ]]
	},
}