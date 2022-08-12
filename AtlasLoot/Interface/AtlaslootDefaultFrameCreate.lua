local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

    --Main AtlasLoot Frame
    local mainframe = CreateFrame("FRAME", "AtlasLootDefaultFrame", UIParent);
    mainframe:SetPoint("CENTER",0,0);
    mainframe:SetSize(880,690);
    mainframe:EnableMouse(true);
    mainframe:SetMovable(1);
    mainframe:SetFrameStrata("HIGH");
    mainframe:RegisterForDrag("LeftButton");
    mainframe:SetMovable(true);
    mainframe:EnableKeyboard(true)
    mainframe:Hide()
    mainframe:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = "true",
        insets = {left = "11", right = "12", top = "12", bottom = "11"},
        edgeSize = 32,
        titleSize = 32,
    });
    mainframe:SetScript("OnShow", function()
     AtlasLootDefaultFrame_OnShow();
     end);
     mainframe:SetScript("OnHide", function() AtlasLootDefaultFrame_OnHide() end)
     mainframe:SetScript("OnDragStart", function(self)
         self:StartMoving();
         self.isMoving = true;
     end);
     mainframe:SetScript("OnDragStop", function(self)
         self:StopMovingOrSizing();
         self.isMoving = false;
     end);
     mainframe.header = mainframe:CreateTexture("AtlasLootDefaultFrameHeader","ARTWORK");
     mainframe.header:SetSize(425,64);
     mainframe.header:SetPoint("TOP",0,12);
     mainframe.header:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Header");
     mainframe.header.txt = mainframe:CreateFontString(nil,"ARTWORK","GameFontNormal");
     mainframe.header.txt:SetPoint("TOP",0,-1);
     mainframe.header.txt:SetText(ATLASLOOT_VERSION);
     mainframe.header.notice = mainframe:CreateFontString("AtlasLootDefaultFrame_Notice","ARTWORK","GameFontNormal");
     mainframe.header.notice:SetPoint("BOTTOM",0,17);
 
    --Loot Background
local lootbground = CreateFrame("Frame", "AtlasLootDefaultFrame_LootBackground",AtlasLootDefaultFrame);
    lootbground:SetSize(540,515);
    lootbground:SetPoint("BOTTOMLEFT", AtlasLootDefaultFrame, "BOTTOMLEFT",40,90);
    lootbground.Back = lootbground:CreateTexture("AtlasLootDefaultFrame_LootBackground_Back", "BACKGROUND");
    lootbground.Back:SetAllPoints();
    lootbground.Back:SetPoint("TOPLEFT","AtlasLootDefaultFrame_LootBackground","TOPLEFT");
    lootbground.Back:SetPoint("BOTTOMRIGHT","AtlasLootDefaultFrame_LootBackground","BOTTOMRIGHT");
    lootbground:SetBackdropColor(0,0,0.5,0.5);
    lootbground:EnableMouse();
    lootbground:SetScript("OnMouseDown",function(self, button)
        if AtlasLootItemsFrame.refresh[2][AtlasLootItemsFrame.refresh[1]].Back and button == "RightButton" then
            AtlasLoot:BackButton_OnClick();
        elseif AtlasLootDefaultFrame_AdvancedSearchPanel:IsVisible() and button == "RightButton" then
            AtlasLoot_AdvancedSearchClose();
        end
    end);

