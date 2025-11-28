local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

--------------------------------------------------------------------------------
-- Text replacement function
--------------------------------------------------------------------------------
AtlasLoot.FixedItemText = {
    --Intact Vial of Lady Vashj
    [450000] = BabbleInventory["Quest"],
    [450002] = BabbleInventory["Quest"],
    [1450002] = BabbleInventory["Quest"],
    [450004] = BabbleInventory["Quest"],
    --Intact Vial of Kael'thas Sunstrider
    [450001] = BabbleInventory["Quest"],
    [450003] = BabbleInventory["Quest"],
    [1450003] = BabbleInventory["Quest"],
    [450005] = BabbleInventory["Quest"],
    -- Magtheridon's Head
    [32385] = BabbleInventory["Quest"], 
    [122561] = BabbleInventory["Quest"],
    [1332385] = BabbleInventory["Quest"],
    [232385] = BabbleInventory["Quest"],
    [32405] = BabbleInventory["Quest"], -- Verdant Sphere
    [29906] = BabbleInventory["Quest"], -- Vashj's Vial Remnant
    [29905] = BabbleInventory["Quest"], -- Kael's Vial Remnant
    [98570] = AL["Mystic Enchanting"],
    [229739] = AL["Epic Shoulder Enchants"],
    [222637] = AL["Head Enchants"],
    [29434] = AL["Token"],
    [400751] = AL["Token"],
}

