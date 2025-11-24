local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

--------------------------------- DewDrop Dropdownmenu ---------------------------------
-- Used to create a dewdrop menus from tables
function AtlasLoot:OpenDewdropMenu(frame, menuList, ...)
	if self.Dewdrop:IsOpen(frame) then self.Dewdrop:Close() return end
	local textSize = AtlasLoot.selectedProfile.txtSize or 12
	local menuTables = {...}
	if #menuTables > 0 then
		-- if more then 1 table is sent combine them into 1 table
		for _, v in pairs(menuTables) do
			for level, list in pairs(v) do
				for _, entry in pairs(list) do
					menuList[level] = menuList[level] or {}
						table.insert(menuList[level], entry)
				end
			end
		end
	end

	local function addDiviver(maxLenght)
		local text = self.Colors.WHITE.."----------------------------------------------------------------------------------------------------"
		self.Dewdrop:AddLine(
			"text" , text:sub(1, maxLenght),
			"textHeight", textSize,
			"textWidth", textSize,
			"isTitle", true,
			"notCheckable", true
		)
	end
	self.Dewdrop:Open(frame,
		"point", function(parent)
			local point1, _, point2 = self:GetTipAnchor(frame)
    		return point1, point2
		end,
		"children", function(level, value)
			local textLength = menuList.dividerLength or 35
			for i, menu in pairs(menuList[level]) do
				if menu.showOnCondition == nil or menu.showOnCondition == true then
					if menu.show == nil or menu.show == value or menu.show == true then
						if menu.divider then
							addDiviver(textLength)
						end
						local checked = menu.checked
						if menu.checked and type(menu.checked) == "table" then
							checked = menu.checked[1][menu.checked[2]]
						end
						local text = menu.isTitle and self.Colors.YELLOW..menu.text or menu.text
						self.Dewdrop:AddLine(
							"text", text,
							"isTitle", menu.isTitle,
							"value", menu.value,
							"hasArrow", menu.hasArrow,
							"closeWhenClicked", not menu.dontCloseWhenClicked,
							"textHeight", menu.textHeight or textSize,
							"textWidth", menu.textWidth or textSize,
							"checked", checked,
							"notCheckable", (checked == nil or not menu.isRadio),
							"tooltip", menu.tooltip or menu.text,
							"secure", menu.secure,
							"icon", menu.icon,
							"isRadio", menu.isRadio,
							"func", menu.func
						)
					end
				end
				-- create close button
				if i == #menuList[level] then
					addDiviver(textLength)
					self.Dewdrop:AddLine(
						"text", self.Colors.CYAN..AL["Close Menu"],
						"textHeight", textSize,
						"textWidth", textSize,
						"closeWhenClicked", true,
						"notCheckable", true
					)
				end
			end
		end
	)
end

-------------------------------------------------------------------------------

-- return a copy of the table table
function AtlasLoot:CloneTable(table)
	if type(table) ~= "table" then return end
	local new = {}	-- create a new table
	for i, v in pairs(table) do
		if type(v) == "table" then
			v = self:CloneTable(v)
		end
		new[i] = v
	end
	return new
end

--drop down map menu
function AtlasLoot:OpenDB(frame, type, text)
    local menuList = { [1] = {
        {text = self.Colors.ORANGE..AL["Open AscensionDB To NPC"], func = function() self:OpenDBURL(text , type) end},
		}
	}
    self:OpenDewdropMenu(frame, menuList)
end

local itemEquipLocConversion = {
	"INVTYPE_HEAD","INVTYPE_NECK","INVTYPE_SHOULDER","INVTYPE_BODY","INVTYPE_CHEST",
	"INVTYPE_WAIST","INVTYPE_LEGS","INVTYPE_FEET","INVTYPE_WRIST",	"INVTYPE_HAND",
	"INVTYPE_FINGER","INVTYPE_TRINKET","INVTYPE_WEAPON","INVTYPE_SHIELD","INVTYPE_RANGED",
	"INVTYPE_CLOAK","INVTYPE_2HWEAPON","INVTYPE_BAG","INVTYPE_TABARD","INVTYPE_ROBE",
    "INVTYPE_WEAPONMAINHAND","INVTYPE_WEAPONOFFHAND","INVTYPE_HOLDABLE","INVTYPE_AMMO",
    "INVTYPE_THROWN","INVTYPE_RANGEDRIGHT","INVTYPE_QUIVER","INVTYPE_RELIC",
}