----------------------------------- Item Loot Panel -------------------------------------------
local itemframe = CreateFrame("Frame", "AtlasLootItemsFrame", AtlasLootDefaultFrame_LootBackground);
        itemframe:SetSize(535,510);
        itemframe:Hide();
        itemframe:SetPoint("TOPLEFT", AtlasLootDefaultFrame_LootBackground, "TOPLEFT", 2, -2);
        itemframe.Label = itemframe:CreateFontString("AtlasLoot_BossName","OVERLAY","GameFontHighlightLarge");
        itemframe.Label:SetPoint("TOP", "AtlasLootItemsFrame", "TOP");
        itemframe.Label:SetSize(512,30);
        itemframe.Label:SetJustifyH("CENTER");
        itemframe.Back = itemframe:CreateTexture("AtlasLootItemsFrame_Back", "BACKGROUND");
        itemframe.Back:SetAllPoints();
        itemframe.Back:SetPoint("TOPLEFT","AtlasLootDefaultFrame_LootBackground","TOPLEFT");
        itemframe.Back:SetPoint("BOTTOMRIGHT","AtlasLootDefaultFrame_LootBackground","BOTTOMRIGHT");
        itemframe:SetBackdropColor(0,0,0,0.7);
        itemframe:EnableMouseWheel(true);
        itemframe:SetScript("OnMouseWheel", function(self,delta)
            if AtlasLootItemsFrame_NEXT:IsVisible() and delta == -1 then
                AtlasLootItemsFrame_NEXT:Click();
            end
            if AtlasLootItemsFrame_PREV:IsVisible() and delta == 1 then
                AtlasLootItemsFrame_PREV:Click();
            end
        end);

local function createLootItemButtons(num)
    local button = CreateFrame("Button","AtlasLootItem_"..num, AtlasLootItemsFrame);
        button:SetID(num);
        button:SetSize(236,28);
        button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
        button.icon = button:CreateTexture("AtlasLootItem_"..num.."_Icon","ARTWORK");
        button.icon:SetSize(25,25);
        button.icon:SetPoint("TOPLEFT", "AtlasLootItem_"..num,"TOPLEFT",1,-1);
        button.name = button:CreateFontString("AtlasLootItem_"..num.."_Name","ARTWORK","GameFontNormal");
        button.name:SetSize(205,12);
        button.name:SetPoint("TOPLEFT","AtlasLootItem_"..num.."_Icon","TOPRIGHT",3,0);
        button.name:SetJustifyH("LEFT");
        button.extra = button:CreateFontString("AtlasLootItem_"..num.."_Extra","ARTWORK","GameFontNormal");
        button.extra:SetSize(205,10);
        button.extra:SetPoint("TOPLEFT","AtlasLootItem_"..num.."_Name","BOTTOMLEFT",0,-1);
        button.extra:SetJustifyH("LEFT");
        button:RegisterForClicks("AnyDown");
        button:SetScript("OnEnter", function(self) AtlasLootItem_OnEnter(self) end);
        button:SetScript("OnLeave", function(self) AtlasLootItem_OnLeave(self) end);
        button:SetScript("OnClick", function(self, arg1) AtlasLootItem_OnClick(self, arg1) end);
        button.unsafe = button:CreateTexture("AtlasLootItem_"..num.."_Unsafe","BACKGROUND");
        button.unsafe:Hide();
        button.unsafe:SetSize(27,27);
        button.unsafe:SetPoint("TOPLEFT","AtlasLootItem_"..num,"TOPLEFT");
        button.unsafe:SetVertexColor(1,0,0,1);
        if num == 1 then
            button:SetPoint("TOPLEFT", "AtlasLootItemsFrame", "TOPLEFT",25,-35);
        elseif num == 16 then
            button:SetPoint("TOPLEFT", "AtlasLootItem_1", "TOPRIGHT",0,0);
        else
            button:SetPoint("TOPLEFT", "AtlasLootItem_"..(num - 1), "BOTTOMLEFT");
        end
end

    for i = 1, 30 do
        createLootItemButtons(i);
    end

        -- LootInfo
local lootinfo = CreateFrame("Frame", "AtlasLootInfo")
        lootinfo:SetSize(128,75);
        lootinfo.text1 = lootinfo:CreateFontString("AtlasLootInfo_Text1", "OVERLAY", "GameFontNormal");
        lootinfo.text1:SetSize(180,10);
        lootinfo.text1:SetText("ATLASLOOT_VERSION");
        lootinfo.text1:SetJustifyH("LEFT");
        lootinfo.text1:SetPoint("TOPLEFT", "AtlasLootInfo", "TOPLEFT",0,25);
        lootinfo.text2 = lootinfo:CreateFontString("AtlasLootInfo_Text2", "OVERLAY", "GameFontNormal");
        lootinfo.text2:SetSize(180,10);
        lootinfo.text2:SetJustifyH("LEFT");
        lootinfo.text2:SetText(AL["Click boss name to view loot."]);
        lootinfo.text2:SetPoint("TOPLEFT", "AtlasLootInfo", "TOPLEFT",0,-2);

        -- Next Button
