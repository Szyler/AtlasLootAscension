local MAJOR, MINOR = "SettingsCreator-1.0", 14
local SettingsCreator, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not SettingsCreator then return end -- No Upgrade needed.

local checkBoxs = {}
local dropDownList = {}
local sliders = {}

--Round number
local function round(num, idp)
	local mult = 10 ^ (idp or 0)
	return math.floor(num * mult + 0.5) / mult
end

local function InitializeDropDown(self)
    local options, opTable, db = unpack(self.Menu)
	local info, otherDB
    local frame = options[opTable.Name]
    if type(opTable.Menu) == "function" then
        opTable.MenuList, otherDB = opTable.Menu()
    else
        opTable.MenuList = opTable.Menu
    end
    if not opTable.MenuList then return end
	for i, menu in pairs(opTable.MenuList) do
		info = {
			text = menu;
			func = function()
                if opTable.Func then
                    opTable.Func(menu, i)
                end
                if otherDB then
                    otherDB = menu
                else
                    db[opTable.Name] = menu
                end
                UIDropDownMenu_SetSelectedID(frame, i)
			end;
		}
        UIDropDownMenu_AddButton(info)
        if menu == (otherDB or db[opTable.Name]) then
		    UIDropDownMenu_SetSelectedID(frame, i)
        end
	end
	UIDropDownMenu_SetWidth(frame, opTable.menuWidth or 150)
end

local function showTooltip(frame, text)
    if not text then return end
    GameTooltip:SetOwner(frame, "ANCHOR_TOPLEFT", 0, 20)
    GameTooltip:SetOwner(frame, "ANCHOR_TOPLEFT", 0, 20)
    if type(text) == "table" then
        for _, text in pairs(text) do
            GameTooltip:AddLine(text)
        end
    else
        GameTooltip:AddLine(text)
    end
    GameTooltip:Show()
end

local playerName = UnitName("player")
local realmName = GetRealmName()

--[[ DB = Name of the db you want to setup
if there is a table sent called profile it will setup a profile for the logged in character/realm
]]
function SettingsCreator:SetupDB(dbName, defaultList)
    _G[dbName] = _G[dbName] or {}
    local playerKey = playerName.." - "..realmName
    local db = _G[dbName]
    for table, v in pairs(defaultList) do
        if not db[table] and db[table] ~= false then
            db[table] = v
        end
        if table == "profile" then
            db.profiles = db.profiles or {}
            if db.profiles[playerKey] then
                for tableName, value in pairs(v) do
                    if not db.profiles[playerKey][tableName] and db.profiles[playerKey][tableName] ~= false then
                        db.profiles[playerKey][tableName] = value
                    end
                end
            else
                db.profiles[playerKey] = v
            end
            db.profile = db.profiles[playerKey]
        end
    end
    return db
end

function SettingsCreator:RefreshOptions(addonName, db)
    if not addonName then return end
    for _, checkBox in pairs(checkBoxs[addonName]) do
        checkBox[1]:SetChecked(db[checkBox[2]] or false)
    end
    for _, slider in pairs(sliders[addonName]) do
        slider[1]:SetValue(db[slider[2]])
    end
    self:UpdateDropDownMenus(addonName, db)
end

function SettingsCreator:UpdateDropDownMenus(addonName, db)
    if not addonName then return end
    for _, frame in pairs(dropDownList[addonName]) do
        if frame then
            if db then frame.Menu[3] = db end
            UIDropDownMenu_Initialize(frame, InitializeDropDown)
        end
    end
end

