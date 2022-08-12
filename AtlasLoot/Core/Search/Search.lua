local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";

local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local modules = {"AtlasLoot_BurningCrusade", "AtlasLoot_Crafting", "AtlasLoot_OriginalWoW", "AtlasLoot_WorldEvents", "AtlasLoot_WrathoftheLichKing"};
local currentPage = 1;
local SearchResult = nil;

-- Supported Operators
local OP_AND = "&"
local BINARYOPERATORS = {OP_AND};
-- multi-character patterns must come before single-character patterns
local RELATIONAL_OPERATORS = {">=", "<=", "<>", "<", ">", "="};

-- Supported Stat Filters
local STAT_FILTERS = {
    -- Base Stats
    ["stamina"] = "ITEM_MOD_STAMINA_SHORT",
    ["stam"] = "ITEM_MOD_STAMINA_SHORT",
    ["sta"] = "ITEM_MOD_STAMINA_SHORT",

    ["strength"] = "ITEM_MOD_STRENGTH_SHORT",
    ["str"] = "ITEM_MOD_STRENGTH_SHORT",

    ["agility"] = "ITEM_MOD_AGILITY_SHORT",
    ["agi"] = "ITEM_MOD_AGILITY_SHORT",

    ["intellect"] = "ITEM_MOD_INTELLECT_SHORT",
    ["int"] = "ITEM_MOD_INTELLECT_SHORT",

    ["spirit"] = "ITEM_MOD_SPIRIT_SHORT",
    ["spir"] = "ITEM_MOD_SPIRIT_SHORT",
    ["spi"] = "ITEM_MOD_SPIRIT_SHORT",

    ["health"] = "ITEM_MOD_HEALTH_SHORT",
    ["mana"] = "ITEM_MOD_MANA_SHORT",

    ["mp5"] = "ITEM_MOD_POWER_REGEN0_SHORT",
    ["mpr"] = "ITEM_MOD_POWER_REGEN0_SHORT",

    ["hp5"] = "ITEM_MOD_HEALTH_REGEN_SHORT",
    ["hpr"] = "ITEM_MOD_HEALTH_REGEN_SHORT",

    -- Sockets
    ["socketblue"] = "EMPTY_SOCKET_BLUE",
    ["socketred"] = "EMPTY_SOCKET_RED",
    ["socketyellow"] = "EMPTY_SOCKET_YELLOW",

    ["socketnocolor"] = "EMPTY_SOCKET_NO_COLOR",
    ["socketwhite"] = "EMPTY_SOCKET_NO_COLOR",

    ["socketmeta"] = "EMPTY_SOCKET_META",
    ["meta"] = "EMPTY_SOCKET_META",

    -- Secondary Stats
    ["attackpowerferal"] = "ITEM_MOD_FERAL_ATTACK_POWER_SHORT",
    ["attackpowferal"] = "ITEM_MOD_FERAL_ATTACK_POWER_SHORT",
    ["apferal"] = "ITEM_MOD_FERAL_ATTACK_POWER_SHORT",

    ["attackpower"] = "ITEM_MOD_ATTACK_POWER_SHORT",
    ["attackpow"] = "ITEM_MOD_ATTACK_POWER_SHORT",
    ["ap"] = "ITEM_MOD_ATTACK_POWER_SHORT",

    ["spellpower"] = "ITEM_MOD_SPELL_POWER_SHORT",
    ["spellpow"] = "ITEM_MOD_SPELL_POWER_SHORT",
    ["sp"] = "ITEM_MOD_SPELL_POWER_SHORT",

    ["spellpenetration"] = "ITEM_MOD_SPELL_PENETRATION_SHORT",
    ["spellpen"] = "ITEM_MOD_SPELL_PENETRATION_SHORT",
    ["spp"] = "ITEM_MOD_SPELL_PENETRATION_SHORT",

    ["crit"] = "ITEM_MOD_CRIT_RATING_SHORT",
    ["haste"] = "ITEM_MOD_HASTE_RATING_SHORT",

    ["hit"] = "ITEM_MOD_HIT_RATING_SHORT",

    ["armorpenetration"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
    ["armourpenetration"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
    ["armorpen"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
    ["armourpen"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
    ["arp"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",

    ["expertise"] = "ITEM_MOD_EXPERTISE_RATING_SHORT",
    ["exp"] = "ITEM_MOD_EXPERTISE_RATING_SHORT",

    ["dps"] = "ITEM_MOD_DAMAGE_PER_SECOND_SHORT",

    ["resilience"] = "ITEM_MOD_RESILIENCE_RATING",
    ["resil"] = "ITEM_MOD_RESILIENCE_RATING",
    ["res"] = "ITEM_MOD_RESILIENCE_RATING",

    ["defense"] = "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT",
    ["def"] = "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT",

    ["dodge"] = "ITEM_MOD_DODGE_RATING_SHORT",
    ["dod"] = "ITEM_MOD_DODGE_RATING_SHORT",

    ["block"] = "ITEM_MOD_BLOCK_RATING_SHORT",

    ["blockvalue"] = "ITEM_MOD_BLOCK_VALUE_SHORT",
    ["blockval"] = "ITEM_MOD_BLOCK_VALUE_SHORT",
    ["bv"] = "ITEM_MOD_BLOCK_VALUE_SHORT",

    ["parry"] = "ITEM_MOD_PARRY_RATING_SHORT",

    -- Resistances
    ["armor"] = "RESISTANCE0_NAME",
    ["armour"] = "RESISTANCE0_NAME",
    ["arm"] = "RESISTANCE0_NAME",
    ["resistancephysical"] = "RESISTANCE0_NAME",
    ["resistancephys"] = "RESISTANCE0_NAME",
    ["resphys"] = "RESISTANCE0_NAME",

    ["resistanceholy"] = "RESISTANCE1_NAME",
    ["resholy"] = "RESISTANCE1_NAME",

    ["resistancefire"] = "RESISTANCE2_NAME",
    ["resfire"] = "RESISTANCE2_NAME",

    ["resistancenature"] = "RESISTANCE3_NAME",
    ["resnature"] = "RESISTANCE3_NAME",
    ["resnat"] = "RESISTANCE3_NAME",

    ["resistanceforst"] = "RESISTANCE4_NAME",
    ["resfrost"] = "RESISTANCE4_NAME",

    ["resistanceshadow"] = "RESISTANCE5_NAME",
    ["resshadow"] = "RESISTANCE5_NAME",
    ["resshad"] = "RESISTANCE5_NAME",

    ["resistancearcane"] = "RESISTANCE6_NAME",
    ["resarcane"] = "RESISTANCE6_NAME",
    ["resarc"] = "RESISTANCE6_NAME"
};

local SOCKET_FILTERS = {
    ["socket"] = true,
    ["sockets"] = true,
    ["gem"] = true,
    ["gems"] = true
};

local SOCKET_TYPES = {"EMPTY_SOCKET_BLUE", "EMPTY_SOCKET_RED", "EMPTY_SOCKET_YELLOW", "EMPTY_SOCKET_META", "EMPTY_SOCKET_NO_COLOR"};

local INFO_FILTERS = {
    ["ilvl"] = true,
    ["minlvl"] = true
    -- ["type"] = true,
    -- ["subtype"] = true,
};

local QUALITY_FILTERS = {
    ["poor"] = 0,
    ["common"] = 1,
    ["uncommon"] = 2,
    ["rare"] = 3,
    ["epic"] = 4,
    ["legendary"] = 5,
    ["artifact"] = 6,
    ["heirloom"] = 7
};

local SLOT_FILTERS = {
    ["none"] = "INVTYPE_NON_EQUIP",
    ["head"] = "INVTYPE_HEAD",
    ["neck"] = "INVTYPE_NECK",
    ["shoulder"] = "INVTYPE_SHOULDER",
    ["body"] = "INVTYPE_BODY",
    ["chest"] = "INVTYPE_CHEST",
    ["waist"] = "INVTYPE_WAIST",
    ["legs"] = "INVTYPE_LEGS",
    ["feet"] = "INVTYPE_FEET",
    ["wrist"] = "INVTYPE_WRIST",
    ["hand"] = "INVTYPE_HAND",
    ["finger"] = "INVTYPE_FINGER",
    ["trinket"] = "INVTYPE_TRINKET",
    ["weapon"] = "INVTYPE_WEAPON",
    ["shield"] = "INVTYPE_SHIELD",
    ["ranged"] = "INVTYPE_RANGED",
    ["cloak"] = "INVTYPE_CLOAK",
    ["2hweapon"] = "INVTYPE_2HWEAPON",
    ["2h"] = "INVTYPE_2HWEAPON",
    ["bag"] = "INVTYPE_BAG",
    ["tabard"] = "INVTYPE_TABARD",
    ["robe"] = "INVTYPE_ROBE",
    ["weaponmainhand"] = "INVTYPE_WEAPONMAINHAND",
    ["mainhand"] = "INVTYPE_WEAPONMAINHAND",
    ["weaponoffhand"] = "INVTYPE_WEAPONOFFHAND",
    ["offhand"] = "INVTYPE_WEAPONOFFHAND",
    ["holdable"] = "INVTYPE_HOLDABLE",
    ["ammo"] = "INVTYPE_AMMO",
    ["thrown"] = "INVTYPE_THROWN",
    ["rangedright"] = "INVTYPE_RANGEDRIGHT",
    ["quiver"] = "INVTYPE_QUIVER",
    ["relic"] = "INVTYPE_RELIC"
};

local TYPE_FILTERS = {
    ["cloth"] = "Cloth",
    ["leather"] = "Leather",
    ["mail"] = "Mail",
    ["plate"] = "Plate",
    ["shield"] = "Shields",
    ["libram"] = "Librams",
    ["idol"] = "Idols",
    ["totem"] = "Totems",
    ["sigil"] = "Sigils",

    ["axe1h"] = "One-Handed Axes",
    ["axe2h"] = "Two-Handed Axes",
    ["bows"] = "Bows",
    ["bow"] = "Bows",
    ["guns"] = "Guns",
    ["gun"] = "Guns",
    ["mace1h"] = "One-Handed Maces",
    ["mace2h"] = "Two-Handed Maces",
    ["polearm"] = "Polearms",
    ["sword1h"] = "One-Handed Swords",
    ["sword2h"] = "Two-Handed Swords",
    ["staff"] = "Staves",
    ["fist"] = "Fist Weapons",
    ["generic"] = "",
    ["dagger"] = "Daggers",
    ["thrown"] = "Thrown",
    ["crossbows"] = "Crossbows",
    ["crossbow"] = "Crossbows",
    ["wand"] = "Wands",
    ["fishingpole"] = "Fishing Poles"
}

local NON_EQUIPABLE_SLOTS = {
    ["INVTYPE_NON_EQUIP"] = true,
    ["INVTYPE_BODY"] = true,
    ["INVTYPE_BAG"] = true,
    ["INVTYPE_AMMO"] = true,
    ["INVTYPE_QUIVER"] = true
};

SLASH_ATLASLOOTHELP1 = "/atlasloothelp";
SlashCmdList["ATLASLOOTHELP"] = function(msg, editBox)
    local function show(caption, t)
        local keys = {}
        for key in pairs(t) do
            table.insert(keys, key)
        end
        table.sort(keys, function(a, b)
            return a < b
        end)
        print(caption .. ": " .. table.concat(keys, ", "))
    end
    show("stat", STAT_FILTERS)
    show("socket", SOCKET_FILTERS)
    show("slot", SLOT_FILTERS)
    show("quality", QUALITY_FILTERS)
    show("info", INFO_FILTERS)

    print("\nExamples:")
    print("gladiator")
    print("str>40")
    print("gladiator&str>40")
    print("str>40&ilvl>=120&ilvl<140&int>0&socket>2");
    print("sp>20&quality>=rare&quality<legendary&slot=finger");
    print("stam>20&minlvl<=50")
end

SLASH_ATLASLOOTSEARCH1 = "/atlaslootsearch";
SLASH_ATLASLOOTSEARCH2 = "/als";
SlashCmdList["ATLASLOOTSEARCH"] = function(search, editBox)
    AtlasLootDefaultFrame:Show()
    if search and search ~= '' then
        AtlasLootDefaultFrameSearchBox:SetText(search)
        AtlasLootDefaultFrameSearchButton:Click()
    end
end

-- split one string on another (delimiter can be more than one character)
local function SplitString(str, delimiter)
    local result = {}
    local start = 1
    local len = #str
    while start <= len do
        local delimPos = str:find(delimiter, start, true)
        if delimPos then
            result[#result + 1] = str:sub(start, delimPos - 1) -- grab up to the delimeter
            start = delimPos + #delimiter -- advance past the delimiter
        else
            result[#result + 1] = str:sub(start) -- grab the rest of the string
            break
        end
    end
    return result
end

local function CompareNumbersByOperator(operator, left, right)
    return left and right and
               ((operator == "<>" and left ~= right) or (operator == "<=" and left <= right) or (operator == ">=" and left >= right) or (operator == "=" and left == right) or
                   (operator == "<" and left < right) or (operator == ">" and left > right))
end

local function ThrowQueryError(...)
    error("Error: " .. string.format(...))
end

local function IsItemStatMatch(term, stats)
    local filterKey = STAT_FILTERS[term.left]
    if not filterKey then
        return
    end

    local statValue = tonumber(stats[filterKey])
    if not statValue then
        return
    end

    local searchedValue = tonumber(term.right)
    if not searchedValue then
        ThrowQueryError("'%s' requires a numeric argument", term.left)
    end

    return CompareNumbersByOperator(term.relational, statValue, searchedValue)
end

local function IsItemLevelFilterMatch(term, itemLvl)
    if term.left ~= "ilvl" then
        return
    end

    local searchedValue = tonumber(term.right);
    if not searchedValue then
        ThrowQueryError("ilvl search requires a numeric argument")
    end

    return itemLvl ~= nil and itemLvl > 0 and CompareNumbersByOperator(term.relational, itemLvl, searchedValue)
end

local function IsItemQualityMatch(term, itemQuality)
    if term.left ~= "quality" then
        return
    end

    local searchedValue = QUALITY_FILTERS[term.right]
    if not searchedValue then
        ThrowQueryError("unrecognized quality value \"%s\"", term.right)
    end

    return CompareNumbersByOperator(term.relational, itemQuality, searchedValue)
end

local function IsItemSocketMatch(term, stats)
    if not SOCKET_FILTERS[term.left] then
        return
    end

    local searchedValue = tonumber(term.right)
    if not searchedValue then
        ThrowQueryError("'%s' requires a numeric argument", term.left)
    end

    local socketCount = 0;
    for _, socketType in pairs(SOCKET_TYPES) do
        local statValue = tonumber(stats[socketType]);
        if statValue then
            socketCount = socketCount + statValue;
        end
    end

    return CompareNumbersByOperator(term.relational, socketCount, searchedValue)
end

local function IsMinLevelFilterMatch(term, minLvl)
    if term.left ~= "minlvl" then
        return
    end

    local searchedValue = tonumber(term.right);
    if not searchedValue then
        ThrowQueryError("minlvl search requires a numeric argument")
    end

    return minLvl ~= nil and minLvl > 0 and CompareNumbersByOperator(term.relational, minLvl, searchedValue)
end

local function IsItemSlotMatch(term, itemEquipLoc)
    if term.left ~= "slot" then
        return
    end

    if term.relational ~= "=" then
        ThrowQueryError("slot searches should be in the form \"slot=[slotname]\"")
    end

    local slot = SLOT_FILTERS[term.right]
    if not slot then
        ThrowQueryError("unrecognized slot name: \"%s\"", term.right)
    end

    return slot == itemEquipLoc
end

local function IsItemTypeMatch(term, itemEquipType)
    if term.left ~= "type" then
        return
    end

    if term.relational ~= "=" then
        ThrowQueryError("type searches should be in the form \"type=[typename]\"")
    end

    local type = TYPE_FILTERS[term.right]
    if not type then
        ThrowQueryError("unrecognized type name: \"%s\"", term.right)
    end

    return type == itemEquipType;
end

local function nameMatches(name, searchText)
    if AtlasLoot.db.profile.PartialMatching then
        return string.find(string.lower(name), string.lower(searchText));
    else
        return string.lower(name) == string.lower(searchText);
    end
end

local RelationalFunctions = {
    ["ilvl"] = {IsItemLevelFilterMatch, 3},
    ["minlvl"] = {IsMinLevelFilterMatch, 4},
    ["type"] = {IsItemTypeMatch, 6},
    ["slot"] = {IsItemSlotMatch, 5},
    ["quality"] = {IsItemQualityMatch, 2},

    ["gem"] = {IsItemSocketMatch, 7},
    ["gems"] = {IsItemSocketMatch, 7},
    ["socket"] = {IsItemSocketMatch, 7},
    ["sockets"] = {IsItemSocketMatch, 7},

    -- Base Stats
    ["stamina"] = {IsItemStatMatch, 7},
    ["stam"] = {IsItemStatMatch, 7},
    ["sta"] = {IsItemStatMatch, 7},

    ["strength"] = {IsItemStatMatch, 7},
    ["str"] = {IsItemStatMatch, 7},

    ["agility"] = {IsItemStatMatch, 7},
    ["agi"] = {IsItemStatMatch, 7},

    ["intellect"] = {IsItemStatMatch, 7},
    ["int"] = {IsItemStatMatch, 7},

    ["spirit"] = {IsItemStatMatch, 7},
    ["spir"] = {IsItemStatMatch, 7},
    ["spi"] = {IsItemStatMatch, 7},

    ["health"] = {IsItemStatMatch, 7},
    ["mana"] = {IsItemStatMatch, 7},

    ["mp5"] = {IsItemStatMatch, 7},
    ["mpr"] = {IsItemStatMatch, 7},

    ["hp5"] = {IsItemStatMatch, 7},
    ["hpr"] = {IsItemStatMatch, 7},

    -- Sockets
    ["socketblue"] = {IsItemStatMatch, 7},
    ["socketred"] = {IsItemStatMatch, 7},
    ["socketyellow"] = {IsItemStatMatch, 7},

    ["socketnocolor"] = {IsItemStatMatch, 7},
    ["socketwhite"] = {IsItemStatMatch, 7},

    ["socketmeta"] = {IsItemStatMatch, 7},
    ["meta"] = {IsItemStatMatch, 7},

    -- Secondary Stats
    ["attackpowerferal"] = {IsItemStatMatch, 7},
    ["attackpowferal"] = {IsItemStatMatch, 7},
    ["apferal"] = {IsItemStatMatch, 7},

    ["attackpower"] = {IsItemStatMatch, 7},
    ["attackpow"] = {IsItemStatMatch, 7},
    ["ap"] = {IsItemStatMatch, 7},

    ["spellpower"] = {IsItemStatMatch, 7},
    ["spellpow"] = {IsItemStatMatch, 7},
    ["sp"] = {IsItemStatMatch, 7},

    ["spellpenetration"] = {IsItemStatMatch, 7},
    ["spellpen"] = {IsItemStatMatch, 7},
    ["spp"] = {IsItemStatMatch, 7},

    ["crit"] = {IsItemStatMatch, 7},
    ["haste"] = {IsItemStatMatch, 7},

    ["hit"] = {IsItemStatMatch, 7},

    ["armorpenetration"] = {IsItemStatMatch, 7},
    ["armourpenetration"] = {IsItemStatMatch, 7},
    ["armorpen"] = {IsItemStatMatch, 7},
    ["armourpen"] = {IsItemStatMatch, 7},
    ["arp"] = {IsItemStatMatch, 7},

    ["expertise"] = {IsItemStatMatch, 7},
    ["exp"] = {IsItemStatMatch, 7},

    ["dps"] = {IsItemStatMatch, 7},

    ["resilience"] = {IsItemStatMatch, 7},
    ["resil"] = {IsItemStatMatch, 7},
    ["res"] = {IsItemStatMatch, 7},

    ["defense"] = {IsItemStatMatch, 7},
    ["def"] = {IsItemStatMatch, 7},

    ["dodge"] = {IsItemStatMatch, 7},
    ["dod"] = {IsItemStatMatch, 7},

    ["block"] = {IsItemStatMatch, 7},

    ["blockvalue"] = {IsItemStatMatch, 7},
    ["blockval"] = {IsItemStatMatch, 7},
    ["bv"] = {IsItemStatMatch, 7},

    ["parry"] = {IsItemStatMatch, 7},

    -- Resistances
    ["armor"] = {IsItemStatMatch, 7},
    ["armour"] = {IsItemStatMatch, 7},
    ["arm"] = {IsItemStatMatch, 7},
    ["resistancephysical"] = {IsItemStatMatch, 7},
    ["resistancephys"] = {IsItemStatMatch, 7},
    ["resphys"] = {IsItemStatMatch, 7},

    ["resistanceholy"] = {IsItemStatMatch, 7},
    ["resholy"] = {IsItemStatMatch, 7},

    ["resistancefire"] = {IsItemStatMatch, 7},
    ["resfire"] = {IsItemStatMatch, 7},

    ["resistancenature"] = {IsItemStatMatch, 7},
    ["resnature"] = {IsItemStatMatch, 7},
    ["resnat"] = {IsItemStatMatch, 7},

    ["resistanceforst"] = {IsItemStatMatch, 7},
    ["resfrost"] = {IsItemStatMatch, 7},

    ["resistanceshadow"] = {IsItemStatMatch, 7},
    ["resshadow"] = {IsItemStatMatch, 7},
    ["resshad"] = {IsItemStatMatch, 7},

    ["resistancearcane"] = {IsItemStatMatch, 7},
    ["resarcane"] = {IsItemStatMatch, 7},
    ["resarc"] = {IsItemStatMatch, 7},

}

local function ItemMatchesTerm(term, itemDetails)
    if term.relational then
        local func, arg = unpack(RelationalFunctions[term.left]);
        if func then
            return func(term, itemDetails[arg]);
        end
        return false;
    else
        return nameMatches(itemDetails[1], term.name);
    end
end

local function ItemMatchesAllTerms(searchTerms, itemDetails)
    local function IsItemEquipableMatch(itemEquipLoc)
        return not AtlasLoot.db.profile.EquipableFilter or ((itemEquipLoc and itemEquipLoc ~= '' and not NON_EQUIPABLE_SLOTS[itemEquipLoc]))
    end

    for _, term in ipairs(searchTerms) do
        if not ItemMatchesTerm(term, itemDetails) then
            return false
        end
    end

    return true and IsItemEquipableMatch(itemDetails[5])
end

local function ParseTerm(termText)
    for _, relational in ipairs(RELATIONAL_OPERATORS) do
        local operands = SplitString(termText, relational)
        if #operands == 2 then
            return {
                left = operands[1],
                right = operands[2],
                relational = relational
            }
        end
    end
    return {
        name = termText
    }
end

-- Parse search text into '&'-delimited search terms,
-- then parse each term on its relational operator, if present.
local function ParseQuery(searchText)
    local terms = {}
    for _, term in pairs(SplitString(searchText, OP_AND)) do
        table.insert(terms, ParseTerm(term));
    end
    return terms
end

local function GetSpellName(itemId, atlasName)
    local spellName = GetSpellInfo(string.sub(itemId, 2));
    if spellName then
        return spellName
    elseif (string.sub(atlasName, 1, 2) == "=d") then
        return gsub(atlasName, "=ds=", "");
    else
        return gsub(atlasName, "=q%d=", "");
    end
end

local function DoSearch(searchText)
    AtlasLootCharDB["SearchResult"] = {Name = "Search Result" , Type = "Search", Back = true};
    AtlasLootCharDB.LastSearchedText = searchText;
    AtlasLoot_SearchProgress:Show();
    AtlasLoot_SearchProgress.Loop:Play();
    local items_total = 0;
    local items_checked = 0;
    local items_queried = false;
    local count = 0;
    local tablenum = 1;

    local searchTerms = ParseQuery(searchText);
    local equipableFilterOn = AtlasLoot.db.profile.EquipableFilter;

    local function GetItemDetails(itemId, atlasName)
        -- Name, Link, Quality(num), iLvl(num), minLvl(num), itemType(localized string), itemSubType(localized string), stackCount(num), itemEquipLoc(enum), texture(link to a local file), displayId(num)
        local itemName, _, itemQuality, itemLvl, minLvl, _, itemSubType, _, itemEquipLoc = GetItemInfo(itemId);
        if not itemName then
            itemName = gsub(atlasName, "=q%d=", "")
        end
        return itemName, itemQuality, itemLvl, minLvl, itemEquipLoc, itemSubType, GetItemStats("item:" .. itemId)
    end

    local function AddItemToSearchResult(itemId, itemType, itemName, dataID, itemIdBackup, difCap, dataPage)
        local lootPage = AtlasLoot_Data[dataID].Name or "Argh!";
        if AtlasLootCharDB["SearchResult"][tablenum] == nil then
            AtlasLootCharDB["SearchResult"][tablenum] = {Name = "Page "..tablenum};
        end

        table.insert(AtlasLootCharDB["SearchResult"][tablenum], {(count % 30) + 1, itemId, itemType, itemName, lootPage, "", "", dataID .. "|" .. "AtlasLoot_Data" .. "|" .. tostring(dataPage), itemIdBackup, [AtlasLoot_Difficulty.MAX_DIF] = difCap});

        if (count + 1) % 31 == 0 then
            tablenum = tablenum + 1;  
        end
        count = count + 1;
    end

    for dataID, data in pairs(AtlasLoot_Data) do
        for dataPage, t in ipairs(data) do
            for _, v in ipairs(t) do
                if type(v) == "table" then
                    local _, itemId, itemType, atlasName = unpack(v)
                    if type(itemId) == "number" and itemId > 0 then
                        local itemIdBackup = itemId;
                        local difficultyCap = min(AtlasLoot_Difficulty:getMaxDifficulty(data.Type), ItemindexID);
                        itemId = AtlasLoot:FindId(itemId, difficultyCap) or 2;

                        local item = Item:CreateFromID(itemId);

                        item:ContinueOnLoad(function()
                            if item:GetInfo() then
                                local itemDetails = {GetItemDetails(item.itemID, atlasName)};
                                if #searchTerms == 1 and searchTerms[1].name then
                                    if nameMatches(atlasName, searchTerms[1].name) then
                                        AddItemToSearchResult(itemId, itemType, atlasName, dataID, itemIdBackup, AtlasLoot_Difficulty:getMaxDifficulty(data.Type), dataPage);
                                    end
                                elseif ItemMatchesAllTerms(searchTerms, itemDetails) then
                                    AddItemToSearchResult(itemId, itemType, atlasName, dataID, itemIdBackup, AtlasLoot_Difficulty:getMaxDifficulty(data.Type), dataPage);
                                end
                                items_checked = items_checked + 1;
                                if(items_checked >= items_total and items_queried) then 
                                    AtlasLoot_SearchProgress.Loop:Stop();
                                    AtlasLoot_SearchProgress:Hide()
                                end
                            end
                        end)
                        items_total = items_total + 1;
                    elseif not equipableFilterOn and itemId and itemId ~= "" and string.sub(itemId, 1, 1) == "s" then
                        local spellName = GetSpellName(itemId, atlasName)
                        if nameMatches(spellName, searchText) then
                            spellName = string.sub(atlasName, 1, 4) .. spellName;
                            AddItemToSearchResult(itemId, itemType, spellName, dataID, itemIdBackup, AtlasLoot_Difficulty:getMaxDifficulty(data.Type), dataPage);
                        end
                    end
                end
            end
        end
    end
    items_queried = true;
end

function AtlasLoot:ShowSearchResult()
    AtlasLoot:ShowItemsFrame("SearchResult", AtlasLootCharDB, 1);
end

function AtlasLoot:Search(Text)
    if not Text then
        return
    end
    Text = strtrim(Text);
    if Text == "" then
        return
    end

    -- Decide if we need load all modules or just specified ones
    local allDisabled = not self.db.profile.SearchOn.All;
    if allDisabled then
        for _, module in ipairs(modules) do
            if self.db.profile.SearchOn[module] == true then
                allDisabled = false;
                break
            end
        end
    end
    if allDisabled then
        DEFAULT_CHAT_FRAME:AddMessage(RED .. AL["AtlasLoot"] .. ": " .. WHITE .. AL["You don't have any module selected to search on."]);
        return;
    end
    if self.db.profile.SearchOn.All then
        AtlasLoot:LoadAllModules();
    else
        for k, v in pairs(self.db.profile.SearchOn) do
            if k ~= "All" and v == true and not IsAddOnLoaded(k) and LoadAddOn(k) and self.db.profile.LoDNotify then
                DEFAULT_CHAT_FRAME:AddMessage(GREEN .. AL["AtlasLoot"] .. ": " .. ORANGE .. k .. WHITE .. " " .. AL["sucessfully loaded."]);
            end
        end
    end

    local success, message = pcall(DoSearch, Text)

    if not success then
        message = message:match("[^:]+: (.*)") or message -- strip stack location
        DEFAULT_CHAT_FRAME:AddMessage(RED .. AL["AtlasLoot"] .. ": " .. WHITE .. message);
    elseif #AtlasLootCharDB["SearchResult"] == 0 then
        local itemFilterErrorMessage = "";
        if operator then
            itemFilterErrorMessage = [[
                Please check if you have a typo in the filter.
                For help, type "/atlasloothelp".
                You might also have to query the server for item informations to load them into your client's Cache.]];
        end
        DEFAULT_CHAT_FRAME:AddMessage(RED .. AL["AtlasLoot"] .. ": " .. WHITE .. AL["No match found for"] .. " \"" .. Text .. "\"." .. itemFilterErrorMessage);
    else
        AtlasLoot:ShowItemsFrame("SearchResult", AtlasLootCharDB, 1);
    end
end

function AtlasLoot:ShowSearchOptions(button)
    local dewdrop = AceLibrary("Dewdrop-2.0");
    if dewdrop:IsOpen(button) then
        dewdrop:Close(1);
    else
        local setOptions = function()
            dewdrop:AddLine("text", AL["Search on"], "isTitle", true, "notCheckable", true);
            dewdrop:AddLine("text", AL["All modules"], "checked", self.db.profile.SearchOn.All, "tooltipTitle", AL["All modules"], "tooltipText",
                            AL["If checked, AtlasLoot will load and search across all the modules."], "func", function()
                self.db.profile.SearchOn.All = not self.db.profile.SearchOn.All;
            end);
            for _, module in ipairs(modules) do
                if IsAddOnLoadOnDemand(module) then
                    local title = GetAddOnMetadata(module, "title");
                    local notes = GetAddOnMetadata(module, "notes");
                    dewdrop:AddLine("text", title, "checked", self.db.profile.SearchOn.All or self.db.profile.SearchOn[module], "disabled", self.db.profile.SearchOn.All, "tooltipTitle", title,
                                    "tooltipText", notes, "func", function()
                        if self.db.profile.SearchOn[module] == nil then
                            self.db.profile.SearchOn[module] = true;
                        else
                            self.db.profile.SearchOn[module] = nil;
                        end
                    end);
                end
            end
            dewdrop:AddLine("text", AL["Search options"], "isTitle", true, "notCheckable", true);
            dewdrop:AddLine("text", AL["Partial matching"], "checked", self.db.profile.PartialMatching, "tooltipTitle", AL["Partial matching"], "tooltipText",
                            AL["If checked, AtlasLoot search item names for a partial match."], "func", function()
                self.db.profile.PartialMatching = not self.db.profile.PartialMatching
            end);
            dewdrop:AddLine("text", "Only search equipable", -- TODO: put in AL
            "checked", self.db.profile.EquipableFilter, "tooltipTitle", "Equipable filter", -- TODO: put in AL
            "tooltipText", "If checked, AtlasLoot only includes items that are euipable.", -- TODO: put in AL
            "func", function()
                self.db.profile.EquipableFilter = not self.db.profile.EquipableFilter
            end);
        end;
        dewdrop:Open(button, 'point', function(parent)
            return "BOTTOMLEFT", "BOTTOMRIGHT";
        end, "children", setOptions);
    end
end

function AtlasLoot:GetOriginalDataFromSearchResult(itemID)
    for i, v in ipairs(AtlasLootCharDB["SearchResult"]) do
        if v[2] == itemID then
            AtlasLoot_ShowWishListDropDown(v[2], v[3], v[4], v[5], v[8], this, nil);
        end
    end
end