local nextbtn = CreateFrame("Button", "AtlasLootItemsFrame_NEXT", AtlasLootItemsFrame);
        nextbtn:SetPoint("BOTTOMRIGHT", "AtlasLootItemsFrame", "BOTTOMRIGHT",-5,5);
        nextbtn:SetSize(32,32);
        nextbtn.texture = nextbtn:CreateTexture(nil, "BACKGROUND");
        nextbtn.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background");
        nextbtn.texture:SetSize(32,32);
        nextbtn.texture:SetPoint("CENTER",0,0);
        nextbtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up");
        nextbtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down");
        nextbtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled");
        nextbtn:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD");
        nextbtn:SetScript("OnClick", function(self) AtlasLoot:NavButton_OnClick(self) end)
        nextbtn:Hide();

        -- Previous button
local prevbtn = CreateFrame("Button", "AtlasLootItemsFrame_PREV", AtlasLootItemsFrame);
        prevbtn:SetPoint("BOTTOMLEFT", "AtlasLootItemsFrame", "BOTTOMLEFT",5,5);
        prevbtn:SetSize(32,32);
        prevbtn.texture = prevbtn:CreateTexture(nil, "BACKGROUND");
        prevbtn.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background");
        prevbtn.texture:SetSize(32,32);
        prevbtn.texture:SetPoint("CENTER",0,0);
        prevbtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up");
        prevbtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down");
        prevbtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled");
        prevbtn:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD");
        prevbtn:SetScript("OnClick", function(self) AtlasLoot:NavButton_OnClick(self) end)
        prevbtn:Hide();

        -- Back button
local backbtn = CreateFrame("Button", "AtlasLootItemsFrame_BACK", AtlasLootItemsFrame, "OptionsButtonTemplate");
        backbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame", "BOTTOM",0,4);
        backbtn:SetText(AL["Back"]);
        backbtn:SetScript("OnClick", function(self) AtlasLoot:BackButton_OnClick() end)
        backbtn:Hide();

        -- Filter Button
local filterbtn = CreateFrame("CheckButton","AtlasLootFilterCheck",AtlasLootItemsFrame,"OptionsCheckButtonTemplate");
        filterbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame", "BOTTOM",85 ,27);
        filterbtn.Label = filterbtn:CreateFontString("AtlasLootFilterCheckText","OVERLAY","GameFontNormal");
        filterbtn.Label:SetText(AL["Filter"]);
        filterbtn.Label:SetPoint("RIGHT", AtlasLootFilterCheck, 30, 2);
        filterbtn:SetScript("OnClick", function() AtlasLoot_FilterEnableButton() end);

        -- Quick Looks Button
local looksbtn = CreateFrame("Button", "AtlasLootQuickLooksButton", AtlasLootItemsFrame);
        looksbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame", "BOTTOM",58,28);
        looksbtn:SetSize(25,25);
        looksbtn.Label = looksbtn:CreateFontString("AtlasLoot_QuickLooks","OVERLAY","GameFontNormal");
        looksbtn.Label:SetSize(200,25);
        looksbtn.Label:SetText(AL["Add to QuickLooks:"]);
        looksbtn.Label:SetPoint("LEFT", "AtlasLootQuickLooksButton", -125, 0);
        looksbtn.Label:SetJustifyH("LEFT");
        looksbtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up");
        looksbtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down");
        looksbtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled");
        looksbtn:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD");
        looksbtn:SetScript("OnClick", function(self) AtlasLoot:ShowQuickLooks(self) end)
        looksbtn:SetScript("OnShow", function(self)
            if (AtlasLootItemsFrame.refresh) and ((AtlasLootItemsFrame.refresh[1] == "SearchResult") or (AtlasLootItemsFrame.refresh[1] == "WishList")) then
                self:Disable();
            else
                self:Enable();
            end
        end)
        looksbtn:Hide();
        
------------------------------------ Buttons at the top of the frame ---------------------------------------

    --Close Button
