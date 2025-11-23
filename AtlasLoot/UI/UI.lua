local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local INDENT = "    "
local backDrop = {
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    }

function AtlasLoot:InitializeUI()

    --Main AtlasLoot Frame
    self.ui = CreateFrame("FRAME", "AtlasLootDefaultFrame", UIParent, "PortraitFrameTemplate")
    self:InitializeMenus()

    self.ui:SetPoint("CENTER",0,0)
    self.ui:SetSize(1105,640)
    self.ui:EnableMouse(true)
    self.ui:SetMovable(true)
    self.ui.portrait:SetPortraitTexture("Interface\\Icons\\INV_Box_01")
    self.ui:SetFrameStrata("HIGH")
    self.ui.TitleText:SetText(GetAddOnMetadata("AtlasLoot", "Title"))
    self.ui:RegisterForDrag("LeftButton")
    self.ui:EnableKeyboard(true)
    self.ui:SetToplevel(true)
    self.ui:Hide()
    self.ui:SetScript("OnShow", function()
        self:OnShow()
    end)
    self.ui:SetScript("OnMouseDown", function()
        self.Dewdrop:Close()
        self.searchPanel.searchbox:ClearFocus()
    end)
    self.ui:SetScript("OnHide", function()
        self.Dewdrop:Close()
        self:ItemsLoading("reset")
    end)
    self.ui:SetScript("OnDragStart", function(frame) frame:StartMoving() end)
    self.ui:SetScript("OnDragStop", function(frame) frame:StopMovingOrSizing()end)
    self:UpdateLootBrowserScale()

    --Add the loot browser to the special frames tables to enable closing wih the ESC key
	table.insert(UISpecialFrames, "AtlasLootDefaultFrame")

    self.ui.tabList = {
        {
            name = "Loot",
            atlas = "vignettelootelite",
            onClick = function(...) self:OnShow(...) end,
        },
        {
            name = "Wishlist",
            atlas = "poi-workorders",
            onClick = function(button, btnclick)self:WishListButton(button,true,btnclick) end
        },
        {
            name = "Search",
            atlas = "communities-icon-searchmagnifyingglass",
            onClick = function(...) self:AdvancedSearchShow(...) end,
        },
        {
            name = "Map",
            atlas = "poi-islands-table",
            onClick = function(...) self:MapButtonClick(...) end,
    },
    }
    self.ui.tabs = {}

    local lastTab
    local function addTab(tab)
        local newTab = CreateFrame("Frame", "AtlasLoot_"..tab.name, self.ui)
        newTab:SetPoint("CENTER")
        newTab:SetSize(self.ui:GetWidth()-10,self.ui:GetHeight()-10)
        newTab:Hide()
        newTab.tabButton = CreateFrame("CheckButton", "AtlasLoot_"..tab.name.."Button", self.ui, "AtlasLootTabTemplate")
        local point = not lastTab and {"BOTTOMLEFT", 5, -30} or {"LEFT", lastTab.tabButton, "RIGHT", 10, 0}
        newTab.tabButton:SetPoint(unpack(point))
        newTab.tabButton:RegisterForClicks("AnyDown")
        newTab.tabButton:SetWidth(125)
        newTab.tabButton.Text:SetText(tab.name)
        newTab.name = tab.name

        if tab.icon then
            newTab.tabButton.Icon:SetIcon(tab.icon)
        elseif tab.atlas then
            newTab.tabButton.Icon:Hide()
            newTab.tabButton.IconAtlas = newTab.tabButton:CreateTexture(nil, "ARTWORK")
            newTab.tabButton.IconAtlas:SetPoint("LEFT", 10, 2)
            newTab.tabButton.IconAtlas:SetSize(20,20)
            newTab.tabButton.IconAtlas:SetAtlas(tab.atlas)
        end

        newTab:SetScript("OnShow", function()
            self:SetUITab(tab.name)
            
        end)

        newTab.tabButton:SetScript("OnClick", function(button, buttonClick)
            self:SetUITab(tab.name)
            if tab.onClick then tab.onClick(button, buttonClick) end
        end)

        self.ui.tabs[tab.name] = newTab
        lastTab = newTab
    end

    for _, tab in ipairs(self.ui.tabList) do
        addTab(tab)
    end
    self:SetUITab(self.ui.tabList[1].name)

    --Loot Background
    self.ui.tabs.Loot:SetSize(770,515)
    self.ui.tabs.Loot:SetPoint("TOPLEFT", self.ui, "TOPLEFT",30,-86)
    self.ui.tabs.Loot:EnableMouse()
    self.ui.tabs.Loot:EnableMouseWheel()
    self.ui.tabs.Loot:SetScript("OnMouseDown",function(button, buttonClick)
        if self.ui.backbutton:IsVisible() and buttonClick == "RightButton" then
            self:BackButton_OnClick()
        elseif self.searchPanel:IsVisible() and buttonClick == "RightButton" then
            self:AdvancedSearchClose()
        end
        self.Dewdrop:Close()
    end)
    self.ui.tabs.Loot:SetBackdrop(backDrop)
    self.ui.tabs.Loot:SetScript("OnMouseWheel", function(frame,delta)
        if self.ui.nextbutton:IsVisible() and delta == -1 then
            self.ui.nextbutton:Click()
        end
        if self.ui.prevbutton:IsVisible() and delta == 1 then
            self.ui.prevbutton:Click()
        end
    end)
    self.ui.tabs.Loot.Back = self.ui.tabs.Loot:CreateTexture("AtlasLootItemsFrame_LootBack", "BACKGROUND")
    self.ui.tabs.Loot.Back:SetAllPoints()
    self.ui.tabs.Loot.Back:SetSize(730,475)
    self.ui.tabs.Loot.Back:SetPoint("CENTER",self.ui.tabs.Loot)

    ----------------------------------- Item Loot Panel -------------------------------------------
    ---
    self:InitializeItemFrame()

    --------------------------------------- Navagation buttons ---------------------------------------
    self.ui.nextbutton = CreateFrame("Button", "nil", self.itemframe)
    self.ui.nextbutton:SetPoint("BOTTOMRIGHT", self.itemframe, -30, 5)
    self.ui.nextbutton:SetSize(32,32)
    self.ui.nextbutton.texture = self.ui.nextbutton:CreateTexture(nil, "BACKGROUND")
    self.ui.nextbutton.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background")
    self.ui.nextbutton.texture:SetSize(32,32)
    self.ui.nextbutton.texture:SetPoint("CENTER",0,0)
    self.ui.nextbutton:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up")
    self.ui.nextbutton:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down")
    self.ui.nextbutton:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled")
    self.ui.nextbutton:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    self.ui.nextbutton:SetScript("OnClick", function(button) self:NavButton_OnClick(button) end)

    -- Previous button
    self.ui.prevbutton = CreateFrame("Button", nil, self.itemframe)
    self.ui.prevbutton:SetPoint("BOTTOMLEFT", self.itemframe, 5, 5)
    self.ui.prevbutton:SetSize(32,32)
    self.ui.prevbutton.texture = self.ui.prevbutton:CreateTexture(nil, "BACKGROUND")
    self.ui.prevbutton.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background")
    self.ui.prevbutton.texture:SetSize(32,32)
    self.ui.prevbutton.texture:SetPoint("CENTER",0,0)
    self.ui.prevbutton:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up")
    self.ui.prevbutton:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down")
    self.ui.prevbutton:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled")
    self.ui.prevbutton:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    self.ui.prevbutton:SetScript("OnClick", function(button) self:NavButton_OnClick(button) end)

    -- Back button
    self.ui.backbutton = CreateFrame("Button", nil, self.itemframe, "UIPanelButtonTemplate")
    self.ui.backbutton:SetPoint("BOTTOM", self.itemframe, "BOTTOM",0,5)
    self.ui.backbutton:SetText(AL["Back"])
    self.ui.backbutton:SetScript("OnClick", function(button) self:BackButton_OnClick() end)

    -- Toggle the visibility of the next/prev and back buttons true to show
    function self:ToggleNavigationButtonsVisibility(show)
        if show then
            self.ui.nextbutton:Show()
            self.ui.prevbutton:Show()
            self.ui.backbutton:Show()
        else
            self.ui.nextbutton:Hide()
            self.ui.prevbutton:Hide()
            self.ui.backbutton:Hide()
        end
    end
    self:ToggleNavigationButtonsVisibility()

    -- Learn Unknown vanity spells button
    self.ui.learnSpellbtn = CreateFrame("Button", "AtlasLoot_LearnUnknownSpells", self.itemframe, "OptionsButtonTemplate")
    self.ui.learnSpellbtn:SetPoint("BOTTOM", self.itemframe, "BOTTOM",0,5)
    self.ui.learnSpellbtn:SetText(AL["Learn All Unknown"])
    self.ui.learnSpellbtn:SetWidth(150)
    self.ui.learnSpellbtn:SetScript("OnClick", function() self:LearnAllUnknownVanitySpells() end)
    self.ui.learnSpellbtn:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,AL["Learn all the vanity items and spells that you currently don't know on this character"])
    end)
    self.ui.learnSpellbtn:SetScript("OnLeave", function() GameTooltip:Hide() end)

    --------------------------------------- Wish list buttons ---------------------------------------

    -- Wishlist Options button
    self.ui.wishlistOptionsButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Options", self.itemframe, "OptionsButtonTemplate")
    self.ui.wishlistOptionsButton:SetPoint("BOTTOM", self.itemframe, "BOTTOM",-50,5)
    self.ui.wishlistOptionsButton:SetText(AL["Options"])
    self.ui.wishlistOptionsButton:SetScript("OnClick", function(button) self:WishListOptionsOpen() end)

        -- Wishlist Item Lock button
    self.ui.wishlistLockButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_UnLock", self.itemframe, "OptionsButtonTemplate")
    self.ui.wishlistLockButton:SetPoint("BOTTOM", self.ui.wishlistOptionsButton, "BOTTOM",-100,0)
    self.ui.wishlistLockButton:SetScript("OnClick", function(button) self:WishListItemLockStateClick() end)
    self.ui.wishlistLockButton:SetScript("OnEnter", function(button)
        local text = {
            "Toggle Item Moving/Divider Removel",
            "Left Click to move item up",
            "Right Click to move item down",
            "Alt + Left Click to add a Custom Header",
        }
        self:SetGameTooltip(button, text)
    end)
    self.ui.wishlistLockButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.ui.wishlistLockButton:SetText("Locked")
    -- Is wishlist item disabled on load or not
	if AtlasLootWishList.Options[UnitName("player")].AutoSortWishlist then
		self.ui.wishlistLockButton:Disable()
	else
		self.ui.wishlistLockButton:Enable()
	end

    -- Wishlist Share button
    self.ui.wishlistShareButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Share", self.itemframe, "OptionsButtonTemplate")
    self.ui.wishlistShareButton:SetPoint("BOTTOM", self.ui.wishlistOptionsButton, "BOTTOM",100,0)
    self.ui.wishlistShareButton:SetText(AL["Share"])
    self.ui.wishlistShareButton:SetScript("OnClick", function(button) self:ShareMenu(button) end)

    -- Wishlist Share button
    self.ui.wishlistLearnVanityButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Vanity_Learn", self.itemframe, "OptionsButtonTemplate")
    self.ui.wishlistLearnVanityButton:SetPoint("BOTTOM", self.ui.wishlistShareButton, "BOTTOM",100,0)
    self.ui.wishlistLearnVanityButton:SetText("Get Items")
    self.ui.wishlistLearnVanityButton:SetScript("OnClick", function() self:BatchRequestVanity(self.vanityItems, true) end)
    self.ui.wishlistLearnVanityButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,AL["Learn/Recive all the vanity items on this page"])
    end)
    self.ui.wishlistLearnVanityButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    -- Filter Button
    self.ui.filterButton = CreateFrame("CheckButton","AtlasLootFilterCheck",self.itemframe,"OptionsCheckButtonTemplate")
    self.ui.filterButton:SetPoint("TOPLEFT", self.itemframe,5 ,-5)
    self.ui.filterButton.Label = self.ui.filterButton:CreateFontString(nil,"OVERLAY","GameFontNormal")
    self.ui.filterButton.Label:SetText(AL["Filter"])
    self.ui.filterButton.Label:SetPoint("RIGHT", self.ui.filterButton, 30, 2)
    self.ui.filterButton:RegisterForClicks("LeftButtonDown","RightButtonDown")
    self.ui.filterButton:SetScript("OnClick", function(button, btnclick) self:FilterEnableButton(button, btnclick) end)

    function self:ToogleWishListButtons(show)
        if show then
            self.ui.wishlistOptionsButton:Show()
            self.ui.wishlistLearnVanityButton:Show()
            self.ui.wishlistShareButton:Show()
            self.ui.wishlistLockButton:Show()
        else
            self.ui.wishlistOptionsButton:Hide()
            self.ui.wishlistLearnVanityButton:Hide()
            self.ui.wishlistShareButton:Hide()
            self.ui.wishlistLockButton:Hide()
        end
    end
    self:ToogleWishListButtons()