local function CreateCheckButton(options, db, frame, addonName, setPoint, opTable)
    options[opTable.Name] = CreateFrame("CheckButton", addonName.."Options"..opTable.Name.."CheckButton", frame, "UICheckButtonTemplate")
    options[opTable.Name]:SetPoint(unpack(setPoint))
    options[opTable.Name].Lable = options[opTable.Name]:CreateFontString(nil , "BORDER", "GameFontNormal")
    options[opTable.Name].Lable:SetJustifyH("LEFT")
    options[opTable.Name].Lable:SetPoint("LEFT", 30, 0)
    options[opTable.Name].Lable:SetText(opTable.Lable)
    options[opTable.Name]:SetScript("OnClick", opTable.OnClick)
    options[opTable.Name]:SetScript("OnEnter", function()
        showTooltip(options[opTable.Name], opTable.Tooltip or opTable.Lable)
        if opTable.OnEnter then opTable.OnEnter() end
    end)
    options[opTable.Name]:SetScript("OnLeave", function()
    if opTable.OnLeave then opTable.OnLeave() end
    GameTooltip:Hide()
    end)
    options[opTable.Name]:SetScript("OnShow", function() if opTable.OnShow then opTable.OnShow(options[opTable.Name]) end end)
    options[opTable.Name]:SetChecked((db and db[opTable.Name]) or false)
    checkBoxs[addonName] = checkBoxs[addonName] or {}
    tinsert(checkBoxs[addonName], {options[opTable.Name], opTable.Name})
    return options[opTable.Name]
end

local function CreateButton(options, db, frame, addonName, setPoint, opTable)
    options[opTable.Name] = CreateFrame("Button", addonName.."Options"..opTable.Name.."Button", frame, "OptionsButtonTemplate")
    options[opTable.Name]:SetSize(unpack(opTable.Size))
    options[opTable.Name]:SetPoint(unpack(setPoint))
    options[opTable.Name]:SetText(opTable.Lable)
    options[opTable.Name]:SetScript("OnClick", opTable.OnClick)
    options[opTable.Name]:SetScript("OnEnter", function()
        showTooltip(options[opTable.Name], opTable.Tooltip or opTable.Lable)
        if opTable.OnEnter then opTable.OnEnter() end
        end)
    options[opTable.Name]:SetScript("OnLeave", function()
        if opTable.OnLeave then opTable.OnLeave() end
        GameTooltip:Hide()
    end)
    return options[opTable.Name]
end

local function CreateDropDownMenu(options, db, frame, addonName, setPoint, opTable)
    options[opTable.Name] = CreateFrame("Button", addonName.."Options"..opTable.Name.."Menu", frame, "UIDropDownMenuTemplate")
    options[opTable.Name]:SetPoint(unpack(setPoint))
    options[opTable.Name].Lable = options[opTable.Name]:CreateFontString(nil , "BORDER", "GameFontNormal")
    options[opTable.Name].Lable:SetJustifyH("LEFT")
    options[opTable.Name].Lable:SetPoint("LEFT", options[opTable.Name], 190, 0)
    options[opTable.Name].Lable:SetText(opTable.Lable)
    options[opTable.Name]:SetScript("OnClick", opTable.OnClick)
    options[opTable.Name]:SetScript("OnEnter", function()
        showTooltip(options[opTable.Name], opTable.Tooltip or opTable.Lable)
        if opTable.OnEnter then opTable.OnEnter() end
    end)
    options[opTable.Name]:SetScript("OnLeave", function()
        if opTable.OnLeave then opTable.OnLeave() end
        GameTooltip:Hide()
    end)
    options[opTable.Name].Menu = { options, opTable, db }
    options[opTable.Name]:SetScript("OnShow", function() UIDropDownMenu_Initialize(options[opTable.Name], InitializeDropDown) end )
    options[opTable.Name].updateMenu = function() UIDropDownMenu_Initialize(options[opTable.Name], InitializeDropDown) end
    dropDownList[addonName] = dropDownList[addonName] or {}
    if opTable.Menu then
        tinsert(dropDownList[addonName], options[opTable.Name])
    end
    return options[opTable.Name]
end