local closebtn = CreateFrame("Button", "AtlasLootDefaultFrame_CloseButton", AtlasLootDefaultFrame, "UIPanelCloseButton");
    closebtn:SetPoint("TOPRIGHT", AtlasLootDefaultFrame, "TOPRIGHT",-10,-10);
    closebtn:SetScript("OnClick", function() AtlasLootDefaultFrame:Hide() end);

    --Load All Addon Moduels Button
local loadModulebtn = CreateFrame("Button", "AtlasLootDefaultFrame_LoadModules", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    loadModulebtn:SetSize(105,20);
    loadModulebtn:SetPoint("TOPRIGHT", AtlasLootDefaultFrame, "TOPRIGHT",-38,-15);
    loadModulebtn:SetText(AL["Load Modules"]);
    loadModulebtn:SetScript("OnClick", function() AtlasLoot:LoadAllModules() end);

    --Options Button
local optionsbtn = CreateFrame("Button", "AtlasLootDefaultFrame_Options", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    optionsbtn:SetSize(105,20);
    optionsbtn:SetPoint("TOPLEFT", AtlasLootDefaultFrame, "TOPLEFT",40,-15);
    optionsbtn:SetText(AL["Options"]);
    optionsbtn:SetScript("OnClick", function() AtlasLootOptions_Toggle() end);

    --Moduel Menu Button
local menubtn = CreateFrame("Button", "AtlasLootDefaultFrame_Menu", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    menubtn:SetSize(174,25);
    menubtn:SetPoint("TOPLEFT", AtlasLootDefaultFrame, "TOPLEFT",38,-55);
    menubtn.Lable = menubtn:CreateFontString("AtlasLootDefaultFrame_SelectedCategory", "OVERLAY","GameFontNormal")
    menubtn.Lable:SetPoint("TOP",menubtn,"BOTTOM",0,37);
    menubtn.Lable:SetText("Select Module");
    menubtn.Lable:Show();
    menubtn:SetText(AL["Select Loot Table"]);
    menubtn:SetScript("OnClick", function(self) 
        if AtlasLoot_Dewdrop:IsOpen() then
            AtlasLoot_Dewdrop:Close();
        else
            AtlasLoot_Dewdrop:Open(self);
        end
    end);

    --SubMenu Button
local submenubtn = CreateFrame("Button", "AtlasLootDefaultFrame_SubMenu", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    submenubtn:SetSize(200,25);
    submenubtn:SetPoint("LEFT", "AtlasLootDefaultFrame_Menu", "RIGHT",0,0);
    submenubtn.Lable = submenubtn:CreateFontString("AtlasLootDefaultFrame_SelectedTable", "OVERLAY","GameFontNormal")
    submenubtn.Lable:SetPoint("TOP","AtlasLootDefaultFrame_SubMenu","BOTTOM",0,37);
    submenubtn.Lable:SetText("Select Subcategory");
    submenubtn.Lable:Show();
    submenubtn.Text = submenubtn:CreateFontString("AtlasLootDefaultFrame_SubMenuText", "OVERLAY","GameFontNormal")
    submenubtn.Text:SetPoint("LEFT","AtlasLootDefaultFrame_SubMenu","RIGHT",0,0);
    submenubtn.Text:SetJustifyH("CENTER");
    submenubtn.Text:SetSize(190,25);
    submenubtn.Text:Show();
    submenubtn:SetScript("OnClick", function(self)
        if AtlasLoot_DewdropSubMenu:IsOpen() then
            AtlasLoot_DewdropSubMenu:Close();
        else
            AtlasLoot_DewdropSubMenu:Open(self);
        end
    end);

    --Expansion Menu Button
local expansionmenubtn = CreateFrame("Button", "AtlasLootDefaultFrame_ExpansionMenu", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    expansionmenubtn:SetSize(174,25);
    expansionmenubtn:SetPoint("LEFT", "AtlasLootDefaultFrame_SubMenu", "RIGHT",0,0);
    expansionmenubtn:SetText(AtlasLoot_ExpansionMenu[GetAccountExpansionLevel()+1][1]);
    expansionmenubtn.Lable = expansionmenubtn:CreateFontString("AtlasLootDefaultFrame_SelectedTable2", "OVERLAY","GameFontNormal")
    expansionmenubtn.Lable:SetPoint("TOP",expansionmenubtn,"BOTTOM",0,37);
    expansionmenubtn.Lable:SetText("Select Expansion");
    expansionmenubtn.Lable:Show();
    expansionmenubtn:SetScript("OnClick", function(self)
        if AtlasLoot_DewdropExpansionMenu:IsOpen() then
            AtlasLoot_DewdropExpansionMenu:Close();
        else
            AtlasLoot_DewdropExpansionMenu:Open(self);
        end
    end);

---------------------------------------- Buttons Under the loot and subtable frames -------------------------------------------

    --Wish List Button
local wishbtn = CreateFrame("Button", "AtlasLootDefaultFrameWishListButton", AtlasLootDefaultFrame, "OptionsButtonTemplate");
        wishbtn:SetPoint("BOTTOMLEFT", "AtlasLootDefaultFrame", "BOTTOMLEFT", 40, 63);
        wishbtn:SetSize(105,20);
        wishbtn:SetScript("OnClick", function(self)AtlasLoot_ShowWishListDropDown("","","","","",self,true) end);
        wishbtn:SetText(AL["Wishlist"]);

    --Quick Look Buttons
local function presetcreate(preset,num)
    preset:SetSize(105,20);
    preset:SetScript("OnEnter", function(self)
        if self:IsEnabled() then
            GameTooltip:ClearLines();
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5);
            GameTooltip:AddLine(AtlasLootCharDB["QuickLooks"][num][3]);
            GameTooltip:Show();
        end
    end);
    preset:SetScript("OnLeave", function()
        if(GameTooltip:IsVisible()) then
            GameTooltip:Hide();
        end
    end);
    preset:SetScript("OnClick", function()
        if AtlasLoot:IsLootTableAvailable(AtlasLootCharDB["QuickLooks"][num][4]) then
            ATLASLOOT_LASTMODULE = AtlasLootCharDB["QuickLooks"][num][4];
            ATLASLOOT_CURRENTTABLE = AtlasLootCharDB["QuickLooks"][num][5];
            AtlasLoot:ShowItemsFrame(AtlasLootCharDB["QuickLooks"][num][1], AtlasLootCharDB["QuickLooks"][num][2], AtlasLootCharDB["QuickLooks"][num][3]);
        end
    end);
    preset:SetScript("OnShow", function(self)
            self:SetText(AL["QuickLook"].." "..num);
            if ((not AtlasLootCharDB["QuickLooks"][num]) or (not AtlasLootCharDB["QuickLooks"][num][1])) or (AtlasLootCharDB["QuickLooks"][num][1]==nil) then
                self:Disable();
            end
    end);

end
    --QuickLook Button 1
local presetsize = 3.75;
local preset1 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset1", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    presetcreate(preset1,1);
    preset1:SetPoint("LEFT", AtlasLootDefaultFrameWishListButton, "RIGHT", presetsize, 0);
    --QuickLook Button 2
local preset2 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset2", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    presetcreate(preset2,2);
    preset2:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset1", "RIGHT", presetsize, 0);
    --QuickLook Button 3
local preset3 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset3", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    presetcreate(preset3,3);
    preset3:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset2", "RIGHT", presetsize, 0);
    --QuickLook Button 4
local preset4 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset4", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    presetcreate(preset4,4);
    preset4:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset3", "RIGHT", presetsize, 0);

    --Search Edit Box
local searchbox = CreateFrame("EditBox","AtlasLootDefaultFrameSearchBox",AtlasLootDefaultFrame,"InputBoxTemplate");
    searchbox:SetSize(190,32);
    searchbox:SetMaxLetters(100);
    searchbox:SetAutoFocus(false);
    searchbox:SetPoint("TOPLEFT",AtlasLootDefaultFrameWishListButton,"BOTTOMLEFT",7,-3)
    searchbox:SetTextInsets(0, 8, 0, 0);
    searchbox:SetScript("OnEnterPressed", function(self)
        AtlasLoot:Search(self:GetText());
        self:ClearFocus();
    end)
    local fstring = searchbox:CreateFontString("AtlasLootDefaultFrameSearchString", "ARTWORK", "GameFontNormal");

    --Search Button
local searchbtn = CreateFrame("Button","AtlasLootDefaultFrameSearchButton",AtlasLootDefaultFrame,"UIPanelButtonTemplate2");
    searchbtn:SetSize(69,32);
    searchbtn:SetPoint("LEFT","AtlasLootDefaultFrameSearchBox","RIGHT",2,0);
	searchbtn:SetText(AL["Search"]);
    searchbtn:SetScript("OnClick", function()
        AtlasLoot:Search(AtlasLootDefaultFrameSearchBox:GetText());
        AtlasLootDefaultFrameSearchBox:ClearFocus();
    end);

    --Search Options Button
local searchopt = CreateFrame("Button", "AtlasLootDefaultFrameSearchOptionsButton", AtlasLootDefaultFrameSearchButton);
    searchopt:SetSize(28,28);
    searchopt:SetPoint("LEFT","AtlasLootDefaultFrameSearchButton","RIGHT",-5,0);
    searchopt:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up");
    searchopt:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down");
    searchopt:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled");
    searchopt:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight","ADD");
    searchopt:SetScript("OnClick", function(self) AtlasLoot:ShowSearchOptions(self) end)

    --Clear Search Button
local searchclear = CreateFrame("Button","AtlasLootDefaultFrameSearchClearButton",AtlasLootDefaultFrameSearchBox,"UIPanelButtonTemplate2");
    searchclear:SetSize(58,32);
    searchclear:SetPoint("LEFT",AtlasLootDefaultFrameSearchOptionsButton,"RIGHT",-2,0);
    searchclear:SetText(AL["Clear"]);
    searchclear:SetScript("OnClick", function()
        AtlasLootDefaultFrameSearchBox:SetText("");
        AtlasLootDefaultFrameSearchBox:ClearFocus();
    end);

    --Last Result Button
local lastresult = CreateFrame("Button","AtlasLootDefaultFrameLastResultButton",AtlasLootDefaultFrameSearchBox,"UIPanelButtonTemplate2");
    lastresult:SetSize(100,32);
    lastresult:SetPoint("LEFT",AtlasLootDefaultFrameSearchClearButton,"RIGHT",1,0);
    lastresult:SetText(AL["Last Result"]);
    lastresult:SetScript("OnClick", function() AtlasLoot:ShowSearchResult() end);

    -- Advanced Search Button
local advSearch = CreateFrame("Button","AtlasLootDefaultFrameAdvancedSearchButton", AtlasLootDefaultFrame,"UIPanelButtonTemplate2");
    advSearch:SetSize(95,32);
    advSearch:SetPoint("LEFT",AtlasLootDefaultFrameLastResultButton,"RIGHT",2);
    advSearch:SetText("Advanced");
    advSearch:SetScript("OnClick", function()
        AtlasLoot_AdvancedSearchShow();
        AtlasLootDefaultFrameSearchBox:ClearFocus();
    end)

---------------------  Diffcuility ScrollFrame ----------------------------------
local ROW_HEIGHT = 16;   -- How tall is each row?
local MAX_ROWS = 5;      -- How many rows can be shown at once?

local scrollFrame = CreateFrame("Frame", "Atlasloot_Difficulty_ScrollFrame", AtlasLootDefaultFrame);
    scrollFrame:EnableMouse(true);
    scrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS + 16);
    scrollFrame:SetPoint("LEFT","AtlasLootDefaultFrame_ExpansionMenu","RIGHT",0,-39);
    scrollFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    });
    scrollFrame.Lable = scrollFrame:CreateFontString("Atlasloot_HeaderLabel", "OVERLAY","GameFontNormal")
    scrollFrame.Lable:SetPoint("TOPLEFT",Atlasloot_Difficulty_ScrollFrame,10,-10);
    scrollFrame.Lable:SetJustifyH("LEFT");
    scrollFrame.Lable:SetFont("GameFontNormal", 24);

function AtlasLoot:ScrollFrameUpdate(hide)
    if AtlasLoot_Difficulty then
        local maxValue = #AtlasLoot_Difficulty[ATLASLOOT_CURRENTTYPE];
        FauxScrollFrame_Update(scrollFrame.scrollBar, maxValue, MAX_ROWS, ROW_HEIGHT);
        local offset = FauxScrollFrame_GetOffset(scrollFrame.scrollBar);
        for i = 1, MAX_ROWS do
            local value = i + offset
            scrollFrame.rows[i]:SetChecked(false);
            scrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
            if value <= maxValue and AtlasLoot_Difficulty[ATLASLOOT_CURRENTTYPE][value] and hide == nil then
                local row = scrollFrame.rows[i]
                row:SetText("|cffFFd200"..AtlasLoot_Difficulty[ATLASLOOT_CURRENTTYPE][value][1]);
                row.itemIndex = AtlasLoot_Difficulty[ATLASLOOT_CURRENTTYPE][value][2];
                if row.itemIndex == ItemindexID then
                    row:SetChecked(true);
                end
                row:Show()
            else
                scrollFrame.rows[i]:Hide()
            end
        end
    end
end

local scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameScroll", Atlasloot_Difficulty_ScrollFrame, "FauxScrollFrameTemplate");
    scrollSlider:SetPoint("TOPLEFT", 0, -8)
    scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    scrollSlider:SetScript("OnVerticalScroll", function(self, offset)
    self.offset = math.floor(offset / ROW_HEIGHT + 0.5)
        AtlasLoot:ScrollFrameUpdate()
end)

scrollSlider:SetScript("OnShow", function()
    AtlasLoot:ScrollFrameUpdate()
end)

scrollFrame.scrollBar = scrollSlider

local rows = setmetatable({}, { __index = function(t, i)
	local row = CreateFrame("CheckButton", "$parentRow"..i, scrollFrame)
	row:SetSize(230, ROW_HEIGHT);
	row:SetNormalFontObject(GameFontHighlightLeft);
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
    row:SetScript("OnClick", function()
        ItemindexID = row.itemIndex;
        if not AtlasLootDefaultFrame_AdvancedSearchPanel:IsVisible() then
        AtlasLoot:ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3]);
        end
        AtlasLoot:ScrollFrameUpdate();
    end)
	if i == 1 then
		row:SetPoint("TOPLEFT", scrollFrame, 8, -8)
	else
		row:SetPoint("TOPLEFT", scrollFrame.rows[i-1], "BOTTOMLEFT")
	end

	rawset(t, i, row)
	return row
end })

