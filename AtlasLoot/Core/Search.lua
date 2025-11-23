local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

-- Supported Operators
local OP_AND = "&"
-- multi-character patterns must come before single-character patterns
local RELATIONAL_OPERATORS = {">=", "<=", "<>", "<", ">", "="}

local searchCategories = {
    {
        Name = "Classic",
        {"Dungeon", "ClassicDungeonExt", "AtlasLoot_OriginalWoW"},
        {"Raid", "ClassicRaid", "AtlasLoot_OriginalWoW"},
        {"Crafting", "ClassicCrafting", "AtlasLoot_Crafting_OriginalWoW"},
    },
    {
        Name = "BurningCrusade",
        {"Dungeon", "BCDungeon", "AtlasLoot_BurningCrusade"},
        {"Raid", "BCRaid", "AtlasLoot_BurningCrusade"},
        {"Crafting", "BCCrafting", "AtlasLoot_Crafting_TBC"},
    },
    {
        Name = "Wrath",
        {"Dungeon", "WrathDungeon", "AtlasLoot_WrathoftheLichKing"},
        {"Raid", "WrathRaid", "AtlasLoot_WrathoftheLichKing"},
        {"Crafting", "WrathCrafting", "AtlasLoot_Crafting_Wrath"},
    }
}

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
}

local SOCKET_FILTERS = {
    ["socket"] = true,
    ["sockets"] = true,
    ["gem"] = true,
    ["gems"] = true
}

local SOCKET_TYPES = {"EMPTY_SOCKET_BLUE", "EMPTY_SOCKET_RED", "EMPTY_SOCKET_YELLOW", "EMPTY_SOCKET_META", "EMPTY_SOCKET_NO_COLOR"}

local INFO_FILTERS = {
    ["ilvl"] = true,
    ["minlvl"] = true
    -- ["type"] = true,
    -- ["subtype"] = true,
}

local QUALITY_FILTERS = {
    ["poor"] = 0,
    ["common"] = 1,
    ["uncommon"] = 2,
    ["rare"] = 3,
    ["epic"] = 4,
    ["legendary"] = 5,
    ["artifact"] = 6,
    ["heirloom"] = 7
}

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
    ["mainhand"] = "INVTYPE_WEAPONMAINHAND",
    ["offhand"] = "INVTYPE_WEAPONOFFHAND",
    ["holdable"] = "INVTYPE_HOLDABLE",
    ["ammo"] = "INVTYPE_AMMO",
    ["thrown"] = "INVTYPE_THROWN",
    ["rangedright"] = "INVTYPE_RANGEDRIGHT",
    ["quiver"] = "INVTYPE_QUIVER",
    ["relic"] = "INVTYPE_RELIC"
}

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

SLASH_ATLASLOOTHELP1 = "/atlasloothelp"
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
    print("str>40&ilvl>=120&ilvl<140&int>0&socket>2")
    print("sp>20&quality>=rare&quality<legendary&slot=finger")
    print("stam>20&minlvl<=50")
end

SLASH_ATLASLOOTSEARCH1 = "/atlaslootsearch"
SLASH_ATLASLOOTSEARCH2 = "/als"
SlashCmdList["ATLASLOOTSEARCH"] = function(search, editBox)
    self.ui:Show()
    if search and search ~= '' then
        AtlasLootSearchBox:SetText(search)
        AtlasLootSearchButton:Click()
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

    local searchedValue = tonumber(term.right)
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

    local socketCount = 0
    for _, socketType in pairs(SOCKET_TYPES) do
        local statValue = tonumber(stats[socketType])
        if statValue then
            socketCount = socketCount + statValue
        end
    end

    return CompareNumbersByOperator(term.relational, socketCount, searchedValue)
end

local function IsMinLevelFilterMatch(term, minLvl)
    if term.left ~= "minlvl" then
        return
    end

    local searchedValue = tonumber(term.right)
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

    return type == itemEquipType
end

function AtlasLoot:NameMatches(name, searchText)
    if self.selectedProfile.PartialMatching then
        return string.find(string.lower(name), string.lower(searchText))
    else
        return string.lower(name) == string.lower(searchText)
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

function AtlasLoot:ItemMatchesTerm(term, itemDetails)
    if term.relational then
        local func, arg = unpack(RelationalFunctions[term.left])
        if func then
            return func(term, itemDetails[arg])
        end
        return false
    else
        return self:NameMatches(itemDetails[1], term.name)
    end
end

