local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local itemHighlightBlue = "Interface\\AddOns\\AtlasLoot\\Images\\knownBlue"
local itemHighlightGreen = "Interface\\AddOns\\AtlasLoot\\Images\\knownGreen"

function AtlasLoot:InitializeItemFrame()

	----------------------------------- Item Loot Panel -------------------------------------------
	self.itemframe = self.ui.tabs.Loot
	self.itemframe.Label = self.itemframe:CreateFontString(nil,"OVERLAY","GameFontHighlightLarge")
	self.itemframe.Label:SetPoint("TOP", self.itemframe, "TOP", 0, -3)
	self.itemframe.Label:SetSize(512,30)
	self.itemframe.Label:SetJustifyH("CENTER")

	self.itemframe.PageNumber = self.itemframe:CreateFontString(nil,"OVERLAY","GameFontHighlightLarge")
	self.itemframe.PageNumber:SetPoint("TOPRIGHT", self.itemframe, "TOPRIGHT", 10, -10)
	self.itemframe.PageNumber:SetSize(100,20)
	self.itemframe.PageNumber:SetJustifyH("LEFT")

	local function hideButton(button)
		if not button then return end
		button:Hide()
		button.itemID = nil
		button.spellID = nil
		button.Highlight:Hide()
		button.hasTrade = false
	end

	function self:HideItemButtons()
		for i = 1, 30 do
			hideButton(self.itemframe.buttons[i])
		end
	end

	self.itemframe.buttons = {}
	local function createButton(i)
		self.itemframe.buttons[i] = CreateFrame("Button", "$parentButton"..i, self.itemframe , "AtlasLootItemTemplate")
		local button = self.itemframe.buttons[i]
		button:SetID(i)
		button.isAtlasLoot = true
		if i == 1 then
			button:SetPoint("TOP", self.itemframe, "TOP",-210,-35)
		elseif i == 16 then
			button:SetPoint("TOP", self.itemframe, "TOP",150,-35)
		else
			button:SetPoint("TOPLEFT", self.itemframe.buttons[i-1], "BOTTOMLEFT")
		end
	end

	for i = 1, 30 do
		createButton(i)
	end

	function self:ItemFrameUpdate(dataID, dataSource_backup, tablenum, pageNumber)
		local dataSource, itemData = self:GetSourceData(dataSource_backup, dataID, tablenum)
		if not dataSource or not itemData then return end
		itemData = itemData[pageNumber]
		for i = 1, 30 do
			local button = self.itemframe.buttons[i]
			hideButton(button)
			if itemData and itemData[i] then
				local item  = {}
				local show, itemID, recipeID = self:GetItemConditionals(itemData[i], dataSource)
				if (show and self:FilterItem(itemData[i], dataSource, dataID)) then
					item.itemID = itemID
					item.recipeID = recipeID
				end

				if item then
					local show = self:SetupButton(item.itemID or item.recipeID, itemData[i], button, dataSource, dataID, tablenum, dataSource_backup)
					if show or (self.wishListLockState ~= "Locked" and item[1] == "gap") then
						button:Show()
					end
				end
			end
		end
	end
end

