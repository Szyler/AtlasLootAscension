local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local MAX_ARGUMENTS = 6
local ACTIVE_ARGUMENT = 0

AtlasLoot.SearchMenus = { ArgumentMenus = {}, ArgumentSubMenus = {}}

local RED = "|cffff0000"

local FrameMenuList = {
    ["EquipSubMenu"] = {AtlasLoot.Dewdrop, "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton", "Select Option", "type", ""}
}

local AdvancedSearchMenus = {

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
        [12] = {{RED .. "Reset", "equip", "reset", "EquipSubMenu", "Disable"}}
    },

    ["ArmorType"] = {
        [1] = {{"Cloth", "type", "Cloth"}},
        [2] = {{"Leather", "type", "Leather"}},
        [3] = {{"Mail", "type", "Mail"}},
        [4] = {{"Plate", "type", "Plate"}},
        [5] = {{RED .. "Reset", "type", "reset"}}
    },

    ["RelicType"] = {
        [1] = {{"Idols", "type", "idol"}},
        [2] = {{"Libram", "type", "libram"}},
        [3] = {{"Totem", "type", "totem"}},
        [4] = {{"Sigil", "type", "sigil"}},
        [5] = {{RED .. "Reset", "type", "reset"}}
    },

    ["WeaponType1H"] = {
        [1] = {{"Axe", "type", "axe1h"}},
        [2] = {{"Mace", "type", "mace1h"}},
        [3] = {{"Sword", "type", "sword1h"}},
        [4] = {{"Dagger", "type", "dagger"}},
        [5] = {{"Fist Weapon", "type", "fist"}},
        [6] = {{RED .. "Reset", "type", "reset"}}
    },

    ["WeaponType2H"] = {
        [1] = {{"Axe", "type", "axe2h"}},
        [2] = {{"Mace", "type", "mace2h"}},
        [3] = {{"Sword", "type", "sword2h"}},
        [4] = {{"Polearm", "type", "polearm"}},
        [5] = {{"Staff", "type", "staff"}},
        [6] = {{RED .. "Reset", "type", "reset"}}

    },

    ["WeaponTypeRanged"] = {
        [1] = {{"Bow", "type", "bows"}},
        [2] = {{"Gun", "type", "guns"}},
        [3] = {{"Crossbow", "type", "crossbows"}},
        [4] = {{"Wand", "type", "wand"}},
        [5] = {{"Thrown", "type", "thrown"}},
        [6] = {{RED .. "Reset", "type", "reset"}}
    }
}

local AdvancedSearchArguments = {
    ["Arguments"] = {
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

        [7] = {{RED .. "Reset", "reset"}}
    },

    ["Operators"] = {
        [1] = {{"Equals", "=", true}},
        [2] = {{"Greater Than", ">", true}},
        [3] = {{"Greater Than Or Equal", ">=", true}},
        [4] = {{"Less Than", "<", true}},
        [5] = {{"Less Than Or Equal", "<=", true}},
        [6] = {{"Not Equal", "<>", true}},
        [7] = {{RED .. "Reset", "reset", true}}
    }
}

local AdvSearchOptions = {
    ["equip"] = "",
    ["type"] = "",
    ["difficulty"] = ""
}

function AtlasLoot:AdvancedSearchSetup()
    self:AdvancedSearchRegister(self.Dewdrop, AtlasLootDefaultFrame_AdvancedSearchPanel_EquipButton, AdvancedSearchMenus["Equip"])

    for n = 1, MAX_ARGUMENTS do
        self.SearchMenus.ArgumentMenus[n] = self.Dewdrop
        self.SearchMenus.ArgumentSubMenus[n] = self.Dewdrop

        self:AdvancedSearchArgumentRegister(self.SearchMenus.ArgumentMenus[n], _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(n)], tostring(n), AdvancedSearchArguments["Arguments"])
        self:AdvancedSearchArgumentRegister(self.SearchMenus.ArgumentSubMenus[n], _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(n) .. "Sub"], tostring(n),
                                                 AdvancedSearchArguments["Operators"])
    end

    -- Reset Search options to defualt
    self:AdvancedSearchReset()
