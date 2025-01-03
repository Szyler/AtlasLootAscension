local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local BLUE = "|cff6666ff"
local WHITE = "|cFFFFFFFF"
local INDENT = "    "

function AtlasLoot:InitializeUI()

    --Main AtlasLoot Frame
    self.mainUI = CreateFrame("FRAME", "AtlasLootDefaultFrame", UIParent, "PortraitFrameTemplate")
    self.mainUI:SetPoint("CENTER",0,0)
    self.mainUI:SetSize(1105,640)
    self.mainUI:EnableMouse(true)
    self.mainUI:SetMovable(true)
    self.mainUI.portrait:SetPortraitTexture("Interface\\Icons\\INV_Box_01")
    self.mainUI:SetFrameStrata("HIGH")
    self.mainUI.TitleText:SetText(self.AddonName)
    self.mainUI:RegisterForDrag("LeftButton")
    self.mainUI:EnableKeyboard(true)
    self.mainUI:SetToplevel(true)
    self.mainUI:Hide()
    self.mainUI:SetScript("OnShow", function()
        self:OnShow()
    end)
    self.mainUI:SetScript("OnMouseDown", function()
        self.Dewdrop:Close()
        AtlasLootDefaultFrameSearchBox:ClearFocus()
    end)
    self.mainUI:SetScript("OnHide", function()
        self.Dewdrop:Close()
        self:ItemsLoading("reset")
    end)
    self.mainUI:SetScript("OnDragStart", function(frame) frame:StartMoving() end)
    self.mainUI:SetScript("OnDragStop", function(frame) frame:StopMovingOrSizing()end)

    --Loot Background
    self.mainUI.lootBackground = CreateFrame("Frame", "AtlaslLoot_LootBackground", self.mainUI)
    self.mainUI.lootBackground:SetSize(770,515)
    self.mainUI.lootBackground:SetPoint("TOPLEFT", self.mainUI, "TOPLEFT",30,-86)
    self.mainUI.lootBackground:EnableMouse()
    self.mainUI.lootBackground:EnableMouseWheel()
    self.mainUI.lootBackground:SetScript("OnMouseDown",function(self, button)
        if _G["AtlasLootItemsFrame_BACK"]:IsVisible() and button == "RightButton" then
            self:BackButton_OnClick()
        elseif AtlasLootDefaultFrame_AdvancedSearchPanel:IsVisible() and button == "RightButton" then
            self:AdvancedSearchClose()
        end
        self.Dewdrop:Close()
        AtlasLootDefaultFrameSearchBox:ClearFocus()
    end)
    self.mainUI.lootBackground:SetScript("OnMouseWheel", function(self,delta)
            if AtlasLootItemsFrame_NEXT:IsVisible() and delta == -1 then
                AtlasLootItemsFrame_NEXT:Click()
            end
            if AtlasLootItemsFrame_PREV:IsVisible() and delta == 1 then
                AtlasLootItemsFrame_PREV:Click()
            end
    end)
    self.mainUI.lootBackground:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    self.mainUI.lootBackground.Back = self.mainUI.lootBackground:CreateTexture("AtlasLootItemsFrame_Back", "BACKGROUND")
    self.mainUI.lootBackground.Back:SetAllPoints()
    self.mainUI.lootBackground.Back:SetSize(730,475)
    self.mainUI.lootBackground.Back:SetPoint("CENTER",self.mainUI.lootBackground)

----------------------------------- Item Loot Panel -------------------------------------------
    self.mainUI.itemframe = CreateFrame("Frame", "AtlasLootItemsFrame", self.mainUI.lootBackground)
    self.mainUI.itemframe:SetSize(765,510)
    self.mainUI.itemframe:Hide()
    self.mainUI.itemframe:SetPoint("TOPLEFT", self.mainUI.lootBackground, "TOPLEFT", 2, -2)
    self.mainUI.itemframe.Label = self.mainUI.itemframe:CreateFontString("AtlasLoot_BossName","OVERLAY","GameFontHighlightLarge")
    self.mainUI.itemframe.Label:SetPoint("TOP", self.mainUI.itemframe, "TOP")
    self.mainUI.itemframe.Label:SetSize(512,30)
    self.mainUI.itemframe.Label:SetJustifyH("CENTER")

for num = 1, 30 do
    local button = CreateFrame("Button","AtlasLootItem_"..num, self.mainUI.itemframe)
        button:SetID(num)
        button:SetSize(236,29)
        button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
        button.icon = button:CreateTexture("AtlasLootItem_"..num.."_Icon","ARTWORK")
        button.icon:SetSize(25,25)
        button.icon:SetPoint("TOPLEFT", "AtlasLootItem_"..num,"TOPLEFT",1,-1)
        button.Highlight = button:CreateTexture("AtlasLootItem_"..num.."_Highlight", "OVERLAY")
        button.Highlight:SetSize(26,26)
        button.Highlight:SetPoint("CENTER", button.icon, 0, 0)
        button.Highlight:SetTexture("Interface\\AddOns\\AtlasLoot\\Images\\knownGreen")
        button.Highlight:Hide()
        button.name = button:CreateFontString("AtlasLootItem_"..num.."_Name","ARTWORK","GameFontNormal")
        button.name:SetSize(320,12)
        button.name:SetPoint("TOPLEFT","AtlasLootItem_"..num.."_Icon","TOPRIGHT",3,0)
        button.name:SetJustifyH("LEFT")
        button.extra = button:CreateFontString("AtlasLootItem_"..num.."_Extra","ARTWORK","GameFontNormal")
        button.extra:SetSize(320,10)
        button.extra:SetPoint("TOPLEFT","AtlasLootItem_"..num.."_Name","BOTTOMLEFT",0,-1)
        button.extra:SetJustifyH("LEFT")
        button:RegisterForClicks("AnyDown")
        button.number = num
        button:SetScript("OnEnter", function(button) self:ItemOnEnter(button) end)
        button:SetScript("OnLeave", function(button) self:ItemOnLeave(button) end)
        button:SetScript("OnClick", function(button, arg1) self:ItemOnClick(button, arg1) end)
        if num == 1 then
            button:SetPoint("TOP", self.mainUI.itemframe, "TOP",-210,-35)
        elseif num == 16 then
            button:SetPoint("TOP", self.mainUI.itemframe, "TOP",150,-35)
        else
            button:SetPoint("TOPLEFT", "AtlasLootItem_"..(num - 1), "BOTTOMLEFT")
        end
