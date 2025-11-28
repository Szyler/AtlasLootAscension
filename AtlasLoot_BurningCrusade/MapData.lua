

local BabbleSubZone = AtlasLoot_GetLocaleLibBabble("LibBabble-SubZone-3.0");

local quest = "questturnin"
local boss = "dungeonskull"


    --************************************************
    -- Burning Crusade Instances
    --************************************************

    -- Raids
    AtlasLoot_MapData.Karazhan = {
        ZoneName = { "Karazhan".." [A] (".."Start"..")", 3457 };
        Location = { "Deadwind Pass", 41 };
        LevelRange = "70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = "Kara";
        MapName = "Karazhan";
        Reputation = "The Violet Eye";
        [1] = {
            { "Servant's Quarters", SubZone = true };
            { "Hastings <The Caretaker>", cords = {62,67} };
            { "Random Servant's Quarter Boss", cords = {67,30}, pinType = boss};
            { "Hyakiss the Lurker".." (".."Rare"..", ".."Random"..")" };
            { "Rokad the Ravager".." (".."Rare"..", ".."Random"..")" };
            { "Shadikith the Glider".." (".."Rare"..", ".."Random"..")" };
            { "Berthold <The Doorman>", cords = {53,64} };
            { "Calliard <The Nightman>", cords = {48,89} };
            { "Attumen the Huntsman", cords = {46, 83}, pinType = boss };
            { "Midnight" };
            { "Koren <The Blacksmith>", cords = {46, 74} };
        };
        [2] = {
            { "Upper Livery Stables", SubZone = true };
            { "Bennett <The Sergeant at Arms>", cords = {40,63} };
        };
        [3] = {
            { "The Banquet Hall", SubZone = true };
            { "Moroes <Tower Steward>", cords = {26,64}, pinType = boss };
            { "Baroness Dorothea Millstipe".." (".."Random"..", ".."Shadow Priest"..")" };
            { "Lady Catriona Von'Indi".." (".."Random"..", ".."Holy Priest"..")" };
            { "Lady Keira Berrybuck".." (".."Random"..", ".."Holy Paladin"..")" };
            { "Baron Rafe Dreuger".." (".."Random"..", ".."Retribution Paladin"..")" };
            { "Lord Robin Daris".." (".."Random"..", ".."Arms Warrior"..")" };
            { "Lord Crispin Ference".." (".."Random"..", ".."Protection Warrior"..")" };
        };
        [4] = {
            { "The Guest Chambers", SubZone = true };
            { "Ebonlocke <The Noble>", cords = {56,63} };
            { "Keanna's Log", cords = {70,21} };
            { "Maiden of Virtue", cords = {84,48}, pinType = boss };
            { "Sebastian <The Organist>", cords = {26,49} };
            { "Barnes <The Stage Manager>", cords = {20,27} };
            { "The Opera Event", cords = {18,32}, pinType = boss };
            { "self.Colors.RED Riding Hood".." (".."Random"..")" };
            { "The Big Bad Wolf" };
            { "Wizard of Oz".." (".."Random"..")" };
            { "Dorothee" };
            { "Tito" };
            { "Strawman" };
            { "Tinhead" };
            { "Roar" };
            { "The Crone" };
            { "Romulo and Julianne".." (".."Random"..")" };
            { "Romulo" };
            { "Julianne" };
        };
        [5] = {
            { "Opera Hall Balcony", SubZone = true };
        };
        [6] = {
            { "Master's Terrace", SubZone = true };
            { "Nightbane".." (".."Summon"..")", cords = {48,91}, pinType = boss };
        };
        [7] = {
            { "Lower Broken Stair", SubZone = true };
        };
        [8] = {
            { "Upper Broken Stair", SubZone = true };
        };
        [9] = {
            { "The Menagerie", SubZone = true };
            { "The Curator" , cords = {50,36}, pinType = boss};
            { "Wravien <The Mage>", cords = {39,45} };
            { "Gradav <The Warlock>", cords = {30,48} };
            { "Kamsis <The Conjurer>", cords = {30,60} };
        };
        [10] = {
            { "Guardian's Library", SubZone = true };
            { "Shade of Aran", cords = {73,27}, pinType = boss };
        };
        [11] = {
            { "The Repository", SubZone = true };
            { "Terestian Illhoof", cords = {53,69}, pinType = boss };
            { "Kil'rek".." (".."Imp"..")" };
        };
        [12] = {
            { "Upper Library", SubZone = true };
            { "Ythyar".." (".."Repair"..", ".."Rewards"..")", cords = {46,26} };
        };
        [13] = {
            { "The Celestial Watch", SubZone = true };
            { "Netherspite", cords = {36,41}, pinType = boss };
        };
        [14] = {
            { "Gamesman's Hall", SubZone = true };
            { "Echo of Medivh", cords = {23,79} };
            { "Dust Covered Chest".." (".."Chess Event"..")" , cords = {37,62}, pinType = boss};
        };
        [15] = {
            { "Medivh's Chambers", SubZone = true };
        };
        [16] = {
            { "The Power Station", SubZone = true };
        };
        [17] = {
            { "Netherspace", SubZone = true };
            { "Prince Malchezaar", cords = {60,38.5}, pinType = boss };
        };
    };

    AtlasLoot_MapData["HCMagtheridonsLair"] = {
        ZoneName = { "Magtheridon's Lair", 3836 };
        Location = { "Hellfire Peninsula", 3483 };
        LevelRange = "70";
        MinLevel = "65";
        PlayerLimit = "10-25";
        Acronym = "Mag";
        MapName = "Magtheridonslair";
        [1] = {
        { "Magtheridon's Lair", SubZone = true };
        { "Magtheridon", cords = {69,74}, pinType = boss };
        };
    };

    AtlasLoot_MapData["GruulsLair"] = {
        ZoneName = { "Gruul's Lair", 3923 };
        Location = { "Blade's Edge Mountains", 3522 };
        LevelRange = "70";
        MinLevel = "65";
        PlayerLimit = "10-25";
        Acronym = "GL";
        MapName = "GruulsLair";
        [1] = {
        { "Gruul's Lair", SubZone = true };
        { "High King Maulgar <Lord of the Ogres>", cords = {55,57}, pinType = boss };
        { "Kiggler the Crazed".." (".."Shaman"..")" };
        { "Blindeye the Seer".." (".."Priest"..")" };
        { "Olm the Summoner".." (".."Warlock"..")" };
        { "Krosh Firehand".." (".."Mage"..")" };
        { "Gruul the Dragonkiller", cords = {20,29}, pinType = boss };
        };
    };

    AtlasLoot_MapData["CFRSerpentshrineCavern"] = {
        ZoneName = { "Serpentshrine Cavern", 3607 };
        Location = { "Zangarmarsh", 3521 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = "SC";
        MapName = "CoilfangReservoir";
        Reputation = "Cenarion Expedition";
        [1] = {
        { "Serpentshrine Cavern", SubZone = true };
        { "Hydross the Unstable <Duke of Currents>", cords = {38,85}, pinType = boss };
        { "The Lurker Below", cords = {37,59}, pinType = boss };
        { "Leotheras the Blind", cords = {42,23}, pinType = boss };
        { "Fathom-Lord Karathress", cords = {48,14}, pinType = boss };
        { "Seer Olum" };
        { "Morogrim Tidewalker", cords = {59,27}, pinType = boss };
        { "Lady Vashj <Coilfang Matron>", cords = {73,59}, pinType = boss };
        };
    };

    AtlasLoot_MapData["TempestKeepTheEye"] = {
        ZoneName = { "The Eye", 3845 };
        Location = { "Netherstorm", 3523 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = "Eye";
        MapName = "TempestKeep";
        Reputation = "The Sha'tar";
        [1] = {
        { "The Eye", SubZone = true };
        { "Al'ar <Phoenix God>", cords = {51,60}, pinType = boss };
        { "Void Reaver", cords = {26,49}, pinType = boss };
        { "High Astromancer Solarian", cords = {74,48}, pinType = boss };
        { "Kael'thas Sunstrider <Lord of the Blood Elves>", cords = {50,15}, pinType = boss };
        { "Thaladred the Darkener <Advisor to Kael'thas>".." (".."Warrior"..")" };
        { "Master Engineer Telonicus <Advisor to Kael'thas>".." (".."Hunter"..")" };
        { "Grand Astromancer Capernian <Advisor to Kael'thas>".." (".."Mage"..")" };
        { "Lord Sanguinar <The Blood Hammer>".." (".."Paladin"..")" };
        };
    };

    AtlasLoot_MapData["ZulAman"] = {
        ZoneName = { "Zul'Aman", 3805 };
        Location = { "Ghostlands", 3433 };
        LevelRange = "70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = "ZA";
        MapName = "ZulAman";
        [1] = {
        { "Zul'Aman", SubZone = true };
        { "Harrison Jones", cords = {12,53} };
        { "Nalorakk <Bear Avatar>", cords = {41,74}, pinType = boss };
        { "Tanzar" };
        { "The Map of Zul'Aman" };
        { "Akil'Zon <Eagle Avatar>", cords = {35,23}, pinType = boss };
        { "Harkor" };
        { "Jan'Alai <Dragonhawk Avatar>", cords = {56,71}, pinType = boss };
        { "Kraz" };
        { "Halazzi <Lynx Avatar>", cords = {58,24}, pinType = boss };
        { "Ashli" };
        { "Zungam", cords = {67.4,37.6}, pinType = quest };
        { "Hex Lord Malacrass", cords = {72,54}, pinType = boss };
        { "Thurg".." (".."Random"..")" };
        { "Gazakroth".." (".."Random"..")" };
        { "Lord Raadan".." (".."Random"..")" };
        { "Darkheart".." (".."Random"..")" };
        { "Alyson Antille".." (".."Random"..")" };
        { "Slither".." (".."Random"..")" };
        { "Fenstalker".." (".."Random"..")" };
        { "Koragg".." (".."Random"..")" };
        { "Zul'jin", cords = {91,54}, pinType = boss };
        { "Forest Frogs", cords = {45,56} };
        { "Kyren <Reagents>" };
        { "Gunter <Food Vendor>" };
        { "Adarrah" };
        { "Brennan" };
        { "Darwen" };
        { "Deez" };
        { "Galathryn" };
        { "Mitzi" };
        { "Mannuth" };
        };
    };

    AtlasLoot_MapData["CoTHyjal"] = {
        ZoneName = { "Hyjal Summit", 3606 };
        Location = { "Tanaris", 440 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = "CoT3";
        MapName = "CoTMountHyjal";
        Reputation = "The Scale of the Sands";
        [1] = {
        { "Battle for Mount Hyjal", SubZone = true };
        { "Alliance Base", cords = {10.6,63.7} };
        { "Lady Jaina Proudmoore" };
        { "Rage Winterchill", cords = {9,70}, pinType = boss };
        { "Anetheron" };
        { "Horde Encampment", cords = {48,41.7} };
        { "Thrall <Warchief>" };
        { "Night Elf Village", cords = {74.3,57.7} };
        { "Tyrande Whisperwind\n<High Priestess of Elune>" };
        { "Kaz'rogal", cords = {43,36}, pinType = boss };
        { "Azgalor" };
        { "Archimonde", cords = {77,28}, pinType = boss };
        };
    };

    AtlasLoot_MapData["BlackTemple"] = {
        ZoneName = { "Black Temple".." [A] (".."Start"..")", 3959 };
        Location = { "Shadowmoon Valley", 3520 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = "BT";
        MapName = "BlackTemple";
        Reputation = "Ashtongue Deathsworn";
        [1] = {
            { BabbleSubZone["Karabor Sewers"], SubZone = true };
            { "High Warlord Naj'entus", cords = {42.9,19.2}, pinType = boss };
            { "Spirit of Olum" };
            { "Supremus" };
        };
        [2] = {
            { BabbleSubZone["Sanctuary of Shadows"], SubZone = true };
            { "Spirit of Udalo", cords = {62,50} };
            { "Aluyen <Reagents>" };
            { "Okuno <Ashtongue Deathsworn Quartermaster>" };
            { "Seer Kanai" };
            { "Shade of Akama", cords = {40,89}, pinType = boss };
        };
        [3] = {
            { BabbleSubZone["Halls of Anguish"], SubZone = true };
            { "Gurtogg Bloodboil", cords = {53,47}, pinType = boss };
            { "Reliquary of Souls", cords = {62,84}, pinType = boss };
            { "Essence of Suffering" };
            { "Essence of Desire" };
            { "Essence of Anger" };
        };
        [4] = {
            { BabbleSubZone["Gorefiend's Vigil"], SubZone = true };
            { "Teron Gorefiend", cords = {40,12}, pinType = boss }; 
        };
        [5] = {
            { BabbleSubZone["Den of Mortal Delights"], SubZone = true };
            { "Mother Shahraz", cords = {67,38}, pinType = boss };
        };
        [6] = {
            { BabbleSubZone["Chamber of Command"], SubZone = true };
            { "The Illidari Council", cords = {48,43}, pinType = boss };
            { "Lady Malande".." (".."Priest"..")" };
            { "High Nethermancer Zerevor".." (".."Mage"..")" };
            { "Veras Darkshadow".." (".."Rogue"..")" };
        };
        [7] = {
            { BabbleSubZone["Temple Summit"], SubZone = true };
            { "Illidan Stormrage <The Betrayer>", cords = {53,71}, pinType = boss };
        };
        [8] = {
            { BabbleSubZone["Illidari Training Grounds"], SubZone = true };
            { "Gathios the Shatterer".." (".."Paladin"..")", cords = {67,47}, pinType = boss };
        };

    };

    AtlasLoot_MapData["SunwellPlateau"] = {
        ZoneName = { "Sunwell Plateau", 4075 };
        Location = { "Isle of Quel'Danas", 4080 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = "SuP";
        MapName = "SunwellPlateau";
        [2] = {
            { BabbleSubZone["Shrine of the Eclipse"], SubZone = true };
            { "Kalecgos", cords = {30,51}, pinType = boss };
            { "Sathrovarr the Corruptor" };
            { "Madrigosa", cords = {67,87}, pinType = boss };
            { "Brutallus" };
            { "Felmyst" };
            { "Kil'jaeden <The Deceiver>", cords = {64,33}, pinType = boss };
        };
        [1] = {
            { BabbleSubZone["Sunwell Plateau"], SubZone = true };
            { "Eredar Twins".." (".."Lower"..")", cords = {46,24}, pinType = boss };
            { "Grand Warlock Alythess".." (".."Lower"..")" };
            { "Lady Sacrolash".." (".."Lower"..")" };
            { "M'uru".." (".."Upper"..")" };
            { "Entropius".." (".."Upper"..")" };
            { "Kil'jaeden <The Deceiver>", cords = {46,64}, pinType = boss };
        };
    };

    -- Dungeons

    AtlasLoot_MapData["HCHellfireRamparts"] = {
        ZoneName = { "Hellfire Ramparts", 3562 };
        Location = { "Hellfire Peninsula", 3483 };
        LevelRange = "59-67";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "Ramp";
        MapName = "HellfireRamparts";
        Reputation = { Horde = "Thrallmar", Alliance = "Honor Hold" };
        [1] = {
            { "Hellfire Ramparts", SubZone = true };
            { "Watchkeeper Gargolmar", cords = {73,32}, pinType = boss };
            { "Omor the Unscarred", cords = {40,20}, pinType = boss };
            { "Vazruden" , cords = {36,82}, pinType = boss};
            { "Nazan <Vazruden's Mount>" };
            { "Reinforced Fel Iron Chest", cords = {33,87} };
        };
    };

    AtlasLoot_MapData["HCTheShatteredHalls"] = {
        ZoneName = { "The Shattered Halls", 3714 };
        Location = { "Hellfire Peninsula", 3483 };
        LevelRange = "69-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "SH";
        MapName = "TheShatteredHalls";
        Reputation = { Horde = "Thrallmar", Alliance = "Honor Hold" };
        [1] = {
            { "The Shattered Halls", SubZone = true };
            { "Randy Whizzlesprocket".." (".."Alliance"..", ".."Heroic"..")", cords = {35,71}, pinType = boss };
            { "Drisella".." (".."Horde"..", ".."Heroic"..")" };
            { "Grand Warlock Nethekurse", cords = {33,62}, pinType = boss };
            { "Blood Guard Porung".." (".."Heroic"..")", cords = {30,14}, pinType = boss };
            { "Warbringer O'mrogg", cords = {54,35}, pinType = boss };
            { "Warchief Kargath Bladefist", cords = {68,50}, pinType = boss };
            { "Shattered Hand Executioner".." (".."Heroic"..")" };
            { "Private Jacint".." (".."Alliance"..", ".."Heroic"..")" };
            { "Rifleman Brownbeard".." (".."Alliance"..", ".."Heroic"..")" };
            { "Captain Alina".." (".."Alliance"..", ".."Heroic"..")" };
            { "Scout Orgarr".." (".."Horde"..", ".."Heroic"..")" };
            { "Korag Proudmane".." (".."Horde"..", ".."Heroic"..")" };
            { "Captain Boneshatter".." (".."Horde"..", ".."Heroic"..")" };
        };
    };

    AtlasLoot_MapData["HCBloodFurnace"] = {
        ZoneName = { "The Blood Furnace", 3713 };
        Location = { "Hellfire Peninsula", 3483 };
        LevelRange = "60-68";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "BF";
        MapName = "TheBloodFurnace";
        Reputation = { Horde = "Thrallmar", Alliance = "Honor Hold" };
        [1] = {
            { "The Blood Furnace", SubZone = true };
            { "The Maker", cords = {39,41}, pinType = boss };
            { "Broggok", cords = {42,22}, pinType = boss };
            { "Keli'dan the Breaker", cords = {58,41}, pinType = boss };
        };
    };

    AtlasLoot_MapData["TempestKeepBotanica"] = {
        ZoneName = { "The Botanica", 3847 };
        Location = { "Netherstorm", 3523 };
        LevelRange = "69-70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = "Bota";
        MapName = "TheBotanica";
        Reputation = "The Sha'tar";
        [1] = {
            { "The Botanica", SubZone = true };
            { "Commander Sarannis", cords = {45,23}, pinType = boss };
            { "High Botanist Freywinn", cords = {24,23}, pinType = boss };
            { "Thorngrin the Tender", cords = {8,48}, pinType = boss };
            { "Laj", cords = {34,86}, pinType = boss };
            { "Warp Splinter", cords = {34,36}, pinType = boss };
        };
    };

    AtlasLoot_MapData["TempestKeepArcatraz"] = {
        ZoneName = {"The Arcatraz", 3846 };
        Location = { "Netherstorm", 3523 };
        LevelRange = "69-70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = "Arca";
        MapName = "TheArcatraz";
        Reputation = "The Sha'tar";
        [1] = {
            { BabbleSubZone["Stasis Block: Trion"], SubZone = true };
            { "Zereketh the Unbound", cords = {60,25}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Stasis Block: Maximus"], SubZone = true };
            { "Arcane Container", cords = {59,27} };
            { "Third Fragment Guardian" };
            { "Dalliah the Doomsayer", cords = {37,79}, pinType = boss };
            { "Wrath-Scryer Soccothrates", cords = {21,79}, pinType = boss };
        };
        [3] = {
            { BabbleSubZone["Containment Core"], SubZone = true };
            { "Udalo", cords = {29,28}, pinType = boss };
            { "Harbinger Skyriss", cords = {62,30}, pinType = boss };
            { "Warden Mellichar" };
            { "Millhouse Manastorm" };
        };
    };

    AtlasLoot_MapData["TempestKeepMechanar"] = {
        ZoneName = { "The Mechanar", 3849 };
        Location = { "Netherstorm", 3523 };
        LevelRange = "68-70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = "Mech";
        MapName = "TheMechanar";
        Reputation = "The Sha'tar";
        [1] = {
            { BabbleSubZone["The Mechanar"], SubZone = true };
            { "Gatewatcher Gyro-Kill", cords = {47,58}, pinType = boss };
            { "Gatewatcher Iron-Hand", cords = {61,53}, pinType = boss };
            { "Cache of the Legion" };
            { "Mechano-Lord Capacitus", cords = {52,32}, pinType = boss };
            { "Overcharged Manacell" };
        };
        [2] = {
            { "Calculation Chamber", SubZone = true };
            { "Nethermancer Sepethrea", cords = {48,20}, pinType = boss };
            { "Pathaleon the Calculator", cords = {28,62}, pinType = boss };
        };
    };

    AtlasLoot_MapData["AuchAuchenaiCrypts"] = {
        ZoneName = { "Auchenai Crypts", 3790 };
        Location = { "Terokkar Forest", 3519 };
        LevelRange = "64-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "AC";
        MapName = "AuchenaiCrypts";
        Reputation = "Lower City";
        [1] = {
            { BabbleSubZone["Halls of the Hereafter"], SubZone = true };
        };
        [2] = {
            { BabbleSubZone["Bridge of Souls"], SubZone = true };
            { "Shirrak the Dead Watcher", cords = {47,67}, pinType = boss };
            { "Exarch Maladaar", cords = {74,50}, pinType = boss };
            { "Avatar of the Martyred" };
            { "D'ore" };
        };
    };

    AtlasLoot_MapData["AuchManaTombs"] = {
        ZoneName = { "Mana-Tombs", 3792 };
        Location = { "Terokkar Forest", 3519 };
        LevelRange = "63-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "MT";
        MapName = "ManaTombs";
        Reputation = "The Consortium";
        [1] = {
            { "Mana-Tombs", SubZone = true };
            { "Pandemonius", cords = {49,29}, pinType = boss };
            { "Shadow Lord Xiraxis" };
            { "Ambassador Pax'ivi".." (".."Heroic"..")", cords = {61,15}, pinType = boss };
            { "Tavarok", cords = {61,74}, pinType = boss };
            { "Cryo-Engineer Sha'heen", cords = {43,84}, pinType = boss };
            { "Ethereal Transporter Control Panel" };
            { "Nexus-Prince Shaffar", cords = {33,49}, pinType = boss };
            { "Yor <Void Hound of Shaffar>".." (".."Summon"..")" };
        };
    };

    AtlasLoot_MapData["AuchSethekkHalls"] = {
        ZoneName = {"Sethekk Halls", 3791 };
        Location = { "Terokkar Forest", 3519 };
        LevelRange = "66-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "Seth";
        MapName = "SethekkHalls";
        Reputation = "Lower City";
        [1] = {
            { BabbleSubZone["Veil Sethekk"], SubZone = true };
            { "Darkweaver Syth", cords = {49,68}, pinType = boss };
            { "Lakka" };

        };
        [2] = {
            { BabbleSubZone["Halls of Mourning"], SubZone = true };
            { "The Saga of Terokk", cords = {33,55}, pinType = boss };
            { "Anzu".." (".."Summon"..")" };
            { "Talon King Ikiss", cords = {33,27}, pinType = boss };
        };
    };

    AtlasLoot_MapData["AuchShadowLabyrinth"] = {
        ZoneName = { "Shadow Labyrinth", 3789 };
        Location = { "Terokkar Forest", 3519 };
        LevelRange = "69-70";
        MinLevel = "65";
        PlayerLimit = "5";
        Acronym = "SL";
        MapName = "ShadowLabyrinth";
        Reputation = "Lower City";
        [1] = {
            { "Shadow Labyrinth", SubZone = true };
            { "Spy To'gun", cords = {17,24} };
            { "Ambassador Hellmaw", cords = {23,39}, pinType = boss };
            { "Blackheart the Inciter", cords = {27,71}, pinType = boss };
            { "Grandmaster Vorpil", cords = {54,54}, pinType = boss };
            { "The Codex of Blood" };
            { "Murmur", cords = {81,39}, pinType = boss };
            { "Arcane Container", cords = {83,32} };
            { "First Fragment Guardian" };
        };
    };

    AtlasLoot_MapData["CoTOldHillsbrad"] = {
        ZoneName = { "Old Hillsbrad Foothills", 2367 };
        Location = { "Tanaris", 440 };
        LevelRange = "66-70";
        MinLevel = "66";
        PlayerLimit = "5";
        Acronym = "CoT1";
        MapName = "CoTHillsbradFoothills";
        Reputation = "Keepers of Time";
        [1] = {
            { "Old Hillsbrad Foothills", SubZone = true };
            { "Lieutenant Drake", cords = {76,66}, pinType = boss };
            { "Thrall".." (".."Lower"..")", cords = {74,59} };
            { "Captain Skarloc", cords = {69,70}, pinType = boss };
            { "Thrall".." (".."Second Stop"..")" };
            { "Thrall".." (".."Third Stop"..")", cords = {53,44} };
            { "Epoch Hunter", cords = {51,32}, pinType = boss };
            { "Thrall".." (".."Fourth Stop"..", ".."Upper"..")" };
            { "Taretha".." (".."Upper"..")" };
            { "Jonathan Revah", cords = {41,53} };
            { "Jerry Carter" };
        };
    };

    AtlasLoot_MapData["CoTBlackMorass"] = {
        ZoneName = { "The Black Morass", 2366 };
        Location = { "Tanaris", 440 };
        LevelRange = "68-70";
        MinLevel = "66";
        PlayerLimit = "5";
        Acronym = "CoT2";
        MapName = "CoTTheBlackMorass";
        Reputation = "Keepers of Time";
        [1] = {
            {"The Black Morass", SubZone = true }; 
            { "Sa'at <Keepers of Time>", cords = {51,18} };
            { "Portal".." (".."Spawn Point"..")", cords = {51,52}, pinType = boss };
            { "Portal".." (".."Spawn Point"..")", cords = {60,62}, pinType = boss };
            { "Portal".." (".."Spawn Point"..")", cords = {46,61}, pinType = boss };
            { "Portal".." (".."Spawn Point"..")", cords = {59,70}, pinType = boss };
            { "Wave 6"..": ".."Chrono Lord Deja" };
            { "Wave 12"..": ".."Temporus" };
            { "Wave 18"..": ".."Aeonus" };
            { "The Dark Portal", cords = {48,74} };
            { "Medivh" };
        };
    };

    AtlasLoot_MapData["CFRTheSlavePens"] = {
        ZoneName = { "The Slave Pens", 3717 };
        Location = { "Zangarmarsh", 3521 };
        LevelRange = "61-69";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "SP";
        MapName = "TheSlavePens";
        Reputation = "Cenarion Expedition";
        [1] = {
            { "The Slave Pens", SubZone = true };
            { "Ahune <The Frost Lord>".." (".."Midsummer Festival"..")", cords = {33,51}, pinType = boss };
            { "Mennu the Betrayer", cords = {49,27}, pinType = boss };
            { "Weeder Greenthumb", cords = {49,83}, pinType = boss };
            { "Skar'this the Heretic".." (".."Heroic"..")", cords = {58,85}, pinType = boss };
            { "Rokmar the Crackler", cords = {58,41}, pinType = boss };
            { "Naturalist Bite", cords = {95,67}, pinType = boss };
            { "Quagmirran", cords = {82,77}, pinType = boss };
        };
    };

    AtlasLoot_MapData["CFRTheSteamvault"] = {
        ZoneName = { "The Steamvault", 3715 };
        Location = { "Zangarmarsh", 3521 };
        LevelRange = "69-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "SV";
        MapName = "TheSteamvault";
        Reputation = "Cenarion Expedition";
        [1] = {
            { "The Steamvault", SubZone = true };
            { "Hydromancer Thespia", cords = {54,14}, pinType = boss };
            { "Main Chambers Access Panel" };
            { "Arcane Container", cords = {55,23} };
            { "Second Fragment Guardian" };
            { "Mekgineer Steamrigger", cords = {34,82}, pinType = boss };
            { "Main Chambers Access Panel" };
            { "Warlord Kalithresh", cords = {76,44}, pinType = boss };
        };
    };

    AtlasLoot_MapData["CFRTheUnderbog"] = {
        ZoneName = { "The Underbog", 3716 };
        Location = { "Zangarmarsh", 3521 };
        LevelRange = "62-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = "UB";
        MapName = "TheUnderbog";
        Reputation = "Cenarion Expedition";
        [1] = {
            { "The Steamvault", SubZone = true };
            { "Hungarfen", cords = {70,90}, pinType = boss };
            { "The Underspore" };
            { "Ghaz'an", cords = {79,29}, pinType = boss };
            { "Earthbinder Rayge", cords = {69,27} };
            { "Swamplord Musel'ek", cords = {42,25}, pinType = boss };
            { "Claw <Swamplord Musel'ek's Pet>" };
            { "The Black Stalker", cords = {25,46}, pinType = boss };
        };
    };

    AtlasLoot_MapData["MagistersTerrace"] = {
        ZoneName = { "Magisters' Terrace", 4095 };
        Location = { "Isle of Quel'Danas", 4080 };
        LevelRange = "70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = "MaT";
        MapName = "MagistersTerrace";
        Reputation = "Shattered Sun Offensive";
        [1] = {
            { "Magisters' Terrace", SubZone = true };
            { "Priestess Delrissa".." (".."Lower"..")", cords = {40,56}, pinType = boss };
            { "Apoko".." (".."Lower"..", ".."Random"..", ".."Shaman"..")" };
            { "Eramas Brightblaze".." (".."Lower"..", ".."Random"..", ".."Monk"..")" };
            { "Ellrys Duskhallow".." (".."Lower"..", ".."Random"..", ".."Warlock"..")" };
            { "Fizzle".." (".."Lower"..", ".."Random"..")" };
            { "Garaxxas".." (".."Lower"..", ".."Random"..", ".."Hunter"..")" };
            { "Sliver <Garaxxas' Pet>".." (".."Lower"..", ".."Random"..")" };
            { "Kagani Nightstrike".." (".."Lower"..", ".."Random"..", ".."Rogue"..")" };
            { "Warlord Salaris".." (".."Lower"..", ".."Random"..", ".."Warrior"..")" };
            { "Yazzai".." (".."Lower"..", ".."Random"..", ".."Mage"..")" };
            { "Zelfan".." (".."Lower"..", ".."Random"..", ".."Engineer"..")" };
            { "Kael'thas Sunstrider <Lord of the Blood Elves>", cords = {9,50}, pinType = boss };
        };
        [2] = {
            { "Magisters' Terrace", SubZone = true };
            { "Selin Fireheart", cords = {43,23}, pinType = boss };
            { "Fel Crystals" };
            { "Tyrith", cords = {63,27}, pinType = boss };
            { "Vexallus", cords = {84,27}, pinType = boss };
            { "Scrying Orb", cords = {95,27} };
            { "Kalecgos" };
        };
    };