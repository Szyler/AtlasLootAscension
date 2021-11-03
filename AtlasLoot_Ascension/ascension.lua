local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")

-- Index
--- Collections
---- Mounts
---- Pets
---- Appearances
---- Weapons
---- Incarnations
---- Illusions
---- Pet Cosmetics
--- Store Items
---- Convenience
---- Mounts
---- Pets
---- Toys
---- Appearances
---- Bundles
--- Event Items
---- Felforged
---- Seasonal
 

		AtlasLoot_Data["Tabard"] = {
			{ 1,499635, "", "=q7=Golden Lotus Tabard"}, -- [1]
			{ 2,38310, "", "=q7=Tabard of the Arcane"}, -- [2]
			{ 3,38311, "", "=q7=Tabard of the Void"}, -- [3]
			{ 4,38312, "", "=q7=Tabard of Brilliance"}, -- [4]
			{ 5,1175624, "", "=q6=Conqueror's Tabard of Ascension"}, -- [5]
			{ 6,38314, "", "=q7=Tabard of the Defender"}, -- [6]
			{ 7,23705, "", "=q7=Tabard of Flame"}, -- [7]
			{ 8,101198, "", "=q6=Horde Tabard"}, -- [8]
			{ 9,23709, "", "=q7=Tabard of Frost"}, -- [9]
			{ 10,597800, "", "=q7=Tabard of Blessed Ascension"}, -- [10]
			{ 11,597603, "", "=q7=Icebound Tabard of Ascension"}, -- [11]
			{ 12,28788, "", "=q7=Tabard of the Protector"}, -- [12]
			{ 13,597600, "", "=q7=Tabard of Ascension: 1st Edition"}, -- [13]
			{ 14,38313, "", "=q7=Tabard of Fury"}, -- [14]
			{ 15,101189, "", "=q6=Alliance Tabard"}, -- [15]
		};

		AtlasLoot_Data["Toys"] = {
			{ 1,499584, "", "=q7=Coin of Many Faces"}, -- [1]
			{ 2,499598, "", "=q7=Red Dragon Body Costume"}, -- [2]
			{ 3,499599, "", "=q7=Red Dragon Head Costume"}, -- [3]
			{ 4,499600, "", "=q7=Green Dragon Tail Costume"}, -- [4]
			{ 5,499602, "", "=q7=Green Dragon Head Costume"}, -- [5]
			{ 6,499604, "", "=q7=Blue Dragon Body Costume"}, -- [6]
			{ 7,499605, "", "=q7=Blue Dragon Head Costume"}, -- [7]
			{ 8,499606, "", "=q7=Horse Tail Costume"}, -- [8]
			{ 9,38301, "", "=q7=D.I.S.C.O"}, -- [9]
			{ 10,49704, "", "=q7=Carved Ogre Idol"}, -- [10]
			{ 11,38578, "", "=q7=Flag of Ownership"}, -- [11]
			{ 12,505000, "", "=q7=Gordok Ogre Suit"}, -- [12]
			{ 13,33079, "", "=q7=Murloc Costume"}, -- [13]
			{ 14,32542, "", "=q7=Imp in a Ball"}, -- [14]
			{ 15,46780, "", "=q7=Ogre Pinata"}, -- [15]
			{ 16,33219, "", "=q7=Goblin Gumbo Kettle"}, -- [16]
			{ 17,34499, "", "=q7=Paper Flying Machine Kit"}, -- [17]
			{ 18,33223, "", "=q7=Fishing Chair"}, -- [18]
			{ 19,499607, "", "=q7=Horse Head Costume"}, -- [19]
			{ 20,45063, "", "=q7=Foam Sword Rack"}, -- [20]
			{ 21,499597, "", "=q7=Red Dragon Tail Costume"}, -- [21]
			{ 22,82313, "", "=q7=Ebon Blade Banner"}, -- [22]
			{ 23,499171, "", "=q7=Flag of Ownership (Rage)"}, -- [23]
			{ 24,499603, "", "=q7=Blue Dragon Tail Costume"}, -- [24]
			{ 25,499169, "", "=q7=Flag of Ownership (Sunglasses)"}, -- [25]
			{ 26,499170, "", "=q7=Flag of Ownership (Smile)"}, -- [26]
			{ 27,499173, "", "=q7=Flag of Ownership (Pensive)"}, -- [27]
			{ 28,499174, "", "=q7=Flag of Ownership (Nerd)"}, -- [28]
			{ 29,499175, "", "=q7=Flag of Ownership (Joy)"}, -- [29]
			{ 30,499176, "", "=q7=Flag of Ownership (Grimacing)"}, -- [30]
		};

		AtlasLoot_Data["Toys2"] = {
			{ 1,499177, "", "=q7=Flag of Ownership (Green F)"}, -- [31]
			{ 2,499172, "", "=q7=Flag of Ownership (Question Mark)"}, -- [32]
			{ 3,818060, "", "=q7=The Skeleton Coin"}, -- [33]
			{ 4,499601, "", "=q7=Green Dragon Body Costume"}, -- [34]
			{ 5,100010, "", "=q7=Qiraji Egg"}, -- [35]
			{ 6,100013, "", "=q7=Staff of the Sun God"}, -- [36]
			{ 7,898070, "", "=q7=Battle Horn"}, -- [37]
			{ 8,110003, "", "=q7=Banner of Recruitment"}, -- [38]
			{ 9,980033, "", "=q7=4.20.2020 Peace Pipe"}, -- [39]
			{ 10,32566, "", "=q7=Picnic Basket"}, -- [40]
			{ 11,998529, "", "=q7=Limitless Noggenfogger Elixir"}, -- [41]
			{ 12,100009, "", "=q7=Bottled Qiraji Swarm"}, -- [42]
			{ 13,100011, "", "=q7=Qiraji Battle Horn"}, -- [43]
			{ 14,100012, "", "=q7=Twilight Bonfire"}, -- [44]
			{ 15,100021, "", "=q7=Scourge Stick"}, -- [45]
			{ 16,100565, "", "=q7=Burning Steps"}, -- [46]
			{ 17,102103, "", "=q7=Spiteful Apparition"}, -- [47]
			{ 18,100576, "", "=q7=Legion Pocket Portal"}, -- [48]
			{ 19,499168, "", "=q7=Flag of Ownership (Weary)"}, -- [49]
		};

		AtlasLoot_Data["Incarnation"] = {
			{ 1,6300647, "", "=q7=Incarnation: Fangs of Ashamane (Orange)"}, -- [1]
			{ 2,499380, "", "=q7=Incarnation: Highmountain Tauren Flight Form"}, -- [2]
			{ 3,499381, "", "=q7=Incarnation: Kul Tiran Flight Form (Brown)"}, -- [3]
			{ 4,499382, "", "=q7=Incarnation: Kul Tiran Flight Form (Dark)"}, -- [4]
			{ 5,499383, "", "=q7=Incarnation: Kul Tiran Flight Form (Green)"}, -- [5]
			{ 6,499384, "", "=q7=Incarnation: Kul Tiran Flight Form (Light)"}, -- [6]
			{ 7,499385, "", "=q7=Incarnation: Zandalari Troll Flight Form"}, -- [7]
			{ 8,499401, "", "=q7=Incarnation: Tree of Life Forest Guardian"}, -- [8]
			{ 9,499402, "", "=q7=Incarnation: Moonkin Astral Form"}, -- [9]
			{ 10,6300582, "", "=q7=Incarnation: Ghost Wolf Raptor (Undead)"}, -- [10]
			{ 11,6300586, "", "=q7=Incarnation: Ghost Wolf Raptor (Black)"}, -- [11]
			{ 12,6300590, "", "=q7=Incarnation: Tree of Wrath (Brown)"}, -- [12]
			{ 13,6300602, "", "=q7=Incarnation: Avatar of Ursol (Purple)"}, -- [13]
			{ 14,6300606, "", "=q7=Incarnation: Claws of Ursoc (Turquoise)"}, -- [14]
			{ 15,6300610, "", "=q7=Incarnation: Claws of Ursoc (Black)"}, -- [15]
			{ 16,6300618, "", "=q7=Incarnation: Fallen to Nightmare (Green)"}, -- [16]
			{ 17,6300626, "", "=q7=Incarnation: Might of The Grizzlemaw (Gray)"}, -- [17]
			{ 18,6300634, "", "=q7=Incarnation: Primal Stalker (Purple)"}, -- [18]
			{ 19,6300638, "", "=q7=Incarnation: Ghost of the Pridemother (Purple)"}, -- [19]
			{ 20,6300642, "", "=q7=Incarnation: Nature's Fury (Orange)"}, -- [20]
			{ 21,6300646, "", "=q7=Incarnation: Fangs of Ashamane (Brown)"}, -- [21]
			{ 22,6300650, "", "=q7=Incarnation: Fangs of Ashamane (White)"}, -- [22]
			{ 23,6300654, "", "=q7=Incarnation: Dolphin Aquatic Form (Dark Blue)"}, -- [23]
			{ 24,6300583, "", "=q7=Incarnation: Ghost Wolf Raptor (Red)"}, -- [24]
			{ 25,6300587, "", "=q7=Incarnation: Ghost Wolf (Black)"}, -- [25]
			{ 26,6300591, "", "=q7=Incarnation: Tree of Wrath (Turquoise)"}, -- [26]
			{ 27,6300603, "", "=q7=Incarnation: Avatar of Ursol (Red)"}, -- [27]
			{ 28,6300607, "", "=q7=Incarnation: Claws of Ursoc (Burgundy)"}, -- [28]
			{ 29,6300611, "", "=q7=Incarnation: Claws of Ursoc (Purple)"}, -- [29]
			{ 30,6300619, "", "=q7=Incarnation: Fallen to Nightmare (Gray/Red)"}, -- [30]
		};

		AtlasLoot_Data["Incarnation2"] = {
			{ 1,6300627, "", "=q7=Incarnation: Might of The Grizzlemaw (Brown)"}, -- [31]
			{ 2,6300635, "", "=q7=Incarnation: Primal Stalker (White)"}, -- [32]
			{ 3,6300639, "", "=q7=Incarnation: Ghost of the Pridemother (Red)"}, -- [33]
			{ 4,6300643, "", "=q7=Incarnation: Nature's Fury (White)"}, -- [34]
			{ 5,6300651, "", "=q7=Incarnation: Kul Tiran Moonkin Form (Brown)"}, -- [35]
			{ 6,6300655, "", "=q7=Incarnation: Doe Travel Form (Purple)"}, -- [36]
			{ 7,6300584, "", "=q7=Incarnation: Ghost Wolf Raptor (Green)"}, -- [37]
			{ 8,6300588, "", "=q7=Incarnation: Ghost Wolf (Rustic)"}, -- [38]
			{ 9,6300592, "", "=q7=Incarnation: Tree of Wrath (Red)"}, -- [39]
			{ 10,6300604, "", "=q7=Incarnation: Claws of Ursoc (Blue)"}, -- [40]
			{ 11,6300608, "", "=q7=Incarnation: Claws of Ursoc (Blonde)"}, -- [41]
			{ 12,6300616, "", "=q7=Incarnation: Fallen to Nightmare (Blue)"}, -- [42]
			{ 13,6300624, "", "=q7=Incarnation: Might of The Grizzlemaw (White)"}, -- [43]
			{ 14,6300632, "", "=q7=Incarnation: Primal Stalker (Green)"}, -- [44]
			{ 15,6300636, "", "=q7=Incarnation: Ghost of the Pridemother (Blue)"}, -- [45]
			{ 16,6300644, "", "=q7=Incarnation: Fangs of Ashamane (Black)"}, -- [46]
			{ 17,6300648, "", "=q7=Incarnation: Fangs of Ashamane (Purple)"}, -- [47]
			{ 18,6300652, "", "=q7=Incarnation: Kul Tiran Travel Form (Brown)"}, -- [48]
			{ 19,6300656, "", "=q7=Incarnation: Highmountain Moonkin Form"}, -- [49]
			{ 20,6300581, "", "=q7=Incarnation: Ghost Wolf Raptor (White)"}, -- [50]
			{ 21,6300585, "", "=q7=Incarnation: Ghost Wolf Raptor (Brown)"}, -- [51]
			{ 22,6300589, "", "=q7=Incarnation: Ghost Wolf (Blue)"}, -- [52]
			{ 23,6300593, "", "=q7=Incarnation: Tree of Wrath (Blue)"}, -- [53]
			{ 24,6300601, "", "=q7=Incarnation: Avatar of Ursol (Blue)"}, -- [54]
			{ 25,6300605, "", "=q7=Incarnation: Claws of Ursoc (Brown)"}, -- [55]
			{ 26,6300609, "", "=q7=Incarnation: Claws of Ursoc (Gray)"}, -- [56]
			{ 27,6300617, "", "=q7=Incarnation: Fallen to Nightmare (Brown)"}, -- [57]
			{ 28,6300625, "", "=q7=Incarnation: Might of The Grizzlemaw (Blonde)"}, -- [58]
			{ 29,6300633, "", "=q7=Incarnation: Primal Stalker (Orange)"}, -- [59]
			{ 30,6300637, "", "=q7=Incarnation: Ghost of the Pridemother (Green)"}, -- [60]
		};

		AtlasLoot_Data["Incarnation3"] = {
			{ 1,6300641, "", "=q7=Incarnation: Nature's Fury (Brown)"}, -- [61]
			{ 2,6300645, "", "=q7=Incarnation: Fangs of Ashamane (Blue)"}, -- [62]
			{ 3,6300649, "", "=q7=Incarnation: Fangs of Ashamane (Dark Blue)"}, -- [63]
			{ 4,6300653, "", "=q7=Incarnation: Kul Tiran Aquatic Form (Brown)"}, -- [64]
			{ 5,6300600, "", "=q7=Incarnation: Avatar of Ursol (Green)"}, -- [65]
			{ 6,6300640, "", "=q7=Incarnation: Nature's Fury (Blue)"}, -- [66]
		};

		AtlasLoot_Data["Misc"] = {
			{ 1,101169, "", "=q6=Wondrous Wisdomball"}, -- [1]
			{ 2,101172, "", "=q6=Kleptomanic Demon Leash"}, -- [2]
			{ 3,101173, "", "=q6=Sigil of Gimbly"}, -- [3]
			{ 4,101178, "", "=q6=Alliance Balloon"}, -- [4]
			{ 5,101180, "", "=q6=Unstable Lightwell"}, -- [6]
			{ 6,97331, "", "=q6=Lil' Chromaggus Whistle"}, -- [23]
			{ 7,79315, "", "=q6=Felforged Tome: Rush of Adrenaline"}, -- [24]
			{ 8,79316, "", "=q6=Felforged Tome: Fel Blood"}, -- [25]
			{ 9,101179, "", "=q6=Horde Balloon"}, -- [30]
			{ 10,101427, "", "=q6=Portable Alchemy Lab"}, -- [35]
			{ 11,246188, "", "=q6=Microbot 8D"}, -- [36]
		};

		AtlasLoot_Data["Pets"] = {
			{ 1,499576, "", "=q7=Ancient Nest Guardian"}, -- [1]
			{ 2,499577, "", "=q7=Zao, Calfling of Niuzao"}, -- [2]
			{ 3,499633, "", "=q7=Lil' Nefarian"}, -- [3]
			{ 4,499637, "", "=q7=Wisper"}, -- [4]
			{ 5,32588, "", "=q7=Banana Charm"}, -- [5]
			{ 6,500750, "", "=q7=[HR] Tike Myson"}, -- [6]
			{ 7,500751, "", "=q7=Tike Myson"}, -- [7]
			{ 8,49693, "", "=q7=Lil' Phylactery"}, -- [8]
			{ 9,942101, "", "=q7=Pet Cage - Wildcard World First Lady Vashj Ascended (10 Player)"}, -- [9]
			{ 10,99385, "", "=q7=Crawling Claw"}, -- [10]
			{ 11,505001, "", "=q7=Light of Ascension"}, -- [11]
			{ 12,842002, "", "=q7=Pet Cage - World First Malchezaar"}, -- [12]
			{ 13,842003, "", "=q7=Pet Cage - World First Nightbane"}, -- [13]
			{ 14,842008, "", "=q7=Pet Cage - World First Archimonde"}, -- [14]
			{ 15,842010, "", "=q7=Pet Cage - World First Kil'Jaeden"}, -- [15]
			{ 16,842104, "", "=q7=Pet Cage - World First Magtheridon 25 HC"}, -- [16]
			{ 17,34492, "", "=q7=Rocket Chicken"}, -- [17]
			{ 18,34493, "", "=q7=Dragon Kite"}, -- [18]
			{ 19,44738, "", "=q7=Kirin Tor Familiar"}, -- [19]
			{ 20,942102, "", "=q7=Pet Cage - Wildcard World First Lady Vashj Ascended (25 Player)"}, -- [20]
			{ 21,942100, "", "=q7=Pet Cage - World First Lady Vashj Ascended (25 Player)"}, -- [21]
			{ 22,842006, "", "=q7=Pet Cage - World First Lady Vashj Ascended (10 Player)"}, -- [22]
			{ 23,1002087, "", "=q7=Portable Transmogrifier"}, -- [23]
			{ 24,49362, "", "=q7=Onyxian Whelpling"}, -- [24]
			{ 25,100003, "", "=q7=Scarab Shell"}, -- [25]
			{ 26,499192, "", "=q7=Lump of Coal"}, -- [26]
			{ 27,499202, "", "=q7=Aeon"}, -- [27]
			{ 28,39656, "", "=q7=Tyrael's Hilt"}, -- [28]
			{ 29,499305, "", "=q7=Syd"}, -- [29]
			{ 30,499306, "", "=q7=Soul of the Aspects"}, -- [30]
		};

		AtlasLoot_Data["Pets2"] = {
			{ 1,99985, "", "=q7=Chaotic Saber Cub"}, -- [31]
			{ 2,100006, "", "=q7=Rotting Carcass"}, -- [32]
			{ 3,100007, "", "=q7=Idol of the Watcher"}, -- [33]
			{ 4,100008, "", "=q7=Giant Qiraji Shell"}, -- [34]
			{ 5,100018, "", "=q7=Decaying Flesh"}, -- [35]
			{ 6,100019, "", "=q7=Rattling Bones"}, -- [36]
			{ 7,100020, "", "=q7=Burning Skull"}, -- [37]
			{ 8,100566, "", "=q7=Felfire Impling"}, -- [38]
			{ 9,100567, "", "=q7=Lil' Evil Eye"}, -- [39]
			{ 10,499388, "", "=q7=Sunblade Micro-Defender"}, -- [40]
			{ 11,102100, "", "=q7=Kromlin the Kobold"}, -- [41]
			{ 12,499390, "", "=q7=Onyx Serpent Hatchling"}, -- [42]
			{ 13,800555, "", "=q7=Vilemus' Fel Crystal"}, -- [43]
			{ 14,39286, "", "=q6=Frosty's Collar"}, -- [44]
			{ 15,499420, "", "=q7=Pandaren Fire Spirit"}, -- [45]
			{ 16,499421, "", "=q7=K'ute"}, -- [46]
			{ 17,499422, "", "=q7=Chi-Chi, Hatchling of Chi-Ji"}, -- [47]
			{ 18,499423, "", "=q7=Ra'Kim"}, -- [48]
			{ 19,68841, "", "=q7=Nightsaber Cub"}, -- [49]
			{ 20,842001, "", "=q7=Pet Cage - World First Gruul"}, -- [50]
			{ 21,842009, "", "=q7=Pet Cage - World First Illidan Stormrage"}, -- [51]
			{ 22,842005, "", "=q7=Pet Cage - World First Zul'Jin"}, -- [52]
			{ 23,1008017, "", "=q7=Legion's Lexicon"}, -- [53]
			{ 24,842004, "", "=q7=Pet Cage - World First Magtheridon 10 HC"}, -- [54]
			{ 25,49287, "", "=q7=Tuskarr Kite"}, -- [55]
			{ 26,842007, "", "=q7=Pet Cage - World First Kael'thas Sunstrider"}, -- [56]
		};

		AtlasLoot_Data["Hearthstones"] = {
			{ 1,102185, "", "=q7=Stone of Retreat: Honor Hold"}, -- [1]
			{ 2,102197, "", "=q7=Stone of Retreat: Thrallmar"}, -- [2]
			{ 3,777000, "", "=q7=Stone of Retreat: Orgrimmar"}, -- [6]
			{ 4,777001, "", "=q7=Stone of Retreat: Undercity"}, -- [7]
			{ 5,777002, "", "=q7=Stone of Retreat: Thunder Bluff"}, -- [8]
			{ 6,777003, "", "=q7=Stone of Retreat: Stormwind"}, -- [9]
			{ 7,777004, "", "=q7=Stone of Retreat: Darnassus"}, -- [10]
			{ 8,777005, "", "=q7=Stone of Retreat: Ironforge"}, -- [11]
			{ 9,777006, "", "=q7=Stone of Retreat: Light's Hope"}, -- [12]
			{ 10,777007, "", "=q7=Stone of Retreat: Everlook"}, -- [13]
			{ 11,777008, "", "=q7=Stone of Retreat: Booty Bay"}, -- [14]
			{ 12,777009, "", "=q7=Stone of Retreat: Gadgetzan"}, -- [15]
			{ 13,777010, "", "=q7=Stone of Retreat: Ratchet"}, -- [16]
			{ 14,777011, "", "=q7=Stone of Retreat: Thorium Point"}, -- [17]
			{ 15,777012, "", "=q7=Stone of Retreat: Mudsprocket"}, -- [18]
			{ 16,777013, "", "=q7=Stone of Retreat: Cenarion Hold"}, -- [19]
			{ 17,777014, "", "=q7=Stone of Retreat: Silvermoon City"}, -- [20]
			{ 18,777015, "", "=q7=Stone of Retreat: Exodar"}, -- [21]
			{ 19,777016, "", "=q7=Stone of Retreat: Shattrath"}, -- [22]
			{ 20,777017, "", "=q7=Stone of Retreat: Area 52"}, -- [23]
			{ 21,777020, "", "=q7=Stone of Retreat: Gurubashi Arena"}, -- [24]
			{ 23,106948, "", "=q7=Arcane Rune of Retreat"}, -- [25]
			{ 24,106949, "", "=q7=Flaming Rune of Retreat"}, -- [26]
			{ 25,106950, "", "=q7=Freezing Rune of Retreat"}, -- [27]
			{ 26,106951, "", "=q7=Dark Rune of Retreat"}, -- [28]
			{ 27,106952, "", "=q7=Holy Rune of Retreat"}, -- [29]
			{ 28,82314, "", "=q7=Frostforged Rune of Retreat"}, -- [5]
		};

		AtlasLoot_Data["Mounts"] = {
			{1,499578, "", "=q7=Grey Riding Yak"}, -- [1]
			{2,499579, "", "=q7=Predatory Bloodgazer"}, -- [2]
			{3,499580, "", "=q7=Viridian Sharptalon"}, -- [3]
			{4,499581, "", "=q7=Brilliant Direbeak"}, -- [4]
			{5,499582, "", "=q7=Snowfeather Hunter"}, -- [5]
			{6,33809, "", "=q6=Amani War Bear"}, -- [6]
			{7,32458, "", "=q6=Ashes of Al'ar"}, -- [7]
			{8,499636, "", "=q7=Warforged Nightmare"}, -- [8]
			{9,37012, "", "=q7=The Horseman's Rein's"}, -- [9]
			{10,499638, "", "=q7=High Priest's Lightsworn Seeker"}, -- [10]
			{11,499639, "", "=q7=Kor'kron Juggernaut"}, -- [11]
			{12,170000, "", "=q7=Ironclad War Wolf"}, -- [12]
			{13,170002, "", "=q7=Frostcharger"}, -- [13]
			{14,170004, "", "=q7=Vicious War Lion"}, -- [14]
			{15,170008, "", "=q7=Undead Ravasaur"}, -- [15]
			{16,499659, "", "=q7=Coaldust Alpaca"}, -- [16]
			{17,499660, "", "=q7=Mollie"}, -- [17]
			{18,499661, "", "=q7=Snowdust Alpaca"}, -- [18]
			{19,499662, "", "=q7=Alterac Alpaca"}, -- [19]
			{20,499663, "", "=q7=Springfur Alpaca"}, -- [20]
			{21,499664, "", "=q7=Squeakers, the Trickster"}, -- [21]
			{22,46102, "", "=q6=Whistle of the Venomhide Ravasaur"}, -- [22]
			{23,499674, "", "=q7=Explorer's Dunetrekker"}, -- [23]
			{24,499679, "", "=q7=Minion of Grumpus"}, -- [24]
			{25,30480, "", "=q7=Fiery Warhorse's Reins"}, -- [25]
			{26,54811, "", "=q7=Celestial Steed"}, -- [26]
			{27,1175625, "", "=q6=Sigil of the Crimson Skyblazer"}, -- [27]
			{28,1175634, "", "=q7=Summon Dreadsteed"}, -- [28]
			{29,1175635, "", "=q6=Summon Charger"}, -- [29]
			{30,499869, "", "=q7=Vicious White Bonesteed"}, -- [30]
		};
		
		AtlasLoot_Data["Mounts2"] = {
			{1,1002012, "", "=q7=Bound Red Qiraji Resonating Crystal"}, -- [1]
			{2,33225, "", "=q7=Swift Spectral Tiger"}, -- [2]
			{3,499872, "", "=q7=Honeyback Harvester"}, -- [3]
			{4,23720, "", "=q7=Riding Turtle"}, -- [4]
			{5,79239, "", "=q7=Living Infernal Core"}, -- [5]
			{6,499583, "", "=q7=Lucid Nightmare"}, -- [6]
			{7,50250, "", "=q6= Big Love Rocket"}, -- [7]
			{8,1002014, "", "=q7=Bound Yellow Qiraji Resonating Crystal"}, -- [8]
			{9,79243, "", "=q7=Dim Coldflame Core"}, -- [9]
			{10,79245, "", "=q7=Biting  Infernal Core"}, -- [10]
			{11,79248, "", "=q7=Fiendish Infernal Core"}, -- [11]
			{12,13335, "", "=q7=Deathcharger's Reins"}, -- [12]
			{13,99477, "", "=q7=Core Hound"}, -- [13]
			{14,99479, "", "=q7=Reins of the Highmountain Elderhorn"}, -- [14]
			{15,99481, "", "=q7=Grinning Reaver"}, -- [15]
			{16,37719, "", "=q7=Swift Zhevra"}, -- [16]
			{17,499181, "", "=q7=Arboreal Gulper"}, -- [17]
			{18,499182, "", "=q7=Duskflutter Ardenmoth"}, -- [18]
			{19,499490, "", "=q7=Coven Talbuk (Blue)"}, -- [19]
			{20,499489, "", "=q7=Coven Talbuk (Dark)"}, -- [20]
			{21,499488, "", "=q7=Coven Talbuk (Teal)"}, -- [21]
			{22,499945, "", "=q7=Bloodgorged Crawg"}, -- [22]
			{23,499203, "", "=q7=Highlord's Vigilant Charger"}, -- [23]
			{24,98472, "", "=q7=Darkmoon Bear"}, -- [24]
			{25,499483, "", "=q7=Witchwood Stag (White)"}, -- [25]
			{26,499933, "", "=q7=Gold Vulpine Familiar"}, -- [26]
			{27,98473, "", "=q7=Ghastly Charger"}, -- [27]
			{28,98476, "", "=q7=Misty Fox"}, -- [28]
			{29,499476, "", "=q7=Rabid Worg (Stone)"}, -- [29]
			{30,499475, "", "=q7=Rabid Worg (White)"}, -- [30]
		};

		AtlasLoot_Data["Mounts3"] = {
			{1,499870, "", "=q7=Honeyback Hivemother"}, -- [1]
			{2,499871, "", "=q7=Honeyback Drone"}, -- [2]
			{3,499873, "", "=q7=Rubyshell Krolusk"}, -- [3]
			{4,499874, "", "=q7=Azureshell Krolusk"}, -- [4]
			{5,499875, "", "=q7=Risen Mare"}, -- [5]
			{6,499876, "", "=q7=Stonehide Elderhorn"}, -- [6]
			{7,499877, "", "=q7=Vicious Black Bonesteed"}, -- [7]
			{8,499878, "", "=q7=Vicious Black Warsaber"}, -- [8]
			{9,499879, "", "=q7=G.M.O.D"}, -- [9]
			{10,499880, "", "=q7=Yellow Marsh Hopper"}, -- [10]
			{11,499881, "", "=q7=Green Marsh Hopper"}, -- [11]
			{12,499882, "", "=q7=Blue Marsh Hopper"}, -- [12]
			{13,499883, "", "=q7=Captured Umber Nightsaber"}, -- [13]
			{14,499884, "", "=q7=Sandy Nightsaber"}, -- [14]
			{15,499885, "", "=q7=Frightened Kodo"}, -- [15]
			{16,499886, "", "=q7=Kaldorei Nightsaber"}, -- [16]
			{17,499887, "", "=q7=Blackpaw"}, -- [17]
			{18,499891, "", "=q7=Breezestrider Stallion"}, -- [18]
			{19,33977, "", "=q7=Swift Brewfest Ram"}, -- [19]
			{20,35513, "", "=q6=Swift White Hawkstrider"}, -- [20]
			{21,19872, "", "=q7=Swift Razzashi Raptor"}, -- [21]
			{22,499940, "", "=q7=Felstalker"}, -- [22]
			{23,499943, "", "=q7=Felsaber"}, -- [23]
			{24,69228, "", "=q7=Savage Raptor"}, -- [24]
			{25,101227, "", "=q6=Tyrael's Charger"}, -- [25]
			{26,499995, "", "=q7=Felsworn Direwolf"}, -- [26]
			{27,499998, "", "=q7=Reins of the Scourgelord's Deathcharger"}, -- [27]
			{28,37828, "", "=q7=Great Brewfest Kodo"}, -- [28]
			{29,46778, "", "=q7=Magical Rooster"}, -- [29]
			{30,1002011, "", "=q7=Bound Blue Qiraji Resonating Crystal"}, -- [30]
		};

		AtlasLoot_Data["Mounts4"] = {
			{1,98477, "", "=q7=Royalfang Widow"}, -- [1]
			{2,49636, "", "=q7=Reins of the Onyxian Drake"}, -- [2]
			{3,98479, "", "=q7=Ratstallion"}, -- [3]
			{4,98480, "", "=q7=Tear of Elune"}, -- [4]
			{5,110001, "", "=q7=Hero's Training Dummy"}, -- [5]
			{6,99483, "", "=q7=Westfall Donkey"}, -- [6]
			{7,98490, "", "=q7=Spectral Steed"}, -- [7]
			{8,21176, "", "=q6=Black Qiraji Resonating Crystal"}, -- [8]
			{9,499304, "", "=q7=Wriggling Parasite"}, -- [9]
			{10,499307, "", "=q7=Glorious Felcrusher"}, -- [10]
			{11,499308, "", "=q7=Spawn of Galakras"}, -- [11]
			{12,499309, "", "=q7=Valarjar Stormwing"}, -- [12]
			{13,97321, "", "=q6=Reins of the Prestigious Bloodforged Courser"}, -- [13]
			{14,13086, "", "=q6=Reins of the Winterspring Frostsaber"}, -- [14]
			{15,99478, "", "=q7=Shadow Fel hound"}, -- [15]
			{16,99480, "", "=q7=Snowy Hyena"}, -- [16]
			{17,99482, "", "=q7=Mystic Runesaber"}, -- [17]
			{18,99484, "", "=q7=Reins of the Valorous Charger"}, -- [18]
			{19,99485, "", "=q7=Reins of the Accursed Wrathsteed"}, -- [19]
			{20,99982, "", "=q7=Reins of The Chaotic Runesaber"}, -- [20]
			{21,499438, "", "=q7=Smoldering Ember Wyrm"}, -- [21]
			{22,100140, "", "=q7=Soulhound"}, -- [22]
			{23,499363, "", "=q7=Ny'alotha Allseer"}, -- [23]
			{24,499364, "", "=q7=Shadowblade's Murderous Omen"}, -- [24]
			{25,499367, "", "=q7=Uncorrupted Voidwing"}, -- [25]
			{26,499378, "", "=q7=Pandaren Kite"}, -- [26]
			{27,499386, "", "=q7=Felfire Hawk"}, -- [27]
			{28,499389, "", "=q7=Vilebrood Vanquisher"}, -- [28]
			{29,499391, "", "=q7=Heavenly Onyx Cloud Serpent"}, -- [29]
			{30,170006, "", "=q7=Prestigious War Wolf"}, -- [30]
		};

		AtlasLoot_Data["Mounts5"] = {
			{1,19902, "", "=q7=Swift Zulian Tiger"}, -- [1]
			{2,102107, "", "=q7=Reins of the Magmatic Steed"}, -- [2]
			{3,499424, "", "=q7=Netherlord's Chaotic Wrathsteed"}, -- [3]
			{4,499425, "", "=q7=Clutch of Ji-Kun"}, -- [4]
			{5,499426, "", "=q7=Enchanted Fey Dragon"}, -- [5]
			{6,121815, "", "=q7=Voidtalon of the Dark Star"}, -- [6]
			{7,170005, "", "=q7=Prestigious War Horse"}, -- [7]
			{8,170007, "", "=q7=Gilded Ravasaur"}, -- [8]
			{9,32768, "", "=q6=Reins of the Raven Lord"}, -- [9]
			{10,499942, "", "=q7=Mechagon Peacekeeper"}, -- [10]
			{11,499477, "", "=q7=Rabid Worg (Red)"}, -- [11]
			{12,499478, "", "=q7=Rabid Worg (Purple)"}, -- [12]
			{13,499479, "", "=q7=Rabid Worg (Gray)"}, -- [13]
			{14,499480, "", "=q7=Rabid Worg (Brown)"}, -- [14]
			{15,499481, "", "=q7=Vulpin Hyena"}, -- [15]
			{16,499482, "", "=q7=Rabid Worg (Black)"}, -- [16]
			{17,499484, "", "=q7=Witchwood Stag (Teal)"}, -- [17]
			{18,499485, "", "=q7=Witchwood Stag (Dark)"}, -- [18]
			{19,499486, "", "=q7=Witchwood Stag (Blue)"}, -- [19]
			{20,499487, "", "=q7=Coven Talbuk (White)"}, -- [20]
			{21,246192, "", "=q6=Darkmoon Dirigible"}, -- [21]
			{22,49282, "", "=q7=Big Battle Bear"}, -- [22]
			{23,597601, "", "=q7=Seabiscuit's Reins"}, -- [23]
			{24,71718, "", "=q7=Swift Shorestrider"}, -- [24]
			{25,170009, "", "=q7=Gurubashi Blood Raptor"}, -- [25]
			{26,170001, "", "=q7=Flametouched Raven"}, -- [26]
			{27,499539, "", "=q7=Dawnforge Ram"}, -- [27]
			{28,1002013, "", "=q7=Bound Green Qiraji Resonating Crystal"}, -- [28]
			{29,499944, "", "=q7=Royal Snapdragon"}, -- [29]
		};

	------------------------
	---   Event Items	 ---
	------------------------

		-----------------
		--- Felforged ---
		-----------------

	AtlasLoot_Data["SoulRewards"] = {
		{ 1, 13, "", "=q5=Rites of the Felborne: Felborne", "5000#felsoul#"};
		{ 2, 246191, "", "=q5=Rites of the Felborne: Fel Abiding Energy", "5000#felsoul#"};
		{ 3, 246193, "", "=q5=Rites of the Felborne: Fel Strike", "5000#felsoul#"};
		{ 5, 79240, "", "=q5=Wrathblade", "5000#felsoul#"};
		{ 6, 79241, "", "=q5=Staff of Guldan", "5000#felsoul#"};
		{ 7, 79242, "", "=q5=Unholy Ebon Halberd", "5000#felsoul#"};
		{ 8, 124382, "", "=q5=Edict of Argus", "5000#felsoul#"};
		{ 9, 124385, "", "=q5=Blazing Demonhilt Sword", "5000#felsoul#"};
		{ 10, 499863, "", "=q5=Felreaver's Edge", "5000#felsoul#"};
		{ 12, 79256, "", "=q5=Beastmaster's Whistle: Felhound", "5000#felsoul#"};
		{ 13, 79258, "", "=q5=Beastmaster's Whistle: White Felbat", "5000#felsoul#"};
		{ 14, 79260, "", "=q5=Beastmaster's Whistle: Armored Soulhound", "5000#felsoul#"};
		{ 15, 79262, "", "=q5=Beastmaster's Whistle: Felflame Talbuk", "5000#felsoul#"};
		{ 16, 405, "", "=q5=Demon Scroll: Red Imp", "2500#felsoul#"};
		{ 18, 499940, "", "=q5=Reins of the Illidari Felstalker", "5000#felsoul#"};
		{ 20, 79171, "", "=q5=Demon Hunter Blindfold", "5000#felsoul#"};
		{ 22, 82304, "", "=q5=Zealous Felslinger's Girdle", "2280#felsoul#"};
		{ 23, 82305, "", "=q5=Zealous Felslinger's Boots", "2550#felsoul#"};
		{ 24, 82306, "", "=q5=Zealous Felslinger's Robe", "4450#felsoul#"};
		{ 25, 82307, "", "=q5=Zealous Felslinger's Handwraps", "4450#felsoul#"};
		{ 26, 82308, "", "=q5=Zealous Felslinger's Visage", "2550#felsoul#"};
		{ 27, 82309, "", "=q5=Zealous Felslinger's Leggings", "4450#felsoul#"};
		{ 28, 82310, "", "=q5=Zealous Felslinger's Epaulets", "2550#felsoul#"};
		{ 29, 82312, "", "=q5=Zealous Felslinger's Cuffs", "2280#felsoul#"};
	};

	AtlasLoot_Data["FelProgression"] = {
		{ 1, 3001008, "", "=q5=Felforged Tome: Apprentice Riding", "50#felsoul#"};
		{ 2, 3001007, "", "=q5=Felforged Tome: Journeyman Riding", "1000#felsoul#"};
		{ 3, 1030180, "", "=q5=Felforged Tome: Track Humanoid", "450#felsoul#"};
		{ 5, 1008017, "", "=q5=Legion's Lexicon", "2500#felsoul#"};
		{ 7, 409, "", "=q5=Insignia of the Burning Legion", "200#felsoul#"};
		{ 8, 101428, "", "=q5=Greater Insignia of the Burning Legion", "2000#felsoul#"};
		{ 16, 101255, "", "=q5=Felforged Reins of the Illidari Felstalker", "250#felsoul#"};
		{ 18, 1008018, "", "=q1=Small Brown Pouch", "1#felsoul#"};
		{ 19, 1008019, "", "=q1=Brown Leather Satchel", "5#felsoul#"};
		{ 20, 1008023, "", "=q1=Large Brown Sack", "25#felsoul#"};
		{ 21, 1008020, "", "=q1=Huge Brown Sack", "50#felsoul#"};
		{ 22, 1008025, "", "=q1=Runecloth Bag", "75#felsoul#"};
		{ 23, 1008022, "", "=q2=Traveler's Backpack", "100#felsoul#"};
	};

	AtlasLoot_Data["FelHeirloom"] = {
		{ 1, 492672, "", "=q5=Magtheridon's Felforged Crown", "2550#felsoul#"};
		{ 2, 492186, "", "=q5=Magtheridon's Felforged Spaulders", "2550#felsoul#"};
		{ 3, 492194, "", "=q5=Magtheridon's Felforged Carapace", "4450#felsoul#"};
		{ 4, 492191, "", "=q5=Magtheridon's Felforged Waistguard", "2280#felsoul#"};
		{ 5, 492195, "", "=q5=Magtheridon's Felforged Leggaurds", "4450#felsoul#"};
		{ 6, 492192, "", "=q5=Magtheridon's Felforged Sabatons", "2550#felsoul#"};
		{ 7, 492189, "", "=q5=Magtheridon's Felforged Bracers", "2280#felsoul#"};
		{ 8, 492190, "", "=q5=Magtheridon's Felforged Gauntlets", "4550#felsoul#"};
		{ 9, 492193, "", "=q5=Magtheridon's Felforged Cloak", "2280#felsoul#"};
		{ 16, 494213, "", "=q5=Archimonde's Felforged Crown", "2550#felsoul#"};
		{ 17, 492286, "", "=q5=Archimonde's Felforged Pauldron", "2550#felsoul#"};
		{ 18, 492294, "", "=q5=Archimonde's Felforged Carapace", "4450#felsoul#"};
		{ 19, 492291, "", "=q5=Archimonde's Felforged Waistband", "2280#felsoul#"};
		{ 20, 492295, "", "=q5=Archimonde's Felforged Leggings", "4450#felsoul#"};
		{ 21, 492292, "", "=q5=Archimonde's Felforged Boots", "25500#felsoul#"};
		{ 22, 492289, "", "=q5=Archimonde's Felforged Bracer", "2280#felsoul#"};
		{ 23, 492290, "", "=q5=Archimonde's Felforged Gauntlet", "4550#felsoul#"};
		{ 24, 492293, "", "=q5=Archimonde's Felforged Drape", "2280#felsoul#"};
	};

	AtlasLoot_Data["LegionCrest"] = {

	};
	