local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local TradeSkill = {}
AtlasLoot.TradeSkill = TradeSkill
local craftingData = AtlasLoot.data.crafting
local colors = AtlasLoot.Colors


local playerName = UnitName("player")
local realmName = GetRealmName()
local playerFaction = UnitFactionGroup("player")

function TradeSkill:GetReagentItems(id)
	return id and C_TradeSkill.GetReagentItems(id)
end

function TradeSkill:GetCraftedItemID(spellID)
	if not spellID then return end
	local item = C_TradeSkill.GetCraftedItem(spellID)
	if item then
		return item.ItemID
	else
		return craftingData.CraftingRecipes[spellID] and craftingData.CraftingRecipes[spellID].CreatedItemEntry
	end
	
end

function TradeSkill:GetAllTradeSkillSpellsBySkillIndex(skillIndex)
	local spells = {}
	for spellID, recipe in pairs(craftingData.CraftingRecipes) do
		if recipe.skillIndex == skillIndex then
			table.insert(spellID)
		end
	end
	return #spells > 0 and spells
end

function TradeSkill:GetTradeSkillIndexBySpellID(id)
	return craftingData.CraftingRecipes[id] and craftingData.CraftingRecipes[id].SkillIndex or nil
end

function TradeSkill:GetTradeSkillByRecipeID(id)
	for spellID, recipe in pairs(craftingData.CraftingRecipes) do
		if recipe.RecipeItemEntry == id then
			return spellID, recipe.SkillIndex
		end
	end
end

-- Returns the recipe itemID from a crafting spellID
function TradeSkill:GetRecipeID(id)
	return craftingData.CraftingRecipes[id] and craftingData.CraftingRecipes[id].RecipeItemEntry or nil
end

-- return true if recipe is known
function TradeSkill:IsRecipeKnown(ID, profile)
	if not ID or not profile or not profile.professions then return end
	for _, prof in pairs(profile.professions) do
		if prof.knownRecipes[ID] then return true end
	end
end

 -- returns a list of characters with the recipe
function TradeSkill:GetKnownRecipes(spellID)
	local text
    for key, profile in pairs(AtlasLoot.db.profiles) do
        if gsub(key,"-",""):match(gsub(realmName,"-","")) and not gsub(key,"-",""):match(gsub(playerName,"-","")) and self:IsRecipeKnown(spellID, profile) then
            local charName = strsplit("-", key, 5)
            text = text and text..", "..gsub(charName, " ", "") or gsub(charName, " ", "")
        end
    end
	return text
end

-- checks to see if character knows a profession
function TradeSkill:IsProfessionKnown(skillID, profile)
	if profile and profile.professions and profile.professions[skillID] then return true end
end

-- create a list of every character that dosnt know this recipe
function TradeSkill:IsRecipeUnknown(itemID)
	if not itemID then return end
	local recipeSpellID, skillIndex = self:GetTradeSkillByRecipeID(itemID)
	if not recipeSpellID then return end

	local text
	for key, profile in pairs(AtlasLoot.db.profiles) do
		if gsub(key,"-",""):match(gsub(realmName,"-","")) and
		self:IsProfessionKnown(skillIndex, profile) and not self:IsRecipeKnown(recipeSpellID, profile) then
			local charName = strsplit("-", key, 5)
			text = text and text..", "..gsub(charName, " ", "") or gsub(charName, " ", "")
		end
	end
	return text
end



