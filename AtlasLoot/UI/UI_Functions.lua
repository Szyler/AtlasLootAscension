local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


--[[
Functions:
self:ShowLootTab()
moduleMenuClick(tablename, text, tabletype, tabletype2)
subMenuClick(tablename)
expansionMenuClick(tablename, text)
self:ExpansionMenuOpen()
self:SubMenuOpen(loottable)
self:ModuleMenuOpen()
]]

function AtlasLoot:InitializeUIFunctions()

    --Called whenever the loot browser is shown and sets up buttons and loot tables
    function self:ShowLootTab()
        --Definition of where I want the loot table to be shown
        --Set the item table to the loot table
        --Show the last displayed loot table
        self.ui.tabs.currentTab = "Loot"
        local lastboss = self.db.profile.LastBoss[self.Expac]
        if self.selectedProfile.AutoCurrentInstance and self:ShowInstance() then
            return
        elseif lastboss and (lastboss[4] or (lastboss[6] == "Ascension Vanity Collection")) then
            self.currentTable = lastboss[5]
            self.lastModule = lastboss[4]
            self.moduleName = lastboss[6]
            self.ui.moduelMenuButton:SetText(self.moduleName)
            self:ShowItemsFrame(lastboss[1], "itemData", lastboss[3], lastboss[7])
        else
            self:ShowItemsFrame("EmptyTable", "itemData", 1, 1)
        end
    end

    -- Show the Instance you are in
    function self:ShowInstance()
        local zone = GetMapInfo() or "noZone"
        local instance = self:GetMapInstance(zone)
        if instance then
            local sourceData = self:GetSourcesExtendedInfo(instance)
            self.currentTable = sourceData.CollectionModuleName
            self.lastModule = sourceData.Module
            self:ShowItemsFrame(instance, "itemData", 1, 1)
            return true
        end
    end

    -- Used to strip the expansion out of the dataID
    local function cleanDataID(newID, listnum)
        local cleanlist = {	[1] = {"CLASSIC", "TBC", "WRATH"} }
        for i = 1, #cleanlist[listnum] do
            newID = gsub(newID, cleanlist[listnum][i], "")
        end
        return newID
    end

    --[[
    moduleMenuClick(tablename, text, tabletype):
    tablename - Name of the loot table in the database
    text - Heading for the loot table
    Called when a button in AtlasLoot.Dewdrop is clicked
    ]]
    local function moduleMenuClick(tablename, text, tablenum)
        self.filterEnable = false
        self.backEnabled = false
        self.moduleName = text
        self.ui.filterButton:SetChecked(false)
        tablename = tablename .. self.Expac
        self.currentTable = tablename
        tablenum = tablenum or 1
        self.lastModule = AtlasLoot.ui.menus.collection[tablename].Module
        self.ui.moduelMenuButton:SetText(text)
            local lasttable = self.db.profile.savedState[self.currentTable]
            if lasttable then
                self:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3], lasttable[7])
            else
                self:ShowItemsFrame(tablename, "itemData", tablenum, 1)
            end
    end

    --[[
    self:ModuleMenuOpen:
    Constructs the main category menu from a tiered table
    ]]
    function self:ModuleMenuOpen()
        local menuList = {dividerLength = 40,{{text = "Modules", isTitle = true}}}
            for _, menu in ipairs(AtlasLoot.ui.menus.modules) do
            table.insert(menuList[1], {text = menu[1], func = function() moduleMenuClick(menu[2], menu[1], menu[3]) end})
            end
        self:OpenDewdropMenu(self.ui.moduelMenuButton, menuList)
    end

    --[[
    subMenuClick(tablename):
    tablename - Name of the loot table in the database
    Called when a button in AtlasLoot.DewdropSubMenu is clicked
    ]]
    local function subMenuClick(tablename, onDamand)
        self.backEnabled = false
        if  onDamand then
            self:CreateOnDemandLootTable(onDamand[1], onDamand[2], onDamand[3])
        else
            --Show the select loot table
            local tablenum = self.ui.menus.data[tablename].Loadfirst or 1
            --Show the table that has been selected
            self:ShowItemsFrame(tablename, "itemData", tablenum, 1)
        end
    end

    --[[
    self:SubMenuOpen(loottable):
    loottable - Table defining the sub menu
    Generates the sub menu needed by passing a table of loot tables and titles
    ]]
    function self:SubMenuOpen(loottable)
        local menuList = {dividerLength = 50, {{text = "Categorys", isTitle = true}}, {}}
            for _, menu in pairs(loottable) do
                if type(menu) == "table" then
                    if type(menu[2]) == "table" then
                        table.insert(menuList[1], {text = menu[1], value = menu[1], hasArrow = true})
                        for _,submenu in pairs(menu[3]) do
                            if submenu.Header then
                                table.insert(menuList[2], {text = self.Colors.GREEN..submenu.Header, func = function() subMenuClick(submenu[1], submenu.OnDamand) end, isTitle = true, show = menu[1], divider = true} )
                            elseif type(submenu) == "table" then
                                local name = self.ui.menus.data[submenu[1]] and self.ui.menus.data[submenu[1]].name or (submenu.OnDamand and submenu.OnDamand[3]) or ""
                                table.insert(menuList[2], {text = name, func = function() subMenuClick(submenu[1], submenu.OnDamand) end, show = menu[1]})
                            end
                        end
                    elseif menu.Header then
                        table.insert(menuList[1], {text = self.Colors.GREEN..menu.Header, func = function() subMenuClick(menu[1]) end, isTitle = true, divider = true})
                    else
                        local name = self.ui.menus.data[menu[1]] and self.ui.menus.data[menu[1]].Name or (menu.OnDamand and menu.OnDamand[3]) or ""
                        table.insert(menuList[1], {text = name, func = function() subMenuClick(menu[1], menu.OnDamand) end})
                    end
                end
            end
        self:OpenDewdropMenu(self.ui.submenuButton, menuList)
    end

    --[[
    self:expansionMenuClick(expansion, name):
    expansion - expansion to load
    name - label for the expansion
    Called when a button in expansionMenuClick is clicked
    ]]
    local function expansionMenuClick(expansion, name)
        self.backEnabled = false
        AtlasLoot_ExpansionMenu:SetText(self:FixText(name))
        self.Expac = expansion
        if self.currentTable then
            self.currentTable = cleanDataID(self.currentTable, 1) .. self.Expac
            local tablename = AtlasLoot.ui.menus.collection[self.currentTable][1][2]
            local lasttable = self.db.profile.savedState[self.currentTable]
            if lasttable then
                self:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3], lasttable[7])
            else
                local tablenum = self.ui.menus.data[tablename].Loadfirst or 1
                self:ShowItemsFrame(tablename, "itemData", tablenum, 1)
            end
        end
    end

    --[[
    self:ExpansionMenuOpen():
    Adds expansion menu from expansion table in mainmenus.lua
    ]]
    function self:ExpansionMenuOpen(btn)
        local menuList = {{{text = "Expansions", isTitle = true}}}
            for _,v in ipairs(AtlasLoot.ui.menus.expansion) do
                if type(v) == "table" then
                    table.insert(menuList[1], {text = v[1], func = function() expansionMenuClick(v[2], v[1]) end})
                end
            end
        self:OpenDewdropMenu(btn, menuList)
    end

    function self:UpdateLootBrowserScale()
        self.ui:SetScale(self.selectedProfile.LootBrowserScale)
    end

    function self:FavoritesOnLeave()
            GameTooltip:Hide()
            if not GetMouseFocus() then return end
            local focus = GetMouseFocus():GetName()
            if focus ~= "AtlasLoot_FavoritesPopupFrame" and focus ~= self.ui.favoritesButton and focus ~= "AtlasLoot_Preset1" and focus ~= "AtlasLoot_Preset2" and focus ~= "AtlasLoot_Preset3" and focus ~= "AtlasLoot_Preset4"  then
                self.ui.favoritesPopupFrame:Hide()
            end
        end

    function self:FavoritesOnEnter(button)
        if AtlasLootCharDB.QuickLooks[button.num] then
            self:SetGameTooltip(button,AtlasLootCharDB.QuickLooks[button.num][6])
        end
    end

    function self:FavoritesOnClick(button, buttonClick)
        if buttonClick == "RightButton" and IsAltKeyDown() then
            self:SetFavorites(button.num)
        else
            local favButton = AtlasLootCharDB.QuickLooks[button.num]
            if favButton then
                button.lastModule = favButton[4]
                button.currentTable = favButton[5]
                if favButton[2] == "AtlasLootWishList" then
                    self:ShowWishList(favButton[3])
                else
                    self:ShowItemsFrame(favButton[1], favButton[2], favButton[3], favButton[4])
                end
            end
        end
    end

    function self:SetUITab()
        for _, tab in pairs(self.ui.tabs) do
            if type(tab) ~= "string" then
                if tab.name == self.ui.tabs.currentTab then
                    self.ui.tabs[self.ui.tabs.currentTab].tabButton:SetChecked(true)
                    self.ui.tabs[self.ui.tabs.currentTab].tabButton:UpdateButton()
                else
                    tab.tabButton:SetChecked(false)
                    tab.tabButton:UpdateButton()
                end
            end
        end
    end

    function self:ShowTab(tabName)
        if not self.ui.tabs[tabName] then return end
        self.ui.tabs[tabName]:onClick()
    end

    function self:FrameOpaqueToogle()
        local texture = self.selectedProfile.Opaque and 1 or 0.05
        self.ui.tabs.Loot.TableScrollFrame.Back:SetTexture(0, 0, 0, texture)
        self.ui.difficultyScrollFrame.Back:SetTexture(0, 0, 0, texture)
        self.ui.tabs.Loot.Back:SetTexture(0, 0, 0, texture)
    end
end

AtlasLoot:InitializeUIFunctions()