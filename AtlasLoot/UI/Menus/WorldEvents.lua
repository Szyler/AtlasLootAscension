local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local color = AtlasLoot.Colors

AtlasLoot:AddNewMenus({
---------------
--- Alchemy ---
---------------
	["ArgentTournament"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Argent Tournament",
		{ "Miscellaneous", {} },
		{ "Tabards / Banner", {} },
		{ "Armor", {} },
		{ "Weapons", {} },
		{ "Vanity Pets", {} },
		{ "Mounts", {} },
	},

	["BrewfestCLASSIC"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Brewfest",
		{ "Brewfest", {} },
		{ "Coren Direbrew", {} },
	},

	["BrewfestTBC"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Brewfest",
		{ "Brewfest", {} },
		{ "Coren Direbrew", {} },
	},

	["BrewfestWRATH"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Brewfest",
		{ "Brewfest", {} },
		{ "Coren Direbrew", {} },
	},

	["ChildrensWeek"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Children's Week",
		{ "Children's Week", {} },
	},

	["DayoftheDead"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Day of the Dead",
		{ "Day of the Dead", {} },
	},

	["Winterviel"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Feast of Winter Veil",
		{ "Miscellaneous", {} },
		{ "Presents", {} },
	},

	["HalloweenCLASSIC"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Hallow's End",
		{ "Headless Horseman", {} },
		{ "Miscellaneous", {} },
		{ "Masks", {} },
	},

	["HalloweenTBC"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Hallow's End",
		{ "Headless Horseman", {} },
		{ "Miscellaneous", {} },
		{ "Masks", {} },
	},

	["HalloweenWRATH"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Hallow's End",
		{ "Headless Horseman", {} },
		{ "Miscellaneous", {} },
		{ "Masks", {} },
	},

	["HarvestFestival"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Harvest Festival",
		{ "Harvest Festival", {} },
	},

	["Valentineday"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Love is in the Air",
		{ "Love is in the Air", {} },
	},

	["LunarFestival"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Lunar Festival",
		{ "Miscellaneous", {} },
		{ "Crafting Patterns", {} },
	},

	["MidsummerFestivalCLASSIC"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Midsummer Fire Festival",
		{ "Midsummer Fire Festival", {} },
		{ "Lord Ahune", {} },
	},

	["MidsummerFestivalTBC"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Midsummer Fire Festival",
		{ "Midsummer Fire Festival", {} },
		{ "Lord Ahune", {} },
	},

	["MidsummerFestivalWRATH"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Midsummer Fire Festival",
		{ "Midsummer Fire Festival", {} },
		{ "Lord Ahune", {} },
	},

	["Noblegarden"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Argent",
		{ "Noblegarden", {} },
	},

	["PilgrimsBounty"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Pilgrim's Bounty",
		{ "Pilgrim's Bounty", {} },
	},

	["BashirLanding"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Bash'ir Landing Skyguard",
		{ "Bash'ir Landing Skyguard", {} },
	},

	["Darkmoon"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Darkmoon Faire",
		{ "Darkmoon Faire Rewards", {} },
		{ "Low Level Decks", {} },
		{ "Original and BC Trinkets", {} },
		{ "WotLK Trinkets", {} },
	},

	["ElementalInvasion"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Elemental Invasion",
		{ "Elemental Invasion", {} },
	},

	["GurubashiArena"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Gurubashi Arena Booty Run",
		{ "Gurubashi Arena Booty Run", {} },
	},

	["FishingExtravaganza"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Stranglethorn Fishing",
		{ "Stranglethorn Fishing Extravaganza", {} },
	},

	["AbyssalCouncil"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Abyssal Council",
		{ "Templars", {} },
		{ "Dukes", {} },
		{ "High Council", {} },
	},

	["EthereumPrison"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Ethereum Prison",
		{ "Armbreaker Huffaz", {} },
		{ "Fel Tinkerer Zortan", {} },
		{ "Forgosh", {} },
		{ "Gul'bor", {} },
		{ "Malevus the Mad", {} },
		{ "Porfus the Gem Gorger", {} },
		{ "Wrathbringer Laz-tarash", {} },
		{ "Bash'ir Landing Stasis Chambers", {} },
	},

	["Shartuul"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Shartuul",
		{ "Shartuul", {} },
	},

	["Skettis"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Skettis",
		{ "Darkscreecher Akkarai", {} },
		{ "Karrog", {} },
		{ "Gezzarak the Huntress", {} },
		{ "Vakkiz the Windrager", {} },
		{ "Terokk", {} },
		{ "Talonpriest Ishaal", {} },
		{ "Hazzik's Package", {} },
	},

	["ScourgeInvasionEvent"] = {
		Module = "AtlasLoot_WorldEvents",
		Name = "Scourge Invasion",
		{ "Scourge Invasion", {} },
	},
})
