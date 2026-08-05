local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local MAX_ARGUMENTS = 6
local backDrop = {
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    }

function AtlasLoot:CreateSearchFrame()
    --Create Main Search Panel
    local searchPanel = self.ui.tabs.Search
    searchPanel:SetPoint("TOPLEFT", self.ui.difficultyScrollFrame, "BOTTOMLEFT", 0, -2)
    searchPanel:SetSize(265, 447)
    searchPanel:Hide()
    searchPanel:SetBackdrop(backDrop)
    searchPanel.Back = searchPanel:CreateTexture("Atlasloot_Difficulty_ScrollFrame_Back", "BACKGROUND")
    searchPanel.Back:SetAllPoints()
    searchPanel.Back:SetSize(265, 447)
    searchPanel.Back:SetPoint("CENTER",searchPanel)

    --Search Edit Box
    searchPanel.searchbox = CreateFrame("EditBox", "AtlasLoot_SearchBox", searchPanel, "SearchBoxTemplate")
    searchPanel.searchbox:SetSize(230,25)
    searchPanel.searchbox:SetPoint("TOP", searchPanel, "TOP", 0, -10)
    searchPanel.searchbox:SetScript("OnEnterPressed", function(frame)
        self.Search:RunQuary()
        frame:ClearFocus()
    end)
    searchPanel.searchbox:SetScript("OnTextChanged", function(frame) self.Search:SetSearchString(frame:GetText()) end)

    --Create quality button
    searchPanel.searchCategory = CreateFrame("Button", "AtlasLoot_Search_CategoryButton", searchPanel, "AtlasLootDropMenuTemplate")
    searchPanel.searchCategory:SetSize(235, 30)
    searchPanel.searchCategory:SetPoint("TOPLEFT", searchPanel.searchbox, "BOTTOMLEFT", -7, -10)
    searchPanel.searchCategory:SetText("Category Selections")
    searchPanel.searchCategory:SetScript("OnClick", function(frame)
        local point1, _, point2 = self:GetTipAnchor(searchPanel.searchCategory)
        self.Search:ShowSearchOptions(frame, {point1, point2})
    end)
    searchPanel.searchCategory:SetScript("OnShow", function(frame) frame:SetFrameLevel( (frame:GetParent()):GetFrameLevel() + 1 ) end)

    --Create equip type button
    searchPanel.equipbtn = CreateFrame("Button", "AtlasLoot_Search_EquipButton", searchPanel, "AtlasLootDropMenuTemplate")
    searchPanel.equipbtn:SetSize(112, 30)
    searchPanel.equipbtn:SetPoint("TOPLEFT", searchPanel.searchCategory, "BOTTOMLEFT", 3, -25)
    searchPanel.equipbtn.title = searchPanel.equipbtn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.equipbtn.title:SetText("Item Type")
    searchPanel.equipbtn.title:SetPoint("TOPLEFT", searchPanel.equipbtn, "TOPLEFT", 3, 15)

    --Create equip sub type button
    searchPanel.equipbtn.subbtn = CreateFrame("Button", "AtlasLoot_Search_EquipSubButton", searchPanel.equipbtn, "AtlasLootDropMenuTemplate")
    searchPanel.equipbtn.subbtn:SetSize(112, 30)
    searchPanel.equipbtn.subbtn:SetPoint("LEFT", searchPanel.equipbtn, "RIGHT", 10, 0)
    searchPanel.equipbtn.subbtn.title = searchPanel.equipbtn.subbtn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.equipbtn.subbtn.title:SetText("Item Subtype")
    searchPanel.equipbtn.subbtn.title:SetPoint("TOPLEFT", searchPanel.equipbtn.subbtn, "TOPLEFT", 3, 15)
    searchPanel.equipbtn:SetScript("OnClick", function(button) self.Search:EquipmentTypeMenuOpen(button) end)
    searchPanel.equipbtn:SetScript("OnShow", function(button) button:SetFrameLevel( (button:GetParent()):GetFrameLevel() + 1 ) end)
    searchPanel.equipbtn.subbtn:SetScript("OnClick", function(button) self.Search:SubClassMenuOpen(button) end)
    searchPanel.equipbtn.subbtn:SetScript("OnShow", function(button) button:SetFrameLevel( (button:GetParent()):GetFrameLevel() + 1 ) end)

    searchPanel.levelmin = CreateFrame("EditBox", "AtlasLoot_Search_LevelMin", searchPanel, "SearchBoxTemplate")
    searchPanel.levelmin.searchIcon:Hide()
    searchPanel.levelmin:SetSize(47, 35)
    searchPanel.levelmin:SetPoint("TOPLEFT", searchPanel.equipbtn, "BOTTOMLEFT", 5, -20)
    searchPanel.levelmin:SetMaxLetters(3)
    searchPanel.levelmin:SetAutoFocus(false)
    searchPanel.levelmin:SetScript("OnTextChanged", function (frame) self.Search:SetSearchParameter("levelmin", tonumber(frame:GetText()) or nil) end )
    searchPanel.levelmin:SetTextInsets(0, 8, 0, 0)
    searchPanel.levelmin.title = searchPanel.levelmin:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.levelmin.title:SetText("Required Level")
    searchPanel.levelmin.title:SetPoint("TOPLEFT", searchPanel.levelmin, "TOPLEFT", -3, 8)

    searchPanel.levelmax = CreateFrame("EditBox", "AtlasLoot_Search_LevelMax", searchPanel, "SearchBoxTemplate")
    searchPanel.levelmax.searchIcon:Hide()
    searchPanel.levelmax:SetSize(47, 35)
    searchPanel.levelmax:SetPoint("LEFT", searchPanel.levelmin, "RIGHT", 14, 0)
    searchPanel.levelmax:SetMaxLetters(3)
    searchPanel.levelmax:SetAutoFocus(false)
    searchPanel.levelmax:SetScript("OnTextChanged", function (frame) self.Search:SetSearchParameter("levelmax", tonumber(frame:GetText()) or nil) end )
    searchPanel.levelmax:SetTextInsets(0, 8, 0, 0)

    searchPanel.ilevelmin = CreateFrame("EditBox", "AtlasLoot_Search_iLevelMin", searchPanel, "SearchBoxTemplate")
    searchPanel.ilevelmin.searchIcon:Hide()
    searchPanel.ilevelmin:SetSize(47, 35)
    searchPanel.ilevelmin:SetPoint("LEFT", searchPanel.levelmax, "RIGHT", 14, 0)
    searchPanel.ilevelmin:SetMaxLetters(3)
    searchPanel.ilevelmin:SetAutoFocus(false)
    searchPanel.ilevelmin:SetTextInsets(0, 8, 0, 0)
    searchPanel.ilevelmin:SetScript("OnTextChanged", function (frame) self.Search:SetSearchParameter("ilevelmin", tonumber(frame:GetText()) or nil) end)
    searchPanel.ilevelmin.title = searchPanel.ilevelmin:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.ilevelmin.title:SetText("Item Level")
    searchPanel.ilevelmin.title:SetPoint("TOPLEFT", searchPanel.ilevelmin, "TOPLEFT", -3, 8)

    searchPanel.ilevelmax = CreateFrame("EditBox", "AtlasLoot_Search_iLevelMax", searchPanel, "SearchBoxTemplate")
    searchPanel.ilevelmax.searchIcon:Hide()
    searchPanel.ilevelmax:SetSize(47, 35)
    searchPanel.ilevelmax:SetPoint("LEFT", searchPanel.ilevelmin, "RIGHT", 14, 0)
    searchPanel.ilevelmax:SetMaxLetters(3)
    searchPanel.ilevelmax:SetAutoFocus(false)
    searchPanel.ilevelmax:SetTextInsets(0, 8, 0, 0)
    searchPanel.ilevelmax:SetScript("OnTextChanged", function (frame) self.Search:SetSearchParameter("ilevelmax", tonumber(frame:GetText()) or nil) end)

    searchPanel.argpanel = CreateFrame("Frame", "AtlasLoot_Search_ArgumentContainer", searchPanel)
    searchPanel.argpanel:SetSize(265, 340)
    searchPanel.argpanel:SetPoint("TOPLEFT", searchPanel.levelmin, "BOTTOMLEFT", -5, -15)
    searchPanel.argpanel.title = searchPanel.argpanel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.argpanel.title:SetText("Additional Filters")
    searchPanel.argpanel.title:SetPoint("TOPLEFT", searchPanel.argpanel, "TOPLEFT", 0, 0)

    searchPanel.addArg = CreateFrame("Button", "AtlasLoot_Search_ArgumentContainerAddArgBtn", searchPanel.argpanel, "OptionsButtonTemplate")
    searchPanel.addArg:SetPoint("LEFT", searchPanel.argpanel.title, "RIGHT", 10, 0)
    searchPanel.addArg:SetSize(20, 20)
    searchPanel.addArg:SetText("+")
    searchPanel.addArg:SetScript("OnClick", function(button)
        self.Search:AddArgumentContainer()
    end)

    searchPanel.remArg = CreateFrame("Button", "AtlasLoot_Search_ArgumentContainerRemArgBtn", searchPanel.argpanel, "OptionsButtonTemplate")
    searchPanel.remArg:SetPoint("LEFT", searchPanel.addArg, "RIGHT", 10, 0)
    searchPanel.remArg:SetSize(20, 20)
    searchPanel.remArg:SetText("-")
    searchPanel.remArg:SetScript("OnClick", function(button)
        self.Search:RemoveArgumentContainer()
    end)
    searchPanel.remArg:Disable()
    searchPanel.main = {}
    searchPanel.sub = {}
    searchPanel.value = {}
    for i = 1, MAX_ARGUMENTS do
        local point = (i == 1 and {"TOPLEFT", searchPanel.argpanel.title, "BOTTOMLEFT", 0,-10}) or {"TOPLEFT", searchPanel.main[(i-1)], "BOTTOMLEFT", 0, -5}
        searchPanel.main[i] = CreateFrame("Button", "AtlasLoot_Search_ArgumentContainer" .. i, searchPanel.argpanel, "AtlasLootDropMenuTemplate")
        searchPanel.main[i]:SetPoint(unpack(point))
        searchPanel.main[i]:SetSize(90, 25)
        searchPanel.main[i]:SetScript("OnClick", function(button) self.Search:StatArgumentMenuOpen(button) end)
        searchPanel.main[i]:Hide()
        searchPanel.main[i].Text:SetPoint("LEFT", searchPanel.main[i], "LEFT", 10, 0)
        searchPanel.main[i].Text:SetPoint("RIGHT", searchPanel.main[i], "RIGHT", -10, 0)
        searchPanel.main[i]:SetText("Select Option")
        searchPanel.main[i]:SetID(i)

        searchPanel.sub[i] = CreateFrame("Button", "AtlasLoot_Search_ArgumentContainer" .. i .. "Sub", searchPanel.argpanel, "AtlasLootDropMenuTemplate")
        searchPanel.sub[i]:SetPoint("LEFT", searchPanel.main[i], "RIGHT", 10, 0)
        searchPanel.sub[i]:SetSize(90, 25)
        searchPanel.sub[i]:SetScript("OnClick", function(button) self.Search:StatArgumentComparatorMenuOpen(button) end)
        searchPanel.sub[i].Text:SetPoint("LEFT", searchPanel.sub[i], "LEFT", 10, 0)
        searchPanel.sub[i].Text:SetPoint("RIGHT", searchPanel.sub[i], "RIGHT", -10, 0)
        searchPanel.sub[i]:Hide()
        searchPanel.sub[i]:SetText("Select Option")
        searchPanel.sub[i]:Disable()
        searchPanel.sub[i]:SetID(i)

        searchPanel.value[i] = CreateFrame("EditBox", "AtlasLoot_Search_ArgumentContainer" .. i .. "Value", searchPanel.argpanel, "SearchBoxTemplate")
        searchPanel.value[i].searchIcon:Hide()
        searchPanel.value[i]:SetPoint("LEFT", searchPanel.sub[i], "RIGHT", 10, 2)
        searchPanel.value[i]:SetSize(35, 35)
        searchPanel.value[i]:SetAutoFocus(false)
        searchPanel.value[i]:SetTextInsets(0, 8, 0, 0)
        searchPanel.value[i]:SetScript("OnTextChanged", function(frame) self.Search:SetStatArgumentValue(frame) end)
        searchPanel.value[i]:SetScript("OnEnterPressed", function(frame) frame:ClearFocus() end)
        searchPanel.value[i]:Hide()
        searchPanel.value[i]:SetID(i)

        searchPanel.main[i].sub = searchPanel.sub[i]
        searchPanel.main[i].value = searchPanel.value[i]

    end

    --Search Button
    searchPanel.searchButton = CreateFrame("Button", "AtlasLoot_Search_SearchButton", searchPanel, "AtlasLootDropMenuTemplate")
    searchPanel.searchButton:SetSize(112.5,30)
    searchPanel.searchButton.Icon:Hide()
    searchPanel.searchButton:SetText("Search")
    searchPanel.searchButton:SetPoint("BOTTOMLEFT", searchPanel, "BOTTOMLEFT", 15, 15)
    searchPanel.searchButton:SetScript("OnShow", function(button)
        button:SetFrameLevel( (button:GetParent()):GetFrameLevel() + 1 )
    end)
    searchPanel.searchButton:SetScript("OnClick", function()
        self.Search:RunQuary()
        searchPanel.searchbox:ClearFocus()
    end)

    --Search Button
    searchPanel.searchResetButton = CreateFrame("Button", "AtlasLoot_Search_ResetButton", searchPanel, "AtlasLootDropMenuTemplate")
    searchPanel.searchResetButton:SetSize(112.5,30)
    searchPanel.searchResetButton:SetPoint("LEFT", searchPanel.searchButton, "RIGHT", 10, 2)
    searchPanel.searchResetButton.Icon:Hide()
    searchPanel.searchResetButton:SetText("Reset")
    searchPanel.searchResetButton:SetPoint("BOTTOMLEFT", searchPanel, "BOTTOMLEFT", 15, 15)
    searchPanel.searchResetButton:SetScript("OnShow", function(button)
        button:SetFrameLevel( (button:GetParent()):GetFrameLevel() + 1 )
    end)
    searchPanel.searchResetButton:SetScript("OnClick", function()
        self.Search:ResetParameters()
    end)

    self:InitializeSearch()
end