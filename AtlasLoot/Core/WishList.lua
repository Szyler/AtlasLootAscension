local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


local playerName = UnitName("player")
local OptionsLoadet
local curaddicon, curaddname = "",""
local curtable = {"","",""}
local editName

AtlasLootWishList = {}
AtlasLoot_CurrentWishList = {selected = 1}

function AtlasLoot:ShowWishList(listNum)
	self.ui.tabs.Loot.TableScrollFrame:Show()
	local listType = (AtlasLoot_CurrentWishList.selected == 2 and "Shared") or "Own"
	AtlasLoot_CurrentWishList.Show = {Name = "WishLists", wishList = true, ListType = listType}
	for _, list in ipairs(AtlasLootWishList[listType]) do
		for i, item in ipairs(list) do
			if i == 1 then
				table.insert(AtlasLoot_CurrentWishList.Show,{Name = list.Name, {}, {}})
			end
			local side = AtlasLoot_CurrentWishList.Show[#AtlasLoot_CurrentWishList.Show][1]
			if i > 15 and i > (#list/2) then
				side = AtlasLoot_CurrentWishList.Show[#AtlasLoot_CurrentWishList.Show][2]
			end
			item.positionNumber = i
			table.insert(side, item)
		end
	end

	self:ShowItemsFrame("Show", "AtlasLoot_CurrentWishList", listNum or 1, 1)
end

-- Change Wishlist item toggle state
AtlasLoot.wishListLockState = "Locked"
function AtlasLoot:WishListItemLockStateClick()
	    if self.wishListLockState == "Locked" then
            self.wishListLockState = "Unlocked"
            self.ui.wishlistLockButton.IconAtlas:SetAtlas("spell-list-unlocked")
		else
			self.wishListLockState = "Locked"
            self.ui.wishlistLockButton.IconAtlas:SetAtlas("spell-list-locked")
        end
        self:ShowItemsFrame("refresh")
end

function AtlasLoot:WishListLockButtonReset()
	self.wishListLockState = "Locked"
    self.ui.wishlistLockButton:SetText("Locked")
end


--Add item too wishlist or show the selected wishlist
function AtlasLoot:AddItemToWishList(typ, tableNum, data, show)
	local itemName = data.name
	if show then
		self:ShowWishList(tableNum)
	else
		local tableCopy = self:CloneTable(data.item)
		table.insert(AtlasLootWishList[typ][tableNum], tableCopy)
		local tNum = #AtlasLootWishList[typ][tableNum]
		AtlasLootWishList[typ][tableNum][tNum].lootTable = data.item.lootTable or {{data.dataID, data.dataSource, data.tablenum}, "Source"}
		AtlasLootWishList[typ][tableNum][tNum].desc = _G[AtlasLootWishList[typ][tableNum][tNum].lootTable[1][2]][AtlasLootWishList[typ][tableNum][tNum].lootTable[1][1]].Name..": ".._G[AtlasLootWishList[typ][tableNum][tNum].lootTable[1][2]][AtlasLootWishList[typ][tableNum][tNum].lootTable[1][1]][AtlasLootWishList[typ][tableNum][tNum].lootTable[1][3]].Name
		if AtlasLootWishList.Options[playerName].AutoSortWishlist then
			self:SortWishList(nil,typ, tableNum)
		end
		DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED.."AtlasLoot"..": "..self:FixText(itemName)..self.Colors.GREY.." added to the WishList."..self.Colors.WHITE.." ("..AtlasLootWishList[typ][tableNum].Name..")")
	end
end

-- Add CustomHeader 
function AtlasLoot:AddItemCustomHeader(num,text)
	if text == "" or text == nil then
		table.insert(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum],num+1,{"gap"})
	else
		table.insert(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum],num+1,{icon = "INV_Box_01", name = self.Colors.WHITE..text})
	end
	self:ShowWishList( self.ui.tabs.Loot.TableScrollFrame.tablenum,self.itemframe.refresh[3])
end

-- Opens edit wishlist name/icon window
function AtlasLoot:EditWishList()
	self:CreateWishlistOptions()
	AtlasLootWishList_AddFrame:Show()
    AtlasLottAddEditWishList:SetText("Edit Wishlist")
    AtlasLootWishListNewName:SetText(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum].Name)
    curaddicon = AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum].Icon
    editName = true
end

