local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local function CollectionNames(cat)
	local C_names = {
		["Axe1H"] = "One-Handed Axes",
		["Axe2H"] = "Two-Handed Axes",
		["Sword1H"] = AL["One-Handed Sword"],
		["Sword2H"] = AL["Two-Handed Sword"],
		["Mace1H"] = AL["One-Handed Mace"],
		["Mace2H"] = AL["Two-Handed Mace"],
	}
	return C_names[cat] or cat
end

-- Text Conversion
local equipSlot = {
	INVTYPE_HEAD = {"Head"}, INVTYPE_SHOULDER = {"Shoulder"}, INVTYPE_CHEST = {"Chest"},
	INVTYPE_WRIST = {"Wrist"}, INVTYPE_HAND = {"Hands"}, INVTYPE_WAIST = {"Waist"},
	INVTYPE_LEGS = {"Legs"}, INVTYPE_FEET = {"Feet"}, INVTYPE_FINGER = {"Ring"},
	INVTYPE_CLOAK = {"Back"}, INVTYPE_NECK = {"Neck"},
	INVTYPE_TRINKET = {"Trinket"}, INVTYPE_BODY = {"Shirt"}, INVTYPE_TABARD = {"Tarbard"},
    ["One-Handed Axes"] = {"Axe1H","One-Handed Axes"}, ["Two-Handed Axes"] = {"Axe2H","Two-Handed Axes"},
	["One-Handed Swords"] = {"Sword1H","One-Handed Swords"}, ["Two-Handed Swords"] = {"Sword2H","Two-Handed Swords"},
	["One-Handed Maces"] = {"Mace1H","One-Handed Maces"}, ["Two-Handed Maces"] = {"Mace2H","Two-Handed Maces"},
	Daggers = {"Dagger", "Daggers"},
	["Fist Weapons"] = {"Fist", "Fist Weapons"},
	Shields = {"Shield"},
	Polearms = {"Polearm"},
	Bows = {"Bows"},
	Guns = {"Guns"},
	Crossbows = {"Crossbows"},
	Thrown = {"Thrown"},
	Wands = {"Wands"},
	Staves = {"Staves"},
	["Fishing Poles"] = {"FishingPole", "Fishing Poles"},
	OffHands = {"OffHand", "OffHands"},
    Consumable = {"Consumable"},
}

-- Combind robes with chest
local function getEquipSlot(equipLoc, equipeType)
	if equipLoc == "INVTYPE_ROBE" then
		equipLoc = "INVTYPE_CHEST"
	end
	return equipSlot[equipLoc] or equipSlot[equipeType]
end


function AtlasLoot:CreateVanityCollection()
	local function findGroup(group)
		for cat, flag in pairs(Enum.VanityCategory) do
			if type(flag) == "table" then
				for subcat, subflag in pairs(flag) do
					if not AtlasLoot_Data["Vanity"..subcat] then AtlasLoot_Data["Vanity"..subcat] = { Name = CollectionNames(subcat), vanity = true, Module = "AtlasLoot_Ascension_Vanity" } end
					if bit.contains(subflag, group) then
						return "Vanity"..subcat
					end
				end
			else
				if not AtlasLoot_Data["Vanity"..cat] then AtlasLoot_Data["Vanity"..cat] = { Name = CollectionNames(cat), vanity = true, Module = "AtlasLoot_Ascension_Vanity" } end
				if bit.contains(flag, group) then
					return "Vanity"..cat
				end
			end
		end
		if not AtlasLoot_Data["VanityUncategorized"] then AtlasLoot_Data["VanityUncategorized"] = { Name = CollectionNames("Uncategorized"), vanity = true, Module = "AtlasLoot_Ascension_Vanity" } end
		return "VanityUncategorized"
	end

    local function setGroup(group, name)
       	if not AtlasLoot_Data["Vanity"..group] then AtlasLoot_Data["Vanity"..group] = { Name = AL[name or group], vanity = true, Module = "AtlasLoot_Ascension_Vanity" } end
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
        for Type, catagory in pairs(list) do
            if item.name:find(Type, 1, true) then return catagory end
        end
    end

	local categorieList = {}
	for _, item in pairs(VANITY_ITEMS) do
        local group
		local flavor = GetItemFlavorText(item.itemid)
        local itemInfo = {self:GetItemInfo(item.itemid, true)}
        local itemType, itemSlot, itemDescription = itemInfo[7], itemInfo[9], itemInfo[12]
        local isItemSlot = getEquipSlot(itemSlot, itemType)
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
        elseif isItemSlot then
            group = setGroup(isItemSlot[1], isItemSlot[2] or isItemSlot[1])
		else
			group = findGroup(item.group)
		end

		if not group then break end

		local contentsPreview
		if item.contentsPreview and #item.contentsPreview > 1 then
			contentsPreview = {}
			for _,itemID in pairs(item.contentsPreview) do
				tinsert(contentsPreview, { itemID = itemID })
			end
		end
		local description
		if item.description ~= "" then
			description = item.description
		end
		local price = item.btCost > 0 and item.btCost .. " #bazaar#" or nil
		if not categorieList[group] then categorieList[group] = {} end
		tinsert(categorieList[group], { itemID = item.itemid, extraInfo = description, contentsPreview = contentsPreview, vanityItem = true, price = price })
	end
	for groupName, categorie in pairs(categorieList) do
		for i, item in ipairs(categorie) do
			if not AtlasLoot_Data[groupName][1] then
				AtlasLoot_Data[groupName][1] = {Name = groupName, {}, {}}
			end
			local pageSide = AtlasLoot_Data[groupName][1][1]
			if i > 15 and i > (#categorie/2) then
				pageSide = AtlasLoot_Data[groupName][1][2]
			end
			tinsert(pageSide, item)
		end
	end
end

function AtlasLoot:LearnAllUnknownVanitySpells()
	local unknownSpells = {}
	local function parseCollection(group)
		for _, catagory in ipairs(AtlasLoot_Data[group]) do
			for _, side in ipairs(catagory) do
				if type(catagory) == "table" then
					for _, item in ipairs(side) do
						if type(item) == "table" and item.itemID and C_VanityCollection.IsCollectionItemOwned(item.itemID) and VANITY_ITEMS[item.itemID] and
						not CA_IsSpellKnown(VANITY_ITEMS[item.itemID].learnedSpell) and VANITY_ITEMS[item.itemID].learnedSpell ~= 0 then
							local _, itemLink = self:GetItemInfo(item.itemID)
							local spellName = GetSpellInfo(VANITY_ITEMS[item.itemID].learnedSpell)
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
	end
	for _, group in pairs(AtlasLoot.ui.menus.collection["CollectionsAscensionCLASSIC"]) do
		if group[3] then
			for _, subGroup in pairs(group[3]) do
				parseCollection(subGroup[2])
			end
		else
			parseCollection(group[2])
		end
	end
	local newSpellList = {}
	for _, itemID in pairs(unknownSpells) do
		tinsert(newSpellList, itemID)
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
			RequestDeliverVanityCollectionItem(task)
            local count = GetItemCount(task)
			if not CA_IsSpellKnown(VANITY_ITEMS[task].learnedSpell) and (not count or (count and count < duplicateList[task])) then
				tinsert(itemList, task)
			end
			return Timer.After(.2, nextItem)
        end
		DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE..AL["AtlasLoot"]..": "..self.Colors.YELLOW..AL["Retrieving Vanity Items Completed!"])
    end
    return nextItem()
end