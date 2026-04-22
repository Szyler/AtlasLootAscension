--[[
constants.en.lua
This file defines an AceLocale table for all the various text strings needed
by AtlasLoot.  In this implementation, if a translation is missing, it will fall
back to the English translation.

The AL["text"] = true shortcut can ONLY be used for English (the root translation).
]]

--Create the library instance
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")

local AL = AceLocale:NewLocale("AtlasLoot", "enUS", true, true)

--Register translations
if AL then

	AL["Item"] = true
	AL["Auction House Search"] = true
	AL["Created Item"] = true
	AL["Recipe"] = true
	AL["Mystic Enchanting"] = true
	AL["Open AscensionDB To Zone Map"] = true
	AL["Open AscensionDB To NPC"] = true
	AL["Open AscensionDB To Entry"] = true
	AL["Links"] = true
	AL["Add To Default"] = true
	AL["Clear Search"] = true
	AL["Epic Shoulder Enchants"] = true
	AL["Shoulder Enchants"] = true
	-- Text strings for UI objects
	AL["AtlasLoot"] = true
	AL["Select Loot Table"] = true
	AL["Select Sub-Table"] = true
	AL["Select Difficulty"] = true
	AL["Drop Rate: "] = true
	AL["Extra Info: "] = true
	AL["Click boss name to view loot."] = true
	AL["Various Locations"] = true
	AL["This is a loot browser only.  To view maps as well, install either Atlas or Alphamap."] = true
	AL["Toggle AL Panel"] = true
	AL["Back"] = true
	AL["Add"] = true
	AL["Delete"] = true
	AL["Edit"] = true
	AL["Share"] = true
	AL["Level 60"] = true
	AL["Level 70"] = true
	AL["Level 80"] = true
	AL["|cffff0000(unsafe)"] = true
	AL["Misc"] = true
	AL["Miscellaneous"] = true
	AL["Rewards"] = true
	AL["Show Normal Loot"] = true
	AL["Show Heroic/Ascended Loot"] = true
	AL["Bloodforged"] = true
	AL["Factions - Original WoW"] = true
	AL["Factions - Classic"] = true
	AL["Factions - Burning Crusade"] = true
	AL["Factions - Wrath of the Lich King"] = true
	AL["Classic"] = true
	AL["Burning Crusade"] = true
	AL["Wrath of the Lich King"] = true
	AL["Choose Table ..."] = true
	AL["Unknown"] = true
	AL["Add to QuickLooks:"] = true
	AL["Assign this loot table\n to Favorite"] = true
	AL["Query Server"] = true
	AL["Reset Frames"] = true
	AL["Reset Wishlist"] = true
	AL["Reset Favorites"] = true
	AL["Select a Loot Table..."] = true
	AL["OR"] = true
	AL["Attach to Minimap"] = true
	AL["Position:"] = true
	AL["Left"] = true
	AL["Center"] = true
	AL["Right"] = true
	AL["Hide Text"] = true
	AL["Hide Icon"] = true
	AL["Minimap Button Options"] = true
	AL["Normal"] = true
	AL["Heroic"] = true
	AL["Mythic"] = true
	AL["Normal Flex"] = true
	AL["Heroic Flex"] = true
	AL["Ascended"] = true
	AL["Normal/Heroic"] = true
	AL["Crafting Patterns"] = true
	-- Text for Options Panel
	AL["Atlasloot Options"] = true
	AL["Safe Chat Links"] = true
	AL["Default Tooltips"] = true
	AL["Lootlink Tooltips"] = true
	AL["|cff9d9d9dLootlink Tooltips|r"] = true
	AL["ItemSync Tooltips"] = true
	AL["|cff9d9d9dItemSync Tooltips|r"] = true
	AL["Use EquipCompare"] = true
	AL["|cff9d9d9dUse EquipCompare|r"] = true
	AL["Show Comparison Tooltips"] = true
	AL["Make Loot Table Opaque"] = true
	AL["Show itemIDs at all times"] = true
	AL["Hide AtlasLoot Panel"] = true
	AL["Show Basic Minimap Button"] = true
	AL["|cff9d9d9dShow Basic Minimap Button|r"] = true
	AL["Set Minimap Button Position"] = true
	AL["Suppress Item Query Text"] = true
	AL["Notify on LoD Module Load"] = true
	AL["Load Loot Modules at Startup"] = true
	AL["Loot Browser Scale: "] = true
	AL["Button Position: "] = true
	AL["Button Radius: "] = true
	AL["Done"] = true
	AL["FuBar Toggle"] = true
	AL["Search Result: %s"] = true
	AL["Search on"] = true
	AL["All modules"] = true
	AL["If checked, AtlasLoot will load and search across all the modules."] = true
	AL["Search options"] = true
	AL["Ascension Vanity Collection"] = true
	AL["If checked, AtlasLoot will search Ascension Vanity Collection"] = true
	AL["Search AscensionDB"] = true
	AL["If checked, AtlasLoot search item names for a partial match."] = true
	AL["If checked, AtlasLoot will open a browser window and search AscensionDB"] = true
	AL["You don't have any module selected to search on. Right click search to select modules the more selected the longer it will take to search"] = true
	AL["Treat Crafted Items:"] = true
	AL["As Crafting Spells"] = true
	AL["As Items"] = true
	AL["Change AtlasLoot Skin:"] = true
	AL["ElvUI Dark"] = true
	AL["Old AtlasLoot"] = true
	AL["Modern"] = true
	AL["Select Mythic Pluss Tier:"] = true
	AL["Mythic Tier 0"] = true
	AL["Mythic Tier 1"] = true
	AL["Mythic Tier 2"] = true
	AL["Mythic Tier 3"] = true
	AL["Mythic Tier 4"] = true
	AL["Mythic Tier 5"] = true
	AL["Mythic Tier 6"] = true
	AL["Mythic Tier 7"] = true
	AL["Mythic Tier 8"] = true
	AL["Mythic Tier 9"] = true
	AL["Mythic Tier 10"] = true
	AL["Tier 1 Set Token (Click)"] = true
	AL["Tier 2 Set Token (Click)"] = true
	AL["Tier 2.5 Set Token (Click)"] = true
	AL["Set Token (Click)"] = true
	AL["Tier 3 Set Token (Click)"] = true
	AL["Tier 4 Set Token (Click)"] = true
	AL["Tier 5 Set Token (Click)"] = true
	AL["Tier 6 Set Token (Click)"] = true
	AL["Tier 7 Set Token (Click)"] = true
	AL["Tier 8 Set Token (Click)"] = true

	-- Slash commands
	AL["reset"] = true
	AL["options"] = true
	AL["Reset complete!"] = true

	-- AtlasLoot Panel
	AL["Collections"] = true
	AL["Crafting"] = true
	AL["Factions"] = true
	AL["Load Modules"] = true
	AL["Options"] = true
	AL["PvP Rewards"] = true
	AL["Favorite"] = true
	AL["World Events"] = true
	AL["Auto Load Instance Loot Pages"] = true

	-- AtlasLoot Panel - Search
	AL["Clear"] = true
	AL["Last Result"] = true
	AL["Search"] = true

	-- AtlasLoot Browser Menus
	AL["Dungeons and Raids"] = true
	AL["Classic Instances"] = true
	AL["BC Instances"] = true
	AL["Sets/Collections"] = true
	AL["Reputation Factions"] = true
	AL["WotLK Instances"] = true
	AL["World Bosses"] = true
	AL["Close Menu"] = true
	AL["Guild"] = true
	AL["Party"] = true
	AL["Raid"] = true

	-- Crafting Menu
	AL["Crafting Daily Quests"] = true
	AL["Cooking Daily"] = true
	AL["Fishing Daily"] = true
	AL["Jewelcrafting Daily"] = true
	AL["Crafted Sets"] = true
	AL["Crafted Epic Weapons"] = true
	AL["Dragon's Eye"] = true
	AL["Crafting Patterns Uncommon"] = true
	AL["Crafting Patterns Rare"] = true
	AL["Crafting Patterns Epic"] = true
	AL["Item Uncommon"] = true
	AL["Item Rare"] = true
	AL["Item Epic"] = true
	AL["Mod Drop"] = true
	AL["Limited Stock"] = true
	AL["Smelting"] = true
	AL["Materials"] = true

	-- Sets/Collections Menu
	AL["Badge of Justice Rewards"] = true
	AL["Emblem of Valor Rewards"] = true
	AL["Emblem of Heroism Rewards"] = true
	AL["Emblem of Conquest Rewards"] = true
	AL["Emblem of Triumph Rewards"] = true
	AL["Emblem of Frost Rewards"] = true
	AL["BoE World Epics"] = true
	AL["BoE World Rares"] = true
	AL["Dungeon 1/2 Sets"] = true
	AL["Dungeon 3 Sets"] = true
	AL["Legendary Items"] = true
	AL["Mounts"] = true
	AL["Vanity Pets"] = true
	AL["Vanity"] = true
	AL["Misc Sets"] = true
	AL["Classic Sets"] = true
	AL["Burning Crusade Sets"] = true
	AL["Burning Crusade Misc Sets"] = true
	AL["Wrath of the Lich King Sets"] = true
	AL["Ruins of Ahn'Qiraj Sets"] = true
	AL["Temple of Ahn'Qiraj Sets"] = true
	AL["Tabards"] = true
	AL["Tier 1 Sets"] = true
	AL["Tier 2 Sets"] = true
	AL["Tier 3 Sets"] = true
	AL["Tier 4 Sets"] = true
	AL["Tier 5 Sets"] = true
	AL["Tier 6 Sets"] = true
	AL["Tier 7/8 Sets"] = true
	AL["Upper Deck Card Game Items"] = true
	AL["Zul'Gurub Sets"] = true

	-- Factions Menu
	AL["Original Factions"] = true
	AL["BC Factions"] = true
	AL["WotLK Factions"] = true

	-- PvP Menu
	AL["Arena PvP Sets"] = true
	AL["PvP Rewards (Level 60)"] = true
	AL["PvP Enchants"] = true
	AL["PvP Rewards (Level 70)"] = true
	AL["PvP Rewards (Level 80)"] = true
	AL["Arathi Basin Sets"] = true
	AL["PvP Accessories"] = true
	AL["PvP Armor Sets"] = true
	AL["PvP Weapons"] = true
	AL["PvP Non-Set Epics"] = true
	AL["PvP Reputation Sets"] = true
	AL["Arena PvP Weapons"] = true
	AL["PvP Misc"] = true
	AL["PVP Gems/Enchants/Jewelcrafting Designs"] = true
	AL["Level 80 PvP Sets"] = true
	AL["Old Level 80 PvP Sets"] = true
	AL["Arena Season 7/8 Sets"] = true
	AL["PvP Class Items"] = true
	AL["NOT AVAILABLE ANYMORE"] = true

	-- World Events
	AL["Abyssal Council"] = true
	AL["Argent Tournament"] = true
	AL["Bash'ir Landing Skyguard Raid"] = true
	AL["Brewfest"] = true
	AL["Children's Week"] = true
	AL["Day of the Dead"] = true
	AL["Elemental Invasion"] = true
	AL["Ethereum Prison"] = true
	AL["Feast of Winter Veil"] = true
	AL["Gurubashi Arena Booty Run"] = true
	AL["Hallow's End"] = true
	AL["Harvest Festival"] = true
	AL["Love is in the Air"] = true
	AL["Lunar Festival"] = true
	AL["Midsummer Fire Festival"] = true
	AL["Noblegarden"] = true
	AL["Pilgrim's Bounty"] = true
	AL["Skettis"] = true
	AL["Stranglethorn Fishing Extravaganza"] = true

	-- Minimap Button
	AL["|cff1eff00Left-Click|r Browse Loot Tables"] = true
	AL["|cffff0000Right-Click|r View Options"] = true
	AL["|cffff0000Shift-Click|r View Options"] = true
	AL["|cffccccccLeft-Click + Drag|r Move Minimap Button"] = true
	AL["|cffccccccRight-Click + Drag|r Move Minimap Button"] = true

	-- Filter
	AL["Filter"] = true
	AL["Select All Loot"] = true
	AL["Apply Filter:"] = true
	AL["Armor:"] = true
	AL["Melee weapons:"] = true
	AL["Ranged weapons:"] = true
	AL["Relics:"] = true
	AL["Other:"] = true
	AL["How to set of change a page filter:"] = true
	AL["If you Right Click on the filter check box you will get a drop downmenu with a list of filters. Click the filter you want to use or click add filter set to add new custom filters."] = true


	-- Wishlist
	AL["Close"] = true
	AL["Wishlist"] = true
	AL["Own Wishlists"] = true
	AL["Wishlists"] = true
	AL["Chatlinks"] = true
	AL["Other Wishlists"] = true
	AL["Shared Wishlists"] = true
	AL["Mark items in loot tables"] = true
	AL["Mark items from own Wishlist"] = true
	AL["Mark items from all Wishlists"] = true
	AL["Enable Wishlist Sharing"] = true
	AL["Auto reject in combat"] = true
	AL["Always use default Wishlist"] = true
	AL["Add Wishlist"] = true
	AL["Edit Wishlist"] = true
	AL["Sort Wishlist"] = true
	AL["Add Filter Set"] = true
	AL["Auto Sort WishLists"] = true
	AL["Allow Duplicates"] = true
	AL["Copy Wishlist To Own"] = true
	AL["Make Wishlist Default"] = true
	AL["Delete Wishlist"] = true
	AL["Show More Icons"] = true
	AL["Wishlist name:"] = true
	AL["Delete"] = true
	AL["Edit"] = true
	AL["Share"] = true
	AL["Show all Wishlists"] = true
	AL["Show own Wishlists"] = true
	AL["Show shared Wishlists"] = true
	AL["You must wait "] = true
	AL[" seconds before you can send a new Wishlist to "] = true
	AL["Send Wishlist (%s) to"] = true
	AL["Send"] = true
	AL["Cancel"] = true
	AL["Delete Wishlist %s?"] = true
	AL["Delete Wishlist"] = true
	AL["%s sends you a Wishlist. Accept?"] = true
	AL[" tried to send you a Wishlist. Rejected because you are in combat."] = true
	AL[" rejects your Wishlist."] = true
	AL["You can't send Wishlists to yourself"] = true
	AL["Please set a default Wishlist."] = true
	AL["Set as default Wishlist"] = true
	AL["Please Create a Wishlist First."] = true
	AL["Add/Edit Filter"] = true
	AL["Delete Filter"] = true

	-- Misc Inventory related words
	AL["Enchant"] = true
	AL["Scope"] = true
	AL["Darkmoon Faire Card"] = true
	AL["Banner"] = true
	AL["Set"] = true
	AL["Token"] = true
	AL["Tokens"] = true
	AL["Token Hand-Ins"] = true
	AL["Skinning Knife"] = true
	AL["Herbalism Knife"] = true
	AL["Fish"] = true
	AL["Combat Pet"] = true
	AL["Fireworks"] = true
	AL["Fishing Lure"] = true

	-- Extra inventory stuff
	AL["Cloak"] = true
	AL["Sigil"] = true -- Can be added to BabbleInv

	-- Alchemy
	AL["Battle Elixirs"] = true
	AL["Guardian Elixirs"] = true
	AL["Potions"] = true
	AL["Transmutes"] = true
	AL["Flasks"] = true

	-- Enchanting
	AL["Enchant Boots"] = true
	AL["Enchant Bracer"] = true
	AL["Enchant Chest"] = true
	AL["Enchant Cloak"] = true
	AL["Enchant Gloves"] = true
	AL["Enchant Ring"] = true
	AL["Enchant Shield"] = true
	AL["Enchant 2H Weapon"] = true
	AL["Enchant Weapon"] = true

	-- Engineering
	AL["Ammunition"] = true
	AL["Explosives"] = true

	-- Inscription
	AL["Major Glyph"] = true
	AL["Minor Glyph"] = true
	AL["Scrolls"] = true
	AL["Off-Hand Items"] = true
	AL["Reagents"] = true
	AL["Book of Glyph Mastery"] = true

	-- Leatherworking
	AL["Leather Armor"] = true
	AL["Mail Armor"] = true
	AL["Cloaks"] = true
	AL["Item Enhancements"] = true
	AL["Quivers and Ammo Pouches"] = true
	AL["Drums, Bags and Misc."] = true

	--Stats etc
	AL["Accessories"] = true
	AL["Weapons"] = true
	AL["Armor Type"] = true
	AL["Relics"] = true
	AL["Weapons One-Handers"] = true
	AL["Weapons Two-Handers"] = true
	AL["Ranged Weapons"] = true
	AL["Primary Stats"] = true
	AL["Secondary Stats"] = true
	AL["Defensive Stats"] = true
	AL["Resistances"] = true
	AL["One-Handed Mace"] = true
	AL["Two-Handed Mace"] = true
	AL["Two-Handed Sword"] = true
	AL["One-Handed Sword"] = true
	AL["Main-Hand Fist Weapon"] = true
	AL["Main-Hand Mace"] = true
	AL["Main-Hand Dagger"] = true
	AL["Main-Hand Sword"] = true
	AL["Off-Hand Sword"] = true
	AL["Off-Hand Fist Weapon"] = true

	AL["Herbalism"] = true

	-- Tailoring
	AL["Cloth Armor"] = true
	AL["Shirts"] = true
	AL["Bags"] = true

	-- JewelCrafting
	AL["Red Gems"] = true
	AL["Yellow Gems"] = true
	AL["Blue Gems"] = true
	AL["Orange Gems"] = true
	AL["Purple Gems"] = true
	AL["Green Gems"] = true
	AL["Meta Gems"] = true
	AL["Prismatic Gems"] = true
	AL["Dragons Eye"] = true
	AL["Trinkets"] = true
	AL["Rings"] = true
	AL["Necks"] = true

	AL["Red Gem"] = true
	AL["Yellow Gem"] = true
	AL["Blue Gem"] = true
	AL["Orange Gem"] = true
	AL["Purple Gem"] = true
	AL["Green Gem"] = true

	-- Labels for loot descriptions
	AL["Classes:"] = true
	AL["This Item Begins a Quest"] = true
	AL["Quest Item"] = true
	AL["Old Quest Item"] = true
	AL["Quest Reward"] = true
	AL["Old Quest Reward"] = true
	AL["Shared"] = true
	AL["Unique"] = true
	AL["Right Half"] = true
	AL["Left Half"] = true
	AL["28 Slot Soul Shard"] = true
	AL["20 Slot"] = true
	AL["18 Slot"] = true
	AL["16 Slot"] = true
	AL["10 Slot"] = true
	AL["(has random enchantment)"] = true
	AL["Currency"] = true
	AL["Currency (Alliance)"] = true
	AL["Currency (Horde)"] = true
	AL["Conjured Item"] = true
	AL["Used to summon boss"] = true
	AL["Tradable against sunmote + item above"] = true
	AL["Card Game Item"] = true
	AL["Skill Required:"] = true
	AL["Rating:"] = true -- Shorthand for 'Required Rating' for the personal/team ratings
	AL["Random Heroic Reward"] = true

	-- Minor Labels for loot table descriptions
	AL["Original WoW"] = true
	AL["Burning Crusade"] = true
	AL["Wrath of the Lich King"] = true
	AL["Entrance"] = true
	AL["Season 2"] = true
	AL["Season 3"] = true
	AL["Season 4"] = true
	AL["Dungeon Set 1"] = true
	AL["Dungeon Set 2"] = true
	AL["Dungeon Set 3"] = true
	AL["Tier 1"] = true
	AL["Tier 2"] = true
	AL["Tier 3"] = true
	AL["Tier 4"] = true
	AL["Tier 5"] = true
	AL["Tier 6"] = true
	AL["Tier 7"] = true
	AL["Tier 8"] = true
	AL["Tier 9"] = true
	AL["Tier 10"] = true
	AL["10 Man"] = true
	AL["25 Man"] = true
	AL["10/25 Man"] = true
	AL["Epic Set"] = true
	AL["Superior Epic Set"] = true
	AL["Rare Set"] = true
	AL["Superior Rare Set"] = true
	AL["Fire"] = true
	AL["Water"] = true
	AL["Wind"] = true
	AL["Earth"] = true
	AL["Master Angler"] = true
	AL["Fire Resistance Gear"] = true
	AL["Arcane Resistance Gear"] = true
	AL["Nature Resistance Gear"] = true
	AL["Frost Resistance Gear"] = true
	AL["Shadow Resistance Gear"] = true
	AL["Sets - Original WoW"] = true
	AL["Sets - Burning Crusade"] = true
	AL["Sets - Wrath of the Lich King"] = true
	AL["PVP - Original WoW"] = true
	AL["PVP - Burning Crusade"] = true
	AL["PVP - Wrath of the Lich King"] = true
	AL["Collections - Original WoW"] = true
	AL["Collections - Burning Crusade"] = true
	AL["Collections - Wrath of the Lich King"] = true

	-- Labels for loot table sections
	AL["Additional Heroic Loot"] = true
	AL["Heroic Mode"] = true
	AL["Normal Mode"] = true
	AL["Raid"] = true
	AL["Hard Mode"] = true
	AL["Bonus Loot"] = true
	AL["One Drake Left"] = true
	AL["Two Drakes Left"] = true
	AL["Three Drakes Left"] = true
	AL["Arena Reward"] = true
	AL["Phase 1"] = true
	AL["Phase 2"] = true
	AL["Phase 3"] = true
	AL["First Prize"] = true
	AL["Rare Fish Rewards"] = true
	AL["Rare Fish"] = true
	AL["Unattainable Tabards"] = true
	AL["Heirloom"] = true
	AL["Weapons"] = true
	AL["Accessories"] = true
	AL["Alone in the Darkness"] = true
	AL["Call of the Grand Crusade"] = true
	AL["A Tribute to Skill (25)"] = true
	AL["A Tribute to Mad Skill (45)"] = true
	AL["A Tribute to Insanity (50)"] = true
	AL["A Tribute to Immortality"] = true
	AL["Low Level"] = true
	AL["High Level"] = true

	-- Loot Table Names
	AL["Scholomance Sets"] = true
	AL["PvP Accessories (Level 60)"] = true
	AL["PvP Accessories - Alliance (Level 60)"] = true
	AL["PvP Accessories - Horde (Level 60)"] = true
	AL["PvP Weapons (Level 60)"] = true
	AL["PvP Accessories (Level 70)"] = true
	AL["PvP Weapons (Level 70)"] = true
	AL["PvP Reputation Sets (Level 70)"] = true
	AL["Arena Season 0 Weapons"] = true
	AL["Arena Season 1 Weapons"] = true
	AL["Arena Season 2 Weapons"] = true
	AL["Arena Season 3 Weapons"] = true
	AL["Arena Season 4 Weapons"] = true
	AL["Level 30-39"] = true
	AL["Level 40-49"] = true
	AL["Level 50-60"] = true
	AL["Heroic"] = true
	AL["Summon"] = true
	AL["Random"] = true
	AL["Tier 8 Sets"] = true
	AL["Tier 9 Sets"] = true
	AL["Tier 10 Sets"] = true
	AL["Furious Gladiator Sets"] = true
	AL["Relentless Gladiator Sets"] = true
	AL["Brew of the Month Club"] = true

	-- Extra Text in Boss lists
	AL["Set: Embrace of the Viper"] = true
	AL["Set: Defias Leather"] = true
	AL["Set: The Gladiator"] = true
	AL["Set: Chain of the Scarlet Crusade"] = true
	AL["Set: The Postmaster"] = true
	AL["Set: Necropile Raiment"] = true
	AL["Set: Cadaverous Garb"] = true
	AL["Set: Bloodmail Regalia"] = true
	AL["Set: Deathbone Guardian"] = true
	AL["Set: Dal'Rend's Arms"] = true
	AL["Set: Spider's Kiss"] = true
	AL["AQ20 Class Sets"] = true
	AL["AQ Enchants"] = true
	AL["AQ40 Class Sets"] = true
	AL["AQ Opening Quest Chain"] = true
	AL["ZG Class Sets"] = true
	AL["ZG Enchants"] = true
	AL["Class Books"] = true
	AL["Tribute Run"] = true
	AL["Dire Maul Books"] = true
	AL["Random Boss Loot"] = true
	AL["BT Patterns/Plans"] = true
	AL["Hyjal Summit Designs"] =true
	AL["SP Patterns/Plans"] = true
	AL["Ulduar Formula/Patterns/Plans"] = true
	AL["Trial of the Crusader Patterns/Plans"] = true
	AL["Legendary Items for Kael'thas Fight"] = true

	-- Pets
	AL["Pets"] = true
	AL["Promotional"] = true
	AL["Pet Store"] = true
	AL["Merchant Sold"] = true
	AL["Rare"] = true
	AL["Achievement"] = true
	AL["Faction"] = true
	AL["Dungeon/Raid"] = true

	-- Mounts
	AL["Achievement Reward"] = true
	AL["Alliance Flying Mounts"] = true
	AL["Alliance Mounts"] = true
	AL["Horde Flying Mounts"] = true
	AL["Horde Mounts"] = true
	AL["Card Game Mounts"] = true
	AL["Crafted Mounts"] = true
	AL["Event Mounts"] = true
	AL["Neutral Faction Mounts"] = true
	AL["PvP Mounts"] = true
	AL["Alliance PvP Mounts"] = true
	AL["Horde PvP Mounts"] = true
	AL["Halaa PvP Mounts"] = true
	AL["Promotional Mounts"] = true
	AL["Rare Mounts"] = true

	-- Darkmoon Faire
	AL["Darkmoon Faire Rewards"] = true
	AL["Low Level Decks"] = true
	AL["Original and BC Trinkets"] = true
	AL["WotLK Trinkets"] = true

	-- Card Game Decks and descriptions
	AL["Loot Card Items"] = true
	AL["UDE Items"] = true

	-- First set
	AL["Heroes of Azeroth"] = true
	AL["Landro Longshot"] = true
	AL["Thunderhead Hippogryph"] = true
	AL["Saltwater Snapjaw"] = true

	-- Second set
	AL["Through The Dark Portal"] = true
	AL["King Mukla"] = true
	AL["Rest and Relaxation"] = true
	AL["Fortune Telling"] = true

	-- Third set
	AL["Fires of Outland"] = true
	AL["Spectral Tiger"] = true
	AL["Gone Fishin'"] = true
	AL["Goblin Gumbo"] = true

	-- Fourth set
	AL["March of the Legion"] = true
	AL["Kiting"] = true
	AL["Robotic Homing Chicken"] = true
	AL["Paper Airplane"] = true

	-- Fifth set
	AL["Servants of the Betrayer"] = true
	AL["X-51 Nether-Rocket"] = true
	AL["Personal Weather Machine"] = true
	AL["Papa Hummel's Old-fashioned Pet Biscuit"] = true

	-- Sixth set
	AL["Hunt for Illidan"] = true
	AL["The Footsteps of Illidan"] = true
	AL["Disco Inferno!"] = true
	AL["Ethereal Plunderer"] = true

	-- Seventh set
	AL["Drums of War"] = true
	AL["The Red Bearon"] = true
	AL["Owned!"] = true
	AL["Slashdance"] = true

	-- Eighth set
	AL["Blood of Gladiators"] = true
	AL["Sandbox Tiger"] = true
	AL["Center of Attention"] = true
	AL["Foam Sword Rack"] = true

	-- Ninth set
	AL["Fields of Honor"] = true
	AL["Path of Cenarius"] = true
	AL["Pinata"] = true
	AL["El Pollo Grande"] = true

	-- Tenth set
	AL["Scourgewar"] = true
	AL["Tiny"] = true
	AL["Tuskarr Kite"] = true
	AL["Spectral Kitten"] = true

	-- Eleventh set
	AL["Wrathgate"] = true
	AL["Statue Generator"] = true
	AL["Landro's Gift"] = true
	AL["Blazing Hippogryph"] = true

	-- Twelvth set
	AL["Icecrown"] = true
	AL["Wooly White Rhino"] = true
	AL["Ethereal Portal"] = true
	AL["Paint Bomb"] = true

	-- Battleground Brackets
	AL["BG PvP Rewards"] = true
	AL["Misc. Rewards"] = true
	AL["Level 20-39 Rewards"] = true
	AL["Level 20-29 Rewards"] = true
	AL["Level 30-39 Rewards"] = true
	AL["Level 40-49 Rewards"] = true
	AL["Level 60 Rewards"] = true

	-- Sets/PVP/Rep Menus
	AL["Classic Collections"] = true
	AL["Burning Crusade Collections"] = true
	AL["Wrath of the Lich King Collections"] = true
	AL["Classic PvP Rewards"] = true
	AL["Burning Crusade PvP Rewards"] = true
	AL["Wrath of the Lich King PvP Rewards"] = true

	-- Brood of Nozdormu Paths
	AL["Path of the Conqueror"] = true
	AL["Path of the Invoker"] = true
	AL["Path of the Protector"] = true

	-- Violet Eye Paths
	AL["Path of the Violet Protector"] = true
	AL["Path of the Violet Mage"] = true
	AL["Path of the Violet Assassin"] = true
	AL["Path of the Violet Restorer"] = true
	
	-- Ashen Verdict Paths
	AL["Path of Courage"] = true
	AL["Path of Destruction"] = true
	AL["Path of Vengeance"] = true
	AL["Path of Wisdom"] = true

	-- AQ Opening Event
	AL["Red Scepter Shard"] = true
	AL["Blue Scepter Shard"] = true
	AL["Green Scepter Shard"] = true
	AL["Scepter of the Shifting Sands"] = true

	-- World PvP
	AL["Hellfire Fortifications"] = true
	AL["Twin Spire Ruins"] = true
	AL["Spirit Towers"] = true
	AL["Halaa"] = true
	AL["Venture Bay"] = true

	-- Karazhan Opera Event Headings
	AL["Shared Drops"] = true
	AL["Romulo & Julianne"] = true
	AL["Wizard of Oz"] = true
	AL["Red Riding Hood"] = true

	-- Karazhan Animal Boss Types
	AL["Spider"] = true
	AL["Darkhound"] = true
	AL["Bat"] = true

	-- ZG Tokens
	AL["Primal Hakkari Kossack"] = true
	AL["Primal Hakkari Shawl"] = true
	AL["Primal Hakkari Bindings"] = true
	AL["Primal Hakkari Sash"] = true
	AL["Primal Hakkari Stanchion"] = true
	AL["Primal Hakkari Aegis"] = true
	AL["Primal Hakkari Girdle"] = true
	AL["Primal Hakkari Armsplint"] = true
	AL["Primal Hakkari Tabard"] = true

	-- AQ20 Tokens
	AL["Qiraji Ornate Hilt"] = true
	AL["Qiraji Martial Drape"] = true
	AL["Qiraji Magisterial Ring"] = true
	AL["Qiraji Ceremonial Ring"] = true
	AL["Qiraji Regal Drape"] = true
	AL["Qiraji Spiked Hilt"] = true

	-- AQ40 Tokens
	AL["Qiraji Bindings of Dominance"] = true
	AL["Qiraji Bindings of Command"] = true
	AL["Vek'nilash's Circlet"] = true
	AL["Vek'lor's Diadem"] = true
	AL["Ouro's Intact Hide"] = true
	AL["Skin of the Great Sandworm"] = true
	AL["Husk of the Old God"] = true
	AL["Carapace of the Old God"] = true

	-- Blacksmithing Mail Crafted Sets
	AL["Bloodsoul Embrace"] = true
	AL["Fel Iron Chain"] = true

	-- Blacksmithing Plate Crafted Sets
	AL["Imperial Plate"] = true
	AL["The Darksoul"] = true
	AL["Fel Iron Plate"] = true
	AL["Adamantite Battlegear"] = true
	AL["Flame Guard"] = true
	AL["Enchanted Adamantite Armor"] = true
	AL["Khorium Ward"] = true
	AL["Faith in Felsteel"] = true
	AL["Burning Rage"] = true
	AL["Ornate Saronite Battlegear"] = true
	AL["Savage Saronite Battlegear"] = true

	-- Leatherworking Crafted Leather Sets
	AL["Volcanic Armor"] = true
	AL["Ironfeather Armor"] = true
	AL["Stormshroud Armor"] = true
	AL["Devilsaur Armor"] = true
	AL["Blood Tiger Harness"] = true
	AL["Primal Batskin"] = true
	AL["Wild Draenish Armor"] = true
	AL["Thick Draenic Armor"] = true
	AL["Fel Skin"] = true
	AL["Strength of the Clefthoof"] = true
	AL["Primal Intent"] = true
	AL["Windhawk Armor"] = true
	AL["Borean Embrace"] = true
	AL["Iceborne Embrace"] = true
	AL["Eviscerator's Battlegear"] = true
	AL["Overcaster Battlegear"] = true

	-- Leatherworking Crafted Mail Sets
	AL["Green Dragon Mail"] = true
	AL["Blue Dragon Mail"] = true
	AL["Black Dragon Mail"] = true
	AL["Scaled Draenic Armor"] = true
	AL["Felscale Armor"] = true
	AL["Felstalker Armor"] = true
	AL["Fury of the Nether"] = true
	AL["Netherscale Armor"] = true
	AL["Netherstrike Armor"] = true
	AL["Frostscale Binding"] = true
	AL["Nerubian Hive"] = true
	AL["Stormhide Battlegear"] = true
	AL["Swiftarrow Battlefear"] = true

	-- Tailoring Crafted Sets
	AL["Bloodvine Garb"] = true
	AL["Netherweave Vestments"] = true
	AL["Imbued Netherweave"] = true
	AL["Arcanoweave Vestments"] = true
	AL["The Unyielding"] = true
	AL["Whitemend Wisdom"] = true
	AL["Spellstrike Infusion"] = true
	AL["Battlecast Garb"] = true
	AL["Soulcloth Embrace"] = true
	AL["Primal Mooncloth"] = true
	AL["Shadow's Embrace"] = true
	AL["Wrath of Spellfire"] = true
	AL["Frostwoven Power"] = true
	AL["Duskweaver"] = true
	AL["Frostsavage Battlegear"] = true

	-- Classic WoW Sets
	AL["Defias Leather"] = true
	AL["Embrace of the Viper"] = true
	AL["Chain of the Scarlet Crusade"] = true
	AL["The Gladiator"] = true
	AL["Ironweave Battlesuit"] = true
	AL["Necropile Raiment"] = true
	AL["Cadaverous Garb"] = true
	AL["Bloodmail Regalia"] = true
	AL["Deathbone Guardian"] = true
	AL["The Postmaster"] = true
	AL["Shard of the Gods"] = true
	AL["Zul'Gurub Rings"] = true
	AL["Misc Zul'Gurub Sets"] = true
	AL["Major Mojo Infusion"] = true
	AL["Overlord's Resolution"] = true
	AL["Prayer of the Primal"] = true
	AL["Zanzil's Concentration"] = true
	AL["Spirit of Eskhandar"] = true
	AL["The Twin Blades of Hakkari"] = true
	AL["Primal Blessing"] = true
	AL["Dal'Rend's Arms"] = true
	AL["Spider's Kiss"] = true

	-- The Burning Crusade Sets
	AL["Latro's Flurry"] = true
	AL["The Twin Stars"] = true
	AL["The Fists of Fury"] = true
	AL["The Twin Blades of Azzinoth"] = true

	-- Wrath of the Lich King Sets
	AL["Raine's Revenge"] = true
	AL["Purified Shard of the Gods"] = true
	AL["Shiny Shard of the Gods"] = true

	-- Recipe origin strings
	AL["Trainer"] = true
	AL["Discovery"] = true
	AL["World Drop"] = true
	AL["Drop"] = true
	AL["Vendor"] = true
	AL["Quest"] = true
	AL["Crafted"] = true
	AL["Seasonal"] = true
	AL["Reputation Vendor"] = true
	AL["Source"] = true
	AL["Zone"] = true
	AL["Trainer/Book of Artisans"] = true
	AL["Required Reputation"] = true
	AL["Hold CTRL for source"] = true
	AL["Click to only show recipe while holding control"] = true
	AL["Click to show recipe source in tooltips"] = true
	AL["Hide recipe source"] = true
	AL["Show recipe source"] = true
	AL["Recipe Waypoints"] = true
	AL["Random Level 70 instance drop"] = true
	AL["Random Level 70 instance drop/Raid Trash Drop"] = true
	AL["Shady Dealer"] = true
	AL["High Risk"] = true
	
	--quest giver names
	AL["Bounty Hunter Kolark"] = true
	AL["Artilleryman Sheldonore"] = true

	-- Scourge Invasion
	AL["Scourge Invasion"] = true
	AL["Scourge Invasion Sets"] = true
	AL["Blessed Regalia of Undead Cleansing"] = true
	AL["Undead Slayer's Blessed Armor"] = true
	AL["Blessed Garb of the Undead Slayer"] = true
	AL["Blessed Battlegear of Undead Slaying"] = true
	AL["Prince Tenris Mirkblood"] = true

	-- ZG Sets
	AL["Haruspex's Garb"] = true
	AL["Predator's Armor"] = true
	AL["Illusionist's Attire"] = true
	AL["Freethinker's Armor"] = true
	AL["Confessor's Raiment"] = true
	AL["Madcap's Outfit"] = true
	AL["Augur's Regalia"] = true
	AL["Demoniac's Threads"] = true
	AL["Vindicator's Battlegear"] = true

	-- AQ20 Sets
	AL["Symbols of Unending Life"] = true
	AL["Trappings of the Unseen Path"] = true
	AL["Trappings of Vaulted Secrets"] = true
	AL["Battlegear of Eternal Justice"] = true
	AL["Finery of Infinite Wisdom"] = true
	AL["Emblems of Veiled Shadows"] = true
	AL["Gift of the Gathering Storm"] = true
	AL["Implements of Unspoken Names"] = true
	AL["Battlegear of Unyielding Strength"] = true
	AL["Keepsakes of Endless Machinations"] = true
	AL["Regalia of Roaring Earth"] = true
	AL["Relics of Ferocious Vigor"] = true
	AL["Laurels of the Faithful Zealot"] = true
	AL["Instruments of Masterful Technique"] = true
	AL["Decorations of Martial Prowess"] = true
	AL["Trophies of Unrivaled Rage"] = true
	AL["Remnants of Expansive Research"] = true

	-- AQ40 Sets
	AL["Genesis Raiment"] = true
	AL["Striker's Garb"] = true
	AL["Enigma Vestments"] = true
	AL["Avenger's Battlegear"] = true
	AL["Garments of the Oracle"] = true
	AL["Deathdealer's Embrace"] = true
	AL["Stormcaller's Garb"] = true
	AL["Doomcaller's Attire"] = true
	AL["Conqueror's Battlegear"] = true

	-- Dungeon 1 Sets
	AL["Wildheart Raiment"] = true
	AL["Beaststalker Armor"] = true
	AL["Magister's Regalia"] = true
	AL["Lightforge Armor"] = true
	AL["Vestments of the Devout"] = true
	AL["Shadowcraft Armor"] = true
	AL["The Elements"] = true
	AL["Dreadmist Raiment"] = true
	AL["Battlegear of Valor"] = true

	-- Dungeon 2 Sets
	AL["Feralheart Raiment"] = true
	AL["Beastmaster Armor"] = true
	AL["Sorcerer's Regalia"] = true
	AL["Soulforge Armor"] = true
	AL["Vestments of the Virtuous"] = true
	AL["Darkmantle Armor"] = true
	AL["The Five Thunders"] = true
	AL["Deathmist Raiment"] = true
	AL["Battlegear of Heroism"] = true

	-- Dungeon 3 Sets
	AL["Hallowed Raiment"] = true
	AL["Incanter's Regalia"] = true
	AL["Mana-Etched Regalia"] = true
	AL["Oblivion Raiment"] = true
	AL["Assassination Armor"] = true
	AL["Moonglade Raiment"] = true
	AL["Wastewalker Armor"] = true
	AL["Beast Lord Armor"] = true
	AL["Desolation Battlegear"] = true
	AL["Tidefury Raiment"] = true
	AL["Bold Armor"] = true
	AL["Doomplate Battlegear"] = true
	AL["Righteous Armor"] = true

	-- Tier 1 Sets
	AL["Cenarion Raiment"] = true
	AL["Giantstalker Armor"] = true
	AL["Arcanist Regalia"] = true
	AL["Lawbringer Armor"] = true
	AL["Vestments of Prophecy"] = true
	AL["Nightslayer Armor"] = true
	AL["The Earthfury"] = true
	AL["Felheart Raiment"] = true
	AL["Battlegear of Might"] = true
	AL["Fury of Might"] = true

	-- Tier 2 Sets
	AL["Stormrage Raiment"] = true
	AL["Dragonstalker Armor"] = true
	AL["Netherwind Regalia"] = true
	AL["Judgement Armor"] = true
	AL["Vestments of Transcendence"] = true
	AL["Bloodfang Armor"] = true
	AL["The Ten Storms"] = true
	AL["Nemesis Raiment"] = true
	AL["Battlegear of Wrath"] = true
	AL["Fury of Wrath"] = true

	-- Tier 3 Sets
	AL["Dreamwalker Raiment"] = true
	AL["Cryptstalker Armor"] = true
	AL["Frostfire Regalia"] = true
	AL["Redemption Armor"] = true
	AL["Vestments of Faith"] = true
	AL["Bonescythe Armor"] = true
	AL["The Earthshatterer"] = true
	AL["Plagueheart Raiment"] = true
	AL["Dreadnaught's Battlegear"] = true
	AL["Fury's Battlegear"] = true
	AL["Dreadborne Warplate"] = true

	-- Tier 4 Sets
	AL["Malorne Harness"] = true
	AL["Malorne Raiment"] = true
	AL["Malorne Regalia"] = true
	AL["Demon Stalker Armor"] = true
	AL["Aldor Regalia"] = true
	AL["Justicar Armor"] = true
	AL["Justicar Battlegear"] = true
	AL["Justicar Raiment"] = true
	AL["Incarnate Raiment"] = true
	AL["Incarnate Regalia"] = true
	AL["Netherblade Set"] = true
	AL["Cyclone Harness"] = true
	AL["Cyclone Raiment"] = true
	AL["Cyclone Regalia"] = true
	AL["Voidheart Raiment"] = true
	AL["Warbringer Armor"] = true
	AL["Warbringer Battlegear"] = true

	-- Tier 5 Sets
	AL["Nordrassil Harness"] = true
	AL["Nordrassil Raiment"] = true
	AL["Nordrassil Regalia"] = true
	AL["Rift Stalker Armor"] = true
	AL["Tirisfal Regalia"] = true
	AL["Crystalforge Armor"] = true
	AL["Crystalforge Battlegear"] = true
	AL["Crystalforge Raiment"] = true
	AL["Avatar Raiment"] = true
	AL["Avatar Regalia"] = true
	AL["Deathmantle Set"] = true
	AL["Cataclysm Harness"] = true
	AL["Cataclysm Raiment"] = true
	AL["Cataclysm Regalia"] = true
	AL["Corruptor Raiment"] = true
	AL["Destroyer Armor"] = true
	AL["Destroyer Battlegear"] = true

	-- Tier 6 Sets
	AL["Thunderheart Harness"] = true
	AL["Thunderheart Raiment"] = true
	AL["Thunderheart Regalia"] = true
	AL["Gronnstalker's Armor"] = true
	AL["Tempest Regalia"] = true
	AL["Lightbringer Armor"] = true
	AL["Lightbringer Battlegear"] = true
	AL["Lightbringer Raiment"] = true
	AL["Vestments of Absolution"] = true
	AL["Absolution Regalia"] = true
	AL["Slayer's Armor"] = true
	AL["Skyshatter Harness"] = true
	AL["Skyshatter Raiment"] = true
	AL["Skyshatter Regalia"] = true
	AL["Malefic Raiment"] = true
	AL["Onslaught Armor"] = true
	AL["Onslaught Battlegear"] = true

	-- Tier 7 Sets
	AL["Scourgeborne Battlegear"] = true
	AL["Scourgeborne Plate"] = true
	AL["Dreamwalker Garb"] = true
	AL["Dreamwalker Battlegear"] = true
	AL["Dreamwalker Regalia"] = true
	AL["Cryptstalker Battlegear"] = true
	AL["Frostfire Garb"] = true
	AL["Redemption Regalia"] = true
	AL["Redemption Battlegear"] = true
	AL["Redemption Plate"] = true
	AL["Regalia of Faith"] = true
	AL["Garb of Faith"] = true
	AL["Bonescythe Battlegear"] = true
	AL["Earthshatter Garb"] = true
	AL["Earthshatter Battlegear"] = true
	AL["Earthshatter Regalia"] = true
	AL["Plagueheart Garb"] = true
	AL["Dreadnaught Battlegear"] = true
	AL["Dreadnaught Plate"] = true

	-- Tier 8 Sets
	AL["Darkruned Battlegear"] = true
	AL["Darkruned Plate"] = true
	AL["Nightsong Garb"] = true
	AL["Nightsong Battlegear"] = true
	AL["Nightsong Regalia"] = true
	AL["Scourgestalker Battlegear"] = true
	AL["Kirin Tor Garb"] = true
	AL["Aegis Regalia"] = true
	AL["Aegis Battlegear"] = true
	AL["Aegis Plate"] = true
	AL["Sanctification Regalia"] = true
	AL["Sanctification Garb"] = true
	AL["Terrorblade Battlegear"] = true
	AL["Worldbreaker Garb"] = true
	AL["Worldbreaker Battlegear"] = true
	AL["Worldbreaker Regalia"] = true
	AL["Deathbringer Garb"] = true
	AL["Siegebreaker Battlegear"] = true
	AL["Siegebreaker Plate"] = true

	-- Tier 9 Sets
	AL["Malfurion's Garb"] = true
	AL["Malfurion's Battlegear"] = true
	AL["Malfurion's Regalia"] = true
	AL["Runetotem's Garb"] = true
	AL["Runetotem's Battlegear"] = true
	AL["Runetotem's Regalia"] = true
	AL["Windrunner's Battlegear"] = true
	AL["Windrunner's Pursuit"] = true
	AL["Khadgar's Regalia"] = true
	AL["Sunstrider's Regalia"] = true
	AL["Turalyon's Garb"] = true
	AL["Turalyon's Battlegear"] = true
	AL["Turalyon's Plate"] = true
	AL["Liadrin's Garb"] = true
	AL["Liadrin's Battlegear"] = true
	AL["Liadrin's Plate"] = true
	AL["Velen's Regalia"] = true
	AL["Velen's Raiment"] = true
	AL["Zabra's Regalia"] = true
	AL["Zabra's Raiment"] = true
	AL["VanCleef's Battlegear"] = true
	AL["Garona's Battlegear"] = true
	AL["Nobundo's Garb"] = true
	AL["Nobundo's Battlegear"] = true
	AL["Nobundo's Regalia"] = true
	AL["Thrall's Garb"] = true
	AL["Thrall's Battlegear"] = true
	AL["Thrall's Regalia"] = true
	AL["Kel'Thuzad's Regalia"] = true
	AL["Gul'dan's Regalia"] = true
	AL["Wrynn's Battlegear"] = true
	AL["Wrynn's Plate"] = true
	AL["Hellscream's Battlegear"] = true
	AL["Hellscream's Plate"] = true
	AL["Thassarian's Battlegear"] = true
	AL["Koltira's Battlegear"] = true
	AL["Thassarian's Plate"] = true
	AL["Koltira's Plate"] = true

	-- Tier 10 Sets
	AL["Lasherweave's Garb"] = true
	AL["Lasherweave's Battlegear"] = true
	AL["Lasherweave's Regalia"] = true
	AL["Ahn'Kahar Blood Hunter's Battlegear"] = true
	AL["Bloodmage's Regalia"] = true
	AL["Lightsworn Garb"] = true
	AL["Lightsworn Plate"] = true
	AL["Lightsworn Battlegear"] = true
	AL["Crimson Acolyte's Regalia"] = true
	AL["Crimson Acolyte's Raiment"] = true
	AL["Shadowblade's Battlegear"] = true
	AL["Frost Witch's Garb"] = true
	AL["Frost Witch's Battlegear"] = true
	AL["Frost Witch's Regalia"] = true
	AL["Dark Coven's Garb"] = true
	AL["Ymirjar Lord's Battlegear"] = true
	AL["Ymirjar Lord's Plate"] = true
	AL["Scourgelord's Battlegear"] = true
	AL["Scourgelord's Plate"] = true

	-- Arathi Basin Sets - Alliance
	AL["The Highlander's Intent"] = true
	AL["The Highlander's Purpose"] = true
	AL["The Highlander's Will"] = true
	AL["The Highlander's Determination"] = true
	AL["The Highlander's Fortitude"] = true
	AL["The Highlander's Resolution"] = true
	AL["The Highlander's Resolve"] = true

	-- Arathi Basin Sets - Horde
	AL["The Defiler's Intent"] = true
	AL["The Defiler's Purpose"] = true
	AL["The Defiler's Will"] = true
	AL["The Defiler's Determination"] = true
	AL["The Defiler's Fortitude"] = true
	AL["The Defiler's Resolution"] = true
	AL["The Defiler's Resolve"] = true

	-- PvP Level 60 Rare Sets - Alliance
	AL["Lieutenant Commander's Refuge"] = true
	AL["Lieutenant Commander's Pursuance"] = true
	AL["Lieutenant Commander's Arcanum"] = true
	AL["Lieutenant Commander's Redoubt"] = true
	AL["Lieutenant Commander's Investiture"] = true
	AL["Lieutenant Commander's Guard"] = true
	AL["Lieutenant Commander's Stormcaller"] = true
	AL["Lieutenant Commander's Dreadgear"] = true
	AL["Lieutenant Commander's Battlearmor"] = true

	-- PvP Level 60 Rare Sets - Horde
	AL["Champion's Refuge"] = true
	AL["Champion's Pursuance"] = true
	AL["Champion's Arcanum"] = true
	AL["Champion's Redoubt"] = true
	AL["Champion's Investiture"] = true
	AL["Champion's Guard"] = true
	AL["Champion's Stormcaller"] = true
	AL["Champion's Dreadgear"] = true
	AL["Champion's Battlearmor"] = true

	-- PvP Level 60 Epic Sets - Alliance
	AL["Field Marshal's Sanctuary"] = true
	AL["Field Marshal's Pursuit"] = true
	AL["Field Marshal's Regalia"] = true
	AL["Field Marshal's Aegis"] = true
	AL["Field Marshal's Raiment"] = true
	AL["Field Marshal's Vestments"] = true
	AL["Field Marshal's Earthshaker"] = true
	AL["Field Marshal's Threads"] = true
	AL["Field Marshal's Battlegear"] = true
	AL["Grand Marshal's Sanctuary"] = true
	AL["Grand Marshal's Pursuit"] = true
	AL["Grand Marshal's Regalia"] = true
	AL["Grand Marshal's Aegis"] = true
	AL["Grand Marshal's Raiment"] = true
	AL["Grand Marshal's Vestments"] = true
	AL["Grand Marshal's Earthshaker"] = true
	AL["Grand Marshal's Threads"] = true
	AL["Grand Marshal's Battlegear"] = true

	-- PvP Level 60 Epic Sets - Horde
	AL["Warlord's Sanctuary"] = true
	AL["Warlord's Pursuit"] = true
	AL["Warlord's Regalia"] = true
	AL["Warlord's Aegis"] = true
	AL["Warlord's Raiment"] = true
	AL["Warlord's Vestments"] = true
	AL["Warlord's Earthshaker"] = true
	AL["Warlord's Threads"] = true
	AL["Warlord's Battlegear"] = true
	AL["High Warlord's Sanctuary"] = true
	AL["High Warlord's Pursuit"] = true
	AL["High Warlord's Regalia"] = true
	AL["High Warlord's Aegis"] = true
	AL["High Warlord's Raiment"] = true
	AL["High Warlord's Vestments"] = true
	AL["High Warlord's Earthshaker"] = true
	AL["High Warlord's Threads"] = true
	AL["High Warlord's Battlegear"] = true


	-- Outland Faction Reputation PvP Sets
	AL["Dragonhide Battlegear"] = true
	AL["Wyrmhide Battlegear"] = true
	AL["Kodohide Battlegear"] = true
	AL["Stalker's Chain Battlegear"] = true
	AL["Evoker's Silk Battlegear"] = true
	AL["Crusader's Scaled Battledgear"] = true
	AL["Crusader's Ornamented Battledgear"] = true
	AL["Satin Battlegear"] = true
	AL["Mooncloth Battlegear"] = true
	AL["Opportunist's Battlegear"] = true
	AL["Seer's Linked Battlegear"] = true
	AL["Seer's Mail Battlegear"] = true
	AL["Seer's Ringmail Battlegear"] = true
	AL["Dreadweave Battlegear"] = true
	AL["Savage's Plate Battlegear"] = true

	-- Arena Epic Sets
	AL["Gladiator's Sanctuary"] = true
	AL["Gladiator's Wildhide"] = true
	AL["Gladiator's Refuge"] = true
	AL["Gladiator's Pursuit"] = true
	AL["Gladiator's Regalia"] = true
	AL["Gladiator's Aegis"] = true
	AL["Gladiator's Vindication"] = true
	AL["Gladiator's Redemption"] = true
	AL["Gladiator's Raiment"] = true
	AL["Gladiator's Investiture"] = true
	AL["Gladiator's Vestments"] = true
	AL["Gladiator's Earthshaker"] = true
	AL["Gladiator's Thunderfist"] = true
	AL["Gladiator's Wartide"] = true
	AL["Gladiator's Dreadgear"] = true
	AL["Gladiator's Felshroud"] = true
	AL["Gladiator's Battlegear"] = true
	AL["Gladiator's Desecration"] = true

	-- Arena Seasons
	AL["Arena Season 1"] = true
	AL["Arena Season 2"] = true
	AL["Arena Season 3"] = true
	AL["Arena Season 4"] = true

	-- Level 80 PvP Weapons
	AL["Savage Gladiator\'s Weapons"] = true --unused
	AL["Deadly Gladiator\'s Weapons"] = true --unused
	AL["Furious Gladiator\'s Weapons"] = true
	AL["Relentless Gladiator\'s Weapons"] = true
	AL["Wrathful Gladiator\'s Weapons"] = true

	-- Months
	AL["January"] = true
	AL["February"] = true
	AL["March"] = true
	AL["April"] = true
	AL["May"] = true
	AL["June"] = true
	AL["July"] = true
	AL["August"] = true
	AL["September"] = true
	AL["October"] = true
	AL["November"] = true
	AL["December"] = true

	-- Specs
	AL["Balance"] = true
	AL["Feral"] = true
	AL["Restoration"] = true
	AL["Holy"] = true
	AL["Protection"] = true
	AL["Retribution"] = true
	AL["Shadow"] = true
	AL["Elemental"] = true
	AL["Enhancement"] = true
	AL["Fury"] = true
	AL["Demonology"] = true
	AL["Destruction"] = true
	AL["Tanking"] = true
	AL["DPS"] = true

	-- Naxx Zones
	AL["Construct Quarter"] = true
	AL["Arachnid Quarter"] = true
	AL["Military Quarter"] = true
	AL["Plague Quarter"] = true
	AL["Frostwyrm Lair"] = true

	-- NPCs missing from BabbleBoss
	AL["Trash Mobs"] = true
	AL["Dungeon Set 2 Summonable"] = true
	AL["Highlord Kruul"] = true
	AL["Theldren"] = true
	AL["Sothos and Jarien"] = true
	AL["Druid of the Fang"] = true
	AL["Defias Strip Miner"] = true
	AL["Defias Overseer/Taskmaster"] = true
	AL["Scarlet Defender/Myrmidon"] = true
	AL["Scarlet Champion"] = true
	AL["Scarlet Centurion"] = true
	AL["Scarlet Trainee"] = true
	AL["Herod/Mograine"] = true
	AL["Scarlet Protector/Guardsman"] = true
	AL["Shadowforge Flame Keeper"] = true
	AL["Olaf"] = true
	AL["Eric 'The Swift'"] = true
	AL["Shadow of Doom"] = true
	AL["Bone Witch"] = true
	AL["Lumbering Horror"] = true
	AL["Avatar of the Martyred"] = true
	AL["Yor"] = true
	AL["Nexus Stalker"] = true
	AL["Auchenai Monk"] = true
	AL["Cabal Fanatic"] = true
	AL["Unchained Doombringer"] = true
	AL["Crimson Sorcerer"] = true
	AL["Thuzadin Shadowcaster"] = true
	AL["Crimson Inquisitor"] = true
	AL["Crimson Battle Mage"] = true
	AL["Ghoul Ravener"] = true
	AL["Spectral Citizen"] = true
	AL["Spectral Researcher"] = true
	AL["Scholomance Adept"] = true
	AL["Scholomance Dark Summoner"] = true
	AL["Blackhand Elite"] = true
	AL["Blackhand Assassin"] = true
	AL["Firebrand Pyromancer"] = true
	AL["Firebrand Invoker"] = true
	AL["Firebrand Grunt"] = true
	AL["Firebrand Legionnaire"] = true
	AL["Spirestone Warlord"] = true
	AL["Spirestone Mystic"] = true
	AL["Anvilrage Captain"] = true
	AL["Anvilrage Marshal"] = true
	AL["Doomforge Arcanasmith"] = true
	AL["Weapon Technician"] = true
	AL["Doomforge Craftsman"] = true
	AL["Murk Worm"] = true
	AL["Atal'ai Witch Doctor"] = true
	AL["Raging Skeleton"] = true
	AL["Ethereal Priest"] = true
	AL["Sethekk Ravenguard"] = true
	AL["Time-Lost Shadowmage"] = true
	AL["Coilfang Sorceress"] = true
	AL["Coilfang Oracle"] = true
	AL["Shattered Hand Centurion"] = true
	AL["Eredar Deathbringer"] = true
	AL["Arcatraz Sentinel"] = true
	AL["Gargantuan Abyssal"] = true
	AL["Sunseeker Botanist"] = true
	AL["Sunseeker Astromage"] = true
	AL["Durnholde Rifleman"] = true
	AL["Rift Keeper/Rift Lord"] = true
	AL["Crimson Templar"] = true
	AL["Azure Templar"] = true
	AL["Hoary Templar"] = true
	AL["Earthen Templar"] = true
	AL["The Duke of Cynders"] = true
	AL["The Duke of Fathoms"] = true
	AL["The Duke of Zephyrs"] = true
	AL["The Duke of Shards"] = true
	AL["Aether-tech Assistant"] = true
	AL["Aether-tech Adept"] = true
	AL["Aether-tech Master"] = true
	AL["Trelopades"] = true
	AL["King Dorfbruiser"] = true
	AL["Gorgolon the All-seeing"] = true
	AL["Matron Li-sahar"] = true
	AL["Solus the Eternal"] = true
	AL["Balzaphon"] = true
	AL["Lord Blackwood"] = true
	AL["Revanchion"] = true
	AL["Scorn"] = true
	AL["Sever"] = true
	AL["Lady Falther'ess"] = true
	AL["Smokywood Pastures Vendor"] = true
	AL["Shartuul"] = true
	AL["Darkscreecher Akkarai"] = true
	AL["Karrog"] = true
	AL["Gezzarak the Huntress"] = true
	AL["Vakkiz the Windrager"] = true
	AL["Terokk"] = true
	AL["Armbreaker Huffaz"] = true
	AL["Fel Tinkerer Zortan"] = true
	AL["Forgosh"] = true
	AL["Gul'bor"] = true
	AL["Malevus the Mad"] = true
	AL["Porfus the Gem Gorger"] = true
	AL["Wrathbringer Laz-tarash"] = true
	AL["Bash'ir Landing Stasis Chambers"] = true
	AL["Templars"] = true
	AL["Dukes"] = true
	AL["High Council"] = true
	AL["Headless Horseman"] = true --Is in BabbleBoss
	AL["Barleybrew Brewery"] = true
	AL["Thunderbrew Brewery"] = true
	AL["Gordok Brewery"] = true
	AL["Drohn's Distillery"] = true
	AL["T'chali's Voodoo Brewery"] = true
	AL["Scarshield Quartermaster"] = true
	AL["Overmaster Pyron"] = true --Is in BabbleBoss
	AL["Father Flame"] = true
	AL["Thomas Yance"] = true
	AL["Knot Thimblejack"] = true
	AL["Shen'dralar Provisioner"] = true
	AL["Namdo Bizzfizzle"] = true
	AL["The Nameles Prophet"] = true
	AL["Zelemar the Wrathful"] = true
	AL["Henry Stern"] = true --Is in BabbleBoss
	AL["Aggem Thorncurse"] = true
	AL["Roogug"] = true
	AL["Rajaxx's Captains"] = true
	AL["Razorfen Spearhide"] = true
	AL["Rethilgore"] = true
	AL["Kalldan Felmoon"] = true
	AL["Magregan Deepshadow"] = true
	AL["Lord Ahune"] = true
	AL["Coren Direbrew"] = true --Is in BabbleBoss
	AL["Don Carlos"] = true
	AL["Thomas Yance"] = true
	AL["Aged Dalaran Wizard"] = true
	AL["Cache of the Legion"] = true
	AL["Rajaxx's Captains"] = true
	AL["Felsteed"] = true
	AL["Shattered Hand Executioner"] = true
	AL["Commander Stoutbeard"] = true -- Is in BabbleBoss
	AL["Bjarngrim"] = true -- Is in BabbleBoss
	AL["Loken"] = true -- Is in BabbleBoss
	AL["Time-Lost Proto Drake"] = true
	AL["Faction Champions"] = true -- if you have a better name, use it.
	AL["Razzashi Raptor"] = true
	AL["Deviate Ravager/Deviate Guardian"] = true
	AL["Krick and Ick"]  = true

	-- Zones
	AL["World Drop"] = true
	AL["Sunwell Isle"] = true
	AL["Gordok Commons"] = true
	AL["Hide crafting source unless holding CTRL"] = true
	AL["Show drop location on search results"] = true
	AL["Show if recipe is unknown in tooltips"] = true


	-- Shortcuts for Bossname files
	AL["LBRS"] = true
	AL["UBRS"] = true
	AL["CoT1"] = true
	AL["CoT2"] = true
	AL["Scholo"] = true
	AL["Strat"] = true
	AL["Serpentshrine"] = true
	AL["Avatar"] = true -- Avatar of the Martyred
	AL["Crafting Reagent"] = true

	-- Chests, etc
	AL["Dark Coffer"] = true
	AL["The Secret Safe"] = true
	AL["The Vault"] = true
	AL["Ogre Tannin Basket"] = true
	AL["Fengus's Chest"] = true
	AL["The Prince's Chest"] = true
	AL["Doan's Strongbox"] = true
	AL["Frostwhisper's Embalming Fluid"] = true
	AL["Unforged Rune Covered Breastplate"] = true
	AL["Malor's Strongbox"] = true
	AL["Unfinished Painting"] = true
	AL["Felvine Shard"] = true
	AL["Baelog's Chest"] = true
	AL["Lorgalis Manuscript"] = true
	AL["Fathom Core"] = true
	AL["Conspicuous Urn"] = true
	AL["Gift of Adoration"] = true
	AL["Box of Chocolates"] = true
	AL["Treat Bag"] = true
	AL["Gaily Wrapped Present"] = true
	AL["Festive Gift"] = true
	AL["Ticking Present"] = true
	AL["Gently Shaken Gift"] = true
	AL["Carefully Wrapped Present"] = true
	AL["Winter Veil Gift"] = true
	AL["Smokywood Pastures Extra-Special Gift"] = true
	AL["Brightly Colored Egg"] = true
	AL["Lunar Festival Fireworks Pack"] = true
	AL["Lucky Red Envelope"] = true
	AL["Small Rocket Recipes"] = true
	AL["Large Rocket Recipes"] = true
	AL["Cluster Rocket Recipes"] = true
	AL["Large Cluster Rocket Recipes"] = true
	AL["Timed Reward Chest"] = true
	AL["Timed Reward Chest 1"] = true
	AL["Timed Reward Chest 2"] = true
	AL["Timed Reward Chest 3"] = true
	AL["Timed Reward Chest 4"] = true
	AL["The Talon King's Coffer"] = true
	AL["Krom Stoutarm's Chest"] = true
	AL["Garrett Family Chest"] = true
	AL["Reinforced Fel Iron Chest"] = true
	AL["DM North Tribute Chest"] = true
	AL["The Saga of Terokk"] = true
	AL["First Fragment Guardian"] = true
	AL["Second Fragment Guardian"] = true
	AL["Third Fragment Guardian"] = true
	AL["Overcharged Manacell"] = true
	AL["Mysterious Egg"] = true
	AL["Hyldnir Spoils"] = true
	AL["Ripe Disgusting Jar"] = true
	AL["Cracked Egg"] = true
	AL["Small Spice Bag"] = true
	AL["Handful of Candy"] = true
	AL["Lovely Dress Box"] = true
	AL["Dinner Suit Box"] = true
	AL["Bag of Heart Candies"] = true
	AL["The Hive Undergrounds"] = true
	AL["The Temple Gates"] = true
	AL["Vault of C'Thun"] = true
	AL["Overview"] = true
	AL["Mob Drop"] = true
	AL["TBC Callboard Cache"] = true

	-- The next 4 lines are the tooltip for the Server Query Button
	-- The translation doesn't have to be literal, just re-write the
	-- sentences as you would naturally and break them up into 4 roughly
	-- equal lines.
	
	AL["Queries the server for all items"] = true
	AL["on this page. The items will be"] = true
	AL["refreshed when you next mouse"] = true
	AL["over them. |cffff0000 (Includes Bloodforged)"] = true
	AL["The Minimap Button is generated by the FuBar Plugin."] = true
	AL["This is automatic, you do not need FuBar installed."] = true

	-- Help Frame
	AL["Help"] = true
	AL["AtlasLoot Help"] = true
	AL["For further help, see our website and forums: "] = true
	AL["How to open the standalone Loot Browser:"] = true
	AL["How to view an 'unsafe' item:"] = true
	AL["Unsafe items have a red border around the icon and are marked because you have not seen the item since the last patch or server restart. Right-click the item, then move your mouse back over the item or click the 'Query Server' button at the bottom of the loot page. This will also load any Bloodforged items."] = true
	AL["How to view an item in the Dressing Room:"] = true
	AL["Simply Ctrl+Left Click on the item.  Sometimes the dressing room window is hidden behind the Atlas or AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden."] = true
	AL["How to link an item to someone else:"] = true
	AL["Shift+Left Click the item like you would for any other in-game item"] = true
	AL["How to add an item to the wishlist:"] = true
	AL["Right Click any item and open the context menu and click add to wishlist."] = true
	AL["Or Alt+Left Click any item to add it to the default wishlist."] = true
	AL["How to delete an item from the wishlist:"] = true
	AL["While on the wishlist screen, just Alt+Left Click on an item to delete it."] = true
	AL["What else does the wishlist do?"] = true
	AL["If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.  Also, on a loot page any item already in your wishlist is marked with a yellow star."] = true
	AL["HELP!! I have broken the mod somehow!"] = true
	AL["Use the reset buttons available in the options menu, or type '/al reset' in your chat window."] = true
	AL["How do I view Bloodforged items?"] = true
	AL["You must have 'Safe Chat Links' enabled in your options, and the Bloodforged item in your item cache.  When viewing a page, click the 'Query Server' button to load the items and Bloodforged equivalents, then right click on an item to display item links for the original and Bloodforged versions in your chat."] = true


	-- Error Messages and warnings
	AL["AtlasLoot Error!"] = true
	AL["WishList Full!"] = true
	AL[" added to the WishList."] = true
	AL[" already in the WishList!"] = true
	AL[" deleted from the WishList."] = true
	AL["No match found for"] = true
	AL[" is safe."] = true
	AL["Server queried for "] = true
	AL[".  Right click on any other item to refresh the loot page."] = true

	-- Incomplete Table Registry error message
	AL[" not listed in loot table registry, please report this message to the AtlasLoot forums at https://discord.gg/uYCE2X2FgA"] = true

	-- LoD Module disabled or missing
	AL[" is unavailable, the following load on demand module is required: "] = true

	-- LoD Module load sequence could not be completed
	AL["Status of the following module could not be determined: "] = true

	-- LoD Module required has loaded, but loot table is missing
	AL[" could not be accessed, the following module may be out of date: "] = true

	-- LoD module not defined
	AL["Loot module returned as nil!"] = true

	-- LoD module loaded successfully
	AL["sucessfully loaded."] = true

	-- Need a big dataset for searching
	AL["Loading available tables for searching"] = true

	-- All Available modules loaded
	AL["All Available Modules Loaded"] = true

	-- First time user
	AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences."] = true
	AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences for tooltips and links in the chat window.\n\n  This options screen can be reached again at any later time by typing '/atlasloot'."] = true
	AL["Setup"] = true

	-- Unsafe item tooltip
	AL["Unsafe Item"] = true
	AL["Item Unavailable"] = true
	AL["ItemID:"] = true
	AL["This item is not available on your server or your battlegroup yet."] = true
	AL["This item is unsafe.  To view this item without the risk of disconnection, you need to have first seen it in the game world. This is a restriction enforced by Blizzard since Patch 1.10."] = true
	AL["You can right-click to attempt to query the server.  You may be disconnected."] = true

	-- AtlasMap Info
	AL["Brewfest"] = true
	AL["Hallow's End"] = true
	AL["Love is in the Air"] = true
	AL["Lunar Festival"] = true
	AL["Midsummer Festival"] = true
	--Misc strings
	AL["Adult"] = true
	AL["AKA"] = true
	AL["Alliance"] = true
	AL["Arcane Container"] = true
	AL["Argent Dawn"] = true
	AL["Argent Crusade"] = true
	AL["Arms Warrior"] = true
	AL["Attunement Required"] = true
	AL["Back"] = true
	AL["Basement"] = true
	AL["Bat"] = true
	AL["Blacksmithing Plans"] = true
	AL["Boss"] = true
	AL["Brazier of Invocation"] = true
	AL["Chase Begins"] = true
	AL["Chase Ends"] = true
	AL["Child"] = true
	AL["Connection"] = true
	AL["DS2"] = true
	AL["Elevator"] = true
	AL["End"] = true
	AL["Engineer"] = true
	AL["Entrance"] = true
	AL["Event"] = true
	AL["Exalted"] = true
	AL["Exit"] = true
	AL["Fourth Stop"] = true
	AL["Front"] = true
	AL["Ghost"] = true
	AL["Heroic"] = true
	AL["Holy Paladin"] = true
	AL["Holy Priest"] = true
	AL["Horde"] = true
	AL["Hunter"] = true
	AL["Imp"] = true
	AL["Inside"] = true
	AL["Key"] = true
	AL["Lower"] = true
	AL["Mage"] = true
	AL["Meeting Stone"] = true
	AL["Monk"] = true
	AL["Moonwell"] = true
	AL["Optional"] = true
	AL["Orange"] = true
	AL["Outside"] = true
	AL["Paladin"] = true
	AL["Panther"] = true
	AL["Portal"] = true
	AL["Priest"] = true
	AL["Protection Warrior"] = true
	AL["Purple"] = true
	AL["Random"] = true
	AL["Raptor"] = true
	AL["Rare"] = true
	AL["Epic"] = true
	AL["Reputation"] = true
	AL["Repair"] = true
	AL["Retribution Paladin"] = true
	AL["Rewards"] = true
	AL["Rogue"] = true
	AL["Second Stop"] = true
	AL["Shadow Priest"] = true
	AL["Shaman"] = true
	AL["Side"] = true
	AL["Snake"] = true
	AL["Spawn Point"] = true
	AL["Spider"] = true
	AL["Start"] = true
	AL["Summon"] = true
	AL["Teleporter"] = true
	AL["Third Stop"] = true
	AL["Tiger"] = true
	AL["Top"] = true
	AL["Undead"] = true
	AL["Underwater"] = true
	AL["Unknown"] = true
	AL["Upper"] = true
	AL["Varies"] = true
	AL["Wanders"] = true
	AL["Warlock"] = true
	AL["Warrior"] = true
	AL["Wave 5"] = true
	AL["Wave 6"] = true
	AL["Wave 10"] = true
	AL["Wave 12"] = true
	AL["Wave 18"] = true

	--Classic Acronyms
	AL["AQ"] = true
	AL["AQR"] = true
	AL["AQT"] = true
	AL["Armory"] = true
	AL["BFD"] = true
	AL["BRD"] = true
	AL["BRM"] = true
	AL["BWL"] = true
	AL["Cath"] = true
	AL["DM"] = true
	AL["Gnome"] = true
	AL["GY"] = true
	AL["LBRS"] = true
	AL["Lib"] = true
	AL["Mara"] = true
	AL["MC"] = true
	AL["RFC"] = true
	AL["RFD"] = true
	AL["RFK"] = true
	AL["Scholo"] = true
	AL["SFK"] = true
	AL["SM"] = true
	AL["ST"] = true
	AL["Strat"] = true
	AL["Stocks"] = true
	AL["UBRS"] = true
	AL["Ulda"] = true
	AL["VC"] = true
	AL["WC"] = true
	AL["ZF"] = true
	AL["ZG"] = true
	AL["Ony60"] = true
	--BC Acronyms
	AL["AC"] = true
	AL["Arca"] = true
	AL["Auch"] = true
	AL["BF"] = true
	AL["BT"] = true
	AL["Bota"] = true
	AL["CoT"] = true
	AL["CoT1"] = true
	AL["CoT2"] = true
	AL["CoT3"] = true
	AL["CR"] = true
	AL["Eye"] = true
	AL["GL"] = true
	AL["HC"] = true
	AL["Kara"] = true
	AL["MaT"] = true
	AL["Mag"] = true
	AL["Mech"] = true
	AL["MT"] = true
	AL["Ramp"] = true
	AL["SC"] = true
	AL["Seth"] = true
	AL["SH"] = true
	AL["SL"] = true
	AL["SP"] = true
	AL["SuP"] = true
	AL["SV"] = true
	AL["TK"] = true
	AL["UB"] = true
	AL["ZA"] = true

	--WotLK Acronyms
	AL["AK, Kahet"] = true
	AL["AN, Nerub"] = true
	AL["Champ"] = true
	AL["CoT-Strat"] = true
	AL["Crus"] = true
	AL["DTK"] = true
	AL["FoS"] = true
	AL["FH1"] = true
	AL["Gun"] = true
	AL["HoL"] = true
	AL["HoR"] = true 
	AL["FH3"] = true
	AL["HoS"] = true
	AL["IC"] = true
	AL["Nax"] = true
	AL["Nex, Nexus"] = true
	AL["Ocu"] = true
	AL["Ony"] = true
	AL["OS"] = true
	AL["PoS"] = true 
	AL["FH2"] = true
	AL["RS"] = true
	AL["TEoE"] = true
	AL["UK, Keep"] = true
	AL["Uldu"] = true
	AL["UP, Pinn"] = true
	AL["VH"] = true
	AL["VoA"] = true

	--Zones not included in LibBabble-Zone
	AL["Crusaders' Coliseum"] = true

