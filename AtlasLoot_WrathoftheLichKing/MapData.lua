

local BabbleSubZone = AtlasLoot_GetLocaleLibBabble("LibBabble-SubZone-3.0");

local _RED = "|cffcc6666"
local PURP = "|cff9900ff"


    --************************************************
    -- Wrath of the Lich King Instances
    --************************************************

    AtlasLoot_MapData["AhnKahet"] = {
        ZoneName = { "Ahn'kahet: The Old Kingdom", 4494 };
        Location = { "Dragonblight", 65 };
        LevelRange = "71-78";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = "AK, Kahet";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Exit" };
        { "Elder Nadox" };
        { "Prince Taldaram" };
        { "Amanitar".." (".."Heroic"..")" };
        { "Jedoga Shadowseeker" };
        { "Herald Volazj" };
        { "Ahn'kahet Brazier" };
        };
    };

    AtlasLoot_MapData["AzjolNerub"] = {
        ZoneName = { "Azjol-Nerub", 3477 };
        Location = { "Dragonblight", 65 };
        LevelRange = "70-77";
        MinLevel = "67";
        PlayerLimit = "5";
        Acronym = "AN, Nerub";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Connection" };
        { "Exit" };
        { "Krik'thir the Gatewatcher" };
        { "Watcher Gashra" };
        { "Watcher Narjil" };
        { "Watcher Silthik" };
        { "Hadronox" };
        { "Elder Nurgen".." (".."Lunar Festival"..")" };
        { "Anub'arak" };
        };
    };

    AtlasLoot_MapData["CoTOldStratholme"] = {
        ZoneName = { "Caverns of Time"..": ".."The Culling of Stratholme", 4100 };
        Location = { "Tanaris", 440 };
        LevelRange = "78-80";
        MinLevel = "75";
        PlayerLimit = "5";
        Acronym = "CoT-Strat";
        MapName = "DireMaul";
        [1] = {
        { PURP.."Event"..": ".."The Culling of Stratholme" };
        { "Entrance" };
        { "Exit".." (".."Portal"..")" };
        { "X) ".."Scourge Invasion Points" };
        { "Wave 5"..": ".."Meathook" };
        { "Wave 10"..": ".."Salramm the Fleshcrafter" };
        { "Chromie" };
        { "Chromie" };
        { "Chrono-Lord Epoch" };
        { "Infinite Corruptor".." (".."Heroic"..")" };
        { "Guardian of Time" };
        { "Mal'Ganis" };
        { "Chromie" };
        };
    };

    AtlasLoot_MapData["DrakTharonKeep"] = {
        ZoneName = { "Drak'Tharon Keep", 4196 };
        Location = { "Grizzly Hills", 394 };
        LevelRange = "72-78";
        MinLevel = "69";
        PlayerLimit = "5";
        Acronym = "DTK";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Connection" };
        { "Connection" };
        { "Trollgore" };
        { "Kurzel" };
        { "Novos the Summoner" };
        { "Elder Kilias".." (".."Lunar Festival"..")" };
        { "King Dred" };
        { "The Prophet Tharon'ja" };
        { "Drakuru's Brazier" };
        };
    };

    AtlasLoot_MapData["FHHallsOfReflection"] = {
        ZoneName = { BabbleSubZone["The Frozen Halls"]..": ".."Halls of Reflection", 4820 };
        Location = { "Icecrown Citadel", 4812 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "5";
        Acronym = "HoR"..", ".."FH3";
        MapName = "DireMaul";
        [1] = {
        { "Attunement Required" };
        { "Entrance" };
        { "Portal".." (".."Dalaran"..")" };
        { "Lady Jaina Proudmoore".." (".."Alliance"..")" };
        { "Archmage Koreln <Kirin Tor>".." (".."Alliance"..")" };
        { "Lady Sylvanas Windrunner <Banshee Queen>".." (".."Horde"..")" };
        { "Dark Ranger Loralen".." (".."Horde"..")" };
        { "Falric".." (".."Wave 5"..")" };
        { "Marwyn".." (".."Wave 10"..")" };
        { "Wrath of the Lich King".." (".."Event"..")" };
        { "The Captain's Chest" };
        };
    };

    AtlasLoot_MapData["FHPitOfSaron"] = {
        ZoneName = { BabbleSubZone["The Frozen Halls"]..": ".."Pit of Saron", 4813 };
        Location = { "Icecrown Citadel", 4812 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "5";
        Acronym = "PoS"..", ".."FH2";
        MapName = "DireMaul";
        [1] = {
        { "Attunement Required" };
        { "Entrance" };
        { "Portal".." (".."Halls of Reflection"..")" };
        { "Lady Jaina Proudmoore".." (".."Alliance"..")" };
        { "Archmage Koreln <Kirin Tor>".." (".."Alliance"..")" };
        { "Archmage Elandra <Kirin Tor>".." (".."Alliance"..")" };
        { "Lady Sylvanas Windrunner <Banshee Queen>".." (".."Horde"..")" };
        { "Dark Ranger Loralen".." (".."Horde"..")" };
        { "Dark Ranger Kalira".." (".."Horde"..")" };
        { "Forgemaster Garfrost" };
        { "Martin Victus".." (".."Alliance"..")" };
        { "Gorkun Ironskull".." (".."Horde"..")" };
        { "Krick and Ick" };
        { "Scourgelord Tyrannus" };
        { "Rimefang" };
        };
    };

    AtlasLoot_MapData["FHTheForgeOfSouls"] = {
        ZoneName = { BabbleSubZone["The Frozen Halls"]..": ".."The Forge of Souls", 4809 };
        Location = { "Icecrown Citadel", 4812 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "5";
        Acronym = "FoS"..", ".."FH1";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Portal".." (".."Pit of Saron"..")" };
        { "Lady Jaina Proudmoore".." (".."Alliance"..")" };
        { "Archmage Koreln <Kirin Tor>".." (".."Alliance"..")" };
        { "Archmage Elandra <Kirin Tor>".." (".."Alliance"..")" };
        { "Lady Sylvanas Windrunner <Banshee Queen>".." (".."Horde"..")" };
        { "Dark Ranger Loralen".." (".."Horde"..")" };
        { "Dark Ranger Kalira".." (".."Horde"..")" };
        { "Bronjahm <Godfather of Souls>" };
        { "Devourer of Souls" };
        };
    };

    AtlasLoot_MapData["Gundrak"] = {
        ZoneName = { "Gundrak", 4375 };
        Location = { "Zul'Drak", 66 };
        LevelRange = "76-80";
        MinLevel = "71";
        PlayerLimit = "5";
        Acronym = "Gun";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Exit" };
        { "Slad'ran <High Prophet of Sseratus>" };
        { "Drakkari Colossus" };
        { "Elder Ohanzee".." (".."Lunar Festival"..")" };
        { "Moorabi <High Prophet of Mam'toth>" };
        { "Eck the Ferocious".." (".."Heroic"..", ".."Summon"..")" };
        { "Gal'darah <High Prophet of Akali>" };
        };
    };

    AtlasLoot_MapData["IcecrownCitadelA"] = {
        ZoneName = { "Icecrown Citadel".." [A] (".."Lower"..")", 4812 };
        Location = { "Icecrown", 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "IC";
        MapName = "DireMaul";
        [1] = {
        { "Reputation"..": ".."The Ashen Verdict" };
        { "Entrance" };
        { "Connection" };
        { "To next map" };
        { "Lord Marrowgar" };
        { "Lady Deathwhisper" };
        { "Gunship Battle".." (".."Alliance"..")" };
        { "Gunship Battle".." (".."Horde"..")" };
        { "Deathbringer Saurfang" };
        { BabbleSubZone["Light's Hammer"].." (".."Teleporter"..")" };
        { BabbleSubZone["Oratory of the Damned"].." (".."Teleporter"..")" };
        { BabbleSubZone["Rampart of Skulls"].." (".."Teleporter"..", ".."Lower"..")" };
        { BabbleSubZone["Deathbringer's Rise"].." (".."Teleporter"..", ".."Upper"..")" };
        };
    };

    AtlasLoot_MapData["IcecrownCitadelB"] = {
        ZoneName = { "Icecrown Citadel".." [B] (".."Upper"..")", 4812 };
        Location = { "Icecrown", 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "IC";
        MapName = "DireMaul";
        [1] = {
        { "Reputation"..": ".."The Ashen Verdict" };
        { "From previous map" };
        { "D-H) ".."Connection" };
        { "I) ".."To next map" };
        { "Festergut" };
        { "Rotface" };
        { "Professor Putricide" };
        { "Blood Prince Council" };
        { "Prince Keleseth" };
        { "Prince Taldaram" };
        { "Prince Valanar" };
        { "Blood-Queen Lana'thel" };
        { "Valithria Dreamwalker" };
        { "Sindragosa <Queen of the Frostbrood>" };
        { "4') ".."Upper Spire".." (".."Teleporter"..")" };
        { "5') ".."Sindragosa's Lair".." (".."Teleporter"..")" };
        };
    };

    AtlasLoot_MapData["IcecrownCitadelC"] = {
        ZoneName = { "Icecrown Citadel".." [C] ("..BabbleSubZone["The Frozen Throne"]..")", 4812 };
        Location = { "Icecrown", 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "IC";
        MapName = "DireMaul";
        [1] = {
        { "Reputation"..": ".."The Ashen Verdict" };
        { "I) ".."From previous map" };
        { "The Lich King" };
        };
    };

    AtlasLoot_MapData["Naxxramas"] = {
        ZoneName = { "Naxxramas", 3456 };
        Location = { "Dragonblight", 65 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "Nax";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Mr. Bigglesworth".." (".."Wanders"..")" };
        { BabbleSubZone["The Construct Quarter"] };
        { "Patchwerk" };
        { "Grobbulus" };
        { "Gluth" };
        { "Thaddius" };
        { BabbleSubZone["The Arachnid Quarter"] };
        { "Anub'Rekhan" };
        { "Grand Widow Faerlina" };
        { "Maexxna" };
        { _RED..BabbleSubZone["The Military Quarter"] };
        { _RED.."Instructor Razuvious" };
        { _RED.."Gothik the Harvester" };
        { _RED.."The Four Horsemen" };
        { _RED.."Thane Korth'azz" };
        { _RED.."Lady Blaumeux" };
        { _RED.."Baron Rivendare" };
        { _RED.."Sir Zeliek" };
        { _RED.."Four Horsemen Chest" };
        { PURP..BabbleSubZone["The Plague Quarter"] };
        { PURP.."Noth the Plaguebringer" };
        { PURP.."Heigan the Unclean" };
        { PURP.."Loatheb" };
        { "Frostwyrm Lair" };
        { "Sapphiron" };
        { "Kel'Thuzad" };
        };
    };

    AtlasLoot_MapData["ObsidianSanctum"] = {
        ZoneName = { BabbleSubZone["Chamber of the Aspects"]..": ".."The Obsidian Sanctum", 4493 };
        Location = { "Dragonblight", 65 };
        LevelRange = "80";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "OS";
        MapName = "DireMaul";
        [1] = {
        { "AKA"..": ".."Black Dragonflight Chamber" };
        { "Entrance" };
        { "Tenebron" };
        { "Shadron" };
        { "Vesperon" };
        { "Sartharion <The Onyx Guardian>" };
        };
    };

    AtlasLoot_MapData["OnyxiasLair"] = {
        ZoneName = { "Onyxia's Lair" };
        Acronym = "Ony";
        MapName = "DireMaul";
        Location = { "Dustwallow Marsh" };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        [1] = {
        { "Entrance" };
        { "Onyxian Warders" };
        { "Whelp Eggs" };
        { "Onyxia" };
        };
    };

    AtlasLoot_MapData["RubySanctum"] = {
        ZoneName = { BabbleSubZone["Chamber of the Aspects"]..": ".."The Ruby Sanctum", 4987 };
        Location = { "Dragonblight", 65 };
        LevelRange = "80";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "RS";
        MapName = "DireMaul";
        [1] = {
        { "AKA"..": ".."self.Colors.RED Dragonflight Chamber" };
        { "Entrance" };
        { "Baltharus the Warborn" };
        { "Saviana Ragefire" };
        { "General Zarithrian" };
        { "Halion <The Twilight Destroyer>" };
        };
    };

    AtlasLoot_MapData["TheEyeOfEternity"] = {
        ZoneName = { "The Nexus"..": ".."The Eye of Eternity", 4500 };
        Location = { "Borean Tundra", 3537 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "TEoE";
        MapName = "DireMaul";
        [1] = {
        { "Key"..": ".."Key to the Focusing Iris" };
        { "Malygos" };
        };
    };

    AtlasLoot_MapData["TheNexus"] = {
        ZoneName = { "The Nexus"..": ".."The Nexus", 4120 };
        Location = { "Borean Tundra", 3537 };
        LevelRange = "70-75";
        MinLevel = "66";
        PlayerLimit = "5";
        Acronym = "Nex, Nexus";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Berinand's Research" };
        { "Commander Stoutbeard".." (".."Horde"..", ".."Heroic"..")" };
        { "Commander Kolurg".." (".."Alliance"..", ".."Heroic"..")" };
        { "Grand Magus Telestra" };
        { "Anomalus" };
        { "Elder Igasho".." (".."Lunar Festival"..")" };
        { "Ormorok the Tree-Shaper" };
        { "Keristrasza" };
        };
    };

    AtlasLoot_MapData["TheOculus"] = {
        ZoneName = { "The Nexus"..": ".."The Oculus", 4228 };
        Location = { "The Nexus", 4120 };
        LevelRange = "78-80";
        MinLevel = "75";
        PlayerLimit = "5";
        Acronym = "Ocu";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Portal" };
        { "Drakos the Interrogator" };
        { "Varos Cloudstrider <Azure-Lord of the self.Colors.BLUE Dragonflight>" };
        { "Mage-Lord Urom" };
        { "Ley-Guardian Eregos" };
        { "Cache of Eregos" };
        { "Centrifuge Construct" };
        };
    };

    AtlasLoot_MapData["TrialOfTheChampion"] = {
        ZoneName = { "Crusaders' Coliseum"..": ".."Trial of the Champion", 4723 };
        Location = { "Icecrown", 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "5";
        Acronym = "Champ";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Grand Champions" };
        { "Champions of the Alliance" };
        { "Marshal Jacob Alerius" };
        { "Ambrose Boltspark" };
        { "Colosos" };
        { "Jaelyne Evensong" };
        { "Lana Stouthammer" };
        { "Champions of the Horde" };
        { "Mokra the Skullcrusher" };
        { "Eressea Dawnsinger" };
        { "Runok Wildmane" };
        { "Zul'tore" };
        { "Deathstalker Visceri" };
        { "Eadric the Pure <Grand Champion of the Argent Crusade>" };
        { "Argent Confessor Paletress" };
        { "The Black Knight" };
        };
    };

    AtlasLoot_MapData["TrialOfTheCrusader"] = {
        ZoneName = { "Crusaders' Coliseum"..": ".."Trial of the Crusader", 4722 };
        Location = { "Icecrown", 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "Crus";
        MapName = "DireMaul";
        [1] = {
        { "Heroic: Trial of the Grand Crusader" };
        { "Entrance" };
        { "Cavern Entrance" };
        { "Northrend Beasts" };
        { "Gormok the Impaler" };
        { "Acidmaw" };
        { "Dreadscale" };
        { "Icehowl" };
        { "Lord Jaraxxus" };
        { "Faction Champions" };
        { "Twin Val'kyr" };
        { "Fjola Lightbane" };
        { "Eydis Darkbane" };
        { "Anub'arak" };
        };
    };

    AtlasLoot_MapData["UlduarA"] = {
        ZoneName = { "Ulduar".." [A] (".."The Siege"..")", 4273 };
        Location = { "The Storm Peaks", 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "Uldu";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { BabbleSubZone["The Antechamber"] };
        { "A') ".."Tower of Life" };
        { "B') ".."Tower of Flame" };
        { "C') ".."Tower of Frost" };
        { "D') ".."Tower of Storms" };
        { "Flame Leviathan" };
        { "Razorscale".." (".."Optional"..")" };
        { "Ignis the Furnace Master".." (".."Optional"..")" };
        { "XT-002 Deconstructor" };
        { BabbleSubZone["Expedition Base Camp"].." (".."Teleporter"..")" };
        { BabbleSubZone["Formation Grounds"].." (".."Teleporter"..")" };
        { BabbleSubZone["The Colossal Forge"].." (".."Teleporter"..")" };
        { "4') "..BabbleSubZone["The Scrapyard"].." (".."Teleporter"..")" };
        };
    };

    AtlasLoot_MapData["UlduarB"] = {
        ZoneName = { "Ulduar".." [B] ("..BabbleSubZone["The Antechamber"]..")", 4273 };
        Location = { "The Storm Peaks", 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "Uldu";
        MapName = "DireMaul";
        [1] = {
        { "Key"..": ".."Celestial Planetarium Key" };
        { "The Siege" };
        { "The Keepers" };
        { "Assembly of Iron".." (".."Optional"..")" };
        { "Steelbreaker" };
        { "Runemaster Molgeim" };
        { "Stormcaller Brundir" };
        { "Prospector Doren" };
        { "Archivum Console" };
        { "Kologarn" };
        { "Algalon the Observer".." (".."Optional"..")" };
        { "5') "..BabbleSubZone["The Antechamber"].." (".."Teleporter"..")" };
        };
    };

    AtlasLoot_MapData["UlduarC"] = {
        ZoneName = { "Ulduar".." [C] (".."The Keepers"..")", 4273 };
        Location = { "The Storm Peaks", 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "Uldu";
        MapName = "DireMaul";
        [1] = {
        { BabbleSubZone["The Antechamber"] };
        { "D) "..BabbleSubZone["The Spark of Imagination"] };
        { "E) "..BabbleSubZone["The Descent into Madness"] };
        { "Auriaya".." (".."Optional"..")" };
        { "Hodir" };
        { "Thorim" };
        { "Freya" };
        { "6') "..BabbleSubZone["The Shattered Walkway"].." (".."Teleporter"..")" };
        { "7') "..BabbleSubZone["The Conservatory of Life"].." (".."Teleporter"..")" };
        };
    };
    
    AtlasLoot_MapData["UlduarD"] = {
        ZoneName = { "Ulduar".." [D] ("..BabbleSubZone["The Spark of Imagination"]..")", 4273 };
        Location = { "The Storm Peaks", 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "Uldu";
        MapName = "DireMaul";
        [1] = {
        { "D) ".."The Keepers" };
        { "Mimiron" };
        { "8') "..BabbleSubZone["The Spark of Imagination"].." (".."Teleporter"..")" };
        };
    };

    AtlasLoot_MapData["UlduarE"] = {
        ZoneName = { "Ulduar".." [E] ("..BabbleSubZone["The Descent into Madness"]..")", 4273 };
        Location = { "The Storm Peaks", 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "Uldu";
        MapName = "DireMaul";
        [1] = {
        { "E) ".."The Keepers" };
        { "General Vezax" };
        { "Yogg-Saron" };
        { "9') "..BabbleSubZone["The Prison of Yogg-Saron"].." (".."Teleporter"..")" };
        };
    };

    AtlasLoot_MapData["UlduarHallsofLightning"] = {
        ZoneName = { "Ulduar"..": ".."Halls of Lightning", 4272 };
        Location = { "The Storm Peaks", 67 };
        LevelRange = "78-80";
        MinLevel = "75";
        PlayerLimit = "5";
        Acronym = "HoL";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "General Bjarngrim".." (".."Wanders"..")" };
        { "Volkhan" };
        { "Ionar" };
        { "Loken" };
        };
    };

    AtlasLoot_MapData["UlduarHallsofStone"] = {
        ZoneName = { "Ulduar"..": ".."Halls of Stone", 4264 };
        Location = { "The Storm Peaks", 67 };
        LevelRange = "75-80";
        MinLevel = "72";
        PlayerLimit = "5";
        Acronym = "HoS";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Elder Yurauk".." (".."Lunar Festival"..")" };
        { "Krystallus" };
        { "Maiden of Grief" };
        { "Brann Bronzebeard" };
        { "Tribunal Chest" };
        { "Sjonnir the Ironshaper" };
        };
    };

    AtlasLoot_MapData["UtgardeKeep"] = {
        ZoneName = { "Utgarde Keep"..": ".."Utgarde Keep", 206 };
        Location = { "Howling Fjord", 495 };
        LevelRange = "68-75";
        MinLevel = "65";
        PlayerLimit = "5";
        Acronym = "UK, Keep";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Dark Ranger Marrah" };
        { "B-C) ".."Connection" };
        { "Prince Keleseth <The San'layn>" };
        { "Elder Jarten".." (".."Lunar Festival"..", ".."Lower"..")" };
        { "Dalronn the Controller" };
        { "Skarvald the Constructor" };
        { "Ingvar the Plunderer" };
        };
    };

    AtlasLoot_MapData["UtgardePinnacle"] = {
        ZoneName = { "Utgarde Keep"..": ".."Utgarde Pinnacle", 1196 };
        Location = { "Utgarde Keep", 206 };
        LevelRange = "78-80";
        MinLevel = "75";
        PlayerLimit = "5";
        Acronym = "UP, Pinn";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Brigg Smallshanks" };
        { "Svala Sorrowgrave" };
        { "Gortok Palehoof" };
        { "Skadi the Ruthless" };
        { "Elder Chogan'gada".." (".."Lunar Festival"..")" };
        { "King Ymiron" };
        };
    };

    AtlasLoot_MapData["VaultOfArchavon"] = {
        ZoneName = { "Vault of Archavon", 4603 };
        Location = { "Wintergrasp", 4197 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = "VoA";
        MapName = "DireMaul";
        [1] = {
        { "Entrance" };
        { "Archavon the Stone Watcher" };
        { "Emalon the Storm Watcher" };
        { "Koralon the Flame Watcher" };
        { "Toravon the Ice Watcher" };
        };
    };

    AtlasLoot_MapData["VioletHold"] = {
        ZoneName = { "The Violet Hold", 4415 };
        Location = { "Dalaran", 4395 };
        LevelRange = "73-79";
        MinLevel = "70";
        PlayerLimit = "5";
        Acronym = "VH";
        MapName = "DireMaul";
        [1] = {
        { "Key"..": ".."The Violet Hold Key" };
        { "Entrance" };
        { "Erekem".." (".."Random"..")" };
        { "Zuramat the Obliterator".." (".."Upper"..", ".."Random"..")" };
        { "Xevozz".." (".."Lower"..", ".."Random"..")" };
        { "Ichoron".." (".."Random"..")" };
        { "Moragg".." (".."Random"..")" };
        { "Lavanthor".." (".."Random"..")" };
        { "Cyanigosa".." (".."Wave 18"..")" };
        };
    };