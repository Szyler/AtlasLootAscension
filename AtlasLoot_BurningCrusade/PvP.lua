local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
-----------
--- PvP ---
-----------

----------------------
--- Alterac Valley ---
----------------------
AtlasLoot:AddNewItemDataTable({
	
	
-----------
---PvP ---
-----------

---------------------------------------------------------------
---World PvP - Hellfire Peninsula: Hellfire Fortifications ---
---------------------------------------------------------------

	["PVPHellfire"] = {
		{
			{ itemID = 27833, desc = "=ds=15 #markthrallmarhhold#" }, --Band of the Victor
			{ itemID = 27786, desc = "=ds=10 #markthrallmarhhold#" }, --Barbed Deep Peridot
			{ itemID = 28360, desc = "=ds=10 #markthrallmarhhold#" }, --Mighty Blood Garnet
			{ icon = "INV_BannerPVP_02", name = "Alliance", pageBreak = true },
			{ itemID = 24520, desc = "=ds=5 #markhhold#" }, --Honor Hold Favor
			{ itemID = 24579, desc = "Currency (Alliance)" }, --Mark of Honor Hold
			{ itemID = 27830, desc = "=ds=15 #markthrallmarhhold#" }, --Circlet of the Victor
			{ itemID = 27785, desc = "=ds=10 #markthrallmarhhold#" }, --Notched Deep Peridot
			{ itemID = 27777, desc = "=ds=10 #markthrallmarhhold#" }, --Stark Blood Garnet
			{ icon = "INV_BannerPVP_01", name = "Horde" },
			{ itemID = 24522, desc = "=ds=5 #markthrallmar#" }, --Thrallmar Favor
			{ itemID = 24581, desc = "Currency (Horde)" }, --Mark of Thrallmar
		},
	},

	["PVPHalaa"] = {
		{
			{ itemID = 28915 , price = "70 #halaabattle# 15 #halaaresearch#" }, --Reins of the Dark Riding Talbuk
			{ itemID = 27679, price = "100 #halaabattle#" }, --Sublime Mystic Dawnstone
			{ itemID = 27649, price = "40 #halaabattle# 2 #halaaresearch#" }, --Hierophant's Leggings
			{ itemID = 27648, price = "40 #halaabattle# 2 #halaaresearch#" }, --Dreamstalker Leggings
			{ itemID = 27650, price = "40 #halaabattle# 2 #halaaresearch#" }, --Shadowstalker's Leggings
			{ itemID = 27647, price = "40 #halaabattle# 2 #halaaresearch#" }, --Marksman's Legguards
			{ itemID = 27652, price = "40 #halaabattle# 2 #halaaresearch#" }, --Stormbreaker's Leggings
			{ itemID = 27654, price = "40 #halaabattle# 2 #halaaresearch#" }, --Avenger's Legguards
			{ itemID = 27653, price = "40 #halaabattle# 2 #halaaresearch#" }, --Slayer's Legguards
			{ itemID = 24208 }, --Design: Mystic Dawnstone
			{ itemID = 26045 }, --Halaa Battle Token
			{ itemID = 29228 , price = "100 #halaabattle# 20 #halaaresearch#" }, --Reins of the Dark War Talbuk
			{ itemID = 27680, price = "8 #halaaresearch#" }, --Halaani Bag
			{ itemID = 27638, price = "20 #halaabattle# 1 #halaaresearch#" }, --Hierophant's Sash
			{ itemID = 27645, price = "20 #halaabattle# 1 #halaaresearch#" }, --Dreamstalker Sash
			{ itemID = 27637, price = "20 #halaabattle# 1 #halaaresearch#" }, --Shadowstalker's Sash
			{ itemID = 27646, price = "20 #halaabattle# 1 #halaaresearch#" }, --Marksman's Belt
			{ itemID = 27643, price = "20 #halaabattle# 1 #halaaresearch#" }, --Stormbreaker's Girdle
			{ itemID = 27644, price = "20 #halaabattle# 1 #halaaresearch#" }, --Avenger's Waistguard
			{ itemID = 27639, price = "20 #halaabattle# 1 #halaaresearch#" }, --Slayer's Waistguard
			{ itemID = 33783, price = "4 #halaaresearch#" }, --Design: Steady Talasite
			{ itemID = 32071, price = "2 #halaaresearch#" }, --Recipe: Elixir of Ironskin
			{ itemID = 26044 }, --Halaa Research Token
		},
		{
			{ itemID = 30611 }, --Halaani Razorshaft
			{ itemID = 30615 }, --Halaani Whiskey
			{ icon = "INV_BannerPVP_02", name = "Alliance" },
			{ itemID = 30598 }, --Don Amancio's Heart
			{ itemID = 30597 }, --Halaani Claymore
			{ itemID = 30599 }, --Avenging Blades
			{ itemID = 30612 }, --Halaani Grimshot
			{ icon = "INV_BannerPVP_01", name = "Horde" },
			{ itemID = 30571 }, --Don Rodrigo's Heart
			{ itemID = 30570 }, --Arkadian Claymore
			{ itemID = 30568 }, --The Sharp Cookie
		},
	},

	["PVPSpiritTowers"] = {
		{
			{ itemID = 28553 , price = "50 #spiritshard#" }, --Band of the Exorcist
			{ itemID = 28557, price = "8 #spiritshard#" }, --Swift Starfire Diamond
			{ itemID = 28759, price = "18 #spiritshard#" }, --Exorcist's Dreadweave Hood
			{ itemID = 28574, price = "18 #spiritshard#" }, --Exorcist's Dragonhide Helm
			{ itemID = 28575, price = "18 #spiritshard#" }, --Exorcist's Wyrmhide Helm
			{ itemID = 28577, price = "18 #spiritshard#" }, --Exorcist's Linked Helm
			{ itemID = 28560, price = "18 #spiritshard#" }, --Exorcist's Lamellar Helm
			{ itemID = 28761, price = "18 #spiritshard#" }, --Exorcist's Scaled Helm
			{ itemID = 32947, price = "2 #spiritshard#" }, --Auchenai Healing Potion
			{ itemID = 28558 }, --Spirit Shard
			{ itemID = 28555 , price = "50 #spiritshard#" }, --Seal of the Exorcist
			{ itemID = 28556, price = "8 #spiritshard#" }, --Swift Windfire Diamond
			{ itemID = 28760, price = "18 #spiritshard#" }, --Exorcist's Silk Hood
			{ itemID = 28561, price = "18 #spiritshard#" }, --Exorcist's Leather Helm
			{ itemID = 28576, price = "18 #spiritshard#" }, --Exorcist's Chain Helm
			{ itemID = 28758, price = "18 #spiritshard#" }, --Exorcist's Mail Helm
			{ itemID = 28559, price = "18 #spiritshard#" }, --Exorcist's Plate Helm
			{ itemID = 32948, price = "2 #spiritshard#" }, --Auchenai Mana Potion
		},
	},

	["PVPTwinSpireRuins"] = {
		{
			{ itemID = 27990, price = "15 #markthrallmarhhold#" }, --Idol of Savagery
			{ itemID = 27984, price = "15 #markthrallmarhhold#" }, --Totem of Impact
			{ itemID = 27922, price = "30 #markthrallmarhhold#" }, --Mark of Defiance
			{ itemID = 27929, price = "15 #markthrallmarhhold#" }, --Terminal Edge
			{ itemID = 27939, price = "15 #markthrallmarhhold#" }, --Incendic Rod
			{ itemID = 24579, desc = "Currency (Alliance)" }, --Mark of Honor Hold
			{ itemID = 27983, price = "15 #markthrallmarhhold#" }, --Libram of Zeal
			{ itemID = 27920, price = "30 #markthrallmarhhold#" }, --Mark of Conquest
			{ itemID = 27927, price = "30 #markthrallmarhhold#" }, --Mark of Vindication
			{ itemID = 27930, price = "15 #markthrallmarhhold#" }, --Splintermark
			{ itemID = 24581, desc = "Currency (Horde)" }, --Mark of Thrallmar
		},
	},

-------------------------------------
---Rep-PvP Level 70 - Armor Sets ---
-------------------------------------

	["PVP70RepGear"] = {
		{
			{ icon = "INV_BannerPVP_02", name = "Satin Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 35339, desc = "Thrallmar / Honor Hold - Honored" }, --Satin Hood
			{ itemID = 35341, desc = "The Sha'tar - Honored" }, --Satin Mantle
			{ itemID = 35342, desc = "Cenarion Expedition - Honored" }, --Satin Robe
			{ itemID = 35338, desc = "Keepers of Time - Honored" }, --Satin Gloves
			{ itemID = 35340, desc = "Lower City - Honored" }, --Satin Leggings
			{ icon = "INV_BannerPVP_02", name = "Mooncloth Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 35333, desc = "The Sha'tar - Honored" }, --Mooncloth Cowl
			{ itemID = 35336, desc = "Cenarion Expedition - Honored" }, --Mooncloth Shoulderpads
			{ itemID = 35337, desc = "Thrallmar / Honor Hold - Honored" }, --Mooncloth Vestments
			{ itemID = 35335, desc = "Lower City - Honored" }, --Mooncloth Mitts
			{ itemID = 35334, desc = "Keepers of Time - Honored" }, --Mooncloth Legguards
			{ icon = "INV_BannerPVP_02", name = "Evoker's Silk Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 35344, desc = "Lower City - Honored" }, --Evoker's Silk Cowl
			{ itemID = 35343, desc = "Thrallmar / Honor Hold - Honored" }, --Evoker's Silk Amice
			{ itemID = 35346, desc = "Keepers of Time - Honored" }, --Evoker's Silk Raiment
			{ itemID = 35345, desc = "The Sha'tar - Honored" }, --Evoker's Silk Handguards
			{ itemID = 35347, desc = "Cenarion Expedition - Honored" }, --Evoker's Silk Trousers
			{ icon = "INV_BannerPVP_02", name = "Dreadweave Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 35329, desc = "Cenarion Expedition - Honored" }, --Dreadweave Hood
			{ itemID = 35331, desc = "Lower City - Honored" }, --Dreadweave Mantle
			{ itemID = 35332, desc = "Thrallmar / Honor Hold - Honored" }, --Dreadweave Robe
			{ itemID = 35328, desc = "Keepers of Time - Honored" }, --Dreadweave Gloves
			{ itemID = 35330, desc = "The Sha'tar - Honored" }, --Dreadweave Leggings
		},
		{
			{ icon = "INV_BannerPVP_02", name = "Dragonhide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 35357, desc = "Lower City - Honored" }, --Dragonhide Helm
			{ itemID = 35359, desc = "The Sha'tar - Honored" }, --Dragonhide Spaulders
			{ itemID = 35360, desc = "Thrallmar / Honor Hold - Honored" }, --Dragonhide Robe
			{ itemID = 35356, desc = "Keepers of Time - Honored" }, --Dragonhide Gloves
			{ itemID = 35358, desc = "Cenarion Expedition - Honored" }, --Dragonhide Legguards
			{ icon = "INV_BannerPVP_02", name = "Wyrmhide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 35372, desc = "Keepers of Time - Honored" }, --Wyrmhide Helm
			{ itemID = 35374, desc = "Cenarion Expedition - Honored" }, --Wyrmhide Spaulders
			{ itemID = 35375, desc = "The Sha'tar - Honored" }, --Wyrmhide Robe
			{ itemID = 35371, desc = "Thrallmar / Honor Hold - Honored" }, --Wyrmhide Gloves
			{ itemID = 35373, desc = "Lower City - Honored" }, --Wyrmhide Legguards
			{ icon = "INV_BannerPVP_02", name = "Kodohide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 35362, desc = "The Sha'tar - Honored" }, --Kodohide Helm
			{ itemID = 35364, desc = "Thrallmar / Honor Hold - Honored" }, --Kodohide Spaulders
			{ itemID = 35365, desc = "Cenarion Expedition - Honored" }, --Kodohide Robe
			{ itemID = 35361, desc = "Lower City - Honored" }, --Kodohide Gloves
			{ itemID = 35363, desc = "Keepers of Time - Honored" }, --Kodohide Legguards
			{ icon = "INV_BannerPVP_02", name = "Opportunist's Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 35367, desc = "Cenarion Expedition - Honored" }, --Opportunist's Leather Helm
			{ itemID = 35369, desc = "Keepers of Time - Honored" }, --Opportunist's Leather Spaulders
			{ itemID = 35370, desc = "Lower City - Honored" }, --Opportunist's Leather Tunic
			{ itemID = 35366, desc = "Thrallmar / Honor Hold - Honored" }, --Opportunist's Leather Gloves
			{ itemID = 35368, desc = "The Sha'tar - Honored" }, --Opportunist's Leather Legguards
		},
		{
			{ icon = "INV_BannerPVP_02", name = "Seer's Linked Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 35383, desc = "Thrallmar / Honor Hold - Honored" }, --Seer's Linked Helm
			{ itemID = 35385, desc = "Cenarion Expedition - Honored" }, --Seer's Linked Spaulders
			{ itemID = 35381, desc = "The Sha'tar - Honored" }, --Seer's Linked Armor
			{ itemID = 35382, desc = "Lower City - Honored" }, --Seer's Linked Gauntlets
			{ itemID = 35384, desc = "Keepers of Time - Honored" }, --Seer's Linked Leggings
			{ icon = "INV_BannerPVP_02", name = "Seer's Mail Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 35388, desc = "The Sha'tar - Honored" }, --Seer's Mail Helm
			{ itemID = 35390, desc = "Keepers of Time - Honored" }, --Seer's Mail Spaulders
			{ itemID = 35386, desc = "Thrallmar / Honor Hold - Honored" }, --Seer's Mail Armor
			{ itemID = 35387, desc = "Cenarion Expedition - Honored" }, --Seer's Mail Gauntlets
			{ itemID = 35389, desc = "Lower City - Honored" }, --Seer's Mail Leggings
			{ icon = "INV_BannerPVP_02", name = "Seer's Ringmail Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 35393, desc = "Keepers of Time - Honored" }, --Seer's Ringmail Headpiece
			{ itemID = 35395, desc = "The Sha'tar - Honored" }, --Seer's Ringmail Shoulderpads
			{ itemID = 35391, desc = "Lower City - Honored" }, --Seer's Ringmail Chestguard
			{ itemID = 35392, desc = "Thrallmar / Honor Hold - Honored" }, --Seer's Ringmail Gloves
			{ itemID = 35394, desc = "Cenarion Expedition - Honored" }, --Seer's Ringmail Legguards
			{ icon = "INV_BannerPVP_02", name = "Stalker's Chain Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 35378, desc = "Lower City - Honored" }, --Stalker's Chain Helm
			{ itemID = 35380, desc = "The Sha'tar - Honored" }, --Stalker's Chain Spaulders
			{ itemID = 35376, desc = "Keepers of Time - Honored" }, --Stalker's Chain Armor
			{ itemID = 35377, desc = "Thrallmar / Honor Hold - Honored" }, --Stalker's Chain Gauntlets
			{ itemID = 35379, desc = "Cenarion Expedition - Honored" }, --Stalker's Chain Leggings
		},
		{
			{ icon = "INV_BannerPVP_02", name = "Crusader's Scaled Battledgear", desc = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 35414, desc = "Keepers of Time - Honored" }, --Crusader's Scaled Helm
			{ itemID = 35416, desc = "The Sha'tar - Honored" }, --Crusader's Scaled Shoulders
			{ itemID = 35412, desc = "Lower City - Honored" }, --Crusader's Scaled Chestpiece
			{ itemID = 35413, desc = "Thrallmar / Honor Hold - Honored" }, --Crusader's Scaled Gauntlets
			{ itemID = 35415, desc = "Cenarion Expedition - Honored" }, --Crusader's Scaled Legguards
			{ icon = "INV_BannerPVP_02", name = "Crusader's Ornamented Battledgear", desc = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 35404, desc = "The Sha'tar - Honored" }, --Crusader's Ornamented Headguard
			{ itemID = 35406, desc = "Thrallmar / Honor Hold - Honored" }, --Crusader's Ornamented Spaulders
			{ itemID = 35402, desc = "Keepers of Time - Honored" }, --Crusader's Ornamented Chestplate
			{ itemID = 35403, desc = "Cenarion Expedition - Honored" }, --Crusader's Ornamented Gloves
			{ itemID = 35405, desc = "Lower City - Honored" }, --Crusader's Ornamented Leggings
			{ icon = "INV_BannerPVP_02", name = "Savage's Plate Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] },
			{ itemID = 35409, desc = "Thrallmar / Honor Hold - Honored" }, --Savage Plate Helm
			{ itemID = 35411, desc = "Lower City - Honored" }, --Savage Plate Shoulders
			{ itemID = 35407, desc = "The Sha'tar - Honored" }, --Savage Plate Chestpiece
			{ itemID = 35408, desc = "Cenarion Expedition - Honored" }, --Savage Plate Gauntlets
			{ itemID = 35410, desc = "Keepers of Time - Honored" }, --Savage Plate Legguards
		},
		{
			{ icon = "INV_BannerPVP_02", name = "Satin Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 28705 }, --Grand Marshal's Satin Hood
			{ itemID = 28707 }, --Grand Marshal's Satin Mantle
			{ itemID = 28708 }, --Grand Marshal's Satin Robe
			{ itemID = 28704 }, --Grand Marshal's Satin Gloves
			{ itemID = 28706 }, --Grand Marshal's Satin Leggings
			{ icon = "INV_BannerPVP_02", name = "Mooncloth Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 31622 }, --Grand Marshal's Mooncloth Cowl
			{ itemID = 31624 }, --Grand Marshal's Mooncloth Shoulderpads
			{ itemID = 31625 }, --Grand Marshal's Mooncloth Vestments
			{ itemID = 31620 }, --Grand Marshal's Mooncloth Mitts
			{ itemID = 31623 }, --Grand Marshal's Mooncloth Legguards
			{ icon = "INV_BannerPVP_02", name = "Evoker's Silk Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 28715 }, --Grand Marshal's Silk Cowl
			{ itemID = 28714 }, --Grand Marshal's Silk Amice
			{ itemID = 28717 }, --Grand Marshal's Silk Raiment
			{ itemID = 28716 }, --Grand Marshal's Silk Handguards
			{ itemID = 28718 }, --Grand Marshal's Silk Trousers
			{ icon = "INV_BannerPVP_02", name = "Dreadweave Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28625 }, --Grand Marshal's Dreadweave Hood
			{ itemID = 28627 }, --Grand Marshal's Dreadweave Mantle
			{ itemID = 28628 }, --Grand Marshal's Dreadweave Robe
			{ itemID = 28624 }, --Grand Marshal's Dreadweave Gloves
			{ itemID = 28626 }, --Grand Marshal's Dreadweave Leggings
		},
		{
			{ icon = "INV_BannerPVP_02", name = "Dragonhide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 28619 }, --Grand Marshal's Dragonhide Helm
			{ itemID = 28622 }, --Grand Marshal's Dragonhide Spaulders
			{ itemID = 28623 }, --Grand Marshal's Dragonhide Robe
			{ itemID = 28618 }, --Grand Marshal's Dragonhide Gloves
			{ itemID = 28620 }, --Grand Marshal's Dragonhide Legguards
			{ icon = "INV_BannerPVP_02", name = "Wyrmhide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 31590 }, --Grand Marshal's Wyrmhide Helm
			{ itemID = 31592 }, --Grand Marshal's Wyrmhide Spaulders
			{ itemID = 31593 }, --Grand Marshal's Wyrmhide Robe
			{ itemID = 31589 }, --Grand Marshal's Wyrmhide Gloves
			{ itemID = 31591 }, --Grand Marshal's Wyrmhide Legguards
			{ icon = "INV_BannerPVP_02", name = "Kodohide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 28720 }, --Grand Marshal's Kodohide Helm
			{ itemID = 28722 }, --Grand Marshal's Kodohide Spaulders
			{ itemID = 28723 }, --Grand Marshal's Kodohide Robe
			{ itemID = 28719 }, --Grand Marshal's Kodohide Gloves
			{ itemID = 28721 }, --Grand Marshal's Kodohide Legguards
			{ icon = "INV_BannerPVP_02", name = "Opportunist's Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 28685 }, --Grand Marshal's Leather Helm
			{ itemID = 28687 }, --Grand Marshal's Leather Spaulders
			{ itemID = 28688 }, --Grand Marshal's Leather Tunic
			{ itemID = 28684 }, --Grand Marshal's Leather Gloves
			{ itemID = 28686 }, --Grand Marshal's Leather Legguards
		},
		{
			{ icon = "INV_BannerPVP_02", name = "Seer's Linked Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28691 }, --Grand Marshal's Linked Helm
			{ itemID = 28693 }, --Grand Marshal's Linked Spaulders
			{ itemID = 28689 }, --Grand Marshal's Linked Armor
			{ itemID = 28690 }, --Grand Marshal's Linked Gauntlets
			{ itemID = 28692 }, --Grand Marshal's Linked Leggings
			{ icon = "INV_BannerPVP_02", name = "Seer's Mail Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28696 }, --Grand Marshal's Mail Helm
			{ itemID = 28698 }, --Grand Marshal's Mail Spaulders
			{ itemID = 28694 }, --Grand Marshal's Mail Armor
			{ itemID = 28695 }, --Grand Marshal's Mail Gauntlets
			{ itemID = 28697 }, --Grand Marshal's Mail Leggings
			{ icon = "INV_BannerPVP_02", name = "Seer's Ringmail Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 31642 }, --Grand Marshal's Ringmail Headpiece
			{ itemID = 31644 }, --Grand Marshal's Ringmail Shoulderpads
			{ itemID = 31640 }, --Grand Marshal's Ringmail Chestguard
			{ itemID = 31641 }, --Grand Marshal's Ringmail Gloves
			{ itemID = 31643 }, --Grand Marshal's Ringmail Legguards
			{ icon = "INV_BannerPVP_02", name = "Stalker's Chain Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 28615 }, --Grand Marshal's Chain Helm
			{ itemID = 28617 }, --Grand Marshal's Chain Spaulders
			{ itemID = 28613 }, --Grand Marshal's Chain Armor
			{ itemID = 28614 }, --Grand Marshal's Chain Gauntlets
			{ itemID = 28616 }, --Grand Marshal's Chain Leggings
		},
		{
			{ icon = "INV_BannerPVP_02", name = "Crusader's Scaled Battledgear", desc = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 28711 }, --Grand Marshal's Scaled Helm
			{ itemID = 28713 }, --Grand Marshal's Scaled Shoulders
			{ itemID = 28709 }, --Grand Marshal's Scaled Chestpiece
			{ itemID = 28710 }, --Grand Marshal's Scaled Gauntlets
			{ itemID = 28712 }, --Grand Marshal's Scaled Legguards
			{ icon = "INV_BannerPVP_02", name = "Crusader's Ornamented Battledgear", desc = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 31632 }, --Grand Marshal's Ornamented Headguard
			{ itemID = 31634 }, --Grand Marshal's Ornamented Spaulders
			{ itemID = 31630 }, --Grand Marshal's Ornamented Chestplate
			{ itemID = 31631 }, --Grand Marshal's Ornamented Gloves
			{ itemID = 31633 }, --Grand Marshal's Ornamented Leggings
			{ icon = "INV_BannerPVP_02", name = "Savage's Plate Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] },
			{ itemID = 28701 }, --Grand Marshal's Plate Helm
			{ itemID = 28703 }, --Grand Marshal's Plate Shoulders
			{ itemID = 28699 }, --Grand Marshal's Plate Chestpiece
			{ itemID = 28700 }, --Grand Marshal's Plate Gauntlets
			{ itemID = 28702 }, --Grand Marshal's Plate Legguards
			{ icon = "INV_BannerPVP_02", name = "Gladiator's Aegis", desc = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 28681 }, --Grand Marshal's Lamellar Helm
			{ itemID = 28683 }, --Grand Marshal's Lamellar Shoulders
			{ itemID = 28679 }, --Grand Marshal's Lamellar Chestpiece
			{ itemID = 28680 }, --Grand Marshal's Lamellar Gauntlets
			{ itemID = 28724 }, --Grand Marshal's Lamellar Legguards
		},
		{
			{ icon = "INV_BannerPVP_01", name = "Satin Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 28857 }, --High Warlord's Satin Hood
			{ itemID = 28859 }, --High Warlord's Satin Mantle
			{ itemID = 28860 }, --High Warlord's Satin Robe
			{ itemID = 28856 }, --High Warlord's Satin Gloves
			{ itemID = 28858 }, --High Warlord's Satin Leggings
			{ icon = "INV_BannerPVP_01", name = "Mooncloth Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
			{ itemID = 31626 }, --High Warlord's Mooncloth Cowl
			{ itemID = 31628 }, --High Warlord's Mooncloth Shoulderpads
			{ itemID = 31629 }, --High Warlord's Mooncloth Vestments
			{ itemID = 31621 }, --High Warlord's Mooncloth Mitts
			{ itemID = 31627 }, --High Warlord's Mooncloth Legguards
			{ icon = "INV_BannerPVP_01", name = "Evoker's Silk Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
			{ itemID = 28867 }, --High Warlord's Silk Cowl
			{ itemID = 28866 }, --High Warlord's Silk Amice
			{ itemID = 28869 }, --High Warlord's Silk Raiment
			{ itemID = 28868 }, --High Warlord's Silk Handguards
			{ itemID = 28870 }, --High Warlord's Silk Trousers
			{ icon = "INV_BannerPVP_01", name = "Dreadweave Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28818 }, --High Warlord's Dreadweave Hood
			{ itemID = 28820 }, --High Warlord's Dreadweave Mantle
			{ itemID = 28821 }, --High Warlord's Dreadweave Robe
			{ itemID = 28817 }, --High Warlord's Dreadweave Gloves
			{ itemID = 28819 }, --High Warlord's Dreadweave Leggings
		},
		{
			{ icon = "INV_BannerPVP_01", name = "Dragonhide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 28812 }, --High Warlord's Dragonhide Helm
			{ itemID = 28814 }, --High Warlord's Dragonhide Spaulders
			{ itemID = 28815 }, --High Warlord's Dragonhide Robe
			{ itemID = 28811 }, --High Warlord's Dragonhide Gloves
			{ itemID = 28813 }, --High Warlord's Dragonhide Legguards
			{ icon = "INV_BannerPVP_01", name = "Wyrmhide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 28872 }, --High Warlord's Wyrmhide Helm
			{ itemID = 28874 }, --High Warlord's Wyrmhide Spaulders
			{ itemID = 28875 }, --High Warlord's Wyrmhide Robe
			{ itemID = 28871 }, --High Warlord's Wyrmhide Gloves
			{ itemID = 28873 }, --High Warlord's Wyrmhide Legguards
			{ icon = "INV_BannerPVP_01", name = "Kodohide Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
			{ itemID = 31585 }, --High Warlord's Kodohide Helm
			{ itemID = 31587 }, --High Warlord's Kodohide Spaulders
			{ itemID = 31588 }, --High Warlord's Kodohide Robe
			{ itemID = 31584 }, --High Warlord's Kodohide Gloves
			{ itemID = 31586 }, --High Warlord's Kodohide Legguards
			{ icon = "INV_BannerPVP_01", name = "Opportunist's Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
			{ itemID = 28837 }, --High Warlord's Leather Helm
			{ itemID = 28839 }, --High Warlord's Leather Spaulders
			{ itemID = 28840 }, --High Warlord's Leather Tunic
			{ itemID = 28836 }, --High Warlord's Leather Gloves
			{ itemID = 28838 }, --High Warlord's Leather Legguards
		},
		{
			{ icon = "INV_BannerPVP_01", name = "Seer's Linked Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28843 }, --High Warlord's Linked Helm
			{ itemID = 28845 }, --High Warlord's Linked Spaulders
			{ itemID = 28841 }, --High Warlord's Linked Armor
			{ itemID = 28842 }, --High Warlord's Linked Gauntlets
			{ itemID = 28844 }, --High Warlord's Linked Leggings
			{ icon = "INV_BannerPVP_01", name = "Seer's Mail Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 28848 }, --High Warlord's Mail Helm
			{ itemID = 28850 }, --High Warlord's Mail Spaulders
			{ itemID = 28846 }, --High Warlord's Mail Armor
			{ itemID = 28847 }, --High Warlord's Mail Gauntlets
			{ itemID = 28849 }, --High Warlord's Mail Leggings
			{ icon = "INV_BannerPVP_01", name = "Seer's Ringmail Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
			{ itemID = 31648 }, --High Warlord's Ringmail Headpiece
			{ itemID = 31650 }, --High Warlord's Ringmail Shoulderpads
			{ itemID = 31646 }, --High Warlord's Ringmail Chestguard
			{ itemID = 31647 }, --High Warlord's Ringmail Gloves
			{ itemID = 31649 }, --High Warlord's Ringmail Legguards
			{ icon = "INV_BannerPVP_01", name = "Stalker's Chain Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
			{ itemID = 28807 }, --High Warlord's Chain Helm
			{ itemID = 28809 }, --High Warlord's Chain Spaulders
			{ itemID = 28805 }, --High Warlord's Chain Armor
			{ itemID = 28806 }, --High Warlord's Chain Gauntlets
			{ itemID = 28808 }, --High Warlord's Chain Leggings
		},
		{
			{ icon = "INV_BannerPVP_01", name = "Crusader's Scaled Battledgear", desc = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 28863 }, --High Warlord's Scaled Helm
			{ itemID = 28865 }, --High Warlord's Scaled Shoulders
			{ itemID = 28861 }, --High Warlord's Scaled Chestpiece
			{ itemID = 28862 }, --High Warlord's Scaled Gauntlets
			{ itemID = 28864 }, --High Warlord's Scaled Legguards
			{ icon = "INV_BannerPVP_01", name = "Crusader's Ornamented Battledgear", desc = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 31637 }, --High Warlord's Ornamented Headguard
			{ itemID = 31639 }, --High Warlord's Ornamented Spaulders
			{ itemID = 31635 }, --High Warlord's Ornamented Chestplate
			{ itemID = 31636 }, --High Warlord's Ornamented Gloves
			{ itemID = 31638 }, --High Warlord's Ornamented Leggings
			{ icon = "INV_BannerPVP_01", name = "Savage's Plate Battlegear", desc = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] },
			{ itemID = 28853 }, --High Warlord's Plate Helm
			{ itemID = 28855 }, --High Warlord's Plate Shoulders
			{ itemID = 28851 }, --High Warlord's Plate Chestpiece
			{ itemID = 28852 }, --High Warlord's Plate Gauntlets
			{ itemID = 28854 }, --High Warlord's Plate Legguards
			{ icon = "INV_BannerPVP_01", name = "Gladiator's Aegis", desc = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
			{ itemID = 28833 }, --High Warlord's Lamellar Helm
			{ itemID = 28835 }, --High Warlord's Lamellar Shoulders
			{ itemID = 28831 }, --High Warlord's Lamellar Chestpiece
			{ itemID = 28832 }, --High Warlord's Lamellar Gauntlets
			{ itemID = 28834 }, --High Warlord's Lamellar Legguards
		},
	},

	-----------------------------------
	---PvP Level 70 - Area Seasons ---
	-----------------------------------

	["PvP70HonorVendor"] = {
		{
			{ itemID = 18863, price = "50 #silver#" }, --Insignia of the Alliance
			{ itemID = 18853, price = "50 #silver#" }, --Insignia of the Horde
			{ itemID = 18864, price = "20 #gold#" }, --Insignia of the Alliance
			{ itemID = 18852, price = "20 #gold#" }, --Insignia of the Horde
			{ itemID = 28234, price = "5000 #faction#" }, --Medallion of the Alliance
			{ itemID = 37864, price = "30000 #faction#" }, --Medallion of the Alliance
			{ itemID = 28239, price = "5000 #faction#" }, --Medallion of the Horde
			{ itemID = 37865, price = "30000 #faction#" }, --Medallion of the Horde
			{ itemID = 25829, price = "30000 #faction#" }, --Talisman of the Alliance
			{ itemID = 24551, price = "30000 #faction#" }, --Talisman of the Horde
			{ itemID = 383082, price = "12000 #faction#" }, --Ability Purge
			{ itemID = 18606, price = "15300 #faction#" }, --Alliance Battle Standard
			{ itemID = 1235070, price = "10000 #faction#" }, --Bloody Mark of War
			{ itemID = 18675, price = "1 #silver#" }, --Military Ranks of the Horde & Alliance
			{ itemID = 97730, price = "1000 #faction#" }, --Worldforged Key Fragment
			{ itemID = 98570, price = "200 #faction#" }, --Mystic Orb
			{ itemID = 98462, price = "500 #faction#" }, --Mystic Rune
			{ itemID = 1101243, price = "6000 #faction#" }, --Scroll of Talent Unlearning
			{ itemID = 383083, price = "6000 #faction#" }, --Talent Purge
			{ itemID = 18839, price = "1 #faction#" }, --Combat Healing Potion
			{ itemID = 18841, price = "1 #faction#" }, --Combat Mana Potion
			{ itemID = 246189, price = "50000 #faction#" }, --Mystic Draught
			{ itemID = 106954, price = "68200 #faction#" }, --Tome Of Specialization II
			{ itemID = 32453, price = "1 #gold#" }, --Star's Tears
			{ itemID = 30183, price = "50000 #faction#" }, --Nether Vortex
			{ itemID = 23572, price = "20000 #faction#" }, --Primal Nether
			{ itemID = 15198, price = "20000 #faction#" }, --Knight's Colors
			{ itemID = 15196, price = "15000 #faction#" }, --Private's Tabard
			{ itemID = 15197, price = "15000 #faction#" }, --Scout's Tabard
			{ itemID = 15199, price = "20000 #faction#" }, --Stone Guard's Herald
		},
	},

--Arena Season 1
	["Pvp70Season1"] = {
		{
			{ itemID = 28378, price = "Arena" }, --Sergeant's Heavy Cape
			{ itemID = 28377, price = "Arena" }, --Sergeant's Heavy Cloak
			{ itemID = 28245, price = "Arena" }, --Pendant of Dominance
			{ itemID = 28244, price = "Arena" }, --Pendant of Triumph
			{ itemID = 28247, price = "Arena" }, --Band of Dominance
			{ itemID = 28246, price = "Arena" }, --Band of Triumph
		},
		{
			{ itemID = 205062, price = "5000 #faction#" }, --Resplendent Fire Agate
			{ itemID = 205064, price = "5000 #faction#" }, --Lucent Fire Agate
			{ itemID = 205066, price = "5000 #faction#" }, --Empowered Fire Agate
			{ itemID = 205068, price = "5000 #faction#" }, --Durable Fire Agate
			{ itemID = 205070, price = "5000 #faction#" }, --Piercing Idocrase
			{ itemID = 205072, price = "5000 #faction#" }, --Tense Idocrase
			{ itemID = 205074, price = "5000 #faction#" }, --Mysterious Heliotrope
			{ itemID = 1505062, price = "100 #arena#" }, --Resplendent Fire Opal
			{ itemID = 1505064, price = "100 #arena#" }, --Lucent Fire Opal
			{ itemID = 1505066, price = "100 #arena#" }, --Empowered Fire Opal
			{ itemID = 1505068, price = "100 #arena#" }, --Durable Fire Opal
			{ itemID = 1505070, price = "100 #arena#" }, --Piercing Evergem
			{ itemID = 1505072, price = "100 #arena#" }, --Tense Evergem
			{ itemID = 1505074, price = "100 #arena#" }, --Mysterious Shadowgem
			{ itemID = 449572, price = "23000 #faction#" }, --Superior Inscription of the Archmage
			{ itemID = 449573, price = "23000 #faction#" }, --Superior Inscription of the Brawler
			{ itemID = 449576, price = "25000 #faction#" }, --Arcanum of the Archmage
			{ itemID = 449577, price = "25000 #faction#" }, --Arcanum of the Brawler
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28918 , price = "Arena", faction = "Horde" }, --High Warlord's Decapitator
			{ itemID = 414334 , price = "Arena", faction = "Horde" }, --High Warlord's Executioner
			{ itemID = 414335 , price = "Arena", faction = "Horde" }, --High Warlord's Battlehammer
			{ itemID = 28917 , price = "Arena", faction = "Horde" }, --High Warlord's Bonegrinder
			{ itemID = 28919 , price = "Arena", faction = "Horde" }, --High Warlord's Smasher
			{ itemID = 28923 , price = "Arena", faction = "Horde" }, --High Warlord's Painsaw
			{ itemID = 414326 , price = "Arena", faction = "Horde" }, --High Warlord's Polearm
			{ itemID = 414327 , price = "Arena", faction = "Horde" }, --High Warlord's Claymore
			{ itemID = 28293 , price = "Arena", faction = "Horde" }, --High Warlord's Greatsword
			{ itemID = 28925 , price = "Arena", faction = "Horde" }, --High Warlord's Pummeler
			{ itemID = 28937 , price = "Arena", faction = "Horde" }, --High Warlord's Slicer
			{ itemID = 28926 , price = "Arena", faction = "Horde" }, --High Warlord's Quickblade
			{ itemID = 28920 , price = "Arena", faction = "Horde" }, --High Warlord's Cleaver
			{ itemID = 414343 , price = "Arena", faction = "Horde" }, --High Warlord's Chopper
			{ itemID = 28921 , price = "Arena", faction = "Horde" }, --High Warlord's Hacker
			{ itemID = 28924 , price = "Arena", faction = "Horde" }, --High Warlord's Bonecracker
			{ itemID = 28922 , price = "Arena", faction = "Horde" }, --High Warlord's Left Render
			{ itemID = 28928 , price = "Arena", faction = "Horde" }, --High Warlord's Right Ripper
			{ itemID = 414344 , price = "Arena", faction = "Horde" }, --High Warlord's Mutilator
			{ itemID = 28930 , price = "Arena", faction = "Horde" }, --High Warlord's Shiv
			{ itemID = 28929 , price = "Arena", faction = "Horde" }, --High Warlord's Shanker
			{ itemID = 414332 , price = "Arena", faction = "Horde" }, --High Warlord's Longbow
			{ itemID = 28933 , price = "Arena", faction = "Horde" }, --High Warlord's Heavy Crossbow
			{ itemID = 414348 , price = "Arena", faction = "Horde" }, --High Warlord's Rifle
			{ itemID = 28939 , price = "Arena", faction = "Horde" }, --High Warlord's Shield Wall
			{ itemID = 414347 , price = "Arena", faction = "Horde" }, --High Warlord's War Edge

			{ itemID = 28945 , "Arena", faction = "Alliance" }, --Grand Marshal's Decapitator
			{ itemID = 414304 , "Arena", faction = "Alliance" }, --Grand Marshal's Executioner
			{ itemID = 414305 , "Arena", faction = "Alliance" }, --Grand Marshal's Battlehammer
			{ itemID = 28942 , "Arena", faction = "Alliance" }, --Grand Marshal's Bonegrinder
			{ itemID = 28948 , "Arena", faction = "Alliance" }, --Grand Marshal's Smasher
			{ itemID = 28949 , "Arena", faction = "Alliance" }, --Grand Marshal's Painsaw
			{ itemID = 414323 , "Arena", faction = "Alliance" }, --Grand Marshal's Polearm
			{ itemID = 414324 , "Arena", faction = "Alliance" }, --Grand Marshal's Claymore
			{ itemID = 28943 , "Arena", faction = "Alliance" }, --Grand Marshal's Greatsword
			{ itemID = 28951 , "Arena", faction = "Alliance" }, --Grand Marshal's Pummeler
			{ itemID = 28956 , "Arena", faction = "Alliance" }, --Grand Marshal's Slicer
			{ itemID = 28952 , "Arena", faction = "Alliance" }, --Grand Marshal's Quickblade
			{ itemID = 28944 , "Arena", faction = "Alliance" }, --Grand Marshal's Cleaver
			{ itemID = 414313 , "Arena", faction = "Alliance" }, --Grand Marshal's Chopper
			{ itemID = 28946 , "Arena", faction = "Alliance" }, --Grand Marshal's Hacker
			{ itemID = 28950 , "Arena", faction = "Alliance" }, --Grand Marshal's Bonecracker
			{ itemID = 28947 , "Arena", faction = "Alliance" }, --Grand Marshal's Left Render
			{ itemID = 28953 , "Arena", faction = "Alliance" }, --Grand Marshal's Right Ripper
			{ itemID = 414314 , "Arena", faction = "Alliance" }, --Grand Marshal's Mutilator
			{ itemID = 28955 , "Arena", faction = "Alliance" }, --Grand Marshal's Shiv
			{ itemID = 28954 , "Arena", faction = "Alliance" }, --Grand Marshal's Shanker
			{ itemID = 414302 , "Arena", faction = "Alliance" }, --Grand Marshal's Longbow
			{ itemID = 28960 , "Arena", faction = "Alliance" }, --Grand Marshal's Heavy Crossbow
			{ itemID = 414318 , "Arena", faction = "Alliance" }, --Grand Marshal's Rifle
			{ itemID = 414317 , "Arena", faction = "Alliance" }, --Grand Marshal's War Edge
			{ itemID = 28940 , "Arena", faction = "Alliance" }, --Grand Marshal's Shield Wall
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 28298, price = "Arena" }, --Gladiator's Decapitator
			{ itemID = 509122, price = "Arena" }, --Gladiator's Executioner
			{ itemID = 509130, price = "Arena" }, --Gladiator's Battlehammer
			{ itemID = 28299, price = "Arena" }, --Gladiator's Bonegrinder
			{ itemID = 509134, price = "Arena" }, --Gladiator's Smasher
			{ itemID = 28300, price = "Arena" }, --Gladiator's Painsaw
			{ itemID = 414329, price = "Arena" }, --Gladiator's Polearm
			{ itemID = 414352, price = "Arena" }, --Gladiator's Claymore
			{ itemID = 24550, price = "Arena" }, --Gladiator's Greatsword
			{ itemID = 28305, price = "Arena" }, --Gladiator's Pummeler
			{ itemID = 28295, price = "Arena" }, --Gladiator's Slicer
			{ itemID = 28307, price = "Arena" }, --Gladiator's Quickblade
			{ itemID = 28308, price = "Arena" }, --Gladiator's Cleaver
			{ itemID = 509123, price = "Arena" }, --Gladiator's Chopper
			{ itemID = 28309, price = "Arena" }, --Gladiator's Hacker
			{ itemID = 28302, price = "Arena" }, --Gladiator's Bonecracker
			{ itemID = 28314, price = "Arena" }, --Gladiator's Left Render
			{ itemID = 28313, price = "Arena" }, --Gladiator's Right Ripper
			{ itemID = 414360, price = "Arena" }, --Gladiator's Mutilator
			{ itemID = 28310, price = "Arena" }, --Gladiator's Shiv
			{ itemID = 28312, price = "Arena" }, --Gladiator's Shanker
			{ itemID = 509126, price = "Arena" }, --Gladiator's Longbow
			{ itemID = 28294, price = "Arena" }, --Gladiator's Heavy Crossbow
			{ itemID = 509127, price = "Arena" }, --Gladiator's Rifle
			{ itemID = 28319, price = "Arena" }, --Gladiator's War Edge
			{ itemID = 28358, price = "Arena" }, --Gladiator's Shield Wall
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 414333 , price = "Arena", faction = "Horde" }, --High Warlord's Magebow
			{ itemID = 414349 , price = "Arena", faction = "Horde" }, --High Warlord's Piercing Touch
			{ itemID = 414350 , price = "Arena", faction = "Horde" }, --High Warlord's Touch of Defeat
			{ itemID = 414330 , price = "Arena", faction = "Horde" }, --High Warlord's Barrier
			{ itemID = 414331 , price = "Arena", faction = "Horde" }, --High Warlord's Redoubt
			{ itemID = 28938 , price = "Arena", faction = "Horde" }, --High Warlord's Endgame
			{ itemID = 414345 , price = "Arena", faction = "Horde" }, --High Warlord's Grimoire
			{ itemID = 414346 , price = "Arena", faction = "Horde" }, --High Warlord's Reprieve
			{ itemID = 414351 , price = "Arena", faction = "Horde" }, --High Warlord's Libram of Fortitude

			{ itemID = 414303 , "Arena", faction = "Alliance" }, --Grand Marshal's Magebow
			{ itemID = 414319 , "Arena", faction = "Alliance" }, --Grand Marshal's Piercing Touch
			{ itemID = 414320 , "Arena", faction = "Alliance" }, --Grand Marshal's Touch of Defeat
			{ itemID = 414300 , "Arena", faction = "Alliance" }, --Grand Marshal's Barrier
			{ itemID = 414301 , "Arena", faction = "Alliance" }, --Grand Marshal's Redoubt
			{ itemID = 28941 , "Arena", faction = "Alliance" }, --Grand Marshal's Endgame
			{ itemID = 414315 , "Arena", faction = "Alliance" }, --Grand Marshal's Grimoire
			{ itemID = 414316 , "Arena", faction = "Alliance" }, --Grand Marshal's Reprieve
			{ itemID = 414321 , "Arena", faction = "Alliance" }, --Grand Marshal's Libram of Fortitude
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 509128, price = "Arena" }, --Gladiator's Battle Staff
			{ itemID = 509133, price = "Arena" }, --Gladiator's Guardian Staff
			{ itemID = 24557, price = "Arena" }, --Gladiator's War Staff
			{ itemID = 509129, price = "Arena" }, --Gladiator's Battlemace
			{ itemID = 32450, price = "Arena" }, --Gladiator's Gavel
			{ itemID = 509132, price = "Arena" }, --Gladiator's Guardian Mace
			{ itemID = 32451, price = "Arena" }, --Gladiator's Salvation
			{ itemID = 509136, price = "Arena" }, --Gladiator's Battleslicer
			{ itemID = 28297, price = "Arena" }, --Gladiator's Spellblade
			{ itemID = 414328, price = "Arena" }, --Gladiator's Dagger
			{ itemID = 509137, price = "Arena" }, --Gladiator's Magebow
			{ itemID = 509125, price = "Arena" }, --Gladiator's Piercing Touch
			{ itemID = 28320, price = "Arena" }, --Gladiator's Touch of Defeat
			{ itemID = 509103, price = "Arena" }, --Gladiator's Barrier
			{ itemID = 509117, price = "Arena" }, --Gladiator's Redoubt
			{ itemID = 28346, price = "Arena" }, --Gladiator's Endgame
			{ itemID = 509124, price = "Arena" }, --Gladiator's Grimoire
			{ itemID = 32452, price = "Arena" }, --Gladiator's Reprieve
			{ itemID = 509140, price = "Arena" }, --Gladiator's Libram of Fortitude
		},
		{
			{ itemID = 28402, price = "Arena" }, --General's Dreadweave Stalkers
			{ itemID = 28404, price = "Arena" }, --General's Dreadweave Belt
			{ itemID = 28405, price = "Arena" }, --General's Dreadweave Cuffs
			{ itemID = 28409, price = "Arena" }, --General's Silk Belt
			{ itemID = 28410, price = "Arena" }, --General's Silk Footguards
			{ itemID = 28411, price = "Arena" }, --General's Silk Cuffs
			{ itemID = 32974, price = "Arena" }, --General's Mooncloth Belt
			{ itemID = 32975, price = "Arena" }, --General's Mooncloth Slippers
			{ itemID = 32973, price = "Arena" }, --General's Mooncloth Cuffs
		},
		{
			{ itemID = 31594, price = "Arena" }, --General's Kodohide Belt
			{ itemID = 31595, price = "Arena" }, --General's Kodohide Boots
			{ itemID = 31598, price = "Arena" }, --General's Kodohide Bracers
			{ itemID = 28422, price = "Arena" }, --General's Leather Boots
			{ itemID = 28423, price = "Arena" }, --General's Leather Belt
			{ itemID = 28424, price = "Arena" }, --General's Leather Bracers
			{ itemID = 28443, price = "Arena" }, --General's Dragonhide Belt
			{ itemID = 28444, price = "Arena" }, --General's Dragonhide Boots
			{ itemID = 28445, price = "Arena" }, --General's Dragonhide Bracers
			{ itemID = 28446, price = "Arena" }, --General's Wyrmhide Belt
			{ itemID = 28447, price = "Arena" }, --General's Wyrmhide Boots
			{ itemID = 28448, price = "Arena" }, --General's Wyrmhide Bracers
		},
		{
			{ itemID = 28449, price = "Arena" }, --General's Chain Sabatons
			{ itemID = 28450, price = "Arena" }, --General's Chain Girdle
			{ itemID = 28451, price = "Arena" }, --General's Chain Bracers
			{ itemID = 28629, price = "Arena" }, --General's Linked Girdle
			{ itemID = 28630, price = "Arena" }, --General's Linked Sabatons
			{ itemID = 28605, price = "Arena" }, --General's Linked Bracers
			{ itemID = 28639, price = "Arena" }, --General's Mail Girdle
			{ itemID = 28640, price = "Arena" }, --General's Mail Sabatons
			{ itemID = 28638, price = "Arena" }, --General's Mail Bracers
			{ itemID = 32992, price = "Arena" }, --General's Ringmail Girdle
			{ itemID = 32993, price = "Arena" }, --General's Ringmail Sabatons
			{ itemID = 32991, price = "Arena" }, --General's Ringmail Bracers
		},
		{
			{ itemID = 28643, price = "Arena" }, --General's Lamellar Bracers
			{ itemID = 28641, price = "Arena" }, --General's Lamellar Belt
			{ itemID = 28642, price = "Arena" }, --General's Lamellar Greaves
			{ itemID = 28383, price = "Arena" }, --General's Plate Greaves
			{ itemID = 28385, price = "Arena" }, --General's Plate Belt
			{ itemID = 28381, price = "Arena" }, --General's Plate Bracers
			{ itemID = 32982, price = "Arena" }, --General's Ornamented Belt
			{ itemID = 32984, price = "Arena" }, --General's Ornamented Greaves
			{ itemID = 32983, price = "Arena" }, --General's Ornamented Bracers
			{ itemID = 28644, price = "Arena" }, --General's Scaled Belt
			{ itemID = 28645, price = "Arena" }, --General's Scaled Greaves
			{ itemID = 28646, price = "Arena" }, --General's Scaled Bracers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28807, price = "Arena", faction = "Horde" }, --High Warlord's Chain Helm
			{ itemID = 28809, price = "Arena", faction = "Horde" }, --High Warlord's Chain Spaulders
			{ itemID = 28805, price = "Arena", faction = "Horde" }, --High Warlord's Chain Armor
			{ itemID = 28808, price = "Arena", faction = "Horde" }, --High Warlord's Chain Leggings
			{ itemID = 28806, price = "Arena", faction = "Horde" }, --High Warlord's Chain Gauntlets
			
			{ itemID = 28615, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Helm
			{ itemID = 28617, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Spaulders
			{ itemID = 28613, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Armor
			{ itemID = 28616, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Leggings
			{ itemID = 28614, "Arena", faction = "Alliance" }, --Grand Marshal's Chain Gauntlets
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 28331, price = "Arena" }, --Gladiator's Chain Helm
			{ itemID = 28333, price = "Arena" }, --Gladiator's Chain Spaulders
			{ itemID = 28334, price = "Arena" }, --Gladiator's Chain Armor
			{ itemID = 28335, price = "Arena" }, --Gladiator's Chain Gauntlets
			{ itemID = 28332, price = "Arena" }, --Gladiator's Chain Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28867, price = "Arena", faction = "Horde" }, --High Warlord's Silk Cowl
			{ itemID = 28866, price = "Arena", faction = "Horde" }, --High Warlord's Silk Amice
			{ itemID = 28870, price = "Arena", faction = "Horde" }, --High Warlord's Silk Trousers
			{ itemID = 28868, price = "Arena", faction = "Horde" }, --High Warlord's Silk Handguards
			{ itemID = 28869, price = "Arena", faction = "Horde" }, --High Warlord's Silk Raiment

			{ itemID = 28715, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Cowl
			{ itemID = 28714, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Amice
			{ itemID = 28718, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Trousers
			{ itemID = 28716, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Handguards
			{ itemID = 28717, "Arena", faction = "Alliance" }, --Grand Marshal's Silk Raiment
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 25855, price = "Arena" }, --Gladiator's Silk Cowl
			{ itemID = 25854, price = "Arena" }, --Gladiator's Silk Amice
			{ itemID = 25856, price = "Arena" }, --Gladiator's Silk Raiment
			{ itemID = 25857, price = "Arena" }, --Gladiator's Silk Handguards
			{ itemID = 25858, price = "Arena" }, --Gladiator's Silk Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28837, price = "Arena", faction = "Horde" }, --High Warlord's Leather Helm
			{ itemID = 28839, price = "Arena", faction = "Horde" }, --High Warlord's Leather Spaulders
			{ itemID = 28840, price = "Arena", faction = "Horde" }, --High Warlord's Leather Tunic
			{ itemID = 28838, price = "Arena", faction = "Horde" }, --High Warlord's Leather Legguards
			{ itemID = 28836, price = "Arena", faction = "Horde" }, --High Warlord's Leather Gloves

			{ itemID = 28685, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Helm
			{ itemID = 28687, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Spaulders
			{ itemID = 28688, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Tunic
			{ itemID = 28686, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Legguards
			{ itemID = 28684, "Arena", faction = "Alliance" }, --Grand Marshal's Leather Gloves
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 25830, price = "Arena" }, --Gladiator's Leather Helm
			{ itemID = 25832, price = "Arena" }, --Gladiator's Leather Spaulders
			{ itemID = 25831, price = "Arena" }, --Gladiator's Leather Tunic
			{ itemID = 25834, price = "Arena" }, --Gladiator's Leather Gloves
			{ itemID = 25833, price = "Arena" }, --Gladiator's Leather Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28853, price = "Arena", faction = "Horde" }, --High Warlord's Plate Helm
			{ itemID = 28855, price = "Arena", faction = "Horde" }, --High Warlord's Plate Shoulders
			{ itemID = 28851, price = "Arena", faction = "Horde" }, --High Warlord's Plate Chestpiece
			{ itemID = 28854, price = "Arena", faction = "Horde" }, --High Warlord's Plate Legguards
			{ itemID = 28852, price = "Arena", faction = "Horde" }, --High Warlord's Plate Gauntlets

			{ itemID = 28701, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Helm
			{ itemID = 28703, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Shoulders
			{ itemID = 28699, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Chestpiece
			{ itemID = 28702, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Legguards
			{ itemID = 28700, "Arena", faction = "Alliance" }, --Grand Marshal's Plate Gauntlets
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 24545, price = "Arena" }, --Gladiator's Plate Helm
			{ itemID = 24546, price = "Arena" }, --Gladiator's Plate Shoulders
			{ itemID = 24544, price = "Arena" }, --Gladiator's Plate Chestpiece
			{ itemID = 24549, price = "Arena" }, --Gladiator's Plate Gauntlets
			{ itemID = 24547, price = "Arena" }, --Gladiator's Plate Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28818, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Hood
			{ itemID = 28820, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Mantle
			{ itemID = 28819, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Leggings
			{ itemID = 28817, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Gloves
			{ itemID = 28821, price = "Arena", faction = "Horde" }, --High Warlord's Dreadweave Robe

			{ itemID = 28625, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Hood
			{ itemID = 28627, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Mantle
			{ itemID = 28626, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Leggings
			{ itemID = 28624, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Gloves
			{ itemID = 28628, "Arena", faction = "Alliance" }, --Grand Marshal's Dreadweave Robe
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 24553, price = "Arena" }, --Gladiator's Dreadweave Hood
			{ itemID = 24554, price = "Arena" }, --Gladiator's Dreadweave Mantle
			{ itemID = 24552, price = "Arena" }, --Gladiator's Dreadweave Robe
			{ itemID = 24556, price = "Arena" }, --Gladiator's Dreadweave Gloves
			{ itemID = 24555, price = "Arena" }, --Gladiator's Dreadweave Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 30187, price = "Arena" }, --Gladiator's Felweave Cowl
			{ itemID = 30186, price = "Arena" }, --Gladiator's Felweave Amice
			{ itemID = 30200, price = "Arena" }, --Gladiator's Felweave Raiment
			{ itemID = 30188, price = "Arena" }, --Gladiator's Felweave Handguards
			{ itemID = 30201, price = "Arena" }, --Gladiator's Felweave Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28812, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Helm
			{ itemID = 28814, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Spaulders
			{ itemID = 28815, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Tunic
			{ itemID = 28813, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Legguards
			{ itemID = 28811, price = "Arena", faction = "Horde" }, --High Warlord's Dragonhide Gloves

			{ itemID = 28619, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Helm
			{ itemID = 28622, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Spaulders
			{ itemID = 28623, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Tunic
			{ itemID = 28620, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Legguards
			{ itemID = 28618, "Arena", faction = "Alliance" }, --Grand Marshal's Dragonhide Gloves
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 28127, price = "Arena" }, --Gladiator's Dragonhide Helm
			{ itemID = 28129, price = "Arena" }, --Gladiator's Dragonhide Spaulders
			{ itemID = 28130, price = "Arena" }, --Gladiator's Dragonhide Tunic
			{ itemID = 28126, price = "Arena" }, --Gladiator's Dragonhide Gloves
			{ itemID = 28128, price = "Arena" }, --Gladiator's Dragonhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28872, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Helm
			{ itemID = 28874, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Spaulders
			{ itemID = 28875, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Tunic
			{ itemID = 28873, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Legguards
			{ itemID = 28871, price = "Arena", faction = "Horde" }, --High Warlord's Wyrmhide Gloves

			{ itemID = 28720, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Helm
			{ itemID = 28722, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Spaulders
			{ itemID = 28723, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Tunic
			{ itemID = 28721, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Legguards
			{ itemID = 28719, "Arena", faction = "Alliance" }, --Grand Marshal's Wyrmhide Gloves
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 28137, price = "Arena" }, --Gladiator's Wyrmhide Helm
			{ itemID = 28139, price = "Arena" }, --Gladiator's Wyrmhide Spaulders
			{ itemID = 28140, price = "Arena" }, --Gladiator's Wyrmhide Tunic
			{ itemID = 28136, price = "Arena" }, --Gladiator's Wyrmhide Gloves
			{ itemID = 28138, price = "Arena" }, --Gladiator's Wyrmhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31585, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Helm
			{ itemID = 31587, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Spaulders
			{ itemID = 31588, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Tunic
			{ itemID = 31586, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Legguards
			{ itemID = 31584, price = "Arena", faction = "Horde" }, --High Warlord's Kodohide Gloves

			{ itemID = 31590, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Helm
			{ itemID = 31592, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Spaulders
			{ itemID = 31593, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Tunic
			{ itemID = 31591, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Legguards
			{ itemID = 31589, "Arena", faction = "Alliance" }, --Grand Marshal's Kodohide Gloves
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31376, price = "Arena" }, --Gladiator's Kodohide Helm
			{ itemID = 31378, price = "Arena" }, --Gladiator's Kodohide Spaulders
			{ itemID = 31379, price = "Arena" }, --Gladiator's Kodohide Tunic
			{ itemID = 31375, price = "Arena" }, --Gladiator's Kodohide Gloves
			{ itemID = 31377, price = "Arena" }, --Gladiator's Kodohide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28843, price = "Arena", faction = "Horde" }, --High Warlord's Linked Helm
			{ itemID = 28845, price = "Arena", faction = "Horde" }, --High Warlord's Linked Spaulders
			{ itemID = 28841, price = "Arena", faction = "Horde" }, --High Warlord's Linked Armor
			{ itemID = 28844, price = "Arena", faction = "Horde" }, --High Warlord's Linked Leggings
			{ itemID = 28842, price = "Arena", faction = "Horde" }, --High Warlord's Linked Gauntlets

			{ itemID = 28691, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Helm
			{ itemID = 28693, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Spaulders
			{ itemID = 28689, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Armor
			{ itemID = 28692, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Leggings
			{ itemID = 28690, "Arena", faction = "Alliance" }, --Grand Marshal's Linked Gauntlets
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 25998, price = "Arena" }, --Gladiator's Linked Helm
			{ itemID = 25999, price = "Arena" }, --Gladiator's Linked Spaulders
			{ itemID = 25997, price = "Arena" }, --Gladiator's Linked Armor
			{ itemID = 26000, price = "Arena" }, --Gladiator's Linked Gauntlets
			{ itemID = 26001, price = "Arena" }, --Gladiator's Linked Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28848, price = "Arena", faction = "Horde" }, --High Warlord's Mail Helm
			{ itemID = 28850, price = "Arena", faction = "Horde" }, --High Warlord's Mail Spaulders
			{ itemID = 28846, price = "Arena", faction = "Horde" }, --High Warlord's Mail Armor
			{ itemID = 28849, price = "Arena", faction = "Horde" }, --High Warlord's Mail Leggings
			{ itemID = 28847, price = "Arena", faction = "Horde" }, --High Warlord's Mail Gauntlets

			{ itemID = 28696, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Helm
			{ itemID = 28698, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Spaulders
			{ itemID = 28694, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Armor
			{ itemID = 28697, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Leggings
			{ itemID = 28695, "Arena", faction = "Alliance" }, --Grand Marshal's Mail Gauntlets
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 27471, price = "Arena" }, --Gladiator's Mail Helm
			{ itemID = 27473, price = "Arena" }, --Gladiator's Mail Spaulders
			{ itemID = 27469, price = "Arena" }, --Gladiator's Mail Armor
			{ itemID = 27470, price = "Arena" }, --Gladiator's Mail Gauntlets
			{ itemID = 27472, price = "Arena" }, --Gladiator's Mail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31648, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Helm
			{ itemID = 31650, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Spaulders
			{ itemID = 31646, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Armor
			{ itemID = 31649, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Leggings
			{ itemID = 31647, price = "Arena", faction = "Horde" }, --High Warlord's Ringmail Gauntlets

			{ itemID = 31642, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Helm
			{ itemID = 31644, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Spaulders
			{ itemID = 31640, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Armor
			{ itemID = 31643, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Leggings
			{ itemID = 31641, "Arena", faction = "Alliance" }, --Grand Marshal's Ringmail Gauntlets
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31400, price = "Arena" }, --Gladiator's Ringmail Helm
			{ itemID = 31407, price = "Arena" }, --Gladiator's Ringmail Spaulders
			{ itemID = 31396, price = "Arena" }, --Gladiator's Ringmail Armor
			{ itemID = 31397, price = "Arena" }, --Gladiator's Ringmail Gauntlets
			{ itemID = 31406, price = "Arena" }, --Gladiator's Ringmail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 27704, price = "Arena" }, --Gladiator's Lamellar Helm
			{ itemID = 27706, price = "Arena" }, --Gladiator's Lamellar Shoulders
			{ itemID = 27702, price = "Arena" }, --Gladiator's Lamellar Chestpiece
			{ itemID = 27703, price = "Arena" }, --Gladiator's Lamellar Gauntlets
			{ itemID = 27705, price = "Arena" }, --Gladiator's Lamellar Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28863, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Helm
			{ itemID = 28865, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Shoulders
			{ itemID = 28861, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Chestpiece
			{ itemID = 28864, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Legguards
			{ itemID = 28862, price = "Arena", faction = "Horde" }, --High Warlord's Scaled Gauntlets

			{ itemID = 28711, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Helm
			{ itemID = 28713, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Shoulders
			{ itemID = 28709, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Chestpiece
			{ itemID = 28712, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Legguards
			{ itemID = 28710, "Arena", faction = "Alliance" }, --Grand Marshal's Scaled Gauntlets
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 27881, price = "Arena" }, --Gladiator's Scaled Helm
			{ itemID = 27883, price = "Arena" }, --Gladiator's Scaled Shoulders
			{ itemID = 27879, price = "Arena" }, --Gladiator's Scaled Chestpiece
			{ itemID = 27880, price = "Arena" }, --Gladiator's Scaled Gauntlets
			{ itemID = 27882, price = "Arena" }, --Gladiator's Scaled Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31637, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Headcover
			{ itemID = 31639, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Spaulders
			{ itemID = 31635, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Chestguard
			{ itemID = 31638, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Legplates
			{ itemID = 31636, price = "Arena", faction = "Horde" }, --High Warlord's Ornamented Gloves

			{ itemID = 31632, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Headcover
			{ itemID = 31634, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Spaulders
			{ itemID = 31630, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Chestguard
			{ itemID = 31633, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Legplates
			{ itemID = 31631, "Arena", faction = "Alliance" }, --Grand Marshal's Ornamented Gloves
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31616, price = "Arena" }, --Gladiator's Ornamented Headcover
			{ itemID = 31619, price = "Arena" }, --Gladiator's Ornamented Spaulders
			{ itemID = 31613, price = "Arena" }, --Gladiator's Ornamented Chestguard
			{ itemID = 31614, price = "Arena" }, --Gladiator's Ornamented Gloves
			{ itemID = 31618, price = "Arena" }, --Gladiator's Ornamented Legplates
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28857, price = "Arena", faction = "Horde" }, --High Warlord's Satin Hood
			{ itemID = 28859, price = "Arena", faction = "Horde" }, --High Warlord's Satin Mantle
			{ itemID = 28858, price = "Arena", faction = "Horde" }, --High Warlord's Satin Leggings
			{ itemID = 28856, price = "Arena", faction = "Horde" }, --High Warlord's Satin Gloves
			{ itemID = 28860, price = "Arena", faction = "Horde" }, --High Warlord's Satin Robe

			{ itemID = 28705, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Hood
			{ itemID = 28707, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Mantle
			{ itemID = 28706, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Leggings
			{ itemID = 28704, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Gloves
			{ itemID = 28708, "Arena", faction = "Alliance" }, --Grand Marshal's Satin Robe
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 27708, price = "Arena" }, --Gladiator's Satin Hood
			{ itemID = 27710, price = "Arena" }, --Gladiator's Satin Mantle
			{ itemID = 27711, price = "Arena" }, --Gladiator's Satin Robe
			{ itemID = 27707, price = "Arena" }, --Gladiator's Satin Gloves
			{ itemID = 27709, price = "Arena" }, --Gladiator's Satin Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31626, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Hood
			{ itemID = 31628, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Mantle
			{ itemID = 31627, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Leggings
			{ itemID = 31621, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Gloves
			{ itemID = 31629, price = "Arena", faction = "Horde" }, --High Warlord's Mooncloth Robe
			
			{ itemID = 31622, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Hood
			{ itemID = 31624, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Mantle
			{ itemID = 31623, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Leggings
			{ itemID = 31620, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Gloves
			{ itemID = 31625, "Arena", faction = "Alliance" }, --Grand Marshal's Mooncloth Robe
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31410, price = "Arena" }, --Gladiator's Mooncloth Hood
			{ itemID = 31412, price = "Arena" }, --Gladiator's Mooncloth Mantle
			{ itemID = 31413, price = "Arena" }, --Gladiator's Mooncloth Robe
			{ itemID = 31409, price = "Arena" }, --Gladiator's Mooncloth Gloves
			{ itemID = 31411, price = "Arena" }, --Gladiator's Mooncloth Leggings
		},
	},

	--Arena Season 2
	["Pvp70Season2"] = {
		{
			{ itemID = 278419, price = "Arena"  }, --Veteran's Cloak of Conquest
			{ itemID = 278422, price = "Arena"  }, --Veteran's Cloak of Cruelty
			{ itemID = 278418, price = "Arena"  }, --Veteran's Cloak of Power
			{ itemID = 278417, price = "Arena"  }, --Veteran's Cloak of Salvation
			{ itemID = 278420, price = "Arena"  }, --Veteran's Cloak of Triumph
			{ itemID = 278421, price = "Arena"  }, --Veteran's Cloak of Tyranny
		},
		{
			{ itemID = 278414, price = "Arena"  }, --Veteran's Band of Accuracy
			{ itemID = 278410, price = "Arena"  }, --Veteran's Band of Conquest
			{ itemID = 278413, price = "Arena"  }, --Veteran's Band of Cruelty
			{ itemID = 33056, price = "Arena"  }, --Veteran's Band of Dominance
			{ itemID = 278412, price = "Arena"  }, --Veteran's Band of Precision
			{ itemID = 278415, price = "Arena"  }, --Veteran's Band of Reprieve
			{ itemID = 33064, price = "Arena"  }, --Veteran's Band of Salvation
			{ itemID = 278416, price = "Arena"  }, --Veteran's Band of Subjugation
			{ itemID = 33057, price = "Arena"  }, --Veteran's Band of Triumph
			{ itemID = 278411, price = "Arena"  }, --Veteran's Band of Tyranny	   
		},
		{
			{ itemID = 33067, price = "Arena"  }, --Veteran's Pendant of Conquest
			{ itemID = 278409, price = "Arena"  }, --Veteran's Pendant of Cruelty
			{ itemID = 33065, price = "Arena"  }, --Veteran's Pendant of Dominance
			{ itemID = 278407, price = "Arena"  }, --Veteran's Pendant of Reprieve
			{ itemID = 33068, price = "Arena"  }, --Veteran's Pendant of Salvation
			{ itemID = 278408, price = "Arena"  }, --Veteran's Pendant of Subjugation
			{ itemID = 33066, price = "Arena"  }, --Veteran's Pendant of Triumph
			{ itemID = 278406, price = "Arena"  }, --Veteran's Pendant of Tyranny
		},
		{
			{ itemID = 205062, price = "5000 #faction#" }, --Resplendent Fire Agate
			{ itemID = 205064, price = "5000 #faction#" }, --Lucent Fire Agate
			{ itemID = 205066, price = "5000 #faction#" }, --Empowered Fire Agate
			{ itemID = 205068, price = "5000 #faction#" }, --Durable Fire Agate
			{ itemID = 205070, price = "5000 #faction#" }, --Piercing Idocrase
			{ itemID = 205072, price = "5000 #faction#" }, --Tense Idocrase
			{ itemID = 205074, price = "5000 #faction#" }, --Mysterious Heliotrope
			{ itemID = 1505062, price = "100 #arena#" }, --Resplendent Fire Opal
			{ itemID = 1505064, price = "100 #arena#" }, --Lucent Fire Opal
			{ itemID = 1505066, price = "100 #arena#" }, --Empowered Fire Opal
			{ itemID = 1505068, price = "100 #arena#" }, --Durable Fire Opal
			{ itemID = 1505070, price = "100 #arena#" }, --Piercing Evergem
			{ itemID = 1505072, price = "100 #arena#" }, --Tense Evergem
			{ itemID = 1505074, price = "100 #arena#" }, --Mysterious Shadowgem
			{ itemID = 449572, price = "23000 #faction#" }, --Superior Inscription of the Archmage
			{ itemID = 449573, price = "23000 #faction#" }, --Superior Inscription of the Brawler
			{ itemID = 449576, price = "25000 #faction#" }, --Arcanum of the Archmage
			{ itemID = 449577, price = "25000 #faction#" }, --Arcanum of the Brawler
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28298, price = "Arena" }, --Gladiator's Decapitator
			{ itemID = 509122, price = "Arena" }, --Gladiator's Executioner
			{ itemID = 509130, price = "Arena" }, --Gladiator's Battlehammer
			{ itemID = 28299, price = "Arena" }, --Gladiator's Bonegrinder
			{ itemID = 509134, price = "Arena" }, --Gladiator's Smasher
			{ itemID = 28300, price = "Arena" }, --Gladiator's Painsaw
			{ itemID = 414329, price = "Arena" }, --Gladiator's Polearm
			{ itemID = 414352, price = "Arena" }, --Gladiator's Claymore
			{ itemID = 24550, price = "Arena" }, --Gladiator's Greatsword
			{ itemID = 28305, price = "Arena" }, --Gladiator's Pummeler
			{ itemID = 28295, price = "Arena" }, --Gladiator's Slicer
			{ itemID = 28307, price = "Arena" }, --Gladiator's Quickblade
			{ itemID = 28308, price = "Arena" }, --Gladiator's Cleaver
			{ itemID = 509123, price = "Arena" }, --Gladiator's Chopper
			{ itemID = 28309, price = "Arena" }, --Gladiator's Hacker
			{ itemID = 28302, price = "Arena" }, --Gladiator's Bonecracker
			{ itemID = 28314, price = "Arena" }, --Gladiator's Left Render
			{ itemID = 28313, price = "Arena" }, --Gladiator's Right Ripper
			{ itemID = 414360, price = "Arena" }, --Gladiator's Mutilator
			{ itemID = 28310, price = "Arena" }, --Gladiator's Shiv
			{ itemID = 28312, price = "Arena" }, --Gladiator's Shanker
			{ itemID = 509126, price = "Arena" }, --Gladiator's Longbow
			{ itemID = 28294, price = "Arena" }, --Gladiator's Heavy Crossbow
			{ itemID = 509127, price = "Arena" }, --Gladiator's Rifle
			{ itemID = 28319, price = "Arena" }, --Gladiator's War Edge
			{ itemID = 28358, price = "Arena" }, --Gladiator's Shield Wall
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 31966, price = "Arena" }, --Merciless Gladiator's Decapitator
			{ itemID = 131966, price = "Arena" }, --Merciless Gladiator's Executioner
			{ itemID = 509090, price = "Arena" }, --Merciless Gladiator's Battlehammer
			{ itemID = 31959, price = "Arena" }, --Merciless Gladiator's Bonegrinder
			{ itemID = 509094, price = "Arena" }, --Merciless Gladiator's Smasher
			{ itemID = 32025, price = "Arena" }, --Merciless Gladiator's Painsaw
			{ itemID = 414354, price = "Arena" }, --Merciless Gladiator's Polearm
			{ itemID = 414355, price = "Arena" }, --Merciless Gladiator's Claymore
			{ itemID = 31984, price = "Arena" }, --Merciless Gladiator's Greatsword
			{ itemID = 32026, price = "Arena" }, --Merciless Gladiator's Pummeler
			{ itemID = 32052, price = "Arena" }, --Merciless Gladiator's Slicer
			{ itemID = 32027, price = "Arena" }, --Merciless Gladiator's Quickblade
			{ itemID = 509142, price = "Arena" }, --Merciless Gladiator's Cleaver
			{ itemID = 509083, price = "Arena" }, --Merciless Gladiator's Chopper
			{ itemID = 31985, price = "Arena" }, --Merciless Gladiator's Hacker
			{ itemID = 31958, price = "Arena" }, --Merciless Gladiator's Bonecracker
			{ itemID = 32003, price = "Arena" }, --Merciless Gladiator's Left Ripper
			{ itemID = 32028, price = "Arena" }, --Merciless Gladiator's Right Ripper
			{ itemID = 414369, price = "Arena" }, --Merciless Gladiator's Mutilator
			{ itemID = 32046, price = "Arena" }, --Merciless Gladiator's Shiv
			{ itemID = 32044, price = "Arena" }, --Merciless Gladiator's Shanker
			{ itemID = 509086, price = "Arena" }, --Merciless Gladiator's Longbow
			{ itemID = 31986, price = "Arena" }, --Merciless Gladiator's Heavy Crossbow
			{ itemID = 509087, price = "Arena" }, --Merciless Gladiator's Rifle
			{ itemID = 509081, price = "Arena" }, --Merciless Gladiator's War Edge
			{ itemID = 32045, price = "Arena" }, --Merciless Gladiator's Shield Wall
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 509128, price = "Arena" }, --Gladiator's Battle Staff
			{ itemID = 509133, price = "Arena" }, --Gladiator's Guardian Staff
			{ itemID = 24557, price = "Arena" }, --Gladiator's War Staff
			{ itemID = 509129, price = "Arena" }, --Gladiator's Battlemace
			{ itemID = 32450, price = "Arena" }, --Gladiator's Gavel
			{ itemID = 509132, price = "Arena" }, --Gladiator's Guardian Mace
			{ itemID = 32451, price = "Arena" }, --Gladiator's Salvation
			{ itemID = 509136, price = "Arena" }, --Gladiator's Battleslicer
			{ itemID = 28297, price = "Arena" }, --Gladiator's Spellblade
			{ itemID = 414328, price = "Arena" }, --Gladiator's Dagger
			{ itemID = 509137, price = "Arena" }, --Gladiator's Magebow
			{ itemID = 509125, price = "Arena" }, --Gladiator's Piercing Touch
			{ itemID = 28320, price = "Arena" }, --Gladiator's Touch of Defeat
			{ itemID = 509103, price = "Arena" }, --Gladiator's Barrier
			{ itemID = 509117, price = "Arena" }, --Gladiator's Redoubt
			{ itemID = 28346, price = "Arena" }, --Gladiator's Endgame
			{ itemID = 509124, price = "Arena" }, --Gladiator's Grimoire
			{ itemID = 32452, price = "Arena" }, --Gladiator's Reprieve
			{ itemID = 509140, price = "Arena" }, --Gladiator's Libram of Fortitude
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 509088, price = "Arena" }, --Merciless Gladiator's Battle Staff
			{ itemID = 509093, price = "Arena" }, --Merciless Gladiator's Guardian Staff
			{ itemID = 32055, price = "Arena" }, --Merciless Gladiator's War Staff
			{ itemID = 509089, price = "Arena" }, --Merciless Gladiator's Battlemace
			{ itemID = 32963, price = "Arena" }, --Merciless Gladiator's Gavel
			{ itemID = 509092, price = "Arena" }, --Merciless Gladiator's Guardian Mace
			{ itemID = 32964, price = "Arena" }, --Merciless Gladiator's Salvation
			{ itemID = 509096, price = "Arena" }, --Merciless Gladiator's Battleslicer
			{ itemID = 509098, price = "Arena" }, --Merciless Gladiator's Spellblade
			{ itemID = 414353, price = "Arena" }, --Merciless Gladiator's Dagger
			{ itemID = 509097, price = "Arena" }, --Merciless Gladiator's Magebow
			{ itemID = 509085, price = "Arena" }, --Merciless Gladiator's Piercing Touch
			{ itemID = 509144, price = "Arena" }, --Merciless Gladiator's Touch of Defeat
			{ itemID = 33313, price = "Arena" }, --Merciless Gladiator's Barrier
			{ itemID = 33309, price = "Arena" }, --Merciless Gladiator's Redoubt
			{ itemID = 31978, price = "Arena" }, --Merciless Gladiator's Endgame
			{ itemID = 509084, price = "Arena" }, --Merciless Gladiator's Grimoire
			{ itemID = 32961, price = "Arena" }, --Merciless Gladiator's Reprieve
			{ itemID = 414370, price = "Arena" }, --Merciless Gladiator's Libram of Fortitude
		},
        {
			{ itemID = 32811, price = "Arena" }, --Veteran's Dreadweave Cuffs
			{ itemID = 32799, price = "Arena" }, --Veteran's Dreadweave Belt
			{ itemID = 32787, price = "Arena" }, --Veteran's Dreadweave Stalkers
			{ itemID = 32820, price = "Arena" }, --Veteran's Silk Cuffs
			{ itemID = 32807, price = "Arena" }, --Veteran's Silk Belt
			{ itemID = 32795, price = "Arena" }, --Veteran's Silk Footguards
			{ itemID = 32980, price = "Arena" }, --Veteran's Mooncloth Cuffs
			{ itemID = 32979, price = "Arena" }, --Veteran's Mooncloth Belt
			{ itemID = 32981, price = "Arena" }, --Veteran's Mooncloth Slippers
		},
        {
			{ itemID = 32812, price = "Arena" }, --Veteran's Kodohide Bracers
			{ itemID = 32800, price = "Arena" }, --Veteran's Kodohide Belt
			{ itemID = 32788, price = "Arena" }, --Veteran's Kodohide Boots
			{ itemID = 32814, price = "Arena" }, --Veteran's Leather Bracers
			{ itemID = 32802, price = "Arena" }, --Veteran's Leather Belt
			{ itemID = 32790, price = "Arena" }, --Veteran's Leather Boots
			{ itemID = 32810, price = "Arena" }, --Veteran's Dragonhide Bracers
			{ itemID = 32798, price = "Arena" }, --Veteran's Dragonhide Belt
			{ itemID = 32786, price = "Arena" }, --Veteran's Dragonhide Boots
			{ itemID = 32821, price = "Arena" }, --Veteran's Wyrmhide Bracers
			{ itemID = 32808, price = "Arena" }, --Veteran's Wyrmhide Belt
			{ itemID = 32796, price = "Arena" }, --Veteran's Wyrmhide Boots
		},
        {
			{ itemID = 32809, price = "Arena" }, --Veteran's Chain Bracers
			{ itemID = 32797, price = "Arena" }, --Veteran's Chain Girdle
			{ itemID = 32785, price = "Arena" }, --Veteran's Chain Sabatons
			{ itemID = 32816, price = "Arena" }, --Veteran's Linked Bracers
			{ itemID = 32803, price = "Arena" }, --Veteran's Linked Girdle
			{ itemID = 32791, price = "Arena" }, --Veteran's Linked Sabatons
			{ itemID = 32817, price = "Arena" }, --Veteran's Mail Bracers
			{ itemID = 32804, price = "Arena" }, --Veteran's Mail Girdle
			{ itemID = 32792, price = "Arena" }, --Veteran's Mail Sabatons
			{ itemID = 32997, price = "Arena" }, --Veteran's Ringmail Bracers
			{ itemID = 32998, price = "Arena" }, --Veteran's Ringmail Girdle
			{ itemID = 32999, price = "Arena" }, --Veteran's Ringmail Sabatons
		},
        {
			{ itemID = 32813, price = "Arena" }, --Veteran's Lamellar Bracers
			{ itemID = 32801, price = "Arena" }, --Veteran's Lamellar Belt
			{ itemID = 32789, price = "Arena" }, --Veteran's Lamellar Greaves
			{ itemID = 32818, price = "Arena" }, --Veteran's Plate Bracers
			{ itemID = 32805, price = "Arena" }, --Veteran's Plate Belt
			{ itemID = 32793, price = "Arena" }, --Veteran's Plate Greaves
			{ itemID = 32989, price = "Arena" }, --Veteran's Ornamented Bracers
			{ itemID = 32988, price = "Arena" }, --Veteran's Ornamented Belt
			{ itemID = 32990, price = "Arena" }, --Veteran's Ornamented Greaves
			{ itemID = 32819, price = "Arena" }, --Veteran's Scaled Bracers
			{ itemID = 32806, price = "Arena" }, --Veteran's Scaled Belt
			{ itemID = 32794, price = "Arena" }, --Veteran's Scaled Greaves
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28331, price = "Arena" }, --Gladiator's Chain Helm
			{ itemID = 28333, price = "Arena" }, --Gladiator's Chain Spaulders
			{ itemID = 28334, price = "Arena" }, --Gladiator's Chain Armor
			{ itemID = 28335, price = "Arena" }, --Gladiator's Chain Gauntlets
			{ itemID = 28332, price = "Arena" }, --Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31962, price = "Arena" }, --Merciless Gladiator's Chain Helm
			{ itemID = 31964, price = "Arena" }, --Merciless Gladiator's Chain Spaulders
			{ itemID = 31960, price = "Arena" }, --Merciless Gladiator's Chain Armor
			{ itemID = 31961, price = "Arena" }, --Merciless Gladiator's Chain Gauntlets
			{ itemID = 31963, price = "Arena" }, --Merciless Gladiator's Chain Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 25855, price = "Arena" }, --Gladiator's Silk Cowl
			{ itemID = 25854, price = "Arena" }, --Gladiator's Silk Amice
			{ itemID = 25856, price = "Arena" }, --Gladiator's Silk Raiment
			{ itemID = 25857, price = "Arena" }, --Gladiator's Silk Handguards
			{ itemID = 25858, price = "Arena" }, --Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32048, price = "Arena" }, --Merciless Gladiator's Silk Cowl
			{ itemID = 32047, price = "Arena" }, --Merciless Gladiator's Silk Amice
			{ itemID = 32050, price = "Arena" }, --Merciless Gladiator's Silk Raiment
			{ itemID = 32049, price = "Arena" }, --Merciless Gladiator's Silk Handguards
			{ itemID = 32051, price = "Arena" }, --Merciless Gladiator's Silk Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 25830, price = "Arena" }, --Gladiator's Leather Helm
			{ itemID = 25832, price = "Arena" }, --Gladiator's Leather Spaulders
			{ itemID = 25831, price = "Arena" }, --Gladiator's Leather Tunic
			{ itemID = 25834, price = "Arena" }, --Gladiator's Leather Gloves
			{ itemID = 25833, price = "Arena" }, --Gladiator's Leather Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31999, price = "Arena" }, --Merciless Gladiator's Leather Helm
			{ itemID = 32001, price = "Arena" }, --Merciless Gladiator's Leather Spaulders
			{ itemID = 32002, price = "Arena" }, --Merciless Gladiator's Leather Tunic
			{ itemID = 31998, price = "Arena" }, --Merciless Gladiator's Leather Gloves
			{ itemID = 32000, price = "Arena" }, --Merciless Gladiator's Leather Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 24545, price = "Arena" }, --Gladiator's Plate Helm
			{ itemID = 24546, price = "Arena" }, --Gladiator's Plate Shoulders
			{ itemID = 24544, price = "Arena" }, --Gladiator's Plate Chestpiece
			{ itemID = 24549, price = "Arena" }, --Gladiator's Plate Gauntlets
			{ itemID = 24547, price = "Arena" }, --Gladiator's Plate Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 30488, price = "Arena" }, --Merciless Gladiator's Plate Helm
			{ itemID = 30490, price = "Arena" }, --Merciless Gladiator's Plate Shoulders
			{ itemID = 30486, price = "Arena" }, --Merciless Gladiator's Plate Chestpiece
			{ itemID = 30487, price = "Arena" }, --Merciless Gladiator's Plate Gauntlets
			{ itemID = 30489, price = "Arena" }, --Merciless Gladiator's Plate Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 24553, price = "Arena" }, --Gladiator's Dreadweave Hood
			{ itemID = 24554, price = "Arena" }, --Gladiator's Dreadweave Mantle
			{ itemID = 24552, price = "Arena" }, --Gladiator's Dreadweave Robe
			{ itemID = 24556, price = "Arena" }, --Gladiator's Dreadweave Gloves
			{ itemID = 24555, price = "Arena" }, --Gladiator's Dreadweave Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31974, price = "Arena" }, --Merciless Gladiator's Dreadweave Hood
			{ itemID = 31976, price = "Arena" }, --Merciless Gladiator's Dreadweave Mantle
			{ itemID = 31977, price = "Arena" }, --Merciless Gladiator's Dreadweave Robe
			{ itemID = 31973, price = "Arena" }, --Merciless Gladiator's Dreadweave Gloves
			{ itemID = 31975, price = "Arena" }, --Merciless Gladiator's Dreadweave Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 30187, price = "Arena" }, --Gladiator's Felweave Cowl
			{ itemID = 30186, price = "Arena" }, --Gladiator's Felweave Amice
			{ itemID = 30200, price = "Arena" }, --Gladiator's Felweave Raiment
			{ itemID = 30188, price = "Arena" }, --Gladiator's Felweave Handguards
			{ itemID = 30201, price = "Arena" }, --Gladiator's Felweave Trousers
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31980, price = "Arena" }, --Merciless Gladiator's Felweave Cowl
			{ itemID = 31979, price = "Arena" }, --Merciless Gladiator's Felweave Amice
			{ itemID = 31982, price = "Arena" }, --Merciless Gladiator's Felweave Raiment
			{ itemID = 31981, price = "Arena" }, --Merciless Gladiator's Felweave Handguards
			{ itemID = 31983, price = "Arena" }, --Merciless Gladiator's Felweave Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28127, price = "Arena" }, --Gladiator's Dragonhide Helm
			{ itemID = 28129, price = "Arena" }, --Gladiator's Dragonhide Spaulders
			{ itemID = 28130, price = "Arena" }, --Gladiator's Dragonhide Tunic
			{ itemID = 28126, price = "Arena" }, --Gladiator's Dragonhide Gloves
			{ itemID = 28128, price = "Arena" }, --Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31968, price = "Arena" }, --Merciless Gladiator's Dragonhide Helm
			{ itemID = 31971, price = "Arena" }, --Merciless Gladiator's Dragonhide Spaulders
			{ itemID = 31972, price = "Arena" }, --Merciless Gladiator's Dragonhide Tunic
			{ itemID = 31967, price = "Arena" }, --Merciless Gladiator's Dragonhide Gloves
			{ itemID = 31969, price = "Arena" }, --Merciless Gladiator's Dragonhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 28137, price = "Arena" }, --Gladiator's Wyrmhide Helm
			{ itemID = 28139, price = "Arena" }, --Gladiator's Wyrmhide Spaulders
			{ itemID = 28140, price = "Arena" }, --Gladiator's Wyrmhide Tunic
			{ itemID = 28136, price = "Arena" }, --Gladiator's Wyrmhide Gloves
			{ itemID = 28138, price = "Arena" }, --Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32057, price = "Arena" }, --Merciless Gladiator's Wyrmhide Helm
			{ itemID = 32059, price = "Arena" }, --Merciless Gladiator's Wyrmhide Spaulders
			{ itemID = 32060, price = "Arena" }, --Merciless Gladiator's Wyrmhide Tunic
			{ itemID = 32056, price = "Arena" }, --Merciless Gladiator's Wyrmhide Gloves
			{ itemID = 32058, price = "Arena" }, --Merciless Gladiator's Wyrmhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31376, price = "Arena" }, --Gladiator's Kodohide Helm
			{ itemID = 31378, price = "Arena" }, --Gladiator's Kodohide Spaulders
			{ itemID = 31379, price = "Arena" }, --Gladiator's Kodohide Tunic
			{ itemID = 31375, price = "Arena" }, --Gladiator's Kodohide Gloves
			{ itemID = 31377, price = "Arena" }, --Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31988, price = "Arena" }, --Merciless Gladiator's Kodohide Helm
			{ itemID = 31990, price = "Arena" }, --Merciless Gladiator's Kodohide Spaulders
			{ itemID = 31991, price = "Arena" }, --Merciless Gladiator's Kodohide Tunic
			{ itemID = 31987, price = "Arena" }, --Merciless Gladiator's Kodohide Gloves
			{ itemID = 31989, price = "Arena" }, --Merciless Gladiator's Kodohide Legguards
		},
			{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 25998, price = "Arena" }, --Gladiator's Linked Helm
			{ itemID = 25999, price = "Arena" }, --Gladiator's Linked Spaulders
			{ itemID = 25997, price = "Arena" }, --Gladiator's Linked Armor
			{ itemID = 26000, price = "Arena" }, --Gladiator's Linked Gauntlets
			{ itemID = 26001, price = "Arena" }, --Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32006, price = "Arena" }, --Merciless Gladiator's Linked Helm
			{ itemID = 32008, price = "Arena" }, --Merciless Gladiator's Linked Spaulders
			{ itemID = 32004, price = "Arena" }, --Merciless Gladiator's Linked Armor
			{ itemID = 32005, price = "Arena" }, --Merciless Gladiator's Linked Gauntlets
			{ itemID = 32007, price = "Arena" }, --Merciless Gladiator's Linked Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 27471, price = "Arena" }, --Gladiator's Mail Helm
			{ itemID = 27473, price = "Arena" }, --Gladiator's Mail Spaulders
			{ itemID = 27469, price = "Arena" }, --Gladiator's Mail Armor
			{ itemID = 27470, price = "Arena" }, --Gladiator's Mail Gauntlets
			{ itemID = 27472, price = "Arena" }, --Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32011, price = "Arena" }, --Merciless Gladiator's Mail Helm
			{ itemID = 32013, price = "Arena" }, --Merciless Gladiator's Mail Spaulders
			{ itemID = 32009, price = "Arena" }, --Merciless Gladiator's Mail Armor
			{ itemID = 32010, price = "Arena" }, --Merciless Gladiator's Mail Gauntlets
			{ itemID = 32012, price = "Arena" }, --Merciless Gladiator's Mail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31400, price = "Arena" }, --Gladiator's Ringmail Helm
			{ itemID = 31407, price = "Arena" }, --Gladiator's Ringmail Spaulders
			{ itemID = 31396, price = "Arena" }, --Gladiator's Ringmail Armor
			{ itemID = 31397, price = "Arena" }, --Gladiator's Ringmail Gauntlets
			{ itemID = 31406, price = "Arena" }, --Gladiator's Ringmail Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32031, price = "Arena" }, --Merciless Gladiator's Ringmail Helm
			{ itemID = 32033, price = "Arena" }, --Merciless Gladiator's Ringmail Spaulders
			{ itemID = 32029, price = "Arena" }, --Merciless Gladiator's Ringmail Armor
			{ itemID = 32030, price = "Arena" }, --Merciless Gladiator's Ringmail Gauntlets
			{ itemID = 32032, price = "Arena" }, --Merciless Gladiator's Ringmail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 27704, price = "Arena" }, --Gladiator's Lamellar Helm
			{ itemID = 27706, price = "Arena" }, --Gladiator's Lamellar Shoulders
			{ itemID = 27702, price = "Arena" }, --Gladiator's Lamellar Chestpiece
			{ itemID = 27703, price = "Arena" }, --Gladiator's Lamellar Gauntlets
			{ itemID = 27705, price = "Arena" }, --Gladiator's Lamellar Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 31997, price = "Arena" }, --Merciless Gladiator's Lamellar Helm
			{ itemID = 31996, price = "Arena" }, --Merciless Gladiator's Lamellar Shoulders
			{ itemID = 31992, price = "Arena" }, --Merciless Gladiator's Lamellar Chestpiece
			{ itemID = 31993, price = "Arena" }, --Merciless Gladiator's Lamellar Gauntlets
			{ itemID = 31995, price = "Arena" }, --Merciless Gladiator's Lamellar Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 27881, price = "Arena" }, --Gladiator's Scaled Helm
			{ itemID = 27883, price = "Arena" }, --Gladiator's Scaled Shoulders
			{ itemID = 27879, price = "Arena" }, --Gladiator's Scaled Chestpiece
			{ itemID = 27880, price = "Arena" }, --Gladiator's Scaled Gauntlets
			{ itemID = 27882, price = "Arena" }, --Gladiator's Scaled Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32041, price = "Arena" }, --Merciless Gladiator's Scaled Helm
			{ itemID = 32043, price = "Arena" }, --Merciless Gladiator's Scaled Shoulders
			{ itemID = 32039, price = "Arena" }, --Merciless Gladiator's Scaled Chestpiece
			{ itemID = 32040, price = "Arena" }, --Merciless Gladiator's Scaled Gauntlets
			{ itemID = 32042, price = "Arena" }, --Merciless Gladiator's Scaled Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31616, price = "Arena" }, --Gladiator's Ornamented Headcover
			{ itemID = 31619, price = "Arena" }, --Gladiator's Ornamented Spaulders
			{ itemID = 31613, price = "Arena" }, --Gladiator's Ornamented Chestguard
			{ itemID = 31614, price = "Arena" }, --Gladiator's Ornamented Gloves
			{ itemID = 31618, price = "Arena" }, --Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32022, price = "Arena" }, --Merciless Gladiator's Ornamented Headcover
			{ itemID = 32024, price = "Arena" }, --Merciless Gladiator's Ornamented Spaulders
			{ itemID = 32020, price = "Arena" }, --Merciless Gladiator's Ornamented Chestguard
			{ itemID = 32021, price = "Arena" }, --Merciless Gladiator's Ornamented Gloves
			{ itemID = 32023, price = "Arena" }, --Merciless Gladiator's Ornamented Legplates
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 27708, price = "Arena" }, --Gladiator's Satin Hood
			{ itemID = 27710, price = "Arena" }, --Gladiator's Satin Mantle
			{ itemID = 27711, price = "Arena" }, --Gladiator's Satin Robe
			{ itemID = 27707, price = "Arena" }, --Gladiator's Satin Gloves
			{ itemID = 27709, price = "Arena" }, --Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32035, price = "Arena" }, --Merciless Gladiator's Satin Hood
			{ itemID = 32037, price = "Arena" }, --Merciless Gladiator's Satin Mantle
			{ itemID = 32038, price = "Arena" }, --Merciless Gladiator's Satin Robe
			{ itemID = 32034, price = "Arena" }, --Merciless Gladiator's Satin Gloves
			{ itemID = 32036, price = "Arena" }, --Merciless Gladiator's Satin Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31410, price = "Arena" }, --Gladiator's Mooncloth Hood
			{ itemID = 31412, price = "Arena" }, --Gladiator's Mooncloth Mantle
			{ itemID = 31413, price = "Arena" }, --Gladiator's Mooncloth Robe
			{ itemID = 31409, price = "Arena" }, --Gladiator's Mooncloth Gloves
			{ itemID = 31411, price = "Arena" }, --Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 32016, price = "Arena" }, --Merciless Gladiator's Mooncloth Hood
			{ itemID = 32018, price = "Arena" }, --Merciless Gladiator's Mooncloth Mantle
			{ itemID = 32019, price = "Arena" }, --Merciless Gladiator's Mooncloth Robe
			{ itemID = 32015, price = "Arena" }, --Merciless Gladiator's Mooncloth Gloves
			{ itemID = 32017, price = "Arena" }, --Merciless Gladiator's Mooncloth Leggings
		},
	},

--Arena Season 3
["Pvp70Season3"] = {
		{
			{ itemID = 901000, price = "Arena" }, --Vindicator's Cloak of Battle
			{ itemID = 901001, price = "Arena" }, --Vindicator's Cloak of Condemnation
			{ itemID = 901002, price = "Arena" }, --Vindicator's Cloak of Power
			{ itemID = 901003, price = "Arena" }, --Vindicator's Cloak of Salvation
			{ itemID = 33918, price = "Arena" }, --Vindicator's Band of Salvation
			{ itemID = 33919, price = "Arena" }, --Vindicator's Band of Triumph
			{ itemID = 433919, price = "Arena" }, --Vindicator's Band of Combat
			{ itemID = 33853, price = "Arena" }, --Vindicator's Band of Dominance
			{ itemID = 35320, price = "Arena" }, --Vindicator's band of Subjugation 
			{ itemID = 901015, price = "Arena" }, --Vindicator's Band of Critical Mass
			{ itemID = 33920, price = "Arena" }, --Vindicator's Pendant of Conquest
			{ itemID = 33921, price = "Arena" }, --Vindicator's Pendant of Dominance
			{ itemID = 33922, price = "Arena" }, --Vindicator's Pendant of Salvation
			{ itemID = 33923, price = "Arena" }, --Vindicator's Pendant of Triumph
			{ itemID = 433923, price = "Arena" }, --Vindicator's Pendant of Power
			{ itemID = 433924, price = "Arena" }, --Vindicator's Pendant of Combat
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31966, price = "Arena" }, --Merciless Gladiator's Decapitator
			{ itemID = 131966, price = "Arena" }, --Merciless Gladiator's Executioner
			{ itemID = 509090, price = "Arena" }, --Merciless Gladiator's Battlehammer
			{ itemID = 31959, price = "Arena" }, --Merciless Gladiator's Bonegrinder
			{ itemID = 509094, price = "Arena" }, --Merciless Gladiator's Smasher
			{ itemID = 32025, price = "Arena" }, --Merciless Gladiator's Painsaw
			{ itemID = 414354, price = "Arena" }, --Merciless Gladiator's Polearm
			{ itemID = 414355, price = "Arena" }, --Merciless Gladiator's Claymore
			{ itemID = 31984, price = "Arena" }, --Merciless Gladiator's Greatsword
			{ itemID = 32026, price = "Arena" }, --Merciless Gladiator's Pummeler
			{ itemID = 32052, price = "Arena" }, --Merciless Gladiator's Slicer
			{ itemID = 32027, price = "Arena" }, --Merciless Gladiator's Quickblade
			{ itemID = 509142, price = "Arena" }, --Merciless Gladiator's Cleaver
			{ itemID = 509083, price = "Arena" }, --Merciless Gladiator's Chopper
			{ itemID = 31985, price = "Arena" }, --Merciless Gladiator's Hacker
			{ itemID = 31958, price = "Arena" }, --Merciless Gladiator's Bonecracker
			{ itemID = 32003, price = "Arena" }, --Merciless Gladiator's Left Ripper
			{ itemID = 32028, price = "Arena" }, --Merciless Gladiator's Right Ripper
			{ itemID = 414369, price = "Arena" }, --Merciless Gladiator's Mutilator
			{ itemID = 32046, price = "Arena" }, --Merciless Gladiator's Shiv
			{ itemID = 32044, price = "Arena" }, --Merciless Gladiator's Shanker
			{ itemID = 509086, price = "Arena" }, --Merciless Gladiator's Longbow
			{ itemID = 31986, price = "Arena" }, --Merciless Gladiator's Heavy Crossbow
			{ itemID = 509087, price = "Arena" }, --Merciless Gladiator's Rifle
			{ itemID = 509081, price = "Arena" }, --Merciless Gladiator's War Edge
			{ itemID = 32045, price = "Arena" }, --Merciless Gladiator's Shield Wall
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 33670, price = "Arena" }, --Vengeful Gladiator's Decapitator
			{ itemID = 34014, price = "Arena" }, --Vengeful Gladiator's Executioner
			{ itemID = 300136, price = "Arena" }, --Vengeful Gladiator's Battlehammer
			{ itemID = 33663, price = "Arena" }, --Vengeful Gladiator's Bonegrinder
			{ itemID = 300140, price = "Arena" }, --Vengeful Gladiator's Smasher
			{ itemID = 33727, price = "Arena" }, --Vengeful Gladiator's Painsaw
			{ itemID = 414356, price = "Arena" }, --Vengeful Gladiator's Polearm
			{ itemID = 414357, price = "Arena" }, --Vengeful Gladiator's Claymore
			{ itemID = 33688, price = "Arena" }, --Vengeful Gladiator's Greatsword
			{ itemID = 33733, price = "Arena" }, --Vengeful Gladiator's Pummeler
			{ itemID = 33762, price = "Arena" }, --Vengeful Gladiator's Slicer
			{ itemID = 414377, price = "Arena" }, --Vengeful Gladiator's Quickblade
			{ itemID = 33669, price = "Arena" }, --Vengeful Gladiator's Cleaver
			{ itemID = 34015, price = "Arena" }, --Vengeful Gladiator's Chopper
			{ itemID = 414371, price = "Arena" }, --Vengeful Gladiator's Hacker
			{ itemID = 414376, price = "Arena" }, --Vengeful Gladiator's Bonecracker
			{ itemID = 34016, price = "Arena" }, --Vengeful Gladiator's Left Render
			{ itemID = 33737, price = "Arena" }, --Vengeful Gladiator's Right Ripper
			{ itemID = 414378, price = "Arena" }, --Vengeful Gladiator's Mutilator
			{ itemID = 414379, price = "Arena" }, --Vengeful Gladiator's Shiv
			{ itemID = 33754, price = "Arena" }, --Vengeful Gladiator's Shanker
			{ itemID = 34529, price = "Arena" }, --Vengeful Gladiator's Longbow
			{ itemID = 33006, price = "Arena" }, --Vengeful Gladiator's Heavy Crossbow
			{ itemID = 34530, price = "Arena" }, --Vengeful Gladiator's Rifle
			{ itemID = 33765, price = "Arena" }, --Vengeful Gladiator's War Edge
			{ itemID = 33755, price = "Arena" }, --Vengeful Gladiator's Shield Wall
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 509088, price = "Arena" }, --Merciless Gladiator's Battle Staff
			{ itemID = 509093, price = "Arena" }, --Merciless Gladiator's Guardian Staff
			{ itemID = 32055, price = "Arena" }, --Merciless Gladiator's War Staff
			{ itemID = 509089, price = "Arena" }, --Merciless Gladiator's Battlemace
			{ itemID = 32963, price = "Arena" }, --Merciless Gladiator's Gavel
			{ itemID = 509092, price = "Arena" }, --Merciless Gladiator's Guardian Mace
			{ itemID = 32964, price = "Arena" }, --Merciless Gladiator's Salvation
			{ itemID = 509096, price = "Arena" }, --Merciless Gladiator's Battleslicer
			{ itemID = 509098, price = "Arena" }, --Merciless Gladiator's Spellblade
			{ itemID = 414353, price = "Arena" }, --Merciless Gladiator's Dagger
			{ itemID = 509097, price = "Arena" }, --Merciless Gladiator's Magebow
			{ itemID = 509085, price = "Arena" }, --Merciless Gladiator's Piercing Touch
			{ itemID = 509144, price = "Arena" }, --Merciless Gladiator's Touch of Defeat
			{ itemID = 33313, price = "Arena" }, --Merciless Gladiator's Barrier
			{ itemID = 33309, price = "Arena" }, --Merciless Gladiator's Redoubt
			{ itemID = 31978, price = "Arena" }, --Merciless Gladiator's Endgame
			{ itemID = 509084, price = "Arena" }, --Merciless Gladiator's Grimoire
			{ itemID = 32961, price = "Arena" }, --Merciless Gladiator's Reprieve
			{ itemID = 414370, price = "Arena" }, --Merciless Gladiator's Libram of Fortitude
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 34540, price = "Arena" }, --Vengeful Gladiator's Battle Staff
			{ itemID = 300139, price = "Arena" }, --Vengeful Gladiator's Guardian Staff
			{ itemID = 33766, price = "Arena" }, --Vengeful Gladiator's War Staff
			{ itemID = 300135, price = "Arena" }, --Vengeful Gladiator's Battlemace
			{ itemID = 33687, price = "Arena" }, --Vengeful Gladiator's Gavel
			{ itemID = 300138, price = "Arena" }, --Vengeful Gladiator's Guardian Mace
			{ itemID = 33743, price = "Arena" }, --Vengeful Gladiator's Salvation
			{ itemID = 300147, price = "Arena" }, --Vengeful Gladiator's Battleslicer
			{ itemID = 33763, price = "Arena" }, --Vengeful Gladiator's Spellblade
			{ itemID = 300137, price = "Arena" }, --Vengeful Gladiator's Dagger
			{ itemID = 300148, price = "Arena" }, --Vengeful Gladiator's Magebow
			{ itemID = 34066, price = "Arena" }, --Vengeful Gladiator's Piercing Touch
			{ itemID = 33764, price = "Arena" }, --Vengeful Gladiator's Touch of Defeat
			{ itemID = 33661, price = "Arena" }, --Vengeful Gladiator's Barrier
			{ itemID = 33735, price = "Arena" }, --Vengeful Gladiator's Redoubt
			{ itemID = 33681, price = "Arena" }, --Vengeful Gladiator's Endgame
			{ itemID = 34033, price = "Arena" }, --Vengeful Gladiator's Grimoire
			{ itemID = 33736, price = "Arena" }, --Vengeful Gladiator's Reprieve
			{ itemID = 300149, price = "Arena" }, --Vengeful Gladiator's Libram of Fortitude
		},
		{
			{ itemID = 33883, price = "Arena" }, --Vindicator's Dreadweave Cuffs
			{ itemID = 33882, price = "Arena" }, --Vindicator's Dreadweave Belt
			{ itemID = 33884, price = "Arena" }, --Vindicator's Dreadweave Stalkers
			{ itemID = 33913, price = "Arena" }, --Vindicator's Silk Cuffs
			{ itemID = 33912, price = "Arena" }, --Vindicator's Silk Belt
			{ itemID = 33914, price = "Arena" }, --Vindicator's Silk Footguards
			{ itemID = 33901, price = "Arena" }, --Vindicator's Mooncloth Cuffs
			{ itemID = 33900, price = "Arena" }, --Vindicator's Mooncloth Belt
			{ itemID = 33902, price = "Arena" }, --Vindicator's Mooncloth Slippers
		},
		{
			{ itemID = 33881, price = "Arena" }, --Vindicator's Dragonhide Bracers
			{ itemID = 33879, price = "Arena" }, --Vindicator's Dragonhide Belt
			{ itemID = 33880, price = "Arena" }, --Vindicator's Dragonhide Boots
			{ itemID = 33887, price = "Arena" }, --Vindicator's Kodohide Bracers
			{ itemID = 33885, price = "Arena" }, --Vindicator's Kodohide Belt
			{ itemID = 33886, price = "Arena" }, --Vindicator's Kodohide Boots
			{ itemID = 33893, price = "Arena" }, --Vindicator's Leather Bracers
			{ itemID = 33891, price = "Arena" }, --Vindicator's Leather Belt
			{ itemID = 33892, price = "Arena" }, --Vindicator's Leather Boots
			{ itemID = 33917, price = "Arena" }, --Vindicator's Wyrmhide Bracers
			{ itemID = 33915, price = "Arena" }, --Vindicator's Wyrmhide Belt
			{ itemID = 33916, price = "Arena" }, --Vindicator's Wyrmhide Boots
		},
		{
			{ itemID = 33876, price = "Arena" }, --Vindicator's Chain Bracers
			{ itemID = 33877, price = "Arena" }, --Vindicator's Chain Girdle
			{ itemID = 33878, price = "Arena" }, --Vindicator's Chain Sabatons
			{ itemID = 33894, price = "Arena" }, --Vindicator's Linked Bracers
			{ itemID = 33895, price = "Arena" }, --Vindicator's Linked Girdle
			{ itemID = 33896, price = "Arena" }, --Vindicator's Linked Sabatons
			{ itemID = 33897, price = "Arena" }, --Vindicator's Mail Bracers
			{ itemID = 33898, price = "Arena" }, --Vindicator's Mail Girdle
			{ itemID = 33899, price = "Arena" }, --Vindicator's Mail Sabatons
			{ itemID = 33909, price = "Arena" }, --Vindicator's Scaled Belt
			{ itemID = 33910, price = "Arena" }, --Vindicator's Scaled Bracers
			{ itemID = 33911, price = "Arena" }, --Vindicator's Scaled Greaves
			{ itemID = 33906, price = "Arena" }, --Vindicator's Ringmail Bracers
			{ itemID = 33907, price = "Arena" }, --Vindicator's Ringmail Girdle
			{ itemID = 33908, price = "Arena" }, --Vindicator's Ringmail Sabatons
		},
		{
			{ itemID = 33889, price = "Arena" }, --Vindicator's Lamellar Bracers
			{ itemID = 33888, price = "Arena" }, --Vindicator's Lamellar Belt
			{ itemID = 33890, price = "Arena" }, --Vindicator's Lamellar Greaves
			{ itemID = 33903, price = "Arena" }, --Vindicator's Ornamented Belt
			{ itemID = 33904, price = "Arena" }, --Vindicator's Ornamented Bracers
			{ itemID = 33905, price = "Arena" }, --Vindicator's Ornamented Greaves
			{ itemID = 33813, price = "Arena" }, --Vindicator's Plate Bracers
			{ itemID = 33811, price = "Arena" }, --Vindicator's Plate Belt
			{ itemID = 33812, price = "Arena" }, --Vindicator's Plate Greaves
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31962, price = "Arena" }, --Merciless Gladiator's Chain Helm
			{ itemID = 31964, price = "Arena" }, --Merciless Gladiator's Chain Spaulders
			{ itemID = 31960, price = "Arena" }, --Merciless Gladiator's Chain Armor
			{ itemID = 31961, price = "Arena" }, --Merciless Gladiator's Chain Gauntlets
			{ itemID = 31963, price = "Arena" }, --Merciless Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923477, price = "Arena" }, --Vengeful Gladiator's Chain Helm
			{ itemID = 923479, price = "Arena" }, --Vengeful Gladiator's Chain Spaulders
			{ itemID = 923475, price = "Arena" }, --Vengeful Gladiator's Chain Armor
			{ itemID = 923476, price = "Arena" }, --Vengeful Gladiator's Chain Gauntlets
			{ itemID = 923478, price = "Arena" }, --Vengeful Gladiator's Chain Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32048, price = "Arena" }, --Merciless Gladiator's Silk Cowl
			{ itemID = 32047, price = "Arena" }, --Merciless Gladiator's Silk Amice
			{ itemID = 32050, price = "Arena" }, --Merciless Gladiator's Silk Raiment
			{ itemID = 32049, price = "Arena" }, --Merciless Gladiator's Silk Handguards
			{ itemID = 32051, price = "Arena" }, --Merciless Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923546, price = "Arena" }, --Vengeful Gladiator's Silk Cowl
			{ itemID = 923545, price = "Arena" }, --Vengeful Gladiator's Silk Amice
			{ itemID = 923548, price = "Arena" }, --Vengeful Gladiator's Silk Raiment
			{ itemID = 923547, price = "Arena" }, --Vengeful Gladiator's Silk Handguards
			{ itemID = 923549, price = "Arena" }, --Vengeful Gladiator's Silk Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31999, price = "Arena" }, --Merciless Gladiator's Leather Helm
			{ itemID = 32001, price = "Arena" }, --Merciless Gladiator's Leather Spaulders
			{ itemID = 32002, price = "Arena" }, --Merciless Gladiator's Leather Tunic
			{ itemID = 31998, price = "Arena" }, --Merciless Gladiator's Leather Gloves
			{ itemID = 32000, price = "Arena" }, --Merciless Gladiator's Leather Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923506, price = "Arena" }, --Vengeful Gladiator's Leather Helm
			{ itemID = 923508, price = "Arena" }, --Vengeful Gladiator's Leather Spaulders
			{ itemID = 923509, price = "Arena" }, --Vengeful Gladiator's Leather Tunic
			{ itemID = 923505, price = "Arena" }, --Vengeful Gladiator's Leather Gloves
			{ itemID = 923507, price = "Arena" }, --Vengeful Gladiator's Leather Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 30488, price = "Arena" }, --Merciless Gladiator's Plate Helm
			{ itemID = 30490, price = "Arena" }, --Merciless Gladiator's Plate Shoulders
			{ itemID = 30486, price = "Arena" }, --Merciless Gladiator's Plate Chestpiece
			{ itemID = 30487, price = "Arena" }, --Merciless Gladiator's Plate Gauntlets
			{ itemID = 30489, price = "Arena" }, --Merciless Gladiator's Plate Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923472, price = "Arena" }, --Vengeful Gladiator's Plate Helm
			{ itemID = 923474, price = "Arena" }, --Vengeful Gladiator's Plate Shoulders
			{ itemID = 923470, price = "Arena" }, --Vengeful Gladiator's Plate Chestpiece
			{ itemID = 923471, price = "Arena" }, --Vengeful Gladiator's Plate Gauntlets
			{ itemID = 923473, price = "Arena" }, --Vengeful Gladiator's Plate Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31974, price = "Arena" }, --Merciless Gladiator's Dreadweave Hood
			{ itemID = 31976, price = "Arena" }, --Merciless Gladiator's Dreadweave Mantle
			{ itemID = 31977, price = "Arena" }, --Merciless Gladiator's Dreadweave Robe
			{ itemID = 31973, price = "Arena" }, --Merciless Gladiator's Dreadweave Gloves
			{ itemID = 31975, price = "Arena" }, --Merciless Gladiator's Dreadweave Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923486, price = "Arena" }, --Vengeful Gladiator's Dreadweave Hood
			{ itemID = 923488, price = "Arena" }, --Vengeful Gladiator's Dreadweave Mantle
			{ itemID = 923489, price = "Arena" }, --Vengeful Gladiator's Dreadweave Robe
			{ itemID = 923485, price = "Arena" }, --Vengeful Gladiator's Dreadweave Gloves
			{ itemID = 923487, price = "Arena" }, --Vengeful Gladiator's Dreadweave Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31980, price = "Arena" }, --Merciless Gladiator's Felweave Cowl
			{ itemID = 31979, price = "Arena" }, --Merciless Gladiator's Felweave Amice
			{ itemID = 31982, price = "Arena" }, --Merciless Gladiator's Felweave Raiment
			{ itemID = 31981, price = "Arena" }, --Merciless Gladiator's Felweave Handguards
			{ itemID = 31983, price = "Arena" }, --Merciless Gladiator's Felweave Trousers
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 33683, price = "Arena" }, --Vengeful Gladiator's Felweave Cowl
			{ itemID = 33682, price = "Arena" }, --Vengeful Gladiator's Felweave Amice
			{ itemID = 33685, price = "Arena" }, --Vengeful Gladiator's Felweave Raiment
			{ itemID = 33684, price = "Arena" }, --Vengeful Gladiator's Felweave Handguards
			{ itemID = 33686, price = "Arena" }, --Vengeful Gladiator's Felweave Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31968, price = "Arena" }, --Merciless Gladiator's Dragonhide Helm
			{ itemID = 31971, price = "Arena" }, --Merciless Gladiator's Dragonhide Spaulders
			{ itemID = 31972, price = "Arena" }, --Merciless Gladiator's Dragonhide Tunic
			{ itemID = 31967, price = "Arena" }, --Merciless Gladiator's Dragonhide Gloves
			{ itemID = 31969, price = "Arena" }, --Merciless Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923481, price = "Arena" }, --Vengeful Gladiator's Dragonhide Helm
			{ itemID = 923483, price = "Arena" }, --Vengeful Gladiator's Dragonhide Spaulders
			{ itemID = 923484, price = "Arena" }, --Vengeful Gladiator's Dragonhide Tunic
			{ itemID = 923480, price = "Arena" }, --Vengeful Gladiator's Dragonhide Gloves
			{ itemID = 923482, price = "Arena" }, --Vengeful Gladiator's Dragonhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32057, price = "Arena" }, --Merciless Gladiator's Wyrmhide Helm
			{ itemID = 32059, price = "Arena" }, --Merciless Gladiator's Wyrmhide Spaulders
			{ itemID = 32060, price = "Arena" }, --Merciless Gladiator's Wyrmhide Tunic
			{ itemID = 32056, price = "Arena" }, --Merciless Gladiator's Wyrmhide Gloves
			{ itemID = 32058, price = "Arena" }, --Merciless Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923551, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Helm
			{ itemID = 923553, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Spaulders
			{ itemID = 923554, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Tunic
			{ itemID = 923550, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Gloves
			{ itemID = 923552, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31988, price = "Arena" }, --Merciless Gladiator's Kodohide Helm
			{ itemID = 31990, price = "Arena" }, --Merciless Gladiator's Kodohide Spaulders
			{ itemID = 31991, price = "Arena" }, --Merciless Gladiator's Kodohide Tunic
			{ itemID = 31987, price = "Arena" }, --Merciless Gladiator's Kodohide Gloves
			{ itemID = 31989, price = "Arena" }, --Merciless Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923496, price = "Arena" }, --Vengeful Gladiator's Kodohide Helm
			{ itemID = 923498, price = "Arena" }, --Vengeful Gladiator's Kodohide Spaulders
			{ itemID = 923499, price = "Arena" }, --Vengeful Gladiator's Kodohide Tunic
			{ itemID = 923495, price = "Arena" }, --Vengeful Gladiator's Kodohide Gloves
			{ itemID = 923497, price = "Arena" }, --Vengeful Gladiator's Kodohide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32006, price = "Arena" }, --Merciless Gladiator's Linked Helm
			{ itemID = 32008, price = "Arena" }, --Merciless Gladiator's Linked Spaulders
			{ itemID = 32004, price = "Arena" }, --Merciless Gladiator's Linked Armor
			{ itemID = 32005, price = "Arena" }, --Merciless Gladiator's Linked Gauntlets
			{ itemID = 32007, price = "Arena" }, --Merciless Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923512, price = "Arena" }, --Vengeful Gladiator's Linked Helm
			{ itemID = 923514, price = "Arena" }, --Vengeful Gladiator's Linked Spaulders
			{ itemID = 923510, price = "Arena" }, --Vengeful Gladiator's Linked Armor
			{ itemID = 923511, price = "Arena" }, --Vengeful Gladiator's Linked Gauntlets
			{ itemID = 923513, price = "Arena" }, --Vengeful Gladiator's Linked Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32011, price = "Arena" }, --Merciless Gladiator's Mail Helm
			{ itemID = 32013, price = "Arena" }, --Merciless Gladiator's Mail Spaulders
			{ itemID = 32009, price = "Arena" }, --Merciless Gladiator's Mail Armor
			{ itemID = 32010, price = "Arena" }, --Merciless Gladiator's Mail Gauntlets
			{ itemID = 32012, price = "Arena" }, --Merciless Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923517, price = "Arena" }, --Vengeful Gladiator's Mail Helm
			{ itemID = 923519, price = "Arena" }, --Vengeful Gladiator's Mail Spaulders
			{ itemID = 923515, price = "Arena" }, --Vengeful Gladiator's Mail Armor
			{ itemID = 923516, price = "Arena" }, --Vengeful Gladiator's Mail Gauntlets
			{ itemID = 923518, price = "Arena" }, --Vengeful Gladiator's Mail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32031, price = "Arena" }, --Merciless Gladiator's Ringmail Helm
			{ itemID = 32033, price = "Arena" }, --Merciless Gladiator's Ringmail Spaulders
			{ itemID = 32029, price = "Arena" }, --Merciless Gladiator's Ringmail Armor
			{ itemID = 32030, price = "Arena" }, --Merciless Gladiator's Ringmail Gauntlets
			{ itemID = 32032, price = "Arena" }, --Merciless Gladiator's Ringmail Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923532, price = "Arena" }, --Vengeful Gladiator's Ringmail Helm
			{ itemID = 923534, price = "Arena" }, --Vengeful Gladiator's Ringmail Spaulders
			{ itemID = 923530, price = "Arena" }, --Vengeful Gladiator's Ringmail Armor
			{ itemID = 923531, price = "Arena" }, --Vengeful Gladiator's Ringmail Gauntlets
			{ itemID = 923533, price = "Arena" }, --Vengeful Gladiator's Ringmail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 31997, price = "Arena" }, --Merciless Gladiator's Lamellar Helm
			{ itemID = 31996, price = "Arena" }, --Merciless Gladiator's Lamellar Shoulders
			{ itemID = 31992, price = "Arena" }, --Merciless Gladiator's Lamellar Chestpiece
			{ itemID = 31993, price = "Arena" }, --Merciless Gladiator's Lamellar Gauntlets
			{ itemID = 31995, price = "Arena" }, --Merciless Gladiator's Lamellar Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923504, price = "Arena" }, --Vengeful Gladiator's Lamellar Helm
			{ itemID = 923503, price = "Arena" }, --Vengeful Gladiator's Lamellar Shoulders
			{ itemID = 923500, price = "Arena" }, --Vengeful Gladiator's Lamellar Chestpiece
			{ itemID = 923501, price = "Arena" }, --Vengeful Gladiator's Lamellar Gauntlets
			{ itemID = 923502, price = "Arena" }, --Vengeful Gladiator's Lamellar Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32041, price = "Arena" }, --Merciless Gladiator's Scaled Helm
			{ itemID = 32043, price = "Arena" }, --Merciless Gladiator's Scaled Shoulders
			{ itemID = 32039, price = "Arena" }, --Merciless Gladiator's Scaled Chestpiece
			{ itemID = 32040, price = "Arena" }, --Merciless Gladiator's Scaled Gauntlets
			{ itemID = 32042, price = "Arena" }, --Merciless Gladiator's Scaled Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923542, price = "Arena" }, --Vengeful Gladiator's Scaled Helm
			{ itemID = 923544, price = "Arena" }, --Vengeful Gladiator's Scaled Shoulders
			{ itemID = 923540, price = "Arena" }, --Vengeful Gladiator's Scaled Chestpiece
			{ itemID = 923541, price = "Arena" }, --Vengeful Gladiator's Scaled Gauntlets
			{ itemID = 923543, price = "Arena" }, --Vengeful Gladiator's Scaled Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32022, price = "Arena" }, --Merciless Gladiator's Ornamented Headcover
			{ itemID = 32024, price = "Arena" }, --Merciless Gladiator's Ornamented Spaulders
			{ itemID = 32020, price = "Arena" }, --Merciless Gladiator's Ornamented Chestguard
			{ itemID = 32021, price = "Arena" }, --Merciless Gladiator's Ornamented Gloves
			{ itemID = 32023, price = "Arena" }, --Merciless Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923527, price = "Arena" }, --Vengeful Gladiator's Ornamented Headcover
			{ itemID = 923529, price = "Arena" }, --Vengeful Gladiator's Ornamented Spaulders
			{ itemID = 923525, price = "Arena" }, --Vengeful Gladiator's Ornamented Chestguard
			{ itemID = 923526, price = "Arena" }, --Vengeful Gladiator's Ornamented Gloves
			{ itemID = 923528, price = "Arena" }, --Vengeful Gladiator's Ornamented Legplates
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32035, price = "Arena" }, --Merciless Gladiator's Satin Hood
			{ itemID = 32037, price = "Arena" }, --Merciless Gladiator's Satin Mantle
			{ itemID = 32038, price = "Arena" }, --Merciless Gladiator's Satin Robe
			{ itemID = 32034, price = "Arena" }, --Merciless Gladiator's Satin Gloves
			{ itemID = 32036, price = "Arena" }, --Merciless Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923536, price = "Arena" }, --Vengeful Gladiator's Satin Hood
			{ itemID = 923538, price = "Arena" }, --Vengeful Gladiator's Satin Mantle
			{ itemID = 923539, price = "Arena" }, --Vengeful Gladiator's Satin Robe
			{ itemID = 923535, price = "Arena" }, --Vengeful Gladiator's Satin Gloves
			{ itemID = 923537, price = "Arena" }, --Vengeful Gladiator's Satin Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 32016, price = "Arena" }, --Merciless Gladiator's Mooncloth Hood
			{ itemID = 32018, price = "Arena" }, --Merciless Gladiator's Mooncloth Mantle
			{ itemID = 32019, price = "Arena" }, --Merciless Gladiator's Mooncloth Robe
			{ itemID = 32015, price = "Arena" }, --Merciless Gladiator's Mooncloth Gloves
			{ itemID = 32017, price = "Arena" }, --Merciless Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 923521, price = "Arena" }, --Vengeful Gladiator's Mooncloth Hood
			{ itemID = 923523, price = "Arena" }, --Vengeful Gladiator's Mooncloth Mantle
			{ itemID = 923524, price = "Arena" }, --Vengeful Gladiator's Mooncloth Robe
			{ itemID = 923520, price = "Arena" }, --Vengeful Gladiator's Mooncloth Gloves
			{ itemID = 923522, price = "Arena" }, --Vengeful Gladiator's Mooncloth Leggings
		},
	},

--Arena Season 4
	["Pvp70Season4"] = {
		{
			{ itemID = 41591, price = "Arena" }, --Guardian's Cloak of Battle
			{ itemID = 41592, price = "Arena" }, --Guardian's Cloak of Condemnation
			{ itemID = 44429, price = "Arena" }, --Guardian's Cloak of Power
			{ itemID = 44431, price = "Arena" }, --Guardian's Cloak of Salvation
			{ itemID = 278405, price = "Arena" }, --Guardian's Cloak of Cruelty
			{ itemID = 278404, price = "Arena" }, --Guardian's Cloak of Tyranny
		},
		{
			{ itemID = 414399, price = "Arena" }, --Guardian's Band of Accuracy
			{ itemID = 46728, price = "Arena" }, --Guardian's Band of Conquest
			{ itemID = 35129, price = "Arena" }, --Guardian's Band of Dominance
			{ itemID = 414400, price = "Arena" }, --Guardian's Band of Precision
			{ itemID = 46727, price = "Arena" }, --Guardian's Band of Reprieve
			{ itemID = 35130, price = "Arena" }, --Guardian's Band of Salvation
			{ itemID = 37927, price = "Arena" }, --Guardian's Band of Subjugation
			{ itemID = 35131, price = "Arena" }, --Guardian's Band of Triumph
			{ itemID = 278403, price = "Arena" }, --Guardian's Band of Cruelty
			{ itemID = 278400, price = "Arena" }, --Guardian's Band of Tyranny
		},
		{
			{ itemID = 35132, price = "Arena" }, --Guardian's Pendant of Conquest
			{ itemID = 35133, price = "Arena" }, --Guardian's Pendant of Dominance
			{ itemID = 37929, price = "Arena" }, --Guardian's Pendant of Reprieve
			{ itemID = 35134, price = "Arena" }, --Guardian's Pendant of Salvation
			{ itemID = 37928, price = "Arena" }, --Guardian's Pendant of Subjugation
			{ itemID = 35135, price = "Arena" }, --Guardian's Pendant of Triumph
			{ itemID = 278401, price = "Arena" }, --Guardian's Pendant of Cruelty
			{ itemID = 278402, price = "Arena" }, --Guardian's Pendant of Tyranny
		},
		{
			{ itemID = 41588, price = "Arena" }, --Battlemaster's Audacity
			{ itemID = 41587, price = "Arena" }, --Battlemaster's Celerity
			{ itemID = 41590, price = "Arena" }, --Battlemaster's Courage
			{ itemID = 46705, price = "Arena" }, --Battlemaster's Cruelty
			{ itemID = 41589, price = "Arena" }, --Battlemaster's Resolve
		},
		{
			{ itemID = 1505062, price = "5000 #faction#" }, --Resplendent Fire Opal
			{ itemID = 1505064, price = "5000 #faction#" }, --Lucent Fire Opal
			{ itemID = 1505066, price = "5000 #faction#" }, --Empowered Fire Opal
			{ itemID = 1505068, price = "5000 #faction#" }, --Durable Fire Opal
			{ itemID = 1505070, price = "5000 #faction#" }, --Piercing Evergem
			{ itemID = 1505072, price = "5000 #faction#" }, --Tense Evergem
			{ itemID = 1505074, price = "5000 #faction#" }, --Mysterious Shadowgem
			{ itemID = 1449572, price = "23000 #faction#" }, --Vindicator's Inscription of the Archmage
			{ itemID = 1449573, price = "23000 #faction#" }, --Vindicator's Inscription of the Brawler
			{ itemID = 1449576, price = "25000 #faction#" }, --Vindicator's Arcanum of the Archmage
			{ itemID = 1449577, price = "25000 #faction#" }, --Vindicator's Arcanum of the Brawler
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 33670, price = "Arena" }, --Vengeful Gladiator's Decapitator
			{ itemID = 34014, price = "Arena" }, --Vengeful Gladiator's Executioner
			{ itemID = 300136, price = "Arena" }, --Vengeful Gladiator's Battlehammer
			{ itemID = 33663, price = "Arena" }, --Vengeful Gladiator's Bonegrinder
			{ itemID = 300140, price = "Arena" }, --Vengeful Gladiator's Smasher
			{ itemID = 33727, price = "Arena" }, --Vengeful Gladiator's Painsaw
			{ itemID = 414356, price = "Arena" }, --Vengeful Gladiator's Polearm
			{ itemID = 414357, price = "Arena" }, --Vengeful Gladiator's Claymore
			{ itemID = 33688, price = "Arena" }, --Vengeful Gladiator's Greatsword
			{ itemID = 33733, price = "Arena" }, --Vengeful Gladiator's Pummeler
			{ itemID = 33762, price = "Arena" }, --Vengeful Gladiator's Slicer
			{ itemID = 414377, price = "Arena" }, --Vengeful Gladiator's Quickblade
			{ itemID = 33669, price = "Arena" }, --Vengeful Gladiator's Cleaver
			{ itemID = 34015, price = "Arena" }, --Vengeful Gladiator's Chopper
			{ itemID = 414371, price = "Arena" }, --Vengeful Gladiator's Hacker
			{ itemID = 414376, price = "Arena" }, --Vengeful Gladiator's Bonecracker
			{ itemID = 34016, price = "Arena" }, --Vengeful Gladiator's Left Render
			{ itemID = 33737, price = "Arena" }, --Vengeful Gladiator's Right Ripper
			{ itemID = 414378, price = "Arena" }, --Vengeful Gladiator's Mutilator
			{ itemID = 414379, price = "Arena" }, --Vengeful Gladiator's Shiv
			{ itemID = 33754, price = "Arena" }, --Vengeful Gladiator's Shanker
			{ itemID = 34529, price = "Arena" }, --Vengeful Gladiator's Longbow
			{ itemID = 33006, price = "Arena" }, --Vengeful Gladiator's Heavy Crossbow
			{ itemID = 34530, price = "Arena" }, --Vengeful Gladiator's Rifle
			{ itemID = 33765, price = "Arena" }, --Vengeful Gladiator's War Edge
			{ itemID = 33755, price = "Arena" }, --Vengeful Gladiator's Shield Wall
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 34997, price = "Arena" }, --Brutal Gladiator's Decapitator
			{ itemID = 414389, price = "Arena" }, --Brutal Gladiator's Executioner
			{ itemID = 414390, price = "Arena" }, --Brutal Gladiator's Battlehammer
			{ itemID = 34989, price = "Arena" }, --Brutal Gladiator's Bonegrinder
			{ itemID = 414391, price = "Arena" }, --Brutal Gladiator's Smasher
			{ itemID = 35064, price = "Arena" }, --Brutal Gladiator's Painsaw
			{ itemID = 414397, price = "Arena" }, --Brutal Gladiator's Polearm
			{ itemID = 414396, price = "Arena" }, --Brutal Gladiator's Claymore
			{ itemID = 35015, price = "Arena" }, --Brutal Gladiator's Greatsword
			{ itemID = 35071, price = "Arena" }, --Brutal Gladiator's Pummeler
			{ itemID = 35101, price = "Arena" }, --Brutal Gladiator's Slicer
			{ itemID = 35072, price = "Arena" }, --Brutal Gladiator's Quickblade
			{ itemID = 34996, price = "Arena" }, --Brutal Gladiator's Cleaver
			{ itemID = 34995, price = "Arena" }, --Brutal Gladiator's Chopper
			{ itemID = 35017, price = "Arena" }, --Brutal Gladiator's Hacker
			{ itemID = 34988, price = "Arena" }, --Brutal Gladiator's Bonecracker
			{ itemID = 35037, price = "Arena" }, --Brutal Gladiator's Left Render
			{ itemID = 35076, price = "Arena" }, --Brutal Gladiator's Right Ripper
			{ itemID = 35058, price = "Arena" }, --Brutal Gladiator's Mutilator
			{ itemID = 35095, price = "Arena" }, --Brutal Gladiator's Shiv
			{ itemID = 35093, price = "Arena" }, --Brutal Gladiator's Shanker
			{ itemID = 35047, price = "Arena" }, --Brutal Gladiator's Longbow
			{ itemID = 35018, price = "Arena" }, --Brutal Gladiator's Heavy Crossbow
			{ itemID = 35075, price = "Arena" }, --Brutal Gladiator's Rifle
			{ itemID = 35108, price = "Arena" }, --Brutal Gladiator's War Edge		
			{ itemID = 35094, price = "Arena" }, --Brutal Gladiator's Shield Wall
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 34540, price = "Arena" }, --Vengeful Gladiator's Battle Staff
			{ itemID = 300139, price = "Arena" }, --Vengeful Gladiator's Guardian Staff
			{ itemID = 33766, price = "Arena" }, --Vengeful Gladiator's War Staff
			{ itemID = 300135, price = "Arena" }, --Vengeful Gladiator's Battlemace
			{ itemID = 33687, price = "Arena" }, --Vengeful Gladiator's Gavel
			{ itemID = 300138, price = "Arena" }, --Vengeful Gladiator's Guardian Mace
			{ itemID = 33743, price = "Arena" }, --Vengeful Gladiator's Salvation
			{ itemID = 300147, price = "Arena" }, --Vengeful Gladiator's Battleslicer
			{ itemID = 33763, price = "Arena" }, --Vengeful Gladiator's Spellblade
			{ itemID = 300137, price = "Arena" }, --Vengeful Gladiator's Dagger
			{ itemID = 300148, price = "Arena" }, --Vengeful Gladiator's Magebow
			{ itemID = 34066, price = "Arena" }, --Vengeful Gladiator's Piercing Touch
			{ itemID = 33764, price = "Arena" }, --Vengeful Gladiator's Touch of Defeat
			{ itemID = 33661, price = "Arena" }, --Vengeful Gladiator's Barrier
			{ itemID = 33735, price = "Arena" }, --Vengeful Gladiator's Redoubt
			{ itemID = 33681, price = "Arena" }, --Vengeful Gladiator's Endgame
			{ itemID = 34033, price = "Arena" }, --Vengeful Gladiator's Grimoire
			{ itemID = 33736, price = "Arena" }, --Vengeful Gladiator's Reprieve
			{ itemID = 300149, price = "Arena" }, --Vengeful Gladiator's Libram of Fortitude
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 34987, price = "Arena" }, --Brutal Gladiator's Battle Staff
			{ itemID = 414392, price = "Arena" }, --Brutal Gladiator's Guardian Staff
			{ itemID = 35109, price = "Arena" }, --Brutal Gladiator's War Staff
			{ itemID = 414393, price = "Arena" }, --Brutal Gladiator's Battlemace
			{ itemID = 35014, price = "Arena" }, --Brutal Gladiator's Gavel
			{ itemID = 414394, price = "Arena" }, --Brutal Gladiator's Guardian Mace
			{ itemID = 35082, price = "Arena" }, --Brutal Gladiator's Salvation
			{ itemID = 414395, price = "Arena" }, --Brutal Gladiator's Battleslicer
			{ itemID = 35102, price = "Arena" }, --Brutal Gladiator's Spellblade
			{ itemID = 414398, price = "Arena" }, --Brutal Gladiator's Dagger
			{ itemID = 414388, price = "Arena" }, --Brutal Gladiator's Magebow
			{ itemID = 35065, price = "Arena" }, --Brutal Gladiator's Piercing Touch
			{ itemID = 35107, price = "Arena" }, --Brutal Gladiator's Touch of Defeat
			{ itemID = 34986, price = "Arena" }, --Brutal Gladiator's Barrier
			{ itemID = 35073, price = "Arena" }, --Brutal Gladiator's Redoubt
			{ itemID = 35008, price = "Arena" }, --Brutal Gladiator's Endgame
			{ itemID = 35016, price = "Arena" }, --Brutal Gladiator's Grimoire
			{ itemID = 35074, price = "Arena" }, --Brutal Gladiator's Reprieve
			{ itemID = 35039, price = "Arena" }, --Brutal Gladiator's Libram of Fortitude
		},
		{
			{ itemID = 35168, price = "Arena" }, --Guardian's Dreadweave Cuffs
			{ itemID = 35153, price = "Arena" }, --Guardian's Dreadweave Belt
			{ itemID = 35138, price = "Arena" }, --Guardian's Dreadweave Stalkers
			{ itemID = 35174, price = "Arena" }, --Guardian's Mooncloth Cuffs
			{ itemID = 35159, price = "Arena" }, --Guardian's Mooncloth Belt
			{ itemID = 35144, price = "Arena" }, --Guardian's Mooncloth Slippers
			{ itemID = 35179, price = "Arena" }, --Guardian's Silk Cuffs
			{ itemID = 35164, price = "Arena" }, --Guardian's Silk Belt
			{ itemID = 35149, price = "Arena" }, --Guardian's Silk Footguards
		},
		{
			{ itemID = 35167, price = "Arena" }, --Guardian's Dragonhide Bracers
			{ itemID = 35152, price = "Arena" }, --Guardian's Dragonhide Belt
			{ itemID = 35137, price = "Arena" }, --Guardian's Dragonhide Boots
			{ itemID = 35169, price = "Arena" }, --Guardian's Kodohide Bracers
			{ itemID = 35154, price = "Arena" }, --Guardian's Kodohide Belt
			{ itemID = 35139, price = "Arena" }, --Guardian's Kodohide Boots
			{ itemID = 35171, price = "Arena" }, --Guardian's Leather Bracers
			{ itemID = 35156, price = "Arena" }, --Guardian's Leather Belt
			{ itemID = 35141, price = "Arena" }, --Guardian's Leather Boots
			{ itemID = 35180, price = "Arena" }, --Guardian's Wyrmhide Bracers
			{ itemID = 35165, price = "Arena" }, --Guardian's Wyrmhide Belt
			{ itemID = 35150, price = "Arena" }, --Guardian's Wyrmhide Boots
		},
		{
			{ itemID = 35166, price = "Arena" }, --Guardian's Chain Bracers
			{ itemID = 35151, price = "Arena" }, --Guardian's Chain Girdle
			{ itemID = 35136, price = "Arena" }, --Guardian's Chain Sabatons
			{ itemID = 35172, price = "Arena" }, --Guardian's Linked Bracers
			{ itemID = 35157, price = "Arena" }, --Guardian's Linked Girdle
			{ itemID = 35142, price = "Arena" }, --Guardian's Linked Sabatons
			{ itemID = 35173, price = "Arena" }, --Guardian's Mail Bracers
			{ itemID = 35158, price = "Arena" }, --Guardian's Mail Girdle
			{ itemID = 35143, price = "Arena" }, --Guardian's Mail Sabatons
			{ itemID = 35177, price = "Arena" }, --Guardian's Ringmail Bracers
			{ itemID = 35162, price = "Arena" }, --Guardian's Ringmail Girdle
			{ itemID = 35147, price = "Arena" }, --Guardian's Ringmail Sabatons
		},
		{
			{ itemID = 35170, price = "Arena" }, --Guardian's Lamellar Bracers
			{ itemID = 35155, price = "Arena" }, --Guardian's Lamellar Belt
			{ itemID = 35140, price = "Arena" }, --Guardian's Lamellar Greaves
			{ itemID = 35175, price = "Arena" }, --Guardian's Ornamented Bracers
			{ itemID = 35160, price = "Arena" }, --Guardian's Ornamented Belt
			{ itemID = 35145, price = "Arena" }, --Guardian's Ornamented Greaves
			{ itemID = 35176, price = "Arena" }, --Guardian's Plate Bracers
			{ itemID = 35161, price = "Arena" }, --Guardian's Plate Belt
			{ itemID = 35146, price = "Arena" }, --Guardian's Plate Greaves
			{ itemID = 35178, price = "Arena" }, --Guardian's Scaled Bracers
			{ itemID = 35163, price = "Arena" }, --Guardian's Scaled Belt
			{ itemID = 35148, price = "Arena" }, --Guardian's Scaled Greaves
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923477, price = "Arena" }, --Vengeful Gladiator's Chain Helm
			{ itemID = 923479, price = "Arena" }, --Vengeful Gladiator's Chain Spaulders
			{ itemID = 923475, price = "Arena" }, --Vengeful Gladiator's Chain Armor
			{ itemID = 923476, price = "Arena" }, --Vengeful Gladiator's Chain Gauntlets
			{ itemID = 923478, price = "Arena" }, --Vengeful Gladiator's Chain Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true},
			{ itemID = 34992, price = "Arena" }, --Brutal Gladiator's Chain Helm
			{ itemID = 34994, price = "Arena" }, --Brutal Gladiator's Chain Spaulders
			{ itemID = 34990, price = "Arena" }, --Brutal Gladiator's Chain Armor
			{ itemID = 34991, price = "Arena" }, --Brutal Gladiator's Chain Gauntlets
			{ itemID = 34993, price = "Arena" }, --Brutal Gladiator's Chain Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923546, price = "Arena" }, --Vengeful Gladiator's Silk Cowl
			{ itemID = 923545, price = "Arena" }, --Vengeful Gladiator's Silk Amice
			{ itemID = 923548, price = "Arena" }, --Vengeful Gladiator's Silk Raiment
			{ itemID = 923547, price = "Arena" }, --Vengeful Gladiator's Silk Handguards
			{ itemID = 923549, price = "Arena" }, --Vengeful Gladiator's Silk Trousers
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35097, price = "Arena" }, --Brutal Gladiator's Silk Cowl
			{ itemID = 35096, price = "Arena" }, --Brutal Gladiator's Silk Amice
			{ itemID = 35099, price = "Arena" }, --Brutal Gladiator's Silk Raiment
			{ itemID = 35098, price = "Arena" }, --Brutal Gladiator's Silk Handguards
			{ itemID = 35100, price = "Arena" }, --Brutal Gladiator's Silk Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923506, price = "Arena" }, --Vengeful Gladiator's Leather Helm
			{ itemID = 923508, price = "Arena" }, --Vengeful Gladiator's Leather Spaulders
			{ itemID = 923509, price = "Arena" }, --Vengeful Gladiator's Leather Tunic
			{ itemID = 923505, price = "Arena" }, --Vengeful Gladiator's Leather Gloves
			{ itemID = 923507, price = "Arena" }, --Vengeful Gladiator's Leather Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35033, price = "Arena" }, --Brutal Gladiator's Leather Helm
			{ itemID = 35035, price = "Arena" }, --Brutal Gladiator's Leather Spaulders
			{ itemID = 35036, price = "Arena" }, --Brutal Gladiator's Leather Tunic
			{ itemID = 35032, price = "Arena" }, --Brutal Gladiator's Leather Gloves
			{ itemID = 35034, price = "Arena" }, --Brutal Gladiator's Leather Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923472, price = "Arena" }, --Vengeful Gladiator's Plate Helm
			{ itemID = 923474, price = "Arena" }, --Vengeful Gladiator's Plate Shoulders
			{ itemID = 923470, price = "Arena" }, --Vengeful Gladiator's Plate Chestpiece
			{ itemID = 923471, price = "Arena" }, --Vengeful Gladiator's Plate Gauntlets
			{ itemID = 923473, price = "Arena" }, --Vengeful Gladiator's Plate Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35068, price = "Arena" }, --Brutal Gladiator's Plate Helm
			{ itemID = 35070, price = "Arena" }, --Brutal Gladiator's Plate Shoulders
			{ itemID = 35066, price = "Arena" }, --Brutal Gladiator's Plate Chestpiece
			{ itemID = 35067, price = "Arena" }, --Brutal Gladiator's Plate Gauntlets
			{ itemID = 35069, price = "Arena" }, --Brutal Gladiator's Plate Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923486, price = "Arena" }, --Vengeful Gladiator's Dreadweave Hood
			{ itemID = 923488, price = "Arena" }, --Vengeful Gladiator's Dreadweave Mantle
			{ itemID = 923489, price = "Arena" }, --Vengeful Gladiator's Dreadweave Robe
			{ itemID = 923485, price = "Arena" }, --Vengeful Gladiator's Dreadweave Gloves
			{ itemID = 923487, price = "Arena" }, --Vengeful Gladiator's Dreadweave Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35004, price = "Arena" }, --Brutal Gladiator's Dreadweave Hood
			{ itemID = 35006, price = "Arena" }, --Brutal Gladiator's Dreadweave Mantle
			{ itemID = 35007, price = "Arena" }, --Brutal Gladiator's Dreadweave Robe
			{ itemID = 35003, price = "Arena" }, --Brutal Gladiator's Dreadweave Gloves
			{ itemID = 35005, price = "Arena" }, --Brutal Gladiator's Dreadweave Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 33683, price = "Arena" }, --Vengeful Gladiator's Felweave Cowl
			{ itemID = 33682, price = "Arena" }, --Vengeful Gladiator's Felweave Amice
			{ itemID = 33685, price = "Arena" }, --Vengeful Gladiator's Felweave Raiment
			{ itemID = 33684, price = "Arena" }, --Vengeful Gladiator's Felweave Handguards
			{ itemID = 33686, price = "Arena" }, --Vengeful Gladiator's Felweave Trousers
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35010, price = "Arena" }, --Brutal Gladiator's Felweave Cowl
			{ itemID = 35009, price = "Arena" }, --Brutal Gladiator's Felweave Amice
			{ itemID = 35012, price = "Arena" }, --Brutal Gladiator's Felweave Raiment
			{ itemID = 35011, price = "Arena" }, --Brutal Gladiator's Felweave Handguards
			{ itemID = 35013, price = "Arena" }, --Brutal Gladiator's Felweave Trousers
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923481, price = "Arena" }, --Vengeful Gladiator's Dragonhide Helm
			{ itemID = 923483, price = "Arena" }, --Vengeful Gladiator's Dragonhide Spaulders
			{ itemID = 923484, price = "Arena" }, --Vengeful Gladiator's Dragonhide Tunic
			{ itemID = 923480, price = "Arena" }, --Vengeful Gladiator's Dragonhide Gloves
			{ itemID = 923482, price = "Arena" }, --Vengeful Gladiator's Dragonhide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 34999, price = "Arena" }, --Brutal Gladiator's Dragonhide Helm
			{ itemID = 35001, price = "Arena" }, --Brutal Gladiator's Dragonhide Spaulders
			{ itemID = 35002, price = "Arena" }, --Brutal Gladiator's Dragonhide Tunic
			{ itemID = 34998, price = "Arena" }, --Brutal Gladiator's Dragonhide Gloves
			{ itemID = 35000, price = "Arena" }, --Brutal Gladiator's Dragonhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923551, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Helm
			{ itemID = 923553, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Spaulders
			{ itemID = 923554, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Tunic
			{ itemID = 923550, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Gloves
			{ itemID = 923552, price = "Arena" }, --Vengeful Gladiator's Wyrmhide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35112, price = "Arena" }, --Brutal Gladiator's Wyrmhide Helm
			{ itemID = 35114, price = "Arena" }, --Brutal Gladiator's Wyrmhide Spaulders
			{ itemID = 35115, price = "Arena" }, --Brutal Gladiator's Wyrmhide Tunic
			{ itemID = 35111, price = "Arena" }, --Brutal Gladiator's Wyrmhide Gloves
			{ itemID = 35113, price = "Arena" }, --Brutal Gladiator's Wyrmhide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923496, price = "Arena" }, --Vengeful Gladiator's Kodohide Helm
			{ itemID = 923498, price = "Arena" }, --Vengeful Gladiator's Kodohide Spaulders
			{ itemID = 923499, price = "Arena" }, --Vengeful Gladiator's Kodohide Tunic
			{ itemID = 923495, price = "Arena" }, --Vengeful Gladiator's Kodohide Gloves
			{ itemID = 923497, price = "Arena" }, --Vengeful Gladiator's Kodohide Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35023, price = "Arena" }, --Brutal Gladiator's Kodohide Helm
			{ itemID = 35025, price = "Arena" }, --Brutal Gladiator's Kodohide Spaulders
			{ itemID = 35026, price = "Arena" }, --Brutal Gladiator's Kodohide Tunic
			{ itemID = 35022, price = "Arena" }, --Brutal Gladiator's Kodohide Gloves
			{ itemID = 35024, price = "Arena" }, --Brutal Gladiator's Kodohide Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923512, price = "Arena" }, --Vengeful Gladiator's Linked Helm
			{ itemID = 923514, price = "Arena" }, --Vengeful Gladiator's Linked Spaulders
			{ itemID = 923510, price = "Arena" }, --Vengeful Gladiator's Linked Armor
			{ itemID = 923511, price = "Arena" }, --Vengeful Gladiator's Linked Gauntlets
			{ itemID = 923513, price = "Arena" }, --Vengeful Gladiator's Linked Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35044, price = "Arena" }, --Brutal Gladiator's Linked Helm
			{ itemID = 35046, price = "Arena" }, --Brutal Gladiator's Linked Spaulders
			{ itemID = 35042, price = "Arena" }, --Brutal Gladiator's Linked Armor
			{ itemID = 35043, price = "Arena" }, --Brutal Gladiator's Linked Gauntlets
			{ itemID = 35045, price = "Arena" }, --Brutal Gladiator's Linked Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923517, price = "Arena" }, --Vengeful Gladiator's Mail Helm
			{ itemID = 923519, price = "Arena" }, --Vengeful Gladiator's Mail Spaulders
			{ itemID = 923515, price = "Arena" }, --Vengeful Gladiator's Mail Armor
			{ itemID = 923516, price = "Arena" }, --Vengeful Gladiator's Mail Gauntlets
			{ itemID = 923518, price = "Arena" }, --Vengeful Gladiator's Mail Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35050, price = "Arena" }, --Brutal Gladiator's Mail Helm
			{ itemID = 35052, price = "Arena" }, --Brutal Gladiator's Mail Spaulders
			{ itemID = 35048, price = "Arena" }, --Brutal Gladiator's Mail Armor
			{ itemID = 35049, price = "Arena" }, --Brutal Gladiator's Mail Gauntlets
			{ itemID = 35051, price = "Arena" }, --Brutal Gladiator's Mail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923532, price = "Arena" }, --Vengeful Gladiator's Ringmail Helm
			{ itemID = 923534, price = "Arena" }, --Vengeful Gladiator's Ringmail Spaulders
			{ itemID = 923530, price = "Arena" }, --Vengeful Gladiator's Ringmail Armor
			{ itemID = 923531, price = "Arena" }, --Vengeful Gladiator's Ringmail Gauntlets
			{ itemID = 923533, price = "Arena" }, --Vengeful Gladiator's Ringmail Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35079, price = "Arena" }, --Brutal Gladiator's Ringmail Helm
			{ itemID = 35081, price = "Arena" }, --Brutal Gladiator's Ringmail Spaulders
			{ itemID = 35077, price = "Arena" }, --Brutal Gladiator's Ringmail Armor
			{ itemID = 35078, price = "Arena" }, --Brutal Gladiator's Ringmail Gauntlets
			{ itemID = 35080, price = "Arena" }, --Brutal Gladiator's Ringmail Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923504, price = "Arena" }, --Vengeful Gladiator's Lamellar Helm
			{ itemID = 923503, price = "Arena" }, --Vengeful Gladiator's Lamellar Shoulders
			{ itemID = 923500, price = "Arena" }, --Vengeful Gladiator's Lamellar Chestpiece
			{ itemID = 923501, price = "Arena" }, --Vengeful Gladiator's Lamellar Gauntlets
			{ itemID = 923502, price = "Arena" }, --Vengeful Gladiator's Lamellar Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35029, price = "Arena" }, --Brutal Gladiator's Lamellar Helm
			{ itemID = 35031, price = "Arena" }, --Brutal Gladiator's Lamellar Shoulders
			{ itemID = 35027, price = "Arena" }, --Brutal Gladiator's Lamellar Chestpiece
			{ itemID = 35028, price = "Arena" }, --Brutal Gladiator's Lamellar Gauntlets
			{ itemID = 35030, price = "Arena" }, --Brutal Gladiator's Lamellar Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923542, price = "Arena" }, --Vengeful Gladiator's Scaled Helm
			{ itemID = 923544, price = "Arena" }, --Vengeful Gladiator's Scaled Shoulders
			{ itemID = 923540, price = "Arena" }, --Vengeful Gladiator's Scaled Chestpiece
			{ itemID = 923541, price = "Arena" }, --Vengeful Gladiator's Scaled Gauntlets
			{ itemID = 923543, price = "Arena" }, --Vengeful Gladiator's Scaled Legguards
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35090, price = "Arena" }, --Brutal Gladiator's Scaled Helm
			{ itemID = 35092, price = "Arena" }, --Brutal Gladiator's Scaled Shoulders
			{ itemID = 35088, price = "Arena" }, --Brutal Gladiator's Scaled Chestpiece
			{ itemID = 35089, price = "Arena" }, --Brutal Gladiator's Scaled Gauntlets
			{ itemID = 35091, price = "Arena" }, --Brutal Gladiator's Scaled Legguards
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923527, price = "Arena" }, --Vengeful Gladiator's Ornamented Headcover
			{ itemID = 923529, price = "Arena" }, --Vengeful Gladiator's Ornamented Spaulders
			{ itemID = 923525, price = "Arena" }, --Vengeful Gladiator's Ornamented Chestguard
			{ itemID = 923526, price = "Arena" }, --Vengeful Gladiator's Ornamented Gloves
			{ itemID = 923528, price = "Arena" }, --Vengeful Gladiator's Ornamented Legplates
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35061, price = "Arena" }, --Brutal Gladiator's Ornamented Headcover
			{ itemID = 35063, price = "Arena" }, --Brutal Gladiator's Ornamented Spaulders
			{ itemID = 35059, price = "Arena" }, --Brutal Gladiator's Ornamented Chestguard
			{ itemID = 35060, price = "Arena" }, --Brutal Gladiator's Ornamented Gloves
			{ itemID = 35062, price = "Arena" }, --Brutal Gladiator's Ornamented Legplates
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923536, price = "Arena" }, --Vengeful Gladiator's Satin Hood
			{ itemID = 923538, price = "Arena" }, --Vengeful Gladiator's Satin Mantle
			{ itemID = 923539, price = "Arena" }, --Vengeful Gladiator's Satin Robe
			{ itemID = 923535, price = "Arena" }, --Vengeful Gladiator's Satin Gloves
			{ itemID = 923537, price = "Arena" }, --Vengeful Gladiator's Satin Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35084, price = "Arena" }, --Brutal Gladiator's Satin Hood
			{ itemID = 35086, price = "Arena" }, --Brutal Gladiator's Satin Mantle
			{ itemID = 35087, price = "Arena" }, --Brutal Gladiator's Satin Robe
			{ itemID = 35083, price = "Arena" }, --Brutal Gladiator's Satin Gloves
			{ itemID = 35085, price = "Arena" }, --Brutal Gladiator's Satin Leggings
		},
		{
			{ icon = "INV_Box_01", name = "Honor Points"},
			{ itemID = 923521, price = "Arena" }, --Vengeful Gladiator's Mooncloth Hood
			{ itemID = 923523, price = "Arena" }, --Vengeful Gladiator's Mooncloth Mantle
			{ itemID = 923524, price = "Arena" }, --Vengeful Gladiator's Mooncloth Robe
			{ itemID = 923520, price = "Arena" }, --Vengeful Gladiator's Mooncloth Gloves
			{ itemID = 923522, price = "Arena" }, --Vengeful Gladiator's Mooncloth Leggings
			{ icon = "INV_Box_01", name = "Arena Points", pageBreak = true },
			{ itemID = 35054, price = "Arena" }, --Brutal Gladiator's Mooncloth Hood
			{ itemID = 35056, price = "Arena" }, --Brutal Gladiator's Mooncloth Mantle
			{ itemID = 35057, price = "Arena" }, --Brutal Gladiator's Mooncloth Robe
			{ itemID = 35053, price = "Arena" }, --Brutal Gladiator's Mooncloth Gloves
			{ itemID = 35055, price = "Arena" }, --Brutal Gladiator's Mooncloth Leggings
		},
	}
})