--************************************************
-- Instance Entrance Maps
--************************************************

	--Auchindoun (Entrance)
	AL["Ha'Lei"] = true
	AL["Greatfather Aldrimus"] = true
	AL["Clarissa"] = true
	AL["Ramdor the Mad"] = true
	AL["Horvon the Armorer <Armorsmith>"] = true
	AL["Nexus-Prince Haramad"] = true
	AL["Artificer Morphalius"] = true
	AL["Mamdy the \"Ologist\""] = true
	AL["\"Slim\" <Shady Dealer>"] = true
	AL["\"Captain\" Kaftiz"] = true
	AL["Isfar"] =true
	AL["Field Commander Mahfuun"] = true
	AL["Spy Grik'tha"] = true
	AL["Provisioner Tsaalt"] = true
	AL["Dealer Tariq <Shady Dealer>"] = true

	--Blackfathom Deeps (Entrance)
	--Nothing to translate!

	--Blackrock Mountain (Entrance)
	AL["Bodley"] = true
	AL["Overmaster Pyron"] = true
	AL["Lothos Riftwaker"] = true
	AL["Franclorn Forgewright"] = true
	AL["Orb of Command"] = true
	AL["Scarshield Quartermaster <Scarshield Legion>"] = true

	--Coilfang Reservoir (Entrance)
	AL["Watcher Jhang"] = true
	AL["Mortog Steamhead"] = true

	--Caverns of Time (Entrance)
	AL["Steward of Time <Keepers of Time>"] = true
	AL["Alexston Chrome <Tavern of Time>"] = true
	AL["Yarley <Armorer>"] = true
	AL["Bortega <Reagents & Poison Supplies>"] = true
	AL["Galgrom <Provisioner>"] = true
	AL["Alurmi <Keepers of Time Quartermaster>"] = true
	AL["Zaladormu"] = true
	AL["Soridormi <The Scale of Sands>"] = true
	AL["Arazmodu <The Scale of Sands>"] = true
	AL["Andormu <Keepers of Time>"] = true
	AL["Nozari <Keepers of Time>"] = true

	--Dire Maul (Entrance)
	AL["Dire Pool"] = true
	AL["Dire Maul Arena"] = true
	AL["Mushgog"] = true
	AL["Skarr the Unbreakable"] = true
	AL["The Razza"] = true
	AL["Elder Mistwalker"] = true

	--Gnomeregan (Entrance)
	AL["Transpolyporter"] = true
	AL["Sprok <Away Team>"] = true
	AL["Matrix Punchograph 3005-A"] = true
	AL["Namdo Bizzfizzle <Engineering Supplies>"] = true
	AL["Techbot"] = true

	-- Hellfire Citadel (Entrance)
	AL["Steps and path to the Blood Furnace"] = true
	AL["Path to the Hellfire Ramparts and Shattered Halls"] = true
	AL["Meeting Stone of Magtheridon's Lair"] = true
	AL["Meeting Stone of Hellfire Citadel"] = true

	--Karazhan (Entrance)
	AL["Archmage Leryda"] = true
	AL["Apprentice Darius"] = true
	AL["Archmage Alturus"] = true
	AL["Stairs to Underground Pond"] = true
	AL["Stairs to Underground Well"] = true
	AL["Charred Bone Fragment"] = true

	--Maraudon (Entrance)
	AL["The Nameless Prophet"] = true
	AL["Kolk <The First Kahn>"] = true
	AL["Gelk <The Second Kahn>"] = true
	AL["Magra <The Third Kahn>"] = true
	AL["Cavindra"] = true

	--The Deadmines (Entrance)
	AL["Marisa du'Paige"] = true
	AL["Brainwashed Noble"] = true
	AL["Foreman Thistlenettle"] = true

	--Sunken Temple (Entrance)
	AL["Jade"] = true
	AL["Kazkaz the Unholy"] = true
	AL["Zekkis"] = true
	AL["Veyzhak the Cannibal"] = true

	--Uldaman (Entrance)
	AL["Hammertoe Grez"] = true
	AL["Magregan Deepshadow"] = true
	AL["Tablet of Ryun'Eh"] = true
	AL["Krom Stoutarm's Chest"] = true
	AL["Garrett Family Chest"] = true
	AL["Digmaster Shovelphlange"] = true

	--Wailing Caverns (Entrance)
	AL["Mad Magglish"] = true
	AL["Trigore the Lasher"] = true
	AL["Boahn <Druid of the Fang>"] = true
	AL["Above the Entrance:"] = true
	AL["Ebru <Disciple of Naralex>"] = true
	AL["Nalpak <Disciple of Naralex>"] = true
	AL["Kalldan Felmoon <Specialist Leatherworking Supplies>"] = true
	AL["Waldor <Leatherworking Trainer>"] = true