end

function AtlasLoot:AdvancedSearchShow()
    if (AtlasLootDefaultFrame_AdvancedSearchPanel:IsVisible()) then
        self:AdvancedSearchClose()
        return
    end

    -- Hide all elements that could be in the AtlasTable
    _G["AtlasLootItemsFrame_NEXT"]:Hide()
    _G["AtlasLootItemsFrame_PREV"]:Hide()
    _G["AtlasLootItemsFrame_BACK"]:Hide()

    -- Hide the Filter Check-Box
    AtlasLootFilterCheck:Hide()

    for i = 1, 30, 1 do
        _G["AtlasLootItem_" .. i]:Hide()
    end

    AtlasLoot_BossName:SetText("Advanced Search")

    AtlasLootDefaultFrame_AdvancedSearchPanel:Show()

    self.CurrentType = "Search"
	self:ScrollFrameUpdate()
    self:SubTableScrollFrameUpdate("EmptyTable","AtlasLoot_Data")
end

function AtlasLoot:AdvancedSearchClose()
    AtlasLootDefaultFrame_AdvancedSearchPanel:Hide()
    self:ItemFrameRefresh()
end

function AtlasLoot:AdvancedSearchReset()
    AdvSearchOptions = {
        ["equip"] = "",
        ["type"] = "",
        ["difficulty"] = ""
    }

    for i = 1, MAX_ARGUMENTS do
        AdvSearchOptions["arg" .. tostring(i)] = ""
        AdvSearchOptions["arg" .. tostring(i) .. "op"] = ""

        self:RemoveArgumentContainer()
    end

    local expansionLevels = {60, 70, 80}

    AtlasLootDefaultFrame_AdvancedSearchPanel_LevelMin:SetText(expansionLevels[GetAccountExpansionLevel() + 1] - 5)
    AtlasLootDefaultFrame_AdvancedSearchPanel_LevelMax:SetText(expansionLevels[GetAccountExpansionLevel() + 1])
    AtlasLootDefaultFrame_AdvancedSearchPanel_iLevelMin:SetText("")
    AtlasLootDefaultFrame_AdvancedSearchPanel_iLevelMax:SetText("")

    AtlasLootDefaultFrame_AdvancedSearchPanel_EquipButton:SetText("Select Item Type")
    AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton:Disable()
    AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton:SetText("Select Option")
end

function AtlasLoot:AddArgumentContainer()
    if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
        self:AdvSearchArgButtonToggle()
        return
    end

    ACTIVE_ARGUMENT = ACTIVE_ARGUMENT + 1

    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT)]:Show()
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT)]:SetText("Select Option")
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT) .. "Sub"]:Show()

    self:AdvSearchArgButtonToggle()
end

function AtlasLoot:RemoveArgumentContainer()
    if ACTIVE_ARGUMENT == 0 then
        self:AdvSearchArgButtonToggle()
        return
    end

    AdvSearchOptions["arg" .. tostring(ACTIVE_ARGUMENT)] = ""
    AdvSearchOptions["arg" .. tostring(ACTIVE_ARGUMENT) .. "op"] = ""

    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT)]:Hide()
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT) .. "Sub"]:Disable()
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT) .. "Sub"]:Hide()
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT) .. "Value"]:Hide()

    ACTIVE_ARGUMENT = ACTIVE_ARGUMENT - 1
    self:AdvSearchArgButtonToggle()
end

function AtlasLoot:AdvSearchArgButtonToggle()
    if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
        AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerAddArgBtn:Disable()
    else
        AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerAddArgBtn:Enable()
    end

    if ACTIVE_ARGUMENT == 0 then
        AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerRemArgBtn:Disable()
    else
        AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerRemArgBtn:Enable()
    end
