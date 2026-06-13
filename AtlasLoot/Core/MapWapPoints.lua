local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
Enum.POIType.AtlasLootPins = "AtlasLootPins"
WORLD_MAP_FILTER_ATLASLOOTPINS = "AtlasLoot Pins"
local scale = 0.8
local flags = EnumUtil.CombineMasks(Enum.POIFlags.HasTooltip)
local playerFaction = UnitFactionGroup("player")
local pois = {}
--Adds map pins to Ascension POI system
function AtlasLoot:AddWayPoint(areaName, x, y, vendorName)

    --Adds a waypoint to client poi system
	local zoneID = GetAreaIdByName(areaName)
    local mapID = C_WorldMap.GetMapIDByZoneID(zoneID)
	local z = self:GetAreaID(zoneID)
	local bottom, right  = C_WorldMap.GetWorldPosition(z, 1, 1)
	local top, left = C_WorldMap.GetWorldPosition(z, 0, 0)
	local worldX = (left + (tonumber(x) / 100 * (right-left)))
	local worldY = (top + (tonumber(y) / 100 * (bottom-top)))

    pois["AtlasLootMapPin_"..areaName.."_"..vendorName] = true
	DB_MapPOI.CreatePOI("AtlasLootMapPin_"..areaName.."_"..vendorName,
		"Recipe Vendor",
		vendorName,
		worldY,
		worldX,
		0,
		Enum.POIType.AtlasLootPins,
		flags,
		"quest-wrapper-available",
		scale,
		nil,
        mapID
	)
end

function AtlasLoot_Remove_Pin(id)
    if IsShiftKeyDown() then
        DB_MapPOI.RemovePOIByID(id)
    end
end

local worldMapAreaData
-- Loads the tradeskill data .json
function AtlasLoot:GetAreaID(id)
	if not worldMapAreaData then
        worldMapAreaData = {}
		local content = C_ContentLoader:Load("WorldMapAreaData")

		content:SetParser(function(_, data)
            worldMapAreaData[data.AreaID] = data.ID
		end)

		content:Parse()
    end
    return worldMapAreaData[id]
end

--[[ function DB_MapPOI.CreatePOI(id, name, description, x, y, z, type, flags, textureID, scale, onClickFunction, mapID, events, extra)
    local poi = {}
    poi.Name = name
    poi.Description = description
    poi.X = x
    poi.Y = y
    poi.Z = z
    poi.Type = type or Enum.POIType.None
    poi.Flags = flags
    poi.TextureID = tonumber(textureID) or -1
    poi.TextureAtlas = textureID
    poi.Scale = scale
    poi.OnClickFunction = onClickFunction
    poi.MapID = mapID
    poi.ID = id
    poi.Events = events or {}
    poi.Extra = extra
    poi.TimeSinceCreated = TimeSince:Now()
    
    DB_MapPOI.RemovePOIByID(id)
    
    poiByID[id] = poi
    if not poiByMapID[mapID] then
        poiByMapID[mapID] = {}
    end
    table.insert(poiByMapID[mapID], poi)
end ]]