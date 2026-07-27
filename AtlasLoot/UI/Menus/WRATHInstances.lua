local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

AtlasLoot:AddNewMenus({

	["WrathKeys"] = {
		Name = "Keys",
		{ "Keys", {} }
	},
	--------------------
	--- Utgarde Keep ---
	--------------------

	["UtgardeKeep"] = {
		Name = "Utgarde Keep",
		Type = "WrathDungeon",
		{ "Prince Keleseth", {} },
		{ "Skarvald the Constructor", {} },
		{ "Ingvar the Plunderer", {} },
		{ "Trash Mobs", {} },
	},

	-----------------
	--- The Nexus ---
	-----------------

	["TheNexus"] = {
		Name = "The Nexus",
		Type = "WrathDungeon",
		{ "Grand Magus Telestra", {} },
		{ "Anomalus", {} },
		{ "Ormorok the Tree-Shaper", {} },
		{ "Commander Kolurg", {} },
		{ "Keristrasza", {} },
	},

	-------------------
	--- Azjol-Nerub ---
	-------------------

	["AzjolNerub"] = {
		Name = "Azjol-Nerub",
		Type = "WrathDungeon",
		{ "Krik'thir the Gatewatcher", {} },
		{ "Hadronox", {} },
		{ "Anub'arak", {} },
		{ "Trash Mobs", {} },
	},

	----------------------------------
	--- Ahn'kahet: The Old Kingdom ---
	----------------------------------

	["Ahnkahet"] = {
		Name = "Ahn'kahet: The Old Kingdom",
		Type = "WrathDungeon",
		{ "Elder Nadox", {} },
		{ "Prince Taldaram", {} },
		{ "Amanitar (Heroic)", {} },
		{ "Jedoga Shadowseeker", {} },
		{ "Herald Volazj", {} },
		{ "Trash Mobs", {} },
	},
	------------------------
	--- Drak'Tharon Keep ---
	------------------------

	["DrakTharonKeep"] = {
		Name = "Drak'Tharon Keep",
		Type = "WrathDungeon",
		{ "Trollgore", {} },
		{ "Novos the Summoner", {} },
		{ "King Dred", {} },
		{ "The Prophet Tharon'ja", {} },
		{ "Trash Mobs", {} },
	},
	-----------------------
	--- The Violet Hold ---
	-----------------------

	["TheVioletHold"] = {
		Name = "The Violet Hold",
		Type = "WrathDungeon",
		{ "Erekem", {} },
		{ "Zuramat the Obliterator", {} },
		{ "Xevozz", {} },
		{ "Ichoron", {} },
		{ "Moragg", {} },
		{ "Lavanthor", {} },
		{ "Cyanigosa", {} },
		{ "Trash Mobs", {} },
	},
	---------------
	--- Gundrak ---
	---------------

	["Gundrak"] = {
		Name = "Gundrak",
		Type = "WrathDungeon",
		{ "Slad'ran", {} },
		{ "Drakkari Colossus", {} },
		{ "Moorabi", {} },
		{ "Eck the Ferocious" .. " (" .. "Heroic" .. ")", {} },
		{ "Gal'darah", {} },
		{ "Trash Mobs", {} },
	},
	----------------------
	--- Halls of Stone ---
	----------------------

	["HallsofStone"] = {
		Name = "Halls of Stone",
		Type = "WrathDungeon",
		{ "Maiden of Grief", {} },
		{ "Krystallus", {} },
		{ "The Tribunal of Ages", {} },
		{ "Sjonnir The Ironshaper", {} },
		{ "Trash Mobs", {} },
	},
	--------------------------
	--- Halls of Lightning ---
	--------------------------

	["HallsofLightning"] = {
		Name = "Halls of Lightning",
		Type = "WrathDungeon",
		{ "General Bjarngrim", {} },
		{ "Volkhan", {} },
		{ "Ionar", {} },
		{ "Loken", {} },
		{ "Trash Mobs", {} },
	},
	---------------------------------------
	--- Caverns of Time: Old Stratholme ---
	---------------------------------------

	["CoTStratholme"] = {
		Name = "Caverns of Time" .. ": " .. "The Culling of Stratholme",
		Type = "WrathDungeon",
		{ "Meathook", {} },
		{ "Salramm the Fleshcrafter", {} },
		{ "Chrono-Lord Epoch", {} },
		{ "Infinite Corruptor" .. " (" .. "Heroic" .. ")", {} },
		{ "Mal'Ganis", {} },
		{ "Trash Mobs", {} },
	},
	------------------------
	--- Utgarde Pinnacle ---
	------------------------

	["UtgardePinnacle"] = {
		Name = "Utgarde Pinnacle",
		Type = "WrathDungeon",
		{ "Skadi the Ruthless", {} },
		{ "King Ymiron", {} },
		{ "Svala Sorrowgrave", {} },
		{ "Gortok Palehoof", {} },
		{ "Trash Mobs", {} },
	},
	------------------
	--- The Oculus ---
	------------------

	["TheOculus"] = {
		Name = "The Oculus",
		Type = "WrathDungeon",
		{ "Drakos the Interrogator", {} },
		{ "Mage-Lord Urom", {} },
		{ "Varos Cloudstrider", {} },
		{ "Ley-Guardian Eregos", {} },
		{ "Trash Mobs", {} },
	},
	--------------------------
	--- The Forge of Souls ---
	--------------------------

	["ForgeofSouls"] = {
		Name = "The Forge of Souls",
		Type = "WrathDungeon",
		{ "Bronjahm", {} },
		{ "Devourer of Souls", {} },
		{ "Devourer of Souls", {} },
	},
	--------------------
	--- Pit of Saron ---
	--------------------

	["PitofSaron"] = {
		Name = "Pit of Saron",
		Type = "WrathDungeon",
		{ "Forgemaster Garfrost", {} },
		{ "Krick and Ick", {} },
		{ "Scourgelord Tyrannus", {} },
		{ "Scourgelord Tyrannus", {} },
	},
	---------------------------
	--- Halls of Reflection ---
	---------------------------

	["HallsofReflection"] = {
		Name = "Halls of Reflection",
		Type = "WrathDungeon",
		{ "Falric", {} },
		{ "Marwyn", {} },
		{ "The Lich King", {} },
		{ "The Lich King", {} },
		{ "Trash Mobs", {} },
	},

	-----------------------------
	--- Trial of the Champion ---
	-----------------------------

	["TrialoftheChampion"] = {
		Name = "Trial of the Champion",
		Type = "WrathDungeon",
		{ "Faction Champions", {} },
		{ "Argent Confessor Paletress", {} },
		{ "Eadric the Pure", {} },
		{ "The Black Knight", {} },
		{ "The Black Knight" .. " (" .. "Heroic" .. ")", {} },
	},
	-------------------------
	--- Vault of Archavon ---
	-------------------------

	["VaultofArchavon"] = {
		Name = "Vault of Archavon",
		Type = "WrathRaid",
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Archavon the Stone Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Emalon the Storm Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Koralon the Flame Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
		{ "Toravon the Ice Watcher", {} },
	},
	-----------------
	--- Naxxramas ---
	-----------------

	-------------------------
	--- Construct Quarter ---
	-------------------------

	["Naxxramas80"] = {
		Name = "Naxxramas",
		Type = "WrathRaid",
		{ "Patchwerk", {} },
		{ "Patchwerk", {} },
		{ "Grobbulus", {} },
		{ "Grobbulus", {} },
		{ "Gluth", {} },
		{ "Gluth", {} },
		{ "Gluth", {} },
		{ "Gluth", {} },
		{ "Thaddius", {} },
		{ "Thaddius", {} },
		{ "Anub'Rekhan", {} },
		{ "Anub'Rekhan", {} },
		{ "Grand Widow Faerlina", {} },
		{ "Grand Widow Faerlina", {} },
		{ "Maexxna", {} },
		{ "Maexxna", {} },
		{ "Instructor Razuvious", {} },
		{ "Instructor Razuvious", {} },
		{ "Gothik the Harvester", {} },
		{ "Gothik the Harvester", {} },
		{ "The Four Horsemen", {} },
		{ "The Four Horsemen", {} },
		{ "Noth the Plaguebringer", {} },
		{ "Noth the Plaguebringer", {} },
		{ "Heigan the Unclean", {} },
		{ "Heigan the Unclean", {} },
		{ "Loatheb", {} },
		{ "Loatheb", {} },
		{ "Sapphiron", {} },
		{ "Sapphiron", {} },
		{ "Kel'Thuzad", {} },
		{ "Kel'Thuzad", {} },
		{ "Trash Mobs", {} },
		{ "Trash Mobs", {} },
	},
	------------------------
	--- Obsidian Sanctum ---
	------------------------

	["Sartharion"] = {
		Name = "The Obsidian Sanctum",
		Type = "WrathRaid",
		{ "Sartharion", {} },
		{ "Sartharion", {} },
	},	---------------------------
	--- The Eye of Eternity ---
	---------------------------

	["Malygos"] = {
		Name = "The Eye of Eternity",
		Type = "WrathRaid",
		{ "Malygos", {} },
	},	--------------
	--- Ulduar ---
	--------------

	["Ulduar"] = {
		Name = "Ulduar",
		Type = "WrathRaid",
		{ "Flame Leviathan", {} },
		{ "Flame Leviathan", {} },
		{ "Razorscale", {} },
		{ "Razorscale", {} },
		{ "Ignis the Furnace Master", {} },
		{ "Ignis the Furnace Master", {} },
		{ "XT-002 Deconstructor", {} },
		{ "XT-002 Deconstructor", {} },
		{ "The Iron Council", {} },
		{ "The Iron Council", {} },
		{ "Kologarn", {} },
		{ "Kologarn", {} },
		{ "Algalon the Observer", {} },
		{ "Algalon the Observer", {} },
		{ "Auriaya", {} },
		{ "Auriaya", {} },
		{ "Hodir", {} },
		{ "Hodir", {} },
		{ "Thorim", {} },
		{ "Thorim", {} },
		{ "Freya", {} },
		{ "Freya", {} },
		{ "Mimiron", {} },
		{ "Mimiron", {} },
		{ "General Vezax", {} },
		{ "General Vezax", {} },
		{ "Yogg-Saron", {} },
		{ "Yogg-Saron", {} },
		{ "Trash Mobs", {} },
		{ "Trash Mobs", {} },
		{ "Ulduar Formula/Patterns/Plans", {} },
	},	-----------------------------
	--- Trial of the Crusader ---
	-----------------------------

	["TrialoftheCrusader"] = {
		Name = "Trial of the Crusader",
		Type = "WrathRaid",
		{ "The Beasts of Northrend", {} },
		{ "The Beasts of Northrend", {} },
		{ "The Beasts of Northrend", {} },
		{ "The Beasts of Northrend", {} },
		{ "Lord Jaraxxus", {} },
		{ "Lord Jaraxxus", {} },
		{ "Lord Jaraxxus", {} },
		{ "Lord Jaraxxus", {} },
		{ "Faction Champions", {} },
		{ "Faction Champions", {} },
		{ "Faction Champions", {} },
		{ "Faction Champions", {} },
		{ "The Twin Val'kyr", {} },
		{ "The Twin Val'kyr", {} },
		{ "The Twin Val'kyr", {} },
		{ "The Twin Val'kyr", {} },
		{ "Anub'arak", {} },
		{ "Anub'arak", {} },
		{ "Anub'arak", {} },
		{ "Anub'arak", {} },
		{ "Trial of the Crusader Patterns/Plans", {} },
		{ "Trial of the Crusader Patterns/Plans", {} },
	},
	-------------------------
	--- Onyxia (Level 80) ---
	-------------------------

	["Onyxia80"] = {
		Name = "Onyxia's Lair",
		Type = "WrathRaid",
		{ "Onyxia", {} },
		{ "Onyxia", {} },
		{ "Onyxia", {} },
		{ "Onyxia", {} },
	},
	------------------------
	--- Icecrown Citadel ---
	------------------------

	-------------------
	--- Lower Spire ---
	-------------------

	["IcecrownCitadel"] = {
		Name = "Icecrown Citadel",
		Type = "WrathRaid",
		{ "Lord Marrowgar", {} },
		{ "Lord Marrowgar", {} },
		{ "Lady Deathwhisper", {} },
		{ "Lady Deathwhisper", {} },
		{ "Icecrown Gunship Battle", {} },
		{ "Icecrown Gunship Battle", {} },
		{ "Deathbringer Saurfang", {} },
		{ "Deathbringer Saurfang", {} },
		{ "Festergut", {} },
		{ "Festergut", {} },
		{ "Rotface", {} },
		{ "Rotface", {} },
		{ "Professor Putricide", {} },
		{ "Professor Putricide", {} },
		{ "Blood Prince Council", {} },
		{ "Blood Prince Council", {} },
		{ "Blood-Queen Lana'thel", {} },
		{ "Blood-Queen Lana'thel", {} },
		{ "Valithria Dreamwalker", {} },
		{ "Valithria Dreamwalker", {} },
		{ "Sindragosa", {} },
		{ "Sindragosa", {} },
		{ "The Lich King", {} },
		{ "The Lich King", {} },
		{ "Trash Mobs", {} },
	},
	--------------------
	--- Ruby Sanctum ---
	--------------------

	["Halion"] = {
		Name = "The Ruby Sanctum",
		Type = "WrathRaid",
		{ "Halion", {} },
		{ "Halion", {} },
		{ "Halion", {} },
		{ "Halion", {} },
	},	----------------
	--- Factions ---
	----------------

	-------------------------
	--- Alliance Vanguard ---
	-------------------------

	["AllianceVanguard"] = {
		Name = "Alliance Vanguard",
		{ "Revered", {} },
		{ "Exalted", {} },
	},	----------------------
	--- Argent Crusade ---
	----------------------

	["ArgentCrusade"] = {
		Name = "Argent Crusade",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	-------------------------
	--- Frenzyheart Tribe ---
	-------------------------

	["FrenzyheartTribe"] = {
		Name = "Frenzyheart Tribe",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	----------------------------
	--- The Horde Expedition ---
	----------------------------

	["HordeExpedition"] = {
		Name = "Horde Expedition",
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	-----------------
	--- Kirin Tor ---
	-----------------

	["KirinTor"] = {
		Name = "Kirin Tor",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	---------------------------------
	--- Knights of the Ebon Blade ---
	---------------------------------

	["KnightsoftheEbonBlade"] = {
		Name = "Knights of the Ebon Blade",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	-------------------
	--- The Kalu'ak ---
	-------------------

	["TheKaluak"] = {
		Name = "The Kalu'ak",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	-------------------
	--- The Oracles ---
	-------------------

	["TheOracles"] = {
		Name = "The Oracles",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	-------------------------
	--- The Sons of Hodir ---
	-------------------------

	["TheSonsofHodir"] = {
		Name = "The Sons of Hodir",
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	-------------------------
	--- Winterfin Retreat ---
	-------------------------

	["WinterfinRetreat"] = {
		Name = "Winterfin Retreat",
		{ "Winterfin Retreat", {} },
	},
	---------------------------
	--- The Wyrmrest Accord ---
	---------------------------

	["TheWyrmrestAccord"] = {
		Name = "The Wyrmrest Accord",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},
	-------------------------
	--- The Ashen Verdict ---
	-------------------------

	["AshenVerdict"] = {
		Name = "The Ashen Verdict",
		{ "Rings", {} },
		{ "Honored", {} },
		{ "Revered", {} },
	},
	-----------
	--- PvP ---
	-----------

	------------------
	--- Armor Sets ---
	------------------

	["ArenaDeathKnightWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"],
		{ "Page 1", {} },
		{ "Page 2", {} },
	},

	["ArenaDruidWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"],
		{ "Balance" .. " Page 1", {} },
		{ "Balance" .. " Page 2", {} },
		{ "Feral" .. " Page 1", {} },
		{ "Feral" .. " Page 2", {} },
		{ "Restoration" .. " Page 1", {} },
		{ "Restoration" .. " Page 2", {} },
	},

	["ArenaHunterWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
		{ "Page 1", {} },
		{ "Page 2", {} },
	},

	["ArenaMageWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
		{ "Page 1", {} },
		{ "Page 2", {} },
	},

	["ArenaPaladinWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"],
		{ "Retribution" .. "Page 1", {} },
		{ "Retribution" .. "Page 2", {} },
		{ "Holy" .. "Page 1", {} },
		{ "Holy" .. "Page 2", {} },
	},

	["ArenaPriestWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"],
		{ "Shadow" .. "Page 1", {} },
		{ "Shadow" .. "Page 2", {} },
		{ "Holy" .. "Page 1", {} },
		{ "Holy" .. "Page 2", {} },
	},

	["ArenaRogueWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
		{ "Page 1", {} },
		{ "Page 2", {} },
	},

	["ArenaShamanWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],
		{ "Elemental" .. "Page 1", {} },
		{ "Elemental" .. "Page 2", {} },
		{ "Enhancement" .. "Page 1", {} },
		{ "Enhancement" .. "Page 2", {} },
		{ "Restoration" .. "Page 1", {} },
		{ "Restoration" .. "Page 2", {} },
	},

	["ArenaWarlockWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
		{ "Page 1", {} },
		{ "Page 2", {} },
	},

	["ArenaWarriorWRATH"] = {
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],
		{ "Page 1", {} },
		{ "Page 2", {} },
	},	------------------------------
	--- Level 80 Epic Non-Sets ---
	------------------------------

	["PvP80NonSet"] = {
		Name = "PvP Non-Set Epics",
		{ "Page 1", {} },
		{ "Page 2", {} },
		{ "Cloth", {} },
		{ "Leather", {} },
		{ "Mail", {} },
		{ "Plate", {} },
	},

	------------------------------------
	--- Wrathful Gladiator Weapons ---
	------------------------------------
	["WeaponsWRATH"] = {
		Name = "Arena " .. "Weapons",
		{ "Page 1", {} },
		{ "Page 2", {} },
		{ "Page 3", {} },
	},
	-----------------------
	--- PvP Class Items ---
	-----------------------

	["PVPidolWRATH"] = {
		Name = "Idols/Librams/Sigils/Totems",
		{ "Page 1", {} },
		{ "Page 2", {} },
	},	-------------------------
	--- PvP Miscellaneous ---
	-------------------------

	["PvP80Misc"] = {
		Name = "PvP Misc",
		{ "PvP Misc", {} },
	},
	--------------------------------
	--- World PvP - Wintergrasp  ---
	--------------------------------

	["LakeWintergrasp"] = {
		Name = "Wintergrasp",
		{ "Page 1", {} },
		{ "Page 2", {} },
		{ "Page 3", {} },
		{ "Page 4", {} },
		{ "Page 5", {} },
		{ "Page 6", {} },
		{ "Page 7", {} },
	},
	-----------------------------------------------
	--- World PvP - Grizzly Hills: Venture Bay  ---
	-----------------------------------------------

	["VentureBay"] = {
		Name = "Venture Bay",
		{ "Venture Bay", {} },
	},
	--------------------------
	--- Sets & Collections ---
	--------------------------

	---------------------------------------
	---------- Naxx Sets (T7) -------------
	---------------------------------------

	["TSEVEN"] = {
		Name = "Tier 7",
		Type = "WrathRaid",
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK", {} },
		{ "Druid" .. " - " .. "Feral", {} },
		{ "Druid" .. " - " .. "Restoration", {} },
		{ "Druid" .. " - " .. "Balance", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["HUNTER"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["MAGE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["ROGUE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection", {} },
	},

	---------------------------------------
	---------- Ulduar Sets (T8) -----------
	---------------------------------------

	["TEIGHT"] = {
		Name = "Tier 8",
		Type = "WrathRaid",
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK", {} },
		{ "Druid" .. " - " .. "Feral", {} },
		{ "Druid" .. " - " .. "Restoration", {} },
		{ "Druid" .. " - " .. "Balance", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["HUNTER"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["MAGE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["ROGUE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection", {} },
	},	------------------------
	--- Tier 9 Sets (T9) ---
	------------------------
	["TNINE"] = {
		Name = "Tier 9",
		Type = "WrathRaid",
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK", {} },
		{ "Druid" .. " - " .. "Restoration", {} },
		{ "Druid" .. " - " .. "Restoration", {} },
		{ "Druid" .. " - " .. "Feral", {} },
		{ "Druid" .. " - " .. "Feral", {} },
		{ "Druid" .. " - " .. "Balance", {} },
		{ "Druid" .. " - " .. "Balance", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["HUNTER"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["HUNTER"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["MAGE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["MAGE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["ROGUE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["ROGUE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection", {} },
	},
	--------------------------
	--- Tier 10 Sets (T10) ---
	--------------------------
	["TTEN"] = {
		Name = "Tier 10",
		Type = "WrathRaid",
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK", {} },
		{ "Druid" .. " - " .. "Restoration", {} },
		{ "Druid" .. " - " .. "Feral", {} },
		{ "Druid" .. " - " .. "Balance", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["HUNTER"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["MAGE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Retribution", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. "Protection", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Shadow", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. "Holy", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["ROGUE"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Elemental", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Enhancement", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. "Restoration", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Fury", {} },
		{ LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. "Protection", {} },
	},
	-------------------
	--- Legendaries ---
	-------------------

	["Legendaries"] = {
		Name = "Legendary Items",
		Type = "WrathRaid",
		{ "Legendary Items", {} },
	},
	-----------------------
	--- BoE World Epics ---
	-----------------------

	["WorldEpicsWrath"] = {
		Name = "World Epics",
		Type = "WrathDungeon",
		{ "World Epics", {} },
	},
	-------------------------------
	--- Emblem of Heroism Items ---
	-------------------------------

	["EmblemofHeroism"] = {
		Name = "Emblem of Heroism Rewards",
		{ "Page 1", {} },
		{ "Page 2", {} },
		{ "Page 3", {} },
	},
	-----------------------------
	--- Emblem of Valor Items ---
	-----------------------------

	["EmblemofValor"] = {
		Name = "Emblem of Valor Rewards",
		{ "Page 1", {} },
		{ "Page 2", {} },
	},
	--------------------------------
	--- Emblem of Conquest Items ---
	--------------------------------

	["EmblemofConquest"] = {
		Name = "Emblem of Conquest Rewards",
		{ "Page 1", {} },
		{ "Page 2", {} },
	},
	-------------------------------
	--- Emblem of Triumph Items ---
	-------------------------------

	["EmblemofTriumph"] = {
		Name = "Emblem of Triumph Rewards",
		{ "Page 1", {} },
		{ "Page 2", {} },
		{ "Page 3", {} },
	},
	-----------------------------
	--- Emblem of Frost Items ---
	-----------------------------

	["EmblemofFrost"] = {
		Name = "Emblem of Frost Rewards",
		{ "Page 1", {} },
		{ "Page 2", {} },
	},
})
