local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local modules = { "AtlasLoot_BurningCrusade", "AtlasLoot_Crafting", "AtlasLoot_OriginalWoW", "AtlasLoot_WorldEvents", "AtlasLoot_WrathoftheLichKing" };

AtlasLoot_QualityMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_DifficultyMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_EquipMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_EquipSubMenu = AceLibrary("Dewdrop-2.0");

local MAX_ARGUMENTS = 6;
local ACTIVE_ARGUMENT = 0;

AtlasLoot_ArgumentMenus = {};
AtlasLoot_ArgumentSubMenus = {};

local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";
local DEFAULT = "|cffFFd200";

AdvSearchSubMenuEnabled = 0;
AdvSearchSubMenuText = "";
AdvSearchSubMenu2Enabled = 0;
AdvSearchSubMenuText = "";

AdvSearchSetup = false;

AtlasLoot_FrameMenuList = {
    ["EquipSubMenu"] = {AtlasLoot_EquipSubMenu, "AtlasLootAdvancedSearch_EquipSub", "Select Option", "type", ""};
}

AtlasLoot_AdvancedSearchMenus = {
    ["Difficulty"] ={
        [1] = {
            {"Normal", "difficulty", AtlasLoot_Difficulty.Normal},
        },
        [2] = {
            {"Heroic", "difficulty", AtlasLoot_Difficulty.Heroic},
        },
        [3] = {
            {"Mythic/Ascended", "difficulty", AtlasLoot_Difficulty.Mythic},
        },
        [4] = {
            ["Mythic+ 1-10"] = {
				{"Mythic 1", "difficulty", AtlasLoot_Difficulty.MythicPlus[1]},
				{"Mythic 2", "difficulty", AtlasLoot_Difficulty.MythicPlus[2]},
				{"Mythic 3", "difficulty", AtlasLoot_Difficulty.MythicPlus[3]},
				{"Mythic 4", "difficulty", AtlasLoot_Difficulty.MythicPlus[4]},
				{"Mythic 5", "difficulty", AtlasLoot_Difficulty.MythicPlus[5]},
				{"Mythic 6", "difficulty", AtlasLoot_Difficulty.MythicPlus[6]},
				{"Mythic 7", "difficulty", AtlasLoot_Difficulty.MythicPlus[7]},
				{"Mythic 8", "difficulty", AtlasLoot_Difficulty.MythicPlus[8]},
				{"Mythic 9", "difficulty", AtlasLoot_Difficulty.MythicPlus[9]},
				{"Mythic 10", "difficulty", AtlasLoot_Difficulty.MythicPlus[10]},
			},
        },
		[5] = {
            ["Mythic+ 11-20"] = {
				{"Mythic 11", "difficulty", AtlasLoot_Difficulty.MythicPlus[11]},
				{"Mythic 12", "difficulty", AtlasLoot_Difficulty.MythicPlus[12]},
				{"Mythic 13", "difficulty", AtlasLoot_Difficulty.MythicPlus[13]},
				{"Mythic 14", "difficulty", AtlasLoot_Difficulty.MythicPlus[14]},
				{"Mythic 15", "difficulty", AtlasLoot_Difficulty.MythicPlus[15]},
				{"Mythic 16", "difficulty", AtlasLoot_Difficulty.MythicPlus[16]},
				{"Mythic 17", "difficulty", AtlasLoot_Difficulty.MythicPlus[17]},
				{"Mythic 18", "difficulty", AtlasLoot_Difficulty.MythicPlus[18]},
				{"Mythic 19", "difficulty", AtlasLoot_Difficulty.MythicPlus[19]},
				{"Mythic 20", "difficulty", AtlasLoot_Difficulty.MythicPlus[20]},
			},
        },
		[6] = {
            ["Mythic+ 21-30"] = {
				{"Mythic 21", "difficulty", AtlasLoot_Difficulty.MythicPlus[21]},
				{"Mythic 22", "difficulty", AtlasLoot_Difficulty.MythicPlus[22]},
				{"Mythic 23", "difficulty", AtlasLoot_Difficulty.MythicPlus[23]},
				{"Mythic 24", "difficulty", AtlasLoot_Difficulty.MythicPlus[24]},
				{"Mythic 25", "difficulty", AtlasLoot_Difficulty.MythicPlus[25]},
				{"Mythic 26", "difficulty", AtlasLoot_Difficulty.MythicPlus[26]},
				{"Mythic 27", "difficulty", AtlasLoot_Difficulty.MythicPlus[27]},
				{"Mythic 28", "difficulty", AtlasLoot_Difficulty.MythicPlus[28]},
				{"Mythic 29", "difficulty", AtlasLoot_Difficulty.MythicPlus[29]},
				{"Mythic 30", "difficulty", AtlasLoot_Difficulty.MythicPlus[30]},
			},
        },
        [7] = {
            {"Bloodforged", "difficulty", AtlasLoot_Difficulty.Bloodforged},
        },
		[8] = {
			{RED.."Reset", "difficulty", "reset"},
		},
    };

    ["Quality"] = {
        -- [1] = {
        --     {AtlasLoot_FixText("=q0=").."Poor", "quality", "poor"},
        -- },
        -- [2] = {
        --     {AtlasLoot_FixText("=q1=").."Common", "quality", "common"},
        -- },
        [1] = {
            {AtlasLoot_FixText("=q2=").."Uncommon", "quality", "uncommon"},
        },
        [2] = {
            {AtlasLoot_FixText("=q3=").."Rare", "quality", "rare"},
        },
        [3] = {
            {AtlasLoot_FixText("=q4=").."Epic", "quality", "epic"},
        },
        [4] = {
            {AtlasLoot_FixText("=q5=").."Legendary", "quality", "legendary"},
        },
		[5] = {
			{RED.."Reset", "quality", "reset"},
		},
    };

    ["Equip"] = {
        [1] = {
            {"Head", "equip", "head", "EquipSubMenu", "ArmorType"},
        },
        [2] = {
            {"Shoulder", "equip", "shoulder", "EquipSubMenu", "ArmorType"},
        },
        [3] = {
            {"Chest", "equip", "chest", "EquipSubMenu", "ArmorType"},
        },
        [4] = {
            {"Wrist", "equip", "wrist", "EquipSubMenu", "ArmorType"},
        },
        [5] = {
            {"Hands", "equip", "hand", "EquipSubMenu", "ArmorType"},
        },
        [6] = {
            {"Waist", "equip", "waist", "EquipSubMenu", "ArmorType"},
        },
        [7] = {
            {"Legs", "equip", "legs", "EquipSubMenu", "ArmorType"},
        },
        [8] = {
            {"Feet", "equip", "feet", "EquipSubMenu", "ArmorType"},
        },
		[9] = {
			["Accessories"] = {
				{"Necklace", "equip", "neck", "EquipSubMenu", "Disable"},
				{"Back", "equip", "back", "EquipSubMenu", "Disable"},
				{"Ring", "equip", "finger", "EquipSubMenu", "Disable"},
				{"Trinket", "equip", "trinket", "EquipSubMenu", "Disable"},
			},
		},
        [10] = {
            ["Weapons"] = {
				{"One-Hand", "equip", "weapon", "EquipSubMenu", "WeaponType1H"},
				{"Two-Hand", "equip", "2h", "EquipSubMenu", "WeaponType2H"},
				{"Main Hand", "equip", "mainhand", "EquipSubMenu", "WeaponType1H"},
				{"Off Hand", "equip", "offhand", "EquipSubMenu", "WeaponType1H"},
				{"Ranged", "equip", "ranged", "EquipSubMenu", "WeaponTypeRanged"},
				{"Relic", "equip", "relic", "EquipSubMenu", "RelicType"},
			},
        },
		[11] = {
			["Off-Hand"] = {
				{"Shield", "equip", "shield", "EquipSubMenu", "Disable"},
				{"Held in Off-Hand", "equip", "holdable", "EquipSubMenu", "Disable"},
			}
		},
		[12] = {
			{RED.."Reset", "equip", "reset", "EquipSubMenu", "Disable"},
		},
    };

    ["ArmorType"] = {
        [1] = {
            {"Cloth", "type", "Cloth"},
        },
        [2] = {
            {"Leather", "type", "Leather"},
        },
        [3] = {
            {"Mail", "type", "Mail"},
        },
        [4] = {
            {"Plate", "type", "Plate"},
        },
		[5] = {
			{RED.."Reset", "type", "reset"},
		},
    };

    ["RelicType"] = {
        [1] = {
            {"Idols", "type", "idol"},
        },
        [2] = {
            {"Libram", "type", "libram"},
        },
        [3] = {
            {"Totem", "type", "totem"},
        },
        [4] = {
            {"Sigil", "type", "sigil"},
        },
		[5] = {
			{RED.."Reset", "type", "reset"},
		},
    };

	["WeaponType1H"] = {
		[1] = {
			{"Axe", "type", "axe1h"}
		},
		[2] = {
			{"Mace", "type", "mace1h"}
		},
		[3] = {
			{"Sword", "type", "sword1h"}
		},
		[4] = {
			{"Dagger", "type", "dagger"}
		},
		[5] = {
			{"Fist Weapon", "type", "fist"}
		},
		[6] = {
			{RED.."Reset", "type", "reset"},
		},
	};

	["WeaponType2H"] = {
		[1] = {
			{"Axe", "type", "axe2h"}
		},
		[2] = {
			{"Mace", "type", "mace2h"}
		},
		[3] = {
			{"Sword", "type", "sword2h"}
		},
		[4] = {
			{"Polearm", "type", "polearm"}
		},
		[5] = {
			{"Staff", "type", "staff"}
		},
		[6] = {
			{RED.."Reset", "type", "reset"},
		},
		
	};

	["WeaponTypeRanged"] = {
		[1] = {
			{"Bow", "type", "bows"}
		},
		[2] = {
			{"Gun", "type", "guns"}
		},
		[3] = {
			{"Crossbow", "type", "crossbows"}
		},
		[4] = {
			{"Wand", "type", "wand"}
		},
		[5] = {
			{"Thrown", "type", "thrown"}
		},
		[6] = {
			{RED.."Reset", "type", "reset"},
		},
	};
}