end

    -- Next Button
    self.mainUI.nextbtn = CreateFrame("Button", "AtlasLootItemsFrame_NEXT", self.mainUI.itemframe)
    self.mainUI.nextbtn:SetPoint("BOTTOMRIGHT", self.mainUI.itemframe, -5, 5)
    self.mainUI.nextbtn:SetSize(32,32)
    self.mainUI.nextbtn.texture = self.mainUI.nextbtn:CreateTexture(nil, "BACKGROUND")
    self.mainUI.nextbtn.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background")
    self.mainUI.nextbtn.texture:SetSize(32,32)
    self.mainUI.nextbtn.texture:SetPoint("CENTER",0,0)
    self.mainUI.nextbtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up")
    self.mainUI.nextbtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down")
    self.mainUI.nextbtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled")
    self.mainUI.nextbtn:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    self.mainUI.nextbtn:SetScript("OnClick", function(button) self:NavButton_OnClick(button) end)
    self.mainUI.nextbtn:Hide()

    -- Previous button
    self.mainUI.prevbtn = CreateFrame("Button", "AtlasLootItemsFrame_PREV", self.mainUI.itemframe)
    self.mainUI.prevbtn:SetPoint("BOTTOMLEFT", self.mainUI.itemframe, 5, 5)
    self.mainUI.prevbtn:SetSize(32,32)
    self.mainUI.prevbtn.texture = self.mainUI.prevbtn:CreateTexture(nil, "BACKGROUND")
    self.mainUI.prevbtn.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background")
    self.mainUI.prevbtn.texture:SetSize(32,32)
    self.mainUI.prevbtn.texture:SetPoint("CENTER",0,0)
    self.mainUI.prevbtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up")
    self.mainUI.prevbtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down")
    self.mainUI.prevbtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled")
    self.mainUI.prevbtn:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    self.mainUI.prevbtn:SetScript("OnClick", function(button) self:NavButton_OnClick(button) end)
    self.mainUI.prevbtn:Hide()

    -- Back button
    self.mainUI.backbtn = CreateFrame("Button", "AtlasLootItemsFrame_BACK", self.mainUI.itemframe, "OptionsButtonTemplate")
    self.mainUI.backbtn:SetPoint("BOTTOM", self.mainUI.itemframe, "BOTTOM",0,5)
    self.mainUI.backbtn:SetText(AL["Back"])
    self.mainUI.backbtn:SetScript("OnClick", function(button) self:BackButton_OnClick() end)
    self.mainUI.backbtn:Hide()

    -- Learn Unknown vanity spells button
    self.mainUI.learnSpellbtn = CreateFrame("Button", "AtlasLootItemsFrame_Spell_Vanity_Learn", self.mainUI.itemframe, "OptionsButtonTemplate")
    self.mainUI.learnSpellbtn:SetPoint("BOTTOM", self.mainUI.itemframe, "BOTTOM",0,5)
    self.mainUI.learnSpellbtn:SetText("Learn Unknown")
    self.mainUI.learnSpellbtn:SetWidth(150)
    self.mainUI.learnSpellbtn:SetScript("OnClick", function() self:LearnAllUnknownVanitySpells() end)
    self.mainUI.learnSpellbtn:SetScript("OnEnter", function(button) 
        self:SetGameTooltip(button,"Learn all the vanity items and spells that you currently don't know on this character")
    end)
    self.mainUI.learnSpellbtn:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.mainUI.learnSpellbtn:Hide()

    -- Wishlist Own/Swap button
    self.mainUI.wishlistSwapButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Swap", self.mainUI.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistSwapButton:SetPoint("BOTTOM", self.mainUI.itemframe, "BOTTOM",0,5)
    self.mainUI.wishlistSwapButton:SetScript("OnClick", function(button) self:WishListSwapButton(true) end)
    self.mainUI.wishlistSwapButton:Hide()

    -- Wishlist Options button
    self.mainUI.wishlistOptionsButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Options", self.mainUI.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistOptionsButton:SetPoint("BOTTOM", "AtlasLootItemsFrame_Wishlist_Swap", "BOTTOM",-100,0)
    self.mainUI.wishlistOptionsButton:SetText(AL["Options"])
    self.mainUI.wishlistOptionsButton:SetScript("OnClick", function(button) self:WishListOptionsOpen() end)
    self.mainUI.wishlistOptionsButton:Hide()

        -- Wishlist Item Lock button
    self.mainUI.wishlistLockButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_UnLock", self.mainUI.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistLockButton:SetPoint("BOTTOM", "AtlasLootItemsFrame_Wishlist_Options", "BOTTOM",-100,0)
    self.mainUI.wishlistLockButton:SetScript("OnClick", function(self)
        if self.itemUnlock then
            self.itemUnlock = false
            self.mainUI.wishlistLockButton:SetText("Locked")
        else
            self.itemUnlock = true
            self.mainUI.wishlistLockButton:SetText("UnLocked")
        end
    end)
    self.mainUI.wishlistLockButton:SetScript("OnEnter", function(button)
        local text = {
            "Toggle Item Moving",
            "Left Click to move item up",
            "Right Click to move item down",
            "Alt + Left Click to add a Custom Header"
        }
        self:SetGameTooltip(button, text)
    end)
    self.mainUI.wishlistLockButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.mainUI.wishlistLockButton:SetText("Locked")
    self.mainUI.wishlistLockButton:Hide()

    -- Wishlist Share button
    self.mainUI.wishlistShareButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Share", self.mainUI.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistShareButton:SetPoint("BOTTOM", "AtlasLootItemsFrame_Wishlist_Swap", "BOTTOM",100,0)
    self.mainUI.wishlistShareButton:SetText(AL["Share"])
    self.mainUI.wishlistShareButton:SetScript("OnClick", function() self:ShareWishList() end)
    self.mainUI.wishlistShareButton:Hide()

    -- Wishlist Share button
    self.mainUI.wishlistLearnVanityButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Vanity_Learn", self.mainUI.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistLearnVanityButton:SetPoint("BOTTOM", "AtlasLootItemsFrame_Wishlist_Share", "BOTTOM",100,0)
    self.mainUI.wishlistLearnVanityButton:SetText("Get Items")
    self.mainUI.wishlistLearnVanityButton:SetScript("OnClick", function() self:BatchRequestVanity(self.vanityItems, true) end)
    self.mainUI.wishlistLearnVanityButton:SetScript("OnEnter", function(self)
        self:SetGameTooltip(button,"Learn/Recive all the vanity items on this page")
    end)
    self.mainUI.wishlistLearnVanityButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.mainUI.wishlistLearnVanityButton:Hide()

    -- Filter Button
    self.mainUI.filterButton = CreateFrame("CheckButton","AtlasLootFilterCheck",self.mainUI.itemframe,"OptionsCheckButtonTemplate")
    self.mainUI.filterButton:SetPoint("TOPLEFT", self.mainUI.itemframe,5 ,-5)
    self.mainUI.filterButton.Label = self.mainUI.filterButton:CreateFontString("AtlasLootFilterCheckText","OVERLAY","GameFontNormal")
    self.mainUI.filterButton.Label:SetText(AL["Filter"])
    self.mainUI.filterButton.Label:SetPoint("RIGHT", self.mainUI.filterButton, 30, 2)
    self.mainUI.filterButton:RegisterForClicks("LeftButtonDown","RightButtonDown")
    self.mainUI.filterButton:SetScript("OnClick", function(button, btnclick) self:FilterEnableButton(button, btnclick) end)
        
