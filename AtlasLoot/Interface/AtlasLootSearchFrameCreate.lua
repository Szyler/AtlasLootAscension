local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local MAX_ARGUMENTS = 6;

local framename = "AtlasLootDefaultFrame_AdvancedSearchPanel";

--Create Main Search Panel
local searchpanel = CreateFrame("FRAME", framename, AtlasLootDefaultFrame, nil);
searchpanel:SetPoint("TOPLEFT", AtlasLootDefaultFrame_LootBackground, "TOPLEFT", 2, -2);
searchpanel:SetSize(510, 510);
searchpanel.closebtn = CreateFrame("Button", framename.."_CloseButton", searchpanel, "UIPanelCloseButton");
searchpanel.closebtn:SetPoint("TOPRIGHT", searchpanel, "TOPRIGHT", -10, -10);
searchpanel:Hide();
searchpanel.closebtn:SetScript("OnClick", function() AtlasLoot_AdvancedSearchClose(); end);
searchpanel.closebtn:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end);

--Create search/name box
local searchbox = CreateFrame("EditBox", framename.."_SearchBox", searchpanel, "InputBoxTemplate");
searchbox:SetSize(265, 35);
searchbox:SetPoint("TOPLEFT", searchpanel, "TOPLEFT", 30, -55);
searchbox:SetMaxLetters(100);
searchbox:SetAutoFocus(false);
searchbox:SetTextInsets(0, 8, 0, 0);
searchbox.title = searchbox:CreateFontString(nil, "ARTWORK", "GameFontNormal");
searchbox.title:SetText("Name: ");
searchbox.title:SetPoint("TOPLEFT", searchbox, "TOPLEFT", -3, 8);
searchbox:SetScript("OnEnterPressed", function(self)
    AtlasLoot:AdvancedSearch(AtlasLootDefaultFrame_AdvancedSearchPanel_SearchBox:GetText());
	self:ClearFocus();
end);
searchbox:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end);
local searchbox_string = searchbox:CreateFontString(framename.."_SearchBoxString", "ARTWORK", "GameFontNormal");

--Create quality button
local qualitybtn = CreateFrame("Button", framename.."_QualityButton", searchpanel, "OptionsButtonTemplate");
qualitybtn:SetSize(130, 20);
qualitybtn:SetPoint("LEFT", searchbox, "RIGHT", 15, 0);
qualitybtn.title = qualitybtn:CreateFontString(nil, "ARTWORK", "GameFontNormal");
qualitybtn.title:SetText("Quality: ");
qualitybtn.title:SetPoint("TOPLEFT", qualitybtn, "TOPLEFT", 3, 15);
qualitybtn:SetScript("OnClick", function(self) 
    if AtlasLoot_QualityMenu:IsOpen() then
        AtlasLoot_QualityMenu:Close();
    else
        AtlasLoot_QualityMenu:Open(self);
    end
end);
qualitybtn:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end);

--Create equip type button
local equipbtn = CreateFrame("Button", framename.."_EquipButton", searchpanel, "OptionsButtonTemplate");
equipbtn:SetSize(130, 20);
equipbtn:SetPoint("TOPLEFT", searchbox, "BOTTOMLEFT", -8, -25);
equipbtn.title = equipbtn:CreateFontString(nil, "ARTWORK", "GameFontNormal");
equipbtn.title:SetText("Item Type: ");
equipbtn.title:SetPoint("TOPLEFT", equipbtn, "TOPLEFT", 3, 15);

--Create equip sub type button
equipbtn.subbtn = CreateFrame("Button", framename.."_EquipSubButton", equipbtn, "OptionsButtonTemplate");
equipbtn.subbtn:SetSize(130, 20);
equipbtn.subbtn:SetPoint("LEFT", equipbtn, "RIGHT", 15, 0);
equipbtn.subbtn.title = equipbtn.subbtn:CreateFontString(nil, "ARTWORK", "GameFontNormal");
equipbtn.subbtn.title:SetText("Item Subtype: ");
equipbtn.subbtn.title:SetPoint("TOPLEFT", equipbtn.subbtn, "TOPLEFT", 3, 15);

