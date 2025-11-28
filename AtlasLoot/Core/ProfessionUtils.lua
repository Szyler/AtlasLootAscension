local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


local playerName = UnitName("player")
local realmName = GetRealmName()
local playerFaction = UnitFactionGroup("player")

-- returns all the info about a recipe
function AtlasLoot:GetRecipeData(recipeID, idType)
	if not TRADESKILL_RECIPES then return end
	for _,prof in pairs(TRADESKILL_RECIPES) do
		for _,cat in pairs(prof) do
		   for _,recipe in pairs(cat) do
			  if (idType == "spell" and recipeID == recipe.SpellEntry) or (idType == "item" and recipeID == recipe.RecipeItemEntry) then
				local info = {{recipe.CreatedItemEntry}, "blank", "blank", "blank", "blank", "blank",spellID = recipe.SpellEntry, skillIndex = recipe.SkillIndex}
				local bloodForgedID = self:GetItemDifficultyID(recipe.CreatedItemEntry, 1)
				if bloodForgedID and bloodForgedID ~= recipe.CreatedItemEntry then
					info[2] = {bloodForgedID}
				end
				if recipe.RecipeItemEntry and recipe.RecipeItemEntry ~= 0 then
					local number = 3
					if info[2] == "blank" then
						number = 2
					end
					info[number] = {recipe.RecipeItemEntry}
					info.Recipe = recipe.RecipeItemEntry
				end
				for _,v in pairs(recipe.Reagents) do
					tinsert(info, v)
				end
				return info
			  end
		   end
		end
	 end
end

-- Returns the recipe itemID from a crafting spellID
function AtlasLoot:GetRecipeID(spellID)
	if not TRADESKILL_RECIPES then return end
	for _,prof in pairs(TRADESKILL_RECIPES) do
		for _,cat in pairs(prof) do
			for _,recipe in pairs(cat) do
				if spellID == recipe.SpellEntry and recipe.RecipeItemEntry ~= 0 then
					return recipe.RecipeItemEntry
				end
			end
		end
	 end
end

-- return true if recipe is known
function AtlasLoot:IsRecipeKnown(ID, profile)
	if not ID or not profile or not profile.professions then return end
	for _, prof in pairs(profile.professions) do
		if prof.knownRecipes[ID] then return true end
	end
end

 -- returns a list of characters with the recipe
function AtlasLoot:GetKnownRecipes(spellID)
	local text
    for key, profile in pairs(self.db.profiles) do
        if gsub(key,"-",""):match(gsub(realmName,"-","")) and not gsub(key,"-",""):match(gsub(playerName,"-","")) and self:IsRecipeKnown(spellID, profile) then
            local charName = strsplit("-", key, 5)
            text = text and text..", "..gsub(charName, " ", "") or gsub(charName, " ", "")
        end
    end
	return text
end

-- checks to see if character knows a profession
function AtlasLoot:IsProfessionKnown(skillID, profile)
	if profile and profile.professions and profile.professions[skillID] then return true end
end

-- create a list of every character that dosnt know this recipe
function AtlasLoot:IsRecipeUnknown(ID)
	if not ID then return end
	local recipeData = self:GetRecipeData(ID, "item")
	if not recipeData or not recipeData.skillIndex then return end

	local text
	for key, profile in pairs(self.db.profiles) do
		if gsub(key,"-",""):match(gsub(realmName,"-","")) and
		self:IsProfessionKnown(recipeData.skillIndex, profile) and not self:IsRecipeKnown(recipeData.spellID, profile) then
			local charName = strsplit("-", key, 5)
			text = text and text..", "..gsub(charName, " ", "") or gsub(charName, " ", "")
		end
	end
	return text
end

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

-- Sets pins on the map for all unknown tradeskill recipes if tomtom is installed 
function AtlasLoot:SetRecipeMapPins()
	local xpac = GetAccountExpansionLevel()+1
	self:LoadAllModules()
	for profKey, _ in pairs(self.db.profile.professions) do
		if professionTable[profKey] then
			for _, profTable in pairs(professionTable[profKey]) do
				if craftingXpac[AtlasLoot_Data[profTable].Type] <= xpac then
					for _, profType in pairs(AtlasLoot_Data[profTable]) do
						if type(profType) == "table" then
							for _, recipeData in pairs(profType) do
								if recipeData.spellID and not CA_IsSpellKnown(recipeData.spellID) then
									local craftingData = self:GetRecipeSource(recipeData.spellID)
									if craftingData then
										for _,v in pairs(craftingData) do
											if v.cords and tonumber(v.cords[1]) ~= 0 and tonumber(v.cords[2]) ~= 0 then
												local line1 = v[1]
												local line2 = v[2]
												if v.fac and (v.fac[2] == playerFaction or v.fac[2] == "Netural") then line1 = v.fac[1]..line1 end
												self:AddWayPoint({ line2, tonumber(v.cords[1]), tonumber(v.cords[2]), line1})
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
	end