------------------------------------ Buttons at the top of the frame ---------------------------------------

    --SubMenu Button
    self.mainUI.submenuButton = CreateFrame("Button", "AtlasLootDefaultFrame_SubMenu", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.submenuButton:SetSize(275,25)
    self.mainUI.submenuButton:SetPoint("TOP", self.mainUI.lootBackground,"TOP",56,30)
    self.mainUI.submenuButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.submenuButton.Lable = self.mainUI.submenuButton:CreateFontString(nil, "OVERLAY","GameFontNormal")
    self.mainUI.submenuButton.Lable:SetPoint("TOP",self.mainUI.submenuButton,"BOTTOM",0,42)
    self.mainUI.submenuButton.Lable:SetText("Select Subcategory")
    self.mainUI.submenuButton.Lable:Show()
    self.mainUI.submenuButton:SetScript("OnClick", function(button)
        self:DewdropSubMenuOpen(AtlasLoot_SubMenus[button.currentTable])
    end)

    --Moduel Menu Button
    self.mainUI.moduelMenuButton = CreateFrame("Button", "AtlasLootDefaultFrame_Menu", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.moduelMenuButton:SetSize(275,25)
    self.mainUI.moduelMenuButton:SetPoint("RIGHT", "AtlasLootDefaultFrame_SubMenu", "LEFT",-5,0)
    self.mainUI.moduelMenuButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.moduelMenuButton.Lable:SetText("Select Module")
    self.mainUI.moduelMenuButton.Lable:Show()
    self.mainUI.moduelMenuButton:SetText(AL["Select Loot Table"])
    self.mainUI.moduelMenuButton:SetScript("OnClick", function(button)
        self:DewdropModuleMenuOpen()
    end)

    --Options Button
    self.mainUI.optionsCogButton = CreateFrame("Button", "AtlasLootSettingsCog", self.mainUI, "SettingsGearButtonTemplate")
    self.mainUI.optionsCogButton:SetPoint("LEFT", "AtlasLootDefaultFrame_Menu",-27,0)
    self.mainUI.optionsCogButton:RegisterForClicks("AnyDown")
    self.mainUI.optionsCogButton:SetScript("OnClick", function(button,buttonClick)
        if buttonClick == "LeftButton" then
            self:OptionsToggle()
        else
            self:OpenSettingQuickMenu(button)
        end
    end)
    self.mainUI.optionsCogButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Options")
    end)
    self.mainUI.optionsCogButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    --Expansion Menu Button
    self.mainUI.expansionMenuButton = CreateFrame("Button", "AtlasLootDefaultFrame_ExpansionMenu", self.mainUI, "AtlasLootDropMenuTemplate");
    self.mainUI.expansionMenuButton:SetSize(185,25);
    self.mainUI.expansionMenuButton:SetPoint("LEFT", "AtlasLootDefaultFrame_SubMenu", "RIGHT",5,0);
    self.mainUI.expansionMenuButton:SetText(AtlasLoot_ExpansionMenu[GetAccountExpansionLevel()+1][1]);
    self.mainUI.expansionMenuButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.expansionMenuButton.Lable:SetText("Select Expansion")
    self.mainUI.expansionMenuButton.Lable:Show()
    self.mainUI.expansionMenuButton:SetScript("OnClick", function(button) self:DewdropExpansionMenuOpen(button) end)

---------------------------------------- Buttons Under the loot and subtable frames -------------------------------------------
    --Search Edit Box
    self.mainUI.searchbox = CreateFrame("EditBox", "AtlasLootDefaultFrameSearchBox", self.mainUI, "SearchBoxTemplate")
    self.mainUI.searchbox:SetSize(190,25)
    self.mainUI.searchbox:SetPoint("BOTTOMLEFT", self.mainUI, "BOTTOMLEFT", 35, 10.5)
    self.mainUI.searchbox:SetScript("OnEnterPressed", function(frame)
        self:Search(frame:GetText())
        frame:ClearFocus()
    end)
    self.mainUI.searchbox:SetScript("OnTextChanged", function(frame)
		if frame:HasFocus() then
			SearchBoxTemplate_OnTextChanged(frame)
		end
    end)

   --Search Button
    self.mainUI.searchButton = CreateFrame("Button","AtlasLootDefaultFrameSearchButton",self.mainUI,"AtlasLootDropMenuTemplate")
    self.mainUI.searchButton:SetSize(69,25)
    self.mainUI.searchButton:SetPoint("LEFT",self.mainUI.searchbox,"RIGHT",2,-1)
    self.mainUI.searchButton:SetText(AL["Search"])
    self.mainUI.searchButton:RegisterForClicks("AnyDown")
    self.mainUI.searchButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.searchButton:SetScript("OnClick", function(button, buttonClick)
        if buttonClick == "LeftButton" then
           self:Search(self.mainUI.searchbox:GetText())
           self.mainUI.searchbox:ClearFocus()
        else
           self:ShowSearchOptions(button)
        end
    end)
    self.mainUI.searchButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Left click to search\nRight click to select what modules to search in")
    end)
    self.mainUI.searchButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

   --Last Result Button
    self.mainUI.lastResultButton = CreateFrame("Button","AtlasLootDefaultFrameLastResultButton",self.mainUI.searchbox,"AtlasLootDropMenuTemplate")
    self.mainUI.lastResultButton:SetSize(80,25)
    self.mainUI.lastResultButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.lastResultButton.Icon:Hide()
    self.mainUI.lastResultButton.Text:SetJustifyH("CENTER")
    self.mainUI.lastResultButton.Text:ClearAllPoints()
    self.mainUI.lastResultButton.Text:SetPoint("CENTER")
    self.mainUI.lastResultButton:SetPoint("LEFT", "AtlasLootDefaultFrameSearchButton", "RIGHT", 2, 0)
    self.mainUI.lastResultButton:SetText(AL["Last Result"])
    self.mainUI.lastResultButton:SetScript("OnClick", function() self:ShowSearchResult() end)
    self.mainUI.lastResultButton:SetScript("OnEnter", function(button) self:SetGameTooltip(button, "Open Last Search Result") end)
    self.mainUI.lastResultButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    -- Advanced Search Button
    self.mainUI.advancedSearchButton = CreateFrame("Button","AtlasLootDefaultFrameAdvancedSearchButton", self.mainUI,"AtlasLootDropMenuTemplate")
    self.mainUI.advancedSearchButton:SetSize(80,25)
    self.mainUI.advancedSearchButton.Icon:Hide()
    self.mainUI.advancedSearchButton.Text:SetJustifyH("CENTER")
    self.mainUI.advancedSearchButton.Text:ClearAllPoints()
    self.mainUI.advancedSearchButton.Text:SetPoint("CENTER")
    self.mainUI.advancedSearchButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.advancedSearchButton:SetPoint("LEFT",self.mainUI.lastResultButton,"RIGHT",2)
    self.mainUI.advancedSearchButton:SetText("Advanced")
    self.mainUI.advancedSearchButton:SetScript("OnClick", function()
        self:AdvancedSearchShow()
        self.mainUI.searchbox:ClearFocus()
    end)
    self.mainUI.advancedSearchButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Advanced Search")
    end)
    self.mainUI.advancedSearchButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    --Wish List Button
    self.mainUI.wishlistButton = CreateFrame("Button", "AtlasLootDefaultFrameWishListButton", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.wishlistButton:SetPoint("LEFT", "AtlasLootDefaultFrameAdvancedSearchButton", "RIGHT", 2, 0)
    self.mainUI.wishlistButton:SetSize(80,25)
    self.mainUI.wishlistButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.wishlistButton:RegisterForClicks("LeftButtonDown","RightButtonDown")
    self.mainUI.wishlistButton:SetScript("OnClick", function(button, btnclick)self:WishListButton(button,true,btnclick) end)
    self.mainUI.wishlistButton:SetText(AL["Wishlist"])
    self.mainUI.wishlistButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Right Click For Menu")
    end)
    self.mainUI.wishlistButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    self.mainUI.favoritesButton = CreateFrame("Button", "AtlasLoot_Favorites", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.favoritesButton:SetPoint("LEFT", "AtlasLootDefaultFrameWishListButton", "RIGHT", 2, 0)
    self.mainUI.favoritesButton:SetText("Favorites")
    self.mainUI.favoritesButton:SetSize(150,25)
    self.mainUI.favoritesButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.favoritesButton:SetScript("OnEnter", function(button)     
        self:SetGameTooltip(button,"Left click open a favorite\nAlt + Right click to set favorite")
        self.mainUI.favoritesPopupFrame:Show()
    end)
    self.mainUI.favoritesButton:SetScript("OnLeave", function()
        GameTooltip:Hide()
        if GetMouseFocus():GetName() ~= "AtlasLoot_FavoritesPopupFrame" then
            self.mainUI.favoritesPopupFrame:Hide()
        end
    end)

    -- Load Current Instance Button
    self.mainUI.currentInstanceButton = CreateFrame("Button","AtlasLootDefaultFrame_LoadInstanceButton", self.mainUI,"AtlasLootDropMenuTemplate")
    self.mainUI.currentInstanceButton:SetSize(107,25)
    self.mainUI.currentInstanceButton.Icon:Hide()
    self.mainUI.currentInstanceButton.Text:SetJustifyH("CENTER")
    self.mainUI.currentInstanceButton.Text:ClearAllPoints()
    self.mainUI.currentInstanceButton.Text:SetPoint("CENTER")
    self.mainUI.currentInstanceButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.currentInstanceButton:SetPoint("LEFT", self.mainUI.favoritesButton, "RIGHT", 2, 0)
    self.mainUI.currentInstanceButton:SetScript("OnClick", function() self:ShowInstance() end)
    self.mainUI.currentInstanceButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.mainUI.currentInstanceButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Goto current instances lootpage")
    end)
    self.mainUI.currentInstanceButton:SetText("Current Instance")

    self.mainUI.favoritesPopupFrame = CreateFrame("Frame", "AtlasLoot_FavoritesPopupFrame", AtlasLoot_Favorites)
    self.mainUI.favoritesPopupFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    self.mainUI.favoritesPopupFrame:EnableMouse()
    self.mainUI.favoritesPopupFrame:SetScript("OnLeave", function()
        local focus = GetMouseFocus():GetName()
        if focus ~= "AtlasLootDefaultFrame_Preset1" and focus ~= "AtlasLootDefaultFrame_Preset2" and focus ~= "AtlasLootDefaultFrame_Preset3" and focus ~= "AtlasLootDefaultFrame_Preset4" then
            self.mainUI.favoritesPopupFrame:Hide()
        end
    end)
    self.mainUI.favoritesPopupFrame:SetPoint("BOTTOMLEFT",0,-37)
    self.mainUI.favoritesPopupFrame:SetSize(150, 40)
    self.mainUI.favoritesPopupFrame:Hide()

    --Favorites Buttons
    local function presetcreate(preset,num)
        preset:SetSize(30,30)
        preset.tex = preset:CreateTexture(nil, "ARTWORK")
        preset.tex:SetPoint("CENTER")
        preset.Icon:Hide()
        preset.Text:Hide()
        preset.template = "AtlasLootDropMenuTemplate"
        local tex = AtlasUtil:GetAtlasInfo("services-number-"..num)
        preset.tex:SetTexture(tex.filename)
        preset.tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
        preset.tex:SetSize(25,25)
        preset:SetScript("OnEnter", function(button)
            if AtlasLootCharDB["QuickLooks"][num] then
                self:SetGameTooltip(button,AtlasLootCharDB["QuickLooks"][num][6])
            end
        end)
        preset:RegisterForClicks("LeftButtonDown","RightButtonDown")
        preset:SetScript("OnLeave", function()
            GameTooltip:Hide()
            if not GetMouseFocus() then return end
            local focus = GetMouseFocus():GetName()
            if focus ~= "AtlasLoot_FavoritesPopupFrame" and focus ~= self.mainUI.favoritesButton and focus ~= "AtlasLootDefaultFrame_Preset1" and focus ~= "AtlasLootDefaultFrame_Preset2" and focus ~= "AtlasLootDefaultFrame_Preset3" and focus ~= "AtlasLootDefaultFrame_Preset4"  then
                self.mainUI.favoritesPopupFrame:Hide()
            end
        end)
        preset:SetScript("OnClick", function(button, buttonClick)
            if buttonClick == "RightButton" and IsAltKeyDown() then
                self:SetFavorites(num)
            else
                if AtlasLootCharDB["QuickLooks"][num] and self:IsLootTableAvailable(AtlasLootCharDB["QuickLooks"][num][4]) then
                    button.lastModule = AtlasLootCharDB["QuickLooks"][num][4]
                    button.currentTable = AtlasLootCharDB["QuickLooks"][num][5]
                    if AtlasLootCharDB["QuickLooks"][num][2] == "AtlasLootWishList" then
                        self:ShowWishList(AtlasLootCharDB["QuickLooks"][num][1], AtlasLootCharDB["QuickLooks"][num][3])
                    else
                        self:ShowItemsFrame(AtlasLootCharDB["QuickLooks"][num][1], AtlasLootCharDB["QuickLooks"][num][2], AtlasLootCharDB["QuickLooks"][num][3])
                    end
                end
            end
        end)
    end
    --QuickLook Button 1