-- custom getiteminfo returns same formate as getiteminfo but will use info from either getiteminfo or getiteminfoinstant
function AtlasLoot:GetItemInfo(item, dontCache)
	item = tonumber(item) and Item:CreateFromID(item) or Item:CreateFromLink(item)
	local itemDescription
	local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(item.itemID)
	if not dontCache and not item:GetInfo() then
		self:ItemsLoading(1)
		item:ContinueOnLoad(function()
			self:ItemsLoading(-1)
		end)
	end
		local itemInstant = GetItemInfoInstant(item.itemID)
		if itemInstant then
			itemName = itemName or itemInstant.name
			itemSubType = itemSubType or _G["ITEM_SUBCLASS_"..itemInstant.classID.."_"..itemInstant.subclassID]
			itemEquipLoc = itemEquipLoc or itemEquipLocConversion[itemInstant.inventoryType]
			itemTexture = itemTexture or itemInstant.icon
			itemQuality = itemQuality or itemInstant.quality
			itemLink = itemLink or item:GetLink()
			itemLevel = itemLevel or item.itemLevel
			itemDescription = itemDescription or itemInstant.description
		end
	return itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice, itemDescription
end

local AtlasLootScanTooltip = CreateFrame("GAMETOOLTIP","AtlasLootScanTooltip",nil,"GameTooltipTemplate")
AtlasLootScanTooltip:SetOwner(UIParent, "ANCHOR_NONE")
-- Create enchant tooltip
function AtlasLoot:GetEnchantLink(enchantID)
	if not enchantID then return end
	local enchantLink
	AtlasLootScanTooltip:SetOwner(UIParent, "ANCHOR_NONE")
	AtlasLootScanTooltip:ClearLines()
	AtlasLootScanTooltip:SetHyperlink("enchant:"..enchantID)
	AtlasLootScanTooltip:Show()
	local tooltipline = _G["AtlasLootScanTooltipTextLeft1"]
	local text = tooltipline:GetText()
	if text and string.find(text, ":") then
		enchantLink = "|cffffd000|Henchant:"..enchantID.."|h["..text.."]|h|r"
	else
		enchantLink = GetSpellLink(enchantID)
	end
	AtlasLootScanTooltip:Hide()
	return enchantLink
 end

-- Open a ascension db link
function AtlasLoot:OpenDBURL(ID, Type)
    OpenAscensionDBURL("?"..Type.."="..ID)
end

-- create a enchant or item chat link!
function AtlasLoot:Chatlink(ID,chatType,Type)
    if Type == "spell" then
        SendChatMessage(self:GetEnchantLink(ID) ,chatType)
    else
        SendChatMessage(select(2,GetItemInfo(ID)) ,chatType)
    end
end

-- Get rep faction for when you have 2 loot tables and want to show a different one depending on rep
function AtlasLoot:GetReputationFaction(factions)
	local factionIndex = 1
	local lastFactionName
	repeat
	local name, _, _, _, _, totalRep = GetFactionInfo(factionIndex)
			for _, faction in pairs(factions) do
			if name == faction and totalRep and totalRep >= 1 then
				return faction
			end
			if name == faction then
				lastFactionName = faction
			end
		end
	factionIndex = factionIndex + 1
	until factionIndex > 200
	return lastFactionName
end