scrollFrame.rows = rows
local MAX_ROWS2 = 26;      -- How many rows can be shown at once?

--------------------Subtable Frame--------------------
local subtableFrame = CreateFrame("Frame", "Atlasloot_SubTableFrame", AtlasLootDefaultFrame);
    subtableFrame:EnableMouse(true);
    subtableFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS2 + 23);
    subtableFrame:SetPoint("BOTTOMLEFT","Atlasloot_Difficulty_ScrollFrame",0,-446);
    subtableFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    });

function AtlasLoot:SubTableScrollFrameUpdate(tablename, dataSource, tablenum)
    local maxValue = #dataSource[tablename];
    subtableFrame.tablename = tablename;
    subtableFrame.dataSource = dataSource;
    subtableFrame.tablenum = tablenum;
    FauxScrollFrame_Update(subtableFrame.scrollBar, maxValue, MAX_ROWS2, ROW_HEIGHT);
    local offset = FauxScrollFrame_GetOffset(subtableFrame.scrollBar);
    for i = 1, MAX_ROWS2 do
        local value = i + offset
        subtableFrame.rows[i]:SetChecked(false);
        subtableFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
        if value <= maxValue and dataSource[tablename][value] and tablename ~= "SearchMENU" then
            local row = subtableFrame.rows[i]
                row.dataSource = dataSource;
                row.tablename = tablename;
                row.tablenum = value;
            if dataSource == AtlasLoot_MapData then
                row.Text:SetText(dataSource[tablename][value][1]);
                row:SetScript("OnEnter", function(self)
                    GameTooltip:SetOwner(self, "ANCHOR_TOP");
                    GameTooltip:SetText(dataSource[tablename][value][1]);
                    GameTooltip:Show();
                end)
                row:SetScript("OnLeave", function() GameTooltip:Hide() end)
            else
                row.Text:SetText("|cffFFd200"..dataSource[tablename][value].Name);
                row:SetScript("OnEnter", function(self)
                    GameTooltip:Hide();
                end)
                if tablenum == value and dataSource ~= AtlasLoot_MapData then
                    row:SetChecked(true);
                end
            end
            row:Show();
        else
            subtableFrame.rows[i]:Hide();
        end
    end