function AtlasLoot:ItemMatchesAllTerms(searchTerms, itemDetails)
    for _, term in ipairs(searchTerms) do
        if not self:ItemMatchesTerm(term, itemDetails) then
            return false
        end
    end

    return true
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
        table.insert(terms, ParseTerm(term))
    end
    return terms
end

function AtlasLoot:GetItemDetails(itemId)
    -- Name, Link, Quality(num), iLvl(num), minLvl(num), itemType(localized string), itemSubType(localized string), stackCount(num), itemEquipLoc(enum), texture(link to a local file), displayId(num)
    local itemName, _, itemQuality, itemLvl, minLvl, _, itemSubType, _, itemEquipLoc = self:GetItemInfo(itemId)
    return itemName, itemQuality, itemLvl, minLvl, itemEquipLoc, itemSubType, GetItemStats("item:" .. itemId)
end

local count = 1
local tablenum = 1

function AtlasLoot:AddItemToSearchResult(item, dataSource, dataID, tableNum)
    AtlasLootCharDB["SearchResult"].SearchIDs = AtlasLootCharDB["SearchResult"].SearchIDs or {}
    local itemData = self:CloneTable(item)
    local inResults = AtlasLootCharDB["SearchResult"].SearchIDs[item.itemID]
    if item.itemID then
        if inResults then
            inResults[1][inResults[2]] = itemData
            inResults[1][inResults[2]].lootTable = {{dataID, dataSource, tableNum}, "Source"}
        else
            local pageSide = AtlasLootCharDB["SearchResult"][1][1]
            if count >= 16 then
                pageSide = AtlasLootCharDB["SearchResult"][1][2]
            end
            table.insert(pageSide, itemData)

            pageSide[#pageSide].lootTable = {{dataID, dataSource, tableNum}, "Source"}
            AtlasLootCharDB["SearchResult"].SearchIDs[item.itemID] = {pageSide, #pageSide}
            count = count + 1
            if count == 31 then
                count = 1
            end
        end
    end
end

local showSearch
function AtlasLoot:ProcessItem(data)
    if not data then return end
    local itemData, dataID, tableNum, searchTerms, searchText = unpack(data)
    if type(itemData) == "table" then
        local itemID = itemData.itemID
        local spellID = itemData.spellID
        if spellID then
            self:ItemsLoading(-1)
            local spellName = GetSpellInfo(spellID)
            if self:NameMatches(spellName, searchText) then
                self:AddItemToSearchResult(itemData, "AtlasLoot_Data", dataID, tableNum)
                if not showSearch then
                    self:ShowSearchResult()
                    showSearch = true
                end
                self:ItemFrameRefresh()
            end
        elseif itemID then
            local function nextItem(item)
                self:ItemsLoading(-1)
                local itemDetails = {self:GetItemDetails(itemID)}
                itemDetails[1] = item:GetName()
                if not itemDetails[1] then return end
                if self:ItemMatchesAllTerms(searchTerms, itemDetails) then
                    self:AddItemToSearchResult(itemData, "AtlasLoot_Data", dataID, tableNum)
                    if not showSearch then
                        self:ShowSearchResult()
                        showSearch = true
                    else
                        self:ItemFrameRefresh()
                    end
                end
            end
            local item = Item:CreateFromID(itemID)
            if item then
                if searchTerms.relational and not item:GetInfo() then
                    item:ContinueOnLoad(function(item)
                        nextItem(item)
                    end)
                    nextItem(item)
                else
                    nextItem(item)
                end
            end
        end
    end
end

local itemList = {}

function AtlasLoot:DoSearch(searchText)
    AtlasLootCharDB["SearchResult"] = {Name = "Search Result" , Type = "Search", {Name = AL["Search Results"],{},{}}}
    count = 1
    showSearch = false

    wipe(itemList)

    local searchTerms = ParseQuery(searchText)
    for dataID, data in pairs(AtlasLoot_Data) do
        if self.selectedProfile.SearchOn[data.Type] and self.selectedProfile.SearchOn[data.Type][1] or (self.selectedProfile.SearchAscensionVanity and data.Module == "AtlasLoot_Ascension_Vanity") then
            for tableNum, t in ipairs(data) do
                if type(t) == "table" then
                    for _, side in pairs(t) do
                        if type(side) == "table" then
                            for _, itemData in pairs(side) do
                                if type(itemData) == "table" then
                                    if itemData.itemID or itemData.spellID then
                                        if data.Type then
                                            itemData.Type = data.Type
                                        end
                                        if self.selectedProfile.showdropLocationOnSearch then
                                            itemData.dropLoc = {data.DisplayName or data.Name, t.Name}
                                        end
                                        tinsert(itemList, {{itemData, dataID, tableNum, searchTerms, searchText}})
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    -- rate limit tied to half the current frame rate
    self:ItemsLoading(#itemList)
    local maxDuration = (self.selectedProfile.ItemLoadingSpeed*500)/GetFramerate()
    local startTime = debugprofilestop()
    local function continue()
        startTime = debugprofilestop()
        local task = tremove(itemList)
        while (task) do
            self:ProcessItem(task[1])
            if (debugprofilestop() - startTime > maxDuration) then
                Timer.After(0, continue)
                return
            end
            task = tremove(itemList)
        end
    end

    return continue()
end

function AtlasLoot:ShowSearchResult()
    self:ShowItemsFrame("SearchResult", "AtlasLootCharDB", 1)
end

function AtlasLoot:Search(text)
    if not text then
        return
    end
    text = strtrim(text)
    if text == "" then
        return
    end

    if self.selectedProfile.SearchAscensionDB then
        return OpenAscensionDBURL("?search="..text)
    end

    -- Decide if we need load all modules or just specified ones
    local allDisabled = true
    if allDisabled then
        for _, module in pairs(self.selectedProfile.SearchOn) do
            if module and module[1] or self.selectedProfile.SearchAscensionVanity then
                allDisabled = false
                break
            end
        end
    end
    if allDisabled then
        DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED .. AL["AtlasLoot"] .. ": " .. self.Colors.WHITE .. AL["You don't have any module selected to search on. Right click search to select modules the more selected the longer it will take to search"])
        return
    end

    for _, cat in pairs(self.selectedProfile.SearchOn) do
        if type(cat) == "table" and cat[1] and not IsAddOnLoaded(cat[2]) then
            LoadAddOn(cat[2])
        end
    end

    self:DoSearch(text)
end

function AtlasLoot:ShowSearchOptions(button, point)
    if self.Dewdrop:IsOpen(button) then
        self.Dewdrop:Close(1)
    else
        local setOptions = function()
            self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize, "text", self.Colors.WHITE.."Search Categories", "isTitle", true, "notCheckable", true)
            for expac, cat in pairs(searchCategories) do
                self.Dewdrop:AddLine( "text", self.Colors.YELLOW..cat.Name, "isTitle", true, "notCheckable", true, 'textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize )
                    for _, data in ipairs(cat) do
                        self.selectedProfile.SearchOn[data[2]] = self.selectedProfile.SearchOn[data[2]] or {false, data[3]}
                        self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize,
                        'isRadio', true,
                        "text", data[1],
                        "checked", self.selectedProfile.SearchOn[data[2]] and self.selectedProfile.SearchOn[data[2]][1],
                        "func", function()
                        self.selectedProfile.SearchOn[data[2]][1] = not self.selectedProfile.SearchOn[data[2]][1]
                        end)
                    end
            end
            self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize, "text", AL["Search options"], "isTitle", true, "notCheckable", true)
            self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize, "text", AL["Ascension Vanity Collection"], 'isRadio', true, "checked", self.selectedProfile.SearchAscensionVanity, "tooltipTitle", AL["Ascension Vanity Collection"], "tooltipText",
            AL["If checked, AtlasLoot will search Ascension Vanity Collection"], "func", function()
            self.selectedProfile.SearchAscensionVanity = not self.selectedProfile.SearchAscensionVanity
            end)
            self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize, "text", AL["Partial matching"], 'isRadio', true, "checked", self.selectedProfile.PartialMatching, "tooltipTitle", AL["Partial matching"], "tooltipText",
                AL["If checked, AtlasLoot search item names for a partial match."], "func", function()
                self.selectedProfile.PartialMatching = not self.selectedProfile.PartialMatching
            end)
            self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize, "text", AL["Search AscensionDB"], 'isRadio', true, "checked", self.selectedProfile.SearchAscensionDB, "tooltipTitle", AL["Partial matching"], "tooltipText",
                AL["If checked, AtlasLoot will open a browser window and search AscensionDB"], "func", function()
                self.selectedProfile.SearchAscensionDB = not self.selectedProfile.SearchAscensionDB
            end)
        end
        self.Dewdrop:Open(button, 'point', function(parent)
            if point then
                return point[1] , point[2]
            else
                return "BOTTOMLEFT", "BOTTOMRIGHT"
            end
        end, "children", setOptions)
    end
end