local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local BabbleSubZone = AtlasLoot_GetLocaleLibBabble("LibBabble-SubZone-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local _RED = "|cffcc6666"
local quest = "questturnin"
local boss = "dungeonskull"

    --Classic Raids
    AtlasLoot_MapData["ZulGurub"] = {
        ZoneName = { BabbleZone["Zul'Gurub"], 19 };
        Location = { BabbleZone["Stranglethorn Vale"], 33 };
        LevelRange = "56-70";
        MinLevel = "50";
        PlayerLimit = "20";
        Acronym = AL["ZG"];
        MapName = "ZulGurub";
        Reputation = AL["Zandalar Tribe"];
        [1] = {
            { BabbleZone["Zul'Gurub"], SubZone = true };
            { AL["High Priestess Jeklik"].." ("..AL["Bat"]..")" , cords = {40,73}, pinType = boss};
            { AL["High Priest Venoxis"].." ("..AL["Snake"]..")" , cords = {51,54}, pinType = boss};
            { AL["Zanza the Restless"] };
            { AL["High Priestess Mar'li"].." ("..AL["Spider"]..")" , cords = {48,78}, pinType = boss};
            { AL["Bloodlord Mandokir"].." ("..AL["Raptor"]..")" , cords = {62,68}, pinType = boss};
            { AL["Ohgan"] };
            { AL["Edge of Madness"].." ("..AL["Optional"]..")" , cords = {60,51}, pinType = boss};
            { AL["Gri'lek"].." ("..AL["Random"]..")" };
            { AL["Hazza'rah"].." ("..AL["Random"]..")" };
            { AL["Renataki"].." ("..AL["Random"]..")" };
            { AL["Wushoolay"].." ("..AL["Random"]..")" };
            { AL["Gahz'ranka"].." ("..AL["Optional"]..")" , cords = {57,36}, pinType = boss};
            { AL["High Priest Thekal"].." ("..AL["Tiger"]..")" , cords = {62,35}, pinType = boss};
            { AL["Zealot Zath"] };
            { AL["Zealot Lor'Khan"] };
            { AL["High Priestess Arlokk"].." ("..AL["Panther"]..")" , cords = {48,22}, pinType = boss};
            { AL["Jin'do the Hexxer"].." ("..AL["Undead"]..")" , cords = {32,25}, pinType = boss};
            { AL["Hakkar"] , cords = {50,37}, pinType = boss};
        };
    };

    AtlasLoot_MapData["MoltenCore"] = {
        ZoneName = { BabbleZone["Molten Core"], 2717 };
        Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
        LevelRange = "60-70";
        MinLevel = "50";
        PlayerLimit = "10-25";
        Acronym = AL["MC"];
        MapName = "MoltenCore";
        Reputation = AL["Hydraxian Waterlords"];
        [1] = {
            { BabbleZone["Molten Core"], SubZone = true };
            { AL["Lucifron"], cords = {63,44}, pinType = boss };
            { AL["Magmadar"], cords = {69,24}, pinType = boss };
            { AL["Gehennas"], cords = {34,49}, pinType = boss };
            { AL["Garr"], cords = {32,70}, pinType = boss };
            { AL["Shazzrah"], cords = {52,77}, pinType = boss };
            { AL["Baron Geddon"], cords = {55,84} };
            { AL["Golemagg the Incinerator"], cords = {69,59}, pinType = boss };
            { AL["Sulfuron Harbinger"], cords = {83,83}, pinType = boss };
            { AL["Majordomo Executus"], cords = {84,65}, pinType = boss };
            { AL["Ragnaros"], cords = {56,54}, pinType = boss };
        };
    };

    AtlasLoot_MapData["Onyxia60"] = {
        ZoneName = { BabbleZone["Onyxia's Lair"] };
        Acronym = AL["Ony"];
        MapName = "OnyxiasLair";
        Location = { BabbleZone["Dustwallow Marsh"] };
        LevelRange = "60-70";
        MinLevel = "60";
        PlayerLimit = "10/25";
        [1] = {
        { BabbleZone["Onyxia's Lair"], SubZone = true };
        { AL["Basalthane"], cords = {45,66}, pinType = boss };
        { AL["Whelp Eggs"] , cords = {66,43} };
        { AL["Whelp Eggs"] , cords = {73,44} };
        { AL["Onyxia"], cords = {70,24}, pinType = boss };
        };
    };

    AtlasLoot_MapData["BlackwingLair"] = {
        ZoneName = { BabbleZone["Blackwing Lair"], 2677 };
        Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
        LevelRange = "60-70";
        MinLevel = "60";
        PlayerLimit = "10-25";
        Acronym = AL["BWL"];
        MapName = "BlackwingLair";
        [1] = {
            { BabbleSubZone["Dragonmaw Garrison"], SubZone = true };
            { AL["Razorgore the Untamed"], cords = {33,28}, pinType = boss };
            { AL["Vaelastrasz the Corrupt"], cords = {42,62}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Halls of Strife"], SubZone = true };
            { AL["Broodlord Lashlayer"], cords = {48,55}, pinType = boss };
        };
        [3] = {
            { AL["Crimson Laboratories"], SubZone = true };
            { AL["Broodlord Lashlayer"], cords = {50,59}, pinType = boss };
            { AL["Draconic for Dummies (Chapter VII)"] , cords = {32,43} };
            { AL["Master Elemental Shaper Krixix"] , cords = {40,41} };
        };
        [4] = {
            { BabbleSubZone["Nefarian's Lair"], SubZone = true };
            { AL["Firemaw"], cords = {40,38}, pinType = boss };
            { AL["Ebonroc"], cords = {34,35}, pinType = boss };
            { AL["Flamegor"], cords = {40,47}, pinType = boss };
            { AL["Chromaggus"], cords = {41,72}, pinType = boss };
            { AL["Nefarian"], cords = {72,72}, pinType = boss };
        };
    };

    AtlasLoot_MapData["TheRuinsofAhnQiraj"] = {
        ZoneName = { BabbleZone["Ruins of Ahn'Qiraj"], 3429 };
        Location = { BabbleZone["Silithus"], 1377 };
        LevelRange = "60-70";
        MinLevel = "50";
        PlayerLimit = "10-25";
        Acronym = AL["AQR"];
        MapName = "RuinsofAhnQiraj";
        Reputation = AL["Cenarion Circle"];
        [1] = {
            {BabbleZone["Ruins of Ahn'Qiraj"], SubZone = true};
            { AL["Kurinnaxx"], cords = {56,35}, pinType = boss };
            { AL["Lieutenant General Andorov"] };
            { AL["Four Kaldorei Elites"] };
            { AL["General Rajaxx"], cords = {57,53}, pinType = boss };
            { AL["Captain Qeez"] };
            { AL["Captain Tuubid"] };
            { AL["Captain Drenn"] };
            { AL["Captain Xurrem"] };
            { AL["Major Yeggeth"] };
            { AL["Major Pakkon"] };
            { AL["Colonel Zerran"]  };
            { AL["Moam"].." ("..AL["Optional"]..")", cords = {32,38}, pinType = boss };
            { AL["Buru the Gorger"].." ("..AL["Optional"]..")", cords = {71,60}, pinType = boss };
            { AL["Ayamiss the Hunter"].." ("..AL["Optional"]..")", cords = {60,89}, pinType = boss };
            { AL["Ossirian the Unscarred"], cords = {41,73}, pinType = boss };
            { AL["Safe Room"], cords = {63,74} };
        };
    };

    AtlasLoot_MapData["TheTempleofAhnQiraj"] = {
        ZoneName = { BabbleZone["Temple of Ahn'Qiraj"], 3428 };
        Location = { BabbleZone["Silithus"], 1377 };
        LevelRange = "60-70";
        MinLevel = "50";
        PlayerLimit = "10-25";
        Acronym = AL["AQT"];
        MapName = "AhnQiraj";
        Reputation = AL["Brood of Nozdormu"];
        [1] = {
            { AL["The Hive Undergrounds"], SubZone = true};
            { AL["The Bug Family"].." ("..AL["Optional"]..")", cords = {28,50}, pinType = boss };
            { AL["Vem"] };
            { AL["Lord Kri"] };
            { AL["Princess Yauj"] };
            { AL["Battleguard Sartura"], cords = {45,35}, pinType = boss };
            { AL["Fankriss the Unyielding"], cords = {63,23}, pinType = boss };
            { AL["Viscidus"].." ("..AL["Optional"]..")", cords = {73,18}, pinType = boss };
            { AL["Princess Huhuran"], cords = {44,50}, pinType = boss };
            { AL["Twin Emperors"], cords = {61,71}, pinType = boss };
            { AL["Emperor Vek'lor"] };
            { AL["Emperor Vek'nilash"] };
            { AL["Ouro"].." ("..AL["Optional"]..")", cords = {31,81}, pinType = boss };
        };
        [2] = {
            { AL["The Temple Gates"], SubZone = true};
            { AL["The Prophet Skeram"].." ("..AL["Outside"]..")", cords = {46,53}, pinType = boss };
        };
        [3] = {
            { AL["Vault of C'Thun"], SubZone = true};
            { AL["Eye of C'Thun"], cords = {57,63}, pinType = boss };
            { AL["C'Thun"] };
            { AL["Andorgos <Brood of Malygos>"] , cords = {50,19} };
            { AL["Vethsera <Brood of Ysera>"] };
            { AL["Kandrostrasz <Brood of Alexstrasza>"] };
            { AL["Arygos"], cords = {41,26} };
            { AL["Caelestrasz"] };
            { AL["Merithra of the Dream"] };
        };
    };

    AtlasLoot_MapData["Naxxramas60"] = {
        ZoneName = { BabbleZone["Naxxramas"], 3456 };
        Location = { BabbleZone["Eastern Plaguelands"], 65 };
        LevelRange = "60+";
        MinLevel = "60";
        PlayerLimit = "10-25";
        Acronym = "Nax60";
        MapName = "Naxxramas";
        [1] = {
            { BabbleSubZone["The Construct Quarter"], SubZone = true };
            { AL["Patchwerk"], cords = {54,41}, pinType = boss };
            { AL["Grobbulus"], cords = {62,53}, pinType = boss };
            { AL["Gluth"], cords = {46,44}, pinType = boss };
            { AL["Thaddius"], cords = {28,15}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["The Arachnid Quarter"], SubZone = true };
            { AL["Anub'Rekhan"], cords = {31,47}, pinType = boss};
            { AL["Grand Widow Faerlina"], cords = {44,36}, pinType = boss };
            { AL["Maexxna"], cords = {69,15}, pinType = boss };
            };
        [3] = {
            { BabbleSubZone["The Military Quarter"], SubZone = true };
            { _RED..AL["Instructor Razuvious"], cords = {43,46}, pinType = boss};
            { _RED..AL["Gothik the Harvester"], cords = {67,60}, pinType = boss};
            { _RED..AL["Four Horsemen Chest"], cords = {30,77}, pinType = boss};
        };
        [4] = {
            { BabbleSubZone["The Plague Quarter"], SubZone = true };
            { AL["Noth the Plaguebringer"], cords = {35,57}, pinType = boss };
            { AL["Heigan the Unclean"], cords = {50,46}, pinType = boss };
            { AL["Loatheb"], cords = {76,28}, pinType = boss };
        };
        [5] = {
            { AL["Overview"], SubZone = true };

        };
        [6] = {
            { BabbleZone["Frostwyrm Lair"], SubZone = true };
            { AL["Sapphiron"], cords = {37,23}, pinType = boss };
            { AL["Kel'Thuzad"], cords = {57,68}, pinType = boss };
        };
    };

    --Classic Dungeons

    AtlasLoot_MapData["BlackfathomDeeps"] = {
        ZoneName = { BabbleZone["Blackfathom Deeps"], 719 };
        Location = { BabbleZone["Ashenvale"], 331 };
        LevelRange = "20-28";
        MinLevel = "19";
        PlayerLimit = "5";
        Acronym = AL["BFD"];
        MapName = "BlackFathomDeeps";
        [1] = {
            { BabbleSubZone["The Pool of Ask'ar"], SubZone = true};
            { AL["Ghamoo-ra"], cords = {32.9,59.9}, pinType = boss};
            { AL["Lorgalis Manuscript"], cords = {33,41}, pinType = quest};
            { AL["Lady Sarevess"], cords = {12,41}, pinType = boss};
            { AL["Argent Guard Thaelrid <The Argent Dawn>"], cords = {21,74}};
            { AL["Gelihast"], cords = {53,57}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Moonshrine Sanctum"], SubZone = true};
            { AL["Lorgus Jett"].." ("..AL["Varies"]..")", cords = {46,66.5} };
            { AL["Fathom Stone"] };
            { AL["Baron Aquanis"], pinType = boss };
            { AL["Old Serra'kis"], cords = {53.4,70}, pinType = boss };
            { AL["Twilight Lord Kelris"], cords = {51,81}, pinType = boss };
            { AL["Aku'mai"], cords = {81.7,84.5}, pinType = boss };
            { AL["Morridune"] };
            { AL["Altar of the Deeps"] };
        };
        [3] = {
            { BabbleSubZone["The Forgotten Pool"], SubZone = true};
            { AL["Old Serra'kis"], cords = {59.4,31.4}, pinType = boss };
        };
    };

    AtlasLoot_MapData["BlackrockDepths"] = {
        ZoneName = { BabbleZone["Blackrock Depths"], 1584 };
        Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
        LevelRange = "52-58";
        MinLevel = "10-25";
        PlayerLimit = "5";
        Acronym = AL["BRD"];
        MapName = "BlackrockDepths";
        [1] = {
            { BabbleSubZone["Detention Block"], SubZone = true };
            { AL["Lord Roccor"], cords = {57,65} , pinType = boss};
            { AL["Kharan Mighthammer"], cords = {52,82} };
            { AL["Commander Gor'shak <Kargath Expeditionary Force>"], cords = {54,87}, pinType = quest };
            { AL["Marshal Windsor"], cords = {53,94}, pinType = quest };
            { AL["High Interrogator Gerstahn <Twilight's Hammer Interrogator>"], cords = {48,91}, pinType = boss };
            { AL["Ring of Law"], cords = {51,61}, pinType = boss };
            { AL["Anub'shiah"].." ("..AL["Random"]..")" };
            { AL["Eviscerator"].." ("..AL["Random"]..")" };
            { AL["Gorosh the Dervish"].." ("..AL["Random"]..")" };
            { AL["Grizzle"].." ("..AL["Random"]..")" };
            { AL["Hedrum the Creeper"].." ("..AL["Random"]..")" };
            { AL["Ok'thor the Breaker"].." ("..AL["Random"]..")" };
            { AL["Theldren"].." ("..AL["Summon"]..")" };
            { AL["Lefty"] };
            { AL["Malgen Longspear"] };
            { AL["Gnashjaw <Malgen Longspear's Pet>"] };
            { AL["Rotfang"] };
            { AL["Va'jashni"] };
            { AL["Houndmaster Grebmar"].." ("..AL["Lower"]..")" };
            { AL["Elder Morndeep"].." ("..AL["Lunar Festival"]..")" };
            { AL["High Justice Grimstone"] };
            { AL["Pyromancer Loregrain"], cords = {57,69}, pinType = boss };
            { AL["Monument of Franclorn Forgewright"] };
            { AL["Fineous Darkvire <Chief Architect>"], cords = {64,21} };
            { AL["Lord Incendius"], cords = {56,31}, pinType = boss };
            { AL["The Black Anvil"] };
            { AL["Bael'Gar"], cords ={26,53}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Shadowforge City"], SubZone = true };
            { AL["The Vault"], cords = {60,66}, pinType = boss };
            { AL["Warder Stilgiss"] };
            { AL["Verek"] };
            { AL["Watchman Doomgrip"] };
            { AL["Ring of Law"], cords = {51,89}, pinType = boss };
            { AL["Shadowforge Lock"], cords = {42,91} };
            { AL["General Angerforge"], cords = {36,83}, pinType = boss };
            { AL["Golem Lord Argelmach"], cords = {36,65}, pinType = boss };
            { AL["Field Repair Bot 74A"] };
            { AL["Blacksmithing Plans"] };
            { AL["The Grim Guzzler"], cords = {50,63}, pinType = boss };
            { AL["Hurley Blackbreath"] };
            { AL["Lokhtos Darkbargainer <The Thorium Brotherhood>"] };
            { AL["Mistress Nagmara"] };
            { AL["Phalanx"] };
            { AL["Plugger Spazzring"] };
            { AL["Private Rocknot"] };
            { AL["Ribbly Screwspigot"] };
            { AL["Coren Direbrew"].." ("..AL["Brewfest"]..")" };
            { AL["Griz Gutshank <Arena Vendor>"] };
            { AL["Ambassador Flamelash"], cords = {55,49}, pinType = boss };
            { AL["Panzor the Invincible"].." ("..AL["Rare"]..")", cords = {50,35}, pinType = boss };
            { AL["Blacksmithing Plans"] };
            { AL["Summoner's Tomb"], cords = {54,25}, pinType = boss };
            { AL["The Lyceum"], cords = {67,12}, pinType = boss };
            { AL["Magmus"], cords = {81,12}, pinType = boss };
            { AL["Emperor Dagran Thaurissan"], cords = {91,12}, pinType = boss };
            { AL["Princess Moira Bronzebeard <Princess of Ironforge>"] };
            { AL["High Priestess of Thaurissan"] };
            { AL["The Black Forge"], cords = {63,25} };
            { BabbleZone["Molten Core"], cords = {68,36}, pinType = quest };
            { AL["Core Fragment"] };
        };
    };

    AtlasLoot_MapData["BlackrockSpire"] = {
        ZoneName = { BabbleZone["Blackrock Spire"], 1583};
        Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
        LevelRange = "54-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = AL["LBRS"];
        MapName = "BlackrockSpire";
        [1] = {
            { BabbleSubZone["Tazz'Alaor"], SubZone = true };
            { AL["War Master Voone"], cords = {52,54}, pinType = boss };
            { AL["Mor Grayhoof"].." ("..AL["Summon"]..")" };
            { AL["Sixth Mosh'aru Tablet"] };
            { AL["Bijou's Belongings"] };
            { AL["Elder Stonefort"].." ("..AL["Lunar Festival"]..")" };
            { AL["Mother Smolderweb"], cords = {64,70}, pinType = boss };
            { AL["Crystal Fang"].." ("..AL["Rare"]..")" };
            { AL["Burning Felguard"].." ("..AL["Rare"]..", "..AL["Summon"]..")", cords = {43,54}, pinType = boss };
        };
        [2] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", Zone = true };
            { BabbleSubZone["Skitterweb Tunnels"], SubZone = true };
            { AL["Shadow Hunter Vosh'gajin"], cords = {56,70}, pinType = boss };
            { AL["Fifth Mosh'aru Tablet"] };
        };
        [3] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", Zone = true };
            { BabbleSubZone["Hordemar City"], SubZone = true };
            { AL["Vaelan"].." ("..AL["Upper"]..")", cords = {52,41}, pinType = boss };
            { AL["Warosh <The Cursed>"].." ("..AL["Wanders"]..")", cords = {61,43}, pinType = boss };
            { AL["Bijou"], cords = {63,56} };
            { AL["Roughshod Pike"] , cords = {67,58}};
            { AL["Spirestone Butcher"].." ("..AL["Rare"]..")" , cords = {51,58}, pinType = boss};
            { AL["Highlord Omokk"], cords = {39,60}, pinType = boss };
            { AL["Spirestone Battle Lord"].." ("..AL["Rare"]..")" };
            { AL["Spirestone Lord Magus"].." ("..AL["Rare"]..")" };
        };
        [4] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", Zone = true };
            { BabbleSubZone["Hall of Blackhand"], SubZone = true };
            { AL["Human Remains"].." ("..AL["Lower"]..")", cords = {43,56}};
            { AL["Unfired Plate Gauntlets"].." ("..AL["Lower"]..")" };
            { AL["Urok's Tribute Pile"], cords = {46,55}, pinType = boss };
            { AL["Urok Doomhowl"].." ("..AL["Summon"]..")" };
            { AL["Bannok Grimaxe <Firebrand Legion Champion>"].." ("..AL["Rare"]..")", cords = {46,65}, pinType = boss };
        };
        [5] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", Zone = true };
            { BabbleSubZone["Dragonspire Hall"], SubZone = true };
            { AL["Quartermaster Zigris <Bloodaxe Legion>"], cords = {55,85}, pinType = boss };
            { AL["Halycon"], cords = {38,85} };
            { AL["Gizrul the Slavener"] };
            { AL["Ghok Bashguud <Bloodaxe Champion>"].." ("..AL["Rare"]..")", cords = {35,68}, pinType = boss };
        };
        [6] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Upper"]..")", Zone = true };
            { BabbleSubZone["The Rookery"], SubZone = true };
            { AL["Pyroguard Emberseer"], cords = {31,27}, pinType = boss };
            { AL["Solakar Flamewreath"], cords = {39,39}, pinType = boss };
            { AL["Father Flame"] };
            { AL["Darkstone Tablet"], cords = {32,42} };
            { AL["Doomrigger's Coffer"] };
            { AL["Overlord Wyrmthalak"], cords = {58,64}, pinType = boss };
        };
        [7] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Upper"]..")", Zone = true };
            { BabbleSubZone["Blackrock Stadium"], SubZone = true };
            { AL["Jed Runewatcher <Blackhand Legion>"].." ("..AL["Rare"]..")", cords = {38,24}, pinType = boss };
            { AL["Goraluk Anvilcrack <Blackhand Legion Armorsmith>"], cords = {33,27}, pinType = boss };
            { AL["Warchief Rend Blackhand"], cords = {49,27}, pinType = boss };
            { AL["Gyth <Rend Blackhand's Mount>"] };
            { AL["Awbee"], cords = {49,36} };
            { AL["The Beast"], cords = {64,32}, pinType = boss };
            { AL["Lord Valthalak"].." ("..AL["Summon"]..")" };
            { AL["Finkle Einhorn"] };
            { AL["General Drakkisath"], cords = {36,50}, pinType = boss };
            { AL["Drakkisath's Brand"] };
            { BabbleZone["Blackwing Lair"], cords = {55,22} };
        };
    };

    AtlasLoot_MapData["TheDeadmines"] = {
        ZoneName = { BabbleZone["The Deadmines"], 1581 };
        Location = { BabbleZone["Westfall"], 40 };
        LevelRange = "16-22";
        MinLevel = "10";
        PlayerLimit = "5";
        Acronym = AL["VC"];
        MapName = "TheDeadmines";
        [1] = {
            { BabbleSubZone["The Deadmines"], SubZone = true };
            { AL["Rhahk'Zor <The Foreman>"], cords = {36,62}, pinType = boss };
            { AL["Miner Johnson"].." ("..AL["Rare"]..")", cords = {51,51}, pinType = boss };
            { AL["Sneed <Lumbermaster>"], cords = {51,86}, pinType = boss };
            { AL["Sneed's Shredder <Lumbermaster>"] };
            { AL["Gilnid <The Smelter>"], cords = {61,57}, pinType = boss };

        };
        [2] = {
            { BabbleSubZone["Ironclad Cove"], SubZone = true };
            { AL["Defias Gunpowder"], cords = {20,55} };
            { AL["Captain Greenskin"], cords = {61,38}, pinType = boss };
            { AL["Edwin VanCleef <Defias Kingpin>"], cords = {61,46}, pinType = boss };
            { AL["Mr. Smite <The Ship's First Mate>"], cords = {56,26}, pinType = boss };
            { AL["Cookie <The Ship's Cook>"], cords = {68,43}, pinType = boss };
        };
    };

    AtlasLoot_MapData["DireMaul"] = {
        ZoneName = { BabbleZone["Dire Maul"], 2557 };
        Location = { BabbleZone["Feralas"], 357 };
        LevelRange = "57-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = AL["DM"];
        MapName = "DireMaul";
        [1] = {
            { AL["Gordok Commons"].." (North)" , SubZone = true};
            { BabbleZone["Library"].." "..AL["Entrance"] };
            { AL["Guard Mol'dar"], cords = {69.9,76}, pinType = boss };
            { AL["Stomper Kreeg <The Drunk>"], cords = {61,68}, pinType = boss };
            { AL["Guard Fengus"], cords = {42.9,77.6}, pinType = boss };
            { AL["Knot Thimblejack"] };
            { AL["Guard Slip'kik"], cords = {26.5,57.8}, pinType = boss };
            { AL["Captain Kromcrush"], cords = {31.8,51.4}, pinType = boss };
            { AL["King Gordok"], cords = {32,27.7}, pinType = boss };
            { AL["Cho'Rush the Observer"], cords = {31.4,26.2} };
        };
        [2] = {
            { BabbleSubZone["Capital Gardens"].." (West)" , SubZone = true};
            { AL["Pylons"], cords = {70, 51}};
            { AL["Pylons"], cords = {40, 22}};
            { AL["Pylons"], cords = {36, 80}};
            { AL["Illyanna Ravenoak"], cords = {20,78}, pinType = boss };
            { AL["Tendris Warpwood"], cords = {33.4,53.5}, pinType = boss };
        };
        [3] = {
            { BabbleSubZone["Court of the Highborne"].." (West)" , SubZone = true};
            { AL["Shen'dralar Ancient"] };
            { AL["Magister Kalendris"], cords = {32,45.3}, pinType = boss };
        };
        [4] = {
            { BabbleSubZone["Prison of Immol'thar"].." (West)", SubZone = true };
            { AL["Ancient Equine Spirit"] };
            { AL["Ferra"] };
            { AL["Tsu'zee"].." ("..AL["Rare"]..")", cords = {68.3,23.9}, pinType = boss };
            { AL["Immol'thar"], cords = {35.2,58.1}, pinType = boss };
            { AL["Lord Hel'nurath"].." ("..AL["Summon"]..")", cords = {14.9,55.7}, pinType = boss };
            { AL["Prince Tortheldrin"], cords = {61.4,15.1}, pinType = boss };
            { BabbleZone["Library"] };
            { AL["Falrin Treeshaper"] };
            { AL["Lorekeeper Lydros"] };
            { AL["Lorekeeper Javon"] };
            { AL["Lorekeeper Kildrath"] };
            { AL["Lorekeeper Mykos"] };
            { AL["Shen'dralar Provisioner"] };
            { AL["Skeletal Remains of Kariel Winthalus"] };
            { AL["Pylons"], cords = {44, 35}};
            { AL["Pylons"], cords = {34, 81}};
        };
        [5] = {
            { BabbleSubZone["Warpwood Quarter"].." (East)", SubZone = true };
            { AL["Zevrim Thornhoof"] };
            { AL["Hydrospawn"], cords = {41,49.2}, pinType = boss };
            { AL["Lethtendris"], cords = {44.5,46.6}, pinType = boss };
            { AL["Pimgib"] };
        };
        [6] = {
            { BabbleSubZone["The Shrine of Eldretharr"].." (East)", SubZone = true };
            { AL["Old Ironbark"], cords = {40,68} };
            { AL["Alzzin the Wildshaper"], cords = {57.3,28.9}, pinType = boss };
            { AL["Isalien"].." ("..AL["Summon"]..")", pinType = boss };
        };
    };

    AtlasLoot_MapData["Gnomeregan"] = {
        ZoneName = { BabbleZone["Gnomeregan"], 721 };
        Location = { BabbleZone["Dun Morogh"], 1 };
        LevelRange = "24-32";
        MinLevel = "20";
        PlayerLimit = "5";
        Acronym = AL["Gnome"];
        MapName = "Gnomeregan";
        [1] = {
            { BabbleSubZone["The Hall of Gears"], SubZone = true };
            { AL["Blastmaster Emi Shortfuse"], cords = {77,68}, pinType = boss };
            { AL["Grubbis"] };
            { AL["Chomper"] };
            { AL["Viscous Fallout"], cords = {50,50}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["The Dormitory"], SubZone = true };
            { AL["Clean Room"] , cords = {64,64}};
            { AL["Tink Sprocketwhistle <Engineering Supplies>"] };
            { AL["The Sparklematic 5200"] };
            { AL["Mail Box"] };
            { AL["Kernobee"], cords = {72,68} };
            { AL["Alarm-a-bomb 2600"] };
            { AL["Matrix Punchograph 3005-B"] };
            { AL["Electrocutioner 6000"] , cords = {25,69}, pinType = boss};
            { AL["Matrix Punchograph 3005-C"] };
        };
        [3] = {
            { BabbleSubZone["Launch Bay"], SubZone = true };
            { AL["Crowd Pummeler 9-60"].." ("..AL["Upper"]..")", cords = {44,87}, pinType = boss };
            { AL["Matrix Punchograph 3005-D"] };
        };
        [4] = {
            { BabbleSubZone["Tinkers' Court"], SubZone = true };
            { AL["Dark Iron Ambassador"], cords = {29,48} };
            { AL["Mekgineer Thermaplugg"], cords = {32,30}, pinType = boss };
        };
    };
    
    AtlasLoot_MapData["Maraudon"] = {
        ZoneName = { BabbleZone["Maraudon"], 2100 };
        Location = { BabbleZone["Desolace"], 405 };
        LevelRange = "42-51";
        MinLevel = "30";
        PlayerLimit = "5";
        Acronym = AL["Mara"];
        MapName = "Maraudon";
        [1] = {
            { AL["Caverns of Maraudon"], SubZone = true };
            { AL["Veng <The Fifth Khan>"], cords = {60,24} };
            { AL["Noxxion"], cords = {36,15}, pinType = boss };
            { AL["Razorlash"], cords = {18,33}, pinType = boss };
            { AL["Maraudos <The Fourth Khan>"], cords = {53,74} };
            { AL["Lord Vyletongue"], cords = {37,72}, pinType = boss };
            { AL["Meshlok the Harvester"].." ("..AL["Rare"]..")" };
            { AL["Celebras the Cursed"], cords = {10,65}, pinType = boss };
        };
        [2] = {
            { AL["Zaetar's Grave"], SubZone = true };
            { AL["Celebras the Cursed"], cords = {25,15}, pinType = boss };
            { AL["Landslide"], cords = {40.6,48.2} };
            { AL["Tinkerer Gizlock"], cords = {48.4,68.6} };
            { AL["Rotgrip"], cords = {33.3,77.1}, pinType = boss };
            { AL["Princess Theradras"], cords = {24.2,80.4}, pinType = boss };
            { AL["Elder Splitrock"].." ("..AL["Lunar Festival"]..")" };
        };
    };

    AtlasLoot_MapData["RagefireChasm"] = {
        ZoneName = { BabbleZone["Ragefire Chasm"], 2437 };
        Location = { BabbleZone["Orgrimmar"], 1637 };
        LevelRange = "12-18";
        MinLevel = "8";
        PlayerLimit = "5";
        Acronym = AL["RFC"];
        MapName = "ragefire";
        [1] = {
            { BabbleZone["Ragefire Chasm"], SubZone = true };
            { AL["Maur Grimtotem"] };
            { AL["Oggleflint <Ragefire Chieftain>"], cords = {56.2,38.6}, pinType = boss };
            { AL["Taragaman the Hungerer"], cords = {40.9,59}, pinType = boss };
            { AL["Jergosh the Invoker"], cords = {38.9,82.9}, pinType = boss };
            { AL["Zelemar the Wrathful"].." ("..AL["Summon"]..")" };
            { AL["Bazzalan"], cords = {42.4,85.4}, pinType = boss };
        };
    };

    AtlasLoot_MapData["RazorfenDowns"] = {
        ZoneName = { BabbleZone["Razorfen Downs"], 722 };
        Location = { BabbleZone["The Barrens"], 17 };
        LevelRange = "33-42";
        MinLevel = "25";
        PlayerLimit = "5";
        Acronym = AL["RFD"];
        MapName = "RazorfenDowns";
        [1] = {
            { BabbleZone["Razorfen Downs"], SubZone = true };
            { AL["Tuten'kash"], cords = {67.1,41.2}, pinType = boss };
            { AL["Henry Stern"] };
            { AL["Belnistrasz"] };
            { AL["Sah'rhee"] };
            { AL["Mordresh Fire Eye"], cords = {85.8,45.7}, pinType = boss };
            { AL["Glutton"], cords = {38.5,45.2}, pinType = boss};
            { AL["Ragglesnout"].." ("..AL["Rare"]..", "..AL["Varies"]..")" };
            { AL["Amnennar the Coldbringer"], cords = {45,59.1}, pinType = boss };
            { AL["Plaguemaw the Rotting"] };
        };
    };

    AtlasLoot_MapData["RazorfenKraul"] = {
        ZoneName = { BabbleZone["Razorfen Kraul"], 491 };
        Location = { BabbleZone["The Barrens"], 17 };
        LevelRange = "23-33";
        MinLevel = "17";
        PlayerLimit = "5";
        Acronym = AL["RFK"];
        MapName = "RazorfenKraul";
        [1] = {
            { AL["Entrance"] };
            { AL["Roogug"], cords = {65,48}, pinType = boss };
            { AL["Aggem Thorncurse <Death's Head Prophet>"], cords = {81,53}, pinType = boss };
            { AL["Death Speaker Jargba <Death's Head Captain>"], cords = {88,41}, pinType = boss };
            { AL["Overlord Ramtusk"], cords = {56,30}, pinType = boss };
            { AL["Razorfen Spearhide"] };
            { AL["Agathelos the Raging"], cords = {9,68}, pinType = boss };
            { AL["Blind Hunter"].." ("..AL["Rare"]..")", cords = {11,31} };
            { AL["Charlga Razorflank <The Crone>"], cords = {22,31}, pinType = boss };
            { AL["Willix the Importer"] };
            { AL["Heralath Fallowbrook"] };
            { AL["Earthcaller Halmgar"].." ("..AL["Rare"]..")", cords = {49,45} };
        };
    };

    AtlasLoot_MapData["ScarletMonastery"] = {
        ZoneName = { BabbleZone["Scarlet Monastery"], 796 };
        Location = { BabbleZone["Tirisfal Glades"], 85 };
        LevelRange = "33-40";
        MinLevel = "20";
        PlayerLimit = "5";
        Acronym = AL["SM"];
        MapName = "ScarletMonastery";
        [1] = {
            { BabbleZone["Graveyard"], SubZone = true };
            { AL["Interrogator Vishas"], cords = {72,60}, pinType = boss };
            { AL["Vorrel Sengutz"] };
            { AL["Pumpkin Shrine"].." ("..AL["Hallow's End"]..")", cords = {36,63} };
            { AL["Headless Horseman"].." ("..AL["Summon"]..")" };
            { AL["Bloodmage Thalnos"], cords = {24,56}, pinType = boss };
            { AL["Ironspine"].." ("..AL["Rare"]..")" };
            { AL["Azshir the Sleepless"].." ("..AL["Rare"]..")" };
            { AL["Fallen Champion"].." ("..AL["Rare"]..")" };
        };
        [2] = {
            { BabbleZone["Library"], SubZone = true };
            { AL["Houndmaster Loksey"], cords = {30,85}, pinType = boss };
            { AL["Arcanist Doan"], cords = {83,77}, pinType = boss };
        };
        [3] = {
            { BabbleZone["Armory"], SubZone = true };
            { AL["Herod <The Scarlet Champion>"], cords = {79,11}, pinType = boss };
        };
        [4] = {
            { BabbleZone["Cathedral"], SubZone = true };
            { AL["High Inquisitor Fairbanks"], cords = {56,26}, pinType = boss };
            { AL["Scarlet Commander Mograine"], cords = {49,29}, pinType = boss };
            { AL["High Inquisitor Whitemane"], cords = {48,17}, pinType = boss };
        };
    };

    AtlasLoot_MapData["Scholomance"] = {
        ZoneName = { BabbleZone["Scholomance"], 2057 };
        Location = { BabbleZone["Western Plaguelands"], 28 };
        LevelRange = "58-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = AL["Scholo"];
        MapName = "Scholomance";
        [1] = {
            { BabbleSubZone["The Reliquary"], SubZone = true };
            { AL["Blood Steward of Kirtonos"] , cords = {82,46}, pinType = boss};
            { AL["Blood of Innocents"].." ("..AL["Kirtonos the Herald"]..")" };
            { AL["The Deed to Southshore"] };
        };
        [2] = {
            { BabbleSubZone["Chamber of Summoning"], SubZone = true };
            { AL["Kirtonos the Herald"].." ("..AL["Summon"]..")" , cords = {49,12}, pinType = boss};
            { AL["The Deed to Tarren Mill"], cords = {31,57}, pinType = quest };
            { AL["Torch Lever"] , cords = {49,55}};
            { AL["Secret Chest"] };
            { AL["Marduk Blackpool"] , cords = {49,66}, pinType = boss};
            { AL["Vectus"] };
        };
        [3] = {
            { AL["The Headmaster's Study"], SubZone = true };
            { AL["Jandice Barov"] , cords = {54,15}, pinType = boss};
            { AL["Instructor Malicia"] , cords = {73,79}, pinType = boss};
            { AL["Doctor Theolen Krastinov <The Butcher>"] , cords = {89,46}, pinType = boss};
            { AL["Lorekeeper Polkelt"] , cords = {73,24}, pinType = boss};
            { AL["Rattlegore"] , cords = {33,65}, pinType = boss};
            { AL["Death Knight Darkreaver"].." ("..AL["Summon"]..")" };
            { AL["Darkmaster Gandling"] , cords = {73,47}, pinType = boss};
        };
        [4] = {
            { BabbleSubZone["Barov Family Vault"], SubZone = true };
            { AL["Ras Frostwhisper"] , cords = {41,82}, pinType = boss};
            { AL["The Deed to Brill"] };
            { AL["Alchemy Lab"] };
            { AL["Kormok"].." ("..AL["Summon"]..")" };
            { AL["The Ravenian"] , cords = {67,49}, pinType = boss};
            { AL["Lord Alexei Barov"] , cords = {79,30}, pinType = boss};
            { AL["The Deed to Caer Darrow"] };
            { AL["Lady Illucia Barov"], cords = {67,16}, pinType = boss};
            { AL["Darkmaster Gandling"] , cords = {67,30}, pinType = boss};
        };
    };

    AtlasLoot_MapData["ShadowfangKeep"] = {
        ZoneName = { BabbleZone["Shadowfang Keep"], 209 };
        Location = { BabbleZone["Silverpine Forest"], 130 };
        LevelRange = "17-25";
        MinLevel = "10";
        PlayerLimit = "5";
        Acronym = AL["SFK"];
        MapName = "ShadowfangKeep";
        [1] = {
            { AL["The Courtyard"], SubZone = true };
            { AL["Rethilgore <The Cell Keeper>"], cords = {67,73}, pinType = boss};
            { AL["Sorcerer Ashcrombe"] };
            { AL["Deathstalker Adamant"] };
            { AL["Landen Stilwell"] };
            { AL["Investigator Fezzen Brasstacks"].." ("..AL["Love is in the Air"]..")", cords = {54,66} };
            { AL["Deathstalker Vincent"], cords =  {57,60}};
            { AL["Apothecary Trio"].." ("..AL["Love is in the Air"]..")", cords = {39,51} };
            { AL["Apothecary Hummel <Crown Chemical Co.>"] };
            { AL["Apothecary Baxter <Crown Chemical Co.>"] };
            { AL["Apothecary Frye <Crown Chemical Co.>"] };
            { AL["Fel Steed"], cords = {35,58} };
            { AL["Jordan's Hammer"] };
            { AL["Crate of Ingots"] };
            { AL["Commander Springvale"] , cords = {27,61}, pinType = boss};      
        };
        [2] = {
            { AL["Dining Hall"], SubZone = true };
            { AL["Razorclaw the Butcher"] , cords = {48,28}, pinType = boss};
            { AL["Baron Silverlaine"] , cords = {30,77}, pinType = boss};
        };
        [3] = {
            { AL["The Vacant Den"], SubZone = true };
        };
        [4] = {
            { AL["Lower Observatory"], SubZone = true };
            { AL["Fenrus the Devourer"], cords = {53,54}, pinType = boss};
            { AL["Arugal's Voidwalker"] };
            { AL["The Book of Ur"] };
        };
        [5] = {
            { AL["Upper Observatory"], SubZone = true };
        };
        [6] = {
            { AL["Lord Godfrey's Chamber"], SubZone = true };
            { AL["Wolf Master Nandos"] , cords = {57,62}, pinType = boss};
            { AL["Archmage Arugal"] , cords = {65,20}, pinType = boss};
        };
        [7] = {
            { AL["The Wall Walk"], SubZone = true };
            { AL["Odo the Blindwatcher"] , cords = {55,81}, pinType = boss};
            { AL["Deathsworn Captain"].." ("..AL["Rare"]..")" , cords = {59,53}, pinType = boss};
        };
    };

    AtlasLoot_MapData["TheStockade"] = {
        ZoneName = { BabbleZone["The Stockade"], 717 };
        Location = { BabbleZone["Stormwind City"], 1519 };
        LevelRange = "21-27";
        MinLevel = "15";
        PlayerLimit = "5";
        Acronym = AL["Stocks"];
        MapName = "TheStockade";
        [1] = {
        { BabbleZone["The Stockade"], SubZone = true };
        { AL["Targorr the Dread"], cords = {50,25}, pinType = boss };
        { AL["Kam Deepfury"], cords = {69,30} , pinType = boss};
        { AL["Hamhock"], cords = {78,46} , pinType = boss};
        { AL["Bazil Thredd"], cords = {86,51} , pinType = boss};
        { AL["Dextren Ward"], cords = {22,26} , pinType = boss};
        { AL["Bruegal Ironknuckle"].." ("..AL["Rare"]..")", cords = {30,43} , pinType = boss};
        };
    };

    AtlasLoot_MapData["Stratholme"] = {
        ZoneName = { BabbleZone["Stratholme"], 2017 };
        Location = { BabbleZone["Eastern Plaguelands"], 139 };
        LevelRange = "58-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = AL["Strat"];
        MapName = "Stratholme";
        [1] = {
            { AL["Crusader's Square"], SubZone = true  };
            { AL["Crusaders' Square Postbox"] , cords = {36,35}};
            { AL["Market Row Postbox"], cords = {69,28} };
            { AL["Festival Lane Postbox"] , cords = {80,29}};
            { AL["King's Square Postbox"] , cords = {64,53}};
            { AL["Fras Siabi's Postbox"] , cords = {55,69}};
            { AL["3rd Box Opened"]..": "..AL["Postmaster Malown"] };
            { AL["Skul"].." ("..AL["Rare"]..")", cords = {80,43}, pinType = boss};
            { AL["Stratholme Courier"] };
            { AL["Fras Siabi"] };
            { AL["Atiesh <Hand of Sargeras>"].." ("..AL["Summon"]..")" , cords = {86,38}};
            { AL["Hearthsinger Forresten"].." ("..AL["Varies"]..")", cords = {81,34}, pinType = boss};
            { AL["The Unforgiven"], cords = {73,23}, pinType = boss};
            { AL["Elder Farwhisper"].." ("..AL["Lunar Festival"]..")", cords = {79,17}};
            { AL["Timmy the Cruel"] , cords = {35,26}, pinType = boss};
            { AL["Malor the Zealous"], cords = {30,42}, pinType = boss};
            { AL["Malor's Strongbox"]};
            { AL["Crimson Hammersmith"].." ("..AL["Summon"]..")", cords = {13,48} };
            { AL["Blacksmithing Plans"] };
            { AL["Cannon Master Willey"], cords = {5,51}, pinType = boss};
            { AL["Archivist Galford"], cords = {28,74}, pinType = boss};
            { AL["Grand Crusader Dathrohan"], cords = {21,82}, pinType = boss};
            { AL["Balnazzar"] };
            { AL["Sothos"].." ("..AL["Summon"]..")" };
            { AL["Jarien"].." ("..AL["Summon"]..")" };
        };
        [2] = {
            { BabbleSubZone["The Gauntlet"], SubZone = true  };
            { AL["Elders' Square Postbox"], cords = {67,76}};
            { AL["3rd Box Opened"]..": "..AL["Postmaster Malown"] };
            { AL["Magistrate Barthilas"].." ("..AL["Varies"]..")", cords = {66,77}, pinType = boss};
            { AL["Aurius"], cords = {68,74}, pinType = boss};
            { AL["Stonespine"].." ("..AL["Rare"]..")" , cords = {70,51}, pinType = boss};
            { AL["Baroness Anastari"] , cords = {76,46}, pinType = boss};
            { AL["Black Guard Swordsmith"].." ("..AL["Summon"]..")" };
            { AL["Blacksmithing Plans"] };
            { AL["Nerub'enkan"], cords = {58,48}, pinType = boss};
            { AL["Maleki the Pallid"] , cords = {67,22}, pinType = boss};
            { AL["Magistrate Barthilas"].." ("..AL["Varies"]..")", cords = {57,16}, pinType = boss};
            { AL["Ramstein the Gorger"] , cords = {45,21}, pinType = boss};
            { AL["Baron Rivendare"] , cords = {40,21}, pinType = boss};
            { AL["Ysida Harmon"] };


        };
    };

    AtlasLoot_MapData["TheSunkenTemple"] = {
        ZoneName = { BabbleZone["Sunken Temple"], 1417 };
        Location = { BabbleZone["Swamp of Sorrows"], 8 };
        LevelRange = "46-53";
        MinLevel = "35";
        PlayerLimit = "5";
        Acronym = AL["ST"];
        MapName = "TheTempleOfAtalHakkar";
        [1] = {
            { BabbleZone["Sunken Temple"] , SubZone = true};
            { AL["Dreamscythe"] , cords = {50,41}, pinType = boss};
            { AL["Weaver"] };
            { AL["Avatar of Hakkar"], cords = {26,46}, pinType = boss};
            { AL["Jammal'an the Prophet"], cords = {73,39}, pinType = boss};
            { AL["Ogom the Wretched"] };
            { AL["Morphaz"] , cords = {50,87}, pinType = boss};
            { AL["Hazzas"] };
            { AL["Shade of Eranikus"] , cords = {68,87}, pinType = boss};
            { AL["Essence Font"] };
            { AL["Upper Ring"], SubZone = true };
            { AL["Spawn of Hakkar"].." ("..AL["Rare"]..")" };
            { AL["Elder Starsong"].." ("..AL["Lunar Festival"]..")" };
            { "1'-6') "..AL["Statue Activation Order"] };
            { "7') "..AL["Atal'ai Defenders"] };
            { AL["Gasher"] };
            { AL["Loro"] };
            { AL["Hukku"] };
            { AL["Zolo"] };
            { AL["Mijan"] };
            { AL["Zul'Lor"] };
            { AL["Lower Pool"], SubZone = true};
            { AL["Altar of Hakkar"] };
            { AL["Atal'alarion <Guardian of the Idol>"] };
        };
    };

    AtlasLoot_MapData["Uldaman"] = {
        ZoneName = { BabbleZone["Uldaman"], 1337 };
        Location = { BabbleZone["Badlands"], 3 };
        LevelRange = "36-42";
        MinLevel = "30";
        PlayerLimit = "5";
        Acronym = AL["Ulda"];
        MapName = "Uldaman";
        [1] = {
            { BabbleSubZone["Hall of the Keepers"], SubZone = true  };
            { AL["Key"]..": "..AL["Staff of Prehistoria"].." ("..AL["Ironaya"]..")" };
            { AL["Baelog"] , cords = {59,93}, pinType = boss};
            { AL["Eric \"The Swift\""] };
            { AL["Olaf"] };
            { AL["Baelog's Chest"] };
            { AL["Conspicuous Urn"] };
            { AL["Remains of a Paladin"], cords = {53,64}};
            { AL["Revelosh"] , cords = {54,72}, pinType = boss};
            { AL["Ironaya"] , cords = {37,74}, pinType = boss};
            { AL["Obsidian Sentinel"] , cords = {29,60}, pinType = boss};
            { AL["Ancient Stone Keeper"] , cords = {48,45}, pinType = boss};
            { AL["Galgann Firehammer"] , cords = {27,33}, pinType = boss};
            { AL["Tablet of Will"] };
            { AL["Shadowforge Cache"] };
            { AL["Grimlok <Stonevault Chieftain>"] , cords = {22,26}, pinType = boss};
            { AL["Archaedas <Ancient Stone Watcher>"].." ("..AL["Lower"]..")" , cords = {42,17}, pinType = boss};
            { AL["The Discs of Norgannon"].." ("..AL["Lower"]..")" , cords = {40,9}};
            { AL["Ancient Treasure"].." ("..AL["Lower"]..")" };

        };
        [2] = {
            { BabbleSubZone["Khaz'goroth's Seat"], SubZone = true  };
            { AL["Archaedas <Ancient Stone Watcher>"].." ("..AL["Lower"]..")" , cords = {55,52}, pinType = boss};
            { AL["The Discs of Norgannon"].." ("..AL["Lower"]..")" , cords = {50,34}};
            { AL["Ancient Treasure"].." ("..AL["Lower"]..")" };
        };
    };

    AtlasLoot_MapData["WailingCaverns"] = {
        ZoneName = { BabbleZone["Wailing Caverns"], 718 };
        Location = { BabbleZone["The Barrens"], 17 };
        LevelRange = "16-25";
        MinLevel = "10";
        PlayerLimit = "5";
        Acronym = AL["WC"];
        MapName = "WailingCaverns";
        [1] = {
            { BabbleZone["Wailing Caverns"], SubZone = true };
            { AL["Disciple of Naralex"], cords = {47,53} };
            { AL["Lord Cobrahn <Fanglord>"] , cords = {16,57}, pinType = boss};
            { AL["Lady Anacondra <Fanglord>"].." ("..AL["Varies"]..")" , cords = {31,44}, pinType = boss};
            { AL["Kresh"].." ("..AL["Varies"]..")" , cords = {45,38}, pinType = boss};
            { AL["Lord Pythas <Fanglord>"], cords = {64,58}, pinType = boss};
            { AL["Skum"] , cords = {74,82}, pinType = boss};
            { AL["Lord Serpentis <Fanglord>"].." ("..AL["Upper"]..")" , cords = {62,54}, pinType = boss};
            { AL["Verdan the Everliving"].." ("..AL["Upper"]..")" , cords = {56,47}, pinType = boss};
            { AL["Mutanus the Devourer"] , cords = {35,13}, pinType = boss};
            { AL["Naralex"] };
            { AL["Deviate Faerie Dragon"].." ("..AL["Rare"]..")" };
        };
    };

    AtlasLoot_MapData["ZulFarrak"] = {
        ZoneName = { BabbleZone["Zul'Farrak"], 978 };
        Location = { BabbleZone["Tanaris"], 440 };
        LevelRange = "42-48";
        MinLevel = "35";
        PlayerLimit = "5";
        Acronym = AL["ZF"];
        MapName = "ZulFarrak";
        [1] = {
            { BabbleZone["Zul'Farrak"], SubZone = true };
            { AL["Antu'sul <Overseer of Sul>"] , cords = {66,27}, pinType = boss};
            { AL["Theka the Martyr"] , cords = {54,28}, pinType = boss};
            { AL["Witch Doctor Zum'rah"] , cords = {45,17}, pinType = boss};
            { AL["Zul'Farrak Dead Hero"] };
            { AL["Nekrum Gutchewer"] , cords = {34,18}, pinType = boss};
            { AL["Shadowpriest Sezz'ziz"] };
            { AL["Dustwraith"].." ("..AL["Rare"]..")" };
            { AL["Sergeant Bly"] , cords = {28,18}, pinType = boss};
            { AL["Weegli Blastfuse"] };
            { AL["Murta Grimgut"] };
            { AL["Raven"] };
            { AL["Oro Eyegouge"] };
            { AL["Sandfury Executioner"] , cords = {25,18}, pinType = boss};
            { AL["Hydromancer Velratha"] , cords = {32,41}, pinType = boss};
            { AL["Gahz'rilla"].." ("..AL["Summon"]..")" };
            { AL["Elder Wildmane"].." ("..AL["Lunar Festival"]..")" };
            { AL["Chief Ukorz Sandscalp"] , cords = {42,34}, pinType = boss};
            { AL["Ruuzlu"] };
            { AL["Zerillis"].." ("..AL["Rare"]..", "..AL["Wanders"]..")", cords = {53,42}, pinType = boss};
            { AL["Sandarr Dunereaver"].." ("..AL["Rare"]..")", cords = {46,57}, pinType = boss};
        };
    };