--**AL**********************************************
-- KALalimdor Instances (Classic)
--**AL**********************************************

	--Blackfathom Deeps
	AL["Ghamoo-ra"] = true
	AL["Lorgalis Manuscript"] = true
	AL["Lady Sarevess"] = true
	AL["Argent Guard Thaelrid <The Argent Dawn>"] = true
	AL["Gelihast"] = true
	AL["Shrine of Gelihast"] = true
	AL["Lorgus Jett"] = true
	AL["Fathom Stone"] = true
	AL["Baron Aquanis"] = true
	AL["Twilight Lord Kelris"] = true
	AL["Old Serra'kis"] = true
	AL["Aku'mai"] = true
	AL["Morridune"] = true
	AL["Altar of the Deeps"] = true

	--Dire Maul (East)
	AL["Pusillin"] = true
	AL["Zevrim Thornhoof"] = true
	AL["Hydrospawn"] = true
	AL["Lethtendris"] = true
	AL["Pimgib"] = true
	AL["Old Ironbark"] = true
	AL["Alzzin the Wildshaper"] = true
	AL["Isalien"] = true

	--Dire Maul (North)
	AL["Crescent Key"] = true
	--"Library" omitted from here and DM West because of SM: "Library" duplicate
	AL["Guard Mol'dar"] = true
	AL["Stomper Kreeg <The Drunk>"] = true
	AL["Guard Fengus"] = true
	AL["Knot Thimblejack"] = true
	AL["Guard Slip'kik"] = true
	AL["Captain Kromcrush"] = true
	AL["King Gordok"] = true
	AL["Cho'Rush the Observer"] = true

	--Dire Maul (West)
	AL["J'eevee's Jar"] = true
	AL["Pylons"] = true
	AL["Shen'dralar Ancient"] = true
	AL["Tendris Warpwood"] = true
	AL["Ancient Equine Spirit"] = true
	AL["Illyanna Ravenoak"] = true
	AL["Ferra"] = true
	AL["Magister Kalendris"] = true
	AL["Tsu'zee"] = true
	AL["Immol'thar"] = true
	AL["Lord Hel'nurath"] = true
	AL["Prince Tortheldrin"] = true
	AL["Falrin Treeshaper"] = true
	AL["Lorekeeper Lydros"] = true
	AL["Lorekeeper Javon"] = true
	AL["Lorekeeper Kildrath"] = true
	AL["Lorekeeper Mykos"] = true
	AL["Shen'dralar Provisioner"] = true
	AL["Skeletal Remains of Kariel Winthalus"] = true

	--Maraudon	
	AL["Scepter of Celebras"] = true
	AL["Veng <The Fifth Khan>"] = true
	AL["Noxxion"] = true
	AL["Razorlash"] = true
	AL["Maraudos <The Fourth Khan>"] = true
	AL["Lord Vyletongue"] = true
	AL["Meshlok the Harvester"] = true
	AL["Celebras the Cursed"] = true
	AL["Landslide"] = true
	AL["Tinkerer Gizlock"] = true
	AL["Rotgrip"] = true
	AL["Princess Theradras"] = true
	AL["Elder Splitrock"] = true
	AL["Caverns of Maraudon"] = true
	AL["Zaetar's Grave"] = true

	--Ragefire Chasm
	AL["Maur Grimtotem"] = true
	AL["Oggleflint <Ragefire Chieftain>"] = true
	AL["Taragaman the Hungerer"] = true
	AL["Jergosh the Invoker"] = true
	AL["Zelemar the Wrathful"] = true
	AL["Bazzalan"] = true

	--Razorfen Downs
	AL["Tuten'kash"] = true
	AL["Henry Stern"] = true
	AL["Belnistrasz"] = true
	AL["Sah'rhee"] = true
	AL["Mordresh Fire Eye"] = true
	AL["Glutton"] = true
	AL["Ragglesnout"] = true
	AL["Amnennar the Coldbringer"] = true
	AL["Plaguemaw the Rotting"] = true

	--Razorfen Kraul
	AL["Roogug"] = true
	AL["Aggem Thorncurse <Death's Head Prophet>"] = true
	AL["Death Speaker Jargba <Death's Head Captain>"] = true
	AL["Overlord Ramtusk"] = true
	AL["Razorfen Spearhide"] = true
	AL["Agathelos the Raging"] = true
	AL["Blind Hunter"] = true
	AL["Charlga Razorflank <The Crone>"] = true
	AL["Willix the Importer"] = true
	AL["Heralath Fallowbrook"] = true
	AL["Earthcaller Halmgar"] = true

	--Ruins of Ahn'Qiraj
	AL["Cenarion Circle"] = true
	AL["Kurinnaxx"] = true
	AL["Lieutenant General Andorov"] = true
	AL["Four Kaldorei Elites"] = true
	AL["General Rajaxx"] = true
	AL["Captain Qeez"] = true
	AL["Captain Tuubid"] = true
	AL["Captain Drenn"] = true
	AL["Captain Xurrem"] = true
	AL["Major Yeggeth"] = true
	AL["Major Pakkon"] = true
	AL["Colonel Zerran"] = true
	AL["Moam"] = true
	AL["Buru the Gorger"] = true
	AL["Ayamiss the Hunter"] = true
	AL["Ossirian the Unscarred"] = true
	AL["Safe Room"] = true

	--Temple of Ahn'Qiraj
	AL["Brood of Nozdormu"] = true
	AL["The Prophet Skeram"] = true
	AL["The Bug Family"] = true
	AL["Vem"] = true
	AL["Lord Kri"] = true
	AL["Princess Yauj"] = true
	AL["Battleguard Sartura"] = true
	AL["Fankriss the Unyielding"] = true
	AL["Viscidus"] = true
	AL["Princess Huhuran"] = true
	AL["Twin Emperors"] = true
	AL["Emperor Vek'lor"] = true
	AL["Emperor Vek'nilash"] = true
	AL["Ouro"] = true
	AL["Eye of C'Thun"] = true
	AL["C'Thun"] = true
	AL["Andorgos <Brood of Malygos>"] = true
	AL["Vethsera <Brood of Ysera>"] = true
	AL["Kandrostrasz <Brood of Alexstrasza>"] = true
	AL["Arygos"] = true
	AL["Caelestrasz"] = true
	AL["Merithra of the Dream"] = true

	--Wailing Caverns
	AL["Disciple of Naralex"] = true
	AL["Lord Cobrahn <Fanglord>"] = true
	AL["Lady Anacondra <Fanglord>"] = true
	AL["Kresh"] = true
	AL["Lord Pythas <Fanglord>"] = true
	AL["Skum"] = true
	AL["Lord Serpentis <Fanglord>"] = true
	AL["Verdan the Everliving"] = true
	AL["Mutanus the Devourer"] = true
	AL["Naralex"] = true
	AL["Deviate Faerie Dragon"] = true

	--Zul'Farrak
	AL["Antu'sul <Overseer of Sul>"] = true
	AL["Theka the Martyr"] = true
	AL["Witch Doctor Zum'rah"] = true
	AL["Zul'Farrak Dead Hero"] = true
	AL["Nekrum Gutchewer"] = true
	AL["Shadowpriest Sezz'ziz"] = true
	AL["Dustwraith"] = true
	AL["Sergeant Bly"] = true
	AL["Weegli Blastfuse"] = true
	AL["Murta Grimgut"] = true
	AL["Raven"] = true
	AL["Oro Eyegouge"] = true
	AL["Sandfury Executioner"] = true
	AL["Hydromancer Velratha"] = true
	AL["Gahz'rilla"] = true
	AL["Elder Wildmane"] = true
	AL["Chief Ukorz Sandscalp"] = true
	AL["Ruuzlu"] = true
	AL["Zerillis"] = true
	AL["Sandarr Dunereaver"] = true

