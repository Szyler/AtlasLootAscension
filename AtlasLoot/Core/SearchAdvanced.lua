local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local MAX_ARGUMENTS = 6
local ACTIVE_ARGUMENT = 0

function AtlasLoot:InitializeAdvancedSearch()

local frameMenuList = {
    ["EquipSubMenu"] = {self.searchPanel.equipbtn.subbtn, "Select Option", "type", ""}
}

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

local searchOptions = {
    ["equip"] = "",
    ["type"] = "",
    ["difficulty"] = ""
}

function AtlasLoot:AdvancedSearchSetup()
    self:AdvancedSearchRegister(self.searchPanel.equipbtn, searchMenus.Equip)

    for i = 1, MAX_ARGUMENTS do
        self:AdvancedSearchArgumentRegister(self.searchPanel.main[i], i, searchArguments.Stats)
        self:AdvancedSearchArgumentRegister(self.searchPanel.sub[i], i, searchArguments.Operators)
    end

    -- Reset Search options to defualt
    self:AdvancedSearchReset()
end

function AtlasLoot:AdvancedSearchShow()
    if self.searchPanel:IsVisible() then
        self:AdvancedSearchClose()
        return
    end

    -- Hide all elements that could be in the AtlasTable
    self:ToggleNavigationButtonsVisibility()

    -- Hide the Filter Check-Box
    self.ui.filterButton:Hide()

    self.itemframe:Hide()

    self.searchPanel:Show()

    self.CurrentType = "Search"
	self:ScrollFrameUpdate()
    self:SubTableScrollFrameUpdate("EmptyTable","AtlasLoot_Data")
end

function AtlasLoot:AdvancedSearchClose()
    self.searchPanel:Hide()
    self.itemframe:Show()
    self:ItemFrameRefresh()
end

function AtlasLoot:AdvancedSearchReset()
    searchOptions = {
        ["equip"] = "",
        ["type"] = "",
        ["difficulty"] = ""
    }

    for i = 1, MAX_ARGUMENTS do
        searchOptions["arg" .. i] = ""
        searchOptions["arg" .. i .. "op"] = ""

        self:RemoveArgumentContainer()
    end

    local expansionLevels = {60, 70, 80}

    self.searchPanel.levelmin:SetText(expansionLevels[GetAccountExpansionLevel() + 1] - 5)
    self.searchPanel.levelmax:SetText(expansionLevels[GetAccountExpansionLevel() + 1])
    self.searchPanel.ilevelmin:SetText("")
    self.searchPanel.ilevelmax:SetText("")

    self.searchPanel.equipbtn:SetText("Select Item Type")
    self.searchPanel.equipbtn.subbtn:Disable()
    self.searchPanel.equipbtn.subbtn:SetText("Select Option")
end

function AtlasLoot:AddArgumentContainer()
    if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
        self:AdvSearchArgButtonToggle()
        return
    end

    ACTIVE_ARGUMENT = ACTIVE_ARGUMENT + 1

    self.searchPanel.main[ACTIVE_ARGUMENT]:Show()
    self.searchPanel.main[ACTIVE_ARGUMENT]:SetText("Select Option")
    self.searchPanel.sub[ACTIVE_ARGUMENT]:Show()

    self:AdvSearchArgButtonToggle()
end

function AtlasLoot:RemoveArgumentContainer()
    if ACTIVE_ARGUMENT == 0 then
        self:AdvSearchArgButtonToggle()
        return
    end

    searchOptions["arg" .. ACTIVE_ARGUMENT] = ""
    searchOptions["arg" .. ACTIVE_ARGUMENT .. "op"] = ""

    self.searchPanel.main[ACTIVE_ARGUMENT]:Hide()
    self.searchPanel.sub[ACTIVE_ARGUMENT]:Disable()
    self.searchPanel.sub[ACTIVE_ARGUMENT]:Hide()
    self.searchPanel.value[ACTIVE_ARGUMENT]:Hide()

    ACTIVE_ARGUMENT = ACTIVE_ARGUMENT - 1
    self:AdvSearchArgButtonToggle()
end

function AtlasLoot:AdvSearchArgButtonToggle()
    if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
        self.searchPanel.addArg:Disable()
    else
        self.searchPanel.addArg:Enable()
    end

    if ACTIVE_ARGUMENT == 0 then
        self.searchPanel.remArg:Disable()
    else
        self.searchPanel.remArg:Enable()
    end
end