AtlasLoot_AdvancedSearchArguments = {
	["Arguments"] = {
		[1] = {
			["Primary Stats"] = {
				{"Stamina", "sta"},
				{"Strength", "str"},
				{"Agility", "agi"};
				{"Intellect", "int"},
				{"Spirit", "spi"},
			}
		};
		[2] = {
			["Secondary Stats"] = {
				{"Attack Power", "ap"};
				{"Spell Power", "sp"};
				{"Crit", "crit"};
				{"Hit", "hit"};
				{"Haste", "haste"};
				{"Expertise", "exp"};
				{"Armor Pen", "arp"};
				{"Spell Pen", "spp"};
			}
		};
		[3] = {
			["Defensive Stats"] = {
				{"Defense", "def"};
				{"Dodge", "dodge"};
				{"Parry", "parry"};
				{"Block", "block"};
				{"Block Value", "bv"};
				{"Resilience", "res"};
			}
		};
		[4] = {
			["Resistances"] = {
				{"Armor", "armor"};
				{"Holy Resist", "resholy"};
				{"Fire Resist", "resfire"};
				{"Nature Resist", "resnat"};
				{"Frost Resist", "resfrost"};
				{"Shadow Resist", "resshad"};
				{"Arcane Resist", "resarc"};
			}
		};
		[5] = {
			["Sockets"] = {
				{"Any", "socket"};
				{"Red Socket", "socketred"};
				{"Blue Socket", "socketblue"};
				{"Yellow Socket", "socketyellow"};
				{"Meta Socket", "socketmeta"};
			}
		};
		[6] = {
			["Other"] = {
				{"Required Level", "minlvl"};
				{"Item Level", "ilvl"};
			}
		};

		[7] = {
			{RED.."Reset", "reset"}
		}
	};

	["Operators"] = {
		[1] = {
			{"Equals", "=", true};
		},
		[2] = {
			{"Greater Than", ">", true}
		},
		[3] = {
			{"Greater Than Or Equal", ">=", true}
		},
		[4] = {
			{"Less Than", "<", true}
		},
		[5] = {
			{"Less Than Or Equal", "<=", true}
		},
		[6] = {
			{"Not Equal", "<>", true}
		},
		[7] = {
			{RED.."Reset", "reset", true}
		}
	}
}