------------------------------------ Main menu buttons ---------------------------------------
    --SubMenu Button
    self.ui.submenuButton = CreateFrame("Button", "AtlasLootDefaultFrame_SubMenu", self.ui, "AtlasLootDropMenuTemplate")
    self.ui.submenuButton:SetSize(275,25)
    self.ui.submenuButton:SetPoint("TOP", self.ui.tabs.Loot,"TOP",56,30)
    self.ui.submenuButton.Lable = self.ui.submenuButton:CreateFontString(nil, "OVERLAY","GameFontNormal")
    self.ui.submenuButton.Lable:SetPoint("TOP",self.ui.submenuButton,"BOTTOM",0,42)
    self.ui.submenuButton.Lable:SetText("Select Category")
    self.ui.submenuButton.Lable:Show()
    self.ui.submenuButton:SetScript("OnClick", function() self:DewdropSubMenuOpen(self.ui.menus.collection[self.currentTable]) end)

    --Moduel Menu Button
    self.ui.moduelMenuButton = CreateFrame("Button", nil, self.ui, "AtlasLootDropMenuTemplate")
    self.ui.moduelMenuButton:SetSize(275,25)
    self.ui.moduelMenuButton:SetPoint("RIGHT", self.ui.submenuButton, "LEFT",-5,0)
    self.ui.moduelMenuButton.Lable:SetText("Select Module")
    self.ui.moduelMenuButton.Lable:Show()
    self.ui.moduelMenuButton:SetText(AL["Select Loot Table"])
    self.ui.moduelMenuButton:SetScript("OnClick", function() self:DewdropModuleMenuOpen() end)

    --Options Button
    self.ui.optionsCogButton = CreateFrame("Button", "AtlasLootSettingsCog", self.ui, "SettingsGearButtonTemplate")
    self.ui.optionsCogButton:SetPoint("LEFT", self.ui.moduelMenuButton,-27,0)
    self.ui.optionsCogButton:RegisterForClicks("AnyDown")
    self.ui.optionsCogButton:SetScript("OnClick", function(button,buttonClick)
        if buttonClick == "LeftButton" then
            self:OptionsToggle()
        else
            self:OpenSettingQuickMenu(button)
        end
    end)
    self.ui.optionsCogButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Options")
    end)
    self.ui.optionsCogButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    --Expansion Menu Button
    self.ui.expansionMenuButton = CreateFrame("Button", "AtlasLootDefaultFrame_ExpansionMenu", self.ui, "AtlasLootDropMenuTemplate");
    self.ui.expansionMenuButton:SetSize(185,25);
    self.ui.expansionMenuButton:SetPoint("LEFT", "AtlasLootDefaultFrame_SubMenu", "RIGHT",5,0);
    self.ui.expansionMenuButton:SetText(self.ui.menus.expansion[GetAccountExpansionLevel()+1][1]);
    self.ui.expansionMenuButton.Lable:SetText("Select Expansion")
    self.ui.expansionMenuButton.Lable:Show()
    self.ui.expansionMenuButton:SetScript("OnClick", function(button) self:DewdropExpansionMenuOpen(button) end)

