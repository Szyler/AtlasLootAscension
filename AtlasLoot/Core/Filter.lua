local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


local FilterTable = {
	{
		Name = "Primary Stats",
		Type = "PrimaryStat",
		{"Strength", "ITEM_MOD_STRENGTH_SHORT"},
		{"Agility", "ITEM_MOD_AGILITY_SHORT"},
		{"Intellect", "ITEM_MOD_INTELLECT_SHORT"},
		{"Spirit", "ITEM_MOD_SPIRIT_SHORT"},
	},
	{
		Name = "Secondary Stats",
		Type = "Stat",
		{"Attack Power", "ITEM_MOD_ATTACK_POWER_SHORT"},
		{"Spell Power", "ITEM_MOD_SPELL_POWER_SHORT"},
		{"Crit", "ITEM_MOD_CRIT_RATING_SHORT"},
		{"Hit", "ITEM_MOD_HIT_RATING_SHORT"},
		{"Haste", "ITEM_MOD_HASTE_RATING_SHORT"},
		{"Armor Pen", "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT"},
		{"Spell Pen", "ITEM_MOD_SPELL_PENETRATION_SHORT"}
	},
	{
		Name = "Defensive Stats",
		Type = "Stat",
		{"Defense", "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT"},
		{"Dodge", "ITEM_MOD_DODGE_RATING_SHORT"},
		{"Parry", "ITEM_MOD_PARRY_RATING_SHORT"},
		{"Block", "ITEM_MOD_BLOCK_RATING_SHORT"},
		{"Block Value", "ITEM_MOD_BLOCK_VALUE_SHORT"},
		{"Resilience", "ITEM_MOD_RESILIENCE_RATING"}
	},
}

local VanityFilterTable = {
	{"Owned", "Owned"},
	{"OwnedUnknown", "Owned Unknown"},
	{"OwnedExcludeKnown", "Owned Exclude Known"}
}

local CraftingFilterTable = {
	{"Known", "Known"},
	{"Unknown", "Unknown"},
}

-- **********************************************************************
-- ItemFilter:
--	AtlasLoot:FilterItem()
-- **********************************************************************

function AtlasLoot:FilterItem(item, dataSource, dataID)
	if not self.filterEnable then return true end
	local source = dataSource[dataID]

	-- returns true if item has the desired stats
	local function checkStats(itemStats, sCheck)
		for pStat, sStat in pairs(AtlasLootFilterDB) do
			if sStat[1] and sStat[2] == sCheck and itemStats[pStat] then
				return true
			end
		end
		return false
	end

	-- checks filters for the right conditions
	local function checkfilters(itemStats, sCheck)
		if checkStats(itemStats, sCheck) then return true end
		for _, fTable in ipairs(FilterTable) do
			for _, stat in ipairs(fTable) do
				if fTable.Type == sCheck and AtlasLootFilterDB[stat[2]][1] then
					return false
				end
			end
		end
		return true
	end

	-- checks filters and whether the id is armor or a weapon
	local function getFilterType(itemID)
		if not itemID then return end
		local itemLink, _, _, _, armorCheck = select(2,self:GetItemInfo(itemID))
		if not itemLink then return end
		local itemStats = GetItemStats(itemLink)

		if (armorCheck == "Armor" or armorCheck == "Weapon") and checkfilters(itemStats, "PrimaryStat") and checkfilters(itemStats, "Stat") then
			return true
		elseif armorCheck ~= "Armor" and armorCheck ~= "Weapon" then
			return true
		end
	end

	local function getVanityFilters(itemID, learnedSpellID)
		local db = AtlasLootFilterDB.VanityFilters
		if VANITY_ITEMS[itemID] and VANITY_ITEMS[itemID].learnedSpell and VANITY_ITEMS[itemID].learnedSpell ~= 0 then
			learnedSpellID = VANITY_ITEMS[itemID].learnedSpell
		end

		if C_VanityCollection.IsCollectionItemOwned(itemID) then
			if learnedSpellID and not CA_IsSpellKnown(learnedSpellID) and db["OwnedUnknown"]  then
				return true
			elseif not learnedSpellID and db["OwnedExcludeKnown"] then
				return true
			elseif db["Owned"] then
				return true
			end
		end
	end

	local function getCraftingFilters(spellID)
		local db = AtlasLootFilterDB.CraftingFilters
		if not db["Unknown"] and not db["Known"] then return true end
		if (not CA_IsSpellKnown(spellID) and db["Unknown"]) or (CA_IsSpellKnown(spellID) and db["Known"]) then
			return true
		end
	end

	-- return true if item needs filtering
	if source.vanity then
		if not getVanityFilters(item.itemID, item.learnedSpellID) then
			return false
		else
			return true
		end
	elseif source.Type == "Crafting" and getCraftingFilters(item.spellID) then
		return true
	elseif getFilterType(item.itemID) or item.icon then
		return true
	end