AdvancedSearchOptions = {
    ["quality"] = "",
    ["equip"] = "",
    ["type"] = "",
    ["difficulty"] = "",
}

function AtlasLoot_AdvancedSearchSetup()
	AtlasLoot_AdvancedSearchRegister(AtlasLoot_QualityMenu, AtlasLootAdvancedSearch_Quality, AtlasLoot_AdvancedSearchMenus["Quality"]);
    AtlasLoot_AdvancedSearchRegister(AtlasLoot_EquipMenu, AtlasLootAdvancedSearch_Equip, AtlasLoot_AdvancedSearchMenus["Equip"]);
    AtlasLoot_AdvancedSearchRegister(AtlasLoot_DifficultyMenu, AtlasLootAdvancedSearch_Difficulty, AtlasLoot_AdvancedSearchMenus["Difficulty"]);

	local addArg = CreateFrame("Button", "AtlasLootAdvancedSearch_ArgumentContainerAddArgBtn", AtlasLootAdvancedSearch_ArgumentContainer, "OptionsButtonTemplate");
	addArg:SetPoint("BOTTOMLEFT", AtlasLootAdvancedSearch_ArgumentContainer, "TOPLEFT", 110, 2);
	addArg:SetSize(20, 20);
	addArg:SetText("+");
	addArg:SetScript("OnClick", function(self, button)
		AddArgumentContainer();
	end)

	local remArg = CreateFrame("Button", "AtlasLootAdvancedSearch_ArgumentContainerRemArgBtn", AtlasLootAdvancedSearch_ArgumentContainer, "OptionsButtonTemplate")
	remArg:SetPoint("LEFT", AtlasLootAdvancedSearch_ArgumentContainerAddArgBtn, "RIGHT", 10, 0);
	remArg:SetSize(20, 20);
	remArg:SetText("-");
	remArg:SetScript("OnClick", function(self, button)
		RemoveArgumentContainer();
	end)
	remArg:Disable();

	for n = 1, MAX_ARGUMENTS do
		AtlasLoot_ArgumentMenus[n] = AceLibrary("Dewdrop-2.0");
		AtlasLoot_ArgumentSubMenus[n] = AceLibrary("Dewdrop-2.0");

		local btn = CreateFrame("Button", "AtlasLootAdvancedSearch_ArgumentContainer"..tostring(n), AtlasLootAdvancedSearch_ArgumentContainer, "OptionsButtonTemplate");
		btn:SetPoint("TOPLEFT", AtlasLootAdvancedSearch_ArgumentContainer, "TOPLEFT", 0, -((n-1) * 35));
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

		local sub = CreateFrame("Button", "AtlasLootAdvancedSearch_ArgumentContainer"..tostring(n).."Sub", AtlasLootAdvancedSearch_ArgumentContainer, "OptionsButtonTemplate");
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

		local txt = CreateFrame("EditBox", "AtlasLootAdvancedSearch_ArgumentContainer"..tostring(n).."Value", AtlasLootAdvancedSearch_ArgumentContainer, "InputBoxTemplate")
		txt:SetPoint("LEFT", sub, "RIGHT", 15, 0);
		txt:SetSize(65, 35);
		txt:SetAutoFocus(false);
		txt:SetTextInsets(0, 8, 0, 0);
		txt:SetScript("OnEnterPressed", function(self)
			self:ClearFocus();
		end)
		txt:Hide();

		AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_ArgumentMenus[n], _G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(n)], tostring(n), AtlasLoot_AdvancedSearchArguments["Arguments"]);
		AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_ArgumentSubMenus[n], _G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(n).."Sub"], tostring(n), AtlasLoot_AdvancedSearchArguments["Operators"]);
	end

	--Reset Search options to defualt
	AtlasLoot_AdvancedSearchReset();

	AdvSearchSetup = true;
