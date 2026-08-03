local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
AtlasLoot.Search = {parent = AtlasLoot}
local Search = AtlasLoot.Search
local MAX_ARGUMENTS = 6
local ACTIVE_ARGUMENT = 0

function AtlasLoot:InitializeSearch()

    local searchPanel = self.ui.tabs.Search

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

    local function isAnyModuleEnabled()
        for _, enabled in pairs(self.selectedProfile.SearchOn) do
            if enabled then
                return true
            end
        end
    end

    local function isItemStatMatch(itemLink) 
        local itemStats = GetItemStats(itemLink) 
        local statArguments = self.Search.searchParameters.statArguments 

        -- If no stat filters are defined, it's an automatic match
        if not statArguments or #statArguments == 0 then
            return true
        end

        -- Loop through every argument; all must pass
        for _, argument in ipairs(statArguments) do 
            local itemStatValue = itemStats[argument.stat] 

            if argument.comparator and argument.value then
                -- Fallback flag if the comparator string is invalid
                local currentMatch = false

                if argument.comparator == "Equals" then 
                    currentMatch = (itemStatValue == argument.value)
                elseif argument.comparator == "Greater Than" then 
                    currentMatch = (itemStatValue and itemStatValue > argument.value)
                elseif argument.comparator == "Greater Than Or Equal" then 
                    currentMatch = (itemStatValue and itemStatValue >= argument.value)
                elseif argument.comparator == "Less Than" then 
                    currentMatch = (itemStatValue and itemStatValue < argument.value)
                elseif argument.comparator == "Less Than Or Equal" then 
                    currentMatch = (itemStatValue and itemStatValue <= argument.value)
                elseif argument.comparator == "Not Equal" then 
                    currentMatch = (itemStatValue ~= argument.value)
                end

                -- If this specific stat requirement fails, fail the whole item immediately
                if not currentMatch then
                    return false
                end

            elseif argument.comparator == nil and argument.value == nil then
                -- If the argument just checks for the presence of the stat
                if not itemStatValue then 
                    return false
                end
            else
                -- Mismatched arguments (e.g., comparator exists but value doesn't)
                return false
            end
        end

        -- If the loop finishes without hitting a return false, all stats matched
        return true
    end

    local function isItemLevelMatch(itemLevel)
        local iLevelMin = self.Search.searchParameters.ilevelmin
        local iLevelMax = self.Search.searchParameters.ilevelmax
        if (iLevelMin and iLevelMax) and iLevelMin <= itemLevel and iLevelMax >= itemLevel or
            (iLevelMin and iLevelMax == nil) and iLevelMin <= itemLevel or
            (iLevelMax == nil and iLevelMin == nil) then
            return true
        end
        return false
    end

    local function isRequiredLevelMatch(itemID)
        local levelMin = self.Search.searchParameters.levelmin
        local levelMax = self.Search.searchParameters.levelmax
        if (levelMax == nil and levelMin == nil) then return true end
        local item = {GetItemInfo(itemID)}
        local itemRequiredLevel = item[5]
        if (levelMin and levelMax) and levelMin <= itemRequiredLevel and levelMax >= itemRequiredLevel or
            (levelMin and levelMax == nil) and levelMin <= itemRequiredLevel then
            return true
        end
        return false
    end

    local function isSubClassMatch(classID, subClassID)
        if self.Search.searchParameters.subClass == nil then return true end
        local subClassName = AtlasLoot.ItemUtil:GetSubClassName(classID, subClassID)
        return self.Search.searchParameters.subClass == subClassName and true or false
    end

    local function isIteminventoryTypeMatch(itemEquipLoc)
        if self.Search.searchParameters.type == nil then return true end
        return self.Search.searchParameters.type == itemEquipLoc and true or false
    end

    local function nameMatches(searchText, itemDetails)
        return string.find(string.lower(itemDetails.name), string.lower(searchText))
    end

    local function queryMatchesAllParameters(searchText, itemDetails)
        if not nameMatches(searchText,itemDetails) then
            return false
        end
        if not isIteminventoryTypeMatch(itemDetails.inventoryType) then
            return false
        end
        if not isSubClassMatch(itemDetails.classID, itemDetails.subClassID) then
            return false
        end
        if not isItemLevelMatch(itemDetails.itemLevel) then
            return false
        end
        if not isRequiredLevelMatch(itemDetails.itemID) then
            return false
        end
        if not isItemStatMatch(itemDetails.link) then
            return false
        end

        return true
    end

    local newTable = {{}}
    local searchIDs = {}
    local function addItemToSearchResult(item, dataSource, dataID, tableNum)
        local itemData = self:CloneTable(item)
        if item.itemID and not searchIDs[item.itemID] then
            if #newTable[#newTable] >= 30 then
                table.insert(newTable, {})
            end
            itemData.sourcePage = {{dataID, dataSource, tableNum}, "Source"}
            table.insert(newTable[#newTable], itemData)

            searchIDs[item.itemID] = {newTable, #newTable}
            AtlasLootCharDB.SearchResult[1] = newTable
        end
    end

    local showSearch
    local function processItem(data)
        if not data and not data[1] then return end
        local itemData, dataID, tableNum, searchText = unpack(data[1])
        if type(itemData) == "table" then
            local itemID = itemData.itemID
            local spellID = itemData.spellID
            if spellID then
                self:ItemsLoading(-1)
                local spellName = GetSpellInfo(spellID)
                if nameMatches(spellName, searchText) then
                    addItemToSearchResult(itemData, "itemData", dataID, tableNum)
                    if not showSearch then
                        showSearchResult()
                        showSearch = true
                    end
                    self:ItemFrameRefresh()
                end
            elseif itemID then
                local function nextItem(item)
                    self:ItemsLoading(-1)
                    local itemDetails = self.ItemUtil:GetItemInfo(itemID)
                    if not itemDetails.name then return end
                    if queryMatchesAllParameters(searchText, itemDetails) then
                        addItemToSearchResult(itemData, "itemData", dataID, tableNum)
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
                    if not item:GetInfo() then
                        item:ContinueOnLoad(function(item)
                            nextItem(item)
                        end)
                        nextItem(item)
                    else
                        nextItem(item)
                    end
                    nextItem(item)
                end
            end
        end
    end

    local itemList = {}

    local function RunQuary()

        local searchString = strtrim(self.Search.searchParameters.searchString)
        if not searchString then return end

        if not isAnyModuleEnabled() then
            DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED .. "AtlasLoot" .. ": " .. self.Colors.WHITE .. "You don't have any module selected to search on. Right click search to select modules the more selected the longer it will take to search")
            return
        end

        AtlasLootCharDB.SearchResult = {Name = "Search Results" , Type = "Search", {}}
        newTable = {{}}
        searchIDs = {}
        showSearch = false

        wipe(itemList)

        for dataID, data in pairs(self.data.item) do
            local extendedInfo = self:GetSourcesExtendedInfo(dataID)
            local searchOn = extendedInfo and self.selectedProfile.SearchOn[extendedInfo.Type]

            if searchOn then
                for _, itemData in ipairs(data) do
                    if itemData.itemID or itemData.spellID then
                        if extendedInfo.Type then
                            itemData.Type = extendedInfo.Type
                        end
                        if self.selectedProfile.showdropLocationOnSearch then
                            itemData.dropLoc = {extendedInfo.Name, extendedInfo.SourceName}
                        end
                        tinsert(itemList, {{itemData, extendedInfo.Source[1], extendedInfo.Source[2], searchString}})
                    end
                end
            end
        end
        -- rate limit tied to half the current frame rate
        self:ItemsLoading(#itemList)
        self:RateLimitLoadTable(itemList, processItem)
    end

    function Search:RunQuary()
        RunQuary()
    end

    searchPanel.levelmin:SetText("")
    searchPanel.levelmax:SetText("")
    searchPanel.ilevelmin:SetText("")
    searchPanel.ilevelmax:SetText("")
    searchPanel.equipbtn:SetText("Select Item Type")
    searchPanel.equipbtn.subbtn:Disable()
    searchPanel.equipbtn.subbtn:SetText("Select Option")


    ---------------------------------New Search System---------------------------------
    local function setupParameters(self)
        if self.searchParameters then return end
        self.searchParameters = {statArguments = {}}
    end

    function Search:SetSearchParameter(searchTerm, searchValue)
        setupParameters(self)
        self.searchParameters[searchTerm] = searchValue or nil
    end

    function Search:SetSearchString(searchValue)
        setupParameters(self)
        self.searchParameters.searchString = searchValue or nil
    end

    ---------------------------Menus---------------------------
    function Search:EquipmentTypeMenuOpen(button)
        setupParameters(self)
        local slotOrder = {1,3,5,9,10,6,7,8,"Accessories",11,12,"Weapons",13,17,21,22,15,25,28,23}
        local menuList = {{{text = "Equipment Slot", isTitle = true}}}
                for _,slotNumber in ipairs(slotOrder) do
                    if type(slotNumber) == "string" then
                        table.insert(menuList[1], {text = slotNumber, isTitle = true})
                    else
                        local name = AtlasLoot.ItemUtil:GetSlotName(slotNumber)
                        table.insert(menuList[1], {text = name, isRadio = true, checked = function() return self.searchParameters.type == slotNumber end,
                        func = function()
                            self.searchParameters.type = slotNumber
                            button:SetText(name)
                            button.subbtn:Enable()
                            button.subbtn:SetText("Select Option")
                        end})
                    end
                end
        self.parent:OpenDewdropMenu(button, menuList)
    end

    local subClasses = {
        "Armor",
        {0,10,classID = 4},
        "Weapons",
        {0,20,classID = 2},
    }

    function Search:SubClassMenuOpen(button)
        setupParameters(self)
        local menuList = {{{text = "Sub Class", isTitle = true}}}
        for _, subClassIDs in ipairs(subClasses) do
            if type(subClassIDs) == "table" then
            for subClassID = subClassIDs[1], subClassIDs[2] do
                local subClassName = AtlasLoot.ItemUtil:GetSubClassName(subClassIDs.classID, subClassID)
                table.insert(menuList[1], {text = subClassName, isRadio = true, checked = function() return self.searchParameters.subClass == subClassName end,
                func = function()
                    self.searchParameters.subClass = subClassName
                    button:SetText(subClassName)
                end})
            end
            else
                table.insert(menuList[1], {text = subClassIDs, isTitle = true})
            end
        end
        self.parent:OpenDewdropMenu(button, menuList)
    end

    function Search:StatArgumentMenuOpen(button)
        setupParameters(self)
        local filters = self.parent:GetFilterList()
        local menuList = {{{text = "Stat Filters", isTitle = true}}}
        for _, group in ipairs(filters) do
            table.insert(menuList[1], {text = group.Name, isTitle = true})
            self.searchParameters.statArguments[button:GetID()] = self.searchParameters.statArguments[button:GetID()] or {}
            for _, filter in ipairs(group) do
                table.insert(menuList[1], {text = filter[1], isRadio = true, checked = function() return self.searchParameters.statArguments[button:GetID()].stat == filter[2] end,
                func = function()
                    self.searchParameters.statArguments[button:GetID()].stat = filter[2]
                    button:SetText(filter[1])
                    button.sub:Enable()
                    button.value:Show()
                end})
            end
        end
        self.parent:OpenDewdropMenu(button, menuList)
    end

    local statComparators = {
        "Equals",
        "Greater Than",
        "Greater Than Or Equal",
        "Less Than",
        "Less Than Or Equal",
        "Not Equal",
    }

    function Search:StatArgumentComparatorMenuOpen(button)
        setupParameters(self)
        local menuList = {{{text = "Comparators", isTitle = true}}}
        for _, comparator in ipairs(statComparators) do
            self.searchParameters.statArguments[button:GetID()] = self.searchParameters.statArguments[button:GetID()] or {}
            table.insert(menuList[1], {text = comparator, isRadio = true, checked = function() return self.searchParameters.statArguments[button:GetID()].comparator == comparator end,
            func = function()
                self.searchParameters.statArguments[button:GetID()].comparator = comparator
                button:SetText(comparator)
            end})
        end
        table.insert(menuList[1], {text = AtlasLoot.Colors.RED .. "Reset",
            func = function()
                self.searchParameters.statArguments[button:GetID()].comparator = nil
                button:SetText("Select Option")
            end})
        self.parent:OpenDewdropMenu(button, menuList)
    end

    function Search:SetStatArgumentValue(button)
        self.searchParameters.statArguments[button:GetID()] = self.searchParameters.statArguments[button:GetID()] or {}
        self.searchParameters.statArguments[button:GetID()].value = tonumber(button:GetText())
    end

     -- Search Options Menu
    local searchCategories = {
        {
            Name = "Classic",
            {"Dungeon", "ClassicDungeonExt"},
            {"Raid", "ClassicRaid"},
            {"Crafting", "ClassicCrafting"},
        },
        {
            Name = "BurningCrusade",
            {"Dungeon", "BCDungeon"},
            {"Raid", "BCRaid"},
            {"Crafting", "BCCrafting"},
        },
        {
            Name = "Wrath",
            {"Dungeon", "WrathDungeon"},
            {"Raid", "WrathRaid"},
            {"Crafting", "WrathCrafting"},
        },
        {
            Name = "Other",
            {"Vanity", "Vanity"},
        }

    }

    function Search:ShowSearchOptions(button)
            local profile = self.parent.selectedProfile
            local menuList = {{
                    {text = "Search Categories", func = function() self.parent:AddWishList() end, isTitle = true},
            }}

            for _, cat in pairs(searchCategories) do
                table.insert(menuList[1], {text = cat.Name, isTitle = true})
                for _, data in ipairs(cat) do
                    profile.SearchOn[data[2]] = profile.SearchOn[data[2]] or false
                    table.insert(menuList[1], {isRadio = true, text = data[1], checked = {profile.SearchOn, data[2]}, dontCloseWhenClicked = true,
                    func = function()
                        profile.SearchOn[data[2]] = not profile.SearchOn[data[2]]
                    end})
                end
            end
            self.parent:OpenDewdropMenu(button, menuList)
        end

    function Search:ResetParameters()
        self.searchParameters = nil
        setupParameters(self)
        searchPanel.levelmin:SetText("")
        searchPanel.levelmax:SetText("")
        searchPanel.ilevelmin:SetText("")
        searchPanel.ilevelmax:SetText("")
        searchPanel.equipbtn:SetText("Select Item Type")
        searchPanel.equipbtn.subbtn:Disable()
        searchPanel.equipbtn.subbtn:SetText("Select Option")
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

    function Search:AddArgumentContainer()
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

    function Search:RemoveArgumentContainer()
        if ACTIVE_ARGUMENT == 0 then
            advSearchArgButtonToggle()
            return
        end

        self.searchParameters.statArguments[ACTIVE_ARGUMENT] = nil

        searchPanel.main[ACTIVE_ARGUMENT]:Hide()
        searchPanel.sub[ACTIVE_ARGUMENT]:Disable()
        searchPanel.sub[ACTIVE_ARGUMENT]:Hide()
        searchPanel.value[ACTIVE_ARGUMENT]:Hide()

        ACTIVE_ARGUMENT = ACTIVE_ARGUMENT - 1
        advSearchArgButtonToggle()
    end

end