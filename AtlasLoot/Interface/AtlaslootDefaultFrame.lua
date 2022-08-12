--[[
Functions:
AtlasLoot:DewDropClick(tablename, text, tabletype, tabletype2)
AtlasLoot:DewDropSubMenuClick(tablename, text)
AtlasLoot:DewdropExpansionMenuClick(tablename, text)
AtlasLoot_DefaultFrame_OnShow()
AtlasLootDefaultFrame_OnHide()
AtlasLoot:DewdropExpansionMenuRegister(loottable)
AtlasLoot:DewdropSubMenuRegister(loottable)
AtlasLoot:DewdropRegister()
AtlasLoot:SetNewStyle(style)
]]

--Include all needed libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

--Load the 2 dewdrop menus
AtlasLoot_Dewdrop = AceLibrary("Dewdrop-2.0");
AtlasLoot_DewdropSubMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_DewdropExpansionMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_DifficultyAtlas = AceLibrary("Dewdrop-2.0");

ItemindexID = 2;

AtlasLoot_Data["AtlasLootFallback"] = {
    EmptyInstance = {};
};

--[[
AtlasLootDefaultFrame_OnShow:
Called whenever the loot browser is shown and sets up buttons and loot tables
]]
function AtlasLootDefaultFrame_OnShow()
    --Definition of where I want the loot table to be shown
    --Remove the selection of a loot table in Atlas
    AtlasLootItemsFrame.activeBoss = nil;
    --Set the item table to the loot table
        --Show the last displayed loot table
    local lastboss = AtlasLoot.db.profile.LastBoss;
    if lastboss and lastboss[4] then
        ATLASLOOT_CURRENTTABLE = lastboss[5];
        ATLASLOOT_LASTMODULE = lastboss[4];
        AtlasLoot:IsLootTableAvailable(lastboss[4]);
        AtlasLoot:ShowItemsFrame(lastboss[1], AtlasLoot_Data, lastboss[3]);
        AtlasLoot_DewdropSubMenu:Unregister(AtlasLootDefaultFrame_SubMenu);
        AtlasLoot:DewdropSubMenuRegister(AtlasLoot_SubMenus[lastboss[5]]);
    else
        AtlasLoot:ShowItemsFrame("EmptyTable", AtlasLoot_Data, 1);
    end
end

--[[
AtlasLootDefaultFrame_OnHide:
When we close the loot browser, re-bind the item table to Atlas
and close all Dewdrop menus
]]
function AtlasLootDefaultFrame_OnHide()
    AtlasLoot_Dewdrop:Close(1);
    AtlasLoot_DewdropSubMenu:Close(1);
    AtlasLoot_DewdropExpansionMenu:Close(1);
end

--[[
AtlasLoot:DewDropClick(tablename, text, tabletype):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot_Dewdrop is clicked
]]
function AtlasLoot:DewDropClick(tablename, text, tablenum)
    ATLASLOOT_FILTER_ENABLE = false;
    AtlasLootFilterCheck:SetChecked(false);
    tablename = tablename .. AtlasLoot_Expac;
    ATLASLOOT_CURRENTTABLE = tablename;
    tablenum = tablenum or 1;
    ATLASLOOT_LASTMODULE = AtlasLoot_SubMenus[tablename].Module;
    AtlasLootDefaultFrame_Menu:SetText(text);
    AtlasLoot:IsLootTableAvailable(AtlasLoot_SubMenus[tablename].Module);
    AtlasLoot_DewdropSubMenu:Unregister(AtlasLootDefaultFrame_SubMenu);
    AtlasLoot:DewdropSubMenuRegister(AtlasLoot_SubMenus[tablename]);
    local lasttable = AtlasLoot.db.profile[ATLASLOOT_CURRENTTABLE];
        if lasttable then
            AtlasLoot:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3]);
        else
            AtlasLoot:ShowItemsFrame(AtlasLoot_SubMenus[tablename][tablenum][2], AtlasLoot_Data, tablenum);
        end
    AtlasLoot_Dewdrop:Close(1);
end

--[[
AtlasLoot:DewDropSubMenuClick(tablename, text):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot_DewdropSubMenu is clicked
]]
function AtlasLoot:DewDropSubMenuClick(tablename)
    --Show the select loot table
    local tablenum = AtlasLoot_Data[tablename].Loadfirst or 1;
    --Show the table that has been selected
    AtlasLoot:ShowItemsFrame(tablename, AtlasLoot_Data, tablenum);
    AtlasLoot_DewdropSubMenu:Close(1);
end