--[[
AtlasLoot:PopoupItemFrame(item, data)
Used to create a popup item frame for items like gem sacks to show what they contain
]] 
function AtlasLoot:PopoupItemFrame(frame, data)
	if not data then self.ui.itemPopupframe:Hide() return end
	--hide the unused buttons
	for i = 1, 15 do
		local button = _G["AtlasLoot_PopupButton_"..i]
		if button then
			button:Hide()
		end
	end
	--creates a button only if one dosnt already exist re use old one if it does
	local function createButton(num)
		if _G["AtlasLoot_PopupButton_"..num] then return end
		local button = CreateFrame("Button", "AtlasLoot_PopupButton_"..num, self.ui.itemPopupframe, "ItemButtonTemplate")
		button:SetID(num)
		button:SetSize(30,30)
		button:EnableMouse()
		button:RegisterForClicks("AnyDown")
		button:SetScript("OnClick", function(btn, arg1) self:ItemOnClick(btn, arg1) end)
		button:SetScript("OnEnter", function(btn)
			self:ItemOnEnter(btn)
			self.ui.itemPopupframe:Show()
		end)
		button:SetScript("OnLeave", function(btn)
			if not self.Dewdrop:IsOpen(_G["AtlasLoot_PopupButton_"..num]) then
				self:ItemOnLeave(btn)
			end
		end)

		if num == 1 then
			button:SetPoint("TOPLEFT", self.ui.itemPopupframe, 9, -8)
		elseif num == 7 then
			button:SetPoint("BOTTOM", "AtlasLoot_PopupButton_1", 0, -33)
		elseif num == 13 then
			button:SetPoint("BOTTOM", "AtlasLoot_PopupButton_6", 0, -33)
		else
			button:SetPoint("LEFT", _G["AtlasLoot_PopupButton_"..(num-1)],"RIGHT",3,0)
		end
	end
	if data.Faction then
		data = data[self:GetReputationFaction(data.Faction)]
		if not data then return end
	end

	local numberBtns

	for i, item in ipairs(data) do
		createButton(i)
		local button = _G["AtlasLoot_PopupButton_"..i]
		if item == "blank" then
			button:Hide()
		else
			local correctID = (type(item) == "number" and item) or (type(item) == "table" and (item.itemID or item[1]))
			local itemID = self:GetItemDifficultyID(correctID, self.ItemindexID)
			local itemData = {self:GetItemInfo(itemID)}
			SetItemButtonTexture(button, itemData[10])
			SetItemButtonQuality(button, itemData[3])

			button.itemID = itemID
			button.itemTexture = frame.itemTexture
			button.isAtlasLoot = true
			local recipe = self:GetRecipeData(itemID, "item")
			if recipe then
			button.craftingData = self:GetRecipeSource(recipe.spellID)
			end
			if type(item) == "table" and item[2] then
				SetItemButtonCount(button, item[2])
			else
				SetItemButtonCount(button)
			end
			button:Show()
		end
		numberBtns = i
	end
	if numberBtns < 6 then
		self.ui.itemPopupframe:SetWidth((numberBtns*33)+16)
	else
		self.ui.itemPopupframe:SetWidth(214)
	end
	if numberBtns > 6 then
		self.ui.itemPopupframe:SetHeight(79)
	elseif numberBtns > 12 then
		self.ui.itemPopupframe:SetHeight(107)
	else
		self.ui.itemPopupframe:SetHeight(46)
	end
	self.ui.itemPopupframe:SetParent(frame)
	self.ui.itemPopupframe:ClearAllPoints()
	self.ui.itemPopupframe:SetPoint("TOPLEFT",frame,0,-25)
	self.ui.itemPopupframe:Show()
end


--Adds explanatory tooltips to UI objects.
function AtlasLoot:AddTooltip(frameb, tooltiptext)
	if not tooltiptext or not frameb then return end
	local frame = _G[frameb]
	frame:SetScript("OnEnter", function()
	   GameTooltip:SetOwner(frame, "ANCHOR_RIGHT")
	   GameTooltip:SetText(tooltiptext)
	   GameTooltip:Show()
	end)
	frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
 end

--[[
AtlasLoot:IsLootTableAvailable(dataID):
Checks if a loot table is in memory and attempts to load the correct LoD module if it isn't
dataID: Loot table dataID
]]
function AtlasLoot:IsLootTableAvailable(dataSource)
	local moduleName
	moduleName = self.ModuleName[dataSource]
	if moduleName and IsAddOnLoaded(moduleName) then
		return true
	elseif moduleName then
		LoadAddOn(moduleName)
	end
end

--------- rate limited item frame refresh ---------
local refreshTimer
function AtlasLoot:ItemRefreshTimer()
    self:ShowItemsFrame(self.itemframe.refresh[1], self.itemframe.refresh[2], self.itemframe.refresh[3])
    refreshTimer = false
end

function AtlasLoot:ItemFrameRefresh()
    if refreshTimer then return end
    self:ScheduleTimer("ItemRefreshTimer", .5)
    refreshTimer = true
end
-----------------------------------------------------