end

function AtlasLoot:FilterEnableButton(frame, btnclick)
	if btnclick == "RightButton" then
		self:FilterMenuOpen(frame)
		self.ui.filterButton:SetChecked(not self.ui.filterButton:GetChecked())
	else
		if self.filterEnable then
			self.filterEnable = false
			self:ShowItemsFrame(self.itemframe.refresh[1], self.itemframe.refresh[2], self.itemframe.refresh[3])
		else
			self.filterEnable = true
			self:ShowItemsFrame(self.itemframe.refresh[1], self.itemframe.refresh[2], self.itemframe.refresh[3])
		end
	end
end

local function disableFilters(current)
	local db = AtlasLootFilterDB.VanityFilters
	for filter, stat in pairs(db) do
	   if stat and current ~= filter then
		  db[filter] = false
	   end
	end
end

--[[
AtlasLoot:FilterMenuOpen:
Constructs the Filter menu.
]]
function AtlasLoot:FilterMenuOpen(frame)
	local menuList = {{},{}}
	local db = AtlasLootFilterDB
	if _G[self.itemframe.refresh[2]][self.itemframe.refresh[1]].vanity then
		for _, filter in ipairs(VanityFilterTable) do
			local db = db.VanityFilters
			db[filter[1]] = db[filter[1]] or false
			table.insert(menuList[1], {text = filter[2], isRadio = true, checked = {db, filter[1]}, dontCloseWhenClicked = true,
			func = function()
				db[filter[1]] = not db[filter[1]]
				disableFilters(filter[1])
				if self.filterEnable then
					self:ShowItemsFrame(self.itemframe.refresh[1], self.itemframe.refresh[2], self.itemframe.refresh[3])
				end
			end})
		end
	elseif _G[self.itemframe.refresh[2]][self.itemframe.refresh[1]].Type == "Crafting" then
		for _, filter in ipairs(CraftingFilterTable) do
			local db = db.CraftingFilters
			db[filter[1]] = db[filter[1]] or false
			table.insert(menuList[1], {text = filter[2], isRadio = true, checked = {db, filter[1]}, dontCloseWhenClicked = true,
			func = function()
				db[filter[1]] = not db[filter[1]]
				disableFilters(filter[1])
				if self.filterEnable then
					self:ShowItemsFrame(self.itemframe.refresh[1], self.itemframe.refresh[2], self.itemframe.refresh[3])
				end
			end
			})
		end
	else
		for _, group in ipairs(FilterTable) do
			table.insert(menuList[1], {text = group.Name, isTitle = true})
			for _, filters in ipairs(group) do
				db[filters[2]] = db[filters[2]] or {false, group.Type}
				table.insert(menuList[1], {text = filters[1], isRadio = true, checked = {AtlasLootFilterDB[filters[2]], 1}, dontCloseWhenClicked = true,
				func = function()
					db[filters[2]][1] = not db[filters[2]][1]
					if self.filterEnable then
						self:ShowItemsFrame(self.itemframe.refresh[1], self.itemframe.refresh[2], self.itemframe.refresh[3])
					end
				end})
			end
		end
	end
	self:OpenDewdropMenu(frame, menuList)
end