local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local itemHighlightBlue = "Interface\\AddOns\\AtlasLoot\\Images\\knownBlue"
local itemHighlightGreen = "Interface\\AddOns\\AtlasLoot\\Images\\knownGreen"

function AtlasLoot:InitializeItemFrame()

	----------------------------------- Item Loot Panel -------------------------------------------
	self.itemframe = CreateFrame("Frame", nil, self.ui.lootBackground)
	self.itemframe:SetSize(765,510)
	self.itemframe:SetPoint("TOPLEFT", self.ui.lootBackground, "TOPLEFT", 2, -2)
	self.itemframe.Label = self.itemframe:CreateFontString(nil,"OVERLAY","GameFontHighlightLarge")
	self.itemframe.Label:SetPoint("TOP", self.itemframe, "TOP")
	self.itemframe.Label:SetSize(512,30)
	self.itemframe.Label:SetJustifyH("CENTER")

    local ROW_HEIGHT = 29   -- How tall is each row?
    local MAX_ROWS = 15      -- How many rows can be shown at once?
	local MAX_COLUMNS = 2

	local function hideButton(button)
		if not button then return end
		button:Hide()
		button.itemID = nil
		button.spellID = nil
		button.Highlight:Hide()
		button.hasTrade = false
	end

	function self:HideItemButtons()
		for row = 1, MAX_ROWS do
			for column = 1, MAX_COLUMNS do
				hideButton(self.itemframe.buttons[column][row])
			end
		end
	end

	local function getMaxValue(itemList)
		if itemList then
			if itemList[2] and #itemList[2] > #itemList[1] then
				return #itemList[2], #itemList[1] + #itemList[2]
			elseif itemList[1] then
				return #itemList[1], #itemList[1] + #itemList[2]
			end
		end
	end

	local storedData = {}
	function self:ItemFrameUpdate(dataSource, dataID, tablenum, dataSource_backup)
		if not dataSource then return end
		storedData = {dataSource, dataID, tablenum, dataSource_backup}

		local itemList = {{},{}}
		for i, coloum in ipairs(dataSource[dataID][tablenum]) do
			local lastWasGap = false
			for _, item in ipairs(coloum) do
				local show, itemID, recipeID = self:GetItemConditionals(item, dataSource, dataID)
				if (show and self:FilterItem(item, dataSource, dataID)) or (item and item[1] == "gap" and #itemList[i] > 0 and not lastWasGap) then
					table.insert(itemList[i], self:CloneTable(item))
					if item[1] ~= "gap" then
						itemList[i][#itemList[i]].itemID = itemID
						itemList[i][#itemList[i]].recipeID = recipeID
						lastWasGap = false
					elseif item[1] == "gap" then
						lastWasGap = true
					end
				end
			end
		end

		local maxValue, totalItems = getMaxValue(itemList)
		if not maxValue then return end
		self.itemframe.scrollBar.totalItems = totalItems
		FauxScrollFrame_Update(self.itemframe.scrollBar, maxValue, MAX_ROWS, ROW_HEIGHT, nil, nil, nil, nil, nil, nil, true)
		local offset = FauxScrollFrame_GetOffset(self.itemframe.scrollBar)
		for column = 1, MAX_COLUMNS do
			for row = 1, MAX_ROWS do
				local value = row + offset
				local button = self.itemframe.buttons[column][row]
				local item = itemList[column] and itemList[column][value]
				local itemNumber = itemList[column] and itemList[column][value]
				hideButton(button)
				if item then
					if maxValue ~= 0 and value <= maxValue then
						local show = self:SetupButton(item.itemID or item.recipeID, itemNumber, button, dataSource, dataID, tablenum, dataSource_backup)
						if show or (self.wishListLockState ~= "Locked" and item[1] == "gap") then
							button:Show()
						end
					end
				end
			end
        end
	end

	self.itemframe.scrollBar = CreateFrame("ScrollFrame","AtlasLootItemFrameScroll", self.itemframe, "FauxScrollFrameTemplate")
	self.itemframe.scrollBar:SetPoint("TOPLEFT", 0, -8)
	self.itemframe.scrollBar:SetPoint("BOTTOMRIGHT", -30, 8)
	self.itemframe.scrollBar:SetScript("OnVerticalScroll", function(scroll, offset)
		scroll.offset = math.floor(offset / ROW_HEIGHT + 0.5)
			self:ItemFrameUpdate(unpack(storedData))
	end)
	self.itemframe.scrollBar:HookScript("OnMouseWheel", function(frame,delta)
		if self.itemframe.scrollBar.totalItems > 30 then return end
        if self.ui.nextbutton:IsVisible() and delta == -1 then
            self.ui.nextbutton:Click()
        end
        if self.ui.prevbutton:IsVisible() and delta == 1 then
            self.ui.prevbutton:Click()
        end
    end)

	self.itemframe.scrollBar:SetScript("OnShow", function() self:ItemFrameUpdate(unpack(storedData)) end)

	self.itemframe.buttons = {{},{}}

	local function createButton(column, row)
		self.itemframe.buttons[column][row] = CreateFrame("Button", "$parentColumn"..column.."Button"..row, self.itemframe , "AtlasLootItemTemplate")
		local button = self.itemframe.buttons[column][row]
		button:SetID(row)
		button.isAtlasLoot = true
		if column == 1 and row == 1 then
			button:SetPoint("TOP", self.itemframe, "TOP",-210,-35)
		elseif column == 2 and row == 1 then
			button:SetPoint("TOP", self.itemframe, "TOP",150,-35)
		else
			button:SetPoint("TOPLEFT", self.itemframe.buttons[column][row-1], "BOTTOMLEFT")
		end
	end

	for column = 1, MAX_COLUMNS do
		for row = 1, MAX_ROWS do
			createButton(column, row)
		end
	end

end

local faction = UnitFactionGroup("player")

--Get whether the item should be displayed and get the itemID that needs to be displayed
function AtlasLoot:GetItemConditionals(item, dataSource, dataID)
	if (item and item.faction and item.faction ~= faction) or (item.Server and item.Server ~= self.serverType) or (item and item[1] == "gap") then return end

	local itemID, recipeID
	local show = true
	local itemDif = self.ItemindexID or 3

	local itemType = item.Type or dataSource[dataID].Type
	local maxDif = self:GetMaxDifficulty(itemType, item.maxDifficulty)
	local minDif = self:GetMinDifficulty(item.minDifficulty)

	if maxDif and maxDif < itemDif then
		itemDif = maxDif
	end

	if minDif and minDif > itemDif then
		show = false
	end

	itemID = item and item.itemID
	if item and item.itemID then
		itemID = self:GetItemDifficultyID(item.itemID, itemDif)
	end

	if item and item.spellID then
		recipeID = self:GetRecipeID(item.spellID)
	end

	return show, itemID, recipeID
end

-- Setup the button for the to be displayed item/spell
function AtlasLoot:SetupButton(itemID, itemNumber, itemButton, dataSource, dataID, tablenum, dataSource_backup)

	local show = true
	local text, extra
	local itemName, itemQuality, itemSubType, itemEquipLoc, itemIcon
	if itemID then
		itemName, _, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, itemIcon = self:GetItemInfo(itemID)
	end

	local spellName, spellIcon
	--Use shortcuts for easier reference to parts of the item button
	local iconFrame  = itemButton.Icon
	local nameFrame  = itemButton.Name
	local extraFrame = itemButton.ExtraText
	local hightlightFrame = itemButton.Highlight
	local spellID = itemNumber.spellID

	if spellID then
		spellName, _, spellIcon, _, _, _, _, _, _ = GetSpellInfo(spellID)
		if not spellName then return end
		if spellName then
			text = spellName
		elseif itemNumber.name then
			text = itemNumber.name
			text = self:FixText(text)
		end
		if itemID then
			text = select(4,GetItemQualityColor(itemQuality))..text
		end
		--Adds button highlights if you know a recipe or have a char that knows one
		if CA_IsSpellKnown(spellID) then
			itemButton.hasTrade = true
			hightlightFrame:SetTexture(itemHighlightGreen)
			hightlightFrame:Show()
		else
			itemButton.hasTrade = false
			hightlightFrame:Hide()
			if self:GetKnownRecipes(spellID) then
				hightlightFrame:SetTexture(itemHighlightBlue)
				hightlightFrame:Show()
			end
		end

	elseif itemID then
		--If the client has the name of the item in cache, use that instead.					
		if itemNumber.name then
			--If it has a manuel entry use that
			text = itemNumber.name
			text = self:FixText(text)
		elseif itemName then
			text = select(4,GetItemQualityColor(itemQuality))..itemName
		else
			text = ""
		end

		if C_VanityCollection.IsCollectionItemOwned(itemID) and VANITY_ITEMS[itemID] and CA_IsSpellKnown(VANITY_ITEMS[itemID].learnedSpell) and VANITY_ITEMS[itemID].learnedSpell ~= 0 then
			hightlightFrame:SetTexture(itemHighlightGreen)
			hightlightFrame:Show()
		elseif C_VanityCollection.IsCollectionItemOwned(itemID) then
			hightlightFrame:SetTexture(itemHighlightBlue)
			hightlightFrame:Show()
			if dataSource_backup == "AtlasLoot_CurrentWishList" or (VANITY_ITEMS[itemID] and VANITY_ITEMS[itemID].learnedSpell ~= 0 and not CA_IsSpellKnown(VANITY_ITEMS[itemID].learnedSpell)) then
				table.insert(self.vanityItems, itemID)
			end
		end

		local recipeData = self:GetRecipeData(itemID, "item")
		if recipeData then
			if CA_IsSpellKnown(recipeData.spellID) then
				--Adds button highlights if you know a recipe or have a char that knows one
				itemButton.hasTrade = true
				hightlightFrame:SetTexture(itemHighlightGreen)
				hightlightFrame:Show()
			else
				itemButton.hasTrade = false
				hightlightFrame:Hide()
				if self:GetKnownRecipes(recipeData.spellID) then
					hightlightFrame:SetTexture(itemHighlightBlue)
					hightlightFrame:Show()
				end
			end
		end
	else
		if itemNumber.name then
			--If it has a manuel entry use that
			text = itemNumber.name
			text = self:FixText(text)
		else
			text = ""
		end
	end

	itemButton.name = text

	--Insert the item description
	if self.FixedItemText[itemNumber.itemID] then
		extra = self.FixedItemText[itemNumber.itemID]
	elseif itemNumber.desc then
		if type(itemNumber.desc) == "table" then
			local location, boss = itemNumber.desc[1], itemNumber.desc[2]
			extra = self.Colors.YELLOW..location..self.Colors.WHITE.." - "..boss	
		else
			extra = itemNumber.desc
		end
	elseif itemNumber.dropLoc and (self.dataSourceBackup == "AtlasLoot_OnDemand" or (self.selectedProfile.showdropLocationOnSearch and dataID == "SearchResult")) then
		local location, boss = itemNumber.dropLoc[1], itemNumber.dropLoc[2]
		extra = self.Colors.YELLOW..location..self.Colors.WHITE.." - "..boss
	elseif AtlasLoot_CraftingData["CraftingLevels"] and spellID and AtlasLoot_CraftingData["CraftingLevels"][spellID] and dataID ~= "SearchResult" then
		local lvls = AtlasLoot_CraftingData["CraftingLevels"][spellID]
		extra = self.Colors.LIMEGREEN .. "L-Click:|r "..self.Colors.WHITE..dataSource[dataID].Name.." ( "..self.Colors.ORANGE..lvls[1].."|r "..self.Colors.YELLOW..lvls[2].."|r "..self.Colors.GREEN..lvls[3].."|r "..self.Colors.GREY..lvls[4]..self.Colors.WHITE.." )"
	elseif itemNumber.lootTable and itemNumber.lootTable[2] == "Token" then
		extra = AL["Set Token (Click)"]
	elseif itemEquipLoc and itemEquipLoc ~= "" and itemSubType then
		extra = "=ds="..itemEquipLoc..", "..itemSubType
	elseif itemSubType then
		extra = "=ds="..itemSubType
	else
		extra = ""
	end

	if AtlasLoot_ExtraData[itemNumber.itemID]and dataID ~= "SearchResult" then
		extra = self.Colors.LIMEGREEN .. "L-Click:|r " .. extra
	end

	if itemNumber.contentsPreview and dataID ~= "SearchResult" then
		extra = self.Colors.LIMEGREEN .. "L-Click:|r " .. extra
	end

	if itemNumber.rep then
		extra = extra ..self.Colors.WHITE.." ("..itemNumber.rep..")"
	end

	local price = itemNumber.price
	if price then
		price = self:ArenaCost(price, itemEquipLoc, itemQuality)
		extra = extra ..self.Colors.WHITE.." ("..price..")"
	end

	local recipe = self:GetRecipeData(itemID, "item")
	if recipe and AtlasLoot_CraftingData["CraftingLevels"] and AtlasLoot_CraftingData["CraftingLevels"][recipe.spellID] then
		local lvls = AtlasLoot_CraftingData["CraftingLevels"][recipe.spellID]
		extra = extra ..self.Colors.WHITE.." ( "..lvls[1].." )"
	end

	extra = self:FixText(extra)
	--If there is no data on the texture an item should have, show a big self.Colors.RED question mark
	if itemNumber.icon == "?" then
		iconFrame:SetTexture(nil)
	elseif itemNumber.icon then
		iconFrame:SetTexture("Interface\\Icons\\"..itemNumber.icon)
	elseif itemNumber.itemID then
		iconFrame:SetTexture(itemIcon)
	elseif spellIcon then
		iconFrame:SetTexture(spellIcon)
	else
		iconFrame:SetTexture(nil)
	end

	if iconFrame:GetTexture() == nil and itemNumber.icon ~= "Blank" then
		iconFrame:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
	end

	itemButton.itemTexture = iconFrame:GetTexture()

	--Highlight items in the wishlist
	if itemID and dataSource_backup ~= "AtlasLoot_CurrentWishList" and (AtlasLootWishList.Options[UnitName("player")] and AtlasLootWishList.Options[UnitName("player")]["Mark"]) then
		local xitemexistwish, itemwishicons = self:WishListCheck(itemID, true)
		if xitemexistwish then
			text = itemwishicons.." "..text
		end
	end

	--Set the name and description of the item
	nameFrame:SetText(text)
	extraFrame:SetText(extra)
	extraFrame:Show()
	--For convenience, we store information about the objects in the objects so that it can be easily accessed later
	itemButton.itemID = itemID
	itemButton.spellID = spellID
	--learned spell id is used for items that are part of the ascension vanity collection
	itemButton.learnedSpellID = nil

	if VANITY_ITEMS[itemID] and VANITY_ITEMS[itemID].learnedSpell and VANITY_ITEMS[itemID].learnedSpell ~= 0 then
		itemButton.learnedSpellID = VANITY_ITEMS[itemID].learnedSpell
	end

	itemButton.craftingData = self:GetRecipeSource(spellID)
	itemButton.tablenum = tablenum
	itemButton.dataID = dataID
	itemButton.dataSource = dataSource_backup
	itemButton.contentsPreview = itemNumber.contentsPreview
	itemButton.price = itemNumber.price or nil
	itemButton.droprate = itemNumber.droprate or self:GetDropRate(itemNumber.refLootEntry, itemNumber.groupID)
	itemButton.extraInfo = itemNumber.extraInfo or nil
	itemButton.quest = itemNumber.quest or nil
	itemButton.item = itemNumber

	if itemNumber.lootTable then
		itemButton.sourcePage = itemNumber.lootTable
	else
		itemButton.sourcePage = nil
	end

	if itemNumber[self.Difficulties.DIF_SEARCH] then
		itemButton.difficulty = itemNumber[self.Difficulties.DIF_SEARCH]
	else
		itemButton.difficulty = self.ItemindexID
	end

	if text == "" then
		show = false
	end

	return show

end

--[[
AtlasLoot:ShowItemsFrame(dataID, dataSource, tablenum):
dataID - Name of the loot table
dataSource - Table in the database where the loot table is stored
tablenum - Number of the table with the loot in it
It is the workhorse of the mod and allows the loot tables to be displayed any way anywhere in any mod.
]]
function AtlasLoot:ShowItemsFrame(dataID, dataSource_backup, tablenum)

	self.vanityItems = {}

    --If the loot table name has not been passed, throw up a debugging statement
	if dataID == nil then
		DEFAULT_CHAT_FRAME:AddMessage("No dataID!")
        return
	end

	--Hide Advanced search if it is up and reshow Querybutton
	self.searchPanel:Hide()

	--Hide Map and reshow lootbackground
	self.ui.mapFrame:Hide()
    self.ui.lootBackground:Show()
	self.itemframe:Show()

	-- Hide the Filter Check-Box
	self.ui.filterButton:Hide()

	-- Hide the map header lable
	Atlasloot_HeaderLabel:Hide()
	local dataSource = _G[dataSource_backup] or AtlasLoot_Data
	if not dataSource[dataID] then return end
	-- Enable map button if there is a map for this table.
	if dataSource_backup ~= "AtlasLoot_OnDemand" and dataSource_backup ~= "AtlasLoot_TokenData" and dataSource[dataID] and dataSource[dataID].Map then
		self.ui.mapButton:Enable()
		-- Stops map reseting to default while still in the same raid/instance table
		if self.itemframe.refresh == nil or dataID ~= self.itemframe.refresh[1] then
			self.MapNum = 1
			self.CurrentMap = dataSource[dataID].Map
			self:SetMapButtonText(self.CurrentMap)
		end
	else
		self.ui.mapButton:Disable()
		self.ui.mapButton:SetText("No Map")
	end

	if dataSource_backup ~= "AtlasLoot_CurrentWishList" then
		self:WishListLockButtonReset()
	end

	local difType = false
	-- Checks to see if type is the same
	if self.CurrentType and dataSource[dataID].Type and self.CurrentType ~= dataSource[dataID].Type then
		self.ItemindexID = self.type[dataSource[dataID].Type] or dataSource[dataID].Index or 3
		difType = true
	end

	-- Saves current types self.ItemindexID
	if dataSource[dataID].Type then
		self.type[dataSource[dataID].Type] = self.ItemindexID
	end

	-- Set current type
	self.CurrentType = dataSource[dataID].Type or "Default"

	-- Loads the Difficulties into the scrollFrame
	if dataSource[dataID].wishList then
		self:ScrollFrameUpdate(nil,dataSource[dataID].wishList)
	else
		self:ScrollFrameUpdate()
	end

	self.dataSourceBackup = dataSource_backup

	-- Finds the tablenumber to set where the difficulty slider should be.
	local function findTypeNumber()
		if not dataSource[dataID].Type and not self.Difficulties[dataSource[dataID].Type] then return end
		for i,v in ipairs(self.Difficulties[dataSource[dataID].Type]) do
			if v[2] == self.ItemindexID then
				return i
			end
		end
	end
	local typeNumber = findTypeNumber() or 1

	-- Moves the difficulty scrollslider if the difficulty has changed
	if dataSource[dataID].Type and difType and #self.Difficulties[dataSource[dataID].Type] > 5 and typeNumber > 5 then
		local min, max = AtlasLootDefaultFrameScrollScrollBar:GetMinMaxValues()
		AtlasLootDefaultFrameScrollScrollBar:SetValue(typeNumber * (max / #self.Difficulties[dataSource[dataID].Type]))
	end

	--For stopping the subtable from changing if its a token table
	if dataSource[dataID].NoSubt == nil then
		local text = dataSource[dataID].DisplayName or dataSource[dataID].Name 
		self.ui.submenuButton:SetText(text)
		self:SubTableScrollFrameUpdate(dataID, dataSource_backup, tablenum)
	end

	-- Sets the main page lable
	if dataSource[dataID][tablenum] and dataSource[dataID][tablenum].Name then
		self.itemframe.Label:SetText(dataSource[dataID][tablenum].Name)
	else
		self.itemframe.Label:SetText("This Is Empty")
		return
	end

	-- Create the loottable
	self:ItemFrameUpdate(dataSource, dataID, tablenum, dataSource_backup)

-----------------------------------------------------------------------------------------------------------------------------

	--Store data about the state of the items frame to allow minor tweaks or a recall of the current loot page
	self.itemframe.refresh = {dataID, dataSource_backup, tablenum}

	if dataSource[dataID].Back ~= true then
		self.itemframe.refreshOri = {dataID, dataSource_backup, tablenum}
	end

	if dataID == "SearchResult" then
		self.itemframe.refreshSearch = {dataID, dataSource_backup, tablenum}
	elseif not self.ui.backbutton:IsVisible() then
		self.itemframe.refreshSearch = nil
	end

	if dataSource_backup ~= "AtlasLoot_OnDemand" and dataID ~= "SearchResult" and dataSource_backup ~= "AtlasLoot_CurrentWishList" and
	dataSource[dataID].Back ~= true and dataID ~= "EmptyTable" then
		self.db.profile.LastBoss[self.Expac] = {dataID, dataSource_backup, tablenum, self.lastModule, self.currentTable, self.moduleName}
		self.db.profile.savedState[self.currentTable] = {dataID, dataSource_backup, tablenum, self.lastModule, self.currentTable, self.moduleName}
	end

	-- Checks dataID with submenus to stop filter button loading on certain tables
	local function filterCheck(find)
		local mtype = { "Reputations", "WorldEvents", "PVP", "Collections", "Vanity"}
		for _, t in pairs (mtype) do
			if AtlasLoot.ui.menus.collection[t..self.Expac] then
				for _, v in ipairs (AtlasLoot.ui.menus.collection[t..self.Expac]) do
					if v[3] and type(v[3]) == "table" then
						for _, sub in ipairs(v[3]) do
							if find == sub[2] then
								return true
							end
						end
					elseif find == v[2] then
						return true
					end
				end
			end
		end
	end

	-- Show the Filter Check-Box
	if filterCheck(dataID) ~= true or dataSource[dataID].vanity or dataSource[dataID].filter then
		self.ui.filterButton:Show()
	end

	--Hide navigation buttons by default, only show what we need
	self:ToggleNavigationButtonsVisibility()
	self.ui.nextbutton:SetParent(self.itemframe)
	self.ui.prevbutton:SetParent(self.itemframe)
	self.ui.nextbutton:ClearAllPoints()
	self.ui.nextbutton:SetPoint("BOTTOMRIGHT", self.itemframe, "BOTTOMRIGHT",-30,5)
	self.ui.prevbutton:ClearAllPoints()
	self.ui.prevbutton:SetPoint("BOTTOMLEFT", self.itemframe, "BOTTOMLEFT",5,5)
	self:ToogleWishListButtons()
	self.ui.learnSpellbtn:Hide()

	-- Show Wishlist buttons when a wishlist in showing
	if dataSource_backup == "AtlasLoot_CurrentWishList" then
		self:ToogleWishListButtons(true)
	end

	if dataSource[dataID].vanity then
		self.ui.learnSpellbtn:Show()
	end

	local tablebase = {dataID, dataSource_backup}

	if self.itemframe.refresh and self.itemframe.refreshOri and tablenum ~= #_G[self.itemframe.refreshOri[2]][self.itemframe.refreshOri[1]] and dataSource_backup ~= "AtlasLoot_TokenData" and dataID ~= "SearchResult" or tablenum ~= #_G[self.itemframe.refresh[2]][self.itemframe.refresh[1]] and dataID == "SearchResult" then
		self.ui.nextbutton:Show()
		self.ui.nextbutton.tablenum = tablenum + 1
		self.ui.nextbutton.tablebase = tablebase
	end

	if tablenum ~= 1 and dataSource_backup ~= "AtlasLoot_TokenData" then
		self.ui.prevbutton:Show()
		self.ui.prevbutton.tablenum = tablenum - 1
		self.ui.prevbutton.tablebase = tablebase
	end

	if dataSource[dataID].Back or self.backEnabled then
		self.ui.backbutton:Show()
	else
		self.itemframe.refreshBack = {dataID, dataSource_backup, tablenum}
	end
end

--[[
AtlasLoot:SetFavorites(number)
sets the favorite when alt right clicked
]]
function AtlasLoot:SetFavorites(num)
    if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
        AtlasLootCharDB.QuickLooks[num]={AtlasLoot_CurrentWishList.Show.ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList.Show.ListNum, self.lastModule, self.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum].Name}
    else
        AtlasLootCharDB.QuickLooks[num]={self.itemframe.refreshOri[1], self.itemframe.refreshOri[2], self.itemframe.refreshOri[3], self.lastModule, self.currentTable, _G[self.itemframe.refreshOri[2]][self.itemframe.refreshOri[1]][self.itemframe.refreshOri[3]].Name}
    end
end

--Called when 'Back'Button is pressed and calls up the appropriate loot page
function AtlasLoot:BackButton_OnClick()
	self.backEnabled = false
	if self.itemframe.refreshSearch then
		self:ShowItemsFrame(self.itemframe.refreshSearch[1], self.itemframe.refreshSearch[2], self.itemframe.refreshSearch[3])
	else
		self:ShowItemsFrame(self.itemframe.refreshBack[1], self.itemframe.refreshBack[2], self.itemframe.refreshBack[3])
	end
end

--[[
AtlasLoot:NavButton_OnClick:
Called when <-, -> are pressed and calls up the appropriate loot page
]]
function AtlasLoot:NavButton_OnClick(btn)
	if self.ui.mapFrame:IsVisible() then
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