local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

AtlasLoot:AddNewMenus({

	----------------------------
    --------- Classic ----------
    ----------------------------
	["DesolaceCentaurClans"] = {
		Name = "Desolace Centaur Clans",
		{ "Magram Clan Centaur", {}, WebID = {93,"faction"} },
		{ "Gelkis Clan Centaur", {}, WebID = {92,"faction"} },
	},

	["Wintersaber"] = {
		Name = "Wintersaber Trainers",
		{ "Wintersaber Trainers", {} },
	},

	["ArathiBasinFactions"] = {
		Name = "Arathi Basin",
		{ "The League of Arathor - Alliance", {}, WebID = {509,"faction"} },
		{ "The Defilers - Horde", {}, WebID = {510,"faction"} },
	},

	["Argent"] = {
		Name = "Argent Dawn",
		WebID = {529,"faction"},
		{ "Argent Dawn", {} },
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Bloodsail"] = {
		Name = "Bloodsail Buccaneers",
		WebID = {87,"faction"},
		{ "Bloodsail Buccaneers", {} },
	},

	["Hydraxian"] = {
		Name = "Hydraxian Waterlords",
		WebID = {749,"faction"},
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["AQBroodRings"] = {
		Name = "Brood of Nozdormu",
		{ "Brood of Nozdormu", {}, WebID = {910,"faction"} },
	},

	["Cenarion"] = {
		Name = "Cenarion Circle",
		WebID = {609,"faction"},
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["AlteracFactions"] = {
		Name = "Alterac Valley",
		{ "Stormpike Guard - Alliance", {}, {730,"faction"} },
		{ "Frostwolf Clan - Horde", {}, WebID = {729,"faction"} },
	},

	["Thorium"] = {
		Name = "Thorium Brotherhood",
		WebID = {59,"faction"},
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Timbermaw"] = {
		Name = "Timbermaw Hold",
		WebID = {576,"faction"},
		{ "Timbermaw Hold", {} },
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Zandalar"] = {
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
		Name = "Ashtongue Deathsworn",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Exalted", {} },
	},

	["CExpedition"] = {
		Name = "Cenarion Expedition",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["HonorHold"] = {
		Name = "Honor Hold - Alliance",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["KeepersofTime"] = {
		Name = "Keepers of Time",
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Kurenai"] = {
		Name = "Kurenai - Alliance",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["LowerCity"] = {
		Name = "Lower City",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Netherwing"] = {
		Name = "Netherwing",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Ogrila"] = {
		Name = "Ogri'la",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Skyguard"] = {
		Name = "Sha'tari Skyguard",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["SunOffensive"] = {
		Name = "Shattered Sun Offensive",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Sporeggar"] = {
		Name = "Sporeggar",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Aldor"] = {
		Name = "The Aldor",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Consortium"] = {
		Name = "The Consortium",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Maghar"] = {
		Name = "The Mag'har - Horde",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["ScaleSands"] = {
		Name = "The Scale of the Sands",
		{ "Rings", {} },
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Scryer"] = {
		Name = "The Scryers",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Shatar"] = {
		Name = "The Sha'tar",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["VioletEye"] = {
		Name = "The Violet Eye",
		{ "Rings", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Thrallmar"] = {
		Name = "Thrallmar - Horde",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["Tranquillien"] = {
		Name = "Tranquillien - Horde",
		{ "Friendly", {} },
		{ "Honored", {} },
		{ "Revered", {} },
		{ "Exalted", {} },
	},

	["ShattrathFlasks"] = {
		Name = "Shattrath Flasks",
		{ "Shattrath Flasks", {} },
	},
})