---------------------------------------- Buttons Under the loot and subtable frames -------------------------------------------
    -- Favorites Button
    self.ui.favoritesButton = CreateFrame("Button", "AtlasLoot_Favorites", self.ui, "AtlasLootDropMenuTemplate")
    self.ui.favoritesButton:SetPoint("BOTTOMLEFT", self.ui, "BOTTOMLEFT", 35, 10.5)
    self.ui.favoritesButton:SetText("Favorites")
    self.ui.favoritesButton:SetSize(150,25)
    self.ui.favoritesButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Left click open a favorite\nAlt + Right click to set favorite")
        self.ui.favoritesPopupFrame:Show()
    end)
    self.ui.favoritesButton:SetScript("OnLeave", function()
        GameTooltip:Hide()
        if GetMouseFocus():GetName() ~= "AtlasLoot_FavoritesPopupFrame" then
            self.ui.favoritesPopupFrame:Hide()
        end
    end)

    -- Load Current Instance Button
    self.ui.currentInstanceButton = CreateFrame("Button","AtlasLootDefaultFrame_LoadInstanceButton", self.ui,"AtlasLootDropMenuTemplate")
    self.ui.currentInstanceButton:SetSize(107,25)
    self.ui.currentInstanceButton.Icon:Hide()
    self.ui.currentInstanceButton.Text:SetJustifyH("CENTER")
    self.ui.currentInstanceButton.Text:ClearAllPoints()
    self.ui.currentInstanceButton.Text:SetPoint("CENTER")
    self.ui.currentInstanceButton:SetPoint("LEFT", self.ui.favoritesButton, "RIGHT", 2, 0)
    self.ui.currentInstanceButton:SetScript("OnClick", function() self:ShowInstance() end)
    self.ui.currentInstanceButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.ui.currentInstanceButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Goto current instances lootpage")
    end)
    self.ui.currentInstanceButton:SetText("Current Instance")

    --Favorites Popup Frame
    self.ui.favoritesPopupFrame = CreateFrame("Frame", "AtlasLoot_FavoritesPopupFrame", self.ui.favoritesButton, "AtlasLootFrameTemplate")
    self.ui.favoritesPopupFrame:SetBackdrop(backDrop)
    self.ui.favoritesPopupFrame:EnableMouse()
    self.ui.favoritesPopupFrame:SetScript("OnLeave", function()
        local focus = GetMouseFocus():GetName()
        if focus ~= "AtlasLootDefaultFrame_Preset1" and focus ~= "AtlasLootDefaultFrame_Preset2" and focus ~= "AtlasLootDefaultFrame_Preset3" and focus ~= "AtlasLootDefaultFrame_Preset4" then
            self.ui.favoritesPopupFrame:Hide()
        end
    end)
    self.ui.favoritesPopupFrame:SetPoint("BOTTOMLEFT",0,-37)
    self.ui.favoritesPopupFrame:SetSize(150, 40)
    self.ui.favoritesPopupFrame:Hide()

    --Favorites Buttons
    for i=1, 4 do
        local preset = CreateFrame("Button", "AtlasLootDefaultFrame_Preset"..i, self.ui.favoritesPopupFrame, "AtlasLootFavoritesButtonTemplate")
        local tex = AtlasUtil:GetAtlasInfo("services-number-"..i)
            preset.tex:SetTexture(tex.filename)
            preset.tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
        if i == 1 then
            preset:SetPoint("LEFT", self.ui.favoritesPopupFrame, 8, 0)
        else
            preset:SetPoint("LEFT", self.ui.favoritesPopupFrame["preset"..(i-1)], "RIGHT", 3, 0)
        end
        preset.num = i
        self.ui.favoritesPopupFrame["preset"..i] = preset
    end

