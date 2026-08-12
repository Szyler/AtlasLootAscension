local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local MapUtil = {}
AtlasLoot.MapUtil = MapUtil

local DefaultPin = "questlog-questtypeicon-daily"
-- Map Functions
local playerFaction = UnitFactionGroup("player")
local lastMap
local totalPins = 0

-- Creates the map pins 
local function setMapPins(list)
    _G["AtlasLoot_PlayerMapPin"]:Hide()
    -- Hide all pins before reshowing so any extras arnt showing
    if totalPins then
        for i = 1, totalPins do
            _G["AtlasLoot_MapPin"..i]:Hide()
        end
    end
    -- Creates buttons on the map for pins if a button dosnt already exist
    -- If a button exists reuse it
    for i,map in ipairs(list) do
        --create pin buttons
        if not _G["AtlasLoot_MapPin"..i] then
            -- Map Pins
            local mapPin = CreateFrame("Button","AtlasLoot_MapPin"..i, AtlasLoot.ui.tabs.Map)
            mapPin:SetSize(25,25)
            mapPin:SetFrameStrata("HIGH")
            mapPin.text = mapPin:CreateFontString(nil, "OVERLAY","GameFontNormal")
            mapPin.text:SetPoint("LEFT",mapPin, 30, 0)
            mapPin.text:SetJustifyH("LEFT")
            mapPin.text:SetFont("GameFontNormal", 28)
            mapPin.text:SetSize(150,12)
            mapPin.tex = mapPin:CreateTexture(nil, "ARTWORK")
            mapPin.tex:SetPoint("CENTER")
            totalPins = totalPins + 1
        end
        -- converts a standard coordinate x,y to stardard anchor points
        local x = ((AtlasLoot.ui.tabs.Map:GetWidth()/100) * map[2][1]) - (_G["AtlasLoot_MapPin"..i]:GetWidth()/2)
        local y = (-(AtlasLoot.ui.tabs.Map:GetHeight()/100) * map[2][2]) + (_G["AtlasLoot_MapPin"..i]:GetHeight()/2)
        _G["AtlasLoot_MapPin"..i]:SetScript("OnEnter", function(btn)
            AtlasLoot.showCords = true
            GameTooltip:SetOwner(btn, "ANCHOR_TOPLEFT")
            GameTooltip:AddLine(AtlasLoot.Colors.WHITE..map[1])
            if map[4] and list.groups[map[4]] then
                for _,v in ipairs(list.groups[map[4]]) do
                    if v ~= map[1] then
                        GameTooltip:AddLine(AtlasLoot.Colors.WHITE..v)
                    end
                end
            end
            GameTooltip:AddLine("("..map[2][1]..", "..map[2][2]..")")
            GameTooltip:Show()
        end)
        _G["AtlasLoot_MapPin"..i]:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
        if map[3] then
            local tex = AtlasUtil:GetAtlasInfo(map[3])
            _G["AtlasLoot_MapPin"..i].tex:SetTexture(tex.filename)
            _G["AtlasLoot_MapPin"..i].tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
            _G["AtlasLoot_MapPin"..i].tex:SetSize(25,25)
        else
            local tex = AtlasUtil:GetAtlasInfo(DefaultPin)
            _G["AtlasLoot_MapPin"..i].tex:SetTexture(tex.filename)
            _G["AtlasLoot_MapPin"..i].tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
            _G["AtlasLoot_MapPin"..i].tex:SetSize(25,25)
        end
        _G["AtlasLoot_MapPin"..i].text:SetText(AtlasLoot.Colors.CYAN..map[1])
        _G["AtlasLoot_MapPin"..i]:ClearAllPoints()
        _G["AtlasLoot_MapPin"..i]:SetPoint("TOPLEFT",AtlasLoot.ui.tabs.Map,x ,y)
        _G["AtlasLoot_MapPin"..i]:Show()
    end
end

function MapUtil:OnEnter()
    local x, y = MapUtil:GetCursorCords()
    if AtlasLoot.showCords then
        AtlasLoot.ui.tabs.Map.cursorCords:SetText(AtlasLoot.Colors.WHITE.."Cursor: "..x.." , "..y)
    end
end