-- Sets pins on the map for all unknown tradeskill recipes 
function TradeSkill:SetRecipeMapPins()
	local professionTable = {
		[171] = {
			"AlchemyCLASSIC",
			"AlchemyTBC",
			"AlchemyWRATH",
		},
			[164] = {
			"SmithingCLASSIC",
			"SmithingTBC",
			"SmithingWRATH",
			},
			[333] = {
			"EnchantingCLASSIC",
			"EnchantingTBC",
			"EnchantingWRATH",
		},
			[202] = {
			"EngineeringCLASSIC",
			"EngineeringTBC",
			"EngineeringWRATH",
		},
			[755] = {
			"JewelcraftingTBC",
			"JewelcraftingWRATH",
		},
			[165] = {
			"LeatherworkingCLASSIC",
			"LeatherworkingTBC",
			"LeatherworkingWRATH",
		},
			[197] = {
			"TailoringCLASSIC",
			"TailoringTBC",
			"TailoringWRATH",
		},
			[186] = {
			"MiningCLASSIC",
			"MiningTBC",
			"MiningWRATH",
		},
			[185] = {
			"CookingCLASSIC",
			"CookingTBC",
			"CookingWRATH",
		},
			[129] = {
			"FirstAidCLASSIC",
			"FirstAidTBC",
			"FirstAidWRATH",
		},
			[773] = {
			"Inscription",
		},
	}

	local craftingXpac = { ClassicCrafting = 1, BCCrafting = 2, WrathCrafting = 3 }
	local xpac = GetAccountExpansionLevel()+1
	for profKey, _ in pairs(AtlasLoot.db.profile.professions) do
		if professionTable[profKey] then
			for _, profTable in pairs(professionTable[profKey]) do
				if craftingXpac[AtlasLoot:GetDataType(profTable)] <= xpac then
					for _, recipeData in ipairs(AtlasLoot.data.item[profTable.."1"]) do
						if recipeData.spellID and not CA_IsSpellKnown(recipeData.spellID) then
							local craftingData = self:GetRecipeSource(recipeData.spellID)
							if craftingData then
								for _,v in pairs(craftingData) do
									if v.cords and tonumber(v.cords[1]) ~= 0 and tonumber(v.cords[2]) ~= 0 then
										local line1 = v[1]
										local line2 = v[2]
										if v.fac and (v.fac[2] == playerFaction or v.fac[2] == "Netural") then line1 = v.fac[1]..line1 end
										AtlasLoot.WorldMap:AddWayPoint(line2, tonumber(v.cords[1]), tonumber(v.cords[2]), line1)
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