end

-- returns table of all the recipe source information
function AtlasLoot:GetRecipeSource(spellID)
	if not spellID then return end
	local cData = AtlasLoot_CraftingData
	local data = {}
	-- extra information on where to find the recipe
	-- trainer learnt
	local trainer = cData["Trainer"][spellID]
	if trainer then tinsert(data, {"Source"..": "..self.Colors.WHITE..trainer}) end
	-- aquire type
	local aquireType = cData["AquireType"][spellID]
	if aquireType then
		tinsert(data, {"Source"..": "..self.Colors.WHITE..cData[aquireType[1]][aquireType[2]][1]})
	end
	-- vendor recipe
	local vendor = cData["Vendor"][spellID]
	if vendor then
		tinsert(data, {"Source"..": "..self.Colors.WHITE.."Vendor"})
		for _,v in pairs(vendor) do
			local vendor = AtlasLoot_CraftingData["VendorList"][v]
			tinsert(data, {vendor[1], vendor[2], cords = {vendor[3], vendor[4]}, fac = vendor[5]})
		end
	end
	-- vendor recipe
	local recipeRepVendor = cData["RecipeRepVendor"][spellID]
	if recipeRepVendor then
		tinsert(data, {"Source"..": "..self.Colors.WHITE.."Vendor"})
		local vendor = AtlasLoot_CraftingData["VendorList"][spellID]
		for	i = 3, 6 do
			if vendor and vendor[i] then
			tinsert(data, {vendor[1], vendor[2], fac = vendor[i]})
			end
		end
	end
	--limited vendor recipes
	local limitedVendor = cData["LimitedVendor"][spellID]
	if limitedVendor then
		tinsert(data, {"Source"..": "..self.Colors.WHITE.."Limited Stock"})
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
			 local vendor = AtlasLoot_CraftingData["VendorList"][v[1]]
			 tinsert(data, {vendor[1], vendor[2], cords = {vendor[3], vendor[4]}, fac = vendor[5], limited = v[2]})
		end
	end
	--mob drop
	local mobDrop = cData["MobDrop"][spellID]
	if mobDrop then
		tinsert(data, {"Source"..": "..self.Colors.WHITE.."Mob Drop"})
		for _,v in pairs(mobDrop) do
			local mob = AtlasLoot_CraftingData["MobList"][v]
			local cords = nil
			if mob[3] ~= 0 and mob[4] ~= 0 then
				cords = {mob[3], mob[4]}
			end
			tinsert(data, {mob[1], self.Colors.WHITE..mob[2], cords})
		end
	end
	-- World Drop
	local worldDrop = cData["WorldDrop"][spellID]
	if worldDrop then
		tinsert(data, {"Source"..": "..self.Colors.WHITE.."World Drop"})
		local text = worldDrop[1]
		if worldDrop[2] then
			text = text.." / "..worldDrop[2]
		end
		tinsert(data, {text})
	end
	--quest
	local questDrop = cData["QuestDrop"][spellID]
	if questDrop then
		tinsert(data, {"Source"..": "..self.Colors.WHITE.."Quest"})
		for _,v in pairs(questDrop) do
			local quest = AtlasLoot_CraftingData["QuestList"][v]
			tinsert(data, {quest[1],  quest[2], cords = {quest[3], quest[4]}, fac = quest[5]})
		end
	end
	--rep vendor
	local repVendor = cData["RepVendor"][spellID]
	if repVendor then
		tinsert(data, {"Source"..": "..self.Colors.WHITE.."Reputation Vendor"})
		local line1, line2
		local list = {}
		for i,v in pairs(repVendor) do
			 if type(v) == "table" then
				 for i,v in pairs(v) do
					 if i == 1 then
						 line1 = "Faction"..": "..self.Colors.WHITE..v
					 elseif i == 2 then
						 line2 = "Required Reputation"..": "..self.Colors.WHITE..v
					 else
						 tinsert(list,AtlasLoot_CraftingData["VendorList"][v])
					 end
				 end
			 else
				 if i == 1 then
					 line1 = "Faction"..": "..self.Colors.WHITE..v
				 elseif i == 2 then
					 line2 = "Required Reputation"..": "..self.Colors.WHITE..v
				 else
					 tinsert(list,AtlasLoot_CraftingData["VendorList"][v])
				 end
			 end
		end
		tinsert(data, {line1, line2})
		for _,v in pairs(list) do
			local cords
			if v[3] ~= 0 and v[4] ~= 0 then
				cords = {v[3], v[4]}
			end
			tinsert(data, {v[1], self.Colors.WHITE..v[2], cords, fac = v[5]})
		end
	end
	return data