equipbtn:SetScript("OnClick", function(self) 
    if AtlasLoot_EquipMenu:IsOpen() then
        AtlasLoot_EquipMenu:Close();
    else
        AtlasLoot_EquipMenu:Open(self);
    end
end);
equipbtn:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end);
equipbtn.subbtn:SetScript("OnClick", function(self) 
    if AtlasLoot_EquipSubMenu:IsOpen() then
        AtlasLoot_EquipSubMenu:Close();
    else
        AtlasLoot_EquipSubMenu:Open(self);
    end
end);
equipbtn.subbtn:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end);

local levelminbox = CreateFrame("EditBox", framename.."_LevelMin", searchpanel, "InputBoxTemplate");
levelminbox:SetSize(47, 35);
levelminbox:SetPoint("TOPLEFT", searchbox, "BOTTOMLEFT", 0, -70);
local lmnb = levelminbox:CreateFontString(nil, "ARTWORK", "GameFontNormal");
levelminbox:SetMaxLetters(3);
levelminbox:SetAutoFocus(false);
levelminbox:SetTextInsets(0, 8, 0, 0);
levelminbox.title = levelminbox:CreateFontString(nil, "ARTWORK", "GameFontNormal");
levelminbox.title:SetText("Required Level: ");
levelminbox.title:SetPoint("TOPLEFT", levelminbox, "TOPLEFT", -3, 8);

local levelmaxbox = CreateFrame("EditBox", framename.."_LevelMax", searchpanel, "InputBoxTemplate");
levelmaxbox:SetSize(47, 35);
levelmaxbox:SetPoint("LEFT", levelminbox, "RIGHT", 25, 0);
local lmxb = levelmaxbox:CreateFontString(nil, "ARTWORK", "GameFontNormal");
levelmaxbox:SetMaxLetters(3);
levelmaxbox:SetAutoFocus(false);
levelmaxbox:SetTextInsets(0, 8, 0, 0);

local ilevelminbox = CreateFrame("EditBox", framename.."_iLevelMin", searchpanel, "InputBoxTemplate");
ilevelminbox:SetSize(47, 35);
ilevelminbox:SetPoint("LEFT", levelmaxbox, "RIGHT", 25, 0);
local ilmnb = ilevelminbox:CreateFontString(nil, "ARTWORK", "GameFontNormal");
ilevelminbox:SetMaxLetters(3);
ilevelminbox:SetAutoFocus(false);
ilevelminbox:SetTextInsets(0, 8, 0, 0);
ilevelminbox.title = ilevelminbox:CreateFontString(nil, "ARTWORK", "GameFontNormal");
ilevelminbox.title:SetText("Item Level: ");
ilevelminbox.title:SetPoint("TOPLEFT", ilevelminbox, "TOPLEFT", -3, 8);

local ilevelmaxbox = CreateFrame("EditBox", framename.."_iLevelMax", searchpanel, "InputBoxTemplate");
ilevelmaxbox:SetSize(47, 35);
ilevelmaxbox:SetPoint("LEFT", ilevelminbox, "RIGHT", 25, 0);
local ilmxb = ilevelmaxbox:CreateFontString(nil, "ARTWORK", "GameFontNormal");
ilevelmaxbox:SetMaxLetters(3);
ilevelmaxbox:SetAutoFocus(false);
ilevelmaxbox:SetTextInsets(0, 8, 0, 0);

local useleveltick = CreateFrame("CheckButton", framename.."_LevelToggle", searchpanel, "ChatConfigCheckButtonTemplate");
useleveltick:SetSize(20, 20);
useleveltick:SetPoint("TOPRIGHT", levelmaxbox, "BOTTOMRIGHT", 0, 5);
useleveltick.title = useleveltick:CreateFontString(nil, "ARTWORK", "GameFontNormal");
useleveltick.title:SetText("Use Current Lv: ");
useleveltick.title:SetPoint("TOPLEFT", levelminbox, "BOTTOMLEFT", 0, 5);