local presetsize = 3
local preset1 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset1", self.mainUI.favoritesPopupFrame, "AtlasLootDropMenuTemplate")

    presetcreate(preset1,1)
    preset1:SetPoint("LEFT", self.mainUI.favoritesPopupFrame, 8, 0)
    --QuickLook Button 2
local preset2 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset2", self.mainUI.favoritesPopupFrame, "AtlasLootDropMenuTemplate")

    presetcreate(preset2,2)
    preset2:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset1", "RIGHT", presetsize, 0)
    --QuickLook Button 3
local preset3 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset3", self.mainUI.favoritesPopupFrame, "AtlasLootDropMenuTemplate")

    presetcreate(preset3,3)
    preset3:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset2", "RIGHT", presetsize, 0)
    --QuickLook Button 4
local preset4 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset4", self.mainUI.favoritesPopupFrame, "AtlasLootDropMenuTemplate")

    presetcreate(preset4,4)
    preset4:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset3", "RIGHT", presetsize, 0)

---------------------  Diffcuility ScrollFrame ----------------------------------
local ROW_HEIGHT = 16   -- How tall is each row?
local MAX_ROWS = 5      -- How many rows can be shown at once?

    self.mainUI.difficultyScrollFrame = CreateFrame("Frame", "Atlasloot_Difficulty_ScrollFrame", self.mainUI)
    self.mainUI.difficultyScrollFrame:EnableMouse(true)
    self.mainUI.difficultyScrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS + 16)
    self.mainUI.difficultyScrollFrame:SetPoint("TOPRIGHT",self.mainUI,-30,-55.5)
    self.mainUI.difficultyScrollFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    self.mainUI.difficultyScrollFrame.Lable = self.mainUI.difficultyScrollFrame:CreateFontString("Atlasloot_HeaderLabel", "OVERLAY","GameFontNormal")
    self.mainUI.difficultyScrollFrame.Lable:SetPoint("TOPLEFT",self.mainUI.difficultyScrollFrame,10,-10)
    self.mainUI.difficultyScrollFrame.Lable:SetJustifyH("LEFT")
    self.mainUI.difficultyScrollFrame.Lable:SetFont("GameFontNormal", 24)
    self.mainUI.difficultyScrollFrame.Back = self.mainUI.difficultyScrollFrame:CreateTexture("Atlasloot_Difficulty_ScrollFrame_Back", "BACKGROUND")
    self.mainUI.difficultyScrollFrame.Back:SetAllPoints()
    self.mainUI.difficultyScrollFrame.Back:SetSize(255, ROW_HEIGHT * MAX_ROWS + 6)
    self.mainUI.difficultyScrollFrame.Back:SetPoint("CENTER",self.mainUI.difficultyScrollFrame)