-- Loading items spinner 
local loadingCount = 0
function AtlasLoot:ItemsLoading(count)
	if count == "reset" then
		loadingCount = 0
		count = 0
	end
	loadingCount = loadingCount + count
	if(loadingCount > 0) then
        AtlasLoot_ItemsLoadingSpinner:SetVertexColor(0,1,0)
        AtlasLoot_ItemsLoadingFrameBackground:SetVertexColor(0,1,0)
        AtlasLoot_ItemsLoading.tooltip = self.Colors.WHITE..loadingCount..self.Colors.YELLOW.." Items still caching\n(This can take awhile after a launcher update)"
		AtlasLoot_ItemsLoading.Loop:Play()
		AtlasLoot_ItemsLoading:Show()
		if GameTooltip:GetOwner() == AtlasLoot_ItemsLoading then
			GameTooltip:SetOwner(AtlasLoot_ItemsLoading, "ANCHOR_LEFT")
			GameTooltip:SetText(AtlasLoot_ItemsLoading.tooltip, nil, nil, nil, nil, true)
		end
	else
        AtlasLoot_ItemsLoading.Loop:Stop()
        AtlasLoot_ItemsLoading:Hide()
	end
end

local function CheckTooltipForDuplicate(tooltip, text)
    -- Check if we already added to this tooltip.
    for i = 1, tooltip:NumLines() do
        local frame = _G[tooltip:GetName() .. "TextLeft" .. i]
        local textOld
        if frame then textOld = frame:GetText() end
        if textOld and textOld == text then return true end
    end
end

-- finds and sets the tooltip for the itemID that it is sent
local function SetTooltip(itemID, tooltip)
    local self = AtlasLoot
	if not self.selectedProfile.showUnknownRecipeTooltip or UnitAffectingCombat("player") then return end
	local text = self:IsRecipeUnknown(itemID)
	if not text then return end
	text = "Recipe could be learned by: "..self.Colors.GREEN..text
	if not CheckTooltipForDuplicate(tooltip, text) then
		tooltip:AddLine(text)
	end
end

-- item tooltip handler
local function TooltipHandlerItem(tooltip)
    --checks for combat less likley to cause a lag spike
    if UnitAffectingCombat("player") then return end
    --get item link and itemID
	local link = select(2, tooltip:GetItem())
	if not link then return end
	local itemID = GetItemInfoFromHyperlink(link)
	if not itemID then return end
    SetTooltip(itemID, tooltip)
	AtlasLoot:ItemSourceTooltip(itemID, tooltip)
end

GameTooltip:HookScript("OnTooltipSetItem", TooltipHandlerItem)
ItemRefTooltip:HookScript("OnTooltipSetItem", TooltipHandlerItem)

function AtlasLoot:StripTextColor(txt)
	txt = txt or ""
	txt = string.gsub( txt, "|c%x%x%x%x%x%x%x%x", "" )
	txt = string.gsub( txt, "|c%x%x %x%x%x%x%x", "" ) -- the trading parts colour has a space instead of a zero for some weird reason
	txt = string.gsub( txt, "|r", "" )
	return txt
end

function AtlasLoot:CheckIfEmptyTable(table)
	if next(table) then
		return false
	else
		return true
	end
end

-- handle minimap tooltip
function AtlasLoot:GetTipAnchor(frame)
    local x, y = frame:GetCenter()
    if not x or not y then return "TOPLEFT", "BOTTOMLEFT" end
    local hhalf = (x > UIParent:GetWidth() * 2 / 3) and "RIGHT" or (x < UIParent:GetWidth() / 3) and "LEFT" or ""
    local vhalf = (y > UIParent:GetHeight() / 2) and "TOP" or "BOTTOM"
    return vhalf .. hhalf, frame, (vhalf == "TOP" and "BOTTOM" or "TOP") .. hhalf
end

-- Search Auction House for crafting patern/enchant
function AtlasLoot:SearchAuctionHouse(text)
	if not text then return end
	if BrowseName:IsVisible() then
		BrowseName:SetText(text)
		BrowseSearchButton:Click()
	elseif Atr_Search_Box:IsVisible() then
		Atr_Search_Box:SetText(text)
		Atr_Search_Button:Click()
	end

end

function AtlasLoot:GetDropRate(refLootEntry, groupID)
	if not refLootEntry or not groupID then return end

	if AtlasLoot_ItemDropRates[refLootEntry] and AtlasLoot_ItemDropRates[refLootEntry][groupID] then
		return string.format("%.2f%%",(AtlasLoot_ItemDropRates[refLootEntry][groupID])*100) or nil
	end
