local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

AtlasLoot:AddNewMenus({

	----------------------------
    --------- Classic ----------
    ----------------------------
	["DesolaceCentaurClans"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Desolace Centaur Clans",
		{ "Magram Clan Centaur", {}, WebID = {93,"faction"} },
		{ "Gelkis Clan Centaur", {}, WebID = {92,"faction"} },
	},

	["Wintersaber"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Wintersaber Trainers",
		{ "Wintersaber Trainers", {} },
	},

	["ArathiBasinFactions"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Arathi Basin",
		{ "The League of Arathor - Alliance", {}, WebID = {509,"faction"} },
		{ "The Defilers - Horde", {}, WebID = {510,"faction"} },
	},

	["Argent"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Argent Dawn",
		WebID = {529,"faction"},
		{ "Argent Dawn", {} },
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Bloodsail"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Bloodsail Buccaneers",
		WebID = {87,"faction"},
		{ "Bloodsail Buccaneers", {} },
	},

	["Hydraxian"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Hydraxian Waterlords",
		WebID = {749,"faction"},
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["AQBroodRings"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Brood of Nozdormu",
		{ "Brood of Nozdormu", {}, WebID = {910,"faction"} },
	},

	["Cenarion"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Cenarion Circle",
		WebID = {609,"faction"},
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["AlteracFactions"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Alterac Valley",
		{ "Stormpike Guard - Alliance", {}, {730,"faction"} },
		{ "Frostwolf Clan - Horde", {}, WebID = {729,"faction"} },
	},

	["Thorium"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Thorium Brotherhood",
		WebID = {59,"faction"},
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Timbermaw"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Timbermaw Hold",
		WebID = {576,"faction"},
		{ "Timbermaw Hold", {} },
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Zandalar"] = {
		Module = "AtlasLoot_OriginalWoW",
		Name = "Zandalar Tribe",
		WebID = {270,"faction"},
		{ "Zandalar Tribe", {} },
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	----------------------------
    ----------- TBC ------------
    ----------------------------
	["Ashtongue"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Ashtongue Deathsworn",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Exalted", {} },
	},

	["CExpedition"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Cenarion Expedition",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["HonorHold"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Honor Hold - Alliance",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["KeepersofTime"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Keepers of Time",
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Kurenai"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Kurenai - Alliance",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["LowerCity"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Lower City",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Netherwing"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Netherwing",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Ogrila"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Ogri'la",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Skyguard"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Sha'tari Skyguard",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["SunOffensive"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Shattered Sun Offensive",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Sporeggar"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Sporeggar",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Aldor"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "The Aldor",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Consortium"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "The Consortium",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Maghar"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "The Mag'har - Horde",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["ScaleSands"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "The Scale of the Sands",
		{ "Rings", {} },
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Scryer"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "The Scryers",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Shatar"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "The Sha'tar",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["VioletEye"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "The Violet Eye",
		{ "Rings", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Thrallmar"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Thrallmar - Horde",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Tranquillien"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Tranquillien - Horde",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["ShattrathFlasks"] = {
		Module = "AtlasLoot_BurningCrusade",
		Name = "Shattrath Flasks",
		{ "Shattrath Flasks", {} },
	},
})
