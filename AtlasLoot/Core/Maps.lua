local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local DefaultPin = "questlog-questtypeicon-daily"
-- Map Functions
local playerFaction = UnitFactionGroup("player")
local lastMap
local totalPins = 0

-- Creates the map pins 
function AtlasLoot:CreateMapPins(list)
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
            local mapPin = CreateFrame("Button","AtlasLoot_MapPin"..i, self.ui.tabs.Map)
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
        local x = ((self.ui.tabs.Map:GetWidth()/100) * map[2][1]) - (_G["AtlasLoot_MapPin"..i]:GetWidth()/2)
        local y = (-(self.ui.tabs.Map:GetHeight()/100) * map[2][2]) + (_G["AtlasLoot_MapPin"..i]:GetHeight()/2)
        _G["AtlasLoot_MapPin"..i]:SetScript("OnEnter", function(btn)
            self.showCords = true
            GameTooltip:SetOwner(btn, "ANCHOR_TOPLEFT")
            GameTooltip:AddLine(self.Colors.WHITE..map[1])
            if map[4] and list.groups[map[4]] then
                for _,v in ipairs(list.groups[map[4]]) do
                    if v ~= map[1] then
                        GameTooltip:AddLine(self.Colors.WHITE..v)
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
        _G["AtlasLoot_MapPin"..i].text:SetText(self.Colors.CYAN..map[1])
        _G["AtlasLoot_MapPin"..i]:ClearAllPoints()
        _G["AtlasLoot_MapPin"..i]:SetPoint("TOPLEFT",self.ui.tabs.Map,x ,y)
        _G["AtlasLoot_MapPin"..i]:Show()
    end
end

function AtlasLoot:MapOnEnter()
    local x, y = self:GetCursorCords()
    if self.showCords then
        self.ui.tabs.Map.cursorCords:SetText(self.Colors.WHITE.."Cursor: "..x.." , "..y)
    end
end

-- Track the coordinates off the mouse while it is on the map frame
function AtlasLoot:GetCursorCords()
    local scale,x, y = self.ui.tabs.Map:GetEffectiveScale(), GetCursorPosition()
    local width, height = self.ui.tabs.Map:GetWidth()/100, self.ui.tabs.Map:GetHeight()/100
    x, y = math.ceil(((x/scale) - self.ui.tabs.Map:GetLeft())/width), math.ceil((((y/scale) - self.ui.tabs.Map:GetTop())/height) * -1)
    return x, y
end

function AtlasLoot:PlayerPin(firstSet)
    if self.ui.tabs.Map:IsVisible() and AtlasLoot_MapData[self.CurrentMap].ZoneName[1] == GetRealZoneText() and self.MapNum == GetCurrentMapDungeonLevel() then
        _G["AtlasLoot_PlayerMapPin"]:Show()
    else
        return
    end
    if GetUnitSpeed("player") > 0 or firstSet then
        local x, y = GetPlayerMapPosition("player")
        x = ((self.ui.tabs.Map:GetWidth()/100) * (x * 100)) - (_G["AtlasLoot_PlayerMapPin"]:GetWidth()/2)
        y = (-(self.ui.tabs.Map:GetHeight()/100) * (y * 100)) + (_G["AtlasLoot_PlayerMapPin"]:GetHeight()/2)
        _G["AtlasLoot_PlayerMapPin"]:ClearAllPoints()
        _G["AtlasLoot_PlayerMapPin"]:SetPoint("TOPLEFT",self.ui.tabs.Map, x, y )
        _G["AtlasLoot_PlayerMapPin"].texture:SetRotation(GetPlayerFacing())
    end
    self.playerPinTimer = self:ScheduleTimer("PlayerPin", .1)
end

function AtlasLoot:SetNavButtons(mapID, mapNum)
    if not self.ui.tabs.Map:IsVisible() then return end
    --Hide navigation buttons by default, only show what we need
    self:ToggleNavigationButtonsVisibility()

        if mapNum ~= #_G["AtlasLoot_MapData"][mapID] then
            self.ui.nextbutton:SetParent(self.ui.tabs.Map)
            self.ui.nextbutton:Show()
            self.ui.nextbutton.mapNum = mapNum + 1
            self.ui.nextbutton.mapID = mapID
            self.ui.nextbutton:ClearAllPoints()
            self.ui.nextbutton:SetPoint("BOTTOMRIGHT", self.ui.tabs.Map, "BOTTOMRIGHT",-30,5)
        end
        if mapNum ~= 1 then
            self.ui.prevbutton:SetParent(self.ui.tabs.Map)
            self.ui.prevbutton:Show()
            self.ui.prevbutton.mapNum = mapNum - 1
            self.ui.prevbutton.mapID = mapID
            self.ui.prevbutton:ClearAllPoints()
            self.ui.prevbutton:SetPoint("BOTTOMLEFT", self.ui.tabs.Map, "BOTTOMLEFT",5,5)
        end
end

--called everytime you open a map hiding the loot item buttons 
function AtlasLoot:MapOnShow(mapID, mapNum, refresh)
    if self.CurrentMap then
        self.itemframe:Hide()
        -- Hide the Filter Check-Box
	    self.ui.filterButton:Hide()
        self.ui.tabs.Loot:Hide()

        self.ui.tabs.Map:Show()
        self.ui.difficultyScrollFrame.Lable:Show()
        self:ScrollFrameUpdate(true)
        self.ui.difficultyScrollFrame.scrollSlider:Hide()

        SetMapToCurrentZone()
        if mapNum and mapID then
            self.CurrentMap = mapID
        elseif AtlasLoot_MapData[self.CurrentMap].ZoneName[1] == GetRealZoneText() then
            if GetCurrentMapDungeonLevel() == 0 then
                mapNum = 1
            else
                mapNum = GetCurrentMapDungeonLevel()
            end
        elseif lastMap == self.CurrentMap then
            mapNum = self.MapNum
        end
        lastMap = self.CurrentMap
        self:MapSelect(self.CurrentMap, mapNum)
    end
end

--called to change the current displayed map
function AtlasLoot:MapSelect(mapID, mapNum)
    local map = AtlasLoot_MapData[mapID]
    if map.MapName then
        for i = 1, 12 do
            local texture = _G["AtlasLoot_MapDetailTile"..i]:SetTexture("Interface\\Worldmap\\"..map.MapName.."\\"..map.MapName..mapNum.."_"..i)
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
    self.MapNum = mapNum
    self.CurrentMap = mapID
    self:SubTableScrollFrameUpdate(mapID, "AtlasLoot_MapData", mapNum)
    self:SetNavButtons(mapID, mapNum)
    self:CreateMapPins(pinsList)
    self:CancelTimer(self.playerPinTimer)
    self:PlayerPin(true)

    local text = map.ZoneName[1]..self.Colors.WHITE.." ["..map.Acronym.."]\n"..
    self.Colors.GOLD .. "Location: ".. self.Colors.WHITE..map.Location[1].."\n"..
    self.Colors.GOLD .. "Level Range: ".. self.Colors.WHITE..map.LevelRange.."\n"..
    self.Colors.GOLD .. "Minimum Level: ".. self.Colors.WHITE..map.MinLevel.."\n"..
    self.Colors.GOLD .. "Player Limit: ".. self.Colors.WHITE..map.PlayerLimit

    if map.Reputation and type(map.Reputation) == "table" then
        text = text .. "\n" .. self.Colors.GOLD .. AL["Reputation"] .. ": ".. self.Colors.WHITE .. map.Reputation[playerFaction]
    elseif map.Reputation then
        text = text .. "\n" .. self.Colors.GOLD .. AL["Reputation"] .. ": ".. self.Colors.WHITE .. map.Reputation
    end
    self.ui.difficultyScrollFrame.Lable:SetText(text)
end

--drop down map menu
function AtlasLoot:MapMenuOpen(frame)
    local mapID = self.CurrentMap
    local map = AtlasLoot_MapData[mapID]
    local zones = {[1] = {}}
        for i,v in ipairs(map) do
            local text
            if v[1].Zone then
                text = map[i][2][1]
            else
                text = v[1][1] or ""
            end
            tinsert(zones[1], {text = self.Colors.WHITE..text, func = function() self:MapOnShow(mapID, i, true) end})
        end
    local menuList = { 
    {
        {text = self.Colors.ORANGE..AL["Open AscensionDB To Zone Map"], divider = true, func = function() self:OpenDBURL(AtlasLoot_MapData[self.CurrentMap].ZoneName[2] , "zone") end},
    }}

    self:OpenDewdropMenu(frame, zones, menuList)
end

function AtlasLoot:MapButtonClick(button, buttonClick)
    if buttonClick == "LeftButton" then
        self:MapOnShow(self.CurrentMap, self.MapNum or 1)
    else
        self:MapMenuOpen(button)
    end
end