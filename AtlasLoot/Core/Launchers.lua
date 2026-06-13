local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local icon = LibStub('LibDBIcon-1.0')
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

function AtlasLoot:MinimapIconSetup()
	if not self.selectedProfile.minimap then
		self.selectedProfile.minimap = {hide = false}
	end

	if icon then
		icon:Register('AtlasLoot', minimap, self.selectedProfile.minimap)
	end
end

-- show/hide minimap icon
function AtlasLoot:ToggleMinimap()
    local hide = not self.selectedProfile.minimap.hide
    self.selectedProfile.minimap.hide = hide
    if hide then
      icon:Hide("AtlasLoot")
    else
      icon:Show("AtlasLoot")
    end
end