local searchDefaultText = {
    ["equip"] = "Select Item Type",
    ["type"] = "Select Option",
    ["difficulty"] = "Select Difficulty"
}

function AtlasLoot:AdvancedSearchMenuClick(Object, VariableToSet, VariableValue, ChildMenu, ChildMenuRegister)
    -- Setups child menus and sets search options to default
    if (ChildMenu ~= nil) then
        if (ChildMenuRegister == "Disable") then
            searchOptions[frameMenuList[ChildMenu][3]] = frameMenuList[ChildMenu][4]
            frameMenuList[ChildMenu][1]:Disable()
            -- Disable assigned children menus as well
            if (frameMenuList[ChildMenu][5]) then
                frameMenuList[ChildMenu][5]:Disable()
            end
            if VariableValue == "reset" then
                searchOptions[VariableToSet] = ""
                Object[1]:SetText(searchDefaultText[VariableToSet])

                frameMenuList[ChildMenu][1]:SetText(frameMenuList[ChildMenu][2])
                return
            end
        else
            self:AdvancedSearchRegister(frameMenuList[ChildMenu][1], searchMenus[ChildMenuRegister])
            searchOptions[frameMenuList[ChildMenu][3]] = frameMenuList[ChildMenu][4]
            frameMenuList[ChildMenu][1]:Enable()
            frameMenuList[ChildMenu][1]:SetText(frameMenuList[ChildMenu][2])
            -- Disable assigned children menus as well
            if frameMenuList[ChildMenu][5] then
                frameMenuList[ChildMenu][5]:Disable()
            end
        end
    end
    if VariableValue == "reset" then
        searchOptions[VariableToSet] = ""
        Object[1]:SetText(searchDefaultText[VariableToSet])
        return
    end
    searchOptions[VariableToSet] = VariableValue
    Object[1]:SetText(Object[2])
end

function AtlasLoot:AdvancedSearchRegister(DropDownObject, MenuOption)
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
                                self:AdvancedSearchMenuClick({DropDownObject, v[1][1]}, v[1][2], v[1][3], v[1][4], v[1][5])
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
            self.Dewdrop:AddLine("text", AL["Close Menu"], "textR", 0, "textG", 1, "textB", 1, "closeWhenClicked", true, "notCheckable", true)
        elseif level == 2 then
            if value then
                for k, v in ipairs(value) do
                    self.Dewdrop:AddLine("text", v[1], "textR", 1, "textG", 0.82, "textB", 0,
                    "func", function()
                        self:AdvancedSearchMenuClick({DropDownObject, v[1]}, v[2], v[3], v[4], v[5])
                    end,
                    "notCheckable", true, "closeWhenClicked", true)
                end
            end
        end
    end, "dontHook", true)
end

function AtlasLoot:AdvancedSearchArgumentClick(Object, VariableToSet, VariableValue, IsOperator)
    VariableToSet = tonumber(VariableToSet)
    if IsOperator and VariableValue == "reset" then
        searchOptions["arg" .. VariableToSet .. "op"] = ""

        self.searchPanel.value[VariableToSet]:SetText("")
        self.searchPanel.value[VariableToSet]:Hide()

        Object[1]:SetText("Select Option")
        self.Dewdrop:Close()
    elseif IsOperator then
        searchOptions["arg" .. VariableToSet .. "op"] = VariableValue

        self.searchPanel.value[VariableToSet]:Show()

        Object[1]:SetText(Object[2])
        self.Dewdrop:Close()
    elseif VariableValue == "reset" then
        self.searchPanel.sub[VariableToSet]:SetText("Select Option")
        self.searchPanel.sub[VariableToSet]:Disable()

        self.searchPanel.value[VariableToSet]:SetText("")
        self.searchPanel.value[VariableToSet]:Hide()

        searchOptions["arg" .. VariableToSet] = ""
        searchOptions["arg" .. VariableToSet .. "op"] = ""

        Object[1]:SetText("Select Option")
        self.Dewdrop:Close()
    else
        self.searchPanel.sub[VariableToSet]:SetText("Select Option")
        self.searchPanel.sub[VariableToSet]:Enable()
        searchOptions["arg" .. VariableToSet .. "op"] = ""

        self.searchPanel.value[VariableToSet]:SetText("")
        self.searchPanel.value[VariableToSet]:Hide()

        searchOptions["arg" .. VariableToSet] = VariableValue
        Object[1]:SetText(Object[2])
        self.Dewdrop:Close()
    end
