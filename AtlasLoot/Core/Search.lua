local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


-- Supported Operators
local OP_AND = "&"
-- multi-character patterns must come before single-character patterns
local RELATIONAL_OPERATORS = {">=", "<=", "<>", "<", ">", "="}

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

function AtlasLoot:InitializeSearch()

    local searchPanel = self.ui.tabs.Search
    local frameMenuList = {
        ["EquipSubMenu"] = {searchPanel.equipbtn.subbtn, "Select Option", "type", ""}
    }

    local function showSearchResult()
        self:ShowItemsFrame("SearchResult", "AtlasLootCharDB", 1, 1)
    end

    function self:ShowSearchTab()
        -- Hide all elements that could be in the AtlasTable
        self.ui.tabs.currentTab = "Search"

        -- Hide the Filter Check-Box
        self.ui.filterButton:Hide()

        searchPanel:Show()
        self.CurrentType = "Search"
        showSearchResult()
        self:ScrollFrameUpdate()
    end

    -- split one string on another (delimiter can be more than one character)
    local function splitString(str, delimiter)
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

    local function compareNumbersByOperator(operator, left, right)
        return left and right and
                ((operator == "<>" and left ~= right) or (operator == "<=" and left <= right) or (operator == ">=" and left >= right) or (operator == "=" and left == right) or
                    (operator == "<" and left < right) or (operator == ">" and left > right))
    end

    local function throwQueryError(...)
        error("Error: " .. string.format(...))
    end

    local function isItemStatMatch(term, stats)
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
            throwQueryError("'%s' requires a numeric argument", term.left)
        end

        return compareNumbersByOperator(term.relational, statValue, searchedValue)
    end

    local function isItemLevelFilterMatch(term, itemLvl)
        if term.left ~= "ilvl" then
            return
        end

        local searchedValue = tonumber(term.right)
        if not searchedValue then
            throwQueryError("ilvl search requires a numeric argument")
        end

        return itemLvl ~= nil and itemLvl > 0 and compareNumbersByOperator(term.relational, itemLvl, searchedValue)
    end

    local function isItemQualityMatch(term, itemQuality)
        if term.left ~= "quality" then
            return
        end

        local searchedValue = QUALITY_FILTERS[term.right]
        if not searchedValue then
            throwQueryError("unrecognized quality value \"%s\"", term.right)
        end

        return compareNumbersByOperator(term.relational, itemQuality, searchedValue)
    end

    local function isItemSocketMatch(term, stats)
        if not SOCKET_FILTERS[term.left] then
            return
        end

        local searchedValue = tonumber(term.right)
        if not searchedValue then
            throwQueryError("'%s' requires a numeric argument", term.left)
        end

        local socketCount = 0
        for _, socketType in pairs(SOCKET_TYPES) do
            local statValue = tonumber(stats[socketType])
            if statValue then
                socketCount = socketCount + statValue
            end
        end

        return compareNumbersByOperator(term.relational, socketCount, searchedValue)
    end

    local function isMinLevelFilterMatch(term, minLvl)
        if term.left ~= "minlvl" then
            return
        end

        local searchedValue = tonumber(term.right)
        if not searchedValue then
            throwQueryError("minlvl search requires a numeric argument")
        end

        return minLvl ~= nil and minLvl > 0 and compareNumbersByOperator(term.relational, minLvl, searchedValue)
    end

    local function isItemSlotMatch(term, itemEquipLoc)
        if term.left ~= "slot" then
            return
        end

        if term.relational ~= "=" then
            throwQueryError("slot searches should be in the form \"slot=[slotname]\"")
        end

        local slot = SLOT_FILTERS[term.right]
        if not slot then
            throwQueryError("unrecognized slot name: \"%s\"", term.right)
        end

        return slot == itemEquipLoc
    end

    local function isItemTypeMatch(term, itemEquipType)
        if term.left ~= "type" then
            return
        end

        if term.relational ~= "=" then
            throwQueryError("type searches should be in the form \"type=[typename]\"")
        end

        local type = TYPE_FILTERS[term.right]
        if not type then
            throwQueryError("unrecognized type name: \"%s\"", term.right)
        end

        return type == itemEquipType
    end

    local function nameMatches(name, searchText)
        if self.selectedProfile.PartialMatching then
            return string.find(string.lower(name), string.lower(searchText))
        else
            return string.lower(name) == string.lower(searchText)
        end
    end

    local RelationalFunctions = {
        ["ilvl"] = {isItemLevelFilterMatch, 3},
        ["minlvl"] = {isMinLevelFilterMatch, 4},
        ["type"] = {isItemTypeMatch, 6},
        ["slot"] = {isItemSlotMatch, 5},
        ["quality"] = {isItemQualityMatch, 2},

        ["gem"] = {isItemSocketMatch, 7},
        ["gems"] = {isItemSocketMatch, 7},
        ["socket"] = {isItemSocketMatch, 7},
        ["sockets"] = {isItemSocketMatch, 7},

        -- Base Stats
        ["stamina"] = {isItemStatMatch, 7},
        ["stam"] = {isItemStatMatch, 7},
        ["sta"] = {isItemStatMatch, 7},

        ["strength"] = {isItemStatMatch, 7},
        ["str"] = {isItemStatMatch, 7},

        ["agility"] = {isItemStatMatch, 7},
        ["agi"] = {isItemStatMatch, 7},

        ["intellect"] = {isItemStatMatch, 7},
        ["int"] = {isItemStatMatch, 7},

        ["spirit"] = {isItemStatMatch, 7},
        ["spir"] = {isItemStatMatch, 7},
        ["spi"] = {isItemStatMatch, 7},

        ["health"] = {isItemStatMatch, 7},
        ["mana"] = {isItemStatMatch, 7},

        ["mp5"] = {isItemStatMatch, 7},
        ["mpr"] = {isItemStatMatch, 7},

        ["hp5"] = {isItemStatMatch, 7},
        ["hpr"] = {isItemStatMatch, 7},

        -- Sockets
        ["socketblue"] = {isItemStatMatch, 7},
        ["socketred"] = {isItemStatMatch, 7},
        ["socketyellow"] = {isItemStatMatch, 7},

        ["socketnocolor"] = {isItemStatMatch, 7},
        ["socketwhite"] = {isItemStatMatch, 7},

        ["socketmeta"] = {isItemStatMatch, 7},
        ["meta"] = {isItemStatMatch, 7},

        -- Secondary Stats
        ["attackpowerferal"] = {isItemStatMatch, 7},
        ["attackpowferal"] = {isItemStatMatch, 7},
        ["apferal"] = {isItemStatMatch, 7},

        ["attackpower"] = {isItemStatMatch, 7},
        ["attackpow"] = {isItemStatMatch, 7},
        ["ap"] = {isItemStatMatch, 7},

        ["spellpower"] = {isItemStatMatch, 7},
        ["spellpow"] = {isItemStatMatch, 7},
        ["sp"] = {isItemStatMatch, 7},

        ["spellpenetration"] = {isItemStatMatch, 7},
        ["spellpen"] = {isItemStatMatch, 7},
        ["spp"] = {isItemStatMatch, 7},

        ["crit"] = {isItemStatMatch, 7},
        ["haste"] = {isItemStatMatch, 7},

        ["hit"] = {isItemStatMatch, 7},

        ["armorpenetration"] = {isItemStatMatch, 7},
        ["armourpenetration"] = {isItemStatMatch, 7},
        ["armorpen"] = {isItemStatMatch, 7},
        ["armourpen"] = {isItemStatMatch, 7},
        ["arp"] = {isItemStatMatch, 7},

        ["dps"] = {isItemStatMatch, 7},

        ["resilience"] = {isItemStatMatch, 7},
        ["resil"] = {isItemStatMatch, 7},
        ["res"] = {isItemStatMatch, 7},

        ["defense"] = {isItemStatMatch, 7},
        ["def"] = {isItemStatMatch, 7},

        ["dodge"] = {isItemStatMatch, 7},
        ["dod"] = {isItemStatMatch, 7},

        ["block"] = {isItemStatMatch, 7},

        ["blockvalue"] = {isItemStatMatch, 7},
        ["blockval"] = {isItemStatMatch, 7},
        ["bv"] = {isItemStatMatch, 7},

        ["parry"] = {isItemStatMatch, 7},

        -- Resistances
        ["armor"] = {isItemStatMatch, 7},
        ["armour"] = {isItemStatMatch, 7},
        ["arm"] = {isItemStatMatch, 7},
        ["resistancephysical"] = {isItemStatMatch, 7},
        ["resistancephys"] = {isItemStatMatch, 7},
        ["resphys"] = {isItemStatMatch, 7},

        ["resistanceholy"] = {isItemStatMatch, 7},
        ["resholy"] = {isItemStatMatch, 7},

        ["resistancefire"] = {isItemStatMatch, 7},
        ["resfire"] = {isItemStatMatch, 7},

        ["resistancenature"] = {isItemStatMatch, 7},
        ["resnature"] = {isItemStatMatch, 7},
        ["resnat"] = {isItemStatMatch, 7},

        ["resistanceforst"] = {isItemStatMatch, 7},
        ["resfrost"] = {isItemStatMatch, 7},

        ["resistanceshadow"] = {isItemStatMatch, 7},
        ["resshadow"] = {isItemStatMatch, 7},
        ["resshad"] = {isItemStatMatch, 7},

        ["resistancearcane"] = {isItemStatMatch, 7},
        ["resarcane"] = {isItemStatMatch, 7},
        ["resarc"] = {isItemStatMatch, 7},

    }

    local function itemMatchesTerm(term, itemDetails)
        if term.relational then
            local func, arg = unpack(RelationalFunctions[term.left])
            if func then
                return func(term, itemDetails[arg])
            end
            return false
        else
            return nameMatches(itemDetails[1], term.name)
        end
    end

    local function itemMatchesAllTerms(searchTerms, itemDetails)
        for _, term in ipairs(searchTerms) do
            if not itemMatchesTerm(term, itemDetails) then
                return false
            end
        end

        return true
    end

    local function parseTerm(termText)
        for _, relational in ipairs(RELATIONAL_OPERATORS) do
            local operands = splitString(termText, relational)
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
    local function parseQuery(searchText)
        local terms = {}
        for _, term in pairs(splitString(searchText, OP_AND)) do
            table.insert(terms, parseTerm(term))
        end
        return terms
    end

    local function getItemDetails(itemId)
        -- Name, Link, Quality(num), iLvl(num), minLvl(num), itemType(localized string), itemSubType(localized string), stackCount(num), itemEquipLoc(enum), texture(link to a local file), displayId(num)
        local itemName, _, itemQuality, itemLvl, minLvl, _, itemSubType, _, itemEquipLoc = self:GetItemInfo(itemId)
        return itemName, itemQuality, itemLvl, minLvl, itemEquipLoc, itemSubType, GetItemStats("item:" .. itemId)
    end

    local newTable = {{}}
    local searchIDs = {}
    local function addItemToSearchResult(item, dataSource, dataID, tableNum)
        local itemData = self:CloneTable(item)
        if item.itemID and not searchIDs[item.itemID] then
            if #newTable[#newTable] >= 30 then
                table.insert(newTable, {})
            end
            itemData.lootTable = {{dataID, dataSource, tableNum}, "Source"}
            table.insert(newTable[#newTable], itemData)

            searchIDs[item.itemID] = {newTable, #newTable}
            AtlasLootCharDB.SearchResult[1] = newTable
        end
    end

    local showSearch
    local function processItem(data)
        if not data then return end
        local itemData, dataID, tableNum, searchTerms, searchText = unpack(data)
        if type(itemData) == "table" then
            local itemID = itemData.itemID
            local spellID = itemData.spellID
            if spellID then
                self:ItemsLoading(-1)
                local spellName = GetSpellInfo(spellID)
                if nameMatches(spellName, searchText) then
                    addItemToSearchResult(itemData, "AtlasLoot_Data", dataID, tableNum)
                    if not showSearch then
                        showSearchResult()
                        showSearch = true
                    end
                    self:ItemFrameRefresh()
                end
            elseif itemID then
                local function nextItem(item)
                    self:ItemsLoading(-1)
                    local itemDetails = {getItemDetails(itemID)}
                    itemDetails[1] = item:GetName()
                    if not itemDetails[1] then return end
                    if itemMatchesAllTerms(searchTerms, itemDetails) then
                        addItemToSearchResult(itemData, "AtlasLoot_Data", dataID, tableNum)
                        if not showSearch then
                            showSearchResult()
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

    local function doSearch(searchText)
        AtlasLootCharDB.SearchResult = {Name = "Search Results" , Type = "Search", {}}
        newTable = {{}}
        searchIDs = {}
        showSearch = false

        wipe(itemList)

        local searchTerms = parseQuery(searchText)
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
                processItem(task[1])
                if (debugprofilestop() - startTime > maxDuration) then
                    Timer.After(0, continue)
                    return
                end
                task = tremove(itemList)
            end
        end

        return continue()
    end

    -- Search Options Menu
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

    function AtlasLoot:ShowSearchOptions(button)
        local profile = self.selectedProfile
        local menuList = {{
                {text = "Search Categories", func = function() self:AddWishList() end, isTitle = true},
        }}

        for _, cat in pairs(searchCategories) do
            table.insert(menuList[1], {text = cat.Name, isTitle = true})
            for _, data in ipairs(cat) do
                local searchState = profile.SearchOn[data[2]]
                searchState = searchState or {false, data[3]}
                table.insert(menuList[1], {isRadio = true, text = data[1], checked = searchState and searchState[1], func = function() searchState[1] = not searchState[1] end, dontCloseWhenClicked = true})
            end
        end

        local searchOptionsItems = {{
            { text = "Search options", isTitle = true },
            {
                text = "Ascension Vanity Collection", isRadio = true, checked = profile.SearchAscensionVanity, dontCloseWhenClicked = true,
                tooltip = "If checked, AtlasLoot will search Ascension Vanity Collection", func = function() profile.SearchAscensionVanity = not profile.SearchAscensionVanity end },
            {
                text = "Partial matching", isRadio = true, checked = profile.PartialMatching, dontCloseWhenClicked = true,
                tooltip = "If checked, AtlasLoot search item names for a partial match.", func = function() profile.PartialMatching = not profile.PartialMatching end },
            {
                text = "Search AscensionDB", isRadio = true, checked = profile.SearchAscensionDB, dontCloseWhenClicked = true,
                tooltip = "If checked, AtlasLoot will open a browser window and search AscensionDB", func = function() profile.SearchAscensionDB = not profile.SearchAscensionDB end 
            },
        }}

        self:OpenDewdropMenu(button, menuList, searchOptionsItems)
    end

    local MAX_ARGUMENTS = 6
    local ACTIVE_ARGUMENT = 0

    local searchMenus = {

        ["Equip"] = {
            [1] = {{"Head", "equip", "head", "EquipSubMenu", "ArmorType"}},
            [2] = {{"Shoulder", "equip", "shoulder", "EquipSubMenu", "ArmorType"}},
            [3] = {{"Chest", "equip", "chest", "EquipSubMenu", "ArmorType"}},
            [4] = {{"Wrist", "equip", "wrist", "EquipSubMenu", "ArmorType"}},
            [5] = {{"Hands", "equip", "hand", "EquipSubMenu", "ArmorType"}},
            [6] = {{"Waist", "equip", "waist", "EquipSubMenu", "ArmorType"}},
            [7] = {{"Legs", "equip", "legs", "EquipSubMenu", "ArmorType"}},
            [8] = {{"Feet", "equip", "feet", "EquipSubMenu", "ArmorType"}},
            [9] = {
                ["Accessories"] = {{"Necklace", "equip", "neck", "EquipSubMenu", "Disable"}, {"Back", "equip", "cloak", "EquipSubMenu", "Disable"}, {"Ring", "equip", "finger", "EquipSubMenu", "Disable"},
                                {"Trinket", "equip", "trinket", "EquipSubMenu", "Disable"}}
            },
            [10] = {
                ["Weapons"] = {{"One-Hand", "equip", "weapon", "EquipSubMenu", "WeaponType1H"}, {"Two-Hand", "equip", "2h", "EquipSubMenu", "WeaponType2H"},
                            {"Main Hand", "equip", "mainhand", "EquipSubMenu", "WeaponType1H"}, {"Off Hand", "equip", "offhand", "EquipSubMenu", "WeaponType1H"},
                            {"Ranged", "equip", "ranged", "EquipSubMenu", "WeaponTypeRanged"}, {"Relic", "equip", "relic", "EquipSubMenu", "RelicType"}}
            },
            [11] = {
                ["Off-Hand"] = {{"Shield", "equip", "shield", "EquipSubMenu", "Disable"}, {"Held in Off-Hand", "equip", "holdable", "EquipSubMenu", "Disable"}}
            },
            [12] = {{self.Colors.RED .. "Reset", "equip", "reset", "EquipSubMenu", "Disable"}}
        },

        ["ArmorType"] = {
            [1] = {{"Cloth", "type", "Cloth"}},
            [2] = {{"Leather", "type", "Leather"}},
            [3] = {{"Mail", "type", "Mail"}},
            [4] = {{"Plate", "type", "Plate"}},
            [5] = {{self.Colors.RED .. "Reset", "type", "reset"}}
        },

        ["RelicType"] = {
            [1] = {{"Idols", "type", "idol"}},
            [2] = {{"Libram", "type", "libram"}},
            [3] = {{"Totem", "type", "totem"}},
            [4] = {{"Sigil", "type", "sigil"}},
            [5] = {{self.Colors.RED .. "Reset", "type", "reset"}}
        },

        ["WeaponType1H"] = {
            [1] = {{"Axe", "type", "axe1h"}},
            [2] = {{"Mace", "type", "mace1h"}},
            [3] = {{"Sword", "type", "sword1h"}},
            [4] = {{"Dagger", "type", "dagger"}},
            [5] = {{"Fist Weapon", "type", "fist"}},
            [6] = {{self.Colors.RED .. "Reset", "type", "reset"}}
        },

        ["WeaponType2H"] = {
            [1] = {{"Axe", "type", "axe2h"}},
            [2] = {{"Mace", "type", "mace2h"}},
            [3] = {{"Sword", "type", "sword2h"}},
            [4] = {{"Polearm", "type", "polearm"}},
            [5] = {{"Staff", "type", "staff"}},
            [6] = {{self.Colors.RED .. "Reset", "type", "reset"}}

        },

        ["WeaponTypeRanged"] = {
            [1] = {{"Bow", "type", "bows"}},
            [2] = {{"Gun", "type", "guns"}},
            [3] = {{"Crossbow", "type", "crossbows"}},
            [4] = {{"Wand", "type", "wand"}},
            [5] = {{"Thrown", "type", "thrown"}},
            [6] = {{self.Colors.RED .. "Reset", "type", "reset"}}
        }
    }

    local searchArguments = {
        Stats = {
            [1] = {
                ["Primary Stats"] = {{"Stamina", "sta"}, {"Strength", "str"}, {"Agility", "agi"}, {"Intellect", "int"}, {"Spirit", "spi"}}
            },
            [2] = {
                ["Secondary Stats"] = {{"Attack Power", "ap"}, {"Spell Power", "sp"}, {"Crit", "crit"}, {"Hit", "hit"}, {"Haste", "haste"}, {"Armor Pen", "arp"}, {"Spell Pen", "spp"}, {"Mana Per 5", "mp5"}}
            },
            [3] = {
                ["Defensive Stats"] = {{"Defense", "def"}, {"Dodge", "dodge"}, {"Parry", "parry"}, {"Block", "block"}, {"Block Value", "bv"}, {"Resilience", "res"}}
            },
            [4] = {
                ["Resistances"] = {{"Armor", "armor"}, {"Holy Resist", "resholy"}, {"Fire Resist", "resfire"}, {"Nature Resist", "resnat"}, {"Frost Resist", "resfrost"}, {"Shadow Resist", "resshad"},
                                {"Arcane Resist", "resarc"}}
            },
            [5] = {
                ["Sockets"] = {{"Any", "socket"}, {"Red Socket", "socketred"}, {"Blue Socket", "socketblue"}, {"Yellow Socket", "socketyellow"}, {"Meta Socket", "socketmeta"}}
            },
            [6] = {
                ["Other"] = {{"Required Level", "minlvl"}, {"Item Level", "ilvl"}}
            },

            [7] = {{self.Colors.RED .. "Reset", "reset"}}
        },

        Operators = {
            [1] = {{"Equals", "=", true}},
            [2] = {{"Greater Than", ">", true}},
            [3] = {{"Greater Than Or Equal", ">=", true}},
            [4] = {{"Less Than", "<", true}},
            [5] = {{"Less Than Or Equal", "<=", true}},
            [6] = {{"Not Equal", "<>", true}},
            [7] = {{self.Colors.RED .. "Reset", "reset", true}}
        }
    }

    searchPanel.searchOptions = {
        ["equip"] = "",
        ["type"] = "",
        ["difficulty"] = ""
    }

    local searchDefaultText = {
        ["equip"] = "Select Item Type",
        ["type"] = "Select Option",
        ["difficulty"] = "Select Difficulty"
    }

    local function searchMenuClick(Object, VariableToSet, VariableValue, ChildMenu, ChildMenuRegister)
        -- Setups child menus and sets search options to default
        if (ChildMenu ~= nil) then
            if (ChildMenuRegister == "Disable") then
                searchPanel.searchOptions[frameMenuList[ChildMenu][3]] = frameMenuList[ChildMenu][4]
                frameMenuList[ChildMenu][1]:Disable()
                -- Disable assigned children menus as well
                if (frameMenuList[ChildMenu][5]) then
                    frameMenuList[ChildMenu][5]:Disable()
                end
                if VariableValue == "reset" then
                    searchPanel.searchOptions[VariableToSet] = ""
                    Object[1]:SetText(searchDefaultText[VariableToSet])

                    frameMenuList[ChildMenu][1]:SetText(frameMenuList[ChildMenu][2])
                    return
                end
            else
                self:searchRegister(frameMenuList[ChildMenu][1], searchMenus[ChildMenuRegister])
                searchPanel.searchOptions[frameMenuList[ChildMenu][3]] = frameMenuList[ChildMenu][4]
                frameMenuList[ChildMenu][1]:Enable()
                frameMenuList[ChildMenu][1]:SetText(frameMenuList[ChildMenu][2])
                -- Disable assigned children menus as well
                if frameMenuList[ChildMenu][5] then
                    frameMenuList[ChildMenu][5]:Disable()
                end
            end
        end
        if VariableValue == "reset" then
            searchPanel.searchOptions[VariableToSet] = ""
            Object[1]:SetText(searchDefaultText[VariableToSet])
            return
        end
        searchPanel.searchOptions[VariableToSet] = VariableValue
        Object[1]:SetText(Object[2])
    end

    function self:searchRegister(DropDownObject, MenuOption)
        self.Dewdrop:Register(DropDownObject, 'point', function(parent)
            return "TOP", "BOTTOM"
        end, 'children', function(level, value)
            if level == 1 then
                if searchMenus then 
                    for _, v in ipairs(MenuOption) do
                        -- If a link to show a submenu
                        if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                            if v[1][1] ~= "" then
                                self.Dewdrop:AddLine("text", v[1][1], "textR", 1, "textG", 0.82, "textB", 0,
                                "func", function()
                                    searchMenuClick({DropDownObject, v[1][1]}, v[1][2], v[1][3], v[1][4], v[1][5])
                                end,
                                "notCheckable", true, "closeWhenClicked", true)
                            end
                        else
                            local lock = 0
                            -- If an entry linked to a subtable
                            for i, j in pairs(v) do
                                if lock == 0 then
                                    self.Dewdrop:AddLine("text", i, "textR", 1, "textG", 0.82, "textB", 0, "hasArrow", true, "value", j, "notCheckable", true)
                                    lock = 1
                                end
                            end
                        end
                    end
                end
                -- Close button
                self.Dewdrop:AddLine("text", "Close Menu", "textR", 0, "textG", 1, "textB", 1, "closeWhenClicked", true, "notCheckable", true)
            elseif level == 2 then
                if value then
                    for k, v in ipairs(value) do
                        self.Dewdrop:AddLine("text", v[1], "textR", 1, "textG", 0.82, "textB", 0,
                        "func", function()
                            searchMenuClick({DropDownObject, v[1]}, v[2], v[3], v[4], v[5])
                        end,
                        "notCheckable", true, "closeWhenClicked", true)
                    end
                end
            end
        end, "dontHook", true)
    end

    local function advSearchArgButtonToggle()
        if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
            searchPanel.addArg:Disable()
        else
            searchPanel.addArg:Enable()
        end

        if ACTIVE_ARGUMENT == 0 then
            searchPanel.remArg:Disable()
        else
            searchPanel.remArg:Enable()
        end
    end

    function self:AddArgumentContainer()
        if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
            advSearchArgButtonToggle()
            return
        end

        ACTIVE_ARGUMENT = ACTIVE_ARGUMENT + 1

        searchPanel.main[ACTIVE_ARGUMENT]:Show()
        searchPanel.main[ACTIVE_ARGUMENT]:SetText("Select Option")
        searchPanel.sub[ACTIVE_ARGUMENT]:Show()

        advSearchArgButtonToggle()
    end

    function self:RemoveArgumentContainer()
        if ACTIVE_ARGUMENT == 0 then
            advSearchArgButtonToggle()
            return
        end

        searchPanel.searchOptions["arg" .. ACTIVE_ARGUMENT] = ""
        searchPanel.searchOptions["arg" .. ACTIVE_ARGUMENT .. "op"] = ""

        searchPanel.main[ACTIVE_ARGUMENT]:Hide()
        searchPanel.sub[ACTIVE_ARGUMENT]:Disable()
        searchPanel.sub[ACTIVE_ARGUMENT]:Hide()
        searchPanel.value[ACTIVE_ARGUMENT]:Hide()

        ACTIVE_ARGUMENT = ACTIVE_ARGUMENT - 1
        advSearchArgButtonToggle()
    end

    local function searchArgumentClick(Object, VariableToSet, VariableValue, IsOperator)
        VariableToSet = tonumber(VariableToSet)
        if IsOperator and VariableValue == "reset" then
            searchPanel.searchOptions["arg" .. VariableToSet .. "op"] = ""

            searchPanel.value[VariableToSet]:SetText("")
            searchPanel.value[VariableToSet]:Hide()

            Object[1]:SetText("Select Option")
            self.Dewdrop:Close()
        elseif IsOperator then
            searchPanel.searchOptions["arg" .. VariableToSet .. "op"] = VariableValue

            searchPanel.value[VariableToSet]:Show()

            Object[1]:SetText(Object[2])
            self.Dewdrop:Close()
        elseif VariableValue == "reset" then
            searchPanel.sub[VariableToSet]:SetText("Select Option")
            searchPanel.sub[VariableToSet]:Disable()

            searchPanel.value[VariableToSet]:SetText("")
            searchPanel.value[VariableToSet]:Hide()

            searchPanel.searchOptions["arg" .. VariableToSet] = ""
            searchPanel.searchOptions["arg" .. VariableToSet .. "op"] = ""

            Object[1]:SetText("Select Option")
            self.Dewdrop:Close()
        else
            searchPanel.sub[VariableToSet]:SetText("Select Option")
            searchPanel.sub[VariableToSet]:Enable()
            searchPanel.searchOptions["arg" .. VariableToSet .. "op"] = ""

            searchPanel.value[VariableToSet]:SetText("")
            searchPanel.value[VariableToSet]:Hide()

            searchPanel.searchOptions["arg" .. VariableToSet] = VariableValue
            Object[1]:SetText(Object[2])
            self.Dewdrop:Close()
        end
    end

    local function searchArgumentRegister(DropDownObject, ArgumentCount, ArgumentMenu)
        self.Dewdrop:Register(DropDownObject, 'point', function(parent)
            return "TOP", "BOTTOM"
        end, 'children', function(level, value)
            if level == 1 then
                if searchArguments then
                    for k, v in ipairs(ArgumentMenu) do
                        -- If a link to show a submenu
                        if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                            local checked = false
                            if v[1][3] == "Submenu" then
                                self.Dewdrop:AddLine("text", v[1][1], "textR", 1, "textG", 0.82, "textB", 0,
                                "func", function() 
                                    searchArgumentClick({DropDownObject, v[1][1]}, ArgumentCount, v[1][2], v[1][3])
                                    end,
                                    "notCheckable", true)
                            elseif v[1][1] ~= "" then
                                self.Dewdrop:AddLine("text", v[1][1], "textR", 1, "textG", 0.82, "textB", 0,
                                "func", function() searchArgumentClick({DropDownObject, v[1][1]}, ArgumentCount, v[1][2], v[1][3])
                                end,
                                "notCheckable", true)
                            end
                        else
                            local lock = 0
                            -- If an entry linked to a subtable
                            for i, j in pairs(v) do
                                if lock == 0 then
                                    self.Dewdrop:AddLine("text", i, "textR", 1, "textG", 0.82, "textB", 0, "hasArrow", true, "value", j, "notCheckable", true)
                                    lock = 1
                                end
                            end
                        end
                    end
                end
                -- Close button
                self.Dewdrop:AddLine("text", "Close Menu", "textR", 0, "textG", 1, "textB", 1, "func", function()
                    self.Dewdrop:Close()
                end, "notCheckable", true)
            elseif level == 2 then
                if value then
                    for _, v in ipairs(value) do
                        if type(v) == "table" then
                            if (type(v[1]) == "string") then
                                -- If an entry to show a submenu
                                if v[4] == "Header" then
                                    self.Dewdrop:AddLine("text", v[1], "textR", 0.2, "textG", 0.82, "textB", 0.5, "func", function()
                                        searchArgumentClick({DropDownObject, v[1]}, ArgumentCount, v[2], v[3])
                                        end,
                                        "notCheckable", true)
                                elseif v[3] == "Submenu" then
                                    self.Dewdrop:AddLine("text", v[1], "textR", 1, "textG", 0.82, "textB", 0, "func", function()
                                        searchArgumentClick({DropDownObject, v[1]}, ArgumentCount, v[2], v[3])
                                        end,
                                        "notCheckable", true)
                                else
                                    self.Dewdrop:AddLine("text", v[1], "textR", 1, "textG", 0.82, "textB", 0, "notCheckable", true, "func",
                                    function() searchArgumentClick({DropDownObject, v[1]}, ArgumentCount, v[2], v[3]) end )
                                end
                            end
                        end
                    end
                end
                self.Dewdrop:AddLine("text", "Close Menu", "textR", 0, "textG", 1, "textB", 1, "func", function()
                    self.Dewdrop:Close()
                end, "notCheckable", true)
            end
        end, "dontHook", true)
    end

    function AtlasLoot:Search(searchString)

            if not searchString then return end

            searchString = strtrim(searchString)

            local function AppendSearchString(toAppend, str)
                if toAppend ~= "" then
                    toAppend = toAppend .. "&" .. str
                    return toAppend
                end

                return str
            end

            local function GetTextByName(name)
                if searchPanel[name] then
                    return searchPanel[name]:GetText()
                end

                return nil
            end

            local function FixRangedSlot(subType)
                if (subType == "wand" or subType == "gun" or subType == "crossbow") then
                    return "rangedright"
                elseif subType == "thrown" then
                    return "thrown"
                end
                return "ranged"
            end

            if searchPanel.searchOptions.equip ~= "" then
                if searchPanel.searchOptions.equip == "ranged" and searchPanel.searchOptions.type ~= "" then
                    searchPanel.searchOptions.equip = FixRangedSlot(searchPanel.searchOptions.type)
                end
                searchString = AppendSearchString(searchString, "slot=" .. searchPanel.searchOptions.equip)
            end

            if searchPanel.searchOptions.type ~= "" and searchPanel.searchOptions.type then
                searchString = AppendSearchString(searchString, "type=" .. searchPanel.searchOptions.type)
            end

            if searchPanel.searchOptions.difficulty ~= "" and searchPanel.searchOptions.difficulty ~= 2 then
                searchString = AppendSearchString(searchString, "dif=" .. searchPanel.searchOptions.difficulty)
            end

            if(not searchPanel.useleveltick:GetChecked()) then
                if (GetTextByName("levelmin") and GetTextByName("levelmin") ~= "") then
                    searchString = AppendSearchString(searchString, "minlvl>=" .. GetTextByName("levelmin"))
                end

                if (GetTextByName("levelmax") and GetTextByName("levelmax") ~= "") then
                    searchString = AppendSearchString(searchString, "minlvl<=" .. GetTextByName("levelmax"))
                end
            else
                searchString = AppendSearchString(searchString, "minlvl>=" .. UnitLevel("player"))
                searchString = AppendSearchString(searchString, "minlvl<=" .. UnitLevel("player"))
            end

            if (GetTextByName("ilevelmin") and GetTextByName("ilevelmin") ~= "") then
                searchString = AppendSearchString(searchString, "ilvl>=" .. GetTextByName("ilevelmin"))
            end

            if (GetTextByName("ilevelmax") and GetTextByName("ilevelmax") ~= "") then
                searchString = AppendSearchString(searchString, "ilvl<=" .. GetTextByName("ilevelmax"))
            end

            for i = 1, ACTIVE_ARGUMENT, 1 do
                if searchPanel.searchOptions["arg" .. i] ~= "" then
                    local arg = searchPanel.value[i]:GetText()
                    if searchPanel.searchOptions["arg" .. i .. "op"] == "" then
                        searchPanel.searchOptions["arg" .. i .. "op"] = ">"
                        arg = "0"
                    end
                    searchString = AppendSearchString(searchString, searchPanel.searchOptions["arg" .. i] .. searchPanel.searchOptions["arg" .. i .. "op"] .. arg)
                end
            end

        if self.selectedProfile.SearchAscensionDB then
            return OpenAscensionDBURL("?search="..searchString)
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
            DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED .. "AtlasLoot" .. ": " .. self.Colors.WHITE .. "You don't have any module selected to search on. Right click search to select modules the more selected the longer it will take to search")
            return
        end

        for _, cat in pairs(self.selectedProfile.SearchOn) do
            if type(cat) == "table" and cat[1] and not IsAddOnLoaded(cat[2]) then
                LoadAddOn(cat[2])
            end
        end

        doSearch(searchString)
    end

    self:searchRegister(searchPanel.equipbtn, searchMenus.Equip)

    for i = 1, MAX_ARGUMENTS do
        searchArgumentRegister(searchPanel.main[i], i, searchArguments.Stats)
        searchArgumentRegister(searchPanel.sub[i], i, searchArguments.Operators)
    end

    -- Reset Search options to defualt
        searchPanel.searchOptions = {
        ["equip"] = "",
        ["type"] = "",
        ["difficulty"] = ""
    }

    for i = 1, MAX_ARGUMENTS do
        searchPanel.searchOptions["arg" .. i] = ""
        searchPanel.searchOptions["arg" .. i .. "op"] = ""

        self:RemoveArgumentContainer()
    end

    searchPanel.levelmin:SetText("")
    searchPanel.levelmax:SetText("")
    searchPanel.ilevelmin:SetText("")
    searchPanel.ilevelmax:SetText("")
    searchPanel.equipbtn:SetText("Select Item Type")
    searchPanel.equipbtn.subbtn:Disable()
    searchPanel.equipbtn.subbtn:SetText("Select Option")
end