--****************************
-- Eastern Kingdoms Instances (Classic)
--****************************

	--Blackrock Depths
	AL["Shadowforge Key"] = true
	AL["Prison Cell Key"] = true
	AL["Jail Break!"] = true
	AL["Banner of Provocation"] = true
	AL["Lord Roccor"] = true
	AL["Kharan Mighthammer"] = true
	AL["Commander Gor'shak <Kargath Expeditionary Force>"] = true
	AL["Marshal Windsor"] = true
	AL["High Interrogator Gerstahn <Twilight's Hammer Interrogator>"] = true
	AL["Ring of Law"] = true
	AL["Anub'shiah"] = true
	AL["Eviscerator"] = true
	AL["Gorosh the Dervish"] = true
	AL["Grizzle"] = true
	AL["Hedrum the Creeper"] = true
	AL["Ok'thor the Breaker"] = true
	AL["Theldren"] = true
	AL["Lefty"] = true
	AL["Malgen Longspear"] = true
	AL["Gnashjaw <Malgen Longspear's Pet>"] = true
	AL["Rotfang"] = true
	AL["Va'jashni"] = true
	AL["Houndmaster Grebmar"] = true
	AL["Elder Morndeep"] = true
	AL["High Justice Grimstone"] = true
	AL["Monument of Franclorn Forgewright"] = true
	AL["Pyromancer Loregrain"] = true
	AL["The Vault"] = true
	AL["Warder Stilgiss"] = true
	AL["Verek"] = true
	AL["Watchman Doomgrip"] = true
	AL["Fineous Darkvire <Chief Architect>"] = true
	AL["The Black Anvil"] = true
	AL["Lord Incendius"] = true
	AL["Bael'Gar"] = true
	AL["Shadowforge Lock"] = true
	AL["General Angerforge"] = true
	AL["Golem Lord Argelmach"] = true
	AL["Field Repair Bot 74A"] = true
	AL["The Grim Guzzler"] = true
	AL["Hurley Blackbreath"] = true
	AL["Lokhtos Darkbargainer <The Thorium Brotherhood>"] = true
	AL["Mistress Nagmara"] = true
	AL["Phalanx"] = true
	AL["Plugger Spazzring"] = true
	AL["Private Rocknot"] = true
	AL["Ribbly Screwspigot"] = true
	AL["Coren Direbrew"] = true
	AL["Griz Gutshank <Arena Vendor>"] = true
	AL["Ambassador Flamelash"] = true
	AL["Panzor the Invincible"] = true
	AL["Summoner's Tomb"] = true
	AL["The Lyceum"] = true
	AL["Magmus"] = true
	AL["Emperor Dagran Thaurissan"] = true
	AL["Princess Moira Bronzebeard <Princess of Ironforge>"] = true
	AL["High Priestess of Thaurissan"] = true
	AL["The Black Forge"] = true
	AL["Core Fragment"] = true
	AL["Overmaster Pyron"] = true

	--Blackrock Spire (Lower)
	AL["Vaelan"] = true
	AL["Warosh <The Cursed>"] = true
	AL["Elder Stonefort"] = true
	AL["Roughshod Pike"] = true
	AL["Spirestone Butcher"] = true
	AL["Highlord Omokk"] = true
	AL["Spirestone Battle Lord"] = true
	AL["Spirestone Lord Magus"] = true
	AL["Shadow Hunter Vosh'gajin"] = true
	AL["Fifth Mosh'aru Tablet"] = true
	AL["Bijou"] = true
	AL["War Master Voone"] = true
	AL["Mor Grayhoof"] = true
	AL["Sixth Mosh'aru Tablet"] = true
	AL["Bijou's Belongings"] = true
	AL["Human Remains"] = true
	AL["Unfired Plate Gauntlets"] = true
	AL["Bannok Grimaxe <Firebrand Legion Champion>"] = true
	AL["Mother Smolderweb"] = true
	AL["Crystal Fang"] = true
	AL["Urok's Tribute Pile"] = true
	AL["Urok Doomhowl"] = true
	AL["Quartermaster Zigris <Bloodaxe Legion>"] = true
	AL["Halycon"] = true
	AL["Gizrul the Slavener"] = true
	AL["Ghok Bashguud <Bloodaxe Champion>"] = true
	AL["Overlord Wyrmthalak"] = true
	AL["Burning Felguard"] = true

	--Blackrock Spire (Upper)
	AL["Pyroguard Emberseer"] = true
	AL["Solakar Flamewreath"] = true
	AL["Father Flame"] = true
	AL["Darkstone Tablet"] = true
	AL["Doomrigger's Coffer"] = true
	AL["Jed Runewatcher <Blackhand Legion>"] = true
	AL["Goraluk Anvilcrack <Blackhand Legion Armorsmith>"] = true
	AL["Warchief Rend Blackhand"] = true
	AL["Gyth <Rend Blackhand's Mount>"] = true
	AL["Awbee"] = true
	AL["The Beast"] = true
	AL["Lord Valthalak"] = true
	AL["Finkle Einhorn"] = true
	AL["General Drakkisath"] = true
	AL["Drakkisath's Brand"] = true

	--Blackwing Lair
	AL["Razorgore the Untamed"] = true
	AL["Vaelastrasz the Corrupt"] = true
	AL["Broodlord Lashlayer"] = true
	AL["Firemaw"] = true
	AL["Draconic for Dummies (Chapter VII)"] = true
	AL["Master Elemental Shaper Krixix"] = true
	AL["Ebonroc"] = true
	AL["Flamegor"] = true
	AL["Chromaggus"] = true
	AL["Nefarian"] = true

	--Gnomeregan
	AL["Workshop Key"] = true
	AL["Blastmaster Emi Shortfuse"] = true
	AL["Grubbis"] = true
	AL["Chomper"] = true
	AL["Clean Room"] = true
	AL["Tink Sprocketwhistle <Engineering Supplies>"] = true
	AL["The Sparklematic 5200"] = true
	AL["Mail Box"] = true
	AL["Kernobee"] = true
	AL["Alarm-a-bomb 2600"] = true
	AL["Matrix Punchograph 3005-B"] = true
	AL["Viscous Fallout"] = true
	AL["Electrocutioner 6000"] = true
	AL["Matrix Punchograph 3005-C"] = true
	AL["Crowd Pummeler 9-60"] = true
	AL["Matrix Punchograph 3005-D"] = true
	AL["Dark Iron Ambassador"] = true
	AL["Mekgineer Thermaplugg"] = true

	--Molten Core
	AL["Hydraxian Waterlords"] = true
	AL["Lucifron"] = true
	AL["Magmadar"] = true
	AL["Gehennas"] = true
	AL["Garr"] = true
	AL["Shazzrah"] = true
	AL["Baron Geddon"] = true
	AL["Golemagg the Incinerator"] = true
	AL["Sulfuron Harbinger"] = true
	AL["Majordomo Executus"] = true
	AL["Ragnaros"] = true

	--Scholomance
	AL["Skeleton Key"] = true
	AL["Viewing Room Key"] = true
	AL["Viewing Room"] = true
	AL["Blood of Innocents"] = true
	AL["Divination Scryer"] = true
	AL["Blood Steward of Kirtonos"] = true
	AL["The Deed to Southshore"] = true
	AL["Kirtonos the Herald"] = true
	AL["Jandice Barov"] = true
	AL["The Deed to Tarren Mill"] = true
	AL["Rattlegore"] = true
	AL["Death Knight Darkreaver"] = true
	AL["Marduk Blackpool"] = true
	AL["Vectus"] = true
	AL["Ras Frostwhisper"] = true
	AL["The Deed to Brill"] = true
	AL["Kormok"] = true
	AL["Instructor Malicia"] = true
	AL["Doctor Theolen Krastinov <The Butcher>"] = true
	AL["Lorekeeper Polkelt"] = true
	AL["The Ravenian"] = true
	AL["Lord Alexei Barov"] = true
	AL["The Deed to Caer Darrow"] = true
	AL["Lady Illucia Barov"] = true
	AL["Darkmaster Gandling"] = true
	AL["Torch Lever"] = true
	AL["Secret Chest"] = true
	AL["Alchemy Lab"] = true

	--Shadowfang Keep
	AL["Deathsworn Captain"] = true
	AL["Rethilgore <The Cell Keeper>"] = true
	AL["Sorcerer Ashcrombe"] = true
	AL["Deathstalker Adamant"] = true
	AL["Landen Stilwell"] = true
	AL["Investigator Fezzen Brasstacks"] = true
	AL["Deathstalker Vincent"] = true
	AL["Apothecary Trio"] = true
	AL["Apothecary Hummel <Crown Chemical Co.>"] = true
	AL["Apothecary Baxter <Crown Chemical Co.>"] = true
	AL["Apothecary Frye <Crown Chemical Co.>"] = true
	AL["Fel Steed"] = true
	AL["Jordan's Hammer"] = true
	AL["Crate of Ingots"] = true
	AL["Razorclaw the Butcher"] = true
	AL["Baron Silverlaine"] = true
	AL["Commander Springvale"] = true
	AL["Odo the Blindwatcher"] = true
	AL["Fenrus the Devourer"] = true
	AL["Arugal's Voidwalker"] = true
	AL["The Book of Ur"] = true
	AL["Wolf Master Nandos"] = true
	AL["Archmage Arugal"] = true

	--SM: Armory
	AL["The Scarlet Key"] = true
	AL["Herod <The Scarlet Champion>"] = true

	--SM: Cathedral
	AL["High Inquisitor Fairbanks"] = true
	AL["Scarlet Commander Mograine"] = true
	AL["High Inquisitor Whitemane"] = true

	--SM: Graveyard
	AL["Interrogator Vishas"] = true
	AL["Vorrel Sengutz"] = true
	AL["Pumpkin Shrine"] = true
	AL["Headless Horseman"] = true
	AL["Bloodmage Thalnos"] = true
	AL["Ironspine"] = true
	AL["Azshir the Sleepless"] = true
	AL["Fallen Champion"] = true

	--SM: Library
	AL["Houndmaster Loksey"] = true
	AL["Arcanist Doan"] = true

	--Stratholme
	AL["The Scarlet Key"] = true
	AL["Key to the City"] = true
	AL["Various Postbox Keys"] = true
	AL["Living Side"] = true
	AL["Undead Side"] = true
	AL["Skul"] = true
	AL["Stratholme Courier"] = true
	AL["Fras Siabi"] = true
	AL["Atiesh <Hand of Sargeras>"] = true
	AL["Hearthsinger Forresten"] = true
	AL["The Unforgiven"] = true
	AL["Elder Farwhisper"] = true
	AL["Timmy the Cruel"] = true
	AL["Malor the Zealous"] = true
	AL["Malor's Strongbox"] = true
	AL["Crimson Hammersmith"] = true
	AL["Cannon Master Willey"] = true
	AL["Archivist Galford"] = true
	AL["Grand Crusader Dathrohan"] = true
	AL["Balnazzar"] = true
	AL["Sothos"] = true
	AL["Jarien"] = true
	AL["Magistrate Barthilas"] = true
	AL["Aurius"] = true
	AL["Stonespine"] = true
	AL["Baroness Anastari"] = true
	AL["Black Guard Swordsmith"] = true
	AL["Nerub'enkan"] = true
	AL["Maleki the Pallid"] = true
	AL["Ramstein the Gorger"] = true
	AL["Baron Rivendare"] = true
	AL["Ysida Harmon"] = true
	AL["Crusaders' Square Postbox"] = true
	AL["Market Row Postbox"] = true
	AL["Festival Lane Postbox"] = true
	AL["Elders' Square Postbox"] = true
	AL["King's Square Postbox"] = true
	AL["Fras Siabi's Postbox"] = true
	AL["3rd Box Opened"] = true
	AL["Postmaster Malown"] = true

	--The Deadmines
	AL["Rhahk'Zor <The Foreman>"] = true
	AL["Miner Johnson"] = true
	AL["Sneed <Lumbermaster>"] = true
	AL["Sneed's Shredder <Lumbermaster>"] = true
	AL["Gilnid <The Smelter>"] = true
	AL["Defias Gunpowder"] = true
	AL["Captain Greenskin"] = true
	AL["Edwin VanCleef <Defias Kingpin>"] = true
	AL["Mr. Smite <The Ship's First Mate>"] = true
	AL["Cookie <The Ship's Cook>"] = true
	--The Stockade
	AL["Targorr the Dread"] = true
	AL["Kam Deepfury"] = true
	AL["Hamhock"] = true
	AL["Bazil Thredd"] = true
	AL["Dextren Ward"] = true
	AL["Bruegal Ironknuckle"] = true

	--The Sunken Temple
	AL["The Temple of Atal'Hakkar"] = true
	AL["Yeh'kinya's Scroll"] = true
	AL["Atal'ai Defenders"] = true
	AL["Gasher"] = true
	AL["Loro"] = true
	AL["Hukku"] = true
	AL["Zolo"] = true
	AL["Mijan"] = true
	AL["Zul'Lor"] = true
	AL["Altar of Hakkar"] = true
	AL["Atal'alarion <Guardian of the Idol>"] = true
	AL["Dreamscythe"] = true
	AL["Weaver"] = true
	AL["Avatar of Hakkar"] = true
	AL["Jammal'an the Prophet"] = true
	AL["Ogom the Wretched"] = true
	AL["Morphaz"] = true
	AL["Hazzas"] = true
	AL["Shade of Eranikus"] = true
	AL["Essence Font"] = true
	AL["Spawn of Hakkar"] = true
	AL["Elder Starsong"] = true
	AL["Statue Activation Order"] = true

	--Uldaman
	AL["Staff of Prehistoria"] = true
	AL["Baelog"] = true
	AL["Eric \"The Swift\""] = true
	AL["Olaf"] = true
	AL["Baelog's Chest"] = true
	AL["Conspicuous Urn"] = true
	AL["Remains of a Paladin"] = true
	AL["Revelosh"] = true
	AL["Ironaya"] = true
	AL["Obsidian Sentinel"] = true
	AL["Annora <Enchanting Trainer>"] = true
	AL["Ancient Stone Keeper"] = true
	AL["Galgann Firehammer"] = true
	AL["Tablet of Will"] = true
	AL["Shadowforge Cache"] = true
	AL["Grimlok <Stonevault Chieftain>"] = true
	AL["Archaedas <Ancient Stone Watcher>"] = true
	AL["The Discs of Norgannon"] = true
	AL["Ancient Treasure"] = true

	--Zul'Gurub
	AL["Zandalar Tribe"] = true
	AL["Mudskunk Lure"] = true
	AL["Gurubashi Mojo Madness"] = true
	AL["High Priestess Jeklik"] = true
	AL["High Priest Venoxis"] = true
	AL["Zanza the Restless"] = true
	AL["High Priestess Mar'li"] = true
	AL["Bloodlord Mandokir"] = true
	AL["Ohgan"] = true
	AL["Edge of Madness"] = true
	AL["Gri'lek"] = true
	AL["Hazza'rah"] = true
	AL["Renataki"] = true
	AL["Wushoolay"] = true
	AL["Gahz'ranka"] = true
	AL["High Priest Thekal"] = true
	AL["Zealot Zath"] = true
	AL["Zealot Lor'Khan"] = true
	AL["High Priestess Arlokk"] = true
	AL["Jin'do the Hexxer"] = true
	AL["Hakkar"] = true
	AL["Muddy Churning Waters"] = true