local function CreateSlider(options, db, frame, addonName, setPoint, opTable)
    options[opTable.Name] = CreateFrame("Slider", addonName.."Options"..opTable.Name.."Slider", frame, "OptionsSliderTemplate")
    options[opTable.Name]:SetPoint(unpack(setPoint))
    options[opTable.Name]:SetSize(unpack(opTable.Size))
    options[opTable.Name]:SetMinMaxValues(opTable.MinMax[1], opTable.MinMax[2])
    _G[options[opTable.Name]:GetName().."Text"]:SetText(opTable.Lable)
    options[opTable.Name]:SetScript("OnEnter", function()
        showTooltip(options[opTable.Name], opTable.Tooltip or opTable.Lable)
        if opTable.OnEnter then opTable.OnEnter() end
    end)
    _G[options[opTable.Name]:GetName().."Low"]:SetText(opTable.MinMax[1])
    _G[options[opTable.Name]:GetName().."High"]:SetText(opTable.MinMax[2])
    options[opTable.Name]:SetScript("OnValueChanged", function(slider)
        opTable.OnValueChanged(slider)
        options[opTable.Name].editBox:SetText(round(options[opTable.Name]:GetValue(),2))
    end)
    options[opTable.Name]:SetScript("OnShow", opTable.OnShow)
    options[opTable.Name]:SetValueStep(opTable.Step)
    options[opTable.Name].editBox = CreateFrame("EditBox", addonName.."Options"..opTable.Name.."SliderInputBox", options[opTable.Name], "InputBoxTemplate2")
    options[opTable.Name].editBox:SetSize(50, 25)
    options[opTable.Name].editBox:SetJustifyH("CENTER")
    options[opTable.Name].editBox:SetPoint("TOP", options[opTable.Name], "BOTTOM", 0, 0)
    options[opTable.Name].editBox:SetScript("OnEnterPressed", function()
        options[opTable.Name]:SetValue(round(options[opTable.Name].editBox:GetText(),2))
    end)
    sliders[addonName] = sliders[addonName] or {}
    tinsert(sliders[addonName], {options[opTable.Name], opTable.Name})
    return options[opTable.Name]
end

local function CreateInputBox(options, db, frame, addonName, setPoint, opTable)
    options[opTable.Name] = CreateFrame("EditBox", addonName.."Options"..opTable.Name.."InputBox", frame, "InputBoxTemplate2")
    options[opTable.Name]:SetPoint(unpack(setPoint))
    options[opTable.Name]:SetSize(unpack(opTable.Size))
    options[opTable.Name].Lable = options[opTable.Name]:CreateFontString(nil , "BORDER", "GameFontNormal")
    options[opTable.Name].Lable:SetJustifyH("LEFT")
    options[opTable.Name].Lable:SetPoint("BOTTOMLEFT", options[opTable.Name], "TOPLEFT", 0, 0)
    options[opTable.Name].Lable:SetText(opTable.Lable)
    options[opTable.Name]:SetScript("OnEnter", function()
        showTooltip(options[opTable.Name], opTable.Tooltip or opTable.Lable)
        if opTable.OnEnter then opTable.OnEnter() end
        end)
    options[opTable.Name]:SetScript("OnLeave", function()
        if opTable.OnLeave then opTable.OnLeave() end
        GameTooltip:Hide()
    end)
    options[opTable.Name]:SetScript("OnTextChanged", opTable.OnTextChanged)
    options[opTable.Name]:SetScript("OnEnterPressed", opTable.OnEnterPressed)
    return options[opTable.Name]
end

local function CreateScrollFrame(data, tabFrame, tabNum)
    local frameWidth = InterfaceOptionsFramePanelContainer:GetWidth()
    local frameHeight = InterfaceOptionsFramePanelContainer:GetHeight()
    tabFrame.scrollFrame = CreateFrame("ScrollFrame", data.AddonName.."OptionsFrameScrollFrame_"..tabNum, tabFrame, "UIPanelScrollFrameTemplate")
    tabFrame.frame = CreateFrame("Frame", data.AddonName.."OptionsFrame_"..tabNum, tabFrame.scrollFrame)
    tabFrame.scrollFrame:SetScrollChild(tabFrame.frame)
    tabFrame.scrollFrame:SetPoint("TOPLEFT", tabFrame, "TOPLEFT", 10, -45)
    tabFrame.scrollFrame:SetWidth(frameWidth-45)
    tabFrame.scrollFrame:SetHeight(frameHeight-65)
    tabFrame.scrollFrame:SetHorizontalScroll(-50)
    tabFrame.scrollFrame:SetVerticalScroll(50)
    tabFrame.scrollFrame:EnableMouse(true)
    tabFrame.scrollFrame:SetVerticalScroll(0)
    tabFrame.scrollFrame:SetHorizontalScroll(0)
    tabFrame.frame:SetPoint("TOPLEFT", tabFrame.scrollFrame, "TOPLEFT", 0, 0)
    tabFrame.frame:SetWidth(frameWidth-45)
    tabFrame.frame:SetHeight(frameHeight-65)
    return tabFrame.frame