end

function AtlasLoot_AdvancedSearchShow()
	if (AtlasLootAdvancedSearch:IsVisible()) then
		AtlasLoot_AdvancedSearchClose();
		return;
	end

    pFrame = { "TOPLEFT", "AtlasLootDefaultFrame_LootBackground", "TOPLEFT", "2", "-2" };

	if not (AdvSearchSetup) then AtlasLoot_AdvancedSearchSetup() end

    --Hide all elements that could be in the AtlasTable
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootItemsFrame_BACK"):Hide();

	--Clear these values to defualt
	AdvSearchSubMenuEnabled = 0;
	AdvSearchSubMenuText = "";
	AdvSearchSubMenu2Enabled = 0;
	AdvSearchSubMenuText = "";

	if AtlasLootDefaultFrame_SubMenu2:IsEnabled() then
		AdvSearchSubMenu2Enabled = 1;
		AdvSearchSubMenu2Text = AtlasLootDefaultFrame_SelectedTable2:GetText();
		AtlasLootDefaultFrame_SubMenu2:Disable();
		AtlasLootDefaultFrame_SelectedTable2:SetText("");
    	AtlasLootDefaultFrame_SelectedTable2:Hide();
	end

	if AtlasLootDefaultFrame_SubMenu:IsEnabled() then
		AdvSearchSubMenuEnabled = 1;
		AdvSearchSubMenuText = AtlasLootDefaultFrame_SelectedTable:GetText();
		AtlasLootDefaultFrame_SubMenu:Disable();
		AtlasLootDefaultFrame_SelectedTable:SetText("");
	end

	AtlasLootServerQueryButton:Hide();

    --Ditch the Quicklook selector
    AtlasLoot_QuickLooks:Hide();
    AtlasLootQuickLooksButton:Hide();

	-- Hide the Filter Check-Box
	AtlasLootFilterCheck:Hide();

    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i.."_Unsafe"):Hide();
		getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootItem_"..i):Hide();
        getglobal("AtlasLootItem_"..i).itemID = 0;
        getglobal("AtlasLootItem_"..i).spellitemID = 0;
	end

    AtlasLoot_BossName:SetText("Advanced Search");

    AtlasLootAdvancedSearch:ClearAllPoints();
	AtlasLootAdvancedSearch:SetParent(pFrame[2]);
	AtlasLootAdvancedSearch:ClearAllPoints();
	AtlasLootAdvancedSearch:SetPoint(pFrame[1], pFrame[2], pFrame[3], pFrame[4], pFrame[5]);
    AtlasLootAdvancedSearch:Show();