--[[
AtlasLoot:ShowItemsFrame(dataID, dataSource, tablenum):
dataID - Name of the loot table
dataSource - Table in the database where the loot table is stored
tablenum - Number of the table with the loot in it
It is the workhorse of the mod and allows the loot tables to be displayed any way anywhere in any mod.
]]
function AtlasLoot:ShowItemsFrame(dataID, dataSource_backup, tablenum, pageNumber)

	if dataID == "refresh" then
		dataID, dataSource_backup, tablenum, pageNumber = unpack(self.itemframe.refresh)
	end
	pageNumber = pageNumber or 1

	self.vanityItems = {}

	local dataSource, itemData, numberPages = self:GetSourceData(dataSource_backup, dataID, tablenum)


    --If the loot table name has not been passed, throw up a debugging statement
	if not dataID or not dataSource then
		DEFAULT_CHAT_FRAME:AddMessage("No data!")
        return
	end

	
	--Hide search for normal loot tables
	if dataID ~= "SearchResult"  then
		self.ui.tabs.Search:Hide()
		self.ui.tabs.Loot.TableScrollFrame:Show()
        self.ui.currentInstanceButton:Show()
        self.ui.favoritesButton:Show()
	else
		self.ui.tabs.Loot.TableScrollFrame:Hide()
        self.ui.currentInstanceButton:Hide()
        self.ui.favoritesButton:Hide()
	end

	--Hide Map and reshow lootbackground
	self.ui.tabs.Map:Hide()
	self.itemframe:Show()

	-- Hide the Filter Check-Box
	self.ui.filterButton:Hide()

	-- Hide the map header lable
	self.ui.difficultyScrollFrame.Lable:Hide()

	-- Enable map button if there is a map for this table.
	if dataSource_backup ~= "AtlasLoot_OnDemand" and dataID ~= "SearchResult" and dataSource_backup ~= "AtlasLoot_CurrentWishList" then
		if dataSource.Map then
		-- Stops map reseting to default while still in the same raid/instance table
			if self.itemframe.refresh == nil or dataID ~= self.itemframe.refresh[1] then
				self.MapNum = 1
				self.CurrentMap = dataSource.Map
			end
		else
			self.CurrentMap = nil
			self.MapNum = nil
		end
	end

	if self.CurrentMap then
		self.ui.tabs.Map.tabButton:Enable()
	else
		self.ui.tabs.Map.tabButton:Disable()
	end

	if dataSource_backup ~= "AtlasLoot_CurrentWishList" then
		self:WishListLockButtonReset()
	end

	local difType = false
	-- Checks to see if type is the same
	if self.CurrentType and dataSource.Type and self.CurrentType ~= dataSource.Type then
		self.ItemindexID = self.type[dataSource.Type] or dataSource.Index or 3
		difType = true
	end

	-- Saves current types self.ItemindexID
	if dataSource.Type then
		self.type[dataSource.Type] = self.ItemindexID
	end

	-- Set current type
	self.CurrentType = dataSource.Type or "Default"

	-- Loads the Difficulties into the scrollFrame
	if dataSource.wishList then
		self:ScrollFrameUpdate(nil,dataSource.wishList)
	else
		self:ScrollFrameUpdate()
	end

	self.dataSourceBackup = dataSource_backup

	-- Finds the tablenumber to set where the difficulty slider should be.
	local function findTypeNumber()
		if not dataSource.Type and not self.Difficulties[dataSource.Type] then return end
		for i,v in ipairs(self.Difficulties[dataSource.Type]) do
			if v[2] == self.ItemindexID then
				return i
			end
		end
	end
	local typeNumber = findTypeNumber() or 1

	-- Moves the difficulty scrollslider if the difficulty has changed
	if dataSource.Type and difType and #self.Difficulties[dataSource.Type] > 5 and typeNumber > 5 then
		local min, max = AtlasLootScrollScrollBar:GetMinMaxValues()
		AtlasLootScrollScrollBar:SetValue(typeNumber * (max / #self.Difficulties[dataSource.Type]))
	end

	--For stopping the subtable from changing if its a token table
	if dataSource.NoSubt == nil then
		local text = self:FixText(dataSource.DisplayName) or self:FixText(dataSource.Name)
		self.ui.submenuButton:SetText(text)
		self:SubTableScrollFrameUpdate(dataID, dataSource_backup, tablenum)
	end

	-- Sets the main page lable
	if dataSource[tablenum][1] then
		local name = self:FixText(dataSource[tablenum][1])
		self.itemframe.Label:SetText(name)
	else
		self.itemframe.Label:SetText("This Is Empty")
		return
	end

	self.itemframe.PageNumber:SetText(self:FixText("Page")..": "..pageNumber.."/"..numberPages)

	-- Create the loottable
	self:ItemFrameUpdate(dataID, dataSource_backup, tablenum, pageNumber)

-----------------------------------------------------------------------------------------------------------------------------

	--Store data about the state of the items frame to allow minor tweaks or a recall of the current loot page
	self.itemframe.refresh = {dataID, dataSource_backup, tablenum, pageNumber}

	if dataSource.Back ~= true then
		self.itemframe.refreshOri = {dataID, dataSource_backup, tablenum, pageNumber}
	end

	if dataID == "SearchResult" then
		self.itemframe.refreshSearch = {dataID, dataSource_backup, tablenum, pageNumber}
	elseif not self.ui.backbutton:IsVisible() then
		self.itemframe.refreshSearch = nil
	end

	if dataSource_backup ~= "AtlasLoot_OnDemand" and dataID ~= "SearchResult" and dataSource_backup ~= "AtlasLoot_CurrentWishList" and
	dataSource.Back ~= true and dataID ~= "EmptyTable" then
		self.db.profile.LastBoss[self.Expac] = {dataID, dataSource_backup, tablenum, self.lastModule, self.currentTable, self.moduleName, pageNumber}
		self.db.profile.savedState[self.currentTable] = {dataID, dataSource_backup, tablenum, self.lastModule, self.currentTable, self.moduleName, pageNumber}
	end

	-- Checks dataID with submenus to stop filter button loading on certain tables
	local function filterCheck(find)
		local mtype = { "Factions", "WorldEvents", "PVP", "Collections", "Vanity"}
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
	if filterCheck(dataID) ~= true or dataSource.vanity or dataSource.filter then
		self.ui.filterButton:Show()
	end

	--Hide navigation buttons by default, only show what we need
	self:ToggleNavigationButtonsVisibility()
	--Set the parent frame and anchor points
	local nextSet = {self.itemframe, {"BOTTOMRIGHT", self.itemframe, "BOTTOMRIGHT",-10,10}}
	local prevSet = {self.itemframe, {"BOTTOMLEFT", self.itemframe, "BOTTOMLEFT",10,10}}
	self:SetNavigationButtonsPoints(nextSet, prevSet)

	self:ToogleWishListButtons()
	self.ui.learnSpellbtn:Hide()

	-- Show Wishlist buttons when a wishlist in showing
	if dataSource_backup == "AtlasLoot_CurrentWishList" then
		self:ToogleWishListButtons(true)
	end

	if dataSource.vanity then
		self.ui.learnSpellbtn:Show()
	end

	local refreshOri_dataSource = self:GetSourceData(self.itemframe.refreshOri[2], self.itemframe.refreshOri[1], tablenum)
	local refresh_dataSource = self:GetSourceData(self.itemframe.refresh[2], self.itemframe.refresh[1], tablenum)
	if self.itemframe.refresh and self.itemframe.refreshOri and tablenum ~= #refreshOri_dataSource and dataSource_backup ~= "AtlasLoot_TokenData" and dataID ~= "SearchResult" or tablenum ~= #refresh_dataSource and dataID == "SearchResult" then
		self.ui.nextbutton:Show()
		self.ui.nextbutton.dataID = dataID
		self.ui.nextbutton.dataSource = self:GetSourceData(dataSource_backup, dataID, tablenum)
		self.ui.nextbutton.dataSource_backup = dataSource_backup
		if  pageNumber == numberPages then
			self.ui.nextbutton.tablenum = tablenum + 1
			self.ui.nextbutton.numberPages = 1
		else
			self.ui.nextbutton.numberPages = pageNumber + 1
			self.ui.nextbutton.tablenum = tablenum
		end
	end

	if tablenum ~= 1 and dataSource_backup ~= "AtlasLoot_TokenData" then
		local dataSourcePrev , _, numberPagesPrev = self:GetSourceData(dataSource_backup, dataID, tablenum - 1)
		self.ui.prevbutton:Show()
		self.ui.prevbutton.dataID = dataID
		self.ui.prevbutton.dataSource = dataSourcePrev
		self.ui.prevbutton.dataSource_backup = dataSource_backup
		if  pageNumber == 1 then
			self.ui.prevbutton.tablenum = tablenum - 1
			self.ui.prevbutton.numberPages = numberPagesPrev
		else
			self.ui.prevbutton.numberPages = pageNumber - 1
			self.ui.prevbutton.tablenum = tablenum
		end
	end

	if dataSource.Back or self.backEnabled then
		self.ui.backbutton:Show()
	else
		self.itemframe.refreshBack = {dataID, dataSource_backup, tablenum, pageNumber}
	end
end

local faction = UnitFactionGroup("player")

--Get whether the item should be displayed and get the itemID that needs to be displayed
function AtlasLoot:GetItemConditionals(item, dataSource)
	if (item and item.faction and item.faction ~= faction) or (item.Server and item.Server ~= self.serverType) or (item and item[1] == "gap") then return end

	local itemID, recipeID
	local show = true
	local itemDif = self.ItemindexID or 3

	local itemType = item.Type or dataSource.Type
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
	local itemName, _, itemQuality, _, _, itemType, itemSubType, _, itemEquipLoc, itemIcon = self:GetItemInfo(itemID)
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
			local location, boss = self:FixText(itemNumber.desc[1]), self:FixText(itemNumber.desc[2])
			extra = self.Colors.YELLOW..location..self.Colors.WHITE.." - "..boss
		else
			extra = self:FixText(itemNumber.desc)
		end
	elseif itemNumber.dropLoc and (self.dataSourceBackup == "AtlasLoot_OnDemand" or (self.selectedProfile.showdropLocationOnSearch and dataID == "SearchResult")) then
		local location, boss = self:FixText(itemNumber.dropLoc[1]), self:FixText(itemNumber.dropLoc[2])
		extra = self.Colors.YELLOW..location..self.Colors.WHITE.." - "..boss
	elseif AtlasLoot_CraftingData["CraftingLevels"] and spellID and AtlasLoot_CraftingData["CraftingLevels"][spellID] and dataID ~= "SearchResult" then
		local lvls = AtlasLoot_CraftingData["CraftingLevels"][spellID]
		local name = self:FixText(dataSource.Name)
		extra = self.Colors.LIMEGREEN .. "L-Click:|r "..self.Colors.WHITE..name.." ( "..self.Colors.ORANGE..lvls[1].."|r "..self.Colors.YELLOW..lvls[2].."|r "..self.Colors.GREEN..lvls[3].."|r "..self.Colors.GREY..lvls[4]..self.Colors.WHITE.." )"
	elseif itemNumber.lootTable and itemNumber.lootTable[2] == "Token" then
		extra = self:FixText("Set Token (Click)")
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
		self:ShowItemsFrame(unpack(self.itemframe.refreshSearch))
	else
		self:ShowItemsFrame(unpack(self.itemframe.refreshBack))
	end
end

--[[
AtlasLoot:NavButton_OnClick:
Called when <-, -> are pressed and calls up the appropriate loot page
]]
function AtlasLoot:NavButton_OnClick(btn)
	if self.ui.tabs.Map:IsVisible() then
		self:MapSelect(btn.mapID, btn.mapNum)
	else
		if #btn.dataSource > 26 then
			local min, max = AtlasLootSubTableScrollScrollBar:GetMinMaxValues()
			AtlasLootSubTableScrollScrollBar:SetValue(btn.tablenum * (max / #btn.dataSource))
		end
		self:ShowItemsFrame(btn.dataID, btn.dataSource_backup, btn.tablenum, btn.numberPages)
	end
end