end

-- Creates list characters known recipes
function AtlasLoot:PopulateProfessions()
	self.db.profile.professions = self.db.profile.professions or {}
	for _, skillID in pairs(PRIMARY_PROFESSIONS) do
		local _, _, _, skillMaxRank = GetSkillInfo(skillID)
		if skillMaxRank and skillMaxRank > 0 then
			self.db.profile.professions[skillID] = self.db.profile.professions[skillID] or { knownRecipes = {} }
		end
	end
	for _, skillID in pairs(SECONDARY_PROFESSIONS) do
		local _, _, _, skillMaxRank = GetSkillInfo(skillID)
		if skillMaxRank and skillMaxRank > 0 then
			self.db.profile.professions[skillID] = self.db.profile.professions[skillID] or { knownRecipes = {} }
		end
	end
	for prof, _ in pairs(self.db.profile.professions) do
		if TRADESKILL_RECIPES[prof] then
			for _,cat in pairs(TRADESKILL_RECIPES[prof]) do
				for _,recipe in pairs(cat) do
					if CA_IsSpellKnown(recipe.SpellEntry) then
						self.db.profile.professions[prof].knownRecipes[recipe.SpellEntry] = true
					end
				end
			end
		end
	end
end

-- Loads the tradeskill data .json
function AtlasLoot:LoadTradeskillRecipes()
	if TRADESKILL_RECIPES then return end
		TRADESKILL_RECIPES = {}
		TRADESKILL_CRAFTS = {}

		local fmtSubClass = "ITEM_SUBCLASS_%d_%d"
		local fmtTotem = "SPELL_TOTEM_%d"
		local fmtObject = "SPELL_FOCUS_OBJECT_%d"

		local content = C_ContentLoader:Load("TradeSkillRecipeData")

		local function GetToolName(toolID)
			return _G[format(fmtTotem, toolID)]
		end

		content:SetParser(function(_, data)
			if not TRADESKILL_RECIPES[data.SkillIndex] then
				TRADESKILL_RECIPES[data.SkillIndex] = {}
			end

			data.Category = _G[format(fmtSubClass, data.CreatedItemClass, data.CreatedItemSubClass)]

			if not TRADESKILL_RECIPES[data.SkillIndex][data.Category] then
				TRADESKILL_RECIPES[data.SkillIndex][data.Category] = {}
			end

			data.IsHighRisk = toboolean(data.IsHighRisk)

			-- reformat reagents
			data.Reagents = {}
			local reagents = data.ReagentData:SplitToTable(",")
			for _, reagentString in ipairs(reagents) do
				local item, count = reagentString:match("(%d*):(%d*)")
				item = tonumber(item)
				count = tonumber(count)
				if item and item ~= 0 and count and count ~= 0 then
					tinsert(data.Reagents, {item, count})
				end
			end

			if #data.Reagents > 0 then
				data.ReagentData = nil

				-- reformat tools (totems)
				data.Tools = data.TotemCategories:SplitToTable(",", GetToolName)
				data.TotemCategories = nil

				data.SpellFocusObject = _G[format(fmtObject, data.SpellFocusObject)]

				tinsert(TRADESKILL_RECIPES[data.SkillIndex][data.Category], data)
				if data.CreatedItemEntry > 0 then
					TRADESKILL_CRAFTS[data.CreatedItemEntry] = data
				end
			end
		end)

		content:Parse()
end