end

function AtlasLoot_AdvancedSearchClose()
	AtlasLootAdvancedSearch:Hide();
	AtlasLootServerQueryButton:Show();

	if AdvSearchSubMenu2Enabled then
		AtlasLootDefaultFrame_SubMenu2:Enable();
		AtlasLootDefaultFrame_SelectedTable2:SetText(AdvSearchSubMenu2Text);
	end

	if AdvSearchSubMenuEnabled then
		AtlasLootDefaultFrame_SubMenu:Enable();
		AtlasLootDefaultFrame_SelectedTable:SetText(AdvSearchSubMenuText);
	end

	AdvSearchSubMenuEnabled = 0;
	AdvSearchSubMenu2Enabled = 0;

	if (SearchPrevData[1] ~= "") then
		AtlasLoot_ShowItemsFrame(SearchPrevData[1], SearchPrevData[2], SearchPrevData[3], SearchPrevData[4]);
	end
end

function AtlasLoot_AdvancedSearchReset()
	AdvancedSearchOptions = {
		["quality"] = "",
		["equip"] = "",
		["type"] = "",
		["difficulty"] = "",
	}

	for i = 1, MAX_ARGUMENTS do
		AdvancedSearchOptions["arg"..tostring(i)] = "";
		AdvancedSearchOptions["arg"..tostring(i).."op"] = "";

		RemoveArgumentContainer();
	end

	AtlasLootAdvancedSearch_LevelMin:SetText(UnitLevel("player"));
	AtlasLootAdvancedSearch_LevelMax:SetText(UnitLevel("player"));
	AtlasLootAdvancedSearch_ILevelMin:SetText("");
	AtlasLootAdvancedSearch_ILevelMax:SetText("");

	AtlasLootAdvancedSearch_Quality:SetText("Select Quality");

	AtlasLootAdvancedSearch_Equip:SetText("Select Item Type");
	AtlasLootAdvancedSearch_EquipSub:Disable();
	AtlasLootAdvancedSearch_EquipSub:SetText("Select Option")

	AtlasLootAdvancedSearch_Difficulty:SetText("Select Difficulty");
end

function AddArgumentContainer()
	if ACTIVE_ARGUMENT == MAX_ARGUMENTS then AdvSearchArgButtonToggle() return end

	ACTIVE_ARGUMENT = ACTIVE_ARGUMENT + 1;

	_G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(ACTIVE_ARGUMENT)]:Show();
	_G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(ACTIVE_ARGUMENT)]:SetText("Select Option");
	_G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(ACTIVE_ARGUMENT).."Sub"]:Show();

	AdvSearchArgButtonToggle()
end

function RemoveArgumentContainer()
	if ACTIVE_ARGUMENT == 0 then AdvSearchArgButtonToggle() return end

	AdvancedSearchOptions["arg"..tostring(ACTIVE_ARGUMENT)] = "";
	AdvancedSearchOptions["arg"..tostring(ACTIVE_ARGUMENT).."op"] = "";

	_G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(ACTIVE_ARGUMENT)]:Hide();
	_G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(ACTIVE_ARGUMENT).."Sub"]:Disable();
	_G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(ACTIVE_ARGUMENT).."Sub"]:Hide();
	_G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(ACTIVE_ARGUMENT).."Value"]:Hide();

	ACTIVE_ARGUMENT = ACTIVE_ARGUMENT - 1;
	AdvSearchArgButtonToggle()