--[[
AtlasLoot:DewdropExpansionMenuClick(expansion, name):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot_DewdropSubMenu is clicked
]]
function AtlasLoot:DewdropExpansionMenuClick(expansion, name)
	AtlasLootDefaultFrame_ExpansionMenu:SetText(name);
    AtlasLoot_DewdropExpansionMenu:Close(1);
    AtlasLoot_Expac = expansion;
    if ATLASLOOT_CURRENTTABLE then
        ATLASLOOT_CURRENTTABLE = AtlasLoot:CleandataID(ATLASLOOT_CURRENTTABLE, 1) .. AtlasLoot_Expac;
        AtlasLoot:IsLootTableAvailable(AtlasLoot_SubMenus[ATLASLOOT_CURRENTTABLE].Module);
        local tablename = AtlasLoot_SubMenus[ATLASLOOT_CURRENTTABLE][1][2];
        local lasttable = AtlasLoot.db.profile[ATLASLOOT_CURRENTTABLE];
        AtlasLoot_DewdropSubMenu:Unregister(AtlasLootDefaultFrame_SubMenu);
        AtlasLoot:DewdropSubMenuRegister(AtlasLoot_SubMenus[ATLASLOOT_CURRENTTABLE]);
        if lasttable then
            AtlasLoot:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3]);
        else
            local tablenum = AtlasLoot_Data[tablename].Loadfirst or 1;
            AtlasLoot:ShowItemsFrame(tablename, AtlasLoot_Data, tablenum);
        end
    end

end

--[[
AtlasLoot:DewdropExpansionMenuRegister():
Adds expansion menu from expansion table in mainmenus.lua
]]
function AtlasLoot:DewdropExpansionMenuRegister()
    AtlasLoot_DewdropExpansionMenu:Register(AtlasLootDefaultFrame_ExpansionMenu,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
			if AtlasLoot_ExpansionMenu then
                for k,v in ipairs(AtlasLoot_ExpansionMenu) do
                    if type(v) == "table" then
                    --If a link to show a expansion menu
                        local checked = false;
                            AtlasLoot_Dewdrop:AddLine(
                                'text', v[1],
                                'textR', 1,
                                'textG', 0.82,
                                'textB', 0,
                                'func', function(arg1,arg2,arg3) AtlasLoot:DewdropExpansionMenuClick(arg1,arg2,arg3) end,
                                'arg1', v[2],
                                'arg2', v[1],
                                'arg3', k,
                                'notCheckable', true
                            )
                    end
                end
            end
            --Close button
            AtlasLoot_Dewdrop:AddLine(
                'text', AL["Close Menu"],
                'textR', 0,
                'textG', 1,
                'textB', 1,
                'func', function() AtlasLoot_Dewdrop:Close() end,
                'notCheckable', true
				)
		end,
		'dontHook', true
	)
end

--[[
AtlasLoot:DewdropSubMenuRegister(loottable):
loottable - Table defining the sub menu
Generates the sub menu needed by passing a table of loot tables and titles
]]
function AtlasLoot:DewdropSubMenuRegister(loottable)
	AtlasLoot_DewdropSubMenu:Register(AtlasLootDefaultFrame_SubMenu,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
        'children', function(level, value)
                for k,v in pairs(loottable) do
					if type(v) == "table" then
                        if v[3] == "Header" then
                            AtlasLoot_DewdropSubMenu:AddLine(
                                    'text', v[1],
                                    'textR', 0.2,
                                    'textG', 0.82,
                                    'textB', 0.5,
                                    'func', function(arg1,arg2) AtlasLoot:DewDropSubMenuClick(arg1,arg2) end,
                                    'arg1', v[2],
                                    'arg2', v[1],
                                    'arg2', v[3],
                                    'notCheckable', true
                                )
                        else
                            AtlasLoot_DewdropSubMenu:AddLine(
                                'text', AtlasLoot_Data[v[2]].Name,
                                'func', function(arg1,arg2) AtlasLoot:DewDropSubMenuClick(arg1,arg2) end,
                                'arg1', v[2],
                                'arg2', AtlasLoot_Data[v[2]].Name,
                                'notCheckable', true
                            )
                        end
                    end
                end
                --Close button
                AtlasLoot_DewdropSubMenu:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() AtlasLoot_DewdropSubMenu:Close() end,
					'notCheckable', true
				)
		end,
		'dontHook', true
	)
end

--[[
AtlasLoot:DewdropRegister:
Constructs the main category menu from a tiered table
]]
function AtlasLoot:DewdropRegister()
	AtlasLoot_Dewdrop:Register(AtlasLootDefaultFrame_Menu,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
				if AtlasLoot_Modules then
                    for k,v in ipairs(AtlasLoot_Modules) do
                        --If a link to show a submenu
                        local checked = false;
                        AtlasLoot_Dewdrop:AddLine(
                            'text', v[1],
                            'textR', 1,
                            'textG', 0.82,
                            'textB', 0,
                            'func', function(arg1,arg2,arg3) AtlasLoot:DewDropClick(arg1,arg2,arg3) end,
                            'arg1', v[2],
                            'arg2', v[1],
                            'arg3', v[3],
                            'notCheckable', true
                        )
                    end
                end
                --Close button
				AtlasLoot_Dewdrop:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() AtlasLoot_Dewdrop:Close() end,
					'notCheckable', true
				)
		end,
		'dontHook', true
	)
end

