local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

AtlasLoot_Difficulty = {
    -- table of difficulties and there itemID references
    ["ClassicDungeon"] = {
        [1] = {
            {"Normal", "", [4] = "Submenu"},
        },
        [2] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
    };

    ["ClassicDungeonExt"] = {
        [1] = {
            {"Normal", "", [4] = "Submenu"},
        },
        [2] = {
            {"Heroic", 3, "=q4=", [4] = "Submenu"},
        },
        [3] = {
            {"Mythic", 4, "=q4=", [4] = "Submenu"},
        },
        [4] = {
            ["Mythic+ 1-10"] = {
                {"Mythic 1", 5, "=q4=", [4] = "Submenu" },  {"Mythic 2", 6, "=q4=", [4] = "Submenu" },  {"Mythic 3", 7, "=q4=", [4] = "Submenu" },  {"Mythic 4", 8, "=q4=", [4] = "Submenu" },  {"Mythic 5", 9, "=q4=", [4] = "Submenu" },
                {"Mythic 6", 10, "=q4=", [4] = "Submenu" }, {"Mythic 7", 11, "=q4=", [4] = "Submenu" }, {"Mythic 8", 12, "=q4=", [4] = "Submenu" }, {"Mythic 9", 13, "=q4=", [4] = "Submenu" }, {"Mythic 10", 14, "=q4=", [4] = "Submenu" },
            },
        },
        [5] = {
            ["Mythic+ 11-20"] = {
                {"Mythic 11", 15, "=q4=", [4] = "Submenu" }, {"Mythic 12", 16, "=q4=", [4] = "Submenu" }, {"Mythic 13", 17, "=q4=", [4] = "Submenu" }, {"Mythic 14", 18, "=q4=", [4] = "Submenu" }, {"Mythic 15", 19, "=q4=", [4] = "Submenu" },
                {"Mythic 16", 20, "=q4=", [4] = "Submenu" }, {"Mythic 17", 21, "=q4=", [4] = "Submenu" }, {"Mythic 18", 22, "=q4=", [4] = "Submenu" }, {"Mythic 19", 23, "=q4=", [4] = "Submenu" }, {"Mythic 20", 24, "=q4=", [4] = "Submenu" },
            },
        },
        [6] = {
            ["Mythic+ 21-30"] = {
                {"Mythic 21", 25, "=q4=", [4] = "Submenu" }, {"Mythic 22", 26, "=q4=", [4] = "Submenu" }, {"Mythic 23", 27, "=q4=", [4] = "Submenu" }, {"Mythic 24", 28, "=q4=", [4] = "Submenu" }, {"Mythic 25", 29, "=q4=", [4] = "Submenu" },
                {"Mythic 26", 30, "=q4=", [4] = "Submenu" }, {"Mythic 27", 31, "=q4=", [4] = "Submenu" }, {"Mythic 28", 32, "=q4=", [4] = "Submenu" }, {"Mythic 29", 33, "=q4=", [4] = "Submenu" }, {"Mythic 30", 34, "=q4=", [4] = "Submenu" },
            },
        },
        [7] = {
            ["Mythic+ 31-40"] = {
                {"Mythic 31", 35, "=q4=", [4] = "Submenu" }, {"Mythic 32", 36, "=q4=", [4] = "Submenu" }, {"Mythic 33", 37, "=q4=", [4] = "Submenu" }, {"Mythic 34", 38, "=q4=", [4] = "Submenu" }, {"Mythic 35", 39, "=q4=", [4] = "Submenu" },
                {"Mythic 36", 40, "=q4=", [4] = "Submenu" }, {"Mythic 27", 41, "=q4=", [4] = "Submenu" }, {"Mythic 38", 42, "=q4=", [4] = "Submenu" }, {"Mythic 39", 43, "=q4=", [4] = "Submenu" }, {"Mythic 30", 44, "=q4=", [4] = "Submenu" },
            },
        },
        [8] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
    };

    ["ClassicRaid"] = {
        [1] = {
            {"Normal Flex", "", [4] = "Submenu"},
            },
        [2] = {
            {"Heroic Flex", 3, [4] = "Submenu"},
        },
        [3] = {
            {"Ascended", 4, [4] = "Submenu"},
        },
        [4] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
    };

    ["BCDungeon"] = {
        [1] = {
            {"Normal/Heroic", "", [4] = "Submenu"},
        },
        [2] = {
            {"Mythic", 4, "=q4=", [4] = "Submenu"},
        },
        [3] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
        --[[
        [3] = {
            ["Mythic+ 1-10"] = {
                {"Mythic 1", 5, "=q4=", [4] = "Submenu" },  {"Mythic 2", 6, "=q4=", [4] = "Submenu" },  {"Mythic 3", 7, "=q4=", [4] = "Submenu" },  {"Mythic 4", 8, "=q4=", [4] = "Submenu" },  {"Mythic 5", 9, "=q4=", [4] = "Submenu" },
                {"Mythic 6", 10, "=q4=", [4] = "Submenu" }, {"Mythic 7", 11, "=q4=", [4] = "Submenu" }, {"Mythic 8", 12, "=q4=", [4] = "Submenu" }, {"Mythic 9", 13, "=q4=", [4] = "Submenu" }, {"Mythic 10", 14, "=q4=", [4] = "Submenu" },
            },
        },
        [4] = {
            ["Mythic+ 11-20"] = {
                {"Mythic 11", 15, "=q4=", [4] = "Submenu" }, {"Mythic 12", 16, "=q4=", [4] = "Submenu" }, {"Mythic 13", 17, "=q4=", [4] = "Submenu" }, {"Mythic 14", 18, "=q4=", [4] = "Submenu" }, {"Mythic 15", 19, "=q4=", [4] = "Submenu" },
                {"Mythic 16", 20, "=q4=", [4] = "Submenu" }, {"Mythic 17", 21, "=q4=", [4] = "Submenu" }, {"Mythic 18", 22, "=q4=", [4] = "Submenu" }, {"Mythic 19", 23, "=q4=", [4] = "Submenu" }, {"Mythic 20", 24, "=q4=", [4] = "Submenu" },
            },
        },
        ]]
     };

    ["BCRaid"] = {
        [1] = {
            {"Normal Flex", "", [4] = "Submenu"},
            },
        [2] = {
            {"Heroic Flex", 3, [4] = "Submenu"},
        },
        [3] = {
            {"Ascended", 4, [4] = "Submenu"},
        },
        [4] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
     };

    ["WrathDungeon"] = {
        [1] = {
            {"Normal/Heroic", "", [4] = "Submenu"},
        },
        [2] = {
            {"Mythic", 4, "=q4=", [4] = "Submenu"},
        },
        [3] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
        --[[
        [3] = {
            ["Mythic+ 1-10"] = {
                {"Mythic 1", 5, "=q4=", [4] = "Submenu" },  {"Mythic 2", 6, "=q4=", [4] = "Submenu" },  {"Mythic 3", 7, "=q4=", [4] = "Submenu" },  {"Mythic 4", 8, "=q4=", [4] = "Submenu" },  {"Mythic 5", 9, "=q4=", [4] = "Submenu" },
                {"Mythic 6", 10, "=q4=", [4] = "Submenu" }, {"Mythic 7", 11, "=q4=", [4] = "Submenu" }, {"Mythic 8", 12, "=q4=", [4] = "Submenu" }, {"Mythic 9", 13, "=q4=", [4] = "Submenu" }, {"Mythic 10", 14, "=q4=", [4] = "Submenu" },
            },
        },
        [4] = {
            ["Mythic+ 11-20"] = {
                {"Mythic 11", 15, "=q4=", [4] = "Submenu" }, {"Mythic 12", 16, "=q4=", [4] = "Submenu" }, {"Mythic 13", 17, "=q4=", [4] = "Submenu" }, {"Mythic 14", 18, "=q4=", [4] = "Submenu" }, {"Mythic 15", 19, "=q4=", [4] = "Submenu" },
                {"Mythic 16", 20, "=q4=", [4] = "Submenu" }, {"Mythic 17", 21, "=q4=", [4] = "Submenu" }, {"Mythic 18", 22, "=q4=", [4] = "Submenu" }, {"Mythic 19", 23, "=q4=", [4] = "Submenu" }, {"Mythic 20", 24, "=q4=", [4] = "Submenu" },
            },
        },
        ]]
     };

    ["WrathRaid"] = {
        [1] = {
            {"Normal Flex", "", [4] = "Submenu"},
            },
        [2] = {
            {"Heroic Flex", 3, [4] = "Submenu"},
        },
        [3] = {
            {"Ascended", 4, [4] = "Submenu"},
        },
        [4] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
     };

    ["Crafting"] = {
        [1] = {
            {"Crafting Patterns", "", [4] = "Submenu" },
        },
        [2] = {
            {"Item Normal", "=s=Normal", [4] = "Submenu" },
        },
        [3] = {
            {"Bloodforged", 1, [4] = "Submenu" },
        },
    };

    ["CraftingExt"] = {
        [1] = {
            {"Crafting Pattern Uncommon", "", [4] = "Submenu" },
        },
        [2] = {
            {"Crafting Patterns Rare", "Rare", [4] = "Submenu" },
        },
        [3] = {
            {"Crafting Patterns Epic", "Epic", [4] = "Submenu" },
        },
        [4] = {
            {"Item Uncommon", "=s=", [4] = "Submenu" },
        },
        [5] = {
            {"Item Rare", "=s=Rare", [4] = "Submenu" },
        },
        [6] = {
            {"Item Epic", "=s=Epic", [4] = "Submenu" }
        },
    };


    ["Search"] = {"Bloodforged", "Normal", "Heroic", "Mythic", "Mythic 1", "Mythic 2","Mythic 3","Mythic 4","Mythic 5", "Mythic 6","Mythic 7",
    "Mythic 8","Mythic 9", "Mythic 10", "Mythic 11", "Mythic 12","Mythic 13","Mythic 14","Mythic 15", "Mythic 16","Mythic 17","Mythic 18",
    "Mythic 19", "Mythic 20", [99] = "Ascended"};

    --Enums for comparisons in code
    Bloodforged = 1;
    Normal = 2;
    Heroic = 3;
    Mythic = 4; --Use for Ascended as well

    MythicPlus = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34}; --Usage AtlasLoot_Difficulty.MythicPlus[1-30];

    DIF_SEARCH = 16;
    DUPLICATE = 17;
    MIN_DIF = 18;
    MAX_DIF = 19;
}