end

function AdvSearchArgButtonToggle()
	if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
		AtlasLootAdvancedSearch_ArgumentContainerAddArgBtn:Disable()
	else
		AtlasLootAdvancedSearch_ArgumentContainerAddArgBtn:Enable()
	end

	if ACTIVE_ARGUMENT == 0 then
		AtlasLootAdvancedSearch_ArgumentContainerRemArgBtn:Disable()
	else
		AtlasLootAdvancedSearch_ArgumentContainerRemArgBtn:Enable()
	end
end

AdvSearchDefaultText = {
	["quality"] = "Select Quality",
	["equip"] = "Select Item Type",
	["type"] = "Select Option",
	["difficulty"] = "Select Difficulty"
}

function AtlasLoot_AdvancedSearchMenuClick(Object, VariableToSet, VariableValue, ChildMenu, ChildMenuRegister)
	--Setups child menus and sets search options to default
    if(ChildMenu ~= nil) then
        if(ChildMenuRegister == "Disable") then
			AdvancedSearchOptions[AtlasLoot_FrameMenuList[ChildMenu][4]] = AtlasLoot_FrameMenuList[ChildMenu][5];
            getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]):Disable();
			--Disable assigned children menus as well
			if(AtlasLoot_FrameMenuList[ChildMenu][6]) then
				getglobal(AtlasLoot_FrameMenuList[ChildMenu][6]):Disable();
			end
			if VariableValue == "reset" then
				AdvancedSearchOptions[VariableToSet] = "";
    			Object[1]:SetText(AdvSearchDefaultText[VariableToSet]);
   				Object[2]:Close();

				getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]):SetText(AtlasLoot_FrameMenuList[ChildMenu][3])
				return
			end
        else
            AtlasLoot_AdvancedSearchRegister(AtlasLoot_FrameMenuList[ChildMenu][1], getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]), AtlasLoot_AdvancedSearchMenus[ChildMenuRegister]);
			AdvancedSearchOptions[AtlasLoot_FrameMenuList[ChildMenu][4]] = AtlasLoot_FrameMenuList[ChildMenu][5];
            getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]):Enable();
            getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]):SetText(AtlasLoot_FrameMenuList[ChildMenu][3]);
			--Disable assigned children menus as well
			if(AtlasLoot_FrameMenuList[ChildMenu][6]) then
				getglobal(AtlasLoot_FrameMenuList[ChildMenu][6]):Disable();
			end
        end
    end
	if VariableValue == "reset" then
		AdvancedSearchOptions[VariableToSet] = "";
		Object[1]:SetText(AdvSearchDefaultText[VariableToSet]);
		Object[2]:Close();
		return
	end
	AdvancedSearchOptions[VariableToSet] = VariableValue;
    Object[1]:SetText(Object[3]);
    Object[2]:Close();
end

function AtlasLoot_AdvancedSearchRegister(DropDown, DropDownObject, MenuOption)
    DropDown:Register(DropDownObject,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
			if level == 1 then
				if AtlasLoot_AdvancedSearchMenus then
                    for k,v in ipairs(MenuOption) do
                        --If a link to show a submenu
                        if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                            if v[1][1] ~= "" then
                                DropDown:AddLine(
                                    'text', v[1][1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', AtlasLoot_AdvancedSearchMenuClick,
                                    'arg1', {DropDownObject, DropDown, v[1][1]},
                                    'arg2', v[1][2],
                                    'arg3', v[1][3],
                                    'arg4', v[1][4],
                                    'arg5', v[1][5],
                                    'notCheckable', true
                                )
                            end
                        else
                            local lock=0;
                            --If an entry linked to a subtable
                            for i,j in pairs(v) do
                                if lock==0 then
                                    DropDown:AddLine(
                                        'text', i,
                                        'textR', 1,
                                        'textG', 0.82,
                                        'textB', 0,
                                        'hasArrow', true,
                                        'value', j,
                                        'notCheckable', true
                                    )
                                    lock=1;
                                end
                            end
                        end
                    end
                end
                --Close button
				DropDown:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() DropDown:Close() end,
					'notCheckable', true
				)
			elseif level == 2 then
				if value then
                    for k,v in ipairs(value) do
						DropDown:AddLine(
                                        'text', v[1],
                                        'textR', 1,
                                        'textG', 0.82,
                                        'textB', 0,
                                        'func', AtlasLoot_AdvancedSearchMenuClick,
                                        'arg1', {DropDownObject, DropDown, v[1]},
                                        'arg2', v[2],
                                        'arg3', v[3],
										'arg4', v[4],
										'arg5', v[5],
                                        'notCheckable', true
                                    )
					end
				end
			end
		end,
		'dontHook', true
	)