--[[
AtlasLoot:SetNewStyle:
Create the new Default Frame style
	style = "new"
	style = "old"
]]
function AtlasLoot:SetNewStyle(style)

	local buttons = {
		"AtlasLootDefaultFrame_Options",
		"AtlasLootDefaultFrame_LoadModules",
		"AtlasLootDefaultFrame_Menu",
		"AtlasLootDefaultFrame_SubMenu",
		"AtlasLootDefaultFrame_ExpansionMenu",
		"AtlasLootDefaultFrame_Preset1",
		"AtlasLootDefaultFrame_Preset2",
		"AtlasLootDefaultFrame_Preset3",
		"AtlasLootDefaultFrame_Preset4",
		"AtlasLootDefaultFrameSearchButton",
		"AtlasLootDefaultFrameSearchClearButton",
		"AtlasLootDefaultFrameLastResultButton",
		"AtlasLootDefaultFrameWishListButton",
        "AtlasLootDefaultFrameAdvancedSearchButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_QualityButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_SearchButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_ClearButton",
        "AtlasLootDefaultFrame_MapButton",
        "AtlasLootDefaultFrame_MapSelectButton",
	}

	if style == "new" then
		AtlasLootDefaultFrame_LootBackground:SetBackdrop({bgFile = "Interface/AchievementFrame/UI-Achievement-StatsBackground"});
		AtlasLootDefaultFrame_LootBackground:SetBackdropColor(1,1,1,0.5);

		AtlasLootDefaultFrame:SetBackdrop({bgFile = "Interface/AchievementFrame/UI-Achievement-AchievementBackground",
			  edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
			  edgeSize = 16,
			  insets = { left = 4, right = 4, top = 4, bottom = 4 }});
		AtlasLootDefaultFrame:SetBackdropColor(1,1,1,0.5)
		AtlasLootDefaultFrame:SetBackdropBorderColor(1,0.675,0.125,1)
		AtlasLootDefaultFrameHeader:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Alert-Background.blp")
		AtlasLootDefaultFrameHeader:SetTexCoord(0,0.605,0,0.703)
		AtlasLootDefaultFrameHeader:SetWidth(299)
		AtlasLootDefaultFrameHeader:SetHeight(60)
		AtlasLootDefaultFrameHeader:SetPoint("TOP",AtlasLootDefaultFrame,"TOP",-3,22)

		AtlasLootDefaultFrame_Options:SetNormalTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
		AtlasLootDefaultFrame_Options:SetHeight(24)
		AtlasLootDefaultFrame_Options:SetPushedTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
		AtlasLootDefaultFrame_Options:SetHeight(24)

		local function SetButtons(path)
		   _G[path]:SetNormalTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
		   _G[path]:SetHeight(24)
		   _G[path]:SetPushedTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
		   _G[path]:SetHeight(24)
		   local tex = _G[path]:GetNormalTexture();
		   tex:SetTexCoord(0, 0.6640625, 0, 0.8);
		   tex:SetHeight(32)

		   local tex2 = _G[path]:GetPushedTexture();
		   tex2:SetTexCoord(0, 0.6640625, 0, 0.8);
		   tex2:SetHeight(32)
		end

		for k,v in pairs(buttons) do
		   SetButtons(v)
		end
	elseif style == "old" then

		AtlasLootDefaultFrame_LootBackground:SetBackdrop({bgFile = ""});
		AtlasLootDefaultFrame_LootBackground:SetBackdropColor(0,0,0.5,0.5);

		AtlasLootDefaultFrame:SetBackdrop({bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
			  edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
			  edgeSize = 32,
			  insets = { left = 11, right = 12, top = 12, bottom = 11 }});
		AtlasLootDefaultFrame:SetBackdropColor(1,1,1,1)
		AtlasLootDefaultFrame:SetBackdropBorderColor(1,1,1,1)


		AtlasLootDefaultFrameHeader:SetTexture("Interface/DialogFrame/UI-DialogBox-Header")
		AtlasLootDefaultFrameHeader:SetTexCoord(0,1,0,1)
		AtlasLootDefaultFrameHeader:SetWidth(425)
		AtlasLootDefaultFrameHeader:SetHeight(64)
		AtlasLootDefaultFrameHeader:SetPoint("TOP",AtlasLootDefaultFrame,"TOP",0,12)

		AtlasLootDefaultFrame_Options:SetNormalTexture("Interface/Buttons/UI-Panel-Button-Up")
		AtlasLootDefaultFrame_Options:SetHeight(20)
		AtlasLootDefaultFrame_Options:SetPushedTexture("Interface/Buttons/UI-Panel-Button-Down")
		AtlasLootDefaultFrame_Options:SetHeight(20)

		local function SetButtons(path)
		   _G[path]:SetNormalTexture("Interface/Buttons/UI-Panel-Button-Up")
		   _G[path]:SetHeight(20)
		   _G[path]:SetPushedTexture("Interface/Buttons/UI-Panel-Button-Down")
		   _G[path]:SetHeight(20)
		   local tex = _G[path]:GetNormalTexture();
		   tex:SetTexCoord(0, 0.625, 0, 0.6875);
		   tex:SetHeight(20)

		   local tex2 = _G[path]:GetPushedTexture();
		   tex2:SetTexCoord(0, 0.625, 0, 0.6875);
		   tex2:SetHeight(20)
		end

		for k,v in pairs(buttons) do
		   SetButtons(v)
		end

	end
end
