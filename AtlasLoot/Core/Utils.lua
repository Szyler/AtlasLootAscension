local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
-- Colours stored for code readability
local GREY = "|cff999999"
local RED = "|cffff0000"
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local PURPLE = "|cff9F3FFF"
local BLUE = "|cff0070dd"
local ORANGE = "|cffFF8400"
local CYAN =  "|cff00ffff"
local SPRINGGREEN = "|cFF00FF7F"
local YELLOW = "|cffFFd200"


--------------------------------- DewDrop Dropdownmenu ---------------------------------
-- Used to create a dewdrop menu from a table
function AtlasLoot:OpenDewdropMenu(frame, menuList, skipRegister)
	if self.Dewdrop:IsOpen(frame) then self.Dewdrop:Close() return end
	if not skipRegister then
		self.Dewdrop:Register(frame,
			'point', function(parent)
				return "TOP", "BOTTOM"
			end,
			'children', function(level, value)
				local altar
			for _, menu in pairs(menuList[level]) do
				if menu.divider then
					local text = WHITE.."----------------------------------------------------------------------------------------------------"
					self.Dewdrop:AddLine(
						'text' , text:sub(1, menu.divider),
						'textHeight', 13,
						'textWidth', 13,
						'isTitle', true,
						'notCheckable', true
					)
				else
					self.Dewdrop:AddLine(
					'text', menu.text,
					'func', menu.func,
					'closeWhenClicked', menu.closeWhenClicked,
					'textHeight', menu.textHeight,
					'textWidth', menu.textWidth,
					'notCheckable', menu.notCheckable,
					'tooltip', menu.tooltip,
					'secure', menu.secure,
					'icon', menu.icon
				)
				end
				-- create close button
				if menu.close then
					self.Dewdrop:AddLine(
						'text', AL["Close Menu"],
						'textR', 0,
						'textG', 1,
						'textB', 1,
						'textHeight', 12,
						'textWidth', 12,
						'closeWhenClicked', true,
						'notCheckable', true
					)
				end
			end
		end,
		'dontHook', true
		)
	end
	self.Dewdrop:Open(frame)
	return true
end

--for a adding a divider to dew drop menus 
function AtlasLoot:AddDividerLine(maxLenght)
    local text = WHITE.."----------------------------------------------------------------------------------------------------"
    self.Dewdrop:AddLine(
        'text' , text:sub(1, maxLenght),
        'textHeight', 12,
        'textWidth', 12,
        'isTitle', true,
        "notCheckable", true
    )
end