end

function AtlasLoot_AdvancedSearchArgumentClick(Object, VariableToSet, VariableValue, IsOperator)
	if IsOperator and VariableValue == "reset" then
		AdvancedSearchOptions["arg"..VariableToSet.."op"] = "";

		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Value"):SetText("");
		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Value"):Hide();

		Object[1]:SetText("Select Option");
    	Object[2]:Close();
	elseif IsOperator then
		AdvancedSearchOptions["arg"..VariableToSet.."op"] = VariableValue;

		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Value"):Show();

		Object[1]:SetText(Object[3]);
    	Object[2]:Close();
	elseif VariableValue == "reset" then
		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Sub"):SetText("Select Option");
		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Sub"):Disable();

		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Value"):SetText("");
		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Value"):Hide();

		AdvancedSearchOptions["arg"..VariableToSet] = "";
		AdvancedSearchOptions["arg"..VariableToSet.."op"] = "";

		Object[1]:SetText("Select Option");
		Object[2]:Close();
	else
		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Sub"):SetText("Select Option");
		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Sub"):Enable();
		AdvancedSearchOptions["arg"..VariableToSet.."op"] = "";

		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Value"):SetText("");
		getglobal("AtlasLootAdvancedSearch_ArgumentContainer"..VariableToSet.."Value"):Hide();

		AdvancedSearchOptions["arg"..VariableToSet] = VariableValue;
		Object[1]:SetText(Object[3]);
		Object[2]:Close();
	end
end