useleveltick:SetScript("OnClick", function(self, button)
    if(self:GetChecked()) then levelmaxbox:Hide(); levelminbox:Hide(); 
    else levelmaxbox:Show(); levelminbox:Show();
    end
end)

local argpanel = CreateFrame("Frame", framename.."_ArgumentContainer", searchpanel);
argpanel:SetSize(450, 340);
argpanel:SetPoint("TOPLEFT", levelminbox, "BOTTOMLEFT", 0, -40);
argpanel.title = argpanel:CreateFontString(nil, "ARTWORK", "GameFontNormal");
argpanel.title:SetText("Additional Filters: ");
argpanel.title:SetPoint("TOPLEFT", argpanel, "TOPLEFT", 0, 0);

local addArg = CreateFrame("Button", "AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerAddArgBtn", AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer, "OptionsButtonTemplate");
addArg:SetPoint("TOP", useleveltick, "BOTTOM", 5, -20);
addArg:SetSize(20, 20);
addArg:SetText("+");
addArg:SetScript("OnClick", function(self, button)
    AtlasLoot_AddArgumentContainer();
end)

local remArg = CreateFrame("Button", "AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerRemArgBtn", AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer, "OptionsButtonTemplate")
remArg:SetPoint("LEFT", AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerAddArgBtn, "RIGHT", 10, 0);
remArg:SetSize(20, 20);
remArg:SetText("-");
remArg:SetScript("OnClick", function(self, button)
    AtlasLoot_RemoveArgumentContainer();
end)
remArg:Disable();

