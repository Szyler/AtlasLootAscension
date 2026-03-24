local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

----------------
--- Factions ---
----------------

------------
--- Misc ---
------------
AtlasLoot:AddItemData("dontSort", {
    ["DesolaceCentaurClans"] = {
        {
            { itemID = 6789 }, --Ceremonial Centaur Blanket
            { itemID = 6788 }, --Magram Hunter's Belt
        },
        {
            { itemID = 6773 }, --Gelkis Marauder Chain
            { itemID = 6774 }, --Uthek's Finger
        },
    },

    ["Wintersaber"] = {
        {
            { itemID = 13086 },    --Reins of the Winterspring Frostsaber
        },
    },

    ["ArathiBasinFactions"] = {
        {
            { itemID = 20132 }, --Arathor Battle Tabard
        },
        {
            { itemID = 20131 }, --Battle Tabard of the Defilers
        },
    },

    -------------------
    --- Argent Dawn ---
    -------------------

    ["Argent"] = {
        {
            { itemID = 22689 }, --Sanctified Leather Helm
            { itemID = 22690 }, --Leggings of the Plague Hunter
            { itemID = 22681 }, --Band of Piety
            { itemID = 22680 }, --Band of Resolution
            { itemID = 22688 }, --Verimonde's Last Resort
            { itemID = 22679 }, --Supply Bag
            { itemID = 22638 }, --Shadow Guard
            { itemID = 22523 }, --Insignia of the Dawn
            { itemID = 12844 }, --Argent Dawn Valor Token
            { itemID = 22667 }, --Bracers of Hope
            { itemID = 22668 }, --Bracers of Subterfuge
            { itemID = 22657 }, --Amulet of the Dawn
            { itemID = 22659 }, --Medallion of the Dawn
            { itemID = 22678 }, --Talisman of Ascendance
            { itemID = 22656 }, --The Purifier
            { itemID = 22636 }, --Ice Guard
            { itemID = 22524 }, --Insignia of the Crusade
        },
        {
            { itemID = 13724 }, --Enriched Manna Biscuit
            { itemID = 23122 }, --Consecrated Sharpening Stone
            { itemID = 23123 }, --Blessed Wizard Oil
        },
        {
            { itemID = 1519874 },                -- Crusader's Libram
            { itemID = 1519875 },                -- Idol of the Fang
            { itemID = 23084 },                  -- Gloves of Undead Cleansing
            { itemID = 23085 },                  -- Robe of Undead Cleansing	
            { itemID = 23091 },                  -- Bracers of Undead Cleansing
            { itemID = 13482,  pageBreak = true }, --Recipe: Transmute Air to Fire
            { itemID = 19203 },                  --Plans: Girdle of the Dawn
            { itemID = 19446 },                  --Formula: Enchant Bracer - Mana Regeneration
            { itemID = 19442 },                  --Formula: Powerful Anti-Venom
            { itemID = 19328 },                  --Pattern: Dawn Treaders
            { itemID = 19216 },                  --Pattern: Argent Boots
        },
        {
            { itemID = 1519867 },                -- Arcanist's Cloak
            { itemID = 1519883 },                -- Batleather Armbands
            { itemID = 1519884 },                -- Spaulders of Dusk
            { itemID = 856004 },                 -- Breakthrough Charging Pauldrons
            { itemID = 856005 },                 -- Purging Blessed Blade
            { itemID = 1519810 },                -- Hallowed Gauntlets
            { itemID = 18171 },                  --Arcane Mantle of the Dawn
            { itemID = 18169 },                  --Flame Mantle of the Dawn
            { itemID = 18170 },                  --Frost Mantle of the Dawn
            { itemID = 18172 },                  --Nature Mantle of the Dawn
            { itemID = 18173 },                  --Shadow Mantle of the Dawn
            { itemID = 19205,  pageBreak = true }, --Plans: Gloves of the Dawn
            { itemID = 19447 },                  --Formula: Enchant Bracer - Healing
            { itemID = 19329 },                  --Pattern: Golden Mantle of the Dawn
            { itemID = 19217 },                  --Pattern: Argent Shoulders
            { itemID = 13810 },                  --Blessed Sunfruit
            { itemID = 13813 },                  --Blessed Sunfruit Juice
        },
        {
            { itemID = 43072 },   -- Blessed Robe of Undead Cleansing
            { itemID = 43073 },   -- Blessed Gloves of Undead Cleansing
            { itemID = 43074 },   -- Blessed Mantle of Undead Cleansing
            { itemID = 43075 },   -- Blessed Trousers of Undead Cleansing
            { itemID = 43076 },   -- Blessed Tunic of Undead Slaying
            { itemID = 43077 },   -- Blessed Shoulderpads of Undead Slaying
            { itemID = 43079 },   -- Blessed Leggings of Undead Slaying
            { itemID = 43080 },   -- Blessed Hauberk of Undead Slaying
            { itemID = 43081 },   -- Blessed Pauldrons of Undead Slaying
            { itemID = 43082 },   -- Blessed Handguards of Undead Slaying
            { itemID = 43083 },   -- Blessed Greaves of Undead Slaying
            { itemID = 43078 },   -- Blessed Grips of Undead Slaying
            { itemID = 43070 },   -- Blessed Gauntlets of Undead Slaying
            { itemID = 43069 },   -- Blessed Breastplate of Undead Slaying
            { itemID = 43068 },   -- Blessed Spaulders of Undead Slaying
            { itemID = 43071 },   -- Blessed Legplates of Undead Slaying
            { itemID = 1519880 }, -- Crusader's Girdle
            { itemID = 1519882 }, -- Darkened Leather Woolies
            { itemID = 1519881 }, -- Stompers of the Argent Dawn
            { itemID = 1519865 }, -- Purified Necklace of the Damned
            { itemID = 856003 },  -- The Light's Hope
            { itemID = 1519800 }, -- Light's Hope Arbalest
            { itemID = 1519811 }, -- Argent Dawn Blessed Breastplate
            { itemID = 18182 },   --Chromatic Mantle of the Dawn
        },
    },
    ---------------------------------------------------
    --- Bloodsail Buccaneers & Hydraxian Waterlords ---
    ---------------------------------------------------

    ["Bloodsail"] = {
        {
            { icon = "INV_Helmet_66", name = "Neutral" },
            { itemID = 22742 }, --Bloodsail Shirt
            { itemID = 22743 }, --Bloodsail Sash
            { itemID = 22745 }, --Bloodsail Pants
            { itemID = 22744 }, --Bloodsail Boots
            { icon = "INV_Helmet_66", name = "Friendly" },
            { itemID = 12185 }, --Bloodsail Admiral's Hat
        },
    },

    ["Hydraxian"] = {
		{
			{ itemID = 277936 }, -- Hound Scale Cloak
			{ itemID = 277937 }, -- Hydro-Pendant
			{ itemID = 277938 }, -- Firelord Cuff
		},
		{
			{ itemID = 277939 }, -- Etched Sapphire Ring
			{ itemID = 277940 }, -- Etched Emerald Ring
			{ itemID = 277941 }, -- Etched Amethyst Ring
			{ itemID = 277942 }, -- Etched Ruby Ring
		},
		{
			{ itemID = 22754 }, -- Eternal Quintessence
			{ itemID = 277927 }, -- Hydrothermal Pauldrons
			{ itemID = 277928 }, -- Dark Iron Greathelm
			{ itemID = 277929 }, -- Lavacast Greaves
			{ itemID = 277930 }, -- Thermal Gauntlets
			{ itemID = 277931 }, -- Serpentine Cord
			{ itemID = 277932 }, -- Hydraxian Pearl
			{ itemID = 277933 }, -- Flamewaker Sash
			{ itemID = 277934 }, -- Magus Spaulders
			{ itemID = 277935 }, -- Tide-stitched Vest
			{ itemID = 277986 }, -- Shimmering Coastline Crystal		},
		},
    },
    -------------------------
    --- Brood of Nozdormu ---
    -------------------------

    ["AQBroodRings"] = {
        {
            { icon = "INV_Jewelry_Ring_40", name = "Path of the Conqueror" },
            { itemID = 21201 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21202 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21203 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21204 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21205 }, --Signet Ring of the Bronze Dragonflight
            { icon = "INV_Jewelry_Ring_40", name = "Path of the Invoker" },
            { itemID = 21206 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21207 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21208 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21209 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21210 }, --Signet Ring of the Bronze Dragonflight
            { icon = "INV_Jewelry_Ring_40", name = "Path of the Protector", pageBreak = true },
            { itemID = 21196 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21197 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21198 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21199 }, --Signet Ring of the Bronze Dragonflight
            { itemID = 21200 }, --Signet Ring of the Bronze Dragonflight
        },
    },

    -----------------------
    --- Cenarion Circle ---
    -----------------------

    ["Cenarion"] = {
        {
            { itemID = 22209 }, --Plans: Heavy Obsidian Belt
            { itemID = 22768 }, --Plans: Ironvine Belt
            { itemID = 20732 }, --Formula: Enchant Cloak - Greater Fire Resistance
            { itemID = 22769 }, --Pattern: Bramblewood Belt
            { itemID = 20509 }, --Pattern: Sandstalker Bracers
            { itemID = 20506 }, --Pattern: Spitfire Bracers
            { itemID = 22772 }, --Pattern: Sylvan Shoulders
            { itemID = 22310 }, --Pattern: Cenarion Herb Bag
            { icon = "INV_QirajIdol_Amber", name = "Token Hand-Ins", pageBreak = true },
            { itemID = 21187 }, --Earthweave Cloak
            { itemID = 21178 }, --Gloves of Earthen Power
            { itemID = 21179 }, --Band of Earthen Wrath
            { itemID = 20802 }, --Cenarion Combat Badge
            { itemID = 20800 }, --Cenarion Logistics Badge
            { itemID = 20801 }, --Cenarion Tactical Badge
            { itemID = 21508 }, --Mark of Cenarius
            { itemID = 21515 }, --Mark of Remulos
        },
        {
            { itemID = 1519873 }, -- Sandcovered Libram
            { itemID = 1519872 }, -- Sandcovered Relic
            { itemID = 1519871 }, -- Sandcovered Idol
            { itemID = 22767 },   --Plans: Ironvine Gloves
            { itemID = 22214 },   --Plans: Light Obsidian Belt
            { itemID = 20733 },   --Formula: Enchant Cloak - Greater Nature Resistance
            { itemID = 22770 },   --Pattern: Bramblewood Boots
            { itemID = 20510 },   --Pattern: Sandstalker Gauntlets
            { itemID = 20507 },   --Pattern: Spitfire Gauntlets
            { itemID = 22773 },   --Pattern: Sylvan Crown
            { icon = "INV_QirajIdol_Amber", name = "Token Hand-Ins", pageBreak = true },
            { itemID = 21183 },   --Earthpower Vest
            { itemID = 21182 },   --Band of Earthen Might
            { itemID = 21181 },   --Grace of Earth
        },
        {
            { itemID = 1519870 }, -- Amulet of the Third War
            { itemID = 1519869 }, -- Arcane Infused Staff
            { itemID = 1519868 }, -- Qiraji Shell	
            { itemID = 856001 },  -- Sentinel Guardian Vestments
            { itemID = 856002 },  -- Blessed Branch of the Cenarion Circle
            { itemID = 22766 },   --Plans: Ironvine Breastplate
            { itemID = 22219 },   --Plans: Jagged Obsidian Shield
            { itemID = 22771 },   --Pattern: Bramblewood Helm
            { itemID = 20511 },   --Pattern: Sandstalker Breastplate
            { itemID = 20508 },   --Pattern: Spitfire Breastplate
            { itemID = 22683 },   --Pattern: Gaea's Embrace
            { itemID = 22312 },   --Pattern: Satchel of Cenarius
            { itemID = 22774 },   --Pattern: Sylvan Vest
            { itemID = 46514 },   -- Formula: Enchant Bracers - Lesser Expertise
            { icon = "INV_QirajIdol_Amber", name = "Token Hand-Ins", pageBreak = true },
            { itemID = 21186 },   --Rockfury Bracers
            { itemID = 21184 },   --Deeprock Bracers
            { itemID = 21189 },   --Might of Cenarius
            { itemID = 21185 },   --Earthcalm Orb
        },
        {
            { itemID = 1519862 }, -- Ancient Buckler
            { itemID = 1519863 }, -- Cenarion Clubber
            { itemID = 1519864 }, -- Polished Qiraji Halberd
            { itemID = 1519866 }, -- Cloak of the Shifting Sands
            { itemID = 1519808 }, -- Sentinel Vambraces
            { itemID = 856000 },  -- Cowl of the Inside Circle
            { itemID = 1312121 }, -- Corroded Qiraji Wraps
            { itemID = 1519807 }, -- Cenarion Infantry Helmet
            { itemID = 1519809 }, -- Qiraji Tracker Vestments
            { itemID = 22221 },   --Plans: Obsidian Mail Tunic
            { itemID = 20382 },   --Pattern: Dreamscale Breastplate
            { icon = "INV_QirajIdol_Amber", name = "Token Hand-Ins", pageBreak = true },
            { itemID = 21190 },   --Wrath of Cenarius
            { itemID = 21180 },   --Earthstrike
            { itemID = 21188 },   --Fist of Cenarius
        },
    },

    ----------------------------------------
    --- Stormpike Guard & Frostwolf Clan ---
    ----------------------------------------

    ["AlteracFactions"] = {
        {
            { itemID = 17904 },    --Stormpike Insignia Rank 6
            { itemID = 17903 },    --Stormpike Insignia Rank 5
            { itemID = 17902 },    --Stormpike Insignia Rank 4
            { itemID = 17901 },    --Stormpike Insignia Rank 3
            { itemID = 17900 },    --Stormpike Insignia Rank 2
            { itemID = 17691 },    --Stormpike Insignia Rank 1
            { itemID = 20648 },    --Cold Forged Hammer
            { itemID = 19106 },    --Ice Barbed Spear
            { itemID = 19108 },    --Wand of Biting Cold
            { itemID = 19107 },    --Bloodseeker
        },
        {
            { itemID = 17909 },    --Frostwolf Insignia Rank 6
            { itemID = 17908 },    --Frostwolf Insignia Rank 5
            { itemID = 17907 },    --Frostwolf Insignia Rank 4
            { itemID = 17906 },    --Frostwolf Insignia Rank 3
            { itemID = 17905 },    --Frostwolf Insignia Rank 2
            { itemID = 17690 },    --Frostwolf Insignia Rank 1
        },
    },

    ---------------------------
    --- Thorium Brotherhood ---
    ---------------------------

    ["Thorium"] = {
        {
            { itemID = 17051 },    --Plans: Dark Iron Bracers
            { itemID = 20761 },    --Recipe: Transmute Elemental Fire
            { itemID = 19444 },    --Formula: Enchant Weapon - Strength
            { itemID = 17023 },    --Pattern: Molten Helm
            { itemID = 17022 },    --Pattern: Corehound Boots
            { itemID = 17018 },    --Pattern: Flarecore Gloves
        },
        {
            { itemID = 1519907 },                    -- Thorium Linked Wristsguards
            { itemID = 1519908 },                    -- Brawlers Totem
            { itemID = 17060,  pageBreak = true },   --Plans: Dark Iron Destroyer
            { itemID = 17059 },                      --Plans: Dark Iron Reaver
            { itemID = 17049 },                      --Plans: Fiery Chain Girdle
            { itemID = 19206 },                      --Plans: Dark Iron Helm
            { itemID = 19448 },                      --Formula: Enchant Weapon - Mighty Spirit
            { itemID = 17025 },                      --Pattern: Black Dragonscale Boots
            { itemID = 19330 },                      --Pattern: Lava Belt
            { itemID = 17017 },                      --Pattern: Flarecore Mantle
            { itemID = 19219 },                      --Pattern: Flarecore Robe
        },
        {
            { itemID = 1519905 },                    -- Thorium Reinforced Buckler
            { itemID = 1519906 },                    -- Thorium Studded Pants
            { itemID = 1519904 },                    -- Rust Covered Belt
            { itemID = 18592,  pageBreak = true },   --Plans: Sulfuron Hammer
            { itemID = 17052 },                      --Plans: Dark Iron Leggings
            { itemID = 17053 },                      --Plans: Fiery Chain Shoulders
            { itemID = 19209 },                      --Plans: Blackfury
            { itemID = 19208 },                      --Plans: Black Amnesty
            { itemID = 19207 },                      --Plans: Dark Iron Gauntlets
            { itemID = 19449 },                      --Formula: Enchant Weapon - Mighty Intellect
            { itemID = 19331 },                      --Pattern: Chromatic Gauntlets
            { itemID = 19332 },                      --Pattern: Corehound Belt
            { itemID = 19333 },                      --Pattern: Molten Belt
            { itemID = 19220 },                      --Pattern: Flarecore Leggings
        },
        {
            { itemID = 1519900 },                    -- Thorium Staff
            { itemID = 1519902 },                    -- Thorium Throwing Knives
            { itemID = 1519901 },                    -- Thorium Rifle
            { itemID = 19211,  pageBreak = true },   --Plans: Blackguard
            { itemID = 20040 },                      --Plans: Dark Iron Boots
            { itemID = 19210 },                      --Plans: Ebon Hand
            { itemID = 19212 },                      --Plans: Nightfall
        },
    },
    ----------------------
    --- Timbermaw Hold ---
    ----------------------

    ["Timbermaw"] = {
        {
            { itemID = 16768 },     -- Furbold Medicine Pouch
            { itemID = 16769 },     -- Furbolg Medicine Totem
        },
        {
            { itemID = 20254 },     -- Pattern: Warbear Woolies
            { itemID = 13484 },     -- Recipe: Transmute Earth to Water
            { itemID = 20253 },     -- Pattern: Warbear Harness
            { itemID = 20253 },     -- Formula: Enchant 2H Weapon - Agility
        },
        {
            { itemID = 1519894 },                     -- Timbermaw Root
            { itemID = 19215,  pageBreak = true },    -- Pattern: Wisdom of the Timbermaw
            { itemID = 19326 },                       -- Pattern: Might of the Timbermaw
            { itemID = 19202 },                       -- Plans: Heavy Timbermaw Belt
            { itemID = 19445 },                       -- Formula: Enchant Weapon - Agility
        },
        {
            { itemID = 856010 },      -- Handcrafted Beast Cleaver
            { itemID = 856012 },      -- Resounding Earth Hood
            { itemID = 856013 },      -- Hunting Hatchet
            { itemID = 856014 },      -- Enchanted Pawpads
            { itemID = 1519802 },     -- Timbermaw Fur Cloak
            { itemID = 1519893 },     -- Ring of Mending
            { itemID = 1519895 },     -- Timbermaw Talisman
            { itemID = 19218, pageBreak = true },     -- Pattern: Mantle of the Timbermaw
            { itemID = 19204 },                       -- Plans: Heavy Timbermaw Boots
            { itemID = 46520 },                       -- Formula: Enchant Cloak - Lesser Spell Penetration
        },
        {
            { itemID = 21326 },       -- Defender of the Timbermaw
            { itemID = 856009 },      -- Ursine Woodstaff
            { itemID = 856011 },      -- Combed Furline Handwraps
            { itemID = 1519801 },     -- Timbermaw Tracker's Belt
            { itemID = 1519803 },     -- Fur Lined Leggings
            { itemID = 1519890 },     -- Timbermaw Spellblade
            { itemID = 1519891 },     -- Timbermaw Shanker
            { itemID = 1519892 },     -- The "Prized" Possession
        },
    },

    ----------------------
    --- Zandalar Tribe ---
    ----------------------

    ["Zandalar"] = {
        {
            { itemID = 19858 },    --Zandalar Honor Token
        },
        {
            { itemID = 20012 },    --Recipe: Greater Dreamless Sleep
            { itemID = 19778 },    --Plans: Bloodsoul Gauntlets
            { itemID = 19781 },    --Plans: Darksoul Shoulders
            { itemID = 20757 },    --Formula: Brilliant Mana Oil
            { itemID = 20001 },    --Schematic: Bloodvine Lens
            { itemID = 19771 },    --Pattern: Primal Batskin Bracers
            { itemID = 19766 },    --Pattern: Bloodvine Boots
        },
        {
            { itemID = 20014 },    --Recipe: Major Troll's Blood Potion
            { itemID = 19777 },    --Plans: Bloodsoul Shoulders
            { itemID = 19780 },    --Plans: Darksoul Leggings
            { itemID = 20756 },    --Formula: Brilliant Wizard Oil
            { itemID = 20000 },    --Schematic: Bloodvine Goggles
            { itemID = 19773 },    --Pattern: Blood Tiger Shoulders
            { itemID = 19770 },    --Pattern: Primal Batskin Gloves
            { itemID = 19765 },    --Pattern: Bloodvine Leggings
            { itemID = 20031 },    --Essence Mango
        },
        {
            { itemID = 20080 },    --Sheen of Zanza
            { itemID = 20079 },    --Spirit of Zanza
            { itemID = 20081 },    --Swiftness of Zanza
            { itemID = 20011 },    --Recipe: Mageblood Potion
            { itemID = 19776 },    --Plans: Bloodsoul Breastplate
            { itemID = 19779 },    --Plans: Darksoul Breastplate
            { itemID = 19772 },    --Pattern: Blood Tiger Breastplate
            { itemID = 19769 },    --Pattern: Primal Batskin Jerkin
            { itemID = 19764 },    --Pattern: Bloodvine Vest
        },
        {
            { itemID = 20077 },    --Zandalar Signet of Might
            { itemID = 20076 },    --Zandalar Signet of Mojo
            { itemID = 20078 },    --Zandalar Signet of Serenity
            { itemID = 20013 },    --Recipe: Living Action Potion
            --[[ 		{ itemID = 500890 }, -- Zandalarian Voodoo Mask
                { itemID = 500960 }, -- Zandalarian Voodoo Mask
                { itemID = 501080 }, -- Zandalarian Voodoo Mask
                { itemID = 501150 }, -- Zandalarian Voodoo Mask
                { itemID = 502410 }, -- Zandalarian Voodoo Mask
                { itemID = 502760 }, -- Zandalarian Voodoo Mask
                { itemID = 503260 }, -- Zandalarian Voodoo Mask
                { itemID = 503920 }, -- Zandalarian Voodoo Mask
                { itemID = 507650 }, -- Zandalarian Voodoo Mask
                { itemID = 508260 }, -- Zandalarian Voodoo Mask
            },
            {
                { itemID = 508320 }, -- Zandalarian Voodoo Mask
                { itemID = 508370 }, -- Zandalarian Voodoo Mask
                { itemID = 508430 }, -- Zandalarian Voodoo Mask
                { itemID = 508480 }, -- Zandalarian Voodoo Mask
                { itemID = 508550 }, -- Zandalarian Voodoo Mask
                { itemID = 508620 }, -- Zandalarian Voodoo Mask
                { itemID = 508670 }, -- Zandalarian Voodoo Mask
                { itemID = 500800 }, -- Zandalarian Voodoo Mask
                { itemID = 508210 }, -- Zandalarian Voodoo Mask
    ]]
        },
    }

})