end

local function CreateTab(options, tabNum, data, tab)
    if tabNum == 1 then return end
        options.frame[tab.Name] = CreateFrame("FRAME", data.AddonName.."OptionsFrame"..tabNum, UIParent, nil)
        options.frame.titleText = options.frame[tab.Name]:CreateFontString(options.frame, "OVERLAY", "GameFontNormal")
		options.frame.titleText:SetText(tab.TitleText)
		options.frame.titleText:SetPoint("TOPLEFT", 30, -15)
		options.frame[tab.Name].name = tab.Name
		options.frame[tab.Name].parent = data.AddonName
		InterfaceOptions_AddCategory(options.frame[tab.Name])
        return options.frame[tab.Name]
end

function SettingsCreator:CreateOptionsPages(data, db)
    if not data and not db then return end
    if InterfaceOptionsFrame:GetWidth() < 850 then InterfaceOptionsFrame:SetWidth(850) end
	local options = { frame = {} }
		options.frame.panel = CreateFrame("FRAME", data.AddonName.."OptionsFrame", UIParent, nil)
    	options.frame.panel.Title = options.frame.panel:CreateFontString(options.frame, "OVERLAY", "GameFontNormal")
		options.frame.panel.Title:SetText(data.TitleText)
		options.frame.panel.Title:SetPoint("TOPLEFT", 35, -15)
        options.frame.panel.Title:SetTextHeight(15)
        local discordLink = GetAddOnMetadata(data.AddonName, "X-Discord")
        if discordLink then
            options.frame.panel.discordLink = CreateFrame("Button", "$parentDiscordLink", options.frame.panel)
            options.frame.panel.discordLink:SetPoint("LEFT", options.frame.panel.Title, "RIGHT", 5, 0)
            options.frame.panel.discordLink.Lable = options.frame.panel.discordLink:CreateFontString(nil , "BORDER", "GameFontNormal")
            options.frame.panel.discordLink.Lable:SetJustifyH("LEFT")
            options.frame.panel.discordLink.Lable:SetPoint("LEFT", 0, 0)
            options.frame.panel.discordLink.Lable:SetText("|cffFFFFFF(Discord Link)")
            options.frame.panel.discordLink:SetScript("OnEnter", function(button) showTooltip(button, {discordLink,"Click to copy to clipboard"}) end)
            options.frame.panel.discordLink:SetScript("OnLeave", function(button) GameTooltip:Hide() end)
            options.frame.panel.discordLink:SetScript("OnClick", function()
                Internal_CopyToClipboard(discordLink)
                DEFAULT_CHAT_FRAME:AddMessage("Discord link copyed to clipboard")
            end)
	        options.frame.panel.discordLink:SetSize(options.frame.panel.discordLink.Lable:GetStringWidth(), options.frame.panel.discordLink.Lable:GetStringHeight())
        end
		options.frame.panel.name = data.AddonName
		InterfaceOptions_AddCategory(options.frame.panel)
        local tabFrame = options.frame.panel
        for tabNum, tab in ipairs(data) do
            tabFrame = CreateTab(options, tabNum, data, tab) or tabFrame
            local frame = CreateScrollFrame(data, tabFrame, tabNum)
            local lastFrame, lastFrameType
            for coloum, side in pairs(tab) do
                local point = -10
                if type(side) == "table" then
                    local setPoint
                    for _, option in pairs(side) do
                        if option.Type == "CheckButton" then
                            if option.Position then
                                setPoint = (option.Position == "Left") and {"RIGHT", lastFrame, "LEFT", -2, 0} or (option.Position == "Right") and {"LEFT", lastFrame, "RIGHT", 2, 0}
                            else
                                point = point -30
                                setPoint = (coloum == "Left") and {"TOPLEFT", 30, point} or (coloum == "Right") and {"TOPLEFT", 350, point}
                            end
                            lastFrame = CreateCheckButton(options, db, frame, data.AddonName, setPoint, option)
                        elseif option.Type == "Button" then
                            if option.Position then
                                setPoint = (option.Position == "Left") and {"RIGHT", lastFrame, "LEFT", -2, 0} or (option.Position == "Right") and {"LEFT", lastFrame, "RIGHT", 2, 0}
                            else
                                point = point -35
                                setPoint = (coloum == "Left") and {"TOPLEFT", 30, point} or (coloum == "Right") and {"TOPLEFT", 355, point}
                            end
                            lastFrame = CreateButton(options, db, frame, data.AddonName, setPoint, option )
                        elseif option.Type == "Menu" then
                            if option.Position then
                                setPoint = (option.Position == "Left") and {"RIGHT", lastFrame, "LEFT", -2, 0} or (option.Position == "Right") and {"LEFT", lastFrame, "RIGHT", 2, 0}
                            elseif lastFrameType == "Slider" then
                                point = point -50
                                setPoint = (coloum == "Left") and {"TOPLEFT", 20, point} or (coloum == "Right") and {"TOPLEFT", 337, point}
                            else
                                point = point -35
                                setPoint = (coloum == "Left") and {"TOPLEFT", 20, point} or (coloum == "Right") and {"TOPLEFT", 337, point}
                            end
                            lastFrame = CreateDropDownMenu(options, db, frame, data.AddonName, setPoint, option)
                        elseif option.Type == "Slider" then
                            if option.Position then
                                setPoint = (option.Position == "Left") and {"RIGHT", lastFrame, "LEFT", -2, 0} or (option.Position == "Right") and {"LEFT", lastFrame, "RIGHT", 2, 0}
                            else
                                point = point -60
                                setPoint = (coloum == "Left") and {"TOPLEFT", 35, point} or (coloum == "Right") and {"TOPLEFT", 355, point}
                                lastFrame = CreateSlider(options, db, frame, data.AddonName, setPoint, option )
                            end
                            lastFrameType = "Slider"
                        elseif option.Type == "EditBox" then
                            if option.Position then
                                setPoint = (option.Position == "Left") and {"RIGHT", lastFrame, "LEFT", -2, 0} or (option.Position == "Right") and {"LEFT", lastFrame, "RIGHT", 2, 0}
                            else
                                point = point -35
                                setPoint = (coloum == "Left") and {"TOPLEFT", 30, point} or (coloum == "Right") and {"TOPLEFT", 355, point}
                            end
                            lastFrame = CreateInputBox(options, db, frame, data.AddonName, setPoint, option )
                            lastFrameType = "InputBox"
                        end
                    end
                end
            end
        end

    if data.About and LibStub:GetLibrary("LibAboutPanel", true) then
        LibStub("LibAboutPanel").new(data.AddonName, data.AddonName)
    end

    return options
end

-- ---------------------------------------------------------------------
-- Embed handling

local mixins = {
	"SetupDB",
	"CreateOptionsPages",
    "UpdateDropDownMenus",
    "RefreshOptions",
}

SettingsCreator.embeds = SettingsCreator.embeds or {}

function SettingsCreator:Embed(target)
    self.embeds[target] = true
	for _, v in pairs(mixins) do
		target[v] = self[v]
	end
	return target
end

-- Update embeds
for addon, _ in pairs(SettingsCreator.embeds) do
	SettingsCreator:Embed(addon)
end