local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


local gap = {"gap"}

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
local INSCRIPTION = GetSpellInfo(45357)
local JEWELCRAFTING = GetSpellInfo(25229)
local LEATHERWORKING = GetSpellInfo(2108)
local MINING = GetSpellInfo(2575)
local TAILORING = GetSpellInfo(3908)

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

AtlasLoot_Data["AlchemyWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = ALCHEMY,
	Type = "WrathCrafting",
	{
		Name = "Battle Elixirs",
		{
			{ itemID = 44330, spellID = 60365 }, --Elixir of Armor Piercing
			{ itemID = 44327, spellID = 60355 }, --Elixir of Deadly Strikes
			{ itemID = 44329, spellID = 60357 }, --Elixir of Expertise
			{ itemID = 44331, spellID = 60366 }, --Elixir of Lightning Speed
			{ itemID = 44325, spellID = 60354 }, --Elixir of Accuracy
			{ itemID = 39666, spellID = 53840 }, --Elixir of Mighty Agility
			{ itemID = 40073, spellID = 54218 }, --Elixir of Mighty Strength
			{ itemID = 40076, spellID = 53848 }, --Guru's Elixir
			{ itemID = 40070, spellID = 53842 }, --Spellpower Elixir
			{ itemID = 40068, spellID = 53841 }, --WRATH Elixir
		},
	},
	{
		Name = "Guardian Elixirs",
		{
			{ itemID = 44328, spellID = 60356 }, --Elixir of Mighty Defense
			{ itemID = 40109, spellID = 56519 }, --Elixir of Mighty Mageblood
			{ itemID = 40097, spellID = 54220 }, --Elixir of Protection
			{ itemID = 8827, spellID = 62410 }, --Elixir of Water Walking
			{ itemID = 40078, spellID = 53898 }, --Elixir of Mighty Fortitude
			{ itemID = 44332, spellID = 60367 }, --Elixir of Mighty Thoughts
			{ itemID = 40072, spellID = 53847 }, --Elixir of Spirit
		},
	},
	{
		Name = "Potions",
		{
			{ itemID = 40211, spellID = 54221 }, --Potion of Speed
			{ itemID = 40212, spellID = 54222 }, --Potion of Wild Magic
			{ itemID = 40087, spellID = 53904 }, --Powerful Rejuvenation Potion
			{ itemID = 43570, spellID = 58868 }, --Endless Mana Potion
			{ itemID = 33448, spellID = 53837 }, --Runic Mana Potion
			{ itemID = 43569, spellID = 58871 }, --Endless Healing Potion
			{ itemID = 33447, spellID = 53836 }, --Runic Healing Potion
			{ itemID = 40213, spellID = 53936 }, --Mighty Arcane Protection Potion
			{ itemID = 40214, spellID = 53939 }, --Mighty Fire Protection Potion
			{ itemID = 40215, spellID = 53937 }, --Mighty Frost Protection Potion
			{ itemID = 40216, spellID = 53942 }, --Mighty Nature Protection Potion
			{ itemID = 40217, spellID = 53938 }, --Mighty Shadow Protection Potion
			{ itemID = 40093, spellID = 53905 }, --Indestructible Potion
			{ itemID = 40081, spellID = 53900 }, --Potion of Nightmares
			{ itemID = 40077, spellID = 53895 }, --Crazy Alchemist's Potion
		},
		{
			{ itemID = 40067, spellID = 53839 }, --Icy Mana Potion
			{ itemID = 39671, spellID = 53838 }, --Resurgent Healing Potion
		},
	},
	{
		Name = "Flasks",
		{
			{ itemID = 47499, spellID = 67025 }, --Flask of the North
			{ itemID = 46377, spellID = 53903 }, --Flask of Endless Rage
			{ itemID = 46378, spellID = 54213 }, --Flask of Pure Mojo
			{ itemID = 46379, spellID = 53902 }, --Flask of Stoneblood
			{ itemID = 46376, spellID = 53901 }, --Flask of the Frost Wyrm
			{ itemID = 44939, spellID = 62213 }, --Lesser Flask of Resistance
			{ itemID = 40079, spellID = 53899 }, --Lesser Flask of Toughness
		},
	},
	{
		Name = "Transmutes",
		{
			{ itemID = 35624, spellID = 53777 }, --Transmute: Eternal Air to Earth
			{ itemID = 35622, spellID = 53776 }, --Transmute: Eternal Air to Water
			{ itemID = 35623, spellID = 53781 }, --Transmute: Eternal Earth to Air
			{ itemID = 35627, spellID = 53782 }, --Transmute: Eternal Earth to Shadow
			{ itemID = 35625, spellID = 53775 }, --Transmute: Eternal Fire to Life
			{ itemID = 35622, spellID = 53774 }, --Transmute: Eternal Fire to Water
			{ itemID = 36860, spellID = 53773 }, --Transmute: Eternal Life to Fire
			{ itemID = 35627, spellID = 53771 }, --Transmute: Eternal Life to Shadow
			{ itemID = 35624, spellID = 53779 }, --Transmute: Eternal Shadow to Earth
			{ itemID = 35625, spellID = 53780 }, --Transmute: Eternal Shadow to Life
			{ itemID = 35623, spellID = 53783 }, --Transmute: Eternal Water to Air
			{ itemID = 36860, spellID = 53784 }, --Transmute: Eternal Water to Fire
			{ itemID = 41163, spellID = 60350 }, --Transmute: Titanium
		},
		{
			{ itemID = 36919, spellID = 66659 }, --Transmute: Cardinal Ruby
			{ itemID = 36931, spellID = 66658 }, --Transmute: Ametrine
			{ itemID = 36928, spellID = 66662 }, --Transmute: Dreadstone
			{ itemID = 36934, spellID = 66664 }, --Transmute: Eye of Zul
			{ itemID = 36922, spellID = 66660 }, --Transmute: King's Amber
			{ itemID = 36925, spellID = 66663 }, --Transmute: Majestic Zircon
			{ itemID = 40248, spellID = 54020 }, --Transmute: Eternal Might
			{ itemID = 41334, spellID = 57427 }, --Transmute: Earthsiege Diamond
			{ itemID = 41266, spellID = 57425 }, --Transmute: Skyflare Diamond
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 35751, spellID = 47050 }, --Assassin's Alchemist Stone
			{ itemID = 35748, spellID = 47046 }, --Guardian's Alchemist Stone
			{ itemID = 35750, spellID = 47049 }, --Redeemer's Alchemist Stone
			{ itemID = 35749, spellID = 47048 }, --Sorcerer's Alchemist Stone
			{ itemID = 13503, spellID = 17632 }, --Alchemist's Stone
			{ itemID = 44323, spellID = 60403 }, --Indestructible Alchemist Stone
			{ itemID = 44322, spellID = 60396 }, --Mercurial Alchemist Stone
			{ itemID = 44324, spellID = 60405 }, --Mighty Alchemist Stone
			{ itemID = 31080, spellID = 38070 }, --Mercurial Stone
			{ itemID = 44958, spellID = 62409 }, --Ethereal Oil
			{ itemID = 40195, spellID = 53812 }, --Pygmy Oil
		},
	},
}

---------------------
--- Blacksmithing ---
---------------------

AtlasLoot_Data["SmithingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = BLACKSMITHING,
	Type = "WrathCrafting",
	{
		Name = "Armor" .. AtlasLoot.Colors.WHITE .. " - Chest",
		{
			{ spellID = 67130, itemID = 47592 },
			{ spellID = 67091, itemID = 47591 },
			{ spellID = 67095, itemID = 47593 },
			{ spellID = 67134, itemID = 47594 },
			{ spellID = 67093, itemID = 47589 },
			{ spellID = 67132, itemID = 47590 },
			{ itemID = 43586, spellID = 61008 }, --Icebane Chestguard
			{ itemID = 42725, spellID = 56555 }, --Ornate Saronite Hauberk
			{ itemID = 41353, spellID = 55311 }, --Savage Saronite Hauberk
			{ itemID = 41129, spellID = 55058 }, --Brilliant Saronite Breastplate
			{ itemID = 40672, spellID = 54553 }, --Tempered Saronite Breastplate
			{ itemID = 40951, spellID = 54944 }, --Spiked Cobalt Chestpiece
			{ itemID = 40959, spellID = 54981 }, --Reinforced Cobalt Chestpiece
			{ itemID = 39085, spellID = 52570 }, --Cobalt Chestpiece
		},
	},
	{ Name = "Armor" .. AtlasLoot.Colors.WHITE .. " - Feet",
		{
			{ itemID = 49907, spellID = 70568 }, --Boots of Kingly Upheaval
			{ itemID = 49906, spellID = 70566 }, --Hellfrozen Bonegrinders
			{ itemID = 45559, spellID = 63188 }, --Battlelord's Plate Boots
			{ itemID = 45560, spellID = 63192 }, --Spiked Deathdealers
			{ itemID = 45561, spellID = 63190 }, --Treads of Destiny
			{ itemID = 41394, spellID = 55377 }, --Brilliant Titansteel Treads
			{ itemID = 41391, spellID = 55375 }, --Spiked Titansteel Treads
			{ itemID = 41392, spellID = 55376 }, --Tempered Titansteel Treads
			{ itemID = 43588, spellID = 61010 }, --Icebane Treads
			{ itemID = 42730, spellID = 56552 }, --Ornate Saronite Walkers
			{ itemID = 41348, spellID = 55308 }, --Savage Saronite Walkers
			{ itemID = 41128, spellID = 55057 }, --Brilliant Saronite Boots
			{ itemID = 40671, spellID = 54552 }, --Tempered Saronite Boots
			{ itemID = 40949, spellID = 54918 }, --Spiked Cobalt Boots
			{ itemID = 39088, spellID = 52569 }, --Cobalt Boots
		},
		{
			{ itemID = 49905, spellID = 70563 }, --Protectors of Life
		},
	},
	{
		Name = "Armor" .. AtlasLoot.Colors.WHITE .. " - Hands",
		{
			{ itemID = 41357, spellID = 55301 }, --Daunting Handguards
			{ itemID = 42724, spellID = 56553 }, --Ornate Saronite Gauntlets
			{ itemID = 41356, spellID = 55300 }, --Righteous Gauntlets
			{ itemID = 41349, spellID = 55309 }, --Savage Saronite Gauntlets
			{ itemID = 41114, spellID = 55015 }, --Tempered Saronite Gauntlets
			{ itemID = 41127, spellID = 55056 }, --Brilliant Saronite Gauntlets
			{ itemID = 40952, spellID = 54945 }, --Spiked Cobalt Gauntlets
			{ itemID = 41975, spellID = 55835 }, --Cobalt Gauntlets
		},
	},
	{
		Name = "Armor" .. AtlasLoot.Colors.WHITE .. " - Head",
		{
			{ itemID = 41388, spellID = 55374 }, --Brilliant Titansteel Helm
			{ itemID = 41386, spellID = 55372 }, --Spiked Titansteel Helm
			{ itemID = 41387, spellID = 55373 }, --Tempered Titansteel Helm
			{ itemID = 41344, spellID = 55302 }, --Helm of Command
			{ itemID = 42728, spellID = 56556 }, --Ornate Saronite Skullshield
			{ itemID = 41350, spellID = 55312 }, --Savage Saronite Skullshield
			{ itemID = 43870, spellID = 59441 }, --Brilliant Saronite Helm
			{ itemID = 40673, spellID = 54555 }, --Tempered Saronite Helm
			{ itemID = 40955, spellID = 54949 }, --Horned Cobalt Helm
			{ itemID = 40957, spellID = 54979 }, --Reinforced Cobalt Helm
			{ itemID = 40942, spellID = 54917 }, --Spiked Cobalt Helm
			{ itemID = 39084, spellID = 52571 }, --Cobalt Helm
		},
	},
	{
		Name = "Armor" .. AtlasLoot.Colors.WHITE .. " - Legs",
		{
			{ itemID = 49903, spellID = 70565 }, --Legplates of Painful Death
			{ itemID = 49904, spellID = 70567 }, --Pillars of Might
			{ itemID = 49902, spellID = 70562 }, --Puresteel Legplates
			{ itemID = 41345, spellID = 55303 }, --Daunting Legplates
			{ itemID = 42726, spellID = 56554 }, --Ornate Saronite Legplates
			{ itemID = 41346, spellID = 55304 }, --Righteous Greaves
			{ itemID = 41347, spellID = 55310 }, --Savage Saronite Legplates
			{ itemID = 41190, spellID = 55187 }, --Legplates of Conquest
			{ itemID = 41126, spellID = 55055 }, --Brilliant Saronite Legplates
			{ itemID = 40674, spellID = 54554 }, --Tempered Saronite Legplates
			{ itemID = 40943, spellID = 54947 }, --Spiked Cobalt Legplates
			{ itemID = 40958, spellID = 54980 }, --Reinforced Cobalt Legplates
			{ itemID = 39086, spellID = 52567 }, --Cobalt Legplates
		},
	},
	{
		Name = "Armor" .. AtlasLoot.Colors.WHITE .. " - Shoulder",
		{
			{ itemID = 42727, spellID = 56550 }, --Ornate Saronite Pauldrons
			{ itemID = 41351, spellID = 55306 }, --Savage Saronite Pauldrons
			{ itemID = 43865, spellID = 59440 }, --Brilliant Saronite Pauldrons
			{ itemID = 40675, spellID = 54556 }, --Tempered Saronite Shoulders
			{ itemID = 40950, spellID = 54941 }, --Spiked Cobalt Shoulders
			{ itemID = 40956, spellID = 54978 }, --Reinforced Cobalt Shoulders
			{ itemID = 39083, spellID = 52572 }, --Cobalt Shoulders
		},
	},
	{
		Name = "Armor" .. AtlasLoot.Colors.WHITE .. " - Waist",
		{
			{ itemID = 45550, spellID = 63187 }, --Belt of the Titans
			{ itemID = 45551, spellID = 63191 }, --Indestructible Plate Girdle
			{ itemID = 45552, spellID = 63189 }, --Plate Girdle of Righteousness
			{ itemID = 43587, spellID = 61009 }, --Icebane Girdle
			{ itemID = 42729, spellID = 56551 }, --Ornate Saronite Waistguard
			{ itemID = 41352, spellID = 55307 }, --Savage Saronite Waistguard
			{ itemID = 43860, spellID = 59436 }, --Brilliant Saronite Belt
			{ itemID = 40669, spellID = 54551 }, --Tempered Saronite Belt
			{ itemID = 40953, spellID = 54946 }, --Spiked Cobalt Belt
			{ itemID = 39087, spellID = 52568 }, --Cobalt Belt
		},
	},
	{
		Name = "Armor" .. AtlasLoot.Colors.WHITE .. " - Wrist",
		{
			{ itemID = 47571, spellID = 67131 }, --Saronite Swordbreakers
			{ itemID = 47570, spellID = 67092 }, --Saronite Swordbreakers
			{ itemID = 47574, spellID = 67096 }, --Sunforged Bracers
			{ itemID = 47575, spellID = 67135 }, --Sunforged Bracers
			{ itemID = 47572, spellID = 67094 }, --Titanium Spikeguards
			{ itemID = 47573, spellID = 67133 }, --Titanium Spikeguards
			{ itemID = 42723, spellID = 56549 }, --Ornate Saronite Bracers
			{ itemID = 41354, spellID = 55305 }, --Savage Saronite Bracers
			{ itemID = 41355, spellID = 55298 }, --Vengeance Bindings
			{ itemID = 41116, spellID = 55017 }, --Tempered Saronite Bracers
			{ itemID = 43864, spellID = 59438 }, --Brilliant Saronite Bracers
			{ itemID = 40954, spellID = 54948 }, --Spiked Cobalt Bracers
			{ itemID = 41974, spellID = 55834 }, --Cobalt Bracers
		},
	},
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - OneHanded",
		{
			{ itemID = 45085, spellID = 63182 }, --Titansteel Spellblade
			{ itemID = 41383, spellID = 55370 }, --Titansteel Bonecrusher
			{ itemID = 41384, spellID = 55371 }, --Titansteel Guardian
			{ itemID = 42435, spellID = 56234 }, --Titansteel Shanker
			{ itemID = 41186, spellID = 55183 }, --Corroded Saronite Edge
			{ itemID = 41187, spellID = 55184 }, --Corroded Saronite Woundbringer
			{ itemID = 42443, spellID = 56280 }, --Cudgel of Saronite Justice
			{ itemID = 41185, spellID = 55182 }, --Furious Saronite Beatstick
			{ itemID = 43871, spellID = 59442 }, --Saronite Spellblade
			{ itemID = 41184, spellID = 55181 }, --Saronite Shiv
			{ itemID = 41183, spellID = 55179 }, --Saronite Ambusher
			{ itemID = 41182, spellID = 55177 }, --Savage Cobalt Slicer
			{ itemID = 41243, spellID = 55204 }, --Notched Cobalt War Axe
			{ itemID = 41240, spellID = 55201 }, --Cobalt Tenderizer
			{ itemID = 41239, spellID = 55200 }, --Sturdy Cobalt Quickblade
		},
	},
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - TwoHanded",
		{
			{ itemID = 41257, spellID = 55369 }, --Titansteel Destroyer
			{ itemID = 41188, spellID = 55185 }, --Saronite Mindcrusher
			{ itemID = 41181, spellID = 55174 }, --Honed Cobalt Cleaver
			{ itemID = 41242, spellID = 55203 }, --Forged Cobalt Claymore
		},
	},
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - Thrown",
		{
			{ itemID = 41245, spellID = 55206 }, --Deadly Saronite Dirk
			{ itemID = 41241, spellID = 55202 }, --Sure-fire Shuriken
		},
	},
	{
		Name = "Shield",
		{
			{ itemID = 42508, spellID = 56400 }, --Titansteel Shield Wall
			{ itemID = 41113, spellID = 55014 }, --Saronite Bulwark
			{ itemID = 40670, spellID = 54557 }, --Saronite Defender
			{ itemID = 40668, spellID = 54550 }, --Cobalt Triangle Shield
			{ itemID = 41117, spellID = 55013 }, --Saronite Protector
		},
	},
	{
		Name = "Item Enhancements",
		{
			{ spellID = 55628, icon = "INV_Jewelcrafting_ThoriumSetting" },
			{ spellID = 55641, icon = "INV_GAUNTLETS_61" },
			{ itemID = 41611, spellID = 55656 }, --Eternal Belt Buckle
			{ itemID = 44936, spellID = 62202 }, --Titanium Plating
			{ itemID = 42500, spellID = 56357 }, --Titanium Shield Spike
			{ itemID = 41976, spellID = 55839 }, --Titanium Weapon Chain
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 43853, spellID = 59406 }, --Titanium Skeleton Key
			{ itemID = 43854, spellID = 59405 }, --Cobalt Skeleton Key
			{ itemID = 41745, spellID = 55732 }, --Titanium Rod
		},
	},
	{
		Name = ARMORSMITH,
		{
			{ itemID = 41189, spellID = 55186 }, --Chestplate of Conquest
			{ itemID = 41190, spellID = 55187 }, --Legplates of Conquest
			{ itemID = 41189, spellID = 55186 }, --Chestplate of Conquest
			{ itemID = 23564, spellID = 34530 }, --Twisting Nether Chain Shirt
			{ itemID = 28484, spellID = 34534 }, --Bulwark of Kings
			{ itemID = 28485, spellID = 36257 }, --Bulwark of the Ancient Kings
			{ itemID = 23565, spellID = 36256 }, --Embrace of the Twisting Nether
			{ itemID = 30074, spellID = 36129 }, --Heavy Earthforged Breastplate
			{ itemID = 30076, spellID = 36130 }, --Stormforged Hauberk
			{ itemID = 28483, spellID = 34533 }, --Breastplate of Kings
			{ itemID = 23563, spellID = 34529 }, --Nether Chain Shirt
			{ itemID = 30069, spellID = 36122 }, --Earthforged Leggings
			{ itemID = 30070, spellID = 36124 }, --Windforged Leggings
		},

	},
	{
		Name = WEAPONSMITH,
		{
			{ itemID = 30071, spellID = 36125 }, --Light Earthforged Blade
			{ itemID = 30073, spellID = 36128 }, --Light Emberforged Hammer
			{ itemID = 30072, spellID = 36126 }, --Light Skyforged Axe
			{ itemID = 41186, spellID = 55183 }, --Corroded Saronite Edge
			{ itemID = 41187, spellID = 55184 }, --Corroded Saronite Woundbringer
			{ itemID = 41188, spellID = 55185 }, --Saronite Mindcrusher
		},
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
		},
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
		},
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
		},
	},
}

