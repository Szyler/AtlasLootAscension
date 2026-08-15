local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local icon = LibStub('LibDBIcon-1.0')
local Minimap = {}
AtlasLoot.Minimap = Minimap
local minimap = LibStub:GetLibrary('LibDataBroker-1.1'):NewDataObject("AtlasLoot", {
    type = 'data source',
    text = "AtlasLoot",
    icon = "Interface\\Icons\\INV_Box_01",
  })

function minimap.OnClick(frame, button)
    GameTooltip:Hide()
	if IsShiftKeyDown() then
        AtlasLoot:OptionsToggle();
    else
        if AtlasLoot.ui:IsVisible() then
            AtlasLoot.ui:Hide();
        else
            AtlasLoot.ui:Show();
        end
    end
end

function minimap.OnLeave()
    GameTooltip:Hide()
end

function minimap.OnEnter(frame)
    GameTooltip:SetOwner(frame, 'ANCHOR_NONE')
    GameTooltip:SetPoint(AtlasLoot:GetTipAnchor(frame))
    GameTooltip:ClearLines()
    GameTooltip:AddLine("AtlasLoot")
    GameTooltip:AddLine("|cff1eff00Left-Click|r Browse Loot Tables")
    GameTooltip:AddLine("|cffff0000Shift-Click|r View Options")
    GameTooltip:AddLine("|cffccccccLeft-Click + Drag|r Move Minimap Button")
    GameTooltip:Show()
end

function Minimap:IconSetup()
	if not AtlasLoot.selectedProfile.minimap then
		AtlasLoot.selectedProfile.minimap = false
	end

	if icon then
		icon:Register('AtlasLoot', minimap, {hide = AtlasLoot.selectedProfile.minimap})
	end
end

-- show/hide minimap icon
function Minimap:Toggle()
    AtlasLoot.selectedProfile.minimap = not AtlasLoot.selectedProfile.minimap
    if AtlasLoot.selectedProfile.minimap then
        icon:Hide("AtlasLoot")
    else
        icon:Show("AtlasLoot")
    end
end