end

local scrollSlider2 = CreateFrame("ScrollFrame","AtlasLootDefaultFrameSubTableScroll",Atlasloot_SubTableFrame,"FauxScrollFrameTemplate");
    scrollSlider2:SetPoint("TOPLEFT", 0, -8)
    scrollSlider2:SetPoint("BOTTOMRIGHT", -30, 8)
    scrollSlider2:SetScript("OnVerticalScroll", function(self, offset)
        self.offset = math.floor(offset / ROW_HEIGHT + 0.5)
            AtlasLoot:SubTableScrollFrameUpdate(subtableFrame.tablename, subtableFrame.dataSource, subtableFrame.tablenum);
    end)

    subtableFrame.scrollBar = scrollSlider2

local rows2 = setmetatable({}, { __index = function(t, i)
    local row = CreateFrame("CheckButton", "$parentRow"..i, subtableFrame)
    row:SetSize(230, ROW_HEIGHT)
    row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
    row.Text = row:CreateFontString("$parentRow"..i.."Text","OVERLAY","GameFontNormal");
    row.Text:SetSize(230, ROW_HEIGHT);
    row.Text:SetPoint("LEFT",row);
    row.Text:SetJustifyH("LEFT");
    row:SetScript("OnClick", function()
        if row.dataSource ~= AtlasLoot_MapData then
            AtlasLoot:ShowItemsFrame(row.tablename, row.dataSource, row.tablenum);
        else
            row:SetChecked(false);
        end
    end)
    if i == 1 then
        row:SetPoint("TOPLEFT", subtableFrame, 8, -8)
    else
        row:SetPoint("TOPLEFT", subtableFrame.rows[i-1], "BOTTOMLEFT")
    end

    rawset(t, i, row)
    return row
end })