-- returns table of all the recipe source information
function TradeSkill:GetRecipeSource(spellID)
	if not spellID then return end
	local data = {}
	-- extra information on where to find the recipe
	-- trainer learnt
	local trainer = craftingData["Trainer"][spellID]
	if trainer then tinsert(data, {"Source"..": "..colors.WHITE..trainer}) end
	-- aquire type
	local aquireType = craftingData["AquireType"][spellID]
	if aquireType then
		tinsert(data, {"Source"..": "..colors.WHITE..craftingData[aquireType[1]][aquireType[2]][1]})
	end
	-- vendor recipe
	local vendor = craftingData["Vendor"][spellID]
	if vendor then
		tinsert(data, {"Source"..": "..colors.WHITE.."Vendor"})
		for _,v in pairs(vendor) do
			local vendor = craftingData["VendorList"][v]
			tinsert(data, {vendor[1], vendor[2], cords = {vendor[3], vendor[4]}, fac = vendor[5]})
		end
	end
	-- vendor recipe
	local recipeRepVendor = craftingData["RecipeRepVendor"][spellID]
	if recipeRepVendor then
		tinsert(data, {"Source"..": "..colors.WHITE.."Vendor"})
		local vendor = craftingData["VendorList"][spellID]
		for	i = 3, 6 do
			if vendor and vendor[i] then
			tinsert(data, {vendor[1], vendor[2], fac = vendor[i]})
			end
		end
	end
	--limited vendor recipes
	local limitedVendor = craftingData["LimitedVendor"][spellID]
	if limitedVendor then
		tinsert(data, {"Source"..": "..colors.WHITE.."Limited Stock"})
		local sort = {}
		local limited = false
		for i,v in pairs(limitedVendor) do
			 if limited then
				 tinsert(sort[i-1],v)
				 limited = false
			 else
				 sort[i] = {v}
				 limited = true
			 end
		end
		for _,v in pairs(sort) do
			 local vendor = craftingData["VendorList"][v[1]]
			 tinsert(data, {vendor[1], vendor[2], cords = {vendor[3], vendor[4]}, fac = vendor[5], limited = v[2]})
		end
	end
	--mob drop
	local mobDrop = craftingData["MobDrop"][spellID]
	if mobDrop then
		tinsert(data, {"Source"..": "..colors.WHITE.."Mob Drop"})
		for _,v in pairs(mobDrop) do
			local mob = craftingData["MobList"][v]
			local cords = nil
			if mob[3] ~= 0 and mob[4] ~= 0 then
				cords = {mob[3], mob[4]}
			end
			tinsert(data, {mob[1], colors.WHITE..mob[2], cords})
		end
	end
	-- World Drop
	local worldDrop = craftingData["WorldDrop"][spellID]
	if worldDrop then
		tinsert(data, {"Source"..": "..colors.WHITE.."World Drop"})
		local text = worldDrop[1]
		if worldDrop[2] then
			text = text.." / "..worldDrop[2]
		end
		tinsert(data, {text})
	end
	--quest
	local questDrop = craftingData["QuestDrop"][spellID]
	if questDrop then
		tinsert(data, {"Source"..": "..colors.WHITE.."Quest"})
		for _,v in pairs(questDrop) do
			local quest = craftingData["QuestList"][v]
			tinsert(data, {quest[1],  quest[2], cords = {quest[3], quest[4]}, fac = quest[5]})
		end
	end
	--rep vendor
	local repVendor = craftingData["RepVendor"][spellID]
	if repVendor then
		tinsert(data, {"Source"..": "..colors.WHITE.."Reputation Vendor"})
		local line1, line2
		local list = {}
		for i,v in pairs(repVendor) do
			 if type(v) == "table" then
				 for i,v in pairs(v) do
					 if i == 1 then
						 line1 = "Faction"..": "..colors.WHITE..v
					 elseif i == 2 then
						 line2 = "Required Reputation"..": "..colors.WHITE..v
					 else
						 tinsert(list,craftingData["VendorList"][v])
					 end
				 end
			 else
				 if i == 1 then
					 line1 = "Faction"..": "..colors.WHITE..v
				 elseif i == 2 then
					 line2 = "Required Reputation"..": "..colors.WHITE..v
				 else
					 tinsert(list,craftingData["VendorList"][v])
				 end
			 end
		end
		tinsert(data, {line1, line2})
		for _,v in pairs(list) do
			local cords
			if v[3] ~= 0 and v[4] ~= 0 then
				cords = {v[3], v[4]}
			end
			tinsert(data, {v[1], colors.WHITE..v[2], cords, fac = v[5]})
		end
	end
	return data
end

-- Creates list characters known recipes
function TradeSkill:PopulateProfessions()
	AtlasLoot.db.profile.professions = AtlasLoot.db.profile.professions or {}
	local profile = AtlasLoot.db.profile.professions
	for _, skillID in pairs(PRIMARY_PROFESSIONS) do
		local _, _, _, skillMaxRank = GetSkillInfo(skillID)
		if skillMaxRank and skillMaxRank > 0 then
			profile[skillID] = profile[skillID] or { knownRecipes = {} }
		end
	end
	for _, skillID in pairs(SECONDARY_PROFESSIONS) do
		local _, _, _, skillMaxRank = GetSkillInfo(skillID)
		if skillMaxRank and skillMaxRank > 0 then
			profile[skillID] = profile[skillID] or { knownRecipes = {} }
		end
	end
	for skillIndex, _ in pairs(profile) do
		local spells = self:GetAllTradeSkillSpellsBySkillIndex(skillIndex)
		if spells then
			for _,spellID in pairs(spells) do
				if CA_IsSpellKnown(spellID) then
					profile[skillIndex].knownRecipes[spellID] = true
				end
			end
		end
	end
end