local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


	local function CollectionNames(cat)
		local C_names = {
			["Axe1H"] = "One-Handed Axes",
			["Axe2H"] = "Two-Handed Axes",
			["Sword1H"] = "One-Handed Sword",
			["Sword2H"] = "Two-Handed Sword",
			["Mace1H"] = "One-Handed Mace",
			["Mace2H"] = "Two-Handed Mace",
		}
		return C_names[cat] or cat
	end

	local extraCategories = {
		Weapons = {
			VanityAxe1H = "One-Handed Axes",
			VanityAxe2H = "Two-Handed Axes",
			VanitySword1H = "One-Handed Swords",
			VanitySword2H = "Two-Handed Swords",
			VanityMace1H = "One-Handed Maces",
			VanityMace2H = "Two-Handed Maces",
			VanityDagger = "Daggers",
			VanityFist = "Fist Weapons",
			VanityShield = "Shields",
			VanityPolearm = "Polearms",
			VanityBows = "Bows",
			VanityGuns = "Guns",
			VanityCrossbows = "Crossbows",
			VanityThrown = "Thrown",
			VanityWands = "Wands",
			VanityStaves = "Staves",
			VanityFishingPole = "Fishing Poles",
			VanityOffHand = "Off Hands",
		},
		Armor = {
			VanityHead = "Head",
			VanityShoulder = "Shoulders",
			VanityChest = "Chests",
			VanityWaist = "Waist",
			VanityLegs = "Legs",
			VanityFeet = "Feet",
			VanityWrist = "Wrist",
			VanityHands = "Hands",
			VanityBack = "Back",
			VanitySets = "Sets",
		},
		Miscellaneous = {
			VanityShirt = "Shirts",
			VanityTabard = "Tabards",
			VanityBackpack = "Backpacks",
			VanityIllusion = "Illusions",
		},
		Spells = {
			VanityVisual = "Spell Visuals",
			VanityEffect = "Effects",
			VanityIncarnation = "Incarnations",
		},
		TamedPets = {
			VanityWhistle = "Whistles",
			VanitySummonStone = "Summon Stones",
			VanityVellum = "Vellums",
			VanityWarhorn = "Warhorns",
			VanityLodestone = "Lodestones",
		}
	}