-- Moves wishlist item
function AtlasLoot:MoveWishlistItem(pos, itemNum)
	local list = AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum]
	if pos == "Up" and itemNum ~= 1 then
		table.insert(list, itemNum - 1,list[itemNum])
		table.remove(list, itemNum + 1)
	elseif pos == "Down" and itemNum ~= #list then
		table.insert(list, itemNum + 2, list[itemNum])
		table.remove(list, itemNum)
	end
	self:ShowWishList( self.ui.tabs.Loot.TableScrollFrame.tablenum)
end

-- Summon Vanity Off wishlist
function AtlasLoot:GetWishListVanityItems(name)
	local itemList = {}
	for _, wishlist in pairs(AtlasLootWishList["Own"]) do
		if wishlist.Name == name then
			if type(wishlist) == "table" then
				for _, item in pairs(wishlist) do
					local vanityData = VANITY_ITEMS[item.itemID]
					if item.itemID and vanityData and C_VanityCollection.IsCollectionItemOwned(item.itemID) and (vanityData.learnedSpell == 0 or not CA_IsSpellKnown(vanityData.learnedSpell)) then
						table.insert(itemList, item.itemID)
					end
				end
			end
		end
	end
	self:BatchRequestVanity(itemList)
end

-- Sort wishlist
function AtlasLoot:SortWishList(refresh,type,tNumb)
	local sorted = {}
	local name = AtlasLootWishList[type][tNumb].Name
	local icon = AtlasLootWishList[type][tNumb].Icon
		for _,v in ipairs(AtlasLootWishList[type][tNumb]) do
			local function tableCheck()
				for _,t in ipairs(sorted) do
					if t[2][5] == v[5] then
						return t
					end
				end
			end
				if v[2] ~= 0 and tableCheck() then
					table.insert(tableCheck(),v)
				elseif v[2] ~= 0 then
					table.insert(sorted,{{0, 0, "INV_Box_01", self.Colors.WHITE..v[5], ""},v})
				end
		end
		AtlasLootWishList[type][tNumb] = {}
		local num = 1
		for _,v in ipairs(sorted) do
			for _,t in ipairs(v) do
				if num ~= 1 and t[3] == "INV_Box_01" then
					table.insert(AtlasLootWishList[type][tNumb],{num, 0, "Blank", self.Colors.WHITE.." ", ""})
					num = num + 1
				end
					table.insert(AtlasLootWishList[type][tNumb],{num,t[2],t[3],t[4],t[5],t[6],t[7],t[8]})
					num = num + 1
			end
		end
		AtlasLootWishList[type][tNumb].Name = name
		AtlasLootWishList[type][tNumb].Icon = icon
		if refresh then
		self:ShowWishList(type, tNumb)
		end
end

-- Opens add wishlist name/icon window
function AtlasLoot:AddWishList()
	self:CreateWishlistOptions()
	AtlasLootWishList_AddFrame:Show()
    AtlasLottAddEditWishList:SetText("Add Wishlist")
end

-- Clones a shared wishlist to personal table
function AtlasLoot:CloneSharedWishList()
	table.insert(AtlasLootWishList.Own,AtlasLootWishList[self.itemframe.refresh[1]][self.itemframe.refresh[3]])
end

-- Clones a shared wishlist to personal table
function AtlasLoot:SetDefaultWishList()
	if AtlasLoot_CurrentWishList.Show.ListType == "Own" then
		AtlasLootWishList.Options[playerName].DefaultWishList = { AtlasLoot_CurrentWishList.Show.ListType, "AtlasLootWishList", self.ui.tabs.Loot.TableScrollFrame.tablenum}
	end
end

-- Deletes current wishlist
function AtlasLoot:DeleteWishList()
	if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
		StaticPopup_Show("ATLASLOOT_DELETE_WISHLIST")
	end
end

-- Share current wishlist
function AtlasLoot:ShareWishList()
	StaticPopup_Show ("ATLASLOOT_SEND_WISHLIST",AtlasLootWishList.Own[self.ui.tabs.Loot.TableScrollFrame.tablenum].Name)
end

--[[ 
AtlasLoot:ShowWishListTab
Main panel wishlist button
 ]]
function AtlasLoot:ShowWishListTab(button, buttonclick, show)
	if buttonclick == "RightButton" then
		self:WishListOptionsOpen(button)
	elseif buttonclick == "LeftButton" then
		self.ui.tabs.currentTab = "Wishlist"
		if AtlasLootWishList.Own[1] then
			local listNum = AtlasLootWishList.Options[playerName].DefaultWishList
			if not AtlasLootWishList[listNum[1]][listNum[3]] then listNum[3] = 1 end
			self:AddItemToWishList("Own", listNum[3], "", show)
		else
			DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED.."AtlasLoot"..": ".."Please Create a Wishlist First.")
		end
	end