---------------
--- Cooking ---
---------------

AtlasLoot_Data["CookingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = COOKING,
	Type = "WrathCrafting",
	{
		Name = "Page 1",
		{
			{ itemID = 43015, spellID = 57423 }, --Fish Feast
			{ itemID = 43478, spellID = 58527 }, --Gigantic Feast
			{ itemID = 43480, spellID = 58528 }, --Small Feast
			{ itemID = 42999, spellID = 57441 }, --Blackened Dragonfin
			{ itemID = 42997, spellID = 57438 }, --Blackened Worg Steak
			{ itemID = 45932, spellID = 64358 }, --Black Jelly
			{ itemID = 43004, spellID = 57435 }, --Critter Bites
			{ itemID = 42998, spellID = 57439 }, --Cuttlesteak
			{ itemID = 43000, spellID = 57442 }, --Dragonfin Filet
			{ itemID = 34767, spellID = 45568 }, --Firecracker Salmon
			{ itemID = 42995, spellID = 57436 }, --Hearty Rhino
			{ itemID = 34769, spellID = 45570 }, --Imperial Manta Steak
			{ itemID = 34754, spellID = 45555 }, --Mega Mammoth Meal
			{ itemID = 34758, spellID = 45559 }, --Mighty Rhino Dogs
			{ itemID = 34766, spellID = 45567 }, --Poached Northern Sculpin
		},
		{
			{ itemID = 42994, spellID = 57434 }, --Rhinolicious Wyrmsteak
			{ itemID = 42996, spellID = 57437 }, --Snapper Extreme
			{ itemID = 43005, spellID = 57440 }, --Spiced Mammoth Treats
			{ itemID = 34756, spellID = 45557 }, --Spiced Wyrm Burger
			{ itemID = 34768, spellID = 45571 }, --Spicy AtlasLoot.Colors.BLUE Nettlefish
			{ itemID = 42993, spellID = 57433 }, --Spicy Fried Herring
			{ itemID = 34755, spellID = 45556 }, --Tender Shoveltusk Steak
			{ itemID = 43001, spellID = 57443 }, --Tracker Snacks
			{ itemID = 34757, spellID = 45558 }, --Very Burnt Worg
			{ itemID = 44953, spellID = 62350 }, --Worg Tartare
			{ itemID = 34753, spellID = 45554 }, --Great Feast
			{ itemID = 39520, spellID = 53056 }, --Kungaloosh
			{ itemID = 43491, spellID = 58523 }, --Bad Clams
			{ itemID = 42942, spellID = 45569 }, --Baked Manta Ray
			{ itemID = 43268, spellID = 58065 }, --Dalaran Clam Chowder
		},
	},
	{
		Name = "Page 2",
		{
			{ itemID = 34760, spellID = 45561 }, --Grilled Bonescale
			{ itemID = 34762, spellID = 45563 }, --Grilled Sculpin
			{ itemID = 43492, spellID = 58525 }, --Haunted Herring
			{ itemID = 43488, spellID = 58521 }, --Last Week's Mammoth
			{ itemID = 34748, spellID = 45549 }, --Mammoth Meal
			{ itemID = 34747, spellID = 57421 }, --Northern Stew
			{ itemID = 34765, spellID = 45566 }, --Pickled Fangtooth
			{ itemID = 34764, spellID = 45565 }, --Poached Nettlefish
			{ itemID = 34752, spellID = 45553 }, --Rhino Dogs
			{ itemID = 34751, spellID = 45552 }, --Roasted Worg
			{ itemID = 34761, spellID = 45562 }, --Sauteed Goby
			{ itemID = 34749, spellID = 45550 }, --Shoveltusk Steak
			{ itemID = 34759, spellID = 45560 }, --Smoked Rockfin
			{ itemID = 34763, spellID = 45564 }, --Smoked Salmon
			{ itemID = 43490, spellID = 58512 }, --Tasty Cupcake
		},
		{
			{ itemID = 34750, spellID = 45551 }, --Worm Delight
		},
	}
}

------------------
--- Enchanting ---
------------------