end

local AdvSearchDefaultText = {
    ["equip"] = "Select Item Type",
    ["type"] = "Select Option",
    ["difficulty"] = "Select Difficulty"
}

function AtlasLoot:AdvancedSearchMenuClick(Object, VariableToSet, VariableValue, ChildMenu, ChildMenuRegister)
    -- Setups child menus and sets search options to default
    if (ChildMenu ~= nil) then
        if (ChildMenuRegister == "Disable") then
            AdvSearchOptions[FrameMenuList[ChildMenu][4]] = FrameMenuList[ChildMenu][5]
            _G[FrameMenuList[ChildMenu][2]]:Disable()
            -- Disable assigned children menus as well
            if (FrameMenuList[ChildMenu][6]) then
                _G[FrameMenuList[ChildMenu][6]]:Disable()
            end
            if VariableValue == "reset" then
                AdvSearchOptions[VariableToSet] = ""
                Object[1]:SetText(AdvSearchDefaultText[VariableToSet])
                Object[2]:Close()

                _G[FrameMenuList[ChildMenu][2]]:SetText(FrameMenuList[ChildMenu][3])
                return
            end
        else
            self:AdvancedSearchRegister(FrameMenuList[ChildMenu][1], _G[FrameMenuList[ChildMenu][2]], AdvancedSearchMenus[ChildMenuRegister])
            AdvSearchOptions[FrameMenuList[ChildMenu][4]] = FrameMenuList[ChildMenu][5]
            _G[FrameMenuList[ChildMenu][2]]:Enable()
            _G[FrameMenuList[ChildMenu][2]]:SetText(FrameMenuList[ChildMenu][3])
            -- Disable assigned children menus as well
            if (FrameMenuList[ChildMenu][6]) then
                _G[FrameMenuList[ChildMenu][6]]:Disable()
            end
        end
    end
    if VariableValue == "reset" then
        AdvSearchOptions[VariableToSet] = ""
        Object[1]:SetText(AdvSearchDefaultText[VariableToSet])
        Object[2]:Close()
        return
    end
    AdvSearchOptions[VariableToSet] = VariableValue
    Object[1]:SetText(Object[3])
    Object[2]:Close()
end

function AtlasLoot:AdvancedSearchRegister(DropDown, DropDownObject, MenuOption)
    DropDown:Register(DropDownObject, 'point', function(parent)
        return "TOP", "BOTTOM"
    end, 'children', function(level, value)
        if level == 1 then
            if AdvancedSearchMenus then
                for k, v in ipairs(MenuOption) do
                    -- If a link to show a submenu
                    if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                        if v[1][1] ~= "" then
                            DropDown:AddLine('text', v[1][1], 'textR', 1, 'textG', 0.82, 'textB', 0,
                            'func', function()
                                self:AdvancedSearchMenuClick({DropDownObject, DropDown, v[1][1]}, v[1][2], v[1][3], v[1][4], v[1][5])
                            end,
                            'notCheckable', true)
                        end
                    else
                        local lock = 0
                        -- If an entry linked to a subtable
                        for i, j in pairs(v) do
                            if lock == 0 then
                                DropDown:AddLine('text', i, 'textR', 1, 'textG', 0.82, 'textB', 0, 'hasArrow', true, 'value', j, 'notCheckable', true)
                                lock = 1
                            end
                        end
                    end
                end
            end
            -- Close button
            DropDown:AddLine('text', AL["Close Menu"], 'textR', 0, 'textG', 1, 'textB', 1, 'func', function()
                DropDown:Close()
            end, 'notCheckable', true)
        elseif level == 2 then
            if value then
                for k, v in ipairs(value) do
                    DropDown:AddLine('text', v[1], 'textR', 1, 'textG', 0.82, 'textB', 0,
                    'func', function()
                        self:AdvancedSearchMenuClick({DropDownObject, DropDown, v[1]}, v[2], v[3], v[4], v[5])
                    end,
                    'notCheckable', true)
                end
            end
        end
    end, 'dontHook', true)