end

local function wishListSettings()
	local allowShare = AtlasLootWishList.Options[playerName].AllowShareWishlist or false	
	local settings = {
	{isRadio = true, text = "Mark items in loot tables", checked = AtlasLootWishList.Options[playerName].Mark or false, show = "Settings",
		func = function()
			if AtlasLootWishList.Options[playerName].Mark then
				AtlasLootWishList.Options[playerName].Mark = false
			else
				AtlasLootWishList.Options[playerName].Mark = true
			end
		end
	},
	{isRadio = true, text = "Mark items from own Wishlist", checked = AtlasLootWishList.Options[playerName].markInTable == "own" and true or false, show = "Settings",
	func = function() 
			if AtlasLootWishList.Options[playerName].markInTable == "own" then
				AtlasLootWishList.Options[playerName].markInTable = "all"
			else
				AtlasLootWishList.Options[playerName].markInTable = "own"
			end
		end
	},
	{isRadio = true, text = "Mark items from all Wishlists", checked = AtlasLootWishList.Options[playerName].markInTable == "all" and true or false, show = "Settings",
	func = function()
			if AtlasLootWishList.Options[playerName].markInTable == "own" then
				AtlasLootWishList.Options[playerName].markInTable = "all"
			else
				AtlasLootWishList.Options[playerName].markInTable = "own"
			end
		end
	},
	
	{isRadio = true, text = "Enable Wishlist Sharing", checked = allowShare, show = "Settings",
	func = function() allowShare = not allowShare end},
	{isRadio = true, text = "Auto reject in combat", checked = AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat or false, show = "Settings",
	func = function() AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat = not AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat end},
	{isRadio = true, text = "Auto Sort WishLists", checked = AtlasLootWishList.Options[playerName].AutoSortWishlist or false, show = "Settings",
	func = function() AtlasLootWishList.Options[playerName].AutoSortWishlist = not AtlasLootWishList.Options[playerName].AutoSortWishlist end},
	}
	return settings

end

--[[
AtlasLoot:DeleteFromWishList()
Deletes the specified items from the wishlist
]]
function AtlasLoot:DeleteFromWishList(item)
	if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
		local name
		if item.name then
			name = item.name
		elseif item.itemID then
			name = GetItemInfo(item.itemID)
		elseif item.spellID then
			name = GetSpellInfo(item.spellID)
		else
			name = "Removed Spacer"
		end
		DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED.."AtlasLoot"..": "..self:FixText(name)..self.Colors.GREY.." deleted from the WishList."..self.Colors.WHITE.." ("..AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum].Name..")")
		table.remove(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum], item.positionNumber)
	end
	self.itemframe:Hide()
	self:ShowWishList( self.ui.tabs.Loot.TableScrollFrame.tablenum,self.itemframe.refresh[3])
 end