end

local function IgnoreTables(dataSource)
	local cTable = {"CraftingCLASSIC", "CraftingTBC", "CraftingWRATH", "CollectionsAscensionCLASSIC", "CollectionsAscensionTBC", "CollectionsAscensionWRATH"}
	for _, t in pairs(cTable) do
		for _, crafting in  ipairs(AtlasLoot.ui.menus.collection[t]) do
			if crafting[3] then
				for _, ignore in pairs(crafting[3]) do
					if dataSource == ignore[2] then return true end
				end
			end
			if dataSource == crafting[2] then return true end
		end
	end
end

function AtlasLoot:CreateItemSourceList(overRide)
	if overRide then elseif not self.selectedProfile.showdropLocationTooltips then return end
	if overRide or not AtlasLootDB.ItemSources or (AtlasLootDB.ItemSources.Version and AtlasLootDB.ItemSources.Version ~= self.Version) then
		self:LoadAllModules()
		AtlasLootDB.ItemSources = {Version = AtlasLoot.Version, List = {}}
		local list = AtlasLootDB.ItemSources.List
			for dataSource, instance in pairs(AtlasLoot_Data) do
				for _, boss in pairs(instance) do
					if type(boss) == "table" then
						for _, side in pairs(boss) do
							if type(side) == "table" then
								for _, item in pairs(side) do
									if type(item) == "table" and item.itemID and instance.Name and boss.Name and not IgnoreTables(dataSource) then
										list[item.itemID] = self.Colors.CYAN..instance.Name .. self.Colors.WHITE .." - " .. boss.Name
										if ItemIDsDatabase[item.itemID] then
											for _, varID in pairs(ItemIDsDatabase[item.itemID]) do
												list[varID] = self.Colors.CYAN..instance.Name .. self.Colors.WHITE .." - " .. boss.Name
											end
										end
										if item.spellID then
											local recipeID = self:GetRecipeID(item.spellID) or nil
											if recipeID and (list[recipeID] and not IgnoreTables(dataSource) or not list[recipeID]) then
												list[recipeID] = self.Colors.CYAN..instance.Name .. self.Colors.WHITE .." - " .. boss.Name
											end
										end
									end
								end
							end
						end
					end
				end
			end
	end
	self.ItemSourceList = AtlasLootDB.ItemSources.List
end

function AtlasLoot:ItemSourceTooltip(itemID, tooltip)
	local button = GetMouseFocus()
	if not self.selectedProfile.showdropLocationTooltips or not self.ItemSourceList or (button and button.isAtlasLoot) then return end
	local text = self.ItemSourceList[itemID] and "Item Source: " .. self.ItemSourceList[itemID] or nil
	if text and not CheckTooltipForDuplicate(tooltip, text) then
		tooltip:AddLine(text)
	end
end

local ArmorTypes = {
	INVTYPE_NECK = {"24000 #faction#"},
	INVTYPE_HEAD = {"30000 #faction#", "1500 #arena#"},
	INVTYPE_SHOULDER = {"24000 #faction#", "1125 #arena#"},
	INVTYPE_BODY = {"30000 #faction#", "1500 #arena#"},
	INVTYPE_CHEST = {"30000 #faction#", "1500 #arena#"},
	INVTYPE_WAIST = {"17000 #faction#"},
	INVTYPE_LEGS = {"30000 #faction#", "1500 #arena#"},
	INVTYPE_FEET = {"24000 #faction#"},
	INVTYPE_WRIST = {"17000 #faction#"},
	INVTYPE_HAND = {"20000 #faction#", "1000 #arena#"},
	INVTYPE_FINGER = {"24000 #faction#"},
	INVTYPE_TRINKET = {"30400 #faction#"},
	INVTYPE_WEAPON = {"24000 #faction#", "1875 #arena#"},
	INVTYPE_SHIELD = {"15000 #faction#", "1500 #arena#"},
	INVTYPE_RANGED = {"15000 #faction#", "1500 #arena#"},
	INVTYPE_CLOAK = {"30400 #faction#"},
	INVTYPE_2HWEAPON = {"40000 #faction#", "2700 #arena#"},
	INVTYPE_ROBE = {"30000 #faction#", "1500 #arena#"},
    INVTYPE_WEAPONMAINHAND = {"24000 #faction#", "1875 #arena#"},
	INVTYPE_WEAPONOFFHAND = {"24000 #faction#", "750 #arena#"},
	INVTYPE_HOLDABLE = {"15000 #faction#", "1500 #arena#"},
    INVTYPE_THROWN = {"15000 #faction#", "750 #arena#"},
	INVTYPE_RANGEDRIGHT = {"15000 #faction#", "1500 #arena#"},
	INVTYPE_RELIC = {"15000 #faction#", "750 #arena#"},
}