---------------------  Diffcuility ScrollFrame ----------------------------------
    local ROW_HEIGHT = 16   -- How tall is each row?
    local MAX_ROWS = 5      -- How many rows can be shown at once?

    self.ui.difficultyScrollFrame = CreateFrame("Frame", "Atlasloot_Difficulty_ScrollFrame", self.ui, "AtlasLootFrameTemplate")
    self.ui.difficultyScrollFrame:EnableMouse(true)
    self.ui.difficultyScrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS + 16)
    self.ui.difficultyScrollFrame:SetPoint("TOPRIGHT",self.ui,-30,-55.5)
    self.ui.difficultyScrollFrame:SetBackdrop(backDrop)
    self.ui.difficultyScrollFrame.Lable = self.ui.difficultyScrollFrame:CreateFontString(nil, "OVERLAY","GameFontNormal")
    self.ui.difficultyScrollFrame.Lable:SetPoint("TOPLEFT",self.ui.difficultyScrollFrame,10,-10)
    self.ui.difficultyScrollFrame.Lable:SetJustifyH("LEFT")
    self.ui.difficultyScrollFrame.Lable:SetFont("GameFontNormal", 24)
    self.ui.difficultyScrollFrame.Back = self.ui.difficultyScrollFrame:CreateTexture("Atlasloot_Difficulty_ScrollFrame_Back", "BACKGROUND")
    self.ui.difficultyScrollFrame.Back:SetAllPoints()
    self.ui.difficultyScrollFrame.Back:SetSize(255, ROW_HEIGHT * MAX_ROWS + 6)
    self.ui.difficultyScrollFrame.Back:SetPoint("CENTER",self.ui.difficultyScrollFrame)