--[[
AtlasLoot:WishListCheck(itemID, all):
Returns true if an item is already in the wishlist
]]
function AtlasLoot:WishListCheck(itemID, all, typ, tableNum)
	if not itemID then return false end
	if all == true then
		local rettex = ""
		if not AtlasLootWishList.Options[playerName].markInTable then AtlasLootWishList.Options[playerName].markInTable = "own" end
		if AtlasLootWishList.Options[playerName].markInTable == "own" then
			for k,v in ipairs(AtlasLootWishList.Own) do
				if type(v) == "table" then
					for i,_ in ipairs(AtlasLootWishList.Own[k]) do
						if AtlasLootWishList.Own[k][i].itemID == itemID then
							if AtlasLootWishList.Own[k].Icon ~= "" then
								rettex = rettex.."|T"..AtlasLootWishList.Own[k].Icon..":0|t"
							else
								rettex = rettex.."|TInterface\\Icons\\INV_Misc_QuestionMark:0|t"
							end
							break
						end
					end
				end
			end
		elseif AtlasLootWishList.Options[playerName].markInTable == "all" then
			for k,_ in ipairs(AtlasLootWishList.Own) do
				for i,_ in ipairs(AtlasLootWishList.Own[k]) do
					for b,_ in ipairs(AtlasLootWishList.Own[k][i]) do
						if AtlasLootWishList.Own[k][i][b].itemID == itemID then
							if AtlasLootWishList.Own[k][i].Icon ~= "" then
								rettex = rettex.."|T"..AtlasLootWishList.Own[k][i].Icon..":0|t"
							else
								rettex = rettex.."|TInterface\\Icons\\INV_Misc_QuestionMark:0|t"
							end
							break
						end
					end
				end
			end
            for k,_ in pairs(AtlasLootWishList.Shared) do
				for i,_ in pairs(AtlasLootWishList.Shared[k]) do
					for b,_ in pairs(AtlasLootWishList.Shared[k][i]) do
						if AtlasLootWishList.Shared[k][i][b].itemID == itemID then
							if AtlasLootWishList.Shared[k][i].Icon ~= "" then
								rettex = rettex.."|T"..AtlasLootWishList.Shared[k][i].Icon..":0|t"
							else
								rettex = rettex.."|TInterface\\Icons\\INV_Misc_QuestionMark:0|t"
							end
							break
						end
					end
				end
			end
		end
		if rettex == "" then
			return false
		else
			return true, rettex
		end
	else
		if typ == "Own" then
			for _, v in ipairs(AtlasLootWishList.Own[tableNum]) do
				if v.itemID == itemID then
					return true
				end
			end
		elseif typ == "Shared" then
			for _, v in ipairs(AtlasLootWishList.Shared[tableNum]) do
				if v.itemID == itemID then
					return true
				end
			end
		end
		return false
	end
end