local txtSubstitution = {
    -- Body Slot
    { "INVTYPE_HEAD", BabbleInventory["Head"] },
    { "INVTYPE_NECK, Miscellaneous", BabbleInventory["Neck"] },
    { "INVTYPE_SHOULDER", BabbleInventory["Shoulder"] },
    { "INVTYPE_CLOAK, Cloth", BabbleInventory["Back"] },
    { "INVTYPE_CLOAK, Miscellaneous", BabbleInventory["Back"] },
    { "INVTYPE_CHEST", BabbleInventory["Chest"] },
    { "INVTYPE_BODY", BabbleInventory["Shirt"] },
    { "INVTYPE_ROBE", BabbleInventory["Chest"] },
    { "INVTYPE_TABARD, Miscellaneous", BabbleInventory["Tabard"] },
    { "INVTYPE_WRIST", BabbleInventory["Wrist"] },
    { "INVTYPE_HAND", BabbleInventory["Hands"] },
    { "INVTYPE_WAIST", BabbleInventory["Waist"] },
    { "INVTYPE_LEGS", BabbleInventory["Legs"] },
    { "INVTYPE_FEET", BabbleInventory["Feet"] },
    { "INVTYPE_FINGER, Miscellaneous", BabbleInventory["Ring"] },
    { "INVTYPE_TRINKET, Miscellaneous", BabbleInventory["Trinket"] },
    { "INVTYPE_RELIC, Miscellaneous", BabbleInventory["Relic"] },

    -- Weapon Weilding
    { "INVTYPE_WEAPON, ", "" },
    { "INVTYPE_2HWEAPON, ", "" },
    { "INVTYPE_WEAPONMAINHAND, One%-Handed Swords", AL["Main-Hand Sword"] },
    { "INVTYPE_WEAPONMAINHAND, One%-Handed Maces", AL["Main-Hand Mace"] },
    { "INVTYPE_WEAPONMAINHAND, Daggers", AL["Main-Hand Dagger"] },
    { "INVTYPE_WEAPONMAINHAND, Fist Weapons", AL["Main-Hand Fist Weapon"] },
    { "INVTYPE_WEAPONOFFHAND, One%-Handed Swords", AL["Off-Hand Sword"] },
    { "INVTYPE_WEAPONOFFHAND, Fist Weapons", AL["Off-Hand Fist Weapon"] },
    { "INVTYPE_WEAPONOFFHAND, ", "" },
    { "INVTYPE_RANGED, ", "" },
    { "INVTYPE_SHIELD, ", "" },
    { "INVTYPE_HOLDABLE, Miscellaneous", BabbleInventory["Off Hand"] },
    { "INVTYPE_THROWN, ", "" },

    -- Weapon Type
    { "INVTYPE_RANGEDRIGHT, Crossbows", BabbleInventory["Crossbow"] },
    { "INVTYPE_RANGEDRIGHT, Gun", BabbleInventory["Gun"] },
    { "INVTYPE_RANGEDRIGHT, Wands", BabbleInventory["Wand"] },
    { "INVTYPE_RELIC, Idols", BabbleInventory["Idol"] },
    { "INVTYPE_RELIC, Totem", BabbleInventory["Totem"] },
    { "INVTYPE_RELIC, Libram", BabbleInventory["Libram"] },
    { "INVTYPE_BAG, Bag", BabbleInventory["Bag"] },
    { "INVTYPE_BAG, Soul Bag", BabbleInventory["Soul Bag"] },
    { "INVTYPE_AMMO, Junk", "Ammo"},
    { "INVTYPE_AMMO, Bullet", "Ammo"},
    { "One%-Handed Maces", AL["One-Handed Mace"] },
    { "Two%-Handed Maces", AL["Two-Handed Mace"] },
    { "One%-Handed Swords", AL["One-Handed Sword"] },
    { "Two%-Handed Swords", AL["Two-Handed Sword"] },
    { "Money", AL["Currency"] },
    { "Materials", BabbleInventory["Reagent"] },
    { "Other", AL["Misc"] },
    { "Junk", AL["Misc"] },
    { "%(OBSOLETE%)", ""},

    -- Gems
    { "Red", AL["Red Gem"] },
    { "Blue", AL["Blue Gem"] },
    { "Yellow", AL["Yellow Gem"] },
    { "Purple", AL["Purple Gem"] },
    { "Orange", AL["Orange Gem"] },
    { "Green", AL["Green Gem"] },

    -- Text Colouring
    { "=q0=", "|cff9d9d9d" },
    { "=q1=", "|cffFFFFFF" },
    { "=q2=", "|cff1eff00" },
    { "=q3=", "|cff0070dd" },
    { "=q4=", "|cffa335ee" },
    { "=q5=", "|cffFF8000" },
    { "=q6=", "|cffFF0000" },
    { "=q7=", "|cffe6cc80" },
    { "=ec1=", "|cffFF8400" },
    { "=ds=", "|cffFFd200" },

    -- Currency Icons
    { "#gold#", "|TInterface\\AddOns\\AtlasLoot\\Images\\gold:0|t" },
    { "#silver#", "|TInterface\\AddOns\\AtlasLoot\\Images\\silver:0|t" },
    { "#copper#", "|TInterface\\AddOns\\AtlasLoot\\Images\\bronze:0|t" },
    { "#wsg#", "|TInterface\\Icons\\INV_Misc_Rune_07:0|t" },
    { "#ab#", "|TInterface\\Icons\\INV_Jewelry_Amulet_07:0|t" },
    { "#av#", "|TInterface\\Icons\\INV_Jewelry_Necklace_21:0|t" },
    { "#eos#", "|TInterface\\Icons\\Spell_Nature_EyeOfTheStorm:0|t" },
    { "#arena#", "|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:14:14:2:-1|t" },
    { "#markthrallmar#", "|TInterface\\Icons\\INV_Misc_Token_Thrallmar:0|t" },
    { "#markhhold#", "|TInterface\\Icons\\INV_Misc_Token_HonorHold:0|t" },
    { "#halaabattle#", "|TInterface\\Icons\\INV_Misc_Rune_08:0|t" },
    { "#halaaresearch#", "|TInterface\\Icons\\INV_Misc_Rune_09:0|t" },
    { "#spiritshard#", "|TInterface\\Icons\\INV_Jewelry_FrostwolfTrinket_04:0|t" },
    { "#wintergrasp#", "|TInterface\\Icons\\INV_Misc_Platnumdisks:0|t" },
    { "#tokenofprestige#", "|TInterface\\Icons\\Spell_Holy_MindSooth:0|t" },
    { "#marks#", "|TInterface\\Icons\\Mail_GMIcon:0|t" },
    { "#bazaar#", "|TInterface\\Icons\\Spell_Shadow_Teleport:0|t" },
    { "#wintergraspmark#", "|TInterface\\Icons\\INV_Jewelry_Ring_66:0|t" },
    { "#venturecoin#", "|TInterface\\Icons\\INV_Misc_Coin_16:0|t" },
    { "#heroic#", "|TInterface\\Icons\\Spell_Holy_ChampionsBond:0|t" },
    { "#eofvalor#", "|TInterface\\Icons\\Spell_Holy_ProclaimChampion_02:0|t" },
    { "#eofheroism#", "|TInterface\\Icons\\Spell_Holy_ProclaimChampion:0|t" },
    { "#eofconquest#", "|TInterface\\Icons\\Spell_Holy_ChampionsGrace:0|t" },
    { "#eoftriumph#", "|TInterface\\Icons\\spell_holy_summonchampion:0|t" },
    { "#eoffrost#", "|TInterface\\Icons\\inv_misc_frostemblem_01:0|t" },
    { "#trophyofthecrusade#", "|TInterface\\Icons\\INV_Misc_Trophy_Argent:0|t" },
    { "#darkmoon#", "|TInterface\\Icons\\INV_Misc_Ticket_Darkmoon_01:0|t" },
    { "#noblegarden#", "|TInterface\\Icons\\Achievement_Noblegarden_Chocolate_Egg:0|t" },
    { "#brewfest#", "|TInterface\\Icons\\INV_Misc_Coin_01:0|t" },
    { "#ccombat#", "|TInterface\\Icons\\INV_Jewelry_Talisman_06:0|t" },
    { "#champseal#", "|TInterface\\Icons\\Ability_Paladin_ArtofWar:0|t" },
    { "#champwrit#", "|TInterface\\Icons\\INV_Scroll_11:0|t" },
    { "#ctactical#", "|TInterface\\Icons\\INV_Jewelry_Amulet_02:0|t" },
    { "#clogistics#", "|TInterface\\Icons\\INV_Jewelry_Necklace_16:0|t" },
    { "#cremulos#", "|TInterface\\Icons\\INV_Jewelry_Necklace_14:0|t" },
    { "#ccenarius#", "|TInterface\\Icons\\INV_Jewelry_Necklace_12:0|t" },
    { "#zandalar#", "|TInterface\\Icons\\INV_Misc_Coin_08:0|t" },
    { "#glowcap#", "|TInterface\\Icons\\INV_Mushroom_02:0|t" },
    { "#ogrilashard#", "|TInterface\\Icons\\INV_Misc_Apexis_Shard:0|t" },
    { "#ogrilacrystal#", "|TInterface\\Icons\\INV_Misc_Apexis_Crystal:0|t" },
    { "#winterfinclam#", "|TInterface\\Icons\\INV_Misc_Shell_03:0|t" },
    { "#horde#", "|TInterface\\AddOns\\AtlasLoot\\Images\\Horde:14:14:0:-1|t" },
    { "#alliance#", "|TInterface\\AddOns\\AtlasLoot\\Images\\Alliance:16:16:0:-2|t" },
    { "#fireflower#", "|TInterface\\Icons\\INV_SummerFest_FireFlower:0|t" },
    { "#t10mark#", "|TInterface\\Icons\\ability_paladin_shieldofthetemplar:0|t" },
	{ "#valentineday#", "|TInterface\\Icons\\inv_valentinescard01:0|t" },
	{ "#valentineday2#", "|TInterface\\Icons\\inv_jewelry_necklace_43:0|t" },

    { "Herb", "Herbalism" },
    { "Item Enhancement", "Enchant" },
    { "Weapon Enchantment", "Enchanting" },
    { "Armor Enchantment", "Enchanting" },
    { "Simple", "Gems" },
}

