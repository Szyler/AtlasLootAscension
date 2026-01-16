local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

AtlasLoot:AddNewMenus({
---------------
--- Alchemy ---
---------------
	["Tabards"] = {
		Module = "AtlasLoot_Vanity",
		Name = "Tabards",
		{ "Tabards", {} },
	},

	["VanityPets"] = {
		Module = "AtlasLoot_Vanity",
		Name = "Vanity Pets",
		{ "Merchant Sold", {} },
		{ "Quest", {} },
		{ "Crafted", {} },
		{ "Achievement", {} },
		{ "Faction", {} },
		{ "World Drop", {} },
		{ "Dungeon/Raid", {} },
		{ "World Events", {} },
		{ "Promotional", {} },
		{ "Pet Store", {} },
		{ "Accessories", {} },
	},

	["Mounts"] = {
		Module = "AtlasLoot_Vanity",
		Name = "Mounts",
		{ "Alliance", {} },
		{ "Horde", {} },
		{ "Neutral Faction", {} },
		{ "PvP", {} },
		{ "Dungeon/Raid", {} },
		{ "Achievement Reward", {} },
		{ "Rare Mounts", {} },
		{ "Quest Reward", {} },
		{ "Crafted Mounts", {} },
		{ "Promotional Mounts", {} },
		{ "World Events", {} },
	},
})