--[[
AtlasLoot:WishListOptionsOpen:
Constructs the wishlist options category menu.
]]
function AtlasLoot:WishListOptionsOpen(button)
	local menuList = {{
			{text = "Add Wishlist", func = function() self:AddWishList() end},
			{text = "Edit Wishlist", func = function() self:EditWishList() end, showOnCondition = self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList"},
			{text = "Sort Wishlist", func = function() self:SortWishList(true,self.ui.tabs.Loot.TableScrollFrame.tablenum) end,  showOnCondition = self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList"},
			{text = "Copy Wishlist To Own", func = function() self:CloneSharedWishList() end, showOnCondition = self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" and AtlasLoot_CurrentWishList.Show.ListType == "Shared"},
			{text = "Make Wishlist Default", func = function() self:SetDefaultWishList() end, showOnCondition = self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" and AtlasLoot_CurrentWishList.Show.ListType == "Own"},
			{text = "Delete Wishlist", func = function() self:DeleteWishList() end,  showOnCondition = self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList"},
			{text = "Settings", value = "Settings", hasArrow = true}
	}}

	menuList[2] = wishListSettings()
	self:OpenDewdropMenu(button, menuList, otherOptions, settingsOption)
end

-- **********************************************************************
-- Options:
--	<local> ClearLines()
--	<local> AddWishListOptions(parrent,name,icon,xxx,tabname,tab2)
--	<local> AddTexture(par, num)
-- 	<local> GenerateTabNum(strg,sender)
--	AtlasLoot_RefreshWishlists()

-- **********************************************************************
local AddWishlist = "new"

local firstload = true

local xpos = 0
local ypos = 0

--[[
StaticPopupDialogs["ATLASLOOT_DELETE_WISHLIST"]
This is shown, if you want too delete a wishlist
]]
StaticPopupDialogs["ATLASLOOT_DELETE_WISHLIST"] = {
	text = "Delete Wishlist",
	button1 = "Delete",
	button2 = "Cancel",
	OnShow = function(self)
		self:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function()
		table.remove(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType], AtlasLoot.ui.lootTableScrollFrame.tablenum)
		AtlasLootWishList.Options[playerName].DefaultWishList[3] = 1
		if AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][1] == nil then
			AtlasLoot:ShowItemsFrame("EmptyTable", "AtlasLoot_Data", 1, 1)
		else
			AtlasLoot:ShowWishList( 1)
		end
		AtlasLoot.Dewdrop:Close(1)
	end,
	OnCancel = function ()
		AtlasLoot.Dewdrop:Close(1)
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
}

--[[
StaticPopupDialogs["ATLASLOOT_GET_WISHLIST"]
This is shown, if someone send you a wishlist
]]
StaticPopupDialogs["ATLASLOOT_GET_WISHLIST"] = {
	text = "%s sends you a Wishlist. Accept?",
	button1 = ACCEPT,
	button2 = CANCEL,
	OnShow = function(self)
		self:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function(self,data)
		AtlasLoot:SendCommMessage("AtlasLootWishlist", "AcceptWishlist", "WHISPER", data)
	end,
	OnCancel = function (self,data)
		AtlasLoot:SendCommMessage("AtlasLootWishlist", "CancelWishlist", "WHISPER", data)
	end,
	timeout = 15,
	whileDead = 1,
	hideOnEscape = 1
}

--[[
<local> AddTexture(par, num)
Add a Icon too the AddFrame. 
]]
local function AddTexture(par, num)
	local iconTexture = GetMacroIconInfo(num)

	local Button = CreateFrame("BUTTON", nil, par, "UIPanelButtonTemplate")
		Button:SetHeight(20)
		Button:SetWidth(20)  
		Button:SetPoint("TOPLEFT", par, "TOPLEFT", xpos, ypos)
		Button:SetText("")
		Button:SetScript("OnClick", function()
			if AddWishlist == "new" then
				AtlasLootPrevTexture:SetTexture(iconTexture)
				curaddicon = iconTexture
			elseif AddWishlist == "edit" then
				AtlasLootPrevTexture:SetTexture(iconTexture)
				curaddicon = iconTexture
			end
		end)

	local Textur = Button:CreateTexture("textur","OVERLAY")
		Textur:SetPoint("TOPLEFT", Button, "TOPLEFT")
		Textur:SetTexture(iconTexture)
		Textur:SetHeight(20)
		Textur:SetWidth(20)

	if xpos == 280 then
		xpos = 0
		ypos = ypos - 20
	else
		xpos = xpos + 20
	end
end

function AtlasLoot:WishlistSetup()
	if not AtlasLootWishList.Own then AtlasLootWishList.Own = {Name = "Wishlists"} end
	if not AtlasLootWishList.Shared then AtlasLootWishList.Shared = {Name = "Shared Wishlists"} end
	if not AtlasLootWishList.Options then AtlasLootWishList.Options = {} end
	if not AtlasLootWishList.Options[playerName] then AtlasLootWishList.Options[playerName] = {} end
	if AtlasLootWishList.Options[playerName].Mark ~= true and AtlasLootWishList.Options[playerName].Mark ~= false then AtlasLootWishList.Options[playerName].Mark = true end
	if not AtlasLootWishList.Options[playerName].markInTable then AtlasLootWishList.Options[playerName].markInTable = "own" end
	if AtlasLootWishList.Options[playerName].AllowShareWishlist ~= true and AtlasLootWishList.Options[playerName].AllowShareWishlist ~= false then AtlasLootWishList.Options[playerName].AllowShareWishlist = true end
	if AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat ~= true and AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat ~= false then AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat = true end
	if AtlasLootWishList.Options[playerName].UseDefaultWishlist ~= true and AtlasLootWishList.Options[playerName].UseDefaultWishlist ~= false then AtlasLootWishList.Options[playerName].UseDefaultWishlist = false end
	if not AtlasLootWishList.Options[playerName].DefaultWishList then AtlasLootWishList.Options[playerName].DefaultWishList = {"Own", "AtlasLootWishList", 1} end
end
--[[
AtlasLoot:CreateWishlistOptions()
Create the Options for the Wishlists(called on variables loadet)
]]
function AtlasLoot:CreateWishlistOptions()
	if OptionsLoadet then return end
	-- Add wishlistframe --
	local WishListAddFrame = CreateFrame("FRAME","AtlasLootWishList_AddFrame",UIParent)
		WishListAddFrame:Hide()
		WishListAddFrame:SetFrameStrata("TOOLTIP")
		WishListAddFrame:SetWidth(350)
		WishListAddFrame:SetHeight(250)
		WishListAddFrame:SetPoint("CENTER",UIParent)
		WishListAddFrame:SetBackdrop({
			bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
			edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
			tile = true, tileSize = 16, edgeSize = 16, 
			insets = { left = 4, right = 4, top = 4, bottom = 4 }})
		WishListAddFrame:SetMovable(true)
		WishListAddFrame:EnableMouse(true)
		WishListAddFrame:RegisterForDrag("LeftButton")
		WishListAddFrame:RegisterForDrag("LeftButton", "RightButton")
		WishListAddFrame:SetScript("OnMouseDown", function(button)
			button:StartMoving()
		end)
		WishListAddFrame:SetScript("OnMouseUp", WishListAddFrame.StopMovingOrSizing)

	local Textur = WishListAddFrame:CreateTexture("AtlasLootPrevTexture","OVERLAY")
		Textur:SetPoint("TOPRIGHT", WishListAddFrame, "TOPRIGHT", -40, -10)
		Textur:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
		Textur:SetHeight(40)
		Textur:SetWidth(40)

	local Text = WishListAddFrame:CreateFontString("AtlasLootAddWishListName","OVERLAY","GameFontNormal")
		Text:SetPoint("TOPLEFT", WishListAddFrame, "TOPLEFT", 10, -5)
		Text:SetText("Wishlist name:")
		Text:SetHeight(20)

	local Edit1 = CreateFrame("EditBox", "AtlasLootWishListNewName", WishListAddFrame, "InputBoxTemplate")
		Edit1:SetPoint("LEFT", WishListAddFrame, "TOPLEFT", 15, -37)
		Edit1:SetWidth(250)
		Edit1:SetHeight(32)
		Edit1:SetAutoFocus(false)
		Edit1:SetTextInsets(0, 8, 0, 0)
		Edit1:SetScript("OnEnterPressed", function(frame)
			frame:ClearFocus()
			local text = frame:GetText()
			curaddname = text
		end)
		Edit1:SetScript("OnShow", function(frame)
			frame:SetText(curaddname)
		end)

	local CloseButton = CreateFrame("BUTTON",nil, WishListAddFrame, "UIPanelCloseButton")
		CloseButton:SetPoint("TOPRIGHT", WishListAddFrame, "TOPRIGHT", -5, -5)	

	local WishListIconListSc = CreateFrame("ScrollFrame", "AtlasLootWishlistAddFrameIconList", WishListAddFrame, "UIPanelScrollFrameTemplate")
	local WishlistIconListIn = CreateFrame("Frame", "AtlasLootWishlistAddFrameIconListInhalt", WishListIconListSc)
		WishListIconListSc:SetScrollChild(WishlistIconListIn)
		WishListIconListSc:SetPoint("TOPLEFT", WishListAddFrame, "TOPLEFT", 10, -60)
		WishlistIconListIn:SetPoint("TOPLEFT", WishListIconListSc, "TOPLEFT", 0, 0)
		WishListIconListSc:SetWidth(310)  
		WishListIconListSc:SetHeight(150) 
		WishlistIconListIn:SetWidth(310)  
		WishlistIconListIn:SetHeight(150)  
		WishListIconListSc:SetHorizontalScroll(-50)
		WishListIconListSc:SetVerticalScroll(50)
		WishListIconListSc:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile="", tile = false, tileSize = 0, edgeSize = 0, insets = { left = 0, right = 0, top = 0, bottom = 0 }})
		WishListIconListSc:SetScript("OnVerticalScroll", function()  end)
		WishListIconListSc:EnableMouse(true)
		WishListIconListSc:SetVerticalScroll(0)
		WishListIconListSc:SetHorizontalScroll(0)

	local AddWishlistFr = CreateFrame("BUTTON", "AtlasLottAddEditWishList", WishListIconListSc, "UIPanelButtonTemplate")
		AddWishlistFr:SetHeight(20)
		AddWishlistFr:SetWidth(150)  
		AddWishlistFr:SetPoint("TOPLEFT", WishListIconListSc, "TOPLEFT",0,-1*(AtlasLootWishlistAddFrameIconList:GetHeight() + 5))
		AddWishlistFr:SetText("Add Wishlist")
		AddWishlistFr:SetScript("OnClick", function()
			curaddname = AtlasLootWishListNewName:GetText()
			if editName then
				if curaddicon == "" then
					curaddicon = "Interface\\Icons\\INV_Misc_QuestionMark"
				elseif curaddicon ~= "" then
					AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum].Name = curaddname
					AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][self.ui.tabs.Loot.TableScrollFrame.tablenum].Icon = curaddicon
					WishListAddFrame:Hide()
					self:ShowWishList( self.ui.tabs.Loot.TableScrollFrame.tablenum)
				end
			else
				if curaddicon == "" then
					curaddicon = "Interface\\Icons\\INV_Misc_QuestionMark"
				elseif curaddicon ~= "" then
					table.insert( AtlasLootWishList.Own,{Name = curaddname, Icon = curaddicon})
					WishListAddFrame:Hide()
					if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
						self:ShowWishList( self.ui.tabs.Loot.TableScrollFrame.tablenum)
					end
				end
			end
			editName = false
			curaddicon = ""
			curaddname = ""
		end)

	local AddWishlistIcons = CreateFrame("BUTTON", nil, WishListIconListSc, "UIPanelButtonTemplate")
		AddWishlistIcons:SetHeight(20)
		AddWishlistIcons:SetWidth(150)  
		AddWishlistIcons:SetPoint("TOPLEFT", WishListIconListSc, "TOPLEFT",160,-1*(AtlasLootWishlistAddFrameIconList:GetHeight() + 5))
		AddWishlistIcons:SetText("Show More Icons")
		AddWishlistIcons:SetScript("OnClick", function()
			for i=211,GetNumMacroIcons() do
				AddTexture(WishlistIconListIn, i)
			end
		end)

		WishListAddFrame:SetScript("OnShow", function()
			if firstload then
				for i=1,210 do
					AddTexture(WishlistIconListIn, i)
				end
				firstload = false
			end
			if curaddicon == "" then
				AtlasLootPrevTexture:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
			else
				AtlasLootPrevTexture:SetTexture(curaddicon)
			end
		end)
	OptionsLoadet = true
