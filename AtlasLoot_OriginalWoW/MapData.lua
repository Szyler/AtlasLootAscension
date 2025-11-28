

local BabbleSubZone = AtlasLoot_GetLocaleLibBabble("LibBabble-SubZone-3.0");

local _RED = "|cffcc6666"
local quest = "questturnin"
local boss = "dungeonskull"

    --Classic Raids
    AtlasLoot_MapData["ZulGurub"] = {
        ZoneName = { "Zul'Gurub", 19 };
        Location = { "Stranglethorn Vale", 33 };
        LevelRange = "56-70";
        MinLevel = "50";
        PlayerLimit = "20";
        Acronym = "ZG";
        MapName = "ZulGurub";
        Reputation = "Zandalar Tribe";
        [1] = {
            { "Zul'Gurub", SubZone = true };
            { "High Priestess Jeklik".." (".."Bat"..")" , cords = {40,73}, pinType = boss};
            { "High Priest Venoxis".." (".."Snake"..")" , cords = {51,54}, pinType = boss};
            { "Zanza the Restless" };
            { "High Priestess Mar'li".." (".."Spider"..")" , cords = {48,78}, pinType = boss};
            { "Bloodlord Mandokir".." (".."Raptor"..")" , cords = {62,68}, pinType = boss};
            { "Ohgan" };
            { "Edge of Madness".." (".."Optional"..")" , cords = {60,51}, pinType = boss};
            { "Gri'lek".." (".."Random"..")" };
            { "Hazza'rah".." (".."Random"..")" };
            { "Renataki".." (".."Random"..")" };
            { "Wushoolay".." (".."Random"..")" };
            { "Gahz'ranka".." (".."Optional"..")" , cords = {57,36}, pinType = boss};
            { "High Priest Thekal".." (".."Tiger"..")" , cords = {62,35}, pinType = boss};
            { "Zealot Zath" };
            { "Zealot Lor'Khan" };
            { "High Priestess Arlokk".." (".."Panther"..")" , cords = {48,22}, pinType = boss};
            { "Jin'do the Hexxer".." (".."Undead"..")" , cords = {32,25}, pinType = boss};
            { "Hakkar" , cords = {50,37}, pinType = boss};
        };
    };

    AtlasLoot_MapData["MoltenCore"] = {
        ZoneName = { "Molten Core", 2717 };
        Location = { "Searing Gorge".." / ".."Burning Steppes", 51, 46 };
        LevelRange = "60-70";
        MinLevel = "50";
        PlayerLimit = "10-25";
        Acronym = "MC";
        MapName = "MoltenCore";
        Reputation = "Hydraxian Waterlords";
        [1] = {
            { "Molten Core", SubZone = true };
            { "Lucifron", cords = {63,44}, pinType = boss };
            { "Magmadar", cords = {69,24}, pinType = boss };
            { "Gehennas", cords = {34,49}, pinType = boss };
            { "Garr", cords = {32,70}, pinType = boss };
            { "Shazzrah", cords = {52,77}, pinType = boss };
            { "Baron Geddon", cords = {55,84} };
            { "Golemagg the Incinerator", cords = {69,59}, pinType = boss };
            { "Sulfuron Harbinger", cords = {83,83}, pinType = boss };
            { "Majordomo Executus", cords = {84,65}, pinType = boss };
            { "Ragnaros", cords = {56,54}, pinType = boss };
        };
    };

    AtlasLoot_MapData["Onyxia60"] = {
        ZoneName = { "Onyxia's Lair" };
        Acronym = "Ony";
        MapName = "OnyxiasLair";
        Location = { "Dustwallow Marsh" };
        LevelRange = "60-70";
        MinLevel = "60";
        PlayerLimit = "10/25";
        [1] = {
        { "Onyxia's Lair", SubZone = true };
        { "Whelp Eggs" , cords = {78,43} };
        { "Whelp Eggs" , cords = {56,44} };
        { "Onyxia", cords = {67,30}, pinType = boss };
        };
    };

    AtlasLoot_MapData["BlackwingLair"] = {
        ZoneName = { "Blackwing Lair", 2677 };
        Location = { "Searing Gorge".." / ".."Burning Steppes", 51, 46 };
        LevelRange = "60-70";
        MinLevel = "60";
        PlayerLimit = "10-25";
        Acronym = "BWL";
        MapName = "BlackwingLair";
        [1] = {
            { BabbleSubZone["Dragonmaw Garrison"], SubZone = true };
            { "Razorgore the Untamed", cords = {33,28}, pinType = boss };
            { "Vaelastrasz the Corrupt", cords = {42,62}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Halls of Strife"], SubZone = true };
            { "Broodlord Lashlayer", cords = {48,55}, pinType = boss };
        };
        [3] = {
            { "Crimson Laboratories", SubZone = true };
            { "Broodlord Lashlayer", cords = {50,59}, pinType = boss };
            { "Draconic for Dummies (Chapter VII)" , cords = {32,43} };
            { "Master Elemental Shaper Krixix" , cords = {40,41} };
        };
        [4] = {
            { BabbleSubZone["Nefarian's Lair"], SubZone = true };
            { "Firemaw", cords = {40,38}, pinType = boss };
            { "Ebonroc", cords = {34,35}, pinType = boss };
            { "Flamegor", cords = {40,47}, pinType = boss };
            { "Chromaggus", cords = {41,72}, pinType = boss };
            { "Nefarian", cords = {72,72}, pinType = boss };
        };
    };

    AtlasLoot_MapData["TheRuinsofAhnQiraj"] = {
        ZoneName = { "Ruins of Ahn'Qiraj", 3429 };
        Location = { "Silithus", 1377 };
        LevelRange = "60-70";
        MinLevel = "50";
        PlayerLimit = "10-25";
        Acronym = "AQR";
        MapName = "RuinsofAhnQiraj";
        Reputation = "Cenarion Circle";
        [1] = {
            {"Ruins of Ahn'Qiraj", SubZone = true};
            { "Kurinnaxx", cords = {56,35}, pinType = boss };
            { "Lieutenant General Andorov" };
            { "Four Kaldorei Elites" };
            { "General Rajaxx", cords = {57,53}, pinType = boss };
            { "Captain Qeez" };
            { "Captain Tuubid" };
            { "Captain Drenn" };
            { "Captain Xurrem" };
            { "Major Yeggeth" };
            { "Major Pakkon" };
            { "Colonel Zerran"  };
            { "Moam".." (".."Optional"..")", cords = {32,38}, pinType = boss };
            { "Buru the Gorger".." (".."Optional"..")", cords = {71,60}, pinType = boss };
            { "Ayamiss the Hunter".." (".."Optional"..")", cords = {60,89}, pinType = boss };
            { "Ossirian the Unscarred", cords = {41,73}, pinType = boss };
            { "Safe Room", cords = {63,74} };
        };
    };

    AtlasLoot_MapData["TheTempleofAhnQiraj"] = {
        ZoneName = { "Temple of Ahn'Qiraj", 3428 };
        Location = { "Silithus", 1377 };
        LevelRange = "60-70";
        MinLevel = "50";
        PlayerLimit = "10-25";
        Acronym = "AQT";
        MapName = "AhnQiraj";
        Reputation = "Brood of Nozdormu";
        [1] = {
            { "The Hive Undergrounds", SubZone = true};
            { "The Bug Family".." (".."Optional"..")", cords = {28,50}, pinType = boss };
            { "Vem" };
            { "Lord Kri" };
            { "Princess Yauj" };
            { "Battleguard Sartura", cords = {45,35}, pinType = boss };
            { "Fankriss the Unyielding", cords = {63,23}, pinType = boss };
            { "Viscidus".." (".."Optional"..")", cords = {73,18}, pinType = boss };
            { "Princess Huhuran", cords = {44,50}, pinType = boss };
            { "Twin Emperors", cords = {61,71}, pinType = boss };
            { "Emperor Vek'lor" };
            { "Emperor Vek'nilash" };
            { "Ouro".." (".."Optional"..")", cords = {31,81}, pinType = boss };
        };
        [2] = {
            { "The Temple Gates", SubZone = true};
            { "The Prophet Skeram".." (".."Outside"..")", cords = {46,53}, pinType = boss };
        };
        [3] = {
            { "Vault of C'Thun", SubZone = true};
            { "Eye of C'Thun", cords = {57,63}, pinType = boss };
            { "C'Thun" };
            { "Andorgos <Brood of Malygos>" , cords = {50,19} };
            { "Vethsera <Brood of Ysera>" };
            { "Kandrostrasz <Brood of Alexstrasza>" };
            { "Arygos", cords = {41,26} };
            { "Caelestrasz" };
            { "Merithra of the Dream" };
        };
    };

    AtlasLoot_MapData["Naxxramas60"] = {
        ZoneName = { "Naxxramas", 3456 };
        Location = { "Eastern Plaguelands", 65 };
        LevelRange = "60+";
        MinLevel = "60";
        PlayerLimit = "10-25";
        Acronym = "Nax60";
        MapName = "Naxxramas";
        [1] = {
            { BabbleSubZone["The Construct Quarter"], SubZone = true };
            { "Patchwerk", cords = {54,41}, pinType = boss };
            { "Grobbulus", cords = {62,53}, pinType = boss };
            { "Gluth", cords = {46,44}, pinType = boss };
            { "Thaddius", cords = {28,15}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["The Arachnid Quarter"], SubZone = true };
            { "Anub'Rekhan", cords = {31,47}, pinType = boss};
            { "Grand Widow Faerlina", cords = {44,36}, pinType = boss };
            { "Maexxna", cords = {69,15}, pinType = boss };
            };
        [3] = {
            { BabbleSubZone["The Military Quarter"], SubZone = true };
            { _RED.."Instructor Razuvious", cords = {43,46}, pinType = boss};
            { _RED.."Gothik the Harvester", cords = {67,60}, pinType = boss};
            { _RED.."Four Horsemen Chest", cords = {30,77}, pinType = boss};
        };
        [4] = {
            { BabbleSubZone["The Plague Quarter"], SubZone = true };
            { "Noth the Plaguebringer", cords = {35,57}, pinType = boss };
            { "Heigan the Unclean", cords = {50,46}, pinType = boss };
            { "Loatheb", cords = {76,28}, pinType = boss };
        };
        [5] = {
            { "Overview", SubZone = true };

        };
        [6] = {
            { "Frostwyrm Lair", SubZone = true };
            { "Sapphiron", cords = {37,23}, pinType = boss };
            { "Kel'Thuzad", cords = {57,68}, pinType = boss };
        };
    };

    --Classic Dungeons

    AtlasLoot_MapData["BlackfathomDeeps"] = {
        ZoneName = { "Blackfathom Deeps", 719 };
        Location = { "Ashenvale", 331 };
        LevelRange = "20-28";
        MinLevel = "19";
        PlayerLimit = "5";
        Acronym = "BFD";
        MapName = "BlackFathomDeeps";
        [1] = {
            { BabbleSubZone["The Pool of Ask'ar"], SubZone = true};
            { "Ghamoo-ra", cords = {32.9,59.9}, pinType = boss};
            { "Lorgalis Manuscript", cords = {33,41}, pinType = quest};
            { "Lady Sarevess", cords = {12,41}, pinType = boss};
            { "Argent Guard Thaelrid <The Argent Dawn>", cords = {21,74}};
            { "Gelihast", cords = {53,57}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Moonshrine Sanctum"], SubZone = true};
            { "Lorgus Jett".." (".."Varies"..")", cords = {46,66.5} };
            { "Fathom Stone" };
            { "Baron Aquanis", pinType = boss };
            { "Old Serra'kis", cords = {53.4,70}, pinType = boss };
            { "Twilight Lord Kelris", cords = {51,81}, pinType = boss };
            { "Aku'mai", cords = {81.7,84.5}, pinType = boss };
            { "Morridune" };
            { "Altar of the Deeps" };
        };
        [3] = {
            { BabbleSubZone["The Forgotten Pool"], SubZone = true};
            { "Old Serra'kis", cords = {59.4,31.4}, pinType = boss };
        };
    };

    AtlasLoot_MapData["BlackrockDepths"] = {
        ZoneName = { "Blackrock Depths", 1584 };
        Location = { "Searing Gorge".." / ".."Burning Steppes", 51, 46 };
        LevelRange = "52-58";
        MinLevel = "10-25";
        PlayerLimit = "5";
        Acronym = "BRD";
        MapName = "BlackrockDepths";
        [1] = {
            { BabbleSubZone["Detention Block"], SubZone = true };
            { "Lord Roccor", cords = {57,65} , pinType = boss};
            { "Kharan Mighthammer", cords = {52,82} };
            { "Commander Gor'shak <Kargath Expeditionary Force>", cords = {54,87}, pinType = quest };
            { "Marshal Windsor", cords = {53,94}, pinType = quest };
            { "High Interrogator Gerstahn <Twilight's Hammer Interrogator>", cords = {48,91}, pinType = boss };
            { "Ring of Law", cords = {51,61}, pinType = boss };
            { "Anub'shiah".." (".."Random"..")" };
            { "Eviscerator".." (".."Random"..")" };
            { "Gorosh the Dervish".." (".."Random"..")" };
            { "Grizzle".." (".."Random"..")" };
            { "Hedrum the Creeper".." (".."Random"..")" };
            { "Ok'thor the Breaker".." (".."Random"..")" };
            { "Theldren".." (".."Summon"..")" };
            { "Lefty" };
            { "Malgen Longspear" };
            { "Gnashjaw <Malgen Longspear's Pet>" };
            { "Rotfang" };
            { "Va'jashni" };
            { "Houndmaster Grebmar".." (".."Lower"..")" };
            { "Elder Morndeep".." (".."Lunar Festival"..")" };
            { "High Justice Grimstone" };
            { "Pyromancer Loregrain", cords = {57,69}, pinType = boss };
            { "Monument of Franclorn Forgewright" };
            { "Fineous Darkvire <Chief Architect>", cords = {64,21} };
            { "Lord Incendius", cords = {56,31}, pinType = boss };
            { "The Black Anvil" };
            { "Bael'Gar", cords ={26,53}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Shadowforge City"], SubZone = true };
            { "The Vault", cords = {60,66}, pinType = boss };
            { "Warder Stilgiss" };
            { "Verek" };
            { "Watchman Doomgrip" };
            { "Ring of Law", cords = {51,89}, pinType = boss };
            { "Shadowforge Lock", cords = {42,91} };
            { "General Angerforge", cords = {36,83}, pinType = boss };
            { "Golem Lord Argelmach", cords = {36,65}, pinType = boss };
            { "Field Repair Bot 74A" };
            { "Blacksmithing Plans" };
            { "The Grim Guzzler", cords = {50,63}, pinType = boss };
            { "Hurley Blackbreath" };
            { "Lokhtos Darkbargainer <The Thorium Brotherhood>" };
            { "Mistress Nagmara" };
            { "Phalanx" };
            { "Plugger Spazzring" };
            { "Private Rocknot" };
            { "Ribbly Screwspigot" };
            { "Coren Direbrew".." (".."Brewfest"..")" };
            { "Griz Gutshank <Arena Vendor>" };
            { "Ambassador Flamelash", cords = {55,49}, pinType = boss };
            { "Panzor the Invincible".." (".."Rare"..")", cords = {50,35}, pinType = boss };
            { "Blacksmithing Plans" };
            { "Summoner's Tomb", cords = {54,25}, pinType = boss };
            { "The Lyceum", cords = {67,12}, pinType = boss };
            { "Magmus", cords = {81,12}, pinType = boss };
            { "Emperor Dagran Thaurissan", cords = {91,12}, pinType = boss };
            { "Princess Moira Bronzebeard <Princess of Ironforge>" };
            { "High Priestess of Thaurissan" };
            { "The Black Forge", cords = {63,25} };
            { "Molten Core", cords = {68,36}, pinType = quest };
            { "Core Fragment" };
        };
    };

    AtlasLoot_MapData["BlackrockSpire"] = {
        ZoneName = { "Blackrock Spire", 1583};
        Location = { "Searing Gorge".." / ".."Burning Steppes", 51, 46 };
        LevelRange = "54-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = "LBRS";
        MapName = "BlackrockSpire";
        [1] = {
            { BabbleSubZone["Tazz'Alaor"], SubZone = true };
            { "War Master Voone", cords = {52,54}, pinType = boss };
            { "Mor Grayhoof".." (".."Summon"..")" };
            { "Sixth Mosh'aru Tablet" };
            { "Bijou's Belongings" };
            { "Elder Stonefort".." (".."Lunar Festival"..")" };
            { "Mother Smolderweb", cords = {64,70}, pinType = boss };
            { "Crystal Fang".." (".."Rare"..")" };
            { "Burning Felguard".." (".."Rare"..", ".."Summon"..")", cords = {43,54}, pinType = boss };
        };
        [2] = {
            { "Blackrock Spire".." (".."Lower"..")", Zone = true };
            { BabbleSubZone["Skitterweb Tunnels"], SubZone = true };
            { "Shadow Hunter Vosh'gajin", cords = {56,70}, pinType = boss };
            { "Fifth Mosh'aru Tablet" };
        };
        [3] = {
            { "Blackrock Spire".." (".."Lower"..")", Zone = true };
            { BabbleSubZone["Hordemar City"], SubZone = true };
            { "Vaelan".." (".."Upper"..")", cords = {52,41}, pinType = boss };
            { "Warosh <The Cursed>".." (".."Wanders"..")", cords = {61,43}, pinType = boss };
            { "Bijou", cords = {63,56} };
            { "Roughshod Pike" , cords = {67,58}};
            { "Spirestone Butcher".." (".."Rare"..")" , cords = {51,58}, pinType = boss};
            { "Highlord Omokk", cords = {39,60}, pinType = boss };
            { "Spirestone Battle Lord".." (".."Rare"..")" };
            { "Spirestone Lord Magus".." (".."Rare"..")" };
        };
        [4] = {
            { "Blackrock Spire".." (".."Lower"..")", Zone = true };
            { BabbleSubZone["Hall of Blackhand"], SubZone = true };
            { "Human Remains".." (".."Lower"..")", cords = {43,56}};
            { "Unfired Plate Gauntlets".." (".."Lower"..")" };
            { "Urok's Tribute Pile", cords = {46,55}, pinType = boss };
            { "Urok Doomhowl".." (".."Summon"..")" };
            { "Bannok Grimaxe <Firebrand Legion Champion>".." (".."Rare"..")", cords = {46,65}, pinType = boss };
        };
        [5] = {
            { "Blackrock Spire".." (".."Lower"..")", Zone = true };
            { BabbleSubZone["Dragonspire Hall"], SubZone = true };
            { "Quartermaster Zigris <Bloodaxe Legion>", cords = {55,85}, pinType = boss };
            { "Halycon", cords = {38,85} };
            { "Gizrul the Slavener" };
            { "Ghok Bashguud <Bloodaxe Champion>".." (".."Rare"..")", cords = {35,68}, pinType = boss };
        };
        [6] = {
            { "Blackrock Spire".." (".."Upper"..")", Zone = true };
            { BabbleSubZone["The Rookery"], SubZone = true };
            { "Pyroguard Emberseer", cords = {31,27}, pinType = boss };
            { "Solakar Flamewreath", cords = {39,39}, pinType = boss };
            { "Father Flame" };
            { "Darkstone Tablet", cords = {32,42} };
            { "Doomrigger's Coffer" };
            { "Overlord Wyrmthalak", cords = {58,64}, pinType = boss };
        };
        [7] = {
            { "Blackrock Spire".." (".."Upper"..")", Zone = true };
            { BabbleSubZone["Blackrock Stadium"], SubZone = true };
            { "Jed Runewatcher <Blackhand Legion>".." (".."Rare"..")", cords = {38,24}, pinType = boss };
            { "Goraluk Anvilcrack <Blackhand Legion Armorsmith>", cords = {33,27}, pinType = boss };
            { "Warchief Rend Blackhand", cords = {49,27}, pinType = boss };
            { "Gyth <Rend Blackhand's Mount>" };
            { "Awbee", cords = {49,36} };
            { "The Beast", cords = {64,32}, pinType = boss };
            { "Lord Valthalak".." (".."Summon"..")" };
            { "Finkle Einhorn" };
            { "General Drakkisath", cords = {36,50}, pinType = boss };
            { "Drakkisath's Brand" };
            { "Blackwing Lair", cords = {55,22} };
        };
    };

    AtlasLoot_MapData["TheDeadmines"] = {
        ZoneName = { "The Deadmines", 1581 };
        Location = { "Westfall", 40 };
        LevelRange = "16-22";
        MinLevel = "10";
        PlayerLimit = "5";
        Acronym = "VC";
        MapName = "TheDeadmines";
        [1] = {
            { BabbleSubZone["The Deadmines"], SubZone = true };
            { "Rhahk'Zor <The Foreman>", cords = {36,62}, pinType = boss };
            { "Miner Johnson".." (".."Rare"..")", cords = {51,51}, pinType = boss };
            { "Sneed <Lumbermaster>", cords = {51,86}, pinType = boss };
            { "Sneed's Shredder <Lumbermaster>" };
            { "Gilnid <The Smelter>", cords = {61,57}, pinType = boss };

        };
        [2] = {
            { BabbleSubZone["Ironclad Cove"], SubZone = true };
            { "Defias Gunpowder", cords = {20,55} };
            { "Captain Greenskin", cords = {61,38}, pinType = boss };
            { "Edwin VanCleef <Defias Kingpin>", cords = {61,46}, pinType = boss };
            { "Mr. Smite <The Ship's First Mate>", cords = {56,26}, pinType = boss };
            { "Cookie <The Ship's Cook>", cords = {68,43}, pinType = boss };
        };
    };

    AtlasLoot_MapData["DireMaul"] = {
        ZoneName = { "Dire Maul", 2557 };
        Location = { "Feralas", 357 };
        LevelRange = "57-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = "DM";
        MapName = "DireMaul";
        [1] = {
            { "Gordok Commons".." (North)" , SubZone = true};
            { "Library".." ".."Entrance" };
            { "Guard Mol'dar", cords = {69.9,76}, pinType = boss };
            { "Stomper Kreeg <The Drunk>", cords = {61,68}, pinType = boss };
            { "Guard Fengus", cords = {42.9,77.6}, pinType = boss };
            { "Knot Thimblejack" };
            { "Guard Slip'kik", cords = {26.5,57.8}, pinType = boss };
            { "Captain Kromcrush", cords = {31.8,51.4}, pinType = boss };
            { "King Gordok", cords = {32,27.7}, pinType = boss };
            { "Cho'Rush the Observer", cords = {31.4,26.2} };
        };
        [2] = {
            { BabbleSubZone["Capital Gardens"].." (West)" , SubZone = true};
            { "Pylons", cords = {70, 51}};
            { "Pylons", cords = {40, 22}};
            { "Pylons", cords = {36, 80}};
            { "Illyanna Ravenoak", cords = {20,78}, pinType = boss };
            { "Tendris Warpwood", cords = {33.4,53.5}, pinType = boss };
        };
        [3] = {
            { BabbleSubZone["Court of the Highborne"].." (West)" , SubZone = true};
            { "Shen'dralar Ancient" };
            { "Magister Kalendris", cords = {32,45.3}, pinType = boss };
        };
        [4] = {
            { BabbleSubZone["Prison of Immol'thar"].." (West)", SubZone = true };
            { "Ancient Equine Spirit" };
            { "Ferra" };
            { "Tsu'zee".." (".."Rare"..")", cords = {68.3,23.9}, pinType = boss };
            { "Immol'thar", cords = {35.2,58.1}, pinType = boss };
            { "Lord Hel'nurath".." (".."Summon"..")", cords = {14.9,55.7}, pinType = boss };
            { "Prince Tortheldrin", cords = {61.4,15.1}, pinType = boss };
            { "Library" };
            { "Falrin Treeshaper" };
            { "Lorekeeper Lydros" };
            { "Lorekeeper Javon" };
            { "Lorekeeper Kildrath" };
            { "Lorekeeper Mykos" };
            { "Shen'dralar Provisioner" };
            { "Skeletal Remains of Kariel Winthalus" };
            { "Pylons", cords = {44, 35}};
            { "Pylons", cords = {34, 81}};
        };
        [5] = {
            { BabbleSubZone["Warpwood Quarter"].." (East)", SubZone = true };
            { "Zevrim Thornhoof" };
            { "Hydrospawn", cords = {41,49.2}, pinType = boss };
            { "Lethtendris", cords = {44.5,46.6}, pinType = boss };
            { "Pimgib" };
        };
        [6] = {
            { BabbleSubZone["The Shrine of Eldretharr"].." (East)", SubZone = true };
            { "Old Ironbark", cords = {40,68} };
            { "Alzzin the Wildshaper", cords = {57.3,28.9}, pinType = boss };
            { "Isalien".." (".."Summon"..")", pinType = boss };
        };
    };

    AtlasLoot_MapData["Gnomeregan"] = {
        ZoneName = { "Gnomeregan", 721 };
        Location = { "Dun Morogh", 1 };
        LevelRange = "24-32";
        MinLevel = "20";
        PlayerLimit = "5";
        Acronym = "Gnome";
        MapName = "Gnomeregan";
        [1] = {
            { BabbleSubZone["The Hall of Gears"], SubZone = true };
            { "Blastmaster Emi Shortfuse", cords = {77,68}, pinType = boss };
            { "Grubbis" };
            { "Chomper" };
            { "Viscous Fallout", cords = {50,50}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["The Dormitory"], SubZone = true };
            { "Clean Room" , cords = {64,64}};
            { "Tink Sprocketwhistle <Engineering Supplies>" };
            { "The Sparklematic 5200" };
            { "Mail Box" };
            { "Kernobee", cords = {72,68} };
            { "Alarm-a-bomb 2600" };
            { "Matrix Punchograph 3005-B" };
            { "Electrocutioner 6000" , cords = {25,69}, pinType = boss};
            { "Matrix Punchograph 3005-C" };
        };
        [3] = {
            { BabbleSubZone["Launch Bay"], SubZone = true };
            { "Crowd Pummeler 9-60".." (".."Upper"..")", cords = {44,87}, pinType = boss };
            { "Matrix Punchograph 3005-D" };
        };
        [4] = {
            { BabbleSubZone["Tinkers' Court"], SubZone = true };
            { "Dark Iron Ambassador", cords = {29,48} };
            { "Mekgineer Thermaplugg", cords = {32,30}, pinType = boss };
        };
    };
    
    AtlasLoot_MapData["Maraudon"] = {
        ZoneName = { "Maraudon", 2100 };
        Location = { "Desolace", 405 };
        LevelRange = "42-51";
        MinLevel = "30";
        PlayerLimit = "5";
        Acronym = "Mara";
        MapName = "Maraudon";
        [1] = {
            { "Caverns of Maraudon", SubZone = true };
            { "Veng <The Fifth Khan>", cords = {60,24} };
            { "Noxxion", cords = {36,15}, pinType = boss };
            { "Razorlash", cords = {18,33}, pinType = boss };
            { "Maraudos <The Fourth Khan>", cords = {53,74} };
            { "Lord Vyletongue", cords = {37,72}, pinType = boss };
            { "Meshlok the Harvester".." (".."Rare"..")" };
            { "Celebras the Cursed", cords = {10,65}, pinType = boss };
        };
        [2] = {
            { "Zaetar's Grave", SubZone = true };
            { "Celebras the Cursed", cords = {25,15}, pinType = boss };
            { "Landslide", cords = {40.6,48.2} };
            { "Tinkerer Gizlock", cords = {48.4,68.6} };
            { "Rotgrip", cords = {33.3,77.1}, pinType = boss };
            { "Princess Theradras", cords = {24.2,80.4}, pinType = boss };
            { "Elder Splitrock".." (".."Lunar Festival"..")" };
        };
    };

    AtlasLoot_MapData["RagefireChasm"] = {
        ZoneName = { "Ragefire Chasm", 2437 };
        Location = { "Orgrimmar", 1637 };
        LevelRange = "12-18";
        MinLevel = "8";
        PlayerLimit = "5";
        Acronym = "RFC";
        MapName = "ragefire";
        [1] = {
            { "Ragefire Chasm", SubZone = true };
            { "Maur Grimtotem" };
            { "Oggleflint <Ragefire Chieftain>", cords = {56.2,38.6}, pinType = boss };
            { "Taragaman the Hungerer", cords = {40.9,59}, pinType = boss };
            { "Jergosh the Invoker", cords = {38.9,82.9}, pinType = boss };
            { "Zelemar the Wrathful".." (".."Summon"..")" };
            { "Bazzalan", cords = {42.4,85.4}, pinType = boss };
        };
    };

    AtlasLoot_MapData["RazorfenDowns"] = {
        ZoneName = { "Razorfen Downs", 722 };
        Location = { "The Barrens", 17 };
        LevelRange = "33-42";
        MinLevel = "25";
        PlayerLimit = "5";
        Acronym = "RFD";
        MapName = "RazorfenDowns";
        [1] = {
            { "Razorfen Downs", SubZone = true };
            { "Tuten'kash", cords = {67.1,41.2}, pinType = boss };
            { "Henry Stern" };
            { "Belnistrasz" };
            { "Sah'rhee" };
            { "Mordresh Fire Eye", cords = {85.8,45.7}, pinType = boss };
            { "Glutton", cords = {38.5,45.2}, pinType = boss};
            { "Ragglesnout".." (".."Rare"..", ".."Varies"..")" };
            { "Amnennar the Coldbringer", cords = {45,59.1}, pinType = boss };
            { "Plaguemaw the Rotting" };
        };
    };

    AtlasLoot_MapData["RazorfenKraul"] = {
        ZoneName = { "Razorfen Kraul", 491 };
        Location = { "The Barrens", 17 };
        LevelRange = "23-33";
        MinLevel = "17";
        PlayerLimit = "5";
        Acronym = "RFK";
        MapName = "RazorfenKraul";
        [1] = {
            { "Entrance" };
            { "Roogug", cords = {65,48}, pinType = boss };
            { "Aggem Thorncurse <Death's Head Prophet>", cords = {81,53}, pinType = boss };
            { "Death Speaker Jargba <Death's Head Captain>", cords = {88,41}, pinType = boss };
            { "Overlord Ramtusk", cords = {56,30}, pinType = boss };
            { "Razorfen Spearhide" };
            { "Agathelos the Raging", cords = {9,68}, pinType = boss };
            { "Blind Hunter".." (".."Rare"..")", cords = {11,31} };
            { "Charlga Razorflank <The Crone>", cords = {22,31}, pinType = boss };
            { "Willix the Importer" };
            { "Heralath Fallowbrook" };
            { "Earthcaller Halmgar".." (".."Rare"..")", cords = {49,45} };
        };
    };

    AtlasLoot_MapData["ScarletMonastery"] = {
        ZoneName = { "Scarlet Monastery", 796 };
        Location = { "Tirisfal Glades", 85 };
        LevelRange = "33-40";
        MinLevel = "20";
        PlayerLimit = "5";
        Acronym = "SM";
        MapName = "ScarletMonastery";
        [1] = {
            { "Graveyard", SubZone = true };
            { "Interrogator Vishas", cords = {72,60}, pinType = boss };
            { "Vorrel Sengutz" };
            { "Pumpkin Shrine".." (".."Hallow's End"..")", cords = {36,63} };
            { "Headless Horseman".." (".."Summon"..")" };
            { "Bloodmage Thalnos", cords = {24,56}, pinType = boss };
            { "Ironspine".." (".."Rare"..")" };
            { "Azshir the Sleepless".." (".."Rare"..")" };
            { "Fallen Champion".." (".."Rare"..")" };
        };
        [2] = {
            { "Library", SubZone = true };
            { "Houndmaster Loksey", cords = {30,85}, pinType = boss };
            { "Arcanist Doan", cords = {83,77}, pinType = boss };
        };
        [3] = {
            { "Armory", SubZone = true };
            { "Herod <The Scarlet Champion>", cords = {79,11}, pinType = boss };
        };
        [4] = {
            { "Cathedral", SubZone = true };
            { "High Inquisitor Fairbanks", cords = {56,26}, pinType = boss };
            { "Scarlet Commander Mograine", cords = {49,29}, pinType = boss };
            { "High Inquisitor Whitemane", cords = {48,17}, pinType = boss };
        };
    };

    AtlasLoot_MapData["Scholomance"] = {
        ZoneName = { "Scholomance", 2057 };
        Location = { "Western Plaguelands", 28 };
        LevelRange = "58-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = "Scholo";
        MapName = "Scholomance";
        [1] = {
            { BabbleSubZone["The Reliquary"], SubZone = true };
            { "Blood Steward of Kirtonos" , cords = {82,46}, pinType = boss};
            { "Blood of Innocents".." (".."Kirtonos the Herald"..")" };
            { "The Deed to Southshore" };
        };
        [2] = {
            { BabbleSubZone["Chamber of Summoning"], SubZone = true };
            { "Kirtonos the Herald".." (".."Summon"..")" , cords = {49,12}, pinType = boss};
            { "The Deed to Tarren Mill", cords = {31,57}, pinType = quest };
            { "Torch Lever" , cords = {49,55}};
            { "Secret Chest" };
            { "Marduk Blackpool" , cords = {49,66}, pinType = boss};
            { "Vectus" };
        };
        [3] = {
            { "The Headmaster's Study", SubZone = true };
            { "Jandice Barov" , cords = {54,15}, pinType = boss};
            { "Instructor Malicia" , cords = {73,79}, pinType = boss};
            { "Doctor Theolen Krastinov <The Butcher>" , cords = {89,46}, pinType = boss};
            { "Lorekeeper Polkelt" , cords = {73,24}, pinType = boss};
            { "Rattlegore" , cords = {33,65}, pinType = boss};
            { "Death Knight Darkreaver".." (".."Summon"..")" };
            { "Darkmaster Gandling" , cords = {73,47}, pinType = boss};
        };
        [4] = {
            { BabbleSubZone["Barov Family Vault"], SubZone = true };
            { "Ras Frostwhisper" , cords = {41,82}, pinType = boss};
            { "The Deed to Brill" };
            { "Alchemy Lab" };
            { "Kormok".." (".."Summon"..")" };
            { "The Ravenian" , cords = {67,49}, pinType = boss};
            { "Lord Alexei Barov" , cords = {79,30}, pinType = boss};
            { "The Deed to Caer Darrow" };
            { "Lady Illucia Barov", cords = {67,16}, pinType = boss};
            { "Darkmaster Gandling" , cords = {67,30}, pinType = boss};
        };
    };

    AtlasLoot_MapData["ShadowfangKeep"] = {
        ZoneName = { "Shadowfang Keep", 209 };
        Location = { "Silverpine Forest", 130 };
        LevelRange = "17-25";
        MinLevel = "10";
        PlayerLimit = "5";
        Acronym = "SFK";
        MapName = "ShadowfangKeep";
        [1] = {
            { "The Courtyard", SubZone = true };
            { "Rethilgore <The Cell Keeper>", cords = {67,73}, pinType = boss};
            { "Sorcerer Ashcrombe" };
            { "Deathstalker Adamant" };
            { "Landen Stilwell" };
            { "Investigator Fezzen Brasstacks".." (".."Love is in the Air"..")", cords = {54,66} };
            { "Deathstalker Vincent", cords =  {57,60}};
            { "Apothecary Trio".." (".."Love is in the Air"..")", cords = {39,51} };
            { "Apothecary Hummel <Crown Chemical Co.>" };
            { "Apothecary Baxter <Crown Chemical Co.>" };
            { "Apothecary Frye <Crown Chemical Co.>" };
            { "Fel Steed", cords = {35,58} };
            { "Jordan's Hammer" };
            { "Crate of Ingots" };
            { "Commander Springvale" , cords = {27,61}, pinType = boss};      
        };
        [2] = {
            { "Dining Hall", SubZone = true };
            { "Razorclaw the Butcher" , cords = {48,28}, pinType = boss};
            { "Baron Silverlaine" , cords = {30,77}, pinType = boss};
        };
        [3] = {
            { "The Vacant Den", SubZone = true };
        };
        [4] = {
            { "Lower Observatory", SubZone = true };
            { "Fenrus the Devourer", cords = {53,54}, pinType = boss};
            { "Arugal's Voidwalker" };
            { "The Book of Ur" };
        };
        [5] = {
            { "Upper Observatory", SubZone = true };
        };
        [6] = {
            { "Lord Godfrey's Chamber", SubZone = true };
            { "Wolf Master Nandos" , cords = {57,62}, pinType = boss};
            { "Archmage Arugal" , cords = {65,20}, pinType = boss};
        };
        [7] = {
            { "The Wall Walk", SubZone = true };
            { "Odo the Blindwatcher" , cords = {55,81}, pinType = boss};
            { "Deathsworn Captain".." (".."Rare"..")" , cords = {59,53}, pinType = boss};
        };
    };

    AtlasLoot_MapData["TheStockade"] = {
        ZoneName = { "The Stockade", 717 };
        Location = { "Stormwind City", 1519 };
        LevelRange = "21-27";
        MinLevel = "15";
        PlayerLimit = "5";
        Acronym = "Stocks";
        MapName = "TheStockade";
        [1] = {
        { "The Stockade", SubZone = true };
        { "Targorr the Dread", cords = {50,25}, pinType = boss };
        { "Kam Deepfury", cords = {69,30} , pinType = boss};
        { "Hamhock", cords = {78,46} , pinType = boss};
        { "Bazil Thredd", cords = {86,51} , pinType = boss};
        { "Dextren Ward", cords = {22,26} , pinType = boss};
        { "Bruegal Ironknuckle".." (".."Rare"..")", cords = {30,43} , pinType = boss};
        };
    };

    AtlasLoot_MapData["Stratholme"] = {
        ZoneName = { "Stratholme", 2017 };
        Location = { "Eastern Plaguelands", 139 };
        LevelRange = "58-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = "Strat";
        MapName = "Stratholme";
        [1] = {
            { "Crusader's Square", SubZone = true  };
            { "Crusaders' Square Postbox" , cords = {36,35}};
            { "Market Row Postbox", cords = {69,28} };
            { "Festival Lane Postbox" , cords = {80,29}};
            { "King's Square Postbox" , cords = {64,53}};
            { "Fras Siabi's Postbox" , cords = {55,69}};
            { "3rd Box Opened"..": ".."Postmaster Malown" };
            { "Skul".." (".."Rare"..")", cords = {80,43}, pinType = boss};
            { "Stratholme Courier" };
            { "Fras Siabi" };
            { "Atiesh <Hand of Sargeras>".." (".."Summon"..")" , cords = {86,38}};
            { "Hearthsinger Forresten".." (".."Varies"..")", cords = {81,34}, pinType = boss};
            { "The Unforgiven", cords = {73,23}, pinType = boss};
            { "Elder Farwhisper".." (".."Lunar Festival"..")", cords = {79,17}};
            { "Timmy the Cruel" , cords = {35,26}, pinType = boss};
            { "Malor the Zealous", cords = {30,42}, pinType = boss};
            { "Malor's Strongbox"};
            { "Crimson Hammersmith".." (".."Summon"..")", cords = {13,48} };
            { "Blacksmithing Plans" };
            { "Cannon Master Willey", cords = {5,51}, pinType = boss};
            { "Archivist Galford", cords = {28,74}, pinType = boss};
            { "Grand Crusader Dathrohan", cords = {21,82}, pinType = boss};
            { "Balnazzar" };
            { "Sothos".." (".."Summon"..")" };
            { "Jarien".." (".."Summon"..")" };
        };
        [2] = {
            { BabbleSubZone["The Gauntlet"], SubZone = true  };
            { "Elders' Square Postbox", cords = {67,76}};
            { "3rd Box Opened"..": ".."Postmaster Malown" };
            { "Magistrate Barthilas".." (".."Varies"..")", cords = {66,77}, pinType = boss};
            { "Aurius", cords = {68,74}, pinType = boss};
            { "Stonespine".." (".."Rare"..")" , cords = {70,51}, pinType = boss};
            { "Baroness Anastari" , cords = {76,46}, pinType = boss};
            { "Black Guard Swordsmith".." (".."Summon"..")" };
            { "Blacksmithing Plans" };
            { "Nerub'enkan", cords = {58,48}, pinType = boss};
            { "Maleki the Pallid" , cords = {67,22}, pinType = boss};
            { "Magistrate Barthilas".." (".."Varies"..")", cords = {57,16}, pinType = boss};
            { "Ramstein the Gorger" , cords = {45,21}, pinType = boss};
            { "Baron Rivendare" , cords = {40,21}, pinType = boss};
            { "Ysida Harmon" };


        };
    };

    AtlasLoot_MapData["TheSunkenTemple"] = {
        ZoneName = { "Sunken Temple", 1417 };
        Location = { "Swamp of Sorrows", 8 };
        LevelRange = "46-53";
        MinLevel = "35";
        PlayerLimit = "5";
        Acronym = "ST";
        MapName = "TheTempleOfAtalHakkar";
        [1] = {
            { "Sunken Temple" , SubZone = true};
            { "Dreamscythe" , cords = {50,41}, pinType = boss};
            { "Weaver" };
            { "Avatar of Hakkar", cords = {26,46}, pinType = boss};
            { "Jammal'an the Prophet", cords = {73,39}, pinType = boss};
            { "Ogom the Wretched" };
            { "Morphaz" , cords = {50,87}, pinType = boss};
            { "Hazzas" };
            { "Shade of Eranikus" , cords = {68,87}, pinType = boss};
            { "Essence Font" };
            { "Upper Ring", SubZone = true };
            { "Spawn of Hakkar".." (".."Rare"..")" };
            { "Elder Starsong".." (".."Lunar Festival"..")" };
            { "1'-6') ".."Statue Activation Order" };
            { "7') ".."Atal'ai Defenders" };
            { "Gasher" };
            { "Loro" };
            { "Hukku" };
            { "Zolo" };
            { "Mijan" };
            { "Zul'Lor" };
            { "Lower Pool", SubZone = true};
            { "Altar of Hakkar" };
            { "Atal'alarion <Guardian of the Idol>" };
        };
    };

    AtlasLoot_MapData["Uldaman"] = {
        ZoneName = { "Uldaman", 1337 };
        Location = { "Badlands", 3 };
        LevelRange = "36-42";
        MinLevel = "30";
        PlayerLimit = "5";
        Acronym = "Ulda";
        MapName = "Uldaman";
        [1] = {
            { BabbleSubZone["Hall of the Keepers"], SubZone = true  };
            { "Key"..": ".."Staff of Prehistoria".." (".."Ironaya"..")" };
            { "Baelog" , cords = {59,93}, pinType = boss};
            { "Eric \"The Swift\"" };
            { "Olaf" };
            { "Baelog's Chest" };
            { "Conspicuous Urn" };
            { "Remains of a Paladin", cords = {53,64}};
            { "Revelosh" , cords = {54,72}, pinType = boss};
            { "Ironaya" , cords = {37,74}, pinType = boss};
            { "Obsidian Sentinel" , cords = {29,60}, pinType = boss};
            { "Ancient Stone Keeper" , cords = {48,45}, pinType = boss};
            { "Galgann Firehammer" , cords = {27,33}, pinType = boss};
            { "Tablet of Will" };
            { "Shadowforge Cache" };
            { "Grimlok <Stonevault Chieftain>" , cords = {22,26}, pinType = boss};
            { "Archaedas <Ancient Stone Watcher>".." (".."Lower"..")" , cords = {42,17}, pinType = boss};
            { "The Discs of Norgannon".." (".."Lower"..")" , cords = {40,9}};
            { "Ancient Treasure".." (".."Lower"..")" };

        };
        [2] = {
            { BabbleSubZone["Khaz'goroth's Seat"], SubZone = true  };
            { "Archaedas <Ancient Stone Watcher>".." (".."Lower"..")" , cords = {55,52}, pinType = boss};
            { "The Discs of Norgannon".." (".."Lower"..")" , cords = {50,34}};
            { "Ancient Treasure".." (".."Lower"..")" };
        };
    };

    AtlasLoot_MapData["WailingCaverns"] = {
        ZoneName = { "Wailing Caverns", 718 };
        Location = { "The Barrens", 17 };
        LevelRange = "16-25";
        MinLevel = "10";
        PlayerLimit = "5";
        Acronym = "WC";
        MapName = "WailingCaverns";
        [1] = {
            { "Wailing Caverns", SubZone = true };
            { "Disciple of Naralex", cords = {47,53} };
            { "Lord Cobrahn <Fanglord>" , cords = {16,57}, pinType = boss};
            { "Lady Anacondra <Fanglord>".." (".."Varies"..")" , cords = {31,44}, pinType = boss};
            { "Kresh".." (".."Varies"..")" , cords = {45,38}, pinType = boss};
            { "Lord Pythas <Fanglord>", cords = {64,58}, pinType = boss};
            { "Skum" , cords = {74,82}, pinType = boss};
            { "Lord Serpentis <Fanglord>".." (".."Upper"..")" , cords = {62,54}, pinType = boss};
            { "Verdan the Everliving".." (".."Upper"..")" , cords = {56,47}, pinType = boss};
            { "Mutanus the Devourer" , cords = {35,13}, pinType = boss};
            { "Naralex" };
            { "Deviate Faerie Dragon".." (".."Rare"..")" };
        };
    };

    AtlasLoot_MapData["ZulFarrak"] = {
        ZoneName = { "Zul'Farrak", 978 };
        Location = { "Tanaris", 440 };
        LevelRange = "42-48";
        MinLevel = "35";
        PlayerLimit = "5";
        Acronym = "ZF";
        MapName = "ZulFarrak";
        [1] = {
            { "Zul'Farrak", SubZone = true };
            { "Antu'sul <Overseer of Sul>" , cords = {66,27}, pinType = boss};
            { "Theka the Martyr" , cords = {54,28}, pinType = boss};
            { "Witch Doctor Zum'rah" , cords = {45,17}, pinType = boss};
            { "Zul'Farrak Dead Hero" };
            { "Nekrum Gutchewer" , cords = {34,18}, pinType = boss};
            { "Shadowpriest Sezz'ziz" };
            { "Dustwraith".." (".."Rare"..")" };
            { "Sergeant Bly" , cords = {28,18}, pinType = boss};
            { "Weegli Blastfuse" };
            { "Murta Grimgut" };
            { "Raven" };
            { "Oro Eyegouge" };
            { "Sandfury Executioner" , cords = {25,18}, pinType = boss};
            { "Hydromancer Velratha" , cords = {32,41}, pinType = boss};
            { "Gahz'rilla".." (".."Summon"..")" };
            { "Elder Wildmane".." (".."Lunar Festival"..")" };
            { "Chief Ukorz Sandscalp" , cords = {42,34}, pinType = boss};
            { "Ruuzlu" };
            { "Zerillis".." (".."Rare"..", ".."Wanders"..")", cords = {53,42}, pinType = boss};
            { "Sandarr Dunereaver".." (".."Rare"..")", cords = {46,57}, pinType = boss};
        };
    };