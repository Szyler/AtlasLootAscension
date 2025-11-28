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
    searchPanel.searchbox:SetPoint("TOP", searchPanel, "TOP", 0, -15)
    searchPanel.searchbox:SetScript("OnEnterPressed", function(frame)
        self:Search(frame:GetText())
        frame:ClearFocus()
    end)
    searchPanel.searchbox:SetScript("OnTextChanged", function(frame)
		if frame:HasFocus() then
			SearchBoxTemplate_OnTextChanged(frame)
		end
    end)

    --Create quality button
    searchPanel.searchCategory = CreateFrame("Button", "AtlasLoot_Search_CategoryButton", searchPanel, "OptionsButtonTemplate")
    searchPanel.searchCategory:SetSize(112, 20)
    searchPanel.searchCategory:SetPoint("TOPLEFT", searchPanel.searchbox, "BOTTOMLEFT", -7, -10)
    searchPanel.searchCategory:SetText("Category Select")
    searchPanel.searchCategory:SetScript("OnClick", function(frame)
        local point1, _, point2 = self:GetTipAnchor(searchPanel.searchCategory)
        self:ShowSearchOptions(frame, {point1, point2})
    end)
    searchPanel.searchCategory:SetScript("OnShow", function(frame) frame:SetFrameLevel( (frame:GetParent()):GetFrameLevel() + 1 ) end)

    --Create equip type button
    searchPanel.equipbtn = CreateFrame("Button", "AtlasLoot_Search_EquipButton", searchPanel, "OptionsButtonTemplate")
    searchPanel.equipbtn:SetSize(112, 20)
    searchPanel.equipbtn:SetPoint("TOPLEFT", searchPanel.searchCategory, "BOTTOMLEFT", 3, -25)
    searchPanel.equipbtn.title = searchPanel.equipbtn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.equipbtn.title:SetText("Item Type")
    searchPanel.equipbtn.title:SetPoint("TOPLEFT", searchPanel.equipbtn, "TOPLEFT", 3, 15)

    --Create equip sub type button
    searchPanel.equipbtn.subbtn = CreateFrame("Button", "AtlasLoot_Search_EquipSubButton", searchPanel.equipbtn, "OptionsButtonTemplate")
    searchPanel.equipbtn.subbtn:SetSize(112, 20)
    searchPanel.equipbtn.subbtn:SetPoint("LEFT", searchPanel.equipbtn, "RIGHT", 10, 0)
    searchPanel.equipbtn.subbtn.title = searchPanel.equipbtn.subbtn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.equipbtn.subbtn.title:SetText("Item Subtype")
    searchPanel.equipbtn.subbtn.title:SetPoint("TOPLEFT", searchPanel.equipbtn.subbtn, "TOPLEFT", 3, 15)
    searchPanel.equipbtn:SetScript("OnClick", function(button) self:DewdropToggle(button) end)
    searchPanel.equipbtn:SetScript("OnShow", function(button) button:SetFrameLevel( (button:GetParent()):GetFrameLevel() + 1 ) end)
    searchPanel.equipbtn.subbtn:SetScript("OnClick", function(button) self:DewdropToggle(button) end)
    searchPanel.equipbtn.subbtn:SetScript("OnShow", function(button) button:SetFrameLevel( (button:GetParent()):GetFrameLevel() + 1 ) end)

    searchPanel.levelmin = CreateFrame("EditBox", "AtlasLoot_Search_LevelMin", searchPanel, "InputBoxTemplate")
    searchPanel.levelmin:SetSize(47, 35)
    searchPanel.levelmin:SetPoint("TOPLEFT", searchPanel.equipbtn, "BOTTOMLEFT", 5, -25)
    searchPanel.levelmin:SetMaxLetters(3)
    searchPanel.levelmin:SetAutoFocus(false)
    searchPanel.levelmin:SetTextInsets(0, 8, 0, 0)
    searchPanel.levelmin.title = searchPanel.levelmin:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.levelmin.title:SetText("Required Level")
    searchPanel.levelmin.title:SetPoint("TOPLEFT", searchPanel.levelmin, "TOPLEFT", -3, 8)

    searchPanel.levelmax = CreateFrame("EditBox", "AtlasLoot_Search_LevelMax", searchPanel, "InputBoxTemplate")
    searchPanel.levelmax:SetSize(47, 35)
    searchPanel.levelmax:SetPoint("LEFT", searchPanel.levelmin, "RIGHT", 10, 0)
    searchPanel.levelmax:SetMaxLetters(3)
    searchPanel.levelmax:SetAutoFocus(false)
    searchPanel.levelmax:SetTextInsets(0, 8, 0, 0)

    searchPanel.ilevelmin = CreateFrame("EditBox", "AtlasLoot_Search_iLevelMin", searchPanel, "InputBoxTemplate")
    searchPanel.ilevelmin:SetSize(47, 35)
    searchPanel.ilevelmin:SetPoint("LEFT", searchPanel.levelmax, "RIGHT", 10, 0)
    searchPanel.ilevelmin:SetMaxLetters(3)
    searchPanel.ilevelmin:SetAutoFocus(false)
    searchPanel.ilevelmin:SetTextInsets(0, 8, 0, 0)
    searchPanel.ilevelmin.title = searchPanel.ilevelmin:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.ilevelmin.title:SetText("Item Level")
    searchPanel.ilevelmin.title:SetPoint("TOPLEFT", searchPanel.ilevelmin, "TOPLEFT", -3, 8)

    searchPanel.ilevelmax = CreateFrame("EditBox", "AtlasLoot_Search_iLevelMax", searchPanel, "InputBoxTemplate")
    searchPanel.ilevelmax:SetSize(47, 35)
    searchPanel.ilevelmax:SetPoint("LEFT", searchPanel.ilevelmin, "RIGHT", 10, 0)
    searchPanel.ilevelmax:SetMaxLetters(3)
    searchPanel.ilevelmax:SetAutoFocus(false)
    searchPanel.ilevelmax:SetTextInsets(0, 8, 0, 0)

    searchPanel.useleveltick = CreateFrame("CheckButton", "AtlasLoot_Search_LevelToggle", searchPanel, "ChatConfigCheckButtonTemplate")
    searchPanel.useleveltick:SetSize(20, 20)
    searchPanel.useleveltick:SetPoint("TOPLEFT", searchPanel.levelmin, "BOTTOMLEFT", -5, -5)
    searchPanel.useleveltick.title = searchPanel.useleveltick:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.useleveltick.title:SetText("Use Current Lv")
    searchPanel.useleveltick.title:SetPoint("LEFT", searchPanel.useleveltick, "RIGHT", 10, 0)
    searchPanel.useleveltick:SetScript("OnClick", function(button)
        if(button:GetChecked()) then searchPanel.levelmax:Hide() searchPanel.levelmin:Hide()
        else searchPanel.levelmax:Show() searchPanel.levelmin:Show()
        end
    end)

    searchPanel.argpanel = CreateFrame("Frame", "AtlasLoot_Search_ArgumentContainer", searchPanel)
    searchPanel.argpanel:SetSize(265, 340)
    searchPanel.argpanel:SetPoint("TOPLEFT", searchPanel.levelmin, "BOTTOMLEFT", -5, -35)
    searchPanel.argpanel.title = searchPanel.argpanel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    searchPanel.argpanel.title:SetText("Additional Filters")
    searchPanel.argpanel.title:SetPoint("TOPLEFT", searchPanel.argpanel, "TOPLEFT", 0, 0)

    searchPanel.addArg = CreateFrame("Button", "AtlasLoot_Search_ArgumentContainerAddArgBtn", searchPanel.argpanel, "OptionsButtonTemplate")
    searchPanel.addArg:SetPoint("LEFT", searchPanel.argpanel.title, "RIGHT", 10, 0)
    searchPanel.addArg:SetSize(20, 20)
    searchPanel.addArg:SetText("+")
    searchPanel.addArg:SetScript("OnClick", function(button)
        self:AddArgumentContainer()
    end)

    searchPanel.remArg = CreateFrame("Button", "AtlasLoot_Search_ArgumentContainerRemArgBtn", searchPanel.argpanel, "OptionsButtonTemplate")
    searchPanel.remArg:SetPoint("LEFT", searchPanel.addArg, "RIGHT", 10, 0)
    searchPanel.remArg:SetSize(20, 20)
    searchPanel.remArg:SetText("-")
    searchPanel.remArg:SetScript("OnClick", function(button)
        self:RemoveArgumentContainer()
    end)
    searchPanel.remArg:Disable()
    searchPanel.main = {}
    searchPanel.sub = {}
    searchPanel.value = {}
    for i = 1, MAX_ARGUMENTS do
        local point = (i == 1 and {"TOPLEFT", searchPanel.argpanel.title, "BOTTOMLEFT", 0,-10}) or {"TOPLEFT", searchPanel.main[(i-1)], "BOTTOMLEFT", 0, -10}
        searchPanel.main[i] = CreateFrame("Button", "AtlasLoot_Search_ArgumentContainer" .. i, searchPanel.argpanel, "OptionsButtonTemplate")
        searchPanel.main[i]:SetPoint(unpack(point))
        searchPanel.main[i]:SetSize(110, 20)
        searchPanel.main[i]:SetScript("OnClick", function(button)  self:DewdropToggle(button) end)
        searchPanel.main[i]:Hide()
        searchPanel.main[i]:SetText("Select Option")

        searchPanel.sub[i] = CreateFrame("Button", "AtlasLoot_Search_ArgumentContainer" .. i .. "Sub", searchPanel.argpanel, "OptionsButtonTemplate")
        searchPanel.sub[i]:SetPoint("LEFT", searchPanel.main[i], "RIGHT", 15, 0)
        searchPanel.sub[i]:SetSize(110, 20)
        searchPanel.sub[i]:SetScript("OnClick", function(button) self:DewdropToggle(button) end)
        searchPanel.sub[i]:Hide()
        searchPanel.sub[i]:SetText("Select Option")
        searchPanel.sub[i]:Disable()

        searchPanel.value[i] = CreateFrame("EditBox", "AtlasLoot_Search_ArgumentContainer" .. i .. "Value", searchPanel.argpanel, "InputBoxTemplate")
        searchPanel.value[i]:SetPoint("LEFT", searchPanel.sub[i], "RIGHT", 15, 0)
        searchPanel.value[i]:SetSize(65, 35)
        searchPanel.value[i]:SetAutoFocus(false)
        searchPanel.value[i]:SetTextInsets(0, 8, 0, 0)
        searchPanel.value[i]:SetScript("OnEnterPressed", function(frame)
            frame:ClearFocus()
        end)
        searchPanel.value[i]:Hide()
    end

    --Search Button
    searchPanel.searchbtn = CreateFrame("Button", "AtlasLoot_Search_SearchButton", searchPanel, "UIPanelButtonTemplate2")
    searchPanel.searchbtn:SetSize(110,20)
    searchPanel.searchbtn:SetPoint("BOTTOMLEFT", searchPanel, "BOTTOMLEFT", 15, 15)

    searchPanel.searchbtn:SetScript("OnShow", function(self)
        self:SetText("Search")
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 )
    end)
    searchPanel.searchbtn:SetScript("OnClick", function()
        AtlasLoot:Search(searchPanel.searchbox:GetText())
        searchPanel.searchbox:ClearFocus()
    end)

    self:InitializeSearch()
    self:SearchSetup()
end