-- Track the coordinates off the mouse while it is on the map frame
function MapUtil:GetCursorCords()
    local scale,x, y = AtlasLoot.ui.tabs.Map:GetEffectiveScale(), GetCursorPosition()
    local width, height = AtlasLoot.ui.tabs.Map:GetWidth()/100, AtlasLoot.ui.tabs.Map:GetHeight()/100
    x, y = math.ceil(((x/scale) - AtlasLoot.ui.tabs.Map:GetLeft())/width), math.ceil((((y/scale) - AtlasLoot.ui.tabs.Map:GetTop())/height) * -1)
    return x, y
end

local function setPlayerPin(firstSet)
    if AtlasLoot.ui.tabs.Map:IsVisible() and AtlasLoot.data.map[MapUtil.selectedMap].ZoneName[1] == GetRealZoneText() and MapUtil.mapNum == GetCurrentMapDungeonLevel() then
        _G["AtlasLoot_PlayerMapPin"]:Show()
    else
        return
    end
    if GetUnitSpeed("player") > 0 or firstSet then
        local x, y = GetPlayerMapPosition("player")
        x = ((AtlasLoot.ui.tabs.Map:GetWidth()/100) * (x * 100)) - (_G["AtlasLoot_PlayerMapPin"]:GetWidth()/2)
        y = (-(AtlasLoot.ui.tabs.Map:GetHeight()/100) * (y * 100)) + (_G["AtlasLoot_PlayerMapPin"]:GetHeight()/2)
        _G["AtlasLoot_PlayerMapPin"]:ClearAllPoints()
        _G["AtlasLoot_PlayerMapPin"]:SetPoint("TOPLEFT",AtlasLoot.ui.tabs.Map, x, y )
        _G["AtlasLoot_PlayerMapPin"].texture:SetRotation(GetPlayerFacing())
    end
    AtlasLoot.playerPinTimer = AtlasLoot:ScheduleTimer("PlayerPin", .1)
end

local function setNavButtons(mapID, mapNum)
    if not AtlasLoot.ui.tabs.Map:IsVisible() then return end
    --Hide navigation buttons by default, only show what we need
    AtlasLoot:ToggleNavigationButtonsVisibility()

        if mapNum ~= #AtlasLoot.data.map[mapID] then
            	--Set the parent frame and anchor points
            local nextSet = {AtlasLoot.ui.tabs.Map, {"BOTTOMRIGHT", AtlasLoot.ui.tabs.Map, "BOTTOMRIGHT",-10,10}}
            AtlasLoot:SetNavigationButtonsPoints(nextSet)
            AtlasLoot.ui.nextbutton:Show()
            AtlasLoot.ui.nextbutton.mapNum = mapNum + 1
            AtlasLoot.ui.nextbutton.mapID = mapID
        end
        if mapNum ~= 1 then
            local prevSet = {AtlasLoot.ui.tabs.Map, {"BOTTOMLEFT", AtlasLoot.ui.tabs.Map, "BOTTOMLEFT",10,10}}
            AtlasLoot:SetNavigationButtonsPoints(nil, prevSet)
            AtlasLoot.ui.prevbutton:Show()
            AtlasLoot.ui.prevbutton.mapNum = mapNum - 1
            AtlasLoot.ui.prevbutton.mapID = mapID
        end
end

--called everytime you open a map hiding the loot item buttons 
function MapUtil:OnShow(mapID, mapNum, refresh)
    if MapUtil.selectedMap then
        AtlasLoot.itemframe:Hide()
        AtlasLoot.ui.tabs.Search:Hide()
        AtlasLoot.ui.tabs.Loot.TableScrollFrame:Show()
        -- Hide the Filter Check-Box
	    AtlasLoot.ui.filterButton:Hide()
        AtlasLoot.ui.tabs.Loot:Hide()

        AtlasLoot.ui.tabs.Map:Show()
        AtlasLoot.ui.difficultyScrollFrame.Lable:Show()
        AtlasLoot:ScrollFrameUpdate(true)
        AtlasLoot.ui.difficultyScrollFrame.scrollSlider:Hide()

        SetMapToCurrentZone()
        if mapNum and mapID then
            MapUtil.selectedMap = mapID
        elseif AtlasLoot.data.map[MapUtil.selectedMap].ZoneName[1] == GetRealZoneText() then
            if GetCurrentMapDungeonLevel() == 0 then
                mapNum = 1
            else
                mapNum = GetCurrentMapDungeonLevel()
            end
        elseif lastMap == MapUtil.selectedMap then
            mapNum = MapUtil.mapNum
        end
        lastMap = MapUtil.selectedMap
        self:MapSelect(MapUtil.selectedMap, mapNum)
    end