AtlasLoot_Data["EnchantingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = ENCHANTING,
	Type = "WrathCrafting",
	{
		Name = "Enchant Boots",
		{
			{ spellID = 60763, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Greater Assault
			{ spellID = 47901, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Tuskarr's Vitality
			{ spellID = 44589, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Superior Agility
			{ spellID = 44508, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Greater Spirit
			{ spellID = 44584, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Greater Vitality
			{ spellID = 60606, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Assault
			{ spellID = 44528, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Greater Fortitude
			{ spellID = 60623, icon = "Spell_Holy_GreaterHeal" }, --Enchant Boots - Icewalker
		},
	},
	{
		Name = "Enchant Bracer",
		{
			{ spellID = 62256, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Major Stamina
			{ spellID = 60767, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Superior Spellpower
			{ spellID = 44575, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Greater Assault
			{ spellID = 44593, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Major Spirit
			{ spellID = 44598, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Expertise
			{ spellID = 44616, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Greater Stats
			{ spellID = 44635, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Greater Spellpower
			{ spellID = 44555, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Exceptional Intellect
			{ spellID = 60616, icon = "Spell_Holy_GreaterHeal" }, --Enchant Bracers - Striking
		},
	},
	{
		Name = "Enchant Chest",
		{
			{ spellID = 27958, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Exceptional Mana
			{ spellID = 44588, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Exceptional Resilience
			{ spellID = 60692, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Powerful Stats
			{ spellID = 47900, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Super Health
			{ spellID = 44509, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Greater Mana Restoration
			{ spellID = 47766, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Greater Defense
			{ spellID = 44492, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Mighty Health
			{ spellID = 44623, icon = "Spell_Holy_GreaterHeal" }, --Enchant Chest - Super Stats
		},
	},
	{
		Name = "Enchant Cloak",
		{
			{ spellID = 60609, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Speed
			{ spellID = 44631, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Shadow Armor
			{ spellID = 47899, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Wisdom
			{ spellID = 44591, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Titanweave
			{ spellID = 47898, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Greater Speed
			{ spellID = 47672, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Mighty Armor
			{ spellID = 60663, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Major Agility
			{ spellID = 44596, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Superior Arcane Resistance
			{ spellID = 44556, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Superior Fire Resistance
			{ spellID = 44483, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Superior Frost Resistance
			{ spellID = 44494, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Superior Nature Resistance
			{ spellID = 44590, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Superior Shadow Resistance
			{ spellID = 44500, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Superior Agility
			{ spellID = 44582, icon = "Spell_Holy_GreaterHeal" }, --Enchant Cloak - Spell Piercing
		},
	},
	{
		Name = "Enchant Gloves",
		{
			{ spellID = 71692, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Angler
			{ spellID = 44625, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Armsman
			{ spellID = 60668, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Crusher
			{ spellID = 44529, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Major Agility
			{ spellID = 44488, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Precision
			{ spellID = 44484, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Expertise
			{ spellID = 44513, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Greater Assault
			{ spellID = 44506, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Gatherer
			{ spellID = 44592, icon = "Spell_Holy_GreaterHeal" }, --Enchant Gloves - Exceptional Spellpower
		},
	},
	{
		Name = "Enchant Ring",
		{
			{ spellID = 44645, icon = "Spell_Holy_GreaterHeal" }, --Enchant Ring - Assault
			{ spellID = 44636, icon = "Spell_Holy_GreaterHeal" }, --Enchant Ring - Greater Spellpower
			{ spellID = 59636, icon = "Spell_Holy_GreaterHeal" }, --Enchant Ring - Stamina
		},
	},
	{
		Name = "Enchant Shield",
		{
			{ spellID = 44489, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Defense
			{ spellID = 60653, icon = "Spell_Holy_GreaterHeal" }, --Enchant Shield - Greater Intellect
		},
	},
	{
		Name = "Enchant 2H Weapon",
		{
			{ spellID = 60691, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Massacre
			{ spellID = 44595, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Scourgebane
			{ spellID = 44630, icon = "Spell_Holy_GreaterHeal" }, --Enchant 2H Weapon - Greater Savagery
		},
	},
	{
		Name = "Enchant Weapon",
		{
			{ spellID = 64441, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Blade Ward
			{ spellID = 64579, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Blood Draining
			{ spellID = 59619, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Accuracy
			{ spellID = 59621, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Berserking
			{ spellID = 59625, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Black Magic
			{ spellID = 44576, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Lifeward
			{ spellID = 60714, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Mighty Spellpower
			{ spellID = 60707, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Superior Potency
			{ spellID = 44621, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Giant Slayer
			{ spellID = 44524, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Icebreaker
			{ spellID = 44633, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Exceptional Agility
			{ spellID = 44510, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Exceptional Spirit
			{ spellID = 44629, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Exceptional Spellpower
			{ spellID = 60621, icon = "Spell_Holy_GreaterHeal" }, --Enchant Weapon - Greater Potency
		},
	},
	{
		Name = "Enchant Staff",
		{
			{ spellID = 62948, icon = "Spell_Holy_GreaterHeal" }, --Enchant Staff - Greater Spellpower
			{ spellID = 62959, icon = "Spell_Holy_GreaterHeal" }, --Enchant Staff - Spellpower
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 22459, spellID = 28028 }, --Void Sphere
			{ itemID = 44452, spellID = 60619 }, --Runed Titanium Rod
		},
	},
}

-------------------
--- Engineering ---
-------------------

AtlasLoot_Data["EngineeringWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = ENGINEERING,
	Type = "WrathCrafting",
	{
		Name = "Ammo",
		{
			{ itemID = 52021, spellID = 72953 }, --Iceblade Arrow
			{ itemID = 52020, spellID = 72952 }, --Shatter Rounds
			{ itemID = 41165, spellID = 56475 }, --Saronite Arrow Maker
			{ itemID = 41164, spellID = 56474 }, --Ultrasafe Bullet Machine
		},
	},
	{
		Name = "Armor",
		{
			{ itemID = 42549, spellID = 56480 }, --Armored Titanium Goggles
			{ itemID = 42552, spellID = 56483 }, --Charged Titanium Specs
			{ itemID = 42555, spellID = 56487 }, --Electroflux Sight Enhancers
			{ itemID = 42554, spellID = 56486 }, --Greensight Gogs
			{ itemID = 42551, spellID = 56574 }, --Truesight Ice Blinders
			{ itemID = 42553, spellID = 56484 }, --Visage Liquification Goggles
			{ itemID = 42550, spellID = 56481 }, --Weakness Spectralizers
			{ itemID = 44949, spellID = 62271 }, --Unbreakable Healing Amplifiers
			{ itemID = 41121, spellID = 56469 }, --Gnomish Lightning Generator
			{ itemID = 40895, spellID = 56473 }, --Gnomish X-Ray Specs
			{ itemID = 44742, spellID = 61483 }, --Mechanized Snow Goggles
			{ itemID = 40865, spellID = 56467 }, --Noise Machine
			{ itemID = 40767, spellID = 56466 }, --Sonic Booster
		},
	},
	{
		Name = "Explosives",
		{
			{ itemID = 42641, spellID = 56514 }, --Global Thermal Sapper Charge
			{ itemID = 44951, spellID = 56468 }, --Box of Bombs
			{ itemID = 40536, spellID = 56463 }, --Explosive Decoy
			{ itemID = 40771, spellID = 56460 }, --Cobalt Frag Bomb
			{ itemID = 32413, spellID = 39973 }, --Frost Grenades
		},
	},
	{
		Name = "Item Enhancements",
		{
			{ itemID = 41167, spellID = 56478 }, --Heartseeker Scope
			{ itemID = 41146, spellID = 56470 }, --Sun Scope
			{ itemID = 44739, spellID = 61471 }, --Diamond-cut Refractor Scope
		},
		{
			{ spellID = 55016, icon = "Trade_Engineering" }, --Nitro Boosts
			{ spellID = 54998, icon = "Trade_Engineering" }, --Hand-Mounted Pyro Rocket
			{ spellID = 54999, icon = "Trade_Engineering" }, --Hyperspeed Accelerators
			{ spellID = 63770, icon = "Trade_Engineering" }, --Reticulated Armor Webbing
			{ spellID = 54736, icon = "Trade_Engineering" }, --Personal Electromagnetic Pulse Generator
			{ spellID = 54793, icon = "Trade_Engineering" }, --Belt-Clipped Spynoculars
			{ spellID = 55002, icon = "Trade_Engineering" }, --Flexweave Underlay
			{ spellID = 63765, icon = "Trade_Engineering" }, --Springy Arachnoweave
		},
	},
	{
		Name = "Weapon",
		{
			{ itemID = 41168, spellID = 56479 }, --Armor Plated Combat Shotgun
			{ itemID = 44504, spellID = 60874 }, --Nesingwary 4000
			{ itemID = 39688, spellID = 54353 }, --Mark \"S\" Boomstick
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 49040, spellID = 68067 }, --Jeeves
			{ itemID = 41508, spellID = 60866 }, --Mechano-hog
			{ itemID = 44413, spellID = 60867 }, --Mekgineer's Chopper
			{ itemID = 40768, spellID = 56472 }, --MOLL-E
			{ itemID = 48933, spellID = 67920 }, --Wormhole Generator: Northrend
			{ itemID = 23775, spellID = 30349 }, --Titanium Toolbox
			{ itemID = 40892, spellID = 56459 }, --Hammer Pick
		},
	},
	{
		Name = "Reagents",
		{
			{ itemID = 39681, spellID = 56349 }, --Handful of Cobalt Bolts
			{ itemID = 39683, spellID = 56471 }, --Froststeel Tube
			{ itemID = 39682, spellID = 56464 }, --Overcharged Capacitor
			{ itemID = 39690, spellID = 53281 }, --Volatile Blasting Trigger
		},
	},
	{
		Name = GNOMISH,
		{
			{ itemID = 52021, spellID = 72953 }, --Iceblade Arrow
			{ itemID = 23829, spellID = 30575 }, --Gnomish Battle Goggles
			{ itemID = 23828, spellID = 30574 }, --Gnomish Power Goggles
			{ itemID = 40895, spellID = 56473 }, --Gnomish X-Ray Specs
			{ itemID = 23825, spellID = 30570 }, --Nigh-Invulnerability Belt
			{ itemID = 23835, spellID = 30569 }, --Gnomish Poultryizer
			{ itemID = 30544, spellID = 36955 }, --Ultrasafe Transporter - Toshley's Station
			{ itemID = 18986, spellID = 23489 }, --Ultrasafe Transporter - Gadgetzan
			{ itemID = 18660, spellID = 23129 }, --World Enlarger
			{ itemID = 10726, spellID = 12907 }, --Gnomish Mind Control Cap
			{ itemID = 10724, spellID = 12905 }, --Gnomish Rocket Boots
			{ itemID = 10721, spellID = 12903 }, --Gnomish Harm Prevention Belt
			{ itemID = 10545, spellID = 12897 }, --Gnomish Goggles
			{ itemID = 23841, spellID = 30568 }, --Gnomish Flame Turret
			{ itemID = 18645, spellID = 23096 }, --Alarm-O-Bot
		},
		{
			{ itemID = 10645, spellID = 12759 }, --Gnomish Death Ray
			{ itemID = 10725, spellID = 12906 }, --Gnomish Battle Chicken
			{ itemID = 10720, spellID = 12902 }, --Gnomish Net-o-Matic Projector
			{ itemID = 10716, spellID = 12899 }, --Gnomish Shrink Ray
			{ itemID = 10713, spellID = 12895 }, --Inlaid Mithril Cylinder Plans
		},
	},
	{
		Name = GOBLIN,
		{
			{ itemID = 52020, spellID = 72952 }, --Shatter Rounds
			{ itemID = 23838, spellID = 30565 }, --Foreman's Enchanted Helmet
			{ itemID = 23839, spellID = 30566 }, --Foreman's Reinforced Helmet
			{ itemID = 23836, spellID = 30563 }, --Goblin Rocket Launcher
			{ itemID = 30542, spellID = 36954 }, --Dimensional Ripper - Area 52
			{ itemID = 18984, spellID = 23486 }, --Dimensional Ripper - Everlook
			{ itemID = 10588, spellID = 12758 }, --Goblin Rocket Helmet
			{ itemID = 7189, spellID = 8895 }, --Goblin Rocket Boots
			{ itemID = 10543, spellID = 12718 }, --Goblin Construction Helmet
			{ itemID = 10542, spellID = 12717 }, --Goblin Mining Helmet
			{ itemID = 42641, spellID = 56514 }, --Global Thermal Sapper Charge
			{ itemID = 23827, spellID = 30560 }, --Super Sapper Charge
			{ itemID = 23826, spellID = 30558 }, --The Bigger One
			{ itemID = 18587, spellID = 23078 }, --Goblin Jumper Cables XL
			{ itemID = 10727, spellID = 12908 }, --Goblin Dragon Gun
		},
		{
			{ itemID = 10586, spellID = 12754 }, --The Big One
			{ itemID = 10587, spellID = 12755 }, --Goblin Bomb Dispenser
			{ itemID = 10577, spellID = 12716 }, --Goblin Mortar
			{ itemID = 10644, spellID = 12715 }, --Goblin Rocket Fuel Recipe
			{ itemID = 10646, spellID = 12760 }, --Goblin Sapper Charge
			{ itemID = 10577, spellID = 13240 }, --The Mortar: Reloaded
		},
	},
}

-------------------
--- Inscription ---
-------------------

AtlasLoot_Data["Inscription"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = INSCRIPTION,
	Type = "WrathCrafting",
	{
		Name = "Off-Hand Items",
		{
			{ itemID = 44210, spellID = 59498 }, --Faces of Doom
			{ itemID = 38322, spellID = 59497 }, --Iron-bound Tome
			{ itemID = 45854, spellID = 64051 }, --Rituals of the New Moon
			{ itemID = 45849, spellID = 64053 }, --Twilight Tome
			{ itemID = 43667, spellID = 59496 }, --Book of Clever Tricks
			{ itemID = 43666, spellID = 59495 }, --Hellfire Tome
			{ itemID = 43664, spellID = 59494 }, --Manual of Clouds
			{ itemID = 43663, spellID = 59493 }, --Stormbound Tome
			{ itemID = 43661, spellID = 59490 }, --Book of Stars
			{ itemID = 43660, spellID = 59489 }, --Fire Eater's Guide
			{ itemID = 43657, spellID = 59486 }, --Royal Guide of Escape Routes
			{ itemID = 43656, spellID = 59484 }, --Tome of Kings
			{ itemID = 43655, spellID = 59478 }, --Book of Survival
			{ itemID = 43654, spellID = 59475 }, --Tome of the Dawn
			{ itemID = 43515, spellID = 58565 }, --Mystic Tome
		},
	},
	{
		Name = "Reagents",
		{
			{ itemID = 43127, spellID = 57716 }, --Snowfall Ink
			{ itemID = 43125, spellID = 57714 }, --Darkflame Ink
			{ itemID = 43123, spellID = 57712 }, --Ink of the Sky
			{ itemID = 43121, spellID = 57710 }, --Fiery Ink
			{ itemID = 43119, spellID = 57708 }, --Royal Ink
			{ itemID = 43117, spellID = 57706 }, --Dawnstar Ink
			{ itemID = 43115, spellID = 57703 }, --Hunter's Ink
			{ itemID = 43126, spellID = 57715 }, --Ink of the Sea
			{ itemID = 43124, spellID = 57713 }, --Ethereal Ink
			{ itemID = 43122, spellID = 57711 }, --Shimmering Ink
			{ itemID = 43120, spellID = 57709 }, --Celestial Ink
			{ itemID = 43118, spellID = 57707 }, --Jadefire Ink
			{ itemID = 43116, spellID = 57704 }, --Lion's Ink
			{ itemID = 39774, spellID = 53462 }, --Midnight Ink
			{ itemID = 39469, spellID = 52843 }, --Moonglow Ink
		},
		{
			{ itemID = 37101, spellID = 52738 }, --Ivory Ink
		},
	},
	{
		Name = "Scrolls",
		{
			{ itemID = 49632, spellID = 69385 }, --Runescroll of Fortitude
			{ itemID = 44315, spellID = 60337 }, --Scroll of Recall III
			{ itemID = 44314, spellID = 60336 }, --Scroll of Recall II
			{ itemID = 37118, spellID = 48248 }, --Scroll of Recall
			{ itemID = 3012, spellID = 58483 }, --Scroll of Agility VIII
			{ itemID = 3012, spellID = 58482 }, --Scroll of Agility VII
			{ itemID = 3012, spellID = 58481 }, --Scroll of Agility VI
			{ itemID = 3012, spellID = 58480 }, --Scroll of Agility V
			{ itemID = 3012, spellID = 58478 }, --Scroll of Agility IV
			{ itemID = 3012, spellID = 58476 }, --Scroll of Agility III
			{ itemID = 3012, spellID = 58473 }, --Scroll of Agility II
			{ itemID = 3012, spellID = 58472 }, --Scroll of Agility
			{ itemID = 955, spellID = 50604 }, --Scroll of Intellect VIII
			{ itemID = 955, spellID = 50603 }, --Scroll of Intellect VII
		},
		{
			{ itemID = 955, spellID = 50602 }, --Scroll of Intellect VI
			{ itemID = 955, spellID = 50601 }, --Scroll of Intellect V
			{ itemID = 955, spellID = 50600 }, --Scroll of Intellect IV
			{ itemID = 955, spellID = 50599 }, --Scroll of Intellect III
			{ itemID = 955, spellID = 50598 }, --Scroll of Intellect II
			{ itemID = 955, spellID = 48114 }, --Scroll of Intellect
			{ itemID = 955, spellID = 50611 }, --Scroll of Spirit VIII
			{ itemID = 955, spellID = 50610 }, --Scroll of Spirit VII
			{ itemID = 955, spellID = 50609 }, --Scroll of Spirit VI
			{ itemID = 955, spellID = 50608 }, --Scroll of Spirit V
			{ itemID = 955, spellID = 50607 }, --Scroll of Spirit IV
			{ itemID = 955, spellID = 50606 }, --Scroll of Spirit III
			{ itemID = 955, spellID = 50605 }, --Scroll of Spirit II
			{ itemID = 955, spellID = 48116 }, --Scroll of Spirit
		},
	},
	{
		Name = "Scrolls",
		{
			{ itemID = 1180, spellID = 50620 }, --Scroll of Stamina VIII
			{ itemID = 1180, spellID = 50619 }, --Scroll of Stamina VII
			{ itemID = 1180, spellID = 50618 }, --Scroll of Stamina VI
			{ itemID = 1180, spellID = 50617 }, --Scroll of Stamina V
			{ itemID = 1180, spellID = 50616 }, --Scroll of Stamina IV
			{ itemID = 1180, spellID = 50614 }, --Scroll of Stamina III
			{ itemID = 1180, spellID = 50612 }, --Scroll of Stamina II
			{ itemID = 1180, spellID = 45382 }, --Scroll of Stamina
		},
		{
			{ itemID = 3012, spellID = 58491 }, --Scroll of Strength VIII
			{ itemID = 3012, spellID = 58490 }, --Scroll of Strength VII
			{ itemID = 3012, spellID = 58489 }, --Scroll of Strength VI
			{ itemID = 3012, spellID = 58488 }, --Scroll of Strength V
			{ itemID = 3012, spellID = 58487 }, --Scroll of Strength IV
			{ itemID = 3012, spellID = 58486 }, --Scroll of Strength III
			{ itemID = 3012, spellID = 58485 }, --Scroll of Strength II
			{ itemID = 3012, spellID = 58484 }, --Scroll of Strength
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ spellID = 59504, icon = "INV_Feather_05" }, --Darkmoon Card of the North
			{ spellID = 59503, icon = "INV_Feather_05" }, --Greater Darkmoon Card
			{ spellID = 59502, icon = "INV_Feather_05" }, --Darkmoon Card
			{ spellID = 59491, icon = "INV_Feather_05" }, --Shadowy Tarot
			{ spellID = 59487, icon = "INV_Feather_05" }, --Arcane Tarot
			{ spellID = 48247, icon = "INV_Feather_05" }, --Mysterious Tarot
			{ spellID = 59480, icon = "INV_Feather_05" }, --Strange Tarot
			{ spellID = 61117, icon = "INV_Inscription_Tradeskill01" }, --Master's Inscription of the Axe
			{ spellID = 61118, icon = "INV_Inscription_Tradeskill01" }, --Master's Inscription of the Crag
			{ spellID = 61119, icon = "INV_Inscription_Tradeskill01" }, --Master's Inscription of the Pinnacle
			{ spellID = 61120, icon = "INV_Inscription_Tradeskill01" }, --Master's Inscription of the Storm
			{ spellID = 52175, icon = "INV_Misc_Book_11" }, --Decipher
		},
		{
			{ itemID = 43145, spellID = 59500 }, --Armor Vellum III
			{ itemID = 37602, spellID = 59499 }, --Armor Vellum II
			{ itemID = 38682, spellID = 52739 }, --Armor Vellum
			{ itemID = 43146, spellID = 59501 }, --Weapon Vellum III
			{ itemID = 39350, spellID = 59488 }, --Weapon Vellum II
			{ itemID = 39349, spellID = 52840 }, --Weapon Vellum
			{ itemID = 43850, spellID = 59387 }, --Certificate of Ownership
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"],
		{
			{ itemID = 43533, spellID = 57207 }, --Glyph of Anti-Magic Shell
			{ itemID = 43826, spellID = 59339 }, --Glyph of Blood Strike
			{ itemID = 43536, spellID = 57210 }, --Glyph of Bone Shield
			{ itemID = 43537, spellID = 57211 }, --Glyph of Chains of Ice
			{ itemID = 45799, spellID = 64297 }, --Glyph of Dancing Rune Weapon
			{ itemID = 43538, spellID = 57212 }, --Glyph of Dark Command
			{ itemID = 45804, spellID = 64266 }, --Glyph of Dark Death
			{ itemID = 43542, spellID = 57214 }, --Glyph of Death and Decay
			{ itemID = 43541, spellID = 57213 }, --Glyph of Death Grip
			{ itemID = 43827, spellID = 59340 }, --Glyph of Death Strike
			{ itemID = 45805, spellID = 64267 }, --Glyph of Disease
			{ itemID = 43543, spellID = 57216 }, --Glyph of Frost Strike
			{ itemID = 43534, spellID = 57208 }, --Glyph of Heart Strike
			{ itemID = 45806, spellID = 64300 }, --Glyph of Howling Blast
			{ itemID = 45800, spellID = 64298 }, --Glyph of Hungering Cold
		},
		{
			{ itemID = 43545, spellID = 57218 }, --Glyph of Icebound Fortitude
			{ itemID = 43546, spellID = 57219 }, --Glyph of Icy Touch
			{ itemID = 43547, spellID = 57220 }, --Glyph of Obliterate
			{ itemID = 43548, spellID = 57221 }, --Glyph of Plague Strike
			{ itemID = 43550, spellID = 57223 }, --Glyph of Rune Strike
			{ itemID = 43825, spellID = 59338 }, --Glyph of Rune Tap
			{ itemID = 43551, spellID = 57224 }, --Glyph of Scourge Strike
			{ itemID = 43552, spellID = 57225 }, --Glyph of Strangulate
			{ itemID = 43549, spellID = 57222 }, --Glyph of the Ghoul
			{ itemID = 43553, spellID = 57226 }, --Glyph of Unbreakable Armor
			{ itemID = 45803, spellID = 64299 }, --Glyph of Unholy Blight
			{ itemID = 43554, spellID = 57227 }, --Glyph of Vampiric Blood
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"],
		{
			{ itemID = 43535, spellID = 57209 }, --Glyph of Blood Tap
			{ itemID = 43671, spellID = 57229 }, --Glyph of Corpse Explosion
			{ itemID = 43539, spellID = 57215 }, --Glyph of Death's Embrace
			{ itemID = 43544, spellID = 57217 }, --Glyph of Horn of Winter
			{ itemID = 43672, spellID = 57230 }, --Glyph of Pestilence
			{ itemID = 43673, spellID = 57228 }, --Glyph of Raise Dead
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],
		{
			{ itemID = 45623, spellID = 64256 }, --Glyph of Barkskin
			{ itemID = 45601, spellID = 64268 }, --Glyph of Berserk
			{ itemID = 48720, spellID = 67600 }, --Glyph of Claw
			{ itemID = 40924, spellID = 48121 }, --Glyph of Entangling Roots
			{ itemID = 44928, spellID = 62162 }, --Glyph of Focus
			{ itemID = 40896, spellID = 56943 }, --Glyph of Frenzied Regeneration
			{ itemID = 40899, spellID = 56944 }, --Glyph of Growl
			{ itemID = 40914, spellID = 56945 }, --Glyph of Healing Touch
			{ itemID = 40920, spellID = 56946 }, --Glyph of Hurricane
			{ itemID = 40908, spellID = 56947 }, --Glyph of Innervate
			{ itemID = 40919, spellID = 56948 }, --Glyph of Insect Swarm
			{ itemID = 40915, spellID = 56949 }, --Glyph of Lifebloom
			{ itemID = 40900, spellID = 56950 }, --Glyph of Mangle
			{ itemID = 40897, spellID = 56961 }, --Glyph of Maul
			{ itemID = 45622, spellID = 64258 }, --Glyph of Monsoon
		},
		{
			{ itemID = 40923, spellID = 56951 }, --Glyph of Moonfire
			{ itemID = 45603, spellID = 64313 }, --Glyph of Nourish
			{ itemID = 40903, spellID = 56952 }, --Glyph of Rake
			{ itemID = 50125, spellID = 71015 }, --Glyph of Rapid Rejuvenation
			{ itemID = 40909, spellID = 56953 }, --Glyph of Rebirth
			{ itemID = 40912, spellID = 56954 }, --Glyph of Regrowth
			{ itemID = 40913, spellID = 56955 }, --Glyph of Rejuvenation
			{ itemID = 40902, spellID = 56956 }, --Glyph of Rip
			{ itemID = 45604, spellID = 64307 }, --Glyph of Savage Roar
			{ itemID = 40901, spellID = 56957 }, --Glyph of Shred
			{ itemID = 40921, spellID = 56958 }, --Glyph of Starfall
			{ itemID = 40916, spellID = 56959 }, --Glyph of Starfire
			{ itemID = 46372, spellID = 65245 }, --Glyph of Survival Instincts
			{ itemID = 40906, spellID = 56960 }, --Glyph of Swiftmend
			{ itemID = 40922, spellID = 56963 }, --Glyph of WRATH
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],
		{
			{ itemID = 45602, spellID = 64270 }, --Glyph of Wild Growth
			{ itemID = 43316, spellID = 58286 }, --Glyph of Aquatic Form
			{ itemID = 43334, spellID = 58287 }, --Glyph of Challenging Roar
			{ itemID = 43674, spellID = 59315 }, --Glyph of Dash
			{ itemID = 43335, spellID = 58296 }, --Glyph of the Wild
			{ itemID = 43332, spellID = 58289 }, --Glyph of Thorns
			{ itemID = 44922, spellID = 56965 }, --Glyph of Typhoon
			{ itemID = 43331, spellID = 58288 }, --Glyph of Unburdened Rebirth
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ itemID = 42897, spellID = 56994 }, --Glyph of Aimed Shot
			{ itemID = 42898, spellID = 56995 }, --Glyph of Arcane Shot
			{ itemID = 42899, spellID = 56996 }, --Glyph of Aspect of the Beast
			{ itemID = 42900, spellID = 56997 }, --Glyph of Aspect of the Monkey
			{ itemID = 42901, spellID = 56998 }, --Glyph of Aspect of the Viper
			{ itemID = 42902, spellID = 56999 }, --Glyph of Beastial WRATH
			{ itemID = 45625, spellID = 64271 }, --Glyph of Chimera Shot
			{ itemID = 42903, spellID = 57000 }, --Glyph of Deterrence
			{ itemID = 42904, spellID = 57001 }, --Glyph of Disengage
			{ itemID = 45731, spellID = 64273 }, --Glyph of Explosive Shot
			{ itemID = 45733, spellID = 64253 }, --Glyph of Explosive Trap
			{ itemID = 42905, spellID = 57002 }, --Glyph of Freezing Trap
			{ itemID = 42906, spellID = 57003 }, --Glyph of Frost Trap
			{ itemID = 42907, spellID = 57004 }, --Glyph of Hunter's Mark
			{ itemID = 42908, spellID = 57005 }, --Glyph of Immolation Trap
		},
		{
			{ itemID = 42909, spellID = 57006 }, --Glyph of Improved Aspect of the Hawk
			{ itemID = 45732, spellID = 64304 }, --Glyph of Kill Shot
			{ itemID = 42910, spellID = 57007 }, --Glyph of Multi-Shot
			{ itemID = 42911, spellID = 57008 }, --Glyph of Rapid Fire
			{ itemID = 45735, spellID = 64246 }, --Glyph of Raptor Strike
			{ itemID = 45734, spellID = 64249 }, --Glyph of Scatter Shot
			{ itemID = 42912, spellID = 57009 }, --Glyph of Serpent Sting
			{ itemID = 42913, spellID = 57010 }, --Glyph of Snake Trap
			{ itemID = 42914, spellID = 57011 }, --Glyph of Steady Shot
			{ itemID = 42915, spellID = 57012 }, --Glyph of Trueshot Aura
			{ itemID = 42916, spellID = 57013 }, --Glyph of Volley
			{ itemID = 42917, spellID = 57014 }, --Glyph of Wyvern Sting
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ itemID = 43351, spellID = 58302 }, --Glyph of Feign Death
			{ itemID = 43350, spellID = 58301 }, --Glyph of Mend Pet
			{ itemID = 43354, spellID = 58300 }, --Glyph of Possessed Strength
			{ itemID = 43338, spellID = 58299 }, --Glyph of Revive Pet
			{ itemID = 43356, spellID = 58298 }, --Glyph of Scare Beast
			{ itemID = 43355, spellID = 58297 }, --Glyph of the Pack
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ itemID = 45738, spellID = 64276 }, --Glyph of Arcane Barrage
			{ itemID = 44955, spellID = 56991 }, --Glyph of Arcane Blast
			{ itemID = 42734, spellID = 56968 }, --Glyph of Arcane Explosion
			{ itemID = 42735, spellID = 56971 }, --Glyph of Arcane Missiles
			{ itemID = 42736, spellID = 56972 }, --Glyph of Arcane Power
			{ itemID = 42737, spellID = 56973 }, --Glyph of Blink
			{ itemID = 45736, spellID = 64274 }, --Glyph of Deep Freeze
			{ itemID = 50045, spellID = 71101 }, --Glyph of Eternal Water
			{ itemID = 42738, spellID = 56974 }, --Glyph of Evocation
			{ itemID = 42740, spellID = 57719 }, --Glyph of Fire Blast
			{ itemID = 42739, spellID = 56975 }, --Glyph of Fireball
			{ itemID = 42741, spellID = 56976 }, --Glyph of Frost Nova
			{ itemID = 42742, spellID = 56977 }, --Glyph of Frostbolt
			{ itemID = 44684, spellID = 61677 }, --Glyph of Frostfire
			{ itemID = 42743, spellID = 56978 }, --Glyph of Ice Armor
		},
		{
			{ itemID = 45740, spellID = 64257 }, --Glyph of Ice Barrier
			{ itemID = 42744, spellID = 56979 }, --Glyph of Ice Block
			{ itemID = 42745, spellID = 56980 }, --Glyph of Ice Lance
			{ itemID = 42746, spellID = 56981 }, --Glyph of Icy Veins
			{ itemID = 42747, spellID = 56982 }, --Glyph of Improved Scorch
			{ itemID = 42748, spellID = 56983 }, --Glyph of Invisibility
			{ itemID = 45737, spellID = 64275 }, --Glyph of Living Bomb
			{ itemID = 42749, spellID = 56984 }, --Glyph of Mage Armor
			{ itemID = 42750, spellID = 56985 }, --Glyph of Mana Gem
			{ itemID = 45739, spellID = 64314 }, --Glyph of Mirror Image
			{ itemID = 42751, spellID = 56986 }, --Glyph of Molten Armor
			{ itemID = 42752, spellID = 56987 }, --Glyph of Polymorph
			{ itemID = 42753, spellID = 56988 }, --Glyph of Remove Curse
			{ itemID = 42754, spellID = 56989 }, --Glyph of Water Elemental
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ itemID = 43339, spellID = 58303 }, --Glyph of Arcane Intellect
			{ itemID = 44920, spellID = 56990 }, --Glyph of Blast Wave
			{ itemID = 43357, spellID = 58305 }, --Glyph of Fire Ward
			{ itemID = 43359, spellID = 58306 }, --Glyph of Frost Armor
			{ itemID = 43360, spellID = 58307 }, --Glyph of Frost Ward
			{ itemID = 43364, spellID = 58308 }, --Glyph of Slow Fall
			{ itemID = 43361, spellID = 58310 }, --Glyph of the Penguin
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],
		{
			{ itemID = 41101, spellID = 57019 }, --Glyph of Avenger's Shield
			{ itemID = 41107, spellID = 57021 }, --Glyph of Avenging WRATH
			{ itemID = 45741, spellID = 64277 }, --Glyph of Beacon of Light
			{ itemID = 41104, spellID = 57020 }, --Glyph of Cleansing
			{ itemID = 41099, spellID = 57023 }, --Glyph of Consecration
			{ itemID = 41098, spellID = 57024 }, --Glyph of Crusader Strike
			{ itemID = 45745, spellID = 64305 }, --Glyph of Divine Plea
			{ itemID = 45743, spellID = 64279 }, --Glyph of Divine Storm
			{ itemID = 41108, spellID = 57031 }, --Glyph of Divinity
			{ itemID = 41103, spellID = 57025 }, --Glyph of Exorcism
			{ itemID = 41105, spellID = 57026 }, --Glyph of Flash of Light
			{ itemID = 41095, spellID = 57027 }, --Glyph of Hammer of Justice
			{ itemID = 45742, spellID = 64278 }, --Glyph of Hammer of the Righteous
			{ itemID = 41097, spellID = 57028 }, --Glyph of Hammer of WRATH
			{ itemID = 41106, spellID = 57029 }, --Glyph of Holy Light
		},
		{
			{ itemID = 45746, spellID = 64254 }, --Glyph of Holy Shock
			{ itemID = 41092, spellID = 57030 }, --Glyph of Judgement
			{ itemID = 41100, spellID = 57032 }, --Glyph of Righteous Defense
			{ itemID = 45747, spellID = 64251 }, --Glyph of Salvation
			{ itemID = 43867, spellID = 59559 }, --Glyph of Seal of Blood
			{ itemID = 41094, spellID = 57033 }, --Glyph of Seal of Command
			{ itemID = 41110, spellID = 57034 }, --Glyph of Seal of Light
			{ itemID = 43868, spellID = 59560 }, --Glyph of Seal of Righteousness
			{ itemID = 43869, spellID = 59561 }, --Glyph of Seal of Vengeance
			{ itemID = 41109, spellID = 57035 }, --Glyph of Seal of Wisdom
			{ itemID = 45744, spellID = 64308 }, --Glyph of Shield of Righteousness
			{ itemID = 41096, spellID = 57022 }, --Glyph of Spiritual Attunement
			{ itemID = 41102, spellID = 57036 }, --Glyph of Turn Evil
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],
		{
			{ itemID = 43365, spellID = 58311 }, --Glyph of Blessing of Kings
			{ itemID = 43340, spellID = 58314 }, --Glyph of Blessing of Might
			{ itemID = 43366, spellID = 58312 }, --Glyph of Blessing of Wisdom
			{ itemID = 43367, spellID = 58313 }, --Glyph of Lay on Hands
			{ itemID = 43368, spellID = 58315 }, --Glyph of Sense Undead
			{ itemID = 43369, spellID = 58316 }, --Glyph of the Wise
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],
		{
			{ itemID = 42396, spellID = 57181 }, --Glyph of Circle of Healing
			{ itemID = 42397, spellID = 57183 }, --Glyph of Dispel Magic
			{ itemID = 45753, spellID = 64280 }, --Glyph of Dispersion
			{ itemID = 42398, spellID = 57184 }, --Glyph of Fade
			{ itemID = 42399, spellID = 57185 }, --Glyph of Fear Ward
			{ itemID = 42400, spellID = 57186 }, --Glyph of Flash Heal
			{ itemID = 45755, spellID = 64281 }, --Glyph of Guardian Spirit
			{ itemID = 42401, spellID = 57187 }, --Glyph of Holy Nova
			{ itemID = 45758, spellID = 64283 }, --Glyph of Hymn of Hope
			{ itemID = 42402, spellID = 57188 }, --Glyph of Inner Fire
			{ itemID = 42403, spellID = 57189 }, --Glyph of Lightwell
			{ itemID = 42404, spellID = 57190 }, --Glyph of Mass Dispel
			{ itemID = 42405, spellID = 57191 }, --Glyph of Mind Control
			{ itemID = 42406, spellID = 57192 }, --Glyph of Mind Flay
			{ itemID = 45757, spellID = 64309 }, --Glyph of Mind Sear
		},
		{
			{ itemID = 45760, spellID = 64259 }, --Glyph of Pain Suppression
			{ itemID = 45756, spellID = 64282 }, --Glyph of Penance
			{ itemID = 42408, spellID = 57194 }, --Glyph of Power Word: Shield
			{ itemID = 42409, spellID = 57195 }, --Glyph of Prayer of Healing
			{ itemID = 42410, spellID = 57196 }, --Glyph of Psychic Scream
			{ itemID = 42411, spellID = 57197 }, --Glyph of Renew
			{ itemID = 42412, spellID = 57198 }, --Glyph of Scourge Imprisonment
			{ itemID = 42407, spellID = 57193 }, --Glyph of Shadow
			{ itemID = 42414, spellID = 57199 }, --Glyph of Shadow Word: Death
			{ itemID = 42415, spellID = 57200 }, --Glyph of Shadow Word: Pain
			{ itemID = 42416, spellID = 57201 }, --Glyph of Smite
			{ itemID = 42417, spellID = 57202 }, --Glyph of Spirit of Redemption
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],
		{
			{ itemID = 43342, spellID = 58317 }, --Glyph of Fading
			{ itemID = 43371, spellID = 58318 }, --Glyph of Fortitude
			{ itemID = 43370, spellID = 58319 }, --Glyph of Levitate
			{ itemID = 43373, spellID = 58320 }, --Glyph of Shackle Undead
			{ itemID = 43372, spellID = 58321 }, --Glyph of Shadow Protection
			{ itemID = 43374, spellID = 58322 }, --Glyph of Shadowfiend
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ itemID = 42954, spellID = 57112 }, --Glyph of Adrenaline Rush
			{ itemID = 42955, spellID = 57113 }, --Glyph of Ambush
			{ itemID = 42956, spellID = 57114 }, --Glyph of Backstab
			{ itemID = 42957, spellID = 57115 }, --Glyph of Blade Flurry
			{ itemID = 45769, spellID = 64303 }, --Glyph of Cloak of Shadows
			{ itemID = 42958, spellID = 57116 }, --Glyph of Crippling Poison
			{ itemID = 42959, spellID = 57117 }, --Glyph of Deadly Throw
			{ itemID = 42960, spellID = 57119 }, --Glyph of Evasion
			{ itemID = 42961, spellID = 57120 }, --Glyph of Eviscerate
			{ itemID = 42962, spellID = 57121 }, --Glyph of Expose Armor
			{ itemID = 45766, spellID = 64315 }, --Glyph of Fan of Knives
			{ itemID = 42963, spellID = 57122 }, --Glyph of Feint
			{ itemID = 42964, spellID = 57123 }, --Glyph of Garrote
			{ itemID = 42965, spellID = 57124 }, --Glyph of Ghostly Strike
			{ itemID = 42966, spellID = 57125 }, --Glyph of Gouge
		},
		{
			{ itemID = 42967, spellID = 57126 }, --Glyph of Hemorrhage
			{ itemID = 45761, spellID = 64284 }, --Glyph of Hunger for Blood
			{ itemID = 45762, spellID = 64285 }, --Glyph of Killing Spree
			{ itemID = 45768, spellID = 64260 }, --Glyph of Mutilate
			{ itemID = 42968, spellID = 57127 }, --Glyph of Preparation
			{ itemID = 42969, spellID = 57128 }, --Glyph of Rupture
			{ itemID = 42970, spellID = 57129 }, --Glyph of Sap
			{ itemID = 45764, spellID = 64286 }, --Glyph of Shadow Dance
			{ itemID = 42972, spellID = 57131 }, --Glyph of Sinister Strike
			{ itemID = 42973, spellID = 57132 }, --Glyph of Slice and Dice
			{ itemID = 42974, spellID = 57133 }, --Glyph of Sprint
			{ itemID = 45767, spellID = 64310 }, --Glyph of Tricks of the Trade
			{ itemID = 42971, spellID = 57130 }, --Glyph of Vigor
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ itemID = 43379, spellID = 58323 }, --Glyph of Blurred Speed
			{ itemID = 43376, spellID = 58324 }, --Glyph of Distract
			{ itemID = 43377, spellID = 58325 }, --Glyph of Pick Lock
			{ itemID = 43343, spellID = 58326 }, --Glyph of Pick Pocket
			{ itemID = 43378, spellID = 58327 }, --Glyph of Safe Fall
			{ itemID = 43380, spellID = 58328 }, --Glyph of Vanish
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],
		{
			{ itemID = 41517, spellID = 57232 }, --Glyph of Chain Heal
			{ itemID = 41518, spellID = 57233 }, --Glyph of Chain Lightning
			{ itemID = 45775, spellID = 64261 }, --Glyph of Earth Shield
			{ itemID = 41526, spellID = 57235 }, --Glyph of Earth Shock
			{ itemID = 41527, spellID = 57236 }, --Glyph of Earthliving Weapon
			{ itemID = 41552, spellID = 57250 }, --Glyph of Elemental Mastery
			{ itemID = 45771, spellID = 64288 }, --Glyph of Feral Spirit
			{ itemID = 41529, spellID = 57237 }, --Glyph of Fire Elemental Totem
			{ itemID = 41530, spellID = 57238 }, --Glyph of Fire Nova Totem
			{ itemID = 41531, spellID = 57239 }, --Glyph of Flame Shock
			{ itemID = 41532, spellID = 57240 }, --Glyph of Flametongue Weapon
			{ itemID = 41547, spellID = 57241 }, --Glyph of Frost Shock
			{ itemID = 41533, spellID = 57242 }, --Glyph of Healing Stream Totem
			{ itemID = 41534, spellID = 57243 }, --Glyph of Healing Wave
			{ itemID = 45777, spellID = 64316 }, --Glyph of Hex
		},
		{
			{ itemID = 41524, spellID = 57234 }, --Glyph of Lava
			{ itemID = 41540, spellID = 57249 }, --Glyph of Lava Lash
			{ itemID = 41535, spellID = 57244 }, --Glyph of Lesser Healing Wave
			{ itemID = 41536, spellID = 57245 }, --Glyph of Lightning Bolt
			{ itemID = 41537, spellID = 57246 }, --Glyph of Lightning Shield
			{ itemID = 41538, spellID = 57247 }, --Glyph of Mana Tide Totem
			{ itemID = 45772, spellID = 64289 }, --Glyph of Riptide
			{ itemID = 45778, spellID = 64247 }, --Glyph of Stoneclaw Totem
			{ itemID = 41539, spellID = 57248 }, --Glyph of Stormstrike
			{ itemID = 45770, spellID = 64287 }, --Glyph of Thunder
			{ itemID = 45776, spellID = 64262 }, --Glyph of Totem of WRATH
			{ itemID = 41541, spellID = 57251 }, --Glyph of Water Mastery
			{ itemID = 41542, spellID = 57252 }, --Glyph of Windfury Weapon
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],
		{
			{ itemID = 43381, spellID = 58329 }, --Glyph of Astral Recall
			{ itemID = 43725, spellID = 59326 }, --Glyph of Ghost Wolf
			{ itemID = 43385, spellID = 58330 }, --Glyph of Renewed Life
			{ itemID = 44923, spellID = 57253 }, --Glyph of Thunderstorm
			{ itemID = 43344, spellID = 58331 }, --Glyph of Water Breathing
			{ itemID = 43386, spellID = 58332 }, --Glyph of Water Shield
			{ itemID = 43388, spellID = 58333 }, --Glyph of Water Walking
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ itemID = 45781, spellID = 64294 }, --Glyph of Chaos Bolt
			{ itemID = 42454, spellID = 57258 }, --Glyph of Conflagrate
			{ itemID = 42455, spellID = 57259 }, --Glyph of Corruption
			{ itemID = 42456, spellID = 57260 }, --Glyph of Curse of Agony
			{ itemID = 42457, spellID = 57261 }, --Glyph of Death Coil
			{ itemID = 45782, spellID = 64317 }, --Glyph of Demonic Circle
			{ itemID = 42458, spellID = 57262 }, --Glyph of Fear
			{ itemID = 42459, spellID = 57263 }, --Glyph of Felguard
			{ itemID = 42460, spellID = 57264 }, --Glyph of Felhunter
			{ itemID = 45779, spellID = 64291 }, --Glyph of Haunt
			{ itemID = 42461, spellID = 57265 }, --Glyph of Health Funnel
			{ itemID = 42462, spellID = 57266 }, --Glyph of Healthstone
			{ itemID = 42463, spellID = 57267 }, --Glyph of Howl of Terror
			{ itemID = 42464, spellID = 57268 }, --Glyph of Immolate
			{ itemID = 42465, spellID = 57269 }, --Glyph of Imp
		},
		{
			{ itemID = 42453, spellID = 57257 }, --Glyph of Incinerate
			{ itemID = 45785, spellID = 64248 }, --Glyph of Life Tap
			{ itemID = 45780, spellID = 64318 }, --Glyph of Metamorphosis
			{ itemID = 50077, spellID = 71102 }, --Glyph of Quick Decay
			{ itemID = 42466, spellID = 57270 }, --Glyph of Searing Pain
			{ itemID = 42467, spellID = 57271 }, --Glyph of Shadow Bolt
			{ itemID = 42468, spellID = 57272 }, --Glyph of Shadowburn
			{ itemID = 45783, spellID = 64311 }, --Glyph of Shadowflame
			{ itemID = 42469, spellID = 57273 }, --Glyph of Siphon Life
			{ itemID = 45789, spellID = 64250 }, --Glyph of Soul Link
			{ itemID = 42470, spellID = 57274 }, --Glyph of Soulstone
			{ itemID = 42471, spellID = 57275 }, --Glyph of Succubus
			{ itemID = 42472, spellID = 57276 }, --Glyph of Unstable Affliction
			{ itemID = 42473, spellID = 57277 }, --Glyph of Voidwalker
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ itemID = 43392, spellID = 58338 }, --Glyph of Curse of Exhaustion
			{ itemID = 43390, spellID = 58337 }, --Glyph of Drain Soul
			{ itemID = 43393, spellID = 58339 }, --Glyph of Enslave Demon
			{ itemID = 43391, spellID = 58340 }, --Glyph of Kilrogg
			{ itemID = 43394, spellID = 58341 }, --Glyph of Souls
			{ itemID = 43389, spellID = 58336 }, --Glyph of Unending Breath
		},
	},
	{
		Name = "Major Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
		{
			{ itemID = 43420, spellID = 57151 }, --Glyph of Barbaric Insults
			{ itemID = 45790, spellID = 64295 }, --Glyph of Bladestorm
			{ itemID = 43425, spellID = 57152 }, --Glyph of Blocking
			{ itemID = 43412, spellID = 57153 }, --Glyph of Bloodthirst
			{ itemID = 43414, spellID = 57154 }, --Glyph of Cleaving
			{ itemID = 43415, spellID = 57155 }, --Glyph of Devastate
			{ itemID = 45794, spellID = 64312 }, --Glyph of Enraged Regeneration
			{ itemID = 43416, spellID = 57156 }, --Glyph of Execution
			{ itemID = 43417, spellID = 57157 }, --Glyph of Hamstring
			{ itemID = 43418, spellID = 57158 }, --Glyph of Heroic Strike
			{ itemID = 43419, spellID = 57159 }, --Glyph of Intervene
			{ itemID = 43426, spellID = 57166 }, --Glyph of Last Stand
			{ itemID = 43421, spellID = 57160 }, --Glyph of Mortal Strike
			{ itemID = 43422, spellID = 57161 }, --Glyph of Overpower
			{ itemID = 43413, spellID = 57162 }, --Glyph of Rapid Charge
		},
		{
			{ itemID = 43423, spellID = 57163 }, --Glyph of Rending
			{ itemID = 43430, spellID = 57164 }, --Glyph of Resonating Power
			{ itemID = 43424, spellID = 57165 }, --Glyph of Revenge
			{ itemID = 45797, spellID = 64252 }, --Glyph of Shield Wall
			{ itemID = 45792, spellID = 64296 }, --Glyph of Shockwave
			{ itemID = 45795, spellID = 64302 }, --Glyph of Spell Reflection
			{ itemID = 43427, spellID = 57167 }, --Glyph of Sunder Armor
			{ itemID = 43428, spellID = 57168 }, --Glyph of Sweeping Strikes
			{ itemID = 43429, spellID = 57169 }, --Glyph of Taunt
			{ itemID = 43431, spellID = 57170 }, --Glyph of Victory Rush
			{ itemID = 45793, spellID = 64255 }, --Glyph of Vigilance
			{ itemID = 43432, spellID = 57172 }, --Glyph of Whirlwind
		},
	},
	{
		Name = "Minor Glyph" .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
		{
			{ itemID = 43395, spellID = 58342 }, --Glyph of Battle
			{ itemID = 43396, spellID = 58343 }, --Glyph of Bloodrage
			{ itemID = 43397, spellID = 58344 }, --Glyph of Charge
			{ itemID = 49084, spellID = 68166 }, --Glyph of Command
			{ itemID = 43400, spellID = 58347 }, --Glyph of Enduring Victory
			{ itemID = 43398, spellID = 58345 }, --Glyph of Mocking Blow
			{ itemID = 43399, spellID = 58346 }, --Glyph of Thunder Clap
		},
	},
}

---------------------
--- Jewelcrafting ---
---------------------


AtlasLoot_Data["JewelcraftingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = JEWELCRAFTING,
	Type = "WrathCrafting",
	{
		Name = "AtlasLoot.Colors.RED Gems",
		{
			{ itemID = 40111, spellID = 66447 }, --Bold Cardinal Ruby
			{ itemID = 40114, spellID = 66449 }, --Bright Cardinal Ruby
			{ itemID = 40112, spellID = 66448 }, --Delicate Cardinal Ruby
			{ itemID = 40116, spellID = 66453 }, --Flashing Cardinal Ruby
			{ itemID = 40117, spellID = 66451 }, --Fractured Cardinal Ruby
			{ itemID = 40118, spellID = 66450 }, --Precise Cardinal Ruby
			{ itemID = 40113, spellID = 66446 }, --Runed Cardinal Ruby
			{ itemID = 40115, spellID = 66452 }, --Subtle Cardinal Ruby
			{ itemID = 39996, spellID = 53830 }, --Bold Scarlet Ruby
			{ itemID = 39999, spellID = 53947 }, --Bright Scarlet Ruby
			{ itemID = 39997, spellID = 53945 }, --Delicate Scarlet Ruby
			{ itemID = 40001, spellID = 53949 }, --Flashing Scarlet Ruby
			{ itemID = 40002, spellID = 53950 }, --Fractured Scarlet Ruby
			{ itemID = 40003, spellID = 53951 }, --Precise Scarlet Ruby
			{ itemID = 39998, spellID = 53946 }, --Runed Scarlet Ruby
		},
		{
			{ itemID = 39907, spellID = 53843 }, --Subtle Bloodstone
			{ itemID = 39900, spellID = 53831 }, --Bold Bloodstone
			{ itemID = 39906, spellID = 53835 }, --Bright Bloodstone
			{ itemID = 39905, spellID = 53832 }, --Delicate Bloodstone
			{ itemID = 39908, spellID = 53844 }, --Flashing Bloodstone
			{ itemID = 39909, spellID = 53845 }, --Fractured Bloodstone
			{ itemID = 39910, spellID = 54017 }, --Precise Bloodstone
			{ itemID = 39911, spellID = 53834 }, --Runed Bloodstone
		},
	},
	{
		Name = "AtlasLoot.Colors.BLUE Gems",
		{
			{ itemID = 40121, spellID = 66500 }, --Lustrous Majestic Zircon
			{ itemID = 40119, spellID = 66497 }, --Solid Majestic Zircon
			{ itemID = 40120, spellID = 66498 }, --Sparkling Majestic Zircon
			{ itemID = 40122, spellID = 66499 }, --Stormy Majestic Zircon
			{ itemID = 40010, spellID = 53954 }, --Lustrous Sky Sapphire
			{ itemID = 40008, spellID = 53952 }, --Solid Sky Sapphire
			{ itemID = 40009, spellID = 53953 }, --Sparkling Sky Sapphire
			{ itemID = 40011, spellID = 53955 }, --Stormy Sky Sapphire
			{ itemID = 39927, spellID = 53941 }, --Lustrous Chalcedony
			{ itemID = 39919, spellID = 53934 }, --Solid Chalcedony
			{ itemID = 39920, spellID = 53940 }, --Sparkling Chalcedony
			{ itemID = 39932, spellID = 53943 }, --Stormy Chalcedony
		},
	},
	{
		Name = "Yellow Gems",
		{
			{ itemID = 40123, spellID = 66503 }, --Brilliant King's Amber
			{ itemID = 40127, spellID = 66505 }, --Mystic King's Amber
			{ itemID = 40128, spellID = 66506 }, --Quick King's Amber
			{ itemID = 40125, spellID = 66501 }, --Rigid King's Amber
			{ itemID = 40124, spellID = 66502 }, --Smooth King's Amber
			{ itemID = 40126, spellID = 66504 }, --Thick King's Amber
			{ itemID = 40012, spellID = 53956 }, --Brilliant Autumn's Glow
			{ itemID = 40016, spellID = 53960 }, --Mystic Autumn's Glow
			{ itemID = 40017, spellID = 53961 }, --Quick Autumn's Glow
			{ itemID = 40014, spellID = 53958 }, --Rigid Autumn's Glow
			{ itemID = 40013, spellID = 53957 }, --Smooth Autumn's Glow
			{ itemID = 40015, spellID = 53959 }, --Thick Autumn's Glow
		},
		{
			{ itemID = 39912, spellID = 53852 }, --Brilliant Sun Crystal
			{ itemID = 39917, spellID = 53857 }, --Mystic Sun Crystal
			{ itemID = 39918, spellID = 53856 }, --Quick Sun Crystal
			{ itemID = 39915, spellID = 53854 }, --Rigid Sun Crystal
			{ itemID = 39914, spellID = 53853 }, --Smooth Sun Crystal
			{ itemID = 39916, spellID = 53855 }, --Thick Sun Crystal
		},
	},
	{
		Name = "AtlasLoot.Colors.GREEN Gems",
		{
			{ itemID = 40175, spellID = 66430 }, --Dazzling Eye of Zul
			{ itemID = 40167, spellID = 66338 }, --Enduring Eye of Zul
			{ itemID = 40179, spellID = 66442 }, --Energized Eye of Zul
			{ itemID = 40169, spellID = 66434 }, --Forceful Eye of Zul
			{ itemID = 40174, spellID = 66440 }, --Intricate Eye of Zul
			{ itemID = 40165, spellID = 66431 }, --Jagged Eye of Zul
			{ itemID = 40177, spellID = 66439 }, --Lambent Eye of Zul
			{ itemID = 40171, spellID = 66435 }, --Misty Eye of Zul
			{ itemID = 40178, spellID = 66444 }, --Opaque Eye of Zul
			{ itemID = 40180, spellID = 66441 }, --Radiant Eye of Zul
			{ itemID = 40170, spellID = 66433 }, --Seer's Eye of Zul
			{ itemID = 40182, spellID = 66443 }, --Shattered Eye of Zul
			{ itemID = 40172, spellID = 66437 }, --Shining Eye of Zul
			{ itemID = 40168, spellID = 66428 }, --Steady Eye of Zul
			{ itemID = 40176, spellID = 66436 }, --Sundered Eye of Zul
		},
		{
			{ itemID = 40181, spellID = 66438 }, --Tense Eye of Zul
			{ itemID = 40164, spellID = 66432 }, --Timeless Eye of Zul
			{ itemID = 40173, spellID = 66445 }, --Turbid Eye of Zul
			{ itemID = 40166, spellID = 66429 }, --Vivid Eye of Zul
			{ itemID = 40094, spellID = 54007 }, --Dazzling Forest Emerald
			{ itemID = 40089, spellID = 53998 }, --Enduring Forest Emerald
			{ itemID = 40105, spellID = 54011 }, --Energized Forest Emerald
			{ itemID = 40091, spellID = 54001 }, --Forceful Forest Emerald
			{ itemID = 40104, spellID = 54006 }, --Intricate Forest Emerald
			{ itemID = 40086, spellID = 53996 }, --Jagged Forest Emerald
			{ itemID = 40100, spellID = 54009 }, --Lambent Forest Emerald
			{ itemID = 40095, spellID = 54003 }, --Misty Forest Emerald
			{ itemID = 40103, spellID = 54010 }, --Opaque Forest Emerald
			{ itemID = 40098, spellID = 54012 }, --Radiant Forest Emerald
			{ itemID = 40092, spellID = 54002 }, --Seer's Forest Emerald
		},
	},
	{
		Name = "AtlasLoot.Colors.GREEN Gems",
		{
			{ itemID = 40106, spellID = 54014 }, --Shattered Forest Emerald
			{ itemID = 40099, spellID = 54004 }, --Shining Forest Emerald
			{ itemID = 40090, spellID = 54000 }, --Steady Forest Emerald
			{ itemID = 40096, spellID = 54008 }, --Sundered Forest Emerald
			{ itemID = 40101, spellID = 54013 }, --Tense Forest Emerald
			{ itemID = 40085, spellID = 53995 }, --Timeless Forest Emerald
			{ itemID = 40102, spellID = 54005 }, --Turbid Forest Emerald
			{ itemID = 40088, spellID = 53997 }, --Vivid Forest Emerald
			{ itemID = 39984, spellID = 53926 }, --Dazzling Dark Jade
			{ itemID = 39976, spellID = 53918 }, --Enduring Dark Jade
			{ itemID = 39989, spellID = 53930 }, --Energized Dark Jade
			{ itemID = 39978, spellID = 53920 }, --Forceful Dark Jade
			{ itemID = 39983, spellID = 53925 }, --Intricate Dark Jade
			{ itemID = 39974, spellID = 53916 }, --Jagged Dark Jade
			{ itemID = 39986, spellID = 53928 }, --Lambent Dark Jade
		},
		{
			{ itemID = 39980, spellID = 53922 }, --Misty Dark Jade
			{ itemID = 39988, spellID = 53929 }, --Opaque Dark Jade
			{ itemID = 39990, spellID = 53931 }, --Radiant Dark Jade
			{ itemID = 39979, spellID = 53921 }, --Seer's Dark Jade
			{ itemID = 39992, spellID = 53933 }, --Shattered Dark Jade
			{ itemID = 39981, spellID = 53923 }, --Shining Dark Jade
			{ itemID = 39977, spellID = 53919 }, --Steady Dark Jade
			{ itemID = 39985, spellID = 53927 }, --Sundered Dark Jade
			{ itemID = 39991, spellID = 53932 }, --Tense Dark Jade
			{ itemID = 39968, spellID = 53894 }, --Timeless Dark Jade
			{ itemID = 39982, spellID = 53924 }, --Turbid Dark Jade
			{ itemID = 39975, spellID = 53917 }, --Vivid Dark Jade
		},
	},
	{
		Name = "AtlasLoot.Colors.ORANGE Gems",
		{
			{ itemID = 40162, spellID = 66576 }, --Accurate Ametrine
			{ itemID = 40144, spellID = 66579 }, --Champion's Ametrine
			{ itemID = 40147, spellID = 66568 }, --Deadly Ametrine
			{ itemID = 40150, spellID = 66584 }, --Deft Ametrine
			{ itemID = 40154, spellID = 66571 }, --Durable Ametrine
			{ itemID = 40158, spellID = 66580 }, --Empowered Ametrine
			{ itemID = 40143, spellID = 66572 }, --Etched Ametrine
			{ itemID = 40146, spellID = 66583 }, --Fierce Ametrine
			{ itemID = 40161, spellID = 66578 }, --Glimmering Ametrine
			{ itemID = 40148, spellID = 66575 }, --Glinting Ametrine
			{ itemID = 40142, spellID = 66567 }, --Inscribed Ametrine
			{ itemID = 40149, spellID = 66585 }, --Lucent Ametrine
			{ itemID = 40151, spellID = 66566 }, --Luminous Ametrine
			{ itemID = 40152, spellID = 66569 }, --Potent Ametrine
			{ itemID = 40157, spellID = 66573 }, --Pristine Ametrine
		},
		{
			{ itemID = 40155, spellID = 66574 }, --Reckless Ametrine
			{ itemID = 40163, spellID = 66586 }, --Resolute Ametrine
			{ itemID = 40145, spellID = 66582 }, --Resplendent Ametrine
			{ itemID = 40160, spellID = 66581 }, --Stalwart Ametrine
			{ itemID = 40159, spellID = 66587 }, --Stark Ametrine
			{ itemID = 40153, spellID = 66570 }, --Veiled Ametrine
			{ itemID = 40156, spellID = 66577 }, --Wicked Ametrine
		},
	},
	{
		Name = "AtlasLoot.Colors.ORANGE Gems",
		{
			{ itemID = 40058, spellID = 53994 }, --Accurate Monarch Topaz
			{ itemID = 40039, spellID = 53977 }, --Champion's Monarch Topaz
			{ itemID = 40043, spellID = 53979 }, --Deadly Monarch Topaz
			{ itemID = 40046, spellID = 53982 }, --Deft Monarch Topaz
			{ itemID = 40050, spellID = 53986 }, --Durable Monarch Topaz
			{ itemID = 40054, spellID = 53990 }, --Empowered Monarch Topaz
			{ itemID = 40038, spellID = 53976 }, --Etched Monarch Topaz
			{ itemID = 40041, spellID = 54019 }, --Fierce Monarch Topaz
			{ itemID = 40057, spellID = 53993 }, --Glimmering Monarch Topaz
			{ itemID = 40044, spellID = 53980 }, --Glinting Monarch Topaz
			{ itemID = 40037, spellID = 53975 }, --Inscribed Monarch Topaz
			{ itemID = 40045, spellID = 53981 }, --Lucent Monarch Topaz
			{ itemID = 40047, spellID = 53983 }, --Luminous Monarch Topaz
			{ itemID = 40048, spellID = 53984 }, --Potent Monarch Topaz
			{ itemID = 40053, spellID = 53989 }, --Pristine Monarch Topaz
		},
		{
			{ itemID = 40051, spellID = 53987 }, --Reckless Monarch Topaz
			{ itemID = 40059, spellID = 54023 }, --Resolute Monarch Topaz
			{ itemID = 40040, spellID = 53978 }, --Resplendent Monarch Topaz
			{ itemID = 40056, spellID = 53992 }, --Stalwart Monarch Topaz
			{ itemID = 40055, spellID = 53991 }, --Stark Monarch Topaz
			{ itemID = 40049, spellID = 53985 }, --Veiled Monarch Topaz
			{ itemID = 40052, spellID = 53988 }, --Wicked Monarch Topaz
		},
	},
	{
		Name = "AtlasLoot.Colors.ORANGE Gems",
		{
			{ itemID = 39965, spellID = 53891 }, --Glimmering Huge Citrine
			{ itemID = 39966, spellID = 53892 }, --Accurate Huge Citrine
			{ itemID = 39949, spellID = 53874 }, --Champion's Huge Citrine
			{ itemID = 39952, spellID = 53877 }, --Deadly Huge Citrine
			{ itemID = 39955, spellID = 53880 }, --Deft Huge Citrine
			{ itemID = 39958, spellID = 53884 }, --Durable Huge Citrine
			{ itemID = 39962, spellID = 53888 }, --Empowered Huge Citrine
			{ itemID = 39948, spellID = 53873 }, --Etched Huge Citrine
			{ itemID = 39951, spellID = 53876 }, --Fierce Huge Citrine
			{ itemID = 39953, spellID = 53878 }, --Glinting Huge Citrine
			{ itemID = 39947, spellID = 53872 }, --Inscribed Huge Citrine
			{ itemID = 39954, spellID = 53879 }, --Lucent Huge Citrine
			{ itemID = 39946, spellID = 53881 }, --Luminous Huge Citrine
			{ itemID = 39956, spellID = 53882 }, --Potent Huge Citrine
			{ itemID = 39961, spellID = 53887 }, --Pristine Huge Citrine
		},
		{
			{ itemID = 39959, spellID = 53885 }, --Reckless Huge Citrine
			{ itemID = 39967, spellID = 53893 }, --Resolute Huge Citrine
			{ itemID = 39950, spellID = 53875 }, --Resplendent Huge Citrine
			{ itemID = 39964, spellID = 53890 }, --Stalwart Huge Citrine
			{ itemID = 39963, spellID = 53889 }, --Stark Huge Citrine
			{ itemID = 39957, spellID = 53883 }, --Veiled Huge Citrine
			{ itemID = 39960, spellID = 53886 }, --Wicked Huge Citrine
		},
	},
	{
		Name = "Purple Gems",
		{
			{ itemID = 40136, spellID = 66553 }, --Balanced Dreadstone
			{ itemID = 40139, spellID = 66560 }, --Defender's Dreadstone
			{ itemID = 40132, spellID = 66555 }, --Glowing Dreadstone
			{ itemID = 40141, spellID = 66561 }, --Guardian's Dreadstone
			{ itemID = 40137, spellID = 66564 }, --Infused Dreadstone
			{ itemID = 40135, spellID = 66562 }, --Mysterious Dreadstone
			{ itemID = 40140, spellID = 66563 }, --Puissant Dreadstone
			{ itemID = 40133, spellID = 66556 }, --Purified Dreadstone
			{ itemID = 40138, spellID = 66559 }, --Regal Dreadstone
			{ itemID = 40134, spellID = 66558 }, --Royal Dreadstone
			{ itemID = 40130, spellID = 66557 }, --Shifting Dreadstone
			{ itemID = 40129, spellID = 66554 }, --Sovereign Dreadstone
			{ itemID = 40131, spellID = 66565 }, --Tenuous Dreadstone
			{ itemID = 40029, spellID = 53969 }, --Balanced Twilight Opal
			{ itemID = 40032, spellID = 53972 }, --Defender's Twilight Opal
		},
		{
			{ itemID = 40025, spellID = 53965 }, --Glowing Twilight Opal
			{ itemID = 40034, spellID = 53974 }, --Guardian's Twilight Opal
			{ itemID = 40030, spellID = 53970 }, --Infused Twilight Opal
			{ itemID = 40028, spellID = 53968 }, --Mysterious Twilight Opal
			{ itemID = 40033, spellID = 53973 }, --Puissant Twilight Opal
			{ itemID = 40026, spellID = 53966 }, --Purified Twilight Opal
			{ itemID = 40031, spellID = 53971 }, --Regal Twilight Opal
			{ itemID = 40027, spellID = 53967 }, --Royal Twilight Opal
			{ itemID = 40023, spellID = 53963 }, --Shifting Twilight Opal
			{ itemID = 40022, spellID = 53962 }, --Sovereign Twilight Opal
			{ itemID = 40024, spellID = 53964 }, --Tenuous Twilight Opal
		},
	},
	{
		Name = "Purple Gems",
		{
			{ itemID = 39940, spellID = 53871 }, --Guardian's Shadow Crystal
			{ itemID = 39944, spellID = 53867 }, --Infused Shadow Crystal
			{ itemID = 39945, spellID = 53865 }, --Mysterious Shadow Crystal
			{ itemID = 39933, spellID = 53870 }, --Puissant Shadow Crystal
			{ itemID = 39941, spellID = 53863 }, --Purified Shadow Crystal
			{ itemID = 39943, spellID = 53864 }, --Royal Shadow Crystal
			{ itemID = 39935, spellID = 53860 }, --Shifting Shadow Crystal
			{ itemID = 39934, spellID = 53859 }, --Sovereign Shadow Crystal
			{ itemID = 39942, spellID = 53861 }, --Tenuous Shadow Crystal
			{ itemID = 39938, spellID = 53868 }, --Regal Shadow Crystal
			{ itemID = 39937, spellID = 53866 }, --Balanced Shadow Crystal
			{ itemID = 39939, spellID = 53869 }, --Defender's Shadow Crystal
			{ itemID = 39936, spellID = 53862 }, --Glowing Shadow Crystal
			{ itemID = 32833, spellID = 41420 }, --Purified Jaggal Pearl
		},
	},
	{
		Name = "Meta Gems",
		{
			{ itemID = 41285, spellID = 55389 }, --Chaotic Skyflare Diamond
			{ itemID = 41307, spellID = 55390 }, --Destructive Skyflare Diamond
			{ itemID = 41377, spellID = 55384 }, --Effulgent Skyflare Diamond
			{ itemID = 41333, spellID = 55392 }, --Ember Skyflare Diamond
			{ itemID = 41335, spellID = 55393 }, --Enigmatic Skyflare Diamond
			{ itemID = 41378, spellID = 55387 }, --Forlorn Skyflare Diamond
			{ itemID = 41379, spellID = 55388 }, --Impassive Skyflare Diamond
			{ itemID = 41339, spellID = 55394 }, --Swift Skyflare Diamond
			{ itemID = 41400, spellID = 55395 }, --Thundering Skyflare Diamond
			{ itemID = 41375, spellID = 55386 }, --Tireless Skyflare Diamond
		},
		{
			{ itemID = 41380, spellID = 55401 }, --Austere Earthsiege Diamond
			{ itemID = 41389, spellID = 55405 }, --Beaming Earthsiege Diamond
			{ itemID = 41395, spellID = 55397 }, --Bracing Earthsiege Diamond
			{ itemID = 41396, spellID = 55398 }, --Eternal Earthsiege Diamond
			{ itemID = 41401, spellID = 55396 }, --Insightful Earthsiege Diamond
			{ itemID = 41385, spellID = 55404 }, --Invigorating Earthsiege Diamond
			{ itemID = 41381, spellID = 55402 }, --Persistant Earthsiege Diamond
			{ itemID = 41397, spellID = 55399 }, --Powerful Earthsiege Diamond
			{ itemID = 41398, spellID = 55400 }, --Relentless Earthsiege Diamond
			{ itemID = 41382, spellID = 55403 }, --Trenchant Earthsiege Diamond
		},
	},
	{
		Name = "Prismatic Gems",
		{
			{ itemID = 49110, spellID = 68253 }, --Nightmare Tear
			{ itemID = 22459, spellID = 28028 }, --Void Sphere
			{ itemID = 42702, spellID = 56531 }, --Enchanted Tear
			{ itemID = 22460, spellID = 28027 }, --Prismatic Sphere
			{ itemID = 42701, spellID = 56530 }, --Enchanted Pearl
			{ itemID = 42701, spellID = 62941 }, --Prismatic Black Diamond
		},
	},
	{
		Name = "Dragon's Eyes",
		{
			{ itemID = 42142, spellID = 56049 }, --Bold Dragon's Eye
			{ itemID = 36766, spellID = 56054 }, --Bright Dragon's Eye
			{ itemID = 42148, spellID = 56074 }, --Brilliant Dragon's Eye
			{ itemID = 42143, spellID = 56052 }, --Delicate Dragon's Eye
			{ itemID = 42152, spellID = 56056 }, --Flashing Dragon's Eye
			{ itemID = 42153, spellID = 56076 }, --Fractured Dragon's Eye
			{ itemID = 42146, spellID = 56077 }, --Lustrous Dragon's Eye
			{ itemID = 42158, spellID = 56079 }, --Mystic Dragon's Eye
			{ itemID = 42154, spellID = 56081 }, --Precise Dragon's Eye
			{ itemID = 42150, spellID = 56083 }, --Quick Dragon's Eye
			{ itemID = 42156, spellID = 56084 }, --Rigid Dragon's Eye
			{ itemID = 42144, spellID = 56053 }, --Runed Dragon's Eye
			{ itemID = 42149, spellID = 56085 }, --Smooth Dragon's Eye
			{ itemID = 36767, spellID = 56086 }, --Solid Dragon's Eye
			{ itemID = 42145, spellID = 56087 }, --Sparkling Dragon's Eye
		},
		{
			{ itemID = 42155, spellID = 56088 }, --Stormy Dragon's Eye
			{ itemID = 42151, spellID = 56055 }, --Subtle Dragon's Eye
			{ itemID = 42157, spellID = 56089 }, --Thick Dragon's Eye
			{ itemID = 42225 }, --Dragon's Eye
		},
	},
	{
		Name = "Trinkets",
		{
			{ itemID = 42418, spellID = 56203 }, --Figurine - Emerald Boar
			{ itemID = 44063, spellID = 59759 }, --Figurine - Monarch Crab
			{ itemID = 42341, spellID = 56199 }, --Figurine - Ruby Hare
			{ itemID = 42413, spellID = 56202 }, --Figurine - Sapphire Owl
			{ itemID = 42395, spellID = 56201 }, --Figurine - Twilight Serpent
		},
	},
	{
		Name = "Rings",
		{
			{ itemID = 42643, spellID = 56497 }, --Titanium Earthguard Ring
			{ itemID = 42642, spellID = 56496 }, --Titanium Impact Band
			{ itemID = 42644, spellID = 56498 }, --Titanium Spellshock Ring
			{ itemID = 43582, spellID = 58954 }, --Titanium Frostguard Ring
			{ itemID = 31398, spellID = 38503 }, --The Frozen Eye
			{ itemID = 31399, spellID = 38504 }, --The Natural Ward
			{ itemID = 34361, spellID = 46124 }, --Hard Khorium Band", "=ds=".."Skill Required:".." 365
			{ itemID = 34362, spellID = 46122 }, --Loop of Forged Power", "=ds=".."Skill Required:".." 365
			{ itemID = 34363, spellID = 46123 }, --Ring of Flowing Life", "=ds=".."Skill Required:".." 365
			{ itemID = 45808, spellID = 64727 }, --Runed Mana Band
			{ itemID = 45809, spellID = 64728 }, --Scarlet Signet
			{ itemID = 43250, spellID = 58147 }, --Ring of Earthern Might
			{ itemID = 43253, spellID = 58150 }, --Ring of Northern Tears
			{ itemID = 43251, spellID = 58148 }, --Ring of Scarlet Shadows
			{ itemID = 43498, spellID = 58507 }, --Savage Titanium Band
		},
		{
			{ itemID = 43482, spellID = 58492 }, --Savage Titanium Ring
			{ itemID = 43252, spellID = 58149 }, --Windfire Band
			{ itemID = 42340, spellID = 56197 }, --Dream Signet
			{ itemID = 43246, spellID = 58143 }, --Earthshadow Ring
			{ itemID = 43247, spellID = 58144 }, --Jade Ring of Slaying
			{ itemID = 42337, spellID = 56194 }, --Sun Rock Ring
			{ itemID = 42336, spellID = 56193 }, --Bloodstone Band
		},
	},
	{
		Name = "Necks",
		{
			{ itemID = 42646, spellID = 56500 }, --Titanium Earthguard Chain
			{ itemID = 42645, spellID = 56499 }, --Titanium Impact Choker
			{ itemID = 42647, spellID = 56501 }, --Titanium Spellshock Necklace
			{ itemID = 34360, spellID = 46126 }, --Amulet of Flowing Life", "=ds=".."Skill Required:".." 365
			{ itemID = 34358, spellID = 46127 }, --Hard Khorium Choker", "=ds=".."Skill Required:".." 365
			{ itemID = 34359, spellID = 46125 }, --Pendant of Sunfire", "=ds=".."Skill Required:".." 365
			{ itemID = 45812, spellID = 64725 }, --Emerald Choker
			{ itemID = 45813, spellID = 64726 }, --Sky Sapphire Amulet
			{ itemID = 42339, spellID = 56196 }, --Blood Sun Necklace
			{ itemID = 42338, spellID = 56195 }, --Jade Dagger Pendant
			{ itemID = 43245, spellID = 58142 }, --Crystal Chalcedony Amulet
			{ itemID = 43244, spellID = 58141 }, --Crystal Citrine Necklace
		},
	},
	{
		Name = "Miscellaneous",
		{
			{ itemID = 24123, spellID = 31078 }, --Circlet of Arcane Might", "=ds=".."Skill Required:".." 370
			{ itemID = 24122, spellID = 31077 }, --Coronet of the Verdant Flame", "=ds=".."Skill Required:".." 370
			{ itemID = 44943, spellID = 62242 }, --Icy Prism
			{ itemID = 42421, spellID = 56208 }, --Shadow Jade Focusing Lens
			{ itemID = 42420, spellID = 56206 }, --Shadow Crystal Focusing Lens
			{ itemID = 41367, spellID = 56205 }, --Dark Jade Focusing Lens
		},

	},
}

----------------------
--- Leatherworking ---
----------------------

AtlasLoot_Data["LeatherworkingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = LEATHERWORKING,
	Type = "WrathCrafting",
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Back",
		{
			{ itemID = 43565, spellID = 60640 }, --Durable Nerubhide Cape
			{ itemID = 43566, spellID = 60637 }, --Ice Striker's Cloak
		},
	},
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Chest",
		{
			{ itemID = 47600, spellID = 67142 }, --Knightbane Carapace
			{ itemID = 47599, spellID = 67086 }, --Knightbane Carapace
			{ itemID = 47602, spellID = 67084 }, --Lunar Eclipse Chestguard
			{ itemID = 47601, spellID = 67140 }, --Lunar Eclipse Chestguard
			{ itemID = 43590, spellID = 60996 }, --Polar Vest
			{ itemID = 43434, spellID = 60703 }, --Eviscerator's Chestguard
			{ itemID = 43263, spellID = 60718 }, --Overcast Chestguard
			{ itemID = 43257, spellID = 60669 }, --Wildscale Breastplate
			{ itemID = 38592, spellID = 51570 }, --Dark Arctic Chestpiece
			{ itemID = 44441, spellID = 60613 }, --Dark Iceborne Chestguard
			{ itemID = 38400, spellID = 50944 }, --Arctic Chestpiece
			{ itemID = 38408, spellID = 50938 }, --Iceborne Chestguard
		},
	},
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Feet",
		{
			{ itemID = 49894, spellID = 70555 }, --Blessed Cenarion Boots
			{ itemID = 49895, spellID = 70557 }, --Footpads of Impending Death
			{ itemID = 45565, spellID = 63201 }, --Boots of Wintry Endurance
			{ itemID = 45564, spellID = 63199 }, --Footpads of Silence
			{ itemID = 43502, spellID = 60761 }, --Earthgiving Boots
			{ itemID = 43592, spellID = 60998 }, --Polar Boots
			{ itemID = 44930, spellID = 62176 }, --Windripper Boots
			{ itemID = 43439, spellID = 60712 }, --Eviscerator's Treads
			{ itemID = 43273, spellID = 60727 }, --Overcast Boots
			{ itemID = 43256, spellID = 60666 }, --Jormscale Footpads
			{ itemID = 38590, spellID = 51568 }, --Black Chitinguard Boots
			{ itemID = 44442, spellID = 60620 }, --Bugsquashers
			{ itemID = 38404, spellID = 50948 }, --Arctic Boots
			{ itemID = 38407, spellID = 50942 }, --Iceborne Boots
		},
	},
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Hands",
		{
			{ itemID = 43436, spellID = 60705 }, --Eviscerator's Gauntlets
			{ itemID = 43265, spellID = 60721 }, --Overcast Handwraps
			{ itemID = 43255, spellID = 60665 }, --Seafoam Gauntlets
			{ itemID = 38403, spellID = 50947 }, --Arctic Gloves
			{ itemID = 38409, spellID = 50941 }, --Iceborne Gloves
		},
	},
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Head",
		{
			{ itemID = 43260, spellID = 60697 }, --Eviscerator's Facemask
			{ itemID = 43261, spellID = 60715 }, --Overcast Headguard
			{ itemID = 38437, spellID = 51572 }, --Arctic Helm
			{ itemID = 38438, spellID = 60608 }, --Iceborne Helm
		},
	},
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Legs",
		{
			{ itemID = 49899, spellID = 70556 }, --Bladeborn Leggings
			{ itemID = 49898, spellID = 70554 }, --Legwraps of Unleashed Nature
			{ itemID = 43495, spellID = 60760 }, --Earthgiving Legguards
			{ itemID = 44931, spellID = 62177 }, --Windripper Leggings
			{ itemID = 43438, spellID = 60711 }, --Eviscerator's Legguards
			{ itemID = 43271, spellID = 60725 }, --Overcast Leggings
			{ itemID = 42731, spellID = 60660 }, --Leggings of Visceral Strikes
			{ itemID = 38591, spellID = 51569 }, --Dark Arctic Leggings
			{ itemID = 44440, spellID = 60611 }, --Dark Iceborne Leggings
			{ itemID = 38401, spellID = 50945 }, --Arctic Leggings
			{ itemID = 38410, spellID = 50939 }, --Iceborne Leggings
		},
	},
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Shoulder",
		{
			{ itemID = 43481, spellID = 60758 }, --Trollwoven Spaulders
			{ itemID = 43433, spellID = 60702 }, --Eviscerator's Shoulderpads
			{ itemID = 43262, spellID = 60716 }, --Overcast Spaulders
			{ itemID = 43258, spellID = 60671 }, --Purehorn Spaulders
			{ itemID = 38402, spellID = 50946 }, --Arctic Shoulderpads
			{ itemID = 38411, spellID = 50940 }, --Iceborne Shoulderpads
		},
	},
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Waist",
		{
			{ itemID = 45556, spellID = 63200 }, --Belt of Arctic Life
			{ itemID = 45555, spellID = 63198 }, --Death-warmed Belt
			{ itemID = 43484, spellID = 60759 }, --Trollwoven Girdle
			{ itemID = 43591, spellID = 60997 }, --Polar Cord
			{ itemID = 43437, spellID = 60706 }, --Eviscerator's Waistguard
			{ itemID = 43266, spellID = 60723 }, --Overcast Belt
			{ itemID = 38405, spellID = 50949 }, --Arctic Belt
			{ itemID = 38406, spellID = 50943 }, --Iceborne Belt
		},
	},
	{
		Name = "Leather Armor" .. AtlasLoot.Colors.WHITE .. " - Wrist",
		{
			{ itemID = 47581, spellID = 67087 }, --Bracers of Swift Death
			{ itemID = 47582, spellID = 67139 }, --Bracers of Swift Death
			{ itemID = 47583, spellID = 67085 }, --Moonshadow Armguards
			{ itemID = 47584, spellID = 67141 }, --Moonshadow Armguards
			{ itemID = 43435, spellID = 60704 }, --Eviscerator's Bindings
			{ itemID = 38434, spellID = 60607 }, --Iceborne Wristguards
			{ itemID = 43264, spellID = 60720 }, --Overcast Bracers
			{ itemID = 38433, spellID = 51571 }, --Arctic Wristguards
		},
	},
	{
		Name = "Mail Armor" .. AtlasLoot.Colors.WHITE .. " - Chest",
		{
			{ itemID = 47596, spellID = 67138 }, --Crusader's Dragonscale Breastplate
			{ itemID = 47595, spellID = 67082 }, --Crusader's Dragonscale Breastplate
			{ itemID = 47597, spellID = 67080 }, --Ensorcelled Nerubian Breastplate
			{ itemID = 47598, spellID = 67136 }, --Ensorcelled Nerubian Breastplate
			{ itemID = 43461, spellID = 60756 }, --Revenant's Breastplate
			{ itemID = 43593, spellID = 60999 }, --Icy Scale Chestguard
			{ itemID = 43445, spellID = 60730 }, --Swiftarrow Hauberk
			{ itemID = 43453, spellID = 60747 }, --Stormhide Hauberk
			{ itemID = 43129, spellID = 60649 }, --Razorstrike Breastplate
			{ itemID = 44437, spellID = 60604 }, --Dark Frostscale Breastplate
			{ itemID = 44444, spellID = 60629 }, --Dark Nerubian Chestpiece
			{ itemID = 38414, spellID = 50950 }, --Frostscale Chestguard
			{ itemID = 38420, spellID = 50956 }, --Nerubian Chestguard
		},
	},
	{
		Name = "Mail Armor" .. AtlasLoot.Colors.WHITE .. " - Feet",
		{
			{ itemID = 49896, spellID = 70559 }, --Earthsoul Boots
			{ itemID = 49897, spellID = 70561 }, --Rock-Steady Treads
			{ itemID = 45562, spellID = 63195 }, --Boots of Living Scale
			{ itemID = 45563, spellID = 63197 }, --Lightning Grounded Boots
			{ itemID = 43595, spellID = 61002 }, --Icy Scale Boots
			{ itemID = 43443, spellID = 60737 }, --Swiftarrow Boots
			{ itemID = 43451, spellID = 60752 }, --Stormhide Stompers
			{ itemID = 43469, spellID = 60757 }, --Revenant's Treads
			{ itemID = 44438, spellID = 60605 }, --Dragonstompers
			{ itemID = 44445, spellID = 60630 }, --Scaled Icewalkers
			{ itemID = 38413, spellID = 50954 }, --Frostscale Boots
			{ itemID = 38419, spellID = 50960 }, --Nerubian Boots
		},
	},
	{
		Name = "Mail Armor" .. AtlasLoot.Colors.WHITE .. " - Hands",
		{
			{ itemID = 43446, spellID = 60732 }, --Swiftarrow Gauntlets
			{ itemID = 43454, spellID = 60749 }, --Stormhide Grips
			{ itemID = 38415, spellID = 50953 }, --Frostscale Gloves
			{ itemID = 38421, spellID = 50959 }, --Nerubian Gloves
		},

	},
	{
		Name = "Mail Armor" .. AtlasLoot.Colors.WHITE .. " - Head",
		{
			{ itemID = 43447, spellID = 60728 }, --Swiftarrow Helm
			{ itemID = 43455, spellID = 60743 }, --Stormhide Crown
			{ itemID = 43132, spellID = 60655 }, --Nightshock Hood
			{ itemID = 38440, spellID = 60600 }, --Frostscale Helm
			{ itemID = 38439, spellID = 60624 }, --Nerubian Helm
		},
	},
	{
		Name = "Mail Armor" .. AtlasLoot.Colors.WHITE .. " - Legs",
		{
			{ itemID = 49901, spellID = 70560 }, --Draconic Bonesplinter Legguards
			{ itemID = 49900, spellID = 70558 }, --Lightning-Infused Leggings
			{ itemID = 43458, spellID = 60754 }, --Giantmaim Legguards
			{ itemID = 43448, spellID = 60735 }, --Swiftarrow Leggings
			{ itemID = 43456, spellID = 60751 }, --Stormhide Legguards
			{ itemID = 44436, spellID = 60601 }, --Dark Frostscale Leggings
			{ itemID = 44443, spellID = 60627 }, --Dark Nerubian Leggings
			{ itemID = 38416, spellID = 50951 }, --Frostscale Leggings
			{ itemID = 38422, spellID = 50957 }, --Nerubian Legguards
		},
	},
	{
		Name = "Mail Armor" .. AtlasLoot.Colors.WHITE .. " - Shoulder",
		{
			{ itemID = 43449, spellID = 60729 }, --Swiftarrow Shoulderguards
			{ itemID = 43457, spellID = 60746 }, --Stormhide Shoulders
			{ itemID = 43130, spellID = 60651 }, --Virulent Spaulders
			{ itemID = 38424, spellID = 50952 }, --Frostscale Shoulders
			{ itemID = 38417, spellID = 50958 }, --Nerubian Shoulders
		},
	},
	{
		Name = "Mail Armor" .. AtlasLoot.Colors.WHITE .. " - Waist",
		{
			{ itemID = 45553, spellID = 63194 }, --Belt of Dragons
			{ itemID = 45554, spellID = 63196 }, --Blue Belt of Chaos
			{ itemID = 43594, spellID = 61000 }, --Icy Scale Belt
			{ itemID = 43442, spellID = 60734 }, --Swiftarrow Belt
			{ itemID = 43450, spellID = 60750 }, --Stormhide Belt
			{ itemID = 43133, spellID = 60658 }, --Nightshock Girdle
			{ itemID = 38412, spellID = 50955 }, --Frostscale Belt
			{ itemID = 38418, spellID = 50961 }, --Nerubian Belt
		},
	},
	{
		Name = "Mail Armor" .. AtlasLoot.Colors.WHITE .. " - Wrist",
		{
			{ itemID = 47580, spellID = 67137 }, --Black Chitin Bracers
			{ itemID = 47579, spellID = 67081 }, --Black Chitin Bracers
			{ itemID = 47576, spellID = 67083 }, --Crusader's Dragonscale Bracers
			{ itemID = 47577, spellID = 67143 }, --Crusader's Dragonscale Bracers
			{ itemID = 43459, spellID = 60755 }, --Giantmaim Bracers
			{ itemID = 43444, spellID = 60731 }, --Swiftarrow Bracers
			{ itemID = 43452, spellID = 60748 }, --Stormhide Wristguards
			{ itemID = 43131, spellID = 60652 }, --Eaglebane Bracers
			{ itemID = 38436, spellID = 60599 }, --Frostscale Bracers
			{ itemID = 38435, spellID = 60622 }, --Nerubian Bracers
		},
	},
	{
		Name = "Item Enhancements",
		{
			{ itemID = 44963, spellID = 62448 }, --Earthen Leg Armor
			{ itemID = 38373, spellID = 50965 }, --Frosthide Leg Armor
			{ itemID = 38374, spellID = 50967 }, --Icescale Leg Armor
			{ itemID = 29536, spellID = 35557 }, --Nethercleft Leg Armor", "=ds=".."Skill Required:".." 365
			{ itemID = 29535, spellID = 35554 }, --Nethercobra Leg Armor", "=ds=".."Skill Required:".." 365
			{ itemID = 38371, spellID = 50964 }, --Jormungar Leg Armor
			{ itemID = 38372, spellID = 50966 }, --Nerubian Leg Armor
			{ itemID = 29534, spellID = 35555 }, --Clefthide Leg Armor
			{ itemID = 29533, spellID = 35549 }, --Cobrahide Leg Armor
			{ itemID = 18251, spellID = 22727 }, --Core Armor Kit", "=ds=".."Skill Required:".." 300
			{ itemID = 38376, spellID = 50963 }, --Heavy Borean Armor Kit
		},
		{
			{ spellID = 57683, icon = "Trade_LeatherWorking" }, --Fur Lining - Attack Power
			{ spellID = 57701, icon = "Trade_LeatherWorking" }, --Fur Lining - Arcane Resist
			{ spellID = 57692, icon = "Trade_LeatherWorking" }, --Fur Lining - Fire Resist
			{ spellID = 57694, icon = "Trade_LeatherWorking" }, --Fur Lining - Frost Resist
			{ spellID = 57699, icon = "Trade_LeatherWorking" }, --Fur Lining - Nature Resist
			{ spellID = 57696, icon = "Trade_LeatherWorking" }, --Fur Lining - Shadow Resist
			{ spellID = 57691, icon = "Trade_LeatherWorking" }, --Fur Lining - Spell Power
			{ spellID = 57690, icon = "Trade_LeatherWorking" }, --Fur Lining - Stamina
			{ spellID = 60583, icon = "Trade_LeatherWorking" }, --Jormungar Leg Reinforcements
			{ spellID = 60584, icon = "Trade_LeatherWorking" }, --Nerubian Leg Reinforcements
		},
	},
	{
		Name = "Quivers and Ammo Pouches",
		{
			{ itemID = 44447, spellID = 60645 }, --Dragonscale Ammo Pouch
			{ itemID = 44448, spellID = 60647 }, --Nerubian Reinforced Quiver
		},
	},
	{
		Name = "Drums, Bags and Misc.",
		{
			{ itemID = 44446, spellID = 60643 }, --Pack of Endless Pockets
			{ itemID = 38399, spellID = 50970 }, --Trapper's Traveling Pack
			{ itemID = 38347, spellID = 50971 }, --Mammoth Mining Bag
			{ itemID = 49633, spellID = 69386 }, --Drums of Forgotten Kings
			{ itemID = 49634, spellID = 69388 }, --Drums of the Wild
		},

	},
	{
		Name = "Leather",
		{
			{ itemID = 38425, spellID = 50936 }, --Heavy Borean Leather
			{ itemID = 33568, spellID = 64661 }, --Borean Leather
		},
	},
}

AtlasLoot_Data["MiningWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = MINING,
	Type = "WrathCrafting",
	{
		Name = MINING,
		{
			{ itemID = 37663, spellID = 55208 }, --Smelt Titansteel
			{ itemID = 41163, spellID = 55211 }, --Smelt Titanium
			{ itemID = 36913, spellID = 49258 }, --Smelt Saronite
			{ itemID = 36916, spellID = 49252 }, --Smelt Cobalt
		},
	},
}

AtlasLoot_Data["FirstAidWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = FIRSTAID,
	Type = "WrathCrafting",
	{
		Name = FIRSTAID,
		{
			{ itemID = 34722, spellID = 45546 }, --Heavy Frostweave Bandage
			{ itemID = 34721, spellID = 45545 }, --Frostweave Bandage
		},
	},
}

-----------------
--- Tailoring ---
-----------------

AtlasLoot_Data["TailoringWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath",
	Name = TAILORING,
	Type = "WrathCrafting",
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Back",
		{
			{ itemID = 41610, spellID = 56017 }, --Deathchill Cloak
			{ itemID = 41609, spellID = 56016 }, --Wispcloak
			{ itemID = 45810, spellID = 64730 }, --Cloak of Crimson Snow
			{ itemID = 45811, spellID = 64729 }, --Frostguard Drape
			{ itemID = 41608, spellID = 56015 }, --Cloak of Frozen Spirits
			{ itemID = 41607, spellID = 56014 }, --Cloak of the Moon
		},
	},
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Chest",
		{
			{ itemID = 47603, spellID = 67066 }, --Merlin's Robe
			{ itemID = 47604, spellID = 67146 }, --Merlin's Robe
			{ itemID = 47605, spellID = 67064 }, --Royal Moonshroud Robe
			{ itemID = 47606, spellID = 67144 }, --Royal Moonshroud Robe
			{ itemID = 42101, spellID = 56026 }, --Ebonweave Robe
			{ itemID = 42100, spellID = 56024 }, --Moonshroud Robe
			{ itemID = 42102, spellID = 56028 }, --Spellweave Robe
			{ itemID = 43583, spellID = 60993 }, --Glacial Robe
			{ itemID = 43972, spellID = 59587 }, --Frostsavage Robe
			{ itemID = 41554, spellID = 55941 }, --Black Duskweave Robe
			{ itemID = 41525, spellID = 55911 }, --Mystic Frostwoven Robe
			{ itemID = 41549, spellID = 55921 }, --Duskweave Robe
			{ itemID = 41515, spellID = 55903 }, --Frostwoven Robe
		},
	},
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Feet",
		{
			{ itemID = 49890, spellID = 70551 }, --Deathfrost Boots
			{ itemID = 49893, spellID = 70553 }, --Sandals of Consecration
			{ itemID = 45567, spellID = 63206 }, --Savior's Slippers
			{ itemID = 45566, spellID = 63204 }, --Spellslinger's Slippers
			{ itemID = 43585, spellID = 60994 }, --Glacial Slippers
			{ itemID = 42096, spellID = 56023 }, --Aurora Slippers
			{ itemID = 43970, spellID = 59585 }, --Frostsavage Boots
			{ itemID = 41544, spellID = 55924 }, --Duskweave Boots
			{ itemID = 41520, spellID = 55906 }, --Frostwoven Boots
			{ itemID = 41985, spellID = 56019 }, --Silky Iceshard Boots
		},

	},
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Hands",
		{
			{ itemID = 42111, spellID = 56027 }, --Ebonweave Gloves
			{ itemID = 42103, spellID = 56025 }, --Moonshroud Gloves
			{ itemID = 42113, spellID = 56029 }, --Spellweave Gloves
			{ itemID = 41516, spellID = 59586 }, --Frostsavage Gloves
			{ itemID = 42095, spellID = 56022 }, --Light Blessed Mittens
			{ itemID = 41545, spellID = 55922 }, --Duskweave Gloves
			{ itemID = 44211, spellID = 55904 }, --Frostwoven Gloves
		},
	},
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Head",
		{
			{ itemID = 41984, spellID = 56018 }, --Hat of Wintry Doom
			{ itemID = 43971, spellID = 59589 }, --Frostsavage Cowl
			{ itemID = 41546, spellID = 55919 }, --Duskweave Cowl
			{ itemID = 41521, spellID = 55907 }, --Frostwoven Cowl
		},
	},
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Legs",
		{
			{ itemID = 49891, spellID = 70550 }, --Leggings of Woven Death
			{ itemID = 49892, spellID = 70552 }, --Lightweave Leggings
			{ itemID = 42093, spellID = 56021 }, --Frostmoon Pants
			{ itemID = 43975, spellID = 59588 }, --Frostsavage Leggings
			{ itemID = 41553, spellID = 55925 }, --Black Duskweave Leggings
			{ itemID = 41548, spellID = 55901 }, --Duskweave Leggings
			{ itemID = 41519, spellID = 56030 }, --Frostwoven Leggings
		},
	},
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Shoulder",
		{
			{ itemID = 43973, spellID = 59584 }, --Frostsavage Shoulders
			{ itemID = 41523, spellID = 55910 }, --Mystic Frostwoven Shoulders
			{ itemID = 41550, spellID = 55923 }, --Duskweave Shoulders
			{ itemID = 41513, spellID = 55902 }, --Frostwoven Shoulders
		},
	},
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Waist",
		{
			{ itemID = 45558, spellID = 63205 }, --Cord of the AtlasLoot.Colors.WHITE Dawn
			{ itemID = 45557, spellID = 63203 }, --Sash of Ancient Power
			{ itemID = 43584, spellID = 60990 }, --Glacial Waistband
			{ itemID = 41986, spellID = 56020 }, --Deep Frozen Cord
			{ itemID = 43969, spellID = 59582 }, --Frostsavage Belt
			{ itemID = 41543, spellID = 55914 }, --Duskweave Belt
			{ itemID = 41522, spellID = 55908 }, --Frostwoven Belt
		},
	},
	{
		Name = "Cloth Armor" .. AtlasLoot.Colors.WHITE .. " - Wrist",
		{
			{ itemID = 47586, spellID = 67145 }, --Bejeweled Wizard's Bracers
			{ itemID = 47585, spellID = 67079 }, --Bejeweled Wizard's Bracers
			{ itemID = 47587, spellID = 67065 }, --Royal Moonshroud Bracers" ..", " .. "Trial of the Crusader"
			{ itemID = 47588, spellID = 67147 }, --Royal Moonshroud Bracers" ..", " .. "Trial of the Crusader"
			{ itemID = 41555, spellID = 55943 }, --Black Duskweave Wristwraps
			{ itemID = 43974, spellID = 59583 }, --Frostsavage Bracers
			{ itemID = 41528, spellID = 55913 }, --Mystic Frostwoven Wriststraps
			{ itemID = 41551, spellID = 55920 }, --Duskweave Wriststraps
			{ itemID = 41512, spellID = 56031 }, --Frostwoven Wriststraps
		},
	},
	{
		Name = "Bags",
		{
			{ itemID = 41600, spellID = 56005 }, --Glacial Bag
			{ itemID = 41598, spellID = 56006 }, --Mysterious Bag
			{ itemID = 41597, spellID = 56004 }, --Abyssal Bag
			{ itemID = 45773, spellID = 63924 }, --Emerald Bag
			{ itemID = 41599, spellID = 56007 }, --Frostweave Bag
		},
	},
	{
		Name = "Item Enhancements",
		{
			{ itemID = 41602, spellID = 56009 }, --Brilliant Spellthread
			{ itemID = 41604, spellID = 56011 }, --Sapphire Spellthread
			{ itemID = 41603, spellID = 56010 }, --Azure Spellthread
			{ itemID = 41601, spellID = 56008 }, --Shining Spellthread
		},
		{
			{ spellID = 56034, icon = "Spell_Nature_AstralRecalGroup" }, --Master's Spellthread
			{ spellID = 56039, icon = "Spell_Nature_AstralRecalGroup" }, --Sanctified Spellthread
			{ spellID = 55769, icon = "INV_Misc_Thread_01" }, --Darkglow Embroidery
			{ spellID = 55642, icon = "INV_Misc_Thread_01" }, --Lightweave Embroidery
			{ spellID = 55777, icon = "INV_Misc_Thread_01" }, --Swordguard Embroidery
		},
	},
	{
		Name = "Cloth/" .. "Miscellaneous",
		{
			{ itemID = 41593, spellID = 56002 }, --Ebonweave
			{ itemID = 41594, spellID = 56001 }, --Moonshroud
			{ itemID = 41595, spellID = 56003 }, --Spellweave
			{ itemID = 41511, spellID = 55900 }, --Bolt of Imbued Frostweave
			{ itemID = 41510, spellID = 55899 }, --Bolt of Frostweave
			{ itemID = 44558, spellID = 60971 }, --Magnificent Flying Carpet
			{ itemID = 54797, spellID = 75597 }, --Frosty Flying Carpet
			{ itemID = 41509, spellID = 55898 }, --Frostweave Net
		},
	},
	{
		Name = "Shirts",
		{
			{ itemID = 41249, spellID = 55994 }, --Blue Lumberjack Shirt
			{ itemID = 41253, spellID = 55998 }, --Blue Workman's Shirt
			{ itemID = 41250, spellID = 55996 }, --Green Lumberjack Shirt
			{ itemID = 41255, spellID = 56000 }, --Green Workman's Shirt
			{ itemID = 41248, spellID = 55993 }, --Red Lumberjack Shirt
			{ itemID = 41252, spellID = 55997 }, --Red Workman's Shirt
			{ itemID = 41254, spellID = 55999 }, --Rustic Workman's Shirt
			{ itemID = 41251, spellID = 55995 }, --Yellow Lumberjack Shirt
			{ itemID = 10034, spellID = 12085 }, --Tuxedo Shirt
			{ itemID = 10055, spellID = 12080 }, --Pink Mageweave Shirt
			{ itemID = 10054, spellID = 12075 }, --Lavender Mageweave Shirt
			{ itemID = 10052, spellID = 12064 }, --AtlasLoot.Colors.ORANGE Martial Shirt
			{ itemID = 10056, spellID = 12061 }, --AtlasLoot.Colors.ORANGE Mageweave Shirt
			{ itemID = 4336, spellID = 3873 }, --Black Swashbuckler's Shirt
			{ itemID = 17723, spellID = 21945 }, --Green Holiday Shirt
		},
		{
			{ itemID = 4335, spellID = 3872 }, --Rich Purple Silk Shirt
			{ itemID = 6796, spellID = 8489 }, --Red Swashbuckler's Shirt
			{ itemID = 4334, spellID = 3871 }, --Formal AtlasLoot.Colors.WHITE Shirt
			{ itemID = 6795, spellID = 8483 }, --White Swashbuckler's Shirt
			{ itemID = 4333, spellID = 3870 }, --Dark Silk Shirt
			{ itemID = 4332, spellID = 3869 }, --Bright Yellow Shirt
			{ itemID = 6384, spellID = 7892 }, --Stylish AtlasLoot.Colors.BLUE Shirt
			{ itemID = 6385, spellID = 7893 }, --Stylish AtlasLoot.Colors.GREEN Shirt
			{ itemID = 4330, spellID = 3866 }, --Stylish AtlasLoot.Colors.RED Shirt
			{ itemID = 2587, spellID = 2406 }, --Gray Woolen Shirt
			{ itemID = 2579, spellID = 2396 }, --Green Linen Shirt
			{ itemID = 2577, spellID = 2394 }, --Blue Linen Shirt
			{ itemID = 2575, spellID = 2392 }, --Red Linen Shirt
			{ itemID = 2576, spellID = 2393 }, --White Linen Shirt
			{ itemID = 4344, spellID = 3915 }, --Brown Linen Shirt
		},
	},
}