subtableFrame.rows = rows2

--------------------------------- Atlas Map and map buttons -----------------------------------------------

    --Atlas Map
local map = CreateFrame("Frame", "AtlasLootDefaultFrame_Map", AtlasLootDefaultFrame);
    map:SetSize(540,515);
    map:SetPoint("BOTTOMLEFT", AtlasLootDefaultFrame, "BOTTOMLEFT",40,90);
    map:SetFrameStrata("HIGH");
    map:Hide();
    map:EnableMouse();
    map:SetScript("OnMouseDown", function(self, button)
        if button == "RightButton" then
            AtlasLoot:MapOnShow();
        end
    end);

    -- Map Button
local mapbtn = CreateFrame("Button","AtlasLootDefaultFrame_MapButton", AtlasLootDefaultFrame,"OptionsButtonTemplate");
    mapbtn:SetSize(90,24);
    mapbtn:SetPoint("BOTTOMLEFT",Atlasloot_SubTableFrame,0,-27.5);
    mapbtn:SetText("Map");
    mapbtn:SetScript("OnClick", function() AtlasLoot:MapOnShow(); end)
    mapbtn:Hide();

    -- Map Select Button
local mapSelbtn = CreateFrame("Button","AtlasLootDefaultFrame_MapSelectButton", AtlasLootDefaultFrame,"OptionsButtonTemplate");
    mapSelbtn:SetSize(180,24);
    mapSelbtn:SetPoint("BOTTOMRIGHT",Atlasloot_SubTableFrame,5,-27.5);
    mapSelbtn:SetScript("OnClick", function(self)
        if AtlasLoot_MapMenu:IsOpen() then
            AtlasLoot_MapMenu:Close();
        else
            AtlasLoot_MapMenu:Open(self);
        end
    end);
    mapSelbtn:SetText("No Map");
    mapSelbtn:Hide();