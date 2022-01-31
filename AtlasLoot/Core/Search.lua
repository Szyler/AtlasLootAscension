local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";

local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local modules = { "AtlasLoot_BurningCrusade", "AtlasLoot_Crafting", "AtlasLoot_OriginalWoW", "AtlasLoot_WorldEvents", "AtlasLoot_WrathoftheLichKing" };
local currentPage = 1;
local SearchResult = nil;

-- Supported Operators
local OP_AND = "&"
local BINARYOPERATORS = { OP_AND };
 -- multi-character patterns must come before single-character patterns
local RELATIONAL_OPERATORS = { ">=", "<=", "<>", "<", ">", "=", };

-- Supported Stat Filters
local STAT_FILTERS = {
	-- Base Stats
	["stamina"] = "ITEM_MOD_STAMINA_SHORT",
	["stam"] = "ITEM_MOD_STAMINA_SHORT",
	["sta"] = "ITEM_MOD_STAMINA_SHORT",

	["strength"] = "ITEM_MOD_STRENGTH_SHORT",
	["str"] = "ITEM_MOD_STRENGTH_SHORT",

	["agility"] = "ITEM_MOD_AGILITY_SHORT",
	["agi"] = "ITEM_MOD_AGILITY_SHORT",

	["intellect"] = "ITEM_MOD_INTELLECT_SHORT",
	["int"] = "ITEM_MOD_INTELLECT_SHORT",

	["spirit"] = "ITEM_MOD_SPIRIT_SHORT",
	["spir"] = "ITEM_MOD_SPIRIT_SHORT",
	["spi"] = "ITEM_MOD_SPIRIT_SHORT",

	["health"] = "ITEM_MOD_HEALTH_SHORT",
	["mana"] = "ITEM_MOD_MANA_SHORT",

	["mp5"] = "ITEM_MOD_POWER_REGEN0_SHORT",
	["mpr"] = "ITEM_MOD_POWER_REGEN0_SHORT",

	["hp5"] = "ITEM_MOD_HEALTH_REGEN_SHORT",
	["hpr"] = "ITEM_MOD_HEALTH_REGEN_SHORT",

	--Sockets
	["socketblue"] = "EMPTY_SOCKET_BLUE",
	["socketred"] = "EMPTY_SOCKET_RED",
	["socketyellow"] = "EMPTY_SOCKET_YELLOW",

	["socketnocolor"] = "EMPTY_SOCKET_NO_COLOR",
	["socketwhite"] = "EMPTY_SOCKET_NO_COLOR",

	["socketmeta"] = "EMPTY_SOCKET_META",
	["meta"] = "EMPTY_SOCKET_META",

	--Secondary Stats
	["attackpowerferal"] = "ITEM_MOD_FERAL_ATTACK_POWER_SHORT",
	["attackpowferal"] = "ITEM_MOD_FERAL_ATTACK_POWER_SHORT",
	["apferal"] = "ITEM_MOD_FERAL_ATTACK_POWER_SHORT",

	["attackpower"] = "ITEM_MOD_ATTACK_POWER_SHORT",
	["attackpow"] = "ITEM_MOD_ATTACK_POWER_SHORT",
	["ap"] = "ITEM_MOD_ATTACK_POWER_SHORT",

	["spellpower"] = "ITEM_MOD_SPELL_POWER_SHORT",
	["spellpow"] = "ITEM_MOD_SPELL_POWER_SHORT",
	["sp"] = "ITEM_MOD_SPELL_POWER_SHORT",

	["spellpenetration"] = "ITEM_MOD_SPELL_PENETRATION_SHORT",
	["spellpen"] = "ITEM_MOD_SPELL_PENETRATION_SHORT",
	["spp"] = "ITEM_MOD_SPELL_PENETRATION_SHORT",

	["crit"] = "ITEM_MOD_CRIT_RATING_SHORT",
	["haste"] = "ITEM_MOD_HASTE_RATING_SHORT",

	["hit"] = "ITEM_MOD_HIT_RATING_SHORT",

	["armorpenetration"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
	["armourpenetration"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
	["armorpen"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
	["armourpen"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
	["arp"] = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",

	["expertise"] = "ITEM_MOD_EXPERTISE_RATING_SHORT",
	["exp"] = "ITEM_MOD_EXPERTISE_RATING_SHORT",

	["dps"] = "ITEM_MOD_DAMAGE_PER_SECOND_SHORT",

	["resilience"] = "ITEM_MOD_RESILIENCE_RATING",
	["resil"] = "ITEM_MOD_RESILIENCE_RATING",
	["res"] = "ITEM_MOD_RESILIENCE_RATING",

	["defense"] = "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT",
	["def"] = "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT",

	["dodge"] = "ITEM_MOD_DODGE_RATING_SHORT",
	["dod"] = "ITEM_MOD_DODGE_RATING_SHORT",

	["block"] = "ITEM_MOD_BLOCK_RATING_SHORT",

	["blockvalue"] = "ITEM_MOD_BLOCK_VALUE_SHORT",
	["blockval"] = "ITEM_MOD_BLOCK_VALUE_SHORT",
	["bv"] = "ITEM_MOD_BLOCK_VALUE_SHORT",

	["parry"] = "ITEM_MOD_PARRY_RATING_SHORT",

	--Resistances
	["armor"] = "RESISTANCE0_NAME",
	["armour"] = "RESISTANCE0_NAME",
	["arm"] = "RESISTANCE0_NAME",
	["resistancephysical"] = "RESISTANCE0_NAME",
	["resistancephys"] = "RESISTANCE0_NAME",
	["resphys"] = "RESISTANCE0_NAME",

	["resistanceholy"] = "RESISTANCE1_NAME",
	["resholy"] = "RESISTANCE1_NAME",

	["resistancefire"] = "RESISTANCE2_NAME",
	["resfire"] = "RESISTANCE2_NAME",

	["resistancenature"] = "RESISTANCE3_NAME",
	["resnature"] = "RESISTANCE3_NAME",
	["resnat"] = "RESISTANCE3_NAME",

	["resistanceforst"] = "RESISTANCE4_NAME",
	["resfrost"] = "RESISTANCE4_NAME",

	["resistanceshadow"] = "RESISTANCE5_NAME",
	["resshadow"] = "RESISTANCE5_NAME",
	["resshad"] = "RESISTANCE5_NAME",

	["resistancearcane"] = "RESISTANCE6_NAME",
	["resarcane"] = "RESISTANCE6_NAME",
	["resarc"] = "RESISTANCE6_NAME"
};

local SOCKET_FILTERS = {
    ["socket"] = true,
    ["sockets"] = true,
    ["gem"] = true,
    ["gems"] = true,
};

local SOCKET_TYPES = {
	"EMPTY_SOCKET_BLUE",
	"EMPTY_SOCKET_RED",
	"EMPTY_SOCKET_YELLOW",
	"EMPTY_SOCKET_META",
	"EMPTY_SOCKET_NO_COLOR"
};

local INFO_FILTERS = {
	["ilvl"] = true,
	["minlvl"] = true,
	--["type"] = true,
	--["subtype"] = true,
};

local QUALITY_FILTERS = {
	["poor"] = 0,
	["common"] = 1,
	["uncommon"] = 2,
	["rare"] = 3,
	["epic"] = 4,
	["legendary"] = 5,
	["artifact"] = 6,
	["heirloom"] = 7
};

local SLOT_FILTERS = {
	["none"] = "INVTYPE_NON_EQUIP",
	["head"] = "INVTYPE_HEAD",
	["neck"] = "INVTYPE_NECK",
	["shoulder"] = "INVTYPE_SHOULDER",
	["body"] = "INVTYPE_BODY",
	["chest"] = "INVTYPE_CHEST",
	["waist"] = "INVTYPE_WAIST",
	["legs"] = "INVTYPE_LEGS",
	["feet"] = "INVTYPE_FEET",
	["wrist"] = "INVTYPE_WRIST",
	["hand"] = "INVTYPE_HAND",
	["finger"] = "INVTYPE_FINGER",
	["trinket"] = "INVTYPE_TRINKET",
	["weapon"] = "INVTYPE_WEAPON",
	["shield"] = "INVTYPE_SHIELD",
	["ranged"] = "INVTYPE_RANGED",
	["cloak"] = "INVTYPE_CLOAK",
	["2hweapon"] = "INVTYPE_2HWEAPON",
	["2h"] = "INVTYPE_2HWEAPON",
	["bag"] = "INVTYPE_BAG",
	["tabard"] = "INVTYPE_TABARD",
	["robe"] = "INVTYPE_ROBE",
	["weaponmainhand"] = "INVTYPE_WEAPONMAINHAND",
	["mainhand"] = "INVTYPE_WEAPONMAINHAND",
	["weaponoffhand"] = "INVTYPE_WEAPONOFFHAND",
	["offhand"] = "INVTYPE_WEAPONOFFHAND",
	["holdable"] = "INVTYPE_HOLDABLE",
	["ammo"] = "INVTYPE_AMMO",
	["thrown"] = "INVTYPE_THROWN",
	["rangedright"] = "INVTYPE_RANGEDRIGHT",
	["quiver"] = "INVTYPE_QUIVER",
	["relic"] = "INVTYPE_RELIC",
};

local TYPE_FILTERS = {
	["cloth"] = "Cloth",
	["leather"] = "Leather",
	["mail"] = "Mail",
	["plate"] = "Plate",
	["shield"] = "Shields",
	["libram"] = "Librams",
	["idol"] = "Idols",
	["totem"] = "Totems",
	["sigil"] = "Sigils",

	["axe1h"] = "One-Handed Axes",
	["axe2h"] = "Two-Handed Axes",
	["bows"] = "Bows",
	["bow"] = "Bows",
	["guns"] = "Guns",
	["gun"] = "Guns",
	["mace1h"] = "One-Handed Maces",
	["mace2h"] = "Two-Handed Maces",
	["polearm"] = "Polearms",
	["sword1h"] = "One-Handed Swords",
	["sword2h"] = "Two-Handed Swords",
	["staff"] = "Staves",
	["fist"] = "Fist Weapons",
	["generic"] = "",
	["dagger"] = "Daggers",
	["thrown"] = "Thrown",
	["crossbows"] = "Crossbows",
	["crossbow"] = "Crossbows",
	["wand"] = "Wands",
	["fishingpole"] = "Fishing Poles",
}

local NON_EQUIPABLE_SLOTS = {
	["INVTYPE_NON_EQUIP"] = true,
	["INVTYPE_BODY"] = true, 
	["INVTYPE_BAG"] =  true,
	["INVTYPE_AMMO"] = true,
	["INVTYPE_QUIVER"] = true,
};

SLASH_ATLASLOOTHELP1 = "/atlasloothelp";
SlashCmdList["ATLASLOOTHELP"] = function(msg, editBox)
    local function show(caption, t)
       local keys = {}
       for key in pairs(t) do table.insert(keys, key) end
       table.sort(keys, function(a,b) return a < b end)
       print(caption..": ".. table.concat(keys, ", "))
    end
    show("stat",    STAT_FILTERS)
    show("socket",  SOCKET_FILTERS)
    show("slot",    SLOT_FILTERS)
    show("quality", QUALITY_FILTERS)
    show("info",    INFO_FILTERS)

    print("\nExamples:")
    print("gladiator")
    print("str>40")
    print("gladiator&str>40")
    print("str>40&ilvl>=120&ilvl<140&int>0&socket>2");
    print("sp>20&quality>=rare&quality<legendary&slot=finger");
    print("stam>20&minlvl<=50")
end

SLASH_ATLASLOOTSEARCH1 = "/atlaslootsearch";
SLASH_ATLASLOOTSEARCH2 = "/als";
SlashCmdList["ATLASLOOTSEARCH"] = function(search, editBox)
    AtlasLootDefaultFrame:Show()
    if search and search ~= '' then
        AtlasLootDefaultFrameSearchBox:SetText(search)
        AtlasLootDefaultFrameSearchButton:Click()
    end
end

-- split one string on another (delimiter can be more than one character)
local function SplitString(str, delimiter)
    local result = {}
    local start = 1
    local len = #str
    while start <= len do
        local delimPos = str:find(delimiter, start, true)
        if delimPos then
            result[#result+1] = str:sub(start, delimPos-1) -- grab up to the delimeter
            start = delimPos + #delimiter -- advance past the delimiter
        else
            result[#result+1] = str:sub(start) -- grab the rest of the string
            break
        end
    end
    return result
end

local function CompareNumbersByOperator(operator, left, right)
    return left and right and (
            (operator == "<>" and left ~= right)
         or (operator == "<=" and left <= right)
         or (operator == ">=" and left >= right)
         or (operator == "="  and left == right)
         or (operator == "<"  and left <  right)
         or (operator == ">"  and left >  right)
     )
end

local function ThrowQueryError(...)
    error("Error: "..string.format(...))
end

local function IsItemStatMatch(term, stats)
    local filterKey = STAT_FILTERS[term.left]
    if not filterKey then
        return
    end

    local statValue = tonumber(stats[filterKey])
    if not statValue then
        return
    end

    local searchedValue = tonumber(term.right)
    if not searchedValue then
        ThrowQueryError("'%s' requires a numeric argument", term.left)
    end

    return CompareNumbersByOperator(term.relational, statValue, searchedValue)
end

local function IsItemLevelFilterMatch(term, itemLvl, itemEquipLoc)
    if term.left ~= "ilvl" then
        return
    end

    local searchedValue = tonumber(term.right);
    if not searchedValue then
        ThrowQueryError("ilvl search requires a numeric argument")
    end

    return itemLvl ~= nil and itemLvl > 0 and CompareNumbersByOperator(term.relational, itemLvl, searchedValue)
end

local function IsItemQualityMatch(term, itemQuality)
    if term.left ~= "quality" then
        return
    end

    local searchedValue = QUALITY_FILTERS[term.right]
    if not searchedValue then
        ThrowQueryError("unrecognized quality value \"%s\"", term.right)
    end

    return CompareNumbersByOperator(term.relational, itemQuality, searchedValue)
end

local function IsItemSocketMatch(term, stats)
    if not SOCKET_FILTERS[term.left] then
        return
    end

    local searchedValue = tonumber(term.right)
    if not searchedValue then
        ThrowQueryError("'%s' requires a numeric argument", term.left)
    end

    local socketCount = 0;
    for _, socketType in pairs(SOCKET_TYPES) do
        local statValue = tonumber(stats[socketType]);
        if statValue then
            socketCount = socketCount + statValue;
        end
    end

    return CompareNumbersByOperator(term.relational, socketCount, searchedValue)
end

local function IsMinLevelFilterMatch(term, minLvl)
    if term.left ~= "minlvl" then
        return
    end

    local searchedValue = tonumber(term.right);
    if not searchedValue then
        ThrowQueryError("minlvl search requires a numeric argument")
    end

    return minLvl ~= nil and minLvl > 0 and CompareNumbersByOperator(term.relational, minLvl, searchedValue)
end

local function IsItemSlotMatch(term, itemEquipLoc)
    if term.left ~= "slot" then
        return
    end

    if term.relational ~= "=" then
        ThrowQueryError("slot searches should be in the form \"slot=[slotname]\"")
    end

    local slot = SLOT_FILTERS[term.right]
    if not slot then
        ThrowQueryError("unrecognized slot name: \"%s\"", term.right)
    end

    return slot == itemEquipLoc
end

local function IsItemTypeMatch(term, itemEquipType)
    if term.left ~= "type" then
        return
    end

    if term.relational ~= "=" then
        ThrowQueryError("type searches should be in the form \"type=[typename]\"")
    end

    local type = TYPE_FILTERS[term.right]
    if not type then
        ThrowQueryError("unrecognized type name: \"%s\"", term.right)
    end

    return type == itemEquipType;
end

local function IsItemDifficulty(term, itemName)
    if term.left ~= "dif" then
        return
    end

    if term.relational ~= "=" then
        ThrowQueryError("difficulty searches should be in the form \"dif=[difficulty]\"")
    end

    if tonumber(term.right) > (#AtlasLoot_Difficulty.MythicPlus + 4) then
        ThrowQueryError("difficulty should be a number: 1 - %i", #AtlasLoot_Difficulty.MythicPlus + 4)
    end

	local _, hasDifficulty = AL_FindId(itemName, tonumber(term.right));
	
    return hasDifficulty;
end

local function nameMatches(name, searchText)
    if AtlasLoot.db.profile.PartialMatching then
        return string.find(string.lower(name), searchText);
    else
        return string.lower(name) == searchText;
    end
end

local function ItemMatchesTerm(term, itemName, stats, itemLvl, minLvl, itemQuality, itemEquipLoc, itemType)
    if term.relational then
        return IsItemStatMatch(term, stats)
            or IsItemSocketMatch(term, stats)
            or IsItemLevelFilterMatch(term, itemLvl, itemEquipLoc)
            or IsMinLevelFilterMatch(term, minLvl)
            or IsItemSlotMatch(term, itemEquipLoc)
            or IsItemQualityMatch(term, itemQuality)
			or IsItemTypeMatch(term, itemType)
			or IsItemDifficulty(term, itemName)
    else
        return nameMatches(itemName, term.name)
    end
end

local function ItemMatchesAllTerms(searchTerms, itemName, stats, itemLvl, minLvl, itemQuality, itemEquipLoc, itemType)
    for _, term in ipairs(searchTerms) do
        if not ItemMatchesTerm(term, itemName, stats, itemLvl, minLvl, itemQuality, itemEquipLoc, itemType) then
            return false
        end
    end
    return true
end

local function TermsContainDifficulty(searchTerms)
	for _, term in ipairs(searchTerms) do
		if term.relational then
			if term.left == "dif" then return tonumber(term.right) end
		end
	end

	return AtlasLoot_Difficulty.Normal;
end

local function ParseTerm(termText)
    for _, relational in ipairs(RELATIONAL_OPERATORS) do
        local operands = SplitString(termText, relational)
        if #operands == 2 then
            return {
                left = operands[1],
                right = operands[2],
                relational = relational
            }
        end
    end
    return { name = termText } -- simple name search
end

-- Parse search text into '&'-delimited search terms,
-- then parse each term on its relational operator, if present.
local function ParseQuery(searchText)
    local terms = {}
    for i, term in pairs(SplitString(searchText, OP_AND)) do
        table.insert(terms, ParseTerm(term))
    end
    return terms
end

local function GetItemDetails(itemId, atlasName)
    -- Name, Link, Quality(num), iLvl(num), minLvl(num), itemType(localized string), itemSubType(localized string), stackCount(num), itemEquipLoc(enum), texture(link to a local file), displayId(num)
    local itemName, _, itemQuality, itemLvl, minLvl, _, itemSubType, _, itemEquipLoc = GetItemInfo(itemId);
    if not itemName then itemName = gsub(atlasName, "=q%d=", "") end
    return itemName, itemQuality, itemLvl, minLvl, itemEquipLoc, itemSubType, GetItemStats("item:"..itemId)
end

local function GetSpellName(itemId, atlasName)
    local spellName = GetSpellInfo(string.sub(itemId, 2));
    if spellName then
        return spellName
    elseif (string.sub(atlasName, 1, 2) == "=d") then
        return gsub(atlasName, "=ds=", "");
    else
        return gsub(atlasName, "=q%d=", "");
    end
end

local function DoSearch(searchText)
    AtlasLootCharDB["SearchResult"] = {};
	AtlasLootCharDB.LastSearchedText = searchText;

	local function AddItemToSearchResult(itemId, itemType, itemName, dataID, difficulty)
        local lootPage = AtlasLoot_TableNames[dataID] and AtlasLoot_TableNames[dataID][1] or "Argh!";
        table.insert(AtlasLootCharDB["SearchResult"], { 0, itemId, itemType, itemName, lootPage, "", "", dataID.."|".."\"\""});
    end

    local searchTerms = ParseQuery(searchText);
    local equipableFilterOn = AtlasLoot.db.profile.EquipableFilter;
	local difficulty = TermsContainDifficulty(searchTerms);
    local function IsItemEquipableMatch(itemEquipLoc)
        return not equipableFilterOn or ((itemEquipLoc and itemEquipLoc ~= '' and not NON_EQUIPABLE_SLOTS[itemEquipLoc]))
    end
    
    for dataID, data in pairs(AtlasLoot_Data) do
        for _, v in ipairs(data) do
            local _, itemId, itemType, atlasName = unpack(v)

			itemId = AL_FindId(string.sub(atlasName, 5), difficulty);

			itemId = tonumber(itemId);

            if type(itemId) == "number" and itemId > 0 then
                local itemName, itemQuality, itemLvl, minLvl, itemEquipLoc, itemSubType, stats = GetItemDetails(itemId, atlasName);
                if IsItemEquipableMatch(itemEquipLoc) and ItemMatchesAllTerms(searchTerms, itemName, stats, itemLvl, minLvl, itemQuality, itemEquipLoc, itemSubType) then
                    AddItemToSearchResult(itemId, itemType, itemName, dataID, difficulty);
                end
            elseif not equipableFilterOn and itemId and itemId ~= "" and string.sub(itemId, 1, 1) == "s" then
                local spellName = GetSpellName(itemId, atlasName)
                if nameMatches(spellName, searchText) then
                    spellName = string.sub(atlasName, 1, 4)..spellName;
                    AddItemToSearchResult(itemId, itemType, spellName, dataID)
                end
            end
        end
    end
end


function AtlasLoot:ShowSearchResult()
	AtlasLoot_ShowItemsFrame("SearchResult", "SearchResultPage"..currentPage, (AL["Search Result: %s"]):format(AtlasLootCharDB.LastSearchedText or ""), pFrame);
end

function AtlasLoot:Search(Text)
	if not Text then return end
	Text = strtrim(Text);
	if Text == "" then return end

	-- Decide if we need load all modules or just specified ones
	local allDisabled = not self.db.profile.SearchOn.All;
	if allDisabled then
		for _, module in ipairs(modules) do
			if self.db.profile.SearchOn[module] == true then
				allDisabled = false;
				break;
			end
		end
	end
	if allDisabled then
        DEFAULT_CHAT_FRAME:AddMessage(RED..AL["AtlasLoot"]..": "..WHITE..AL["You don't have any module selected to search on."]);
		return;
	end
	if self.db.profile.SearchOn.All then
		AtlasLoot_LoadAllModules();
	else
		for k, v in pairs(self.db.profile.SearchOn) do
			if k ~= "All" and v == true and not IsAddOnLoaded(k) and LoadAddOn(k) and self.db.profile.LoDNotify then
				DEFAULT_CHAT_FRAME:AddMessage(GREEN..AL["AtlasLoot"]..": "..ORANGE..k..WHITE.." "..AL["sucessfully loaded."]);
			end
		end
	end

    local success, message = pcall(DoSearch, Text)

    if not success then
        message = message:match("[^:]+: (.*)") or message -- strip stack location
        DEFAULT_CHAT_FRAME:AddMessage(RED..AL["AtlasLoot"]..": "..WHITE..message);
    elseif #AtlasLootCharDB["SearchResult"] == 0 then
		local itemFilterErrorMessage = "";
		if operator then
			itemFilterErrorMessage = [[
Please check if you have a typo in the filter.
For help, type "/atlasloothelp".
You might also have to query the server for item informations to load them into your client's Cache.]];
		end
		DEFAULT_CHAT_FRAME:AddMessage(RED..AL["AtlasLoot"]..": "..WHITE..AL["No match found for"].." \""..Text.."\"."..itemFilterErrorMessage);
	else
		currentPage = 1;
		SearchResult = AtlasLoot_CategorizeWishList(AtlasLootCharDB["SearchResult"]);
		AtlasLoot_ShowItemsFrame("SearchResult", "SearchResultPage1", (AL["Search Result: %s"]):format(AtlasLootCharDB.LastSearchedText or ""), pFrame);
	end
end

function AtlasLoot:ShowSearchOptions(button)
	local dewdrop = AceLibrary("Dewdrop-2.0");
	if dewdrop:IsOpen(button) then
		dewdrop:Close(1);
	else
		local setOptions = function()
			dewdrop:AddLine(
				"text", AL["Search on"],
				"isTitle", true,
				"notCheckable", true
			);
			dewdrop:AddLine(
				"text", AL["All modules"],
				"checked", self.db.profile.SearchOn.All,
				"tooltipTitle", AL["All modules"],
				"tooltipText", AL["If checked, AtlasLoot will load and search across all the modules."],
				"func", function()
					self.db.profile.SearchOn.All = not self.db.profile.SearchOn.All;
				end
			);
			for _, module in ipairs(modules) do
				if IsAddOnLoadOnDemand(module) then
					local title = GetAddOnMetadata(module, "title");
					local notes = GetAddOnMetadata(module, "notes");
					dewdrop:AddLine(
						"text", title,
						"checked", self.db.profile.SearchOn.All or self.db.profile.SearchOn[module],
						"disabled", self.db.profile.SearchOn.All,
						"tooltipTitle", title,
						"tooltipText", notes,
						"func", function()
							if self.db.profile.SearchOn[module] == nil then
								self.db.profile.SearchOn[module] = true;
							else
								self.db.profile.SearchOn[module] = nil;
							end
						end
					);
				end
			end
			dewdrop:AddLine(
				"text", AL["Search options"],
				"isTitle", true,
				"notCheckable", true
			);
			dewdrop:AddLine(
				"text", AL["Partial matching"],
				"checked", self.db.profile.PartialMatching,
				"tooltipTitle", AL["Partial matching"],
				"tooltipText", AL["If checked, AtlasLoot search item names for a partial match."],
				"func", function() self.db.profile.PartialMatching = not self.db.profile.PartialMatching end
			);
			dewdrop:AddLine(
				"text", "Only search equipable", -- TODO: put in AL
				"checked", self.db.profile.EquipableFilter,
				"tooltipTitle", "Equipable filter", -- TODO: put in AL
				"tooltipText", "If checked, AtlasLoot only includes items that are euipable.", -- TODO: put in AL
				"func", function() self.db.profile.EquipableFilter = not self.db.profile.EquipableFilter end
			);
		end;
		dewdrop:Open(button,
			'point', function(parent)
				return "BOTTOMLEFT", "BOTTOMRIGHT";
			end,
			"children", setOptions
		);
	end
end

function AtlasLoot:GetOriginalDataFromSearchResult(itemID)
	for i, v in ipairs(AtlasLootCharDB["SearchResult"]) do
		if v[2] == itemID then
            AtlasLoot_ShowWishListDropDown(v[2], v[3], v[4], v[5], v[8], this, nil, v[AtlasLoot_Difficulty.DIF_SEARCH]);
        end
	end
end

-- Copied and modified from AtlasLoot_GetWishListPage
function AtlasLoot:GetSearchResultPage(page)
	if not SearchResult then SearchResult = AtlasLoot_CategorizeWishList(AtlasLootCharDB["SearchResult"]) end
	-- Calc for maximal pages
	local pageMax = math.ceil(#SearchResult / 30);
	if page < 1 then page = 1 end
	if page > pageMax then page = pageMax end
	currentPage = page;

	-- Table copy
    local k=1;
	local result = {};
	local start = (page - 1) * 30 + 1;
	for i = start, start + 29 do
		if not SearchResult[i] then break end
        SearchResult[i][1] = k;
		table.insert(result, SearchResult[i]);
        k=k+1;
	end
	return result, pageMax;
end