function AtlasLoot:CloseDewDrop(divider, maxLenght)
    if divider then
        self:AddDividerLine(maxLenght)
    end
    self.Dewdrop:AddLine(
        'text', AL["Close Menu"],
        'textR', 0,
        'textG', 1,
        'textB', 1,
        'textHeight', 12,
        'textWidth', 12,
        'closeWhenClicked', true,
        'notCheckable', true
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
        {text = ORANGE..AL["Open AscensionDB To NPC"], func = function() self:OpenDBURL(text , type) end, notCheckable = true, closeWhenClicked = true, textHeight = 12, textWidth = 12},
		{close = true, divider = 35},
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
function AtlasLoot:GetItemInfo(item)
	item = tonumber(item) and Item:CreateFromID(item) or Item:CreateFromLink(item)
	local itemDescription
	local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(item.itemID)
	if not item:GetInfo() then
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

-- Create enchant tooltip
function AtlasLoot:GetEnchantLink(enchantID)
	if not enchantID then return end
	local EnchantLink = nil
	AtlasLootScanTooltip:SetOwner(UIParent, "ANCHOR_NONE")
	AtlasLootScanTooltip:ClearLines()
	AtlasLootScanTooltip:SetHyperlink("enchant:"..enchantID)
	AtlasLootScanTooltip:Show()
	local tooltipline = _G["AtlasLootScanTooltipTextLeft1"]
	local text = tooltipline:GetText()
	if text and string.find(text, ":") then
	   EnchantLink = "|cffffd000|Henchant:"..enchantID.."|h["..text.."]|h|r"
	else
	   EnchantLink = GetSpellLink(enchantID)
	end
	AtlasLootScanTooltip:Hide()
	return EnchantLink
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
	if not data then AtlasLoot_PopupFrame:Hide() return end
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
		local button = CreateFrame("Button", "AtlasLoot_PopupButton_"..num, AtlasLoot_PopupFrame, "ItemButtonTemplate")
		button:SetID(num)
		button:SetSize(30,30)
		button:EnableMouse()
		button:RegisterForClicks("AnyDown")
		button.number = num
		button:SetScript("OnClick", function(btn, arg1) self:ItemOnClick(btn, arg1) end)
		button:SetScript("OnEnter", function(btn)
			self:ItemOnEnter(btn)
			AtlasLoot_PopupFrame:Show()
		end)
		button:SetScript("OnLeave", function(btn)
			if not self.Dewdrop:IsOpen(_G["AtlasLoot_PopupButton_"..num]) then
				self:ItemOnLeave(btn)
			end
		end)

		if num == 1 then
			button:SetPoint("TOPLEFT", "AtlasLoot_PopupFrame", 9, -8)
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
	end

	local numberBtns
	for i, item in ipairs(data) do
		createButton(i)
		local button = _G["AtlasLoot_PopupButton_"..i]
		if item == "blank" then
			button:Hide()
		else
			local correctID = item.itemID or item[1]
			local itemID = self:GetItemDifficultyID(correctID, self.ItemindexID)
			local itemData = {self:GetItemInfo(itemID)}
			SetItemButtonTexture(button, itemData[10])
			SetItemButtonQuality(button, itemData[3])

			button.itemID = itemID
			button.itemTexture = frame.itemTexture
			local recipe = self:GetRecipeData(itemID, "item")
			if recipe then
			button.craftingData = self:GetRecipeSource(recipe.spellID)
			end
			if item[2] then
				SetItemButtonCount(button, item[2])
			else
				SetItemButtonCount(button)
			end
			button:Show()
		end
		numberBtns = i
	end
	if numberBtns < 6 then
		AtlasLoot_PopupFrame:SetWidth((numberBtns*33)+16)
	else
		AtlasLoot_PopupFrame:SetWidth(214)
	end
	if numberBtns > 6 then
		AtlasLoot_PopupFrame:SetHeight(79)
	elseif numberBtns > 12 then
		AtlasLoot_PopupFrame:SetHeight(107)
	else
		AtlasLoot_PopupFrame:SetHeight(46)
	end
	AtlasLoot_PopupFrame:SetParent(frame)
	AtlasLoot_PopupFrame:ClearAllPoints()
	AtlasLoot_PopupFrame:SetPoint("TOPLEFT",frame,0,-25)
	AtlasLoot_PopupFrame:Show()
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

--Called when 'Back'Button is pressed and calls up the appropriate loot page
function AtlasLoot:BackButton_OnClick()
	self.backEnabled = false
	if AtlasLootItemsFrame.refreshSearch then
		self:ShowItemsFrame(AtlasLootItemsFrame.refreshSearch[1], AtlasLootItemsFrame.refreshSearch[2], AtlasLootItemsFrame.refreshSearch[3])
	else
		self:ShowItemsFrame(AtlasLootItemsFrame.refreshBack[1], AtlasLootItemsFrame.refreshBack[2], AtlasLootItemsFrame.refreshBack[3])
	end
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

--[[
AtlasLoot:NavButton_OnClick:
Called when <-, -> are pressed and calls up the appropriate loot page
]]
function AtlasLoot:NavButton_OnClick(btn)
	if AtlasLootDefaultFrame_Map:IsVisible() then
		self:MapSelect(btn.mapID, btn.mapNum)
	else
		local tablenum, dataID, dataSource = btn.tablenum, btn.tablebase[1], btn.tablebase[2]
		if #_G[dataSource][dataID] > 26 then
			local min, max = AtlasLootDefaultFrameSubTableScrollScrollBar:GetMinMaxValues()
			AtlasLootDefaultFrameSubTableScrollScrollBar:SetValue(tablenum * (max / #_G[dataSource][dataID]))
		end
		self:ShowItemsFrame(dataID, dataSource, tablenum)
	end
end

--------- rate limited item frame refresh ---------
local refreshTimer
function AtlasLoot:ItemRefreshTimer()
    self:ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3])
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
        AtlasLoot_ItemsLoading.tooltip = WHITE..loadingCount..YELLOW.." Items still caching\n(This can take awhile after a launcher update)"
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
	if not self.db.profile.showUnknownRecipeTooltip or UnitAffectingCombat("player") then return end
	local text = self:IsRecipeUnknown(itemID)
	if not text then return end
	text = "Recipe could be learned by: "..GREEN..text
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
    if not x or not y then return 'TOPLEFT', 'BOTTOMLEFT' end
    local hhalf = (x > UIParent:GetWidth() * 2 / 3) and 'RIGHT' or (x < UIParent:GetWidth() / 3) and 'LEFT' or ''
    local vhalf = (y > UIParent:GetHeight() / 2) and 'TOP' or 'BOTTOM'
    return vhalf .. hhalf, frame, (vhalf == 'TOP' and 'BOTTOM' or 'TOP') .. hhalf
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

function AtlasLoot:GetDropRate(lootTable, lootGroup)
	if not lootGroup then return end
	local count = 0
	for _, item in pairs(lootTable) do
		if type(item) == "table" and item.lootGroup and item.lootGroup == lootGroup then
			count = count + 1
		end
	end
	local actualLootGroup = lootTable.LootGroups or lootTable.lootTable and _G[lootTable.lootTable[2]][lootTable.lootTable[1]][lootTable.lootTable[3]] or nil
	if actualLootGroup then
		return string.format("%.2f%%",actualLootGroup[lootGroup]/count) or nil
	end
end

local function IgnoreTables(dataSource)
	local cTable = {"CraftingCLASSIC", "CraftingTBC", "CraftingWRATH", "CollectionsAscensionCLASSIC", "CollectionsAscensionTBC", "CollectionsAscensionWRATH"}
	for _, t in pairs(cTable) do
		for _, crafting in  ipairs(AtlasLoot_SubMenus[t]) do
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
	if overRide then elseif not self.db.profile.showdropLocationTooltips then return end
	if overRide or not AtlasLootDB.ItemSources or (AtlasLootDB.ItemSources.Version and AtlasLootDB.ItemSources.Version ~= self.Version) then
		self:LoadAllModules()
		AtlasLootDB.ItemSources = {Version = AtlasLoot.Version, List = {}}
		local list = AtlasLootDB.ItemSources.List
			for dataSource, instance in pairs(AtlasLoot_Data) do
				for _, boss in pairs(instance) do
					if type(boss) == "table" then
						for _, item in pairs(boss) do
							if type(item) == "table" and item.itemID and instance.Name and boss.Name and not IgnoreTables(dataSource) then
								list[item.itemID] = CYAN..instance.Name .. WHITE .." - " .. boss.Name
								if ItemIDsDatabase[item.itemID] then
									for _, varID in pairs(ItemIDsDatabase[item.itemID]) do
										list[varID] = CYAN..instance.Name .. WHITE .." - " .. boss.Name
									end
								end
								if item.spellID then
									local recipeID = self:GetRecipeID(item.spellID) or nil
									if recipeID and (list[recipeID] and not IgnoreTables(dataSource) or not list[recipeID]) then
										list[recipeID] = CYAN..instance.Name .. WHITE .." - " .. boss.Name
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
	if not self.db.profile.showdropLocationTooltips or not self.ItemSourceList then return end
	local text = self.ItemSourceList[itemID] and "Item Source: " .. self.ItemSourceList[itemID] or nil
	if text and not CheckTooltipForDuplicate(tooltip, text) then
		tooltip:AddLine(text)
	end
end

function AtlasLoot:UpdateTable(insertTable, table)
	for i, v in pairs(insertTable) do
		table[i] = v
	end
	return table
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
	if not self.db.profile.MerchantGlow then return end
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

function AtlasLoot:MERCHANT_SHOW()
	self:SetMerchantFrameGlow()
end

function AtlasLoot:MERCHANT_UPDATE()
	self:SetMerchantFrameGlow()
end

function AtlasLoot:InitializeWishlistMerchantGlow()
	if self.db.profile.MerchantGlow then
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