function AtlasLoot_AdvancedSearchArgumentRegister(DropDown, DropDownObject, ArgumentCount, ArgumentMenu)
    DropDown:Register(DropDownObject,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
			if level == 1 then
				if AtlasLoot_AdvancedSearchArguments then
                    for k,v in ipairs(ArgumentMenu) do
                        --If a link to show a submenu
                        if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                            local checked = false;
                            if v[1][3] == "Submenu" then
                                DropDown:AddLine(
                                    'text', v[1][1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', AtlasLoot_AdvancedSearchArgumentClick,
                                    'arg1', {DropDownObject, DropDown, v[1][1]},
                                    'arg2', ArgumentCount,
                                    'arg3', v[1][2],
									'arg4', v[1][3],
                                    'notCheckable', true
                                )
                            elseif v[1][1] ~= "" then
                                DropDown:AddLine(
                                    'text', v[1][1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', AtlasLoot_AdvancedSearchArgumentClick,
                                    'arg1', {DropDownObject, DropDown, v[1][1]},
                                    'arg2', ArgumentCount,
                                    'arg3', v[1][2],
									'arg4', v[1][3],
                                    'notCheckable', true
                                )
                            end
                        else
                            local lock=0;
                            --If an entry linked to a subtable
                            for i,j in pairs(v) do
                                if lock==0 then
                                    DropDown:AddLine(
                                        'text', i,
                                        'textR', 1,
                                        'textG', 0.82,
                                        'textB', 0,
                                        'hasArrow', true,
                                        'value', j,
                                        'notCheckable', true
                                    )
                                    lock=1;
                                end
                            end
                        end
                    end
                end
                --Close button
				DropDown:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() DropDown:Close() end,
					'notCheckable', true
				)
			elseif level == 2 then
				if value then
                    for k,v in ipairs(value) do
                        if type(v) == "table" then
                            if (type(v[1]) == "string") then
                                local checked = false;
                                --If an entry to show a submenu
                                if v[4] == "Header" then
                                    DropDown:AddLine(
                                        'text', v[1],
                                        'textR', 0.2,
                                        'textG', 0.82,
                                        'textB', 0.5,
                                        'func', AtlasLoot_AdvancedSearchArgumentClick,
										'arg1', {DropDownObject, DropDown, v[1]},
										'arg2', ArgumentCount,
										'arg3', v[2],
										'arg4', v[3],
                                        'notCheckable', true
                                    )
                                elseif v[3] == "Submenu" then
                                    DropDown:AddLine(
                                    'text', v[1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', AtlasLoot_AdvancedSearchArgumentClick,
                                    'arg1', {DropDownObject, DropDown, v[1]},
                                    'arg2', ArgumentCount,
                                    'arg3', v[2],
									'arg4', v[3],
                                    'notCheckable', true
                                )
                                else
                                    DropDown:AddLine(
                                        'text', v[1],
                                        'textR', 1,
                                        'textG', 0.82,
                                        'textB', 0,
                                        'func', AtlasLoot_AdvancedSearchArgumentClick,
                                        'arg1', {DropDownObject, DropDown, v[1]},
                                        'arg2', ArgumentCount,
                                        'arg3', v[2],
										'arg4', v[3],
                                        'notCheckable', true
                                    )
                                end
                            end
                        end
                    end
                end
                DropDown:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() DropDown:Close() end,
					'notCheckable', true
				)
            end
		end,
		'dontHook', true
	)
end

function AtlasLoot:AdvancedSearch(Text)
	if not Text then return end
	Text = strtrim(Text);
	local advSearchString = Text or "";

	local function AppendSearchString(toAppend, str)
		if toAppend ~= "" then
			toAppend = toAppend.."&"..str;
			return toAppend;
		end

		return str;
	end

	local function GetTextByName(name)
		if (_G["AtlasLootAdvancedSearch_"..name]) then
			return _G["AtlasLootAdvancedSearch_"..name]:GetText()
		end

		return nil;
	end

	local function FixRangedSlot(subType)
		if (subType == "wand" or subType == "gun" or subType == "crossbow") then
			return "rangedright";
		elseif subType == "thrown" then
			return "thrown";
		end
			return "ranged";
	end

    if AdvancedSearchOptions["quality"] ~= "" then
		advSearchString = AppendSearchString(advSearchString, "quality="..AdvancedSearchOptions["quality"]);
    end

	if AdvancedSearchOptions["equip"] ~= "" then
		if AdvancedSearchOptions["equip"] == "ranged" and AdvancedSearchOptions["type"] ~= ""then
			AdvancedSearchOptions["equip"] = FixRangedSlot(AdvancedSearchOptions["type"]);
		end
		advSearchString = AppendSearchString(advSearchString, "slot="..AdvancedSearchOptions["equip"]);
    end

	if AdvancedSearchOptions["type"] ~= "" and AdvancedSearchOptions["type"] then
		advSearchString = AppendSearchString(advSearchString, "type="..AdvancedSearchOptions["type"]);
    end

	if AdvancedSearchOptions["difficulty"] ~= "" and AdvancedSearchOptions["difficulty"] ~= 2 then
		advSearchString = AppendSearchString(advSearchString, "dif="..AdvancedSearchOptions["difficulty"]);
	end

	if (GetTextByName("LevelMin") and GetTextByName("LevelMin") ~= "") then
		advSearchString = AppendSearchString(advSearchString, "minlvl>="..GetTextByName("LevelMin"));
	end

	if (GetTextByName("LevelMax") and GetTextByName("LevelMax") ~= "") then
		advSearchString = AppendSearchString(advSearchString, "minlvl<="..GetTextByName("LevelMax"));
	end

	if (GetTextByName("ILevelMin") and GetTextByName("ILevelMin") ~= "") then
		advSearchString = AppendSearchString(advSearchString, "ilvl>="..GetTextByName("ILevelMin"));
	end

	if (GetTextByName("ILevelMax") and GetTextByName("ILevelMax") ~= "") then
		advSearchString = AppendSearchString(advSearchString, "ilvl<="..GetTextByName("ILevelMax"));
	end

	for i = 1, ACTIVE_ARGUMENT, 1 do
		if AdvancedSearchOptions["arg"..i] ~= "" then
			local arg = _G["AtlasLootAdvancedSearch_ArgumentContainer"..tostring(i).."Value"]:GetText();
			if AdvancedSearchOptions["arg"..i.."op"] == "" then
				AdvancedSearchOptions["arg"..i.."op"] = ">"
				arg = "0";
			end
			advSearchString = AppendSearchString(advSearchString, AdvancedSearchOptions["arg"..i]..AdvancedSearchOptions["arg"..i.."op"]..arg);
		end
	end

	

	AtlasLoot:Search(string.lower(advSearchString));
end