function self:ScrollFrameUpdate(hide,wishlist)
    local maxValue,offset,row,value
    self.ui.difficultyScrollFrame.wishList = nil
    if wishlist then
        self.ui.difficultyScrollFrame.wishList = wishlist
        maxValue = 2
        FauxScrollFrame_Update(self.ui.difficultyScrollFrame.scrollSlider, maxValue, MAX_ROWS, ROW_HEIGHT)
        offset = FauxScrollFrame_GetOffset(self.ui.difficultyScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS do
            value = i + offset
            self.ui.difficultyScrollFrame.rows[i]:SetChecked(false)
            self.ui.difficultyScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue then
                row = self.ui.difficultyScrollFrame.rows[i]
                local text = (value == 1 and "Own") or (value == 2 and "Shared")

                row:SetText("|cffFFd200"..text)
                row.itemIndex = value

                if row.itemIndex == AtlasLoot_CurrentWishList.selected then
                    row:SetChecked(true)
                end
                row:Show()
            else
                self.ui.difficultyScrollFrame.rows[i]:Hide()
            end
        end
    else
        maxValue = #self.Difficulties[self.CurrentType]
        FauxScrollFrame_Update(self.ui.difficultyScrollFrame.scrollSlider, maxValue, MAX_ROWS, ROW_HEIGHT)
        offset = FauxScrollFrame_GetOffset(self.ui.difficultyScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS do
            value = i + offset
            self.ui.difficultyScrollFrame.rows[i]:SetChecked(false)
            self.ui.difficultyScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and self.Difficulties[self.CurrentType][value] and hide == nil then
                row = self.ui.difficultyScrollFrame.rows[i]
                row:SetText("|cffFFd200"..self.Difficulties[self.CurrentType][value][1])
                row.itemIndex = self.Difficulties[self.CurrentType][value][2]
                if row.itemIndex == self.ItemindexID then
                    row:SetChecked(true)
                end
                row:Show()
            else
                self.ui.difficultyScrollFrame.rows[i]:Hide()
            end
        end
    end
end

    self.ui.difficultyScrollFrame.scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameScroll", self.ui.difficultyScrollFrame, "FauxScrollFrameTemplate")
    self.ui.difficultyScrollFrame.scrollSlider:SetPoint("TOPLEFT", 0, -8)
    self.ui.difficultyScrollFrame.scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    self.ui.difficultyScrollFrame.scrollSlider:SetScript("OnVerticalScroll", function(scroll, offset)
        scroll.offset = math.floor(offset / ROW_HEIGHT + 0.5)
    if self.ui.difficultyScrollFrame.wishList then
        self:ScrollFrameUpdate(nil,self.ui.difficultyScrollFrame.wishList)
    else
        self:ScrollFrameUpdate()
    end
end)

self.ui.difficultyScrollFrame.scrollSlider:SetScript("OnShow", function()
    if self.ui.difficultyScrollFrame.wishList then
        self:ScrollFrameUpdate(nil,self.ui.difficultyScrollFrame.wishList)
    else
        self:ScrollFrameUpdate()
    end
end)

local rows = setmetatable({}, { __index = function(t, i)
	local row = CreateFrame("CheckButton", "$parentRow"..i, self.ui.difficultyScrollFrame)
	row:SetSize(230, ROW_HEIGHT)
    row:SetFrameStrata("HIGH")
	row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
    row:SetScript("OnClick", function()
        if self.ui.difficultyScrollFrame.wishList then
            AtlasLoot_CurrentWishList.selected = row.itemIndex
            self:ShowWishList()
            self:ScrollFrameUpdate(nil,self.ui.difficultyScrollFrame.wishList)
        else
            self.ItemindexID = row.itemIndex
            if not self.searchPanel:IsVisible() then
                self:ShowItemsFrame(self.itemframe.refresh[1], self.itemframe.refresh[2], self.itemframe.refresh[3])
            end
            self:ScrollFrameUpdate()
        end
    end)
	if i == 1 then
		row:SetPoint("TOPLEFT", self.ui.difficultyScrollFrame, 8, -8)
	else
		row:SetPoint("TOPLEFT", self.ui.difficultyScrollFrame.rows[i-1], "BOTTOMLEFT")
	end

	rawset(t, i, row)
	return row
end })

self.ui.difficultyScrollFrame.rows = rows
local MAX_ROWS2 = 26      -- How many rows can be shown at once?

--------------------Subtable Frame--------------------
    self.ui.tabs.Loot.TableScrollFrame = CreateFrame("Frame", "Atlasloot_SubTableFrame", self.ui, "AtlasLootFrameTemplate")
    self.ui.tabs.Loot.TableScrollFrame:EnableMouse(true)
    self.ui.tabs.Loot.TableScrollFrame:EnableMouseWheel(true)
    self.ui.tabs.Loot.TableScrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS2 + 23)
    self.ui.tabs.Loot.TableScrollFrame:SetPoint("BOTTOMLEFT","Atlasloot_Difficulty_ScrollFrame",0,-449.5)
    self.ui.tabs.Loot.TableScrollFrame:SetBackdrop(backDrop)
    self.ui.tabs.Loot.TableScrollFrame.Back = self.ui.tabs.Loot.TableScrollFrame:CreateTexture("Atlasloot_SubTableFrame_Back", "BACKGROUND")
    self.ui.tabs.Loot.TableScrollFrame.Back:SetAllPoints()
    self.ui.tabs.Loot.TableScrollFrame.Back:SetSize(255, ROW_HEIGHT * MAX_ROWS2 + 13)
    self.ui.tabs.Loot.TableScrollFrame.Back:SetPoint("CENTER",self.ui.tabs.Loot.TableScrollFrame)
    self.ui.tabs.Loot.TableScrollFrame:SetScript("OnMouseWheel", function(frame,delta)
        if self.ui.nextbutton:IsVisible() and delta == -1 then
            self.ui.nextbutton:Click()
        end
        if self.ui.prevbutton:IsVisible() and delta == 1 then
            self.ui.prevbutton:Click()
        end
end)

    function self:SubTableScrollFrameUpdate(tablename, dataSource, tablenum)
        local maxValue = #_G[dataSource][tablename]
        if dataSource == "AtlasLoot_MapData" then maxValue = #_G[dataSource][tablename][tablenum] end
        self.ui.tabs.Loot.TableScrollFrame.tablename = tablename
        self.ui.tabs.Loot.TableScrollFrame.dataSource = dataSource
        self.ui.tabs.Loot.TableScrollFrame.tablenum = tablenum
        FauxScrollFrame_Update(self.ui.tabs.Loot.TableScrollFrame.scrollSlider, maxValue, MAX_ROWS2, ROW_HEIGHT)
        local offset = FauxScrollFrame_GetOffset(self.ui.tabs.Loot.TableScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS2 do
            local value = i + offset
            self.ui.tabs.Loot.TableScrollFrame.rows[i]:SetChecked(false)
            self.ui.tabs.Loot.TableScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and (_G[dataSource][tablename][value] or _G[dataSource][tablename][tablenum][value]) and tablename ~= "SearchMENU" then
                local row = self.ui.tabs.Loot.TableScrollFrame.rows[i]
                    row.dataSource = dataSource
                    row.tablename = tablename
                    row.tablenum = value
                if dataSource == "AtlasLoot_MapData" then
                    local text = _G[dataSource][tablename][tablenum][value][1]
                    if _G[dataSource][tablename][tablenum][value][2] then text = text.._G[dataSource][tablename][tablenum][value][2] end
                    if _G[dataSource][tablename][tablenum][value].SubZone then
                        text = self.Colors.BLUE..text
                    elseif not _G[dataSource][tablename][tablenum][value].Zone then
                        text = self.Colors.WHITE..text
                    end
                    if not _G[dataSource][tablename][tablenum][value].cords and not _G[dataSource][tablename][tablenum][value].Zone and not _G[dataSource][tablename][tablenum][value].SubZone then text = INDENT..text end
                    row.Text:SetText(text)
                    row:SetScript("OnEnter", function(button)
                        GameTooltip:SetOwner(button, "ANCHOR_TOP")
                        GameTooltip:SetText(_G[dataSource][tablename][tablenum][value][1])
                        GameTooltip:Show()
                    end)
                    row:SetScript("OnLeave", function() GameTooltip:Hide() end)
                else
                    row.Text:SetText("|cffFFd200"..(_G[dataSource][tablename][value].Name or ""))
                    row:SetScript("OnEnter", function(button)
                        GameTooltip:Hide()
                    end)
                    if tablenum == value and dataSource ~= "AtlasLoot_MapData" then
                        row:SetChecked(true)
                    end
                end
                row:Show()
            else
                self.ui.tabs.Loot.TableScrollFrame.rows[i]:Hide()
            end
        end
    end

    self.ui.tabs.Loot.TableScrollFrame.scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameSubTableScroll",Atlasloot_SubTableFrame,"FauxScrollFrameTemplate")
    self.ui.tabs.Loot.TableScrollFrame.scrollSlider:SetPoint("TOPLEFT", 0, -8)
    self.ui.tabs.Loot.TableScrollFrame.scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    self.ui.tabs.Loot.TableScrollFrame.scrollSlider:SetScript("OnVerticalScroll", function(slider, offset)
        slider.offset = math.floor(offset / ROW_HEIGHT + 0.5)
            self:SubTableScrollFrameUpdate(self.ui.tabs.Loot.TableScrollFrame.tablename, self.ui.tabs.Loot.TableScrollFrame.dataSource, self.ui.tabs.Loot.TableScrollFrame.tablenum)
    end)

local rows2 = setmetatable({}, { __index = function(t, i)
    local row = CreateFrame("CheckButton", "$parentRow"..i, Atlasloot_SubTableFrame)
    row:SetSize(230, ROW_HEIGHT)
    row:SetFrameStrata("HIGH")
    row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
    row:RegisterForClicks("AnyDown")
    row.Text = row:CreateFontString("$parentRow"..i.."Text","OVERLAY","GameFontNormal")
    row.Text:SetSize(230, ROW_HEIGHT)
    row.Text:SetPoint("LEFT",row)
    row.Text:SetJustifyH("LEFT")
    row:SetScript("OnClick", function(button, buttonClick)
        local webID = _G[row.dataSource][row.tablename][row.tablenum] and _G[row.dataSource][row.tablename][row.tablenum].WebID
        if buttonClick == "RightButton" and webID then
            row:SetChecked(not row:GetChecked())
            self:OpenDB(button, webID[2], webID[1])
        elseif row.dataSource ~= "AtlasLoot_MapData" then
            self:ShowItemsFrame(row.tablename, row.dataSource, row.tablenum)
        else
            row:SetChecked(false)
        end
    end)
    if i == 1 then
        row:SetPoint("TOPLEFT", self.ui.tabs.Loot.TableScrollFrame, 8, -8)
    else
        row:SetPoint("TOPLEFT", self.ui.tabs.Loot.TableScrollFrame.rows[i-1], "BOTTOMLEFT")
    end

    rawset(t, i, row)
    return row
end })

self.ui.tabs.Loot.TableScrollFrame.rows = rows2

--------------------------------- Map Frame and buttons -----------------------------------------------

    --AtlasLoot Maps
    self.ui.tabs.Map:SetSize(770,513)
    self.ui.tabs.Map:SetPoint("TOPLEFT", self.ui, "TOPLEFT",30,-86)
    self.ui.tabs.Map:SetFrameStrata("HIGH")
    self.ui.tabs.Map:Hide()
    self.ui.tabs.Map:EnableMouse()
    self.ui.tabs.Map:SetScript("OnMouseDown", function(button, buttonClick)
        if buttonClick == "RightButton" then
            self:MapOnShow()
        elseif buttonClick == "LeftButton" then
            --print(self:GetCursorCords())
        end
    end)
    self.ui.tabs.Map:SetScript("OnShow", function() self:MapOnShow() end)

    self.ui.tabs.Map:EnableMouseWheel(true)
    self.ui.tabs.Map.cursorCords = self.ui.tabs.Map:CreateFontString(nil,"ARTWORK","GameFontNormal")
    self.ui.tabs.Map.cursorCords:SetPoint("TOPRIGHT", self.ui.tabs.Map, -10, 0)
    self.ui.tabs.Map.cursorCords:Show()
    self.ui.tabs.Map.cursorCords:SetSize(150, 25)
    self.ui.tabs.Map.cursorCords:SetJustifyH("RIGHT")
    self.ui.tabs.Map:SetScript("OnMouseWheel", function(button,delta)
        if self.ui.nextbutton:IsVisible() and delta == -1 then
            self.ui.nextbutton:Click()
        end
        if self.ui.prevbutton:IsVisible() and delta == 1 then
            self.ui.prevbutton:Click()
        end
    end)

    self.ui.tabs.Map:SetScript("OnShow", function() self.ui.tabs.Map.cursorCords:SetText(self.Colors.WHITE.."Cursor: ---") end)
    self.ui.tabs.Map:SetScript("OnEnter", function() self.showCords = true self:MapOnEnter() end)
    self.ui.tabs.Map:SetScript("OnUpdate", function() self:MapOnEnter() end)
    self.ui.tabs.Map:SetScript("OnLeave", function()
        self.showCords = false
        self.ui.tabs.Map.cursorCords:SetText(self.Colors.WHITE.."Cursor: ---")
    end)

    for i=1, 12 do
        self.ui.tabs.Map["tile"..i] = self.ui.tabs.Map:CreateTexture("AtlasLoot_MapDetailTile"..i, "BACKGROUND")
        self.ui.tabs.Map["tile"..i]:SetSize(196,196)
        self.ui.tabs.Map["tile"..i]:Show()
    end

    self.ui.tabs.Map.tile1:SetPoint("TOPLEFT", self.ui.tabs.Map)
    self.ui.tabs.Map.tile2:SetPoint("TOPLEFT", self.ui.tabs.Map.tile1,"TOPRIGHT")
    self.ui.tabs.Map.tile3:SetPoint("TOPLEFT", self.ui.tabs.Map.tile2,"TOPRIGHT")
    self.ui.tabs.Map.tile4:SetPoint("TOPLEFT", self.ui.tabs.Map.tile3,"TOPRIGHT")
    self.ui.tabs.Map.tile5:SetPoint("TOPLEFT", self.ui.tabs.Map.tile1,"BOTTOMLEFT")
    self.ui.tabs.Map.tile6:SetPoint("TOPLEFT", self.ui.tabs.Map.tile5,"TOPRIGHT")
    self.ui.tabs.Map.tile7:SetPoint("TOPLEFT", self.ui.tabs.Map.tile6,"TOPRIGHT")
    self.ui.tabs.Map.tile8:SetPoint("TOPLEFT", self.ui.tabs.Map.tile7,"TOPRIGHT")
    self.ui.tabs.Map.tile9:SetPoint("TOPLEFT", self.ui.tabs.Map.tile5,"BOTTOMLEFT")
    self.ui.tabs.Map.tile10:SetPoint("TOPLEFT", self.ui.tabs.Map.tile9,"TOPRIGHT")
    self.ui.tabs.Map.tile11:SetPoint("TOPLEFT", self.ui.tabs.Map.tile10,"TOPRIGHT")
    self.ui.tabs.Map.tile12:SetPoint("TOPLEFT", self.ui.tabs.Map.tile11,"TOPRIGHT")

    self.ui.tabs.Map.playerPin = CreateFrame("Button", "AtlasLoot_PlayerMapPin", self.ui.tabs.Map)
    self.ui.tabs.Map.playerPin:SetSize(35,35)
    self.ui.tabs.Map.playerPin:SetFrameStrata("HIGH")
    self.ui.tabs.Map.playerPin.texture = self.ui.tabs.Map.playerPin:CreateTexture(nil, "ARTWORK")
    self.ui.tabs.Map.playerPin.texture:SetTexture("Interface\\Minimap\\MinimapArrow")
    self.ui.tabs.Map.playerPin.texture:SetSize(35,35)
    self.ui.tabs.Map.playerPin.texture:SetPoint("CENTER",0,0)
    self.ui.tabs.Map.playerPin:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"You are here")
    end)
    self.ui.tabs.Map.playerPin:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    self.ui.tabs.Map.playerPin:Hide()