end

-- **********************************************************************
-- WishListShare:
--	<local>SpamProtect(name)
--	AtlasLoot_GetWishList(wlstrg,sendername)
--	AtlasLoot:OnCommReceived(prefix, message, distribution, sender)
-- **********************************************************************

local SpamFilter = {}
local SpamFilterTime = 10


--[[
<local> SpamProtect(name)
Check Spamfilter table
]]
local function SpamProtect(name)
	if not name then return true end
	if SpamFilter[string.lower(name)] then
		if GetTime() - SpamFilter[string.lower(name)] > SpamFilterTime then
			SpamFilter[string.lower(name)] = nil
			return true
		else
			return false
		end
	else
		return true
	end
end

--[[
AtlasLoot:GetWishList(wlstrg,sendername)
Get the Wishlist, Deserialize it and save it in the savedvariables table
]]
function AtlasLoot:GetWishList(wlstrg,sendername)
	if AtlasLootWishList.Shared.Name == nil then
		AtlasLootWishList.Shared.Name = "Shared Wish Lists"
	end
	local success, wltab = AtlasLoot:Deserialize(wlstrg)
	if success then
		table.insert(AtlasLootWishList.Shared,wltab)
	end
end

--[[
AtlasLoot:OnCommReceived(prefix, message, distribution, sender)
Incomming messages from AceComm
]]
function AtlasLoot:OnCommReceived(prefix, message, distribution, sender)
	if prefix ~= "AtlasLootWishlist" then return end
	if message == "SpamProtect" then
		--local _,_,timeleft = string.find( 10-(GetTime() - SpamFilter[string.lower(sender)]), "(%d+)%.")
		--DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE.."AtlasLoot"..": "..self.Colors.RED.."You must wait "..self.Colors.WHITE..timeleft..self.Colors.RED.." seconds before you can send a new Wishlist too "..self.Colors.WHITE..sender..self.Colors.RED..".")
	elseif message == "FinishSend" then
		SpamFilter[string.lower(sender)] = GetTime()
	elseif message == "AcceptWishlist" then
		local sendData = self:Serialize(_G[curtable[2]][curtable[1]][curtable[3]])
		self:SendCommMessage("AtlasLootWishlist", sendData, "WHISPER", sender)
	elseif message == "WishlistRequest" then

		if AtlasLootWishList.Options[playerName]["AllowShareWishlist"] == true then
			if AtlasLootWishList.Options[playerName]["AllowShareWishlistInCombat"] == true then
				if UnitAffectingCombat("player") then
					self:SendCommMessage("AtlasLootWishlist", "CancelWishlist", "WHISPER", sender)
					DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE.."AtlasLoot"..": "..self.Colors.WHITE..sender..self.Colors.RED.." tried to send you a Wishlist. Rejected because you are in combat.")
				else
					local dialog = StaticPopup_Show("ATLASLOOT_GET_WISHLIST", sender)
					if ( dialog ) then
						dialog.data = sender
					end
				end
			else
				local dialog = StaticPopup_Show("ATLASLOOT_GET_WISHLIST", sender)
				if ( dialog ) then
					dialog.data = sender
				end
			end
		else
			self:SendCommMessage("AtlasLootWishlist", "CancelWishlist", "WHISPER", sender)
		end

	elseif message == "CancelWishlist" then
		DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE.."AtlasLoot"..": "..self.Colors.WHITE..sender..self.Colors.RED.." rejects your Wishlist.")
	else
		SpamFilter[string.lower(sender)] = GetTime()
		self:GetWishList(message,sender)
		self:SendCommMessage("AtlasLootWishlist", "FinishSend", "WHISPER", sender)
	end
