local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
-----------
--- PvP ---
-----------

----------------------
--- Alterac Valley ---
----------------------
AtlasLoot:AddItemData("dontSort", {
	["AVMisc"] = {
		{
			{ icon = "INV_BannerPVP_02", name = "Alliance", desc = "Stormpike Guard" },
			{ itemID = 19030, price = "50000 #alliance#" }, --Stormpike Battle Charger
			{ itemID = 19045, price = "15000 #alliance#" }, --Stormpike Battle Standard
			{ itemID = 19032, price = "15000 #alliance#" }, --Stormpike Battle Tabard
			{ itemID = 19316, price = "60 #silver# 1 #faction#" }, --Ice Threaded Arrow
			{ itemID = 17348, price = "10 #silver# 8 #faction#" }, --Major Healing Draught
			{ itemID = 17349, price = "5 #silver# 1 #faction#" }, --Superior Healing Draught
			{ itemID = 19301, price = "70 #silver#" }, --Alterac Manna Biscuit
			{ itemID = 19307, price = "80 #silver#" }, --Alterac Heavy Runecloth Bandage
			{ icon = "INV_BannerPVP_01", name = "Horde", desc = "Frostwolf Clan" },
			{ itemID = 19029, price = "50000 #horde#" }, --Horn of the Frostwolf Howler
			{ itemID = 19046, price = "15000 #horde#" }, --Frostwolf Battle Standard
			{ itemID = 19031, price = "15000 #horde#" }, --Frostwolf Battle Tabard
			{ itemID = 19317, price = "60 #silver# 1 #faction#" }, --Ice Threaded Bullet
			{ itemID = 17351, price = "10 #silver# 8 #faction#" }, --Major Mana Draught
			{ itemID = 17352, price = "5 #silver# 1 #faction#" }, --Superior Mana Draught
			{ itemID = 19318, price = "50 #silver#" }, --Bottled Alterac Spring Water
		},
		{
			{ itemID = 19086, price = "1600 #alliance#" }, --Stormpike Sage's Cloak
			{ itemID = 19084, price = "1600 #alliance#" }, --Stormpike Soldier's Cloak
			{ itemID = 19094, price = "3000 #alliance#" }, --Stormpike Cloth Girdle
			{ itemID = 19093, price = "3000 #alliance#" }, --Stormpike Leather Girdle
			{ itemID = 19092, price = "3000 #alliance#" }, --Stormpike Mail Girdle
			{ itemID = 19091, price = "3000 #alliance#" }, --Stormpike Plate Girdle
			{ itemID = 19098, price = "1600 #alliance#" }, --Stormpike Sage's Pendant
			{ itemID = 19097, price = "1600 #alliance#" }, --Stormpike Soldier's Pendant
			{ itemID = 19100, price = "2400 #alliance#" }, --Electrified Dagger
			{ itemID = 19104, price = "2400 #alliance#" }, --Stormstrike Hammer
			{ itemID = 19102, price = "3000 #alliance#" }, --Crackling Staff
			{ itemID = 19320, price = "1600 #alliance#" }, --Gnoll Skin Bandolier
			{ itemID = 19319, price = "1600 #alliance#" }, --Harpy Hide Quiver
			{ itemID = 19325, price = "5000 #faction#" }, --Don Julio's Band
			{ itemID = 21563, price = "5000 #faction#" }, --Don Rodrigo's Band
			{ itemID = 19312, price = "5000 #faction#" }, --Lei of the Lifegiver
			{ itemID = 19315, price = "5000 #faction#" }, --Therazane's Touch
			{ itemID = 19308, price = "5000 #faction#" }, --Tome of Arcane Domination
			{ itemID = 19309, price = "5000 #faction#" }, --Tome of Shadow Force
			{ itemID = 19311, price = "5000 #faction#" }, --Tome of Fiery Arcana
			{ itemID = 19310, price = "5000 #faction#" }, --Tome of the Ice Lord
			{ itemID = 19324, price = "5000 #faction#" }, --The Lobotomizer
			{ itemID = 19321, price = "5000 #faction#" }, --The Immovable Object
			{ itemID = 19323, price = "5000 #faction#" }, --The Unstoppable Force
		},
		{
			{ itemID = 19085, price = "1600 #horde#" }, --Frostwolf Advisor's Cloak
			{ itemID = 19083, price = "1600 #horde#" }, --Frostwolf Legionnaire's Cloak
			{ itemID = 19090, price = "3000 #horde#" }, --Frostwolf Cloth Belt
			{ itemID = 19089, price = "3000 #horde#" }, --Frostwolf Leather Belt
			{ itemID = 19088, price = "3000 #horde#" }, --Frostwolf Mail Belt
			{ itemID = 19087, price = "3000 #horde#" }, --Frostwolf Plate Belt
			{ itemID = 19096, price = "1600 #horde#" }, --Frostwolf Advisor's Pendant
			{ itemID = 19095, price = "1600 #horde#" }, --Frostwolf Legionnaire's Pendant
			{ itemID = 19099, price = "2400 #horde#" }, --Glacial Blade
			{ itemID = 19103, price = "2400 #horde#" }, --Frostbite
			{ itemID = 19101, price = "3000 #horde#" }, --Whiteout Staff
			{ itemID = 19320, price = "1600 #horde#" }, --Gnoll Skin Bandolier
			{ itemID = 19319, price = "1600 #horde#" }, --Harpy Hide Quiver
			{ itemID = 19325, price = "5000 #faction#" }, --Don Julio's Band
			{ itemID = 21563, price = "5000 #faction#" }, --Don Rodrigo's Band
			{ itemID = 19312, price = "5000 #faction#" }, --Lei of the Lifegiver
			{ itemID = 19315, price = "5000 #faction#" }, --Therazane's Touch
			{ itemID = 19308, price = "5000 #faction#" }, --Tome of Arcane Domination
			{ itemID = 19309, price = "5000 #faction#" }, --Tome of Shadow Force
			{ itemID = 19311, price = "5000 #faction#" }, --Tome of Fiery Arcana
			{ itemID = 19310, price = "5000 #faction#" }, --Tome of the Ice Lord
			{ itemID = 19324, price = "5000 #faction#" }, --The Lobotomizer
			{ itemID = 19321, price = "5000 #faction#" }, --The Immovable Object
			{ itemID = 19323, price = "5000 #faction#" }, --The Unstoppable Force
		},
	},

	--------------------
	--- Arathi Basin ---
	--------------------

	["AB_A"] = {
		{
			{ itemID = 17349, price = "5 #silver# 1 #alliance#" }, --Superior Healing Draught
			{ itemID = 17352, price = "5 #silver# 1 #alliance#" }, --Superior Mana Draught
			{ itemID = 20225, price = "18 #silver#" }, --Highlander's Enriched Ration
			{ itemID = 20227, price = "13,5 #silver#" }, --Highlander's Iron Ration
			{ itemID = 20226, price = "9 #silver#" }, --Highlander's Field Ration
			{ itemID = 20243, price = "18 #silver#" }, --Highlander's Runecloth Bandage
			{ itemID = 20237, price = "13,5 #silver#" }, --Highlander's Mageweave Bandage
			{ itemID = 20244, price = "9 #silver#" }, --Highlander's Silk Bandage
			{ itemID = 21119, price = "300 #alliance#" }, --Talisman of Arathor
			{ itemID = 21118, price = "300 #alliance#" }, --Talisman of Arathor
			{ itemID = 21117, price = "400 #alliance#" }, --Talisman of Arathor
			{ itemID = 20071, price = "3000 #alliance#" }, --Talisman of Arathor
		},
		{
			{ itemID = 20073, price = "5000 #alliance#" }, --Cloak of the Honor Guard
			{ itemID = 20070, price = "9000 #alliance#" }, --Sageclaw
			{ itemID = 20069, price = "16000 #alliance#" }, --Ironbark Staff
		},
		{
			{ itemID = 20097, price = "400 #alliance#" }, --Highlander's Cloth Girdle
			{ itemID = 20094, price = "400 #alliance#" }, --Highlander's Cloth Boots
			{ itemID = 20115, price = "400 #alliance#" }, --Highlander's Leather Girdle
			{ itemID = 20103, price = "400 #alliance#" }, --Highlander's Lizardhide Girdle
			{ itemID = 20112, price = "400 #alliance#" }, --Highlander's Leather Boots
			{ itemID = 20100, price = "400 #alliance#" }, --Highlander's Lizardhide Boots
			{ itemID = 20089, price = "300 #alliance#" }, --Highlander's Chain Girdle
			{ itemID = 20088, price = "400 #alliance#" }, --Highlander's Chain Girdle
			{ itemID = 20119, price = "300 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20118, price = "400 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20092, price = "300 #alliance#" }, --Highlander's Chain Greaves
			{ itemID = 20091, price = "400 #alliance#" }, --Highlander's Chain Greaves
			{ itemID = 20122, price = "300 #alliance#" }, --Highlander's Mail Greaves
			{ itemID = 20121, price = "400 #alliance#" }, --Highlander's Mail Greaves
			{ itemID = 20107, price = "300 #alliance#" }, --Highlander's Lamellar Girdle
			{ itemID = 20106, price = "400 #alliance#" }, --Highlander's Lamellar Girdle
			{ itemID = 20125, price = "300 #alliance#" }, --Highlander's Plate Girdle
			{ itemID = 20124, price = "400 #alliance#" }, --Highlander's Plate Girdle
			{ itemID = 20110, price = "300 #alliance#" }, --Highlander's Lamellar Greaves
			{ itemID = 20109, price = "400 #alliance#" }, --Highlander's Lamellar Greaves
			{ itemID = 20128, price = "300 #alliance#" }, --Highlander's Plate Greaves
			{ itemID = 20127, price = "400 #alliance#" }, --Highlander's Plate Greaves
		},
		{
			{ itemID = 20098, price = "300 #alliance#" }, --Highlander's Cloth Girdle
			{ itemID = 20095, price = "300 #alliance#" }, --Highlander's Cloth Boots
			{ itemID = 20116, price = "300 #alliance#" }, --Highlander's Leather Girdle
			{ itemID = 20104, price = "300 #alliance#" }, --Highlander's Lizardhide Girdle
			{ itemID = 20113, price = "300 #alliance#" }, --Highlander's Leather Boots
			{ itemID = 20101, price = "300 #alliance#" }, --Highlander's Lizardhide Boots
		},
		{
			{ itemID = 20099, price = "300 #alliance#" }, --Highlander's Cloth Girdle
			{ itemID = 20096, price = "300 #alliance#" }, --Highlander's Cloth Boots
			{ itemID = 20117, price = "300 #alliance#" }, --Highlander's Leather Girdle
			{ itemID = 20105, price = "300 #alliance#" }, --Highlander's Lizardhide Girdle
			{ itemID = 20120, price = "300 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20090, price = "300 #alliance#" }, --Highlander's Padded Girdle
			{ itemID = 20114, price = "300 #alliance#" }, --Highlander's Leather Boots
			{ itemID = 20102, price = "300 #alliance#" }, --Highlander's Lizardhide Boots
			{ itemID = 20123, price = "300 #alliance#" }, --Highlander's Mail Greaves
			{ itemID = 20093, price = "300 #alliance#" }, --Highlander's Padded Greaves
			{ itemID = 20108, price = "300 #alliance#" }, --Highlander's Lamellar Girdle
			{ itemID = 20126, price = "300 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20111, price = "300 #alliance#" }, --Highlander's Lamellar Greaves
			{ itemID = 20129, price = "300 #alliance#" }, --Highlander's Mail Greaves
		},
		{
			{ itemID = 20061, price = "9000 #alliance#" }, --Highlander's Epaulets
			{ itemID = 20047, price = "3000 #alliance#" }, --Highlander's Cloth Girdle
			{ itemID = 20054, price = "3000 #alliance#" }, --Highlander's Cloth Boots
		},
		{
			{ itemID = 20059, price = "9000 #alliance#" }, --Highlander's Leather Shoulders
			{ itemID = 20045, price = "3000 #alliance#" }, --Highlander's Leather Girdle
			{ itemID = 20052, price = "3000 #alliance#" }, --Highlander's Leather Boots
		},
		{
			{ itemID = 20060, price = "9000 #alliance#" }, --Highlander's Lizardhide Shoulders
			{ itemID = 20046, price = "3000 #alliance#" }, --Highlander's Lizardhide Girdle
			{ itemID = 20053, price = "3000 #alliance#" }, --Highlander's Lizardhide Boots
		},
		{
			{ itemID = 20055, price = "9000 #alliance#" }, --Highlander's Chain Pauldrons
			{ itemID = 20043, price = "3000 #alliance#" }, --Highlander's Chain Girdle
			{ itemID = 20050, price = "3000 #alliance#" }, --Highlander's Chain Greaves
		},
		{
			{ itemID = 20056, price = "9000 #alliance#" }, --Highlander's Mail Pauldrons
			{ itemID = 20044, price = "3000 #alliance#" }, --Highlander's Mail Girdle
			{ itemID = 20051, price = "3000 #alliance#" }, --Highlander's Mail Greaves
		},
		{
			{ itemID = 20057, price = "9000 #alliance#" }, --Highlander's Plate Spaulders
			{ itemID = 20041, price = "3000 #alliance#" }, --Highlander's Plate Girdle
			{ itemID = 20048, price = "3000 #alliance#" }, --Highlander's Plate Greaves
		},
		{
			{ itemID = 20058, price = "9000 #alliance#" }, --Highlander's Lamellar Spaulders
			{ itemID = 20042, price = "3000 #alliance#" }, --Highlander's Lamellar Girdle
			{ itemID = 20049, price = "3000 #alliance#" }, --Highlander's Lamellar Greaves
		},
	},

	["AB_H"] = {
		{
			{ itemID = 17349, price = "5 #silver# 5 #horde#" }, --Superior Healing Draught
			{ itemID = 17352, price = "5 #silver# 5 #horde#" }, --Superior Mana Draught
			{ itemID = 20222, price = "18 #silver#" }, --Defiler's Enriched Ration
			{ itemID = 20224, price = "15 #silver#" }, --Defiler's Iron Ration
			{ itemID = 20223, price = "9 #silver#" }, --Defiler's Field Ration
			{ itemID = 20234, price = "18 #silver#" }, --Defiler's Runecloth Bandage
			{ itemID = 20232, price = "15 #silver#" }, --Defiler's Mageweave Bandage
			{ itemID = 20235, price = "9 #silver#" }, --Defiler's Silk Bandage
			{ itemID = 21116, price = "300 #horde#" }, --Defiler's Talisman
			{ itemID = 21120, price = "300 #horde#" }, --Defiler's Talisman
			{ itemID = 21115, price = "400 #horde#" }, --Defiler's Talisman
			{ itemID = 20072, price = "3000 #horde#" }, --Defiler's Talisman
		},
		{
			{ itemID = 20068, price = "5000 #horde#" }, --Deathguard's Cloak
			{ itemID = 20214, price = "9000 #horde#" }, --Mindfang
			{ itemID = 20220, price = "16000 #horde#" }, --Ironbark Staff
		},
		{
			{ itemID = 20165, price = "400 #horde#" }, --Defiler's Cloth Girdle
			{ itemID = 20160, price = "400 #horde#" }, --Defiler's Cloth Boots
			{ itemID = 20193, price = "400 #horde#" }, --Defiler's Leather Girdle
			{ itemID = 20174, price = "400 #horde#" }, --Defiler's Lizardhide Girdle
			{ itemID = 20189, price = "400 #horde#" }, --Defiler's Leather Boots
			{ itemID = 20170, price = "400 #horde#" }, --Defiler's Lizardhide Boots
			{ itemID = 20153, price = "300 #horde#" }, --Defiler's Chain Girdle
			{ itemID = 20151, price = "400 #horde#" }, --Defiler's Chain Girdle
			{ itemID = 20198, price = "300 #horde#" }, --Defiler's Mail Girdle
			{ itemID = 20196, price = "400 #horde#" }, --Defiler's Mail Girdle
			{ itemID = 20156, price = "300 #horde#" }, --Defiler's Chain Greaves
			{ itemID = 20155, price = "400 #horde#" }, --Defiler's Chain Greaves
			{ itemID = 20200, price = "300 #horde#" }, --Defiler's Mail Greaves
			{ itemID = 20202, price = "400 #horde#" }, --Defiler's Mail Greaves
			{ itemID = 20180, price = "300 #horde#" }, --Defiler's Lamellar Girdle
			{ itemID = 20179, price = "400 #horde#" }, --Defiler's Lamellar Girdle
			{ itemID = 20206, price = "300 #horde#" }, --Defiler's Plate Girdle
			{ itemID = 20205, price = "400 #horde#" }, --Defiler's Plate Girdle
			{ itemID = 20183, price = "300 #horde#" }, --Defiler's Lamellar Greaves
			{ itemID = 20185, price = "400 #horde#" }, --Defiler's Lamellar Greaves
			{ itemID = 20209, price = "300 #horde#" }, --Defiler's Plate Greaves
			{ itemID = 20211, price = "400 #horde#" }, --Defiler's Plate Greaves
		},
		{
			{ itemID = 20166, price = "300 #horde#" }, --Defiler's Cloth Girdle
			{ itemID = 20161, price = "300 #horde#" }, --Defiler's Cloth Boots
			{ itemID = 20192, price = "300 #horde#" }, --Defiler's Leather Girdle
			{ itemID = 20173, price = "300 #horde#" }, --Defiler's Lizardhide Girdle
			{ itemID = 20187, price = "300 #horde#" }, --Defiler's Leather Boots
			{ itemID = 20168, price = "300 #horde#" }, --Defiler's Lizardhide Boots
		},
		{
			{ itemID = 20164, price = "300 #horde#" }, --Defiler's Cloth Girdle
			{ itemID = 20162, price = "300 #horde#" }, --Defiler's Cloth Boots
			{ itemID = 20191, price = "300 #horde#" }, --Defiler's Leather Girdle
			{ itemID = 20172, price = "300 #horde#" }, --Defiler's Lizardhide Girdle
			{ itemID = 20152, price = "300 #horde#" }, --Defiler's Chain Girdle
			{ itemID = 20197, price = "300 #horde#" }, --Defiler's Padded Girdle
			{ itemID = 20188, price = "300 #horde#" }, --Defiler's Leather Boots
			{ itemID = 20169, price = "300 #horde#" }, --Defiler's Lizardhide Boots
			{ itemID = 20201, price = "300 #horde#" }, --Defiler's Mail Greaves
			{ itemID = 20157, price = "300 #horde#" }, --Defiler's Chain Greaves
			{ itemID = 20178, price = "300 #horde#" }, --Defiler's Lamellar Girdle
			{ itemID = 20207, price = "300 #horde#" }, --Defiler's Mail Girdle
			{ itemID = 20182, price = "300 #horde#" }, --Defiler's Lamellar Greaves
			{ itemID = 20210, price = "300 #horde#" }, --Defiler's Mail Greaves
		},
		{
			{ itemID = 20176, price = "9000 #horde#" }, --Defiler's Epaulets
			{ itemID = 20163, price = "3000 #horde#" }, --Defiler's Cloth Girdle
			{ itemID = 20159, price = "3000 #horde#" }, --Defiler's Cloth Boots
		},
		{
			{ itemID = 20194, price = "9000 #horde#" }, --Defiler's Leather Shoulders
			{ itemID = 20190, price = "3000 #horde#" }, --Defiler's Leather Girdle
			{ itemID = 20186, price = "3000 #horde#" }, --Defiler's Leather Boots
		},
		{
			{ itemID = 20175, price = "9000 #horde#" }, --Defiler's Lizardhide Shoulders
			{ itemID = 20171, price = "3000 #horde#" }, --Defiler's Lizardhide Girdle
			{ itemID = 20167, price = "3000 #horde#" }, --Defiler's Lizardhide Boots
		},
		{
			{ itemID = 20158, price = "9000 #horde#" }, --Defiler's Chain Pauldrons
			{ itemID = 20150, price = "3000 #horde#" }, --Defiler's Chain Girdle
			{ itemID = 20154, price = "3000 #horde#" }, --Defiler's Chain Greaves
		},
		{
			{ itemID = 20203, price = "9000 #horde#" }, --Defiler's Mail Pauldrons
			{ itemID = 20195, price = "3000 #horde#" }, --Defiler's Mail Girdle
			{ itemID = 20199, price = "3000 #horde#" }, --Defiler's Mail Greaves
		},
		{
			{ itemID = 20212, price = "9000 #horde#" }, --Defiler's Plate Spaulders
			{ itemID = 20204, price = "3000 #horde#" }, --Defiler's Plate Girdle
			{ itemID = 20208, price = "3000 #horde#" }, --Defiler's Plate Greaves
		},
		{
			{ itemID = 20184, price = "9000 #horde#" }, --Defiler's Lamellar Spaulders
			{ itemID = 20177, price = "3000 #horde#" }, --Defiler's Lamellar Girdle
			{ itemID = 20181, price = "3000 #horde#" }, --Defiler's Lamellar Greaves
		},
	},

	---------------------
	--- Warsong Gulch ---
	---------------------

	["WSG_A"] = {
		{
			{ itemID = 19506, price = "12000 #faction#" }, --Silverwing Battle Tabard
			{ itemID = 17348, price = "10 #silver# 2 #faction#" }, --Major Healing Draught
			{ itemID = 17349, price = "5 #silver# 5 #faction#" }, --Superior Healing Draught
			{ itemID = 19060, price = "20 #silver#" }, --Warsong Gulch Enriched Ration
			{ itemID = 19062, price = "10 #silver#" }, --Warsong Gulch Field Ration
			{ itemID = 19067, price = "15 #silver#" }, --Warsong Gulch Mageweave Bandage
		},
		{
			{ itemID = 20428, price = "100 #alliance#" }, --Caretaker's Cape
			{ itemID = 19533, price = "100 #alliance#" }, --Caretaker's Cape
			{ itemID = 19532, price = "300 #alliance#" }, --Caretaker's Cape
			{ itemID = 19531, price = "300 #alliance#" }, --Caretaker's Cape
			{ itemID = 19530, price = "1600 #alliance#" }, --Caretaker's Cape
			{ itemID = 20444, price = "100 #alliance#" }, --Sentinel's Medallion
			{ itemID = 19541, price = "100 #alliance#" }, --Sentinel's Medallion
			{ itemID = 19540, price = "300 #alliance#" }, --Sentinel's Medallion
			{ itemID = 19539, price = "300 #alliance#" }, --Sentinel's Medallion
			{ itemID = 19538, price = "1600 #alliance#" }, --Sentinel's Medallion
			{ itemID = 21568, price = "300 #alliance#" }, --Rune of Duty
			{ itemID = 21567, price = "300 #alliance#" }, --Rune of Duty
			{ itemID = 20431, price = "100 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 19525, price = "100 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 19524, price = "300 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 19523, price = "300 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 19522, price = "1600 #alliance#" }, --Lorekeeper's Ring
			{ itemID = 20439, price = "100 #alliance#" }, --Protector's Band
			{ itemID = 19517, price = "100 #alliance#" }, --Protector's Band
			{ itemID = 19515, price = "300 #alliance#" }, --Protector's Band
			{ itemID = 19516, price = "300 #alliance#" }, --Protector's Band
			{ itemID = 19514, price = "1600 #alliance#" }, --Protector's Band
			{ itemID = 21566, price = "300 #alliance#" }, --Rune of Perfection
			{ itemID = 21565, price = "300 #alliance#" }, --Rune of Perfection
		},
		{
			{ itemID = 20443, price = "300 #alliance#" }, --Sentinel's Blade
			{ itemID = 19549, price = "400 #alliance#" }, --Sentinel's Blade
			{ itemID = 19548, price = "500 #alliance#" }, --Sentinel's Blade
			{ itemID = 19547, price = "700 #alliance#" }, --Sentinel's Blade
			{ itemID = 19546, price = "6000 #alliance#" }, --Sentinel's Blade
			{ itemID = 20440, price = "300 #alliance#" }, --Protector's Sword
			{ itemID = 19557, price = "400 #alliance#" }, --Protector's Sword
			{ itemID = 19556, price = "500 #alliance#" }, --Protector's Sword
			{ itemID = 19555, price = "700 #alliance#" }, --Protector's Sword
			{ itemID = 19554, price = "6000 #alliance#" }, --Protector's Sword
			{ itemID = 20434, price = "500 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 19573, price = "700 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 19572, price = "1000 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 19571, price = "5000 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 19570, price = "15000 #alliance#" }, --Lorekeeper's Staff
			{ itemID = 20438, price = "300 #alliance#" }, --Outrunner's Bow
			{ itemID = 19565, price = "400 #alliance#" }, --Outrunner's Bow
			{ itemID = 19564, price = "500 #alliance#" }, --Outrunner's Bow
			{ itemID = 19563, price = "700 #alliance#" }, --Outrunner's Bow
			{ itemID = 19562, price = "6000 #alliance#" }, --Outrunner's Bow
		},
		{
			{ itemID = 19597, price = "500 #alliance#" }, --Dryad's Wrist Bindings
			{ itemID = 19596, price = "700 #alliance#" }, --Dryad's Wrist Bindings
			{ itemID = 19595, price = "5000 #alliance#" }, --Dryad's Wrist Bindings
			{ itemID = 19590, price = "500 #alliance#" }, --Forest Stalker's Bracers
			{ itemID = 19589, price = "700 #alliance#" }, --Forest Stalker's Bracers
			{ itemID = 19587, price = "5000 #alliance#" }, --Forest Stalker's Bracers
			{ itemID = 19584, price = "500 #alliance#" }, --Windtalker's Wristguards
			{ itemID = 19583, price = "700 #alliance#" }, --Windtalker's Wristguards
			{ itemID = 19582, price = "5000 #alliance#" }, --Windtalker's Wristguards
			{ itemID = 19581, price = "500 #alliance#" }, --Berserker Bracers
			{ itemID = 19580, price = "700 #alliance#" }, --Berserker Bracers
			{ itemID = 19578, price = "5000 #alliance#" }, --Berserker Bracers
			{ itemID = 22752, price = "9000 #alliance#" }, --Sentinel's Silk Leggings
			{ itemID = 22749, price = "9000 #alliance#" }, --Sentinel's Leather Pants
			{ itemID = 22750, price = "9000 #alliance#" }, --Sentinel's Lizardhide Pants
			{ itemID = 22748, price = "9000 #alliance#" }, --Sentinel's Chain Leggings
			{ itemID = 30497, price = "9000 #alliance#" }, --Sentinel's Mail Leggings
			{ itemID = 22753, price = "9000 #alliance#" }, --Sentinel's Lamellar Legguards
			{ itemID = 22672, price = "9000 #alliance#" }, --Sentinel's Plate Legguards
		},
	},

	["WSG_H"] = {
		{
			{ itemID = 19505, price = "12000 #faction#" }, --Warsong Battle Tabard
			{ itemID = 17351, price = "10 #silver# 2 #faction#" }, --Major Mana Draught
			{ itemID = 17352, price = "5 #silver# 5 #faction#" }, --Superior Mana Draught
			{ itemID = 19061, price = "15 #silver#" }, --Warsong Gulch Iron Ration
			{ itemID = 19066, price = "20 #silver#" }, --Warsong Gulch Runecloth Bandage
			{ itemID = 19068, price = "10 #silver#" }, --Warsong Gulch Silk Bandage
		},
		{
			{ itemID = 20427, price = "100 #horde#" }, --Battle Healer's Cloak
			{ itemID = 19529, price = "100 #horde#" }, --Battle Healer's Cloak
			{ itemID = 19528, price = "300 #horde#" }, --Battle Healer's Cloak
			{ itemID = 19527, price = "300 #horde#" }, --Battle Healer's Cloak
			{ itemID = 19526, price = "1600 #horde#" }, --Battle Healer's Cloak
			{ itemID = 20442, price = "100 #horde#" }, --Scout's Medallion
			{ itemID = 19537, price = "100 #horde#" }, --Scout's Medallion
			{ itemID = 19536, price = "300 #horde#" }, --Scout's Medallion
			{ itemID = 19535, price = "300 #horde#" }, --Scout's Medallion
			{ itemID = 19534, price = "1600 #horde#" }, --Scout's Medallion
			{ itemID = 21568, price = "300 #horde#" }, --Rune of Duty
			{ itemID = 21567, price = "300 #horde#" }, --Rune of Duty
			{ itemID = 20426, price = "100 #horde#" }, --Advisor's Ring
			{ itemID = 19521, price = "100 #horde#" }, --Advisor's Ring
			{ itemID = 19520, price = "300 #horde#" }, --Advisor's Ring
			{ itemID = 19519, price = "300 #horde#" }, --Advisor's Ring
			{ itemID = 19518, price = "1600 #horde#" }, --Advisor's Ring
			{ itemID = 20429, price = "100 #horde#" }, --Legionnaire's Band
			{ itemID = 19513, price = "100 #horde#" }, --Legionnaire's Band
			{ itemID = 19512, price = "300 #horde#" }, --Legionnaire's Band
			{ itemID = 19511, price = "300 #horde#" }, --Legionnaire's Band
			{ itemID = 19510, price = "1600 #horde#" }, --Legionnaire's Band
			{ itemID = 21566, price = "300 #horde#" }, --Rune of Perfection
			{ itemID = 21565, price = "300 #horde#" }, --Rune of Perfection
		},
		{
			{ itemID = 20441, price = "300 #horde#" }, --Scout's Blade
			{ itemID = 19545, price = "400 #horde#" }, --Scout's Blade
			{ itemID = 19544, price = "500 #horde#" }, --Scout's Blade
			{ itemID = 19543, price = "700 #horde#" }, --Scout's Blade
			{ itemID = 19542, price = "6000 #horde#" }, --Scout's Blade
			{ itemID = 20430, price = "300 #horde#" }, --Legionnaire's Sword
			{ itemID = 19553, price = "400 #horde#" }, --Legionnaire's Sword
			{ itemID = 19552, price = "500 #horde#" }, --Legionnaire's Sword
			{ itemID = 19551, price = "700 #horde#" }, --Legionnaire's Sword
			{ itemID = 19550, price = "6000 #horde#" }, --Legionnaire's Sword
			{ itemID = 20425, price = "500 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 19569, price = "700 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 19568, price = "1000 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 19567, price = "5000 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 19566, price = "15000 #horde#" }, --Advisor's Gnarled Staff
			{ itemID = 20437, price = "300 #horde#" }, --Outrider's Bow
			{ itemID = 19561, price = "400 #horde#" }, --Outrider's Bow
			{ itemID = 19560, price = "500 #horde#" }, --Outrider's Bow
			{ itemID = 19559, price = "700 #horde#" }, --Outrider's Bow
			{ itemID = 19558, price = "6000 #horde#" }, --Outrider's Bow
		},
		{
			{ itemID = 19597, price = "500 #horde#" }, --Dryad's Wrist Bindings
			{ itemID = 19596, price = "700 #horde#" }, --Dryad's Wrist Bindings
			{ itemID = 19595, price = "5000 #horde#" }, --Dryad's Wrist Bindings
			{ itemID = 19590, price = "500 #horde#" }, --Forest Stalker's Bracers
			{ itemID = 19589, price = "700 #horde#" }, --Forest Stalker's Bracers
			{ itemID = 19587, price = "5000 #horde#" }, --Forest Stalker's Bracers
			{ itemID = 19584, price = "500 #horde#" }, --Windtalker's Wristguards
			{ itemID = 19583, price = "700 #horde#" }, --Windtalker's Wristguards
			{ itemID = 19582, price = "5000 #horde#" }, --Windtalker's Wristguards
			{ itemID = 19581, price = "500 #horde#" }, --Berserker Bracers
			{ itemID = 19580, price = "700 #horde#" }, --Berserker Bracers
			{ itemID = 19578, price = "5000 #horde#" }, --Berserker Bracers
			{ itemID = 22747, price = "9000 #horde#" }, --Outrider's Silk Leggings
			{ itemID = 22740, price = "9000 #horde#" }, --Outrider's Leather Pants
			{ itemID = 22741, price = "9000 #horde#" }, --Outrider's Lizardhide Pants
			{ itemID = 22673, price = "9000 #horde#" }, --Outrider's Chain Leggings
			{ itemID = 22676, price = "9000 #horde#" }, --Outrider's Mail Leggings
			{ itemID = 30498, price = "9000 #horde#" }, --Outrider's Lamellar Legguards
			{ itemID = 22651, price = "9000 #horde#" }, --Outrider's Plate Legguards
		},
	},

	---------------------------------------
	--- PvP Level 60 Rare and Epic Sets ---
	---------------------------------------
	["PVPDruid"] = {
		{
			{ itemID = 16424, price = "9435 #alliance#" }, --Lieutenant Commander's Dragonhide Headguard
			{ itemID = 16423, price = "6885 #alliance#" }, --Lieutenant Commander's Dragonhide Shoulders
			{ itemID = 16421, price = "9435 #alliance#" }, --Knight-Captain's Dragonhide Chestpiece
			{ itemID = 16397, price = "5000 #alliance#" }, --Knight-Lieutenant's Dragonhide Grips
			{ itemID = 16422, price = "9435 #alliance#" }, --Knight-Captain's Dragonhide Leggings
			{ itemID = 16393, price = "5000 #alliance#" }, --Knight-Lieutenant's Dragonhide Treads
		},
		{
			{ itemID = 23308, price = "24000 #alliance#" }, --Lieutenant Commander's Dragonhide Headguard
			{ itemID = 23309, price = "14000 #alliance#" }, --Lieutenant Commander's Dragonhide Shoulders
			{ itemID = 23294, price = "24000 #alliance#" }, --Knight-Captain's Dragonhide Chestpiece
			{ itemID = 23280, price = "14000 #alliance#" }, --Knight-Lieutenant's Dragonhide Grips
			{ itemID = 23295, price = "24000 #alliance#" }, --Knight-Captain's Dragonhide Leggings
			{ itemID = 23281, price = "14000 #alliance#" }, --Knight-Lieutenant's Dragonhide Treads
		},
		{
			{ itemID = 16451, price = "68200 #alliance#" }, --Field Marshal's Dragonhide Helmet
			{ itemID = 16449, price = "52200 #alliance#" }, --Field Marshal's Dragonhide Spaulders
			{ itemID = 16452, price = "68200 #alliance#" }, --Field Marshal's Dragonhide Breastplate
			{ itemID = 16448, price = "52200 #alliance#" }, --Marshal's Dragonhide Gauntlets
			{ itemID = 16450, price = "68200 #alliance#" }, --Marshal's Dragonhide Legguards
			{ itemID = 16459, price = "52200 #alliance#" }, --Marshal's Dragonhide Boots
		},
		{
			{ itemID = 6116550, price = "2370 #arena# #horde#" }, --Grand Marshal's Chain Helm
			{ itemID = 6116551, price = "1930 #arena# #horde#" }, --Grand Marshal's Chain Spaulders
			{ itemID = 6116549, price = "2370 #arena# #horde#" }, --Grand Marshal's Chain Breastplate
			{ itemID = 6116555, price = "1430 #arena# #horde#" }, --Grand Marshal's Chain Grips
			{ itemID = 6116552, price = "2370 #arena# #horde#" }, --Grand Marshal's Chain Legguards
			{ itemID = 6116554, price = "1430 #arena# #horde#" }, --Grand Marshal's Chain Boots
		},
		{
			{ itemID = 16503, price = "9435 #horde#" }, --Champion's Dragonhide Headguard
			{ itemID = 16501, price = "6885 #horde#" }, --Champion's Dragonhide Shoulders
			{ itemID = 16504, price = "9435 #horde#" }, --Legionnaire's Dragonhide Chestpiece
			{ itemID = 16496, price = "5000 #horde#" }, --Blood Guard's Dragonhide Grips
			{ itemID = 16502, price = "9435 #horde#" }, --Legionnaire's Dragonhide Leggings
			{ itemID = 16494, price = "5000 #horde#" }, --Blood Guard's Dragonhide Treads
		},
		{
			{ itemID = 23253, price = "24000 #horde#" }, --Champion's Dragonhide Headguard
			{ itemID = 23254, price = "14000 #horde#" }, --Champion's Dragonhide Shoulders
			{ itemID = 22877, price = "24000 #horde#" }, --Legionnaire's Dragonhide Chestpiece
			{ itemID = 22863, price = "14000 #horde#" }, --Blood Guard's Dragonhide Grips
			{ itemID = 22878, price = "24000 #horde#" }, --Legionnaire's Dragonhide Leggings
			{ itemID = 22852, price = "14000 #horde#" }, --Blood Guard's Dragonhide Treads
		},
		{
			{ itemID = 16550, price = "68200 #horde#" }, --Warlord's Dragonhide Helmet
			{ itemID = 16551, price = "52200 #horde#" }, --Warlord's Dragonhide Epaulets
			{ itemID = 16549, price = "68200 #horde#" }, --Warlord's Dragonhide Hauberk
			{ itemID = 16555, price = "52200 #horde#" }, --General's Dragonhide Gloves
			{ itemID = 16552, price = "68200 #horde#" }, --General's Dragonhide Leggings
			{ itemID = 16554, price = "52200 #horde#" }, --General's Dragonhide Boots
		},
		{
			{ itemID = 6116451, price = "2370 #arena# #alliance#" }, --High Warlord's Dragonhide Helmet
			{ itemID = 6116449, price = "1930 #arena# #alliance#" }, --High Warlord's Dragonhide Epaulets
			{ itemID = 6116452, price = "2370 #arena# #alliance#" }, --High Warlord's Dragonhide Hauberk
			{ itemID = 6116448, price = "1430 #arena# #alliance#" }, --High High Warlord's Dragonhide Gloves
			{ itemID = 6116450, price = "2370 #arena# #alliance#" }, --High High Warlord's Dragonhide Leggings
			{ itemID = 6116459, price = "1430 #arena# #alliance#" }, --High High Warlord's Dragonhide Boots
		},
		{
			{ itemID = 24551 }, -- Talisman of the Horde
			{ itemID = 25829 }, -- Talisman of the Alliance
			{ itemID = 18883 }, -- Grand Marshal's War Staff
			{ itemID = 18884 }, -- High Warlord's War Staff
			{ itemID = 18885 }, -- Grand Marshal's Focus Staff
			{ itemID = 18886 }, -- High Warlord's Focus Staff
			{ itemID = 18887 }, -- Grand Marshal's Magebow
			{ itemID = 18888 }, -- High Warlord's Magebow
			{ itemID = 18889 }, -- Grand Marshal's Soulpiercer
			{ itemID = 18890 }, -- High Warlord's Soulpiercer
			{ itemID = 18892 }, -- Grand Marshal's Spear
			{ itemID = 18893 }, -- High Warlord's Spear
			{ itemID = 18894 }, -- Commander's Touch of Hope
			{ itemID = 18895 }, -- High Warlord's Touch of Hope
			{ itemID = 18910 }, -- Grand Marshal's Soulblade
			{ itemID = 18911 }, -- High Warlord's Soulblade
			{ itemID = 18912 }, -- Grand Marshal's Salvation
			{ itemID = 18913 }, -- High Warlord's Salvation
			{ itemID = 18914 }, -- Grand Marshal's Conviction
			{ itemID = 18915 }, -- High Warlord's Conviction
			{ itemID = 18920 }, -- High Warlord's Mage Cannon
			{ itemID = 18921 }, -- Grand Marshal's Mage Cannon
			{ itemID = 18924 }, -- Grand Marshal's Barrier
			{ itemID = 18925 }, -- High Warlord's Barrier
			{ itemID = 3200533 }, -- Combatant's Amulet of Brawn
			{ itemID = 3200534 }, -- Combatant's Amulet of Prowess
			{ itemID = 3200535 }, -- Combatant's Amulet of Acumen
			{ itemID = 3200536 }, -- Combatant's Amulet of Intuition
			{ itemID = 3200537 }, -- Combatant's Loop of Prowess
			{ itemID = 3200538 }, -- Combatant's Loop of Brawn
			{ itemID = 3200539 }, -- Combatant's Loop of Acumen
			{ itemID = 3200540 }, -- Combatant's Loop of Intuition
			{ itemID = 3200541 }, -- Combatant's Cloak of Prowess
			{ itemID = 3200542 }, -- Combatant's Cloak of Brawn
			{ itemID = 3200543 }, -- Combatant's Cloak of Acumen
		},
		{
			{ itemID = 3200544 }, -- Combatant's Cloak of Intuition
			{ itemID = 3200545 }, -- Combatant's Amulet of Bravery
			{ itemID = 3200546 }, -- Combatant's Amulet of Proficiency
			{ itemID = 3200547 }, -- Combatant's Amulet of Alacrity
			{ itemID = 3200548 }, -- Combatant's Amulet of Insight
			{ itemID = 3200549 }, -- Combatant's Loop of Proficiency
			{ itemID = 3200550 }, -- Combatant's Loop of Bravery
			{ itemID = 3200551 }, -- Combatant's Loop of Alacrity
			{ itemID = 3200552 }, -- Combatant's Loop of Insight
			{ itemID = 3200553 }, -- Combatant's Cloak of Proficiency
			{ itemID = 3200554 }, -- Combatant's Cloak of Bravery
			{ itemID = 3200555 }, -- Combatant's Cloak of Alacrity
			{ itemID = 3200556 }, -- Combatant's Cloak of Insight
			{ itemID = 3016441 }, -- Field Marshal's Coronet
			{ itemID = 3016443 }, -- Field Marshal's Silk Vestments
		},
		{
			{ itemID = 3016444 }, -- Field Marshal's Silk Spaulders
			{ itemID = 3016449 }, -- Field Marshal's Dragonhide Spaulders
			{ itemID = 3016451 }, -- Field Marshal's Dragonhide Helmet
			{ itemID = 3016452 }, -- Field Marshal's Dragonhide Breastplate
			{ itemID = 3016453 }, -- Field Marshal's Leather Chestpiece
			{ itemID = 3016455 }, -- Field Marshal's Leather Mask
			{ itemID = 3016457 }, -- Field Marshal's Leather Epaulets
			{ itemID = 3016465 }, -- Field Marshal's Chain Helm
			{ itemID = 3016466 }, -- Field Marshal's Chain Breastplate
			{ itemID = 3016468 }, -- Field Marshal's Chain Spaulders
			{ itemID = 3016473 }, -- Field Marshal's Lamellar Chestplate
			{ itemID = 3016474 }, -- Field Marshal's Lamellar Faceguard
			{ itemID = 3016476 }, -- Field Marshal's Lamellar Pauldrons
			{ itemID = 3016477 }, -- Field Marshal's Plate Armor
			{ itemID = 3016478 }, -- Field Marshal's Plate Helm
			{ itemID = 3016480 }, -- Field Marshal's Plate Shoulderguards
			{ itemID = 3016533 }, -- Warlord's Silk Cowl
			{ itemID = 3016535 }, -- Warlord's Silk Raiment
			{ itemID = 3016536 }, -- Warlord's Silk Amice
			{ itemID = 3016541 }, -- Warlord's Plate Armor
			{ itemID = 3016542 }, -- Warlord's Plate Headpiece
			{ itemID = 3016544 }, -- Warlord's Plate Shoulders
			{ itemID = 3016549 }, -- Warlord's Dragonhide Hauberk
			{ itemID = 3016550 }, -- Warlord's Dragonhide Helmet
			{ itemID = 3016551 }, -- Warlord's Dragonhide Epaulets
			{ itemID = 3016561 }, -- Warlord's Leather Helm
			{ itemID = 3016562 }, -- Warlord's Leather Spaulders
			{ itemID = 3016563 }, -- Warlord's Leather Breastplate
			{ itemID = 3016565 }, -- Warlord's Chain Chestpiece
			{ itemID = 3016566 }, -- Warlord's Chain Helmet
			{ itemID = 3016568 }, -- Warlord's Chain Shoulders
			{ itemID = 3016577 }, -- Warlord's Linked Armor
			{ itemID = 3016578 }, -- Warlord's Linked Helm
			{ itemID = 3016580 }, -- Warlord's Linked Spaulders
			{ itemID = 3017578 }, -- Field Marshal's Coronal
			{ itemID = 3017580 }, -- Field Marshal's Dreadweave Shoulders
			{ itemID = 3017581 }, -- Field Marshal's Dreadweave Robe
			{ itemID = 3017590 }, -- Warlord's Dreadweave Mantle
			{ itemID = 3017591 }, -- Warlord's Dreadweave Hood
			{ itemID = 3017592 }, -- Warlord's Dreadweave Robe
			{ itemID = 3017602 }, -- Field Marshal's Headdress
			{ itemID = 3017604 }, -- Field Marshal's Satin Mantle
			{ itemID = 3017605 }, -- Field Marshal's Satin Vestments
			{ itemID = 3017622 }, -- Warlord's Satin Mantle
			{ itemID = 3017623 }, -- Warlord's Satin Cowl
			{ itemID = 3017624 }, -- Warlord's Satin Robes
			{ itemID = 3029609 }, -- Field Marshal's Linked Armor
			{ itemID = 3029610 }, -- Field Marshal's Linked Helm
			{ itemID = 3029611 }, -- Field Marshal's Linked Spaulders
			{ itemID = 3029615 }, -- Warlord's Lamellar Chestplate
			{ itemID = 3029616 }, -- Warlord's Lamellar Faceguard
			{ itemID = 3029617 }, -- Warlord's Lamellar Pauldrons
		},
	},

	["PVPHunter"] = {
		{
			{ itemID = 16428, price = "9435 #alliance#" }, --Lieutenant Commander's Chain Helm
			{ itemID = 16427, price = "6885 #alliance#" }, --Lieutenant Commander's Chain Shoulders
			{ itemID = 16425, price = "9435 #alliance#" }, --Knight-Captain's Chain Hauberk
			{ itemID = 16403, price = "5000 #alliance#" }, --Knight-Lieutenant's Chain Vices
			{ itemID = 16426, price = "9435 #alliance#" }, --Knight-Captain's Chain Legguards
			{ itemID = 16401, price = "5000 #alliance#" }, --Knight-Lieutenant's Chain Greaves
		},
		{
			{ itemID = 23306, price = "24000 #alliance#" }, --Lieutenant Commander's Chain Helm
			{ itemID = 23307, price = "14000 #alliance#" }, --Lieutenant Commander's Chain Shoulders
			{ itemID = 23292, price = "24000 #alliance#" }, --Knight-Captain's Chain Hauberk
			{ itemID = 23279, price = "14000 #alliance#" }, --Knight-Lieutenant's Chain Vices
			{ itemID = 23293, price = "24000 #alliance#" }, --Knight-Captain's Chain Legguards
			{ itemID = 23278, price = "14000 #alliance#" }, --Knight-Lieutenant's Chain Greaves
		},
		{
			{ itemID = 16465, price = "68200 #alliance#" }, --Field Marshal's Chain Helm
			{ itemID = 16468, price = "52200 #alliance#" }, --Field Marshal's Chain Spaulders
			{ itemID = 16466, price = "68200 #alliance#" }, --Field Marshal's Chain Breastplate
			{ itemID = 16463, price = "52200 #alliance#" }, --Marshal's Chain Grips
			{ itemID = 16467, price = "68200 #alliance#" }, --Marshal's Chain Legguards
			{ itemID = 16462, price = "52200 #alliance#" }, --Marshal's Chain Boots
		},
		{
			{ itemID = 6116465, price = "2370 #arena# #alliance#" }, --Grand Marshal's Chain Helm
			{ itemID = 6116468, price = "1930 #arena# #alliance#" }, --Grand Marshal's Chain Spaulders
			{ itemID = 6116466, price = "2370 #arena# #alliance#" }, --Grand Marshal's Chain Breastplate
			{ itemID = 6116463, price = "1430 #arena# #alliance#" }, --Grand Marshal's Chain Grips
			{ itemID = 6116467, price = "2370 #arena# #alliance#" }, --Grand Marshal's Chain Legguards
			{ itemID = 6116462, price = "1430 #arena# #alliance#" }, --Grand Marshal's Chain Boots
		},
		{
			{ itemID = 16526, price = "9435 #horde#" }, --Champion's Chain Helm
			{ itemID = 16528, price = "6885 #horde#" }, --Champion's Chain Shoulders
			{ itemID = 16525, price = "9435 #horde#" }, --Legionnaire's Chain Hauberk
			{ itemID = 16530, price = "5000 #horde#" }, --Blood Guard's Chain Vices
			{ itemID = 16527, price = "9435 #horde#" }, --Legionnaire's Chain Legguards
			{ itemID = 16531, price = "5000 #horde#" }, --Blood Guard's Chain Greaves
		},
		{
			{ itemID = 23251, price = "24000 #horde#" }, --Champion's Chain Helm
			{ itemID = 23252, price = "14000 #horde#" }, --Champion's Chain Shoulders
			{ itemID = 22874, price = "24000 #horde#" }, --Legionnaire's Chain Hauberk
			{ itemID = 22862, price = "14000 #horde#" }, --Blood Guard's Chain Vices
			{ itemID = 22875, price = "24000 #horde#" }, --Legionnaire's Chain Legguards
			{ itemID = 22843, price = "14000 #horde#" }, --Blood Guard's Chain Greaves
		},
		{
			{ itemID = 16566, price = "68200 #horde#" }, --Warlord's Chain Helmet
			{ itemID = 16568, price = "52200 #horde#" }, --Warlord's Chain Shoulders
			{ itemID = 16565, price = "68200 #horde#" }, --Warlord's Chain Chestpiece
			{ itemID = 16571, price = "52200 #horde#" }, --General's Chain Gloves
			{ itemID = 16567, price = "68200 #horde#" }, --General's Chain Legguards
			{ itemID = 16569, price = "52200 #horde#" }, --General's Chain Boots
		},
		{
			{ itemID = 6116566, price = "2370 #arena# #horde#" }, --High Warlord's Chain Helmet
			{ itemID = 6116568, price = "1930 #arena# #horde#" }, --High Warlord's Chain Shoulders
			{ itemID = 6116565, price = "2370 #arena# #horde#" }, --High Warlord's Chain Chestpiece
			{ itemID = 6116571, price = "1430 #arena# #horde#" }, --High High Warlord's Chain Gloves
			{ itemID = 6116567, price = "2370 #arena# #horde#" }, --High High Warlord's Chain Legguards
			{ itemID = 6116569, price = "1430 #arena# #horde#" }, --High High Warlord's Chain Boots
		},
	},

	["PVPMage"] = {
		{
			{ itemID = 16416, price = "9435 #alliance#" }, --Lieutenant Commander's Silk Cowl
			{ itemID = 16415, price = "6885 #alliance#" }, --Lieutenant Commander's Silk Mantle
			{ itemID = 16413, price = "9435 #alliance#" }, --Knight-Captain's Silk Tunic
			{ itemID = 16391, price = "5000 #alliance#" }, --Knight-Lieutenant's Silk Handwraps
			{ itemID = 16414, price = "9435 #alliance#" }, --Knight-Captain's Silk Legguards
			{ itemID = 16369, price = "5000 #alliance#" }, --Knight-Lieutenant's Silk Walkers
		},
		{
			{ itemID = 23318, price = "24000 #alliance#" }, --Lieutenant Commander's Silk Cowl
			{ itemID = 23319, price = "14000 #alliance#" }, --Lieutenant Commander's Silk Mantle
			{ itemID = 23305, price = "24000 #alliance#" }, --Knight-Captain's Silk Tunic
			{ itemID = 23290, price = "14000 #alliance#" }, --Knight-Lieutenant's Silk Handwraps
			{ itemID = 23304, price = "24000 #alliance#" }, --Knight-Captain's Silk Legguards
			{ itemID = 23291, price = "14000 #alliance#" }, --Knight-Lieutenant's Silk Walkers
		},
		{
			{ itemID = 16441, price = "68200 #alliance#" }, --Field Marshal's Coronet
			{ itemID = 16444, price = "52200 #alliance#" }, --Field Marshal's Silk Spaulders
			{ itemID = 16443, price = "68200 #alliance#" }, --Field Marshal's Silk Vestments
			{ itemID = 16440, price = "52200 #alliance#" }, --Marshal's Silk Gloves
			{ itemID = 16442, price = "68200 #alliance#" }, --Marshal's Silk Leggings
			{ itemID = 16437, price = "52200 #alliance#" }, --Marshal's Silk Footwraps
		},
		{
			{ itemID = 6116441, price = "2370 #arena# #alliance#" }, --Grand Marshal's Coronet
			{ itemID = 6116444, price = "1930 #arena# #alliance#" }, --Grand Marshal's Silk Spaulders
			{ itemID = 6116443, price = "2370 #arena# #alliance#" }, --Grand Marshal's Silk Vestments
			{ itemID = 6116440, price = "1430 #arena# #alliance#" }, --Grand Marshal's Silk Gloves
			{ itemID = 6116442, price = "2370 #arena# #alliance#" }, --Grand Marshal's Silk Leggings
			{ itemID = 6116437, price = "1430 #arena# #alliance#" }, --Grand Marshal's Silk Footwraps
		},
		{
			{ itemID = 16489, price = "9435 #horde#" }, --Champion's Silk Cowl
			{ itemID = 16492, price = "6885 #horde#" }, --Champion's Silk Mantle
			{ itemID = 16491, price = "9435 #horde#" }, --Legionnaire's Silk Tunic
			{ itemID = 16487, price = "5000 #horde#" }, --Blood Guard's Silk Handwraps
			{ itemID = 16490, price = "9435 #horde#" }, --Legionnaire's Silk Legguards
			{ itemID = 16485, price = "5000 #horde#" }, --Blood Guard's Silk Walkers
		},
		{
			{ itemID = 23263, price = "24000 #horde#" }, --Champion's Silk Cowl
			{ itemID = 23264, price = "14000 #horde#" }, --Champion's Silk Mantle
			{ itemID = 22886, price = "24000 #horde#" }, --Legionnaire's Silk Tunic
			{ itemID = 22870, price = "14000 #horde#" }, --Blood Guard's Silk Handwraps
			{ itemID = 22883, price = "24000 #horde#" }, --Legionnaire's Silk Legguards
			{ itemID = 22860, price = "14000 #horde#" }, --Blood Guard's Silk Walkers
		},
		{
			{ itemID = 16533, price = "68200 #horde#" }, --Warlord's Silk Cowl
			{ itemID = 16536, price = "52200 #horde#" }, --Warlord's Silk Amice
			{ itemID = 16535, price = "68200 #horde#" }, --Warlord's Silk Raiment
			{ itemID = 16540, price = "52200 #horde#" }, --General's Silk Handguards
			{ itemID = 16534, price = "68200 #horde#" }, --General's Silk Trousers
			{ itemID = 16539, price = "52200 #horde#" }, --General's Silk Boots
		},
		{
			{ itemID = 6116533, price = "2370 #arena# #horde#" }, --High Warlord's Silk Cowl
			{ itemID = 6116536, price = "1930 #arena# #horde#" }, --High Warlord's Silk Amice
			{ itemID = 6116535, price = "2370 #arena# #horde#" }, --High Warlord's Silk Raiment
			{ itemID = 6116540, price = "1430 #arena# #horde#" }, --High High Warlord's Silk Handguards
			{ itemID = 6116534, price = "2370 #arena# #horde#" }, --High High Warlord's Silk Trousers
			{ itemID = 6116539, price = "1430 #arena# #horde#" }, --High High Warlord's Silk Boots
		},
	},

	["PVPPaladin"] = {
		{
			{ itemID = 16434, price = "9435 #alliance#" }, --Lieutenant Commander's Lamellar Headguard
			{ itemID = 16436, price = "6885 #alliance#" }, --Lieutenant Commander's Lamellar Shoulders
			{ itemID = 16433, price = "9435 #alliance#" }, --Knight-Captain's Lamellar Breastplate
			{ itemID = 16410, price = "5000 #alliance#" }, --Knight-Lieutenant's Lamellar Gauntlets
			{ itemID = 16435, price = "9435 #alliance#" }, --Knight-Captain's Lamellar Leggings
			{ itemID = 16409, price = "5000 #alliance#" }, --Knight-Lieutenant's Lamellar Sabatons
		},
		{
			{ itemID = 23276, price = "24000 #alliance#" }, --Lieutenant Commander's Lamellar Headguard
			{ itemID = 23277, price = "14000 #alliance#" }, --Lieutenant Commander's Lamellar Shoulders
			{ itemID = 23272, price = "24000 #alliance#" }, --Knight-Captain's Lamellar Breastplate
			{ itemID = 23274, price = "14000 #alliance#" }, --Knight-Lieutenant's Lamellar Gauntlets
			{ itemID = 23273, price = "24000 #alliance#" }, --Knight-Captain's Lamellar Leggings
			{ itemID = 23275, price = "14000 #alliance#" }, --Knight-Lieutenant's Lamellar Sabatons
		},
		{
			{ itemID = 16474, price = "68200 #alliance#" }, --Field Marshal's Lamellar Faceguard
			{ itemID = 16476, price = "52200 #alliance#" }, --Field Marshal's Lamellar Pauldrons
			{ itemID = 16473, price = "68200 #alliance#" }, --Field Marshal's Lamellar Chestplate
			{ itemID = 16471, price = "52200 #alliance#" }, --Marshal's Lamellar Gloves
			{ itemID = 16475, price = "68200 #alliance#" }, --Marshal's Lamellar Legplates
			{ itemID = 16472, price = "52200 #alliance#" }, --Marshal's Lamellar Boots
		},
		{
			{ itemID = 6116474, price = "2370 #arena# #alliance#" }, --Grand Marshal's Lamellar Faceguard
			{ itemID = 6116476, price = "1930 #arena# #alliance#" }, --Grand Marshal's Lamellar Pauldrons
			{ itemID = 6116473, price = "2370 #arena# #alliance#" }, --Grand Marshal's Lamellar Chestplate
			{ itemID = 6116471, price = "1430 #arena# #alliance#" }, --Grand Marshal's Lamellar Gloves
			{ itemID = 6116475, price = "2370 #arena# #alliance#" }, --Grand Marshal's Lamellar Legplates
			{ itemID = 6116472, price = "1430 #arena# #alliance#" }, --Grand Marshal's Lamellar Boots
		},
		{
			{ itemID = 29604, price = "24000 #horde#" }, --Champion's Lamellar Headguard
			{ itemID = 29605, price = "14000 #horde#" }, --Champion's Lamellar Shoulders
			{ itemID = 29602, price = "24000 #horde#" }, --Legionnaire's Lamellar Breastplate
			{ itemID = 29600, price = "14000 #horde#" }, --Blood Guard's Lamellar Gauntlets
			{ itemID = 29603, price = "24000 #horde#" }, --Legionnaire's Lamellar Leggings
			{ itemID = 29601, price = "14000 #horde#" }, --Blood Guard's Lamellar Sabatons
		},
		{
			{ itemID = 29616, price = "68200 #horde#" }, --Warlord's Lamellar Faceguard
			{ itemID = 29617, price = "52200 #horde#" }, --Warlord's Lamellar Pauldrons
			{ itemID = 29615, price = "68200 #horde#" }, --Warlord's Lamellar Chestplate
			{ itemID = 29613, price = "52200 #horde#" }, --General's Lamellar Gloves
			{ itemID = 29614, price = "68200 #horde#" }, --General's Lamellar Legplates
			{ itemID = 29612, price = "52200 #horde#" }, --General's Lamellar Boots
		},
		{
			{ itemID = 6129616, price = "2370 #arena# #horde#" }, --High Warlord's Lamellar Faceguard
			{ itemID = 6129617, price = "1930 #arena# #horde#" }, --High Warlord's Lamellar Pauldrons
			{ itemID = 6129615, price = "2370 #arena# #horde#" }, --High Warlord's Lamellar Chestplate
			{ itemID = 6129613, price = "1430 #arena# #horde#" }, --High High Warlord's Lamellar Gloves
			{ itemID = 6129614, price = "2370 #arena# #horde#" }, --High High Warlord's Lamellar Legplates
			{ itemID = 6129612, price = "1430 #arena# #horde#" }, --High High Warlord's Lamellar Boots
		},
	},

	["PVPPriest"] = {
		{
			{ itemID = 17598, price = "9435 #alliance#" }, --Lieutenant Commander's Satin Hood
			{ itemID = 17601, price = "6885 #alliance#" }, --Lieutenant Commander's Satin Mantle
			{ itemID = 17600, price = "9435 #alliance#" }, --Knight-Captain's Satin Tunic
			{ itemID = 17596, price = "5000 #alliance#" }, --Knight-Lieutenant's Satin Handwraps
			{ itemID = 17599, price = "9435 #alliance#" }, --Knight-Captain's Satin Legguards
			{ itemID = 17594, price = "5000 #alliance#" }, --Knight-Lieutenant's Satin Walkers
		},
		{
			{ itemID = 23316, price = "24000 #alliance#" }, --Lieutenant Commander's Satin Hood
			{ itemID = 23317, price = "14000 #alliance#" }, --Lieutenant Commander's Satin Mantle
			{ itemID = 23303, price = "24000 #alliance#" }, --Knight-Captain's Satin Tunic
			{ itemID = 23288, price = "14000 #alliance#" }, --Knight-Lieutenant's Satin Handwraps
			{ itemID = 23302, price = "24000 #alliance#" }, --Knight-Captain's Satin Legguards
			{ itemID = 23289, price = "14000 #alliance#" }, --Knight-Lieutenant's Satin Walkers
		},
		{
			{ itemID = 17602, price = "68200 #alliance#" }, --Field Marshal's Headdress
			{ itemID = 17604, price = "52200 #alliance#" }, --Field Marshal's Satin Mantle
			{ itemID = 17605, price = "68200 #alliance#" }, --Field Marshal's Satin Vestments
			{ itemID = 17608, price = "52200 #alliance#" }, --Marshal's Satin Gloves
			{ itemID = 17603, price = "68200 #alliance#" }, --Marshal's Satin Pants
			{ itemID = 17607, price = "52200 #alliance#" }, --Marshal's Satin Sandals
		},
		{
			{ itemID = 6117602, price = "2370 #arena# #alliance#" }, --Grand Marshal's Headdress
			{ itemID = 6117604, price = "1930 #arena# #alliance#" }, --Grand Marshal's Satin Mantle
			{ itemID = 6117605, price = "2370 #arena# #alliance#" }, --Grand Marshal's Satin Vestments
			{ itemID = 6117608, price = "1430 #arena# #alliance#" }, --Grand Marshal's Satin Gloves
			{ itemID = 6117603, price = "2370 #arena# #alliance#" }, --Grand Marshal's Satin Pants
			{ itemID = 6117607, price = "1430 #arena# #alliance#" }, --Grand Marshal's Satin Sandals
		},
		{
			{ itemID = 16489, price = "9435 #horde#" }, --Champion's Satin Hood
			{ itemID = 16492, price = "6885 #horde#" }, --Champion's Satin Mantle
			{ itemID = 16491, price = "9435 #horde#" }, --Legionnaire's Satin Tunic
			{ itemID = 16487, price = "5000 #horde#" }, --Blood Guard's Satin Handwraps
			{ itemID = 16490, price = "9435 #horde#" }, --Legionnaire's Satin Legguards
			{ itemID = 16485, price = "5000 #horde#" }, --Blood Guard's Satin Walkers
		},
		{
			{ itemID = 23261, price = "24000 #horde#" }, --Champion's Satin Hood
			{ itemID = 23262, price = "14000 #horde#" }, --Champion's Satin Mantle
			{ itemID = 22885, price = "24000 #horde#" }, --Legionnaire's Satin Tunic
			{ itemID = 22869, price = "14000 #horde#" }, --Blood Guard's Satin Handwraps
			{ itemID = 22882, price = "24000 #horde#" }, --Legionnaire's Satin Legguards
			{ itemID = 22859, price = "14000 #horde#" }, --Blood Guard's Satin Walkers
		},
		{
			{ itemID = 17623, price = "68200 #horde#" }, --Warlord's Satin Cowl
			{ itemID = 17622, price = "52200 #horde#" }, --Warlord's Satin Mantle
			{ itemID = 17624, price = "68200 #horde#" }, --Warlord's Satin Robes
			{ itemID = 17620, price = "52200 #horde#" }, --General's Satin Gloves
			{ itemID = 17625, price = "68200 #horde#" }, --General's Satin Leggings
			{ itemID = 17618, price = "52200 #horde#" }, --General's Satin Boots
		},
		{
			{ itemID = 6117623, price = "2370 #arena# #horde#" }, --High Warlord's Satin Cowl
			{ itemID = 6117622, price = "1930 #arena# #horde#" }, --High Warlord's Satin Mantle
			{ itemID = 6117624, price = "2370 #arena# #horde#" }, --High Warlord's Satin Robes
			{ itemID = 6117620, price = "1430 #arena# #horde#" }, --High High Warlord's Satin Gloves
			{ itemID = 6117625, price = "2370 #arena# #horde#" }, --High High Warlord's Satin Leggings
			{ itemID = 6117618, price = "1430 #arena# #horde#" }, --High High Warlord's Satin Boots
		},
	},


	["PVPRogue"] = {
		{
			{ itemID = 16418, price = "9435 #alliance#" }, --Lieutenant Commander's Leather Helm
			{ itemID = 16420, price = "6885 #alliance#" }, --Lieutenant Commander's Leather Shoulders
			{ itemID = 16417, price = "9435 #alliance#" }, --Knight-Captain's Leather Chestpiece
			{ itemID = 16396, price = "5000 #alliance#" }, --Knight-Lieutenant's Leather Grips
			{ itemID = 16419, price = "9435 #alliance#" }, --Knight-Captain's Leather Legguards
			{ itemID = 16392, price = "5000 #alliance#" }, --Knight-Lieutenant's Leather Walkers
		},
		{
			{ itemID = 23312, price = "24000 #alliance#" }, --Lieutenant Commander's Leather Helm
			{ itemID = 23313, price = "14000 #alliance#" }, --Lieutenant Commander's Leather Shoulders
			{ itemID = 23298, price = "24000 #alliance#" }, --Knight-Captain's Leather Chestpiece
			{ itemID = 23284, price = "14000 #alliance#" }, --Knight-Lieutenant's Leather Grips
			{ itemID = 23299, price = "24000 #alliance#" }, --Knight-Captain's Leather Legguards
			{ itemID = 23285, price = "14000 #alliance#" }, --Knight-Lieutenant's Leather Walkers
		},
		{
			{ itemID = 16455, price = "68200 #alliance#" }, --Field Marshal's Leather Mask
			{ itemID = 16457, price = "52200 #alliance#" }, --Field Marshal's Leather Epaulets
			{ itemID = 16453, price = "68200 #alliance#" }, --Field Marshal's Leather Chestpiece
			{ itemID = 16454, price = "52200 #alliance#" }, --Marshal's Leather Handgrips
			{ itemID = 16456, price = "68200 #alliance#" }, --Marshal's Leather Leggings
			{ itemID = 16446, price = "52200 #alliance#" }, --Marshal's Leather Footguards
		},
		{
			{ itemID = 6116455, price = "2370 #arena# #alliance#" }, --Grand Marshal's Leather Mask
			{ itemID = 6116457, price = "1930 #arena# #alliance#" }, --Grand Marshal's Leather Epaulets
			{ itemID = 6116453, price = "2370 #arena# #alliance#" }, --Grand Marshal's Leather Chestpiece
			{ itemID = 6116454, price = "1430 #arena# #alliance#" }, --Grand Marshal's Leather Handgrips
			{ itemID = 6116456, price = "2370 #arena# #alliance#" }, --Grand Marshal's Leather Leggings
			{ itemID = 6116446, price = "1430 #arena# #alliance#" }, --Grand Marshal's Leather Footguards
		},
		{
			{ itemID = 16506, price = "9435 #horde#" }, --Champion's Leather Helm
			{ itemID = 16507, price = "6885 #horde#" }, --Champion's Leather Shoulders
			{ itemID = 16505, price = "9435 #horde#" }, --Legionnaire's Leather Chestpiece
			{ itemID = 16499, price = "5000 #horde#" }, --Blood Guard's Leather Grips
			{ itemID = 16508, price = "9435 #horde#" }, --Legionnaire's Leather Legguards
			{ itemID = 16498, price = "5000 #horde#" }, --Blood Guard's Leather Walkers
		},
		{
			{ itemID = 23257, price = "24000 #horde#" }, --Champion's Leather Helm
			{ itemID = 23258, price = "14000 #horde#" }, --Champion's Leather Shoulders
			{ itemID = 22879, price = "24000 #horde#" }, --Legionnaire's Leather Chestpiece
			{ itemID = 22864, price = "14000 #horde#" }, --Blood Guard's Leather Grips
			{ itemID = 22880, price = "24000 #horde#" }, --Legionnaire's Leather Legguards
			{ itemID = 22856, price = "14000 #horde#" }, --Blood Guard's Leather Walkers
		},
		{
			{ itemID = 16561, price = "68200 #horde#" }, --Warlord's Leather Helm
			{ itemID = 16562, price = "52200 #horde#" }, --Warlord's Leather Spaulders
			{ itemID = 16563, price = "68200 #horde#" }, --Warlord's Leather Breastplate
			{ itemID = 16560, price = "52200 #horde#" }, --General's Leather Mitts
			{ itemID = 16564, price = "68200 #horde#" }, --General's Leather Legguards
			{ itemID = 16558, price = "52200 #horde#" }, --General's Leather Treads
		},
		{
			{ itemID = 6116561, price = "2370 #arena# #horde#" }, --High Warlord's Leather Helm
			{ itemID = 6116562, price = "1930 #arena# #horde#" }, --High Warlord's Leather Spaulders
			{ itemID = 6116563, price = "2370 #arena# #horde#" }, --High Warlord's Leather Breastplate
			{ itemID = 6116560, price = "1430 #arena# #horde#" }, --High High Warlord's Leather Mitts
			{ itemID = 6116564, price = "2370 #arena# #horde#" }, --High High Warlord's Leather Legguards
			{ itemID = 6116558, price = "1430 #arena# #horde#" }, --High High Warlord's Leather Treads
		},
	},

	["PVPShaman"] = {
		{
			{ itemID = 29598, price = "24000 #alliance#" }, --Lieutenant Commander's Mail Headguard
			{ itemID = 29599, price = "14000 #alliance#" }, --Lieutenant Commander's Mail Pauldrons
			{ itemID = 29596, price = "24000 #alliance#" }, --Knight-Captain's Mail Hauberk
			{ itemID = 29595, price = "14000 #alliance#" }, --Knight-Lieutenant's Mail Vices
			{ itemID = 29597, price = "24000 #alliance#" }, --Knight-Captain's Mail Legguards
			{ itemID = 29594, price = "14000 #alliance#" }, --Knight-Lieutenant's Mail Greaves
		},
		{
			{ itemID = 29610, price = "68200 #alliance#" }, --Field Marshal's Mail Helm
			{ itemID = 29611, price = "52200 #alliance#" }, --Field Marshal's Mail Spaulders
			{ itemID = 29609, price = "68200 #alliance#" }, --Field Marshal's Mail Armor
			{ itemID = 29607, price = "52200 #alliance#" }, --Marshal's Mail Gauntlets
			{ itemID = 29608, price = "68200 #alliance#" }, --Marshal's Mail Leggings
			{ itemID = 29606, price = "52200 #alliance#" }, --Marshal's Mail Boots
		},
		{
			{ itemID = 6129610, price = "2370 #arena# #alliance#" }, --Grand Marshal's Mail Helm
			{ itemID = 6129611, price = "1930 #arena# #alliance#" }, --Grand Marshal's Mail Spaulders
			{ itemID = 6129609, price = "2370 #arena# #alliance#" }, --Grand Marshal's Mail Armor
			{ itemID = 6129607, price = "1430 #arena# #alliance#" }, --Grand Marshal's Mail Gauntlets
			{ itemID = 6129608, price = "2370 #arena# #alliance#" }, --Grand Marshal's Mail Leggings
			{ itemID = 6129606, price = "1430 #arena# #alliance#" }, --Grand Marshal's Mail Boots
		},
		{
			{ itemID = 16521, price = "9435 #horde#" }, --Champion's Mail Headguard
			{ itemID = 16524, price = "6885 #horde#" }, --Champion's Mail Pauldrons
			{ itemID = 16522, price = "9435 #horde#" }, --Legionnaire's Mail Hauberk
			{ itemID = 16519, price = "5000 #horde#" }, --Blood Guard's Mail Vices
			{ itemID = 16523, price = "9435 #horde#" }, --Legionnaire's Mail Legguards
			{ itemID = 16518, price = "5000 #horde#" }, --Blood Guard's Mail Greaves
		},
		{
			{ itemID = 23259, price = "24000 #horde#" }, --Champion's Mail Headguard
			{ itemID = 23260, price = "14000 #horde#" }, --Champion's Mail Pauldrons
			{ itemID = 22876, price = "24000 #horde#" }, --Legionnaire's Mail Hauberk
			{ itemID = 22867, price = "14000 #horde#" }, --Blood Guard's Mail Vices
			{ itemID = 22887, price = "24000 #horde#" }, --Legionnaire's Mail Legguards
			{ itemID = 22857, price = "14000 #horde#" }, --Blood Guard's Mail Greaves
		},
		{
			{ itemID = 16578, price = "68200 #horde#" }, --Warlord's Mail Helm
			{ itemID = 16580, price = "52200 #horde#" }, --Warlord's Mail Spaulders
			{ itemID = 16577, price = "68200 #horde#" }, --Warlord's Mail Armor
			{ itemID = 16574, price = "52200 #horde#" }, --General's Mail Gauntlets
			{ itemID = 16579, price = "68200 #horde#" }, --General's Mail Leggings
			{ itemID = 16573, price = "52200 #horde#" }, --General's Mail Boots
		},
		{
			{ itemID = 6116578, price = "2370 #arena# #horde#" }, --High Warlord's Mail Helm
			{ itemID = 6116580, price = "1930 #arena# #horde#" }, --High Warlord's Mail Spaulders
			{ itemID = 6116577, price = "2370 #arena# #horde#" }, --High Warlord's Mail Armor
			{ itemID = 6116574, price = "1430 #arena# #horde#" }, --High High Warlord's Mail Gauntlets
			{ itemID = 6116579, price = "2370 #arena# #horde#" }, --High High Warlord's Mail Leggings
			{ itemID = 6116573, price = "1430 #arena# #horde#" }, --High High Warlord's Mail Boots
		},
	},

	["PVPWarlock"] = {
		{
			{ itemID = 17566, price = "9435 #alliance#" }, --Lieutenant Commander's Dreadweave Cowl
			{ itemID = 17569, price = "6885 #alliance#" }, --Lieutenant Commander's Dreadweave Spaulders
			{ itemID = 17568, price = "9435 #alliance#" }, --Knight-Captain's Dreadweave Tunic
			{ itemID = 17564, price = "5000 #alliance#" }, --Knight-Lieutenant's Dreadweave Handwraps
			{ itemID = 17567, price = "9435 #alliance#" }, --Knight-Captain's Dreadweave Legguards
			{ itemID = 17562, price = "5000 #alliance#" }, --Knight-Lieutenant's Dreadweave Walkers
		},
		{
			{ itemID = 23310, price = "24000 #alliance#" }, --Lieutenant Commander's Dreadweave Cowl
			{ itemID = 23311, price = "14000 #alliance#" }, --Lieutenant Commander's Dreadweave Spaulders
			{ itemID = 23297, price = "24000 #alliance#" }, --Knight-Captain's Dreadweave Tunic
			{ itemID = 23282, price = "14000 #alliance#" }, --Knight-Lieutenant's Dreadweave Handwraps
			{ itemID = 23296, price = "24000 #alliance#" }, --Knight-Captain's Dreadweave Legguards
			{ itemID = 23283, price = "14000 #alliance#" }, --Knight-Lieutenant's Dreadweave Walkers
		},
		{
			{ itemID = 6117578, price = "2370 #arena# #alliance#" }, --Grand Marshal's Coronal
			{ itemID = 6117580, price = "1930 #arena# #alliance#" }, --Grand Marshal's Dreadweave Shoulders
			{ itemID = 6117581, price = "2370 #arena# #alliance#" }, --Grand Marshal's Dreadweave Robe
			{ itemID = 6117584, price = "1430 #arena# #alliance#" }, --Grand Marshal's Dreadweave Gloves
			{ itemID = 6117579, price = "2370 #arena# #alliance#" }, --Grand Marshal's Dreadweave Leggings
			{ itemID = 6117583, price = "1430 #arena# #alliance#" }, --Grand Marshal's Dreadweave Boots
		},
		{
			{ itemID = 17578, price = "68200 #alliance#" }, --Field Marshal's Coronal
			{ itemID = 17580, price = "52200 #alliance#" }, --Field Marshal's Dreadweave Shoulders
			{ itemID = 17581, price = "68200 #alliance#" }, --Field Marshal's Dreadweave Robe
			{ itemID = 17584, price = "52200 #alliance#" }, --Marshal's Dreadweave Gloves
			{ itemID = 17579, price = "68200 #alliance#" }, --Marshal's Dreadweave Leggings
			{ itemID = 17583, price = "52200 #alliance#" }, --Marshal's Dreadweave Boots
		},
		{
			{ itemID = 17570, price = "9435 #horde#" }, --Champion's Dreadweave Cowl
			{ itemID = 17573, price = "6885 #horde#" }, --Champion's Dreadweave Spaulders
			{ itemID = 17572, price = "9435 #horde#" }, --Legionnaire's Dreadweave Tunic
			{ itemID = 17577, price = "5000 #horde#" }, --Blood Guard's Dreadweave Handwraps
			{ itemID = 17571, price = "9435 #horde#" }, --Legionnaire's Dreadweave Legguards
			{ itemID = 17576, price = "5000 #horde#" }, --Blood Guard's Dreadweave Walkers
		},
		{
			{ itemID = 23255, price = "24000 #horde#" }, --Champion's Dreadweave Cowl
			{ itemID = 23256, price = "14000 #horde#" }, --Champion's Dreadweave Spaulders
			{ itemID = 22884, price = "24000 #horde#" }, --Legionnaire's Dreadweave Tunic
			{ itemID = 22865, price = "14000 #horde#" }, --Blood Guard's Dreadweave Handwraps
			{ itemID = 22881, price = "24000 #horde#" }, --Legionnaire's Dreadweave Legguards
			{ itemID = 22855, price = "14000 #horde#" }, --Blood Guard's Dreadweave Walkers
		},
		{
			{ itemID = 17591, price = "68200 #horde#" }, --Warlord's Dreadweave Hood
			{ itemID = 17590, price = "52200 #horde#" }, --Warlord's Dreadweave Mantle
			{ itemID = 17592, price = "68200 #horde#" }, --Warlord's Dreadweave Robe
			{ itemID = 17588, price = "52200 #horde#" }, --General's Dreadweave Gloves
			{ itemID = 17593, price = "68200 #horde#" }, --General's Dreadweave Pants
			{ itemID = 17586, price = "52200 #horde#" }, --General's Dreadweave Boots
		},
		{
			{ itemID = 6117591, price = "2370 #arena# #horde#" }, --High Warlord's Dreadweave Hood
			{ itemID = 6117590, price = "1930 #arena# #horde#" }, --High Warlord's Dreadweave Mantle
			{ itemID = 6117592, price = "2370 #arena# #horde#" }, --High Warlord's Dreadweave Robe
			{ itemID = 6117588, price = "1430 #arena# #horde#" }, --High High Warlord's Dreadweave Gloves
			{ itemID = 6117593, price = "2370 #arena# #horde#" }, --High High Warlord's Dreadweave Pants
			{ itemID = 6117586, price = "1430 #arena# #horde#" }, --High High Warlord's Dreadweave Boots
		},
	},

	["PVPWarrior"] = {
		{
			{ itemID = 16429, price = "9435 #alliance#" }, --Lieutenant Commander's Plate Helm
			{ itemID = 16432, price = "6885 #alliance#" }, --Lieutenant Commander's Plate Shoulders
			{ itemID = 16430, price = "9435 #alliance#" }, --Knight-Captain's Plate Hauberk
			{ itemID = 16406, price = "5000 #alliance#" }, --Knight-Lieutenant's Plate Gauntlets
			{ itemID = 16431, price = "9435 #alliance#" }, --Knight-Captain's Plate Leggings
			{ itemID = 16405, price = "5000 #alliance#" }, --Knight-Lieutenant's Plate Greaves
		},
		{
			{ itemID = 23314, price = "24000 #alliance#" }, --Lieutenant Commander's Plate Helm
			{ itemID = 23315, price = "14000 #alliance#" }, --Lieutenant Commander's Plate Shoulders
			{ itemID = 23300, price = "24000 #alliance#" }, --Knight-Captain's Plate Hauberk
			{ itemID = 23286, price = "14000 #alliance#" }, --Knight-Lieutenant's Plate Gauntlets
			{ itemID = 23301, price = "24000 #alliance#" }, --Knight-Captain's Plate Leggings
			{ itemID = 23287, price = "14000 #alliance#" }, --Knight-Lieutenant's Plate Greaves
		},
		{
			{ itemID = 16478, price = "68200 #alliance#" }, --Field Marshal's Plate Helm
			{ itemID = 16480, price = "52200 #alliance#" }, --Field Marshal's Plate Shoulderguards
			{ itemID = 16477, price = "68200 #alliance#" }, --Field Marshal's Plate Armor
			{ itemID = 16484, price = "52200 #alliance#" }, --Marshal's Plate Gauntlets
			{ itemID = 16479, price = "68200 #alliance#" }, --Marshal's Plate Legguards
			{ itemID = 16483, price = "52200 #alliance#" }, --Marshal's Plate Boots
		},
		{
			{ itemID = 6116478, price = "2370 #arena# #alliance#" }, --Grand Marshal's Plate Helm
			{ itemID = 6116480, price = "1930 #arena# #alliance#" }, --Grand Marshal's Plate Shoulderguards
			{ itemID = 6116477, price = "2370 #arena# #alliance#" }, --Grand Marshal's Plate Armor
			{ itemID = 6116484, price = "1430 #arena# #alliance#" }, --Grand Marshal's Plate Gauntlets
			{ itemID = 6116479, price = "2370 #arena# #alliance#" }, --Grand Marshal's Plate Legguards
			{ itemID = 6116483, price = "1430 #arena# #alliance#" }, --Grand Marshal's Plate Boots
		},
		{
			{ itemID = 16514, price = "9435 #horde#" }, --Champion's Plate Helm
			{ itemID = 16516, price = "6885 #horde#" }, --Champion's Plate Shoulders
			{ itemID = 16513, price = "9435 #horde#" }, --Legionnaire's Plate Hauberk
			{ itemID = 16510, price = "5000 #horde#" }, --Blood Guard's Plate Gauntlets
			{ itemID = 16515, price = "9435 #horde#" }, --Legionnaire's Plate Leggings
			{ itemID = 16509, price = "5000 #horde#" }, --Blood Guard's Plate Greaves
		},
		{
			{ itemID = 23244, price = "24000 #horde#" }, --Champion's Plate Helm
			{ itemID = 23243, price = "14000 #horde#" }, --Champion's Plate Shoulders
			{ itemID = 22872, price = "24000 #horde#" }, --Legionnaire's Plate Hauberk
			{ itemID = 22868, price = "14000 #horde#" }, --Blood Guard's Plate Gauntlets
			{ itemID = 22873, price = "24000 #horde#" }, --Legionnaire's Plate Leggings
			{ itemID = 22858, price = "14000 #horde#" }, --Blood Guard's Plate Greaves
		},
		{
			{ itemID = 16542, price = "68200 #horde#" }, --Warlord's Plate Headpiece
			{ itemID = 16544, price = "52200 #horde#" }, --Warlord's Plate Shoulders
			{ itemID = 16541, price = "68200 #horde#" }, --Warlord's Plate Armor
			{ itemID = 16548, price = "52200 #horde#" }, --General's Plate Gauntlets
			{ itemID = 16543, price = "68200 #horde#" }, --General's Plate Leggings
			{ itemID = 16545, price = "52200 #horde#" }, --General's Plate Boots
		},
		{
			{ itemID = 6116542, price = "2370 #arena# #horde#" }, --High Warlord's Plate Headpiece
			{ itemID = 6116544, price = "1930 #arena# #horde#" }, --High Warlord's Plate Shoulders
			{ itemID = 6116541, price = "2370 #arena# #horde#" }, --High Warlord's Plate Armor
			{ itemID = 6116548, price = "1430 #arena# #horde#" }, --High High Warlord's Plate Gauntlets
			{ itemID = 6116543, price = "2370 #arena# #horde#" }, --High High Warlord's Plate Leggings
			{ itemID = 6116545, price = "1430 #arena# #horde#" }, --High High Warlord's Plate Boots
		},
	},

	----------------------------
	--- PvP Level 60 Weapons ---
	----------------------------

	["PVPWeapons60"] = {
		{
			{ itemID = 18843, price = "34100 #alliance#" }, --Grand Marshal's Right Hand Blade
			{ itemID = 18847, price = "34100 #alliance#" }, --Grand Marshal's Left Hand Blade
			{ itemID = 23451, price = "34100 #alliance#" }, --Grand Marshal's Mageblade
			{ itemID = 18838, price = "34100 #alliance#" }, --Grand Marshal's Dirk
			{ itemID = 12584, price = "34100 #alliance#" }, --Grand Marshal's Longsword
			{ itemID = 23456, price = "34100 #alliance#" }, --Grand Marshal's Swiftblade
			{ itemID = 18876, price = "68200 #alliance#" }, --Grand Marshal's Claymore
			{ itemID = 18827, price = "34100 #alliance#" }, --Grand Marshal's Handaxe
			{ itemID = 18830, price = "68200 #alliance#" }, --Grand Marshal's Sunderer
			{ itemID = 23454, price = "34100 #alliance#" }, --Grand Marshal's Warhammer
			{ itemID = 18865, price = "34100 #alliance#" }, --Grand Marshal's Punisher
			{ itemID = 18867, price = "68200 #alliance#" }, --Grand Marshal's Battle Hammer
			{ itemID = 23455, price = "68200 #alliance#" }, --Grand Marshal's Demolisher
			{ itemID = 18869, price = "68200 #alliance#" }, --Grand Marshal's Glaive
			{ itemID = 18873, price = "68200 #alliance#" }, --Grand Marshal's Stave
			{ itemID = 18825, price = "34100 #alliance#" }, --Grand Marshal's Aegis
			{ itemID = 18833, price = "34100 #alliance#" }, --Grand Marshal's Bullseye
			{ itemID = 18836, price = "34100 #alliance#" }, --Grand Marshal's Repeater
			{ itemID = 18855, price = "34100 #alliance#" }, --Grand Marshal's Hand Cannon
			{ itemID = 23452, price = "34100 #alliance#" }, --Grand Marshal's Tome of Power
			{ itemID = 23453, price = "34100 #alliance#" }, --Grand Marshal's Tome of Restoration
		},
		{
			{ itemID = 918843, price = "20000 #alliance#" }, --Lieutenant Commander's Right Hand Blade
			{ itemID = 918847, price = "20000 #alliance#" }, --Lieutenant Commander's Left Hand Blade
			{ itemID = 923451, price = "20000 #alliance#" }, --Lieutenant Commander's Mageblade
			{ itemID = 918838, price = "20000 #alliance#" }, --Lieutenant Commander's Dirk
			{ itemID = 912584, price = "20000 #alliance#" }, --Lieutenant Commander's Longsword
			{ itemID = 923456, price = "20000 #alliance#" }, --Lieutenant Commander's Swiftblade
			{ itemID = 918876, price = "34100 #alliance#" }, --Lieutenant Commander's Claymore
			{ itemID = 918827, price = "20000 #alliance#" }, --Lieutenant Commander's Handaxe
			{ itemID = 918830, price = "34100 #alliance#" }, --Lieutenant Commander's Sunderer
			{ itemID = 923454, price = "20000 #alliance#" }, --Lieutenant Commander's Warhammer
			{ itemID = 918865, price = "20000 #alliance#" }, --Lieutenant Commander's Punisher
			{ itemID = 918867, price = "34100 #alliance#" }, --Lieutenant Commander's Battle Hammer
			{ itemID = 923455, price = "34100 #alliance#" }, --Lieutenant Commander's Demolisher
			{ itemID = 918869, price = "34100 #alliance#" }, --Lieutenant Commander's Glaive
			{ itemID = 918873, price = "34100 #alliance#" }, --Lieutenant Commander's Stave
			{ itemID = 918825, price = "20000 #alliance#" }, --Lieutenant Commander's Aegis
			{ itemID = 918833, price = "20000 #alliance#" }, --Lieutenant Commander's Bullseye
			{ itemID = 918836, price = "20000 #alliance#" }, --Lieutenant Commander's Repeater
			{ itemID = 918855, price = "20000 #alliance#" }, --Lieutenant Commander's Hand Cannon
			{ itemID = 923452, price = "20000 #alliance#" }, --Lieutenant Commander's Tome of Power
			{ itemID = 923453, price = "20000 #alliance#" }, --Lieutenant Commander's Tome of Restoration
		},
		{
			{ itemID = 18844, price = "34100 #horde#" }, --High Warlord's Right Claw
			{ itemID = 18848, price = "34100 #horde#" }, --High Warlord's Left Claw
			{ itemID = 23466, price = "34100 #horde#" }, --High Warlord's Spellblade
			{ itemID = 18840, price = "34100 #horde#" }, --High Warlord's Razor
			{ itemID = 16345, price = "34100 #horde#" }, --High Warlord's Blade
			{ itemID = 23467, price = "34100 #horde#" }, --High Warlord's Quickblade
			{ itemID = 18877, price = "68200 #horde#" }, --High Warlord's Greatsword
			{ itemID = 18828, price = "34100 #horde#" }, --High Warlord's Cleaver
			{ itemID = 18831, price = "68200 #horde#" }, --High Warlord's Battle Axe
			{ itemID = 23464, price = "34100 #horde#" }, --High Warlord's Battle Mace
			{ itemID = 18866, price = "34100 #horde#" }, --High Warlord's Bludgeon
			{ itemID = 18868, price = "68200 #horde#" }, --High Warlord's Pulverizer
			{ itemID = 23465, price = "68200 #horde#" }, --High Warlord's Destroyer
			{ itemID = 18871, price = "68200 #horde#" }, --High Warlord's Pig Sticker
			{ itemID = 18874, price = "68200 #horde#" }, --High Warlord's War Staff
			{ itemID = 18826, price = "34100 #horde#" }, --High Warlord's Shield Wall
			{ itemID = 18835, price = "34100 #horde#" }, --High Warlord's Recurve
			{ itemID = 18837, price = "34100 #horde#" }, --High Warlord's Crossbow
			{ itemID = 18860, price = "34100 #horde#" }, --High Warlord's Street Sweeper
			{ itemID = 23468, price = "34100 #horde#" }, --High Warlord's Tome of Destruction
			{ itemID = 23469, price = "34100 #horde#" }, --High Warlord's Tome of Mending
		},
		{
			{ itemID = 918844, price = "20000 #horde#" }, --Champion's Right Claw
			{ itemID = 918848, price = "20000 #horde#" }, --Champion's Left Claw
			{ itemID = 923466, price = "20000 #horde#" }, --Champion's Spellblade
			{ itemID = 918840, price = "20000 #horde#" }, --Champion's Razor
			{ itemID = 916345, price = "20000 #horde#" }, --Champion's Blade
			{ itemID = 923467, price = "20000 #horde#" }, --Champion's Quickblade
			{ itemID = 918877, price = "34100 #horde#" }, --Champion's Greatsword
			{ itemID = 918828, price = "20000 #horde#" }, --Champion's Cleaver
			{ itemID = 918831, price = "34100 #horde#" }, --Champion's Battle Axe
			{ itemID = 923464, price = "20000 #horde#" }, --Champion's Battle Mace
			{ itemID = 918866, price = "20000 #horde#" }, --Champion's Bludgeon
			{ itemID = 918868, price = "34100 #horde#" }, --Champion's Pulverizer
			{ itemID = 923465, price = "34100 #horde#" }, --Champion's Destroyer
			{ itemID = 918871, price = "34100 #horde#" }, --Champion's Pig Sticker
			{ itemID = 918874, price = "34100 #horde#" }, --Champion's War Staff
			{ itemID = 918826, price = "20000 #horde#" }, --Champion's Shield Wall
			{ itemID = 918835, price = "20000 #horde#" }, --Champion's Recurve
			{ itemID = 918837, price = "20000 #horde#" }, --Champion's Crossbow
			{ itemID = 918860, price = "20000 #horde#" }, --Champion's Street Sweeper
			{ itemID = 923468, price = "20000 #horde#" }, --Champion's Tome of Destruction
			{ itemID = 923469, price = "20000 #horde#" }, --Champion's Tome of Mending
		},
	},

	--------------------------------
	--- PvP Level 60 Accessories ---
	--------------------------------
	["PvP60Accessories"] = {
		{
			{ itemID = 100533, price = "34100 #alliance#" }, --Combatant's Amulet of Victory
			{ itemID = 100534, price = "34100 #alliance#" }, --Combatant's Amulet of Triumph
			{ itemID = 100535, price = "34100 #alliance#" }, --Combatant's Amulet of Dominance
			{ itemID = 100536, price = "34100 #alliance#" }, --Combatant's Amulet of Conquest
			{ itemID = 100537, price = "34100 #alliance#" }, --Combatant's Loop of Triumph
			{ itemID = 100538, price = "34100 #alliance#" }, --Combatant's Loop of Victory
			{ itemID = 100539, price = "34100 #alliance#" }, --Combatant's Loop of Dominance
			{ itemID = 100540, price = "34100 #alliance#" }, --Combatant's Loop of Conquest
			{ itemID = 100541, price = "34100 #alliance#" }, --Combatant's Cloak of Triumph
			{ itemID = 100542, price = "34100 #alliance#" }, --Combatant's Cloak of Victory
			{ itemID = 100543, price = "34100 #alliance#" }, --Combatant's Cloak of Dominance
			{ itemID = 100544, price = "34100 #alliance#" }, --Combatant's Cloak of Conquest
			{ itemID = 100526, price = " #alliance#" }, --Battlemaster's Fury
			{ itemID = 100527, price = " #alliance#" }, --Battlemaster's Rage
			{ itemID = 100528, price = " #alliance#" }, --Battlemaster's Ruination
			{ itemID = 100529, price = " #alliance#" }, --Insignia of the Alliance
			{ itemID = 100530, price = " #alliance#" }, --Insignia of the Horde
			{ itemID = 100531, price = " #alliance#" }, --Combatant's Scroll of Battle
			{ itemID = 100532, price = " #alliance#" }, --Combatant's Scroll of Sorcery
			{ itemID = 29465, price = "50000 #alliance#" }, --Black Battlestrider
			{ itemID = 29467, price = "50000 #alliance#" }, --Black War Ram
			{ itemID = 29468, price = "50000 #alliance#" }, --Black War Steed Bridle
			{ itemID = 29471, price = "50000 #alliance#" }, --Reins of the Black War Tiger
			{ itemID = 35906, price = "50000 #alliance#" }, --Reins of the Black War Elekk
			{ itemID = 18863, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18856, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18859, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18864, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18862, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18857, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 29593, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18858, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 18854, price = "2805 #alliance#" }, --Insignia of the Alliance
			{ itemID = 15196, price = "15000 #alliance#" }, --Private's Tabard
			{ itemID = 15198, price = "20000 #alliance#" }, --Knight's Colors
			{ itemID = 18606, price = "15300 #alliance#" }, --Alliance Battle Standard
			{ itemID = 18839, price = "10 #silver# 1 #alliance#" }, --Combat Healing Potion
			{ itemID = 18841, price = "10 #silver# 1 #alliance#" }, --Combat Mana Potion
			{ itemID = 32455, price = "12 #silver# 1 #alliance#" }, --Star's Lament
			{ itemID = 18457, price = "300 #alliance#" }, --Sergeant Major's Silk Cuffs
			{ itemID = 18456, price = "1600 #alliance#" }, --Sergeant Major's Silk Cuffs
			{ itemID = 18455, price = "300 #alliance#" }, --Sergeant Major's Dragonhide Armsplints
			{ itemID = 18454, price = "1600 #alliance#" }, --Sergeant Major's Dragonhide Armsplints
			{ itemID = 18453, price = "300 #alliance#" }, --Sergeant Major's Leather Armsplints
			{ itemID = 18452, price = "1600 #alliance#" }, --Sergeant Major's Leather Armsplints
			{ itemID = 18449, price = "300 #alliance#" }, --Sergeant Major's Chain Armguards
			{ itemID = 18448, price = "1600 #alliance#" }, --Sergeant Major's Chain Armguards
			{ itemID = 18447, price = "300 #alliance#" }, --Sergeant Major's Plate Wristguards
			{ itemID = 18445, price = "1600 #alliance#" }, --Sergeant Major's Plate Wristguards
			{ itemID = 18440, price = "100 #alliance#" }, --Sergeant's Cape
			{ itemID = 18441, price = "300 #alliance#" }, --Sergeant's Cape
			{ itemID = 16342, price = "1600 #alliance#" }, --Sergeant's Cape
			{ itemID = 18442, price = "100 #alliance#" }, --Master Sergeant's Insignia
			{ itemID = 18444, price = "300 #alliance#" }, --Master Sergeant's Insignia
			{ itemID = 18443, price = "1600 #alliance#" }, --Master Sergeant's Insignia
		},
		{
			{ itemID = 100533, price = "34100 #horde#" }, --Combatant's Amulet of Victory
			{ itemID = 100534, price = "34100 #horde#" }, --Combatant's Amulet of Triumph
			{ itemID = 100535, price = "34100 #horde#" }, --Combatant's Amulet of Dominance
			{ itemID = 100536, price = "34100 #horde#" }, --Combatant's Amulet of Conquest
			{ itemID = 100537, price = "34100 #horde#" }, --Combatant's Loop of Triumph
			{ itemID = 100538, price = "34100 #horde#" }, --Combatant's Loop of Victory
			{ itemID = 100539, price = "34100 #horde#" }, --Combatant's Loop of Dominance
			{ itemID = 100540, price = "34100 #horde#" }, --Combatant's Loop of Conquest
			{ itemID = 100541, price = "34100 #horde#" }, --Combatant's Cloak of Triumph
			{ itemID = 100542, price = "34100 #horde#" }, --Combatant's Cloak of Victory
			{ itemID = 100543, price = "34100 #horde#" }, --Combatant's Cloak of Dominance
			{ itemID = 100544, price = "34100 #horde#" }, --Combatant's Cloak of Conquest
			{ itemID = 100526, price = " #horde#" }, --Battlemaster's Fury
			{ itemID = 100527, price = " #horde#" }, --Battlemaster's Rage
			{ itemID = 100528, price = " #horde#" }, --Battlemaster's Ruination
			{ itemID = 100529, price = " #horde#" }, --Insignia of the Alliance
			{ itemID = 100530, price = " #horde#" }, --Insignia of the Horde
			{ itemID = 100531, price = " #horde#" }, --Combatant's Scroll of Battle
			{ itemID = 100532, price = " #horde#" }, --Combatant's Scroll of Sorcery
			{ itemID = 29466, price = "50000 #horde#" }, --Black War Kodo
			{ itemID = 29469, price = "50000 #horde#" }, --Horn of the Black War Wolf
			{ itemID = 29470, price = "50000 #horde#" }, --Red Skeletal Warhorse
			{ itemID = 29472, price = "50000 #horde#" }, --Whistle of the Black War Raptor
			{ itemID = 34129, price = "50000 #horde#" }, --Swift Warstrider
			{ itemID = 18853, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18846, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18850, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 29592, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18851, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18849, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18845, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18852, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 18834, price = "2805 #horde#" }, --Insignia of the Horde
			{ itemID = 15197, price = "15000 #horde#" }, --Scout's Tabard
			{ itemID = 15199, price = "20000 #horde#" }, --Stone Guard's Herald
			{ itemID = 18607, price = "15300 #horde#" }, --Horde Battle Standard
			{ itemID = 18839, price = "10 #silver# 1 #horde#" }, --Combat Healing Potion
			{ itemID = 18841, price = "10 #silver# 1 #horde#" }, --Combat Mana Potion
			{ itemID = 32455, price = "12 #silver# 1 #horde#" }, --Star's Lament
			{ itemID = 18437, price = "300 #horde#" }, --First Sergeant's Silk Cuffs
			{ itemID = 16486, price = "1600 #horde#" }, --First Sergeant's Silk Cuffs
			{ itemID = 18436, price = "300 #horde#" }, --First Sergeant's Dragonhide Armguards
			{ itemID = 18434, price = "1600 #horde#" }, --First Sergeant's Dragonhide Armguards
			{ itemID = 18435, price = "300 #horde#" }, --First Sergeant's Leather Armguards
			{ itemID = 16497, price = "1600 #horde#" }, --First Sergeant's Leather Armguards
			{ itemID = 18432, price = "300 #horde#" }, --First Sergeant's Mail Wristguards
			{ itemID = 16532, price = "1600 #horde#" }, --First Sergeant's Mail Wristguards
			{ itemID = 18430, price = "300 #horde#" }, --First Sergeant's Plate Bracers
			{ itemID = 18429, price = "1600 #horde#" }, --First Sergeant's Plate Bracers
			{ itemID = 18427, price = "100 #horde#" }, --Sergeant's Cloak
			{ itemID = 16341, price = "300 #horde#" }, --Sergeant's Cloak
			{ itemID = 18461, price = "1600 #horde#" }, --Sergeant's Cloak
			{ itemID = 15200, price = "100 #horde#" }, --Senior Sergeant's Insignia
			{ itemID = 18428, price = "300 #horde#" }, --Senior Sergeant's Insignia
			{ itemID = 16335, price = "1600 #horde#" }, --Senior Sergeant's Insignia
		},
	},

	["PvP60Ench"] = {
		{
			{ itemID = 100545, price = "25000 #alliance#" }, --Superior Resistance
			{ itemID = 100546, price = "25000 #alliance#" }, --Lesser Resilience
			{ itemID = 100547, price = "25000 #alliance#" }, --Absorption
			{ itemID = 100548, price = "25000 #alliance#" }, --Lesser Stats
			{ itemID = 100549, price = "25000 #alliance#" }, --Superior Intellect
			{ itemID = 100550, price = "25000 #alliance#" }, --Nature Power
			{ itemID = 100551, price = "25000 #alliance#" }, --Arcane Power
			{ itemID = 100552, price = "25000 #alliance#" }, --Holy Power
			{ itemID = 100553, price = "25000 #alliance#" }, --Greater Healing Power
			{ itemID = 100554, price = "25000 #alliance#" }, --Superior Strength
			{ itemID = 100555, price = "25000 #alliance#" }, --Greater Riding Skill
			{ itemID = 100556, price = "25000 #alliance#" }, --Lesser Boar's Speed
			{ itemID = 100557, price = "25000 #alliance#" }, --Lesser Cat's Swiftness
			{ itemID = 100558, price = "25000 #alliance#" }, --Lesser Falcon's Quickness
			{ itemID = 100559, price = "25000 #alliance#" }, --Lesser Stamina
			{ itemID = 100560, price = "25000 #alliance#" }, --Lesser Stats
			{ itemID = 100561, price = "40000 #alliance#" }, --Lesser Blood Draining
			{ itemID = 100563, price = "40000 #alliance#" }, --Lesser Arcanum of Dominance
			{ itemID = 100564, price = "50000 #alliance#" }, --Lesser Arcanum of Triumph
			{ itemID = 449570, price = "40000 #alliance#" }, --Lesser Inscription of the Gladiator
			{ itemID = 449571, price = "40000 #alliance#" }, --Lesser Inscription of the Battle Mage
		},
	}
})