--**AL*****************
-- BALurning Crusade Instances
--**AL*****************

	--Auch: Auchenai Crypts
	AL["Lower City"] = true
	AL["Shirrak the Dead Watcher"] = true
	AL["Exarch Maladaar"] = true
	AL["Avatar of the Martyred"] = true
	AL["D'ore"] = true

	--Auch: Mana-Tombs
	AL["The Consortium"] = true
	AL["Auchenai Key"] = true
	AL["The Eye of Haramad"] = true
	AL["Pandemonius"] = true
	AL["Shadow Lord Xiraxis"] = true
	AL["Ambassador Pax'ivi"] = true
	AL["Tavarok"] = true
	AL["Cryo-Engineer Sha'heen"] = true
	AL["Ethereal Transporter Control Panel"] = true
	AL["Nexus-Prince Shaffar"] = true
	AL["Yor <Void Hound of Shaffar>"] = true

	--Auch: Sethekk Halls
	AL["Essence-Infused Moonstone"] = true
	AL["Darkweaver Syth"] = true
	AL["Lakka"] = true
	AL["The Saga of Terokk"] = true
	AL["Anzu"] = true
	AL["Talon King Ikiss"] = true

	--Auch: Shadow Labyrinth
	AL["Shadow Labyrinth Key"] = true
	AL["Spy To'gun"] = true
	AL["Ambassador Hellmaw"] = true
	AL["Blackheart the Inciter"] = true
	AL["Grandmaster Vorpil"] = true
	AL["The Codex of Blood"] = true
	AL["Murmur"] = true
	AL["First Fragment Guardian"] = true

	--Black Temple (Start)
	AL["Ashtongue Deathsworn"] = true
	AL["Towards Reliquary of Souls"] = true
	AL["Towards Teron Gorefiend"] = true
	AL["Towards Illidan Stormrage"] = true
	AL["Spirit of Olum"] = true
	AL["High Warlord Naj'entus"] = true
	AL["Supremus"] = true
	AL["Shade of Akama"] = true
	AL["Spirit of Udalo"] = true
	AL["Aluyen <Reagents>"] = true
	AL["Okuno <Ashtongue Deathsworn Quartermaster>"] = true
	AL["Seer Kanai"] = true

	--Black Temple (Basement)
	AL["Gurtogg Bloodboil"] = true
	AL["Reliquary of Souls"] = true
	AL["Essence of Suffering"] = true
	AL["Essence of Desire"] = true
	AL["Essence of Anger"] = true
	AL["Teron Gorefiend"] = true

	--Black Temple (Top)
	AL["Mother Shahraz"] = true
	AL["The Illidari Council"] = true
	AL["Lady Malande"] = true
	AL["Gathios the Shatterer"] = true
	AL["High Nethermancer Zerevor"] = true
	AL["Veras Darkshadow"] = true
	AL["Illidan Stormrage <The Betrayer>"] = true

	--CFR: Serpentshrine Cavern
	AL["Hydross the Unstable <Duke of Currents>"] = true
	AL["The Lurker Below"] = true
	AL["Leotheras the Blind"] = true
	AL["Fathom-Lord Karathress"] = true
	AL["Seer Olum"] = true
	AL["Morogrim Tidewalker"] = true
	AL["Lady Vashj <Coilfang Matron>"] = true

	--CFR: The Slave Pens
	AL["Cenarion Expedition"] = true
	AL["Reservoir Key"] = true
	AL["Mennu the Betrayer"] = true
	AL["Weeder Greenthumb"] = true
	AL["Skar'this the Heretic"] = true
	AL["Rokmar the Crackler"] = true
	AL["Naturalist Bite"] = true
	AL["Quagmirran"] = true
	AL["Ahune <The Frost Lord>"] = true

	--CFR: The Steamvault
	AL["Hydromancer Thespia"] = true
	AL["Main Chambers Access Panel"] = true
	AL["Second Fragment Guardian"] = true
	AL["Mekgineer Steamrigger"] = true
	AL["Warlord Kalithresh"] = true

	--CFR: The Underbog
	AL["Hungarfen"] = true
	AL["The Underspore"] = true
	AL["Ghaz'an"] = true
	AL["Earthbinder Rayge"] = true
	AL["Swamplord Musel'ek"] = true
	AL["Claw <Swamplord Musel'ek's Pet>"] = true
	AL["The Black Stalker"] = true

	--CoT: The Black Morass
	AL["Opening of the Dark Portal"] = true
	AL["Keepers of Time"] = true
	AL["Key of Time"] = true
	AL["Sa'at <Keepers of Time>"] = true
	AL["Chrono Lord Deja"] = true
	AL["Temporus"] = true
	AL["Aeonus"] = true
	AL["The Dark Portal"] = true
	AL["Medivh"] = true

	--CoT: Hyjal Summit
	AL["Battle for Mount Hyjal"] = true
	AL["The Scale of the Sands"] = true
	AL["Alliance Base"] = true
	AL["Lady Jaina Proudmoore"] = true
	AL["Horde Encampment"] = true
	AL["Thrall <Warchief>"] = true
	AL["Night Elf Village"] = true
	AL["Tyrande Whisperwind\n<High Priestess of Elune>"] = true
	AL["Rage Winterchill"] = true
	AL["Anetheron"] = true
	AL["Kaz'rogal"] = true
	AL["Azgalor"] = true
	AL["Archimonde"] = true
	AL["Indormi <Keeper of Ancient Gem Lore>"] = true
	AL["Tydormu <Keeper of Lost Artifacts>"] = true

	--CoT: Old Hillsbrad Foothills
	AL["Escape from Durnholde Keep"] = true
	AL["Erozion"] = true
	AL["Brazen"] = true
	AL["Landing Spot"] = true
	AL["Lieutenant Drake"] = true
	AL["Thrall"] = true
	AL["Captain Skarloc"] = true
	AL["Epoch Hunter"] = true
	AL["Taretha"] = true
	AL["Jonathan Revah"] = true
	AL["Jerry Carter"] = true
	AL["Traveling"] = true
	AL["Thomas Yance <Travelling Salesman>"] = true
	AL["Aged Dalaran Wizard"] = true
	AL["Kel'Thuzad <The Kirin Tor>"] = true
	AL["Helcular"] = true
	AL["Farmer Kent"] = true
	AL["Sally Whitemane"] = true
	AL["Renault Mograine"] = true
	AL["Little Jimmy Vishas"] = true
	AL["Herod the Bully"] = true
	AL["Nat Pagle"] = true
	AL["Hal McAllister"] = true
	AL["Zixil <Aspiring Merchant>"] = true
	AL["Overwatch Mark 0 <Protector>"] = true
	AL["Southshore Inn"] = true
	AL["Captain Edward Hanes"] = true
	AL["Captain Sanders"] = true
	AL["Commander Mograine"] = true
	AL["Isillien"] = true
	AL["Abbendis"] = true
	AL["Fairbanks"] = true
	AL["Tirion Fordring"] = true
	AL["Arcanist Doan"] = true
	AL["Taelan"] = true
	AL["Barkeep Kelly <Bartender>"] = true
	AL["Frances Lin <Barmaid>"] = true
	AL["Chef Jessen <Speciality Meat & Slop>"] = true
	AL["Stalvan Mistmantle"] = true
	AL["Phin Odelic <The Kirin Tor>"] = true
	AL["Magistrate Henry Maleb"] = true
	AL["Raleigh the True"] = true
	AL["Nathanos Marris"] = true
	AL["Bilger the Straight-laced"] = true
	AL["Innkeeper Monica"] = true
	AL["Julie Honeywell"] = true
	AL["Jay Lemieux"] = true
	AL["Young Blanchy"] = true
	AL["Don Carlos"] = true
	AL["Guerrero"] = true

	--Gruul's Lair
	AL["High King Maulgar <Lord of the Ogres>"] = true
	AL["Kiggler the Crazed"] = true
	AL["Blindeye the Seer"] = true
	AL["Olm the Summoner"] = true
	AL["Krosh Firehand"] = true
	AL["Gruul the Dragonkiller"] = true

	--HFC: The Blood Furnace
	AL["Thrallmar"] = true
	AL["Honor Hold"] = true
	AL["Flamewrought Key"] = true
	AL["The Maker"] = true
	AL["Broggok"] = true
	AL["Keli'dan the Breaker"] = true

	--HFC: Hellfire Ramparts
	AL["Watchkeeper Gargolmar"] = true
	AL["Omor the Unscarred"] = true
	AL["Vazruden"] = true
	AL["Nazan <Vazruden's Mount>"] = true
	AL["Reinforced Fel Iron Chest"] = true

	--HFC: Magtheridon's Lair
	AL["Magtheridon"] = true

	--HFC: The Shattered Halls
	AL["Shattered Halls Key"] = true
	AL["Randy Whizzlesprocket"] = true
	AL["Drisella"] = true
	AL["Grand Warlock Nethekurse"] = true
	AL["Blood Guard Porung"] = true
	AL["Warbringer O'mrogg"] = true
	AL["Warchief Kargath Bladefist"] = true
	AL["Shattered Hand Executioner"] = true
	AL["Private Jacint"] = true
	AL["Rifleman Brownbeard"] = true
	AL["Captain Alina"] = true
	AL["Scout Orgarr"] = true
	AL["Korag Proudmane"] = true
	AL["Captain Boneshatter"] = true

	--Karazhan Start
	AL["The Violet Eye"] = true
	AL["The Master's Key"] = true
	AL["Staircase to the Ballroom"] = true
	AL["Stairs to Upper Stable"] = true
	AL["Ramp to the Guest Chambers"] = true
	AL["Stairs to Opera House Orchestra Level"] = true
	AL["Ramp from Mezzanine to Balcony"] = true
	AL["Connection to Master's Terrace"] = true
	AL["Path to the Broken Stairs"] = true
	AL["Hastings <The Caretaker>"] = true
	AL["Servant Quarters"] = true
	AL["Hyakiss the Lurker"] = true
	AL["Rokad the Ravager"] = true
	AL["Shadikith the Glider"] = true
	AL["Berthold <The Doorman>"] = true
	AL["Calliard <The Nightman>"] = true
	AL["Attumen the Huntsman"] = true
	AL["Midnight"] = true
	AL["Koren <The Blacksmith>"] = true
	AL["Moroes <Tower Steward>"] = true
	AL["Baroness Dorothea Millstipe"] = true
	AL["Lady Catriona Von'Indi"] = true
	AL["Lady Keira Berrybuck"] = true
	AL["Baron Rafe Dreuger"] = true
	AL["Lord Robin Daris"] = true
	AL["Lord Crispin Ference"] = true
	AL["Bennett <The Sergeant at Arms>"] = true
	AL["Ebonlocke <The Noble>"] = true
	AL["Keanna's Log"] = true
	AL["Maiden of Virtue"] = true
	AL["Sebastian <The Organist>"] = true
	AL["Barnes <The Stage Manager>"] = true
	AL["The Opera Event"] = true
	AL["Red Riding Hood"] = true
	AL["The Big Bad Wolf"] = true
	AL["Wizard of Oz"] = true
	AL["Dorothee"] = true
	AL["Tito"] = true
	AL["Strawman"] = true
	AL["Tinhead"] = true
	AL["Roar"] = true
	AL["The Crone"] = true
	AL["Romulo and Julianne"] = true
	AL["Romulo"] = true
	AL["Julianne"] = true
	AL["The Master's Terrace"] = true
	AL["Nightbane"] = true

	--Karazhan End
	AL["Broken Stairs"] = true
	AL["Ramp to Guardian's Library"] = true
	AL["Suspicious Bookshelf"] = true
	AL["Ramp up to the Celestial Watch"] = true
	AL["Ramp down to the Gamesman's Hall"] = true
	AL["Chess Event"] = true
	AL["Ramp to Medivh's Chamber"] = true
	AL["Spiral Stairs to Netherspace"] = true
	AL["The Curator"] = true
	AL["Wravien <The Mage>"] = true
	AL["Gradav <The Warlock>"] = true
	AL["Kamsis <The Conjurer>"] = true
	AL["Terestian Illhoof"] = true
	AL["Kil'rek"] = true
	AL["Shade of Aran"] = true
	AL["Netherspite"] = true
	AL["Ythyar"] = true
	AL["Echo of Medivh"] = true
	AL["Dust Covered Chest"] = true
	AL["Prince Malchezaar"] = true

	--Magisters Terrace
	AL["Shattered Sun Offensive"] = true
	AL["Selin Fireheart"] = true
	AL["Fel Crystals"] = true
	AL["Tyrith"] = true
	AL["Vexallus"] = true
	AL["Scrying Orb"] = true
	AL["Kalecgos"] = true
	AL["Priestess Delrissa"] = true
	AL["Apoko"] = true
	AL["Eramas Brightblaze"] = true
	AL["Ellrys Duskhallow"] = true
	AL["Fizzle"] = true
	AL["Garaxxas"] = true
	AL["Sliver <Garaxxas' Pet>"] = true
	AL["Kagani Nightstrike"] = true
	AL["Warlord Salaris"] = true
	AL["Yazzai"] = true
	AL["Zelfan"] = true
	AL["Kael'thas Sunstrider <Lord of the Blood Elves>"] = true

	--Sunwell Plateau
	AL["Sathrovarr the Corruptor"] = true
	AL["Madrigosa"] = true
	AL["Brutallus"] = true
	AL["Felmyst"] = true
	AL["Eredar Twins"] = true
	AL["Grand Warlock Alythess"] = true
	AL["Lady Sacrolash"] = true
	AL["M'uru"] = true
	AL["Entropius"] = true
	AL["Kil'jaeden <The Deceiver>"] = true

	--TK: The Arcatraz
	AL["Key to the Arcatraz"] = true
	AL["Zereketh the Unbound"] = true
	AL["Third Fragment Guardian"] = true
	AL["Dalliah the Doomsayer"] = true
	AL["Wrath-Scryer Soccothrates"] = true
	AL["Udalo"] = true
	AL["Harbinger Skyriss"] = true
	AL["Warden Mellichar"] = true
	AL["Millhouse Manastorm"] = true

	--TK: The Botanica
	AL["The Sha'tar"] = true
	AL["Warpforged Key"] = true
	AL["Commander Sarannis"] = true
	AL["High Botanist Freywinn"] = true
	AL["Thorngrin the Tender"] = true
	AL["Laj"] = true
	AL["Warp Splinter"] = true

	--TK: The Mechanar
	AL["Gatewatcher Gyro-Kill"] = true
	AL["Gatewatcher Iron-Hand"] = true
	AL["Cache of the Legion"] = true
	AL["Mechano-Lord Capacitus"] = true
	AL["Overcharged Manacell"] = true
	AL["Nethermancer Sepethrea"] = true
	AL["Pathaleon the Calculator"] = true

	--TK: The Eye
	AL["Al'ar <Phoenix God>"] = true
	AL["Void Reaver"] = true
	AL["High Astromancer Solarian"] = true
	AL["Thaladred the Darkener <Advisor to Kael'thas>"] = true
	AL["Master Engineer Telonicus <Advisor to Kael'thas>"] = true
	AL["Grand Astromancer Capernian <Advisor to Kael'thas>"] = true
	AL["Lord Sanguinar <The Blood Hammer>"] = true

	--Zul'Aman
	AL["Harrison Jones"] = true
	AL["Nalorakk <Bear Avatar>"] = true
	AL["Tanzar"] = true
	AL["The Map of Zul'Aman"] = true
	AL["Akil'Zon <Eagle Avatar>"] = true
	AL["Harkor"] = true
	AL["Jan'Alai <Dragonhawk Avatar>"] = true
	AL["Kraz"] = true
	AL["Halazzi <Lynx Avatar>"] = true
	AL["Ashli"] = true
	AL["Zungam"] = true
	AL["Hex Lord Malacrass"] = true
	AL["Thurg"] = true
	AL["Gazakroth"] = true
	AL["Lord Raadan"] = true
	AL["Darkheart"] = true
	AL["Alyson Antille"] = true
	AL["Slither"] = true
	AL["Fenstalker"] = true
	AL["Koragg"] = true
	AL["Zul'jin"] = true
	AL["Forest Frogs"] = true
	AL["Kyren <Reagents>"] = true
	AL["Gunter <Food Vendor>"] = true
	AL["Adarrah"] = true
	AL["Brennan"] = true
	AL["Darwen"] = true
	AL["Deez"] = true
	AL["Galathryn"] = true
	AL["Mitzi"] = true
	AL["Mannuth"] = true

