local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local alDif = AtlasLoot.Difficulties
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0");
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0");
local faction = UnitFactionGroup("player")
--Index
---Dungeons & BCRaids
----Keys
----Auchindoun: Auchenai Crypts
----Auchindoun: Mana-Tombs
----Auchindoun: Sethekk Halls
----Auchindoun: Shadow Labyrinth
----Black Temple
----Caverns of Time: Old Hillsbrad Foothills
----Caverns of Time: The Black Morass
----Caverns of Time: Hyjal Summit
----Coilfang Reservoir: The Slave Pens
----Coilfang Reservoir: The Steamvault
----Coilfang Reservoir: The Underbog
----Coilfang Reservoir: Serpentshrine Cavern
----Gruul's Lair
----Hellfire Citadel: Hellfire Ramparts
----Hellfire Citadel: The Blood Furnace
----Hellfire Citadel: The Shattered Halls
----Hellfire Citadel: Magtheridon's Lair
----Karazhan
----Sunwell Isle: Magister's Terrace
----Sunwell Isle: Sunwell Plateau
----Tempest Keep: The Arcatraz
----Tempest Keep: The Botanica
----Tempest Keep: The Mechanar
----Tempest Keep: The Eye
----Zul'Aman
---Factions
----Ashtongue Deathsworn
----Cenarion Expedition
----Honor Hold
----Keepers of Time
----Kurenai
----Lower City
----Netherwing
----Ogri'la
----Sha'tari Skyguard
----Shattered Sun Offensive
----Sporeggar
----The Aldor
----The Consortium
----The Mag'har
----The Scale of the Sands
----The Scryers
----The Sha'tar
----The Violet Eye
----Thrallmar
----Tranquillien
----Misc
---PvP
----World PvP - Hellfire Peninsula: Hellfire Fortifications
----World PvP - Nagrand: Halaa
----World PvP - Terokkar Forest: Bone Wastes
----World PvP - Zangarmarsh: Twin Spire Ruins
----Pvp70Season1
----Arena Season 2 - Weapons
----Arena Season 3 - Weapons
----Arena Season 4 - Weapons
---Sets & Collections
----Dungeon 3 Sets (D3)
----Tier 4/Tier 5/Tier 6
----The Burning Crusade Sets
----Badge of Justice Rewards
----BoE World Epics
----World Bosses


--The scale of the sand rep rings
local scaleOfSandsRings = {
	Name = "Rings";
	[01] = { itemID = 29298, rep = BabbleFaction["Friendly"], [alDif.MAX_DIF] = alDif.Normal }; --Band of the Eternal Champion
	[02] = { itemID = 29299, rep = BabbleFaction["Honored"], [alDif.MAX_DIF] = alDif.Normal }; --Superior Band of the Eternal Champion
	[03] = { itemID = 29300, rep = BabbleFaction["Revered"], [alDif.MAX_DIF] = alDif.Normal }; --Exquisite Band of the Eternal Champion
	[04] = { itemID = 29301, rep = BabbleFaction["Exalted"], [alDif.MAX_DIF] = alDif.Normal }; --Flawless Band of the Eternal Champion
	[06] = { itemID = 29294, rep = BabbleFaction["Friendly"], [alDif.MAX_DIF] = alDif.Normal }; --Band of the Eternal Defender
	[07] = { itemID = 29295, rep = BabbleFaction["Honored"], [alDif.MAX_DIF] = alDif.Normal }; --Superior Band of the Eternal Defender
	[08] = { itemID = 29296, rep = BabbleFaction["Revered"], [alDif.MAX_DIF] = alDif.Normal }; --Exquisite Band of the Eternal Defender
	[09] = { itemID = 29297, rep = BabbleFaction["Exalted"], [alDif.MAX_DIF] = alDif.Normal }; --Flawless Band of the Eternal Defender
	[11] = { itemID = 15037, rep = BabbleFaction["Friendly"], [alDif.MAX_DIF] = alDif.Normal }; --Band of the Eternal Assassin
	[12] = { itemID = 15038, rep = BabbleFaction["Honored"], [alDif.MAX_DIF] = alDif.Normal }; --Superior Band of the Eternal Assassin
	[13] = { itemID = 15039, rep = BabbleFaction["Revered"], [alDif.MAX_DIF] = alDif.Normal }; --Exquisite Band of the Eternal Assassin
	[14] = { itemID = 15040, rep = BabbleFaction["Exalted"], [alDif.MAX_DIF] = alDif.Normal }; --Flawless Band of the Eternal Assassin
	[16] = { itemID = 29302, rep = BabbleFaction["Friendly"], [alDif.MAX_DIF] = alDif.Normal }; --Band of the Eternal Sage
	[17] = { itemID = 29303, rep = BabbleFaction["Honored"], [alDif.MAX_DIF] = alDif.Normal }; --Superior Band of the Eternal Sage
	[18] = { itemID = 29304, rep = BabbleFaction["Revered"], [alDif.MAX_DIF] = alDif.Normal }; --Exquisite Band of the Eternal Sage
	[19] = { itemID = 29305, rep = BabbleFaction["Exalted"], [alDif.MAX_DIF] = alDif.Normal }; --Flawless Band of the Eternal Sage
	[21] = { itemID = 29307, rep = BabbleFaction["Friendly"], [alDif.MAX_DIF] = alDif.Normal }; --Band of the Eternal Restorer
	[22] = { itemID = 29306, rep = BabbleFaction["Honored"], [alDif.MAX_DIF] = alDif.Normal }; --Superior Band of the Eternal Restorer
	[23] = { itemID = 29308, rep = BabbleFaction["Revered"], [alDif.MAX_DIF] = alDif.Normal }; --Exquisite Band of the Eternal Restorer
	[24] = { itemID = 29309, rep = BabbleFaction["Exalted"], [alDif.MAX_DIF] = alDif.Normal }; --Flawless Band of the Eternal Restorer
};

------------------------
---Dungeons & BCRaids ---
------------------------

------------
---Keys ---
------------

AtlasLoot_Data["BCKeys"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "BCKeys";
	{
		Name = "BCKeys";
		[01] = { itemID = 27991 }; --Shadow Labyrinth Key
		[02] = { itemID = 28395 }; --Shattered Halls Key
		[03] = { itemID = 31084 }; --Key to the Arcatraz
		[05] = { itemID = 30622, [alDif.MIN_DIF] = alDif.Heroic }; --Flamewrought Key
		[06] = { itemID = 30637, [alDif.MIN_DIF] = alDif.Heroic }; --Flamewrought Key
		[07] = { itemID = 30623, [alDif.MIN_DIF] = alDif.Heroic }; --Reservoir Key
		[08] = { itemID = 30633, [alDif.MIN_DIF] = alDif.Heroic }; --Auchenai Key
		[09] = { itemID = 30635, [alDif.MIN_DIF] = alDif.Heroic }; --Key of Time
		[10] = { itemID = 30634, [alDif.MIN_DIF] = alDif.Heroic }; --Warpforged Key
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Raid"], [alDif.MIN_DIF] = alDif.Heroic };
		[17] = { itemID = 24490, [alDif.MIN_DIF] = alDif.Heroic }; --The Master's Key
		[19] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Misc"], [alDif.MIN_DIF] = alDif.Heroic };
		[20] = { itemID = 32092, [alDif.MIN_DIF] = alDif.Heroic }; --The Eye of Haramad
		[21] = { itemID = 32449, [alDif.MIN_DIF] = alDif.Heroic }; --Essence-Infused Moonstone
	};
};

-----------------------------------
---Auchindoun: Auchenai Crypts ---
-----------------------------------

AtlasLoot_Data["AuchCrypts"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Auchenai Crypts"];
	DisplayName = BabbleZone["Auchenai Crypts"];
	Type = "BCDungeon";
	Map = "AuchAuchenaiCrypts";
	{
		Name = BabbleBoss["Shirrak the Dead Watcher"];
		[01] = { itemID = 27410 }; --Collar of Command
		[02] = { itemID = 27409 }; --Raven-Heart Headdress
		[03] = { itemID = 27408 }; --Hope Bearer Helm
		[04] = { itemID = 26055 }; --Oculus of the Hidden Eye
		[05] = { itemID = 25964 }; --Shaarde the Lesser
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30587, [alDif.MIN_DIF] = alDif.Heroic }; --Champion's Fire Opal
		[18] = { itemID = 30588, [alDif.MIN_DIF] = alDif.Heroic }; --Potent Fire Opal
		[19] = { itemID = 30586, [alDif.MIN_DIF] = alDif.Heroic }; --Seer's Chrysoprase
		[20] = { itemID = 27866, [alDif.MIN_DIF] = alDif.Heroic }; --Scintillating Headdress of Second Sight
		[22] = { itemID = 27493, [alDif.MIN_DIF] = alDif.Heroic }; --Gloves of the Deadwatcher
		[23] = { itemID = 27865, [alDif.MIN_DIF] = alDif.Heroic }; --Bracers of Shirrak
		[24] = { itemID = 27845, [alDif.MIN_DIF] = alDif.Heroic }; --Magma Plume Boots
		[25] = { itemID = 27847, [alDif.MIN_DIF] = alDif.Heroic }; --Fanblade Pauldrons
		[26] = { itemID = 27846, [alDif.MIN_DIF] = alDif.Heroic }; --Claw of the Watcher
	};
	{
		Name = BabbleBoss["Exarch Maladaar"];
		[01] = { itemID = 27411 }; --Slippers of Serenity
		[02] = { itemID = 27415 }; --Darkguard Face Mask
		[03] = { itemID = 27414 }; --Mok'Nathal Beast-Mask
		[04] = { itemID = 27413 }; --Ring of the Exarchs
		[05] = { itemID = 27416 }; --Fetish of the Fallen
		[06] = { itemID = 27412 }; --Ironstaff of Regeneration
		[08] = { itemID = 29354, [alDif.MIN_DIF] = alDif.Heroic }; --Light-Touched Stole of Altruism
		[09] = { itemID = 29257, [alDif.MIN_DIF] = alDif.Heroic }; --Sash of Arcane Visions
		[10] = { itemID = 29244, [alDif.MIN_DIF] = alDif.Heroic }; --Wave-Song Girdle
		[11] = { itemID = 27867, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of the Unjust
		[12] = { itemID = 27871, [alDif.MIN_DIF] = alDif.Heroic }; --Maladaar's Blessed Chaplet
		[13] = { itemID = 27869, [alDif.MIN_DIF] = alDif.Heroic }; --Soulpriest's Ring of Resolve
		[14] = { itemID = 27523, [alDif.MIN_DIF] = alDif.Heroic }; --Exarch's Diamond Band
		[15] = { itemID = 27872, [alDif.MIN_DIF] = alDif.Heroic }; --The Harvester of Souls
		[16] = { itemID = 33836, [alDif.MIN_DIF] = alDif.Heroic }; --The Exarch's Soul Gem
		[17] = { itemID = 30587, [alDif.MIN_DIF] = alDif.Heroic }; --Champion's Fire Opal
		[18] = { itemID = 30588, [alDif.MIN_DIF] = alDif.Heroic }; --Potent Fire Opal
		[19] = { itemID = 30586, [alDif.MIN_DIF] = alDif.Heroic }; --Seer's Chrysoprase
		[20] = { itemID = 427870, [alDif.MIN_DIF] = alDif.Heroic }; --Doomplate Legguards
		[22] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice

	};
	{
		Name = AL["Avatar of the Martyred"];
		[01] = { itemID = 27878 }; --Auchenai Death Shroud
		[02] = { itemID = 28268 }; --Natural Mender's Wraps
		[03] = { itemID = 27876 }; --Will of the Fallen Exarch
		[04] = { itemID = 27937 }; --Sky Breaker
		[05] = { itemID = 27877 }; --Draenic Wildstaff
		[07] = { itemID = 27797 }; --Wastewalker Shoulderpads
	};
};

------------------------------
---Auchindoun: Mana-Tombs ---
------------------------------

AtlasLoot_Data["AuchManaTombs"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Mana-Tombs"];
	DisplayName = BabbleZone["Mana-Tombs"];
	Type = "BCDungeon";
	Map = "AuchManaTombs";
	{
		Name = BabbleBoss["Pandemonius"];
		[01] = { itemID = 25941 }; --Boots of the Outlander
		[02] = { itemID = 25942 }; --Faith Bearer's Gauntlets
		[03] = { itemID = 25940 }; --Idol of the Claw
		[04] = { itemID = 25943 }; --Creepjacker
		[05] = { itemID = 28166 }; --Shield of the Void
		[06] = { itemID = 25939 }; --Voidfire Wand
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30584, [alDif.MIN_DIF] = alDif.Heroic }; --Enscribed Fire Opal
		[18] = { itemID = 30585, [alDif.MIN_DIF] = alDif.Heroic }; --Glistening Fire Opal
		[19] = { itemID = 30583, [alDif.MIN_DIF] = alDif.Heroic }; --Timeless Chrysoprase
		[21] = { itemID = 27816, [alDif.MIN_DIF] = alDif.Heroic }; --Mindrage Pauldrons
		[22] = { itemID = 27818, [alDif.MIN_DIF] = alDif.Heroic }; --Starry Robes of the Crescent
		[23] = { itemID = 27813, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of the Colossus
		[24] = { itemID = 27815, [alDif.MIN_DIF] = alDif.Heroic }; --Totem of the Astral Winds
		[25] = { itemID = 27814, [alDif.MIN_DIF] = alDif.Heroic }; --Twinblade of Mastery
		[26] = { itemID = 27817, [alDif.MIN_DIF] = alDif.Heroic }; --Starbolt Longbow
	};
	{
		Name = BabbleBoss["Tavarok"];
		[01] = { itemID = 25945 }; --Cloak of Revival
		[02] = { itemID = 25946 }; --Nethershade Boots
		[03] = { itemID = 25947 }; --Lightning-Rod Pauldrons
		[04] = { itemID = 25952 }; --Scimitar of the Nexus-Stalkers
		[05] = { itemID = 25944 }; --Shaarde the Greater
		[06] = { itemID = 25950 }; --Staff of Polarities
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30584, [alDif.MIN_DIF] = alDif.Heroic }; --Enscribed Fire Opal
		[18] = { itemID = 30585, [alDif.MIN_DIF] = alDif.Heroic }; --Glistening Fire Opal
		[19] = { itemID = 30583, [alDif.MIN_DIF] = alDif.Heroic }; --Timeless Chrysoprase
		[21] = { itemID = 27824, [alDif.MIN_DIF] = alDif.Heroic }; --Robe of the Great Dark Beyond
		[22] = { itemID = 27821, [alDif.MIN_DIF] = alDif.Heroic }; --Extravagant Boots of Malice
		[23] = { itemID = 27825, [alDif.MIN_DIF] = alDif.Heroic }; --Predatory Gloves
		[24] = { itemID = 27826, [alDif.MIN_DIF] = alDif.Heroic }; --Mantle of the Sea Wolf
		[25] = { itemID = 27823, [alDif.MIN_DIF] = alDif.Heroic }; --Shard Encrusted Breastplate
		[26] = { itemID = 27822, [alDif.MIN_DIF] = alDif.Heroic }; --Crystal Band of Valor
	};
	{
		Name = BabbleBoss["Nexus-Prince Shaffar"];
		[01] = { itemID = 25957 }; --Ethereal Boots of the Skystrider
		[02] = { itemID = 25955 }; --Mask of the Howling Storm
		[03] = { itemID = 25956 }; --Nexus-Bracers of Vigor
		[04] = { itemID = 25954 }; --Sigil of Shaffar
		[05] = { itemID = 25962 }; --Longstrider's Loop
		[06] = { itemID = 25953 }; --Ethereal Warp-Bow
		[08] = { itemID = 22921 }; --Recipe: Major Frost Protection Potion
		[10] = { itemID = 28490 }; --Shaffar's Wrappings
	};
	{
		Name = BabbleBoss["Nexus-Prince Shaffar"] .. " (" .. AL["Heroic"] .. ")";
		[01] = { itemID = 29434 }; --Badge of Justice
		[02] = { itemID = 29240 }; --Bands of Negation
		[03] = { itemID = 30535 }; --Forestwalker Kilt
		[04] = { itemID = 29352 }; --Cobalt Band of Tyrigosa
		[05] = { itemID = 32082 }; --The Fel Barrier
		[07] = { itemID = 27831 }; --Mantle of the Unforgiven
		[08] = { itemID = 27843 }; --Glyph-Lined Sash
		[09] = { itemID = 27827 }; --Lucid Dream Bracers
		[10] = { itemID = 27835 }; --Stillwater Girdle
		[11] = { itemID = 27844 }; --Pauldrons of Swift Retribution
		[12] = { itemID = 27798 }; --Gauntlets of Vindication
		[14] = { itemID = 33835 }; --Shaffar's Wondrous Amulet
		[15] = { itemID = 28490 }; --Shaffar's Wrappings
		[16] = { itemID = 30584 }; --Enscribed Fire Opal
		[17] = { itemID = 30585 }; --Glistening Fire Opal
		[18] = { itemID = 30583 }; --Timeless Chrysoprase
		[20] = { itemID = 27837 }; --Wastewalker Leggings
		[22] = { itemID = 27828 }; --Warp-Scarab Brooch
		[23] = { itemID = 28400 }; --Warp-Storm Warblade
		[24] = { itemID = 27829 }; --Axe of the Nexus-Kings
		[25] = { itemID = 27840 }; --Scepter of Sha'tar
		[26] = { itemID = 27842 }; --Grand Scepter of the Nexus-Kings
		[28] = { itemID = 22921 }; --Recipe: Major Frost Protection Potion
	};
	{
		Name = AL["Yor"] .. " (" .. AL["Heroic"] .. ")";
		[01] = { itemID = 29434 }; --Badge of Justice
		[02] = { itemID = 31919 }; --Nexus-Prince's Ring of Balance
		[03] = { itemID = 31920 }; --Shaffar's Band of Brutality
		[04] = { itemID = 31921 }; --Yor's Collapsing Band
		[05] = { itemID = 31922 }; --Ring of Conflict Survival
		[06] = { itemID = 31923 }; --Band of the Crystalline Void
		[07] = { itemID = 31924 }; --Yor's Revenge
		[09] = { itemID = 31554 }; --Windchanneller's Tunic
		[10] = { itemID = 31562 }; --Skystalker's Tunic
		[11] = { itemID = 31570 }; --Mistshroud Tunic
		[12] = { itemID = 31578 }; --Slatesteel Breastplate
		[16] = { itemID = 30584 }; --Enscribed Fire Opal
		[17] = { itemID = 30585 }; --Glistening Fire Opal
		[18] = { itemID = 30583 }; --Timeless Chrysoprase
	};
};

---------------------------------
---Auchindoun: Sethekk Halls ---
---------------------------------

AtlasLoot_Data["AuchSethekk"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Sethekk Halls"];
	DisplayName = BabbleZone["Sethekk Halls"];
	Type = "BCDungeon";
	Map = "AuchSethekkHalls";
	{
		Name = BabbleBoss["Darkweaver Syth"];
		[01] = { itemID = 27919 }; --Light-Woven Slippers
		[02] = { itemID = 27914 }; --Moonstrider Boots
		[03] = { itemID = 27915 }; --Sky-Hunter Swift Boots
		[04] = { itemID = 27918 }; --Bands of Syth
		[05] = { itemID = 27917 }; --Libram of the Eternal Rest
		[06] = { itemID = 27916 }; --Sethekk Feather-Darts
		[08] = { itemID = 24160 }; --Design: Khorium Inferno Band
		[10] = { itemID = 27633 }; --Terokk's Mask
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30553, [alDif.MIN_DIF] = alDif.Heroic }; --Pristine Fire Opal
		[18] = { itemID = 30554, [alDif.MIN_DIF] = alDif.Heroic }; --Stalwart Fire Opal
		[19] = { itemID = 30552, [alDif.MIN_DIF] = alDif.Heroic }; --Blessed Tanzanite
		[20] = { itemID = 25461, [alDif.MIN_DIF] = alDif.Heroic }; --Book of Forgotten Names
	};
	{
		Name = BabbleBoss["Anzu"] .. " (" .. AL["Heroic"] .. ")";
		[20] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 32768 }; --Reins of the Raven Lord
		[16] = { itemID = 30553 }; --Pristine Fire Opal
		[17] = { itemID = 30554 }; --Stalwart Fire Opal
		[18] = { itemID = 30552 }; --Blessed Tanzanite
		[01] = { itemID = 32769 }; --Belt of the Raven Lord
		[02] = { itemID = 32778 }; --Boots of Righteous Fortitude
		[03] = { itemID = 32779 }; --Band of Frigid Elements
		[04] = { itemID = 32781 }; --Talon of Anzu
		[05] = { itemID = 32780 }; --The Boomstick
	};
	{
		Name = BabbleBoss["Talon King Ikiss"];
		[01] = { itemID = 27948 }; --Trousers of Oblivion
		[02] = { itemID = 27838 }; --Incanter's Trousers
		[03] = { itemID = 27875 }; --Hallowed Trousers
		[04] = { itemID = 27776 }; --Shoulderpads of Assassination
		[05] = { itemID = 27936 }; --Greaves of Desolation
		[07] = { itemID = 27946 }; --Avian Cloak of Feathers
		[08] = { itemID = 27981 }; --Sethekk Oracle Cloak
		[09] = { itemID = 27985 }; --Deathforge Girdle
		[10] = { itemID = 27925 }; --Ravenclaw Band
		[11] = { itemID = 27980 }; --Terokk's Nightmace
		[12] = { itemID = 27986 }; --Crow Wing Reaper
		[14] = { itemID = 27632 }; --Terokk's Quill
		[15] = { itemID = 27991 }; --Shadow Labyrinth Key
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30553, [alDif.MIN_DIF] = alDif.Heroic }; --Pristine Fire Opal
		[18] = { itemID = 30554, [alDif.MIN_DIF] = alDif.Heroic }; --Stalwart Fire Opal
		[19] = { itemID = 30552, [alDif.MIN_DIF] = alDif.Heroic }; --Blessed Tanzanite
		[21] = { itemID = 29249, [alDif.MIN_DIF] = alDif.Heroic }; --Bands of the Benevolent
		[22] = { itemID = 29259, [alDif.MIN_DIF] = alDif.Heroic }; --Bracers of the Hunt
		[23] = { itemID = 32073, [alDif.MIN_DIF] = alDif.Heroic }; --Spaulders of Dementia
		[24] = { itemID = 29355, [alDif.MIN_DIF] = alDif.Heroic }; --Terokk's Shadowstaff
		[26] = { itemID = 33834, [alDif.MIN_DIF] = alDif.Heroic }; --The Headfeathers of Ikiss
	};
};

------------------------------------
---Auchindoun: Shadow Labyrinth ---
------------------------------------

AtlasLoot_Data["AuchShadowLab"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Shadow Labyrinth"];
	DisplayName = BabbleZone["Shadow Labyrinth"];
	Type = "BCDungeon";
	Map = "AuchShadowLabyrinth";
	{
		Name = BabbleBoss["Ambassador Hellmaw"];
		[01] = { itemID = 27889 }; --Jaedenfire Gloves of Annihilation
		[02] = { itemID = 27888 }; --Dream-Wing Helm
		[03] = { itemID = 27884 }; --Ornate Boots of the Sanctified
		[04] = { itemID = 27886 }; --Idol of the Emerald Queen
		[05] = { itemID = 27887 }; --Platinum Shield of the Valorous
		[06] = { itemID = 27885 }; --Soul-Wand of the Aldor
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30563, [alDif.MIN_DIF] = alDif.Heroic }; --Regal Tanzanite
		[18] = { itemID = 30559, [alDif.MIN_DIF] = alDif.Heroic }; --Etched Fire Opal
		[19] = { itemID = 30560, [alDif.MIN_DIF] = alDif.Heroic }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Blackheart the Inciter"];
		[01] = { itemID = 27468 }; --Moonglade Handwraps
		[03] = { itemID = 27892 }; --Cloak of the Inciter
		[04] = { itemID = 27893 }; --Ornate Leggings of the Venerated
		[05] = { itemID = 28134 }; --Brooch of Hightened Potential
		[06] = { itemID = 27891 }; --Adamantine Figurine
		[07] = { itemID = 27890 }; --Wand of the Netherwing
		[09] = { itemID = 25728 }; --Pattern: Stylin' Purple Hat
		[11] = { itemID = 30808 }; --Book of Fel Names
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30563, [alDif.MIN_DIF] = alDif.Heroic }; --Regal Tanzanite
		[18] = { itemID = 30559, [alDif.MIN_DIF] = alDif.Heroic }; --Etched Fire Opal
		[19] = { itemID = 30560, [alDif.MIN_DIF] = alDif.Heroic }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Grandmaster Vorpil"];
		[01] = { itemID = 27775 }; --Hallowed Pauldrons
		[03] = { itemID = 27897 }; --Breastplate of Many Graces
		[04] = { itemID = 27900 }; --Jewel of Charismatic Mystique
		[05] = { itemID = 27901 }; --Blackout Truncheon
		[06] = { itemID = 27898 }; --Wrathfire Hand-Cannon
		[08] = { itemID = 30827 }; --Lexicon Demonica
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30563, [alDif.MIN_DIF] = alDif.Heroic }; --Regal Tanzanite
		[18] = { itemID = 30559, [alDif.MIN_DIF] = alDif.Heroic }; --Etched Fire Opal
		[19] = { itemID = 30560, [alDif.MIN_DIF] = alDif.Heroic }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Murmur"];
		[01] = { itemID = 24309 };
		[03] = { itemID = 27902 }; --Silent Slippers of Meditation
		[04] = { itemID = 27912 }; --Harness of the Deep Currents
		[05] = { itemID = 27913 }; --Whispering Blade of Slaying
		[06] = { itemID = 27905 }; --Greatsword of Horrid Dreams
		[07] = { itemID = 27903 }; --Sonic Spear
		[08] = { itemID = 27910 }; --Silvermoon Crest Shield
		[10] = { itemID = 27778 }; --Spaulders of Oblivion
		[11] = { itemID = 28232 }; --Robe of Oblivion
		[12] = { itemID = 28230 }; --Hallowed Garments
		[13] = { itemID = 27908 }; --Leggings of Assassination
		[14] = { itemID = 27909 }; --Tidefury Kilt
		[15] = { itemID = 27803 }; --Shoulderguards of the Bold
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30563, [alDif.MIN_DIF] = alDif.Heroic }; --Regal Tanzanite
		[18] = { itemID = 30559, [alDif.MIN_DIF] = alDif.Heroic }; --Etched Fire Opal
		[19] = { itemID = 30560, [alDif.MIN_DIF] = alDif.Heroic }; --Rune Covered Chrysoprase
		[21] = { itemID = 30532, [alDif.MIN_DIF] = alDif.Heroic }; --Kirin Tor Master's Trousers
		[22] = { itemID = 29357, [alDif.MIN_DIF] = alDif.Heroic }; --Master Thief's Gloves
		[23] = { itemID = 29261, [alDif.MIN_DIF] = alDif.Heroic }; --Girdle of Ferocity
		[24] = { itemID = 29353, [alDif.MIN_DIF] = alDif.Heroic }; --Shockwave Truncheon
		[26] = { itemID = 31722, [alDif.MIN_DIF] = alDif.Heroic }; --Murmur's Essence
		[27] = { itemID = 33840, [alDif.MIN_DIF] = alDif.Heroic }; --Murmur's Whisper
		Prev = "AuchShadowGrandmaster";

	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Mana-Tombs"] };
		[02] = { itemID = 23615 }; --Plans: Swiftsteel Gloves
		[03] = { itemID = 22543 }; --Formula: Enchant Boots - Fortitude
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Sethekk Halls"] };
		[06] = { itemID = 25731 }; --Pattern: Stylin' Crimson Hat
		[07] = { itemID = 29669 }; --Pattern: Shadow Armor Kit
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["The Saga of Terokk"], "=q5=" .. BabbleZone["Sethekk Halls"] };
		[10] = { itemID = 27634 }; --The Saga of Terokk
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Auchenai Crypts"] };
		[17] = { itemID = 23605 }; --Plans: Felsteel Gloves
		[18] = { itemID = 22544 }; --Formula: Enchant Boots - Dexterity
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Shadow Labyrinth"] };
		[21] = { itemID = 23607 }; --Plans: Felsteel Helm
		[23] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["First Fragment Guardian"], "=q5=" .. BabbleZone["Shadow Labyrinth"] };
		[24] = { itemID = 24514 }; --First Key Fragment
	};
};




--------------------
---Black Temple ---
--------------------

AtlasLoot_Data["BlackTemple"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Black Temple"];
	Type = "BCRaid";
	Map = "BlackTemple";
	{
		Name = BabbleBoss["High Warlord Naj'entus"];
		[01] = { itemID = 32239 }; --Slippers of the Seacaller
		[02] = { itemID = 32240 }; --Guise of the Tidal Lurker
		[03] = { itemID = 32377 }; --Mantle of Darkness
		[04] = { itemID = 32241 }; --Helm of Soothing Currents
		[05] = { itemID = 32234 }; --Fists of Mukoa
		[06] = { itemID = 32242 }; --Boots of Oceanic Fury
		[07] = { itemID = 32232 }; --Eternium Shell Bracers
		[08] = { itemID = 32243 }; --Pearl Inlaid Boots
		[09] = { itemID = 32245 }; --Tide-stomper's Greaves
		[16] = { itemID = 32238 }; --Ring of Calming Waves
		[17] = { itemID = 32236 }; --Rising Tide
		[18] = { itemID = 32248 }; --Halberd of Desolation
		[20] = { itemID = 29434 }; --Badge of Justice
		[21] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[22] = { itemID = 98570 }; --Mystic Orb
		[24] = { itemID = 63451, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Supremus"];
		[01] = { itemID = 32256 }; --Waistwrap of Infinity
		[02] = { itemID = 32252 }; --Nether Shadow Tunic
		[03] = { itemID = 32259 }; --Bands of the Coming Storm
		[04] = { itemID = 32251 }; --Wraps of Precise Flight
		[05] = { itemID = 32258 }; --Naturalist's Preserving Cinch
		[06] = { itemID = 32250 }; --Pauldrons of Abyssal Fury
		[08] = { itemID = 32260 }; --Choker of Endless Nightmares
		[09] = { itemID = 32261 }; --Band of the Abyssal Lord
		[10] = { itemID = 32247 }; --Ring of Captured Storms
		[16] = { itemID = 32254 }; --The Brutalizer
		[17] = { itemID = 32237 }; --The Maelstrom's Fury
		[18] = { itemID = 32262 }; --Syphon of the Nathrezim
		[19] = { itemID = 32255 }; --Felstone Bulwark
		[20] = { itemID = 32253 }; --Legionkiller
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[24] = { itemID = 98570 }; --Mystic Orb
		[26] = { itemID = 63510, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Shade of Akama"];
		[01] = { itemID = 32273 }; --Amice of Brilliant Light
		[02] = { itemID = 32270 }; --Focused Mana Bindings
		[03] = { itemID = 32513 }; --Wristbands of Divine Influence
		[04] = { itemID = 32265 }; --Shadow-walker's Cord
		[05] = { itemID = 32264 }; --Shoulders of the Hidden Predator
		[06] = { itemID = 32275 }; --Spiritwalker Gauntlets
		[07] = { itemID = 32276 }; --Flashfire Girdle
		[08] = { itemID = 32279 }; --The Seeker's Wristguards
		[09] = { itemID = 32278 }; --Grips of Silent Justice
		[10] = { itemID = 32268 }; --Myrmidon's Treads
		[16] = { itemID = 32266 }; --Ring of Deceitful Intent
		[17] = { itemID = 32361 }; --Blind-Seers Icon
		[19] = { itemID = 11432 }; --Ashtongue Jewel
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 63425, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Teron Gorefiend"];
		[05] = { itemID = 32271 }; --Kilt of Immortal Nature
		[01] = { itemID = 32323 }; --Shadowmoon Destroyer's Drape
		[02] = { itemID = 32329 }; --Cowl of Benevolence
		[03] = { itemID = 32327 }; --Robe of the Shadow Council
		[04] = { itemID = 32324 }; --Insidious Bands
		[06] = { itemID = 32328 }; --Botanist's Gloves of Growth
		[07] = { itemID = 32510 }; --Softstep Boots of Tracking
		[08] = { itemID = 32280 }; --Gauntlets of Enforcement
		[09] = { itemID = 32512 }; --Girdle of Lordaeron's Fallen
		[11] = { itemID = 32349 }; --Translucent Spellthread Necklace
		[16] = { itemID = 32507 }; --Gorefiend
		[17] = { itemID = 32325 }; --Rifle of the Stoic Guardian
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
		[23] = { itemID = 63443, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Gurtogg Bloodboil"];
		[01] = { itemID = 32337 }; --Shroud of Forgiveness
		[02] = { itemID = 32338 }; --Blood-cursed Shoulderpads
		[03] = { itemID = 32340 }; --Garments of Temperance
		[04] = { itemID = 32339 }; --Belt of Primal Majesty
		[05] = { itemID = 32334 }; --Vest of Mounting Assault
		[06] = { itemID = 32342 }; --Girdle of Mighty Resolve
		[07] = { itemID = 32341 }; --Leggings of Divine Retribution
		[16] = { itemID = 32335 }; --Unstoppable Aggressor's Ring
		[17] = { itemID = 32348 }; --Soul Cleaver	
		[18] = { itemID = 32269 }; --Messenger of Fate
		[19] = { itemID = 32344 }; --Staff of Immaculate Recovery
		[20] = { itemID = 32343 }; --Wand of Prismatic Focus
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[24] = { itemID = 98570 }; --Mystic Orb
		[26] = { itemID = 63521, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = "Reliquary of the Lost";
		[01] = { itemID = 32353 }; --Gloves of Unfailing Faith
		[02] = { itemID = 32351 }; --Elunite Empowered Bracers
		[03] = { itemID = 32347 }; --Grips of Damnation
		[04] = { itemID = 32352 }; --Naturewarden's Treads
		[05] = { itemID = 32517 }; --The Wavemender's Mantle
		[06] = { itemID = 32346 }; --Boneweave Girdle
		[07] = { itemID = 32333 }; --Girdle of Stability
		[08] = { itemID = 32354 }; --Crown of Empowered Fate
		[09] = { itemID = 32345 }; --Dreadboots of the Legion	
		[16] = { itemID = 32362 }; --Pendant of Titans
		[17] = { itemID = 32350 }; --Touch of Inspiration
		[18] = { itemID = 32332 }; --Torch of the Damned
		[20] = { itemID = 29434 }; --Badge of Justice
		[21] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[22] = { itemID = 98570 }; --Mystic Orb
		[24] = { itemID = 63940, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Mother Shahraz"];
		[01] = { itemID = 32367 }; --Leggings of Devastation
		[02] = { itemID = 32263 }; --Praetorian's Legguards
		[03] = { itemID = 32366 }; --Shadowmaster's Boots
		[04] = { itemID = 32365 }; --Heartshatter Breastplate
		[05] = { itemID = 32370 }; --Nadina's Pendant of Purity
		[06] = { itemID = 32369 }; --Blade of Savagery
		[16] = { itemID = 31101, lootTable = {"T6SHOULDER","Token"} }; --Pauldrons of the Forgotten Conqueror
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 63520, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["The Illidari Council"];
		[01] = { itemID = 32331 }; --Cloak of the Illidari Council
		[02] = { itemID = 32519 }; --Belt of Divine Guidance
		[03] = { itemID = 32518 }; --Veil of Turning Leaves
		[04] = { itemID = 32376 }; --Forest Prowler's Helm
		[05] = { itemID = 32373 }; --Helm of the Illidari Shatterer
		[07] = { itemID = 32326 }; --Twisted Blades of Zarak
		[16] = { itemID = 31101, lootTable = {"T6SHOULDER","Token"} }; --Pauldrons of the Forgotten Conqueror
		[17] = { itemID = 31098, lootTable = {"T6LEGS","Token"} }; --Leggings of the Forgotten Conqueror
		[18] = { itemID = 31097, lootTable = {"T6HEAD","Token"} }; --Helm of the Forgotten Conqueror
		[19] = { itemID = 31092, lootTable = {"T6HAND","Token"} }; --Gloves of the Forgotten Conqueror
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 63929, droprate = "1%" }; --Pet Sigil
		[26] = { itemID = 63928, droprate = "1%" }; --Pet Sigil
		[27] = { itemID = 63690, droprate = "1%" }; --Pet Sigil
		[28] = { itemID = 63529, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Illidan Stormrage"];
		[01] = { itemID = 32524 }; --Shroud of the Highborne
		[02] = { itemID = 32525 }; --Cowl of the Illidari High Lord
		[03] = { itemID = 32235 }; --Cursed Vision of Sargeras
		[04] = { itemID = 32521 }; --Faceplate of the Impenetrable
		[05] = { itemID = 32497 }; --Stormrage Signet Ring
		[06] = { itemID = 32483 }; --The Skull of Gul'dan
		[07] = { itemID = 32496 }; --Memento of Tyrande
		[08] = { itemID = 32363 }; --Naaru-Blessed Life Rod
		[09] = { itemID = 32471 }; --Shard of Azzinoth
		[10] = { itemID = 32500 }; --Crystal Spire of Karabor
		[11] = { itemID = 32374 }; --Zhar'doom, Greatstaff of the Devourer
		[12] = { itemID = 32375 }; --Bulwark of Azzinoth
		[13] = { itemID = 32336 }; --Black Bow of the Betrayer
		[14] = { itemID = 32501 }; --Shadowmoon Insignia
		[15] = { itemID = 32505 }; --Madness of the Betrayer
		[16] = { itemID = 31089, lootTable = {"T6CHEST","Token"} }; --Chestguard of the Forgotten Conqueror
		[18] = { itemID = 32837 }; --Warglaive of Azzinoth
		[19] = { itemID = 32838 }; --Warglaive of Azzinoth
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 63511, droprate = "1%" }; --Pet Sigil
		[27] = { itemID = 343208 }; --Mount
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 34012 }; --Shroud of the Final Stand
		[02] = { itemID = 32593 }; --Treads of the Den Mother
		[03] = { itemID = 47166 }; --Concubines Attire
		[04] = { itemID = 32608 }; --Pillager's Gauntlets
		[05] = { itemID = 32606 }; --Girdle of the Lightbearer
		[07] = { itemID = 32526 }; --Band of Devastation
		[08] = { itemID = 32528 }; --Blessed Band of Karabor
		[09] = { itemID = 32527 }; --Ring of Ancient Knowledge
		[11] = { itemID = 32330 }; --Totem of Ancestral Guidance
		[12] = { itemID = 32368 }; --Tome of the Lightbringer
		[13] = { itemID = 32257 }; --Idol of the white Stag
		[16] = { itemID = 32943 }; --Swiftsteel Bludgeon
		[17] = { itemID = 34011 }; --Illidari Runeshield
		[18] = { itemID = 15900 }; --Finkle's Vibroblade
		[19] = { itemID = 15951 }; --Reaver Cleaver
		[20] = { itemID = 15952 }; --The Taskmaster
		[22] = { itemID = 32228 }; --Empyrean Sapphire
		[23] = { itemID = 32231 }; --Pyrestone
		[24] = { itemID = 32229 }; --Lionseye
		[25] = { itemID = 32249 }; --Seaspray Emerald
		[26] = { itemID = 32230 }; --Shadowsong Amethyst
		[27] = { itemID = 32227 }; --Crimson Spinel
		[29] = { itemID = 32428 }; --Heart of Darkness
		[30] = { itemID = 32897 }; --Mark of the Illidari
	};
	{
		Name = "Reputation Trinkets";
		[01] = { itemID = 32486 }; --Ashtongue Talisman of Equilibrium
		[02] = { itemID = 32487 }; --Ashtongue Talisman of Swiftness
		[03] = { itemID = 32488 }; --Ashtongue Talisman of Insight
		[04] = { itemID = 32489 }; --Ashtongue Talisman of Zeal
		[05] = { itemID = 32490 }; --Ashtongue Talisman of Acumen
		[06] = { itemID = 32492 }; --Ashtongue Talisman of Lethality
		[07] = { itemID = 32491 }; --Ashtongue Talisman of Vision
		[08] = { itemID = 32493 }; --Ashtongue Talisman of Shadows
		[09] = { itemID = 32485 }; --Ashtongue Talisman of Valor
	};
	{
		Name = "BT Patterns/Plans";
		[01] = { itemID = 32738 };
		[02] = { itemID = 32739 };
		[03] = { itemID = 32736 };
		[04] = { itemID = 32737 };
		[05] = { itemID = 32748 }; --Pattern: Bindings of Lightning Reflexes
		[06] = { itemID = 32744 }; --Pattern: Bracers of Renewed Life
		[07] = { itemID = 32750 }; --Pattern: Living Earth Bindings
		[08] = { itemID = 32751 }; --Pattern: Living Earth Shoulders
		[09] = { itemID = 32749 }; --Pattern: Shoulders of Lightning Reflexes
		[10] = { itemID = 32745 }; --Pattern: Shoulderpads of Renewed Life
		[11] = { itemID = 32746 }; --Pattern: Swiftstrike Bracers
		[12] = { itemID = 32747 }; --Pattern: Swiftstrike Shoulders
		[16] = { itemID = 32754 };
		[17] = { itemID = 32755 };
		[18] = { itemID = 32753 };
		[19] = { itemID = 32752 };
	};
};


------------------------------------------------
---Caverns of Time: Old Hillsbrad Foothills ---
------------------------------------------------

AtlasLoot_Data["CoTOldHillsbrad"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["Old Hillsbrad Foothills"];
	DisplayName = BabbleZone["Old Hillsbrad Foothills"];
	Type = "BCDungeon";
	Map = "CoTOldHillsbrad";
	{
		Name = BabbleBoss["Lieutenant Drake"];
		[01] = { itemID = 27423 }; --Cloak of Impulsiveness
		[02] = { itemID = 27418 }; --Stormreaver Shadow-Kilt
		[03] = { itemID = 27417 }; --Ravenwing Pauldrons
		[04] = { itemID = 27420 }; --Uther's Ceremonial Warboots
		[05] = { itemID = 27436 }; --Iron Band of the Unbreakable
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30589, [alDif.MIN_DIF] = alDif.Heroic }; --Dazzling Chrysoprase
		[18] = { itemID = 30591, [alDif.MIN_DIF] = alDif.Heroic }; --Empowered Fire Opal
		[19] = { itemID = 30590, [alDif.MIN_DIF] = alDif.Heroic }; --Enduring Chrysoprase
		[21] = { itemID = 28212, [alDif.MIN_DIF] = alDif.Heroic }; --Aran's Sorcerous Slacks
		[22] = { itemID = 28214, [alDif.MIN_DIF] = alDif.Heroic }; --Grips of the Lunar Eclipse
		[23] = { itemID = 28215, [alDif.MIN_DIF] = alDif.Heroic }; --Mok'Nathal Mask of Battle
		[24] = { itemID = 28211, [alDif.MIN_DIF] = alDif.Heroic }; --Lieutenant's Signet of Lordaeron
		[25] = { itemID = 28213, [alDif.MIN_DIF] = alDif.Heroic }; --Lordaeron Medical Guide
		[26] = { itemID = 28210, [alDif.MIN_DIF] = alDif.Heroic }; --Bloodskull Destroyer
	};
	{
		Name = BabbleBoss["Captain Skarloc"];
		[01] = { itemID = 27428 }; --Stormfront Gauntlets
		[02] = { itemID = 27430 }; --Scaled Greaves of Patience
		[03] = { itemID = 27427 }; --Durotan's Battle Harness
		[04] = { itemID = 27424 }; --Amani Venom-Axe
		[05] = { itemID = 27426 }; --Northshire Battlemace
		[07] = { itemID = 22927 }; --Recipe: Ironshield Potion
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30589, [alDif.MIN_DIF] = alDif.Heroic }; --Dazzling Chrysoprase
		[18] = { itemID = 30591, [alDif.MIN_DIF] = alDif.Heroic }; --Empowered Fire Opal
		[19] = { itemID = 30590, [alDif.MIN_DIF] = alDif.Heroic }; --Enduring Chrysoprase
		[21] = { itemID = 28218, [alDif.MIN_DIF] = alDif.Heroic }; --Pontiff's Pantaloons of Prophecy
		[22] = { itemID = 28220, [alDif.MIN_DIF] = alDif.Heroic }; --Moon-Crown Antlers
		[23] = { itemID = 28219, [alDif.MIN_DIF] = alDif.Heroic }; --Emerald-Scale Greaves
		[24] = { itemID = 28221, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of the Watchful Heart
		[25] = { itemID = 28217, [alDif.MIN_DIF] = alDif.Heroic }; --Tarren Mill Vitality Locket
		[26] = { itemID = 28216, [alDif.MIN_DIF] = alDif.Heroic }; --Dathrohan's Ceremonial Hammer
	};
	{
		Name = BabbleBoss["Epoch Hunter"];
		[01] = { itemID = 27433 }; --Pauldrons of Sufferance
		[02] = { itemID = 27434 }; --Mantle of Perenolde
		[03] = { itemID = 27440 }; --Diamond Prism of Recurrence
		[04] = { itemID = 27432 }; --Broxigar's Ring of Valor
		[05] = { itemID = 27431 }; --Time-Shifted Dagger
		[07] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[08] = { itemID = 29250, [alDif.MIN_DIF] = alDif.Heroic }; --Cord of Sanctification
		[09] = { itemID = 29246, [alDif.MIN_DIF] = alDif.Heroic }; --Nightfall Wristguards
		[10] = { itemID = 29357, [alDif.MIN_DIF] = alDif.Heroic }; --Master Thief's Gloves
		[11] = { itemID = 30534, [alDif.MIN_DIF] = alDif.Heroic }; --Wyrmscale Greaves
		[12] = { itemID = 30536, [alDif.MIN_DIF] = alDif.Heroic }; --Greaves of the Martyr
		[13] = { itemID = 27911, [alDif.MIN_DIF] = alDif.Heroic }; --Epoch's Whispering Cinch
		[14] = { itemID = 28344, [alDif.MIN_DIF] = alDif.Heroic }; --Wyrmfury Pauldrons
		[15] = { itemID = 28233, [alDif.MIN_DIF] = alDif.Heroic }; --Necklace of Resplendent Hope
		[16] = { itemID = 27904, [alDif.MIN_DIF] = alDif.Heroic }; --Resounding Ring of Glory
		[17] = { itemID = 28227, [alDif.MIN_DIF] = alDif.Heroic }; --Sparking Arcanite Ring
		[18] = { itemID = 28223, [alDif.MIN_DIF] = alDif.Heroic }; --Arcanist's Stone
		[19] = { itemID = 28226, [alDif.MIN_DIF] = alDif.Heroic }; --Timeslicer
		[20] = { itemID = 28222, [alDif.MIN_DIF] = alDif.Heroic }; --Reaver of the Infinites
		[21] = { itemID = 30589, [alDif.MIN_DIF] = alDif.Heroic }; --Dazzling Chrysoprase
		[22] = { itemID = 30591, [alDif.MIN_DIF] = alDif.Heroic }; --Empowered Fire Opal
		[23] = { itemID = 30590, [alDif.MIN_DIF] = alDif.Heroic }; --Enduring Chrysoprase
		[24] = { itemID = 24173, [alDif.MIN_DIF] = alDif.Heroic }; --Design: Circlet of Arcane Might
		[25] = { itemID = 28191, [alDif.MIN_DIF] = alDif.Heroic }; --Mana-Etched Vestments
		[26] = { itemID = 28224, [alDif.MIN_DIF] = alDif.Heroic }; --Wastewalker Helm
		[27] = { itemID = 28401, [alDif.MIN_DIF] = alDif.Heroic }; --Hauberk of Desolation
		[28] = { itemID = 28225, [alDif.MIN_DIF] = alDif.Heroic }; --Doomplate Warhelm
		[30] = { itemID = 33847, [alDif.MIN_DIF] = alDif.Heroic }; --Epoch Hunter's Head
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[02] = { itemID = 25729 }; --Pattern: Stylin' Adventure Hat
		[04] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Don Carlos"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[05] = { itemID = 38506 }; --Don Carlos' Famous Hat
		[06] = { itemID = 38329 }; --Don Carlos' Hat
		[07] = { itemID = 38276 }; --Haliscan Brimmed Hat
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Black Morass"] };
		[10] = { itemID = 25730 }; --Pattern: Stylin' Jungle Hat
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Thomas Yance"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[17] = { itemID = 25725 };
		[19] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Aged Dalaran Wizard"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[20] = { itemID = 22539 };
	};
};





-----------------------------------------
---Caverns of Time: The Black Morass ---
-----------------------------------------

AtlasLoot_Data["CoTBlackMorass"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["The Black Morass"];
	DisplayName = BabbleZone["The Black Morass"];
	Type = "BCDungeon";
	Map = "CoTBlackMorass";
	{
		Name = BabbleBoss["Chrono Lord Deja"];
		[01] = { itemID = 27988 }; --Burnoose of Shifting Ages
		[02] = { itemID = 27994 }; --Mantle of Three Terrors
		[03] = { itemID = 27995 }; --Sun-Gilded Shouldercaps
		[04] = { itemID = 27993 }; --Mask of Inner Fire
		[05] = { itemID = 27996 }; --Ring of Spiritual Precision
		[06] = { itemID = 27987 }; --Melmorta's Twilight Longbow
		[08] = { itemID = 29675 }; --Pattern: Arcane Armor Kit
		[16] = { itemID = 29434 }; --Badge of Justice
		[17] = { itemID = 30558 }; --Glimmering Fire Opal
		[18] = { itemID = 30556 }; --Glinting Fire Opal
		[19] = { itemID = 30555 }; --Glowing Tanzanite
	};
	{
		Name = BabbleBoss["Temporus"];
		[01] = { itemID = 28185 }; --Khadgar's Kilt of Abjuration
		[02] = { itemID = 28186 }; --Laughing Skull Battle-Harness
		[03] = { itemID = 28034 }; --Hourglass of the Unraveller
		[04] = { itemID = 28187 }; --Star-Heart Lamp
		[05] = { itemID = 28184 }; --Millennium Blade
		[06] = { itemID = 28033 }; --Epoch-Mender
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30558, [alDif.MIN_DIF] = alDif.Heroic }; --Glimmering Fire Opal
		[18] = { itemID = 30556, [alDif.MIN_DIF] = alDif.Heroic }; --Glinting Fire Opal
		[19] = { itemID = 30555, [alDif.MIN_DIF] = alDif.Heroic }; --Glowing Tanzanite
	};
	{
		Name = BabbleBoss["Aeonus"];
		[01] = { itemID = 28193 }; --Mana-Etched Crown
		[02] = { itemID = 27509 }; --Handgrips of Assassination
		[03] = { itemID = 27873 }; --Moonglade Pants
		[04] = { itemID = 28192 }; --Helm of Desolation
		[05] = { itemID = 27977 }; --Legplates of the Bold
		[06] = { itemID = 27839 }; --Legplates of the Righteous
		[08] = { itemID = 28206 }; --Cowl of the Guiltless
		[09] = { itemID = 28194 }; --Primal Surge Bracers
		[10] = { itemID = 28207 }; --Pauldrons of the Crimson Flight
		[11] = { itemID = 28190 }; --Scarab of the Infinite Cycle
		[12] = { itemID = 28189 }; --Latro's Shifting Sword
		[13] = { itemID = 28188 }; --Bloodfire Greatstaff
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30558, [alDif.MIN_DIF] = alDif.Heroic }; --Glimmering Fire Opal
		[18] = { itemID = 30556, [alDif.MIN_DIF] = alDif.Heroic }; --Glinting Fire Opal
		[19] = { itemID = 30555, [alDif.MIN_DIF] = alDif.Heroic }; --Glowing Tanzanite
		[21] = { itemID = 30531, [alDif.MIN_DIF] = alDif.Heroic }; --Breeches of the Occultist
		[22] = { itemID = 29247, [alDif.MIN_DIF] = alDif.Heroic }; --Girdle of the Deathdealer
		[23] = { itemID = 29253, [alDif.MIN_DIF] = alDif.Heroic }; --Girdle of Valorous Deeds
		[24] = { itemID = 29356, [alDif.MIN_DIF] = alDif.Heroic }; --Quantum Blade
		[26] = { itemID = 33858, [alDif.MIN_DIF] = alDif.Heroic }; --Aeonus's Hourglass
	};
};

-------------------------------------
---Caverns of Time: Hyjal Summit ---
-------------------------------------

AtlasLoot_Data["CoTHyjal"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["Hyjal Summit"];
	DisplayName = BabbleZone["Hyjal Summit"];
	Type = "BCRaid";
	Map = "CoTHyjal";
	{
		Name = BabbleBoss["Rage Winterchill"];
		WebID = {17767,"npc"};
		[01] = { itemID = 30871 }; --Bracers of Martyrdom
		[02] = { itemID = 30870 }; --Cuffs of Devastation
		[03] = { itemID = 30863 }; --Deadly Cuffs
		[04] = { itemID = 30868 }; --Rejuvenating Bracers
		[05] = { itemID = 30864 }; --Bracers of the Pathfinder
		[06] = { itemID = 30869 }; --Howling Wind Bracers
		[07] = { itemID = 30873 }; --Stillwater Boots
		[08] = { itemID = 30866 }; --Blood-stained Pauldrons
		[09] = { itemID = 30862 }; --Blessed Adamantite Bracers
		[10] = { itemID = 30861 }; --Furious Shackles
		[11] = { itemID = 12311 }; --Boneclad Girdle
		[13] = { itemID = 32459 }; --Time-Phased Phylactery
		[16] = { itemID = 30865 }; --Tracker's Blade
		[17] = { itemID = 30872 }; --Chronicle of Dark Secrets
		[18] = { itemID = 30891 }; --Black Featherlight Boots
		[19] = { itemID = 30914 }; --Belt of the Crescent Moon
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 61196, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Anetheron"];
		WebID = {17808,"npc"};
		[01] = { itemID = 30884 }; --Hatefury Mantle
		[02] = { itemID = 30888 }; --Anetheron's Noose
		[03] = { itemID = 30885 }; --Archbishop's Slippers
		[04] = { itemID = 30879 }; --Don Alejandro's Money Belt
		[05] = { itemID = 30886 }; --Enchanted Leather Sandals
		[06] = { itemID = 30887 }; --Golden Links of Restoration
		[07] = { itemID = 30880 }; --Quickstrider Moccasins
		[08] = { itemID = 30878 }; --Glimmering Steel Mantle
		[09] = { itemID = 12306 }; --Mantle of Glimmering Dreams
		[10] = { itemID = 12307 }; --Dreadforge Pauldrons
		[16] = { itemID = 30874 }; --The Unbreakable Will
		[17] = { itemID = 30881 }; --Blade of Infamy
		[18] = { itemID = 30883 }; --Pillar of Ferocity
		[19] = { itemID = 30882 }; --Bastion of Light
		[20] = { itemID = 30916 }; --Leggings of Channeled Elements
		[21] = { itemID = 30919 }; --Valestalker Girdle
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[25] = { itemID = 98570 }; --Mystic Orb
		[27] = { itemID = 61287, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Kaz'rogal"];
		WebID = {17888,"npc"};
		[01] = { itemID = 30889 }; --Kaz\'rogal\'s Hardened Heart"
		[02] = { itemID = 30893 }; --Sun-touched Chain Leggings"
		[03] = { itemID = 30894 }; --Blue Suede Shoes"
		[04] = { itemID = 12310 }; --Felstrider Boots
		[05] = { itemID = 30895 }; --Angelista\'s Sash"
		[06] = { itemID = 30898 }; --Shady Dealer\'s Pantaloons"
		[07] = { itemID = 30900 }; --Bow-stitched Leggings"
		[08] = { itemID = 30915 }; --Belt of Seething Fury"
		[09] = { itemID = 30918 }; --Hammer of Atonement"
		[16] = { itemID = 31092, lootTable = {"T6HAND","Token"} };
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
	};
	{
		Name = BabbleBoss["Azgalor"];
		WebID = {17842,"npc"};
		[01] = { itemID = 30892 }; --Beast-tamer\'s Shoulders"
		[02] = { itemID = 30896 }; --Glory of the Defender"
		[03] = { itemID = 30897 }; --Girdle of Hope"
		[04] = { itemID = 30899 }; --Don Rodrigo\'s Poncho"
		[05] = { itemID = 30901 }; --Boundless Agony"
		[06] = { itemID = 30917 }; --Razorfury Mantle"
		[07] = { itemID = 12308 }; --Infernal Stalker’s Hauberk
		[08] = { itemID = 12309 }; --Plates of Eternal Fury
		[16] = { itemID = 31098, lootTable = {"T6LEGS","Token"} }; --Leggings of the Forgotten Conqueror
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 61289, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Archimonde"];
		WebID = {17968,"npc"};
		[01] = { itemID = 30913 }; --Robes of Rhonin
		[02] = { itemID = 30912 }; --Leggings of Eternity
		[03] = { itemID = 30905 }; --Midnight Chestguard
		[04] = { itemID = 30907 }; --Mail of Fevered Pursuit
		[05] = { itemID = 30904 }; --Savior's Grasp
		[06] = { itemID = 30903 }; --Legguards of Endless Rage
		[07] = { itemID = 30911 }; --Scepter of Purification
		[08] = { itemID = 30910 }; --Tempest of Chaos
		[09] = { itemID = 30902 }; --Cataclysm's Edge
		[10] = { itemID = 30908 }; --Apostle of Argus
		[11] = { itemID = 30909 }; --Antonidas's Aegis of Rapt Concentration
		[12] = { itemID = 30906 }; --Bristleblitz Striker
		[13] = { itemID = 12387 }; --Signet of Shattered Valor
		[14] = { itemID = 12386 }; --Ring of the Stormborn
		[15] = { itemID = 12313 }; --The Defiler's Cudgel
		[16] = { itemID = 31097, lootTable = {"T6HEAD","Token"} }; --Helm of the Forgotten Conqueror
		[18] = { itemID = 450009, desc = AL["Quest Requirements"], contentsPreview = {{450009},{450010},{34334}}}, --The String of Time
		[20] = { itemID = 29434 }; --Badge of Justice
		[21] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[22] = { itemID = 98570 }; --Mystic Orb
		[24] = { itemID = 61557, droprate = "1%" }; --Pet Sigil
		[26] = { itemID = 1001620 };
	};
	{
		Name = AL["Chromius"];
		WebID = {92179,"npc"};
		[01] = { itemID = 15828 }; --Final Countdown Bands
		[02] = { itemID = 15831 }; --Girdle of Falling Sand
		[03] = { itemID = 15898 }; --Hourglass Casing
		[04] = { itemID = 15835 }; --Time Reaver's Gown
		[05] = { itemID = 15840 }; --Timewaker's Treads
		[06] = { itemID = 15896 }; --Cloak of the Final Hour
		[07] = { itemID = 15834 }; --Aetherflux Shroud
		[09] = { itemID = 15839 }; --Charm of the Chronomender
		[10] = { itemID = 15899 }; --Amulet of Futures Past
		[11] = { itemID = 15838 }; --Flickering Amulet
		[12] = { itemID = 15836 }; --Pendant of the Evil Twin
		[13] = { itemID = 15830 }; --Infinite Scale Talisman
		[16] = { itemID = 18764 }; --Echo of Eons
		[17] = { itemID = 15041 }; --Key of Time
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
	};
	{
		Name = AL["Trash Mobs"].." - Items";
		[01] = { itemID = 32590 }; --Nethervoid Cloak
		[02] = { itemID = 34010 }; --Pepe's Shroud of Pacification
		[03] = { itemID = 32609 }; --Boots of the Divine Light
		[04] = { itemID = 32592 }; --Chestguard of Relentless Storms
		[05] = { itemID = 32591 }; --Choker of Serrated Blades
		[06] = { itemID = 32589 }; --Hellfire-Encased Pendant
		[07] = { itemID = 34009 }; --Hammer of Judgement
		[08] = { itemID = 32946 }; --Claw of Molten Fury
		[09] = { itemID = 32945 }; --Fist of Molten Fury
		[10] = { itemID = 14986 };
		[11] = { itemID = 32428 }; --Heart of Darkness
		[12] = { itemID = 32897 }; --Mark of the Illidari
		[16] = { itemID = 32227 }; --Crimson Spinel
		[17] = { itemID = 32228 }; --Empyrean Sapphire
		[18] = { itemID = 32229 }; --Lionseye
		[19] = { itemID = 32230 }; --Shadowsong Amethyst
		[20] = { itemID = 32231 }; --Pyrestone
		[21] = { itemID = 32249 }; --Seaspray Emerald
	};
	scaleOfSandsRings;
	{
		Name = "Crafting Recipe Drops Page 1";
		[01] = { itemID = 15315 }; --Design: Purified Shadowsong Amethyst
		[02] = { itemID = 32274 }; --Design: Bold Crimson Spinel
		[03] = { itemID = 32277 }; --Design: Delicate Crimson Spinel
		[04] = { itemID = 32281 }; --Design: Teardrop Crimson Spinel
		[05] = { itemID = 32282 }; --Design: Runed Crimson Spinel
		[06] = { itemID = 32283 }; --Design: Bright Crimson Spinel
		[07] = { itemID = 32284 }; --Design: Subtle Crimson Spinel
		[08] = { itemID = 32285 }; --Design: Flashing Crimson Spinel
		[09] = { itemID = 32286 }; --Design: Solid Empyrean Sapphire
		[10] = { itemID = 32287 }; --Design: Sparkling Empyrean Sapphire
		[11] = { itemID = 32288 }; --Design: Lustrous Empyrean Sapphire
		[12] = { itemID = 32289 }; --Design: Stormy Empyrean Sapphire
		[13] = { itemID = 32290 }; --Design: Brilliant Lionseye
		[14] = { itemID = 32291 }; --Design: Smooth Lionseye
		[15] = { itemID = 32292 }; --Design: Rigid Lionseye
		[16] = { itemID = 32293 }; --Design: Gleaming Lionseye
		[17] = { itemID = 32294 }; --Design: Thick Lionseye
		[18] = { itemID = 32295 }; --Design: Mystic Lionseye
		[19] = { itemID = 32296 }; --Design: Great Lionseye
		[20] = { itemID = 32297 }; --Design: Sovereign Shadowsong Amethyst
		[21] = { itemID = 32298 }; --Design: Shifting Shadowsong Amethyst
		[22] = { itemID = 32299 }; --Design: Balanced Shadowsong Amethyst
		[23] = { itemID = 32300 }; --Design: Infused Shadowsong Amethyst
		[24] = { itemID = 32301 }; --Design: Glowing Shadowsong Amethyst
		[25] = { itemID = 32302 }; --Design: Royal Shadowsong Amethyst
		[26] = { itemID = 32303 }; --Design: Inscribed Pyrestone
		[27] = { itemID = 32304 }; --Design: Potent Pyrestone
		[28] = { itemID = 32305 }; --Design: Luminous Pyrestone
		[29] = { itemID = 32306 }; --Design: Glinting Pyrestone
		[30] = { itemID = 32307 }; --Design: Veiled Pyrestone
	};
	{
		Name = "Crafting Recipe Drops Page 2";
		[01] = { itemID = 32308 }; --Design: Wicked Pyrestone
		[02] = { itemID = 32309 }; --Design: Enduring Seaspray Emerald
		[03] = { itemID = 32310 }; --Design: Radiant Seaspray Emerald
		[04] = { itemID = 32311 }; --Design: Dazzling Seaspray Emerald
		[05] = { itemID = 32312 }; --Design: Jagged Seaspray Emerald
		[06] = { itemID = 35762 }; --Design: Reckless Pyrestone
		[07] = { itemID = 35763 }; --Design: Quick Lionseye
		[08] = { itemID = 35764 }; --Design: Steady Seaspray Emerald
		[09] = { itemID = 35765 }; --Design: Forceful Seaspray Emerald
		[10] = { itemID = 884039 }; --Design: Fractured Crimson Spinel
		[16] = { itemID = 32736 }; --Plans: Swiftsteel Bracers
		[17] = { itemID = 32739 }; --Plans: Dawnsteel Shoulders
		[18] = { itemID = 32745 }; --Pattern: Shoulderpads of Renewed Life
		[19] = { itemID = 32746 }; --Pattern: Swiftstrike Bracers
		[20] = { itemID = 32748 }; --Pattern: Bindings of Lightning Reflexes
		[21] = { itemID = 32751 }; --Pattern: Living Earth Shoulders
		[22] = { itemID = 32752 }; --Pattern: Swiftheal Wraps
		[23] = { itemID = 32755 }; --Pattern: Mantle of Nimble Thought
	};
};

------------------------------------------
---Coilfang Reservoir: The Slave Pens ---
------------------------------------------

AtlasLoot_Data["CFRSlavePens"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Slave Pens"];
	DisplayName = BabbleZone["The Slave Pens"];
	Type = "BCDungeon";
	Map = "CFRTheSlavePens";
	{
		Name = BabbleBoss["Mennu the Betrayer"];
		[01] = { itemID = 24359 }; --Princely Reign Leggings
		[02] = { itemID = 24357 }; --Vest of Living Lightning
		[03] = { itemID = 24360 }; --Tracker's Belt
		[04] = { itemID = 24356 }; --Wastewalker Shiv
		[05] = { itemID = 24361 }; --Spellfire Longsword
		[06] = { itemID = 29674 }; --Pattern: Nature Armor Kit
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30604, [alDif.MIN_DIF] = alDif.Heroic }; --Resplendent Fire Opal
		[18] = { itemID = 30605, [alDif.MIN_DIF] = alDif.Heroic }; --Vivid Chrysoprase
		[19] = { itemID = 30603, [alDif.MIN_DIF] = alDif.Heroic }; --Royal Tanzanite
		[20] = { itemID = 27542, [alDif.MIN_DIF] = alDif.Heroic }; --Cord of Belief
		[21] = { itemID = 27545, [alDif.MIN_DIF] = alDif.Heroic }; --Mennu's Scaled Leggings
		[22] = { itemID = 27541, [alDif.MIN_DIF] = alDif.Heroic }; --Archery Belt of the Broken
		[23] = { itemID = 27546, [alDif.MIN_DIF] = alDif.Heroic }; --Traitor's Noose
		[25] = { itemID = 27544, [alDif.MIN_DIF] = alDif.Heroic }; --Totem of Spontaneous Regrowth
		[26] = { itemID = 27543, [alDif.MIN_DIF] = alDif.Heroic }; --Starlight Dagger
		[28] = { itemID = 29674, [alDif.MIN_DIF] = alDif.Heroic }; --Pattern: Nature Armor Kit

	};
	{
		Name = BabbleBoss["Rokmar the Crackler"];
		[01] = { itemID = 24379 }; --Bogstrok Scale Cloak
		[02] = { itemID = 24376 }; --Runed Fungalcap
		[03] = { itemID = 24378 }; --Coilfang Hammer of Renewal
		[04] = { itemID = 24380 }; --Calming Spore Reed
		[05] = { itemID = 24381 }; --Coilfang Needler
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30604, [alDif.MIN_DIF] = alDif.Heroic }; --Resplendent Fire Opal
		[18] = { itemID = 30605, [alDif.MIN_DIF] = alDif.Heroic }; --Vivid Chrysoprase
		[19] = { itemID = 30603, [alDif.MIN_DIF] = alDif.Heroic }; --Royal Tanzanite
		[21] = { itemID = 27550, [alDif.MIN_DIF] = alDif.Heroic }; --Ironscale War Cloak
		[22] = { itemID = 27547, [alDif.MIN_DIF] = alDif.Heroic }; --Coldwhisper Cord
		[23] = { itemID = 28124, [alDif.MIN_DIF] = alDif.Heroic }; --Liar's Cord
		[24] = { itemID = 27549, [alDif.MIN_DIF] = alDif.Heroic }; --Wavefury Boots
		[25] = { itemID = 27548, [alDif.MIN_DIF] = alDif.Heroic }; --Girdle of Many Blessings
		[26] = { itemID = 27551, [alDif.MIN_DIF] = alDif.Heroic }; --Skeletal Necklace of Battlerage
	};
	{
		Name = BabbleBoss["Quagmirran"];
		[01] = { itemID = 24362 }; --Spore-Soaked Vaneer
		[02] = { itemID = 24365 }; --Deft Handguards
		[03] = { itemID = 24366 }; --Scorpid-Sting Mantle
		[04] = { itemID = 24363 }; --Unscarred Breastplate
		[05] = { itemID = 24364 }; --Azureplate Greaves
		[07] = { itemID = 27796, [alDif.MIN_DIF] = alDif.Heroic }; --Mana-Etched Spaulders
		[08] = { itemID = 27713, [alDif.MIN_DIF] = alDif.Heroic }; --Pauldrons of Desolation
		[09] = { itemID = 27742, [alDif.MIN_DIF] = alDif.Heroic }; --Mage-Fury Girdle
		[10] = { itemID = 27712, [alDif.MIN_DIF] = alDif.Heroic }; --Shackles of Quagmirran
		[11] = { itemID = 27800, [alDif.MIN_DIF] = alDif.Heroic }; --Earthsoul Britches
		[12] = { itemID = 28337, [alDif.MIN_DIF] = alDif.Heroic }; --Breastplate of Righteous Fury
		[13] = { itemID = 27672, [alDif.MIN_DIF] = alDif.Heroic }; --Girdle of the Immovable
		[14] = { itemID = 27740, [alDif.MIN_DIF] = alDif.Heroic }; --Band of Ursol
		[15] = { itemID = 27683, [alDif.MIN_DIF] = alDif.Heroic }; --Quagmirran's Eye
		[16] = { itemID = 27714, [alDif.MIN_DIF] = alDif.Heroic }; --Swamplight Lantern
		[17] = { itemID = 27673, [alDif.MIN_DIF] = alDif.Heroic }; --Phosphorescent Blade
		[18] = { itemID = 27741, [alDif.MIN_DIF] = alDif.Heroic }; --Bleeding Hollow Warhammer
		[19] = { itemID = 33821, [alDif.MIN_DIF] = alDif.Heroic }; --The Heart of Quagmirran
		[20] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[21] = { itemID = 30604, [alDif.MIN_DIF] = alDif.Heroic }; --Resplendent Fire Opal
		[22] = { itemID = 30605, [alDif.MIN_DIF] = alDif.Heroic }; --Vivid Chrysoprase
		[23] = { itemID = 30603, [alDif.MIN_DIF] = alDif.Heroic }; --Royal Tanzanite
		[24] = { itemID = 29242, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of Blasphemy
		[25] = { itemID = 30538, [alDif.MIN_DIF] = alDif.Heroic }; --Midnight Legguards
		[26] = { itemID = 32078, [alDif.MIN_DIF] = alDif.Heroic }; --Pauldrons of Wild Magic
		[27] = { itemID = 29349, [alDif.MIN_DIF] = alDif.Heroic }; --Adamantine Chain of the Unbroken
	};
};

------------------------------------------
---Coilfang Reservoir: The Steamvault ---
------------------------------------------

AtlasLoot_Data["CFRSteamvault"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Steamvault"];
	DisplayName = BabbleZone["The Steamvault"];
	Type = "BCDungeon";
	Map = "CFRTheSteamvault";
	{
		Name = BabbleBoss["Hydromancer Thespia"];
		[01] = { itemID = 27508 }; --Incanter's Gloves
		[03] = { itemID = 27789 }; --Cloak of Whispering Shells
		[04] = { itemID = 27787 }; --Chestguard of No Remorse
		[05] = { itemID = 27783 }; --Moonrage Girdle
		[06] = { itemID = 27784 }; --Scintillating Coral Band
		[08] = { itemID = 29673 }; --Pattern: Frost Armor Kit
		[10] = { itemID = 30828 }; --Vial of Underworld Loam
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30550, [alDif.MIN_DIF] = alDif.Heroic }; --Sundered Chrysoprase
		[18] = { itemID = 30551, [alDif.MIN_DIF] = alDif.Heroic }; --Infused Fire Opal
		[19] = { itemID = 30549, [alDif.MIN_DIF] = alDif.Heroic }; --Shifting Tanzanite
	};
	{
		Name = BabbleBoss["Mekgineer Steamrigger"];
		[01] = { itemID = 27793 }; --Earth Mantle Handwraps
		[02] = { itemID = 27790 }; --Mask of Penance
		[03] = { itemID = 27792 }; --Steam-Hinge Chain of Valor
		[04] = { itemID = 27791 }; --Serpentcrest Life-Staff
		[05] = { itemID = 27794 }; --Recoilless Rocket Ripper X-54
		[07] = { itemID = 23887 }; --Schematic: Rocket Boots Xtreme
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30550, [alDif.MIN_DIF] = alDif.Heroic }; --Sundered Chrysoprase
		[18] = { itemID = 30551, [alDif.MIN_DIF] = alDif.Heroic }; --Infused Fire Opal
		[19] = { itemID = 30549, [alDif.MIN_DIF] = alDif.Heroic }; --Shifting Tanzanite
	};
	{
		Name = BabbleBoss["Warlord Kalithresh"];
		[01] = { itemID = 24313 }; --Pattern: Battlecast Hood
		[03] = { itemID = 27738 }; --Incanter's Pauldrons
		[04] = { itemID = 27737 }; --Moonglade Shoulders
		[05] = { itemID = 27801 }; --Beast Lord Mantle
		[06] = { itemID = 27510 }; --Tidefury Gauntlets
		[07] = { itemID = 27874 }; --Beast Lord Leggings
		[08] = { itemID = 28203 }; --Breastplate of the Righteous
		[09] = { itemID = 27475 }; --Gauntlets of the Bold
		[11] = { itemID = 27804 }; --Devilshark Cape
		[12] = { itemID = 27799 }; --Vermillion Robes of the Dominant
		[13] = { itemID = 27795 }; --Sash of Serpentra
		[14] = { itemID = 27806 }; --Fathomheart Gauntlets
		[15] = { itemID = 27805 }; --Ring of the Silver Hand
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30550, [alDif.MIN_DIF] = alDif.Heroic }; --Sundered Chrysoprase
		[18] = { itemID = 30551, [alDif.MIN_DIF] = alDif.Heroic }; --Infused Fire Opal
		[19] = { itemID = 30549, [alDif.MIN_DIF] = alDif.Heroic }; --Shifting Tanzanite
		[20] = { itemID = 30543, [alDif.MIN_DIF] = alDif.Heroic }; --Pontifex Kilt
		[21] = { itemID = 29243, [alDif.MIN_DIF] = alDif.Heroic }; --Wave-Fury Vambraces
		[22] = { itemID = 29463, [alDif.MIN_DIF] = alDif.Heroic }; --Amber Bands of the Aggressor
		[23] = { itemID = 29351, [alDif.MIN_DIF] = alDif.Heroic }; --Wrathtide Longbow
		[24] = { itemID = 31721, [alDif.MIN_DIF] = alDif.Heroic }; --Kalithresh's Trident
		[26] = { itemID = 33827, [alDif.MIN_DIF] = alDif.Heroic }; --The Warlord's Treatise
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 24159 }; --Design: Khorium Band of Frost
		[03] = { itemID = 22533 }; --Formula: Enchant Bracer - Fortitude
		[05] = { itemID = 24367 }; --Orders from Lady Vashj
		[06] = { itemID = 24368 }; --Coilfang Armaments
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Second Fragment Guardian"], "=q5=" .. BabbleZone["The Steamvault"] };
		[17] = { itemID = 24487 }; --Second Key Fragment
	};
};

----------------------------------------
---Coilfang Reservoir: The Underbog ---
----------------------------------------

AtlasLoot_Data["CFRUnderbog"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Underbog"];
	DisplayName = BabbleZone["The Underbog"];
	Type = "BCDungeon";
	Map = "CFRTheUnderbog";
	{
		Name = BabbleBoss["Hungarfen"];
		[01] = { itemID = 24450 }; --Manaspark Gloves
		[02] = { itemID = 24452 }; --Starlight Gauntlets
		[03] = { itemID = 24451 }; --Lykul Bloodbands
		[04] = { itemID = 24413 }; --Totem of the Thunderhead
		[05] = { itemID = 27631 }; --Needle Shrike
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30606, [alDif.MIN_DIF] = alDif.Heroic }; --Lambent Chrysoprase
		[18] = { itemID = 30607, [alDif.MIN_DIF] = alDif.Heroic }; --Splendid Fire Opal
		[19] = { itemID = 30608, [alDif.MIN_DIF] = alDif.Heroic }; --Radiant Chrysoprase
		[20] = { itemID = 27746, [alDif.MIN_DIF] = alDif.Heroic }; --Arcanium Signet Bands
		[21] = { itemID = 27745, [alDif.MIN_DIF] = alDif.Heroic }; --Hungarhide Gauntlets
		[22] = { itemID = 27743, [alDif.MIN_DIF] = alDif.Heroic }; --Girdle of Living Flame
		[23] = { itemID = 27748, [alDif.MIN_DIF] = alDif.Heroic }; --Cassock of the Loyal
		[24] = { itemID = 27744, [alDif.MIN_DIF] = alDif.Heroic }; --Idol of Ursoc
		[25] = { itemID = 27747, [alDif.MIN_DIF] = alDif.Heroic }; --Boggspine Knuckles
	};
	{
		Name = BabbleBoss["Ghaz'an"];
		[01] = { itemID = 24459 }; --Cloak of Healing Rays
		[02] = { itemID = 24458 }; --Studded Girdle of Virtue
		[03] = { itemID = 24460 }; --Talisman of Tenacity
		[04] = { itemID = 24462 }; --Luminous Pearls of Insight
		[05] = { itemID = 24461 }; --Hatebringer
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30606, [alDif.MIN_DIF] = alDif.Heroic }; --Lambent Chrysoprase
		[18] = { itemID = 30607, [alDif.MIN_DIF] = alDif.Heroic }; --Splendid Fire Opal
		[19] = { itemID = 30608, [alDif.MIN_DIF] = alDif.Heroic }; --Radiant Chrysoprase
		[21] = { itemID = 27760, [alDif.MIN_DIF] = alDif.Heroic }; --Dunewind Sash
		[22] = { itemID = 27759, [alDif.MIN_DIF] = alDif.Heroic }; --Headdress of the Tides
		[23] = { itemID = 27755, [alDif.MIN_DIF] = alDif.Heroic }; --Girdle of Gallantry
		[24] = { itemID = 27758, [alDif.MIN_DIF] = alDif.Heroic }; --Hydra-fang Necklace
		[25] = { itemID = 27761, [alDif.MIN_DIF] = alDif.Heroic }; --Ring of the Shadow Deeps
		[26] = { itemID = 27757, [alDif.MIN_DIF] = alDif.Heroic }; --Greatstaff of the Leviathan
	};
	{
		Name = BabbleBoss["Swamplord Musel'ek"];
		[01] = { itemID = 24454 }; --Cloak of Enduring Swiftness
		[02] = { itemID = 24455 }; --Tunic of the Nightwatcher
		[03] = { itemID = 24457 }; --Truth Bearer Shoulderguards
		[04] = { itemID = 24456 }; --Greaves of the Iron Guardian
		[05] = { itemID = 24453 }; --Zangartooth Shortblade
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30606, [alDif.MIN_DIF] = alDif.Heroic }; --Lambent Chrysoprase
		[18] = { itemID = 30607, [alDif.MIN_DIF] = alDif.Heroic }; --Splendid Fire Opal
		[19] = { itemID = 30608, [alDif.MIN_DIF] = alDif.Heroic }; --Radiant Chrysoprase
		[21] = { itemID = 27764, [alDif.MIN_DIF] = alDif.Heroic }; --Hands of the Sun
		[22] = { itemID = 27763, [alDif.MIN_DIF] = alDif.Heroic }; --Crown of the Forest Lord
		[23] = { itemID = 27765, [alDif.MIN_DIF] = alDif.Heroic }; --Armwraps of Disdain
		[24] = { itemID = 27766, [alDif.MIN_DIF] = alDif.Heroic }; --Swampstone Necklace
		[25] = { itemID = 27762, [alDif.MIN_DIF] = alDif.Heroic }; --Weathered Band of the Swamplord
		[26] = { itemID = 27767, [alDif.MIN_DIF] = alDif.Heroic }; --Bogreaver
	};
	{
		Name = BabbleBoss["The Black Stalker"];
		[01] = { itemID = 24481 }; --Robes of the Augurer
		[02] = { itemID = 24466 }; --Skulldugger's Leggings
		[03] = { itemID = 24465 }; --Shamblehide Chestguard
		[04] = { itemID = 24463 }; --Pauldrons of Brute Force
		[05] = { itemID = 24464 }; --The Stalker's Fangs
		[07] = { itemID = 24248 }; --Brain of the Black Stalker
	};
	{ --only heroic
		Name = BabbleBoss["The Black Stalker"] .. " (" .. AL["Heroic"] .. ")";
		[01] = { itemID = 29434 }; --Badge of Justice
		[02] = { itemID = 29265 }; --Barkchip Boots
		[03] = { itemID = 30541 }; --Stormsong Kilt
		[04] = { itemID = 32081 }; --Eye of the Stalker
		[05] = { itemID = 29350 }; --The Black Stalk
		[07] = { itemID = 27781 }; --Demonfang Ritual Helm
		[08] = { itemID = 27768 }; --Oracle Belt of Timeless Mystery
		[09] = { itemID = 27938 }; --Savage Mask of the Lynx Lord
		[10] = { itemID = 27773 }; --Barbaric Legstraps
		[11] = { itemID = 27779 }; --Bone Chain Necklace
		[12] = { itemID = 27780 }; --Ring of Fabled Hope
		[13] = { itemID = 27896 }; --Alembic of Infernal Power
		[14] = { itemID = 27770 }; --Argussian Compass
		[16] = { itemID = 30606 }; --Lambent Chrysoprase
		[17] = { itemID = 30607 }; --Splendid Fire Opal
		[18] = { itemID = 30608 }; --Radiant Chrysoprase
		[20] = { itemID = 27907 }; --Mana-Etched Pantaloons
		[21] = { itemID = 27771 }; --Doomplate Shoulderguards
		[23] = { itemID = 27769 }; --Endbringer
		[24] = { itemID = 27772 }; --Stormshield of Renewal
		[26] = { itemID = 24248 }; --Brain of the Black Stalker
		[27] = { itemID = 33826 }; --Black Stalker Egg
	};
};
------------------------------------------------
---Coilfang Reservoir: Serpentshrine Cavern ---
------------------------------------------------

AtlasLoot_Data["CFRSerpentshrine"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["Serpentshrine Cavern"];
	DisplayName = BabbleZone["Serpentshrine Cavern"];
	Type = "BCRaid";
	Map = "CFRSerpentshrineCavern";
	{
		Name = BabbleBoss["Hydross the Unstable"];
		WebID = {21216,"npc"};
		[01] = { itemID = 30056 }; --Robe of Hateful Echoes
		[02] = { itemID = 32516 }; --Wraps of Purification
		[03] = { itemID = 30050 }; --Boots of the Shifting Nightmare
		[04] = { itemID = 30055 }; --Shoulderpads of the Stranger
		[05] = { itemID = 30047 }; --Blackfathom Warbands
		[06] = { itemID = 30054 }; --Ranger-General's Chestguard
		[07] = { itemID = 30048 }; --Brighthelm of Justice
		[08] = { itemID = 30053 }; --Pauldrons of the Wardancer
		[09] = { itemID = 600878, [alDif.MIN_DIF] = alDif.Heroic }; --Elemental Lodestone: Hydross the Unstable
		[16] = { itemID = 30052 }; --Ring of Lethality
		[17] = { itemID = 33055 }; --Band of Vile Aggression
		[18] = { itemID = 12149 }; --Ring of Unstable Currents
		[19] = { itemID = 30664 }; --Living Root of the Wildheart
		[20] = { itemID = 30629 }; --Scarab of Displacement
		[21] = { itemID = 30049 }; --Fathomstone
		[22] = { itemID = 30051 }; --Idol of the Crescent Goddess
		[24] = { itemID = 816254, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Cloak - Crushing Wave
		[25] = { itemID = 63338, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["The Lurker Below"];
		[01] = { itemID = 30064 }; --Cord of Screaming Terrors
		[02] = { itemID = 30067 }; --Velvet Boots of the Guardian
		[03] = { itemID = 30062 }; --Grove-Bands of Remulos
		[04] = { itemID = 30060 }; --Boots of Effortless Striking
		[05] = { itemID = 30066 }; --Tempest-Strider Boots
		[06] = { itemID = 30065 }; --Glowing Breastplate of Truth
		[07] = { itemID = 30057 }; --Bracers of Eradication
		[08] = { itemID = 12126 }; --Bracers of Abyssal Might
		[10] = { itemID = 29434 }; --Badge of Justice
		[16] = { itemID = 12165 }; --Amulet of Tidal Fury
		[17] = { itemID = 30059 }; --Choker of Animalistic Fury
		[18] = { itemID = 30061 }; --Ancestral Ring of Conquest
		[19] = { itemID = 33054 }; --The Seal of Danzalar
		[20] = { itemID = 30665 }; --Earring of Soulful Meditation
		[21] = { itemID = 30063 }; --Libram of Absolute Truth
		[23] = { itemID = 30058 }; --Mallet of the Tides
	};
	{
		Name = BabbleBoss["Leotheras the Blind"];
		WebID = {21215,"npc"};
		[01] = { itemID = 30092 }; --Orca-Hide Boots
		[02] = { itemID = 30097 }; --Coral-Barbed Shoulderpads
		[03] = { itemID = 30091 }; --True-Aim Stalker Bands
		[04] = { itemID = 30096 }; --Girdle of the Invulnerable
		[05] = { itemID = 30627 }; --Tsunami Talisman
		[06] = { itemID = 30095 }; --Fang of the Leviathan
		[07] = { itemID = 12128 }; --Boots of Inner Torment
		[08] = { itemID = 12129 }; --Dreadstep Sabatons
		[16] = { itemID = 30240, lootTable = {"T5HAND","Token"} }; --Gloves of the Vanquished Defender
		[18] = { itemID = 63326, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Fathom-Lord Karathress"];
		WebID = {21214,"npc"};
		[01] = { itemID = 30100 }; --Soul-Strider Boots
		[02] = { itemID = 30101 }; --Bloodsea Brigand's Vest
		[03] = { itemID = 30099 }; --Frayed Tether of the Drowned
		[04] = { itemID = 30663 }; --Fathom-Brooch of the Tidewalker
		[05] = { itemID = 30626 }; --Sextant of Unstable Currents
		[06] = { itemID = 30090 }; --World Breaker
		[07] = { itemID = 12125 }; --Maul of the Bloodied Depths
		[08] = { itemID = 12154 }; --Belt of Submerged Might
		[16] = { itemID = 30246, lootTable = {"T5LEGS","Token"} }; --Leggings of the Vanquished Defender
		[18] = { itemID = 63325, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Morogrim Tidewalker"];
		WebID = {21213,"npc"};
		[01] = { itemID = 30098 }; --Razor-Scale Battlecloak
		[02] = { itemID = 30079 }; --Illidari Shoulderpads
		[03] = { itemID = 30075 }; --Gnarled Chestpiece of the Ancients
		[04] = { itemID = 30085 }; --Mantle of the Tireless Tracker
		[05] = { itemID = 30068 }; --Girdle of the Tidal Call
		[06] = { itemID = 30084 }; --Pauldrons of the Argent Sentinel
		[07] = { itemID = 30081 }; --Warboots of Obliteration
		[08] = { itemID = 12193 }; --Maul of Glacial Waves
		[16] = { itemID = 30008 }; --Pendant of the Lost Ages
		[17] = { itemID = 30083 }; --Ring of Sundered Souls
		[18] = { itemID = 33058 }; --Band of the Vigilant
		[19] = { itemID = 30720 }; --Serpent-Coil Braid
		[20] = { itemID = 30082 }; --Talon of Azshara
		[21] = { itemID = 30080 }; --Luminescent Rod of the Naaru
	};
	{
		Name = BabbleBoss["Lady Vashj"];
		WebID = {21212,"npc"};
		[01] = { itemID = 30107 }; --Vestments of the Sea-Witch
		[02] = { itemID = 30111 }; --Runetotem's Mantle
		[03] = { itemID = 30106 }; --Belt of One-Hundred Deaths
		[04] = { itemID = 30104 }; --Cobra-Lash Boots
		[05] = { itemID = 30102 }; --Krakken-Heart Breastplate
		[06] = { itemID = 30112 }; --Glorious Gauntlets of Crestfall
		[07] = { itemID = 30109 }; --Ring of Endless Coils
		[08] = { itemID = 30110 }; --Coral Band of the Revived
		[09] = { itemID = 30621 }; --Prism of Inner Calm
		[10] = { itemID = 30103 }; --Fang of Vashj
		[11] = { itemID = 30108 }; --Lightfathom Scepter
		[12] = { itemID = 30105 }; --Serpent Spine Longbow
		[13] = { itemID = 12148 }; --Ring of Tidal Precision
		[14] = { itemID = 12151 }; --Tidebound Bow
		[15] = { itemID = 12194 }; --Tideforged Maul
		[16] = { itemID = 30243, lootTable = {"T5HEAD","Token"} }; --Helm of the Vanquished Defender
		[18] = { itemID = 29906 }; --Vashj's Vial Remnant
		[19] = { itemID = 450000 }; --Intact Vial of Lady Vashj
		[21] = { itemID = 63320, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 30027 }; --Boots of Courage Unending
		[02] = { itemID = 30022 }; --Pendant of the Perilous
		[03] = { itemID = 30620 }; --Spyglass of the Hidden Fleet
		[04] = { itemID = 30023 }; --Totem of the Maelstrom
		[05] = { itemID = 30021 }; --Wildfury Greatstaff
		[06] = { itemID = 30025 }; --Serpentshrine Shuriken
		[07] = { itemID = 44831 }; --Mmrgrg glm Nuubs
		[09] = { itemID = 30324 }; --Plans: AtlasLoot.Colors.RED Havoc Boots
		[10] = { itemID = 30322 }; --Plans: AtlasLoot.Colors.RED Belt of Battle
		[11] = { itemID = 30323 }; --Plans: Boots of the Protector
		[12] = { itemID = 30321 }; --Plans: Belt of the Guardian
		[13] = { itemID = 30280 }; --Pattern: Belt of Blasting
		[14] = { itemID = 30282 }; --Pattern: Boots of Blasting
		[15] = { itemID = 30283 }; --Pattern: Boots of the Long Road
		[16] = { itemID = 30281 }; --Pattern: Belt of the Long Road
		[17] = { itemID = 30308 }; --Pattern: Hurricane Boots
		[18] = { itemID = 30304 }; --Pattern: Monsoon Belt
		[19] = { itemID = 30305 }; --Pattern: Boots of Natural Grace
		[20] = { itemID = 30307 }; --Pattern: Boots of the Crimson Hawk
		[21] = { itemID = 30306 }; --Pattern: Boots of Utter Darkness
		[22] = { itemID = 30301 }; --Pattern: Belt of Natural Power
		[23] = { itemID = 30303 }; --Pattern: Belt of the Black Eagle
		[24] = { itemID = 30302 }; --Pattern: Belt of Deep Shadow
		[26] = { itemID = 30183 }; --Nether Vortex
		[28] = { itemID = 32897 }; --Mark of the Illidari
	};
};

--------------------
---Gruul's Lair ---
--------------------

AtlasLoot_Data["GruulsLair"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Gruul's Lair"];
	Type = "BCRaid";
	Map = "GruulsLair";
	{
		Name = BabbleBoss["High King Maulgar"];
		WebID = {18831,"npc"};
		[01] = { itemID = 28797 }; --Brute Cloak of the Ogre-Magi
		[02] = { itemID = 28799 }; --Belt of Divine Inspiration
		[03] = { itemID = 28796 }; --Malefic Mask of the Shadows
		[04] = { itemID = 28801 }; --Maulgar's Warhelm
		[05] = { itemID = 28795 }; --Bladespire Warbands
		[06] = { itemID = 11680 }; --Boots of Converging Paths
		[08] = { itemID = 12116 }; --Blindeye's Insightful Ward
		[09] = { itemID = 12086 }; --Choker of Primal Wrath
		[10] = { itemID = 28800 }; --Hammer of the Naaru
		[11] = { itemID = 12124 }; --Gar Maul
		[12] = { itemID = 12090 }; --Spellbreaker’s Edge
		[16] = { itemID = 29764, lootTable = {"T4SHOULDER","Token"} }; --Pauldrons of the Fallen Defender
		[18] = { itemID = 816252, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Undaunted Might
		[20] = { itemID = 62311, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Gruul the Dragonkiller"];
		WebID = {19044,"npc"};
		[01] = { itemID = 28804 }; --Collar of Cho'gall
		[02] = { itemID = 28803 }; --Cowl of Nature's Breath
		[03] = { itemID = 28828 }; --Gronn-Stitched Girdle
		[04] = { itemID = 28827 }; --Gauntlets of the Dragonslayer
		[05] = { itemID = 28810 }; --Windshear Boots
		[06] = { itemID = 28824 }; --Gauntlets of Martial Perfection
		[07] = { itemID = 11639 }; --Cloak of Brutal Winds
		[08] = { itemID = 11688 }; --Signet of Elemental Savagery
		[09] = { itemID = 28822 }; --Teeth of Gruul
		[10] = { itemID = 28823 }; --Eye of Gruul
		[11] = { itemID = 28830 }; --Dragonspine Trophy
		[13] = { itemID = 31750 }; --Earthen Signet
		[16] = { itemID = 29767, lootTable = {"T4LEGS","Token"} }; --Leggings of the Fallen Defender
		[18] = { itemID = 28802 }; --Bloodmaw Magus-Blade
		[19] = { itemID = 28794 }; --Axe of the Gronn Lords
		[20] = { itemID = 28825 }; --Aldori Legacy Defender
		[21] = { itemID = 28826 }; --Shuriken of Negation
		[22] = { itemID = 12088 }; --Spinepiercer

	};
};



-------------------------------------------
---Hellfire Citadel: Hellfire Ramparts ---
-------------------------------------------

AtlasLoot_Data["HCRamparts"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["Hellfire Ramparts"];
	DisplayName = BabbleZone["Hellfire Ramparts"];
	Type = "BCDungeon";
	Map = "HCHellfireRamparts";
	{
		Name = BabbleBoss["Watchkeeper Gargolmar"];
		WebID = {17306,"npc"};
		[01] = { itemID = 24024 }; --Pauldrons of Arcane Rage
		[02] = { itemID = 24023 }; --Bracers of Finesse
		[03] = { itemID = 24022 }; --Scale Leggings of the Skirmisher
		[04] = { itemID = 24021 }; --Light-Touched Breastplate
		[05] = { itemID = 24020 }; --Shadowrend Longblade
		[06] = { itemID = 23881 }; --Gargolmar's Hand
		[08] = { itemID = 60946, droprate = "1%" }; --Pet Sigil
		[17] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[18] = { itemID = 30593, [alDif.MIN_DIF] = alDif.Heroic }; --Iridescent Fire Opal
		[19] = { itemID = 30594, [alDif.MIN_DIF] = alDif.Heroic }; --Effulgent Chrysoprase
		[20] = { itemID = 30592, [alDif.MIN_DIF] = alDif.Heroic }; --Steady Chrysoprase
		[22] = { itemID = 27448, [alDif.MIN_DIF] = alDif.Heroic }; --Cloak of the Everliving
		[23] = { itemID = 27451, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of the Darkwalker
		[24] = { itemID = 27450, [alDif.MIN_DIF] = alDif.Heroic }; --Wild Stalker Boots
		[25] = { itemID = 27447, [alDif.MIN_DIF] = alDif.Heroic }; --Bracers of Just Rewards
		[26] = { itemID = 27449, [alDif.MIN_DIF] = alDif.Heroic }; --Blood Knight Defender

	};
	{
		Name = BabbleBoss["Omor the Unscarred"];
		WebID = {17308,"npc"};
		[01] = { itemID = 24090 }; --Bloodstained Ravager Gauntlets
		[02] = { itemID = 24091 }; --Tenacious Defender
		[03] = { itemID = 24073 }; --Garotte-String Necklace
		[04] = { itemID = 24096 }; --Heartblood Prayer Beads
		[05] = { itemID = 24094 }; --Heart Fire Warhammer
		[06] = { itemID = 24069 }; --Crystalfire Staff
		[07] = { itemID = 23886 }; --Omor's Hoof
		[09] = { itemID = 60947, droprate = "1%" }; --Pet Sigil
		[11] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[12] = { itemID = 30593, [alDif.MIN_DIF] = alDif.Heroic }; --Iridescent Fire Opal
		[13] = { itemID = 30594, [alDif.MIN_DIF] = alDif.Heroic }; --Effulgent Chrysoprase
		[14] = { itemID = 30592, [alDif.MIN_DIF] = alDif.Heroic }; --Steady Chrysoprase
		[16] = { itemID = 27465, [alDif.MIN_DIF] = alDif.Heroic }; --Mana-Etched Gloves
		[17] = { itemID = 27466, [alDif.MIN_DIF] = alDif.Heroic }; --Headdress of Alacrity
		[18] = { itemID = 27462, [alDif.MIN_DIF] = alDif.Heroic }; --Crimson Bracers of Gloom
		[19] = { itemID = 27467, [alDif.MIN_DIF] = alDif.Heroic }; --Silent-Strider Kneeboots
		[20] = { itemID = 27478, [alDif.MIN_DIF] = alDif.Heroic }; --Girdle of the Blasted Reaches
		[21] = { itemID = 27539, [alDif.MIN_DIF] = alDif.Heroic }; --Justice Bearer's Pauldrons
		[22] = { itemID = 27906, [alDif.MIN_DIF] = alDif.Heroic }; --Crimsonforge Breastplate
		[23] = { itemID = 27464, [alDif.MIN_DIF] = alDif.Heroic }; --Omor's Unyielding Will
		[24] = { itemID = 27895, [alDif.MIN_DIF] = alDif.Heroic }; --Band of Many Prisms
		[25] = { itemID = 27477, [alDif.MIN_DIF] = alDif.Heroic }; --Faol's Signet of Cleansing
		[26] = { itemID = 27463, [alDif.MIN_DIF] = alDif.Heroic }; --Terror Flame Dagger
		[27] = { itemID = 27476, [alDif.MIN_DIF] = alDif.Heroic }; --Truncheon of Five Hells	
	};
	{
		Name = BabbleBoss["Vazruden"];
		WebID = {17537,"npc"};
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Reinforced Fel Iron Chest"] };
		[02] = { itemID = 24150 }; --Mok'Nathal Wildercloak
		[03] = { itemID = 24083 }; --Lifegiver Britches
		[04] = { itemID = 24063 }; --Shifting Sash of Midnight
		[05] = { itemID = 24046 }; --Kilt of Rolling Thunders
		[06] = { itemID = 24064 }; --Ironsole Clompers
		[07] = { itemID = 24045 }; --Band of Renewal
		[08] = { itemID = 24154 }; --Witching Band
		[09] = { itemID = 24151 }; --Mok'Nathal Clan Ring
		[10] = { itemID = 24044 }; --Hellreaver
		[11] = { itemID = 24155 }; --Ursol's Claw
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Vazruden"] };
		[17] = { itemID = 23892 }; --Ominous Letter
		[19] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Nazan"] };
		[20] = { itemID = 23901 }; --Nazan's Head
		[22] = { itemID = 61025, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Vazruden"] .. " (" .. AL["Heroic"] .. ")";
		WebID = {17537,"npc"};
		[01] = { itemID = 29264 }; --Tree-Mender's Belt
		[02] = { itemID = 32077 }; --Wrath Infused Gauntlets
		[03] = { itemID = 29238 }; --Lion's Heart Girdle
		[04] = { itemID = 29346 }; --Feltooth Eviscerator
		[06] = { itemID = 27452 }; --Light Scribe Bands
		[07] = { itemID = 27461 }; --Chestguard of the Prowler
		[08] = { itemID = 27456 }; --Raiments of Nature's Breath
		[09] = { itemID = 27454 }; --Volcanic Pauldrons
		[10] = { itemID = 27458 }; --Oceansong Kilt
		[11] = { itemID = 27455 }; --Irondrake Faceguard
		[12] = { itemID = 27459 }; --Vambraces of Daring
		[13] = { itemID = 27457 }; --Life Bearer's Gauntlets
		[16] = { itemID = 29434 }; --Badge of Justice
		[17] = { itemID = 30593 }; --Iridescent Fire Opal
		[18] = { itemID = 30594 }; --Effulgent Chrysoprase
		[19] = { itemID = 30592 }; --Steady Chrysoprase
		[21] = { itemID = 27453 }; --Averinn's Ring of Slaying
		[22] = { itemID = 27460 }; --Reavers' Ring
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Vazruden"] };
		[25] = { itemID = 23892 }; --Ominous Letter
		[27] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Nazan"] };
		[28] = { itemID = 23901 }; --Nazan's Head
		[30] = { itemID = 61025, droprate = "1%" }; --Pet Sigil
	};
};




-------------------------------------------
---Hellfire Citadel: The Blood Furnace ---
-------------------------------------------

AtlasLoot_Data["HCFurnace"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["The Blood Furnace"];
	DisplayName = BabbleZone["The Blood Furnace"];
	Type = "BCDungeon";
	Map = "HCBloodFurnace";
	{
		Name = BabbleBoss["The Maker"];
		[01] = { itemID = 24388 }; --Girdle of the Gale Storm
		[02] = { itemID = 24387 }; --Ironblade Gauntlets
		[03] = { itemID = 24385 }; --Pendant of Battle-Lust
		[04] = { itemID = 24386 }; --Libram of Saints Departed
		[05] = { itemID = 24384 }; --Diamond-Core Sledgemace
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30601, [alDif.MIN_DIF] = alDif.Heroic }; --Beaming Fire Opal
		[18] = { itemID = 30600, [alDif.MIN_DIF] = alDif.Heroic }; --Fluorescent Tanzanite
		[19] = { itemID = 30602, [alDif.MIN_DIF] = alDif.Heroic }; --Jagged Chrysoprase
		[21] = { itemID = 27485, [alDif.MIN_DIF] = alDif.Heroic }; --Embroidered Cape of Mysteries
		[22] = { itemID = 27488, [alDif.MIN_DIF] = alDif.Heroic }; --Mage-Collar of the Firestorm
		[23] = { itemID = 27483, [alDif.MIN_DIF] = alDif.Heroic }; --Moon-Touched Bands
		[24] = { itemID = 27487, [alDif.MIN_DIF] = alDif.Heroic }; --Bloodlord Legplates
		[25] = { itemID = 27484, [alDif.MIN_DIF] = alDif.Heroic }; --Libram of Avengement
	};
	{
		Name = BabbleBoss["Broggok"];
		[01] = { itemID = 24392 }; --Arcing Bracers
		[02] = { itemID = 24393 }; --Bloody Surgeon's Mitts
		[03] = { itemID = 24391 }; --Kilt of the Night Strider
		[04] = { itemID = 24390 }; --Auslese's Light Channeler
		[05] = { itemID = 24389 }; --Legion Blunderbuss
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30601, [alDif.MIN_DIF] = alDif.Heroic }; --Beaming Fire Opal
		[18] = { itemID = 30600, [alDif.MIN_DIF] = alDif.Heroic }; --Fluorescent Tanzanite
		[19] = { itemID = 30602, [alDif.MIN_DIF] = alDif.Heroic }; --Jagged Chrysoprase
		[21] = { itemID = 27848, [alDif.MIN_DIF] = alDif.Heroic }; --Embroidered Spellpyre Boots
		[22] = { itemID = 27492, [alDif.MIN_DIF] = alDif.Heroic }; --Moonchild Leggings
		[24] = { itemID = 27489, [alDif.MIN_DIF] = alDif.Heroic }; --Virtue Bearer's Vambraces
		[25] = { itemID = 27491, [alDif.MIN_DIF] = alDif.Heroic }; --Signet of Repose
		[26] = { itemID = 27490, [alDif.MIN_DIF] = alDif.Heroic }; --Firebrand Battleaxe
	};
	{
		Name = BabbleBoss["Keli'dan the Breaker"];
		[01] = { itemID = 24397 }; --Raiments of Divine Authority
		[02] = { itemID = 24395 }; --Mindfire Waistband
		[03] = { itemID = 24398 }; --Mantle of the Dusk-Dweller
		[04] = { itemID = 24396 }; --Vest of Vengeance
		[05] = { itemID = 24394 }; --Warsong Howling Axe
		[06] = { itemID = 28264, [alDif.MIN_DIF] = alDif.Heroic }; --Wastewalker Tunic
		[07] = { itemID = 27497, [alDif.MIN_DIF] = alDif.Heroic }; --Doomplate Gauntlets
		[08] = { itemID = 27506, [alDif.MIN_DIF] = alDif.Heroic }; --Robe of Effervescent Light
		[09] = { itemID = 27514, [alDif.MIN_DIF] = alDif.Heroic }; --Leggings of the Unrepentant
		[10] = { itemID = 27522, [alDif.MIN_DIF] = alDif.Heroic }; --World's End Bracers
		[11] = { itemID = 27494, [alDif.MIN_DIF] = alDif.Heroic }; --Emerald Eye Bracer
		[12] = { itemID = 27505, [alDif.MIN_DIF] = alDif.Heroic }; --Ruby Helm of the Just
		[13] = { itemID = 27788, [alDif.MIN_DIF] = alDif.Heroic }; --Bloodsworn Warboots
		[14] = { itemID = 27495, [alDif.MIN_DIF] = alDif.Heroic }; --Soldier's Dog Tags
		[15] = { itemID = 28121, [alDif.MIN_DIF] = alDif.Heroic }; --Icon of Unyielding Courage
		[16] = { itemID = 27512, [alDif.MIN_DIF] = alDif.Heroic }; --The Willbreaker
		[17] = { itemID = 27507, [alDif.MIN_DIF] = alDif.Heroic }; --Adamantine Repeater
		[18] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[19] = { itemID = 30601, [alDif.MIN_DIF] = alDif.Heroic }; --Beaming Fire Opal
		[20] = { itemID = 30600, [alDif.MIN_DIF] = alDif.Heroic }; --Fluorescent Tanzanite
		[21] = { itemID = 30602, [alDif.MIN_DIF] = alDif.Heroic }; --Jagged Chrysoprase
		[22] = { itemID = 32080, [alDif.MIN_DIF] = alDif.Heroic }; --Mantle of Shadowy Embrace
		[23] = { itemID = 29245, [alDif.MIN_DIF] = alDif.Heroic }; --Wave-Crest Striders
		[24] = { itemID = 29239, [alDif.MIN_DIF] = alDif.Heroic }; --Eaglecrest Warboots
		[25] = { itemID = 29347, [alDif.MIN_DIF] = alDif.Heroic }; --Talisman of the Breaker
		[27] = { itemID = 33814, [alDif.MIN_DIF] = alDif.Heroic }; --Keli'dan's Feathered Stave

	};
};

---------------------------------------------
---Hellfire Citadel: The Shattered Halls ---
---------------------------------------------

AtlasLoot_Data["HCShatteredHalls"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["The Shattered Halls"];
	DisplayName = BabbleZone["The Shattered Halls"];
	Type = "BCDungeon";
	Map = "HCTheShatteredHalls";
	{
		Name = BabbleBoss["Grand Warlock Nethekurse"];
		[01] = { itemID = 24312 };
		[03] = { itemID = 27519 }; --Cloak of Malice
		[04] = { itemID = 27517 }; --Bands of Nethekurse
		[05] = { itemID = 27521 }; --Telaari Hunting Girdle
		[06] = { itemID = 27520 }; --Greathelm of the Unbreakable
		[07] = { itemID = 27518 }; --Ivory Idol of the Moongoddess
		[09] = { itemID = 23735 }; --Grand Warlock's Amulet
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 24312, [alDif.MIN_DIF] = alDif.Heroic };
		[18] = { itemID = 30548, [alDif.MIN_DIF] = alDif.Heroic }; --Polished Chrysoprase
		[19] = { itemID = 30547, [alDif.MIN_DIF] = alDif.Heroic }; --Luminous Fire Opal
		[20] = { itemID = 30546, [alDif.MIN_DIF] = alDif.Heroic }; --Sovereign Tanzanite
		[22] = { itemID = 25462, [alDif.MIN_DIF] = alDif.Heroic }; --Tome of Dusk
	};
	{
		Name = BabbleBoss["Blood Guard Porung"] .. " (" .. AL["Heroic"] .. ")";
		[01] = { itemID = 29434 }; --Badge of Justice
		[02] = { itemID = 30548 }; --Polished Chrysoprase
		[03] = { itemID = 30547 }; --Luminous Fire Opal
		[04] = { itemID = 30546 }; --Sovereign Tanzanite
		[06] = { itemID = 30709 }; --Pantaloons of Flaming Wrath
		[07] = { itemID = 30707 }; --Nimble-foot Treads
		[08] = { itemID = 30708 }; --Belt of Flowing Thought
		[09] = { itemID = 30705 }; --Spaulders of Slaughter
		[10] = { itemID = 30710 }; --Blood Guard's Necklace of Ferocity
	};
	{
		Name = BabbleBoss["Warbringer O'mrogg"];
		[01] = { itemID = 27802 }; --Tidefury Shoulderguards
		[03] = { itemID = 27525 }; --Jeweled Boots of Sanctification
		[04] = { itemID = 27868 }; --Runesong Dagger
		[05] = { itemID = 27524 }; --Firemaul of Destruction
		[06] = { itemID = 27526 }; --Skyfire Hawk-Bow
		[08] = { itemID = 30829 }; --Tear of the Earthmother
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30548, [alDif.MIN_DIF] = alDif.Heroic }; --Polished Chrysoprase
		[18] = { itemID = 30547, [alDif.MIN_DIF] = alDif.Heroic }; --Luminous Fire Opal
		[19] = { itemID = 30546, [alDif.MIN_DIF] = alDif.Heroic }; --Sovereign Tanzanite
	};
	{
		Name = BabbleBoss["Warchief Kargath Bladefist"];
		[01] = { itemID = 27536 }; --Hallowed Handwraps
		[02] = { itemID = 27537 }; --Gloves of Oblivion
		[03] = { itemID = 27531 }; --Wastewalker Gloves
		[04] = { itemID = 27474 }; --Beast Lord Handguards
		[05] = { itemID = 27528 }; --Gauntlets of Desolation
		[06] = { itemID = 27535 }; --Gauntlets of the Righteous
		[08] = { itemID = 27527 }; --Greaves of the Shatterer
		[09] = { itemID = 27529 }; --Figurine of the Colossus
		[10] = { itemID = 27534 }; --Hortus' Seal of Brilliance
		[11] = { itemID = 27533 }; --Demonblood Eviscerator
		[12] = { itemID = 27538 }; --Lightsworn Hammer
		[13] = { itemID = 27540 }; --Nexus Torch
		[15] = { itemID = 23723 }; --Warchief Kargath's Fist
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30548, [alDif.MIN_DIF] = alDif.Heroic }; --Polished Chrysoprase
		[18] = { itemID = 30547, [alDif.MIN_DIF] = alDif.Heroic }; --Luminous Fire Opal
		[19] = { itemID = 30546, [alDif.MIN_DIF] = alDif.Heroic }; --Sovereign Tanzanite
		[21] = { itemID = 29255, [alDif.MIN_DIF] = alDif.Heroic }; --Bands of Rarefied Magic
		[22] = { itemID = 29263, [alDif.MIN_DIF] = alDif.Heroic }; --Forestheart Bracers
		[23] = { itemID = 29254, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of the Righteous Path
		[24] = { itemID = 29348, [alDif.MIN_DIF] = alDif.Heroic }; --The Bladefist
		[26] = { itemID = 33815, [alDif.MIN_DIF] = alDif.Heroic }; --Bladefist's Seal
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 22554 }; --Formula: Enchant 2H Weapon - Savagery
		[03] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Shattered Hand Executioner"] };
		[04] = { itemID = 31716 }; --Unused Axe of the Executioner
	};
};
--------------------------------------------
---Hellfire Citadel: Magtheridon's Lair ---
--------------------------------------------

AtlasLoot_Data["HCMagtheridon"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["Magtheridon's Lair"];
	DisplayName = BabbleZone["Magtheridon's Lair"];
	Type = "BCRaid";
	Map = "HCMagtheridonsLair";
	{
		Name = BabbleBoss["Magtheridon"];
		WebID = {17257,"npc"};
		[01] = { itemID = 28777 }; --Cloak of the Pit Stalker
		[02] = { itemID = 28780 }; --Soul-Eater's Handwraps
		[03] = { itemID = 28776 }; --Liar's Tongue Gloves
		[04] = { itemID = 28778 }; --Terror Pit Girdle
		[05] = { itemID = 28775 }; --Thundering Greathelm
		[06] = { itemID = 28779 }; --Girdle of the Endless Pit
		[07] = { itemID = 12085 }; --Bracers of Demonic Prowess
		[08] = { itemID = 28789 }; --Eye of Magtheridon
		[09] = { itemID = 11687 }; --Ring of Hellfire Might
		[10] = { itemID = 28781 }; --Karaborian Talisman
		[12] = { itemID = 28774 }; --Glaive of the Pit
		[13] = { itemID = 28782 }; --Crystalheart Pulse-Staff
		[14] = { itemID = 29458 }; --Aegis of the Vindicator
		[15] = { itemID = 28783 }; --Eredar Wand of Obliteration
		[16] = { itemID = 29753, lootTable = {"T4CHEST","Token"} }; --Chestguard of the Fallen Defender
		[17] = { itemID = 34845 }; --Pit Lord's Satchel
		[18] = { itemID = 34846 }; --Black Sack of Gems
		[20] = { itemID = 32385, contentsPreview = {
			{28791}, --Ring of the Recalcitrant
			{28790}, --Naaru Lightwarden's Band
			{28793}, --Band of Crimson Fury
			{28792}, --A'dal's Signet of Defense
		} }; --Magtheridon's Head
		[22] = { itemID = 60945, droprate = "1%" }; --Pet Sigil
		[24] = { itemID = 428775, [alDif.MIN_DIF] = alDif.Ascended }; --Bor -o G'urth, the Hand of Death
		[25] = { itemID = 428776, [alDif.MIN_DIF] = alDif.Ascended }; --Lebed -o G'urth, the Finger of Death
	};
};
----------------
---Karazhan ---
----------------

AtlasLoot_Data["Karazhan"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Karazhan";
	Type = "BCRaid";
	Map = "Karazhan";
	Loadfirst = 3;
	{
		Name = "Charred Bone Fragment (" .. AL["Quest Item"] .. ")";
		[01] = { itemID = 24152, icon = "INV_Misc_Bone_10" }; --Charred Bone Fragment
	};
	{
		Name = "Servant's Quarter Animal Bosses";
		[01] = { icon = "Ability_Hunter_Pet_Spider", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Hyakiss the Lurker"], "=q5=" .. AL["Spider"] };
		[02] = { itemID = 30675 }; --Lurker's Cord
		[03] = { itemID = 30676 }; --Lurker's Grasp
		[04] = { itemID = 30677 }; --Lurker's Belt
		[05] = { itemID = 30678 }; --Lurker's Girdle
		[07] = { icon = "Ability_Hunter_Pet_Hyena", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Rokad the Ravager"], "=q5=" .. AL["Darkhound"] };
		[08] = { itemID = 30684 }; --Ravager's Cuffs
		[09] = { itemID = 30685 }; --Ravager's Wrist-Wraps
		[10] = { itemID = 30686 }; --Ravager's Bands
		[11] = { itemID = 30687 }; --Ravager's Bracers
		[16] = { icon = "Ability_Hunter_Pet_Bat", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Shadikith the Glider"], "=q5=" .. AL["Bat"] };
		[17] = { itemID = 30680 }; --Glider's Foot-Wraps
		[18] = { itemID = 30681 }; --Glider's Boots
		[19] = { itemID = 30682 }; --Glider's Sabatons
		[20] = { itemID = 30683 }; --Glider's Greaves
	};
	{
		Name = BabbleBoss["Attumen the Huntsman"];
		WebID = {16152,"npc"};
		[01] = { itemID = 28477 }; --Harbinger Bands
		[02] = { itemID = 28507 }; --Handwraps of Flowing Thought
		[03] = { itemID = 28508 }; --Gloves of Saintly Blessings
		[04] = { itemID = 28453 }; --Bracers of the AtlasLoot.Colors.WHITE Stag
		[05] = { itemID = 28506 }; --Gloves of Dexterous Manipulation
		[06] = { itemID = 28503 }; --Whirlwind Bracers
		[07] = { itemID = 28454 }; --Stalker's War Bands
		[08] = { itemID = 28502 }; --Vambraces of Courage
		[09] = { itemID = 28505 }; --Gauntlets of Renewed Hope
		[11] = { itemID = 28509 }; --Worgen Claw Necklace
		[12] = { itemID = 11249 }; --Ring of Eternal Flame
		[13] = { itemID = 28510 }; --Spectral Band of Innervation
		[14] = { itemID = 28504 }; --Steelhawk Crossbow
		[16] = { itemID = 229739 }; --Tome of Untold Secrets
		[18] = { itemID = 30480 }; --Fiery Warhorse's Reins
		[20] = { itemID = 23809 }; --Schematic: Stabilized Eternium Scope
		[22] = { itemID = 60198, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Moroes"];
		WebID = {15687,"npc"};
		[01] = { itemID = 28529 }; --Royal Cloak of Arathi Kings
		[02] = { itemID = 28570 }; --Shadow-Cloak of Dalaran
		[03] = { itemID = 28565 }; --Nethershard Girdle
		[04] = { itemID = 28545 }; --Edgewalker Longboots
		[05] = { itemID = 28567 }; --Belt of Gale Force
		[06] = { itemID = 28566 }; --Crimson Girdle of the Indomitable
		[07] = { itemID = 28569 }; --Boots of Valiance
		[16] = { itemID = 28530 }; --Brooch of Unquenchable Fury
		[17] = { itemID = 28528 }; --Moroes' Lucky Pocket Watch
		[18] = { itemID = 28525 }; --Signet of Unshakable Faith
		[19] = { itemID = 28568 }; --Idol of the Avian Heart
		[20] = { itemID = 28524 }; --Emerald Ripper
		[22] = { itemID = 229739 }; --Tome of Untold Secrets
		[24] = { itemID = 22559, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Mongoose
		[26] = { itemID = 60166, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = "Keanna's Log (" .. AL["Quest Item"] .. ")";
		[01] = { itemID = 24492 }; --Keanna's Log
	};
	{
		Name = BabbleBoss["Maiden of Virtue"];
		WebID = {16457,"npc"};
		[01] = { itemID = 28511 }; --Bands of Indwelling
		[02] = { itemID = 28515 }; --Bands of Nefarious Deeds
		[03] = { itemID = 28517 }; --Boots of Foretelling
		[04] = { itemID = 28514 }; --Bracers of Maliciousness
		[05] = { itemID = 28521 }; --Mitts of the Treemender
		[06] = { itemID = 28520 }; --Gloves of Centering
		[07] = { itemID = 28519 }; --Gloves of Quickening
		[08] = { itemID = 28512 }; --Bracers of Justice
		[09] = { itemID = 28518 }; --Iron Gauntlets of the Maiden
		[10] = { itemID = 11652 }; --Boots of Sinister Grace
		[16] = { itemID = 28516 }; --Barbed Choker of Discipline
		[17] = { itemID = 28523 }; --Totem of Healing Rains
		[18] = { itemID = 28522 }; --Shard of the Virtuous
		[20] = { itemID = 229739 }; --Tome of Untold Secrets
		[22] = { itemID = 816253, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Faith
	};
	{
		Name = "Opera Event";
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["The Crone"], "=q5=" .. AL["Wizard of Oz"] };
		[02] = { itemID = 28586 }; --Wicked Witch's Hat
		[03] = { itemID = 28585 }; --Ruby Slippers
		[04] = { itemID = 28587 }; --Legacy
		[05] = { itemID = 28588 }; --AtlasLoot.Colors.BLUE Diamond Witchwand
		[06] = { itemID = 61590 }; --Sigil
		[08] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Romulo & Julianne"], "=q5=" .. AL["Romulo & Julianne"] };
		[09] = { itemID = 28578 }; --Masquerade Gown
		[10] = { itemID = 28579 }; --Romulo's Poison Vial
		[11] = { itemID = 28572 }; --Blade of the Unrequited
		[12] = { itemID = 28573 }; --Despair
		[13] = { itemID = 61022 }; --Sigil
		[14] = { itemID = 60992 }; --Sigil
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["The Big Bad Wolf"], "=q5=" .. AL["AtlasLoot.Colors.RED Riding Hood"] };
		[17] = { itemID = 28582 }; --AtlasLoot.Colors.RED Riding Hood's Cloak
		[18] = { itemID = 28583 }; --Big Bad Wolf's Head
		[19] = { itemID = 28584 }; --Big Bad Wolf's Paw
		[20] = { itemID = 28581 }; --Wolfslayer Sniper Rifle
		[21] = { itemID = 60991 }; --Sigil
		[23] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Shared Drops"] };
		[24] = { itemID = 28594 }; --Trial-FireTrousers
		[25] = { itemID = 28591 }; --Earthsoul Leggings
		[26] = { itemID = 28589 }; --Beastmaw Pauldrons
		[27] = { itemID = 28593 }; --Eternium Greathelm
		[28] = { itemID = 28590 }; --Ribbon of Sacrifice
		[29] = { itemID = 28592 }; --Libram of Souls Redeemed
	};
	{
		Name = BabbleBoss["Nightbane"];
		WebID = {17225,"npc"};
		[01] = { itemID = 28602 }; --Robe of the Elder Scribes
		[02] = { itemID = 28600 }; --Stonebough Jerkin
		[03] = { itemID = 28601 }; --Chestguard of the Conniver
		[04] = { itemID = 28599 }; --Scaled Breastplate of Carnage
		[05] = { itemID = 28610 }; --Ferocious Swift-Kickers
		[06] = { itemID = 28597 }; --Panzar'Thar Breastplate
		[07] = { itemID = 28608 }; --Ironstriders of Urgency
		[09] = { itemID = 31751 }; --Blazing Signet
		[10] = { itemID = 24139 }; --Faint Arcane Essence
		[16] = { itemID = 28609 }; --Emberspur Talisman
		[17] = { itemID = 28603 }; --Talisman of Nightbane
		[18] = { itemID = 28604 }; --Nightstaff of the Everliving
		[19] = { itemID = 28611 }; --Dragonheart Flameshield
		[20] = { itemID = 28606 }; --Shield of Impenetrable Darkness
		[21] = { itemID = 11637 }; --Covenant of Steel and Flame
		[22] = { itemID = 12087 }; --Nightpiercer
		[24] = { itemID = 229739 }; --Tome of Untold Secrets
	};
	{
		Name = BabbleBoss["The Curator"];
		WebID = {15691,"npc"};
		[01] = { itemID = 28612 }; --Pauldrons of the Solace-Giver
		[02] = { itemID = 28647 }; --Forest Wind Shoulderpads
		[03] = { itemID = 28631 }; --Dragon-Quake Shoulderguards
		[04] = { itemID = 28621 }; --Wrynn Dynasty Greaves
		[05] = { itemID = 28649 }; --Garona's Signet Ring
		[06] = { itemID = 28633 }; --Staff of Infinite Mysteries
		[07] = { itemID = 11251 }; --Stormfury Pendant
		[16] = { itemID = 29758, lootTable = {"T4HAND","Token"} }; --Gloves of the Fallen Defender
		[18] = { itemID = 229739 }; --Tome of Untold Secrets
		[20] = { itemID = 60170 }; --Sigil of The Curator
	};
	{
		Name = BabbleBoss["Terestian Illhoof"];
		WebID = {15688,"npc"};
		[01] = { itemID = 28660 }; --Gilded Thorium Cloak
		[02] = { itemID = 28653 }; --Shadowvine Cloak of Infusion
		[03] = { itemID = 28652 }; --Cincture of Will
		[04] = { itemID = 28654 }; --Malefic Girdle
		[05] = { itemID = 28655 }; --Cord of Nature's Sustenance
		[06] = { itemID = 28656 }; --Girdle of the Prowler
		[07] = { itemID = 28662 }; --Breastplate of the Lightbinder
		[09] = { itemID = 28661 }; --Mender's Heart-Ring
		[10] = { itemID = 28785 }; --The Lightning Capacitor
		[11] = { itemID = 28657 }; --Fool's Bane
		[12] = { itemID = 28658 }; --Terestian's Stranglestaff
		[13] = { itemID = 28659 }; --Xavian Stiletto
		[14] = { itemID = 12089 }; --Sanguine Spellfang
		[16] = { itemID = 229739 }; --Tome of Untold Secrets
		[18] = { itemID = 22561, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Soulfrost
		[20] = { itemID = 60167 }; --Sigil of Terestain Illhoof
	};
	{
		Name = BabbleBoss["Shade of Aran"];
		WebID = {16524,"npc"};
		[01] = { itemID = 28672 }; --Drape of the Dark Reavers
		[02] = { itemID = 28726 }; --Mantle of the Mind Flayer
		[03] = { itemID = 28670 }; --Boots of the Infernal Coven
		[04] = { itemID = 28663 }; --Boots of the Incorrupt
		[05] = { itemID = 28669 }; --Rapscallion Boots
		[06] = { itemID = 28671 }; --Steelspine Faceguard
		[07] = { itemID = 28666 }; --Pauldrons of the Justice-Seeker
		[09] = { itemID = 28674 }; --Saberclaw Talisman
		[10] = { itemID = 28675 }; --Shermanar Great-Ring
		[11] = { itemID = 28727 }; --Pendant of the Violet Eye
		[12] = { itemID = 28728 }; --Aran's Soothing Sapphire
		[13] = { itemID = 28673 }; --Tirisfal Wand of Ascendancy
		[14] = { itemID = 12084 }; --Drape of the Stormbreaker
		[16] = { itemID = 23933 }; --Medivh's Journal
		[18] = { itemID = 229739 }; --Tome of Untold Secrets
		[20] = { itemID = 22560, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Sunfire
		[22] = { itemID = 60372, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Netherspite"];
		WebID = {15689,"npc"};
		[01] = { itemID = 28744 }; --Uni-Mind Headdress
		[02] = { itemID = 28742 }; --Pantaloons of Repentence
		[03] = { itemID = 28732 }; --Cowl of Defiance
		[04] = { itemID = 28741 }; --Skulker's Greaves
		[05] = { itemID = 28735 }; --Earthblood Chestguard
		[06] = { itemID = 28740 }; --Rip-Flayer Leggings
		[07] = { itemID = 28743 }; --Mantle of Abrahmis
		[08] = { itemID = 28733 }; --Girdle of Truth
		[09] = { itemID = 11651 }; --Belt of Whirling Shadows
		[10] = { itemID = 11650 }; --Girdle of Unbound Forces
		[16] = { itemID = 28731 }; --Shining Chain of the Afterworld
		[17] = { itemID = 28730 }; --Mithril Band of the Unscarred
		[18] = { itemID = 28734 }; --Jewel of Infinite Possibilities
		[19] = { itemID = 28729 }; --Spiteblade
		[21] = { itemID = 229739 }; --Tome of Untold Secrets
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
	};
	{
		Name = BabbleBoss["Chess Event"];
		WebID = {185119,"object"};
		[01] = { itemID = 28756 }; --Headdress of the High Potentate
		[02] = { itemID = 28755 }; --Bladed Shoulderpads of the Merciless
		[03] = { itemID = 28750 }; --Girdle of Treachery
		[04] = { itemID = 28752 }; --Forestlord Striders
		[05] = { itemID = 28751 }; --Heart-Flame Leggings
		[06] = { itemID = 28746 }; --Fiend Slayer Boots
		[07] = { itemID = 28748 }; --Legplates of the Innocent
		[08] = { itemID = 28747 }; --Battlescar Boots
		[09] = { itemID = 11640 }; --Bindings of Mystic Might
		[16] = { itemID = 28745 }; --Mithril Chain of Heroism
		[17] = { itemID = 28753 }; --Ring of Recurrence
		[18] = { itemID = 11797 }; --Ring of Shadowed Precision
		[19] = { itemID = 28749 }; --King's Defender
		[20] = { itemID = 28754 }; --Triptych Shield of the Ancients
	};
	{
		Name = BabbleBoss["Prince Malchezaar"];
		WebID = {15690,"npc"};
		[01] = { itemID = 28765 }; --Stainless Cloak of the Pure Hearted
		[02] = { itemID = 28766 }; --Ruby Drape of the Mysticant
		[03] = { itemID = 28764 }; --Farstrider Wildercloak
		[04] = { itemID = 28762 }; --Adornment of Stolen Souls
		[05] = { itemID = 28763 }; --Jade Ring of the Everliving
		[06] = { itemID = 28757 }; --Ring of a Thousand Marks
		[07] = { itemID = 11638 }; --Darkened Boots of the Nathrezim
		[08] = { itemID = 11636 }; --Talisman of Disonnance
		[16] = { itemID = 28770 }; --Nathrezim Mindblade
		[17] = { itemID = 28768 }; --Malchazeen
		[18] = { itemID = 28767 }; --The Decapitator
		[19] = { itemID = 28773 }; --Gorehowl
		[20] = { itemID = 28771 }; --Light's Justice
		[21] = { itemID = 28772 }; --Sunfury Bow of the Phoenix
		[22] = { itemID = 12123 }; --Razorwind
		[24] = { itemID = 29761, lootTable = {"T4HEAD","Token"} }; --Helm of the Fallen Defender
		[26] = { itemID = 229739 }; --Tome of Untold Secrets
		[28] = { itemID = 138255 }; --Summoner's Stone: Prince Malchezaar
		[29] = { itemID = 60169, droprate = "1%" }; --Pet Sigil
		[30] = { itemID = 499438, [alDif.MIN_DIF] = alDif.Heroic }; --Smoldering Emberwyrm
	};
	{ --Trash Mobs
		Name = AL["Trash Mobs"];
		[01] = { itemID = 30642 }; --Drape of the Righteous
		[02] = { itemID = 30668 }; --Grasp of the Dead
		[03] = { itemID = 30673 }; --Inferno Waist Cord
		[04] = { itemID = 30644 }; --Grips of the Deftness
		[05] = { itemID = 30674 }; --Zierhut's Lost Treads
		[06] = { itemID = 30643 }; --Belt of the Tracker
		[07] = { itemID = 30641 }; --Boots of Elusion
		[09] = { itemID = 23857 }; --Legacy of the Mountain King
		[10] = { itemID = 23864 }; --Torment of the Worgen
		[11] = { itemID = 23862 }; --Redemption of the Fallen
		[12] = { itemID = 23865 }; --Wrath of the Titans
		[14] = { itemID = 21882 }; --Soul Essence
		[16] = { itemID = 30666 }; --Ritssyn's Lost Pendant
		[17] = { itemID = 30667 }; --Ring of Unrelenting Storms
		[19] = { itemID = 21903 }; --Pattern: Soulcloth Shoulders
		[20] = { itemID = 21904 }; --Pattern: Soulcloth Vest 
		[21] = { itemID = 22545 }; --Formula: Enchant Boots - Surefooted
	};
};
----------------------------------------
---Sunwell Isle: Magister's Terrace ---
----------------------------------------

AtlasLoot_Data["MagistersTerrace"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Sunwell Isle"] .. ": " .. BabbleZone["Magisters' Terrace"];
	DisplayName = BabbleZone["Magisters' Terrace"];
	Type = "BCDungeon";
	Map = "MagistersTerrace";
	{
		Name = BabbleBoss["Selin Fireheart"];
		[01] = { itemID = 34702 }; --Cloak of Swift Mending
		[02] = { itemID = 34697 }; --Bindings of Raging Fire
		[03] = { itemID = 34701 }; --Leggings of the Betrayed
		[04] = { itemID = 34698 }; --Bracers of the Forest Stalker
		[05] = { itemID = 34700 }; --Gauntlets of Divine Blessings
		[06] = { itemID = 34699 }; --Sun-forged Cleaver
		[07] = { itemID = 35275 }; --Orb of the Sin'dorei
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 34602, [alDif.MIN_DIF] = alDif.Heroic }; --Eversong Cuffs
		[18] = { itemID = 34601, [alDif.MIN_DIF] = alDif.Heroic }; --Shoulderplates of Everlasting Pain
		[19] = { itemID = 34604, [alDif.MIN_DIF] = alDif.Heroic }; --Jaded Crystal Dagger
		[20] = { itemID = 34603, [alDif.MIN_DIF] = alDif.Heroic }; --Distracting Blades
	};
	{
		Name = BabbleBoss["Vexallus"];
		[01] = { itemID = 34708 }; --Cloak of the Coming Night
		[02] = { itemID = 34705 }; --Bracers of Divine Infusion
		[03] = { itemID = 34707 }; --Boots of Resuscitation
		[04] = { itemID = 34704 }; --Band of Arcane Alacrity
		[05] = { itemID = 34706 }; --Band of Determination
		[06] = { itemID = 34703 }; --Latro's Dancing Blade
		[08] = { itemID = 435275 }; --Orb of the Sin'dorei
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 34607, [alDif.MIN_DIF] = alDif.Heroic }; --Fel-tinged Mantle
		[18] = { itemID = 34605, [alDif.MIN_DIF] = alDif.Heroic }; --Breastplate of Fierce Survival
		[19] = { itemID = 34606, [alDif.MIN_DIF] = alDif.Heroic }; --Edge of Oppression
		[20] = { itemID = 34608, [alDif.MIN_DIF] = alDif.Heroic }; --Rod of the Blazing Light
	};
	{
		Name = BabbleBoss["Priestess Delrissa"];
		[01] = { itemID = 34792 }; --Cloak of the Betrayed
		[02] = { itemID = 34788 }; --Duskhallow Mantle
		[03] = { itemID = 34791 }; --Gauntlets of the Tranquil Waves
		[04] = { itemID = 34789 }; --Bracers of Slaughter
		[05] = { itemID = 34790 }; --Battle-mace of the High Priestess
		[06] = { itemID = 34783 }; --Nightstrike
		[08] = { itemID = 35275 }; --Orb of the Sin'dorei
		[10] = { itemID = 35756, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Cloak - Steelweave
		[17] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[18] = { itemID = 34473, [alDif.MIN_DIF] = alDif.Heroic }; --Commendation of Kael'thas
		[19] = { itemID = 34472, [alDif.MIN_DIF] = alDif.Heroic }; --Shard of Contempt
		[20] = { itemID = 34470, [alDif.MIN_DIF] = alDif.Heroic }; --Timbal's Focusing Crystal
		[21] = { itemID = 34471, [alDif.MIN_DIF] = alDif.Heroic }; --Vial of the Sunwell
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"];
		[01] = { itemID = 34810 }; --Cloak of Blade Turning
		[02] = { itemID = 34808 }; --Gloves of Arcane Acuity
		[03] = { itemID = 34809 }; --Sunrage Treads
		[04] = { itemID = 34799 }; --Hauberk of the War Bringer
		[05] = { itemID = 34807 }; --Sunstrider Warboots
		[06] = { itemID = 34625 }; --Kharmaa's Ring of Fate
		[07] = { itemID = 34793 }; --Cord of Reconstruction
		[08] = { itemID = 34796 }; --Robes of Summer Flame
		[09] = { itemID = 34795 }; --Helm of Sanctification
		[10] = { itemID = 34798 }; --Band of Celerity
		[11] = { itemID = 34794 }; --Axe of Shattered Dreams
		[12] = { itemID = 34797 }; --Sun-infused Focus Staff
		[14] = { itemID = 34157 }; --Head of Kael'thas	
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 34610, [alDif.MIN_DIF] = alDif.Heroic }; --Scarlet Sin'dorei Robes
		[18] = { itemID = 34613, [alDif.MIN_DIF] = alDif.Heroic }; --Shoulderpads of the Silvermoon Retainer
		[19] = { itemID = 34614, [alDif.MIN_DIF] = alDif.Heroic }; --Tunic of the Ranger Lord
		[20] = { itemID = 34615, [alDif.MIN_DIF] = alDif.Heroic }; --Netherforce Chestplate
		[21] = { itemID = 34612, [alDif.MIN_DIF] = alDif.Heroic }; --Greaves of the Penitent Knight
		[22] = { itemID = 34609, [alDif.MIN_DIF] = alDif.Heroic }; --Quickening Blade of the Prince
		[23] = { itemID = 34616, [alDif.MIN_DIF] = alDif.Heroic }; --Breeching Comet
		[24] = { itemID = 34611, [alDif.MIN_DIF] = alDif.Heroic }; --Cudgel of Consecration
		[26] = { itemID = 35513, [alDif.MIN_DIF] = alDif.Heroic  }; --Swift White Hawkstrider
		[27] = { itemID = 34160 }; --The Signet Ring of Prince Kael'thas
		[28] = { itemID = 35504 }; --Phoenix Hatchling
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 35516 }; --Sun Touched Satchel
	};
};

AtlasLoot_Data["KarazhanCryptsTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["The Karazhan Crypts"];
	Type = "BCkarazhanCrypts";
	Index = 5;
	--Map = "Gnomeregan";
	{
		Name = AL["Cynfael"];
		WebID = {254401,"npc"};
		[01] = { itemID = 255169 }; --Twinglaive of the Vampire Council
		[02] = { itemID = 255212 }; --Twinglaive of Eternal Slumber
		[03] = { itemID = 259322 }; --Purified Vitae Chalice
		[04] = { itemID = 259365 }; --Funeral Trousers
		[05] = { itemID = 259655 }; --Tombstone Cover
		[06] = { itemID = 259741 }; --Deathsworn Spaulders
		[16] = { itemID = 254068 }; --Sigil of Cynfael
	};
	{
		Name = AL["Dryn Miel <The Second Eidolon>"];
		WebID = {254413,"npc"};
		[01] = { itemID = 255677 }; --Sorrow of the Eclipse
		[02] = { itemID = 255720 }; --Cryptsteel Maul
		[03] = { itemID = 255809 }; --Dakrya, Hand of the Second Eidolon
		[04] = { itemID = 257092 }; --Mourner's Cloak
		[05] = { itemID = 258412 }; --Remembrance of Aegwynn
		[06] = { itemID = 258836 }; --Missing Promise
		[07] = { itemID = 259537 }; --Niko's Amulet
		[08] = { itemID = 259698 }; --Funeral Mantle
		[09] = { itemID = 259827 }; --Soulsteel Shoulderguards
		[10] = { itemID = 259870 }; --Blossom of Sorrow
		[11] = { itemID = 228836 }; --Soul Cage Reliquary
		[16] = { itemID = 254077, contentsPreview = {{1414603}, {1414604}, {1414605}, {1414606}} }; --Forgotten Core
		[18] = { itemID = 254067 }; --Sigil of Dryn Miel
		[20] = { itemID = 1179133 }; --Reins of the Mawsworn Charger

	};
	{
		Name = AL["Kurgoth Doomreaver"];
		WebID = {254406,"npc"};
		[01] = { itemID = 255917 }; --Forgiveness
		[02] = { itemID = 257135 }; --Drape of the Horse
		[03] = { itemID = 259494 }; --Soulsteel Legplates
		[04] = { itemID = 259580 }; --Forgotten Aegis of Kings
		[05] = { itemID = 259913 }; --Concentrated DeathRecap_GetEvents
		[16] = { itemID = 254069 }; --Sigil of Kurgoth Doomreaver
	};
	{
		Name = AL["The Judgement of Sinners"];
		WebID = {254405,"npc"};
		[01] = { itemID = 255301 }; --Ghoul Spine Cleaver
		[02] = { itemID = 255373 }; --Conduit of Sinners
		[03] = { itemID = 255509 }; --Spinesplinter Arbalest
		[04] = { itemID = 259408 }; --Deathsworn Pants
		[05] = { itemID = 259784 }; --Bonelink Mantle
		[16] = { itemID = 254070 }; --Sigil of Sinners
	};
	{
		Name = AL["Takan Velor <The Hero of Deadwind>"];
		WebID = {654564,"npc"};
		[01] = { itemID = 260936 }; --Soulfire Torch
		[02] = { itemID = 259966 }; --Funeral Handwraps
		[03] = { itemID = 260009 }; --Deathsworn Handguards
		[04] = { itemID = 260052 }; --Bonelink Grasps
		[05] = { itemID = 260095 }; --Soulsteel Gauntlets
	};
	{
		Name = AL["Captain Taveir (Rare Spawn)"];
		WebID = {254495,"npc"};
		[01] = { itemID = 257178 }; -- Funeral Treads
		[02] = { itemID = 257221 }; -- Deathsworn Boots
		[03] = { itemID = 257673 }; -- Bonelink Greaves
		[04] = { itemID = 257716 }; -- Soulsteel Sabatons
		[16] = { itemID = 254080 }; -- Sigil of Captain Taveir
	};
	{
		Name = AL["Kelivex Autumnvale (Rare Spawn)"];
		WebID = {254493,"npc"};
		[01] = { itemID = 257178 }; -- Funeral Treads
		[02] = { itemID = 257221 }; -- Deathsworn Boots
		[03] = { itemID = 257673 }; -- Bonelink Greaves
		[04] = { itemID = 257716 }; -- Soulsteel Sabatons
		[16] = { itemID = 254078 }; -- Sigil of Kelivex Autumnvale
	};
};

--------------------------------------------
---Blackrock Mountain: Blackrock Caverns ---
--------------------------------------------

AtlasLoot_Data["BlackrockCavernsTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Blackrock Caverns"];
	Type = "BCDungeon";
	--Map = "BlackrockDepths";
	{
		Name = AL["Ascendant Lord Obsidius"];
		WebID = {39705,"npc"};
		[01] = { itemID = 252075 }; --Amber Messenger
		[02] = { itemID = 252711 }; --Witching Hourglass
		[03] = { itemID = 252771 }; --Crepuscular Shield
		[04] = { itemID = 251946 }; --Raz's Pauldrons
		[05] = { itemID = 251989 }; --Twitching Shadows
		[06] = { itemID = 252032 }; --Carrier Wave Pendant
		[07] = { itemID = 252118 }; --Clutches of Dying Light
		[08] = { itemID = 252161 }; --Willowy Crown
		[09] = { itemID = 252615 }; --Kyrstel Mantle
		[16] = { itemID = 6011 }; --Recipe: Flask of Mighty Power
	};
	{
		Name = AL["Beauty"];
		WebID = {39700,"npc"};
		[01] = { itemID = 250876 }; --Beauty's Favorite Bone
		[02] = { itemID = 250663 }; --Beauty's Chew Toy
		[03] = { itemID = 250706 }; --Beauty's Plate
		[04] = { itemID = 250749 }; --Beauty's Silken Ribbon
		[05] = { itemID = 250833 }; --Kibble
	};
	{
		Name = AL["Corla, Herald of Twilight"];
		WebID = {39679,"npc"};
		[01] = { itemID = 247779 }; --Grace of the Herald
		[02] = { itemID = 247827 }; --Corla's Baton
		[03] = { itemID = 46418 }; --Renouncer's Cowl
		[04] = { itemID = 46461 }; --Armbands of Change
		[05] = { itemID = 247736 }; --Signet of Transformation
	};
	{
		Name = AL["Karsh Steelbender <Twilight Armorer>"];
		WebID = {39698,"npc"};
		[01] = { itemID = 250620 }; --Steelbender's Masterpiece
		[02] = { itemID = 247936 }; --Bracers of Cooled Anger
		[03] = { itemID = 249391 }; --Heat Wave Leggings
		[04] = { itemID = 250121 }; --Burned Gatherings
		[05] = { itemID = 250212 }; --Quicksilver Amulet
		[16] = { itemID = 1180884 }; --Draconic Warhorn: Karsh Steelbender
	};
	{
		Name = AL["Rom'ogg Bonecrusher"];
		WebID = {39665,"npc"};
		[01] = { itemID = 251860 }; --Torturer's Mercy
		[02] = { itemID = 251903 }; --Shield of the Iron Maiden
		[03] = { itemID = 251086 }; --Inquisition Robes
		[04] = { itemID = 251774 }; --Manacles of Pain
		[05] = { itemID = 251817 }; --Skullcracker Ring
	};
};

AtlasLoot_Data["FrozenReachTBC"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["Frozen Reach"];
	Type = "ManastormTBC";
	{
		Name = AL["Frozen Reach"];
		WebID ={1298888,"item"};
		[01] = { itemID = 1529392 }; --Frigid Bow of the Bonded Souls
		[02] = { itemID = 1529391 }; --Reclaimed Blade of the Frozen Sepulcher
		[03] = { itemID = 1529390 }; --Arktos' Resillience
		[04] = { itemID = 1529389 }; --Call of the Sepulcher
		[05] = { itemID = 1529388 }; --Frozen Vengeance
		[06] = { itemID = 1529387 }; --Frozen Forgiveness
		[07] = { itemID = 1529386 }; --Alva's Kinship Ring
		[08] = { itemID = 1529385 }; --Signet of Arktos
		[09] = { itemID = 1529384 }; --Ring of Bonded Souls
		[10] = { itemID = 1529383 }; --Ring of the Frozen Sepulcher
		[11] = { itemID = 1529382 }; --Alva's Gift
		[12] = { itemID = 1529381 }; --Beartooth Pendant
		[13] = { itemID = 1529380 }; --Necklace of Frozen Reach
		[14] = { itemID = 1529379 }; --Amulet of the Bonded Souls
		[16] = { itemID = 1519393 }; --Beastmaster's Whistle: Arktos
		[17] = { itemID = 49095 }; --Incarnation: Arktos
		[18] = { itemID = 49093 }; --Arktos
	}
}
-------------------------------------
---Sunwell Isle: Sunwell Plateau ---
-------------------------------------

AtlasLoot_Data["SunwellPlateau"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Sunwell Isle"] .. ": " .. BabbleZone["Sunwell Plateau"];
	DisplayName = BabbleZone["Sunwell Plateau"];
	Type = "BCRaid";
	Map = "SunwellPlateau";
	{
		Name = BabbleBoss["Kalecgos"];
		WebID = {24892,"npc"};
		LootGroups = {
			[01] =  100,
			[02] =  100,
			[10] =  100,
			[15] =  1,
		};
		[01] = { itemID = 34170, lootGroup = 2, contentsPreview = {{34386}} }; --Pantaloons of Calming Strife
		[02] = { itemID = 34169, lootGroup = 2, contentsPreview = {{34384}} }; --Breeches of Natural Aggression
		[03] = { itemID = 34168, lootGroup = 2 }; --Starstalker Legguards
		[04] = { itemID = 34167, lootGroup = 2, contentsPreview = {{34382}} }; --Legplates of the Holy Juggernaut
		[05] = { itemID = 34166, lootGroup = 2 }; --Band of Lucent Beams
		[06] = { itemID = 34165, lootGroup = 2 }; --Fang of Kalecgos
		[07] = { itemID = 34164, lootGroup = 2 }; --Dragonscale-Encrusted Longblade
		[16] = { itemID = 34848, lootTable = {"T6WRIST","Token"}}; --Bracers of the Forgotten Conqueror
		[18] = { itemID = 34664 }; --Sunmote
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
		[23] = { itemID = 63978, lootGroup = 15 }; --Sigil
	};
	{
		Name = BabbleBoss["Brutallus"];
		WebID = {24882,"npc"};
		LootGroups = {
			[01] =  100,
			[02] =  100,
			[10] =  100,
			[15] =  1,
			[16] =  1
		};

		[01] = { itemID = 34181, lootGroup = 2 }; --Leggings of Calamity
		[02] = { itemID = 34180, lootGroup = 2, contentsPreview = {{34381},{11517}} }; --Felfury Legplates
		[03] = { itemID = 34381, lootGroup = 2 }; --Felstrength Legplates
		[04] = { itemID = 34178, lootGroup = 2 }; --Collar of the Pit Lord
		[05] = { itemID = 34177, lootGroup = 2 }; --Clutch of Demise
		[06] = { itemID = 34179, lootGroup = 2 }; --Heart of the Pit
		[07] = { itemID = 34176, lootGroup = 2 }; --Reign of Misery
		[08] = { itemID = 11523, lootGroup = 2 }; --Trophy Scar Band
		[16] = { itemID = 34853, lootTable = {"T6WAIST","Token"}, lootGroup = 1 }; --Belt of the Forgotten Conqueror
		[18] = { itemID = 34664 }; --Sunmote
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
		[23] = { itemID = 612859, lootGroup = 16 }; --Summoning Stone - Brutallus
		[25] = { itemID = 63976, lootGroup = 15 }; --Sigil
	};
	{
		Name = BabbleBoss["Felmyst"];
		WebID = {25038,"npc"};
		LootGroups = {
			[01] =  100,
			[02] =  100,
			[10] =  100,
			[15] =  1,
		};
		[01] = { itemID = 34352, lootGroup = 2 }; --Borderland Fortress Grips
		[02] = { itemID = 34188, lootGroup = 2, contentsPreview = {{34385}} }; --Leggings of the Immortal Night
		[03] = { itemID = 34385, lootGroup = 2 }; --Leggings of the Immortal Beast
		[04] = { itemID = 34186, lootGroup = 2, contentsPreview = {{34383},{11518}} }; --Chain Links of the Tumultuous Storm
		[05] = { itemID = 34383, lootGroup = 2 }; --Kilt of Spiritual Reconstruction
		[06] = { itemID = 34184, lootGroup = 2 }; --Brooch of the Highborne
		[07] = { itemID = 34185, lootGroup = 2 }; --Sword Breaker's Bulwark
		[08] = { itemID = 34182, lootGroup = 2 }; --Grand Magister's Staff of Torrents
		[16] = { itemID = 34856, lootTable = {"T6FEET","Token"}, lootGroup = 1 }; --Boots of the Forgotten Conqueror
		[18] = { itemID = 34664 }; --Sunmote
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
		[23] = { itemID = 63980, lootGroup = 15 }; --Sigil
	};
	{
		Name = BabbleBoss["The Eredar Twins"];
		WebID = {25166,"npc"};
		LootGroups = {
			[01] =  100,
			[02] =  100,
			[10] =  100,
			[15] =  1,
			[16] =  1
			};
		[01] = { itemID = 34205, lootGroup = 1 }; --Shroud of Redeemed Souls
		[02] = { itemID = 34190, lootGroup = 2 }; --Crimson Paragon's Cover
		[03] = { itemID = 34210, lootGroup = 1 }; --Amice of the Convoker
		[04] = { itemID = 34202, lootGroup = 1, contentsPreview = {{34393}} }; --Shawl of Wonderment
		[05] = { itemID = 34209, lootGroup = 1, contentsPreview = {{34391}} }; --Spaulders of Reclamation
		[06] = { itemID = 34195, lootGroup = 2, contentsPreview = {{34392}} }; --Shoulderpads of Vehemence
		[07] = { itemID = 34194, lootGroup = 2 }; --Mantle of the Golden Forest
		[08] = { itemID = 34208, lootGroup = 1, contentsPreview = {{34390},{11433}} }; --Equilibrium Epaulets
		[09] = { itemID = 34192, lootGroup = 2, contentsPreview = {{34388}} }; --Pauldrons of Perseverance
		[10] = { itemID = 34193, lootGroup = 1, contentsPreview = {{34389},{11483}} }; --Spaulders of the Thalassian Savior
		[11] = { itemID = 34204, lootGroup = 1 }; --Amulet of Unfettered Magics
		[12] = { itemID = 34189, lootGroup = 2 }; --Band of Ruinous Delight
		[13] = { itemID = 34206, lootGroup = 1 }; --Book of Highborne Hymns
		[14] = { itemID = 34197, lootGroup = 2 }; --Shiv of Exsanguination
		[15] = { itemID = 34199, lootGroup = 1 }; --Archon's Gavel
		[16] = { itemID = 34203, lootGroup = 2 }; --Grip of Mannoroth
		[17] = { itemID = 34198, lootGroup = 2 }; --Stanchion of Primal Instinct
		[18] = { itemID = 34196, lootGroup = 2 }; --Golden Bow of Quel'Thalas
		[20] = { itemID = 34664 }; --Sunmote
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 612860 ,lootGroup = 16 }; --Summoning Stone - Sacro\'lythess
		[27] = { itemID = 63984, lootGroup = 15 }; --Sigil
		[28] = { itemID = 63985, lootGroup = 15 }; --Sigil
	};
	{
		Name = AL["High Commander Arynyes <Shadowsword Captain>"];
		WebID = {25837,"npc"};
		LootGroups = {
			[01] =  100,
			[02] =  100,
			[10] =  100,
			[15] =  100,
			};
		[01] = { itemID = 35282, lootGroup = 2 }; --Sin'dorei Band of Dominance
		[02] = { itemID = 35283, lootGroup = 2 }; --Sin'dorei Band of Salvation
		[03] = { itemID = 35284, lootGroup = 2 }; --Sin'dorei Band of Triumph
		[04] = { itemID = 35290, lootGroup = 2 }; --Sin'dorei Pendant of Conquest
		[05] = { itemID = 35291, lootGroup = 2 }; --Sin'dorei Pendant of Salvation
		[06] = { itemID = 35292, lootGroup = 2 }; --Sin'dorei Pendant of Triumph
		[08] = { itemID = 34848, lootTable = {"T6WRIST","Token"}, lootGroup = 1}; --Bracers of the Forgotten Conqueror
		[09] = { itemID = 34853, lootTable = {"T6WAIST","Token"}, lootGroup = 1 }; --Belt of the Forgotten Conqueror
		[10] = { itemID = 34856, lootTable = {"T6FEET","Token"}, lootGroup = 1 }; --Boots of the Forgotten Conqueror
		[16] = { itemID = 34664 }; --Sunmote
		[17] = { itemID = 29434 }; --Badge of Justice
		[18] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[19] = { itemID = 98570 }; --Mystic Orb

	};
	{
		Name = BabbleBoss["M'uru"];
		WebID = {25741,"npc"}; --Entropius: 25840
		LootGroups = {
			[01] =  100,
			[02] =  100,
			[10] =  100,
			[15] =  1,
			};
		[01] = { itemID = 34232, lootGroup = 1 }; --Fel Conquerer Raiments
		[02] = { itemID = 34233, lootGroup = 1, contentsPreview = {{34399}} }; --Robes of Faltered Light
		[03] = { itemID = 34212, lootGroup = 1, contentsPreview = {{34398}} }; --Sunglow Vest
		[04] = { itemID = 34211, lootGroup = 2, contentsPreview = {{34397}} }; --Harness of Carnal Instinct
		[05] = { itemID = 34234, lootGroup = 2, contentsPreview = {{34408}} }; --Shadowed Gauntlets of Paroxysm
		[06] = { itemID = 34229, lootGroup = 1, contentsPreview = {{34396},{11485}} }; --Garments of Serene Shores
		[07] = { itemID = 34228, lootGroup = 2 }; --Vicious Hawkstrider Hauberk
		[08] = { itemID = 34215, lootGroup = 2, contentsPreview = {{34394},{11484}} }; --Warharness of Reckless Fury
		[09] = { itemID = 34240, lootGroup = 1 }; --Gauntlets of the Soothed Soul
		[10] = { itemID = 34216, lootGroup = 2, contentsPreview = {{34395}} }; --Valiant Judicator's Chestguard
		[11] = { itemID = 34213, lootGroup = 2 }; --Ring of Hardened Resolve
		[12] = { itemID = 34230, lootGroup = 1 }; --Ring of Omnipotence
		[13] = { itemID = 34427, lootGroup = 2 }; --Blackened Naaru Sliver
		[14] = { itemID = 34430, lootGroup = 1 }; --Glimmering Naaru Sliver
		[15] = { itemID = 34429, lootGroup = 1 }; --Shifting Naaru Sliver
		[16] = { itemID = 34428, lootGroup = 2 }; --Steely Naaru Sliver
		[17] = { itemID = 34214, lootGroup = 2 }; --Muramasa
		[18] = { itemID = 34231, lootGroup = 1 }; --Aegis of Angelic Fortune
		[20] = { itemID = 34664 }; --Sunmote
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 64004, lootGroup = 15 }; --Sigil
	};
	{
		Name = BabbleBoss["Kil'jaeden"];
		WebID = {25315,"npc"};
		LootGroups = {
			[01] =  3,
			[02] =  100,
			[03] =  100,
			[04] =  100,
			[10] =  100,
			[15] =  1,
			[16] =  1,
			};
		[01] = { itemID = 34241, lootGroup = 4 }; --Cloak of Unforgivable Sin
		[02] = { itemID = 34242, lootGroup = 3 }; --Tattered Cape of Antonidas
		[03] = { itemID = 34339, lootGroup = 3, contentsPreview = {{34405}} }; --Cowl of Light's Purity
		[04] = { itemID = 34340, lootGroup = 3 }; --Dark Conjuror's Collar
		[05] = { itemID = 34342, lootGroup = 3, contentsPreview = {{34406}} }; --Handguards of the Dawn
		[06] = { itemID = 34344, lootGroup = 3 }; --Handguards of the Defiled Worlds
		[07] = { itemID = 34244, lootGroup = 4, contentsPreview = {{34404}} }; --Duplicitous Guise
		[08] = { itemID = 34245, lootGroup = 3, contentsPreview = {{34403}} }; --Cover of Ursol the Wise
		[09] = { itemID = 34333, lootGroup = 4 }; --Coif of Alleria
		[10] = { itemID = 34332, lootGroup = 3, contentsPreview = {{34402},{10736}} }; --Cowl of Gul'dan
		[11] = { itemID = 34402, lootGroup = 3 }; --Shroud of Chieftain Ner'zhul
		[12] = { itemID = 34343, lootGroup = 4 }; --Thalassian Ranger Gauntlets
		[13] = { itemID = 34243, lootGroup = 3, contentsPreview = {{34401}} }; --Helm of Burning Righteousness
		[14] = { itemID = 34345, lootGroup = 4, contentsPreview = {{10735},{34400}} }; --Crown of Anasterian
		[15] = { itemID = 34341, lootGroup = 4, contentsPreview = {{11520}} }; --Borderland Paingrips
		[16] = { itemID = 34329, lootGroup = 2 }; --Crux of the Apocalypse
		[17] = { itemID = 34247, lootGroup = 2 }; --Apolyon, the Soul-Render
		[18] = { itemID = 34335, lootGroup = 2 }; --Hammer of Sanctification
		[19] = { itemID = 34331, lootGroup = 2 }; --Hand of the Deceiver
		[20] = { itemID = 34336, lootGroup = 2 }; --Sunflare
		[21] = { itemID = 34337, lootGroup = 2 }; --Golden Staff of the Sin'dorei
		[23] = { itemID = 34664 }; --Sunmote
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 450010, lootGroup = 1 ,desc = AL["Quest Requirements"], contentsPreview = {{450009},{450010},{34334}} }; --Thori'dal, the Stars' Fury
		[29] = { itemID = 63988, lootGroup = 15 }; --Sigil
		[30] = { itemID = 252676, lootGroup = 16 }; --Essence of the AtlasLoot.Colors.BLUE Flight
	};
	{
		Name = AL["Trash Mobs"];
		LootGroups = {
			[01] =  2,
			[02] =  2,
			[03] =  1
			};
		[01] = { itemID = 34351, lootGroup = 1, contentsPreview = {{34407}} }; --Tranquil Majesty Wraps
		[02] = { itemID = 34350, lootGroup = 1, contentsPreview = {{34409},{11519}} }; --Gauntlets of the Ancient Shadowmoon
		[03] = { itemID = 35733, lootGroup = 1 }; --Ring of Harmonic Beauty
		[04] = { itemID = 34183, lootGroup = 1 }; --Shivering Felspine
		[05] = { itemID = 34346, lootGroup = 1 }; --Mounting Vengeance
		[06] = { itemID = 34349, lootGroup = 1 }; --Blade of Life's Inevitability
		[07] = { itemID = 34348, lootGroup = 1 }; --Wand of Cleansing Light
		[08] = { itemID = 34347, lootGroup = 1 }; --Wand of the Demonsoul
		[16] = { itemID = 35273 }; --Study of Advanced Smelting
		[17] = { itemID = 34664 }; --Sunmote
	};
	{
		LootGroups = {
			[01] =  2,
			[02] =  2,
			[03] =  1
			};
		Name = AL["Jewelcrafting"];
		[01] = { itemID = 32228, lootGroup = 3 }; --Empyrean Sapphire
		[02] = { itemID = 32231, lootGroup = 3 }; --Pyrestone
		[03] = { itemID = 32229, lootGroup = 3 }; --Lionseye
		[04] = { itemID = 32249, lootGroup = 3 }; --Seaspray Emerald
		[05] = { itemID = 32230, lootGroup = 3 }; --Shadowsong Amethyst
		[06] = { itemID = 32227, lootGroup = 3 }; --Crimson Spinel
		[16] = { itemID = 35198, droprate = "0.06%" }; --Design: Loop of Forged Power
		[17] = { itemID = 35201, droprate = "0.06%" }; --Design: Pendant of Sunfire
		[18] = { itemID = 35199, droprate = "0.06%" }; --Design: Ring of Flowing Life
		[19] = { itemID = 35202, droprate = "0.06%" }; --Design: Amulet of Flowing Life
		[20] = { itemID = 35200, droprate = "0.06%" }; --Design: Hard Khorium Band
		[21] = { itemID = 35203, droprate = "0.06%" }; --Design: Hard Khorium Choker
	};
	{
		Name = "Patterns/Plans";
		[01] = { itemID = 35212, droprate = "0.06%" }; --Pattern: Leather Gauntlets of the Sun
		[02] = { itemID = 35216, droprate = "0.06%" }; --Pattern: Leather Chestguard of the Sun
		[03] = { itemID = 35213, droprate = "0.06%" }; --Pattern: Fletcher's Gloves of the Phoenix
		[04] = { itemID = 35217, droprate = "0.06%" }; --Pattern: Pattern: Embrace of the Phoenix
		[05] = { itemID = 35214, droprate = "0.06%" }; --Pattern: Gloves of Immortal Dusk
		[06] = { itemID = 35218, droprate = "0.06%" }; --Pattern: Carapace of Sun and Shadow
		[07] = { itemID = 35215, droprate = "0.06%" }; --Pattern: Sun-Drenched Scale Gloves
		[08] = { itemID = 35219, droprate = "0.06%" }; --Pattern: Sun-Drenched Scale Chestguard
		[09] = { itemID = 35204, droprate = "0.06%" }; --Pattern: Sunfire Handwraps
		[10] = { itemID = 35206, droprate = "0.06%" }; --Pattern: Sunfire Robe
		[11] = { itemID = 35205, droprate = "0.06%" }; --Pattern: Hands of Eternal Light
		[12] = { itemID = 35207, droprate = "0.06%" }; --Pattern: Robe of Eternal Light
		[13] = { itemID = 35208, droprate = "0.06%" }; --Plans: Sunblessed Gauntlets
		[14] = { itemID = 35210, droprate = "0.06%" }; --Plans: Sunblessed Breastplate
		[15] = { itemID = 35209, droprate = "0.06%" }; --Plans: Hard Khorium Battlefists
		[16] = { itemID = 35211, droprate = "0.06%" }; --Plans: Hard Khorium Battleplate
		[17] = { itemID = 35186, droprate = "0.06%" }; --Schematic: Annihilator Holo-Gogs
		[18] = { itemID = 35187, droprate = "0.06%" }; --Schematic: Justicebringer 3000 Specs
		[19] = { itemID = 35189, droprate = "0.06%" }; --Schematic: Powerheal 9000 Lens
		[20] = { itemID = 35190, droprate = "0.06%" }; --Schematic: Hyper-Magnified Moon Specs
		[21] = { itemID = 35191, droprate = "0.06%" }; --Schematic: Wonderheal XT68 Shades
		[22] = { itemID = 35192, droprate = "0.06%" }; --Schematic: Primal-Attuned Goggles
		[23] = { itemID = 35193, droprate = "0.06%" }; --Schematic: Lightning Etched Specs
		[24] = { itemID = 35194, droprate = "0.06%" }; --Schematic: Surestrike Goggles v3.0
		[25] = { itemID = 35195, droprate = "0.06%" }; --Schematic: Mayhem Projection Goggles
		[26] = { itemID = 35196, droprate = "0.06%" }; --Schematic: Hard Khorium Goggles
		[27] = { itemID = 35197, droprate = "0.06%" }; --Schematic: Quad Deathblow X44 Goggles
	};
};

----------------------------------
---Tempest Keep: The Arcatraz ---
----------------------------------

AtlasLoot_Data["TKArc"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Arcatraz"];
	DisplayName = BabbleZone["The Arcatraz"];
	Type = "BCDungeon";
	Map = "TempestKeepArcatraz";
	{
		Name = BabbleBoss["Zereketh the Unbound"];
		[01] = { itemID = 28373 }; --Cloak of Scintillating Auras
		[02] = { itemID = 28374 }; --Mana-Sphere Shoulderguards
		[03] = { itemID = 28384 }; --Outland Striders
		[04] = { itemID = 28375 }; --Rubium War-Girdle
		[05] = { itemID = 28372 }; --Idol of Feral Shadows
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30582, [alDif.MIN_DIF] = alDif.Heroic }; --Deadly Fire Opal
		[18] = { itemID = 30575, [alDif.MIN_DIF] = alDif.Heroic }; --Nimble Fire Opal
		[19] = { itemID = 30581, [alDif.MIN_DIF] = alDif.Heroic }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Wrath-Scryer Soccothrates"];
		[01] = { itemID = 28396 }; --Gloves of the Unbound
		[02] = { itemID = 28398 }; --The Sleeper's Cord
		[03] = { itemID = 28394 }; --Ryngo's Band of Ingenuity
		[04] = { itemID = 28393 }; --Warmaul of Infused Light
		[05] = { itemID = 28397 }; --Emberhawk Crossbow
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30582, [alDif.MIN_DIF] = alDif.Heroic }; --Deadly Fire Opal
		[18] = { itemID = 30575, [alDif.MIN_DIF] = alDif.Heroic }; --Nimble Fire Opal
		[19] = { itemID = 30581, [alDif.MIN_DIF] = alDif.Heroic }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Dalliah the Doomsayer"];
		[01] = { itemID = 24308 }; --Pattern: Whitemend Pants" 
		[03] = { itemID = 28391 }; --Worldfire Chestguard
		[04] = { itemID = 28390 }; --Thatia's AtlasLoot-Correcting Gauntlets
		[05] = { itemID = 28387 }; --Lamp of Peaceful Repose
		[06] = { itemID = 28392 }; --Reflex Blades
		[07] = { itemID = 28386 }; --Nether Core's Control Rod
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30582, [alDif.MIN_DIF] = alDif.Heroic }; --Deadly Fire Opal
		[18] = { itemID = 30575, [alDif.MIN_DIF] = alDif.Heroic }; --Nimble Fire Opal
		[19] = { itemID = 30581, [alDif.MIN_DIF] = alDif.Heroic }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Harbinger Skyriss"];
		[01] = { itemID = 28415 }; --Hood of Oblivion
		[02] = { itemID = 28413 }; --Hallowed Crown
		[03] = { itemID = 28414 }; --Helm of Assassination
		[04] = { itemID = 28231 }; --Tidefury Chestpiece
		[05] = { itemID = 28403 }; --Doomplate Chestguard
		[06] = { itemID = 28205 }; --Breastplate of the Bold
		[08] = { itemID = 28406 }; --Sigil-Laced Boots
		[09] = { itemID = 28419 }; --Choker of Fluid Thought
		[10] = { itemID = 28407 }; --Elementium Band of the Sentry
		[11] = { itemID = 28418 }; --Shiffar's Nexus-Horn
		[12] = { itemID = 28412 }; --Lamp of Peaceful Radiance
		[13] = { itemID = 28416 }; --Hungering Spineripper
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30582, [alDif.MIN_DIF] = alDif.Heroic }; --Deadly Fire Opal
		[18] = { itemID = 30575, [alDif.MIN_DIF] = alDif.Heroic }; --Nimble Fire Opal
		[19] = { itemID = 30581, [alDif.MIN_DIF] = alDif.Heroic }; --Durable Fire Opal
		[20] = { itemID = 29241, [alDif.MIN_DIF] = alDif.Heroic }; --Belt of Depravity
		[22] = { itemID = 29248, [alDif.MIN_DIF] = alDif.Heroic }; --Shadowstep Striders
		[23] = { itemID = 29252, [alDif.MIN_DIF] = alDif.Heroic }; --Bracers of Dignity
		[24] = { itemID = 29360, [alDif.MIN_DIF] = alDif.Heroic }; --Vileblade of the Betrayer
		[26] = { itemID = 33861, [alDif.MIN_DIF] = alDif.Heroic }; --The Scroll of Skyriss
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Botanica"] };
		[02] = { itemID = 24172 }; --Design: Coronet of Verdant Flame
		[04] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Mechanar"] };
		[05] = { itemID = 22920 }; --Recipe: Major Fire Protection Potion
		[06] = { itemID = 21906 }; --Pattern: Arcanoweave Boots
		[08] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Overcharged Manacell"], "=q5=" .. BabbleZone["The Mechanar"] };
		[09] = { itemID = 30824 }; --Overcharged Manacell
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Arcatraz"] };
		[17] = { itemID = 23606 }; --Plans: Felsteel Leggings
		[18] = { itemID = 22556 }; --Formula: Enchant 2H Weapon - Major Agility
		[19] = { itemID = 29672 }; --Pattern: Flame Armor Kit
		[20] = { itemID = 21905 }; --Pattern: Arcanoweave Bracers
		[22] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Third Fragment Guardian"], "=q5=" .. BabbleZone["The Arcatraz"] };
		[23] = { itemID = 24488 }; --Third Key Fragment
	};
};

----------------------------------
---Tempest Keep: The Botanica ---
----------------------------------

AtlasLoot_Data["TKBot"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Botanica"];
	DisplayName = BabbleZone["The Botanica"];
	Type = "BCDungeon";
	Map = "TempestKeepBotanica";
	{
		Name = BabbleBoss["Commander Sarannis"];
		[01] = { itemID = 28301 }; --Syrannis' Mystic Sheen
		[02] = { itemID = 28304 }; --Prismatic Mittens of Mending
		[03] = { itemID = 28306 }; --Towering Mantle of the Hunt
		[04] = { itemID = 28296 }; --Libram of the Lightbringer
		[05] = { itemID = 28311 }; --Revenger
		[07] = { itemID = 28769 }; --The Keystone
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [alDif.MIN_DIF] = alDif.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [alDif.MIN_DIF] = alDif.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [alDif.MIN_DIF] = alDif.Heroic }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["High Botanist Freywinn"];
		[01] = { itemID = 28317 }; --Energis Armwraps
		[02] = { itemID = 28318 }; --Obsidian Clodstompers
		[03] = { itemID = 28321 }; --Enchanted Thorium Torque
		[04] = { itemID = 28315 }; --Stormreaver Warblades
		[05] = { itemID = 28316 }; --Aegis of the Sunbird
		[07] = { itemID = 23617 }; --Plans: Earthpeace Breastplate
		[09] = { itemID = 31744 }; --Botanist's Field Guide
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [alDif.MIN_DIF] = alDif.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [alDif.MIN_DIF] = alDif.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [alDif.MIN_DIF] = alDif.Heroic }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Thorngrin the Tender"];
		[01] = { itemID = 24310 }; --Pattern: Battlecast Pants" 
		[03] = { itemID = 28324 }; --Gauntlets of Cruel Intention
		[04] = { itemID = 28327 }; --Arcane Netherband
		[05] = { itemID = 28323 }; --Ring of Umbral Doom
		[06] = { itemID = 28322 }; --Runed Dagger of Solace
		[07] = { itemID = 28325 }; --Dreamer's Dragonstaff
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [alDif.MIN_DIF] = alDif.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [alDif.MIN_DIF] = alDif.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [alDif.MIN_DIF] = alDif.Heroic }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Laj"];
		[01] = { itemID = 27739 }; --Spaulders of the Righteous
		[03] = { itemID = 28328 }; --Mithril-Bark Cloak
		[04] = { itemID = 28338 }; --Devil-Stitched Leggings
		[05] = { itemID = 28340 }; --Mantle of Autumn
		[06] = { itemID = 28339 }; --Boots of the Shifting Sands
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [alDif.MIN_DIF] = alDif.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [alDif.MIN_DIF] = alDif.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [alDif.MIN_DIF] = alDif.Heroic }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Warp Splinter"];
		[01] = { itemID = 28371 }; --Netherfury Cape
		[02] = { itemID = 28342 }; --Warp Infused Drape
		[03] = { itemID = 28347 }; --Warpscale Leggings
		[04] = { itemID = 28343 }; --Jagged Bark Pendant
		[05] = { itemID = 28370 }; --Bangle of Endless Blessings
		[06] = { itemID = 28345 }; --Warp Splinter's Thorn
		[07] = { itemID = 28367 }; --Greatsword of Forlorn Visions
		[08] = { itemID = 28341 }; --Warpstaff of Arcanum
		[10] = { itemID = 28229 }; --Incanter's Robe
		[11] = { itemID = 28348 }; --Moonglade Cowl
		[12] = { itemID = 28349 }; --Tidefury Helm
		[13] = { itemID = 28228 }; --Beast Lord Curiass
		[14] = { itemID = 28350 }; --Warhelm of the Bold
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [alDif.MIN_DIF] = alDif.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [alDif.MIN_DIF] = alDif.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [alDif.MIN_DIF] = alDif.Heroic }; --Mysterious Fire Opal
		[21] = { itemID = 29258, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of Ethereal Manipulation
		[22] = { itemID = 29262, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of the Endless Hunt
		[23] = { itemID = 32072, [alDif.MIN_DIF] = alDif.Heroic }; --Gauntlets of Dissension
		[24] = { itemID = 29359, [alDif.MIN_DIF] = alDif.Heroic }; --Feral Staff of Lashing
		[26] = { itemID = 24311 }; --Pattern: Whitemend Hood
		[28] = { itemID = 31085 }; --Top Shard of the Arcatraz Key
		[29] = { itemID = 33859, [alDif.MIN_DIF] = alDif.Heroic }; --Warp Splinter Clipping
	};
};



----------------------------------
---Tempest Keep: The Mechanar ---
----------------------------------

AtlasLoot_Data["TKMech"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Mechanar"];
	DisplayName = BabbleZone["The Mechanar"];
	Type = "BCDungeon";
	Map = "TempestKeepMechanar";
	{
		Name = AL["Cache of the Legion"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Cache of the Legion"] };
		[02] = { itemID = 29434 }; --Badge of Justice
		[03] = { itemID = 28249 }; --Capacitus' Cloak of Calibration
		[04] = { itemID = 28250 }; --Vestia's Pauldrons of Inner Grace
		[05] = { itemID = 28252 }; --Bloodfyre Robes of Annihilation
		[06] = { itemID = 28251 }; --Boots of the Glade-Keeper
		[07] = { itemID = 28248 }; --Totem of the Void
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Gatewatcher Gyro-Kill"] };
		[17] = { itemID = 30436 }; --Jagged AtlasLoot.Colors.BLUE Crystal
		[19] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleBoss["Gatewatcher Iron-Hand"] };
		[20] = { itemID = 30437 }; --Jagged AtlasLoot.Colors.RED Crystal
	};
	{
		Name = BabbleBoss["Mechano-Lord Capacitus"];
		[01] = { itemID = 28256 }; --Thoriumweave Cloak
		[02] = { itemID = 28255 }; --Lunar-Claw Pauldrons
		[03] = { itemID = 28254 }; --Warp Engineer's Prismatic Chain
		[04] = { itemID = 28257 }; --Hammer of the Penitent
		[05] = { itemID = 28253 }; --Plasma Rat's Hyper-Scythe
		[07] = { itemID = 35582 }; --Schematic: Rocket Boots Xtreme Lite
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30565, [alDif.MIN_DIF] = alDif.Heroic }; --Assassin's Fire Opal
		[18] = { itemID = 30566, [alDif.MIN_DIF] = alDif.Heroic }; --Defender's Tanzanite
		[19] = { itemID = 30564, [alDif.MIN_DIF] = alDif.Heroic }; --Shining Fire Opal
	};
	{
		Name = BabbleBoss["Nethermancer Sepethrea"];
		[01] = { itemID = 28262 }; --Jade-Skull Breastplate
		[02] = { itemID = 28259 }; --Cosmic Lifeband
		[03] = { itemID = 28260 }; --Manual of the Nethermancer
		[04] = { itemID = 28263 }; --Stellaris
		[05] = { itemID = 28258 }; --Nethershrike
		[07] = { itemID = 22920 }; --Recipe: Major Fire Protection Potion
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 30565, [alDif.MIN_DIF] = alDif.Heroic }; --Assassin's Fire Opal
		[18] = { itemID = 30566, [alDif.MIN_DIF] = alDif.Heroic }; --Defender's Tanzanite
		[19] = { itemID = 30564, [alDif.MIN_DIF] = alDif.Heroic }; --Shining Fire Opal
	};
	{
		Name = BabbleBoss["Pathaleon the Calculator"];
		[01] = { itemID = 28269 }; --Baba's Cloak of Arcanistry
		[02] = { itemID = 28266 }; --Molten Earth Kilt
		[03] = { itemID = 28265 }; --Dath'Remar's Ring of Defense
		[04] = { itemID = 28288 }; --Abacus of Violent Odds
		[05] = { itemID = 27899 }; --Mana Wrath
		[06] = { itemID = 28267 }; --Edge of the Cosmos
		[07] = { itemID = 28286 }; --Telescopic Sharprifle
		[09] = { itemID = 28278 }; --Incanter's Cowl
		[10] = { itemID = 28202 }; --Moonglade Robe
		[11] = { itemID = 28204 }; --Tunic of Assassination
		[12] = { itemID = 28275 }; --Beast Lord Helm
		[13] = { itemID = 28285 }; --Helm of the Righteous
		[15] = { itemID = 21907 }; --Pattern: Arcanoweave Robe
		[16] = { itemID = 29434, [alDif.MIN_DIF] = alDif.Heroic }; --Badge of Justice
		[17] = { itemID = 29251, [alDif.MIN_DIF] = alDif.Heroic }; --Boots of the Pious
		[18] = { itemID = 32076, [alDif.MIN_DIF] = alDif.Heroic }; --Handguards of the Steady
		[19] = { itemID = 30533, [alDif.MIN_DIF] = alDif.Heroic }; --Vanquisher's Legplates
		[20] = { itemID = 29362, [alDif.MIN_DIF] = alDif.Heroic }; --The Sun Eater
		[21] = { itemID = 30565, [alDif.MIN_DIF] = alDif.Heroic }; --Assassin's Fire Opal
		[23] = { itemID = 30566, [alDif.MIN_DIF] = alDif.Heroic }; --Defender's Tanzanite
		[24] = { itemID = 30564, [alDif.MIN_DIF] = alDif.Heroic }; --Shining Fire Opal
		[25] = { itemID = 33860, [alDif.MIN_DIF] = alDif.Heroic }; --Pathaleon's Projector
		[29] = { itemID = 31086, [alDif.MIN_DIF] = alDif.Heroic }; --Bottom Shard of the Arcatraz Key
	};
};
-----------------------------
---Tempest Keep: The Eye ---
-----------------------------

AtlasLoot_Data["TKEye"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Eye"];
	DisplayName = BabbleZone["The Eye"];
	Type = "BCRaid";
	Map = "TempestKeepTheEye";
	{
		Name = BabbleBoss["Al'ar"];
		WebID = {19514,"npc"};
		[01] = { itemID = 29925 }; --Phoenix-Wing Cloak
		[02] = { itemID = 29918 }; --Mindstorm Wristbands
		[03] = { itemID = 29947 }; --Gloves of the Searing Grip
		[04] = { itemID = 29921 }; --Fire Crest Breastplate
		[05] = { itemID = 29922 }; --Band of Al'ar
		[06] = { itemID = 29920 }; --Phoenix-Ring of Rebirth
		[07] = { itemID = 30448 }; --Talon of Al'ar
		[08] = { itemID = 30447 }; --Tome of Fiery Redemption
		[09] = { itemID = 29923 }; --Talisman of the Sun King
		[11] = { itemID = 600867, [alDif.MIN_DIF] = alDif.Heroic }; --Elemental Lodestone: Al'ar
		[16] = { itemID = 32944 }; --Talon of the Phoenix
		[17] = { itemID = 29948 }; --Claw of the Phoenix
		[18] = { itemID = 29924 }; --Netherbane
		[19] = { itemID = 29949 }; --Arcanite Steam-Pistol
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 1816254 }; --Forumla: Enchant Cloak - Phoenix Fire
		[27] = { itemID = 62443, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Void Reaver"];
		WebID = {19516,"npc"};
		[01] = { itemID = 29986 }; --Cowl of the Grand Engineer
		[02] = { itemID = 29984 }; --Girdle of Zaetar
		[03] = { itemID = 29985 }; --Void Reaver Greaves
		[04] = { itemID = 29983 }; --Fel-Steel Warhelm
		[05] = { itemID = 32515 }; --Wristguards of Determination
		[06] = { itemID = 30619 }; --Fel Reaver's Piston
		[07] = { itemID = 30450 }; --Warp-Spring Coil
		[16] = { itemID = 30249, lootTable = {"T5SHOULDER","Token"} }; --Pauldrons of the Vanquished Defender
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
	};
	{
		Name = BabbleBoss["High Astromancer Solarian"];
		WebID = {18805,"npc"};
		[01] = { itemID = 29977 }; --Star-Soul Breeches
		[02] = { itemID = 29972 }; --Trousers of the Astromancer
		[03] = { itemID = 29966 }; --Vambraces of Ending
		[04] = { itemID = 29976 }; --Worldstorm Gauntlets
		[05] = { itemID = 29951 }; --Star-Strider Boots
		[06] = { itemID = 29965 }; --Girdle of the Righteous Path
		[07] = { itemID = 29950 }; --Greaves of the Bloodwarder
		[08] = { itemID = 32267 }; --Boots of the Resilient
		[16] = { itemID = 30446 }; --Solarian's Sapphire
		[17] = { itemID = 30449 }; --Void Star Talisman
		[18] = { itemID = 29962 }; --Heartrazor
		[19] = { itemID = 29981 }; --Ethereum Life-Staff
		[20] = { itemID = 29982 }; --Wand of the Forgotten Star
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[24] = { itemID = 98570 }; --Mystic Orb
		[26] = { itemID = 62309, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"];
		WebID = {19622,"npc"};
		[01] = { itemID = 29992 }; --Royal Cloak of the Sunstriders
		[02] = { itemID = 29989 }; --Sunshower Light Cloak
		[03] = { itemID = 29994 }; --Thalassian Wildercloak
		[04] = { itemID = 29990 }; --Crown of the Sun
		[05] = { itemID = 29987 }; --Gauntlets of the Sun King
		[06] = { itemID = 29995 }; --Leggings of Murderous Intent
		[07] = { itemID = 29991 }; --Sunhawk Leggings
		[08] = { itemID = 29998 }; --Royal Gauntlets of Silvermoon
		[09] = { itemID = 29997 }; --Band of the Ranger-General
		[10] = { itemID = 29993 }; --Twinblade of the Phoenix
		[11] = { itemID = 29996 }; --Rod of the Sun King
		[12] = { itemID = 29988 }; --The Nexus Key
		[14] = { itemID = 29905 }; --Kael's Vial Remnant
		[15] = { itemID = 450001 }; --Intact Vial of Kael'thas Sunstrider
		[16] = { itemID = 30237, lootTable = {"T5CHEST","Token"} }; --Chestguard of the Vanquished Defender
		[18] = { itemID = 32405 }; --Verdant Sphere
		[19] = { itemID = 30018 }; --Lord Sanguinar's Claim
		[20] = { itemID = 30017 }; --Telonicus's Pendant of Mayhem
		[21] = { itemID = 30007 }; --The Darkener's Grasp
		[22] = { itemID = 30015 }; --The Sun King's Talisman
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 62498, droprate = "1%" }; --Pet Sigil
		[30] = { itemID = 32458 }; --Ashes of Al'ar

	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 30024 }; --Mantle of the Elven Kings
		[02] = { itemID = 30020 }; --Fire-Cord of the Magus
		[03] = { itemID = 30029 }; --Bark-Gloves of Ancient Wisdom
		[04] = { itemID = 30026 }; --Bands of the Celestial Archer
		[05] = { itemID = 30030 }; --Girdle of Fallen Stars
		[06] = { itemID = 30028 }; --Seventh Ring of the Tirisfalen
		[07] = { itemID = 2032902 }; --Bottled Nethergron Extract
		[09] = { itemID = 30324 }; --Plans: AtlasLoot.Colors.RED Havoc Boots
		[10] = { itemID = 30322 }; --Plans: AtlasLoot.Colors.RED Belt of Battle
		[11] = { itemID = 30323 }; --Plans: Boots of the Protector
		[12] = { itemID = 30321 }; --Plans: Belt of the Guardian
		[13] = { itemID = 30280 }; --Pattern: Belt of Blasting
		[14] = { itemID = 30282 }; --Pattern: Boots of Blasting
		[15] = { itemID = 30283 }; --Pattern: Boots of the Long Road
		[16] = { itemID = 30281 }; --Pattern: Belt of the Long Road
		[17] = { itemID = 30308 }; --Pattern: Hurricane Boots
		[18] = { itemID = 30304 }; --Pattern: Monsoon Belt
		[19] = { itemID = 30305 }; --Pattern: Boots of Natural Grace
		[20] = { itemID = 30307 }; --Pattern: Boots of the Crimson Hawk
		[21] = { itemID = 30306 }; --Pattern: Boots of Utter Darkness
		[22] = { itemID = 30301 }; --Pattern: Belt of Natural Power
		[23] = { itemID = 30303 }; --Pattern: Belt of the Black Eagle
		[24] = { itemID = 30302 }; --Pattern: Belt of Deep Shadow
		[26] = { itemID = 30183 }; --Nether Vortex
		[28] = { itemID = 32897 }; --Mark of the Illidari
	};
	{
		Name = "Legendary Items for Kael'thas Fight";
		[01] = { itemID = 30312 }; --Infinity Blade
		[02] = { itemID = 30311 }; --Warp Slicer
		[03] = { itemID = 30317 }; --Cosmic Infuser
		[04] = { itemID = 30316 }; --Devastation
		[05] = { itemID = 30313 }; --Staff of Disintegration
		[06] = { itemID = 30314 }; --Phaseshift Bulwark
		[07] = { itemID = 30318 }; --Netherstrand Longbow
	};
};


----------------
---Zul'Aman ---
----------------

AtlasLoot_Data["ZulAman"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Zul'Aman"];
	Type = "BCRaid";
	Map = "ZulAman";
	{
		Name = BabbleBoss["Nalorakk"];
		[01] = { itemID = 33203 }; --Robes of Heavenly Purpose
		[02] = { itemID = 33285 }; --Fury of the Ursine
		[03] = { itemID = 33211 }; --Bladeangel's Money Belt
		[04] = { itemID = 33206 }; --Pauldrons of Primal Fury
		[05] = { itemID = 33327 }; --Mask of Introspection
		[06] = { itemID = 33191 }; --Jungle Stompers
		[07] = { itemID = 33640 }; --Fury
		[16] = { itemID = 33496 }; --Signet of Primal Wrath
		[17] = { itemID = 33498 }; --Signet of the Quiet Forest
		[18] = { itemID = 33971 }; --Elunite Imbued Leggings
		[19] = { itemID = 33495 }; --Rage
		[20] = { itemID = 33480 }; --Cord of BBCRaided Troll Hair
		[22] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }; --Primal Amani Idol
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 63944, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Akil'zon"];
		[01] = { itemID = 33286 }; --Mojo-mender's Mask
		[02] = { itemID = 33215 }; --Bloodstained Elven Battlevest
		[03] = { itemID = 33216 }; --Chestguard of Hidden Purpose
		[04] = { itemID = 33281 }; --Brooch of Nature's Mercy
		[05] = { itemID = 33293 }; --Signet of Ancient Magics
		[06] = { itemID = 33214 }; --Akil'zon's Talonblade
		[07] = { itemID = 33283 }; --Amani Punisher
		[16] = { itemID = 33591 }; --Shadowcaster's Drape
		[17] = { itemID = 33590 }; --Cloak of Fiends
		[18] = { itemID = 33481 }; --Pauldrons of Stone Resolve
		[19] = { itemID = 33492 }; --Trollbane
		[20] = { itemID = 33500 }; --Signet of Eternal Life
		[22] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }; --Primal Amani Idol
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 63943, droprate = "1%" }; --Pet Sigil

	};
	{
		Name = BabbleBoss["Jan'alai"];
		[01] = { itemID = 33357 }; --Footpads of Madness
		[02] = { itemID = 33356 }; --Helm of Natural Regeneration
		[03] = { itemID = 33329 }; --Shadowtooth Trollskin Cuirass
		[04] = { itemID = 33328 }; --Arrow-fall Chestguard
		[05] = { itemID = 33354 }; --Wub's Cursed Hexblade
		[06] = { itemID = 33326 }; --Bulwark of the Amani Empire
		[07] = { itemID = 33332 }; --Enamelled Disc of Mojo
		[16] = { itemID = 33499 }; --Signet of the Last Defender
		[17] = { itemID = 33805 }; --Shadowhunter's Treads
		[18] = { itemID = 33491 }; --Tuskbreaker
		[19] = { itemID = 33490 }; --Staff of Dark Mending
		[20] = { itemID = 33489 }; --Mantle of Ill Intent
		[22] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }; --Primal Amani Idol
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 63946, droprate = "1%" }; --Pet Sigil

	};
	{
		Name = BabbleBoss["Halazzi"];
		[01] = { itemID = 33317 }; --Robe of Departed Spirits
		[02] = { itemID = 33300 }; --Shoulderpads of Dancing Blades
		[03] = { itemID = 33322 }; --Shimmer-pelt Vest
		[04] = { itemID = 33533 }; --Avalanche Leggings
		[05] = { itemID = 33299 }; --Spaulders of the Advocate
		[06] = { itemID = 33303 }; --Skullshatter Warboots
		[07] = { itemID = 33297 }; --The Savage's Choker
		[16] = { itemID = 33483 }; --Life-step Belt
		[17] = { itemID = 33493 }; --Umbral Shiv
		[18] = { itemID = 33497 }; --Mana Attuned Band
		[19] = { itemID = 33979 }; --Sightless Head
		[20] = { itemID = 33465 }; --Staff of Primal Fury
		[22] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }; --Primal Amani Idol
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 63945, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Hex Lord Malacrass"];
		[01] = { itemID = 33592 }; --Cloak of Ancient Rituals
		[02] = { itemID = 33453 }; --Hood of Hexing
		[03] = { itemID = 33463 }; --Hood of the Third Eye
		[04] = { itemID = 33432 }; --Coif of the Jungle Stalker
		[05] = { itemID = 33464 }; --Hex Lord's Voodoo Pauldrons
		[06] = { itemID = 33421 }; --Battleworn Tuskguard
		[07] = { itemID = 33446 }; --Girdle of Stromgarde's Hope
		[09] = { itemID = 2033307, droprate = { "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Witchdoctor
		[11] = { itemID = 63962, droprate = "1%" }; --Pet Sigil
		[16] = { itemID = 34029 }; --Tiny Voodoo Mask
		[17] = { itemID = 33828 }; --Tome of Diabolic Remedy
		[18] = { itemID = 38634 }; --Troll Dice
		[19] = { itemID = 33389 }; --Dagger of Bad Mojo
		[20] = { itemID = 33298 }; --Prowler's Strikeblade
		[21] = { itemID = 33388 }; --Heartless
		[22] = { itemID = 33494 }; --Amani Divining Staff
		[24] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } };  --Primal Amani Idol
		[26] = { itemID = 29434 }; --Badge of Justice
		[27] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[28] = { itemID = 98570 }; --Mystic Orb
		[30] = { itemID = 1333809 }; --Amani Bear
	};
	{
		Name = BabbleBoss["Zul'jin"];
		[01] = { itemID = 33471 }; --Two-toed Sandals
		[02] = { itemID = 33479 }; --Grimgin Faceguard
		[03] = { itemID = 33469 }; --Hauberk of the Empire's Champion
		[04] = { itemID = 33473 }; --Chestguard of the Warlord
		[05] = { itemID = 33466 }; --Loop of Cursed Bones
		[06] = { itemID = 33830 }; --Ancient Aqir Artifact
		[07] = { itemID = 33831 }; --Berserker's Call
		[08] = { itemID = 33829 }; --Hex Shrunken Head
		[09] = { itemID = 24537 }; --Waistband of Crushed Skulls
		[11] = { itemID = 33307, droprate = { "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Executioner
		[16] = { itemID = 33467 }; --Blade of Twisted Visions
		[17] = { itemID = 33478 }; --Jin'rohk, The Great Apocalypse
		[18] = { itemID = 33476 }; --Cleaver of the Unforgiving
		[19] = { itemID = 33468 }; --Dark Blessing
		[20] = { itemID = 33474 }; --Ancient Amani Longbow
		[21] = { itemID = 34071 }; --Seething Hate
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [alDif.MAX_DIF] = alDif.Normal }; --Raider's Commendations
		[25] = { itemID = 98570 }; --Mystic Orb
		[27] = { itemID = 33102 }; --Blood of Zul'Jin
		[29] = { itemID = 63949, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 21824 }; --The Krakmon Wand
		[02] = { itemID = 24574 }; --Massacre Cloak
		[03] = { itemID = 28354 }; --Throat Crushers
		[04] = { itemID = 33059 }; --Seal of the Amani'shi Berserker
		[05] = { itemID = 33983 }; --Staff of Blazing Glory
		[06] = { itemID = 39755 }; --String of Ears
		[16] = { itemID = 33865 }; --Amani Hex Stick
		[17] = { itemID = 33930 }; --Amani Charm of the Bloodletter
		[18] = { itemID = 33932 }; --Amani Charm of the Witch Doctor
		[19] = { itemID = 33931 }; --Amani Charm of Mighty Mojo
		[20] = { itemID = 33933 }; --Amani Charm of the Raging Defender
		[22] = { itemID = 33993 }; --Mojo
	};
	{
		Name = AL["Enchants"];
		[01] = { itemID = 229194 }; --The Krakmon Wand
		[02] = { itemID = 229193 }; --Massacre Cloak
		[03] = { itemID = 229196 }; --Throat Crushers
		[04] = { itemID = 229192 }; --Seal of the Amani'shi Berserker
		[05] = { itemID = 229195 }; --Staff of Blazing Glory
	};
};





----------------
---Factions ---
----------------

----------------------------
---Ashtongue Deathsworn ---
----------------------------

AtlasLoot_Data["Ashtongue"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Ashtongue Deathsworn"];
	Type = "BCRaid";
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 32444 }; --=q1=Plans: Shadesteel Girdle" 
		[02] = { itemID = 32442 }; --=q1=Plans: Shadesteel Bracers" 
		[03] = { itemID = 32436 }; --Pattern: Redeemed Soul Cinch
		[04] = { itemID = 32435 }; --Pattern: Redeemed Soul Legguards
		[05] = { itemID = 32430 }; --Pattern: Bracers of Shackled Souls
		[06] = { itemID = 32429 }; --Pattern: Boots of Shackled Souls
		[07] = { itemID = 32440 }; --=q1=Pattern: Soulguard Girdle" 
		[08] = { itemID = 32438 }; --=q1=Pattern: Soulguard Bracers" 
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 32443 }; --=q1=Plans: Shadesteel Greaves" 
		[02] = { itemID = 32441 }; --=q1=Plans: Shadesteel Sabots" 
		[03] = { itemID = 32433 }; --Pattern: Redeemed Soul Mocassins
		[04] = { itemID = 32434 }; --Pattern: Redeemed Soul Wristguards
		[05] = { itemID = 32431 }; --Pattern: Greaves of Shackled Souls
		[06] = { itemID = 32432 }; --Pattern: Waistguard of Shackled Souls
		[07] = { itemID = 32447 }; --=q1=Pattern: Night's End" 
		[08] = { itemID = 32439 }; --=q1=Pattern: Soulguard Leggings" 
		[09] = { itemID = 32437 }; --=q1=Pattern: Soulguard Slippers" 
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 32486 }; --Ashtongue Talisman of Equilibrium
		[02] = { itemID = 32487 }; --Ashtongue Talisman of Swiftness
		[03] = { itemID = 32488 }; --Ashtongue Talisman of Insight
		[04] = { itemID = 32489 }; --Ashtongue Talisman of Zeal
		[05] = { itemID = 32490 }; --Ashtongue Talisman of Acumen
		[06] = { itemID = 32492 }; --Ashtongue Talisman of Lethality
		[07] = { itemID = 32491 }; --Ashtongue Talisman of Vision
		[08] = { itemID = 32493 }; --Ashtongue Talisman of Shadows
		[09] = { itemID = 32485 }; --Ashtongue Talisman of Valor
	};
};

----------------------------
---Cenarion Expedition ---
----------------------------

AtlasLoot_Data["CExpedition"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Cenarion Expedition"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 25737 }; --Pattern: Heavy Clefthoof Boots
		[02] = { itemID = 24417 }; --Scout's Arrow
		[03] = { itemID = 23814 }; --Schematic: AtlasLoot.Colors.GREEN Smoke Flare
		[04] = { itemID = 24429 };
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 25838 }; --Warden's Hauberk
		[02] = { itemID = 25836 }; --Preserver's Cudgel
		[03] = { itemID = 25835 }; --Explorer's Walking Stick
		[04] = { itemID = 25735 }; --Pattern: Heavy Clefthoof Vest
		[05] = { itemID = 25736 }; --Pattern: Heavy Clefthoof Leggings
		[06] = { itemID = 29194 }; --Arcanum of Nature Warding
		[07] = { itemID = 25869 }; --Recipe: Transmute Earthstorm Diamond
		[08] = { itemID = 32070 }; --Recipe: Earthen Elixir
		[09] = { itemID = 23618 }; --Plans: Adamantite Sharpening Stone
		[10] = { itemID = 28632 }; --Plans: Adamantite Weightstone
		[11] = { itemID = 25526 }; --Plans: Greater Rune of Warding
		[12] = { itemID = 29720 }; --Pattern: Clefthide Leg Armor
		[13] = { itemID = 30623 }; --Reservoir Key
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 31392 }; --Plans: Wildguard Helm
		[02] = { itemID = 31391 }; --Plans: Wildguard Leggings
		[03] = { itemID = 29174 }; --Watcher's Cowl
		[04] = { itemID = 29173 }; --Strength of the Untamed
		[05] = { itemID = 31949 }; --Warden's Arrow
		[06] = { itemID = 24183 }; --Design: Nightseye Panther
		[07] = { itemID = 29192 }; --Arcanum of Ferocity
		[08] = { itemID = 22918 }; --Recipe: Transmute Primal Water to Air
		[09] = { itemID = 28271 }; --Formula: Enchant Gloves - Spell Strike
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29170 }; --Windcaller's Orb
		[02] = { itemID = 29172 }; --Ashyen's Gift
		[03] = { itemID = 29171 }; --Earthwarden
		[04] = { itemID = 33999 }; --Cenarion War Hippogryph
		[05] = { itemID = 31390 }; --Plans: Wildguard Breastplate
		[06] = { itemID = 31402 }; --Design: The Natural Ward
		[07] = { itemID = 33149 }; --Formula: Enchant Cloak - Stealth
		[08] = { itemID = 31356 }; --Recipe: Flask of Distilled Wisdom
		[09] = { itemID = 22922 }; --Recipe: Major Nature Protection Potion
		[10] = { itemID = 29721 }; --Pattern: Nethercleft Leg Armor
		[11] = { itemID = 31804 }; --Cenarion Expedition Tabard
	};
};

------------------
---Honor Hold ---
------------------

AtlasLoot_Data["HonorHold"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Honor Hold"] .. " - " .. BabbleFaction["Alliance"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 29213 }; --Pattern: Felstalker Belt
		[02] = { itemID = 23142 }; --Design: Enduring Deep Peridot
		[03] = { itemID = 22531 }; --Formula: Enchant Bracer - Superior Healing
		[04] = { itemID = 24007 }; --Footman's Waterskin
		[05] = { itemID = 24008 }; --Dried Mushroom Rations
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 25826 }; --Sage's Band
		[02] = { itemID = 25825 }; --Footman's Longsword
		[03] = { itemID = 29214 }; --Pattern: Felstalker Bracers
		[04] = { itemID = 29215 }; --Pattern: Felstalker Breastplate
		[05] = { itemID = 29196 }; --Arcanum of Fire Warding
		[06] = { itemID = 25870 }; --Recipe: Transmute Skyfire Diamond
		[07] = { itemID = 22905 }; --Recipe: Elixir of Major Agility
		[08] = { itemID = 29719 }; --Pattern: Cobrahide Leg Armor
		[09] = { itemID = 30622 }; --Flamewrought Key
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29169 }; --Ring of Convalescence
		[02] = { itemID = 29166 }; --Hellforged Halberd
		[03] = { itemID = 32883 }; --Felbane Slugs
		[04] = { itemID = 24180 }; --Design: Dawnstone Crab
		[05] = { itemID = 29189 }; --Arcanum of Renewal
		[06] = { itemID = 22547 }; --Formula: Enchant Chest - Exceptional Stats
		[07] = { itemID = 34218 }; --Pattern: Netherscale Ammo Pouch
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29153 }; --Blade of the Archmage
		[02] = { itemID = 29156 }; --Honor's Call
		[03] = { itemID = 29151 }; --Veteran's Musket
		[04] = { itemID = 33150 }; --Formula: Enchant Cloak - Subtlety
		[05] = { itemID = 23619 }; --Plans: Felsteel Shield Spike
		[06] = { itemID = 29722 }; --Pattern: Nethercobra Leg Armor
		[07] = { itemID = 23999}; --Honor Hold Tabard
	};
};

-----------------------
---Keepers of Time ---
-----------------------

AtlasLoot_Data["KeepersofTime"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Keepers of Time"];
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 29198 }; --Arcanum of Frost Warding
		[02] = { itemID = 28272 }; --Formula: Enchant Gloves - Major Spellpower
		[03] = { itemID = 22536 }; --Formula: Enchant Ring - Spellpower
		[04] = { itemID = 25910 }; --Design: Enigmatic Skyfire Diamond
		[05] = { itemID = 33160 }; --Design: Facet of Eternity
		[06] = { itemID = 29713 }; --Pattern: Drums of Panic
		[07] = { itemID = 30635 }; --Key of Time
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29184 }; --Timewarden's Leggings
		[02] = { itemID = 29185 }; --Continuum Blade
		[03] = { itemID = 24181 }; --Design: Living Ruby Serpent
		[04] = { itemID = 24174 }; --Design: Pendant of Frozen Flame
		[05] = { itemID = 29186 }; --Arcanum of the Defender
		[06] = { itemID = 33158 }; --Design: Stone of Blades
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29183 }; --Bindings of the Timewalker
		[02] = { itemID = 29181 }; --Timelapse Shard
		[03] = { itemID = 29182 }; --Riftmaker
		[04] = { itemID = 33152 }; --Formula: Enchant Gloves - Superior Agility
		[05] = { itemID = 31355 }; --Recipe: Flask of Supreme Power
		[06] = { itemID = 31777 }; --Keepers of Time Tabard
	};
};

---------------
---Kurenai ---
---------------

AtlasLoot_Data["Kurenai"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Kurenai"] .. " - " .. BabbleFaction["Alliance"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 29217 }; --Pattern: Netherfury Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 29144 }; --Worg Hide Quiver
		[02] = { itemID = 29219 }; --Pattern: Netherfury Leggings
		[03] = { itemID = 34175 }; --Pattern: Drums of Restoration
		[04] = { itemID = 34173 }; --Pattern: Drums of Speed
		[05] = { itemID = 30444 }; --Pattern: Reinforced Mining Bag
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29148 }; --Blackened Leather Spaulders
		[02] = { itemID = 29142 }; --Kurenai Kilt
		[03] = { itemID = 29146 }; --Band of Elemental Spirits
		[04] = { itemID = 29218 }; --Pattern: Netherfury Boots
		[05] = { itemID = 30443 }; --Recipe: Transmute Primal Fire to Earth
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29227 }; --Reins of the Cobalt War Talbuk
		[02] = { itemID = 29229 }; --Reins of the Silver War Talbuk
		[03] = { itemID = 29230 }; --Reins of the Tan War Talbuk
		[04] = { itemID = 29231 }; --Reins of the AtlasLoot.Colors.WHITE War Talbuk
		[05] = { itemID = 31830 }; --Reins of the Cobalt Riding Talbuk
		[06] = { itemID = 31832 }; --Reins of the Silver Riding Talbuk
		[07] = { itemID = 31834 }; --Reins of the Tan Riding Talbuk
		[08] = { itemID = 31836 }; --Reins of the AtlasLoot.Colors.WHITE Riding Talbuk
		[09] = { itemID = 29140 }; --Cloak of the Ancient Spirits
		[10] = { itemID = 29136 }; --Far Seer's Helm
		[11] = { itemID = 29138 }; --Arechron's Gift
		[12] = { itemID = 31774 }; --Kurenai Tabard
	};
};

------------------
---Lower City ---
------------------

AtlasLoot_Data["LowerCity"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Lower City"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 23138 }; --Design: Potent Flame Spessarite
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 30836 }; --Leggings of the Skettis Exile
		[02] = { itemID = 30835 }; --Salvager's Hauberk
		[03] = { itemID = 30841 }; --Lower City Prayerbook
		[04] = { itemID = 24179 }; --Design: Felsteel Boar
		[05] = { itemID = 24175 }; --Design: Pendant of Thawing
		[06] = { itemID = 30846 }; --Arcanum of the Outcast
		[07] = { itemID = 22910 }; --Recipe: Elixir of Major Shadow Power
		[08] = { itemID = 33157 }; --Design: Falling Star
		[09] = { itemID = 34200 }; --Pattern: Quiver of a Thousand Arrows
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29199 }; --Arcanum of Shadow Warding
		[02] = { itemID = 22538 }; --Formula: Enchant Ring - Stats
		[03] = { itemID = 30833 }; --Pattern: Cloak of Arcane Evasion
		[04] = { itemID = 30633 }; --Auchenai Key
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 30834 }; --Shapeshifter's Signet
		[02] = { itemID = 30832 }; --Gavel of Unearthed Secrets
		[03] = { itemID = 30830 }; --Trident of the Outcast Tribe
		[04] = { itemID = 33148 }; --Formula: Enchant Cloak - Dodge
		[05] = { itemID = 31357 }; --Recipe: Flask of Chromatic Resistance
		[06] = { itemID = 31778 }; --Lower City Tabard
	};
};

------------------
---Netherwing ---
------------------

AtlasLoot_Data["Netherwing"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Netherwing"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 32694 }; --Overseer's Badge
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 32695 }; --Captain's Badge
		[02] = { itemID = 32863 }; --Skybreaker Whip
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 32864 }; --Commander's Badge
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 32858 }; --Reins of the Azure Netherwing Drake
		[02] = { itemID = 32859 }; --Reins of the Cobalt Netherwing Drake
		[03] = { itemID = 32857 }; --Reins of the Onyx Netherwing Drake
		[04] = { itemID = 32860 }; --Reins of the Purple Netherwing Drake
		[05] = { itemID = 32861 }; --Reins of the Veridian Netherwing Drake
		[06] = { itemID = 32862 }; --Reins of the Violet Netherwing Drake
	};
};

---------------
---Ogri'la ---
---------------

AtlasLoot_Data["Ogrila"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Ogri'la"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 32910 }; --AtlasLoot.Colors.RED Ogre Brew Special
		[02] = { itemID = 32909 }; --AtlasLoot.Colors.BLUE Ogre Brew Special
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 32784, price = "2 #ogrilashard#" }; --AtlasLoot.Colors.RED Ogre Brew
		[02] = { itemID = 32783, price = "3 #ogrilashard#" }; --AtlasLoot.Colors.BLUE Ogre Brew
		[03] = { itemID = 32572 }; --Apexis Crystal
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 32653, price = "1 #ogrilacrystal# 50 #ogrilashard#" }; --Apexis Cloak
		[02] = { itemID = 32654, price = "1 #ogrilacrystal# 50 #ogrilashard#" }; --Crystalforged Trinket
		[03] = { itemID = 32652, price = "1 #ogrilacrystal# 50 #ogrilashard#" }; --Ogri'la Aegis
		[04] = { itemID = 32650, price = "1 #ogrilacrystal# 50 #ogrilashard#" }; --Cerulean Crystal Rod
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 32647, price = "4 #ogrilacrystal# 100 #ogrilashard#" }; --Shard-bound Bracers
		[02] = { itemID = 32648, price = "4 #ogrilacrystal# 100 #ogrilashard#" }; --Vortex Walking Boots
		[03] = { itemID = 32651 , price = "4 #ogrilacrystal# 100 #ogrilashard#" }; --Crystal Orb of Enlightenment
		[04] = { itemID = 32645, price = "4 #ogrilacrystal# 100 #ogrilashard#" }; --Crystalline Crossbow
		[05] = { itemID = 32828 , price = "10 #ogrilashard#" }; --Ogri'la Tabard
		[06] = { itemID = 32569 }; --Apexis Shard
	};
};

-------------------------
---Sha'tari Skyguard ---
-------------------------

AtlasLoot_Data["Skyguard"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Sha'tari Skyguard"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 32722 }; --Enriched Terocone Juice
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 32721 }; --Skyguard Rations
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 32539 }; --Skyguard's Drape
		[02] = { itemID = 32538 }; --Skywitch's Drape
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 32770 }; --Skyguard Silver Cross
		[02] = { itemID = 32771 }; --Airman's Ribbon of Gallantry
		[03] = { itemID = 32319 }; --AtlasLoot.Colors.BLUE Riding Nether Ray
		[04] = { itemID = 32314 }; --AtlasLoot.Colors.GREEN Riding Nether Ray
		[05] = { itemID = 32317 }; --AtlasLoot.Colors.RED Riding Nether Ray
		[06] = { itemID = 32316 }; --Purple Riding Nether Ray
		[07] = { itemID = 32318 }; --Silver Riding Nether Ray
		[08] = { itemID = 38628 }; --Nether Ray Fry
		[09] = { itemID = 32445 }; --Skyguard Tabard
	};
};

-------------------------------
---Shattered Sun Offensive ---
-------------------------------

AtlasLoot_Data["SunOffensive"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Shattered Sun Offensive"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 35244 }; --Design: Bold Crimson Spinel
		[02] = { itemID = 35245 }; --Design: Bright Crimson Spinel
		[03] = { itemID = 35255 }; --Design: Brilliant Lionseye
		[04] = { itemID = 35246 }; --Design: Delicate Crimson Spinel
		[05] = { itemID = 35256 }; --Design: Gleaming Lionseye
		[06] = { itemID = 35262 }; --Design: Lustrous Empyrean Sapphire
		[07] = { itemID = 35248 }; --Design: Runed Crimson Spinel
		[08] = { itemID = 35260 }; --Design: Smooth Lionseye
		[09] = { itemID = 35263 }; --Design: Solid Empyrean Sapphire
		[10] = { itemID = 35264 }; --Design: Sparkling Empyrean Sapphire
		[11] = { itemID = 35249 }; --Design: Subtle Crimson Spinel
		[12] = { itemID = 35250 }; --Design: Teardrop Crimson Spinel
		[13] = { itemID = 35261 }; --Design: Thick Lionseye
		[14] = { itemID = 34780 }; --Naaru Ration
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 35238 }; --Design: Balanced Shadowsong Amethyst
		[02] = { itemID = 35251 }; --Design: Dazzling Seaspray Emerald
		[03] = { itemID = 35266 }; --Design: Glinting Pyrestone
		[04] = { itemID = 35239 }; --Design: Glowing Shadowsong Amethyst
		[05] = { itemID = 35240 }; --Design: Infused Shadowsong Amethyst
		[06] = { itemID = 35253 }; --Design: Jagged Seaspray Emerald
		[07] = { itemID = 35268 }; --Design: Luminous Pyrestone
		[08] = { itemID = 35269 }; --Design: Potent Pyrestone
		[09] = { itemID = 35254 }; --Design: Radiant Seaspray Emerald
		[10] = { itemID = 34872 }; --Formula: Void Shatter
		[11] = { itemID = 35500 }; --Formula: Enchant Chest - Defense
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 35769 }; --Design: Forceful Seaspray Emerald
		[02] = { itemID = 35768 }; --Design: Quick Lionseye
		[03] = { itemID = 35767 }; --Design: Reckless Pyrestone
		[04] = { itemID = 35766 }; --Design: Steady Seaspray Emerald
		[05] = { itemID = 34665 }; --Bombardier's Blade
		[06] = { itemID = 34667 }; --Archmage's Guile
		[07] = { itemID = 34672 }; --Inuuro's Blade
		[08] = { itemID = 34666 }; --The Sunbreaker
		[09] = { itemID = 34671 }; --K'iru's Presage
		[10] = { itemID = 34670 }; --Seeker's Gavel
		[11] = { itemID = 34673 }; --Legionfoe
		[12] = { itemID = 34674 }; --Truestrike Crossbow
		[13] = { itemID = 29193 }; --Arcanum of the Gladiator
		[14] = { itemID = 35252 }; --Design: Enduring Seaspray Emerald
		[15] = { itemID = 35697 }; --Design: Figurine - Crimson Serpent
		[16] = { itemID = 35695 }; --Design: Figurine - Empyrean Tortoise
		[17] = { itemID = 35696 }; --Design: Figurine - Khorium Boar
		[18] = { itemID = 35699 }; --Design: Figurine - Seaspray Albatross
		[19] = { itemID = 35698 }; --Design: Figurine - Shadowsong Panther
		[20] = { itemID = 35259 }; --Design: Rigid Lionseye
		[21] = { itemID = 35241 }; --Design: Royal Shadowsong Amethyst
		[22] = { itemID = 35271 }; --Design: Wicked Pyrestone
		[23] = { itemID = 35505 }; --Design: Ember Skyfire Diamond
		[24] = { itemID = 35502 }; --Design: Eternal Earthstorm Diamond
		[25] = { itemID = 35708 }; --Design: Regal Nightseye
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 34678 }; --Shattered Sun Pendant of Acumen
		[02] = { itemID = 34679 }; --Shattered Sun Pendant of Might
		[03] = { itemID = 34680 }; --Shattered Sun Pendant of Resolve
		[04] = { itemID = 34677 }; --Shattered Sun Pendant of Restoration
		[05] = { itemID = 34676 }; --Dawnforged Defender
		[06] = { itemID = 34675 }; --Sunward Crest
		[07] = { itemID = 35325 }; --Design: Forceful Talasite
		[08] = { itemID = 35322 }; --Design: Quick Dawnstone
		[09] = { itemID = 35323 }; --Design: Reckless Noble Topaz
		[10] = { itemID = 35221 }; --Tabard of the Shattered Sun
		[11] = { itemID = 35247 }; --Design: Flashing Crimson Spinel
		[12] = { itemID = 35257 }; --Design: Great Lionseye
		[13] = { itemID = 35267 }; --Design: Inscribed Pyrestone
		[14] = { itemID = 35258 }; --Design: Mystic Lionseye
		[15] = { itemID = 37504 }; --Design: Purified Shadowsong Amethyst
		[16] = { itemID = 35242 }; --Design: Shifting Shadowsong Amethyst
		[17] = { itemID = 35243 }; --Design: Sovereign Shadowsong Amethyst
		[18] = { itemID = 35265 }; --Design: Stormy Empyrean Sapphire
		[19] = { itemID = 35270 }; --Design: Veiled Pyrestone
		[20] = { itemID = 35755 }; --Recipe: Assassin's Alchemist Stone
		[21] = { itemID = 35752 }; --Recipe: Guardian's Alchemist Stone
		[22] = { itemID = 35754 }; --Recipe: Redeemer's Alchemist Stone
		[23] = { itemID = 35753 }; --Recipe: Sorcerer's Alchemist Stone
	};
};

-----------------
---Sporeggar ---
-----------------

AtlasLoot_Data["Sporeggar"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Sporeggar"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 27689, price = "2 #glowcap#" }; --Recipe: Sporeling Snack
		[02] = { itemID = 30156, price = "1 #glowcap#" };
		[03] = { itemID = 25548 , price = "1 #glowcap#" }; --Tallstalk Mushroom
		[04] = { itemID = 24539 , price = "2 #glowcap#" }; --Marsh Lichen
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 25827, price = "25 #glowcap#" }; --Muck-Covered Drape
		[02] = { itemID = 25828, price = "15 #glowcap#" }; --Petrified Lichen Guard
		[03] = { itemID = 25550 , price = "1 #glowcap#" }; --Redcap Toadstool
		[04] = { itemID = 24245 }; --Glowcap
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29150, price = "45 #glowcap#" }; --Hardened Stone Shard
		[02] = { itemID = 29149, price = "20 #glowcap#" }; --Sporeling's Firestick
		[03] = { itemID = 22916, price = "25 #glowcap#" }; --Recipe: Transmute Primal Earth to Water
		[04] = { itemID = 38229, price = "25 #glowcap#" };
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 34478, price = "30 #glowcap#" }; --Tiny Sporebat
		[02] = { itemID = 22906, price = "30 #glowcap#" }; --Recipe: Shrouding Potion
		[03] = { itemID = 31775 , price = "10 #glowcap#" }; --Sporeggar Tabard
	};
};

-----------------
---The Aldor ---
-----------------

AtlasLoot_Data["Aldor"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Aldor"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 23149 }; --Design: Gleaming Golden Draenite
		[02] = { itemID = 23601 }; --Plans: Flamebane Bracers
		[03] = { itemID = 30842 }; --Pattern: Flameheart Bracers
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 29129 }; --Anchorite's Robes
		[02] = { itemID = 23145 }; --Design: Royal Shadow Draenite
		[03] = { itemID = 23603 }; --Plans: Flamebane Gloves
		[04] = { itemID = 29704 }; --Pattern: Blastguard Belt
		[05] = { itemID = 29693 }; --Pattern: Flamescale Belt
		[06] = { itemID = 30843 }; --Pattern: Flameheart Gloves
		[07] = { itemID = 24293 }; --Pattern: Silver Spellthread
		[16] = { itemID = 2028907, desc = AL["Shoulder Enchants"] }; --Inscription Inscription of the Blade
		[17] = { itemID = 2028908, desc = AL["Shoulder Enchants"] }; --Inscription Inscription of the Knight
		[18] = { itemID = 2028904, desc = AL["Shoulder Enchants"] }; --Inscription Inscription of the Oracle
		[19] = { itemID = 2028903, desc = AL["Shoulder Enchants"] }; --Inscription Inscription of the Orb
		[20] = { itemID = 28881, desc = AL["Shoulder Enchants"] }; --Inscription of Discipline
		[21] = { itemID = 28878, desc = AL["Shoulder Enchants"] }; --Inscription of Faith
		[22] = { itemID = 28885, desc = AL["Shoulder Enchants"] }; --Inscription of Vengeance
		[23] = { itemID = 28882, desc = AL["Shoulder Enchants"] }; --Inscription of Warding
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29127 }; --Vindicator's Hauberk
		[02] = { itemID = 29128 }; --Lightwarden's Band
		[03] = { itemID = 29130 }; --Auchenai Staff
		[04] = { itemID = 24177 }; --Design: Pendant of Shadow's End
		[05] = { itemID = 23604 }; --Plans: Flamebane Breastplate
		[06] = { itemID = 29703 }; --Pattern: Blastguard Boots
		[07] = { itemID = 29691 }; --Pattern: Flamescale Boots
		[08] = { itemID = 25721 }; --Pattern: Vindicator's Armor Kit
		[16] = { itemID = 2028910, desc = AL["Shoulder Enchants"] }; --Greater Inscription of the Blade
		[17] = { itemID = 2028911, desc = AL["Shoulder Enchants"] }; --Greater Inscription of the Knight
		[18] = { itemID = 2028912, desc = AL["Shoulder Enchants"] }; --Greater Inscription of the Oracle
		[19] = { itemID = 2028909, desc = AL["Shoulder Enchants"] }; --Greater Inscription of the Orb
		[20] = { itemID = 28886, desc = AL["Shoulder Enchants"] }; --Greater Inscription of Discipline
		[21] = { itemID = 28887, desc = AL["Shoulder Enchants"] }; --Greater Inscription of Faith
		[22] = { itemID = 28888, desc = AL["Shoulder Enchants"] }; --Greater Inscription of Vengeance
		[23] = { itemID = 28889, desc = AL["Shoulder Enchants"] }; --Greater Inscription of Warding
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29123 }; --Medallion of the Lightbearer
		[02] = { itemID = 29124 }; --Vindicator's Brand
		[03] = { itemID = 23602 }; --Plans: Flamebane Helm
		[04] = { itemID = 29702 }; --Pattern: Blastguard Pants
		[05] = { itemID = 29689 }; --Pattern: Flamescale Leggings
		[06] = { itemID = 24295 }; --Pattern: Golden Spellthread
		[07] = { itemID = 30844 }; --Pattern: Flameheart Vest
		[08] = { itemID = 31779 }; --Aldor Tabard
		[16] = { itemID = 2228910, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Blade
		[17] = { itemID = 2228911, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Knight
		[18] = { itemID = 2228912, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Oracle
		[19] = { itemID = 2228909, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Orb
		[20] = { itemID = 228886, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Discipline
		[21] = { itemID = 228887, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Faith
		[22] = { itemID = 228888, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vengeance
		[23] = { itemID = 228889, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Warding
		[24] = { itemID = 2228913, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Guardian
		[25] = { itemID = 2228914, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Phalanx
		[26] = { itemID = 228891, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Protection
		[27] = { itemID = 228890, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vigilance
	};
};

----------------------
---The Consortium ---
----------------------

AtlasLoot_Data["Consortium"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Consortium"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 25732 }; --Pattern: Fel Leather Gloves
		[02] = { itemID = 28274 }; --Formula: Enchant Cloak - Spell Penetration
		[03] = { itemID = 23146 }; --Design: Shifting Shadow Draenite
		[04] = { itemID = 23136 }; --Design: Luminous Flame Spessarite
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 29457 }; --Nethershard
		[02] = { itemID = 29456 }; --Gift of the Ethereal
		[03] = { itemID = 29118 }; --Smuggler's Ammo Pouch
		[04] = { itemID = 25733 }; --Pattern: Fel Leather Boots
		[05] = { itemID = 23134 }; --Design: Delicate Blood Garnet
		[06] = { itemID = 23155 }; --Design: Lustrous Azure Moonstone
		[07] = { itemID = 23150 }; --Design: Thick Golden Draenite
		[08] = { itemID = 22552 }; --Formula: Enchant Weapon - Major Striking
		[09] = { itemID = 25908 }; --Design: Swift Skyfire Diamond
		[10] = { itemID = 25902 }; --Design: Powerful Earthstorm Diamond
		[11] = { itemID = 24314 }; --Pattern: Bag of Jewels
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29117 }; --Stormspire Vest
		[02] = { itemID = 29116 }; --Nomad's Leggings
		[03] = { itemID = 29115 }; --Consortium Blaster
		[04] = { itemID = 24178 }; --Design: Pendant of the Null Rune
		[05] = { itemID = 25734 }; --Pattern: Fel Leather Leggings
		[06] = { itemID = 22535 }; --Formula: Enchant Ring - Striking
		[07] = { itemID = 23874 }; --Schematic: Elemental Seaforium Charge
		[08] = { itemID = 25903 }; --Design: Bracing Earthstorm Diamond
		[09] = { itemID = 33156 }; --Design: Crimson Sun
		[10] = { itemID = 33305 }; --Design: Don Julio's Heart
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29122 }; --Nether Runner's Cowl
		[02] = { itemID = 29119 }; --Haramad's Bargain
		[03] = { itemID = 29121 }; --Guile of Khoraazi
		[04] = { itemID = 33622 }; --Design: Relentless Earthstorm Diamond
		[05] = { itemID = 31776 }; --Consortium Tabard
	};
};

-------------------
---The Mag'har ---
-------------------

AtlasLoot_Data["Maghar"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Mag'har"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 25741 }; --Pattern: Netherfury Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 29143 }; --Clefthoof Hide Quiver
		[02] = { itemID = 25742 }; --Pattern: Netherfury Leggings
		[03] = { itemID = 34174 }; --Pattern: Drums of Restoration
		[04] = { itemID = 34172 }; --Pattern: Drums of Speed
		[05] = { itemID = 29664 }; --Pattern: Reinforced Mining Bag
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29147 }; --Talbuk Hide Spaulders
		[02] = { itemID = 29141 }; --Tempest Leggings
		[03] = { itemID = 29145 }; --Band of Ancestral Spirits
		[04] = { itemID = 25743 }; --Pattern: Netherfury Boots
		[05] = { itemID = 22917 }; --Recipe: Transmute Primal Fire to Earth
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29102 }; --Reins of the Cobalt War Talbuk
		[02] = { itemID = 29104 }; --Reins of the Silver War Talbuk
		[03] = { itemID = 29105 }; --Reins of the Tan War Talbuk
		[04] = { itemID = 29103 }; --Reins of the AtlasLoot.Colors.WHITE War Talbuk
		[05] = { itemID = 31829 }; --Reins of the Cobalt Riding Talbuk
		[06] = { itemID = 31831 }; --Reins of the Silver Riding Talbuk
		[07] = { itemID = 31833 }; --Reins of the Tan Riding Talbuk
		[08] = { itemID = 31835 }; --Reins of the AtlasLoot.Colors.WHITE Riding Talbuk
		[09] = { itemID = 29139 }; --Ceremonial Cover
		[10] = { itemID = 29135 }; --Earthcaller's Headdress
		[11] = { itemID = 29137 }; --Hellscream's Will
		[12] = { itemID = 31773 }; --Mag'har Tabard
	};
};

------------------------------
---The Scale of the Sands ---
------------------------------

AtlasLoot_Data["ScaleSands"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Scale of the Sands"];
	scaleOfSandsRings;
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 32274 }; --Design: Bold Crimson Spinel
		[02] = { itemID = 32283 }; --Design: Bright Crimson Spinel
		[03] = { itemID = 32277 }; --Design: Delicate Crimson Spinel
		[04] = { itemID = 32282 }; --Design: Runed Crimson Spinel
		[05] = { itemID = 32284 }; --Design: Subtle Crimson Spinel
		[06] = { itemID = 32281 }; --Design: Teardrop Crimson Spinel
		[07] = { itemID = 32288 }; --Design: Lustrous Empyrean Sapphire
		[08] = { itemID = 32286 }; --Design: Solid Empyrean Sapphire
		[09] = { itemID = 32287 }; --Design: Sparkling Empyrean Sapphire
		[10] = { itemID = 32290 }; --Design: Brilliant Lionseye
		[11] = { itemID = 32293 }; --Design: Gleaming Lionseye
		[12] = { itemID = 32291 }; --Design: Smooth Lionseye
		[13] = { itemID = 32294 }; --Design: Thick Lionseye
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 35763 }; --Design: Quick Lionseye
		[02] = { itemID = 32306 }; --Design: Glinting Pyrestone
		[03] = { itemID = 32305 }; --Design: Luminous Pyrestone
		[04] = { itemID = 32304 }; --Design: Potent Pyrestone
		[05] = { itemID = 35762 }; --Design: Reckless Pyrestone
		[06] = { itemID = 32299 }; --Design: Balanced Shadowsong Amethyst
		[07] = { itemID = 32301 }; --Design: Glowing Shadowsong Amethyst
		[08] = { itemID = 32300 }; --Design: Infused Shadowsong Amethyst
		[09] = { itemID = 32311 }; --Design: Dazzling Seaspray Emerald
		[10] = { itemID = 35765 }; --Design: Forceful Seaspray Emerald
		[11] = { itemID = 32312 }; --Design: Jagged Seaspray Emerald
		[12] = { itemID = 32310 }; --Design: Radiant Seaspray Emerald
		[13] = { itemID = 35764 }; --Design: Steady Seaspray Emerald
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 31737 }; --Timeless Arrow
		[02] = { itemID = 31735 }; --Timeless Shell
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 32292 }; --Design: Rigid Lionseye
		[02] = { itemID = 32308 }; --Design: Wicked Pyrestone
		[03] = { itemID = 32309 }; --Design: Enduring Seaspray Emerald
		[04] = { itemID = 32302 }; --Design: Royal Shadowsong Amethyst
	};
};

-------------------
---The Scryers ---
-------------------

AtlasLoot_Data["Scryer"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Scryers"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 23133 }; --Design: Runed Blood Garnet
		[02] = { itemID = 23597 }; --Plans: Enchanted Adamantite Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 23143 }; --Design: Dazzling Deep Peridot
		[02] = { itemID = 23598 }; --Plans: Enchanted Adamantite Boots
		[03] = { itemID = 29701 }; --Pattern: Enchanted Clefthoof Boots
		[04] = { itemID = 29682 }; --Pattern: Enchanted Felscale Gloves
		[05] = { itemID = 24292 }; --Pattern: Mystic Spellthread
		[16] = { itemID = 28907, desc = AL["Shoulder Enchants"] }; --Inscription Inscription of the Blade
		[17] = { itemID = 28908, desc = AL["Shoulder Enchants"] }; --Inscription Inscription of the Knight
		[18] = { itemID = 28904, desc = AL["Shoulder Enchants"] }; --Inscription Inscription of the Oracle
		[19] = { itemID = 28903, desc = AL["Shoulder Enchants"] }; --Inscription Inscription of the Orb
		[20] = { itemID = 2028881, desc = AL["Shoulder Enchants"] }; --Inscription of Discipline
		[21] = { itemID = 2028878, desc = AL["Shoulder Enchants"] }; --Inscription of Faith
		[22] = { itemID = 2028885, desc = AL["Shoulder Enchants"] }; --Inscription of Vengeance
		[23] = { itemID = 2028882, desc = AL["Shoulder Enchants"] }; --Inscription of Warding
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29131 }; --Retainer's Leggings
		[02] = { itemID = 29134 }; --Gauntlets of the Chosen
		[03] = { itemID = 29132 }; --Scryer's Bloodgem
		[04] = { itemID = 29133 }; --Seer's Cane
		[05] = { itemID = 24176 }; --Design: Pendant of Withering
		[06] = { itemID = 22908 }; --Recipe: Elixir of Major Firepower
		[07] = { itemID = 23599 }; --Plans: Enchanted Adamantite Breastplate
		[08] = { itemID = 29700 }; --Pattern: Enchanted Clefthoof Gloves
		[09] = { itemID = 29684 }; --Pattern: Enchanted Felscale Boots
		[10] = { itemID = 25722, desc = AL["Shoulder Enchants"] }; --Pattern: Magister's Armor Kit
		[16] = { itemID = 28910, desc = AL["Shoulder Enchants"] }; --Greater Inscription of the Blade
		[17] = { itemID = 28911, desc = AL["Shoulder Enchants"] }; --Greater Inscription of the Knight
		[18] = { itemID = 28912, desc = AL["Shoulder Enchants"] }; --Greater Inscription of the Oracle
		[19] = { itemID = 28909, desc = AL["Shoulder Enchants"] }; --Greater Inscription of the Orb
		[20] = { itemID = 2028886, desc = AL["Shoulder Enchants"] }; --Greater Inscription of Discipline
		[21] = { itemID = 2028887, desc = AL["Shoulder Enchants"] }; --Greater Inscription of Faith
		[22] = { itemID = 2028888, desc = AL["Shoulder Enchants"] }; --Greater Inscription of Vengeance
		[23] = { itemID = 2028889, desc = AL["Shoulder Enchants"] }; --Greater Inscription of Warding
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29126 }; --Seer's Signet
		[02] = { itemID = 29125 }; --Retainer's Blade
		[03] = { itemID = 23600 }; --Plans: Enchanted Adamantite Leggings
		[04] = { itemID = 29698 }; --Pattern: Enchanted Clefthoof Leggings
		[05] = { itemID = 29677 }; --Pattern: Enchanted Felscale Leggings
		[06] = { itemID = 24294 }; --Pattern: Runic Spellthread
		[07] = { itemID = 31780 }; --Scryers Tabard
		[16] = { itemID = 228910, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Blade
		[17] = { itemID = 228911, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Knight
		[18] = { itemID = 228912, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Oracle
		[19] = { itemID = 228909, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Orb
		[20] = { itemID = 2228886, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Discipline
		[21] = { itemID = 2228887, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Faith
		[22] = { itemID = 2228888, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vengeance
		[23] = { itemID = 2228889, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Warding
		[24] = { itemID = 228913, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Guardian
		[25] = { itemID = 228914, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Phalanx
		[26] = { itemID = 2228891, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Protection
		[27] = { itemID = 2228890, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vigilance
	};
};

-------------------
---The Sha'tar ---
-------------------

AtlasLoot_Data["Shatar"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Sha'tar"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 25904 }; --Design: Insightful Earthstorm Diamond
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 29180 }; --Blessed Scale Girdle
		[02] = { itemID = 29179 }; --Xi'ri's Gift
		[03] = { itemID = 24182 }; --Design: Talasite Owl
		[04] = { itemID = 29191 }; --Arcanum of Power
		[05] = { itemID = 22915 }; --Recipe: Transmute Primal Air to Fire
		[06] = { itemID = 28281 }; --Formula: Enchant Weapon - Major Healing
		[07] = { itemID = 13517 }; --Recipe: Alchemist's Stone
		[08] = { itemID = 22537 }; --Formula: Enchant Ring - Healing Power
		[09] = { itemID = 33159 }; --Design: Blood of Amber
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 30826 }; --Design: Ring of Arcane Shielding
		[02] = { itemID = 29195 }; --Arcanum of Arcane Warding
		[03] = { itemID = 28273 }; --Formula: Enchant Gloves - Major Healing
		[04] = { itemID = 33155 }; --Design: Kailee's Rose
		[05] = { itemID = 29717 }; --Pattern: Drums of Battle
		[06] = { itemID = 30634 }; --Warpforged Key
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29177 }; --A'dal's Command
		[02] = { itemID = 29175 }; --Gavel of Pure Light
		[03] = { itemID = 29176 }; --Crest of the Sha'tar
		[04] = { itemID = 33153 }; --Formula: Enchant Gloves - Threat
		[05] = { itemID = 31354 }; --Recipe: Flask of the Titans
		[06] = { itemID = 31781 }; --Sha'tar Tabard
	};
};

----------------------
---The Violet Eye ---
----------------------

AtlasLoot_Data["VioletEye"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Violet Eye"];
	{
		Name = "Rings";
		[01] = { icon = "INV_Jewelry_Ring_62", name = AtlasLoot.Colors.WHITE.. AL["Path of the Violet Assassin"] };
		[02] = { itemID = 29280 }; --Violet Signet
		[03] = { itemID = 29281 }; --Violet Signet
		[04] = { itemID = 29282 }; --Violet Signet
		[05] = { itemID = 29283 }; --Violet Signet of the Master Assassin
		[07] = { icon = "INV_Jewelry_Ring_62", name = AtlasLoot.Colors.WHITE.. AL["Path of the Violet Mage"] };
		[08] = { itemID = 29284 }; --Violet Signet
		[09] = { itemID = 29285 }; --Violet Signet
		[10] = { itemID = 29286 }; --Violet Signet
		[11] = { itemID = 29287 }; --Violet Signet of the Archmage
		[16] = { icon = "INV_Jewelry_Ring_62", name = AtlasLoot.Colors.WHITE.. AL["Path of the Violet Restorer"] };
		[17] = { itemID = 29288 }; --Violet Signet
		[18] = { itemID = 29289 }; --Violet Signet
		[19] = { itemID = 29291 }; --Violet Signet
		[20] = { itemID = 29290 }; --Violet Signet of the Grand Restorer
		[22] = { icon = "INV_Jewelry_Ring_62", name = AtlasLoot.Colors.WHITE.. AL["Path of the Violet Protector"] };
		[23] = { itemID = 29276 }; --Violet Signet
		[24] = { itemID = 29277 }; --Violet Signet
		[25] = { itemID = 29278 }; --Violet Signet
		[26] = { itemID = 29279 }; --Violet Signet of the Great Protector
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 31113 }; --Violet Badge
		[02] = { itemID = 31395 }; --Plans: Iceguard Helm
		[03] = { itemID = 31393 }; --Plans: Iceguard Breastplate
		[04] = { itemID = 31401 }; --Design: The Frozen Eye
		[05] = { itemID = 29187 }; --Inscription of Endurance
		[06] = { itemID = 33209 }; --Recipe: Flask of Chromatic Wonder
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 34581 }; --Mysterious Arrow
		[02] = { itemID = 34582 }; --Mysterious Shell
		[03] = { itemID = 31394 }; --Plans: Iceguard Leggings
		[04] = { itemID = 33205 }; --Pattern: Shadowprowler's Chestguard
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 33124 }; --Pattern: Cloak of Darkness
		[02] = { itemID = 33165 }; --Formula: Enchant Weapon - Greater Agility
	};
};

-----------------
---Thrallmar ---
-----------------

AtlasLoot_Data["Thrallmar"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Thrallmar"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 25738 }; --Pattern: Felstalker Belt
		[02] = { itemID = 31359 }; --Design: Enduring Deep Peridot
		[03] = { itemID = 24000 }; --Formula: Enchant Bracer - Superior Healing
		[04] = { itemID = 24006 }; --Grunt's Waterskin
		[05] = { itemID = 24009 }; --Dried Fruit Rations
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 25824 }; --Farseer's Band
		[02] = { itemID = 25823 }; --Grunt's Waraxe
		[03] = { itemID = 25739 }; --Pattern: Felstalker Bracers
		[04] = { itemID = 25740 }; --Pattern: Felstalker Breastplate
		[05] = { itemID = 29197 }; --Arcanum of Fire Warding
		[06] = { itemID = 29232 }; --Recipe: Transmute Skyfire Diamond
		[07] = { itemID = 24001 }; --Recipe: Elixir of Major Agility
		[08] = { itemID = 31361 }; --Pattern: Cobrahide Leg Armor
		[09] = { itemID = 30637 }; --Flamewrought Key
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 29168 }; --Ancestral Band
		[02] = { itemID = 29167 }; --Blackened Spear
		[03] = { itemID = 32882 }; --Hellfire Shot
		[04] = { itemID = 31358 }; --Design: Dawnstone Crab
		[05] = { itemID = 29190 }; --Arcanum of Renewal
		[06] = { itemID = 24003 }; --Formula: Enchant Chest - Exceptional Stats
		[07] = { itemID = 34201 }; --Pattern: Netherscale Ammo Pouch
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 29155 }; --Stormcaller
		[02] = { itemID = 29165 }; --Warbringer
		[03] = { itemID = 29152 }; --Marksman's Bow
		[04] = { itemID = 33151 }; --Formula: Enchant Cloak - Subtlety
		[05] = { itemID = 24002 }; --Plans: Felsteel Shield Spike
		[06] = { itemID = 31362 }; --Pattern: Nethercobra Leg Armor
		[07] = { itemID = 24004 }; --Thrallmar Tabard
	};
};

--------------------
---Tranquillien ---
--------------------

AtlasLoot_Data["Tranquillien"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Tranquillien"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 22991 }; --Apprentice Boots
		[02] = { itemID = 22992 }; --Bogwalker Boots
		[03] = { itemID = 22993 }; --Volunteer's Greaves
		[04] = { itemID = 28164 }; --Tranquillien Flamberge
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 28155 }; --Apothecary's Waistband
		[02] = { itemID = 28158 }; --Batskin Belt
		[03] = { itemID = 28162 }; --Tranquillien Defender's Girdle
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 22986 }; --Apothecary's Robe
		[02] = { itemID = 22987 }; --Deathstalker's Vest
		[03] = { itemID = 22985 }; --Suncrown Hauberk
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 22990 }; --Tranquillien Champion's Cloak
	};
};

------------
---Misc ---
------------

AtlasLoot_Data["ShattrathFlasks"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Shattrath Flasks";
	{
		Name = "Shattrath Flasks";
		[01] = { itemID = 32898 }; --Shattrath Flask of Fortification
		[02] = { itemID = 32899 }; --Shattrath Flask of Mighty
		[03] = { itemID = 32901 }; --Shattrath Flask of Relentless
		[04] = { itemID = 32900 }; --Shattrath Flask of Supreme Power
	};
};

-----------
---PvP ---
-----------

---------------------------------------------------------------
---World PvP - Hellfire Peninsula: Hellfire Fortifications ---
---------------------------------------------------------------

AtlasLoot_Data["PVPHellfire"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Hellfire Fortifications"];
	{
		Name = AL["Hellfire Fortifications"];
		[01] = { itemID = 27833, desc = "=ds=15 #markthrallmarhhold#" }; --Band of the Victor
		[02] = { itemID = 27786, desc = "=ds=10 #markthrallmarhhold#" }; --Barbed Deep Peridot
		[03] = { itemID = 28360, desc = "=ds=10 #markthrallmarhhold#" }; --Mighty Blood Garnet
		[05] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE..BabbleFaction["Alliance"] };
		[06] = { itemID = 24520, desc = "=ds=5 #markhhold#" }; --Honor Hold Favor
		[07] = { itemID = 24579, desc = "=ds="..AL["Currency (Alliance)"] }; --Mark of Honor Hold
		[16] = { itemID = 27830, desc = "=ds=15 #markthrallmarhhold#" }; --Circlet of the Victor
		[17] = { itemID = 27785, desc = "=ds=10 #markthrallmarhhold#" }; --Notched Deep Peridot
		[18] = { itemID = 27777, desc = "=ds=10 #markthrallmarhhold#" }; --Stark Blood Garnet
		[20] = { icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE..BabbleFaction["Horde"] };
		[21] = { itemID = 24522, desc = "=ds=5 #markthrallmar#" }; --Thrallmar Favor
		[22] = { itemID = 24581, desc = "=ds="..AL["Currency (Horde)"] }; --Mark of Thrallmar
	};
};

AtlasLoot_Data["PVPHalaa"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Nagrand"] .. ": " .. AL["Halaa"];
	{
		Name = AL["Page 1"];
		[01] = { itemID = 28915 , price = "70 #halaabattle# 15 #halaaresearch#" }; --Reins of the Dark Riding Talbuk
		[02] = { itemID = 27679, price = "100 #halaabattle#" }; --Sublime Mystic Dawnstone
		[03] = { itemID = 27649, price = "40 #halaabattle# 2 #halaaresearch#" }; --Hierophant's Leggings
		[04] = { itemID = 27648, price = "40 #halaabattle# 2 #halaaresearch#" }; --Dreamstalker Leggings
		[05] = { itemID = 27650, price = "40 #halaabattle# 2 #halaaresearch#" }; --Shadowstalker's Leggings
		[06] = { itemID = 27647, price = "40 #halaabattle# 2 #halaaresearch#" }; --Marksman's Legguards
		[07] = { itemID = 27652, price = "40 #halaabattle# 2 #halaaresearch#" }; --Stormbreaker's Leggings
		[08] = { itemID = 27654, price = "40 #halaabattle# 2 #halaaresearch#" }; --Avenger's Legguards
		[09] = { itemID = 27653, price = "40 #halaabattle# 2 #halaaresearch#" }; --Slayer's Legguards
		[11] = { itemID = 24208 }; --Design: Mystic Dawnstone
		[14] = { itemID = 26045 }; --Halaa Battle Token
		[16] = { itemID = 29228 , price = "100 #halaabattle# 20 #halaaresearch#" }; --Reins of the Dark War Talbuk
		[17] = { itemID = 27680, price = "8 #halaaresearch#" }; --Halaani Bag
		[18] = { itemID = 27638, price = "20 #halaabattle# 1 #halaaresearch#" }; --Hierophant's Sash
		[19] = { itemID = 27645, price = "20 #halaabattle# 1 #halaaresearch#" }; --Dreamstalker Sash
		[20] = { itemID = 27637, price = "20 #halaabattle# 1 #halaaresearch#" }; --Shadowstalker's Sash
		[21] = { itemID = 27646, price = "20 #halaabattle# 1 #halaaresearch#" }; --Marksman's Belt
		[22] = { itemID = 27643, price = "20 #halaabattle# 1 #halaaresearch#" }; --Stormbreaker's Girdle
		[23] = { itemID = 27644, price = "20 #halaabattle# 1 #halaaresearch#" }; --Avenger's Waistguard
		[24] = { itemID = 27639, price = "20 #halaabattle# 1 #halaaresearch#" }; --Slayer's Waistguard
		[26] = { itemID = 33783, price = "4 #halaaresearch#" }; --Design: Steady Talasite
		[27] = { itemID = 32071, price = "2 #halaaresearch#" }; --Recipe: Elixir of Ironskin
		[29] = { itemID = 26044 }; --Halaa Research Token
	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 30611 }; --Halaani Razorshaft
		[02] = { itemID = 30615 }; --Halaani Whiskey
		[04] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE..BabbleFaction["Alliance"] };
		[05] = { itemID = 30598 }; --Don Amancio's Heart
		[06] = { itemID = 30597 }; --Halaani Claymore
		[07] = { itemID = 30599 }; --Avenging Blades
		[16] = { itemID = 30612 }; --Halaani Grimshot
		[19] = { icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE..BabbleFaction["Horde"] };
		[20] = { itemID = 30571 }; --Don Rodrigo's Heart
		[21] = { itemID = 30570 }; --Arkadian Claymore
		[22] = { itemID = 30568 }; --The Sharp Cookie
	};
};

AtlasLoot_Data["PVPSpiritTowers"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Spirit Towers"];
	{
		Name = BabbleZone["Terokkar Forest"] .. ": " .. AL["Spirit Towers"];
		[01] = { itemID = 28553 , price = "50 #spiritshard#" }; --Band of the Exorcist
		[02] = { itemID = 28557, price = "8 #spiritshard#" }; --Swift Starfire Diamond
		[03] = { itemID = 28759, price = "18 #spiritshard#" }; --Exorcist's Dreadweave Hood
		[04] = { itemID = 28574, price = "18 #spiritshard#" }; --Exorcist's Dragonhide Helm
		[05] = { itemID = 28575, price = "18 #spiritshard#" }; --Exorcist's Wyrmhide Helm
		[06] = { itemID = 28577, price = "18 #spiritshard#" }; --Exorcist's Linked Helm
		[07] = { itemID = 28560, price = "18 #spiritshard#" }; --Exorcist's Lamellar Helm
		[08] = { itemID = 28761, price = "18 #spiritshard#" }; --Exorcist's Scaled Helm
		[10] = { itemID = 32947, price = "2 #spiritshard#" }; --Auchenai Healing Potion
		[12] = { itemID = 28558 }; --Spirit Shard
		[16] = { itemID = 28555 , price = "50 #spiritshard#" }; --Seal of the Exorcist
		[17] = { itemID = 28556, price = "8 #spiritshard#" }; --Swift Windfire Diamond
		[18] = { itemID = 28760, price = "18 #spiritshard#" }; --Exorcist's Silk Hood
		[19] = { itemID = 28561, price = "18 #spiritshard#" }; --Exorcist's Leather Helm
		[20] = { itemID = 28576, price = "18 #spiritshard#" }; --Exorcist's Chain Helm
		[21] = { itemID = 28758, price = "18 #spiritshard#" }; --Exorcist's Mail Helm
		[22] = { itemID = 28559, price = "18 #spiritshard#" }; --Exorcist's Plate Helm
		[25] = { itemID = 32948, price = "2 #spiritshard#" }; --Auchenai Mana Potion
	};
};

AtlasLoot_Data["PVPTwinSpireRuins"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Twin Spire Ruins"];
	{
		Name = BabbleZone["Zangarmarsh"] .. ": " .. AL["Twin Spire Ruins"];
		[01] = { itemID = 27990, price = "15 #markthrallmarhhold#" }; --Idol of Savagery
		[02] = { itemID = 27984, price = "15 #markthrallmarhhold#" }; --Totem of Impact
		[03] = { itemID = 27922, price = "30 #markthrallmarhhold#" }; --Mark of Defiance
		[04] = { itemID = 27929, price = "15 #markthrallmarhhold#" }; --Terminal Edge
		[05] = { itemID = 27939, price = "15 #markthrallmarhhold#" }; --Incendic Rod
		[07] = { itemID = 24579, desc = "=ds="..AL["Currency (Alliance)"] }; --Mark of Honor Hold
		[16] = { itemID = 27983, price = "15 #markthrallmarhhold#" }; --Libram of Zeal
		[17] = { itemID = 27920, price = "30 #markthrallmarhhold#" }; --Mark of Conquest
		[18] = { itemID = 27927, price = "30 #markthrallmarhhold#" }; --Mark of Vindication
		[19] = { itemID = 27930, price = "15 #markthrallmarhhold#" }; --Splintermark
		[22] = { itemID = 24581, desc = "=ds="..AL["Currency (Horde)"] }; --Mark of Thrallmar
	};
};

-------------------------------------
---Rep-PvP Level 70 - Armor Sets ---
-------------------------------------

AtlasLoot_Data["PVP70RepGear"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Rep PVP Gear";
	{
		Name = BabbleInventory["Cloth"];
		[01] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Satin Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[02] = { itemID = 35339, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Hood
		[03] = { itemID = 35341, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Mantle
		[04] = { itemID = 35342, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Robe
		[05] = { itemID = 35338, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Gloves
		[06] = { itemID = 35340, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Leggings
		[08] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Mooncloth Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[09] = { itemID = 35333, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Mooncloth Cowl
		[10] = { itemID = 35336, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Mooncloth Shoulderpads
		[11] = { itemID = 35337, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Mooncloth Vestments
		[12] = { itemID = 35335, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Mooncloth Mitts
		[13] = { itemID = 35334, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Mooncloth Legguards
		[16] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Evoker's Silk Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 35344, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Evoker's Silk Cowl
		[18] = { itemID = 35343, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Evoker's Silk Amice
		[19] = { itemID = 35346, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Evoker's Silk Raiment
		[20] = { itemID = 35345, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Evoker's Silk Handguards
		[21] = { itemID = 35347, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Evoker's Silk Trousers
		[23] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Dreadweave Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[24] = { itemID = 35329, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Dreadweave Hood
		[25] = { itemID = 35331, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Dreadweave Mantle
		[26] = { itemID = 35332, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Dreadweave Robe
		[27] = { itemID = 35328, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Dreadweave Gloves
		[28] = { itemID = 35330, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Dreadweave Leggings
	};
	{
		Name = BabbleInventory["Leather"];
		[01] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Dragonhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[02] = { itemID = 35357, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Helm
		[03] = { itemID = 35359, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Spaulders
		[04] = { itemID = 35360, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Robe
		[05] = { itemID = 35356, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Gloves
		[06] = { itemID = 35358, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Legguards
		[08] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Wyrmhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[09] = { itemID = 35372, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Wyrmhide Helm
		[10] = { itemID = 35374, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Wyrmhide Spaulders
		[11] = { itemID = 35375, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Wyrmhide Robe
		[12] = { itemID = 35371, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Wyrmhide Gloves
		[13] = { itemID = 35373, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Wyrmhide Legguards
		[16] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Kodohide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[17] = { itemID = 35362, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Kodohide Helm
		[18] = { itemID = 35364, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Kodohide Spaulders
		[19] = { itemID = 35365, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Kodohide Robe
		[20] = { itemID = 35361, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Kodohide Gloves
		[21] = { itemID = 35363, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Kodohide Legguards
		[23] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Opportunist's Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[24] = { itemID = 35367, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Opportunist's Leather Helm
		[25] = { itemID = 35369, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Opportunist's Leather Spaulders
		[26] = { itemID = 35370, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Opportunist's Leather Tunic
		[27] = { itemID = 35366, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Opportunist's Leather Gloves
		[28] = { itemID = 35368, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Opportunist's Leather Legguards
	};
	{
		Name = BabbleInventory["Mail"];
		[01] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Linked Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[02] = { itemID = 35383, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Helm
		[03] = { itemID = 35385, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Spaulders
		[04] = { itemID = 35381, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Armor
		[05] = { itemID = 35382, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Gauntlets
		[06] = { itemID = 35384, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Leggings
		[08] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Mail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[09] = { itemID = 35388, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Mail Helm
		[10] = { itemID = 35390, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Mail Spaulders
		[11] = { itemID = 35386, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Mail Armor
		[12] = { itemID = 35387, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Mail Gauntlets
		[13] = { itemID = 35389, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Mail Leggings
		[16] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Ringmail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[17] = { itemID = 35393, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Ringmail Headpiece
		[18] = { itemID = 35395, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Ringmail Shoulderpads
		[19] = { itemID = 35391, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Ringmail Chestguard
		[20] = { itemID = 35392, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Ringmail Gloves
		[21] = { itemID = 35394, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Ringmail Legguards
		[23] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Stalker's Chain Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[24] = { itemID = 35378, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Stalker's Chain Helm
		[25] = { itemID = 35380, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Stalker's Chain Spaulders
		[26] = { itemID = 35376, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Stalker's Chain Armor
		[27] = { itemID = 35377, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Stalker's Chain Gauntlets
		[28] = { itemID = 35379, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Stalker's Chain Leggings
	};
	{
		Name = BabbleInventory["Plate"];
		[01] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Crusader's Scaled Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[02] = { itemID = 35414, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Helm
		[03] = { itemID = 35416, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Shoulders
		[04] = { itemID = 35412, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Chestpiece
		[05] = { itemID = 35413, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Gauntlets
		[06] = { itemID = 35415, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Legguards
		[08] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Crusader's Ornamented Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[09] = { itemID = 35404, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Ornamented Headguard
		[10] = { itemID = 35406, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Ornamented Spaulders
		[11] = { itemID = 35402, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Ornamented Chestplate
		[12] = { itemID = 35403, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Ornamented Gloves
		[13] = { itemID = 35405, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Ornamented Leggings
		[16] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Savage's Plate Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] };
		[17] = { itemID = 35409, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Savage Plate Helm
		[18] = { itemID = 35411, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Savage Plate Shoulders
		[19] = { itemID = 35407, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Savage Plate Chestpiece
		[20] = { itemID = 35408, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Savage Plate Gauntlets
		[21] = { itemID = 35410, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Savage Plate Legguards
	};
	{
		Name = BabbleInventory["Cloth"] .. " - " .. BabbleFaction["Alliance"];
		[01] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Satin Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[02] = { itemID = 28705 }; --Grand Marshal's Satin Hood
		[03] = { itemID = 28707 }; --Grand Marshal's Satin Mantle
		[04] = { itemID = 28708 }; --Grand Marshal's Satin Robe
		[05] = { itemID = 28704 }; --Grand Marshal's Satin Gloves
		[06] = { itemID = 28706 }; --Grand Marshal's Satin Leggings
		[08] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Mooncloth Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[09] = { itemID = 31622 }; --Grand Marshal's Mooncloth Cowl
		[10] = { itemID = 31624 }; --Grand Marshal's Mooncloth Shoulderpads
		[11] = { itemID = 31625 }; --Grand Marshal's Mooncloth Vestments
		[12] = { itemID = 31620 }; --Grand Marshal's Mooncloth Mitts
		[13] = { itemID = 31623 }; --Grand Marshal's Mooncloth Legguards
		[16] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Evoker's Silk Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 28715 }; --Grand Marshal's Silk Cowl
		[18] = { itemID = 28714 }; --Grand Marshal's Silk Amice
		[19] = { itemID = 28717 }; --Grand Marshal's Silk Raiment
		[20] = { itemID = 28716 }; --Grand Marshal's Silk Handguards
		[21] = { itemID = 28718 }; --Grand Marshal's Silk Trousers
		[23] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Dreadweave Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[24] = { itemID = 28625 }; --Grand Marshal's Dreadweave Hood
		[25] = { itemID = 28627 }; --Grand Marshal's Dreadweave Mantle
		[26] = { itemID = 28628 }; --Grand Marshal's Dreadweave Robe
		[27] = { itemID = 28624 }; --Grand Marshal's Dreadweave Gloves
		[28] = { itemID = 28626 }; --Grand Marshal's Dreadweave Leggings

	};
	{
		Name = BabbleInventory["Leather"] .. " - " .. BabbleFaction["Alliance"];
		[01] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Dragonhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[02] = { itemID = 28619 }; --Grand Marshal's Dragonhide Helm
		[03] = { itemID = 28622 }; --Grand Marshal's Dragonhide Spaulders
		[04] = { itemID = 28623 }; --Grand Marshal's Dragonhide Robe
		[05] = { itemID = 28618 }; --Grand Marshal's Dragonhide Gloves
		[06] = { itemID = 28620 }; --Grand Marshal's Dragonhide Legguards
		[08] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Wyrmhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[09] = { itemID = 31590 }; --Grand Marshal's Wyrmhide Helm
		[10] = { itemID = 31592 }; --Grand Marshal's Wyrmhide Spaulders
		[11] = { itemID = 31593 }; --Grand Marshal's Wyrmhide Robe
		[12] = { itemID = 31589 }; --Grand Marshal's Wyrmhide Gloves
		[13] = { itemID = 31591 }; --Grand Marshal's Wyrmhide Legguards
		[16] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Kodohide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[17] = { itemID = 28720 }; --Grand Marshal's Kodohide Helm
		[18] = { itemID = 28722 }; --Grand Marshal's Kodohide Spaulders
		[19] = { itemID = 28723 }; --Grand Marshal's Kodohide Robe
		[20] = { itemID = 28719 }; --Grand Marshal's Kodohide Gloves
		[21] = { itemID = 28721 }; --Grand Marshal's Kodohide Legguards
		[23] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Opportunist's Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[24] = { itemID = 28685 }; --Grand Marshal's Leather Helm
		[25] = { itemID = 28687 }; --Grand Marshal's Leather Spaulders
		[26] = { itemID = 28688 }; --Grand Marshal's Leather Tunic
		[27] = { itemID = 28684 }; --Grand Marshal's Leather Gloves
		[28] = { itemID = 28686 }; --Grand Marshal's Leather Legguards
	};
	{
		Name = BabbleInventory["Mail"] .. " - " .. BabbleFaction["Alliance"];
		[01] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Linked Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[02] = { itemID = 28691 }; --Grand Marshal's Linked Helm
		[03] = { itemID = 28693 }; --Grand Marshal's Linked Spaulders
		[04] = { itemID = 28689 }; --Grand Marshal's Linked Armor
		[05] = { itemID = 28690 }; --Grand Marshal's Linked Gauntlets
		[06] = { itemID = 28692 }; --Grand Marshal's Linked Leggings
		[08] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Mail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[09] = { itemID = 28696 }; --Grand Marshal's Mail Helm
		[10] = { itemID = 28698 }; --Grand Marshal's Mail Spaulders
		[11] = { itemID = 28694 }; --Grand Marshal's Mail Armor
		[12] = { itemID = 28695 }; --Grand Marshal's Mail Gauntlets
		[13] = { itemID = 28697 }; --Grand Marshal's Mail Leggings
		[16] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Ringmail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[17] = { itemID = 31642 }; --Grand Marshal's Ringmail Headpiece
		[18] = { itemID = 31644 }; --Grand Marshal's Ringmail Shoulderpads
		[19] = { itemID = 31640 }; --Grand Marshal's Ringmail Chestguard
		[20] = { itemID = 31641 }; --Grand Marshal's Ringmail Gloves
		[21] = { itemID = 31643 }; --Grand Marshal's Ringmail Legguards
		[23] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Stalker's Chain Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[24] = { itemID = 28615 }; --Grand Marshal's Chain Helm
		[25] = { itemID = 28617 }; --Grand Marshal's Chain Spaulders
		[26] = { itemID = 28613 }; --Grand Marshal's Chain Armor
		[27] = { itemID = 28614 }; --Grand Marshal's Chain Gauntlets
		[28] = { itemID = 28616 }; --Grand Marshal's Chain Leggings
	};
	{
		Name = BabbleInventory["Plate"] .. " - " .. BabbleFaction["Alliance"];
		[01] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Crusader's Scaled Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[02] = { itemID = 28711 }; --Grand Marshal's Scaled Helm
		[03] = { itemID = 28713 }; --Grand Marshal's Scaled Shoulders
		[04] = { itemID = 28709 }; --Grand Marshal's Scaled Chestpiece
		[05] = { itemID = 28710 }; --Grand Marshal's Scaled Gauntlets
		[06] = { itemID = 28712 }; --Grand Marshal's Scaled Legguards
		[08] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Crusader's Ornamented Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[09] = { itemID = 31632 }; --Grand Marshal's Ornamented Headguard
		[10] = { itemID = 31634 }; --Grand Marshal's Ornamented Spaulders
		[11] = { itemID = 31630 }; --Grand Marshal's Ornamented Chestplate
		[12] = { itemID = 31631 }; --Grand Marshal's Ornamented Gloves
		[13] = { itemID = 31633 }; --Grand Marshal's Ornamented Leggings
		[16] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Savage's Plate Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] };
		[17] = { itemID = 28701 }; --Grand Marshal's Plate Helm
		[18] = { itemID = 28703 }; --Grand Marshal's Plate Shoulders
		[19] = { itemID = 28699 }; --Grand Marshal's Plate Chestpiece
		[20] = { itemID = 28700 }; --Grand Marshal's Plate Gauntlets
		[21] = { itemID = 28702 }; --Grand Marshal's Plate Legguards
		[23] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Gladiator's Aegis"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[24] = { itemID = 28681 }; --Grand Marshal's Lamellar Helm
		[25] = { itemID = 28683 }; --Grand Marshal's Lamellar Shoulders
		[26] = { itemID = 28679 }; --Grand Marshal's Lamellar Chestpiece
		[27] = { itemID = 28680 }; --Grand Marshal's Lamellar Gauntlets
		[28] = { itemID = 28724 }; --Grand Marshal's Lamellar Legguards
	};
	{
		Name = BabbleInventory["Cloth"] .. " - Horde";
		[01] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Satin Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[02] = { itemID = 28857 }; --High Warlord's Satin Hood
		[03] = { itemID = 28859 }; --High Warlord's Satin Mantle
		[04] = { itemID = 28860 }; --High Warlord's Satin Robe
		[05] = { itemID = 28856 }; --High Warlord's Satin Gloves
		[06] = { itemID = 28858 }; --High Warlord's Satin Leggings
		[08] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Mooncloth Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[09] = { itemID = 31626 }; --High Warlord's Mooncloth Cowl
		[10] = { itemID = 31628 }; --High Warlord's Mooncloth Shoulderpads
		[11] = { itemID = 31629 }; --High Warlord's Mooncloth Vestments
		[12] = { itemID = 31621 }; --High Warlord's Mooncloth Mitts
		[13] = { itemID = 31627 }; --High Warlord's Mooncloth Legguards
		[16] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Evoker's Silk Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 28867 }; --High Warlord's Silk Cowl
		[18] = { itemID = 28866 }; --High Warlord's Silk Amice
		[19] = { itemID = 28869 }; --High Warlord's Silk Raiment
		[20] = { itemID = 28868 }; --High Warlord's Silk Handguards
		[21] = { itemID = 28870 }; --High Warlord's Silk Trousers
		[23] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Dreadweave Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[24] = { itemID = 28818 }; --High Warlord's Dreadweave Hood
		[25] = { itemID = 28820 }; --High Warlord's Dreadweave Mantle
		[26] = { itemID = 28821 }; --High Warlord's Dreadweave Robe
		[27] = { itemID = 28817 }; --High Warlord's Dreadweave Gloves
		[28] = { itemID = 28819 }; --High Warlord's Dreadweave Leggings
	};
	{
		Name = BabbleInventory["Leather"] .. " - Horde";
		[01] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Dragonhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[02] = { itemID = 28812 }; --High Warlord's Dragonhide Helm
		[03] = { itemID = 28814 }; --High Warlord's Dragonhide Spaulders
		[04] = { itemID = 28815 }; --High Warlord's Dragonhide Robe
		[05] = { itemID = 28811 }; --High Warlord's Dragonhide Gloves
		[06] = { itemID = 28813 }; --High Warlord's Dragonhide Legguards
		[08] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Wyrmhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[09] = { itemID = 28872 }; --High Warlord's Wyrmhide Helm
		[10] = { itemID = 28874 }; --High Warlord's Wyrmhide Spaulders
		[11] = { itemID = 28875 }; --High Warlord's Wyrmhide Robe
		[12] = { itemID = 28871 }; --High Warlord's Wyrmhide Gloves
		[13] = { itemID = 28873 }; --High Warlord's Wyrmhide Legguards
		[16] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Kodohide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[17] = { itemID = 31585 }; --High Warlord's Kodohide Helm
		[18] = { itemID = 31587 }; --High Warlord's Kodohide Spaulders
		[19] = { itemID = 31588 }; --High Warlord's Kodohide Robe
		[20] = { itemID = 31584 }; --High Warlord's Kodohide Gloves
		[21] = { itemID = 31586 }; --High Warlord's Kodohide Legguards
		[23] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Opportunist's Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[24] = { itemID = 28837 }; --High Warlord's Leather Helm
		[25] = { itemID = 28839 }; --High Warlord's Leather Spaulders
		[26] = { itemID = 28840 }; --High Warlord's Leather Tunic
		[27] = { itemID = 28836 }; --High Warlord's Leather Gloves
		[28] = { itemID = 28838 }; --High Warlord's Leather Legguards
	};
	{
		Name = BabbleInventory["Mail"] .. " - Horde";
		[01] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Seer's Linked Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[02] = { itemID = 28843 }; --High Warlord's Linked Helm
		[03] = { itemID = 28845 }; --High Warlord's Linked Spaulders
		[04] = { itemID = 28841 }; --High Warlord's Linked Armor
		[05] = { itemID = 28842 }; --High Warlord's Linked Gauntlets
		[06] = { itemID = 28844 }; --High Warlord's Linked Leggings
		[08] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Seer's Mail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[09] = { itemID = 28848 }; --High Warlord's Mail Helm
		[10] = { itemID = 28850 }; --High Warlord's Mail Spaulders
		[11] = { itemID = 28846 }; --High Warlord's Mail Armor
		[12] = { itemID = 28847 }; --High Warlord's Mail Gauntlets
		[13] = { itemID = 28849 }; --High Warlord's Mail Leggings
		[16] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Seer's Ringmail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[17] = { itemID = 31648 }; --High Warlord's Ringmail Headpiece
		[18] = { itemID = 31650 }; --High Warlord's Ringmail Shoulderpads
		[19] = { itemID = 31646 }; --High Warlord's Ringmail Chestguard
		[20] = { itemID = 31647 }; --High Warlord's Ringmail Gloves
		[21] = { itemID = 31649 }; --High Warlord's Ringmail Legguards
		[23] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Stalker's Chain Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[24] = { itemID = 28807 }; --High Warlord's Chain Helm
		[25] = { itemID = 28809 }; --High Warlord's Chain Spaulders
		[26] = { itemID = 28805 }; --High Warlord's Chain Armor
		[27] = { itemID = 28806 }; --High Warlord's Chain Gauntlets
		[28] = { itemID = 28808 }; --High Warlord's Chain Leggings
	};
	{
		Name = BabbleInventory["Plate"] .. " - Horde";
		[01] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Crusader's Scaled Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[02] = { itemID = 28863 }; --High Warlord's Scaled Helm
		[03] = { itemID = 28865 }; --High Warlord's Scaled Shoulders
		[04] = { itemID = 28861 }; --High Warlord's Scaled Chestpiece
		[05] = { itemID = 28862 }; --High Warlord's Scaled Gauntlets
		[06] = { itemID = 28864 }; --High Warlord's Scaled Legguards
		[08] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Crusader's Ornamented Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[09] = { itemID = 31637 }; --High Warlord's Ornamented Headguard
		[10] = { itemID = 31639 }; --High Warlord's Ornamented Spaulders
		[11] = { itemID = 31635 }; --High Warlord's Ornamented Chestplate
		[12] = { itemID = 31636 }; --High Warlord's Ornamented Gloves
		[13] = { itemID = 31638 }; --High Warlord's Ornamented Leggings
		[16] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Savage's Plate Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] };
		[17] = { itemID = 28853 }; --High Warlord's Plate Helm
		[18] = { itemID = 28855 }; --High Warlord's Plate Shoulders
		[19] = { itemID = 28851 }; --High Warlord's Plate Chestpiece
		[20] = { itemID = 28852 }; --High Warlord's Plate Gauntlets
		[21] = { itemID = 28854 }; --High Warlord's Plate Legguards
		[23] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Gladiator's Aegis"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[24] = { itemID = 28833 }; --High Warlord's Lamellar Helm
		[25] = { itemID = 28835 }; --High Warlord's Lamellar Shoulders
		[26] = { itemID = 28831 }; --High Warlord's Lamellar Chestpiece
		[27] = { itemID = 28832 }; --High Warlord's Lamellar Gauntlets
		[28] = { itemID = 28834 }; --High Warlord's Lamellar Legguards
	};
};




-----------------------------------
---PvP Level 70 - Area Seasons ---
-----------------------------------

AtlasLoot_Data["PvP70HonorVendor"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Honor Vendor"];
	{
		Name = AL["PvP Accessories"];
		[01] = { itemID = 18863, price = "50 #silver#" }; --Insignia of the Alliance
		[02] = { itemID = 18853, price = "50 #silver#" }; --Insignia of the Horde
		[03] = { itemID = 18864, price = "20 #gold#" }; --Insignia of the Alliance
		[04] = { itemID = 18852, price = "20 #gold#" }; --Insignia of the Horde
		[05] = { itemID = 28234, price = "5000 #faction#" }; --Medallion of the Alliance
		[06] = { itemID = 37864, price = "30000 #faction#" }; --Medallion of the Alliance
		[07] = { itemID = 28239, price = "5000 #faction#" }; --Medallion of the Horde
		[08] = { itemID = 37865, price = "30000 #faction#" }; --Medallion of the Horde
		[09] = { itemID = 25829, price = "30000 #faction#" }; --Talisman of the Alliance
		[10] = { itemID = 24551, price = "30000 #faction#" }; --Talisman of the Horde
		[11] = { itemID = 383082, price = "12000 #faction#" }; --Ability Purge
		[12] = { itemID = 18606, price = "15300 #faction#" }; --Alliance Battle Standard
		[13] = { itemID = 1235070, price = "10000 #faction#" }; --Bloody Mark of War
		[14] = { itemID = 18675, price = "1 #silver#" }; --Military Ranks of the Horde & Alliance
		[15] = { itemID = 98570, price = "200 #faction#" }; --Mystic Orb
		[16] = { itemID = 98462, price = "500 #faction#" }; --Mystic Rune
		[17] = { itemID = 1101243, price = "6000 #faction#" }; --Scroll of Talent Unlearning
		[18] = { itemID = 383083, price = "6000 #faction#" }; --Talent Purge
		[19] = { itemID = 18839, price = "1 #faction#" }; --Combat Healing Potion
		[20] = { itemID = 18841, price = "1 #faction#" }; --Combat Mana Potion
		[21] = { itemID = 246189, price = "50000 #faction#" }; --Mystic Draught
		[22] = { itemID = 106954, price = "68200 #faction#" }; --Tome Of Specialization II
		[23] = { itemID = 32453, price = "1 #gold#" }; --Star's Tears
		[24] = { itemID = 97730, price = "1000 #faction#" }; --Worldforged Key Fragment
		[25] = { itemID = 30183, price = "50000 #faction#" }; --Nether Vortex
		[26] = { itemID = 23572, price = "20000 #faction#" }; --Primal Nether
		[27] = { itemID = 15198, price = "20000 #faction#" }; --Knight's Colors
		[28] = { itemID = 15196, price = "15000 #faction#" }; --Private's Tabard
		[29] = { itemID = 15197, price = "15000 #faction#" }; --Scout's Tabard
		[30] = { itemID = 15199, price = "20000 #faction#" }; --Stone Guard's Herald
	};
};

--Arena Season 1
AtlasLoot_Data["Pvp70Season1"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Arena Season 1"];
	{
		Name = AL["Accessories"];
		WebID = {41015, "npc"};
		[01] = { itemID = 28378, price = "Arena" }; --Sergeant's Heavy Cape
		[02] = { itemID = 28377, price = "Arena" }; --Sergeant's Heavy Cloak
		[04] = { itemID = 28245, price = "Arena" }; --Pendant of Dominance
		[05] = { itemID = 28244, price = "Arena" }; --Pendant of Triumph
		[07] = { itemID = 28247, price = "Arena" }; --Band of Dominance
		[08] = { itemID = 28246, price = "Arena" }; --Band of Triumph
	};
	{
		Name = AL["Gems & Enchants"];
		[01] = { itemID = 205062, price = "5000 #faction#" }; --Resplendent Fire Agate
		[02] = { itemID = 205064, price = "5000 #faction#" }; --Lucent Fire Agate
		[03] = { itemID = 205066, price = "5000 #faction#" }; --Empowered Fire Agate
		[04] = { itemID = 205068, price = "5000 #faction#" }; --Durable Fire Agate
		[05] = { itemID = 205070, price = "5000 #faction#" }; --Piercing Idocrase
		[06] = { itemID = 205072, price = "5000 #faction#" }; --Tense Idocrase
		[07] = { itemID = 205074, price = "5000 #faction#" }; --Mysterious Heliotrope
		[08] = { itemID = 1505062, price = "100 #arena#" }; --Resplendent Fire Opal
		[09] = { itemID = 1505064, price = "100 #arena#" }; --Lucent Fire Opal
		[10] = { itemID = 1505066, price = "100 #arena#" }; --Empowered Fire Opal
		[11] = { itemID = 1505068, price = "100 #arena#" }; --Durable Fire Opal
		[12] = { itemID = 1505070, price = "100 #arena#" }; --Piercing Evergem
		[13] = { itemID = 1505072, price = "100 #arena#" }; --Tense Evergem
		[14] = { itemID = 1505074, price = "100 #arena#" }; --Mysterious Shadowgem
		[16] = { itemID = 449572, price = "23000 #faction#" }; --Superior Inscription of the Archmage
		[17] = { itemID = 449573, price = "23000 #faction#" }; --Superior Inscription of the Brawler
		[19] = { itemID = 449576, price = "25000 #faction#" }; --Arcanum of the Archmage
		[20] = { itemID = 449577, price = "25000 #faction#" }; --Arcanum of the Brawler
	};
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28918 , price = "Arena" }; --High Warlord's Decapitator
		[03] = { itemID = 414334 , price = "Arena" }; --High Warlord's Executioner
		[04] = { itemID = 414335 , price = "Arena" }; --High Warlord's Battlehammer
		[05] = { itemID = 28917 , price = "Arena" }; --High Warlord's Bonegrinder
		[06] = { itemID = 28919 , price = "Arena" }; --High Warlord's Smasher
		[07] = { itemID = 28923 , price = "Arena" }; --High Warlord's Painsaw
		[08] = { itemID = 414326 , price = "Arena" }; --High Warlord's Polearm
		[09] = { itemID = 414327 , price = "Arena" }; --High Warlord's Claymore
		[10] = { itemID = 28293 , price = "Arena" }; --High Warlord's Greatsword
		[11] = { itemID = 28925 , price = "Arena" }; --High Warlord's Pummeler
		[12] = { itemID = 28937 , price = "Arena" }; --High Warlord's Slicer
		[13] = { itemID = 28926 , price = "Arena" }; --High Warlord's Quickblade
	} or
	{
		[02] = { itemID = 28945 , price = "Arena" }; --Grand Marshal's Decapitator
		[03] = { itemID = 414304 , price = "Arena" }; --Grand Marshal's Executioner
		[04] = { itemID = 414305 , price = "Arena" }; --Grand Marshal's Battlehammer
		[05] = { itemID = 28942 , price = "Arena" }; --Grand Marshal's Bonegrinder
		[06] = { itemID = 28948 , price = "Arena" }; --Grand Marshal's Smasher
		[07] = { itemID = 28949 , price = "Arena" }; --Grand Marshal's Painsaw
		[08] = { itemID = 414323 , price = "Arena" }; --Grand Marshal's Polearm
		[09] = { itemID = 414324 , price = "Arena" }; --Grand Marshal's Claymore
		[10] = { itemID = 28943 , price = "Arena" }; --Grand Marshal's Greatsword
		[11] = { itemID = 28951 , price = "Arena" }; --Grand Marshal's Pummeler
		[12] = { itemID = 28956 , price = "Arena" }; --Grand Marshal's Slicer
		[13] = { itemID = 28952 , price = "Arena" }; --Grand Marshal's Quickblade
	},
	{
		Name = AL["Physical Damage "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 1"];
		WebID = {41015, "npc"};
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 28298, price = "Arena" }; --Gladiator's Decapitator
		[18] = { itemID = 509122, price = "Arena" }; --Gladiator's Executioner
		[19] = { itemID = 509130, price = "Arena" }; --Gladiator's Battlehammer
		[20] = { itemID = 28299, price = "Arena" }; --Gladiator's Bonegrinder
		[21] = { itemID = 509134, price = "Arena" }; --Gladiator's Smasher
		[22] = { itemID = 28300, price = "Arena" }; --Gladiator's Painsaw
		[23] = { itemID = 414329, price = "Arena" }; --Gladiator's Polearm
		[24] = { itemID = 414352, price = "Arena" }; --Gladiator's Claymore
		[25] = { itemID = 24550, price = "Arena" }; --Gladiator's Greatsword
		[26] = { itemID = 28305, price = "Arena" }; --Gladiator's Pummeler
		[27] = { itemID = 28295, price = "Arena" }; --Gladiator's Slicer
		[28] = { itemID = 28307, price = "Arena" }; --Gladiator's Quickblade
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28920 , price = "Arena" }; --High Warlord's Cleaver
		[03] = { itemID = 414343 , price = "Arena" }; --High Warlord's Chopper
		[04] = { itemID = 28921 , price = "Arena" }; --High Warlord's Hacker
		[05] = { itemID = 28924 , price = "Arena" }; --High Warlord's Bonecracker
		[06] = { itemID = 28922 , price = "Arena" }; --High Warlord's Left Render
		[07] = { itemID = 28928 , price = "Arena" }; --High Warlord's Right Ripper
		[08] = { itemID = 414344 , price = "Arena" }; --High Warlord's Mutilator
		[09] = { itemID = 28930 , price = "Arena" }; --High Warlord's Shiv
		[10] = { itemID = 28929 , price = "Arena" }; --High Warlord's Shanker
		[11] = { itemID = 414332 , price = "Arena" }; --High Warlord's Longbow
		[12] = { itemID = 28933 , price = "Arena" }; --High Warlord's Heavy Crossbow
		[13] = { itemID = 414348 , price = "Arena" }; --High Warlord's Rifle
		[14] = { itemID = 28939 , price = "Arena" }; --High Warlord's Shield Wall
		[15] = { itemID = 414347 , price = "Arena" }; --High Warlord's War Edge
	} or
	{
		[02] = { itemID = 28944 , price = "Arena" }; --Grand Marshal's Cleaver
		[03] = { itemID = 414313 , price = "Arena" }; --Grand Marshal's Chopper
		[04] = { itemID = 28946 , price = "Arena" }; --Grand Marshal's Hacker
		[05] = { itemID = 28950 , price = "Arena" }; --Grand Marshal's Bonecracker
		[06] = { itemID = 28947 , price = "Arena" }; --Grand Marshal's Left Render
		[07] = { itemID = 28953 , price = "Arena" }; --Grand Marshal's Right Ripper
		[08] = { itemID = 414314 , price = "Arena" }; --Grand Marshal's Mutilator
		[09] = { itemID = 28955 , price = "Arena" }; --Grand Marshal's Shiv
		[10] = { itemID = 28954 , price = "Arena" }; --Grand Marshal's Shanker
		[11] = { itemID = 414302 , price = "Arena" }; --Grand Marshal's Longbow
		[12] = { itemID = 28960 , price = "Arena" }; --Grand Marshal's Heavy Crossbow
		[13] = { itemID = 414318 , price = "Arena" }; --Grand Marshal's Rifle
		[14] = { itemID = 414317 , price = "Arena" }; --Grand Marshal's War Edge
		[15] = { itemID = 28940 , price = "Arena" }; --Grand Marshal's Shield Wall
	},
	{
		Name = AL["Physical Damage "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 2"];
		WebID = {41015, "npc"};
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 28308, price = "Arena" }; --Gladiator's Cleaver
		[18] = { itemID = 509123, price = "Arena" }; --Gladiator's Chopper
		[19] = { itemID = 28309, price = "Arena" }; --Gladiator's Hacker
		[20] = { itemID = 28302, price = "Arena" }; --Gladiator's Bonecracker
		[21] = { itemID = 28314, price = "Arena" }; --Gladiator's Left Render
		[22] = { itemID = 28313, price = "Arena" }; --Gladiator's Right Ripper
		[23] = { itemID = 414360, price = "Arena" }; --Gladiator's Mutilator
		[24] = { itemID = 28310, price = "Arena" }; --Gladiator's Shiv
		[25] = { itemID = 28312, price = "Arena" }; --Gladiator's Shanker
		[26] = { itemID = 509126, price = "Arena" }; --Gladiator's Longbow
		[27] = { itemID = 28294, price = "Arena" }; --Gladiator's Heavy Crossbow
		[28] = { itemID = 509127, price = "Arena" }; --Gladiator's Rifle
		[29] = { itemID = 28319, price = "Arena" }; --Gladiator's War Edge
		[30] = { itemID = 28358, price = "Arena" }; --Gladiator's Shield Wall
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 414336 , price = "Arena" }; --High Warlord's Battle Staff
		[03] = { itemID = 414337 , price = "Arena" }; --High Warlord's Guardian Staff
		[04] = { itemID = 28935 , price = "Arena" }; --High Warlord's War Staff
		[05] = { itemID = 414338 , price = "Arena" }; --High Warlord's Battlemace
		[06] = { itemID = 414339 , price = "Arena" }; --High Warlord's Gavel
		[07] = { itemID = 414340 , price = "Arena" }; --High Warlord's Guardian Mace
		[08] = { itemID = 414341 , price = "Arena" }; --High Warlord's Salvation
		[09] = { itemID = 414342 , price = "Arena" }; --High Warlord's Battleslicer
		[10] = { itemID = 28931 , price = "Arena" }; --High Warlord's Spellblade
		[11] = { itemID = 414325 , price = "Arena" }; --High Warlord's Dagger
	} or
	{
		[02] = { itemID = 414306 , price = "Arena" }; --Grand Marshal's Battle Staff
		[03] = { itemID = 414307 , price = "Arena" }; --Grand Marshal's Guardian Staff
		[04] = { itemID = 28959 , price = "Arena" }; --Grand Marshal's War Staff
		[05] = { itemID = 414308 , price = "Arena" }; --Grand Marshal's Battlemace
		[06] = { itemID = 414309 , price = "Arena" }; --Grand Marshal's Gavel
		[07] = { itemID = 414310 , price = "Arena" }; --Grand Marshal's Guardian Mace
		[08] = { itemID = 414311 , price = "Arena" }; --Grand Marshal's Salvation
		[09] = { itemID = 414312 , price = "Arena" }; --Grand Marshal's Battleslicer
		[10] = { itemID = 28957 , price = "Arena" }; --Grand Marshal's Spellblade
		[11] = { itemID = 414322 , price = "Arena" }; --Grand Marshal's Dagger
	},
	{
		Name = AL["Caster "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 1"];
		WebID = {41015, "npc"};
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 509128, price = "Arena" }; --Gladiator's Battle Staff
		[18] = { itemID = 509133, price = "Arena" }; --Gladiator's Guardian Staff
		[19] = { itemID = 24557, price = "Arena" }; --Gladiator's War Staff
		[20] = { itemID = 509129, price = "Arena" }; --Gladiator's Battlemace
		[21] = { itemID = 32450, price = "Arena" }; --Gladiator's Gavel
		[22] = { itemID = 509132, price = "Arena" }; --Gladiator's Guardian Mace
		[23] = { itemID = 32451, price = "Arena" }; --Gladiator's Salvation
		[24] = { itemID = 509136, price = "Arena" }; --Gladiator's Battleslicer
		[25] = { itemID = 28297, price = "Arena" }; --Gladiator's Spellblade
		[26] = { itemID = 414328, price = "Arena" }; --Gladiator's Dagger
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 414333 , price = "Arena" }; --High Warlord's Magebow
		[03] = { itemID = 414349 , price = "Arena" }; --High Warlord's Piercing Touch
		[04] = { itemID = 414350 , price = "Arena" }; --High Warlord's Touch of Defeat
		[05] = { itemID = 414330 , price = "Arena" }; --High Warlord's Barrier
		[06] = { itemID = 414331 , price = "Arena" }; --High Warlord's Redoubt
		[07] = { itemID = 28938 , price = "Arena" }; --High Warlord's Endgame
		[08] = { itemID = 414345 , price = "Arena" }; --High Warlord's Grimoire
		[09] = { itemID = 414346 , price = "Arena" }; --High Warlord's Reprieve
		[10] = { itemID = 414351 , price = "Arena" }; --High Warlord's Libram of Fortitude
	} or
	{
		[02] = { itemID = 414303 , price = "Arena" }; --Grand Marshal's Magebow
		[03] = { itemID = 414319 , price = "Arena" }; --Grand Marshal's Piercing Touch
		[04] = { itemID = 414320 , price = "Arena" }; --Grand Marshal's Touch of Defeat
		[05] = { itemID = 414300 , price = "Arena" }; --Grand Marshal's Barrier
		[06] = { itemID = 414301 , price = "Arena" }; --Grand Marshal's Redoubt
		[07] = { itemID = 28941 , price = "Arena" }; --Grand Marshal's Endgame
		[08] = { itemID = 414315 , price = "Arena" }; --Grand Marshal's Grimoire
		[09] = { itemID = 414316 , price = "Arena" }; --Grand Marshal's Reprieve
		[10] = { itemID = 414321 , price = "Arena" }; --Grand Marshal's Libram of Fortitude	
	},
	{
		Name = AL["Caster "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 509137, price = "Arena" }; --Gladiator's Magebow
		[18] = { itemID = 509125, price = "Arena" }; --Gladiator's Piercing Touch
		[19] = { itemID = 28320, price = "Arena" }; --Gladiator's Touch of Defeat
		[20] = { itemID = 509103, price = "Arena" }; --Gladiator's Barrier
		[21] = { itemID = 509117, price = "Arena" }; --Gladiator's Redoubt
		[22] = { itemID = 28346, price = "Arena" }; --Gladiator's Endgame
		[23] = { itemID = 509124, price = "Arena" }; --Gladiator's Grimoire
		[24] = { itemID = 32452, price = "Arena" }; --Gladiator's Reprieve
		[25] = { itemID = 509140, price = "Arena" }; --Gladiator's Libram of Fortitude
	});
	{
		Name = AL["Cloth"]..AL["Offset"];
		WebID = {41015, "npc"};
		[01] = { itemID = 28402, price = "Arena" }; --General's Dreadweave Stalkers
		[02] = { itemID = 28404, price = "Arena" }; --General's Dreadweave Belt
		[03] = { itemID = 28405, price = "Arena" }; --General's Dreadweave Cuffs
		[05] = { itemID = 28409, price = "Arena" }; --General's Silk Belt
		[06] = { itemID = 28410, price = "Arena" }; --General's Silk Footguards
		[07] = { itemID = 28411, price = "Arena" }; --General's Silk Cuffs
		[09] = { itemID = 32974, price = "Arena" }; --General's Mooncloth Belt
		[10] = { itemID = 32975, price = "Arena" }; --General's Mooncloth Slippers
		[11] = { itemID = 32973, price = "Arena" }; --General's Mooncloth Cuffs
	};
	{
		Name = AL["Leather"]..AL["Offset"];
		WebID = {41015, "npc"};
		[01] = { itemID = 31594, price = "Arena" }; --General's Kodohide Belt
		[02] = { itemID = 31595, price = "Arena" }; --General's Kodohide Boots
		[03] = { itemID = 31598, price = "Arena" }; --General's Kodohide Bracers
		[04] = { itemID = 28422, price = "Arena" }; --General's Leather Boots
		[05] = { itemID = 28423, price = "Arena" }; --General's Leather Belt
		[06] = { itemID = 28424, price = "Arena" }; --General's Leather Bracers
		[16] = { itemID = 28443, price = "Arena" }; --General's Dragonhide Belt
		[17] = { itemID = 28444, price = "Arena" }; --General's Dragonhide Boots
		[18] = { itemID = 28445, price = "Arena" }; --General's Dragonhide Bracers
		[20] = { itemID = 28446, price = "Arena" }; --General's Wyrmhide Belt
		[21] = { itemID = 28447, price = "Arena" }; --General's Wyrmhide Boots
		[22] = { itemID = 28448, price = "Arena" }; --General's Wyrmhide Bracers
	 };
	{
		Name = AL["Mail"]..AL["Offset"];
		WebID = {41015, "npc"};
		[01] = { itemID = 28449, price = "Arena" }; --General's Chain Sabatons
		[02] = { itemID = 28450, price = "Arena" }; --General's Chain Girdle
		[03] = { itemID = 28451, price = "Arena" }; --General's Chain Bracers
		[04] = { itemID = 28629, price = "Arena" }; --General's Linked Girdle
		[05] = { itemID = 28630, price = "Arena" }; --General's Linked Sabatons
		[06] = { itemID = 28605, price = "Arena" }; --General's Linked Bracers
		[16] = { itemID = 28639, price = "Arena" }; --General's Mail Girdle
		[17] = { itemID = 28640, price = "Arena" }; --General's Mail Sabatons
		[18] = { itemID = 28638, price = "Arena" }; --General's Mail Bracers
		[20] = { itemID = 32992, price = "Arena" }; --General's Ringmail Girdle
		[21] = { itemID = 32993, price = "Arena" }; --General's Ringmail Sabatons
		[22] = { itemID = 32991, price = "Arena" }; --General's Ringmail Bracers
	};
	{
		Name = AL["Plate"]..AL["Offset"];
		WebID = {41015, "npc"};
		[01] = { itemID = 28643, price = "Arena" }; --General's Lamellar Bracers
		[02] = { itemID = 28641, price = "Arena" }; --General's Lamellar Belt
		[03] = { itemID = 28642, price = "Arena" }; --General's Lamellar Greaves
		[05] = { itemID = 28383, price = "Arena" }; --General's Plate Greaves
		[06] = { itemID = 28385, price = "Arena" }; --General's Plate Belt
		[07] = { itemID = 28381, price = "Arena" }; --General's Plate Bracers
		[16] = { itemID = 32982, price = "Arena" }; --General's Ornamented Belt
		[17] = { itemID = 32984, price = "Arena" }; --General's Ornamented Greaves
		[18] = { itemID = 32983, price = "Arena" }; --General's Ornamented Bracers
		[20] = { itemID = 28644, price = "Arena" }; --General's Scaled Belt
		[21] = { itemID = 28645, price = "Arena" }; --General's Scaled Greaves
		[22] = { itemID = 28646, price = "Arena" }; --General's Scaled Bracers
	};
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28807, price = "Arena" }; --High Warlord's Chain Helm
		[03] = { itemID = 28809, price = "Arena" }; --High Warlord's Chain Spaulders
		[04] = { itemID = 28805, price = "Arena" }; --High Warlord's Chain Armor
		[05] = { itemID = 28808, price = "Arena" }; --High Warlord's Chain Leggings
		[06] = { itemID = 28806, price = "Arena" }; --High Warlord's Chain Gauntlets
	} or
	{
        [02] = { itemID = 28615, price = "Arena" }; --Grand Marshal's Chain Helm
		[03] = { itemID = 28617, price = "Arena" }; --Grand Marshal's Chain Spaulders
		[04] = { itemID = 28613, price = "Arena" }; --Grand Marshal's Chain Armor
		[05] = { itemID = 28616, price = "Arena" }; --Grand Marshal's Chain Leggings
		[06] = { itemID = 28614, price = "Arena" }; --Grand Marshal's Chain Gauntlets
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 28331, price = "Arena" }; --Gladiator's Chain Helm
		[18] = { itemID = 28333, price = "Arena" }; --Gladiator's Chain Spaulders
		[19] = { itemID = 28334, price = "Arena" }; --Gladiator's Chain Armor
		[20] = { itemID = 28335, price = "Arena" }; --Gladiator's Chain Gauntlets
		[21] = { itemID = 28332, price = "Arena" }; --Gladiator's Chain Leggings
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28867, price = "Arena" }; --High Warlord's Silk Cowl
		[03] = { itemID = 28866, price = "Arena" }; --High Warlord's Silk Amice
		[04] = { itemID = 28870, price = "Arena" }; --High Warlord's Silk Trousers
		[05] = { itemID = 28868, price = "Arena" }; --High Warlord's Silk Handguards
		[06] = { itemID = 28869, price = "Arena" }; --High Warlord's Silk Raiment
	} or
	{
		[02] = { itemID = 28715, price = "Arena" }; --Grand Marshal's Silk Cowl
		[03] = { itemID = 28714, price = "Arena" }; --Grand Marshal's Silk Amice
		[04] = { itemID = 28718, price = "Arena" }; --Grand Marshal's Silk Trousers
		[05] = { itemID = 28716, price = "Arena" }; --Grand Marshal's Silk Handguards
		[06] = { itemID = 28717, price = "Arena" }; --Grand Marshal's Silk Raiment
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 25855, price = "Arena" }; --Gladiator's Silk Cowl
		[18] = { itemID = 25854, price = "Arena" }; --Gladiator's Silk Amice
		[19] = { itemID = 25856, price = "Arena" }; --Gladiator's Silk Raiment
		[20] = { itemID = 25857, price = "Arena" }; --Gladiator's Silk Handguards
		[21] = { itemID = 25858, price = "Arena" }; --Gladiator's Silk Trousers
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28837, price = "Arena" }; --High Warlord's Leather Helm
		[03] = { itemID = 28839, price = "Arena" }; --High Warlord's Leather Spaulders
		[04] = { itemID = 28840, price = "Arena" }; --High Warlord's Leather Tunic
		[05] = { itemID = 28838, price = "Arena" }; --High Warlord's Leather Legguards
		[06] = { itemID = 28836, price = "Arena" }; --High Warlord's Leather Gloves
	} or
	{
        [02] = { itemID = 28685, price = "Arena" }; --Grand Marshal's Leather Helm
		[03] = { itemID = 28687, price = "Arena" }; --Grand Marshal's Leather Spaulders
		[04] = { itemID = 28688, price = "Arena" }; --Grand Marshal's Leather Tunic
		[05] = { itemID = 28686, price = "Arena" }; --Grand Marshal's Leather Legguards
		[06] = { itemID = 28684, price = "Arena" }; --Grand Marshal's Leather Gloves
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 25830, price = "Arena" }; --Gladiator's Leather Helm
		[18] = { itemID = 25832, price = "Arena" }; --Gladiator's Leather Spaulders
		[19] = { itemID = 25831, price = "Arena" }; --Gladiator's Leather Tunic
		[20] = { itemID = 25834, price = "Arena" }; --Gladiator's Leather Gloves
		[21] = { itemID = 25833, price = "Arena" }; --Gladiator's Leather Legguards
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28853, price = "Arena" }; --High Warlord's Plate Helm
		[03] = { itemID = 28855, price = "Arena" }; --High Warlord's Plate Shoulders
		[04] = { itemID = 28851, price = "Arena" }; --High Warlord's Plate Chestpiece
		[05] = { itemID = 28854, price = "Arena" }; --High Warlord's Plate Legguards
		[06] = { itemID = 28852, price = "Arena" }; --High Warlord's Plate Gauntlets
	} or
	{
		[02] = { itemID = 28701, price = "Arena" }; --Grand Marshal's Plate Helm
		[03] = { itemID = 28703, price = "Arena" }; --Grand Marshal's Plate Shoulders
		[04] = { itemID = 28699, price = "Arena" }; --Grand Marshal's Plate Chestpiece
		[05] = { itemID = 28702, price = "Arena" }; --Grand Marshal's Plate Legguards
		[06] = { itemID = 28700, price = "Arena" }; --Grand Marshal's Plate Gauntlets
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 24545, price = "Arena" }; --Gladiator's Plate Helm
		[18] = { itemID = 24546, price = "Arena" }; --Gladiator's Plate Shoulders
		[19] = { itemID = 24544, price = "Arena" }; --Gladiator's Plate Chestpiece
		[20] = { itemID = 24549, price = "Arena" }; --Gladiator's Plate Gauntlets
		[21] = { itemID = 24547, price = "Arena" }; --Gladiator's Plate Legguards
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28818, price = "Arena" }; --High Warlord's Dreadweave Hood
		[03] = { itemID = 28820, price = "Arena" }; --High Warlord's Dreadweave Mantle
		[04] = { itemID = 28819, price = "Arena" }; --High Warlord's Dreadweave Leggings
		[05] = { itemID = 28817, price = "Arena" }; --High Warlord's Dreadweave Gloves
		[06] = { itemID = 28821, price = "Arena" }; --High Warlord's Dreadweave Robe
	} or
	{
		[02] = { itemID = 28625, price = "Arena" }; --Grand Marshal's Dreadweave Hood
		[03] = { itemID = 28627, price = "Arena" }; --Grand Marshal's Dreadweave Mantle
		[04] = { itemID = 28626, price = "Arena" }; --Grand Marshal's Dreadweave Leggings
		[05] = { itemID = 28624, price = "Arena" }; --Grand Marshal's Dreadweave Gloves
		[06] = { itemID = 28628, price = "Arena" }; --Grand Marshal's Dreadweave Robe
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. AtlasLoot.Colors.WHITE..AL["Demonology"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 24553, price = "Arena" }; --Gladiator's Dreadweave Hood
		[18] = { itemID = 24554, price = "Arena" }; --Gladiator's Dreadweave Mantle
		[19] = { itemID = 24552, price = "Arena" }; --Gladiator's Dreadweave Robe
		[20] = { itemID = 24556, price = "Arena" }; --Gladiator's Dreadweave Gloves
		[21] = { itemID = 24555, price = "Arena" }; --Gladiator's Dreadweave Leggings
	});

	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. AtlasLoot.Colors.WHITE..AL["Destruction"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 30187, price = "Arena" }; --Gladiator's Felweave Cowl
		[18] = { itemID = 30186, price = "Arena" }; --Gladiator's Felweave Amice
		[19] = { itemID = 30200, price = "Arena" }; --Gladiator's Felweave Raiment
		[20] = { itemID = 30188, price = "Arena" }; --Gladiator's Felweave Handguards
		[21] = { itemID = 30201, price = "Arena" }; --Gladiator's Felweave Trousers
	};
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28812, price = "Arena" }; --High Warlord's Dragonhide Helm
		[03] = { itemID = 28814, price = "Arena" }; --High Warlord's Dragonhide Spaulders
		[04] = { itemID = 28815, price = "Arena" }; --High Warlord's Dragonhide Tunic
		[05] = { itemID = 28813, price = "Arena" }; --High Warlord's Dragonhide Legguards
		[06] = { itemID = 28811, price = "Arena" }; --High Warlord's Dragonhide Gloves
	} or
	{
        [02] = { itemID = 28619, price = "Arena" }; --Grand Marshal's Dragonhide Helm
		[03] = { itemID = 28622, price = "Arena" }; --Grand Marshal's Dragonhide Spaulders
		[04] = { itemID = 28623, price = "Arena" }; --Grand Marshal's Dragonhide Tunic
		[05] = { itemID = 28620, price = "Arena" }; --Grand Marshal's Dragonhide Legguards
		[06] = { itemID = 28618, price = "Arena" }; --Grand Marshal's Dragonhide Gloves
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - "..AtlasLoot.Colors.WHITE..AL["Feral"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 28127, price = "Arena" }; --Gladiator's Dragonhide Helm
		[18] = { itemID = 28129, price = "Arena" }; --Gladiator's Dragonhide Spaulders
		[19] = { itemID = 28130, price = "Arena" }; --Gladiator's Dragonhide Tunic
		[20] = { itemID = 28126, price = "Arena" }; --Gladiator's Dragonhide Gloves
		[21] = { itemID = 28128, price = "Arena" }; --Gladiator's Dragonhide Legguards
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28872, price = "Arena" }; --High Warlord's Wyrmhide Helm
		[03] = { itemID = 28874, price = "Arena" }; --High Warlord's Wyrmhide Spaulders
		[04] = { itemID = 28875, price = "Arena" }; --High Warlord's Wyrmhide Tunic
		[05] = { itemID = 28873, price = "Arena" }; --High Warlord's Wyrmhide Legguards
		[06] = { itemID = 28871, price = "Arena" }; --High Warlord's Wyrmhide Gloves
	} or
	{
        [02] = { itemID = 28720, price = "Arena" }; --Grand Marshal's Wyrmhide Helm
		[03] = { itemID = 28722, price = "Arena" }; --Grand Marshal's Wyrmhide Spaulders
		[04] = { itemID = 28723, price = "Arena" }; --Grand Marshal's Wyrmhide Tunic
		[05] = { itemID = 28721, price = "Arena" }; --Grand Marshal's Wyrmhide Legguards
		[06] = { itemID = 28719, price = "Arena" }; --Grand Marshal's Wyrmhide Gloves
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Balance"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 28137, price = "Arena" }; --Gladiator's Wyrmhide Helm
		[18] = { itemID = 28139, price = "Arena" }; --Gladiator's Wyrmhide Spaulders
		[19] = { itemID = 28140, price = "Arena" }; --Gladiator's Wyrmhide Tunic
		[20] = { itemID = 28136, price = "Arena" }; --Gladiator's Wyrmhide Gloves
		[21] = { itemID = 28138, price = "Arena" }; --Gladiator's Wyrmhide Legguards
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 31585, price = "Arena" }; --High Warlord's Kodohide Helm
		[03] = { itemID = 31587, price = "Arena" }; --High Warlord's Kodohide Spaulders
		[04] = { itemID = 31588, price = "Arena" }; --High Warlord's Kodohide Tunic
		[05] = { itemID = 31586, price = "Arena" }; --High Warlord's Kodohide Legguards
		[06] = { itemID = 31584, price = "Arena" }; --High Warlord's Kodohide Gloves
	} or
	{
        [02] = { itemID = 31590, price = "Arena" }; --Grand Marshal's Kodohide Helm
		[03] = { itemID = 31592, price = "Arena" }; --Grand Marshal's Kodohide Spaulders
		[04] = { itemID = 31593, price = "Arena" }; --Grand Marshal's Kodohide Tunic
		[05] = { itemID = 31591, price = "Arena" }; --Grand Marshal's Kodohide Legguards
		[06] = { itemID = 31589, price = "Arena" }; --Grand Marshal's Kodohide Gloves
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Restoration"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31376, price = "Arena" }; --Gladiator's Kodohide Helm
		[18] = { itemID = 31378, price = "Arena" }; --Gladiator's Kodohide Spaulders
		[19] = { itemID = 31379, price = "Arena" }; --Gladiator's Kodohide Tunic
		[20] = { itemID = 31375, price = "Arena" }; --Gladiator's Kodohide Gloves
		[21] = { itemID = 31377, price = "Arena" }; --Gladiator's Kodohide Legguards
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28843, price = "Arena" }; --High Warlord's Linked Helm
		[03] = { itemID = 28845, price = "Arena" }; --High Warlord's Linked Spaulders
		[04] = { itemID = 28841, price = "Arena" }; --High Warlord's Linked Armor
		[05] = { itemID = 28844, price = "Arena" }; --High Warlord's Linked Leggings
		[06] = { itemID = 28842, price = "Arena" }; --High Warlord's Linked Gauntlets
	} or
	{
        [02] = { itemID = 28691, price = "Arena" }; --Grand Marshal's Linked Helm
		[03] = { itemID = 28693, price = "Arena" }; --Grand Marshal's Linked Spaulders
		[04] = { itemID = 28689, price = "Arena" }; --Grand Marshal's Linked Armor
		[05] = { itemID = 28692, price = "Arena" }; --Grand Marshal's Linked Leggings
		[06] = { itemID = 28690, price = "Arena" }; --Grand Marshal's Linked Gauntlets
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Enhancement"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 25998, price = "Arena" }; --Gladiator's Linked Helm
		[18] = { itemID = 25999, price = "Arena" }; --Gladiator's Linked Spaulders
		[19] = { itemID = 25997, price = "Arena" }; --Gladiator's Linked Armor
		[20] = { itemID = 26000, price = "Arena" }; --Gladiator's Linked Gauntlets
		[21] = { itemID = 26001, price = "Arena" }; --Gladiator's Linked Leggings
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28848, price = "Arena" }; --High Warlord's Mail Helm
		[03] = { itemID = 28850, price = "Arena" }; --High Warlord's Mail Spaulders
		[04] = { itemID = 28846, price = "Arena" }; --High Warlord's Mail Armor
		[05] = { itemID = 28849, price = "Arena" }; --High Warlord's Mail Leggings
		[06] = { itemID = 28847, price = "Arena" }; --High Warlord's Mail Gauntlets
	} or
	{
        [02] = { itemID = 28696, price = "Arena" }; --Grand Marshal's Mail Helm
		[03] = { itemID = 28698, price = "Arena" }; --Grand Marshal's Mail Spaulders
		[04] = { itemID = 28694, price = "Arena" }; --Grand Marshal's Mail Armor
		[05] = { itemID = 28697, price = "Arena" }; --Grand Marshal's Mail Leggings
		[06] = { itemID = 28695, price = "Arena" }; --Grand Marshal's Mail Gauntlets
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Elemental"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 27471, price = "Arena" }; --Gladiator's Mail Helm
		[18] = { itemID = 27473, price = "Arena" }; --Gladiator's Mail Spaulders
		[19] = { itemID = 27469, price = "Arena" }; --Gladiator's Mail Armor
		[20] = { itemID = 27470, price = "Arena" }; --Gladiator's Mail Gauntlets
		[21] = { itemID = 27472, price = "Arena" }; --Gladiator's Mail Leggings
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 31648, price = "Arena" }; --High Warlord's Ringmail Helm
		[03] = { itemID = 31650, price = "Arena" }; --High Warlord's Ringmail Spaulders
		[04] = { itemID = 31646, price = "Arena" }; --High Warlord's Ringmail Armor
		[05] = { itemID = 31649, price = "Arena" }; --High Warlord's Ringmail Leggings
		[06] = { itemID = 31647, price = "Arena" }; --High Warlord's Ringmail Gauntlets
	} or
	{
        [02] = { itemID = 31642, price = "Arena" }; --Grand Marshal's Ringmail Helm
		[03] = { itemID = 31644, price = "Arena" }; --Grand Marshal's Ringmail Spaulders
		[04] = { itemID = 31640, price = "Arena" }; --Grand Marshal's Ringmail Armor
		[05] = { itemID = 31643, price = "Arena" }; --Grand Marshal's Ringmail Leggings
		[06] = { itemID = 31641, price = "Arena" }; --Grand Marshal's Ringmail Gauntlets
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Restoration"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31400, price = "Arena" }; --Gladiator's Ringmail Helm
		[18] = { itemID = 31407, price = "Arena" }; --Gladiator's Ringmail Spaulders
		[19] = { itemID = 31396, price = "Arena" }; --Gladiator's Ringmail Armor
		[20] = { itemID = 31397, price = "Arena" }; --Gladiator's Ringmail Gauntlets
		[21] = { itemID = 31406, price = "Arena" }; --Gladiator's Ringmail Leggings
	});
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " ..AtlasLoot.Colors.WHITE.. AL["Protection"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 27704, price = "Arena" }; --Gladiator's Lamellar Helm
		[18] = { itemID = 27706, price = "Arena" }; --Gladiator's Lamellar Shoulders
		[19] = { itemID = 27702, price = "Arena" }; --Gladiator's Lamellar Chestpiece
		[20] = { itemID = 27703, price = "Arena" }; --Gladiator's Lamellar Gauntlets
		[21] = { itemID = 27705, price = "Arena" }; --Gladiator's Lamellar Legguards
	};
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28863, price = "Arena" }; --High Warlord's Scaled Helm
		[03] = { itemID = 28865, price = "Arena" }; --High Warlord's Scaled Shoulders
		[04] = { itemID = 28861, price = "Arena" }; --High Warlord's Scaled Chestpiece
		[05] = { itemID = 28864, price = "Arena" }; --High Warlord's Scaled Legguards
		[06] = { itemID = 28862, price = "Arena" }; --High Warlord's Scaled Gauntlets
	} or
	{
        [02] = { itemID = 28711, price = "Arena" }; --Grand Marshal's Scaled Helm
		[03] = { itemID = 28713, price = "Arena" }; --Grand Marshal's Scaled Shoulders
		[04] = { itemID = 28709, price = "Arena" }; --Grand Marshal's Scaled Chestpiece
		[05] = { itemID = 28712, price = "Arena" }; --Grand Marshal's Scaled Legguards
		[06] = { itemID = 28710, price = "Arena" }; --Grand Marshal's Scaled Gauntlets
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Retribution"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 27881, price = "Arena" }; --Gladiator's Scaled Helm
		[18] = { itemID = 27883, price = "Arena" }; --Gladiator's Scaled Shoulders
		[19] = { itemID = 27879, price = "Arena" }; --Gladiator's Scaled Chestpiece
		[20] = { itemID = 27880, price = "Arena" }; --Gladiator's Scaled Gauntlets
		[21] = { itemID = 27882, price = "Arena" }; --Gladiator's Scaled Legguards
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 31637, price = "Arena" }; --High Warlord's Ornamented Headcover
		[03] = { itemID = 31639, price = "Arena" }; --High Warlord's Ornamented Spaulders
		[04] = { itemID = 31635, price = "Arena" }; --High Warlord's Ornamented Chestguard
		[05] = { itemID = 31638, price = "Arena" }; --High Warlord's Ornamented Legplates
		[06] = { itemID = 31636, price = "Arena" }; --High Warlord's Ornamented Gloves
	} or
	{
		[02] = { itemID = 31632, price = "Arena" }; --Grand Marshal's Ornamented Headcover
		[03] = { itemID = 31634, price = "Arena" }; --Grand Marshal's Ornamented Spaulders
		[04] = { itemID = 31630, price = "Arena" }; --Grand Marshal's Ornamented Chestguard
		[05] = { itemID = 31633, price = "Arena" }; --Grand Marshal's Ornamented Legplates
		[06] = { itemID = 31631, price = "Arena" }; --Grand Marshal's Ornamented Gloves
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Holy"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31616, price = "Arena" }; --Gladiator's Ornamented Headcover
		[18] = { itemID = 31619, price = "Arena" }; --Gladiator's Ornamented Spaulders
		[19] = { itemID = 31613, price = "Arena" }; --Gladiator's Ornamented Chestguard
		[20] = { itemID = 31614, price = "Arena" }; --Gladiator's Ornamented Gloves
		[21] = { itemID = 31618, price = "Arena" }; --Gladiator's Ornamented Legplates
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 28857, price = "Arena" }; --High Warlord's Satin Hood
		[03] = { itemID = 28859, price = "Arena" }; --High Warlord's Satin Mantle
		[04] = { itemID = 28858, price = "Arena" }; --High Warlord's Satin Leggings
		[05] = { itemID = 28856, price = "Arena" }; --High Warlord's Satin Gloves
		[06] = { itemID = 28860, price = "Arena" }; --High Warlord's Satin Robe
	} or
	{
        [02] = { itemID = 28705, price = "Arena" }; --Grand Marshal's Satin Hood
		[03] = { itemID = 28707, price = "Arena" }; --Grand Marshal's Satin Mantle
		[04] = { itemID = 28706, price = "Arena" }; --Grand Marshal's Satin Leggings
		[05] = { itemID = 28704, price = "Arena" }; --Grand Marshal's Satin Gloves
		[06] = { itemID = 28708, price = "Arena" }; --Grand Marshal's Satin Robe
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Shadow"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 27708, price = "Arena" }; --Gladiator's Satin Hood
		[18] = { itemID = 27710, price = "Arena" }; --Gladiator's Satin Mantle
		[19] = { itemID = 27711, price = "Arena" }; --Gladiator's Satin Robe
		[20] = { itemID = 27707, price = "Arena" }; --Gladiator's Satin Gloves
		[21] = { itemID = 27709, price = "Arena" }; --Gladiator's Satin Leggings
	});
	AtlasLoot:UpdateTable(faction == "Horde" and
	{
		[02] = { itemID = 31626, price = "Arena" }; --High Warlord's Mooncloth Hood
		[03] = { itemID = 31628, price = "Arena" }; --High Warlord's Mooncloth Mantle
		[04] = { itemID = 31627, price = "Arena" }; --High Warlord's Mooncloth Leggings
		[05] = { itemID = 31621, price = "Arena" }; --High Warlord's Mooncloth Gloves
		[06] = { itemID = 31629, price = "Arena" }; --High Warlord's Mooncloth Robe
    } or
	{
        [02] = { itemID = 31622, price = "Arena" }; --Grand Marshal's Mooncloth Hood
		[03] = { itemID = 31624, price = "Arena" }; --Grand Marshal's Mooncloth Mantle
		[04] = { itemID = 31623, price = "Arena" }; --Grand Marshal's Mooncloth Leggings
		[05] = { itemID = 31620, price = "Arena" }; --Grand Marshal's Mooncloth Gloves
		[06] = { itemID = 31625, price = "Arena" }; --Grand Marshal's Mooncloth Robe
    },
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Holy"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31410, price = "Arena" }; --Gladiator's Mooncloth Hood
		[18] = { itemID = 31412, price = "Arena" }; --Gladiator's Mooncloth Mantle
		[19] = { itemID = 31413, price = "Arena" }; --Gladiator's Mooncloth Robe
		[20] = { itemID = 31409, price = "Arena" }; --Gladiator's Mooncloth Gloves
		[21] = { itemID = 31411, price = "Arena" }; --Gladiator's Mooncloth Leggings
	});
}

--Arena Season 2
AtlasLoot_Data["Pvp70Season2"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Arena Season 2"];
	{
		Name = AL["Back"];
		WebID = {41025, "npc"};
		[01] = { itemID = 278419, price = "Arena"  }; --Veteran's Cloak of Conquest
		[02] = { itemID = 278422, price = "Arena"  }; --Veteran's Cloak of Cruelty
		[03] = { itemID = 278418, price = "Arena"  }; --Veteran's Cloak of Power
		[04] = { itemID = 278417, price = "Arena"  }; --Veteran's Cloak of Salvation
		[05] = { itemID = 278420, price = "Arena"  }; --Veteran's Cloak of Triumph
		[06] = { itemID = 278421, price = "Arena"  }; --Veteran's Cloak of Tyranny
	};
	{
		Name = AL["Rings"];
		WebID = {41025, "npc"};
		[01] = { itemID = 278414, price = "Arena"  }; --Veteran's Band of Accuracy
		[02] = { itemID = 278410, price = "Arena"  }; --Veteran's Band of Conquest
		[03] = { itemID = 278413, price = "Arena"  }; --Veteran's Band of Cruelty
		[04] = { itemID = 33056, price = "Arena"  }; --Veteran's Band of Dominance
		[05] = { itemID = 278412, price = "Arena"  }; --Veteran's Band of Precision
		[06] = { itemID = 278415, price = "Arena"  }; --Veteran's Band of Reprieve
		[07] = { itemID = 33064, price = "Arena"  }; --Veteran's Band of Salvation
		[08] = { itemID = 278416, price = "Arena"  }; --Veteran's Band of Subjugation
		[09] = { itemID = 33057, price = "Arena"  }; --Veteran's Band of Triumph
		[10] = { itemID = 278411, price = "Arena"  }; --Veteran's Band of Tyranny	   
	};
	{
		Name = AL["Neck"];
		WebID = {41025, "npc"};
		[01] = { itemID = 33067, price = "Arena"  }; --Veteran's Pendant of Conquest
		[02] = { itemID = 278409, price = "Arena"  }; --Veteran's Pendant of Cruelty
		[03] = { itemID = 33065, price = "Arena"  }; --Veteran's Pendant of Dominance
		[04] = { itemID = 278407, price = "Arena"  }; --Veteran's Pendant of Reprieve
		[05] = { itemID = 33068, price = "Arena"  }; --Veteran's Pendant of Salvation
		[06] = { itemID = 278408, price = "Arena"  }; --Veteran's Pendant of Subjugation
		[07] = { itemID = 33066, price = "Arena"  }; --Veteran's Pendant of Triumph
		[08] = { itemID = 278406, price = "Arena"  }; --Veteran's Pendant of Tyranny

	};
	{
		Name = AL["Gems & Enchants"];
		[01] = { itemID = 205062, price = "5000 #faction#" }; --Resplendent Fire Agate
		[02] = { itemID = 205064, price = "5000 #faction#" }; --Lucent Fire Agate
		[03] = { itemID = 205066, price = "5000 #faction#" }; --Empowered Fire Agate
		[04] = { itemID = 205068, price = "5000 #faction#" }; --Durable Fire Agate
		[05] = { itemID = 205070, price = "5000 #faction#" }; --Piercing Idocrase
		[06] = { itemID = 205072, price = "5000 #faction#" }; --Tense Idocrase
		[07] = { itemID = 205074, price = "5000 #faction#" }; --Mysterious Heliotrope
		[08] = { itemID = 1505062, price = "100 #arena#" }; --Resplendent Fire Opal
		[09] = { itemID = 1505064, price = "100 #arena#" }; --Lucent Fire Opal
		[10] = { itemID = 1505066, price = "100 #arena#" }; --Empowered Fire Opal
		[11] = { itemID = 1505068, price = "100 #arena#" }; --Durable Fire Opal
		[12] = { itemID = 1505070, price = "100 #arena#" }; --Piercing Evergem
		[13] = { itemID = 1505072, price = "100 #arena#" }; --Tense Evergem
		[14] = { itemID = 1505074, price = "100 #arena#" }; --Mysterious Shadowgem
		[16] = { itemID = 449572, price = "23000 #faction#" }; --Superior Inscription of the Archmage
		[17] = { itemID = 449573, price = "23000 #faction#" }; --Superior Inscription of the Brawler
		[19] = { itemID = 449576, price = "25000 #faction#" }; --Arcanum of the Archmage
		[20] = { itemID = 449577, price = "25000 #faction#" }; --Arcanum of the Brawler
	};
	{
		Name = AL["Physical Damage "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 1"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 28298, price = "Arena" }; --Gladiator's Decapitator
		[03] = { itemID = 509122, price = "Arena" }; --Gladiator's Executioner
		[04] = { itemID = 509130, price = "Arena" }; --Gladiator's Battlehammer
		[05] = { itemID = 28299, price = "Arena" }; --Gladiator's Bonegrinder
		[06] = { itemID = 509134, price = "Arena" }; --Gladiator's Smasher
		[07] = { itemID = 28300, price = "Arena" }; --Gladiator's Painsaw
		[08] = { itemID = 414329, price = "Arena" }; --Gladiator's Polearm
		[09] = { itemID = 414352, price = "Arena" }; --Gladiator's Claymore
		[10] = { itemID = 24550, price = "Arena" }; --Gladiator's Greatsword
		[11] = { itemID = 28305, price = "Arena" }; --Gladiator's Pummeler
		[12] = { itemID = 28295, price = "Arena" }; --Gladiator's Slicer
		[13] = { itemID = 28307, price = "Arena" }; --Gladiator's Quickblade
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31966, price = "Arena" }; --Merciless Gladiator's Decapitator
		[18] = { itemID = 131966, price = "Arena" }; --Merciless Gladiator's Executioner
		[19] = { itemID = 509090, price = "Arena" }; --Merciless Gladiator's Battlehammer
		[20] = { itemID = 31959, price = "Arena" }; --Merciless Gladiator's Bonegrinder
		[21] = { itemID = 509094, price = "Arena" }; --Merciless Gladiator's Smasher
		[22] = { itemID = 32025, price = "Arena" }; --Merciless Gladiator's Painsaw
		[23] = { itemID = 414354, price = "Arena" }; --Merciless Gladiator's Polearm
		[24] = { itemID = 414355, price = "Arena" }; --Merciless Gladiator's Claymore
		[25] = { itemID = 31984, price = "Arena" }; --Merciless Gladiator's Greatsword
		[26] = { itemID = 32026, price = "Arena" }; --Merciless Gladiator's Pummeler
		[27] = { itemID = 32052, price = "Arena" }; --Merciless Gladiator's Slicer
		[28] = { itemID = 32027, price = "Arena" }; --Merciless Gladiator's Quickblade
	};
	{
		Name = AL["Physical Damage "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 28308, price = "Arena" }; --Gladiator's Cleaver
		[03] = { itemID = 509123, price = "Arena" }; --Gladiator's Chopper
		[04] = { itemID = 28309, price = "Arena" }; --Gladiator's Hacker
		[05] = { itemID = 28302, price = "Arena" }; --Gladiator's Bonecracker
		[06] = { itemID = 28314, price = "Arena" }; --Gladiator's Left Render
		[07] = { itemID = 28313, price = "Arena" }; --Gladiator's Right Ripper
		[08] = { itemID = 414360, price = "Arena" }; --Gladiator's Mutilator
		[09] = { itemID = 28310, price = "Arena" }; --Gladiator's Shiv
		[10] = { itemID = 28312, price = "Arena" }; --Gladiator's Shanker
		[11] = { itemID = 509126, price = "Arena" }; --Gladiator's Longbow
		[12] = { itemID = 28294, price = "Arena" }; --Gladiator's Heavy Crossbow
		[13] = { itemID = 509127, price = "Arena" }; --Gladiator's Rifle
		[14] = { itemID = 28319, price = "Arena" }; --Gladiator's War Edge
		[15] = { itemID = 28358, price = "Arena" }; --Gladiator's Shield Wall
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 509142, price = "Arena" }; --Merciless Gladiator's Cleaver
		[18] = { itemID = 509083, price = "Arena" }; --Merciless Gladiator's Chopper
		[19] = { itemID = 31985, price = "Arena" }; --Merciless Gladiator's Hacker
		[20] = { itemID = 31958, price = "Arena" }; --Merciless Gladiator's Bonecracker
		[21] = { itemID = 32003, price = "Arena" }; --Merciless Gladiator's Left Ripper
		[22] = { itemID = 32028, price = "Arena" }; --Merciless Gladiator's Right Ripper
		[23] = { itemID = 414369, price = "Arena" }; --Merciless Gladiator's Mutilator
		[24] = { itemID = 32046, price = "Arena" }; --Merciless Gladiator's Shiv
		[25] = { itemID = 32044, price = "Arena" }; --Merciless Gladiator's Shanker
		[26] = { itemID = 509086, price = "Arena" }; --Merciless Gladiator's Longbow
		[27] = { itemID = 31986, price = "Arena" }; --Merciless Gladiator's Heavy Crossbow
		[28] = { itemID = 509087, price = "Arena" }; --Merciless Gladiator's Rifle
		[29] = { itemID = 509081, price = "Arena" }; --Merciless Gladiator's War Edge
		[30] = { itemID = 32045, price = "Arena" }; --Merciless Gladiator's Shield Wall
	};
	{
		Name = AL["Caster "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 1"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 509128, price = "Arena" }; --Gladiator's Battle Staff
		[03] = { itemID = 509133, price = "Arena" }; --Gladiator's Guardian Staff
		[04] = { itemID = 24557, price = "Arena" }; --Gladiator's War Staff
		[05] = { itemID = 509129, price = "Arena" }; --Gladiator's Battlemace
		[06] = { itemID = 32450, price = "Arena" }; --Gladiator's Gavel
		[07] = { itemID = 509132, price = "Arena" }; --Gladiator's Guardian Mace
		[08] = { itemID = 32451, price = "Arena" }; --Gladiator's Salvation
		[09] = { itemID = 509136, price = "Arena" }; --Gladiator's Battleslicer
		[10] = { itemID = 28297, price = "Arena" }; --Gladiator's Spellblade
		[11] = { itemID = 414328, price = "Arena" }; --Gladiator's Dagger
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 509088, price = "Arena" }; --Merciless Gladiator's Battle Staff
		[18] = { itemID = 509093, price = "Arena" }; --Merciless Gladiator's Guardian Staff
		[19] = { itemID = 32055, price = "Arena" }; --Merciless Gladiator's War Staff
		[20] = { itemID = 509089, price = "Arena" }; --Merciless Gladiator's Battlemace
		[21] = { itemID = 32963, price = "Arena" }; --Merciless Gladiator's Gavel
		[22] = { itemID = 509092, price = "Arena" }; --Merciless Gladiator's Guardian Mace
		[23] = { itemID = 32964, price = "Arena" }; --Merciless Gladiator's Salvation
		[24] = { itemID = 509096, price = "Arena" }; --Merciless Gladiator's Battleslicer
		[25] = { itemID = 509098, price = "Arena" }; --Merciless Gladiator's Spellblade
		[26] = { itemID = 414353, price = "Arena" }; --Merciless Gladiator's Dagger
	};
	{
		Name = AL["Caster "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 509137, price = "Arena" }; --Gladiator's Magebow
		[03] = { itemID = 509125, price = "Arena" }; --Gladiator's Piercing Touch
		[04] = { itemID = 28320, price = "Arena" }; --Gladiator's Touch of Defeat
		[05] = { itemID = 509103, price = "Arena" }; --Gladiator's Barrier
		[06] = { itemID = 509117, price = "Arena" }; --Gladiator's Redoubt
		[07] = { itemID = 28346, price = "Arena" }; --Gladiator's Endgame
		[08] = { itemID = 509124, price = "Arena" }; --Gladiator's Grimoire
		[09] = { itemID = 32452, price = "Arena" }; --Gladiator's Reprieve
		[10] = { itemID = 509140, price = "Arena" }; --Gladiator's Libram of Fortitude
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 509097, price = "Arena" }; --Merciless Gladiator's Magebow
		[18] = { itemID = 509085, price = "Arena" }; --Merciless Gladiator's Piercing Touch
		[19] = { itemID = 509144, price = "Arena" }; --Merciless Gladiator's Touch of Defeat
		[20] = { itemID = 33313, price = "Arena" }; --Merciless Gladiator's Barrier
		[21] = { itemID = 33309, price = "Arena" }; --Merciless Gladiator's Redoubt
		[22] = { itemID = 31978, price = "Arena" }; --Merciless Gladiator's Endgame
		[23] = { itemID = 509084, price = "Arena" }; --Merciless Gladiator's Grimoire
		[24] = { itemID = 32961, price = "Arena" }; --Merciless Gladiator's Reprieve
		[25] = { itemID = 414370, price = "Arena" }; --Merciless Gladiator's Libram of Fortitude

	};
	{
		Name = AL["Cloth"]..AL["Offset"];
		WebID = {41025, "npc"};
        [01] = { itemID = 32811, price = "Arena" }; --Veteran's Dreadweave Cuffs
        [02] = { itemID = 32799, price = "Arena" }; --Veteran's Dreadweave Belt
        [03] = { itemID = 32787, price = "Arena" }; --Veteran's Dreadweave Stalkers
        [05] = { itemID = 32820, price = "Arena" }; --Veteran's Silk Cuffs
        [06] = { itemID = 32807, price = "Arena" }; --Veteran's Silk Belt
        [07] = { itemID = 32795, price = "Arena" }; --Veteran's Silk Footguards
        [09] = { itemID = 32980, price = "Arena" }; --Veteran's Mooncloth Cuffs
        [10] = { itemID = 32979, price = "Arena" }; --Veteran's Mooncloth Belt
        [11] = { itemID = 32981, price = "Arena" }; --Veteran's Mooncloth Slippers
    };
	{
		Name = AL["Leather"]..AL["Offset"];
		WebID = {41025, "npc"};
        [01] = { itemID = 32812, price = "Arena" }; --Veteran's Kodohide Bracers
        [02] = { itemID = 32800, price = "Arena" }; --Veteran's Kodohide Belt
        [03] = { itemID = 32788, price = "Arena" }; --Veteran's Kodohide Boots
        [05] = { itemID = 32814, price = "Arena" }; --Veteran's Leather Bracers
        [06] = { itemID = 32802, price = "Arena" }; --Veteran's Leather Belt
        [07] = { itemID = 32790, price = "Arena" }; --Veteran's Leather Boots
        [16] = { itemID = 32810, price = "Arena" }; --Veteran's Dragonhide Bracers
        [17] = { itemID = 32798, price = "Arena" }; --Veteran's Dragonhide Belt
        [18] = { itemID = 32786, price = "Arena" }; --Veteran's Dragonhide Boots
        [20] = { itemID = 32821, price = "Arena" }; --Veteran's Wyrmhide Bracers
        [21] = { itemID = 32808, price = "Arena" }; --Veteran's Wyrmhide Belt
        [22] = { itemID = 32796, price = "Arena" }; --Veteran's Wyrmhide Boots
    };
	{
		Name = AL["Mail"]..AL["Offset"];
		WebID = {41025, "npc"};
        [01] = { itemID = 32809, price = "Arena" }; --Veteran's Chain Bracers
        [02] = { itemID = 32797, price = "Arena" }; --Veteran's Chain Girdle
        [03] = { itemID = 32785, price = "Arena" }; --Veteran's Chain Sabatons
        [05] = { itemID = 32816, price = "Arena" }; --Veteran's Linked Bracers
        [06] = { itemID = 32803, price = "Arena" }; --Veteran's Linked Girdle
        [07] = { itemID = 32791, price = "Arena" }; --Veteran's Linked Sabatons
        [16] = { itemID = 32817, price = "Arena" }; --Veteran's Mail Bracers
        [17] = { itemID = 32804, price = "Arena" }; --Veteran's Mail Girdle
        [18] = { itemID = 32792, price = "Arena" }; --Veteran's Mail Sabatons
        [20] = { itemID = 32997, price = "Arena" }; --Veteran's Ringmail Bracers
        [21] = { itemID = 32998, price = "Arena" }; --Veteran's Ringmail Girdle
        [22] = { itemID = 32999, price = "Arena" }; --Veteran's Ringmail Sabatons
    };
	{
		Name = AL["Plate"]..AL["Offset"];
		WebID = {41025, "npc"};
        [01] = { itemID = 32813, price = "Arena" }; --Veteran's Lamellar Bracers
        [02] = { itemID = 32801, price = "Arena" }; --Veteran's Lamellar Belt
        [03] = { itemID = 32789, price = "Arena" }; --Veteran's Lamellar Greaves
        [05] = { itemID = 32818, price = "Arena" }; --Veteran's Plate Bracers
        [06] = { itemID = 32805, price = "Arena" }; --Veteran's Plate Belt
        [07] = { itemID = 32793, price = "Arena" }; --Veteran's Plate Greaves
        [16] = { itemID = 32989, price = "Arena" }; --Veteran's Ornamented Bracers
        [17] = { itemID = 32988, price = "Arena" }; --Veteran's Ornamented Belt
        [18] = { itemID = 32990, price = "Arena" }; --Veteran's Ornamented Greaves
        [20] = { itemID = 32819, price = "Arena" }; --Veteran's Scaled Bracers
        [21] = { itemID = 32806, price = "Arena" }; --Veteran's Scaled Belt
        [22] = { itemID = 32794, price = "Arena" }; --Veteran's Scaled Greaves
    };
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 28331, price = "Arena" }; --Gladiator's Chain Helm
		[03] = { itemID = 28333, price = "Arena" }; --Gladiator's Chain Spaulders
		[04] = { itemID = 28334, price = "Arena" }; --Gladiator's Chain Armor
		[05] = { itemID = 28335, price = "Arena" }; --Gladiator's Chain Gauntlets
		[06] = { itemID = 28332, price = "Arena" }; --Gladiator's Chain Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31962, price = "Arena" }; --Merciless Gladiator's Chain Helm
		[18] = { itemID = 31964, price = "Arena" }; --Merciless Gladiator's Chain Spaulders
		[19] = { itemID = 31960, price = "Arena" }; --Merciless Gladiator's Chain Armor
		[20] = { itemID = 31961, price = "Arena" }; --Merciless Gladiator's Chain Gauntlets
		[21] = { itemID = 31963, price = "Arena" }; --Merciless Gladiator's Chain Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 25855, price = "Arena" }; --Gladiator's Silk Cowl
		[03] = { itemID = 25854, price = "Arena" }; --Gladiator's Silk Amice
		[04] = { itemID = 25856, price = "Arena" }; --Gladiator's Silk Raiment
		[05] = { itemID = 25857, price = "Arena" }; --Gladiator's Silk Handguards
		[06] = { itemID = 25858, price = "Arena" }; --Gladiator's Silk Trousers
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32048, price = "Arena" }; --Merciless Gladiator's Silk Cowl
		[18] = { itemID = 32047, price = "Arena" }; --Merciless Gladiator's Silk Amice
		[19] = { itemID = 32050, price = "Arena" }; --Merciless Gladiator's Silk Raiment
		[20] = { itemID = 32049, price = "Arena" }; --Merciless Gladiator's Silk Handguards
		[21] = { itemID = 32051, price = "Arena" }; --Merciless Gladiator's Silk Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 25830, price = "Arena" }; --Gladiator's Leather Helm
		[03] = { itemID = 25832, price = "Arena" }; --Gladiator's Leather Spaulders
		[04] = { itemID = 25831, price = "Arena" }; --Gladiator's Leather Tunic
		[05] = { itemID = 25834, price = "Arena" }; --Gladiator's Leather Gloves
		[06] = { itemID = 25833, price = "Arena" }; --Gladiator's Leather Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31999, price = "Arena" }; --Merciless Gladiator's Leather Helm
		[18] = { itemID = 32001, price = "Arena" }; --Merciless Gladiator's Leather Spaulders
		[19] = { itemID = 32002, price = "Arena" }; --Merciless Gladiator's Leather Tunic
		[20] = { itemID = 31998, price = "Arena" }; --Merciless Gladiator's Leather Gloves
		[21] = { itemID = 32000, price = "Arena" }; --Merciless Gladiator's Leather Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 24545, price = "Arena" }; --Gladiator's Plate Helm
		[03] = { itemID = 24546, price = "Arena" }; --Gladiator's Plate Shoulders
		[04] = { itemID = 24544, price = "Arena" }; --Gladiator's Plate Chestpiece
		[05] = { itemID = 24549, price = "Arena" }; --Gladiator's Plate Gauntlets
		[06] = { itemID = 24547, price = "Arena" }; --Gladiator's Plate Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 30488, price = "Arena" }; --Merciless Gladiator's Plate Helm
		[18] = { itemID = 30490, price = "Arena" }; --Merciless Gladiator's Plate Shoulders
		[19] = { itemID = 30486, price = "Arena" }; --Merciless Gladiator's Plate Chestpiece
		[20] = { itemID = 30487, price = "Arena" }; --Merciless Gladiator's Plate Gauntlets
		[21] = { itemID = 30489, price = "Arena" }; --Merciless Gladiator's Plate Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. AL["Demonology"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 24553, price = "Arena" }; --Gladiator's Dreadweave Hood
		[03] = { itemID = 24554, price = "Arena" }; --Gladiator's Dreadweave Mantle
		[04] = { itemID = 24552, price = "Arena" }; --Gladiator's Dreadweave Robe
		[05] = { itemID = 24556, price = "Arena" }; --Gladiator's Dreadweave Gloves
		[06] = { itemID = 24555, price = "Arena" }; --Gladiator's Dreadweave Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31974, price = "Arena" }; --Merciless Gladiator's Dreadweave Hood
		[18] = { itemID = 31976, price = "Arena" }; --Merciless Gladiator's Dreadweave Mantle
		[19] = { itemID = 31977, price = "Arena" }; --Merciless Gladiator's Dreadweave Robe
		[20] = { itemID = 31973, price = "Arena" }; --Merciless Gladiator's Dreadweave Gloves
		[21] = { itemID = 31975, price = "Arena" }; --Merciless Gladiator's Dreadweave Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. AtlasLoot.Colors.WHITE..AL["Destruction"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 30187, price = "Arena" }; --Gladiator's Felweave Cowl
		[03] = { itemID = 30186, price = "Arena" }; --Gladiator's Felweave Amice
		[04] = { itemID = 30200, price = "Arena" }; --Gladiator's Felweave Raiment
		[05] = { itemID = 30188, price = "Arena" }; --Gladiator's Felweave Handguards
		[06] = { itemID = 30201, price = "Arena" }; --Gladiator's Felweave Trousers
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31980, price = "Arena" }; --Merciless Gladiator's Felweave Cowl
		[18] = { itemID = 31979, price = "Arena" }; --Merciless Gladiator's Felweave Amice
		[19] = { itemID = 31982, price = "Arena" }; --Merciless Gladiator's Felweave Raiment
		[20] = { itemID = 31981, price = "Arena" }; --Merciless Gladiator's Felweave Handguards
		[21] = { itemID = 31983, price = "Arena" }; --Merciless Gladiator's Felweave Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - "..AtlasLoot.Colors.WHITE..AL["Feral"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 28127, price = "Arena" }; --Gladiator's Dragonhide Helm
		[03] = { itemID = 28129, price = "Arena" }; --Gladiator's Dragonhide Spaulders
		[04] = { itemID = 28130, price = "Arena" }; --Gladiator's Dragonhide Tunic
		[05] = { itemID = 28126, price = "Arena" }; --Gladiator's Dragonhide Gloves
		[06] = { itemID = 28128, price = "Arena" }; --Gladiator's Dragonhide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31968, price = "Arena" }; --Merciless Gladiator's Dragonhide Helm
		[18] = { itemID = 31971, price = "Arena" }; --Merciless Gladiator's Dragonhide Spaulders
		[19] = { itemID = 31972, price = "Arena" }; --Merciless Gladiator's Dragonhide Tunic
		[20] = { itemID = 31967, price = "Arena" }; --Merciless Gladiator's Dragonhide Gloves
		[21] = { itemID = 31969, price = "Arena" }; --Merciless Gladiator's Dragonhide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Balance"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 28137, price = "Arena" }; --Gladiator's Wyrmhide Helm
		[03] = { itemID = 28139, price = "Arena" }; --Gladiator's Wyrmhide Spaulders
		[04] = { itemID = 28140, price = "Arena" }; --Gladiator's Wyrmhide Tunic
		[05] = { itemID = 28136, price = "Arena" }; --Gladiator's Wyrmhide Gloves
		[06] = { itemID = 28138, price = "Arena" }; --Gladiator's Wyrmhide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32057, price = "Arena" }; --Merciless Gladiator's Wyrmhide Helm
		[18] = { itemID = 32059, price = "Arena" }; --Merciless Gladiator's Wyrmhide Spaulders
		[19] = { itemID = 32060, price = "Arena" }; --Merciless Gladiator's Wyrmhide Tunic
		[20] = { itemID = 32056, price = "Arena" }; --Merciless Gladiator's Wyrmhide Gloves
		[21] = { itemID = 32058, price = "Arena" }; --Merciless Gladiator's Wyrmhide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Restoration"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31376, price = "Arena" }; --Gladiator's Kodohide Helm
		[03] = { itemID = 31378, price = "Arena" }; --Gladiator's Kodohide Spaulders
		[04] = { itemID = 31379, price = "Arena" }; --Gladiator's Kodohide Tunic
		[05] = { itemID = 31375, price = "Arena" }; --Gladiator's Kodohide Gloves
		[06] = { itemID = 31377, price = "Arena" }; --Gladiator's Kodohide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31988, price = "Arena" }; --Merciless Gladiator's Kodohide Helm
		[18] = { itemID = 31990, price = "Arena" }; --Merciless Gladiator's Kodohide Spaulders
		[19] = { itemID = 31991, price = "Arena" }; --Merciless Gladiator's Kodohide Tunic
		[20] = { itemID = 31987, price = "Arena" }; --Merciless Gladiator's Kodohide Gloves
		[21] = { itemID = 31989, price = "Arena" }; --Merciless Gladiator's Kodohide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Enhancement"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 25998, price = "Arena" }; --Gladiator's Linked Helm
		[03] = { itemID = 25999, price = "Arena" }; --Gladiator's Linked Spaulders
		[04] = { itemID = 25997, price = "Arena" }; --Gladiator's Linked Armor
		[05] = { itemID = 26000, price = "Arena" }; --Gladiator's Linked Gauntlets
		[06] = { itemID = 26001, price = "Arena" }; --Gladiator's Linked Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32006, price = "Arena" }; --Merciless Gladiator's Linked Helm
		[18] = { itemID = 32008, price = "Arena" }; --Merciless Gladiator's Linked Spaulders
		[19] = { itemID = 32004, price = "Arena" }; --Merciless Gladiator's Linked Armor
		[20] = { itemID = 32005, price = "Arena" }; --Merciless Gladiator's Linked Gauntlets
		[21] = { itemID = 32007, price = "Arena" }; --Merciless Gladiator's Linked Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Elemental"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 27471, price = "Arena" }; --Gladiator's Mail Helm
		[03] = { itemID = 27473, price = "Arena" }; --Gladiator's Mail Spaulders
		[04] = { itemID = 27469, price = "Arena" }; --Gladiator's Mail Armor
		[05] = { itemID = 27470, price = "Arena" }; --Gladiator's Mail Gauntlets
		[06] = { itemID = 27472, price = "Arena" }; --Gladiator's Mail Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32011, price = "Arena" }; --Merciless Gladiator's Mail Helm
		[18] = { itemID = 32013, price = "Arena" }; --Merciless Gladiator's Mail Spaulders
		[19] = { itemID = 32009, price = "Arena" }; --Merciless Gladiator's Mail Armor
		[20] = { itemID = 32010, price = "Arena" }; --Merciless Gladiator's Mail Gauntlets
		[21] = { itemID = 32012, price = "Arena" }; --Merciless Gladiator's Mail Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Restoration"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31400, price = "Arena" }; --Gladiator's Ringmail Helm
		[03] = { itemID = 31407, price = "Arena" }; --Gladiator's Ringmail Spaulders
		[04] = { itemID = 31396, price = "Arena" }; --Gladiator's Ringmail Armor
		[05] = { itemID = 31397, price = "Arena" }; --Gladiator's Ringmail Gauntlets
		[06] = { itemID = 31406, price = "Arena" }; --Gladiator's Ringmail Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32031, price = "Arena" }; --Merciless Gladiator's Ringmail Helm
		[18] = { itemID = 32033, price = "Arena" }; --Merciless Gladiator's Ringmail Spaulders
		[19] = { itemID = 32029, price = "Arena" }; --Merciless Gladiator's Ringmail Armor
		[20] = { itemID = 32030, price = "Arena" }; --Merciless Gladiator's Ringmail Gauntlets
		[21] = { itemID = 32032, price = "Arena" }; --Merciless Gladiator's Ringmail Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Protection"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 27704, price = "Arena" }; --Gladiator's Lamellar Helm
		[03] = { itemID = 27706, price = "Arena" }; --Gladiator's Lamellar Shoulders
		[04] = { itemID = 27702, price = "Arena" }; --Gladiator's Lamellar Chestpiece
		[05] = { itemID = 27703, price = "Arena" }; --Gladiator's Lamellar Gauntlets
		[06] = { itemID = 27705, price = "Arena" }; --Gladiator's Lamellar Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 31997, price = "Arena" }; --Merciless Gladiator's Lamellar Helm
		[18] = { itemID = 31996, price = "Arena" }; --Merciless Gladiator's Lamellar Shoulders
		[19] = { itemID = 31992, price = "Arena" }; --Merciless Gladiator's Lamellar Chestpiece
		[20] = { itemID = 31993, price = "Arena" }; --Merciless Gladiator's Lamellar Gauntlets
		[21] = { itemID = 31995, price = "Arena" }; --Merciless Gladiator's Lamellar Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Retribution"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 27881, price = "Arena" }; --Gladiator's Scaled Helm
		[03] = { itemID = 27883, price = "Arena" }; --Gladiator's Scaled Shoulders
		[04] = { itemID = 27879, price = "Arena" }; --Gladiator's Scaled Chestpiece
		[05] = { itemID = 27880, price = "Arena" }; --Gladiator's Scaled Gauntlets
		[06] = { itemID = 27882, price = "Arena" }; --Gladiator's Scaled Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32041, price = "Arena" }; --Merciless Gladiator's Scaled Helm
		[18] = { itemID = 32043, price = "Arena" }; --Merciless Gladiator's Scaled Shoulders
		[19] = { itemID = 32039, price = "Arena" }; --Merciless Gladiator's Scaled Chestpiece
		[20] = { itemID = 32040, price = "Arena" }; --Merciless Gladiator's Scaled Gauntlets
		[21] = { itemID = 32042, price = "Arena" }; --Merciless Gladiator's Scaled Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Holy"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31616, price = "Arena" }; --Gladiator's Ornamented Headcover
		[03] = { itemID = 31619, price = "Arena" }; --Gladiator's Ornamented Spaulders
		[04] = { itemID = 31613, price = "Arena" }; --Gladiator's Ornamented Chestguard
		[05] = { itemID = 31614, price = "Arena" }; --Gladiator's Ornamented Gloves
		[06] = { itemID = 31618, price = "Arena" }; --Gladiator's Ornamented Legplates
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32022, price = "Arena" }; --Merciless Gladiator's Ornamented Headcover
		[18] = { itemID = 32024, price = "Arena" }; --Merciless Gladiator's Ornamented Spaulders
		[19] = { itemID = 32020, price = "Arena" }; --Merciless Gladiator's Ornamented Chestguard
		[20] = { itemID = 32021, price = "Arena" }; --Merciless Gladiator's Ornamented Gloves
		[21] = { itemID = 32023, price = "Arena" }; --Merciless Gladiator's Ornamented Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Shadow"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 27708, price = "Arena" }; --Gladiator's Satin Hood
		[03] = { itemID = 27710, price = "Arena" }; --Gladiator's Satin Mantle
		[04] = { itemID = 27711, price = "Arena" }; --Gladiator's Satin Robe
		[05] = { itemID = 27707, price = "Arena" }; --Gladiator's Satin Gloves
		[06] = { itemID = 27709, price = "Arena" }; --Gladiator's Satin Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32035, price = "Arena" }; --Merciless Gladiator's Satin Hood
		[18] = { itemID = 32037, price = "Arena" }; --Merciless Gladiator's Satin Mantle
		[19] = { itemID = 32038, price = "Arena" }; --Merciless Gladiator's Satin Robe
		[20] = { itemID = 32034, price = "Arena" }; --Merciless Gladiator's Satin Gloves
		[21] = { itemID = 32036, price = "Arena" }; --Merciless Gladiator's Satin Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Holy"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31410, price = "Arena" }; --Gladiator's Mooncloth Hood
		[03] = { itemID = 31412, price = "Arena" }; --Gladiator's Mooncloth Mantle
		[04] = { itemID = 31413, price = "Arena" }; --Gladiator's Mooncloth Robe
		[05] = { itemID = 31409, price = "Arena" }; --Gladiator's Mooncloth Gloves
		[06] = { itemID = 31411, price = "Arena" }; --Gladiator's Mooncloth Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 32016, price = "Arena" }; --Merciless Gladiator's Mooncloth Hood
		[18] = { itemID = 32018, price = "Arena" }; --Merciless Gladiator's Mooncloth Mantle
		[19] = { itemID = 32019, price = "Arena" }; --Merciless Gladiator's Mooncloth Robe
		[20] = { itemID = 32015, price = "Arena" }; --Merciless Gladiator's Mooncloth Gloves
		[21] = { itemID = 32017, price = "Arena" }; --Merciless Gladiator's Mooncloth Leggings
	};
}

--Arena Season 3
AtlasLoot_Data["Pvp70Season3"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Arena Season 3"];
	{
		Name = AL["Accessories"];
		WebID = {41035, "npc"};
		[01] = { itemID = 901000, price = "Arena" }; --Vindicator's Cloak of Battle
		[02] = { itemID = 901001, price = "Arena" }; --Vindicator's Cloak of Condemnation
		[03] = { itemID = 901002, price = "Arena" }; --Vindicator's Cloak of Power
		[04] = { itemID = 901003, price = "Arena" }; --Vindicator's Cloak of Salvation
		[06] = { itemID = 33918, price = "Arena" }; --Vindicator's Band of Salvation
		[07] = { itemID = 33919, price = "Arena" }; --Vindicator's Band of Triumph
		[08] = { itemID = 433919, price = "Arena" }; --Vindicator's Band of Combat
		[09] = { itemID = 33853, price = "Arena" }; --Vindicator's Band of Dominance
		[10] = { itemID = 35320, price = "Arena" }; --Vindicator's band of Subjugation 
		[11] = { itemID = 901015, price = "Arena" }; --Vindicator's Band of Critical Mass
		[16] = { itemID = 33920, price = "Arena" }; --Vindicator's Pendant of Conquest
		[17] = { itemID = 33921, price = "Arena" }; --Vindicator's Pendant of Dominance
		[18] = { itemID = 33922, price = "Arena" }; --Vindicator's Pendant of Salvation
		[19] = { itemID = 33923, price = "Arena" }; --Vindicator's Pendant of Triumph
		[20] = { itemID = 433923, price = "Arena" }; --Vindicator's Pendant of Power
		[21] = { itemID = 433924, price = "Arena" }; --Vindicator's Pendant of Combat
	};
	{
		Name = AL["Physical Damage "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 1"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31966, price = "Arena" }; --Merciless Gladiator's Decapitator
		[03] = { itemID = 131966, price = "Arena" }; --Merciless Gladiator's Executioner
		[04] = { itemID = 509090, price = "Arena" }; --Merciless Gladiator's Battlehammer
		[05] = { itemID = 31959, price = "Arena" }; --Merciless Gladiator's Bonegrinder
		[06] = { itemID = 509094, price = "Arena" }; --Merciless Gladiator's Smasher
		[07] = { itemID = 32025, price = "Arena" }; --Merciless Gladiator's Painsaw
		[08] = { itemID = 414354, price = "Arena" }; --Merciless Gladiator's Polearm
		[09] = { itemID = 414355, price = "Arena" }; --Merciless Gladiator's Claymore
		[10] = { itemID = 31984, price = "Arena" }; --Merciless Gladiator's Greatsword
		[11] = { itemID = 32026, price = "Arena" }; --Merciless Gladiator's Pummeler
		[12] = { itemID = 32052, price = "Arena" }; --Merciless Gladiator's Slicer
		[13] = { itemID = 32027, price = "Arena" }; --Merciless Gladiator's Quickblade
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 33670, price = "Arena" }; --Vengeful Gladiator's Decapitator
		[18] = { itemID = 34014, price = "Arena" }; --Vengeful Gladiator's Executioner
		[19] = { itemID = 300136, price = "Arena" }; --Vengeful Gladiator's Battlehammer
		[20] = { itemID = 33663, price = "Arena" }; --Vengeful Gladiator's Bonegrinder
		[21] = { itemID = 300140, price = "Arena" }; --Vengeful Gladiator's Smasher
		[22] = { itemID = 33727, price = "Arena" }; --Vengeful Gladiator's Painsaw
		[23] = { itemID = 414356, price = "Arena" }; --Vengeful Gladiator's Polearm
		[24] = { itemID = 414357, price = "Arena" }; --Vengeful Gladiator's Claymore
		[25] = { itemID = 33688, price = "Arena" }; --Vengeful Gladiator's Greatsword
		[26] = { itemID = 33733, price = "Arena" }; --Vengeful Gladiator's Pummeler
		[27] = { itemID = 33762, price = "Arena" }; --Vengeful Gladiator's Slicer
		[28] = { itemID = 414377, price = "Arena" }; --Vengeful Gladiator's Quickblade
	};
	{
		Name = AL["Physical Damage "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 509142, price = "Arena" }; --Merciless Gladiator's Cleaver
		[03] = { itemID = 509083, price = "Arena" }; --Merciless Gladiator's Chopper
		[04] = { itemID = 31985, price = "Arena" }; --Merciless Gladiator's Hacker
		[05] = { itemID = 31958, price = "Arena" }; --Merciless Gladiator's Bonecracker
		[06] = { itemID = 32003, price = "Arena" }; --Merciless Gladiator's Left Ripper
		[07] = { itemID = 32028, price = "Arena" }; --Merciless Gladiator's Right Ripper
		[08] = { itemID = 414369, price = "Arena" }; --Merciless Gladiator's Mutilator
		[09] = { itemID = 32046, price = "Arena" }; --Merciless Gladiator's Shiv
		[10] = { itemID = 32044, price = "Arena" }; --Merciless Gladiator's Shanker
		[11] = { itemID = 509086, price = "Arena" }; --Merciless Gladiator's Longbow
		[12] = { itemID = 31986, price = "Arena" }; --Merciless Gladiator's Heavy Crossbow
		[13] = { itemID = 509087, price = "Arena" }; --Merciless Gladiator's Rifle
		[14] = { itemID = 509081, price = "Arena" }; --Merciless Gladiator's War Edge
		[15] = { itemID = 32045, price = "Arena" }; --Merciless Gladiator's Shield Wall
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 33669, price = "Arena" }; --Vengeful Gladiator's Cleaver
		[18] = { itemID = 34015, price = "Arena" }; --Vengeful Gladiator's Chopper
		[19] = { itemID = 414371, price = "Arena" }; --Vengeful Gladiator's Hacker
		[20] = { itemID = 414376, price = "Arena" }; --Vengeful Gladiator's Bonecracker
		[21] = { itemID = 34016, price = "Arena" }; --Vengeful Gladiator's Left Render
		[22] = { itemID = 33737, price = "Arena" }; --Vengeful Gladiator's Right Ripper
		[23] = { itemID = 414378, price = "Arena" }; --Vengeful Gladiator's Mutilator
		[24] = { itemID = 414379, price = "Arena" }; --Vengeful Gladiator's Shiv
		[25] = { itemID = 33754, price = "Arena" }; --Vengeful Gladiator's Shanker
		[26] = { itemID = 34529, price = "Arena" }; --Vengeful Gladiator's Longbow
		[27] = { itemID = 33006, price = "Arena" }; --Vengeful Gladiator's Heavy Crossbow
		[28] = { itemID = 34530, price = "Arena" }; --Vengeful Gladiator's Rifle
		[29] = { itemID = 33765, price = "Arena" }; --Vengeful Gladiator's War Edge
		[30] = { itemID = 33755, price = "Arena" }; --Vengeful Gladiator's Shield Wall
	};
	{
		Name = AL["Caster "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 1"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 509088, price = "Arena" }; --Merciless Gladiator's Battle Staff
		[03] = { itemID = 509093, price = "Arena" }; --Merciless Gladiator's Guardian Staff
		[04] = { itemID = 32055, price = "Arena" }; --Merciless Gladiator's War Staff
		[05] = { itemID = 509089, price = "Arena" }; --Merciless Gladiator's Battlemace
		[06] = { itemID = 32963, price = "Arena" }; --Merciless Gladiator's Gavel
		[07] = { itemID = 509092, price = "Arena" }; --Merciless Gladiator's Guardian Mace
		[08] = { itemID = 32964, price = "Arena" }; --Merciless Gladiator's Salvation
		[09] = { itemID = 509096, price = "Arena" }; --Merciless Gladiator's Battleslicer
		[10] = { itemID = 509098, price = "Arena" }; --Merciless Gladiator's Spellblade
		[11] = { itemID = 414353, price = "Arena" }; --Merciless Gladiator's Dagger
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 34540, price = "Arena" }; --Vengeful Gladiator's Battle Staff
		[18] = { itemID = 300139, price = "Arena" }; --Vengeful Gladiator's Guardian Staff
		[19] = { itemID = 33766, price = "Arena" }; --Vengeful Gladiator's War Staff
		[20] = { itemID = 300135, price = "Arena" }; --Vengeful Gladiator's Battlemace
		[21] = { itemID = 33687, price = "Arena" }; --Vengeful Gladiator's Gavel
		[22] = { itemID = 300138, price = "Arena" }; --Vengeful Gladiator's Guardian Mace
		[23] = { itemID = 33743, price = "Arena" }; --Vengeful Gladiator's Salvation
		[24] = { itemID = 300147, price = "Arena" }; --Vengeful Gladiator's Battleslicer
		[25] = { itemID = 33763, price = "Arena" }; --Vengeful Gladiator's Spellblade
		[26] = { itemID = 300137, price = "Arena" }; --Vengeful Gladiator's Dagger
	};
	{
		Name = AL["Caster "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 509097, price = "Arena" }; --Merciless Gladiator's Magebow
		[03] = { itemID = 509085, price = "Arena" }; --Merciless Gladiator's Piercing Touch
		[04] = { itemID = 509144, price = "Arena" }; --Merciless Gladiator's Touch of Defeat
		[05] = { itemID = 33313, price = "Arena" }; --Merciless Gladiator's Barrier
		[06] = { itemID = 33309, price = "Arena" }; --Merciless Gladiator's Redoubt
		[07] = { itemID = 31978, price = "Arena" }; --Merciless Gladiator's Endgame
		[08] = { itemID = 509084, price = "Arena" }; --Merciless Gladiator's Grimoire
		[09] = { itemID = 32961, price = "Arena" }; --Merciless Gladiator's Reprieve
		[10] = { itemID = 414370, price = "Arena" }; --Merciless Gladiator's Libram of Fortitude
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 300148, price = "Arena" }; --Vengeful Gladiator's Magebow
		[18] = { itemID = 34066, price = "Arena" }; --Vengeful Gladiator's Piercing Touch
		[19] = { itemID = 33764, price = "Arena" }; --Vengeful Gladiator's Touch of Defeat
		[20] = { itemID = 33661, price = "Arena" }; --Vengeful Gladiator's Barrier
		[21] = { itemID = 33735, price = "Arena" }; --Vengeful Gladiator's Redoubt
		[22] = { itemID = 33681, price = "Arena" }; --Vengeful Gladiator's Endgame
		[23] = { itemID = 34033, price = "Arena" }; --Vengeful Gladiator's Grimoire
		[24] = { itemID = 33736, price = "Arena" }; --Vengeful Gladiator's Reprieve
		[25] = { itemID = 300149, price = "Arena" }; --Vengeful Gladiator's Libram of Fortitude
	};
	{
		Name = AL["Cloth "]..AL["Offset"];
		WebID = {41035, "npc"};
		[01] = { itemID = 33883, price = "Arena" }; --Vindicator's Dreadweave Cuffs
		[02] = { itemID = 33882, price = "Arena" }; --Vindicator's Dreadweave Belt
		[03] = { itemID = 33884, price = "Arena" }; --Vindicator's Dreadweave Stalkers
		[05] = { itemID = 33913, price = "Arena" }; --Vindicator's Silk Cuffs
	    [06] = { itemID = 33912, price = "Arena" }; --Vindicator's Silk Belt
		[07] = { itemID = 33914, price = "Arena" }; --Vindicator's Silk Footguards
		[09] = { itemID = 33901, price = "Arena" }; --Vindicator's Mooncloth Cuffs
		[10] = { itemID = 33900, price = "Arena" }; --Vindicator's Mooncloth Belt
		[11] = { itemID = 33902, price = "Arena" }; --Vindicator's Mooncloth Slippers
	};
	{
		Name = AL["Leather "]..AL["Offset"];
		WebID = {41035, "npc"};
		[01] = { itemID = 33881, price = "Arena" }; --Vindicator's Dragonhide Bracers
		[02] = { itemID = 33879, price = "Arena" }; --Vindicator's Dragonhide Belt
		[03] = { itemID = 33880, price = "Arena" }; --Vindicator's Dragonhide Boots
		[05] = { itemID = 33887, price = "Arena" }; --Vindicator's Kodohide Bracers
		[06] = { itemID = 33885, price = "Arena" }; --Vindicator's Kodohide Belt
		[07] = { itemID = 33886, price = "Arena" }; --Vindicator's Kodohide Boots
		[16] = { itemID = 33893, price = "Arena" }; --Vindicator's Leather Bracers
		[17] = { itemID = 33891, price = "Arena" }; --Vindicator's Leather Belt
		[18] = { itemID = 33892, price = "Arena" }; --Vindicator's Leather Boots
		[20] = { itemID = 33917, price = "Arena" }; --Vindicator's Wyrmhide Bracers
		[21] = { itemID = 33915, price = "Arena" }; --Vindicator's Wyrmhide Belt
		[22] = { itemID = 33916, price = "Arena" }; --Vindicator's Wyrmhide Boots
	};
	{
		Name = AL["Mail "]..AL["Offset"];
		WebID = {41035, "npc"};
		[01] = { itemID = 33876, price = "Arena" }; --Vindicator's Chain Bracers
		[02] = { itemID = 33877, price = "Arena" }; --Vindicator's Chain Girdle
		[03] = { itemID = 33878, price = "Arena" }; --Vindicator's Chain Sabatons
		[05] = { itemID = 33894, price = "Arena" }; --Vindicator's Linked Bracers
		[06] = { itemID = 33895, price = "Arena" }; --Vindicator's Linked Girdle
		[07] = { itemID = 33896, price = "Arena" }; --Vindicator's Linked Sabatons
		[09] = { itemID = 33897, price = "Arena" }; --Vindicator's Mail Bracers
		[10] = { itemID = 33898, price = "Arena" }; --Vindicator's Mail Girdle
		[11] = { itemID = 33899, price = "Arena" }; --Vindicator's Mail Sabatons
		[16] = { itemID = 33909, price = "Arena" }; --Vindicator's Scaled Belt
		[17] = { itemID = 33910, price = "Arena" }; --Vindicator's Scaled Bracers
		[18] = { itemID = 33911, price = "Arena" }; --Vindicator's Scaled Greaves
		[20] = { itemID = 33906, price = "Arena" }; --Vindicator's Ringmail Bracers
		[21] = { itemID = 33907, price = "Arena" }; --Vindicator's Ringmail Girdle
		[22] = { itemID = 33908, price = "Arena" }; --Vindicator's Ringmail Sabatons
	};
	{
		Name = AL["Plate "]..AL["Offset"];
		WebID = {41035, "npc"};
		[01] = { itemID = 33889, price = "Arena" }; --Vindicator's Lamellar Bracers
		[02] = { itemID = 33888, price = "Arena" }; --Vindicator's Lamellar Belt
		[03] = { itemID = 33890, price = "Arena" }; --Vindicator's Lamellar Greaves
		[05] = { itemID = 33903, price = "Arena" }; --Vindicator's Ornamented Belt
		[06] = { itemID = 33904, price = "Arena" }; --Vindicator's Ornamented Bracers
		[07] = { itemID = 33905, price = "Arena" }; --Vindicator's Ornamented Greaves
		[09] = { itemID = 33813, price = "Arena" }; --Vindicator's Plate Bracers
		[10] = { itemID = 33811, price = "Arena" }; --Vindicator's Plate Belt
		[11] = { itemID = 33812, price = "Arena" }; --Vindicator's Plate Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31962, price = "Arena" }; --Merciless Gladiator's Chain Helm
		[03] = { itemID = 31964, price = "Arena" }; --Merciless Gladiator's Chain Spaulders
		[04] = { itemID = 31960, price = "Arena" }; --Merciless Gladiator's Chain Armor
		[05] = { itemID = 31961, price = "Arena" }; --Merciless Gladiator's Chain Gauntlets
		[06] = { itemID = 31963, price = "Arena" }; --Merciless Gladiator's Chain Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923477, price = "Arena" }; --Vengeful Gladiator's Chain Helm
		[18] = { itemID = 923479, price = "Arena" }; --Vengeful Gladiator's Chain Spaulders
		[19] = { itemID = 923475, price = "Arena" }; --Vengeful Gladiator's Chain Armor
		[20] = { itemID = 923476, price = "Arena" }; --Vengeful Gladiator's Chain Gauntlets
		[21] = { itemID = 923478, price = "Arena" }; --Vengeful Gladiator's Chain Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32048, price = "Arena" }; --Merciless Gladiator's Silk Cowl
		[03] = { itemID = 32047, price = "Arena" }; --Merciless Gladiator's Silk Amice
		[04] = { itemID = 32050, price = "Arena" }; --Merciless Gladiator's Silk Raiment
		[05] = { itemID = 32049, price = "Arena" }; --Merciless Gladiator's Silk Handguards
		[06] = { itemID = 32051, price = "Arena" }; --Merciless Gladiator's Silk Trousers
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923546, price = "Arena" }; --Vengeful Gladiator's Silk Cowl
		[18] = { itemID = 923545, price = "Arena" }; --Vengeful Gladiator's Silk Amice
		[19] = { itemID = 923548, price = "Arena" }; --Vengeful Gladiator's Silk Raiment
		[20] = { itemID = 923547, price = "Arena" }; --Vengeful Gladiator's Silk Handguards
		[21] = { itemID = 923549, price = "Arena" }; --Vengeful Gladiator's Silk Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31999, price = "Arena" }; --Merciless Gladiator's Leather Helm
		[03] = { itemID = 32001, price = "Arena" }; --Merciless Gladiator's Leather Spaulders
		[04] = { itemID = 32002, price = "Arena" }; --Merciless Gladiator's Leather Tunic
		[05] = { itemID = 31998, price = "Arena" }; --Merciless Gladiator's Leather Gloves
		[06] = { itemID = 32000, price = "Arena" }; --Merciless Gladiator's Leather Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923506, price = "Arena" }; --Vengeful Gladiator's Leather Helm
		[18] = { itemID = 923508, price = "Arena" }; --Vengeful Gladiator's Leather Spaulders
		[19] = { itemID = 923509, price = "Arena" }; --Vengeful Gladiator's Leather Tunic
		[20] = { itemID = 923505, price = "Arena" }; --Vengeful Gladiator's Leather Gloves
		[21] = { itemID = 923507, price = "Arena" }; --Vengeful Gladiator's Leather Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 30488, price = "Arena" }; --Merciless Gladiator's Plate Helm
		[03] = { itemID = 30490, price = "Arena" }; --Merciless Gladiator's Plate Shoulders
		[04] = { itemID = 30486, price = "Arena" }; --Merciless Gladiator's Plate Chestpiece
		[05] = { itemID = 30487, price = "Arena" }; --Merciless Gladiator's Plate Gauntlets
		[06] = { itemID = 30489, price = "Arena" }; --Merciless Gladiator's Plate Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923472, price = "Arena" }; --Vengeful Gladiator's Plate Helm
		[18] = { itemID = 923474, price = "Arena" }; --Vengeful Gladiator's Plate Shoulders
		[19] = { itemID = 923470, price = "Arena" }; --Vengeful Gladiator's Plate Chestpiece
		[20] = { itemID = 923471, price = "Arena" }; --Vengeful Gladiator's Plate Gauntlets
		[21] = { itemID = 923473, price = "Arena" }; --Vengeful Gladiator's Plate Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. AtlasLoot.Colors.WHITE..AL["Demonology"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31974, price = "Arena" }; --Merciless Gladiator's Dreadweave Hood
		[03] = { itemID = 31976, price = "Arena" }; --Merciless Gladiator's Dreadweave Mantle
		[04] = { itemID = 31977, price = "Arena" }; --Merciless Gladiator's Dreadweave Robe
		[05] = { itemID = 31973, price = "Arena" }; --Merciless Gladiator's Dreadweave Gloves
		[06] = { itemID = 31975, price = "Arena" }; --Merciless Gladiator's Dreadweave Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923486, price = "Arena" }; --Vengeful Gladiator's Dreadweave Hood
		[18] = { itemID = 923488, price = "Arena" }; --Vengeful Gladiator's Dreadweave Mantle
		[19] = { itemID = 923489, price = "Arena" }; --Vengeful Gladiator's Dreadweave Robe
		[20] = { itemID = 923485, price = "Arena" }; --Vengeful Gladiator's Dreadweave Gloves
		[21] = { itemID = 923487, price = "Arena" }; --Vengeful Gladiator's Dreadweave Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. AtlasLoot.Colors.WHITE..AL["Destruction"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31980, price = "Arena" }; --Merciless Gladiator's Felweave Cowl
		[03] = { itemID = 31979, price = "Arena" }; --Merciless Gladiator's Felweave Amice
		[04] = { itemID = 31982, price = "Arena" }; --Merciless Gladiator's Felweave Raiment
		[05] = { itemID = 31981, price = "Arena" }; --Merciless Gladiator's Felweave Handguards
		[06] = { itemID = 31983, price = "Arena" }; --Merciless Gladiator's Felweave Trousers
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 33683, price = "Arena" }; --Vengeful Gladiator's Felweave Cowl
		[18] = { itemID = 33682, price = "Arena" }; --Vengeful Gladiator's Felweave Amice
		[19] = { itemID = 33685, price = "Arena" }; --Vengeful Gladiator's Felweave Raiment
		[20] = { itemID = 33684, price = "Arena" }; --Vengeful Gladiator's Felweave Handguards
		[21] = { itemID = 33686, price = "Arena" }; --Vengeful Gladiator's Felweave Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - "..AtlasLoot.Colors.WHITE..AL["Feral"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31968, price = "Arena" }; --Merciless Gladiator's Dragonhide Helm
		[03] = { itemID = 31971, price = "Arena" }; --Merciless Gladiator's Dragonhide Spaulders
		[04] = { itemID = 31972, price = "Arena" }; --Merciless Gladiator's Dragonhide Tunic
		[05] = { itemID = 31967, price = "Arena" }; --Merciless Gladiator's Dragonhide Gloves
		[06] = { itemID = 31969, price = "Arena" }; --Merciless Gladiator's Dragonhide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923481, price = "Arena" }; --Vengeful Gladiator's Dragonhide Helm
		[18] = { itemID = 923483, price = "Arena" }; --Vengeful Gladiator's Dragonhide Spaulders
		[19] = { itemID = 923484, price = "Arena" }; --Vengeful Gladiator's Dragonhide Tunic
		[20] = { itemID = 923480, price = "Arena" }; --Vengeful Gladiator's Dragonhide Gloves
		[21] = { itemID = 923482, price = "Arena" }; --Vengeful Gladiator's Dragonhide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Balance"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32057, price = "Arena" }; --Merciless Gladiator's Wyrmhide Helm
		[03] = { itemID = 32059, price = "Arena" }; --Merciless Gladiator's Wyrmhide Spaulders
		[04] = { itemID = 32060, price = "Arena" }; --Merciless Gladiator's Wyrmhide Tunic
		[05] = { itemID = 32056, price = "Arena" }; --Merciless Gladiator's Wyrmhide Gloves
		[06] = { itemID = 32058, price = "Arena" }; --Merciless Gladiator's Wyrmhide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923551, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Helm
		[18] = { itemID = 923553, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Spaulders
		[19] = { itemID = 923554, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Tunic
		[20] = { itemID = 923550, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Gloves
		[21] = { itemID = 923552, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Restoration"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31988, price = "Arena" }; --Merciless Gladiator's Kodohide Helm
		[03] = { itemID = 31990, price = "Arena" }; --Merciless Gladiator's Kodohide Spaulders
		[04] = { itemID = 31991, price = "Arena" }; --Merciless Gladiator's Kodohide Tunic
		[05] = { itemID = 31987, price = "Arena" }; --Merciless Gladiator's Kodohide Gloves
		[06] = { itemID = 31989, price = "Arena" }; --Merciless Gladiator's Kodohide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923496, price = "Arena" }; --Vengeful Gladiator's Kodohide Helm
		[18] = { itemID = 923498, price = "Arena" }; --Vengeful Gladiator's Kodohide Spaulders
		[19] = { itemID = 923499, price = "Arena" }; --Vengeful Gladiator's Kodohide Tunic
		[20] = { itemID = 923495, price = "Arena" }; --Vengeful Gladiator's Kodohide Gloves
		[21] = { itemID = 923497, price = "Arena" }; --Vengeful Gladiator's Kodohide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Enhancement"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32006, price = "Arena" }; --Merciless Gladiator's Linked Helm
		[03] = { itemID = 32008, price = "Arena" }; --Merciless Gladiator's Linked Spaulders
		[04] = { itemID = 32004, price = "Arena" }; --Merciless Gladiator's Linked Armor
		[05] = { itemID = 32005, price = "Arena" }; --Merciless Gladiator's Linked Gauntlets
		[06] = { itemID = 32007, price = "Arena" }; --Merciless Gladiator's Linked Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923512, price = "Arena" }; --Vengeful Gladiator's Linked Helm
		[18] = { itemID = 923514, price = "Arena" }; --Vengeful Gladiator's Linked Spaulders
		[19] = { itemID = 923510, price = "Arena" }; --Vengeful Gladiator's Linked Armor
		[20] = { itemID = 923511, price = "Arena" }; --Vengeful Gladiator's Linked Gauntlets
		[21] = { itemID = 923513, price = "Arena" }; --Vengeful Gladiator's Linked Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Elemental"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32011, price = "Arena" }; --Merciless Gladiator's Mail Helm
		[03] = { itemID = 32013, price = "Arena" }; --Merciless Gladiator's Mail Spaulders
		[04] = { itemID = 32009, price = "Arena" }; --Merciless Gladiator's Mail Armor
		[05] = { itemID = 32010, price = "Arena" }; --Merciless Gladiator's Mail Gauntlets
		[06] = { itemID = 32012, price = "Arena" }; --Merciless Gladiator's Mail Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923517, price = "Arena" }; --Vengeful Gladiator's Mail Helm
		[18] = { itemID = 923519, price = "Arena" }; --Vengeful Gladiator's Mail Spaulders
		[19] = { itemID = 923515, price = "Arena" }; --Vengeful Gladiator's Mail Armor
		[20] = { itemID = 923516, price = "Arena" }; --Vengeful Gladiator's Mail Gauntlets
		[21] = { itemID = 923518, price = "Arena" }; --Vengeful Gladiator's Mail Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Restoration"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32031, price = "Arena" }; --Merciless Gladiator's Ringmail Helm
		[03] = { itemID = 32033, price = "Arena" }; --Merciless Gladiator's Ringmail Spaulders
		[04] = { itemID = 32029, price = "Arena" }; --Merciless Gladiator's Ringmail Armor
		[05] = { itemID = 32030, price = "Arena" }; --Merciless Gladiator's Ringmail Gauntlets
		[06] = { itemID = 32032, price = "Arena" }; --Merciless Gladiator's Ringmail Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923532, price = "Arena" }; --Vengeful Gladiator's Ringmail Helm
		[18] = { itemID = 923534, price = "Arena" }; --Vengeful Gladiator's Ringmail Spaulders
		[19] = { itemID = 923530, price = "Arena" }; --Vengeful Gladiator's Ringmail Armor
		[20] = { itemID = 923531, price = "Arena" }; --Vengeful Gladiator's Ringmail Gauntlets
		[21] = { itemID = 923533, price = "Arena" }; --Vengeful Gladiator's Ringmail Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Protection"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 31997, price = "Arena" }; --Merciless Gladiator's Lamellar Helm
		[03] = { itemID = 31996, price = "Arena" }; --Merciless Gladiator's Lamellar Shoulders
		[04] = { itemID = 31992, price = "Arena" }; --Merciless Gladiator's Lamellar Chestpiece
		[05] = { itemID = 31993, price = "Arena" }; --Merciless Gladiator's Lamellar Gauntlets
		[06] = { itemID = 31995, price = "Arena" }; --Merciless Gladiator's Lamellar Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923504, price = "Arena" }; --Vengeful Gladiator's Lamellar Helm
		[18] = { itemID = 923503, price = "Arena" }; --Vengeful Gladiator's Lamellar Shoulders
		[19] = { itemID = 923500, price = "Arena" }; --Vengeful Gladiator's Lamellar Chestpiece
		[20] = { itemID = 923501, price = "Arena" }; --Vengeful Gladiator's Lamellar Gauntlets
		[21] = { itemID = 923502, price = "Arena" }; --Vengeful Gladiator's Lamellar Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Retribution"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32041, price = "Arena" }; --Merciless Gladiator's Scaled Helm
		[03] = { itemID = 32043, price = "Arena" }; --Merciless Gladiator's Scaled Shoulders
		[04] = { itemID = 32039, price = "Arena" }; --Merciless Gladiator's Scaled Chestpiece
		[05] = { itemID = 32040, price = "Arena" }; --Merciless Gladiator's Scaled Gauntlets
		[06] = { itemID = 32042, price = "Arena" }; --Merciless Gladiator's Scaled Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923542, price = "Arena" }; --Vengeful Gladiator's Scaled Helm
		[18] = { itemID = 923544, price = "Arena" }; --Vengeful Gladiator's Scaled Shoulders
		[19] = { itemID = 923540, price = "Arena" }; --Vengeful Gladiator's Scaled Chestpiece
		[20] = { itemID = 923541, price = "Arena" }; --Vengeful Gladiator's Scaled Gauntlets
		[21] = { itemID = 923543, price = "Arena" }; --Vengeful Gladiator's Scaled Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Holy"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32022, price = "Arena" }; --Merciless Gladiator's Ornamented Headcover
		[03] = { itemID = 32024, price = "Arena" }; --Merciless Gladiator's Ornamented Spaulders
		[04] = { itemID = 32020, price = "Arena" }; --Merciless Gladiator's Ornamented Chestguard
		[05] = { itemID = 32021, price = "Arena" }; --Merciless Gladiator's Ornamented Gloves
		[06] = { itemID = 32023, price = "Arena" }; --Merciless Gladiator's Ornamented Legplates
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923527, price = "Arena" }; --Vengeful Gladiator's Ornamented Headcover
		[18] = { itemID = 923529, price = "Arena" }; --Vengeful Gladiator's Ornamented Spaulders
		[19] = { itemID = 923525, price = "Arena" }; --Vengeful Gladiator's Ornamented Chestguard
		[20] = { itemID = 923526, price = "Arena" }; --Vengeful Gladiator's Ornamented Gloves
		[21] = { itemID = 923528, price = "Arena" }; --Vengeful Gladiator's Ornamented Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Shadow"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32035, price = "Arena" }; --Merciless Gladiator's Satin Hood
		[03] = { itemID = 32037, price = "Arena" }; --Merciless Gladiator's Satin Mantle
		[04] = { itemID = 32038, price = "Arena" }; --Merciless Gladiator's Satin Robe
		[05] = { itemID = 32034, price = "Arena" }; --Merciless Gladiator's Satin Gloves
		[06] = { itemID = 32036, price = "Arena" }; --Merciless Gladiator's Satin Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923536, price = "Arena" }; --Vengeful Gladiator's Satin Hood
		[18] = { itemID = 923538, price = "Arena" }; --Vengeful Gladiator's Satin Mantle
		[19] = { itemID = 923539, price = "Arena" }; --Vengeful Gladiator's Satin Robe
		[20] = { itemID = 923535, price = "Arena" }; --Vengeful Gladiator's Satin Gloves
		[21] = { itemID = 923537, price = "Arena" }; --Vengeful Gladiator's Satin Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Holy"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 32016, price = "Arena" }; --Merciless Gladiator's Mooncloth Hood
		[03] = { itemID = 32018, price = "Arena" }; --Merciless Gladiator's Mooncloth Mantle
		[04] = { itemID = 32019, price = "Arena" }; --Merciless Gladiator's Mooncloth Robe
		[05] = { itemID = 32015, price = "Arena" }; --Merciless Gladiator's Mooncloth Gloves
		[06] = { itemID = 32017, price = "Arena" }; --Merciless Gladiator's Mooncloth Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 923521, price = "Arena" }; --Vengeful Gladiator's Mooncloth Hood
		[18] = { itemID = 923523, price = "Arena" }; --Vengeful Gladiator's Mooncloth Mantle
		[19] = { itemID = 923524, price = "Arena" }; --Vengeful Gladiator's Mooncloth Robe
		[20] = { itemID = 923520, price = "Arena" }; --Vengeful Gladiator's Mooncloth Gloves
		[21] = { itemID = 923522, price = "Arena" }; --Vengeful Gladiator's Mooncloth Leggings
	};
}

--Arena Season 4
AtlasLoot_Data["Pvp70Season4"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Arena Season 4"];
	{
		Name = AL["Back"];
		WebID = {41045, "npc"};
		[01] = { itemID = 41591, price = "Arena" }; --Guardian's Cloak of Battle
		[02] = { itemID = 41592, price = "Arena" }; --Guardian's Cloak of Condemnation
		[03] = { itemID = 44429, price = "Arena" }; --Guardian's Cloak of Power
		[04] = { itemID = 44431, price = "Arena" }; --Guardian's Cloak of Salvation
		[05] = { itemID = 278405, price = "Arena" }; --Guardian's Cloak of Cruelty
		[06] = { itemID = 278404, price = "Arena" }; --Guardian's Cloak of Tyranny
	};
	{
		Name = AL["Rings"];
		WebID = {41045, "npc"};
		[01] = { itemID = 414399, price = "Arena" }; --Guardian's Band of Accuracy
		[02] = { itemID = 46728, price = "Arena" }; --Guardian's Band of Conquest
		[03] = { itemID = 35129, price = "Arena" }; --Guardian's Band of Dominance
		[04] = { itemID = 414400, price = "Arena" }; --Guardian's Band of Precision
		[05] = { itemID = 46727, price = "Arena" }; --Guardian's Band of Reprieve
		[06] = { itemID = 35130, price = "Arena" }; --Guardian's Band of Salvation
		[07] = { itemID = 37927, price = "Arena" }; --Guardian's Band of Subjugation
		[08] = { itemID = 35131, price = "Arena" }; --Guardian's Band of Triumph
		[09] = { itemID = 278403, price = "Arena" }; --Guardian's Band of Cruelty
		[10] = { itemID = 278400, price = "Arena" }; --Guardian's Band of Tyranny
	};
	{
		Name = AL["Neck"];
		WebID = {41045, "npc"};
		[01] = { itemID = 35132, price = "Arena" }; --Guardian's Pendant of Conquest
		[02] = { itemID = 35133, price = "Arena" }; --Guardian's Pendant of Dominance
		[03] = { itemID = 37929, price = "Arena" }; --Guardian's Pendant of Reprieve
		[04] = { itemID = 35134, price = "Arena" }; --Guardian's Pendant of Salvation
		[05] = { itemID = 37928, price = "Arena" }; --Guardian's Pendant of Subjugation
		[06] = { itemID = 35135, price = "Arena" }; --Guardian's Pendant of Triumph
		[07] = { itemID = 278401, price = "Arena" }; --Guardian's Pendant of Cruelty
		[08] = { itemID = 278402, price = "Arena" }; --Guardian's Pendant of Tyranny
	};
	{
		Name = AL["Trinket"];
		WebID = {41045, "npc"};
		[01] = { itemID = 41588, price = "Arena" }; --Battlemaster's Audacity
		[02] = { itemID = 41587, price = "Arena" }; --Battlemaster's Celerity
		[03] = { itemID = 41590, price = "Arena" }; --Battlemaster's Courage
		[04] = { itemID = 46705, price = "Arena" }; --Battlemaster's Cruelty
		[05] = { itemID = 41589, price = "Arena" }; --Battlemaster's Resolve
	};
	{
		Name = AL["Gems & Enchants"];
		[01] = { itemID = 1505062, price = "5000 #faction#" }; --Resplendent Fire Opal
		[02] = { itemID = 1505064, price = "5000 #faction#" }; --Lucent Fire Opal
		[03] = { itemID = 1505066, price = "5000 #faction#" }; --Empowered Fire Opal
		[04] = { itemID = 1505068, price = "5000 #faction#" }; --Durable Fire Opal
		[05] = { itemID = 1505070, price = "5000 #faction#" }; --Piercing Evergem
		[06] = { itemID = 1505072, price = "5000 #faction#" }; --Tense Evergem
		[07] = { itemID = 1505074, price = "5000 #faction#" }; --Mysterious Shadowgem
		[16] = { itemID = 1449572, price = "23000 #faction#" }; --Vindicator's Inscription of the Archmage
		[17] = { itemID = 1449573, price = "23000 #faction#" }; --Vindicator's Inscription of the Brawler
		[19] = { itemID = 1449576, price = "25000 #faction#" }; --Vindicator's Arcanum of the Archmage
		[20] = { itemID = 1449577, price = "25000 #faction#" }; --Vindicator's Arcanum of the Brawler
	};
	{
		Name = AL["Physical Damage "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 1"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 33670, price = "Arena" }; --Vengeful Gladiator's Decapitator
		[03] = { itemID = 34014, price = "Arena" }; --Vengeful Gladiator's Executioner
		[04] = { itemID = 300136, price = "Arena" }; --Vengeful Gladiator's Battlehammer
		[05] = { itemID = 33663, price = "Arena" }; --Vengeful Gladiator's Bonegrinder
		[06] = { itemID = 300140, price = "Arena" }; --Vengeful Gladiator's Smasher
		[07] = { itemID = 33727, price = "Arena" }; --Vengeful Gladiator's Painsaw
		[08] = { itemID = 414356, price = "Arena" }; --Vengeful Gladiator's Polearm
		[09] = { itemID = 414357, price = "Arena" }; --Vengeful Gladiator's Claymore
		[10] = { itemID = 33688, price = "Arena" }; --Vengeful Gladiator's Greatsword
		[11] = { itemID = 33733, price = "Arena" }; --Vengeful Gladiator's Pummeler
		[12] = { itemID = 33762, price = "Arena" }; --Vengeful Gladiator's Slicer
		[13] = { itemID = 414377, price = "Arena" }; --Vengeful Gladiator's Quickblade
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 34997, price = "Arena" }; --Brutal Gladiator's Decapitator
		[18] = { itemID = 414389, price = "Arena" }; --Brutal Gladiator's Executioner
		[19] = { itemID = 414390, price = "Arena" }; --Brutal Gladiator's Battlehammer
		[20] = { itemID = 34989, price = "Arena" }; --Brutal Gladiator's Bonegrinder
		[21] = { itemID = 414391, price = "Arena" }; --Brutal Gladiator's Smasher
		[22] = { itemID = 35064, price = "Arena" }; --Brutal Gladiator's Painsaw
		[23] = { itemID = 414397, price = "Arena" }; --Brutal Gladiator's Polearm
		[24] = { itemID = 414396, price = "Arena" }; --Brutal Gladiator's Claymore
		[25] = { itemID = 35015, price = "Arena" }; --Brutal Gladiator's Greatsword
		[26] = { itemID = 35071, price = "Arena" }; --Brutal Gladiator's Pummeler
		[27] = { itemID = 35101, price = "Arena" }; --Brutal Gladiator's Slicer
		[28] = { itemID = 35072, price = "Arena" }; --Brutal Gladiator's Quickblade
	};
	{
		Name = AL["Physical Damage "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 33669, price = "Arena" }; --Vengeful Gladiator's Cleaver
		[03] = { itemID = 34015, price = "Arena" }; --Vengeful Gladiator's Chopper
		[04] = { itemID = 414371, price = "Arena" }; --Vengeful Gladiator's Hacker
		[05] = { itemID = 414376, price = "Arena" }; --Vengeful Gladiator's Bonecracker
		[06] = { itemID = 34016, price = "Arena" }; --Vengeful Gladiator's Left Render
		[07] = { itemID = 33737, price = "Arena" }; --Vengeful Gladiator's Right Ripper
		[08] = { itemID = 414378, price = "Arena" }; --Vengeful Gladiator's Mutilator
		[09] = { itemID = 414379, price = "Arena" }; --Vengeful Gladiator's Shiv
		[10] = { itemID = 33754, price = "Arena" }; --Vengeful Gladiator's Shanker
		[11] = { itemID = 34529, price = "Arena" }; --Vengeful Gladiator's Longbow
		[12] = { itemID = 33006, price = "Arena" }; --Vengeful Gladiator's Heavy Crossbow
		[13] = { itemID = 34530, price = "Arena" }; --Vengeful Gladiator's Rifle
		[14] = { itemID = 33765, price = "Arena" }; --Vengeful Gladiator's War Edge
		[15] = { itemID = 33755, price = "Arena" }; --Vengeful Gladiator's Shield Wall
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 34996, price = "Arena" }; --Brutal Gladiator's Cleaver
		[18] = { itemID = 34995, price = "Arena" }; --Brutal Gladiator's Chopper
		[19] = { itemID = 35017, price = "Arena" }; --Brutal Gladiator's Hacker
		[20] = { itemID = 34988, price = "Arena" }; --Brutal Gladiator's Bonecracker
		[21] = { itemID = 35037, price = "Arena" }; --Brutal Gladiator's Left Render
		[22] = { itemID = 35076, price = "Arena" }; --Brutal Gladiator's Right Ripper
		[23] = { itemID = 35058, price = "Arena" }; --Brutal Gladiator's Mutilator
		[24] = { itemID = 35095, price = "Arena" }; --Brutal Gladiator's Shiv
		[25] = { itemID = 35093, price = "Arena" }; --Brutal Gladiator's Shanker
		[26] = { itemID = 35047, price = "Arena" }; --Brutal Gladiator's Longbow
		[27] = { itemID = 35018, price = "Arena" }; --Brutal Gladiator's Heavy Crossbow
		[28] = { itemID = 35075, price = "Arena" }; --Brutal Gladiator's Rifle
		[29] = { itemID = 35108, price = "Arena" }; --Brutal Gladiator's War Edge		
		[30] = { itemID = 35094, price = "Arena" }; --Brutal Gladiator's Shield Wall
	};
	{
		Name = AL["Caster "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 1"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 34540, price = "Arena" }; --Vengeful Gladiator's Battle Staff
		[03] = { itemID = 300139, price = "Arena" }; --Vengeful Gladiator's Guardian Staff
		[04] = { itemID = 33766, price = "Arena" }; --Vengeful Gladiator's War Staff
		[05] = { itemID = 300135, price = "Arena" }; --Vengeful Gladiator's Battlemace
		[06] = { itemID = 33687, price = "Arena" }; --Vengeful Gladiator's Gavel
		[07] = { itemID = 300138, price = "Arena" }; --Vengeful Gladiator's Guardian Mace
		[08] = { itemID = 33743, price = "Arena" }; --Vengeful Gladiator's Salvation
		[09] = { itemID = 300147, price = "Arena" }; --Vengeful Gladiator's Battleslicer
		[10] = { itemID = 33763, price = "Arena" }; --Vengeful Gladiator's Spellblade
		[11] = { itemID = 300137, price = "Arena" }; --Vengeful Gladiator's Dagger
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 34987, price = "Arena" }; --Brutal Gladiator's Battle Staff
		[18] = { itemID = 414392, price = "Arena" }; --Brutal Gladiator's Guardian Staff
		[19] = { itemID = 35109, price = "Arena" }; --Brutal Gladiator's War Staff
		[20] = { itemID = 414393, price = "Arena" }; --Brutal Gladiator's Battlemace
		[21] = { itemID = 35014, price = "Arena" }; --Brutal Gladiator's Gavel
		[22] = { itemID = 414394, price = "Arena" }; --Brutal Gladiator's Guardian Mace
		[23] = { itemID = 35082, price = "Arena" }; --Brutal Gladiator's Salvation
		[24] = { itemID = 414395, price = "Arena" }; --Brutal Gladiator's Battleslicer
		[25] = { itemID = 35102, price = "Arena" }; --Brutal Gladiator's Spellblade
		[26] = { itemID = 414398, price = "Arena" }; --Brutal Gladiator's Dagger
	};
	{
		Name = AL["Caster "]..AL["Weapons"].." - "..AtlasLoot.Colors.WHITE..AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 300148, price = "Arena" }; --Vengeful Gladiator's Magebow
		[03] = { itemID = 34066, price = "Arena" }; --Vengeful Gladiator's Piercing Touch
		[04] = { itemID = 33764, price = "Arena" }; --Vengeful Gladiator's Touch of Defeat
		[05] = { itemID = 33661, price = "Arena" }; --Vengeful Gladiator's Barrier
		[06] = { itemID = 33735, price = "Arena" }; --Vengeful Gladiator's Redoubt
		[07] = { itemID = 33681, price = "Arena" }; --Vengeful Gladiator's Endgame
		[08] = { itemID = 34033, price = "Arena" }; --Vengeful Gladiator's Grimoire
		[09] = { itemID = 33736, price = "Arena" }; --Vengeful Gladiator's Reprieve
		[10] = { itemID = 300149, price = "Arena" }; --Vengeful Gladiator's Libram of Fortitude
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 414388, price = "Arena" }; --Brutal Gladiator's Magebow
		[18] = { itemID = 35065, price = "Arena" }; --Brutal Gladiator's Piercing Touch
		[19] = { itemID = 35107, price = "Arena" }; --Brutal Gladiator's Touch of Defeat
		[20] = { itemID = 34986, price = "Arena" }; --Brutal Gladiator's Barrier
		[21] = { itemID = 35073, price = "Arena" }; --Brutal Gladiator's Redoubt
		[22] = { itemID = 35008, price = "Arena" }; --Brutal Gladiator's Endgame
		[23] = { itemID = 35016, price = "Arena" }; --Brutal Gladiator's Grimoire
		[24] = { itemID = 35074, price = "Arena" }; --Brutal Gladiator's Reprieve
		[25] = { itemID = 35039, price = "Arena" }; --Brutal Gladiator's Libram of Fortitude
	};
	{
		Name = AL["Cloth "]..AL["Offset"];
		WebID = {41045, "npc"};
		[01] = { itemID = 35168, price = "Arena" }; --Guardian's Dreadweave Cuffs
		[02] = { itemID = 35153, price = "Arena" }; --Guardian's Dreadweave Belt
		[03] = { itemID = 35138, price = "Arena" }; --Guardian's Dreadweave Stalkers
		[05] = { itemID = 35174, price = "Arena" }; --Guardian's Mooncloth Cuffs
		[06] = { itemID = 35159, price = "Arena" }; --Guardian's Mooncloth Belt
		[07] = { itemID = 35144, price = "Arena" }; --Guardian's Mooncloth Slippers
		[09] = { itemID = 35179, price = "Arena" }; --Guardian's Silk Cuffs
		[10] = { itemID = 35164, price = "Arena" }; --Guardian's Silk Belt
		[11] = { itemID = 35149, price = "Arena" }; --Guardian's Silk Footguards

	};
	{
		Name = AL["Leather "]..AL["Offset"];
		WebID = {41045, "npc"};
		[01] = { itemID = 35167, price = "Arena" }; --Guardian's Dragonhide Bracers
		[02] = { itemID = 35152, price = "Arena" }; --Guardian's Dragonhide Belt
		[03] = { itemID = 35137, price = "Arena" }; --Guardian's Dragonhide Boots
		[05] = { itemID = 35169, price = "Arena" }; --Guardian's Kodohide Bracers
		[06] = { itemID = 35154, price = "Arena" }; --Guardian's Kodohide Belt
		[07] = { itemID = 35139, price = "Arena" }; --Guardian's Kodohide Boots
		[16] = { itemID = 35171, price = "Arena" }; --Guardian's Leather Bracers
		[17] = { itemID = 35156, price = "Arena" }; --Guardian's Leather Belt
		[18] = { itemID = 35141, price = "Arena" }; --Guardian's Leather Boots
		[20] = { itemID = 35180, price = "Arena" }; --Guardian's Wyrmhide Bracers
		[21] = { itemID = 35165, price = "Arena" }; --Guardian's Wyrmhide Belt
		[22] = { itemID = 35150, price = "Arena" }; --Guardian's Wyrmhide Boots
	};
	{
		Name = AL["Mail "]..AL["Offset"];
		WebID = {41045, "npc"};
		[01] = { itemID = 35166, price = "Arena" }; --Guardian's Chain Bracers
		[02] = { itemID = 35151, price = "Arena" }; --Guardian's Chain Girdle
		[03] = { itemID = 35136, price = "Arena" }; --Guardian's Chain Sabatons
		[05] = { itemID = 35172, price = "Arena" }; --Guardian's Linked Bracers
		[06] = { itemID = 35157, price = "Arena" }; --Guardian's Linked Girdle
		[07] = { itemID = 35142, price = "Arena" }; --Guardian's Linked Sabatons
		[16] = { itemID = 35173, price = "Arena" }; --Guardian's Mail Bracers
		[17] = { itemID = 35158, price = "Arena" }; --Guardian's Mail Girdle
		[18] = { itemID = 35143, price = "Arena" }; --Guardian's Mail Sabatons
		[20] = { itemID = 35177, price = "Arena" }; --Guardian's Ringmail Bracers
		[21] = { itemID = 35162, price = "Arena" }; --Guardian's Ringmail Girdle
		[22] = { itemID = 35147, price = "Arena" }; --Guardian's Ringmail Sabatons

	};
	{
		Name = AL["Plate "]..AL["Offset"];
		WebID = {41045, "npc"};
		[01] = { itemID = 35170, price = "Arena" }; --Guardian's Lamellar Bracers
		[02] = { itemID = 35155, price = "Arena" }; --Guardian's Lamellar Belt
		[03] = { itemID = 35140, price = "Arena" }; --Guardian's Lamellar Greaves
		[05] = { itemID = 35175, price = "Arena" }; --Guardian's Ornamented Bracers
		[06] = { itemID = 35160, price = "Arena" }; --Guardian's Ornamented Belt
		[07] = { itemID = 35145, price = "Arena" }; --Guardian's Ornamented Greaves
		[16] = { itemID = 35176, price = "Arena" }; --Guardian's Plate Bracers
		[17] = { itemID = 35161, price = "Arena" }; --Guardian's Plate Belt
		[18] = { itemID = 35146, price = "Arena" }; --Guardian's Plate Greaves
		[20] = { itemID = 35178, price = "Arena" }; --Guardian's Scaled Bracers
		[21] = { itemID = 35163, price = "Arena" }; --Guardian's Scaled Belt
		[22] = { itemID = 35148, price = "Arena" }; --Guardian's Scaled Greaves

	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923477, price = "Arena" }; --Vengeful Gladiator's Chain Helm
		[03] = { itemID = 923479, price = "Arena" }; --Vengeful Gladiator's Chain Spaulders
		[04] = { itemID = 923475, price = "Arena" }; --Vengeful Gladiator's Chain Armor
		[05] = { itemID = 923476, price = "Arena" }; --Vengeful Gladiator's Chain Gauntlets
		[06] = { itemID = 923478, price = "Arena" }; --Vengeful Gladiator's Chain Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 34992, price = "Arena" }; --Brutal Gladiator's Chain Helm
		[18] = { itemID = 34994, price = "Arena" }; --Brutal Gladiator's Chain Spaulders
		[19] = { itemID = 34990, price = "Arena" }; --Brutal Gladiator's Chain Armor
		[20] = { itemID = 34991, price = "Arena" }; --Brutal Gladiator's Chain Gauntlets
		[21] = { itemID = 34993, price = "Arena" }; --Brutal Gladiator's Chain Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923546, price = "Arena" }; --Vengeful Gladiator's Silk Cowl
		[03] = { itemID = 923545, price = "Arena" }; --Vengeful Gladiator's Silk Amice
		[04] = { itemID = 923548, price = "Arena" }; --Vengeful Gladiator's Silk Raiment
		[05] = { itemID = 923547, price = "Arena" }; --Vengeful Gladiator's Silk Handguards
		[06] = { itemID = 923549, price = "Arena" }; --Vengeful Gladiator's Silk Trousers
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35097, price = "Arena" }; --Brutal Gladiator's Silk Cowl
		[18] = { itemID = 35096, price = "Arena" }; --Brutal Gladiator's Silk Amice
		[19] = { itemID = 35099, price = "Arena" }; --Brutal Gladiator's Silk Raiment
		[20] = { itemID = 35098, price = "Arena" }; --Brutal Gladiator's Silk Handguards
		[21] = { itemID = 35100, price = "Arena" }; --Brutal Gladiator's Silk Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923506, price = "Arena" }; --Vengeful Gladiator's Leather Helm
		[03] = { itemID = 923508, price = "Arena" }; --Vengeful Gladiator's Leather Spaulders
		[04] = { itemID = 923509, price = "Arena" }; --Vengeful Gladiator's Leather Tunic
		[05] = { itemID = 923505, price = "Arena" }; --Vengeful Gladiator's Leather Gloves
		[06] = { itemID = 923507, price = "Arena" }; --Vengeful Gladiator's Leather Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35033, price = "Arena" }; --Brutal Gladiator's Leather Helm
		[18] = { itemID = 35035, price = "Arena" }; --Brutal Gladiator's Leather Spaulders
		[19] = { itemID = 35036, price = "Arena" }; --Brutal Gladiator's Leather Tunic
		[20] = { itemID = 35032, price = "Arena" }; --Brutal Gladiator's Leather Gloves
		[21] = { itemID = 35034, price = "Arena" }; --Brutal Gladiator's Leather Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923472, price = "Arena" }; --Vengeful Gladiator's Plate Helm
		[03] = { itemID = 923474, price = "Arena" }; --Vengeful Gladiator's Plate Shoulders
		[04] = { itemID = 923470, price = "Arena" }; --Vengeful Gladiator's Plate Chestpiece
		[05] = { itemID = 923471, price = "Arena" }; --Vengeful Gladiator's Plate Gauntlets
		[06] = { itemID = 923473, price = "Arena" }; --Vengeful Gladiator's Plate Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35068, price = "Arena" }; --Brutal Gladiator's Plate Helm
		[18] = { itemID = 35070, price = "Arena" }; --Brutal Gladiator's Plate Shoulders
		[19] = { itemID = 35066, price = "Arena" }; --Brutal Gladiator's Plate Chestpiece
		[20] = { itemID = 35067, price = "Arena" }; --Brutal Gladiator's Plate Gauntlets
		[21] = { itemID = 35069, price = "Arena" }; --Brutal Gladiator's Plate Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. AtlasLoot.Colors.WHITE..AL["Demonology"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923486, price = "Arena" }; --Vengeful Gladiator's Dreadweave Hood
		[03] = { itemID = 923488, price = "Arena" }; --Vengeful Gladiator's Dreadweave Mantle
		[04] = { itemID = 923489, price = "Arena" }; --Vengeful Gladiator's Dreadweave Robe
		[05] = { itemID = 923485, price = "Arena" }; --Vengeful Gladiator's Dreadweave Gloves
		[06] = { itemID = 923487, price = "Arena" }; --Vengeful Gladiator's Dreadweave Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35004, price = "Arena" }; --Brutal Gladiator's Dreadweave Hood
		[18] = { itemID = 35006, price = "Arena" }; --Brutal Gladiator's Dreadweave Mantle
		[19] = { itemID = 35007, price = "Arena" }; --Brutal Gladiator's Dreadweave Robe
		[20] = { itemID = 35003, price = "Arena" }; --Brutal Gladiator's Dreadweave Gloves
		[21] = { itemID = 35005, price = "Arena" }; --Brutal Gladiator's Dreadweave Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"].. " - " .. AtlasLoot.Colors.WHITE..AL["Destruction"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 33683, price = "Arena" }; --Vengeful Gladiator's Felweave Cowl
		[03] = { itemID = 33682, price = "Arena" }; --Vengeful Gladiator's Felweave Amice
		[04] = { itemID = 33685, price = "Arena" }; --Vengeful Gladiator's Felweave Raiment
		[05] = { itemID = 33684, price = "Arena" }; --Vengeful Gladiator's Felweave Handguards
		[06] = { itemID = 33686, price = "Arena" }; --Vengeful Gladiator's Felweave Trousers
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35010, price = "Arena" }; --Brutal Gladiator's Felweave Cowl
		[18] = { itemID = 35009, price = "Arena" }; --Brutal Gladiator's Felweave Amice
		[19] = { itemID = 35012, price = "Arena" }; --Brutal Gladiator's Felweave Raiment
		[20] = { itemID = 35011, price = "Arena" }; --Brutal Gladiator's Felweave Handguards
		[21] = { itemID = 35013, price = "Arena" }; --Brutal Gladiator's Felweave Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - "..AtlasLoot.Colors.WHITE..AL["Feral"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923481, price = "Arena" }; --Vengeful Gladiator's Dragonhide Helm
		[03] = { itemID = 923483, price = "Arena" }; --Vengeful Gladiator's Dragonhide Spaulders
		[04] = { itemID = 923484, price = "Arena" }; --Vengeful Gladiator's Dragonhide Tunic
		[05] = { itemID = 923480, price = "Arena" }; --Vengeful Gladiator's Dragonhide Gloves
		[06] = { itemID = 923482, price = "Arena" }; --Vengeful Gladiator's Dragonhide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 34999, price = "Arena" }; --Brutal Gladiator's Dragonhide Helm
		[18] = { itemID = 35001, price = "Arena" }; --Brutal Gladiator's Dragonhide Spaulders
		[19] = { itemID = 35002, price = "Arena" }; --Brutal Gladiator's Dragonhide Tunic
		[20] = { itemID = 34998, price = "Arena" }; --Brutal Gladiator's Dragonhide Gloves
		[21] = { itemID = 35000, price = "Arena" }; --Brutal Gladiator's Dragonhide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Balance"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923551, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Helm
		[03] = { itemID = 923553, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Spaulders
		[04] = { itemID = 923554, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Tunic
		[05] = { itemID = 923550, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Gloves
		[06] = { itemID = 923552, price = "Arena" }; --Vengeful Gladiator's Wyrmhide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35112, price = "Arena" }; --Brutal Gladiator's Wyrmhide Helm
		[18] = { itemID = 35114, price = "Arena" }; --Brutal Gladiator's Wyrmhide Spaulders
		[19] = { itemID = 35115, price = "Arena" }; --Brutal Gladiator's Wyrmhide Tunic
		[20] = { itemID = 35111, price = "Arena" }; --Brutal Gladiator's Wyrmhide Gloves
		[21] = { itemID = 35113, price = "Arena" }; --Brutal Gladiator's Wyrmhide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Restoration"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923496, price = "Arena" }; --Vengeful Gladiator's Kodohide Helm
		[03] = { itemID = 923498, price = "Arena" }; --Vengeful Gladiator's Kodohide Spaulders
		[04] = { itemID = 923499, price = "Arena" }; --Vengeful Gladiator's Kodohide Tunic
		[05] = { itemID = 923495, price = "Arena" }; --Vengeful Gladiator's Kodohide Gloves
		[06] = { itemID = 923497, price = "Arena" }; --Vengeful Gladiator's Kodohide Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35023, price = "Arena" }; --Brutal Gladiator's Kodohide Helm
		[18] = { itemID = 35025, price = "Arena" }; --Brutal Gladiator's Kodohide Spaulders
		[19] = { itemID = 35026, price = "Arena" }; --Brutal Gladiator's Kodohide Tunic
		[20] = { itemID = 35022, price = "Arena" }; --Brutal Gladiator's Kodohide Gloves
		[21] = { itemID = 35024, price = "Arena" }; --Brutal Gladiator's Kodohide Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Enhancement"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923512, price = "Arena" }; --Vengeful Gladiator's Linked Helm
		[03] = { itemID = 923514, price = "Arena" }; --Vengeful Gladiator's Linked Spaulders
		[04] = { itemID = 923510, price = "Arena" }; --Vengeful Gladiator's Linked Armor
		[05] = { itemID = 923511, price = "Arena" }; --Vengeful Gladiator's Linked Gauntlets
		[06] = { itemID = 923513, price = "Arena" }; --Vengeful Gladiator's Linked Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35044, price = "Arena" }; --Brutal Gladiator's Linked Helm
		[18] = { itemID = 35046, price = "Arena" }; --Brutal Gladiator's Linked Spaulders
		[19] = { itemID = 35042, price = "Arena" }; --Brutal Gladiator's Linked Armor
		[20] = { itemID = 35043, price = "Arena" }; --Brutal Gladiator's Linked Gauntlets
		[21] = { itemID = 35045, price = "Arena" }; --Brutal Gladiator's Linked Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Elemental"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923517, price = "Arena" }; --Vengeful Gladiator's Mail Helm
		[03] = { itemID = 923519, price = "Arena" }; --Vengeful Gladiator's Mail Spaulders
		[04] = { itemID = 923515, price = "Arena" }; --Vengeful Gladiator's Mail Armor
		[05] = { itemID = 923516, price = "Arena" }; --Vengeful Gladiator's Mail Gauntlets
		[06] = { itemID = 923518, price = "Arena" }; --Vengeful Gladiator's Mail Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35050, price = "Arena" }; --Brutal Gladiator's Mail Helm
		[18] = { itemID = 35052, price = "Arena" }; --Brutal Gladiator's Mail Spaulders
		[19] = { itemID = 35048, price = "Arena" }; --Brutal Gladiator's Mail Armor
		[20] = { itemID = 35049, price = "Arena" }; --Brutal Gladiator's Mail Gauntlets
		[21] = { itemID = 35051, price = "Arena" }; --Brutal Gladiator's Mail Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AtlasLoot.Colors.WHITE..AL["Restoration"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923532, price = "Arena" }; --Vengeful Gladiator's Ringmail Helm
		[03] = { itemID = 923534, price = "Arena" }; --Vengeful Gladiator's Ringmail Spaulders
		[04] = { itemID = 923530, price = "Arena" }; --Vengeful Gladiator's Ringmail Armor
		[05] = { itemID = 923531, price = "Arena" }; --Vengeful Gladiator's Ringmail Gauntlets
		[06] = { itemID = 923533, price = "Arena" }; --Vengeful Gladiator's Ringmail Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35079, price = "Arena" }; --Brutal Gladiator's Ringmail Helm
		[18] = { itemID = 35081, price = "Arena" }; --Brutal Gladiator's Ringmail Spaulders
		[19] = { itemID = 35077, price = "Arena" }; --Brutal Gladiator's Ringmail Armor
		[20] = { itemID = 35078, price = "Arena" }; --Brutal Gladiator's Ringmail Gauntlets
		[21] = { itemID = 35080, price = "Arena" }; --Brutal Gladiator's Ringmail Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Protection"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923504, price = "Arena" }; --Vengeful Gladiator's Lamellar Helm
		[03] = { itemID = 923503, price = "Arena" }; --Vengeful Gladiator's Lamellar Shoulders
		[04] = { itemID = 923500, price = "Arena" }; --Vengeful Gladiator's Lamellar Chestpiece
		[05] = { itemID = 923501, price = "Arena" }; --Vengeful Gladiator's Lamellar Gauntlets
		[06] = { itemID = 923502, price = "Arena" }; --Vengeful Gladiator's Lamellar Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35029, price = "Arena" }; --Brutal Gladiator's Lamellar Helm
		[18] = { itemID = 35031, price = "Arena" }; --Brutal Gladiator's Lamellar Shoulders
		[19] = { itemID = 35027, price = "Arena" }; --Brutal Gladiator's Lamellar Chestpiece
		[20] = { itemID = 35028, price = "Arena" }; --Brutal Gladiator's Lamellar Gauntlets
		[21] = { itemID = 35030, price = "Arena" }; --Brutal Gladiator's Lamellar Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Retribution"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923542, price = "Arena" }; --Vengeful Gladiator's Scaled Helm
		[03] = { itemID = 923544, price = "Arena" }; --Vengeful Gladiator's Scaled Shoulders
		[04] = { itemID = 923540, price = "Arena" }; --Vengeful Gladiator's Scaled Chestpiece
		[05] = { itemID = 923541, price = "Arena" }; --Vengeful Gladiator's Scaled Gauntlets
		[06] = { itemID = 923543, price = "Arena" }; --Vengeful Gladiator's Scaled Legguards
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35090, price = "Arena" }; --Brutal Gladiator's Scaled Helm
		[18] = { itemID = 35092, price = "Arena" }; --Brutal Gladiator's Scaled Shoulders
		[19] = { itemID = 35088, price = "Arena" }; --Brutal Gladiator's Scaled Chestpiece
		[20] = { itemID = 35089, price = "Arena" }; --Brutal Gladiator's Scaled Gauntlets
		[21] = { itemID = 35091, price = "Arena" }; --Brutal Gladiator's Scaled Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Holy"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923527, price = "Arena" }; --Vengeful Gladiator's Ornamented Headcover
		[03] = { itemID = 923529, price = "Arena" }; --Vengeful Gladiator's Ornamented Spaulders
		[04] = { itemID = 923525, price = "Arena" }; --Vengeful Gladiator's Ornamented Chestguard
		[05] = { itemID = 923526, price = "Arena" }; --Vengeful Gladiator's Ornamented Gloves
		[06] = { itemID = 923528, price = "Arena" }; --Vengeful Gladiator's Ornamented Legplates
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35061, price = "Arena" }; --Brutal Gladiator's Ornamented Headcover
		[18] = { itemID = 35063, price = "Arena" }; --Brutal Gladiator's Ornamented Spaulders
		[19] = { itemID = 35059, price = "Arena" }; --Brutal Gladiator's Ornamented Chestguard
		[20] = { itemID = 35060, price = "Arena" }; --Brutal Gladiator's Ornamented Gloves
		[21] = { itemID = 35062, price = "Arena" }; --Brutal Gladiator's Ornamented Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Shadow"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923536, price = "Arena" }; --Vengeful Gladiator's Satin Hood
		[03] = { itemID = 923538, price = "Arena" }; --Vengeful Gladiator's Satin Mantle
		[04] = { itemID = 923539, price = "Arena" }; --Vengeful Gladiator's Satin Robe
		[05] = { itemID = 923535, price = "Arena" }; --Vengeful Gladiator's Satin Gloves
		[06] = { itemID = 923537, price = "Arena" }; --Vengeful Gladiator's Satin Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35084, price = "Arena" }; --Brutal Gladiator's Satin Hood
		[18] = { itemID = 35086, price = "Arena" }; --Brutal Gladiator's Satin Mantle
		[19] = { itemID = 35087, price = "Arena" }; --Brutal Gladiator's Satin Robe
		[20] = { itemID = 35083, price = "Arena" }; --Brutal Gladiator's Satin Gloves
		[21] = { itemID = 35085, price = "Arena" }; --Brutal Gladiator's Satin Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AtlasLoot.Colors.WHITE..AL["Holy"];
		[01] = { icon = "INV_Box_01", name = AL["Honor Points"]};
		[02] = { itemID = 923521, price = "Arena" }; --Vengeful Gladiator's Mooncloth Hood
		[03] = { itemID = 923523, price = "Arena" }; --Vengeful Gladiator's Mooncloth Mantle
		[04] = { itemID = 923524, price = "Arena" }; --Vengeful Gladiator's Mooncloth Robe
		[05] = { itemID = 923520, price = "Arena" }; --Vengeful Gladiator's Mooncloth Gloves
		[06] = { itemID = 923522, price = "Arena" }; --Vengeful Gladiator's Mooncloth Leggings
		[16] = { icon = "INV_Box_01", name = AL["Arena Points"]};
		[17] = { itemID = 35054, price = "Arena" }; --Brutal Gladiator's Mooncloth Hood
		[18] = { itemID = 35056, price = "Arena" }; --Brutal Gladiator's Mooncloth Mantle
		[19] = { itemID = 35057, price = "Arena" }; --Brutal Gladiator's Mooncloth Robe
		[20] = { itemID = 35053, price = "Arena" }; --Brutal Gladiator's Mooncloth Gloves
		[21] = { itemID = 35055, price = "Arena" }; --Brutal Gladiator's Mooncloth Leggings
	};
}

--------------------------
---Sets & Collections ---
--------------------------

---------------------------
---Dungeon 3 Sets (D3) ---
---------------------------

	AtlasLoot_Data["DS3"] = {
	Module = "AtlasLoot_BurningCrusade";
			Name = AL["Dungeon 3 Sets"];
			Type = "BCDungeon";
		{
			Name = AL["Hallowed Raiment"];
			[01] = { itemID = 28413, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Hallowed Crown
			[02] = { itemID = 27775, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Grandmaster Vorpil"]} }; --Hallowed Pauldrons
			[03] = { itemID = 28230, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Hallowed Garments
			[04] = { itemID = 27536, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Hallowed Handwraps
			[05] = { itemID = 27875, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Hallowed Trousers
		};
		{
			Name = AL["Mana-Etched Regalia"];
			[01] = { itemID = 28193, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Mana-Etched Crown
			[02] = { itemID = 27796, desc = {BabbleZone["The Slave Pens"], BabbleBoss["Quagmirran"]..AL["Heroic Mode"] } }; --Mana-Etched Spaulders
			[03] = { itemID = 28191, desc = {BabbleZone["Old Hillsbrad Foothills"]..AL["Heroic Mode"], BabbleBoss["Epoch Hunter"]} }; --Mana-Etched Vestments
			[04] = { itemID = 27465, desc = {BabbleZone["Hellfire Ramparts"]..AL["Heroic Mode"], BabbleBoss["Omor the Unscarred"]} }; --Mana-Etched Gloves
			[05] = { itemID = 27907, desc = {BabbleZone["The Slave Pens"], BabbleBoss["The Black Stalker"]..AL["Heroic Mode"] } }; --Mana-Etched Pantaloons
		};
		{
			Name = AL["Incanter's Regalia"];
			[01] = { itemID = 28278, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Incanter's Cowl
			[02] = { itemID = 27738, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Incanter's Pauldrons
			[03] = { itemID = 28229, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Incanter's Robe
			[04] = { itemID = 27508, desc = {BabbleZone["The Steamvault"], BabbleBoss["Hydromancer Thespia"]} }; --Incanter's Gloves
			[05] = { itemID = 27838, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Incanter's Trousers
		};
		{
			Name = AL["Oblivion Raiment"];
			[01] = { itemID = 28415, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Hood of Oblivion
			[02] = { itemID = 27778, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Spaulders of Oblivion
			[03] = { itemID = 28232, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Robe of Oblivion
			[04] = { itemID = 27537, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Gloves of Oblivion
			[05] = { itemID = 27948, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Trousers of Oblivion
		};
		{
			Name = AL["Assassination Armor"];
			[01] = { itemID = 28414, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Helm of Assassination
			[02] = { itemID = 27776, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Shoulderpads of Assassination
			[03] = { itemID = 28204, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Tunic of Assassination
			[04] = { itemID = 27509, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Handgrips of Assassination
			[05] = { itemID = 27908, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Leggings of Assassination
		};
		{
			Name = AL["Wastewalker Armor"];
			[01] = { itemID = 28224, desc = {BabbleZone["Old Hillsbrad Foothills"]..AL["Heroic Mode"], BabbleBoss["Epoch Hunter"]} }; --Wastewalker Helm
			[02] = { itemID = 27797, desc = {BabbleZone["Auchenai Crypts"]..AL["Heroic Mode"], AL["Avatar"]} }; --Wastewalker Shoulderpads
			[03] = { itemID = 28264, desc = {BabbleZone["The Blood Furnace"]..AL["Heroic Mode"], BabbleBoss["Keli'dan the Breaker"]} }; --Wastewalker Tunic
			[04] = { itemID = 27531, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Wastewalker Gloves
			[05] = { itemID = 27837, desc = {BabbleZone["Mana-Tombs"]..AL["Heroic Mode"], BabbleBoss["Nexus-Prince Shaffar"]} }; --Wastewalker Leggings
		};
		{
			Name = AL["Moonglade Raiment"];
			[01] = { itemID = 28348, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Moonglade Cowl
			[02] = { itemID = 27737, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Moonglade Shoulders
			[03] = { itemID = 28202, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Moonglade Robe
			[04] = { itemID = 27468, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Blackheart the Inciter"]} }; --Moonglade Handwraps
			[05] = { itemID = 27873, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Moonglade Pants
		};
		{
			Name = AL["Beast Lord Armor"];
			[01] = { itemID = 28275, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Beast Lord Helm
			[02] = { itemID = 27801, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Beast Lord Mantle
			[03] = { itemID = 28228, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Beast Lord Curiass
			[04] = { itemID = 27474, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Beast Lord Handguards
			[05] = { itemID = 27874, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Beast Lord Leggings
		};
		{
			Name = AL["Tidefury Raiment"];
			[01] = { itemID = 28349, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Tidefury Helm
			[02] = { itemID = 27802, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warbringer O'mrogg"]} }; --Tidefury Shoulderguards
			[03] = { itemID = 28231, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Tidefury Chestpiece
			[04] = { itemID = 27510, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Tidefury Gauntlets
			[05] = { itemID = 27909, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Tidefury Kilt
		};
		{
			Name = AL["Desolation Battlegear"];
			[01] = { itemID = 28192, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Helm of Desolation
			[02] = { itemID = 27713, desc = {BabbleZone["The Slave Pens"], BabbleBoss["Quagmirran"]..AL["Heroic Mode"] } }; --Pauldrons of Desolation
			[03] = { itemID = 28401, desc = {BabbleZone["Old Hillsbrad Foothills"]..AL["Heroic Mode"], BabbleBoss["Epoch Hunter"]} }; --Hauberk of Desolation
			[04] = { itemID = 27528, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Gauntlets of Desolation
			[05] = { itemID = 27936, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Greaves of Desolation
		};
		{
			Name = AL["Bold Armor"];
			[01] = { itemID = 28350, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Warhelm of the Bold
			[02] = { itemID = 27803, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Shoulderguards of the Bold
			[03] = { itemID = 28205, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Breastplate of the Bold
			[04] = { itemID = 27475, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Gauntlets of the Bold
			[05] = { itemID = 27977, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Legplates of the Bold
		};
		{
			Name = AL["Righteous Armor"];
			[01] = { itemID = 28285, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Helm of the Righteous
			[02] = { itemID = 27739, desc = {BabbleZone["The Botanica"], BabbleBoss["Laj"]} }; --Spaulders of the Righteous
			[03] = { itemID = 28203, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Breastplate of the Righteous
			[04] = { itemID = 27535, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warbringer O'mrogg"]} }; --Gauntlets of the Righteous
			[05] = { itemID = 27839, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Legplates of the Righteous
		};
		{
			Name = AL["Doomplate Battlegear"];
			[01] = { itemID = 28225, desc = {BabbleZone["Old Hillsbrad Foothills"]..AL["Heroic Mode"], BabbleBoss["Epoch Hunter"]} }; --Doomplate Warhelm
			[02] = { itemID = 27771, desc = {BabbleZone["The Slave Pens"], BabbleBoss["The Black Stalker"]..AL["Heroic Mode"] } }; --Doomplate Shouldergards
			[03] = { itemID = 28403, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Doomplate Chestguard
			[04] = { itemID = 27497, desc = {BabbleZone["The Blood Furnace"]..AL["Heroic Mode"], BabbleBoss["Keli'dan the Breaker"]} }; --Doomplate Gauntlets
			[05] = { itemID = 27870, desc = {BabbleZone["Auchenai Crypts"]..AL["Heroic Mode"], BabbleBoss["Exarch Maladaar"]} }; --Doomplate Legguards
		};
		{
			Name = AL["Divine Armor"];
			[01] = { itemID = 242595 };
			[02] = { itemID = 241962 };
			[03] = { itemID = 242552 };
			[04] = { itemID = 242509 };
			[05] = { itemID = 241919 };
			},
			{
			Name = AL["Armor of the Just"];
			[01] = { itemID = 242810 };
			[02] = { itemID = 242681 };
			[03] = { itemID = 242767 };
			[04] = { itemID = 242724 };
			[05] = { itemID = 242638 };
			},
			{
			Name = AL["Sentinel's Armor"];
			[01] = { itemID = 244915 };
			[02] = { itemID = 242896 };
			[03] = { itemID = 244872 };
			[04] = { itemID = 244286 };
			[05] = { itemID = 242853 };
			},
			{
			Name = AL["Raiment of the Tides"];
			[01] = { itemID = 245746 };
			[02] = { itemID = 245159 };
			[03] = { itemID = 245601 };
			[04] = { itemID = 245303 };
			[05] = { itemID = 244958 };
			},
			{
			Name = AL["Verdant's Regalia"];
			[01] = { itemID = 247693 };
			[02] = { itemID = 245878 };
			[03] = { itemID = 245962 };
			[04] = { itemID = 245794 };
			[05] = { itemID = 247548 };
			},
	};

--------------
---Tier 4 ---
--------------

	AtlasLoot_Data["T4"] = {
	Module = "AtlasLoot_BurningCrusade";
		Name = "Tier 4";
		Type = "BCRaid";
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Feral"];
			[01] = { itemID = 29098, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Stag-Helm of Malorne
			[02] = { itemID = 29100, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Mantle of Malorne
			[03] = { itemID = 29096, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Breastplate of Malorne
			[04] = { itemID = 29097, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Gauntlets of Malorne
			[05] = { itemID = 29099, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Greaves of Malorne
		};
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Restoration"];
			[01] = { itemID = 29086, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Crown of Malorne
			[02] = { itemID = 29089, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Shoulderguards of Malorne
			[03] = { itemID = 29087, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Chestguard of Malorne
			[04] = { itemID = 29090, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Handguards of Malorne
			[05] = { itemID = 29088, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Legguards of Malorne
		};
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Balance"];
			[01] = { itemID = 29093, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Antlers of Malorne
			[02] = { itemID = 29095, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Pauldrons of Malorne
			[03] = { itemID = 29091, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Chestpiece of Malorne
			[04] = { itemID = 29092, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Gloves of Malorne
			[05] = { itemID = 29094, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Britches of Malorne
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[01] = { itemID = 29081, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Demon Stalker Greathelm
			[02] = { itemID = 29084, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Demon Stalker Shoulderguards
			[03] = { itemID = 29082, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Demon Stalker Harness
			[04] = { itemID = 29085, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Demon Stalker Gauntlets
			[05] = { itemID = 29083, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Demon Stalker Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[01] = { itemID = 29076, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Collar of the Aldor
			[02] = { itemID = 29079, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Pauldrons of the Aldor
			[03] = { itemID = 29077, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Vestments of the Aldor
			[04] = { itemID = 29080, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Gloves of the Aldor
			[05] = { itemID = 29078, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Legwraps of the Aldor
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"];
			[01] = { itemID = 29068, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Justicar Faceguard
			[02] = { itemID = 29070, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Justicar Shoulderguards
			[03] = { itemID = 29066, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Justicar Chestguard
			[04] = { itemID = 29067, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Justicar Handguards
			[05] = { itemID = 29069, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Justicar Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Retribution"];
			[01] = { itemID = 29073, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Justicar Crown
			[02] = { itemID = 29075, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Justicar Shoulderplates
			[03] = { itemID = 29071, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Justicar Breastplate
			[04] = { itemID = 29072, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Justicar Gauntlets
			[05] = { itemID = 29074, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Justicar Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Holy"];
			[01] = { itemID = 29061, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Justicar Diadem
			[02] = { itemID = 29064, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Justicar Pauldrons
			[03] = { itemID = 29062, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Justicar Chestpiece
			[04] = { itemID = 29065, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Justicar Gloves
			[05] = { itemID = 29063, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Justicar Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..AtlasLoot.Colors.WHITE.." - "..AL["Holy"];
			[01] = { itemID = 29049, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Light-Collar of the Incarnate
			[02] = { itemID = 29054, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Light-Mantle of the Incarnate
			[03] = { itemID = 29050, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Robes of the Incarnate
			[04] = { itemID = 29055, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Handwraps of the Incarnate
			[05] = { itemID = 29053, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Trousers of the Incarnate
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..AtlasLoot.Colors.WHITE.." - "..AL["Shadow"];
			[01] = { itemID = 29058, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Soul-Collar of the Incarnate
			[02] = { itemID = 29060, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Soul-Mantle of the Incarnate
			[03] = { itemID = 29056, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Shroud of the Incarnate
			[04] = { itemID = 29057, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Gloves of the Incarnate
			[05] = { itemID = 29059, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Leggings of the Incarnate
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[01] = { itemID = 29044, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Netherblade Facemask
			[02] = { itemID = 29047, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Netherblade Shoulderpads
			[03] = { itemID = 29045, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Netherblade Chestpiece
			[04] = { itemID = 29048, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Netherblade Gloves
			[05] = { itemID = 29046, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Netherblade Breeches
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Enhancement"];
			[01] = { itemID = 29040, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Cyclone Helm
			[02] = { itemID = 29043, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Cyclone Shoulderplates
			[03] = { itemID = 29038, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Cyclone Breastplate
			[04] = { itemID = 29039, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Cyclone Gauntlets
			[05] = { itemID = 29042, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Cyclone War-Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Restoration"];	
			[01] = { itemID = 29028, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Cyclone Headdress
			[02] = { itemID = 29031, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Cyclone Shoulderpads
			[03] = { itemID = 29029, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Cyclone Hauberk
			[04] = { itemID = 29032, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Cyclone Gloves
			[05] = { itemID = 29030, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Cyclone Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Elemental"];
			[01] = { itemID = 29035, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Cyclone Faceguard
			[02] = { itemID = 29037, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Cyclone Shoulderguards
			[03] = { itemID = 29033, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Cyclone Chestguard
			[04] = { itemID = 29034, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Cyclone Handguards
			[05] = { itemID = 29036, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Cyclone Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[01] = { itemID = 28963, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Voidheart Crown
			[02] = { itemID = 28967, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Voidheart Mantle
			[03] = { itemID = 28964, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Voidheart Robe
			[04] = { itemID = 28968, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Voidheart Gloves
			[05] = { itemID = 28966, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Voidheart Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"];
			[01] = { itemID = 29011, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Warbringer Greathelm
			[02] = { itemID = 29016, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Warbringer Shoulderguards
			[03] = { itemID = 29012, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Warbringer Chestguard
			[04] = { itemID = 29017, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Warbringer Handguards
			[05] = { itemID = 29015, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Warbringer Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"];
			[01] = { itemID = 14984, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Warbringer Helmet
			[02] = { itemID = 14988, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Warbringer Pauldrons
			[03] = { itemID = 14985, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Warbringer Hauberk
			[04] = { itemID = 14989, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Warbringer Gloves
			[05] = { itemID = 14987, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Warbringer Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Fury"];
			[01] = { itemID = 29021, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Warbringer Battle-Helm
			[02] = { itemID = 29023, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Warbringer Shoulderplates
			[03] = { itemID = 29019, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Warbringer Breastplate
			[04] = { itemID = 29020, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Warbringer Gauntlets
			[05] = { itemID = 29022, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Warbringer Greaves
		}
	};

--------------
---Tier 5 ---
--------------

AtlasLoot_Data["T5"] = {
	Module = "AtlasLoot_BurningCrusade";
		Name = "Tier 5";
		Type = "BCRaid";
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Feral"];
			[01] = { itemID = 30228, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Nordrassil Headdress
			[02] = { itemID = 30230, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Nordrassil Feral-Mantle
			[03] = { itemID = 30222, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Nordrassil Chestplate
			[04] = { itemID = 30223, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Nordrassil Handgrips
			[05] = { itemID = 30229, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Nordrassil Feral-Kilt
		};
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Restoration"];
			[01] = { itemID = 30219, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Nordrassil Headguard
			[02] = { itemID = 30221, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Nordrassil Life-Mantle
			[03] = { itemID = 30216, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Nordrassil Chestguard
			[04] = { itemID = 30217, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Nordrassil Gloves
			[05] = { itemID = 30220, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Nordrassil Life-Kilt
		};
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Balance"];
			[01] = { itemID = 30233, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Nordrassil Headpiece
			[02] = { itemID = 30235, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Nordrassil Wrath-Mantle
			[03] = { itemID = 30231, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Nordrassil Chestpiece
			[04] = { itemID = 30232, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Nordrassil Gauntlets
			[05] = { itemID = 30234, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Nordrassil Wrath-Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[01] = { itemID = 30141, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Rift Stalker Helm
			[02] = { itemID = 30143, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Rift Stalker Mantle
			[03] = { itemID = 30139, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Rift Stalker Hauberk
			[04] = { itemID = 30140, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Rift Stalker Gauntlets
			[05] = { itemID = 30142, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Rift Stalker Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[01] = { itemID = 30206, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cowl of Tirisfal
			[02] = { itemID = 30210, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Mantle of Tirisfal
			[03] = { itemID = 30196, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Robes of Tirisfal
			[04] = { itemID = 30205, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Gloves of Tirisfal
			[05] = { itemID = 30207, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Leggings of Tirisfal
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"];
			[01] = { itemID = 30125, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Crystalforge Faceguard
			[02] = { itemID = 30127, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Crystalforge Shoulderguards
			[03] = { itemID = 30123, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Crystalforge Chestguard
			[04] = { itemID = 30124, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Crystalforge Handguards
			[05] = { itemID = 30126, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Crystalforge Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Retribution"];
			[01] = { itemID = 30131, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Crystalforge War-Helm
			[02] = { itemID = 30133, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Crystalforge Shoulderbraces
			[03] = { itemID = 30129, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Crystalforge Breastplate
			[04] = { itemID = 30130, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Crystalforge Gauntlets
			[05] = { itemID = 30132, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Crystalforge Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Holy"];
			[01] = { itemID = 30136, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Crystalforge Greathelm
			[02] = { itemID = 30138, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Crystalforge Pauldrons
			[03] = { itemID = 30134, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Crystalforge Chestpiece
			[04] = { itemID = 30135, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Crystalforge Gloves
			[05] = { itemID = 30137, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Crystalforge Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..AtlasLoot.Colors.WHITE.." - "..AL["Holy"];
			[01] = { itemID = 30152, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cowl of the Avatar
			[02] = { itemID = 30154, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Mantle of the Avatar
			[03] = { itemID = 30150, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Vestments of the Avatar
			[04] = { itemID = 30151, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Gloves of the Avatar
			[05] = { itemID = 30153, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Breeches of the Avatar
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..AtlasLoot.Colors.WHITE.." - "..AL["Shadow"];
			[01] = { itemID = 30161, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Hood of the Avatar
			[02] = { itemID = 30163, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Wings of the Avatar
			[03] = { itemID = 30159, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Shroud of the Avatar
			[04] = { itemID = 30160, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Handguards of the Avatar
			[05] = { itemID = 30162, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Leggings of the Avatar
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[01] = { itemID = 30146, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Deathmantle Helm
			[02] = { itemID = 30149, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Deathmantle Shoulderpads
			[03] = { itemID = 30144, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Deathmantle Chestguard
			[04] = { itemID = 30145, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Deathmantle Handguards
			[05] = { itemID = 30148, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Deathmantle Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Enhancement"];
			[01] = { itemID = 30190, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cataclysm Helm
			[02] = { itemID = 30194, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Cataclysm Shoulderplates
			[03] = { itemID = 30185, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Cataclysm Chestplate
			[04] = { itemID = 30189, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Cataclysm Gauntlets
			[05] = { itemID = 30192, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Cataclysm Legplates
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Restoration"];
			[01] = { itemID = 30166, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cataclysm Headguard
			[02] = { itemID = 30168, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Cataclysm Shoulderguards
			[03] = { itemID = 30164, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Cataclysm Chestguard
			[04] = { itemID = 30165, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Cataclysm Gloves
			[05] = { itemID = 30167, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Cataclysm Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Elemental"];
			[01] = { itemID = 30171, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cataclysm Headpiece
			[02] = { itemID = 30173, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Cataclysm Shoulderpads
			[03] = { itemID = 30169, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Cataclysm Chestpiece
			[04] = { itemID = 30170, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Cataclysm Handgrips
			[05] = { itemID = 30172, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Cataclysm Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[01] = { itemID = 30212, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Hood of the Corruptor
			[02] = { itemID = 30215, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Mantle of the Corruptor
			[03] = { itemID = 30214, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Robe of the Corruptor
			[04] = { itemID = 30211, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Gloves of the Corruptor
			[05] = { itemID = 30213, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Leggings of the Corruptor
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"];
			[01] = { itemID = 30115, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Destroyer Greathelm
			[02] = { itemID = 30117, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Destroyer Shoulderguards
			[03] = { itemID = 30113, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Destroyer Chestguard
			[04] = { itemID = 30114, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Destroyer Handguards
			[05] = { itemID = 30116, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Destroyer Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"];
			[01] = { itemID = 14992, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Destroyer Helmet
			[02] = { itemID = 14994, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Destroyer Pauldrons
			[03] = { itemID = 14990, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Destroyer Hauberk
			[04] = { itemID = 14991, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Destroyer Gloves
			[05] = { itemID = 14993, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Destroyer Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Fury"];
			[01] = { itemID = 30120, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Destroyer Battle-Helm
			[02] = { itemID = 30122, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Destroyer Shoulderblades
			[03] = { itemID = 30118, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Destroyer Breastplate
			[04] = { itemID = 30119, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Destroyer Gauntlets
			[05] = { itemID = 30121, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Destroyer Greaves
		};
	};

--------------
---Tier 6 ---
--------------

	AtlasLoot_Data["T6"] = {
	Module = "AtlasLoot_BurningCrusade";
			Name = "Tier 6";
			Type = "BCRaid";
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Feral"];
			[01] = { itemID = 31039, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Thunderheart Cover
			[02] = { itemID = 31048, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Thunderheart Pauldrons
			[03] = { itemID = 31042, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Thunderheart Chestguard
			[04] = { itemID = 34444, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Thunderheart Wristguards
			[05] = { itemID = 31034, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kaz'rogal"]} }; --Thunderheart Gauntlets
			[06] = { itemID = 34556, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Thunderheart Waistguard
			[07] = { itemID = 31044, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Thunderheart Leggings
			[08] = { itemID = 34573, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Thunderheart Treads
		};
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Restoration"];
			[01] = { itemID = 31037, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Thunderheart Helmet
			[02] = { itemID = 31047, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Thunderheart Spaulders
			[03] = { itemID = 31041, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Thunderheart Tunic
			[04] = { itemID = 34445, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Thunderheart Bracers
			[05] = { itemID = 31032, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Thunderheart Gloves
			[06] = { itemID = 34554, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Thunderheart Belt
			[07] = { itemID = 31045, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Thunderheart Legguards
			[08] = { itemID = 34571, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Thunderheart Boots
		};
		{
			Name = "Druid"..AtlasLoot.Colors.WHITE.." - "..AL["Balance"];
			[01] = { itemID = 31040, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Thunderheart Headguard
			[02] = { itemID = 31049, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Thunderheart Shoulderpads
			[03] = { itemID = 31043, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Thunderheart Vest
			[04] = { itemID = 34446, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Thunderheart Bands
			[05] = { itemID = 31035, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Thunderheart Handguards
			[06] = { itemID = 34555, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Thunderheart Cord
			[07] = { itemID = 31046, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Thunderheart Pants
			[08] = { itemID = 34572, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Thunderheart Footwraps
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[01] = { itemID = 31003, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Gronnstalker's Helmet
			[02] = { itemID = 31006, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Gronnstalker's Spaulders
			[03] = { itemID = 31004, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Gronnstalker's Chestguard
			[04] = { itemID = 34443, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Gronnstalker's Bracers
			[05] = { itemID = 31001, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Gronnstalker's Gloves
			[06] = { itemID = 34549, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Gronnstalker's Belt
			[07] = { itemID = 31005, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Gronnstalker's Leggings
			[08] = { itemID = 34570, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Gronnstalker's Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[01] = { itemID = 31056, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Cowl of the Tempest
			[02] = { itemID = 31059, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Mantle of the Tempest
			[03] = { itemID = 31057, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Robes of the Tempest
			[04] = { itemID = 34447, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Bracers of the Tempest
			[05] = { itemID = 31055, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Gloves of the Tempest
			[06] = { itemID = 34557, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Belt of the Tempest
			[07] = { itemID = 31058, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Leggings of the Tempest
			[08] = { itemID = 34574, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Boots of the Tempest
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"];
			[01] = { itemID = 30987, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Lightbringer Faceguard
			[02] = { itemID = 30998, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Lightbringer Shoulderguards
			[03] = { itemID = 30991, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Lightbringer Chestguard
			[04] = { itemID = 34433, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Lightbringer Wristguards
			[05] = { itemID = 30985, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Lightbringer Handguards
			[06] = { itemID = 34488, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Lightbringer Waistguard
			[07] = { itemID = 30995, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Lightbringer Legguards
			[08] = { itemID = 34560, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Lightbringer Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Retribution"];
			[01] = { itemID = 30989, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Lightbringer War-Helm
			[02] = { itemID = 30997, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Lightbringer Shoulderbraces
			[03] = { itemID = 30990, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Lightbringer Breastplate
			[04] = { itemID = 34431, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Lightbringer Bands
			[05] = { itemID = 30982, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Lightbringer Gauntlets
			[06] = { itemID = 34485, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Lightbringer Girdle
			[07] = { itemID = 30993, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Lightbringer Greaves
			[08] = { itemID = 34561, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Lightbringer Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..AtlasLoot.Colors.WHITE.." - "..AL["Holy"];
			[01] = { itemID = 30988, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Lightbringer Greathelm
			[02] = { itemID = 30996, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Lightbringer Pauldrons
			[03] = { itemID = 30992, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Lightbringer Chestpiece
			[04] = { itemID = 34432, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Lightbringer Bracers
			[05] = { itemID = 30983, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Lightbringer Gloves
			[06] = { itemID = 34487, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Lightbringer Belt
			[07] = { itemID = 30994, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Lightbringer Leggings
			[08] = { itemID = 34559, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Lightbringer Treads
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..AtlasLoot.Colors.WHITE.." - "..AL["Holy"];
			[01] = { itemID = 31063, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Cowl of Absolution
			[02] = { itemID = 31069, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Mantle of Absolution
			[03] = { itemID = 31066, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Vestments of Absolution
			[04] = { itemID = 34435, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Cuffs of Absolution
			[05] = { itemID = 31060, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Gloves of Absolution
			[06] = { itemID = 34527, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Belt of Absolution
			[07] = { itemID = 31068, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Breeches of Absolution
			[08] = { itemID = 34562, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Boots of Absolution
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..AtlasLoot.Colors.WHITE.." - "..AL["Shadow"];
			[01] = { itemID = 31064, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Hood of Absolution
			[02] = { itemID = 31070, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Shoulderpads of Absolution
			[03] = { itemID = 31065, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Shroud of Absolution
			[04] = { itemID = 34434, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Bracers of Absolution
			[05] = { itemID = 31061, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Handguards of Absolution
			[06] = { itemID = 34528, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Cord of Absolution
			[07] = { itemID = 31067, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Leggings of Absolution
			[08] = { itemID = 34563, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Treads of Absolution
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[01] = { itemID = 31027, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Slayer's Helm
			[02] = { itemID = 31030, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Slayer's Shoulderpads
			[03] = { itemID = 31028, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Slayer's Chestguard
			[04] = { itemID = 34448, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Slayer's Bracers
			[05] = { itemID = 31026, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Slayer's Handguards
			[06] = { itemID = 34558, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Slayer's Belt
			[07] = { itemID = 31029, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Slayer's Legguards
			[08] = { itemID = 34575, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Slayer's Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Enhancement"];
			[01] = { itemID = 31015, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Skyshatter Cover
			[02] = { itemID = 31024, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Skyshatter Pauldrons
			[03] = { itemID = 31018, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Skyshatter Tunic
			[04] = { itemID = 34439, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Skyshatter Wristguards
			[05] = { itemID = 31011, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Skyshatter Grips
			[06] = { itemID = 34545, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Skyshatter Girdle
			[07] = { itemID = 31021, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Skyshatter Pants
			[08] = { itemID = 34567, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Skyshatter Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Restoration"];
			[01] = { itemID = 31012, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Skyshatter Helmet
			[02] = { itemID = 31022, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Skyshatter Shoulderpads
			[03] = { itemID = 31016, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Skyshatter Chestguard
			[04] = { itemID = 34438, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Skyshatter Bracers
			[05] = { itemID = 31007, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Skyshatter Gloves
			[06] = { itemID = 34543, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Skyshatter Belt
			[07] = { itemID = 31019, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Skyshatter Leggings
			[08] = { itemID = 34565, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Skyshatter Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..AtlasLoot.Colors.WHITE.." - "..AL["Elemental"];
			[01] = { itemID = 31014, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Skyshatter Headguard
			[02] = { itemID = 31023, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Skyshatter Mantle
			[03] = { itemID = 31017, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Skyshatter Breastplate
			[04] = { itemID = 34437, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Skyshatter Bands
			[05] = { itemID = 31008, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Skyshatter Gauntlets
			[06] = { itemID = 34542, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Skyshatter Cord
			[07] = { itemID = 31020, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Skyshatter Legguards
			[08] = { itemID = 34566, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Skyshatter Treads
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[01] = { itemID = 31051, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Hood of the Malefic
			[02] = { itemID = 31054, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Mantle of the Malefic
			[03] = { itemID = 31052, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Robe of the Malefic
			[04] = { itemID = 34436, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Bracers of the Malefic
			[05] = { itemID = 31050, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Gloves of the Malefic
			[06] = { itemID = 34541, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Belt of the Malefic
			[07] = { itemID = 31053, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Leggings of the Malefic
			[08] = { itemID = 34564, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Boots of the Malefic
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"].. " - Block";
			[01] = { itemID = 30974, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Onslaught Greathelm
			[02] = { itemID = 30980, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Onslaught Shoulderguards
			[03] = { itemID = 30976, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Onslaught Chestguard
			[04] = { itemID = 34442, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Onslaught Wristguards
			[05] = { itemID = 30970, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Onslaught Handguards
			[06] = { itemID = 34547, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Onslaught Waistguard
			[07] = { itemID = 30978, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Onslaught Legguards
			[08] = { itemID = 34568, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Onslaught Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Protection"].. " - Parry";
			[01] = { itemID = 33642, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Onslaught Greathelm
			[02] = { itemID = 33645, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Onslaught Shoulderguards
			[03] = { itemID = 33643, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Onslaught Chestguard
			[04] = { itemID = 33646, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Onslaught Wristguards
			[05] = { itemID = 33641, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Onslaught Handguards
			[06] = { itemID = 33647, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Onslaught Waistguard
			[07] = { itemID = 33644, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Onslaught Legguards
			[08] = { itemID = 33648, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Onslaught Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..AtlasLoot.Colors.WHITE.." - "..AL["Fury"];
			[01] = { itemID = 30972, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Onslaught Battle-Helm
			[02] = { itemID = 30979, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Onslaught Shoulderblades
			[03] = { itemID = 30975, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Onslaught Breastplate
			[04] = { itemID = 34441, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Onslaught Bracers
			[05] = { itemID = 30969, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Onslaught Gauntlets
			[06] = { itemID = 34546, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Onslaught Belt
			[07] = { itemID = 30977, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Onslaught Greaves
			[08] = { itemID = 34569, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Onslaught Treads
		};
	};


--------------------------------
---The Burning Crusade Sets ---
--------------------------------

AtlasLoot_Data["TBCSets"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Burning Crusade Sets"];
	{
		Name = AL["Latro's Flurry"];
		[01] = { itemID = 34703 }; --Latro's Dancing Blade
		[02] = { itemID = 28189 }; --Latro's Shifting Sword
	};
	{
		Name = AL["The Twin Stars"];
		[01] = { itemID = 31338  }; --Charlotte's Ivy
		[02] = { itemID = 31339  }; --Lola's Eve
	};
	{
		Name = AL["The Fists of Fury"];
		[01] = { itemID = 32946 }; --Claw of Molten Fury
		[02] = { itemID = 32945 }; --Fist of Molten Fury
	};
	{
		Name = AL["The Twin Blades of Azzinoth"];
		[01] = { itemID = 32837 }; --Warglaive of Azzinoth
		[02] = { itemID = 32838 }; --Warglaive of Azzinoth
	};
};

--------------------------------
---Badge of Justice Rewards ---
--------------------------------

AtlasLoot_Data["BadgeShatt"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Shattrath City"];
	{
		Name = BabbleInventory["Cloth"];
		[01] = { itemID = 32090, price = "50 #heroic#" }; --Cowl of Naaru Blessings
		[02] = { itemID = 32089, price = "50 #heroic#" }; --Mana-Binders Cowl
		[03] = { itemID = 33588, price = "35 #heroic#" }; --Runed Spell-cuffs
		[04] = { itemID = 33589, price = "35 #heroic#" }; --Wristguards of Tranquil Thought
		[05] = { itemID = 33587, price = "60 #heroic#" }; --Light-Blessed Bonds
		[06] = { itemID = 33586, price = "60 #heroic#" }; --Studious Wraps
		[07] = { itemID = 33291, price = "60 #heroic#" }; --Voodoo-woven Belt
		[08] = { itemID = 33585, price = "75 #heroic#" }; --Achromic Trousers of the Naaru
		[09] = { itemID = 33584, price = "75 #heroic#" }; --Pantaloons of Arcane Annihilation
	};
	{
		Name = BabbleInventory["Leather"];
		[01] = { itemID = 32088, price = "50 #heroic#" }; --Cowl of Beastly Rage
		[02] = { itemID = 33972, price = "75 #heroic#" }; --Mask of Primal Power
		[03] = { itemID = 32087, price = "50 #heroic#" }; --Mask of the Deceiver
		[04] = { itemID = 33287, price = "60 #heroic#" }; --Gnarled Ironwood Pauldrons
		[05] = { itemID = 33973, price = "60 #heroic#" }; --Pauldrons of Tribal Fury
		[06] = { itemID = 33566, price = "75 #heroic#" }; --Blessed Elunite Coverings
		[07] = { itemID = 33579, price = "75 #heroic#" }; --Vestments of Hibernation
		[08] = { itemID = 33578, price = "35 #heroic#" }; --Armwraps of the Kaldorei Protector
		[09] = { itemID = 33580, price = "35 #heroic#" }; --Band of the Swift Paw
		[10] = { itemID = 33557, price = "35 #heroic#" }; --Gargon's Bracers Peaceful Slumber
		[11] = { itemID = 33540, price = "35 #heroic#" }; --Master Assassin Wristwraps
		[12] = { itemID = 33974, price = "60 #heroic#" }; --Grasp of the Moonkin
		[13] = { itemID = 33539, price = "60 #heroic#" }; --Trickster's Stickyfingers
		[14] = { itemID = 33559, price = "60 #heroic#" }; --Starfire Waistband
		[15] = { itemID = 33583, price = "60 #heroic#" }; --Waistguard of the Great Beast
		[16] = { itemID = 33552, price = "75 #heroic#" }; --Pants of Splendid Recovery
		[17] = { itemID = 33538, price = "75 #heroic#" }; --Shallow-grave Trousers
		[18] = { itemID = 33582, price = "60 #heroic#" }; --Footwraps of Wild Encroachment
		[19] = { itemID = 33577, price = "60 #heroic#" }; --Moon-walkers
		[20] = { itemID = 33222, price = "60 #heroic#" }; --Nyn'jah's Tabi Boots
	};
	{
		Name = BabbleInventory["Mail"];
		[01] = { itemID = 32086, price = "50 #heroic#" }; --Storm Master's Helmet
		[02] = { itemID = 32085, price = "50 #heroic#" }; --Warpstalker Helm
		[03] = { itemID = 33970, price = "60 #heroic#" }; --Pauldrons of the Furious Elements
		[04] = { itemID = 33965, price = "75 #heroic#" }; --Hauberk of the Furious Elements
		[05] = { itemID = 33535, price = "35 #heroic#" }; --Earthquake Bracers
		[06] = { itemID = 33532, price = "35 #heroic#" }; --Gleaming Earthen Bracers
		[07] = { itemID = 33529, price = "35 #heroic#" }; --Steadying Bracers
		[08] = { itemID = 33528, price = "60 #heroic#" }; --Gauntlets of Sniping
		[09] = { itemID = 33534, price = "60 #heroic#" }; --Grips of Nature's Wrath
		[10] = { itemID = 33531, price = "60 #heroic#" }; --Polished Waterscale Gloves
		[11] = { itemID = 33386, price = "60 #heroic#" }; --Man'kin'do's Belt
		[12] = { itemID = 33536, price = "60 #heroic#" }; --Stormwrap
		[13] = { itemID = 33280, price = "60 #heroic#" }; --War-Feathered Loop
		[14] = { itemID = 33530, price = "75 #heroic#" }; --Natural Life Leggings
		[15] = { itemID = 33527, price = "75 #heroic#" }; --Shifting Camouflage Pants
		[16] = { itemID = 33537, price = "60 #heroic#" }; --Treads of Booming Thunder
		[17] = { itemID = 33324, price = "60 #heroic#" }; --Treads of Life Path
	};
	{
		Name = BabbleInventory["Plate"];
		[01] = { itemID = 33810, price = "75 #heroic#" }; --Amani Mask of Death
		[02] = { itemID = 32083, price = "50 #heroic#" }; --Faceguard of Determination
		[03] = { itemID = 32084, price = "50 #heroic#" }; --Helmet of the Steadfast Champion
		[04] = { itemID = 33514, price = "60 #heroic#" }; --Pauldrons of Gruesome Fate
		[05] = { itemID = 33522, price = "75 #heroic#" }; --Chestguard of the Stoic Guardian
		[06] = { itemID = 33516, price = "35 #heroic#" }; --Bracers of the Ancient Phalanx
		[07] = { itemID = 33513, price = "35 #heroic#" }; --Eternium Rage-shackles
		[08] = { itemID = 33520, price = "35 #heroic#" }; --Vambraces of the Naaru
		[09] = { itemID = 33517, price = "60 #heroic#" }; --Bonefist Gauntlets
		[10] = { itemID = 33512, price = "60 #heroic#" }; --Furious Deathgrips
		[11] = { itemID = 33519, price = "60 #heroic#" }; --Handguards of the Templar
		[12] = { itemID = 33331, price = "60 #heroic#" }; --Chain of Unleashed Rage
		[13] = { itemID = 33524, price = "60 #heroic#" }; --Girdle of the Protector
		[14] = { itemID = 33279, price = "60 #heroic#" }; --Iron-tusk Girdle
		[16] = { itemID = 33501, price = "75 #heroic#" }; --Bloodthirster's Greaves
		[17] = { itemID = 33518, price = "75 #heroic#" }; --High Justicar's Legplates
		[18] = { itemID = 33515, price = "75 #heroic#" }; --Unwavering Legguards
		[19] = { itemID = 33207, price = "60 #heroic#" }; --Implacable Guardian Sabatons
		[20] = { itemID = 33523, price = "60 #heroic#" }; --Sabatons of the Righteous Defender
	};
	{
		Name = BabbleInventory["Back"];
		[01] = { itemID = 29375, price = "25 #heroic#" }; --Bishop's Cloak
		[02] = { itemID = 29382, price = "25 #heroic#" }; --Blood Knight War Cloak
		[03] = { itemID = 35321, price = "60 #heroic#" }; --Cloak of Arcane Alacrity
		[04] = { itemID = 33304, price = "60 #heroic#" }; --Cloak of Subjugated Power
		[05] = { itemID = 35324, price = "60 #heroic#" }; --Cloak of Swift Reprieve
		[06] = { itemID = 33484, price = "60 #heroic#" }; --Dory's Embrace
		[07] = { itemID = 29385, price = "25 #heroic#" }; --Farstrider Defender's Cloak
		[08] = { itemID = 33333, price = "60 #heroic#" }; --Kharmaa's Shroud of Hope
		[09] = { itemID = 29369, price = "25 #heroic#" }; --Shawl of Shifting Probabilities
		[10] = { itemID = 33593, price = "35 #heroic#" }; --Slikk's Cloak of Placation
	};
	{
		Name = BabbleInventory["Totem"] .. "s - " .. BabbleInventory["Idol"] .. "s - " .. BabbleInventory["Libram"] .. "s";
		[01] = { itemID = 29390, price = "15 #heroic#" }; --Everbloom Idol
		[02] = { itemID = 33508, price = "20 #heroic#" }; --Idol of Budding Life
		[03] = { itemID = 33509, price = "20 #heroic#" }; --Idol of Terror
		[04] = { itemID = 33510, price = "20 #heroic#" }; --Idol of the Unseen Moon
		[05] = { itemID = 33506, price = "20 #heroic#" }; --Skycall Totem
		[06] = { itemID = 33507, price = "20 #heroic#" }; --Stonebreaker's Totem
		[07] = { itemID = 33505, price = "20 #heroic#" }; --Totem of Living Water
		[08] = { itemID = 29389, price = "15 #heroic#" }; --Totem of the Pulsing Earth
		[09] = { itemID = 33503, price = "20 #heroic#" }; --Libram of Divine Judgement
		[10] = { itemID = 33504, price = "20 #heroic#" }; --Libram of Divine Purpose
		[11] = { itemID = 33502, price = "20 #heroic#" }; --Libram of Mending
		[12] = { itemID = 29388, price = "15 #heroic#" }; --Libram of Repentance
	};
	{
		Name = AL["Weapons"];
		[01] = { itemID = 29275, price = "50 #heroic#" }; --Searing Sunblade
		[02] = { itemID = 33192, price = "25 #heroic#" }; --Carved Witch Doctor's Stick
		[03] = { itemID = 29266, price = "33 #heroic#" }; --Azure-Shield of Coldarra
		[04] = { itemID = 29267, price = "33 #heroic#" }; --Light-Bearer's Faith Shield
		[05] = { itemID = 29268, price = "33 #heroic#" }; --Mazthoril Honor Shield
		[06] = { itemID = 33334 , price = "35 #heroic#" }; --Fetish of the Primal Gods
		[07] = { itemID = 29270 , price = "25 #heroic#" }; --Flametounge Seal
		[08] = { itemID = 29273 , price = "25 #heroic#" }; --Khadgar's Knapsack
		[09] = { itemID = 29272 , price = "25 #heroic#" }; --Orb of the Soul-Eater
		[10] = { itemID = 29269 , price = "25 #heroic#" }; --Sapphiron's Wing Bone
		[11] = { itemID = 29271 , price = "25 #heroic#" }; --Talisman of Kalecgos
		[12] = { itemID = 29274 , price = "25 #heroic#" }; --Tears of Heaven
		[13] = { itemID = 33325 , price = "35 #heroic#" }; --Voodoo Shaker
	};
	{
		Name = AL["Accessories"];
		[01] = { itemID = 33296 , price = "35 #heroic#" }; --Brooch of Deftness
		[02] = { itemID = 29381 , price = "25 #heroic#" }; --Choker of Vile Intent
		[03] = { itemID = 29374 , price = "25 #heroic#" }; --Necklace of Eternal Hope
		[04] = { itemID = 29368 , price = "25 #heroic#" }; --Manasurge Pendant
		[05] = { itemID = 29386 , price = "25 #heroic#" }; --Necklace of the Juggernaut
		[06] = { itemID = 29373 , price = "25 #heroic#" }; --Band of Halos
		[07] = { itemID = 29379 , price = "25 #heroic#" }; --Ring of Arathi Warlords
		[08] = { itemID = 29367 , price = "25 #heroic#" }; --Ring of Cryptic Dreams
		[09] = { itemID = 29384 , price = "25 #heroic#" }; --Ring of Unyielding Force
		[10] = { itemID = 23572, price = "10 #heroic#" }; --Primal Nether
		[11] = { itemID = 32227, price = "15 #heroic#" }; --Crimson Spinel
		[12] = { itemID = 32229, price = "15 #heroic#" }; --Lionseye
		[13] = { itemID = 32249, price = "15 #heroic#" }; --Seaspray Emerald
		[14] = { itemID = 35326, price = "75 #heroic#" }; --Battlemaster's Alacrity
		[15] = { itemID = 34049, price = "75 #heroic#" }; --Battlemaster's Audacity
		[16] = { itemID = 34163, price = "75 #heroic#" }; --Battlemaster's Cruelty
		[17] = { itemID = 34162, price = "75 #heroic#" }; --Battlemaster's Depravity
		[18] = { itemID = 33832, price = "75 #heroic#" }; --Battlemaster's Determination
		[19] = { itemID = 34050, price = "75 #heroic#" }; --Battlemaster's Perseverance
		[20] = { itemID = 29383, price = "41 #heroic#" }; --Bloodlust Brooch
		[21] = { itemID = 29376, price = "41 #heroic#" }; --Essence of the Martyr
		[22] = { itemID = 29387, price = "41 #heroic#" }; --Gnomeregan Auto-Blocker 600
		[23] = { itemID = 29370, price = "41 #heroic#" }; --Icon of the Silver Crescent
		[24] = { itemID = 30183, price = "15 #heroic#" }; --Nether Vortex
		[25] = { itemID = 32228, price = "15 #heroic#" }; --Empyrean Sapphire
		[26] = { itemID = 32231, price = "15 #heroic#" }; --Pyrestone
		[27] = { itemID = 32230, price = "15 #heroic#" }; --Shadowsong Amethyst
	};
	{
		Name = AL["Fire Resistance Gear"];
		[01] = { icon = "INV_Box_01", name = BabbleInventory["Cloth"] };
		[02] = { itemID = 30762, price = "30 #heroic#" }; --Infernoweave Robe
		[03] = { itemID = 30764, price = "20 #heroic#" }; --Infernoweave Gloves
		[04] = { itemID = 30761, price = "30 #heroic#" }; --Infernoweave Leggings
		[05] = { itemID = 30763, price = "20 #heroic#" }; --Infernoweave Boots
		[07] = { icon = "INV_Box_01", name = BabbleInventory["Leather"] };
		[08] = { itemID = 30776, price = "30 #heroic#" }; --Inferno Hardened Chestguard
		[09] = { itemID = 30780, price = "20 #heroic#" }; --Inferno Hardened Gloves
		[10] = { itemID = 30778, price = "30 #heroic#" }; --Inferno Hardened Leggings
		[11] = { itemID = 30779, price = "20 #heroic#" }; --Inferno Hardened Boots
		[13] = { itemID = 29434 }; --Badge of Justice
		[16] = { icon = "INV_Box_01", name = BabbleInventory["Mail"] };
		[17] = { itemID = 30773, price = "30 #heroic#" }; --Inferno Forged Hauberk
		[18] = { itemID = 30774, price = "20 #heroic#" }; --Inferno Forged Gloves
		[19] = { itemID = 30772, price = "30 #heroic#" }; --Inferno Forged Leggings
		[20] = { itemID = 30770, price = "20 #heroic#" }; --Inferno Forged Boots
		[22] = { icon = "INV_Box_01", name = BabbleInventory["Plate"] };
		[23] = { itemID = 30769, price = "30 #heroic#" }; --Inferno Tempered Chestguard
		[24] = { itemID = 30767, price = "20 #heroic#" }; --Inferno Tempered Gauntlets
		[25] = { itemID = 30766, price = "30 #heroic#" }; --Inferno Tempered Leggings
		[26] = { itemID = 30768, price = "20 #heroic#" }; --Inferno Tempered Boots
	};
};

AtlasLoot_Data["BadgeSunwell"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Sunwell Isle"];
	{
		Name = BabbleInventory["Cloth"];
		[01] = { itemID = 34924, price = "100 #heroic#" }; --Gown of Spiritual Wonder
		[02] = { itemID = 34917, price = "100 #heroic#" }; --Shroud of the Lore`nial
		[03] = { itemID = 34936, price = "100 #heroic#" }; --Tormented Demonsoul Robes
		[04] = { itemID = 34938, price = "75 #heroic#" }; --Enslaved Doomguard Soulgrips
		[05] = { itemID = 34925, price = "100 #heroic#" }; --Adorned Supernal Legwraps
		[06] = { itemID = 34937, price = "100 #heroic#" }; --Corrupted Soulcloth Pantaloons
		[07] = { itemID = 34918, price = "100 #heroic#" }; --Legwraps of Sweltering Flame
		[08] = { itemID = 34919, price = "75 #heroic#" }; --Boots of Incantations
		[09] = { itemID = 34926, price = "75 #heroic#" }; --Slippers of Dutiful Mending
	};
	{
		Name = BabbleInventory["Leather"];
		[01] = { itemID = 34906, price = "100 #heroic#" }; --Embrace of Everlasting Prowess
		[02] = { itemID = 34903, price = "100 #heroic#" }; --Embrace of Starlight
		[03] = { itemID = 34900, price = "100 #heroic#" }; --Shroud of Nature's Harmony
		[04] = { itemID = 34927, price = "100 #heroic#" }; --Tunic of the Dark Hour
		[05] = { itemID = 34904, price = "75 #heroic#" }; --Barbed Gloves of the Sage
		[06] = { itemID = 34911, price = "75 #heroic#" }; --Handwraps of the Aggressor
		[07] = { itemID = 34902, price = "75 #heroic#" }; --Oakleaf-Spun Handguards
		[08] = { itemID = 34929, price = "75 #heroic#" }; --Belt of the Silent Path
		[09] = { itemID = 34905, price = "100 #heroic#" }; --Crystalwind Leggings
		[10] = { itemID = 34901, price = "100 #heroic#" }; --Grovewalker's Leggings
		[11] = { itemID = 34910, price = "100 #heroic#" }; --Tameless Breeches
		[12] = { itemID = 34928, price = "100 #heroic#" }; --Trousers of the Scryers' Retainer
	};
	{
		Name = BabbleInventory["Mail"];
		[01] = { itemID = 34933, price = "100 #heroic#" }; --Hauberk of Whirling Fury
		[02] = { itemID = 34912, price = "100 #heroic#" }; --Scaled Drakeskin Chestguard
		[03] = { itemID = 34930, price = "100 #heroic#" }; --Wave of Life Chestguard
		[04] = { itemID = 34916, price = "75 #heroic#" }; --Gauntlets of Rapidity
		[05] = { itemID = 34935, price = "75 #heroic#" }; --Aftershock Waistguard
		[06] = { itemID = 34932, price = "75 #heroic#" }; --Clutch of the Soothing Breeze
		[07] = { itemID = 34914, price = "100 #heroic#" }; --Leggings of the Pursuit
		[08] = { itemID = 34931, price = "100 #heroic#" }; --Runed Scales of Antiquity
		[09] = { itemID = 34934, price = "100 #heroic#" }; --Rushing Storm Kilt
	};
	{
		Name = BabbleInventory["Plate"];
		[01] = { itemID = 34942, price = "100 #heroic#" }; --Breastplate of Ire
		[02] = { itemID = 34939, price = "100 #heroic#" }; --Chestplate of Stoicism
		[03] = { itemID = 34921, price = "100 #heroic#" }; --Ecclesiastical Cuirass
		[04] = { itemID = 34945, price = "100 #heroic#" }; --Shattrath Protectorate's Breastplate
		[05] = { itemID = 34944, price = "75 #heroic#" }; --Girdle of Seething Rage
		[06] = { itemID = 34941, price = "75 #heroic#" }; --Girdle of the Fearless
		[07] = { itemID = 34923, price = "75 #heroic#" }; --Waistguard of Reparation
		[08] = { itemID = 34922, price = "100 #heroic#" }; --Greaves of Pacification
		[09] = { itemID = 34946, price = "100 #heroic#" }; --Inscribed Legplates of the Aldor
		[10] = { itemID = 34943, price = "100 #heroic#" }; --Legplates of Unending Fury
		[11] = { itemID = 34940, price = "100 #heroic#" }; --Sunguard Legplates
		[12] = { itemID = 34947, price = "75 #heroic#" }; --AtlasLoot.Colors.BLUE's Greaves of the Righteous Guardian
	};
	{
		Name = AL["Weapons"];
		[01] = { itemID = 34893, price = "105 #heroic#" }; --Vanir's Right Fist of Brutality
		[02] = { itemID = 34951, price = "45 #heroic#" }; --Vanir's Left Fist of Brutality
		[03] = { itemID = 34950, price = "45 #heroic#" }; --Vanir's Left Fist of Savagery
		[04] = { itemID = 34895, price = "150 #heroic#" }; --Scryer's Blade of Focus
		[05] = { itemID = 34894, price = "105 #heroic#" }; --Blade of Serration
		[06] = { itemID = 34949, price = "45 #heroic#" }; --Swift Blade of Uncertainty
		[07] = { itemID = 34952, price = "45 #heroic#" }; --The Mutilator
		[08] = { itemID = 34891, price = "150 #heroic#" }; --The Blade of Harbingers
		[09] = { itemID = 34896 , price = "150 #heroic#" }; --Gavel of Naaru Blessings
		[10] = { itemID = 34898 , price = "150 #heroic#" }; --Staff of the Forest Lord
		[11] = { itemID = 34892, price = "150 #heroic#" }; --Crossbow of Relentless Strikes
	};
	{
		Name = AL["Accessories"];
		[01] = { itemID = 34887 , price = "60 #heroic#" }; --Angelista's Revenge
		[02] = { itemID = 34890 , price = "60 #heroic#" }; --Anveena's Touch
		[03] = { itemID = 34889 , price = "60 #heroic#" }; --Fused Nethergon Band
		[04] = { itemID = 34888 , price = "60 #heroic#" }; --Ring of the Stalwart Protector
	};
};

AtlasLoot_Data["SunmoteSunwell"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Yrma - Sunmote Vendor"];
	Type = "BCRaid";
	{
		Name = AL["Page 1"];
		[01] = { itemID = 10735, contentsPreview = {{34345},{34664}} }; --Cover of Anasterian
		[02] = { itemID = 10736, contentsPreview = {{34332},{34664}} }; --War-Helm of Gul\'dan
		[03] = { itemID = 11433, contentsPreview = {{34208},{34664}} }; --Equilibrium Mantle
		[04] = { itemID = 11483, contentsPreview = {{34193},{34664}} }; --Shoulderguards of the Thalassian Savior
		[05] = { itemID = 11484, contentsPreview = {{34215},{34664}} }; --Casing of Reckless Fury
		[06] = { itemID = 11485, contentsPreview = {{34229},{34664}} }; --Breastplate of Serene Shores
		[07] = { itemID = 11517, contentsPreview = {{34180},{34664}} }; --Felfury Legguards
		[08] = { itemID = 11518, contentsPreview = {{34186},{34664}} }; --Pants of the Tumulutuos Storm
		[09] = { itemID = 11519, contentsPreview = {{34350},{34664}} }; --Gloves of the Ancient Shadowmoon
		[10] = { itemID = 11520, contentsPreview = {{34341},{34664}} }; --Borderland Gauntlets 5076
		[11] = { itemID = 34381, contentsPreview = {{34180},{34664}} }; --Felstrength Legplates
		[12] = { itemID = 34382, contentsPreview = {{34167},{34664}} }; --Judicator\'s Legguards
		[13] = { itemID = 34383, contentsPreview = {{34186},{34664}} }; --Kilt of Spiritual Reconstruction
		[14] = { itemID = 34384, contentsPreview = {{34169},{34664}} }; --Breeches of Natural Splendor
		[15] = { itemID = 34385, contentsPreview = {{34188},{34664}} }; --Leggings of the Immortal Beast
		[16] = { itemID = 34386, contentsPreview = {{34170},{34664}} }; --Pantaloons of Growing Strife
		[17] = { itemID = 34388, contentsPreview = {{34192},{34664}} }; --Pauldrons of Berserking
		[18] = { itemID = 34389, contentsPreview = {{34193},{34664}} }; --Spaulders of the Thalassian Defender
		[19] = { itemID = 34390, contentsPreview = {{34208},{34664}} }; --Erupting Epaulets
		[20] = { itemID = 34391, contentsPreview = {{34209},{34664}} }; --Spaulders of Devastation
		[21] = { itemID = 34392, contentsPreview = {{34195},{34664}} }; --Demontooth Shoulderpads
		[22] = { itemID = 34393, contentsPreview = {{34202},{34664}} }; --Shoulderpads of Knowledge\'s Pursuit
		[23] = { itemID = 34394, contentsPreview = {{34215},{34664}} }; --Breastplate of Agony\'s Aversion
		[24] = { itemID = 34395, contentsPreview = {{34216},{34664}} }; --Noble Judicator\'s Chestguard
		[25] = { itemID = 34396, contentsPreview = {{34229},{34664}} }; --Garments of Crashing Shores
		[26] = { itemID = 34397, contentsPreview = {{34211},{34664}} }; --Bladed Chaos Tunic
		[27] = { itemID = 34398, contentsPreview = {{34212},{34664}} }; --Utopian Tunic of Elune
		[28] = { itemID = 34399, contentsPreview = {{34233},{34664}} }; --Robes of Ghostly Hatred
		[29] = { itemID = 34400, contentsPreview = {{34345},{34664}} }; --Crown of Dath\'Remar
		[30] = { itemID = 34401, contentsPreview = {{34243},{34664}} }; --Helm of Uther\'s Resolve
	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 34402, contentsPreview = {{34332},{34664}} }; --Shroud of Chieftain Ner\'zhul
		[02] = { itemID = 34403, contentsPreview = {{34245},{34664}} }; --Cover of Ursoc the Mighty
		[03] = { itemID = 34404, contentsPreview = {{34244},{34664}} }; --Mask of the Fury Hunter
		[04] = { itemID = 34405, contentsPreview = {{34339},{34664}} }; --Helm of Arcane Purity
		[05] = { itemID = 34406, contentsPreview = {{34342},{34664}} }; --Gloves of Tyri\'s Power
		[06] = { itemID = 34407, contentsPreview = {{34351},{34664}} }; --Tranquil Moonlight Wraps
		[07] = { itemID = 34408, contentsPreview = {{34234},{34664}} }; --Gloves of the Forest Drifter
		[08] = { itemID = 34409, contentsPreview = {{34350},{34664}} }; --Gauntlets of the Ancient Frostwolf
	}
};



AtlasLoot_Data["HardModeArena"] = {
	Module = "AtlasLoot_BurningCrusade";
			Name = "Hardmode arena";
		{
			Name = "Hardmode arena";
			[01] = { itemID = 32811, price = "25 #heroic#" }; --Veteran's Dreadweave Cuffs
			[02] = { itemID = 32799, price = "40 #heroic#" }; --Veteran's Dreadweave Belt
			[03] = { itemID = 32787, price = "40 #heroic#" }; --Veteran's Dreadweave Stalkers
			[05] = { itemID = 32980, price = "25 #heroic#" }; --Veteran's Mooncloth Cuffs
			[06] = { itemID = 32979, price = "40 #heroic#" }; --Veteran's Mooncloth Belt
			[07] = { itemID = 32981, price = "40 #heroic#" }; --Veteran's Mooncloth Slippers
			[09] = { itemID = 32820, price = "25 #heroic#" }; --Veteran's Silk Cuffs
			[10] = { itemID = 32807, price = "40 #heroic#" }; --Veteran's Silk Belt
			[11] = { itemID = 32795, price = "40 #heroic#" }; --Veteran's Silk Footguards
			[16] = { itemID = 32810, price = "25 #heroic#" }; --Veteran's Dragonhide Bracers
			[17] = { itemID = 32798, price = "40 #heroic#" }; --Veteran's Dragonhide Belt
			[18] = { itemID = 32786, price = "40 #heroic#" }; --Veteran's Dragonhide Boots
			[20] = { itemID = 32812, price = "25 #heroic#" }; --Veteran's Kodohide Bracers
			[21] = { itemID = 32800, price = "40 #heroic#" }; --Veteran's Kodohide Belt
			[22] = { itemID = 32788, price = "40 #heroic#" }; --Veteran's Kodohide Boots
			[24] = { itemID = 32814, price = "25 #heroic#" }; --Veteran's Leather Bracers
			[25] = { itemID = 32802, price = "40 #heroic#" }; --Veteran's Leather Belt
			[26] = { itemID = 32790, price = "40 #heroic#" }; --Veteran's Leather Boots
			[28] = { itemID = 32821, price = "25 #heroic#" }; --Veteran's Wyrmhide Bracers
			[29] = { itemID = 32808, price = "40 #heroic#" }; --Veteran's Wyrmhide Belt
			[30] = { itemID = 32796, price = "40 #heroic#" }; --Veteran's Wyrmhide Boots
		};
	};

AtlasLoot_Data["HardModeArena2"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Hardmode arena2";
	{
		Name = "Hardmode arena2";
		[01] = { itemID = 32809, price = "25 #heroic#" }; --Veteran's Chain Bracers
		[02] = { itemID = 32797, price = "40 #heroic#" }; --Veteran's Chain Girdle
		[03] = { itemID = 32785, price = "40 #heroic#" }; --Veteran's Chain Sabatons
		[05] = { itemID = 32816, price = "25 #heroic#" }; --Veteran's Linked Bracers
		[06] = { itemID = 32803, price = "40 #heroic#" }; --Veteran's Linked Girdle
		[07] = { itemID = 32791, price = "40 #heroic#" }; --Veteran's Linked Sabatons
		[09] = { itemID = 32817, price = "25 #heroic#" }; --Veteran's Mail Bracers
		[10] = { itemID = 32804, price = "40 #heroic#" }; --Veteran's Mail Girdle
		[11] = { itemID = 32792, price = "40 #heroic#" }; --Veteran's Mail Sabatons
		[13] = { itemID = 32997, price = "25 #heroic#" }; --Veteran's Ringmail Bracers
		[14] = { itemID = 32998, price = "40 #heroic#" }; --Veteran's Ringmail Girdle
		[15] = { itemID = 32999, price = "40 #heroic#" }; --Veteran's Ringmail Sabatons
		[16] = { itemID = 32813, price = "25 #heroic#" }; --Veteran's Lamellar Bracers
		[17] = { itemID = 32801, price = "40 #heroic#" }; --Veteran's Lamellar Belt
		[18] = { itemID = 32789, price = "40 #heroic#" }; --Veteran's Lamellar Greaves
		[20] = { itemID = 32989, price = "25 #heroic#" }; --Veteran's Ornamented Bracers
		[21] = { itemID = 32988, price = "40 #heroic#" }; --Veteran's Ornamented Belt
		[22] = { itemID = 32990, price = "40 #heroic#" }; --Veteran's Ornamented Greaves
		[24] = { itemID = 32818, price = "25 #heroic#" }; --Veteran's Plate Bracers
		[25] = { itemID = 32805, price = "40 #heroic#" }; --Veteran's Plate Belt
		[26] = { itemID = 32793, price = "40 #heroic#" }; --Veteran's Plate Greaves
		[28] = { itemID = 32819, price = "25 #heroic#" }; --Veteran's Scaled Bracers
		[29] = { itemID = 32806, price = "40 #heroic#" }; --Veteran's Scaled Belt
		[30] = { itemID = 32794, price = "40 #heroic#" }; --Veteran's Scaled Greaves
	};
};

-----------------------
---BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["BoE World Epics"];
	Type = "BCDungeon";
	{
		Name = AL["BoE World Epics"];
		[01] = { itemID = 31329 }; --Lifegiving Cloak
		[02] = { itemID = 31340 }; --Will of Edward the Odd
		[03] = { itemID = 31343 }; --Kamaei's Cerulean Skirt
		[04] = { itemID = 31333 }; --The Night Watchman
		[05] = { itemID = 31335 }; --Pants of Living Growth
		[06] = { itemID = 31330 }; --Lightning Crown
		[07] = { itemID = 31328 }; --Leggings of Beast Mastery
		[08] = { itemID = 31320 }; --Chestguard of Exile
		[09] = { itemID = 31338 }; --Charlotte's Ivy
		[10] = { itemID = 31321 }; --Choker of Repentance
		[11] = { itemID = 31319 }; --Band of Impenetrable Defenses
		[12] = { itemID = 31339 }; --Lola's Eve
		[13] = { itemID = 31326 }; --Truestrike Ring
		[16] = { itemID = 31331 }; --The Night Blade
		[17] = { itemID = 31336 }; --Blade of Wizardry
		[18] = { itemID = 31332 }; --Blinkstrike
		[19] = { itemID = 31318 }; --Singing Crystal Axe
		[20] = { itemID = 31342 }; --The Ancient Scepter of Sue-Min
		[21] = { itemID = 31322 }; --The Hammer of Destiny
		[22] = { itemID = 31334 }; --Staff of Natural Fury
		[23] = { itemID = 34622 }; --Spinesever
		[24] = { itemID = 31323 }; --Don Santos' Famous Hunting Rifle
	};
};

AtlasLoot_Data["WorldRaresTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["BoE World Rares"];
	Type = "BCDungeon";
	{
		Name = AL["Page 1"];
		[01] = { itemID = 31187 },
		[02] = { itemID = 31173 },
		[03] = { itemID = 31193 },
		[04] = { itemID = 31175 },
		[05] = { itemID = 31258 },
		[06] = { itemID = 31290 },
		[07] = { itemID = 31153 },
		[08] = { itemID = 31178 },
		[09] = { itemID = 31230 },
		[10] = { itemID = 31186 },
		[11] = { itemID = 31305 },
		[12] = { itemID = 31152 },
		[13] = { itemID = 31295 },
		[14] = { itemID = 31285 },
		[15] = { itemID = 31255 },
		[16] = { itemID = 31303 },
		[17] = { itemID = 31280 },
		[18] = { itemID = 31288 },
		[19] = { itemID = 31299 },
		[20] = { itemID = 31204 },
		[21] = { itemID = 31304 },
		[22] = { itemID = 31190 },
		[23] = { itemID = 31308 },
		[24] = { itemID = 31289 },
		[25] = { itemID = 31237 },
		[26] = { itemID = 31287 },
		[27] = { itemID = 31291 },
		[28] = { itemID = 31234 },
		[29] = { itemID = 31292 },
		[30] = { itemID = 31272 },
	},
	{
		Name = AL["Page 2"];
		[01] = { itemID = 31282 },
		[02] = { itemID = 31143 },
		[03] = { itemID = 31200 },
		[04] = { itemID = 31240 },
		[05] = { itemID = 31283 },
		[06] = { itemID = 31297 },
		[07] = { itemID = 31147 },
		[08] = { itemID = 31294 },
		[09] = { itemID = 31277 },
		[10] = { itemID = 31275 },
		[11] = { itemID = 31281 },
		[12] = { itemID = 31298 },
		[13] = { itemID = 31226 },
		[14] = { itemID = 31306 },
		[15] = { itemID = 31145 },
		[16] = { itemID = 31222 },
		[17] = { itemID = 31222 },
		[18] = { itemID = 31150 },
		[19] = { itemID = 31149 },
		[20] = { itemID = 31151 },
		[21] = { itemID = 31293 },
		[22] = { itemID = 31180 },
	},
};

------------------------
---World Bosses TBC ---
------------------------

AtlasLoot_Data["WorldBossesTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["World Bosses"];
	Type = "BCRaid";
	{
		Name = BabbleBoss["Doom Lord Kazzak"];
		[01] = { itemID = 30735 }; --Ancient Spellcloak of the Highborne
		[02] = { itemID = 30734 }; --Leggings of the Seventh Circle
		[03] = { itemID = 30737 }; --Gold-Leaf Wildboots
		[04] = { itemID = 30739 }; --Scaled Greaves of the Marksman
		[05] = { itemID = 30740 }; --Ripfiend Shoulderplates
		[06] = { itemID = 30741 }; --Topaz-Studded Battlegrips
		[07] = { itemID = 30736  }; --Ring of Flowing Light
		[08] = { itemID = 30738  }; --Ring of Reciprocity
		[09] = { itemID = 30733  }; --Hope Ender
		[10] = { itemID = 30732  }; --Exodar Life-Staff
		[16] = { itemID = 229739 }; --Tome of Untold Secrets
	};
	{
		Name = BabbleBoss["Doomwalker"];
		[01] = { itemID = 30729 }; --Black-Iron Battlecloak
		[02] = { itemID = 30725 }; --Anger-Spark Gloves
		[03] = { itemID = 30727 }; --Gilded Trousers of Benediction
		[04] = { itemID = 30730  }; --Terrorweave Tunic
		[05] = { itemID = 30728 }; --Fathom-Helm of the Deeps
		[06] = { itemID = 30731 }; --Faceguard of the Endless Watch
		[07] = { itemID = 30726  }; --Archaic Charm of Presence
		[08] = { itemID = 30723 }; --Talon of the Tempest
		[09] = { itemID = 30722 }; --Ethereum Nexus-Reaver
		[10] = { itemID = 30724 }; --Barrel-Blade Longrifle
		[16] = { itemID = 229739 }; --Tome of Untold Secrets
	}
};

------------------------
----Item Sacks TBC ----
------------------------

AtlasLoot_ExtraData[34846] = {
	[01] = {itemID = 23437 };
	[02] = {itemID = 23438 };
	[03] = {itemID = 23439 };
	[04] = {itemID = 23441 };
	[05] = {itemID = 23436 };
	[06] = {itemID = 23440 };
	[07] = {itemID = 32230 };
	[08] = {itemID = 32249 };
	[09] = {itemID = 32231 };
	[10] = {itemID = 32229 };
	[11] = {itemID = 32228 };
	[12] = {itemID = 32227 };
};

AtlasLoot_ExtraData[222637] = {
	[01] = { itemID = 229194 }; --The Krakmon Wand
	[02] = { itemID = 229193 }; --Massacre Cloak
	[03] = { itemID = 229196 }; --Throat Crushers
	[04] = { itemID = 229192 }; --Seal of the Amani'shi Berserker
	[05] = { itemID = 229195 }; --Staff of Blazing Glory
};

AtlasLoot_ExtraData[229739] = {
	Faction = {"The Scryers", "The Aldor"};
	["The Scryers"] = {
		[01] = { itemID = 228910, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Blade
		[02] = { itemID = 228911, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Knight
		[03] = { itemID = 228912, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Oracle
		[04] = { itemID = 228909, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Orb
		[05] = { itemID = 2228886, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Discipline
		[06] = { itemID = 2228887, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Faith
		[07] = { itemID = 2228888, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vengeance
		[08] = { itemID = 2228889, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Warding
		[09] = { itemID = 228913, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Guardian
		[10] = { itemID = 228914, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Phalanx
		[11] = { itemID = 2228891, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Protection
		[12] = { itemID = 2228890, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vigilance
	};
	["The Aldor"] = {
		[01] = { itemID = 2228910, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Blade
		[02] = { itemID = 2228911, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Knight
		[03] = { itemID = 2228912, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Oracle
		[04] = { itemID = 2228909, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Orb
		[05] = { itemID = 228886, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Discipline
		[06] = { itemID = 228887, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Faith
		[07] = { itemID = 228888, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vengeance
		[08] = { itemID = 228889, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Warding
		[09] = { itemID = 2228913, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Guardian
		[10] = { itemID = 2228914, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Phalanx
		[11] = { itemID = 228891, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Protection
		[12] = { itemID = 228890, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vigilance
	};
};