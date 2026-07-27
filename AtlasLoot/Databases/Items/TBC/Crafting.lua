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
--- Other
---- Crafted Epic Weapons

-----------------------
--- Tradeskill List ---
-----------------------


AtlasLoot:AddItemData("dontSort", {
	---------------
	--- Alchemy ---
	---------------
	["AlchemyTBC"] = {
		{
			{ spellID = 28558 }, --Elixir of Major Shadow Power
			{ spellID = 28556 }, --Elixir of Major Firepower
			{ spellID = 38960 }, --Fel Strength Elixir
			{ spellID = 28553 }, --Elixir of Major Agility
			{ spellID = 28549 }, --Elixir of Major Frost Power
			{ spellID = 33741 }, --Elixir of Mastery
			{ spellID = 28545 }, --Elixir of Healing Power
			{ spellID = 28544 }, --Elixir of Major Strength
			{ spellID = 33740 }, --Adept's Elixir
			{ spellID = 33738 }, --Onslaught Elixir
		},
		{
			{ spellID = 28578 }, --Elixir of Empowerment
			{ spellID = 28570 }, --Elixir of Major Mageblood
			{ spellID = 28557 }, --Elixir of Major Defense
			{ spellID = 39639 }, --Elixir of Ironskin
			{ spellID = 39637 }, --Earthen Elixir
			{ spellID = 39638 }, --Elixir of Draenic Wisdom
			{ spellID = 39636 }, --Elixir of Major Fortitude
		},
		{
			{ spellID = 28586 }, --Super Rejuvenation Potion
			{ spellID = 38961 }, --Fel Mana Potion
			{ spellID = 28579 }, --Ironshield Potion
			{ spellID = 28575 }, --Major Arcane Protection Potion
			{ spellID = 28571 }, --Major Fire Protection Potion
			{ spellID = 28572 }, --Major Frost Protection Potion
			{ spellID = 28577 }, --Major Holy Protection Potion
			{ spellID = 28573 }, --Major Nature Protection Potion
			{ spellID = 28576 }, --Major Shadow Protection Potion
			{ spellID = 28565 }, --Destruction Potion
			{ spellID = 28564 }, --Haste Potion
			{ spellID = 28563 }, --Heroic Potion
			{ spellID = 28562 }, --Major Dreamless Sleep Potion
			{ spellID = 38962 }, --Fel Regeneration Potion
			{ spellID = 28555 }, --Super Mana Potion
			{ spellID = 28554 }, --Shrouding Potion
			{ spellID = 45061 }, --Mad Alchemist's Potion
			{ spellID = 28551 }, --Super Healing Potion
			{ spellID = 28550 }, --Insane Strength Potion
			{ spellID = 28546 }, --Sneaking Potion
			{ spellID = 33733 }, --Unstable Mana Potion
			{ spellID = 33732 }, --Volatile Healing Potion
		},
		{
			{ spellID = 42736 }, --Flask of Chromatic Wonder
			{ spellID = 28590 }, --Flask of Blinding Light
			{ spellID = 28587 }, --Flask of Fortification
			{ spellID = 28588 }, --Flask of Mighty Restoration
			{ spellID = 28591 }, --Flask of Pure Death
			{ spellID = 28589 }, --Flask of Relentless Assault
		},
		{
			{ spellID = 29688 }, --Transmute: Primal Might
			{ spellID = 32765 }, --Transmute: Earthstorm Diamond
			{ spellID = 32766 }, --Transmute: Skyfire Diamond
			{ spellID = 28585 }, --Transmute: Primal Earth to Life
			{ spellID = 28583 }, --Transmute: Primal Fire to Mana
			{ spellID = 28584 }, --Transmute: Primal Life to Earth
			{ spellID = 28582 }, --Transmute: Primal Mana to Fire
			{ spellID = 28580 }, --Transmute: Primal Shadow to Water
			{ spellID = 28581 }, --Transmute: Primal Water to Shadow
			{ spellID = 28566 }, --Transmute: Primal Air to Fire
			{ spellID = 28567 }, --Transmute: Primal Earth to Water
			{ spellID = 28568 }, --Transmute: Primal Fire to Earth
			{ spellID = 28569 }, --Transmute: Primal Water to Air
		},
		{
			{ spellID = 24266 }, --Gurubashi Mojo Madness
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
			{ spellID = 979362 }, --Impure Flask of Manifesting Power
			{ spellID = 979364 }, --Impure Flask of the Warsong
			{ spellID = 979366 }, --Impure Flask of the Kirin Tor
			{ spellID = 979368 }, --Impure Flask of Butchery
			{ spellID = 979370 }, --Impure Flask of the Unyielding
			{ spellID = 979372 }, --Impure Flask of Unrelenting Power
			{ spellID = 979374 }, --Impure Flask of Savage Assault
			{ spellID = 979376 }, --Impure Flask of Shattering Thunder
			{ spellID = 979378 }, --Impure Flask of the Executioner
			{ spellID = 979380 }, --Impure Flask of Deep Meditation
			{ spellID = 979382 }, --Impure Flask of Adept Striking
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979363 }, --Pure Flask of Manifesting Power
			{ spellID = 979365 }, --Pure Flask of the Warsong
			{ spellID = 979367 }, --Pure Flask of the Kirin Tor
			{ spellID = 979369 }, --Pure Flask of Butchery
			{ spellID = 979371 }, --Pure Flask of the Unyielding
			{ spellID = 979373 }, --Pure Flask of Unrelenting Power
			{ spellID = 979375 }, --Pure Flask of Savage Assault
			{ spellID = 979377 }, --Pure Flask of Shattering Thunder
			{ spellID = 979379 }, --Pure Flask of the Executioner
			{ spellID = 979381 }, --Pure Flask of Deep Meditation
			{ spellID = 979383 }, --Pure Flask of Adept Striking
		},
	},



	---------------------
	--- Blacksmithing ---
	---------------------

	["SmithingTBC"] = {
		{
			{ spellID = 34534 }, --Bulwark of Kings
			{ spellID = 36257 }, --Bulwark of the Ancient Kings
			{ spellID = 36256 }, --Embrace of the Twisting Nether
			{ spellID = 38477 }, --Iceguard Breastplate
			{ spellID = 34530 }, --Twisting Nether Chain Shirt
			{ spellID = 38473 }, --Wildguard Breastplate
			{ spellID = 46144 }, --Hard Khorium Battleplate
			{ spellID = 46142 }, --Sunblessed Breastplate
			{ spellID = 29649 }, --Earthpeace Breastplate
			{ spellID = 29645 }, --Ragesteel Breastplate
			{ spellID = 29617 }, --Flamebane Breastplate
			{ spellID = 29610 }, --Enchanted Adamantite Breastplate
			{ spellID = 34533 }, --Breastplate of Kings
			{ spellID = 34529 }, --Nether Chain Shirt
			{ spellID = 29606 }, --Adamantite Breastplate
			{ spellID = 36129 }, --Heavy Earthforged Breastplate
			{ spellID = 36130 }, --Stormforged Hauberk
			{ spellID = 29550 }, --Fel Iron Breastplate
			{ spellID = 29556 }, --Fel Iron Chain Tunic
		},
		{
			{ spellID = 36391 }, --Boots of the Protector
			{ spellID = 36392 }, --Red Havoc Boots
			{ spellID = 40033 }, --Shadesteel Sabots
			{ spellID = 29630 }, --Khorium Boots
			{ spellID = 29611 }, --Enchanted Adamantite Boots
			{ spellID = 29548 }, --Fel Iron Plate Boots
		},
		{
			{ spellID = 29648 }, --Swiftsteel Gloves
			{ spellID = 29658 }, --Felfury Gauntlets
			{ spellID = 29622 }, --Gauntlets of the Iron Tower
			{ spellID = 29662 }, --Steelgrip Gauntlets
			{ spellID = 46140 }, --Sunblessed Gauntlets
			{ spellID = 46141 }, --Hard Khorium Battlefists
			{ spellID = 29642 }, --Ragesteel Gloves
			{ spellID = 29619 }, --Felsteel Gloves
			{ spellID = 29616 }, --Flamebane Gloves
			{ spellID = 29605 }, --Adamantite Plate Gloves
			{ spellID = 29552 }, --Fel Iron Chain Gloves
			{ spellID = 29545 }, --Fel Iron Plate Gloves
		},
		{
			{ spellID = 38479 }, --Iceguard Helm
			{ spellID = 38476 }, --Wildguard Helm
			{ spellID = 29664 }, --Helm of the Stalwart Defender
			{ spellID = 29668 }, --Oathkeeper's Helm
			{ spellID = 29663 }, --Storm Helm
			{ spellID = 29621 }, --Felsteel Helm
			{ spellID = 29643 }, --Ragesteel Helm
			{ spellID = 29615 }, --Flamebane Helm
			{ spellID = 29551 }, --Fel Iron Chain Coif
		},
		{
			{ spellID = 38478 }, --Iceguard Leggings
			{ spellID = 40035 }, --Shadesteel Greaves
			{ spellID = 38475 }, --Wildguard Leggings
			{ spellID = 29613 }, --Enchanted Adamantite Leggings
			{ spellID = 29620 }, --Felsteel Leggings
			{ spellID = 29629 }, --Khorium Pants
			{ spellID = 29549 }, --Fel Iron Plate Pants
		},
		{		
			{ spellID = 41135 }, --Dawnsteel Shoulders
			{ spellID = 42662 }, --Ragesteel Shoulders
			{ spellID = 41133 }, --Swiftsteel Shoulders
		},
		{
			{ spellID = 36389 }, --Belt of the Guardian
			{ spellID = 36390 }, --Red Belt of Battle
			{ spellID = 40036 }, --Shadesteel Girdle
			{ spellID = 29628 }, --Khorium Belt
			{ spellID = 29608 }, --Enchanted Adamantite Belt
			{ spellID = 29547 }, --Fel Iron Plate Belt
		},
		{
			{ spellID = 41134 }, --Dawnsteel Bracers
			{ spellID = 40034 }, --Shadesteel Bracers
			{ spellID = 41132 }, --Swiftsteel Bracers
			{ spellID = 29669 }, --Black Felsteel Bracers
			{ spellID = 29672 }, --Blessed Bracers
			{ spellID = 29671 }, --Bracers of the color.GREEN Fortress
			{ spellID = 29614 }, --Flamebane Bracers
			{ spellID = 29603 }, --Adamantite Plate Bracers
			{ spellID = 29553 }, --Fel Iron Chain Bracers
		},
		{
			{ spellID = 34542 }, --Black Planar Edge
			{ spellID = 36258 }, --Blazefury
			{ spellID = 34537 }, --Blazeguard
			{ spellID = 34546 }, --Dragonmaw
			{ spellID = 36262 }, --Dragonstrike
			{ spellID = 36260 }, --Wicked Edge of the Planes
			{ spellID = 29699 }, --Dirge
			{ spellID = 29698 }, --Eternium Runed Blade
			{ spellID = 29694 }, --Fel Edged Battleaxe
			{ spellID = 29692 }, --Felsteel Longblade
			{ spellID = 29700 }, --Hand of Eternity
			{ spellID = 29696 }, --Runic Hammer
			{ spellID = 34545 }, --Drakefist Hammer
			{ spellID = 34535 }, --Fireguard
			{ spellID = 34541 }, --The Planar Edge
			{ spellID = 34983 }, --Felsteel Whisper Knives
			{ spellID = 36136 }, --Lavaforged Warhammer
			{ spellID = 36134 }, --Stormforged Axe
			{ spellID = 36131 }, --Windforged Rapier
			{ spellID = 29571 }, --Adamantite Rapier
			{ spellID = 29569 }, --Adamantite Dagger
			{ spellID = 29558 }, --Fel Iron Hammer
			{ spellID = 29557 }, --Fel Iron Hatchet
		},
		{
			{ spellID = 36261 }, --Bloodmoon
			{ spellID = 34548 }, --Deep Thunder
			{ spellID = 34540 }, --Lionheart Champion
			{ spellID = 36259 }, --Lionheart Executioner
			{ spellID = 34544 }, --Mooncleaver
			{ spellID = 36263 }, --Stormherald
			{ spellID = 29697 }, --Fel Hardened Maul
			{ spellID = 29695 }, --Felsteel Reaper
			{ spellID = 43846 }, --Hammer of Righteous Might
			{ spellID = 29693 }, --Khorium Champion
			{ spellID = 34538 }, --Lionheart Blade
			{ spellID = 34543 }, --Lunar Crescent
			{ spellID = 34547 }, --Thunder
			{ spellID = 36137 }, --Great Earthforged Hammer
			{ spellID = 36135 }, --Skyforged Great Axe
			{ spellID = 36133 }, --Stoneforged Claymore
			{ spellID = 29568 }, --Adamantite Cleaver
			{ spellID = 29566 }, --Adamantite Maul
			{ spellID = 29565 }, --Fel Iron Greatsword
		},
		{
			{ spellID = 29657 }, --Felsteel Shield Spike
			{ spellID = 29656 }, --Adamantite Sharpening Stone
			{ spellID = 34608 }, --Adamantite Weightstone
			{ spellID = 42688 }, --Adamantite Weapon Chain
			{ spellID = 22757 }, --Elemental Sharpening Stone
			{ spellID = 16651 }, --Thorium Shield Spike
			{ spellID = 9964 }, --Mithril Spurs
			{ spellID = 9939 }, --Mithril Shield Spike
			{ spellID = 29729 }, --Greater Ward of Shielding
			{ spellID = 32285 }, --Greater Rune of Warding
			{ spellID = 29728 }, --Lesser Ward of Shielding
			{ spellID = 32284 }, --Lesser Rune of Warding
			{ spellID = 29654 }, --Fel Sharpening Stone
			{ spellID = 34607 }, --Fel Weightstone
		},
		{
			{ spellID = 19669 }, --Arcanite Skeleton Key
			{ spellID = 32657 }, --Eternium Rod
			{ spellID = 32656 }, --Adamantite Rod
			{ spellID = 32655 }, --Fel Iron Rod
		},
		{
			{ spellID = 36129 }, --Heavy Earthforged Breastplate
			{ spellID = 36130 }, --Stormforged Hauberk
			{ spellID = 34533 }, --Breastplate of Kings
			{ spellID = 34529 }, --Nether Chain Shirt
			{ spellID = 34534 }, --Bulwark of Kings
			{ spellID = 36257 }, --Bulwark of the Ancient Kings
			{ spellID = 36256 }, --Embrace of the Twisting Nether
			{ spellID = 34530 }, --Twisting Nether Chain Shirt
		},
		{
			{ spellID = 36125 }, --Light Earthforged Blade
			{ spellID = 36128 }, --Light Emberforged Hammer
			{ spellID = 36126 }, --Light Skyforged Axe
		},
		{
			{ spellID = 36135 }, --Skyforged Great Axe
			{ spellID = 36134 }, --Stormforged Axe
			{ spellID = 34543 }, --Lunar Crescent
			{ spellID = 34541 }, --The Planar Edge
			{ spellID = 34542 }, --Black Planar Edge
			{ spellID = 36261 }, --Bloodmoon
			{ spellID = 34544 }, --Mooncleaver
			{ spellID = 36260 }, --Wicked Edge of the Planes
		},
		{
			{ spellID = 36137 }, --Great Earthforged Hammer
			{ spellID = 36136 }, --Lavaforged Warhammer
			{ spellID = 34545 }, --Drakefist Hammer
			{ spellID = 34547 }, --Thunder
			{ spellID = 34548 }, --Deep Thunder
			{ spellID = 34546 }, --Dragonmaw
			{ spellID = 36262 }, --Dragonstrike
			{ spellID = 36263 }, --Stormherald
		},
		{
			{ spellID = 36133 }, --Stoneforged Claymore
			{ spellID = 36131 }, --Windforged Rapier
			{ spellID = 34535 }, --Fireguard
			{ spellID = 34538 }, --Lionheart Blade
			{ spellID = 36258 }, --Blazefury
			{ spellID = 34537 }, --Blazeguard
			{ spellID = 34540 }, --Lionheart Champion
			{ spellID = 36259 }, --Lionheart Executioner
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979534 }, --Hulking Belt Buckle
			{ spellID = 979536 }, --Blade Master's Belt Buckle
			{ spellID = 979538 }, --Agile Belt Buckle
			{ spellID = 979540 }, --Eluding Belt Buckle
			{ spellID = 979542 }, --Scholar's Belt Buckle
			{ spellID = 979544 }, --Priestly Belt Buckle
			{ spellID = 979546 }, --Champion\'s Belt Buckle
			{ spellID = 979548 }, --Guarded Belt Buckle
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979535 }, --Mastercraft Hulking Belt Buckle
			{ spellID = 979537 }, --Mastercraft Blade Master's Belt Buckle
			{ spellID = 979539 }, --Mastercraft Agile Belt Buckle
			{ spellID = 979541 }, --Mastercraft Eluding Belt Buckle
			{ spellID = 979543 }, --Mastercraft Scholar's Belt Buckle
			{ spellID = 979545 }, --Mastercraft Priestly Belt Buckle
			{ spellID = 979547 }, --Mastercraft Champion\'s Belt Buckle
			{ spellID = 979549 }, --Mastercraft Guarded Belt Buckle
		}
	},

	---------------
	--- Cooking ---
	---------------

	["CookingTBC"] = {
		{
			{ spellID = 42302 }, --Fisherman's Feast
			{ spellID = 42305 }, --Hot Buttered Trout
			{ spellID = 33296 }, --Spicy Crawdad
			{ spellID = 38868 }, --Crunchy Serpent
			{ spellID = 38867 }, --Mok'Nathal Shortribs
			{ spellID = 33295 }, --Golden Fish Sticks
			{ spellID = 45022 }, --Hot Apple Cider
			{ spellID = 33287 }, --Roasted Clefthoof
			{ spellID = 43707 }, --Skullfish Soup
			{ spellID = 43765 }, --Spicy Hot Talbuk
			{ spellID = 33289 }, --Talbuk Steak
			{ spellID = 33288 }, --Warp Burger
			{ spellID = 33293 }, --Grilled Mudfish
			{ spellID = 33294 }, --Poached Bluefish
			{ spellID = 42296 }, --Stewed Trout
			{ spellID = 33286 }, --Blackened Basilisk
			{ spellID = 33292 }, --Blackened Sporefish
			{ spellID = 33285 }, --Sporeling Snack
			{ spellID = 33290 }, --Blackened Trout
			{ spellID = 43761 }, --Broiled Bloodfin
			{ spellID = 33279 }, --Buzzard Bites
			{ spellID = 36210 }, --Clam Bar
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
			{ spellID = 43772 }, --Kibler's Bits
			{ spellID = 33284 }, --Ravager Dog
			{ spellID = 43758 }, --Stormchops
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979384 }, --Infused Living Soup
			{ spellID = 979386 }, --Infused Charred Steak
			{ spellID = 979388 }, --Infused Steamed Wontons
			{ spellID = 979390 }, --Infused Air Fried Chops
			{ spellID = 979392 }, --Infused Rock\'s Stew (Airsick lowlander flavor text)
			{ spellID = 979394 }, --Infused Clear-Cut Chops
			{ spellID = 979396 }, --Infused Clear-Cut Wontons
			{ spellID = 979398 }, --Infused Clear-Cut Steak
			{ spellID = 979463 }, --Infused Bold Simmered Stew
			{ spellID = 979465 }, --Infused Bold Duck Stew
			{ spellID = 979443 }, --Infused Subtle Chops
			{ spellID = 979445 }, --Infused Subtle Steak
			{ spellID = 979447 }, --Infused Subtle Wontons
			{ spellID = 979449 }, --Infused Subtle Soup
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979385 }, --Charged Living Soup
			{ spellID = 979387 }, --Charged Charred Steak
			{ spellID = 979389 }, --Charged Steamed Wontons
			{ spellID = 979391 }, --Charged Air Fried Chops
			{ spellID = 979393 }, --Charged Rock\'s Stew (Airsick lowlander flavor text)
			{ spellID = 979395 }, --Charged Clear-Cut Chops
			{ spellID = 979397 }, --Charged Clear-Cut Wontons
			{ spellID = 979399 }, --Charged Clear-Cut Steak
			{ spellID = 979464 }, --Charged Bold Simmered Stew
			{ spellID = 979466 }, --Charged Bold Duck Stew
			{ spellID = 979444 }, --Charged Subtle Chops
			{ spellID = 979446 }, --Charged Subtle Steak
			{ spellID = 979448 }, --Charged Subtle Wontons
			{ spellID = 979450 }, --Charged Subtle Soup
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979451 }, --Infused Bold Stew
			{ spellID = 979400 }, --Infused Piercing Chops
			{ spellID = 979402 }, --Infused Piercing Steak
			{ spellID = 979404 }, --Infused Seared Wontons
			{ spellID = 979406 }, --Infused Seared Chops
			{ spellID = 979421 }, --Infused Duck Stew
			{ spellID = 979423 }, --Infused Chunky Stew
			{ spellID = 979425 }, --Infused Simmered Stew
			{ spellID = 979427 }, --Infused Wizard Wontons
			{ spellID = 979429 }, --Infused Wizard Soup
			{ spellID = 979431 }, --Infused Heightened Wontons
			{ spellID = 979441 }, --Infused Vibrant Chops
			{ spellID = 979408 }, --Infused Savory Stew
			{ spellID = 979410 }, --Infused Savory Chops
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979452 }, --Charged Bold Stew
			{ spellID = 979401 }, --Charged Piercing Chops
			{ spellID = 979403 }, --Charged Piercing Steak
			{ spellID = 979405 }, --Charged Seared Wontons
			{ spellID = 979407 }, --Charged Seared Chops
			{ spellID = 979422 }, --Charged Duck Stew
			{ spellID = 979424 }, --Charged Chunky Stew
			{ spellID = 979426 }, --Charged Simmered Stew
			{ spellID = 979428 }, --Charged Wizard Wontons
			{ spellID = 979430 }, --Charged Wizard Soup
			{ spellID = 979432 }, --Charged Heightened Wontons
			{ spellID = 979442 }, --Charged Vibrant Chops
			{ spellID = 979409 }, --Charged Savory Stew
			{ spellID = 979412 }, --Charged Savory Chops
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979413 }, --Infused Savory Steak
			{ spellID = 979415 }, --Infused Savory Wontons
			{ spellID = 979417 }, --Infused Red-Hot Stew
			{ spellID = 979419 }, --Infused Blazing Stew
			{ spellID = 979433 }, --Infused Hearty Living Soup
			{ spellID = 979435 }, --Infused Hearty Air Fried Chops
			{ spellID = 979437 }, --Infused Hearty Charred Steak
			{ spellID = 979439 }, --Infused Hearty Steamed Wontons
			{ spellID = 979453 }, --Infused Mana Charged Roast
			{ spellID = 979455 }, --Infused Sizzling Roast
			{ spellID = 979457 }, --Infused Wild Roast
			{ spellID = 979459 }, --Infused Winter Roast
			{ spellID = 979461 }, --Infused Blackened Roast
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979414 }, --Charged Savory Steak
			{ spellID = 979416 }, --Charged Savory Wontons
			{ spellID = 979418 }, --Charged Red-Hot Stew
			{ spellID = 979420 }, --Charged Blazing Stew
			{ spellID = 979434 }, --Charged Hearty Living Soup
			{ spellID = 979436 }, --Charged Hearty Air Fried Chops
			{ spellID = 979438 }, --Charged Hearty Charred Steak
			{ spellID = 979440 }, --Charged Hearty Steamed Wontons
			{ spellID = 979454 }, --Charged Mana Charged Roast
			{ spellID = 979456 }, --Charged Sizzling Roast
			{ spellID = 979458 }, --Charged Wild Roast
			{ spellID = 979460 }, --Charged Winter Roast
			{ spellID = 979462 }, --Charged Blackened Roast
		}
	},

	------------------
	--- Enchanting ---
	------------------

	["EnchantingTBC"] = {
		{
			{ spellID = 27954 }, --Enchant Boots - Surefooted
			{ spellID = 34008 }, --Enchant Boots - Boar's Speed
			{ spellID = 34007 }, --Enchant Boots - Cat's Swiftness
			{ spellID = 27951 }, --Enchant Boots - Dexterity
			{ spellID = 27950 }, --Enchant Boots - Fortitude
			{ spellID = 27948 }, --Enchant Boots - Vitality
		},
		{
			{ spellID = 27917 }, --Enchant Bracers - Spellpower
			{ spellID = 27914 }, --Enchant Bracers - Fortitude
			{ spellID = 27913 }, --Enchant Bracers - Restore Mana Prime
			{ spellID = 27911 }, --Enchant Bracers - Superior Healing
			{ spellID = 27906 }, --Enchant Bracers - Major Defense
			{ spellID = 27905 }, --Enchant Bracers - Stats
			{ spellID = 27899 }, --Enchant Bracers - Brawn
			{ spellID = 34001 }, --Enchant Bracers - Major Intellect
			{ spellID = 34002 }, --Enchant Bracers - Assault
		},
		{
			{ spellID = 46594 }, --Enchant Chest - Defense
			{ spellID = 27960 }, --Enchant Chest - Exceptional Stats
			{ spellID = 33992 }, --Enchant Chest - Major Resilience
			{ spellID = 33990 }, --Enchant Chest - Major Spirit
			{ spellID = 27957 }, --Enchant Chest - Exceptional Health
			{ spellID = 33991 }, --Enchant Chest - Restore Mana Prime
		},
		{
			{ spellID = 47051 }, --Enchant Cloak - Steelweave
			{ spellID = 351501 }, --Enchant Cloak - Crushing Wave
			{ spellID = 351530 }, --Enchant Cloak - Phoenix Fire
			{ spellID = 34005 }, --Enchant Cloak - Greater Arcane Resistance
			{ spellID = 34006 }, --Enchant Cloak - Greater Shadow Resistance
			{ spellID = 27962 }, --Enchant Cloak - Major Resistance
			{ spellID = 34003 }, --Enchant Cloak - Spell Penetration
			{ spellID = 34004 }, --Enchant Cloak - Greater Agility
			{ spellID = 27961 }, --Enchant Cloak - Major Armor
			{ spellID = 25082 }, --Enchant Cloak - Greater Nature Resistance
			{ spellID = 25083 }, --Enchant Cloak - Stealth
			{ spellID = 25084 }, --Enchant Cloak - Subtlety
			{ spellID = 25086 }, --Enchant Cloak - Dodge
		},
		{
			{ spellID = 33997 }, --Enchant Gloves - Major Spellpower
			{ spellID = 33994 }, --Enchant Gloves - Spell Strike
			{ spellID = 33999 }, --Enchant Gloves - Major Healing
			{ spellID = 33995 }, --Enchant Gloves - Major Strength
			{ spellID = 33996 }, --Enchant Gloves - Assault
			{ spellID = 33993 }, --Enchant Gloves - Blasting
			{ spellID = 225080 }, --Enchant Gloves - Superior Agility
			{ spellID = 25072 }, --Enchant Gloves - Threat
		},
		{
			{ spellID = 27927 }, --Enchant Ring - Stats
			{ spellID = 27926 }, --Enchant Ring - Healing Power
			{ spellID = 27924 }, --Enchant Ring - Spellpower
			{ spellID = 27920 }, --Enchant Ring - Striking
		},
		{
			{ spellID = 27947 }, --Enchant Shield - Resistance
			{ spellID = 27946 }, --Enchant Shield - Shield Block
			{ spellID = 44383 }, --Enchant Shield - Resilience
			{ spellID = 27945 }, --Enchant Shield - Intellect
			{ spellID = 34009 }, --Enchant Shield - Major Stamina
			{ spellID = 27944 }, --Enchant Shield - Tough Shield
		},
		{
			{ spellID = 27977 }, --Enchant 2H Weapon - Major Agility
			{ spellID = 27971 }, --Enchant 2H Weapon - Savagery
		},
		{
			{ spellID = 351535 }, --Enchant Weapon - Witchdoctor
			{ spellID = 42974 }, --Enchant Weapon - Executioner
			{ spellID = 820034 }, --Enchant Weapon - Undaunted Might
			{ spellID = 359012 }, --Enchant Weapon - Faith
			{ spellID = 27984 }, --Enchant Weapon - Mongoose
			{ spellID = 27982 }, --Enchant Weapon - Soulfrost
			{ spellID = 27981 }, --Enchant Weapon - Sunfire
			{ spellID = 28004 }, --Enchant Weapon - Battlemaster
			{ spellID = 28003 }, --Enchant Weapon - Spellsurge
			{ spellID = 46578 }, --Enchant Weapon - Deathfrost
			{ spellID = 34010 }, --Enchant Weapon - Major Healing
			{ spellID = 27975 }, --Enchant Weapon - Major Spellpower
			{ spellID = 27972 }, --Enchant Weapon - Potency
			{ spellID = 42620 }, --Enchant Weapon - Greater Agility
			{ spellID = 27968 }, --Enchant Weapon - Major Intellect
			{ spellID = 27967 }, --Enchant Weapon - Major Striking
		},
		{
			{ spellID = 32667 }, --Runed Eternium Rod
			{ spellID = 45765 }, --Void Shatter
			{ spellID = 42615 }, --Small Prismatic Shard
			{ spellID = 28022 }, --Large Prismatic Shard
			{ spellID = 28027 }, --Prismatic Sphere
			{ spellID = 42613 }, --Nexus Transformation
			{ spellID = 15596 }, --Smoking Heart of the Mountain
			{ spellID = 32665 }, --Runed Adamantite Rod
			{ spellID = 28019 }, --Superior Wizard Oil
			{ spellID = 28016 }, --Superior Mana Oil
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 1968677 }, --Enchant Weapon - Void Assault
			{ spellID = 1968680 }, --Enchant Weapon - Dread Assault
			{ spellID = 1968683 }, --Enchant Weapon - Twisted Evoker
			{ spellID = 1968686 }, --Enchant Weapon - Twisted Assault
			{ spellID = 1968689 }, --Enchant Weapon - Twisted Channeler
			{ spellID = 1968692 }, --Enchant Weapon - Dread Omen Strikes
			{ spellID = 1968695 }, --Enchant Weapon - Void Flows
			{ spellID = 1968698 }, --Enchant Weapon - Void Blasting
			{ spellID = 1968701 }, --Enchant Weapon - Dread Precision
			{ spellID = 1968770 }, --Enchant Weapon - Twisted Crusader
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 1968678 }, --Enchant Weapon - Overpowering Void Assault
			{ spellID = 1968681 }, --Enchant Weapon - Overpowering Dread Assault
			{ spellID = 1968684 }, --Enchant Weapon - Overpowering Twisted Evoker
			{ spellID = 1968687 }, --Enchant Weapon - Overpowering Twisted Assault
			{ spellID = 1968690 }, --Enchant Weapon - Overpowering Twisted Channeler
			{ spellID = 1968693 }, --Enchant Weapon - Overpowering Dread Omen Strikes
			{ spellID = 1968696 }, --Enchant Weapon - Overpowering Void Flows
			{ spellID = 1968699 }, --Enchant Weapon - Overpowering Void Blasting
			{ spellID = 1968702 }, --Enchant Weapon - Overpowering Dread Precision
			{ spellID = 1968771 }, --Enchant Weapon - Overpowering Twisted Crusader
		},
	},


	-------------------
	--- Engineering ---
	-------------------

	["EngineeringTBC"] = {
		{
			{ spellID = 43676 }, --Adamantite Arrow Maker
			{ spellID = 30347 }, --Adamantite Shell Machine
			{ spellID = 30346 }, --Fel Iron Shells
		},
		{
			{ spellID = 46111 }, --Annihilator Holo-Gogs
			{ spellID = 30565 }, --Foreman's Enchanted Helmet
			{ spellID = 30566 }, --Foreman's Reinforced Helmet
			{ spellID = 30575 }, --Gnomish Battle Goggles
			{ spellID = 30574 }, --Gnomish Power Goggles
			{ spellID = 46115 }, --Hard Khorium Goggles
			{ spellID = 46109 }, --Hyper-Magnified Moon Specs
			{ spellID = 46107 }, --Justicebringer 3000 Specs
			{ spellID = 46112 }, --Lightning Etched Specs
			{ spellID = 46114 }, --Mayhem Projection Goggles
			{ spellID = 46108 }, --Powerheal 9000 Lens
			{ spellID = 46110 }, --Primal-Attuned Goggles
			{ spellID = 46116 }, --Quad Deathblow X44 Goggles
			{ spellID = 46113 }, --Surestrike Goggles v3.0
			{ spellID = 46106 }, --Wonderheal XT68 Shades
			{ spellID = 41317 }, --Deathblow X11 Goggles
			{ spellID = 41314 }, --Surestrike Goggles v2.0
			{ spellID = 41320 }, --Destruction Holo-gogs
			{ spellID = 40274 }, --Furious Gizmatic Goggles
			{ spellID = 41315 }, --Gadgetstorm Goggles
			{ spellID = 41311 }, --Justicebringer 2000 Specs
			{ spellID = 41316 }, --Living Replicator Specs
			{ spellID = 41319 }, --Magnified Moon Specs
			{ spellID = 41312 }, --Tankatronic Goggles
		},
		{
			{ spellID = 30325 }, --Hyper-Vision Goggles
			{ spellID = 30556 }, --Rocket Boots Xtreme
			{ spellID = 46697 }, --Rocket Boots Xtreme Lite
			{ spellID = 30563 }, --Goblin Rocket Launcher
			{ spellID = 30570 }, --Nigh-Invulnerability Belt
			{ spellID = 30318 }, --Ultra-Spectropic Detection Goggles
			{ spellID = 30316 }, --Cogspinner Goggles
			{ spellID = 30569 }, --Gnomish Poultryizer
			{ spellID = 30317 }, --Power Amplification Goggles
		},
		{
			{ spellID = 30547 }, --Elemental Seaforium Charge
			{ spellID = 30560 }, --Super Sapper Charge
			{ spellID = 30311 }, --Adamantite Grenade
			{ spellID = 30558 }, --The Bigger One
			{ spellID = 30310 }, --Fel Iron Bomb
		},
		{
			{ spellID = 30334 }, --Stabilized Eternium Scope
			{ spellID = 30332 }, --Khorium Scope
			{ spellID = 30329 }, --Adamantite Scope
			{ spellID = 22793 }, --Biznicks 247x128 Accurascope
		},
		{
			{ spellID = 44157 }, --Turbo-Charged Flying Machine
			{ spellID = 44155 }, --Flying Machine
			{ spellID = 30348 }, --Fel Iron Toolbox
			{ spellID = 30337 }, --Crashin' Thrashin' Robot
			{ spellID = 44391 }, --Field Repair Bot 110G
			{ spellID = 30552 }, --Mana Potion Injector
			{ spellID = 30344 }, --color.GREEN Smoke Flare
			{ spellID = 32814 }, --Purple Smoke Flare
			{ spellID = 30341 }, --color.WHITE Smoke Flare
			{ spellID = 30551 }, --Healing Potion Injector
			{ spellID = 30568 }, --Gnomish Flame Turret
			{ spellID = 30548 }, --Zapthrottle Mote Extractor
		},
		{
			{ spellID = 30309 }, --Felsteel Stabilizer
			{ spellID = 30307 }, --Hardened Adamantite Tube
			{ spellID = 30308 }, --Khorium Power Core
			{ spellID = 39971 }, --Icy Blasting Primers
			{ spellID = 30306 }, --Adamantite Frame
			{ spellID = 30305 }, --Handful of Fel Iron Bolts
			{ spellID = 30303 }, --Elemental Blasting Powder
			{ spellID = 30304 }, --Fel Iron Casing
		},
		{
			{ spellID = 41307 }, --Gyro-balanced Khorium Destroyer
			{ spellID = 30315 }, --Ornate Khorium Rifle
			{ spellID = 30314 }, --Felsteel Boomstick
			{ spellID = 30313 }, --Adamantite Rifle
			{ spellID = 30312 }, --Fel Iron Musket
		},
		{
			{ spellID = 30570 }, --Nigh-Invulnerability Belt
			{ spellID = 30569 }, --Gnomish Poultryizer
			{ spellID = 36955 }, --Ultrasafe Transporter - Toshley's Station
		},
		{
			{ spellID = 30563 }, --Goblin Rocket Launcher
			{ spellID = 36954 }, --Dimensional Ripper - Area 52
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979550 }, --Gnomish Magnification Polish
			{ spellID = 979552 }, --Gnomish Sharpening Polish
			{ spellID = 979554 }, --Gnomish Prismatic Polish
			{ spellID = 979556 }, --Felfire Scope
			{ spellID = 979558 }, --Sighted Scope
			{ spellID = 979560 }, --Quickshot Scope
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979551 }, --Fine Gnomish Magnification Polish
			{ spellID = 979553 }, --Fine Gnomish Sharpening Polish
			{ spellID = 979555 }, --Fine Gnomish Prismatic Polish
			{ spellID = 979557 }, --Focused Felfire Scope
			{ spellID = 979559 }, --Focused Sighted Scope
			{ spellID = 979561 }, --Focused Quickshot Scope
		},
	},

	-----------------
	--- First Aid ---
	-----------------

	["FirstAid"] = {
		{
			{ spellID = 45546 }, --Heavy Frostweave Bandage
			{ spellID = 45545 }, --Frostweave Bandage
			{ spellID = 27033 }, --Heavy Netherweave Bandage
			{ spellID = 27032 }, --Netherweave Bandage
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

	---------------------
	--- Jewelcrafting ---
	---------------------

	["JewelcraftingTBC"] = {
		{
			{ spellID = 39705 }, --Bold Crimson Spinel
			{ spellID = 39712 }, --Bright Crimson Spinel
			{ spellID = 39706 }, --Delicate Crimson Spinel
			{ spellID = 39714 }, --Flashing Crimson Spinel
			{ spellID = 39711 }, --Runed Crimson Spinel
			{ spellID = 39713 }, --Subtle Crimson Spinel
			{ spellID = 39710 }, --Teardrop Crimson Spinel
			{ spellID = 884037 }, --Fractured Crimson Spinel
			{ spellID = 42589 }, --Crimson Sun
			{ spellID = 42558 }, --Don Julio's Heart
			{ spellID = 42588 }, --Kailee's Rose
			{ spellID = 31084 }, --Bold Living Ruby
			{ spellID = 31089 }, --Bright Living Ruby
			{ spellID = 31085 }, --Delicate Living Ruby
			{ spellID = 31091 }, --Flashing Living Ruby
			{ spellID = 31088 }, --Runed Living Ruby
			{ spellID = 31090 }, --Subtle Living Ruby
			{ spellID = 31087 }, --Teardrop Living Ruby
			{ spellID = 28907 }, --Delicate Blood Garnet
			{ spellID = 28906 }, --Runed Blood Garnet
			{ spellID = 28905 }, --Bold Blood Garnet
			{ spellID = 34590 }, --Bright Blood Garnet
			{ spellID = 28903 }, --Teardrop Blood Garnet
		},
		{
			{ spellID = 39717 }, --Lustrous Empyrean Sapphire
			{ spellID = 39715 }, --Solid Empyrean Sapphire
			{ spellID = 39716 }, --Sparkling Empyrean Sapphire
			{ spellID = 39718 }, --Stormy Empyrean Sapphire
			{ spellID = 42590 }, --Falling Star
			{ spellID = 31094 }, --Lustrous Star of Elune
			{ spellID = 31092 }, --Solid Star of Elune
			{ spellID = 31149 }, --Sparkling Star of Elune
			{ spellID = 31095 }, --Stormy Star of Elune
			{ spellID = 28957 }, --Lustrous Azure Moonstone
			{ spellID = 28955 }, --Stormy Azure Moonstone
			{ spellID = 28953 }, --Sparkling Azure Moonstone
			{ spellID = 28950 }, --Solid Azure Moonstone
		},
		{
			{ spellID = 39719 }, --Brilliant Lionseye
			{ spellID = 39722 }, --Gleaming Lionseye
			{ spellID = 39725 }, --Great Lionseye
			{ spellID = 39724 }, --Mystic Lionseye
			{ spellID = 47056 }, --Quick Lionseye
			{ spellID = 39721 }, --Rigid Lionseye
			{ spellID = 39720 }, --Smooth Lionseye
			{ spellID = 39723 }, --Thick Lionseye
			{ spellID = 42592 }, --Blood of Amber
			{ spellID = 42593 }, --Facet of Eternity
			{ spellID = 42591 }, --Stone of Blades
			{ spellID = 31096 }, --Brilliant Dawnstone
			{ spellID = 31099 }, --Gleaming Dawnstone
			{ spellID = 39452 }, --Great Dawnstone
			{ spellID = 31101 }, --Mystic Dawnstone
			{ spellID = 46403 }, --Quick Dawnstone
			{ spellID = 31098 }, --Rigid Dawnstone
			{ spellID = 31097 }, --Smooth Dawnstone
			{ spellID = 31100 }, --Thick Dawnstone
			{ spellID = 39451 }, --Great Golden Draenite
			{ spellID = 28948 }, --Rigid Golden Draenite
			{ spellID = 34069 }, --Smooth Golden Draenite
			{ spellID = 28947 }, --Thick Golden Draenite
			{ spellID = 28944 }, --Gleaming Golden Draenite
			{ spellID = 28938 }, --Brilliant Golden Draenite
		},
		{
			{ spellID = 39741 }, --Dazzling Seaspray Emerald
			{ spellID = 39739 }, --Enduring Seaspray Emerald
			{ spellID = 47053 }, --Forceful Seaspray Emerald
			{ spellID = 39742 }, --Jagged Seaspray Emerald
			{ spellID = 39740 }, --Radiant Seaspray Emerald
			{ spellID = 47054 }, --Steady Seaspray Emerald
			{ spellID = 31112 }, --Dazzling Talasite
			{ spellID = 31110 }, --Enduring Talasite
			{ spellID = 46405 }, --Forceful Talasite
			{ spellID = 31113 }, --Jagged Talasite
			{ spellID = 31111 }, --Radiant Talasite
			{ spellID = 43493 }, --Steady Talasite
			{ spellID = 28924 }, --Dazzling Deep Peridot
			{ spellID = 28918 }, --Enduring Deep Peridot
			{ spellID = 28917 }, --Jagged Deep Peridot
			{ spellID = 28916 }, --Radiant Deep Peridot
		},
		{
			{ spellID = 39736 }, --Glinting Pyrestone
			{ spellID = 39733 }, --Inscribed Pyrestone
			{ spellID = 39735 }, --Luminous Pyrestone
			{ spellID = 39734 }, --Potent Pyrestone
			{ spellID = 47055 }, --Reckless Pyrestone
			{ spellID = 39737 }, --Veiled Pyrestone
			{ spellID = 39738 }, --Wicked Pyrestone
			{ spellID = 31109 }, --Glinting Noble Topaz
			{ spellID = 31106 }, --Inscribed Noble Topaz
			{ spellID = 31108 }, --Luminous Noble Topaz
			{ spellID = 31107 }, --Potent Noble Topaz
			{ spellID = 46404 }, --Reckless Noble Topaz
			{ spellID = 39470 }, --Veiled Noble Topaz
			{ spellID = 39471 }, --Wicked Noble Topaz
			{ spellID = 39466 }, --Veiled Flame Spessarite
			{ spellID = 39467 }, --Wicked Flame Spessarite
			{ spellID = 28914 }, --Glinting Flame Spessarite
			{ spellID = 28912 }, --Luminous Flame Spessarite
			{ spellID = 28910 }, --Inscribed Flame Spessarite
			{ spellID = 28915 }, --Potent Flame Spessarite
		},
		{
			{ spellID = 39729 }, --Balanced Shadowsong Amethyst
			{ spellID = 39731 }, --Glowing Shadowsong Amethyst
			{ spellID = 39730 }, --Infused Shadowsong Amethyst
			{ spellID = 48789 }, --Purified Shadowsong Amethyst
			{ spellID = 39732 }, --Royal Shadowsong Amethyst
			{ spellID = 39728 }, --Shifting Shadowsong Amethyst
			{ spellID = 39727 }, --Sovereign Shadowsong Amethyst
			{ spellID = 39463 }, --Balanced Nightseye
			{ spellID = 31104 }, --Glowing Nightseye
			{ spellID = 39462 }, --Infused Nightseye
			{ spellID = 46803 }, --Regal Nightseye
			{ spellID = 31105 }, --Royal Nightseye
			{ spellID = 31103 }, --Shifting Nightseye
			{ spellID = 31102 }, --Sovereign Nightseye
			{ spellID = 41429 }, --Purified Shadow Pearl
			{ spellID = 39455 }, --Balanced Shadow Draenite
			{ spellID = 39458 }, --Infused Shadow Draenite
			{ spellID = 28936 }, --Sovereign Shadow Draenite
			{ spellID = 28933 }, --Shifting Shadow Draenite
			{ spellID = 28927 }, --Royal Shadow Draenite
			{ spellID = 28925 }, --Glowing Shadow Draenite
		},
		{
			{ spellID = 46601 }, --Ember Skyfire Diamond
			{ spellID = 44794 }, --Chaotic Skyfire Diamond
			{ spellID = 32871 }, --Destructive Skyfire Diamond
			{ spellID = 32874 }, --Enigmatic Skyfire Diamond
			{ spellID = 32872 }, --Mystical Skyfire Diamond
			{ spellID = 32873 }, --Swift Skyfire Diamond
			{ spellID = 39963 }, --Thundering Skyfire Diamond
			{ spellID = 46597 }, --Eternal Earthstorm Diamond
			{ spellID = 32867 }, --Bracing Earthstorm Diamond
			{ spellID = 32869 }, --Brutal Earthstorm Diamond
			{ spellID = 32870 }, --Insightful Earthstorm Diamond
			{ spellID = 32866 }, --Powerful Earthstorm Diamond
			{ spellID = 39961 }, --Relentless Earthstorm Diamond
			{ spellID = 32868 }, --Tenacious Earthstorm Diamond
		},
		{
			{ spellID = 28028 }, --Void Sphere
			{ spellID = 28027 }, --Prismatic Sphere
			{ spellID = 62941 }, --Prismatic Black Diamond
		},
		{
			{ spellID = 46777 }, --Figurine - Crimson Serpent
			{ spellID = 46775 }, --Figurine - Empyrean Tortoise
			{ spellID = 46776 }, --Figurine - Khorium Boar
			{ spellID = 46779 }, --Figurine - Seaspray Albatross
			{ spellID = 46778 }, --Figurine - Shadowsong Panther
			{ spellID = 31080 }, --Figurine - Dawnstone Crab
			{ spellID = 31079 }, --Figurine - Felsteel Boar
			{ spellID = 31081 }, --Figurine - Living Ruby Serpent
			{ spellID = 31083 }, --Figurine - Nightseye Panther
			{ spellID = 31082 }, --Figurine - Talasite Owl
			{ spellID = 26912 }, --Figurine - Black Diamond Crab
			{ spellID = 26914 }, --Figurine - Dark Iron Scorpid
			{ spellID = 26909 }, --Figurine - Emerald Owl
			{ spellID = 26900 }, --Figurine - Ruby Serpent
			{ spellID = 26882 }, --Figurine - Truesilver Boar
			{ spellID = 26881 }, --Figurine - Truesilver Crab
			{ spellID = 26873 }, --Figurine - Golden Hare
			{ spellID = 26872 }, --Figurine - Jade Owl
			{ spellID = 26875 }, --Figurine - Black Pearl Panther
		},
		{
			{ spellID = 31057 }, --Arcane Khorium Band
			{ spellID = 31061 }, --Blazing Eternium Band
			{ spellID = 31056 }, --Khorium Band of Leaves
			{ spellID = 37855 }, --Ring of Arcane Shielding
			{ spellID = 31060 }, --Delicate Eternium Ring
			{ spellID = 31054 }, --Khorium Band of Frost
			{ spellID = 31055 }, --Khorium Inferno Band
			{ spellID = 31053 }, --Khorium Band of Shadows
			{ spellID = 31058 }, --Heavy Felsteel Ring
			{ spellID = 31052 }, --Heavy Adamantite Ring
			{ spellID = 41415 }, --The Black Pearl
			{ spellID = 41414 }, --Brilliant Pearl Band
			{ spellID = 31050 }, --Azure Moonstone Ring
			{ spellID = 26916 }, --Band of Natural Fire
			{ spellID = 31048 }, --Fel Iron Blood Ring
			{ spellID = 31049 }, --Golden Draenite Ring
			{ spellID = 34961 }, --Emerald Lion Ring
			{ spellID = 26910 }, --Ring of Bitter Shadows
			{ spellID = 34960 }, --Glowing Thorium Band
			{ spellID = 26907 }, --Onslaught Ring
			{ spellID = 26903 }, --Sapphire Signet
			{ spellID = 36526 }, --Diamond Focus Ring
			{ spellID = 26902 }, --Simple Opal Ring
			{ spellID = 26896 }, --Gem Studded Band
			{ spellID = 26887 }, --The Aquamarine Ward
			{ spellID = 26885 }, --Truesilver Healing Ring
			{ spellID = 36525 }, --Red Ring of Destruction
			{ spellID = 26874 }, --Aquamarine Signet
			{ spellID = 34959 }, --Truesilver Commander's Ring
			{ spellID = 34955 }, --Golden Ring of Power
			{ spellID = 25621 }, --Citrine Ring of Rapid Healing
			{ spellID = 25620 }, --Engraved Truesilver Ring
			{ spellID = 25619 }, --The Jade Eye
			{ spellID = 25617 }, --Blazing Citrine Ring
			{ spellID = 25613 }, --Golden Dragon Ring
			{ spellID = 25323 }, --Wicked Moonstone Ring
			{ spellID = 36524 }, --Heavy Jade Ring
			{ spellID = 25318 }, --Ring of Twilight Shadows
			{ spellID = 25305 }, --Heavy Silver Ring
			{ spellID = 25317 }, --Ring of Silver Might
			{ spellID = 25287 }, --Gloom Band
			{ spellID = 37818 }, --Bronze Band of Force
			{ spellID = 25284 }, --Simple Pearl Ring
			{ spellID = 25490 }, --Solid Bronze Ring
			{ spellID = 25280 }, --Elegant Silver Ring
			{ spellID = 25283 }, --Inlaid Malachite Ring
			{ spellID = 32179 }, --Tigerseye Band
			{ spellID = 26926 }, --Heavy Copper Ring
			{ spellID = 25493 }, --Braided Copper Ring
			{ spellID = 26925 }, --Woven Copper Ring
		},
		{
			{ spellID = 31072 }, --Embrace of the Dawn
			{ spellID = 31070 }, --Braided Eternium Chain
			{ spellID = 31071 }, --Eye of the Night
			{ spellID = 31062 }, --Pendant of Frozen Flame
			{ spellID = 31065 }, --Pendant of Shadow's End
			{ spellID = 31063 }, --Pendant of Thawing
			{ spellID = 31066 }, --Pendant of the Null Rune
			{ spellID = 31064 }, --Pendant of Withering
			{ spellID = 31068 }, --Living Ruby Pendant
			{ spellID = 31067 }, --Thick Felsteel Necklace
			{ spellID = 40514 }, --Necklace of the Deep
			{ spellID = 31051 }, --Thick Adamantite Necklace
			{ spellID = 26915 }, --Necklace of the Diamond Tower
			{ spellID = 26911 }, --Living Emerald Pendant
			{ spellID = 26908 }, --Sapphire Pendant of Winter Night
			{ spellID = 26897 }, --Opal Necklace of Impact
			{ spellID = 26883 }, --Ruby Pendant of Fire
			{ spellID = 26876 }, --Aquamarine Pendant of the Warrior
			{ spellID = 63743 }, --Amulet of Truesight
			{ spellID = 25622 }, --Citrine Pendant of Golden Healing
			{ spellID = 25618 }, --Jade Pendant of Blasting
			{ spellID = 25320 }, --Heavy Golden Necklace of Battle
			{ spellID = 25610 }, --Pendant of the Agate Shield
			{ spellID = 25339 }, --Amulet of the Moon
			{ spellID = 25498 }, --Barbaric Iron Collar
			{ spellID = 38175 }, --Bronze Torc
			{ spellID = 36523 }, --Brilliant Necklace
			{ spellID = 26927 }, --Thick Bronze Necklace
			{ spellID = 26928 }, --Ornate Tigerseye Necklace
			{ spellID = 32178 }, --Malachite Pendant
		},
		{
			{ spellID = 31078 }, --Circlet of Arcane Might
			{ spellID = 31077 }, --Coronet of the Verdant Flame
			{ spellID = 41418 }, --Crown of the Sea Witch
			{ spellID = 47280 }, --Brilliant Glass
			{ spellID = 38068 }, --Mercurial Adamantite
			{ spellID = 26906 }, --Emerald Crown of Destruction
			{ spellID = 26878 }, --Ruby Crown of Restoration
			{ spellID = 26880 }, --Thorium Setting
			{ spellID = 32809 }, --Dense Stone Statue
			{ spellID = 32808 }, --Solid Stone Statue
			{ spellID = 25615 }, --Mithril Filigree
			{ spellID = 25612 }, --Heavy Iron Knuckles
			{ spellID = 25321 }, --Moonsoul Crown
			{ spellID = 32807 }, --Heavy Stone Statue
			{ spellID = 25278 }, --Bronze Setting
			{ spellID = 32801 }, --Coarse Stone Statue
			{ spellID = 25255 }, --Delicate Copper Wire
			{ spellID = 32259 }, --Rough Stone Statue
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979639 }, --Deep Gold Twisted Pendant
			{ spellID = 979641 }, --Bloodshadow Twisted Pendant
			{ spellID = 979643 }, --Azureflame Twisted Pendant
			{ spellID = 979645 }, --Shadowgold Dread Pendant
			{ spellID = 979647 }, --Deep Azure Dread Pendant
			{ spellID = 979649 }, --Bloodflame Dread Pendant
			{ spellID = 979651 }, --Living Night Void Pendant
			{ spellID = 979653 }, --Dawnstar Void Pendant
			{ spellID = 979655 }, --Noble Talasite Void Pendant
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979640 }, --Engraved Deep Gold Twisted Pendant
			{ spellID = 979642 }, --Engraved Bloodshadow Twisted Pendant
			{ spellID = 979644 }, --Engraved Azureflame Twisted Pendant
			{ spellID = 979646 }, --Engraved Shadowgold Dread Pendant
			{ spellID = 979648 }, --Engraved Deep Azure Dread Pendant
			{ spellID = 979650 }, --Engraved Bloodflame Dread Pendant
			{ spellID = 979652 }, --Engraved Living Night Void Pendant
			{ spellID = 979654 }, --Engraved Dawnstar Void Pendant
			{ spellID = 979656 }, --Engraved Noble Talasite Void Pendant
		},
	},

	----------------------
	--- Leatherworking ---
	----------------------
	["LeatherworkingTBC"] = {
		{
			{ spellID = 42546 }, --Cloak of Darkness
		},
		{
			{ spellID = 35589 }, --Primalstrike Vest
			{ spellID = 35585 }, --Windhawk Hauberk
			{ spellID = 46138 }, --Carapace of Sun and Shadow
			{ spellID = 46136 }, --Leather Chestguard of the Sun
			{ spellID = 42731 }, --Shadowprowler's Chestguard
			{ spellID = 32495 }, --Heavy Clefthoof Vest
			{ spellID = 36078 }, --Living Crystal Breastplate
			{ spellID = 36077 }, --Primalstorm Breastplate
			{ spellID = 32473 }, --Thick Draenic Vest
			{ spellID = 32481 }, --Wild Draenish Vest
		},
		{
			{ spellID = 36355 }, --Boots of Natural Grace
			{ spellID = 36357 }, --Boots of Utter Darkness
			{ spellID = 40003 }, --Redeemed Soul Moccasins
			{ spellID = 40003 }, --Redeemed Soul Moccasins
			{ spellID = 32497 }, --Heavy Clefthoof Boots
			{ spellID = 35536 }, --Blastguard Boots
			{ spellID = 35534 }, --Enchanted Clefthoof Boots
			{ spellID = 32493 }, --Fel Leather Boots
			{ spellID = 32472 }, --Thick Draenic Boots
			{ spellID = 32478 }, --Wild Draenish Boots
		},
		{
			{ spellID = 35559 }, --Cobrascale Gloves
			{ spellID = 46134 }, --Gloves of Immortal Dusk
			{ spellID = 35562 }, --Gloves of the Living Touch
			{ spellID = 46132 }, --Leather Gauntlets of the Sun
			{ spellID = 35563 }, --Windslayer Wraps
			{ spellID = 35533 }, --Enchanted Clefthoof Gloves
			{ spellID = 32490 }, --Fel Leather Gloves
			{ spellID = 32479 }, --Wild Draenish Gloves
			{ spellID = 32470 }, --Thick Draenic Gloves
		},
		{
			{ spellID = 35558 }, --Cobrascale Hood
			{ spellID = 35561 }, --Hood of Primal Life
			{ spellID = 35560 }, --Windscale Hood
			{ spellID = 32489 }, --Stylin' Jungle Hat
			{ spellID = 32485 }, --Stylin' Purple Hat
		},
		{
			{ spellID = 40005 }, --Redeemed Soul Legguards
			{ spellID = 32496 }, --Heavy Clefthoof Leggings
			{ spellID = 35535 }, --Blastguard Pants
			{ spellID = 35532 }, --Enchanted Clefthoof Leggings
			{ spellID = 32494 }, --Fel Leather Leggings
			{ spellID = 32480 }, --Wild Draenish Leggings
			{ spellID = 32471 }, --Thick Draenic Pants
		},
		{
			{ spellID = 41157 }, --Shoulderpads of Renewed Life
			{ spellID = 41160 }, --Swiftstrike Shoulders
		},
		{
			{ spellID = 36351 }, --Belt of Deep Shadow
			{ spellID = 36349 }, --Belt of Natural Power
			{ spellID = 35590 }, --Primalstrike Belt
			{ spellID = 40006 }, --Redeemed Soul Cinch
			{ spellID = 35587 }, --Windhawk Belt
		},
		{
			{ spellID = 41156 }, --Bracers of Renewed Life
			{ spellID = 35591 }, --Primalstrike Bracers
			{ spellID = 40004 }, --Redeemed Soul Wristguards
			{ spellID = 41158 }, --Swiftstrike Bracers
			{ spellID = 35588 }, --Windhawk Bracers
		},
		{
			{ spellID = 35580 }, --Netherstrike Breastplate
			{ spellID = 35575 }, --Ebon Netherscale Breastplate
			{ spellID = 46137 }, --Embrace of the Phoenix
			{ spellID = 46139 }, --Sun-Drenched Scale Chestguard
			{ spellID = 35574 }, --Thick Netherscale Breastplate
			{ spellID = 32500 }, --Felstalker Breastplate
			{ spellID = 36079 }, --Golden Dragonstrike Breastplate
			{ spellID = 32465 }, --Felscale Breastplate
			{ spellID = 32468 }, --Scaled Draenic Vest
		},
		{
			{ spellID = 36359 }, --Hurricane Boots
			{ spellID = 39997 }, --Boots of Shackled Souls
			{ spellID = 36358 }, --Boots of the Crimson Hawk
			{ spellID = 35567 }, --Earthen Netherscale Boots
			{ spellID = 35528 }, --Flamescale Boots
			{ spellID = 32503 }, --Netherfury Boots
			{ spellID = 35527 }, --Enchanted Felscale Boots
			{ spellID = 32469 }, --Scaled Draenic Boots
			{ spellID = 32463 }, --Felscale Boots
		},
		{
			{ spellID = 46135 }, --Sun-Drenched Scale Gloves
			{ spellID = 46133 }, --Fletcher's Gloves of the Phoenix
			{ spellID = 35568 }, --Windstrike Gloves
			{ spellID = 35573 }, --Netherdrake Gloves
			{ spellID = 32467 }, --Scaled Draenic Gloves
			{ spellID = 32462 }, --Felscale Gloves
		},
		{
			{ spellID = 35564 }, --Living Dragonscale Helm
			{ spellID = 35572 }, --Netherdrake Helm
			{ spellID = 32487 }, --Stylin' Adventure Hat
			{ spellID = 32488 }, --Stylin' Crimson Hat
			{ spellID = 35526 }, --Enchanted Felscale Gloves
		},
		{
			{ spellID = 40001 }, --Greaves of Shackled Souls
			{ spellID = 35529 }, --Flamescale Leggings
			{ spellID = 35525 }, --Enchanted Felscale Leggings
			{ spellID = 32502 }, --Netherfury Leggings
			{ spellID = 32464 }, --Felscale Pants
			{ spellID = 32466 }, --Scaled Draenic Pants
		},
		{
			{ spellID = 41162 }, --Shoulders of Lightning Reflexes
			{ spellID = 41164 }, --Living Earth Shoulders
		},
		{
			{ spellID = 40002 }, --Waistguard of Shackled Souls
			{ spellID = 35582 }, --Netherstrike Belt
			{ spellID = 36353 }, --Monsoon Belt
			{ spellID = 35576 }, --Ebon Netherscale Belt
			{ spellID = 36352 }, --Belt of the Black Eagle
			{ spellID = 32498 }, --Felstalker Belt
			{ spellID = 35531 }, --Flamescale Belt
			{ spellID = 35537 }, --Blastguard Belt
			{ spellID = 32501 }, --Netherfury Belt
		},
		{
			{ spellID = 35584 }, --Netherstrike Bracers
			{ spellID = 52733 }, --Bracers of Shackled Souls
			{ spellID = 35577 }, --Ebon Netherscale Bracers
			{ spellID = 41163 }, --Living Earth Bindings
			{ spellID = 41161 }, --Bindings of Lightning Reflexes
			{ spellID = 32499 }, --Felstalker Bracer
		},
		{
			{ spellID = 35557 }, --Nethercleft Leg Armor
			{ spellID = 35554 }, --Nethercobra Leg Armor
			{ spellID = 35555 }, --Clefthide Leg Armor
			{ spellID = 35549 }, --Cobrahide Leg Armor
			{ spellID = 22727 }, --Core Armor Kit
			{ spellID = 50963 }, --Heavy Borean Armor Kit
			{ spellID = 44770 }, --Glove Reinforcements
			{ spellID = 35524 }, --Arcane Armor Kit
			{ spellID = 35521 }, --Flame Armor Kit
			{ spellID = 35522 }, --Frost Armor Kit
			{ spellID = 35523 }, --Nature Armor Kit
			{ spellID = 35520 }, --Shadow Armor Kit
			{ spellID = 50962 }, --Borean Armor Kit
			{ spellID = 44970 }, --Heavy Knothide Armor Kit
			{ spellID = 32458 }, --Magister's Armor Kit
			{ spellID = 32457 }, --Vindicator's Armor Kit
			{ spellID = 32456 }, --Knothide Armor Kit
			{ spellID = 32482 }, --Comfortable Insoles
		},
		{
			{ spellID = 44768 }, --Netherscale Ammo Pouch
			{ spellID = 44359 }, --Quiver of a Thousand Feathers
			{ spellID = 44343 }, --Knothide Ammo Pouch
			{ spellID = 44344 }, --Knothide Quiver
		},
		{
			{ spellID = 35543 }, --Drums of Battle
			{ spellID = 45117 }, --Bag of Many Hides
			{ spellID = 32461 }, --Riding Crop
			{ spellID = 35538 }, --Drums of Panic
			{ spellID = 35539 }, --Drums of Restoration
			{ spellID = 35544 }, --Drums of Speed
			{ spellID = 35540 }, --Drums of War
			{ spellID = 35530 }, --Reinforced Mining Bag
			{ spellID = 45100 }, --Leatherworker's Satchel
		},
		{
			{ spellID = 32455 }, --Heavy Knothide Leather
			{ spellID = 32454 }, --Knothide Leather
		},
		{
			{ spellID = 35576 }, --Ebon Netherscale Belt
			{ spellID = 35577 }, --Ebon Netherscale Bracers
			{ spellID = 35575 }, --Ebon Netherscale Breastplate
			{ spellID = 35582 }, --Netherstrike Belt
			{ spellID = 35584 }, --Netherstrike Bracers
			{ spellID = 35580 }, --Netherstrike Breastplate
			{ spellID = 36079 }, --Golden Dragonstrike Breastplate
		},
		{
			{ spellID = 35590 }, --Primalstrike Belt
			{ spellID = 35591 }, --Primalstrike Bracers
			{ spellID = 35589 }, --Primalstrike Vest
			{ spellID = 36077 }, --Primalstorm Breastplate
		},
		{
			{ spellID = 35587 }, --Windhawk Belt
			{ spellID = 35588 }, --Windhawk Bracers
			{ spellID = 35585 }, --Windhawk Hauberk
			{ spellID = 36078 }, --Living Crystal Breastplate
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979522 }, --Cobra Strike Gambeson
			{ spellID = 979524 }, --Fel Strike Gambeson
			{ spellID = 979526 }, --Wind Gambeson
			{ spellID = 979528 }, --True Strike Gambeson
			{ spellID = 979530 }, --Clefthoof Gambeson
			{ spellID = 979532 }, --Subtle Gambeson
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 979523 }, --Mastercraft Cobra Strike Gambeson
			{ spellID = 979525 }, --Mastercraft Fel Strike Gambeson
			{ spellID = 979527 }, --Mastercraft Wind Gambeson
			{ spellID = 979529 }, --Mastercraft True Strike Gambeson
			{ spellID = 979531 }, --Mastercraft Clefthoof Gambeson
			{ spellID = 979533 }, --Mastercraft Subtle Gambeson
		},
	},
	["MiningTBC"] = {
		{
			{ spellID = 46353 }, --Smelt Hardened Khorium
			{ spellID = 29686 }, --Smelt Hardened Adamantite
			{ spellID = 29361 }, --Smelt Khorium
			{ spellID = 29360 }, --Smelt Felsteel
			{ spellID = 29359 }, --Smelt Eternium
			{ spellID = 29358 }, --Smelt Adamantite
			{ spellID = 29356 }, --Smelt Fel Iron
			{ spellID = 35751 }, --Fire Sunder
			{ spellID = 35750 }, --Earth Shatter
		},
	},
	["FirstAidTBC"] = {
		{
			{ spellID = 27033 }, --Heavy Netherweave Bandage
			{ spellID = 27032 }, --Netherweave Bandage
		},
	},
	-----------------
	--- Tailoring ---
	-----------------
	["TailoringTBC"] = {
		{
			{ spellID = 40060 }, --Night's End
			{ spellID = 31450 }, --Manaweave Cloak
			{ spellID = 31449 }, --Vengeance Wrap
			{ spellID = 37873 }, --Cloak of Arcane Evasion
			{ spellID = 31440 }, --Cloak of Eternity
			{ spellID = 31438 }, --Cloak of the Black Void
		},
		{
			{ spellID = 26758 }, --Frozen Shadoweave Robe
			{ spellID = 26762 }, --Primal Mooncloth Robe
			{ spellID = 26781 }, --Soulcloth Vest
			{ spellID = 26754 }, --Spellfire Robe
			{ spellID = 46131 }, --Robe of Eternal Light
			{ spellID = 46130 }, --Sunfire Robe
			{ spellID = 26784 }, --Arcanoweave Robe
			{ spellID = 37884 }, --Flameheart Vest
			{ spellID = 26777 }, --Imbued Netherweave Robe
			{ spellID = 26778 }, --Imbued Netherweave Tunic
			{ spellID = 26774 }, --Netherweave Tunic
			{ spellID = 26773 }, --Netherweave Robe
		},
		{
			{ spellID = 36317 }, --Boots of Blasting
			{ spellID = 36318 }, --Boots of the Long Road
			{ spellID = 40020 }, --Soulguard Slippers
			{ spellID = 26757 }, --Frozen Shadoweave Boots
			{ spellID = 26783 }, --Arcanoweave Boots
			{ spellID = 26776 }, --Imbued Netherweave Boots
			{ spellID = 26772 }, --Netherweave Boots
		},
		{
			{ spellID = 41207 }, --Swiftheal Wraps
			{ spellID = 46129 }, --Hands of Eternal Light
			{ spellID = 26753 }, --Spellfire Gloves
			{ spellID = 46128 }, --Sunfire Handwraps
			{ spellID = 26779 }, --Soulcloth Gloves
			{ spellID = 37883 }, --Flameheart Gloves
			{ spellID = 26770 }, --Netherweave Gloves
		},
		{
			{ spellID = 31456 }, --Battlecast Hood
			{ spellID = 31455 }, --Spellstrike Hood
			{ spellID = 31454 }, --Whitemend Hood
			{ spellID = 31448 }, --Resolute Cape
			{ spellID = 31441 }, --color.WHITE Remedy Cape
		},
		{
			{ spellID = 31453 }, --Battlecast Pants
			{ spellID = 40023 }, --Soulguard Leggings
			{ spellID = 31452 }, --Spellstrike Pants
			{ spellID = 31451 }, --Whitemend Pants
			{ spellID = 26775 }, --Imbued Netherweave Pants
			{ spellID = 26771 }, --Netherweave Pants
		},
		{
			{ spellID = 41206 }, --Mantle of Nimble Thought
			{ spellID = 41208 }, --Swiftheal Mantle
			{ spellID = 26761 }, --Primal Mooncloth Shoulders
			{ spellID = 26780 }, --Soulcloth Shoulders
			{ spellID = 26756 }, --Frozen Shadoweave Shoulders
		},
		{
			{ spellID = 36315 }, --Belt of Blasting
			{ spellID = 36316 }, --Belt of the Long Road
			{ spellID = 40024 }, --Soulguard Girdle
			{ spellID = 31444 }, --Black Belt of Knowledge
			{ spellID = 31443 }, --Girdle of Ruination
			{ spellID = 31442 }, --Unyielding Girdle
			{ spellID = 26760 }, --Primal Mooncloth Belt
			{ spellID = 26752 }, --Spellfire Belt
			{ spellID = 26765 }, --Netherweave Belt
		},
		{
			{ spellID = 41205 }, --Bracers of Nimble Thought
			{ spellID = 40021 }, --Soulguard Bracers
			{ spellID = 26782 }, --Arcanoweave Bracers
			{ spellID = 31437 }, --Blackstrike Bracers
			{ spellID = 37882 }, --Flameheart Bracers
			{ spellID = 31434 }, --Unyielding Bracers
			{ spellID = 31435 }, --Bracers of Havok
			{ spellID = 26764 }, --Netherweave Bracers
		},
		{
			{ spellID = 26759 }, --Ebon Shadowbag
			{ spellID = 50194 }, --Mycah's Botanical Bag
			{ spellID = 26763 }, --Primal Mooncloth Bag
			{ spellID = 26755 }, --Spellfire Bag
			{ spellID = 26086 }, --Felcloth Bag
			{ spellID = 31459 }, --Bag of Jewels
			{ spellID = 26749 }, --Imbued Netherweave Bag
			{ spellID = 26746 }, --Netherweave Bag
		},
		{
			{ spellID = 31433 }, --Golden Spellthread
			{ spellID = 31432 }, --Runic Spellthread
			{ spellID = 31430 }, --Mystic Spellthread
			{ spellID = 31431 }, --Silver Spellthread
		},
		{
			{ spellID = 26751 }, --Primal Mooncloth
			{ spellID = 36686 }, --Shadowcloth
			{ spellID = 31373 }, --Spellcloth
			{ spellID = 26747 }, --Bolt of Imbued Netherweave
			{ spellID = 26750 }, --Bolt of Soulcloth
			{ spellID = 26745 }, --Bolt of Netherweave
		},
		{
			{itemID = 44554, spellID = 60969 }, --Flying Carpet
			{ spellID = 31460 }, --Netherweave Net
		},
		{
			{ spellID = 26762 }, --Primal Mooncloth Robe
			{ spellID = 26761 }, --Primal Mooncloth Shoulders
			{ spellID = 26760 }, --Primal Mooncloth Belt
		},
		{
			{ spellID = 26758 }, --Frozen Shadoweave Robe
			{ spellID = 26757 }, --Frozen Shadoweave Boots
			{ spellID = 26756 }, --Frozen Shadoweave Shoulders
		},
		{
			{ spellID = 26754 }, --Spellfire Robe
			{ spellID = 26753 }, --Spellfire Gloves
			{ spellID = 26752 }, --Spellfire Belt
		},
		{
			{ name = "Rare", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 1968496 }, --Wrist Wraps of Twisted Might
			{ spellID = 1968498 }, --Wrist Wraps of Twisted Fury
			{ spellID = 1968500 }, --Wrist Wraps of Twisted Precision
			{ spellID = 1968502 }, --Wrist Wraps of Twisted Efficiency
			{ spellID = 1968504 }, --Wrist Wraps of Twisted Crushing
			{ spellID = 1968506 }, --Wrist Wraps of Twisted Glory
			{ name = "Epic", icon ="INV_Box_01", pageBreak = true },
			{ spellID = 1968497 }, --Fitted Wrist Wraps of Twisted Might
			{ spellID = 1968499 }, --Fitted Wrist Wraps of Twisted Fury
			{ spellID = 1968501 }, --Fitted Wrist Wraps of Twisted Precision
			{ spellID = 1968503 }, --Fitted Wrist Wraps of Twisted Efficiency
			{ spellID = 1968505 }, --Fitted Wrist Wraps of Twisted Crushing
			{ spellID = 1968507 }, --Fitted Wrist Wraps of Twisted Glory
		},
	}
})