end

--[[
StaticPopupDialogs["ATLASLOOT_SEND_WISHLIST"]
This is shown, if you want too share a wishlist
]]
StaticPopupDialogs["ATLASLOOT_SEND_WISHLIST"] = {
	text = "Send Wishlist (%s) to",
	button1 = "Send",
	button2 = "Cancel",
	OnShow = function(self)
		self:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function(self)
		local name = _G[self:GetParent():GetName().."EditBox"]:GetText()
		if string.lower(name) == string.lower(playerName) then
			DEFAULT_CHAT_FRAME:AddMessage(AtlasLoot.Colors.BLUE.."AtlasLoot"..": "..AtlasLoot.Colors.RED.."You can't send Wishlists to yourself.")
		elseif name == "" then

		else
			if SpamProtect(string.lower(name)) then
				curtable = { "AtlasLootWishList", AtlasLoot.ui.lootTableScrollFrame.tablenum}
				AtlasLoot:SendCommMessage("AtlasLootWishlist", "WishlistRequest", "WHISPER", name)
			else
				local _,_,timeleft = string.find( 10-(GetTime() - SpamFilter[string.lower(name)]), "(%d+)%.")
				DEFAULT_CHAT_FRAME:AddMessage(AtlasLoot.Colors.BLUE.."AtlasLoot"..": "..AtlasLoot.Colors.RED.."You must wait "..AtlasLoot.Colors.WHITE..timeleft..AtlasLoot.Colors.RED.." seconds before you can send a new Wishlist to "..AtlasLoot.Colors.WHITE..name..AtlasLoot.Colors.RED..".")
			end
		end
	end,
	hasEditBox = 1,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
}

