local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

AtlasLoot:AddNewMenus({
	--TBC Instances
	["BCKeys"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "BCKeys",
		{ "BCKeys", {} },
	},

	["AuchCrypts"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Auchindoun - Auchenai Crypts",
		Type = "BCDungeon",
 		{ "Shirrak the Dead Watcher", {18371} },
		{ "Exarch Maladaar", {18373} },
		{ "Avatar of the Martyred", {118478} },
	},

	["AuchManaTombs"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Auchindoun - Mana-Tombs",
		Type = "BCDungeon",
 		{ "Pandemonius", {118341} },
		{ "Tavarok", {118343} },
		{ "Nexus-Prince Shaffar", {18344} },
		{ "Yor" .. " (" .. "Heroic" .. ")", {22930} },
	},

	["AuchSethekk"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Auchindoun - Sethekk Halls",
		Type = "BCDungeon",
 		{ "Darkweaver Syth", {18472} },
		{ "Anzu - Heroic", {23035} },
		{ "Talon King Ikiss", {118473} },
	},

	["AuchShadowLab"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Auchindoun - Shadow Labyrinth",
		Type = "BCDungeon",
 		{ "Ambassador Hellmaw", {18731} },
		{ "Blackheart the Inciter", {18667} },
		{ "Grandmaster Vorpil", {18732} },
		{ "Murmur", {18708} },
	},

	["BlackTemple"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Black Temple",
		Type = "BCRaid",
 		{ "High Warlord Naj'entus", {22887} },
		{ "Supremus", {22898} },
		{ "Shade of Akama", {22841} },
		{ "Teron Gorefiend", {22871} },
		{ "Gurtogg Bloodboil", {22948} },
		{ "Reliquary of the Lost", {22856} },
		{ "Mother Shahraz", {22947} },
		{ "The Illidari Council", {22949} },
		{ "Illidan Stormrage", {22917} },
		{ "Trash Mobs", {22847} },
		{ "Reputation Trinkets", {} },
		{ "BT Patterns/Plans", {} },
	},

	["CoTOldHillsbrad"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Caverns of Time - Old Hillsbrad Foothills",
		
		Type = "BCDungeon",
 		{ "Lieutenant Drake", {17848} },
		{ "Captain Skarloc", {17862} },
		{ "Epoch Hunter", {18096} },
	},

	["CoTBlackMorass"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Caverns of Time - The Black Morass",
		Type = "BCDungeon",
 		{ "Chrono Lord Deja", {17879} },
		{ "Temporus", {17880} },
		{ "Aeonus", {17881} },
	},

	["CoTHyjal"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Caverns of Time - Hyjal Summit",
		Type = "BCRaid",
 		{ "Rage Winterchill", {17767} },
		{ "Anetheron", {17808} },
		{ "Kaz'rogal", {17888} },
		{ "Azgalor", {17842} },
		{ "Archimonde", {17968} },
		{ "Chromius", {92179} },
		{ "Trash Mobs", {92190} },
		{ "Rep Rings", {} },
	},

	["CFRSlavePens"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Coilfang Reservoir - The Slave Pens",
		Type = "BCDungeon",
		{ "Mennu the Betrayer", {17941, 2061629} },
		{ "Rokmar the Crackler", {17991} },
		{ "Quagmirran", {17942} },
	},

	["CFRSteamvault"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Coilfang Reservoir - The Steamvault",
		Type = "BCDungeon",
 		{ "Hydromancer Thespia", {17797} },
		{ "Mekgineer Steamrigger", {17796} },
		{ "Warlord Kalithresh", {17798,2061802} },
	},

	["CFRUnderbog"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Coilfang Reservoir - The Underbog",
		Type = "BCDungeon",
 		{ "Hungarfen", {17770} },
		{ "Ghaz'an", {18105} },
		{ "Swamplord Musel'ek", {17826,2061716} },
		{ "The Black Stalker", {17882} },
	},

	["CFRSerpentshrine"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Coilfang Reservoir - Serpentshrine Cavern",
		Type = "BCRaid",
 		{ "Hydross the Unstable", {21216} },
		{ "The Lurker Below", {121217} },
		{ "Leotheras the Blind", {21215} },
		{ "Fathom-Lord Karathress", {21214} },
		{ "Morogrim Tidewalker", {21213} },
		{ "Lady Vashj", {21212} },
		{ "Trash Mobs", {21220} },
	},

	["GruulsLair"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Gruul's Lair",
		Type = "BCRaid",
 		{ "High King Maulgar", {18831} },
		{ "Gruul the Dragonkiller", {19044} },
	},

	["HCRamparts"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Hellfire Citadel - Hellfire Ramparts",
		Type = "BCDungeon",
 		{ "Watchkeeper Gargolmar", {17306} },
		{ "Omor the Unscarred", {17308} },
		{ "Vazruden", {185168} },
	},

	["HCFurnace"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Hellfire Citadel - The Blood Furnace",
		Type = "BCDungeon",
 		{ "The Maker", {17381} },
		{ "Broggok", {17380} },
		{ "Keli'dan the Breaker", {17377} },
	},

	["HCShatteredHalls"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Hellfire Citadel - The Shattered Halls",
		Type = "BCDungeon",
 		{ "Grand Warlock Nethekurse", {16807} },
		{ "Blood Guard Porung", {20923, 2061628} },
		{ "Warbringer O'mrogg", {16809, 2076150} },
		{ "Warchief Kargath Bladefist", {16808} },
	},

	["HCMagtheridon"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Hellfire Citadel - Magtheridon's Lair",
		Type = "BCRaid",
 		{ "Magtheridon", {17257} },
	},

	["Karazhan"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Karazhan",
		Type = "BCRaid",
 		Loadfirst = 3,
		{ "Charred Bone Fragment (Quest Item)", {181963} },
		{ "Servant's Quarter Animal Bosses", {16181,16180,16179} },
		{ "Attumen the Huntsman", {16152} },
		{ "Moroes", {15687} },
		{ "Keanna's Log (Quest Item)", {282199} },
		{ "Maiden of Virtue", {16457} },
		{ "Opera Event", {117521,118168,117534} },
		{ "Nightbane", {17225} },
		{ "The Curator", {15691} },
		{ "Terestian Illhoof", {15688} },
		{ "Shade of Aran", {16524} },
		{ "Netherspite", {15689} },
		{ "Chess Event", {185119} },
		{ "Prince Malchezaar", {15690} },
		{ "Trash Mobs", {16425} },
	},

	["MagistersTerrace"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Sunwell Isle - Magisters' Terrace",
		Type = "BCDungeon",
 		{ "Selin Fireheart", {24723} },
		{ "Vexallus", {24744} },
		{ "Priestess Delrissa", {24560} },
		{ "Kael'thas Sunstrider", {24664} },
	},

	["TKArc"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Tempest Keep - The Arcatraz",
		Type = "BCDungeon",
 		{ "Zereketh the Unbound", {40080} },
		{ "Wrath-Scryer Soccothrates", {40081} },
		{ "Dalliah the Doomsayer", {40082,2076655} },
		{ "Harbinger Skyriss", {25004} },
		{ "Trash Mobs", {} },
	},

	["TKBot"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Tempest Keep - The Botanica",
		Type = "BCDungeon",
 		{ "Commander Sarannis", {40070,2061739} },
		{ "High Botanist Freywinn", {40071,2060635} },
		{ "Thorngrin the Tender", {40072} },
		{ "Laj", {40073} },
		{ "Warp Splinter", {40074} },
	},

	["TKMech"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Tempest Keep - The Mechanar",
		Type = "BCDungeon",
 		{ "Cache of the Legion", {184465} },
		{ "Mechano-Lord Capacitus", {40060} },
		{ "Nethermancer Sepethrea", {40061,2060796} },
		{ "Pathaleon the Calculator", {40062, 2061806} },
	},

	["TKEye"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Tempest Keep - The Eye",
		Type = "BCRaid",
 		{ "Al'ar", {19514} },
		{ "Void Reaver", {19516} },
		{ "High Astromancer Solarian", {18805} },
		{ "Kael'thas Sunstrider", {19622} },
		{ "Trash Mobs", {20048} },
		{ "Legendary Items for Kael'thas Fight", {} },
	},

	["SunwellPlateau"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Sunwell Isle - Sunwell Plateau",
		Type = "BCRaid",
 		{ "Kalecgos", {24892} },
		{ "Brutallus", {24882} },
		{ "Felmyst", {25038} },
		{ "Grand Warlock Alythess", {92377} },
		{ "High Commander Arynyes <Shadowsword Captain>", {25837} },
		{ "M'uru", {25840} },
		{ "Kil'jaeden", {25315} },
		{ "Trash Mobs", {25597} },
		{ "Jewelcrafting", {} },
		{ "Patterns/Plans", {} },
	},

	["ZulAman"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Zul'Aman",
		Type = "BCRaid",
 		{ "Nalorakk", {23576} },
		{ "Akil'zon", {23574} },
		{ "Jan'alai", {23578} },
		{ "Halazzi", {23577} },
		{ "Hex Lord Malacrass", {24239} },
		{ "Zul'jin", {23863} },
		{ "Trash Mobs", {23542} },
	},

	["WorldBossesTBC"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "World Bosses",
		Type = "BCRaid",
		{ "Doom Lord Kazzak", {18728} },
		{ "Doomwalker", {17711} },
	},

	["KarazhanCryptsTBC"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "The Karazhan Crypts",
		Type = "BCkarazhanCrypts",
		Index = 5,
		{ "Cynfael", {254401} },
		{ "Dryn Miel <The Second Eidolon>", {254413} },
		{ "Kurgoth Doomreaver", {254406} },
		{ "The Judgement of Sinners", {254405} },
		{ "Takan Velor <The Hero of Deadwind>", {654564} },
		{ "Captain Taveir (Rare Spawn)", {254495} },
		{ "Kelivex Autumnvale (Rare Spawn)", {254493} },
	},

	["BlackrockCavernsTBC"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Blackrock Caverns",
		Type = "BCDungeon",
		{ "Ascendant Lord Obsidius", {39705} },
		{ "Beauty", {39700} },
		{ "Corla, Herald of Twilight", {39679} },
		{ "Karsh Steelbender <Twilight Armorer>", {39698} },
		{ "Rom'ogg Bonecrusher", {39665} },
	},

	["FrozenReachTBC"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Frozen Reach",
		Type = "ManastormTBC",
		{ "Frozen Reach", {1298888} },
	},
})
