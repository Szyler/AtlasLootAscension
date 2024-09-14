local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0");
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0");
local WHITE = "|cffFFFFFF"
-- Index
--- Dungeons & BCRaids
---- Keys
---- Auchindoun: Auchenai Crypts
---- Auchindoun: Mana-Tombs
---- Auchindoun: Sethekk Halls
---- Auchindoun: Shadow Labyrinth
---- Black Temple
---- Caverns of Time: Old Hillsbrad Foothills
---- Caverns of Time: The Black Morass
---- Caverns of Time: Hyjal Summit
---- Coilfang Reservoir: The Slave Pens
---- Coilfang Reservoir: The Steamvault
---- Coilfang Reservoir: The Underbog
---- Coilfang Reservoir: Serpentshrine Cavern
---- Gruul's Lair
---- Hellfire Citadel: Hellfire Ramparts
---- Hellfire Citadel: The Blood Furnace
---- Hellfire Citadel: The Shattered Halls
---- Hellfire Citadel: Magtheridon's Lair
---- Karazhan
---- Sunwell Isle: Magister's Terrace
---- Sunwell Isle: Sunwell Plateau
---- Tempest Keep: The Arcatraz
---- Tempest Keep: The Botanica
---- Tempest Keep: The Mechanar
---- Tempest Keep: The Eye
---- Zul'Aman
--- Factions
---- Ashtongue Deathsworn
---- Cenarion Expedition
---- Honor Hold
---- Keepers of Time
---- Kurenai
---- Lower City
---- Netherwing
---- Ogri'la
---- Sha'tari Skyguard
---- Shattered Sun Offensive
---- Sporeggar
---- The Aldor
---- The Consortium
---- The Mag'har
---- The Scale of the Sands
---- The Scryers
---- The Sha'tar
---- The Violet Eye
---- Thrallmar
---- Tranquillien
---- Misc
--- PvP
---- World PvP - Hellfire Peninsula: Hellfire Fortifications
---- World PvP - Nagrand: Halaa
---- World PvP - Terokkar Forest: Bone Wastes
---- World PvP - Zangarmarsh: Twin Spire Ruins
---- Rep-PvP Level 70 - Armor Sets
---- PvP Level 70 - Accessories
---- PvP Level 70 - Non Set Epics
---- Arena - Armor Sets
---- Arena Season 2 - Weapons
---- Arena Season 3 - Weapons
---- Arena Season 4 - Weapons
--- Sets & Collections
---- Dungeon 3 Sets (D3)
---- Tier 4/Tier 5/Tier 6
---- The Burning Crusade Sets
---- Badge of Justice Rewards
---- BoE World Epics
---- World Bosses


-- The scale of the sand rep rings
local scaleOfSandsRings = {
	Name = "Rings";
	[1] = { itemID = 29298, rep = BabbleFaction["Friendly"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Band of the Eternal Champion
	[2] = { itemID = 29299, rep = BabbleFaction["Honored"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Superior Band of the Eternal Champion
	[3] = { itemID = 29300, rep = BabbleFaction["Revered"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Exquisite Band of the Eternal Champion
	[4] = { itemID = 29301, rep = BabbleFaction["Exalted"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Flawless Band of the Eternal Champion
	[6] = { itemID = 29294, rep = BabbleFaction["Friendly"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Band of the Eternal Defender
	[7] = { itemID = 29295, rep = BabbleFaction["Honored"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Superior Band of the Eternal Defender
	[8] = { itemID = 29296, rep = BabbleFaction["Revered"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Exquisite Band of the Eternal Defender
	[9] = { itemID = 29297, rep = BabbleFaction["Exalted"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Flawless Band of the Eternal Defender
	[11] = { itemID = 15037, rep = BabbleFaction["Friendly"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Band of the Eternal Assassin
	[12] = { itemID = 15038, rep = BabbleFaction["Honored"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Superior Band of the Eternal Assassin
	[13] = { itemID = 15039, rep = BabbleFaction["Revered"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Exquisite Band of the Eternal Assassin
	[14] = { itemID = 15040, rep = BabbleFaction["Exalted"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Flawless Band of the Eternal Assassin
	[16] = { itemID = 29302, rep = BabbleFaction["Friendly"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Band of the Eternal Sage
	[17] = { itemID = 29303, rep = BabbleFaction["Honored"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Superior Band of the Eternal Sage
	[18] = { itemID = 29304, rep = BabbleFaction["Revered"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Exquisite Band of the Eternal Sage
	[19] = { itemID = 29305, rep = BabbleFaction["Exalted"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Flawless Band of the Eternal Sage
	[21] = { itemID = 29307, rep = BabbleFaction["Friendly"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Band of the Eternal Restorer
	[22] = { itemID = 29306, rep = BabbleFaction["Honored"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Superior Band of the Eternal Restorer
	[23] = { itemID = 29308, rep = BabbleFaction["Revered"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Exquisite Band of the Eternal Restorer
	[24] = { itemID = 29309, rep = BabbleFaction["Exalted"], [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Flawless Band of the Eternal Restorer
};

------------------------
--- Dungeons & BCRaids ---
------------------------

------------
--- Keys ---
------------

AtlasLoot_Data["BCKeys"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "BCKeys";
	{
		Name = "BCKeys";
		[1] = { itemID = 27991 }; --Shadow Labyrinth Key
		[2] = { itemID = 28395 }; --Shattered Halls Key
		[3] = { itemID = 31084 }; --Key to the Arcatraz
		[5] = { itemID = 30622, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Flamewrought Key
		[6] = { itemID = 30637, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Flamewrought Key
		[7] = { itemID = 30623, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Reservoir Key
		[8] = { itemID = 30633, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Auchenai Key
		[9] = { itemID = 30635, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Key of Time
		[10] = { itemID = 30634, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Warpforged Key
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Raid"], [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic };
		[17] = { itemID = 24490, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Master's Key
		[19] = { icon = "INV_Box_01", name = WHITE..AL["Misc"], [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic };
		[20] = { itemID = 32092, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Eye of Haramad
		[21] = { itemID = 32449, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Essence-Infused Moonstone
	};
};

-----------------------------------
--- Auchindoun: Auchenai Crypts ---
-----------------------------------

AtlasLoot_Data["AuchCrypts"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Auchenai Crypts"];
	DisplayName = BabbleZone["Auchenai Crypts"];
	Type = "BCDungeon";
	Map = "AuchAuchenaiCrypts";
	{
		Name = BabbleBoss["Shirrak the Dead Watcher"];
		[1] = { itemID = 27410 }; --Collar of Command
		[2] = { itemID = 27409 }; --Raven-Heart Headdress
		[3] = { itemID = 27408 }; --Hope Bearer Helm
		[4] = { itemID = 26055 }; --Oculus of the Hidden Eye
		[5] = { itemID = 25964 }; --Shaarde the Lesser
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30587, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Champion's Fire Opal
		[18] = { itemID = 30588, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Potent Fire Opal
		[19] = { itemID = 30586, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Seer's Chrysoprase
		[20] = { itemID = 27866, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Scintillating Headdress of Second Sight
		[22] = { itemID = 27493, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Gloves of the Deadwatcher
		[23] = { itemID = 27865, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bracers of Shirrak
		[24] = { itemID = 27845, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Magma Plume Boots
		[25] = { itemID = 27847, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Fanblade Pauldrons
		[26] = { itemID = 27846, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Claw of the Watcher
	};
	{
		Name = BabbleBoss["Exarch Maladaar"];
		[1] = { itemID = 27411 }; --Slippers of Serenity
		[2] = { itemID = 27415 }; --Darkguard Face Mask
		[3] = { itemID = 27414 }; --Mok'Nathal Beast-Mask
		[4] = { itemID = 27413 }; --Ring of the Exarchs
		[5] = { itemID = 27416 }; --Fetish of the Fallen
		[6] = { itemID = 27412 }; --Ironstaff of Regeneration
		[8] = { itemID = 29354, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Light-Touched Stole of Altruism
		[9] = { itemID = 29257, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Sash of Arcane Visions
		[10] = { itemID = 29244, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wave-Song Girdle
		[11] = { itemID = 27867, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of the Unjust
		[12] = { itemID = 27871, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Maladaar's Blessed Chaplet
		[13] = { itemID = 27869, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Soulpriest's Ring of Resolve
		[14] = { itemID = 27523, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Exarch's Diamond Band
		[15] = { itemID = 27872, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Harvester of Souls
		[16] = { itemID = 33836, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Exarch's Soul Gem
		[17] = { itemID = 30587, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Champion's Fire Opal
		[18] = { itemID = 30588, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Potent Fire Opal
		[19] = { itemID = 30586, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Seer's Chrysoprase
		[20] = { itemID = 427870, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Doomplate Legguards
		[22] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice

	};
	{
		Name = AL["Avatar of the Martyred"];
		[1] = { itemID = 27878 }; --Auchenai Death Shroud
		[2] = { itemID = 28268 }; --Natural Mender's Wraps
		[3] = { itemID = 27876 }; --Will of the Fallen Exarch
		[4] = { itemID = 27937 }; --Sky Breaker
		[5] = { itemID = 27877 }; --Draenic Wildstaff
		[7] = { itemID = 27797 }; --Wastewalker Shoulderpads
	};
};

------------------------------
--- Auchindoun: Mana-Tombs ---
------------------------------

AtlasLoot_Data["AuchManaTombs"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Mana-Tombs"];
	DisplayName = BabbleZone["Mana-Tombs"];
	Type = "BCDungeon";
	Map = "AuchManaTombs";
	{
		Name = BabbleBoss["Pandemonius"];
		[1] = { itemID = 25941 }; --Boots of the Outlander
		[2] = { itemID = 25942 }; --Faith Bearer's Gauntlets
		[3] = { itemID = 25940 }; --Idol of the Claw
		[4] = { itemID = 25943 }; --Creepjacker
		[5] = { itemID = 28166 }; --Shield of the Void
		[6] = { itemID = 25939 }; --Voidfire Wand
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30584, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Enscribed Fire Opal
		[18] = { itemID = 30585, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Glistening Fire Opal
		[19] = { itemID = 30583, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Timeless Chrysoprase
		[21] = { itemID = 27816, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mindrage Pauldrons
		[22] = { itemID = 27818, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Starry Robes of the Crescent
		[23] = { itemID = 27813, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of the Colossus
		[24] = { itemID = 27815, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Totem of the Astral Winds
		[25] = { itemID = 27814, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Twinblade of Mastery
		[26] = { itemID = 27817, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Starbolt Longbow
	};
	{
		Name = BabbleBoss["Tavarok"];
		[1] = { itemID = 25945 }; --Cloak of Revival
		[2] = { itemID = 25946 }; --Nethershade Boots
		[3] = { itemID = 25947 }; --Lightning-Rod Pauldrons
		[4] = { itemID = 25952 }; --Scimitar of the Nexus-Stalkers
		[5] = { itemID = 25944 }; --Shaarde the Greater
		[6] = { itemID = 25950 }; --Staff of Polarities
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30584, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Enscribed Fire Opal
		[18] = { itemID = 30585, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Glistening Fire Opal
		[19] = { itemID = 30583, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Timeless Chrysoprase
		[21] = { itemID = 27824, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Robe of the Great Dark Beyond
		[22] = { itemID = 27821, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Extravagant Boots of Malice
		[23] = { itemID = 27825, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Predatory Gloves
		[24] = { itemID = 27826, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mantle of the Sea Wolf
		[25] = { itemID = 27823, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shard Encrusted Breastplate
		[26] = { itemID = 27822, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Crystal Band of Valor
	};
	{
		Name = BabbleBoss["Nexus-Prince Shaffar"];
		[1] = { itemID = 25957 }; --Ethereal Boots of the Skystrider
		[2] = { itemID = 25955 }; --Mask of the Howling Storm
		[3] = { itemID = 25956 }; --Nexus-Bracers of Vigor
		[4] = { itemID = 25954 }; --Sigil of Shaffar
		[5] = { itemID = 25962 }; --Longstrider's Loop
		[6] = { itemID = 25953 }; --Ethereal Warp-Bow
		[8] = { itemID = 22921 }; --Recipe: Major Frost Protection Potion
		[10] = { itemID = 28490 }; --Shaffar's Wrappings
	};
	{
		Name = BabbleBoss["Nexus-Prince Shaffar"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434 }; --Badge of Justice
		[2] = { itemID = 29240 }; --Bands of Negation
		[3] = { itemID = 30535 }; --Forestwalker Kilt
		[4] = { itemID = 29352 }; --Cobalt Band of Tyrigosa
		[5] = { itemID = 32082 }; --The Fel Barrier
		[7] = { itemID = 27831 }; --Mantle of the Unforgiven
		[8] = { itemID = 27843 }; --Glyph-Lined Sash
		[9] = { itemID = 27827 }; --Lucid Dream Bracers
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
		[1] = { itemID = 29434 }; --Badge of Justice
		[2] = { itemID = 31919 }; --Nexus-Prince's Ring of Balance
		[3] = { itemID = 31920 }; --Shaffar's Band of Brutality
		[4] = { itemID = 31921 }; --Yor's Collapsing Band
		[5] = { itemID = 31922 }; --Ring of Conflict Survival
		[6] = { itemID = 31923 }; --Band of the Crystalline Void
		[7] = { itemID = 31924 }; --Yor's Revenge
		[9] = { itemID = 31554 }; --Windchanneller's Tunic
		[10] = { itemID = 31562 }; --Skystalker's Tunic
		[11] = { itemID = 31570 }; --Mistshroud Tunic
		[12] = { itemID = 31578 }; --Slatesteel Breastplate
		[16] = { itemID = 30584 }; --Enscribed Fire Opal
		[17] = { itemID = 30585 }; --Glistening Fire Opal
		[18] = { itemID = 30583 }; --Timeless Chrysoprase
	};
};

---------------------------------
--- Auchindoun: Sethekk Halls ---
---------------------------------

AtlasLoot_Data["AuchSethekk"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Sethekk Halls"];
	DisplayName = BabbleZone["Sethekk Halls"];
	Type = "BCDungeon";
	Map = "AuchSethekkHalls";
	{
		Name = BabbleBoss["Darkweaver Syth"];
		[1] = { itemID = 27919 }; --Light-Woven Slippers
		[2] = { itemID = 27914 }; --Moonstrider Boots
		[3] = { itemID = 27915 }; --Sky-Hunter Swift Boots
		[4] = { itemID = 27918 }; --Bands of Syth
		[5] = { itemID = 27917 }; --Libram of the Eternal Rest
		[6] = { itemID = 27916 }; --Sethekk Feather-Darts
		[8] = { itemID = 24160 }; --Design: Khorium Inferno Band
		[10] = { itemID = 27633 }; --Terokk's Mask
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30553, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Pristine Fire Opal
		[18] = { itemID = 30554, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Stalwart Fire Opal
		[19] = { itemID = 30552, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Blessed Tanzanite
		[20] = { itemID = 25461, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Book of Forgotten Names
	};
	{
		Name = BabbleBoss["Anzu"] .. " (" .. AL["Heroic"] .. ")";
		[20] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 32768 }; --Reins of the Raven Lord
		[16] = { itemID = 30553 }; --Pristine Fire Opal
		[17] = { itemID = 30554 }; --Stalwart Fire Opal
		[18] = { itemID = 30552 }; --Blessed Tanzanite
		[1] = { itemID = 32769 }; --Belt of the Raven Lord
		[2] = { itemID = 32778 }; --Boots of Righteous Fortitude
		[3] = { itemID = 32779 }; --Band of Frigid Elements
		[4] = { itemID = 32781 }; --Talon of Anzu
		[5] = { itemID = 32780 }; --The Boomstick
	};
	{
		Name = BabbleBoss["Talon King Ikiss"];
		[1] = { itemID = 27948 }; --Trousers of Oblivion
		[2] = { itemID = 27838 }; --Incanter's Trousers
		[3] = { itemID = 27875 }; --Hallowed Trousers
		[4] = { itemID = 27776 }; --Shoulderpads of Assassination
		[5] = { itemID = 27936 }; --Greaves of Desolation
		[7] = { itemID = 27946 }; --Avian Cloak of Feathers
		[8] = { itemID = 27981 }; --Sethekk Oracle Cloak
		[9] = { itemID = 27985 }; --Deathforge Girdle
		[10] = { itemID = 27925 }; --Ravenclaw Band
		[11] = { itemID = 27980 }; --Terokk's Nightmace
		[12] = { itemID = 27986 }; --Crow Wing Reaper
		[14] = { itemID = 27632 }; --Terokk's Quill
		[15] = { itemID = 27991 }; --Shadow Labyrinth Key
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30553, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Pristine Fire Opal
		[18] = { itemID = 30554, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Stalwart Fire Opal
		[19] = { itemID = 30552, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Blessed Tanzanite
		[21] = { itemID = 29249, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bands of the Benevolent
		[22] = { itemID = 29259, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bracers of the Hunt
		[23] = { itemID = 32073, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Spaulders of Dementia
		[24] = { itemID = 29355, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Terokk's Shadowstaff
		[26] = { itemID = 33834, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Headfeathers of Ikiss
	};
};

------------------------------------
--- Auchindoun: Shadow Labyrinth ---
------------------------------------

AtlasLoot_Data["AuchShadowLab"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Shadow Labyrinth"];
	DisplayName = BabbleZone["Shadow Labyrinth"];
	Type = "BCDungeon";
	Map = "AuchShadowLabyrinth";
	{
		Name = BabbleBoss["Ambassador Hellmaw"];
		[1] = { itemID = 27889 }; --Jaedenfire Gloves of Annihilation
		[2] = { itemID = 27888 }; --Dream-Wing Helm
		[3] = { itemID = 27884 }; --Ornate Boots of the Sanctified
		[4] = { itemID = 27886 }; --Idol of the Emerald Queen
		[5] = { itemID = 27887 }; --Platinum Shield of the Valorous
		[6] = { itemID = 27885 }; --Soul-Wand of the Aldor
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30563, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Regal Tanzanite
		[18] = { itemID = 30559, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Etched Fire Opal
		[19] = { itemID = 30560, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Blackheart the Inciter"];
		[1] = { itemID = 27468 }; --Moonglade Handwraps
		[3] = { itemID = 27892 }; --Cloak of the Inciter
		[4] = { itemID = 27893 }; --Ornate Leggings of the Venerated
		[5] = { itemID = 28134 }; --Brooch of Hightened Potential
		[6] = { itemID = 27891 }; --Adamantine Figurine
		[7] = { itemID = 27890 }; --Wand of the Netherwing
		[9] = { itemID = 25728 }; --Pattern: Stylin' Purple Hat
		[11] = { itemID = 30808 }; --Book of Fel Names
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30563, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Regal Tanzanite
		[18] = { itemID = 30559, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Etched Fire Opal
		[19] = { itemID = 30560, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Grandmaster Vorpil"];
		[1] = { itemID = 27775 }; --Hallowed Pauldrons
		[3] = { itemID = 27897 }; --Breastplate of Many Graces
		[4] = { itemID = 27900 }; --Jewel of Charismatic Mystique
		[5] = { itemID = 27901 }; --Blackout Truncheon
		[6] = { itemID = 27898 }; --Wrathfire Hand-Cannon
		[8] = { itemID = 30827 }; --Lexicon Demonica
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30563, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Regal Tanzanite
		[18] = { itemID = 30559, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Etched Fire Opal
		[19] = { itemID = 30560, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Murmur"];
		[1] = { itemID = 24309 };
		[3] = { itemID = 27902 }; --Silent Slippers of Meditation
		[4] = { itemID = 27912 }; --Harness of the Deep Currents
		[5] = { itemID = 27913 }; --Whispering Blade of Slaying
		[6] = { itemID = 27905 }; --Greatsword of Horrid Dreams
		[7] = { itemID = 27903 }; --Sonic Spear
		[8] = { itemID = 27910 }; --Silvermoon Crest Shield
		[10] = { itemID = 27778 }; --Spaulders of Oblivion
		[11] = { itemID = 28232 }; --Robe of Oblivion
		[12] = { itemID = 28230 }; --Hallowed Garments
		[13] = { itemID = 27908 }; --Leggings of Assassination
		[14] = { itemID = 27909 }; --Tidefury Kilt
		[15] = { itemID = 27803 }; --Shoulderguards of the Bold
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30563, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Regal Tanzanite
		[18] = { itemID = 30559, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Etched Fire Opal
		[19] = { itemID = 30560, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Rune Covered Chrysoprase
		[21] = { itemID = 30532, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Kirin Tor Master's Trousers
		[22] = { itemID = 29357, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Master Thief's Gloves
		[23] = { itemID = 29261, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Girdle of Ferocity
		[24] = { itemID = 29353, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shockwave Truncheon
		[26] = { itemID = 31722, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Murmur's Essence
		[27] = { itemID = 33840, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Murmur's Whisper
		Prev = "AuchShadowGrandmaster";

	};
	{
		Name = AL["Trash Mobs"];
		[1] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Mana-Tombs"] };
		[2] = { itemID = 23615 }; --Plans: Swiftsteel Gloves
		[3] = { itemID = 22543 }; --Formula: Enchant Boots - Fortitude
		[5] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Sethekk Halls"] };
		[6] = { itemID = 25731 }; --Pattern: Stylin' Crimson Hat
		[7] = { itemID = 29669 }; --Pattern: Shadow Armor Kit
		[9] = { icon = "INV_Box_01", name = WHITE.. AL["The Saga of Terokk"], "=q5=" .. BabbleZone["Sethekk Halls"] };
		[10] = { itemID = 27634 }; --The Saga of Terokk
		[16] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Auchenai Crypts"] };
		[17] = { itemID = 23605 }; --Plans: Felsteel Gloves
		[18] = { itemID = 22544 }; --Formula: Enchant Boots - Dexterity
		[20] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Shadow Labyrinth"] };
		[21] = { itemID = 23607 }; --Plans: Felsteel Helm
		[23] = { icon = "INV_Box_01", name = WHITE.. AL["First Fragment Guardian"], "=q5=" .. BabbleZone["Shadow Labyrinth"] };
		[24] = { itemID = 24514 }; --First Key Fragment
	};
};




--------------------
--- Black Temple ---
--------------------

AtlasLoot_Data["BlackTemple"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Black Temple"];
	Type = "BCRaid";
	Map = "BlackTemple";
	{
		Name = BabbleBoss["High Warlord Naj'entus"];
		[1] = { itemID = 32239 }; --Slippers of the Seacaller
		[2] = { itemID = 32240 }; --Guise of the Tidal Lurker
		[3] = { itemID = 32377 }; --Mantle of Darkness
		[4] = { itemID = 32241 }; --Helm of Soothing Currents
		[5] = { itemID = 32234 }; --Fists of Mukoa
		[6] = { itemID = 32242 }; --Boots of Oceanic Fury
		[7] = { itemID = 32232 }; --Eternium Shell Bracers
		[8] = { itemID = 32243 }; --Pearl Inlaid Boots
		[9] = { itemID = 32245 }; --Tide-stomper's Greaves
		[16] = { itemID = 32238 }; --Ring of Calming Waves
		[17] = { itemID = 32236 }; --Rising Tide
		[18] = { itemID = 32248 }; --Halberd of Desolation
		[20] = { itemID = 29434 }; --Badge of Justice
		[21] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[22] = { itemID = 98570 }; --Mystic Orb
		[24] = { itemID = 63451, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Supremus"];
		[1] = { itemID = 32256 }; --Waistwrap of Infinity
		[2] = { itemID = 32252 }; --Nether Shadow Tunic
		[3] = { itemID = 32259 }; --Bands of the Coming Storm
		[4] = { itemID = 32251 }; --Wraps of Precise Flight
		[5] = { itemID = 32258 }; --Naturalist's Preserving Cinch
		[6] = { itemID = 32250 }; --Pauldrons of Abyssal Fury
		[8] = { itemID = 32260 }; --Choker of Endless Nightmares
		[9] = { itemID = 32261 }; --Band of the Abyssal Lord
		[10] = { itemID = 32247 }; --Ring of Captured Storms
		[16] = { itemID = 32254 }; --The Brutalizer
		[17] = { itemID = 32237 }; --The Maelstrom's Fury
		[18] = { itemID = 32262 }; --Syphon of the Nathrezim
		[19] = { itemID = 32255 }; --Felstone Bulwark
		[20] = { itemID = 32253 }; --Legionkiller
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[24] = { itemID = 98570 }; --Mystic Orb
		[26] = { itemID = 63510, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Shade of Akama"];
		[1] = { itemID = 32273 }; --Amice of Brilliant Light
		[2] = { itemID = 32270 }; --Focused Mana Bindings
		[3] = { itemID = 32513 }; --Wristbands of Divine Influence
		[4] = { itemID = 32265 }; --Shadow-walker's Cord
		[5] = { itemID = 32264 }; --Shoulders of the Hidden Predator
		[6] = { itemID = 32275 }; --Spiritwalker Gauntlets
		[7] = { itemID = 32276 }; --Flashfire Girdle
		[8] = { itemID = 32279 }; --The Seeker's Wristguards
		[9] = { itemID = 32278 }; --Grips of Silent Justice
		[10] = { itemID = 32268 }; --Myrmidon's Treads
		[16] = { itemID = 32266 }; --Ring of Deceitful Intent
		[17] = { itemID = 32361 }; --Blind-Seers Icon
		[19] = { itemID = 11432 }; --Ashtongue Jewel
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 63425, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Teron Gorefiend"];
		[5] = { itemID = 32271 }; --Kilt of Immortal Nature
		[1] = { itemID = 32323 }; --Shadowmoon Destroyer's Drape
		[2] = { itemID = 32329 }; --Cowl of Benevolence
		[3] = { itemID = 32327 }; --Robe of the Shadow Council
		[4] = { itemID = 32324 }; --Insidious Bands
		[6] = { itemID = 32328 }; --Botanist's Gloves of Growth
		[7] = { itemID = 32510 }; --Softstep Boots of Tracking
		[8] = { itemID = 32280 }; --Gauntlets of Enforcement
		[9] = { itemID = 32512 }; --Girdle of Lordaeron's Fallen
		[11] = { itemID = 32349 }; --Translucent Spellthread Necklace
		[16] = { itemID = 32507 }; --Gorefiend
		[17] = { itemID = 32325 }; --Rifle of the Stoic Guardian
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
		[23] = { itemID = 63443, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Gurtogg Bloodboil"];
		[1] = { itemID = 32337 }; --Shroud of Forgiveness
		[2] = { itemID = 32338 }; --Blood-cursed Shoulderpads
		[3] = { itemID = 32340 }; --Garments of Temperance
		[4] = { itemID = 32339 }; --Belt of Primal Majesty
		[5] = { itemID = 32334 }; --Vest of Mounting Assault
		[6] = { itemID = 32342 }; --Girdle of Mighty Resolve
		[7] = { itemID = 32341 }; --Leggings of Divine Retribution
		[16] = { itemID = 32335 }; --Unstoppable Aggressor's Ring
		[17] = { itemID = 32348 }; --Soul Cleaver	
		[18] = { itemID = 32269 }; --Messenger of Fate
		[19] = { itemID = 32344 }; --Staff of Immaculate Recovery
		[20] = { itemID = 32343 }; --Wand of Prismatic Focus
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[24] = { itemID = 98570 }; --Mystic Orb
		[26] = { itemID = 63521, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = "Reliquary of the Lost";
		[1] = { itemID = 32353 }; --Gloves of Unfailing Faith
		[2] = { itemID = 32351 }; --Elunite Empowered Bracers
		[3] = { itemID = 32347 }; --Grips of Damnation
		[4] = { itemID = 32352 }; --Naturewarden's Treads
		[5] = { itemID = 32517 }; --The Wavemender's Mantle
		[6] = { itemID = 32346 }; --Boneweave Girdle
		[7] = { itemID = 32333 }; --Girdle of Stability
		[8] = { itemID = 32354 }; --Crown of Empowered Fate
		[9] = { itemID = 32345 }; --Dreadboots of the Legion	
		[16] = { itemID = 32362 }; --Pendant of Titans
		[17] = { itemID = 32350 }; --Touch of Inspiration
		[18] = { itemID = 32332 }; --Torch of the Damned
		[20] = { itemID = 29434 }; --Badge of Justice
		[21] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[22] = { itemID = 98570 }; --Mystic Orb
		[24] = { itemID = 63940, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Mother Shahraz"];
		[1] = { itemID = 32367 }; --Leggings of Devastation
		[2] = { itemID = 32263 }; --Praetorian's Legguards
		[3] = { itemID = 32366 }; --Shadowmaster's Boots
		[4] = { itemID = 32365 }; --Heartshatter Breastplate
		[5] = { itemID = 32370 }; --Nadina's Pendant of Purity
		[6] = { itemID = 32369 }; --Blade of Savagery
		[16] = { itemID = 31101, lootTable = {"T6SHOULDER","Token"} }; --Pauldrons of the Forgotten Conqueror
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 63520, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["The Illidari Council"];
		[1] = { itemID = 32331 }; --Cloak of the Illidari Council
		[2] = { itemID = 32519 }; --Belt of Divine Guidance
		[3] = { itemID = 32518 }; --Veil of Turning Leaves
		[4] = { itemID = 32376 }; --Forest Prowler's Helm
		[5] = { itemID = 32373 }; --Helm of the Illidari Shatterer
		[7] = { itemID = 32326 }; --Twisted Blades of Zarak
		[16] = { itemID = 31101, lootTable = {"T6SHOULDER","Token"} }; --Pauldrons of the Forgotten Conqueror
		[17] = { itemID = 31098, lootTable = {"T6LEGS","Token"} }; --Leggings of the Forgotten Conqueror
		[18] = { itemID = 31097, lootTable = {"T6HEAD","Token"} }; --Helm of the Forgotten Conqueror
		[19] = { itemID = 31092, lootTable = {"T6HAND","Token"} }; --Gloves of the Forgotten Conqueror
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 63929, droprate = "1%" }; --Pet Sigil
		[26] = { itemID = 63928, droprate = "1%" }; --Pet Sigil
		[27] = { itemID = 63690, droprate = "1%" }; --Pet Sigil
		[28] = { itemID = 63529, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Illidan Stormrage"];
		[1] = { itemID = 32524 }; --Shroud of the Highborne
		[2] = { itemID = 32525 }; --Cowl of the Illidari High Lord
		[3] = { itemID = 32235 }; --Cursed Vision of Sargeras
		[4] = { itemID = 32521 }; --Faceplate of the Impenetrable
		[5] = { itemID = 32497 }; --Stormrage Signet Ring
		[6] = { itemID = 32483 }; --The Skull of Gul'dan
		[7] = { itemID = 32496 }; --Memento of Tyrande
		[8] = { itemID = 32363 }; --Naaru-Blessed Life Rod
		[9] = { itemID = 32471 }; --Shard of Azzinoth
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
		[22] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 63511, droprate = "1%" }; --Pet Sigil
		[27] = { itemID = 343208 }; --Mount
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 34012 }; --Shroud of the Final Stand
		[2] = { itemID = 32593 }; --Treads of the Den Mother
		[3] = { itemID = 47166 }; --Concubines Attire
		[4] = { itemID = 32608 }; --Pillager's Gauntlets
		[5] = { itemID = 32606 }; --Girdle of the Lightbearer
		[7] = { itemID = 32526 }; --Band of Devastation
		[8] = { itemID = 32528 }; --Blessed Band of Karabor
		[9] = { itemID = 32527 }; --Ring of Ancient Knowledge
		[11] = { itemID = 32330 }; --Totem of Ancestral Guidance
		[12] = { itemID = 32368 }; --Tome of the Lightbringer
		[13] = { itemID = 32257 }; --Idol of the White Stag
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
		[1] = { itemID = 32486 }; --Ashtongue Talisman of Equilibrium
		[2] = { itemID = 32487 }; --Ashtongue Talisman of Swiftness
		[3] = { itemID = 32488 }; --Ashtongue Talisman of Insight
		[4] = { itemID = 32489 }; --Ashtongue Talisman of Zeal
		[5] = { itemID = 32490 }; --Ashtongue Talisman of Acumen
		[6] = { itemID = 32492 }; --Ashtongue Talisman of Lethality
		[7] = { itemID = 32491 }; --Ashtongue Talisman of Vision
		[8] = { itemID = 32493 }; --Ashtongue Talisman of Shadows
		[9] = { itemID = 32485 }; --Ashtongue Talisman of Valor
	};
	{
		Name = "BT Patterns/Plans";
		[1] = { itemID = 32738 };
		[2] = { itemID = 32739 };
		[3] = { itemID = 32736 };
		[4] = { itemID = 32737 };
		[5] = { itemID = 32748 }; --Pattern: Bindings of Lightning Reflexes
		[6] = { itemID = 32744 }; --Pattern: Bracers of Renewed Life
		[7] = { itemID = 32750 }; --Pattern: Living Earth Bindings
		[8] = { itemID = 32751 }; --Pattern: Living Earth Shoulders
		[9] = { itemID = 32749 }; --Pattern: Shoulders of Lightning Reflexes
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
--- Caverns of Time: Old Hillsbrad Foothills ---
------------------------------------------------

AtlasLoot_Data["CoTOldHillsbrad"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["Old Hillsbrad Foothills"];
	DisplayName = BabbleZone["Old Hillsbrad Foothills"];
	Type = "BCDungeon";
	Map = "CoTOldHillsbrad";
	{
		Name = BabbleBoss["Lieutenant Drake"];
		[1] = { itemID = 27423 }; --Cloak of Impulsiveness
		[2] = { itemID = 27418 }; --Stormreaver Shadow-Kilt
		[3] = { itemID = 27417 }; --Ravenwing Pauldrons
		[4] = { itemID = 27420 }; --Uther's Ceremonial Warboots
		[5] = { itemID = 27436 }; --Iron Band of the Unbreakable
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30589, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Dazzling Chrysoprase
		[18] = { itemID = 30591, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Empowered Fire Opal
		[19] = { itemID = 30590, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Enduring Chrysoprase
		[21] = { itemID = 28212, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Aran's Sorcerous Slacks
		[22] = { itemID = 28214, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Grips of the Lunar Eclipse
		[23] = { itemID = 28215, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mok'Nathal Mask of Battle
		[24] = { itemID = 28211, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Lieutenant's Signet of Lordaeron
		[25] = { itemID = 28213, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Lordaeron Medical Guide
		[26] = { itemID = 28210, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bloodskull Destroyer
	};
	{
		Name = BabbleBoss["Captain Skarloc"];
		[1] = { itemID = 27428 }; --Stormfront Gauntlets
		[2] = { itemID = 27430 }; --Scaled Greaves of Patience
		[3] = { itemID = 27427 }; --Durotan's Battle Harness
		[4] = { itemID = 27424 }; --Amani Venom-Axe
		[5] = { itemID = 27426 }; --Northshire Battlemace
		[7] = { itemID = 22927 }; --Recipe: Ironshield Potion
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30589, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Dazzling Chrysoprase
		[18] = { itemID = 30591, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Empowered Fire Opal
		[19] = { itemID = 30590, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Enduring Chrysoprase
		[21] = { itemID = 28218, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Pontiff's Pantaloons of Prophecy
		[22] = { itemID = 28220, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Moon-Crown Antlers
		[23] = { itemID = 28219, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Emerald-Scale Greaves
		[24] = { itemID = 28221, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of the Watchful Heart
		[25] = { itemID = 28217, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Tarren Mill Vitality Locket
		[26] = { itemID = 28216, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Dathrohan's Ceremonial Hammer
	};
	{
		Name = BabbleBoss["Epoch Hunter"];
		[1] = { itemID = 27433 }; --Pauldrons of Sufferance
		[2] = { itemID = 27434 }; --Mantle of Perenolde
		[3] = { itemID = 27440 }; --Diamond Prism of Recurrence
		[4] = { itemID = 27432 }; --Broxigar's Ring of Valor
		[5] = { itemID = 27431 }; --Time-Shifted Dagger
		[7] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[8] = { itemID = 29250, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Cord of Sanctification
		[9] = { itemID = 29246, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Nightfall Wristguards
		[10] = { itemID = 29357, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Master Thief's Gloves
		[11] = { itemID = 30534, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wyrmscale Greaves
		[12] = { itemID = 30536, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Greaves of the Martyr
		[13] = { itemID = 27911, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Epoch's Whispering Cinch
		[14] = { itemID = 28344, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wyrmfury Pauldrons
		[15] = { itemID = 28233, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Necklace of Resplendent Hope
		[16] = { itemID = 27904, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Resounding Ring of Glory
		[17] = { itemID = 28227, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Sparking Arcanite Ring
		[18] = { itemID = 28223, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Arcanist's Stone
		[19] = { itemID = 28226, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Timeslicer
		[20] = { itemID = 28222, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Reaver of the Infinites
		[21] = { itemID = 30589, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Dazzling Chrysoprase
		[22] = { itemID = 30591, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Empowered Fire Opal
		[23] = { itemID = 30590, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Enduring Chrysoprase
		[24] = { itemID = 24173, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Design: Circlet of Arcane Might
		[25] = { itemID = 28191, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mana-Etched Vestments
		[26] = { itemID = 28224, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wastewalker Helm
		[27] = { itemID = 28401, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Hauberk of Desolation
		[28] = { itemID = 28225, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Doomplate Warhelm
		[30] = { itemID = 33847, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Epoch Hunter's Head
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[2] = { itemID = 25729 }; --Pattern: Stylin' Adventure Hat
		[4] = { icon = "INV_Box_01", name = WHITE.. AL["Don Carlos"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[5] = { itemID = 38506 }; --Don Carlos' Famous Hat
		[6] = { itemID = 38329 }; --Don Carlos' Hat
		[7] = { itemID = 38276 }; --Haliscan Brimmed Hat
		[9] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Black Morass"] };
		[10] = { itemID = 25730 }; --Pattern: Stylin' Jungle Hat
		[16] = { icon = "INV_Box_01", name = WHITE.. AL["Thomas Yance"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[17] = { itemID = 25725 };
		[19] = { icon = "INV_Box_01", name = WHITE.. AL["Aged Dalaran Wizard"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[20] = { itemID = 22539 };
	};
};





-----------------------------------------
--- Caverns of Time: The Black Morass ---
-----------------------------------------

AtlasLoot_Data["CoTBlackMorass"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["The Black Morass"];
	DisplayName = BabbleZone["The Black Morass"];
	Type = "BCDungeon";
	Map = "CoTBlackMorass";
	{
		Name = BabbleBoss["Chrono Lord Deja"];
		[1] = { itemID = 27988 }; --Burnoose of Shifting Ages
		[2] = { itemID = 27994 }; --Mantle of Three Terrors
		[3] = { itemID = 27995 }; --Sun-Gilded Shouldercaps
		[4] = { itemID = 27993 }; --Mask of Inner Fire
		[5] = { itemID = 27996 }; --Ring of Spiritual Precision
		[6] = { itemID = 27987 }; --Melmorta's Twilight Longbow
		[8] = { itemID = 29675 }; --Pattern: Arcane Armor Kit
		[16] = { itemID = 29434 }; --Badge of Justice
		[17] = { itemID = 30558 }; --Glimmering Fire Opal
		[18] = { itemID = 30556 }; --Glinting Fire Opal
		[19] = { itemID = 30555 }; --Glowing Tanzanite
	};
	{
		Name = BabbleBoss["Temporus"];
		[1] = { itemID = 28185 }; --Khadgar's Kilt of Abjuration
		[2] = { itemID = 28186 }; --Laughing Skull Battle-Harness
		[3] = { itemID = 28034 }; --Hourglass of the Unraveller
		[4] = { itemID = 28187 }; --Star-Heart Lamp
		[5] = { itemID = 28184 }; --Millennium Blade
		[6] = { itemID = 28033 }; --Epoch-Mender
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30558, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Glimmering Fire Opal
		[18] = { itemID = 30556, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Glinting Fire Opal
		[19] = { itemID = 30555, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Glowing Tanzanite
	};
	{
		Name = BabbleBoss["Aeonus"];
		[1] = { itemID = 28193 }; --Mana-Etched Crown
		[2] = { itemID = 27509 }; --Handgrips of Assassination
		[3] = { itemID = 27873 }; --Moonglade Pants
		[4] = { itemID = 28192 }; --Helm of Desolation
		[5] = { itemID = 27977 }; --Legplates of the Bold
		[6] = { itemID = 27839 }; --Legplates of the Righteous
		[8] = { itemID = 28206 }; --Cowl of the Guiltless
		[9] = { itemID = 28194 }; --Primal Surge Bracers
		[10] = { itemID = 28207 }; --Pauldrons of the Crimson Flight
		[11] = { itemID = 28190 }; --Scarab of the Infinite Cycle
		[12] = { itemID = 28189 }; --Latro's Shifting Sword
		[13] = { itemID = 28188 }; --Bloodfire Greatstaff
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30558, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Glimmering Fire Opal
		[18] = { itemID = 30556, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Glinting Fire Opal
		[19] = { itemID = 30555, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Glowing Tanzanite
		[21] = { itemID = 30531, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Breeches of the Occultist
		[22] = { itemID = 29247, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Girdle of the Deathdealer
		[23] = { itemID = 29253, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Girdle of Valorous Deeds
		[24] = { itemID = 29356, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Quantum Blade
		[26] = { itemID = 33858, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Aeonus's Hourglass
	};
};

-------------------------------------
--- Caverns of Time: Hyjal Summit ---
-------------------------------------

AtlasLoot_Data["CoTHyjal"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["Hyjal Summit"];
	DisplayName = BabbleZone["Hyjal Summit"];
	Type = "BCRaid";
	Map = "CoTHyjal";
	{
		Name = BabbleBoss["Rage Winterchill"];
		NpcID = 17767;
		[1] = { itemID = 30871 }; --Bracers of Martyrdom
		[2] = { itemID = 30870 }; --Cuffs of Devastation
		[3] = { itemID = 30863 }; --Deadly Cuffs
		[4] = { itemID = 30868 }; --Rejuvenating Bracers
		[5] = { itemID = 30864 }; --Bracers of the Pathfinder
		[6] = { itemID = 30869 }; --Howling Wind Bracers
		[7] = { itemID = 30873 }; --Stillwater Boots
		[8] = { itemID = 30866 }; --Blood-stained Pauldrons
		[9] = { itemID = 30862 }; --Blessed Adamantite Bracers
		[10] = { itemID = 30861 }; --Furious Shackles
		[12] = { itemID = 32459 }; --Time-Phased Phylactery
		[16] = { itemID = 30865 }; --Tracker's Blade
		[17] = { itemID = 30872 }; --Chronicle of Dark Secrets
		[18] = { itemID = 30891 }; --Black Featherlight Boots
		[19] = { itemID = 30914 }; --Belt of the Crescent Moon
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 61196, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Anetheron"];
		NpcID = 17808;
		[1] = { itemID = 30884 }; --Hatefury Mantle
		[2] = { itemID = 30888 }; --Anetheron's Noose
		[3] = { itemID = 30885 }; --Archbishop's Slippers
		[4] = { itemID = 30879 }; --Don Alejandro's Money Belt
		[5] = { itemID = 30886 }; --Enchanted Leather Sandals
		[6] = { itemID = 30887 }; --Golden Links of Restoration
		[7] = { itemID = 30880 }; --Quickstrider Moccasins
		[8] = { itemID = 30878 }; --Glimmering Steel Mantle
		[16] = { itemID = 30874 }; --The Unbreakable Will
		[17] = { itemID = 30881 }; --Blade of Infamy
		[18] = { itemID = 30883 }; --Pillar of Ferocity
		[19] = { itemID = 30882 }; --Bastion of Light
		[20] = { itemID = 30916 }; --Leggings of Channeled Elements
		[21] = { itemID = 30919 }; --Valestalker Girdle
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[25] = { itemID = 98570 }; --Mystic Orb
		[27] = { itemID = 61287, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Kaz'rogal"];
		NpcID = 17888;
		[1] = { itemID = 30889 }; --Kaz\'rogal\'s Hardened Heart"
		[2] = { itemID = 30893 }; --Sun-touched Chain Leggings"
		[3] = { itemID = 30894 }; --Blue Suede Shoes"
		[4] = { itemID = 30895 }; --Angelista\'s Sash"
		[5] = { itemID = 30898 }; --Shady Dealer\'s Pantaloons"
		[6] = { itemID = 30900 }; --Bow-stitched Leggings"
		[7] = { itemID = 30915 }; --Belt of Seething Fury"
		[8] = { itemID = 30918 }; --Hammer of Atonement"
		[16] = { itemID = 31092, lootTable = {"T6HAND","Token"} };
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
	};
	{
		Name = BabbleBoss["Azgalor"];
		NpcID = 17842;
		[1] = { itemID = 30892 }; --Beast-tamer\'s Shoulders"
		[2] = { itemID = 30896 }; --Glory of the Defender"
		[3] = { itemID = 30897 }; --Girdle of Hope"
		[4] = { itemID = 30899 }; --Don Rodrigo\'s Poncho"
		[5] = { itemID = 30901 }; --Boundless Agony"
		[6] = { itemID = 30917 }; --Razorfury Mantle"
		[16] = { itemID = 31098, lootTable = {"T6LEGS","Token"} }; --Leggings of the Forgotten Conqueror
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 61289, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Archimonde"];
		NpcID = 17968;
		[1] = { itemID = 30913 }; --Robes of Rhonin
		[2] = { itemID = 30912 }; --Leggings of Eternity
		[3] = { itemID = 30905 }; --Midnight Chestguard
		[4] = { itemID = 30907 }; --Mail of Fevered Pursuit
		[5] = { itemID = 30904 }; --Savior's Grasp
		[6] = { itemID = 30903 }; --Legguards of Endless Rage
		[7] = { itemID = 30911 }; --Scepter of Purification
		[9] = { itemID = 30910 }; --Tempest of Chaos
		[10] = { itemID = 30902 }; --Cataclysm's Edge
		[11] = { itemID = 30908 }; --Apostle of Argus
		[12] = { itemID = 30909 }; --Antonidas's Aegis of Rapt Concentration
		[13] = { itemID = 30906 }; --Bristleblitz Striker
		[16] = { itemID = 31097, lootTable = {"T6HEAD","Token"} }; --Helm of the Forgotten Conqueror
		[18] = { itemID = 450009, desc = AL["Quest Requirements"], contentsPreview = {{450009},{450010},{34334}}}, -- The String of Time
		[20] = { itemID = 29434 }; --Badge of Justice
		[21] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[22] = { itemID = 98570 }; --Mystic Orb
		[24] = { itemID = 61557, droprate = "1%" }; --Pet Sigil
		[26] = { itemID = 1001620 };
	};
	{
		Name = AL["Chromius"];
		NpcID = 92179;
		[1] = { itemID = 15828 }; --Final Countdown Bands
		[2] = { itemID = 15831 }; --Girdle of Falling Sand
		[3] = { itemID = 15898 }; --Hourglass Casing
		[4] = { itemID = 15835 }; --Time Reaver's Gown
		[5] = { itemID = 15840 }; --Timewaker's Treads
		[6] = { itemID = 15896 }; --Cloak of the Final Hour
		[7] = { itemID = 15834 }; --Aetherflux Shroud
		[9] = { itemID = 15839 }; --Charm of the Chronomender
		[10] = { itemID = 15899 }; --Amulet of Futures Past
		[11] = { itemID = 15838 }; --Flickering Amulet
		[12] = { itemID = 15836 }; --Pendant of the Evil Twin
		[13] = { itemID = 15830 }; --Infinite Scale Talisman
		[16] = { itemID = 18764 }; --Echo of Eons
		[17] = { itemID = 15041 }; --Key of Time
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
	};
	{
		Name = AL["Trash Mobs"].." - Items";
		[1] = { itemID = 32590 }; --Nethervoid Cloak
		[2] = { itemID = 34010 }; --Pepe's Shroud of Pacification
		[3] = { itemID = 32609 }; --Boots of the Divine Light
		[4] = { itemID = 32592 }; --Chestguard of Relentless Storms
		[5] = { itemID = 32591 }; --Choker of Serrated Blades
		[6] = { itemID = 32589 }; --Hellfire-Encased Pendant
		[7] = { itemID = 34009 }; --Hammer of Judgement
		[8] = { itemID = 32946 }; --Claw of Molten Fury
		[9] = { itemID = 32945 }; --Fist of Molten Fury
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
		[1] = { itemID = 15315 }; --Design: Purified Shadowsong Amethyst
		[2] = { itemID = 32274 }; --Design: Bold Crimson Spinel
		[3] = { itemID = 32277 }; --Design: Delicate Crimson Spinel
		[4] = { itemID = 32281 }; --Design: Teardrop Crimson Spinel
		[5] = { itemID = 32282 }; --Design: Runed Crimson Spinel
		[6] = { itemID = 32283 }; --Design: Bright Crimson Spinel
		[7] = { itemID = 32284 }; --Design: Subtle Crimson Spinel
		[8] = { itemID = 32285 }; --Design: Flashing Crimson Spinel
		[9] = { itemID = 32286 }; --Design: Solid Empyrean Sapphire
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
		[1] = { itemID = 32308 }; --Design: Wicked Pyrestone
		[2] = { itemID = 32309 }; --Design: Enduring Seaspray Emerald
		[3] = { itemID = 32310 }; --Design: Radiant Seaspray Emerald
		[4] = { itemID = 32311 }; --Design: Dazzling Seaspray Emerald
		[5] = { itemID = 32312 }; --Design: Jagged Seaspray Emerald
		[6] = { itemID = 35762 }; --Design: Reckless Pyrestone
		[7] = { itemID = 35763 }; --Design: Quick Lionseye
		[8] = { itemID = 35764 }; --Design: Steady Seaspray Emerald
		[9] = { itemID = 35765 }; --Design: Forceful Seaspray Emerald
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
--- Coilfang Reservoir: The Slave Pens ---
------------------------------------------

AtlasLoot_Data["CFRSlavePens"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Slave Pens"];
	DisplayName = BabbleZone["The Slave Pens"];
	Type = "BCDungeon";
	Map = "CFRTheSlavePens";
	{
		Name = BabbleBoss["Mennu the Betrayer"];
		[1] = { itemID = 24359 }; --Princely Reign Leggings
		[2] = { itemID = 24357 }; --Vest of Living Lightning
		[3] = { itemID = 24360 }; --Tracker's Belt
		[4] = { itemID = 24356 }; --Wastewalker Shiv
		[5] = { itemID = 24361 }; --Spellfire Longsword
		[6] = { itemID = 29674 }; --Pattern: Nature Armor Kit
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30604, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Resplendent Fire Opal
		[18] = { itemID = 30605, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Vivid Chrysoprase
		[19] = { itemID = 30603, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Royal Tanzanite
		[20] = { itemID = 27542, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Cord of Belief
		[21] = { itemID = 27545, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mennu's Scaled Leggings
		[22] = { itemID = 27541, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Archery Belt of the Broken
		[23] = { itemID = 27546, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Traitor's Noose
		[25] = { itemID = 27544, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Totem of Spontaneous Regrowth
		[26] = { itemID = 27543, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Starlight Dagger
		[28] = { itemID = 29674, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Pattern: Nature Armor Kit

	};
	{
		Name = BabbleBoss["Rokmar the Crackler"];
		[1] = { itemID = 24379 }; --Bogstrok Scale Cloak
		[2] = { itemID = 24376 }; --Runed Fungalcap
		[3] = { itemID = 24378 }; --Coilfang Hammer of Renewal
		[4] = { itemID = 24380 }; --Calming Spore Reed
		[5] = { itemID = 24381 }; --Coilfang Needler
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30604, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Resplendent Fire Opal
		[18] = { itemID = 30605, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Vivid Chrysoprase
		[19] = { itemID = 30603, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Royal Tanzanite
		[21] = { itemID = 27550, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Ironscale War Cloak
		[22] = { itemID = 27547, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Coldwhisper Cord
		[23] = { itemID = 28124, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Liar's Cord
		[24] = { itemID = 27549, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wavefury Boots
		[25] = { itemID = 27548, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Girdle of Many Blessings
		[26] = { itemID = 27551, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Skeletal Necklace of Battlerage
	};
	{
		Name = BabbleBoss["Quagmirran"];
		[1] = { itemID = 24362 }; --Spore-Soaked Vaneer
		[2] = { itemID = 24365 }; --Deft Handguards
		[3] = { itemID = 24366 }; --Scorpid-Sting Mantle
		[4] = { itemID = 24363 }; --Unscarred Breastplate
		[5] = { itemID = 24364 }; --Azureplate Greaves
		[7] = { itemID = 27796, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mana-Etched Spaulders
		[8] = { itemID = 27713, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Pauldrons of Desolation
		[9] = { itemID = 27742, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mage-Fury Girdle
		[10] = { itemID = 27712, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shackles of Quagmirran
		[11] = { itemID = 27800, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Earthsoul Britches
		[12] = { itemID = 28337, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Breastplate of Righteous Fury
		[13] = { itemID = 27672, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Girdle of the Immovable
		[14] = { itemID = 27740, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Band of Ursol
		[15] = { itemID = 27683, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Quagmirran's Eye
		[16] = { itemID = 27714, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Swamplight Lantern
		[17] = { itemID = 27673, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Phosphorescent Blade
		[18] = { itemID = 27741, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bleeding Hollow Warhammer
		[19] = { itemID = 33821, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Heart of Quagmirran
		[20] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[21] = { itemID = 30604, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Resplendent Fire Opal
		[22] = { itemID = 30605, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Vivid Chrysoprase
		[23] = { itemID = 30603, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Royal Tanzanite
		[24] = { itemID = 29242, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of Blasphemy
		[25] = { itemID = 30538, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Midnight Legguards
		[26] = { itemID = 32078, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Pauldrons of Wild Magic
		[27] = { itemID = 29349, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Adamantine Chain of the Unbroken
	};
};

------------------------------------------
--- Coilfang Reservoir: The Steamvault ---
------------------------------------------

AtlasLoot_Data["CFRSteamvault"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Steamvault"];
	DisplayName = BabbleZone["The Steamvault"];
	Type = "BCDungeon";
	Map = "CFRTheSteamvault";
	{
		Name = BabbleBoss["Hydromancer Thespia"];
		[1] = { itemID = 27508 }; --Incanter's Gloves
		[3] = { itemID = 27789 }; --Cloak of Whispering Shells
		[4] = { itemID = 27787 }; --Chestguard of No Remorse
		[5] = { itemID = 27783 }; --Moonrage Girdle
		[6] = { itemID = 27784 }; --Scintillating Coral Band
		[8] = { itemID = 29673 }; --Pattern: Frost Armor Kit
		[10] = { itemID = 30828 }; --Vial of Underworld Loam
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30550, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Sundered Chrysoprase
		[18] = { itemID = 30551, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Infused Fire Opal
		[19] = { itemID = 30549, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shifting Tanzanite
	};
	{
		Name = BabbleBoss["Mekgineer Steamrigger"];
		[1] = { itemID = 27793 }; --Earth Mantle Handwraps
		[2] = { itemID = 27790 }; --Mask of Penance
		[3] = { itemID = 27792 }; --Steam-Hinge Chain of Valor
		[4] = { itemID = 27791 }; --Serpentcrest Life-Staff
		[5] = { itemID = 27794 }; --Recoilless Rocket Ripper X-54
		[7] = { itemID = 23887 }; --Schematic: Rocket Boots Xtreme
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30550, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Sundered Chrysoprase
		[18] = { itemID = 30551, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Infused Fire Opal
		[19] = { itemID = 30549, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shifting Tanzanite
	};
	{
		Name = BabbleBoss["Warlord Kalithresh"];
		[1] = { itemID = 24313 }; --Pattern: Battlecast Hood
		[3] = { itemID = 27738 }; --Incanter's Pauldrons
		[4] = { itemID = 27737 }; --Moonglade Shoulders
		[5] = { itemID = 27801 }; --Beast Lord Mantle
		[6] = { itemID = 27510 }; --Tidefury Gauntlets
		[7] = { itemID = 27874 }; --Beast Lord Leggings
		[8] = { itemID = 28203 }; --Breastplate of the Righteous
		[9] = { itemID = 27475 }; --Gauntlets of the Bold
		[11] = { itemID = 27804 }; --Devilshark Cape
		[12] = { itemID = 27799 }; --Vermillion Robes of the Dominant
		[13] = { itemID = 27795 }; --Sash of Serpentra
		[14] = { itemID = 27806 }; --Fathomheart Gauntlets
		[15] = { itemID = 27805 }; --Ring of the Silver Hand
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30550, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Sundered Chrysoprase
		[18] = { itemID = 30551, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Infused Fire Opal
		[19] = { itemID = 30549, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shifting Tanzanite
		[20] = { itemID = 30543, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Pontifex Kilt
		[21] = { itemID = 29243, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wave-Fury Vambraces
		[22] = { itemID = 29463, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Amber Bands of the Aggressor
		[23] = { itemID = 29351, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wrathtide Longbow
		[24] = { itemID = 31721, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Kalithresh's Trident
		[26] = { itemID = 33827, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Warlord's Treatise
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 24159 }; --Design: Khorium Band of Frost
		[3] = { itemID = 22533 }; --Formula: Enchant Bracer - Fortitude
		[5] = { itemID = 24367 }; --Orders from Lady Vashj
		[6] = { itemID = 24368 }; --Coilfang Armaments
		[16] = { icon = "INV_Box_01", name = WHITE.. AL["Second Fragment Guardian"], "=q5=" .. BabbleZone["The Steamvault"] };
		[17] = { itemID = 24487 }; --Second Key Fragment
	};
};

----------------------------------------
--- Coilfang Reservoir: The Underbog ---
----------------------------------------

AtlasLoot_Data["CFRUnderbog"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Underbog"];
	DisplayName = BabbleZone["The Underbog"];
	Type = "BCDungeon";
	Map = "CFRTheUnderbog";
	{
		Name = BabbleBoss["Hungarfen"];
		[1] = { itemID = 24450 }; --Manaspark Gloves
		[2] = { itemID = 24452 }; --Starlight Gauntlets
		[3] = { itemID = 24451 }; --Lykul Bloodbands
		[4] = { itemID = 24413 }; --Totem of the Thunderhead
		[5] = { itemID = 27631 }; --Needle Shrike
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30606, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Lambent Chrysoprase
		[18] = { itemID = 30607, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Splendid Fire Opal
		[19] = { itemID = 30608, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Radiant Chrysoprase
		[20] = { itemID = 27746, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Arcanium Signet Bands
		[21] = { itemID = 27745, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Hungarhide Gauntlets
		[22] = { itemID = 27743, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Girdle of Living Flame
		[23] = { itemID = 27748, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Cassock of the Loyal
		[24] = { itemID = 27744, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Idol of Ursoc
		[25] = { itemID = 27747, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boggspine Knuckles
	};
	{
		Name = BabbleBoss["Ghaz'an"];
		[1] = { itemID = 24459 }; --Cloak of Healing Rays
		[2] = { itemID = 24458 }; --Studded Girdle of Virtue
		[3] = { itemID = 24460 }; --Talisman of Tenacity
		[4] = { itemID = 24462 }; --Luminous Pearls of Insight
		[5] = { itemID = 24461 }; --Hatebringer
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30606, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Lambent Chrysoprase
		[18] = { itemID = 30607, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Splendid Fire Opal
		[19] = { itemID = 30608, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Radiant Chrysoprase
		[21] = { itemID = 27760, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Dunewind Sash
		[22] = { itemID = 27759, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Headdress of the Tides
		[23] = { itemID = 27755, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Girdle of Gallantry
		[24] = { itemID = 27758, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Hydra-fang Necklace
		[25] = { itemID = 27761, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Ring of the Shadow Deeps
		[26] = { itemID = 27757, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Greatstaff of the Leviathan
	};
	{
		Name = BabbleBoss["Swamplord Musel'ek"];
		[1] = { itemID = 24454 }; --Cloak of Enduring Swiftness
		[2] = { itemID = 24455 }; --Tunic of the Nightwatcher
		[3] = { itemID = 24457 }; --Truth Bearer Shoulderguards
		[4] = { itemID = 24456 }; --Greaves of the Iron Guardian
		[5] = { itemID = 24453 }; --Zangartooth Shortblade
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30606, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Lambent Chrysoprase
		[18] = { itemID = 30607, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Splendid Fire Opal
		[19] = { itemID = 30608, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Radiant Chrysoprase
		[21] = { itemID = 27764, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Hands of the Sun
		[22] = { itemID = 27763, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Crown of the Forest Lord
		[23] = { itemID = 27765, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Armwraps of Disdain
		[24] = { itemID = 27766, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Swampstone Necklace
		[25] = { itemID = 27762, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Weathered Band of the Swamplord
		[26] = { itemID = 27767, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bogreaver
	};
	{
		Name = BabbleBoss["The Black Stalker"];
		[1] = { itemID = 24481 }; --Robes of the Augurer
		[2] = { itemID = 24466 }; --Skulldugger's Leggings
		[3] = { itemID = 24465 }; --Shamblehide Chestguard
		[4] = { itemID = 24463 }; --Pauldrons of Brute Force
		[5] = { itemID = 24464 }; --The Stalker's Fangs
		[7] = { itemID = 24248 }; --Brain of the Black Stalker
	};
	{ --only heroic
		Name = BabbleBoss["The Black Stalker"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434 }; --Badge of Justice
		[2] = { itemID = 29265 }; --Barkchip Boots
		[3] = { itemID = 30541 }; --Stormsong Kilt
		[4] = { itemID = 32081 }; --Eye of the Stalker
		[5] = { itemID = 29350 }; --The Black Stalk
		[7] = { itemID = 27781 }; --Demonfang Ritual Helm
		[8] = { itemID = 27768 }; --Oracle Belt of Timeless Mystery
		[9] = { itemID = 27938 }; --Savage Mask of the Lynx Lord
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
--- Coilfang Reservoir: Serpentshrine Cavern ---
------------------------------------------------

AtlasLoot_Data["CFRSerpentshrine"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["Serpentshrine Cavern"];
	DisplayName = BabbleZone["Serpentshrine Cavern"];
	Type = "BCRaid";
	Map = "CFRSerpentshrineCavern";
	{
		Name = BabbleBoss["Hydross the Unstable"];
		NpcID = 21216;
		[1] = { itemID = 30056 }; --Robe of Hateful Echoes
		[2] = { itemID = 32516 }; --Wraps of Purification
		[3] = { itemID = 30050 }; --Boots of the Shifting Nightmare
		[4] = { itemID = 30055 }; --Shoulderpads of the Stranger
		[5] = { itemID = 30047 }; --Blackfathom Warbands
		[6] = { itemID = 30054 }; --Ranger-General's Chestguard
		[7] = { itemID = 30048 }; --Brighthelm of Justice
		[8] = { itemID = 30053 }; --Pauldrons of the Wardancer
		[9] = { itemID = 600878, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Elemental Lodestone: Hydross the Unstable
		[16] = { itemID = 30052 }; --Ring of Lethality
		[17] = { itemID = 33055 }; --Band of Vile Aggression
		[18] = { itemID = 30664 }; --Living Root of the Wildheart
		[19] = { itemID = 30629 }; --Scarab of Displacement
		[20] = { itemID = 30049 }; --Fathomstone
		[21] = { itemID = 30051 }; --Idol of the Crescent Goddess
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[25] = { itemID = 98570 }; --Mystic Orb
		[27] = { itemID = 816254, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Cloak - Crushing Wave
		[29] = { itemID = 63338, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["The Lurker Below"];
		[1] = { itemID = 30064 }; --Cord of Screaming Terrors
		[2] = { itemID = 30067 }; --Velvet Boots of the Guardian
		[3] = { itemID = 30062 }; --Grove-Bands of Remulos
		[4] = { itemID = 30060 }; --Boots of Effortless Striking
		[5] = { itemID = 30066 }; --Tempest-Strider Boots
		[6] = { itemID = 30065 }; --Glowing Breastplate of Truth
		[7] = { itemID = 30057 }; --Bracers of Eradication
		[9] = { itemID = 29434 }; --Badge of Justice
		[16] = { itemID = 30059 }; --Choker of Animalistic Fury
		[17] = { itemID = 30061 }; --Ancestral Ring of Conquest
		[18] = { itemID = 33054 }; --The Seal of Danzalar
		[19] = { itemID = 30665 }; --Earring of Soulful Meditation
		[20] = { itemID = 30063 }; --Libram of Absolute Truth
		[21] = { itemID = 30058 }; --Mallet of the Tides
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[25] = { itemID = 98570 }; --Mystic Orb
	};
	{
		Name = BabbleBoss["Leotheras the Blind"];
		NpcID = 21215;
		[1] = { itemID = 30092 }; --Orca-Hide Boots
		[2] = { itemID = 30097 }; --Coral-Barbed Shoulderpads
		[3] = { itemID = 30091 }; --True-Aim Stalker Bands
		[4] = { itemID = 30096 }; --Girdle of the Invulnerable
		[5] = { itemID = 30627 }; --Tsunami Talisman
		[6] = { itemID = 30095 }; --Fang of the Leviathan
		[16] = { itemID = 30240, lootTable = {"T5HAND","Token"} }; --Gloves of the Vanquished Defender
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 63326, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Fathom-Lord Karathress"];
		NpcID = 21214;
		[1] = { itemID = 30100 }; --Soul-Strider Boots
		[2] = { itemID = 30101 }; --Bloodsea Brigand's Vest
		[3] = { itemID = 30099 }; --Frayed Tether of the Drowned
		[4] = { itemID = 30663 }; --Fathom-Brooch of the Tidewalker
		[5] = { itemID = 30626 }; --Sextant of Unstable Currents
		[6] = { itemID = 30090 }; --World Breaker
		[16] = { itemID = 30246, lootTable = {"T5LEGS","Token"} }; --Leggings of the Vanquished Defender
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 63325, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Morogrim Tidewalker"];
		NpcID = 21213;
		[1] = { itemID = 30098 }; --Razor-Scale Battlecloak
		[2] = { itemID = 30079 }; --Illidari Shoulderpads
		[3] = { itemID = 30075 }; --Gnarled Chestpiece of the Ancients
		[4] = { itemID = 30085 }; --Mantle of the Tireless Tracker
		[5] = { itemID = 30068 }; --Girdle of the Tidal Call
		[6] = { itemID = 30084 }; --Pauldrons of the Argent Sentinel
		[7] = { itemID = 30081 }; --Warboots of Obliteration
		[16] = { itemID = 30008 }; --Pendant of the Lost Ages
		[17] = { itemID = 30083 }; --Ring of Sundered Souls
		[18] = { itemID = 33058 }; --Band of the Vigilant
		[19] = { itemID = 30720 }; --Serpent-Coil Braid
		[20] = { itemID = 30082 }; --Talon of Azshara
		[21] = { itemID = 30080 }; --Luminescent Rod of the Naaru
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[25] = { itemID = 98570 }; --Mystic Orb
	};
	{
		Name = BabbleBoss["Lady Vashj"];
		NpcID = 21212;
		[1] = { itemID = 30107 }; --Vestments of the Sea-Witch
		[2] = { itemID = 30111 }; --Runetotem's Mantle
		[3] = { itemID = 30106 }; --Belt of One-Hundred Deaths
		[4] = { itemID = 30104 }; --Cobra-Lash Boots
		[5] = { itemID = 30102 }; --Krakken-Heart Breastplate
		[6] = { itemID = 30112 }; --Glorious Gauntlets of Crestfall
		[7] = { itemID = 30109 }; --Ring of Endless Coils
		[8] = { itemID = 30110 }; --Coral Band of the Revived
		[9] = { itemID = 30621 }; --Prism of Inner Calm
		[10] = { itemID = 30103 }; --Fang of Vashj
		[11] = { itemID = 30108 }; --Lightfathom Scepter
		[12] = { itemID = 30105 }; --Serpent Spine Longbow
		[16] = { itemID = 30243, lootTable = {"T5HEAD","Token"} }; --Helm of the Vanquished Defender
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 29906 }; --Vashj's Vial Remnant
		[23] = { itemID = 450000 }; --Intact Vial of Lady Vashj
		[25] = { itemID = 63320, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 30027 }; --Boots of Courage Unending
		[2] = { itemID = 30022 }; --Pendant of the Perilous
		[3] = { itemID = 30620 }; --Spyglass of the Hidden Fleet
		[4] = { itemID = 30023 }; --Totem of the Maelstrom
		[5] = { itemID = 30021 }; --Wildfury Greatstaff
		[6] = { itemID = 30025 }; --Serpentshrine Shuriken
		[7] = { itemID = 44831 }; --Mmrgrg glm Nuubs
		[9] = { itemID = 30324 }; --Plans: Red Havoc Boots
		[10] = { itemID = 30322 }; --Plans: Red Belt of Battle
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
--- Gruul's Lair ---
--------------------

AtlasLoot_Data["GruulsLair"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Gruul's Lair"];
	Type = "BCRaid";
	Map = "GruulsLair";
	{
		Name = BabbleBoss["High King Maulgar"];
		NpcID = 18831;
		[1] = { itemID = 28797 }; --Brute Cloak of the Ogre-Magi
		[2] = { itemID = 28799 }; --Belt of Divine Inspiration
		[3] = { itemID = 28796 }; --Malefic Mask of the Shadows
		[4] = { itemID = 28801 }; --Maulgar's Warhelm
		[5] = { itemID = 28795 }; --Bladespire Warbands
		[6] = { itemID = 28800 }; --Hammer of the Naaru
		[16] = { itemID = 29764, lootTable = {"T4SHOULDER","Token"} }; --Pauldrons of the Fallen Defender
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 816252, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Undaunted Might
		[24] = { itemID = 62311, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Gruul the Dragonkiller"];
		NpcID = 19044;
		[1] = { itemID = 28804 }; --Collar of Cho'gall
		[2] = { itemID = 28803 }; --Cowl of Nature's Breath
		[3] = { itemID = 28828 }; --Gronn-Stitched Girdle
		[4] = { itemID = 28827 }; --Gauntlets of the Dragonslayer
		[5] = { itemID = 28810 }; --Windshear Boots
		[6] = { itemID = 28824 }; --Gauntlets of Martial Perfection
		[7] = { itemID = 28822 }; --Teeth of Gruul
		[8] = { itemID = 28823 }; --Eye of Gruul
		[9] = { itemID = 28830 }; --Dragonspine Trophy
		[11] = { itemID = 31750 }; --Earthen Signet
		[16] = { itemID = 29767, lootTable = {"T4LEGS","Token"} }; --Leggings of the Fallen Defender
		[18] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 28802 }; --Bloodmaw Magus-Blade
		[21] = { itemID = 28794 }; --Axe of the Gronn Lords
		[22] = { itemID = 28825 }; --Aldori Legacy Defender
		[23] = { itemID = 28826 }; --Shuriken of Negation
	};
};



-------------------------------------------
--- Hellfire Citadel: Hellfire Ramparts ---
-------------------------------------------

AtlasLoot_Data["HCRamparts"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["Hellfire Ramparts"];
	DisplayName = BabbleZone["Hellfire Ramparts"];
	Type = "BCDungeon";
	Map = "HCHellfireRamparts";
	{
		Name = BabbleBoss["Watchkeeper Gargolmar"];
		NpcID = 17306;
		[1] = { itemID = 24024 }; --Pauldrons of Arcane Rage
		[2] = { itemID = 24023 }; --Bracers of Finesse
		[3] = { itemID = 24022 }; --Scale Leggings of the Skirmisher
		[4] = { itemID = 24021 }; --Light-Touched Breastplate
		[5] = { itemID = 24020 }; --Shadowrend Longblade
		[6] = { itemID = 23881 }; --Gargolmar's Hand
		[8] = { itemID = 60946, droprate = "1%" }; --Pet Sigil
		[17] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[18] = { itemID = 30593, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Iridescent Fire Opal
		[19] = { itemID = 30594, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Effulgent Chrysoprase
		[20] = { itemID = 30592, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Steady Chrysoprase
		[22] = { itemID = 27448, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Cloak of the Everliving
		[23] = { itemID = 27451, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of the Darkwalker
		[24] = { itemID = 27450, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wild Stalker Boots
		[25] = { itemID = 27447, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bracers of Just Rewards
		[26] = { itemID = 27449, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Blood Knight Defender

	};
	{
		Name = BabbleBoss["Omor the Unscarred"];
		NpcID = 17308;
		[1] = { itemID = 24090 }; --Bloodstained Ravager Gauntlets
		[2] = { itemID = 24091 }; --Tenacious Defender
		[3] = { itemID = 24073 }; --Garotte-String Necklace
		[4] = { itemID = 24096 }; --Heartblood Prayer Beads
		[5] = { itemID = 24094 }; --Heart Fire Warhammer
		[6] = { itemID = 24069 }; --Crystalfire Staff
		[7] = { itemID = 23886 }; --Omor's Hoof
		[9] = { itemID = 60947, droprate = "1%" }; --Pet Sigil
		[11] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[12] = { itemID = 30593, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Iridescent Fire Opal
		[13] = { itemID = 30594, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Effulgent Chrysoprase
		[14] = { itemID = 30592, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Steady Chrysoprase
		[16] = { itemID = 27465, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mana-Etched Gloves
		[17] = { itemID = 27466, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Headdress of Alacrity
		[18] = { itemID = 27462, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Crimson Bracers of Gloom
		[19] = { itemID = 27467, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Silent-Strider Kneeboots
		[20] = { itemID = 27478, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Girdle of the Blasted Reaches
		[21] = { itemID = 27539, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Justice Bearer's Pauldrons
		[22] = { itemID = 27906, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Crimsonforge Breastplate
		[23] = { itemID = 27464, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Omor's Unyielding Will
		[24] = { itemID = 27895, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Band of Many Prisms
		[25] = { itemID = 27477, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Faol's Signet of Cleansing
		[26] = { itemID = 27463, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Terror Flame Dagger
		[27] = { itemID = 27476, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Truncheon of Five Hells	
	};
	{
		Name = BabbleBoss["Vazruden"];
		NpcID = 17537;
		[1] = { icon = "INV_Box_01", name = WHITE.. AL["Reinforced Fel Iron Chest"] };
		[2] = { itemID = 24150 }; --Mok'Nathal Wildercloak
		[3] = { itemID = 24083 }; --Lifegiver Britches
		[4] = { itemID = 24063 }; --Shifting Sash of Midnight
		[5] = { itemID = 24046 }; --Kilt of Rolling Thunders
		[6] = { itemID = 24064 }; --Ironsole Clompers
		[7] = { itemID = 24045 }; --Band of Renewal
		[8] = { itemID = 24154 }; --Witching Band
		[9] = { itemID = 24151 }; --Mok'Nathal Clan Ring
		[10] = { itemID = 24044 }; --Hellreaver
		[11] = { itemID = 24155 }; --Ursol's Claw
		[16] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["Vazruden"] };
		[17] = { itemID = 23892 }; --Ominous Letter
		[19] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["Nazan"] };
		[20] = { itemID = 23901 }; --Nazan's Head
		[22] = { itemID = 61025, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Vazruden"] .. " (" .. AL["Heroic"] .. ")";
		NpcID = 17537;
		[1] = { itemID = 29264 }; --Tree-Mender's Belt
		[2] = { itemID = 32077 }; --Wrath Infused Gauntlets
		[3] = { itemID = 29238 }; --Lion's Heart Girdle
		[4] = { itemID = 29346 }; --Feltooth Eviscerator
		[6] = { itemID = 27452 }; --Light Scribe Bands
		[7] = { itemID = 27461 }; --Chestguard of the Prowler
		[8] = { itemID = 27456 }; --Raiments of Nature's Breath
		[9] = { itemID = 27454 }; --Volcanic Pauldrons
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
		[24] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["Vazruden"] };
		[25] = { itemID = 23892 }; --Ominous Letter
		[27] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["Nazan"] };
		[28] = { itemID = 23901 }; --Nazan's Head
		[30] = { itemID = 61025, droprate = "1%" }; --Pet Sigil
	};
};




-------------------------------------------
--- Hellfire Citadel: The Blood Furnace ---
-------------------------------------------

AtlasLoot_Data["HCFurnace"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["The Blood Furnace"];
	DisplayName = BabbleZone["The Blood Furnace"];
	Type = "BCDungeon";
	Map = "HCBloodFurnace";
	{
		Name = BabbleBoss["The Maker"];
		[1] = { itemID = 24388 }; --Girdle of the Gale Storm
		[2] = { itemID = 24387 }; --Ironblade Gauntlets
		[3] = { itemID = 24385 }; --Pendant of Battle-Lust
		[4] = { itemID = 24386 }; --Libram of Saints Departed
		[5] = { itemID = 24384 }; --Diamond-Core Sledgemace
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30601, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Beaming Fire Opal
		[18] = { itemID = 30600, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Fluorescent Tanzanite
		[19] = { itemID = 30602, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Jagged Chrysoprase
		[21] = { itemID = 27485, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Embroidered Cape of Mysteries
		[22] = { itemID = 27488, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mage-Collar of the Firestorm
		[23] = { itemID = 27483, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Moon-Touched Bands
		[24] = { itemID = 27487, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bloodlord Legplates
		[25] = { itemID = 27484, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Libram of Avengement
	};
	{
		Name = BabbleBoss["Broggok"];
		[1] = { itemID = 24392 }; --Arcing Bracers
		[2] = { itemID = 24393 }; --Bloody Surgeon's Mitts
		[3] = { itemID = 24391 }; --Kilt of the Night Strider
		[4] = { itemID = 24390 }; --Auslese's Light Channeler
		[5] = { itemID = 24389 }; --Legion Blunderbuss
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30601, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Beaming Fire Opal
		[18] = { itemID = 30600, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Fluorescent Tanzanite
		[19] = { itemID = 30602, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Jagged Chrysoprase
		[21] = { itemID = 27848, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Embroidered Spellpyre Boots
		[22] = { itemID = 27492, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Moonchild Leggings
		[24] = { itemID = 27489, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Virtue Bearer's Vambraces
		[25] = { itemID = 27491, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Signet of Repose
		[26] = { itemID = 27490, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Firebrand Battleaxe
	};
	{
		Name = BabbleBoss["Keli'dan the Breaker"];
		[1] = { itemID = 24397 }; --Raiments of Divine Authority
		[2] = { itemID = 24395 }; --Mindfire Waistband
		[3] = { itemID = 24398 }; --Mantle of the Dusk-Dweller
		[4] = { itemID = 24396 }; --Vest of Vengeance
		[5] = { itemID = 24394 }; --Warsong Howling Axe
		[6] = { itemID = 28264, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wastewalker Tunic
		[7] = { itemID = 27497, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Doomplate Gauntlets
		[8] = { itemID = 27506, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Robe of Effervescent Light
		[9] = { itemID = 27514, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Leggings of the Unrepentant
		[10] = { itemID = 27522, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --World's End Bracers
		[11] = { itemID = 27494, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Emerald Eye Bracer
		[12] = { itemID = 27505, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Ruby Helm of the Just
		[13] = { itemID = 27788, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bloodsworn Warboots
		[14] = { itemID = 27495, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Soldier's Dog Tags
		[15] = { itemID = 28121, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Icon of Unyielding Courage
		[16] = { itemID = 27512, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Willbreaker
		[17] = { itemID = 27507, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Adamantine Repeater
		[18] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[19] = { itemID = 30601, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Beaming Fire Opal
		[20] = { itemID = 30600, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Fluorescent Tanzanite
		[21] = { itemID = 30602, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Jagged Chrysoprase
		[22] = { itemID = 32080, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mantle of Shadowy Embrace
		[23] = { itemID = 29245, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Wave-Crest Striders
		[24] = { itemID = 29239, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Eaglecrest Warboots
		[25] = { itemID = 29347, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Talisman of the Breaker
		[27] = { itemID = 33814, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Keli'dan's Feathered Stave

	};
};

---------------------------------------------
--- Hellfire Citadel: The Shattered Halls ---
---------------------------------------------

AtlasLoot_Data["HCShatteredHalls"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["The Shattered Halls"];
	DisplayName = BabbleZone["The Shattered Halls"];
	Type = "BCDungeon";
	Map = "HCTheShatteredHalls";
	{
		Name = BabbleBoss["Grand Warlock Nethekurse"];
		[1] = { itemID = 24312 };
		[3] = { itemID = 27519 }; --Cloak of Malice
		[4] = { itemID = 27517 }; --Bands of Nethekurse
		[5] = { itemID = 27521 }; --Telaari Hunting Girdle
		[6] = { itemID = 27520 }; --Greathelm of the Unbreakable
		[7] = { itemID = 27518 }; --Ivory Idol of the Moongoddess
		[9] = { itemID = 23735 }; --Grand Warlock's Amulet
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 24312, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic };
		[18] = { itemID = 30548, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Polished Chrysoprase
		[19] = { itemID = 30547, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Luminous Fire Opal
		[20] = { itemID = 30546, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Sovereign Tanzanite
		[22] = { itemID = 25462, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Tome of Dusk
	};
	{
		Name = BabbleBoss["Blood Guard Porung"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434 }; --Badge of Justice
		[2] = { itemID = 30548 }; --Polished Chrysoprase
		[3] = { itemID = 30547 }; --Luminous Fire Opal
		[4] = { itemID = 30546 }; --Sovereign Tanzanite
		[6] = { itemID = 30709 }; --Pantaloons of Flaming Wrath
		[7] = { itemID = 30707 }; --Nimble-foot Treads
		[8] = { itemID = 30708 }; --Belt of Flowing Thought
		[9] = { itemID = 30705 }; --Spaulders of Slaughter
		[10] = { itemID = 30710 }; --Blood Guard's Necklace of Ferocity
	};
	{
		Name = BabbleBoss["Warbringer O'mrogg"];
		[1] = { itemID = 27802 }; --Tidefury Shoulderguards
		[3] = { itemID = 27525 }; --Jeweled Boots of Sanctification
		[4] = { itemID = 27868 }; --Runesong Dagger
		[5] = { itemID = 27524 }; --Firemaul of Destruction
		[6] = { itemID = 27526 }; --Skyfire Hawk-Bow
		[8] = { itemID = 30829 }; --Tear of the Earthmother
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30548, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Polished Chrysoprase
		[18] = { itemID = 30547, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Luminous Fire Opal
		[19] = { itemID = 30546, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Sovereign Tanzanite
	};
	{
		Name = BabbleBoss["Warchief Kargath Bladefist"];
		[1] = { itemID = 27536 }; --Hallowed Handwraps
		[2] = { itemID = 27537 }; --Gloves of Oblivion
		[3] = { itemID = 27531 }; --Wastewalker Gloves
		[4] = { itemID = 27474 }; --Beast Lord Handguards
		[5] = { itemID = 27528 }; --Gauntlets of Desolation
		[6] = { itemID = 27535 }; --Gauntlets of the Righteous
		[8] = { itemID = 27527 }; --Greaves of the Shatterer
		[9] = { itemID = 27529 }; --Figurine of the Colossus
		[10] = { itemID = 27534 }; --Hortus' Seal of Brilliance
		[11] = { itemID = 27533 }; --Demonblood Eviscerator
		[12] = { itemID = 27538 }; --Lightsworn Hammer
		[13] = { itemID = 27540 }; --Nexus Torch
		[15] = { itemID = 23723 }; --Warchief Kargath's Fist
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30548, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Polished Chrysoprase
		[18] = { itemID = 30547, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Luminous Fire Opal
		[19] = { itemID = 30546, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Sovereign Tanzanite
		[21] = { itemID = 29255, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bands of Rarefied Magic
		[22] = { itemID = 29263, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Forestheart Bracers
		[23] = { itemID = 29254, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of the Righteous Path
		[24] = { itemID = 29348, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Bladefist
		[26] = { itemID = 33815, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bladefist's Seal
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 22554 }; --Formula: Enchant 2H Weapon - Savagery
		[3] = { icon = "INV_Box_01", name = WHITE.. AL["Shattered Hand Executioner"] };
		[4] = { itemID = 31716 }; --Unused Axe of the Executioner
	};
};
--------------------------------------------
--- Hellfire Citadel: Magtheridon's Lair ---
--------------------------------------------

AtlasLoot_Data["HCMagtheridon"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["Magtheridon's Lair"];
	DisplayName = BabbleZone["Magtheridon's Lair"];
	Type = "BCRaid";
	Map = "HCMagtheridonsLair";
	{
		Name = BabbleBoss["Magtheridon"];
		NpcID = 17257;
		[1] = { itemID = 28777 }; --Cloak of the Pit Stalker
		[2] = { itemID = 28780 }; --Soul-Eater's Handwraps
		[3] = { itemID = 28776 }; --Liar's Tongue Gloves
		[4] = { itemID = 28778 }; --Terror Pit Girdle
		[5] = { itemID = 28775 }; --Thundering Greathelm
		[6] = { itemID = 28779 }; --Girdle of the Endless Pit
		[7] = { itemID = 28789 }; --Eye of Magtheridon
		[8] = { itemID = 28781 }; --Karaborian Talisman
		[9] = { itemID = 28774 }; --Glaive of the Pit
		[10] = { itemID = 28782 }; --Crystalheart Pulse-Staff
		[11] = { itemID = 29458 }; --Aegis of the Vindicator
		[12] = { itemID = 28783 }; --Eredar Wand of Obliteration
		[14] = { itemID = 428775, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Ascended }; --Bor -o G'urth, the Hand of Death
		[15] = { itemID = 428776, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Ascended }; --Lebed -o G'urth, the Finger of Death
		[16] = { itemID = 29753, lootTable = {"T4CHEST","Token"} }; --Chestguard of the Fallen Defender
		[17] = { itemID = 34845 }; --Pit Lord's Satchel
		[18] = { itemID = 34846 }; --Black Sack of Gems
		[20] = { itemID = 29434 }; --Badge of Justice
		[21] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[22] = { itemID = 98570 }; --Mystic Orb
		[24] = { itemID = 32385 }; --Magtheridon's Head
		[25] = { itemID = 28791 }; --Ring of the Recalcitrant
		[26] = { itemID = 28790 }; --Naaru Lightwarden's Band
		[27] = { itemID = 28793 }; --Band of Crimson Fury
		[28] = { itemID = 28792 }; --A'dal's Signet of Defense
		[30] = { itemID = 60945, droprate = "1%" }; --Pet Sigil
	};
};
----------------
--- Karazhan ---
----------------

AtlasLoot_Data["Karazhan"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Karazhan";
	Type = "BCRaid";
	Map = "Karazhan";
	Loadfirst = 3;
	{
		Name = "Charred Bone Fragment (" .. AL["Quest Item"] .. ")";
		[1] = { itemID = 24152, icon = "INV_Misc_Bone_10" }; --Charred Bone Fragment
	};
	{
		Name = "Servant's Quarter Animal Bosses";
		[1] = { icon = "Ability_Hunter_Pet_Spider", name = WHITE.. BabbleBoss["Hyakiss the Lurker"], "=q5=" .. AL["Spider"] };
		[2] = { itemID = 30675 }; --Lurker's Cord
		[3] = { itemID = 30676 }; --Lurker's Grasp
		[4] = { itemID = 30677 }; --Lurker's Belt
		[5] = { itemID = 30678 }; --Lurker's Girdle
		[7] = { icon = "Ability_Hunter_Pet_Hyena", name = WHITE.. BabbleBoss["Rokad the Ravager"], "=q5=" .. AL["Darkhound"] };
		[8] = { itemID = 30684 }; --Ravager's Cuffs
		[9] = { itemID = 30685 }; --Ravager's Wrist-Wraps
		[10] = { itemID = 30686 }; --Ravager's Bands
		[11] = { itemID = 30687 }; --Ravager's Bracers
		[16] = { icon = "Ability_Hunter_Pet_Bat", name = WHITE.. BabbleBoss["Shadikith the Glider"], "=q5=" .. AL["Bat"] };
		[17] = { itemID = 30680 }; --Glider's Foot-Wraps
		[18] = { itemID = 30681 }; --Glider's Boots
		[19] = { itemID = 30682 }; --Glider's Sabatons
		[20] = { itemID = 30683 }; --Glider's Greaves
	};
	{
		Name = BabbleBoss["Attumen the Huntsman"];
		[1] = { itemID = 28477 }; --Harbinger Bands
		[2] = { itemID = 28507 }; --Handwraps of Flowing Thought
		[3] = { itemID = 28508 }; --Gloves of Saintly Blessings
		[4] = { itemID = 28453 }; --Bracers of the White Stag
		[5] = { itemID = 28506 }; --Gloves of Dexterous Manipulation
		[6] = { itemID = 28503 }; --Whirlwind Bracers
		[7] = { itemID = 28454 }; --Stalker's War Bands
		[8] = { itemID = 28502 }; --Vambraces of Courage
		[9] = { itemID = 28505 }; --Gauntlets of Renewed Hope
		[16] = { itemID = 28509 }; --Worgen Claw Necklace
		[17] = { itemID = 28510 }; --Spectral Band of Innervation
		[18] = { itemID = 28504 }; --Steelhawk Crossbow
		[19] = { itemID = 30480 }; --Fiery Warhorse's Reins
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[24] = { itemID = 23809 }; --Schematic: Stabilized Eternium Scope
		[26] = { itemID = 60198, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Moroes"];
		NpcID = 15687;
		[1] = { itemID = 28529 }; --Royal Cloak of Arathi Kings
		[2] = { itemID = 28570 }; --Shadow-Cloak of Dalaran
		[3] = { itemID = 28565 }; --Nethershard Girdle
		[4] = { itemID = 28545 }; --Edgewalker Longboots
		[5] = { itemID = 28567 }; --Belt of Gale Force
		[6] = { itemID = 28566 }; --Crimson Girdle of the Indomitable
		[7] = { itemID = 28569 }; --Boots of Valiance
		[16] = { itemID = 28530 }; --Brooch of Unquenchable Fury
		[17] = { itemID = 28528 }; --Moroes' Lucky Pocket Watch
		[18] = { itemID = 28525 }; --Signet of Unshakable Faith
		[19] = { itemID = 28568 }; --Idol of the Avian Heart
		[20] = { itemID = 28524 }; --Emerald Ripper
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[25] = { itemID = 22559, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Mongoose
		[27] = { itemID = 60166, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = "Keanna's Log (" .. AL["Quest Item"] .. ")";
		[1] = { itemID = 24492 }; --Keanna's Log
	};
	{
		Name = BabbleBoss["Maiden of Virtue"];
		NpcID = 16457;
		[1] = { itemID = 28511 }; --Bands of Indwelling
		[2] = { itemID = 28515 }; --Bands of Nefarious Deeds
		[3] = { itemID = 28517 }; --Boots of Foretelling
		[4] = { itemID = 28514 }; --Bracers of Maliciousness
		[5] = { itemID = 28521 }; --Mitts of the Treemender
		[6] = { itemID = 28520 }; --Gloves of Centering
		[7] = { itemID = 28519 }; --Gloves of Quickening
		[8] = { itemID = 28512 }; --Bracers of Justice
		[9] = { itemID = 28518 }; --Iron Gauntlets of the Maiden
		[16] = { itemID = 28516 }; --Barbed Choker of Discipline
		[17] = { itemID = 28523 }; --Totem of Healing Rains
		[18] = { itemID = 28522 }; --Shard of the Virtuous
		[20] = { itemID = 229739 }; --Tome of Untold Secrets
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[25] = { itemID = 816253, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Faith
	};
	{
		Name = "Opera Event";
		[1] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["The Crone"], "=q5=" .. AL["Wizard of Oz"] };
		[2] = { itemID = 28586 }; --Wicked Witch's Hat
		[3] = { itemID = 28585 }; --Ruby Slippers
		[4] = { itemID = 28587 }; --Legacy
		[5] = { itemID = 28588 }; --Blue Diamond Witchwand
		[7] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["Romulo & Julianne"], "=q5=" .. AL["Romulo & Julianne"] };
		[8] = { itemID = 28578 }; --Masquerade Gown
		[9] = { itemID = 28579 }; --Romulo's Poison Vial
		[10] = { itemID = 28572 }; --Blade of the Unrequited
		[11] = { itemID = 28573 }; --Despair
		[16] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["The Big Bad Wolf"], "=q5=" .. AL["Red Riding Hood"] };
		[17] = { itemID = 28582 }; --Red Riding Hood's Cloak
		[18] = { itemID = 28583 }; --Big Bad Wolf's Head
		[19] = { itemID = 28584 }; --Big Bad Wolf's Paw
		[20] = { itemID = 28581 }; --Wolfslayer Sniper Rifle
		[22] = { icon = "INV_Box_01", name = WHITE.. AL["Shared Drops"] };
		[30] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 28594 }; --Trial-FireTrousers
		[25] = { itemID = 28591 }; --Earthsoul Leggings
		[26] = { itemID = 28589 }; --Beastmaw Pauldrons
		[27] = { itemID = 28593 }; --Eternium Greathelm
		[28] = { itemID = 28590 }; --Ribbon of Sacrifice
		[23] = { itemID = 28592 }; --Libram of Souls Redeemed
	};
	{
		Name = BabbleBoss["Nightbane"];
		NpcID = 17225;
		[1] = { itemID = 28602 }; --Robe of the Elder Scribes
		[2] = { itemID = 28600 }; --Stonebough Jerkin
		[3] = { itemID = 28601 }; --Chestguard of the Conniver
		[4] = { itemID = 28599 }; --Scaled Breastplate of Carnage
		[5] = { itemID = 28610 }; --Ferocious Swift-Kickers
		[6] = { itemID = 28597 }; --Panzar'Thar Breastplate
		[7] = { itemID = 28608 }; --Ironstriders of Urgency
		[9] = { itemID = 31751 }; --Blazing Signet
		[10] = { itemID = 24139 }; --Faint Arcane Essence
		[16] = { itemID = 28609 }; --Emberspur Talisman
		[17] = { itemID = 28603 }; --Talisman of Nightbane
		[18] = { itemID = 28604 }; --Nightstaff of the Everliving
		[19] = { itemID = 28611 }; --Dragonheart Flameshield
		[20] = { itemID = 28606 }; --Shield of Impenetrable Darkness
		[22] = { itemID = 229739 }; --Tome of Untold Secrets
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
	};
	{
		Name = BabbleBoss["The Curator"];
		NpcID = 15691;
		[1] = { itemID = 28612 }; --Pauldrons of the Solace-Giver
		[2] = { itemID = 28647 }; --Forest Wind Shoulderpads
		[3] = { itemID = 28631 }; --Dragon-Quake Shoulderguards
		[4] = { itemID = 28621 }; --Wrynn Dynasty Greaves
		[5] = { itemID = 28649 }; --Garona's Signet Ring
		[6] = { itemID = 28633 }; --Staff of Infinite Mysteries
		[16] = { itemID = 29758, lootTable = {"T4HAND","Token"} }; --Gloves of the Fallen Defender
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
		[22] = { itemID = 60170 }; --Sigil of The Curator
	};
	{
		Name = BabbleBoss["Terestian Illhoof"];
		NpcID = 15688;
		[1] = { itemID = 28660 }; --Gilded Thorium Cloak
		[2] = { itemID = 28653 }; --Shadowvine Cloak of Infusion
		[3] = { itemID = 28652 }; --Cincture of Will
		[4] = { itemID = 28654 }; --Malefic Girdle
		[5] = { itemID = 28655 }; --Cord of Nature's Sustenance
		[6] = { itemID = 28656 }; --Girdle of the Prowler
		[7] = { itemID = 28662 }; --Breastplate of the Lightbinder
		[16] = { itemID = 28661 }; --Mender's Heart-Ring
		[17] = { itemID = 28785 }; --The Lightning Capacitor
		[18] = { itemID = 28657 }; --Fool's Bane
		[19] = { itemID = 28658 }; --Terestian's Stranglestaff
		[20] = { itemID = 28659 }; --Xavian Stiletto
		[22] = { itemID = 229739 }; --Tome of Untold Secrets
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[27] = { itemID = 22561, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Soulfrost
		[29] = { itemID = 60167 }; --Sigil of Terestain Illhoof
	};
	{
		Name = BabbleBoss["Shade of Aran"];
		NpcID = 16524;
		[1] = { itemID = 28672 }; --Drape of the Dark Reavers
		[2] = { itemID = 28726 }; --Mantle of the Mind Flayer
		[3] = { itemID = 28670 }; --Boots of the Infernal Coven
		[4] = { itemID = 28663 }; --Boots of the Incorrupt
		[5] = { itemID = 28669 }; --Rapscallion Boots
		[6] = { itemID = 28671 }; --Steelspine Faceguard
		[7] = { itemID = 28666 }; --Pauldrons of the Justice-Seeker
		[9] = { itemID = 23933 }; --Medivh's Journal
		[16] = { itemID = 28674 }; --Saberclaw Talisman
		[17] = { itemID = 28675 }; --Shermanar Great-Ring
		[18] = { itemID = 28727 }; --Pendant of the Violet Eye
		[19] = { itemID = 28728 }; --Aran's Soothing Sapphire
		[20] = { itemID = 28673 }; --Tirisfal Wand of Ascendancy
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[24] = { itemID = 98570 }; --Mystic Orb
		[26] = { itemID = 22560, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Sunfire
		[28] = { itemID = 60372, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Netherspite"];
		NpcID = 15689;
		[1] = { itemID = 28744 }; --Uni-Mind Headdress
		[2] = { itemID = 28742 }; --Pantaloons of Repentence
		[3] = { itemID = 28732 }; --Cowl of Defiance
		[4] = { itemID = 28741 }; --Skulker's Greaves
		[5] = { itemID = 28735 }; --Earthblood Chestguard
		[6] = { itemID = 28740 }; --Rip-Flayer Leggings
		[7] = { itemID = 28743 }; --Mantle of Abrahmis
		[8] = { itemID = 28733 }; --Girdle of Truth
		[16] = { itemID = 28731 }; --Shining Chain of the Afterworld
		[17] = { itemID = 28730 }; --Mithril Band of the Unscarred
		[18] = { itemID = 28734 }; --Jewel of Infinite Possibilities
		[19] = { itemID = 28729 }; --Spiteblade
		[21] = { itemID = 229739 }; --Tome of Untold Secrets
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
	};
	{
		Name = BabbleBoss["Chess Event"];
		[1] = { itemID = 28756 }; --Headdress of the High Potentate
		[2] = { itemID = 28755 }; --Bladed Shoulderpads of the Merciless
		[3] = { itemID = 28750 }; --Girdle of Treachery
		[4] = { itemID = 28752 }; --Forestlord Striders
		[5] = { itemID = 28751 }; --Heart-Flame Leggings
		[6] = { itemID = 28746 }; --Fiend Slayer Boots
		[7] = { itemID = 28748 }; --Legplates of the Innocent
		[8] = { itemID = 28747 }; --Battlescar Boots
		[16] = { itemID = 28745 }; --Mithril Chain of Heroism
		[17] = { itemID = 28753 }; --Ring of Recurrence
		[18] = { itemID = 28749 }; --King's Defender
		[19] = { itemID = 28754 }; --Triptych Shield of the Ancients
		[21] = { itemID = 29434 }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Prince Malchezaar"];
		NpcID = 15690;
		[1] = { itemID = 28765 }; --Stainless Cloak of the Pure Hearted
		[2] = { itemID = 28766 }; --Ruby Drape of the Mysticant
		[3] = { itemID = 28764 }; --Farstrider Wildercloak
		[4] = { itemID = 28762 }; --Adornment of Stolen Souls
		[5] = { itemID = 28763 }; --Jade Ring of the Everliving
		[6] = { itemID = 28757 }; --Ring of a Thousand Marks
		[8] = { itemID = 28770 }; --Nathrezim Mindblade
		[9] = { itemID = 28768 }; --Malchazeen
		[10] = { itemID = 28767 }; --The Decapitator
		[11] = { itemID = 28773 }; --Gorehowl
		[12] = { itemID = 28771 }; --Light's Justice
		[13] = { itemID = 28772 }; --Sunfury Bow of the Phoenix
		[16] = { itemID = 29761, lootTable = {"T4HEAD","Token"} }; --Helm of the Fallen Defender
		[18] = { itemID = 229739 }; --Tome of Untold Secrets
		[20] = { itemID = 29434 }; --Badge of Justice
		[21] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[23] = { itemID = 60169, droprate = "1%" }; --Pet Sigil
		[25] = { itemID = 499438, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Smoldering Emberwyrm
	};
	{ --Trash Mobs
		Name = AL["Trash Mobs"];
		[1] = { itemID = 30642 }; --Drape of the Righteous
		[2] = { itemID = 30668 }; --Grasp of the Dead
		[3] = { itemID = 30673 }; --Inferno Waist Cord
		[4] = { itemID = 30644 }; --Grips of the Deftness
		[5] = { itemID = 30674 }; --Zierhut's Lost Treads
		[6] = { itemID = 30643 }; --Belt of the Tracker
		[7] = { itemID = 30641 }; --Boots of Elusion
		[9] = { itemID = 23857 }; --Legacy of the Mountain King
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
--- Sunwell Isle: Magister's Terrace ---
----------------------------------------

AtlasLoot_Data["MagistersTerrace"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Sunwell Isle"] .. ": " .. BabbleZone["Magisters' Terrace"];
	DisplayName = BabbleZone["Magisters' Terrace"];
	Type = "BCDungeon";
	Map = "MagistersTerrace";
	{
		Name = BabbleBoss["Selin Fireheart"];
		[1] = { itemID = 34702 }; --Cloak of Swift Mending
		[2] = { itemID = 34697 }; --Bindings of Raging Fire
		[3] = { itemID = 34701 }; --Leggings of the Betrayed
		[4] = { itemID = 34698 }; --Bracers of the Forest Stalker
		[5] = { itemID = 34700 }; --Gauntlets of Divine Blessings
		[6] = { itemID = 34699 }; --Sun-forged Cleaver
		[7] = { itemID = 35275 }; --Orb of the Sin'dorei
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 34602, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Eversong Cuffs
		[18] = { itemID = 34601, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shoulderplates of Everlasting Pain
		[19] = { itemID = 34604, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Jaded Crystal Dagger
		[20] = { itemID = 34603, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Distracting Blades
	};
	{
		Name = BabbleBoss["Vexallus"];
		[1] = { itemID = 34708 }; --Cloak of the Coming Night
		[2] = { itemID = 34705 }; --Bracers of Divine Infusion
		[3] = { itemID = 34707 }; --Boots of Resuscitation
		[4] = { itemID = 34704 }; --Band of Arcane Alacrity
		[5] = { itemID = 34706 }; --Band of Determination
		[6] = { itemID = 34703 }; --Latro's Dancing Blade
		[8] = { itemID = 435275 }; --Orb of the Sin'dorei
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 34607, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Fel-tinged Mantle
		[18] = { itemID = 34605, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Breastplate of Fierce Survival
		[19] = { itemID = 34606, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Edge of Oppression
		[20] = { itemID = 34608, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Rod of the Blazing Light
	};
	{
		Name = BabbleBoss["Priestess Delrissa"];
		[1] = { itemID = 34792 }; --Cloak of the Betrayed
		[2] = { itemID = 34788 }; --Duskhallow Mantle
		[3] = { itemID = 34791 }; --Gauntlets of the Tranquil Waves
		[4] = { itemID = 34789 }; --Bracers of Slaughter
		[5] = { itemID = 34790 }; --Battle-mace of the High Priestess
		[6] = { itemID = 34783 }; --Nightstrike
		[8] = { itemID = 35275 }; --Orb of the Sin'dorei
		[10] = { itemID = 35756, droprate = { nil, "2%", "5%", "7%", "10%" } }; --Formula: Enchant Cloak - Steelweave
		[17] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[18] = { itemID = 34473, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Commendation of Kael'thas
		[19] = { itemID = 34472, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shard of Contempt
		[20] = { itemID = 34470, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Timbal's Focusing Crystal
		[21] = { itemID = 34471, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Vial of the Sunwell
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"];
		[1] = { itemID = 34810 }; --Cloak of Blade Turning
		[2] = { itemID = 34808 }; --Gloves of Arcane Acuity
		[3] = { itemID = 34809 }; --Sunrage Treads
		[4] = { itemID = 34799 }; --Hauberk of the War Bringer
		[5] = { itemID = 34807 }; --Sunstrider Warboots
		[6] = { itemID = 34625 }; --Kharmaa's Ring of Fate
		[7] = { itemID = 34793 }; --Cord of Reconstruction
		[8] = { itemID = 34796 }; --Robes of Summer Flame
		[9] = { itemID = 34795 }; --Helm of Sanctification
		[10] = { itemID = 34798 }; --Band of Celerity
		[11] = { itemID = 34794 }; --Axe of Shattered Dreams
		[12] = { itemID = 34797 }; --Sun-infused Focus Staff
		[14] = { itemID = 34157 }; --Head of Kael'thas	
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 34610, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Scarlet Sin'dorei Robes
		[18] = { itemID = 34613, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shoulderpads of the Silvermoon Retainer
		[19] = { itemID = 34614, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Tunic of the Ranger Lord
		[20] = { itemID = 34615, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Netherforce Chestplate
		[21] = { itemID = 34612, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Greaves of the Penitent Knight
		[22] = { itemID = 34609, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Quickening Blade of the Prince
		[23] = { itemID = 34616, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Breeching Comet
		[24] = { itemID = 34611, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Cudgel of Consecration
		[26] = { itemID = 35513 }; --Swift White Hawkstrider
		[27] = { itemID = 34160 }; --The Signet Ring of Prince Kael'thas
		[28] = { itemID = 35504 }; --Phoenix Hatchling
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 35516 }; --Sun Touched Satchel
	};
};
-------------------------------------
--- Sunwell Isle: Sunwell Plateau ---
-------------------------------------

AtlasLoot_Data["SunwellPlateau"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Sunwell Isle"] .. ": " .. BabbleZone["Sunwell Plateau"];
	DisplayName = BabbleZone["Sunwell Plateau"];
	Type = "BCRaid";
	Map = "SunwellPlateau";
	{
		Name = BabbleBoss["Kalecgos"];
		NpcID = 24892;
		LootGroups = {
			[1] =  100,
			[2] =  100,
			[10] =  100,
			[15] =  1,
		};
		[1] = { itemID = 34170, lootGroup = 2 }; --Pantaloons of Calming Strife
		[2] = { itemID = 34169, lootGroup = 2 }; --Breeches of Natural Aggression
		[3] = { itemID = 34168, lootGroup = 2 }; --Starstalker Legguards
		[4] = { itemID = 34167, lootGroup = 2 }; --Legplates of the Holy Juggernaut
		[5] = { itemID = 34166, lootGroup = 2 }; --Band of Lucent Beams
		[6] = { itemID = 34165, lootGroup = 2 }; --Fang of Kalecgos
		[7] = { itemID = 34164, lootGroup = 2 }; --Dragonscale-Encrusted Longblade
		[16] = { itemID = 34848, lootTable = {"T6WRIST","Token"}}; --Bracers of the Forgotten Conqueror
		[18] = { itemID = 34664 }; --Sunmote
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
		[24] = { itemID = 63978, lootGroup = 15 }; --Sigil
	};
	{
		Name = BabbleBoss["Brutallus"];
		NpcID = 24882;
		LootGroups = {
			[1] =  100,
			[2] =  100,
			[10] =  100,
			[15] =  1,
			[16] =  1
		};

		[1] = { itemID = 34181, lootGroup = 2 }; --Leggings of Calamity
		[2] = { itemID = 34180, lootGroup = 2 }; --Felfury Legplates
		[3] = { itemID = 34381, lootGroup = 2 }; --Felstrength Legplates
		[4] = { itemID = 34178, lootGroup = 2 }; --Collar of the Pit Lord
		[5] = { itemID = 34177, lootGroup = 2 }; --Clutch of Demise
		[6] = { itemID = 34179, lootGroup = 2 }; --Heart of the Pit
		[7] = { itemID = 34176, lootGroup = 2 }; --Reign of Misery
		[8] = { itemID = 11523, lootGroup = 2 }; --Trophy Scar Band
		[16] = { itemID = 34853, lootTable = {"T6WAIST","Token"}, lootGroup = 1 }; --Belt of the Forgotten Conqueror
		[18] = { itemID = 34664 }; --Sunmote
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
		[23] = { itemID = 612859, lootGroup = 16 }; --Summoning Stone - Brutallus
		[25] = { itemID = 63976, lootGroup = 15 }; --Sigil
	};
	{
		Name = BabbleBoss["Felmyst"];
		NpcID = 25038;
		LootGroups = {
			[1] =  100,
			[2] =  100,
			[10] =  100,
			[15] =  1,
		};
		[1] = { itemID = 34352, lootGroup = 2 }; --Borderland Fortress Grips
		[2] = { itemID = 34188, lootGroup = 2 }; --Leggings of the Immortal Night
		[3] = { itemID = 34385, lootGroup = 2 }; --Leggings of the Immortal Beast
		[4] = { itemID = 34186, lootGroup = 2 }; --Chain Links of the Tumultuous Storm
		[5] = { itemID = 34383, lootGroup = 2 }; --Kilt of Spiritual Reconstruction
		[6] = { itemID = 34184, lootGroup = 2 }; --Brooch of the Highborne
		[7] = { itemID = 34185, lootGroup = 2 }; --Sword Breaker's Bulwark
		[8] = { itemID = 34182, lootGroup = 2 }; --Grand Magister's Staff of Torrents
		[16] = { itemID = 34856, lootTable = {"T6FEET","Token"}, lootGroup = 1 }; --Boots of the Forgotten Conqueror
		[18] = { itemID = 34664 }; --Sunmote
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[21] = { itemID = 98570 }; --Mystic Orb
		[23] = { itemID = 63980, lootGroup = 15 }; --Sigil
	};
	{
		Name = BabbleBoss["The Eredar Twins"];
		NpcID = 25166;
		LootGroups = {
			[1] =  100,
			[2] =  100,
			[10] =  100,
			[15] =  1,
			[16] =  1
			};
		[1] = { itemID = 34205, lootGroup = 1 }; --Shroud of Redeemed Souls
		[2] = { itemID = 34190, lootGroup = 2 }; --Crimson Paragon's Cover
		[3] = { itemID = 34210, lootGroup = 1 }; --Amice of the Convoker
		[4] = { itemID = 34202, lootGroup = 1 }; --Shawl of Wonderment
		[5] = { itemID = 34209, lootGroup = 1 }; --Spaulders of Reclamation
		[6] = { itemID = 34195, lootGroup = 2 }; --Shoulderpads of Vehemence
		[7] = { itemID = 34194, lootGroup = 2 }; --Mantle of the Golden Forest
		[8] = { itemID = 34208, lootGroup = 1 }; --Equilibrium Epaulets
		[9] = { itemID = 34192, lootGroup = 2 }; --Pauldrons of Perseverance
		[10] = { itemID = 34193, lootGroup = 1 }; --Spaulders of the Thalassian Savior
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
		[22] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 612860 ,lootGroup = 16 }; --Summoning Stone - Sacro\'lythess
		[27] = { itemID = 63984, lootGroup = 15 }; --Sigil
		[28] = { itemID = 63985, lootGroup = 15 }; --Sigil
	};
	{
		Name = AL["High Commander Arynyes <Shadowsword Captain>"];
		NpcID = 25837;
		LootGroups = {
			[1] =  100,
			[2] =  100,
			[10] =  100,
			[15] =  100,
			};
		[1] = { itemID = 35282, lootGroup = 2 }; --Sin'dorei Band of Dominance
		[2] = { itemID = 35283, lootGroup = 2 }; --Sin'dorei Band of Salvation
		[3] = { itemID = 35284, lootGroup = 2 }; --Sin'dorei Band of Triumph
		[4] = { itemID = 35290, lootGroup = 2 }; --Sin'dorei Pendant of Conquest
		[5] = { itemID = 35291, lootGroup = 2 }; --Sin'dorei Pendant of Salvation
		[6] = { itemID = 35292, lootGroup = 2 }; --Sin'dorei Pendant of Triumph
		[8] = { itemID = 34848, lootTable = {"T6WRIST","Token"}, lootGroup = 1}; --Bracers of the Forgotten Conqueror
		[9] = { itemID = 34853, lootTable = {"T6WAIST","Token"}, lootGroup = 1 }; --Belt of the Forgotten Conqueror
		[10] = { itemID = 34856, lootTable = {"T6FEET","Token"}, lootGroup = 1 }; --Boots of the Forgotten Conqueror
		[16] = { itemID = 34664 }; --Sunmote
		[17] = { itemID = 29434 }; --Badge of Justice
		[18] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[19] = { itemID = 98570 }; --Mystic Orb

	};
	{
		Name = BabbleBoss["M'uru"];
		NpcID = 25741; -- Entropius: 25840
		LootGroups = {
			[1] =  100,
			[2] =  100,
			[10] =  100,
			[15] =  1,
			};
		[1] = { itemID = 34232, lootGroup = 1 }; --Fel Conquerer Raiments
		[2] = { itemID = 34233, lootGroup = 1 }; --Robes of Faltered Light
		[3] = { itemID = 34212, lootGroup = 1 }; --Sunglow Vest
		[4] = { itemID = 34211, lootGroup = 2 }; --Harness of Carnal Instinct
		[5] = { itemID = 34234, lootGroup = 2 }; --Shadowed Gauntlets of Paroxysm
		[6] = { itemID = 34229, lootGroup = 1 }; --Garments of Serene Shores
		[7] = { itemID = 34228, lootGroup = 2 }; --Vicious Hawkstrider Hauberk
		[8] = { itemID = 34215, lootGroup = 2 }; --Warharness of Reckless Fury
		[9] = { itemID = 34240, lootGroup = 1 }; --Gauntlets of the Soothed Soul
		[10] = { itemID = 34216, lootGroup = 2 }; --Heroic Judicator's Chestguard
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
		[22] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 64004, lootGroup = 15 }; --Sigil
	};
	{
		Name = BabbleBoss["Kil'jaeden"];
		NpcID = 25315;
		LootGroups = {
			[1] =  3,
			[2] =  100,
			[3] =  100,
			[4] =  100,
			[10] =  100,
			[15] =  1,
			[16] =  1,
			};
		[1] = { itemID = 34241, lootGroup = 4 }; --Cloak of Unforgivable Sin
		[2] = { itemID = 34242, lootGroup = 3 }; --Tattered Cape of Antonidas
		[3] = { itemID = 34339, lootGroup = 3 }; --Cowl of Light's Purity
		[4] = { itemID = 34340, lootGroup = 3 }; --Dark Conjuror's Collar
		[5] = { itemID = 34342, lootGroup = 3 }; --Handguards of the Dawn
		[6] = { itemID = 34344, lootGroup = 3 }; --Handguards of the Defiled Worlds
		[7] = { itemID = 34244, lootGroup = 4 }; --Duplicitous Guise
		[8] = { itemID = 34245, lootGroup = 3 }; --Cover of Ursol the Wise
		[9] = { itemID = 34333, lootGroup = 4 }; --Coif of Alleria
		[10] = { itemID = 34332, lootGroup = 3 }; --Cowl of Gul'dan
		[11] = { itemID = 34402, lootGroup = 3 }; --Shroud of Chieftain Ner'zhul
		[12] = { itemID = 34343, lootGroup = 4 }; --Thalassian Ranger Gauntlets
		[13] = { itemID = 34243, lootGroup = 3 }; --Helm of Burning Righteousness
		[14] = { itemID = 34345, lootGroup = 4 }; --Crown of Anasterian
		[15] = { itemID = 34341, lootGroup = 4 }; --Borderland Paingrips
		[16] = { itemID = 34329, lootGroup = 2 }; --Crux of the Apocalypse
		[17] = { itemID = 34247, lootGroup = 2 }; --Apolyon, the Soul-Render
		[18] = { itemID = 34335, lootGroup = 2 }; --Hammer of Sanctification
		[19] = { itemID = 34331, lootGroup = 2 }; --Hand of the Deceiver
		[20] = { itemID = 34336, lootGroup = 2 }; --Sunflare
		[21] = { itemID = 34337, lootGroup = 2 }; --Golden Staff of the Sin'dorei
		[23] = { itemID = 34664 }; --Sunmote
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 450010, lootGroup = 1 ,desc = AL["Quest Requirements"], contentsPreview = {{450009},{450010},{34334}} }; --Thori'dal, the Stars' Fury
		[29] = { itemID = 63988, lootGroup = 15 }; --Sigil
		[30] = { itemID = 252676, lootGroup = 16 }; --Essence of the Blue Flight
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 34351 }; --Tranquil Majesty Wraps
		[2] = { itemID = 34407 }; --Tranquil Moonlight Wraps
		[3] = { itemID = 34350 }; --Gauntlets of the Ancient Shadowmoon
		[4] = { itemID = 34409 }; --Gauntlets of the Ancient Frostwolf
		[5] = { itemID = 35733 }; --Ring of Harmonic Beauty
		[6] = { itemID = 34183 }; --Shivering Felspine
		[7] = { itemID = 34346 }; --Mounting Vengeance
		[8] = { itemID = 34349 }; --Blade of Life's Inevitability
		[9] = { itemID = 34348 }; --Wand of Cleansing Light
		[10] = { itemID = 34347 }; --Wand of the Demonsoul
		[12] = { itemID = 35273 }; --Study of Advanced Smelting
		[14] = { itemID = 34664 }; --Sunmote
	};
	{
		Name = AL["Jewelcrafting"];
		[1] = { itemID = 32228 }; --Empyrean Sapphire
		[2] = { itemID = 32231 }; --Pyrestone
		[3] = { itemID = 32229 }; --Lionseye
		[4] = { itemID = 32249 }; --Seaspray Emerald
		[5] = { itemID = 32230 }; --Shadowsong Amethyst
		[6] = { itemID = 32227 }; --Crimson Spinel
		[16] = { itemID = 35198 }; --Design: Loop of Forged Power
		[17] = { itemID = 35201 }; --Design: Pendant of Sunfire
		[18] = { itemID = 35199 }; --Design: Ring of Flowing Life
		[19] = { itemID = 35202 }; --Design: Amulet of Flowing Life
		[20] = { itemID = 35200 }; --Design: Hard Khorium Band
		[21] = { itemID = 35203 }; --Design: Hard Khorium Choker
	};
	{
		Name = "Patterns/Plans";
		[1] = { itemID = 35212 }; --Pattern: Leather Gauntlets of the Sun
		[2] = { itemID = 35216 }; --Pattern: Leather Chestguard of the Sun
		[3] = { itemID = 35213 }; --Pattern: Fletcher's Gloves of the Phoenix
		[4] = { itemID = 35217 }; --Pattern: Pattern: Embrace of the Phoenix
		[5] = { itemID = 35214 }; --Pattern: Gloves of Immortal Dusk
		[6] = { itemID = 35218 }; --Pattern: Carapace of Sun and Shadow
		[7] = { itemID = 35215 }; --Pattern: Sun-Drenched Scale Gloves
		[8] = { itemID = 35219 }; --Pattern: Sun-Drenched Scale Chestguard
		[9] = { itemID = 35204 }; --Pattern: Sunfire Handwraps
		[10] = { itemID = 35206 }; --Pattern: Sunfire Robe
		[11] = { itemID = 35205 }; --Pattern: Hands of Eternal Light
		[12] = { itemID = 35207 }; --Pattern: Robe of Eternal Light
		[13] = { itemID = 35208 }; --Plans: Sunblessed Gauntlets
		[14] = { itemID = 35210 }; --Plans: Sunblessed Breastplate
		[15] = { itemID = 35209 }; --Plans: Hard Khorium Battlefists
		[16] = { itemID = 35211 }; --Plans: Hard Khorium Battleplate
		[17] = { itemID = 35186 }; --Schematic: Annihilator Holo-Gogs
		[18] = { itemID = 35187 }; --Schematic: Justicebringer 3000 Specs
		[19] = { itemID = 35189 }; --Schematic: Powerheal 9000 Lens
		[20] = { itemID = 35190 }; --Schematic: Hyper-Magnified Moon Specs
		[21] = { itemID = 35191 }; --Schematic: Wonderheal XT68 Shades
		[22] = { itemID = 35192 }; --Schematic: Primal-Attuned Goggles
		[23] = { itemID = 35193 }; --Schematic: Lightning Etched Specs
		[24] = { itemID = 35194 }; --Schematic: Surestrike Goggles v3.0
		[25] = { itemID = 35195 }; --Schematic: Mayhem Projection Goggles
		[26] = { itemID = 35196 }; --Schematic: Hard Khorium Goggles
		[27] = { itemID = 35197 }; --Schematic: Quad Deathblow X44 Goggles
	};
};

----------------------------------
--- Tempest Keep: The Arcatraz ---
----------------------------------

AtlasLoot_Data["TKArc"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Arcatraz"];
	DisplayName = BabbleZone["The Arcatraz"];
	Type = "BCDungeon";
	Map = "TempestKeepArcatraz";
	{
		Name = BabbleBoss["Zereketh the Unbound"];
		[1] = { itemID = 28373 }; --Cloak of Scintillating Auras
		[2] = { itemID = 28374 }; --Mana-Sphere Shoulderguards
		[3] = { itemID = 28384 }; --Outland Striders
		[4] = { itemID = 28375 }; --Rubium War-Girdle
		[5] = { itemID = 28372 }; --Idol of Feral Shadows
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30582, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Deadly Fire Opal
		[18] = { itemID = 30575, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Nimble Fire Opal
		[19] = { itemID = 30581, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Wrath-Scryer Soccothrates"];
		[1] = { itemID = 28396 }; --Gloves of the Unbound
		[2] = { itemID = 28398 }; --The Sleeper's Cord
		[3] = { itemID = 28394 }; --Ryngo's Band of Ingenuity
		[4] = { itemID = 28393 }; --Warmaul of Infused Light
		[5] = { itemID = 28397 }; --Emberhawk Crossbow
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30582, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Deadly Fire Opal
		[18] = { itemID = 30575, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Nimble Fire Opal
		[19] = { itemID = 30581, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Dalliah the Doomsayer"];
		[1] = { itemID = 24308 }; --Pattern: Whitemend Pants" 
		[3] = { itemID = 28391 }; --Worldfire Chestguard
		[4] = { itemID = 28390 }; --Thatia's Self-Correcting Gauntlets
		[5] = { itemID = 28387 }; --Lamp of Peaceful Repose
		[6] = { itemID = 28392 }; --Reflex Blades
		[7] = { itemID = 28386 }; --Nether Core's Control Rod
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30582, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Deadly Fire Opal
		[18] = { itemID = 30575, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Nimble Fire Opal
		[19] = { itemID = 30581, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Harbinger Skyriss"];
		[1] = { itemID = 28415 }; --Hood of Oblivion
		[2] = { itemID = 28413 }; --Hallowed Crown
		[3] = { itemID = 28414 }; --Helm of Assassination
		[4] = { itemID = 28231 }; --Tidefury Chestpiece
		[5] = { itemID = 28403 }; --Doomplate Chestguard
		[6] = { itemID = 28205 }; --Breastplate of the Bold
		[8] = { itemID = 28406 }; --Sigil-Laced Boots
		[9] = { itemID = 28419 }; --Choker of Fluid Thought
		[10] = { itemID = 28407 }; --Elementium Band of the Sentry
		[11] = { itemID = 28418 }; --Shiffar's Nexus-Horn
		[12] = { itemID = 28412 }; --Lamp of Peaceful Radiance
		[13] = { itemID = 28416 }; --Hungering Spineripper
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30582, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Deadly Fire Opal
		[18] = { itemID = 30575, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Nimble Fire Opal
		[19] = { itemID = 30581, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Durable Fire Opal
		[20] = { itemID = 29241, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Belt of Depravity
		[22] = { itemID = 29248, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shadowstep Striders
		[23] = { itemID = 29252, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bracers of Dignity
		[24] = { itemID = 29360, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Vileblade of the Betrayer
		[26] = { itemID = 33861, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Scroll of Skyriss
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Botanica"] };
		[2] = { itemID = 24172 }; --Design: Coronet of Verdant Flame
		[4] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Mechanar"] };
		[5] = { itemID = 22920 }; --Recipe: Major Fire Protection Potion
		[6] = { itemID = 21906 }; --Pattern: Arcanoweave Boots
		[8] = { icon = "INV_Box_01", name = WHITE.. AL["Overcharged Manacell"], "=q5=" .. BabbleZone["The Mechanar"] };
		[9] = { itemID = 30824 }; --Overcharged Manacell
		[16] = { icon = "INV_Box_01", name = WHITE.. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Arcatraz"] };
		[17] = { itemID = 23606 }; --Plans: Felsteel Leggings
		[18] = { itemID = 22556 }; --Formula: Enchant 2H Weapon - Major Agility
		[19] = { itemID = 29672 }; --Pattern: Flame Armor Kit
		[20] = { itemID = 21905 }; --Pattern: Arcanoweave Bracers
		[22] = { icon = "INV_Box_01", name = WHITE.. AL["Third Fragment Guardian"], "=q5=" .. BabbleZone["The Arcatraz"] };
		[23] = { itemID = 24488 }; --Third Key Fragment
	};
};

----------------------------------
--- Tempest Keep: The Botanica ---
----------------------------------

AtlasLoot_Data["TKBot"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Botanica"];
	DisplayName = BabbleZone["The Botanica"];
	Type = "BCDungeon";
	Map = "TempestKeepBotanica";
	{
		Name = BabbleBoss["Commander Sarannis"];
		[1] = { itemID = 28301 }; --Syrannis' Mystic Sheen
		[2] = { itemID = 28304 }; --Prismatic Mittens of Mending
		[3] = { itemID = 28306 }; --Towering Mantle of the Hunt
		[4] = { itemID = 28296 }; --Libram of the Lightbringer
		[5] = { itemID = 28311 }; --Revenger
		[7] = { itemID = 28769 }; --The Keystone
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["High Botanist Freywinn"];
		[1] = { itemID = 28317 }; --Energis Armwraps
		[2] = { itemID = 28318 }; --Obsidian Clodstompers
		[3] = { itemID = 28321 }; --Enchanted Thorium Torque
		[4] = { itemID = 28315 }; --Stormreaver Warblades
		[5] = { itemID = 28316 }; --Aegis of the Sunbird
		[7] = { itemID = 23617 }; --Plans: Earthpeace Breastplate
		[9] = { itemID = 31744 }; --Botanist's Field Guide
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Thorngrin the Tender"];
		[1] = { itemID = 24310 }; --Pattern: Battlecast Pants" 
		[3] = { itemID = 28324 }; --Gauntlets of Cruel Intention
		[4] = { itemID = 28327 }; --Arcane Netherband
		[5] = { itemID = 28323 }; --Ring of Umbral Doom
		[6] = { itemID = 28322 }; --Runed Dagger of Solace
		[7] = { itemID = 28325 }; --Dreamer's Dragonstaff
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Laj"];
		[1] = { itemID = 27739 }; --Spaulders of the Righteous
		[3] = { itemID = 28328 }; --Mithril-Bark Cloak
		[4] = { itemID = 28338 }; --Devil-Stitched Leggings
		[5] = { itemID = 28340 }; --Mantle of Autumn
		[6] = { itemID = 28339 }; --Boots of the Shifting Sands
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Warp Splinter"];
		[1] = { itemID = 28371 }; --Netherfury Cape
		[2] = { itemID = 28342 }; --Warp Infused Drape
		[3] = { itemID = 28347 }; --Warpscale Leggings
		[4] = { itemID = 28343 }; --Jagged Bark Pendant
		[5] = { itemID = 28370 }; --Bangle of Endless Blessings
		[6] = { itemID = 28345 }; --Warp Splinter's Thorn
		[7] = { itemID = 28367 }; --Greatsword of Forlorn Visions
		[8] = { itemID = 28341 }; --Warpstaff of Arcanum
		[10] = { itemID = 28229 }; --Incanter's Robe
		[11] = { itemID = 28348 }; --Moonglade Cowl
		[12] = { itemID = 28349 }; --Tidefury Helm
		[13] = { itemID = 28228 }; --Beast Lord Curiass
		[14] = { itemID = 28350 }; --Warhelm of the Bold
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30574, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Brutal Tanzanite
		[18] = { itemID = 30572, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Imperial Tanzanite
		[19] = { itemID = 30573, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Mysterious Fire Opal
		[21] = { itemID = 29258, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of Ethereal Manipulation
		[22] = { itemID = 29262, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of the Endless Hunt
		[23] = { itemID = 32072, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Gauntlets of Dissension
		[24] = { itemID = 29359, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Feral Staff of Lashing
		[26] = { itemID = 24311 }; --Pattern: Whitemend Hood
		[28] = { itemID = 31085 }; --Top Shard of the Arcatraz Key
		[29] = { itemID = 33859, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Warp Splinter Clipping
	};
};



----------------------------------
--- Tempest Keep: The Mechanar ---
----------------------------------

AtlasLoot_Data["TKMech"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Mechanar"];
	DisplayName = BabbleZone["The Mechanar"];
	Type = "BCDungeon";
	Map = "TempestKeepMechanar";
	{
		Name = AL["Cache of the Legion"];
		[1] = { icon = "INV_Box_01", name = WHITE.. AL["Cache of the Legion"] };
		[2] = { itemID = 29434 }; --Badge of Justice
		[3] = { itemID = 28249 }; --Capacitus' Cloak of Calibration
		[4] = { itemID = 28250 }; --Vestia's Pauldrons of Inner Grace
		[5] = { itemID = 28252 }; --Bloodfyre Robes of Annihilation
		[6] = { itemID = 28251 }; --Boots of the Glade-Keeper
		[7] = { itemID = 28248 }; --Totem of the Void
		[16] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["Gatewatcher Gyro-Kill"] };
		[17] = { itemID = 30436 }; --Jagged Blue Crystal
		[19] = { icon = "INV_Box_01", name = WHITE.. BabbleBoss["Gatewatcher Iron-Hand"] };
		[20] = { itemID = 30437 }; --Jagged Red Crystal
	};
	{
		Name = BabbleBoss["Mechano-Lord Capacitus"];
		[1] = { itemID = 28256 }; --Thoriumweave Cloak
		[2] = { itemID = 28255 }; --Lunar-Claw Pauldrons
		[3] = { itemID = 28254 }; --Warp Engineer's Prismatic Chain
		[4] = { itemID = 28257 }; --Hammer of the Penitent
		[5] = { itemID = 28253 }; --Plasma Rat's Hyper-Scythe
		[7] = { itemID = 35582 }; --Schematic: Rocket Boots Xtreme Lite
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30565, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Assassin's Fire Opal
		[18] = { itemID = 30566, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Defender's Tanzanite
		[19] = { itemID = 30564, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shining Fire Opal
	};
	{
		Name = BabbleBoss["Nethermancer Sepethrea"];
		[1] = { itemID = 28262 }; --Jade-Skull Breastplate
		[2] = { itemID = 28259 }; --Cosmic Lifeband
		[3] = { itemID = 28260 }; --Manual of the Nethermancer
		[4] = { itemID = 28263 }; --Stellaris
		[5] = { itemID = 28258 }; --Nethershrike
		[7] = { itemID = 22920 }; --Recipe: Major Fire Protection Potion
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 30565, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Assassin's Fire Opal
		[18] = { itemID = 30566, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Defender's Tanzanite
		[19] = { itemID = 30564, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shining Fire Opal
	};
	{
		Name = BabbleBoss["Pathaleon the Calculator"];
		[1] = { itemID = 28269 }; --Baba's Cloak of Arcanistry
		[2] = { itemID = 28266 }; --Molten Earth Kilt
		[3] = { itemID = 28265 }; --Dath'Remar's Ring of Defense
		[4] = { itemID = 28288 }; --Abacus of Violent Odds
		[5] = { itemID = 27899 }; --Mana Wrath
		[6] = { itemID = 28267 }; --Edge of the Cosmos
		[7] = { itemID = 28286 }; --Telescopic Sharprifle
		[9] = { itemID = 28278 }; --Incanter's Cowl
		[10] = { itemID = 28202 }; --Moonglade Robe
		[11] = { itemID = 28204 }; --Tunic of Assassination
		[12] = { itemID = 28275 }; --Beast Lord Helm
		[13] = { itemID = 28285 }; --Helm of the Righteous
		[15] = { itemID = 21907 }; --Pattern: Arcanoweave Robe
		[16] = { itemID = 29434, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Badge of Justice
		[17] = { itemID = 29251, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Boots of the Pious
		[18] = { itemID = 32076, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Handguards of the Steady
		[19] = { itemID = 30533, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Vanquisher's Legplates
		[20] = { itemID = 29362, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --The Sun Eater
		[21] = { itemID = 30565, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Assassin's Fire Opal
		[23] = { itemID = 30566, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Defender's Tanzanite
		[24] = { itemID = 30564, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Shining Fire Opal
		[25] = { itemID = 33860, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Pathaleon's Projector
		[29] = { itemID = 31086, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Bottom Shard of the Arcatraz Key
	};
};
-----------------------------
--- Tempest Keep: The Eye ---
-----------------------------

AtlasLoot_Data["TKEye"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Eye"];
	DisplayName = BabbleZone["The Eye"];
	Type = "BCRaid";
	Map = "TempestKeepTheEye";
	{
		Name = BabbleBoss["Al'ar"];
		NpcID = 19514;
		[1] = { itemID = 29925 }; --Phoenix-Wing Cloak
		[2] = { itemID = 29918 }; --Mindstorm Wristbands
		[3] = { itemID = 29947 }; --Gloves of the Searing Grip
		[4] = { itemID = 29921 }; --Fire Crest Breastplate
		[5] = { itemID = 29922 }; --Band of Al'ar
		[6] = { itemID = 29920 }; --Phoenix-Ring of Rebirth
		[7] = { itemID = 30448 }; --Talon of Al'ar
		[8] = { itemID = 30447 }; --Tome of Fiery Redemption
		[9] = { itemID = 29923 }; --Talisman of the Sun King
		[11] = { itemID = 600867, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; --Elemental Lodestone: Al'ar
		[16] = { itemID = 32944 }; --Talon of the Phoenix
		[17] = { itemID = 29948 }; --Claw of the Phoenix
		[18] = { itemID = 29924 }; --Netherbane
		[19] = { itemID = 29949 }; --Arcanite Steam-Pistol
		[21] = { itemID = 29434 }; --Badge of Justice
		[22] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[23] = { itemID = 98570 }; --Mystic Orb
		[25] = { itemID = 1816254 }; --Forumla: Enchant Cloak - Phoenix Fire
		[27] = { itemID = 62443, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Void Reaver"];
		NpcID = 19516;
		[1] = { itemID = 29986 }; --Cowl of the Grand Engineer
		[2] = { itemID = 29984 }; --Girdle of Zaetar
		[3] = { itemID = 29985 }; --Void Reaver Greaves
		[4] = { itemID = 29983 }; --Fel-Steel Warhelm
		[5] = { itemID = 32515 }; --Wristguards of Determination
		[6] = { itemID = 30619 }; --Fel Reaver's Piston
		[7] = { itemID = 30450 }; --Warp-Spring Coil
		[16] = { itemID = 30249, lootTable = {"T5SHOULDER","Token"} }; --Pauldrons of the Vanquished Defender
		[18] = { itemID = 29434 }; --Badge of Justice
		[19] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[20] = { itemID = 98570 }; --Mystic Orb
	};
	{
		Name = BabbleBoss["High Astromancer Solarian"];
		NpcID = 18805;
		[1] = { itemID = 29977 }; --Star-Soul Breeches
		[2] = { itemID = 29972 }; --Trousers of the Astromancer
		[3] = { itemID = 29966 }; --Vambraces of Ending
		[4] = { itemID = 29976 }; --Worldstorm Gauntlets
		[5] = { itemID = 29951 }; --Star-Strider Boots
		[6] = { itemID = 29965 }; --Girdle of the Righteous Path
		[7] = { itemID = 29950 }; --Greaves of the Bloodwarder
		[8] = { itemID = 32267 }; --Boots of the Resilient
		[16] = { itemID = 30446 }; --Solarian's Sapphire
		[17] = { itemID = 30449 }; --Void Star Talisman
		[18] = { itemID = 29962 }; --Heartrazor
		[19] = { itemID = 29981 }; --Ethereum Life-Staff
		[20] = { itemID = 29982 }; --Wand of the Forgotten Star
		[22] = { itemID = 29434 }; --Badge of Justice
		[23] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[24] = { itemID = 98570 }; --Mystic Orb
		[26] = { itemID = 62309, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"];
		NpcID = 19622;
		[1] = { itemID = 29992 }; --Royal Cloak of the Sunstriders
		[2] = { itemID = 29989 }; --Sunshower Light Cloak
		[3] = { itemID = 29994 }; --Thalassian Wildercloak
		[4] = { itemID = 29990 }; --Crown of the Sun
		[5] = { itemID = 29987 }; --Gauntlets of the Sun King
		[6] = { itemID = 29995 }; --Leggings of Murderous Intent
		[7] = { itemID = 29991 }; --Sunhawk Leggings
		[8] = { itemID = 29998 }; --Royal Gauntlets of Silvermoon
		[9] = { itemID = 29997 }; --Band of the Ranger-General
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
		[25] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 62498, droprate = "1%" }; --Pet Sigil
		[30] = { itemID = 32458 }; --Ashes of Al'ar

	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 30024 }; --Mantle of the Elven Kings
		[2] = { itemID = 30020 }; --Fire-Cord of the Magus
		[3] = { itemID = 30029 }; --Bark-Gloves of Ancient Wisdom
		[4] = { itemID = 30026 }; --Bands of the Celestial Archer
		[5] = { itemID = 30030 }; --Girdle of Fallen Stars
		[6] = { itemID = 30028 }; --Seventh Ring of the Tirisfalen
		[7] = { itemID = 2032902 }; --Bottled Nethergron Extract
		[9] = { itemID = 30324 }; --Plans: Red Havoc Boots
		[10] = { itemID = 30322 }; --Plans: Red Belt of Battle
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
		[1] = { itemID = 30312 }; --Infinity Blade
		[2] = { itemID = 30311 }; --Warp Slicer
		[3] = { itemID = 30317 }; --Cosmic Infuser
		[4] = { itemID = 30316 }; --Devastation
		[5] = { itemID = 30313 }; --Staff of Disintegration
		[6] = { itemID = 30314 }; --Phaseshift Bulwark
		[7] = { itemID = 30318 }; --Netherstrand Longbow
	};
};


----------------
--- Zul'Aman ---
----------------

AtlasLoot_Data["ZulAman"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Zul'Aman"];
	Type = "BCRaid";
	Map = "ZulAman";
	{
		Name = BabbleBoss["Nalorakk"];
		[1] = { itemID = 33203 }; --Robes of Heavenly Purpose
		[2] = { itemID = 33285 }; --Fury of the Ursine
		[3] = { itemID = 33211 }; --Bladeangel's Money Belt
		[4] = { itemID = 33206 }; --Pauldrons of Primal Fury
		[5] = { itemID = 33327 }; --Mask of Introspection
		[6] = { itemID = 33191 }; --Jungle Stompers
		[7] = { itemID = 33640 }; --Fury
		[16] = { itemID = 33496 }; --Signet of Primal Wrath
		[17] = { itemID = 33498 }; --Signet of the Quiet Forest
		[18] = { itemID = 33971 }; --Elunite Imbued Leggings
		[19] = { itemID = 33495 }; --Rage
		[20] = { itemID = 33480 }; --Cord of BBCRaided Troll Hair
		[22] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }; --Primal Amani Idol
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 63944, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Akil'zon"];
		[1] = { itemID = 33286 }; --Mojo-mender's Mask
		[2] = { itemID = 33215 }; --Bloodstained Elven Battlevest
		[3] = { itemID = 33216 }; --Chestguard of Hidden Purpose
		[4] = { itemID = 33281 }; --Brooch of Nature's Mercy
		[5] = { itemID = 33293 }; --Signet of Ancient Magics
		[6] = { itemID = 33214 }; --Akil'zon's Talonblade
		[7] = { itemID = 33283 }; --Amani Punisher
		[16] = { itemID = 33591 }; --Shadowcaster's Drape
		[17] = { itemID = 33590 }; --Cloak of Fiends
		[18] = { itemID = 33481 }; --Pauldrons of Stone Resolve
		[19] = { itemID = 33492 }; --Trollbane
		[20] = { itemID = 33500 }; --Signet of Eternal Life
		[22] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }; --Primal Amani Idol
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 63943, droprate = "1%" }; --Pet Sigil

	};
	{
		Name = BabbleBoss["Jan'alai"];
		[1] = { itemID = 33357 }; --Footpads of Madness
		[2] = { itemID = 33356 }; --Helm of Natural Regeneration
		[3] = { itemID = 33329 }; --Shadowtooth Trollskin Cuirass
		[4] = { itemID = 33328 }; --Arrow-fall Chestguard
		[5] = { itemID = 33354 }; --Wub's Cursed Hexblade
		[6] = { itemID = 33326 }; --Bulwark of the Amani Empire
		[7] = { itemID = 33332 }; --Enamelled Disc of Mojo
		[16] = { itemID = 33499 }; --Signet of the Last Defender
		[17] = { itemID = 33805 }; --Shadowhunter's Treads
		[18] = { itemID = 33491 }; --Tuskbreaker
		[19] = { itemID = 33490 }; --Staff of Dark Mending
		[20] = { itemID = 33489 }; --Mantle of Ill Intent
		[22] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }; --Primal Amani Idol
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 63946, droprate = "1%" }; --Pet Sigil

	};
	{
		Name = BabbleBoss["Halazzi"];
		[1] = { itemID = 33317 }; --Robe of Departed Spirits
		[2] = { itemID = 33300 }; --Shoulderpads of Dancing Blades
		[3] = { itemID = 33322 }; --Shimmer-pelt Vest
		[4] = { itemID = 33533 }; --Avalanche Leggings
		[5] = { itemID = 33299 }; --Spaulders of the Advocate
		[6] = { itemID = 33303 }; --Skullshatter Warboots
		[7] = { itemID = 33297 }; --The Savage's Choker
		[16] = { itemID = 33483 }; --Life-step Belt
		[17] = { itemID = 33493 }; --Umbral Shiv
		[18] = { itemID = 33497 }; --Mana Attuned Band
		[19] = { itemID = 33979 }; --Sightless Head
		[20] = { itemID = 33465 }; --Staff of Primal Fury
		[22] = { itemID = 222637, droprate = { "25%", "50%", "75%", "100%" } }; --Primal Amani Idol
		[24] = { itemID = 29434 }; --Badge of Justice
		[25] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[26] = { itemID = 98570 }; --Mystic Orb
		[28] = { itemID = 63945, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Hex Lord Malacrass"];
		[1] = { itemID = 33592 }; --Cloak of Ancient Rituals
		[2] = { itemID = 33453 }; --Hood of Hexing
		[3] = { itemID = 33463 }; --Hood of the Third Eye
		[4] = { itemID = 33432 }; --Coif of the Jungle Stalker
		[5] = { itemID = 33464 }; --Hex Lord's Voodoo Pauldrons
		[6] = { itemID = 33421 }; --Battleworn Tuskguard
		[7] = { itemID = 33446 }; --Girdle of Stromgarde's Hope
		[9] = { itemID = 2033307, droprate = { "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Witchdoctor
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
		[27] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[28] = { itemID = 98570 }; --Mystic Orb
		[30] = { itemID = 1333809 }; --Amani Bear
	};
	{
		Name = BabbleBoss["Zul'jin"];
		[1] = { itemID = 33471 }; --Two-toed Sandals
		[2] = { itemID = 33479 }; --Grimgin Faceguard
		[3] = { itemID = 33469 }; --Hauberk of the Empire's Champion
		[4] = { itemID = 33473 }; --Chestguard of the Warlord
		[5] = { itemID = 33466 }; --Loop of Cursed Bones
		[6] = { itemID = 33830 }; --Ancient Aqir Artifact
		[7] = { itemID = 33831 }; --Berserker's Call
		[8] = { itemID = 33829 }; --Hex Shrunken Head
		[9] = { itemID = 24537 }; --Waistband of Crushed Skulls
		[11] = { itemID = 33307, droprate = { "2%", "5%", "7%", "10%" } }; --Formula: Enchant Weapon - Executioner
		[16] = { itemID = 33467 }; --Blade of Twisted Visions
		[17] = { itemID = 33478 }; --Jin'rohk, The Great Apocalypse
		[18] = { itemID = 33476 }; --Cleaver of the Unforgiving
		[19] = { itemID = 33468 }; --Dark Blessing
		[20] = { itemID = 33474 }; --Ancient Amani Longbow
		[21] = { itemID = 34071 }; --Seething Hate
		[23] = { itemID = 29434 }; --Badge of Justice
		[24] = { itemID = 400751, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal }; --Raider's Commendations
		[25] = { itemID = 98570 }; --Mystic Orb
		[27] = { itemID = 33102 }; --Blood of Zul'Jin
		[29] = { itemID = 63949, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 21824 }; --The Krakmon Wand
		[2] = { itemID = 24574 }; --Massacre Cloak
		[3] = { itemID = 28354 }; --Throat Crushers
		[4] = { itemID = 33059 }; --Seal of the Amani'shi Berserker
		[5] = { itemID = 33983 }; --Staff of Blazing Glory
		[6] = { itemID = 39755 }; --String of Ears
		[16] = { itemID = 33865 }; --Amani Hex Stick
		[17] = { itemID = 33930 }; --Amani Charm of the Bloodletter
		[18] = { itemID = 33932 }; --Amani Charm of the Witch Doctor
		[19] = { itemID = 33931 }; --Amani Charm of Mighty Mojo
		[20] = { itemID = 33933 }; --Amani Charm of the Raging Defender
		[22] = { itemID = 33993 }; --Mojo
	};
	{
		Name = AL["Enchants"];
		[1] = { itemID = 229194 }; --The Krakmon Wand
		[2] = { itemID = 229193 }; --Massacre Cloak
		[3] = { itemID = 229196 }; --Throat Crushers
		[4] = { itemID = 229192 }; --Seal of the Amani'shi Berserker
		[5] = { itemID = 229195 }; --Staff of Blazing Glory
	};
};





----------------
--- Factions ---
----------------

----------------------------
--- Ashtongue Deathsworn ---
----------------------------

AtlasLoot_Data["Ashtongue"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Ashtongue Deathsworn"];
	Type = "BCRaid";
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32444 }; --=q1=Plans: Shadesteel Girdle" 
		[2] = { itemID = 32442 }; --=q1=Plans: Shadesteel Bracers" 
		[3] = { itemID = 32436 }; --Pattern: Redeemed Soul Cinch
		[4] = { itemID = 32435 }; --Pattern: Redeemed Soul Legguards
		[5] = { itemID = 32430 }; --Pattern: Bracers of Shackled Souls
		[6] = { itemID = 32429 }; --Pattern: Boots of Shackled Souls
		[7] = { itemID = 32440 }; --=q1=Pattern: Soulguard Girdle" 
		[8] = { itemID = 32438 }; --=q1=Pattern: Soulguard Bracers" 
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 32443 }; --=q1=Plans: Shadesteel Greaves" 
		[2] = { itemID = 32441 }; --=q1=Plans: Shadesteel Sabots" 
		[3] = { itemID = 32433 }; --Pattern: Redeemed Soul Mocassins
		[4] = { itemID = 32434 }; --Pattern: Redeemed Soul Wristguards
		[5] = { itemID = 32431 }; --Pattern: Greaves of Shackled Souls
		[6] = { itemID = 32432 }; --Pattern: Waistguard of Shackled Souls
		[7] = { itemID = 32447 }; --=q1=Pattern: Night's End" 
		[8] = { itemID = 32439 }; --=q1=Pattern: Soulguard Leggings" 
		[9] = { itemID = 32437 }; --=q1=Pattern: Soulguard Slippers" 
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32486 }; --Ashtongue Talisman of Equilibrium
		[2] = { itemID = 32487 }; --Ashtongue Talisman of Swiftness
		[3] = { itemID = 32488 }; --Ashtongue Talisman of Insight
		[4] = { itemID = 32489 }; --Ashtongue Talisman of Zeal
		[5] = { itemID = 32490 }; --Ashtongue Talisman of Acumen
		[6] = { itemID = 32492 }; --Ashtongue Talisman of Lethality
		[7] = { itemID = 32491 }; --Ashtongue Talisman of Vision
		[8] = { itemID = 32493 }; --Ashtongue Talisman of Shadows
		[9] = { itemID = 32485 }; --Ashtongue Talisman of Valor
	};
};

----------------------------
--- Cenarion Expedition ---
----------------------------

AtlasLoot_Data["CExpedition"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Cenarion Expedition"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25737 }; --Pattern: Heavy Clefthoof Boots
		[2] = { itemID = 24417 }; --Scout's Arrow
		[3] = { itemID = 23814 }; --Schematic: Green Smoke Flare
		[4] = { itemID = 24429 };
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 25838 }; --Warden's Hauberk
		[2] = { itemID = 25836 }; --Preserver's Cudgel
		[3] = { itemID = 25835 }; --Explorer's Walking Stick
		[4] = { itemID = 25735 }; --Pattern: Heavy Clefthoof Vest
		[5] = { itemID = 25736 }; --Pattern: Heavy Clefthoof Leggings
		[6] = { itemID = 29194 }; --Arcanum of Nature Warding
		[7] = { itemID = 25869 }; --Recipe: Transmute Earthstorm Diamond
		[8] = { itemID = 32070 }; --Recipe: Earthen Elixir
		[9] = { itemID = 23618 }; --Plans: Adamantite Sharpening Stone
		[10] = { itemID = 28632 }; --Plans: Adamantite Weightstone
		[11] = { itemID = 25526 }; --Plans: Greater Rune of Warding
		[12] = { itemID = 29720 }; --Pattern: Clefthide Leg Armor
		[13] = { itemID = 30623 }; --Reservoir Key
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 31392 }; --Plans: Wildguard Helm
		[2] = { itemID = 31391 }; --Plans: Wildguard Leggings
		[3] = { itemID = 29174 }; --Watcher's Cowl
		[4] = { itemID = 29173 }; --Strength of the Untamed
		[5] = { itemID = 31949 }; --Warden's Arrow
		[6] = { itemID = 24183 }; --Design: Nightseye Panther
		[7] = { itemID = 29192 }; --Arcanum of Ferocity
		[8] = { itemID = 22918 }; --Recipe: Transmute Primal Water to Air
		[9] = { itemID = 28271 }; --Formula: Enchant Gloves - Spell Strike
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29170 }; --Windcaller's Orb
		[2] = { itemID = 29172 }; --Ashyen's Gift
		[3] = { itemID = 29171 }; --Earthwarden
		[4] = { itemID = 33999 }; --Cenarion War Hippogryph
		[5] = { itemID = 31390 }; --Plans: Wildguard Breastplate
		[6] = { itemID = 31402 }; --Design: The Natural Ward
		[7] = { itemID = 33149 }; --Formula: Enchant Cloak - Stealth
		[8] = { itemID = 31356 }; --Recipe: Flask of Distilled Wisdom
		[9] = { itemID = 22922 }; --Recipe: Major Nature Protection Potion
		[10] = { itemID = 29721 }; --Pattern: Nethercleft Leg Armor
		[11] = { itemID = 31804 }; --Cenarion Expedition Tabard
	};
};

------------------
--- Honor Hold ---
------------------

AtlasLoot_Data["HonorHold"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Honor Hold"] .. " - " .. BabbleFaction["Alliance"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 29213 }; --Pattern: Felstalker Belt
		[2] = { itemID = 23142 }; --Design: Enduring Deep Peridot
		[3] = { itemID = 22531 }; --Formula: Enchant Bracer - Superior Healing
		[4] = { itemID = 24007 }; --Footman's Waterskin
		[5] = { itemID = 24008 }; --Dried Mushroom Rations
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 25826 }; --Sage's Band
		[2] = { itemID = 25825 }; --Footman's Longsword
		[3] = { itemID = 29214 }; --Pattern: Felstalker Bracers
		[4] = { itemID = 29215 }; --Pattern: Felstalker Breastplate
		[5] = { itemID = 29196 }; --Arcanum of Fire Warding
		[6] = { itemID = 25870 }; --Recipe: Transmute Skyfire Diamond
		[7] = { itemID = 22905 }; --Recipe: Elixir of Major Agility
		[8] = { itemID = 29719 }; --Pattern: Cobrahide Leg Armor
		[9] = { itemID = 30622 }; --Flamewrought Key
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29169 }; --Ring of Convalescence
		[2] = { itemID = 29166 }; --Hellforged Halberd
		[3] = { itemID = 32883 }; --Felbane Slugs
		[4] = { itemID = 24180 }; --Design: Dawnstone Crab
		[5] = { itemID = 29189 }; --Arcanum of Renewal
		[6] = { itemID = 22547 }; --Formula: Enchant Chest - Exceptional Stats
		[7] = { itemID = 34218 }; --Pattern: Netherscale Ammo Pouch
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29153 }; --Blade of the Archmage
		[2] = { itemID = 29156 }; --Honor's Call
		[3] = { itemID = 29151 }; --Veteran's Musket
		[4] = { itemID = 33150 }; --Formula: Enchant Cloak - Subtlety
		[5] = { itemID = 23619 }; --Plans: Felsteel Shield Spike
		[6] = { itemID = 29722 }; --Pattern: Nethercobra Leg Armor
		[7] = { itemID = 23999}; --Honor Hold Tabard
	};
};

-----------------------
--- Keepers of Time ---
-----------------------

AtlasLoot_Data["KeepersofTime"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Keepers of Time"];
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29198 }; --Arcanum of Frost Warding
		[2] = { itemID = 28272 }; --Formula: Enchant Gloves - Major Spellpower
		[3] = { itemID = 22536 }; --Formula: Enchant Ring - Spellpower
		[4] = { itemID = 25910 }; --Design: Enigmatic Skyfire Diamond
		[5] = { itemID = 33160 }; --Design: Facet of Eternity
		[6] = { itemID = 29713 }; --Pattern: Drums of Panic
		[7] = { itemID = 30635 }; --Key of Time
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29184 }; --Timewarden's Leggings
		[2] = { itemID = 29185 }; --Continuum Blade
		[3] = { itemID = 24181 }; --Design: Living Ruby Serpent
		[4] = { itemID = 24174 }; --Design: Pendant of Frozen Flame
		[5] = { itemID = 29186 }; --Arcanum of the Defender
		[6] = { itemID = 33158 }; --Design: Stone of Blades
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29183 }; --Bindings of the Timewalker
		[2] = { itemID = 29181 }; --Timelapse Shard
		[3] = { itemID = 29182 }; --Riftmaker
		[4] = { itemID = 33152 }; --Formula: Enchant Gloves - Superior Agility
		[5] = { itemID = 31355 }; --Recipe: Flask of Supreme Power
		[6] = { itemID = 31777 }; --Keepers of Time Tabard
	};
};

---------------
--- Kurenai ---
---------------

AtlasLoot_Data["Kurenai"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Kurenai"] .. " - " .. BabbleFaction["Alliance"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 29217 }; --Pattern: Netherfury Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29144 }; --Worg Hide Quiver
		[2] = { itemID = 29219 }; --Pattern: Netherfury Leggings
		[3] = { itemID = 34175 }; --Pattern: Drums of Restoration
		[4] = { itemID = 34173 }; --Pattern: Drums of Speed
		[5] = { itemID = 30444 }; --Pattern: Reinforced Mining Bag
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29148 }; --Blackened Leather Spaulders
		[2] = { itemID = 29142 }; --Kurenai Kilt
		[3] = { itemID = 29146 }; --Band of Elemental Spirits
		[4] = { itemID = 29218 }; --Pattern: Netherfury Boots
		[5] = { itemID = 30443 }; --Recipe: Transmute Primal Fire to Earth
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29227 }; --Reins of the Cobalt War Talbuk
		[2] = { itemID = 29229 }; --Reins of the Silver War Talbuk
		[3] = { itemID = 29230 }; --Reins of the Tan War Talbuk
		[4] = { itemID = 29231 }; --Reins of the White War Talbuk
		[5] = { itemID = 31830 }; --Reins of the Cobalt Riding Talbuk
		[6] = { itemID = 31832 }; --Reins of the Silver Riding Talbuk
		[7] = { itemID = 31834 }; --Reins of the Tan Riding Talbuk
		[8] = { itemID = 31836 }; --Reins of the White Riding Talbuk
		[9] = { itemID = 29140 }; --Cloak of the Ancient Spirits
		[10] = { itemID = 29136 }; --Far Seer's Helm
		[11] = { itemID = 29138 }; --Arechron's Gift
		[12] = { itemID = 31774 }; --Kurenai Tabard
	};
};

------------------
--- Lower City ---
------------------

AtlasLoot_Data["LowerCity"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Lower City"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 23138 }; --Design: Potent Flame Spessarite
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 30836 }; --Leggings of the Skettis Exile
		[2] = { itemID = 30835 }; --Salvager's Hauberk
		[3] = { itemID = 30841 }; --Lower City Prayerbook
		[4] = { itemID = 24179 }; --Design: Felsteel Boar
		[5] = { itemID = 24175 }; --Design: Pendant of Thawing
		[6] = { itemID = 30846 }; --Arcanum of the Outcast
		[7] = { itemID = 22910 }; --Recipe: Elixir of Major Shadow Power
		[8] = { itemID = 33157 }; --Design: Falling Star
		[9] = { itemID = 34200 }; --Pattern: Quiver of a Thousand Arrows
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29199 }; --Arcanum of Shadow Warding
		[2] = { itemID = 22538 }; --Formula: Enchant Ring - Stats
		[3] = { itemID = 30833 }; --Pattern: Cloak of Arcane Evasion
		[4] = { itemID = 30633 }; --Auchenai Key
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 30834 }; --Shapeshifter's Signet
		[2] = { itemID = 30832 }; --Gavel of Unearthed Secrets
		[3] = { itemID = 30830 }; --Trident of the Outcast Tribe
		[4] = { itemID = 33148 }; --Formula: Enchant Cloak - Dodge
		[5] = { itemID = 31357 }; --Recipe: Flask of Chromatic Resistance
		[6] = { itemID = 31778 }; --Lower City Tabard
	};
};

------------------
--- Netherwing ---
------------------

AtlasLoot_Data["Netherwing"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Netherwing"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32694 }; --Overseer's Badge
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 32695 }; --Captain's Badge
		[2] = { itemID = 32863 }; --Skybreaker Whip
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 32864 }; --Commander's Badge
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32858 }; --Reins of the Azure Netherwing Drake
		[2] = { itemID = 32859 }; --Reins of the Cobalt Netherwing Drake
		[3] = { itemID = 32857 }; --Reins of the Onyx Netherwing Drake
		[4] = { itemID = 32860 }; --Reins of the Purple Netherwing Drake
		[5] = { itemID = 32861 }; --Reins of the Veridian Netherwing Drake
		[6] = { itemID = 32862 }; --Reins of the Violet Netherwing Drake
	};
};

---------------
--- Ogri'la ---
---------------

AtlasLoot_Data["Ogrila"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Ogri'la"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32910 }; --Red Ogre Brew Special
		[2] = { itemID = 32909 }; --Blue Ogre Brew Special
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 32784, price = "2 #ogrilashard#" }; --Red Ogre Brew
		[2] = { itemID = 32783, price = "3 #ogrilashard#" }; --Blue Ogre Brew
		[3] = { itemID = 32572 }; --Apexis Crystal
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 32653, price = "1 #ogrilacrystal# 50 #ogrilashard#" }; --Apexis Cloak
		[2] = { itemID = 32654, price = "1 #ogrilacrystal# 50 #ogrilashard#" }; --Crystalforged Trinket
		[3] = { itemID = 32652, price = "1 #ogrilacrystal# 50 #ogrilashard#" }; --Ogri'la Aegis
		[4] = { itemID = 32650, price = "1 #ogrilacrystal# 50 #ogrilashard#" }; --Cerulean Crystal Rod
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32647, price = "4 #ogrilacrystal# 100 #ogrilashard#" }; --Shard-bound Bracers
		[2] = { itemID = 32648, price = "4 #ogrilacrystal# 100 #ogrilashard#" }; --Vortex Walking Boots
		[3] = { itemID = 32651 , price = "4 #ogrilacrystal# 100 #ogrilashard#" }; --Crystal Orb of Enlightenment
		[4] = { itemID = 32645, price = "4 #ogrilacrystal# 100 #ogrilashard#" }; --Crystalline Crossbow
		[5] = { itemID = 32828 , price = "10 #ogrilashard#" }; --Ogri'la Tabard
		[6] = { itemID = 32569 }; --Apexis Shard
	};
};

-------------------------
--- Sha'tari Skyguard ---
-------------------------

AtlasLoot_Data["Skyguard"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Sha'tari Skyguard"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32722 }; --Enriched Terocone Juice
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 32721 }; --Skyguard Rations
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 32539 }; --Skyguard's Drape
		[2] = { itemID = 32538 }; --Skywitch's Drape
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32770 }; --Skyguard Silver Cross
		[2] = { itemID = 32771 }; --Airman's Ribbon of Gallantry
		[3] = { itemID = 32319 }; --Blue Riding Nether Ray
		[4] = { itemID = 32314 }; --Green Riding Nether Ray
		[5] = { itemID = 32317 }; --Red Riding Nether Ray
		[6] = { itemID = 32316 }; --Purple Riding Nether Ray
		[7] = { itemID = 32318 }; --Silver Riding Nether Ray
		[8] = { itemID = 38628 }; --Nether Ray Fry
		[9] = { itemID = 32445 }; --Skyguard Tabard
	};
};

-------------------------------
--- Shattered Sun Offensive ---
-------------------------------

AtlasLoot_Data["SunOffensive"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Shattered Sun Offensive"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 35244 }; --Design: Bold Crimson Spinel
		[2] = { itemID = 35245 }; --Design: Bright Crimson Spinel
		[3] = { itemID = 35255 }; --Design: Brilliant Lionseye
		[4] = { itemID = 35246 }; --Design: Delicate Crimson Spinel
		[5] = { itemID = 35256 }; --Design: Gleaming Lionseye
		[6] = { itemID = 35262 }; --Design: Lustrous Empyrean Sapphire
		[7] = { itemID = 35248 }; --Design: Runed Crimson Spinel
		[8] = { itemID = 35260 }; --Design: Smooth Lionseye
		[9] = { itemID = 35263 }; --Design: Solid Empyrean Sapphire
		[10] = { itemID = 35264 }; --Design: Sparkling Empyrean Sapphire
		[11] = { itemID = 35249 }; --Design: Subtle Crimson Spinel
		[12] = { itemID = 35250 }; --Design: Teardrop Crimson Spinel
		[13] = { itemID = 35261 }; --Design: Thick Lionseye
		[14] = { itemID = 34780 }; --Naaru Ration
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 35238 }; --Design: Balanced Shadowsong Amethyst
		[2] = { itemID = 35251 }; --Design: Dazzling Seaspray Emerald
		[3] = { itemID = 35266 }; --Design: Glinting Pyrestone
		[4] = { itemID = 35239 }; --Design: Glowing Shadowsong Amethyst
		[5] = { itemID = 35240 }; --Design: Infused Shadowsong Amethyst
		[6] = { itemID = 35253 }; --Design: Jagged Seaspray Emerald
		[7] = { itemID = 35268 }; --Design: Luminous Pyrestone
		[8] = { itemID = 35269 }; --Design: Potent Pyrestone
		[9] = { itemID = 35254 }; --Design: Radiant Seaspray Emerald
		[10] = { itemID = 34872 }; --Formula: Void Shatter
		[11] = { itemID = 35500 }; --Formula: Enchant Chest - Defense
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 35769 }; --Design: Forceful Seaspray Emerald
		[2] = { itemID = 35768 }; --Design: Quick Lionseye
		[3] = { itemID = 35767 }; --Design: Reckless Pyrestone
		[4] = { itemID = 35766 }; --Design: Steady Seaspray Emerald
		[5] = { itemID = 34665 }; --Bombardier's Blade
		[6] = { itemID = 34667 }; --Archmage's Guile
		[7] = { itemID = 34672 }; --Inuuro's Blade
		[8] = { itemID = 34666 }; --The Sunbreaker
		[9] = { itemID = 34671 }; --K'iru's Presage
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
		[1] = { itemID = 34678 }; --Shattered Sun Pendant of Acumen
		[2] = { itemID = 34679 }; --Shattered Sun Pendant of Might
		[3] = { itemID = 34680 }; --Shattered Sun Pendant of Resolve
		[4] = { itemID = 34677 }; --Shattered Sun Pendant of Restoration
		[5] = { itemID = 34676 }; --Dawnforged Defender
		[6] = { itemID = 34675 }; --Sunward Crest
		[7] = { itemID = 35325 }; --Design: Forceful Talasite
		[8] = { itemID = 35322 }; --Design: Quick Dawnstone
		[9] = { itemID = 35323 }; --Design: Reckless Noble Topaz
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
--- Sporeggar ---
-----------------

AtlasLoot_Data["Sporeggar"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Sporeggar"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 27689, price = "2 #glowcap#" }; --Recipe: Sporeling Snack
		[2] = { itemID = 30156, price = "1 #glowcap#" };
		[3] = { itemID = 25548 , price = "1 #glowcap#" }; --Tallstalk Mushroom
		[4] = { itemID = 24539 , price = "2 #glowcap#" }; --Marsh Lichen
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 25827, price = "25 #glowcap#" }; --Muck-Covered Drape
		[2] = { itemID = 25828, price = "15 #glowcap#" }; --Petrified Lichen Guard
		[3] = { itemID = 25550 , price = "1 #glowcap#" }; --Redcap Toadstool
		[4] = { itemID = 24245 }; --Glowcap
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29150, price = "45 #glowcap#" }; --Hardened Stone Shard
		[2] = { itemID = 29149, price = "20 #glowcap#" }; --Sporeling's Firestick
		[3] = { itemID = 22916, price = "25 #glowcap#" }; --Recipe: Transmute Primal Earth to Water
		[4] = { itemID = 38229, price = "25 #glowcap#" };
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 34478, price = "30 #glowcap#" }; --Tiny Sporebat
		[2] = { itemID = 22906, price = "30 #glowcap#" }; --Recipe: Shrouding Potion
		[3] = { itemID = 31775 , price = "10 #glowcap#" }; --Sporeggar Tabard
	};
};

-----------------
--- The Aldor ---
-----------------

AtlasLoot_Data["Aldor"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Aldor"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 23149 }; --Design: Gleaming Golden Draenite
		[2] = { itemID = 23601 }; --Plans: Flamebane Bracers
		[3] = { itemID = 30842 }; --Pattern: Flameheart Bracers
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29129 }; --Anchorite's Robes
		[2] = { itemID = 23145 }; --Design: Royal Shadow Draenite
		[3] = { itemID = 23603 }; --Plans: Flamebane Gloves
		[4] = { itemID = 29704 }; --Pattern: Blastguard Belt
		[5] = { itemID = 29693 }; --Pattern: Flamescale Belt
		[6] = { itemID = 30843 }; --Pattern: Flameheart Gloves
		[7] = { itemID = 24293 }; --Pattern: Silver Spellthread
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
		[1] = { itemID = 29127 }; --Vindicator's Hauberk
		[2] = { itemID = 29128 }; --Lightwarden's Band
		[3] = { itemID = 29130 }; --Auchenai Staff
		[4] = { itemID = 24177 }; --Design: Pendant of Shadow's End
		[5] = { itemID = 23604 }; --Plans: Flamebane Breastplate
		[6] = { itemID = 29703 }; --Pattern: Blastguard Boots
		[7] = { itemID = 29691 }; --Pattern: Flamescale Boots
		[8] = { itemID = 25721 }; --Pattern: Vindicator's Armor Kit
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
		[1] = { itemID = 29123 }; --Medallion of the Lightbearer
		[2] = { itemID = 29124 }; --Vindicator's Brand
		[3] = { itemID = 23602 }; --Plans: Flamebane Helm
		[4] = { itemID = 29702 }; --Pattern: Blastguard Pants
		[5] = { itemID = 29689 }; --Pattern: Flamescale Leggings
		[6] = { itemID = 24295 }; --Pattern: Golden Spellthread
		[7] = { itemID = 30844 }; --Pattern: Flameheart Vest
		[8] = { itemID = 31779 }; --Aldor Tabard
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
--- The Consortium ---
----------------------

AtlasLoot_Data["Consortium"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Consortium"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25732 }; --Pattern: Fel Leather Gloves
		[2] = { itemID = 28274 }; --Formula: Enchant Cloak - Spell Penetration
		[3] = { itemID = 23146 }; --Design: Shifting Shadow Draenite
		[4] = { itemID = 23136 }; --Design: Luminous Flame Spessarite
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29457 }; --Nethershard
		[2] = { itemID = 29456 }; --Gift of the Ethereal
		[3] = { itemID = 29118 }; --Smuggler's Ammo Pouch
		[4] = { itemID = 25733 }; --Pattern: Fel Leather Boots
		[5] = { itemID = 23134 }; --Design: Delicate Blood Garnet
		[6] = { itemID = 23155 }; --Design: Lustrous Azure Moonstone
		[7] = { itemID = 23150 }; --Design: Thick Golden Draenite
		[8] = { itemID = 22552 }; --Formula: Enchant Weapon - Major Striking
		[9] = { itemID = 25908 }; --Design: Swift Skyfire Diamond
		[10] = { itemID = 25902 }; --Design: Powerful Earthstorm Diamond
		[11] = { itemID = 24314 }; --Pattern: Bag of Jewels
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29117 }; --Stormspire Vest
		[2] = { itemID = 29116 }; --Nomad's Leggings
		[3] = { itemID = 29115 }; --Consortium Blaster
		[4] = { itemID = 24178 }; --Design: Pendant of the Null Rune
		[5] = { itemID = 25734 }; --Pattern: Fel Leather Leggings
		[6] = { itemID = 22535 }; --Formula: Enchant Ring - Striking
		[7] = { itemID = 23874 }; --Schematic: Elemental Seaforium Charge
		[8] = { itemID = 25903 }; --Design: Bracing Earthstorm Diamond
		[9] = { itemID = 33156 }; --Design: Crimson Sun
		[10] = { itemID = 33305 }; --Design: Don Julio's Heart
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29122 }; --Nether Runner's Cowl
		[2] = { itemID = 29119 }; --Haramad's Bargain
		[3] = { itemID = 29121 }; --Guile of Khoraazi
		[4] = { itemID = 33622 }; --Design: Relentless Earthstorm Diamond
		[5] = { itemID = 31776 }; --Consortium Tabard
	};
};

-------------------
--- The Mag'har ---
-------------------

AtlasLoot_Data["Maghar"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Mag'har"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25741 }; --Pattern: Netherfury Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29143 }; --Clefthoof Hide Quiver
		[2] = { itemID = 25742 }; --Pattern: Netherfury Leggings
		[3] = { itemID = 34174 }; --Pattern: Drums of Restoration
		[4] = { itemID = 34172 }; --Pattern: Drums of Speed
		[5] = { itemID = 29664 }; --Pattern: Reinforced Mining Bag
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29147 }; --Talbuk Hide Spaulders
		[2] = { itemID = 29141 }; --Tempest Leggings
		[3] = { itemID = 29145 }; --Band of Ancestral Spirits
		[4] = { itemID = 25743 }; --Pattern: Netherfury Boots
		[5] = { itemID = 22917 }; --Recipe: Transmute Primal Fire to Earth
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29102 }; --Reins of the Cobalt War Talbuk
		[2] = { itemID = 29104 }; --Reins of the Silver War Talbuk
		[3] = { itemID = 29105 }; --Reins of the Tan War Talbuk
		[4] = { itemID = 29103 }; --Reins of the White War Talbuk
		[5] = { itemID = 31829 }; --Reins of the Cobalt Riding Talbuk
		[6] = { itemID = 31831 }; --Reins of the Silver Riding Talbuk
		[7] = { itemID = 31833 }; --Reins of the Tan Riding Talbuk
		[8] = { itemID = 31835 }; --Reins of the White Riding Talbuk
		[9] = { itemID = 29139 }; --Ceremonial Cover
		[10] = { itemID = 29135 }; --Earthcaller's Headdress
		[11] = { itemID = 29137 }; --Hellscream's Will
		[12] = { itemID = 31773 }; --Mag'har Tabard
	};
};

------------------------------
--- The Scale of the Sands ---
------------------------------

AtlasLoot_Data["ScaleSands"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Scale of the Sands"];
	scaleOfSandsRings;
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32274 }; --Design: Bold Crimson Spinel
		[2] = { itemID = 32283 }; --Design: Bright Crimson Spinel
		[3] = { itemID = 32277 }; --Design: Delicate Crimson Spinel
		[4] = { itemID = 32282 }; --Design: Runed Crimson Spinel
		[5] = { itemID = 32284 }; --Design: Subtle Crimson Spinel
		[6] = { itemID = 32281 }; --Design: Teardrop Crimson Spinel
		[7] = { itemID = 32288 }; --Design: Lustrous Empyrean Sapphire
		[8] = { itemID = 32286 }; --Design: Solid Empyrean Sapphire
		[9] = { itemID = 32287 }; --Design: Sparkling Empyrean Sapphire
		[10] = { itemID = 32290 }; --Design: Brilliant Lionseye
		[11] = { itemID = 32293 }; --Design: Gleaming Lionseye
		[12] = { itemID = 32291 }; --Design: Smooth Lionseye
		[13] = { itemID = 32294 }; --Design: Thick Lionseye
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 35763 }; --Design: Quick Lionseye
		[2] = { itemID = 32306 }; --Design: Glinting Pyrestone
		[3] = { itemID = 32305 }; --Design: Luminous Pyrestone
		[4] = { itemID = 32304 }; --Design: Potent Pyrestone
		[5] = { itemID = 35762 }; --Design: Reckless Pyrestone
		[6] = { itemID = 32299 }; --Design: Balanced Shadowsong Amethyst
		[7] = { itemID = 32301 }; --Design: Glowing Shadowsong Amethyst
		[8] = { itemID = 32300 }; --Design: Infused Shadowsong Amethyst
		[9] = { itemID = 32311 }; --Design: Dazzling Seaspray Emerald
		[10] = { itemID = 35765 }; --Design: Forceful Seaspray Emerald
		[11] = { itemID = 32312 }; --Design: Jagged Seaspray Emerald
		[12] = { itemID = 32310 }; --Design: Radiant Seaspray Emerald
		[13] = { itemID = 35764 }; --Design: Steady Seaspray Emerald
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 31737 }; --Timeless Arrow
		[2] = { itemID = 31735 }; --Timeless Shell
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32292 }; --Design: Rigid Lionseye
		[2] = { itemID = 32308 }; --Design: Wicked Pyrestone
		[3] = { itemID = 32309 }; --Design: Enduring Seaspray Emerald
		[4] = { itemID = 32302 }; --Design: Royal Shadowsong Amethyst
	};
};

-------------------
--- The Scryers ---
-------------------

AtlasLoot_Data["Scryer"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Scryers"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 23133 }; --Design: Runed Blood Garnet
		[2] = { itemID = 23597 }; --Plans: Enchanted Adamantite Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 23143 }; --Design: Dazzling Deep Peridot
		[2] = { itemID = 23598 }; --Plans: Enchanted Adamantite Boots
		[3] = { itemID = 29701 }; --Pattern: Enchanted Clefthoof Boots
		[4] = { itemID = 29682 }; --Pattern: Enchanted Felscale Gloves
		[5] = { itemID = 24292 }; --Pattern: Mystic Spellthread
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
		[1] = { itemID = 29131 }; --Retainer's Leggings
		[2] = { itemID = 29134 }; --Gauntlets of the Chosen
		[3] = { itemID = 29132 }; --Scryer's Bloodgem
		[4] = { itemID = 29133 }; --Seer's Cane
		[5] = { itemID = 24176 }; --Design: Pendant of Withering
		[6] = { itemID = 22908 }; --Recipe: Elixir of Major Firepower
		[7] = { itemID = 23599 }; --Plans: Enchanted Adamantite Breastplate
		[8] = { itemID = 29700 }; --Pattern: Enchanted Clefthoof Gloves
		[9] = { itemID = 29684 }; --Pattern: Enchanted Felscale Boots
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
		[1] = { itemID = 29126 }; --Seer's Signet
		[2] = { itemID = 29125 }; --Retainer's Blade
		[3] = { itemID = 23600 }; --Plans: Enchanted Adamantite Leggings
		[4] = { itemID = 29698 }; --Pattern: Enchanted Clefthoof Leggings
		[5] = { itemID = 29677 }; --Pattern: Enchanted Felscale Leggings
		[6] = { itemID = 24294 }; --Pattern: Runic Spellthread
		[7] = { itemID = 31780 }; --Scryers Tabard
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
--- The Sha'tar ---
-------------------

AtlasLoot_Data["Shatar"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Sha'tar"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25904 }; --Design: Insightful Earthstorm Diamond
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29180 }; --Blessed Scale Girdle
		[2] = { itemID = 29179 }; --Xi'ri's Gift
		[3] = { itemID = 24182 }; --Design: Talasite Owl
		[4] = { itemID = 29191 }; --Arcanum of Power
		[5] = { itemID = 22915 }; --Recipe: Transmute Primal Air to Fire
		[6] = { itemID = 28281 }; --Formula: Enchant Weapon - Major Healing
		[7] = { itemID = 13517 }; --Recipe: Alchemist's Stone
		[8] = { itemID = 22537 }; --Formula: Enchant Ring - Healing Power
		[9] = { itemID = 33159 }; --Design: Blood of Amber
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 30826 }; --Design: Ring of Arcane Shielding
		[2] = { itemID = 29195 }; --Arcanum of Arcane Warding
		[3] = { itemID = 28273 }; --Formula: Enchant Gloves - Major Healing
		[4] = { itemID = 33155 }; --Design: Kailee's Rose
		[5] = { itemID = 29717 }; --Pattern: Drums of Battle
		[6] = { itemID = 30634 }; --Warpforged Key
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29177 }; --A'dal's Command
		[2] = { itemID = 29175 }; --Gavel of Pure Light
		[3] = { itemID = 29176 }; --Crest of the Sha'tar
		[4] = { itemID = 33153 }; --Formula: Enchant Gloves - Threat
		[5] = { itemID = 31354 }; --Recipe: Flask of the Titans
		[6] = { itemID = 31781 }; --Sha'tar Tabard
	};
};

----------------------
--- The Violet Eye ---
----------------------

AtlasLoot_Data["VioletEye"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["The Violet Eye"];
	{
		Name = "Rings";
		[1] = { icon = "INV_Jewelry_Ring_62", name = WHITE.. AL["Path of the Violet Assassin"] };
		[2] = { itemID = 29280 }; --Violet Signet
		[3] = { itemID = 29281 }; --Violet Signet
		[4] = { itemID = 29282 }; --Violet Signet
		[5] = { itemID = 29283 }; --Violet Signet of the Master Assassin
		[7] = { icon = "INV_Jewelry_Ring_62", name = WHITE.. AL["Path of the Violet Mage"] };
		[8] = { itemID = 29284 }; --Violet Signet
		[9] = { itemID = 29285 }; --Violet Signet
		[10] = { itemID = 29286 }; --Violet Signet
		[11] = { itemID = 29287 }; --Violet Signet of the Archmage
		[16] = { icon = "INV_Jewelry_Ring_62", name = WHITE.. AL["Path of the Violet Restorer"] };
		[17] = { itemID = 29288 }; --Violet Signet
		[18] = { itemID = 29289 }; --Violet Signet
		[19] = { itemID = 29291 }; --Violet Signet
		[20] = { itemID = 29290 }; --Violet Signet of the Grand Restorer
		[22] = { icon = "INV_Jewelry_Ring_62", name = WHITE.. AL["Path of the Violet Protector"] };
		[23] = { itemID = 29276 }; --Violet Signet
		[24] = { itemID = 29277 }; --Violet Signet
		[25] = { itemID = 29278 }; --Violet Signet
		[26] = { itemID = 29279 }; --Violet Signet of the Great Protector
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 31113 }; --Violet Badge
		[2] = { itemID = 31395 }; --Plans: Iceguard Helm
		[3] = { itemID = 31393 }; --Plans: Iceguard Breastplate
		[4] = { itemID = 31401 }; --Design: The Frozen Eye
		[5] = { itemID = 29187 }; --Inscription of Endurance
		[6] = { itemID = 33209 }; --Recipe: Flask of Chromatic Wonder
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 34581 }; --Mysterious Arrow
		[2] = { itemID = 34582 }; --Mysterious Shell
		[3] = { itemID = 31394 }; --Plans: Iceguard Leggings
		[4] = { itemID = 33205 }; --Pattern: Shadowprowler's Chestguard
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 33124 }; --Pattern: Cloak of Darkness
		[2] = { itemID = 33165 }; --Formula: Enchant Weapon - Greater Agility
	};
};

-----------------
--- Thrallmar ---
-----------------

AtlasLoot_Data["Thrallmar"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Thrallmar"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25738 }; --Pattern: Felstalker Belt
		[2] = { itemID = 31359 }; --Design: Enduring Deep Peridot
		[3] = { itemID = 24000 }; --Formula: Enchant Bracer - Superior Healing
		[4] = { itemID = 24006 }; --Grunt's Waterskin
		[5] = { itemID = 24009 }; --Dried Fruit Rations
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 25824 }; --Farseer's Band
		[2] = { itemID = 25823 }; --Grunt's Waraxe
		[3] = { itemID = 25739 }; --Pattern: Felstalker Bracers
		[4] = { itemID = 25740 }; --Pattern: Felstalker Breastplate
		[5] = { itemID = 29197 }; --Arcanum of Fire Warding
		[6] = { itemID = 29232 }; --Recipe: Transmute Skyfire Diamond
		[7] = { itemID = 24001 }; --Recipe: Elixir of Major Agility
		[8] = { itemID = 31361 }; --Pattern: Cobrahide Leg Armor
		[9] = { itemID = 30637 }; --Flamewrought Key
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29168 }; --Ancestral Band
		[2] = { itemID = 29167 }; --Blackened Spear
		[3] = { itemID = 32882 }; --Hellfire Shot
		[4] = { itemID = 31358 }; --Design: Dawnstone Crab
		[5] = { itemID = 29190 }; --Arcanum of Renewal
		[6] = { itemID = 24003 }; --Formula: Enchant Chest - Exceptional Stats
		[7] = { itemID = 34201 }; --Pattern: Netherscale Ammo Pouch
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29155 }; --Stormcaller
		[2] = { itemID = 29165 }; --Warbringer
		[3] = { itemID = 29152 }; --Marksman's Bow
		[4] = { itemID = 33151 }; --Formula: Enchant Cloak - Subtlety
		[5] = { itemID = 24002 }; --Plans: Felsteel Shield Spike
		[6] = { itemID = 31362 }; --Pattern: Nethercobra Leg Armor
		[7] = { itemID = 24004 }; --Thrallmar Tabard
	};
};

--------------------
--- Tranquillien ---
--------------------

AtlasLoot_Data["Tranquillien"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleFaction["Tranquillien"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 22991 }; --Apprentice Boots
		[2] = { itemID = 22992 }; --Bogwalker Boots
		[3] = { itemID = 22993 }; --Volunteer's Greaves
		[4] = { itemID = 28164 }; --Tranquillien Flamberge
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 28155 }; --Apothecary's Waistband
		[2] = { itemID = 28158 }; --Batskin Belt
		[3] = { itemID = 28162 }; --Tranquillien Defender's Girdle
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 22986 }; --Apothecary's Robe
		[2] = { itemID = 22987 }; --Deathstalker's Vest
		[3] = { itemID = 22985 }; --Suncrown Hauberk
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 22990 }; --Tranquillien Champion's Cloak
	};
};

------------
--- Misc ---
------------

AtlasLoot_Data["ShattrathFlasks"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Shattrath Flasks";
	{
		Name = "Shattrath Flasks";
		[1] = { itemID = 32898 }; --Shattrath Flask of Fortification
		[2] = { itemID = 32899 }; --Shattrath Flask of Mighty
		[3] = { itemID = 32901 }; --Shattrath Flask of Relentless
		[4] = { itemID = 32900 }; --Shattrath Flask of Supreme Power
	};
};

-----------
--- PvP ---
-----------

---------------------------------------------------------------
--- World PvP - Hellfire Peninsula: Hellfire Fortifications ---
---------------------------------------------------------------

AtlasLoot_Data["PVPHellfire"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Hellfire Fortifications"];
	{
		Name = AL["Hellfire Fortifications"];
		[1] = { itemID = 27833, desc = "=ds=15 #markthrallmarhhold#" }; --Band of the Victor
		[2] = { itemID = 27786, desc = "=ds=10 #markthrallmarhhold#" }; --Barbed Deep Peridot
		[3] = { itemID = 28360, desc = "=ds=10 #markthrallmarhhold#" }; --Mighty Blood Garnet
		[5] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"] };
		[6] = { itemID = 24520, desc = "=ds=5 #markhhold#" }; --Honor Hold Favor
		[7] = { itemID = 24579, desc = "=ds="..AL["Currency (Alliance)"] }; --Mark of Honor Hold
		[16] = { itemID = 27830, desc = "=ds=15 #markthrallmarhhold#" }; --Circlet of the Victor
		[17] = { itemID = 27785, desc = "=ds=10 #markthrallmarhhold#" }; --Notched Deep Peridot
		[18] = { itemID = 27777, desc = "=ds=10 #markthrallmarhhold#" }; --Stark Blood Garnet
		[20] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"] };
		[21] = { itemID = 24522, desc = "=ds=5 #markthrallmar#" }; --Thrallmar Favor
		[22] = { itemID = 24581, desc = "=ds="..AL["Currency (Horde)"] }; --Mark of Thrallmar
	};
};

AtlasLoot_Data["PVPHalaa"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Nagrand"] .. ": " .. AL["Halaa"];
	{
		Name = "Page 1";
		[1] = { itemID = 28915 , price = "70 #halaabattle# 15 #halaaresearch#" }; --Reins of the Dark Riding Talbuk
		[2] = { itemID = 27679, price = "100 #halaabattle#" }; --Sublime Mystic Dawnstone
		[3] = { itemID = 27649, price = "40 #halaabattle# 2 #halaaresearch#" }; --Hierophant's Leggings
		[4] = { itemID = 27648, price = "40 #halaabattle# 2 #halaaresearch#" }; --Dreamstalker Leggings
		[5] = { itemID = 27650, price = "40 #halaabattle# 2 #halaaresearch#" }; --Shadowstalker's Leggings
		[6] = { itemID = 27647, price = "40 #halaabattle# 2 #halaaresearch#" }; --Marksman's Legguards
		[7] = { itemID = 27652, price = "40 #halaabattle# 2 #halaaresearch#" }; --Stormbreaker's Leggings
		[8] = { itemID = 27654, price = "40 #halaabattle# 2 #halaaresearch#" }; --Avenger's Legguards
		[9] = { itemID = 27653, price = "40 #halaabattle# 2 #halaaresearch#" }; --Slayer's Legguards
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
		[27] = { itemID = 32071, desc = "2 #halaaresearch#" }; --Recipe: Elixir of Ironskin
		[29] = { itemID = 26044 }; --Halaa Research Token
	};
	{
		Name = "Page 2";
		[1] = { itemID = 30611 }; --Halaani Razorshaft
		[2] = { itemID = 30615 }; --Halaani Whiskey
		[4] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"] };
		[5] = { itemID = 30598 }; --Don Amancio's Heart
		[6] = { itemID = 30597 }; --Halaani Claymore
		[7] = { itemID = 30599 }; --Avenging Blades
		[16] = { itemID = 30612 }; --Halaani Grimshot
		[19] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"] };
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
		[1] = { itemID = 28553 , price = "50 #spiritshard#" }; --Band of the Exorcist
		[2] = { itemID = 28557, price = "8 #spiritshard#" }; --Swift Starfire Diamond
		[3] = { itemID = 28759, price = "18 #spiritshard#" }; --Exorcist's Dreadweave Hood
		[4] = { itemID = 28574, price = "18 #spiritshard#" }; --Exorcist's Dragonhide Helm
		[5] = { itemID = 28575, price = "18 #spiritshard#" }; --Exorcist's Wyrmhide Helm
		[6] = { itemID = 28577, price = "18 #spiritshard#" }; --Exorcist's Linked Helm
		[7] = { itemID = 28560, price = "18 #spiritshard#" }; --Exorcist's Lamellar Helm
		[8] = { itemID = 28761, price = "18 #spiritshard#" }; --Exorcist's Scaled Helm
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
		[1] = { itemID = 27990, price = "15 #markthrallmarhhold#" }; --Idol of Savagery
		[2] = { itemID = 27984, price = "15 #markthrallmarhhold#" }; --Totem of Impact
		[3] = { itemID = 27922, price = "30 #markthrallmarhhold#" }; --Mark of Defiance
		[4] = { itemID = 27929, price = "15 #markthrallmarhhold#" }; --Terminal Edge
		[5] = { itemID = 27939, price = "15 #markthrallmarhhold#" }; --Incendic Rod
		[7] = { itemID = 24579, desc = "=ds="..AL["Currency (Alliance)"] }; --Mark of Honor Hold
		[16] = { itemID = 27983, price = "15 #markthrallmarhhold#" }; --Libram of Zeal
		[17] = { itemID = 27920, price = "30 #markthrallmarhhold#" }; --Mark of Conquest
		[18] = { itemID = 27927, price = "30 #markthrallmarhhold#" }; --Mark of Vindication
		[19] = { itemID = 27930, price = "15 #markthrallmarhhold#" }; --Splintermark
		[22] = { itemID = 24581, desc = "=ds="..AL["Currency (Horde)"] }; --Mark of Thrallmar
	};
};

-------------------------------------
--- Rep-PvP Level 70 - Armor Sets ---
-------------------------------------

AtlasLoot_Data["PVP70RepGear"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Rep PVP Gear";
	{
		Name = BabbleInventory["Cloth"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Satin Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[2] = { itemID = 35339, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Hood
		[3] = { itemID = 35341, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Mantle
		[4] = { itemID = 35342, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Robe
		[5] = { itemID = 35338, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Gloves
		[6] = { itemID = 35340, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Satin Leggings
		[8] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Mooncloth Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[9] = { itemID = 35333, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Mooncloth Cowl
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
		[1] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Dragonhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[2] = { itemID = 35357, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Helm
		[3] = { itemID = 35359, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Spaulders
		[4] = { itemID = 35360, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Robe
		[5] = { itemID = 35356, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Gloves
		[6] = { itemID = 35358, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Dragonhide Legguards
		[8] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Wyrmhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[9] = { itemID = 35372, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Wyrmhide Helm
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
		[1] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Linked Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[2] = { itemID = 35383, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Helm
		[3] = { itemID = 35385, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Spaulders
		[4] = { itemID = 35381, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Armor
		[5] = { itemID = 35382, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Gauntlets
		[6] = { itemID = 35384, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Linked Leggings
		[8] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Mail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[9] = { itemID = 35388, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Seer's Mail Helm
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
		[1] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Crusader's Scaled Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[2] = { itemID = 35414, desc = "=ds="..BabbleFaction["Keepers of Time"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Helm
		[3] = { itemID = 35416, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Shoulders
		[4] = { itemID = 35412, desc = "=ds="..BabbleFaction["Lower City"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Chestpiece
		[5] = { itemID = 35413, desc = "=ds="..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Gauntlets
		[6] = { itemID = 35415, desc = "=ds="..BabbleFaction["Cenarion Expedition"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Scaled Legguards
		[8] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Crusader's Ornamented Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[9] = { itemID = 35404, desc = "=ds="..BabbleFaction["The Sha'tar"]..", =ec1="..BabbleFaction["Honored"] }; --Crusader's Ornamented Headguard
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
		[1] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Satin Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[2] = { itemID = 28705 }; --Grand Marshal's Satin Hood
		[3] = { itemID = 28707 }; --Grand Marshal's Satin Mantle
		[4] = { itemID = 28708 }; --Grand Marshal's Satin Robe
		[5] = { itemID = 28704 }; --Grand Marshal's Satin Gloves
		[6] = { itemID = 28706 }; --Grand Marshal's Satin Leggings
		[8] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Mooncloth Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[9] = { itemID = 31622 }; --Grand Marshal's Mooncloth Cowl
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
		[1] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Dragonhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[2] = { itemID = 28619 }; --Grand Marshal's Dragonhide Helm
		[3] = { itemID = 28622 }; --Grand Marshal's Dragonhide Spaulders
		[4] = { itemID = 28623 }; --Grand Marshal's Dragonhide Robe
		[5] = { itemID = 28618 }; --Grand Marshal's Dragonhide Gloves
		[6] = { itemID = 28620 }; --Grand Marshal's Dragonhide Legguards
		[8] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Wyrmhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[9] = { itemID = 31590 }; --Grand Marshal's Wyrmhide Helm
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
		[1] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Linked Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[2] = { itemID = 28691 }; --Grand Marshal's Linked Helm
		[3] = { itemID = 28693 }; --Grand Marshal's Linked Spaulders
		[4] = { itemID = 28689 }; --Grand Marshal's Linked Armor
		[5] = { itemID = 28690 }; --Grand Marshal's Linked Gauntlets
		[6] = { itemID = 28692 }; --Grand Marshal's Linked Leggings
		[8] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Seer's Mail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[9] = { itemID = 28696 }; --Grand Marshal's Mail Helm
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
		[1] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Crusader's Scaled Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[2] = { itemID = 28711 }; --Grand Marshal's Scaled Helm
		[3] = { itemID = 28713 }; --Grand Marshal's Scaled Shoulders
		[4] = { itemID = 28709 }; --Grand Marshal's Scaled Chestpiece
		[5] = { itemID = 28710 }; --Grand Marshal's Scaled Gauntlets
		[6] = { itemID = 28712 }; --Grand Marshal's Scaled Legguards
		[8] = { icon = "INV_BannerPVP_02", name = "=q6="..AL["Crusader's Ornamented Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[9] = { itemID = 31632 }; --Grand Marshal's Ornamented Headguard
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
		[1] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Satin Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[2] = { itemID = 28857 }; --High Warlord's Satin Hood
		[3] = { itemID = 28859 }; --High Warlord's Satin Mantle
		[4] = { itemID = 28860 }; --High Warlord's Satin Robe
		[5] = { itemID = 28856 }; --High Warlord's Satin Gloves
		[6] = { itemID = 28858 }; --High Warlord's Satin Leggings
		[8] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Mooncloth Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"] };
		[9] = { itemID = 31626 }; --High Warlord's Mooncloth Cowl
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
		[1] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Dragonhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[2] = { itemID = 28812 }; --High Warlord's Dragonhide Helm
		[3] = { itemID = 28814 }; --High Warlord's Dragonhide Spaulders
		[4] = { itemID = 28815 }; --High Warlord's Dragonhide Robe
		[5] = { itemID = 28811 }; --High Warlord's Dragonhide Gloves
		[6] = { itemID = 28813 }; --High Warlord's Dragonhide Legguards
		[8] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Wyrmhide Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["DRUID"] };
		[9] = { itemID = 28872 }; --High Warlord's Wyrmhide Helm
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
		[1] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Seer's Linked Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[2] = { itemID = 28843 }; --High Warlord's Linked Helm
		[3] = { itemID = 28845 }; --High Warlord's Linked Spaulders
		[4] = { itemID = 28841 }; --High Warlord's Linked Armor
		[5] = { itemID = 28842 }; --High Warlord's Linked Gauntlets
		[6] = { itemID = 28844 }; --High Warlord's Linked Leggings
		[8] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Seer's Mail Battlegear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] };
		[9] = { itemID = 28848 }; --High Warlord's Mail Helm
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
		[1] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Crusader's Scaled Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[2] = { itemID = 28863 }; --High Warlord's Scaled Helm
		[3] = { itemID = 28865 }; --High Warlord's Scaled Shoulders
		[4] = { itemID = 28861 }; --High Warlord's Scaled Chestpiece
		[5] = { itemID = 28862 }; --High Warlord's Scaled Gauntlets
		[6] = { itemID = 28864 }; --High Warlord's Scaled Legguards
		[8] = { icon = "INV_BannerPVP_01", name = "=q6="..AL["Crusader's Ornamented Battledgear"], desc = "=ec1="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"] };
		[9] = { itemID = 31637 }; --High Warlord's Ornamented Headguard
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




----------------------------------
--- PvP Level 70 - Accessories ---
----------------------------------

AtlasLoot_Data["PvP70Accessories"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Off Set";
	{
		Name = "PvP Accessories - " .. BabbleFaction["Alliance"];
		[1] = { itemID = 28235, price = "8000 #alliance#" }; --Medallion of the Alliance
		[2] = { itemID = 28237, price = "8000 #alliance#" }; --Medallion of the Alliance
		[3] = { itemID = 28238, price = "8000 #alliance#" }; --Medallion of the Alliance
		[4] = { itemID = 28236, price = "8000 #alliance#" }; --Medallion of the Alliance
		[5] = { itemID = 30349, price = "8000 #alliance#" }; --Medallion of the Alliance
		[6] = { itemID = 28234, price = "8000 #alliance#" }; --Medallion of the Alliance
		[7] = { itemID = 30351, price = "8000 #alliance#" }; --Medallion of the Alliance
		[8] = { itemID = 30348, price = "8000 #alliance#" }; --Medallion of the Alliance
		[9] = { itemID = 30350, price = "8000 #alliance#" }; --Medallion of the Alliance
		[11] = { itemID = 31853, price = "200 #faction#" }; --Major Combat Healing Potion
		[12] = { itemID = 31839, price = "200 #faction#" }; --Major Combat Healing Potion
		[13] = { itemID = 31855, price = "200 #faction#" }; --Major Combat Mana Potion
		[14] = { itemID = 31841, price = "200 #faction#" }; --Major Combat Mana Potion
		[15] = { itemID = 32453, price = "1 #gold# 8 #faction#" }; --Star's Tears
		[16] = { itemID = 37864, price = "40000 #alliance#" }; --Medallion of the Alliance
		[17] = { itemID = 25829, price = "23000 #alliance#" }; --Talisman of the Alliance
		[19] = { itemID = 28120, price = "6885 #faction#" }; --Gleaming Ornate Dawnstone
		[20] = { itemID = 28119, price = "6885 #faction#" }; --Smooth Ornate Dawnstone
		[21] = { itemID = 28362, price = "6885 #faction#" }; --Bold Ornate Ruby
		[22] = { itemID = 28118, price = "6885 #faction#" }; --Runed Ornate Ruby
		[23] = { itemID = 28363, price = "8500 #faction#" }; --Inscribed Ornate Topaz
		[24] = { itemID = 28123, price = "8500 #faction#" }; --Potent Ornate Topaz
		[26] = { itemID = 31838, price = "200 #faction#" }; --Major Combat Healing Potion
		[27] = { itemID = 31852, price = "200 #faction#" }; --Major Combat Healing Potion
		[28] = { itemID = 31840, price = "200 #faction#" }; --Major Combat Mana Potion
		[29] = { itemID = 31854, price = "200 #faction#" }; --Major Combat Mana Potion
	};
	{
		Name = "PvP Accessories - Horde";
		[1] = { itemID = 28241, price = "8000 #horde#" }; --Medallion of the Horde
		[2] = { itemID = 28243, price = "8000 #horde#" }; --Medallion of the Horde
		[3] = { itemID = 28239, price = "8000 #horde#" }; --Medallion of the Horde
		[4] = { itemID = 28242, price = "8000 #horde#" }; --Medallion of the Horde
		[5] = { itemID = 30346, price = "8000 #horde#" }; --Medallion of the Horde
		[6] = { itemID = 28240, price = "8000 #horde#" }; --Medallion of the Horde
		[7] = { itemID = 30345, price = "8000 #horde#" }; --Medallion of the Horde
		[8] = { itemID = 30343, price = "8000 #horde#" }; --Medallion of the Horde
		[9] = { itemID = 30344, price = "8000 #horde#" }; --Medallion of the Horde
		[11] = { itemID = 31853, price = "200 #faction#" }; --Major Combat Healing Potion
		[12] = { itemID = 31839, price = "200 #faction#" }; --Major Combat Healing Potion
		[13] = { itemID = 31855, price = "200 #faction#" }; --Major Combat Mana Potion
		[14] = { itemID = 31841, price = "200 #faction#" }; --Major Combat Mana Potion
		[15] = { itemID = 32453, price = "1 #gold# 8 #faction#" }; --Star's Tears
		[16] = { itemID = 37865, price = "40000 #horde#" }; --Medallion of the Horde
		[17] = { itemID = 24551, price = "23000 #horde#" }; --Talisman of the Horde
		[19] = { itemID = 28120, price = "6885 #faction#" }; --Gleaming Ornate Dawnstone
		[20] = { itemID = 28119, price = "6885 #faction#" }; --Smooth Ornate Dawnstone
		[21] = { itemID = 28362, price = "6885 #faction#" }; --Bold Ornate Ruby
		[22] = { itemID = 28118, price = "6885 #faction#" }; --Runed Ornate Ruby
		[23] = { itemID = 28363, price = "8500 #faction#" }; --Inscribed Ornate Topaz
		[24] = { itemID = 28123, price = "8500 #faction#" }; --Potent Ornate Topaz
		[26] = { itemID = 31838, price = "200 #faction#" }; --Major Combat Healing Potion
		[27] = { itemID = 31852, price = "200 #faction#" }; --Major Combat Healing Potion
		[28] = { itemID = 31840, price = "200 #faction#" }; --Major Combat Mana Potion
		[29] = { itemID = 31854, price = "200 #faction#" }; --Major Combat Mana Potion
	};
	{
		Name = "PvP Accessories";
		[1] = { itemID = 28378, price = "8000 #faction#" }; --Sergeant's Heavy Cape
		[2] = { itemID = 28377, price = "8000 #faction#" }; --Sergeant's Heavy Cloak
		[4] = { itemID = 44431, price = "21000 #faction#" }; --Cloak of Certain Reprieve
		[5] = { itemID = 41591, price = "21000 #faction#" }; --Sergeant's Reinforced Cape
		[6] = { itemID = 41592, price = "21000 #faction#" }; --The Gladiator's Resolution
		[7] = { itemID = 44429, price = "21000 #faction#" }; --Volanthius Shroud
		[9] = { itemID = 41588, price = "36000 #faction#" }; --Battlemaster's Aggression
		[10] = { itemID = 41587, price = "36000 #faction#" }; --Battlemaster's Celerity
		[11] = { itemID = 41590, price = "36000 #faction#" }; --Battlemaster's Courage
		[12] = { itemID = 41589, price = "36000 #faction#" }; --Battlemaster's Resolve
		[14] = { itemID = 28247, price = "10000 #alliance#" }; --Band of Dominance
		[15] = { itemID = 28246, price = "10000 #alliance#" }; --Band of Triumph
		[16] = { itemID = 35132, price = "16000 #faction#" }; --Guardian's Pendant of Conquest
		[17] = { itemID = 35133, price = "16000 #faction#" }; --Guardian's Pendant of Dominance
		[18] = { itemID = 37929, price = "16000 #faction#" }; --Guardian's Pendant of Reprieve
		[19] = { itemID = 35134, price = "16000 #faction#" }; --Guardian's Pendant of Salvation
		[20] = { itemID = 37928, price = "16000 #faction#" }; --Guardian's Pendant of Subjugation
		[21] = { itemID = 35135, price = "16000 #faction#" }; --Guardian's Pendant of Triumph
		[23] = { itemID = 35129, price = "16000 #faction#" }; --Guardian's Band of Dominance
		[24] = { itemID = 35130, price = "16000 #faction#" }; --Guardian's Band of Salvation
		[25] = { itemID = 37927, price = "16000 #faction#" }; --Guardian's Band of Subjugation
		[26] = { itemID = 35131, price = "16000 #faction#" }; --Guardian's Band of Triumph
		[27] = { itemID = 33853, price = "12000 #faction#" }; --Vindicator's Band of Dominance
		[28] = { itemID = 33918, price = "12000 #faction#" }; --Vindicator's Band of Salvation
		[29] = { itemID = 35320, price = "12000 #faction#" }; --Vindicator's Band of Subjugation
		[30] = { itemID = 33919, price = "12000 #faction#" }; --Vindicator's Band of Triumph
	};
};

------------------------------------
--- PvP Level 70 - Non Set Epics ---
------------------------------------

AtlasLoot_Data["PvP70NonSet"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["PvP Non-Set Epics"];
	{
		Name = "Page 1";
		[1] = { itemID = 35168, price = "13000 #faction#" }; --Guardian's Dreadweave Cuffs
		[2] = { itemID = 35153, price = "18000 #faction#" }; --Guardian's Dreadweave Belt
		[3] = { itemID = 35138, price = "18000 #faction#" }; --Guardian's Dreadweave Stalkers
		[5] = { itemID = 35174, price = "13000 #faction#" }; --Guardian's Mooncloth Cuffs
		[6] = { itemID = 35159, price = "18000 #faction#" }; --Guardian's Mooncloth Belt
		[7] = { itemID = 35144, price = "18000 #faction#" }; --Guardian's Mooncloth Slippers
		[9] = { itemID = 35179, price = "13000 #faction#" }; --Guardian's Silk Cuffs
		[10] = { itemID = 35164, price = "18000 #faction#" }; --Guardian's Silk Belt
		[11] = { itemID = 35149, price = "18000 #faction#" }; --Guardian's Silk Footguards
		[16] = { itemID = 35167, price = "13000 #faction#" }; --Guardian's Dragonhide Bracers
		[17] = { itemID = 35152, price = "18000 #faction#" }; --Guardian's Dragonhide Belt
		[18] = { itemID = 35137, price = "18000 #faction#" }; --Guardian's Dragonhide Boots
		[20] = { itemID = 35169, price = "13000 #faction#" }; --Guardian's Kodohide Bracers
		[21] = { itemID = 35154, price = "18000 #faction#" }; --Guardian's Kodohide Belt
		[22] = { itemID = 35139, price = "18000 #faction#" }; --Guardian's Kodohide Boots
		[24] = { itemID = 35171, price = "13000 #faction#" }; --Guardian's Leather Bracers
		[25] = { itemID = 35156, price = "18000 #faction#" }; --Guardian's Leather Belt
		[26] = { itemID = 35141, price = "18000 #faction#" }; --Guardian's Leather Boots
		[28] = { itemID = 35180, price = "13000 #faction#" }; --Guardian's Wyrmhide Bracers
		[29] = { itemID = 35165, price = "18000 #faction#" }; --Guardian's Wyrmhide Belt
		[30] = { itemID = 35150, price = "18000 #faction#" }; --Guardian's Wyrmhide Boots
	};
	{
		Name = "Page 2";
		[1] = { itemID = 35166, price = "13000 #faction#" }; --Guardian's Chain Bracers
		[2] = { itemID = 35151, price = "18000 #faction#" }; --Guardian's Chain Girdle
		[3] = { itemID = 35136, price = "18000 #faction#" }; --Guardian's Chain Sabatons
		[5] = { itemID = 35172, price = "13000 #faction#" }; --Guardian's Linked Bracers
		[6] = { itemID = 35157, price = "18000 #faction#" }; --Guardian's Linked Girdle
		[7] = { itemID = 35142, price = "18000 #faction#" }; --Guardian's Linked Sabatons
		[9] = { itemID = 35173, price = "13000 #faction#" }; --Guardian's Mail Bracers
		[10] = { itemID = 35158, price = "18000 #faction#" }; --Guardian's Mail Girdle
		[11] = { itemID = 35143, price = "18000 #faction#" }; --Guardian's Mail Sabatons
		[13] = { itemID = 35177, price = "13000 #faction#" }; --Guardian's Ringmail Bracers
		[14] = { itemID = 35162, price = "18000 #faction#" }; --Guardian's Ringmail Girdle
		[15] = { itemID = 35147, price = "18000 #faction#" }; --Guardian's Ringmail Sabatons
		[16] = { itemID = 35170, price = "13000 #faction#" }; --Guardian's Lamellar Bracers
		[17] = { itemID = 35155, price = "18000 #faction#" }; --Guardian's Lamellar Belt
		[18] = { itemID = 35140, price = "18000 #faction#" }; --Guardian's Lamellar Greaves
		[20] = { itemID = 35175, price = "13000 #faction#" }; --Guardian's Ornamented Bracers
		[21] = { itemID = 35160, price = "18000 #faction#" }; --Guardian's Ornamented Belt
		[22] = { itemID = 35145, price = "18000 #faction#" }; --Guardian's Ornamented Greaves
		[24] = { itemID = 35176, price = "13000 #faction#" }; --Guardian's Plate Bracers
		[25] = { itemID = 35161, price = "18000 #faction#" }; --Guardian's Plate Belt
		[26] = { itemID = 35146, price = "18000 #faction#" }; --Guardian's Plate Greaves
		[28] = { itemID = 35178, price = "13000 #faction#" }; --Guardian's Scaled Bracers
		[29] = { itemID = 35163, price = "18000 #faction#" }; --Guardian's Scaled Belt
		[30] = { itemID = 35148, price = "18000 #faction#" }; --Guardian's Scaled Greaves
	};
};

--------------------------
--- Arena - Armor Sets ---
--------------------------

AtlasLoot_Data["ArenaDruidTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Druid"];
	{
		Name = AL["Feral"];
		[1] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 28127 }; --Gladiator's Dragonhide Helm
		[3] = { itemID = 28129 }; --Gladiator's Dragonhide Spaulders
		[4] = { itemID = 28130 }; --Gladiator's Dragonhide Tunic
		[5] = { itemID = 28126 }; --Gladiator's Dragonhide Gloves
		[6] = { itemID = 28128 }; --Gladiator's Dragonhide Legguards
		[8] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 31968, price = "15000 #faction#" }; --Merciless Gladiator's Dragonhide Helm
		[10] = { itemID = 31971, price = "13000 #faction#" }; --Merciless Gladiator's Dragonhide Spaulders
		[11] = { itemID = 31972, price = "15000 #faction#" }; --Merciless Gladiator's Dragonhide Tunic
		[12] = { itemID = 31967, price = "12000 #faction#" }; --Merciless Gladiator's Dragonhide Gloves
		[13] = { itemID = 31969, price = "15000 #faction#" }; --Merciless Gladiator's Dragonhide Legguards
		[16] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33672 }; --Vengeful Gladiator's Dragonhide Helm
		[18] = { itemID = 33674 }; --Vengeful Gladiator's Dragonhide Spaulders
		[19] = { itemID = 33675 }; --Vengeful Gladiator's Dragonhide Tunic
		[20] = { itemID = 33671 }; --Vengeful Gladiator's Dragonhide Gloves
		[21] = { itemID = 33673 }; --Vengeful Gladiator's Dragonhide Legguards
		[23] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 34999, price = "1875 #arena#" }; --Brutal Gladiator's Dragonhide Helm
		[25] = { itemID = 35001, price = "1500 #arena#" }; --Brutal Gladiator's Dragonhide Spaulders
		[26] = { itemID = 35002, price = "1875 #arena#" }; --Brutal Gladiator's Dragonhide Tunic
		[27] = { itemID = 34998, price = "1125 #arena#" }; --Brutal Gladiator's Dragonhide Gloves
		[28] = { itemID = 35000, price = "1875 #arena#" }; --Brutal Gladiator's Dragonhide Legguards
	};
	{
		Name = AL["Balance"];
		[1] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 28137 }; --Gladiator's Wyrmhide Helm
		[3] = { itemID = 28139 }; --Gladiator's Wyrmhide Spaulders
		[4] = { itemID = 28140 }; --Gladiator's Wyrmhide Tunic
		[5] = { itemID = 28136 }; --Gladiator's Wyrmhide Gloves
		[6] = { itemID = 28138 }; --Gladiator's Wyrmhide Legguards
		[8] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32057, price = "15000 #faction#" }; --Merciless Gladiator's Wyrmhide Helm
		[10] = { itemID = 32059, price = "13000 #faction#" }; --Merciless Gladiator's Wyrmhide Spaulders
		[11] = { itemID = 32060, price = "15000 #faction#" }; --Merciless Gladiator's Wyrmhide Tunic
		[12] = { itemID = 32056, price = "12000 #faction#" }; --Merciless Gladiator's Wyrmhide Gloves
		[13] = { itemID = 32058, price = "15000 #faction#" }; --Merciless Gladiator's Wyrmhide Legguards
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33768 }; --Vengeful Gladiator's Wyrmhide Helm
		[18] = { itemID = 33770 }; --Vengeful Gladiator's Wyrmhide Spaulders
		[19] = { itemID = 33771 }; --Vengeful Gladiator's Wyrmhide Tunic
		[20] = { itemID = 33767 }; --Vengeful Gladiator's Wyrmhide Gloves
		[21] = { itemID = 33769 }; --Vengeful Gladiator's Wyrmhide Legguards
		[23] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35112, price = "1875 #arena#" }; --Brutal Gladiator's Wyrmhide Helm
		[25] = { itemID = 35114, price = "1500 #arena#" }; --Brutal Gladiator's Wyrmhide Spaulders
		[26] = { itemID = 35115, price = "1875 #arena#" }; --Brutal Gladiator's Wyrmhide Tunic
		[27] = { itemID = 35111, price = "1125 #arena#" }; --Brutal Gladiator's Wyrmhide Gloves
		[28] = { itemID = 35113, price = "1875 #arena#" }; --Brutal Gladiator's Wyrmhide Legguards
	};
	{
		Name = AL["Restoration"];
		[1] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 31376 }; --Gladiator's Kodohide Helm
		[3] = { itemID = 31378 }; --Gladiator's Kodohide Spaulders
		[4] = { itemID = 31379 }; --Gladiator's Kodohide Tunic
		[5] = { itemID = 31375 }; --Gladiator's Kodohide Gloves
		[6] = { itemID = 31377 }; --Gladiator's Kodohide Legguards
		[8] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 31988, price = "15000 #faction#" }; --Merciless Gladiator's Kodohide Helm
		[10] = { itemID = 31990, price = "13000 #faction#" }; --Merciless Gladiator's Kodohide Spaulders
		[11] = { itemID = 31991, price = "15000 #faction#" }; --Merciless Gladiator's Kodohide Tunic
		[12] = { itemID = 31987, price = "12000 #faction#" }; --Merciless Gladiator's Kodohide Gloves
		[13] = { itemID = 31989, price = "15000 #faction#" }; --Merciless Gladiator's Kodohide Legguards
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33691 }; --Vengeful Gladiator's Kodohide Helm
		[18] = { itemID = 33693 }; --Vengeful Gladiator's Kodohide Spaulders
		[19] = { itemID = 33694 }; --Vengeful Gladiator's Kodohide Tunic
		[20] = { itemID = 33690 }; --Vengeful Gladiator's Kodohide Gloves
		[21] = { itemID = 33692 }; --Vengeful Gladiator's Kodohide Legguards
		[23] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35023, price = "1875 #arena#" }; --Brutal Gladiator's Kodohide Helm
		[25] = { itemID = 35025, price = "1500 #arena#" }; --Brutal Gladiator's Kodohide Spaulders
		[26] = { itemID = 35026, price = "1875 #arena#" }; --Brutal Gladiator's Kodohide Tunic
		[27] = { itemID = 35022, price = "1125 #arena#" }; --Brutal Gladiator's Kodohide Gloves
		[28] = { itemID = 35024, price = "1875 #arena#" }; --Brutal Gladiator's Kodohide Legguards
	};
};

AtlasLoot_Data["ArenaHunterTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 28331 }; --Gladiator's Chain Helm
		[3] = { itemID = 28333 }; --Gladiator's Chain Spaulders
		[4] = { itemID = 28334 }; --Gladiator's Chain Armor
		[5] = { itemID = 28335 }; --Gladiator's Chain Gauntlets
		[6] = { itemID = 28332 }; --Gladiator's Chain Leggings
		[8] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 31962, price = "15000 #faction#" }; --Merciless Gladiator's Chain Helm
		[10] = { itemID = 31964, price = "13000 #faction#" }; --Merciless Gladiator's Chain Spaulders
		[11] = { itemID = 31960, price = "15000 #faction#" }; --Merciless Gladiator's Chain Armor
		[12] = { itemID = 31961, price = "12000 #faction#" }; --Merciless Gladiator's Chain Gauntlets
		[13] = { itemID = 31963, price = "15000 #faction#" }; --Merciless Gladiator's Chain Leggings
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33666 }; --Vengeful Gladiator's Chain Helm
		[18] = { itemID = 33668 }; --Vengeful Gladiator's Chain Spaulders
		[19] = { itemID = 33664 }; --Vengeful Gladiator's Chain Armor
		[20] = { itemID = 33665 }; --Vengeful Gladiator's Chain Gauntlets
		[21] = { itemID = 33667 }; --Vengeful Gladiator's Chain Leggings
		[23] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 34992, price = "1875 #arena#" }; --Brutal Gladiator's Chain Helm
		[25] = { itemID = 34994, price = "1500 #arena#" }; --Brutal Gladiator's Chain Spaulders
		[26] = { itemID = 34990, price = "1875 #arena#" }; --Brutal Gladiator's Chain Armor
		[27] = { itemID = 34991, price = "1125 #arena#" }; --Brutal Gladiator's Chain Gauntlets
		[28] = { itemID = 34993, price = "1875 #arena#" }; --Brutal Gladiator's Chain Leggings
	};
};


AtlasLoot_Data["ArenaMageTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 25855 }; --Gladiator's Silk Cowl
		[3] = { itemID = 25854 }; --Gladiator's Silk Amice
		[4] = { itemID = 25856 }; --Gladiator's Silk Raiment
		[5] = { itemID = 25857 }; --Gladiator's Silk Handguards
		[6] = { itemID = 25858 }; --Gladiator's Silk Trousers
		[8] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32048, price = "15000 #faction#" }; --Merciless Gladiator's Silk Cowl
		[10] = { itemID = 32047, price = "13000 #faction#" }; --Merciless Gladiator's Silk Amice
		[11] = { itemID = 32050, price = "15000 #faction#" }; --Merciless Gladiator's Silk Raiment
		[12] = { itemID = 32049, price = "12000 #faction#" }; --Merciless Gladiator's Silk Handguards
		[13] = { itemID = 32051, price = "15000 #faction#" }; --Merciless Gladiator's Silk Trousers
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33758 }; --Vengeful Gladiator's Silk Cowl
		[18] = { itemID = 33757 }; --Vengeful Gladiator's Silk Amice
		[19] = { itemID = 33760 }; --Vengeful Gladiator's Silk Raiment
		[20] = { itemID = 33759 }; --Vengeful Gladiator's Silk Handguards
		[21] = { itemID = 33761 }; --Vengeful Gladiator's Silk Trousers
		[23] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35097, price = "1875 #arena#" }; --Brutal Gladiator's Silk Cowl
		[25] = { itemID = 35096, price = "1500 #arena#" }; --Brutal Gladiator's Silk Amice
		[26] = { itemID = 35099, price = "1875 #arena#" }; --Brutal Gladiator's Silk Raiment
		[27] = { itemID = 35098, price = "1125 #arena#" }; --Brutal Gladiator's Silk Handguards
		[28] = { itemID = 35100, price = "1875 #arena#" }; --Brutal Gladiator's Silk Trousers
	};
};


AtlasLoot_Data["ArenaPaladinTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
	{
		Name = AL["Protection"];
		[1] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Gladiator's Aegis"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 27704 }; --Gladiator's Lamellar Helm
		[3] = { itemID = 27706 }; --Gladiator's Lamellar Shoulders
		[4] = { itemID = 27702 }; --Gladiator's Lamellar Chestpiece
		[5] = { itemID = 27703 }; --Gladiator's Lamellar Gauntlets
		[6] = { itemID = 27705 }; --Gladiator's Lamellar Legguards
		[8] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Gladiator's Aegis"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 31997, price = "15000 #faction#" }; --Merciless Gladiator's Lamellar Helm
		[10] = { itemID = 31996, price = "13000 #faction#" }; --Merciless Gladiator's Lamellar Shoulders
		[11] = { itemID = 31992, price = "15000 #faction#" }; --Merciless Gladiator's Lamellar Chestpiece
		[12] = { itemID = 31993, price = "12000 #faction#" }; --Merciless Gladiator's Lamellar Gauntlets
		[13] = { itemID = 31995, price = "15000 #faction#" }; --Merciless Gladiator's Lamellar Legguards
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Gladiator's Aegis"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33697 }; --Vengeful Gladiator's Lamellar Helm
		[18] = { itemID = 33699 }; --Vengeful Gladiator's Lamellar Shoulders
		[19] = { itemID = 33695 }; --Vengeful Gladiator's Lamellar Chestpiece
		[20] = { itemID = 33696 }; --Vengeful Gladiator's Lamellar Gauntlets
		[21] = { itemID = 33698 }; --Vengeful Gladiator's Lamellar Legguards
		[23] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Gladiator's Aegis"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35029, price = "1875 #arena#" }; --Brutal Gladiator's Lamellar Helm
		[25] = { itemID = 35031, price = "1500 #arena#" }; --Brutal Gladiator's Lamellar Shoulders
		[26] = { itemID = 35027, price = "1875 #arena#" }; --Brutal Gladiator's Lamellar Chestpiece
		[27] = { itemID = 35028, price = "1125 #arena#" }; --Brutal Gladiator's Lamellar Gauntlets
		[28] = { itemID = 35030, price = "1875 #arena#" }; --Brutal Gladiator's Lamellar Legguards
	};
	{
		Name = AL["Retribution"];
		[1] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 27881 }; --Gladiator's Scaled Helm
		[3] = { itemID = 27883 }; --Gladiator's Scaled Shoulders
		[4] = { itemID = 27879 }; --Gladiator's Scaled Chestpiece
		[5] = { itemID = 27880 }; --Gladiator's Scaled Gauntlets
		[6] = { itemID = 27882 }; --Gladiator's Scaled Legguards
		[8] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32041, price = "15000 #faction#" }; --Merciless Gladiator's Scaled Helm
		[10] = { itemID = 32043, price = "13000 #faction#" }; --Merciless Gladiator's Scaled Shoulders
		[11] = { itemID = 32039, price = "15000 #faction#" }; --Merciless Gladiator's Scaled Chestpiece
		[12] = { itemID = 32040, price = "12000 #faction#" }; --Merciless Gladiator's Scaled Gauntlets
		[13] = { itemID = 32042, price = "15000 #faction#" }; --Merciless Gladiator's Scaled Legguards
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33751 }; --Vengeful Gladiator's Scaled Helm
		[18] = { itemID = 33753 }; --Vengeful Gladiator's Scaled Shoulders
		[19] = { itemID = 33749 }; --Vengeful Gladiator's Scaled Chestpiece
		[20] = { itemID = 33750 }; --Vengeful Gladiator's Scaled Gauntlets
		[21] = { itemID = 33752 }; --Vengeful Gladiator's Scaled Legguards
		[23] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35090, price = "1875 #arena#" }; --Brutal Gladiator's Scaled Helm
		[25] = { itemID = 35092, price = "1500 #arena#" }; --Brutal Gladiator's Scaled Shoulders
		[26] = { itemID = 35088, price = "1875 #arena#" }; --Brutal Gladiator's Scaled Chestpiece
		[27] = { itemID = 35089, price = "1125 #arena#" }; --Brutal Gladiator's Scaled Gauntlets
		[28] = { itemID = 35091, price = "1875 #arena#" }; --Brutal Gladiator's Scaled Legguards
	};
	{
		Name = AL["Holy"];
		[1] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 31616 }; --Gladiator's Ornamented Headcover
		[3] = { itemID = 31619 }; --Gladiator's Ornamented Spaulders
		[4] = { itemID = 31613 }; --Gladiator's Ornamented Chestguard
		[5] = { itemID = 31614 }; --Gladiator's Ornamented Gloves
		[6] = { itemID = 31618 }; --Gladiator's Ornamented Legplates
		[8] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32022, price = "15000 #faction#" }; --Merciless Gladiator's Ornamented Headcover
		[10] = { itemID = 32024, price = "13000 #faction#" }; --Merciless Gladiator's Ornamented Spaulders
		[11] = { itemID = 32020, price = "15000 #faction#" }; --Merciless Gladiator's Ornamented Chestguard
		[12] = { itemID = 32021, price = "12000 #faction#" }; --Merciless Gladiator's Ornamented Gloves
		[13] = { itemID = 32023, price = "15000 #faction#" }; --Merciless Gladiator's Ornamented Legplates
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33724 }; --Vengeful Gladiator's Ornamented Headcover
		[18] = { itemID = 33726 }; --Vengeful Gladiator's Ornamented Spaulders
		[19] = { itemID = 33722 }; --Vengeful Gladiator's Ornamented Chestguard
		[20] = { itemID = 33723 }; --Vengeful Gladiator's Ornamented Gloves
		[21] = { itemID = 33725 }; --Vengeful Gladiator's Ornamented Legplates
		[23] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35061, price = "1875 #arena#" }; --Brutal Gladiator's Ornamented Headcover
		[25] = { itemID = 35063, price = "1500 #arena#" }; --Brutal Gladiator's Ornamented Spaulders
		[26] = { itemID = 35059, price = "1875 #arena#" }; --Brutal Gladiator's Ornamented Chestguard
		[27] = { itemID = 35060, price = "1125 #arena#" }; --Brutal Gladiator's Ornamented Gloves
		[28] = { itemID = 35062, price = "1875 #arena#" }; --Brutal Gladiator's Ornamented Legplates
	};
};

AtlasLoot_Data["ArenaPriestTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
	{
		Name = AL["Shadow"];
		[1] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 27708 }; --Gladiator's Satin Hood
		[3] = { itemID = 27710 }; --Gladiator's Satin Mantle
		[4] = { itemID = 27711 }; --Gladiator's Satin Robe
		[5] = { itemID = 27707 }; --Gladiator's Satin Gloves
		[6] = { itemID = 27709 }; --Gladiator's Satin Leggings
		[8] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32035, price = "15000 #faction#" }; --Merciless Gladiator's Satin Hood
		[10] = { itemID = 32037, price = "13000 #faction#" }; --Merciless Gladiator's Satin Mantle
		[11] = { itemID = 32038, price = "15000 #faction#" }; --Merciless Gladiator's Satin Robe
		[12] = { itemID = 32034, price = "12000 #faction#" }; --Merciless Gladiator's Satin Gloves
		[13] = { itemID = 32036, price = "15000 #faction#" }; --Merciless Gladiator's Satin Leggings
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33745 }; --Vengeful Gladiator's Satin Hood
		[18] = { itemID = 33747 }; --Vengeful Gladiator's Satin Mantle
		[19] = { itemID = 33748 }; --Vengeful Gladiator's Satin Robe
		[20] = { itemID = 33744 }; --Vengeful Gladiator's Satin Gloves
		[21] = { itemID = 33746 }; --Vengeful Gladiator's Satin Leggings
		[23] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35084, price = "1875 #arena#" }; --Brutal Gladiator's Satin Hood
		[25] = { itemID = 35086, price = "1500 #arena#" }; --Brutal Gladiator's Satin Mantle
		[26] = { itemID = 35087, price = "1875 #arena#" }; --Brutal Gladiator's Satin Robe
		[27] = { itemID = 35083, price = "1125 #arena#" }; --Brutal Gladiator's Satin Gloves
		[28] = { itemID = 35085, price = "1875 #arena#" }; --Brutal Gladiator's Satin Leggings
	};
	{
		Name = AL["Holy"];
		[1] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 31410 }; --Gladiator's Mooncloth Hood
		[3] = { itemID = 31412 }; --Gladiator's Mooncloth Mantle
		[4] = { itemID = 31413 }; --Gladiator's Mooncloth Robe
		[5] = { itemID = 31409 }; --Gladiator's Mooncloth Gloves
		[6] = { itemID = 31411 }; --Gladiator's Mooncloth Leggings
		[8] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32016, price = "15000 #faction#" }; --Merciless Gladiator's Mooncloth Hood
		[10] = { itemID = 32018, price = "13000 #faction#" }; --Merciless Gladiator's Mooncloth Mantle
		[11] = { itemID = 32019, price = "15000 #faction#" }; --Merciless Gladiator's Mooncloth Robe
		[12] = { itemID = 32015, price = "12000 #faction#" }; --Merciless Gladiator's Mooncloth Gloves
		[13] = { itemID = 32017, price = "15000 #faction#" }; --Merciless Gladiator's Mooncloth Leggings
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33718 }; --Vengeful Gladiator's Mooncloth Hood
		[18] = { itemID = 33720 }; --Vengeful Gladiator's Mooncloth Mantle
		[19] = { itemID = 33721 }; --Vengeful Gladiator's Mooncloth Robe
		[20] = { itemID = 33717 }; --Vengeful Gladiator's Mooncloth Gloves
		[21] = { itemID = 33719 }; --Vengeful Gladiator's Mooncloth Leggings
		[23] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35054, price = "1875 #arena#" }; --Brutal Gladiator's Mooncloth Hood
		[25] = { itemID = 35056, price = "1500 #arena#" }; --Brutal Gladiator's Mooncloth Mantle
		[26] = { itemID = 35057, price = "1875 #arena#" }; --Brutal Gladiator's Mooncloth Robe
		[27] = { itemID = 35053, price = "1125 #arena#" }; --Brutal Gladiator's Mooncloth Gloves
		[28] = { itemID = 35055, price = "1875 #arena#" }; --Brutal Gladiator's Mooncloth Leggings
	};
};

AtlasLoot_Data["ArenaRogueTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 25830 }; --Gladiator's Leather Helm
		[3] = { itemID = 25832 }; --Gladiator's Leather Spaulders
		[4] = { itemID = 25831 }; --Gladiator's Leather Tunic
		[5] = { itemID = 25834 }; --Gladiator's Leather Gloves
		[6] = { itemID = 25833 }; --Gladiator's Leather Legguards
		[8] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 31999, price = "15000 #faction#" }; --Merciless Gladiator's Leather Helm
		[10] = { itemID = 32001, price = "13000 #faction#" }; --Merciless Gladiator's Leather Spaulders
		[11] = { itemID = 32002, price = "15000 #faction#" }; --Merciless Gladiator's Leather Tunic
		[12] = { itemID = 31998, price = "12000 #faction#" }; --Merciless Gladiator's Leather Gloves
		[13] = { itemID = 32000, price = "15000 #faction#" }; --Merciless Gladiator's Leather Legguards
		[16] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33701 }; --Vengeful Gladiator's Leather Helm
		[18] = { itemID = 33703 }; --Vengeful Gladiator's Leather Spaulders
		[19] = { itemID = 33704 }; --Vengeful Gladiator's Leather Tunic
		[20] = { itemID = 33700 }; --Vengeful Gladiator's Leather Gloves
		[21] = { itemID = 33702 }; --Vengeful Gladiator's Leather Legguards
		[23] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35033, price = "1875 #arena#" }; --Brutal Gladiator's Leather Helm
		[25] = { itemID = 35035, price = "1500 #arena#" }; --Brutal Gladiator's Leather Spaulders
		[26] = { itemID = 35036, price = "1875 #arena#" }; --Brutal Gladiator's Leather Tunic
		[27] = { itemID = 35032, price = "1125 #arena#" }; --Brutal Gladiator's Leather Gloves
		[28] = { itemID = 35034, price = "1875 #arena#" }; --Brutal Gladiator's Leather Legguards
	};
};

AtlasLoot_Data["ArenaWarlockTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
	{
		Name = AL["Demonology"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Dreadgear"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 24553 }; --Gladiator's Dreadweave Hood
		[3] = { itemID = 24554 }; --Gladiator's Dreadweave Mantle
		[4] = { itemID = 24552 }; --Gladiator's Dreadweave Robe
		[5] = { itemID = 24556 }; --Gladiator's Dreadweave Gloves
		[6] = { itemID = 24555 }; --Gladiator's Dreadweave Leggings
		[8] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Dreadgear"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 31974, price = "15000 #faction#" }; --Merciless Gladiator's Dreadweave Hood
		[10] = { itemID = 31976, price = "13000 #faction#" }; --Merciless Gladiator's Dreadweave Mantle
		[11] = { itemID = 31977, price = "15000 #faction#" }; --Merciless Gladiator's Dreadweave Robe
		[12] = { itemID = 31973, price = "12000 #faction#" }; --Merciless Gladiator's Dreadweave Gloves
		[13] = { itemID = 31975, price = "15000 #faction#" }; --Merciless Gladiator's Dreadweave Leggings
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Dreadgear"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33677 }; --Vengeful Gladiator's Dreadweave Hood
		[18] = { itemID = 33679 }; --Vengeful Gladiator's Dreadweave Mantle
		[19] = { itemID = 33680 }; --Vengeful Gladiator's Dreadweave Robe
		[20] = { itemID = 33676 }; --Vengeful Gladiator's Dreadweave Gloves
		[21] = { itemID = 33678 }; --Vengeful Gladiator's Dreadweave Leggings
		[23] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Dreadgear"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35004, price = "1875 #arena#" }; --Brutal Gladiator's Dreadweave Hood
		[25] = { itemID = 35006, price = "1500 #arena#" }; --Brutal Gladiator's Dreadweave Mantle
		[26] = { itemID = 35007, price = "1875 #arena#" }; --Brutal Gladiator's Dreadweave Robe
		[27] = { itemID = 35003, price = "1125 #arena#" }; --Brutal Gladiator's Dreadweave Gloves
		[28] = { itemID = 35005, price = "1875 #arena#" }; --Brutal Gladiator's Dreadweave Leggings
	};
	{
		Name = AL["Destruction"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 30187 }; --Gladiator's Felweave Cowl
		[3] = { itemID = 30186 }; --Gladiator's Felweave Amice
		[4] = { itemID = 30200 }; --Gladiator's Felweave Raiment
		[5] = { itemID = 30188 }; --Gladiator's Felweave Handguards
		[6] = { itemID = 30201 }; --Gladiator's Felweave Trousers
		[8] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 31980, price = "15000 #faction#" }; --Merciless Gladiator's Felweave Cowl
		[10] = { itemID = 31979, price = "13000 #faction#" }; --Merciless Gladiator's Felweave Amice
		[11] = { itemID = 31982, price = "15000 #faction#" }; --Merciless Gladiator's Felweave Raiment
		[12] = { itemID = 31981, price = "12000 #faction#" }; --Merciless Gladiator's Felweave Handguards
		[13] = { itemID = 31983, price = "15000 #faction#" }; --Merciless Gladiator's Felweave Trousers
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33683 }; --Vengeful Gladiator's Felweave Cowl
		[18] = { itemID = 33682 }; --Vengeful Gladiator's Felweave Amice
		[19] = { itemID = 33685 }; --Vengeful Gladiator's Felweave Raiment
		[20] = { itemID = 33684 }; --Vengeful Gladiator's Felweave Handguards
		[21] = { itemID = 33686 }; --Vengeful Gladiator's Felweave Trousers
		[23] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35010, price = "1875 #arena#" }; --Brutal Gladiator's Felweave Cowl
		[25] = { itemID = 35009, price = "1500 #arena#" }; --Brutal Gladiator's Felweave Amice
		[26] = { itemID = 35012, price = "1875 #arena#" }; --Brutal Gladiator's Felweave Raiment
		[27] = { itemID = 35011, price = "1125 #arena#" }; --Brutal Gladiator's Felweave Handguards
		[28] = { itemID = 35013, price = "1875 #arena#" }; --Brutal Gladiator's Felweave Trousers
	};
};


AtlasLoot_Data["ArenaShamanTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
	{
		Name = AL["Enhancement"];
		[1] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 25998 }; --Gladiator's Linked Helm
		[3] = { itemID = 25999 }; --Gladiator's Linked Spaulders
		[4] = { itemID = 25997 }; --Gladiator's Linked Armor
		[5] = { itemID = 26000 }; --Gladiator's Linked Gauntlets
		[6] = { itemID = 26001 }; --Gladiator's Linked Leggings
		[8] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32006, price = "15000 #faction#" }; --Merciless Gladiator's Linked Helm
		[10] = { itemID = 32008, price = "13000 #faction#" }; --Merciless Gladiator's Linked Spaulders
		[11] = { itemID = 32004, price = "15000 #faction#" }; --Merciless Gladiator's Linked Armor
		[12] = { itemID = 32005, price = "12000 #faction#" }; --Merciless Gladiator's Linked Gauntlets
		[13] = { itemID = 32007, price = "15000 #faction#" }; --Merciless Gladiator's Linked Leggings
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33708 }; --Vengeful Gladiator's Linked Helm
		[18] = { itemID = 33710 }; --Vengeful Gladiator's Linked Spaulders
		[19] = { itemID = 33706 }; --Vengeful Gladiator's Linked Armor
		[20] = { itemID = 33707 }; --Vengeful Gladiator's Linked Gauntlets
		[21] = { itemID = 33709 }; --Vengeful Gladiator's Linked Leggings
		[23] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35044, price = "1875 #arena#" }; --Brutal Gladiator's Linked Helm
		[25] = { itemID = 35046, price = "1500 #arena#" }; --Brutal Gladiator's Linked Spaulders
		[26] = { itemID = 35042, price = "1875 #arena#" }; --Brutal Gladiator's Linked Armor
		[27] = { itemID = 35043, price = "1125 #arena#" }; --Brutal Gladiator's Linked Gauntlets
		[28] = { itemID = 35045, price = "1875 #arena#" }; --Brutal Gladiator's Linked Leggings
	};
	{
		Name = AL["Elemental"];
		[1] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 27471 }; --Gladiator's Mail Helm
		[3] = { itemID = 27473 }; --Gladiator's Mail Spaulders
		[4] = { itemID = 27469 }; --Gladiator's Mail Armor
		[5] = { itemID = 27470 }; --Gladiator's Mail Gauntlets
		[6] = { itemID = 27472 }; --Gladiator's Mail Leggings
		[8] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32011 }; --Merciless Gladiator's Mail Helm
		[10] = { itemID = 32013, price = "13000 #faction#" }; --Merciless Gladiator's Mail Spaulders
		[11] = { itemID = 32009, price = "15000 #faction#" }; --Merciless Gladiator's Mail Armor
		[12] = { itemID = 32010, price = "12000 #faction#" }; --Merciless Gladiator's Mail Gauntlets
		[13] = { itemID = 32012, price = "15000 #faction#" }; --Merciless Gladiator's Mail Leggings
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33713 }; --Vengeful Gladiator's Mail Helm
		[18] = { itemID = 33715 }; --Vengeful Gladiator's Mail Spaulders
		[19] = { itemID = 33711 }; --Vengeful Gladiator's Mail Armor
		[20] = { itemID = 33712 }; --Vengeful Gladiator's Mail Gauntlets
		[21] = { itemID = 33714 }; --Vengeful Gladiator's Mail Leggings
		[23] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35050, price = "1875 #arena#" }; --Brutal Gladiator's Mail Helm
		[25] = { itemID = 35052, price = "1500 #arena#" }; --Brutal Gladiator's Mail Spaulders
		[26] = { itemID = 35048, price = "1875 #arena#" }; --Brutal Gladiator's Mail Armor
		[27] = { itemID = 35049, price = "1125 #arena#" }; --Brutal Gladiator's Mail Gauntlets
		[28] = { itemID = 35051, price = "1875 #arena#" }; --Brutal Gladiator's Mail Leggings
	};
	{
		Name = AL["Restoration"];
		[1] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 31400 }; --Gladiator's Ringmail Helm
		[3] = { itemID = 31407 }; --Gladiator's Ringmail Spaulders
		[4] = { itemID = 31396 }; --Gladiator's Ringmail Armor
		[5] = { itemID = 31397 }; --Gladiator's Ringmail Gauntlets
		[6] = { itemID = 31406 }; --Gladiator's Ringmail Leggings
		[8] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 32031, price = "15000 #faction#" }; --Merciless Gladiator's Ringmail Helm
		[10] = { itemID = 32033, price = "13000 #faction#" }; --Merciless Gladiator's Ringmail Spaulders
		[11] = { itemID = 32029, price = "15000 #faction#" }; --Merciless Gladiator's Ringmail Armor
		[12] = { itemID = 32030, price = "12000 #faction#" }; --Merciless Gladiator's Ringmail Gauntlets
		[13] = { itemID = 32032, price = "15000 #faction#" }; --Merciless Gladiator's Ringmail Leggings
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33740 }; --Vengeful Gladiator's Ringmail Helm
		[18] = { itemID = 33742 }; --Vengeful Gladiator's Ringmail Spaulders
		[19] = { itemID = 33738 }; --Vengeful Gladiator's Ringmail Armor
		[20] = { itemID = 33739 }; --Vengeful Gladiator's Ringmail Gauntlets
		[21] = { itemID = 33741 }; --Vengeful Gladiator's Ringmail Leggings
		[23] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35079, price = "1875 #arena#" }; --Brutal Gladiator's Ringmail Helm
		[25] = { itemID = 35081, price = "1500 #arena#" }; --Brutal Gladiator's Ringmail Spaulders
		[26] = { itemID = 35077, price = "1875 #arena#" }; --Brutal Gladiator's Ringmail Armor
		[27] = { itemID = 35078, price = "1125 #arena#" }; --Brutal Gladiator's Ringmail Gauntlets
		[28] = { itemID = 35080, price = "1875 #arena#" }; --Brutal Gladiator's Ringmail Leggings
	};
};

AtlasLoot_Data["ArenaWarriorTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[1] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"], desc = "=q1="..AL["Arena Season 1"] };
		[2] = { itemID = 24545 }; --Gladiator's Plate Helm
		[3] = { itemID = 24546 }; --Gladiator's Plate Shoulders
		[4] = { itemID = 24544 }; --Gladiator's Plate Chestpiece
		[5] = { itemID = 24549 }; --Gladiator's Plate Gauntlets
		[6] = { itemID = 24547 }; --Gladiator's Plate Legguards
		[8] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"], desc = "=q1="..AL["Arena Season 3"] };
		[9] = { itemID = 30488, price = "15000 #faction#" }; --Merciless Gladiator's Plate Helm
		[10] = { itemID = 30490, price = "13000 #faction#" }; --Merciless Gladiator's Plate Shoulders
		[11] = { itemID = 30486, price = "15000 #faction#" }; --Merciless Gladiator's Plate Chestpiece
		[12] = { itemID = 30487, price = "12000 #faction#" }; --Merciless Gladiator's Plate Gauntlets
		[13] = { itemID = 30489, price = "15000 #faction#" }; --Merciless Gladiator's Plate Legguards
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"], desc = "=q1="..AL["Arena Season 2"] };
		[17] = { itemID = 33730 }; --Vengeful Gladiator's Plate Helm
		[18] = { itemID = 33732 }; --Vengeful Gladiator's Plate Shoulders
		[19] = { itemID = 33728 }; --Vengeful Gladiator's Plate Chestpiece
		[20] = { itemID = 33729 }; --Vengeful Gladiator's Plate Gauntlets
		[21] = { itemID = 33731 }; --Vengeful Gladiator's Plate Legguards
		[23] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"], desc = "=q1="..AL["Arena Season 4"] };
		[24] = { itemID = 35068, price = "1875 #arena#" }; --Brutal Gladiator's Plate Helm
		[25] = { itemID = 35070, price = "1500 #arena#" }; --Brutal Gladiator's Plate Shoulders
		[26] = { itemID = 35066, price = "1875 #arena#" }; --Brutal Gladiator's Plate Chestpiece
		[27] = { itemID = 35067, price = "1125 #arena#" }; --Brutal Gladiator's Plate Gauntlets
		[28] = { itemID = 35069, price = "1875 #arena#" }; --Brutal Gladiator's Plate Legguards
	};
};

--------------------------------
--- Arena Seasons - Weapons ---
--------------------------------
AtlasLoot_Data["WeaponsTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = "Arena " .. AL["Weapons"];
	{
		Name = "Alliance";
		[1] = { itemID = 28953, desc = "=q3=Grand Marshal's Right Ripper" };
		[2] = { itemID = 28947, desc = "=q3=Grand Marshal's Left Ripper" };
		[3] = { itemID = 28957, desc = "=q3=Grand Marshal's Spellblade" };
		[4] = { itemID = 28954, desc = "=q3=Grand Marshal's Shanker" };
		[5] = { itemID = 28955, desc = "=q3=Grand Marshal's Shiv" };
		[6] = { itemID = 28956, desc = "=q3=Grand Marshal's Slicer" };
		[7] = { itemID = 28952, desc = "=q3=Grand Marshal's Quickblade" };
		[8] = { itemID = 28943, desc = "=q3=Grand Marshal's Warblade" };
		[9] = { itemID = 28944, desc = "=q3=Grand Marshal's Cleaver" };
		[10] = { itemID = 28946, desc = "=q3=Grand Marshal's Hacker" };
		[11] = { itemID = 28945, desc = "=q3=Grand Marshal's Decapitator" };
		[12] = { itemID = 28951, desc = "=q3=Grand Marshal's Pummeler" };
		[13] = { itemID = 28950, desc = "=q3=Grand Marshal's Bonecracker" };
		[14] = { itemID = 28942, desc = "=q3=Grand Marshal's Bonegrinder" };
		[15] = { itemID = 28948, desc = "=q3=Grand Marshal's Maul" };
		[16] = { itemID = 28949, desc = "=q3=Grand Marshal's Painsaw" };
		[17] = { itemID = 28959, desc = "=q3=Grand Marshal's War Staff" };
		[18] = { itemID = 28940, desc = "=q3=Grand Marshal's Barricade" };
		[19] = { itemID = 28960, desc = "=q3=Grand Marshal's Heavy Crossbow" };
		[20] = { itemID = 28941, desc = "=q3=Grand Marshal's Battletome" };
	};
	{
		Name = "Horde";
		[1] = { itemID = 28928, desc = "=q3=High Warlord's Right Ripper" };
		[2] = { itemID = 28922, desc = "=q3=High Warlord's Left Ripper" };
		[3] = { itemID = 28931, desc = "=q3=High Warlord's Spellblade" };
		[4] = { itemID = 28929, desc = "=q3=High Warlord's Shanker" };
		[5] = { itemID = 28930, desc = "=q3=High Warlord's Shiv" };
		[6] = { itemID = 28937, desc = "=q3=High Warlord's Slicer" };
		[7] = { itemID = 28926, desc = "=q3=High Warlord's Quickblade" };
		[8] = { itemID = 28293, desc = "=q3=High Warlord's Claymore" };
		[9] = { itemID = 28920, desc = "=q3=High Warlord's Cleaver" };
		[10] = { itemID = 28921, desc = "=q3=High Warlord's Hacker" };
		[11] = { itemID = 28918, desc = "=q3=High Warlord's Decapitator" };
		[12] = { itemID = 28925, desc = "=q3=High Warlord's Pummeler" };
		[13] = { itemID = 28924, desc = "=q3=High Warlord's Bonecracker" };
		[14] = { itemID = 28917, desc = "=q3=High Warlord's Bonegrinder" };
		[15] = { itemID = 28919, desc = "=q3=High Warlord's Maul" };
		[16] = { itemID = 28923, desc = "=q3=High Warlord's Painsaw" };
		[17] = { itemID = 28935, desc = "=q3=High Warlord's War Staff" };
		[18] = { itemID = 28939, desc = "=q3=High Warlord's Barricade" };
		[19] = { itemID = 28933, desc = "=q3=High Warlord's Heavy Crossbow" };
		[20] = { itemID = 28938, desc = "=q3=High Warlord's Battletome" };
	};
	{
		Name = "Weapons Season 1";
		[1] = { itemID = 28313, price = "2625 #arena#" }; --Gladiator's Right Ripper
		[2] = { itemID = 28314, price = "1125 #arena#" }; --Gladiator's Left Ripper
		[3] = { itemID = 28297, price = "3150 #arena#" }; --Gladiator's Spellblade
		[4] = { itemID = 28312, price = "2625 #arena#" }; --Gladiator's Shanker
		[5] = { itemID = 28310, price = "1125 #arena#" }; --Gladiator's Shiv
		[6] = { itemID = 28295, price = "2625 #arena#" }; --Gladiator's Slicer
		[7] = { itemID = 28307, price = "1125 #arena#" }; --Gladiator's Quickblade
		[8] = { itemID = 24550, price = "3750 #arena#" }; --Gladiator's Greatsword
		[9] = { itemID = 28308, price = "2625 #arena#" }; --Gladiator's Cleaver
		[10] = { itemID = 28309, price = "1125 #arena#" }; --Gladiator's Hacker
		[11] = { itemID = 28298, price = "3750 #arena#" }; --Gladiator's Decapitator
		[12] = { itemID = 28305, price = "2625 #arena#" }; --Gladiator's Pummeler
		[13] = { itemID = 28302, price = "1125 #arena#" }; --Gladiator's Bonecracker
		[14] = { itemID = 28299, price = "3750 #arena#" }; --Gladiator's Bonegrinder
		[15] = { itemID = 28476, price = "3750 #arena#" }; --Gladiator's Maul
		[16] = { itemID = 28300, price = "3750 #arena#" }; --Gladiator's Painsaw
		[17] = { itemID = 24557, price = "3750 #arena#" }; --Gladiator's War Staff
		[18] = { itemID = 28358, price = "1875 #arena#" }; --Gladiator's Shield Wall
		[19] = { itemID = 28319, price = "1000 #arena#" }; --Gladiator's War Edge
		[20] = { itemID = 28294, price = "3750 #arena#" }; --Gladiator's Heavy Crossbow
		[21] = { itemID = 28320, price = "1000 #arena#" }; --Gladiator's Touch of Defeat
		[22] = { itemID = 28346, price = "1125 #arena#" }; --Gladiator's Endgame
		[23] = { itemID = 32452, price = "1125 #arena#" }; --Gladiator's Reprieve
	};
	{
		Name = "Weapons Season 1";
		[1] = { itemID = 33945, price = "1000 #arena#" }; --Gladiator's Idol of Resolve
		[2] = { itemID = 33942, price = "1000 #arena#" }; --Gladiator's Idol of Steadfastness
		[3] = { itemID = 28355, price = "1000 #arena#" }; --Gladiator's Idol of Tenacity
		[4] = { itemID = 33936, price = "1000 #arena#" }; --Gladiator's Libram of Fortitude
		[5] = { itemID = 28356, price = "1000 #arena#" }; --Gladiator's Libram of Justice
		[6] = { itemID = 33948, price = "1000 #arena#" }; --Gladiator's Libram of Vengeance
		[7] = { itemID = 33939, price = "1000 #arena#" }; --Gladiator's Totem of Indomitability
		[8] = { itemID = 33951, price = "1000 #arena#" }; --Gladiator's Totem of Survival
		[9] = { itemID = 28357, price = "1000 #arena#" }; --Gladiator's Totem of the Third Wind
	};
	{
		Name = "Weapons Season 2";
		[1] = { itemID = 33737, price = "2100 #arena#" }; --Vengeful Gladiator's Right Ripper
		[2] = { itemID = 33705, price = "900 #arena#" }; --Vengeful Gladiator's Left Ripper
		[3] = { itemID = 34016, price = "900 #arena#" }; --Vengeful Gladiator's Left Render
		[4] = { itemID = 33763, price = "2520 #arena#" }; --Vengeful Gladiator's Spellblade
		[5] = { itemID = 33754, price = "2100 #arena#" }; --Vengeful Gladiator's Shanker
		[6] = { itemID = 33801, price = "900 #arena#" }; --Vengeful Gladiator's Mutilator
		[7] = { itemID = 33756, price = "900 #arena#" }; --Vengeful Gladiator's Shiv
		[8] = { itemID = 33762, price = "2100 #arena#" }; --Vengeful Gladiator's Slicer
		[9] = { itemID = 33734, price = "900 #arena#" }; --Vengeful Gladiator's Quickblade
		[10] = { itemID = 33688, price = "3000 #arena#" }; --Vengeful Gladiator's Greatsword
		[11] = { itemID = 33669, price = "2100 #arena#" }; --Vengeful Gladiator's Cleaver
		[12] = { itemID = 34015, price = "900 #arena#" }; --Vengeful Gladiator's Chopper
		[13] = { itemID = 33689, price = "900 #arena#" }; --Vengeful Gladiator's Hacker
		[14] = { itemID = 33670, price = "3000 #arena#" }; --Vengeful Gladiator's Decapitator
		[15] = { itemID = 34014, price = "800 #arena#" }; --Vengeful Gladiator's Waraxe
		[16] = { itemID = 33687, price = "2520 #arena#" }; --Vengeful Gladiator's Gavel
		[17] = { itemID = 33743, price = "2520 #arena#" }; --Vengeful Gladiator's Salvation
		[18] = { itemID = 33733, price = "2100 #arena#" }; --Vengeful Gladiator's Pummeler
		[19] = { itemID = 33662, price = "2520 #arena#" }; --Vengeful Gladiator's Bonecracker
		[20] = { itemID = 33663, price = "3000 #arena#" }; --Vengeful Gladiator's Bonegrinder
		[21] = { itemID = 33727, price = "3000 #arena#" }; --Vengeful Gladiator's Painsaw
		[22] = { itemID = 34540, price = "3000 #arena#" }; --Vengeful Gladiator's Battle Staff
		[23] = { itemID = 33716, price = "3000 #arena#" }; --Vengeful Gladiator's Staff
		[24] = { itemID = 33766, price = "3000 #arena#" }; --Vengeful Gladiator's War Staff
	};
	{
		Name = "Weapons Season 2";
		[1] = { itemID = 33661, price = "1500 #arena#" }; --Vengeful Gladiator's Barrier
		[2] = { itemID = 33735, price = "1500 #arena#" }; --Vengeful Gladiator's Redoubt
		[3] = { itemID = 33755, price = "1500 #arena#" }; --Vengeful Gladiator's Shield Wall
		[4] = { itemID = 33765, price = "800 #arena#" }; --Vengeful Gladiator's War Edge
		[5] = { itemID = 34529, price = "3000 #arena#" }; --Vengeful Gladiator's Longbow
		[6] = { itemID = 33006, price = "3000 #arena#" }; --Vengeful Gladiator's Heavy Crossbow
		[7] = { itemID = 34530, price = "3000 #arena#" }; --Vengeful Gladiator's Rifle
		[8] = { itemID = 34059, price = "800 #arena#" }; --Vengeful Gladiator's Baton of Light
		[9] = { itemID = 34066, price = "800 #arena#" }; --Vengeful Gladiator's Piercing Touch
		[10] = { itemID = 33764, price = "800 #arena#" }; --Vengeful Gladiator's Touch of Defeat
		[11] = { itemID = 33681, price = "900 #arena#" }; --Vengeful Gladiator's Endgame
		[12] = { itemID = 34033, price = "900 #arena#" }; --Vengeful Gladiator's Grimoire
		[13] = { itemID = 33736, price = "900 #arena#" }; --Vengeful Gladiator's Reprieve
		[16] = { itemID = 33947, price = "800 #arena#" }; --Vengeful Gladiator's Idol of Resolve
		[17] = { itemID = 33944, price = "800 #arena#" }; --Vengeful Gladiator's Idol of Steadfastness
		[18] = { itemID = 33841, price = "800 #arena#" }; --Vengeful Gladiator's Idol of Tenacity
		[19] = { itemID = 33938, price = "800 #arena#" }; --Vengeful Gladiator's Libram of Fortitude
		[20] = { itemID = 33842, price = "800 #arena#" }; --Vengeful Gladiator's Libram of Justice
		[21] = { itemID = 33950, price = "800 #arena#" }; --Vengeful Gladiator's Libram of Vengeance
		[22] = { itemID = 33941, price = "800 #arena#" }; --Vengeful Gladiator's Totem of Indomitability
		[23] = { itemID = 33953, price = "800 #arena#" }; --Vengeful Gladiator's Totem of Survival
		[24] = { itemID = 33843, price = "800 #arena#" }; --Vengeful Gladiator's Totem of the Third Wind
	};
	{
		Name = "Weapons Season 3";
		[1] = { itemID = 32028, price = "18000 #arena#" }; --Merciless Gladiator's Right Ripper
		[2] = { itemID = 32003, price = "9000 #arena#" }; --Merciless Gladiator's Left Ripper
		[3] = { itemID = 32053, price = "25200 #arena#" }; --Merciless Gladiator's Spellblade
		[4] = { itemID = 32044, price = "18000 #arena#" }; --Merciless Gladiator's Shanker
		[5] = { itemID = 32046, price = "9000 #arena#" }; --Merciless Gladiator's Shiv
		[6] = { itemID = 32052, price = "18000 #arena#" }; --Merciless Gladiator's Slicer
		[7] = { itemID = 32027, price = "9000 #arena#" }; --Merciless Gladiator's Quickblade
		[8] = { itemID = 31984, price = "27000 #arena#" }; --Merciless Gladiator's Greatsword
		[9] = { itemID = 31965, price = "18000 #arena#" }; --Merciless Gladiator's Cleaver
		[10] = { itemID = 31985, price = "9000 #arena#" }; --Merciless Gladiator's Hacker
		[11] = { itemID = 31966, price = "27000 #arena#" }; --Merciless Gladiator's Decapitator
		[12] = { itemID = 32963, price = "25200 #arena#" }; --Merciless Gladiator's Gavel
		[13] = { itemID = 32964, price = "25200 #arena#" }; --Merciless Gladiator's Salvation
		[14] = { itemID = 32026, price = "18000 #arena#" }; --Merciless Gladiator's Pummeler
		[15] = { itemID = 31958, price = "9000 #arena#" }; --Merciless Gladiator's Bonecracker
		[16] = { itemID = 31959, price = "27000 #arena#" }; --Merciless Gladiator's Bonegrinder
		[17] = { itemID = 32014, price = "27000 #arena#" }; --Merciless Gladiator's Maul
		[18] = { itemID = 32025, price = "27000 #arena#" }; --Merciless Gladiator's Painsaw
		[19] = { itemID = 32055, price = "27000 #arena#" }; --Merciless Gladiator's War Staff
		[20] = { itemID = 33313, price = "15000 #arena#" }; --Merciless Gladiator's Barrier
		[21] = { itemID = 33309, price = "15000 #arena#" }; --Merciless Gladiator's Redoubt
		[22] = { itemID = 32045, price = "15000 #arena#" }; --Merciless Gladiator's Shield Wall
		[23] = { itemID = 32054, price = "8000 #arena#" }; --Merciless Gladiator's War Edge
		[24] = { itemID = 31986, price = "27000 #arena#" }; --Merciless Gladiator's Crossbow of the Phoenix
		[25] = { itemID = 32962, price = "8000 #arena#" }; --Merciless Gladiator's Touch of Defeat
		[26] = { itemID = 31978, price = "9000 #arena#" }; --Merciless Gladiator's Endgame
		[27] = { itemID = 32961, price = "9000 #arena#" }; --Merciless Gladiator's Reprieve
	};
	{
		Name = "Weapons Season 3";
		[1] = { itemID = 33946, price = "8000 #arena#" }; --Merciless Gladiator's Idol of Resolve
		[2] = { itemID = 33943, price = "8000 #arena#" }; --Merciless Gladiator's Idol of Steadfastness
		[3] = { itemID = 33076, price = "8000 #arena#" }; --Merciless Gladiator's Idol of Tenacity
		[4] = { itemID = 33937, price = "8000 #arena#" }; --Merciless Gladiator's Libram of Fortitude
		[5] = { itemID = 33077, price = "8000 #arena#" }; --Merciless Gladiator's Libram of Justice
		[6] = { itemID = 33949, price = "8000 #arena#" }; --Merciless Gladiator's Libram of Vengeance
		[7] = { itemID = 33940, price = "8000 #arena#" }; --Merciless Gladiator's Totem of Indomitability
		[8] = { itemID = 33952, price = "8000 #arena#" }; --Merciless Gladiator's Totem of Survival
		[9] = { itemID = 33078, price = "8000 #arena#" }; --Merciless Gladiator's Totem of the Third Wind
	};
	{
		Name = "Weapons Season 4";
		[1] = { itemID = 35076, price = "2625 #arena#" }; --Brutal Gladiator's Right Ripper
		[2] = { itemID = 35038, price = "1125 #arena#" }; --Brutal Gladiator's Left Ripper
		[3] = { itemID = 35037, price = "1125 #arena#" }; --Brutal Gladiator's Left Render
		[4] = { itemID = 35102, price = "3150 #arena#" }; --Brutal Gladiator's Spellblade
		[5] = { itemID = 37739, price = "3150 #arena#" }; --Brutal Gladiator's Blade of Alacrity
		[6] = { itemID = 35093, price = "2625 #arena#" }; --Brutal Gladiator's Shanker
		[7] = { itemID = 35058, price = "1125 #arena#" }; --Brutal Gladiator's Mutilator
		[8] = { itemID = 35095, price = "1125 #arena#" }; --Brutal Gladiator's Shiv
		[9] = { itemID = 35101 , price = "2625 #arena#" }; --Brutal Gladiator's Slicer
		[10] = { itemID = 35072, price = "1125 #arena#" }; --Brutal Gladiator's Quickblade
		[11] = { itemID = 35015, price = "3750 #arena#" }; --Brutal Gladiator's Greatsword
		[12] = { itemID = 34996, price = "2625 #arena#" }; --Brutal Gladiator's Cleaver
		[13] = { itemID = 34995, price = "1125 #arena#" }; --Brutal Gladiator's Chopper
		[14] = { itemID = 36737, price = "650 #arena#" }; --Brutal Gladiator's Hatchet
		[15] = { itemID = 35017, price = "1125 #arena#" }; --Brutal Gladiator's Hacker
		[16] = { itemID = 34997, price = "3750 #arena#" }; --Brutal Gladiator's Decapitator
		[17] = { itemID = 35110, price = "650 #arena#" }; --Brutal Gladiator's Waraxe
		[18] = { itemID = 35014 , price = "3150 #arena#" }; --Brutal Gladiator's Gavel
		[19] = { itemID = 35082 , price = "3150 #arena#" }; --Brutal Gladiator's Salvation
		[20] = { itemID = 37740 , price = "3150 #arena#" }; --Brutal Gladiator's Swift Judgement
		[21] = { itemID = 35071, price = "2625 #arena#" }; --Brutal Gladiator's Pummeler
		[22] = { itemID = 34988, price = "3150 #arena#" }; --Brutal Gladiator's Bonecracker
		[23] = { itemID = 34989 , price = "3750 #arena#" }; --Brutal Gladiator's Bonegrinder
		[24] = { itemID = 35064 , price = "3750 #arena#" }; --Brutal Gladiator's Painsaw
		[25] = { itemID = 34987 , price = "3750 #arena#" }; --Brutal Gladiator's Battle Staff
		[26] = { itemID = 35103 , price = "3750 #arena#" }; --Brutal Gladiator's Staff
		[27] = { itemID = 35109 , price = "3750 #arena#" }; --Brutal Gladiator's War Staff
	};
	{
		Name = "Weapons Season 4";
		[1] = { itemID = 34986, price = "1875 #arena#" }; --Brutal Gladiator's Barrier
		[2] = { itemID = 35073, price = "1875 #arena#" }; --Brutal Gladiator's Redoubt
		[3] = { itemID = 35094, price = "1875 #arena#" }; --Brutal Gladiator's Shield Wall
		[4] = { itemID = 35108, price = "1000 #arena#" }; --Brutal Gladiator's War Edge
		[5] = { itemID = 35047, price = "3750 #arena#" }; --Brutal Gladiator's Longbow
		[6] = { itemID = 35018, price = "3750 #arena#" }; --Brutal Gladiator's Heavy Crossbow
		[7] = { itemID = 35075, desc = "=ds=#w5#", price = "3750 #arena#" }; --Brutal Gladiator's Rifle
		[8] = { itemID = 34985, price = "1000 #arena#" }; --Brutal Gladiator's Baton of Light
		[9] = { itemID = 35065, price = "1000 #arena#" }; --Brutal Gladiator's Piercing Touch
		[10] = { itemID = 35107, price = "1000 #arena#" }; --Brutal Gladiator's Touch of Defeat
		[11] = { itemID = 35008 , price = "1125 #arena#" }; --Brutal Gladiator's Endgame
		[12] = { itemID = 35016 , price = "1125 #arena#" }; --Brutal Gladiator's Grimoire
		[13] = { itemID = 35074 , price = "1125 #arena#" }; --Brutal Gladiator's Reprieve
		[16] = { itemID = 35019, price = "1000 #arena#" }; --Brutal Gladiator's Idol of Resolve
		[17] = { itemID = 35020, price = "1000 #arena#" }; --Brutal Gladiator's Idol of Steadfastness#w14#
		[18] = { itemID = 35021, price = "1000 #arena#" }; --Brutal Gladiator's Idol of Tenacity
		[19] = { itemID = 35039, price = "1000 #arena#" }; --Brutal Gladiator's Libram of Fortitude
		[20] = { itemID = 35040, price = "1000 #arena#" }; --Brutal Gladiator's Libram of Justice
		[21] = { itemID = 35041, price = "1000 #arena#" }; --Brutal Gladiator's Libram of Vengeance
		[22] = { itemID = 35104, price = "1000 #arena#" }; --Brutal Gladiator's Totem of Indomitability
		[23] = { itemID = 35105, price = "1000 #arena#" }; --Brutal Gladiator's Totem of Survival
		[24] = { itemID = 35106, price = "1000 #arena#" }; --Brutal Gladiator's Totem of the Third Wind
	};
};

--------------------------
--- Sets & Collections ---
--------------------------

---------------------------
--- Dungeon 3 Sets (D3) ---
---------------------------

	AtlasLoot_Data["DS3"] = {
	Module = "AtlasLoot_BurningCrusade";
			Name = AL["Dungeon 3 Sets"];
			Type = "BCDungeon";
		{
			Name = AL["Hallowed Raiment"];
			[1] = { itemID = 28413, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Hallowed Crown
			[2] = { itemID = 27775, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Grandmaster Vorpil"]} }; --Hallowed Pauldrons
			[3] = { itemID = 28230, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Hallowed Garments
			[4] = { itemID = 27536, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Hallowed Handwraps
			[5] = { itemID = 27875, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Hallowed Trousers
		};
		{
			Name = AL["Mana-Etched Regalia"];
			[1] = { itemID = 28193, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Mana-Etched Crown
			[2] = { itemID = 27796, desc = {BabbleZone["The Slave Pens"], BabbleBoss["Quagmirran"]..AL["Heroic Mode"] } }; --Mana-Etched Spaulders
			[3] = { itemID = 28191, desc = {BabbleZone["Old Hillsbrad Foothills"]..AL["Heroic Mode"], BabbleBoss["Epoch Hunter"]} }; --Mana-Etched Vestments
			[4] = { itemID = 27465, desc = {BabbleZone["Hellfire Ramparts"]..AL["Heroic Mode"], BabbleBoss["Omor the Unscarred"]} }; --Mana-Etched Gloves
			[5] = { itemID = 27907, desc = {BabbleZone["The Slave Pens"], BabbleBoss["The Black Stalker"]..AL["Heroic Mode"] } }; --Mana-Etched Pantaloons
		};
		{
			Name = AL["Incanter's Regalia"];
			[1] = { itemID = 28278, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Incanter's Cowl
			[2] = { itemID = 27738, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Incanter's Pauldrons
			[3] = { itemID = 28229, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Incanter's Robe
			[4] = { itemID = 27508, desc = {BabbleZone["The Steamvault"], BabbleBoss["Hydromancer Thespia"]} }; --Incanter's Gloves
			[5] = { itemID = 27838, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Incanter's Trousers
		};
		{
			Name = AL["Oblivion Raiment"];
			[1] = { itemID = 28415, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Hood of Oblivion
			[2] = { itemID = 27778, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Spaulders of Oblivion
			[3] = { itemID = 28232, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Robe of Oblivion
			[4] = { itemID = 27537, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Gloves of Oblivion
			[5] = { itemID = 27948, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Trousers of Oblivion
		};
		{
			Name = AL["Assassination Armor"];
			[1] = { itemID = 28414, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Helm of Assassination
			[2] = { itemID = 27776, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Shoulderpads of Assassination
			[3] = { itemID = 28204, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Tunic of Assassination
			[4] = { itemID = 27509, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Handgrips of Assassination
			[5] = { itemID = 27908, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Leggings of Assassination
		};
		{
			Name = AL["Wastewalker Armor"];
			[1] = { itemID = 28224, desc = {BabbleZone["Old Hillsbrad Foothills"]..AL["Heroic Mode"], BabbleBoss["Epoch Hunter"]} }; --Wastewalker Helm
			[2] = { itemID = 27797, desc = {BabbleZone["Auchenai Crypts"]..AL["Heroic Mode"], AL["Avatar"]} }; --Wastewalker Shoulderpads
			[3] = { itemID = 28264, desc = {BabbleZone["The Blood Furnace"]..AL["Heroic Mode"], BabbleBoss["Keli'dan the Breaker"]} }; --Wastewalker Tunic
			[4] = { itemID = 27531, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Wastewalker Gloves
			[5] = { itemID = 27837, desc = {BabbleZone["Mana-Tombs"]..AL["Heroic Mode"], BabbleBoss["Nexus-Prince Shaffar"]} }; --Wastewalker Leggings
		};
		{
			Name = AL["Moonglade Raiment"];
			[1] = { itemID = 28348, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Moonglade Cowl
			[2] = { itemID = 27737, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Moonglade Shoulders
			[3] = { itemID = 28202, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Moonglade Robe
			[4] = { itemID = 27468, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Blackheart the Inciter"]} }; --Moonglade Handwraps
			[5] = { itemID = 27873, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Moonglade Pants
		};
		{
			Name = AL["Beast Lord Armor"];
			[1] = { itemID = 28275, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Beast Lord Helm
			[2] = { itemID = 27801, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Beast Lord Mantle
			[3] = { itemID = 28228, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Beast Lord Curiass
			[4] = { itemID = 27474, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Beast Lord Handguards
			[5] = { itemID = 27874, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Beast Lord Leggings
		};
		{
			Name = AL["Tidefury Raiment"];
			[1] = { itemID = 28349, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Tidefury Helm
			[2] = { itemID = 27802, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warbringer O'mrogg"]} }; --Tidefury Shoulderguards
			[3] = { itemID = 28231, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Tidefury Chestpiece
			[4] = { itemID = 27510, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Tidefury Gauntlets
			[5] = { itemID = 27909, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Tidefury Kilt
		};
		{
			Name = AL["Desolation Battlegear"];
			[1] = { itemID = 28192, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Helm of Desolation
			[2] = { itemID = 27713, desc = {BabbleZone["The Slave Pens"], BabbleBoss["Quagmirran"]..AL["Heroic Mode"] } }; --Pauldrons of Desolation
			[3] = { itemID = 28401, desc = {BabbleZone["Old Hillsbrad Foothills"]..AL["Heroic Mode"], BabbleBoss["Epoch Hunter"]} }; --Hauberk of Desolation
			[4] = { itemID = 27528, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warchief Kargath Bladefist"]} }; --Gauntlets of Desolation
			[5] = { itemID = 27936, desc = {BabbleZone["Sethekk Halls"], BabbleBoss["Talon King Ikiss"]} }; --Greaves of Desolation
		};
		{
			Name = AL["Bold Armor"];
			[1] = { itemID = 28350, desc = {BabbleZone["The Botanica"], BabbleBoss["Warp Splinter"]} }; --Warhelm of the Bold
			[2] = { itemID = 27803, desc = {BabbleZone["Shadow Labyrinth"], BabbleBoss["Murmur"]} }; --Shoulderguards of the Bold
			[3] = { itemID = 28205, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Breastplate of the Bold
			[4] = { itemID = 27475, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Gauntlets of the Bold
			[5] = { itemID = 27977, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Legplates of the Bold
		};
		{
			Name = AL["Righteous Armor"];
			[1] = { itemID = 28285, desc = {BabbleZone["The Mechanar"], BabbleBoss["Pathaleon the Calculator"]} }; --Helm of the Righteous
			[2] = { itemID = 27739, desc = {BabbleZone["The Botanica"], BabbleBoss["Laj"]} }; --Spaulders of the Righteous
			[3] = { itemID = 28203, desc = {BabbleZone["The Steamvault"], BabbleBoss["Warlord Kalithresh"]} }; --Breastplate of the Righteous
			[4] = { itemID = 27535, desc = {BabbleZone["The Shattered Halls"], BabbleBoss["Warbringer O'mrogg"]} }; --Gauntlets of the Righteous
			[5] = { itemID = 27839, desc = {BabbleZone["The Black Morass"], BabbleBoss["Aeonus"]} }; --Legplates of the Righteous
		};
		{
			Name = AL["Doomplate Battlegear"];
			[1] = { itemID = 28225, desc = {BabbleZone["Old Hillsbrad Foothills"]..AL["Heroic Mode"], BabbleBoss["Epoch Hunter"]} }; --Doomplate Warhelm
			[2] = { itemID = 27771, desc = {BabbleZone["The Slave Pens"], BabbleBoss["The Black Stalker"]..AL["Heroic Mode"] } }; --Doomplate Shouldergards
			[3] = { itemID = 28403, desc = {BabbleZone["The Arcatraz"], BabbleBoss["Harbinger Skyriss"]} }; --Doomplate Chestguard
			[4] = { itemID = 27497, desc = {BabbleZone["The Blood Furnace"]..AL["Heroic Mode"], BabbleBoss["Keli'dan the Breaker"]} }; --Doomplate Gauntlets
			[5] = { itemID = 27870, desc = {BabbleZone["Auchenai Crypts"]..AL["Heroic Mode"], BabbleBoss["Exarch Maladaar"]} }; --Doomplate Legguards
		};
		{
			Name = AL["Divine Armor"];
			[1] = { itemID = 242595 };
			[2] = { itemID = 241962 };
			[3] = { itemID = 242552 };
			[4] = { itemID = 242509 };
			[5] = { itemID = 241919 };
			},
			{
			Name = AL["Armor of the Just"];
			[1] = { itemID = 242810 };
			[2] = { itemID = 242681 };
			[3] = { itemID = 242767 };
			[4] = { itemID = 242724 };
			[5] = { itemID = 242638 };
			},
			{
			Name = AL["Sentinel's Armor"];
			[1] = { itemID = 244915 };
			[2] = { itemID = 242896 };
			[3] = { itemID = 244872 };
			[4] = { itemID = 244286 };
			[5] = { itemID = 242853 };
			},
			{
			Name = AL["Raiment of the Tides"];
			[1] = { itemID = 245746 };
			[2] = { itemID = 245159 };
			[3] = { itemID = 245601 };
			[4] = { itemID = 245303 };
			[5] = { itemID = 244958 };
			},
			{
			Name = AL["Verdant's Regalia"];
			[1] = { itemID = 247693 };
			[2] = { itemID = 245878 };
			[3] = { itemID = 245962 };
			[4] = { itemID = 245794 };
			[5] = { itemID = 247548 };
			},
	};

--------------
--- Tier 4 ---
--------------

	AtlasLoot_Data["T4"] = {
	Module = "AtlasLoot_BurningCrusade";
		Name = "Tier 4";
		Type = "BCRaid";
		{
			Name = "Druid"..WHITE.." - "..AL["Feral"];
			[1] = { itemID = 29098, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Stag-Helm of Malorne
			[2] = { itemID = 29100, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Mantle of Malorne
			[3] = { itemID = 29096, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Breastplate of Malorne
			[4] = { itemID = 29097, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Gauntlets of Malorne
			[5] = { itemID = 29099, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Greaves of Malorne
		};
		{
			Name = "Druid"..WHITE.." - "..AL["Restoration"];
			[1] = { itemID = 29086, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Crown of Malorne
			[2] = { itemID = 29089, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Shoulderguards of Malorne
			[3] = { itemID = 29087, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Chestguard of Malorne
			[4] = { itemID = 29090, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Handguards of Malorne
			[5] = { itemID = 29088, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Legguards of Malorne
		};
		{
			Name = "Druid"..WHITE.." - "..AL["Balance"];
			[1] = { itemID = 29093, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Antlers of Malorne
			[2] = { itemID = 29095, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Pauldrons of Malorne
			[3] = { itemID = 29091, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Chestpiece of Malorne
			[4] = { itemID = 29092, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Gloves of Malorne
			[5] = { itemID = 29094, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Britches of Malorne
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[1] = { itemID = 29081, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Demon Stalker Greathelm
			[2] = { itemID = 29084, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Demon Stalker Shoulderguards
			[3] = { itemID = 29082, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Demon Stalker Harness
			[4] = { itemID = 29085, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Demon Stalker Gauntlets
			[5] = { itemID = 29083, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Demon Stalker Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[1] = { itemID = 29076, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Collar of the Aldor
			[2] = { itemID = 29079, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Pauldrons of the Aldor
			[3] = { itemID = 29077, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Vestments of the Aldor
			[4] = { itemID = 29080, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Gloves of the Aldor
			[5] = { itemID = 29078, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Legwraps of the Aldor
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Protection"];
			[1] = { itemID = 29068, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Justicar Faceguard
			[2] = { itemID = 29070, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Justicar Shoulderguards
			[3] = { itemID = 29066, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Justicar Chestguard
			[4] = { itemID = 29067, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Justicar Handguards
			[5] = { itemID = 29069, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Justicar Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Retribution"];
			[1] = { itemID = 29073, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Justicar Crown
			[2] = { itemID = 29075, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Justicar Shoulderplates
			[3] = { itemID = 29071, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Justicar Breastplate
			[4] = { itemID = 29072, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Justicar Gauntlets
			[5] = { itemID = 29074, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Justicar Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Holy"];
			[1] = { itemID = 29061, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Justicar Diadem
			[2] = { itemID = 29064, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Justicar Pauldrons
			[3] = { itemID = 29062, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Justicar Chestpiece
			[4] = { itemID = 29065, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Justicar Gloves
			[5] = { itemID = 29063, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Justicar Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..WHITE.." - "..AL["Holy"];
			[1] = { itemID = 29049, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Light-Collar of the Incarnate
			[2] = { itemID = 29054, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Light-Mantle of the Incarnate
			[3] = { itemID = 29050, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Robes of the Incarnate
			[4] = { itemID = 29055, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Handwraps of the Incarnate
			[5] = { itemID = 29053, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Trousers of the Incarnate
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..WHITE.." - "..AL["Shadow"];
			[1] = { itemID = 29058, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Soul-Collar of the Incarnate
			[2] = { itemID = 29060, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Soul-Mantle of the Incarnate
			[3] = { itemID = 29056, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Shroud of the Incarnate
			[4] = { itemID = 29057, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Gloves of the Incarnate
			[5] = { itemID = 29059, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Leggings of the Incarnate
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[1] = { itemID = 29044, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Netherblade Facemask
			[2] = { itemID = 29047, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Netherblade Shoulderpads
			[3] = { itemID = 29045, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Netherblade Chestpiece
			[4] = { itemID = 29048, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Netherblade Gloves
			[5] = { itemID = 29046, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Netherblade Breeches
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Enhancement"];
			[1] = { itemID = 29040, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Cyclone Helm
			[2] = { itemID = 29043, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Cyclone Shoulderplates
			[3] = { itemID = 29038, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Cyclone Breastplate
			[4] = { itemID = 29039, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Cyclone Gauntlets
			[5] = { itemID = 29042, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Cyclone War-Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Restoration"];	
			[1] = { itemID = 29028, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Cyclone Headdress
			[2] = { itemID = 29031, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Cyclone Shoulderpads
			[3] = { itemID = 29029, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Cyclone Hauberk
			[4] = { itemID = 29032, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Cyclone Gloves
			[5] = { itemID = 29030, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Cyclone Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Elemental"];
			[1] = { itemID = 29035, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Cyclone Faceguard
			[2] = { itemID = 29037, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Cyclone Shoulderguards
			[3] = { itemID = 29033, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Cyclone Chestguard
			[4] = { itemID = 29034, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Cyclone Handguards
			[5] = { itemID = 29036, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Cyclone Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[1] = { itemID = 28963, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Voidheart Crown
			[2] = { itemID = 28967, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Voidheart Mantle
			[3] = { itemID = 28964, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Voidheart Robe
			[4] = { itemID = 28968, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Voidheart Gloves
			[5] = { itemID = 28966, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Voidheart Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Protection"];
			[1] = { itemID = 29011, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Warbringer Greathelm
			[2] = { itemID = 29016, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Warbringer Shoulderguards
			[3] = { itemID = 29012, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Warbringer Chestguard
			[4] = { itemID = 29017, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Warbringer Handguards
			[5] = { itemID = 29015, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Warbringer Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Protection"];
			[1] = { itemID = 14984, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Warbringer Helmet
			[2] = { itemID = 14988, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Warbringer Pauldrons
			[3] = { itemID = 14985, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Warbringer Hauberk
			[4] = { itemID = 14989, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Warbringer Gloves
			[5] = { itemID = 14987, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Warbringer Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Fury"];
			[1] = { itemID = 29021, desc = {BabbleZone["Karazhan"], BabbleBoss["Prince Malchezaar"]} }; --Warbringer Battle-Helm
			[2] = { itemID = 29023, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["High King Maulgar"]} }; --Warbringer Shoulderplates
			[3] = { itemID = 29019, desc = {BabbleZone["Magtheridon's Lair"], BabbleBoss["Magtheridon"]} }; --Warbringer Breastplate
			[4] = { itemID = 29020, desc = {BabbleZone["Karazhan"], BabbleBoss["The Curator"]} }; --Warbringer Gauntlets
			[5] = { itemID = 29022, desc = {BabbleZone["Gruul's Lair"], BabbleBoss["Gruul the Dragonkiller"]} }; --Warbringer Greaves
		}
	};

--------------
--- Tier 5 ---
--------------

AtlasLoot_Data["T5"] = {
	Module = "AtlasLoot_BurningCrusade";
		Name = "Tier 5";
		Type = "BCRaid";
		{
			Name = "Druid"..WHITE.." - "..AL["Feral"];
			[1] = { itemID = 30228, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Nordrassil Headdress
			[2] = { itemID = 30230, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Nordrassil Feral-Mantle
			[3] = { itemID = 30222, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Nordrassil Chestplate
			[4] = { itemID = 30223, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Nordrassil Handgrips
			[5] = { itemID = 30229, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Nordrassil Feral-Kilt
		};
		{
			Name = "Druid"..WHITE.." - "..AL["Restoration"];
			[1] = { itemID = 30219, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Nordrassil Headguard
			[2] = { itemID = 30221, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Nordrassil Life-Mantle
			[3] = { itemID = 30216, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Nordrassil Chestguard
			[4] = { itemID = 30217, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Nordrassil Gloves
			[5] = { itemID = 30220, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Nordrassil Life-Kilt
		};
		{
			Name = "Druid"..WHITE.." - "..AL["Balance"];
			[1] = { itemID = 30233, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Nordrassil Headpiece
			[2] = { itemID = 30235, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Nordrassil Wrath-Mantle
			[3] = { itemID = 30231, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Nordrassil Chestpiece
			[4] = { itemID = 30232, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Nordrassil Gauntlets
			[5] = { itemID = 30234, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Nordrassil Wrath-Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[1] = { itemID = 30141, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Rift Stalker Helm
			[2] = { itemID = 30143, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Rift Stalker Mantle
			[3] = { itemID = 30139, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Rift Stalker Hauberk
			[4] = { itemID = 30140, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Rift Stalker Gauntlets
			[5] = { itemID = 30142, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Rift Stalker Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[1] = { itemID = 30206, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cowl of Tirisfal
			[2] = { itemID = 30210, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Mantle of Tirisfal
			[3] = { itemID = 30196, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Robes of Tirisfal
			[4] = { itemID = 30205, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Gloves of Tirisfal
			[5] = { itemID = 30207, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Leggings of Tirisfal
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Protection"];
			[1] = { itemID = 30125, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Crystalforge Faceguard
			[2] = { itemID = 30127, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Crystalforge Shoulderguards
			[3] = { itemID = 30123, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Crystalforge Chestguard
			[4] = { itemID = 30124, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Crystalforge Handguards
			[5] = { itemID = 30126, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Crystalforge Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Retribution"];
			[1] = { itemID = 30131, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Crystalforge War-Helm
			[2] = { itemID = 30133, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Crystalforge Shoulderbraces
			[3] = { itemID = 30129, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Crystalforge Breastplate
			[4] = { itemID = 30130, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Crystalforge Gauntlets
			[5] = { itemID = 30132, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Crystalforge Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Holy"];
			[1] = { itemID = 30136, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Crystalforge Greathelm
			[2] = { itemID = 30138, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Crystalforge Pauldrons
			[3] = { itemID = 30134, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Crystalforge Chestpiece
			[4] = { itemID = 30135, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Crystalforge Gloves
			[5] = { itemID = 30137, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Crystalforge Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..WHITE.." - "..AL["Holy"];
			[1] = { itemID = 30152, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cowl of the Avatar
			[2] = { itemID = 30154, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Mantle of the Avatar
			[3] = { itemID = 30150, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Vestments of the Avatar
			[4] = { itemID = 30151, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Gloves of the Avatar
			[5] = { itemID = 30153, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Breeches of the Avatar
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..WHITE.." - "..AL["Shadow"];
			[1] = { itemID = 30161, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Hood of the Avatar
			[2] = { itemID = 30163, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Wings of the Avatar
			[3] = { itemID = 30159, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Shroud of the Avatar
			[4] = { itemID = 30160, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Handguards of the Avatar
			[5] = { itemID = 30162, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Leggings of the Avatar
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[1] = { itemID = 30146, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Deathmantle Helm
			[2] = { itemID = 30149, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Deathmantle Shoulderpads
			[3] = { itemID = 30144, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Deathmantle Chestguard
			[4] = { itemID = 30145, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Deathmantle Handguards
			[5] = { itemID = 30148, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Deathmantle Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Enhancement"];
			[1] = { itemID = 30190, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cataclysm Helm
			[2] = { itemID = 30194, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Cataclysm Shoulderplates
			[3] = { itemID = 30185, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Cataclysm Chestplate
			[4] = { itemID = 30189, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Cataclysm Gauntlets
			[5] = { itemID = 30192, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Cataclysm Legplates
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Restoration"];
			[1] = { itemID = 30166, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cataclysm Headguard
			[2] = { itemID = 30168, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Cataclysm Shoulderguards
			[3] = { itemID = 30164, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Cataclysm Chestguard
			[4] = { itemID = 30165, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Cataclysm Gloves
			[5] = { itemID = 30167, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Cataclysm Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Elemental"];
			[1] = { itemID = 30171, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Cataclysm Headpiece
			[2] = { itemID = 30173, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Cataclysm Shoulderpads
			[3] = { itemID = 30169, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Cataclysm Chestpiece
			[4] = { itemID = 30170, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Cataclysm Handgrips
			[5] = { itemID = 30172, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Cataclysm Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[1] = { itemID = 30212, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Hood of the Corruptor
			[2] = { itemID = 30215, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Mantle of the Corruptor
			[3] = { itemID = 30214, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Robe of the Corruptor
			[4] = { itemID = 30211, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Gloves of the Corruptor
			[5] = { itemID = 30213, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Leggings of the Corruptor
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Protection"];
			[1] = { itemID = 30115, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Destroyer Greathelm
			[2] = { itemID = 30117, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Destroyer Shoulderguards
			[3] = { itemID = 30113, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Destroyer Chestguard
			[4] = { itemID = 30114, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Destroyer Handguards
			[5] = { itemID = 30116, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Destroyer Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Protection"];
			[1] = { itemID = 14992, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Destroyer Helmet
			[2] = { itemID = 14994, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Destroyer Pauldrons
			[3] = { itemID = 14990, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Destroyer Hauberk
			[4] = { itemID = 14991, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Destroyer Gloves
			[5] = { itemID = 14993, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Destroyer Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Fury"];
			[1] = { itemID = 30120, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Lady Vashj"]} }; --Destroyer Battle-Helm
			[2] = { itemID = 30122, desc = {BabbleZone["The Eye"], BabbleBoss["Void Reaver"]} }; --Destroyer Shoulderblades
			[3] = { itemID = 30118, desc = {BabbleZone["The Eye"], BabbleBoss["Kael'thas Sunstrider"]} }; --Destroyer Breastplate
			[4] = { itemID = 30119, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Leotheras the Blind"]} }; --Destroyer Gauntlets
			[5] = { itemID = 30121, desc = {BabbleZone["Serpentshrine Cavern"], BabbleBoss["Fathom-Lord Karathress"]} }; --Destroyer Greaves
		};
	};

--------------
--- Tier 6 ---
--------------

	AtlasLoot_Data["T6"] = {
	Module = "AtlasLoot_BurningCrusade";
			Name = "Tier 6";
			Type = "BCRaid";
		{
			Name = "Druid"..WHITE.." - "..AL["Feral"];
			[1] = { itemID = 31039, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Thunderheart Cover
			[2] = { itemID = 31048, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Thunderheart Pauldrons
			[3] = { itemID = 31042, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Thunderheart Chestguard
			[4] = { itemID = 34444, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Thunderheart Wristguards
			[5] = { itemID = 31034, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kaz'rogal"]} }; --Thunderheart Gauntlets
			[6] = { itemID = 34556, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Thunderheart Waistguard
			[7] = { itemID = 31044, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Thunderheart Leggings
			[8] = { itemID = 34573, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Thunderheart Treads
		};
		{
			Name = "Druid"..WHITE.." - "..AL["Restoration"];
			[1] = { itemID = 31037, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Thunderheart Helmet
			[2] = { itemID = 31047, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Thunderheart Spaulders
			[3] = { itemID = 31041, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Thunderheart Tunic
			[4] = { itemID = 34445, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Thunderheart Bracers
			[5] = { itemID = 31032, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Thunderheart Gloves
			[6] = { itemID = 34554, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Thunderheart Belt
			[7] = { itemID = 31045, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Thunderheart Legguards
			[8] = { itemID = 34571, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Thunderheart Boots
		};
		{
			Name = "Druid"..WHITE.." - "..AL["Balance"];
			[1] = { itemID = 31040, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Thunderheart Headguard
			[2] = { itemID = 31049, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Thunderheart Shoulderpads
			[3] = { itemID = 31043, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Thunderheart Vest
			[4] = { itemID = 34446, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Thunderheart Bands
			[5] = { itemID = 31035, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Thunderheart Handguards
			[6] = { itemID = 34555, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Thunderheart Cord
			[7] = { itemID = 31046, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Thunderheart Pants
			[8] = { itemID = 34572, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Thunderheart Footwraps
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[1] = { itemID = 31003, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Gronnstalker's Helmet
			[2] = { itemID = 31006, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Gronnstalker's Spaulders
			[3] = { itemID = 31004, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Gronnstalker's Chestguard
			[4] = { itemID = 34443, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Gronnstalker's Bracers
			[5] = { itemID = 31001, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Gronnstalker's Gloves
			[6] = { itemID = 34549, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Gronnstalker's Belt
			[7] = { itemID = 31005, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Gronnstalker's Leggings
			[8] = { itemID = 34570, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Gronnstalker's Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[1] = { itemID = 31056, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Cowl of the Tempest
			[2] = { itemID = 31059, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Mantle of the Tempest
			[3] = { itemID = 31057, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Robes of the Tempest
			[4] = { itemID = 34447, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Bracers of the Tempest
			[5] = { itemID = 31055, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Gloves of the Tempest
			[6] = { itemID = 34557, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Belt of the Tempest
			[7] = { itemID = 31058, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Leggings of the Tempest
			[8] = { itemID = 34574, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Boots of the Tempest
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Protection"];
			[1] = { itemID = 30987, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Lightbringer Faceguard
			[2] = { itemID = 30998, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Lightbringer Shoulderguards
			[3] = { itemID = 30991, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Lightbringer Chestguard
			[4] = { itemID = 34433, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Lightbringer Wristguards
			[5] = { itemID = 30985, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Lightbringer Handguards
			[6] = { itemID = 34488, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Lightbringer Waistguard
			[7] = { itemID = 30995, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Lightbringer Legguards
			[8] = { itemID = 34560, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Lightbringer Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Retribution"];
			[1] = { itemID = 30989, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Lightbringer War-Helm
			[2] = { itemID = 30997, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Lightbringer Shoulderbraces
			[3] = { itemID = 30990, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Lightbringer Breastplate
			[4] = { itemID = 34431, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Lightbringer Bands
			[5] = { itemID = 30982, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Lightbringer Gauntlets
			[6] = { itemID = 34485, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Lightbringer Girdle
			[7] = { itemID = 30993, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Lightbringer Greaves
			[8] = { itemID = 34561, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Lightbringer Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Holy"];
			[1] = { itemID = 30988, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Lightbringer Greathelm
			[2] = { itemID = 30996, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Lightbringer Pauldrons
			[3] = { itemID = 30992, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Lightbringer Chestpiece
			[4] = { itemID = 34432, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Lightbringer Bracers
			[5] = { itemID = 30983, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Lightbringer Gloves
			[6] = { itemID = 34487, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Lightbringer Belt
			[7] = { itemID = 30994, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Lightbringer Leggings
			[8] = { itemID = 34559, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Lightbringer Treads
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..WHITE.." - "..AL["Holy"];
			[1] = { itemID = 31063, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Cowl of Absolution
			[2] = { itemID = 31069, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Mantle of Absolution
			[3] = { itemID = 31066, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Vestments of Absolution
			[4] = { itemID = 34435, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Cuffs of Absolution
			[5] = { itemID = 31060, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Gloves of Absolution
			[6] = { itemID = 34527, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Belt of Absolution
			[7] = { itemID = 31068, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Breeches of Absolution
			[8] = { itemID = 34562, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Boots of Absolution
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..WHITE.." - "..AL["Shadow"];
			[1] = { itemID = 31064, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Hood of Absolution
			[2] = { itemID = 31070, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Shoulderpads of Absolution
			[3] = { itemID = 31065, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Shroud of Absolution
			[4] = { itemID = 34434, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Bracers of Absolution
			[5] = { itemID = 31061, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Handguards of Absolution
			[6] = { itemID = 34528, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Cord of Absolution
			[7] = { itemID = 31067, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Leggings of Absolution
			[8] = { itemID = 34563, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Treads of Absolution
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[1] = { itemID = 31027, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Slayer's Helm
			[2] = { itemID = 31030, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Slayer's Shoulderpads
			[3] = { itemID = 31028, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Slayer's Chestguard
			[4] = { itemID = 34448, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Slayer's Bracers
			[5] = { itemID = 31026, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Slayer's Handguards
			[6] = { itemID = 34558, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Slayer's Belt
			[7] = { itemID = 31029, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Slayer's Legguards
			[8] = { itemID = 34575, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Slayer's Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Enhancement"];
			[1] = { itemID = 31015, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Skyshatter Cover
			[2] = { itemID = 31024, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Skyshatter Pauldrons
			[3] = { itemID = 31018, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Skyshatter Tunic
			[4] = { itemID = 34439, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Skyshatter Wristguards
			[5] = { itemID = 31011, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Skyshatter Grips
			[6] = { itemID = 34545, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Skyshatter Girdle
			[7] = { itemID = 31021, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Skyshatter Pants
			[8] = { itemID = 34567, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Skyshatter Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Restoration"];
			[1] = { itemID = 31012, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Skyshatter Helmet
			[2] = { itemID = 31022, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Skyshatter Shoulderpads
			[3] = { itemID = 31016, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Skyshatter Chestguard
			[4] = { itemID = 34438, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Skyshatter Bracers
			[5] = { itemID = 31007, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Skyshatter Gloves
			[6] = { itemID = 34543, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Skyshatter Belt
			[7] = { itemID = 31019, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Skyshatter Leggings
			[8] = { itemID = 34565, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Skyshatter Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Elemental"];
			[1] = { itemID = 31014, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Skyshatter Headguard
			[2] = { itemID = 31023, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Skyshatter Mantle
			[3] = { itemID = 31017, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Skyshatter Breastplate
			[4] = { itemID = 34437, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Skyshatter Bands
			[5] = { itemID = 31008, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Skyshatter Gauntlets
			[6] = { itemID = 34542, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Skyshatter Cord
			[7] = { itemID = 31020, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Skyshatter Legguards
			[8] = { itemID = 34566, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Skyshatter Treads
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[1] = { itemID = 31051, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Hood of the Malefic
			[2] = { itemID = 31054, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Mantle of the Malefic
			[3] = { itemID = 31052, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Robe of the Malefic
			[4] = { itemID = 34436, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Bracers of the Malefic
			[5] = { itemID = 31050, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Gloves of the Malefic
			[6] = { itemID = 34541, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Belt of the Malefic
			[7] = { itemID = 31053, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Leggings of the Malefic
			[8] = { itemID = 34564, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Boots of the Malefic
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Protection"].. " - Block";
			[1] = { itemID = 30974, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Onslaught Greathelm
			[2] = { itemID = 30980, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Onslaught Shoulderguards
			[3] = { itemID = 30976, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Onslaught Chestguard
			[4] = { itemID = 34442, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Onslaught Wristguards
			[5] = { itemID = 30970, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Onslaught Handguards
			[6] = { itemID = 34547, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Onslaught Waistguard
			[7] = { itemID = 30978, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Onslaught Legguards
			[8] = { itemID = 34568, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Onslaught Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Protection"].. " - Parry";
			[1] = { itemID = 33642, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Onslaught Greathelm
			[2] = { itemID = 33645, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Onslaught Shoulderguards
			[3] = { itemID = 33643, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Onslaught Chestguard
			[4] = { itemID = 33646, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Onslaught Wristguards
			[5] = { itemID = 33641, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Onslaught Handguards
			[6] = { itemID = 33647, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Onslaught Waistguard
			[7] = { itemID = 33644, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Onslaught Legguards
			[8] = { itemID = 33648, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Onslaught Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - "..AL["Fury"];
			[1] = { itemID = 30972, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Archimonde"]} }; --Onslaught Battle-Helm
			[2] = { itemID = 30979, desc = {BabbleZone["Black Temple"], BabbleBoss["Mother Shahraz"]} }; --Onslaught Shoulderblades
			[3] = { itemID = 30975, desc = {BabbleZone["Black Temple"], BabbleBoss["Illidan Stormrage"]} }; --Onslaught Breastplate
			[4] = { itemID = 34441, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Kalecgos"]} }; --Onslaught Bracers
			[5] = { itemID = 30969, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Kalecgos"]} }; --Onslaught Gauntlets
			[6] = { itemID = 34546, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Brutallus"]} }; --Onslaught Belt
			[7] = { itemID = 30977, desc = {BabbleZone["Hyjal Summit"], BabbleBoss["Azgalor"]} }; --Onslaught Greaves
			[8] = { itemID = 34569, desc = {BabbleZone["Sunwell Plateau"], BabbleBoss["Felmyst"]} }; --Onslaught Treads
		};
	};


--------------------------------
--- The Burning Crusade Sets ---
--------------------------------

AtlasLoot_Data["TBCSets"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Burning Crusade Sets"];
	{
		Name = AL["Latro's Flurry"];
		[1] = { itemID = 34703 }; --Latro's Dancing Blade
		[2] = { itemID = 28189 }; --Latro's Shifting Sword
	};
	{
		Name = AL["The Twin Stars"];
		[1] = { itemID = 31338  }; --Charlotte's Ivy
		[2] = { itemID = 31339  }; --Lola's Eve
	};
	{
		Name = AL["The Fists of Fury"];
		[1] = { itemID = 32946 }; --Claw of Molten Fury
		[2] = { itemID = 32945 }; --Fist of Molten Fury
	};
	{
		Name = AL["The Twin Blades of Azzinoth"];
		[1] = { itemID = 32837 }; --Warglaive of Azzinoth
		[2] = { itemID = 32838 }; --Warglaive of Azzinoth
	};
};

--------------------------------
--- Badge of Justice Rewards ---
--------------------------------

AtlasLoot_Data["BadgeShatt"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = BabbleZone["Shattrath City"];
	{
		Name = BabbleInventory["Cloth"];
		[1] = { itemID = 32090, price = "50 #heroic#" }; --Cowl of Naaru Blessings
		[2] = { itemID = 32089, price = "50 #heroic#" }; --Mana-Binders Cowl
		[3] = { itemID = 33588, price = "35 #heroic#" }; --Runed Spell-cuffs
		[4] = { itemID = 33589, price = "35 #heroic#" }; --Wristguards of Tranquil Thought
		[5] = { itemID = 33587, price = "60 #heroic#" }; --Light-Blessed Bonds
		[6] = { itemID = 33586, price = "60 #heroic#" }; --Studious Wraps
		[7] = { itemID = 33291, price = "60 #heroic#" }; --Voodoo-woven Belt
		[8] = { itemID = 33585, price = "75 #heroic#" }; --Achromic Trousers of the Naaru
		[9] = { itemID = 33584, price = "75 #heroic#" }; --Pantaloons of Arcane Annihilation
	};
	{
		Name = BabbleInventory["Leather"];
		[1] = { itemID = 32088, price = "50 #heroic#" }; --Cowl of Beastly Rage
		[2] = { itemID = 33972, price = "75 #heroic#" }; --Mask of Primal Power
		[3] = { itemID = 32087, price = "50 #heroic#" }; --Mask of the Deceiver
		[4] = { itemID = 33287, price = "60 #heroic#" }; --Gnarled Ironwood Pauldrons
		[5] = { itemID = 33973, price = "60 #heroic#" }; --Pauldrons of Tribal Fury
		[6] = { itemID = 33566, price = "75 #heroic#" }; --Blessed Elunite Coverings
		[7] = { itemID = 33579, price = "75 #heroic#" }; --Vestments of Hibernation
		[8] = { itemID = 33578, price = "35 #heroic#" }; --Armwraps of the Kaldorei Protector
		[9] = { itemID = 33580, price = "35 #heroic#" }; --Band of the Swift Paw
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
		[1] = { itemID = 32086, price = "50 #heroic#" }; --Storm Master's Helmet
		[2] = { itemID = 32085, price = "50 #heroic#" }; --Warpstalker Helm
		[3] = { itemID = 33970, price = "60 #heroic#" }; --Pauldrons of the Furious Elements
		[4] = { itemID = 33965, price = "75 #heroic#" }; --Hauberk of the Furious Elements
		[5] = { itemID = 33535, price = "35 #heroic#" }; --Earthquake Bracers
		[6] = { itemID = 33532, price = "35 #heroic#" }; --Gleaming Earthen Bracers
		[7] = { itemID = 33529, price = "35 #heroic#" }; --Steadying Bracers
		[8] = { itemID = 33528, price = "60 #heroic#" }; --Gauntlets of Sniping
		[9] = { itemID = 33534, price = "60 #heroic#" }; --Grips of Nature's Wrath
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
		[1] = { itemID = 33810, price = "75 #heroic#" }; --Amani Mask of Death
		[2] = { itemID = 32083, price = "50 #heroic#" }; --Faceguard of Determination
		[3] = { itemID = 32084, price = "50 #heroic#" }; --Helmet of the Steadfast Champion
		[4] = { itemID = 33514, price = "60 #heroic#" }; --Pauldrons of Gruesome Fate
		[5] = { itemID = 33522, price = "75 #heroic#" }; --Chestguard of the Stoic Guardian
		[6] = { itemID = 33516, price = "35 #heroic#" }; --Bracers of the Ancient Phalanx
		[7] = { itemID = 33513, price = "35 #heroic#" }; --Eternium Rage-shackles
		[8] = { itemID = 33520, price = "35 #heroic#" }; --Vambraces of the Naaru
		[9] = { itemID = 33517, price = "60 #heroic#" }; --Bonefist Gauntlets
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
		[1] = { itemID = 29375, price = "25 #heroic#" }; --Bishop's Cloak
		[2] = { itemID = 29382, price = "25 #heroic#" }; --Blood Knight War Cloak
		[3] = { itemID = 35321, price = "60 #heroic#" }; --Cloak of Arcane Alacrity
		[4] = { itemID = 33304, price = "60 #heroic#" }; --Cloak of Subjugated Power
		[5] = { itemID = 35324, price = "60 #heroic#" }; --Cloak of Swift Reprieve
		[6] = { itemID = 33484, price = "60 #heroic#" }; --Dory's Embrace
		[7] = { itemID = 29385, price = "25 #heroic#" }; --Farstrider Defender's Cloak
		[8] = { itemID = 33333, price = "60 #heroic#" }; --Kharmaa's Shroud of Hope
		[9] = { itemID = 29369, price = "25 #heroic#" }; --Shawl of Shifting Probabilities
		[10] = { itemID = 33593, price = "35 #heroic#" }; --Slikk's Cloak of Placation
	};
	{
		Name = BabbleInventory["Totem"] .. "s - " .. BabbleInventory["Idol"] .. "s - " .. BabbleInventory["Libram"] .. "s";
		[1] = { itemID = 29390, price = "15 #heroic#" }; --Everbloom Idol
		[2] = { itemID = 33508, price = "20 #heroic#" }; --Idol of Budding Life
		[3] = { itemID = 33509, price = "20 #heroic#" }; --Idol of Terror
		[4] = { itemID = 33510, price = "20 #heroic#" }; --Idol of the Unseen Moon
		[5] = { itemID = 33506, price = "20 #heroic#" }; --Skycall Totem
		[6] = { itemID = 33507, price = "20 #heroic#" }; --Stonebreaker's Totem
		[7] = { itemID = 33505, price = "20 #heroic#" }; --Totem of Living Water
		[8] = { itemID = 29389, price = "15 #heroic#" }; --Totem of the Pulsing Earth
		[9] = { itemID = 33503, price = "20 #heroic#" }; --Libram of Divine Judgement
		[10] = { itemID = 33504, price = "20 #heroic#" }; --Libram of Divine Purpose
		[11] = { itemID = 33502, price = "20 #heroic#" }; --Libram of Mending
		[12] = { itemID = 29388, price = "15 #heroic#" }; --Libram of Repentance
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 29275, price = "50 #heroic#" }; --Searing Sunblade
		[2] = { itemID = 33192, price = "25 #heroic#" }; --Carved Witch Doctor's Stick
		[3] = { itemID = 29266, price = "33 #heroic#" }; --Azure-Shield of Coldarra
		[4] = { itemID = 29267, price = "33 #heroic#" }; --Light-Bearer's Faith Shield
		[5] = { itemID = 29268, price = "33 #heroic#" }; --Mazthoril Honor Shield
		[6] = { itemID = 33334 , price = "35 #heroic#" }; --Fetish of the Primal Gods
		[7] = { itemID = 29270 , price = "25 #heroic#" }; --Flametounge Seal
		[8] = { itemID = 29273 , price = "25 #heroic#" }; --Khadgar's Knapsack
		[9] = { itemID = 29272 , price = "25 #heroic#" }; --Orb of the Soul-Eater
		[10] = { itemID = 29269 , price = "25 #heroic#" }; --Sapphiron's Wing Bone
		[11] = { itemID = 29271 , price = "25 #heroic#" }; --Talisman of Kalecgos
		[12] = { itemID = 29274 , price = "25 #heroic#" }; --Tears of Heaven
		[13] = { itemID = 33325 , price = "35 #heroic#" }; --Voodoo Shaker
	};
	{
		Name = AL["Accessories"];
		[1] = { itemID = 33296 , price = "35 #heroic#" }; --Brooch of Deftness
		[2] = { itemID = 29381 , price = "25 #heroic#" }; --Choker of Vile Intent
		[3] = { itemID = 29374 , price = "25 #heroic#" }; --Necklace of Eternal Hope
		[4] = { itemID = 29368 , price = "25 #heroic#" }; --Manasurge Pendant
		[5] = { itemID = 29386 , price = "25 #heroic#" }; --Necklace of the Juggernaut
		[6] = { itemID = 29373 , price = "25 #heroic#" }; --Band of Halos
		[7] = { itemID = 29379 , price = "25 #heroic#" }; --Ring of Arathi Warlords
		[8] = { itemID = 29367 , price = "25 #heroic#" }; --Ring of Cryptic Dreams
		[9] = { itemID = 29384 , price = "25 #heroic#" }; --Ring of Unyielding Force
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
		[1] = { icon = "INV_Box_01", name = BabbleInventory["Cloth"] };
		[2] = { itemID = 30762, price = "30 #heroic#" }; --Infernoweave Robe
		[3] = { itemID = 30764, price = "20 #heroic#" }; --Infernoweave Gloves
		[4] = { itemID = 30761, price = "30 #heroic#" }; --Infernoweave Leggings
		[5] = { itemID = 30763, price = "20 #heroic#" }; --Infernoweave Boots
		[7] = { icon = "INV_Box_01", name = BabbleInventory["Leather"] };
		[8] = { itemID = 30776, price = "30 #heroic#" }; --Inferno Hardened Chestguard
		[9] = { itemID = 30780, price = "20 #heroic#" }; --Inferno Hardened Gloves
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
		[1] = { itemID = 34924, price = "100 #heroic#" }; --Gown of Spiritual Wonder
		[2] = { itemID = 34917, price = "100 #heroic#" }; --Shroud of the Lore`nial
		[3] = { itemID = 34936, price = "100 #heroic#" }; --Tormented Demonsoul Robes
		[4] = { itemID = 34938, price = "75 #heroic#" }; --Enslaved Doomguard Soulgrips
		[5] = { itemID = 34925, price = "100 #heroic#" }; --Adorned Supernal Legwraps
		[6] = { itemID = 34937, price = "100 #heroic#" }; --Corrupted Soulcloth Pantaloons
		[7] = { itemID = 34918, price = "100 #heroic#" }; --Legwraps of Sweltering Flame
		[8] = { itemID = 34919, price = "75 #heroic#" }; --Boots of Incantations
		[9] = { itemID = 34926, price = "75 #heroic#" }; --Slippers of Dutiful Mending
	};
	{
		Name = BabbleInventory["Leather"];
		[1] = { itemID = 34906, price = "100 #heroic#" }; --Embrace of Everlasting Prowess
		[2] = { itemID = 34903, price = "100 #heroic#" }; --Embrace of Starlight
		[3] = { itemID = 34900, price = "100 #heroic#" }; --Shroud of Nature's Harmony
		[4] = { itemID = 34927, price = "100 #heroic#" }; --Tunic of the Dark Hour
		[5] = { itemID = 34904, price = "75 #heroic#" }; --Barbed Gloves of the Sage
		[6] = { itemID = 34911, price = "75 #heroic#" }; --Handwraps of the Aggressor
		[7] = { itemID = 34902, price = "75 #heroic#" }; --Oakleaf-Spun Handguards
		[8] = { itemID = 34929, price = "75 #heroic#" }; --Belt of the Silent Path
		[9] = { itemID = 34905, price = "100 #heroic#" }; --Crystalwind Leggings
		[10] = { itemID = 34901, price = "100 #heroic#" }; --Grovewalker's Leggings
		[11] = { itemID = 34910, price = "100 #heroic#" }; --Tameless Breeches
		[12] = { itemID = 34928, price = "100 #heroic#" }; --Trousers of the Scryers' Retainer
	};
	{
		Name = BabbleInventory["Mail"];
		[1] = { itemID = 34933, price = "100 #heroic#" }; --Hauberk of Whirling Fury
		[2] = { itemID = 34912, price = "100 #heroic#" }; --Scaled Drakeskin Chestguard
		[3] = { itemID = 34930, price = "100 #heroic#" }; --Wave of Life Chestguard
		[4] = { itemID = 34916, price = "75 #heroic#" }; --Gauntlets of Rapidity
		[5] = { itemID = 34935, price = "75 #heroic#" }; --Aftershock Waistguard
		[6] = { itemID = 34932, price = "75 #heroic#" }; --Clutch of the Soothing Breeze
		[7] = { itemID = 34914, price = "100 #heroic#" }; --Leggings of the Pursuit
		[8] = { itemID = 34931, price = "100 #heroic#" }; --Runed Scales of Antiquity
		[9] = { itemID = 34934, price = "100 #heroic#" }; --Rushing Storm Kilt
	};
	{
		Name = BabbleInventory["Plate"];
		[1] = { itemID = 34942, price = "100 #heroic#" }; --Breastplate of Ire
		[2] = { itemID = 34939, price = "100 #heroic#" }; --Chestplate of Stoicism
		[3] = { itemID = 34921, price = "100 #heroic#" }; --Ecclesiastical Cuirass
		[4] = { itemID = 34945, price = "100 #heroic#" }; --Shattrath Protectorate's Breastplate
		[5] = { itemID = 34944, price = "75 #heroic#" }; --Girdle of Seething Rage
		[6] = { itemID = 34941, price = "75 #heroic#" }; --Girdle of the Fearless
		[7] = { itemID = 34923, price = "75 #heroic#" }; --Waistguard of Reparation
		[8] = { itemID = 34922, price = "100 #heroic#" }; --Greaves of Pacification
		[9] = { itemID = 34946, price = "100 #heroic#" }; --Inscribed Legplates of the Aldor
		[10] = { itemID = 34943, price = "100 #heroic#" }; --Legplates of Unending Fury
		[11] = { itemID = 34940, price = "100 #heroic#" }; --Sunguard Legplates
		[12] = { itemID = 34947, price = "75 #heroic#" }; --Blue's Greaves of the Righteous Guardian
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 34893, price = "105 #heroic#" }; --Vanir's Right Fist of Brutality
		[2] = { itemID = 34951, price = "45 #heroic#" }; --Vanir's Left Fist of Brutality
		[3] = { itemID = 34950, price = "45 #heroic#" }; --Vanir's Left Fist of Savagery
		[4] = { itemID = 34895, price = "150 #heroic#" }; --Scryer's Blade of Focus
		[5] = { itemID = 34894, price = "105 #heroic#" }; --Blade of Serration
		[6] = { itemID = 34949, price = "45 #heroic#" }; --Swift Blade of Uncertainty
		[7] = { itemID = 34952, price = "45 #heroic#" }; --The Mutilator
		[8] = { itemID = 34891, price = "150 #heroic#" }; --The Blade of Harbingers
		[9] = { itemID = 34896 , price = "150 #heroic#" }; --Gavel of Naaru Blessings
		[10] = { itemID = 34898 , price = "150 #heroic#" }; --Staff of the Forest Lord
		[11] = { itemID = 34892, price = "150 #heroic#" }; --Crossbow of Relentless Strikes
	};
	{
		Name = AL["Accessories"];
		[1] = { itemID = 34887 , price = "60 #heroic#" }; --Angelista's Revenge
		[2] = { itemID = 34890 , price = "60 #heroic#" }; --Anveena's Touch
		[3] = { itemID = 34889 , price = "60 #heroic#" }; --Fused Nethergon Band
		[4] = { itemID = 34888 , price = "60 #heroic#" }; --Ring of the Stalwart Protector
	};
};

AtlasLoot_Data["SunmoteSunwell"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["Yrma - Sunmote Vendor"];
	Type = "BCRaid";
	{
		Name = AL["Page 1"];
		[1] = { itemID = 10735, contentsPreview = {{34345},{34664}} }; -- Cover of Anasterian
		[2] = { itemID = 10736, contentsPreview = {{34332},{34664}} }; -- War-Helm of Gul\'dan
		[3] = { itemID = 11433, contentsPreview = {{34208},{34664}} }; -- Equilibrium Mantle
		[4] = { itemID = 11483, contentsPreview = {{34193},{34664}} }; -- Shoulderguards of the Thalassian Savior
		[5] = { itemID = 11484, contentsPreview = {{34215},{34664}} }; -- Casing of Reckless Fury
		[6] = { itemID = 11485, contentsPreview = {{34229},{34664}} }; -- Breastplate of Serene Shores
		[7] = { itemID = 11517, contentsPreview = {{34180},{34664}} }; -- Felfury Legguards
		[8] = { itemID = 11518, contentsPreview = {{34186},{34664}} }; -- Pants of the Tumulutuos Storm
		[9] = { itemID = 11519, contentsPreview = {{34350},{34664}} }; -- Gloves of the Ancient Shadowmoon
		[10] = { itemID = 11520, contentsPreview = {{34341},{34664}} }; -- Borderland Gauntlets 5076
		[11] = { itemID = 34381, contentsPreview = {{34180},{34664}} }; -- Felstrength Legplates
		[12] = { itemID = 34382, contentsPreview = {{34167},{34664}} }; -- Judicator\'s Legguards
		[13] = { itemID = 34383, contentsPreview = {{34186},{34664}} }; -- Kilt of Spiritual Reconstruction
		[14] = { itemID = 34384, contentsPreview = {{34169},{34664}} }; -- Breeches of Natural Splendor
		[15] = { itemID = 34385, contentsPreview = {{34188},{34664}} }; -- Leggings of the Immortal Beast
		[16] = { itemID = 34386, contentsPreview = {{34170},{34664}} }; -- Pantaloons of Growing Strife
		[17] = { itemID = 34388, contentsPreview = {{34192},{34664}} }; -- Pauldrons of Berserking
		[18] = { itemID = 34389, contentsPreview = {{34193},{34664}} }; -- Spaulders of the Thalassian Defender
		[19] = { itemID = 34390, contentsPreview = {{34208},{34664}} }; -- Erupting Epaulets
		[20] = { itemID = 34391, contentsPreview = {{34209},{34664}} }; -- Spaulders of Devastation
		[21] = { itemID = 34392, contentsPreview = {{34195},{34664}} }; -- Demontooth Shoulderpads
		[22] = { itemID = 34393, contentsPreview = {{34202},{34664}} }; -- Shoulderpads of Knowledge\'s Pursuit
		[23] = { itemID = 34394, contentsPreview = {{34215},{34664}} }; -- Breastplate of Agony\'s Aversion
		[24] = { itemID = 34395, contentsPreview = {{34216},{34664}} }; -- Noble Judicator\'s Chestguard
		[25] = { itemID = 34396, contentsPreview = {{34229},{34664}} }; -- Garments of Crashing Shores
		[26] = { itemID = 34397, contentsPreview = {{34211},{34664}} }; -- Bladed Chaos Tunic
		[27] = { itemID = 34398, contentsPreview = {{34212},{34664}} }; -- Utopian Tunic of Elune
		[28] = { itemID = 34399, contentsPreview = {{34233},{34664}} }; -- Robes of Ghostly Hatred
		[29] = { itemID = 34400, contentsPreview = {{34345},{34664}} }; -- Crown of Dath\'Remar
		[30] = { itemID = 34401, contentsPreview = {{34243},{34664}} }; -- Helm of Uther\'s Resolve
	};
	{
		Name = AL["Page 2"];
		[1] = { itemID = 34402, contentsPreview = {{34332},{34664}} }; -- Shroud of Chieftain Ner\'zhul
		[2] = { itemID = 34403, contentsPreview = {{34245},{34664}} }; -- Cover of Ursoc the Mighty
		[3] = { itemID = 34404, contentsPreview = {{34244},{34664}} }; -- Mask of the Fury Hunter
		[4] = { itemID = 34405, contentsPreview = {{34339},{34664}} }; -- Helm of Arcane Purity
		[5] = { itemID = 34406, contentsPreview = {{34342},{34664}} }; -- Gloves of Tyri\'s Power
		[6] = { itemID = 34407, contentsPreview = {{34351},{34664}} }; -- Tranquil Moonlight Wraps
		[7] = { itemID = 34408, contentsPreview = {{34234},{34664}} }; -- Gloves of the Forest Drifter
		[8] = { itemID = 34409, contentsPreview = {{34350},{34664}} }; -- Gauntlets of the Ancient Frostwolf
	}
};



AtlasLoot_Data["HardModeArena"] = {
	Module = "AtlasLoot_BurningCrusade";
			Name = "Hardmode arena";
		{
			Name = "Hardmode arena";
			[1] = { itemID = 32811, price = "25 #heroic#" }; --Veteran's Dreadweave Cuffs
			[2] = { itemID = 32799, price = "40 #heroic#" }; --Veteran's Dreadweave Belt
			[3] = { itemID = 32787, price = "40 #heroic#" }; --Veteran's Dreadweave Stalkers
			[5] = { itemID = 32980, price = "25 #heroic#" }; --Veteran's Mooncloth Cuffs
			[6] = { itemID = 32979, price = "40 #heroic#" }; --Veteran's Mooncloth Belt
			[7] = { itemID = 32981, price = "40 #heroic#" }; --Veteran's Mooncloth Slippers
			[9] = { itemID = 32820, price = "25 #heroic#" }; --Veteran's Silk Cuffs
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
		[1] = { itemID = 32809, price = "25 #heroic#" }; --Veteran's Chain Bracers
		[2] = { itemID = 32797, price = "40 #heroic#" }; --Veteran's Chain Girdle
		[3] = { itemID = 32785, price = "40 #heroic#" }; --Veteran's Chain Sabatons
		[5] = { itemID = 32816, price = "25 #heroic#" }; --Veteran's Linked Bracers
		[6] = { itemID = 32803, price = "40 #heroic#" }; --Veteran's Linked Girdle
		[7] = { itemID = 32791, price = "40 #heroic#" }; --Veteran's Linked Sabatons
		[9] = { itemID = 32817, price = "25 #heroic#" }; --Veteran's Mail Bracers
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
--- BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["BoE World Epics"];
	Type = "BCDungeon";
	{
		Name = AL["BoE World Epics"];
		[1] = { itemID = 31329 }; --Lifegiving Cloak
		[2] = { itemID = 31340 }; --Will of Edward the Odd
		[3] = { itemID = 31343 }; --Kamaei's Cerulean Skirt
		[4] = { itemID = 31333 }; --The Night Watchman
		[5] = { itemID = 31335 }; --Pants of Living Growth
		[6] = { itemID = 31330 }; --Lightning Crown
		[7] = { itemID = 31328 }; --Leggings of Beast Mastery
		[8] = { itemID = 31320 }; --Chestguard of Exile
		[9] = { itemID = 31338 }; --Charlotte's Ivy
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
		Name = "Page 1";
		[1] = { itemID = 31187 },
		[2] = { itemID = 31173 },
		[3] = { itemID = 31193 },
		[4] = { itemID = 31175 },
		[5] = { itemID = 31258 },
		[6] = { itemID = 31290 },
		[7] = { itemID = 31153 },
		[8] = { itemID = 31178 },
		[9] = { itemID = 31230 },
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
		Name = "Page 2";
		[1] = { itemID = 31282 },
		[2] = { itemID = 31143 },
		[3] = { itemID = 31200 },
		[4] = { itemID = 31240 },
		[5] = { itemID = 31283 },
		[6] = { itemID = 31297 },
		[7] = { itemID = 31147 },
		[8] = { itemID = 31294 },
		[9] = { itemID = 31277 },
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
--- World Bosses TBC ---
------------------------

AtlasLoot_Data["WorldBossesTBC"] = {
	Module = "AtlasLoot_BurningCrusade";
	Name = AL["World Bosses"];
	Type = "BCRaid";
	{
		Name = BabbleBoss["Doom Lord Kazzak"];
		[1] = { itemID = 30735 }; --Ancient Spellcloak of the Highborne
		[2] = { itemID = 30734 }; --Leggings of the Seventh Circle
		[3] = { itemID = 30737 }; --Gold-Leaf Wildboots
		[4] = { itemID = 30739 }; --Scaled Greaves of the Marksman
		[5] = { itemID = 30740 }; --Ripfiend Shoulderplates
		[6] = { itemID = 30741 }; --Topaz-Studded Battlegrips
		[7] = { itemID = 30736  }; --Ring of Flowing Light
		[8] = { itemID = 30738  }; --Ring of Reciprocity
		[9] = { itemID = 30733  }; --Hope Ender
		[10] = { itemID = 30732  }; --Exodar Life-Staff
	};
	{
		Name = BabbleBoss["Doomwalker"];
		[1] = { itemID = 30729 }; --Black-Iron Battlecloak
		[2] = { itemID = 30725 }; --Anger-Spark Gloves
		[3] = { itemID = 30727 }; --Gilded Trousers of Benediction
		[4] = { itemID = 30730  }; --Terrorweave Tunic
		[5] = { itemID = 30728 }; --Fathom-Helm of the Deeps
		[6] = { itemID = 30731 }; --Faceguard of the Endless Watch
		[7] = { itemID = 30726  }; --Archaic Charm of Presence
		[8] = { itemID = 30723 }; --Talon of the Tempest
		[9] = { itemID = 30722 }; --Ethereum Nexus-Reaver
		[10] = { itemID = 30724, desc = "=ds=#w5#" }; --Barrel-Blade Longrifle
	}
};

------------------------
---- Item Sacks TBC ----
------------------------

AtlasLoot_ExtraData[34846] = {
	[1] = {itemID = 23437 };
	[2] = {itemID = 23438 };
	[3] = {itemID = 23439 };
	[4] = {itemID = 23441 };
	[5] = {itemID = 23436 };
	[6] = {itemID = 23440 };
	[7] = {itemID = 32230 };
	[8] = {itemID = 32249 };
	[9] = {itemID = 32231 };
	[10] = {itemID = 32229 };
	[11] = {itemID = 32228 };
	[12] = {itemID = 32227 };
};

AtlasLoot_ExtraData[222637] = {
	[1] = { itemID = 229194 }; --The Krakmon Wand
	[2] = { itemID = 229193 }; --Massacre Cloak
	[3] = { itemID = 229196 }; --Throat Crushers
	[4] = { itemID = 229192 }; --Seal of the Amani'shi Berserker
	[5] = { itemID = 229195 }; --Staff of Blazing Glory
};

AtlasLoot_ExtraData[229739] = {
	Faction = {"The Scryers", "The Aldor"};
	["The Scryers"] = {
		[1] = { itemID = 228910, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Blade
		[2] = { itemID = 228911, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Knight
		[3] = { itemID = 228912, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Oracle
		[4] = { itemID = 228909, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Orb
		[5] = { itemID = 2228886, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Discipline
		[6] = { itemID = 2228887, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Faith
		[7] = { itemID = 2228888, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vengeance
		[8] = { itemID = 2228889, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Warding
		[9] = { itemID = 228913, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Guardian
		[10] = { itemID = 228914, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Phalanx
		[11] = { itemID = 2228891, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Protection
		[12] = { itemID = 2228890, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vigilance
	};
	["The Aldor"] = {
		[1] = { itemID = 2228910, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Blade
		[2] = { itemID = 2228911, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Knight
		[3] = { itemID = 2228912, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Oracle
		[4] = { itemID = 2228909, desc = AL["Shoulder Enchants"] }; --Masters Inscription of the Orb
		[5] = { itemID = 228886, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Discipline
		[6] = { itemID = 228887, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Faith
		[7] = { itemID = 228888, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vengeance
		[8] = { itemID = 228889, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Warding
		[9] = { itemID = 2228913, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Guardian
		[10] = { itemID = 2228914, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Phalanx
		[11] = { itemID = 228891, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Protection
		[12] = { itemID = 228890, desc = AL["Shoulder Enchants"] }; --Masters Inscription of Vigilance
	};
};