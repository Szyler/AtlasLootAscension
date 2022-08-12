local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

ItemIDsDatabase = {};

AtlasLoot_Difficulty = {
    -- table of difficulties and there itemID references

    ["Default"] = {};

    ["ClassicDungeon"] = {
            {"Normal", 2,},
            {"Bloodforged", 1,},
    };

    ["PVP"] = {
        {"Normal", 2},
        {"Bloodforged", 1},
    };

    ["ClassicDungeonExt"] = {
        {"Bloodforged", 1},
        {"Normal", 2},
        {"Heroic", 3},
        {"Mythic", 4},
        {"Mythic 1", 5 },  {"Mythic 2", 6 },  {"Mythic 3", 7 },  {"Mythic 4", 8 },  {"Mythic 5", 9 },
        {"Mythic 6", 10 }, {"Mythic 7", 11 }, {"Mythic 8", 12 }, {"Mythic 9", 13 }, {"Mythic 10", 14 },
        {"Mythic 11", 15 }, {"Mythic 12", 16 }, {"Mythic 13", 17 }, {"Mythic 14", 18 }, {"Mythic 15", 19 },
        {"Mythic 16", 20 }, {"Mythic 17", 21 }, {"Mythic 18", 22 }, {"Mythic 19", 23 }, {"Mythic 20", 24 },
        {"Mythic 21", 25 }, {"Mythic 22", 26 }, {"Mythic 23", 27 }, {"Mythic 24", 28 }, {"Mythic 25", 29 },
        {"Mythic 26", 30 }, {"Mythic 27", 31 }, {"Mythic 28", 32 }, {"Mythic 29", 33 }, {"Mythic 30", 34 },
        {"Mythic 31", 35 }, {"Mythic 32", 36 }, {"Mythic 33", 37 }, {"Mythic 34", 38 }, {"Mythic 35", 39 },
        {"Mythic 36", 40 }, {"Mythic 37", 41 }, {"Mythic 38", 42 }, {"Mythic 39", 43 }, {"Mythic 40", 44 },
    };

    ["ClassicRaid"] = {
            {"Normal Flex", 2},
            {"Heroic Flex", 3},
            {"Ascended", 4},
            {"Bloodforged", 1},
    };

    ["BCDungeon"] = {
        {"Bloodforged", 1},
        {"Normal/Heroic", 2},
        {"Mythic", 4},
        {"Mythic 1", 5 },  {"Mythic 2", 6 },  {"Mythic 3", 7 },  {"Mythic 4", 8 },  {"Mythic 5", 9 },
        {"Mythic 6", 10 }, {"Mythic 7", 11 }, {"Mythic 8", 12 }, {"Mythic 9", 13 }, {"Mythic 10", 14 },
        {"Mythic 11", 15 }, {"Mythic 12", 16 }, {"Mythic 13", 17 }, {"Mythic 14", 18 }, {"Mythic 15", 19 },
        {"Mythic 16", 20 }, {"Mythic 17", 21 }, {"Mythic 18", 22 }, {"Mythic 19", 23 }, {"Mythic 20", 24 },
        {"Mythic 21", 25 }, {"Mythic 22", 26 }, {"Mythic 23", 27 }, {"Mythic 24", 28 }, {"Mythic 25", 29 },
        {"Mythic 26", 30 }, {"Mythic 27", 31 }, {"Mythic 28", 32 }, {"Mythic 29", 33 }, {"Mythic 30", 34 },
        {"Mythic 31", 35 }, {"Mythic 32", 36 }, {"Mythic 33", 37 }, {"Mythic 34", 38 }, {"Mythic 35", 39 },
        {"Mythic 36", 40 }, {"Mythic 37", 41 }, {"Mythic 38", 42 }, {"Mythic 39", 43 }, {"Mythic 40", 44 },
    };

    ["BCRaid"] = {
        {"Normal Flex", 2},
        {"Heroic Flex", 3},
        {"Ascended", 4},
        {"Bloodforged", 1},
     };

    ["WrathDungeon"] = {
        {"Normal/Heroic", 2},
        {"Mythic", 4},
        {"Bloodforged", 1},
        {"Mythic 1", 5 },  {"Mythic 2", 6 },  {"Mythic 3", 7 },  {"Mythic 4", 8 },  {"Mythic 5", 9 },
        {"Mythic 6", 10 }, {"Mythic 7", 11 }, {"Mythic 8", 12 }, {"Mythic 9", 13 }, {"Mythic 10", 14 },
        {"Mythic 11", 15 }, {"Mythic 12", 16 }, {"Mythic 13", 17 }, {"Mythic 14", 18 }, {"Mythic 15", 19 },
        {"Mythic 16", 20 }, {"Mythic 17", 21 }, {"Mythic 18", 22 }, {"Mythic 19", 23 }, {"Mythic 20", 24 },
     };

    ["WrathRaid"] = {
        {"Normal Flex", 2},
        {"Heroic Flex", 3},
        {"Ascended", 4},
        {"Bloodforged", 1},
     };

    ["Crafting"] = {
        {"Crafting Patterns", "Pattern" },
        {"Item Normal", 2 },
        {"Bloodforged", 1 },
    };

    ["Search"] = {
        {"Bloodforged", 1},
        {"Normal", 2},
        {"Heroic", 3},
        {"Mythic/Ascended", 4},
        {"Mythic 1", 5 },  {"Mythic 2", 6 },  {"Mythic 3", 7 },  {"Mythic 4", 8 },  {"Mythic 5", 9 },
        {"Mythic 6", 10 }, {"Mythic 7", 11 }, {"Mythic 8", 12 }, {"Mythic 9", 13 }, {"Mythic 10", 14 },
        {"Mythic 11", 15 }, {"Mythic 12", 16 }, {"Mythic 13", 17 }, {"Mythic 14", 18 }, {"Mythic 15", 19 },
        {"Mythic 16", 20 }, {"Mythic 17", 21 }, {"Mythic 18", 22 }, {"Mythic 19", 23 }, {"Mythic 20", 24 },
        {"Mythic 21", 25 }, {"Mythic 22", 26 }, {"Mythic 23", 27 }, {"Mythic 24", 28 }, {"Mythic 25", 29 },
        {"Mythic 26", 30 }, {"Mythic 27", 31 }, {"Mythic 28", 32 }, {"Mythic 29", 33 }, {"Mythic 30", 34 },
        {"Mythic 31", 35 }, {"Mythic 32", 36 }, {"Mythic 33", 37 }, {"Mythic 34", 38 }, {"Mythic 35", 39 },
        {"Mythic 36", 40 }, {"Mythic 37", 41 }, {"Mythic 38", 42 }, {"Mythic 39", 43 }, {"Mythic 40", 44 },
    };

    --Enums for comparisons in code
    Bloodforged = 1;
    Normal = 2;
    Heroic = 3;
    Mythic = 4;
    Ascended = 4;

    MythicPlus = {
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
        25, 26, 27, 28, 29, 30, 31, 32, 33, 34,
        35, 36, 37, 38, 39, 40, 41, 42, 43, 44
    }; --Usage AtlasLoot_Difficulty.MythicPlus[1-40];

    DIF_SEARCH = 16;
    DUPLICATE = 17;
    MIN_DIF = 18;
    MAX_DIF = 19;
}

function AtlasLoot_Difficulty:getMaxDifficulty(difficultyKey)
    if(difficultyKey == "ClassicDungeon" or difficultyKey == "PVP") then
        return 2;
    elseif (difficultyKey == "ClassicDungeonExt" or difficultyKey == "BCDungeon" or difficultyKey == "WrathDungeon") then
        return 44;
    elseif (difficultyKey == "ClassicRaid" or difficultyKey == "BCRaid" or difficultyKey == "WrathRaid") then
        return 4;
    else
        return 0;
    end
end