end

function AtlasLoot:AdvancedSearchArgumentRegister(DropDownObject, ArgumentCount, ArgumentMenu)
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
                                self:AdvancedSearchArgumentClick({DropDownObject, v[1][1]}, ArgumentCount, v[1][2], v[1][3])
                                end,
                                "notCheckable", true)
                        elseif v[1][1] ~= "" then
                            self.Dewdrop:AddLine("text", v[1][1], "textR", 1, "textG", 0.82, "textB", 0,
                            "func", function() self:AdvancedSearchArgumentClick({DropDownObject, v[1][1]}, ArgumentCount, v[1][2], v[1][3])
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
            self.Dewdrop:AddLine("text", AL["Close Menu"], "textR", 0, "textG", 1, "textB", 1, "func", function()
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
                                    self:AdvancedSearchArgumentClick({DropDownObject, v[1]}, ArgumentCount, v[2], v[3])
                                    end,
                                    "notCheckable", true)
                            elseif v[3] == "Submenu" then
                                self.Dewdrop:AddLine("text", v[1], "textR", 1, "textG", 0.82, "textB", 0, "func", function()
                                    self:AdvancedSearchArgumentClick({DropDownObject, v[1]}, ArgumentCount, v[2], v[3])
                                    end,
                                    "notCheckable", true)
                            else
                                self.Dewdrop:AddLine("text", v[1], "textR", 1, "textG", 0.82, "textB", 0, "notCheckable", true, "func",
                                function() self:AdvancedSearchArgumentClick({DropDownObject, v[1]}, ArgumentCount, v[2], v[3]) end )
                            end
                        end
                    end
                end
            end
            self.Dewdrop:AddLine("text", AL["Close Menu"], "textR", 0, "textG", 1, "textB", 1, "func", function()
                self.Dewdrop:Close()
            end, "notCheckable", true)
        end
    end, "dontHook", true)
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
        if self.searchPanel[name] then
            return self.searchPanel[name]:GetText()
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

    if searchOptions.equip ~= "" then
        if searchOptions.equip == "ranged" and searchOptions.type ~= "" then
            searchOptions.equip = FixRangedSlot(searchOptions.type)
        end
        advSearchString = AppendSearchString(advSearchString, "slot=" .. searchOptions.equip)
    end

    if searchOptions.type ~= "" and searchOptions.type then
        advSearchString = AppendSearchString(advSearchString, "type=" .. searchOptions.type)
    end

    if searchOptions.difficulty ~= "" and searchOptions.difficulty ~= 2 then
        advSearchString = AppendSearchString(advSearchString, "dif=" .. searchOptions.difficulty)
    end

    if(not self.searchPanel.useleveltick:GetChecked()) then
        if (GetTextByName("levelmin") and GetTextByName("levelmin") ~= "") then
            advSearchString = AppendSearchString(advSearchString, "minlvl>=" .. GetTextByName("levelmin"))
        end

        if (GetTextByName("levelmax") and GetTextByName("levelmax") ~= "") then
            advSearchString = AppendSearchString(advSearchString, "minlvl<=" .. GetTextByName("levelmax"))
        end
    else
        advSearchString = AppendSearchString(advSearchString, "minlvl>=" .. UnitLevel("player"))
        advSearchString = AppendSearchString(advSearchString, "minlvl<=" .. UnitLevel("player"))
    end

    if (GetTextByName("ilevelmin") and GetTextByName("ilevelmin") ~= "") then
        advSearchString = AppendSearchString(advSearchString, "ilvl>=" .. GetTextByName("ilevelmin"))
    end

    if (GetTextByName("ilevelmax") and GetTextByName("ilevelmax") ~= "") then
        advSearchString = AppendSearchString(advSearchString, "ilvl<=" .. GetTextByName("ilevelmax"))
    end

    for i = 1, ACTIVE_ARGUMENT, 1 do
        if searchOptions["arg" .. i] ~= "" then
            local arg = self.searchPanel.value[i]:GetText()
            if searchOptions["arg" .. i .. "op"] == "" then
                searchOptions["arg" .. i .. "op"] = ">"
                arg = "0"
            end
            advSearchString = AppendSearchString(advSearchString, searchOptions["arg" .. i] .. searchOptions["arg" .. i .. "op"] .. arg)
        end
    end

    self.searchPanel:Hide()
    self:Search(string.lower(advSearchString))
end

end