function self:ScrollFrameUpdate(hide,wishlist)
    local maxValue,offset,row,value
    self.mainUI.difficultyScrollFrame.wishList = nil
    if wishlist then
        self.mainUI.difficultyScrollFrame.wishList = wishlist
        maxValue = #AtlasLootWishList[wishlist]
        FauxScrollFrame_Update(self.mainUI.difficultyScrollFrame.scrollSlider, maxValue, MAX_ROWS, ROW_HEIGHT)
        offset = FauxScrollFrame_GetOffset(self.mainUI.difficultyScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS do
            value = i + offset
            self.mainUI.difficultyScrollFrame.rows[i]:SetChecked(false)
            self.mainUI.difficultyScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and AtlasLootWishList[wishlist][value] then
                row = self.mainUI.difficultyScrollFrame.rows[i]
                row:SetText("|cffFFd200"..AtlasLootWishList[wishlist][value].Name)
                row.itemIndex = value
                if row.itemIndex == ATLASLOOT_CURRENT_WISHLIST_NUM then
                    row:SetChecked(true)
                end
                row:Show()
            else
                self.mainUI.difficultyScrollFrame.rows[i]:Hide()
            end
        end
    elseif self.Difficulties then
        maxValue = #self.Difficulties[self.CurrentType]
        FauxScrollFrame_Update(self.mainUI.difficultyScrollFrame.scrollSlider, maxValue, MAX_ROWS, ROW_HEIGHT)
        offset = FauxScrollFrame_GetOffset(self.mainUI.difficultyScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS do
            value = i + offset
            self.mainUI.difficultyScrollFrame.rows[i]:SetChecked(false)
            self.mainUI.difficultyScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and self.Difficulties[self.CurrentType][value] and hide == nil then
                row = self.mainUI.difficultyScrollFrame.rows[i]
                row:SetText("|cffFFd200"..self.Difficulties[self.CurrentType][value][1])
                row.itemIndex = self.Difficulties[self.CurrentType][value][2]
                if row.itemIndex == self.ItemindexID then
                    row:SetChecked(true)
                end
                row:Show()
            else
                self.mainUI.difficultyScrollFrame.rows[i]:Hide()
            end
        end
    end
end

    self.mainUI.difficultyScrollFrame.scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameScroll", self.mainUI.difficultyScrollFrame, "FauxScrollFrameTemplate")
    self.mainUI.difficultyScrollFrame.scrollSlider:SetPoint("TOPLEFT", 0, -8)
    self.mainUI.difficultyScrollFrame.scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    self.mainUI.difficultyScrollFrame.scrollSlider:SetScript("OnVerticalScroll", function(scroll, offset)
        scroll.offset = math.floor(offset / ROW_HEIGHT + 0.5)
    if self.mainUI.difficultyScrollFrame.wishList then
        self:ScrollFrameUpdate(nil,self.mainUI.difficultyScrollFrame.wishList)
    else
        self:ScrollFrameUpdate()
    end
end)

self.mainUI.difficultyScrollFrame.scrollSlider:SetScript("OnShow", function()
    if self.mainUI.difficultyScrollFrame.wishList then
        self:ScrollFrameUpdate(nil,self.mainUI.difficultyScrollFrame.wishList)
    else
        self:ScrollFrameUpdate()
    end
end)

local rows = setmetatable({}, { __index = function(t, i)
	local row = CreateFrame("CheckButton", "$parentRow"..i, self.mainUI.difficultyScrollFrame)
	row:SetSize(230, ROW_HEIGHT)
    row:SetFrameStrata("HIGH")
	row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
    row:SetScript("OnClick", function()
        if self.mainUI.difficultyScrollFrame.wishList then
            self:ShowWishList(self.mainUI.difficultyScrollFrame.wishList,row.itemIndex)
            AtlasLoot_CurrentWishList["Show"].ListNum = row.itemIndex
            self:ScrollFrameUpdate(nil,self.mainUI.difficultyScrollFrame.wishList)
        else
            self.ItemindexID = row.itemIndex
            if not AtlasLootDefaultFrame_AdvancedSearchPanel:IsVisible() then
            self:ShowItemsFrame(self.mainUI.itemframe.refresh[1], self.mainUI.itemframe.refresh[2], self.mainUI.itemframe.refresh[3])
            end
            self:ScrollFrameUpdate()
        end

    end)
	if i == 1 then
		row:SetPoint("TOPLEFT", self.mainUI.difficultyScrollFrame, 8, -8)
	else
		row:SetPoint("TOPLEFT", self.mainUI.difficultyScrollFrame.rows[i-1], "BOTTOMLEFT")
	end

	rawset(t, i, row)
	return row
end })

self.mainUI.difficultyScrollFrame.rows = rows
local MAX_ROWS2 = 26      -- How many rows can be shown at once?

--------------------Subtable Frame--------------------
    self.mainUI.lootTableScrollFrame = CreateFrame("Frame", "Atlasloot_SubTableFrame", self.mainUI)
    self.mainUI.lootTableScrollFrame:EnableMouse(true)
    self.mainUI.lootTableScrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS2 + 23)
    self.mainUI.lootTableScrollFrame:SetPoint("BOTTOMLEFT","Atlasloot_Difficulty_ScrollFrame",0,-449.5)
    self.mainUI.lootTableScrollFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    self.mainUI.lootTableScrollFrame.Back = self.mainUI.lootTableScrollFrame:CreateTexture("Atlasloot_SubTableFrame_Back", "BACKGROUND")
    self.mainUI.lootTableScrollFrame.Back:SetAllPoints()
    self.mainUI.lootTableScrollFrame.Back:SetSize(255, ROW_HEIGHT * MAX_ROWS2 + 13)
    self.mainUI.lootTableScrollFrame.Back:SetPoint("CENTER",self.mainUI.lootTableScrollFrame)

    function self:SubTableScrollFrameUpdate(tablename, dataSource, tablenum)
        if tablename == "FilterList" then return end
        local maxValue = #_G[dataSource][tablename]
        if dataSource == "AtlasLoot_MapData" then maxValue = #_G[dataSource][tablename][tablenum] end
        self.mainUI.lootTableScrollFrame.tablename = tablename
        self.mainUI.lootTableScrollFrame.dataSource = dataSource
        self.mainUI.lootTableScrollFrame.tablenum = tablenum
        FauxScrollFrame_Update(self.mainUI.lootTableScrollFrame.scrollSlider, maxValue, MAX_ROWS2, ROW_HEIGHT)
        local offset = FauxScrollFrame_GetOffset(self.mainUI.lootTableScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS2 do
            local value = i + offset
            self.mainUI.lootTableScrollFrame.rows[i]:SetChecked(false)
            self.mainUI.lootTableScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and (_G[dataSource][tablename][value] or _G[dataSource][tablename][tablenum][value]) and tablename ~= "SearchMENU" then
                local row = self.mainUI.lootTableScrollFrame.rows[i]
                    row.dataSource = dataSource
                    row.tablename = tablename
                    row.tablenum = value
                if dataSource == "AtlasLoot_MapData" then
                    local text = _G[dataSource][tablename][tablenum][value][1]
                    if _G[dataSource][tablename][tablenum][value][2] then text = text.._G[dataSource][tablename][tablenum][value][2] end
                    if _G[dataSource][tablename][tablenum][value].SubZone then
                        text = BLUE..text
                    elseif not _G[dataSource][tablename][tablenum][value].Zone then
                        text = WHITE..text
                    end
                    if not _G[dataSource][tablename][tablenum][value].cords and not _G[dataSource][tablename][tablenum][value].Zone and not _G[dataSource][tablename][tablenum][value].SubZone then text = INDENT..text end
                    row.Text:SetText(text)
                    row:SetScript("OnEnter", function(self)
                        GameTooltip:SetOwner(self, "ANCHOR_TOP")
                        GameTooltip:SetText(_G[dataSource][tablename][tablenum][value][1])
                        GameTooltip:Show()
                    end)
                    row:SetScript("OnLeave", function() GameTooltip:Hide() end)
                else
                    row.Text:SetText("|cffFFd200"..(_G[dataSource][tablename][value].Name or ""))
                    row:SetScript("OnEnter", function(self)
                        GameTooltip:Hide()
                    end)
                    if tablenum == value and dataSource ~= "AtlasLoot_MapData" then
                        row:SetChecked(true)
                    end
                end
                row:Show()
            else
                self.mainUI.lootTableScrollFrame.rows[i]:Hide()
            end
        end
    end

    self.mainUI.lootTableScrollFrame.scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameSubTableScroll",Atlasloot_SubTableFrame,"FauxScrollFrameTemplate")
    self.mainUI.lootTableScrollFrame.scrollSlider:SetPoint("TOPLEFT", 0, -8)
    self.mainUI.lootTableScrollFrame.scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    self.mainUI.lootTableScrollFrame.scrollSlider:SetScript("OnVerticalScroll", function(slider, offset)
        slider.offset = math.floor(offset / ROW_HEIGHT + 0.5)
            self:SubTableScrollFrameUpdate(self.mainUI.lootTableScrollFrame.tablename, self.mainUI.lootTableScrollFrame.dataSource, self.mainUI.lootTableScrollFrame.tablenum)
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
        row:SetPoint("TOPLEFT", self.mainUI.lootTableScrollFrame, 8, -8)
    else
        row:SetPoint("TOPLEFT", self.mainUI.lootTableScrollFrame.rows[i-1], "BOTTOMLEFT")
    end

    rawset(t, i, row)
    return row
end })

self.mainUI.lootTableScrollFrame.rows = rows2

--------------------------------- Map Frame and buttons -----------------------------------------------

    --AtlasLoot Maps
    self.mainUI.mapFrame = CreateFrame("Frame", "AtlasLootDefaultFrame_Map", self.mainUI)
    self.mainUI.mapFrame:SetSize(770,513)
    self.mainUI.mapFrame:SetPoint("TOPLEFT", self.mainUI, "TOPLEFT",30,-86)
    self.mainUI.mapFrame:SetFrameStrata("HIGH")
    self.mainUI.mapFrame:Hide()
    self.mainUI.mapFrame:EnableMouse()
    self.mainUI.mapFrame:SetScript("OnMouseDown", function(button, buttonClick)
        if buttonClick == "RightButton" then
            self:MapOnShow()
        elseif buttonClick == "LeftButton" then
            --print(self:GetCursorCords())
        end
    end)
        
    self.mainUI.mapFrame:EnableMouseWheel(true)
    self.mainUI.mapFrame.cursorCords = self.mainUI.mapFrame:CreateFontString(nil,"ARTWORK","GameFontNormal")
    self.mainUI.mapFrame.cursorCords:SetPoint("TOPRIGHT", self.mainUI.mapFrame, -10, 0)
    self.mainUI.mapFrame.cursorCords:Show()
    self.mainUI.mapFrame.cursorCords:SetSize(150, 25)
    self.mainUI.mapFrame.cursorCords:SetJustifyH("RIGHT")
    self.mainUI.mapFrame:SetScript("OnMouseWheel", function(self,delta)
        if AtlasLootItemsFrame_NEXT:IsVisible() and delta == -1 then
            AtlasLootItemsFrame_NEXT:Click()
        end
        if AtlasLootItemsFrame_PREV:IsVisible() and delta == 1 then
            AtlasLootItemsFrame_PREV:Click()
        end
    end)

    self.mainUI.mapFrame:SetScript("OnShow", function() self.mainUI.mapFrame.cursorCords:SetText(WHITE.."Cursor: ---") end)
    self.mainUI.mapFrame:SetScript("OnEnter", function() self.showCords = true self:MapOnEnter() end)
    self.mainUI.mapFrame:SetScript("OnUpdate", function() self:MapOnEnter() end)
    self.mainUI.mapFrame:SetScript("OnLeave", function()
        self.showCords = false
        self.mainUI.mapFrame.cursorCords:SetText(WHITE.."Cursor: ---")
    end)

    for i=1, 12 do
        self.mainUI.mapFrame.tile = self.mainUI.mapFrame:CreateTexture("AtlasLoot_MapDetailTile"..i, "BACKGROUND")
        self.mainUI.mapFrame.tile:SetSize(196,196)
        self.mainUI.mapFrame.tile:Show()
    end

    AtlasLoot_MapDetailTile1:SetPoint("TOPLEFT", self.mainUI.mapFrame)
    AtlasLoot_MapDetailTile2:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile1,"TOPRIGHT")
    AtlasLoot_MapDetailTile3:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile2,"TOPRIGHT")
    AtlasLoot_MapDetailTile4:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile3,"TOPRIGHT")
    AtlasLoot_MapDetailTile5:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile1,"BOTTOMLEFT")
    AtlasLoot_MapDetailTile6:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile5,"TOPRIGHT")
    AtlasLoot_MapDetailTile7:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile6,"TOPRIGHT")
    AtlasLoot_MapDetailTile8:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile7,"TOPRIGHT")
    AtlasLoot_MapDetailTile9:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile5,"BOTTOMLEFT")
    AtlasLoot_MapDetailTile10:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile9,"TOPRIGHT")
    AtlasLoot_MapDetailTile11:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile10,"TOPRIGHT")
    AtlasLoot_MapDetailTile12:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile11,"TOPRIGHT")

    self.mainUI.mapFrame.playerPin = CreateFrame("Button", "AtlasLoot_PlayerMapPin", AtlasLootDefaultFrame_Map)
    self.mainUI.mapFrame.playerPin:SetSize(35,35)
    self.mainUI.mapFrame.playerPin:SetFrameStrata("HIGH")
    self.mainUI.mapFrame.playerPin.texture = self.mainUI.mapFrame.playerPin:CreateTexture(nil, "ARTWORK")
    self.mainUI.mapFrame.playerPin.texture:SetTexture("Interface\\Minimap\\MinimapArrow")
    self.mainUI.mapFrame.playerPin.texture:SetSize(35,35)
    self.mainUI.mapFrame.playerPin.texture:SetPoint("CENTER",0,0)
    self.mainUI.mapFrame.playerPin:SetScript("OnEnter", function(self)
        self:SetGameTooltip(button,"You are here")
    end)
    self.mainUI.mapFrame.playerPin:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    self.mainUI.mapFrame.playerPin:Hide()

    -- Map Button
    self.mainUI.mapButton = CreateFrame("Button","AtlasLootDefaultFrame_MapButton", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.mapButton:SetSize(265,25)
    self.mainUI.mapButton:SetPoint("LEFT",AtlasLootDefaultFrame_LoadInstanceButton,"RIGHT",10.5,0)
    self.mainUI.mapButton.template = "AtlasLootDropMenuTemplate"
    self.mainUI.mapButton:SetText("No Map")
    self.mainUI.mapButton:RegisterForClicks("AnyDown")
    self.mainUI.mapButton:SetScript("OnClick", function(button, buttonClick)
        if buttonClick == "LeftButton" then
            self:MapOnShow(button.CurrentMap, button.MapNum or 1)
        else
            self:MapMenuOpen(button)
        end
    end)
    self.mainUI.mapButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Open Map")
    end)
    self.mainUI.mapButton:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    self.mainUI.mapButton.mapButtonIcon = self.mainUI.mapButton:CreateTexture("ARTWORK")
    self.mainUI.mapButton.mapButtonIcon:SetSize(19,19)
    self.mainUI.mapButton.mapButtonIcon:SetAtlas("poi-islands-table")
    self.mainUI.mapButton.mapButtonIcon:SetPoint("RIGHT",self.mainUI.mapButton, -20, -1)

    -- item data loading icon animation
    self.mainUI.streamIcon = CreateFrame("Frame", "AtlasLoot_ItemsLoading", self.mainUI.lootBackground)
    self.mainUI.streamIcon:SetPoint("TOPRIGHT", self.mainUI.lootBackground, "TOPRIGHT")
    self.mainUI.streamIcon:SetSize(48, 48)
    self.mainUI.streamIcon.tooltip = "Searching..."
    self.mainUI.streamIcon:EnableMouse(true)

    self.mainUI.streamIcon.icon = self.mainUI.streamIcon:CreateTexture("$parentSpinner", "BACKGROUND")
    self.mainUI.streamIcon.icon:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamcircle")
    self.mainUI.streamIcon.icon:SetVertexColor(0,1,0)
    self.mainUI.streamIcon.icon:SetAllPoints()
    self.mainUI.streamIcon.spark = self.mainUI.streamIcon:CreateTexture("OVERLAY")
    self.mainUI.streamIcon.spark:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamspark")
    self.mainUI.streamIcon.spark:SetAllPoints()

    self.mainUI.streamIcon.frame = CreateFrame("Frame", "$parentFrame", AtlasLoot_ItemsLoading)
    self.mainUI.streamIcon.frame:SetAllPoints()
    self.mainUI.streamIcon.frame.bg = self.mainUI.streamIcon.frame:CreateTexture("$parentBackground", "BACKGROUND")
    self.mainUI.streamIcon.frame.bg:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streambackground")
    self.mainUI.streamIcon.frame.bg:SetVertexColor(0,1,0)
    self.mainUI.streamIcon.frame.bg:SetAllPoints()
    self.mainUI.streamIcon.frame.alpha = self.mainUI.streamIcon.frame:CreateTexture("$parentAlpha", "ARTWORK")
    self.mainUI.streamIcon.frame.alpha:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamframe")
    self.mainUI.streamIcon.frame.alpha:SetAllPoints()

    self.mainUI.streamIcon.Loop = self.mainUI.streamIcon:CreateAnimationGroup("$parentLoopAnim")
    self.mainUI.streamIcon.Loop:SetLooping("REPEAT")

    self.mainUI.streamIcon.rotAnim = self.mainUI.streamIcon.Loop:CreateAnimation("ROTATION")
    self.mainUI.streamIcon.rotAnim:SetOrder(1)
    self.mainUI.streamIcon.rotAnim:SetDuration(8)
    self.mainUI.streamIcon.rotAnim:SetDegrees(-360)

    self.mainUI.streamIcon:SetScript("OnEnter",
        function(self) 
            if(self.tooltip ~= nil) then
                GameTooltip:SetOwner(self, "ANCHOR_LEFT")
                GameTooltip:SetText(self.tooltip, nil, nil, nil, nil, true)
            end
        end)
    self.mainUI.streamIcon:SetScript("OnLeave", GameTooltip_Hide)
    self.mainUI.streamIcon:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end)

    self.mainUI.streamIcon:SetPoint("TOPRIGHT", self.mainUI.lootBackground, "TOPRIGHT")
    self.mainUI.streamIcon:Hide()

    self.mainUI.itemPopupframe = CreateFrame("Frame", "AtlasLoot_PopupFrame")
    self.mainUI.itemPopupframe:EnableMouse()
    self.mainUI.itemPopupframe:SetScript("OnLeave", function(frame)
        self:ItemOnLeave(frame)
    end)
    self.mainUI.itemPopupframe:SetScript("OnEnter", function()
        AtlasLoot_PopupFrame:Show()
    end)
    self.mainUI.itemPopupframe:SetWidth(211)
    self.mainUI.itemPopupframe:Hide()

end