function AtlasLoot:FixText(text)
    if not text then return end
    for _, subTable in pairs (txtSubstitution) do
        text = gsub(text, subTable[1], subTable[2])
    end

    local englishFaction, _ = UnitFactionGroup("player")
    if englishFaction == "Horde" then
        text = gsub(text, "#faction#", "|TInterface\\AddOns\\AtlasLoot\\Images\\Horde:14:14:0:-1|t")
        text = gsub(text, "#factionoutlandPvP#", "|TInterface\\AddOns\\AtlasLoot\\Images\\Horde:0|t")
        text = gsub(text, "#markthrallmarhhold#", "|TInterface\\Icons\\INV_Misc_Token_Thrallmar:0|t")
    else
        text = gsub(text, "#faction#", "|TInterface\\AddOns\\AtlasLoot\\Images\\Alliance:16:16:0:-2|t")
        text = gsub(text, "#factionoutlandPvP#", "|TInterface\\AddOns\\AtlasLoot\\Images\\Alliance:0|t")
        text = gsub(text, "#markthrallmarhhold#", "|TInterface\\Icons\\INV_Misc_Token_HonorHold:0|t")
    end
        text = BabbleBoss[text]
        text = BabbleInventory[text]
        text = BabbleZone[text]
        text = BabbleFaction[text]
        text = AL[text]
    return text
end
