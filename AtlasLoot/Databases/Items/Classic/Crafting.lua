local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
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

AtlasLoot:AddItemData("dontSort", {
	---------------
	--- Alchemy ---
	---------------
	["AlchemyCLASSIC"] = {
		{
			{ spellID = 17573 }, --Greater Arcane Elixir
			{ spellID = 17571 }, --Elixir of the Mongoose
			{ spellID = 17557 }, --Elixir of Brute Force
			{ spellID = 11477 }, --Elixir of Demonslaying
			{ spellID = 26277 }, --Elixir of Greater Firepower
			{ spellID = 11476 }, --Elixir of Shadow Power
			{ spellID = 11472 }, --Elixir of Giants
			{ spellID = 11467 }, --Elixir of Greater Agility
			{ spellID = 11461 }, --Arcane Elixir
			{ spellID = 21923 }, --Elixir of Frost Power
			{ spellID = 11449 }, --Elixir of Agility
			{ spellID = 63732 }, --Elixir of Minor Accuracy
			{ spellID = 3188 }, --Elixir of Ogre's Strength
			{ spellID = 2333 }, --Elixir of Lesser Agility
			{ spellID = 7845 }, --Elixir of Firepower
			{ spellID = 8240 }, --Elixir of Giant Growth
			{ spellID = 3230 }, --Elixir of Minor Agility
			{ spellID = 2329 }, --Elixir of Lion's Strength
		},
		{
			{ spellID = 24368 }, --Major Troll's Blood Elixir
			{ spellID = 24365 }, --Mageblood Elixir
			{ spellID = 17554 }, --Elixir of Superior Defense
			{ spellID = 17555 }, --Elixir of the Sages
			{ spellID = 11466 }, --Gift of Arthas
			{ spellID = 11465 }, --Elixir of Greater Intellect
			{ spellID = 11450 }, --Elixir of Greater Defense
			{ spellID = 3451 }, --Mighty Troll's Blood Elixir
			{ spellID = 3450 }, --Elixir of Fortitude
			{ spellID = 3177 }, --Elixir of Defense
			{ spellID = 3176 }, --Strong Troll's Blood Potion
			{ spellID = 3171 }, --Elixir of Wisdom
			{ spellID = 2334 }, --Elixir of Minor Fortitude
			{ spellID = 3170 }, --Weak Troll's Blood Elixir
			{ spellID = 7183 }, --Elixir of Minor Defense
		},
		{
			{ spellID = 22732 }, --Major Rejuvenation Potion
			{ spellID = 17580 }, --Major Mana Potion
			{ spellID = 17577 }, --Greater Arcane Protection Potion
			{ spellID = 17574 }, --Greater Fire Protection Potion
			{ spellID = 17575 }, --Greater Frost Protection Potion
			{ spellID = 17576 }, --Greater Nature Protection Potion
			{ spellID = 17578 }, --Greater Shadow Protection Potion
			{ spellID = 24367 }, --Living Action Potion
			{ spellID = 17572 }, --Purification Potion
			{ spellID = 17570 }, --Greater Stoneshield Potion
			{ spellID = 24366 }, --Greater Dreamless Sleep Potion
			{ spellID = 17556 }, --Major Healing Potion
			{ spellID = 17553 }, --Superior Mana Potion
			{ spellID = 17525 }, --Potion of Lightning Reflexes
			{ spellID = 17552 }, --Mighty Rage Potion
			{ spellID = 3175 }, --Limited Invulnerability Potion
			{ spellID = 11464 }, --Invisibility Potion
			{ spellID = 15833 }, --Dreamless Sleep Potion
			{ spellID = 11458 }, --Wildvine Potion
			{ spellID = 4942 }, --Lesser Stoneshield Potion
			{ spellID = 11457 }, --Superior Healing Potion
			{ spellID = 11453 }, --Magic Resistance Potion
			{ spellID = 11452 }, --Restorative Potion
			{ spellID = 11448 }, --Greater Mana Potion
			{ spellID = 7258 }, --Frost Protection Potion
			{ spellID = 7259 }, --Nature Protection Potion
			{ spellID = 6618 }, --Great Rage Potion
			{ spellID = 3448 }, --Lesser Invisibility Potion
			{ spellID = 7257 }, --Fire Protection Potion
			{ spellID = 3452 }, --Mana Potion
			{ spellID = 7181 }, --Greater Healing Potion
			{ spellID = 6624 }, --Free Action Potion
			{ spellID = 7256 }, --Shadow Protection Potion
			{ spellID = 3173 }, --Lesser Mana Potion
			{ spellID = 3174 }, --Potion of Curing
			{ spellID = 3447 }, --Healing Potion
			{ spellID = 3172 }, --Minor Magic Resistance Potion
			{ spellID = 7255 }, --Holy Protection Potion
			{ spellID = 7841 }, --Swim Speed Potion
			{ spellID = 6617 }, --Rage Potion
			{ spellID = 2335 }, --Swiftness Potion
			{ spellID = 2337 }, --Lesser Healing Potion
			{ spellID = 4508 }, --Discolored Healing Potion
			{ spellID = 2332 }, --Minor Rejuvenation Potion
			{ spellID = 2331 }, --Minor Mana Potion
			{ spellID = 2330 }, --Minor Healing Potion
		},
		{
			{ spellID = 17638 }, --Flask of Chromatic Resistance
			{ spellID = 17636 }, --Flask of Distilled Wisdom
			{ spellID = 17634 }, --Flask of Petrification
			{ spellID = 17637 }, --Flask of Supreme Power
			{ spellID = 17635 }, --Flask of the Titans
			{ spellID = 17640 }, --Flask of the Titans
		},
		{
			{ spellID = 11479 }, --Transmute: Iron to Gold
			{ spellID = 11480 }, --Transmute: Mithril to Truesilver
			{ spellID = 17187 }, --Transmute: Arcanite Bar
			{ spellID = 17559 }, --Transmute: Air to Fire
			{ spellID = 17566 }, --Transmute: Earth to Life
			{ spellID = 17561 }, --Transmute: Earth to Water
			{ spellID = 17560 }, --Transmute: Fire to Earth
			{ spellID = 17565 }, --Transmute: Life to Earth
			{ spellID = 17563 }, --Transmute: Undeath to Water
			{ spellID = 17562 }, --Transmute: Water to Air
			{ spellID = 17564 }, --Transmute: Water to Undeath
			{ spellID = 25146 }, --Transmute: Elemental Fire
		},
		{
			{ spellID = 24266 }, --Gurubashi Mojo Madness
			{ spellID = 11473 }, --Ghost Dye
			{ spellID = 11460 }, --Elixir of Detect Undead
			{ spellID = 22808 }, --Elixir of Greater Water Breathing
			{ spellID = 11456 }, --Goblin Rocket Fuel
			{ spellID = 11451 }, --Oil of Immolation
			{ spellID = 12609 }, --Catseye Elixir
			{ spellID = 3454 }, --Frost Oil
			{ spellID = 11459 }, --Philosopher's Stone
			{ spellID = 3453 }, --Elixir of Detect Lesser Invisibility
			{ spellID = 3449 }, --Shadow Oil
			{ spellID = 7837 }, --Fire Oil
			{ spellID = 7179 }, --Elixir of Water Breathing
			{ spellID = 7836 }, --Blackmouth Oil
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968403 }, --Potent Flask of Manifesting Power
			{ spellID = 968406 }, --Potent Flask of the Warsong
			{ spellID = 968409 }, --Potent Flask of the Kirin Tor
			{ spellID = 968412 }, --Potent Flask of Butchery
			{ spellID = 968415 }, --Potent Flask of the Unyielding
			{ spellID = 968418 }, --Potent Flask of Unrelenting Power
			{ spellID = 968421 }, --Potent Flask of Savage Assault
			{ spellID = 968424 }, --Potent Flask of Shattering Thunder
			{ spellID = 968427 }, --Potent Flask of the Executioner
			{ spellID = 968430 }, --Potent Flask of Deep Meditation
			{ spellID = 968433 }, --Potent Flask of Adept Striking
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968404 }, --Distilled Flask of Manifesting Power
			{ spellID = 968407 }, --Distilled Flask of the Warsong
			{ spellID = 968410 }, --Distilled Flask of the Kirin Tor
			{ spellID = 968413 }, --Distilled Flask of Butchery
			{ spellID = 968416 }, --Distilled Flask of the Unyielding
			{ spellID = 968419 }, --Distilled Flask of Unrelenting Power
			{ spellID = 968422 }, --Distilled Flask of Savage Assault
			{ spellID = 968425 }, --Distilled Flask of Shattering Thunder
			{ spellID = 968428 }, --Distilled Flask of the Executioner
			{ spellID = 968431 }, --Distilled Flask of Deep Meditation
			{ spellID = 968434 }, --Distilled Flask of Adept Striking
		},
	},

	---------------------
	--- Blacksmithing ---
	---------------------
	["SmithingCLASSIC"] = {
		{
			{ spellID = 28242 }, --Icebane Breastplate
			{ spellID = 16746 }, --Invulnerable Mail
			{ spellID = 27590 }, --Obsidian Mail Tunic
			{ spellID = 27587 }, --Thick Obsidian Breastplate
			{ spellID = 24136 }, --Bloodsoul Breastplate
			{ spellID = 24914 }, --Darkrune Breastplate
			{ spellID = 24139 }, --Darksoul Breastplate
			{ spellID = 28461 }, --Ironvine Breastplate
			{ spellID = 16745 }, --Enchanted Thorium Breastplate
			{ spellID = 16663 }, --Imperial Plate Chest
			{ spellID = 16731 }, --Runic Breastplate
			{ spellID = 16667 }, --Demon Forged Breastplate
			{ spellID = 15296 }, --Dark Iron Plate
			{ spellID = 16650 }, --Wildthorn Mail
			{ spellID = 16648 }, --Radiant Breastplate
			{ spellID = 16642 }, --Thorium Armor
			{ spellID = 9959 }, --Heavy Mithril Breastplate
			{ spellID = 9974 }, --Truesilver Breastplate
			{ spellID = 9916 }, --Steel Breastplate
			{ spellID = 3511 }, --Golden Scale Cuirass
			{ spellID = 3508 }, --Green Iron Hauberk
			{ spellID = 9813 }, --Barbaric Iron Breastplate
			{ spellID = 2675 }, --Shining Silver Breastplate
			{ spellID = 2673 }, --Silvered Bronze Breastplate
			{ spellID = 9972 }, --Ornate Mithril Breastplate
			{ spellID = 8367 }, --Ironforge Breastplate
			{ spellID = 2670 }, --Rough Bronze Cuirass
			{ spellID = 2667 }, --Runed Copper Breastplate
			{ spellID = 3321 }, --Copper Chain Vest
			{ spellID = 12260 }, --Rough Copper Vest
		},
		{
			{ spellID = 24399 }, --Dark Iron Boots
			{ spellID = 23629 }, --Heavy Timbermaw Boots
			{ spellID = 16665 }, --Runic Plate Boots
			{ spellID = 16657 }, --Imperial Plate Boots
			{ spellID = 16656 }, --Radiant Boots
			{ spellID = 16652 }, --Thorium Boots
			{ spellID = 9979 }, --Ornate Mithril Boots
			{ spellID = 9968 }, --Heavy Mithril Boots
			{ spellID = 3515 }, --Golden Scale Boots
			{ spellID = 3513 }, --Polished Steel Boots
			{ spellID = 9818 }, --Barbaric Iron Boots
			{ spellID = 3334 }, --Green Iron Boots
			{ spellID = 3331 }, --Silvered Bronze Boots
			{ spellID = 7817 }, --Rough Bronze Boots
			{ spellID = 3319 }, --Copper Chain Boots
		},
		{
			{ spellID = 23637 }, --Dark Iron Gauntlets
			{ spellID = 28243 }, --Icebane Gauntlets
			{ spellID = 16741 }, --Stronghold Gauntlets
			{ spellID = 24138 }, --Bloodsoul Gauntlets
			{ spellID = 24912 }, --Darkrune Gauntlets
			{ spellID = 23633 }, --Gloves of the Dawn
			{ spellID = 28462 }, --Ironvine Gloves
			{ spellID = 27589 }, --Black Grasp of the Destroyer
			{ spellID = 16661 }, --Storm Gauntlets
			{ spellID = 16655 }, --Fiery Plate Gauntlets
			{ spellID = 9954 }, --Truesilver Gauntlets
			{ spellID = 16654 }, --Radiant Gloves
			{ spellID = 9950 }, --Ornate Mithril Gloves
			{ spellID = 11643 }, --Golden Scale Gauntlets
			{ spellID = 9928 }, --Heavy Mithril Gauntlet
			{ spellID = 9820 }, --Barbaric Iron Gloves
			{ spellID = 3336 }, --Green Iron Gauntlets
			{ spellID = 3333 }, --Silvered Bronze Gauntlets
			{ spellID = 3325 }, --Gemmed Copper Gauntlets
			{ spellID = 3323 }, --Runed Copper Gauntlets
		},
		{
			{ spellID = 23636 }, --Dark Iron Helm
			{ spellID = 16729 }, --Lionheart Helm
			{ spellID = 24913 }, --Darkrune Helm
			{ spellID = 16742 }, --Enchanted Thorium Helm
			{ spellID = 16728 }, --Helm of the Great Chief
			{ spellID = 16724 }, --Whitesoul Helm
			{ spellID = 16726 }, --Runic Plate Helm
			{ spellID = 16658 }, --Imperial Plate Helm
			{ spellID = 16659 }, --Radiant Circlet
			{ spellID = 16653 }, --Thorium Helm
			{ spellID = 15293 }, --Dark Iron Mail
			{ spellID = 9980 }, --Ornate Mithril Helm
			{ spellID = 9970 }, --Heavy Mithril Helm
			{ spellID = 9961 }, --Mithril Coif
			{ spellID = 9935 }, --Steel Plate Helm
			{ spellID = 3503 }, --Golden Scale Coif
			{ spellID = 16726 }, --Runic Plate Helm
			{ spellID = 9814 }, --Barbaric Iron Helm
			{ spellID = 3502 }, --Green Iron Helm
		},
		{
			{ spellID = 20876 }, --Dark Iron Leggings
			{ spellID = 16662 }, --Thorium Leggings
			{ spellID = 27829 }, --Titanic Leggings
			{ spellID = 24140 }, --Darksoul Leggings
			{ spellID = 16744 }, --Enchanted Thorium Leggings
			{ spellID = 16730 }, --Imperial Plate Leggings
			{ spellID = 16725 }, --Radiant Leggings
			{ spellID = 16732 }, --Runic Plate Leggings
			{ spellID = 36122 }, --Earthforged Leggings
			{ spellID = 36124 }, --Windforged Leggings
			{ spellID = 9945 }, --Ornate Mithril Pants
			{ spellID = 9931 }, --Mithril Scale Pants
			{ spellID = 9933 }, --Heavy Mithril Pants
			{ spellID = 9957 }, --Orcish War Leggings
			{ spellID = 3507 }, --Golden Scale Leggings
			{ spellID = 3506 }, --Green Iron Leggings
			{ spellID = 12259 }, --Silvered Bronze Leggings
			{ spellID = 2668 }, --Rough Bronze Leggings
			{ spellID = 3324 }, --Runed Copper Pants
			{ spellID = 2662 }, --Copper Chain Pants
		},
		{
			{ spellID = 20873 }, --Fiery Chain Shoulders
			{ spellID = 24137 }, --Bloodsoul Shoulders
			{ spellID = 24141 }, --Darksoul Shoulders
			{ spellID = 16664 }, --Runic Plate Shoulders
			{ spellID = 16660 }, --Dawnbringer Shoulders
			{ spellID = 15295 }, --Dark Iron Shoulders
			{ spellID = 16646 }, --Imperial Plate Shoulders
			{ spellID = 9966 }, --Mithril Scale Shoulders
			{ spellID = 9952 }, --Ornate Mithril Shoulder
			{ spellID = 9926 }, --Heavy Mithril Shoulder
			{ spellID = 3505 }, --Golden Scale Shoulders
			{ spellID = 9811 }, --Barbaric Iron Shoulders
			{ spellID = 3504 }, --Green Iron Shoulders
			{ spellID = 3330 }, --Silvered Bronze Shoulders
			{ spellID = 3328 }, --Rough Bronze Shoulders
		},
		{
			{ spellID = 27585 }, --Heavy Obsidian Belt
			{ spellID = 28463 }, --Ironvine Belt
			{ spellID = 27588 }, --Light Obsidian Belt
			{ spellID = 20872 }, --Fiery Chain Girdle
			{ spellID = 23632 }, --Girdle of the Dawn
			{ spellID = 23628 }, --Heavy Timbermaw Belt
			{ spellID = 16647 }, --Imperial Plate Belt
			{ spellID = 16645 }, --Radiant Belt
			{ spellID = 16643 }, --Thorium Belt
			{ spellID = 2666 }, --Runed Copper Belt
			{ spellID = 2661 }, --Copper Chain Belt
		},
		{
			{ spellID = 28244 }, --Icebane Bracers
			{ spellID = 20874 }, --Dark Iron Bracers
			{ spellID = 16649 }, --Imperial Plate Bracers
			{ spellID = 16644 }, --Thorium Bracers
			{ spellID = 9937 }, --Mithril Scale Bracers
			{ spellID = 7223 }, --Golden Scale Bracers
			{ spellID = 3501 }, --Green Iron Bracers
			{ spellID = 2672 }, --Patterned Bronze Bracers
			{ spellID = 2664 }, --Runed Copper Bracers
			{ spellID = 2663 }, --Copper Bracers
		},
		{
			{ spellID = 23638 }, --Black Amnesty
			{ spellID = 23652 }, --Blackguard
			{ spellID = 23650 }, --Ebon Hand
			{ spellID = 27830 }, --Persuader
			{ spellID = 27832 }, --Sageblade
			{ spellID = 16991 }, --Annihilator
			{ spellID = 20897 }, --Dark Iron Destroyer
			{ spellID = 20890 }, --Dark Iron Reaver
			{ spellID = 16992 }, --Frostguard
			{ spellID = 16995 }, --Heartseeker
			{ spellID = 16993 }, --Masterwork Stormhammer
			{ spellID = 16983 }, --Serenity
			{ spellID = 16978 }, --Blazing Rapier
			{ spellID = 16970 }, --Dawn's Edge
			{ spellID = 36125 }, --Light Earthforged Blade
			{ spellID = 36128 }, --Light Emberforged Hammer
			{ spellID = 36126 }, --Light Skyforged Axe
			{ spellID = 10007 }, --Phantom Blade
			{ spellID = 10003 }, --The Shatterer
			{ spellID = 16984 }, --Volcanic Hammer
			{ spellID = 16969 }, --Ornate Thorium Handaxe
			{ spellID = 10013 }, --Ebon Shiv
			{ spellID = 10009 }, --Runed Mithril Hammer
			{ spellID = 10005 }, --Dazzling Mithril Rapier
			{ spellID = 10001 }, --Big Black Mace
			{ spellID = 9997 }, --Wicked Mithril Blade
			{ spellID = 9995 }, --Blue Glittering Axe
			{ spellID = 9993 }, --Heavy Mithril Axe
			{ spellID = 15973 }, --Searing Golden Blade
			{ spellID = 21913 }, --Edge of Winter
			{ spellID = 15972 }, --Glinting Steel Dagger
			{ spellID = 3493 }, --Jade Serpentblade
			{ spellID = 3492 }, --Hardened Iron Shortsword
			{ spellID = 3297 }, --Mighty Iron Hammer
			{ spellID = 6518 }, --Iridescent Hammer
			{ spellID = 3296 }, --Heavy Bronze Mace
			{ spellID = 3295 }, --Deadly Bronze Poniard
			{ spellID = 6517 }, --Pearl-handled Dagger
			{ spellID = 3491 }, --Big Bronze Knife
			{ spellID = 3294 }, --Thick War Axe
			{ spellID = 43549 }, --Heavy Copper Longsword
			{ spellID = 2742 }, --Bronze Shortsword
			{ spellID = 2741 }, --Bronze Axe
			{ spellID = 2740 }, --Bronze Mace
			{ spellID = 2738 }, --Copper Axe
			{ spellID = 2737 }, --Copper Mace
		},
		{
			{ spellID = 23639 }, --Blackfury
			{ spellID = 23653 }, --Nightfall
			{ spellID = 21161 }, --Sulfuron Hammer
			{ spellID = 16990 }, --Arcanite Champion
			{ spellID = 16994 }, --Arcanite Reaper
			{ spellID = 16988 }, --Hammer of the Titans
			{ spellID = 16985 }, --Corruption
			{ spellID = 16973 }, --Enchanted Battlehammer
			{ spellID = 15294 }, --Dark Iron Sunderer
			{ spellID = 15292 }, --Dark Iron Pulverizer
			{ spellID = 10015 }, --Truesilver Champion
			{ spellID = 10011 }, --Blight
			{ spellID = 16971 }, --Huge Thorium Battleaxe
			{ spellID = 3500 }, --Shadow Crescent Axe
			{ spellID = 3497 }, --Frost Tiger Blade
			{ spellID = 3498 }, --Massive Iron Axe
			{ spellID = 3496 }, --Moonsteel Broadsword
			{ spellID = 3495 }, --Golden Iron Destroyer
			{ spellID = 3494 }, --Solid Iron Maul
			{ spellID = 3292 }, --Heavy Copper Broadsword
			{ spellID = 3293 }, --Copper Battle Axe
			{ spellID = 9987 }, --Bronze Battle Axe
			{ spellID = 9986 }, --Bronze Greatsword
			{ spellID = 9985 }, --Bronze Warhammer
			{ spellID = 7408 }, --Heavy Copper Maul
			{ spellID = 9983 }, --Copper Claymore
			{ spellID = 8880 }, --Copper Dagger
			{ spellID = 2739 }, --Copper Shortsword
		},
		{
			{ spellID = 34979 }, --Thick Bronze Darts
			{ spellID = 34982 }, --Enchanted Thorium Blades
			{ spellID = 34981 }, --Whirling Steel Axes
		},
		{
			{ spellID = 27586 }, --Jagged Obsidian Shield
		},
		{
			{ spellID = 16641 }, --Dense Sharpening Stone
			{ spellID = 16640 }, --Dense Weightstone
			{ spellID = 9918 }, --Solid Sharpening Stone
			{ spellID = 9921 }, --Solid Weightstone
			{ spellID = 7224 }, --Steel Weapon Chain
			{ spellID = 7222 }, --Iron Counterweight
			{ spellID = 7221 }, --Iron Shield Spike
			{ spellID = 2674 }, --Heavy Sharpening Stone
			{ spellID = 3117 }, --Heavy Weightstone
			{ spellID = 2665 }, --Coarse Sharpening Stone
			{ spellID = 3116 }, --Coarse Weightstone
			{ spellID = 2660 }, --Rough Sharpening Stone
			{ spellID = 3115 }, --Rough Weightstone
		},
		{
			{ spellID = 19669 }, --Arcanite Skeleton Key
			{ spellID = 19668 }, --Truesilver Skeleton Key
			{ spellID = 19667 }, --Golden Skeleton Key
			{ spellID = 19666 }, --Silver Skeleton Key
			{ spellID = 20201 }, --Arcanite Rod
			{ spellID = 16639 }, --Dense Grinding Stone
			{ spellID = 11454 }, --Inlaid Mithril Cylinder
			{ spellID = 14380 }, --Truesilver Rod
			{ spellID = 9920 }, --Solid Grinding Stone
			{ spellID = 14379 }, --Golden Rod
			{ spellID = 8768 }, --Iron Buckle
			{ spellID = 3337 }, --Heavy Grinding Stone
			{ spellID = 7818 }, --Silver Rod
			{ spellID = 3326 }, --Coarse Grinding Stone
			{ spellID = 3320 }, --Rough Grinding Stone
		},
		{
			{ spellID = 36122 }, --Earthforged Leggings
			{ spellID = 36124 }, --Windforged Leggings
		},
		{
			{ spellID = 36125 }, --Light Earthforged Blade
			{ spellID = 36128 }, --Light Emberforged Hammer
			{ spellID = 36126 }, --Light Skyforged Axe
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968019 }, --Sturdy Living Belt Buckle
			{ spellID = 968022 }, --Sturdy Deflecting Belt Buckle
			{ spellID = 968025 }, --Sturdy Roguish Belt Buckle
			{ spellID = 968028 }, --Sturdy Dancing Belt Buckle
			{ spellID = 968031 }, --Sturdy Magus Belt Buckle
			{ spellID = 968034 }, --Sturdy Cleric's Belt Buckle
			{ spellID = 968037 }, --Sturdy Warlord's Belt Buckle
			{ spellID = 968040 }, --Sturdy Gaurdian's Belt Buckle
			{ spellID = 968481 }, --Homicite Key
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968020 }, --Mastercraft Living Belt Buckle
			{ spellID = 968023 }, --Mastercraft Deflecting Belt Buckle
			{ spellID = 968026 }, --Mastercraft Roguish Belt Buckle
			{ spellID = 968029 }, --Mastercraft Dancing Belt Buckle
			{ spellID = 968032 }, --Mastercraft Magus Belt Buckle
			{ spellID = 968035 }, --Mastercraft Cleric's Belt Buckle
			{ spellID = 968038 }, --Mastercraft Warlord's Belt Buckle
			{ spellID = 968041 }, --Mastercraft Gaurdian's Belt Buckle
			{ spellID = 968482 }, --Homicite Key
		},
	},

	---------------
	--- Cooking ---
	---------------
	["CookingCLASSIC"] = {
		{
			{ spellID = 25659 }, --Dirge's Kickin' Chimaerok Chops
			{ spellID = 966455 }, --Azerothian Schmorgus Boards
			{ spellID = 966436 }, --Chilled Lava Eels
			{ spellID = 966435 }, --Chillwind Flank Steaks
			{ spellID = 966434 }, --Hippogryph Steaks
			{ spellID = 966433 }, --Steamed Makrinni Claws
			{ spellID = 966432 }, --Rubbed Ravasaur Ribss
			{ spellID = 966431 }, --Hearty Stegodon Stews
			{ spellID = 966430 }, --Crispy Pterrordax Wings
			{ spellID = 966429 }, --Spicy Dino Jerkys
			{ spellID = 966428 }, --Dirge's Nevermelt Ice Creams
			{ spellID = 966427 }, --Silithid Snacks
			{ spellID = 966426 }, --Hydra Scale Soups
			{ spellID = 966425 }, --Ghostly Goulashs
			{ spellID = 966398 }, --Seared Cunning Carps
			{ spellID = 24801 }, --Smoked Desert Dumplings
			{ spellID = 18247 }, --Baked Salmon
			{ spellID = 18245 }, --Lobster Stew
			{ spellID = 18246 }, --Mightfish Steak
			{ spellID = 22761 }, --Runn Tum Tuber Surprise
			{ spellID = 46684 }, --Charred Bear Kabobs
			{ spellID = 46688 }, --Juicy Bear Burger
			{ spellID = 18243 }, --Nightfin Soup
			{ spellID = 18244 }, --Poached Sunscale Salmon
			{ spellID = 18240 }, --Grilled Squid
			{ spellID = 18242 }, --Hot Smoked Bass
			{ spellID = 64054 }, --Clamlette Magnifique
			{ spellID = 18239 }, --Cooked Glossy Mightfish
			{ spellID = 18241 }, --Filet of Redgill
			{ spellID = 15933 }, --Monster Omelet
			{ spellID = 15915 }, --Spiced Chili Crab
			{ spellID = 18238 }, --Spotted Yellowtail
			{ spellID = 22480 }, --Tender Wolf Steak
			{ spellID = 20626 }, --Undermine Clam Chowder
			{ spellID = 15906 }, --Dragonbreath Chili
			{ spellID = 15910 }, --Heavy Kodo Stew
			{ spellID = 21175 }, --Spider Sausage
			{ spellID = 4094 }, --Barbecued Buzzard Wing
			{ spellID = 15863 }, --Carrion Surprise
			{ spellID = 7213 }, --Giant Clam Scorcho
			{ spellID = 13028 }, --Goldthorn Tea
			{ spellID = 15856 }, --Hot Wolf Ribs
			{ spellID = 15861 }, --Jungle Stew
			{ spellID = 20916 }, --Mithril Head Trout
			{ spellID = 15865 }, --Mystery Stew
			{ spellID = 15855 }, --Roast Raptor
			{ spellID = 7828 }, --Rockscale Cod
			{ spellID = 25954 }, --Sagefish Delight
			{ spellID = 3400 }, --Soothing Turtle Bisque
			{ spellID = 24418 }, --Heavy Crocolisk Stew
			{ spellID = 3399 }, --Tasty Lion Steak
			{ spellID = 3376 }, --Curiously Tasty Omelet
			{ spellID = 6500 }, --Goblin Deviled Clams
			{ spellID = 3398 }, --Hot Lion Chops
			{ spellID = 15853 }, --Lean Wolf Steak
			{ spellID = 3373 }, --Crocolisk Gumbo
			{ spellID = 3397 }, --Big Bear Steak
			{ spellID = 3377 }, --Gooey Spider Cake
			{ spellID = 6419 }, --Lean Venison
			{ spellID = 2548 }, --Succulent Pork Ribs
			{ spellID = 7755 }, --Bristle Whisker Catfish
			{ spellID = 45695 }, --Captain Rumsey's Lager
			{ spellID = 6418 }, --Crispy Lizard Tail
			{ spellID = 2547 }, --Redridge Goulash
			{ spellID = 2549 }, --Seasoned Wolf Kabob
			{ spellID = 6501 }, --Clam Chowder
			{ spellID = 6417 }, --Dig Rat Stew
			{ spellID = 3372 }, --Murloc Fin Soup
			{ spellID = 2545 }, --Cooked Crab Claw
			{ spellID = 8238 }, --Savory Deviate Delight
			{ spellID = 3370 }, --Crocolisk Steak
			{ spellID = 8607 }, --Smoked Bear Meat
			{ spellID = 2546 }, --Dry Pork Ribs
			{ spellID = 25704 }, --Smoked Sagefish
			{ spellID = 2544 }, --Crab Cake
			{ spellID = 62050 }, --Cornbread Stuffing
			{ spellID = 2543 }, --Westfall Stew
			{ spellID = 3371 }, --Blood Sausage
			{ spellID = 28267 }, --Crunchy Spider Surprise
			{ spellID = 9513 }, --Thistle Tea
			{ spellID = 33278 }, --Bat Bites
			{ spellID = 6499 }, --Boiled Clams
			{ spellID = 2541 }, --Coyote Steak
			{ spellID = 6415 }, --Fillet of Frenzy
			{ spellID = 2542 }, --Goretusk Liver Pie
			{ spellID = 7754 }, --Loch Frenzy Delight
			{ spellID = 7753 }, --Longjaw Mud Snapper
			{ spellID = 7827 }, --Rainbow Fin Albacore
			{ spellID = 62045 }, --Roasted Turkey
			{ spellID = 6416 }, --Strider Stew
			{ spellID = 62044 }, --Tasty Cranberries
			{ spellID = 62051 }, --Candied Yam
			{ spellID = 21144 }, --Egg Nog
			{ spellID = 6414 }, --Roasted Kodo Meat
			{ spellID = 62049 }, --Cranberry Chutney
			{ spellID = 6413 }, --Scorpid Surprise
			{ spellID = 2795 }, --Beer Basted Boar Ribs
			{ spellID = 6412 }, --Kaldorei Spider Kabob
			{ spellID = 2539 }, --Spiced Wolf Meat
			{ spellID = 7751 }, --Brilliant Smallfish
			{ spellID = 2538 }, --Charred Wolf Meat
			{ spellID = 33276 }, --Lynx Steak
			{ spellID = 15935 }, --Crispy Bat Wing
			{ spellID = 43779 }, --Delicious Chocolate Cake
			{ spellID = 21143 }, --Gingerbread Cookie
			{ spellID = 8604 }, --Herb Baked Egg
			{ spellID = 2540 }, --Roasted Boar Meat
			{ spellID = 33277 }, --Roasted Moongraze Tenderloin
			{ spellID = 7752 }, --Slitherskin Mackerel
			{ spellID = 37836 }, --Spice Bread
			{ spellID = 65454 }, --Bread of the Dead
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968280 }, --Animated Soup for the Soul
			{ spellID = 968283 }, --Volcanic Sandwich
			{ spellID = 968286 }, --Winter Wontons
			{ spellID = 968289 }, --Storm Steak
			{ spellID = 968292 }, --Void Touched Stew
			{ spellID = 968295 }, --Spicy Vulture Steak
			{ spellID = 968298 }, --Wizard Wontons
			{ spellID = 968301 }, --Jurassic Burger
			{ spellID = 968304 }, --Rough-alo wings
			{ spellID = 968307 }, --The Whooper Sandwich
			{ spellID = 968310 }, --Vulture a la King
			{ spellID = 968313 }, --Scorching Hot Steak
			{ spellID = 968316 }, --Lively Stew
			{ spellID = 968319 }, --Crawling Steak
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968281 }, --Animated Soup for the Soul
			{ spellID = 968284 }, --Volcanic Sandwich
			{ spellID = 968287 }, --Winter Wontons
			{ spellID = 968290 }, --Storm Steak
			{ spellID = 968293 }, --Void Touched Stew
			{ spellID = 968296 }, --Spicy Vulture Steak
			{ spellID = 968299 }, --Wizard Wontons
			{ spellID = 968302 }, --Jurassic Burger
			{ spellID = 968305 }, --Rough-alo wings
			{ spellID = 968308 }, --The Whooper Sandwich
			{ spellID = 968311 }, --Vulture a la King
			{ spellID = 968314 }, --Scorching Hot Steak
			{ spellID = 968317 }, --Lively Stew
			{ spellID = 968320 }, --Crawling Steak
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968370 }, --Subtle Sandwich
			{ spellID = 968373 }, --Subtle Wontons
			{ spellID = 968376 }, --Subtle Sulferous Soup
			{ spellID = 968379 }, --Strongman Stew
			{ spellID = 968382 }, --Mysterious Void Roast
			{ spellID = 968385 }, --Fire Charred Roast
			{ spellID = 968388 }, --Storm Fried Roast
			{ spellID = 968391 }, --Winter Roast
			{ spellID = 968394 }, --Blackened Roast
			{ spellID = 968397 }, --Dino Delight
			{ spellID = 968400 }, --Slick-fil-A Sandwich
			{ spellID = 968322 }, --Breakonator Sandwich
			{ spellID = 968370 }, --Subtle Steak
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968371 }, --Subtle Sandwich
			{ spellID = 968374 }, --Subtle Wontons
			{ spellID = 968377 }, --Subtle Sulferous Soup
			{ spellID = 968380 }, --Strongman Stew
			{ spellID = 968383 }, --Mysterious Void Roast
			{ spellID = 968386 }, --Fire Charred Roast
			{ spellID = 968389 }, --Storm Fried Roast
			{ spellID = 968392 }, --Winter Roast
			{ spellID = 968395 }, --Blackened Roast
			{ spellID = 968398 }, --Dino Delight
			{ spellID = 968401 }, --Slick-fil-A Sandwich
			{ spellID = 968323 }, --Breakonator Sandwich
			{ spellID = 968368 }, --Subtle Steak
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968325 }, --Master Wontons
			{ spellID = 968328 }, --Big Whack Sandwich
			{ spellID = 968331 }, --Warping Wontons
			{ spellID = 968334 }, --Duck Stew
			{ spellID = 968337 }, --Mountainman Stew
			{ spellID = 968340 }, --Scorched Stew
			{ spellID = 968343 }, --Vulcan Wontons
			{ spellID = 968346 }, --Jurassic Soup
			{ spellID = 968349 }, --Heightened Wontons
			{ spellID = 968352 }, --Hearty Spirit Soup
			{ spellID = 968355 }, --Jurassic Steak
			{ spellID = 968358 }, --Stormwich Sandwich
			{ spellID = 968361 }, --Warding Wontons
			{ spellID = 968364 }, --Rolling Meatballs
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968326 }, --Master Wontons
			{ spellID = 968329 }, --Big Whack Sandwich
			{ spellID = 968332 }, --Warping Wontons
			{ spellID = 968335 }, --Duck Stew
			{ spellID = 968338 }, --Mountainman Stew
			{ spellID = 968341 }, --Scorched Stew
			{ spellID = 968344 }, --Vulcan Wontons
			{ spellID = 968347 }, --Jurassic Soup
			{ spellID = 968350 }, --Heightened Wontons
			{ spellID = 968353 }, --Hearty Spirit Soup
			{ spellID = 968356 }, --Jurassic Steak
			{ spellID = 968359 }, --Stormwich Sandwich
			{ spellID = 968362 }, --Warding Wontons
			{ spellID = 968365 }, --Rolling Meatballs
		},
		{
			{ spellID = 968647 }, --Alluring Bait
			{ spellID = 968648 }, --Irresistible Bait
		},
	},

	------------------
	--- Enchanting ---
	------------------
	["EnchantingCLASSIC"] = {
		{
			{spellID = 20023}, --Enchant Boots - Greater Agility
			{spellID = 20024}, --Enchant Boots - Spirit
			{spellID = 20020}, --Enchant Boots - Greater Stamina
			{spellID = 63746}, --Enchant Boots - Lesser Accuracy
			{spellID = 13935}, --Enchant Boots - Agility
			{spellID = 13890}, --Enchant Boots - Minor Speed
			{spellID = 13836}, --Enchant Boots - Stamina
			{spellID = 13687}, --Enchant Boots - Lesser Spirit
			{spellID = 13644}, --Enchant Boots - Lesser Stamina
			{spellID = 13637}, --Enchant Boots - Lesser Agility
			{spellID = 7867}, --Enchant Boots - Minor Agility
			{spellID = 7863}, --Enchant Boots - Minor Stamina
		},
		{
			{spellID = 23802}, --Enchant Bracers - Healing Power
			{spellID = 20011}, --Enchant Bracers - Superior Stamina
			{spellID = 20010}, --Enchant Bracers - Superior Strength
			{spellID = 23801}, --Enchant Bracers - Mana Regeneration
			{spellID = 20009}, --Enchant Bracers - Superior Spirit
			{spellID = 20008}, --Enchant Bracers - Greater Intellect
			{spellID = 13939}, --Enchant Bracers - Greater Strength
			{spellID = 13945}, --Enchant Bracers - Greater Stamina
			{spellID = 13931}, --Enchant Bracers - Deflection
			{spellID = 13846}, --Enchant Bracers - Greater Spirit
			{spellID = 13822}, --Enchant Bracers - Intellect
			{spellID = 13661}, --Enchant Bracers - Strength
			{spellID = 13646}, --Enchant Bracers - Lesser Deflection
			{spellID = 13648}, --Enchant Bracers - Stamina
			{spellID = 13642}, --Enchant Bracers - Spirit
			{spellID = 13622}, --Enchant Bracers - Lesser Intellect
			{spellID = 13536}, --Enchant Bracers - Lesser Strength
			{spellID = 13501}, --Enchant Bracers - Lesser Stamina
			{spellID = 7859}, --Enchant Bracers - Lesser Spirit
			{spellID = 7779}, --Enchant Bracers - Minor Agility
			{spellID = 7782}, --Enchant Bracers - Minor Strength
			{spellID = 7457}, --Enchant Bracers - Minor Stamina
			{spellID = 7766}, --Enchant Bracers - Minor Spirit
			{spellID = 7418}, --Enchant Bracers - Minor Health
			{spellID = 7428}, --Enchant Bracers - Minor Deflection
		},
		{
			{spellID = 20025}, --Enchant Chest - Greater Stats
			{spellID = 20028}, --Enchant Chest - Major Mana
			{spellID = 20026}, --Enchant Chest - Major Health
			{spellID = 13941}, --Enchant Chest - Stats
			{spellID = 13917}, --Enchant Chest - Superior Mana
			{spellID = 13858}, --Enchant Chest - Superior Health
			{spellID = 13700}, --Enchant Chest - Lesser Stats
			{spellID = 13663}, --Enchant Chest - Greater Mana
			{spellID = 13640}, --Enchant Chest - Greater Health
			{spellID = 13626}, --Enchant Chest - Minor Stats
			{spellID = 13607}, --Enchant Chest - Mana
			{spellID = 13538}, --Enchant Chest - Lesser Absorption
			{spellID = 7857}, --Enchant Chest - Health
			{spellID = 7776}, --Enchant Chest - Lesser Mana
			{spellID = 7748}, --Enchant Chest - Lesser Health
			{spellID = 7426}, --Enchant Chest - Minor Absorption
			{spellID = 7443}, --Enchant Chest - Minor Mana
			{spellID = 7420}, --Enchant Chest - Minor Health
		},
		{
			{spellID = 25081}, --Enchant Cloak - Greater Fire Resistance
			{spellID = 20015}, --Enchant Cloak - Superior Defense
			{spellID = 20014}, --Enchant Cloak - Greater Resistance
			{spellID = 13882}, --Enchant Cloak - Lesser Agility
			{spellID = 13746}, --Enchant Cloak - Greater Defense
			{spellID = 13794}, --Enchant Cloak - Resistance
			{spellID = 13657}, --Enchant Cloak - Fire Resistance
			{spellID = 13635}, --Enchant Cloak - Defense
			{spellID = 13522}, --Enchant Cloak - Lesser Shadow Resistance
			{spellID = 7861}, --Enchant Cloak - Lesser Fire Resistance
			{spellID = 13419}, --Enchant Cloak - Minor Agility
			{spellID = 13421}, --Enchant Cloak - Lesser Protection
			{spellID = 7771}, --Enchant Cloak - Minor Protection
			{spellID = 7454}, --Enchant Cloak - Minor Resistance
			{spellID = 31150}, --Enchant Cloak - Dragon Fire
			{spellID = 31153}, --Enchant Cloak - Draconic Might
			{spellID = 31156}, --Enchant Cloak - Blazing
		},
		{
			{spellID = 25078}, --Enchant Gloves - Fire Power
			{spellID = 25074}, --Enchant Gloves - Frost Power
			{spellID = 25079}, --Enchant Gloves - Healing Power
			{spellID = 25073}, --Enchant Gloves - Shadow Power
			{spellID = 25080}, --Enchant Gloves - Superior Agility
			{spellID = 25072}, --Enchant Gloves - Threat
			{spellID = 20013}, --Enchant Gloves - Greater Strength
			{spellID = 20012}, --Enchant Gloves - Greater Agility
			{spellID = 13948}, --Enchant Gloves - Minor Haste
			{spellID = 13947}, --Enchant Gloves - Riding Skill
			{spellID = 13868}, --Enchant Gloves - Advanced Herbalism
			{spellID = 13887}, --Enchant Gloves - Strength
			{spellID = 13841}, --Enchant Gloves - Advanced Mining
			{spellID = 13815}, --Enchant Gloves - Agility
			{spellID = 13698}, --Enchant Gloves - Skinning
			{spellID = 13620}, --Enchant Gloves - Fishing
			{spellID = 13617}, --Enchant Gloves - Herbalism
			{spellID = 13612}, --Enchant Gloves - Mining
		},
		{
			{spellID = 20016}, --Enchant Shield - Superior Spirit
			{spellID = 20017}, --Enchant Shield - Greater Stamina
			{spellID = 13933}, --Enchant Shield - Frost Resistance
			{spellID = 13905}, --Enchant Shield - Greater Spirit
			{spellID = 13817}, --Enchant Shield - Stamina
			{spellID = 13689}, --Enchant Shield - Lesser Block
			{spellID = 13659}, --Enchant Shield - Spirit
			{spellID = 13631}, --Enchant Shield - Lesser Stamina
			{spellID = 13485}, --Enchant Shield - Lesser Spirit
			{spellID = 13464}, --Enchant Shield - Lesser Protection
			{spellID = 13378}, --Enchant Shield - Minor Stamina
		},
		{
			{spellID = 20036}, --Enchant 2H Weapon - Major Intellect
			{spellID = 20035}, --Enchant 2H Weapon - Major Spirit
			{spellID = 20030}, --Enchant 2H Weapon - Superior Impact
			{spellID = 27837}, --Enchant 2H Weapon - Agility
			{spellID = 13937}, --Enchant 2H Weapon - Greater Impact
			{spellID = 13695}, --Enchant 2H Weapon - Impact
			{spellID = 13529}, --Enchant 2H Weapon - Lesser Impact
			{spellID = 13380}, --Enchant 2H Weapon - Lesser Spirit
			{spellID = 7793}, --Enchant 2H Weapon - Lesser Intellect
			{spellID = 7745}, --Enchant 2H Weapon - Minor Impact
		},
		{
			{spellID = 20034}, --Enchant Weapon - Crusader
			{spellID = 22750}, --Enchant Weapon - Healing Power
			{spellID = 20032}, --Enchant Weapon - Lifestealing
			{spellID = 23804}, --Enchant Weapon - Mighty Intellect
			{spellID = 23803}, --Enchant Weapon - Mighty Spirit
			{spellID = 22749}, --Enchant Weapon - Spell Power
			{spellID = 20031}, --Enchant Weapon - Superior Striking
			{spellID = 20033}, --Enchant Weapon - Unholy Weapon
			{spellID = 23800}, --Enchant Weapon - Agility
			{spellID = 23799}, --Enchant Weapon - Strength
			{spellID = 20029}, --Enchant Weapon - Icy Chill
			{spellID = 13898}, --Enchant Weapon - Fiery Weapon
			{spellID = 13943}, --Enchant Weapon - Greater Striking
			{spellID = 13915}, --Enchant Weapon - Demonslaying
			{spellID = 13693}, --Enchant Weapon - Striking
			{spellID = 21931}, --Enchant Weapon - Winter's Might
			{spellID = 13655}, --Enchant Weapon - Lesser Elemental Slayer
			{spellID = 13653}, --Enchant Weapon - Lesser Beastslayer
			{spellID = 13503}, --Enchant Weapon - Lesser Striking
			{spellID = 7786}, --Enchant Weapon - Minor Beastslayer
			{spellID = 7788}, --Enchant Weapon - Minor Striking
		},
		{
			{ spellID = 25130 }, --Brilliant Mana Oil
			{ spellID = 25129 }, --Brilliant Wizard Oil
			{ spellID = 32664 }, --Runed Fel Iron Rod
			{ spellID = 20051 }, --Runed Arcanite Rod
			{ spellID = 25128 }, --Wizard Oil
			{ spellID = 17180 }, --Enchanted Thorium
			{ spellID = 25127 }, --Lesser Mana Oil
			{ spellID = 17181 }, --Enchanted Leather
			{ spellID = 25126 }, --Lesser Wizard Oil
			{ spellID = 13702 }, --Runed Truesilver Rod
			{ spellID = 25125 }, --Minor Mana Oil
			{ spellID = 13628 }, --Runed Golden Rod
			{ spellID = 7795 }, --Runed Silver Rod
			{ spellID = 25124 }, --Minor Wizard Oil
			{ spellID = 7421 }, --Runed Copper Rod
			{ spellID = 14810 }, --Greater Mystic Wand
			{ spellID = 14809 }, --Lesser Mystic Wand
			{ spellID = 14807 }, --Greater Magic Wand
			{ spellID = 14293 }, --Lesser Magic Wand
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968677 }, --Enchant Weapon - Unstoppable Assault
			{ spellID = 968680 }, --Enchant Weapon - Lucid Assault
			{ spellID = 968683 }, --Enchant Weapon - Spellbinder's Rage
			{ spellID = 968686 }, --Enchant Weapon - Ninja's Focus
			{ spellID = 968689 }, --Enchant Weapon - Grovewarden's Blessing
			{ spellID = 968692 }, --Enchant Weapon - Viscious Assault
			{ spellID = 968695 }, --Enchant Weapon - Arcane Dexterity
			{ spellID = 968698 }, --Enchant Weapon - Arcane Artillery
			{ spellID = 968701 }, --Enchant Weapon - Arcane Precision
			{ spellID = 968770 }, --Enchant Weapon - Crusader II
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968678 }, --Enchant Weapon - Greater Unstoppable Assault
			{ spellID = 968681 }, --Enchant Weapon - Greater Lucid Assualt
			{ spellID = 968684 }, --Enchant Weapon - Greater Spellbinder's Rage
			{ spellID = 968687 }, --Enchant Weapon - Greater Ninja's Focus
			{ spellID = 968690 }, --Enchant Weapon - Greater Grovewarden's Blessing
			{ spellID = 968693 }, --Enchant Weapon - Greater Viscious Assault
			{ spellID = 968696 }, --Enchant Weapon - Greater Arcane Dexterity
			{ spellID = 968699 }, --Enchant Weapon - Greater Arcane Artillery
			{ spellID = 968702 }, --Enchant Weapon - Greater Arcane Precision
			{ spellID = 968771 }, --Enchant Weapon - Crusader III
		},
	},

	-------------------
	--- Engineering ---
	-------------------
	["EngineeringCLASSIC"] = {
		{
			{ itemID = 18042, desc = "Quest See Tooltip", quest = {14183,14182, text = "Trade Thorium Shells for Arrows"}}, --Thorium Headed Arrow
			{ spellID = 19800 }, --Thorium Shells
			{ spellID = 12621 }, --Mithril Gyro-Shot
			{ spellID = 12596 }, --Hi-Impact Mithril Slugs
			{ spellID = 3947 }, --Crafted Solid Shot
			{ spellID = 3930 }, --Crafted Heavy Shot
			{ spellID = 3920 }, --Crafted Light Shot
		},
		{
			{ spellID = 19830 }, --Arcanite Dragonling
			{ spellID = 24356 }, --Bloodvine Goggles
			{ spellID = 24357 }, --Bloodvine Lens
			{ spellID = 23082 }, --Ultra-Flash Shadow Reflector
			{ spellID = 23081 }, --Hyper-Radiant Flame Reflector
			{ spellID = 23077 }, --Gyrofreeze Ice Reflector
			{ spellID = 12622 }, --Green Lens
			{ spellID = 19825 }, --Master Engineer's Goggles
			{ spellID = 19819 }, --Voice Amplification Modulator
			{ spellID = 23079 }, --Major Recombobulator
			{ spellID = 19794 }, --Spellpower Goggles Xtreme Plus
			{ spellID = 12624 }, --Mithril Mechanical Dragonling
			{ spellID = 12617 }, --Deepdive Helmet
			{ spellID = 12618 }, --Rose Colored Goggles
			{ spellID = 12616 }, --Parachute Cloak
			{ spellID = 12615 }, --Spellpower Goggles Xtreme
			{ spellID = 12607 }, --Catseye Ultra Goggles
			{ spellID = 12594 }, --Fire Goggles
			{ spellID = 3969 }, --Mechanical Dragonling
			{ spellID = 3966 }, --Craftsman's Monocle
			{ spellID = 12587 }, --Bright-Eye Goggles
			{ spellID = 3956 }, --Green Tinted Goggles
			{ spellID = 3952 }, --Minor Recombobulator
			{ spellID = 3940 }, --Shadow Goggles
			{ spellID = 3934 }, --Flying Tiger Goggles
		},
		{
			{ spellID = 19831 }, --Arcane Bomb
			{ spellID = 19799 }, --Dark Iron Bomb
			{ spellID = 23080 }, --Powerful Seaforium Charge
			{ spellID = 19790 }, --Thorium Grenade
			{ spellID = 23070 }, --Dense Dynamite
			{ spellID = 12619 }, --Hi-Explosive Bomb
			{ spellID = 12754 }, --The Big One
			{ spellID = 12603 }, --Mithril Frag Bomb
			{ spellID = 12716 }, --Goblin Mortar
			{ spellID = 12760 }, --Goblin Sapper Charge
			{ spellID = 13240 }, --The Mortar: Reloaded
			{ spellID = 23069 }, --EZ-Thro Dynamite II
			{ spellID = 3972 }, --Large Seaforium Charge
			{ spellID = 3968 }, --Goblin Land Mine
			{ spellID = 3967 }, --Big Iron Bomb
			{ spellID = 3962 }, --Iron Grenade
			{ spellID = 12586 }, --Solid Dynamite
			{ spellID = 3960 }, --Portable Bronze Mortar
			{ spellID = 3950 }, --Big Bronze Bomb
			{ spellID = 3946 }, --Heavy Dynamite
			{ spellID = 3941 }, --Small Bronze Bomb
			{ spellID = 3937 }, --Large Copper Bomb
			{ spellID = 8339 }, --EZ-Thro Dynamite
			{ spellID = 3933 }, --Small Seaforium Charge
			{ spellID = 3931 }, --Coarse Dynamite
			{ spellID = 3923 }, --Rough Copper Bomb
			{ spellID = 3919 }, --Rough Dynamite
		},
		{
			{ spellID = 22793 }, --Biznicks 247x128 Accurascope
			{ spellID = 12620 }, --Sniper Scope
			{ spellID = 12597 }, --Deadly Scope
			{ spellID = 3979 }, --Accurate Scope
			{ spellID = 3978 }, --Standard Scope
			{ spellID = 3977 }, --Crude Scope
		},
		{
			{ spellID = 22704 }, --Field Repair Bot 74A
			{ spellID = 30573 }, --Gnomish Tonk Controller
			{ spellID = 30561 }, --Goblin Tonk Controller
			{ spellID = 26443 }, --Firework Cluster Launcher
			{ spellID = 19814 }, --Masterwork Target Dummy
			{ spellID = 26426 }, --Large AtlasLoot.Colors.BLUE Rocket Cluster
			{ spellID = 26427 }, --Large AtlasLoot.Colors.GREEN Rocket Cluster
			{ spellID = 26428 }, --Large AtlasLoot.Colors.RED Rocket Cluster
			{ spellID = 23096 }, --Alarm-O-Bot
			{ spellID = 23078 }, --Goblin Jumper Cables XL
			{ spellID = 19793 }, --Lifelike Mechanical Toad
			{ spellID = 19567 }, --Salt Shaker
			{ spellID = 26011 }, --Tranquil Mechanical Yeti
			{ spellID = 23507 }, --Snake Burst Firework
			{ spellID = 26442 }, --Firework Launcher
			{ spellID = 26423 }, --Blue Rocket Cluster
			{ spellID = 26424 }, --Green Rocket Cluster
			{ spellID = 26425 }, --Red Rocket Cluster
			{ spellID = 12902 }, --Gnomish Net-o-Matic Projector
			{ spellID = 12715 }, --Goblin Rocket Fuel Recipe
			{ spellID = 12895 }, --Inlaid Mithril Cylinder Plans
			{ spellID = 15633 }, --Lil' Smoky
			{ spellID = 15628 }, --Pet Bombling
			{ spellID = 15255 }, --Mechanical Repair Kit
			{ spellID = 21940 }, --Snowmaster 9000
			{ spellID = 3965 }, --Advanced Target Dummy
			{ spellID = 8243 }, --Flash Bomb
			{ spellID = 26420 }, --Large Blue Rocket
			{ spellID = 26421 }, --Large Green Rocket
			{ spellID = 26422 }, --Large Red Rocket
		},
		{
			{ spellID = 3963 }, --Compact Harvest Reaper Kit
			{ spellID = 9273 }, --Goblin Jumper Cables
			{ spellID = 3959 }, --Discombobulator Ray
			{ spellID = 3957 }, --Ice Deflector
			{ spellID = 3955 }, --Explosive Sheep
			{ spellID = 9271 }, --Aquadynamic Fish Attractor
			{ spellID = 23067 }, --Blue Firework
			{ spellID = 23068 }, --Green Firework
			{ spellID = 23066 }, --Red Firework
			{ spellID = 6458 }, --Ornate Spyglass
			{ spellID = 26416 }, --Small Blue Rocket
			{ spellID = 26417 }, --Small Green Rocket
			{ spellID = 26418 }, --Small Red Rocket
			{ spellID = 3944 }, --Flame Deflector
			{ spellID = 8334 }, --Practice Lock
			{ spellID = 3932 }, --Target Dummy
			{ spellID = 3928 }, --Mechanical Squirrel
		},
		{
			{ spellID = 19815 }, --Delicate Arcanite Converter
			{ spellID = 19795 }, --Thorium Tube
			{ spellID = 39895 }, --Fused Wiring
			{ spellID = 19791 }, --Thorium Widget
			{ spellID = 23071 }, --Truesilver Transformer
			{ spellID = 19788 }, --Dense Blasting Powder
			{ spellID = 12599 }, --Mithril Casing
			{ spellID = 12591 }, --Unstable Trigger
			{ spellID = 12589 }, --Mithril Tube
			{ spellID = 12590 }, --Gyromatic Micro-Adjustor
			{ spellID = 12585 }, --Solid Blasting Powder
			{ spellID = 3961 }, --Gyrochronatom
			{ spellID = 3958 }, --Iron Strut
			{ spellID = 12584 }, --Gold Power Core
			{ spellID = 3953 }, --Bronze Framework
			{ spellID = 3942 }, --Whirring Bronze Gizmo
			{ spellID = 3945 }, --Heavy Blasting Powder
			{ spellID = 3938 }, --Bronze Tube
			{ spellID = 3973 }, --Silver Contact
			{ spellID = 3929 }, --Coarse Blasting Powder
			{ spellID = 3926 }, --Copper Modulator
			{ spellID = 3924 }, --Copper Tube
			{ spellID = 3922 }, --Handful of Copper Bolts
			{ spellID = 3918 }, --Rough Blasting Powder
		},
		{
			{ spellID = 22795 }, --Core Marksman Rifle
			{ spellID = 19833 }, --Flawless Arcanite Rifle
			{ spellID = 19796 }, --Dark Iron Rifle
			{ spellID = 19792 }, --Thorium Rifle
			{ spellID = 12614 }, --Mithril Heavy-bore Rifle
			{ spellID = 12595 }, --Mithril Blunderbuss
			{ spellID = 3954 }, --Moonsight Rifle
			{ spellID = 3949 }, --Silver-plated Shotgun
			{ spellID = 3939 }, --Lovingly Crafted Boomstick
			{ spellID = 3936 }, --Deadly Blunderbuss
			{ spellID = 3925 }, --Rough Boomstick
			{ spellID = 7430 }, --Arclight Spanner
		},
		{
			{ spellID = 23489 }, --Ultrasafe Transporter - Gadgetzan
			{ spellID = 23129 }, --World Enlarger
			{ spellID = 12907 }, --Gnomish Mind Control Cap
			{ spellID = 12905 }, --Gnomish Rocket Boots
			{ spellID = 12903 }, --Gnomish Harm Prevention Belt
			{ spellID = 12897 }, --Gnomish Goggles
			{ spellID = 30568 }, --Gnomish Flame Turret
			{ spellID = 23096 }, --Alarm-O-Bot
			{ spellID = 12759 }, --Gnomish Death Ray
			{ spellID = 12906 }, --Gnomish Battle Chicken
			{ spellID = 12902 }, --Gnomish Net-o-Matic Projector
			{ spellID = 12899 }, --Gnomish Shrink Ray
			{ spellID = 12895 }, --Inlaid Mithril Cylinder Plans
			{ spellID = 3971 }, --Gnomish Cloaking Device
			{ spellID = 9269 }, --Gnomish Universal Remote
		},
		{
			{ spellID = 23486 }, --Dimensional Ripper - Everlook
			{ spellID = 12758 }, --Goblin Rocket Helmet
			{ spellID = 8895 }, --Goblin Rocket Boots
			{ spellID = 12718 }, --Goblin Construction Helmet
			{ spellID = 12717 }, --Goblin Mining Helmet
			{ spellID = 30560 }, --Super Sapper Charge
			{ spellID = 30558 }, --The Bigger One
			{ spellID = 23078 }, --Goblin Jumper Cables XL
			{ spellID = 12908 }, --Goblin Dragon Gun
			{ spellID = 12754 }, --The Big One
			{ spellID = 12755 }, --Goblin Bomb Dispenser
			{ spellID = 12716 }, --Goblin Mortar
			{ spellID = 12715 }, --Goblin Rocket Fuel Recipe
			{ spellID = 12760 }, --Goblin Sapper Charge
			{ spellID = 13240 }, --The Mortar: Reloaded
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968043 }, --Focused Gnomish Magnifying Lense
			{ spellID = 968046 }, --Focused Gnomish Focusing Lense
			{ spellID = 968049 }, --Focused Gnomish Prismatic Lense
			{ spellID = 968052 }, --Focused Hipfire Scope
			{ spellID = 968055 }, --Focused Precision Scope
			{ spellID = 968058 }, --Focused Reflex Scope
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968044 }, --Polished Gnomish Magnifying Lense
			{ spellID = 968047 }, --Polished Gnomish Focusing Lense
			{ spellID = 968050 }, --Polished Gnomish Prismatic Lense
			{ spellID = 968053 }, --Polished Hipfire Scope
			{ spellID = 968056 }, --Polished Precision Scope
			{ spellID = 968059 }, --Polished Reflex Scope
		},
},

	-----------------
	--- First Aid ---
	-----------------
	["FirstAidCLASSIC"] = {
		{
			{ spellID = 23787 }, --Powerful Anti-Venom
			{ spellID = 18630 }, --Heavy Runecloth Bandage
			{ spellID = 18629 }, --Runecloth Bandage
			{ spellID = 10841 }, --Heavy Mageweave Bandage
			{ spellID = 10840 }, --Mageweave Bandage
			{ spellID = 7929 }, --Heavy Silk Bandage
			{ spellID = 7928 }, --Silk Bandage
			{ spellID = 7935 }, --Strong Anti-Venom
			{ spellID = 3278 }, --Heavy Wool Bandage
			{ spellID = 3277 }, --Wool Bandage
			{ spellID = 7934 }, --Anti-Venom
			{ spellID = 3276 }, --Heavy Linen Bandage
			{ spellID = 3275 }, --Linen Bandage
		},
	},

	----------------------
	--- Leatherworking ---
	----------------------
	["LeatherworkingCLASSIC"] = {
		{
			{ spellID = 22926 }, --Chromatic Cloak
			{ spellID = 22928 }, --Shifting Cloak
			{ spellID = 22927 }, --Hide of the Wild
			{ spellID = 19093 }, --Onyxia Scale Cloak
			{ spellID = 10574 }, --Wild Leather Cloak
			{ spellID = 10562 }, --Big Voodoo Cloak
			{ spellID = 7153 }, --Guardian Cloak
			{ spellID = 9198 }, --Frost Leather Cloak
			{ spellID = 9070 }, --Black Whelp Cloak
			{ spellID = 7953 }, --Deviate Scale Cloak
			{ spellID = 2159 }, --Fine Leather Cloak
			{ spellID = 3760 }, --Hillman's Cloak
			{ spellID = 2168 }, --Dark Leather Cloak
			{ spellID = 2162 }, --Embossed Leather Cloak
			{ spellID = 9058 }, --Handstitched Leather Cloak
		},
		{
			{ spellID = 28219 }, --Polar Tunic
			{ spellID = 19095 }, --Living Breastplate
			{ spellID = 24121 }, --Primal Batskin Jerkin
			{ spellID = 24124 }, --Blood Tiger Breastplate
			{ spellID = 19104 }, --Frostsaber Tunic
			{ spellID = 19102 }, --Runic Leather Armor
			{ spellID = 19098 }, --Wicked Leather Armor
			{ spellID = 19081 }, --Chimeric Vest
			{ spellID = 19086 }, --Ironfeather Breastplate
			{ spellID = 19079 }, --Stormshroud Armor
			{ spellID = 19076 }, --Volcanic Breastplate
			{ spellID = 19068 }, --Warbear Harness
			{ spellID = 10647 }, --Feathered Breastplate
			{ spellID = 10630 }, --Gauntlets of the Sea
			{ spellID = 10544 }, --Wild Leather Vest
			{ spellID = 10520 }, --Big Voodoo Robe
			{ spellID = 10499 }, --Nightscape Tunic
			{ spellID = 6661 }, --Barbaric Harness
			{ spellID = 9196 }, --Dusky Leather Armor
			{ spellID = 9197 }, --Green Whelp Armor
			{ spellID = 3773 }, --Guardian Armor
			{ spellID = 6704 }, --Thick Murloc Armor
			{ spellID = 4096 }, --Raptor Hide Harness
			{ spellID = 2166 }, --Toughened Leather Armor
			{ spellID = 24940 }, --Black Whelp Tunic
			{ spellID = 2169 }, --Dark Leather Tunic
			{ spellID = 3762 }, --Hillman's Leather Vest
			{ spellID = 6703 }, --Murloc Scale Breastplate
			{ spellID = 8322 }, --Moonglow Vest
			{ spellID = 3761 }, --Fine Leather Tunic
			{ spellID = 2160 }, --Embossed Leather Vest
			{ spellID = 2163 }, --White Leather Jerkin
			{ spellID = 7126 }, --Handstitched Leather Vest
		},
		{
			{ spellID = 28473 }, --Bramblewood Boots
			{ spellID = 22922 }, --Mongoose Boots
			{ spellID = 20853 }, --Corehound Boots
			{ spellID = 23705 }, --Dawn Treaders
			{ spellID = 44953 }, --Winter Boots
			{ spellID = 19063 }, --Chimeric Boots
			{ spellID = 19066 }, --Frostsaber Boots
			{ spellID = 10566 }, --Wild Leather Boots
			{ spellID = 10558 }, --Nightscape Boots
			{ spellID = 9207 }, --Dusky Boots
			{ spellID = 9208 }, --Swift Boots
			{ spellID = 2167 }, --Dark Leather Boots
			{ spellID = 2158 }, --Fine Leather Boots
			{ spellID = 2161 }, --Embossed Leather Boots
			{ spellID = 2149 }, --Handstitched Leather Boots
		},
		{
			{ spellID = 28220 }, --Polar Gloves
			{ spellID = 24122 }, --Primal Batskin Gloves
			{ spellID = 26279 }, --Stormshroud Gloves
			{ spellID = 19087 }, --Frostsaber Gloves
			{ spellID = 19084 }, --Devilsaur Gauntlets
			{ spellID = 19055 }, --Runic Leather Gauntlets
			{ spellID = 19053 }, --Chimeric Gloves
			{ spellID = 19049 }, --Wicked Leather Gauntlets
			{ spellID = 22711 }, --Shadowskin Gloves
			{ spellID = 21943 }, --Gloves of the Greatfather
			{ spellID = 7156 }, --Guardian Gloves
			{ spellID = 3771 }, --Barbaric Gloves
			{ spellID = 9149 }, --Heavy Earthen Gloves
			{ spellID = 3764 }, --Hillman's Leather Gloves
			{ spellID = 9148 }, --Pilferer's Gloves
			{ spellID = 3770 }, --Toughened Leather Gloves
			{ spellID = 9146 }, --Herbalist's Gloves
			{ spellID = 9145 }, --Fletcher's Gloves
			{ spellID = 3765 }, --Dark Leather Gloves
			{ spellID = 9074 }, --Nimble Leather Gloves
			{ spellID = 9072 }, --Red Whelp Gloves
			{ spellID = 7954 }, --Deviate Scale Gloves
			{ spellID = 2164 }, --Fine Leather Gloves
			{ spellID = 3756 }, --Embossed Leather Gloves
		},
		{
			{ spellID = 20854 }, --Molten Helm
			{ spellID = 28472 }, --Bramblewood Helm
			{ spellID = 19082 }, --Runic Leather Headband
			{ spellID = 19071 }, --Wicked Leather Headband
			{ spellID = 10632 }, --Helm of Fire
			{ spellID = 10546 }, --Wild Leather Helmet
			{ spellID = 10621 }, --Wolfshead Helm
			{ spellID = 10531 }, --Big Voodoo Mask
			{ spellID = 10507 }, --Nightscape Headband
			{ spellID = 10490 }, --Comfortable Leather Hat
		},
		{
			{ spellID = 19091 }, --Runic Leather Pants
			{ spellID = 19097 }, --Devilsaur Leggings
			{ spellID = 19083 }, --Wicked Leather Pants
			{ spellID = 19074 }, --Frostsaber Leggings
			{ spellID = 19080 }, --Warbear Woolies
			{ spellID = 19078 }, --Living Leggings
			{ spellID = 19073 }, --Chimeric Leggings
			{ spellID = 19067 }, --Stormshroud Pants
			{ spellID = 19059 }, --Volcanic Leggings
			{ spellID = 36074 }, --Blackstorm Leggings
			{ spellID = 36075 }, --Wildfeather Leggings
			{ spellID = 10572 }, --Wild Leather Leggings
			{ spellID = 10560 }, --Big Voodoo Pants
			{ spellID = 10548 }, --Nightscape Pants
			{ spellID = 7149 }, --Barbaric Leggings
			{ spellID = 9195 }, --Dusky Leather Leggings
			{ spellID = 7147 }, --Guardian Pants
			{ spellID = 3772 }, --Green Leather Armor
			{ spellID = 7133 }, --Fine Leather Pants
			{ spellID = 7135 }, --Dark Leather Pants
			{ spellID = 9068 }, --Light Leather Pants
			{ spellID = 3759 }, --Embossed Leather Pants
			{ spellID = 9064 }, --Rugged Leather Pants
			{ spellID = 2153 }, --Handstitched Leather Pants
		},
		{
			{ spellID = 23704 }, --Timbermaw Brawlers
			{ spellID = 24125 }, --Blood Tiger Shoulders
			{ spellID = 23706 }, --Golden Mantle of the Dawn
			{ spellID = 19103 }, --Runic Leather Shoulders
			{ spellID = 19101 }, --Volcanic Shoulders
			{ spellID = 19090 }, --Stormshroud Shoulders
			{ spellID = 23703 }, --Might of the Timbermaw
			{ spellID = 19062 }, --Ironfeather Shoulders
			{ spellID = 19061 }, --Living Shoulders
			{ spellID = 10529 }, --Wild Leather Shoulders
			{ spellID = 10516 }, --Nightscape Shoulders
			{ spellID = 7151 }, --Barbaric Shoulders
			{ spellID = 3769 }, --Dark Leather Shoulders
			{ spellID = 9147 }, --Earthen Leather Shoulders
			{ spellID = 3768 }, --Hillman's Shoulders
		},
		{
			{ spellID = 23709 }, --Corehound Belt
			{ spellID = 23707 }, --Lava Belt
			{ spellID = 23710 }, --Molten Belt
			{ spellID = 22921 }, --Girdle of Insight
			{ spellID = 28474 }, --Bramblewood Belt
			{ spellID = 19092 }, --Wicked Leather Belt
			{ spellID = 19072 }, --Runic Leather Belt
			{ spellID = 3779 }, --Barbaric Belt
			{ spellID = 9206 }, --Dusky Belt
			{ spellID = 3778 }, --Gem-studded Leather Belt
			{ spellID = 3775 }, --Guardian Belt
			{ spellID = 4097 }, --Raptor Hide Belt
			{ spellID = 3774 }, --Green Leather Belt
			{ spellID = 3766 }, --Dark Leather Belt
			{ spellID = 3767 }, --Hillman's Belt
			{ spellID = 7955 }, --Deviate Scale Belt
			{ spellID = 6702 }, --Murloc Scale Belt
			{ spellID = 3763 }, --Fine Leather Belt
			{ spellID = 3753 }, --Handstitched Leather Belt
		},
		{
			{ spellID = 28221 }, --Polar Bracers
			{ spellID = 24123 }, --Primal Batskin Bracers
			{ spellID = 19065 }, --Runic Leather Bracers
			{ spellID = 19052 }, --Wicked Leather Bracers
			{ spellID = 3777 }, --Guardian Leather Bracers
			{ spellID = 9202 }, --Green Whelp Bracers
			{ spellID = 6705 }, --Murloc Scale Bracers
			{ spellID = 9201 }, --Dusky Bracers
			{ spellID = 3776 }, --Green Leather Bracers
			{ spellID = 23399 }, --Barbaric Bracers
			{ spellID = 9065 }, --Light Leather Bracers
			{ spellID = 9059 }, --Handstitched Leather Bracers
		},
		{
			{ spellID = 28222 }, --Icy Scale Breastplate
			{ spellID = 24703 }, --Dreamscale Breastplate
			{ spellID = 24851 }, --Sandstalker Breastplate
			{ spellID = 24848 }, --Spitfire Breastplate
			{ spellID = 19054 }, --Red Dragonscale Breastplate
			{ spellID = 19085 }, --Black Dragonscale Breastplate
			{ spellID = 19077 }, --Blue Dragonscale Breastplate
			{ spellID = 19050 }, --Green Dragonscale Breastplate
			{ spellID = 19051 }, --Heavy Scorpid Vest
			{ spellID = 10650 }, --Dragonscale Breastplate
			{ spellID = 10525 }, --Tough Scorpid Breastplate
			{ spellID = 10511 }, --Turtle Scale Breastplate
		},
		{
			{ spellID = 20855 }, --Black Dragonscale Boots
			{ spellID = 10554 }, --Tough Scorpid Boots
		},
		{
			{ spellID = 28223 }, --Icy Scale Gauntlets
			{ spellID = 23708 }, --Chromatic Gauntlets
			{ spellID = 24850 }, --Sandstalker Gauntlets
			{ spellID = 24847 }, --Spitfire Gauntlets
			{ spellID = 24655 }, --Green Dragonscale Gauntlets
			{ spellID = 19064 }, --Heavy Scorpid Gauntlets
			{ spellID = 10619 }, --Dragonscale Gauntlets
			{ spellID = 10542 }, --Tough Scorpid Gloves
			{ spellID = 10509 }, --Turtle Scale Gloves
		},
		{
			{ spellID = 19088 }, --Heavy Scorpid Helm
			{ spellID = 10570 }, --Tough Scorpid Helm
			{ spellID = 10552 }, --Turtle Scale Helm
		},
		{
			{ spellID = 24654 }, --Blue Dragonscale Leggings
			{ spellID = 19107 }, --Black Dragonscale Leggings
			{ spellID = 19075 }, --Heavy Scorpid Leggings
			{ spellID = 19060 }, --Green Dragonscale Leggings
			{ spellID = 36076 }, --Dragonstrike Leggings
			{ spellID = 10568 }, --Tough Scorpid Leggings
			{ spellID = 10556 }, --Turtle Scale Leggings
		},
		{
			{ spellID = 19094 }, --Black Dragonscale Shoulders
			{ spellID = 19100 }, --Heavy Scorpid Shoulders
			{ spellID = 19089 }, --Blue Dragonscale Shoulders
			{ spellID = 10564 }, --Tough Scorpid Shoulders
		},
		{
			{ spellID = 19070 }, --Heavy Scorpid Belt
		},
		{
			{ spellID = 28224 }, --Icy Scale Bracers
			{ spellID = 22923 }, --Swift Flight Bracers
			{ spellID = 24849 }, --Sandstalker Bracers
			{ spellID = 24846 }, --Spitfire Bracers
			{ spellID = 19048 }, --Heavy Scorpid Bracers
			{ spellID = 10533 }, --Tough Scorpid Bracers
			{ spellID = 10518 }, --Turtle Scale Bracers
		},
		{
			{ spellID = 19058 }, --Rugged Armor Kit
			{ spellID = 10487 }, --Thick Armor Kit
			{ spellID = 3780 }, --Heavy Armor Kit
			{ spellID = 2165 }, --Medium Armor Kit
			{ spellID = 2152 }, --Light Armor Kit
		},
		{
			{ spellID = 14930 }, --Quickdraw Quiver
			{ spellID = 14932 }, --Thick Leather Ammo Pouch
			{ spellID = 9194 }, --Heavy Leather Ammo Pouch
			{ spellID = 9193 }, --Heavy Quiver
			{ spellID = 9060 }, --Light Leather Quiver
			{ spellID = 9062 }, --Small Leather Ammo Pouch
		},
		{
			{ spellID = 22815 }, --Gordok Ogre Suit
			{ spellID = 23190 }, --Heavy Leather Ball
			{ spellID = 5244 }, --Kodo Hide Bag
		},
		{
			{ spellID = 22331 }, --Rugged Leather
			{ spellID = 19047 }, --Cured Rugged Hide
			{ spellID = 20650 }, --Thick Leather
			{ spellID = 10482 }, --Cured Thick Hide
			{ spellID = 20649 }, --Heavy Leather
			{ spellID = 3818 }, --Cured Heavy Hide
			{ spellID = 20648 }, --Medium Leather
			{ spellID = 3817 }, --Cured Medium Hide
			{ spellID = 3816 }, --Cured Light Hide
			{ spellID = 2881 }, --Light Leather
		},
		{
			{ spellID = 24654 }, --Blue Dragonscale Leggings
			{ spellID = 24655 }, --Green Dragonscale Gauntlets
			{ spellID = 36076 }, --Dragonstrike Leggings
			{ spellID = 10650 }, --Dragonscale Breastplate
			{ spellID = 10619 }, --Dragonscale Gauntlets
		},
		{
			{ spellID = 10630 }, --Gauntlets of the Sea
			{ spellID = 10632 }, --Helm of Fire
			{ spellID = 36074 }, --Blackstorm Leggings
		},
		{
			{ spellID = 10621 }, --Wolfshead Helm
			{ spellID = 10647 }, --Feathered Breastplate
			{ spellID = 36075 }, --Wildfeather Leggings
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968001 }, --Sturdy Yeti Gambeson
			{ spellID = 968004 }, --Sturdy Devilsaur Gambeson
			{ spellID = 968007 }, --Sturdy Plaguebat Gambeson
			{ spellID = 968010 }, --Sturdy Sandworm Gambeson
			{ spellID = 968013 }, --Sturdy Black Scale Gambeson
			{ spellID = 968016 }, --Sturdy Blue Scale Gambeson
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968002 }, --Mastercraft Yeti Gambeson
			{ spellID = 968005 }, --Mastercraft Devilsaur Gambeson
			{ spellID = 968008 }, --Mastercraft Plaguebat Gambeson
			{ spellID = 968011 }, --Mastercraft Sandworm Gambeson
			{ spellID = 968014 }, --Mastercraft Black Scale Gambeson
			{ spellID = 968017 }, --Mastercraft Blue Scale Gambeson
		},
	},

	--------------
	--- Mining ---
	--------------
	["MiningCLASSIC"] = {
		{
			{ spellID = 22967 }, --Smelt Elementium
			{ spellID = 70524 }, --Enchanted Thorium
			{ spellID = 16153 }, --Smelt Thorium
			{ spellID = 14891 }, --Smelt Dark Iron
			{ spellID = 10098 }, --Smelt Truesilver
			{ spellID = 10097 }, --Smelt Mithril
			{ spellID = 3569 }, --Smelt Steel
			{ spellID = 3308 }, --Smelt Gold
			{ spellID = 3307 }, --Smelt Iron
			{ spellID = 2658 }, --Smelt Silver
			{ spellID = 2659 }, --Smelt Bronze
			{ spellID = 3304 }, --Smelt Tin
			{ spellID = 2657 }, --Smelt Copper
		},
		{
			{ itemID = 10620 }, --Thorium
			{ itemID = 11370 }, --Dark Iron
			{ itemID = 7911 }, --Truesilver
			{ itemID = 3858 }, --Mithril
			{ itemID = 2776 }, --Gold
			{ itemID = 2772 }, --Iron
			{ itemID = 2775 }, --Silver
			{ itemID = 2771 }, --Tin
			{ itemID = 2770 }, --Copper
		},
	},

	-----------------
	--- Tailoring ---
	-----------------
	["TailoringCLASSIC"] = {
		{
			{ spellID = 28208 }, --Glacial Cloak
			{ spellID = 28210 }, --Gaea's Embrace
			{ spellID = 22870 }, --Cloak of Warding
			{ spellID = 23662 }, --Wisdom of the Timbermaw
			{ spellID = 18422 }, --Cloak of Fire
			{ spellID = 18409 }, --Runecloth Cloak
			{ spellID = 3862 }, --Icy Cloak
			{ spellID = 63742 }, --Spidersilk Drape
			{ spellID = 18420 }, --Brightcloth Cloak
			{ spellID = 18418 }, --Cindercloth Cloak
			{ spellID = 3861 }, --Long Silken Cloak
			{ spellID = 8789 }, --Crimson Silk Cloak
			{ spellID = 8786 }, --Azure Silk Cloak
			{ spellID = 8780 }, --Hands of Darkness
			{ spellID = 3844 }, --Heavy Woolen Cloak
			{ spellID = 6521 }, --Pearl-clasped Cloak
			{ spellID = 2402 }, --Woolen Cape
			{ spellID = 2397 }, --Reinforced Linen Cape
			{ spellID = 2387 }, --Linen Cloak
		},
		{
			{ spellID = 23666 }, --Flarecore Robe
			{ spellID = 28207 }, --Glacial Vest
			{ spellID = 18457 }, --Robe of the Archmage
			{ spellID = 18458 }, --Robe of the Void
			{ spellID = 18456 }, --Truefaith Vestments
			{ spellID = 24091 }, --Bloodvine Vest
			{ spellID = 22902 }, --Mooncloth Robe
			{ spellID = 18447 }, --Mooncloth Vest
			{ spellID = 28480 }, --Sylvan Vest
			{ spellID = 18451 }, --Felcloth Robe
			{ spellID = 18446 }, --Wizardweave Robe
			{ spellID = 18436 }, --Robe of Winter Night
			{ spellID = 12070 }, --Dreamweave Vest
			{ spellID = 18416 }, --Ghostweave Vest
			{ spellID = 22813 }, --Gordok Ogre Suit
			{ spellID = 18414 }, --Brightcloth Robe
			{ spellID = 18408 }, --Cindercloth Vest
			{ spellID = 18406 }, --Runecloth Robe
			{ spellID = 18407 }, --Runecloth Tunic
			{ spellID = 18404 }, --Frostweave Robe
			{ spellID = 18403 }, --Frostweave Tunic
			{ spellID = 26407 }, --Festive AtlasLoot.Colors.RED Pant Suit
			{ spellID = 26403 }, --Festival Dress
			{ spellID = 12093 }, --Tuxedo Jacket
			{ spellID = 44950 }, --Green Winter Clothes
			{ spellID = 44958 }, --Red Winter Clothes
			{ spellID = 12091 }, --White Wedding Dress
			{ spellID = 50644 }, --Haliscan Jacket
			{ spellID = 12077 }, --Simple Black Dress
			{ spellID = 12069 }, --Cindercloth Robe
			{ spellID = 12056 }, --Red Mageweave Vest
			{ spellID = 12055 }, --Shadoweave Robe
			{ spellID = 12050 }, --Black Mageweave Robe
			{ spellID = 12048 }, --Black Mageweave Vest
			{ spellID = 8802 }, --Crimson Silk Robe
			{ spellID = 8770 }, --Robe of Power
			{ spellID = 8791 }, --Crimson Silk Vest
			{ spellID = 8764 }, --Earthen Vest
			{ spellID = 8784 }, --Green Silk Armor
			{ spellID = 3859 }, --Azure Silk Vest
			{ spellID = 6692 }, --Robes of Arcana
			{ spellID = 6690 }, --Lesser Wizard's Robe
			{ spellID = 7643 }, --Greater Adept's Robe
			{ spellID = 8467 }, --White Woolen Dress
			{ spellID = 2403 }, --Gray Woolen Robe
			{ spellID = 7639 }, --Blue Overalls
			{ spellID = 2399 }, --Green Woolen Vest
			{ spellID = 2395 }, --Barbaric Linen Vest
			{ spellID = 7633 }, --Blue Linen Robe
			{ spellID = 7630 }, --Blue Linen Vest
			{ spellID = 7629 }, --Red Linen Vest
			{ spellID = 8465 }, --Simple Dress
			{ spellID = 2389 }, --Red Linen Robe
			{ spellID = 7623 }, --Brown Linen Robe
			{ spellID = 7624 }, --White Linen Robe
			{ spellID = 2385 }, --Brown Linen Vest
		},
		{
			{ spellID = 24093 }, --Bloodvine Boots
			{ spellID = 24903 }, --Runed Stygian Boots
			{ spellID = 19435 }, --Mooncloth Boots
			{ spellID = 23664 }, --Argent Boots
			{ spellID = 18437 }, --Felcloth Boots
			{ spellID = 18423 }, --Runecloth Boots
			{ spellID = 12088 }, --Cindercloth Boots
			{ spellID = 12082 }, --Shadoweave Boots
			{ spellID = 12073 }, --Black Mageweave Boots
			{ spellID = 3860 }, --Boots of the Enchanter
			{ spellID = 3856 }, --Spider Silk Slippers
			{ spellID = 3855 }, --Spidersilk Boots
			{ spellID = 3847 }, --Red Woolen Boots
			{ spellID = 2401 }, --Woolen Boots
			{ spellID = 3845 }, --Soft-soled Linen Boots
			{ spellID = 2386 }, --Linen Boots
			{ spellID = 12045 }, --Simple Linen Boots
			{ spellID = 49677 }, --Dress Shoes
		},
		{
			{ spellID = 20849 }, --Flarecore Gloves
			{ spellID = 28205 }, --Glacial Gloves
			{ spellID = 18454 }, --Gloves of Spell Mastery
			{ spellID = 22867 }, --Felcloth Gloves
			{ spellID = 22868 }, --Inferno Gloves
			{ spellID = 22869 }, --Mooncloth Gloves
			{ spellID = 12067 }, --Dreamweave Gloves
			{ spellID = 18417 }, --Runecloth Gloves
			{ spellID = 18415 }, --Brightcloth Gloves
			{ spellID = 18412 }, --Cindercloth Gloves
			{ spellID = 18413 }, --Ghostweave Gloves
			{ spellID = 18411 }, --Frostweave Gloves
			{ spellID = 12066 }, --Red Mageweave Gloves
			{ spellID = 12071 }, --Shadoweave Gloves
			{ spellID = 12053 }, --Black Mageweave Gloves
			{ spellID = 8804 }, --Crimson Silk Gloves
			{ spellID = 8782 }, --Truefaith Gloves
			{ spellID = 3854 }, --Azure Silk Gloves
			{ spellID = 3852 }, --Gloves of Meditation
			{ spellID = 3868 }, --Phoenix Gloves
			{ spellID = 3843 }, --Heavy Woolen Gloves
			{ spellID = 3840 }, --Heavy Linen Gloves
		},
		{
			{ spellID = 18452 }, --Mooncloth Circlet
			{ spellID = 28481 }, --Sylvan Crown
			{ spellID = 18450 }, --Wizardweave Turban
			{ spellID = 18444 }, --Runecloth Headband
			{ spellID = 18442 }, --Felcloth Hood
			{ spellID = 12092 }, --Dreamweave Circlet
			{ spellID = 12086 }, --Shadoweave Mask
			{ spellID = 12081 }, --Admiral's Hat
			{ spellID = 12084 }, --Red Mageweave Headband
			{ spellID = 12072 }, --Black Mageweave Headband
			{ spellID = 12059 }, --White Bandit Mask
			{ spellID = 3858 }, --Shadow Hood
			{ spellID = 3857 }, --Enchanter's Cowl
			{ spellID = 8762 }, --Silk Headband
			{ spellID = 8760 }, --Azure Silk Hood
		},
		{
			{ spellID = 23667 }, --Flarecore Leggings
			{ spellID = 24092 }, --Bloodvine Leggings
			{ spellID = 24901 }, --Runed Stygian Leggings
			{ spellID = 18440 }, --Mooncloth Leggings
			{ spellID = 18439 }, --Brightcloth Pants
			{ spellID = 18441 }, --Ghostweave Pants
			{ spellID = 18438 }, --Runecloth Pants
			{ spellID = 18434 }, --Cindercloth Pants
			{ spellID = 18424 }, --Frostweave Pants
			{ spellID = 18419 }, --Felcloth Pants
			{ spellID = 18421 }, --Wizardweave Leggings
			{ spellID = 12089 }, --Tuxedo Pants
			{ spellID = 50647 }, --Haliscan Pantaloons
			{ spellID = 12060 }, --Red Mageweave Pants
			{ spellID = 12052 }, --Shadoweave Pants
			{ spellID = 12049 }, --Black Mageweave Leggings
			{ spellID = 8758 }, --Azure Silk Pants
			{ spellID = 3851 }, --Phoenix Pants
			{ spellID = 12047 }, --Colorful Kilt
			{ spellID = 3850 }, --Heavy Woolen Pants
			{ spellID = 12046 }, --Simple Kilt
			{ spellID = 3842 }, --Handstitched Linen Britches
			{ spellID = 3914 }, --Brown Linen Pants
			{ spellID = 12044 }, --Simple Linen Pants
		},
		{
			{ spellID = 20848 }, --Flarecore Mantle
			{ spellID = 23665 }, --Argent Shoulders
			{ spellID = 23663 }, --Mantle of the Timbermaw
			{ spellID = 18448 }, --Mooncloth Shoulders
			{ spellID = 28482 }, --Sylvan Shoulders
			{ spellID = 18453 }, --Felcloth Shoulders
			{ spellID = 18449 }, --Runecloth Shoulders
			{ spellID = 12078 }, --Red Mageweave Shoulders
			{ spellID = 12076 }, --Shadoweave Shoulders
			{ spellID = 12074 }, --Black Mageweave Shoulders
			{ spellID = 8799 }, --Crimson Silk Pantaloons
			{ spellID = 8795 }, --Azure Shoulders
			{ spellID = 8793 }, --Crimson Silk Shoulders
			{ spellID = 8774 }, --Green Silken Shoulders
			{ spellID = 3849 }, --Reinforced Woolen Shoulders
			{ spellID = 3848 }, --Double-stitched Woolen Shoulders
		},
		{
			{ spellID = 22866 }, --Belt of the Archmage
			{ spellID = 24902 }, --Runed Stygian Belt
			{ spellID = 18410 }, --Ghostweave Belt
			{ spellID = 18402 }, --Runecloth Belt
			{ spellID = 3864 }, --Star Belt
			{ spellID = 8797 }, --Earthen Silk Belt
			{ spellID = 3863 }, --Spider Belt
			{ spellID = 8766 }, --Azure Silk Belt
			{ spellID = 8772 }, --Crimson Silk Belt
			{ spellID = 8776 }, --Linen Belt
		},
		{
			{ spellID = 22759 }, --Flarecore Wraps
			{ spellID = 28209 }, --Glacial Wrists
			{ spellID = 3841 }, --Green Linen Bracers
		},
		{
			{ spellID = 26087 }, --Core Felcloth Bag
			{ spellID = 18455 }, --Bottomless Bag
			{ spellID = 26086 }, --Felcloth Bag
			{ spellID = 27660 }, --Big Bag of Enchantment
			{ spellID = 18445 }, --Mooncloth Bag
			{ spellID = 27725 }, --Satchel of Cenarius
			{ spellID = 27659 }, --Enchanted Runecloth Bag
			{ spellID = 27724 }, --Cenarion Herb Bag
			{ spellID = 26085 }, --Soul Pouch
			{ spellID = 27658 }, --Enchanted Mageweave Pouch
			{ spellID = 18405 }, --Runecloth Bag
			{ spellID = 12079 }, --Red Mageweave Bag
			{ spellID = 12065 }, --Mageweave Bag
			{ spellID = 6695 }, --Black Silk Pack
			{ spellID = 6693 }, --Green Silk Pack
			{ spellID = 3813 }, --Small Silk Pack
			{ spellID = 6688 }, --Red Woolen Bag
			{ spellID = 3758 }, --Green Woolen Bag
			{ spellID = 3757 }, --Woolen Bag
			{ spellID = 6686 }, --Red Linen Bag
			{ spellID = 3755 }, --Linen Bag
		},
		{
			{ spellID = 18560 }, --Mooncloth
			{ spellID = 18401 }, --Bolt of Runecloth
			{ spellID = 3865 }, --Bolt of Mageweave
			{ spellID = 3839 }, --Bolt of Silk Cloth
			{ spellID = 2964 }, --Bolt of Woolen Cloth
			{ spellID = 2963 }, --Bolt of Linen Cloth
		},
		{
			{ spellID = 12085 }, --Tuxedo Shirt
			{ spellID = 12080 }, --Pink Mageweave Shirt
			{ spellID = 12075 }, --Lavender Mageweave Shirt
			{ spellID = 12064 }, --Orange Martial Shirt
			{ spellID = 12061 }, --Orange Mageweave Shirt
			{ spellID = 3873 }, --Black Swashbuckler's Shirt
			{ spellID = 21945 }, --Green Holiday Shirt
			{ spellID = 3872 }, --Rich Purple Silk Shirt
			{ spellID = 8489 }, --Red Swashbuckler's Shirt
			{ spellID = 3871 }, --Formal White Shirt
			{ spellID = 8483 }, --White Swashbuckler's Shirt
			{ spellID = 3870 }, --Dark Silk Shirt
			{ spellID = 3869 }, --Bright Yellow Shirt
			{ spellID = 7892 }, --Stylish Blue Shirt
			{ spellID = 7893 }, --Stylish Green Shirt
			{ spellID = 3866 }, --Stylish Red Shirt
			{ spellID = 2406 }, --Gray Woolen Shirt
			{ spellID = 2396 }, --Green Linen Shirt
			{ spellID = 2394 }, --Blue Linen Shirt
			{ spellID = 2392 }, --Red Linen Shirt
			{ spellID = 2393 }, --White Linen Shirt
			{ spellID = 3915 }, --Brown Linen Shirt
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 968061 }, --Chain Cloak Lining
			{ spellID = 968064 }, --Sustaining Cloak Lining
			{ spellID = 968067 }, --Flowing Cloak Lining
			{ spellID = 968070 }, --Rampager's Cloak Lining
			{ spellID = 968073 }, --Absorptive Cloak Lining
			{ spellID = 968076 }, --Nimble Cloak Lining
		},
	},
	["WoodworkingCLASSIC"] = {
		{
			{spellID = 808965}, --Handmade Chest
			{spellID = 808966}, --Fishing Stool Kit
			{spellID = 808974}, --Sturdy Polearm
			{spellID = 808975}, --Copper Tipped Spear
			{spellID = 808976}, --Silver Infused Spear
			{spellID = 808977}, --Ironshadow Polearm
			{spellID = 808978}, --Mithril Trident
			{spellID = 1005020}, --Forestwood Page
			{spellID = 1005021}, --Forestwood Fiber
			{spellID = 1005023}, --Forestwood Shaft
			{spellID = 1005038}, --Wildwood Page
			{spellID = 1005039}, --Wildwood Fiber
			{spellID = 1005040}, --Wildwood Shaft
			{spellID = 1005041}, --Everwood Page
			{spellID = 1005042}, --Everwood Fiber
			{spellID = 1005043}, --Everwood Shaft
			{spellID = 1005044}, --Grovewood Page
			{spellID = 1005045}, --Grovewood Fiber
			{spellID = 1005046}, --Grovewood Shaft
			{spellID = 1005047}, --Heartwood Page
			{spellID = 1005048}, --Heartwood Fiber
			{spellID = 1005049}, --Heartwood Shaft
			{spellID = 1015015}, --Forestwood Upgrade Kit
			{spellID = 1015016}, --Wildwood Upgrade Kit
			{spellID = 1015017}, --Everwood Upgrade Kit
			{spellID = 1015018}, --Grovewood Upgrade Kit
			{spellID = 1015019}, --Heartwood Upgrade Kit
			{spellID = 1061533}, --Simple Bow
			{spellID = 1061534}, --Forestwood Bow
			{spellID = 1061535}, --Malachite-Infused Bow
			{spellID = 1061536}, --Wildwood Bow
			{spellID = 1061537}, --Gemmed Wildwood Bow
			{spellID = 1061538}, --Everwood Bow
			{spellID = 1061539}, --Moss Agate-Infused Bow
			{spellID = 1061540}, --Grovewood Bow
			{spellID = 1061541}, --Mystical Grovewood Bow
			{spellID = 1061542}, --Heartwood Bow
			{spellID = 1061543}, --Moonstone Bow
			{spellID = 1061544}, --Brushed Bronze Bow
			{spellID = 1061545}, --Reliable Crossbow
			{spellID = 1061546}, --Forestwood Crossbow
			{spellID = 1061547}, --Wildwood Crossbow
			{spellID = 1061548}, --Sturdy Wildwood Crossbow
			{spellID = 1061549}, --Drowned Crossbow
			{spellID = 1061550}, --Everwood Crossbow
			{spellID = 1061551}, --Leatherbound Grovewood Crossbow
			{spellID = 1061552}, --Grovewood Crossbow
			{spellID = 1061553}, --Golden Grovewood Crossbow
			{spellID = 1061554}, --Heartwood Crossbow
			{spellID = 1061555}, --Lunar-Focused Crossbow
			{spellID = 1061556}, --Wooden Buckler
			{spellID = 1061557}, --Forestwood Buckler
			{spellID = 1061558}, --Copper-Banded Buckler
			{spellID = 1061559}, --Wildwood Buckler
			{spellID = 1061560}, --Sturdy Everwood Shield
			{spellID = 1061561}, --Red Grovewood Buckler
			{spellID = 1061562}, --Imbued Grovewood Shield
			{spellID = 1061563}, --Reinforced Heartwood Shield
			{spellID = 1061564}, --Swift Golden Buckler
			{spellID = 1061565}, --Spirit Communion Rod
			{spellID = 1061566}, --Wooden Effigy
			{spellID = 1061570}, --Blackened Spellbook
			{spellID = 1061571}, --Green Gembound Pages
			{spellID = 1061572}, --Red Stained Grimoire
			{spellID = 1061573}, --Shadow Tome
			{spellID = 1061574}, --Glowing Jade Tome
			{spellID = 1061575}, --Quickcasting Spellbook
			{spellID = 1061576}, --Bound Healing Tome
			{spellID = 1061577}, --Runeweave Spellbook
			{spellID = 1061578}, --Makeshift Throwing Hatchet
			{spellID = 1061579}, --Wellmade Throwing Hatchet
			{spellID = 1061580}, --Carved Boomerang
			{spellID = 1061581}, --Sturdy Throwing Axe
			{spellID = 1061582}, --Painted Boomerang
			{spellID = 1061583}, --Heavy Throwing Hatchet
			{spellID = 1061584}, --Mithril Throwing Knife
			{spellID = 1061585}, --Forestwood Staff
			{spellID = 1061586}, --Sturdy Forestwood Staff
			{spellID = 1061587}, --Shadow-Fused Staff
			{spellID = 1061588}, --Strong Wildwood Staff
			{spellID = 1061589}, --Agate Imbued Staff
			{spellID = 1061590}, --Moonstone Staff
			{spellID = 1061591}, --Blackened Staff
			{spellID = 1061592}, --Mana-Infused Staff
			{spellID = 1061593}, --Jade Staff
			{spellID = 1061594}, --Heartwood Combat Staff
			{spellID = 1061595}, --Blue Sapphire Staff
			{spellID = 1061596}, --Tome of Forceful Nature
			{spellID = 1061597}, --Heartwood Charm
			{spellID = 1061598}, --Effigy of Overgrowth 
			{spellID = 1061599}, --Splintering Staff 
			{spellID = 1061600}, --Interwoven Infused Staff
			{spellID = 1061601}, --Gemmed Tiki Mask
			{spellID = 1061621}, --Ironbark Battlestaff
			{spellID = 1061622}, --Spirit Stick
			{spellID = 1061623}, --Bloodroot Lance
			{spellID = 1061624}, --Redbind Crossbow
			{spellID = 1061625}, --Runefletched Greatbow
			{spellID = 1061626}, --Adept Angler's Pole
			{spellID = 1061627}, --Blackwood Shield
			{spellID = 1061628}, --Wuju Tiki Shield
			{spellID = 1061629}, --Wildclaw
			{spellID = 1061630}, --Aquamarine Augur's Staff
			{spellID = 1061631}, --Lifestealer
			{spellID = 1061900}, --Forestwood Arrow
			{spellID = 1061901}, --Everwood Arrow
			{spellID = 1061902}, --Grovewood Arrow
			{spellID = 1061903}, --Masterwork Arrow
			{spellID = 1061904}, --Wildwood Arrow
		}
	},
	["WoodcuttingCLASSIC"] = {
		{
			{spellID = 13977861}, --Refine Forestwood Plank
			{spellID = 13977881}, --Refine Wildwood Plank
			{spellID = 13977888}, --Refine Everwood Plank
			{spellID = 13977889}, --Refine Grovewood Plank
			{spellID = 13977890}, --Refine Heartwood Plank
		}
	}
})