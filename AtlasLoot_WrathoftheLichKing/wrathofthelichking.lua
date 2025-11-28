local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local color = AtlasLoot.Colors






-- Index
--- Dungeons & Raids
---- Keys
---- Utgarde Keep
---- The Nexus
---- Azjol-Nerub
---- Ahn'kahet: The Old Kingdom
---- Drak'Tharon Keep
---- The Violet Hold
---- Gundrak
---- Halls of Stone
---- Halls of Lightning
---- Caverns of Time: Old Stratholme
---- Utgarde Pinnacle
---- The Oculus
---- Vault of Archavon
---- Naxxramas
----- Construct Quarter
----- Arachnid Quarter
----- Military Quarter
----- Plague Quarter
----- Frostwyrm Lair
---- Obsidian Sanctum
---- The Eye of Eternity
---- Ulduar
---- Trial of the Champion
---- Trial of the Crusader
---- Trial of the Grand Crusader
---- Onyxia (Level 80)
---- The Forge of Souls
---- Pit of Saron
---- Halls of Reflection
---- Icecrown Citadel
----- Lower Spire
----- The Plagueworks
----- The Crimson Hall
----- Frostwing Halls
----- The Frozen Throne
---- Icecrown Citadel HEROIC
---- Ruby Sanctum
--- Factions
---- Alliance Vanguard
---- Argent Crusade
---- Frenzyheart Tribe
---- Horde Expedition
---- Kirin Tor
---- Knights of the Ebon Blade
---- The Kalu'ak
---- The Oracles
---- The Sons of Hodir
---- Winterfin Retreat
---- The Wyrmrest Accord
---- The Ashen Verdict
--- PvP
---- Armor Sets
---- Level 80 Epic Non-Sets
---- Wrathful Gladiator Weapons
---- PvP Class Items
---- PvP Miscellaneous
---- World PvP - Wintergrasp
---- World PvP - Grizzly Hills: Venture Bay
--- Sets & Collections
---- Naxx Sets (T7)/Ulduar Sets (T8)
---- Tier 9 Sets (T9)
---- Tier 10 Sets (T10)
---- Wrath Of The Lich King Sets
---- Blizzard Collectables
---- Legendaries
---- Tabards
---- Card Game Items
---- Vanity Pets
---- Mounts
---- BoE World Epics
---- Heirloom Items
---- Emblem of Heroism Items
---- Emblem of Valor Items
---- Emblem of Conquest Items
---- Emblem of Triumph Items
---- Emblem of Frost Items

------------------------
--- Dungeons & Raids ---
------------------------

------------
--- Keys ---
------------

AtlasLoot_Data["WrathKeys"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Keys",
	{
		Name = "Keys",
		{
			{ itemID = 44582 }, --Key to the Focusing Iris
			{ itemID = 44581 }, --Heroic Key to the Focusing Iris
			{ itemID = 45796 }, --Celestial Planetarium Key
			{ itemID = 45798 }, --Heroic Celestial Planetarium Key
			{ itemID = 42482 }, --The Violet Hold Key
		},
	},
}
--------------------
--- Utgarde Keep ---
--------------------

AtlasLoot_Data["UtgardeKeep"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Utgarde Keep",
	Type = "WrathDungeon",
	{
		Name = "Prince Keleseth",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35572 }, --Reinforced Velvet Helm
			{ itemID = 35571 }, --Dragon Stabler's Gauntlets
			{ itemID = 35570 }, --Keleseth's Blade of Evocation
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37180 }, --Battlemap Hide Helm
			{ itemID = 37178 }, --Strategist's Belt
			{ itemID = 37179 }, --Infantry Assault Blade
			{ itemID = 37177 }, --Wand of the San'layn
		},
	},
	{
		Name = "Skarvald the Constructor",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35575 }, --Skarvald's Dragonskin Habergeon
			{ itemID = 35574 }, --Chestplate of the Northern Lights
			{ itemID = 35573 }, --Arm Blade of Augelmir
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37183 }, --Bindings of the Tunneler
			{ itemID = 37184 }, --Dalronn's Jerkin
			{ itemID = 37182 }, --Helmet of the Constructor
			{ itemID = 37181 }, --Dagger of Betrayal
		},
	},
	{
		Name = "Ingvar the Plunderer",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35577 }, --Holistic Patchwork Breeches
			{ itemID = 35578 }, --Overlaid Chain Spaulders
			{ itemID = 35576 }, --Ingvar's Monolithic Cleaver
			{ itemID = 33330 }, --Ingvar's Head
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37194 }, --Sharp-Barbed Leather Belt
			{ itemID = 37193 }, --Staggering Legplates
			{ itemID = 37192 }, --Annhylde's Ring
			{ itemID = 37191 }, --Drake-Mounted Crossbow
			{ itemID = 37189 }, --Breeches of the Caller
			{ itemID = 37188 }, --Plunderer's Helmet
			{ itemID = 37186 }, --Unsmashable Heavy Band
			{ itemID = 37190 }, --Enraged Feral Staff
			{ itemID = 41793 }, --Design: Fierce Monarch Topaz
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35580 }, --Skein Woven Mantle
			{ itemID = 35579 }, --Vrykul Shackles
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37197 }, --Tattered Castle Drape
			{ itemID = 37196 }, --Runecaster's Mantle
		},
	},
}

-----------------
--- The Nexus ---
-----------------

AtlasLoot_Data["TheNexus"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Nexus",
	Type = "WrathDungeon",
	{
		Name = "Grand Magus Telestra",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35602 }, --Chiseled Stalagmite Pauldrons
			{ itemID = 35603 }, --Greaves of the color.BLUE Flight
			{ itemID = 35601 }, --Drakonid Arm Blade
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37153 }, --Gloves of the Crystal Gardener
			{ itemID = 37155 }, --Frozen Forest Kilt
			{ itemID = 37152 }, --Girdle of Ice
			{ itemID = 37151 }, --Band of Frosted Thorns
		},
	},
	{
		Name = "Anomalus",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35599 }, --Gauntlets of Serpent Scales
			{ itemID = 35600 }, --Cleated Ice Boots
			{ itemID = 35598 }, --Tome of the Lore Keepers
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37149 }, --Helm of Anomalus
			{ itemID = 37144 }, --Hauberk of the Arcane Wraith
			{ itemID = 37150 }, --Rift Striders
			{ itemID = 37141 }, --Amulet of Dazzling Light
		},
	},
	{
		Name = "Ormorok the Tree-Shaper",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35605 }, --Belt of Draconic Runes
			{ itemID = 35604 }, --Insulating Bindings
			{ itemID = 35617 }, --Wand of Shimmering Scales
			{ itemID = 21524 }, --color.RED Winter Hat
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37139 }, --Spaulders of the Careless Thief
			{ itemID = 37138 }, --Bands of Channeled Energy
			{ itemID = 37135 }, --Arcane-Shielded Helm
			{ itemID = 37134 }, --Telestra's Journal
			{ itemID = 21524 }, --color.RED Winter Hat
		},
	},
	{
		Name = "Commander Kolurg",
		{
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37728 }, --Cloak of the Enemy
			{ itemID = 37731 }, --Opposed Stasis Leggings
			{ itemID = 37730 }, --Cleric's Linen Shoes
			{ itemID = 37729 }, --Grips of Sculptured Icicles
		},
	},
	{
		Name = "Keristrasza",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35596 }, --Attuned Crystalline Boots
			{ itemID = 35595 }, --Glacier Sharpened Vileblade
			{ itemID = 35597 }, --Band of Glittering Permafrost
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37172 }, --Gloves of Glistening Runes
			{ itemID = 37170 }, --Interwoven Scale Bracers
			{ itemID = 37171 }, --Flame-Bathed Steel Girdle
			{ itemID = 37169 }, --War Mace of Unrequited Love
			{ itemID = 37165 }, --Crystal-Infused Tunic
			{ itemID = 37167 }, --Dragon Slayer's Sabatons
			{ itemID = 37166 }, --Sphere of color.RED Dragon's Blood
			{ itemID = 37162 }, --Bulwark of the Noble Protector
			{ itemID = 41794 }, --Design: Deadly Monarch Topaz
			{ itemID = 43102 }, --Frozen Orb
		},
	},
}

-------------------
--- Azjol-Nerub ---
-------------------

AtlasLoot_Data["AzjolNerub"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Azjol-Nerub",
	Type = "WrathDungeon",
	{
		Name = "Krik'thir the Gatewatcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35657 }, --Exquisite Spider-Silk Footwraps
			{ itemID = 35656 }, --Aura Focused Gauntlets
			{ itemID = 35655 }, --Cobweb Machete
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37218 }, --Stone-Worn Footwraps
			{ itemID = 37219 }, --Custodian's Chestpiece
			{ itemID = 37217 }, --Golden Limb Bands
			{ itemID = 37216 }, --Facade Shield of Glyphs
		},
	},
	{
		Name = "Hadronox",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35660 }, --Spinneret Epaulets
			{ itemID = 35659 }, --Treads of Aspiring Heights
			{ itemID = 35658 }, --Life-Staff of the Web Lair
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37222 }, --Egg Sac Robes
			{ itemID = 37230 }, --Grotto Mist Gloves
			{ itemID = 37221 }, --Hollowed Mandible Legplates
			{ itemID = 37220 }, --Essence of Gossamer
		},
	},
	{
		Name = "Anub'arak",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35663 }, --Charmed Silken Cord
			{ itemID = 35662 }, --Wing Cover Girdle
			{ itemID = 35661 }, --Signet of Arachnathid Command
			{ itemID = 43411 }, --Anub'arak's Broken Husk
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37242 }, --Sash of the Servant
			{ itemID = 37240 }, --Flamebeard's Bracers
			{ itemID = 37241 }, --Ancient Aligned Girdle
			{ itemID = 37238 }, --Rod of the Fallen Monarch
			{ itemID = 37236 }, --Insect Vestments
			{ itemID = 37237 }, --Chitin Shell Greathelm
			{ itemID = 37232 }, --Ring of the Traitor King
			{ itemID = 37235 }, --Crypt Lord's Deft Blade
			{ itemID = 41796 }, --Design: Infused Twilight Opal
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37243 }, --Treasure Seeker's Belt
			{ itemID = 37625 }, --Web Winder Gloves
			{ itemID = 37624 }, --Stained-Glass Shard Ring
		},
	},
}

----------------------------------
--- Ahn'kahet: The Old Kingdom ---
----------------------------------

AtlasLoot_Data["Ahnkahet"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Ahn'kahet: The Old Kingdom",
	Type = "WrathDungeon",
	{
		Name = "Elder Nadox",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35607 }, --Ahn'kahar Handwraps
			{ itemID = 35608 }, --Crawler-Emblem Belt
			{ itemID = 35606 }, --Blade of Nadox
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37594 }, --Elder Headpiece
			{ itemID = 37593 }, --Sprinting Shoulderpads
			{ itemID = 37592 }, --Brood Plague Helmet
			{ itemID = 37591 }, --Nerubian Shield Ring
		},
	},
	{
		Name = "Prince Taldaram",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35611 }, --Gloves of the Blood Prince
			{ itemID = 35610 }, --Slasher's Amulet
			{ itemID = 35609 }, --Talisman of Scourge Command
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37613 }, --Flame Sphere Bindings
			{ itemID = 37614 }, --Gauntlets of the Plundering Geist
			{ itemID = 37612 }, --Bonegrinder Breastplate
			{ itemID = 37595 }, --Necklace of Taldaram
		},
	},
	{
		Name = "Amanitar" .. " (" .. "Heroic" .. ")",
		{
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43287 }, --Silken Bridge Handwraps
			{ itemID = 43286 }, --Legguards of Swarming Attacks
			{ itemID = 43285 }, --Amulet of the Spell Flinger
			{ itemID = 43284 }, --Amanitar Skullbow
		},
	},
	{
		Name = "Jedoga Shadowseeker",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 43278 }, --Cloak of the Darkcaster
			{ itemID = 43279 }, --Battlechest of the Twilight Cult
			{ itemID = 43277 }, --Jedoga's Greatring
			{ itemID = 21524 }, --color.RED Winter Hat
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43283 }, --Subterranean Waterfall Shroud
			{ itemID = 43280 }, --Faceguard of the Hammer Clan
			{ itemID = 43282 }, --Shadowseeker's Pendant
			{ itemID = 43281 }, --Edge of Oblivion
			{ itemID = 21524 }, --color.RED Winter Hat
		},
	},
	{
		Name = "Herald Volazj",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35612 }, --Mantle of Echoing Bats
			{ itemID = 35613 }, --Pyramid Embossed Belt
			{ itemID = 35614 }, --Volazj's Sabatons
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37622 }, --Skirt of the Old Kingdom
			{ itemID = 37623 }, --Fiery Obelisk Handguards
			{ itemID = 37620 }, --Bracers of the Herald
			{ itemID = 37619 }, --Wand of Ahnkahet
			{ itemID = 37616 }, --Kilt of the Forgotten One
			{ itemID = 37618 }, --Greaves of Ancient Evil
			{ itemID = 37617 }, --Staff of Sinister Claws
			{ itemID = 37615 }, --Titanium Compound Bow
			{ itemID = 41790 }, --Design: Precise Scarlet Ruby
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35616 }, --Spored Tendrils Spaulders
			{ itemID = 35615 }, --Glowworm Cavern Bindings
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37625 }, --Web Winder Gloves
			{ itemID = 37624 }, --Stained-Glass Shard Ring
		},
	},
}

------------------------
--- Drak'Tharon Keep ---
------------------------

AtlasLoot_Data["DrakTharonKeep"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Drak'Tharon Keep",
	Type = "WrathDungeon",
	{
		Name = "Trollgore",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35620 }, --Berserker's Horns
			{ itemID = 35619 }, --Infection Resistant Legguards
			{ itemID = 35618 }, --Troll Butcherer
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37715 }, --Cowl of the Dire Troll
			{ itemID = 37714 }, --Batrider's Cord
			{ itemID = 37717 }, --Legs of Physical Regeneration
			{ itemID = 37712 }, --Terrace Defence Boots
		},
	},
	{
		Name = "Novos the Summoner",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35632 }, --Robes of Novos
			{ itemID = 35631 }, --Crystal Pendant of Warding
			{ itemID = 35630 }, --Summoner's Stone Gavel
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37722 }, --Breastplate of Undeath
			{ itemID = 37718 }, --Temple Crystal Fragment
			{ itemID = 37721 }, --Cursed Lich Blade
		},
	},
	{
		Name = "King Dred",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35635 }, --Stable Master's Breeches
			{ itemID = 35634 }, --Scabrous-Hide Helm
			{ itemID = 35633 }, --Staff of the Great Reptile
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37725 }, --Savage Wound Wrap
			{ itemID = 37724 }, --Handler's Arm Strap
			{ itemID = 37726 }, --King Dred's Helm
			{ itemID = 37723 }, --Incisor Fragment
		},
	},
	{
		Name = "The Prophet Tharon'ja",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35638 }, --Helmet of Living Flesh
			{ itemID = 35637 }, --Muradin's Lost Greaves
			{ itemID = 35636 }, --Tharon'ja's Aegis
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37798 }, --Overlook Handguards
			{ itemID = 37791 }, --Leggings of the Winged Serpent
			{ itemID = 37788 }, --Limb Regeneration Bracers
			{ itemID = 37784 }, --Keystone Great-Ring
			{ itemID = 37735 }, --Ziggurat Imprinted Chestguard
			{ itemID = 37732 }, --Spectral Seal of the Prophet
			{ itemID = 37734 }, --Talisman of Troll Divinity
			{ itemID = 37733 }, --Mojo Masked Crusher
			{ itemID = 41795 }, --Design: Timeless Forest Emerald
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35641 }, --Scytheclaw Boots
			{ itemID = 35640 }, --Darkweb Bindings
			{ itemID = 35639 }, --Brighthelm of Guarding
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37799 }, --Reanimator's Cloak
			{ itemID = 37800 }, --Aviary Guardsman's Hauberk
			{ itemID = 37801 }, --Waistguard of the Risen Knight
		},
	},
}

-----------------------
--- The Violet Hold ---
-----------------------

AtlasLoot_Data["TheVioletHold"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Violet Hold",
	Type = "WrathDungeon",
	{
		Name = "Erekem",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 43363 }, --Screeching Cape
			{ itemID = 43375 }, --Trousers of the Arakkoa
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43406 }, --Cloak of the Gushing Wound
			{ itemID = 43405 }, --Sabatons of Erekem
			{ itemID = 43407 }, --Stormstrike Mace
		},
	},
	{
		Name = "Zuramat the Obliterator",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 43353 }, --Void Sentry Legplates
			{ itemID = 43358 }, --Pendant of Shadow Beams
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43403 }, --Shroud of Darkness
			{ itemID = 43402 }, --The Obliterator Greaves
			{ itemID = 43404 }, --Zuramat's Necklace
		},
	},
	{
		Name = "Xevozz",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35644 }, --Xevozz's Belt
			{ itemID = 35642 }, --Riot Shield
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37867 }, --Footwraps of Teleportation
			{ itemID = 37868 }, --Girdle of the Ethereal
			{ itemID = 37861 }, --Necklace of Arcane Spheres
		},
	},
	{
		Name = "Ichoron",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35647 }, --Handguards of Rapid Pursuit
			{ itemID = 35643 }, --Spaulders of Ichoron
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43401 }, --Water-Drenched Robe
			{ itemID = 37862 }, --Gauntlets of the Water Revenant
			{ itemID = 37869 }, --Globule Signet
		},
	},
	{
		Name = "Moragg",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 43387 }, --Shoulderplates of the Beholder
			{ itemID = 43382 }, --Band of Eyes
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43410 }, --Moragg's Chestguard
			{ itemID = 43408 }, --Solitare of Reflecting Beams
			{ itemID = 43409 }, --Saliva Corroded Pike
		},
	},
	{
		Name = "Lavanthor",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35646 }, --Lava Burn Gloves
			{ itemID = 35645 }, --Prison Warden's Shotgun
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37870 }, --Twin-Headed Boots
			{ itemID = 37872 }, --Lavanthor's Talisman
			{ itemID = 37871 }, --The Key
		},
	},
	{
		Name = "Cyanigosa",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35650 }, --Boots of the Portal Guardian
			{ itemID = 35651 }, --Plate Claws of the Dragon
			{ itemID = 35649 }, --Jailer's Baton
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37884 }, --Azure Cloth Bindings
			{ itemID = 37886 }, --Handgrips of the Savage Emissary
			{ itemID = 43500 }, --Bolstered Legplates
			{ itemID = 37883 }, --Staff of Trickery
			{ itemID = 37876 }, --Cyanigosa's Leggings
			{ itemID = 37875 }, --Spaulders of the Violet Hold
			{ itemID = 37874 }, --Gauntlets of Capture
			{ itemID = 37873 }, --Mark of the War Prisoner
			{ itemID = 41791 }, --Design: Thick Autumn's Glow
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35654 }, --Bindings of the Bastille
			{ itemID = 35653 }, --Dungeon Girdle
			{ itemID = 35652 }, --Incessant Torch
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 35654 }, --Bindings of the Bastille
			{ itemID = 37890 }, --Chain Gang Legguards
			{ itemID = 37891 }, --Cast Iron Shackles
			{ itemID = 35653 }, --Dungeon Girdle
			{ itemID = 37889 }, --Prison Manifest
			{ itemID = 35652 }, --Incessant Torch
		},
	},
}

---------------
--- Gundrak ---
---------------

AtlasLoot_Data["Gundrak"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Gundrak",
	Type = "WrathDungeon",
	{
		Name = "Slad'ran",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35584 }, --Embroidered Gown of Zul'drak
			{ itemID = 35585 }, --Cannibal's Legguards
			{ itemID = 35583 }, --Witch Doctor's Wildstaff
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37629 }, --Slithering Slippers
			{ itemID = 37628 }, --Slad'ran's Coiled Cord
			{ itemID = 37627 }, --Snake Den Spaulders
			{ itemID = 37626 }, --Wand of Sseratus
		},
	},
	{
		Name = "Drakkari Colossus",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35591 }, --Shoulderguards of the Ice Troll
			{ itemID = 35592 }, --Hauberk of Totemic Mastery
			{ itemID = 35590 }, --Drakkari Hunting Bow
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37637 }, --Living Mojo Belt
			{ itemID = 37636 }, --Helm of Cheated Fate
			{ itemID = 37634 }, --Bracers of the Divine Elemental
			{ itemID = 37635 }, --Pauldrons of the Colossus
		},
	},
	{
		Name = "Moorabi",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35588 }, --Forlorn Breastplate of War
			{ itemID = 35589 }, --Arcane Focal Signet
			{ itemID = 35587 }, --Frozen Scepter of Necromancy
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37630 }, --Shroud of Moorabi
			{ itemID = 37633 }, --Ground Tremor Helm
			{ itemID = 37632 }, --Mojo Frenzy Greaves
			{ itemID = 37631 }, --Fist of the Deity
		},
	},
	{
		Name = "Eck the Ferocious" .. " (" .. "Heroic" .. ")",
		{
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43313 }, --Leggings of the Ruins Dweller
			{ itemID = 43312 }, --Gorloc Muddy Footwraps
			{ itemID = 43311 }, --Helmet of the Shrine
			{ itemID = 43310 }, --Engraved Chestplate of Eck
		},
	},
	{
		Name = "Gal'darah",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 43305 }, --Shroud of Akali
			{ itemID = 43309 }, --Amulet of the Stampede
			{ itemID = 43306 }, --Gal'darah's Signet
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37643 }, --Sash of Blood Removal
			{ itemID = 37644 }, --Gored Hide Legguards
			{ itemID = 37645 }, --Horn-Tipped Gauntlets
			{ itemID = 37642 }, --Hemorrhaging Circle
			{ itemID = 37641 }, --Arcane Flame Altar-Garb
			{ itemID = 37640 }, --Boots of Transformation
			{ itemID = 37639 }, --Grips of the Beast God
			{ itemID = 37638 }, --Offering of Sacrifice
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35594 }, --Snowmelt Silken Cinch
			{ itemID = 35593 }, --Steel Bear Trap Bracers
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37647 }, --Cloak of Bloodied Waters
			{ itemID = 37648 }, --Belt of Tasseled Lanterns
			{ itemID = 37646 }, --Burning Skull Pendant
		},
	},
}

----------------------
--- Halls of Stone ---
----------------------

AtlasLoot_Data["HallsofStone"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Halls of Stone",
	Type = "WrathDungeon",
	{
		Name = "Maiden of Grief",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 38614 }, --Embrace of Sorrow
			{ itemID = 38613 }, --Chain of Fiery Orbs
			{ itemID = 38611 }, --Ringlet of Repose
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 38616 }, --Maiden's Girdle
			{ itemID = 38615 }, --Lightning-Charged Gloves
			{ itemID = 38617 }, --Woeful Band
			{ itemID = 38618 }, --Hammer of Grief
		},
	},
	{
		Name = "Krystallus",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35673 }, --Leggings of Burning Gleam
			{ itemID = 35672 }, --Hollow Geode Helm
			{ itemID = 35670 }, --Brann's Lost Mining Helmet
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37652 }, --Spaulders of Krystallus
			{ itemID = 37650 }, --Shardling Legguards
			{ itemID = 37651 }, --The Prospector's Prize
		},
	},
	{
		Name = "The Tribunal of Ages",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35677 }, --Cosmos Vestments
			{ itemID = 35676 }, --Constellation Leggings
			{ itemID = 35675 }, --Linked Armor of the Sphere
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37655 }, --Mantle of the Tribunal
			{ itemID = 37656 }, --Raging Construct Bands
			{ itemID = 37654 }, --Sabatons of the Ages
			{ itemID = 37653 }, --Sword of Justice
		},
	},
	{
		Name = "Sjonnir The Ironshaper",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35679 }, --Static Cowl
			{ itemID = 35678 }, --Ironshaper's Legplates
			{ itemID = 35680 }, --Amulet of Wills
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37669 }, --Leggings of the Stone Halls
			{ itemID = 37668 }, --Bands of the Stoneforge
			{ itemID = 37670 }, --Sjonnir's Girdle
			{ itemID = 37667 }, --The Fleshshaper
			{ itemID = 37666 }, --Boots of the Whirling Mist
			{ itemID = 37658 }, --Sun-Emblazoned Chestplate
			{ itemID = 37657 }, --Spark of Life
			{ itemID = 37660 }, --Forge Ember
			{ itemID = 41792 }, --Design: Deft Monarch Topaz
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 35682 }, --Rune Giant Bindings
			{ itemID = 35683 }, --Palladium Ring
			{ itemID = 35681 }, --Unrelenting Blade
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37673 }, --Dark Runic Mantle
			{ itemID = 37672 }, --Patina-Coated Breastplate
			{ itemID = 37671 }, --Refined Ore Gloves
		},
	},
}

--------------------------
--- Halls of Lightning ---
--------------------------

AtlasLoot_Data["HallsofLightning"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Halls of Lightning",
	Type = "WrathDungeon",
	{
		Name = "General Bjarngrim",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36982 }, --Mantle of Electrical Charges
			{ itemID = 36979 }, --Bjarngrim Family Signet
			{ itemID = 36980 }, --Hewn Sparring Quarterstaff
			{ itemID = 36981 }, --Hardened Vrykul Throwing Axe
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37825 }, --Traditionally Dyed Handguards
			{ itemID = 37818 }, --Patroller's War-Kilt
			{ itemID = 37814 }, --Iron Dwarf Smith Pauldrons
			{ itemID = 37826 }, --The General's Steel Girdle
		},
	},
	{
		Name = "Volkhan",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36983 }, --Cape of Seething Steam
			{ itemID = 36985 }, --Volkhan's Hood
			{ itemID = 36986 }, --Kilt of Molten Golems
			{ itemID = 36984 }, --Eternally Folded Blade
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37840 }, --Shroud of Reverberation
			{ itemID = 37843 }, --Giant-Hair Woven Gloves
			{ itemID = 37842 }, --Belt of Vivacity
			{ itemID = 37841 }, --Slag Footguards
		},
	},
	{
		Name = "Ionar",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 39536 }, --Thundercloud Grasps
			{ itemID = 39657 }, --Tornado Cuffs
			{ itemID = 39534 }, --Pauldrons of the Lightning Revenant
			{ itemID = 39535 }, --Ionar's Girdle
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37846 }, --Charged-Bolt Grips
			{ itemID = 37845 }, --Cord of Swirling Winds
			{ itemID = 37826 }, --The General's Steel Girdle
			{ itemID = 37844 }, --Winged Talisman
		},
	},
	{
		Name = "Loken",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36991 }, --Raiments of the Titans
			{ itemID = 36996 }, --Hood of the Furtive Assassin
			{ itemID = 36992 }, --Leather-Braced Chain Leggings
			{ itemID = 36995 }, --Fists of Loken
			{ itemID = 36988 }, --Chaotic Spiral Amulet
			{ itemID = 36993 }, --Seal of the Pantheon
			{ itemID = 36994 }, --Projectile Activator
			{ itemID = 36989 }, --Ancient Measuring Rod
			{ itemID = 41799 }, --Design: Eternal Earthsiege Diamond
			{ itemID = 43151 }, --Loken's Tongue
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37854 }, --Woven Bracae Leggings
			{ itemID = 37853 }, --Advanced Tooled-Leather Bands
			{ itemID = 37855 }, --Mail Girdle of the Audient Earth
			{ itemID = 37852 }, --Colossal Skull-Clad Cleaver
			{ itemID = 37851 }, --Ornate Woolen Stola
			{ itemID = 37850 }, --Flowing Sash of Order
			{ itemID = 37849 }, --Planetary Helm
			{ itemID = 37848 }, --Lightning Giant Staff
			{ itemID = 41799 }, --Design: Eternal Earthsiege Diamond
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36997 }, --Sash of the Hardened Watcher
			{ itemID = 37000 }, --Storming Vortex Bracers
			{ itemID = 36999 }, --Boots of the Terrestrial Guardian
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37858 }, --Awakened Handguards
			{ itemID = 37857 }, --Helm of the Lightning Halls
			{ itemID = 37856 }, --Librarian's Paper Cutter
		},
	},
}

---------------------------------------
--- Caverns of Time: Old Stratholme ---
---------------------------------------

AtlasLoot_Data["CoTStratholme"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Caverns of Time" .. ": " .. "The Culling of Stratholme",
	DisplayName = "The Culling of Stratholme",
	Type = "WrathDungeon",
	{
		Name = "Meathook",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37083 }, --Kilt of Sewn Flesh
			{ itemID = 37082 }, --Slaughterhouse Sabatons
			{ itemID = 37079 }, --Enchanted Wire Stitching
			{ itemID = 37081 }, --Meathook's Slicer
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37680 }, --Belt of Unified Souls
			{ itemID = 37678 }, --Bile-Cured Gloves
			{ itemID = 37679 }, --Spaulders of the Abomination
			{ itemID = 37675 }, --Legplates of Steel Implants
		},
	},
	{
		Name = "Salramm the Fleshcrafter",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37084 }, --Flowing Cloak of Command
			{ itemID = 37095 }, --Waistband of the Thuzadin
			{ itemID = 37088 }, --Spiked Metal Cilice
			{ itemID = 37086 }, --Tome of Salramm
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37684 }, --Forgotten Shadow Hood
			{ itemID = 37682 }, --Bindings of Dark Will
			{ itemID = 37683 }, --Necromancer's Amulet
			{ itemID = 37681 }, --Gavel of the Fleshcrafter
		},
	},
	{
		Name = "Chrono-Lord Epoch",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37106 }, --Ouroboros Belt
			{ itemID = 37105 }, --Treads of Altered History
			{ itemID = 37096 }, --Necklace of the Chrono-Lord
			{ itemID = 37099 }, --Sempiternal Staff
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37687 }, --Gloves of Distorted Time
			{ itemID = 37686 }, --Cracked Epoch Grasps
			{ itemID = 37688 }, --Legplates of the Infinite Drakonid
			{ itemID = 37685 }, --Mobius Band
		},
	},
	{
		Name = "Infinite Corruptor" .. " (" .. "Heroic" .. ")",
		{
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43951 }, --Reins of the Bronze Drake
		},
	},
	{
		Name = "Mal'Ganis",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37113 }, --Demonic Fabric Bands
			{ itemID = 37114 }, --Gloves of Northern Lordaeron
			{ itemID = 37110 }, --Gauntlets of Dark Conversion
			{ itemID = 37109 }, --Discarded Silver Hand Spaulders
			{ itemID = 37111 }, --Soul Preserver
			{ itemID = 37108 }, --Dreadlord's Blade
			{ itemID = 37112 }, --Beguiling Scepter
			{ itemID = 37107 }, --Leeka's Shield
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37696 }, --Plague-Infected Bracers
			{ itemID = 37695 }, --Legguards of Nature's Power
			{ itemID = 37694 }, --Band of Guile
			{ itemID = 37693 }, --Greed
			{ itemID = 43085 }, --Royal Crest of Lordaeron
			{ itemID = 37691 }, --Mantle of Deceit
			{ itemID = 37690 }, --Pauldrons of Destiny
			{ itemID = 37689 }, --Pendant of the Nathrezim
			{ itemID = 37692 }, --Pierce's Pistol
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 37117 }, --King's Square Bracers
			{ itemID = 37116 }, --Epaulets of Market Row
			{ itemID = 37115 }, --Crusader's Square Pauldrons
		},
	},
}

------------------------
--- Utgarde Pinnacle ---
------------------------

AtlasLoot_Data["UtgardePinnacle"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Utgarde Pinnacle",
	Type = "WrathDungeon",
	{
		Name = "Skadi the Ruthless",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37043 }, --Tear-Linked Gauntlets
			{ itemID = 37040 }, --Svala's Bloodied Shackles
			{ itemID = 37037 }, --Ritualistic Athame
			{ itemID = 37038 }, --Brazier Igniter
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37370 }, --Cuffs of the Trussed Hall
			{ itemID = 37369 }, --Sorrowgrave's Breeches
			{ itemID = 37368 }, --Silent Spectator Shoulderpads
			{ itemID = 37367 }, --Echoing Stompers
		},
	},
	{
		Name = "King Ymiron",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37048 }, --Shroud of Resurrection
			{ itemID = 37052 }, --Reanimated Armor
			{ itemID = 37051 }, --Seal of Valgarde
			{ itemID = 37050 }, --Trophy Gatherer
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37374 }, --Ravenous Leggings of the Furbolg
			{ itemID = 37373 }, --Massive Spaulders of the Jormungar
			{ itemID = 37376 }, --Ferocious Pauldrons of the Rhino
			{ itemID = 37371 }, --Ring of the Frenzied Wolvar
		},
	},
	{
		Name = "Svala Sorrowgrave",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37055 }, --Silken Amice of the Ymirjar
			{ itemID = 37057 }, --Drake Rider's Tunic
			{ itemID = 37056 }, --Harpooner's Striders
			{ itemID = 37053 }, --Amulet of Deflected Blows
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 44151 }, --Reins of the color.BLUE Proto-Drake
			{ itemID = 37389 }, --Crenelation Leggings
			{ itemID = 37379 }, --Skadi's Iron Belt
			{ itemID = 37377 }, --Netherbreath Spellblade
			{ itemID = 37384 }, --Staff of Wayward Principles
		},
	},
	{
		Name = "Gortok Palehoof",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37067 }, --Ceremonial Pyre Mantle
			{ itemID = 37062 }, --Crown of Forgotten Kings
			{ itemID = 37066 }, --Ancient Royal Legguards
			{ itemID = 37058 }, --Signet of Ranulf
			{ itemID = 37064 }, --Vestige of Haldor
			{ itemID = 37060 }, --Jeweled Coronation Sword
			{ itemID = 37065 }, --Ymiron's Blade
			{ itemID = 37061 }, --Tor's Crest
			{ itemID = 41797 }, --Design: Austere Earthsiege Diamond
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37408 }, --Girdle of Bane
			{ itemID = 37409 }, --Gilt-Edged Leather Gauntlets
			{ itemID = 37407 }, --Sovereign's Belt
			{ itemID = 37401 }, --color.RED Sword of Courage
			{ itemID = 37398 }, --Mantle of Discarded Ways
			{ itemID = 37395 }, --Ornamented Plate Regalia
			{ itemID = 37397 }, --Gold Amulet of Kings
			{ itemID = 37390 }, --Meteorite Whetstone
			{ itemID = 41797 }, --Design: Austere Earthsiege Diamond
			{ itemID = 43102 }, --Frozen Orb
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 37070 }, --Tundra Wolf Boots
			{ itemID = 37069 }, --Dragonflayer Seer's Bindings
			{ itemID = 37068 }, --Berserker's Sabatons
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37587 }, --Ymirjar Physician's Robe
			{ itemID = 37590 }, --Bands of Fading Light
			{ itemID = 37410 }, --Tracker's Balanced Knives
		},
	},
}

------------------
--- The Oculus ---
------------------

AtlasLoot_Data["TheOculus"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Oculus",
	Type = "WrathDungeon",
	{
		Name = "Drakos the Interrogator",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36945 }, --Verdisa's Cuffs of Dreaming
			{ itemID = 36946 }, --Runic Cage Chestpiece
			{ itemID = 36943 }, --Timeless Beads of Eternos
			{ itemID = 36944 }, --Lifeblade of Belgaristrasz
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37258 }, --Drakewing Raiments
			{ itemID = 37256 }, --Scaled Armor of Drakos
			{ itemID = 37257 }, --Band of Torture
			{ itemID = 37255 }, --The Interrogator
		},
	},
	{
		Name = "Mage-Lord Urom",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36947 }, --Centrifuge Core Cloak
			{ itemID = 36949 }, --Gloves of the Azure-Lord
			{ itemID = 36948 }, --Horned Helm of Varos
			{ itemID = 36950 }, --Wing Commander's Breastplate
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37261 }, --Gloves of Radiant Light
			{ itemID = 37262 }, --Azure Ringmail Leggings
			{ itemID = 37263 }, --Legplates of the Oculus Guardian
			{ itemID = 37260 }, --Cloudstrider's Waraxe
		},
	},
	{
		Name = "Varos Cloudstrider",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36954 }, --The Conjurer's Slippers
			{ itemID = 36951 }, --Sidestepping Handguards
			{ itemID = 36953 }, --Spaulders of Skillful Maneuvers
			{ itemID = 36952 }, --Girdle of Obscuring
			{ itemID = 21525 }, --color.GREEN Winter Hat
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37289 }, --Sash of Phantasmal Images
			{ itemID = 37288 }, --Catalytic Bands
			{ itemID = 37195 }, --Band of Enchanted Growth
			{ itemID = 37264 }, --Pendulum of Telluric Currents
			{ itemID = 21525 }, --color.GREEN Winter Hat
		},
	},
	{
		Name = "Ley-Guardian Eregos",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36973 }, --Vestments of the Scholar
			{ itemID = 36971 }, --Headguard of Westrift
			{ itemID = 36969 }, --Helm of the Ley-Guardian
			{ itemID = 36974 }, --Eredormu's Ornamented Chestguard
			{ itemID = 36961 }, --Dragonflight Great-Ring
			{ itemID = 36972 }, --Tome of Arcane Phenomena
			{ itemID = 36962 }, --Wyrmclaw Battleaxe
			{ itemID = 36975 }, --Malygos's Favor
			{ itemID = 41798 }, --Design: Bracing Earthsiege Diamond
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 37361 }, --Cuffs of Winged Levitation
			{ itemID = 37363 }, --Gauntlets of Dragon Wrath
			{ itemID = 37362 }, --Leggings of Protective Auras
			{ itemID = 37360 }, --Staff of Draconic Combat
			{ itemID = 37291 }, --Ancient Dragon Spirit Cape
			{ itemID = 37294 }, --Crown of Unbridled Magic
			{ itemID = 37293 }, --Mask of the Watcher
			{ itemID = 37292 }, --Ley-Guardian's Legguards
			{ itemID = 43102 }, --Frozen Orb
			{ itemID = 52676, "=ds=" .. "Random Heroic Reward" }, --Cache of the Ley-Guardian
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 36978 }, --Ley-Whelphide Belt
			{ itemID = 36977 }, --Bindings of the Construct
			{ itemID = 36976 }, --Ring-Lord's Leggings
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 37366 }, --Drake-Champion's Bracers
			{ itemID = 37365 }, --Bands of the Sky Ring
			{ itemID = 37290 }, --Dragon Prow Amulet
			{ itemID = 37364 }, --Frostbridge Orb
		},
	},
}

--------------------------
--- The Forge of Souls ---
--------------------------

AtlasLoot_Data["ForgeofSouls"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Forge of Souls",
	Type = "WrathDungeon",
	{
		Name = "Bronjahm",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 49788 }, --Cold Sweat Grips
			{ itemID = 49785 }, --Bewildering Shoulderpads
			{ itemID = 49786 }, --Robes of the Cheating Heart
			{ itemID = 49787 }, --Seven Stormy Mornings
			{ itemID = 49784 }, --Minister's Number One Legplates
			{ itemID = 49783 }, --Lucky Old Sun
			{ itemID = 50317 }, --Papa's New Bag
			{ itemID = 50316 }, --Papa's Brand New Bag
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 50193 }, --Very Fashionable Shoulders
			{ itemID = 50197 }, --Eyes of Bewilderment
			{ itemID = 50194 }, --Weeping Gauntlets
			{ itemID = 50196 }, --Love's Prisoner
			{ itemID = 50191 }, --Nighttime
			{ itemID = 50169 }, --Papa's Brand New Knife
			{ itemID = 50317 }, --Papa's New Bag
			{ itemID = 50316 }, --Papa's Brand New Bag
		},
	},
	{
		Name = "Devourer of Souls",
		{
			{ itemID = 49792 }, --Accursed Crawling Cape
			{ itemID = 49796 }, --Essence of Anger
			{ itemID = 49798 }, --Soul Screaming Boots
			{ itemID = 49791 }, --Lost Reliquary Chestguard
			{ itemID = 49797 }, --Brace Guards of the Starless Night
			{ itemID = 49794 }, --Legplates of Frozen Granite
			{ itemID = 49795 }, --Sollerets of Suffering
		},
		{
			{ itemID = 49799 }, --Coil of Missing Gems
			{ itemID = 49800 }, --Spiteful Signet
			{ itemID = 49789 }, --Heartshiver
			{ itemID = 49790 }, --Blood Boil Lancet
			{ itemID = 49793 }, --Tower of the Mouldering Corpse
		},
	},
	{
		Name = "Devourer of Souls",
		{
			{ itemID = 50213 }, --Mord'rethar Robes
			{ itemID = 50206 }, --Frayed Scoundrel's Cap
			{ itemID = 50212 }, --Essence of Desire
			{ itemID = 50214 }, --Helm of the Spirit Shock
			{ itemID = 50209 }, --Essence of Suffering
			{ itemID = 50208 }, --Pauldrons of the Devourer
			{ itemID = 50207 }, --Black Spire Sabatons
			{ itemID = 50215 }, --Recovered Reliquary Boots
		},
		{
			{ itemID = 50211 }, --Arcane Loops of Anger
			{ itemID = 50198 }, --Needle-Encrusted Scorpion
			{ itemID = 50203 }, --Blood Weeper
			{ itemID = 50210 }, --Seethe
		},
	},
}

--------------------
--- Pit of Saron ---
--------------------

AtlasLoot_Data["PitofSaron"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Pit of Saron",
	Type = "WrathDungeon",
	{
		Name = "Forgemaster Garfrost",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 49805 }, --Ice-Steeped Sandals
			{ itemID = 49806 }, --Flayer's Black Belt
			{ itemID = 49804 }, --Polished Mirror Helm
			{ itemID = 49803 }, --Ring of Carnelian and Bone
			{ itemID = 49802 }, --Garfrost's Two-Ton Hammer
			{ itemID = 49801 }, --Unspeakable Secret
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 50233 }, --Spurned Val'kyr Shoulderguards
			{ itemID = 50234 }, --Shoulderplates of Frozen Blood
			{ itemID = 50230 }, --Malykriss Vambraces
			{ itemID = 50229 }, --Legguards of the Frosty Depths
			{ itemID = 50228 }, --Barbed Ymirheim Choker
			{ itemID = 50227 }, --Surgeon's Needle
		},
	},
	{
		Name = "Krick and Ick",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 49809 }, --Wristguards of Subterranean Moss
			{ itemID = 49810 }, --Scabrous Zombie Leather Belt
			{ itemID = 49811 }, --Black Dragonskin Breeches
			{ itemID = 49808 }, --Bent Gold Belt
			{ itemID = 49812 }, --Purloined Wedding Ring
			{ itemID = 49807 }, --Krick's Beetle Stabber
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 50266 }, --Ancient Polar Bear Hide
			{ itemID = 50263 }, --Braid of Salt and Fire
			{ itemID = 50264 }, --Chewed Leather Wristguards
			{ itemID = 50265 }, --Blackened Ghoul Skin Leggings
			{ itemID = 50235 }, --Ick's Rotting Thumb
			{ itemID = 50262 }, --Felglacier Bolter
		},
	},
	{
		Name = "Scourgelord Tyrannus",
		{
			{ itemID = 49823 }, --Cloak of the Fallen Cardinal
			{ itemID = 49825 }, --Palebone Robes
			{ itemID = 49822 }, --Rimewoven Silks
			{ itemID = 49817 }, --Shaggy Wyrmleather Leggings
			{ itemID = 49824 }, --Horns of the Spurned Val'kyr
			{ itemID = 49826 }, --Shroud of Rime
			{ itemID = 49820 }, --Gondria's Spectral Bracer
			{ itemID = 49819 }, --Skeleton Lord's Cranium
			{ itemID = 49816 }, --Scourgelord's Frigid Chestplate
		},
		{
			{ itemID = 49818 }, --Painfully Sharp Choker
			{ itemID = 49821 }, --Protector of Frigid Souls
			{ itemID = 49813 }, --Rimebane Rifle
		},
	},
	{
		Name = "Scourgelord Tyrannus",
		{
			{ itemID = 50286 }, --Prelate's Snowshoes
			{ itemID = 50269 }, --Fleshwerk Leggings
			{ itemID = 50270 }, --Belt of Rotted Fingernails
			{ itemID = 50283 }, --Mudslide Boots
			{ itemID = 50272 }, --Frost Wyrm Ribcage
			{ itemID = 50285 }, --Icebound Bronze Cuirass
			{ itemID = 50284 }, --Rusty Frozen Fingerguards
		},
		{
			{ itemID = 50271 }, --Band of Stained Souls
			{ itemID = 50259 }, --Nevermelting Ice Crystal
			{ itemID = 50268 }, --Rimefang's Claw
			{ itemID = 50267 }, --Tyrannical Beheader
			{ itemID = 50273 }, --Engraved Gargoyle Femur
		},
	},
}

---------------------------
--- Halls of Reflection ---
---------------------------

AtlasLoot_Data["HallsofReflection"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Halls of Reflection",
	Type = "WrathDungeon",
	{
		Name = "Falric",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 49832 }, --Eerie Runeblade Polisher
			{ itemID = 49828 }, --Marwyn's Macabre Fingertips
			{ itemID = 49830 }, --Fallen Sentry's Hood
			{ itemID = 49831 }, --Muddied Boots of Brill
			{ itemID = 49829 }, --Valonforth's Tarnished Pauldrons
			{ itemID = 49827 }, --Ghoulslicer
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 50292 }, --Bracer of Worn Molars
			{ itemID = 50293 }, --Spaulders of Black Betrayal
			{ itemID = 50295 }, --Spiked Toestompers
			{ itemID = 50294 }, --Chestpiece of High Treason
			{ itemID = 50290 }, --Falric's Wrist-Chopper
			{ itemID = 50291 }, --Soulsplinter
		},
	},
	{
		Name = "Marwyn",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 49834 }, --Frayed Abomination Stitching Shoulders
			{ itemID = 49838 }, --Carpal Tunnelers
			{ itemID = 49837 }, --Mitts of Burning Hail
			{ itemID = 49836 }, --Frostsworn Bone Leggings
			{ itemID = 49833 }, --Splintered Icecrown Parapet
			{ itemID = 49835 }, --Splintered Door of the Citadel
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 50298 }, --Sightless Crown of Ulmaas
			{ itemID = 50299 }, --Suspiciously Soft Gloves
			{ itemID = 50300 }, --Choking Hauberk
			{ itemID = 50297 }, --Frostsworn Bone Chestpiece
			{ itemID = 50260 }, --Ephemeral Snowflake
			{ itemID = 50296 }, --Orca-Hunter's Harpoon
		},
	},
	{
		Name = "The Lich King",
		{
			{ itemID = 49842 }, --Tapestry of the Frozen Throne
			{ itemID = 49849 }, --Tattered Glacial-Woven Hood
			{ itemID = 49848 }, --Grim Lasher Shoulderguards
			{ itemID = 49841 }, --Blackened Geist Ribs
			{ itemID = 49847 }, --Legguards of Untimely Demise
			{ itemID = 49851 }, --Greathelm of the Silver Hand
			{ itemID = 49843 }, --Crystalline Citadel Gauntlets
		},
		{
			{ itemID = 49846 }, --Chilled Heart of the Glacier
			{ itemID = 49839 }, --Mourning Malice
			{ itemID = 49840 }, --Hate-Forged Cleaver
			{ itemID = 49845 }, --Bone Golem Scapula
			{ itemID = 49844 }, --Crypt Fiend Slayer
		},
	},
	{
		Name = "The Lich King",
		{
			{ itemID = 50314 }, --Strip of Remorse
			{ itemID = 50312 }, --Chestguard of Broken Branches
			{ itemID = 50308 }, --Blighted Leather Footpads
			{ itemID = 50304 }, --Hoarfrost Gauntlets
			{ itemID = 50311 }, --Second Helm of the Executioner
			{ itemID = 50305 }, --Grinning Skull Boots
			{ itemID = 50310 }, --Fossilized Ammonite Choker
			{ itemID = 50313 }, --Oath of Empress Zoe
			{ itemID = 50306 }, --The Lady's Promise
			{ itemID = 50309 }, --Shriveled Heart
		},
		{
			{ itemID = 50302 }, --Liar's Tongue
			{ itemID = 50303 }, --Black Icicle
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 49854 }, --Mantle of Tattered Feathers
			{ itemID = 49855 }, --Plated Grips of Korth'azz
			{ itemID = 49853 }, --Titanium Links of Lore
			{ itemID = 49852 }, --Coffin Nail
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 50318 }, --Ghostly Wristwraps
			{ itemID = 50315 }, --Seven-Fingered Claws
			{ itemID = 50319 }, --Unsharpened Ice Razor
			{ itemID = 50380 }, --Battered Hilt
			{ itemID = 50379 }, --Battered Hilt
			{ itemID = 50047 }, --Quel'Delar, Lens of the Mind
			{ itemID = 50046 }, --Quel'Delar, Cunning of the Shadows
			{ itemID = 50049 }, --Quel'Delar, Ferocity of the Scorned
			{ itemID = 50048 }, --Quel'Delar, Might of the Faithful
			{ itemID = 50051 }, --Hammer of Purified Flame
			{ itemID = 50050 }, --Cudgel of Furious Justice
			{ itemID = 50052 }, --Lightborn Spire
		},
	},
}


-----------------------------
--- Trial of the Champion ---
-----------------------------

AtlasLoot_Data["TrialoftheChampion"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Trial of the Champion",
	Type = "WrathDungeon",
	{
		Name = "Faction Champions",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 47173 }, --Bindings of the Wicked
			{ itemID = 47170 }, --Belt of Fierce Competition
			{ itemID = 47174 }, --Binding of the Tranquil Glade
			{ itemID = 47175 }, --Scale Boots of the Outlander
			{ itemID = 47172 }, --Helm of the Bested Gallant
			{ itemID = 47171 }, --Legguards of Abandoned Fealty
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 47249 }, --Leggings of the Snowy Bramble
			{ itemID = 47248 }, --Treads of Dismal Fortune
			{ itemID = 47250 }, --Pauldrons of the Deafening Gale
			{ itemID = 47244 }, --Chestguard of the Ravenous Fiend
			{ itemID = 47243 }, --Mark of the Relentless
			{ itemID = 47493 }, --Edge of Ruin
			{ itemID = 44990 }, --Champion's Seal
		},
	},
	{
		Name = "Argent Confessor Paletress",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 47181 }, --Belt of the Churning Blaze
			{ itemID = 47218 }, --The Confessor's Binding
			{ itemID = 47185 }, --Leggings of the Haggard Apprentice
			{ itemID = 47217 }, --Gaze of the Somber Keeper
			{ itemID = 47177 }, --Gloves of the Argent Fanatic
			{ itemID = 47178 }, --Carapace of Grim Visions
			{ itemID = 47211 }, --Wristguards of Ceaseless Regret
			{ itemID = 47176 }, --Breastplate of the Imperial Joust
			{ itemID = 47212 }, --Mercy's Hold
			{ itemID = 47219 }, --Brilliant Hailstone Amulet
			{ itemID = 47213 }, --Abyssal Rune
			{ itemID = 47214 }, --Banner of Victory
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 47498 }, --Gloves of Dismal Fortune
			{ itemID = 47496 }, --Armbands of the Wary Lookout
			{ itemID = 47245 }, --Pauldrons of Concealed Loathing
			{ itemID = 47497 }, --Helm of the Crestfallen Challenger
			{ itemID = 47514 }, --Regal Aurous Shoulderplates
			{ itemID = 47510 }, --Trueheart Girdle
			{ itemID = 47495 }, --Legplates of Relentless Onslaught
			{ itemID = 47511 }, --Plated Greaves of Providence
			{ itemID = 47494 }, --Ancient Pendant of Arathor
			{ itemID = 47512 }, --Sinner's Confession
			{ itemID = 47500 }, --Peacekeeper Blade
			{ itemID = 47522 }, --Marrowstrike
			{ itemID = 44990 }, --Champion's Seal
		},
	},
	{
		Name = "Eadric the Pure",
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Normal Mode" },
			{ itemID = 47181 }, --Belt of the Churning Blaze
			{ itemID = 47185 }, --Leggings of the Haggard Apprentice
			{ itemID = 47210 }, --Mantle of Gnarled Overgrowth
			{ itemID = 47177 }, --Gloves of the Argent Fanatic
			{ itemID = 47202 }, --Leggings of Brazen Trespass
			{ itemID = 47178 }, --Carapace of Grim Visions
			{ itemID = 47176 }, --Breastplate of the Imperial Joust
			{ itemID = 47197 }, --Gauntlets of the Stouthearted Crusader
			{ itemID = 47201 }, --Boots of Heartfelt Repentance
			{ itemID = 47199 }, --Greaves of the Grand Paladin
			{ itemID = 47200 }, --Signet of Purity
			{ itemID = 47213 }, --Abyssal Rune
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Heroic Mode" },
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 47501 }, --Kurisu's Indecision
			{ itemID = 47496 }, --Armbands of the Wary Lookout
			{ itemID = 47498 }, --Gloves of Dismal Fortune
			{ itemID = 47504 }, --Barkhide Treads
			{ itemID = 47497 }, --Helm of the Crestfallen Challenger
			{ itemID = 47502 }, --Majestic Silversmith Shoulderplates
			{ itemID = 47495 }, --Legplates of Relentless Onslaught
			{ itemID = 47503 }, --Legplates of the Argent Armistice
			{ itemID = 47494 }, --Ancient Pendant of Arathor
			{ itemID = 47500 }, --Peacekeeper Blade
			{ itemID = 47509 }, --Mariel's Sorrow
			{ itemID = 47508 }, --Aledar's Battlestar
			{ itemID = 44990 }, --Champion's Seal
		},
	},
	{
		Name = "The Black Knight",
		{
			{ itemID = 47232 }, --Drape of the Undefeated
			{ itemID = 47226 }, --Mantle of Inconsolable Fear
			{ itemID = 47230 }, --Handwraps of Surrendered Hope
			{ itemID = 47221 }, --Shoulderpads of the Infamous Knave
			{ itemID = 47231 }, --Belt of Merciless Cruelty
			{ itemID = 47228 }, --Leggings of the Bloodless Knight
			{ itemID = 47220 }, --Helm of the Violent Fray
			{ itemID = 47229 }, --Girdle of Arrogant Downfall
			{ itemID = 47227 }, --Girdle of the Pallid Knight
		},
		{
			{ itemID = 47222 }, --Uruka's Band of Zeal
			{ itemID = 47215 }, --Tears of the Vanquished
			{ itemID = 47216 }, --The Black Heart
		},
	},
	{
		Name = "The Black Knight" .. " (" .. "Heroic" .. ")",
		{
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 47564 }, --Gaze of the Unknown
			{ itemID = 47527 }, --Embrace of Madness
			{ itemID = 47560 }, --Boots of the Crackling Flame
			{ itemID = 47529 }, --Mask of Distant Memory
			{ itemID = 47561 }, --Gloves of the Dark Exile
			{ itemID = 47563 }, --Girdle of the Dauntless Conqueror
			{ itemID = 47565 }, --Vambraces of Unholy Command
			{ itemID = 47567 }, --Gauntlets of Revelation
			{ itemID = 47562 }, --Symbol of Redemption
			{ itemID = 47566 }, --The Warlord's Depravity
		},
		{
			{ itemID = 47569 }, --Spectral Kris
			{ itemID = 49682 }, --Black Knight's Rondel
			{ itemID = 47568 }, --True-aim Long Rifle
			{ itemID = 43102 }, --Frozen Orb
			{ itemID = 44990 }, --Champion's Seal
		},
	},
}

-------------------------
--- Vault of Archavon ---
-------------------------

AtlasLoot_Data["VaultofArchavon"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Vault of Archavon",
	Type = "WrathRaid",
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 39492 }, --Heroes' Frostfire Robe
			{ itemID = 39495 }, --Heroes' Frostfire Gloves
			{ itemID = 39493 }, --Heroes' Frostfire Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 39515 }, --Heroes' Robe of Faith
			{ itemID = 39519 }, --Heroes' Gloves of Faith
			{ itemID = 39517 }, --Heroes' Leggings of Faith
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 39523 }, --Heroes' Raiments of Faith
			{ itemID = 39530 }, --Heroes' Handwraps of Faith
			{ itemID = 39528 }, --Heroes' Pants of Faith
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41950 }, --Hateful Gladiator's Silk Raiment
			{ itemID = 41969 }, --Hateful Gladiator's Silk Handguards
			{ itemID = 41957 }, --Hateful Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41857 }, --Hateful Gladiator's Mooncloth Robe
			{ itemID = 41872 }, --Hateful Gladiator's Mooncloth Gloves
			{ itemID = 41862 }, --Hateful Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41919 }, --Hateful Gladiator's Satin Robe
			{ itemID = 41938 }, --Hateful Gladiator's Satin Gloves
			{ itemID = 41925 }, --Hateful Gladiator's Satin Leggings
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 39497 }, --Heroes' Plagueheart Robe
			{ itemID = 39500 }, --Heroes' Plagueheart Gloves
			{ itemID = 39498 }, --Heroes' Plagueheart Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 39547 }, --Heroes' Dreamwalker Vestments
			{ itemID = 39544 }, --Heroes' Dreamwalker Gloves
			{ itemID = 39546 }, --Heroes' Dreamwalker Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 39554 }, --Heroes' Dreamwalker Raiments
			{ itemID = 39557 }, --Heroes' Dreamwalker Handgrips
			{ itemID = 39555 }, --Heroes' Dreamwalker Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 42001 }, --Hateful Gladiator's Felweave Raiment
			{ itemID = 42015 }, --Hateful Gladiator's Felweave Handguards
			{ itemID = 42003 }, --Hateful Gladiator's Felweave Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41314 }, --Hateful Gladiator's Wyrmhide Robes
			{ itemID = 41291 }, --Hateful Gladiator's Wyrmhide Gloves
			{ itemID = 41302 }, --Hateful Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41659 }, --Hateful Gladiator's Dragonhide Robes
			{ itemID = 41771 }, --Hateful Gladiator's Dragonhide Gloves
			{ itemID = 41665 }, --Hateful Gladiator's Dragonhide Legguards
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 39538 }, --Heroes' Dreamwalker Robe
			{ itemID = 39543 }, --Heroes' Dreamwalker Handguards
			{ itemID = 39539 }, --Heroes' Dreamwalker Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 39558 }, --Heroes' Bonescythe Breastplate
			{ itemID = 39560 }, --Heroes' Bonescythe Gauntlets
			{ itemID = 39564 }, --Heroes' Bonescythe Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 39579 }, --Heroes' Crypstalker Tunic
			{ itemID = 39582 }, --Heroes' Crypstalker Handguards
			{ itemID = 39580 }, --Heroes' Crypstalker Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41308 }, --Hateful Gladiator's Kodohide Robes
			{ itemID = 41284 }, --Hateful Gladiator's Kodohide Gloves
			{ itemID = 41296 }, --Hateful Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41648 }, --Hateful Gladiator's Leather Tunic
			{ itemID = 41765 }, --Hateful Gladiator's Leather Gloves
			{ itemID = 41653 }, --Hateful Gladiator's Leather Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41085 }, --Hateful Gladiator's Chain Armor
			{ itemID = 41141 }, --Hateful Gladiator's Chain Gauntlets
			{ itemID = 41203 }, --Hateful Gladiator's Chain Leggings
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 39592 }, --Heroes' Earthshatter Hauberk
			{ itemID = 39593 }, --Heroes' Earthshatter Gloves
			{ itemID = 39595 }, --Heroes' Earthshatter Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 39597 }, --Heroes' Earthshatter Chestguard
			{ itemID = 39601 }, --Heroes' Earthshatter Grips
			{ itemID = 39603 }, --Heroes' Earthshatter War-Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 39588 }, --Heroes' Earthshatter Tunic
			{ itemID = 39591 }, --Heroes' Earthshatter Handguards
			{ itemID = 39589 }, --Heroes' Earthshatter Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 40989 }, --Hateful Gladiator's Mail Armor
			{ itemID = 41005 }, --Hateful Gladiator's Mail Gauntlets
			{ itemID = 41031 }, --Hateful Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41079 }, --Hateful Gladiator's Linked Armor
			{ itemID = 41135 }, --Hateful Gladiator's Linked Gauntlets
			{ itemID = 41162 }, --Hateful Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 40988 }, --Hateful Gladiator's Ringmail Armor
			{ itemID = 40999 }, --Hateful Gladiator's Ringmail Gauntlets
			{ itemID = 41025 }, --Hateful Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 39617 }, --Heroes' Scourgeborne Battleplate
			{ itemID = 39618 }, --Heroes' Scourgeborne Gauntlets
			{ itemID = 39620 }, --Heroes' Scourgeborne Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 39623 }, --Heroes' Scourgeborne Chestguard
			{ itemID = 39624 }, --Heroes' Scourgeborne Handguards
			{ itemID = 39626 }, --Heroes' Scourgeborne Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 39629 }, --Heroes' Redemption Tunic
			{ itemID = 39632 }, --Heroes' Redemption Gloves
			{ itemID = 39630 }, --Heroes' Redemption Greaves
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40781 }, --Hateful Gladiator's Dreadplate Chestpiece
			{ itemID = 40803 }, --Hateful Gladiator's Dreadplate Gauntlets
			{ itemID = 40841 }, --Hateful Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40904 }, --Hateful Gladiator's Ornamented Chestguard
			{ itemID = 40925 }, --Hateful Gladiator's Ornamented Gloves
			{ itemID = 40937 }, --Hateful Gladiator's Ornamented Legplates
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 39633 }, --Heroes' Redemption Chestpiece
			{ itemID = 39634 }, --Heroes' Redemption Gauntlets
			{ itemID = 39636 }, --Heroes' Redemption Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 39638 }, --Heroes' Redemption Breastplate
			{ itemID = 39639 }, --Heroes' Redemption Handguards
			{ itemID = 39641 }, --Heroes' Redemption Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 39606 }, --Heroes' Dreadnaught Battleplate
			{ itemID = 39609 }, --Heroes' Dreadnaught Gauntlets
			{ itemID = 39607 }, --Heroes' Dreadnaught Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40782 }, --Hateful Gladiator's Scaled Chestpiece
			{ itemID = 40802 }, --Hateful Gladiator's Scaled Gauntlets
			{ itemID = 40842 }, --Hateful Gladiator's Scaled Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40783 }, --Hateful Gladiator's Plate Chestpiece
			{ itemID = 40801 }, --Hateful Gladiator's Plate Gauntlets
			{ itemID = 40840 }, --Hateful Gladiator's Plate Legguards
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 39611 }, --Heroes' Dreadnaught Breastplate
			{ itemID = 39622 }, --Heroes' Dreadnaught Handguards
			{ itemID = 39612 }, --Heroes' Dreadnaught Legguards
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 40418 }, --Valorous Frostfire Robe
			{ itemID = 40415 }, --Valorous Frostfire Gloves
			{ itemID = 40417 }, --Valorous Frostfire Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 40449 }, --Valorous Robe of Faith
			{ itemID = 40445 }, --Valorous Gloves of Faith
			{ itemID = 40448 }, --Valorous Leggings of Faith
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 40458 }, --Valorous Raiments of Faith
			{ itemID = 40454 }, --Valorous Handwraps of Faith
			{ itemID = 40457 }, --Valorous Pants of Faith
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41951 }, --Deadly Gladiator's Silk Raiment
			{ itemID = 41970 }, --Deadly Gladiator's Silk Handguards
			{ itemID = 41958 }, --Deadly Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41858 }, --Deadly Gladiator's Mooncloth Robe
			{ itemID = 41873 }, --Deadly Gladiator's Mooncloth Gloves
			{ itemID = 41863 }, --Deadly Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41920 }, --Deadly Gladiator's Satin Robe
			{ itemID = 41939 }, --Deadly Gladiator's Satin Gloves
			{ itemID = 41926 }, --Deadly Gladiator's Satin Leggings
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 40423 }, --Valorous Plagueheart Robe
			{ itemID = 40420 }, --Valorous Plagueheart Gloves
			{ itemID = 40422 }, --Valorous Plagueheart Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 40469 }, --Valorous Dreamwalker Vestments
			{ itemID = 40466 }, --Valorous Dreamwalker Gloves
			{ itemID = 40468 }, --Valorous Dreamwalker Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 40471 }, --Valorous Dreamwalker Raiments
			{ itemID = 40472 }, --Valorous Dreamwalker Handgrips
			{ itemID = 40493 }, --Valorous Dreamwalker Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 41997 }, --Deadly Gladiator's Felweave Raiment
			{ itemID = 42016 }, --Deadly Gladiator's Felweave Handguards
			{ itemID = 42004 }, --Deadly Gladiator's Felweave Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41315 }, --Deadly Gladiator's Wyrmhide Robes
			{ itemID = 41292 }, --Deadly Gladiator's Wyrmhide Gloves
			{ itemID = 41303 }, --Deadly Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41660 }, --Deadly Gladiator's Dragonhide Robes
			{ itemID = 41772 }, --Deadly Gladiator's Dragonhide Gloves
			{ itemID = 41666 }, --Deadly Gladiator's Dragonhide Legguards
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 40463 }, --Valorous Dreamwalker Robe
			{ itemID = 40460 }, --Valorous Dreamwalker Handguards
			{ itemID = 40462 }, --Valorous Dreamwalker Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 40495 }, --Valorous Bonescythe Breastplate
			{ itemID = 40496 }, --Valorous Bonescythe Gauntlets
			{ itemID = 40500 }, --Valorous Bonescythe Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 40503 }, --Valorous Crypstalker Tunic
			{ itemID = 40504 }, --Valorous Crypstalker Handguards
			{ itemID = 40506 }, --Valorous Crypstalker Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41309 }, --Deadly Gladiator's Kodohide Robes
			{ itemID = 41286 }, --Deadly Gladiator's Kodohide Gloves
			{ itemID = 41297 }, --Deadly Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41649 }, --Deadly Gladiator's Leather Tunic
			{ itemID = 41766 }, --Deadly Gladiator's Leather Gloves
			{ itemID = 41654 }, --Deadly Gladiator's Leather Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41086 }, --Deadly Gladiator's Chain Armor
			{ itemID = 41142 }, --Deadly Gladiator's Chain Gauntlets
			{ itemID = 41204 }, --Deadly Gladiator's Chain Leggings
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 40514 }, --Valorous Earthshatter Hauberk
			{ itemID = 40515 }, --Valorous Earthshatter Gloves
			{ itemID = 40517 }, --Valorous Earthshatter Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 40523 }, --Valorous Earthshatter Chestguard
			{ itemID = 40520 }, --Valorous Earthshatter Grips
			{ itemID = 40522 }, --Valorous Earthshatter War-Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 40508 }, --Valorous Earthshatter Tunic
			{ itemID = 40509 }, --Valorous Earthshatter Handguards
			{ itemID = 40512 }, --Valorous Earthshatter Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 40991 }, --Deadly Gladiator's Mail Armor
			{ itemID = 41006 }, --Deadly Gladiator's Mail Gauntlets
			{ itemID = 41032 }, --Deadly Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41080 }, --Deadly Gladiator's Linked Armor
			{ itemID = 41136 }, --Deadly Gladiator's Linked Gauntlets
			{ itemID = 41198 }, --Deadly Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 40990 }, --Deadly Gladiator's Ringmail Armor
			{ itemID = 41000 }, --Deadly Gladiator's Ringmail Gauntlets
			{ itemID = 41026 }, --Deadly Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40550 }, --Valorous Scourgeborne Battleplate
			{ itemID = 40552 }, --Valorous Scourgeborne Gauntlets
			{ itemID = 40556 }, --Valorous Scourgeborne Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 40559 }, --Valorous Scourgeborne Chestguard
			{ itemID = 40563 }, --Valorous Scourgeborne Handguards
			{ itemID = 40567 }, --Valorous Scourgeborne Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40569 }, --Valorous Redemption Tunic
			{ itemID = 40570 }, --Valorous Redemption Gloves
			{ itemID = 40572 }, --Valorous Redemption Greaves
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40784 }, --Deadly Gladiator's Dreadplate Chestpiece
			{ itemID = 40806 }, --Deadly Gladiator's Dreadplate Gauntlets
			{ itemID = 40845 }, --Deadly Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40905 }, --Deadly Gladiator's Ornamented Chestguard
			{ itemID = 40926 }, --Deadly Gladiator's Ornamented Gloves
			{ itemID = 40938 }, --Deadly Gladiator's Ornamented Legplates
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40574 }, --Valorous Redemption Chestpiece
			{ itemID = 40575 }, --Valorous Redemption Gauntlets
			{ itemID = 40577 }, --Valorous Redemption Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 40579 }, --Valorous Redemption Breastplate
			{ itemID = 40580 }, --Valorous Redemption Handguards
			{ itemID = 40583 }, --Valorous Redemption Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40525 }, --Valorous Dreadnaught Battleplate
			{ itemID = 40527 }, --Valorous Dreadnaught Gauntlets
			{ itemID = 40529 }, --Valorous Dreadnaught Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40785 }, --Deadly Gladiator's Scaled Chestpiece
			{ itemID = 40805 }, --Deadly Gladiator's Scaled Gauntlets
			{ itemID = 40846 }, --Deadly Gladiator's Scaled Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40786 }, --Deadly Gladiator's Plate Chestpiece
			{ itemID = 40804 }, --Deadly Gladiator's Plate Gauntlets
			{ itemID = 40844 }, --Deadly Gladiator's Plate Legguards
		},
	},
	{
		Name = "Archavon the Stone Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 40544 }, --Valorous Dreadnaught Breastplate
			{ itemID = 40545 }, --Valorous Dreadnaught Handguards
			{ itemID = 40547 }, --Valorous Dreadnaught Legguards
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 46131 }, --Valorous Kirin'dor Gauntlets
			{ itemID = 45367 }, --Valorous Kirin'dor Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 45387 }, --Valorous Gloves of Sanctification
			{ itemID = 45388 }, --Valorous Leggings of Sanctification
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 45392 }, --Valorous Handwraps of Sanctification
			{ itemID = 45394 }, --Valorous Pants of Sanctification
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 45419 }, --Valorous Deathbringer Gloves
			{ itemID = 45420 }, --Valorous Deathbringer Leggings
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41970 }, --Deadly Gladiator's Silk Handguards
			{ itemID = 41958 }, --Deadly Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41873 }, --Deadly Gladiator's Mooncloth Gloves
			{ itemID = 41863 }, --Deadly Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41939 }, --Deadly Gladiator's Satin Gloves
			{ itemID = 41926 }, --Deadly Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 42016 }, --Deadly Gladiator's Felweave Handguards
			{ itemID = 42004 }, --Deadly Gladiator's Felweave Trousers
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 45351 }, --Valorous Nightsong Gloves
			{ itemID = 45353 }, --Valorous Nightsong Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 45355 }, --Valorous Nightsong Handgrips
			{ itemID = 45357 }, --Valorous Nightsong Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 45345 }, --Valorous Nightsong Handguards
			{ itemID = 45347 }, --Valorous Nightsong Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 45397 }, --Valorous Terrorblade Gauntlets
			{ itemID = 45399 }, --Valorous Terrorblade Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41292 }, --Deadly Gladiator's Wyrmhide Gloves
			{ itemID = 41303 }, --Deadly Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41772 }, --Deadly Gladiator's Dragonhide Gloves
			{ itemID = 41666 }, --Deadly Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41286 }, --Deadly Gladiator's Kodohide Gloves
			{ itemID = 41297 }, --Deadly Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41766 }, --Deadly Gladiator's Leather Gloves
			{ itemID = 41654 }, --Deadly Gladiator's Leather Legguards
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 45360 }, --Valorous Scourgestalker Handguards
			{ itemID = 45362 }, --Valorous Scourgestalker Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 45406 }, --Valorous Worldbreaker Gloves
			{ itemID = 45409 }, --Valorous Worldbreaker Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 45414 }, --Valorous Worldbreaker Grips
			{ itemID = 45416 }, --Valorous Worldbreaker War-Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 45401 }, --Valorous Worldbreaker Handguards
			{ itemID = 45403 }, --Valorous Worldbreaker Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41142 }, --Deadly Gladiator's Chain Gauntlets
			{ itemID = 41204 }, --Deadly Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 41006 }, --Deadly Gladiator's Mail Gauntlets
			{ itemID = 41032 }, --Deadly Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41136 }, --Deadly Gladiator's Linked Gauntlets
			{ itemID = 41198 }, --Deadly Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41000 }, --Deadly Gladiator's Ringmail Gauntlets
			{ itemID = 41026 }, --Deadly Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 45341 }, --Valorous Darkruned Gauntlets
			{ itemID = 45343 }, --Valorous Darkruned Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 45337 }, --Valorous Darkruned Handguards
			{ itemID = 45338 }, --Valorous Darkruned Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 45370 }, --Valorous Aegis Gloves
			{ itemID = 45371 }, --Valorous Aegis Greaves
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 45376 }, --Valorous Aegis Gauntlets
			{ itemID = 45379 }, --Valorous Aegis Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40806 }, --Deadly Gladiator's Dreadplate Gauntlets
			{ itemID = 40845 }, --Deadly Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40926 }, --Deadly Gladiator's Ornamented Gloves
			{ itemID = 40938 }, --Deadly Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40805 }, --Deadly Gladiator's Scaled Gauntlets
			{ itemID = 40846 }, --Deadly Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 45383 }, --Valorous Aegis Handguards
			{ itemID = 45384 }, --Valorous Aegis Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 45430 }, --Valorous Siegebreaker Gauntlets
			{ itemID = 45432 }, --Valorous Siegebreaker Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 45426 }, --Valorous Siegebreaker Handguards
			{ itemID = 45427 }, --Valorous Siegebreaker Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40804 }, --Deadly Gladiator's Plate Gauntlets
			{ itemID = 40844 }, --Deadly Gladiator's Plate Legguards
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Cloth" },
			{ itemID = 41908 }, --Deadly Gladiator's Cuffs of Dominance
			{ itemID = 41897 }, --Deadly Gladiator's Cord of Dominance
			{ itemID = 41902 }, --Deadly Gladiator's Treads of Dominance
			{ itemID = 41892 }, --Deadly Gladiator's Cuffs of Salvation
			{ itemID = 41880 }, --Deadly Gladiator's Cord of Salvation
			{ itemID = 41884 }, --Deadly Gladiator's Treads of Salvation
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Leather" },
			{ itemID = 41639 }, --Deadly Gladiator's Armwraps of Dominance
			{ itemID = 41629 }, --Deadly Gladiator's Belt of Dominance
			{ itemID = 41634 }, --Deadly Gladiator's Boots of Dominance
			{ itemID = 41624 }, --Deadly Gladiator's Armwraps of Salvation
			{ itemID = 41616 }, --Deadly Gladiator's Belt of Salvation
			{ itemID = 41620 }, --Deadly Gladiator's Boots of Salvation
			{ itemID = 41839 }, --Deadly Gladiator's Armwraps of Triumph
			{ itemID = 41831 }, --Deadly Gladiator's Belt of Triumph
			{ itemID = 41835 }, --Deadly Gladiator's Boots of Triumph
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Mail" },
			{ itemID = 41064 }, --Deadly Gladiator's Wristguards of Dominance
			{ itemID = 41069 }, --Deadly Gladiator's Waistguard of Dominance
			{ itemID = 41074 }, --Deadly Gladiator's Sabatons of Dominance
			{ itemID = 41059 }, --Deadly Gladiator's Wristguards of Salvation
			{ itemID = 41048 }, --Deadly Gladiator's Waistguard of Salvation
			{ itemID = 41054 }, --Deadly Gladiator's Sabatons of Salvation
			{ itemID = 41224 }, --Deadly Gladiator's Wristguards of Triumph
			{ itemID = 41234 }, --Deadly Gladiator's Waistguard of Triumph
			{ itemID = 41229 }, --Deadly Gladiator's Sabatons of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Plate" },
			{ itemID = 40982 }, --Deadly Gladiator's Bracers of Salvation
			{ itemID = 40974 }, --Deadly Gladiator's Girdle of Salvation
			{ itemID = 40975 }, --Deadly Gladiator's Greaves of Salvation
			{ itemID = 40888 }, --Deadly Gladiator's Bracers of Triumph
			{ itemID = 40879 }, --Deadly Gladiator's Girdle of Triumph
			{ itemID = 40880 }, --Deadly Gladiator's Greaves of Triumph
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Back" },
			{ itemID = 42064 }, --Deadly Gladiator's Cloak of Ascendancy
			{ itemID = 42066 }, --Deadly Gladiator's Cloak of Deliverance
			{ itemID = 42062 }, --Deadly Gladiator's Cloak of Dominance
			{ itemID = 42065 }, --Deadly Gladiator's Cloak of Salvation
			{ itemID = 42063 }, --Deadly Gladiator's Cloak of Subjugation
			{ itemID = 42067 }, --Deadly Gladiator's Cloak of Triumph
			{ itemID = 42068 }, --Deadly Gladiator's Cloak of Victory
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Neck" },
			{ itemID = 42030 }, --Deadly Gladiator's Pendant of Ascendancy
			{ itemID = 42032 }, --Deadly Gladiator's Pendant of Deliverance
			{ itemID = 42029 }, --Deadly Gladiator's Pendant of Dominance
			{ itemID = 42033 }, --Deadly Gladiator's Pendant of Salvation
			{ itemID = 42031 }, --Deadly Gladiator's Pendant of Subjugation
			{ itemID = 42027 }, --Deadly Gladiator's Pendant of Triumph
			{ itemID = 42028 }, --Deadly Gladiator's Pendant of Victory
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Ring" },
			{ itemID = 42114 }, --Deadly Gladiator's Band of Ascendancy
			{ itemID = 42115 }, --Deadly Gladiator's Band of Victory
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 46132 }, --Conqueror's Kirin'dor Gauntlets
			{ itemID = 46133 }, --Conqueror's Kirin'dor Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 46188 }, --Conqueror's Gloves of Sanctification
			{ itemID = 46195 }, --Conqueror's Leggings of Sanctification
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 46163 }, --Conqueror's Handwraps of Sanctification
			{ itemID = 46170 }, --Conqueror's Pants of Sanctification
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 46135 }, --Conqueror's Deathbringer Gloves
			{ itemID = 46139 }, --Conqueror's Deathbringer Leggings
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41971 }, --Furious Gladiator's Silk Handguards
			{ itemID = 41959 }, --Furious Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41874 }, --Furious Gladiator's Mooncloth Gloves
			{ itemID = 41864 }, --Furious Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41940 }, --Furious Gladiator's Satin Gloves
			{ itemID = 41927 }, --Furious Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 42017 }, --Furious Gladiator's Felweave Handguards
			{ itemID = 42005 }, --Furious Gladiator's Felweave Trousers
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 46189 }, --Conqueror's Nightsong Gloves
			{ itemID = 46192 }, --Conqueror's Nightsong Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 46158 }, --Conqueror's Nightsong Handgrips
			{ itemID = 46160 }, --Conqueror's Nightsong Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 46183 }, --Conqueror's Nightsong Handguards
			{ itemID = 46185 }, --Conqueror's Nightsong Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 46124 }, --Conqueror's Terrorblade Gauntlets
			{ itemID = 46126 }, --Conqueror's Terrorblade Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41293 }, --Furious Gladiator's Wyrmhide Gloves
			{ itemID = 41304 }, --Furious Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41773 }, --Furious Gladiator's Dragonhide Gloves
			{ itemID = 41667 }, --Furious Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41287 }, --Furious Gladiator's Kodohide Gloves
			{ itemID = 41298 }, --Furious Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41767 }, --Furious Gladiator's Leather Gloves
			{ itemID = 41655 }, --Furious Gladiator's Leather Legguards
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 46142 }, --Conqueror's Scourgestalker Handguards
			{ itemID = 46144 }, --Conqueror's Scourgestalker Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 46207 }, --Conqueror's Worldbreaker Gloves
			{ itemID = 46210 }, --Conqueror's Worldbreaker Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 46200 }, --Conqueror's Worldbreaker Grips
			{ itemID = 46208 }, --Conqueror's Worldbreaker War-Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 46199 }, --Conqueror's Worldbreaker Handguards
			{ itemID = 46202 }, --Conqueror's Worldbreaker Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41143 }, --Furious Gladiator's Chain Gauntlets
			{ itemID = 41205 }, --Furious Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 41007 }, --Furious Gladiator's Mail Gauntlets
			{ itemID = 41033 }, --Furious Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41137 }, --Furious Gladiator's Linked Gauntlets
			{ itemID = 41199 }, --Furious Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41001 }, --Furious Gladiator's Ringmail Gauntlets
			{ itemID = 41027 }, --Furious Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 46113 }, --Conqueror's Darkruned Gauntlets
			{ itemID = 46116 }, --Conqueror's Darkruned Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 46119 }, --Conqueror's Darkruned Handguards
			{ itemID = 46121 }, --Conqueror's Darkruned Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 46179 }, --Conqueror's Aegis Gloves
			{ itemID = 46181 }, --Conqueror's Aegis Greaves
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 46155 }, --Conqueror's Aegis Gauntlets
			{ itemID = 46153 }, --Conqueror's Aegis Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40809 }, --Furious Gladiator's Dreadplate Gauntlets
			{ itemID = 40848 }, --Furious Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40927 }, --Furious Gladiator's Ornamented Gloves
			{ itemID = 40939 }, --Furious Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40808 }, --Furious Gladiator's Scaled Gauntlets
			{ itemID = 40849 }, --Furious Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 46174 }, --Conqueror's Aegis Handguards
			{ itemID = 46176 }, --Conqueror's Aegis Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 46148 }, --Conqueror's Siegebreaker Gauntlets
			{ itemID = 46150 }, --Conqueror's Siegebreaker Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 46164 }, --Conqueror's Siegebreaker Handguards
			{ itemID = 46169 }, --Conqueror's Siegebreaker Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40807 }, --Furious Gladiator's Plate Gauntlets
			{ itemID = 40847 }, --Furious Gladiator's Plate Legguards
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Cloth" },
			{ itemID = 41909 }, --Furious Gladiator's Cuffs of Dominance
			{ itemID = 41898 }, --Furious Gladiator's Cord of Dominance
			{ itemID = 41903 }, --Furious Gladiator's Slippers of Dominance
			{ itemID = 41893 }, --Furious Gladiator's Cuffs of Salvation
			{ itemID = 41881 }, --Furious Gladiator's Cord of Salvation
			{ itemID = 41885 }, --Furious Gladiator's Slippers of Salvation
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Leather" },
			{ itemID = 41640 }, --Furious Gladiator's Armwraps of Dominance
			{ itemID = 41630 }, --Furious Gladiator's Belt of Dominance
			{ itemID = 41635 }, --Furious Gladiator's Boots of Dominance
			{ itemID = 41625 }, --Furious Gladiator's Armwraps of Salvation
			{ itemID = 41617 }, --Furious Gladiator's Belt of Salvation
			{ itemID = 41621 }, --Furious Gladiator's Boots of Salvation
			{ itemID = 41840 }, --Furious Gladiator's Armwraps of Triumph
			{ itemID = 41832 }, --Furious Gladiator's Belt of Triumph
			{ itemID = 41836 }, --Furious Gladiator's Boots of Triumph
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Mail" },
			{ itemID = 41065 }, --Furious Gladiator's Wristguards of Dominance
			{ itemID = 41070 }, --Furious Gladiator's Waistguard of Dominance
			{ itemID = 41075 }, --Furious Gladiator's Sabatons of Dominance
			{ itemID = 41060 }, --Furious Gladiator's Wristguards of Salvation
			{ itemID = 41051 }, --Furious Gladiator's Waistguard of Salvation
			{ itemID = 41055 }, --Furious Gladiator's Sabatons of Salvation
			{ itemID = 41225 }, --Furious Gladiator's Wristguards of Triumph
			{ itemID = 41235 }, --Furious Gladiator's Waistguard of Triumph
			{ itemID = 41230 }, --Furious Gladiator's Sabatons of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Plate" },
			{ itemID = 40983 }, --Furious Gladiator's Bracers of Salvation
			{ itemID = 40976 }, --Furious Gladiator's Girdle of Salvation
			{ itemID = 40977 }, --Furious Gladiator's Greaves of Salvation
			{ itemID = 40889 }, --Furious Gladiator's Bracers of Triumph
			{ itemID = 40881 }, --Furious Gladiator's Girdle of Triumph
			{ itemID = 40882 }, --Furious Gladiator's Greaves of Triumph
		},
	},
	{
		Name = "Emalon the Storm Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Back" },
			{ itemID = 42071 }, --Furious Gladiator's Cloak of Ascendancy
			{ itemID = 42073 }, --Furious Gladiator's Cloak of Deliverance
			{ itemID = 42069 }, --Furious Gladiator's Cloak of Dominance
			{ itemID = 42072 }, --Furious Gladiator's Cloak of Salvation
			{ itemID = 42070 }, --Furious Gladiator's Cloak of Subjugation
			{ itemID = 42074 }, --Furious Gladiator's Cloak of Triumph
			{ itemID = 42075 }, --Furious Gladiator's Cloak of Victory
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Neck" },
			{ itemID = 42037 }, --Furious Gladiator's Pendant of Ascendancy
			{ itemID = 42039 }, --Furious Gladiator's Pendant of Deliverance
			{ itemID = 42036 }, --Furious Gladiator's Pendant of Dominance
			{ itemID = 42040 }, --Furious Gladiator's Pendant of Salvation
			{ itemID = 42038 }, --Furious Gladiator's Pendant of Subjugation
			{ itemID = 46373 }, --Furious Gladiator's Pendant of Sundering
			{ itemID = 42034 }, --Furious Gladiator's Pendant of Triumph
			{ itemID = 42035 }, --Furious Gladiator's Pendant of Victory
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Ring" },
			{ itemID = 42116 }, --Furious Gladiator's Band of Dominance
			{ itemID = 42117 }, --Furious Gladiator's Band of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 47752 }, --Khadgar's Gauntlets of Conquest
			{ itemID = 47750 }, --Khadgar's Leggings of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 47982 }, --Velen's Gloves of Conquest
			{ itemID = 47980 }, --Velen's Leggings of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 48072 }, --Velen's Handwraps of Conquest
			{ itemID = 48074 }, --Velen's Pants of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 47783 }, --Kel'Thuzad's Gloves of Conquest
			{ itemID = 47785 }, --Kel'Thuzad's Leggings of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41971 }, --Furious Gladiator's Silk Handguards
			{ itemID = 41959 }, --Furious Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41874 }, --Furious Gladiator's Mooncloth Gloves
			{ itemID = 41864 }, --Furious Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41940 }, --Furious Gladiator's Satin Gloves
			{ itemID = 41927 }, --Furious Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 42017 }, --Furious Gladiator's Felweave Handguards
			{ itemID = 42005 }, --Furious Gladiator's Felweave Trousers
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 48162 }, --Stormrage's Gloves of Conquest
			{ itemID = 48160 }, --Stormrage's Trousers of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 48213 }, --Stormrage's Handgrips of Conquest
			{ itemID = 48215 }, --Stormrage's Legguards of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 48132 }, --Stormrage's Handguards of Conquest
			{ itemID = 48130 }, --Stormrage's Leggings of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 48222 }, --VanCleef's Gauntlets of Conquest
			{ itemID = 48220 }, --VanCleef's Legplates of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41293 }, --Furious Gladiator's Wyrmhide Gloves
			{ itemID = 41304 }, --Furious Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41773 }, --Furious Gladiator's Dragonhide Gloves
			{ itemID = 41667 }, --Furious Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41287 }, --Furious Gladiator's Kodohide Gloves
			{ itemID = 41298 }, --Furious Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41767 }, --Furious Gladiator's Leather Gloves
			{ itemID = 41655 }, --Furious Gladiator's Leather Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 48254 }, --Windrunner's Handguards of Conquest
			{ itemID = 48252 }, --Windrunner's Legguards of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 48312 }, --Nobundo's Gloves of Conquest
			{ itemID = 48314 }, --Nobundo's Kilt of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 48342 }, --Nobundo's Grips of Conquest
			{ itemID = 48344 }, --Nobundo's War-Kilt of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 48284 }, --Nobundo's Handguards of Conquest
			{ itemID = 48282 }, --Nobundo's Legguards of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41143 }, --Furious Gladiator's Chain Gauntlets
			{ itemID = 41205 }, --Furious Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 41007 }, --Furious Gladiator's Mail Gauntlets
			{ itemID = 41033 }, --Furious Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41137 }, --Furious Gladiator's Linked Gauntlets
			{ itemID = 41199 }, --Furious Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41001 }, --Furious Gladiator's Ringmail Gauntlets
			{ itemID = 41027 }, --Furious Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 48480 }, --Thassarian's Gauntlets of Conquest
			{ itemID = 48476 }, --Thassarian's Legplates of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 48537 }, --Thassarian's Handguards of Conquest
			{ itemID = 48533 }, --Thassarian's Legguards of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 48574 }, --Turalyon's Gloves of Conquest
			{ itemID = 48568 }, --Turalyon's Greaves of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 48603 }, --Turalyon's Gauntlets of Conquest
			{ itemID = 48605 }, --Turalyon's Legplates of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40809 }, --Furious Gladiator's Dreadplate Gauntlets
			{ itemID = 40848 }, --Furious Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40927 }, --Furious Gladiator's Ornamented Gloves
			{ itemID = 40939 }, --Furious Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40808 }, --Furious Gladiator's Scaled Gauntlets
			{ itemID = 40849 }, --Furious Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 48633 }, --Turalyon's Handguards of Conquest
			{ itemID = 48635 }, --Turalyon's Legguards of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 48375 }, --Wrynn's Gauntlets of Conquest
			{ itemID = 48373 }, --Wrynn's Legplates of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 48449 }, --Wrynn's Handguards of Conquest
			{ itemID = 48445 }, --Wrynn's Legguards of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40807 }, --Furious Gladiator's Plate Gauntlets
			{ itemID = 40847 }, --Furious Gladiator's Plate Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Cloth" },
			{ itemID = 41909 }, --Furious Gladiator's Cuffs of Dominance
			{ itemID = 41898 }, --Furious Gladiator's Cord of Dominance
			{ itemID = 41903 }, --Furious Gladiator's Slippers of Dominance
			{ itemID = 41893 }, --Furious Gladiator's Cuffs of Salvation
			{ itemID = 41881 }, --Furious Gladiator's Cord of Salvation
			{ itemID = 41885 }, --Furious Gladiator's Slippers of Salvation
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Leather" },
			{ itemID = 41640 }, --Furious Gladiator's Armwraps of Dominance
			{ itemID = 41630 }, --Furious Gladiator's Belt of Dominance
			{ itemID = 41635 }, --Furious Gladiator's Boots of Dominance
			{ itemID = 41625 }, --Furious Gladiator's Armwraps of Salvation
			{ itemID = 41617 }, --Furious Gladiator's Belt of Salvation
			{ itemID = 41621 }, --Furious Gladiator's Boots of Salvation
			{ itemID = 41840 }, --Furious Gladiator's Armwraps of Triumph
			{ itemID = 41832 }, --Furious Gladiator's Belt of Triumph
			{ itemID = 41836 }, --Furious Gladiator's Boots of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Mail" },
			{ itemID = 41065 }, --Furious Gladiator's Wristguards of Dominance
			{ itemID = 41070 }, --Furious Gladiator's Waistguard of Dominance
			{ itemID = 41075 }, --Furious Gladiator's Sabatons of Dominance
			{ itemID = 41060 }, --Furious Gladiator's Wristguards of Salvation
			{ itemID = 41051 }, --Furious Gladiator's Waistguard of Salvation
			{ itemID = 41055 }, --Furious Gladiator's Sabatons of Salvation
			{ itemID = 41225 }, --Furious Gladiator's Wristguards of Triumph
			{ itemID = 41235 }, --Furious Gladiator's Waistguard of Triumph
			{ itemID = 41230 }, --Furious Gladiator's Sabatons of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Plate" },
			{ itemID = 40983 }, --Furious Gladiator's Bracers of Salvation
			{ itemID = 40976 }, --Furious Gladiator's Girdle of Salvation
			{ itemID = 40977 }, --Furious Gladiator's Greaves of Salvation
			{ itemID = 40889 }, --Furious Gladiator's Bracers of Triumph
			{ itemID = 40881 }, --Furious Gladiator's Girdle of Triumph
			{ itemID = 40882 }, --Furious Gladiator's Greaves of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Back" },
			{ itemID = 42071 }, --Furious Gladiator's Cloak of Ascendancy
			{ itemID = 42073 }, --Furious Gladiator's Cloak of Deliverance
			{ itemID = 42069 }, --Furious Gladiator's Cloak of Dominance
			{ itemID = 42072 }, --Furious Gladiator's Cloak of Salvation
			{ itemID = 42070 }, --Furious Gladiator's Cloak of Subjugation
			{ itemID = 42074 }, --Furious Gladiator's Cloak of Triumph
			{ itemID = 42075 }, --Furious Gladiator's Cloak of Victory
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Neck" },
			{ itemID = 42037 }, --Furious Gladiator's Pendant of Ascendancy
			{ itemID = 42039 }, --Furious Gladiator's Pendant of Deliverance
			{ itemID = 42036 }, --Furious Gladiator's Pendant of Dominance
			{ itemID = 42040 }, --Furious Gladiator's Pendant of Salvation
			{ itemID = 42038 }, --Furious Gladiator's Pendant of Subjugation
			{ itemID = 46373 }, --Furious Gladiator's Pendant of Sundering
			{ itemID = 42034 }, --Furious Gladiator's Pendant of Triumph
			{ itemID = 42035 }, --Furious Gladiator's Pendant of Victory
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Ring" },
			{ itemID = 42116 }, --Furious Gladiator's Band of Dominance
			{ itemID = 42117 }, --Furious Gladiator's Band of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 47753 }, --Khadgar's Gauntlets of Triumph
			{ itemID = 47755 }, --Khadgar's Leggings of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 47983 }, --Velen's Gloves of Triumph
			{ itemID = 47985 }, --Velen's Leggings of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 48077 }, --Velen's Handwraps of Triumph
			{ itemID = 48079 }, --Velen's Pants of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 47782 }, --Kel'Thuzad's Gloves of Triumph
			{ itemID = 47780 }, --Kel'Thuzad's Leggings of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41972 }, --Relentless Gladiator's Silk Handguards
			{ itemID = 41960 }, --Relentless Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41875 }, --Relentless Gladiator's Mooncloth Gloves
			{ itemID = 41865 }, --Relentless Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41941 }, --Relentless Gladiator's Satin Gloves
			{ itemID = 41928 }, --Relentless Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 42018 }, --Relentless Gladiator's Felweave Handguards
			{ itemID = 42006 }, --Relentless Gladiator's Felweave Trousers
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 48163 }, --Stormrage's Gloves of Triumph
			{ itemID = 48165 }, --Stormrage's Trousers of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 48212 }, --Stormrage's Handgrips of Triumph
			{ itemID = 48210 }, --Stormrage's Legguards of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 48133 }, --Stormrage's Handguards of Triumph
			{ itemID = 48135 }, --Stormrage's Leggings of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 48224 }, --VanCleef's Gauntlets of Triumph
			{ itemID = 48226 }, --VanCleef's Legplates of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41294 }, --Relentless Gladiator's Wyrmhide Gloves
			{ itemID = 41305 }, --Relentless Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41774 }, --Relentless Gladiator's Dragonhide Gloves
			{ itemID = 41668 }, --Relentless Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41288 }, --Relentless Gladiator's Kodohide Gloves
			{ itemID = 41299 }, --Relentless Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41768 }, --Relentless Gladiator's Leather Gloves
			{ itemID = 41656 }, --Relentless Gladiator's Leather Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 48256 }, --Windrunner's Handguards of Triumph
			{ itemID = 48258 }, --Windrunner's Legguards of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 48317 }, --Nobundo's Gloves of Triumph
			{ itemID = 48319 }, --Nobundo's Kilt of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 48347 }, --Nobundo's Grips of Triumph
			{ itemID = 48349 }, --Nobundo's War-Kilt of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 48286 }, --Nobundo's Handguards of Triumph
			{ itemID = 48288 }, --Nobundo's Legguards of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41144 }, --Relentless Gladiator's Chain Gauntlets
			{ itemID = 41206 }, --Relentless Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 41008 }, --Relentless Gladiator's Mail Gauntlets
			{ itemID = 41034 }, --Relentless Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41138 }, --Relentless Gladiator's Linked Gauntlets
			{ itemID = 41200 }, --Relentless Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41002 }, --Relentless Gladiator's Ringmail Gauntlets
			{ itemID = 41028 }, --Relentless Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 48482 }, --Thassarian's Gauntlets of Triumph
			{ itemID = 48484 }, --Thassarian's Legplates of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 48539 }, --Thassarian's Handguards of Triumph
			{ itemID = 48541 }, --Thassarian's Legguards of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 48576 }, --Turalyon's Gloves of Triumph
			{ itemID = 48578 }, --Turalyon's Greaves of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 48608 }, --Turalyon's Gauntlets of Triumph
			{ itemID = 48610 }, --Turalyon's Legplates of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40811 }, --Relentless Gladiator's Dreadplate Gauntlets
			{ itemID = 40851 }, --Relentless Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40928 }, --Relentless Gladiator's Ornamented Gloves
			{ itemID = 40940 }, --Relentless Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40812 }, --Relentless Gladiator's Scaled Gauntlets
			{ itemID = 40852 }, --Relentless Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 48640 }, --Turalyon's Handguards of Triumph
			{ itemID = 48638 }, --Turalyon's Legguards of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 48377 }, --Wrynn's Gauntlets of Triumph
			{ itemID = 48379 }, --Wrynn's Legplates of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 48452 }, --Wrynn's Handguards of Triumph
			{ itemID = 48446 }, --Wrynn's Legguards of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40810 }, --Relentless Gladiator's Plate Gauntlets
			{ itemID = 40850 }, --Relentless Gladiator's Plate Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Cloth" },
			{ itemID = 41910 }, --Relentless Gladiator's Cuffs of Dominance
			{ itemID = 41899 }, --Relentless Gladiator's Cord of Dominance
			{ itemID = 41904 }, --Relentless Gladiator's Treads of Dominance
			{ itemID = 41894 }, --Relentless Gladiator's Cuffs of Salvation
			{ itemID = 41882 }, --Relentless Gladiator's Cord of Salvation
			{ itemID = 41886 }, --Relentless Gladiator's Treads of Salvation
			{ itemID = 49181 }, --Relentless Gladiator's Cuffs of Alacrity
			{ itemID = 49179 }, --Relentless Gladiator's Cord of Alacrity
			{ itemID = 49183 }, --Relentless Gladiator's Treads of Alacrity
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Leather" },
			{ itemID = 41641 }, --Relentless Gladiator's Armwraps of Dominance
			{ itemID = 41631 }, --Relentless Gladiator's Belt of Dominance
			{ itemID = 41636 }, --Relentless Gladiator's Boots of Dominance
			{ itemID = 41626 }, --Relentless Gladiator's Armwraps of Salvation
			{ itemID = 41618 }, --Relentless Gladiator's Belt of Salvation
			{ itemID = 41622 }, --Relentless Gladiator's Boots of Salvation
			{ itemID = 41841 }, --Relentless Gladiator's Armwraps of Triumph
			{ itemID = 41833 }, --Relentless Gladiator's Belt of Triumph
			{ itemID = 41837 }, --Relentless Gladiator's Boots of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Mail" },
			{ itemID = 41066 }, --Relentless Gladiator's Wristguards of Dominance
			{ itemID = 41071 }, --Relentless Gladiator's Waistguard of Dominance
			{ itemID = 41076 }, --Relentless Gladiator's Sabatons of Dominance
			{ itemID = 41061 }, --Relentless Gladiator's Wristguards of Salvation
			{ itemID = 41052 }, --Relentless Gladiator's Waistguard of Salvation
			{ itemID = 41056 }, --Relentless Gladiator's Sabatons of Salvation
			{ itemID = 41226 }, --Relentless Gladiator's Wristguards of Triumph
			{ itemID = 41236 }, --Relentless Gladiator's Waistguard of Triumph
			{ itemID = 41231 }, --Relentless Gladiator's Sabatons of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Plate" },
			{ itemID = 40984 }, --Relentless Gladiator's Bracers of Salvation
			{ itemID = 40978 }, --Relentless Gladiator's Girdle of Salvation
			{ itemID = 40979 }, --Relentless Gladiator's Greaves of Salvation
			{ itemID = 40890 }, --Relentless Gladiator's Bracers of Triumph
			{ itemID = 40883 }, --Relentless Gladiator's Girdle of Triumph
			{ itemID = 40884 }, --Relentless Gladiator's Greaves of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Back" },
			{ itemID = 42078 }, --Relentless Gladiator's Cloak of Ascendancy
			{ itemID = 42080 }, --Relentless Gladiator's Cloak of Deliverance
			{ itemID = 42076 }, --Relentless Gladiator's Cloak of Dominance
			{ itemID = 42079 }, --Relentless Gladiator's Cloak of Salvation
			{ itemID = 42077 }, --Relentless Gladiator's Cloak of Subjugation
			{ itemID = 42081 }, --Relentless Gladiator's Cloak of Triumph
			{ itemID = 42082 }, --Relentless Gladiator's Cloak of Victory
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Neck" },
			{ itemID = 42044 }, --Relentless Gladiator's Pendant of Ascendancy
			{ itemID = 42046 }, --Relentless Gladiator's Pendant of Deliverance
			{ itemID = 42043 }, --Relentless Gladiator's Pendant of Dominance
			{ itemID = 42047 }, --Relentless Gladiator's Pendant of Salvation
			{ itemID = 42045 }, --Relentless Gladiator's Pendant of Subjugation
			{ itemID = 46374 }, --Relentless Gladiator's Pendant of Sundering
			{ itemID = 42041 }, --Relentless Gladiator's Pendant of Triumph
			{ itemID = 42042 }, --Relentless Gladiator's Pendant of Victory
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Ring" },
			{ itemID = 42118 }, --Relentless Gladiator's Band of Ascendancy
			{ itemID = 42119 }, --Relentless Gladiator's Band of Victory
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 47773 }, --Sunstrider's Gauntlets of Conquest
			{ itemID = 47775 }, --Sunstrider's Leggings of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 48067 }, --Zabra's Gloves of Conquest
			{ itemID = 48069 }, --Zabra's Leggings of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 48097 }, --Zabra's Handwraps of Conquest
			{ itemID = 48099 }, --Zabra's Pants of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 47802 }, --Gul'dan's Gloves of Conquest
			{ itemID = 47800 }, --Gul'dan's Leggings of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41971 }, --Furious Gladiator's Silk Handguards
			{ itemID = 41959 }, --Furious Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41874 }, --Furious Gladiator's Mooncloth Gloves
			{ itemID = 41864 }, --Furious Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41940 }, --Furious Gladiator's Satin Gloves
			{ itemID = 41927 }, --Furious Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 42017 }, --Furious Gladiator's Felweave Handguards
			{ itemID = 42005 }, --Furious Gladiator's Felweave Trousers
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 48183 }, --Runetotem's Gloves of Conquest
			{ itemID = 48185 }, --Runetotem's Trousers of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 48192 }, --Runetotem's Handgrips of Conquest
			{ itemID = 48190 }, --Runetotem's Legguards of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 48153 }, --Runetotem's Handguards of Conquest
			{ itemID = 48155 }, --Runetotem's Leggings of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 48244 }, --Garona's Gauntlets of Conquest
			{ itemID = 48246 }, --Garona's Legplates of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41293 }, --Furious Gladiator's Wyrmhide Gloves
			{ itemID = 41304 }, --Furious Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41773 }, --Furious Gladiator's Dragonhide Gloves
			{ itemID = 41667 }, --Furious Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41287 }, --Furious Gladiator's Kodohide Gloves
			{ itemID = 41298 }, --Furious Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41767 }, --Furious Gladiator's Leather Gloves
			{ itemID = 41655 }, --Furious Gladiator's Leather Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 48276 }, --Windrunner's Handguards of Conquest
			{ itemID = 48278 }, --Windrunner's Legguards of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 48337 }, --Thrall's Gloves of Conquest
			{ itemID = 48339 }, --Thrall's Kilt of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 48367 }, --Thrall's Grips of Conquest
			{ itemID = 48369 }, --Thrall's War-Kilt of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 48296 }, --Thrall's Handguards of Conquest
			{ itemID = 48298 }, --Thrall's Legguards of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41143 }, --Furious Gladiator's Chain Gauntlets
			{ itemID = 41205 }, --Furious Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 41007 }, --Furious Gladiator's Mail Gauntlets
			{ itemID = 41033 }, --Furious Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41137 }, --Furious Gladiator's Linked Gauntlets
			{ itemID = 41199 }, --Furious Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41001 }, --Furious Gladiator's Ringmail Gauntlets
			{ itemID = 41027 }, --Furious Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 48502 }, --Koltira's Gauntlets of Conquest
			{ itemID = 48504 }, --Koltira's Legplates of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 48559 }, --Koltira's Handguards of Conquest
			{ itemID = 48561 }, --Koltira's Legguards of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 48598 }, --Liadrin's Gloves of Conquest
			{ itemID = 48596 }, --Liadrin's Greaves of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 48630 }, --Liadrin's Gauntlets of Conquest
			{ itemID = 48628 }, --Liadrin's Legplates of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40809 }, --Furious Gladiator's Dreadplate Gauntlets
			{ itemID = 40848 }, --Furious Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40927 }, --Furious Gladiator's Ornamented Gloves
			{ itemID = 40939 }, --Furious Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40808 }, --Furious Gladiator's Scaled Gauntlets
			{ itemID = 40849 }, --Furious Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 48653 }, --Liadrin's Handguards of Conquest
			{ itemID = 48655 }, --Liadrin's Legguards of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 48387 }, --Hellscream's Gauntlets of Conquest
			{ itemID = 48389 }, --Hellscream's Legplates of Conquest
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 48457 }, --Hellscream's Handguards of Conquest
			{ itemID = 48459 }, --Hellscream's Legguards of Conquest
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40807 }, --Furious Gladiator's Plate Gauntlets
			{ itemID = 40847 }, --Furious Gladiator's Plate Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Cloth" },
			{ itemID = 41909 }, --Furious Gladiator's Cuffs of Dominance
			{ itemID = 41898 }, --Furious Gladiator's Cord of Dominance
			{ itemID = 41903 }, --Furious Gladiator's Slippers of Dominance
			{ itemID = 41893 }, --Furious Gladiator's Cuffs of Salvation
			{ itemID = 41881 }, --Furious Gladiator's Cord of Salvation
			{ itemID = 41885 }, --Furious Gladiator's Slippers of Salvation
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Leather" },
			{ itemID = 41640 }, --Furious Gladiator's Armwraps of Dominance
			{ itemID = 41630 }, --Furious Gladiator's Belt of Dominance
			{ itemID = 41635 }, --Furious Gladiator's Boots of Dominance
			{ itemID = 41625 }, --Furious Gladiator's Armwraps of Salvation
			{ itemID = 41617 }, --Furious Gladiator's Belt of Salvation
			{ itemID = 41621 }, --Furious Gladiator's Boots of Salvation
			{ itemID = 41840 }, --Furious Gladiator's Armwraps of Triumph
			{ itemID = 41832 }, --Furious Gladiator's Belt of Triumph
			{ itemID = 41836 }, --Furious Gladiator's Boots of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Mail" },
			{ itemID = 41065 }, --Furious Gladiator's Wristguards of Dominance
			{ itemID = 41070 }, --Furious Gladiator's Waistguard of Dominance
			{ itemID = 41075 }, --Furious Gladiator's Sabatons of Dominance
			{ itemID = 41060 }, --Furious Gladiator's Wristguards of Salvation
			{ itemID = 41051 }, --Furious Gladiator's Waistguard of Salvation
			{ itemID = 41055 }, --Furious Gladiator's Sabatons of Salvation
			{ itemID = 41225 }, --Furious Gladiator's Wristguards of Triumph
			{ itemID = 41235 }, --Furious Gladiator's Waistguard of Triumph
			{ itemID = 41230 }, --Furious Gladiator's Sabatons of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Plate" },
			{ itemID = 40983 }, --Furious Gladiator's Bracers of Salvation
			{ itemID = 40976 }, --Furious Gladiator's Girdle of Salvation
			{ itemID = 40977 }, --Furious Gladiator's Greaves of Salvation
			{ itemID = 40889 }, --Furious Gladiator's Bracers of Triumph
			{ itemID = 40881 }, --Furious Gladiator's Girdle of Triumph
			{ itemID = 40882 }, --Furious Gladiator's Greaves of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Back" },
			{ itemID = 42071 }, --Furious Gladiator's Cloak of Ascendancy
			{ itemID = 42073 }, --Furious Gladiator's Cloak of Deliverance
			{ itemID = 42069 }, --Furious Gladiator's Cloak of Dominance
			{ itemID = 42072 }, --Furious Gladiator's Cloak of Salvation
			{ itemID = 42070 }, --Furious Gladiator's Cloak of Subjugation
			{ itemID = 42074 }, --Furious Gladiator's Cloak of Triumph
			{ itemID = 42075 }, --Furious Gladiator's Cloak of Victory
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Neck" },
			{ itemID = 42037 }, --Furious Gladiator's Pendant of Ascendancy
			{ itemID = 42039 }, --Furious Gladiator's Pendant of Deliverance
			{ itemID = 42036 }, --Furious Gladiator's Pendant of Dominance
			{ itemID = 42040 }, --Furious Gladiator's Pendant of Salvation
			{ itemID = 42038 }, --Furious Gladiator's Pendant of Subjugation
			{ itemID = 46373 }, --Furious Gladiator's Pendant of Sundering
			{ itemID = 42034 }, --Furious Gladiator's Pendant of Triumph
			{ itemID = 42035 }, --Furious Gladiator's Pendant of Victory
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Ring" },
			{ itemID = 42116 }, --Furious Gladiator's Band of Dominance
			{ itemID = 42117 }, --Furious Gladiator's Band of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 47772 }, --Sunstrider's Gauntlets of Triumph
			{ itemID = 47770 }, --Sunstrider's Leggings of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 48066 }, --Zabra's Gloves of Triumph
			{ itemID = 48064 }, --Zabra's Leggings of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 48096 }, --Zabra's Handwraps of Triumph
			{ itemID = 48094 }, --Zabra's Pants of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 47803 }, --Gul'dan's Gloves of Triumph
			{ itemID = 47805 }, --Gul'dan's Leggings of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41972 }, --Relentless Gladiator's Silk Handguards
			{ itemID = 41960 }, --Relentless Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41875 }, --Relentless Gladiator's Mooncloth Gloves
			{ itemID = 41865 }, --Relentless Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41941 }, --Relentless Gladiator's Satin Gloves
			{ itemID = 41928 }, --Relentless Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 42018 }, --Relentless Gladiator's Felweave Handguards
			{ itemID = 42006 }, --Relentless Gladiator's Felweave Trousers
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 48182 }, --Runetotem's Gloves of Triumph
			{ itemID = 48180 }, --Runetotem's Trousers of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 48193 }, --Runetotem's Handgrips of Triumph
			{ itemID = 48195 }, --Runetotem's Legguards of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 48152 }, --Runetotem's Handguards of Triumph
			{ itemID = 48150 }, --Runetotem's Leggings of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 48241 }, --Garona's Gauntlets of Triumph
			{ itemID = 48239 }, --Garona's Legplates of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41294 }, --Relentless Gladiator's Wyrmhide Gloves
			{ itemID = 41305 }, --Relentless Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41774 }, --Relentless Gladiator's Dragonhide Gloves
			{ itemID = 41668 }, --Relentless Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41288 }, --Relentless Gladiator's Kodohide Gloves
			{ itemID = 41299 }, --Relentless Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41768 }, --Relentless Gladiator's Leather Gloves
			{ itemID = 41656 }, --Relentless Gladiator's Leather Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 48273 }, --Windrunner's Handguards of Triumph
			{ itemID = 48271 }, --Windrunner's Legguards of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 48334 }, --Thrall's Gloves of Triumph
			{ itemID = 48332 }, --Thrall's Kilt of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 48364 }, --Thrall's Grips of Triumph
			{ itemID = 48362 }, --Thrall's War-Kilt of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 48301 }, --Thrall's Handguards of Triumph
			{ itemID = 48303 }, --Thrall's Legguards of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41144 }, --Relentless Gladiator's Chain Gauntlets
			{ itemID = 41206 }, --Relentless Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 41008 }, --Relentless Gladiator's Mail Gauntlets
			{ itemID = 41034 }, --Relentless Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41138 }, --Relentless Gladiator's Linked Gauntlets
			{ itemID = 41200 }, --Relentless Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41002 }, --Relentless Gladiator's Ringmail Gauntlets
			{ itemID = 41028 }, --Relentless Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 48499 }, --Koltira's Gauntlets of Triumph
			{ itemID = 48497 }, --Koltira's Legplates of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 48556 }, --Koltira's Handguards of Triumph
			{ itemID = 48554 }, --Koltira's Legguards of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 48593 }, --Liadrin's Gloves of Triumph
			{ itemID = 48591 }, --Liadrin's Greaves of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 48625 }, --Liadrin's Gauntlets of Triumph
			{ itemID = 48623 }, --Liadrin's Legplates of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40811 }, --Relentless Gladiator's Dreadplate Gauntlets
			{ itemID = 40851 }, --Relentless Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40928 }, --Relentless Gladiator's Ornamented Gloves
			{ itemID = 40940 }, --Relentless Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40812 }, --Relentless Gladiator's Scaled Gauntlets
			{ itemID = 40852 }, --Relentless Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 48658 }, --Liadrin's Handguards of Triumph
			{ itemID = 48660 }, --Liadrin's Legguards of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 48392 }, --Hellscream's Gauntlets of Triumph
			{ itemID = 48394 }, --Hellscream's Legplates of Triumph
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 48462 }, --Hellscream's Handguards of Triumph
			{ itemID = 48464 }, --Hellscream's Legguards of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40810 }, --Relentless Gladiator's Plate Gauntlets
			{ itemID = 40850 }, --Relentless Gladiator's Plate Legguards
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Cloth" },
			{ itemID = 41910 }, --Relentless Gladiator's Cuffs of Dominance
			{ itemID = 41899, "=ds=#s19#" }, --Relentless Gladiator's Cord of Dominance
			{ itemID = 41904 }, --Relentless Gladiator's Treads of Dominance
			{ itemID = 41894 }, --Relentless Gladiator's Cuffs of Salvation
			{ itemID = 41882 }, --Relentless Gladiator's Cord of Salvation
			{ itemID = 41886 }, --Relentless Gladiator's Treads of Salvation
			{ itemID = 49181 }, --Relentless Gladiator's Cuffs of Alacrity
			{ itemID = 49179 }, --Relentless Gladiator's Cord of Alacrity
			{ itemID = 49183 }, --Relentless Gladiator's Treads of Alacrity
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Leather" },
			{ itemID = 41641 }, --Relentless Gladiator's Armwraps of Dominance
			{ itemID = 41631 }, --Relentless Gladiator's Belt of Dominance
			{ itemID = 41636 }, --Relentless Gladiator's Boots of Dominance
			{ itemID = 41626 }, --Relentless Gladiator's Armwraps of Salvation
			{ itemID = 41618 }, --Relentless Gladiator's Belt of Salvation
			{ itemID = 41622 }, --Relentless Gladiator's Boots of Salvation
			{ itemID = 41841 }, --Relentless Gladiator's Armwraps of Triumph
			{ itemID = 41833 }, --Relentless Gladiator's Belt of Triumph
			{ itemID = 41837 }, --Relentless Gladiator's Boots of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Mail" },
			{ itemID = 41066 }, --Relentless Gladiator's Wristguards of Dominance
			{ itemID = 41071 }, --Relentless Gladiator's Waistguard of Dominance
			{ itemID = 41076 }, --Relentless Gladiator's Sabatons of Dominance
			{ itemID = 41061 }, --Relentless Gladiator's Wristguards of Salvation
			{ itemID = 41052 }, --Relentless Gladiator's Waistguard of Salvation
			{ itemID = 41056 }, --Relentless Gladiator's Sabatons of Salvation
			{ itemID = 41226 }, --Relentless Gladiator's Wristguards of Triumph
			{ itemID = 41236 }, --Relentless Gladiator's Waistguard of Triumph
			{ itemID = 41231 }, --Relentless Gladiator's Sabatons of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Plate" },
			{ itemID = 40984 }, --Relentless Gladiator's Bracers of Salvation
			{ itemID = 40978 }, --Relentless Gladiator's Girdle of Salvation
			{ itemID = 40979 }, --Relentless Gladiator's Greaves of Salvation
			{ itemID = 40890 }, --Relentless Gladiator's Bracers of Triumph
			{ itemID = 40883 }, --Relentless Gladiator's Girdle of Triumph
			{ itemID = 40884 }, --Relentless Gladiator's Greaves of Triumph
		},
	},
	{
		Name = "Koralon the Flame Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Back" },
			{ itemID = 42078 }, --Relentless Gladiator's Cloak of Ascendancy
			{ itemID = 42080 }, --Relentless Gladiator's Cloak of Deliverance
			{ itemID = 42076 }, --Relentless Gladiator's Cloak of Dominance
			{ itemID = 42079 }, --Relentless Gladiator's Cloak of Salvation
			{ itemID = 42077 }, --Relentless Gladiator's Cloak of Subjugation
			{ itemID = 42081 }, --Relentless Gladiator's Cloak of Triumph
			{ itemID = 42082 }, --Relentless Gladiator's Cloak of Victory
			{ itemID = 47241 }, --Emblem of Triumph
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Neck" },
			{ itemID = 42044 }, --Relentless Gladiator's Pendant of Ascendancy
			{ itemID = 42046 }, --Relentless Gladiator's Pendant of Deliverance
			{ itemID = 42043 }, --Relentless Gladiator's Pendant of Dominance
			{ itemID = 42047 }, --Relentless Gladiator's Pendant of Salvation
			{ itemID = 42045 }, --Relentless Gladiator's Pendant of Subjugation
			{ itemID = 46374 }, --Relentless Gladiator's Pendant of Sundering
			{ itemID = 42041 }, --Relentless Gladiator's Pendant of Triumph
			{ itemID = 42042 }, --Relentless Gladiator's Pendant of Victory
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Ring" },
			{ itemID = 42118 }, --Relentless Gladiator's Band of Ascendancy
			{ itemID = 42119 }, --Relentless Gladiator's Band of Victory
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 50275 }, --Bloodmage Gloves
			{ itemID = 50277 }, --Bloodmage Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 50766 }, --Crimson Acolyte Gloves
			{ itemID = 50769 }, --Crimson Acolyte Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 50391 }, --Crimson Acolyte Handwraps
			{ itemID = 50393 }, --Crimson Acolyte Pants
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 50240 }, --Dark Coven Gloves
			{ itemID = 50242 }, --Dark Coven Leggings
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 41972 }, --Relentless Gladiator's Silk Handguards
			{ itemID = 41960 }, --Relentless Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 41875 }, --Relentless Gladiator's Mooncloth Gloves
			{ itemID = 41865 }, --Relentless Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 41941 }, --Relentless Gladiator's Satin Gloves
			{ itemID = 41928 }, --Relentless Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 42018 }, --Relentless Gladiator's Felweave Handguards
			{ itemID = 42006 }, --Relentless Gladiator's Felweave Trousers
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 50822 }, --Lasherweave's Gloves
			{ itemID = 50820 }, --Lasherweave's Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 50827 }, --Lasherweave's Handgrips
			{ itemID = 50825 }, --Lasherweave's Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 50107 }, --Lasherweave's Gauntlets
			{ itemID = 50109 }, --Lasherweave's Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 50088 }, --Shadowblade Gauntlets
			{ itemID = 50090 }, --Shadowblade Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 41294 }, --Relentless Gladiator's Wyrmhide Gloves
			{ itemID = 41305 }, --Relentless Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 41774 }, --Relentless Gladiator's Dragonhide Gloves
			{ itemID = 41668 }, --Relentless Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41288 }, --Relentless Gladiator's Kodohide Gloves
			{ itemID = 41299 }, --Relentless Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 41768 }, --Relentless Gladiator's Leather Gloves
			{ itemID = 41656 }, --Relentless Gladiator's Leather Legguards
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 50114 }, --Ahn'Kahar Blood Hunter's Handguards
			{ itemID = 50116 }, --Ahn'Kahar Blood Hunter's Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 50842 }, --Frost Witch's Gloves
			{ itemID = 50844 }, --Frost Witch's Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 50831 }, --Frost Witch's Grips
			{ itemID = 50833 }, --Frost Witch's War-Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 50836 }, --Frost Witch's Handguards
			{ itemID = 50838 }, --Frost Witch's Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 41144 }, --Relentless Gladiator's Chain Gauntlets
			{ itemID = 41206 }, --Relentless Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 41008 }, --Relentless Gladiator's Mail Gauntlets
			{ itemID = 41034 }, --Relentless Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 41138 }, --Relentless Gladiator's Linked Gauntlets
			{ itemID = 41200 }, --Relentless Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 41002 }, --Relentless Gladiator's Ringmail Gauntlets
			{ itemID = 41028 }, --Relentless Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 50095 }, --Scourgelord Gauntlets
			{ itemID = 50097 }, --Scourgelord Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 50856 }, --Scourgelord Handguards
			{ itemID = 50854 }, --Scourgelord Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 50868 }, --Lightsworn Gloves
			{ itemID = 50866 }, --Lightsworn Greaves
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 50327 }, --Lightsworn Gauntlets
			{ itemID = 50325 }, --Lightsworn Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 40811 }, --Relentless Gladiator's Dreadplate Gauntlets
			{ itemID = 40851 }, --Relentless Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 40928 }, --Relentless Gladiator's Ornamented Gloves
			{ itemID = 40940 }, --Relentless Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 40812 }, --Relentless Gladiator's Scaled Gauntlets
			{ itemID = 40852 }, --Relentless Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 50863 }, --Lightsworn Handguards
			{ itemID = 50861 }, --Lightsworn Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 50079 }, --Ymirjar Lord's Gauntlets
			{ itemID = 50081 }, --Ymirjar Lord's Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 50849 }, --Ymirjar Lord's Handguards
			{ itemID = 50847 }, --Ymirjar Lord's Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 40810 }, --Relentless Gladiator's Plate Gauntlets
			{ itemID = 40850 }, --Relentless Gladiator's Plate Legguards
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Cloth" },
			{ itemID = 41910 }, --Relentless Gladiator's Cuffs of Dominance
			{ itemID = 41899 }, --Relentless Gladiator's Cord of Dominance
			{ itemID = 41904 }, --Relentless Gladiator's Treads of Dominance
			{ itemID = 41894 }, --Relentless Gladiator's Cuffs of Salvation
			{ itemID = 41882 }, --Relentless Gladiator's Cord of Salvation
			{ itemID = 41886 }, --Relentless Gladiator's Treads of Salvation
			{ itemID = 49181 }, --Relentless Gladiator's Cuffs of Alacrity
			{ itemID = 49179 }, --Relentless Gladiator's Cord of Alacrity
			{ itemID = 49183 }, --Relentless Gladiator's Treads of Alacrity
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Leather" },
			{ itemID = 41641 }, --Relentless Gladiator's Armwraps of Dominance
			{ itemID = 41631 }, --Relentless Gladiator's Belt of Dominance
			{ itemID = 41636 }, --Relentless Gladiator's Boots of Dominance
			{ itemID = 41626 }, --Relentless Gladiator's Armwraps of Salvation
			{ itemID = 41618 }, --Relentless Gladiator's Belt of Salvation
			{ itemID = 41622 }, --Relentless Gladiator's Boots of Salvation
			{ itemID = 41841 }, --Relentless Gladiator's Armwraps of Triumph
			{ itemID = 41833 }, --Relentless Gladiator's Belt of Triumph
			{ itemID = 41837 }, --Relentless Gladiator's Boots of Triumph
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Mail" },
			{ itemID = 41066 }, --Relentless Gladiator's Wristguards of Dominance
			{ itemID = 41071 }, --Relentless Gladiator's Waistguard of Dominance
			{ itemID = 41076 }, --Relentless Gladiator's Sabatons of Dominance
			{ itemID = 41061 }, --Relentless Gladiator's Wristguards of Salvation
			{ itemID = 41052 }, --Relentless Gladiator's Waistguard of Salvation
			{ itemID = 41056 }, --Relentless Gladiator's Sabatons of Salvation
			{ itemID = 41226 }, --Relentless Gladiator's Wristguards of Triumph
			{ itemID = 41236 }, --Relentless Gladiator's Waistguard of Triumph
			{ itemID = 41231 }, --Relentless Gladiator's Sabatons of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Plate" },
			{ itemID = 40984 }, --Relentless Gladiator's Bracers of Salvation
			{ itemID = 40978 }, --Relentless Gladiator's Girdle of Salvation
			{ itemID = 40979 }, --Relentless Gladiator's Greaves of Salvation
			{ itemID = 40890 }, --Relentless Gladiator's Bracers of Triumph
			{ itemID = 40883 }, --Relentless Gladiator's Girdle of Triumph
			{ itemID = 40884 }, --Relentless Gladiator's Greaves of Triumph
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Back" },
			{ itemID = 42078 }, --Relentless Gladiator's Cloak of Ascendancy
			{ itemID = 42080 }, --Relentless Gladiator's Cloak of Deliverance
			{ itemID = 42076 }, --Relentless Gladiator's Cloak of Dominance
			{ itemID = 42079 }, --Relentless Gladiator's Cloak of Salvation
			{ itemID = 42077 }, --Relentless Gladiator's Cloak of Subjugation
			{ itemID = 42081 }, --Relentless Gladiator's Cloak of Triumph
			{ itemID = 42082 }, --Relentless Gladiator's Cloak of Victory
			{ itemID = 49426 }, --Emblem of Frost
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Neck" },
			{ itemID = 42044 }, --Relentless Gladiator's Pendant of Ascendancy
			{ itemID = 42046 }, --Relentless Gladiator's Pendant of Deliverance
			{ itemID = 42043 }, --Relentless Gladiator's Pendant of Dominance
			{ itemID = 42047 }, --Relentless Gladiator's Pendant of Salvation
			{ itemID = 42045 }, --Relentless Gladiator's Pendant of Subjugation
			{ itemID = 46374 }, --Relentless Gladiator's Pendant of Sundering
			{ itemID = 42041 }, --Relentless Gladiator's Pendant of Triumph
			{ itemID = 42042 }, --Relentless Gladiator's Pendant of Victory
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Ring" },
			{ itemID = 42118 }, --Relentless Gladiator's Band of Ascendancy
			{ itemID = 42119 }, --Relentless Gladiator's Band of Victory
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 51159 }, --Sanctified Bloodmage Gloves
			{ itemID = 51157 }, --Sanctified Bloodmage Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 51179 }, --Sanctified Crimson Acolyte Gloves
			{ itemID = 51177 }, --Sanctified Crimson Acolyte Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 51183 }, --Sanctified Crimson Acolyte Handwraps
			{ itemID = 51181 }, --Sanctified Crimson Acolyte Pants
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 51209 }, --Sanctified Dark Coven Gloves
			{ itemID = 51207 }, --Sanctified Dark Coven Leggings
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 51464 }, --Wrathful Gladiator's Silk Handguards
			{ itemID = 51466 }, --Wrathful Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Holy" },
			{ itemID = 51483 }, --Wrathful Gladiator's Mooncloth Gloves
			{ itemID = 51485 }, --Wrathful Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. "Shadow" },
			{ itemID = 51488 }, --Wrathful Gladiator's Satin Gloves
			{ itemID = 51490 }, --Wrathful Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
			{ itemID = 51537 }, --Wrathful Gladiator's Felweave Handguards
			{ itemID = 51539 }, --Wrathful Gladiator's Felweave Trousers
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 51148 }, --Sanctified Lasherweave's Gloves
			{ itemID = 51146 }, --Sanctified Lasherweave's Trousers
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 51144 }, --Sanctified Lasherweave's Handgrips
			{ itemID = 51142 }, --Sanctified Lasherweave's Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 51138 }, --Sanctified Lasherweave's Gauntlets
			{ itemID = 51136 }, --Sanctified Lasherweave's Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 51188 }, --Sanctified Shadowblade Gauntlets
			{ itemID = 51186 }, --Sanctified Shadowblade Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Balance" },
			{ itemID = 51434 }, --Wrathful Gladiator's Wyrmhide Gloves
			{ itemID = 51436 }, --Wrathful Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Feral" },
			{ itemID = 51426 }, --Wrathful Gladiator's Dragonhide Gloves
			{ itemID = 51428 }, --Wrathful Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. "Restoration" },
			{ itemID = 51420 }, --Wrathful Gladiator's Kodohide Gloves
			{ itemID = 51422 }, --Wrathful Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 51493 }, --Wrathful Gladiator's Leather Gloves
			{ itemID = 51495 }, --Wrathful Gladiator's Leather Legguards
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 51154 }, --Sanctified Ahn'Kahar Blood Hunter's Handguards
			{ itemID = 51152 }, --Sanctified Ahn'Kahar Blood Hunter's Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 51201 }, --Sanctified Frost Witch's Gloves
			{ itemID = 51203 }, --Sanctified Frost Witch's Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 51196 }, --Sanctified Frost Witch's Grips
			{ itemID = 51198 }, --Sanctified Frost Witch's War-Kilt
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 51191 }, --Sanctified Frost Witch's Handguards
			{ itemID = 51193 }, --Sanctified Frost Witch's Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 51459 }, --Wrathful Gladiator's Chain Gauntlets
			{ itemID = 51461 }, --Wrathful Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Elemental" },
			{ itemID = 51510 }, --Wrathful Gladiator's Mail Gauntlets
			{ itemID = 51512 }, --Wrathful Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Enhancement" },
			{ itemID = 51504 }, --Wrathful Gladiator's Linked Gauntlets
			{ itemID = 51506 }, --Wrathful Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. "Restoration" },
			{ itemID = 51498 }, --Wrathful Gladiator's Ringmail Gauntlets
			{ itemID = 51500 }, --Wrathful Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 51128 }, --Sanctified Scourgelord Gauntlets
			{ itemID = 51126 }, --Sanctified Scourgelord Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "Tanking" },
			{ itemID = 51132 }, --Sanctified Scourgelord Handguards
			{ itemID = 51131 }, --Sanctified Scourgelord Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 51169 }, --Sanctified Lightsworn Gloves
			{ itemID = 51168 }, --Sanctified Lightsworn Greaves
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 51163 }, --Sanctified Lightsworn Gauntlets
			{ itemID = 51161 }, --Sanctified Lightsworn Legplates
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. "DPS" },
			{ itemID = 51414 }, --Wrathful Gladiator's Dreadplate Gauntlets
			{ itemID = 51416 }, --Wrathful Gladiator's Dreadplate Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Holy" },
			{ itemID = 51469 }, --Wrathful Gladiator's Ornamented Gloves
			{ itemID = 51471 }, --Wrathful Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Retribution" },
			{ itemID = 51475 }, --Wrathful Gladiator's Scaled Gauntlets
			{ itemID = 51477 }, --Wrathful Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. "Protection" },
			{ itemID = 51172 }, --Sanctified Lightsworn Handguards
			{ itemID = 51171 }, --Sanctified Lightsworn Legguards
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 51213 }, --Ymirjar Lord's Gauntlets
			{ itemID = 51211 }, --Ymirjar Lord's Legplates
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "Protection" },
			{ itemID = 51217 }, --Ymirjar Lord's Handguards
			{ itemID = 51216 }, --Ymirjar Lord's Legguards
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. "DPS" },
			{ itemID = 51542 }, --Wrathful Gladiator's Plate Gauntlets
			{ itemID = 51544 }, --Wrathful Gladiator's Plate Legguards
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Cloth" },
			{ itemID = 51329 }, --Wrathful Gladiator's Cuffs of Dominance
			{ itemID = 51327 }, --Wrathful Gladiator's Cord of Dominance
			{ itemID = 51328 }, --Wrathful Gladiator's Treads of Dominance
			{ itemID = 51367 }, --Wrathful Gladiator's Cuffs of Salvation
			{ itemID = 51365 }, --Wrathful Gladiator's Cord of Salvation
			{ itemID = 51366 }, --Wrathful Gladiator's Treads of Salvation
			{ itemID = 51339 }, --Wrathful Gladiator's Cuffs of Alacrity
			{ itemID = 51337 }, --Wrathful Gladiator's Cord of Alacrity
			{ itemID = 51338 }, --Wrathful Gladiator's Treads of Alacrity
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Leather" },
			{ itemID = 51345 }, --Wrathful Gladiator's Armwraps of Dominance
			{ itemID = 51343 }, --Wrathful Gladiator's Belt of Dominance
			{ itemID = 51344 }, --Wrathful Gladiator's Boots of Dominance
			{ itemID = 51342 }, --Wrathful Gladiator's Armwraps of Salvation
			{ itemID = 51340 }, --Wrathful Gladiator's Belt of Salvation
			{ itemID = 51341 }, --Wrathful Gladiator's Boots of Salvation
			{ itemID = 51370 }, --Wrathful Gladiator's Armwraps of Triumph
			{ itemID = 51368 }, --Wrathful Gladiator's Belt of Triumph
			{ itemID = 51369 }, --Wrathful Gladiator's Boots of Triumph
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Mail" },
			{ itemID = 51376 }, --Wrathful Gladiator's Wristguards of Dominance
			{ itemID = 51374 }, --Wrathful Gladiator's Waistguard of Dominance
			{ itemID = 51375 }, --Wrathful Gladiator's Sabatons of Dominance
			{ itemID = 51373 }, --Wrathful Gladiator's Wristguards of Salvation
			{ itemID = 51371 }, --Wrathful Gladiator's Waistguard of Salvation
			{ itemID = 51372 }, --Wrathful Gladiator's Sabatons of Salvation
			{ itemID = 51352 }, --Wrathful Gladiator's Wristguards of Triumph
			{ itemID = 51350 }, --Wrathful Gladiator's Waistguard of Triumph
			{ itemID = 51351 }, --Wrathful Gladiator's Sabatons of Triumph
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Plate" },
			{ itemID = 51361 }, --Wrathful Gladiator's Bracers of Salvation
			{ itemID = 51359 }, --Wrathful Gladiator's Girdle of Salvation
			{ itemID = 51360 }, --Wrathful Gladiator's Greaves of Salvation
			{ itemID = 51364 }, --Wrathful Gladiator's Bracers of Triumph
			{ itemID = 51362 }, --Wrathful Gladiator's Girdle of Triumph
			{ itemID = 51363 }, --Wrathful Gladiator's Greaves of Triumph
		},
	},
	{
		Name = "Toravon the Ice Watcher",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Back" },
			{ itemID = 51334 }, --Wrathful Gladiator's Cloak of Ascendancy
			{ itemID = 51348 }, --Wrathful Gladiator's Cloak of Deliverance
			{ itemID = 51330 }, --Wrathful Gladiator's Cloak of Dominance
			{ itemID = 51346 }, --Wrathful Gladiator's Cloak of Salvation
			{ itemID = 51332 }, --Wrathful Gladiator's Cloak of Subjugation
			{ itemID = 51354 }, --Wrathful Gladiator's Cloak of Triumph
			{ itemID = 51356 }, --Wrathful Gladiator's Cloak of Victory
			{ itemID = 49426 }, --Emblem of Frost
			{ itemID = 43959 }, --Reins of the Grand Black War Mammoth
			{ itemID = 44083 }, --Reins of the Grand Black War Mammoth
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Neck" },
			{ itemID = 51335 }, --Wrathful Gladiator's Pendant of Ascendancy
			{ itemID = 51349 }, --Wrathful Gladiator's Pendant of Deliverance
			{ itemID = 51331 }, --Wrathful Gladiator's Pendant of Dominance
			{ itemID = 51347 }, --Wrathful Gladiator's Pendant of Salvation
			{ itemID = 51333 }, --Wrathful Gladiator's Pendant of Subjugation
			{ itemID = 51353 }, --Wrathful Gladiator's Pendant of Sundering
			{ itemID = 51355 }, --Wrathful Gladiator's Pendant of Triumph
			{ itemID = 51357 }, --Wrathful Gladiator's Pendant of Victory
			{ icon = "INV_Box_01", name = color.WHITE.. "PvP Non-Set Epics", desc = "=q5=" .. "Ring" },
			{ itemID = 51336 }, --Wrathful Gladiator's Band of Dominance
			{ itemID = 51358 }, --Wrathful Gladiator's Band of Triumph
		},
	},
}

-----------------
--- Naxxramas ---
-----------------

-------------------------
--- Construct Quarter ---
-------------------------

AtlasLoot_Data["Naxxramas80"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Naxxramas",
	Type = "WrathRaid",
	{
		Name = "Patchwerk",
		{
			{ itemID = 39272 }, --Drape of Surgery
			{ itemID = 39273 }, --Sullen Cloth Boots
			{ itemID = 39275 }, --Contagion Gloves
			{ itemID = 39274 }, --Retcher's Shoulderpads
			{ itemID = 39267 }, --Abomination Shoulderblades
			{ itemID = 39262 }, --Gauntlets of Combined Strength
			{ itemID = 39261 }, --Tainted Girdle of Mending
			{ itemID = 39271 }, --Blade of Dormant Memories
			{ itemID = 39270 }, --Hatestrike
		},
	},
	{
		Name = "Patchwerk",
		{
			{ itemID = 40271 }, --Sash of Solitude
			{ itemID = 40269 }, --Boots of Persuasion
			{ itemID = 40260 }, --Belt of the Tortured
			{ itemID = 40270 }, --Boots of Septic Wounds
			{ itemID = 40262 }, --Gloves of Calculated Risk
			{ itemID = 40272 }, --Girdle of the Gambit
			{ itemID = 40261 }, --Crude Discolored Battlegrips
			{ itemID = 40263 }, --Fleshless Girdle
			{ itemID = 40259 }, --Waistguard of Divine Grace
			{ itemID = 40071 }, --Chains of Adoration
			{ itemID = 40065 }, --Fool's Trial
			{ itemID = 40069 }, --Heritage
			{ itemID = 40064 }, --Thunderstorm Amulet
			{ itemID = 40080 }, --Lost Jewel
			{ itemID = 40075 }, --Ruthlessness
		},
		{
			{ itemID = 40107 }, --Sand-Worn Band
			{ itemID = 40074 }, --Strong-Handed Ring
			{ itemID = 40273 }, --Surplus Limb
			{ itemID = 40267 }, --Totem of Hex
			{ itemID = 40268 }, --Libram of Tolerance
			{ itemID = 40264 }, --Split Greathammer
			{ itemID = 40266 }, --Hero's Surrender
			{ itemID = 40265 }, --Arrowsong
		},
	},
	{
		Name = "Grobbulus",
		{
			{ itemID = 39284 }, --Miasma Mantle
			{ itemID = 39285 }, --Handgrips of Turmoil
			{ itemID = 39283 }, --Putrescent Bands
			{ itemID = 39279 }, --Blistered Belt of Decay
			{ itemID = 39278 }, --Bands of Anxiety
			{ itemID = 39280 }, --Leggings of Innumerable Barbs
			{ itemID = 39282 }, --Bone-Linked Amulet
			{ itemID = 39277 }, --Sealing Ring of Grobbulus
			{ itemID = 39281 }, --Infection Repulser
			{ itemID = 39276 }, --The Skull of Ruin
		},
	},
	{
		Name = "Grobbulus",
		{
			{ itemID = 40250 }, --Aged Winter Cloak
			{ itemID = 40254 }, --Cloak of Averted Crisis
			{ itemID = 40252 }, --Cloak of the Shadowed Sun
			{ itemID = 40253 }, --Shawl of the Old Maid
			{ itemID = 40251 }, --Shroud of Luminosity
			{ itemID = 40287 }, --Cowl of Vanity
			{ itemID = 40286 }, --Mantle of the Corrupted
			{ itemID = 40351 }, --Mantle of the Fatigued Sage
			{ itemID = 40289 }, --Sympathetic Amice
			{ itemID = 40277 }, --Tunic of Indulgence
			{ itemID = 40285 }, --Desecrated Past
			{ itemID = 40288 }, --Spaulders of Incoherence
			{ itemID = 40283 }, --Fallout Impervious Tunic
			{ itemID = 40282 }, --Slime Stream Bands
			{ itemID = 40275 }, --Depraved Linked Belt
		},
		{
			{ itemID = 40279 }, --Chestguard of the Exhausted
			{ itemID = 40274 }, --Bracers of Liberation
			{ itemID = 40278 }, --Girdle of Chivalry
			{ itemID = 40257 }, --Defender's Code
			{ itemID = 40255 }, --Dying Curse
			{ itemID = 40258 }, --Forethought Talisman
			{ itemID = 40256 }, --Grim Toll
			{ itemID = 40281 }, --Twilight Mist
			{ itemID = 40280 }, --Origin of Nightmares
			{ itemID = 40284 }, --Plague Igniter
		},
	},
	{
		Name = "Gluth",
		{
			{ itemID = 39272 }, --Drape of Surgery
			{ itemID = 39284 }, --Miasma Mantle
			{ itemID = 39396 }, --Gown of Blaumeux
			{ itemID = 39309 }, --Leggings of the Instructor
			{ itemID = 39237 }, --Spaulders of Resumed Battle
			{ itemID = 39279 }, --Blistered Belt of Decay
			{ itemID = 39191 }, --Splint-Bound Leggings
			{ itemID = 39215 }, --Boots of the Follower
			{ itemID = 39294 }, --Arc-Scorched Helmet
			{ itemID = 39248 }, --Tunic of the Lost Pack
			{ itemID = 39194 }, --Rusted-Link Spiked Gauntlets
			{ itemID = 39251 }, --Necrogenic Belt
			{ itemID = 39379 }, --Spectral Rider's Girdle
			{ itemID = 39188 }, --Chivalric Chestguard
			{ itemID = 39345 }, --Girdle of the Ascended Phantom
		},
		{
			{ itemID = 39146 }, --Collar of Dissolution
			{ itemID = 39232 }, --Pendant of Lost Vocations
			{ itemID = 39193 }, --Band of Neglected Pleas
			{ itemID = 39388 }, --Spirit-World Glass
			{ itemID = 39200 }, --Grieving Spellblade
			{ itemID = 39344 }, --Slayer of the Lifeless
			{ itemID = 39281 }, --Infection Repulser
			{ itemID = 39394 }, --Charmed Cierge
		},
	},
	{
		Name = "Gluth",
		{
			{ itemID = 40622 }, --Spaulders of the Lost Conqueror
			{ itemID = 40623 }, --Spaulders of the Lost Protector
			{ itemID = 40624 }, --Spaulders of the Lost Vanquisher
			{ itemID = 40610 }, --Chestguard of the Lost Conqueror
			{ itemID = 40611 }, --Chestguard of the Lost Protector
			{ itemID = 40612 }, --Chestguard of the Lost Vanquisher
			{ itemID = 40619 }, --Leggings of the Lost Conqueror
			{ itemID = 40620 }, --Leggings of the Lost Protector
			{ itemID = 40621 }, --Leggings of the Lost Vanquisher
		},
	},
	{
		Name = "Gluth",
		{
			{ itemID = 40247 }, --Cowl of Innocent Delight
			{ itemID = 40289 }, --Sympathetic Amice
			{ itemID = 40602 }, --Robes of Mutation
			{ itemID = 39733 }, --Gloves of Token Respect
			{ itemID = 40303 }, --Wraps of the Persecuted
			{ itemID = 40326 }, --Boots of Forlorn Wishes
			{ itemID = 40296 }, --Cover of Silence
			{ itemID = 39768 }, --Cowl of the Perished
			{ itemID = 40319 }, --Chestpiece of Suspicion
			{ itemID = 40260 }, --Belt of the Tortured
			{ itemID = 40205 }, --Stalk-Skin Belt
			{ itemID = 40270 }, --Boots of Septic Wounds
			{ itemID = 40193 }, --Tunic of Masked Suffering
			{ itemID = 40209 }, --Bindings of the Decrepit
			{ itemID = 40302 }, --Benefactor's Gauntlets
		},
		{
			{ itemID = 39718 }, --Corpse Scarab Handguards
			{ itemID = 40242 }, --Grotesque Handgrips
			{ itemID = 39760 }, --Helm of Diminished Pride
			{ itemID = 40185 }, --Shoulderguards of Opportunity
			{ itemID = 40203 }, --Breastplate of Tormented Rage
			{ itemID = 40332 }, --Abetment Bracers
			{ itemID = 40188 }, --Gauntlets of the Disobediant
			{ itemID = 40259 }, --Waistguard of Divine Grace
			{ itemID = 40204 }, --Legguards of the Apostle
			{ itemID = 39717 }, --Inexorable Sabatons
			{ itemID = 40206 }, --Iron-Spring Jumpers
			{ itemID = 40297 }, --Sabatons of Endurance
			{ itemID = 40350 }, --Urn of Lost Memories
			{ itemID = 40191 }, --Libram of Radiance
		},
	},
	{
		Name = "Gluth",
		{
			{ itemID = 40281 }, --Twilight Mist
			{ itemID = 39714 }, --Webbed Death
			{ itemID = 39730 }, --Widow's Fury
			{ itemID = 40343 }, --Armageddon
			{ itemID = 40239 }, --The Hand of Nerub
			{ itemID = 40280 }, --Origin of Nightmares
			{ itemID = 39716 }, --Shield of Assimilation
			{ itemID = 40265 }, --Arrowsong
			{ itemID = 40346 }, --Final Voyage
		},
		{
			{ itemID = 40637 }, --Mantle of the Lost Conqueror
			{ itemID = 40638 }, --Mantle of the Lost Protector
			{ itemID = 40639 }, --Mantle of the Lost Vanquisher
			{ itemID = 40625 }, --Breastplate of the Lost Conqueror
			{ itemID = 40626 }, --Breastplate of the Lost Protector
			{ itemID = 40627 }, --Breastplate of the Lost Vanquisher
			{ itemID = 40634 }, --Legplates of the Lost Conqueror
			{ itemID = 40635 }, --Legplates of the Lost Protector
			{ itemID = 40636 }, --Legplates of the Lost Vanquisher
		},
	},
	{
		Name = "Thaddius",
		{
			{ itemID = 39295 }, --Cowl of Sheet Lightning
			{ itemID = 39294 }, --Arc-Scorched Helmet
			{ itemID = 39293 }, --Blackened Legplates of Feugen
			{ itemID = 39292 }, --Repelling Charge
			{ itemID = 39291 }, --Torment of the Banished
		},
		{
			{ itemID = 40619 }, --Leggings of the Lost Conqueror
			{ itemID = 40620 }, --Leggings of the Lost Protector
			{ itemID = 40621 }, --Leggings of the Lost Vanquisher
		},
	},
	{
		Name = "Thaddius",
		{
			{ itemID = 40303 }, --Wraps of the Persecuted
			{ itemID = 40301 }, --Cincture of Polarity
			{ itemID = 40296 }, --Cover of Silence
			{ itemID = 40304 }, --Headpiece of Fungal Bloom
			{ itemID = 40299 }, --Pauldrons of the Abandoned
			{ itemID = 40302 }, --Benefactor's Gauntlets
			{ itemID = 40298 }, --Faceguard of the Succumbed
			{ itemID = 40294 }, --Riveted Abomination Leggings
			{ itemID = 40297 }, --Sabatons of Endurance
			{ itemID = 40300 }, --Spire of Sunset
		},
		{
			{ itemID = 40634 }, --Legplates of the Lost Conqueror
			{ itemID = 40635 }, --Legplates of the Lost Protector
			{ itemID = 40636 }, --Legplates of the Lost Vanquisher
		},
	},
	{
		Name = "Anub'Rekhan",
		{
			{ itemID = 39192 }, --Gloves of Dark Gestures
			{ itemID = 39190 }, --Agonal Sash
			{ itemID = 39191 }, --Splint-Bound Leggings
			{ itemID = 39189 }, --Boots of Persistence
			{ itemID = 39188 }, --Chivalric Chestguard
			{ itemID = 39139 }, --Ravaging Sabatons
			{ itemID = 39146 }, --Collar of Dissolution
			{ itemID = 39193 }, --Band of Neglected Pleas
			{ itemID = 39141 }, --Deflection Band
			{ itemID = 39140 }, --Knife of Incision
		},
	},
	{
		Name = "Anub'Rekhan",
		{
			{ itemID = 39719 }, --Mantle of the Locusts
			{ itemID = 39721 }, --Sash of the Parlor
			{ itemID = 39720 }, --Leggings of Atrophy
			{ itemID = 39722 }, --Swarm Bindings
			{ itemID = 39701 }, --Dawnwalkers
			{ itemID = 39702 }, --Arachnoid Gold Band
			{ itemID = 39718 }, --Corpse Scarab Handguards
			{ itemID = 39704 }, --Pauldrons of Unnatural Death
			{ itemID = 39703 }, --Rescinding Grips
			{ itemID = 39717 }, --Inexorable Sabatons
			{ itemID = 39706 }, --Sabatons of Sudden Reprisal
			{ itemID = 40071 }, --Chains of Adoration
			{ itemID = 40065 }, --Fool's Trial
			{ itemID = 40069 }, --Heritage
			{ itemID = 40064 }, --Thunderstorm Amulet
		},
		{
			{ itemID = 40080 }, --Lost Jewel
			{ itemID = 40075 }, --Ruthlessness
			{ itemID = 40107 }, --Sand-Worn Band
			{ itemID = 40074 }, --Strong-Handed Ring
			{ itemID = 39714 }, --Webbed Death
			{ itemID = 40208 }, --Cryptfiend's Bite
			{ itemID = 39716 }, --Shield of Assimilation
			{ itemID = 39712 }, --Gemmed Wand of the Nerubians
		},
	},
	{
		Name = "Grand Widow Faerlina",
		{
			{ itemID = 39216 }, --Sash of Mortal Desire
			{ itemID = 39215 }, --Boots of the Follower
			{ itemID = 39196 }, --Boots of the Worshiper
			{ itemID = 39217 }, --Avenging Combat Leggings
			{ itemID = 39194 }, --Rusted-Link Spiked Gauntlets
			{ itemID = 39198 }, --Frostblight Pauldrons
			{ itemID = 39195 }, --Bracers of Lost Sentiments
			{ itemID = 39197 }, --Gauntlets of the Master
			{ itemID = 39199 }, --Watchful Eye
			{ itemID = 39200 }, --Grieving Spellblade
		},
	},
	{
		Name = "Grand Widow Faerlina",
		{
			{ itemID = 39732 }, --Faerlina's Madness
			{ itemID = 39731 }, --Punctilious Bindings
			{ itemID = 39733 }, --Gloves of Token Respect
			{ itemID = 39735 }, --Belt of False Dignity
			{ itemID = 39756 }, --Tunic of Prejudice
			{ itemID = 39727 }, --Dislocating Handguards
			{ itemID = 39724 }, --Cult's Chestguard
			{ itemID = 39734 }, --Atonement Greaves
			{ itemID = 39723 }, --Fire-Scorched Greathelm
			{ itemID = 39725 }, --Epaulets of the Grieving Servant
			{ itemID = 39729 }, --Bracers of the Tyrant
			{ itemID = 39726 }, --Callous-Hearted Gauntlets
			{ itemID = 40071 }, --Chains of Adoration
			{ itemID = 40065 }, --Fool's Trial
			{ itemID = 40069 }, --Heritage
		},
		{
			{ itemID = 40064 }, --Thunderstorm Amulet
			{ itemID = 40080 }, --Lost Jewel
			{ itemID = 40075 }, --Ruthlessness
			{ itemID = 40107 }, --Sand-Worn Band
			{ itemID = 40108 }, --Seized Beauty
			{ itemID = 40074 }, --Strong-Handed Ring
			{ itemID = 39757 }, --Idol of Worship
			{ itemID = 39728 }, --Totem of Misery
			{ itemID = 39730 }, --Widow's Fury
		},
	},
	{
		Name = "Maexxna",
		{
			{ itemID = 39225 }, --Cloak of Armed Strife
			{ itemID = 39230 }, --Spaulders of the Monstrosity
			{ itemID = 39224 }, --Leggings of Discord
			{ itemID = 39228 }, --Web Cocoon Grips
			{ itemID = 39232 }, --Pendant of Lost Vocations
			{ itemID = 39231 }, --Timeworn Silken Band
			{ itemID = 39229 }, --Embrace of the Spider
			{ itemID = 39226 }, --Maexxna's Femur
			{ itemID = 39221 }, --Wraith Spear
			{ itemID = 39233 }, --Aegis of Damnation
		},
	},
	{
		Name = "Maexxna",
		{
			{ itemID = 40250, desc = "-q4-Aged Winter Cloak" },
			{ itemID = 40254 }, --Cloak of Averted Crisis
			{ itemID = 40252 }, --Cloak of the Shadowed Sun
			{ itemID = 40253 }, --Shawl of the Old Maid
			{ itemID = 40251 }, --Shroud of Luminosity
			{ itemID = 40062 }, --Digested Silken Robes
			{ itemID = 40060 }, --Distorted Limbs
			{ itemID = 39768 }, --Cowl of the Perished
			{ itemID = 40063 }, --Mantle of Shattered Kinship
			{ itemID = 39765 }, --Sinner's Bindings
			{ itemID = 39761 }, --Infectious Skitterer Leggings
			{ itemID = 40061 }, --Quivering Tunic
			{ itemID = 39762 }, --Torn Web Wrapping
			{ itemID = 39760 }, --Helm of Diminished Pride
			{ itemID = 39767 }, --Undiminished Battleplate
		},
		{
			{ itemID = 39764 }, --Bindings of the Hapless Prey
			{ itemID = 39759 }, --Ablative Chitin Girdle
			{ itemID = 40257 }, --Defender's Code
			{ itemID = 40255 }, --Dying Curse
			{ itemID = 40258 }, --Forethought Talisman
			{ itemID = 40256 }, --Grim Toll
			{ itemID = 39766 }, --Matriarch's Spawn
			{ itemID = 39763 }, --Wraith Strike
			{ itemID = 39758 }, --The Jawbone
		},
	},
	{
		Name = "Instructor Razuvious",
		{
			{ itemID = 39297 }, --Cloak of Darkening
			{ itemID = 39310 }, --Mantle of the Extensive Mind
			{ itemID = 39309 }, --Leggings of the Instructor
			{ itemID = 39299 }, --Rapid Attack Gloves
			{ itemID = 39308 }, --Girdle of Lenience
			{ itemID = 39307 }, --Iron Rings of Endurance
			{ itemID = 39306 }, --Plated Gloves of Relief
			{ itemID = 39298 }, --Waistguard of the Tutor
			{ itemID = 39311 }, --Scepter of Murmuring Spirits
			{ itemID = 39296 }, --Accursed Bow of the Elite
		},
	},
	{
		Name = "Instructor Razuvious",
		{
			{ itemID = 40325 }, --Bindings of the Expansive Mind
			{ itemID = 40326 }, --Boots of Forlorn Wishes
			{ itemID = 40305 }, --Spaulders of Egotism
			{ itemID = 40319 }, --Chestpiece of Suspicion
			{ itemID = 40323 }, --Esteemed Bindings
			{ itemID = 40315 }, --Shoulderpads of Secret Arts
			{ itemID = 40324 }, --Bands of Mutual Respect
			{ itemID = 40327 }, --Girdle of Recuperation
			{ itemID = 40306 }, --Bracers of the Unholy Knight
			{ itemID = 40316 }, --Gauntlets of Guiding Touch
			{ itemID = 40317 }, --Girdle of Razuvious
			{ itemID = 40318 }, --Legplates of Double Strikes
			{ itemID = 40320 }, --Faithful Steel Sabatons
			{ itemID = 40071 }, --Chains of Adoration
			{ itemID = 40065 }, --Fool's Trial
		},
		{
			{ itemID = 40069 }, --Heritage
			{ itemID = 40064 }, --Thunderstorm Amulet
			{ itemID = 40080 }, --Lost Jewel
			{ itemID = 40075 }, --Ruthlessness
			{ itemID = 40107 }, --Sand-Worn Band
			{ itemID = 40074 }, --Strong-Handed Ring
			{ itemID = 40321 }, --Idol of the Shooting Star
			{ itemID = 40322 }, --Totem of Dueling
		},
	},
	{
		Name = "Gothik the Harvester",
		{
			{ itemID = 39390 }, --Resurgent Phantom Bindings
			{ itemID = 39386 }, --Tunic of Dislocation
			{ itemID = 39391 }, --Heinous Mail Chestguard
			{ itemID = 39379 }, --Spectral Rider's Girdle
			{ itemID = 39345 }, --Girdle of the Ascended Phantom
			{ itemID = 39369 }, --Sabatons of Deathlike Gloom
			{ itemID = 39392 }, --Veiled Amulet of Life
			{ itemID = 39389 }, --Signet of the Malevolent
			{ itemID = 39388 }, --Spirit-World Glass
			{ itemID = 39344 }, --Slayer of the Lifeless
		},
	},
	{
		Name = "Gothik the Harvester",
		{
			{ itemID = 40250, desc = "-q4-Aged Winter Cloak" },
			{ itemID = 40254 }, --Cloak of Averted Crisis
			{ itemID = 40252 }, --Cloak of the Shadowed Sun
			{ itemID = 40253 }, --Shawl of the Old Maid
			{ itemID = 40251 }, --Shroud of Luminosity
			{ itemID = 40339 }, --Gothik's Cowl
			{ itemID = 40338 }, --Bindings of Yearning
			{ itemID = 40329 }, --Hood of the Exodus
			{ itemID = 40341 }, --Shackled Cinch
			{ itemID = 40333 }, --Leggings of Fleeting Moments
			{ itemID = 40340 }, --Helm of Unleashed Energy
			{ itemID = 40331 }, --Leggings of Failed Escape
			{ itemID = 40328 }, --Helm of Vital Protection
			{ itemID = 40334 }, --Burdened Shoulderplates
			{ itemID = 40332 }, --Abetment Bracers
		},
		{
			{ itemID = 40330 }, --Bracers of Unrelenting Attack
			{ itemID = 40257 }, --Defender's Code
			{ itemID = 40255 }, --Dying Curse
			{ itemID = 40258 }, --Forethought Talisman
			{ itemID = 40256 }, --Grim Toll
			{ itemID = 40342 }, --Idol of Awakening
			{ itemID = 40337 }, --Libram of Resurgence
			{ itemID = 40336 }, --Life and Death
			{ itemID = 40335 }, --Touch of Horror
		},
	},
	{
		Name = "The Four Horsemen",
		{
			{ itemID = 39396 }, --Gown of Blaumeux
			{ itemID = 39397 }, --Pauldrons of Havoc
			{ itemID = 39395 }, --Thane's Tainted Greathelm
			{ itemID = 39393 }, --Claymore of Ancient Power
			{ itemID = 39394 }, --Charmed Cierge
		},
		{
			{ itemID = 40610 }, --Chestguard of the Lost Conqueror
			{ itemID = 40611 }, --Chestguard of the Lost Protector
			{ itemID = 40612 }, --Chestguard of the Lost Vanquisher
		},
	},
	{
		Name = "The Four Horsemen",
		{
			{ itemID = 40349 }, --Gloves of Peaceful Death
			{ itemID = 40344 }, --Helm of the Grave
			{ itemID = 40352 }, --Leggings of Voracious Shadows
			{ itemID = 40347 }, --Zeliek's Gauntlets
			{ itemID = 40350 }, --Urn of Lost Memories
			{ itemID = 40345 }, --Broken Promise
			{ itemID = 40343 }, --Armageddon
			{ itemID = 40348 }, --Damnation
			{ itemID = 40346 }, --Final Voyage
		},
		{
			{ itemID = 40625 }, --Breastplate of the Lost Conqueror
			{ itemID = 40626 }, --Breastplate of the Lost Protector
			{ itemID = 40627 }, --Breastplate of the Lost Vanquisher
		},
	},
	{
		Name = "Noth the Plaguebringer",
		{
			{ itemID = 39241 }, --Dark Shroud of the Scourge
			{ itemID = 39242 }, --Robes of Hoarse Breaths
			{ itemID = 39240 }, --Noth's Curse
			{ itemID = 39237 }, --Spaulders of Resumed Battle
			{ itemID = 39243 }, --Handgrips of the Foredoomed
			{ itemID = 39236 }, --Trespasser's Boots
			{ itemID = 39239 }, --Chestplate of the Risen Soldier
			{ itemID = 39235 }, --Bone-Framed Bracers
			{ itemID = 39234 }, --Plague-Impervious Boots
			{ itemID = 39244 }, --Ring of the Fated
		},
	},
	{
		Name = "Noth the Plaguebringer",
		{
			{ itemID = 40602 }, --Robes of Mutation
			{ itemID = 40198 }, --Bands of Impurity
			{ itemID = 40197 }, --Gloves of the Fallen Wizard
			{ itemID = 40186 }, --Thrusting Bands
			{ itemID = 40200 }, --Belt of Potent Chanting
			{ itemID = 40193 }, --Tunic of Masked Suffering
			{ itemID = 40196 }, --Legguards of the Undisturbed
			{ itemID = 40184 }, --Crippled Treads
			{ itemID = 40185 }, --Shoulderguards of Opportunity
			{ itemID = 40188 }, --Gauntlets of the Disobediant
			{ itemID = 40187 }, --Poignant Sabatons
			{ itemID = 40071 }, --Chains of Adoration
			{ itemID = 40065 }, --Fool's Trial
			{ itemID = 40069 }, --Heritage
			{ itemID = 40064 }, --Thunderstorm Amulet
		},
		{
			{ itemID = 40080 }, --Lost Jewel
			{ itemID = 40075 }, --Ruthlessness
			{ itemID = 40107 }, --Sand-Worn Band
			{ itemID = 40074 }, --Strong-Handed Ring
			{ itemID = 40192 }, --Accursed Spine
			{ itemID = 40191 }, --Libram of Radiance
			{ itemID = 40189 }, --Angry Dread
			{ itemID = 40190 }, --Spinning Fate
		},
	},
	{
		Name = "Heigan the Unclean",
		{
			{ itemID = 39252 }, --Preceptor's Bindings
			{ itemID = 39254 }, --Saltarello Shoes
			{ itemID = 39247 }, --Cuffs of Dark Shadows
			{ itemID = 39248 }, --Tunic of the Lost Pack
			{ itemID = 39251 }, --Necrogenic Belt
			{ itemID = 39249 }, --Shoulderplates of Bloodshed
			{ itemID = 39246 }, --Amulet of Autopsy
			{ itemID = 39250 }, --Ring of Holy Cleansing
			{ itemID = 39245 }, --Demise
			{ itemID = 39255 }, --Staff of the Plague Beast
		},
	},
	{
		Name = "Heigan the Unclean",
		{
			{ itemID = 40250 }, --Aged Winter Cloak
			{ itemID = 40254 }, --Cloak of Averted Crisis
			{ itemID = 40252 }, --Cloak of the Shadowed Sun
			{ itemID = 40253 }, --Shawl of the Old Maid
			{ itemID = 40251 }, --Shroud of Luminosity
			{ itemID = 40234 }, --Heigan's Putrid Vestments
			{ itemID = 40236 }, --Serene Echoes
			{ itemID = 40238 }, --Gloves of the Dancing Bear
			{ itemID = 40205 }, --Stalk-Skin Belt
			{ itemID = 40235 }, --Helm of Pilgrimage
			{ itemID = 40209 }, --Bindings of the Decrepit
			{ itemID = 40201 }, --Leggings of Colossal Strides
			{ itemID = 40237 }, --Eruption-Scared Boots
			{ itemID = 40203 }, --Breastplate of Tormented Rage
			{ itemID = 40210 }, --Chestguard of Bitter Charms
		},
		{
			{ itemID = 40204 }, --Legguards of the Apostle
			{ itemID = 40206 }, --Iron-Spring Jumpers
			{ itemID = 40257 }, --Defender's Code
			{ itemID = 40255 }, --Dying Curse
			{ itemID = 40258 }, --Forethought Talisman
			{ itemID = 40256 }, --Grim Toll
			{ itemID = 40207 }, --Sigil of Awareness
			{ itemID = 40208 }, --Cryptfiend's Bite
			{ itemID = 40233 }, --The Undeath Carrier
		},
	},
	{
		Name = "Loatheb",
		{
			{ itemID = 39259 }, --Fungi-Stained Coverings
			{ itemID = 39260 }, --Helm of the Corrupted Mind
			{ itemID = 39258 }, --Legplates of Inescapable Death
			{ itemID = 39257 }, --Loatheb's Shadow
			{ itemID = 39256 }, --Sulfur Stave
		},
		{
			{ itemID = 40622 }, --Spaulders of the Lost Conqueror
			{ itemID = 40623 }, --Spaulders of the Lost Protector
			{ itemID = 40624 }, --Spaulders of the Lost Vanquisher
		},
	},
	{
		Name = "Loatheb",
		{
			{ itemID = 40247 }, --Cowl of Innocent Delight
			{ itemID = 40246 }, --Boots of Impetuous Ideals
			{ itemID = 40249 }, --Vest of Vitality
			{ itemID = 40243 }, --Footwraps of Vile Deceit
			{ itemID = 40242 }, --Grotesque Handgrips
			{ itemID = 40241 }, --Girdle of Unity
			{ itemID = 40240 }, --Greaves of Turbulence
			{ itemID = 40244 }, --The Impossible Dream
			{ itemID = 40239 }, --The Hand of Nerub
			{ itemID = 40245 }, --Fading Glow
		},
		{
			{ itemID = 40637 }, --Mantle of the Lost Conqueror
			{ itemID = 40638 }, --Mantle of the Lost Protector
			{ itemID = 40639 }, --Mantle of the Lost Vanquisher
		},
	},
	{
		Name = "Sapphiron",
		{
			{ itemID = 39415 }, --Shroud of the Citadel
			{ itemID = 39404 }, --Cloak of Mastery
			{ itemID = 39409 }, --Cowl of Winged Fear
			{ itemID = 39408 }, --Leggings of Sapphiron
			{ itemID = 39399 }, --Helm of the Vast Legions
			{ itemID = 39405 }, --Helmet of the Inner Sanctum
			{ itemID = 39403 }, --Helm of the Unsubmissive
			{ itemID = 39398 }, --Massive Skeletal Ribcage
			{ itemID = 39401 }, --Circle of Death
			{ itemID = 39407 }, --Circle of Life
			{ itemID = 44569 }, --Key to the Focusing Iris
			{ itemID = 44582 }, --Key to the Focusing Iris
		},
	},
	{
		Name = "Sapphiron",
		{
			{ itemID = 40381 }, --Sympathy
			{ itemID = 40380 }, --Gloves of Grandeur
			{ itemID = 40376 }, --Legwraps of the Defeated Dragon
			{ itemID = 40362 }, --Gloves of Fast Reactions
			{ itemID = 40379 }, --Legguards of the Boneyard
			{ itemID = 40367 }, --Boots of the Great Construct
			{ itemID = 40366 }, --Platehelm of the Great Wyrm
			{ itemID = 40377 }, --Noble Birthright Pauldrons
			{ itemID = 40365 }, --Breastplate of Frozen Pain
			{ itemID = 40363 }, -- Bone-Inlaid Legguards
			{ itemID = 40378 }, --Ceaseless Pity
			{ itemID = 40374 }, --Cosmic Lights
			{ itemID = 40369 }, --Icy Blast Amulet
			{ itemID = 40370 }, --Gatekeeper
			{ itemID = 40375 }, --Ring of Decaying Beauty
		},
		{
			{ itemID = 40371 }, --Bandit's Insignia
			{ itemID = 40373 }, --Extract of Necromatic Power
			{ itemID = 40372 }, --Rune of Repulsion
			{ itemID = 40382 }, --Soul of the Dead
			{ itemID = 40368 }, --Murder
			{ itemID = 44577 }, --Heroic Key to the Focusing Iris
			{ itemID = 44581 }, --Heroic Key to the Focusing Iris
		},
	},
	{
		Name = "Kel'Thuzad",
		{
			{ itemID = 39425 }, --Cloak of the Dying
			{ itemID = 39421 }, --Gem of Imprisoned Vassals
			{ itemID = 39416 }, --Kel'Thuzad's Reach
			{ itemID = 39424 }, --The Soulblade
			{ itemID = 39420 }, --Anarchy
			{ itemID = 39417 }, --Death's Bite
			{ itemID = 39423 }, --Hammer of the Astral Plane
			{ itemID = 39422 }, --Staff of the Plaguehound
			{ itemID = 39426 }, --Wand of the Archlich
			{ itemID = 39419 }, --Nerubian Conquerer
		},
		{
			{ itemID = 40616 }, --Helm of the Lost Conqueror
			{ itemID = 40617 }, --Helm of the Lost Protector
			{ itemID = 40618 }, --Helm of the Lost Vanquisher
		},
	},
	{
		Name = "Kel'Thuzad",
		{
			{ itemID = 40405 }, --Cape of the Unworthy Wizard
			{ itemID = 40403 }, --Drape of the Deadly Foe
			{ itemID = 40398 }, --Leggings of Mortal Arrogance
			{ itemID = 40387 }, --Boundless Ambition
			{ itemID = 40399 }, --Signet of Manifested Pain
			{ itemID = 40383 }, --Calamity's Grasp
			{ itemID = 40386 }, --Sinister Revenge
			{ itemID = 40396 }, --The Turning Tide
			{ itemID = 40402 }, --Last Laugh
			{ itemID = 40384 }, --Betrayer of Humanity
			{ itemID = 40395 }, --Torch of Holy Fire
			{ itemID = 40388 }, --Journey's End
			{ itemID = 40401 }, --Voice of Reason
			{ itemID = 40400 }, --Wall of Terror
			{ itemID = 40385 }, --Envoy of Mortality
		},
		{
			{ itemID = 40631 }, --Crown of the Lost Conqueror
			{ itemID = 40632 }, --Crown of the Lost Protector
			{ itemID = 40633 }, --Crown of the Lost Vanquisher
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 39467 }, --Minion Bracers
			{ itemID = 39472 }, --Chain of Latent Energies
			{ itemID = 39470 }, --Medallion of the Disgraced
			{ itemID = 39427 }, --Omen of Ruin
			{ itemID = 39468 }, --The Stray
			{ itemID = 39473 }, --Contortion
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 40410 }, --Shadow of the Ghoul
			{ itemID = 40409 }, --Boots of the Escaped Captive
			{ itemID = 40414 }, --Shoulderguards of the Undaunted
			{ itemID = 40412 }, --Ousted Bead Necklace
			{ itemID = 40408 }, --Haunting Call
			{ itemID = 40407 }, --Silent Crusader
			{ itemID = 40406 }, --Inevitable Defeat
		},
	},
}

------------------------
--- Obsidian Sanctum ---
------------------------

AtlasLoot_Data["Sartharion"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Obsidian Sanctum",
	Type = "WrathRaid",
	{
		Name = "Sartharion",
		{
			{ itemID = 40428 }, --Titan's Outlook
			{ itemID = 40427 }, --Circle of Arcane Streams
			{ itemID = 40426 }, --Signet of the Accord
			{ itemID = 40433 }, --Wyrmrest Band
			{ itemID = 40430 }, --Majestic Dragon Figurine
			{ itemID = 40429 }, --Crimson Steel
			{ itemID = 43345 }, --Dragon Hide Bag
			{ itemID = 43347 }, --Satchel of Spoils
			{ icon = "INV_Box_01", name = color.WHITE.. "Bonus Loot", desc = "=q5=" .. "One Drake Left" },
			{ itemID = 43988 }, --Gale-Proof Cloak
			{ itemID = 43990 }, --Blade-Scarred Tunic
			{ itemID = 43991 }, --Legguards of Composure
			{ itemID = 43989 }, --Remembrance Girdle
			{ itemID = 43992 }, --Volitant Amulet
		},
		{
			{ itemID = 40613 }, --Gloves of the Lost Conqueror
			{ itemID = 40614 }, --Gloves of the Lost Protector
			{ itemID = 40615 }, --Gloves of the Lost Vanquisher
			{ icon = "INV_Box_01", name = color.WHITE.. "Bonus Loot", desc = "=q5=" .. "Two Drakes Left" },
			{ itemID = 43995 }, --Enamored Cowl
			{ itemID = 43998 }, --Chestguard of Flagrant Prowess
			{ itemID = 43996 }, --Sabatons of Firmament
			{ itemID = 43994 }, --Belabored Legplates
			{ itemID = 43993 }, --Greatring of Collision
			{ icon = "INV_Box_01", name = color.WHITE.. "Bonus Loot", desc = "=q5=" .. "Three Drakes Left" },
			{ itemID = 43986 }, --Reins of the Black Drake
		},
	},
	{
		Name = "Sartharion",
		{
			{ itemID = 40437 }, --Concealment Shoulderpads
			{ itemID = 40439 }, --Mantle of the Eternal Sentinel
			{ itemID = 40451 }, --Hyaline Helm of the Sniper
			{ itemID = 40438 }, --Council Chamber Epaulets
			{ itemID = 40453 }, --Chestplate of the Great Aspects
			{ itemID = 40446 }, --Dragon Brood Legguards
			{ itemID = 40433 }, --Wyrmrest Band
			{ itemID = 40431 }, --Fury of the Five Flights
			{ itemID = 40432 }, --Illustration of the Dragon Soul
			{ itemID = 40455 }, --Staff of Restraint
			{ itemID = 43345 }, --Dragon Hide Bag
			{ itemID = 43346 }, --Large Satchel of Spoils
			{ itemID = 40628 }, --Gauntlets of the Lost Conqueror
			{ itemID = 40629 }, --Gauntlets of the Lost Protector
			{ itemID = 40630 }, --Gauntlets of the Lost Vanquisher
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Bonus Loot", desc = "=q5=" .. "One Drake Left" },
			{ itemID = 44002 }, --The Sanctum's Flowing Vestments
			{ itemID = 44003 }, --Upstanding Spaulders
			{ itemID = 44004 }, --Bountiful Gauntlets
			{ itemID = 44000 }, --Dragonstorm Breastplate
			{ icon = "INV_Box_01", name = color.WHITE.. "Bonus Loot", desc = "=q5=" .. "Two Drakes Left" },
			{ itemID = 44005 }, --Pennant Cloak
			{ itemID = 44008 }, --Unsullied Cuffs
			{ itemID = 44007 }, --Headpiece of Reconciliation
			{ itemID = 44011 }, --Leggings of the Honored
			{ itemID = 44006 }, --Obsidian Greathelm
			{ icon = "INV_Box_01", name = color.WHITE.. "Bonus Loot", desc = "=q5=" .. "Three Drakes Left" },
			{ itemID = 43954 }, --Reins of the Twilight Drake
		},
	},
}
---------------------------
--- The Eye of Eternity ---
---------------------------

AtlasLoot_Data["Malygos"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Eye of Eternity",
	Type = "WrathRaid",
	{
		Name = "Malygos",
		{
			{ itemID = 40526 }, --Gown of the Spell-Weaver
			{ itemID = 40519 }, --Footsteps of Malygos
			{ itemID = 40511 }, --Focusing Energy Epaulets
			{ itemID = 40486 }, --Necklace of the Glittering Chamber
			{ itemID = 40474 }, --Surge Needle Ring
			{ itemID = 40491 }, --Hailstorm
			{ itemID = 40488 }, --Ice Spire Scepter
			{ itemID = 40489 }, --Greatstaff of the Nexus
			{ itemID = 40497 }, --Black Ice
			{ itemID = 40475 }, --Barricade of Eternity
			{ itemID = 43952 }, --Reins of the Azure Drake
			{ itemID = 44569 }, --Key to the Focusing Iris
		},
		{
			{ itemID = 44650 }, --Heart of Magic
			{ itemID = 44658 }, --Chain of the Ancient Wyrm
			{ itemID = 44660 }, --Drakescale Collar
			{ itemID = 44659 }, --Pendant of the Dragonsworn
			{ itemID = 44657 }, --Torque of the color.RED Dragonflight
		},
	},
	{
		Name = "Malygos",
		{
			{ itemID = 40562 }, --Hood of Rationality
			{ itemID = 40555 }, --Mantle of Dissemination
			{ itemID = 40194 }, --Blanketing Robes of Snow
			{ itemID = 40561 }, --Leash of Heedless Magic
			{ itemID = 40560 }, --Leggings of the Wanton Spellcaster
			{ itemID = 40558 }, --Arcanic Tramplers
			{ itemID = 40594 }, --Spaulders of Catatonia
			{ itemID = 40539 }, --Chestguard of the Recluse
			{ itemID = 40541 }, --Frosted Adroit Handguards
			{ itemID = 40566 }, --Unravelling Strands of Sanity
			{ itemID = 40543 }, --color.BLUE Aspect Helm
			{ itemID = 40588 }, --Tunic of the Artifact Guardian
			{ itemID = 40564 }, --Winter Spectacle Gloves
			{ itemID = 40549 }, --Boots of the Renewed Flight
			{ itemID = 40590 }, --Elevated Lair Pauldrons
		},
		{
			{ itemID = 40589 }, --Legplates of Sovereignty
			{ itemID = 40592 }, --Boots of Healing Energies
			{ itemID = 40591 }, --Melancholy Sabatons
			{ itemID = 40532 }, --Living Ice Crystals
			{ itemID = 40531 }, --Mark of Norgannon
			{ itemID = 43952 }, --Reins of the Azure Drake
			{ itemID = 44577 }, --Heroic Key to the Focusing Iris
			{ itemID = 44650 }, --Heart of Magic
			{ itemID = 44664 }, --Favor of the Dragon Queen
			{ itemID = 44662 }, --Life-Binder's Locket
			{ itemID = 44665 }, --Nexus War Champion Beads
			{ itemID = 44661 }, --Wyrmrest Necklace of Power
		},
	},
}
--------------
--- Ulduar ---
--------------

AtlasLoot_Data["Ulduar"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Ulduar",
	Type = "WrathRaid",
	{
		Name = "Flame Leviathan",
		{
			{ itemID = 45289 }, --Lifespark Visage
			{ itemID = 45291 }, --Combustion Bracers
			{ itemID = 45288 }, --Firestrider Chestguard
			{ itemID = 45283 }, --Flamewatch Armguards
			{ itemID = 45285 }, --Might of the Leviathan
			{ itemID = 45292 }, --Energy Siphon
			{ itemID = 45286 }, --Pyrite Infuser
			{ itemID = 45284 }, --Kinetic Ripper
			{ itemID = 45287 }, --Firesoul
			{ itemID = 45282 }, --Ironsoul
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45293 }, --Handguards of Potent Cures
			{ itemID = 45300 }, --Mantle of Fiery Vengeance
			{ itemID = 45295 }, --Gilded Steel Legplates
			{ itemID = 45297 }, --Shimmering Seal
			{ itemID = 45296 }, --Twirling Blades
		},
	},
	{
		Name = "Flame Leviathan",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45117 }, --Constructor's Handwraps
			{ itemID = 45119 }, --Embrace of the Leviathan
			{ itemID = 45108 }, --Mechanist's Bindings
			{ itemID = 45118 }, --Steamworker's Goggles
			{ itemID = 45109 }, --Gloves of the Fiery Behemoth
			{ itemID = 45107 }, --Iron Riveted War Helm
			{ itemID = 45111 }, --Mimiron's Inferno Couplings
			{ itemID = 45116 }, --Freya's Choker of Warding
			{ itemID = 45113 }, --Glowing Ring of Reclamation
			{ itemID = 45106 }, --Strength of the Automaton
			{ itemID = 45112 }, --The Leviathan's Coil
			{ itemID = 45115 }, --Overcharged Fuel Rod
		},
		{
			{ itemID = 45114 }, --Steamcaller's Totem
			{ itemID = 45110 }, --Titanguard
			{ itemID = 45086 }, --Rising Sun
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45135 }, --Boots of Fiery Resolution
			{ itemID = 45136 }, --Shoulderpads of Dormant Energies
			{ itemID = 45134 }, --Plated Leggings of Ruination
			{ itemID = 45133 }, --Pendant of Fiery Havoc
			{ itemID = 45132 }, --Golden Saronite Dragon
		},
	},
	{
		Name = "Razorscale",
		{
			{ itemID = 45306 }, --Binding of the Dragon Matriarch
			{ itemID = 45302 }, --Treads of the Invader
			{ itemID = 45301 }, --Bracers of the Smothering Inferno
			{ itemID = 45307 }, --Ironscale Leggings
			{ itemID = 45299 }, --Dragonsteel Faceplate
			{ itemID = 45305 }, --Breastplate of the Afterlife
			{ itemID = 45304 }, --Stormtempered Girdle
			{ itemID = 45303 }, --Band of Draconic Guile
			{ itemID = 45308 }, --Eye of the Broodmother
			{ itemID = 45298 }, --Razorscale Talon
		},
	},
	{
		Name = "Razorscale",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45138 }, --Drape of the Drakerider
			{ itemID = 45150 }, --Collar of the Wyrmhunter
			{ itemID = 45146 }, --Shackles of the Odalisque
			{ itemID = 45149 }, --Bracers of the Broodmother
			{ itemID = 45141 }, --Proto-hide Leggings
			{ itemID = 45151 }, --Belt of the Fallen Wyrm
			{ itemID = 45143 }, --Saronite Mesh Legguards
			{ itemID = 45140 }, --Razorscale Shoulderguards
			{ itemID = 45139 }, --Dragonslayer's Brace
			{ itemID = 45148 }, --Living Flame
			{ itemID = 45510 }, --Libram of Discord
			{ itemID = 45144 }, --Sigil of Deflection
		},
		{
			{ itemID = 45142 }, --Remorse
			{ itemID = 45147 }, --Guiding Star
			{ itemID = 45137 }, --Veranus' Bane
		},
	},
	{
		Name = "Ignis the Furnace Master",
		{
			{ itemID = 45317 }, --Shawl of the Caretaker
			{ itemID = 45318 }, --Drape of Fuming Anger
			{ itemID = 45312 }, --Gloves of Smoldering Touch
			{ itemID = 45316 }, --Armbraces of the Vibrant Flame
			{ itemID = 45321 }, --Pauldrons of Tempered Will
			{ itemID = 45310 }, --Gauntlets of the Iron Furnace
			{ itemID = 45313 }, --Furnace Stone
			{ itemID = 45314 }, --Igniter Rod
			{ itemID = 45311 }, --Relentless Edge
			{ itemID = 45309 }, --Rifle of the Platinum Guard
		},
	},
	{
		Name = "Ignis the Furnace Master",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45186 }, --Soot-Covered Mantle
			{ itemID = 45185 }, --Flamewrought Cinch
			{ itemID = 45162 }, --Flamestalker Boots
			{ itemID = 45164 }, --Helm of the Furnace Master
			{ itemID = 45187 }, --Wristguards of the Firetender
			{ itemID = 45167 }, --Lifeforge Breastplate
			{ itemID = 45161 }, --Girdle of Embers
			{ itemID = 45166 }, --Charred Saronite Greaves
			{ itemID = 45157 }, --Cindershard Ring
			{ itemID = 45168 }, --Pyrelight Circle
			{ itemID = 45158 }, --Heart of Iron
			{ itemID = 45169 }, --Totem of the Dancing Flame
		},
		{
			{ itemID = 45165 }, --Worldcarver
			{ itemID = 45171 }, --Intensity
			{ itemID = 45170 }, --Scepter of Creation
		},
	},
	{
		Name = "XT-002 Deconstructor",
		{
			{ itemID = 45694 }, --Conductive Cord
			{ itemID = 45677 }, --Treacherous Shoulderpads
			{ itemID = 45686 }, --Vest of the Glowing Crescent
			{ itemID = 45687 }, --Helm of Veiled Energies
			{ itemID = 45679 }, --Gloves of Taut Grip
			{ itemID = 45676 }, --Chestplate of Vicious Potency
			{ itemID = 45680 }, --Armbands of the Construct
			{ itemID = 45675 }, --Power Enhancing Loop
			{ itemID = 45685 }, --Plasma Foil
			{ itemID = 45682 }, --Pulsing Spellshield
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45869 }, --Fluxing Energy Coils
			{ itemID = 45867 }, --Breastplate of the Stoneshaper
			{ itemID = 45871 }, --Seal of Ulduar
			{ itemID = 45868 }, --Aesir's Edge
			{ itemID = 45870 }, --Magnetized Projectile Emitter
		},
	},
	{
		Name = "XT-002 Deconstructor",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45253 }, --Mantle of Wavering Calm
			{ itemID = 45258 }, --Sandals of Rash Temperament
			{ itemID = 45260 }, --Boots of Hasty Revival
			{ itemID = 45259 }, --Quartz-studded Harness
			{ itemID = 45249 }, --Brass-lined Boots
			{ itemID = 45251 }, --Shoulderplates of the Deconstructor
			{ itemID = 45252 }, --Horologist's Wristguards
			{ itemID = 45248 }, --Clockwork Legplates
			{ itemID = 45250 }, --Crazed Construct Ring
			{ itemID = 45247 }, --Signet of the Earthshaker
			{ itemID = 45254 }, --Sigil of the Vengeful Heart
			{ itemID = 45255 }, --Thunderfall Totem
		},
		{
			{ itemID = 45246 }, --Golem-Shard Sticker
			{ itemID = 45256 }, --Twisted Visage
			{ itemID = 45257 }, --Quartz Crystal Wand
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45446 }, --Grasps of Reason
			{ itemID = 45444 }, --Gloves of the Steady Hand
			{ itemID = 45445 }, --Breastplate of the Devoted
			{ itemID = 45443 }, --Charm of Meticulous Timing
			{ itemID = 45442 }, --Sorthalis, Hammer of the Watchers
		},
	},
	{
		Name = "The Iron Council",
		{
			{ itemID = 45322 }, --Cloak of the Iron Council
			{ itemID = 45423 }, --Runetouch Handwraps
			{ itemID = 45324 }, --Leggings of Swift Reflexes
			{ itemID = 45378 }, --Boots of the Petrified Forest
			{ itemID = 45329 }, --Circlet of True Sight
			{ itemID = 45333 }, --Belt of the Iron Servant
			{ itemID = 45330 }, --Greaves of Iron Intensity
			{ itemID = 45418 }, --Lady Maye's Sapphire Ring
			{ itemID = 45332 }, --Stormtip
			{ itemID = 45331 }, --Rune-Etched Nightblade
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45455 }, --Belt of the Crystal Tree
			{ itemID = 45447 }, --Watchful Eye
			{ itemID = 45456 }, --Loop of the Agile
			{ itemID = 45449 }, --The Masticator
			{ itemID = 45448 }, --Perilous Bite
			{ itemID = 45506 }, --Archivum Data Disc
		},
	},
	{
		Name = "The Iron Council",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45224 }, --Drape of the Lithe
			{ itemID = 45240 }, --Raiments of the Iron Council
			{ itemID = 45238 }, --Overload Legwraps
			{ itemID = 45237 }, --Phaelia's Vestments of the Sprouting Seed
			{ itemID = 45232 }, --Runed Ironhide Boots
			{ itemID = 45227 }, --Iron-studded Mantle
			{ itemID = 45239 }, --Runeshaper's Gloves
			{ itemID = 45226 }, --Ancient Iron Heaume
			{ itemID = 45225 }, --Steelbreaker's Embrace
			{ itemID = 45228 }, --Handguards of the Enclave
			{ itemID = 45193 }, --Insurmountable Fervor
			{ itemID = 45236 }, --Unblinking Eye
		},
		{
			{ itemID = 45235 }, --Radiant Seal
			{ itemID = 45233 }, --Rune Edge
			{ itemID = 45234 }, --Rapture
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45242 }, --Drape of Mortal Downfall
			{ itemID = 45245 }, --Shoulderpads of the Intruder
			{ itemID = 45244 }, --Greaves of Swift Vengeance
			{ itemID = 45241 }, --Belt of Colossal Rage
			{ itemID = 45243 }, --Sapphire Amulet of Renewal
			{ itemID = 45607 }, --Fang of Oblivion
			{ itemID = 45857 }, --Archivum Data Disc
		},
	},
	{
		Name = "Kologarn",
		{
			{ itemID = 45704 }, --Shawl of the Shattered Giant
			{ itemID = 45701 }, --Greaves of the Earthbinder
			{ itemID = 45697 }, --Shoulderguards of the Solemn Watch
			{ itemID = 45698 }, --Sabatons of the Iron Watcher
			{ itemID = 45696 }, --Mark of the Unyielding
			{ itemID = 45699 }, --Pendant of the Piercing Glare
			{ itemID = 45702 }, --Emerald Signet Ring
			{ itemID = 45703 }, --Spark of Hope
			{ itemID = 45700 }, --Stoneguard
			{ itemID = 45695 }, --Spire of Withering Dreams
		},
	},
	{
		Name = "Kologarn",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45272 }, --Robes of the Umbral Brute
			{ itemID = 45275 }, --Bracers of Unleashed Magic
			{ itemID = 45273 }, --Handwraps of Plentiful Recovery
			{ itemID = 45265 }, --Shoulderpads of the Monolith
			{ itemID = 45274 }, --Leggings of the Stoneweaver
			{ itemID = 45264 }, --Decimator's Armguards
			{ itemID = 45269 }, --Unfaltering Armguards
			{ itemID = 45268 }, --Gloves of the Pythonic Guardian
			{ itemID = 45267 }, --Saronite Plated Legguards
			{ itemID = 45262 }, --Necklace of Unerring Mettle
			{ itemID = 45263 }, --Wrathstone
			{ itemID = 45271 }, --Ironmender
		},
		{
			{ itemID = 45270 }, --Idol of the Crying Wind
			{ itemID = 45266 }, --Malice
			{ itemID = 45261 }, --Giant's Bane
		},
	},
	{
		Name = "Algalon the Observer",
		{
			{ itemID = 46042 }, --Drape of the Messenger
			{ itemID = 46045 }, --Pulsar Gloves
			{ itemID = 46050 }, --Starlight Treads
			{ itemID = 46043 }, --Gloves of the Endless Dark
			{ itemID = 46049 }, --Zodiac Leggings
			{ itemID = 46044 }, --Observer's Mantle
			{ itemID = 46037 }, --Shoulderplates of the Celestial Watch
			{ itemID = 46039 }, --Breastplate of the Timeless
			{ itemID = 46041 }, --Starfall Girdle
			{ itemID = 46047 }, --Pendant of the Somber Witness
			{ itemID = 46040 }, --Strength of the Heavens
			{ itemID = 46048 }, --Band of Lights
			{ itemID = 46046 }, --Nebula Band
			{ itemID = 46038 }, --Dark Matter
			{ itemID = 46051 }, --Meteorite Crystal
		},
		{
			{ itemID = 46052 }, --Reply-Code Alpha
			{ itemID = 46320 }, --Drape of the Skyherald
			{ itemID = 46321 }, --Sunglimmer Drape
			{ itemID = 46322 }, --Brann's Sealing Ring
			{ itemID = 46323 }, --Starshine Signet
		},
	},
	{
		Name = "Algalon the Observer",
		{
			{ itemID = 45665 }, --Pharos Gloves
			{ itemID = 45619 }, --Starwatcher's Binding
			{ itemID = 45611 }, --Solar Bindings
			{ itemID = 45616 }, --Star-beaded Clutch
			{ itemID = 45610 }, --Boundless Gaze
			{ itemID = 45615 }, --Planewalker Treads
			{ itemID = 45594 }, --Legplates of the Endless Void
			{ itemID = 45599 }, --Sabatons of Lifeless Night
			{ itemID = 45617 }, --Cosmos
			{ itemID = 45620 }, --Starshard Edge
			{ itemID = 45607 }, --Fang of Oblivion
			{ itemID = 45612 }, --Constellus
			{ itemID = 45613 }, --Dreambinder
			{ itemID = 45587 }, --Bulwark of Algalon
			{ itemID = 45570 }, --Skyforge Crossbow
		},
		{
			{ itemID = 45609 }, --Comet's Trail
			{ itemID = 46053 }, --Reply-Code Alpha
			{ itemID = 45588 }, --Drape of the Skyborn
			{ itemID = 45618 }, --Sunglimmer Cloak
			{ itemID = 45608 }, --Brann's Signet Ring
			{ itemID = 45614 }, --Starshine Circle
		},
	},
	{
		Name = "Auriaya",
		{
			{ itemID = 45832 }, --Mantle of the Preserver
			{ itemID = 45865 }, --Raiments of the Corrupted
			{ itemID = 45864 }, --Cover of the Keepers
			{ itemID = 45709 }, --Nimble Climber's Belt
			{ itemID = 45711 }, --Ironaya's Discarded Mantle
			{ itemID = 45712 }, --Chestplate of Titanic Fury
			{ itemID = 45708 }, --Archaedas' Lost Legplates
			{ itemID = 45866 }, --Elemental Focus Stone
			{ itemID = 45707 }, --Shieldwall of the Breaker
			{ itemID = 45713 }, --Nurturing Touch
		},
	},
	{
		Name = "Auriaya",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45319 }, --Cloak of the Makers
			{ itemID = 45435 }, --Cowl of the Absolute
			{ itemID = 45441 }, --Sandals of the Ancient Keeper
			{ itemID = 45439 }, --Unwavering Stare
			{ itemID = 45325 }, --Gloves of the Stonereaper
			{ itemID = 45440 }, --Amice of the Stoic Watch
			{ itemID = 45320 }, --Shoulderplates of the Eternal
			{ itemID = 45334 }, --Unbreakable Chestguard
			{ itemID = 45434 }, --Greaves of the Rockmender
			{ itemID = 45326 }, --Platinum Band of the Aesir
			{ itemID = 45438 }, --Ring of the Faithful Servant
			{ itemID = 45436 }, --Libram of the Resolute
		},
		{
			{ itemID = 45437 }, --Runescribed Blade
			{ itemID = 45315 }, --Stonerender
			{ itemID = 45327 }, --Siren's Cry
		},
	},
	{
		Name = "Hodir",
		{
			{ itemID = 45873 }, --Winter's Frigid Embrace
			{ itemID = 45464 }, --Cowl of Icy Breaths
			{ itemID = 45874 }, --Signet of Winter
			{ itemID = 45458 }, --Stormedge
			{ itemID = 45872 }, --Avalanche
			{ itemID = 45650 }, --Leggings of the Wayward Conqueror
			{ itemID = 45651 }, --Leggings of the Wayward Protector
			{ itemID = 45652 }, --Leggings of the Wayward Vanquisher
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45888 }, --Bitter Cold Armguards
			{ itemID = 45876 }, --Shiver
			{ itemID = 45886 }, --Icecore Staff
			{ itemID = 45887 }, --Ice Layered Barrier
			{ itemID = 45877 }, --The Boreal Guard
			{ itemID = 45786 }, --Hodir's Sigil
		},
	},
	{
		Name = "Hodir",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45453 }, --Winter's Icy Embrace
			{ itemID = 45454 }, --Frost-bound Chain Bracers
			{ itemID = 45452 }, --Frostplate Greaves
			{ itemID = 45451 }, --Frozen Loop
			{ itemID = 45450 }, --Northern Barrier
			{ itemID = 45632 }, --Breastplate of the Wayward Conqueror
			{ itemID = 45633 }, --Breastplate of the Wayward Protector
			{ itemID = 45634 }, --Breastplate of the Wayward Vanquisher
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45461 }, --Drape of Icy Intent
			{ itemID = 45462 }, --Gloves of the Frozen Glade
			{ itemID = 45460 }, --Bindings of Winter Gale
			{ itemID = 45459 }, --Frigid Strength of Hodir
			{ itemID = 45612 }, --Constellus
			{ itemID = 45457 }, --Staff of Endless Winter
			{ itemID = 45815 }, --Hodir's Sigil
		},
	},
	{
		Name = "Thorim",
		{
			{ itemID = 45893 }, --Guise of the Midgard Serpent
			{ itemID = 45927 }, --Handwraps of Resonance
			{ itemID = 45894 }, --Leggings of Unstable Discharge
			{ itemID = 45895 }, --Belt of the Blood Pit
			{ itemID = 45892 }, --Legacy of Thunder
			{ itemID = 45659 }, --Spaulders of the Wayward Conqueror
			{ itemID = 45660 }, --Spaulders of the Wayward Protector
			{ itemID = 45661 }, --Spaulders of the Wayward Vanquisher
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45928 }, --Gauntlets of the Thunder God
			{ itemID = 45933 }, --Pendant of the Shallow Grave
			{ itemID = 45931 }, --Mjolnir Runestone
			{ itemID = 45929 }, --Sif's Remembrance
			{ itemID = 45930 }, --Combatant's Bootblade
			{ itemID = 45784 }, --Thorim's Sigil
		},
	},
	{
		Name = "Thorim",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45468 }, --Leggings of Lost Love
			{ itemID = 45467 }, --Belt of the Betrayed
			{ itemID = 45469 }, --Sif's Promise
			{ itemID = 45466 }, --Scale of Fates
			{ itemID = 45463 }, --Vulmir, the Northern Tempest
			{ itemID = 45638 }, --Crown of the Wayward Conqueror
			{ itemID = 45639 }, --Crown of the Wayward Protector
			{ itemID = 45640 }, --Crown of the Wayward Vanquisher
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45473 }, --Embrace of the Gladiator
			{ itemID = 45474 }, --Pauldrons of the Combatant
			{ itemID = 45472 }, --Warhelm of the Champion
			{ itemID = 45471 }, --Fate's Clutch
			{ itemID = 45570 }, --Skyforge Crossbow
			{ itemID = 45470 }, --Wisdom's Hold
			{ itemID = 45817 }, --Thorim's Sigil
		},
	},
	{
		Name = "Freya",
		{
			{ itemID = 45940 }, --Tunic of the Limber Stalker
			{ itemID = 45941 }, --Chestguard of the Lasher
			{ itemID = 45935 }, --Ironbark Faceguard
			{ itemID = 45936 }, --Legplates of Flourishing Resolve
			{ itemID = 45934 }, --Unraveling Reach
			{ itemID = 45644 }, --Gloves of the Wayward Conqueror
			{ itemID = 45645 }, --Gloves of the Wayward Protector
			{ itemID = 45646 }, --Gloves of the Wayward Vanquisher
			{ itemID = 46110 }, --Alchemist's Cache
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45943 }, --Gloves of Whispering Winds
			{ itemID = 45945 }, --Seed of Budding Carnage
			{ itemID = 45946 }, --Fire Orchid Signet
			{ itemID = 45947 }, --Serilas, Blood Blade of Invar One-Arm
			{ itemID = 45294 }, --Petrified Ivy Sprig
			{ itemID = 45788 }, --Freya's Sigil
		},
	},
	{
		Name = "Freya",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45483 }, --Boots of the Servant
			{ itemID = 45482 }, --Leggings of the Lifetender
			{ itemID = 45481 }, --Gauntlets of Ruthless Reprisal
			{ itemID = 45480 }, --Nymph Heart Charm
			{ itemID = 45479 }, --The Lifebinder
			{ itemID = 45653 }, --Legplates of the Wayward Conqueror
			{ itemID = 45654 }, --Legplates of the Wayward Protector
			{ itemID = 45655 }, --Legplates of the Wayward Vanquisher
			{ itemID = 46110 }, --Alchemist's Cache
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45486 }, --Drape of the Sullen Goddess
			{ itemID = 45488 }, --Leggings of the Enslaved Idol
			{ itemID = 45487 }, --Handguards of Revitalization
			{ itemID = 45485 }, --Bronze Pendant of the Vanir
			{ itemID = 45484 }, --Bladetwister
			{ itemID = 45613 }, --Dreambinder
			{ itemID = 45814 }, --Freya's Sigil
		},
	},
	{
		Name = "Mimiron",
		{
			{ itemID = 45973 }, --Stylish Power Cape
			{ itemID = 45976 }, --Static Charge Handwraps
			{ itemID = 45974 }, --Shoulderguards of Assimilation
			{ itemID = 45975 }, --Cable of the Metrognome
			{ itemID = 45972 }, --Pulse Baton
			{ itemID = 45647 }, --Helm of the Wayward Conqueror
			{ itemID = 45648 }, --Helm of the Wayward Protector
			{ itemID = 45649 }, --Helm of the Wayward Vanquisher
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45993 }, --Mimiron's Flight Goggles
			{ itemID = 45989 }, --Tempered Mercury Greaves
			{ itemID = 45982 }, --Fused Alloy Legplates
			{ itemID = 45988 }, --Greaves of the Iron Army
			{ itemID = 45990 }, --Fusion Blade
			{ itemID = 45787 }, --Mimiron's Sigil
		},
	},
	{
		Name = "Mimiron",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45493 }, --Asimov's Drape
			{ itemID = 45492 }, --Malleable Steelweave Mantle
			{ itemID = 45491 }, --Waistguard of the Creator
			{ itemID = 45490 }, --Pandora's Plea
			{ itemID = 45489 }, --Insanity's Grip
			{ itemID = 45641 }, --Gauntlets of the Wayward Conqueror
			{ itemID = 45642 }, --Gauntlets of the Wayward Protector
			{ itemID = 45643 }, --Gauntlets of the Wayward Vanquisher
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45496 }, --Titanskin Cloak
			{ itemID = 45497 }, --Crown of Luminescence
			{ itemID = 45663 }, --Armbands of Bedlam
			{ itemID = 45495 }, --Conductive Seal
			{ itemID = 45494 }, --Delirium's Touch
			{ itemID = 45620 }, --Starshard Edge
			{ itemID = 45816 }, --Mimiron's Sigil
		},
	},
	{
		Name = "General Vezax",
		{
			{ itemID = 46014 }, --Saronite Animus Cloak
			{ itemID = 46013 }, --Underworld Mantle
			{ itemID = 46012 }, --Vestments of the Piercing Light
			{ itemID = 46009 }, --Bindings of the Depths
			{ itemID = 46346 }, --Boots of Unsettled Prey
			{ itemID = 45997 }, --Gauntlets of the Wretched
			{ itemID = 46008 }, --Choker of the Abyss
			{ itemID = 46015 }, --Pendant of Endless Despair
			{ itemID = 46010 }, --Darkstone Ring
			{ itemID = 46011 }, --Shadowbite
			{ itemID = 45996 }, --Hoperender
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 46032 }, --Drape of the Faceless General
			{ itemID = 46034 }, --Leggings of Profound Darkness
			{ itemID = 46036 }, --Void Sabre
			{ itemID = 46035 }, --Aesuga, Hand of the Ardent Champion
			{ itemID = 46033 }, --Tortured Earth
		},
	},
	{
		Name = "General Vezax",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45514 }, --Mantle of the Unknowing
			{ itemID = 45508 }, --Belt of the Darkspeaker
			{ itemID = 45512 }, --Grips of the Unbroken
			{ itemID = 45504 }, --Darkcore Leggings
			{ itemID = 45513 }, --Boots of the Forgotten Depths
			{ itemID = 45502 }, --Helm of the Faceless
			{ itemID = 45505 }, --Belt of Clinging Hope
			{ itemID = 45501 }, --Boots of the Underdweller
			{ itemID = 45503 }, --Metallic Loop of the Sufferer
			{ itemID = 45515 }, --Ring of the Vacant Eye
			{ itemID = 45507 }, --The General's Heart
			{ itemID = 45509 }, --Idol of the Corruptor
		},
		{
			{ itemID = 45145 }, --Libram of the Sacred Shield
			{ itemID = 45498 }, --Lotrafen, Spear of the Damned
			{ itemID = 45511 }, --Scepter of Lost Souls
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45520 }, --Handwraps of the Vigilant
			{ itemID = 45519 }, --Vestments of the Blind Denizen
			{ itemID = 45517 }, --Pendulum of Infinity
			{ itemID = 45518 }, --Flare of the Heavens
			{ itemID = 45516 }, --Voldrethar, Dark Blade of Oblivion
		},
	},
	{
		Name = "Yogg-Saron",
		{
			{ itemID = 46030 }, --Treads of the Dragon Council
			{ itemID = 46019 }, --Leggings of the Insatiable
			{ itemID = 46028 }, --Faceguard of the Eyeless Horror
			{ itemID = 46022 }, --Pendant of a Thousand Maws
			{ itemID = 46021 }, --Royal Seal of King Llane
			{ itemID = 46024 }, --Kingsbane
			{ itemID = 46016 }, --Abaddon
			{ itemID = 46031 }, --Touch of Madness
			{ itemID = 46025 }, --Devotion
			{ itemID = 46018 }, --Deliverance
			{ itemID = 45635 }, --Chestguard of the Wayward Conqueror
			{ itemID = 45636 }, --Chestguard of the Wayward Protector
			{ itemID = 45637 }, --Chestguard of the Wayward Vanquisher
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 46068 }, --Amice of Inconceivable Horror
			{ itemID = 46095 }, --Soul-Devouring Cinch
			{ itemID = 46096 }, --Signet of Soft Lament
			{ itemID = 46097 }, --Caress of Insanity
			{ itemID = 46067 }, --Hammer of Crushing Whispers
			{ icon = "INV_Box_01", name = color.WHITE.. "Bonus Loot", desc = "=q5=" .. "Alone in the Darkness" },
			{ itemID = 46312 }, --Vanquished Clutches of Yogg-Saron
		},
	},
	{
		Name = "Yogg-Saron",
		{
			{ itemID = 45038 }, --Fragment of Val'anyr
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
			{ itemID = 45529 }, --Shawl of Haunted Memories
			{ itemID = 45532 }, --Cowl of Dark Whispers
			{ itemID = 45523 }, --Garona's Guise
			{ itemID = 45524 }, --Chestguard of Insidious Intent
			{ itemID = 45531 }, --Chestguard of the Fallen God
			{ itemID = 45525 }, --Godbane Signet
			{ itemID = 45530 }, --Sanity's Bond
			{ itemID = 45522 }, --Blood of the Old God
			{ itemID = 45527 }, --Soulscribe
			{ itemID = 45521 }, --Earthshaper
		},
		{
			{ itemID = 45656 }, --Mantle of the Wayward Conqueror
			{ itemID = 45657 }, --Mantle of the Wayward Protector
			{ itemID = 45658 }, --Mantle of the Wayward Vanquisher
			{ icon = "INV_Box_01", name = color.WHITE.."Hard Mode" },
			{ itemID = 45537 }, --Treads of the False Oracle
			{ itemID = 45536 }, --Legguards of Cunning Deception
			{ itemID = 45534 }, --Seal of the Betrayed King
			{ itemID = 45535 }, --Show of Faith
			{ itemID = 45533 }, --Dark Edge of Depravity
			{ icon = "INV_Box_01", name = color.WHITE.. "Bonus Loot", desc = "=q5=" .. "Alone in the Darkness" },
			{ itemID = 45693 }, --Mimiron's Head
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 46341 }, --Drape of the Spellweaver
			{ itemID = 46347 }, --Cloak of the Dormant Blaze
			{ itemID = 46344 }, --Iceshear Mantle
			{ itemID = 46346 }, --Boots of Unsettled Prey
			{ itemID = 46345 }, --Bracers of Righteous Reformation
			{ itemID = 46340 }, --Adamant Handguards
			{ itemID = 46343 }, --Fervor of the Protectorate
			{ itemID = 46339 }, --Mimiron's Repeater
			{ itemID = 46351 }, --Bloodcrush Cudgel
			{ itemID = 46350 }, --Pillar of Fortitude
			{ itemID = 46342 }, --Golemheart Longbow
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 45541 }, --Shroud of Alteration
			{ itemID = 45549 }, --Grips of Chaos
			{ itemID = 45547 }, --Relic Hunter's Cord
			{ itemID = 45548 }, --Belt of the Sleeper
			{ itemID = 45543 }, --Shoulders of Misfortune
			{ itemID = 45544 }, --Leggings of the Tortured Earth
			{ itemID = 45542 }, --Greaves of the Stonewarder
			{ itemID = 45540 }, --Bladebearer's Signet
			{ itemID = 45539 }, --Pendant of Focused Energies
			{ itemID = 45538 }, --Titanstone Pendant
			{ itemID = 46138 }, --Idol of the Flourishing Life
			{ itemID = 45605 }, --Daschal's Bite
		},
	},
	{
		Name = "Ulduar Formula/Patterns/Plans",
		{
			{ itemID = 45089 }, --Plans: Battlelord's Plate Boots
			{ itemID = 45088 }, --Plans: Belt of the Titans
			{ itemID = 45092 }, --Plans: Indestructible Plate Girdle
			{ itemID = 45090 }, --Plans: Plate Girdle of Righteousness
			{ itemID = 45093 }, --Plans: Spiked Deathdealers
			{ itemID = 46027 }, --Formula: Enchant Weapon - Blade Ward
			{ itemID = 46348 }, --Formula: Enchant Weapon - Blood Draining
			{ itemID = 45100 }, --Pattern: Belt of Arctic Life
			{ itemID = 45094 }, --Pattern: Belt of Dragons
			{ itemID = 45096 }, --Pattern: color.BLUE Belt of Chaos
			{ itemID = 45095 }, --Pattern: Boots of Living Scale
			{ itemID = 45101 }, --Pattern: Boots of Wintry Endurance
			{ itemID = 45098 }, --Pattern: Death-warmed Belt
			{ itemID = 45099 }, --Pattern: Footpads of Silence
			{ itemID = 45097 }, --Pattern: Lightning Grounded Boots
		},
		{
			{ itemID = 45104 }, --Pattern: Cord of the color.WHITE Dawn
			{ itemID = 45102 }, --Pattern: Sash of Ancient Power
			{ itemID = 45105 }, --Pattern: Savior's Slippers
			{ itemID = 45103 }, --Pattern: Spellslinger's Slippers
			{ itemID = 45087 }, --Runed Orb
		},
	},
}
-----------------------------
--- Trial of the Crusader ---
-----------------------------

AtlasLoot_Data["TrialoftheCrusader"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Trial of the Crusader",
	Type = "WrathRaid",
	{
		Name = "The Beasts of Northrend",
		{
			{ itemID = 47617 }, --Icehowl Cinch
			{ itemID = 47613 }, --Shoulderpads of the Glacial Wilds
			{ itemID = 47608 }, --Acidmaw Boots
			{ itemID = 47616 }, --Shoulderguards of the Spirit Walker
			{ itemID = 47610 }, --Armbands of the Northern Stalker
			{ itemID = 47611 }, --Dreadscale Armguards
			{ itemID = 47609 }, --Gauntlets of Rising Anger
			{ itemID = 47615 }, --Belt of the Frozen Reach
			{ itemID = 47614 }, --Girdle of the Impaler
		},
		{
			{ itemID = 47607 }, --Collar of Ceaseless Torment
			{ itemID = 47578 }, --Carnivorous Band
			{ itemID = 47612 }, --Rod of Imprisoned Souls
		},
	},
	{
		Name = "The Beasts of Northrend",
		{
			{ itemID = 47855 }, --Icehowl Binding
			{ itemID = 47857 }, --Pauldrons of the Glacial Wilds
			{ itemID = 47853 }, --Acidmaw Treads
			{ itemID = 47860 }, --Pauldrons of the Spirit Walker
			{ itemID = 47850 }, --Bracers of the Northern Stalker
			{ itemID = 47852 }, --Dreadscale Bracers
			{ itemID = 47851 }, --Gauntlets of Mounting Anger
			{ itemID = 47859 }, --Belt of the Impaler
			{ itemID = 47858 }, --Girdle of the Frozen Reach
		},
		{
			{ itemID = 47849 }, --Collar of Unending Torment
			{ itemID = 47854 }, --Gormok's Band
			{ itemID = 47856 }, --Scepter of Imprisoned Souls
		},
	},
	{
		Name = "The Beasts of Northrend",
		{
			{ itemID = 46970 }, --Drape of the Untamed Predator
			{ itemID = 46976 }, --Shawl of the Refreshing Winds
			{ itemID = 46992 }, --Flowing Vestments of Ascent
			{ itemID = 46972 }, --Cord of the Tenebrous Mist
			{ itemID = 46974 }, --Leggings of the Broken Beast
			{ itemID = 46988 }, --Boots of the Unrelenting Storm
			{ itemID = 46960 }, --Breastplate of Cruel Intent
			{ itemID = 46990 }, --Belt of the Ice Burrower
			{ itemID = 46962 }, --Chestplate of the Towering Monstrosity
			{ itemID = 46961 }, --Boneshatter Armplates
			{ itemID = 46985 }, --Boots of the Courageous
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 46959 }, --Band of the Violent Temperment
			{ itemID = 46979 }, --Blade of Tarasque
			{ itemID = 46958 }, --Steel Bladebreaker
			{ itemID = 46963 }, --Crystal Plated Vanguard
		},
	},
	{
		Name = "The Beasts of Northrend",
		{
			{ itemID = 47257 }, --Cloak of the Untamed Predator
			{ itemID = 47256 }, --Drape of the Refreshing Winds
			{ itemID = 47264 }, --Flowing Robes of Ascent
			{ itemID = 47258 }, --Belt of the Tenebrous Mist
			{ itemID = 47259 }, --Legwraps of the Broken Beast
			{ itemID = 47262 }, --Boots of the Harsh Winter
			{ itemID = 47251 }, --Cuirass of Cruel Intent
			{ itemID = 47265 }, --Binding of the Ice Burrower
			{ itemID = 47254 }, --Hauberk of the Towering Monstrosity
			{ itemID = 47253 }, --Boneshatter Vambraces
			{ itemID = 47263 }, --Sabatons of the Courageous
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47252 }, --Ring of the Violent Temperament
			{ itemID = 47261 }, --Barb of Tarasque
			{ itemID = 47255 }, --Stygian Bladebreaker
			{ itemID = 47260 }, --Forlorn Barrier
		},
	},
	{
		Name = "Lord Jaraxxus",
		{
			{ itemID = 47663 }, --Felspark Bindings
			{ itemID = 47620 }, --Leggings of the Demonic Messenger
			{ itemID = 47669 }, --Belt of the Winter Solstice
			{ itemID = 47621 }, --Girdle of the Farseer
			{ itemID = 49235 }, --Boots of Tortured Space
			{ itemID = 47683 }, --Sentinel Scouting Greaves
			{ itemID = 47680 }, --Armguards of the Nether Lord
			{ itemID = 47711 }, --Girdle of the Nether Champion
		},
		{
			{ itemID = 47619 }, --Amulet of Binding Elements
			{ itemID = 47679 }, --Endurance of the Infernal
			{ itemID = 47618 }, --Firestorm Ring
			{ itemID = 47703 }, --Planestalker Signet
			{ itemID = 47676 }, --Dirk of the Night Watch
		},
	},
	{
		Name = "Lord Jaraxxus",
		{
			{ itemID = 47861 }, --Felspark Bracers
			{ itemID = 47865 }, --Legwraps of the Demonic Messenger
			{ itemID = 47863 }, --Belt of the Bloodhoof Emissary
			{ itemID = 47866 }, --Darkspear Ritual Binding
			{ itemID = 49236 }, --Sabatons of Tortured Space
			{ itemID = 47867 }, --Warsong Poacher's Greaves
			{ itemID = 47869 }, --Armplates of the Nether Lord
			{ itemID = 47870 }, --Belt of the Nether Champion
		},
		{
			{ itemID = 47872 }, --Fortitude of the Infernal
			{ itemID = 47864 }, --Pendant of Binding Elements
			{ itemID = 47862 }, --Firestorm Band
			{ itemID = 47868 }, --Planestalker Band
			{ itemID = 47871 }, --Orcish Deathblade
		},
	},
	{
		Name = "Lord Jaraxxus",
		{
			{ itemID = 47042 }, --Pride of the Eredar
			{ itemID = 47051 }, --Leggings of the Soothing Touch
			{ itemID = 47000 }, --Cuirass of Calamitous Fate
			{ itemID = 47055 }, --Bracers of the Autumn Willow
			{ itemID = 47056 }, --Bracers of Cloudy Omen
			{ itemID = 46999 }, --Bloodbath Belt
			{ itemID = 47057 }, --Legplates of Failing Light
			{ itemID = 47052 }, --Legguards of Feverish Dedication
			{ itemID = 46997 }, --Dawnbreaker Greaves
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47043 }, --Charge of the Demon Lord
			{ itemID = 47223 }, --Ring of the Darkmender
			{ itemID = 47041 }, --Solace of the Defeated
			{ itemID = 47053 }, --Symbol of Transgression
			{ itemID = 46996 }, --Lionhead Slasher
			{ itemID = 46994 }, --Talonstrike
		},
	},
	{
		Name = "Lord Jaraxxus",
		{
			{ itemID = 47275 }, --Pride of the Demon Lord
			{ itemID = 47274 }, --Pants of the Soothing Touch
			{ itemID = 47270 }, --Vest of Calamitous Fate
			{ itemID = 47277 }, --Bindings of the Autumn Willow
			{ itemID = 47280 }, --Wristwraps of Cloudy Omen
			{ itemID = 47268 }, --Bloodbath Girdle
			{ itemID = 47279 }, --Leggings of Failing Light
			{ itemID = 47273 }, --Legplates of Feverish Dedication
			{ itemID = 47269 }, --Dawnbreaker Sabatons
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47272 }, --Charge of the Eredar
			{ itemID = 47278 }, --Circle of the Darkmender
			{ itemID = 47271 }, --Solace of the Fallen
			{ itemID = 47276 }, --Talisman of Heedless Sins
			{ itemID = 47266 }, --Blood Fury
			{ itemID = 47267 }, --Death's Head Crossbow
		},
	},
	{
		Name = "Faction Champions",
		{
			{ itemID = 47721 }, --Sandals of the Silver Magus
			{ itemID = 47719 }, --Gloves of the Silver Assassin
			{ itemID = 47718 }, --Helm of the Silver Ranger
			{ itemID = 47717 }, --Faceplate of the Silver Champion
			{ itemID = 47720 }, --Pauldrons of the Silver Defender
			{ itemID = 47728 }, --Binding Light
			{ itemID = 47727 }, --Fervor of the Frostborn
			{ itemID = 47726 }, --Talisman of Volatile Power
			{ itemID = 47725 }, --Victor's Call
		},
		{
			{ itemID = 47724 }, --Blade of the Silver Disciple
		},
	},
	{
		Name = "Faction Champions",
		{
			{ itemID = 47873 }, --Sunreaver Magus' Sandals
			{ itemID = 47878 }, --Sunreaver Assassin's Gloves
			{ itemID = 47875 }, --Sunreaver Ranger's Helm
			{ itemID = 47876 }, --Sunreaver Champion's Faceplate
			{ itemID = 47877 }, --Sunreaver Defender's Pauldrons
			{ itemID = 47880 }, --Binding Stone
			{ itemID = 47882 }, --Eitrigg's Oath
			{ itemID = 47879 }, --Fetish of Volatile Power
			{ itemID = 47881 }, --Vengeance of the Forsaken
		},
		{
			{ itemID = 47874 }, --Sunreaver Disciple's Blade
		},
	},
	{
		Name = "Faction Champions",
		{
			{ itemID = 47089 }, --Cloak of Displacement
			{ itemID = 47081 }, --Cord of Biting Cold
			{ itemID = 47092 }, --Boots of the Mourning Widow
			{ itemID = 47094 }, --Vestments of the Shattered Fellowship
			{ itemID = 47071 }, --Treads of the Icewalker
			{ itemID = 47073 }, --Bracers of the Untold Massacre
			{ itemID = 47083 }, --Legguards of Concealed Hatred
			{ itemID = 47090 }, --Boots of Tremoring Earth
			{ itemID = 47082 }, --Chestplate of the Frostborn Hero
			{ itemID = 47093 }, --Vambraces of the Broken Bond
			{ itemID = 47072 }, --Girdle of Bloodied Scars
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47070 }, --Ring of Callous Aggression
			{ itemID = 47080 }, --Satrina's Impeding Scarab
			{ itemID = 47069 }, --Justicebringer
			{ itemID = 47079 }, --Bastion of Purity
		},
	},
	{
		Name = "Faction Champions",
		{
			{ itemID = 47291 }, --Shroud of Displacement
			{ itemID = 47286 }, --Belt of Biting Cold
			{ itemID = 47293 }, --Sandals of the Mourning Widow
			{ itemID = 47292 }, --Robes of the Shattered Fellowship
			{ itemID = 47284 }, --Icewalker Treads
			{ itemID = 47281 }, --Bracers of the Silent Massacre
			{ itemID = 47289 }, --Leggings of Concealed Hatred
			{ itemID = 47295 }, --Sabatons of Tremoring Earth
			{ itemID = 47288 }, --Chestplate of the Frostwolf Hero
			{ itemID = 47294 }, --Bracers of the Broken Bond
			{ itemID = 47283 }, --Belt of Bloodied Scars
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47282 }, --Band of Callous Aggression
			{ itemID = 47290 }, --Juggernaut's Vitality
			{ itemID = 47285 }, --Dual-blade Butcher
			{ itemID = 47287 }, --Bastion of Resolve
		},
	},
	{
		Name = "The Twin Val'kyr",
		{
			{ itemID = 47745 }, --Gloves of Looming Shadow
			{ itemID = 49231 }, --Boots of the Grieving Soul
			{ itemID = 47746 }, --Helm of the Snowy Grotto
			{ itemID = 47739 }, --Armor of Shifting Shadows
			{ itemID = 47744 }, --Gloves of the Azure Prophet
			{ itemID = 47738 }, --Sabatons of the Lingering Vortex
			{ itemID = 47747 }, --Darkbane Pendant
			{ itemID = 47700 }, --Loop of the Twin Val'kyr
			{ itemID = 47742 }, --Chalice of Benedictus
		},
		{
			{ itemID = 47736 }, --Icefall Blade
			{ itemID = 47737 }, --Reckoning
			{ itemID = 47743 }, --Enlightenment
			{ itemID = 47740 }, --The Diplomat
		},
	},
	{
		Name = "The Twin Val'kyr",
		{
			{ itemID = 47889 }, --Looming Shadow Wraps
			{ itemID = 49232 }, --Sandals of the Grieving Soul
			{ itemID = 47891 }, --Helm of the High Mesa
			{ itemID = 47887 }, --Vest of Shifting Shadows
			{ itemID = 47893 }, --Sen'jin Ritualist Gloves
			{ itemID = 47885 }, --Greaves of the Lingering Vortex
			{ itemID = 47890 }, --Darkbane Amulet
			{ itemID = 47888 }, --Band of the Twin Val'kyr
			{ itemID = 47913 }, --Lightbane Focus
		},
		{
			{ itemID = 47886 }, --Nemesis Blade
			{ itemID = 47884 }, --Edge of Agony
			{ itemID = 47892 }, --Illumination
			{ itemID = 47883 }, --Widebarrel Flintlock
		},
	},
	{
		Name = "The Twin Val'kyr",
		{
			{ itemID = 47126 }, --Skyweaver Robes
			{ itemID = 47141 }, --Bindings of Dark Essence
			{ itemID = 47107 }, --Belt of the Merciless Killer
			{ itemID = 47140 }, --Cord of Pale Thorns
			{ itemID = 47106 }, --Sabatons of Ruthless Judgment
			{ itemID = 47142 }, --Breastplate of the Frozen Lake
			{ itemID = 47108 }, --Bracers of the Shieldmaiden
			{ itemID = 47121 }, --Legguards of Ascension
			{ itemID = 47116 }, --The Arbiter's Muse
			{ itemID = 47105 }, --The Executioner's Malice
			{ itemID = 47139 }, --Wail of the Val'kyr
			{ itemID = 47115 }, --Death's Verdict
			{ itemID = 47138 }, --Chalice of Searing Light
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47104 }, --Twin Spike
			{ itemID = 47114 }, --Lupine Longstaff
		},
	},
	{
		Name = "The Twin Val'kyr",
		{
			{ itemID = 47301 }, --Skyweaver Vestments
			{ itemID = 47306 }, --Dark Essence Bindings
			{ itemID = 47308 }, --Belt of Pale Thorns
			{ itemID = 47299 }, --Belt of the Pitiless Killer
			{ itemID = 47296 }, --Greaves of Ruthless Judgment
			{ itemID = 47310 }, --Chestplate of the Frozen Lake
			{ itemID = 47298 }, --Armguards of the Shieldmaiden
			{ itemID = 47304 }, --Legplates of Ascension
			{ itemID = 47307 }, --Cry of the Val'kyr
			{ itemID = 47305 }, --Legionnaire's Gorget
			{ itemID = 47297 }, --The Executioner's Vice
			{ itemID = 47303 }, --Death's Choice
			{ itemID = 47309 }, --Mystifying Charm
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47300 }, --Gouge of the Frigid Heart
			{ itemID = 47302 }, --Twin's Pact
		},
	},
	{
		Name = "Anub'arak",
		{
			{ itemID = 47838 }, --Vestments of the Sleepless
			{ itemID = 47837 }, --Cinch of the Undying
			{ itemID = 47832 }, --Spaulders of the Snow Bandit
			{ itemID = 47813 }, --Helmet of the Crypt Lord
			{ itemID = 47829 }, --Pauldrons of the Timeless Hunter
			{ itemID = 47811 }, --Chestguard of the Warden
			{ itemID = 47836 }, --Legplates of the Immortal Spider
			{ itemID = 47830 }, --Legplates of the Silver Hand
			{ itemID = 47810 }, --Crusader's Glory
			{ itemID = 47814 }, --Westfall Saber
			{ itemID = 47808 }, --The Lion's Maw
			{ itemID = 47809 }, --Argent Resolve
			{ itemID = 47816 }, --The Grinder
		},
		{
			{ itemID = 47834 }, --Fordragon Blades
			{ itemID = 47815 }, --Cold Convergence
			{ itemID = 47835 }, --Bulwark of the Royal Guard
			{ itemID = 47812 }, --Vigilant Ward
			{ itemID = 47741 }, --Baelgun's Heavy Crossbow
		},
	},
	{
		Name = "Anub'arak",
		{
			{ itemID = 47906 }, --Robes of the Sleepless
			{ itemID = 47909 }, --Belt of the Eternal
			{ itemID = 47904 }, --Shoulderpads of the Snow Bandit
			{ itemID = 47897 }, --Helm of the Crypt Lord
			{ itemID = 47901 }, --Pauldrons of the Shadow Hunter
			{ itemID = 47896 }, --Stoneskin Chestplate
			{ itemID = 47902 }, --Legplates of Redeemed Blood
			{ itemID = 47908 }, --Sunwalker Legguards
			{ itemID = 47899 }, --Ardent Guard
			{ itemID = 47903 }, --Forsaken Bonecarver
			{ itemID = 47898 }, --Frostblade Hatchet
			{ itemID = 47894 }, --Mace of the Earthborn Chieftain
			{ itemID = 47905 }, --Blackhorn Bludgeon
		},
		{
			{ itemID = 47911 }, --Anguish
			{ itemID = 47900 }, --Perdition
			{ itemID = 47910 }, --Aegis of the Coliseum
			{ itemID = 47895 }, --Pride of the Kor'kron
			{ itemID = 47907 }, --Darkmaw Crossbow
		},
	},
	{
		Name = "Anub'arak",
		{
			{ itemID = 47225 }, --Maiden's Favor
			{ itemID = 47183 }, --Strength of the Nerub
			{ itemID = 47203 }, --Armbands of the Ashen Saint
			{ itemID = 47235 }, --Gloves of the Lifeless Touch
			{ itemID = 47187 }, --Leggings of the Deepening Void
			{ itemID = 47194 }, --Footpads of the Icy Floe
			{ itemID = 47151 }, --Bracers of Dark Determination
			{ itemID = 47186 }, --Legwraps of the Awakening
			{ itemID = 47204 }, --Chestguard of Flowing Elements
			{ itemID = 47152 }, --Belt of Deathly Dominion
			{ itemID = 47184 }, --Legguards of the Lurking Threat
			{ itemID = 47234 }, --Gloves of Bitter Reprisal
			{ itemID = 47195 }, --Belt of the Forgotten Martyr
			{ itemID = 47150 }, --Greaves of the 7th Legion
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47054 }, --Band of Deplorable Violence
			{ itemID = 47149 }, --Signet of the Traitor King
			{ itemID = 47182 }, --Reign of the Unliving
			{ itemID = 47148 }, --Stormpike Cleaver
			{ itemID = 47193 }, --Misery's End
			{ itemID = 47233 }, --Archon Glaive
		},
	},
	{
		Name = "Anub'arak",
		{
			{ itemID = 47328 }, --Maiden's Adoration
			{ itemID = 47320 }, --Might of the Nerub
			{ itemID = 47324 }, --Bindings of the Ashen Saint
			{ itemID = 47326 }, --Handwraps of the Lifeless Touch
			{ itemID = 47317 }, --Breeches of the Deepening Void
			{ itemID = 47321 }, --Boots of the Icy Floe
			{ itemID = 47313 }, --Armbands of Dark Determination
			{ itemID = 47318 }, --Leggings of the Awakening
			{ itemID = 47325 }, --Cuirass of Flowing Elements
			{ itemID = 47311 }, --Waistguard of Deathly Dominion
			{ itemID = 47319 }, --Leggings of the Lurking Threat
			{ itemID = 47330 }, --Gauntlets of Bitter Reprisal
			{ itemID = 47323 }, --Girdle of the Forgotten Martyr
			{ itemID = 47312 }, --Greaves of the Saronite Citadel
		},
		{
			{ itemID = 47242 }, --Trophy of the Crusade
			{ itemID = 47315 }, --Band of the Traitor King
			{ itemID = 47327 }, --Lurid Manifestation
			{ itemID = 47316 }, --Reign of the Dead
			{ itemID = 47314 }, --Hellscream Slicer
			{ itemID = 47322 }, --Suffering's End
			{ itemID = 47329 }, --Hellion Glaive
		},
	},
	{
		Name = "Trial of the Crusader Patterns/Plans",
		{
			{ itemID = 47622 }, --Plans: Breastplate of the color.WHITE Knight
			{ itemID = 47623 }, --Plans: Saronite Swordbreakers
			{ itemID = 47627 }, --Plans: Sunforged Bracers
			{ itemID = 47626 }, --Plans: Sunforged Breastplate
			{ itemID = 47624 }, --Plans: Titanium Razorplate
			{ itemID = 47625 }, --Plans: Titanium Spikeguards
			{ itemID = 47629 }, --Pattern: Black Chitin Bracers
			{ itemID = 47635 }, --Pattern: Bracers of Swift Death
			{ itemID = 47631 }, --Pattern: Crusader's Dragonscale Bracers
			{ itemID = 47630 }, --Pattern: Crusader's Dragonscale Breastplate
			{ itemID = 47628 }, --Pattern: Ensorcelled Nerubian Breastplate
			{ itemID = 47634 }, --Pattern: Knightbane Carapace
			{ itemID = 47632 }, --Pattern: Lunar Eclipse Chestguard
			{ itemID = 47633 }, --Pattern: Moonshadow Armguards
		},
		{
			{ itemID = 47654 }, --Pattern: Bejeweled Wizard's Bracers
			{ itemID = 47655 }, --Pattern: Merlin's Robe
			{ itemID = 47656 }, --Pattern: Royal Moonshroud Bracers
			{ itemID = 47657 }, --Pattern: Royal Moonshroud Robe
			{ itemID = 47556 }, --Crusader Orb
		},
	},
	{
		Name = "Trial of the Crusader Patterns/Plans",
		{
			{ itemID = 47640 }, --Plans: Breastplate of the color.WHITE Knight
			{ itemID = 47641 }, --Plans: Saronite Swordbreakers
			{ itemID = 47642 }, --Plans: Sunforged Bracers
			{ itemID = 47643 }, --Plans: Sunforged Breastplate
			{ itemID = 47644 }, --Plans: Titanium Razorplate
			{ itemID = 47645 }, --Plans: Titanium Spikeguards
			{ itemID = 47646 }, --Pattern: Black Chitin Bracers
			{ itemID = 47647 }, --Pattern: Bracers of Swift Death
			{ itemID = 47648 }, --Pattern: Crusader's Dragonscale Bracers
			{ itemID = 47649 }, --Pattern: Crusader's Dragonscale Breastplate
			{ itemID = 47650 }, --Pattern: Ensorcelled Nerubian Breastplate
			{ itemID = 47651 }, --Pattern: Knightbane Carapace
			{ itemID = 47652 }, --Pattern: Lunar Eclipse Chestguard
			{ itemID = 47653 }, --Pattern: Moonshadow Armguards
		},
		{
			{ itemID = 47639 }, --Pattern: Bejeweled Wizard's Bracers
			{ itemID = 47638 }, --Pattern: Merlin's Robe
			{ itemID = 47637 }, --Pattern: Royal Moonshroud Bracers
			{ itemID = 47636 }, --Pattern: Royal Moonshroud Robe
			{ itemID = 47556 }, --Crusader Orb
		},
	},
}

-------------------------
--- Onyxia (Level 80) ---
-------------------------

AtlasLoot_Data["Onyxia80"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Onyxia's Lair",
	Type = "WrathRaid",
	{
		Name = "Onyxia",
		{
			{ itemID = 49307 }, --Fluttering Sapphiron Drape
			{ itemID = 49316 }, --Circlet of Transcendence
			{ itemID = 49317 }, --Coronet of Transcendence
			{ itemID = 49315 }, --Nemesis Skullcover
			{ itemID = 49318 }, --Netherwind Hood
			{ itemID = 49322 }, --Bloodfang Mask
			{ itemID = 49327 }, --Stormrage Antlers
			{ itemID = 49328 }, --Stormrage Helm
			{ itemID = 49326 }, --Stormrage Hood
			{ itemID = 49331 }, --Coif of Ten Storms
			{ itemID = 49330 }, --Cowl of Ten Storms
			{ itemID = 49329 }, --Gaze of Ten Storms
			{ itemID = 49319 }, --Dragonstalker's Helmet
			{ itemID = 49320 }, --Faceguard of Wrath
			{ itemID = 49321 }, --Greathelm of Wrath
		},
		{
			{ itemID = 49333 }, --Frostforged Helmet
			{ itemID = 49332 }, --Frostforged Ringhelm
			{ itemID = 49323 }, --Judgement Cover
			{ itemID = 49325 }, --Judgement Helm
			{ itemID = 49324 }, --Judgement Helmet
			{ itemID = 49306 }, --Eskhandar's Choker
			{ itemID = 49309 }, --Runed Ring of Binding
			{ itemID = 49463 }, --Purified Shard of the Flame
			{ itemID = 49310 }, --Purified Shard of the Scale
			{ itemID = 49308 }, --Antique Cornerstone Grimoire
		},
	},
	{
		Name = "Onyxia",
		{
			{ itemID = 49304 }, --Sharpened Fang of the Mystics
			{ itemID = 49437 }, --Rusted Gutgore Ripper
			{ itemID = 49298 }, --Glinting Azuresong Mageblade
			{ itemID = 49303 }, --Gleaming Quel'Serrar
			{ itemID = 49296 }, --Singed Vis'kag the Bloodletter
			{ itemID = 49299 }, --Keen Obsidian Edged Blade
			{ itemID = 49297 }, --Empowered Deathbringer
			{ itemID = 49302 }, --Reclaimed Shadowstrike
			{ itemID = 49301 }, --Reclaimed Thunderstrike
			{ itemID = 49305 }, --Snub-Nose Blastershot Launcher
		},
		{
			{ itemID = 49644 }, --Head of Onyxia
			{ itemID = 49485 }, --Sparkling Onyxia Tooth Pendant
			{ itemID = 49486 }, --Polished Dragonslayer's Signet
			{ itemID = 49487 }, --Purified Onyxia Blood Talisman
			{ itemID = 49295 }, --Enlarged Onyxia Hide Backpack
			{ itemID = 49294 }, --Ashen Sack of Gems
			{ itemID = 49636 }, --Reins of the Onyxian Drake
		},
	},
	{
		Name = "Onyxia",
		{
			{ itemID = 49491 }, --Flowing Sapphiron Drape
			{ itemID = 49482 }, --Aurora of Transcendence
			{ itemID = 49483 }, --Halo of Transcendence
			{ itemID = 49484 }, --Nemesis Skullcap
			{ itemID = 49481 }, --Netherwind Crown
			{ itemID = 49477 }, --Bloodfang Hood
			{ itemID = 49472 }, --Stormrage Crown
			{ itemID = 49473 }, --Stormrage Cover
			{ itemID = 49471 }, --Stormrage Coverlet
			{ itemID = 49469 }, --Crown of Ten Storms
			{ itemID = 49468 }, --Helm of Ten Storms
			{ itemID = 49470 }, --Helmet of Ten Storms
			{ itemID = 49480 }, --Dragonstalker's Helm
			{ itemID = 49479 }, --Helm of Wrath
			{ itemID = 49478 }, --Helmet of Wrath
		},
		{
			{ itemID = 49467 }, --Frostforged Greathelm
			{ itemID = 49466 }, --Frostforged Helm
			{ itemID = 49476 }, --Judgement Crown
			{ itemID = 49475 }, --Judgement Heaume
			{ itemID = 49474 }, --Judgement Hood
			{ itemID = 49492 }, --Eskhandar's Links
			{ itemID = 49489 }, --Signified Ring of Binding
			{ itemID = 49464 }, --Shiny Shard of the Flame
			{ itemID = 49488 }, --Shiny Shard of the Scale
			{ itemID = 49490 }, --Antediluvian Cornerstone Grimoire
		},
	},
	{
		Name = "Onyxia",
		{
			{ itemID = 49494 }, --Honed Fang of the Mystics
			{ itemID = 49465 }, --Tarnished Gutgore Ripper
			{ itemID = 49499 }, --Polished Azuresong Mageblade
			{ itemID = 49495 }, --Burnished Quel'Serrar
			{ itemID = 49501 }, --Tempered Vis'kag the Bloodletter
			{ itemID = 49498 }, --Sharpened Obsidian Edged Blade
			{ itemID = 49500 }, --Raging Deathbringer
			{ itemID = 49496 }, --Reinforced Shadowstrike
			{ itemID = 49497 }, --Reinforced Thunderstrike
			{ itemID = 49493 }, --Rifled Blastershot Launcher
		},
		{
			{ itemID = 49644 }, --Head of Onyxia
			{ itemID = 49485, }, -- --Sparkling Onyxia Tooth Pendant
			{ itemID = 49486, }, --Polished Dragonslayer's Signet
			{ itemID = 49487, }, --Purified Onyxia Blood Talisman
			{ itemID = 49295 }, --Enlarged Onyxia Hide Backpack
			{ itemID = 49294 }, --Ashen Sack of Gems
			{ itemID = 49636 }, --Reins of the Onyxian Drake
		},
	},
}

------------------------
--- Icecrown Citadel ---
------------------------

-------------------
--- Lower Spire ---
-------------------

AtlasLoot_Data["IcecrownCitadel"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Icecrown Citadel",
	Type = "WrathRaid",
	{
		Name = "Lord Marrowgar",
		{
			{ itemID = 50764 }, --Shawl of Nerubian Silk
			{ itemID = 50773 }, --Cord of the Patronizing Practitioner
			{ itemID = 50774 }, --Coldwraith Bracers
			{ itemID = 50762 }, --Linked Scourge Vertebrae
			{ itemID = 50775 }, --Corrupted Silverplate Leggings
			{ itemID = 50772 }, --Ancient Skeletal Boots
			{ itemID = 50763 }, --Marrowgar's Scratching Choker
			{ itemID = 50339 }, --Sliver of Pure Ice
		},
		{
			{ itemID = 50771 }, --Frost Needle
			{ itemID = 50761 }, --Citadel Enforcer's Claymore
			{ itemID = 50759 }, --Bone Warden's Splitter
			{ itemID = 50760 }, --Bonebreaker Scepter
		},
	},
	{
		Name = "Lord Marrowgar",
		{
			{ itemID = 49978 }, --Crushing Coldwraith Belt
			{ itemID = 49979 }, --Handguards of Winter's Respite
			{ itemID = 49950 }, --Frostbitten Fur Boots
			{ itemID = 49952 }, --Snowserpent Mail Helm
			{ itemID = 49980 }, --Rusted Bonespike Pauldrons
			{ itemID = 49951 }, --Gendarme's Cuirass
			{ itemID = 49960 }, --Bracers of Dark Reckoning
			{ itemID = 49964 }, --Legguards of Lost Hope
			{ itemID = 49975 }, --Bone Sentinel's Amulet
			{ itemID = 49949 }, --Band of the Bone Colossus
			{ itemID = 49977 }, --Loop of the Endless Labyrinth
			{ itemID = 49967 }, --Marrowgar's Frigid Eye
		},
		{
			{ itemID = 49968 }, --Frozen Bonespike
			{ itemID = 50415 }, --Bryntroll, the Bone Arbiter
			{ itemID = 49976 }, --Bulwark of Smouldering Steel
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
	},
	{
		Name = "Lady Deathwhisper",
		{
			{ itemID = 50785 }, --Bracers of Dark Blessings
			{ itemID = 50782 }, --Sister's Handshrouds
			{ itemID = 50780 }, --Chestguard of the Frigid Noose
			{ itemID = 50778 }, --Soulthief's Braided Belt
			{ itemID = 50783 }, --Boots of the Frozen Seed
			{ itemID = 50777 }, --Handgrips of Frost and Sleet
			{ itemID = 50784 }, --Deathspeaker Disciple's Belt
			{ itemID = 50779 }, --Deathspeaker Zealot's Helm
			{ itemID = 50786 }, --Ghoul Commander's Cuirass
		},
		{
			{ itemID = 50342 }, --Whispering Fanged Skull
			{ itemID = 50781 }, --Scourgelord's Baton
			{ itemID = 50776 }, --Njordnar Bone Bow
		},
	},
	{
		Name = "Lady Deathwhisper",
		{
			{ itemID = 49991 }, --Shoulders of Mercy Killing
			{ itemID = 49994 }, --The Lady's Brittle Bracers
			{ itemID = 49987 }, --Cultist's Bloodsoaked Spaulders
			{ itemID = 49996 }, --Deathwhisper Chestpiece
			{ itemID = 49988 }, --Leggings of Northern Lights
			{ itemID = 49993 }, --Necrophotic Greaves
			{ itemID = 49986 }, --Broken Ram Skull Helm
			{ itemID = 49995 }, --Fallen Lord's Handguards
			{ itemID = 49983 }, --Blood-Soaked Saronite Stompers
			{ itemID = 49989 }, --Ahn'kahar Onyx Neckguard
			{ itemID = 49985 }, --Juggernaut Band
			{ itemID = 49990 }, --Ring of Maddening Whispers
		},
		{
			{ itemID = 49982 }, --Heartpierce
			{ itemID = 49992 }, --Nibelung
			{ itemID = 50034 }, --Zod's Repeating Longbow
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
	},
	{
		Name = "Icecrown Gunship Battle",
		{
			{ itemID = 50791 }, --Saronite Gargoyle Cloak
			{ itemID = 50795 }, --Cord of Dark Suffering
			{ itemID = 50797 }, --Ice-Reinforced Vrykul Helm
			{ itemID = 50792 }, --Pauldrons of Lost Hope
			{ itemID = 50789 }, --Icecrown Rampart Bracers
			{ itemID = 50796 }, --Bracers of Pale Illumination
			{ itemID = 50788 }, --Bone Drake's Enameled Boots
			{ itemID = 50790 }, --Abomination's Bloody Ring
			{ itemID = 50340 }, --Muradin's Spyglass
		},
		{
			{ itemID = 50793 }, --Midnight Sun
			{ itemID = 50787 }, --Frost Giant's Cleaver
			{ itemID = 50794 }, --Neverending Winter
		},
	},
	{
		Name = "Icecrown Gunship Battle",
		{
			{ itemID = 49998 }, --Shadowvault Slayer's Cloak
			{ itemID = 50006 }, --Corp'rethar Ceremonial Crown
			{ itemID = 50011 }, --Gunship Captain's Mittens
			{ itemID = 50001 }, --Ikfirus's Sack of Wonder
			{ itemID = 50009 }, --Boots of Unnatural Growth
			{ itemID = 50000 }, --Scourge Hunter's Vambraces
			{ itemID = 50003 }, --Boneguard Commander's Pauldrons
			{ itemID = 50002 }, --Polar Bear Claw Bracers
			{ itemID = 50010 }, --Waistband of Righteous Fury
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
		{
			{ itemID = 50005 }, --Amulet of the Silent Eulogy
			{ itemID = 50008 }, --Ring of Rapid Ascent
			{ itemID = 49999 }, --Skeleton Lord's Circle
			{ itemID = 50359 }, --Althor's Abacus
			{ itemID = 50352 }, --Corpse Tongue Coin
			{ itemID = 50411 }, --Scourgeborne Waraxe
		},
	},
	{
		Name = "Deathbringer Saurfang",
		{
			{ itemID = 50807 }, --Thaumaturge's Crackling Cowl
			{ itemID = 50804 }, --Icecrown Spire Sandals
			{ itemID = 50799 }, --Scourge Stranglers
			{ itemID = 50806 }, --Leggings of Unrelenting Blood
			{ itemID = 50800 }, --Hauberk of a Thousand Cuts
			{ itemID = 50801 }, --Blade-Scored Carapace
			{ itemID = 50802 }, --Gargoyle Spit Bracers
			{ itemID = 50808 }, --Deathforged Legplates
		},
		{
			{ itemID = 50809 }, --Soulcleave Pendant
			{ itemID = 50803 }, --Saurfang's Cold-Forged Band
			{ itemID = 50798 }, --Ramaladni's Blade of Culling
			{ itemID = 50805 }, --Mag'hari Chieftain's Staff
		},
	},
	{
		Name = "Deathbringer Saurfang",
		{
			{ itemID = 50014 }, --Greatcloak of the Turned Champion
			{ itemID = 50333 }, --Toskk's Maximized Wristguards
			{ itemID = 50015 }, --Belt of the Blood Nova
			{ itemID = 50362 }, --Deathbringer's Will
			{ itemID = 50412 }, --Bloodvenom Blade
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
		{
			{ itemID = 52027 }, --Conqueror's Mark of Sanctification
			{ itemID = 52026 }, --Protector's Mark of Sanctification
			{ itemID = 52025 }, --Vanquisher's Mark of Sanctification
		},
	},
	{
		Name = "Festergut",
		{
			{ itemID = 50859 }, --Cloak of Many Skins
			{ itemID = 50988 }, --Bloodstained Surgeon's Shoulderguards
			{ itemID = 50990 }, --Kilt of Untreated Wounds
			{ itemID = 50985 }, --Wrists of Septic Shock
			{ itemID = 50858 }, --Plague-Soaked Leather Leggings
			{ itemID = 50812 }, --Taldron's Long Neglected Boots
			{ itemID = 50967 }, --Festergut's Gaseous Gloves
			{ itemID = 50811 }, --Festering Fingerguards
		},
		{
			{ itemID = 50852 }, --Precious's Putrid Collar
			{ itemID = 50986 }, --Signet of Putrefaction
			{ itemID = 50810 }, --Gutbuster
			{ itemID = 50966 }, --Abracadaver
		},
	},
	{
		Name = "Festergut",
		{
			{ itemID = 50063 }, --Lingering Illness
			{ itemID = 50056 }, --Plaguebringer's Stained Pants
			{ itemID = 50062 }, --Plague Scientist's Boots
			{ itemID = 50042 }, --Gangrenous Leggings
			{ itemID = 50041 }, --Leather of Stitched Scourge Parts
			{ itemID = 50059 }, --Horrific Flesh Epaulets
			{ itemID = 50038 }, --Carapace of Forgotten Kings
			{ itemID = 50064 }, --Unclean Surgical Gloves
			{ itemID = 50413 }, --Nerub'ar Stalker's Cord
			{ itemID = 50060 }, --Faceplate of the Forgotten
			{ itemID = 50037 }, --Fleshrending Gauntlets
			{ itemID = 50036 }, --Belt of Broken Bones
		},
		{
			{ itemID = 50061 }, --Holiday's Grace
			{ itemID = 50414 }, --Might of Blight
			{ itemID = 50035 }, --Black Bruise
			{ itemID = 50040 }, --Distant Land
			{ itemID = 50226 }, --Festergut's Acidic Blood
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
	},
	{
		Name = "Rotface",
		{
			{ itemID = 51007 }, --Ether-Soaked Bracers
			{ itemID = 51005 }, --Gloves of Broken Fingers
			{ itemID = 51009 }, --Chestguard of the Failed Experiment
			{ itemID = 51002 }, --Taldron's Short-Sighted Helm
			{ itemID = 51006 }, --Shuffling Shoes
			{ itemID = 51000 }, --Flesh-Shaper's Gurney Strap
			{ itemID = 51008 }, --Choker of Filthy Diamonds
			{ itemID = 51001 }, --Rotface's Rupturing Ring
		},
		{
			{ itemID = 51003 }, --Abomination Knuckles
			{ itemID = 51004 }, --Lockjaw
			{ itemID = 50998 }, --Shaft of Glacial Ice
			{ itemID = 50999 }, --Gluth's Fetching Knife
		},
	},
	{
		Name = "Rotface",
		{
			{ itemID = 50019 }, --Winding Sheet
			{ itemID = 50032 }, --Death Surgeon's Sleeves
			{ itemID = 50026 }, --Helm of the Elder Moon
			{ itemID = 50021 }, --Aldriana's Gloves of Secrecy
			{ itemID = 50022 }, --Dual-Bladed Pauldrons
			{ itemID = 50030 }, --Bloodsunder's Bracers
			{ itemID = 50020 }, --Raging Behemoth's Shoulderplates
			{ itemID = 50024 }, --Blightborne Warplate
			{ itemID = 50027 }, --Rot-Resistant Breastplate
			{ itemID = 50023 }, --Bile-Encrusted Medallion
			{ itemID = 50025 }, --Seal of Many Mouths
			{ itemID = 50353 }, --Dislodged Foreign Object
		},
		{
			{ itemID = 50028 }, --Trauma
			{ itemID = 50016 }, --Rib Spreader
			{ itemID = 50033 }, --Corpse-Impaling Spike
			{ itemID = 50231 }, --Rotface's Acidic Blood
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
	},
	{
		Name = "Professor Putricide",
		{
			{ itemID = 51020 }, --Shoulders of Ruinous Senility
			{ itemID = 51017 }, --Cauterized Cord
			{ itemID = 51013 }, --Discarded Bag of Entrails
			{ itemID = 51015 }, --Shoulderpads of the Morbid Ritual
			{ itemID = 51019 }, --Rippling Flesh Kilt
			{ itemID = 51014 }, --Scalpel-Sharpening Shoulderguards
			{ itemID = 51018 }, --Chestplate of Septic Stitches
		},
		{
			{ itemID = 51012 }, --Infected Choker
			{ itemID = 51016 }, --Pendant of Split Veins
			{ itemID = 50341 }, --Unidentifiable Organ
			{ itemID = 51011 }, --Flesh-Carving Scalpel
			{ itemID = 51010 }, --The Facelifter
		},
	},
	{
		Name = "Professor Putricide",
		{
			{ itemID = 50067 }, --Astrylian's Sutured Cinch
			{ itemID = 50069 }, --Professor's Bloodied Smock
			{ itemID = 50351 }, --Tiny Abomination in a Jar
			{ itemID = 50179 }, --Last Word
			{ itemID = 50068 }, --Rigormortis
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
		{
			{ itemID = 52027 }, --Conqueror's Mark of Sanctification
			{ itemID = 52026 }, --Protector's Mark of Sanctification
			{ itemID = 52025 }, --Vanquisher's Mark of Sanctification
		},
	},
	{
		Name = "Blood Prince Council",
		{
			{ itemID = 51382 }, --Heartsick Mender's Cape
			{ itemID = 51379 }, --Bloodsoul Raiment
			{ itemID = 51380 }, --Pale Corpse Boots
			{ itemID = 51023 }, --Taldaram's Soft Slippers
			{ itemID = 51325 }, --Blood-Drinker's Girdle
			{ itemID = 51383 }, --Spaulders of the Blood Princes
			{ itemID = 51025 }, --Battle-Maiden's Legguards
			{ itemID = 51381 }, --Cerise Coiled Ring
			{ itemID = 51024 }, --Thrice Fanged Signet
		},
		{
			{ itemID = 51021 }, --Soulbreaker
			{ itemID = 51022 }, --Hersir's Greatspear
			{ itemID = 51326 }, --Wand of Ruby Claret
		},
	},
	{
		Name = "Blood Prince Council",
		{
			{ itemID = 50074 }, --Royal Crimson Cloak
			{ itemID = 50172 }, --Sanguine Silk Robes
			{ itemID = 50176 }, --San'layn Ritualist Gloves
			{ itemID = 50073 }, --Geistlord's Punishment Sack
			{ itemID = 50171 }, --Shoulders of Frost-Tipped Thorns
			{ itemID = 50177 }, --Mail of Crimson Coins
			{ itemID = 50071 }, --Treads of the Wasteland
			{ itemID = 50072 }, --Landsoul's Horned Greathelm
			{ itemID = 50175 }, --Crypt Keeper's Bracers
			{ itemID = 50075 }, --Taldaram's Plated Fists
		},
		{
			{ itemID = 50174 }, --Incarnadine Band of Mending
			{ itemID = 50170 }, --Valanar's Other Signet Ring
			{ itemID = 50173 }, --Shadow Silk Spindle
			{ itemID = 50184 }, --Keleseth's Seducer
			{ itemID = 49919 }, --Cryptmaker
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
	},
	{
		Name = "Blood-Queen Lana'thel",
		{
			{ itemID = 51554 }, --Cowl of Malefic Repose
			{ itemID = 51552 }, --Shoulderpads of the Searing Kiss
			{ itemID = 51550 }, --Ivory-Inlaid Leggings
			{ itemID = 51551 }, --Chestguard of Siphoned Elements
			{ itemID = 51386 }, --Throatrender Handguards
			{ itemID = 51556 }, --Veincrusher Gauntlets
			{ itemID = 51555 }, --Tightening Waistband
		},
		{
			{ itemID = 51548 }, --Collar of Haughty Disdain
			{ itemID = 51387 }, --Seal of the Twilight Queen
			{ itemID = 51384 }, --Bloodsipper
			{ itemID = 51385 }, --Stakethrower
			{ itemID = 51553 }, --Lana'thel's Bloody Nail
		},
	},
	{
		Name = "Blood-Queen Lana'thel",
		{
			{ itemID = 50182 }, --Blood Queen's Crimson Choker
			{ itemID = 50180 }, --Lana'thel's Chain of Flagellation
			{ itemID = 50354 }, --Bauble of True Blood
			{ itemID = 50178 }, --Bloodfall
			{ itemID = 50181 }, --Dying Light
			{ itemID = 50065 }, --Icecrown Glacial Wall
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
		{
			{ itemID = 52027 }, --Conqueror's Mark of Sanctification
			{ itemID = 52026 }, --Protector's Mark of Sanctification
			{ itemID = 52025 }, --Vanquisher's Mark of Sanctification
		},
	},
	{
		Name = "Valithria Dreamwalker",
		{
			{ itemID = 51584 }, --Lich Wrappings
			{ itemID = 51777 }, --Leggings of the Refracted Mind
			{ itemID = 51585 }, --Sister Svalna's Spangenhelm
			{ itemID = 51565 }, --Skinned Whelp Shoulders
			{ itemID = 51583 }, --Stormbringer Gloves
			{ itemID = 51566 }, --Legguards of the Twisted Dream
			{ itemID = 51586 }, --Emerald Saint's Spaulders
			{ itemID = 51563 }, --Taiga Bindings
			{ itemID = 51564 }, --Ironrope Belt of Ymirjar
		},
		{
			{ itemID = 51562 }, --Oxheart
			{ itemID = 51582 }, --Sister Svalna's Aether Staff
			{ itemID = 51561 }, --Dreamhunter's Carbine
		},
	},
	{
		Name = "Valithria Dreamwalker",
		{
			{ itemID = 50205 }, --Frostbinder's Shredded Cape
			{ itemID = 50418 }, --Robe of the Waking Nightmare
			{ itemID = 50417 }, --Bracers of Eternal Dreaming
			{ itemID = 50202 }, --Snowstorm Helm
			{ itemID = 50188 }, --Anub'ar Stalker's Gloves
			{ itemID = 50187 }, --Coldwraith Links
			{ itemID = 50199 }, --Leggings of Dying Candles
			{ itemID = 50192 }, --Scourge Reaver's Legplates
			{ itemID = 50416 }, --Boots of the Funeral March
			{ itemID = 50190 }, --Grinning Skull Greatboots
		},
		{
			{ itemID = 50195 }, --Noose of Malachite
			{ itemID = 50185 }, --Devium's Eternally Cold Ring
			{ itemID = 50186 }, --Frostbrood Sapphire Ring
			{ itemID = 50183 }, --Lungbreaker
			{ itemID = 50472 }, --Nightmare Ender
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
	},
	{
		Name = "Sindragosa",
		{
			{ itemID = 51790 }, --Robes of Azure Downfall
			{ itemID = 51783 }, --Vambraces of the Frost Wyrm Queen
			{ itemID = 51789 }, --Icicle Shapers
			{ itemID = 51792 }, --Shoulderguards of Crystalline Bone
			{ itemID = 51785 }, --Wyrmwing Treads
			{ itemID = 51782 }, --Etched Dragonbone Girdle
			{ itemID = 51786 }, --Legplates of Aetheric Strife
			{ itemID = 51787 }, --Scourge Fanged Stompers
			{ itemID = 51026 }, --Crystalline Essence of Sindragosa
		},
		{
			{ itemID = 51779 }, --Rimetooth Pendant
			{ itemID = 51784 }, --Splintershard
			{ itemID = 51788 }, --Bleak Coldarra Carver
			{ itemID = 51791 }, --Lost Pavise of the color.BLUE Flight
		},
	},
	{
		Name = "Sindragosa",
		{
			{ itemID = 50421 }, --Sindragosa's Cruel Claw
			{ itemID = 50424 }, --Memory of Malygos
			{ itemID = 50360 }, --Phylactery of the Nameless Lich
			{ itemID = 50361 }, --Sindragosa's Flawless Fang
			{ itemID = 50423 }, --Sundial of Eternal Dusk
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
			{ itemID = 51026 }, --Crystalline Essence of Sindragosa
		},
		{
			{ itemID = 52027 }, --Conqueror's Mark of Sanctification
			{ itemID = 52026 }, --Protector's Mark of Sanctification
			{ itemID = 52025 }, --Vanquisher's Mark of Sanctification
		},
	},
	{
		Name = "The Lich King",
		{
			{ itemID = 51801 }, --Pugius, Fist of Defiance
			{ itemID = 51803 }, --Tel'thas, Dagger of the Blood King
			{ itemID = 51800 }, --Stormfury, Black Blade of the Betrayer
			{ itemID = 51795 }, --Troggbane, Axe of the Frostborne King
			{ itemID = 51798 }, --Valius, Gavel of the Lightbringer
			{ itemID = 51796 }, --Warmace of Menethil
			{ itemID = 51799 }, --Halion, Staff of Forgotten Love
			{ itemID = 51797 }, --Tainted Twig of Nordrassil
			{ itemID = 51802 }, --Windrunner's Heartseeker
		},
	},
	{
		Name = "The Lich King",
		{
			{ itemID = 50426 }, --Heaven's Fall, Kryss of a Thousand Lies
			{ itemID = 50427 }, --Bloodsurge, Kel'Thuzad's Blade of Agony
			{ itemID = 50070 }, --Glorenzelg, High-Blade of the Silver Hand
			{ itemID = 50012 }, --Havoc's Call, Blade of Lordaeron Kings
			{ itemID = 50428 }, --Royal Scepter of Terenas II
			{ itemID = 49997 }, --Mithrios, Bronzebeard's Legacy
			{ itemID = 50425 }, --Oathbinder, Charge of the Ranger-General
			{ itemID = 50429 }, --Archus, Greatstaff of Antonidas
			{ itemID = 49981 }, --Fal'inrush, Defender of Quel'thalas
		},
		{
			{ itemID = 52027 }, --Conqueror's Mark of Sanctification
			{ itemID = 52026 }, --Protector's Mark of Sanctification
			{ itemID = 52025 }, --Vanquisher's Mark of Sanctification
			{ itemID = 50274 }, --Shadowfrost Shard
			{ itemID = 49908 }, --Primordial Saronite
		},
	},
	{
		Name = "Trash Mobs",
		{
			{ itemID = 50449 }, --Stiffened Corpse Shoulderpads
			{ itemID = 50450 }, --Leggings of Dubious Charms
			{ itemID = 50451 }, --Belt of the Lonely Noble
			{ itemID = 50452 }, --Wodin's Lucky Necklace
			{ itemID = 50447 }, --Harbinger's Bone Band
			{ itemID = 50453 }, --Ring of Rotting Sinew
			{ itemID = 50444 }, --Rowan's Rifle of Silver Bullets
		},
	},
}

--------------------
--- Ruby Sanctum ---
--------------------

AtlasLoot_Data["Halion"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Ruby Sanctum",
	Type = "WrathRaid",
	{
		Name = "Halion",
		{
			{ itemID = 53115 }, --Abduction's Cover
			{ itemID = 53118 }, --Misbegotten Belt
			{ itemID = 53114 }, --Gloaming Sark
			{ itemID = 53117 }, --Changeling Gloves
			{ itemID = 53113 }, --Twilight Scale Shoulders
			{ itemID = 53119 }, --Boots of Divided Being
			{ itemID = 53112 }, --Bracers of the Heir
			{ itemID = 53121 }, --Surrogate Belt
			{ itemID = 53111 }, --Scion's Treads
		},
		{
			{ itemID = 53103 }, --Baltharus' Gift
			{ itemID = 53116 }, --Saviana's Tribute
			{ itemID = 53110 }, --Zarithrian's Offering
		},
	},
	{
		Name = "Halion",
		{
			{ itemID = 53489 }, --Cloak of Burning Dusk
			{ itemID = 53486 }, --Bracers of Fiery Night
			{ itemID = 53134 }, --Phaseshifter's Bracers
			{ itemID = 53126 }, --Umbrage Armbands
			{ itemID = 53488 }, --Split Shape Belt
			{ itemID = 53127 }, --Returning Footfalls
			{ itemID = 53125 }, --Apocalypse's Advance
			{ itemID = 53487 }, --Foreshadow Steps
			{ itemID = 53129 }, --Treads of Impending Resurrection
		},
		{
			{ itemID = 53132 }, --Penumbra Pendant
			{ itemID = 53490 }, --Ring of Phased Regeneration
			{ itemID = 53133 }, --Signet of Twilight
			{ itemID = 54572 }, --Charred Twilight Scale
			{ itemID = 54573 }, --Glowing Twilight Scale
			{ itemID = 54571 }, --Petrified Twilight Scale
			{ itemID = 54569 }, --Sharpened Twilight Scale
		},
	},
	{
		Name = "Halion",
		{
			{ itemID = 54556 }, --Abduction's Cover
			{ itemID = 54562 }, --Misbegotten Belt
			{ itemID = 54561 }, --Gloaming Sark
			{ itemID = 54560 }, --Changeling Gloves
			{ itemID = 54566 }, --Twilight Scale Shoulders
			{ itemID = 54558 }, --Boots of Divided Being
			{ itemID = 54559 }, --Bracers of the Heir
			{ itemID = 54565 }, --Surrogate Belt
			{ itemID = 54564 }, --Scion's Treads
		},
		{
			{ itemID = 54557 }, --Baltharus' Gift
			{ itemID = 54563 }, --Saviana's Tribute
			{ itemID = 54567 }, --Zarithrian's Offering
		},
	},
	{
		Name = "Halion",
		{
			{ itemID = 54583 }, --Cloak of Burning Dusk
			{ itemID = 54582 }, --Bracers of Fiery Night
			{ itemID = 54584 }, --Phaseshifter's Bracers
			{ itemID = 54580 }, --Umbrage Armbands
			{ itemID = 54587 }, --Split Shape Belt
			{ itemID = 54577 }, --Returning Footfalls
			{ itemID = 54578 }, --Apocalypse's Advance
			{ itemID = 54586 }, --Foreshadow Steps
			{ itemID = 54579 }, --Treads of Impending Resurrection
		},
		{
			{ itemID = 54581 }, --Penumbra Pendant
			{ itemID = 54585 }, --Ring of Phased Regeneration
			{ itemID = 54576 }, --Signet of Twilight
			{ itemID = 54588 }, --Charred Twilight Scale
			{ itemID = 54589 }, --Glowing Twilight Scale
			{ itemID = 54591 }, --Petrified Twilight Scale
			{ itemID = 54590 }, --Sharpened Twilight Scale
		},
	},
}
----------------
--- Factions ---
----------------

-------------------------
--- Alliance Vanguard ---
-------------------------

AtlasLoot_Data["AllianceVanguard"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Alliance Vanguard",
	{
		Name = "Revered",
		{
			{ itemID = 38459 }, --Orb of the Eastern Kingdoms
			{ itemID = 38465 }, --Vanguard Soldier's Dagger
			{ itemID = 38455 }, --Hammer of the Alliance Vanguard
			{ itemID = 38463 }, --Lordaeron's Resolve
			{ itemID = 38453 }, --Shield of the Lion-hearted
			{ itemID = 38457 }, --Sawed-off Hand Cannon
			{ itemID = 38464 }, --Gnomish Magician's Quill
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44503 }, --Schematic: Mekgineer's Chopper
			{ itemID = 44937 }, --Plans: Titanium Plating
			{ itemID = 44701 },
		},
	},
}
----------------------
--- Argent Crusade ---
----------------------

AtlasLoot_Data["ArgentCrusade"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Argent Crusade",
	{
		Name = "Friendly",
		{
			{ itemID = 43154 }, --Tabard of the Argent Crusade
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 44216 }, --Cloak of Holy Extermination
			{ itemID = 44240 }, --Special Issue Legplates
			{ itemID = 44239 }, --Standard Issue Legguards
			{ itemID = 44139 },
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 44248 }, --Battle Mender's Helm
			{ itemID = 44247 }, --Fang-Deflecting Faceguard
			{ itemID = 44244 }, --Argent Skeleton Crusher
			{ itemID = 44245 }, --Zombie Sweeper Shotgun
			{ itemID = 44214 }, --Purifying Torch
			{ itemID = 41726 }, --Design: Guardian's Twilight Opal
			{ itemID = 44150 }, --Arcanum of the Stalwart Protector
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44297 }, --Boots of the Neverending Path
			{ itemID = 44295 }, --Polished Regimental Hauberk
			{ itemID = 44296 }, --Helm of Purified Thoughts
			{ itemID = 44283 }, --Signet of Hopeful Light
			{ itemID = 42187 }, --Pattern: Brilliant Spellthread
		},
	},
}

-------------------------
--- Frenzyheart Tribe ---
-------------------------

AtlasLoot_Data["FrenzyheartTribe"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Frenzyheart Tribe",
	{
		Name = "Friendly",
		{
			{ itemID = 41561 }, --Design: Reckless Huge Citrine
			{ itemID = 44064 }, --Nepeta Leaf
			{ itemID = 44072 }, --Roasted Mystery Beast
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 44719 }, --Frenzyheart Brew
			{ itemID = 39671 }, --Resurgent Healing Potion
			{ itemID = 40067 }, --Icy Mana Potion
			{ itemID = 40087 }, --Powerful Rejuvenation Potion
			{ itemID = 44716 }, --Mysterious Fermented Liquid
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 44116 }, --Muddied Crimson Gloves
			{ itemID = 44117 }, --Azure Strappy Pants
			{ itemID = 44122 }, --Scavenged Feathery Leggings
			{ itemID = 44120 }, --Giant-Sized Gauntlets
			{ itemID = 44121 }, --Sparkly Shiny Gloves
			{ itemID = 44123 }, --Discarded Titanium Legplates
			{ itemID = 44118 }, --Stolen Vrykul Harpoon
			{ itemID = 41723 }, --Design: Jagged Forest Emerald
			{ itemID = 44717 }, --Disgusting Jar
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44073 }, --Frenzyheart Insignia of Fury
		},
	},
}

----------------------------
--- The Horde Expedition ---
----------------------------

AtlasLoot_Data["HordeExpedition"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Horde Expedition",
	{
		Name = "Revered",
		{
			{ itemID = 38458 }, --Darkspear Orb
			{ itemID = 38461 }, --Warsong Shanker
			{ itemID = 38454 }, --Warsong Punisher
			{ itemID = 38452 }, --Bulwark of the Warchief
			{ itemID = 38462 }, --Warsong Stormshield
			{ itemID = 38456 }, --Sin'dorei Recurve Bow
			{ itemID = 38460 }, --Charged Wand of the Cleft
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44502 }, --Schematic: Mechano-hog
			{ itemID = 44938 }, --Plans: Titanium Plating
			{ itemID = 44702, desc = "=q7=Arcanum of the Savage Gladiator" },
		},
	},
}

-----------------
--- Kirin Tor ---
-----------------

AtlasLoot_Data["KirinTor"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Kirin Tor",
	{
		Name = "Friendly",
		{
			{ itemID = 43157 }, --Tabard of the Kirin Tor
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 44167 }, --Shroud of Dedicated Research
			{ itemID = 44170 }, --Helm of the Majestic Stag
			{ itemID = 44171 }, --Spaulders of Grounded Lightning
			{ itemID = 44166 }, --Lightblade Rivener
			{ itemID = 44141 }, --Arcanum of the Flame's Soul
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 44179 }, --Mind-Expanding Leggings
			{ itemID = 44176 }, --Girdle of the Warrior Magi
			{ itemID = 44173 }, --Flameheart Spell Scalpel
			{ itemID = 44174 }, --Stave of Shrouded Mysteries
			{ itemID = 44159, desc = "=q7=Arcanum of Burning Mysteries" },
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44180 }, --Robes of Crackling Flame
			{ itemID = 44181 }, --Ghostflicker Waistband
			{ itemID = 44182 }, --Boots of Twinkling Stars
			{ itemID = 44183 }, --Fireproven Gauntlets
			{ itemID = 41718 }, --Design: Runed Scarlet Ruby
			{ itemID = 42188 }, --Pattern: Sapphire Spellthread
		},
	},
}

---------------------------------
--- Knights of the Ebon Blade ---
---------------------------------

AtlasLoot_Data["KnightsoftheEbonBlade"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Knights of the Ebon Blade",
	{
		Name = "Friendly",
		{
			{ itemID = 41562 }, --Design: Deadly Huge Citrine
			{ itemID = 43155 }, --Tabard of the Ebon Blade
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 44242 }, --Dark Soldier Cape
			{ itemID = 44243 }, --Toxin-Tempered Sabatons
			{ itemID = 44241 }, --Unholy Persuader
			{ itemID = 44512 }, --Pattern: Nerubian Reinforced Quiver
			{ itemID = 44138 }, --Arcanum of Toxic Warding
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 44256 }, --Sterile Flesh-Handling Gloves
			{ itemID = 44258 }, --Wound-Binder's Wristguards
			{ itemID = 44257 }, --Spaulders of the Black Arrow
			{ itemID = 44250 }, --Reaper of Dark Souls
			{ itemID = 44249 }, --Runeblade of Demonstrable Power
			{ itemID = 41721 }, --Design: Wicked Monarch Topaz
			{ itemID = 44149 }, --Arcanum of Torment
			{ itemID = 42183 }, --Pattern: Abyssal Bag
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44302 }, --Belt of Dark Mending
			{ itemID = 44303 }, --Darkheart Chestguard
			{ itemID = 44305 }, --Kilt of Dark Mercy
			{ itemID = 44306 }, --Death-Inured Sabatons
			{ itemID = 41725 }, --Design: Glowing Twilight Opal
		},
	},
}

-------------------
--- The Kalu'ak ---
-------------------

AtlasLoot_Data["TheKaluak"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Kalu'ak",
	{
		Name = "Friendly",
		{
			{ itemID = 41568 }, --Design: Seer's Dark Jade
			{ itemID = 44049 }, --Freshly-Speared Emperor Salmon
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 44061 }, --Pigment-Stained Robes
			{ itemID = 44062 }, --Turtle-Minders Robe
			{ itemID = 44054 }, --Whale-Skin Breastplate
			{ itemID = 44055 }, --Whale-Skin Vest
			{ itemID = 44059 }, --Cuttlefish Scale Breastplate
			{ itemID = 44060 }, --Cuttlefish Tooth Ringmail
			{ itemID = 44057 }, --Ivory-Reinforced Chestguard
			{ itemID = 44058 }, --Whalebone Carapace
			{ itemID = 44511 }, --Pattern: Dragonscale Ammo Pouch
			{ itemID = 41574 }, --Design: Defender's Shadow Crystal
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 44051 }, --Traditional Flensing Knife
			{ itemID = 44052 }, --Totemic Purification Rod
			{ itemID = 44053 }, --Whale-Stick Harpoon
			{ itemID = 44509 }, --Pattern: Trapper's Traveling Pack
			{ itemID = 45774 }, --Pattern: Emerald Bag
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44050 }, --Mastercraft Kalu'ak Fishing Pole
			{ itemID = 44723 }, --Nurtured Penguin Egg
		},
	},
}

-------------------
--- The Oracles ---
-------------------

AtlasLoot_Data["TheOracles"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Oracles",
	{
		Name = "Friendly",
		{
			{ itemID = 41567 }, --Design: Vivid Dark Jade
			{ itemID = 44065 }, --Oracle Secret Solution
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 44071 }, --Slow-Roasted Eel
			{ icon = "INV_Egg_02", name = color.WHITE.. "Cracked Egg" },
			{ itemID = 44707 }, --Reins of the color.GREEN Proto-Drake
			{ itemID = 39898 }, --Cobra Hatchling
			{ itemID = 44721 }, --Proto-Drake Whelp
			{ itemID = 39896 }, --Tickbird Hatchling
			{ itemID = 39899 }, --color.WHITE Tickbird Hatchling
			{ itemID = 44722 }, --Aged Yolk
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 44104 }, --Fishy Cinch
			{ itemID = 44106 }, --Glitterscale Wrap
			{ itemID = 44110 }, --Sharkjaw Cap
			{ itemID = 44109 }, --Toothslice Helm
			{ itemID = 44112 }, --Glimmershell Shoulder Protectors
			{ itemID = 44111 }, --Gold Star Spaulders
			{ itemID = 44108 }, --Shinygem Rod
			{ itemID = 41724 }, --Design: Sundered Forest Emerald
			{ itemID = 39878 }, --Mysterious Egg
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44074 }, --Oracle Talisman of Ablution
		},

	},
}

-------------------------
--- The Sons of Hodir ---
-------------------------

AtlasLoot_Data["TheSonsofHodir"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Sons of Hodir",
	{
		Name = "Honored",
		{
			{ itemID = 44190 }, --Spaulders of Frozen Knives
			{ itemID = 44189 }, --Giant Ring Belt
			{ itemID = 44510 }, --Pattern: Mammoth Mining Bag
			{ itemID = 44137 }, --Arcanum of the Frosty Soul
			{ itemID = 44131 }, --Lesser Inscription of the Axe
			{ itemID = 44130 }, --Lesser Inscription of the Crag
			{ itemID = 44132 }, --Lesser Inscription of the Pinnacle
			{ itemID = 44129 }, --Lesser Inscription of the Storm 
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 43958 }, --Reins of the Ice Mammoth
			{ itemID = 44080 }, --Reins of the Ice Mammoth
			{ itemID = 44194 }, --Giant-Friend Kilt
			{ itemID = 44195 }, --Spaulders of the Giant Lords
			{ itemID = 44193 }, --Broken Stalactite
			{ itemID = 44192 }, --Stalactite Chopper
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 43961 }, --Reins of the Grand Ice Mammoth
			{ itemID = 44086 }, --Reins of the Grand Ice Mammoth
			{ itemID = 44133 }, --Greater Inscription of the Axe
			{ itemID = 44134 }, --Greater Inscription of the Crag
			{ itemID = 44136 }, --Greater Inscription of the Pinnacle
			{ itemID = 44135 }, --Greater Inscription of the Storm
			{ itemID = 41720 }, --Design: Smooth Autumn's Glow
			{ itemID = 42184 }, --Pattern: Glacial Bag
		},
	},
}

-------------------------
--- Winterfin Retreat ---
-------------------------

AtlasLoot_Data["WinterfinRetreat"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Winterfin Retreat",
	{
		Name = "Winterfin Retreat",
		{
			{ itemID = 36784, "100 #winterfinclam#" }, --Siren's Tear
			{ itemID = 37462, "30 #winterfinclam#" }, --Sea King's Crown
			{ itemID = 37463, "30 #winterfinclam#" }, --Winterfin Patch of Honor
			{ itemID = 37461, "50 #winterfinclam#" }, --Tidebreaker Trident
			{ itemID = 36783, "30 #winterfinclam#" }, --Northsea Pearl
			{ itemID = 37464, "5 #winterfinclam#" }, --Winterfin Horn of Distress
			{ itemID = 37449, "5 #winterfinclam#" }, --Breath of Murloc
			{ itemID = 38351, "2 #winterfinclam#" }, --Murliver Oil
			{ itemID = 38350, "1 #winterfinclam#" }, --Winterfin \"Depth Charge\"
			{ itemID = 34597 }, --Winterfin Clam
		},
	},
}

---------------------------
--- The Wyrmrest Accord ---
---------------------------

AtlasLoot_Data["TheWyrmrestAccord"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Wyrmrest Accord",
	{
		Name = "Friendly",
		{
			{ itemID = 43156 }, --Tabard of the Wyrmrest Accord
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 44188 }, --Cloak of Peaceful Resolutions
			{ itemID = 44196 }, --Sash of the Wizened Wyrm
			{ itemID = 44197 }, --Bracers of Accorded Courtesy
			{ itemID = 44187 }, --Fang of Truth
			{ itemID = 44140 }, --Arcanum of the Eclipsed Moon
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 44200 }, --Ancestral Sinew Wristguards
			{ itemID = 44198 }, --Breastplate of the Solemn Council
			{ itemID = 44201 }, --Sabatons of Draconic Vigor
			{ itemID = 44199 }, --Gavel of the Brewing Storm
			{ itemID = 44152 }, --Arcanum of Blissful Mending
			{ itemID = 42185 }, --Pattern: Mysterious Bag
		},
	},
	{
		Name = "Exalted",
		{
			{ itemID = 44202 }, --Sandals of Crimson Fury
			{ itemID = 44203 }, --Dragonfriend Bracers
			{ itemID = 44204 }, --Grips of Fierce Pronouncements
			{ itemID = 44205 }, --Legplates of Bloody Reprisal
			{ itemID = 43955 }, --Reins of the color.RED Drake
			{ itemID = 41722 }, --Design: Glimmering Monarch Topaz
		},
	},
}

-------------------------
--- The Ashen Verdict ---
-------------------------

AtlasLoot_Data["AshenVerdict"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "The Ashen Verdict",
	{
		Name = "Rings",
		{
			{ itemID = 50375 }, --Ashen Band of Courage
			{ itemID = 50388 }, --Ashen Band of Greater Courage
			{ itemID = 50403 }, --Ashen Band of Unmatched Courage
			{ itemID = 50404 }, --Ashen Band of Endless Courage
			{ itemID = 50377 }, --Ashen Band of Destruction
			{ itemID = 50384 }, --Ashen Band of Greater Destruction
			{ itemID = 50397 }, --Ashen Band of Unmatched Destruction
			{ itemID = 50398 }, --Ashen Band of Endless Destruction
			{ itemID = 52569 }, --Ashen Band of Might
			{ itemID = 52570 }, --Ashen Band of Greater Might
			{ itemID = 52571 }, --Ashen Band of Unmatched Might
			{ itemID = 52572 }, --Ashen Band of Endless Might
		},
		{
			{ itemID = 50376 }, --Ashen Band of Vengeance
			{ itemID = 50387 }, --Ashen Band of Greater Vengeance
			{ itemID = 50401 }, --Ashen Band of Unmatched Vengeance
			{ itemID = 50402 }, --Ashen Band of Endless Vengeance
			{ itemID = 50378 }, --Ashen Band of Wisdom
			{ itemID = 50386 }, --Ashen Band of Greater Wisdom
			{ itemID = 50399 }, --Ashen Band of Unmatched Wisdom
			{ itemID = 50400 }, --Ashen Band of Endless Wisdom
		},
	},
	{
		Name = "Honored",
		{
			{ itemID = 49974 }, --Plans: Boots of Kingly Upheaval
			{ itemID = 49972 }, --Plans: Hellfrozen Bonegrinders
			{ itemID = 49970 }, --Plans: Protectors of Life
			{ itemID = 49958 }, --Pattern: Blessed Cenarion Boots
			{ itemID = 49963 }, --Pattern: Earthsoul Boots
			{ itemID = 49961 }, --Pattern: Footpads of Impending Death
			{ itemID = 49966 }, --Pattern: Rock-Steady Treads
			{ itemID = 49954 }, --Pattern: Deathfrost Boots
			{ itemID = 49956 }, --Pattern: Sandals of Consecration
			{ itemID = 52023 }, --Plans: Evil Arrow
			{ itemID = 52022 }, --Plans: Shatter Rounds
		},
	},
	{
		Name = "Revered",
		{
			{ itemID = 49971 }, --Plans: Legplates of Painful Death
			{ itemID = 49973 }, --Plans: Pillars of Might
			{ itemID = 49969 }, --Plans: Puresteel Legplates
			{ itemID = 49959 }, --Pattern: Bladeborn Leggings
			{ itemID = 49965 }, --Pattern: Draconic Bonesplinter Legguards
			{ itemID = 49957 }, --Pattern: Legwraps of Unleashed Nature
			{ itemID = 49962 }, --Pattern: Lightning-Infused Leggings
			{ itemID = 49953 }, --Pattern: Leggings of Woven Death
			{ itemID = 49955 }, --Pattern: Lightweave Leggings
		},
	},
}

-----------
--- PvP ---
-----------

------------------
--- Armor Sets ---
------------------

AtlasLoot_Data["ArenaDeathKnightWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"],
	{
		Name = "Page 1",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Gladiator's Desecration" },
			{ itemID = 51415, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Dreadplate Helm
			{ itemID = 51418, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Dreadplate Shoulders
			{ itemID = 51413, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Dreadplate Chestpiece
			{ itemID = 51414, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Dreadplate Gauntlets
			{ itemID = 51416, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Dreadplate Legguards
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Gladiator's Desecration" },
			{ itemID = 40830, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Dreadplate Helm
			{ itemID = 40871, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Dreadplate Shoulders
			{ itemID = 40791, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Dreadplate Chestpiece
			{ itemID = 40811, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Dreadplate Gauntlets
			{ itemID = 40851, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Dreadplate Legguards
		},
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Gladiator's Desecration" },
			{ itemID = 40827, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Dreadplate Helm
			{ itemID = 40868, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Dreadplate Shoulders
			{ itemID = 40787, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Dreadplate Chestpiece
			{ itemID = 40809, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Dreadplate Gauntlets
			{ itemID = 40848, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Dreadplate Legguards
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Gladiator's Desecration" },
			{ itemID = 40824, "58 #eofconquest#" }, --Deadly Gladiator's Dreadplate Helm
			{ itemID = 40863, "46 #eofconquest#" }, --Deadly Gladiator's Dreadplate Shoulders
			{ itemID = 40784, "58 #eofconquest#" }, --Deadly Gladiator's Dreadplate Chestpiece
			{ itemID = 40806, "46 #eofconquest#" }, --Deadly Gladiator's Dreadplate Gauntlets
			{ itemID = 40845, "58 #eofconquest#" }, --Deadly Gladiator's Dreadplate Legguards
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Gladiator's Desecration" },
			{ itemID = 40820, "45 #eofvalor#" }, --Hateful Gladiator's Dreadplate Helm
			{ itemID = 40860, "30 #eofvalor#" }, --Hateful Gladiator's Dreadplate Shoulders
			{ itemID = 40781, "45 #eofvalor#" }, --Hateful Gladiator's Dreadplate Chestpiece
			{ itemID = 40803, "30 #eofvalor#" }, --Hateful Gladiator's Dreadplate Gauntlets
			{ itemID = 40841, "45 #eofvalor#" }, --Hateful Gladiator's Dreadplate Legguards
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Gladiator's Desecration" },
			{ itemID = 40817, "45 #eofheroism#" }, --Savage Gladiator's Dreadplate Helm
			{ itemID = 40857, "30 #eofheroism#" }, --Savage Gladiator's Dreadplate Shoulders
			{ itemID = 40779, "45 #eofheroism#" }, --Savage Gladiator's Dreadplate Chestpiece
			{ itemID = 40799, "30 #eofheroism#" }, --Savage Gladiator's Dreadplate Gauntlets
			{ itemID = 40837, "45 #eofheroism#" }, --Savage Gladiator's Dreadplate Legguards
		},
	},
}

AtlasLoot_Data["ArenaDruidWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"],
	{
		Name = "Balance" .. " Page 1",
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Gladiator's Wildhide" },
			{ itemID = 51435, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Wyrmhide Helm
			{ itemID = 51438, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Wyrmhide Spaulders
			{ itemID = 51433, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Wyrmhide Robes
			{ itemID = 51434, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Wyrmhide Gloves
			{ itemID = 51436, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Wyrmhide Legguards
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Gladiator's Wildhide" },
			{ itemID = 41328, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Wyrmhide Helm
			{ itemID = 41282, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Wyrmhide Spaulders
			{ itemID = 41317, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Wyrmhide Robes
			{ itemID = 41294, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Wyrmhide Gloves
			{ itemID = 41305, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Wyrmhide Legguards
		},
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Gladiator's Wildhide" },
			{ itemID = 41327, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Wyrmhide Helm
			{ itemID = 41281, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Wyrmhide Spaulders
			{ itemID = 41316, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Wyrmhide Robes
			{ itemID = 41293, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Wyrmhide Gloves
			{ itemID = 41304, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Wyrmhide Legguards
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Gladiator's Wildhide" },
			{ itemID = 41326, "58 #eofconquest#" }, --Deadly Gladiator's Wyrmhide Helm
			{ itemID = 41280, "46 #eofconquest#" }, --Deadly Gladiator's Wyrmhide Spaulders
			{ itemID = 41315, "58 #eofconquest#" }, --Deadly Gladiator's Wyrmhide Robes
			{ itemID = 41292, "46 #eofconquest#" }, --Deadly Gladiator's Wyrmhide Gloves
			{ itemID = 41303, "58 #eofconquest#" }, --Deadly Gladiator's Wyrmhide Legguards
		},
	},
	{
		Name = "Balance" .. " Page 2",
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Gladiator's Wildhide" },
			{ itemID = 41325, "45 #eofvalor#" }, --Hateful Gladiator's Wyrmhide Helm
			{ itemID = 41279, "30 #eofvalor#" }, --Hateful Gladiator's Wyrmhide Spaulders
			{ itemID = 41314, "45 #eofvalor#" }, --Hateful Gladiator's Wyrmhide Robes
			{ itemID = 41291, "30 #eofvalor#" }, --Hateful Gladiator's Wyrmhide Gloves
			{ itemID = 41302, "45 #eofvalor#" }, --Hateful Gladiator's Wyrmhide Legguards
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Gladiator's Wildhide" },
			{ itemID = 41324, "45 #eofheroism#" }, --Savage Gladiator's Wyrmhide Helm
			{ itemID = 41278, "30 #eofheroism#" }, --Savage Gladiator's Wyrmhide Spaulders
			{ itemID = 41313, "45 #eofheroism#" }, --Savage Gladiator's Wyrmhide Robes
			{ itemID = 41290, "30 #eofheroism#" }, --Savage Gladiator's Wyrmhide Gloves
			{ itemID = 41301, "45 #eofheroism#" }, --Savage Gladiator's Wyrmhide Legguards
		},
	},
	{
		Name = "Feral" .. " Page 1",
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Gladiator's Sanctuary" },
			{ itemID = 51427, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Dragonhide Helm
			{ itemID = 51430, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Dragonhide Spaulders
			{ itemID = 51425, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Dragonhide Robes
			{ itemID = 51426, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Dragonhide Gloves
			{ itemID = 51428, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Dragonhide Legguards
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Gladiator's Sanctuary" },
			{ itemID = 41679, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Dragonhide Helm
			{ itemID = 41716, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Dragonhide Spaulders
			{ itemID = 41662, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Dragonhide Robes
			{ itemID = 41774, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Dragonhide Gloves
			{ itemID = 41668, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Dragonhide Legguards
		},
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Gladiator's Sanctuary" },
			{ itemID = 41678, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Dragonhide Helm
			{ itemID = 41715, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Dragonhide Spaulders
			{ itemID = 41661, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Dragonhide Robes
			{ itemID = 41773, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Dragonhide Gloves
			{ itemID = 41667, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Dragonhide Legguards
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Gladiator's Sanctuary" },
			{ itemID = 41677, "58 #eofconquest#" }, --Deadly Gladiator's Dragonhide Helm
			{ itemID = 41714, "46 #eofconquest#" }, --Deadly Gladiator's Dragonhide Spaulders
			{ itemID = 41660, "58 #eofconquest#" }, --Deadly Gladiator's Dragonhide Robes
			{ itemID = 41772, "46 #eofconquest#" }, --Deadly Gladiator's Dragonhide Gloves
			{ itemID = 41666, "58 #eofconquest#" }, --Deadly Gladiator's Dragonhide Legguards
		},
	},
	{
		Name = "Feral" .. " Page 2",
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Gladiator's Sanctuary" },
			{ itemID = 41676, "45 #eofvalor#" }, --Hateful Gladiator's Dragonhide Helm
			{ itemID = 41713, "30 #eofvalor#" }, --Hateful Gladiator's Dragonhide Spaulders
			{ itemID = 41659, "45 #eofvalor#" }, --Hateful Gladiator's Dragonhide Robes
			{ itemID = 41771, "30 #eofvalor#" }, --Hateful Gladiator's Dragonhide Gloves
			{ itemID = 41665, "45 #eofvalor#" }, --Hateful Gladiator's Dragonhide Legguards
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Gladiator's Sanctuary" },
			{ itemID = 41675, "45 #eofheroism#" }, --Savage Gladiator's Dragonhide Helm
			{ itemID = 41712, "30 #eofheroism#" }, --Savage Gladiator's Dragonhide Spaulders
			{ itemID = 41658, "45 #eofheroism#" }, --Savage Gladiator's Dragonhide Robes
			{ itemID = 41770, "30 #eofheroism#" }, --Savage Gladiator's Dragonhide Gloves
			{ itemID = 41664, "45 #eofheroism#" }, --Savage Gladiator's Dragonhide Legguards
		},
	},
	{
		Name = "Restoration" .. " Page 1",
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Gladiator's Refuge" },
			{ itemID = 51421, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Kodohide Helm
			{ itemID = 51424, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Kodohide Spaulders
			{ itemID = 51419, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Kodohide Robes
			{ itemID = 51420, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Kodohide Gloves
			{ itemID = 51422, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Kodohide Legguards
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Gladiator's Refuge" },
			{ itemID = 41322, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Kodohide Helm
			{ itemID = 41276, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Kodohide Spaulders
			{ itemID = 41311, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Kodohide Robes
			{ itemID = 41288, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Kodohide Gloves
			{ itemID = 41299, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Kodohide Legguards
		},
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Gladiator's Refuge" },
			{ itemID = 41321, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Kodohide Helm
			{ itemID = 41275, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Kodohide Spaulders
			{ itemID = 41310, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Kodohide Robes
			{ itemID = 41287, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Kodohide Gloves
			{ itemID = 41298, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Kodohide Legguards
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Gladiator's Refuge" },
			{ itemID = 41320, "58 #eofconquest#" }, --Deadly Gladiator's Kodohide Helm
			{ itemID = 41274, "46 #eofconquest#" }, --Deadly Gladiator's Kodohide Spaulders
			{ itemID = 41309, "58 #eofconquest#" }, --Deadly Gladiator's Kodohide Robes
			{ itemID = 41286, "46 #eofconquest#" }, --Deadly Gladiator's Kodohide Gloves
			{ itemID = 41297, "58 #eofconquest#" }, --Deadly Gladiator's Kodohide Legguards
		},
	},
	{
		Name = "Restoration" .. " Page 2",
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Gladiator's Refuge" },
			{ itemID = 41319, "45 #eofvalor#" }, --Hateful Gladiator's Kodohide Helm
			{ itemID = 41273, "30 #eofvalor#" }, --Hateful Gladiator's Kodohide Spaulders
			{ itemID = 41308, "45 #eofvalor#" }, --Hateful Gladiator's Kodohide Robes
			{ itemID = 41284, "30 #eofvalor#" }, --Hateful Gladiator's Kodohide Gloves
			{ itemID = 41296, "45 #eofvalor#" }, --Hateful Gladiator's Kodohide Legguards
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Gladiator's Refuge" },
			{ itemID = 41269, "45 #eofheroism#" }, --Savage Gladiator's Kodohide Helm
			{ itemID = 41271, "30 #eofheroism#" }, --Savage Gladiator's Kodohide Spaulders
			{ itemID = 41272, "45 #eofheroism#" }, --Savage Gladiator's Kodohide Robes
			{ itemID = 41268, "30 #eofheroism#" }, --Savage Gladiator's Kodohide Gloves
			{ itemID = 41270, "45 #eofheroism#" }, --Savage Gladiator's Kodohide Legguards
		},
	},
}

AtlasLoot_Data["ArenaHunterWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
	{
		Name = "Page 1",
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Gladiator's Pursuit" },
			{ itemID = 51460, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Chain Helm
			{ itemID = 51462, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Chain Spaulders
			{ itemID = 51458, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Chain Armor
			{ itemID = 51459, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Chain Gauntlets
			{ itemID = 51461, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Chain Leggings
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Gladiator's Pursuit" },
			{ itemID = 41158, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Chain Helm
			{ itemID = 41218, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Chain Spaulders
			{ itemID = 41088, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Chain Armor
			{ itemID = 41144, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Chain Gauntlets
			{ itemID = 41206, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Chain Leggings
		},
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Gladiator's Pursuit" },
			{ itemID = 41157, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Chain Helm
			{ itemID = 41217, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Chain Spaulders
			{ itemID = 41087, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Chain Armor
			{ itemID = 41143, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Chain Gauntlets
			{ itemID = 41205, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Chain Leggings
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Gladiator's Pursuit" },
			{ itemID = 41156, "58 #eofconquest#" }, --Deadly Gladiator's Chain Helm
			{ itemID = 41216, "46 #eofconquest#" }, --Deadly Gladiator's Chain Spaulders
			{ itemID = 41086, "58 #eofconquest#" }, --Deadly Gladiator's Chain Armor
			{ itemID = 41142, "46 #eofconquest#" }, --Deadly Gladiator's Chain Gauntlets
			{ itemID = 41204, "58 #eofconquest#" }, --Deadly Gladiator's Chain Leggings
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Gladiator's Pursuit" },
			{ itemID = 41155, "45 #eofvalor#" }, --Hateful Gladiator's Chain Helm
			{ itemID = 41215, "30 #eofvalor#" }, --Hateful Gladiator's Chain Spaulders
			{ itemID = 41085, "45 #eofvalor#" }, --Hateful Gladiator's Chain Armor
			{ itemID = 41141, "30 #eofvalor#" }, --Hateful Gladiator's Chain Gauntlets
			{ itemID = 41203, "45 #eofvalor#" }, --Hateful Gladiator's Chain Leggings
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Gladiator's Pursuit" },
			{ itemID = 41154, "45 #eofheroism#" }, --Savage Gladiator's Chain Helm
			{ itemID = 41214, "30 #eofheroism#" }, --Savage Gladiator's Chain Spaulders
			{ itemID = 41084, "45 #eofheroism#" }, --Savage Gladiator's Chain Armor
			{ itemID = 41140, "30 #eofheroism#" }, --Savage Gladiator's Chain Gauntlets
			{ itemID = 41202, "45 #eofheroism#" }, --Savage Gladiator's Chain Leggings
		},
	},
}

AtlasLoot_Data["ArenaMageWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
	{
		Name = "Page 1",
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Gladiator's Regalia" },
			{ itemID = 51465, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Silk Cowl
			{ itemID = 51467, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Silk Amice
			{ itemID = 51463, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Silk Raiment
			{ itemID = 51464, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Silk Handguards
			{ itemID = 51466, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Silk Trousers
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Gladiator's Regalia" },
			{ itemID = 41947, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Silk Cowl
			{ itemID = 41966, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Silk Amice
			{ itemID = 41954, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Silk Raiment
			{ itemID = 41972, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Silk Handguards
			{ itemID = 41960, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Silk Trousers
		},
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Gladiator's Regalia" },
			{ itemID = 41946, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Silk Cowl
			{ itemID = 41965, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Silk Amice
			{ itemID = 41953, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Silk Raiment
			{ itemID = 41971, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Silk Handguards
			{ itemID = 41959, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Silk Trousers
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Gladiator's Regalia" },
			{ itemID = 41945, "58 #eofconquest#" }, --Deadly Gladiator's Silk Cowl
			{ itemID = 41964, "46 #eofconquest#" }, --Deadly Gladiator's Silk Amice
			{ itemID = 41951, "58 #eofconquest#" }, --Deadly Gladiator's Silk Raiment
			{ itemID = 41970, "46 #eofconquest#" }, --Deadly Gladiator's Silk Handguards
			{ itemID = 41958, "58 #eofconquest#" }, --Deadly Gladiator's Silk Trousers
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Gladiator's Regalia" },
			{ itemID = 41944, "45 #eofvalor#" }, --Hateful Gladiator's Silk Cowl
			{ itemID = 41963, "30 #eofvalor#" }, --Hateful Gladiator's Silk Amice
			{ itemID = 41950, "45 #eofvalor#" }, --Hateful Gladiator's Silk Raiment
			{ itemID = 41969, "30 #eofvalor#" }, --Hateful Gladiator's Silk Handguards
			{ itemID = 41957, "45 #eofvalor#" }, --Hateful Gladiator's Silk Trousers
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Gladiator's Regalia" },
			{ itemID = 41943, "45 #eofheroism#" }, --Savage Gladiator's Silk Cowl
			{ itemID = 41962, "30 #eofheroism#" }, --Savage Gladiator's Silk Amice
			{ itemID = 41949, "45 #eofheroism#" }, --Savage Gladiator's Silk Raiment
			{ itemID = 41968, "30 #eofheroism#" }, --Savage Gladiator's Silk Handguards
			{ itemID = 41956, "45 #eofheroism#" }, --Savage Gladiator's Silk
		},
	},
}

AtlasLoot_Data["ArenaPaladinWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"],
	{
		Name = "Retribution" .. "Page 1",
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Gladiator's Vindication" },
			{ itemID = 51476, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Scaled Helm
			{ itemID = 51479, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Scaled Shoulders
			{ itemID = 51474, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Scaled Chestpiece
			{ itemID = 51475, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Scaled Gauntlets
			{ itemID = 51477, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Scaled Legguards
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Gladiator's Vindication" },
			{ itemID = 40831, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Scaled Helm
			{ itemID = 40872, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Scaled Shoulders
			{ itemID = 40792, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Scaled Chestpiece
			{ itemID = 40812, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Scaled Gauntlets
			{ itemID = 40852, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Scaled Legguards
		},
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Gladiator's Vindication" },
			{ itemID = 40828, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Scaled Helm
			{ itemID = 40869, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Scaled Shoulders
			{ itemID = 40788, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Scaled Chestpiece
			{ itemID = 40808, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Scaled Gauntlets
			{ itemID = 40849, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Scaled Legguards
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Gladiator's Vindication" },
			{ itemID = 40825, "58 #eofconquest#" }, --Deadly Gladiator's Scaled Helm
			{ itemID = 40864, "46 #eofconquest#" }, --Deadly Gladiator's Scaled Shoulders
			{ itemID = 40785, "58 #eofconquest#" }, --Deadly Gladiator's Scaled Chestpiece
			{ itemID = 40805, "46 #eofconquest#" }, --Deadly Gladiator's Scaled Gauntlets
			{ itemID = 40846, "58 #eofconquest#" }, --Deadly Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Retribution" .. "Page 2",
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Gladiator's Vindication" },
			{ itemID = 40821, "45 #eofvalor#" }, --Hateful Gladiator's Scaled Helm
			{ itemID = 40861, "30 #eofvalor#" }, --Hateful Gladiator's Scaled Shoulders
			{ itemID = 40782, "45 #eofvalor#" }, --Hateful Gladiator's Scaled Chestpiece
			{ itemID = 40802, "30 #eofvalor#" }, --Hateful Gladiator's Scaled Gauntlets
			{ itemID = 40842, "45 #eofvalor#" }, --Hateful Gladiator's Scaled Legguards
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Gladiator's Vindication" },
			{ itemID = 40818, "45 #eofheroism#" }, --Savage Gladiator's Scaled Helm
			{ itemID = 40858, "30 #eofheroism#" }, --Savage Gladiator's Scaled Shoulders
			{ itemID = 40780, "45 #eofheroism#" }, --Savage Gladiator's Scaled Chestpiece
			{ itemID = 40798, "30 #eofheroism#" }, --Savage Gladiator's Scaled Gauntlets
			{ itemID = 40838, "45 #eofheroism#" }, --Savage Gladiator's Scaled Legguards
		},
	},
	{
		Name = "Holy" .. "Page 1",
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Gladiator's Redemption" },
			{ itemID = 51470, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Ornamented Headcover
			{ itemID = 51473, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Ornamented Spaulders
			{ itemID = 51468, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Ornamented Chestguard
			{ itemID = 51469, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Ornamented Gloves
			{ itemID = 51471, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Ornamented Legplates
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Gladiator's Redemption" },
			{ itemID = 40934, --Relentless Gladiator's Ornamented Headcover
			"13200 #faction# 770 #arena# / 95 #eoffrost#" },
			{ itemID = 40964, --Relentless Gladiator's Ornamented Spaulders
			"10550 #faction# 600 #arena# / 60 #eoffrost#" },
			{ itemID = 40910, --Relentless Gladiator's Ornamented Chestguard
			"13200 #faction# 770 #arena# / 95 #eoffrost#" },
			{ itemID = 40928, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Ornamented Gloves
			{ itemID = 40940, --Relentless Gladiator's Ornamented Legplates
			"13200 #faction# 770 #arena# / 95 #eoffrost#" },
		},
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Gladiator's Redemption" },
			{ itemID = 40933, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Ornamented Headcover
			{ itemID = 40963, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Ornamented Spaulders
			{ itemID = 40907, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Ornamented Chestguard
			{ itemID = 40927, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Ornamented Gloves
			{ itemID = 40939, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Ornamented Legplates
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Gladiator's Redemption" },
			{ itemID = 40932, "58 #eofconquest#" }, --Deadly Gladiator's Ornamented Headcover
			{ itemID = 40962, "46 #eofconquest#" }, --Deadly Gladiator's Ornamented Spaulders
			{ itemID = 40905, "58 #eofconquest#" }, --Deadly Gladiator's Ornamented Chestguard
			{ itemID = 40926, "46 #eofconquest#" }, --Deadly Gladiator's Ornamented Gloves
			{ itemID = 40938, "58 #eofconquest#" }, --Deadly Gladiator's Ornamented Legplates
		},
	},
	{
		Name = "Holy" .. "Page 2",
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Gladiator's Redemption" },
			{ itemID = 40931, "45 #eofvalor#" }, --Hateful Gladiator's Ornamented Headcover
			{ itemID = 40961, "30 #eofvalor#" }, --Hateful Gladiator's Ornamented Spaulders
			{ itemID = 40904, "45 #eofvalor#" }, --Hateful Gladiator's Ornamented Gloves
			{ itemID = 40925, "30 #eofvalor#" }, --Hateful Gladiator's Ornamented Chestguard
			{ itemID = 40937, "45 #eofvalor#" }, --Hateful Gladiator's Ornamented Legplates
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Gladiator's Redemption" },
			{ itemID = 40930, "45 #eofheroism#" }, --Savage Gladiator's Ornamented Headcover
			{ itemID = 40960, "30 #eofheroism#" }, --Savage Gladiator's Ornamented Spaulders
			{ itemID = 40898, "45 #eofheroism#" }, --Savage Gladiator's Ornamented Chestguard
			{ itemID = 40918, "30 #eofheroism#" }, --Savage Gladiator's Ornamented Gloves
			{ itemID = 40936, "45 #eofheroism#" }, --Savage Gladiator's Ornamented Legplates
		},
	},
}

AtlasLoot_Data["ArenaPriestWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"],
	{
		Name = "Shadow" .. "Page 1",
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Gladiator's Raiment" },
			{ itemID = 51489, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Satin Hood
			{ itemID = 51491, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Satin Mantle
			{ itemID = 51487, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Satin Robe
			{ itemID = 51488, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Satin Gloves
			{ itemID = 51490, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Satin Leggings
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Gladiator's Raiment" },
			{ itemID = 41916, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Satin Hood
			{ itemID = 41935, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Satin Mantle
			{ itemID = 41922, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Satin Robe
			{ itemID = 41941, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Satin Gloves
			{ itemID = 41928, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Satin Leggings
		},
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Gladiator's Raiment" },
			{ itemID = 41915, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Satin Hood
			{ itemID = 41934, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Satin Mantle
			{ itemID = 41921, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Satin Robe
			{ itemID = 41940, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Satin Gloves
			{ itemID = 41927, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Satin Leggings
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Gladiator's Raiment" },
			{ itemID = 41914, "58 #eofconquest#" }, --Deadly Gladiator's Satin Hood
			{ itemID = 41933, "46 #eofconquest#" }, --Deadly Gladiator's Satin Mantle
			{ itemID = 41920, "58 #eofconquest#" }, --Deadly Gladiator's Satin Robe
			{ itemID = 41939, "46 #eofconquest#" }, --Deadly Gladiator's Satin Gloves
			{ itemID = 41926, "58 #eofconquest#" }, --Deadly Gladiator's Satin Leggings
		},
	},
	{
		Name = "Shadow" .. "Page 2",
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Gladiator's Raiment" },
			{ itemID = 41913, "45 #eofvalor#" }, --Hateful Gladiator's Satin Hood
			{ itemID = 41931, "30 #eofvalor#" }, --Hateful Gladiator's Satin Mantle
			{ itemID = 41919, "45 #eofvalor#" }, --Hateful Gladiator's Satin Robe
			{ itemID = 41938, "30 #eofvalor#" }, --Hateful Gladiator's Satin Gloves
			{ itemID = 41925, "45 #eofvalor#" }, --Hateful Gladiator's Satin Leggings
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Gladiator's Raiment" },
			{ itemID = 41912, "45 #eofheroism#" }, --Savage Gladiator's Satin Hood
			{ itemID = 41930, "30 #eofheroism#" }, --Savage Gladiator's Satin Mantle
			{ itemID = 41918, "45 #eofheroism#" }, --Savage Gladiator's Satin Robe
			{ itemID = 41937, "30 #eofheroism#" }, --Savage Gladiator's Satin Gloves
			{ itemID = 41924, "45 #eofheroism#" }, --Savage Gladiator's Satin Leggings
		},
	},
	{
		Name = "Holy" .. "Page 1",
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Gladiator's Investiture" },
			{ itemID = 51484, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Mooncloth Hood
			{ itemID = 51486, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Mooncloth Mantle
			{ itemID = 51482, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Mooncloth Robe
			{ itemID = 51483, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Mooncloth Gloves
			{ itemID = 51485, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Mooncloth Leggings
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Gladiator's Investiture" },
			{ itemID = 41855, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Mooncloth Hood
			{ itemID = 41870, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Mooncloth Mantle
			{ itemID = 41860, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Mooncloth Robe
			{ itemID = 41875, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Mooncloth Gloves
			{ itemID = 41865, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Mooncloth Leggings
		},
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Gladiator's Investiture" },
			{ itemID = 41854, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Mooncloth Hood
			{ itemID = 41869, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Mooncloth Mantle
			{ itemID = 41859, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Mooncloth Robe
			{ itemID = 41874, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Mooncloth Gloves
			{ itemID = 41864, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Mooncloth Leggings
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Gladiator's Investiture" },
			{ itemID = 41853, "58 #eofconquest#" }, --Deadly Gladiator's Mooncloth Hood
			{ itemID = 41868, "46 #eofconquest#" }, --Deadly Gladiator's Mooncloth Mantle
			{ itemID = 41858, "58 #eofconquest#" }, --Deadly Gladiator's Mooncloth Robe
			{ itemID = 41873, "46 #eofconquest#" }, --Deadly Gladiator's Mooncloth Gloves
			{ itemID = 41863, "58 #eofconquest#" }, --Deadly Gladiator's Mooncloth Leggings
		},
	},
	{
		Name = "Holy" .. "Page 2",
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Gladiator's Investiture" },
			{ itemID = 41852, "45 #eofvalor#" }, --Hateful Gladiator's Mooncloth Hood
			{ itemID = 41867, "30 #eofvalor#" }, --Hateful Gladiator's Mooncloth Mantle
			{ itemID = 41857, "45 #eofvalor#" }, --Hateful Gladiator's Mooncloth Robe
			{ itemID = 41872, "30 #eofvalor#" }, --Hateful Gladiator's Mooncloth Gloves
			{ itemID = 41862, "45 #eofvalor#" }, --Hateful Gladiator's Mooncloth Leggings
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Gladiator's Investiture" },
			{ itemID = 41848, "45 #eofheroism#" }, --Savage Gladiator's Mooncloth Hood
			{ itemID = 41850, "30 #eofheroism#" }, --Savage Gladiator's Mooncloth Mantle
			{ itemID = 41851, "45 #eofheroism#" }, --Savage Gladiator's Mooncloth Robe
			{ itemID = 41847, "30 #eofheroism#" }, --Savage Gladiator's Mooncloth Gloves
			{ itemID = 41849, "45 #eofheroism#" }, --Savage Gladiator's Mooncloth Leggings
		},
	},
}


AtlasLoot_Data["ArenaRogueWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
	{
		Name = "Page 1",
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Gladiator's Vestments" },
			{ itemID = 51494, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Leather Helm
			{ itemID = 51496, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Leather Spaulders
			{ itemID = 51492, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Leather Tunic
			{ itemID = 51493, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Leather Gloves
			{ itemID = 51495, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Leather Legguards
			{ icon = "Ability_BackStab", name = "=q6=".."Gladiator's Vestments" },
			{ itemID = 41673, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Leather Helm
			{ itemID = 41684, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Leather Spaulders
			{ itemID = 41651, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Leather Tunic
			{ itemID = 41768, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Leather Gloves
			{ itemID = 41656, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Leather Legguards
		},
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Gladiator's Vestments" },
			{ itemID = 41672, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Leather Helm
			{ itemID = 41683, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Leather Spaulders
			{ itemID = 41650, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Leather Tunic
			{ itemID = 41767, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Leather Gloves
			{ itemID = 41655, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Leather Legguards
			{ icon = "Ability_BackStab", name = "=q6=".."Gladiator's Vestments" },
			{ itemID = 41671, "58 #eofconquest#" }, --Deadly Gladiator's Leather Helm
			{ itemID = 41682, "46 #eofconquest#" }, --Deadly Gladiator's Leather Spaulders
			{ itemID = 41649, "58 #eofconquest#" }, --Deadly Gladiator's Leather Tunic
			{ itemID = 41766, "46 #eofconquest#" }, --Deadly Gladiator's Leather Gloves
			{ itemID = 41654, "58 #eofconquest#" }, --Deadly Gladiator's Leather Legguards
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Gladiator's Vestments" },
			{ itemID = 41670, "45 #eofvalor#" }, --Hateful Gladiator's Leather Helm
			{ itemID = 41681, "30 #eofvalor#" }, --Hateful Gladiator's Leather Spaulders
			{ itemID = 41648, "45 #eofvalor#" }, --Hateful Gladiator's Leather Tunic
			{ itemID = 41765, "30 #eofvalor#" }, --Hateful Gladiator's Leather Gloves
			{ itemID = 41653, "45 #eofvalor#" }, --Hateful Gladiator's Leather Legguards
			{ icon = "Ability_BackStab", name = "=q6=".."Gladiator's Vestments" },
			{ itemID = 41644, "45 #eofheroism#" }, --Savage Gladiator's Leather Helm
			{ itemID = 41646, "30 #eofheroism#" }, --Savage Gladiator's Leather Spaulders
			{ itemID = 41647, "45 #eofheroism#" }, --Savage Gladiator's Leather Tunic
			{ itemID = 41643, "30 #eofheroism#" }, --Savage Gladiator's Leather Gloves
			{ itemID = 41645, "45 #eofheroism#" }, --Savage Gladiator's Leather Legguards
		},
	},
}

AtlasLoot_Data["ArenaShamanWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],
	{
		Name = "Elemental" .. "Page 1",
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Gladiator's Thunderfist" },
			{ itemID = 51511, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Mail Helm
			{ itemID = 51514, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Mail Spaulders
			{ itemID = 51509, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Mail Armor
			{ itemID = 51510, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Mail Gauntlets
			{ itemID = 51512, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Mail Leggings
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Gladiator's Thunderfist" },
			{ itemID = 41020, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Mail Helm
			{ itemID = 41045, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Mail Spaulders
			{ itemID = 40995, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Mail Armor
			{ itemID = 41008, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Mail Gauntlets
			{ itemID = 41034, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Mail Leggings
		},
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Gladiator's Thunderfist" },
			{ itemID = 41019, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Mail Helm
			{ itemID = 41044, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Mail Spaulders
			{ itemID = 40993, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Mail Armor
			{ itemID = 41007, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Mail Gauntlets
			{ itemID = 41033, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Mail Leggings
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Gladiator's Thunderfist" },
			{ itemID = 41018, "58 #eofconquest#" }, --Deadly Gladiator's Mail Helm
			{ itemID = 41043, "46 #eofconquest#" }, --Deadly Gladiator's Mail Spaulders
			{ itemID = 40991, "58 #eofconquest#" }, --Deadly Gladiator's Mail Armor
			{ itemID = 41006, "46 #eofconquest#" }, --Deadly Gladiator's Mail Gauntlets
			{ itemID = 41032, "58 #eofconquest#" }, --Deadly Gladiator's Mail Leggings
		},
	},
	{
		Name = "Elemental" .. "Page 2",
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Gladiator's Thunderfist" },
			{ itemID = 41017, "45 #eofvalor#" }, --Hateful Gladiator's Mail Helm
			{ itemID = 41042, "30 #eofvalor#" }, --Hateful Gladiator's Mail Spaulders
			{ itemID = 40989, "45 #eofvalor#" }, --Hateful Gladiator's Mail Armor
			{ itemID = 41005, "30 #eofvalor#" }, --Hateful Gladiator's Mail Gauntlets
			{ itemID = 41031, "45 #eofvalor#" }, --Hateful Gladiator's Mail Leggings
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Gladiator's Thunderfist" },
			{ itemID = 41016, "45 #eofheroism#" }, --Savage Gladiator's Mail Helm
			{ itemID = 41041, "30 #eofheroism#" }, --Savage Gladiator's Mail Spaulders
			{ itemID = 40987, "45 #eofheroism#" }, --Savage Gladiator's Mail Armor
			{ itemID = 41004, "30 #eofheroism#" }, --Savage Gladiator's Mail Gauntlets
			{ itemID = 41030, "45 #eofheroism#" }, --Savage Gladiator's Mail Leggings
		},
	},
	{
		Name = "Enhancement" .. "Page 1",
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Gladiator's Earthshaker" },
			{ itemID = 51505, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Linked Helm
			{ itemID = 51508, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Linked Spaulders
			{ itemID = 51503, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Linked Armor
			{ itemID = 51504, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Linked Gauntlets
			{ itemID = 51506, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Linked Leggings
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Gladiator's Earthshaker" },
			{ itemID = 41152, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Linked Helm
			{ itemID = 41212, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Linked Spaulders
			{ itemID = 41082, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Linked Armor
			{ itemID = 41138, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Linked Gauntlets
			{ itemID = 41200, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Linked Leggings
		},
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Gladiator's Earthshaker" },
			{ itemID = 41151, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Linked Helm
			{ itemID = 41211, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Linked Spaulders
			{ itemID = 41081, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Linked Armor
			{ itemID = 41137, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Linked Gauntlets
			{ itemID = 41199, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Linked Leggings
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Gladiator's Earthshaker" },
			{ itemID = 41150, "58 #eofconquest#" }, --Deadly Gladiator's Linked Helm
			{ itemID = 41210, "46 #eofconquest#" }, --Deadly Gladiator's Linked Spaulders
			{ itemID = 41080, "58 #eofconquest#" }, --Deadly Gladiator's Linked Armor
			{ itemID = 41136, "46 #eofconquest#" }, --Deadly Gladiator's Linked Gauntlets
			{ itemID = 41198, "58 #eofconquest#" }, --Deadly Gladiator's Linked Leggings
		},
	},
	{
		Name = "Enhancement" .. "Page 2",
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Gladiator's Earthshaker" },
			{ itemID = 41149, "45 #eofvalor#" }, --Hateful Gladiator's Linked Helm
			{ itemID = 41209, "30 #eofvalor#" }, --Hateful Gladiator's Linked Spaulders
			{ itemID = 41079, "45 #eofvalor#" }, --Hateful Gladiator's Linked Armor
			{ itemID = 41135, "30 #eofvalor#" }, --Hateful Gladiator's Linked Gauntlets
			{ itemID = 41162, "45 #eofvalor#" }, --Hateful Gladiator's Linked Leggings
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Gladiator's Earthshaker" },
			{ itemID = 41148, "45 #eofheroism#" }, --Savage Gladiator's Linked Helm
			{ itemID = 41208, "30 #eofheroism#" }, --Savage Gladiator's Linked Spaulders
			{ itemID = 41078, "45 #eofheroism#" }, --Savage Gladiator's Linked Armor
			{ itemID = 41134, "30 #eofheroism#" }, --Savage Gladiator's Linked Gauntlets
			{ itemID = 41160, "45 #eofheroism#" }, --Savage Gladiator's Linked Leggings
		},
	},
	{
		Name = "Restoration" .. "Page 1",
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Gladiator's Wartide" },
			{ itemID = 51499, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Ringmail Helm
			{ itemID = 51502, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Ringmail Spaulders
			{ itemID = 51497, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Ringmail Armor
			{ itemID = 51498, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Ringmail Gauntlets
			{ itemID = 51500, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Ringmail Leggings
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Gladiator's Wartide" },
			{ itemID = 41014, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Ringmail Helm
			{ itemID = 41039, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Ringmail Spaulders
			{ itemID = 40994, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Ringmail Armor
			{ itemID = 41002, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Ringmail Gauntlets
			{ itemID = 41028, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Ringmail Leggings
		},
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Gladiator's Wartide" },
			{ itemID = 41013, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Ringmail Helm
			{ itemID = 41038, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Ringmail Spaulders
			{ itemID = 40992, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Ringmail Armor
			{ itemID = 41001, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Ringmail Gauntlets
			{ itemID = 41027, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Ringmail Leggings
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Gladiator's Wartide" },
			{ itemID = 41012, "58 #eofconquest#" }, --Deadly Gladiator's Ringmail Helm
			{ itemID = 41037, "46 #eofconquest#" }, --Deadly Gladiator's Ringmail Spaulders
			{ itemID = 40990, "58 #eofconquest#" }, --Deadly Gladiator's Ringmail Armor
			{ itemID = 41000, "46 #eofconquest#" }, --Deadly Gladiator's Ringmail Gauntlets
			{ itemID = 41026, "58 #eofconquest#" }, --Deadly Gladiator's Ringmail Leggings
		},
	},
	{
		Name = "Restoration" .. "Page 2",
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Gladiator's Wartide" },
			{ itemID = 41011, "45 #eofvalor#" }, --Hateful Gladiator's Ringmail Helm
			{ itemID = 41036, "30 #eofvalor#" }, --Hateful Gladiator's Ringmail Spaulders
			{ itemID = 40988, "45 #eofvalor#" }, --Hateful Gladiator's Ringmail Armor
			{ itemID = 40999, "30 #eofvalor#" }, --Hateful Gladiator's Ringmail Gauntlets
			{ itemID = 41025, "45 #eofvalor#" }, --Hateful Gladiator's Ringmail Leggings
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Gladiator's Wartide" },
			{ itemID = 41010, "45 #eofheroism#" }, --Savage Gladiator's Ringmail Helm
			{ itemID = 41024, "30 #eofheroism#" }, --Savage Gladiator's Ringmail Spaulders
			{ itemID = 40986, "45 #eofheroism#" }, --Savage Gladiator's Ringmail Armor
			{ itemID = 40998, "30 #eofheroism#" }, --Savage Gladiator's Ringmail Gauntlets
			{ itemID = 41023, "45 #eofheroism#" }, --Savage Gladiator's Ringmail Leggings
		},
	},
}


AtlasLoot_Data["ArenaWarlockWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
	{
		Name = "Page 1",
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gladiator's Felshroud" },
			{ itemID = 51538, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Felweave Cowl
			{ itemID = 51540, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Felweave Amice
			{ itemID = 51536, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Felweave Raiment
			{ itemID = 51537, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Felweave Handguards
			{ itemID = 51539, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Felweave Trousers
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gladiator's Felshroud" },
			{ itemID = 41994, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Felweave Cowl
			{ itemID = 42012, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Felweave Amice
			{ itemID = 41999, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Felweave Raiment
			{ itemID = 42018, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Felweave Handguards
			{ itemID = 42006, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Felweave Trousers
		},
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gladiator's Felshroud" },
			{ itemID = 41993, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Felweave Cowl
			{ itemID = 42011, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Felweave Amice
			{ itemID = 41998, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Felweave Raiment
			{ itemID = 42017, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Felweave Handguards
			{ itemID = 42005, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Felweave Trousers
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gladiator's Felshroud" },
			{ itemID = 41992, "58 #eofconquest#" }, --Deadly Gladiator's Felweave Cowl
			{ itemID = 42010, "46 #eofconquest#" }, --Deadly Gladiator's Felweave Amice
			{ itemID = 41997, "58 #eofconquest#" }, --Deadly Gladiator's Felweave Raiment
			{ itemID = 42016, "46 #eofconquest#" }, --Deadly Gladiator's Felweave Handguards
			{ itemID = 42004, "58 #eofconquest#" }, --Deadly Gladiator's Felweave Trousers
		},

	},
	{
		Name = "Page 2",
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gladiator's Felshroud" },
			{ itemID = 41991, "45 #eofvalor#" }, --Hateful Gladiator's Felweave Cowl
			{ itemID = 42009, "30 #eofvalor#" }, --Hateful Gladiator's Felweave Amice
			{ itemID = 42001, "45 #eofvalor#" }, --Hateful Gladiator's Felweave Raiment
			{ itemID = 42015, "30 #eofvalor#" }, --Hateful Gladiator's Felweave Handguards
			{ itemID = 42003, "45 #eofvalor#" }, --Hateful Gladiator's Felweave Trousers
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gladiator's Felshroud" },
			{ itemID = 41990, "45 #eofheroism#" }, --Savage Gladiator's Felweave Cowl
			{ itemID = 42008, "30 #eofheroism#" }, --Savage Gladiator's Felweave Amice
			{ itemID = 41996, "45 #eofheroism#" }, --Savage Gladiator's Felweave Raiment
			{ itemID = 42014, "30 #eofheroism#" }, --Savage Gladiator's Felweave Handguards
			{ itemID = 42002, "45 #eofheroism#" }, --Savage Gladiator's Felweave Trousers
		},
	},
}

AtlasLoot_Data["ArenaWarriorWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
	{
		Name = "Page 1",
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Gladiator's Battlegear" },
			{ itemID = 51543, "2370 #arena# ".."Rating:".." 1950" }, --Wrathful Gladiator's Plate Helm
			{ itemID = 51545, "1930 #arena# ".."Rating:".." 2000" }, --Wrathful Gladiator's Plate Shoulders
			{ itemID = 51541, "2370 #arena# ".."Rating:".." 1600" }, --Wrathful Gladiator's Plate Chestpiece
			{ itemID = 51542, "1430 #arena# ".."Rating:".." 1400" }, --Wrathful Gladiator's Plate Gauntlets
			{ itemID = 51544, "2370 #arena# ".."Rating:".." 1500" }, --Wrathful Gladiator's Plate Legguards
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Gladiator's Battlegear" },
			{ itemID = 40829, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Plate Helm
			{ itemID = 40870, "10550 #faction# 600 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Plate Shoulders
			{ itemID = 40790, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Plate Chestpiece
			{ itemID = 40810, "8000 #faction# 440 #arena# / 60 #eoffrost#" }, --Relentless Gladiator's Plate Gauntlets
			{ itemID = 40850, "13200 #faction# 770 #arena# / 95 #eoffrost#" }, --Relentless Gladiator's Plate Legguards
		},
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Gladiator's Battlegear" },
			{ itemID = 40826, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Plate Helm
			{ itemID = 40866, "34700 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Plate Shoulders
			{ itemID = 40789, "54500 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Plate Chestpiece
			{ itemID = 40807, "43400 #faction# / 50 #eoftriumph#" }, --Furious Gladiator's Plate Gauntlets
			{ itemID = 40847, "34700 #faction# / 75 #eoftriumph#" }, --Furious Gladiator's Plate Legguards
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Gladiator's Battlegear" },
			{ itemID = 40823, "58 #eofconquest#" }, --Deadly Gladiator's Plate Helm
			{ itemID = 40862, "46 #eofconquest#" }, --Deadly Gladiator's Plate Shoulders
			{ itemID = 40786, "58 #eofconquest#" }, --Deadly Gladiator's Plate Chestpiece
			{ itemID = 40804, "46 #eofconquest#" }, --Deadly Gladiator's Plate Gauntlets
			{ itemID = 40844, "58 #eofconquest#" }, --Deadly Gladiator's Plate Legguards
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Gladiator's Battlegear" },
			{ itemID = 40819, "45 #eofvalor#" }, --Hateful Gladiator's Plate Helm
			{ itemID = 40859, "30 #eofvalor#" }, --Hateful Gladiator's Plate Shoulders
			{ itemID = 40783, "45 #eofvalor#" }, --Hateful Gladiator's Plate Chestpiece
			{ itemID = 40801, "30 #eofvalor#" }, --Hateful Gladiator's Plate Gauntlets
			{ itemID = 40840, "45 #eofvalor#" }, --Hateful Gladiator's Plate Legguards
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Gladiator's Battlegear" },
			{ itemID = 40816, "45 #eofheroism#" }, --Savage Gladiator's Plate Helm
			{ itemID = 40856, "30 #eofheroism#" }, --Savage Gladiator's Plate Shoulders
			{ itemID = 40778, "45 #eofheroism#" }, --Savage Gladiator's Plate Chestpiece
			{ itemID = 40797, "30 #eofheroism#" }, --Savage Gladiator's Plate Gauntlets
			{ itemID = 40836, "45 #eofheroism#" }, --Savage Gladiator's Plate Legguards
		},
	},
}
------------------------------
--- Level 80 Epic Non-Sets ---
------------------------------

AtlasLoot_Data["PvP80NonSet"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "PvP Non-Set Epics",
	{
		Name = "Page 1",
	{
			{ itemID = 51334, "52200 #faction#" }, --Wrathful Gladiator's Cloak of Ascendancy
		{ itemID = 51348, "52200 #faction#" }, --Wrathful Gladiator's Cloak of Deliverance
		{ itemID = 51330, "52200 #faction#" }, --Wrathful Gladiator's Cloak of Dominance
		{ itemID = 51346, "52200 #faction#" }, --Wrathful Gladiator's Cloak of Salvation
		{ itemID = 51332, "52200 #faction#" }, --Wrathful Gladiator's Cloak of Subjugation
		{ itemID = 51354, "52200 #faction#" }, --Wrathful Gladiator's Cloak of Triumph
		{ itemID = 51356, "52200 #faction#" }, --Wrathful Gladiator's Cloak of Victory
		{ itemID = 51336, "52200 #faction#" }, --Wrathful Gladiator's Band of Dominance
		{ itemID = 51358, "52200 #faction#" }, --Wrathful Gladiator's Band of Triumph
		{ itemID = 51377, "68200 #faction#" }, --Medallion of the Alliance
		{ itemID = 51378, "68200 #faction#" }, --Medallion of the Horde
	},
		{
			{ itemID = 51335, "52200 #faction#" }, --Wrathful Gladiator's Pendant of Ascendancy
		{ itemID = 51349, "52200 #faction#" }, --Wrathful Gladiator's Pendant of Deliverance
		{ itemID = 51331, "52200 #faction#" }, --Wrathful Gladiator's Pendant of Dominance
		{ itemID = 51347, "52200 #faction#" }, --Wrathful Gladiator's Pendant of Salvation
		{ itemID = 51333, "52200 #faction#" }, --Wrathful Gladiator's Pendant of Subjugation
		{ itemID = 51353, "52200 #faction#" }, --Wrathful Gladiator's Pendant of Sundering
		{ itemID = 51355, "52200 #faction#" }, --Wrathful Gladiator's Pendant of Triumph
		{ itemID = 51357, "52200 #faction#" }, --Wrathful Gladiator's Pendant of Victory
		{ itemID = 42133, "34100 #faction#" }, --Battlemaster's Fury
		{ itemID = 42134, "34100 #faction#" }, --Battlemaster's Precision
		{ itemID = 42136, "34100 #faction#" }, --Battlemaster's Rage
		{ itemID = 42137, "34100 #faction#" }, --Battlemaster's Ruination
		{ itemID = 42135, "34100 #faction#" }, --Battlemaster's Vivacity
	},
},
{
	Name = "Page 2",
	{
			{ itemID = 42078, "26100 #faction#" }, --Relentless Gladiator's Cloak of Ascendancy
		{ itemID = 42080, "26100 #faction#" }, --Relentless Gladiator's Cloak of Deliverance
		{ itemID = 42076, "26100 #faction#" }, --Relentless Gladiator's Cloak of Dominance
		{ itemID = 42079, "26100 #faction#" }, --Relentless Gladiator's Cloak of Salvation
		{ itemID = 42077, "26100 #faction#" }, --Relentless Gladiator's Cloak of Subjugation
		{ itemID = 42081, "26100 #faction#" }, --Relentless Gladiator's Cloak of Triumph
		{ itemID = 42082, "26100 #faction#" }, --Relentless Gladiator's Cloak of Victory
		{ itemID = 42118, "26100 #faction#" }, --Relentless Gladiator's Band of Ascendancy
		{ itemID = 42119, "26100 #faction#" }, --Relentless Gladiator's Band of Victory
	},
		{
			{ itemID = 42044, "26100 #faction#" }, --Relentless Gladiator's Pendant of Ascendancy
		{ itemID = 42046, "26100 #faction#" }, --Relentless Gladiator's Pendant of Deliverance
		{ itemID = 42043, "26100 #faction#" }, --Relentless Gladiator's Pendant of Dominance
		{ itemID = 42047, "26100 #faction#" }, --Relentless Gladiator's Pendant of Salvation
		{ itemID = 42045, "26100 #faction#" }, --Relentless Gladiator's Pendant of Subjugation
		{ itemID = 46374, "26100 #faction#" }, --Relentless Gladiator's Pendant of Sundering
		{ itemID = 42041, "26100 #faction#" }, --Relentless Gladiator's Pendant of Triumph
		{ itemID = 42042, "26100 #faction#" }, --Relentless Gladiator's Pendant of Victory
		},
},
{
	Name = "Cloth",
	{
			{ itemID = 51329, "43400 #faction#" }, --Wrathful Gladiator's Cuffs of Dominance
		{ itemID = 51327, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Cord of Dominance
		{ itemID = 51328, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Treads of Dominance
		{ itemID = 51367, "43400 #faction#" }, --Wrathful Gladiator's Cuffs of Salvation
		{ itemID = 51365, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Cord of Salvation
		{ itemID = 51366, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Treads of Salvation
		{ itemID = 51339, "43400 #faction#" }, --Wrathful Gladiator's Cuffs of Alacrity
		{ itemID = 51337, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Cord of Alacrity
		{ itemID = 51338, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Treads of Alacrity
	},
		{
			{ itemID = 41910, "21700 #faction#" }, --Relentless Gladiator's Cuffs of Dominance
		{ itemID = 41899, "34100 #faction#" }, --Relentless Gladiator's Cord of Dominance
		{ itemID = 41904, "34100 #faction#" }, --Relentless Gladiator's Treads of Dominance
		{ itemID = 41894, "21700 #faction#" }, --Relentless Gladiator's Cuffs of Salvation
		{ itemID = 41882, "34100 #faction#" }, --Relentless Gladiator's Cord of Salvation
		{ itemID = 41886, "34100 #faction#" }, --Relentless Gladiator's Treads of Salvation
		{ itemID = 49181, "21700 #faction#" }, --Relentless Gladiator's Cuffs of Alacrity
		{ itemID = 49179, "34100 #faction#" }, --Relentless Gladiator's Cord of Alacrity
		{ itemID = 49183, "34100 #faction#" }, --Relentless Gladiator's Treads of Alacrity
		},
},
{
	Name = "Leather",
	{
			{ itemID = 51345, "43400 #faction#" }, --Wrathful Gladiator's Armwraps of Dominance
		{ itemID = 51343, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Belt of Dominance
		{ itemID = 51344, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Boots of Dominance
		{ itemID = 51342, "43400 #faction#" }, --Wrathful Gladiator's Armwraps of Salvation
		{ itemID = 51340, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Belt of Salvation
		{ itemID = 51341, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Boots of Salvation
		{ itemID = 51370, "43400 #faction#" }, --Wrathful Gladiator's Armwraps of Triumph
		{ itemID = 51368, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Belt of Triumph
		{ itemID = 51369, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Boots of Triumph
	},
		{
			{ itemID = 41641, "21700 #faction#" }, --Relentless Gladiator's Armwraps of Dominance
		{ itemID = 41631, "34100 #faction#" }, --Relentless Gladiator's Belt of Dominance
		{ itemID = 41636, "34100 #faction#" }, --Relentless Gladiator's Boots of Dominance
		{ itemID = 41626, "21700 #faction#" }, --Relentless Gladiator's Armwraps of Salvation
		{ itemID = 41618, "34100 #faction#" }, --Relentless Gladiator's Belt of Salvation
		{ itemID = 41622, "34100 #faction#" }, --Relentless Gladiator's Boots of Salvation
		{ itemID = 41841, "21700 #faction#" }, --Relentless Gladiator's Armwraps of Triumph
		{ itemID = 41833, "34100 #faction#" }, --Relentless Gladiator's Belt of Triumph
		{ itemID = 41837, "34100 #faction#" }, --Relentless Gladiator's Boots of Triumph
		},
},
{
	Name = "Mail",
	{
			{ itemID = 51376, "43400 #faction#" }, --Wrathful Gladiator's Wristguards of Dominance
		{ itemID = 51374, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Waistguard of Dominance
		{ itemID = 51375, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Sabatons of Dominance
		{ itemID = 51373, "43400 #faction#" }, --Wrathful Gladiator's Wristguards of Salvation
		{ itemID = 51371, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Waistguard of Salvation
		{ itemID = 51372, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Sabatons of Salvation
		{ itemID = 51352, "43400 #faction#" }, --Wrathful Gladiator's Wristguards of Triumph
		{ itemID = 51350, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Waistguard of Triumph
		{ itemID = 51351, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Sabatons of Triumph
	},
		{
			{ itemID = 41066, "21700 #faction#" }, --Relentless Gladiator's Wristguards of Dominance
		{ itemID = 41071, "34100 #faction#" }, --Relentless Gladiator's Waistguard of Dominance
		{ itemID = 41076, "34100 #faction#" }, --Relentless Gladiator's Sabatons of Dominance
		{ itemID = 41061, "21700 #faction#" }, --Relentless Gladiator's Wristguards of Salvation
		{ itemID = 41052, "34100 #faction#" }, --Relentless Gladiator's Waistguard of Salvation
		{ itemID = 41056, "34100 #faction#" }, --Relentless Gladiator's Sabatons of Salvation
		{ itemID = 41226, "21700 #faction#" }, --Relentless Gladiator's Wristguards of Triumph
		{ itemID = 41236, "34100 #faction#" }, --Relentless Gladiator's Waistguard of Triumph
		{ itemID = 41231, "34100 #faction#" }, --Relentless Gladiator's Sabatons of Triumph
		},
},
{
	Name = "Plate",
	{
			{ itemID = 51361, "43400 #faction#" }, --Wrathful Gladiator's Bracers of Salvation
		{ itemID = 51359, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Girdle of Salvation
		{ itemID = 51360, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Greaves of Salvation
		{ itemID = 51364, "43400 #faction#" }, --Wrathful Gladiator's Bracers of Triumph
		{ itemID = 51362, "68200 #faction# ".."Rating:".." 1300" }, --Wrathful Gladiator's Girdle of Triumph
		{ itemID = 51363, "68200 #faction# ".."Rating:".." 1400" }, --Wrathful Gladiator's Greaves of Triumph
	},
		{
			{ itemID = 40984, "21700 #faction#" }, --Relentless Gladiator's Bracers of Salvation
		{ itemID = 40978, "34100 #faction#" }, --Relentless Gladiator's Girdle of Salvation
		{ itemID = 40979, "34100 #faction#" }, --Relentless Gladiator's Greaves of Salvation
		{ itemID = 40890, "21700 #faction#" }, --Relentless Gladiator's Bracers of Triumph
		{ itemID = 40883, "34100 #faction#" }, --Relentless Gladiator's Girdle of Triumph
		{ itemID = 40884, "34100 #faction#" }, --Relentless Gladiator's Greaves of Triumph
		},
},
}

------------------------------------
--- Wrathful Gladiator Weapons ---
------------------------------------
AtlasLoot_Data["WeaponsWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Arena " .. "Weapons",
	{
		Name = "Page 1",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Low Level" },
			{ itemID = 51523,"38500 #faction# 1090 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Right Ripper
			{ itemID = 51530,"16500 #faction# 450 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Left Render
			{ itemID = 51443,"15000 #faction# 1100 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Left Ripper
			{ itemID = 51406,"38500 #faction# 1300 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Blade of Alacrity
			{ itemID = 51397,"38500 #faction# 1300 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Spellblade
			{ itemID = 51517, "38500 #faction# 1090 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Shanker
			{ itemID = 51527, "16500 #faction# 450 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Mutilator
			{ itemID = 51441, "16500 #faction# 450 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Shiv
			{ itemID = 51521, "38500 #faction# 1090 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Slicer
			{ itemID = 51447,"16500 #faction# 450 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Quickblade
			{ itemID = 51392,"55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Greatsword
			{ itemID = 51515, "38500 #faction# 1090 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Cleaver
			{ itemID = 51525, "16500 #faction# 450 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Chopper
			{ itemID = 51439, "16500 #faction# 450 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Hacker
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "High Level" },
			{ itemID = 51524, "3300 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Grasp
			{ itemID = 51529, "1370 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Left Claw
			{ itemID = 51444, "1370 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Left Razor
			{ itemID = 51398, "3950 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Blade of Celerity
			{ itemID = 51399, "3950 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Mageblade
			{ itemID = 51518, "3300 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Spike
			{ itemID = 51442, "1370 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Dirk
			{ itemID = 51528, "1370 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Eviscerator
			{ itemID = 51522, "3300 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Longblade
			{ itemID = 51448, "1370 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Swiftblade
			{ itemID = 51393, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Claymore
			{ itemID = 51516, "3300 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Handaxe
			{ itemID = 51440, "1370 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Dicer
			{ itemID = 51526, "1370 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Splitter
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Low Level" },
			{ itemID = 51388, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Decapitator
			{ itemID = 51453, "38500 #faction# 1300 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Gavel
			{ itemID = 51519, "38500 #faction# 1090 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Pummeler
			{ itemID = 51445, "16500 #faction# 450 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Bonecracker
			{ itemID = 51390, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Bonegrinder
			{ itemID = 51480, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Pike
			{ itemID = 51404, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Battle Staff
			{ itemID = 51456, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Energy Staff
			{ itemID = 51402, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Focus Staff
			{ itemID = 51431, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Staff
			{ itemID = 51400, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's War Staff
			{ itemID = 51394, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Longbow
			{ itemID = 51411, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Heavy Crossbow
			{ itemID = 51449, "55000 #faction# 1540 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Rifle
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "High Level" },
			{ itemID = 51389, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Sunderer
			{ itemID = 51454, "3950 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Salvation
			{ itemID = 51520, "3300 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Truncheon
			{ itemID = 51446, "1370 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Punisher
			{ itemID = 51391, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Crusher
			{ itemID = 51481, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Halberd
			{ itemID = 51403, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Acute Staff
			{ itemID = 51401, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Combat Staff
			{ itemID = 51432, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Greatstaff
			{ itemID = 51457, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Light Staff
			{ itemID = 51405, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Skirmish Staff
			{ itemID = 51395, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Recurve
			{ itemID = 51412, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Repeater
			{ itemID = 51450, "4670 #arena# ".."Rating:".." 2200" }, --Wrathful Gladiator's Shotgun
		},
	},
	{
		Name = "Page 3",
		{
			{ itemID = 51452, "350 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Barrier
			{ itemID = 51455, "350 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Redoubt
			{ itemID = 51533, "350 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Shield Wall
			{ itemID = 51535, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's War Edge
			{ itemID = 51532, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Baton of Light
			{ itemID = 51531, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Piercing Touch
			{ itemID = 51410, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Touch of Defeat
			{ itemID = 51451, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Wand of Alacrity
			{ itemID = 51407, "350 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Compendium
			{ itemID = 51396, "350 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Endgame
			{ itemID = 51408, "350 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Grimoire
			{ itemID = 51409, "350 #arena# ".."Rating:".." 1800" }, --Wrathful Gladiator's Reprieve
		},
	},
}

-----------------------
--- PvP Class Items ---
-----------------------

AtlasLoot_Data["PVPidolWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Idols/Librams/Sigils/Totems",
	{
		Name = "Page 1",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Idols" },
			{ itemID = 51429, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Idol of Resolve
			{ itemID = 51437, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Idol of Steadfastness
			{ itemID = 51423, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Idol of Tenacity
			{ itemID = 42591, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Idol of Resolve
			{ itemID = 42585, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Idol of Steadfastness
			{ itemID = 42580, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Idol of Tenacity
			{ itemID = 42589, "12000 #faction#" }, --Furious Gladiator's Idol of Resolve
			{ itemID = 42584, "12000 #faction#" }, --Furious Gladiator's Idol of Steadfastness
			{ itemID = 42579, "12000 #faction#" }, --Furious Gladiator's Idol of Tenacity
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Librams" },
			{ itemID = 51478, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Libram of Fortitude
			{ itemID = 51472, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Libram of Justice
			{ itemID = 42854, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Libram of Fortitude
			{ itemID = 42616, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Libram of Justice
			{ itemID = 42853, "12000 #faction#" }, --Furious Gladiator's Libram of Fortitude
			{ itemID = 42615, "12000 #faction#" }, --Furious Gladiator's Libram of Justice
		},
	},
	{
		Name = "Page 2",
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Sigils" },
			{ itemID = 51417, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Sigil of Strife
			{ itemID = 42622, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Sigil of Strife
			{ itemID = 42621, "12000 #faction#" }, --Furious Gladiator's Sigil of Strife
		},
		{
			{ icon = "INV_Box_01", name = color.WHITE.. "Totems" },
			{ itemID = 51507, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Totem of Indomitability
			{ itemID = 51513, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Totem of Survival
			{ itemID = 51501, "1260 #arena# ".."Rating:".." 1700" }, --Wrathful Gladiator's Totem of the Third Wind
			{ itemID = 42609, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Totem of Indomitability
			{ itemID = 42604, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Totem of Survival
			{ itemID = 42599, "6400 #faction# 350 #arena# ".."Rating:".." 700" }, --Relentless Gladiator's Totem of the Third Wind
			{ itemID = 42608, "12000 #faction#" }, --Furious Gladiator's Totem of Indomitability
			{ itemID = 42603, "12000 #faction#" }, --Furious Gladiator's Totem of Survival
		},
	},
}
-------------------------
--- PvP Miscellaneous ---
-------------------------

AtlasLoot_Data["PvP80Misc"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "PvP Misc",
	{
		Name = "PvP Misc",
		{
			{ itemID = 51534, "550 #arena# ".."Rating:".." 2300" }, --Wrathful Gladiator's Tabard
			{ itemID = 44957, price = "10000 #faction#" }, --Greater Inscription of the Gladiator
			{ itemID = 45706, "100 #arena#" }, --Commendation of Bravery
			{ itemID = 36931, "10000 #faction#" }, --Ametrine
			{ itemID = 36919, "10000 #faction#" }, --Cardinal Ruby
			{ itemID = 36928, "10000 #faction#" }, --Dreadstone
			{ itemID = 36934, "10000 #faction#" }, --Eye of Zul
			{ itemID = 36922, "10000 #faction#" }, --King's Amber
			{ itemID = 36925, "10000 #faction#" }, --Majestic Zircon
		},
		{
			{ itemID = 41563, "1250 #faction#" }, --Design: Durable Huge Citrine
			{ itemID = 41564, "1250 #faction#" }, --Design: Empowered Huge Citrine
			{ itemID = 41565, "1250 #faction#" }, --Design: Lucent Huge Citrine
			{ itemID = 41575, "1250 #faction#" }, --Design: Mysterious Shadow Crystal
			{ itemID = 41559, "1250 #faction#" }, --Design: Mystic Sun Crystal
			{ itemID = 41573, "1250 #faction#" }, --Design: Opaque Dark Jade
			{ itemID = 41566, "1250 #faction#" }, --Design: Resplendent Huge Citrine
			{ itemID = 41569, "1250 #faction#" }, --Design: Shattered Dark Jade
			{ itemID = 41572, "1250 #faction#" }, --Design: Steady Dark Jade
			{ itemID = 41560, "1250 #faction#" }, --Design: Stormy Chalcedony
			{ itemID = 41570, "1250 #faction#" }, --Design: Tense Dark Jade
			{ itemID = 41571, "1250 #faction#" }, --Design: Turbid Dark Jade
		},
	},
}

--------------------------------
--- World PvP - Wintergrasp  ---
--------------------------------

AtlasLoot_Data["LakeWintergrasp"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Wintergrasp",
	{
		Name = "Page 1",
		{
			{ itemID = 51570, "25 #wintergraspmark#" }, --Titan-Forged Cloak of Ascendancy
			{ itemID = 51571, "25 #wintergraspmark#" }, --Titan-Forged Cloak of Victory
			{ itemID = 46083, "25 #wintergraspmark#" }, --Titan-Forged Rune of Accuracy
			{ itemID = 46085, "25 #wintergraspmark#" }, --Titan-Forged Rune of Alacrity
			{ itemID = 46081, "25 #wintergraspmark#" }, --Titan-Forged Rune of Audacity
			{ itemID = 46084, "25 #wintergraspmark#" }, --Titan-Forged Rune of Cruelty
			{ itemID = 46082, "25 #wintergraspmark#" }, --Titan-Forged Rune of Determination
			{ itemID = 43956, "300 #wintergrasp#" }, --Reins of the Black War Mammoth
			{ itemID = 44077, "300 #wintergrasp#" }, --Reins of the Black War Mammoth
		},
		{
			{ itemID = 51568, "25 #wintergraspmark#" }, --Titan-Forged Pendant of Ascendancy
			{ itemID = 51569, "25 #wintergraspmark#" }, --Titan-Forged Pendant of Victory
			{ itemID = 44914, "25 #wintergraspmark#" }, --Anvil of Titans
			{ itemID = 44912, "25 #wintergraspmark#" }, --Flow of Knowledge
			{ itemID = 46086, "25 #wintergraspmark#" }, --Platinum Disks of Battle
			{ itemID = 46088, "25 #wintergraspmark#" }, --Platinum Disks of Swiftness
			{ itemID = 46087, "25 #wintergraspmark#" }, --Platinum Disks of Sorcery
			{ itemID = 48999, "15 #wintergraspmark#" }, --Titan-Forged Band of Ascendancy
			{ itemID = 49000, "15 #wintergraspmark#" }, --Titan-Forged Band of Victory
		},
	},
	{
		Name = "Page 2",
			{ itemID = 44910, "40 #wintergraspmark#" }, --Titan-Forged Hood of Dominance
			{ itemID = 51573, "40 #wintergraspmark#" }, --Titan-Forged Shoulderpads of Domination
			{ itemID = 46065, "40 #wintergraspmark#" }, --Titan-Forged Raiment of Dominance
			{ itemID = 46079, "15 #wintergraspmark#" }, --Titan-Forged Cord of Dominance
			{ itemID = 48997, "40 #wintergraspmark#" }, --Titan-Forged Cloth Trousers of Domination
			{ itemID = 44899, "15 #wintergraspmark#" }, --Titan-Forged Slippers of Dominance
	},
	{
			{ itemID = 44909, "40 #wintergraspmark#" }, --Titan-Forged Hood of Salvation
			{ itemID = 51572, "40 #wintergraspmark#" }, --Titan-Forged Shoulderpads of Salvation
			{ itemID = 46066, "40 #wintergraspmark#" }, --Titan-Forged Raiment of Salvation
			{ itemID = 48979, "15 #wintergraspmark#" }, --Titan-Forged Cuffs of Salvation
			{ itemID = 46080, "15 #wintergraspmark#" }, --Titan-Forged Cord of Salvation
			{ itemID = 48991, "40 #wintergraspmark#" }, --Titan-Forged Cloth Leggings of Salvation
			{ itemID = 44900, "15 #wintergraspmark#" }, --Titan-Forged Slippers of Salvation
	},
	{
		Name = "Page 3",
		{
			{ itemID = 44907, "40 #wintergraspmark#" }, --Titan-Forged Leather Helm of Dominance
			{ itemID = 51574, "40 #wintergraspmark#" }, --Titan-Forged Leather Spaulders of Dominance
			{ itemID = 46064, "40 #wintergraspmark#" }, --Titan-Forged Leather Chestguard of Dominance
			{ itemID = 48974, "15 #wintergraspmark#" }, --Titan-Forged Armwraps of Dominance
			{ itemID = 46076, "15 #wintergraspmark#" }, --Titan-Forged Belt of Dominance
			{ itemID = 48998, "40 #wintergraspmark#" }, --Titan-Forged Leather Legguards of Dominance
			{ itemID = 44891, "15 #wintergraspmark#" }, --Titan-Forged Boots of Dominance
			{ itemID = 44906, "40 #wintergraspmark#" }, --Titan-Forged Leather Helm of Salvation
			{ itemID = 51575, "40 #wintergraspmark#" }, --Titan-Forged Leather Spaulders of Salvation
			{ itemID = 46063, "40 #wintergraspmark#" }, --Titan-Forged Leather Chestguard of Salvation
			{ itemID = 48975, "15 #wintergraspmark#" }, --Titan-Forged Armwraps of Salvation
			{ itemID = 46077, "15 #wintergraspmark#" }, --Titan-Forged Belt of Salvation
			{ itemID = 48987, "40 #wintergraspmark#" }, --Titan-Forged Leather Legguards of Salvation
			{ itemID = 44892, "15 #wintergraspmark#" }, --Titan-Forged Boots of Salvation
		},
		{
			{ itemID = 44908, "40 #wintergraspmark#" }, --Titan-Forged Leather Helm of Triumph
			{ itemID = 51576, "40 #wintergraspmark#" }, --Titan-Forged Leather Spaulders of Triumph
			{ itemID = 46062, "40 #wintergraspmark#" }, --Titan-Forged Leather Tunic of Triumph
			{ itemID = 48976, "15 #wintergraspmark#" }, --Titan-Forged Armwraps of Triumph
			{ itemID = 46078, "15 #wintergraspmark#" }, --Titan-Forged Belt of Triumph
			{ itemID = 48988, "40 #wintergraspmark#" }, --Titan-Forged Leather Legguards of Triumph
			{ itemID = 44893, "15 #wintergraspmark#" }, --Titan-Forged Boots of Triumph
		},
	},
	{
		Name = "Page 4",
		{
			{ itemID = 44904, "40 #wintergraspmark#" }, --Titan-Forged Mail Helm of Dominance
			{ itemID = 51578, "40 #wintergraspmark#" }, --Titan-Forged Shoulders of Dominance
			{ itemID = 46061, "40 #wintergraspmark#" }, --Titan-Forged Mail Armor of Domination
			{ itemID = 48980, "15 #wintergraspmark#" }, --Titan-Forged Wristguards of Dominance
			{ itemID = 46073, "15 #wintergraspmark#" }, --Titan-Forged Waistguard of Dominance
			{ itemID = 48990, "40 #wintergraspmark#" }, --Titan-Forged Mail Leggings of Dominance
			{ itemID = 44896, "15 #wintergraspmark#" }, --Titan-Forged Sabatons of Dominance
			{ itemID = 44905, "40 #wintergraspmark#" }, --Titan-Forged Ringmail Helm of Salvation
			{ itemID = 51579, "40 #wintergraspmark#" }, --Titan-Forged Shoulders of Salvation
			{ itemID = 46060, "40 #wintergraspmark#" }, --Titan-Forged Ringmail of Salvation
			{ itemID = 48981, "15 #wintergraspmark#" }, --Titan-Forged Wristguards of Salvation
			{ itemID = 46074, "15 #wintergraspmark#" }, --Titan-Forged Waistguard of Salvation
			{ itemID = 48994, "40 #wintergraspmark#" }, --Titan-Forged Mail Leggings of Salvation
			{ itemID = 44897, "15 #wintergraspmark#" }, --Titan-Forged Sabatons of Salvation
		},
		{
			{ itemID = 44903, "40 #wintergraspmark#" }, --Titan-Forged Chain Helm of Triumph
			{ itemID = 51577, "40 #wintergraspmark#" }, --Titan-Forged Shoulders of Triumph
			{ itemID = 46059, "40 #wintergraspmark#" }, --Titan-Forged Chain Armor of Triumph
			{ itemID = 48982, "15 #wintergraspmark#" }, --Titan-Forged Wristguards of Triumph
			{ itemID = 46075, "15 #wintergraspmark#" }, --Titan-Forged Waistguard of Triumph
			{ itemID = 48983, "40 #wintergraspmark#" }, --Titan-Forged Mail Leggings of Triumph
			{ itemID = 44898, "15 #wintergraspmark#" }, --Titan-Forged Sabatons of Triumph
		},
	},
	{
		Name = "Page 5",
		{
			{ itemID = 44901, "40 #wintergraspmark#" }, --Titan-Forged Plate Headcover of Salvation
			{ itemID = 51581, "40 #wintergraspmark#" }, --Titan-Forged Shoulderplates of Salvation
			{ itemID = 46057, "40 #wintergraspmark#" }, --Titan-Forged Chestguard of Salvation
			{ itemID = 48977, "15 #wintergraspmark#" }, --Titan-Forged Bracers of Salvation
			{ itemID = 46071, "15 #wintergraspmark#" }, --Titan-Forged Girdle of Salvation
			{ itemID = 48992, "40 #wintergraspmark#" }, --Titan-Forged Plate Legplates of Salvation
			{ itemID = 44894, "15 #wintergraspmark#" }, --Titan-Forged Greaves of Salvation
		},
		{
			{ itemID = 44902, "40 #wintergraspmark#" }, --Titan-Forged Plate Helm of Triumph
			{ itemID = 51580, "40 #wintergraspmark#" }, --Titan-Forged Plate Shoulderplates of Triumph
			{ itemID = 46058, "40 #wintergraspmark#" }, --Titan-Forged Breastplate of Triumph
			{ itemID = 48978, "15 #wintergraspmark#" }, --Titan-Forged Bracers of Triumph
			{ itemID = 46072, "15 #wintergraspmark#" }, --Titan-Forged Girdle of Triumph
			{ itemID = 48993, "40 #wintergraspmark#" }, --Titan-Forged Plate Legguards of Triumph
			{ itemID = 44895, "15 #wintergraspmark#" }, --Titan-Forged Greaves of Triumph
		},
	},
	{
		Name = "Page 6",
		{
			{ itemID = 44066, "20 #wintergrasp#" }, --Kharmaa's Grace
			{ itemID = 44081, "15 #wintergrasp#" }, --Enigmatic Starflare Diamond
			{ itemID = 44084, "15 #wintergrasp#" }, --Forlorn Starflare Diamond
			{ itemID = 44082, "15 #wintergrasp#" }, --Impassive Starflare Diamond
			{ itemID = 44076, "15 #wintergrasp#" }, --Swift Starflare Diamond
			{ itemID = 44078, "15 #wintergrasp#" }, --Swift Starflare Diamond
			{ itemID = 44087, "15 #wintergrasp#" }, --Persistent Earthshatter Diamond
			{ itemID = 44088, "15 #wintergrasp#" }, --Powerful Earthshatter Diamond
			{ itemID = 44089, "15 #wintergrasp#" }, --Trenchant Earthshatter Diamond
			{ itemID = 44075, "40 #wintergrasp#" }, --Arcanum of Dominance
			{ itemID = 44069, "40 #wintergrasp#" }, --Arcanum of Triumph
			{ itemID = 44068, price = "30 #wintergrasp#" }, --Inscription of Dominance
			{ itemID = 44067, price = "30 #wintergrasp#" }, --Inscription of Triumph
		},
		{
			{ itemID = 41730, price = "12 #wintergrasp#" }, --Design: Durable Monarch Topaz
			{ itemID = 41732, price = "12 #wintergrasp#" }, --Design: Empowered Monarch Topaz
			{ itemID = 41733, price = "12 #wintergrasp#" }, --Design: Lucent Monarch Topaz
			{ itemID = 41735, price = "12 #wintergrasp#" }, --Design: Shattered Forest Emerald
			{ itemID = 41739, price = "12 #wintergrasp#" }, --Design: Opaque Forest Emerald
			{ itemID = 41736, price = "12 #wintergrasp#" }, --Design: Tense Forest Emerald
			{ itemID = 41737, price = "12 #wintergrasp#" }, --Design: Turbid Forest Emerald
			{ itemID = 41738, price = "12 #wintergrasp#" }, --Design: Steady Forest Emerald
			{ itemID = 41734, price = "12 #wintergrasp#" }, --Design: Resplendent Monarch Topaz
			{ itemID = 41727, price = "12 #wintergrasp#" }, --Design: Mystic Autumn's Glow
			{ itemID = 41740, price = "12 #wintergrasp#" }, --Design: Mysterious Twilight Opal
			{ itemID = 41728, price = "12 #wintergrasp#" }, --Design: Stormy Sky Sapphire
			{ itemID = 41742, price = "24 #wintergrasp#" }, --Design: Enigmatic Skyflare Diamond
			{ itemID = 41743, price = "24 #wintergrasp#" }, --Design: Forlorn Skyflare Diamond
			{ itemID = 41744, price = "24 #wintergrasp#" }, --Design: Impassive Skyflare Diamond
		},
	},
	{
		Name = "Page 7",
		{
			{ itemID = 44107, price = "200 #wintergrasp#" }, --Exquisite Sunderseer Mantle
			{ itemID = 44103, price = "200 #wintergrasp#" }, --Exceptional Stormshroud Shoulders
			{ itemID = 44105, price = "200 #wintergrasp#" }, --Lasting Feralheart Spaulders
			{ itemID = 44102, price = "200 #wintergrasp#" }, --Aged Pauldrons of The Five Thunders
			{ itemID = 44101, price = "200 #wintergrasp#" }, --Prized Beastmaster's Mantle
			{ itemID = 44100, price = "200 #wintergrasp#" }, --Pristine Lightforge Spaulders
			{ itemID = 44099, price = "200 #wintergrasp#" }, --Strengthened Stockade Pauldrons
			{ itemID = 44098, price = "250 #wintergrasp#" }, --Inherited Insignia of the Alliance
			{ itemID = 44097, price = "250 #wintergrasp#" }, --Inherited Insignia of the Horde
			{ itemID = 44115, price = "30 #wintergrasp# / 9 #wintergraspmark#" }, --Wintergrasp Commendation
		},
		{
			{ itemID = 44091, price = "200 #wintergrasp#" }, --Sharpened Scarlet Kris
			{ itemID = 44096, price = "200 #wintergrasp#" }, --Battleworn Thrash Blade
			{ itemID = 44092, price = "325 #wintergrasp#" }, --Reforged Truesilver Champion
			{ itemID = 44094, price = "250 #wintergrasp#" }, --The Blessed Hammer of Grace
			{ itemID = 44095, price = "325 #wintergrasp#" }, --Grand Staff of Jordan
			{ itemID = 44093, price = "325 #wintergrasp#" }, --Upgraded Dwarven Hand Cannon
		},
	},
}

-----------------------------------------------
--- World PvP - Grizzly Hills: Venture Bay  ---
-----------------------------------------------

AtlasLoot_Data["VentureBay"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Venture Bay",
	{
		Name = "Venture Bay",
		{
			{ itemID = 38354, price = "50 #venturecoin#" }, --Oil-Stained Tarp
			{ itemID = 38355, price = "50 #venturecoin#" }, --Thick Goblin Back Protector 
			{ itemID = 38353, price = "50 #venturecoin#" }, --Venture Bay Buccaneer's Cape
			{ itemID = 38358, price = "70 #venturecoin#" }, --Arcane Revitalizer
			{ itemID = 38359, price = "70 #venturecoin#" }, --Goblin Repetition Reducer
			{ itemID = 38357, price = "30 #venturecoin#" }, --Sharpened Throwing Gizmo
			{ itemID = 38356, price = "30 #venturecoin#" }, --Venture Battle Wand
			{ itemID = 38360, price = "30 #venturecoin#" }, --Idol of Arcane Terror
			{ itemID = 38365, price = "30 #venturecoin#" }, --Idol of Perspicacious Attacks
			{ itemID = 38366, price = "30 #venturecoin#" }, --Idol of Pure Thoughts
			{ itemID = 38364, price = "30 #venturecoin#" }, --Venture Co. Libram of Mostly Holy Deeds
			{ itemID = 38363, price = "30 #venturecoin#" }, --Venture Co. Libram of Protection
			{ itemID = 38362, price = "30 #venturecoin#" }, --Venture Co. Libram of Retribution
		},
		{
			{ itemID = 38368, price = "30 #venturecoin#" }, --Totem of the Bay
			{ itemID = 38367, price = "30 #venturecoin#" }, --Venture Co. Flame Slicer
			{ itemID = 38361, price = "30 #venturecoin#" }, --Venture Co. Lightning Rod
			{ itemID = 40875, price = "30 #venturecoin#" }, --Sigil of Arthritic Binding
			{ itemID = 40822, price = "30 #venturecoin#" }, --Sigil of the Frozen Conscience
			{ itemID = 40867, price = "30 #venturecoin#" }, --Sigil of the Wild Buck
			{ itemID = 37836 }, --Venture Coin
		},
	},
}

--------------------------
--- Sets & Collections ---
--------------------------

---------------------------------------
---------- Naxx Sets (T7) -------------
---------------------------------------

AtlasLoot_Data["T7"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Tier 7",
	Type = "WrathRaid",
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgeborne Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39619, "=ds=" .. "Kel'Thuzad" }, --Heroes' Scourgeborne Helmet
			{ itemID = 39621, "=ds=" .. "Loatheb" }, --Heroes' Scourgeborne Shoulderplates
			{ itemID = 39617, "=ds=" .. "The Four Horsemen" }, --Heroes' Scourgeborne Battleplate
			{ itemID = 39618, "=ds=" .. "Sartharion" }, --Heroes' Scourgeborne Gauntlets
			{ itemID = 39620, "=ds=" .. "Thaddius" }, --Heroes' Scourgeborne Legplates
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgeborne Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40554, "=ds=" .. "Kel'Thuzad" }, --Valorous Scourgeborne Helmet
			{ itemID = 40557, "=ds=" .. "Loatheb" }, --Valorous Scourgeborne Shoulderplates
			{ itemID = 40550, "=ds=" .. "The Four Horsemen" }, --Valorous Scourgeborne Battleplate
			{ itemID = 40552, "=ds=" .. "Sartharion" }, --Valorous Scourgeborne Gauntlets
			{ itemID = 40556, "=ds=" .. "Thaddius" }, --Valorous Scourgeborne Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgeborne Plate", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39625, "=ds=" .. "Kel'Thuzad" }, --Heroes' Scourgeborne Faceguard
			{ itemID = 39627, "=ds=" .. "Loatheb" }, --Heroes' Scourgeborne Pauldrons
			{ itemID = 39623, "=ds=" .. "The Four Horsemen" }, --Heroes' Scourgeborne Chestguard
			{ itemID = 39624, "=ds=" .. "Sartharion" }, --Heroes' Scourgeborne Handguards
			{ itemID = 39626, "=ds=" .. "Thaddius" }, --Heroes' Scourgeborne Legguards
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgeborne Plate", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40565, "=ds=" .. "Kel'Thuzad" }, --Valorous Scourgeborne Faceguard
			{ itemID = 40568, "=ds=" .. "Loatheb" }, --Valorous Scourgeborne Pauldrons
			{ itemID = 40559, "=ds=" .. "The Four Horsemen" }, --Valorous Scourgeborne Chestguard
			{ itemID = 40563, "=ds=" .. "Sartharion" }, --Valorous Scourgeborne Handguards
			{ itemID = 40567, "=ds=" .. "Thaddius" }, --Valorous Scourgeborne Legguards
		},
	},
	{
		Name = "Druid" .. " - " .. "Feral",
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Dreamwalker Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39553, "=ds=" .. "Kel'Thuzad" }, --Heroes' Dreamwalker Headguard
			{ itemID = 39556, "=ds=" .. "Loatheb" }, --Heroes' Dreamwalker Shoulderpads
			{ itemID = 39554, "=ds=" .. "The Four Horsemen" }, --Heroes' Dreamwalker Raiments
			{ itemID = 39557, "=ds=" .. "Sartharion" }, --Heroes' Dreamwalker Handgrips
			{ itemID = 39555, "=ds=" .. "Thaddius" }, --Heroes' Dreamwalker Legguards
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Dreamwalker Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40473, "=ds=" .. "Kel'Thuzad" }, --Valorous Dreamwalker Headguard
			{ itemID = 40494, "=ds=" .. "Loatheb" }, --Valorous Dreamwalker Shoulderpads
			{ itemID = 40471, "=ds=" .. "The Four Horsemen" }, --Valorous Dreamwalker Raiments
			{ itemID = 40472, "=ds=" .. "Sartharion" }, --Valorous Dreamwalker Handgrips
			{ itemID = 40493, "=ds=" .. "Thaddius" }, --Valorous Dreamwalker Legguards
		},
	},
	{
		Name = "Druid" .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Dreamwalker Regalia", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39531, "=ds=" .. "Kel'Thuzad" }, --Heroes' Dreamwalker Headpiece
			{ itemID = 39542, "=ds=" .. "Loatheb" }, --Heroes' Dreamwalker Spaulders
			{ itemID = 39538, "=ds=" .. "The Four Horsemen" }, --Heroes' Dreamwalker Robe
			{ itemID = 39543, "=ds=" .. "Sartharion" }, --Heroes' Dreamwalker Handguards
			{ itemID = 39539, "=ds=" .. "Thaddius" }, --Heroes' Dreamwalker Leggings
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Dreamwalker Regalia", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40461, "=ds=" .. "Kel'Thuzad" }, --Valorous Dreamwalker Headpiece
			{ itemID = 40465, "=ds=" .. "Loatheb" }, --Valorous Dreamwalker Spaulders
			{ itemID = 40463, "=ds=" .. "The Four Horsemen" }, --Valorous Dreamwalker Robe
			{ itemID = 40460, "=ds=" .. "Sartharion" }, --Valorous Dreamwalker Handguards
			{ itemID = 40462, "=ds=" .. "Thaddius" }, --Valorous Dreamwalker Leggings
		},
	},
	{
		Name = "Druid" .. " - " .. "Balance",
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Dreamwalker Garb", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39545, "=ds=" .. "Kel'Thuzad" }, --Heroes' Dreamwalker Cover
			{ itemID = 39548, "=ds=" .. "Loatheb" }, --Heroes' Dreamwalker Mantle
			{ itemID = 39547, "=ds=" .. "The Four Horsemen" }, --Heroes' Dreamwalker Vestments
			{ itemID = 39544, "=ds=" .. "Sartharion" }, --Heroes' Dreamwalker Gloves
			{ itemID = 39546, "=ds=" .. "Thaddius" }, --Heroes' Dreamwalker Trousers
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Dreamwalker Garb", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40467, "=ds=" .. "Kel'Thuzad" }, --Valorous Dreamwalker Cover
			{ itemID = 40470, "=ds=" .. "Loatheb" }, --Valorous Dreamwalker Mantle
			{ itemID = 40469, "=ds=" .. "The Four Horsemen" }, --Valorous Dreamwalker Vestments
			{ itemID = 40466, "=ds=" .. "Sartharion" }, --Valorous Dreamwalker Gloves
			{ itemID = 40468, "=ds=" .. "Thaddius" }, --Valorous Dreamwalker Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Cryptstalker Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39578, "=ds=" .. "Kel'Thuzad" }, --Heroes' Cryptstalker Headpiece
			{ itemID = 39581, "=ds=" .. "Loatheb" }, --Heroes' Cryptstalker Spaulders
			{ itemID = 39579, "=ds=" .. "The Four Horsemen" }, --Heroes' Cryptstalker Tunic
			{ itemID = 39582, "=ds=" .. "Sartharion" }, --Heroes' Cryptstalker Handguards
			{ itemID = 39580, "=ds=" .. "Thaddius" }, --Heroes' Cryptstalker Legguards
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Cryptstalker Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40505, "=ds=" .. "Kel'Thuzad" }, --Valorous Crypstalker Headpiece
			{ itemID = 40507, "=ds=" .. "Loatheb" }, --Valorous Crypstalker Spaulders
			{ itemID = 40503, "=ds=" .. "The Four Horsemen" }, --Valorous Crypstalker Tunic
			{ itemID = 40504, "=ds=" .. "Sartharion" }, --Valorous Crypstalker Handguards
			{ itemID = 40506, "=ds=" .. "Thaddius" }, --Valorous Crypstalker Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Frostfire Garb", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39491, "=ds=" .. "Kel'Thuzad" }, --Heroes' Frostfire Circlet
			{ itemID = 39494, "=ds=" .. "Loatheb" }, --Heroes' Frostfire Shoulderpads
			{ itemID = 39492, "=ds=" .. "The Four Horsemen" }, --Heroes' Frostfire Robe
			{ itemID = 39495, "=ds=" .. "Sartharion" }, --Heroes' Frostfire Gloves
			{ itemID = 39493, "=ds=" .. "Thaddius" }, --Heroes' Frostfire Leggings
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Frostfire Garb", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40416, "=ds=" .. "Kel'Thuzad" }, --Valorous Frostfire Circlet
			{ itemID = 40419, "=ds=" .. "Loatheb" }, --Valorous Frostfire Shoulderpads
			{ itemID = 40418, "=ds=" .. "The Four Horsemen" }, --Valorous Frostfire Robe
			{ itemID = 40415, "=ds=" .. "Sartharion" }, --Valorous Frostfire Gloves
			{ itemID = 40417, "=ds=" .. "Thaddius" }, --Valorous Frostfire Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Redemption Regalia", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39628, "=ds=" .. "Kel'Thuzad" }, --Heroes' Redemption Headpiece
			{ itemID = 39631, "=ds=" .. "Loatheb" }, --Heroes' Redemption Spaulders
			{ itemID = 39629, "=ds=" .. "The Four Horsemen" }, --Heroes' Redemption Tunic
			{ itemID = 39632, "=ds=" .. "Sartharion" }, --Heroes' Redemption Gloves
			{ itemID = 39630, "=ds=" .. "Thaddius" }, --Heroes' Redemption Greaves
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Redemption Regalia", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40571, "=ds=" .. "Kel'Thuzad" }, --Valorous Redemption Headpiece
			{ itemID = 40573, "=ds=" .. "Loatheb" }, --Valorous Redemption Spaulders
			{ itemID = 40569, "=ds=" .. "The Four Horsemen" }, --Valorous Redemption Tunic
			{ itemID = 40570, "=ds=" .. "Sartharion" }, --Valorous Redemption Gloves
			{ itemID = 40572, "=ds=" .. "Thaddius" }, --Valorous Redemption Greaves
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution",
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Redemption Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39635, "=ds=" .. "Kel'Thuzad" }, --Heroes' Redemption Helm
			{ itemID = 39637, "=ds=" .. "Loatheb" }, --Heroes' Redemption Shoulderplates
			{ itemID = 39633, "=ds=" .. "The Four Horsemen" }, --Heroes' Redemption Chestpiece
			{ itemID = 39634, "=ds=" .. "Sartharion" }, --Heroes' Redemption Gauntlets
			{ itemID = 39636, "=ds=" .. "Thaddius" }, --Heroes' Redemption Legplates
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Redemption Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40576, "=ds=" .. "Kel'Thuzad" }, --Valorous Redemption Helm
			{ itemID = 40578, "=ds=" .. "Loatheb" }, --Valorous Redemption Shoulderplates
			{ itemID = 40574, "=ds=" .. "The Four Horsemen" }, --Valorous Redemption Chestpiece
			{ itemID = 40575, "=ds=" .. "Sartharion" }, --Valorous Redemption Gauntlets
			{ itemID = 40577, "=ds=" .. "Thaddius" }, --Valorous Redemption Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection",
		{
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Redemption Plate", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39640, "=ds=" .. "Kel'Thuzad" }, --Heroes' Redemption Faceguard
			{ itemID = 39642, "=ds=" .. "Loatheb" }, --Heroes' Redemption Shouldergards
			{ itemID = 39638, "=ds=" .. "The Four Horsemen" }, --Heroes' Redemption Breastplate
			{ itemID = 39639, "=ds=" .. "Sartharion" }, --Heroes' Redemption Handguards
			{ itemID = 39641, "=ds=" .. "Thaddius" }, --Heroes' Redemption Legguards
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Redemption Plate", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40581, "=ds=" .. "Kel'Thuzad" }, --Valorous Redemption Faceguard
			{ itemID = 40584, "=ds=" .. "Loatheb" }, --Valorous Redemption Shouldergards
			{ itemID = 40579, "=ds=" .. "The Four Horsemen" }, --Valorous Redemption Breastplate
			{ itemID = 40580, "=ds=" .. "Sartharion" }, --Valorous Redemption Handguards
			{ itemID = 40583, "=ds=" .. "Thaddius" }, --Valorous Redemption Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow",
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Garb of Faith", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39521, "=ds=" .. "Kel'Thuzad" }, --Heroes' Circlet of Faith
			{ itemID = 39529, "=ds=" .. "Loatheb" }, --Heroes' Mantle of Faith
			{ itemID = 39523, "=ds=" .. "The Four Horsemen" }, --Heroes' Raiments of Faith
			{ itemID = 39530, "=ds=" .. "Sartharion" }, --Heroes' Handwraps of Faith
			{ itemID = 39528, "=ds=" .. "Thaddius" }, --Heroes' Pants of Faith
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Garb of Faith", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40456, "=ds=" .. "Kel'Thuzad" }, --Valorous Circlet of Faith
			{ itemID = 40459, "=ds=" .. "Loatheb" }, --Valorous Mantle of Faith
			{ itemID = 40458, "=ds=" .. "The Four Horsemen" }, --Valorous Raiments of Faith
			{ itemID = 40454, "=ds=" .. "Sartharion" }, --Valorous Handwraps of Faith
			{ itemID = 40457, "=ds=" .. "Thaddius" }, --Valorous Pants of Faith
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Regalia of Faith", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39514, "=ds=" .. "Kel'Thuzad" }, --Heroes' Crown of Faith
			{ itemID = 39518, "=ds=" .. "Loatheb" }, --Heroes' Shoulderpads of Faith
			{ itemID = 39515, "=ds=" .. "The Four Horsemen" }, --Heroes' Robe of Faith
			{ itemID = 39519, "=ds=" .. "Sartharion" }, --Heroes' Gloves of Faith
			{ itemID = 39517, "=ds=" .. "Thaddius" }, --Heroes' Leggings of Faith
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Regalia of Faith", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40447, "=ds=" .. "Kel'Thuzad" }, --Valorous Crown of Faith
			{ itemID = 40450, "=ds=" .. "Loatheb" }, --Valorous Shoulderpads of Faith
			{ itemID = 40449, "=ds=" .. "The Four Horsemen" }, --Valorous Robe of Faith
			{ itemID = 40445, "=ds=" .. "Sartharion" }, --Valorous Gloves of Faith
			{ itemID = 40448, "=ds=" .. "Thaddius" }, --Valorous Leggings of Faith
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Bonescythe Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39561, "=ds=" .. "Kel'Thuzad" }, --Heroes' Bonescythe Helmet
			{ itemID = 39565, "=ds=" .. "Loatheb" }, --Heroes' Bonescythe Pauldrons
			{ itemID = 39558, "=ds=" .. "The Four Horsemen" }, --Heroes' Bonescythe Breastplate
			{ itemID = 39560, "=ds=" .. "Sartharion" }, --Heroes' Bonescythe Gauntlets
			{ itemID = 39564, "=ds=" .. "Thaddius" }, --Heroes' Bonescythe Legplates
			{ icon = "Ability_BackStab", name = "=q6=".."Bonescythe Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40499, "=ds=" .. "Kel'Thuzad" }, --Valorous Bonescythe Helmet
			{ itemID = 40502, "=ds=" .. "Loatheb" }, --Valorous Bonescythe Pauldrons
			{ itemID = 40495, "=ds=" .. "The Four Horsemen" }, --Valorous Bonescythe Breastplate
			{ itemID = 40496, "=ds=" .. "Sartharion" }, --Valorous Bonescythe Gauntlets
			{ itemID = 40500, "=ds=" .. "Thaddius" }, --Valorous Bonescythe Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Earthshatter Regalia", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39583, "=ds=" .. "Kel'Thuzad" }, --Heroes' Earthshatter Headpiece
			{ itemID = 39590, "=ds=" .. "Loatheb" }, --Heroes' Earthshatter Spaulders
			{ itemID = 39588, "=ds=" .. "The Four Horsemen" }, --Heroes' Earthshatter Tunic
			{ itemID = 39591, "=ds=" .. "Sartharion" }, --Heroes' Earthshatter Handguards
			{ itemID = 39589, "=ds=" .. "Thaddius" }, --Heroes' Earthshatter Legguards
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Earthshatter Regalia", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40510, "=ds=" .. "Kel'Thuzad" }, --Valorous Earthshatter Headpiece
			{ itemID = 40513, "=ds=" .. "Loatheb" }, --Valorous Earthshatter Spaulders
			{ itemID = 40508, "=ds=" .. "The Four Horsemen" }, --Valorous Earthshatter Tunic
			{ itemID = 40509, "=ds=" .. "Sartharion" }, --Valorous Earthshatter Handguards
			{ itemID = 40512, "=ds=" .. "Thaddius" }, --Valorous Earthshatter Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement",
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Earthshatter Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39602, "=ds=" .. "Kel'Thuzad" }, --Heroes' Earthshatter Faceguard
			{ itemID = 39604, "=ds=" .. "Loatheb" }, --Heroes' Earthshatter Shoulderguards
			{ itemID = 39597, "=ds=" .. "The Four Horsemen" }, --Heroes' Earthshatter Chestguard
			{ itemID = 39601, "=ds=" .. "Sartharion" }, --Heroes' Earthshatter Grips
			{ itemID = 39603, "=ds=" .. "Thaddius" }, --Heroes' Earthshatter War-Kilt
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Earthshatter Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40521, "=ds=" .. "Kel'Thuzad" }, --Valorous Earthshatter Faceguard
			{ itemID = 40524, "=ds=" .. "Loatheb" }, --Valorous Earthshatter Shoulderguards
			{ itemID = 40523, "=ds=" .. "The Four Horsemen" }, --Valorous Earthshatter Chestguard
			{ itemID = 40520, "=ds=" .. "Sartharion" }, --Valorous Earthshatter Grips
			{ itemID = 40522, "=ds=" .. "Thaddius" }, --Valorous Earthshatter War-Kilt
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental",
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Earthshatter Garb", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39594, "=ds=" .. "Kel'Thuzad" }, --Heroes' Earthshatter Helm
			{ itemID = 39596, "=ds=" .. "Loatheb" }, --Heroes' Earthshatter Shoulderpads
			{ itemID = 39592, "=ds=" .. "The Four Horsemen" }, --Heroes' Earthshatter Hauberk
			{ itemID = 39593, "=ds=" .. "Sartharion" }, --Heroes' Earthshatter Gloves
			{ itemID = 39595, "=ds=" .. "Thaddius" }, --Heroes' Earthshatter Kilt
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Earthshatter Garb", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40516, "=ds=" .. "Kel'Thuzad" }, --Valorous Earthshatter Helm
			{ itemID = 40518, "=ds=" .. "Loatheb" }, --Valorous Earthshatter Shoulderpads
			{ itemID = 40514, "=ds=" .. "The Four Horsemen" }, --Valorous Earthshatter Hauberk
			{ itemID = 40515, "=ds=" .. "Sartharion" }, --Valorous Earthshatter Gloves
			{ itemID = 40517, "=ds=" .. "Thaddius" }, --Valorous Earthshatter Kilt
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Plagueheart Garb", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39496, "=ds=" .. "Kel'Thuzad" }, --Heroes' Plagueheart Circlet
			{ itemID = 39499, "=ds=" .. "Loatheb" }, --Heroes' Plagueheart Shoulderpads
			{ itemID = 39497, "=ds=" .. "The Four Horsemen" }, --Heroes' Plagueheart Robe
			{ itemID = 39500, "=ds=" .. "Sartharion" }, --Heroes' Plagueheart Gloves
			{ itemID = 39498, "=ds=" .. "Thaddius" }, --Heroes' Plagueheart Leggings
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Plagueheart Garb", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40421, "=ds=" .. "Kel'Thuzad" }, --Valorous Plagueheart Circlet
			{ itemID = 40424, "=ds=" .. "Loatheb" }, --Valorous Plagueheart Shoulderpads
			{ itemID = 40423, "=ds=" .. "The Four Horsemen" }, --Valorous Plagueheart Robe
			{ itemID = 40420, "=ds=" .. "Sartharion" }, --Valorous Plagueheart Gloves
			{ itemID = 40422, "=ds=" .. "Thaddius" }, --Valorous Plagueheart Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury",
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Dreadnaught Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39605, "=ds=" .. "Kel'Thuzad" }, --Heroes' Dreadnaught Helmet
			{ itemID = 39608, "=ds=" .. "Loatheb" }, --Heroes' Dreadnaught Shoulderplates
			{ itemID = 39606, "=ds=" .. "The Four Horsemen" }, --Heroes' Dreadnaught Battleplate
			{ itemID = 39609, "=ds=" .. "Sartharion" }, --Heroes' Dreadnaught Gauntlets
			{ itemID = 39607, "=ds=" .. "Thaddius" }, --Heroes' Dreadnaught Legplates
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Dreadnaught Battlegear", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40528, "=ds=" .. "Kel'Thuzad" }, --Valorous Dreadnaught Helmet
			{ itemID = 40530, "=ds=" .. "Loatheb" }, --Valorous Dreadnaught Shoulderplates
			{ itemID = 40525, "=ds=" .. "The Four Horsemen" }, --Valorous Dreadnaught Battleplate
			{ itemID = 40527, "=ds=" .. "Sartharion" }, --Valorous Dreadnaught Gauntlets
			{ itemID = 40529, "=ds=" .. "Thaddius" }, --Valorous Dreadnaught Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection",
		{
			{ icon = "INV_Shield_05", name = "=q6=".."Dreadnaught Plate", desc = "=q5=" .. "Tier 7" .. " (" .. "10 Man" .. ")" },
			{ itemID = 39610, "=ds=" .. "Kel'Thuzad" }, --Heroes' Dreadnaught Greathelm
			{ itemID = 39613, "=ds=" .. "Loatheb" }, --Heroes' Dreadnaught Pauldrons
			{ itemID = 39611, "=ds=" .. "The Four Horsemen" }, --Heroes' Dreadnaught Breastplate
			{ itemID = 39622, "=ds=" .. "Sartharion" }, --Heroes' Dreadnaught Handguards
			{ itemID = 39612, "=ds=" .. "Thaddius" }, --Heroes' Dreadnaught Legguards
			{ icon = "INV_Shield_05", name = "=q6=".."Dreadnaught Plate", desc = "=q5=" .. "Tier 7" .. " (" .. "25 Man" .. ")" },
			{ itemID = 40546, "=ds=" .. "Kel'Thuzad" }, --Valorous Dreadnaught Greathelm
			{ itemID = 40548, "=ds=" .. "Loatheb" }, --Valorous Dreadnaught Pauldrons
			{ itemID = 40544, "=ds=" .. "The Four Horsemen" }, --Valorous Dreadnaught Breastplate
			{ itemID = 40545, "=ds=" .. "Sartharion" }, --Valorous Dreadnaught Handguards
			{ itemID = 40547, "=ds=" .. "Thaddius" }, --Valorous Dreadnaught Legguards
		},
	},
}


---------------------------------------
---------- Ulduar Sets (T8) -----------
---------------------------------------

AtlasLoot_Data["T8"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Tier 8",
	Type = "WrathRaid",
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Darkruned Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45342, "=ds=" .. "Mimiron" }, --Valorous Darkruned Helmet
			{ itemID = 45344, "=ds=" .. BabbleBoss.Thorim }, --Valorous Darkruned Shoulderplates
			{ itemID = 45340, "=ds=" .. "Yogg-Saron" }, --Valorous Darkruned Battleplate
			{ itemID = 45341, "=ds=" .. BabbleBoss.Freya }, --Valorous Darkruned Gauntlets
			{ itemID = 45343, "=ds=" .. BabbleBoss.Hodir }, --Valorous Darkruned Legplates
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Darkruned Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46115, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Darkruned Helmet
			{ itemID = 46117, "=ds=" .. "Yogg-Saron" }, --Conqueror's Darkruned Shoulderplates
			{ itemID = 46111, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Darkruned Battleplate
			{ itemID = 46113, "=ds=" .. "Mimiron" }, --Conqueror's Darkruned Gauntlets
			{ itemID = 46116, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Darkruned Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Darkruned Plate", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45336, "=ds=" .. "Mimiron" }, --Valorous Darkruned Faceguard
			{ itemID = 45339, "=ds=" .. BabbleBoss.Thorim }, --Valorous Darkruned Pauldrons
			{ itemID = 45335, "=ds=" .. "Yogg-Saron" }, --Valorous Darkruned Chestguard
			{ itemID = 45337, "=ds=" .. BabbleBoss.Freya }, --Valorous Darkruned Handguards
			{ itemID = 45338, "=ds=" .. BabbleBoss.Hodir }, --Valorous Darkruned Legguards
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Darkruned Plate", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46120, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Darkruned Faceguard
			{ itemID = 46122, "=ds=" .. "Yogg-Saron" }, --Conqueror's Darkruned Pauldrons
			{ itemID = 46118, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Darkruned Chestguard
			{ itemID = 46119, "=ds=" .. "Mimiron" }, --Conqueror's Darkruned Handguards
			{ itemID = 46121, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Darkruned Legguards
		},
	},
	{
		Name = "Druid" .. " - " .. "Feral",
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Nightsong Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45356, "=ds=" .. "Mimiron" }, --Valorous Nightsong Headguard
			{ itemID = 45359, "=ds=" .. BabbleBoss.Thorim }, --Valorous Nightsong Shoulderpads
			{ itemID = 45358, "=ds=" .. "Yogg-Saron" }, --Valorous Nightsong Raiments
			{ itemID = 45355, "=ds=" .. BabbleBoss.Freya }, --Valorous Nightsong Handgrips
			{ itemID = 45357, "=ds=" .. BabbleBoss.Hodir }, --Valorous Nightsong Legguards
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Nightsong Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46161, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Nightsong Headguard
			{ itemID = 46157, "=ds=" .. "Yogg-Saron" }, --Conqueror's Nightsong Shoulderpads
			{ itemID = 46159, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Nightsong Raiments
			{ itemID = 46158, "=ds=" .. "Mimiron" }, --Conqueror's Nightsong Handgrips
			{ itemID = 46160, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Nightsong Legguards
		},
	},
	{
		Name = "Druid" .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Nightsong Regalia", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45346, "=ds=" .. "Mimiron" }, --Valorous Nightsong Headpiece
			{ itemID = 45349, "=ds=" .. BabbleBoss.Thorim }, --Valorous Nightsong Spaulders
			{ itemID = 45348, "=ds=" .. "Yogg-Saron" }, --Valorous Nightsong Robe
			{ itemID = 45345, "=ds=" .. BabbleBoss.Freya }, --Valorous Nightsong Handguards
			{ itemID = 45347, "=ds=" .. BabbleBoss.Hodir }, --Valorous Nightsong Leggings
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Nightsong Regalia", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46184, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Nightsong Headpiece
			{ itemID = 46187, "=ds=" .. "Yogg-Saron" }, --Conqueror's Nightsong Spaulders
			{ itemID = 46186, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Nightsong Robe
			{ itemID = 46183, "=ds=" .. "Mimiron" }, --Conqueror's Nightsong Handguards
			{ itemID = 46185, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Nightsong Leggings
		},
	},
	{
		Name = "Druid" .. " - " .. "Balance",
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Nightsong Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 46313, "=ds=" .. "Mimiron" }, --Valorous Nightsong Cover
			{ itemID = 45352, "=ds=" .. BabbleBoss.Thorim }, --Valorous Nightsong Mantle
			{ itemID = 45354, "=ds=" .. "Yogg-Saron" }, --Valorous Nightsong Vestments
			{ itemID = 45351, "=ds=" .. BabbleBoss.Freya }, --Valorous Nightsong Gloves
			{ itemID = 45353, "=ds=" .. BabbleBoss.Hodir }, --Valorous Nightsong Trousers
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Nightsong Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46191, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Nightsong Cover
			{ itemID = 46196, "=ds=" .. "Yogg-Saron" }, --Conqueror's Nightsong Mantle
			{ itemID = 46194, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Nightsong Vestments
			{ itemID = 46189, "=ds=" .. "Mimiron" }, --Conqueror's Nightsong Gloves
			{ itemID = 46192, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Nightsong Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Scourgestalker Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45361, "=ds=" .. "Mimiron" }, --Valorous Scourgestalker Headpiece
			{ itemID = 45363, "=ds=" .. BabbleBoss.Thorim }, --Valorous Scourgestalker Spaulders
			{ itemID = 45364, "=ds=" .. "Yogg-Saron" }, --Valorous Scourgestalker Tunic
			{ itemID = 45360, "=ds=" .. BabbleBoss.Freya }, --Valorous Scourgestalker Handguards
			{ itemID = 45362, "=ds=" .. BabbleBoss.Hodir }, --Valorous Scourgestalker Legguards
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Scourgestalker Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46143, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Scourgestalker Headpiece
			{ itemID = 46145, "=ds=" .. "Yogg-Saron" }, --Conqueror's Scourgestalker Spaulders
			{ itemID = 46141, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Scourgestalker Tunic
			{ itemID = 46142, "=ds=" .. "Mimiron" }, --Conqueror's Scourgestalker Handguards
			{ itemID = 46144, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Scourgestalker Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Kirin Tor Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45365, "=ds=" .. "Mimiron" }, --Valorous Kirin Tor Hood
			{ itemID = 45369, "=ds=" .. BabbleBoss.Thorim }, --Valorous Kirin Tor Shoulderpads
			{ itemID = 45368, "=ds=" .. "Yogg-Saron" }, --Valorous Kirin Tor Tunic
			{ itemID = 46131, "=ds=" .. BabbleBoss.Freya }, --Valorous Kirin Tor Gauntlets
			{ itemID = 45367, "=ds=" .. BabbleBoss.Hodir }, --Valorous Kirin Tor Leggings
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Kirin Tor Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46129, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Kirin Tor Hood
			{ itemID = 46134, "=ds=" .. "Yogg-Saron" }, --Conqueror's Kirin Tor Shoulderpads
			{ itemID = 46130, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Kirin Tor Tunic
			{ itemID = 46132, "=ds=" .. "Mimiron" }, --Conqueror's Kirin Tor Gauntlets
			{ itemID = 46133, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Kirin Tor Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Aegis Regalia", desc = "=q5=(" .. "10 Man" .. ")" },
			{ itemID = 45372, "=ds=" .. "Mimiron" }, --Valorous Aegis Headpiece
			{ itemID = 45373, "=ds=" .. BabbleBoss.Thorim }, --Valorous Aegis Spaulders
			{ itemID = 45374, "=ds=" .. "Yogg-Saron" }, --Valorous Aegis Tunic
			{ itemID = 45370, "=ds=" .. BabbleBoss.Freya }, --Valorous Aegis Gloves
			{ itemID = 45371, "=ds=" .. BabbleBoss.Hodir }, --Valorous Aegis Greaves
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Aegis Regalia", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46180, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Aegis Headpiece
			{ itemID = 46182, "=ds=" .. "Yogg-Saron" }, --Conqueror's Aegis Spaulders
			{ itemID = 46178, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Aegis Tunic
			{ itemID = 46179, "=ds=" .. "Mimiron" }, --Conqueror's Aegis Gloves
			{ itemID = 46181, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Aegis Greaves
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution",
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Aegis Battlegear", desc = "=q5=(" .. "10 Man" .. ")" },
			{ itemID = 45377, "=ds=" .. "Mimiron" }, --Valorous Aegis Helm
			{ itemID = 45380, "=ds=" .. BabbleBoss.Thorim }, --Valorous Aegis Shoulderplates
			{ itemID = 45375, "=ds=" .. "Yogg-Saron" }, --Valorous Aegis Battleplate
			{ itemID = 45376, "=ds=" .. BabbleBoss.Freya }, --Valorous Aegis Gauntlets
			{ itemID = 45379, "=ds=" .. BabbleBoss.Hodir }, --Valorous Aegis Legplates
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Aegis Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46156, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Aegis Helm
			{ itemID = 46152, "=ds=" .. "Yogg-Saron" }, --Conqueror's Aegis Shoulderplates
			{ itemID = 46154, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Aegis Battleplate
			{ itemID = 46155, "=ds=" .. "Mimiron" }, --Conqueror's Aegis Gauntlets
			{ itemID = 46153, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Aegis Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection",
		{
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Aegis Plate", desc = "=q5=(" .. "10 Man" .. ")" },
			{ itemID = 45382, "=ds=" .. "Mimiron" }, --Valorous Aegis Faceguard
			{ itemID = 45385, "=ds=" .. BabbleBoss.Thorim }, --Valorous Aegis Shouldergards
			{ itemID = 45381, "=ds=" .. "Yogg-Saron" }, --Valorous Aegis Breastplate
			{ itemID = 45383, "=ds=" .. BabbleBoss.Freya }, --Valorous Aegis Handguards
			{ itemID = 45384, "=ds=" .. BabbleBoss.Hodir }, --Valorous Aegis Legguards
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Aegis Plate", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46175, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Aegis Faceguard
			{ itemID = 46177, "=ds=" .. "Yogg-Saron" }, --Conqueror's Aegis Shouldergards
			{ itemID = 46173, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Aegis Breastplate
			{ itemID = 46174, "=ds=" .. "Mimiron" }, --Conqueror's Aegis Handguards
			{ itemID = 46176, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Aegis Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow",
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Sanctification Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45391, "=ds=" .. "Mimiron" }, --Valorous Circlet of Sanctification
			{ itemID = 45393, "=ds=" .. BabbleBoss.Thorim }, --Valorous Mantle of Sanctification
			{ itemID = 45395, "=ds=" .. "Yogg-Saron" }, --Valorous Raiments of Sanctification
			{ itemID = 45392, "=ds=" .. BabbleBoss.Freya }, --Valorous Handwraps of Sanctification
			{ itemID = 45394, "=ds=" .. BabbleBoss.Hodir }, --Valorous Pants of Sanctification
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Sanctification Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46172, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Circlet of Sanctification
			{ itemID = 46165, "=ds=" .. "Yogg-Saron" }, --Conqueror's Mantle of Sanctification
			{ itemID = 46168, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Raiments of Sanctification
			{ itemID = 46163, "=ds=" .. "Mimiron" }, --Conqueror's Handwraps of Sanctification
			{ itemID = 46170, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Pants of Sanctification
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Sanctification Regalia", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45386, "=ds=" .. "Mimiron" }, --Valorous Cowl of Sanctification
			{ itemID = 45390, "=ds=" .. BabbleBoss.Thorim }, --Valorous Shoulderpads of Sanctification
			{ itemID = 45389, "=ds=" .. "Yogg-Saron" }, --Valorous Robe of Sanctification
			{ itemID = 45387, "=ds=" .. BabbleBoss.Freya }, --Valorous Gloves of Sanctification
			{ itemID = 45388, "=ds=" .. BabbleBoss.Hodir }, --Valorous Leggings of Sanctification
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Sanctification Regalia", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46197, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Cowl of Sanctification
			{ itemID = 46190, "=ds=" .. "Yogg-Saron" }, --Conqueror's Shoulderpads of Sanctification
			{ itemID = 46193, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Robe of Sanctification
			{ itemID = 46188, "=ds=" .. "Mimiron" }, --Conqueror's Gloves of Sanctification
			{ itemID = 46195, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Leggings of Sanctification
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Terrorblade Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45398, "=ds=" .. "Mimiron" }, --Valorous Terrorblade Helmet
			{ itemID = 45400, "=ds=" .. BabbleBoss.Thorim }, --Valorous Terrorblade Pauldrons
			{ itemID = 45396, "=ds=" .. "Yogg-Saron" }, --Valorous Terrorblade Breastplate
			{ itemID = 45397, "=ds=" .. BabbleBoss.Freya }, --Valorous Terrorblade Gauntlets
			{ itemID = 45399, "=ds=" .. BabbleBoss.Hodir }, --Valorous Terrorblade Legplates
			{ icon = "Ability_BackStab", name = "=q6=".."Terrorblade Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46125, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Terrorblade Helmet
			{ itemID = 46127, "=ds=" .. "Yogg-Saron" }, --Conqueror's Terrorblade Pauldrons
			{ itemID = 46123, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Terrorblade Breastplate
			{ itemID = 46124, "=ds=" .. "Mimiron" }, --Conqueror's Terrorblade Gauntlets
			{ itemID = 46126, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Terrorblade Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Worldbreaker Regalia", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45402, "=ds=" .. "Mimiron" }, --Valorous Worldbreaker Headpiece
			{ itemID = 45404, "=ds=" .. BabbleBoss.Thorim }, --Valorous Worldbreaker Spaulders
			{ itemID = 45405, "=ds=" .. "Yogg-Saron" }, --Valorous Worldbreaker Tunic
			{ itemID = 45401, "=ds=" .. BabbleBoss.Freya }, --Valorous Worldbreaker Handguards
			{ itemID = 45403, "=ds=" .. BabbleBoss.Hodir }, --Valorous Worldbreaker Legguards
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Worldbreaker Regalia", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46201, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Worldbreaker Headpiece
			{ itemID = 46204, "=ds=" .. "Yogg-Saron" }, --Conqueror's Worldbreaker Spaulders
			{ itemID = 46198, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Worldbreaker Tunic
			{ itemID = 46199, "=ds=" .. "Mimiron" }, --Conqueror's Worldbreaker Handguards
			{ itemID = 46202, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Worldbreaker Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement",
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Worldbreaker Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45412, "=ds=" .. "Mimiron" }, --Valorous Worldbreaker Faceguard
			{ itemID = 45415, "=ds=" .. BabbleBoss.Thorim }, --Valorous Worldbreaker Shoulderguards
			{ itemID = 45413, "=ds=" .. "Yogg-Saron" }, --Valorous Worldbreaker Chestguard
			{ itemID = 45414, "=ds=" .. BabbleBoss.Freya }, --Valorous Worldbreaker Grips
			{ itemID = 45416, "=ds=" .. BabbleBoss.Hodir }, --Valorous Worldbreaker War-Kilt
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Worldbreaker Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46212, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Worldbreaker Faceguard
			{ itemID = 46203, "=ds=" .. "Yogg-Saron" }, --Conqueror's Worldbreaker Shoulderguards
			{ itemID = 46205, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Worldbreaker Chestguard
			{ itemID = 46200, "=ds=" .. "Mimiron" }, --Conqueror's Worldbreaker Grips
			{ itemID = 46208, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Worldbreaker War-Kilt
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental",
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Worldbreaker Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45408, "=ds=" .. "Mimiron" }, --Valorous Worldbreaker Helm
			{ itemID = 45410, "=ds=" .. BabbleBoss.Thorim }, --Valorous Worldbreaker Shoulderpads
			{ itemID = 45411, "=ds=" .. "Yogg-Saron" }, --Valorous Worldbreaker Hauberk
			{ itemID = 45406, "=ds=" .. BabbleBoss.Freya }, --Valorous Worldbreaker Gloves
			{ itemID = 45409, "=ds=" .. BabbleBoss.Hodir }, --Valorous Worldbreaker Kilt
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Worldbreaker Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46209, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Worldbreaker Helm
			{ itemID = 46211, "=ds=" .. "Yogg-Saron" }, --Conqueror's Worldbreaker Shoulderpads
			{ itemID = 46206, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Worldbreaker Hauberk
			{ itemID = 46207, "=ds=" .. "Mimiron" }, --Conqueror's Worldbreaker Gloves
			{ itemID = 46210, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Worldbreaker Kilt
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Deathbringer Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45417, "=ds=" .. "Mimiron" }, --Valorous Deathbringer Hood
			{ itemID = 45422, "=ds=" .. BabbleBoss.Thorim }, --Valorous Deathbringer Shoulderpads
			{ itemID = 45421, "=ds=" .. "Yogg-Saron" }, --Valorous Deathbringer Robe
			{ itemID = 45419, "=ds=" .. BabbleBoss.Freya }, --Valorous Deathbringer Gloves
			{ itemID = 45420, "=ds=" .. BabbleBoss.Hodir }, --Valorous Deathbringer Leggings
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Deathbringer Garb", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46140, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Deathbringer Hood
			{ itemID = 46136, "=ds=" .. "Yogg-Saron" }, --Conqueror's Deathbringer Shoulderpads
			{ itemID = 46137, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Deathbringer Robe
			{ itemID = 46135, "=ds=" .. "Mimiron" }, --Conqueror's Deathbringer Gloves
			{ itemID = 46139, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Deathbringer Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury",
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Siegebreaker Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45431, "=ds=" .. "Mimiron" }, --Valorous Siegebreaker Helmet
			{ itemID = 45433, "=ds=" .. BabbleBoss.Thorim }, --Valorous Siegebreaker Shoulderplates
			{ itemID = 45429, "=ds=" .. "Yogg-Saron" }, --Valorous Siegebreaker Battleplate
			{ itemID = 45430, "=ds=" .. BabbleBoss.Freya }, --Valorous Siegebreaker Gauntlets
			{ itemID = 45432, "=ds=" .. BabbleBoss.Hodir }, --Valorous Siegebreaker Legplates
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Siegebreaker Battlegear", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46151, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Siegebreaker Helmet
			{ itemID = 46149, "=ds=" .. "Yogg-Saron" }, --Conqueror's Siegebreaker Shoulderplates
			{ itemID = 46146, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Siegebreaker Battleplate
			{ itemID = 46148, "=ds=" .. "Mimiron" }, --Conqueror's Siegebreaker Gauntlets
			{ itemID = 46150, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Siegebreaker Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection",
		{
			{ icon = "INV_Shield_05", name = "=q6=".."Siegebreaker Plate", desc = "=q5=" .. "Tier 8" .. " (" .. "10 Man" .. ")" },
			{ itemID = 45425, "=ds=" .. "Mimiron" }, --Valorous Siegebreaker Greathelm
			{ itemID = 45428, "=ds=" .. BabbleBoss.Thorim }, --Valorous Siegebreaker Pauldrons
			{ itemID = 45424, "=ds=" .. "Yogg-Saron" }, --Valorous Siegebreaker Breastplate
			{ itemID = 45426, "=ds=" .. BabbleBoss.Freya }, --Valorous Siegebreaker Handguards
			{ itemID = 45427, "=ds=" .. BabbleBoss.Hodir }, --Valorous Siegebreaker Legguards
			{ icon = "INV_Shield_05", name = "=q6=".."Siegebreaker Plate", desc = "=q5=" .. "Tier 8" .. " (" .. "25 Man" .. ")" },
			{ itemID = 46166, "=ds=" .. BabbleBoss.Thorim }, --Conqueror's Siegebreaker Greathelm
			{ itemID = 46167, "=ds=" .. "Yogg-Saron" }, --Conqueror's Siegebreaker Pauldrons
			{ itemID = 46162, "=ds=" .. BabbleBoss.Hodir }, --Conqueror's Siegebreaker Breastplate
			{ itemID = 46164, "=ds=" .. "Mimiron" }, --Conqueror's Siegebreaker Handguards
			{ itemID = 46169, "=ds=" .. BabbleBoss.Freya }, --Conqueror's Siegebreaker Legguards
		},
	},
}
------------------------
--- Tier 9 Sets (T9) ---
------------------------
AtlasLoot_Data["T9"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Tier 9",
	Type = "WrathRaid",
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Thassarian's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48472, price = "50 #eoftriumph#" }, --Thassarian's Helmet of Conquest
			{ itemID = 48478, price = "30 #eoftriumph#" }, --Thassarian's Shoulderplates of Conquest
			{ itemID = 48474, price = "50 #eoftriumph#" }, --Thassarian's Battleplate of Conquest
			{ itemID = 48480, price = "30 #eoftriumph#" }, --Thassarian's Gauntlets of Conquest
			{ itemID = 48476, price = "50 #eoftriumph#" }, --Thassarian's Legplates of Conquest
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Thassarian's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48483, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Helmet of Triumph
			{ itemID = 48485, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Shoulderplates of Triumph
			{ itemID = 48481, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Battleplate of Triumph
			{ itemID = 48482, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Gauntlets of Triumph
			{ itemID = 48484, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Legplates of Triumph
		},
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Thassarian's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48488 }, --Thassarian's Helmet of Triumph
			{ itemID = 48486 }, --Thassarian's Shoulderplates of Triumph
			{ itemID = 48490 }, --Thassarian's Battleplate of Triumph
			{ itemID = 48489 }, --Thassarian's Gauntlets of Triumph
			{ itemID = 48487 }, --Thassarian's Legplates of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Koltira's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48503, price = "50 #eoftriumph#" }, --Koltira's Helmet of Conquest
			{ itemID = 48505, price = "30 #eoftriumph#" }, --Koltira's Shoulderplates of Conquest
			{ itemID = 48501, price = "50 #eoftriumph#" }, --Koltira's Battleplate of Conquest
			{ itemID = 48502, price = "30 #eoftriumph#" }, --Koltira's Gauntlets of Conquest
			{ itemID = 48504, price = "50 #eoftriumph#" }, --Koltira's Legplates of Conquest
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Koltira's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48498, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Helmet of Triumph
			{ itemID = 48496, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Shoulderplates of Triumph
			{ itemID = 48500, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Battleplate of Triumph
			{ itemID = 48499, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Gauntlets of Triumph
			{ itemID = 48497, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Legplates of Triumph
		},
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Koltira's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48493 }, --Koltira's Helmet of Triumph
			{ itemID = 48495 }, --Koltira's Shoulderplates of Triumph
			{ itemID = 48491 }, --Koltira's Battleplate of Triumph
			{ itemID = 48492 }, --Koltira's Gauntlets of Triumph
			{ itemID = 48494 }, --Koltira's Legplates of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Thassarian's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48529, price = "50 #eoftriumph#" }, --Thassarian's Faceguard of Conquest
			{ itemID = 48535, price = "30 #eoftriumph#" }, --Thassarian's Pauldrons of Conquest
			{ itemID = 48531, price = "50 #eoftriumph#" }, --Thassarian's Chestguard of Conquest
			{ itemID = 48537, price = "30 #eoftriumph#" }, --Thassarian's Handguards of Conquest
			{ itemID = 48533, price = "50 #eoftriumph#" }, --Thassarian's Legguards of Conquest
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Thassarian's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48540, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Faceguard of Triumph
			{ itemID = 48542, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Pauldrons of Triumph
			{ itemID = 48538, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Chestguard of Triumph
			{ itemID = 48539, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Handguards of Triumph
			{ itemID = 48541, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thassarian's Legguards of Triumph
		},
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Thassarian's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48545 }, --Thassarian's Faceguard of Triumph
			{ itemID = 48543 }, --Thassarian's Pauldrons of Triumph
			{ itemID = 48547 }, --Thassarian's Chestguard of Triumph
			{ itemID = 48546 }, --Thassarian's Handguards of Triumph
			{ itemID = 48544 }, --Thassarian's Legguards of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Koltira's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48560, price = "50 #eoftriumph#" }, --Koltira's Faceguard of Conquest
			{ itemID = 48562, price = "30 #eoftriumph#" }, --Koltira's Pauldrons of Conquest
			{ itemID = 48558, price = "50 #eoftriumph#" }, --Koltira's Chestguard of Conquest
			{ itemID = 48559, price = "30 #eoftriumph#" }, --Koltira's Handguards of Conquest
			{ itemID = 48561, price = "50 #eoftriumph#" }, --Koltira's Legguards of Conquest
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Koltira's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48555, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Faceguard of Triumph
			{ itemID = 48553, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Pauldrons of Triumph
			{ itemID = 48557, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Chestguard of Triumph
			{ itemID = 48556, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Handguards of Triumph
			{ itemID = 48554, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Koltira's Legguards of Triumph
		},
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Koltira's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48550 }, --Koltira's Faceguard of Triumph
			{ itemID = 48552 }, --Koltira's Pauldrons of Triumph
			{ itemID = 48548 }, --Koltira's Chestguard of Triumph
			{ itemID = 48549 }, --Koltira's Handguards of Triumph
			{ itemID = 48551 }, --Koltira's Legguards of Triumph
		},
	},
	{
		Name = "Druid" .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Malfurion's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48102, price = "50 #eoftriumph#" }, --Malfurion's Headpiece of Conquest
			{ itemID = 48131, price = "30 #eoftriumph#" }, --Malfurion's Spaulders of Conquest
			{ itemID = 48129, price = "50 #eoftriumph#" }, --Malfurion's Robe of Conquest
			{ itemID = 48132, price = "30 #eoftriumph#" }, --Malfurion's Handguards of Conquest
			{ itemID = 48130, price = "50 #eoftriumph#" }, --Malfurion's Leggings of Conquest
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Malfurion's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48134, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Headpiece of Triumph
			{ itemID = 48137, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Spaulders of Triumph
			{ itemID = 48136, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Robe of Triumph
			{ itemID = 48133, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Handguards of Triumph
			{ itemID = 48135, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Leggings of Triumph
		},
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Malfurion's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48141 }, --Malfurion's Headpiece of Triumph
			{ itemID = 48138 }, --Malfurion's Spaulders of Triumph
			{ itemID = 48139 }, --Malfurion's Robe of Triumph
			{ itemID = 48142 }, --Malfurion's Handguards of Triumph
			{ itemID = 48140 }, --Malfurion's Leggings of Triumph
		},
	},
	{
		Name = "Druid" .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Runetotem's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48154, price = "50 #eoftriumph#" }, --Runetotem's Headpiece of Conquest
			{ itemID = 48157, price = "30 #eoftriumph#" }, --Runetotem's Spaulders of Conquest
			{ itemID = 48156, price = "50 #eoftriumph#" }, --Runetotem's Robe of Conquest
			{ itemID = 48153, price = "30 #eoftriumph#" }, --Runetotem's Handguards of Conquest
			{ itemID = 48155, price = "50 #eoftriumph#" }, --Runetotem's Leggings of Conquest
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Runetotem's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48151, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Headpiece of Triumph
			{ itemID = 48148, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Spaulders of Triumph
			{ itemID = 48149, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Robe of Triumph
			{ itemID = 48152, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Handguards of Triumph
			{ itemID = 48150, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Leggings of Triumph
		},
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Runetotem's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48144 }, --Runetotem's Headpiece of Triumph
			{ itemID = 48147 }, --Runetotem's Spaulders of Triumph
			{ itemID = 48146 }, --Runetotem's Robe of Triumph
			{ itemID = 48143 }, --Runetotem's Handguards of Triumph
			{ itemID = 48145 }, --Runetotem's Leggings of Triumph
		},
	},
	{
		Name = "Druid" .. " - " .. "Feral",
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Malfurion's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48214, price = "50 #eoftriumph#" }, --Malfurion's Headguard of Conquest
			{ itemID = 48217, price = "30 #eoftriumph#" }, --Malfurion's Shoulderpads of Conquest
			{ itemID = 48216, price = "50 #eoftriumph#" }, --Malfurion's Raiments of Conquest
			{ itemID = 48213, price = "30 #eoftriumph#" }, --Malfurion's Handgrips of Conquest
			{ itemID = 48215, price = "50 #eoftriumph#" }, --Malfurion's Legguards of Conquest
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Malfurion's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48211, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Headguard of Triumph
			{ itemID = 48208, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Shoulderpads of Triumph
			{ itemID = 48209, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Raiments of Triumph
			{ itemID = 48212, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Handgrips of Triumph
			{ itemID = 48210, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Legguards of Triumph
		},
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Malfurion's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48204 }, --Malfurion's Headguard of Triumph
			{ itemID = 48207 }, --Malfurion's Shoulderpads of Triumph
			{ itemID = 48206 }, --Malfurion's Raiments of Triumph
			{ itemID = 48203 }, --Malfurion's Handgrips of Triumph
			{ itemID = 48205 }, --Malfurion's Legguards of Triumph
		},
	},
	{
		Name = "Druid" .. " - " .. "Feral",
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Runetotem's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48188, price = "50 #eoftriumph#" }, --Runetotem's Headguard of Conquest
			{ itemID = 48191, price = "30 #eoftriumph#" }, --Runetotem's Shoulderpads of Conquest
			{ itemID = 48189, price = "50 #eoftriumph#" }, --Runetotem's Raiments of Conquest
			{ itemID = 48192, price = "30 #eoftriumph#" }, --Runetotem's Handgrips of Conquest
			{ itemID = 48190, price = "50 #eoftriumph#" }, --Runetotem's Legguards of Conquest
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Runetotem's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48194, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Headguard of Triumph
			{ itemID = 48197, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Shoulderpads of Triumph
			{ itemID = 48196, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Raiments of Triumph
			{ itemID = 48193, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Handgrips of Triumph
			{ itemID = 48195, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Legguards of Triumph
		},
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Runetotem's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48201 }, --Runetotem's Headguard of Triumph
			{ itemID = 48198 }, --Runetotem's Shoulderpads of Triumph
			{ itemID = 48199 }, --Runetotem's Raiments of Triumph
			{ itemID = 48202 }, --Runetotem's Handgrips of Triumph
			{ itemID = 48200 }, --Runetotem's Legguards of Triumph
		},
	},
	{
		Name = "Druid" .. " - " .. "Balance",
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Malfurion's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48158, price = "50 #eoftriumph#" }, --Malfurion's Cover of Conquest
			{ itemID = 48161, price = "30 #eoftriumph#" }, --Malfurion's Mantle of Conquest
			{ itemID = 48159, price = "50 #eoftriumph#" }, --Malfurion's Vestments of Conquest
			{ itemID = 48162, price = "30 #eoftriumph#" }, --Malfurion's Gloves of Conquest
			{ itemID = 48160, price = "50 #eoftriumph#" }, --Malfurion's Trousers of Conquest
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Malfurion's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48164, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Cover of Triumph
			{ itemID = 48167, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Mantle of Triumph
			{ itemID = 48166, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Vestments of Triumph
			{ itemID = 48163, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Gloves of Triumph
			{ itemID = 48165, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Malfurion's Trousers of Triumph
		},
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Malfurion's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48171 }, --Malfurion's Cover of Triumph
			{ itemID = 48168 }, --Malfurion's Mantle of Triumph
			{ itemID = 48169 }, --Malfurion's Vestments of Triumph
			{ itemID = 48172 }, --Malfurion's Gloves of Triumph
			{ itemID = 48170 }, --Malfurion's Trousers of Triumph
		},
	},
	{
		Name = "Druid" .. " - " .. "Balance",
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Runetotem's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48184, price = "50 #eoftriumph#" }, --Runetotem's Cover of Conquest
			{ itemID = 48187, price = "30 #eoftriumph#" }, --Runetotem's Mantle of Conquest
			{ itemID = 48186, price = "50 #eoftriumph#" }, --Runetotem's Vestments of Conquest
			{ itemID = 48183, price = "30 #eoftriumph#" }, --Runetotem's Gloves of Conquest
			{ itemID = 48185, price = "50 #eoftriumph#" }, --Runetotem's Trousers of Conquest
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Runetotem's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48181, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Cover of Triumph
			{ itemID = 48178, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Mantle of Triumph
			{ itemID = 48179, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Vestments of Triumph
			{ itemID = 48182, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Gloves of Triumph
			{ itemID = 48180, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Runetotem's Trousers of Triumph
		},
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Runetotem's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48174 }, --Runetotem's Cover of Triumph
			{ itemID = 48177 }, --Runetotem's Mantle of Triumph
			{ itemID = 48176 }, --Runetotem's Vestments of Triumph
			{ itemID = 48173 }, --Runetotem's Gloves of Triumph
			{ itemID = 48175 }, --Runetotem's Trousers of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Windrunner's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48250, price = "50 #eoftriumph#" }, --Windrunner's Headpiece of Conquest
			{ itemID = 48253, price = "30 #eoftriumph#" }, --Windrunner's Spaulders of Conquest
			{ itemID = 48251, price = "50 #eoftriumph#" }, --Windrunner's Tunic of Conquest
			{ itemID = 48254, price = "30 #eoftriumph#" }, --Windrunner's Handguards of Conquest
			{ itemID = 48252, price = "50 #eoftriumph#" }, --Windrunner's Legguards of Conquest
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Windrunner's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48257, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Headpiece of Triumph
			{ itemID = 48259, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Spaulders of Triumph
			{ itemID = 48255, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Tunic of Triumph
			{ itemID = 48256, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Handguards of Triumph
			{ itemID = 48258, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Legguards of Triumph
		},
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Windrunner's Pursuit", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48262 }, --Windrunner's Headpiece of Triumph
			{ itemID = 48260 }, --Windrunner's Spaulders of Triumph
			{ itemID = 48264 }, --Windrunner's Tunic of Triumph
			{ itemID = 48263 }, --Windrunner's Handguards of Triumph
			{ itemID = 48261 }, --Windrunner's Legguards of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Windrunner's Pursuit", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48277, price = "50 #eoftriumph#" }, --Windrunner's Headpiece of Conquest
			{ itemID = 48279, price = "30 #eoftriumph#" }, --Windrunner's Spaulders of Conquest
			{ itemID = 48275, price = "50 #eoftriumph#" }, --Windrunner's Tunic of Conquest
			{ itemID = 48276, price = "30 #eoftriumph#" }, --Windrunner's Handguards of Conquest
			{ itemID = 48278, price = "50 #eoftriumph#" }, --Windrunner's Legguards of Conquest
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Windrunner's Pursuit", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48272, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Headpiece of Triumph
			{ itemID = 48270, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Spaulders of Triumph
			{ itemID = 48274, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Tunic of Triumph
			{ itemID = 48273, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Handguards of Triumph
			{ itemID = 48271, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Windrunner's Legguards of Triumph
		},
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Windrunner's Pursuit", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48267 }, --Windrunner's Headpiece of Triumph
			{ itemID = 48269 }, --Windrunner's Spaulders of Triumph
			{ itemID = 48265 }, --Windrunner's Tunic of Triumph
			{ itemID = 48266 }, --Windrunner's Handguards of Triumph
			{ itemID = 48268 }, --Windrunner's Legguards of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Khadgar's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47748, price = "50 #eoftriumph#" }, --Khadgar's Hood of Conquest
			{ itemID = 47751, price = "30 #eoftriumph#" }, --Khadgar's Shoulderpads of Conquest
			{ itemID = 47749, price = "50 #eoftriumph#" }, --Khadgar's Robe of Conquest
			{ itemID = 47752, price = "30 #eoftriumph#" }, --Khadgar's Gauntlets of Conquest
			{ itemID = 47750, price = "50 #eoftriumph#" }, --Khadgar's Leggings of Conquest
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Khadgar's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47754, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Khadgar's Hood of Triumph
			{ itemID = 47757, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Khadgar's Shoulderpads of Triumph
			{ itemID = 47756, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Khadgar's Robe of Triumph
			{ itemID = 47753, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Khadgar's Gauntlets of Triumph
			{ itemID = 47755, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Khadgar's Leggings of Triumph
		},
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Khadgar's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47761 }, --Khadgar's Hood of Triumph
			{ itemID = 47758 }, --Khadgar's Shoulderpads of Triumph
			{ itemID = 47759 }, --Khadgar's Robe of Triumph
			{ itemID = 47762 }, --Khadgar's Gauntlets of Triumph
			{ itemID = 47760 }, --Khadgar's Leggings of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Sunstrider's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47774, price = "50 #eoftriumph#" }, --Sunstrider's Hood of Conquest
			{ itemID = 47777, price = "30 #eoftriumph#" }, --Sunstrider's Shoulderpads of Conquest
			{ itemID = 47776, price = "50 #eoftriumph#" }, --Sunstrider's Robe of Conquest
			{ itemID = 47773, price = "30 #eoftriumph#" }, --Sunstrider's Gauntlets of Conquest
			{ itemID = 47775, price = "50 #eoftriumph#" }, --Sunstrider's Leggings of Conquest
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Sunstrider's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47771, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Sunstrider's Hood of Triumph
			{ itemID = 47768, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Sunstrider's Shoulderpads of Triumph
			{ itemID = 47769, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Sunstrider's Robe of Triumph
			{ itemID = 47772, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Sunstrider's Gauntlets of Triumph
			{ itemID = 47770, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Sunstrider's Leggings of Triumph
		},
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Sunstrider's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47764 }, --Sunstrider's Hood of Triumph
			{ itemID = 47767 }, --Sunstrider's Shoulderpads of Triumph
			{ itemID = 47766 }, --Sunstrider's Robe of Triumph
			{ itemID = 47763 }, --Sunstrider's Gauntlets of Triumph
			{ itemID = 47765 }, --Sunstrider's Leggings of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Turalyon's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48564, price = "50 #eoftriumph#" }, --Turalyon's Headpiece of Conquest
			{ itemID = 48572, price = "30 #eoftriumph#" }, --Turalyon's Spaulders of Conquest
			{ itemID = 48566, price = "50 #eoftriumph#" }, --Turalyon's Tunic of Conquest
			{ itemID = 48574, price = "30 #eoftriumph#" }, --Turalyon's Gloves of Conquest
			{ itemID = 48568, price = "50 #eoftriumph#" }, --Turalyon's Greaves of Conquest
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Turalyon's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48577, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Headpiece of Triumph
			{ itemID = 48579, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Spaulders of Triumph
			{ itemID = 48575, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Tunic of Triumph
			{ itemID = 48576, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Gloves of Triumph
			{ itemID = 48578, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Greaves of Triumph
		},
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Turalyon's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48582 }, --Turalyon's Headpiece of Triumph
			{ itemID = 48580 }, --Turalyon's Spaulders of Triumph
			{ itemID = 48584 }, --Turalyon's Tunic of Triumph
			{ itemID = 48583 }, --Turalyon's Gloves of Triumph
			{ itemID = 48581 }, --Turalyon's Greaves of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Liadrin's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48597, price = "50 #eoftriumph#" }, --Liadrin's Headpiece of Conquest
			{ itemID = 48595, price = "30 #eoftriumph#" }, --Liadrin's Spaulders of Conquest
			{ itemID = 48599, price = "50 #eoftriumph#" }, --Liadrin's Tunic of Conquest
			{ itemID = 48598, price = "30 #eoftriumph#" }, --Liadrin's Gloves of Conquest
			{ itemID = 48596, price = "50 #eoftriumph#" }, --Liadrin's Greaves of Conquest
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Liadrin's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48592, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Headpiece of Triumph
			{ itemID = 48590, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Spaulders of Triumph
			{ itemID = 48594, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Tunic of Triumph
			{ itemID = 48593, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Gloves of Triumph
			{ itemID = 48591, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Greaves of Triumph
		},
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Liadrin's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48587 }, --Liadrin's Headpiece of Triumph
			{ itemID = 48585 }, --Liadrin's Spaulders of Triumph
			{ itemID = 48589 }, --Liadrin's Tunic of Triumph
			{ itemID = 48588 }, --Liadrin's Gloves of Triumph
			{ itemID = 48586 }, --Liadrin's Greaves of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution",
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Turalyon's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48604, price = "50 #eoftriumph#" }, --Turalyon's Helm of Conquest
			{ itemID = 48606, price = "30 #eoftriumph#" }, --Turalyon's Shoulderplates of Conquest
			{ itemID = 48602, price = "50 #eoftriumph#" }, --Turalyon's Battleplate of Conquest
			{ itemID = 48603, price = "30 #eoftriumph#" }, --Turalyon's Gauntlets of Conquest
			{ itemID = 48605, price = "50 #eoftriumph#" }, --Turalyon's Legplates of Conquest
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Turalyon's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48609, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Helm of Triumph
			{ itemID = 48611, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Shoulderplates of Triumph
			{ itemID = 48607, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Battleplate of Triumph
			{ itemID = 48608, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Gauntlets of Triumph
			{ itemID = 48610, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Legplates of Triumph
		},
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Turalyon's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48614 }, --Turalyon's Helm of Triumph
			{ itemID = 48612 }, --Turalyon's Shoulderplates of Triumph
			{ itemID = 48616 }, --Turalyon's Battleplate of Triumph
			{ itemID = 48615 }, --Turalyon's Gauntlets of Triumph
			{ itemID = 48613 }, --Turalyon's Legplates of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution",
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Liadrin's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48629, price = "50 #eoftriumph#" }, --Liadrin's Helm of Conquest
			{ itemID = 48627, price = "30 #eoftriumph#" }, --Liadrin's Shoulderplates of Conquest
			{ itemID = 48631, price = "50 #eoftriumph#" }, --Liadrin's Battleplate of Conquest
			{ itemID = 48630, price = "30 #eoftriumph#" }, --Liadrin's Gauntlets of Conquest
			{ itemID = 48628, price = "50 #eoftriumph#" }, --Liadrin's Legplates of Conquest
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Liadrin's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48624, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Helm of Triumph
			{ itemID = 48622, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Shoulderplates of Triumph
			{ itemID = 48626, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Battleplate of Triumph
			{ itemID = 48625, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Gauntlets of Triumph
			{ itemID = 48623, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Legplates of Triumph
		},
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Liadrin's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48619 }, --Liadrin's Helm of Triumph
			{ itemID = 48621 }, --Liadrin's Shoulderplates of Triumph
			{ itemID = 48617 }, --Liadrin's Battleplate of Triumph
			{ itemID = 48618 }, --Liadrin's Gauntlets of Triumph
			{ itemID = 48620 }, --Liadrin's Legplates of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection",
		{
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Turalyon's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48634, price = "50 #eoftriumph#" }, --Turalyon's Faceguard of Conquest
			{ itemID = 48636, price = "30 #eoftriumph#" }, --Turalyon's Shoulderguards of Conquest
			{ itemID = 48632, price = "50 #eoftriumph#" }, --Turalyon's Breastplate of Conquest
			{ itemID = 48633, price = "30 #eoftriumph#" }, --Turalyon's Handguards of Conquest
			{ itemID = 48635, price = "50 #eoftriumph#" }, --Turalyon's Legguards of Conquest
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Turalyon's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48639, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Faceguard of Triumph
			{ itemID = 48637, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Shoulderguards of Triumph
			{ itemID = 48641, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Breastplate of Triumph
			{ itemID = 48640, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Handguards of Triumph
			{ itemID = 48638, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Turalyon's Legguards of Triumph
		},
		{
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Turalyon's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48644 }, --Turalyon's Faceguard of Triumph
			{ itemID = 48646 }, --Turalyon's Shoulderguards of Triumph
			{ itemID = 48642 }, --Turalyon's Breastplate of Triumph
			{ itemID = 48643 }, --Turalyon's Handguards of Triumph
			{ itemID = 48645 }, --Turalyon's Legguards of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection",
		{
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Liadrin's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48654, price = "50 #eoftriumph#" }, --Liadrin's Faceguard of Conquest
			{ itemID = 48656, price = "30 #eoftriumph#" }, --Liadrin's Shoulderguards of Conquest
			{ itemID = 48652, price = "50 #eoftriumph#" }, --Liadrin's Breastplate of Conquest
			{ itemID = 48653, price = "30 #eoftriumph#" }, --Liadrin's Handguards of Conquest
			{ itemID = 48655, price = "50 #eoftriumph#" }, --Liadrin's Legguards of Conquest
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Liadrin's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48659, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Faceguard of Triumph
			{ itemID = 48661, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Shoulderguards of Triumph
			{ itemID = 48657, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Breastplate of Triumph
			{ itemID = 48658, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Handguards of Triumph
			{ itemID = 48660, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Liadrin's Legguards of Triumph
		},
		{
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Liadrin's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48649 }, --Liadrin's Faceguard of Triumph
			{ itemID = 48647 }, --Liadrin's Shoulderguards of Triumph
			{ itemID = 48651 }, --Liadrin's Breastplate of Triumph
			{ itemID = 48650 }, --Liadrin's Handguards of Triumph
			{ itemID = 48648 }, --Liadrin's Legguards of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow",
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Velen's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48073, price = "50 #eoftriumph#" }, --Velen's Circlet of Conquest
			{ itemID = 48076, price = "30 #eoftriumph#" }, --Velen's Mantle of Conquest
			{ itemID = 48075, price = "50 #eoftriumph#" }, --Velen's Raiments of Conquest
			{ itemID = 48072, price = "30 #eoftriumph#" }, --Velen's Handwraps of Conquest
			{ itemID = 48074, price = "50 #eoftriumph#" }, --Velen's Pants of Conquest
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Velen's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48078, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Circlet of Triumph
			{ itemID = 48081, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Mantle of Triumph
			{ itemID = 48080, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Raiments of Triumph
			{ itemID = 48077, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Handwraps of Triumph
			{ itemID = 48079, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Pants of Triumph
		},
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Velen's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48085 }, --Velen's Circlet of Triumph
			{ itemID = 48082 }, --Velen's Mantle of Triumph
			{ itemID = 48083 }, --Velen's Raiments of Triumph
			{ itemID = 48086 }, --Velen's Handwraps of Triumph
			{ itemID = 48084 }, --Velen's Pants of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow",
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Zabra's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48098, price = "50 #eoftriumph#" }, --Zabra's Circlet of Conquest
			{ itemID = 48101, price = "30 #eoftriumph#" }, --Zabra's Mantle of Conquest
			{ itemID = 48100, price = "50 #eoftriumph#" }, --Zabra's Raiments of Conquest
			{ itemID = 48097, price = "30 #eoftriumph#" }, --Zabra's Handwraps of Conquest
			{ itemID = 48099, price = "50 #eoftriumph#" }, --Zabra's Pants of Conquest
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Zabra's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48095, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Circlet of Triumph
			{ itemID = 48092, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Mantle of Triumph
			{ itemID = 48093, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Raiments of Triumph
			{ itemID = 48096, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Handwraps of Triumph
			{ itemID = 48094, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Pants of Triumph
		},
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Zabra's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48088 }, --Zabra's Circlet of Triumph
			{ itemID = 48091 }, --Zabra's Mantle of Triumph
			{ itemID = 48090 }, --Zabra's Raiments of Triumph
			{ itemID = 48087 }, --Zabra's Handwraps of Triumph
			{ itemID = 48089 }, --Zabra's Pants of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Velen's Raiment", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47914, price = "50 #eoftriumph#" }, --Velen's Cowl of Conquest
			{ itemID = 47981, price = "30 #eoftriumph#" }, --Velen's Shoulderpads of Conquest
			{ itemID = 47936, price = "50 #eoftriumph#" }, --Velen's Robe of Conquest
			{ itemID = 47982, price = "30 #eoftriumph#" }, --Velen's Gloves of Conquest
			{ itemID = 47980, price = "50 #eoftriumph#" }, --Velen's Leggings of Conquest
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Velen's Raiment", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47984, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Cowl of Triumph
			{ itemID = 47987, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Shoulderpads of Triumph
			{ itemID = 47986, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Robe of Triumph
			{ itemID = 47983, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Gloves of Triumph
			{ itemID = 47985, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Velen's Leggings of Triumph
		},
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Velen's Raiment", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48035 }, --Velen's Cowl of Triumph
			{ itemID = 48029 }, --Velen's Shoulderpads of Triumph
			{ itemID = 48031 }, --Velen's Robe of Triumph
			{ itemID = 48037 }, --Velen's Gloves of Triumph
			{ itemID = 48033 }, --Velen's Leggings of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Zabra's Raiment", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48068, price = "50 #eoftriumph#" }, --Zabra's Cowl of Conquest
			{ itemID = 48071, price = "30 #eoftriumph#" }, --Zabra's Shoulderpads of Conquest
			{ itemID = 48070, price = "50 #eoftriumph#" }, --Zabra's Robe of Conquest
			{ itemID = 48067, price = "30 #eoftriumph#" }, --Zabra's Gloves of Conquest
			{ itemID = 48069, price = "50 #eoftriumph#" }, --Zabra's Leggings of Conquest
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Zabra's Raiment", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48065, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Cowl of Triumph
			{ itemID = 48062, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Shoulderpads of Triumph
			{ itemID = 48063, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Robe of Triumph
			{ itemID = 48066, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Gloves of Triumph
			{ itemID = 48064, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Zabra's Leggings of Triumph
		},
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Zabra's Raiment", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48058 }, --Zabra's Cowl of Triumph
			{ itemID = 48061 }, --Zabra's Shoulderpads of Triumph
			{ itemID = 48060 }, --Zabra's Robe of Triumph
			{ itemID = 48057 }, --Zabra's Gloves of Triumph
			{ itemID = 48059 }, --Zabra's Leggings of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "Ability_BackStab", name = "=q6=".."VanCleef's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48218, price = "50 #eoftriumph#" }, --VanCleef's Helmet of Conquest
			{ itemID = 48221, price = "30 #eoftriumph#" }, --VanCleef's Pauldrons of Conquest
			{ itemID = 48219, price = "50 #eoftriumph#" }, --VanCleef's Breastplate of Conquest
			{ itemID = 48222, price = "30 #eoftriumph#" }, --VanCleef's Gauntlets of Conquest
			{ itemID = 48220, price = "50 #eoftriumph#" }, --VanCleef's Legplates of Conquest
			{ icon = "Ability_BackStab", name = "=q6=".."VanCleef's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48225, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --VanCleef's Helmet of Triumph
			{ itemID = 48227, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --VanCleef's Pauldrons of Triumph
			{ itemID = 48223, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --VanCleef's Breastplate of Triumph
			{ itemID = 48224, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --VanCleef's Gauntlets of Triumph
			{ itemID = 48226, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --VanCleef's Legplates of Triumph
		},
		{
			{ icon = "Ability_BackStab", name = "=q6=".."VanCleef's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48230 }, --VanCleef's Helmet of Triumph
			{ itemID = 48228 }, --VanCleef's Pauldrons of Triumph
			{ itemID = 48232 }, --VanCleef's Breastplate of Triumph
			{ itemID = 48231 }, --VanCleef's Gauntlets of Triumph
			{ itemID = 48229 }, --VanCleef's Legplates of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Garona's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48245, price = "50 #eoftriumph#" }, --Garona's Helmet of Conquest
			{ itemID = 48247, price = "30 #eoftriumph#" }, --Garona's Pauldrons of Conquest
			{ itemID = 48243, price = "50 #eoftriumph#" }, --Garona's Breastplate of Conquest
			{ itemID = 48244, price = "30 #eoftriumph#" }, --Garona's Gauntlets of Conquest
			{ itemID = 48246, price = "50 #eoftriumph#" }, --Garona's Legplates of Conquest
			{ icon = "Ability_BackStab", name = "=q6=".."Garona's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48240, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Garona's Helmet of Triumph
			{ itemID = 48238, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Garona's Pauldrons of Triumph
			{ itemID = 48242, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Garona's Breastplate of Triumph
			{ itemID = 48241, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Garona's Gauntlets of Triumph
			{ itemID = 48239, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Garona's Legplates of Triumph
		},
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Garona's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48235 }, --Garona's Helmet of Triumph
			{ itemID = 48237 }, --Garona's Pauldrons of Triumph
			{ itemID = 48233 }, --Garona's Breastplate of Triumph
			{ itemID = 48234 }, --Garona's Gauntlets of Triumph
			{ itemID = 48236 }, --Garona's Legplates of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental",
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Nobundo's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48313, price = "50 #eoftriumph#" }, --Nobundo's Helm of Conquest
			{ itemID = 48315, price = "30 #eoftriumph#" }, --Nobundo's Shoulderpads of Conquest
			{ itemID = 48310, price = "50 #eoftriumph#" }, --Nobundo's Hauberk of Conquest
			{ itemID = 48312, price = "30 #eoftriumph#" }, --Nobundo's Gloves of Conquest
			{ itemID = 48314, price = "50 #eoftriumph#" }, --Nobundo's Kilt of Conquest
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Nobundo's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48318, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Helm of Triumph
			{ itemID = 48320, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Shoulderpads of Triumph
			{ itemID = 48316, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Hauberk of Triumph
			{ itemID = 48317, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Gloves of Triumph
			{ itemID = 48319, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Kilt of Triumph
		},
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Nobundo's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48323 }, --Nobundo's Helm of Triumph
			{ itemID = 48321 }, --Nobundo's Shoulderpads of Triumph
			{ itemID = 48325 }, --Nobundo's Hauberk of Triumph
			{ itemID = 48324 }, --Nobundo's Gloves of Triumph
			{ itemID = 48322 }, --Nobundo's Kilt of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental",
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Thrall's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48338, price = "50 #eoftriumph#" }, --Thrall's Helm of Conquest
			{ itemID = 48340, price = "30 #eoftriumph#" }, --Thrall's Shoulderpads of Conquest
			{ itemID = 48336, price = "50 #eoftriumph#" }, --Thrall's Hauberk of Conquest
			{ itemID = 48337, price = "30 #eoftriumph#" }, --Thrall's Gloves of Conquest
			{ itemID = 48339, price = "50 #eoftriumph#" }, --Thrall's Kilt of Conquest
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Thrall's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48333, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Helm of Triumph
			{ itemID = 48331, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Shoulderpads of Triumph
			{ itemID = 48335, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Hauberk of Triumph
			{ itemID = 48334, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Gloves of Triumph
			{ itemID = 48332, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Kilt of Triumph
		},
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Thrall's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48328 }, --Thrall's Helm of Triumph
			{ itemID = 48330 }, --Thrall's Shoulderpads of Triumph
			{ itemID = 48326 }, --Thrall's Hauberk of Triumph
			{ itemID = 48327 }, --Thrall's Gloves of Triumph
			{ itemID = 48329 }, --Thrall's Kilt of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement",
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Nobundo's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48343, price = "50 #eoftriumph#" }, --Nobundo's Faceguard of Conquest
			{ itemID = 48345, price = "30 #eoftriumph#" }, --Nobundo's Shoulderguards of Conquest
			{ itemID = 48341, price = "50 #eoftriumph#" }, --Nobundo's Chestguard of Conquest
			{ itemID = 48342, price = "30 #eoftriumph#" }, --Nobundo's Grips of Conquest
			{ itemID = 48344, price = "50 #eoftriumph#" }, --Nobundo's War-Kilt of Conquest
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Nobundo's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48348, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Faceguard of Triumph
			{ itemID = 48350, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Shoulderguards of Triumph
			{ itemID = 48346, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Chestguard of Triumph
			{ itemID = 48347, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Grips of Triumph
			{ itemID = 48349, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's War-Kilt of Triumph
		},
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Nobundo's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48353 }, --Nobundo's Faceguard of Triumph
			{ itemID = 48351 }, --Nobundo's Shoulderguards of Triumph
			{ itemID = 48355 }, --Nobundo's Chestguard of Triumph
			{ itemID = 48354 }, --Nobundo's Grips of Triumph
			{ itemID = 48352 }, --Nobundo's War-Kilt of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement",
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Thrall's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48368, price = "50 #eoftriumph#" }, --Thrall's Faceguard of Conquest
			{ itemID = 48370, price = "30 #eoftriumph#" }, --Thrall's Shoulderguards of Conquest
			{ itemID = 48366, price = "50 #eoftriumph#" }, --Thrall's Chestguard of Conquest
			{ itemID = 48367, price = "30 #eoftriumph#" }, --Thrall's Grips of Conquest
			{ itemID = 48369, price = "50 #eoftriumph#" }, --Thrall's War-Kilt of Conquest
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Thrall's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48363, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Faceguard of Triumph
			{ itemID = 48361, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Shoulderguards of Triumph
			{ itemID = 48365, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Chestguard of Triumph
			{ itemID = 48364, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Grips of Triumph
			{ itemID = 48362, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's War-Kilt of Triumph
		},
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Thrall's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48358 }, --Thrall's Faceguard of Triumph
			{ itemID = 48360 }, --Thrall's Shoulderguards of Triumph
			{ itemID = 48356 }, --Thrall's Chestguard of Triumph
			{ itemID = 48357 }, --Thrall's Grips of Triumph
			{ itemID = 48359 }, --Thrall's War-Kilt of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Nobundo's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48280, price = "50 #eoftriumph#" }, --Nobundo's Headpiece of Conquest
			{ itemID = 48283, price = "30 #eoftriumph#" }, --Nobundo's Spaulders of Conquest
			{ itemID = 48281, price = "50 #eoftriumph#" }, --Nobundo's Tunic of Conquest
			{ itemID = 48284, price = "30 #eoftriumph#" }, --Nobundo's Handguards of Conquest
			{ itemID = 48282, price = "50 #eoftriumph#" }, --Nobundo's Legguards of Conquest
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Nobundo's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48287, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Headpiece of Triumph
			{ itemID = 48289, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Spaulders of Triumph
			{ itemID = 48285, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Tunic of Triumph
			{ itemID = 48286, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Handguards of Triumph
			{ itemID = 48288, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Nobundo's Legguards of Triumph
		},
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Nobundo's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48292 }, --Nobundo's Headpiece of Triumph
			{ itemID = 48290 }, --Nobundo's Spaulders of Triumph
			{ itemID = 48294 }, --Nobundo's Tunic of Triumph
			{ itemID = 48293 }, --Nobundo's Handguards of Triumph
			{ itemID = 48291 }, --Nobundo's Legguards of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Thrall's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48297, price = "50 #eoftriumph#" }, --Thrall's Headpiece of Conquest
			{ itemID = 48299, price = "30 #eoftriumph#" }, --Thrall's Spaulders of Conquest
			{ itemID = 48295, price = "50 #eoftriumph#" }, --Thrall's Tunic of Conquest
			{ itemID = 48296, price = "30 #eoftriumph#" }, --Thrall's Handguards of Conquest
			{ itemID = 48298, price = "50 #eoftriumph#" }, --Thrall's Legguards of Conquest
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Thrall's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48302, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Headpiece of Triumph
			{ itemID = 48304, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Spaulders of Triumph
			{ itemID = 48300, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Tunic of Triumph
			{ itemID = 48301, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Handguards of Triumph
			{ itemID = 48303, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Thrall's Legguards of Triumph
		},
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Thrall's Garb", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48307 }, --Thrall's Headpiece of Triumph
			{ itemID = 48309 }, --Thrall's Spaulders of Triumph
			{ itemID = 48305 }, --Thrall's Tunic of Triumph
			{ itemID = 48306 }, --Thrall's Handguards of Triumph
			{ itemID = 48308 }, --Thrall's Legguards of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Kel'Thuzad's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47784, price = "50 #eoftriumph#" }, --Kel'Thuzad's Hood of Conquest
			{ itemID = 47787, price = "30 #eoftriumph#" }, --Kel'Thuzad's Shoulderpads of Conquest
			{ itemID = 47786, price = "50 #eoftriumph#" }, --Kel'Thuzad's Robe of Conquest
			{ itemID = 47783, price = "30 #eoftriumph#" }, --Kel'Thuzad's Gloves of Conquest
			{ itemID = 47785, price = "50 #eoftriumph#" }, --Kel'Thuzad's Leggings of Conquest
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Kel'Thuzad's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47778, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Kel'Thuzad's Hood of Triumph
			{ itemID = 47781, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Kel'Thuzad's Shoulderpads of Triumph
			{ itemID = 47779, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Kel'Thuzad's Robe of Triumph
			{ itemID = 47782, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Kel'Thuzad's Gloves of Triumph
			{ itemID = 47780, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Kel'Thuzad's Leggings of Triumph
		},
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Kel'Thuzad's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47789 }, --Kel'Thuzad's Hood of Triumph
			{ itemID = 47792 }, --Kel'Thuzad's Shoulderpads of Triumph
			{ itemID = 47791 }, --Kel'Thuzad's Robe of Triumph
			{ itemID = 47788 }, --Kel'Thuzad's Gloves of Triumph
			{ itemID = 47790 }, --Kel'Thuzad's Leggings of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gul'dan's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47801, price = "50 #eoftriumph#" }, --Gul'dan's Hood of Conquest
			{ itemID = 47798, price = "30 #eoftriumph#" }, --Gul'dan's Shoulderpads of Conquest
			{ itemID = 47799, price = "50 #eoftriumph#" }, --Gul'dan's Robe of Conquest
			{ itemID = 47802, price = "30 #eoftriumph#" }, --Gul'dan's Gloves of Conquest
			{ itemID = 47800, price = "50 #eoftriumph#" }, --Gul'dan's Leggings of Conquest
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gul'dan's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47804, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Gul'dan's Hood of Triumph
			{ itemID = 47807, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Gul'dan's Shoulderpads of Triumph
			{ itemID = 47806, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Gul'dan's Robe of Triumph
			{ itemID = 47803, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Gul'dan's Gloves of Triumph
			{ itemID = 47805, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Gul'dan's Leggings of Triumph
		},
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Gul'dan's Regalia", desc = "=q5=" .. "Tier 9" },
			{ itemID = 47796 }, --Gul'dan's Hood of Triumph
			{ itemID = 47793 }, --Gul'dan's Shoulderpads of Triumph
			{ itemID = 47794 }, --Gul'dan's Robe of Triumph
			{ itemID = 47797 }, --Gul'dan's Gloves of Triumph
			{ itemID = 47795 }, --Gul'dan's Leggings of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury",
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Wrynn's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48371, price = "50 #eoftriumph#" }, --Wrynn's Helmet of Conquest
			{ itemID = 48374, price = "30 #eoftriumph#" }, --Wrynn's Shoulderplates of Conquest
			{ itemID = 48372, price = "50 #eoftriumph#" }, --Wrynn's Battleplate of Conquest
			{ itemID = 48375, price = "30 #eoftriumph#" }, --Wrynn's Gauntlets of Conquest
			{ itemID = 48373, price = "50 #eoftriumph#" }, --Wrynn's Legplates of Conquest
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Wrynn's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48378, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Helmet of Triumph
			{ itemID = 48380, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Shoulderplates of Triumph
			{ itemID = 48376, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Battleplate of Triumph
			{ itemID = 48377, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Gauntlets of Triumph
			{ itemID = 48379, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Legplates of Triumph
		},
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Wrynn's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48383 }, --Wrynn's Helmet of Triumph
			{ itemID = 48381 }, --Wrynn's Shoulderplates of Triumph
			{ itemID = 48385 }, --Wrynn's Battleplate of Triumph
			{ itemID = 48384 }, --Wrynn's Gauntlets of Triumph
			{ itemID = 48382 }, --Wrynn's Legplates of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury",
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Hellscream's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48388, price = "50 #eoftriumph#" }, --Hellscream's Helmet of Conquest
			{ itemID = 48390, price = "30 #eoftriumph#" }, --Hellscream's Shoulderplates of Conquest
			{ itemID = 48386, price = "50 #eoftriumph#" }, --Hellscream's Battleplate of Conquest
			{ itemID = 48387, price = "30 #eoftriumph#" }, --Hellscream's Gauntlets of Conquest
			{ itemID = 48389, price = "50 #eoftriumph#" }, --Hellscream's Legplates of Conquest
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Hellscream's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48393, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Helmet of Triumph
			{ itemID = 48395, --Hellscream's Shoulderplates of Triumph
			"45 #eoftriumph# 1 #trophyofthecrusade#" },
			{ itemID = 48391, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Battleplate of Triumph
			{ itemID = 48392, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Gauntlets of Triumph
			{ itemID = 48394, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Legplates of Triumph
		},
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Hellscream's Battlegear", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48398 }, --Hellscream's Helmet of Triumph
			{ itemID = 48400 }, --Hellscream's Shoulderplates of Triumph
			{ itemID = 48396 }, --Hellscream's Battleplate of Triumph
			{ itemID = 48397 }, --Hellscream's Gauntlets of Triumph
			{ itemID = 48399 }, --Hellscream's Legplates of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection",
		{
			{ icon = "INV_Shield_05", name = "=q6=".."Wrynn's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48429, price = "50 #eoftriumph#" }, --Wrynn's Greathelm of Conquest
			{ itemID = 48448, price = "30 #eoftriumph#" }, --Wrynn's Pauldrons of Conquest
			{ itemID = 48436, price = "50 #eoftriumph#" }, --Wrynn's Breastplate of Conquest
			{ itemID = 48449, price = "30 #eoftriumph#" }, --Wrynn's Handguards of Conquest
			{ itemID = 48445, price = "50 #eoftriumph#" }, --Wrynn's Legguards of Conquest
			{ icon = "INV_Shield_05", name = "=q6=".."Wrynn's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48430,  price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Greathelm of Triumph
			{ itemID = 48454, price =  "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Pauldrons of Triumph
			{ itemID = 48450, price =  "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Breastplate of Triumph
			{ itemID = 48452, price =  "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Handguards of Triumph
			{ itemID = 48446, price =  "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Wrynn's Legguards of Triumph
		},
		{
			{ icon = "INV_Shield_05", name = "=q6=".."Wrynn's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48433 }, --Wrynn's Greathelm of Triumph
			{ itemID = 48455 }, --Wrynn's Pauldrons of Triumph
			{ itemID = 48451 }, --Wrynn's Breastplate of Triumph
			{ itemID = 48453 }, --Wrynn's Handguards of Triumph
			{ itemID = 48447 }, --Wrynn's Legguards of Triumph
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection",
		{
			{ icon = "INV_Shield_05", name = "=q6=".."Hellscream's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48458, price = "50 #eoftriumph#" }, --Hellscream's Greathelm of Conquest
			{ itemID = 48460, price = "30 #eoftriumph#" }, --Hellscream's Pauldrons of Conquest
			{ itemID = 48456, price = "50 #eoftriumph#" }, --Hellscream's Breastplate of Conquest
			{ itemID = 48457, price = "30 #eoftriumph#" }, --Hellscream's Handguards of Conquest
			{ itemID = 48459, price = "50 #eoftriumph#" }, --Hellscream's Legguards of Conquest
			{ icon = "INV_Shield_05", name = "=q6=".."Hellscream's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48463,  price = "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Greathelm of Triumph
			{ itemID = 48465, price =  "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Pauldrons of Triumph
			{ itemID = 48461, price =  "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Breastplate of Triumph
			{ itemID = 48462, price =  "45 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Handguards of Triumph
			{ itemID = 48464, price =  "75 #eoftriumph# 1 #trophyofthecrusade#" }, --Hellscream's Legguards of Triumph
		},
		{
			{ icon = "INV_Shield_05", name = "=q6=".."Hellscream's Plate", desc = "=q5=" .. "Tier 9" },
			{ itemID = 48468 }, --Hellscream's Greathelm of Triumph
			{ itemID = 48470 }, --Hellscream's Pauldrons of Triumph
			{ itemID = 48466 }, --Hellscream's Breastplate of Triumph
			{ itemID = 48467 }, --Hellscream's Handguards of Triumph
			{ itemID = 48469 }, --Hellscream's Legguards of Triumph
		},
	},
}

--------------------------
--- Tier 10 Sets (T10) ---
--------------------------
AtlasLoot_Data["T10"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Tier 10",
	Type = "WrathRaid",
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgelord's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50096, price = "95 #eoffrost#" }, --Scourgelord Helmet
			{ itemID = 50098, price = "60 #eoffrost#" }, --Scourgelord Shoulderplates
			{ itemID = 50094, price = "95 #eoffrost#" }, --Scourgelord Battleplate
			{ itemID = 50095, price = "60 #eoffrost#" }, --Scourgelord Gauntlets
			{ itemID = 50097, price = "95 #eoffrost#" }, --Scourgelord Legplates
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgelord's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51127 }, --Sanctified Scourgelord Helmet
			{ itemID = 51125 }, --Sanctified Scourgelord Shoulderplates
			{ itemID = 51129 }, --Sanctified Scourgelord Battleplate
			{ itemID = 51128 }, --Sanctified Scourgelord Gauntlets
			{ itemID = 51126 }, --Sanctified Scourgelord Legplates
		},
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgelord's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51312 }, --Sanctified Scourgelord Helmet
			{ itemID = 51314 }, --Sanctified Scourgelord Shoulderplates
			{ itemID = 51310 }, --Sanctified Scourgelord Battleplate
			{ itemID = 51311 }, --Sanctified Scourgelord Gauntlets
			{ itemID = 51313 }, --Sanctified Scourgelord Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK",
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgelord's Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50855, price = "95 #eoffrost#" }, --Scourgelord Faceguard
			{ itemID = 50853, price = "60 #eoffrost#" }, --Scourgelord Pauldrons
			{ itemID = 50857, price = "95 #eoffrost#" }, --Scourgelord Chestguard
			{ itemID = 50856, price = "60 #eoffrost#" }, --Scourgelord Handguards
			{ itemID = 50854, price = "95 #eoffrost#" }, --Scourgelord Legguards
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgelord's Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51133 }, --Sanctified Scourgelord Faceguard
			{ itemID = 51130 }, --Sanctified Scourgelord Pauldrons
			{ itemID = 51134 }, --Sanctified Scourgelord Chestguard
			{ itemID = 51132 }, --Sanctified Scourgelord Handguards
			{ itemID = 51131 }, --Sanctified Scourgelord Legguards
		},
		{
			{ icon = "Spell_Deathknight_DeathStrike", name = "=q6=".."Scourgelord's Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51306 }, --Sanctified Scourgelord Faceguard
			{ itemID = 51309 }, --Sanctified Scourgelord Pauldrons
			{ itemID = 51305 }, --Sanctified Scourgelord Chestguard
			{ itemID = 51307 }, --Sanctified Scourgelord Handguards
			{ itemID = 51308 }, --Sanctified Scourgelord Legguards
		},
	},
	{
		Name = "Druid" .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Lasherweave's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50108, price = "95 #eoffrost#" }, --Lasherweave's Helmet  
			{ itemID = 50113, price = "60 #eoffrost#" }, --Lasherweave's Pauldrons
			{ itemID = 50106, price = "95 #eoffrost#" }, --Lasherweave's Robes
			{ itemID = 50107, price = "60 #eoffrost#" }, --Lasherweave's Gauntlets
			{ itemID = 50109, price = "95 #eoffrost#" }, --Lasherweave's Legplates
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Lasherweave's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51137 }, --Sanctified Lasherweave's Helmet
			{ itemID = 51135 }, --Sanctified Lasherweave's Pauldrons
			{ itemID = 51139 }, --Sanctified Lasherweave's Robes
			{ itemID = 51138 }, --Sanctified Lasherweave's Gauntlets
			{ itemID = 51136 }, --Sanctified Lasherweave's Legplates
		},
		{
			{ icon = "Spell_Nature_Regeneration", name = "=q6=".."Lasherweave's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51302 }, --Sanctified Lasherweave's Helmet
			{ itemID = 51304 }, --Sanctified Lasherweave's Pauldrons
			{ itemID = 51300 }, --Sanctified Lasherweave's Robes
			{ itemID = 51301 }, --Sanctified Lasherweave's Gauntlets
			{ itemID = 51303 }, --Sanctified Lasherweave's Legplates
		},
	},
	{
		Name = "Druid" .. " - " .. "Feral",
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Lasherweave's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50826, price = "95 #eoffrost#" }, --Lasherweave's Headguard
			{ itemID = 50824, price = "60 #eoffrost#" }, --Lasherweave's Shoulderpads
			{ itemID = 50828, price = "95 #eoffrost#" }, --Lasherweave's Raiment
			{ itemID = 50827, price = "60 #eoffrost#" }, --Lasherweave's Handgrips
			{ itemID = 50825, price = "95 #eoffrost#" }, --Lasherweave's Legguards
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Lasherweave's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51143 }, --Sanctified Lasherweave's Headguard
			{ itemID = 51140 }, --Sanctified Lasherweave's Shoulderpads
			{ itemID = 51141 }, --Sanctified Lasherweave's Raiment
			{ itemID = 51144 }, --Sanctified Lasherweave's Handgrips
			{ itemID = 51142 }, --Sanctified Lasherweave's Legguards
		},
		{
			{ icon = "Ability_Druid_Maul", name = "=q6=".."Lasherweave's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51296 }, --Sanctified Lasherweave's Headguard
			{ itemID = 51299 }, --Sanctified Lasherweave's Shoulderpads
			{ itemID = 51298 }, --Sanctified Lasherweave's Raiment
			{ itemID = 51295 }, --Sanctified Lasherweave's Handgrips
			{ itemID = 51297 }, --Sanctified Lasherweave's Legguards
		},
	},
	{
		Name = "Druid" .. " - " .. "Balance",
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Lasherweave's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50821, price = "95 #eoffrost#" }, --Lasherweave's Cover
			{ itemID = 50819, price = "60 #eoffrost#" }, --Lasherweave's Mantle
			{ itemID = 50823, price = "95 #eoffrost#" }, --Lasherweave's Vestment
			{ itemID = 50822, price = "60 #eoffrost#" }, --Lasherweave's Gloves
			{ itemID = 50820, price = "95 #eoffrost#" }, --Lasherweave's Trousers
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Lasherweave's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51149 }, --Sanctified Lasherweave's Cover
			{ itemID = 51147 }, --Sanctified Lasherweave's Mantle
			{ itemID = 51145 }, --Sanctified Lasherweave's Vestment
			{ itemID = 51148 }, --Sanctified Lasherweave's Gloves
			{ itemID = 51146 }, --Sanctified Lasherweave's Trousers
		},
		{
			{ icon = "Spell_Nature_InsectSwarm", name = "=q6=".."Lasherweave's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51290, "=ds=" }, --Sanctified Lasherweave's Cover
			{ itemID = 51292, "=ds=" }, --Sanctified Lasherweave's Mantle
			{ itemID = 51294, "=ds=" }, --Sanctified Lasherweave's Vestment
			{ itemID = 51291, "=ds=" }, --Sanctified Lasherweave's Gloves
			{ itemID = 51293, "=ds=" }, --Sanctified Lasherweave's Trousers
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Ahn'Kahar Blood Hunter's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50115, price = "95 #eoffrost#" }, --Ahn'Kahar Blood Hunter's Headpiece
			{ itemID = 50117, price = "60 #eoffrost#" }, --Ahn'Kahar Blood Hunter's Spaulders
			{ itemID = 50118, price = "95 #eoffrost#" }, --Ahn'Kahar Blood Hunter's Tunic
			{ itemID = 50114, price = "60 #eoffrost#" }, --Ahn'Kahar Blood Hunter's Handguards
			{ itemID = 50116, price = "95 #eoffrost#" }, --Ahn'Kahar Blood Hunter's Legguards
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Ahn'Kahar Blood Hunter's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51153 }, --Sanctified Ahn'Kahar Blood Hunter's Headpiece
			{ itemID = 51151 }, --Sanctified Ahn'Kahar Blood Hunter's Spaulders
			{ itemID = 51150 }, --Sanctified Ahn'Kahar Blood Hunter's Tunic
			{ itemID = 51154 }, --Sanctified Ahn'Kahar Blood Hunter's Handguards
			{ itemID = 51152 }, --Sanctified Ahn'Kahar Blood Hunter's Legguards
		},
		{
			{ icon = "Ability_Hunter_RunningShot", name = "=q6=".."Ahn'Kahar Blood Hunter's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51286 }, --Sanctified Ahn'Kahar Blood Hunter's Headpiece
			{ itemID = 51288 }, --Sanctified Ahn'Kahar Blood Hunter's Spaulders
			{ itemID = 51289 }, --Sanctified Ahn'Kahar Blood Hunter's Tunic
			{ itemID = 51285 }, --Sanctified Ahn'Kahar Blood Hunter's Handguards
			{ itemID = 51287 }, --Sanctified Ahn'Kahar Blood Hunter's Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Bloodmage's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50276, price = "95 #eoffrost#" }, --Bloodmage Hood
			{ itemID = 50279, price = "60 #eoffrost#" }, --Bloodmage Shoulderpads
			{ itemID = 50278, price = "95 #eoffrost#" }, --Bloodmage Robe
			{ itemID = 50275, price = "60 #eoffrost#" }, --Bloodmage Gloves
			{ itemID = 50277, price = "95 #eoffrost#" }, --Bloodmage Leggings
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Bloodmage's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51158 }, --Sanctified Bloodmage Hood
			{ itemID = 51155 }, --Sanctified Bloodmage Shoulderpads
			{ itemID = 51156 }, --Sanctified Bloodmage Robe
			{ itemID = 51159 }, --Sanctified Bloodmage Gloves
			{ itemID = 51157 }, --Sanctified Bloodmage Leggings
		},
		{
			{ icon = "Spell_Frost_IceStorm", name = "=q6=".."Bloodmage's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51281 }, --Sanctified Bloodmage Hood
			{ itemID = 51284 }, --Sanctified Bloodmage Shoulderpads
			{ itemID = 51283 }, --Sanctified Bloodmage Robe
			{ itemID = 51280 }, --Sanctified Bloodmage Gauntlets
			{ itemID = 51282 }, --Sanctified Bloodmage Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Lightsworn Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50867, price = "95 #eoffrost#" }, --Lightsworn Headpiece
			{ itemID = 50865, price = "60 #eoffrost#" }, --Lightsworn Spaulders
			{ itemID = 50869, price = "95 #eoffrost#" }, --Lightsworn Tunic
			{ itemID = 50868, price = "60 #eoffrost#" }, --Lightsworn Gloves
			{ itemID = 50866, price = "95 #eoffrost#" }, --Lightsworn Greaves
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Lightsworn Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51167 }, --Sanctified Lightsworn Headpiece
			{ itemID = 51166 }, --Sanctified Lightsworn Spaulders
			{ itemID = 51165 }, --Sanctified Lightsworn Tunic
			{ itemID = 51169 }, --Sanctified Lightsworn Gloves
			{ itemID = 51168 }, --Sanctified Lightsworn Greaves
		},
		{
			{ icon = "Spell_Holy_HolyBolt", name = "=q6=".."Lightsworn Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51272 }, --Sanctified Lightsworn Headpiece
			{ itemID = 51273 }, --Sanctified Lightsworn Spaulders
			{ itemID = 51274 }, --Sanctified Lightsworn Tunic
			{ itemID = 51270 }, --Sanctified Lightsworn Gloves
			{ itemID = 51271 }, --Sanctified Lightsworn Greaves
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution",
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Lightsworn Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50326, price = "95 #eoffrost#" }, --Lightsworn Helmet
			{ itemID = 50324, price = "60 #eoffrost#" }, --Lightsworn Shoulderplates
			{ itemID = 50328, price = "95 #eoffrost#" }, --Lightsworn Battleplate
			{ itemID = 50327, price = "60 #eoffrost#" }, --Lightsworn Gauntlets
			{ itemID = 50325, price = "95 #eoffrost#" }, --Lightsworn Legplates
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Lightsworn Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51162 }, --Sanctified Lightsworn Helmet
			{ itemID = 51160 }, --Sanctified Lightsworn Shoulderplates
			{ itemID = 51164 }, --Sanctified Lightsworn Battleplate
			{ itemID = 51163 }, --Sanctified Lightsworn Gauntlets
			{ itemID = 51161 }, --Sanctified Lightsworn Legplates
		},
		{
			{ icon = "Spell_Holy_AuraOfLight", name = "=q6=".."Lightsworn Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51277 }, --Sanctified Lightsworn Helmet
			{ itemID = 51279 }, --Sanctified Lightsworn Shoulderplates
			{ itemID = 51275 }, --Sanctified Lightsworn Battleplate
			{ itemID = 51276 }, --Sanctified Lightsworn Gauntlets
			{ itemID = 51278 }, --Sanctified Lightsworn Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection",
		{
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Lightsworn Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50862, price = "95 #eoffrost#" }, --Lightsworn Faceguard
			{ itemID = 50860, price = "60 #eoffrost#" }, --Lightsworn Shoulderguards
			{ itemID = 50864, price = "95 #eoffrost#" }, --Lightsworn Chestguard
			{ itemID = 50863, price = "60 #eoffrost#" }, --Lightsworn Handguards
			{ itemID = 50861, price = "95 #eoffrost#" }, --Lightsworn Legguards
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Lightsworn Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51173 }, --Sanctified Lightsworn Faceguard
			{ itemID = 51170 }, --Sanctified Lightsworn Shoulderguards
			{ itemID = 51174 }, --Sanctified Lightsworn Chestguard
			{ itemID = 51172 }, --Sanctified Lightsworn Handguards
			{ itemID = 51171 }, --Sanctified Lightsworn Legguards
		},
		{
			{ icon = "Spell_Holy_SealOfMight", name = "=q6=".."Lightsworn Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51266 }, --Sanctified Lightsworn Faceguard
			{ itemID = 51269 }, --Sanctified Lightsworn Shoulderguards
			{ itemID = 51265 }, --Sanctified Lightsworn Chestguard
			{ itemID = 51267 }, --Sanctified Lightsworn Handguards
			{ itemID = 51268 }, --Sanctified Lightsworn Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow",
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Crimson Acolyte's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50392, price = "95 #eoffrost#" }, --Crimson Acolyte Cowl
			{ itemID = 50396, price = "60 #eoffrost#" }, --Crimson Acolyte Mantle
			{ itemID = 50394, price = "95 #eoffrost#" }, --Crimson Acolyte Raiments
			{ itemID = 50391, price = "60 #eoffrost#" }, --Crimson Acolyte Handwraps
			{ itemID = 50393, price = "95 #eoffrost#" }, --Crimson Acolyte Pants
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Crimson Acolyte's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51184 }, --Sanctified Crimson Acolyte Cowl
			{ itemID = 51182 }, --Sanctified Crimson Acolyte Mantle
			{ itemID = 51180 }, --Sanctified Crimson Acolyte Raiments
			{ itemID = 51183 }, --Sanctified Crimson Acolyte Handwraps
			{ itemID = 51181 }, --Sanctified Crimson Acolyte Pants
		},
		{
			{ icon = "Spell_Shadow_AntiShadow", name = "=q6=".."Crimson Acolyte's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51255 }, --Sanctified Crimson Acolyte Cowl
			{ itemID = 51257 }, --Sanctified Crimson Acolyte Mantle
			{ itemID = 51259 }, --Sanctified Crimson Acolyte Raiments
			{ itemID = 51256 }, --Sanctified Crimson Acolyte Handwraps
			{ itemID = 51258 }, --Sanctified Crimson Acolyte Pants
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy",
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Crimson Acolyte's Raiment", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50765, price = "95 #eoffrost#" }, --Crimson Acolyte Hood
			{ itemID = 50767, price = "60 #eoffrost#" }, --Crimson Acolyte Shoulderpads
			{ itemID = 50768, price = "95 #eoffrost#" }, --Crimson Acolyte Robe
			{ itemID = 50766, price = "60 #eoffrost#" }, --Crimson Acolyte Gloves
			{ itemID = 50769, price = "95 #eoffrost#" }, --Crimson Acolyte Leggings
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Crimson Acolyte's Raiment", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51178 }, --Sanctified Crimson Acolyte Hood
			{ itemID = 51175 }, --Sanctified Crimson Acolyte Shoulderpads
			{ itemID = 51176 }, --Sanctified Crimson Acolyte Robe
			{ itemID = 51179 }, --Sanctified Crimson Acolyte Gloves
			{ itemID = 51177 }, --Sanctified Crimson Acolyte Leggings
		},
		{
			{ icon = "Spell_Holy_PowerWordShield", name = "=q6=".."Crimson Acolyte's Raiment", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51261 }, --Sanctified Crimson Acolyte Hood
			{ itemID = 51264 }, --Sanctified Crimson Acolyte Shoulderpads
			{ itemID = 51263 }, --Sanctified Crimson Acolyte Robe
			{ itemID = 51260 }, --Sanctified Crimson Acolyte Gloves
			{ itemID = 51262 }, --Sanctified Crimson Acolyte Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Shadowblade's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50089, price = "95 #eoffrost#" }, --Shadowblade Helmet
			{ itemID = 50105, price = "60 #eoffrost#" }, --Shadowblade Pauldrons
			{ itemID = 50087, price = "95 #eoffrost#" }, --Shadowblade Breastplate
			{ itemID = 50088, price = "60 #eoffrost#" }, --Shadowblade Gauntlets
			{ itemID = 50090, price = "95 #eoffrost#" }, --Shadowblade Legplates
			{ icon = "Ability_BackStab", name = "=q6=".."Shadowblade's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51187 }, --Sanctified Shadowblade Helmet
			{ itemID = 51185 }, --Sanctified Shadowblade Pauldrons
			{ itemID = 51189 }, --Sanctified Shadowblade Breastplate
			{ itemID = 51188 }, --Sanctified Shadowblade Gauntlets
			{ itemID = 51186 }, --Sanctified Shadowblade Legplates
		},
		{
			{ icon = "Ability_BackStab", name = "=q6=".."Shadowblade's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51252 }, --Sanctified Shadowblade Helmet
			{ itemID = 51254 }, --Sanctified Shadowblade Pauldrons
			{ itemID = 51250 }, --Sanctified Shadowblade Breastplate
			{ itemID = 51251 }, --Sanctified Shadowblade Gauntlets
			{ itemID = 51253 }, --Sanctified Shadowblade Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental",
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Frost Witch's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50843, price = "95 #eoffrost#" }, --Frost Witch's Helm
			{ itemID = 50845, price = "60 #eoffrost#" }, --Frost Witch's Shoulderpads
			{ itemID = 50841, price = "95 #eoffrost#" }, --Frost Witch's Hauberk
			{ itemID = 50842, price = "60 #eoffrost#" }, --Frost Witch's Gloves
			{ itemID = 50844, price = "95 #eoffrost#" }, --Frost Witch's Kilt
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Frost Witch's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51202 }, --Sanctified Frost Witch's Helm
			{ itemID = 51204 }, --Sanctified Frost Witch's Shoulderpads
			{ itemID = 51200 }, --Sanctified Frost Witch's Hauberk
			{ itemID = 51201 }, --Sanctified Frost Witch's Gloves
			{ itemID = 51203 }, --Sanctified Frost Witch's Kilt
		},
		{
			{ icon = "Spell_Nature_Lightning", name = "=q6=".."Frost Witch's Regalia", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51237 }, --Sanctified Frost Witch's Helm
			{ itemID = 51235 }, --Sanctified Frost Witch's Shoulderpads
			{ itemID = 51239 }, --Sanctified Frost Witch's Hauberk
			{ itemID = 51238 }, --Sanctified Frost Witch's Gloves
			{ itemID = 51236 }, --Sanctified Frost Witch's Kilt
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement",
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Frost Witch's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50832, price = "95 #eoffrost#" }, --Frost Witch's Faceguard
			{ itemID = 50834, price = "60 #eoffrost#" }, --Frost Witch's Shoulderguards
			{ itemID = 50830, price = "95 #eoffrost#" }, --Frost Witch's Chestguard
			{ itemID = 50831, price = "60 #eoffrost#" }, --Frost Witch's Grips
			{ itemID = 50833, price = "95 #eoffrost#" }, --Frost Witch's War-Kilt
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Frost Witch's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51197 }, --Sanctified Frost Witch's Faceguard
			{ itemID = 51199 }, --Sanctified Frost Witch's Shoulderguards
			{ itemID = 51195 }, --Sanctified Frost Witch's Chestguard
			{ itemID = 51196 }, --Sanctified Frost Witch's Grips
			{ itemID = 51198 }, --Sanctified Frost Witch's War-Kilt
		},
		{
			{ icon = "Spell_FireResistanceTotem_01", name = "=q6=".."Frost Witch's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51242 }, --Sanctified Frost Witch's Faceguard
			{ itemID = 51240 }, --Sanctified Frost Witch's Shoulderguards
			{ itemID = 51244 }, --Sanctified Frost Witch's Chestguard
			{ itemID = 51243 }, --Sanctified Frost Witch's Grips
			{ itemID = 51241 }, --Sanctified Frost Witch's War-Kilt
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration",
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Frost Witch's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50837, price = "95 #eoffrost#" }, --Frost Witch's Headpiece
			{ itemID = 50839, price = "60 #eoffrost#" }, --Frost Witch's Spaulders
			{ itemID = 50835, price = "95 #eoffrost#" }, --Frost Witch's Tunic
			{ itemID = 50836, price = "60 #eoffrost#" }, --Frost Witch's Handguards
			{ itemID = 50838, price = "95 #eoffrost#" }, --Frost Witch's Legguards
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Frost Witch's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51192 }, --Sanctified Frost Witch's Headpiece
			{ itemID = 51194 }, --Sanctified Frost Witch's Spaulders
			{ itemID = 51190 }, --Sanctified Frost Witch's Tunic
			{ itemID = 51191 }, --Sanctified Frost Witch's Handguards
			{ itemID = 51193 }, --Sanctified Frost Witch's Legguards
		},
		{
			{ icon = "Spell_Nature_HealingWaveGreater", name = "=q6=".."Frost Witch's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51247 }, --Sanctified Frost Witch's Headpiece
			{ itemID = 51245 }, --Sanctified Frost Witch's Spaulders
			{ itemID = 51249 }, --Sanctified Frost Witch's Tunic
			{ itemID = 51248 }, --Sanctified Frost Witch's Handguards
			{ itemID = 51246 }, --Sanctified Frost Witch's Legguards
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Dark Coven's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50241, price = "95 #eoffrost#" }, --Dark Coven Hood
			{ itemID = 50244, price = "60 #eoffrost#" }, --Dark Coven Shoulderpads
			{ itemID = 50243, price = "95 #eoffrost#" }, --Dark Coven Robe
			{ itemID = 50240, price = "60 #eoffrost#" }, --Dark Coven Gloves
			{ itemID = 50242, price = "95 #eoffrost#" }, --Dark Coven Leggings
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Dark Coven's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51208 }, --Sanctified Dark Coven Hood
			{ itemID = 51205 }, --Sanctified Dark Coven Shoulderpads
			{ itemID = 51206 }, --Sanctified Dark Coven Robe
			{ itemID = 51209 }, --Sanctified Dark Coven Gloves
			{ itemID = 51207 }, --Sanctified Dark Coven Leggings
		},
		{
			{ icon = "Spell_Shadow_CurseOfTounges", name = "=q6=".."Dark Coven's Garb", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51231 }, --Sanctified Dark Coven Hood
			{ itemID = 51234 }, --Sanctified Dark Coven Shoulderpads
			{ itemID = 51233 }, --Sanctified Dark Coven Robe
			{ itemID = 51230 }, --Sanctified Dark Coven Gloves
			{ itemID = 51232 }, --Sanctified Dark Coven Leggings
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury",
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Ymirjar Lord's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50080, price = "95 #eoffrost#" }, --Ymirjar Lord's Helmet
			{ itemID = 50082, price = "60 #eoffrost#" }, --Ymirjar Lord's Shoulderplates
			{ itemID = 50078, price = "95 #eoffrost#" }, --Ymirjar Lord's Battleplate
			{ itemID = 50079, price = "60 #eoffrost#" }, --Ymirjar Lord's Gauntlets
			{ itemID = 50081, price = "95 #eoffrost#" }, --Ymirjar Lord's Legplates
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Ymirjar Lord's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51212 }, --Ymirjar Lord's Helmet
			{ itemID = 51210 }, --Ymirjar Lord's Shoulderplates
			{ itemID = 51214 }, --Ymirjar Lord's Battleplate
			{ itemID = 51213 }, --Ymirjar Lord's Gauntlets
			{ itemID = 51211 }, --Ymirjar Lord's Legplates
		},
		{
			{ icon = "Ability_Warrior_BattleShout", name = "=q6=".."Ymirjar Lord's Battlegear", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51227 }, --Ymirjar Lord's Helmet
			{ itemID = 51229 }, --Ymirjar Lord's Shoulderplates
			{ itemID = 51225 }, --Ymirjar Lord's Battleplate
			{ itemID = 51226 }, --Ymirjar Lord's Gauntlets
			{ itemID = 51228 }, --Ymirjar Lord's Legplates
		},
	},
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection",
		{
			{ icon = "INV_Shield_05", name = "=q6=".."Ymirjar Lord's Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 50848, price = "95 #eoffrost#" }, --Ymirjar Lord's Greathelm
			{ itemID = 50846, price = "60 #eoffrost#" }, --Ymirjar Lord's Pauldrons
			{ itemID = 50850, price = "95 #eoffrost#" }, --Ymirjar Lord's Breastplate
			{ itemID = 50849, price = "60 #eoffrost#" }, --Ymirjar Lord's Handguards
			{ itemID = 50847, price = "95 #eoffrost#" }, --Ymirjar Lord's Legguards
			{ icon = "INV_Shield_05", name = "=q6=".."Ymirjar Lord's Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51218 }, --Ymirjar Lord's Greathelm
			{ itemID = 51215 }, --Ymirjar Lord's Pauldrons
			{ itemID = 51219 }, --Ymirjar Lord's Breastplate
			{ itemID = 51217 }, --Ymirjar Lord's Handguards
			{ itemID = 51216 }, --Ymirjar Lord's Legguards
		},
		{
			{ icon = "INV_Shield_05", name = "=q6=".."Ymirjar Lord's Plate", desc = "=q5=" .. "Tier 10" },
			{ itemID = 51221 }, --Ymirjar Lord's Greathelm
			{ itemID = 51224 }, --Ymirjar Lord's Pauldrons
			{ itemID = 51220 }, --Ymirjar Lord's Breastplate
			{ itemID = 51222 }, --Ymirjar Lord's Handguards
			{ itemID = 51223 }, --Ymirjar Lord's Legguards
		},
	},
}

-------------------
--- Legendaries ---
-------------------

AtlasLoot_Data["Legendaries"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Legendary Items",
	Type = "WrathRaid",
	{
		Name = "Legendary Items",
		{
			{ itemID = 34334 }, --Thori'dal, the Stars' Fury
			{ itemID = 32837 }, --Warglaive of Azzinoth
			{ itemID = 32838 }, --Warglaive of Azzinoth
			{ itemID = 30312 }, --Infinity Blade
			{ itemID = 30311 }, --Warp Slicer
			{ itemID = 30317 }, --Cosmic Infuser
			{ itemID = 30316 }, --Devastation
			{ itemID = 30313 }, --Staff of Disintegration
			{ itemID = 30314 }, --Phaseshift Bulwark
			{ itemID = 30318 }, --Netherstrand Longbow
			{ itemID = 30319 }, --Nether Spike
		},
		{
			{ itemID = 22736 }, --Andonisus, Reaper of Souls
			{ itemID = 19019 }, --Thunderfury, Blessed Blade of the Windseeker
			{ itemID = 17182 }, --Sulfuras, Hand of Ragnaros
			{ itemID = 21176 }, --Black Qiraji Resonating Crystal
			{ itemID = 22632 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22589 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22631 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 22630 }, --Atiesh, Greatstaff of the Guardian
			{ itemID = 49623 }, --Shadowmourne
			{ itemID = 46017 }, --Val'anyr, Hammer of Ancient Kings
		},
	},
}

-----------------------
--- BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsWrath"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "World Epics",
	Type = "WrathDungeon",
	{
		Name = "World Epics",
		{
			{ itemID = 44309 }, --Sash of Jordan
			{ itemID = 44312 }, --Wapach's Spaulders of Solidarity
			{ itemID = 44308 }, --Signet of Edward the Odd
			{ itemID = 37835 }, --Je'Tze's Bell
			{ itemID = 37254 }, --Super Simian Sphere
		},
		{
			{ itemID = 44310 }, --Namlak's Supernumerary Sticker
			{ itemID = 43613 }, --The Dusk Blade
			{ itemID = 44311 }, --Avool's Sword of Jin
			{ itemID = 43611 }, --Krol Cleaver
			{ itemID = 44313 }, --Zom's Crackling Bulwark
			{ itemID = 43612 }, --Spineslicer
		},
	},
}

-------------------------------
--- Emblem of Heroism Items ---
-------------------------------

AtlasLoot_Data["EmblemofHeroism"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Emblem of Heroism Rewards",
	{
		Name = "Page 1",
		{
			{ itemID = 40697, price = "40 #eofheroism#" }, --Elegant Temple Gardens' Girdle
			{ itemID = 40696, price = "40 #eofheroism#" }, --Plush Sash of Guzbah
			{ itemID = 40694, price = "40 #eofheroism#" }, --Jorach's Crocolisk Skin Belt
			{ itemID = 40695, price = "40 #eofheroism#" }, --Vine Belt of the Woodland Dryad
			{ itemID = 40693, price = "40 #eofheroism#" }, --Beadwork Belt of Shamanic Vision
			{ itemID = 40692, price = "40 #eofheroism#" }, --Vereesa's Silver Chain Belt
			{ itemID = 40691, price = "40 #eofheroism#" }, --Magroth's Meditative Cincture
			{ itemID = 40688, price = "40 #eofheroism#" }, --Verdungo's Barbarian Cord
			{ itemID = 40689, price = "40 #eofheroism#" }, --Waistguard of Living Iron
		},
		{
			{ itemID = 40704, price = "50 #eofheroism#" }, --Pride
			{ itemID = 40702, price = "50 #eofheroism#" }, --Rolfsen's Ripper
			{ itemID = 40703, price = "50 #eofheroism#" }, --Grasscutter
			{ itemID = 40716, price = "15 #eofheroism#" }, --Lillehoff's Winged Blades
			{ itemID = 40701, price = "35 #eofheroism#" }, --Crygil's Discarded Plate Panel
			{ itemID = 40700, price = "35 #eofheroism#" }, --Protective Barricade of the Light
			{ itemID = 40699, price = "25 #eofheroism#" }, --Handbook of Obscure Remedies
			{ itemID = 40698, price = "25 #eofheroism#" }, --Ward of the Violet Citadel
		},
	},
	{
		Name = "Page 2",
		{
			{ itemID = 40711, price = "15 #eofheroism#" }, --Idol of Lush Moss
			{ itemID = 40712, price = "15 #eofheroism#" }, --Idol of Steadfast Renewal
			{ itemID = 40713, price = "15 #eofheroism#" }, --Idol of the Ravenous Beast
			{ itemID = 40707, price = "15 #eofheroism#" }, --Libram of Obstruction
			{ itemID = 40706, price = "15 #eofheroism#" }, --Libram of Reciprocation
			{ itemID = 40705, price = "15 #eofheroism#" }, --Libram of Renewal
			{ itemID = 40715, price = "15 #eofheroism#" }, --Sigil of Haunted Dreams
			{ itemID = 40714, price = "15 #eofheroism#" }, --Sigil of the Unfaltering Knight
			{ itemID = 40709, price = "15 #eofheroism#" }, --Totem of Forest Growth
			{ itemID = 40710, price = "15 #eofheroism#" }, --Totem of Splintering
			{ itemID = 40708, price = "15 #eofheroism#" }, --Totem of the Elemental Plane
		},
		{
			{ itemID = 40679, price = "25 #eofheroism#" }, --Chained Military Gorget
			{ itemID = 40680, price = "25 #eofheroism#" }, --Encircling Burnished Gold Chains
			{ itemID = 40681, price = "25 #eofheroism#" }, --Lattice Choker of Light
			{ itemID = 40678, price = "25 #eofheroism#" }, --Pendant of the Outcast Hero
			{ itemID = 40684, price = "40 #eofheroism#" }, --Mirror of Truth
			{ itemID = 40682, price = "40 #eofheroism#" }, --Sundial of the Exiled
			{ itemID = 40685, price = "40 #eofheroism#" }, --The Egg of Mortal Essence
			{ itemID = 40683, price = "40 #eofheroism#" }, --Valor Medal of the First War
		},
	},
	{
		Name = "Page 3",
		{
			{ itemID = 40610, price = "80 #eofheroism#" }, --Chestguard of the Lost Conqueror
			{ itemID = 40611, price = "80 #eofheroism#" }, --Chestguard of the Lost Protector
			{ itemID = 40612, price = "80 #eofheroism#" }, --Chestguard of the Lost Vanquisher
			{ itemID = 40613, price = "60 #eofheroism#" }, --Gloves of the Lost Conqueror
			{ itemID = 40614, price = "60 #eofheroism#" }, --Gloves of the Lost Protector
			{ itemID = 40615, price = "60 #eofheroism#" }, --Gloves of the Lost Vanquisher
			{ itemID = 44230, price = "200 #eofheroism#" }, --Reins of the Wooly Mammoth
			{ itemID = 44231, price = "200 #eofheroism#" }, --Reins of the Wooly Mammoth
		},
		{
			{ itemID = 36919, price = "20 #eofheroism#" }, --Cardinal Ruby
			{ itemID = 36922, price = "20 #eofheroism#" }, --King's Amber
			{ itemID = 36925, price = "20 #eofheroism#" }, --Majestic Zircon
			{ itemID = 36931, price = "10 #eofheroism#" }, --Ametrine
			{ itemID = 36928, price = "10 #eofheroism#" }, --Dreadstone
			{ itemID = 36934, price = "10 #eofheroism#" }, --Eye of Zul
			{ itemID = 43102, price = "10 #eofheroism#" }, --Frozen Orb
		},
	},
}

-----------------------------
--- Emblem of Valor Items ---
-----------------------------

AtlasLoot_Data["EmblemofValor"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Emblem of Valor Rewards",
	{
		Name = "Page 1",
		{
			{ itemID = 40724, price = "25 #eofvalor#" }, --Cloak of Kea Feathers
			{ itemID = 40723, price = "25 #eofvalor#" }, --Disguise of the Kumiho
			{ itemID = 40722, price = "25 #eofvalor#" }, --Platinum Mesh Cloak
			{ itemID = 40721, price = "25 #eofvalor#" }, --Hammerhead Sharkskin Cloak
			{ itemID = 40741, price = "60 #eofvalor#" }, --Cuffs of the Shadow Ascendant
			{ itemID = 40740, price = "60 #eofvalor#" }, --Wraps of the Astral Traveler
			{ itemID = 40751, price = "40 #eofvalor#" }, --Slippers of the Holy Light
			{ itemID = 40750, price = "40 #eofvalor#" }, --Xintor's Expeditionary Boots
			{ itemID = 40739, price = "60 #eofvalor#" }, --Bands of the Great Tree
			{ itemID = 40738, price = "60 #eofvalor#" }, --Wristwraps of the Cutthroat
			{ itemID = 40748, price = "40 #eofvalor#" }, --Boots of Captain Ellis
			{ itemID = 40749, price = "40 #eofvalor#" }, --Rainey's Chewed Boots
		},
		{
			{ itemID = 40736, price = "60 #eofvalor#" }, --Armguard of the Tower Archer
			{ itemID = 40737, price = "60 #eofvalor#" }, --Pigmented Clan Bindings
			{ itemID = 40746, price = "40 #eofvalor#" }, --Pack-Ice Striders
			{ itemID = 40747, price = "40 #eofvalor#" }, --Treads of Coastal Wandering
			{ itemID = 40734, price = "60 #eofvalor#" }, --Bracers of Dalaran's Parapets
			{ itemID = 40733, price = "60 #eofvalor#" }, --Wristbands of the Sentinel Huntress
			{ itemID = 40735, price = "60 #eofvalor#" }, --Zartson's Jungle Vambraces
			{ itemID = 40742, price = "40 #eofvalor#" }, --Bladed Steelboots
			{ itemID = 40743, price = "40 #eofvalor#" }, --Kyzoc's Ground Stompers
			{ itemID = 40745, price = "40 #eofvalor#" }, --Sabatons of Rapid Recovery
		},
	},
	{
		Name = "Page 2",
		{
			{ itemID = 40719, price = "25 #eofvalor#" }, --Band of Channeled Magic
			{ itemID = 40720, price = "25 #eofvalor#" }, --Renewal of Life
			{ itemID = 40717, price = "25 #eofvalor#" }, --Ring of Invincibility
			{ itemID = 40718, price = "25 #eofvalor#" }, --Signet of the Impregnable Fortress
			{ itemID = 40342, price = "25 #eofvalor#" }, --Idol of Awakening
			{ itemID = 40321, price = "25 #eofvalor#" }, --Idol of the Shooting Star
			{ itemID = 39757, price = "25 #eofvalor#" }, --Idol of Worship
			{ itemID = 40191, price = "25 #eofvalor#" }, --Libram of Radiance
			{ itemID = 40337, price = "25 #eofvalor#" }, --Libram of Resurgence
			{ itemID = 40268, price = "25 #eofvalor#" }, --Libram of Tolerance
			{ itemID = 40207, price = "25 #eofvalor#" }, --Sigil of Awareness
			{ itemID = 40322, price = "25 #eofvalor#" }, --Totem of Dueling
			{ itemID = 40267, price = "25 #eofvalor#" }, --Totem of Hex
			{ itemID = 39728, price = "25 #eofvalor#" }, --Totem of Misery
		},
		{
			{ itemID = 40637, price = "60 #eofvalor#" }, --Mantle of the Lost Conqueror
			{ itemID = 40638, price = "60 #eofvalor#" }, --Mantle of the Lost Protector
			{ itemID = 40639, price = "60 #eofvalor#" }, --Mantle of the Lost Vanquisher
			{ itemID = 40634, price = "75 #eofvalor#" }, --Legplates of the Lost Conqueror
			{ itemID = 40635, price = "75 #eofvalor#" }, --Legplates of the Lost Protector
			{ itemID = 40636, price = "75 #eofvalor#" }, --Legplates of the Lost Vanquisher
			{ itemID = 40752, price = "1 #eofvalor#" }, --Emblem of Heroism
		},
	},
}

--------------------------------
--- Emblem of Conquest Items ---
--------------------------------

AtlasLoot_Data["EmblemofConquest"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Emblem of Conquest Rewards",
	{
		Name = "Page 1",
		{
			{ itemID = 45840, price = "28 #eofconquest#" }, --Touch of the Occult
			{ itemID = 45831, price = "28 #eofconquest#" }, --Sash of Potent Incantations
			{ itemID = 45848, price = "39 #eofconquest#" }, --Legwraps of the Master Conjurer
			{ itemID = 45833, price = "28 #eofconquest#" }, --Bladebreaker Gauntlets
			{ itemID = 45835, price = "28 #eofconquest#" }, --Gauntlets of Serene Blessing
			{ itemID = 45834, price = "28 #eofconquest#" }, --Gauntlets of the Royal Watch
			{ itemID = 45824, price = "28 #eofconquest#" }, --Belt of the Singing Blade
			{ itemID = 45826, price = "28 #eofconquest#" }, --Girdle of Unyielding Trust
			{ itemID = 45825, price = "28 #eofconquest#" }, --Shieldwarder Girdle
			{ itemID = 45843, price = "39 #eofconquest#" }, --Legguards of the Peaceful Covenant
			{ itemID = 45841, price = "39 #eofconquest#" }, --Legplates of the Violet Champion
			{ itemID = 45842, price = "39 #eofconquest#" }, --Wyrmguard Legplates
		},
		{
			{ itemID = 45838, price = "28 #eofconquest#" }, --Gloves of the Blind Stalker
			{ itemID = 45839, price = "28 #eofconquest#" }, --Grips of the Secret Grove
			{ itemID = 45830, price = "28 #eofconquest#" }, --Belt of the Living Thicket
			{ itemID = 45829, price = "28 #eofconquest#" }, --Belt of the Twilight Assassin
			{ itemID = 45846, price = "39 #eofconquest#" }, --Leggings of Wavering Shadow
			{ itemID = 45847, price = "39 #eofconquest#" }, --Wildstrider Legguards
			{ itemID = 45837, price = "28 #eofconquest#" }, --Gloves of Augury
			{ itemID = 45836, price = "28 #eofconquest#" }, --Gloves of Unerring Aim
			{ itemID = 45827, price = "28 #eofconquest#" }, --Belt of the Ardent Marksman
			{ itemID = 45828, price = "28 #eofconquest#" }, --Windchill Binding
			{ itemID = 45844, price = "39 #eofconquest#" }, --Leggings of the Tireless Sentry
			{ itemID = 45845, price = "39 #eofconquest#" }, --Leggings of the Weary Mystic
		},
	},
	{
		Name = "Page 2",
		{
			{ itemID = 45820, price = "19 #eofconquest#" }, --Broach of the Wailing Night
			{ itemID = 45822, price = "19 #eofconquest#" }, --Evoker's Charm
			{ itemID = 45823, price = "19 #eofconquest#" }, --Frozen Tear of Elune
			{ itemID = 45821, price = "19 #eofconquest#" }, --Shard of the Crystal Forest
			{ itemID = 45819, price = "19 #eofconquest#" }, --Spiked Battleguard Choker
			{ itemID = 45638, price = "58 #eofconquest#" }, --Crown of the Wayward Conqueror
			{ itemID = 45639, price = "58 #eofconquest#" }, --Crown of the Wayward Protector
			{ itemID = 45640, price = "58 #eofconquest#" }, --Crown of the Wayward Vanquisher
			{ itemID = 45632, price = "58 #eofconquest#" }, --Breastplate of the Wayward Conqueror
			{ itemID = 45633, price = "58 #eofconquest#" }, --Breastplate of the Wayward Protector
			{ itemID = 45634, price = "58 #eofconquest#" }, --Breastplate of the Wayward Vanquisher
		},
		{
			{ itemID = 45509, price = "19 #eofconquest#" }, --Idol of the Corruptor
			{ itemID = 45270, price = "19 #eofconquest#" }, --Idol of the Crying Wind
			{ itemID = 46138, price = "19 #eofconquest#" }, --Idol of the Flourishing Life
			{ itemID = 45510, price = "19 #eofconquest#" }, --Libram of Discord
			{ itemID = 45436, price = "19 #eofconquest#" }, --Libram of the Resolute
			{ itemID = 45145, price = "19 #eofconquest#" }, --Libram of the Sacred Shield
			{ itemID = 45144, price = "19 #eofconquest#" }, --Sigil of Deflection
			{ itemID = 45254, price = "19 #eofconquest#" }, --Sigil of the Vengeful Heart
			{ itemID = 45114, price = "19 #eofconquest#" }, --Steamcaller's Totem
			{ itemID = 45255, price = "19 #eofconquest#" }, --Thunderfall Totem
			{ itemID = 45169, price = "19 #eofconquest#" }, --Totem of the Dancing Flame
			{ itemID = 40753, price = "1 #eofconquest#" }, --Emblem of Valor
			{ itemID = 45087, price = "18 #eofconquest#" }, --Runed Orb
		},
	},
}

-------------------------------
--- Emblem of Triumph Items ---
-------------------------------

AtlasLoot_Data["EmblemofTriumph"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Emblem of Triumph Rewards",
	{
		Name = "Page 1",
		{
			{ itemID = 47694, price = "75 #eoftriumph#" }, --Helm of Clouded Sight
			{ itemID = 47693, price = "75 #eoftriumph#" }, --Hood of Fiery Aftermath
			{ itemID = 47713, price = "45 #eoftriumph#" }, --Mantle of Catastrophic Emanation
			{ itemID = 47715, price = "45 #eoftriumph#" }, --Pauldrons of Revered Mortality
			{ itemID = 47690, price = "75 #eoftriumph#" }, --Helm of Abundant Growth
			{ itemID = 47689, price = "75 #eoftriumph#" }, --Hood of Lethal Intent
			{ itemID = 47708, price = "45 #eoftriumph#" }, --Duskstalker Shoulderpads
			{ itemID = 47712, price = "45 #eoftriumph#" }, --Shoulders of the Fateful Accord
			{ itemID = 47686, price = "75 #eoftriumph#" }, --Helm of Inner Warmth
			{ itemID = 47685, price = "75 #eoftriumph#" }, --Helm of the Brooding Dragon
			{ itemID = 47704, price = "45 #eoftriumph#" }, --Epaulets of the Devourer
			{ itemID = 47707, price = "45 #eoftriumph#" }, --Mantle of the Groundbreaker
			{ itemID = 47677, price = "75 #eoftriumph#" }, --Faceplate of the Honorbound
			{ itemID = 47681, price = "75 #eoftriumph#" }, --Heaume of the Restless Watch
			{ itemID = 47674, price = "75 #eoftriumph#" }, --Helm of Thunderous Rampage
			{ itemID = 47702, price = "45 #eoftriumph#" }, --Pauldrons of the Cavalier
			{ itemID = 47697, price = "45 #eoftriumph#" }, --Pauldrons of Trembling Rage
			{ itemID = 47698, price = "45 #eoftriumph#" }, --Shoulderplates of Enduring Order
		},
	},
	{
		Name = "Page 2",
		{
			{ itemID = 47695, price = "75 #eoftriumph#" }, --Hood of Clouded Sight
			{ itemID = 47692, price = "75 #eoftriumph#" }, --Hood of Smoldering Aftermath
			{ itemID = 47714, price = "45 #eoftriumph#" }, --Pauldrons of Catastrophic Emanation
			{ itemID = 47716, price = "45 #eoftriumph#" }, --Mantle of Revered Mortality
			{ itemID = 47691, price = "75 #eoftriumph#" }, --Mask of Abundant Growth
			{ itemID = 47688, price = "75 #eoftriumph#" }, --Mask of Lethal Intent
			{ itemID = 47709, price = "45 #eoftriumph#" }, --Duskstalker Pauldrons
			{ itemID = 47710, price = "45 #eoftriumph#" }, --Epaulets of the Fateful Accord
			{ itemID = 47687, price = "75 #eoftriumph#" }, --Headguard of Inner Warmth
			{ itemID = 47684, price = "75 #eoftriumph#" }, --Coif of the Brooding Dragon
			{ itemID = 47705, price = "45 #eoftriumph#" }, --Pauldrons of the Devourer
			{ itemID = 47706, price = "45 #eoftriumph#" }, --Shoulders of the Groundbreaker
			{ itemID = 47678, price = "75 #eoftriumph#" }, --Headplate of the Honorbound
			{ itemID = 47682, price = "75 #eoftriumph#" }, --Helm of the Restless Watch
			{ itemID = 47675, price = "75 #eoftriumph#" }, --Faceplate of Thunderous Rampage
			{ itemID = 47701, price = "45 #eoftriumph#" }, --Shoulderplates of the Cavalier
			{ itemID = 47696, price = "45 #eoftriumph#" }, --Shoulderplates of Trembling Rage
			{ itemID = 47699, price = "45 #eoftriumph#" }, --Shoulderguards of Enduring Order
		},
	},
	{
		Name = "Page 3",
		{
			{ itemID = 47732, price = "35 #eoftriumph#" }, --Band of the Invoker
			{ itemID = 47729, price = "35 #eoftriumph#" }, --Bloodshed Band
			{ itemID = 47731, price = "35 #eoftriumph#" }, --Clutch of Fortification
			{ itemID = 47730, price = "35 #eoftriumph#" }, --Dexterous Brightstone Ring
			{ itemID = 47733, price = "35 #eoftriumph#" }, --Heartmender Circle
			{ itemID = 47735, price = "50 #eoftriumph#" }, --Glyph of Indomitability
			{ itemID = 47734, price = "50 #eoftriumph#" }, --Mark of Supremacy
			{ itemID = 48722, price = "50 #eoftriumph#" }, --Shard of the Crystal Heart
			{ itemID = 48724, price = "50 #eoftriumph#" }, --Talisman of Resurgence
			{ itemID = 47556, price = "15 #eoftriumph#" }, --Crusader Orb
		},
		{
			{ itemID = 47671, price = "25 #eoftriumph#" }, --Idol of Flaring Growth
			{ itemID = 47670, price = "25 #eoftriumph#" }, --Idol of Lunar Fury
			{ itemID = 47668, price = "25 #eoftriumph#" }, --Idol of Mutilation
			{ itemID = 47664, price = "25 #eoftriumph#" }, --Libram of Defiance
			{ itemID = 47661, price = "25 #eoftriumph#" }, --Libram of Valiance
			{ itemID = 47662, price = "25 #eoftriumph#" }, --Libram of Veracity
			{ itemID = 47672, price = "25 #eoftriumph#" }, --Sigil of Insolence
			{ itemID = 47673, price = "25 #eoftriumph#" }, --Sigil of Virulence
			{ itemID = 47665, price = "25 #eoftriumph#" }, --Totem of Calming Tides
			{ itemID = 47666, price = "25 #eoftriumph#" }, --Totem of Electrifying Wind
			{ itemID = 47667, price = "25 #eoftriumph#" }, --Totem of Quaking Earth
			{ itemID = 47659, price = "25 #eoftriumph#" }, --Crimson Star
			{ itemID = 47660, price = "25 #eoftriumph#" }, --Blades of the Sable Cross
			{ itemID = 47658, price = "25 #eoftriumph#" }, --Brimstone Igniter
		},
	},
}

-----------------------------
--- Emblem of Frost Items ---
-----------------------------

AtlasLoot_Data["EmblemofFrost"] = {
	Module = "AtlasLoot_WrathoftheLichKing",
	Name = "Emblem of Frost Rewards",
	{
		Name = "Page 1",
		{
			{ itemID = 50975, price = "95 #eoffrost#" }, --Ermine Coronation Robes
			{ itemID = 50974, price = "95 #eoffrost#" }, --Meteor Chaser's Raiment
			{ itemID = 50984, price = "60 #eoffrost#" }, --Gloves of Ambivalence
			{ itemID = 50983, price = "60 #eoffrost#" }, --Gloves of False Gestures
			{ itemID = 50996, price = "60 #eoffrost#" }, --Belt of Omission
			{ itemID = 50997, price = "60 #eoffrost#" }, --Circle of Ossus
			{ itemID = 50972, price = "95 #eoffrost#" }, --Shadow Seeker's Tunic
			{ itemID = 50973, price = "95 #eoffrost#" }, --Vestments of Spruce and Fir
			{ itemID = 50982, price = "60 #eoffrost#" }, --Cat Burglar's Grips
			{ itemID = 50981, price = "60 #eoffrost#" }, --Gloves of the Great Horned Owl
			{ itemID = 50994, price = "60 #eoffrost#" }, --Belt of Petrified Ivy
			{ itemID = 50995, price = "60 #eoffrost#" }, --Vengeful Noose
		},
		{
			{ itemID = 50970, price = "95 #eoffrost#" }, --Longstrider's Vest
			{ itemID = 50971, price = "95 #eoffrost#" }, --Mail of the Geyser
			{ itemID = 50980, price = "60 #eoffrost#" }, --Blizzard Keeper's Mitts
			{ itemID = 50979, price = "60 #eoffrost#" }, --Logsplitters
			{ itemID = 50993, price = "60 #eoffrost#" }, --Band of the Night Raven
			{ itemID = 50992, price = "60 #eoffrost#" }, --Waistband of Despair
			{ itemID = 50965, price = "95 #eoffrost#" }, --Castle Breaker's Battleplate
			{ itemID = 50969, price = "95 #eoffrost#" }, --Chestplate of Unspoken Truths
			{ itemID = 50968, price = "95 #eoffrost#" }, --Cataclysmic Chestguard
			{ itemID = 50977, price = "60 #eoffrost#" }, --Gatecrasher's Gauntlets
			{ itemID = 50976, price = "60 #eoffrost#" }, --Gauntlets of Overexposure
			{ itemID = 50978, price = "60 #eoffrost#" }, --Gauntlets of the Kraken
			{ itemID = 50989, price = "60 #eoffrost#" }, --Lich Killer's Lanyard
			{ itemID = 50987, price = "60 #eoffrost#" }, --Malevolant Girdle
			{ itemID = 50991, price = "60 #eoffrost#" }, --Verdigris Chain Belt
		},
	},
	{
		Name = "Page 2",
		{
			{ itemID = 50468, price = "50 #eoffrost#" }, --Drape of the Violet Tower
			{ itemID = 50467, price = "50 #eoffrost#" }, --Might of the Ocean Serpent
			{ itemID = 50470, price = "50 #eoffrost#" }, --Recovered Scarlet Onslaught Cape
			{ itemID = 50466, price = "50 #eoffrost#" }, --Sentinel's Winter Cloak
			{ itemID = 50469, price = "50 #eoffrost#" }, --Volde's Cloak of the Night Sky
			{ itemID = 50356, price = "60 #eoffrost#" }, --Corroded Skeleton Key
			{ itemID = 50355, price = "60 #eoffrost#" }, --Herkuml War Token
			{ itemID = 50357, price = "60 #eoffrost#" }, --Maghia's Misguided Quill
			{ itemID = 50358, price = "60 #eoffrost#" }, --Purified Lunar Dust
			{ itemID = 49908, price = "23 #eoffrost#" }, --Primordial Saronite
			{ itemID = 47241 }, --Emblem of Triumph
		},
		{
			{ itemID = 50456, price = "30 #eoffrost#" }, --Idol of the Crying Moon
			{ itemID = 50457, price = "30 #eoffrost#" }, --Idol of the Lunar Eclipse
			{ itemID = 50454, price = "30 #eoffrost#" }, --Idol of the Black Willow
			{ itemID = 50460, price = "30 #eoffrost#" }, --Libram of Blinding Light
			{ itemID = 50461, price = "30 #eoffrost#" }, --Libram of the Eternal Tower
			{ itemID = 50455, price = "30 #eoffrost#" }, --Libram of Three Truths
			{ itemID = 50462, price = "30 #eoffrost#" }, --Sigil of the Bone Gryphon
			{ itemID = 50459, price = "30 #eoffrost#" }, --Sigil of the Hanged Man
			{ itemID = 50458, price = "30 #eoffrost#" }, --Bizuri's Totem of Shattered Ice
			{ itemID = 50463, price = "30 #eoffrost#" }, --Totem of the Avalanche
			{ itemID = 50464, price = "30 #eoffrost#" }, --Totem of the Surging Sea
			{ itemID = 50474, price = "30 #eoffrost#" }, --Shrapnel Star
		},
	},
}
