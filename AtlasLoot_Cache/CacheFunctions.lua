local function CheckIfEmptyTable(table)
	if next(table) then
		return false
	else
		return true
	end
end

local databaseUpdated
--Updates the ItemIDsDatabase with any missing or incorrect items
function LoadItemIDsDatabase()
	AtlasLootItemCache = AtlasLootItemCache or {}
    if databaseUpdated then return end
	--loads any items in the saved varriables cache
    if AtlasLootItemCache and not CheckIfEmptyTable(AtlasLootItemCache) then
		for normalID, item in pairs(AtlasLootItemCache) do
			for itemDif, itemID in pairs(item) do
				ItemIDsDatabase[normalID] = ItemIDsDatabase[normalID] or {}
				ItemIDsDatabase[normalID][itemDif] = itemID
			end
		end
	end

    collectgarbage("collect")
    databaseUpdated = true
end

--[[
GetItemDifficultyID(id, difficulty)
Finds the Ids of other difficulties based on the normal id of the item and the difficulty parameter given.
If the id is sent in a table it will search for the the right ID frist then return the difficulty
]]
function GetItemDifficultyID(id, difficulty)
	if type(id) == "table" then
		-- Corrected itemIDs datatbase
		-- Searchs the returns the itemID from any item difficulty to any item difficulty
		for normalID, item in pairs(ItemIDsDatabaseCorrectedIDs) do
			for _, newID in pairs(item) do
				if newID == id[1] then
					if difficulty == 3 then
						return normalID
					else
						return ItemIDsDatabaseCorrectedIDs[normalID][difficulty]
					end
				end
			end
		end
		-- Main itemIDs database
		-- Searchs the returns the itemID from any item difficulty to any item difficulty
		for normalID, item in pairs(ItemIDsDatabase) do
			for _, newID in pairs(item) do
				if newID == id[1] then
					if difficulty == 3 then
						return normalID
					else
						return ItemIDsDatabase[normalID][difficulty]
					end
				end
			end
		end
		return id[1]
	else
		-- Difficulty from the normalID
		if not difficulty or difficulty == 3 then return id end
		local correctID = ItemIDsDatabaseCorrectedIDs[id] or ItemIDsDatabase[id]
		if correctID and correctID[difficulty] then
			return correctID[difficulty]
		end
		return id
	end
end