------------------------- Item Popup Frame and loading icon ------------------------------
    -- item data loading icon animation
    self.ui.streamIcon = CreateFrame("Frame", "AtlasLoot_ItemsLoading", self.ui.tabs.Loot)
    self.ui.streamIcon:ClearAllPoints()
    self.ui.streamIcon:SetPoint("TOPRIGHT", self.ui.tabs.Loot, "TOPRIGHT", -25, 0)
    self.ui.streamIcon:SetSize(48, 48)
    self.ui.streamIcon.tooltip = "Searching..."
    self.ui.streamIcon:EnableMouse(true)

    self.ui.streamIcon.icon = self.ui.streamIcon:CreateTexture("$parentSpinner", "BACKGROUND")
    self.ui.streamIcon.icon:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamcircle")
    self.ui.streamIcon.icon:SetVertexColor(0,1,0)
    self.ui.streamIcon.icon:SetAllPoints()
    self.ui.streamIcon.spark = self.ui.streamIcon:CreateTexture("OVERLAY")
    self.ui.streamIcon.spark:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamspark")
    self.ui.streamIcon.spark:SetAllPoints()

    self.ui.streamIcon.frame = CreateFrame("Frame", "$parentFrame", self.ui.streamIcon)
    self.ui.streamIcon.frame:SetAllPoints()
    self.ui.streamIcon.frame.bg = self.ui.streamIcon.frame:CreateTexture("$parentBackground", "BACKGROUND")
    self.ui.streamIcon.frame.bg:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streambackground")
    self.ui.streamIcon.frame.bg:SetVertexColor(0,1,0)
    self.ui.streamIcon.frame.bg:SetAllPoints()
    self.ui.streamIcon.frame.alpha = self.ui.streamIcon.frame:CreateTexture("$parentAlpha", "ARTWORK")
    self.ui.streamIcon.frame.alpha:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamframe")
    self.ui.streamIcon.frame.alpha:SetAllPoints()

    self.ui.streamIcon.Loop = self.ui.streamIcon:CreateAnimationGroup("$parentLoopAnim")
    self.ui.streamIcon.Loop:SetLooping("REPEAT")

    self.ui.streamIcon.rotAnim = self.ui.streamIcon.Loop:CreateAnimation("ROTATION")
    self.ui.streamIcon.rotAnim:SetOrder(1)
    self.ui.streamIcon.rotAnim:SetDuration(8)
    self.ui.streamIcon.rotAnim:SetDegrees(-360)

    self.ui.streamIcon:SetScript("OnEnter",
        function(button) 
            if(button.tooltip ~= nil) then
                GameTooltip:SetOwner(button, "ANCHOR_LEFT")
                GameTooltip:SetText(button.tooltip, nil, nil, nil, nil, true)
            end
        end)
    self.ui.streamIcon:SetScript("OnLeave", GameTooltip_Hide)
    self.ui.streamIcon:SetScript("OnShow", function(button) button:SetFrameLevel( (button:GetParent()):GetFrameLevel() + 1 ) end)

    self.ui.streamIcon:Hide()

    self.ui.itemPopupframe = CreateFrame("Frame", "AtlasLoot_PopupFrame", nil, "AtlasLootFrameTemplate")
    self.ui.itemPopupframe:EnableMouse()
    self.ui.itemPopupframe:SetScript("OnLeave", function(frame)
        self:ItemOnLeave(frame)
    end)
    self.ui.itemPopupframe:SetScript("OnEnter", function()
        self.ui.itemPopupframe:Show()
    end)
    self.ui.itemPopupframe:SetWidth(211)
    self.ui.itemPopupframe:Hide()

    self:FrameOpaqueToogle()
end