--*****************
-- WotLK Instances
--*****************

	--Azjol-Nerub: Ahn'kahet: The Old Kingdom
	AL["Elder Nadox"] = true
	AL["Prince Taldaram"] = true
	AL["Jedoga Shadowseeker"] = true
	AL["Herald Volazj"] = true
	AL["Amanitar"] = true
	AL["Ahn'kahet Brazier"] = true

	--Azjol-Nerub: Azjol-Nerub
	AL["Krik'thir the Gatewatcher"] = true
	AL["Watcher Gashra"] = true
	AL["Watcher Narjil"] = true
	AL["Watcher Silthik"] = true
	AL["Hadronox"] = true
	AL["Elder Nurgen"] = true
	AL["Anub'arak"] = true

	--Caverns of Time: The Culling of Stratholme
	AL["The Culling of Stratholme"] = true
	AL["Meathook"] = true
	AL["Salramm the Fleshcrafter"] = true
	AL["Chrono-Lord Epoch"] = true
	AL["Mal'Ganis"] = true
	AL["Chromie"] = true
	AL["Infinite Corruptor"] = true
	AL["Guardian of Time"] = true
	AL["Scourge Invasion Points"] = true

	--Drak'Tharon Keep
	AL["Trollgore"] = true
	AL["Novos the Summoner"] = true
	AL["Elder Kilias"] = true
	AL["King Dred"] = true
	AL["The Prophet Tharon'ja"] = true
	AL["Kurzel"] = true
	AL["Drakuru's Brazier"] = true

	--The Frozen Halls: Halls of Reflection
	--3 beginning NPCs omitted, see The Forge of Souls
	AL["Falric"] = true
	AL["Marwyn"] = true
	AL["Wrath of the Lich King"] = true
	AL["The Captain's Chest"] = true

	--The Frozen Halls: Pit of Saron
	--6 beginning NPCs omitted, see The Forge of Souls
	AL["Forgemaster Garfrost"] = true
	AL["Martin Victus"] = true
	AL["Gorkun Ironskull"] = true
	AL["Krick and Ick"] = true
	AL["Scourgelord Tyrannus"] = true
	AL["Rimefang"] = true

	--The Frozen Halls: The Forge of Souls
	--Lady Jaina Proudmoore omitted, in Hyjal Summit
	AL["Archmage Koreln <Kirin Tor>"] = true
	AL["Archmage Elandra <Kirin Tor>"] = true
	AL["Lady Sylvanas Windrunner <Banshee Queen>"] = true
	AL["Dark Ranger Loralen"] = true
	AL["Dark Ranger Kalira"] = true
	AL["Bronjahm <Godfather of Souls>"] = true
	AL["Devourer of Souls"] = true

	--Gundrak
	AL["Slad'ran <High Prophet of Sseratus>"] = true
	AL["Drakkari Colossus"] = true
	AL["Elder Ohanzee"] = true
	AL["Moorabi <High Prophet of Mam'toth>"] = true
	AL["Gal'darah <High Prophet of Akali>"] = true
	AL["Eck the Ferocious"] = true

	--Icecrown Citadel
	AL["The Ashen Verdict"] = true
	AL["Lord Marrowgar"] = true
	AL["Lady Deathwhisper"] = true
	AL["Gunship Battle"] = true
	AL["Deathbringer Saurfang"] = true
	AL["Festergut"] = true
	AL["Rotface"] = true
	AL["Professor Putricide"] = true
	AL["Blood Prince Council"] = true
	AL["Prince Keleseth"] = true
	AL["Prince Taldaram"] = true
	AL["Prince Valanar"] = true
	AL["Blood-Queen Lana'thel"] = true
	AL["Valithria Dreamwalker"] = true
	AL["Sindragosa <Queen of the Frostbrood>"] = true
	AL["The Lich King"] = true
	AL["To next map"] = true
	AL["From previous map"] = true
	AL["Upper Spire"] = true
	AL["Sindragosa's Lair"] = true

	--Naxxramas
	AL["Mr. Bigglesworth"] = true
	AL["Patchwerk"] = true
	AL["Grobbulus"] = true
	AL["Gluth"] = true
	AL["Thaddius"] = true
	AL["Anub'Rekhan"] = true
	AL["Grand Widow Faerlina"] = true
	AL["Maexxna"] = true
	AL["Instructor Razuvious"] = true
	AL["Gothik the Harvester"] = true
	AL["The Four Horsemen"] = true
	AL["Thane Korth'azz"] = true
	AL["Lady Blaumeux"] = true
	--Baron Rivendare omitted, listed under Stratholme
	AL["Sir Zeliek"] = true
	AL["Four Horsemen Chest"] = true
	AL["Noth the Plaguebringer"] = true
	AL["Heigan the Unclean"] = true
	AL["Loatheb"] = true
	AL["Frostwyrm Lair"] = true
	AL["Sapphiron"] = true
	AL["Kel'Thuzad"] = true

	--The Obsidian Sanctum
	AL["Black Dragonflight Chamber"] = true
	AL["Sartharion <The Onyx Guardian>"] = true
	AL["Tenebron"] = true
	AL["Shadron"] = true
	AL["Vesperon"] = true

	--Onyxia's Lair
	AL["Onyxian Warders"] = true
	AL["Whelp Eggs"] = true
	AL["Onyxia"] = true

	--The Ruby Sanctum
	AL["Red Dragonflight Chamber"] = true
	AL["Baltharus the Warborn"] = true
	AL["Saviana Ragefire"] = true
	AL["General Zarithrian"] = true
	AL["Halion <The Twilight Destroyer>"] = true

	--The Nexus: The Eye of Eternity
	AL["Malygos"] = true
	AL["Key to the Focusing Iris"] = true

	--The Nexus: The Nexus
	AL["Berinand's Research"] = true
	AL["Commander Stoutbeard"] = true
	AL["Commander Kolurg"] = true
	AL["Grand Magus Telestra"] = true
	AL["Anomalus"] = true
	AL["Elder Igasho"] = true
	AL["Ormorok the Tree-Shaper"] = true
	AL["Keristrasza"] = true

	--The Nexus: The Oculus
	AL["Drakos the Interrogator"] = true
	AL["Mage-Lord Urom"] = true
	AL["Ley-Guardian Eregos"] = true
	AL["Varos Cloudstrider <Azure-Lord of the Blue Dragonflight>"] = true
	AL["Centrifuge Construct"] = true
	AL["Cache of Eregos"] = true

	--Trial of the Champion
	AL["Grand Champions"] = true
	AL["Champions of the Alliance"] = true
	AL["Marshal Jacob Alerius"] = true
	AL["Ambrose Boltspark"] = true
	AL["Colosos"] = true
	AL["Jaelyne Evensong"] = true
	AL["Lana Stouthammer"] = true
	AL["Champions of the Horde"] = true
	AL["Mokra the Skullcrusher"] = true
	AL["Eressea Dawnsinger"] = true
	AL["Runok Wildmane"] = true
	AL["Zul'tore"] = true
	AL["Deathstalker Visceri"] = "Deathstalker Visceri"
	AL["Eadric the Pure <Grand Champion of the Argent Crusade>"] = true
	AL["Argent Confessor Paletress"] = true
	AL["The Black Knight"] = true

	--Trial of the Crusader
	AL["Cavern Entrance"] = true
	AL["Northrend Beasts"] = true
	AL["Gormok the Impaler"] = true
	AL["Acidmaw"] = true
	AL["Dreadscale"] = true
	AL["Icehowl"] = true
	AL["Lord Jaraxxus"] = true
	AL["Faction Champions"] = true
	AL["Twin Val'kyr"] = true
	AL["Fjola Lightbane"] = true
	AL["Eydis Darkbane"] = true
	AL["Anub'arak"] = true
	AL["Heroic: Trial of the Grand Crusader"] = true
	-- Ulduar General
	AL["Celestial Planetarium Key"] = true
	AL["The Siege"] = true
	AL["The Keepers"] = true

	-- Ulduar A
	AL["Flame Leviathan"] = true
	AL["Ignis the Furnace Master"] = true
	AL["Razorscale"] = true
	AL["XT-002 Deconstructor"] = true
	AL["Tower of Life"] = true
	AL["Tower of Flame"] = true
	AL["Tower of Frost"] = true
	AL["Tower of Storms"] = true

	-- Ulduar B
	AL["Assembly of Iron"] = true
	AL["Steelbreaker"] = true
	AL["Runemaster Molgeim"] = true
	AL["Stormcaller Brundir"] = true
	AL["Kologarn"] = true
	AL["Algalon the Observer"] = true
	AL["Prospector Doren"] = true
	AL["Archivum Console"] = true

	-- Ulduar C
	AL["Auriaya"] = true
	AL["Freya"] = true
	AL["Thorim"] = true
	AL["Hodir"] = true

	-- Ulduar D
	AL["Mimiron"] = true

	-- Ulduar E
	AL["General Vezax"] = true
	AL["Yogg-Saron"] = true

	--Ulduar: Halls of Lightning
	AL["General Bjarngrim"] = true
	AL["Volkhan"] = true
	AL["Ionar"] = true
	AL["Loken"] = true

	--Ulduar: Halls of Stone
	AL["Elder Yurauk"] = true
	AL["Krystallus"] = true
	AL["Maiden of Grief"] = true
	AL["Brann Bronzebeard"] = true
	AL["Tribunal Chest"] = true
	AL["Sjonnir the Ironshaper"] = true

	--Utgarde Keep: Utgarde Keep
	AL["Dark Ranger Marrah"] = true
	AL["Prince Keleseth <The San'layn>"] = true
	AL["Elder Jarten"] = true
	AL["Dalronn the Controller"] = true
	AL["Skarvald the Constructor"] = true
	AL["Ingvar the Plunderer"] = true

	--Utgarde Keep: Utgarde Pinnacle
	AL["Brigg Smallshanks"] = true
	AL["Svala Sorrowgrave"] = true
	AL["Gortok Palehoof"] = true
	AL["Skadi the Ruthless"] = true
	AL["Elder Chogan'gada"] = true
	AL["King Ymiron"] = true

	--Vault of Archavon
	AL["Archavon the Stone Watcher"] = true
	AL["Emalon the Storm Watcher"] = true
	AL["Koralon the Flame Watcher"] = true
	AL["Toravon the Ice Watcher"] = true

	--The Violet Hold
	AL["Erekem"] = true
	AL["Zuramat the Obliterator"] = true
	AL["Xevozz"] = true
	AL["Ichoron"] = true
	AL["Moragg"] = true
	AL["Lavanthor"] = true
	AL["Cyanigosa"] = true
	AL["The Violet Hold Key"] = true

	-------------------------------------------------------------------------------
	-- Custom database strings:
	-------------------------------------------------------------------------------
	-- Alchemy Discoveries
	AL["DISCOVERY_ALCH_ELIXIRFLASK"] = "Discovered by making elixirs or flasks using Burning Crusade or higher ingredients."
	AL["DISCOVERY_ALCH_POTION"] = "Discovered by making potions using Burning Crusade or higher ingredients."
	AL["DISCOVERY_ALCH_XMUTE"] = "Discovered by doing transmutes using Burning Crusade or higher ingredients."
	AL["DISCOVERY_ALCH_PROT"] = "Discovered by Major Protection Potions using Burning Crusade or higher ingredients."
	AL["DISCOVERY_ALCH_WRATH"] = "Discovered by doing transmutes using Wrath of the Lich King ingredients."
	AL["DISCOVERY_ALCH_NORTHREND_RESEARCH"] = "Obtained randomly by conducting Northrend alchemy research."
	AL["DISCOVERY_ALCH_NORTHREND_XMUTE"] = "Discovered by doing transmutes using Northrend or higher ingredients (transmute tooltip mentions that there is a chance to discovery something)."

	-- Inscription Discoveries
	AL["DISCOVERY_INSC_MINOR"] = "Obtained randomly by conducting Minor Inscription Research."
	AL["DISCOVERY_INSC_NORTHREND"] = "Obtained randomly by conducting Northrend Inscription Research."
	AL["DISCOVERY_INSC_BOOK"] = "Discovered randomly by reading the Book of Glyph Mastery."

	-- Cooking/Fishing Daily Quests
	AL["DAILY_COOKING_MEAT"] = "Choose Crate of Meat when completing any of these quests."
	AL["DAILY_COOKING_FISH"] = "Choose Barrel of Fish when completing any of these quests."
	AL["DAILY_FISHING_SHATT"] = "Randomly obtained by completing any of the BC fishing daily quests."
	AL["DAILY_COOKING_DAL"] = "Randomly obtained by completing any of the cooking daily quests in Dalaran."

	-- Engineering Related
	AL["ENG_GNOMER"] = "Dropped from mobs in Gnomeregan."
	AL["ENG_FLOOR_ITEM_BRD"] = "The schematic can be found on the floor near Golem Lord Argelmach in Blackrock Depths. Only engineers with 300 skill may learn the schematic after clicking on it."

	-- Default
	AL["DEFAULT_RECIPE"] = "Learned by default when learning the profession."

	-- Crafted by other professions
	AL["CRAFTED_ENGINEERS"] = "Recipe is created by Engineers."

	-- Instances
	AL["HENRY_STERN_RFD"] = "Obtained by talking to Henry Stern in Razorfen Downs."
	AL["DM_CACHE"] = "Randomly obtained in Dire Maul (North) in Knot Thimblejack's cache."
	AL["BRD_RANDOM_ROOM"] = "There is a chance that you will find it in 5 different rooms in blackrock depths, it is a random spawn though, and sometimes it doesn't even spawn at all."
	AL["SCHOLO_BOOK_SPAWN"] = "After you kill Jandice Barov in Scholomance, a book spawns that let's you learn this recipe"
	AL["STRATH_BS_PLANS"] = "Blacksmith plans in Stratholme" -- Update
	AL["DM_TRIBUTE"] = "DM Tribute Run - Chest" -- Update

	-- Quests
	AL["ONYXIA_HEAD_QUEST"] = "Quest to obtain the recipe opens up after turning in the Head of Onyxia."
	AL["EDGE_OF_MADNESS"] = "Obtained by clicking on a tablet in Zul'Gurub in the Edge of Madness."

	-- Raids
	AL["AQ40_RANDOM_BOP"] = "Random BoP drop off of bosses in AQ40."
	AL["SUNWELL_RANDOM"] = "Random Sunwell trash drop."
	AL["MC_RANDOM"] = "Random drop off of Molten Core bosses."
	AL["HYJAL_RANDOM"] = "Random drop from Hyjal Summit trash/bosses."
	AL["BT_RANDOM"] = "Random drop from Black Temple trash/bosses."
	AL["ZA_RANDOM"] = "Random drop off of Zul'Aman bosses."
	AL["SSC_RANDOM"] = "Random drop from mobs in Serpentshrine Cavern."
	AL["TK_RANDOM"] = "Random drop from mobs in Tempest Keep: The Eye."
	AL["ULDUAR_RANDOM"] = "Random drop off of Ulduar bosses."
	AL["TOC25_RANDOM"] = "Random drop from the Trial of the Crusader, 25 man normal version."

	AL["Custom35"] = "Drops from dragons in Ogri'la and Blade's Edge Mountains Summon Bosses"
	AL["Custom36"] = "From a NPC in Dalaran sewers after doing The Taste Test" -- Update
	AL["Custom41"] = "Removed from the game when Naxx 40 was taken out."
	AL["Custom44"] = "You can train this recipe if you have earned the \"Loremaster of Northrend\" achievement"
	AL["Custom45"] = "You can train this recipe if you have earned the \"Northrend Dungeonmaster\" achievement"
	AL["LIMITED_SUPPLY"] = "Sold in limited quantity."

	-------------------------------------------------------------------------------
	-- Monster/Quest/Trainer/Vendor strings:
	-------------------------------------------------------------------------------
	AL["\"Cookie\" McWeaksauce"] = true
	AL["Aaron Hollman"] = true
	AL["Aayndia Floralwind"] = true
	AL["Abigail Shiel"] = true
	AL["Abyssal Flamebringer"] = true
	AL["Adele Fielder"] = true
	AL["Adelene Sunlance"] = true
	AL["Aendel Windspear"] = true
	AL["Aged Dalaran Wizard"] = true
	AL["Ainderu Summerleaf"] = true
	AL["Ainethil"] = true
	AL["Akham"] = true
	AL["Alanna Raveneye"] = true
	AL["Alard Schmied"] = true
	AL["Alchemist Finklestein"] = true
	AL["Alchemist Gribble"] = true
	AL["Alchemist Kanhu"] = true
	AL["Alchemist Mallory"] = true
	AL["Alchemist Narett"] = true
	AL["Alchemist Pestlezugg"] = true
	AL["Aldraan"] = true
	AL["Alegorn"] = true
	AL["Aleinia"] = true
	AL["Alestos"] = true
	AL["Alestus"] = true
	AL["Alexandra Bolero"] = true
	AL["Alexandra McQueen"] = true
	AL["Alexis Marlowe"] = true
	AL["Algernon"] = true
	AL["Almaador"] = true
	AL["Altaa"] = true
	AL["Alurmi"] = true
	AL["Alys Vol'tyr"] = true
	AL["Amal'thazad"] = true
	AL["Amy Davenport"] = true
	AL["Anchorite Ensham"] = true
	AL["Anchorite Fateema"] = true
	AL["Anchorite Paetheus"] = true
	AL["Anchorite Yazmina"] = true
	AL["Andellion"] = true
	AL["Andre Firebeard"] = true
	AL["Andrew Hilbert"] = true
	AL["Andrion Darkspinner"] = true
	AL["Androd Fadran"] = true
	AL["Anger Guard"] = true
	AL["Anguished Highborne"] = true
	AL["Annora"] = true
	AL["Anuur"] = true
	AL["Anvilrage Captain"] = true
	AL["Anvilrage Marshal"] = true
	AL["Apothecary Antonivich"] = true
	AL["Apothecary Bressa"] = true
	AL["Apothecary Wormwick"] = true
	AL["Apprentice Darius"] = true
	AL["Arathel Sunforge"] = true
	AL["Arcanist Sheynathren"] = true
	AL["Arcatraz Sentinel"] = true
	AL["Archmage Alvareaux"] = true
	AL["Are We There, Yeti?"] = true
	AL["Aresella"] = true
	AL["Argent Quartermaster Hasana"] = true
	AL["Argent Quartermaster Lightspark"] = true
	AL["Argo Strongstout"] = true
	AL["Arkkoran Oracle"] = true
	AL["Arnok"] = true
	AL["Arras"] = true
	AL["Arred"] = true
	AL["Arrond"] = true
	AL["Arthur Denny"] = true
	AL["Arthur Henslowe"] = true
	AL["Arthur Moore"] = true
	AL["Artificer Daelo"] = true
	AL["Asarnan"] = true
	AL["Ashtongue Warrior"] = true
	AL["Aska Mistrunner"] = true
	AL["Auchenai Monk"] = true
	AL["Awan Iceborn"] = true
	AL["Awilo Lon'gomba"] = true
	AL["Bale"] = true
	AL["Balgaras the Foul"] = true
	AL["Banalash"] = true
	AL["Barien"] = true
	AL["Barim Spilthoof"] = true
	AL["Bash'ir Spell-Thief"] = true
	AL["Baxter"] = true
	AL["Belil"] = true
	AL["Bemarrin"] = true
	AL["Bena Winterhoof"] = true
	AL["Bengus Deepforge"] = true
	AL["Benjamin Clegg"] = true
	AL["Bernadette Dexter"] = true
	AL["Bethany Cromwell"] = true
	AL["Binkie Brightgear"] = true
	AL["Blackened Ancient"] = true
	AL["Blackhand Elite"] = true
	AL["Blackrock Battlemaster"] = true
	AL["Blackrock Slayer"] = true
	AL["Blackrock Soldier"] = true
	AL["Blacksmith Calypso"] = true
	AL["Blackwater Deckhand"] = true
	AL["Blimo Gadgetspring"] = true
	AL["Blixrez Goodstitch"] = true
	AL["Blizrik Buckshot"] = true
	AL["Bliztik"] = true
	AL["Bloodmaul Geomancer"] = true
	AL["Bloodsail Raider"] = true
	AL["Bombus Finespindle"] = true
	AL["Bonechewer Backbreaker"] = true
	AL["Booker Kells"] = true
	AL["Borgosh Corebender"] = true
	AL["Borgus Steelhand"] = true
	AL["Borto"] = true
	AL["Borus Ironbender"] = true
	AL["Borya"] = true
	AL["Boulderfist Warrior"] = true
	AL["Bowen Brisboise"] = true
	AL["Bradley Towns"] = true
	AL["Braeg Stoutbeard"] = true
	AL["Brandig"] = true
	AL["Brawn"] = true
	AL["Brek Stonehoof"] = true
	AL["Brienna Starglow"] = true
	AL["Brikk Keencraft"] = true
	AL["Bro'kin"] = true
	AL["Brock Stoneseeker"] = true
	AL["Brom Brewbaster"] = true
	AL["Brom Killian"] = true
	AL["Bronk"] = true
	AL["Bronk Guzzlegear"] = true
	AL["Brumman"] = true
	AL["Brumn Winterhoof"] = true
	AL["Brunna Ironaxe"] = true
	AL["Bryan Landers"] = true
	AL["Brynna Wilson"] = true
	AL["Burbik Gearspanner"] = true
	AL["Burko"] = true
	AL["Buzzek Bracketswing"] = true
	AL["Byancie"] = true
	AL["Cabal Fanatic"] = true
	AL["Camberon"] = true
	AL["Captain Halyndor"] = true
	AL["Captain O'Neal"] = true
	AL["Captured Gnome"] = true
	AL["Carolai Anise"] = true
	AL["Carter Tiffens"] = true
	AL["Caryssia Moonhunter"] = true
	AL["Catarina Stanford"] = true
	AL["Catherine Leland"] = true
	AL["Celie Steelwing"] = true
	AL["Charles Worth"] = true
	AL["Charred Ancient"] = true
	AL["Chaw Stronghide"] = true
	AL["Chief Engineer Leveny"] = true
	AL["Christoph Jeffcoat"] = true
	AL["Cielstrasza"] = true
	AL["Clarise Gnarltree"] = true
	AL["Cliff Breaker"] = true
	AL["Cloned Ooze"] = true
	AL["Clyde Ranthal"] = true
	AL["Cobalt Mageweaver"] = true
	AL["Coilfang Oracle"] = true
	AL["Coilfang Sorceress"] = true
	AL["Coilskar Siren"] = true
	AL["Constance Brisboise"] = true
	AL["Cook Ghilm"] = true
	AL["Cookie One-Eye"] = true
	AL["Coreiel"] = true
	AL["Corporal Bluth"] = true
	AL["Cowardly Crosby"] = true
	AL["Crazed Ancient"] = true
	AL["Crazed Murkblood Foreman"] = true
	AL["Crazed Murkblood Miner"] = true
	AL["Crazk Sparks"] = true
	AL["Crimson Inquisitor"] = true
	AL["Crimson Sorcerer"] = true
	AL["Cro Threadstrong"] = true
	AL["Crog Steelspine"] = true
	AL["Crystal Boughman"] = true
	AL["Crystal Brightspark"] = true
	AL["Cult Alchemist"] = true
	AL["Cult Researcher"] = true
	AL["Cultist Shard Watcher"] = true
	AL["Cyndra Kindwhisper"] = true
	AL["Daedal"] = true
	AL["Daenril"] = true
	AL["Daga Ramba"] = true
	AL["Daggle Ironshaper"] = true
	AL["Dalinna"] = true
	AL["Dalria"] = true
	AL["Damned Apothecary"] = true
	AL["Daniel Bartlett"] = true
	AL["Danielle Zipstitch"] = true
	AL["Dank Drizzlecut"] = true
	AL["Dannelor"] = true
	AL["Danwe"] = true
	AL["Darin Goodstitch"] = true
	AL["Dark Adept"] = true
	AL["Dark Conclave Shadowmancer"] = true
	AL["Dark Iron Demolitionist"] = true
	AL["Dark Iron Dwarf"] = true
	AL["Dark Iron Saboteur"] = true
	AL["Dark Iron Slaver"] = true
	AL["Dark Iron Taskmaster"] = true
	AL["Dark Iron Tunneler"] = true
	AL["Dark Iron Watchman"] = true
	AL["Dark Strand Voidcaller"] = true
	AL["Darkmoon Faire"] = true
	AL["Darmari"] = true
	AL["Darnall"] = true
	AL["Daryl Riknussun"] = true
	AL["Daryl Stack"] = true
	AL["Day of the Dead"] = true
	AL["Deadwind Warlock"] = true
	AL["Deadwood Shaman"] = true
	AL["Dealer Malij"] = true
	AL["Deathforge Guardian"] = true
	AL["Deathforge Imp"] = true
	AL["Deathforge Smith"] = true
	AL["Deathforge Tinkerer"] = true
	AL["Decaying Horror"] = true
	AL["Deek Fizzlebizz"] = true
	AL["Defias Enchanter"] = true
	AL["Defias Looter"] = true
	AL["Defias Pirate"] = true
	AL["Defias Profiteer"] = true
	AL["Defias Renegade Mage"] = true
	AL["Defias Squallshaper"] = true
	AL["Delfrum Flintbeard"] = true
	AL["Deneb Walker"] = true
	AL["Derak Nightfall"] = true
	AL["Derek Odds"] = true
	AL["Deynna"] = true
	AL["Diane Cannings"] = true
	AL["Didi the Wrench"] = true
	AL["Dirge Quikcleave"] = true
	AL["Disembodied Protector"] = true
	AL["Disembodied Vindicator"] = true
	AL["Doba"] = true
	AL["Doctor Gregory Victor"] = true
	AL["Doctor Gustaf VanHowzen"] = true
	AL["Doctor Herbert Halsey"] = true
	AL["Don Carlos"] = true
	AL["Doomforge Craftsman"] = true
	AL["Doomforge Engineer"] = true
	AL["Drac Roughcut"] = true
	AL["Drake Lindgren"] = true
	AL["Drakk Stonehand"] = true
	AL["Drovnar Strongbrew"] = true
	AL["Duchess Mynx"] = true
	AL["Duhng"] = true
	AL["Dulvi"] = true
	AL["Durnholde Rifleman"] = true
	AL["Dustin Vail"] = true
	AL["Dwukk"] = true
	AL["Eclipsion Archmage"] = true
	AL["Eclipsion Blood Knight"] = true
	AL["Eclipsion Bloodwarder"] = true
	AL["Eclipsion Cavalier"] = true
	AL["Eclipsion Centurion"] = true
	AL["Eclipsion Soldier"] = true
	AL["Eclipsion Spellbinder"] = true
	AL["Edna Mullby"] = true
	AL["Eebee Jinglepocket"] = true
	AL["Egomis"] = true
	AL["Eiin"] = true
	AL["Eldara Dawnrunner"] = true
	AL["Eldrin"] = true
	AL["Elise Brightletter"] = true
	AL["Elizabeth Jackson"] = true
	AL["Elynna"] = true
	AL["Emil Autumn"] = true
	AL["Emrul Riknussun"] = true
	AL["Enchanter Nalthanis"] = true
	AL["Enchantress Volali"] = true
	AL["Engineer Sinbei"] = true
	AL["Enraged Mammoth"] = true
	AL["Enraged Earth Spirit"] = true
	AL["Enraged Water Spirit"] = true
	AL["Enraged Air Spirit"] = true
	AL["Enraged Fire Spirit"] = true
	AL["Eorain Dawnstrike"] = true
	AL["Eredar Deathbringer"] = true
	AL["Eriden"] = true
	AL["Erika Tate"] = true
	AL["Erilia"] = true
	AL["Erin Kelly"] = true
	AL["Ethereal Priest"] = true
	AL["Ethereum Jailor"] = true
	AL["Ethereum Nullifier"] = true
	AL["Eunice Burch"] = true
	AL["Fael Morningsong"] = true
	AL["Falorn Nightwhisper"] = true
	AL["Fariel Starsong"] = true
	AL["Farii"] = true
	AL["Fazu"] = true
	AL["Fedryen Swiftspear"] = true
	AL["Feera"] = true
	AL["Felannia"] = true
	AL["Felicia Doan"] = true
	AL["Felika"] = true
	AL["Fendrig Redbeard"] = true
	AL["Fera Palerunner"] = true
	AL["Festive Recipes"] = true
	AL["Feyden Darkin"] = true
	AL["Fimble Finespindle"] = true
	AL["Finbus Geargrind"] = true
	AL["Findle Whistlesteam"] = true
	AL["Firebrand Grunt"] = true
	AL["Firebrand Invoker"] = true
	AL["Firebrand Legionnaire"] = true
	AL["Firebrand Pyromancer"] = true
	AL["Firegut Brute"] = true
	AL["Fono"]= true
	AL["Foreman Marcrid"] = true
	AL["Fradd Swiftgear"] = true
	AL["Franklin Lloyd"] = true
	AL["Fremal Doohickey"] = true
	AL["Frostbrood Spawn"] = true
	AL["Frostfeather Screecher"] = true
	AL["Frostfeather Witch"] = true
	AL["Frostmaul Giant"] = true
	AL["Frozo the Renowned"] = true
	AL["Fyldan"] = true
	AL["Gagsprocket"] = true
	AL["Gambarinka"] = true
	AL["Gan'arg Analyzer"] = true
	AL["Gara Skullcrush"] = true
	AL["Gargantuan Abyssal"] = true
	AL["Gaston"] = true
	AL["Gearcutter Cogspinner"] = true
	AL["Geba'li"] = true
	AL["Geen"] = true
	AL["Gelanthis"] = true
	AL["Gelman Stonehand"] = true
	AL["Geofram Bouldertoe"] = true
	AL["George Candarte"] = true
	AL["Georgio Bolero"] = true
	AL["Ghak Healtouch"] = true
	AL["Gharash"] = true
	AL["Gidge Spellweaver"] = true
	AL["Gigget Zipcoil"] = true
	AL["Gikkix"] = true
	AL["Gimble Thistlefuzz"] = true
	AL["Gina MacGregor"] = true
	AL["Gloria Femmel"] = true
	AL["Glutinous Ooze"] = true
	AL["Glyx Brewright"] = true
	AL["Gnaz Blunderflame"] = true
	AL["Godan"] = true
	AL["Ghok'kah"] = true
	AL["Goli Krumn"] = true
	AL["Gordunni Back-Breaker"] = true
	AL["Gordunni Elementalist"] = true
	AL["Gordunni Head-Splitter"] = true
	AL["Gordunni Soulreaper"] = true
	AL["Grarnik Goodstitch"] = true
	AL["Great-father Winter's Helper"] = true
	AL["Greatfather Winter"] = true
	AL["Gremlock Pilsnor"] = true
	AL["Gretta Ganter"] = true
	AL["Grikka"] = true
	AL["Grimtak"] = true
	AL["Grimtotem Geomancer"] = true
	AL["Grondal Moonbreeze"] = true
	AL["Grumbol Stoutpick"] = true
	AL["Grumnus Steelshaper"] = true
	AL["Grutah"] = true
	AL["Guillaume Sorouy"] = true
	AL["Gundrak Savage"] = true
	AL["Gunter Hansen"] = true
	AL["Haalrun"] = true
	AL["Haferet"] = true
	AL["Hagrus"] = true
	AL["Hahrana Ironhide"] = true
	AL["Hama"] = true
	AL["Hamanar"] = true
	AL["Hammered Patron"] = true
	AL["Hammon Karwn"] = true
	AL["Harggan"] = true
	AL["Harklan Moongrove"] = true
	AL["Harlown Darkweave"] = true
	AL["Harn Longcast"] = true
	AL["Haughty Modiste"] = true
	AL["Heldan Galesong"] = true
	AL["Helenia Olden"] = true
	AL["Hgarth"] = true
	AL["High Admiral \"Shelly\" Jorrik"] = true
	AL["High Enchanter Bardolan"] = true
	AL["Highlord Darion Mograine"] = true
	AL["Hillsbrad Tailor"] = true
	AL["Himmik"] = true
	AL["Hotoppik Copperpinch"] = true
	AL["Hula'mahi"] = true
	AL["Humphry"] = true
	AL["Hurnak Grimmord"] = true
	AL["Ildine Sorrowspear"] = true
	AL["Illidari Watcher"] = true
	AL["Imindril Spearsong"] = true
	AL["Indormi"] = true
	AL["Indu'le Fisherman"] = true
	AL["Indu'le Mystic"] = true
	AL["Indu'le Warrior"] = true
	AL["Inessera"] = true
	AL["Innkeeper Biribi"] = true
	AL["Innkeeper Fizzgrimble"] = true
	AL["Innkeeper Grilka"] = true
	AL["Iron Rune-Shaper"] = true
	AL["Ironus Coldsteel"] = true
	AL["Ironwool Mammoth"] = true
	AL["Jabbey"] = true
	AL["Jack Trapper"] = true
	AL["Jadefire Rogue"] = true
	AL["Jalane Ayrole"] = true
	AL["James Van Brunt"] = true
	AL["Jamesina Watterly"] = true
	AL["Jandia"] = true
	AL["Janet Hommers"] = true
	AL["Jangdor Swiftstrider"] = true
	AL["Jannos Ironwill"] = true
	AL["Jaquilina Dramet"] = true
	AL["Jase Farlane"] = true
	AL["Jaxin Chong"] = true
	AL["Jazdalaad"] = true
	AL["Jazzrik"] = true
	AL["Jedidiah Handers"] = true
	AL["Jeeda"] = true
	AL["Jenna Lemkenilli"] = true
	AL["Jennabink Powerseam"] = true
	AL["Jessara Cordell"] = true
	AL["Jezebel Bican"] = true
	AL["Jhordy Lapforge"] = true
	AL["Jim Saltit"] = true
	AL["Jinky Twizzlefixxit"] = true
	AL["Jo'mah"] = true
	AL["Johan Barnes"] = true
	AL["Johan Focht"] = true
	AL["Jonathan Garrett"] = true
	AL["Jonathan Lewis"] = true
	AL["Jormund Stonebrow"] = true
	AL["Josef Gregorian"] = true
	AL["Joseph Moore"] = true
	AL["Joseph Wilson"] = true
	AL["Josephine Lister"] = true
	AL["Josric Fame"] = true
	AL["Jubie Gadgetspring"] = true
	AL["Jun'ha"] = true
	AL["Juno Dufrain"] = true
	AL["Timofey Oshenko"] = true
	AL["Jutak"] = true
	AL["K. Lee Smallfry"] = true
	AL["Kablamm Farflinger"] = true
	AL["Kaita Deepforge"] = true
	AL["Kalaen"] = true
	AL["Kalinda"] = true
	AL["Kalldan Felmoon"] = true
	AL["Kanaria"] = true
	AL["Kania"] = true
	AL["Karaaz"] = true
	AL["Karn Stonehoof"] = true
	AL["Karolek"] = true
	AL["Katherine Lee"] = true
	AL["Keelen Sheets"] = true
	AL["Keena"] = true
	AL["Kelgruk Bloodaxe"] = true
	AL["Kelsey Yance"] = true
	AL["Kendor Kabonka"] = true
	AL["Khara Deepwater"] = true
	AL["Khole Jinglepocket"] = true
	AL["Kiknikle"] = true
	AL["Kil'hala"] = true
	AL["Killian Sanatha"] = true
	AL["Kilxx"] = true
	AL["Kireena"] = true
	AL["Kirembri Silvermane"] = true
	AL["Kithas"] = true
	AL["Kitta Firewind"] = true
	AL["Knaz Blunderflame"] = true
	AL["Knight Dameron"] = true
	AL["Kor'geld"] = true
	AL["Koren"] = true
	AL["Korim"] = true
	AL["Kradu Grimblade"] = true
	AL["Krek Cragcrush"] = true
	AL["Kriggon Talsone"] = true
	AL["Krinkle Goodsteel"] = true
	AL["Kristen Smythe"] = true
	AL["Krugosh"] = true
	AL["Krulmoo Fullmoon"] = true
	AL["Krunn"] = true
	AL["Kul Inkspiller"] = true
	AL["Kul'de"] = true
	AL["Kulwia"] = true
	AL["Kurdram Stonehammer"] = true
	AL["Kurzen Commando"] = true
	AL["Kylanna"] = true
	AL["Kylanna Windwhisper"] = true
	AL["Kylene"] = true
	AL["Kzixx"] = true
	AL["Lady Alistra"] = true
	AL["Lady Palanseer"] = true
	AL["Laird"] = true
	AL["Lalla Brightweave"] = true
	AL["Landraelanis"] = true
	AL["Lanolis Dewdrop"] = true
	AL["Larana Drome"] = true
	AL["Lardan"] = true
	AL["Lavinia Crowe"] = true
	AL["Lebowski"] = true
	AL["Leeli Longhaggle"] = true
	AL["Legashi Rogue"] = true
	AL["Leo Sarn"] = true
	AL["Leonard Porter"] = true
	AL["Librarian Erickson"] = true
	AL["Lieutenant General Andorov"] = true
	AL["Lillehoff"] = true
	AL["Lilliam Sparkspindle"] = true
	AL["Lilly"] = true
	AL["Lilyssia Nightbreeze"] = true
	AL["Lindea Rabonne"] = true
	AL["Linna Bruder"] = true
	AL["Linzy Blackbolt"] = true
	AL["Lizbeth Cromwell"] = true
	AL["Logannas"] = true
	AL["Logistics Officer Brighton"] = true
	AL["Logistics Officer Silverstone"] = true
	AL["Logistics Officer Ulrike"] = true
	AL["Lokhtos Darkbargainer"] = true
	AL["Loolruna"] = true
	AL["Lord Thorval"] = true
	AL["Lorelae Wintersong"] = true
	AL["Lorokeem"] = true
	AL["Lucan Cordell"] = true
	AL["Lucc"] = true
	AL["Lyna"] = true
	AL["Lynalis"] = true
	AL["Mack Diver"] = true
	AL["Madame Ruby"] = true
	AL["Magar"] = true
	AL["Mageslayer"] = true
	AL["Magistrix Eredania"] = true
	AL["Magnus Frostwake"] = true
	AL["Mahani"] = true
	AL["Mahu"] = true
	AL["Makaru"] = true
	AL["Mallen Swain"] = true
	AL["Malygen"] = true
	AL["Manfred Staller"] = true
	AL["Margaux Parchley"] = true
	AL["Mari Stonehand"] = true
	AL["Maria Lumere"] = true
	AL["Martine Tramblay"] = true
	AL["Mary Edras"] = true
	AL["Masat T'andr"] = true
	AL["Master Chef Mouldier"] = true
	AL["Master Craftsman Omarion"] = true
	AL["Master Elemental Shaper Krixix"] = true
	AL["Mathar G'ochar"] = true
	AL["Matt Johnson"] = true
	AL["Mavralyn"] = true
	AL["Mazk Snipeshot"] = true
	AL["Me'lynn"] = true
	AL["Meilosh"] = true
	AL["Melaris"] = true
	AL["Mera Mistrunner"] = true
	AL["Miall"] = true
	AL["Miao'zan"] = true
	AL["Micha Yance"] = true
	AL["Michael Schwan"] = true
	AL["Michelle Belle"] = true
	AL["Mildred Fletcher"] = true
	AL["Millie Gregorian"] = true
	AL["Mindri Dinkles"] = true
	AL["Mining"] = true
	AL["Miralisse"] = true
	AL["Mire Lord"] = true
	AL["Misensi"] = true
	AL["Mishta"] = true
	AL["Mixie Farshot"] = true
	AL["Mo'arg Weaponsmith"] = true
	AL["Modoru"] = true
	AL["Molt Thorn"] = true
	AL["Montarr"] = true
	AL["Moonrage Tailor"] = true
	AL["Moordo"] = true
	AL["Morgan Day"] = true
	AL["Mossflayer Shadowhunter"] = true
	AL["Muaat"] = true
	AL["Muculent Ooze"] = true
	AL["Mudduk"] = true
	AL["Muheru the Weaver"] = true
	AL["Mukdrak"] = true
	AL["Mumman"] = true
	AL["Murk Worm"] = true
	AL["Murkblood Raider"] = true
	AL["Muuran"] = true
	AL["Mycah"] = true
	AL["Mythrin'dir"] = true
	AL["Naal Mistrunner"] = true
	AL["Nadyia Maneweaver"] = true
	AL["Nahogg"] = true
	AL["Naka"] = true
	AL["Nakodu"] = true
	AL["Namdo Bizzfizzle"] = true
	AL["Namha Moonwater"] = true
	AL["Nandar Branson"] = true
	AL["Nardstrum Copperpinch"] = true
	AL["Narj Deepslice"] = true
	AL["Narkk"] = true
	AL["Narv Hidecrafter"] = true
	AL["Nascent Val'kyr"] = true
	AL["Nasmara Moonsong"] = true
	AL["Nata Dawnstrider"] = true
	AL["Neal Allen"] = true
	AL["Neferatti"] = true
	AL["Neii"] = true
	AL["Nemiha"] = true
	AL["Nergal"] = true
	AL["Nerrist"] = true
	AL["Nessa Shadowsong"] = true
	AL["Nexus Stalker"] = true
	AL["Nimar the Slayer"] = true
	AL["Nina Lightbrew"] = true
	AL["Niobe Whizzlespark"] = true
	AL["Nioma"] = true
	AL["Nissa Firestone"] = true
	AL["Nixx Sprocketspring"] = true
	AL["Nula the Butcher"] = true
	AL["Nurse Applewood"] = true
	AL["Nurse Neela"] = true
	AL["Nus"] = true
	AL["Nyoma"] = true
	AL["Ockil"] = true
	AL["Ogg'marr"] = true
	AL["Oglethorpe Obnoticus"] = true
	AL["Okothos Ironrager"] = true
	AL["Okuno"] = true
	AL["Olisarra the Kind"] = true
	AL["Oluros"] = true
	AL["Onodo"] = true
	AL["Onslaught Mason"] = true
	AL["Ontuvo"] = true
	AL["Orland Schaeffer"] = true
	AL["Orn Tenderhoof"] = true
	AL["Otho Moji'ko"] = true
	AL["Ounhulo"] = true
	AL["Outfitter Eric"] = true
	AL["Pand Stonebinder"] = true
	AL["Paulsta'ats"] = true
	AL["Penney Copperpinch"] = true
	AL["Peter Galen"] = true
	AL["Phantom Attendant"] = true
	AL["Phantom Stagehand"] = true
	AL["Phantom Valet"] = true
	AL["Phea"] = true
	AL["Pikkle"] = true
	AL["Plains Mammoth"] = true
	AL["Portal Seeker"] = true
	AL["Poshken Hardbinder"] = true
	AL["Pratt McGrubben"] = true
	AL["Primal Ooze"] = true
	AL["Professor Pallin"] = true
	AL["Prospector Khazgorm"] = true
	AL["Prospector Nachlan"] = true
	AL["Provisioner Lorkran"] = true
	AL["Provisioner Nasela"] = true
	AL["Pyall Silentstride"] = true
	AL["Pyrewood Tailor"] = true
	AL["Qia"] = true
	AL["Quarelestra"] = true
	AL["Quartermaster Davian Vaclav"] = true
	AL["Quartermaster Endarin"] = true
	AL["Quartermaster Enuril"] = true
	AL["Quartermaster Jaffrey Noreliqe"] = true
	AL["Quartermaster Miranda Breechlock"] = true
	AL["Quartermaster Urgronn"] = true
	AL["Quelis"] = true
	AL["Raenah"] = true
	AL["Raging Skeleton"] = true
	AL["Ranik"] = true
	AL["Rann Flamespinner"] = true
	AL["Rartar"] = true
	AL["Rathis Tomber"] = true
	AL["Rawrk"] = true
	AL["Recorder Lidio"] = true
	AL["Refik"] = true
	AL["Rekka the Hammer"] = true
	AL["Ribbly's Crony"] = true
	AL["Rift Keeper"] = true
	AL["Rift Lord"] = true
	AL["Rikqiz"] = true
	AL["Rin'wosho the Trader"] = true
	AL["Rizz Loosebolt"] = true
	AL["Rogvar"] = true
	AL["Rohok"] = true
	AL["Rollick MacKreel"] = true
	AL["Ronald Burch"] = true
	AL["Rosemary Bovard"] = true
	AL["Rosina Rivet"] = true
	AL["Rotting Behemoth"] = true
	AL["Roxxik"] = true
	AL["Rungor"] = true
	AL["Ruppo Zipcoil"] = true
	AL["Saenorion"] = true
	AL["Sairuk"] = true
	AL["Sally Tompkins"] = true
	AL["Sarah Tanner"] = true
	AL["Saru Steelfury"] = true
	AL["Sassa Weldwell"] = true
	AL["Sathein"] = true
	AL["Scargil"] = true
	AL["Scarlet Archmage"] = true
	AL["Scarlet Cavalier"] = true
	AL["Scarlet Smith"] = true
	AL["Scarlet Spellbinder"] = true
	AL["Scholomance Adept"] = true
	AL["Sock Brightbolt"] = true
	AL["Se'Jib"] = true
	AL["Sebastian Crane"] = true
	AL["Sedana"] = true
	AL["Seer Janidi"] = true
	AL["Seersa Copperpinch"] = true
	AL["Sempstress Ambershine"] = true
	AL["Serge Hinott"] = true
	AL["Sethekk Ravenguard"] = true
	AL["Sewa Mistrunner"] = true
	AL["Shaani"] = true
	AL["Shadi Mistrunner"] = true
	AL["Shadow Council Warlock"] = true
	AL["Shadowmage"] = true
	AL["Shadowsworn Thug"] = true
	AL["Shadowy Assassin"] = true
	AL["Shaina Fuller"] = true
	AL["Shankys"] = true
	AL["Shattered Hand Centurion"] = true
	AL["Shattertusk Mammoth"] = true
	AL["Shayis Steelfury"] = true
	AL["Sheendra Tallgrass"] = true
	AL["Shelene Rhobart"] = true
	AL["Shen'dralar Provisioner"] = true
	AL["Sheri Zipstitch"] = true
	AL["Sid Limbardi"] = true
	AL["Silverbrook Trapper"] = true
	AL["Silverbrook Villager"] = true
	AL["Silverbrook Hunter"] = true
	AL["Silverbrook Defender"] = true
	AL["Simon Tanner"] = true
	AL["Simon Unit"] = true
	AL["Skeletal Flayer"] = true
	AL["Skeletal Runesmith"] = true
	AL["Skreah"] = true
	AL["Slagg"] = true
	AL["Slavering Ghoul"] = true
	AL["Smiles O'Byron"] = true
	AL["Smith Argus"] = true
	AL["Smudge Thunderwood"] = true
	AL["Son of Arkkoroc"] = true
	AL["Soolie Berryfizz"] = true
	AL["Sovik"] = true
	AL["Spectral Researcher"] = true
	AL["Spirestone Warlord"] = true
	AL["Springspindle Fizzlegear"] = true
	AL["Stephen Ryback"] = true
	AL["Stoic Mammoth"] = true
	AL["Stone Guard Mukar"] = true
	AL["Stormforged Ambusher"] = true
	AL["Stormforged Artificer"] = true
	AL["Stormforged Champion"] = true
	AL["Stormforged Infiltrator"] = true
	AL["Strashaz Myrmidon"] = true
	AL["Strashaz Serpent Guard"] = true
	AL["Strashaz Warrior"] = true
	AL["Stuart Fleming"] = true
	AL["Sunfury Arcanist"] = true
	AL["Sunfury Arch Mage"] = true
	AL["Sunfury Archer"] = true
	AL["Sunfury Bloodwarder"] = true
	AL["Sunfury Bowman"] = true
	AL["Sunfury Researcher"] = true
	AL["Sunseeker Astromage"] = true
	AL["Sunseeker Botanist"] = true
	AL["Super-Seller 680"] = true
	AL["Supply Officer Mills"] = true
	AL["Swampwalker"] = true
	AL["Swampwalker Elder"] = true
	AL["Sylann"] = true
	AL["Syndicate Assassin"] = true
	AL["Syndicate Spy"] = true
	AL["Taladan"] = true
	AL["Tally Berryfizz"] = true
	AL["Tamar"] = true
	AL["Tanaika"] = true
	AL["Tanak"] = true
	AL["Tangled Horror"] = true
	AL["Tansy Puddlefizz"] = true
	AL["Tarban Hearthgrain"] = true
	AL["Tari'qa"] = true
	AL["Tatiana"] = true
	AL["Teg Dawnstrider"] = true
	AL["Telonis"] = true
	AL["Tepa"] = true
	AL["Terrormaster"] = true
	AL["Thaddeus Webb"] = true
	AL["Thamner Pol"] = true
	AL["Tharynn Bouden"] = true
	AL["Thaurissan Firewalker"] = true
	AL["Theramore Infiltrator"] = true
	AL["Theramore Marine"] = true
	AL["Theramore Preserver"] = true
	AL["Therum Deepforge"] = true
	AL["Thomas Kolichio"] = true
	AL["Thomas Yance"] = true
	AL["Thorkaf Dragoneye"] = true
	AL["Thoth"] = true
	AL["Thuzadin Shadowcaster"] = true
	AL["Tidelord Rrurgaz"] = true
	AL["Tiffany Cartier"] = true
	AL["Tilli Thistlefuzz"] = true
	AL["Time-Lost Shadowmage"] = true
	AL["Timothy Jones"] = true
	AL["Timothy Worthington"] = true
	AL["Tink Brightbolt"] = true
	AL["Tinkerwiz"] = true
	AL["Tinkmaster Overspark"] = true
	AL["Tisha Longbridge"] = true
	AL["Tognus Flintfire"] = true
	AL["Tomas"] = true
	AL["Torloth the Magnificent"] = true
	AL["Torn Fin Coastrunner"] = true
	AL["Torn Fin Muckdweller"] = true
	AL["Torn Fin Oracle"] = true
	AL["Torn Fin Tidehunter"] = true
	AL["Trader Narasu"] = true
	AL["Traugh"] = true
	AL["Truk Wildbeard"] = true
	AL["Tunkk"] = true
	AL["Twilight Fire Guard"] = true
	AL["Ulthaan"] = true
	AL["Ulthir"] = true
	AL["Una"] = true
	AL["Unchained Doombringer"] = true
	AL["Uriku"] = true
	AL["Uthok"] = true
	AL["Vaean"] = true
	AL["Valdaron"] = true
	AL["Vance Undergloom"] = true
	AL["Vanessa Sellers"] = true
	AL["Vargus"] = true
	AL["Vazario Linkgrease"] = true
	AL["Veenix"] = true
	AL["Vekh'nir Dreadhawk"] = true
	AL["Vendor-Tron 1000"] = true
	AL["Vengeful Ancient"] = true
	AL["Venture Co. Excavator"] = true
	AL["Venture Co. Strip Miner"] = true
	AL["Veteran Crusader Aliocha Segard"] = true
	AL["Vharr"] = true
	AL["Viggz Shinesparked"] = true
	AL["Vilebranch Hideskinner"] = true
	AL["Vir'aani Arcanist"] = true
	AL["Vira Younghoof"] = true
	AL["Vivianna"] = true
	AL["Vizzklick"] = true
	AL["Vodesiin"] = true
	AL["Voidshrieker"] = true
	AL["Volchan"] = true
	AL["Vosur Brakthel"] = true
	AL["Waldor"] = true
	AL["Wastewander Assassin"] = true
	AL["Wastewander Bandit"] = true
	AL["Wastewander Rogue"] = true
	AL["Wastewander Scofflaw"] = true
	AL["Wastewander Shadow Mage"] = true
	AL["Wastewander Thief"] = true
	AL["Weapon Technician"] = true
	AL["Weaver Aoa"] = true
	AL["Wenna Silkbeard"] = true
	AL["Werg Thickblade"] = true
	AL["Wik'Tar"] = true
	AL["Wilhelmina Renel"] = true
	AL["Wind Trader Lathrai"] = true
	AL["Winter Reveler"] = true
	AL["Winterfall Den Watcher"] = true
	AL["Winterfall Totemic"] = true
	AL["Winterfall Ursa"] = true
	AL["Witherbark Berserker"] = true
	AL["Witherbark Headhunter"] = true
	AL["Witherbark Shadow Hunter"] = true
	AL["Withered Ancient"] = true
	AL["Wolgren Jinglepocket"] = true
	AL["Wrahk"] = true
	AL["Wrathwalker"] = true
	AL["Wulan"] = true
	AL["Wulmort Jinglepocket"] = true
	AL["Wunna Darkmane"] = true
	AL["Xandar Goodbeard"] = true
	AL["Xen'to"] = true
	AL["Xerintha Ravenoak"] = true
	AL["Xizk Goodstitch"] = true
	AL["Xizzer Fizzbolt"] = true
	AL["Xylinnia Starshine"] = true
	AL["Xyrol"] = true
	AL["Yarr Hammerstone"] = true
	AL["Yatheon"] = true
	AL["Yelmak"] = true
	AL["Yonada"] = true
	AL["Ythyar"] = true
	AL["Yuka Screwspigot"] = true
	AL["Yurial Soulwater"] = true
	AL["Zamja"] = true
	AL["Zan Shivsproket"] = true
	AL["Zannok Hidepiercer"] = true
	AL["Zansoa"] = true
	AL["Zantasia"] = true
	AL["Zap Farflinger"] = true
	AL["Zaralda"] = true
	AL["Zarena Cromwind"] = true
	AL["Zargh"] = true
	AL["Zarrin"] = true
	AL["Zebig"] = true
	AL["Zixil"] = true
	AL["Zorbin Fandazzle"] = true
	AL["Zula Slagfury"] = true
	AL["Zurai"] = true
	AL["Zurii"] = true
	AL["Hide minimap icon"] = true
	AL["Enchants"] = true
	AL["Head Enchants"] = true
	AL["Chromius"] = true
	AL["Ascension Vanity Collection"] = true
	AL["Learn/Recive Vanity Item"] = true
	AL["Vanity Collection"] = true

	-- Subzones
	AL["The Headmaster's Study"] = true
	AL["The Courtyard"] = true
	AL["Dining Hall"] = true
	AL["The Vacant Den"] = true
	AL["Upper Observatory"] = true
	AL["Lower Observatory"] = true
	AL["Lord Godfrey's Chamber"] = true
	AL["The Wall Walk"] = true
	AL["Crusader's Square"] = true
	AL["Upper Ring"] = true
	AL["Lower Pool"] = true
	AL["Crimson Laboratories"] = true
	AL["Calculation Chamber"] = true

	-- Karazhan
	AL["Servant's Quarters"] = true
	AL["Upper Livery Stables"] = true
	AL["Random Servant's Quarter Boss"] = true
	AL["Netherspace"] = true
	AL["The Power Station"] = true
	AL["Medivh's Chambers"] = true
	AL["Gamesman's Hall"] = true
	AL["The Celestial Watch"] = true
	AL["Upper Library"] = true
	AL["The Repository"] = true
	AL["Guardian's Library"] = true
	AL["The Menagerie"] = true
	AL["Upper Broken Stair"] = true
	AL["Lower Broken Stair"] = true
	AL["Master's Terrace"] = true
	AL["Opera Hall Balcony"] = true
	AL["The Guest Chambers"] = true
	AL["The Banquet Hall"] = true

end