--[[
StaticPopupDialogs["ATLASLOOT_ADD_CUSTOMHEADER"]
This is shown, if you want too add a CustomHeader to a wishlist
]]
StaticPopupDialogs["ATLASLOOT_ADD_CUSTOMHEADER"] = {
	text = "Add text for a Custom Header or leave blank for a blank",
	button1 = "Set Text",
	button2 = "Cancel",
	OnShow = function(self)
		self:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function(self)
		local text = _G[self:GetName().."EditBox"]:GetText()
		AtlasLoot:AddItemCustomHeader(StaticPopupDialogs.ATLASLOOT_ADD_CUSTOMHEADER.num,text)
	end,
	hasEditBox = 1,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
}

function AtlasLoot:ExportString()
	local listType = (AtlasLoot_CurrentWishList.selected == 2 and "Shared") or "Own"
	Internal_CopyToClipboard("AL:"..self:Serialize(AtlasLootWishList[listType][AtlasLoot.ui.lootTableScrollFrame.tablenum]))
	DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE.."AtlasLoot"..": "..self.Colors.YELLOW.."Wishlist Exported to clipboard")
end

function AtlasLoot:ShareMenu(button)
	local menuList = { [1] = {
		{text = "Send to Player", func = function() self:ShareWishList() end},
		{text = "Export to String", func = function() self:ExportString() end},
		{text = "Import String", func = function() StaticPopup_Show("ATLASLOOT_IMPORT_WISHLIST") end},
	} }
    self:OpenDewdropMenu(button, menuList)
end

--[[
StaticPopupDialogs["MYSTICMAESTRO_IMPORT_SHOPPINGLIST"]
This is shown, if you want too import an EnchantList
]]
StaticPopupDialogs["ATLASLOOT_IMPORT_WISHLIST"] = {
	text = "Paste WishList String To Import",
	button1 = "Import",
	button2 = "Cancel",
	OnShow = function(self)
		AtlasLoot.Dewdrop:Close()
		self:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function(self)
		local data = string.sub(_G[self:GetName().."EditBox"]:GetText(), 3)
		AtlasLoot:GetWishList(data)
		DEFAULT_CHAT_FRAME:AddMessage(AtlasLoot.Colors.BLUE.."AtlasLoot"..": "..AtlasLoot.Colors.YELLOW.."Wishlist Imported Successfully")
	end,
	hasEditBox = 1,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
}