for n = 1, MAX_ARGUMENTS do
    local btn = CreateFrame("Button", "AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(n), AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer, "OptionsButtonTemplate");
    btn:SetPoint("TOPLEFT", AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer, "TOPLEFT", 0, -((n - 1) * 35)-20);
    btn:SetSize(130, 20);
    btn:SetScript("OnClick", function(self, button)
        if AtlasLoot_ArgumentMenus[n]:IsOpen() then
            AtlasLoot_ArgumentMenus[n]:Close();
        else
            AtlasLoot_ArgumentMenus[n]:Open(self);
        end
    end)
    btn:Hide();
    btn:SetText("Select Option");

    local sub = CreateFrame("Button", "AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(n) .. "Sub", AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer, "OptionsButtonTemplate");
    sub:SetPoint("LEFT", btn, "RIGHT", 15, 0);
    sub:SetSize(130, 20);
    sub:SetScript("OnClick", function(self, button)
        if AtlasLoot_ArgumentSubMenus[n]:IsOpen() then
            AtlasLoot_ArgumentSubMenus[n]:Close();
        else
            AtlasLoot_ArgumentSubMenus[n]:Open(self);
        end
    end)
    sub:Hide();
    sub:Disable();

    local txt = CreateFrame("EditBox", "AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(n) .. "Value", AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer, "InputBoxTemplate")
    txt:SetPoint("LEFT", sub, "RIGHT", 15, 0);
    txt:SetSize(65, 35);
    txt:SetAutoFocus(false);
    txt:SetTextInsets(0, 8, 0, 0);
    txt:SetScript("OnEnterPressed", function(self)
        self:ClearFocus();
    end)
    txt:Hide();
end

--Search Button
local searchbtn = CreateFrame("Button", framename.."_SearchButton", searchpanel, "UIPanelButtonTemplate2");
searchbtn:SetSize(70,32);
searchbtn:SetPoint("BOTTOMLEFT", searchpanel, "BOTTOMLEFT", 20, 20);

searchbtn:SetScript("OnShow", function(self)
	self:SetText(AL["Search"]);
	self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
end);
searchbtn:SetScript("OnClick", function()
    AtlasLoot:AdvancedSearch(AtlasLootDefaultFrame_AdvancedSearchPanel_SearchBox:GetText());
    AtlasLootDefaultFrame_AdvancedSearchPanel_SearchBox:ClearFocus();
end);

local clearbtn = CreateFrame("Button", framename.."_ClearButton", searchpanel, "UIPanelButtonTemplate2");
clearbtn:SetSize(70,32);
clearbtn:SetPoint("LEFT", searchbtn, "RIGHT", 20, 0);

clearbtn:SetScript("OnShow", function(self)
	self:SetText(AL["Clear"]);
	self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
end);
clearbtn:SetScript("OnClick", function()
    AtlasLoot_AdvancedSearchReset();
	AtlasLootDefaultFrame_AdvancedSearchPanel_SearchBox:SetText("");
	AtlasLootDefaultFrame_AdvancedSearchPanel_SearchBox:ClearFocus();
end);

AtlasLoot_AdvancedSearchSetup()

function StreamingIcon_UpdateIcon(status, tooltip)
	if(status > 0) then
        AtlasLoot_SearchProgressSpinner:SetVertexColor(0,1,0);
        AtlasLoot_SearchProgressFrameBackground:SetVertexColor(0,1,0);
        AtlasLoot_SearchProgress.tooltip = tooltip;
		AtlasLoot_SearchProgress.Loop:Play();
		AtlasLoot_SearchProgress:Show();
	else
        AtlasLoot_SearchProgress.Loop:Stop();
        AtlasLoot_SearchProgress:Hide();
	end
end

local streamIcon = CreateFrame("Frame", "AtlasLoot_SearchProgress", AtlasLootDefaultFrame_LootBackground);
streamIcon:SetPoint("TOPRIGHT", AtlasLootDefaultFrame_LootBackground, "TOPRIGHT");
streamIcon:SetSize(48, 48);
streamIcon.tooltip = "Searching...";

streamIcon.icon = streamIcon:CreateTexture("$parentSpinner", "BACKGROUND");
streamIcon.icon:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamcircle");
streamIcon.icon:SetVertexColor(0,1,0);
streamIcon.icon:SetAllPoints();
streamIcon.spark = streamIcon:CreateTexture("OVERLAY");
streamIcon.spark:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamspark");
streamIcon.spark:SetAllPoints();

streamIcon.frame = CreateFrame("Frame", "$parentFrame", AtlasLoot_SearchProgress);
streamIcon.frame:SetAllPoints();
streamIcon.frame.bg = streamIcon.frame:CreateTexture("$parentBackground", "BACKGROUND");
streamIcon.frame.bg:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streambackground");
streamIcon.frame.bg:SetVertexColor(0,1,0);
streamIcon.frame.bg:SetAllPoints();
streamIcon.frame.alpha = streamIcon.frame:CreateTexture("$parentAlpha", "ARTWORK");
streamIcon.frame.alpha:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamframe");
streamIcon.frame.alpha:SetAllPoints();

streamIcon.Loop = streamIcon:CreateAnimationGroup("$parentLoopAnim");
streamIcon.Loop:SetLooping("REPEAT");
local rotAnim = streamIcon.Loop:CreateAnimation("ROTATION");
rotAnim:SetOrder(1);
rotAnim:SetDuration(8);
rotAnim:SetDegrees(-360);

streamIcon:SetScript("OnEnter", 
    function(self) 
        if(self.tooltip ~= nil) then
            GameTooltip:SetOwner(self, "ANCHOR_LEFT");
            GameTooltip:SetText(self.tooltip, nil, nil, nil, nil, true);
        end
    end);
streamIcon:SetScript("OnLeave", GameTooltip_Hide);
streamIcon:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end);

streamIcon:SetPoint("TOPRIGHT", AtlasLootDefaultFrame_LootBackground, "TOPRIGHT");
streamIcon:Hide();