function AtlasLoot:ArenaCost(price, itemEquipLoc, itemQuality)
	if price ~= "Arena" then return price end
	if itemQuality == 3 or not ArmorTypes[itemEquipLoc][2] then
		return ArmorTypes[itemEquipLoc][1]
	else
		return ArmorTypes[itemEquipLoc][1]..ArmorTypes[itemEquipLoc][2]
	end
end

function AtlasLoot:SetMerchantFrameGlow()
	if not self.selectedProfile.MerchantGlow then return end
	local num = 1
	while _G["MerchantItem"..num.."ItemButton"] do
		local link = _G["MerchantItem"..num.."ItemButton"].link
		if not link then return end
		local itemID = GetItemInfoFromHyperlink(link)
		if self:WishListCheck(itemID, true) then
			ActionButton_ShowOverlayGlow(_G["MerchantItem"..num.."ItemButton"])
		else
			ActionButton_HideOverlayGlow(_G["MerchantItem"..num.."ItemButton"])
		end
		num = num + 1
	end
end

function AtlasLoot:InitializeWishlistMerchantGlow()
	if self.selectedProfile.MerchantGlow then
		self:RegisterEvent("MERCHANT_UPDATE")
		self:RegisterEvent("MERCHANT_SHOW")
		MerchantNextPageButton:HookScript("OnClick", function() AtlasLoot:SetMerchantFrameGlow() end)
		MerchantPrevPageButton:HookScript("OnClick", function() AtlasLoot:SetMerchantFrameGlow() end)
	end
end

-- returns true, if player has item with given ID in inventory or bags and it's not on cooldown
function AtlasLoot:HasItem(itemID)
	local item, found, id
	-- scan bags
	for bag = 0, 4 do
		for slot = 1, GetContainerNumSlots(bag) do
			item = GetContainerItemLink(bag, slot)
			if item then
				found, _, id = item:find('^|c%x+|Hitem:(%d+):.+')
				if found and tonumber(id) == itemID then
					return true, bag, slot
				end
			end
		end
	end
	return false
end

--========================================
-- Retrieve additional item info via the
-- item's tooltip
--========================================
local cTip = CreateFrame("GameTooltip","cTooltip",nil,"GameTooltipTemplate")
function AtlasLoot:GetTooltipItemInfo(link, bag, slot)
    cTip:SetOwner(UIParent, "ANCHOR_NONE")

    -- set up return values
    local binds = {}

    -- generate item tooltip in hidden tooltip object
    if link then
        cTip:SetHyperlink(link)
    elseif bag and slot then
        cTip:SetBagItem(bag, slot)
    else
        return
    end

    for i = 1,cTip:NumLines() do
        local text = _G["cTooltipTextLeft"..i]:GetText()
        if text == "Realm Bound" then binds.isRealmbound = true end
        if text == ITEM_SOULBOUND then  binds.isSoulbound = true end
        if text == ITEM_BIND_ON_PICKUP then binds.isBoP = true end
        if text == ITEM_SPELL_KNOWN then binds.isKnown = true end
    end

    cTip:Hide()

    return binds
end

function AtlasLoot:SetGameTooltip(button, text)
	GameTooltip:ClearLines()
	GameTooltip:SetOwner(button, "ANCHOR_TOPLEFT")
	if type(text) == "table" then
		for _, textLine in pairs(text) do
			GameTooltip:AddLine(textLine)
		end
	else
		GameTooltip:AddLine(text)
	end
	GameTooltip:Show()
end

function AtlasLoot:DewdropToggle(button)
	if self.Dewdrop:IsOpen() then
		self.Dewdrop:Close()
	else
		self.Dewdrop:Open(button)
	end
end