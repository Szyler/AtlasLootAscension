local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
   -- table of difficulties and there itemID references

AtlasLoot.Difficulties = {
    Default = {},
    ClassicDungeon = {
        {AL["Normal"], 3},
        {AL["Heroic"], 4},
        {AL["Mythic"], 5},
        Max = 5
    },
    PVP = {
        {AL["Normal"], 3},
        {AL["Bloodforged"], 1},
        Max = 3
    },
    Manastorm = {
        {AL["Normal"], 3},
        {AL["Bloodforged"], 1},
        Max = 3
    },
    ManastormTBC = {
        {"Tier 4", 3},
        {"Tier 5", 4},
        {"Tier 6", 5},
        {AL["Bloodforged"], 1},
        Max = 5
    },
    WorldforgedClassic = {
        {AL["Base Item"], 3},
        {AL["Dungeon Upgrade"], 4},
        {AL["ZG Upgrade"], 5},
        {AL["Tier 1 Upgrade"], 6},
        {AL["Tier 2 Upgrade"], 7},
        {AL["AQ Upgrade"], 8},
        {AL["Tier 3 Upgrade"], 9},
        Max = 9
    },
    ClassicDungeonExt = {
        {AL["Bloodforged"], 1},
        {AL["Normal"], 3},
        {AL["Heroic"], 4},
        {AL["Mythic"], 5},
        {AL["Mythic 1"], 6 },  {AL["Mythic 2"], 7 },  {AL["Mythic 3"], 8 },  {AL["Mythic 4"], 9 },  {AL["Mythic 5"], 10 },
        {AL["Mythic 6"], 11 }, {AL["Mythic 7"], 12 }, {AL["Mythic 8"], 13 }, {AL["Mythic 9"], 14 }, {AL["Mythic 10"], 15 },
        {AL["Mythic 11"], 16 }, {AL["Mythic 12"], 17 }, {AL["Mythic 13"], 18 }, {AL["Mythic 14"], 19 }, {AL["Mythic 15"], 20 },
        {AL["Mythic 16"], 21 }, {AL["Mythic 17"], 22 }, {AL["Mythic 18"], 23 }, {AL["Mythic 19"], 24 }, {AL["Mythic 20"], 25 },
        {AL["Mythic 21"], 26 }, {AL["Mythic 22"], 27 }, {AL["Mythic 23"], 28 }, {AL["Mythic 24"], 29 }, {AL["Mythic 25"], 30 },
        {AL["Mythic 26"], 31 }, {AL["Mythic 27"], 32 }, {AL["Mythic 28"], 33 }, {AL["Mythic 29"], 34 }, {AL["Mythic 30"], 35 },
        {AL["Mythic 31"], 36 }, {AL["Mythic 32"], 37 }, {AL["Mythic 33"], 38 }, {AL["Mythic 34"], 39 }, {AL["Mythic 35"], 40 },
        {AL["Mythic 36"], 41 }, {AL["Mythic 37"], 42 }, {AL["Mythic 38"], 43 }, {AL["Mythic 39"], 44 }, {AL["Mythic 40"], 45 },
        Max = 45
    },
    ClassicRaid = {
        {AL["Normal"], 3},
        {AL["Heroic"], 4},
        {AL["Mythic"], 5},
        {AL["Ascended"], 6},
        {AL["Bloodforged"], 1},
        {AL["Heroic Bloodforged"], 2},
        Max = 6
    },
    BCDungeon = {
        {AL["Bloodforged"], 1},
        {AL["Normal"], 3},
        {AL["Heroic"], 4},
        {AL["Mythic"], 5},
        {AL["Mythic 1"], 6 },  {AL["Mythic 2"], 7 },  {AL["Mythic 3"], 8 },  {AL["Mythic 4"], 9 },  {AL["Mythic 5"], 10 },
        {AL["Mythic 6"], 11 }, {AL["Mythic 7"], 12 }, {AL["Mythic 8"], 13 }, {AL["Mythic 9"], 14 }, {AL["Mythic 10"], 15 },
        {AL["Mythic 11"], 16 }, {AL["Mythic 12"], 17 }, {AL["Mythic 13"], 18 }, {AL["Mythic 14"], 19 }, {AL["Mythic 15"], 20 },
        {AL["Mythic 16"], 21 }, {AL["Mythic 17"], 22 }, {AL["Mythic 18"], 23 }, {AL["Mythic 19"], 24 }, {AL["Mythic 20"], 25 },
        {AL["Mythic 21"], 26 }, {AL["Mythic 22"], 27 }, {AL["Mythic 23"], 28 }, {AL["Mythic 24"], 29 }, {AL["Mythic 25"], 30 },
        {AL["Mythic 26"], 31 }, {AL["Mythic 27"], 32 }, {AL["Mythic 28"], 33 }, {AL["Mythic 29"], 34 }, {AL["Mythic 30"], 35 },
        {AL["Mythic 31"], 36 }, {AL["Mythic 32"], 37 }, {AL["Mythic 33"], 38 }, {AL["Mythic 34"], 39 }, {AL["Mythic 35"], 40 },
        {AL["Mythic 36"], 41 }, {AL["Mythic 37"], 42 }, {AL["Mythic 38"], 43 }, {AL["Mythic 39"], 44 }, {AL["Mythic 40"], 45 },
        Max = 45
    },
    BCRaid = {
        {AL["Normal"], 3},
        {AL["Heroic"], 4},
        {AL["Mythic"], 5},
        {AL["Ascended"], 6},
        {AL["Bloodforged"], 1},
        {AL["Heroic Bloodforged"], 2},
        Max = 6
    },
    BCkarazhanCrypts = {
        {AL[AL["Normal"]], 3},
        {AL["Mythic Phase 1"], 4},
        {AL["Mythic Phase 2"], 5},
        {AL["Mythic Phase 3"], 6},
        {AL["Mythic Phase 4"], 7},
        {AL["Mythic Phase 5"], 8},
        {AL["Bloodforged"], 1},
        Max = 8
    },
    WrathDungeon = {
        {AL["Bloodforged"], 1},
        {AL["Normal"], 3},
        {AL["Heroic"], 4},
        {AL["Mythic"], 5},
        {AL["Mythic 1"], 6 },  {AL["Mythic 2"], 7 },  {AL["Mythic 3"], 8 },  {AL["Mythic 4"], 9 },  {AL["Mythic 5"], 10 },
        {AL["Mythic 6"], 11 }, {AL["Mythic 7"], 12 }, {AL["Mythic 8"], 13 }, {AL["Mythic 9"], 14 }, {AL["Mythic 10"], 15 },
        {AL["Mythic 11"], 16 }, {AL["Mythic 12"], 17 }, {AL["Mythic 13"], 18 }, {AL["Mythic 14"], 19 }, {AL["Mythic 15"], 20 },
        {AL["Mythic 16"], 21 }, {AL["Mythic 17"], 22 }, {AL["Mythic 18"], 23 }, {AL["Mythic 19"], 24 }, {AL["Mythic 20"], 25 },
        {AL["Mythic 21"], 26 }, {AL["Mythic 22"], 27 }, {AL["Mythic 23"], 28 }, {AL["Mythic 24"], 29 }, {AL["Mythic 25"], 30 },
        {AL["Mythic 26"], 31 }, {AL["Mythic 27"], 32 }, {AL["Mythic 28"], 33 }, {AL["Mythic 29"], 34 }, {AL["Mythic 30"], 35 },
        {AL["Mythic 31"], 36 }, {AL["Mythic 32"], 37 }, {AL["Mythic 33"], 38 }, {AL["Mythic 34"], 39 }, {AL["Mythic 35"], 40 },
        {AL["Mythic 36"], 41 }, {AL["Mythic 37"], 42 }, {AL["Mythic 38"], 43 }, {AL["Mythic 39"], 44 }, {AL["Mythic 40"], 45 },
        Max = 45
    },
    WrathRaid = {
        {AL["Normal"], 3},
        {AL["Heroic"], 4},
        {AL["Mythic"], 5},
        {AL["Ascended"], 6},
        {AL["Bloodforged"], 1},
        {AL["Heroic Bloodforged"], 2},
        Max = 6
    },
    ClassicCrafting = {
        {AL["Normal"], 3 },
        {AL["Superior"], 4 },
        Max = 4
    },
    BCCrafting = {
        {AL["Normal"], 3 },
        Max = 3
    },
    WrathCrafting = {
        {AL["Normal"], 3 },
        Max = 3
    },
    Search = {
        {AL["Bloodforged"], 1},
        {AL["Heroic Bloodforged"], 2},
        {AL["Normal"], 3},
        {AL["Heroic"], 4},
        {AL["Mythic"], 5},
        {"Mythic 1/Ascended", 6 },  {AL["Mythic 2"], 7 },  {AL["Mythic 3"], 8 },  {AL["Mythic 4"], 9 },  {AL["Mythic 5"], 10 },
        {AL["Mythic 6"], 11 }, {AL["Mythic 7"], 12 }, {AL["Mythic 8"], 13 }, {AL["Mythic 9"], 14 }, {AL["Mythic 10"], 15 },
        {AL["Mythic 11"], 16 }, {AL["Mythic 12"], 17 }, {AL["Mythic 13"], 18 }, {AL["Mythic 14"], 19 }, {AL["Mythic 15"], 20 },
        {AL["Mythic 16"], 21 }, {AL["Mythic 17"], 22 }, {AL["Mythic 18"], 23 }, {AL["Mythic 19"], 24 }, {AL["Mythic 20"], 25 },
        {AL["Mythic 21"], 26 }, {AL["Mythic 22"], 27 }, {AL["Mythic 23"], 28 }, {AL["Mythic 24"], 29 }, {AL["Mythic 25"], 30 },
        {AL["Mythic 26"], 31 }, {AL["Mythic 27"], 32 }, {AL["Mythic 28"], 33 }, {AL["Mythic 29"], 34 }, {AL["Mythic 30"], 35 },
        {AL["Mythic 31"], 36 }, {AL["Mythic 32"], 37 }, {AL["Mythic 33"], 38 }, {AL["Mythic 34"], 39 }, {AL["Mythic 35"], 40 },
        {AL["Mythic 36"], 41 }, {AL["Mythic 37"], 42 }, {AL["Mythic 38"], 43 }, {AL["Mythic 39"], 44 }, {AL["Mythic 40"], 45 },
        Max = 45
    },
    --Enums for comparisons in code
    Bloodforged = 1,
    [AL["Heroic Bloodforged"]] = 2,
    Normal = 3,
    Heroic = 4,
    Superior = 4,
    Mythic = 5,
    Ascended = 6,
    MythicPlus = {
        6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
        7, 18, 19, 20, 21, 22, 23, 24, 25, 26,
        27, 28, 29, 30, 31, 32, 33, 34, 35, 36,
        37, 38, 39, 40, 41, 42, 43, 44, 45
    }, --Usage AtlasLoot_Difficulty.MythicPlus[1-40]
    DIF_SEARCH = 17,
    MIN_DIF = 19,
    MAX_DIF = 20,
}

function AtlasLoot:GetMaxDifficulty(instanceType, max)
    if not instanceType and not max then return end
    return self.Difficulties[max] or self.Difficulties[instanceType].Max
end

function AtlasLoot:GetMinDifficulty(min)
    return self.Difficulties[min]
end