end

--called to change the current displayed map
function MapUtil:MapSelect(mapID, mapNum)
    local map = AtlasLoot.data.map[mapID]
    if map.MapName then
        for i = 1, 12 do
            local texture = _G["AtlasLoot_MapDetailTile"..i]:SetTexture("Interface\\Worldmap\\"..map.MapName.."\\"..map.MapName..MapUtil.mapNum.."_"..i)
            if not texture then
                _G["AtlasLoot_MapDetailTile"..i]:SetTexture("Interface\\Worldmap\\"..map.MapName.."\\"..map.MapName..i)
            end
        end
    end
    local pinsList = {groups = {}}
    local group = 0
    for _, v in ipairs (map[mapNum]) do
        if v.cords then
            group = group + 1
            tinsert(pinsList,{v[1],v.cords,v.pinType, group})
        end
        if group ~= 0 then
            if not pinsList.groups[group] then pinsList.groups[group] = {} end
            tinsert(pinsList.groups[group], v[1])
        end
    end
    MapUtil.mapNum = mapNum
    MapUtil.selectedMap = mapID
    AtlasLoot:SubTableScrollFrameUpdate(mapID, "AtlasLoot_MapData", mapNum)
    setNavButtons(mapID, mapNum)
    setMapPins(pinsList)
    AtlasLoot:CancelTimer(AtlasLoot.playerPinTimer)
    setPlayerPin(true)

    local text = map.ZoneName[1]..AtlasLoot.Colors.WHITE.." ["..map.Acronym.."]\n"..
    AtlasLoot.Colors.GOLD .. "Location: ".. AtlasLoot.Colors.WHITE..map.Location[1].."\n"..
    AtlasLoot.Colors.GOLD .. "Level Range: ".. AtlasLoot.Colors.WHITE..map.LevelRange.."\n"..
    AtlasLoot.Colors.GOLD .. "Minimum Level: ".. AtlasLoot.Colors.WHITE..map.MinLevel.."\n"..
    AtlasLoot.Colors.GOLD .. "Player Limit: ".. AtlasLoot.Colors.WHITE..map.PlayerLimit

    if map.Reputation and type(map.Reputation) == "table" then
        text = text .. "\n" .. AtlasLoot.Colors.GOLD .. "Reputation" .. ": ".. AtlasLoot.Colors.WHITE .. map.Reputation[playerFaction]
    elseif map.Reputation then
        text = text .. "\n" .. AtlasLoot.Colors.GOLD .. "Reputation" .. ": ".. AtlasLoot.Colors.WHITE .. map.Reputation
    end
    AtlasLoot.ui.difficultyScrollFrame.Lable:SetText(text)
end

--drop down map menu
local function mapMenuOpen(frame)
    local mapID = MapUtil.selectedMap
    local map = AtlasLoot.data.map[mapID]
    local zones = {[1] = {}}
        for i,v in ipairs(map) do
            local text
            if v[1].Zone then
                text = map[i][2][1]
            else
                text = v[1][1] or ""
            end
            tinsert(zones[1], {text = AtlasLoot.Colors.WHITE..text, func = function() self:OnShow(mapID, i, true) end})
        end
    local menuList = { 
    {
        {text = AtlasLoot.Colors.ORANGE.."Open AscensionDB To Zone Map", divider = true, func = function() AtlasLoot:OpenDBURL(AtlasLoot.data.map[MapUtil.selectedMap].ZoneName[2] , "zone") end},
    }}

    AtlasLoot:OpenDewdropMenu(frame, zones, menuList)
end

function MapUtil:ShowMapTab(button, buttonClick)
    if buttonClick == "RightButton" then
        mapMenuOpen(button)
    else
        AtlasLoot.ui.tabs.currentTab = "Map"
        self:OnShow(MapUtil.selectedMap, MapUtil.mapNum or 1)
    end
end

function MapUtil:GetMapInfo(mapID)
    return AtlasLoot.data.map[mapID]
end