function AtlasLoot:CreateVanityCollection()
	self:InitializeDataTables()
	local itemData = self.data.item

	local function createCategory(cat, name)
		cat = gsub(cat, "Vanity", "")
		if itemData["Vanity"..cat] then return end
		local menuData = {}
		for mainCatName, mainCat in pairs(extraCategories) do
			if mainCat["Vanity"..cat] then
				menuData["Vanity"..mainCatName] = menuData["Vanity"..mainCatName] or {Name = mainCatName, vanity = true, Module = "AtlasLoot_Ascension_Vanity"}
				for catName, catDisplayName in pairs (mainCat) do
					itemData[catName] = { dontSort = true, vanityCollection = true, {} }
					table.insert(menuData["Vanity"..mainCatName], {catDisplayName, {catName}})
				end
				break
			end
		end
		if #menuData == 0 then
			itemData["Vanity"..cat] = { dontSort = true, vanityCollection = true, {} }
			menuData["Vanity"..cat] = menuData["Vanity"..cat] or {Name = name, vanity = true, Module = "AtlasLoot_Ascension_Vanity"}
			table.insert(menuData["Vanity"..cat], {name, {"Vanity"..cat}})
		end
		self:AddNewMenus(menuData)
	end

	local function findGroup(group)
		for cat, flag in pairs(Enum.VanityCategory) do
			if type(flag) == "table" then
				for subcat, subflag in pairs(flag) do
					createCategory(subcat, CollectionNames(subcat))
					if bit.contains(subflag, group) then
						return "Vanity"..subcat
					end
				end
			else
				createCategory(cat, CollectionNames(cat))
				if bit.contains(flag, group) then
					return "Vanity"..cat
				end
			end
		end
		createCategory("VanityUncategorized", "Uncategorized")
		return "VanityUncategorized"
	end

    local function setGroup(group, name)
		createCategory(group, name or group)
		return "Vanity"..group
    end

    local function excludePets(item)
        local excludeList = { "Beastmaster's Whistle:", "Elemental Lodestone:", "Summoner's Stone:", "Blood Soaked Vellum:",  }
        for _, pet in pairs(excludeList) do
            if item.name:find(pet, 1, true) then return end
        end
        return true
    end

    local function setGroupByName(item)
        local list = {
        ["Beastmaster's Whistle:"] = {"Whistle", "Whistles"} ,
        ["Elemental Lodestone:"] = {"Lodestone", "Lodestones"},
        ["Summoner's Stone:"] = {"SummonStone", "SummonStones"},
        ["Blood Soaked Vellum:"] = {"Vellum", "Vellums"},
        ["Draconic Warhorn:"] = {"Warhorn", "Warhorns"},
        ["Stone of Retreat:"] = {"StonesOfRetreat", "Stones of Retreat"},
        ["Incarnation:"] = {"Incarnation", "Incarnations"},
		["Tome of"] = {"Tomes", "Tomes"},
    }
        for Type, category in pairs(list) do
            if item.name:find(Type, 1, true) then return category end
        end
    end

	local categorieList = {}
	for _, item in pairs(self:GetVanityItems()) do
        local group
		local flavor = GetItemFlavorText(item.itemid)
        local itemInfo = {self:GetItemInfo(item.itemid, true)}
        local itemType, itemSlot, itemDescription = itemInfo[7], itemInfo[9], itemInfo[12]
        local slotName, slotAltName = self.Equipment:GetSlotName(itemSlot) or self.Equipment:GetSlotName(itemType)
        local groupByName = setGroupByName(item)
		if item.quality == 7 then
            group = setGroup("Heirlooms")
		elseif flavor:lower():find("|cff33fff0manastorm", 1, true) then
            group = setGroup("Manastorm")
		elseif groupByName then
            group = setGroup(groupByName[1], groupByName[2])
        elseif itemDescription:find("A Cosmetic set", 1, true) then
            group = setGroup("Sets")
        elseif itemType == "Pet" and excludePets(item) then
            group = setGroup("Pets")
		elseif itemType == "Key" and excludePets(item) then
            group = setGroup("Keys")
        elseif itemType == "Mount" then
            group = setGroup("Mounts")
        elseif slotName then
            group = setGroup(slotName, slotAltName or slotName)
		else
			group = findGroup(item.group)
		end

		if not group then break end

		local contentsPreview
		if item.contentsPreview and #item.contentsPreview > 1 then
			contentsPreview = {}
			for _,itemID in pairs(item.contentsPreview) do
				table.insert(contentsPreview, { itemID = itemID })
			end
		end
		local description
		if item.description ~= "" then
			description = item.description
		end
		local price = item.btCost > 0 and item.btCost .. " #bazaar#" or nil
		if not categorieList[group] then categorieList[group] = {} end
		table.insert(categorieList[group], { itemID = item.itemid, extraInfo = description, contentsPreview = contentsPreview, vanityItem = true, price = price })
	end

	for groupName, categorie in pairs(categorieList) do
		createCategory(groupName, groupName)
		for _, item in ipairs(categorie) do
			local group = itemData[groupName]
			if #group[#group] >= 30 then
				table.insert(group, {})
			end
			table.insert(group[#group], item)
		end
	end
	
end

function AtlasLoot:LearnAllUnknownVanitySpells()
	local unknownSpells = {}
	local function parseCollection(group)
		if self.data.item[group] then
			for _, category in ipairs(self.data.item[group]) do
				for _, item in ipairs(category) do
					if type(item) == "table" and item.itemID and C_VanityCollection.IsCollectionItemOwned(item.itemID) and self:GetVanityItemInfo(item.itemID) and
					not CA_IsSpellKnown(self:GetVanityItemInfo(item.itemID).learnedSpell) and self:GetVanityItemInfo(item.itemID).learnedSpell ~= 0 then
						local _, itemLink = self:GetItemInfo(item.itemID)
						local spellName = GetSpellInfo(self:GetVanityItemInfo(item.itemID).learnedSpell)
						local itemTooltipInfo = self:GetTooltipItemInfo(itemLink)
						if (itemTooltipInfo and not itemTooltipInfo.isKnown) and not unknownSpells[spellName] or
						(unknownSpells[spellName] and item.itemID > unknownSpells[spellName]) then
							unknownSpells[spellName] = item.itemID
						end
					end
				end
			end
		end
	end
	for _, group in pairs(self.ui.menus.collection["CollectionsAscensionCLASSIC"]) do
		parseCollection(group[1])
	end
	local newSpellList = {}
	for _, itemID in pairs(unknownSpells) do
		table.insert(newSpellList, itemID)
	end
	self:BatchRequestVanity(newSpellList)
end

function AtlasLoot:BatchRequestVanity(itemList)
	itemList = self:CloneTable(itemList)
	local duplicateList = {}
	for _, id in pairs(itemList) do
		duplicateList[id] = duplicateList[id] and duplicateList[id] + 1 or 1
	end
	local function nextItem()
        local task = tremove(itemList)
		while task do
			self:DeliverVanityItem(task)
            local count = GetItemCount(task)
			if not CA_IsSpellKnown(self:GetVanityItemInfo(task).learnedSpell) and (not count or (count and count < duplicateList[task])) then
				table.insert(itemList, task)
			end
			return Timer.After(.2, nextItem)
        end
		DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE.."AtlasLoot"..": "..self.Colors.YELLOW.."Retrieving Vanity Items Completed!")
    end
    return nextItem()
end

local vanityItems
function AtlasLoot:GetVanityItems()
	if not vanityItems then vanityItems = C_VanityCollection.GetAllItems() end
	return vanityItems
end

function AtlasLoot:GetVanityItemInfo(id)
	return self:GetVanityItems()[id]
end

function AtlasLoot:DeliverVanityItem(item)
  if RequestDeliverVanityCollectionItem then
    RequestDeliverVanityCollectionItem(item)
  elseif C_VanityCollection.RequestDelivery then
    C_VanityCollection.RequestDelivery(item)
  end
end