end

function AtlasLoot:AdvancedSearchArgumentClick(Object, VariableToSet, VariableValue, IsOperator)
    if IsOperator and VariableValue == "reset" then
        AdvSearchOptions["arg" .. VariableToSet .. "op"] = ""

        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:SetText("")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:Hide()

        Object[1]:SetText("Select Option")
        Object[2]:Close()
    elseif IsOperator then
        AdvSearchOptions["arg" .. VariableToSet .. "op"] = VariableValue

        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:Show()

        Object[1]:SetText(Object[3])
        Object[2]:Close()
    elseif VariableValue == "reset" then
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Sub"]:SetText("Select Option")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Sub"]:Disable()

        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:SetText("")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:Hide()

        AdvSearchOptions["arg" .. VariableToSet] = ""
        AdvSearchOptions["arg" .. VariableToSet .. "op"] = ""

        Object[1]:SetText("Select Option")
        Object[2]:Close()
    else
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Sub"]:SetText("Select Option")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Sub"]:Enable()
        AdvSearchOptions["arg" .. VariableToSet .. "op"] = ""

        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:SetText("")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:Hide()

        AdvSearchOptions["arg" .. VariableToSet] = VariableValue
        Object[1]:SetText(Object[3])
        Object[2]:Close()
    end
end

function AtlasLoot:AdvancedSearchArgumentRegister(DropDown, DropDownObject, ArgumentCount, ArgumentMenu)
    DropDown:Register(DropDownObject, 'point', function(parent)
        return "TOP", "BOTTOM"
    end, 'children', function(level, value)
        if level == 1 then
            if AdvancedSearchArguments then
                for k, v in ipairs(ArgumentMenu) do
                    -- If a link to show a submenu
                    if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                        local checked = false
                        if v[1][3] == "Submenu" then
                            DropDown:AddLine('text', v[1][1], 'textR', 1, 'textG', 0.82, 'textB', 0,
                            'func', function() 
                                self:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1][1]}, ArgumentCount, v[1][2], v[1][3])
                                end,
                                'notCheckable', true)
                        elseif v[1][1] ~= "" then
                            DropDown:AddLine('text', v[1][1], 'textR', 1, 'textG', 0.82, 'textB', 0,
                            'func', function() self:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1][1]}, ArgumentCount, v[1][2], v[1][3])
                            end,
                            'notCheckable', true)
                        end
                    else
                        local lock = 0
                        -- If an entry linked to a subtable
                        for i, j in pairs(v) do
                            if lock == 0 then
                                DropDown:AddLine('text', i, 'textR', 1, 'textG', 0.82, 'textB', 0, 'hasArrow', true, 'value', j, 'notCheckable', true)
                                lock = 1
                            end
                        end
                    end
                end
            end
            -- Close button
            DropDown:AddLine('text', AL["Close Menu"], 'textR', 0, 'textG', 1, 'textB', 1, 'func', function()
                DropDown:Close()
            end, 'notCheckable', true)
        elseif level == 2 then
            if value then
                for _, v in ipairs(value) do
                    if type(v) == "table" then
                        if (type(v[1]) == "string") then
                            local checked = false
                            -- If an entry to show a submenu
                            if v[4] == "Header" then
                                DropDown:AddLine('text', v[1], 'textR', 0.2, 'textG', 0.82, 'textB', 0.5, 'func', function()
                                    self:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1]}, ArgumentCount, v[2], v[3])
                                    end,
                                    'notCheckable', true)
                            elseif v[3] == "Submenu" then
                                DropDown:AddLine('text', v[1], 'textR', 1, 'textG', 0.82, 'textB', 0, 'func', function()
                                    self:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1]}, ArgumentCount, v[2], v[3])
                                    end,
                                    'notCheckable', true)
                            else
                                DropDown:AddLine('text', v[1], 'textR', 1, 'textG', 0.82, 'textB', 0, 'func', function()
                                    self:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1]}, ArgumentCount, v[2], v[3])
                                    end,
                                    'notCheckable', true)
                            end
                        end
                    end
                end
            end
            DropDown:AddLine('text', AL["Close Menu"], 'textR', 0, 'textG', 1, 'textB', 1, 'func', function()
                DropDown:Close()
            end, 'notCheckable', true)
        end
    end, 'dontHook', true)
end

function AtlasLoot:AdvancedSearch(Text)
    if not Text then
        return
    end
    Text = strtrim(Text)
    local advSearchString = Text or ""

    local function AppendSearchString(toAppend, str)
        if toAppend ~= "" then
            toAppend = toAppend .. "&" .. str
            return toAppend
        end

        return str
    end

    local function GetTextByName(name)
        if (_G["AtlasLootDefaultFrame_AdvancedSearchPanel_" .. name]) then
            return _G["AtlasLootDefaultFrame_AdvancedSearchPanel_" .. name]:GetText()
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

    if AdvSearchOptions["equip"] ~= "" then
        if AdvSearchOptions["equip"] == "ranged" and AdvSearchOptions["type"] ~= "" then
            AdvSearchOptions["equip"] = FixRangedSlot(AdvSearchOptions["type"])
        end
        advSearchString = AppendSearchString(advSearchString, "slot=" .. AdvSearchOptions["equip"])
    end

    if AdvSearchOptions["type"] ~= "" and AdvSearchOptions["type"] then
        advSearchString = AppendSearchString(advSearchString, "type=" .. AdvSearchOptions["type"])
    end

    if AdvSearchOptions["difficulty"] ~= "" and AdvSearchOptions["difficulty"] ~= 2 then
        advSearchString = AppendSearchString(advSearchString, "dif=" .. AdvSearchOptions["difficulty"])
    end

    if(not AtlasLootDefaultFrame_AdvancedSearchPanel_LevelToggle:GetChecked()) then
        if (GetTextByName("LevelMin") and GetTextByName("LevelMin") ~= "") then
            advSearchString = AppendSearchString(advSearchString, "minlvl>=" .. GetTextByName("LevelMin"))
        end

        if (GetTextByName("LevelMax") and GetTextByName("LevelMax") ~= "") then
            advSearchString = AppendSearchString(advSearchString, "minlvl<=" .. GetTextByName("LevelMax"))
        end
    else
        advSearchString = AppendSearchString(advSearchString, "minlvl>=" .. UnitLevel("player"))
        advSearchString = AppendSearchString(advSearchString, "minlvl<=" .. UnitLevel("player"))
    end

    if (GetTextByName("iLevelMin") and GetTextByName("iLevelMin") ~= "") then
        advSearchString = AppendSearchString(advSearchString, "ilvl>=" .. GetTextByName("iLevelMin"))
    end

    if (GetTextByName("iLevelMax") and GetTextByName("iLevelMax") ~= "") then
        advSearchString = AppendSearchString(advSearchString, "ilvl<=" .. GetTextByName("iLevelMax"))
    end

    for i = 1, ACTIVE_ARGUMENT, 1 do
        if AdvSearchOptions["arg" .. i] ~= "" then
            local arg = _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(i) .. "Value"]:GetText()
            if AdvSearchOptions["arg" .. i .. "op"] == "" then
                AdvSearchOptions["arg" .. i .. "op"] = ">"
                arg = "0"
            end
            advSearchString = AppendSearchString(advSearchString, AdvSearchOptions["arg" .. i] .. AdvSearchOptions["arg" .. i .. "op"] .. arg)
        end
    end

    AtlasLootDefaultFrame_AdvancedSearchPanel:Hide()
    self:Search(string.lower(advSearchString))
end
