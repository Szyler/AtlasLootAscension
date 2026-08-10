
local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local CUSTOM = "Custom"
local SEASONAL = "Seasonal"
local TRAINER = "Trainer/Book of Artisans"

AtlasLoot:AddItemData("crafting", {
    AquireType = { 
        [2329] = { CUSTOM, 8}, -- Elixir of Lion's Strength -- 2329
        [2330] = { CUSTOM, 8}, -- Minor Healing Potion -- 2330
        [7183] = { CUSTOM, 8}, -- Elixir of Minor Defense -- 7183
        [11456] = { CUSTOM, 9}, -- Goblin Rocket Fuel -- 11456
        [21923] = { SEASONAL, 1}, -- Elixir of Frost Power -- 21923
        [22732] = { CUSTOM, 26}, -- Major Rejuvenation Potion -- 22732
        [24266] = { CUSTOM, 11}, -- Gurubashi Mojo Madness -- 24266
        [28580] = { CUSTOM, 3}, -- Transmute: Primal Shadow to Water -- 28580
        [28581] = { CUSTOM, 3}, -- Transmute: Primal Water to Shadow -- 28581
        [28582] = { CUSTOM, 3}, -- Transmute: Primal Mana to Fire -- 28582
        [28583] = { CUSTOM, 3}, -- Transmute: Primal Fire to Mana -- 28583
        [28584] = { CUSTOM, 3}, -- Transmute: Primal Life to Earth -- 28584
        [28585] = { CUSTOM, 3}, -- Transmute: Primal Earth to Life -- 28585
        [28586] = { CUSTOM, 2}, -- Super Rejuvenation Potion -- 28586
        [28587] = { CUSTOM, 1}, -- Flask of Fortification -- 28587
        [28588] = { CUSTOM, 1}, -- Flask of Mighty Restoration -- 28588
        [28589] = { CUSTOM, 1}, -- Flask of Relentless Assault -- 28589
        [28590] = { CUSTOM, 1}, -- Flask of Blinding Light -- 28590
        [28591] = { CUSTOM, 1}, -- Flask of Pure Death -- 28591
        [41458] = { CUSTOM, 4}, -- Cauldron of Major Arcane Protection -- 41458
        [41500] = { CUSTOM, 4}, -- Cauldron of Major Fire Protection -- 41500
        [41501] = { CUSTOM, 4}, -- Cauldron of Major Frost Protection -- 41501
        [41502] = { CUSTOM, 4}, -- Cauldron of Major Nature Protection -- 41502
        [41503] = { CUSTOM, 4}, -- Cauldron of Major Shadow Protection -- 41503
        [53771] = { CUSTOM, 19}, -- Transmute: Eternal Life to Shadow -- 53771
        [53773] = { CUSTOM, 19}, -- Transmute: Eternal Life to Fire -- 53773
        [53774] = { CUSTOM, 19}, -- Transmute: Eternal Fire to Water -- 53774
        [53775] = { CUSTOM, 19}, -- Transmute: Eternal Fire to Life -- 53775
        [53776] = { CUSTOM, 19}, -- Transmute: Eternal Air to Water -- 53776
        [53777] = { CUSTOM, 19}, -- Transmute: Eternal Air to Earth -- 53777
        [53779] = { CUSTOM, 19}, -- Transmute: Eternal Shadow to Earth -- 53779
        [53780] = { CUSTOM, 19}, -- Transmute: Eternal Shadow to Life -- 53780
        [53781] = { CUSTOM, 19}, -- Transmute: Eternal Earth to Air -- 53781
        [53782] = { CUSTOM, 19}, -- Transmute: Eternal Earth to Shadow -- 53782
        [53783] = { CUSTOM, 19}, -- Transmute: Eternal Water to Air -- 53783
        [53784] = { CUSTOM, 19}, -- Transmute: Eternal Water to Fire -- 53784
        [53895] = { CUSTOM, 18}, -- Crazy Alchemist's Potion -- 53895
        [53904] = { CUSTOM, 18}, -- Powerful Rejuvenation Potion -- 53904
        [54220] = { CUSTOM, 18}, -- Elixir of Protection -- 54220
        [54221] = { CUSTOM, 18}, -- Potion of Speed -- 54221
        [54222] = { CUSTOM, 18}, -- Potion of Wild Magic -- 54222
        [56519] = { CUSTOM, 18}, -- Elixir of Mighty Mageblood -- 56519
        [60354] = { CUSTOM, 18}, -- Elixir of Accuracy -- 60354
        [60355] = { CUSTOM, 18}, -- Elixir of Deadly Strikes -- 60355
        [60356] = { CUSTOM, 18}, -- Elixir of Mighty Defense -- 60356
        [60357] = { CUSTOM, 18}, -- Elixir of Expertise -- 60357
        [60365] = { CUSTOM, 18}, -- Elixir of Armor Piercing -- 60365
        [60366] = { CUSTOM, 18}, -- Elixir of Lightning Speed -- 60366
        [62410] = { CUSTOM, 18}, -- Elixir of Water Walking -- 62410
        [2660] = { CUSTOM, 8}, -- Rough Sharpening Stone -- 2660
        [2663] = { CUSTOM, 8}, -- Copper Bracers -- 2663
        [3115] = { CUSTOM, 8}, -- Rough Weightstone -- 3115
        [11454] = { CUSTOM, 9}, -- Inlaid Mithril Cylinder -- 11454
        [12260] = { CUSTOM, 8}, -- Rough Copper Vest -- 12260
        [15293] = { CUSTOM, 25}, -- Dark Iron Mail -- 15293
        [15295] = { CUSTOM, 25}, -- Dark Iron Shoulders -- 15295
        [16983] = { CUSTOM, 31}, -- Serenity -- 16983
        [16985] = { CUSTOM, 31}, -- Corruption -- 16985
        [21913] = { SEASONAL, 1}, -- Edge of Winter -- 21913
        [22757] = { CUSTOM, 26}, -- Elemental Sharpening Stone -- 22757
        [28242] = { CUSTOM, 41},
        [28243] = { CUSTOM, 41},
        [28244] = { CUSTOM, 41},
        [36389] = { CUSTOM, 37, CUSTOM, 43}, -- Belt of the Guardian -- 36389
        [36390] = { CUSTOM, 37, CUSTOM, 43}, -- Red Belt of Battle -- 36390
        [36391] = { CUSTOM, 37, CUSTOM, 43}, -- Boots of the Protector -- 36391
        [36392] = { CUSTOM, 37, CUSTOM, 43}, -- Red Havoc Boots -- 36392
        [41132] = { CUSTOM, 27, CUSTOM, 34}, -- Swiftsteel Bracers -- 41132
        [41133] = { CUSTOM, 34}, -- Swiftsteel Shoulders -- 41133
        [41134] = { CUSTOM, 34}, -- Dawnsteel Bracers -- 41134
        [41135] = { CUSTOM, 27, CUSTOM, 34}, -- Dawnsteel Shoulders -- 41135
        [46140] = { CUSTOM, 24}, -- Sunblessed Gauntlets -- 46140
        [46141] = { CUSTOM, 24}, -- Hard Khorium Battlefists -- 46141
        [46142] = { CUSTOM, 24}, -- Sunblessed Breastplate -- 46142
        [46144] = { CUSTOM, 24}, -- Hard Khorium Battleplate -- 46144
        [63187] = { CUSTOM, 39}, -- Belt of the Titans -- 63187
        [63188] = { CUSTOM, 39}, -- Battlelord's Plate Boots -- 63188
        [63189] = { CUSTOM, 39}, -- Plate Girdle of Righteousness -- 63189
        [63190] = { CUSTOM, 39}, -- Treads of Destiny -- 63190
        [63191] = { CUSTOM, 39}, -- Indestructible Plate Girdle -- 63191
        [63192] = { CUSTOM, 39}, -- Spiked Deathdealers -- 63192
        [67091] = { CUSTOM, 42}, -- Breastplate of the White Knight (Ally) -- 67091
        [67092] = { CUSTOM, 42}, -- Saronite Swordbreakers (Ally) -- 67092
        [67093] = { CUSTOM, 42}, -- Titanium Razorplate (Ally) -- 67093
        [67094] = { CUSTOM, 42}, -- Titanium Spikeguards (Ally) -- 67094
        [67095] = { CUSTOM, 42}, -- Sunforged Breastplate (Ally) -- 67095
        [67096] = { CUSTOM, 42}, -- Sunforged Bracers (Ally) -- 67096
        [67130] = { CUSTOM, 42}, -- Breastplate of the White Knight -- 67130
        [67131] = { CUSTOM, 42}, -- Saronite Swordbreakers -- 67131
        [67132] = { CUSTOM, 42}, -- Titanium Razorplate -- 67132
        [67133] = { CUSTOM, 42}, -- Titanium Spikeguards -- 67133
        [67134] = { CUSTOM, 42}, -- Sunforged Breastplate -- 67134
        [67135] = { CUSTOM, 42}, -- Sunforged Bracers -- 67135
        [2538] = { CUSTOM, 8}, -- Charred Wolf Meat -- 2538
        [2540] = { CUSTOM, 8}, -- Roasted Boar Meat -- 2540
        [8604] = { CUSTOM, 8}, -- Herb Baked Egg -- 8604
        [13028] = { CUSTOM, 13}, -- Goldthorn Tea -- 13028
        [21143] = { SEASONAL, 1},
        [21144] = { SEASONAL, 1},
        [43707] = { CUSTOM, 6},
        [43758] = { CUSTOM, 5, CUSTOM, 6, CUSTOM, 38},
        [43761] = { CUSTOM, 6},
        [43765] = { CUSTOM, 5},
        [43772] = { CUSTOM, 5, CUSTOM, 6},
        [43779] = { CUSTOM, 5, CUSTOM, 6, CUSTOM, 38},
        [45022] = { SEASONAL, 1},
        [45695] = { CUSTOM, 7, CUSTOM, 38},
        [53056] = { CUSTOM, 36},
        [65454] = { SEASONAL, 6}, -- Bread of the Dead -- 65454
        [62044] = { SEASONAL, 5}, -- Pumpkin Pie -- 62044
        [62045] = { SEASONAL, 5}, -- Slow-Roasted Turkey -- 62045
        [62049] = { SEASONAL, 5}, -- Cranberry Chutney -- 62049
        [62050] = { SEASONAL, 5}, -- Spice Bread Stuffing -- 62050
        [62051] = { SEASONAL, 5}, -- Candied Sweet Potato -- 62051
        [66034] = { SEASONAL, 5}, -- Candied Sweet Potato -- 66034
        [66035] = { SEASONAL, 5}, -- Cranberry Chutney -- 66035
        [66036] = { SEASONAL, 5}, -- Pumpkin Pie -- 66036
        [66037] = { SEASONAL, 5}, -- Slow-Roasted Turkey -- 66037
        [66038] = { SEASONAL, 5}, -- Spice Bread Stuffing -- 66038
        [7418] = { CUSTOM, 8}, -- Enchant Bracer - Minor Health -- 7418
        [7421] = { CUSTOM, 8}, -- Runed Copper Rod -- 7421
        [7428] = { CUSTOM, 8}, -- Enchant Bracer - Minor Deflection -- 7428
        [21931] = { SEASONAL, 1}, -- Enchant Weapon - Winter's Might -- 21931
        [22749] = { CUSTOM, 26}, -- Enchant Weapon - Spellpower -- 22749
        [22750] = { CUSTOM, 26}, -- Enchant Weapon - Healing Power -- 22750
        [25073] = { CUSTOM, 22}, -- Enchant Gloves - Shadow Power -- 25073
        [25074] = { CUSTOM, 22}, -- Enchant Gloves - Frost Power -- 25074
        [25078] = { CUSTOM, 22}, -- Enchant Gloves - Fire Power -- 25078
        [25079] = { CUSTOM, 22}, -- Enchant Gloves - Healing Power -- 25079
        [25080] = { CUSTOM, 22},
        [25083] = { CUSTOM, 22},
        [25086] = { CUSTOM, 22},
        [42974] = { CUSTOM, 29}, -- Enchant Weapon - Executioner -- 42974
        [46578] = { SEASONAL, 4}, -- Enchant Weapon - Deathfrost -- 46578
        [64441] = { CUSTOM, 39}, -- Enchant Weapon - Blade Ward -- 64441
        [64579] = { CUSTOM, 39}, -- Enchant Weapon - Blood Draining -- 64579
        [3918] = { CUSTOM, 8}, -- Rough Blasting Powder -- 3918
        [3919] = { CUSTOM, 8}, -- Rough Dynamite -- 3919
        [3920] = { CUSTOM, 8}, -- Crafted Light Shot -- 3920
        [15628] = { CUSTOM, 16}, -- Pet Bombling -- 15628
        [15633] = { CUSTOM, 16}, -- Lil' Smoky -- 15633
        [21940] = { SEASONAL, 1}, -- Snowmaster 9000 -- 21940
        [22704] = { CUSTOM, 17}, -- Field Repair Bot 74A -- 22704
        [22793] = { CUSTOM, 26}, -- Biznicks 247x128 Accurascope -- 22793
        [22795] = { CUSTOM, 26}, -- Core Marksman Rifle -- 22795
        [22797] = { CUSTOM, 26}, -- Force Reactive Disk -- 22797
        [23079] = { CUSTOM, 32}, -- Major Recombobulator -- 23079
        [26416] = { SEASONAL, 2},
        [26417] = { SEASONAL, 2},
        [26418] = { SEASONAL, 2},
        [26420] = { SEASONAL, 2},
        [26421] = { SEASONAL, 2},
        [26422] = { SEASONAL, 2},
        [26423] = { SEASONAL, 2},
        [26424] = { SEASONAL, 2},
        [26425] = { SEASONAL, 2},
        [26426] = { SEASONAL, 2},
        [26427] = { SEASONAL, 2},
        [26428] = { SEASONAL, 2},
        [26442] = { SEASONAL, 2},
        [26443] = { SEASONAL, 2},
        [46106] = { CUSTOM, 24}, -- Wonderheal XT68 Shades -- 46106
        [46107] = { CUSTOM, 24}, -- Justicebringer 3000 Specs -- 46107
        [46108] = { CUSTOM, 24}, -- Powerheal 9000 Lens -- 46108
        [46109] = { CUSTOM, 24}, -- Hyper-Magnified Moon Specs -- 46109
        [46110] = { CUSTOM, 24}, -- Primal-Attuned Goggles -- 46110
        [46111] = { CUSTOM, 24}, -- Annihilator Holo-Gogs -- 46111
        [46112] = { CUSTOM, 24}, -- Lightning Etched Specs -- 46112
        [46113] = { CUSTOM, 24}, -- Surestrike Goggles v3.0 -- 46113
        [46114] = { CUSTOM, 24}, -- Mayhem Projection Goggles -- 46114
        [46115] = { CUSTOM, 24}, -- Hard Khorium Goggles -- 46115
        [46116] = { CUSTOM, 24}, -- Quad Deathblow X44 Goggles -- 46116
    --  [60867] = { REPUTATION, "Alliance Vanguard", "Exalted", 32564, REPUTATION, "Alliance Vanguard", "Exalted", 32773}, -- Mekgineer's Chopper -- 60867
        [3275] = { CUSTOM, 8}, -- Linen Bandage -- 3275
        [45382] = { CUSTOM, 8}, -- Scroll of Stamina -- 45382
        [48114] = { CUSTOM, 8}, -- Scroll of Intellect -- 48114
        [48116] = { CUSTOM, 8}, -- Scroll of Spirit -- 48116
        [52738] = { CUSTOM, 8}, -- Ivory Ink -- 52738
        [56944] = { CUSTOM, 15}, -- Glyph of Growl -- 56944
        [56946] = { CUSTOM, 15}, -- Glyph of Hurricane -- 56946
        [56947] = { CUSTOM, 15}, -- Glyph of Innervate -- 56947
        [56949] = { CUSTOM, 15}, -- Glyph of Lifebloom -- 56949
        [56950] = { CUSTOM, 15}, -- Glyph of Mangle -- 56950
        [56954] = { CUSTOM, 15}, -- Glyph of Regrowth -- 56954
        [56958] = { CUSTOM, 15}, -- Glyph of Starfall -- 56958
        [56960] = { CUSTOM, 15}, -- Glyph of Swiftmend -- 56960
        [56965] = { CUSTOM, 14}, -- Glyph of Typhoon -- 56965
        [56975] = { CUSTOM, 15}, -- Glyph of Fireball -- 56975
        [56977] = { CUSTOM, 15}, -- Glyph of Frostbolt -- 56977
        [56983] = { CUSTOM, 15}, -- Glyph of Invisibility -- 56983
        [56986] = { CUSTOM, 15}, -- Glyph of Molten Armor -- 56986
        [56988] = { CUSTOM, 15}, -- Glyph of Remove Curse -- 56988
        [56989] = { CUSTOM, 15}, -- Glyph of Water Elemental -- 56989
        [56990] = { CUSTOM, 14}, -- Glyph of Blast Wave -- 56990
        [56996] = { CUSTOM, 15}, -- Glyph of the Beast -- 56996
        [56998] = { CUSTOM, 15}, -- Glyph of Aspect of the Viper -- 56998
        [56999] = { CUSTOM, 15}, -- Glyph of Bestial Wrath -- 56999
        [57010] = { CUSTOM, 15}, -- Glyph of Snake Trap -- 57010
        [57011] = { CUSTOM, 15}, -- Glyph of Steady Shot -- 57011
        [57012] = { CUSTOM, 15}, -- Glyph of TRAINER,shot Aura -- 57012
        [57013] = { CUSTOM, 15}, -- Glyph of Volley -- 57013
        [57014] = { CUSTOM, 15}, -- Glyph of Wyvern Sting -- 57014
        [57019] = { CUSTOM, 15}, -- Glyph of Avenger's Shield -- 57019
        [57021] = { CUSTOM, 15}, -- Glyph of Avenging Wrath -- 57021
        [57028] = { CUSTOM, 15}, -- Glyph of Hammer of Wrath -- 57028
        [57034] = { CUSTOM, 15}, -- Glyph of Seal of Light -- 57034
        [57035] = { CUSTOM, 15}, -- Glyph of Seal of Wisdom -- 57035
        [57112] = { CUSTOM, 15}, -- Glyph of Adrenaline Rush -- 57112
        [57115] = { CUSTOM, 15}, -- Glyph of Blade Flurry -- 57115
        [57116] = { CUSTOM, 15}, -- Glyph of Crippling Poison -- 57116
        [57117] = { CUSTOM, 15}, -- Glyph of Deadly Throw -- 57117
        [57124] = { CUSTOM, 15}, -- Glyph of Ghostly Strike -- 57124
        [57126] = { CUSTOM, 15}, -- Glyph of Hemorrhage -- 57126
        [57127] = { CUSTOM, 15}, -- Glyph of Preparation -- 57127
        [57128] = { CUSTOM, 15}, -- Glyph of Rupture -- 57128
        [57130] = { CUSTOM, 15}, -- Glyph of Vigor -- 57130
        [57152] = { CUSTOM, 15}, -- Glyph of Blocking -- 57152
        [57153] = { CUSTOM, 15}, -- Glyph of Bloodthirst -- 57153
        [57155] = { CUSTOM, 15}, -- Glyph of Devastate -- 57155
        [57159] = { CUSTOM, 15}, -- Glyph of Intervene -- 57159
        [57160] = { CUSTOM, 15}, -- Glyph of Mortal Strike -- 57160
        [57164] = { CUSTOM, 15}, -- Glyph of Resonating Power -- 57164
        [57166] = { CUSTOM, 15}, -- Glyph of Last Stand -- 57166
        [57169] = { CUSTOM, 15}, -- Glyph of Taunt -- 57169
        [57170] = { CUSTOM, 15}, -- Glyph of Victory Rush -- 57170
        [57181] = { CUSTOM, 15}, -- Glyph of Circle of Healing -- 57181
        [57189] = { CUSTOM, 15}, -- Glyph of Lightwell -- 57189
        [57190] = { CUSTOM, 15}, -- Glyph of Mass Dispel -- 57190
        [57191] = { CUSTOM, 15}, -- Glyph of Mind Control -- 57191
        [57193] = { CUSTOM, 15}, -- Glyph of Shadow -- 57193
        [57195] = { CUSTOM, 15}, -- Glyph of Prayer of Healing -- 57195
        [57199] = { CUSTOM, 15}, -- Glyph of Shadow Word: Death -- 57199
        [57202] = { CUSTOM, 15}, -- Glyph of Spirit of Redemption -- 57202
        [57207] = { CUSTOM, 15}, -- Glyph of Anti-Magic Shell -- 57207
        [57208] = { CUSTOM, 15}, -- Glyph of Heart Strike -- 57208
        [57209] = { CUSTOM, 14}, -- Glyph of Blood Tap -- 57209
        [57211] = { CUSTOM, 15}, -- Glyph of Chains of Ice -- 57211
        [57212] = { CUSTOM, 15}, -- Glyph of Dark Command -- 57212
        [57214] = { CUSTOM, 15}, -- Glyph of Death and Decay -- 57214
        [57215] = { CUSTOM, 14}, -- Glyph of Death's Embrace -- 57215
        [57217] = { CUSTOM, 14}, -- Glyph of Horn of Winter -- 57217
        [57218] = { CUSTOM, 15}, -- Glyph of Icebound Fortitude -- 57218
        [57220] = { CUSTOM, 15}, -- Glyph of Obliterate -- 57220
        [57223] = { CUSTOM, 15}, -- Glyph of Rune Strike -- 57223
        [57228] = { CUSTOM, 14}, -- Glyph of Raise Dead -- 57228
        [57229] = { CUSTOM, 14}, -- Glyph of Corpse Explosion -- 57229
        [57230] = { CUSTOM, 14}, -- Glyph of Pestilence -- 57230
        [57232] = { CUSTOM, 15}, -- Glyph of Chain Heal -- 57232
        [57233] = { CUSTOM, 15}, -- Glyph of Chain Lightning -- 57233
        [57234] = { CUSTOM, 15}, -- Glyph of Lava -- 57234
        [57235] = { CUSTOM, 15}, -- Glyph of Shocking -- 57235
        [57237] = { CUSTOM, 15}, -- Glyph of Fire Elemental Totem -- 57237
        [57243] = { CUSTOM, 15}, -- Glyph of Healing Wave -- 57243
        [57247] = { CUSTOM, 15}, -- Glyph of Mana Tide Totem -- 57247
        [57250] = { CUSTOM, 15}, -- Glyph of Elemental Mastery -- 57250
        [57253] = { CUSTOM, 14}, -- Glyph of Thunderstorm -- 57253
        [57258] = { CUSTOM, 15}, -- Glyph of Conflagrate -- 57258
        [57260] = { CUSTOM, 15}, -- Glyph of Curse of Agony -- 57260
        [57261] = { CUSTOM, 15}, -- Glyph of Death Coil -- 57261
        [57263] = { CUSTOM, 15}, -- Glyph of Felguard -- 57263
        [57264] = { CUSTOM, 15}, -- Glyph of Felhunter -- 57264
        [57267] = { CUSTOM, 15}, -- Glyph of Howl of Terror -- 57267
        [57268] = { CUSTOM, 15}, -- Glyph of Immolate -- 57268
        [57273] = { CUSTOM, 15}, -- Glyph of Siphon Life -- 57273
        [57276] = { CUSTOM, 15}, -- Glyph of Unstable Affliction -- 57276
        [57719] = { CUSTOM, 15}, -- Glyph of Fire Blast -- 57719
        [58286] = { CUSTOM, 14}, -- Glyph of Aquatic Form -- 58286
        [58287] = { CUSTOM, 14}, -- Glyph of Challenging Roar -- 58287
        [58288] = { CUSTOM, 14}, -- Glyph of Unburdened Rebirth -- 58288
        [58289] = { CUSTOM, 14}, -- Glyph of Thorns -- 58289
        [58296] = { CUSTOM, 14}, -- Glyph of the Wild -- 58296
        [58297] = { CUSTOM, 14}, -- Glyph of the Pack -- 58297
        [58298] = { CUSTOM, 14}, -- Glyph of Scare Beast -- 58298
        [58299] = { CUSTOM, 14}, -- Glyph of Revive Pet -- 58299
        [58300] = { CUSTOM, 14}, -- Glyph of Possessed Strength -- 58300
        [58301] = { CUSTOM, 14}, -- Glyph of Mend Pet -- 58301
        [58302] = { CUSTOM, 14}, -- Glyph of Feign Death -- 58302
        [58303] = { CUSTOM, 14}, -- Glyph of Arcane Intellect -- 58303
        [58305] = { CUSTOM, 14}, -- Glyph of Fire Ward -- 58305
        [58306] = { CUSTOM, 14}, -- Glyph of Frost Armor -- 58306
        [58307] = { CUSTOM, 14}, -- Glyph of Frost Ward -- 58307
        [58308] = { CUSTOM, 14}, -- Glyph of Slow Fall -- 58308
        [58310] = { CUSTOM, 14}, -- Glyph of the Penguin -- 58310
        [58311] = { CUSTOM, 14}, -- Glyph of Blessing of Kings -- 58311
        [58312] = { CUSTOM, 14}, -- Glyph of Blessing of Wisdom -- 58312
        [58313] = { CUSTOM, 14}, -- Glyph of Lay on Hands -- 58313
        [58314] = { CUSTOM, 14}, -- Glyph of Blessing of Might -- 58314
        [58315] = { CUSTOM, 14}, -- Glyph of Sense Undead -- 58315
        [58316] = { CUSTOM, 14}, -- Glyph of the Wise -- 58316
        [58317] = { CUSTOM, 14}, -- Glyph of Fading -- 58317
        [58318] = { CUSTOM, 14}, -- Glyph of Fortitude -- 58318
        [58319] = { CUSTOM, 14}, -- Glyph of Levitate -- 58319
        [58320] = { CUSTOM, 14}, -- Glyph of Shackle Undead -- 58320
        [58321] = { CUSTOM, 14}, -- Glyph of Shadow Protection -- 58321
        [58322] = { CUSTOM, 14}, -- Glyph of Shadowfiend -- 58322
        [58323] = { CUSTOM, 14}, -- Glyph of Blurred Speed -- 58323
        [58324] = { CUSTOM, 14}, -- Glyph of Distract -- 58324
        [58325] = { CUSTOM, 14}, -- Glyph of Pick Lock -- 58325
        [58326] = { CUSTOM, 14}, -- Glyph of Pick Pocket -- 58326
        [58327] = { CUSTOM, 14}, -- Glyph of Safe Fall -- 58327
        [58328] = { CUSTOM, 14}, -- Glyph of Vanish -- 58328
        [58329] = { CUSTOM, 14}, -- Glyph of Astral Recall -- 58329
        [58330] = { CUSTOM, 14}, -- Glyph of Renewed Life -- 58330
        [58331] = { CUSTOM, 14}, -- Glyph of Water Breathing -- 58331
        [58332] = { CUSTOM, 14}, -- Glyph of Water Shield -- 58332
        [58333] = { CUSTOM, 14}, -- Glyph of Water Walking -- 58333
        [58336] = { CUSTOM, 14}, -- Glyph of Unending Breath -- 58336
        [58337] = { CUSTOM, 14}, -- Glyph of Drain Soul -- 58337
        [58338] = { CUSTOM, 14}, -- Glyph of Curse of Exhaustion -- 58338
        [58339] = { CUSTOM, 14}, -- Glyph of Enslave Demon -- 58339
        [58340] = { CUSTOM, 14}, -- Glyph of Kilrogg -- 58340
        [58341] = { CUSTOM, 14}, -- Glyph of Souls -- 58341
        [58342] = { CUSTOM, 14}, -- Glyph of Battle -- 58342
        [58343] = { CUSTOM, 14}, -- Glyph of Bloodrage -- 58343
        [58344] = { CUSTOM, 14}, -- Glyph of Charge -- 58344
        [58345] = { CUSTOM, 14}, -- Glyph of Mocking Blow -- 58345
        [58346] = { CUSTOM, 14}, -- Glyph of Thunder Clap -- 58346
        [58347] = { CUSTOM, 14}, -- Glyph of Enduring Victory -- 58347
        [59315] = { CUSTOM, 14}, -- Glyph of Dash -- 59315
        [59326] = { CUSTOM, 14}, -- Glyph of Ghost Wolf -- 59326
        [59559] = { CUSTOM, 15}, -- Glyph of Holy Wrath -- 59559
        [59560] = { CUSTOM, 15}, -- Glyph of Seal of Righteousness -- 59560
        [59561] = { CUSTOM, 15}, -- Glyph of Seal of Vengeance -- 59561
        [61677] = { CUSTOM, 15}, -- Glyph of Frostfire -- 61677
        [64246] = { CUSTOM, 40}, -- Glyph of Raptor Strike -- 64246
        [64247] = { CUSTOM, 40}, -- Glyph of Stoneclaw Totem -- 64247
        [64248] = { CUSTOM, 40}, -- Glyph of Life Tap -- 64248
        [64249] = { CUSTOM, 40}, -- Glyph of Scatter Shot -- 64249
        [64250] = { CUSTOM, 40}, -- Glyph of Soul Link -- 64250
        [64251] = { CUSTOM, 40}, -- Glyph of Salvation -- 64251
        [64252] = { CUSTOM, 40}, -- Glyph of Shield Wall -- 64252
        [64253] = { CUSTOM, 40}, -- Glyph of Explosive Trap -- 64253
        [64254] = { CUSTOM, 40}, -- Glyph of Holy Shock -- 64254
        [64255] = { CUSTOM, 40}, -- Glyph of Vigilance -- 64255
        [64256] = { CUSTOM, 40}, -- Glyph of Barkskin -- 64256
        [64257] = { CUSTOM, 40}, -- Glyph of Ice Barrier -- 64257
        [64268] = { CUSTOM, 40}, -- Glyph of Berserk -- 64268
        [64270] = { CUSTOM, 40}, -- Glyph of Wild Growth -- 64270
        [64271] = { CUSTOM, 40}, -- Glyph of Chimera Shot -- 64271
        [64273] = { CUSTOM, 40}, -- Glyph of Explosive Shot -- 64273
        [64274] = { CUSTOM, 40}, -- Glyph of Deep Freeze -- 64274
        [64275] = { CUSTOM, 40}, -- Glyph of Living Bomb -- 64275
        [64276] = { CUSTOM, 40}, -- Glyph of Arcane Barrage -- 64276
        [64277] = { CUSTOM, 40}, -- Glyph of Beacon of Light -- 64277
        [64278] = { CUSTOM, 40}, -- Glyph of Hammer of the Righteous -- 64278
        [64279] = { CUSTOM, 40}, -- Glyph of Divine Storm -- 64279
        [64280] = { CUSTOM, 40}, -- Glyph of Dispersion -- 64280
        [64281] = { CUSTOM, 40}, -- Glyph of Guardian Spirit -- 64281
        [64282] = { CUSTOM, 40}, -- Glyph of Penance -- 64282
        [64283] = { CUSTOM, 40}, -- Glyph of Hymn of Hope -- 64283
        [64284] = { CUSTOM, 40}, -- Glyph of Hunger for Blood -- 64284
        [64285] = { CUSTOM, 40}, -- Glyph of Killing Spree -- 64285
        [64286] = { CUSTOM, 40}, -- Glyph of Shadow Dance -- 64286
        [64287] = { CUSTOM, 40}, -- Glyph of Thunder -- 64287
        [64288] = { CUSTOM, 40}, -- Glyph of Feral Spirit -- 64288
        [64289] = { CUSTOM, 40}, -- Glyph of Riptide -- 64289
        [64291] = { CUSTOM, 40}, -- Glyph of Haunt -- 64291
        [64294] = { CUSTOM, 40}, -- Glyph of Chaos Bolt -- 64294
        [64295] = { CUSTOM, 40}, -- Glyph of Bladestorm -- 64295
        [64296] = { CUSTOM, 40}, -- Glyph of Shockwave -- 64296
        [64297] = { CUSTOM, 40}, -- Glyph of Dancing Rune Weapon -- 64297
        [64298] = { CUSTOM, 40}, -- Glyph of Hungering Cold -- 64298
        [64299] = { CUSTOM, 40}, -- Glyph of Unholy Blight -- 64299
        [64300] = { CUSTOM, 40}, -- Glyph of Howling Blast -- 64300
        [64302] = { CUSTOM, 40}, -- Glyph of Spell Reflection -- 64302
        [64303] = { CUSTOM, 40}, -- Glyph of Cloak of Shadows -- 64303
        [64304] = { CUSTOM, 40}, -- Glyph of Kill Shot -- 64304
        [64305] = { CUSTOM, 40}, -- Glyph of Divine Plea -- 64305
        [64307] = { CUSTOM, 40}, -- Glyph of Savage Roar -- 64307
        [64308] = { CUSTOM, 40}, -- Glyph of Shield of Righteousness -- 64308
        [64309] = { CUSTOM, 40}, -- Glyph of Mind Sear -- 64309
        [64310] = { CUSTOM, 40}, -- Glyph of Tricks of the Trade -- 64310
        [64311] = { CUSTOM, 40}, -- Glyph of Shadowflame -- 64311
        [64312] = { CUSTOM, 40}, -- Glyph of Enraged Regeneration -- 64312
        [64313] = { CUSTOM, 40}, -- Glyph of Nourish -- 64313
        [64314] = { CUSTOM, 40}, -- Glyph of Mirror Image -- 64314
        [64315] = { CUSTOM, 40}, -- Glyph of Fan of Knives -- 64315
        [64316] = { CUSTOM, 40}, -- Glyph of Hex -- 64316
        [64317] = { CUSTOM, 40}, -- Glyph of Demonic Circle -- 64317
        [64318] = { CUSTOM, 40}, -- Glyph of Metamorphosis -- 64318
        [65245] = { CUSTOM, 40}, -- Glyph of Survival Instincts -- 65245
        [68166] = { CUSTOM, 14}, -- Glyph of Command -- 68166
        [25255] = { CUSTOM, 8}, -- Delicate Copper Wire -- 25255
        [25493] = { CUSTOM, 8}, -- Braided Copper Ring -- 25493
        [26925] = { CUSTOM, 8}, -- Woven Copper Ring -- 26925
        [32259] = { CUSTOM, 8}, -- Rough Stone Statue -- 32259
        [39451] = { CUSTOM, 35}, -- Great Golden Draenite -- 39451
        [39455] = { CUSTOM, 35}, -- Balanced Shadow Draenite -- 39455
        [39458] = { CUSTOM, 35}, -- Infused Shadow Draenite -- 39458
        [39466] = { CUSTOM, 35}, -- Veiled Flame Spessarite -- 39466
        [39467] = { CUSTOM, 35}, -- Wicked Flame Spessarite -- 39467
        [39714] = { CUSTOM, 27},
        [39718] = { CUSTOM, 27},
        [39724] = { CUSTOM, 27},
        [39725] = { CUSTOM, 27},
        [39727] = { CUSTOM, 27},
        [39728] = { CUSTOM, 27},
        [39733] = { CUSTOM, 27},
        [39737] = { CUSTOM, 27},
        [46122] = { CUSTOM, 24}, -- Loop of Forged Power -- 46122
        [46123] = { CUSTOM, 24}, -- Ring of Flowing Life -- 46123
        [46124] = { CUSTOM, 24}, -- Hard Khorium Band -- 46124
        [46125] = { CUSTOM, 24}, -- Pendant of Sunfire -- 46125
        [46126] = { CUSTOM, 24}, -- Amulet of Flowing Life -- 46126
        [46127] = { CUSTOM, 24}, -- Hard Khorium Choker -- 46127
        [2149] = { CUSTOM, 8}, -- Handstitched Leather Boots -- 2149
        [2152] = { CUSTOM, 8}, -- Light Armor Kit -- 2152
        [2881] = { CUSTOM, 8}, -- Light Leather -- 2881
        [7126] = { CUSTOM, 8}, -- Handstitched Leather Vest -- 7126
        [9058] = { CUSTOM, 8}, -- Handstitched Leather Cloak -- 9058
        [9059] = { CUSTOM, 8}, -- Handstitched Leather Bracers -- 9059
        [19093] = { CUSTOM, 10},
        [21943] = { SEASONAL, 1}, -- Gloves of the Greatfather -- 21943
        [22727] = { CUSTOM, 26}, -- Core Armor Kit -- 22727
        [22921] = { CUSTOM, 23}, -- Girdle of Insight -- 22921
        [22922] = { CUSTOM, 23}, -- Mongoose Boots -- 22922
        [22923] = { CUSTOM, 23}, -- Swift Flight Bracers -- 22923
        [22926] = { CUSTOM, 23}, -- Chromatic Cloak -- 22926
        [22927] = { CUSTOM, 23}, -- Hide of the Wild -- 22927
        [22928] = { CUSTOM, 23}, -- Shifting Cloak -- 22928
        [28219] = { CUSTOM, 41},
        [28220] = { CUSTOM, 41},
        [28221] = { CUSTOM, 41},
        [28222] = { CUSTOM, 41},
        [28223] = { CUSTOM, 41},
        [28224] = { CUSTOM, 41},
        [36349] = { CUSTOM, 37, CUSTOM, 43}, -- Belt of Natural Power -- 36349
        [36351] = { CUSTOM, 37, CUSTOM, 43}, -- Belt of Deep Shadow -- 36351
        [36352] = { CUSTOM, 37, CUSTOM, 43}, -- Belt of the Black Eagle -- 36352
        [36353] = { CUSTOM, 37, CUSTOM, 43}, -- Monsoon Belt -- 36353
        [36355] = { CUSTOM, 37, CUSTOM, 43}, -- Boots of Natural Grace -- 36355
        [36357] = { CUSTOM, 37, CUSTOM, 43}, -- Boots of Utter Darkness -- 36357
        [36358] = { CUSTOM, 37, CUSTOM, 43}, -- Boots of the Crimson Hawk -- 36358
        [36359] = { CUSTOM, 37, CUSTOM, 43}, -- Hurricane Boots -- 36359
        [41156] = { CUSTOM, 34}, -- Bracers of Renewed Life -- 41156
        [41157] = { CUSTOM, 27, CUSTOM, 34}, -- Shoulderpads of Renewed Life -- 41157
        [41158] = { CUSTOM, 27, CUSTOM, 34}, -- Swiftstrike Bracers -- 41158
        [41160] = { CUSTOM, 34}, -- Swiftstrike Shoulders -- 41160
        [41161] = { CUSTOM, 27, CUSTOM, 34}, -- Bindings of Lightning Reflexes -- 41161
        [41162] = { CUSTOM, 34}, -- Shoulders of Lightning Reflexes -- 41162
        [41163] = { CUSTOM, 34}, -- Living Earth Bindings -- 41163
        [41164] = { CUSTOM, 27, CUSTOM, 34}, -- Living Earth Shoulders -- 41164
        [44953] = { SEASONAL, 1},
        [46132] = { CUSTOM, 24}, -- Leather Gauntlets of the Sun -- 46132
        [46133] = { CUSTOM, 24}, -- Fletcher's Gloves of the Phoenix -- 46133
        [46134] = { CUSTOM, 24}, -- Gloves of Immortal Dusk -- 46134
        [46135] = { CUSTOM, 24}, -- Sun-Drenched Scale Gloves -- 46135
        [46136] = { CUSTOM, 24}, -- Leather Chestguard of the Sun -- 46136
        [46137] = { CUSTOM, 24}, -- Embrace of the Phoenix -- 46137
        [46138] = { CUSTOM, 24}, -- Carapace of Sun and Shadow -- 46138
        [46139] = { CUSTOM, 24}, -- Sun-Drenched Scale Chestguard -- 46139
        [63194] = { CUSTOM, 39}, -- Belt of Dragons -- 63194
        [63195] = { CUSTOM, 39}, -- Boots of Living Scale -- 63195
        [63196] = { CUSTOM, 39}, -- Blue Belt of Chaos -- 63196
        [63197] = { CUSTOM, 39}, -- Lightning Grounded Boots -- 63197
        [63198] = { CUSTOM, 39}, -- Death-warmed Belt -- 63198
        [63199] = { CUSTOM, 39}, -- Footpads of Silence -- 63199
        [63200] = { CUSTOM, 39}, -- Belt of Arctic Life -- 63200
        [63201] = { CUSTOM, 39}, -- Boots of Wintry Endurance -- 63201
        [67080] = { CUSTOM, 42}, -- Ensorcelled Nerubian Breastplate -- 67080
        [67081] = { CUSTOM, 42}, -- Black Chitin Bracers -- 67081
        [67082] = { CUSTOM, 42}, -- Crusader's Dragonscale Breastplate -- 67082
        [67083] = { CUSTOM, 42}, -- Crusader's Dragonscale Bracers -- 67083
        [67084] = { CUSTOM, 42}, -- Lunar Eclipse Chestguard -- 67084
        [67085] = { CUSTOM, 42}, -- Moonshadow Armguards -- 67085
        [67086] = { CUSTOM, 42}, -- Knightbane Carapace -- 67086
        [67087] = { CUSTOM, 42}, -- Bracers of Swift Death -- 67087
        [67136] = { CUSTOM, 42}, -- Ensorcelled Nerubian Breastplate -- 67136
        [67137] = { CUSTOM, 42}, -- Black Chitin Bracers -- 67137
        [67138] = { CUSTOM, 42}, -- Crusader's Dragonscale Breastplate -- 67138
        [67139] = { CUSTOM, 42}, -- Bracers of Swift Death -- 67139
        [67140] = { CUSTOM, 42}, -- Lunar Eclipse Robes -- 67140
        [67141] = { CUSTOM, 42}, -- Moonshadow Armguards -- 67141
        [67142] = { CUSTOM, 42}, -- Knightbane Carapace -- 67142
        [67143] = { CUSTOM, 42}, -- Crusader's Dragonscale Bracers -- 67143
        [2657] = { CUSTOM, 8}, -- Smelt Copper -- 2657
        [46353] = { CUSTOM, 24}, -- Smelt Hardened Khorium -- 46353
        [2387] = { CUSTOM, 8}, -- Linen Cloak -- 2387
        [2963] = { CUSTOM, 8}, -- Bolt of Linen Cloth -- 2963
        [3915] = { CUSTOM, 8}, -- Brown Linen Shirt -- 3915
        [12044] = { CUSTOM, 8}, -- Simple Linen Pants -- 12044
        [21945] = { SEASONAL, 1}, -- Green Holiday Shirt -- 21945
        [22759] = { CUSTOM, 26}, -- Flarecore Wraps -- 22759
        [22866] = { CUSTOM, 23}, -- Belt of the Archmage -- 22866
        [22867] = { CUSTOM, 23}, -- Felcloth Gloves -- 22867
        [22868] = { CUSTOM, 23}, -- Inferno Gloves -- 22868
        [22869] = { CUSTOM, 23}, -- Mooncloth Gloves -- 22869
        [22870] = { CUSTOM, 23}, -- Cloak of Warding -- 22870
        [26086] = { CUSTOM, 30},
        [26087] = { CUSTOM, 26}, -- Core Felcloth Bag -- 26087
        [26403] = { SEASONAL, 2},
        [26407] = { SEASONAL, 2},
        [28205] = { CUSTOM, 41},
        [28207] = { CUSTOM, 41},
        [28208] = { CUSTOM, 41},
        [28209] = { CUSTOM, 41},
        [36315] = { CUSTOM, 37, CUSTOM, 43}, -- Belt of Blasting -- 36315
        [36316] = { CUSTOM, 37, CUSTOM, 43}, -- Belt of the Long Road -- 36316
        [36317] = { CUSTOM, 37, CUSTOM, 43}, -- Boots of Blasting -- 36317
        [36318] = { CUSTOM, 37, CUSTOM, 43}, -- Boots of the Long Road -- 36318
        [41205] = { CUSTOM, 34}, -- Bracers of Nimble Thought -- 41205
        [41206] = { CUSTOM, 27, CUSTOM, 34}, -- Mantle of Nimble Thought -- 41206
        [41207] = { CUSTOM, 27, CUSTOM, 34}, -- Swiftheal Wraps -- 41207
        [41208] = { CUSTOM, 34}, -- Swiftheal Mantle -- 41208
        [44950] = { SEASONAL, 1},
        [44958] = { SEASONAL, 1},
        [46128] = { CUSTOM, 24}, -- Sunfire Handwraps -- 46128
        [46129] = { CUSTOM, 24}, -- Hands of Eternal Light -- 46129
        [46130] = { CUSTOM, 24}, -- Sunfire Robe -- 46130
        [46131] = { CUSTOM, 24}, -- Robe of Eternal Light -- 46131
        [56016] = { CUSTOM, 45},
        [56017] = { CUSTOM, 44},
        [63203] = { CUSTOM, 39}, -- Sash of Ancient Power -- 63203
        [63204] = { CUSTOM, 39}, -- Spellslinger's Slippers -- 63204
        [63205] = { CUSTOM, 39}, -- Cord of the White Dawn -- 63205
        [63206] = { CUSTOM, 39}, -- Savior's Slippers -- 63206
        [67064] = { CUSTOM, 42}, -- Royal Moonshroud Robe -- 67064
        [67065] = { CUSTOM, 42}, -- Royal Moonshroud Bracers -- 67065
        [67066] = { CUSTOM, 42}, -- Merlin's Robe -- 67066
        [67079] = { CUSTOM, 42}, -- Bejeweled Wizard's Bracers -- 67079
        [67144] = { CUSTOM, 42}, -- Royal Moonshroud Robe -- 67144
        [67145] = { CUSTOM, 42}, -- Bejeweled Wizard's Bracers -- 67145
        [67146] = { CUSTOM, 42}, -- Merlin's Robe -- 67146
        [67147] = { CUSTOM, 42}, -- Royal Moonshroud Bracers -- 67147
        [979362] = { CUSTOM, 46 },
        [979364] = { CUSTOM, 46 },
        [979366] = { CUSTOM, 46 },
        [979368] = { CUSTOM, 46 },
        [979370] = { CUSTOM, 46 },
        [979372] = { CUSTOM, 46 },
        [979374] = { CUSTOM, 46 },
        [979376] = { CUSTOM, 46 },
        [979378] = { CUSTOM, 46 },
        [979380] = { CUSTOM, 46 },
        [979382] = { CUSTOM, 46 },
        [979363] = { CUSTOM, 46 },
        [979365] = { CUSTOM, 46 },
        [979367] = { CUSTOM, 46 },
        [979369] = { CUSTOM, 46 },
        [979371] = { CUSTOM, 46 },
        [979373] = { CUSTOM, 46 },
        [979375] = { CUSTOM, 46 },
        [979377] = { CUSTOM, 46 },
        [979379] = { CUSTOM, 46 },
        [979381] = { CUSTOM, 46 },
        [979383] = { CUSTOM, 46 },
        [979534] = { CUSTOM, 46 },
        [979536] = { CUSTOM, 46 },
        [979538] = { CUSTOM, 46 },
        [979540] = { CUSTOM, 46 },
        [979542] = { CUSTOM, 46 },
        [979544] = { CUSTOM, 46 },
        [979546] = { CUSTOM, 46 },
        [979548] = { CUSTOM, 46 },
        [979546] = { CUSTOM, 46 },
        [979537] = { CUSTOM, 46 },
        [979539] = { CUSTOM, 46 },
        [979541] = { CUSTOM, 46 },
        [979543] = { CUSTOM, 46 },
        [979546] = { CUSTOM, 46 },
        [979547] = { CUSTOM, 46 },
        [979549] = { CUSTOM, 46 },
        [979522] = { CUSTOM, 46 },
        [979524] = { CUSTOM, 46 },
        [979526] = { CUSTOM, 46 },
        [979528] = { CUSTOM, 46 },
        [979530] = { CUSTOM, 46 },
        [979532] = { CUSTOM, 46 },
        [979523] = { CUSTOM, 46 },
        [979525] = { CUSTOM, 46 },
        [979527] = { CUSTOM, 46 },
        [979529] = { CUSTOM, 46 },
        [979531] = { CUSTOM, 46 },
        [979533] = { CUSTOM, 46 },
        [979550] = { CUSTOM, 46 },
        [979552] = { CUSTOM, 46 },
        [979554] = { CUSTOM, 46 },
        [979556] = { CUSTOM, 46 },
        [979558] = { CUSTOM, 46 },
        [979560] = { CUSTOM, 46 },
        [979551] = { CUSTOM, 46 },
        [979553] = { CUSTOM, 46 },
        [979555] = { CUSTOM, 46 },
        [979557] = { CUSTOM, 46 },
        [979559] = { CUSTOM, 46 },
        [979561] = { CUSTOM, 46 },
        [1968677] = { CUSTOM, 46 },
        [1968680] = { CUSTOM, 46 },
        [1968683] = { CUSTOM, 46 },
        [1968686] = { CUSTOM, 46 },
        [1968689] = { CUSTOM, 46 },
        [1968692] = { CUSTOM, 46 },
        [1968695] = { CUSTOM, 46 },
        [1968698] = { CUSTOM, 46 },
        [1968701] = { CUSTOM, 46 },
        [1968770] = { CUSTOM, 46 },
        [1968678] = { CUSTOM, 46 },
        [1968681] = { CUSTOM, 46 },
        [1968684] = { CUSTOM, 46 },
        [1968687] = { CUSTOM, 46 },
        [1968690] = { CUSTOM, 46 },
        [1968693] = { CUSTOM, 46 },
        [1968696] = { CUSTOM, 46 },
        [1968699] = { CUSTOM, 46 },
        [1968702] = { CUSTOM, 46 },
        [1968771] = { CUSTOM, 46 },
        [979562] = { CUSTOM, 46 },
        [979564] = { CUSTOM, 46 },
        [979566] = { CUSTOM, 46 },
        [979568] = { CUSTOM, 46 },
        [979570] = { CUSTOM, 46 },
        [979572] = { CUSTOM, 46 },
        [979563] = { CUSTOM, 46 },
        [979565] = { CUSTOM, 46 },
        [979567] = { CUSTOM, 46 },
        [979569] = { CUSTOM, 46 },
        [979571] = { CUSTOM, 46 },
        [979573] = { CUSTOM, 46 },
        [979639] = { CUSTOM, 46 },
        [979641] = { CUSTOM, 46 },
        [979643] = { CUSTOM, 46 },
        [979646] = { CUSTOM, 46 },
        [979647] = { CUSTOM, 46 },
        [979649] = { CUSTOM, 46 },
        [979651] = { CUSTOM, 46 },
        [979653] = { CUSTOM, 46 },
        [979655] = { CUSTOM, 46 },
        [979640] = { CUSTOM, 46 },
        [979642] = { CUSTOM, 46 },
        [979644] = { CUSTOM, 46 },
        [979646] = { CUSTOM, 46 },
        [979648] = { CUSTOM, 46 },
        [979650] = { CUSTOM, 46 },
        [979652] = { CUSTOM, 46 },
        [979654] = { CUSTOM, 46 },
        [979656] = { CUSTOM, 46 },
        [979384] = { CUSTOM, 46 },
        [979386] = { CUSTOM, 46 },
        [979388] = { CUSTOM, 46 },
        [979390] = { CUSTOM, 46 },
        [979392] = { CUSTOM, 46 },
        [979394] = { CUSTOM, 46 },
        [979396] = { CUSTOM, 46 },
        [979398] = { CUSTOM, 46 },
        [979463] = { CUSTOM, 46 },
        [979465] = { CUSTOM, 46 },
        [979447] = { CUSTOM, 46 },
        [979446] = { CUSTOM, 46 },
        [979447] = { CUSTOM, 46 },
        [979449] = { CUSTOM, 46 },
        [979461] = { CUSTOM, 46 },
        [979400] = { CUSTOM, 46 },
        [979402] = { CUSTOM, 46 },
        [979404] = { CUSTOM, 46 },
        [979406] = { CUSTOM, 46 },
        [979421] = { CUSTOM, 46 },
        [979423] = { CUSTOM, 46 },
        [979425] = { CUSTOM, 46 },
        [979427] = { CUSTOM, 46 },
        [979429] = { CUSTOM, 46 },
        [979431] = { CUSTOM, 46 },
        [979441] = { CUSTOM, 46 },
        [979408] = { CUSTOM, 46 },
        [979410] = { CUSTOM, 46 },
        [979413] = { CUSTOM, 46 },
        [979415] = { CUSTOM, 46 },
        [979417] = { CUSTOM, 46 },
        [979419] = { CUSTOM, 46 },
        [979433] = { CUSTOM, 46 },
        [979446] = { CUSTOM, 46 },
        [979437] = { CUSTOM, 46 },
        [979439] = { CUSTOM, 46 },
        [979463] = { CUSTOM, 46 },
        [979465] = { CUSTOM, 46 },
        [979467] = { CUSTOM, 46 },
        [979469] = { CUSTOM, 46 },
        [979461] = { CUSTOM, 46 },
        [979385] = { CUSTOM, 46 },
        [979387] = { CUSTOM, 46 },
        [979389] = { CUSTOM, 46 },
        [979391] = { CUSTOM, 46 },
        [979393] = { CUSTOM, 46 },
        [979395] = { CUSTOM, 46 },
        [979397] = { CUSTOM, 46 },
        [979399] = { CUSTOM, 46 },
        [979464] = { CUSTOM, 46 },
        [979466] = { CUSTOM, 46 },
        [979444] = { CUSTOM, 46 },
        [979446] = { CUSTOM, 46 },
        [979448] = { CUSTOM, 46 },
        [979460] = { CUSTOM, 46 },
        [979462] = { CUSTOM, 46 },
        [979401] = { CUSTOM, 46 },
        [979403] = { CUSTOM, 46 },
        [979405] = { CUSTOM, 46 },
        [979407] = { CUSTOM, 46 },
        [979422] = { CUSTOM, 46 },
        [979424] = { CUSTOM, 46 },
        [979426] = { CUSTOM, 46 },
        [979428] = { CUSTOM, 46 },
        [979430] = { CUSTOM, 46 },
        [979432] = { CUSTOM, 46 },
        [979442] = { CUSTOM, 46 },
        [979409] = { CUSTOM, 46 },
        [979412] = { CUSTOM, 46 },
        [979414] = { CUSTOM, 46 },
        [979416] = { CUSTOM, 46 },
        [979418] = { CUSTOM, 46 },
        [979420] = { CUSTOM, 46 },
        [979434] = { CUSTOM, 46 },
        [979436] = { CUSTOM, 46 },
        [979438] = { CUSTOM, 46 },
        [979440] = { CUSTOM, 46 },
        [979464] = { CUSTOM, 46 },
        [979466] = { CUSTOM, 46 },
        [979468] = { CUSTOM, 46 },
        [979460] = { CUSTOM, 46 },
        [979462] = { CUSTOM, 46 },
    },
    Trainer = {
        [2331] = TRAINER, -- Minor Mana Potion -- 2331
        [2332] = TRAINER, -- Minor Rejuvenation Potion -- 2332
        [2334] = TRAINER, -- Elixir of Minor Fortitude -- 2334
        [2337] = TRAINER, -- Lesser Healing Potion -- 2337
        [3170] = TRAINER, -- Weak Troll's Blood Elixir -- 3170
        [3171] = TRAINER, -- Elixir of Wisdom -- 3171
        [3173] = TRAINER, -- Lesser Mana Potion -- 3173
        [3176] = TRAINER, -- Strong Troll's Blood Elixir -- 3176
        [3177] = TRAINER, -- Elixir of Defense -- 3177
        [3447] = TRAINER, -- Healing Potion -- 3447
        [3448] = TRAINER, -- Lesser Invisibility Potion -- 3448
        [3450] = TRAINER, 
        [3452] = TRAINER, -- Mana Potion -- 3452
        [7179] = TRAINER, -- Elixir of Water Breathing -- 7179
        [7181] = TRAINER, -- Greater Healing Potion -- 7181
        [7836] = TRAINER, -- Blackmouth Oil -- 7836
        [7837] = TRAINER, -- Fire Oil -- 7837
        [7841] = TRAINER, -- Swim Speed Potion -- 7841
        [7845] = TRAINER, -- Elixir of Firepower -- 7845
        [11448] = TRAINER, -- Greater Mana Potion -- 11448
        [11449] = TRAINER, -- Elixir of Agility -- 11449
        [11450] = TRAINER, -- Elixir of Greater Defense -- 11450
        [11451] = TRAINER, -- Oil of Immolation -- 11451
        [11457] = TRAINER, -- Superior Healing Potion -- 11457
        [11460] = TRAINER, -- Elixir of Detect Undead -- 11460
        [11461] = TRAINER, -- Arcane Elixir -- 11461
        [11465] = TRAINER, -- Elixir of Greater Intellect -- 11465
        [11467] = TRAINER, -- Elixir of Greater Agility -- 11467
        [11478] = TRAINER, -- Elixir of Detect Demon -- 11478
        [12609] = TRAINER, -- Catseye Elixir -- 12609
        [15833] = TRAINER, -- Dreamless Sleep Potion -- 15833
        [17551] = TRAINER, -- Stonescale Oil -- 17551
        [17552] = TRAINER, -- Mighty Rage Potion -- 17552
        [17553] = TRAINER, -- Superior Mana Potion -- 17553
        [17555] = TRAINER, -- Elixir of the Sages -- 17555
        [17556] = TRAINER, -- Major Healing Potion -- 17556
        [17557] = TRAINER, -- Elixir of Brute Force -- 17557
        [17572] = TRAINER, -- Purification Potion -- 17572
        [17573] = TRAINER, -- Greater Arcane Elixir -- 17573
        [22808] = TRAINER, -- Elixir of Greater Water Breathing -- 22808
        [28544] = TRAINER, -- Elixir of Major Strength -- 28544
        [28545] = TRAINER, -- Elixir of Healing Power -- 28545
        [28551] = TRAINER, -- Super Healing Potion -- 28551
        [33732] = TRAINER, -- Volatile Healing Potion -- 33732
        [33733] = TRAINER, -- Unstable Mana Potion -- 33733
        [33738] = TRAINER, -- Onslaught Elixir -- 33738
        [33740] = TRAINER, -- Adept's Elixir -- 33740
        [33741] = TRAINER, -- Elixir of Mastery -- 33741
        [38070] = TRAINER, -- Mercurial Stone -- 38070
        [39636] = TRAINER, -- Elixir of Major Fortitude -- 39636
        [39638] = TRAINER, -- Elixir of Draenic Wisdom -- 39638
        [45061] = TRAINER, -- Mad Alchemist's Potion -- 45061
        [53812] = TRAINER, -- Pygmy Oil -- 53812
        [53836] = TRAINER, -- Runic Healing Potion -- 53836
        [53837] = TRAINER, -- Runic Mana Potion -- 53837
        [53838] = TRAINER, -- Resurgent Healing Potion -- 53838
        [53839] = TRAINER, -- Icy Mana Potion -- 53839
        [53840] = TRAINER, -- Elixir of Mighty Agility -- 53840
        [53841] = TRAINER, -- Wrath Elixir -- 53841
        [53842] = TRAINER, -- Spellpower Elixir -- 53842
        [53847] = TRAINER, -- Elixir of Spirit -- 53847
        [53848] = TRAINER, -- Guru's Elixir -- 53848
        [53898] = TRAINER, -- Elixir of Mighty Fortitude -- 53898
        [53899] = TRAINER, -- Lesser Flask of Toughness -- 53899
        [53900] = TRAINER, -- Potion of Nightmares -- 53900
        [53901] = TRAINER, -- Flask of the Frost Wyrm -- 53901
        [53902] = TRAINER, -- Flask of Stoneblood -- 53902
        [53903] = TRAINER, -- Flask of Endless Rage -- 53903
        [53905] = TRAINER, -- Indestructible Potion -- 53905
        [54213] = TRAINER, -- Flask of Pure Mojo -- 54213
        [54218] = TRAINER, -- Elixir of Mighty Strength -- 54218
        [57425] = TRAINER, -- Transmute: Skyflare Diamond -- 57425
        [57427] = TRAINER, -- Transmute: Earthsiege Diamond -- 57427
        [58868] = TRAINER, -- Endless Mana Potion -- 58868
        [58871] = TRAINER, -- Endless Healing Potion -- 58871
        [60350] = TRAINER, -- Transmute: Titanium -- 60350
        [60367] = TRAINER, -- Elixir of Mighty Thoughts -- 60367
        [60396] = TRAINER, -- Mercurial Alchemist Stone -- 60396
        [60403] = TRAINER, -- Indestructible Alchemist Stone -- 60403
        [60405] = TRAINER, -- Mighty Alchemist Stone -- 60405
        [60893] = TRAINER, -- Northrend Alchemy Research -- 60893
        [62213] = TRAINER, -- Lesser Flask of Resistance -- 62213
        [62409] = TRAINER, -- Ethereal Oil -- 62409
        [63732] = TRAINER, -- Elixir of Minor Accuracy -- 63732
        [66658] = TRAINER, -- Transmute: Ametrine -- 66658
        [66660] = TRAINER, -- Transmute: King's Amber -- 66660
        [66662] = TRAINER, -- Transmute: Dreadstone -- 66662
        [66663] = TRAINER, -- Transmute: Majestic Zircon -- 66663
        [66664] = TRAINER, -- Transmute: Eye of Zul -- 66664
        [67025] = TRAINER, -- Flask of the North -- 67025
        [2661] = TRAINER, -- Copper Chain Belt -- 2661
        [2662] = TRAINER, -- Copper Chain Pants -- 2662
        [2664] = TRAINER, -- Runed Copper Bracers -- 2664
        [2665] = TRAINER, -- Coarse Sharpening Stone -- 2665
        [2666] = TRAINER, -- Runed Copper Belt -- 2666
        [2668] = TRAINER, -- Rough Bronze Leggings -- 2668
        [2670] = TRAINER, -- Rough Bronze Cuirass -- 2670
        [2672] = TRAINER, -- Patterned Bronze Bracers -- 2672
        [2674] = TRAINER, -- Heavy Sharpening Stone -- 2674
        [2675] = TRAINER, -- Shining Silver Breastplate -- 2675
        [2737] = TRAINER, -- Copper Mace -- 2737
        [2738] = TRAINER, -- Copper Axe -- 2738
        [2739] = TRAINER, -- Copper Shortsword -- 2739
        [2740] = TRAINER, -- Bronze Mace -- 2740
        [2741] = TRAINER, -- Bronze Axe -- 2741
        [2742] = TRAINER, -- Bronze Shortsword -- 2742
        [3116] = TRAINER, -- Coarse Weightstone -- 3116
        [3117] = TRAINER, -- Heavy Weightstone -- 3117
        [3292] = TRAINER, -- Heavy Copper Broadsword -- 3292
        [3293] = TRAINER, -- Copper Battle Axe -- 3293
        [3294] = TRAINER, -- Thick War Axe -- 3294
        [3296] = TRAINER, -- Heavy Bronze Mace -- 3296
        [3319] = TRAINER, -- Copper Chain Boots -- 3319
        [3320] = TRAINER, -- Rough Grinding Stone -- 3320
        [3323] = TRAINER, -- Runed Copper Gauntlets -- 3323
        [3324] = TRAINER, -- Runed Copper Pants -- 3324
        [3326] = TRAINER, -- Coarse Grinding Stone -- 3326
        [3328] = TRAINER, -- Rough Bronze Shoulders -- 3328
        [3331] = TRAINER, -- Silvered Bronze Boots -- 3331
        [3333] = TRAINER, -- Silvered Bronze Gauntlets -- 3333
        [3337] = TRAINER, -- Heavy Grinding Stone -- 3337
        [3491] = TRAINER, -- Big Bronze Knife -- 3491
        [3501] = TRAINER, -- Green Iron Bracers -- 3501
        [3502] = TRAINER, -- Green Iron Helm -- 3502
        [3506] = TRAINER, -- Green Iron Leggings -- 3506
        [3508] = TRAINER, -- Green Iron Hauberk -- 3508
        [6517] = TRAINER, -- Pearl-handled Dagger -- 6517
        [7223] = TRAINER, -- Golden Scale Bracers -- 7223
        [7408] = TRAINER, -- Heavy Copper Maul -- 7408
        [7817] = TRAINER, -- Rough Bronze Boots -- 7817
        [7818] = TRAINER, -- Silver Rod -- 7818
        [8768] = TRAINER, -- Iron Buckle -- 8768
        [8880] = TRAINER, -- Copper Dagger -- 8880
        [9916] = TRAINER, -- Steel Breastplate -- 9916
        [9918] = TRAINER, -- Solid Sharpening Stone -- 9918
        [9920] = TRAINER, -- Solid Grinding Stone -- 9920
        [9921] = TRAINER, -- Solid Weightstone -- 9921
        [9926] = TRAINER, -- Heavy Mithril Shoulder -- 9926
        [9928] = TRAINER, -- Heavy Mithril Gauntlet -- 9928
        [9931] = TRAINER, -- Mithril Scale Pants -- 9931
        [9935] = TRAINER, -- Steel Plate Helm -- 9935
        [9954] = TRAINER, -- TRAINER,silver Gauntlets -- 9954
        [9959] = TRAINER, -- Heavy Mithril Breastplate -- 9959
        [9961] = TRAINER, -- Mithril Coif -- 9961
        [9968] = TRAINER, -- Heavy Mithril Boots -- 9968
        [9974] = TRAINER, -- TRAINER,silver Breastplate -- 9974
        [9983] = TRAINER, -- Copper Claymore -- 9983
        [9985] = TRAINER, -- Bronze Warhammer -- 9985
        [9986] = TRAINER, -- Bronze Greatsword -- 9986
        [9987] = TRAINER, -- Bronze Battle Axe -- 9987
        [9993] = TRAINER, -- Heavy Mithril Axe -- 9993
        [10001] = TRAINER, -- Big Black Mace -- 10001
        [10003] = TRAINER, -- The Shatterer -- 10003
        [10007] = TRAINER, -- Phantom Blade -- 10007
        [10011] = TRAINER, -- Blight -- 10011
        [10015] = TRAINER, -- TRAINER,silver Champion -- 10015
        [14379] = TRAINER, -- Golden Rod -- 14379
        [14380] = TRAINER, -- TRAINER,silver Rod -- 14380
        [15972] = TRAINER, -- Glinting Steel Dagger -- 15972
        [16639] = TRAINER, -- Dense Grinding Stone -- 16639
        [16640] = TRAINER, -- Dense Weightstone -- 16640
        [16641] = TRAINER, -- Dense Sharpening Stone -- 16641
        [16642] = TRAINER, 
        [16643] = TRAINER, 
        [16644] = TRAINER, 
        [16652] = TRAINER, 
        [16653] = TRAINER, 
        [16662] = TRAINER, 
        [16969] = TRAINER, 
        [16971] = TRAINER, 
        [19666] = TRAINER, -- Silver Skeleton Key -- 19666
        [19667] = TRAINER, -- Golden Skeleton Key -- 19667
        [19668] = TRAINER, -- TRAINER,silver Skeleton Key -- 19668
        [19669] = TRAINER, -- Arcanite Skeleton Key -- 19669
        [20201] = TRAINER, -- Arcanite Rod -- 20201
        [29545] = TRAINER, -- Fel Iron Plate Gloves -- 29545
        [29547] = TRAINER, -- Fel Iron Plate Belt -- 29547
        [29548] = TRAINER, -- Fel Iron Plate Boots -- 29548
        [29549] = TRAINER, -- Fel Iron Plate Pants -- 29549
        [29550] = TRAINER, -- Fel Iron Breastplate -- 29550
        [29551] = TRAINER, -- Fel Iron Chain Coif -- 29551
        [29552] = TRAINER, -- Fel Iron Chain Gloves -- 29552
        [29553] = TRAINER, -- Fel Iron Chain Bracers -- 29553
        [29556] = TRAINER, -- Fel Iron Chain Tunic -- 29556
        [29557] = TRAINER, -- Fel Iron Hatchet -- 29557
        [29558] = TRAINER, -- Fel Iron Hammer -- 29558
        [29565] = TRAINER, -- Fel Iron Greatsword -- 29565
        [29654] = TRAINER, -- Fel Sharpening Stone -- 29654
        [32284] = TRAINER, -- Lesser Rune of Warding -- 32284
        [32655] = TRAINER, -- Fel Iron Rod -- 32655
        [34529] = TRAINER, -- Nether Chain Shirt -- 34529
        [34530] = TRAINER, -- Twisting Nether Chain Shirt -- 34530
        [34533] = TRAINER, -- Breastplate of Kings -- 34533
        [34534] = TRAINER, -- Bulwark of Kings -- 34534
        [34535] = TRAINER, -- Fireguard -- 34535
        [34537] = TRAINER, -- Blazeguard -- 34537
        [34538] = TRAINER, -- Lionheart Blade -- 34538
        [34540] = TRAINER, -- Lionheart Champion -- 34540
        [34541] = TRAINER, -- The Planar Edge -- 34541
        [34542] = TRAINER, -- Black Planar Edge -- 34542
        [34543] = TRAINER, -- Lunar Crescent -- 34543
        [34544] = TRAINER, -- Mooncleaver -- 34544
        [34545] = TRAINER, -- Drakefist Hammer -- 34545
        [34546] = TRAINER, -- Dragonmaw -- 34546
        [34547] = TRAINER, -- Thunder -- 34547
        [34548] = TRAINER, -- Deep Thunder -- 34548
        [34607] = TRAINER, -- Fel Weightstone -- 34607
        [34979] = TRAINER, -- Thick Bronze Darts -- 34979
        [34981] = TRAINER, -- Whirling Steel Axes -- 34981
        [34982] = TRAINER, -- Enchanted Thorium Blades -- 34982
        [34983] = TRAINER, -- Felsteel Whisper Knives -- 34983
        [36122] = TRAINER, -- Earthforged Leggings -- 36122
        [36124] = TRAINER, -- Windforged Leggings -- 36124
        [36125] = TRAINER, -- Light Earthforged Blade -- 36125
        [36126] = TRAINER, -- Light Skyforged Axe -- 36126
        [36128] = TRAINER, -- Light Emberforged Hammer -- 36128
        [36129] = TRAINER, -- Heavy Earthforged Breastplate -- 36129
        [36130] = TRAINER, -- Stormforged Hauberk -- 36130
        [36131] = TRAINER, -- Windforged Rapier -- 36131
        [36133] = TRAINER, -- Stoneforged Claymore -- 36133
        [36134] = TRAINER, -- Stormforged Axe -- 36134
        [36135] = TRAINER, -- Skyforged Great Axe -- 36135
        [36136] = TRAINER, -- Lavaforged Warhammer -- 36136
        [36137] = TRAINER, -- Great Earthforged Hammer -- 36137
        [36256] = TRAINER, -- Embrace of the Twisting Nether -- 36256
        [36257] = TRAINER, -- Bulwark of the Ancient Kings -- 36257
        [36258] = TRAINER, -- Blazefury -- 36258
        [36259] = TRAINER, -- Lionheart Executioner -- 36259
        [36260] = TRAINER, -- Wicked Edge of the Planes -- 36260
        [36261] = TRAINER, -- Bloodmoon -- 36261
        [36262] = TRAINER, -- Dragonstrike -- 36262
        [36263] = TRAINER, -- Stormherald -- 36263
        [52567] = TRAINER, -- Cobalt Legplates -- 52567
        [52568] = TRAINER, -- Cobalt Belt -- 52568
        [52569] = TRAINER, -- Cobalt Boots -- 52569
        [52570] = TRAINER, -- Cobalt Chestpiece -- 52570
        [52571] = TRAINER, -- Cobalt Helm -- 52571
        [52572] = TRAINER, -- Cobalt Shoulders -- 52572
        [54550] = TRAINER, -- Cobalt Triangle Shield -- 54550
        [54551] = TRAINER, -- Tempered Saronite Belt -- 54551
        [54552] = TRAINER, -- Tempered Saronite Boots -- 54552
        [54553] = TRAINER, -- Tempered Saronite Breastplate -- 54553
        [54554] = TRAINER, -- Tempered Saronite Legplates -- 54554
        [54555] = TRAINER, -- Tempered Saronite Helm -- 54555
        [54556] = TRAINER, -- Tempered Saronite Shoulders -- 54556
        [54557] = TRAINER, -- Saronite Defender -- 54557
        [54917] = TRAINER, -- Spiked Cobalt Helm -- 54917
        [54918] = TRAINER, -- Spiked Cobalt Boots -- 54918
        [54941] = TRAINER, -- Spiked Cobalt Shoulders -- 54941
        [54944] = TRAINER, -- Spiked Cobalt Chestpiece -- 54944
        [54945] = TRAINER, -- Spiked Cobalt Gauntlets -- 54945
        [54946] = TRAINER, -- Spiked Cobalt Belt -- 54946
        [54947] = TRAINER, -- Spiked Cobalt Legplates -- 54947
        [54948] = TRAINER, -- Spiked Cobalt Bracers -- 54948
        [54949] = TRAINER, -- Horned Cobalt Helm -- 54949
        [55013] = TRAINER, -- Saronite Protector -- 55013
        [55014] = TRAINER, -- Saronite Bulwark -- 55014
        [55015] = TRAINER, -- Tempered Saronite Gauntlets -- 55015
        [55017] = TRAINER, -- Tempered Saronite Bracers -- 55017
        [55055] = TRAINER, -- Brilliant Saronite Legplates -- 55055
        [55056] = TRAINER, -- Brilliant Saronite Gauntlets -- 55056
        [55057] = TRAINER, -- Brilliant Saronite Boots -- 55057
        [55058] = TRAINER, -- Brilliant Saronite Breastplate -- 55058
        [55174] = TRAINER, -- Honed Cobalt Cleaver -- 55174
        [55177] = TRAINER, -- Savage Cobalt Slicer -- 55177
        [55179] = TRAINER, -- Saronite Ambusher -- 55179
        [55181] = TRAINER, -- Saronite Shiv -- 55181
        [55182] = TRAINER, -- Furious Saronite Beatstick -- 55182
        [55183] = TRAINER, -- Corroded Saronite Edge -- 55183
        [55184] = TRAINER, -- Corroded Saronite Woundbringer -- 55184
        [55185] = TRAINER, -- Saronite Mindcrusher -- 55185
        [55186] = TRAINER, -- Chestplate of Conquest -- 55186
        [55187] = TRAINER, -- Legplates of Conquest -- 55187
        [55200] = TRAINER, -- Sturdy Cobalt Quickblade -- 55200
        [55201] = TRAINER, -- Cobalt Tenderizer -- 55201
        [55202] = TRAINER, -- Sure-fire Shuriken -- 55202
        [55203] = TRAINER, -- Forged Cobalt Claymore -- 55203
        [55204] = TRAINER, -- Notched Cobalt War Axe -- 55204
        [55206] = TRAINER, -- Deadly Saronite Dirk -- 55206
        [55298] = TRAINER, -- Vengeance Bindings -- 55298
        [55300] = TRAINER, -- Righteous Gauntlets -- 55300
        [55301] = TRAINER, -- Daunting Handguards -- 55301
        [55302] = TRAINER, -- Helm of Command -- 55302
        [55303] = TRAINER, -- Daunting Legplates -- 55303
        [55304] = TRAINER, -- Righteous Greaves -- 55304
        [55305] = TRAINER, -- Savage Saronite Bracers -- 55305
        [55306] = TRAINER, -- Savage Saronite Pauldrons -- 55306
        [55307] = TRAINER, -- Savage Saronite Waistguard -- 55307
        [55308] = TRAINER, -- Savage Saronite Walkers -- 55308
        [55309] = TRAINER, -- Savage Saronite Gauntlets -- 55309
        [55310] = TRAINER, -- Savage Saronite Legplates -- 55310
        [55311] = TRAINER, -- Savage Saronite Hauberk -- 55311
        [55312] = TRAINER, -- Savage Saronite Skullshield -- 55312
        [55369] = TRAINER, -- Titansteel Destroyer -- 55369
        [55370] = TRAINER, -- Titansteel Bonecrusher -- 55370
        [55371] = TRAINER, -- Titansteel Guardian -- 55371
        [55372] = TRAINER, -- Spiked Titansteel Helm -- 55372
        [55373] = TRAINER, -- Tempered Titansteel Helm -- 55373
        [55374] = TRAINER, -- Brilliant Titansteel Helm -- 55374
        [55375] = TRAINER, -- Spiked Titansteel Treads -- 55375
        [55376] = TRAINER, -- Tempered Titansteel Treads -- 55376
        [55377] = TRAINER, -- Brilliant Titansteel Treads -- 55377
        [55628] = TRAINER, -- Socket Bracer -- 55628
        [55641] = TRAINER, -- Socket Gloves -- 55641
        [55656] = TRAINER, -- Eternal Belt Buckle -- 55656
        [55732] = TRAINER, -- Titanium Rod -- 55732
        [55834] = TRAINER, -- Cobalt Bracers -- 55834
        [55835] = TRAINER, -- Cobalt Gauntlets -- 55835
        [55839] = TRAINER, -- Titanium Weapon Chain -- 55839
        [56234] = TRAINER, -- Titansteel Shanker -- 56234
        [56280] = TRAINER, -- Cudgel of Saronite Justice -- 56280
        [56357] = TRAINER, -- Titanium Shield Spike -- 56357
        [56400] = TRAINER, -- Titansteel Shield Wall -- 56400
        [56549] = TRAINER, -- Ornate Saronite Bracers -- 56549
        [56550] = TRAINER, -- Ornate Saronite Pauldrons -- 56550
        [56551] = TRAINER, -- Ornate Saronite Waistguard -- 56551
        [56552] = TRAINER, -- Ornate Saronite Walkers -- 56552
        [56553] = TRAINER, -- Ornate Saronite Gauntlets -- 56553
        [56554] = TRAINER, -- Ornate Saronite Legplates -- 56554
        [56555] = TRAINER, -- Ornate Saronite Hauberk -- 56555
        [56556] = TRAINER, -- Ornate Saronite Skullshield -- 56556
        [59405] = TRAINER, -- Cobalt Skeleton Key -- 59405
        [59406] = TRAINER, -- Titanium Skeleton Key -- 59406
        [59436] = TRAINER, -- Brilliant Saronite Belt -- 59436
        [59438] = TRAINER, -- Brilliant Saronite Bracers -- 59438
        [59440] = TRAINER, -- Brilliant Saronite Pauldrons -- 59440
        [59441] = TRAINER, -- Brilliant Saronite Helm -- 59441
        [59442] = TRAINER, -- Saronite Spellblade -- 59442
        [61008] = TRAINER, -- Icebane Chestguard -- 61008
        [61009] = TRAINER, -- Icebane Girdle -- 61009
        [61010] = TRAINER, -- Icebane Treads -- 61010
        [63182] = TRAINER, -- Titansteel Spellblade -- 63182
        [2539] = TRAINER, -- Spiced Wolf Meat -- 2539
        [2541] = TRAINER, -- Coyote Steak -- 2541
        [2544] = TRAINER, -- Crab Cake -- 2544
        [2546] = TRAINER, -- Dry Pork Ribs -- 2546
        [4094] = TRAINER,
        [6499] = TRAINER, -- Boiled Clams -- 6499
        [6500] = TRAINER, -- Goblin Deviled Clams -- 6500
        [21175] = TRAINER, -- Spider Sausage -- 21175
        [37836] = TRAINER, -- Spice Bread -- 37836
        [42296] = TRAINER, -- Stewed Trout -- 42296
        [42302] = TRAINER, -- Fisherman's Feast -- 42302
        [42305] = TRAINER, -- Hot Buttered Trout -- 42305
        [45549] = TRAINER, -- Mammoth Meal -- 45549
        [45550] = TRAINER, -- Shoveltusk Steak -- 45550
        [45551] = TRAINER, -- Worm Delight -- 45551
        [45552] = TRAINER, -- Roasted Worg -- 45552
        [45553] = TRAINER, -- Rhino Dogs -- 45553
        [45554] = TRAINER, -- Great Feast -- 45554
        [45560] = TRAINER, -- Smoked Rockfin -- 45560
        [45561] = TRAINER, -- Grilled Bonescale -- 45561
        [45562] = TRAINER, -- Sauteed Goby -- 45562
        [45563] = TRAINER, -- Grilled Sculpin -- 45563
        [45564] = TRAINER, -- Smoked Salmon -- 45564
        [45565] = TRAINER, -- Poached Nettlefish -- 45565
        [45566] = TRAINER, -- Pickled Fangtooth -- 45566
        [45569] = TRAINER, -- Baked Manta Ray -- 45569
        [58065] = TRAINER, -- Dalaran Clam Chowder -- 58065
        [64358] = TRAINER, -- Black Jelly -- 64358
        [7420] = TRAINER, -- Enchant Chest - Minor Health -- 7420
        [7426] = TRAINER, -- Enchant Chest - Minor Absorption -- 7426
        [7454] = TRAINER, -- Enchant Cloak - Minor Resistance -- 7454
        [7457] = TRAINER, -- Enchant Bracer - Minor Stamina -- 7457
        [7745] = TRAINER, -- Enchant 2H Weapon - Minor Impact -- 7745
        [7748] = TRAINER, -- Enchant Chest - Lesser Health -- 7748
        [7771] = TRAINER, -- Enchant Cloak - Minor Protection -- 7771
        [7779] = TRAINER, -- Enchant Bracer - Minor Agility -- 7779
        [7788] = TRAINER, -- Enchant Weapon - Minor Striking -- 7788
        [7795] = TRAINER, -- Runed Silver Rod -- 7795
        [7857] = TRAINER, -- Enchant Chest - Health -- 7857
        [7861] = TRAINER, -- Enchant Cloak - Lesser Fire Resistance -- 7861
        [7863] = TRAINER, -- Enchant Boots - Minor Stamina -- 7863
        [13378] = TRAINER, -- Enchant Shield - Minor Stamina -- 13378
        [13421] = TRAINER, -- Enchant Cloak - Lesser Protection -- 13421
        [13485] = TRAINER, -- Enchant Shield - Lesser Spirit -- 13485
        [13501] = TRAINER, -- Enchant Bracer - Lesser Stamina -- 13501
        [13503] = TRAINER, -- Enchant Weapon - Lesser Striking -- 13503
        [13529] = TRAINER, -- Enchant 2H Weapon - Lesser Impact -- 13529
        [13538] = TRAINER, -- Enchant Chest - Lesser Absorption -- 13538
        [13607] = TRAINER, -- Enchant Chest - Mana -- 13607
        [13622] = TRAINER, -- Enchant Bracer - Lesser Intellect -- 13622
        [13626] = TRAINER, -- Enchant Chest - Minor Stats -- 13626
        [13628] = TRAINER, -- Runed Golden Rod -- 13628
        [13631] = TRAINER, -- Enchant Shield - Lesser Stamina -- 13631
        [13635] = TRAINER, -- Enchant Cloak - Defense -- 13635
        [13637] = TRAINER, -- Enchant Boots - Lesser Agility -- 13637
        [13640] = TRAINER, -- Enchant Chest - Greater Health -- 13640
        [13642] = TRAINER, -- Enchant Bracer - Spirit -- 13642
        [13644] = TRAINER, -- Enchant Boots - Lesser Stamina -- 13644
        [13648] = TRAINER, -- Enchant Bracer - Stamina -- 13648
        [13657] = TRAINER, -- Enchant Cloak - Fire Resistance -- 13657
        [13659] = TRAINER, -- Enchant Shield - Spirit -- 13659
        [13661] = TRAINER, -- Enchant Bracer - Strength -- 13661
        [13663] = TRAINER, -- Enchant Chest - Greater Mana -- 13663
        [13693] = TRAINER, -- Enchant Weapon - Striking -- 13693
        [13695] = TRAINER, -- Enchant 2H Weapon - Impact -- 13695
        [13700] = TRAINER, -- Enchant Chest - Lesser Stats -- 13700
        [13702] = TRAINER, -- Runed TRAINER,silver Rod -- 13702
        [13746] = TRAINER, -- Enchant Cloak - Greater Defense -- 13746
        [13794] = TRAINER, -- Enchant Cloak - Resistance -- 13794
        [13815] = TRAINER, -- Enchant Gloves - Agility -- 13815
        [13822] = TRAINER, -- Enchant Bracer - Intellect -- 13822
        [13836] = TRAINER, -- Enchant Boots - Stamina -- 13836
        [13858] = TRAINER, -- Enchant Chest - Superior Health -- 13858
        [13887] = TRAINER, -- Enchant Gloves - Strength -- 13887
        [13890] = TRAINER, -- Enchant Boots - Minor Speed -- 13890
        [13905] = TRAINER, -- Enchant Shield - Greater Spirit -- 13905
        [13917] = TRAINER, -- Enchant Chest - Superior Mana -- 13917
        [13935] = TRAINER, -- Enchant Boots - Agility -- 13935
        [13937] = TRAINER, -- Enchant 2H Weapon - Greater Impact -- 13937
        [13939] = TRAINER, -- Enchant Bracer - Greater Strength -- 13939
        [13941] = TRAINER, -- Enchant Chest - Stats -- 13941
        [13943] = TRAINER, -- Enchant Weapon - Greater Striking -- 13943
        [13948] = TRAINER, -- Enchant Gloves - Minor Haste -- 13948
        [14293] = TRAINER, -- Lesser Magic Wand -- 14293
        [14807] = TRAINER, -- Greater Magic Wand -- 14807
        [14809] = TRAINER, -- Lesser Mystic Wand -- 14809
        [14810] = TRAINER, -- Greater Mystic Wand -- 14810
        [17180] = TRAINER, -- Enchanted Thorium -- 17180
        [17181] = TRAINER, -- Enchanted Leather -- 17181
        [20008] = TRAINER, -- Enchant Bracer - Greater Intellect -- 20008
        [20012] = TRAINER, -- Enchant Gloves - Greater Agility -- 20012
        [20013] = TRAINER, -- Enchant Gloves - Greater Strength -- 20013
        [20014] = TRAINER, -- Enchant Cloak - Greater Resistance -- 20014
        [20016] = TRAINER, -- Enchant Shield - Vitality -- 20016
        [20023] = TRAINER, -- Enchant Boots - Greater Agility -- 20023
        [20028] = TRAINER, -- Enchant Chest - Major Mana -- 20028
        [27899] = TRAINER, -- Enchant Bracer - Brawn -- 27899
        [27905] = TRAINER, -- Enchant Bracer - Stats -- 27905
        [27944] = TRAINER, -- Enchant Shield - Tough Shield -- 27944
        [27957] = TRAINER, -- Enchant Chest - Exceptional Health -- 27957
        [27958] = TRAINER, -- Enchant Chest - Exceptional Mana -- 27958
        [27961] = TRAINER, -- Enchant Cloak - Major Armor -- 27961
        [28027] = TRAINER, -- Prismatic Sphere -- 28027
        [28028] = TRAINER, -- Void Sphere -- 28028
        [32664] = TRAINER, -- Runed Fel Iron Rod -- 32664
        [32667] = TRAINER,
        [33990] = TRAINER, -- Enchant Chest - Major Spirit -- 33990
        [33991] = TRAINER, -- Enchant Chest - Restore Mana Prime -- 33991
        [33993] = TRAINER, -- Enchant Gloves - Blasting -- 33993
        [33995] = TRAINER, -- Enchant Gloves - Major Strength -- 33995
        [33996] = TRAINER, -- Enchant Gloves - Assault -- 33996
        [34001] = TRAINER, -- Enchant Bracer - Major Intellect -- 34001
        [34002] = TRAINER, -- Enchant Bracer - Assault -- 34002
        [34004] = TRAINER, -- Enchant Cloak - Greater Agility -- 34004
        [42613] = TRAINER, -- Nexus Transformation -- 42613
        [42615] = TRAINER, -- Small Prismatic Shard -- 42615
        [44383] = TRAINER, -- Enchant Shield - Resilience -- 44383
        [44484] = TRAINER, -- Enchant Gloves - Expertise -- 44484
        [44488] = TRAINER, -- Enchant Gloves - Precision -- 44488
        [44489] = TRAINER, -- Enchant Shield - Defense -- 44489
        [44492] = TRAINER, -- Enchant Chest - Mighty Health -- 44492
        [44500] = TRAINER, -- Enchant Cloak - Superior Agility -- 44500
        [44506] = TRAINER, -- Enchant Gloves - Gatherer -- 44506
        [44508] = TRAINER, -- Enchant Boots - Greater Spirit -- 44508
        [44509] = TRAINER, -- Enchant Chest - Greater Mana Restoration -- 44509
        [44510] = TRAINER, -- Enchant Weapon - Exceptional Spirit -- 44510
        [44513] = TRAINER, -- Enchant Gloves - Greater Assault -- 44513
        [44528] = TRAINER, -- Enchant Boots - Greater Fortitude -- 44528
        [44529] = TRAINER, -- Enchant Gloves - Major Agility -- 44529
        [44555] = TRAINER, -- Enchant Bracers - Exceptional Intellect -- 44555
        [44582] = TRAINER, -- Enchant Cloak - Spell Piercing -- 44582
        [44584] = TRAINER, -- Enchant Boots - Greater Vitality -- 44584
        [44589] = TRAINER, -- Enchant Boots - Superior Agility -- 44589
        [44592] = TRAINER, -- Enchant Gloves - Exceptional Spellpower -- 44592
        [44593] = TRAINER, -- Enchant Bracers - Major Spirit -- 44593
        [44598] = TRAINER, -- Enchant Bracers - Expertise -- 44598
        [44616] = TRAINER, -- Enchant Bracers - Greater Stats -- 44616
        [44623] = TRAINER, -- Enchant Chest - Super Stats -- 44623
        [44629] = TRAINER, -- Enchant Weapon - Exceptional Spellpower -- 44629
        [44630] = TRAINER, -- Enchant 2H Weapon - Greater Savagery -- 44630
        [44633] = TRAINER, -- Enchant Weapon - Exceptional Agility -- 44633
        [44635] = TRAINER, -- Enchant Bracers - Greater Spellpower -- 44635
        [44636] = TRAINER, -- Enchant Ring - Greater Spellpower -- 44636
        [44645] = TRAINER, -- Enchant Ring - Assault -- 44645
        [47766] = TRAINER, -- Enchant Chest - Greater Defense -- 47766
        [47900] = TRAINER, -- Enchant Chest - Super Health -- 47900
        [59636] = TRAINER, -- Enchant Ring - Stamina -- 59636
        [60606] = TRAINER, -- Enchant Boots - Assault -- 60606
        [60609] = TRAINER, -- Enchant Cloak - Speed -- 60609
        [60616] = TRAINER, -- Enchant Bracers - Striking -- 60616
        [60619] = TRAINER, -- Runed Titanium Rod -- 60619
        [60621] = TRAINER, -- Enchant Weapon - Greater Potency -- 60621
        [60623] = TRAINER, -- Enchant Boots - Icewalker -- 60623
        [60653] = TRAINER, -- Enchant Shield - Greater Intellect -- 60653
        [60663] = TRAINER, -- Enchant Cloak - Major Agility -- 60663
        [60668] = TRAINER, -- Enchant Gloves - Crusher -- 60668
        [62959] = TRAINER, -- Enchant Staff - Spellpower -- 62959
        [63746] = TRAINER, -- Enchant Boots - Lesser Accuracy -- 63746
        [69412] = TRAINER, -- Abyssal Shatter -- 69412
        [3922] = TRAINER, -- Handful of Copper Bolts -- 3922
        [3923] = TRAINER, -- Rough Copper Bomb -- 3923
        [3924] = TRAINER, -- Copper Tube -- 3924
        [3925] = TRAINER, -- Rough Boomstick -- 3925
        [3926] = TRAINER, -- Copper Modulator -- 3926
        [3929] = TRAINER, -- Coarse Blasting Powder -- 3929
        [3930] = TRAINER, -- Crafted Heavy Shot -- 3930
        [3931] = TRAINER, -- Coarse Dynamite -- 3931
        [3932] = TRAINER, -- Target Dummy -- 3932
        [3934] = TRAINER, -- Flying Tiger Goggles -- 3934
        [3936] = TRAINER, -- Deadly Blunderbuss -- 3936
        [3937] = TRAINER, -- Large Copper Bomb -- 3937
        [3938] = TRAINER, -- Bronze Tube -- 3938
        [3941] = TRAINER, -- Small Bronze Bomb -- 3941
        [3942] = TRAINER, -- Whirring Bronze Gizmo -- 3942
        [3945] = TRAINER, -- Heavy Blasting Powder -- 3945
        [3946] = TRAINER, -- Heavy Dynamite -- 3946
        [3947] = TRAINER, -- Crafted Solid Shot -- 3947
        [3949] = TRAINER, -- Silver-plated Shotgun -- 3949
        [3950] = TRAINER, -- Big Bronze Bomb -- 3950
        [3953] = TRAINER, -- Bronze Framework -- 3953
        [3955] = TRAINER, -- Explosive Sheep -- 3955
        [3956] = TRAINER, -- Green Tinted Goggles -- 3956
        [3958] = TRAINER, -- Iron Strut -- 3958
        [3961] = TRAINER, -- Gyrochronatom -- 3961
        [3962] = TRAINER, -- Iron Grenade -- 3962
        [3963] = TRAINER, -- Compact Harvest Reaper Kit -- 3963
        [3965] = TRAINER, -- Advanced Target Dummy -- 3965
        [3967] = TRAINER, -- Big Iron Bomb -- 3967
        [3973] = TRAINER, -- Silver Contact -- 3973
        [3977] = TRAINER, -- Crude Scope -- 3977
        [3978] = TRAINER, -- Standard Scope -- 3978
        [6458] = TRAINER, -- Ornate Spyglass -- 6458
        [7430] = TRAINER, -- Arclight Spanner -- 7430
        [8334] = TRAINER, -- Practice Lock -- 8334
        [8895] = TRAINER, -- Goblin Rocket Boots -- 8895
        [9271] = TRAINER, -- Aquadynamic Fish Attractor -- 9271
        [12584] = TRAINER, -- Gold Power Core -- 12584
        [12585] = TRAINER, -- Solid Blasting Powder -- 12585
        [12586] = TRAINER, -- Solid Dynamite -- 12586
        [12589] = TRAINER, -- Mithril Tube -- 12589
        [12590] = TRAINER, -- Gyromatic Micro-Adjustor -- 12590
        [12591] = TRAINER, -- Unstable Trigger -- 12591
        [12594] = TRAINER, -- Fire Goggles -- 12594
        [12595] = TRAINER, -- Mithril Blunderbuss -- 12595
        [12596] = TRAINER, -- Hi-Impact Mithril Slugs -- 12596
        [12599] = TRAINER, -- Mithril Casing -- 12599
        [12603] = TRAINER, -- Mithril Frag Bomb -- 12603
        [12615] = TRAINER, -- Spellpower Goggles Xtreme -- 12615
        [12618] = TRAINER, -- Rose Colored Goggles -- 12618
        [12619] = TRAINER, -- Hi-Explosive Bomb -- 12619
        [12621] = TRAINER, -- Mithril Gyro-Shot -- 12621
        [12622] = TRAINER, -- Green Lens -- 12622
        [12715] = TRAINER, -- Goblin Rocket Fuel Recipe -- 12715
        [12716] = TRAINER, -- Goblin Mortar -- 12716
        [12717] = TRAINER, -- Goblin Mining Helmet -- 12717
        [12718] = TRAINER, -- Goblin Construction Helmet -- 12718
        [12754] = TRAINER, -- The Big One -- 12754
        [12755] = TRAINER, -- Goblin Bomb Dispenser -- 12755
        [12758] = TRAINER, -- Goblin Rocket Helmet -- 12758
        [12759] = TRAINER, -- Gnomish Death Ray -- 12759
        [12760] = TRAINER, -- Goblin Sapper Charge -- 12760
        [12895] = TRAINER, -- Inlaid Mithril Cylinder Plans -- 12895
        [12897] = TRAINER, -- Gnomish Goggles -- 12897
        [12899] = TRAINER, -- Gnomish Shrink Ray -- 12899
        [12902] = TRAINER, -- Gnomish Net-o-Matic Projector -- 12902
        [12903] = TRAINER, -- Gnomish Harm Prevention Belt -- 12903
        [12905] = TRAINER, -- Gnomish Rocket Boots -- 12905
        [12906] = TRAINER, -- Gnomish Battle Chicken -- 12906
        [12907] = TRAINER, -- Gnomish Mind Control Cap -- 12907
        [12908] = TRAINER, -- Goblin Dragon Gun -- 12908
        [13240] = TRAINER, -- The Mortar: Reloaded -- 13240
        [15255] = TRAINER, -- Mechanical Repair Kit -- 15255
        [19567] = TRAINER, -- Salt Shaker -- 19567
        [19788] = TRAINER, -- Dense Blasting Powder -- 19788
        [19790] = TRAINER, -- Thorium Grenade -- 19790
        [19791] = TRAINER, -- Thorium Widget -- 19791
        [19792] = TRAINER, -- Thorium Rifle -- 19792
        [19794] = TRAINER, -- Spellpower Goggles Xtreme Plus -- 19794
        [19795] = TRAINER, -- Thorium Tube -- 19795
        [19800] = TRAINER, -- Thorium Shells -- 19800
        [19825] = TRAINER, -- Master Engineer's Goggles -- 19825
        [23070] = TRAINER, -- Dense Dynamite -- 23070
        [23071] = TRAINER, -- TRAINER,silver Transformer -- 23071
        [23486] = TRAINER, -- Dimensional Ripper - Everlook -- 23486
        [23489] = TRAINER, -- Ultrasafe Transporter - Gadgetzan -- 23489
        [30303] = TRAINER, -- Elemental Blasting Powder -- 30303
        [30304] = TRAINER, -- Fel Iron Casing -- 30304
        [30305] = TRAINER, -- Handful of Fel Iron Bolts -- 30305
        [30306] = TRAINER, -- Adamantite Frame -- 30306
        [30307] = TRAINER, -- Hardened Adamantite Tube -- 30307
        [30308] = TRAINER, -- Khorium Power Core -- 30308
        [30309] = TRAINER, -- Felsteel Stabilizer -- 30309
        [30310] = TRAINER, -- Fel Iron Bomb -- 30310
        [30311] = TRAINER, -- Adamantite Grenade -- 30311
        [30312] = TRAINER, -- Fel Iron Musket -- 30312
        [30346] = TRAINER, -- Fel Iron Shells -- 30346
        [30558] = TRAINER, -- The Bigger One -- 30558
        [30560] = TRAINER, -- Super Sapper Charge -- 30560
        [30563] = TRAINER, -- Goblin Rocket Launcher -- 30563
        [30565] = TRAINER, -- Foreman's Enchanted Helmet -- 30565
        [30566] = TRAINER, -- Foreman's Reinforced Helmet -- 30566
        [30568] = TRAINER, -- Gnomish Flame Turret -- 30568
        [30569] = TRAINER, -- Gnomish Poultryizer -- 30569
        [30570] = TRAINER, -- Nigh-Invulnerability Belt -- 30570
        [30574] = TRAINER, -- Gnomish Power Goggles -- 30574
        [30575] = TRAINER, -- Gnomish Battle Goggles -- 30575
        [36954] = TRAINER, -- Dimensional Ripper - Area 52 -- 36954
        [36955] = TRAINER, -- Ultrasafe Transporter - Toshley's Station -- 36955
        [39971] = TRAINER, -- Icy Blasting Primers -- 39971
        [39973] = TRAINER, -- Frost Grenades -- 39973
        [40274] = TRAINER, -- Furious Gizmatic Goggles -- 40274
        [41307] = TRAINER, -- Gyro-balanced Khorium Destroyer -- 41307
        [41311] = TRAINER, -- Justicebringer 2000 Specs -- 41311
        [41312] = TRAINER, -- Tankatronic Goggles -- 41312
        [41314] = TRAINER, -- Surestrike Goggles v2.0 -- 41314
        [41315] = TRAINER, -- Gadgetstorm Goggles -- 41315
        [41316] = TRAINER, -- Living Replicator Specs -- 41316
        [41317] = TRAINER, -- Deathblow X11 Goggles -- 41317
        [41318] = TRAINER, -- Wonderheal XT40 Shades -- 41318
        [41319] = TRAINER, -- Magnified Moon Specs -- 41319
        [41320] = TRAINER, -- Destruction Holo-gogs -- 41320
        [41321] = TRAINER, -- Powerheal 4000 Lens -- 41321
        [44155] = TRAINER, -- Flying Machine -- 44155
        [44157] = TRAINER, -- Turbo-Charged Flying Machine -- 44157
        [53281] = TRAINER, -- Volatile Blasting Trigger -- 53281
        [54353] = TRAINER, -- Mark "S" Boomstick -- 54353
        [54736] = TRAINER, -- Personal Electromagnetic Pulse Generator -- 54736
        [54793] = TRAINER, -- Frag Belt -- 54793
        [54998] = TRAINER, -- Hand-Mounted Pyro Rocket -- 54998
        [54999] = TRAINER, -- Hyperspeed Accelerators -- 54999
        [55002] = TRAINER, -- Flexweave Underlay -- 55002
        [55016] = TRAINER, -- Nitro Boosts -- 55016
        [56349] = TRAINER, -- Handful of Cobalt Bolts -- 56349
        [56459] = TRAINER, -- Hammer Pick -- 56459
        [56460] = TRAINER, -- Cobalt Frag Bomb -- 56460
        [56461] = TRAINER, -- Bladed Pickaxe -- 56461
        [56462] = TRAINER, -- Gnomish Army Knife -- 56462
        [56463] = TRAINER, -- Explosive Decoy -- 56463
        [56464] = TRAINER, -- Overcharged Capacitor -- 56464
        [56465] = TRAINER, -- Mechanized Snow Goggles -- 56465
        [56466] = TRAINER, -- Sonic Booster -- 56466
        [56467] = TRAINER, -- Noise Machine -- 56467
        [56468] = TRAINER, -- Box of Bombs -- 56468
        [56469] = TRAINER, -- Gnomish Lightning Generator -- 56469
        [56470] = TRAINER, -- Sun Scope -- 56470
        [56471] = TRAINER, -- Froststeel Tube -- 56471
        [56472] = TRAINER, -- MOLL-E -- 56472
        [56473] = TRAINER, -- Gnomish X-Ray Specs -- 56473
        [56474] = TRAINER, -- Mammoth Cutters -- 56474
        [56475] = TRAINER, -- Saronite Razorheads -- 56475
        [56476] = TRAINER, -- Healing Injector Kit -- 56476
        [56477] = TRAINER, -- Mana Injector Kit -- 56477
        [56478] = TRAINER, -- Heartseeker Scope -- 56478
        [56479] = TRAINER, -- Armor Plated Combat Shotgun -- 56479
        [56480] = TRAINER, -- Armored Titanium Goggles -- 56480
        [56481] = TRAINER, -- Weakness Spectralizers -- 56481
        [56483] = TRAINER, -- Charged Titanium Specs -- 56483
        [56484] = TRAINER, -- Visage Liquification Goggles -- 56484
        [56486] = TRAINER, -- Greensight Gogs -- 56486
        [56487] = TRAINER, -- Electroflux Sight Enhancers -- 56487
        [56514] = TRAINER, -- Global Thermal Sapper Charge -- 56514
        [56574] = TRAINER, -- TRAINER,sight Ice Blinders -- 56574
        [60874] = TRAINER, -- Nesingwary 4000 -- 60874
        [61471] = TRAINER, -- Diamond-cut Refractor Scope -- 61471
        [61481] = TRAINER, -- Mechanized Snow Goggles -- 61481
        [61482] = TRAINER, -- Mechanized Snow Goggles -- 61482
        [61483] = TRAINER, -- Mechanized Snow Goggles -- 61483
        [62271] = TRAINER, -- Unbreakable Healing Amplifiers -- 62271
        [63750] = TRAINER, -- High-powered Flashlight -- 63750
        [63765] = TRAINER, -- Springy Arachnoweave -- 63765
        [63770] = TRAINER, -- Reticulated Armor Webbing -- 63770
        [67326] = TRAINER, -- Goblin Beam Welder -- 67326
        [67839] = TRAINER, -- Mind Amplification Dish -- 67839
        [67920] = TRAINER, -- Wormhole Generator: Northrend -- 67920
        [3276] = TRAINER, -- Heavy Linen Bandage -- 3276
        [3277] = TRAINER, -- Wool Bandage -- 3277
        [3278] = TRAINER, -- Heavy Wool Bandage -- 3278
        [7928] = TRAINER, -- Silk Bandage -- 7928
        [7929] = TRAINER, -- Heavy Silk Bandage -- 7929
        [7934] = TRAINER, -- Anti-Venom -- 7934
        [10840] = TRAINER, -- Mageweave Bandage -- 10840
        [10841] = TRAINER, -- Heavy Mageweave Bandage -- 10841
        [18629] = TRAINER, -- Runecloth Bandage -- 18629
        [18630] = TRAINER, -- Heavy Runecloth Bandage -- 18630
        [27032] = TRAINER, -- Netherweave Bandage -- 27032
        [27033] = TRAINER, -- Heavy Netherweave Bandage -- 27033
        [45545] = TRAINER, -- Frostweave Bandage -- 45545
        [48121] = TRAINER, -- Glyph of Entangling Roots -- 48121
        [48247] = TRAINER, -- Mysterious Tarot -- 48247
        [48248] = TRAINER, -- Scroll of Recall -- 48248
        [50598] = TRAINER, -- Scroll of Intellect II -- 50598
        [50599] = TRAINER, -- Scroll of Intellect III -- 50599
        [50600] = TRAINER, -- Scroll of Intellect IV -- 50600
        [50601] = TRAINER, -- Scroll of Intellect V -- 50601
        [50602] = TRAINER, -- Scroll of Intellect VI -- 50602
        [50603] = TRAINER, -- Scroll of Intellect VII -- 50603
        [50604] = TRAINER, -- Scroll of Intellect VIII -- 50604
        [50605] = TRAINER, -- Scroll of Spirit II -- 50605
        [50606] = TRAINER, -- Scroll of Spirit III -- 50606
        [50607] = TRAINER, -- Scroll of Spirit IV -- 50607
        [50608] = TRAINER, -- Scroll of Spirit V -- 50608
        [50609] = TRAINER, -- Scroll of Spirit VI -- 50609
        [50610] = TRAINER, -- Scroll of Spirit VII -- 50610
        [50611] = TRAINER, -- Scroll of Spirit VIII -- 50611
        [50612] = TRAINER, -- Scroll of Stamina II -- 50612
        [50614] = TRAINER, -- Scroll of Stamina III -- 50614
        [50616] = TRAINER, -- Scroll of Stamina IV -- 50616
        [50617] = TRAINER, -- Scroll of Stamina V -- 50617
        [50618] = TRAINER, -- Scroll of Stamina VI -- 50618
        [50619] = TRAINER, -- Scroll of Stamina VII -- 50619
        [50620] = TRAINER, -- Scroll of Stamina VIII -- 50620
        [52739] = TRAINER, -- Armor Vellum -- 52739
        [52840] = TRAINER, -- Weapon Vellum -- 52840
        [52843] = TRAINER, -- Moonglow Ink -- 52843
        [53462] = TRAINER, -- Midnight Ink -- 53462
        [56943] = TRAINER, -- Glyph of Frenzied Regeneration -- 56943
        [56945] = TRAINER, -- Glyph of Healing Touch -- 56945
        [56948] = TRAINER, -- Glyph of Insect Swarm -- 56948
        [56951] = TRAINER, -- Glyph of Moonfire -- 56951
        [56952] = TRAINER, -- Glyph of Rake -- 56952
        [56953] = TRAINER, -- Glyph of Rebirth -- 56953
        [56955] = TRAINER, -- Glyph of Rejuvenation -- 56955
        [56956] = TRAINER, -- Glyph of Rip -- 56956
        [56957] = TRAINER, -- Glyph of Shred -- 56957
        [56959] = TRAINER, -- Glyph of Starfire -- 56959
        [56961] = TRAINER, -- Glyph of Maul -- 56961
        [56963] = TRAINER, -- Glyph of Wrath -- 56963
        [56968] = TRAINER, -- Glyph of Arcane Explosion -- 56968
        [56971] = TRAINER, -- Glyph of Arcane Missiles -- 56971
        [56972] = TRAINER, -- Glyph of Arcane Power -- 56972
        [56973] = TRAINER, -- Glyph of Blink -- 56973
        [56974] = TRAINER, -- Glyph of Evocation -- 56974
        [56976] = TRAINER, -- Glyph of Frost Nova -- 56976
        [56978] = TRAINER, -- Glyph of Ice Armor -- 56978
        [56979] = TRAINER, -- Glyph of Ice Block -- 56979
        [56980] = TRAINER, -- Glyph of Ice Lance -- 56980
        [56981] = TRAINER, -- Glyph of Icy Veins -- 56981
        [56982] = TRAINER, -- Glyph of Scorch -- 56982
        [56984] = TRAINER, -- Glyph of Mage Armor -- 56984
        [56985] = TRAINER, -- Glyph of Mana Gem -- 56985
        [56987] = TRAINER, -- Glyph of Polymorph -- 56987
        [56991] = TRAINER, -- Glyph of Arcane Blast -- 56991
        [56994] = TRAINER, -- Glyph of Aimed Shot -- 56994
        [56995] = TRAINER, -- Glyph of Arcane Shot -- 56995
        [56997] = TRAINER, -- Glyph of Mending -- 56997
        [57000] = TRAINER, -- Glyph of Deterrence -- 57000
        [57001] = TRAINER, -- Glyph of Disengage -- 57001
        [57002] = TRAINER, -- Glyph of Freezing Trap -- 57002
        [57003] = TRAINER, -- Glyph of Frost Trap -- 57003
        [57004] = TRAINER, -- Glyph of Hunter's Mark -- 57004
        [57005] = TRAINER, -- Glyph of Immolation Trap -- 57005
        [57006] = TRAINER, -- Glyph of the Hawk -- 57006
        [57007] = TRAINER, -- Glyph of Multi-Shot -- 57007
        [57008] = TRAINER, -- Glyph of Rapid Fire -- 57008
        [57009] = TRAINER, -- Glyph of Serpent Sting -- 57009
        [57020] = TRAINER, -- Glyph of Cleansing -- 57020
        [57022] = TRAINER, -- Glyph of Spiritual Attunement -- 57022
        [57023] = TRAINER, -- Glyph of Consecration -- 57023
        [57024] = TRAINER, -- Glyph of Crusader Strike -- 57024
        [57025] = TRAINER, -- Glyph of Exorcism -- 57025
        [57026] = TRAINER, -- Glyph of Flash of Light -- 57026
        [57027] = TRAINER, -- Glyph of Hammer of Justice -- 57027
        [57029] = TRAINER, -- Glyph of Holy Light -- 57029
        [57030] = TRAINER, -- Glyph of Judgement -- 57030
        [57031] = TRAINER, -- Glyph of Divinity -- 57031
        [57032] = TRAINER, -- Glyph of Righteous Defense -- 57032
        [57033] = TRAINER, -- Glyph of Seal of Command -- 57033
        [57036] = TRAINER, -- Glyph of Turn Evil -- 57036
        [57113] = TRAINER, -- Glyph of Ambush -- 57113
        [57114] = TRAINER, -- Glyph of Backstab -- 57114
        [57119] = TRAINER, -- Glyph of Evasion -- 57119
        [57120] = TRAINER, -- Glyph of Eviscerate -- 57120
        [57121] = TRAINER, -- Glyph of Expose Armor -- 57121
        [57122] = TRAINER, -- Glyph of Feint -- 57122
        [57123] = TRAINER, -- Glyph of Garrote -- 57123
        [57125] = TRAINER, -- Glyph of Gouge -- 57125
        [57129] = TRAINER, -- Glyph of Sap -- 57129
        [57131] = TRAINER, -- Glyph of Sinister Strike -- 57131
        [57132] = TRAINER, -- Glyph of Slice and Dice -- 57132
        [57133] = TRAINER, -- Glyph of Sprint -- 57133
        [57151] = TRAINER, -- Glyph of Barbaric Insults -- 57151
        [57154] = TRAINER, -- Glyph of Cleaving -- 57154
        [57156] = TRAINER, -- Glyph of Execution -- 57156
        [57157] = TRAINER, -- Glyph of Hamstring -- 57157
        [57158] = TRAINER, -- Glyph of Heroic Strike -- 57158
        [57161] = TRAINER, -- Glyph of Overpower -- 57161
        [57162] = TRAINER, -- Glyph of Rapid Charge -- 57162
        [57163] = TRAINER, -- Glyph of Rending -- 57163
        [57165] = TRAINER, -- Glyph of Revenge -- 57165
        [57167] = TRAINER, -- Glyph of Sunder Armor -- 57167
        [57168] = TRAINER, -- Glyph of Sweeping Strikes -- 57168
        [57172] = TRAINER, -- Glyph of Whirlwind -- 57172
        [57183] = TRAINER, -- Glyph of Dispel Magic -- 57183
        [57184] = TRAINER, -- Glyph of Fade -- 57184
        [57185] = TRAINER, -- Glyph of Fear Ward -- 57185
        [57186] = TRAINER, -- Glyph of Flash Heal -- 57186
        [57187] = TRAINER, -- Glyph of Holy Nova -- 57187
        [57188] = TRAINER, -- Glyph of Inner Fire -- 57188
        [57192] = TRAINER, -- Glyph of Shadow Word: Pain -- 57192
        [57194] = TRAINER, -- Glyph of Power Word: Shield -- 57194
        [57196] = TRAINER, -- Glyph of Psychic Scream -- 57196
        [57197] = TRAINER, -- Glyph of Renew -- 57197
        [57198] = TRAINER, -- Glyph of Scourge Imprisonment -- 57198
        [57200] = TRAINER, -- Glyph of Mind Flay -- 57200
        [57201] = TRAINER, -- Glyph of Smite -- 57201
        [57210] = TRAINER, -- Glyph of Bone Shield -- 57210
        [57213] = TRAINER, -- Glyph of Death Grip -- 57213
        [57216] = TRAINER, -- Glyph of Frost Strike -- 57216
        [57219] = TRAINER, -- Glyph of Icy Touch -- 57219
        [57221] = TRAINER, -- Glyph of Plague Strike -- 57221
        [57222] = TRAINER, -- Glyph of the Ghoul -- 57222
        [57224] = TRAINER, -- Glyph of Scourge Strike -- 57224
        [57225] = TRAINER, -- Glyph of Strangulate -- 57225
        [57226] = TRAINER, -- Glyph of Unbreakable Armor -- 57226
        [57227] = TRAINER, -- Glyph of Vampiric Blood -- 57227
        [57236] = TRAINER, -- Glyph of Earthliving Weapon -- 57236
        [57238] = TRAINER, -- Glyph of Fire Nova -- 57238
        [57239] = TRAINER, -- Glyph of Flame Shock -- 57239
        [57240] = TRAINER, -- Glyph of Flametongue Weapon -- 57240
        [57241] = TRAINER, -- Glyph of Frost Shock -- 57241
        [57242] = TRAINER, -- Glyph of Healing Stream Totem -- 57242
        [57244] = TRAINER, -- Glyph of Lesser Healing Wave -- 57244
        [57245] = TRAINER, -- Glyph of Lightning Bolt -- 57245
        [57246] = TRAINER, -- Glyph of Lightning Shield -- 57246
        [57248] = TRAINER, -- Glyph of Stormstrike -- 57248
        [57249] = TRAINER, -- Glyph of Lava Lash -- 57249
        [57251] = TRAINER, -- Glyph of Water Mastery -- 57251
        [57252] = TRAINER, -- Glyph of Windfury Weapon -- 57252
        [57257] = TRAINER, -- Glyph of Incinerate -- 57257
        [57259] = TRAINER, -- Glyph of Corruption -- 57259
        [57262] = TRAINER, -- Glyph of Fear -- 57262
        [57265] = TRAINER, -- Glyph of Health Funnel -- 57265
        [57266] = TRAINER, -- Glyph of Healthstone -- 57266
        [57269] = TRAINER, -- Glyph of Imp -- 57269
        [57270] = TRAINER, -- Glyph of Searing Pain -- 57270
        [57271] = TRAINER, -- Glyph of Shadow Bolt -- 57271
        [57272] = TRAINER, -- Glyph of Shadowburn -- 57272
        [57274] = TRAINER, -- Glyph of Soulstone -- 57274
        [57275] = TRAINER, -- Glyph of Succubus -- 57275
        [57277] = TRAINER, -- Glyph of Voidwalker -- 57277
        [57703] = TRAINER, -- Hunter's Ink -- 57703
        [57704] = TRAINER, -- Lion's Ink -- 57704
        [57706] = TRAINER, -- Dawnstar Ink -- 57706
        [57707] = TRAINER, -- Jadefire Ink -- 57707
        [57708] = TRAINER, -- Royal Ink -- 57708
        [57709] = TRAINER, -- Celestial Ink -- 57709
        [57710] = TRAINER, -- Fiery Ink -- 57710
        [57711] = TRAINER, -- Shimmering Ink -- 57711
        [57712] = TRAINER, -- Ink of the Sky -- 57712
        [57713] = TRAINER, -- Ethereal Ink -- 57713
        [57714] = TRAINER, -- Darkflame Ink -- 57714
        [57715] = TRAINER, -- Ink of the Sea -- 57715
        [57716] = TRAINER, -- Snowfall Ink -- 57716
        [58472] = TRAINER, -- Scroll of Agility -- 58472
        [58473] = TRAINER, -- Scroll of Agility II -- 58473
        [58476] = TRAINER, -- Scroll of Agility III -- 58476
        [58478] = TRAINER, -- Scroll of Agility IV -- 58478
        [58480] = TRAINER, -- Scroll of Agility V -- 58480
        [58481] = TRAINER, -- Scroll of Agility VI -- 58481
        [58482] = TRAINER, -- Scroll of Agility VII -- 58482
        [58483] = TRAINER, -- Scroll of Agility VIII -- 58483
        [58484] = TRAINER, -- Scroll of Strength -- 58484
        [58485] = TRAINER, -- Scroll of Strength II -- 58485
        [58486] = TRAINER, -- Scroll of Strength III -- 58486
        [58487] = TRAINER, -- Scroll of Strength IV -- 58487
        [58488] = TRAINER, -- Scroll of Strength V -- 58488
        [58489] = TRAINER, -- Scroll of Strength VI -- 58489
        [58490] = TRAINER, -- Scroll of Strength VII -- 58490
        [58491] = TRAINER, -- Scroll of Strength VIII -- 58491
        [58565] = TRAINER, -- Mystic Tome -- 58565
        [59338] = TRAINER, -- Glyph of Rune Tap -- 59338
        [59339] = TRAINER, -- Glyph of Blood Strike -- 59339
        [59340] = TRAINER, -- Glyph of Death Strike -- 59340
        [59387] = TRAINER, -- Certificate of Ownership -- 59387
        [59475] = TRAINER, -- Tome of the Dawn -- 59475
        [59478] = TRAINER, -- Book of Survival -- 59478
        [59480] = TRAINER, -- Strange Tarot -- 59480
        [59484] = TRAINER, -- Tome of Kings -- 59484
        [59486] = TRAINER, -- Royal Guide of Escape Routes -- 59486
        [59487] = TRAINER, -- Arcane Tarot -- 59487
        [59488] = TRAINER, -- Weapon Vellum II -- 59488
        [59489] = TRAINER, -- Fire Eater's Guide -- 59489
        [59490] = TRAINER, -- Book of Stars -- 59490
        [59491] = TRAINER, -- Shadowy Tarot -- 59491
        [59493] = TRAINER, -- Stormbound Tome -- 59493
        [59494] = TRAINER, -- Manual of Clouds -- 59494
        [59495] = TRAINER, -- Hellfire Tome -- 59495
        [59496] = TRAINER, -- Book of Clever Tricks -- 59496
        [59497] = TRAINER, -- Iron-bound Tome -- 59497
        [59498] = TRAINER, -- Faces of Doom -- 59498
        [59499] = TRAINER, -- Armor Vellum II -- 59499
        [59500] = TRAINER, -- Armor Vellum III -- 59500
        [59501] = TRAINER, -- Weapon Vellum III -- 59501
        [59502] = TRAINER, -- Darkmoon Card -- 59502
        [59503] = TRAINER, -- Greater Darkmoon Card -- 59503
        [59504] = TRAINER, -- Darkmoon Card of the North -- 59504
        [60336] = TRAINER, -- Scroll of Recall II -- 60336
        [60337] = TRAINER, -- Scroll of Recall III -- 60337
        [61117] = TRAINER, -- Master's Inscription of the Axe -- 61117
        [61118] = TRAINER, -- Master's Inscription of the Crag -- 61118
        [61119] = TRAINER, -- Master's Inscription of the Pinnacle -- 61119
        [61120] = TRAINER, -- Master's Inscription of the Storm -- 61120
        [61177] = TRAINER, -- Northrend Inscription Research -- 61177
        [61288] = TRAINER, -- Minor Inscription Research -- 61288
        [62162] = TRAINER, -- Glyph of Focus -- 62162
        [64053] = TRAINER, -- Twilight Tome -- 64053
        [64258] = TRAINER, -- Glyph of Monsoon -- 64258
        [64259] = TRAINER, -- Glyph of Pain Suppression -- 64259
        [64260] = TRAINER, -- Glyph of Mutilate -- 64260
        [64261] = TRAINER, -- Glyph of Earth Shield -- 64261
        [64262] = TRAINER, -- Glyph of Totem of Wrath -- 64262
        [64266] = TRAINER, -- Glyph of Dark Death -- 64266
        [64267] = TRAINER, -- Glyph of Disease -- 64267
        [67600] = TRAINER, -- Glyph of Claw -- 67600
        [69385] = TRAINER, -- Runescroll of Fortitude -- 69385
        [25278] = TRAINER, -- Bronze Setting -- 25278
        [25280] = TRAINER, -- Elegant Silver Ring -- 25280
        [25283] = TRAINER, -- Inlaid Malachite Ring -- 25283
        [25284] = TRAINER, -- Simple Pearl Ring -- 25284
        [25287] = TRAINER, -- Gloom Band -- 25287
        [25305] = TRAINER, -- Heavy Silver Ring -- 25305
        [25317] = TRAINER, -- Ring of Silver Might -- 25317
        [25318] = TRAINER, -- Ring of Twilight Shadows -- 25318
        [25321] = TRAINER, -- Moonsoul Crown -- 25321
        [25490] = TRAINER, -- Solid Bronze Ring -- 25490
        [25498] = TRAINER, -- Barbaric Iron Collar -- 25498
        [25613] = TRAINER, -- Golden Dragon Ring -- 25613
        [25615] = TRAINER, -- Mithril Filigree -- 25615
        [25620] = TRAINER, -- Engraved TRAINER,silver Ring -- 25620
        [25621] = TRAINER, -- Citrine Ring of Rapid Healing -- 25621
        [26872] = TRAINER, -- Figurine - Jade Owl -- 26872
        [26874] = TRAINER, -- Aquamarine Signet -- 26874
        [26876] = TRAINER, -- Aquamarine Pendant of the Warrior -- 26876
        [26880] = TRAINER, -- Thorium Setting -- 26880
        [26883] = TRAINER, -- Ruby Pendant of Fire -- 26883
        [26885] = TRAINER, -- TRAINER,silver Healing Ring -- 26885
        [26902] = TRAINER, -- Simple Opal Ring -- 26902
        [26903] = TRAINER, -- Sapphire Signet -- 26903
        [26907] = TRAINER, -- Onslaught Ring -- 26907
        [26908] = TRAINER, -- Sapphire Pendant of Winter Night -- 26908
        [26911] = TRAINER, -- Living Emerald Pendant -- 26911
        [26916] = TRAINER, -- Band of Natural Fire -- 26916
        [26926] = TRAINER, -- Heavy Copper Ring -- 26926
        [26927] = TRAINER, -- Thick Bronze Necklace -- 26927
        [26928] = TRAINER, -- Ornate Tigerseye Necklace -- 26928
        [28903] = TRAINER, -- Teardrop Blood Garnet -- 28903
        [28905] = TRAINER, -- Bold Blood Garnet -- 28905
        [28910] = TRAINER, -- Inscribed Flame Spessarite -- 28910
        [28914] = TRAINER, -- Glinting Flame Spessarite -- 28914
        [28916] = TRAINER, -- Radiant Deep Peridot -- 28916
        [28917] = TRAINER, -- Jagged Deep Peridot -- 28917
        [28925] = TRAINER, -- Glowing Shadow Draenite -- 28925
        [28936] = TRAINER, -- Sovereign Shadow Draenite -- 28936
        [28938] = TRAINER, -- Brilliant Golden Draenite -- 28938
        [28948] = TRAINER, -- Rigid Golden Draenite -- 28948
        [28950] = TRAINER, -- Solid Azure Moonstone -- 28950
        [28953] = TRAINER, -- Sparkling Azure Moonstone -- 28953
        [31048] = TRAINER, -- Fel Iron Blood Ring -- 31048
        [31049] = TRAINER, -- Golden Draenite Ring -- 31049
        [31050] = TRAINER, -- Azure Moonstone Ring -- 31050
        [31051] = TRAINER, -- Thick Adamantite Necklace -- 31051
        [31052] = TRAINER, -- Heavy Adamantite Ring -- 31052
        [32178] = TRAINER, -- Malachite Pendant -- 32178
        [32179] = TRAINER, -- Tigerseye Band -- 32179
        [32801] = TRAINER, -- Coarse Stone Statue -- 32801
        [32807] = TRAINER, -- Heavy Stone Statue -- 32807
        [32808] = TRAINER, -- Solid Stone Statue -- 32808
        [32809] = TRAINER, -- Dense Stone Statue -- 32809
        [34069] = TRAINER, -- Smooth Golden Draenite -- 34069
        [34590] = TRAINER, -- Bright Blood Garnet -- 34590
        [34955] = TRAINER, -- Golden Ring of Power -- 34955
        [34959] = TRAINER, -- TRAINER,silver Commander's Ring -- 34959
        [34960] = TRAINER, -- Glowing Thorium Band -- 34960
        [34961] = TRAINER, -- Emerald Lion Ring -- 34961
        [36523] = TRAINER, -- Brilliant Necklace -- 36523
        [36524] = TRAINER, -- Heavy Jade Ring -- 36524
        [36525] = TRAINER, -- Red Ring of Destruction -- 36525
        [36526] = TRAINER, -- Diamond Focus Ring -- 36526
        [37818] = TRAINER, -- Bronze Band of Force -- 37818
        [38068] = TRAINER, -- Mercurial Adamantite -- 38068
        [38175] = TRAINER, -- Bronze Torc -- 38175
        [40514] = TRAINER, -- Necklace of the Deep -- 40514
        [41414] = TRAINER, -- Brilliant Pearl Band -- 41414
        [41415] = TRAINER, -- The Black Pearl -- 41415
        [41418] = TRAINER, -- Crown of the Sea Witch -- 41418
        [41420] = TRAINER, -- Purified Jaggal Pearl -- 41420
        [41429] = TRAINER, -- Purified Shadow Pearl -- 41429
        [47280] = TRAINER, -- Brilliant Glass -- 47280
        [53831] = TRAINER, -- Bold Bloodstone -- 53831
        [53832] = TRAINER, -- Delicate Bloodstone -- 53832
        [53834] = TRAINER, -- Runed Bloodstone -- 53834
        [53835] = TRAINER, -- Bright Bloodstone -- 53835
        [53843] = TRAINER, -- Subtle Bloodstone -- 53843
        [53844] = TRAINER, -- Flashing Bloodstone -- 53844
        [53845] = TRAINER, -- Fractured Bloodstone -- 53845
        [53852] = TRAINER, -- Brilliant Sun Crystal -- 53852
        [53853] = TRAINER, -- Smooth Sun Crystal -- 53853
        [53854] = TRAINER, -- Rigid Sun Crystal -- 53854
        [53855] = TRAINER, -- Thick Sun Crystal -- 53855
        [53856] = TRAINER, -- Quick Sun Crystal -- 53856
        [53859] = TRAINER, -- Sovereign Shadow Crystal -- 53859
        [53860] = TRAINER, -- Shifting Shadow Crystal -- 53860
        [53861] = TRAINER, -- Tenuous Shadow Crystal -- 53861
        [53862] = TRAINER, -- Glowing Shadow Crystal -- 53862
        [53863] = TRAINER, -- Purified Shadow Crystal -- 53863
        [53864] = TRAINER, -- Royal Shadow Crystal -- 53864
        [53866] = TRAINER, -- Balanced Shadow Crystal -- 53866
        [53867] = TRAINER, -- Infused Shadow Crystal -- 53867
        [53868] = TRAINER, -- Regal Shadow Crystal -- 53868
        [53870] = TRAINER, -- Puissant Shadow Crystal -- 53870
        [53871] = TRAINER, -- Guardian's Shadow Crystal -- 53871
        [53872] = TRAINER, -- Inscribed Huge Citrine -- 53872
        [53873] = TRAINER, -- Etched Huge Citrine -- 53873
        [53874] = TRAINER, -- Champion's Huge Citrine -- 53874
        [53876] = TRAINER, -- Fierce Huge Citrine -- 53876
        [53878] = TRAINER, -- Glinting Huge Citrine -- 53878
        [53880] = TRAINER, -- Deft Huge Citrine -- 53880
        [53881] = TRAINER, -- Luminous Huge Citrine -- 53881
        [53882] = TRAINER, -- Potent Huge Citrine -- 53882
        [53883] = TRAINER, -- Veiled Huge Citrine -- 53883
        [53886] = TRAINER, -- Wicked Huge Citrine -- 53886
        [53887] = TRAINER, -- Pristine Huge Citrine -- 53887
        [53889] = TRAINER, -- Stark Huge Citrine -- 53889
        [53890] = TRAINER, -- Stalwart Huge Citrine -- 53890
        [53891] = TRAINER, -- Glimmering Huge Citrine -- 53891
        [53892] = TRAINER, -- Accurate Huge Citrine -- 53892
        [53893] = TRAINER, -- Resolute Huge Citrine -- 53893
        [53894] = TRAINER, -- Timeless Dark Jade -- 53894
        [53916] = TRAINER, -- Jagged Dark Jade -- 53916
        [53918] = TRAINER, -- Enduring Dark Jade -- 53918
        [53920] = TRAINER, -- Forceful Dark Jade -- 53920
        [53922] = TRAINER, -- Misty Dark Jade -- 53922
        [53923] = TRAINER, -- Shining Dark Jade -- 53923
        [53925] = TRAINER, -- Intricate Dark Jade -- 53925
        [53926] = TRAINER, -- Dazzling Dark Jade -- 53926
        [53927] = TRAINER, -- Sundered Dark Jade -- 53927
        [53928] = TRAINER, -- Lambent Dark Jade -- 53928
        [53930] = TRAINER, -- Energized Dark Jade -- 53930
        [53931] = TRAINER, -- Radiant Dark Jade -- 53931
        [53934] = TRAINER, -- Solid Chalcedony -- 53934
        [53940] = TRAINER, -- Sparkling Chalcedony -- 53940
        [53941] = TRAINER, -- Lustrous Chalcedony -- 53941
        [53947] = TRAINER, -- Bright Scarlet Ruby -- 53947
        [53953] = TRAINER, -- Sparkling Sky Sapphire -- 53953
        [53956] = TRAINER, -- Brilliant Autumn's Glow -- 53956
        [53969] = TRAINER, -- Balanced Twilight Opal -- 53969
        [53989] = TRAINER, -- Pristine Monarch Topaz -- 53989
        [54007] = TRAINER, -- Dazzling Forest Emerald -- 54007
        [54017] = TRAINER, -- Precise Bloodstone -- 54017
        [55386] = TRAINER, -- Tireless Skyflare Diamond -- 55386
        [55394] = TRAINER, -- Swift Skyflare Diamond -- 55394
        [55399] = TRAINER, -- Powerful Earthsiege Diamond -- 55399
        [55402] = TRAINER, -- Persistent Earthsiege Diamond -- 55402
        [56193] = TRAINER, -- Bloodstone Band -- 56193
        [56194] = TRAINER, -- Sun Rock Ring -- 56194
        [56195] = TRAINER, -- Jade Dagger Pendant -- 56195
        [56196] = TRAINER, -- Blood Sun Necklace -- 56196
        [56197] = TRAINER, -- Dream Signet -- 56197
        [56199] = TRAINER, -- Ruby Hare -- 56199
        [56201] = TRAINER, -- Twilight Serpent -- 56201
        [56202] = TRAINER, -- Sapphire Owl -- 56202
        [56203] = TRAINER, -- Emerald Boar -- 56203
        [56205] = TRAINER, -- Dark Jade Focusing Lens -- 56205
        [56206] = TRAINER, -- Shadow Crystal Focusing Lens -- 56206
        [56208] = TRAINER, -- Shadow Jade Focusing Lens -- 56208
        [56530] = TRAINER, -- Enchanted Pearl -- 56530
        [56531] = TRAINER, -- Enchanted Tear -- 56531
        [58141] = TRAINER, -- Crystal Citrine Necklace -- 58141
        [58142] = TRAINER, -- Crystal Chalcedony Amulet -- 58142
        [58143] = TRAINER, -- Earthshadow Ring -- 58143
        [58144] = TRAINER, -- Jade Ring of Slaying -- 58144
        [58145] = TRAINER, -- Stoneguard Band -- 58145
        [58146] = TRAINER, -- Shadowmight Ring -- 58146
        [59759] = TRAINER, -- Monarch Crab -- 59759
        [62242] = TRAINER, -- Icy Prism -- 62242
        [62941] = TRAINER, -- Prismatic Black Diamond -- 62941
        [63743] = TRAINER, -- Amulet of TRAINER,sight -- 63743
        [64725] = TRAINER, -- Emerald Choker -- 64725
        [64726] = TRAINER, -- Sky Sapphire Amulet -- 64726
        [64727] = TRAINER, -- Runed Mana Band -- 64727
        [64728] = TRAINER, -- Scarlet Signet -- 64728
        [2153] = TRAINER, -- Handstitched Leather Pants -- 2153
        [2159] = TRAINER, -- Fine Leather Cloak -- 2159
        [2160] = TRAINER, -- Embossed Leather Vest -- 2160
        [2161] = TRAINER, -- Embossed Leather Boots -- 2161
        [2162] = TRAINER, -- Embossed Leather Cloak -- 2162
        [2165] = TRAINER, -- Medium Armor Kit -- 2165
        [2166] = TRAINER, -- Toughened Leather Armor -- 2166
        [2167] = TRAINER, -- Dark Leather Boots -- 2167
        [2168] = TRAINER, -- Dark Leather Cloak -- 2168
        [3753] = TRAINER, -- Handstitched Leather Belt -- 3753
        [3756] = TRAINER, -- Embossed Leather Gloves -- 3756
        [3759] = TRAINER, -- Embossed Leather Pants -- 3759
        [3760] = TRAINER, -- Hillman's Cloak -- 3760
        [3761] = TRAINER, -- Fine Leather Tunic -- 3761
        [3763] = TRAINER, -- Fine Leather Belt -- 3763
        [3764] = TRAINER, -- Hillman's Leather Gloves -- 3764
        [3766] = TRAINER, -- Dark Leather Belt -- 3766
        [3768] = TRAINER, -- Hillman's Shoulders -- 3768
        [3770] = TRAINER, -- Toughened Leather Gloves -- 3770
        [3774] = TRAINER, -- Green Leather Belt -- 3774
        [3776] = TRAINER, -- Green Leather Bracers -- 3776
        [3780] = TRAINER, -- Heavy Armor Kit -- 3780
        [3816] = TRAINER, -- Cured Light Hide -- 3816
        [3817] = TRAINER, -- Cured Medium Hide -- 3817
        [3818] = TRAINER, -- Cured Heavy Hide -- 3818
        [6661] = TRAINER, -- Barbaric Harness -- 6661
        [7135] = TRAINER, -- Dark Leather Pants -- 7135
        [7147] = TRAINER, -- Guardian Pants -- 7147
        [7151] = TRAINER, -- Barbaric Shoulders -- 7151
        [7156] = TRAINER, -- Guardian Gloves -- 7156
        [9060] = TRAINER, -- Light Leather Quiver -- 9060
        [9062] = TRAINER, -- Small Leather Ammo Pouch -- 9062
        [9065] = TRAINER, -- Light Leather Bracers -- 9065
        [9068] = TRAINER, -- Light Leather Pants -- 9068
        [9074] = TRAINER, -- Nimble Leather Gloves -- 9074
        [9145] = TRAINER, -- Fletcher's Gloves -- 9145
        [9193] = TRAINER, -- Heavy Quiver -- 9193
        [9194] = TRAINER, -- Heavy Leather Ammo Pouch -- 9194
        [9196] = TRAINER, -- Dusky Leather Armor -- 9196
        [9198] = TRAINER, -- Frost Leather Cloak -- 9198
        [9201] = TRAINER, -- Dusky Bracers -- 9201
        [9206] = TRAINER, -- Dusky Belt -- 9206
        [10482] = TRAINER, -- Cured Thick Hide -- 10482
        [10487] = TRAINER, -- Thick Armor Kit -- 10487
        [10499] = TRAINER, -- Nightscape Tunic -- 10499
        [10507] = TRAINER, -- Nightscape Headband -- 10507
        [10511] = TRAINER, -- Turtle Scale Breastplate -- 10511
        [10518] = TRAINER, -- Turtle Scale Bracers -- 10518
        [10548] = TRAINER, -- Nightscape Pants -- 10548
        [10552] = TRAINER, -- Turtle Scale Helm -- 10552
        [10556] = TRAINER, -- Turtle Scale Leggings -- 10556
        [10558] = TRAINER, -- Nightscape Boots -- 10558
        [10619] = TRAINER, -- Dragonscale Gauntlets -- 10619
        [10621] = TRAINER, -- Wolfshead Helm -- 10621
        [10630] = TRAINER, -- Gauntlets of the Sea -- 10630
        [10632] = TRAINER, -- Helm of Fire -- 10632
        [10647] = TRAINER, -- Feathered Breastplate -- 10647
        [10650] = TRAINER, -- Dragonscale Breastplate -- 10650
        [14930] = TRAINER, -- Quickdraw Quiver -- 14930
        [14932] = TRAINER, -- Thick Leather Ammo Pouch -- 14932
        [19047] = TRAINER, -- Cured Rugged Hide -- 19047
        [19052] = TRAINER, -- Wicked Leather Bracers -- 19052
        [19055] = TRAINER,
        [19058] = TRAINER, -- Rugged Armor Kit -- 19058
        [19065] = TRAINER, -- Runic Leather Bracers -- 19065
        [19071] = TRAINER, -- Wicked Leather Headband -- 19071
        [19072] = TRAINER, -- Runic Leather Belt -- 19072
        [19082] = TRAINER, -- Runic Leather Headband -- 19082
        [19083] = TRAINER, -- Wicked Leather Pants -- 19083
        [19091] = TRAINER, -- Runic Leather Pants -- 19091
        [19092] = TRAINER, -- Wicked Leather Belt -- 19092
        [19098] = TRAINER, -- Wicked Leather Armor -- 19098
        [19102] = TRAINER, -- Runic Leather Armor -- 19102
        [19103] = TRAINER, -- Runic Leather Shoulders -- 19103
        [20648] = TRAINER, -- Medium Leather -- 20648
        [20649] = TRAINER, -- Heavy Leather -- 20649
        [20650] = TRAINER, -- Thick Leather -- 20650
        [22331] = TRAINER, -- Rugged Leather -- 22331
        [24654] = TRAINER, -- Blue Dragonscale Leggings -- 24654
        [24655] = TRAINER, -- Green Dragonscale Gauntlets -- 24655
        [32454] = TRAINER, -- Knothide Leather -- 32454
        [32456] = TRAINER, -- Knothide Armor Kit -- 32456
        [32462] = TRAINER, -- Felscale Gloves -- 32462
        [32463] = TRAINER, -- Felscale Boots -- 32463
        [32464] = TRAINER, -- Felscale Pants -- 32464
        [32465] = TRAINER, -- Felscale Breastplate -- 32465
        [32466] = TRAINER, -- Scaled Draenic Pants -- 32466
        [32467] = TRAINER, -- Scaled Draenic Gloves -- 32467
        [32468] = TRAINER, -- Scaled Draenic Vest -- 32468
        [32469] = TRAINER, -- Scaled Draenic Boots -- 32469
        [32470] = TRAINER, -- Thick Draenic Gloves -- 32470
        [32471] = TRAINER, -- Thick Draenic Pants -- 32471
        [32472] = TRAINER, -- Thick Draenic Boots -- 32472
        [32473] = TRAINER, -- Thick Draenic Vest -- 32473
        [32478] = TRAINER, -- Wild Draenish Boots -- 32478
        [32479] = TRAINER, -- Wild Draenish Gloves -- 32479
        [32480] = TRAINER, -- Wild Draenish Leggings -- 32480
        [32481] = TRAINER, -- Wild Draenish Vest -- 32481
        [35540] = TRAINER, -- Drums of War -- 35540
        [35575] = TRAINER, -- Ebon Netherscale Breastplate -- 35575
        [35576] = TRAINER, -- Ebon Netherscale Belt -- 35576
        [35577] = TRAINER, -- Ebon Netherscale Bracers -- 35577
        [35580] = TRAINER, -- Netherstrike Breastplate -- 35580
        [35582] = TRAINER, -- Netherstrike Belt -- 35582
        [35584] = TRAINER, -- Netherstrike Bracers -- 35584
        [35585] = TRAINER, -- Windhawk Hauberk -- 35585
        [35587] = TRAINER, -- Windhawk Belt -- 35587
        [35588] = TRAINER, -- Windhawk Bracers -- 35588
        [35589] = TRAINER, -- Primalstrike Vest -- 35589
        [35590] = TRAINER, -- Primalstrike Belt -- 35590
        [35591] = TRAINER, -- Primalstrike Bracers -- 35591
        [36074] = TRAINER, -- Blackstorm Leggings -- 36074
        [36075] = TRAINER, -- Wildfeather Leggings -- 36075
        [36076] = TRAINER, -- Dragonstrike Leggings -- 36076
        [36077] = TRAINER, -- Primalstorm Breastplate -- 36077
        [36078] = TRAINER, -- Living Crystal Breastplate -- 36078
        [36079] = TRAINER, -- Golden Dragonstrike Breastplate -- 36079
        [44343] = TRAINER, -- Knothide Ammo Pouch -- 44343
        [44344] = TRAINER, -- Knothide Quiver -- 44344
        [44770] = TRAINER, -- Glove Reinforcements -- 44770
        [44970] = TRAINER, -- Heavy Knothide Armor Kit -- 44970
        [45100] = TRAINER, -- Leatherworker's Satchel -- 45100
        [50936] = TRAINER, -- Heavy Borean Leather -- 50936
        [50938] = TRAINER, -- Iceborne Chestguard -- 50938
        [50939] = TRAINER, -- Iceborne Leggings -- 50939
        [50940] = TRAINER, -- Iceborne Shoulderpads -- 50940
        [50941] = TRAINER, -- Iceborne Gloves -- 50941
        [50942] = TRAINER, -- Iceborne Boots -- 50942
        [50943] = TRAINER, -- Iceborne Belt -- 50943
        [50944] = TRAINER, -- Arctic Chestpiece -- 50944
        [50945] = TRAINER, -- Arctic Leggings -- 50945
        [50946] = TRAINER, -- Arctic Shoulderpads -- 50946
        [50947] = TRAINER, -- Arctic Gloves -- 50947
        [50948] = TRAINER, -- Arctic Boots -- 50948
        [50949] = TRAINER, -- Arctic Belt -- 50949
        [50950] = TRAINER, -- Frostscale Chestguard -- 50950
        [50951] = TRAINER, -- Frostscale Leggings -- 50951
        [50952] = TRAINER, -- Frostscale Shoulders -- 50952
        [50953] = TRAINER, -- Frostscale Gloves -- 50953
        [50954] = TRAINER, -- Frostscale Boots -- 50954
        [50955] = TRAINER, -- Frostscale Belt -- 50955
        [50956] = TRAINER, -- Nerubian Chestguard -- 50956
        [50957] = TRAINER, -- Nerubian Legguards -- 50957
        [50958] = TRAINER, -- Nerubian Shoulders -- 50958
        [50959] = TRAINER, -- Nerubian Gloves -- 50959
        [50960] = TRAINER, -- Nerubian Boots -- 50960
        [50961] = TRAINER, -- Nerubian Belt -- 50961
        [50962] = TRAINER, -- Borean Armor Kit -- 50962
        [50963] = TRAINER, -- Heavy Borean Armor Kit -- 50963
        [50964] = TRAINER, -- Jormungar Leg Armor -- 50964
        [50965] = TRAINER, -- Frosthide Leg Armor -- 50965
        [50966] = TRAINER, -- Nerubian Leg Armor -- 50966
        [50967] = TRAINER, -- Icescale Leg Armor -- 50967
        [51568] = TRAINER, -- Black Chitinguard Boots -- 51568
        [51569] = TRAINER, -- Dark Arctic Leggings -- 51569
        [51570] = TRAINER, -- Dark Arctic Chestpiece -- 51570
        [51571] = TRAINER, -- Arctic Wristguards -- 51571
        [51572] = TRAINER, -- Arctic Helm -- 51572
        [55199] = TRAINER, -- Cloak of Tormented Skies -- 55199
        [57683] = TRAINER, -- Fur Lining - Attack Power -- 57683
        [57690] = TRAINER, -- Fur Lining - Stamina -- 57690
        [57691] = TRAINER, -- Fur Lining - Spell Power -- 57691
        [60583] = TRAINER, -- Jormungar Leg Reinforcements -- 60583
        [60584] = TRAINER, -- Nerubian Leg Reinforcements -- 60584
        [60599] = TRAINER, -- Frostscale Bracers -- 60599
        [60600] = TRAINER, -- Frostscale Helm -- 60600
        [60601] = TRAINER, -- Dark Frostscale Leggings -- 60601
        [60604] = TRAINER, -- Dark Frostscale Breastplate -- 60604
        [60605] = TRAINER, -- Dragonstompers -- 60605
        [60607] = TRAINER, -- Iceborne Wristguards -- 60607
        [60608] = TRAINER, -- Iceborne Helm -- 60608
        [60611] = TRAINER, -- Dark Iceborne Leggings -- 60611
        [60613] = TRAINER, -- Dark Iceborne Chestguard -- 60613
        [60620] = TRAINER, -- Bugsquashers -- 60620
        [60622] = TRAINER, -- Nerubian Bracers -- 60622
        [60624] = TRAINER, -- Nerubian Helm -- 60624
        [60627] = TRAINER, -- Dark Nerubian Leggings -- 60627
        [60629] = TRAINER, -- Dark Nerubian Chestpiece -- 60629
        [60630] = TRAINER, -- Scaled Icewalkers -- 60630
        [60631] = TRAINER, -- Cloak of Harsh Winds -- 60631
        [60637] = TRAINER, -- Ice Striker's Cloak -- 60637
        [60640] = TRAINER, -- Durable Nerubhide Cape -- 60640
        [60643] = TRAINER, -- Pack of Endless Pockets -- 60643
        [60649] = TRAINER, -- Razorstrike Breastplate -- 60649
        [60651] = TRAINER, -- Virulent Spaulders -- 60651
        [60652] = TRAINER, -- Eaglebane Bracers -- 60652
        [60655] = TRAINER, -- Nightshock Hood -- 60655
        [60658] = TRAINER, -- Nightshock Girdle -- 60658
        [60660] = TRAINER, -- Leggings of Visceral Strikes -- 60660
        [60665] = TRAINER, -- Seafoam Gauntlets -- 60665
        [60666] = TRAINER, -- Jormscale Footpads -- 60666
        [60669] = TRAINER, -- Wildscale Breastplate -- 60669
        [60671] = TRAINER, -- Purehorn Spaulders -- 60671
        [62448] = TRAINER, -- Earthen Leg Armor -- 62448
        [64661] = TRAINER, -- Borean Leather -- 64661
        [69386] = TRAINER, -- Drums of Forgotten Kings -- 69386
        [69388] = TRAINER, -- Drums of the Wild -- 69388
        [2658] = TRAINER, -- Smelt Silver -- 2658
        [2659] = TRAINER, -- Smelt Bronze -- 2659
        [3304] = TRAINER, -- Smelt Tin -- 3304
        [3307] = TRAINER, -- Smelt Iron -- 3307
        [3308] = TRAINER, -- Smelt Gold -- 3308
        [3569] = TRAINER, -- Smelt Steel -- 3569
        [10097] = TRAINER, -- Smelt Mithril -- 10097
        [10098] = TRAINER, -- Smelt TRAINER,silver -- 10098
        [16153] = TRAINER, -- Smelt Thorium -- 16153
        [29356] = TRAINER, -- Smelt Fel Iron -- 29356
        [29358] = TRAINER, -- Smelt Adamantite -- 29358
        [29359] = TRAINER, -- Smelt Eternium -- 29359
        [29360] = TRAINER, -- Smelt Felsteel -- 29360
        [29361] = TRAINER, -- Smelt Khorium -- 29361
        [29686] = TRAINER, -- Smelt Hardened Adamantite -- 29686
        [35750] = TRAINER, -- Earth Shatter -- 35750
        [35751] = TRAINER, -- Fire Sunder -- 35751
        [49252] = TRAINER, -- Smelt Cobalt -- 49252
        [49258] = TRAINER, -- Smelt Saronite -- 49258
        [55208] = TRAINER, -- Smelt Titansteel -- 55208
        [55211] = TRAINER, -- Smelt Titanium -- 55211
        [70524] = TRAINER, -- Enchanted Thorium -- 70524
        [2385] = TRAINER, -- Brown Linen Vest -- 2385
        [2386] = TRAINER, -- Linen Boots -- 2386
        [2392] = TRAINER, -- Red Linen Shirt -- 2392
        [2393] = TRAINER, -- White Linen Shirt -- 2393
        [2394] = TRAINER, -- Blue Linen Shirt -- 2394
        [2395] = TRAINER, -- Barbaric Linen Vest -- 2395
        [2396] = TRAINER, -- Green Linen Shirt -- 2396
        [2397] = TRAINER, -- Reinforced Linen Cape -- 2397
        [2399] = TRAINER, -- Green Woolen Vest -- 2399
        [2401] = TRAINER, -- Woolen Boots -- 2401
        [2402] = TRAINER, -- Woolen Cape -- 2402
        [2406] = TRAINER, -- Gray Woolen Shirt -- 2406
        [2964] = TRAINER, -- Bolt of Woolen Cloth -- 2964
        [3755] = TRAINER, -- Linen Bag -- 3755
        [3757] = TRAINER, -- Woolen Bag -- 3757
        [3813] = TRAINER, -- Small Silk Pack -- 3813
        [3839] = TRAINER, -- Bolt of Silk Cloth -- 3839
        [3840] = TRAINER, -- Heavy Linen Gloves -- 3840
        [3841] = TRAINER, -- Green Linen Bracers -- 3841
        [3842] = TRAINER, -- Handstitched Linen Britches -- 3842
        [3843] = TRAINER, -- Heavy Woolen Gloves -- 3843
        [3845] = TRAINER, -- Soft-soled Linen Boots -- 3845
        [3848] = TRAINER, -- Double-stitched Woolen Shoulders -- 3848
        [3850] = TRAINER, -- Heavy Woolen Pants -- 3850
        [3852] = TRAINER, -- Gloves of Meditation -- 3852
        [3855] = TRAINER, -- Spidersilk Boots -- 3855
        [3859] = TRAINER, -- Azure Silk Vest -- 3859
        [3861] = TRAINER, -- Long Silken Cloak -- 3861
        [3865] = TRAINER, -- Bolt of Mageweave -- 3865
        [3866] = TRAINER, -- Stylish Red Shirt -- 3866
        [3871] = TRAINER, -- Formal White Shirt -- 3871
        [3914] = TRAINER, -- Brown Linen Pants -- 3914
        [6521] = TRAINER, -- Pearl-clasped Cloak -- 6521
        [6690] = TRAINER, -- Lesser Wizard's Robe -- 6690
        [7623] = TRAINER, -- Brown Linen Robe -- 7623
        [7624] = TRAINER, -- White Linen Robe -- 7624
        [8465] = TRAINER, -- Simple Dress -- 8465
        [8467] = TRAINER, -- White Woolen Dress -- 8467
        [8483] = TRAINER, -- White Swashbuckler's Shirt -- 8483
        [8489] = TRAINER, -- Red Swashbuckler's Shirt -- 8489
        [8758] = TRAINER, -- Azure Silk Pants -- 8758
        [8760] = TRAINER, -- Azure Silk Hood -- 8760
        [8762] = TRAINER, -- Silk Headband -- 8762
        [8764] = TRAINER, -- Earthen Vest -- 8764
        [8766] = TRAINER, -- Azure Silk Belt -- 8766
        [8770] = TRAINER, -- Robe of Power -- 8770
        [8772] = TRAINER, -- Crimson Silk Belt -- 8772
        [8774] = TRAINER, -- Green Silken Shoulders -- 8774
        [8776] = TRAINER, -- Linen Belt -- 8776
        [8791] = TRAINER, -- Crimson Silk Vest -- 8791
        [8799] = TRAINER, -- Crimson Silk Pantaloons -- 8799
        [8804] = TRAINER, -- Crimson Silk Gloves -- 8804
        [12045] = TRAINER, -- Simple Linen Boots -- 12045
        [12046] = TRAINER, -- Simple Kilt -- 12046
        [12048] = TRAINER, -- Black Mageweave Vest -- 12048
        [12049] = TRAINER, -- Black Mageweave Leggings -- 12049
        [12050] = TRAINER, -- Black Mageweave Robe -- 12050
        [12052] = TRAINER, -- Shadoweave Pants -- 12052
        [12053] = TRAINER, -- Black Mageweave Gloves -- 12053
        [12055] = TRAINER, -- Shadoweave Robe -- 12055
        [12061] = TRAINER, -- Orange Mageweave Shirt -- 12061
        [12065] = TRAINER, -- Mageweave Bag -- 12065
        [12067] = TRAINER, -- Dreamweave Gloves -- 12067
        [12069] = TRAINER, -- Cindercloth Robe -- 12069
        [12070] = TRAINER, -- Dreamweave Vest -- 12070
        [12071] = TRAINER, -- Shadoweave Gloves -- 12071
        [12072] = TRAINER, -- Black Mageweave Headband -- 12072
        [12073] = TRAINER, -- Black Mageweave Boots -- 12073
        [12074] = TRAINER, -- Black Mageweave Shoulders -- 12074
        [12076] = TRAINER, -- Shadoweave Shoulders -- 12076
        [12077] = TRAINER, -- Simple Black Dress -- 12077
        [12079] = TRAINER, -- Red Mageweave Bag -- 12079
        [12082] = TRAINER, -- Shadoweave Boots -- 12082
        [12088] = TRAINER, -- Cindercloth Boots -- 12088
        [12092] = TRAINER, -- Dreamweave Circlet -- 12092
        [18401] = TRAINER, -- Bolt of Runecloth -- 18401
        [18402] = TRAINER, -- Runecloth Belt -- 18402
        [18403] = TRAINER, -- Frostweave Tunic -- 18403
        [18406] = TRAINER,
        [18407] = TRAINER, -- Runecloth Tunic -- 18407
        [18409] = TRAINER,
        [18410] = TRAINER, -- Ghostweave Belt -- 18410
        [18411] = TRAINER, -- Frostweave Gloves -- 18411
        [18413] = TRAINER, -- Ghostweave Gloves -- 18413
        [18414] = TRAINER, -- Brightcloth Robe -- 18414
        [18415] = TRAINER, -- Brightcloth Gloves -- 18415
        [18416] = TRAINER, -- Ghostweave Vest -- 18416
        [18417] = TRAINER, -- Runecloth Gloves -- 18417
        [18420] = TRAINER, -- Brightcloth Cloak -- 18420
        [18421] = TRAINER, -- Wizardweave Leggings -- 18421
        [18423] = TRAINER, -- Runecloth Boots -- 18423
        [18424] = TRAINER,
        [18437] = TRAINER, -- Felcloth Boots -- 18437
        [18438] = TRAINER,
        [18441] = TRAINER, -- Ghostweave Pants -- 18441
        [18442] = TRAINER, -- Felcloth Hood -- 18442
        [18444] = TRAINER, -- Runecloth Headband -- 18444
        [18446] = TRAINER, -- Wizardweave Robe -- 18446
        [18449] = TRAINER,
        [18450] = TRAINER, -- Wizardweave Turban -- 18450
        [18451] = TRAINER,
        [18453] = TRAINER,
        [26745] = TRAINER, -- Bolt of Netherweave -- 26745
        [26746] = TRAINER, -- Netherweave Bag -- 26746
        [26764] = TRAINER, -- Netherweave Bracers -- 26764
        [26765] = TRAINER, -- Netherweave Belt -- 26765
        [26770] = TRAINER, -- Netherweave Gloves -- 26770
        [26771] = TRAINER, -- Netherweave Pants -- 26771
        [26772] = TRAINER, -- Netherweave Boots -- 26772
        [31460] = TRAINER, -- Netherweave Net -- 31460
        [55642] = TRAINER, -- Lightweave Embroidery -- 55642
        [55769] = TRAINER, -- Darkglow Embroidery -- 55769
        [55777] = TRAINER, -- Swordguard Embroidery -- 55777
        [55898] = TRAINER, -- Frostweave Net -- 55898
        [55899] = TRAINER, -- Bolt of Frostweave -- 55899
        [55900] = TRAINER, -- Bolt of Imbued Frostweave -- 55900
        [55901] = TRAINER, -- Duskweave Leggings -- 55901
        [55902] = TRAINER, -- Frostwoven Shoulders -- 55902
        [55903] = TRAINER, -- Frostwoven Robe -- 55903
        [55904] = TRAINER, -- Frostwoven Gloves -- 55904
        [55906] = TRAINER, -- Frostwoven Boots -- 55906
        [55907] = TRAINER, -- Frostwoven Cowl -- 55907
        [55908] = TRAINER, -- Frostwoven Belt -- 55908
        [55910] = TRAINER, -- Mystic Frostwoven Shoulders -- 55910
        [55911] = TRAINER, -- Mystic Frostwoven Robe -- 55911
        [55913] = TRAINER, -- Mystic Frostwoven Wristwraps -- 55913
        [55914] = TRAINER, -- Duskweave Belt -- 55914
        [55919] = TRAINER, -- Duskweave Cowl -- 55919
        [55920] = TRAINER, -- Duskweave Wristwraps -- 55920
        [55921] = TRAINER, -- Duskweave Robe -- 55921
        [55922] = TRAINER, -- Duskweave Gloves -- 55922
        [55923] = TRAINER, -- Duskweave Shoulders -- 55923
        [55924] = TRAINER, -- Duskweave Boots -- 55924
        [55925] = TRAINER, -- Black Duskweave Leggings -- 55925
        [55941] = TRAINER, -- Black Duskweave Robe -- 55941
        [55943] = TRAINER, -- Black Duskweave Wristwraps -- 55943
        [55995] = TRAINER, -- Yellow Lumberjack Shirt -- 55995
        [56000] = TRAINER, -- Green Workman's Shirt -- 56000
        [56001] = TRAINER, -- Moonshroud -- 56001
        [56002] = TRAINER, -- Ebonweave -- 56002
        [56003] = TRAINER, -- Spellweave -- 56003
        [56007] = TRAINER, -- Frostweave Bag -- 56007
        [56008] = TRAINER, -- Shining Spellthread -- 56008
        [56010] = TRAINER, -- Azure Spellthread -- 56010
        [56014] = TRAINER, -- Cloak of the Moon -- 56014
        [56015] = TRAINER, -- Cloak of Frozen Spirits -- 56015
        [56016] = TRAINER, -- Wispcloak -- 56016
        [56017] = TRAINER, -- Deathchill Cloak -- 56017
        [56018] = TRAINER, -- Hat of Wintry Doom -- 56018
        [56019] = TRAINER, -- Silky Iceshard Boots -- 56019
        [56020] = TRAINER, -- Deep Frozen Cord -- 56020
        [56021] = TRAINER, -- Frostmoon Pants -- 56021
        [56022] = TRAINER, -- Light Blessed Mittens -- 56022
        [56023] = TRAINER, -- Aurora Slippers -- 56023
        [56024] = TRAINER, -- Moonshroud Robe -- 56024
        [56025] = TRAINER, -- Moonshroud Gloves -- 56025
        [56026] = TRAINER, -- Ebonweave Robe -- 56026
        [56027] = TRAINER, -- Ebonweave Gloves -- 56027
        [56028] = TRAINER, -- Spellweave Robe -- 56028
        [56029] = TRAINER, -- Spellweave Gloves -- 56029
        [56030] = TRAINER, -- Frostwoven Leggings -- 56030
        [56031] = TRAINER, -- Frostwoven Wristwraps -- 56031
        [56034] = TRAINER, -- Master's Spellthread -- 56034
        [56039] = TRAINER, -- Sanctified Spellthread -- 56039
        [59582] = TRAINER, -- Frostsavage Belt -- 59582
        [59583] = TRAINER, -- Frostsavage Bracers -- 59583
        [59584] = TRAINER, -- Frostsavage Shoulders -- 59584
        [59585] = TRAINER, -- Frostsavage Boots -- 59585
        [59586] = TRAINER, -- Frostsavage Gloves -- 59586
        [59587] = TRAINER, -- Frostsavage Robe -- 59587
        [59588] = TRAINER, -- Frostsavage Leggings -- 59588
        [59589] = TRAINER, -- Frostsavage Cowl -- 59589
        [60969] = TRAINER, -- Flying Carpet -- 60969
        [60971] = TRAINER, -- Magnificent Flying Carpet -- 60971
        [60990] = TRAINER, -- Glacial Waistband -- 60990
        [60993] = TRAINER, -- Glacial Robe -- 60993
        [60994] = TRAINER, -- Glacial Slippers -- 60994
        [63742] = TRAINER, -- Spidersilk Drape -- 63742
        [64729] = TRAINER, -- Frostguard Drape -- 64729
        [64730] = TRAINER, -- Cloak of Crimson Snow -- 64730
    },
    WorldDrop = {
        [2333] = { "Kalimdor", "Eastern Kingdoms"}, -- Elixir of Lesser Agility -- 2333
        [2335] = { "Kalimdor", "Eastern Kingdoms"}, -- Swiftness Potion -- 2335
        [3172] = { "Kalimdor", "Eastern Kingdoms"}, -- Minor Magic Resistance Potion -- 3172
        [3174] = { "Kalimdor", "Eastern Kingdoms"}, -- Potion of Curing -- 3174
        [3175] = { "Kalimdor", "Eastern Kingdoms"}, -- Limited Invulnerability Potion -- 3175
        [3188] = { "Kalimdor", "Eastern Kingdoms"}, -- Elixir of Ogre's Strength -- 3188
        [3230] = { "Kalimdor", "Eastern Kingdoms"}, -- Elixir of Minor Agility -- 3230
        [3450] = { "Kalimdor", "Eastern Kingdoms"}, -- Elixir of Fortitude -- 3450
        [3451] = { "Kalimdor", "Eastern Kingdoms"}, -- Major Troll's Blood Elixir -- 3451
        [3453] = { "Kalimdor", "Eastern Kingdoms"}, -- Elixir of Detect Lesser Invisibility -- 3453
        [8240] = { "The Barrens"}, -- Elixir of Giant Growth -- 8240
        [11453] = { "Kalimdor", "Eastern Kingdoms"}, -- Magic Resistance Potion -- 11453
        [11458] = { "Eastern Kingdoms"}, -- Wildvine Potion -- 11458
        [11464] = { "Kalimdor", "Eastern Kingdoms"}, -- Invisibility Potion -- 11464
        [11468] = { "Kalimdor", "Eastern Kingdoms"}, -- Elixir of Dream Vision -- 11468
        [11472] = { "Kalimdor", "Eastern Kingdoms"}, -- Elixir of Giants -- 11472
        [17563] = { "Kalimdor", "Eastern Kingdoms"}, -- Transmute: Undeath to Water -- 17563
        [17564] = { "Kalimdor", "Eastern Kingdoms"}, -- Transmute: Water to Undeath -- 17564
        [17565] = { "Kalimdor", "Eastern Kingdoms"}, -- Transmute: Life to Earth -- 17565
        [17566] = { "Kalimdor", "Eastern Kingdoms"}, -- Transmute: Earth to Life -- 17566
        [17570] = { "Kalimdor", "Eastern Kingdoms"}, -- Greater Stoneshield Potion -- 17570
        [17634] = { "Kalimdor", "Eastern Kingdoms"}, -- Potion of Petrification -- 17634
        [28550] = { "Outland"}, -- Insane Strength Potion -- 28550
        [28552] = { "Outland"}, -- Elixir of the Searching Eye -- 28552
        [28563] = { "Outland"}, -- Heroic Potion -- 28563
        [28565] = { "Outland"}, -- Destruction Potion -- 28565
        [28570] = { "Outland"}, -- Elixir of Major Mageblood -- 28570
        [2667] = { "Kalimdor", "Eastern Kingdoms"}, -- Runed Copper Breastplate -- 2667
        [2673] = { "Kalimdor", "Eastern Kingdoms"}, -- Silvered Bronze Breastplate -- 2673
        [3295] = { "Kalimdor", "Eastern Kingdoms"}, -- Deadly Bronze Poniard -- 3295
        [3297] = { "Kalimdor", "Eastern Kingdoms"}, -- Mighty Iron Hammer -- 3297
        [3321] = { "Kalimdor", "Eastern Kingdoms"}, -- Copper Chain Vest -- 3321
        [3325] = { "Kalimdor", "Eastern Kingdoms"}, -- Gemmed Copper Gauntlets -- 3325
        [3330] = { "Kalimdor", "Eastern Kingdoms"}, -- Silvered Bronze Shoulders -- 3330
        [3334] = { "Kalimdor", "Eastern Kingdoms"}, -- Green Iron Boots -- 3334
        [3336] = { "Kalimdor", "Eastern Kingdoms"}, -- Green Iron Gauntlets -- 3336
        [3493] = { "Kalimdor", "Eastern Kingdoms"}, -- Jade Serpentblade -- 3493
        [3495] = { "Kalimdor", "Eastern Kingdoms"}, -- Golden Iron Destroyer -- 3495
        [3497] = { "Kalimdor", "Eastern Kingdoms"}, -- Frost Tiger Blade -- 3497
        [3500] = { "Kalimdor", "Eastern Kingdoms"}, -- Shadow Crescent Axe -- 3500
        [3504] = { "Kalimdor", "Eastern Kingdoms"}, -- Green Iron Shoulders -- 3504
        [3505] = { "Kalimdor", "Eastern Kingdoms"}, -- Golden Scale Shoulders -- 3505
        [3507] = { "Kalimdor", "Eastern Kingdoms"}, -- Golden Scale Leggings -- 3507
        [3511] = { "Kalimdor", "Eastern Kingdoms"}, -- Golden Scale Cuirass -- 3511
        [3513] = { "Kalimdor", "Eastern Kingdoms"}, -- Polished Steel Boots -- 3513
        [3515] = { "Kalimdor", "Eastern Kingdoms"}, -- Golden Scale Boots -- 3515
        [6518] = { "Kalimdor", "Eastern Kingdoms"}, -- Iridescent Hammer -- 6518
        [7221] = { "Kalimdor", "Eastern Kingdoms"}, -- Iron Shield Spike -- 7221
        [7222] = { "Kalimdor", "Eastern Kingdoms"}, -- Iron Counterweight -- 7222
        [7224] = { "Kalimdor", "Eastern Kingdoms"}, -- Steel Weapon Chain -- 7224
        [9933] = { "Kalimdor", "Eastern Kingdoms"}, -- Heavy Mithril Pants -- 9933
        [9939] = { "Kalimdor", "Eastern Kingdoms"}, -- Mithril Shield Spike -- 9939
        [9964] = { "Kalimdor", "Eastern Kingdoms"}, -- Mithril Spurs -- 9964
        [9966] = { "Kalimdor", "Eastern Kingdoms"}, -- Mithril Scale Shoulders -- 9966
        [9970] = { "Kalimdor", "Eastern Kingdoms"}, -- Heavy Mithril Helm -- 9970
        [9995] = { "Kalimdor", "Eastern Kingdoms"}, -- Blue Glittering Axe -- 9995
        [9997] = { "Kalimdor", "Eastern Kingdoms"}, -- Wicked Mithril Blade -- 9997
        [10005] = { "Kalimdor", "Eastern Kingdoms"}, -- Dazzling Mithril Rapier -- 10005
        [10009] = { "Kalimdor", "Eastern Kingdoms"}, -- Runed Mithril Hammer -- 10009
        [12259] = { "Kalimdor", "Eastern Kingdoms"}, -- Silvered Bronze Leggings -- 12259
        [15973] = { "Kalimdor", "Eastern Kingdoms"}, -- Searing Golden Blade -- 15973
        [16642] = { "Kalimdor", "Eastern Kingdoms"}, -- Thorium Armor -- 16642
        [16643] = { "Kalimdor", "Eastern Kingdoms"}, -- Thorium Belt -- 16643
        [16644] = { "Kalimdor", "Eastern Kingdoms"}, -- Thorium Bracers -- 16644
        [16645] = { "Kalimdor", "Eastern Kingdoms"}, -- Radiant Belt -- 16645
        [16648] = { "Kalimdor", "Eastern Kingdoms"}, -- Radiant Breastplate -- 16648
        [16650] = { "Kalimdor", "Eastern Kingdoms"}, -- Wildthorn Mail -- 16650
        [16651] = { "Kalimdor", "Eastern Kingdoms"}, -- Thorium Shield Spike -- 16651
        [16652] = { "Kalimdor", "Eastern Kingdoms"}, -- Thorium Boots -- 16652
        [16653] = { "Kalimdor", "Eastern Kingdoms"}, -- Thorium Helm -- 16653
        [16654] = { "Kalimdor", "Eastern Kingdoms"}, -- Radiant Gloves -- 16654
        [16656] = { "Kalimdor", "Eastern Kingdoms"}, -- Radiant Boots -- 16656
        [16659] = { "Kalimdor", "Eastern Kingdoms"}, -- Radiant Circlet -- 16659
        [16660] = { "Kalimdor", "Eastern Kingdoms"}, -- Dawnbringer Shoulders -- 16660
        [16662] = { "Kalimdor", "Eastern Kingdoms"}, -- Thorium Leggings -- 16662
        [16724] = { "Kalimdor", "Eastern Kingdoms"}, -- Whitesoul Helm -- 16724
        [16725] = { "Kalimdor", "Eastern Kingdoms"}, -- Radiant Leggings -- 16725
        [16728] = { "Kalimdor", "Eastern Kingdoms"}, -- Helm of the Great Chief -- 16728
        [16729] = { "Kalimdor", "Eastern Kingdoms"}, -- Lionheart Helm -- 16729
        [16741] = { "Kalimdor", "Eastern Kingdoms"}, -- Stronghold Gauntlets -- 16741
        [16746] = { "Kalimdor", "Eastern Kingdoms"}, -- Invulnerable Mail -- 16746
        [27829] = { "Kalimdor", "Eastern Kingdoms"}, -- Titanic Leggings -- 27829
        [27830] = { "Kalimdor", "Eastern Kingdoms"}, -- Persuader -- 27830
        [27832] = { "Kalimdor", "Eastern Kingdoms"}, -- Sageblade -- 27832
        [29622] = { "Outland"}, -- Gauntlets of the Iron Tower -- 29622
        [29658] = { "Outland"}, -- Felfury Gauntlets -- 29658
        [29662] = { "Outland"}, -- Steelgrip Gauntlets -- 29662
        [29663] = { "Outland"}, -- Storm Helm -- 29663
        [29664] = { "Outland"}, -- Helm of the Stalwart Defender -- 29664
        [29668] = { "Outland"}, -- Oathkeeper's Helm -- 29668
        [29669] = { "Outland"}, -- Black Felsteel Bracers -- 29669
        [29671] = { "Outland"}, -- Bracers of the Green Fortress -- 29671
        [29672] = { "Outland"}, -- Blessed Bracers -- 29672
        [29692] = { "Outland"}, -- Felsteel Longblade -- 29692
        [29693] = { "Outland"}, -- Khorium Champion -- 29693
        [29694] = { "Outland"}, -- Fel Edged Battleaxe -- 29694
        [29695] = { "Outland"}, -- Felsteel Reaper -- 29695
        [29696] = { "Outland"}, -- Runic Hammer -- 29696
        [29697] = { "Outland"}, -- Fel Hardened Maul -- 29697
        [29698] = { "Outland"}, -- Eternium Runed Blade -- 29698
        [29699] = { "Outland"}, -- Dirge -- 29699
        [29700] = { "Outland"}, -- Hand of Eternity -- 29700
        [43846] = { "Outland"}, -- Hammer of Righteous Might -- 43846
        [8238] = { "The Barrens"}, -- Savory Deviate Delight -- 8238
        [58512] = { "Northrend"}, -- Tasty Cupcake -- 58512
        [58521] = { "Northrend"}, -- Last Week's Mammoth -- 58521
        [58523] = { "Northrend"}, -- Bad Clams -- 58523
        [58525] = { "Northrend"}, -- Haunted Herring -- 58525
        [7443] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Chest - Minor Mana -- 7443
        [7766] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Bracer - Minor Spirit -- 7766
        [7782] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Bracer - Minor Strength -- 7782
        [7786] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Weapon - Minor Beastslayer -- 7786
        [7859] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Bracer - Lesser Spirit -- 7859
        [13380] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant 2H Weapon - Lesser Spirit -- 13380
        [13464] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Shield - Lesser Protection -- 13464
        [13522] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Cloak - Lesser Shadow Resistance -- 13522
        [13653] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Weapon - Lesser Beastslayer -- 13653
        [13655] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Weapon - Lesser Elemental Slayer -- 13655
        [13687] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Boots - Lesser Spirit -- 13687
        [13689] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Shield - Lesser Block -- 13689
        [13817] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Shield - Stamina -- 13817
        [13846] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Bracer - Greater Spirit -- 13846
        [13915] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Weapon - Demonslaying -- 13915
        [13933] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Shield - Frost Resistance -- 13933
        [13945] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Bracer - Greater Stamina -- 13945
        [13947] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Gloves - Riding Skill -- 13947
        [20009] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Bracer - Superior Spirit -- 20009
        [20011] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Bracer - Superior Stamina -- 20011
        [20020] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Boots - Greater Stamina -- 20020
        [20024] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Boots - Spirit -- 20024
        [20025] = { "Outland"}, -- Enchant Chest - Greater Stats -- 20025
        [27913] = { "Outland"}, -- Enchant Bracer - Restore Mana Prime -- 27913
        [27946] = { "Outland"}, -- Enchant Shield - Shield Block -- 27946
        [27947] = { "Outland"}, -- Enchant Shield - Resistance -- 27947
        [27962] = { "Outland"}, -- Enchant Cloak - Major Resistance -- 27962
        [27972] = { "Outland"}, -- Enchant Weapon - Potency -- 27972
        [28003] = { "Outland"}, -- Enchant Weapon - Spellsurge -- 28003
        [28004] = { "Outland"}, -- Enchant Weapon - Battlemaster -- 28004
        [33992] = { "Outland"}, -- Enchant Chest - Major Resilience -- 33992
        [3928] = { "Kalimdor", "Eastern Kingdoms"}, -- Mechanical Squirrel Box -- 3928
        [3933] = { "Kalimdor", "Eastern Kingdoms"}, -- Small Seaforium Charge -- 3933
        [3940] = { "Kalimdor", "Eastern Kingdoms"}, -- Shadow Goggles -- 3940
        [3954] = { "Kalimdor", "Eastern Kingdoms"}, -- Moonsight Rifle -- 3954
        [3960] = { "Kalimdor", "Eastern Kingdoms"}, -- Portable Bronze Mortar -- 3960
        [3966] = { "Kalimdor", "Eastern Kingdoms"}, -- Craftsman's Monocle -- 3966
        [3968] = { "Kalimdor", "Eastern Kingdoms"}, -- Goblin Land Mine -- 3968
        [3972] = { "Kalimdor", "Eastern Kingdoms"}, -- Large Seaforium Charge -- 3972
        [8339] = { "Kalimdor", "Eastern Kingdoms"}, -- EZ-Thro Dynamite -- 8339
        [12587] = { "Kalimdor", "Eastern Kingdoms"}, -- Bright-Eye Goggles -- 12587
        [12607] = { "Kalimdor", "Eastern Kingdoms"}, -- Catseye Ultra Goggles -- 12607
        [12614] = { "Kalimdor", "Eastern Kingdoms"}, -- Mithril Heavy-bore Rifle -- 12614
        [12616] = { "Kalimdor", "Eastern Kingdoms"}, -- Parachute Cloak -- 12616
        [12620] = { "Kalimdor", "Eastern Kingdoms"}, -- Sniper Scope -- 12620
        [19793] = { "Kalimdor", "Eastern Kingdoms"}, -- Lifelike Mechanical Toad -- 19793
        [19831] = { "Kalimdor", "Eastern Kingdoms"}, -- Arcane Bomb -- 19831
        [30315] = { "Outland"}, -- Ornate Khorium Rifle -- 30315
        [30317] = { "Outland"}, -- Power Amplification Goggles -- 30317
        [30337] = { "Outland"}, -- Crashin' Thrashin' Robot -- 30337
        [32814] = { "Outland"}, -- Purple Smoke Flare -- 32814
        [68067] = { "Northrend"}, -- Jeeves -- 68067
        [7935] = { "Kalimdor", "Eastern Kingdoms"}, -- Strong Anti-Venom -- 7935
        [45546] = { "Northrend"}, -- Heavy Frostweave Bandage -- 45546
        [25618] = { "Kalimdor", "Eastern Kingdoms"}, -- Jade Pendant of Blasting -- 25618
        [25622] = { "Kalimdor", "Eastern Kingdoms"}, -- Citrine Pendant of Golden Healing -- 25622
        [26873] = { "Kalimdor", "Eastern Kingdoms"}, -- Figurine - Golden Hare -- 26873
        [26882] = { "Kalimdor", "Eastern Kingdoms"}, -- Figurine - TRAINER,silver Boar -- 26882
        [26887] = { "Kalimdor", "Eastern Kingdoms"}, -- The Aquamarine Ward -- 26887
        [26896] = { "Kalimdor", "Eastern Kingdoms"}, -- Gem Studded Band -- 26896
        [26900] = { "Kalimdor", "Eastern Kingdoms"}, -- Figurine - Ruby Serpent -- 26900
        [26909] = { "Kalimdor", "Eastern Kingdoms"}, -- Figurine - Emerald Owl -- 26909
        [28955] = { "Outland"}, -- Stormy Azure Moonstone -- 28955
        [31058] = { "Outland"}, -- Heavy Felsteel Ring -- 31058
        [31060] = { "Outland"}, -- Delicate Eternium Ring -- 31060
        [31061] = { "Outland"}, -- Blazing Eternium Band -- 31061
        [31067] = { "Outland"}, -- Thick Felsteel Necklace -- 31067
        [31068] = { "Outland"}, -- Living Ruby Pendant -- 31068
        [31070] = { "Outland"}, -- Braided Eternium Chain -- 31070
        [31071] = { "Outland"}, -- Eye of the Night -- 31071
        [31072] = { "Outland"}, -- Embrace of the Dawn -- 31072
        [31076] = { "Outland"}, -- Chain of the Twilight Owl -- 31076
        [31084] = { "Outland"}, -- Bold Living Ruby -- 31084
        [31085] = { "Outland"}, -- Delicate Living Ruby -- 31085
        [31087] = { "Outland"}, -- Teardrop Living Ruby -- 31087
        [31090] = { "Outland"}, -- Subtle Living Ruby -- 31090
        [31091] = { "Outland"}, -- Flashing Living Ruby -- 31091
        [31094] = { "Outland"}, -- Lustrous Star of Elune -- 31094
        [31095] = { "Outland"}, -- Stormy Star of Elune -- 31095
        [31096] = { "Outland"}, -- Brilliant Dawnstone -- 31096
        [31097] = { "Outland"}, -- Smooth Dawnstone -- 31097
        [31099] = { "Outland"}, -- Gleaming Dawnstone -- 31099
        [31100] = { "Outland"}, -- Thick Dawnstone -- 31100
        [31102] = { "Outland"}, -- Sovereign Nightseye -- 31102
        [31103] = { "Outland"}, -- Shifting Nightseye -- 31103
        [31104] = { "Outland"}, -- Glowing Nightseye -- 31104
        [31105] = { "Outland"}, -- Royal Nightseye -- 31105
        [31106] = { "Outland"}, -- Inscribed Noble Topaz -- 31106
        [31107] = { "Outland"}, -- Potent Noble Topaz -- 31107
        [31108] = { "Outland"}, -- Luminous Noble Topaz -- 31108
        [31109] = { "Outland"}, -- Glinting Noble Topaz -- 31109
        [31110] = { "Outland"}, -- Enduring Talasite -- 31110
        [31111] = { "Outland"}, -- Radiant Talasite -- 31111
        [31112] = { "Outland"}, -- Dazzling Talasite -- 31112
        [31113] = { "Outland"}, -- Jagged Talasite -- 31113
        [31149] = { "Outland"}, -- Sparkling Star of Elune -- 31149
        [32868] = { "Outland"}, -- Tenacious Earthstorm Diamond -- 32868
        [32869] = { "Outland"}, -- Brutal Earthstorm Diamond -- 32869
        [32871] = { "Outland"}, -- Destructive Skyfire Diamond -- 32871
        [32872] = { "Outland"}, -- Mystical Skyfire Diamond -- 32872
        [39452] = { "Outland"}, -- Great Dawnstone -- 39452
        [39462] = { "Outland"}, -- Infused Nightseye -- 39462
        [39463] = { "Outland"}, -- Balanced Nightseye -- 39463
        [39470] = { "Outland"}, -- Veiled Noble Topaz -- 39470
        [39471] = { "Outland"}, -- Wicked Noble Topaz -- 39471
        [39963] = { "Outland"}, -- Thundering Skyfire Diamond -- 39963
        [53962] = { "Northrend"}, -- Sovereign Twilight Opal -- 53962
        [53964] = { "Northrend"}, -- Tenuous Twilight Opal -- 53964
        [53966] = { "Northrend"}, -- Purified Twilight Opal -- 53966
        [53975] = { "Northrend"}, -- Inscribed Monarch Topaz -- 53975
        [53976] = { "Northrend"}, -- Etched Monarch Topaz -- 53976
        [53977] = { "Northrend"}, -- Champion's Monarch Topaz -- 53977
        [53992] = { "Northrend"}, -- Stalwart Monarch Topaz -- 53992
        [54003] = { "Northrend"}, -- Misty Forest Emerald -- 54003
        [54004] = { "Northrend"}, -- Shining Forest Emerald -- 54004
        [54023] = { "Northrend"}, -- Resolute Monarch Topaz -- 54023
        [55390] = { "Northrend"}, -- Destructive Skyflare Diamond -- 55390
        [55395] = { "Northrend"}, -- Thundering Skyflare Diamond -- 55395
        [55405] = { "Northrend"}, -- Beaming Earthsiege Diamond -- 55405
        [2158] = { "Kalimdor", "Eastern Kingdoms"}, -- Fine Leather Boots -- 2158
        [2163] = { "Kalimdor", "Eastern Kingdoms"}, -- White Leather Jerkin -- 2163
        [2164] = { "Kalimdor", "Eastern Kingdoms"}, -- Fine Leather Gloves -- 2164
        [2169] = { "Kalimdor", "Eastern Kingdoms"}, -- Dark Leather Tunic -- 2169
        [3762] = { "Kalimdor", "Eastern Kingdoms"}, -- Hillman's Leather Vest -- 3762
        [3765] = { "Kalimdor", "Eastern Kingdoms"}, -- Dark Leather Gloves -- 3765
        [3767] = { "Kalimdor", "Eastern Kingdoms"}, -- Hillman's Belt -- 3767
        [3769] = { "Kalimdor", "Eastern Kingdoms"}, -- Dark Leather Shoulders -- 3769
        [3771] = { "Kalimdor", "Eastern Kingdoms"}, -- Barbaric Gloves -- 3771
        [3773] = { "Kalimdor", "Eastern Kingdoms"}, -- Guardian Armor -- 3773
        [3775] = { "Kalimdor", "Eastern Kingdoms"}, -- Guardian Belt -- 3775
        [3777] = { "Kalimdor", "Eastern Kingdoms"}, -- Guardian Leather Bracers -- 3777
        [3779] = { "Kalimdor", "Eastern Kingdoms"}, -- Barbaric Belt -- 3779
        [7133] = { "Kalimdor", "Eastern Kingdoms"}, -- Fine Leather Pants -- 7133
        [7153] = { "Kalimdor", "Eastern Kingdoms"}, -- Guardian Cloak -- 7153
        [9064] = { "Kalimdor", "Eastern Kingdoms"}, -- Rugged Leather Pants -- 9064
        [9148] = { "Kalimdor", "Eastern Kingdoms"}, -- Pilferer's Gloves -- 9148
        [9149] = { "Kalimdor", "Eastern Kingdoms"}, -- Heavy Earthen Gloves -- 9149
        [9195] = { "Kalimdor", "Eastern Kingdoms"}, -- Dusky Leather Leggings -- 9195
        [9197] = { "Kalimdor", "Eastern Kingdoms"}, -- Green Whelp Armor -- 9197
        [9207] = { "Kalimdor", "Eastern Kingdoms"}, -- Dusky Boots -- 9207
        [9208] = { "Kalimdor", "Eastern Kingdoms"}, -- Swift Boots -- 9208
        [10490] = { "Kalimdor", "Eastern Kingdoms"}, -- Comfortable Leather Hat -- 10490
        [10520] = { "Kalimdor", "Eastern Kingdoms"}, -- Big Voodoo Robe -- 10520
        [10531] = { "Kalimdor", "Eastern Kingdoms"}, -- Big Voodoo Mask -- 10531
        [10560] = { "Kalimdor", "Eastern Kingdoms"}, -- Big Voodoo Pants -- 10560
        [10562] = { "Kalimdor", "Eastern Kingdoms"}, -- Big Voodoo Cloak -- 10562
        [19055] = { "Kalimdor", "Eastern Kingdoms"}, -- Runic Leather Gauntlets -- 19055
        [19063] = { "Kalimdor", "Eastern Kingdoms"}, -- Chimeric Boots -- 19063
        [19070] = { "Kalimdor", "Eastern Kingdoms"}, -- Heavy Scorpid Belt -- 19070
        [19073] = { "Kalimdor", "Eastern Kingdoms"}, -- Chimeric Leggings -- 19073
        [19081] = { "Kalimdor", "Eastern Kingdoms"}, -- Chimeric Vest -- 19081
        [35558] = { "Outland"}, -- Cobrascale Hood -- 35558
        [35560] = { "Outland"}, -- Windscale Hood -- 35560
        [35561] = { "Outland"}, -- Hood of Primal Life -- 35561
        [35563] = { "Outland"}, -- Windslayer Wraps -- 35563
        [35564] = { "Outland"}, -- Living Dragonscale Helm -- 35564
        [35567] = { "Outland"}, -- Earthen Netherscale Boots -- 35567
        [35572] = { "Outland"}, -- Netherdrake Helm -- 35572
        [35574] = { "Outland"}, -- Thick Netherscale Breastplate -- 35574
        [2389] = { "Kalimdor", "Eastern Kingdoms"}, -- Red Linen Robe -- 2389
        [2403] = { "Kalimdor", "Eastern Kingdoms"}, -- Gray Woolen Robe -- 2403
        [3758] = { "Kalimdor", "Eastern Kingdoms"}, -- Green Woolen Bag -- 3758
        [3844] = { "Kalimdor", "Eastern Kingdoms"}, -- Heavy Woolen Cloak -- 3844
        [3847] = { "Kalimdor", "Eastern Kingdoms"}, -- Red Woolen Boots -- 3847
        [3849] = { "Kalimdor", "Eastern Kingdoms"}, -- Reinforced Woolen Shoulders -- 3849
        [3851] = { "Kalimdor", "Eastern Kingdoms"}, -- Phoenix Pants -- 3851
        [3856] = { "Kalimdor", "Eastern Kingdoms"}, -- Spider Silk Slippers -- 3856
        [3858] = { "Kalimdor", "Eastern Kingdoms"}, -- Shadow Hood -- 3858
        [3860] = { "Kalimdor", "Eastern Kingdoms"}, -- Boots of the Enchanter -- 3860
        [3863] = { "Kalimdor", "Eastern Kingdoms"}, -- Spider Belt -- 3863
        [3864] = { "Kalimdor", "Eastern Kingdoms"}, -- Star Belt -- 3864
        [3868] = { "Kalimdor", "Eastern Kingdoms"}, -- Phoenix Gloves -- 3868
        [3872] = { "Kalimdor", "Eastern Kingdoms"}, -- Rich Purple Silk Shirt -- 3872
        [6693] = { "Kalimdor", "Eastern Kingdoms"}, -- Green Silk Pack -- 6693
        [7629] = { "Kalimdor", "Eastern Kingdoms"}, -- Red Linen Vest -- 7629
        [7892] = { "Kalimdor", "Eastern Kingdoms"}, -- Stylish Blue Shirt -- 7892
        [7893] = { "Kalimdor", "Eastern Kingdoms"}, -- Stylish Green Shirt -- 7893
        [8780] = { "Kalimdor", "Eastern Kingdoms"}, -- Hands of Darkness -- 8780
        [8782] = { "Kalimdor", "Eastern Kingdoms"}, -- TRAINER,faith Gloves -- 8782
        [8784] = { "Kalimdor", "Eastern Kingdoms"}, -- Green Silk Armor -- 8784
        [8793] = { "Kalimdor", "Eastern Kingdoms"}, -- Crimson Silk Shoulders -- 8793
        [8795] = { "Kalimdor", "Eastern Kingdoms"}, -- Azure Shoulders -- 8795
        [8797] = { "Kalimdor", "Eastern Kingdoms"}, -- Earthen Silk Belt -- 8797
        [12047] = { "Kalimdor", "Eastern Kingdoms"}, -- Colorful Kilt -- 12047
        [12056] = { "Kalimdor", "Eastern Kingdoms"}, -- Red Mageweave Vest -- 12056
        [12059] = { "Kalimdor", "Eastern Kingdoms"}, -- White Bandit Mask -- 12059
        [12060] = { "Kalimdor", "Eastern Kingdoms"}, -- Red Mageweave Pants -- 12060
        [12066] = { "Kalimdor", "Eastern Kingdoms"}, -- Red Mageweave Gloves -- 12066
        [12078] = { "Kalimdor", "Eastern Kingdoms"}, -- Red Mageweave Shoulders -- 12078
        [12084] = { "Kalimdor", "Eastern Kingdoms"}, -- Red Mageweave Headband -- 12084
        [18404] = { "Kalimdor", "Eastern Kingdoms"}, -- Frostweave Robe -- 18404
        [18424] = { "Kalimdor", "Eastern Kingdoms"}, -- Frostweave Pants -- 18424
        [18438] = { "Kalimdor", "Eastern Kingdoms"}, -- Runecloth Pants -- 18438
        [18439] = { "Kalimdor", "Eastern Kingdoms"}, -- Brightcloth Pants -- 18439
        [18440] = { "Kalimdor", "Eastern Kingdoms"}, -- Mooncloth Leggings -- 18440
        [18445] = { "Kalimdor", "Eastern Kingdoms"}, -- Mooncloth Bag -- 18445
        [18447] = { "Kalimdor", "Eastern Kingdoms"}, -- Mooncloth Vest -- 18447
        [18448] = { "Kalimdor", "Eastern Kingdoms"}, -- Mooncloth Shoulders -- 18448
        [18449] = { "Kalimdor", "Eastern Kingdoms"}, -- Runecloth Shoulders -- 18449
        [18451] = { "Kalimdor", "Eastern Kingdoms"}, -- Felcloth Robe -- 18451
        [18452] = { "Kalimdor", "Eastern Kingdoms"}, -- Mooncloth Circlet -- 18452
        [18453] = { "Kalimdor", "Eastern Kingdoms"}, -- Felcloth Shoulders -- 18453
        [18454] = { "Kalimdor", "Eastern Kingdoms"}, -- Gloves of Spell Mastery -- 18454
        [18455] = { "Kalimdor", "Eastern Kingdoms"}, -- Bottomless Bag -- 18455
        [31435] = { "Outland"}, -- Bracers of Havok -- 31435
        [31437] = { "Outland"}, -- Blackstrike Bracers -- 31437
        [31438] = { "Outland"}, -- Cloak of the Black Void -- 31438
        [31440] = { "Outland"}, -- Cloak of Eternity -- 31440
        [31441] = { "Outland"}, -- White Remedy Cape -- 31441
        [31443] = { "Outland"}, -- Girdle of Ruination -- 31443
        [31444] = { "Outland"}, -- Black Belt of Knowledge -- 31444
        [31448] = { "Outland"}, -- Resolute Cape -- 31448
        [31449] = { "Outland"}, -- Vengeance Wrap -- 31449
        [31450] = { "Outland"}, -- Manaweave Cloak -- 31450
        [55993] = { "Northrend"}, -- Red Lumberjack Shirt -- 55993
        [55994] = { "Northrend"}, -- Blue Lumberjack Shirt -- 55994
        [55996] = { "Northrend"}, -- Green Lumberjack Shirt -- 55996
        [55997] = { "Northrend"}, -- Red Workman's Shirt -- 55997
        [55998] = { "Northrend"}, -- Blue Workman's Shirt -- 55998
        [55999] = { "Northrend"}, -- Rustic Workman's Shirt -- 55999
        [28578] = { "Outland"}, -- Elixir of Empowerment -- 28578
        [16661] = { "Kalimdor", "Eastern Kingdoms"}, -- Storm Gauntlets -- 16661
        [2545] = { "Darkshore", "Westfall"}, -- Cooked Crab Claw -- 2545
        [2548] = { "Loch Modan", "Redridge Mountains"}, -- Succulent Pork Ribs -- 2548
        [13419] = { "Kalimdor", "Eastern Kingdoms"}, -- Enchant Cloak - Minor Agility -- 13419
        [31088] = { "Outland"}, -- Runed Living Ruby -- 31088
        [31089] = { "Outland"}, -- Bright Living Ruby -- 31089
        [31092] = { "Outland"}, -- Solid Star of Elune -- 31092
        [31098] = { "Outland"}, -- Rigid Dawnstone -- 31098
        [35559] = { "Outland"}, -- Cobrascale Gloves -- 35559
    },
    LimitedVendor = {
        [3449] = { 2481, 1, 4878, 1}, -- Shadow Oil -- 3449
        [3454] = { 2480, 1}, -- Frost Oil -- 3454
        [6624] = { 5178, 1, 4226, 1, 3348, 1}, -- Free Action Potion -- 6624
        [7255] = { 1685, 1, 3134, 1, 3490, 1}, -- Holy Protection Potion -- 7255
        [7256] = { 2393, 1, 3956, 1}, -- Shadow Protection Potion -- 7256
        [7257] = { 4083, 1, 2380, 1}, -- Fire Protection Potion -- 7257
        [7258] = { 2812, 1, 2848, 1}, -- Frost Protection Potion -- 7258
        [7259] = { 8157, 1, 8158, 1, 2848, 1, 5594, 1}, -- Nature Protection Potion -- 7259
        [11473] = { 8157, 1, 8158, 1}, -- Ghost Dye -- 11473
        [11476] = { 1313, 1, 4610, 1}, -- Elixir of Shadow Power -- 11476
        [11477] = { 8177, 1, 8178, 1}, -- Elixir of Demonslaying -- 11477
        [11480] = { 5594, 1}, -- Transmute: Mithril to TRAINER,silver -- 11480
        [17554] = { 5178, 1, 3348, 1}, -- Elixir of Superior Defense -- 17554
        [28543] = { 18802, 1, 16705, 1, 16641, 1, 16588, 1}, -- Elixir of Camouflage -- 28543
        [28546] = { 18017, 1, 19042, 1}, -- Sneaking Potion -- 28546
        [28549] = { 18005, 1, 18017, 1}, -- Elixir of Major Frost Power -- 28549
        [28555] = { 18005, 1, 19837, 1}, -- Super Mana Potion -- 28555
        [28557] = { 18005, 1, 19837, 1}, -- Elixir of Major Defense -- 28557
        [28562] = { 19042, 1, 19837, 1}, -- Major Dreamless Sleep Potion -- 28562
        [29688] = { 16705, 1, 16641, 1, 19074, 1}, -- Transmute: Primal Might -- 29688
        [3494] = { 9179, 1, 8878, 1, 1471, 1, 26081, 1}, -- Solid Iron Maul -- 3494
        [15853] = { 12246, 1}, -- Lean Wolf Steak -- 15853
        [13646] = { 2381, 1, 2821, 1}, -- Enchant Bracer - Lesser Deflection -- 13646
        [3957] = { 2684, 1}, -- Ice Deflector -- 3957
        [25320] = { 17512, 1, 16624, 1, 3367, 1, 1286, 1}, -- Heavy Golden Necklace of Battle -- 25320
        [25323] = { 3499, 1, 3954, 1}, -- Wicked Moonstone Ring -- 25323
        [25339] = { 16624, 1, 4561, 1, 4229, 1, 17512, 1}, -- Amulet of the Moon -- 25339
        [25612] = { 2381, 1, 2393, 1}, -- Heavy Iron Knuckles -- 25612
        [25617] = { 2381, 1, 9636, 1}, -- Blazing Citrine Ring -- 25617
        [25619] = { 17512, 1, 16624, 1, 4775, 1, 5163, 1}, -- The Jade Eye -- 25619
        [26878] = { 2810, 1, 2821, 1}, -- Ruby Crown of Restoration -- 26878
        [26881] = { 1148, 1, 4897, 1}, -- Figurine - TRAINER,silver Crab -- 26881
        [26897] = { 17512, 1, 5163, 1, 16624, 1, 8363, 1}, -- Opal Necklace of Impact -- 26897
        [26906] = { 15179, 1}, -- Emerald Crown of Destruction -- 26906
        [4096] = { 2819, 1}, -- Raptor Hide Harness -- 4096
        [7953] = { 5783, 2}, -- Deviate Scale Cloak -- 7953
        [7954] = { 5783, 1}, -- Deviate Scale Gloves -- 7954
        [3854] = { 2679, 1, 9636, 1}, -- Azure Silk Gloves -- 3854
        [3857] = { 2670, 1}, -- Enchanter's Cowl -- 3857
        [3862] = { 2381, 1, 6567, 1}, -- Icy Cloak -- 3862
        [3869] = { 2668, 1}, -- Bright Yellow Shirt -- 3869
        [3870] = { 2394, 1, 2669, 1}, -- Dark Silk Shirt -- 3870
        [7633] = { 4168, 1, 3499, 1, 3556, 1, 3485, 1, 1250, 1}, -- Blue Linen Robe -- 7633
        [7639] = { 843, 1, 1347, 1, 2394, 1, 3364, 1, 5944, 1}, -- Blue Overalls -- 7639
        [7643] = { 1474, 1, 3499, 1, 1454, 1, 2669, 1, 4577, 1, 4168, 1}, -- Greater Adept's Robe -- 7643
        [8786] = { 6574, 1, 6576, 1}, -- Azure Silk Cloak -- 8786
        [8789] = { 2670, 1}, -- Crimson Silk Cloak -- 8789
        [8802] = { 6568, 1}, -- Crimson Silk Robe -- 8802
        [12064] = { 3005, 1, 4168, 1}, -- Orange Martial Shirt -- 12064
        [12075] = { 3364, 1, 8681, 1}, -- Lavender Mageweave Shirt -- 12075
        [12080] = { 3364, 1, 8681, 1}, -- Pink Mageweave Shirt -- 12080
        [12081] = { 2672, 1}, -- Admiral's Hat -- 12081
        [12091] = { 1347, 1, 3005, 1}, -- White Wedding Dress -- 12091
        [18419] = { 12022, 1}, -- Felcloth Pants -- 18419
        [22902] = { 14371, 1}, -- Mooncloth Robe -- 22902
        [26750] = { 19015, 1, 16638, 1, 19017, 1, 16767, 1}, -- Bolt of Soulcloth -- 26750
        [26775] = { 18011, 1, 19722, 1}, -- Imbued Netherweave Pants -- 26775
        [26776] = { 18011, 1, 19722, 1}, -- Imbued Netherweave Boots -- 26776
        [26777] = { 19521, 1}, -- Imbued Netherweave Robe -- 26777
        [26778] = { 19521, 1}, -- Imbued Netherweave Tunic -- 26778
        [26779] = { 19015, 1, 19017, 1}, -- Soulcloth Gloves -- 26779
        [3397] = { 12246, 1},
        [4094] = { 12246, 1},
        [15856] = { 12246, 1}, -- Hot Wolf Ribs -- 15856
        [15865] = { 12246, 1}, -- Mystery Stew -- 15865
        [15906] = { 12246, 1}, -- Dragonbreath Chili -- 15906
        [3971] = { 6777, 1}, -- Gnomish Cloaking Device -- 3971
        [6704] = { 2381, 1, 2393, 1, 2846, 1}, -- Thick Murloc Armor -- 6704
        [6686] = { 16224, 1, 843, 1, 3005, 1, 4189, 1, 3556, 1}, -- Red Linen Bag -- 6686
        [6688] = { 777, 1, 1454, 1, 1474, 1, 3005, 1, 3364, 1, 3485, 1, 3537, 1, 3683, 1, 4189, 2, 4577, 1, 5944, 1}, -- Red Woolen Bag -- 6688
        [7630] = { 3364, 1, 4189, 1, 3485, 1, 3522, 1}, -- Blue Linen Vest -- 7630
    },
    QuestDrop = {
        [4508] = { 429}, -- Discolored Healing Potion -- 4508
        [4942] = { 715}, -- Lesser Stoneshield Potion -- 4942
        [11452] = { 2203, 2501}, -- Restorative Potion -- 11452
        [66659] = { 14151}, -- Transmute: Cardinal Ruby -- 66659
        [8367] = { 1618}, -- Ironforge Breastplate -- 8367
        [9811] = { 2752}, -- Barbaric Iron Shoulders -- 9811
        [9813] = { 2751}, -- Barbaric Iron Breastplate -- 9813
        [9814] = { 2754}, -- Barbaric Iron Helm -- 9814
        [9818] = { 2753}, -- Barbaric Iron Boots -- 9818
        [9820] = { 2755}, -- Barbaric Iron Gloves -- 9820
        [9945] = { 2761}, -- Ornate Mithril Pants -- 9945
        [9950] = { 2762}, -- Ornate Mithril Gloves -- 9950
        [9952] = { 2763}, -- Ornate Mithril Shoulder -- 9952
        [9957] = { 2756}, -- Orcish War Leggings -- 9957
        [9972] = { 2773}, -- Ornate Mithril Breastplate -- 9972
        [9979] = { 2772}, -- Ornate Mithril Boots -- 9979
        [9980] = { 2771}, -- Ornate Mithril Helm -- 9980
        [11643] = { 2758}, -- Golden Scale Gauntlets -- 11643
        [16646] = { 7659}, -- Imperial Plate Shoulders -- 16646
        [16647] = { 7653}, -- Imperial Plate Belt -- 16647
        [16649] = { 7655}, -- Imperial Plate Bracers -- 16649
        [16655] = { 5124}, -- Fiery Plate Gauntlets -- 16655
        [16657] = { 7654}, -- Imperial Plate Boots -- 16657
        [16658] = { 7657}, -- Imperial Plate Helm -- 16658
        [16663] = { 7656}, -- Imperial Plate Chest -- 16663
        [16667] = { 5127}, -- Demon Forged Breastplate -- 16667
        [16730] = { 7658}, -- Imperial Plate Leggings -- 16730
        [16742] = { 7651}, -- Enchanted Thorium Helm -- 16742
        [16744] = { 7650}, -- Enchanted Thorium Leggings -- 16744
        [16745] = { 7649}, -- Enchanted Thorium Breastplate -- 16745
        [16970] = { 5306}, -- Dawn's Edge -- 16970
        [16973] = { 5305}, -- Enchanted Battlehammer -- 16973
        [16978] = { 5307}, -- Blazing Rapier -- 16978
        [21161] = { 7604}, -- Sulfuron Hammer -- 21161
        [24912] = { 8323}, -- Darkrune Gauntlets -- 24912
        [24913] = { 8323}, -- Darkrune Helm -- 24913
        [24914] = { 8323}, -- Darkrune Breastplate -- 24914
        [43549] = { 1578}, -- Heavy Copper Longsword -- 43549
        [3399] = { 564}, -- Tasty Lion Steak -- 3399
        [3400] = { 555, 7321}, -- Soothing Turtle Bisque -- 3400
        [6412] = { 4161}, -- Kaldorei Spider Kabob -- 6412
        [24801] = { 8313}, -- Smoked Desert Dumplings -- 24801
        [25659] = { 8586}, -- Dirge's Kickin' Chimaerok Chops -- 25659
        [33277] = { 9454}, -- Roasted Moongraze Tenderloin -- 33277
        [33279] = { 9356}, -- Buzzard Bites -- 33279
        [43707] = { 11381, 11377, 11379, 11380}, -- Skullfish Soup -- 43707
        [43758] = { 11381, 11377, 11379, 11380, 13100, 13101, 13102, 13103, 13107, 13112, 13113,13114, 13115, 13116}, -- Stormchops -- 43758
        [43761] = { 11381, 11377, 11379, 11380}, -- Broiled Bloodfin -- 43761
        [43765] = { 11381, 11377, 11379, 11380}, -- Spicy Hot Talbuk -- 43765
        [43772] = { 11381, 11377, 11379, 11380}, -- Kibler's Bits -- 43772
        [43779] = { 11381, 11377, 11379, 11380, 13100, 13101, 13102, 13103, 13107, 13112, 13113,13114, 13115, 13116}, -- Delicious Chocolate Cake -- 43779
        [45695] = { 11666, 11668, 11667, 11669, 13100, 13101, 13102, 13103, 13107, 13112, 13113,13114, 13115, 13116}, -- Captain Rumsey's Lager -- 45695
        [53056] = { 13571}, -- Kungaloosh -- 53056
        [57421] = { 13088, 13087, 13089, 13090}, -- Northern Stew -- 57421
        [64054] = { 6610}, -- Clamlette Magnifique -- 64054
        [26011] = { 8798}, -- Tranquil Mechanical Yeti -- 26011
        [30548] = { 9635, 9636}, -- Zapthrottle Mote Extractor -- 30548
        [55252] = { 12889}, -- Scrapbot Construction Kit -- 55252
        [5244] = { 769}, -- Kodo Hide Bag -- 5244
        [7955] = { 1487}, -- Deviate Scale Belt -- 7955
        [8322] = { 1582}, -- Moonglow Vest -- 8322
        [10529] = { 2848, 2855}, -- Wild Leather Shoulders -- 10529
        [10544] = { 2849, 2856}, -- Wild Leather Vest -- 10544
        [10546] = { 2850, 2857}, -- Wild Leather Helmet -- 10546
        [10566] = { 2851, 2858}, -- Wild Leather Boots -- 10566
        [10572] = { 2852, 2859}, -- Wild Leather Leggings -- 10572
        [10574] = { 2853, 2860}, -- Wild Leather Cloak -- 10574
        [19093] = { 7493, 7497}, -- Onyxia Scale Cloak -- 19093
        [22815] = { 5518}, -- Gordok Ogre Suit -- 22815
        [14891] = { 4083}, -- Smelt Dark Iron -- 14891
        [12086] = { 3402}, -- Shadoweave Mask -- 12086
        [19435] = { 6032}, -- Mooncloth Boots -- 19435
        [22813] = { 5518}, -- Gordok Ogre Suit -- 22813
        [24901] = { 8323}, -- Runed Stygian Leggings -- 24901
        [24902] = { 8323}, -- Runed Stygian Belt -- 24902
        [24903] = { 8323}, -- Runed Stygian Boots -- 24903
        [2542] = { 22}, -- Goretusk Liver Pie -- 2542
        [2543] = { 38}, -- Westfall Stew -- 2543
        [2547] = { 92}, -- Redridge Goulash -- 2547
        [2549] = { 90}, -- Seasoned Wolf Kabob -- 2549
        [2795] = { 384}, -- Beer Basted Boar Ribs -- 2795
        [3370] = { 385}, -- Crocolisk Steak -- 3370
        [3371] = { 418}, -- Blood Sausage -- 3371
        [3372] = { 127}, -- Murloc Fin Soup -- 3372
        [3373] = { 471}, -- Crocolisk Gumbo -- 3373
        [3376] = { 296}, -- Curiously Tasty Omelet -- 3376
        [3377] = { 93}, -- Gooey Spider Cake -- 3377
        [3397] = { 498}, -- Big Bear Steak -- 3397
        [3398] = { 501}, -- Hot Lion Chops -- 3398
        [4094] = { 703}, -- Barbecued Buzzard Wing -- 4094
        [6416] = { 2178}, -- Strider Stew -- 6416
        [6417] = { 862}, -- Dig Rat Stew -- 6417
        [9513] = { 2359, 2478}, -- Thistle Tea -- 9513
        [28267] = { 9171}, -- Crunchy Spider Surprise -- 28267
        [38867] = { 10860}, -- Mok'Nathal Shortribs -- 38867
        [38868] = { 10860}, -- Crunchy Serpent -- 38868
        [8243] = { 1559}, -- Flash Bomb -- 8243
        [28327] = { 9249}, -- Steam Tonk Controller -- 28327
    },
    Vendor = {
        [6617] = { 1685, 3335, 1669, 3499}, -- Rage Potion -- 6617
        [6618] = { 3335, 4226}, -- Great Rage Potion -- 6618
        [11459] = { 5594}, -- Philosopher's Stone -- 11459
        [11479] = { 5594}, -- Transmute: Iron to Gold -- 11479
        [17187] = { 5594}, -- Transmute: Arcanite -- 17187
        [17560] = { 9499}, -- Transmute: Fire to Earth -- 17560
        [17562] = { 11278}, -- Transmute: Water to Air -- 17562
        [39639] = { 18821, 18822}, -- Elixir of Ironskin -- 39639
        [3492] = { 2843, 5512}, -- Hardened Iron Shortsword -- 3492
        [3496] = { 2482}, -- Moonsteel Broadsword -- 3496
        [3498] = { 2483, 1146}, -- Massive Iron Axe -- 3498
        [3503] = { 5411}, -- Golden Scale Coif -- 3503
        [9937] = { 8161, 8176}, -- Mithril Scale Bracers -- 9937
        [10013] = { 11278}, -- Ebon Shiv -- 10013
        [16661] = { 11278}, 
        [16969] = { 11278}, -- Ornate Thorium Handaxe -- 16969
        [16971] = { 11278}, -- Huge Thorium Battleaxe -- 16971
        [29566] = { 16670, 16713, 19662}, -- Adamantite Maul -- 29566
        [29568] = { 16670, 16713, 19662}, -- Adamantite Cleaver -- 29568
        [29569] = { 16670, 16713, 19662}, -- Adamantite Dagger -- 29569
        [29571] = { 16670, 16713, 19662}, -- Adamantite Rapier -- 29571
        [29603] = { 19342, 19694}, -- Adamantite Plate Bracers -- 29603
        [29605] = { 19342, 19694}, -- Adamantite Plate Gloves -- 29605
        [29606] = { 19342, 19694}, -- Adamantite Breastplate -- 29606
        [29728] = { 16583, 19373}, -- Lesser Ward of Shielding -- 29728
        [32656] = { 19662}, -- Adamantite Rod -- 32656
        [32657] = { 16583, 19373}, -- Eternium Rod -- 32657
        [2542] = { 340},
        [2543] = { 340},
        [2545] = { 340},
        [2547] = { 340}, 
        [2548] = { 340},
        [2549] = { 340},
        [2795] = { 340},
        [3370] = { 340},
        [3371] = { 340},
        [3372] = { 340},
        [3373] = { 340},
        [3376] = { 1148, 2821, 340},
        [3377] = { 340},
        [3397] = { 3960},
        [3398] = { 3489, 12245},
        [4094] = { 2814},
        [6413] = { 3881}, -- Scorpid Surprise -- 6413
        [6414] = { 3081}, -- Roasted Kodo Meat -- 6414
        [6415] = { 4200}, -- Fillet of Frenzy -- 6415
        [6416] = { 3482},
        [6417] = { 3392},
        [6418] = { 3482}, -- Crispy Lizard Tail -- 6418
        [6419] = { 3960, 12245}, -- Lean Venison -- 6419
        [6501] = { 4305, 4307}, -- Clam Chowder -- 6501
        [7213] = { 2664}, -- Giant Clam Scorcho -- 7213
        [7751] = { 5940, 8508, 5494, 3550, 66, 4265, 3029, 4574, 1684}, -- Brilliant Smallfish -- 7751
        [7752] = { 5162, 4305, 3550, 5942, 10118}, -- Slitherskin Mackerel -- 7752
        [7753] = { 5748, 1684, 4574, 66, 4265, 5940, 3027, 5162}, -- Longjaw Mud Snapper -- 7753
        [7754] = { 1684}, -- Loch Frenzy Delight -- 7754
        [7755] = { 3497, 4553, 2383, 3027, 2397, 5494, 3029}, -- Bristle Whisker Catfish -- 7755
        [7827] = { 4305, 4307, 5748, 5494, 3333, 4553, 3178, 10118, 3497, 5942}, -- Rainbow Fin Albacore -- 7827
        [7828] = { 4307, 2664, 3333, 12962, 2383, 12033, 3178, 4574, 5162}, -- Rockscale Cod -- 7828
        [8607] = { 1465, 3556}, -- Smoked Bear Meat -- 8607
        [9513] = { 6779},
        [15855] = { 1148, 734, 12245, 2821, 4897, 2810, 4879}, -- Roast Raptor -- 15855
        [15856] = { 8145, 7947},
        [15861] = { 1148, 734, 12245}, -- Jungle Stew -- 15861
        [15863] = { 12245, 4879, 989, 9636}, -- Carrion Surprise -- 15863
        [15865] = { 4897, 8150},
        [15906] = { 4897, 4879},
        [15910] = { 12245, 9636, 8150}, -- Heavy Kodo Stew -- 15910
        [15915] = { 4305, 1149, 989}, -- Spiced Chili Crab -- 15915
        [15933] = { 2803, 2806, 11187}, -- Monster Omelet -- 15933
        [15935] = { 2118}, -- Crispy Bat Wing -- 15935
        [18238] = { 8137}, -- Spotted Yellowtail -- 18238
        [18239] = { 2664}, -- Cooked Glossy Mightfish -- 18239
        [18240] = { 8137}, -- Grilled Squid -- 18240
        [18241] = { 2664}, -- Filet of Redgill -- 18241
        [18242] = { 2664}, -- Hot Smoked Bass -- 18242
        [18243] = { 8137}, -- Nightfin Soup -- 18243
        [18244] = { 8137}, -- Poached Sunscale Salmon -- 18244
        [18245] = { 7947, 8145}, -- Lobster Stew -- 18245
        [18246] = { 7947, 8145}, -- Mightfish Steak -- 18246
        [18247] = { 7947, 8145}, -- Baked Salmon -- 18247
        [20626] = { 8139}, -- Undermine Clam Chowder -- 20626
        [20916] = { 4307, 2664, 3333, 12962, 2383, 12033, 3178, 4574, 5162}, -- Mithril Head Trout -- 20916
        [21143] = { 23064, 23010, 13435, 13432, 13429, 13433, 23012, 13420}, -- Gingerbread Cookie -- 21143
        [21144] = { 23064, 23010, 13435, 13432, 13429, 13433, 23012, 13420}, -- Egg Nog -- 21144
        [22480] = { 4782, 8125, 7733}, -- Tender Wolf Steak -- 22480
        [24418] = { 4879}, -- Heavy Crocolisk Stew -- 24418
        [25704] = { 2397, 16718, 3085, 17246, 3027, 14738, 5160, 4265, 8307, 4223, 5483, 3400, 2381, 2664, 4553, 19195, 26868, 16253, 12033, 16677}, -- Smoked Sagefish -- 25704
        [25954] = { 2397, 16718, 3085, 17246, 3027, 14738, 5160, 4265, 8307, 4223, 5483, 3400, 2381, 2664, 4553, 19195, 26868, 16253, 12033, 16677}, -- Sagefish Delight -- 25954
        [28267] = { 16253, 18427},
        [33276] = { 16262}, -- Lynx Steak -- 33276
        [33278] = { 16253}, -- Bat Bites -- 33278
        [33284] = { 16585, 16826}, -- Ravager Dog -- 33284
        [33285] = { 18382}, -- Sporeling Snack -- 33285
        [33286] = { 18957, 19038}, -- Blackened Basilisk -- 33286
        [33287] = { 20096, 20097}, -- Roasted Clefthoof -- 33287
        [33288] = { 18957, 19038}, -- Warp Burger -- 33288
        [33289] = { 20096, 20097}, -- Talbuk Steak -- 33289
        [33290] = { 18015, 20028}, -- Blackened Trout -- 33290
        [33291] = { 18011, 20028}, -- Feltail Delight -- 33291
        [33292] = { 18911}, -- Blackened Sporefish -- 33292
        [33293] = { 20096, 20097}, -- Grilled Mudfish -- 33293
        [33294] = { 20096, 20097}, -- Poached Bluefish -- 33294
        [33295] = { 18960, 19296}, -- Golden Fish Sticks -- 33295
        [33296] = { 18960, 19296}, -- Spicy Crawdad -- 33296
        [36210] = { 18382}, -- Clam Bar -- 36210
        [38867] = { 20916, 21113},
        [38868] = { 20916, 21113},
        [45022] = { 13420, 13433}, -- Hot Apple Cider -- 45022
        [45555] = { 31031, 31032, 33595}, -- Mega Mammoth Meal -- 45555
        [45556] = { 31031, 31032, 33595}, -- Tender Shoveltusk Steak -- 45556
        [45557] = { 31031, 31032, 33595}, -- Spiced Worm Burger -- 45557
        [45558] = { 31031, 31032, 33595}, -- Very Burnt Worg -- 45558
        [45559] = { 31031, 31032, 33595}, -- Mighty Rhino Dogs -- 45559
        [45567] = { 31031, 31032, 33595}, -- Poached Northern Sculpin -- 45567
        [45568] = { 31031, 31032, 33595}, -- Firecracker Salmon -- 45568
        [45570] = { 31031, 31032, 33595}, -- Imperial Manta Steak -- 45570
        [45571] = { 31031, 31032, 33595}, -- Spicy Blue Nettlefish -- 45571
        [46684] = { 2803, 2806}, -- Charred Bear Kabobs -- 46684
        [46688] = { 2803, 2806}, -- Juicy Bear Burger -- 46688
        [57423] = { 31031, 31032, 33595}, -- Fish Feast -- 57423
        [57433] = { 31031, 31032, 33595}, -- Spicy Fried Herring -- 57433
        [57434] = { 31031, 31032, 33595}, -- Rhinolicious Wormsteak -- 57434
        [57435] = { 31031, 31032, 33595}, -- Critter Bites -- 57435
        [57436] = { 31031, 31032, 33595}, -- Hearty Rhino -- 57436
        [57437] = { 31031, 31032, 33595}, -- Snapper Extreme -- 57437
        [57438] = { 31031, 31032, 33595}, -- Blackened Worg Steak -- 57438
        [57439] = { 31031, 31032, 33595}, -- Cuttlesteak -- 57439
        [57440] = { 31031, 31032, 33595}, -- Spiced Mammoth Treats -- 57440
        [57441] = { 31031, 31032, 33595}, -- Blackened Dragonfin -- 57441
        [57442] = { 31031, 31032, 33595}, -- Dragonfin Filet -- 57442
        [57443] = { 31031, 31032, 33595}, -- Tracker Snacks -- 57443
        [58527] = { 31031, 31032, 33595}, -- Gigantic Feast -- 58527
        [58528] = { 31031, 31032, 33595}, -- Small Feast -- 58528
        [62350] = { 31031, 31032, 33595}, -- Worg Tartare -- 62350
        [7776] = { 3346, 5757}, -- Enchant Chest - Lesser Mana -- 7776
        [7793] = { 3012, 5158, 3346, 5758}, -- Enchant 2H Weapon - Lesser Intellect -- 7793
        [7867] = { 3012, 3537}, -- Enchant Boots - Minor Agility -- 7867
        [13419] = { 3954, 12043},
        [13536] = { 3954, 12043}, -- Enchant Bracer - Lesser Strength -- 13536
        [13931] = { 989, 4229}, -- Enchant Bracer - Deflection -- 13931
        [20015] = { 12022}, -- Enchant Cloak - Superior Defense -- 20015
        [20017] = { 4229, 4561}, -- Enchant Shield - Greater Stamina -- 20017
        [20026] = { 11189}, -- Enchant Chest - Major Health -- 20026
        [20051] = { 12022}, -- Runed Arcanite Rod -- 20051
        [25124] = { 28714, 15419, 4617, 18951, 5757, 16722, 27030, 19234, 3012, 5758, 26569, 18773, 4228, 5158, 16635, 19663, 3346, 1318, 27054, 27147, 19537, 18753, 19540}, -- Minor Wizard Oil -- 25124
        [25125] = { 28714, 15419, 4617, 18951, 5757, 16722, 27030, 19234, 3012, 5758, 26569, 18773, 4228, 5158, 16635, 19663, 3346, 1318, 27054, 27147, 19537, 18753, 19540}, -- Minor Mana Oil -- 25125
        [25126] = { 28714, 15419, 4617, 18951, 5757, 16722, 27030, 19234, 3012, 5758, 26569, 18773, 4228, 5158, 16635, 19663, 3346, 1318, 27054, 27147, 19537, 18753, 19540}, -- Lesser Wizard Oil -- 25126
        [25127] = { 15419}, -- Lesser Mana Oil -- 25127
        [25128] = { 15419}, -- Wizard Oil -- 25128
        [27945] = { 18664}, -- Enchant Shield - Intellect -- 27945
        [28016] = { 19663, 16722, 16635}, -- Superior Mana Oil -- 28016
        [28019] = { 19663, 16722, 16635}, -- Superior Wizard Oil -- 28019
        [28022] = { 19663, 16722, 16635}, -- Large Prismatic Shard -- 28022
        [32665] = { 18960, 19004}, -- Runed Adamantite Rod -- 32665
        [32667] = { 19663}, -- Runed Eternium Rod -- 32667
        [34009] = { 19663}, -- Enchant Shield - Major Stamina -- 34009
        [44524] = { 32514}, -- Enchant Weapon - Icebreaker -- 44524
        [44575] = { 32514}, -- Enchant Bracers - Greater Assault -- 44575
        [44576] = { 32514}, -- Enchant Weapon - Lifeward -- 44576
        [44588] = { 32514}, -- Enchant Chest - Exceptional Resilience -- 44588
        [44591] = { 32514}, -- Enchant Cloak - Titanweave -- 44591
        [44595] = { 32514}, -- Enchant 2H Weapon - Scourgebane -- 44595
        [44621] = { 32514}, -- Enchant Weapon - Giant Slayer -- 44621
        [44625] = { 32514}, -- Enchant Gloves - Armsman -- 44625
        [44631] = { 32514}, -- Enchant Cloak - Shadow Armor -- 44631
        [47672] = { 32514}, -- Enchant Cloak - Mighty Armor -- 47672
        [47898] = { 32514}, -- Enchant Cloak - Greater Speed -- 47898
        [47899] = { 32514}, -- Enchant Cloak - Wisdom -- 47899
        [47901] = { 32514}, -- Enchant Boots - Tuskarr's Vitality -- 47901
        [59619] = { 32514}, -- Enchant Weapon - Accuracy -- 59619
        [59621] = { 32514}, -- Enchant Weapon - Berserking -- 59621
        [59625] = { 32514}, -- Enchant Weapon - Black Magic -- 59625
        [60691] = { 32514}, -- Enchant 2H Weapon - Massacre -- 60691
        [60692] = { 32514}, -- Enchant Chest - Powerful Stats -- 60692
        [60707] = { 32514}, -- Enchant Weapon - Superior Potency -- 60707
        [60714] = { 32514}, -- Enchant Weapon - Mighty Spellpower -- 60714
        [60763] = { 32514}, -- Enchant Boots - Greater Assault -- 60763
        [60767] = { 32514}, -- Enchant Bracers - Superior Spellpower -- 60767
        [62256] = { 32514}, -- Enchant Bracers - Major Stamina -- 62256
        [62948] = { 32514}, -- Enchant Staff - Greater Spellpower -- 62948
        [3939] = { 2682, 6730}, -- Lovingly Crafted Boomstick -- 3939
        [3952] = { 3495, 2683, 2682}, -- Minor Recombobulator -- 3952
        [3969] = { 2687}, -- Mechanical Dragonling -- 3969
        [3979] = { 2685}, -- Accurate Scope -- 3979
        [12597] = { 8679, 9544}, -- Deadly Scope -- 12597
        [12617] = { 8678}, -- Deepdive Helmet -- 12617
        [12624] = { 2688}, -- Mithril Mechanical Dragonling -- 12624
        [19814] = { 11185}, -- Masterwork Target Dummy -- 19814
        [19815] = { 11185}, -- Delicate Arcanite Converter -- 19815
        [23066] = { 3413}, -- Red Firework -- 23066
        [23067] = { 5175}, -- Blue Firework -- 23067
        [23068] = { 2838, 3495}, -- Green Firework -- 23068
        [23069] = { 8131}, -- EZ-Thro Dynamite II -- 23069
        [23077] = { 11185}, -- Gyrofreeze Ice Reflector -- 23077
        [23080] = { 11185}, -- Powerful Seaforium Charge -- 23080
        [23507] = { 14637}, -- Snake Burst Firework -- 23507
        [26416] = { 15909}, -- Small Blue Rocket -- 26416
        [26417] = { 15909}, -- Small Green Rocket -- 26417
        [26418] = { 15909}, -- Small Red Rocket -- 26418
        [26420] = { 15909}, -- Large Blue Rocket -- 26420
        [26421] = { 15909}, -- Large Green Rocket -- 26421
        [26422] = { 15909}, -- Large Red Rocket -- 26422
        [26423] = { 15909}, -- Blue Rocket Cluster -- 26423
        [26424] = { 15909}, -- Green Rocket Cluster -- 26424
        [26425] = { 15909}, -- Red Rocket Cluster -- 26425
        [26426] = { 15909}, -- Large Blue Rocket Cluster -- 26426
        [26427] = { 15909}, -- Large Green Rocket Cluster -- 26427
        [26428] = { 15909}, -- Large Red Rocket Cluster -- 26428
        [26442] = { 15909}, -- Firework Launcher -- 26442
        [26443] = { 15909}, -- Firework Cluster Launcher -- 26443
        [28327] = { 3413, 5175},
        [30313] = { 16657, 19661, 16782}, -- Adamantite Rifle -- 30313
        [30316] = { 18775, 19836}, -- Cogspinner Goggles -- 30316
        [30318] = { 18775, 19383}, -- Ultra-Spectropic Detection Goggles -- 30318
        [30329] = { 19351, 19836}, -- Adamantite Scope -- 30329
        [30341] = { 16657, 18484, 19383, 16782}, -- White Smoke Flare -- 30341
        [30347] = { 16657, 16782, 18484}, -- Adamantite Shell Machine -- 30347
        [30348] = { 16657, 16782, 18484}, -- Fel Iron Toolbox -- 30348
        [30349] = { 28722}, -- Titanium Toolbox -- 30349
        [39895] = { 11185, 19661}, -- Fused Wiring -- 39895
        [71015] = { 28723}, -- Glyph of Rapid Rejuvenation -- 71015
        [71101] = { 28723, 30734, 30735}, -- Glyph of Eternal Water -- 71101
        [71102] = { 28723}, -- Glyph of Quick Decay -- 71102
        [25610] = { 1448, 4877}, -- Pendant of the Agate Shield -- 25610
        [26875] = { 989, 4897}, -- Figurine - Black Pearl Panther -- 26875
        [26910] = { 12941}, -- Ring of Bitter Shadows -- 26910
        [26915] = { 11189}, -- Necklace of the Diamond Tower -- 26915
        [31101] = { 21474, 21485}, -- Mystic Dawnstone -- 31101
        [43493] = { 18821, 18822}, -- Steady Talasite -- 43493
        [53830] = { 28721, 33602}, -- Bold Scarlet Ruby -- 53830
        [53857] = { 34079, 34039}, -- Mystic Sun Crystal -- 53857
        [53865] = { 34079, 34039}, -- Mysterious Shadow Crystal -- 53865
        [53875] = { 34079, 34039}, -- Resplendent Huge Citrine -- 53875
        [53879] = { 34079, 34039}, -- Lucent Huge Citrine -- 53879
        [53884] = { 34079, 34039}, -- Durable Huge Citrine -- 53884
        [53888] = { 34079, 34039}, -- Empowered Huge Citrine -- 53888
        [53919] = { 34079, 34039}, -- Steady Dark Jade -- 53919
        [53924] = { 34079, 34039}, -- Turbid Dark Jade -- 53924
        [53929] = { 34079, 34039}, -- Opaque Dark Jade -- 53929
        [53932] = { 34079, 34039}, -- Tense Dark Jade -- 53932
        [53933] = { 34079, 34039}, -- Shattered Dark Jade -- 53933
        [53943] = { 34079, 34039}, -- Stormy Chalcedony -- 53943
        [53945] = { 28721, 33602}, -- Delicate Scarlet Ruby -- 53945
        [53948] = { 28721, 33602}, -- Subtle Scarlet Ruby -- 53948
        [53949] = { 28721, 33602}, -- Flashing Scarlet Ruby -- 53949
        [53952] = { 28721, 33602}, -- Solid Sky Sapphire -- 53952
        [53954] = { 28721, 33602}, -- Lustrous Sky Sapphire -- 53954
        [53955] = { 32296, 32294, 30489}, -- Stormy Sky Sapphire -- 53955
        [53958] = { 28721, 33602}, -- Rigid Autumn's Glow -- 53958
        [53960] = { 32296, 32294, 30489}, -- Mystic Autumn's Glow -- 53960
        [53961] = { 28721, 33602}, -- Quick Autumn's Glow -- 53961
        [53963] = { 28721, 33602}, -- Shifting Twilight Opal -- 53963
        [53967] = { 28721, 33602}, -- Royal Twilight Opal -- 53967
        [53968] = { 32296, 32294, 30489}, -- Mysterious Twilight Opal -- 53968
        [53971] = { 28721, 33602}, -- Regal Twilight Opal -- 53971
        [53973] = { 28721, 33602}, -- Puissant Twilight Opal -- 53973
        [53978] = { 32296, 32294, 30489}, -- Resplendent Monarch Topaz -- 53978
        [53980] = { 28721, 33602}, -- Glinting Monarch Topaz -- 53980
        [53981] = { 32296, 32294, 30489}, -- Lucent Monarch Topaz -- 53981
        [53983] = { 28721, 33602}, -- Luminous Monarch Topaz -- 53983
        [53984] = { 28721, 33602}, -- Potent Monarch Topaz -- 53984
        [53985] = { 28721, 33602}, -- Veiled Monarch Topaz -- 53985
        [53986] = { 32296, 32294, 30489}, -- Durable Monarch Topaz -- 53986
        [53987] = { 28721, 33602}, -- Reckless Monarch Topaz -- 53987
        [53990] = { 32296, 32294, 30489}, -- Empowered Monarch Topaz -- 53990
        [53991] = { 28721, 33602}, -- Stark Monarch Topaz -- 53991
        [53997] = { 28721, 33602}, -- Vivid Forest Emerald -- 53997
        [53998] = { 28721, 33602}, -- Enduring Forest Emerald -- 53998
        [54000] = { 32296, 32294, 30489}, -- Steady Forest Emerald -- 54000
        [54001] = { 28721, 33602}, -- Forceful Forest Emerald -- 54001
        [54002] = { 28721, 33602}, -- Seer's Forest Emerald -- 54002
        [54005] = { 32296, 32294, 30489}, -- Turbid Forest Emerald -- 54005
        [54006] = { 28721, 33602}, -- Intricate Forest Emerald -- 54006
        [54009] = { 28721, 33602}, -- Lambent Forest Emerald -- 54009
        [54010] = { 32296, 32294, 30489}, -- Opaque Forest Emerald -- 54010
        [54011] = { 28721, 33602}, -- Energized Forest Emerald -- 54011
        [54013] = { 32296, 32294, 30489}, -- Tense Forest Emerald -- 54013
        [54014] = { 32296, 32294, 30489}, -- Shattered Forest Emerald -- 54014
        [55384] = { 28721, 33602}, -- Effulgent Skyflare Diamond -- 55384
        [55387] = { 32296, 32294, 30489}, -- Forlorn Skyflare Diamond -- 55387
        [55388] = { 32296, 32294, 30489}, -- Impassive Skyflare Diamond -- 55388
        [55389] = { 28721, 33602}, -- Chaotic Skyflare Diamond -- 55389
        [55392] = { 28721, 33602}, -- Ember Skyflare Diamond -- 55392
        [55393] = { 32296, 32294, 30489}, -- Enigmatic Skyflare Diamond -- 55393
        [55396] = { 28721, 33602}, -- Insightful Earthsiege Diamond -- 55396
        [55400] = { 28721, 33602}, -- Relentless Earthsiege Diamond -- 55400
        [55403] = { 28721, 33602}, -- Trenchant Earthsiege Diamond -- 55403
        [55404] = { 28721, 33602}, -- Invigorating Earthsiege Diamond -- 55404
        [55407] = { 28721, 33602}, -- Revitalizing Skyflare Diamond -- 55407
        [56049] = { 28721, 33602}, -- Bold Dragon's Eye -- 56049
        [56052] = { 28721, 33602}, -- Delicate Dragon's Eye -- 56052
        [56053] = { 28721, 33602}, -- Runed Dragon's Eye -- 56053
        [56054] = { 28721, 33602}, -- Bright Dragon's Eye -- 56054
        [56055] = { 28721, 33602}, -- Subtle Dragon's Eye -- 56055
        [56056] = { 28721, 33602}, -- Flashing Dragon's Eye -- 56056
        [56074] = { 28721, 33602}, -- Brilliant Dragon's Eye -- 56074
        [56076] = { 28721, 33602}, -- Fractured Dragon's Eye -- 56076
        [56077] = { 28721, 33602}, -- Lustrous Dragon's Eye -- 56077
        [56079] = { 28721, 33602}, -- Mystic Dragon's Eye -- 56079
        [56081] = { 28721, 33602}, -- Precise Dragon's Eye -- 56081
        [56083] = { 28721, 33602}, -- Quick Dragon's Eye -- 56083
        [56084] = { 28721, 33602}, -- Rigid Dragon's Eye -- 56084
        [56085] = { 28721, 33602}, -- Smooth Dragon's Eye -- 56085
        [56086] = { 28721, 33602}, -- Solid Dragon's Eye -- 56086
        [56087] = { 28721, 33602}, -- Sparkling Dragon's Eye -- 56087
        [56088] = { 28721, 33602}, -- Stormy Dragon's Eye -- 56088
        [56089] = { 28721, 33602}, -- Thick Dragon's Eye -- 56089
        [56496] = { 28721, 33602}, -- Titanium Impact Band -- 56496
        [56497] = { 28721, 33602}, -- Titanium Earthguard Ring -- 56497
        [56498] = { 28721, 33602}, -- Titanium Spellshock Ring -- 56498
        [56499] = { 28721, 33602}, -- Titanium Impact Choker -- 56499
        [56500] = { 28721, 33602}, -- Titanium Earthguard Chain -- 56500
        [56501] = { 28721, 33602}, -- Titanium Spellshock Necklace -- 56501
        [58147] = { 28721, 33602}, -- Ring of Earthen Might -- 58147
        [58148] = { 28721, 33602}, -- Ring of Scarlet Shadows -- 58148
        [58149] = { 28721, 33602}, -- Windfire Band -- 58149
        [58150] = { 28721, 33602}, -- Ring of Northern Tears -- 58150
        [58492] = { 28721, 33602}, -- Savage Titanium Ring -- 58492
        [58507] = { 28721, 33602}, -- Savage Titanium Band -- 58507
        [58954] = { 28721, 33602}, -- Titanium Frostguard Ring -- 58954
        [66338] = { 33637, 33680, 28701, 19065}, -- Enduring Eye of Zul -- 66338
        [66428] = { 33637, 33680, 28701, 19065}, -- Steady Eye of Zul -- 66428
        [66429] = { 33637, 33680, 28701, 19065}, -- Vivid Eye of Zul -- 66429
        [66430] = { 33637, 33680, 28701, 19065}, -- Dazzling Eye of Zul -- 66430
        [66431] = { 33637, 33680, 28701, 19065}, -- Jagged Eye of Zul -- 66431
        [66432] = { 33637, 33680, 28701, 19065}, -- Timeless Eye of Zul -- 66432
        [66433] = { 33637, 33680, 28701, 19065}, -- Seer's Eye of Zul -- 66433
        [66434] = { 33637, 33680, 28701, 19065}, -- Forceful Eye of Zul -- 66434
        [66435] = { 33637, 33680, 28701, 19065}, -- Misty Eye of Zul -- 66435
        [66436] = { 33637, 33680, 28701, 19065}, -- Sundered Eye of Zul -- 66436
        [66437] = { 33637, 33680, 28701, 19065}, -- Shining Eye of Zul -- 66437
        [66438] = { 33637, 33680, 28701, 19065}, -- Tense Eye of Zul -- 66438
        [66439] = { 33637, 33680, 28701, 19065}, -- Lambent Eye of Zul -- 66439
        [66440] = { 33637, 33680, 28701, 19065}, -- Intricate Eye of Zul -- 66440
        [66441] = { 33637, 33680, 28701, 19065}, -- Radiant Eye of Zul -- 66441
        [66442] = { 33637, 33680, 28701, 19065}, -- Energized Eye of Zul -- 66442
        [66443] = { 33637, 33680, 28701, 19065}, -- Shattered Eye of Zul -- 66443
        [66444] = { 33637, 33680, 28701, 19065}, -- Opaque Eye of Zul -- 66444
        [66445] = { 33637, 33680, 28701, 19065}, -- Turbid Eye of Zul -- 66445
        [66446] = { 33637, 33680, 28701, 19065}, -- Runed Cardinal Ruby -- 66446
        [66447] = { 33637, 33680, 28701, 19065}, -- Bold Cardinal Ruby -- 66447
        [66448] = { 33637, 33680, 28701, 19065}, -- Delicate Cardinal Ruby -- 66448
        [66449] = { 33637, 33680, 28701, 19065}, -- Bright Cardinal Ruby -- 66449
        [66450] = { 33637, 33680, 28701, 19065}, -- Precise Cardinal Ruby -- 66450
        [66451] = { 33637, 33680, 28701, 19065}, -- Fractured Cardinal Ruby -- 66451
        [66452] = { 33637, 33680, 28701, 19065}, -- Subtle Cardinal Ruby -- 66452
        [66453] = { 33637, 33680, 28701, 19065}, -- Flashing Cardinal Ruby -- 66453
        [66497] = { 33637, 33680, 28701, 19065}, -- Solid Majestic Zircon -- 66497
        [66498] = { 33637, 33680, 28701, 19065}, -- Sparkling Majestic Zircon -- 66498
        [66499] = { 33637, 33680, 28701, 19065}, -- Stormy Majestic Zircon -- 66499
        [66500] = { 33637, 33680, 28701, 19065}, -- Lustrous Majestic Zircon -- 66500
        [66501] = { 33637, 33680, 28701, 19065}, -- Rigid King's Amber -- 66501
        [66502] = { 33637, 33680, 28701, 19065}, -- Smooth King's Amber -- 66502
        [66503] = { 33637, 33680, 28701, 19065}, -- Brilliant King's Amber -- 66503
        [66504] = { 33637, 33680, 28701, 19065}, -- Thick King's Amber -- 66504
        [66505] = { 33637, 33680, 28701, 19065}, -- Mystic King's Amber -- 66505
        [66506] = { 33637, 33680, 28701, 19065}, -- Quick King's Amber -- 66506
        [66553] = { 33637, 33680, 28701, 19065}, -- Balanced Dreadstone -- 66553
        [66554] = { 33637, 33680, 28701, 19065}, -- Sovereign Dreadstone -- 66554
        [66555] = { 33637, 33680, 28701, 19065}, -- Glowing Dreadstone -- 66555
        [66556] = { 33637, 33680, 28701, 19065}, -- Purified Dreadstone -- 66556
        [66557] = { 33637, 33680, 28701, 19065}, -- Shifting Dreadstone -- 66557
        [66558] = { 33637, 33680, 28701, 19065}, -- Royal Dreadstone -- 66558
        [66559] = { 33637, 33680, 28701, 19065}, -- Regal Dreadstone -- 66559
        [66560] = { 33637, 33680, 28701, 19065}, -- Defender's Dreadstone -- 66560
        [66561] = { 33637, 33680, 28701, 19065}, -- Guardian's Dreadstone -- 66561
        [66562] = { 33637, 33680, 28701, 19065}, -- Mysterious Dreadstone -- 66562
        [66563] = { 33637, 33680, 28701, 19065}, -- Puissant Dreadstone -- 66563
        [66564] = { 33637, 33680, 28701, 19065}, -- Infused Dreadstone -- 66564
        [66565] = { 33637, 33680, 28701, 19065}, -- Tenuous Dreadstone -- 66565
        [66566] = { 33637, 33680, 28701, 19065}, -- Luminous Ametrine -- 66566
        [66567] = { 33637, 33680, 28701, 19065}, -- Inscribed Ametrine -- 66567
        [66568] = { 33637, 33680, 28701, 19065}, -- Deadly Ametrine -- 66568
        [66569] = { 33637, 33680, 28701, 19065}, -- Potent Ametrine -- 66569
        [66570] = { 33637, 33680, 28701, 19065}, -- Veiled Ametrine -- 66570
        [66571] = { 33637, 33680, 28701, 19065}, -- Durable Ametrine -- 66571
        [66572] = { 33637, 33680, 28701, 19065}, -- Etched Ametrine -- 66572
        [66573] = { 33637, 33680, 28701, 19065}, -- Pristine Ametrine -- 66573
        [66574] = { 33637, 33680, 28701, 19065}, -- Reckless Ametrine -- 66574
        [66575] = { 33637, 33680, 28701, 19065}, -- Glinting Ametrine -- 66575
        [66576] = { 33637, 33680, 28701, 19065}, -- Accurate Ametrine -- 66576
        [66577] = { 33637, 33680, 28701, 19065}, -- Wicked Ametrine -- 66577
        [66578] = { 33637, 33680, 28701, 19065}, -- Glimmering Ametrine -- 66578
        [66579] = { 33637, 33680, 28701, 19065}, -- Champion's Ametrine -- 66579
        [66580] = { 33637, 33680, 28701, 19065}, -- Empowered Ametrine -- 66580
        [66581] = { 33637, 33680, 28701, 19065}, -- Stalwart Ametrine -- 66581
        [66582] = { 33637, 33680, 28701, 19065}, -- Resplendent Ametrine -- 66582
        [66583] = { 33637, 33680, 28701, 19065}, -- Fierce Ametrine -- 66583
        [66584] = { 33637, 33680, 28701, 19065}, -- Deft Ametrine -- 66584
        [66585] = { 33637, 33680, 28701, 19065}, -- Lucent Ametrine -- 66585
        [66586] = { 33637, 33680, 28701, 19065}, -- Resolute Ametrine -- 66586
        [66587] = { 33637, 33680, 28701, 19065}, -- Stark Ametrine -- 66587
        [68253] = { 33637, 33680, 28701, 19065}, -- Nightmare Tear -- 68253
        [3772] = { 2679, 2698}, -- Green Leather Armor -- 3772
        [3778] = { 2699}, -- Gem-studded Leather Belt -- 3778
        [4097] = { 2816}, -- Raptor Hide Belt -- 4097
        [7149] = { 3958, 2810, 4877, 2821}, -- Barbaric Leggings -- 7149
        [9070] = { 2697}, -- Black Whelp Cloak -- 9070
        [9072] = { 2679}, -- Red Whelp Gloves -- 9072
        [9146] = { 6731}, -- Herbalist's Gloves -- 9146
        [9147] = { 3537}, -- Earthen Leather Shoulders -- 9147
        [9202] = { 7854, 7852, 4589, 4225}, -- Green Whelp Bracers -- 9202
        [10509] = { 7852, 7854}, -- Turtle Scale Gloves -- 10509
        [10516] = { 7854, 8160}, -- Nightscape Shoulders -- 10516
        [19048] = { 12956}, -- Heavy Scorpid Bracers -- 19048
        [19049] = { 12942, 12943}, -- Wicked Leather Gauntlets -- 19049
        [19050] = { 11874}, -- Green Dragonscale Breastplate -- 19050
        [19053] = { 12957}, -- Chimeric Gloves -- 19053
        [19061] = { 7852, 7854}, -- Living Shoulders -- 19061
        [19062] = { 12958}, -- Ironfeather Shoulders -- 19062
        [19066] = { 11189}, -- Frostsaber Boots -- 19066
        [19067] = { 12942, 12943}, -- Stormshroud Pants -- 19067
        [19077] = { 12957}, -- Blue Dragonscale Breastplate -- 19077
        [19084] = { 12959}, -- Devilsaur Gauntlets -- 19084
        [19085] = { 9499}, -- Black Dragonscale Breastplate -- 19085
        [19088] = { 12956}, -- Heavy Scorpid Helm -- 19088
        [20853] = { 12944}, -- Corehound Boots -- 20853
        [20854] = { 12944}, -- Molten Helm -- 20854
        [22711] = { 2699}, -- Shadowskin Gloves -- 22711
        [23190] = { 5128, 3366}, -- Heavy Leather Ball -- 23190
        [23399] = { 4225, 4589}, -- Barbaric Bracers -- 23399
        [24940] = { 777}, -- Black Whelp Tunic -- 24940
        [32455] = { 16748, 16689, 19196}, -- Heavy Knothide Leather -- 32455
        [32461] = { 18672}, -- Riding Crop -- 32461
        [32482] = { 16689, 16748}, -- Comfortable Insoles -- 32482
        [44953] = { 13420, 13433}, -- Winter Boots -- 44953
        [60697] = { 32515}, -- Eviscerator's Facemask -- 60697
        [60702] = { 32515}, -- Eviscerator's Shoulderpads -- 60702
        [60703] = { 32515}, -- Eviscerator's Chestguard -- 60703
        [60704] = { 32515}, -- Eviscerator's Bindings -- 60704
        [60705] = { 32515}, -- Eviscerator's Gauntlets -- 60705
        [60706] = { 32515}, -- Eviscerator's Waistguard -- 60706
        [60711] = { 32515}, -- Eviscerator's Legguards -- 60711
        [60712] = { 32515}, -- Eviscerator's Treads -- 60712
        [60715] = { 32515}, -- Overcast Headguard -- 60715
        [60716] = { 32515}, -- Overcast Spaulders -- 60716
        [60718] = { 32515}, -- Overcast Chestguard -- 60718
        [60720] = { 32515}, -- Overcast Bracers -- 60720
        [60721] = { 32515}, -- Overcast Handwraps -- 60721
        [60723] = { 32515}, -- Overcast Belt -- 60723
        [60725] = { 32515}, -- Overcast Leggings -- 60725
        [60727] = { 32515}, -- Overcast Boots -- 60727
        [60728] = { 32515}, -- Swiftarrow Helm -- 60728
        [60729] = { 32515}, -- Swiftarrow Shoulderguards -- 60729
        [60730] = { 32515}, -- Swiftarrow Hauberk -- 60730
        [60731] = { 32515}, -- Swiftarrow Bracers -- 60731
        [60732] = { 32515}, -- Swiftarrow Gauntlets -- 60732
        [60734] = { 32515}, -- Swiftarrow Belt -- 60734
        [60735] = { 32515}, -- Swiftarrow Leggings -- 60735
        [60737] = { 32515}, -- Swiftarrow Boots -- 60737
        [60743] = { 32515}, -- Stormhide Crown -- 60743
        [60746] = { 32515}, -- Stormhide Shoulders -- 60746
        [60747] = { 32515}, -- Stormhide Hauberk -- 60747
        [60748] = { 32515}, -- Stormhide Wristguards -- 60748
        [60749] = { 32515}, -- Stormhide Grips -- 60749
        [60750] = { 32515}, -- Stormhide Belt -- 60750
        [60751] = { 32515}, -- Stormhide Legguards -- 60751
        [60752] = { 32515}, -- Stormhide Stompers -- 60752
        [60754] = { 32515}, -- Giantmaim Legguards -- 60754
        [60755] = { 32515}, -- Giantmaim Bracers -- 60755
        [60756] = { 32515}, -- Revenant's Breastplate -- 60756
        [60757] = { 32515}, -- Revenant's Treads -- 60757
        [60758] = { 32515}, -- Trollwoven Spaulders -- 60758
        [60759] = { 32515}, -- Trollwoven Girdle -- 60759
        [60760] = { 32515}, -- Earthgiving Legguards -- 60760
        [60761] = { 32515}, -- Earthgiving Boots -- 60761
        [60996] = { 32515}, -- Polar Vest -- 60996
        [60997] = { 32515}, -- Polar Cord -- 60997
        [60998] = { 32515}, -- Polar Boots -- 60998
        [60999] = { 32515}, -- Icy Scale Chestguard -- 60999
        [61000] = { 32515}, -- Icy Scale Belt -- 61000
        [61002] = { 32515}, -- Icy Scale Boots -- 61002
        [62176] = { 32515}, -- Windripper Boots -- 62176
        [62177] = { 32515}, -- Windripper Leggings -- 62177
        [3873] = { 2663}, -- Black Swashbuckler's Shirt -- 3873
        [7630] = { 66},
        [12085] = { 4577, 8681}, -- Tuxedo Shirt -- 12085
        [12089] = { 4577, 8681}, -- Tuxedo Pants -- 12089
        [12093] = { 4577, 8681}, -- Tuxedo Jacket -- 12093
        [18405] = { 11189}, -- Runecloth Bag -- 18405
        [18406] = { 7940}, -- Runecloth Robe -- 18406
        [18409] = { 7940}, -- Runecloth Cloak -- 18409
        [18560] = { 11189}, -- Mooncloth -- 18560
        [26085] = { 6568}, -- Soul Pouch -- 26085
        [26403] = { 15909}, -- Festival Dress -- 26403
        [26407] = { 15909}, -- Festive Red Pant Suit -- 26407
        [26747] = { 19213, 16767, 16638}, -- Bolt of Imbued Netherweave -- 26747
        [26749] = { 19015, 19213}, -- Imbued Netherweave Bag -- 26749
        [26751] = { 22208, 29512}, -- Primal Mooncloth -- 26751
        [26752] = { 22213, 29511}, -- Spellfire Belt -- 26752
        [26753] = { 22213, 29511}, -- Spellfire Gloves -- 26753
        [26754] = { 22213, 29511}, -- Spellfire Robe -- 26754
        [26756] = { 22212, 29510}, -- Frozen Shadoweave Shoulders -- 26756
        [26757] = { 22212, 29510}, -- Frozen Shadoweave Boots -- 26757
        [26758] = { 22212, 29510}, -- Frozen Shadoweave Robe -- 26758
        [26759] = { 22212, 29510}, -- Ebon Shadowbag -- 26759
        [26760] = { 22208, 29512}, -- Primal Mooncloth Belt -- 26760
        [26761] = { 22208, 29512}, -- Primal Mooncloth Shoulders -- 26761
        [26762] = { 22208, 29512}, -- Primal Mooncloth Robe -- 26762
        [26773] = { 19213, 16767, 16638}, -- Netherweave Robe -- 26773
        [26774] = { 19213, 16767, 16638}, -- Netherweave Tunic -- 26774
        [27658] = { 28714, 15419, 4617, 18951, 5757, 16722, 27030, 19234, 3012, 5758, 26569, 18773, 4228, 5158, 16635, 19663, 3346, 1318, 27054, 27147, 19537, 18753, 19540}, -- Enchanted Mageweave Pouch -- 27658
        [27659] = { 15419}, -- Enchanted Runecloth Bag -- 27659
        [31373] = { 22213, 29511}, -- Spellcloth -- 31373
        [36686] = { 22212, 29510}, -- Shadowcloth -- 36686
        [44950] = { 13420}, -- Green Winter Clothes -- 44950
        [44958] = { 13433}, -- Red Winter Clothes -- 44958
        [49677] = { 15165}, -- Dress Shoes -- 49677
        [50644] = { 15165}, -- Haliscan Jacket -- 50644
        [50647] = { 15165}, -- Haliscan Pantaloons -- 50647
        [75597] = { 40160}, -- Frosty Flying Carpet -- 75597
        [968403] = { 970032},
        [968406] = { 970026},
        [968409] = { 970022},
        [968412] = { 970023},
        [968415] = { 970028},
        [968418] = { 970024},
        [968421] = { 970018},
        [968424] = { 970019},
        [968427] = { 970034},
        [968430] = { 970031},
        [968433] = { 970025},
        [968404] = { 970032},
        [968407] = { 970026},
        [968410] = { 970022},
        [968413] = { 970023},
        [968416] = { 970028},
        [968419] = { 970024},
        [968422] = { 970018},
        [968425] = { 970019},
        [968428] = { 970034},
        [968431] = { 970031},
        [968434] = { 970025},
        [968019] = { 970006},
        [968022] = { 970006},
        [968025] = { 970000},
        [968028] = { 970011},
        [968031] = { 970007},
        [968034] = { 970002},
        [968037] = { 970004},
        [968040] = { 970001},
        [968020] = { 970006},
        [968023] = { 970006},
        [968026] = { 970000},
        [968029] = { 970011},
        [968032] = { 970007},
        [968035] = { 970002},
        [968038] = { 970004},
        [968041] = { 970001},
        [968001] = { 970000},
        [968004] = { 970001},
        [968007] = { 970002},
        [968010] = { 970003},
        [968013] = { 970004},
        [968016] = { 970005},
        [968002] = { 970000},
        [968005] = { 970001},
        [968008] = { 970002},
        [968011] = { 970003},
        [968014] = { 970004},
        [968017] = { 970005},
        [968043] = { 970013},
        [968046] = { 970005},
        [968049] = { 970014},
        [968052] = { 970010},
        [968055] = { 970008},
        [968058] = { 970012},
        [968044] = { 970013},
        [968047] = { 970005},
        [968050] = { 970014},
        [968053] = { 970010},
        [968056] = { 970008},
        [968059] = { 970012},
        [968677] = { 970010},
        [968680] = { 970016},
        [968683] = { 970013},
        [968686] = { 970003},
        [968689] = { 970017},
        [968692] = { 970012},
        [968695] = { 970014},
        [968698] = { 970007},
        [968701] = { 970009},
        [968770] = { 970015},
        [968678] = { 970010},
        [968681] = { 970016},
        [968684] = { 970013},
        [968687] = { 970003},
        [968690] = { 970017},
        [968693] = { 970012},
        [968696] = { 970014},
        [968699] = { 970007},
        [968702] = { 970009},
        [968771] = { 970015},
        [968280] = { 970018},
        [968283] = { 970004},
        [968286] = { 970022},
        [968289] = { 970029},
        [968292] = { 970035},
        [968295] = { 970040},
        [968298] = { 970034},
        [968301] = { 970036},
        [968304] = { 970026},
        [968307] = { 970042},
        [968310] = { 970033},
        [968313] = { 970035},
        [968316] = { 970042},
        [968319] = { 970028},
        [968322] = { 970030},
        [968325] = { 970029},
        [968328] = { 970039},
        [968331] = { 970041},
        [968334] = { 970032},
        [968337] = { 970038},
        [968340] = { 970037},
        [968343] = { 970025},
        [968346] = { 970021},
        [968349] = { 970020},
        [968352] = { 970037},
        [968355] = { 970038},
        [968358] = { 970032},
        [968361] = { 970027},
        [968364] = { 970040},
        [968367] = { 970021},
        [968370] = { 970020},
        [968373] = { 970031},
        [968376] = { 970030},
        [968379] = { 970041},
        [968382] = { 970024},
        [968385] = { 970036},
        [968388] = { 970027},
        [968391] = { 970023},
        [968394] = { 970034},
        [968397] = { 970019},
        [968400] = { 970039},
        [968281] = { 970018},
        [968284] = { 970004},
        [968287] = { 970022},
        [968290] = { 970029},
        [968293] = { 970035},
        [968296] = { 970040},
        [968299] = { 970034},
        [968302] = { 970036},
        [968305] = { 970026},
        [968308] = { 970042},
        [968311] = { 970033},
        [968314] = { 970035},
        [968317] = { 970042},
        [968320] = { 970028},
        [968323] = { 970030},
        [968326] = { 970029},
        [968329] = { 970039},
        [968332] = { 970041},
        [968335] = { 970032},
        [968338] = { 970038},
        [968341] = { 970037},
        [968344] = { 970025},
        [968347] = { 970021},
        [968350] = { 970020},
        [968353] = { 970037},
        [968356] = { 970038},
        [968359] = { 970032},
        [968362] = { 970027},
        [968365] = { 970040},
        [968368] = { 970021},
        [968371] = { 970020},
        [968374] = { 970031},
        [968377] = { 970030},
        [968380] = { 970041},
        [968383] = { 970024},
        [968386] = { 970036},
        [968389] = { 970027},
        [968392] = { 970023},
        [968395] = { 970034},
        [968398] = { 970019},
        [968401] = { 970039},
        [968500] = { 970011},
        [968496] = { 970011},
        [968506] = { 970008},
        [968498] = { 970008},
        [968502] = { 970016},
        [968504] = { 970016},
    },
    RepVendor = {
        [17559] = { "Argent Dawn", "Honored", 10856, 11536, 10857}, -- Transmute: Air to Fire -- 17559
        [17561] = { "Timbermaw Hold", "Friendly", 11557}, -- Transmute: Earth to Water -- 17561
        [17632] = { "The Sha'tar", "Revered", 21432}, -- Alchemist's Stone -- 17632
        [17635] = { "The Sha'tar", "Exalted", 21432}, -- Flask of the Titans -- 17635
        [17636] = { "Cenarion Expedition", "Exalted", 17904}, 
        [17637] = { "Keepers of Time", "Exalted", 21643}, -- Flask of Supreme Power -- 17637
        [17638] = { "Lower City", "Exalted", 21655}, -- Flask of Chromatic Resistance -- 17638
        [24365] = { "Zandalar Tribe", "Revered", 14921}, -- Mageblood Elixir -- 24365
        [24366] = { "Zandalar Tribe", "Friendly", 14921}, -- Greater Dreamless Sleep Potion -- 24366
        [24367] = { "Zandalar Tribe", "Exalted", 14921}, -- Living Action Potion -- 24367
        [24368] = { "Zandalar Tribe", "Honored", 14921}, -- Mighty Troll's Blood Elixir -- 24368
        [25146] = { "Thorium Brotherhood", "Friendly", 12944}, -- Transmute: Elemental Fire -- 25146
        [28553] = { "Honor Hold", "Honored", 17657}, 
        [28554] = { "Sporeggar", "Exalted", 18382}, -- Shrouding Potion -- 28554
        [28556] = { "The Scryers", "Revered", 19331}, -- Elixir of Major Firepower -- 28556
        [28558] = { "Lower City", "Revered", 21655}, -- Elixir of Major Shadow Power -- 28558
        [28566] = { "The Sha'tar", "Revered", 21432}, -- Transmute: Primal Air to Fire -- 28566
        [28567] = { "Sporeggar", "Revered", 18382}, -- Transmute: Primal Earth to Water -- 28567
        [28568] = { "Kurenai", "Revered", 20240}, -- Transmute: Primal Fire to Earth -- 28568
        [28569] = { "Cenarion Expedition", "Revered", 17904}, -- Transmute: Primal Water to Air -- 28569
        [28573] = { "Cenarion Expedition", "Exalted", 17904}, -- Major Nature Protection Potion -- 28573
        [32765] = { "Cenarion Expedition", "Honored", 17904}, -- Transmute: Earthstorm Diamond -- 32765
        [32766] = { "Honor Hold", "Honored", 17657}, 
        [39637] = { "Cenarion Expedition", "Honored", 17904}, -- Earthen Elixir -- 39637
        [42736] = { "The Violet Eye", "Honored", 18255}, -- Flask of Chromatic Wonder -- 42736
        [47046] = { "Shattered Sun Offensive", "Exalted", 25032}, -- Guardian's Alchemist Stone -- 47046
        [47048] = { "Shattered Sun Offensive", "Exalted", 25032}, -- Sorcerer's Alchemist Stone -- 47048
        [47049] = { "Shattered Sun Offensive", "Exalted", 25032}, -- Redeemer's Alchemist Stone -- 47049
        [47050] = { "Shattered Sun Offensive", "Exalted", 25032}, -- Assassin's Alchemist Stone -- 47050
        [20872] = { "Thorium Brotherhood", "Honored", 12944}, -- Fiery Chain Girdle -- 20872
        [20873] = { "Thorium Brotherhood", "Revered", 12944}, -- Fiery Chain Shoulders -- 20873
        [20874] = { "Thorium Brotherhood", "Friendly", 12944}, -- Dark Iron Bracers -- 20874
        [20876] = { "Thorium Brotherhood", "Revered", 12944}, -- Dark Iron Leggings -- 20876
        [20890] = { "Thorium Brotherhood", "Honored", 12944}, -- Dark Iron Reaver -- 20890
        [20897] = { "Thorium Brotherhood", "Honored", 12944}, -- Dark Iron Destroyer -- 20897
        [23628] = { "Timbermaw Hold", "Honored", 11557}, -- Heavy Timbermaw Belt -- 23628
        [23629] = { "Timbermaw Hold", "Revered", 11557}, -- Heavy Timbermaw Boots -- 23629
        [23632] = { "Argent Dawn", "Honored", 10856, 11536, 10857}, -- Girdle of the Dawn -- 23632
        [23633] = { "Argent Dawn", "Revered", 10856, 11536, 10857}, -- Gloves of the Dawn -- 23633
        [23636] = { "Thorium Brotherhood", "Honored", 12944}, -- Dark Iron Helm -- 23636
        [23637] = { "Thorium Brotherhood", "Revered", 12944}, -- Dark Iron Gauntlets -- 23637
        [23638] = { "Thorium Brotherhood", "Revered", 12944}, -- Black Amnesty -- 23638
        [23639] = { "Thorium Brotherhood", "Revered", 12944}, -- Blackfury -- 23639
        [23650] = { "Thorium Brotherhood", "Exalted", 12944}, -- Ebon Hand -- 23650
        [23652] = { "Thorium Brotherhood", "Exalted", 12944}, -- Blackguard -- 23652
        [23653] = { "Thorium Brotherhood", "Exalted", 12944}, -- Nightfall -- 23653
        [24136] = { "Zandalar Tribe", "Revered", 14921}, -- Bloodsoul Breastplate -- 24136
        [24137] = { "Zandalar Tribe", "Honored", 14921}, -- Bloodsoul Shoulders -- 24137
        [24138] = { "Zandalar Tribe", "Friendly", 14921}, -- Bloodsoul Gauntlets -- 24138
        [24139] = { "Zandalar Tribe", "Revered", 14921}, -- Darksoul Breastplate -- 24139
        [24140] = { "Zandalar Tribe", "Honored", 14921}, -- Darksoul Leggings -- 24140
        [24141] = { "Zandalar Tribe", "Friendly", 14921}, -- Darksoul Shoulders -- 24141
        [24399] = { "Thorium Brotherhood", "Exalted", 12944}, -- Dark Iron Boots -- 24399
        [27585] = { "Cenarion Circle", "Friendly", 15176}, -- Heavy Obsidian Belt -- 27585
        [27586] = { "Cenarion Circle", "Revered", 15471}, -- Jagged Obsidian Shield -- 27586
        [27588] = { "Cenarion Circle", "Honored", 15176}, -- Light Obsidian Belt -- 27588
        [27590] = { "Cenarion Circle", "Exalted", 15471}, -- Obsidian Mail Tunic -- 27590
        [28242] = { "Argent Dawn", "Exalted", 16365}, -- Icebane Breastplate -- 28242
        [28243] = { "Argent Dawn", "Revered", 16365}, -- Icebane Gauntlets -- 28243
        [28244] = { "Argent Dawn", "Revered", 16365}, -- Icebane Bracers -- 28244
        [28461] = { "Cenarion Circle", "Revered", 15176}, -- Ironvine Breastplate -- 28461
        [28462] = { "Cenarion Circle", "Honored", 15176}, -- Ironvine Gloves -- 28462
        [28463] = { "Cenarion Circle", "Friendly", 15176}, -- Ironvine Belt -- 28463
        [29608] = { "The Scryers", "Friendly", 19331}, -- Enchanted Adamantite Belt -- 29608
        [29610] = { "The Scryers", "Revered", 19331}, -- Enchanted Adamantite Breastplate -- 29610
        [29611] = { "The Scryers", "Honored", 19331}, -- Enchanted Adamantite Boots -- 29611
        [29613] = { "The Scryers", "Exalted", 19331}, -- Enchanted Adamantite Leggings -- 29613
        [29614] = { "The Aldor", "Friendly", 19321}, -- Flamebane Bracers -- 29614
        [29615] = { "The Aldor", "Exalted", 19321}, -- Flamebane Helm -- 29615
        [29616] = { "The Aldor", "Honored", 19321}, -- Flamebane Gloves -- 29616
        [29617] = { "The Aldor", "Revered", 19321}, -- Flamebane Breastplate -- 29617
        [29656] = { "Cenarion Expedition", "Honored", 17904}, -- Adamantite Sharpening Stone -- 29656
        [29657] = { "Honor Hold", "Exalted", 17657}, 
        [32285] = { "Cenarion Expedition", "Honored", 17904}, -- Greater Rune of Warding -- 32285
        [34608] = { "Cenarion Expedition", "Honored", 17904}, -- Adamantite Weightstone -- 34608
        [38473] = { "Cenarion Expedition", "Exalted", 17904}, -- Wildguard Breastplate -- 38473
        [38475] = { "Cenarion Expedition", "Revered", 17904}, -- Wildguard Leggings -- 38475
        [38476] = { "Cenarion Expedition", "Revered", 17904}, -- Wildguard Helm -- 38476
        [38477] = { "The Violet Eye", "Honored", 16388}, -- Iceguard Breastplate -- 38477
        [38478] = { "The Violet Eye", "Revered", 16388}, -- Iceguard Leggings -- 38478
        [38479] = { "The Violet Eye", "Honored", 16388}, -- Iceguard Helm -- 38479
        [40033] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Shadesteel Sabots -- 40033
        [40034] = { "Ashtongue Deathsworn", "Friendly", 23159}, -- Shadesteel Bracers -- 40034
        [40035] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Shadesteel Greaves -- 40035
        [40036] = { "Ashtongue Deathsworn", "Friendly", 23159}, -- Shadesteel Girdle -- 40036
        [62202] = { "Horde Expedition", "Exalted", 32565, 32774}, 
        [70562] = { "The Ashen Verdict", "Revered", 37687}, -- Puresteel Legplates -- 70562
        [70563] = { "The Ashen Verdict", "Honored", 37687}, -- Protectors of Life -- 70563
        [70565] = { "The Ashen Verdict", "Revered", 37687}, -- Legplates of Painful Death -- 70565
        [70566] = { "The Ashen Verdict", "Honored", 37687}, -- Hellfrozen Bonegrinders -- 70566
        [70567] = { "The Ashen Verdict", "Revered", 37687}, -- Pillars of Might -- 70567
        [70568] = { "The Ashen Verdict", "Honored", 37687}, -- Boots of Kingly Upheaval -- 70568
        [23799] = { "Thorium Brotherhood", "Friendly", 12944}, -- Enchant Weapon - Strength -- 23799
        [23800] = { "Timbermaw Hold", "Honored", 11557}, -- Enchant Weapon - Agility -- 23800
        [23801] = { "Argent Dawn", "Honored", 10856, 11536, 10857}, -- Enchant Bracer - Mana Regeneration -- 23801
        [23802] = { "Argent Dawn", "Revered", 10856, 11536, 10857}, -- Enchant Bracer - Healing Power -- 23802
        [23803] = { "Thorium Brotherhood", "Honored", 12944}, -- Enchant Weapon - Mighty Spirit -- 23803
        [23804] = { "Thorium Brotherhood", "Revered", 12944}, -- Enchant Weapon - Mighty Intellect -- 23804
        [25072] = { "The Sha'tar", "Exalted", 21432}, -- Enchant Gloves - Threat -- 25072
        [225080] = { "Keepers of Time", "Exalted", 21643}, -- Enchant Gloves - Superior Agility -- 225080
        [25081] = { "Cenarion Circle", "Friendly", 15419}, -- Enchant Cloak - Greater Fire Resistance -- 25081
        [25082] = { "Cenarion Circle", "Honored", 15419}, -- Enchant Cloak - Greater Nature Resistance -- 25082
        [25083] = { "Cenarion Expedition", "Exalted", 17904}, -- Enchant Cloak - Stealth -- 25083
        [25084] = { "Honor Hold", "Exalted", 17657},
        [25086] = { "Lower City", "Exalted", 21655}, -- Enchant Cloak - Dodge -- 25086
        [25129] = { "Zandalar Tribe", "Honored", 14921}, -- Brilliant Wizard Oil -- 25129
        [25130] = { "Zandalar Tribe", "Friendly", 14921}, -- Brilliant Mana Oil -- 25130
        [27837] = { "Timbermaw Hold", "Friendly", 11557}, -- Enchant 2H Weapon - Agility -- 27837
        [27911] = { "Honor Hold", "Friendly", 17657},
        [27920] = { "The Consortium", "Revered", 17518}, -- Enchant Ring - Striking -- 27920
        [27924] = { "Keepers of Time", "Honored", 21643}, -- Enchant Ring - Spellpower -- 27924
        [27926] = { "The Sha'tar", "Revered", 21432}, -- Enchant Ring - Healing Power -- 27926
        [27927] = { "Lower City", "Honored", 21655}, -- Enchant Ring - Stats -- 27927
        [27960] = { "Honor Hold", "Revered", 17657},
        [27967] = { "The Consortium", "Honored", 20242, 23007}, -- Enchant Weapon - Major Striking -- 27967
        [33994] = { "Cenarion Expedition", "Revered", 17904}, -- Enchant Gloves - Precise Strikes -- 33994
        [33997] = { "Keepers of Time", "Honored", 21643}, -- Enchant Gloves - Major Spellpower -- 33997
        [33999] = { "The Sha'tar", "Honored", 21432}, -- Enchant Gloves - Major Healing -- 33999
        [34003] = { "The Consortium", "Friendly", 20242, 23007}, -- Enchant Cloak - Spell Penetration -- 34003
        [34010] = { "The Sha'tar", "Revered", 21432}, -- Enchant Weapon - Major Healing -- 34010
        [42620] = { "The Violet Eye", "Exalted", 18255}, -- Enchant Weapon - Greater Agility -- 42620
        [45765] = { "Shattered Sun Offensive", "Honored", 25032}, -- Void Shatter -- 45765
        [46594] = { "Shattered Sun Offensive", "Honored", 25032}, -- Enchant Chest - Defense -- 46594
        [24356] = { "Zandalar Tribe", "Honored", 14921}, -- Bloodvine Goggles -- 24356
        [24357] = { "Zandalar Tribe", "Friendly", 14921}, -- Bloodvine Lens -- 24357
        [30344] = { "Cenarion Expedition", "Friendly", 17904}, -- Green Smoke Flare -- 30344
        [30547] = { "The Consortium", "Revered", 20242, 23007}, -- Elemental Seaforium Charge -- 30547
        [72952] = { "The Ashen Verdict", "Honored", 37687}, -- Shatter Rounds -- 72952
        [72953] = { "The Ashen Verdict", "Honored", 37687}, -- Iceblade Arrow -- 72953
        [60866] = { "Horde Expedition", "Exalted", 32565, 32774}, -- Mechano-hog -- 60866
        [23787] = { "Argent Dawn", "Honored", 10856, 11536, 10857}, -- Powerful Anti-Venom -- 23787
        [28906] = { "The Scryers", "Friendly", 19331}, -- Runed Blood Garnet -- 28906
        [28907] = { "The Consortium", "Honored", 20242, 23007}, -- Delicate Blood Garnet -- 28907
        [28912] = { "The Consortium", "Friendly", 20242, 23007}, -- Luminous Flame Spessarite -- 28912
        [28915] = { "Lower City", "Friendly", 21655}, -- Potent Flame Spessarite -- 28915
        [28918] = { "Honor Hold", "Friendly", 17657},
        [28924] = { "The Scryers", "Honored", 19331}, -- Dazzling Deep Peridot -- 28924
        [28927] = { "The Aldor", "Honored", 19321}, -- Royal Shadow Draenite -- 28927
        [28933] = { "The Consortium", "Friendly", 20242, 23007}, -- Shifting Shadow Draenite -- 28933
        [28944] = { "The Aldor", "Friendly", 19321}, -- Gleaming Golden Draenite -- 28944
        [28947] = { "The Consortium", "Honored", 20242, 23007}, -- Thick Golden Draenite -- 28947
        [28957] = { "The Consortium", "Honored", 20242, 23007}, -- Lustrous Azure Moonstone -- 28957
        [31062] = { "Keepers of Time", "Revered", 21643}, -- Pendant of Frozen Flame -- 31062
        [31063] = { "Lower City", "Revered", 21655}, -- Pendant of Thawing -- 31063
        [31064] = { "The Scryers", "Revered", 19331}, -- Pendant of Withering -- 31064
        [31065] = { "The Aldor", "Revered", 19321}, -- Pendant of Shadow's End -- 31065
        [31066] = { "The Consortium", "Revered", 20242, 23007}, -- Pendant of the Null Rune -- 31066
        [31079] = { "Lower City", "Revered", 21655}, -- Figurine - Felsteel Boar -- 31079
        [31080] = { "Honor Hold", "Revered", 17657},
        [31081] = { "Keepers of Time", "Revered", 21643}, -- Figurine - Living Ruby Serpent -- 31081
        [31082] = { "The Sha'tar", "Revered", 21432}, -- Figurine - Talasite Owl -- 31082
        [31083] = { "Cenarion Expedition", "Revered", 17904}, -- Figurine - Nightseye Panther -- 31083
        [32866] = { "The Consortium", "Honored", 17518}, -- Powerful Earthstorm Diamond -- 32866
        [32867] = { "The Consortium", "Revered", 17518}, -- Bracing Earthstorm Diamond -- 32867
        [32870] = { "The Sha'tar", "Friendly", 21432}, -- Insightful Earthstorm Diamond -- 32870
        [32873] = { "The Consortium", "Honored", 20242, 23007}, -- Swift Skyfire Diamond -- 32873
        [32874] = { "Keepers of Time", "Honored", 21643}, -- Enigmatic Skyfire Diamond -- 32874
        [37855] = { "The Sha'tar", "Honored", 21432}, -- Ring of Arcane Shielding -- 37855
        [38503] = { "The Violet Eye", "Honored", 18255}, -- The Frozen Eye -- 38503
        [38504] = { "Cenarion Expedition", "Exalted", 17904}, -- The Natural Ward -- 38504
        [39705] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39706] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39710] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39711] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39712] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39713] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39714] = { "Shattered Sun Offensive", "Exalted", 27666, 25950}, -- Flashing Crimson Spinel -- 39714
        [39715] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39716] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39717] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39718] = { "Shattered Sun Offensive", "Exalted", 27666, 25950}, -- Stormy Empyrean Sapphire -- 39718
        [39719] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39720] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39721] = { "Shattered Sun Offensive", "Revered", 25950, 27666},
        [39722] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39723] = { "Shattered Sun Offensive", "Friendly", 25950, 27666},
        [39724] = { "Shattered Sun Offensive", "Exalted", 27666, 25950}, -- Mystic Lionseye -- 39724
        [39725] = { "Shattered Sun Offensive", "Exalted", 27666, 25950}, -- Great Lionseye -- 39725
        [39727] = { "Shattered Sun Offensive", "Exalted", 27666, 25950}, -- Sovereign Shadowsong Amethyst -- 39727
        [39728] = { "Shattered Sun Offensive", "Exalted", 27666, 25950}, -- Shifting Shadowsong Amethyst -- 39728
        [39729] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39730] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39731] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39732] = { "Shattered Sun Offensive", "Revered", 25950, 27666},
        [39733] = { "Shattered Sun Offensive", "Exalted", 27666, 25950}, -- Inscribed Pyrestone -- 39733
        [39734] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39735] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39736] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39737] = { "Shattered Sun Offensive", "Exalted", 27666, 25950}, -- Veiled Pyrestone -- 39737
        [39738] = { "Shattered Sun Offensive", "Revered", 25950, 27666},
        [39739] = { "Shattered Sun Offensive", "Revered", 25950, 27666},
        [39740] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39741] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39742] = { "Shattered Sun Offensive", "Honored", 25950, 27666},
        [39961] = { "The Consortium", "Exalted", 20242, 23007}, -- Relentless Earthstorm Diamond -- 39961
        [42558] = { "The Consortium", "Revered", 20242, 23007}, -- Don Julio's Heart -- 42558
        [42588] = { "The Sha'tar", "Honored", 21432}, -- Kailee's Rose -- 42588
        [42589] = { "The Consortium", "Revered", 20242, 23007}, -- Crimson Sun -- 42589
        [42590] = { "Lower City", "Revered", 21655}, -- Falling Star -- 42590
        [42591] = { "Keepers of Time", "Revered", 21643}, -- Stone of Blades -- 42591
        [42592] = { "The Sha'tar", "Revered", 21432}, -- Blood of Amber -- 42592
        [42593] = { "Keepers of Time", "Honored", 21643}, -- Facet of Eternity -- 42593
        [46403] = { "Shattered Sun Offensive", "Exalted", 25950, 27666}, -- Quick Dawnstone -- 46403
        [46404] = { "Shattered Sun Offensive", "Exalted", 25950, 27666}, -- Reckless Noble Topaz -- 46404
        [46405] = { "Shattered Sun Offensive", "Exalted", 25950, 27666}, -- Forceful Talasite -- 46405
        [46597] = { "Shattered Sun Offensive", "Revered", 25032}, -- Eternal Earthstorm Diamond -- 46597
        [46601] = { "Shattered Sun Offensive", "Revered", 25032}, -- Ember Skyfire Diamond -- 46601
        [46775] = { "Shattered Sun Offensive", "Revered", 25032}, -- Figurine - Empyrean Tortoise -- 46775
        [46776] = { "Shattered Sun Offensive", "Revered", 25032}, -- Figurine - Khorium Boar -- 46776
        [46777] = { "Shattered Sun Offensive", "Revered", 25032}, -- Figurine - Crimson Serpent -- 46777
        [46778] = { "Shattered Sun Offensive", "Revered", 25032}, -- Figurine - Shadowsong Panther -- 46778
        [46779] = { "Shattered Sun Offensive", "Revered", 25032}, -- Figurine - Seaspray Albatross -- 46779
        [46803] = { "Shattered Sun Offensive", "Revered", 25032}, -- Regal Nightseye -- 46803
        [47053] = { "Shattered Sun Offensive", "Revered", 25032, 25950, 27666},
        [47054] = { "The Scale of the Sands", "Honored", 23437},
        [47055] = { "Shattered Sun Offensive", "Revered", 25032, 25950, 27666},
        [884037] = { "Shattered Sun Offensive", "Revered", 25032, 25950, 27666},
        [47056] = { "Shattered Sun Offensive", "Revered", 25032, 25950, 27666},
        [48789] = { "Shattered Sun Offensive", "Exalted", 25950, 27666}, -- Purified Shadowsong Amethyst -- 48789
        [53869] = { "The Kalu'ak", "Honored", 31916, 32763}, -- Defender's Shadow Crystal -- 53869
        [53877] = { "Knights of the Ebon Blade", "Friendly", 32538}, -- Deadly Huge Citrine -- 53877
        [53885] = { "Frenzyheart Tribe", "Friendly", 31911}, -- Reckless Huge Citrine -- 53885
        [53917] = { "The Oracles", "Friendly", 31910}, -- Vivid Dark Jade -- 53917
        [53921] = { "The Kalu'ak", "Friendly", 31916, 32763}, -- Seer's Dark Jade -- 53921
        [53946] = { "Kirin Tor", "Exalted", 32287}, -- Runed Scarlet Ruby -- 53946
        [53957] = { "The Sons of Hodir", "Exalted", 32540}, -- Smooth Autumn's Glow -- 53957
        [53965] = { "Knights of the Ebon Blade", "Exalted", 32538}, -- Glowing Twilight Opal -- 53965
        [53974] = { "Argent Crusade", "Revered", 30431}, -- Guardian's Twilight Opal -- 53974
        [53988] = { "Knights of the Ebon Blade", "Revered", 32538}, -- Wicked Monarch Topaz -- 53988
        [53993] = { "The Wyrmrest Accord", "Exalted", 32533}, -- Glimmering Monarch Topaz -- 53993
        [53996] = { "Frenzyheart Tribe", "Revered", 31911}, -- Jagged Forest Emerald -- 53996
        [54008] = { "The Oracles", "Revered", 31910}, -- Sundered Forest Emerald -- 54008
        [19068] = { "Timbermaw Hold", "Friendly", 11557}, -- Warbear Harness -- 19068
        [19080] = { "Timbermaw Hold", "Friendly", 11557}, -- Warbear Woolies -- 19080
        [20855] = { "Thorium Brotherhood", "Honored", 12944}, -- Black Dragonscale Boots -- 20855
        [23703] = { "Timbermaw Hold", "Honored", 11557}, -- Might of the Timbermaw -- 23703
        [23704] = { "Timbermaw Hold", "Revered", 11557}, -- Timbermaw Brawlers -- 23704
        [23705] = { "Argent Dawn", "Honored", 10856, 11536, 10857}, -- Dawn Treaders -- 23705
        [23706] = { "Argent Dawn", "Revered", 10856, 11536, 10857}, -- Golden Mantle of the Dawn -- 23706
        [23707] = { "Thorium Brotherhood", "Honored", 12944}, -- Lava Belt -- 23707
        [23708] = { "Thorium Brotherhood", "Revered", 12944}, -- Chromatic Gauntlets -- 23708
        [23709] = { "Thorium Brotherhood", "Revered", 12944}, -- Corehound Belt -- 23709
        [23710] = { "Thorium Brotherhood", "Revered", 12944}, -- Molten Belt -- 23710
        [24121] = { "Zandalar Tribe", "Revered", 14921}, -- Primal Batskin Jerkin -- 24121
        [24122] = { "Zandalar Tribe", "Honored", 14921}, -- Primal Batskin Gloves -- 24122
        [24123] = { "Zandalar Tribe", "Friendly", 14921}, -- Primal Batskin Bracers -- 24123
        [24124] = { "Zandalar Tribe", "Revered", 14921}, -- Blood Tiger Breastplate -- 24124
        [24125] = { "Zandalar Tribe", "Honored", 14921}, -- Blood Tiger Shoulders -- 24125
        [24703] = { "Cenarion Circle", "Exalted", 15293}, -- Dreamscale Breastplate -- 24703
        [24846] = { "Cenarion Circle", "Friendly", 15293}, -- Spitfire Bracers -- 24846
        [24847] = { "Cenarion Circle", "Honored", 15293}, -- Spitfire Gauntlets -- 24847
        [24848] = { "Cenarion Circle", "Revered", 15293}, -- Spitfire Breastplate -- 24848
        [24849] = { "Cenarion Circle", "Friendly", 15293}, -- Sandstalker Bracers -- 24849
        [24850] = { "Cenarion Circle", "Honored", 15293}, -- Sandstalker Gauntlets -- 24850
        [24851] = { "Cenarion Circle", "Revered", 15293}, -- Sandstalker Breastplate -- 24851
        [28219] = { "Argent Dawn", "Exalted", 16365}, -- Polar Tunic -- 28219
        [28220] = { "Argent Dawn", "Revered", 16365}, -- Polar Gloves -- 28220
        [28221] = { "Argent Dawn", "Revered", 16365}, -- Polar Bracers -- 28221
        [28222] = { "Argent Dawn", "Exalted", 16365}, -- Icy Scale Breastplate -- 28222
        [28223] = { "Argent Dawn", "Revered", 16365}, -- Icy Scale Gauntlets -- 28223
        [28224] = { "Argent Dawn", "Revered", 16365}, -- Icy Scale Bracers -- 28224
        [28472] = { "Cenarion Circle", "Revered", 15293}, -- Bramblewood Helm -- 28472
        [28473] = { "Cenarion Circle", "Honored", 15293}, -- Bramblewood Boots -- 28473
        [28474] = { "Cenarion Circle", "Friendly", 15293}, -- Bramblewood Belt -- 28474
        [32457] = { "The Aldor", "Revered", 19321}, -- Vindicator's Armor Kit -- 32457
        [32458] = { "The Scryers", "Revered", 19331}, -- Magister's Armor Kit -- 32458
        [32490] = { "The Consortium", "Friendly", 20242, 23007}, -- Fel Leather Gloves -- 32490
        [32493] = { "The Consortium", "Honored", 20242, 23007}, -- Fel Leather Boots -- 32493
        [32494] = { "The Consortium", "Revered", 20242, 23007}, -- Fel Leather Leggings -- 32494
        [32495] = { "Cenarion Expedition", "Honored", 17904}, -- Heavy Clefthoof Vest -- 32495
        [32496] = { "Cenarion Expedition", "Honored", 17904}, -- Heavy Clefthoof Leggings -- 32496
        [32497] = { "Cenarion Expedition", "Friendly", 17904}, -- Heavy Clefthoof Boots -- 32497
        [32498] = { "Honor Hold", "Friendly", 17657},
        [32499] = { "Honor Hold", "Honored", 17657},
        [32500] = { "Honor Hold", "Honored", 17657},
        [32501] = { "Kurenai", "Friendly", 20240}, -- Netherfury Belt -- 32501
        [32502] = { "Kurenai", "Honored", 20240}, -- Netherfury Leggings -- 32502
        [32503] = { "Kurenai", "Revered", 20240}, -- Netherfury Boots -- 32503
        [35525] = { "The Scryers", "Exalted", 19331}, -- Enchanted Felscale Leggings -- 35525
        [35526] = { "The Scryers", "Honored", 19331}, -- Enchanted Felscale Gloves -- 35526
        [35527] = { "The Scryers", "Revered", 19331}, -- Enchanted Felscale Boots -- 35527
        [35528] = { "The Aldor", "Revered", 19321}, -- Flamescale Boots -- 35528
        [35529] = { "The Aldor", "Exalted", 19321}, -- Flamescale Leggings -- 35529
        [35530] = { "Kurenai", "Honored", 20240}, -- Reinforced Mining Bag -- 35530
        [35531] = { "The Aldor", "Honored", 19321}, -- Flamescale Belt -- 35531
        [35532] = { "The Scryers", "Exalted", 19331}, -- Enchanted Clefthoof Leggings -- 35532
        [35533] = { "The Scryers", "Revered", 19331}, -- Enchanted Clefthoof Gloves -- 35533
        [35534] = { "The Scryers", "Honored", 19331}, -- Enchanted Clefthoof Boots -- 35534
        [35535] = { "The Aldor", "Exalted", 19321}, -- Blastguard Pants -- 35535
        [35536] = { "The Aldor", "Revered", 19321}, -- Blastguard Boots -- 35536
        [35537] = { "The Aldor", "Honored", 19321}, -- Blastguard Belt -- 35537
        [35538] = { "Keepers of Time", "Honored", 21643}, -- Drums of Panic -- 35538
        [35539] = { "Kurenai", "Honored", 20240}, -- Drums of Restoration -- 35539
        [35543] = { "The Sha'tar", "Honored", 21432}, -- Drums of Battle -- 35543
        [35544] = { "The Mag'har", "Honored", 20241},
        [35549] = { "Honor Hold", "Honored", 17657},
        [35554] = { "Honor Hold", "Exalted", 17657},
        [35555] = { "Cenarion Expedition", "Honored", 17904}, -- Clefthide Leg Armor -- 35555
        [35557] = { "Cenarion Expedition", "Exalted", 17904}, -- Nethercleft Leg Armor -- 35557
        [39997] = { "Ashtongue Deathsworn", "Friendly", 23159}, -- Boots of Shackled Souls -- 39997
        [40001] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Greaves of Shackled Souls -- 40001
        [40002] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Waistguard of Shackled Souls -- 40002
        [40003] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Redeemed Soul Moccasins -- 40003
        [40004] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Redeemed Soul Wristguards -- 40004
        [40005] = { "Ashtongue Deathsworn", "Friendly", 23159}, -- Redeemed Soul Legguards -- 40005
        [40006] = { "Ashtongue Deathsworn", "Friendly", 23159}, -- Redeemed Soul Cinch -- 40006
        [42546] = { "The Violet Eye", "Exalted", 18255}, -- Cloak of Darkness -- 42546
        [42731] = { "The Violet Eye", "Revered", 18255}, -- Shadowprowler's Chestguard -- 42731
        [44359] = { "Lower City", "Revered", 21655}, -- Quiver of a Thousand Feathers -- 44359
        [44768] = { "Thrallmars", "Revered", 17585},
        [50970] = { "The Kalu'ak", "Revered", 31916, 32763}, -- Trapper's Traveling Pack -- 50970
        [50971] = { "The Sons of Hodir", "Honored", 32540}, -- Mammoth Mining Bag -- 50971
        [52733] = { "Ashtongue Deathsworn", "Friendly", 23159}, -- Bracers of Shackled Souls -- 52733
        [60645] = { "The Kalu'ak", "Honored", 31916, 32763}, -- Dragonscale Ammo Pouch -- 60645
        [60647] = { "Knights of the Ebon Blade", "Honored", 32538}, -- Nerubian Reinforced Quiver -- 60647
        [70554] = { "The Ashen Verdict", "Revered", 37687}, -- Legwraps of Unleashed Nature -- 70554
        [70555] = { "The Ashen Verdict", "Honored", 37687}, -- Blessed Cenarion Boots -- 70555
        [70556] = { "The Ashen Verdict", "Revered", 37687}, -- Bladeborn Leggings -- 70556
        [70557] = { "The Ashen Verdict", "Honored", 37687}, -- Footpads of Impending Death -- 70557
        [70558] = { "The Ashen Verdict", "Revered", 37687}, -- Lightning-Infused Leggings -- 70558
        [70559] = { "The Ashen Verdict", "Honored", 37687}, -- Earthsoul Boots -- 70559
        [70560] = { "The Ashen Verdict", "Revered", 37687}, -- Draconic Bonesplinter Legguards -- 70560
        [70561] = { "The Ashen Verdict", "Honored", 37687}, -- Rock-Steady Treads -- 70561
        [20848] = { "Thorium Brotherhood", "Honored", 12944}, -- Flarecore Mantle -- 20848
        [20849] = { "Thorium Brotherhood", "Friendly", 12944}, -- Flarecore Gloves -- 20849
        [23662] = { "Timbermaw Hold", "Honored", 11557}, -- Wisdom of the Timbermaw -- 23662
        [23663] = { "Timbermaw Hold", "Revered", 11557}, -- Mantle of the Timbermaw -- 23663
        [23664] = { "Argent Dawn", "Honored", 10856, 11536, 10857}, -- Argent Boots -- 23664
        [23665] = { "Argent Dawn", "Revered", 10856, 11536, 10857}, -- Argent Shoulders -- 23665
        [23666] = { "Thorium Brotherhood", "Honored", 12944}, -- Flarecore Robe -- 23666
        [23667] = { "Thorium Brotherhood", "Revered", 12944}, -- Flarecore Leggings -- 23667
        [24091] = { "Zandalar Tribe", "Revered", 14921}, -- Bloodvine Vest -- 24091
        [24092] = { "Zandalar Tribe", "Honored", 14921}, -- Bloodvine Leggings -- 24092
        [24093] = { "Zandalar Tribe", "Friendly", 14921}, -- Bloodvine Boots -- 24093
        [27724] = { "Cenarion Circle", "Friendly", 15179}, -- Cenarion Herb Bag -- 27724
        [27725] = { "Cenarion Circle", "Revered", 15179}, -- Satchel of Cenarius -- 27725
        [28205] = { "Argent Dawn", "Revered", 16365}, -- Glacial Gloves -- 28205
        [28207] = { "Argent Dawn", "Exalted", 16365}, -- Glacial Vest -- 28207
        [28208] = { "Argent Dawn", "Honored", 16365}, -- Glacial Cloak -- 28208
        [28209] = { "Argent Dawn", "Revered", 16365}, -- Glacial Wrists -- 28209
        [28210] = { "Cenarion Circle", "Revered", 15179}, -- Gaea's Embrace -- 28210
        [28480] = { "Cenarion Circle", "Revered", 15179}, -- Sylvan Vest -- 28480
        [28481] = { "Cenarion Circle", "Honored", 15179}, -- Sylvan Crown -- 28481
        [28482] = { "Cenarion Circle", "Friendly", 15179}, -- Sylvan Shoulders -- 28482
        [31430] = { "The Scryers", "Honored", 19331}, -- Mystic Spellthread -- 31430
        [31431] = { "The Aldor", "Honored", 19321}, -- Silver Spellthread -- 31431
        [31432] = { "The Scryers", "Exalted", 19331}, -- Runic Spellthread -- 31432
        [31433] = { "The Aldor", "Exalted", 19321}, -- Golden Spellthread -- 31433
        [31459] = { "The Consortium", "Honored", 20242, 23007}, -- Bag of Jewels -- 31459
        [37873] = { "Lower City", "Honored", 21655}, -- Cloak of Arcane Evasion -- 37873
        [37882] = { "The Aldor", "Friendly", 19321}, -- Flameheart Bracers -- 37882
        [37883] = { "The Aldor", "Honored", 19321}, -- Flameheart Gloves -- 37883
        [37884] = { "The Aldor", "Exalted", 19321}, -- Flameheart Vest -- 37884
        [40020] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Soulguard Slippers -- 40020
        [40021] = { "Ashtongue Deathsworn", "Friendly", 23159}, -- Soulguard Bracers -- 40021
        [40023] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Soulguard Leggings -- 40023
        [40024] = { "Ashtongue Deathsworn", "Friendly", 23159}, -- Soulguard Girdle -- 40024
        [40060] = { "Ashtongue Deathsworn", "Honored", 23159}, -- Night's End -- 40060
        [50194] = { "Sporeggar", "Revered", 18382}, -- Mycah's Botanical Bag -- 50194
        [56004] = { "Knights of the Ebon Blade", "Revered", 32538}, -- Abyssal Bag -- 56004
        [56005] = { "The Sons of Hodir", "Exalted", 32540}, -- Glacial Bag -- 56005
        [56006] = { "The Wyrmrest Accord", "Revered", 32533}, -- Mysterious Bag -- 56006
        [56009] = { "Argent Crusade", "Exalted", 30431}, -- Brilliant Spellthread -- 56009
        [56011] = { "Kirin Tor", "Exalted", 32287}, -- Sapphire Spellthread -- 56011
        [63924] = { "The Kalu'ak", "Revered", 31916, 32763}, -- Emerald Bag -- 63924
        [70550] = { "The Ashen Verdict", "Revered", 37687}, -- Leggings of Woven Death -- 70550
        [70551] = { "The Ashen Verdict", "Honored", 37687}, -- Deathfrost Boots -- 70551
        [70552] = { "The Ashen Verdict", "Revered", 37687}, -- Lightweave Leggings -- 70552
        [70553] = { "The Ashen Verdict", "Honored", 37687}, -- Sandals of Consecration -- 70553
    },
    RecipeVendor = {
        [17580] = { 11278}, -- Major Mana Potion -- 17580
        [9269] = { 5175, 6730}, -- Gnomish Universal Remote -- 9269
        [9273] = { 4086, 3134, 3537}, -- Goblin Jumper Cables -- 9273
        [6702] = { 843, 3556, 4186}, -- Murloc Scale Belt -- 6702
        [6703] = { 843, 3556, 4186}, -- Murloc Scale Breastplate -- 6703
        [6705] = { 4897}, -- Murloc Scale Bracers -- 6705
        [26755] = { 22213, 29511}, -- Spellfire Bag -- 26755
        [26763] = { 22208, 29512}, -- Primal Mooncloth Bag -- 26763
    },
    MobDrop = {
        [11466] = { 1783, 1791}, -- Gift of Arthas -- 11466
        [17571] = { 6201, 7106}, -- Elixir of the Mongoose -- 17571
        [17574] = { 9262, 9264}, -- Greater Fire Protection Potion -- 17574
        [17575] = { 7428}, -- Greater Frost Protection Potion -- 17575
        [17576] = { 1812, 1813}, -- Greater Nature Protection Potion -- 17576
        [17577] = { 7437}, -- Greater Arcane Protection Potion -- 17577
        [17578] = { 8546, 8550}, -- Greater Shadow Protection Potion -- 17578
        [17580] = { 1853}, 
        [17635] = { 10363}, 
        [17637] = { 10508}, 
        [17638] = { 10339}, 
        [26277] = { 5844, 5846, 8637}, -- Elixir of Greater Firepower -- 26277
        [28564] = { 24664}, -- Haste Potion -- 28564
        [28571] = { 19168, 19221}, -- Major Fire Protection Potion -- 28571
        [28572] = { 18344}, -- Major Frost Protection Potion -- 28572
        [28575] = { 17150}, -- Major Arcane Protection Potion -- 28575
        [28576] = { 21302}, -- Major Shadow Protection Potion -- 28576
        [28577] = { 19973}, -- Major Holy Protection Potion -- 28577
        [28578] = { 24664}, 
        [28579] = { 17862}, -- Ironshield Potion -- 28579
        [38960] = { 19740, 21302, 19755, 21314}, -- Fel Strength Elixir -- 38960
        [38961] = { 19795, 19792, 22076, 22017, 22016, 22018, 19796, 19806, 22093}, -- Fel Mana Potion -- 38961
        [38962] = { 19756, 19754, 20878, 20887}, -- Fel Regeneration Potion -- 38962
        [53936] = { 32297, 31702}, -- Mighty Arcane Protection Potion -- 53936
        [53937] = { 32289}, -- Mighty Frost Protection Potion -- 53937
        [53938] = { 32349}, -- Mighty Shadow Protection Potion -- 53938
        [53939] = { 30921}, -- Mighty Fire Protection Potion -- 53939
        [53942] = { 32290}, -- Mighty Nature Protection Potion -- 53942
        [15292] = { 9028}, -- Dark Iron Pulverizer -- 15292
        [15294] = { 9554, 10043}, -- Dark Iron Sunderer -- 15294
        [15296] = { 9543}, -- Dark Iron Plate -- 15296
        [16664] = { 4366}, -- Runic Plate Shoulders -- 16664
        [16665] = { 1836}, -- Runic Plate Boots -- 16665
        [16726] = { 4364}, -- Runic Plate Helm -- 16726
        [16731] = { 4368, 16072}, -- Runic Breastplate -- 16731
        [16732] = { 1885}, -- Runic Plate Leggings -- 16732
        [16984] = { 10119}, -- Volcanic Hammer -- 16984
        [16988] = { 10438}, -- Hammer of the Titans -- 16988
        [16990] = { 10899}, -- Arcanite Champion -- 16990
        [16991] = { 9736}, -- Annihilator -- 16991
        [16992] = { 1844}, -- Frostguard -- 16992
        [16993] = { 10899}, -- Masterwork Stormhammer -- 16993
        [16994] = { 9596}, -- Arcanite Reaper -- 16994
        [16995] = { 10997}, -- Heartseeker -- 16995
        [27587] = { 15263}, -- Thick Obsidian Breastplate -- 27587
        [27589] = { 15340}, -- Black Grasp of the Destroyer -- 27589
        [29619] = { 18497}, -- Felsteel Gloves -- 29619
        [29620] = { 20900}, -- Felsteel Leggings -- 29620
        [29621] = { 18830}, -- Felsteel Helm -- 29621
        [29628] = { 18203}, -- Khorium Belt -- 29628
        [29629] = { 20878}, -- Khorium Pants -- 29629
        [29630] = { 18873}, -- Khorium Boots -- 29630
        [29642] = { 17136}, -- Ragesteel Gloves -- 29642
        [29643] = { 16952}, -- Ragesteel Helm -- 29643
        [29645] = { 23305, 23324, 21454}, -- Ragesteel Breastplate -- 29645
        [29648] = { 18314}, -- Swiftsteel Gloves -- 29648
        [29649] = { 17975}, -- Earthpeace Breastplate -- 29649
        [29729] = { 18853}, -- Greater Ward of Shielding -- 29729
        [42662] = { 21061, 21059, 21060, 21050}, -- Ragesteel Shoulders -- 42662
        [42688] = { 24664}, -- Adamantite Weapon Chain -- 42688
        [54978] = { 27333}, -- Reinforced Cobalt Shoulders -- 54978
        [54979] = { 26270}, -- Reinforced Cobalt Helm -- 54979
        [54980] = { 29235}, -- Reinforced Cobalt Legplates -- 54980
        [54981] = { 28123}, -- Reinforced Cobalt Chestpiece -- 54981
        [22761] = { 14354}, -- Runn Tum Tuber Surprise -- 22761
        [13612] = { 1054, 1051, 1052, 1364, 1053}, -- Enchant Gloves - Mining -- 13612
        [13617] = { 4029, 3834, 3919, 4028, 4030}, -- Enchant Gloves - Herbalism -- 13617
        [13620] = { 2377, 2374, 2375, 2376, 14276}, -- Enchant Gloves - Fishing -- 13620
        [13698] = { 2556, 2558, 2557, 2606}, -- Enchant Gloves - Skinning -- 13698
        [13841] = { 674}, -- Enchant Gloves - Advanced Mining -- 13841
        [13868] = { 764, 766, 14448, 1081, 765}, -- Enchant Gloves - Advanced Herbalism -- 13868
        [13882] = { 5623, 7805, 2246}, -- Enchant Cloak - Lesser Agility -- 13882
        [13898] = { 9024}, -- Enchant Weapon - Fiery Weapon -- 13898
        [15596] = { 9025}, -- Smoking Heart of the Mountain -- 15596
        [20010] = { 7372}, -- Enchant Bracer - Superior Strength -- 20010
        [20029] = { 7524}, -- Enchant Weapon - Icy Chill -- 20029
        [20030] = { 10317}, -- Enchant 2H Weapon - Superior Impact -- 20030
        [20031] = { 9216}, -- Enchant Weapon - Superior Striking -- 20031
        [20032] = { 10499}, -- Enchant Weapon - Lifestealing -- 20032
        [20033] = { 10398, 16810}, -- Enchant Weapon - Unholy Weapon -- 20033
        [20034] = { 4494, 9451}, -- Enchant Weapon - Crusader -- 20034
        [20035] = { 10469}, -- Enchant 2H Weapon - Major Spirit -- 20035
        [20036] = { 10422}, -- Enchant 2H Weapon - Major Intellect -- 20036
        [25072] = { 15275},
        [25084] = { 15276},
        [27906] = { 22822, 23008}, -- Enchant Bracer - Major Defense -- 27906
        [27914] = { 17803}, -- Enchant Bracer - Fortitude -- 27914
        [27917] = { 19952}, -- Enchant Bracer - Spellpower -- 27917
        [27948] = { 24664}, -- Enchant Boots - Vitality -- 27948
        [27950] = { 18317}, -- Enchant Boots - Fortitude -- 27950
        [27951] = { 18521}, -- Enchant Boots - Dexterity -- 27951
        [27954] = { 16472}, -- Enchant Boots - Surefooted -- 27954
        [27968] = { 20136}, -- Enchant Weapon - Major Intellect -- 27968
        [27971] = { 17465}, -- Enchant 2H Weapon - Savagery -- 27971
        [27975] = { 22242}, -- Enchant Weapon - Major Spellpower -- 27975
        [27977] = { 20880}, -- Enchant 2H Weapon - Major Agility -- 27977
        [27981] = { 16524}, -- Enchant Weapon - Sunfire -- 27981
        [27982] = { 15688}, -- Enchant Weapon - Soulfrost -- 27982
        [27984] = { 15687}, -- Enchant Weapon - Mongoose -- 27984
        [34005] = { 19796}, -- Enchant Cloak - Greater Arcane Resistance -- 34005
        [34006] = { 18870}, -- Enchant Cloak - Greater Shadow Resistance -- 34006
        [34007] = { 24664}, -- Enchant Boots - Cat's Swiftness -- 34007
        [34008] = { 24664}, -- Enchant Boots - Boar's Speed -- 34008
        [44483] = { 32289}, -- Enchant Cloak - Superior Frost Resistance -- 44483
        [44494] = { 32290}, -- Enchant Cloak - Superior Nature Resistance -- 44494
        [44556] = { 30921}, -- Enchant Cloak - Superior Fire Resistance -- 44556
        [44590] = { 32349}, -- Enchant Cloak - Superior Shadow Resistance -- 44590
        [44596] = { 31702, 32297}, -- Enchant Cloak - Superior Arcane Resistance -- 44596
        [47051] = { 24560}, -- Enchant Cloak - Steelweave -- 47051
        [71692] = { 26343, 26336, 26344}, -- Enchant Gloves - Angler -- 71692
        [3944] = { 7800}, -- Flame Deflector -- 3944
        [3959] = { 7800}, -- Discombobulator Ray -- 3959
        [3971] = { 7800},
        [8243] = { 7800},
        [9269] = { 7800},
        [9273] = { 7800},
        [19796] = { 8897}, -- Dark Iron Rifle -- 19796
        [19799] = { 8920}, -- Dark Iron Bomb -- 19799
        [19819] = { 10426}, -- Voice Amplification Modulator -- 19819
        [19830] = { 7437}, -- Arcanite Dragonling -- 19830
        [19833] = { 8561}, -- Flawless Arcanite Rifle -- 19833
        [23078] = { 9499}, -- Goblin Jumper Cables XL -- 23078
        [23081] = { 10264}, -- Hyper-Radiant Flame Reflector -- 23081
        [23082] = { 10426}, -- Ultra-Flash Shadow Reflector -- 23082
        [23096] = { 8920}, -- Gnomish Alarm-o-Bot -- 23096
        [23129] = { 8920}, -- World Enlarger -- 23129
        [30314] = { 19960}, -- Felsteel Boomstick -- 30314
        [30325] = { 19755}, -- Hyper-Vision Goggles -- 30325
        [30332] = { 20207}, -- Khorium Scope -- 30332
        [30334] = { 16152}, -- Stabilized Eternium Scope -- 30334
        [30551] = { 24664}, -- Healing Potion Injector -- 30551
        [30552] = { 24664}, -- Mana Potion Injector -- 30552
        [30556] = { 17796}, -- Rocket Boots Xtreme -- 30556
        [43676] = { 19707}, -- Adamantite Arrow Maker -- 43676
        [44391] = { 23385, 23386}, -- Field Repair Bot 110G -- 44391
        [46697] = { 19219}, -- Rocket Boots Xtreme Lite -- 46697
        [64051] = { 27676, 26708, 26679, 27546}, -- Rituals of the New Moon -- 64051
        [26912] = { 9736}, -- Figurine - Black Diamond Crab -- 26912
        [26914] = { 8983}, -- Figurine - Dark Iron Scorpid -- 26914
        [31053] = { 19826}, -- Khorium Band of Shadows -- 31053
        [31054] = { 17722}, -- Khorium Band of Frost -- 31054
        [31055] = { 18472}, -- Khorium Inferno Band -- 31055
        [31056] = { 19984}, -- Khorium Band of Leaves -- 31056
        [31057] = { 18866}, -- Arcane Khorium Band -- 31057
        [31077] = { 18422}, -- Coronet of Verdant Flame -- 31077
        [31078] = { 18096}, -- Circlet of Arcane Might -- 31078
        [31088] = { 24664},
        [31089] = { 24664},
        [31092] = { 24664},
        [31098] = { 24664},
        [44794] = { 19768}, -- Chaotic Skyfire Diamond -- 44794
        [53950] = { 29570}, -- Fractured Scarlet Ruby -- 53950
        [53951] = { 29311}, -- Precise Scarlet Ruby -- 53951
        [53959] = { 31134}, -- Thick Autumn's Glow -- 53959
        [53970] = { 29120}, -- Infused Twilight Opal -- 53970
        [53972] = { 30208, 29370, 30222, 29376}, -- Defender's Twilight Opal -- 53972
        [53979] = { 26723}, -- Deadly Monarch Topaz -- 53979
        [53982] = { 27978}, -- Deft Monarch Topaz -- 53982
        [53994] = { 30260, 28379, 29402, 28851, 30448}, -- Accurate Monarch Topaz -- 53994
        [53995] = { 26632}, -- Timeless Forest Emerald -- 53995
        [54012] = { 29792, 29793}, -- Radiant Forest Emerald -- 54012
        [54019] = { 23954}, -- Fierce Monarch Topaz -- 54019
        [55397] = { 27656}, -- Bracing Earthsiege Diamond -- 55397
        [55398] = { 28923}, -- Eternal Earthsiege Diamond -- 55398
        [55401] = { 26861}, -- Austere Earthsiege Diamond -- 55401
        [6702] = { 1732, 3385},
        [6703] = { 657, 3386},
        [6704] = { 938, 1160},
        [6705] = { 2636, 1561},
        [10525] = { 5618}, -- Tough Scorpid Breastplate -- 10525
        [10533] = { 5617}, -- Tough Scorpid Bracers -- 10533
        [10542] = { 5616}, -- Tough Scorpid Gloves -- 10542
        [10554] = { 5615}, -- Tough Scorpid Boots -- 10554
        [10564] = { 5623, 7805, 7883}, -- Tough Scorpid Shoulders -- 10564
        [10568] = { 5615}, -- Tough Scorpid Leggings -- 10568
        [10570] = { 5623, 7805, 7883}, -- Tough Scorpid Helm -- 10570
        [19051] = { 5981, 6005}, -- Heavy Scorpid Vest -- 19051
        [19054] = { 10363}, -- Red Dragonscale Breastplate -- 19054
        [19059] = { 7035}, -- Volcanic Leggings -- 19059
        [19060] = { 5226}, -- Green Dragonscale Leggings -- 19060
        [19064] = { 7025}, -- Heavy Scorpid Gauntlets -- 19064
        [19074] = { 7440}, -- Frostsaber Leggings -- 19074
        [19075] = { 7027}, -- Heavy Scorpid Leggings -- 19075
        [19076] = { 9259}, -- Volcanic Breastplate -- 19076
        [19078] = { 7158}, -- Living Leggings -- 19078
        [19079] = { 6138}, -- Stormshroud Armor -- 19079
        [19086] = { 2644}, -- Ironfeather Breastplate -- 19086
        [19087] = { 7441}, -- Frostsaber Gloves -- 19087
        [19089] = { 6146}, -- Blue Dragonscale Shoulders -- 19089
        [19090] = { 6144}, -- Stormshroud Shoulders -- 19090
        [19094] = { 8898}, -- Black Dragonscale Shoulders -- 19094
        [19095] = { 1813}, -- Living Breastplate -- 19095
        [19097] = { 6559, 6556, 9477, 6557}, -- Devilsaur Leggings -- 19097
        [19100] = { 7029}, -- Heavy Scorpid Shoulders -- 19100
        [19101] = { 9260}, -- Volcanic Shoulders -- 19101
        [19104] = { 7438}, -- Frostsaber Tunic -- 19104
        [19107] = { 8903}, -- Black Dragonscale Leggings -- 19107
        [26279] = { 14454, 14457}, -- Stormshroud Gloves -- 26279
        [32485] = { 18667}, -- Stylin' Purple Hat -- 32485
        [32487] = { 17820, 28132}, -- Stylin' Adventure Hat -- 32487
        [32488] = { 18322}, -- Stylin' Crimson Hat -- 32488
        [32489] = { 17839, 21104}, -- Stylin' Jungle Hat -- 32489
        [35520] = { 18320}, -- Shadow Armor Kit -- 35520
        [35521] = { 20898}, -- Flame Armor Kit -- 35521
        [35522] = { 17797}, -- Frost Armor Kit -- 35522
        [35523] = { 17941}, -- Nature Armor Kit -- 35523
        [35524] = { 17879}, -- Arcane Armor Kit -- 35524
        [35559] = { 24664},
        [35562] = { 24664}, -- Gloves of the Living Touch -- 35562
        [35568] = { 24664}, -- Windstrike Gloves -- 35568
        [35573] = { 24664}, -- Netherdrake Gloves -- 35573
        [45117] = { 22144, 22148, 22143, 23022}, -- Bag of Many Hides -- 45117
        [57692] = { 30921}, -- Fur Lining - Fire Resist -- 57692
        [57694] = { 32289}, -- Fur Lining - Frost Resist -- 57694
        [57696] = { 32349}, -- Fur Lining - Shadow Resist -- 57696
        [57699] = { 32290}, -- Fur Lining - Nature Resist -- 57699
        [57701] = { 31702, 32297}, -- Fur Lining - Arcane Resist -- 57701
        [22967] = { 14401}, -- Smelt Elementium -- 22967
        [6686] = { 3531, 3530, 590},
        [6688] = { 450, 2264},
        [6692] = { 10760, 910, 2337}, -- Robes of Arcana -- 6692
        [6695] = { 4834, 2434, 2242}, -- Black Silk Pack -- 6695
        [18408] = { 5861}, -- Cindercloth Vest -- 18408
        [18412] = { 5861}, -- Cindercloth Gloves -- 18412
        [18418] = { 7037}, -- Cindercloth Cloak -- 18418
        [18422] = { 9026}, -- Cloak of Fire -- 18422
        [18434] = { 7037}, -- Cindercloth Pants -- 18434
        [18436] = { 7437}, -- Robe of Winter Night -- 18436
        [18456] = { 10813}, -- TRAINER,faith Vestments -- 18456
        [18457] = { 9264}, -- Robe of the Archmage -- 18457
        [18458] = { 1853}, -- Robe of the Void -- 18458
        [26086] = { 10503}, -- Felcloth Bag -- 26086
        [26755] = { 20134, 20135},
        [26763] = { 18872},
        [26780] = { 16406}, -- Soulcloth Shoulders -- 26780
        [26781] = { 16408}, -- Soulcloth Vest -- 26781
        [26782] = { 20869}, -- Arcanoweave Bracers -- 26782
        [26783] = { 19168}, -- Arcanoweave Boots -- 26783
        [26784] = { 19220}, -- Arcanoweave Robe -- 26784
        [27660] = { 11487}, -- Big Bag of Enchantment -- 27660
        [31434] = { 24664}, -- Unyielding Bracers -- 31434
        [31442] = { 24664}, -- Unyielding Girdle -- 31442
        [31451] = { 20885}, -- Whitemend Pants -- 31451
        [31452] = { 18708}, -- Spellstrike Pants -- 31452
        [31453] = { 17978}, -- Battlecast Pants -- 31453
        [31454] = { 17977}, -- Whitemend Hood -- 31454
        [31455] = { 16807}, -- Spellstrike Hood -- 31455
        [31456] = { 17798}, -- Battlecast Hood -- 31456
        [17636] = { 10813}, -- Flask of Distilled Wisdom -- 17636
    },
    RecipeRepVendor = {
        [28553] = { "Thrallmars", "Honored", 17585}, -- Elixir of Major Agility -- 28553
        [32766] = { "Thrallmars", "Honored", 17585}, -- Transmute: Skyfire Diamond -- 32766
        [29657] = { "Thrallmars", "Exalted", 17585}, -- Felsteel Shield Spike -- 29657
        [62202] = { "Alliance Vanguard", "Exalted", 32564, 32773}, -- Titanium Plating -- 62202
        [25084] = { "Thrallmars", "Exalted", 17585}, -- Enchant Cloak - Subtlety -- 25084
        [27911] = { "Thrallmars", "Friendly", 17585}, -- Enchant Bracer - Superior Healing -- 27911
        [27960] = { "Thrallmars", "Revered", 17585}, -- Enchant Chest - Exceptional Stats -- 27960
        [28918] = { "Thrallmars", "Friendly", 17585}, -- Enduring Deep Peridot -- 28918
        [31080] = { "Thrallmars", "Revered", 17585}, -- Figurine - Dawnstone Crab -- 31080
        [39705] = { "The Scale of the Sands", "Friendly", 23437}, -- Bold Crimson Spinel -- 39705
        [39706] = { "The Scale of the Sands", "Friendly", 23437}, -- Delicate Crimson Spinel -- 39706
        [39710] = { "The Scale of the Sands", "Friendly", 23437}, -- Teardrop Crimson Spinel -- 39710
        [39711] = { "The Scale of the Sands", "Friendly", 23437}, -- Runed Crimson Spinel -- 39711
        [39712] = { "The Scale of the Sands", "Friendly", 23437}, -- Bright Crimson Spinel -- 39712
        [39713] = { "The Scale of the Sands", "Friendly", 23437}, -- Subtle Crimson Spinel -- 39713
        [884037] = { "The Scale of the Sands", "Revered", 23437}, -- Fractured Crimson Spinel
        [39715] = { "The Scale of the Sands", "Friendly", 23437}, -- Solid Empyrean Sapphire -- 39715
        [39716] = { "The Scale of the Sands", "Friendly", 23437}, -- Sparkling Empyrean Sapphire -- 39716
        [39717] = { "The Scale of the Sands", "Friendly", 23437}, -- Lustrous Empyrean Sapphire -- 39717
        [39719] = { "The Scale of the Sands", "Friendly", 23437}, -- Brilliant Lionseye -- 39719
        [39720] = { "The Scale of the Sands", "Friendly", 23437}, -- Smooth Lionseye -- 39720
        [39721] = { "The Scale of the Sands", "Revered", 23437}, -- Rigid Lionseye -- 39721
        [39722] = { "The Scale of the Sands", "Friendly", 23437}, -- Gleaming Lionseye -- 39722
        [39723] = { "The Scale of the Sands", "Friendly", 23437}, -- Thick Lionseye -- 39723
        [39729] = { "The Scale of the Sands", "Honored", 23437}, -- Balanced Shadowsong Amethyst -- 39729
        [39730] = { "The Scale of the Sands", "Honored", 23437}, -- Infused Shadowsong Amethyst -- 39730
        [39731] = { "The Scale of the Sands", "Honored", 23437}, -- Glowing Shadowsong Amethyst -- 39731
        [39732] = { "The Scale of the Sands", "Revered", 23437}, -- Royal Shadowsong Amethyst -- 39732
        [39734] = { "The Scale of the Sands", "Honored", 23437}, -- Potent Pyrestone -- 39734
        [39735] = { "The Scale of the Sands", "Honored", 23437}, -- Luminous Pyrestone -- 39735
        [39736] = { "The Scale of the Sands", "Honored", 23437}, -- Glinting Pyrestone -- 39736
        [39738] = { "The Scale of the Sands", "Revered", 23437}, -- Wicked Pyrestone -- 39738
        [39739] = { "The Scale of the Sands", "Revered", 23437}, -- Enduring Seaspray Emerald -- 39739
        [39740] = { "The Scale of the Sands", "Honored", 23437}, -- Radiant Seaspray Emerald -- 39740
        [39741] = { "The Scale of the Sands", "Honored", 23437}, -- Dazzling Seaspray Emerald -- 39741
        [39742] = { "The Scale of the Sands", "Honored", 23437}, -- Jagged Seaspray Emerald -- 39742
        [47053] = { "The Scale of the Sands", "Honored", 23437}, -- Forceful Seaspray Emerald -- 47053
        [47054] = { "Shattered Sun Offensive", "Revered", 25032, 25950, 27666}, -- Steady Seaspray Emerald -- 47054
        [47055] = { "The Scale of the Sands", "Honored", 23437}, -- Reckless Pyrestone -- 47055
        [47056] = { "The Scale of the Sands", "Honored", 23437}, -- Quick Lionseye -- 47056
        [32498] = { "Thrallmars", "Friendly", 17585}, -- Felstalker Belt -- 32498
        [32499] = { "Thrallmars", "Honored", 17585}, -- Felstalker Bracer -- 32499
        [32500] = { "Thrallmars", "Honored", 17585}, -- Felstalker Breastplate -- 32500
        [35544] = { "Kurenai", "Honored", 20240}, -- Drums of Speed -- 35544
        [35549] = { "Thrallmars", "Honored", 17585}, -- Cobrahide Leg Armor -- 35549
        [35554] = { "Thrallmars", "Exalted", 17585}, -- Nethercobra Leg Armor -- 35554
        [44768] = { "Honor Hold", "Revered", 17657}, -- Netherscale Ammo Pouch -- 44768
    },
	CraftingRecipes = {
		[80000] = { SkillIndex = 40, CreatedItemEntry = 3775 },
		[80001] = { SkillIndex = 40, CreatedItemEntry = 3776 },
		[80002] = { SkillIndex = 40, CreatedItemEntry = 2892 },
		[80003] = { SkillIndex = 40, CreatedItemEntry = 2893 },
		[80004] = { SkillIndex = 40, CreatedItemEntry = 8984 },
		[80005] = { SkillIndex = 40, CreatedItemEntry = 8985 },
		[80006] = { RecipeItemEntry = 21302, SkillIndex = 40, CreatedItemEntry = 20844 },
		[80007] = { SkillIndex = 40, CreatedItemEntry = 6947 },
		[80008] = { SkillIndex = 40, CreatedItemEntry = 6949 },
		[80009] = { SkillIndex = 40, CreatedItemEntry = 6950 },
		[80010] = { SkillIndex = 40, CreatedItemEntry = 8926 },
		[80011] = { SkillIndex = 40, CreatedItemEntry = 8927 },
		[80012] = { SkillIndex = 40, CreatedItemEntry = 8928 },
		[80013] = { SkillIndex = 40, CreatedItemEntry = 5237 },
		[80014] = { SkillIndex = 40, CreatedItemEntry = 6951 },
		[80015] = { SkillIndex = 40, CreatedItemEntry = 9186 },
		[80016] = { SkillIndex = 40, CreatedItemEntry = 10918 },
		[80017] = { SkillIndex = 40, CreatedItemEntry = 10920 },
		[80018] = { SkillIndex = 40, CreatedItemEntry = 10921 },
		[80019] = { SkillIndex = 40, CreatedItemEntry = 10922 },
		[80020] = { SkillIndex = 40, CreatedItemEntry = 5530 },
		[3275] = { SkillIndex = 129, CreatedItemEntry = 1251 },
		[3276] = { SkillIndex = 129, CreatedItemEntry = 2581 },
		[3277] = { SkillIndex = 129, CreatedItemEntry = 3530 },
		[3278] = { SkillIndex = 129, CreatedItemEntry = 3531 },
		[7928] = { SkillIndex = 129, CreatedItemEntry = 6450 },
		[7929] = { RecipeItemEntry = 16112, SkillIndex = 129, CreatedItemEntry = 6451 },
		[7934] = { SkillIndex = 129, CreatedItemEntry = 6452 },
		[7935] = { RecipeItemEntry = 6454, SkillIndex = 129, CreatedItemEntry = 6453 },
		[10840] = { RecipeItemEntry = 16113, SkillIndex = 129, CreatedItemEntry = 8544 },
		[10841] = { SkillIndex = 129, CreatedItemEntry = 8545 },
		[18629] = { SkillIndex = 129, CreatedItemEntry = 14529 },
		[18630] = { SkillIndex = 129, CreatedItemEntry = 14530 },
		[23787] = { RecipeItemEntry = 19442, SkillIndex = 129, CreatedItemEntry = 19440 },
		[27032] = { RecipeItemEntry = 21992, SkillIndex = 129, CreatedItemEntry = 21990 },
		[27033] = { RecipeItemEntry = 21993, SkillIndex = 129, CreatedItemEntry = 21991 },
		[45545] = { SkillIndex = 129, CreatedItemEntry = 34721 },
		[45546] = { RecipeItemEntry = 39152, SkillIndex = 129, CreatedItemEntry = 34722 },
		[2660] = { SkillIndex = 164, CreatedItemEntry = 2862 },
		[2661] = { SkillIndex = 164, CreatedItemEntry = 2851 },
		[2662] = { SkillIndex = 164, CreatedItemEntry = 2852 },
		[2663] = { SkillIndex = 164, CreatedItemEntry = 2853 },
		[2664] = { SkillIndex = 164, CreatedItemEntry = 2854 },
		[2665] = { SkillIndex = 164, CreatedItemEntry = 2863 },
		[2666] = { SkillIndex = 164, CreatedItemEntry = 2857 },
		[2667] = { RecipeItemEntry = 2881, SkillIndex = 164, CreatedItemEntry = 2864 },
		[2668] = { SkillIndex = 164, CreatedItemEntry = 2865 },
		[2670] = { SkillIndex = 164, CreatedItemEntry = 2866 },
		[2671] = { SkillIndex = 164, CreatedItemEntry = 2867 },
		[2672] = { SkillIndex = 164, CreatedItemEntry = 2868 },
		[2673] = { RecipeItemEntry = 5578, SkillIndex = 164, CreatedItemEntry = 2869 },
		[2674] = { SkillIndex = 164, CreatedItemEntry = 2871 },
		[2675] = { SkillIndex = 164, CreatedItemEntry = 2870 },
		[2737] = { SkillIndex = 164, CreatedItemEntry = 2844 },
		[2738] = { SkillIndex = 164, CreatedItemEntry = 2845 },
		[2739] = { SkillIndex = 164, CreatedItemEntry = 2847 },
		[2740] = { SkillIndex = 164, CreatedItemEntry = 2848 },
		[2741] = { SkillIndex = 164, CreatedItemEntry = 2849 },
		[2742] = { SkillIndex = 164, CreatedItemEntry = 2850 },
		[3115] = { SkillIndex = 164, CreatedItemEntry = 3239 },
		[3116] = { SkillIndex = 164, CreatedItemEntry = 3240 },
		[3117] = { SkillIndex = 164, CreatedItemEntry = 3241 },
		[3292] = { SkillIndex = 164, CreatedItemEntry = 3487 },
		[3293] = { SkillIndex = 164, CreatedItemEntry = 3488 },
		[3294] = { SkillIndex = 164, CreatedItemEntry = 3489 },
		[3295] = { RecipeItemEntry = 2883, SkillIndex = 164, CreatedItemEntry = 3490 },
		[3296] = { SkillIndex = 164, CreatedItemEntry = 3491 },
		[3297] = { RecipeItemEntry = 3608, SkillIndex = 164, CreatedItemEntry = 3492 },
		[3319] = { SkillIndex = 164, CreatedItemEntry = 3469 },
		[3320] = { SkillIndex = 164, CreatedItemEntry = 3470 },
		[3321] = { RecipeItemEntry = 3609, SkillIndex = 164, CreatedItemEntry = 3471 },
		[3323] = { SkillIndex = 164, CreatedItemEntry = 3472 },
		[3324] = { SkillIndex = 164, CreatedItemEntry = 3473 },
		[3325] = { RecipeItemEntry = 3610, SkillIndex = 164, CreatedItemEntry = 3474 },
		[3326] = { SkillIndex = 164, CreatedItemEntry = 3478 },
		[3328] = { SkillIndex = 164, CreatedItemEntry = 3480 },
		[3330] = { RecipeItemEntry = 2882, SkillIndex = 164, CreatedItemEntry = 3481 },
		[3331] = { SkillIndex = 164, CreatedItemEntry = 3482 },
		[3333] = { SkillIndex = 164, CreatedItemEntry = 3483 },
		[3334] = { RecipeItemEntry = 3611, SkillIndex = 164, CreatedItemEntry = 3484 },
		[3336] = { RecipeItemEntry = 3612, SkillIndex = 164, CreatedItemEntry = 3485 },
		[3337] = { SkillIndex = 164, CreatedItemEntry = 3486 },
		[3491] = { SkillIndex = 164, CreatedItemEntry = 3848 },
		[3492] = { RecipeItemEntry = 12162, SkillIndex = 164, CreatedItemEntry = 3849 },
		[3493] = { RecipeItemEntry = 3866, SkillIndex = 164, CreatedItemEntry = 3850 },
		[3494] = { RecipeItemEntry = 10858, SkillIndex = 164, CreatedItemEntry = 3851 },
		[3495] = { RecipeItemEntry = 3867, SkillIndex = 164, CreatedItemEntry = 3852 },
		[3496] = { RecipeItemEntry = 12163, SkillIndex = 164, CreatedItemEntry = 3853 },
		[3497] = { RecipeItemEntry = 3868, SkillIndex = 164, CreatedItemEntry = 3854 },
		[3498] = { RecipeItemEntry = 12164, SkillIndex = 164, CreatedItemEntry = 3855 },
		[3500] = { RecipeItemEntry = 3869, SkillIndex = 164, CreatedItemEntry = 3856 },
		[3501] = { SkillIndex = 164, CreatedItemEntry = 3835 },
		[3502] = { SkillIndex = 164, CreatedItemEntry = 3836 },
		[3503] = { RecipeItemEntry = 6047, SkillIndex = 164, CreatedItemEntry = 3837 },
		[3504] = { RecipeItemEntry = 3870, SkillIndex = 164, CreatedItemEntry = 3840 },
		[3505] = { RecipeItemEntry = 3871, SkillIndex = 164, CreatedItemEntry = 3841 },
		[3506] = { SkillIndex = 164, CreatedItemEntry = 3842 },
		[3507] = { RecipeItemEntry = 3872, SkillIndex = 164, CreatedItemEntry = 3843 },
		[3508] = { SkillIndex = 164, CreatedItemEntry = 3844 },
		[3511] = { RecipeItemEntry = 3873, SkillIndex = 164, CreatedItemEntry = 3845 },
		[3513] = { RecipeItemEntry = 3874, SkillIndex = 164, CreatedItemEntry = 3846 },
		[3515] = { RecipeItemEntry = 3875, SkillIndex = 164, CreatedItemEntry = 3847 },
		[6517] = { SkillIndex = 164, CreatedItemEntry = 5540 },
		[6518] = { RecipeItemEntry = 5543, SkillIndex = 164, CreatedItemEntry = 5541 },
		[7221] = { RecipeItemEntry = 6044, SkillIndex = 164, CreatedItemEntry = 6042 },
		[7222] = { RecipeItemEntry = 6045, SkillIndex = 164, CreatedItemEntry = 6043 },
		[7223] = { SkillIndex = 164, CreatedItemEntry = 6040 },
		[7224] = { RecipeItemEntry = 6046, SkillIndex = 164, CreatedItemEntry = 6041 },
		[7408] = { SkillIndex = 164, CreatedItemEntry = 6214 },
		[7817] = { SkillIndex = 164, CreatedItemEntry = 6350 },
		[7818] = { SkillIndex = 164, CreatedItemEntry = 6338 },
		[8366] = { SkillIndex = 164, CreatedItemEntry = 6730 },
		[8367] = { RecipeItemEntry = 6735, SkillIndex = 164, CreatedItemEntry = 6731 },
		[8368] = { SkillIndex = 164, CreatedItemEntry = 6733 },
		[8768] = { SkillIndex = 164, CreatedItemEntry = 7071 },
		[8880] = { SkillIndex = 164, CreatedItemEntry = 7166 },
		[9811] = { RecipeItemEntry = 7978, SkillIndex = 164, CreatedItemEntry = 7913 },
		[9813] = { RecipeItemEntry = 7979, SkillIndex = 164, CreatedItemEntry = 7914 },
		[9814] = { RecipeItemEntry = 7980, SkillIndex = 164, CreatedItemEntry = 7915 },
		[9818] = { RecipeItemEntry = 7981, SkillIndex = 164, CreatedItemEntry = 7916 },
		[9820] = { RecipeItemEntry = 7982, SkillIndex = 164, CreatedItemEntry = 7917 },
		[9916] = { SkillIndex = 164, CreatedItemEntry = 7963 },
		[9918] = { SkillIndex = 164, CreatedItemEntry = 7964 },
		[9920] = { SkillIndex = 164, CreatedItemEntry = 7966 },
		[9921] = { SkillIndex = 164, CreatedItemEntry = 7965 },
		[9926] = { SkillIndex = 164, CreatedItemEntry = 7918 },
		[9928] = { SkillIndex = 164, CreatedItemEntry = 7919 },
		[9931] = { SkillIndex = 164, CreatedItemEntry = 7920 },
		[9933] = { RecipeItemEntry = 7975, SkillIndex = 164, CreatedItemEntry = 7921 },
		[9935] = { SkillIndex = 164, CreatedItemEntry = 7922 },
		[9937] = { RecipeItemEntry = 7995, SkillIndex = 164, CreatedItemEntry = 7924 },
		[9939] = { RecipeItemEntry = 7976, SkillIndex = 164, CreatedItemEntry = 7967 },
		[9942] = { SkillIndex = 164, CreatedItemEntry = 7925 },
		[9945] = { RecipeItemEntry = 7983, SkillIndex = 164, CreatedItemEntry = 7926 },
		[9950] = { RecipeItemEntry = 7984, SkillIndex = 164, CreatedItemEntry = 7927 },
		[9952] = { RecipeItemEntry = 7985, SkillIndex = 164, CreatedItemEntry = 7928 },
		[9954] = { SkillIndex = 164, CreatedItemEntry = 7938 },
		[9957] = { SkillIndex = 164, CreatedItemEntry = 7929 },
		[9959] = { SkillIndex = 164, CreatedItemEntry = 7930 },
		[9961] = { SkillIndex = 164, CreatedItemEntry = 7931 },
		[9964] = { RecipeItemEntry = 7989, SkillIndex = 164, CreatedItemEntry = 7969 },
		[9966] = { RecipeItemEntry = 7991, SkillIndex = 164, CreatedItemEntry = 7932 },
		[9968] = { SkillIndex = 164, CreatedItemEntry = 7933 },
		[9970] = { RecipeItemEntry = 7990, SkillIndex = 164, CreatedItemEntry = 7934 },
		[9972] = { SkillIndex = 164, CreatedItemEntry = 7935 },
		[9974] = { SkillIndex = 164, CreatedItemEntry = 7939 },
		[9979] = { SkillIndex = 164, CreatedItemEntry = 7936 },
		[9980] = { SkillIndex = 164, CreatedItemEntry = 7937 },
		[9983] = { SkillIndex = 164, CreatedItemEntry = 7955 },
		[9985] = { SkillIndex = 164, CreatedItemEntry = 7956 },
		[9986] = { SkillIndex = 164, CreatedItemEntry = 7957 },
		[9987] = { SkillIndex = 164, CreatedItemEntry = 7958 },
		[9993] = { SkillIndex = 164, CreatedItemEntry = 7941 },
		[9995] = { RecipeItemEntry = 7992, SkillIndex = 164, CreatedItemEntry = 7942 },
		[9997] = { RecipeItemEntry = 8029, SkillIndex = 164, CreatedItemEntry = 7943 },
		[10001] = { SkillIndex = 164, CreatedItemEntry = 7945 },
		[10003] = { SkillIndex = 164, CreatedItemEntry = 7954 },
		[10005] = { RecipeItemEntry = 7993, SkillIndex = 164, CreatedItemEntry = 7944 },
		[10007] = { RecipeItemEntry = 74274, SkillIndex = 164, CreatedItemEntry = 7961 },
		[10009] = { RecipeItemEntry = 8028, SkillIndex = 164, CreatedItemEntry = 7946 },
		[10011] = { SkillIndex = 164, CreatedItemEntry = 7959 },
		[10013] = { RecipeItemEntry = 8030, SkillIndex = 164, CreatedItemEntry = 7947 },
		[10015] = { SkillIndex = 164, CreatedItemEntry = 7960 },
		[11454] = { RecipeItemEntry = 10713, SkillIndex = 164, CreatedItemEntry = 9060 },
		[11643] = { RecipeItemEntry = 9367, SkillIndex = 164, CreatedItemEntry = 9366 },
		[12259] = { RecipeItemEntry = 10424, SkillIndex = 164, CreatedItemEntry = 10423 },
		[12260] = { SkillIndex = 164, CreatedItemEntry = 10421 },
		[14379] = { SkillIndex = 164, CreatedItemEntry = 11128 },
		[14380] = { SkillIndex = 164, CreatedItemEntry = 11144 },
		[15292] = { RecipeItemEntry = 11610, SkillIndex = 164, CreatedItemEntry = 11608 },
		[15293] = { RecipeItemEntry = 11614, SkillIndex = 164, CreatedItemEntry = 11606 },
		[15294] = { RecipeItemEntry = 11611, SkillIndex = 164, CreatedItemEntry = 11607 },
		[15295] = { RecipeItemEntry = 11615, SkillIndex = 164, CreatedItemEntry = 11605 },
		[15296] = { RecipeItemEntry = 11612, SkillIndex = 164, CreatedItemEntry = 11604 },
		[15972] = { SkillIndex = 164, CreatedItemEntry = 12259 },
		[15973] = { RecipeItemEntry = 12261, SkillIndex = 164, CreatedItemEntry = 12260 },
		[16639] = { SkillIndex = 164, CreatedItemEntry = 12644 },
		[16640] = { SkillIndex = 164, CreatedItemEntry = 12643 },
		[16641] = { SkillIndex = 164, CreatedItemEntry = 12404 },
		[16642] = { RecipeItemEntry = 12682, SkillIndex = 164, CreatedItemEntry = 12405 },
		[16643] = { RecipeItemEntry = 12683, SkillIndex = 164, CreatedItemEntry = 12406 },
		[16644] = { RecipeItemEntry = 12684, SkillIndex = 164, CreatedItemEntry = 12408 },
		[16645] = { RecipeItemEntry = 12685, SkillIndex = 164, CreatedItemEntry = 12416 },
		[16646] = { RecipeItemEntry = 12687, SkillIndex = 164, CreatedItemEntry = 12428 },
		[16647] = { RecipeItemEntry = 12688, SkillIndex = 164, CreatedItemEntry = 12424 },
		[16648] = { RecipeItemEntry = 12689, SkillIndex = 164, CreatedItemEntry = 12415 },
		[16649] = { RecipeItemEntry = 12690, SkillIndex = 164, CreatedItemEntry = 12425 },
		[16650] = { RecipeItemEntry = 12691, SkillIndex = 164, CreatedItemEntry = 12624 },
		[16651] = { RecipeItemEntry = 12692, SkillIndex = 164, CreatedItemEntry = 12645 },
		[16652] = { RecipeItemEntry = 12693, SkillIndex = 164, CreatedItemEntry = 12409 },
		[16653] = { RecipeItemEntry = 12694, SkillIndex = 164, CreatedItemEntry = 12410 },
		[16654] = { RecipeItemEntry = 12695, SkillIndex = 164, CreatedItemEntry = 12418 },
		[16655] = { RecipeItemEntry = 12699, SkillIndex = 164, CreatedItemEntry = 12631 },
		[16656] = { RecipeItemEntry = 12697, SkillIndex = 164, CreatedItemEntry = 12419 },
		[16657] = { RecipeItemEntry = 12700, SkillIndex = 164, CreatedItemEntry = 12426 },
		[16658] = { RecipeItemEntry = 12701, SkillIndex = 164, CreatedItemEntry = 12427 },
		[16659] = { RecipeItemEntry = 12702, SkillIndex = 164, CreatedItemEntry = 12417 },
		[16660] = { RecipeItemEntry = 12698, SkillIndex = 164, CreatedItemEntry = 12625 },
		[16661] = { RecipeItemEntry = 12703, SkillIndex = 164, CreatedItemEntry = 12632 },
		[16662] = { RecipeItemEntry = 12704, SkillIndex = 164, CreatedItemEntry = 12414 },
		[16663] = { RecipeItemEntry = 12705, SkillIndex = 164, CreatedItemEntry = 12422 },
		[16664] = { RecipeItemEntry = 12706, SkillIndex = 164, CreatedItemEntry = 12610 },
		[16665] = { RecipeItemEntry = 12707, SkillIndex = 164, CreatedItemEntry = 12611 },
		[16667] = { RecipeItemEntry = 12696, SkillIndex = 164, CreatedItemEntry = 12628 },
		[16724] = { RecipeItemEntry = 12711, SkillIndex = 164, CreatedItemEntry = 12633 },
		[16725] = { RecipeItemEntry = 12713, SkillIndex = 164, CreatedItemEntry = 12420 },
		[16726] = { RecipeItemEntry = 12714, SkillIndex = 164, CreatedItemEntry = 12612 },
		[16728] = { RecipeItemEntry = 12716, SkillIndex = 164, CreatedItemEntry = 12636 },
		[16729] = { RecipeItemEntry = 12717, SkillIndex = 164, CreatedItemEntry = 12640 },
		[16730] = { RecipeItemEntry = 12715, SkillIndex = 164, CreatedItemEntry = 12429 },
		[16731] = { RecipeItemEntry = 12718, SkillIndex = 164, CreatedItemEntry = 12613 },
		[16732] = { RecipeItemEntry = 12719, SkillIndex = 164, CreatedItemEntry = 12614 },
		[16741] = { RecipeItemEntry = 12720, SkillIndex = 164, CreatedItemEntry = 12639 },
		[16742] = { RecipeItemEntry = 12725, SkillIndex = 164, CreatedItemEntry = 12620 },
		[16744] = { RecipeItemEntry = 12726, SkillIndex = 164, CreatedItemEntry = 12619 },
		[16745] = { RecipeItemEntry = 12727, SkillIndex = 164, CreatedItemEntry = 12618 },
		[16746] = { RecipeItemEntry = 12728, SkillIndex = 164, CreatedItemEntry = 12641 },
		[16960] = { SkillIndex = 164, CreatedItemEntry = 12764 },
		[16965] = { SkillIndex = 164, CreatedItemEntry = 12769 },
		[16967] = { SkillIndex = 164, CreatedItemEntry = 12772 },
		[16969] = { RecipeItemEntry = 12819, SkillIndex = 164, CreatedItemEntry = 12773 },
		[16970] = { RecipeItemEntry = 12821, SkillIndex = 164, CreatedItemEntry = 12774 },
		[16971] = { RecipeItemEntry = 12823, SkillIndex = 164, CreatedItemEntry = 12775 },
		[16973] = { RecipeItemEntry = 12824, SkillIndex = 164, CreatedItemEntry = 12776 },
		[16978] = { RecipeItemEntry = 12825, SkillIndex = 164, CreatedItemEntry = 12777 },
		[16980] = { SkillIndex = 164, CreatedItemEntry = 12779 },
		[16983] = { RecipeItemEntry = 12827, SkillIndex = 164, CreatedItemEntry = 12781 },
		[16984] = { RecipeItemEntry = 12828, SkillIndex = 164, CreatedItemEntry = 12792 },
		[16985] = { RecipeItemEntry = 12830, SkillIndex = 164, CreatedItemEntry = 12782 },
		[16986] = { SkillIndex = 164, CreatedItemEntry = 12795 },
		[16987] = { SkillIndex = 164, CreatedItemEntry = 12802 },
		[16988] = { RecipeItemEntry = 12833, SkillIndex = 164, CreatedItemEntry = 12796 },
		[16990] = { RecipeItemEntry = 12834, SkillIndex = 164, CreatedItemEntry = 12790 },
		[16991] = { RecipeItemEntry = 12835, SkillIndex = 164, CreatedItemEntry = 12798 },
		[16992] = { RecipeItemEntry = 12836, SkillIndex = 164, CreatedItemEntry = 12797 },
		[16993] = { RecipeItemEntry = 12837, SkillIndex = 164, CreatedItemEntry = 12794 },
		[16994] = { RecipeItemEntry = 12838, SkillIndex = 164, CreatedItemEntry = 12784 },
		[16995] = { RecipeItemEntry = 12839, SkillIndex = 164, CreatedItemEntry = 12783 },
		[19666] = { SkillIndex = 164, CreatedItemEntry = 15869 },
		[19667] = { SkillIndex = 164, CreatedItemEntry = 15870 },
		[19668] = { SkillIndex = 164, CreatedItemEntry = 15871 },
		[19669] = { SkillIndex = 164, CreatedItemEntry = 15872 },
		[20201] = { SkillIndex = 164, CreatedItemEntry = 16206 },
		[20872] = { RecipeItemEntry = 17049, SkillIndex = 164, CreatedItemEntry = 16989 },
		[20873] = { RecipeItemEntry = 17053, SkillIndex = 164, CreatedItemEntry = 16988 },
		[20874] = { RecipeItemEntry = 17051, SkillIndex = 164, CreatedItemEntry = 17014 },
		[20876] = { RecipeItemEntry = 17052, SkillIndex = 164, CreatedItemEntry = 17013 },
		[20890] = { RecipeItemEntry = 17059, SkillIndex = 164, CreatedItemEntry = 17015 },
		[20897] = { RecipeItemEntry = 17060, SkillIndex = 164, CreatedItemEntry = 17016 },
		[21161] = { RecipeItemEntry = 18592, SkillIndex = 164, CreatedItemEntry = 17193 },
		[21913] = { RecipeItemEntry = 17706, SkillIndex = 164, CreatedItemEntry = 17704 },
		[22757] = { RecipeItemEntry = 18264, SkillIndex = 164, CreatedItemEntry = 18262 },
		[23628] = { RecipeItemEntry = 19202, SkillIndex = 164, CreatedItemEntry = 19043 },
		[23629] = { RecipeItemEntry = 19204, SkillIndex = 164, CreatedItemEntry = 19048 },
		[23632] = { RecipeItemEntry = 19203, SkillIndex = 164, CreatedItemEntry = 19051 },
		[23633] = { RecipeItemEntry = 19205, SkillIndex = 164, CreatedItemEntry = 19057 },
		[23636] = { RecipeItemEntry = 19206, SkillIndex = 164, CreatedItemEntry = 19148 },
		[23637] = { RecipeItemEntry = 19207, SkillIndex = 164, CreatedItemEntry = 19164 },
		[23638] = { RecipeItemEntry = 19208, SkillIndex = 164, CreatedItemEntry = 19166 },
		[23639] = { RecipeItemEntry = 19209, SkillIndex = 164, CreatedItemEntry = 19167 },
		[23650] = { RecipeItemEntry = 19210, SkillIndex = 164, CreatedItemEntry = 19170 },
		[23652] = { RecipeItemEntry = 19211, SkillIndex = 164, CreatedItemEntry = 19168 },
		[23653] = { RecipeItemEntry = 19212, SkillIndex = 164, CreatedItemEntry = 19169 },
		[24136] = { RecipeItemEntry = 19776, SkillIndex = 164, CreatedItemEntry = 19690 },
		[24137] = { RecipeItemEntry = 19777, SkillIndex = 164, CreatedItemEntry = 19691 },
		[24138] = { RecipeItemEntry = 19778, SkillIndex = 164, CreatedItemEntry = 19692 },
		[24139] = { RecipeItemEntry = 19779, SkillIndex = 164, CreatedItemEntry = 19693 },
		[24140] = { RecipeItemEntry = 19780, SkillIndex = 164, CreatedItemEntry = 19694 },
		[24141] = { RecipeItemEntry = 19781, SkillIndex = 164, CreatedItemEntry = 19695 },
		[24399] = { RecipeItemEntry = 20040, SkillIndex = 164, CreatedItemEntry = 20039 },
		[24912] = { RecipeItemEntry = 20553, SkillIndex = 164, CreatedItemEntry = 20549 },
		[24913] = { RecipeItemEntry = 20555, SkillIndex = 164, CreatedItemEntry = 20551 },
		[24914] = { RecipeItemEntry = 20554, SkillIndex = 164, CreatedItemEntry = 20550 },
		[27585] = { RecipeItemEntry = 22209, SkillIndex = 164, CreatedItemEntry = 22197 },
		[27586] = { RecipeItemEntry = 22219, SkillIndex = 164, CreatedItemEntry = 22198 },
		[27587] = { RecipeItemEntry = 22222, SkillIndex = 164, CreatedItemEntry = 22196 },
		[27588] = { RecipeItemEntry = 22214, SkillIndex = 164, CreatedItemEntry = 22195 },
		[27589] = { RecipeItemEntry = 22220, SkillIndex = 164, CreatedItemEntry = 22194 },
		[27590] = { RecipeItemEntry = 22221, SkillIndex = 164, CreatedItemEntry = 22191 },
		[27829] = { RecipeItemEntry = 22388, SkillIndex = 164, CreatedItemEntry = 22385 },
		[27830] = { RecipeItemEntry = 22390, SkillIndex = 164, CreatedItemEntry = 22384 },
		[27832] = { RecipeItemEntry = 22389, SkillIndex = 164, CreatedItemEntry = 22383 },
		[28242] = { SkillIndex = 164, CreatedItemEntry = 22669 },
		[28243] = { SkillIndex = 164, CreatedItemEntry = 22670 },
		[28244] = { SkillIndex = 164, CreatedItemEntry = 22671 },
		[28461] = { RecipeItemEntry = 22766, SkillIndex = 164, CreatedItemEntry = 22762 },
		[28462] = { RecipeItemEntry = 22767, SkillIndex = 164, CreatedItemEntry = 22763 },
		[28463] = { RecipeItemEntry = 22768, SkillIndex = 164, CreatedItemEntry = 22764 },
		[29545] = { SkillIndex = 164, CreatedItemEntry = 23482 },
		[29547] = { SkillIndex = 164, CreatedItemEntry = 23484 },
		[29548] = { SkillIndex = 164, CreatedItemEntry = 23487 },
		[29549] = { SkillIndex = 164, CreatedItemEntry = 23488 },
		[29550] = { SkillIndex = 164, CreatedItemEntry = 23489 },
		[29551] = { SkillIndex = 164, CreatedItemEntry = 23493 },
		[29552] = { SkillIndex = 164, CreatedItemEntry = 23491 },
		[29553] = { SkillIndex = 164, CreatedItemEntry = 23494 },
		[29556] = { SkillIndex = 164, CreatedItemEntry = 23490 },
		[29557] = { SkillIndex = 164, CreatedItemEntry = 23497 },
		[29558] = { SkillIndex = 164, CreatedItemEntry = 23498 },
		[29565] = { SkillIndex = 164, CreatedItemEntry = 23499 },
		[29566] = { RecipeItemEntry = 23590, SkillIndex = 164, CreatedItemEntry = 23502 },
		[29568] = { RecipeItemEntry = 23591, SkillIndex = 164, CreatedItemEntry = 23503 },
		[29569] = { RecipeItemEntry = 23592, SkillIndex = 164, CreatedItemEntry = 23504 },
		[29571] = { RecipeItemEntry = 23593, SkillIndex = 164, CreatedItemEntry = 23505 },
		[29603] = { RecipeItemEntry = 23594, SkillIndex = 164, CreatedItemEntry = 23506 },
		[29605] = { RecipeItemEntry = 23595, SkillIndex = 164, CreatedItemEntry = 23508 },
		[29606] = { RecipeItemEntry = 23596, SkillIndex = 164, CreatedItemEntry = 23507 },
		[29608] = { RecipeItemEntry = 23597, SkillIndex = 164, CreatedItemEntry = 23510 },
		[29610] = { RecipeItemEntry = 23599, SkillIndex = 164, CreatedItemEntry = 23509 },
		[29611] = { RecipeItemEntry = 23598, SkillIndex = 164, CreatedItemEntry = 23511 },
		[29613] = { RecipeItemEntry = 23600, SkillIndex = 164, CreatedItemEntry = 23512 },
		[29614] = { RecipeItemEntry = 23601, SkillIndex = 164, CreatedItemEntry = 23515 },
		[29615] = { RecipeItemEntry = 23602, SkillIndex = 164, CreatedItemEntry = 23516 },
		[29616] = { RecipeItemEntry = 23603, SkillIndex = 164, CreatedItemEntry = 23514 },
		[29617] = { RecipeItemEntry = 23604, SkillIndex = 164, CreatedItemEntry = 23513 },
		[29619] = { RecipeItemEntry = 23605, SkillIndex = 164, CreatedItemEntry = 23517 },
		[29620] = { RecipeItemEntry = 23606, SkillIndex = 164, CreatedItemEntry = 23518 },
		[29621] = { RecipeItemEntry = 23607, SkillIndex = 164, CreatedItemEntry = 23519 },
		[29622] = { RecipeItemEntry = 23621, SkillIndex = 164, CreatedItemEntry = 23532 },
		[29628] = { RecipeItemEntry = 23608, SkillIndex = 164, CreatedItemEntry = 23524 },
		[29629] = { RecipeItemEntry = 23609, SkillIndex = 164, CreatedItemEntry = 23523 },
		[29630] = { RecipeItemEntry = 23610, SkillIndex = 164, CreatedItemEntry = 23525 },
		[29642] = { RecipeItemEntry = 23611, SkillIndex = 164, CreatedItemEntry = 23520 },
		[29643] = { RecipeItemEntry = 23612, SkillIndex = 164, CreatedItemEntry = 23521 },
		[29645] = { RecipeItemEntry = 23613, SkillIndex = 164, CreatedItemEntry = 23522 },
		[29648] = { RecipeItemEntry = 23615, SkillIndex = 164, CreatedItemEntry = 23526 },
		[29649] = { RecipeItemEntry = 23617, SkillIndex = 164, CreatedItemEntry = 23527 },
		[29654] = { SkillIndex = 164, CreatedItemEntry = 23528 },
		[29656] = { RecipeItemEntry = 23618, SkillIndex = 164, CreatedItemEntry = 23529 },
		[29657] = { RecipeItemEntry = 23619, SkillIndex = 164, CreatedItemEntry = 23530 },
		[29658] = { RecipeItemEntry = 23620, SkillIndex = 164, CreatedItemEntry = 23531 },
		[29662] = { RecipeItemEntry = 23622, SkillIndex = 164, CreatedItemEntry = 23533 },
		[29663] = { RecipeItemEntry = 23623, SkillIndex = 164, CreatedItemEntry = 23534 },
		[29664] = { RecipeItemEntry = 23624, SkillIndex = 164, CreatedItemEntry = 23535 },
		[29668] = { RecipeItemEntry = 23625, SkillIndex = 164, CreatedItemEntry = 23536 },
		[29669] = { RecipeItemEntry = 23626, SkillIndex = 164, CreatedItemEntry = 23537 },
		[29671] = { RecipeItemEntry = 23627, SkillIndex = 164, CreatedItemEntry = 23538 },
		[29672] = { RecipeItemEntry = 23628, SkillIndex = 164, CreatedItemEntry = 23539 },
		[29692] = { RecipeItemEntry = 23629, SkillIndex = 164, CreatedItemEntry = 23540 },
		[29693] = { RecipeItemEntry = 23630, SkillIndex = 164, CreatedItemEntry = 23541 },
		[29694] = { RecipeItemEntry = 23631, SkillIndex = 164, CreatedItemEntry = 23542 },
		[29695] = { RecipeItemEntry = 23632, SkillIndex = 164, CreatedItemEntry = 23543 },
		[29696] = { RecipeItemEntry = 23633, SkillIndex = 164, CreatedItemEntry = 23544 },
		[29697] = { RecipeItemEntry = 23634, SkillIndex = 164, CreatedItemEntry = 23546 },
		[29698] = { RecipeItemEntry = 23635, SkillIndex = 164, CreatedItemEntry = 23554 },
		[29699] = { RecipeItemEntry = 23636, SkillIndex = 164, CreatedItemEntry = 23555 },
		[29700] = { RecipeItemEntry = 23637, SkillIndex = 164, CreatedItemEntry = 23556 },
		[29728] = { RecipeItemEntry = 23638, SkillIndex = 164, CreatedItemEntry = 23575 },
		[29729] = { RecipeItemEntry = 23639, SkillIndex = 164, CreatedItemEntry = 23576 },
		[32284] = { SkillIndex = 164, CreatedItemEntry = 23559 },
		[32285] = { RecipeItemEntry = 25526, SkillIndex = 164, CreatedItemEntry = 25521 },
		[32655] = { SkillIndex = 164, CreatedItemEntry = 25843 },
		[32656] = { RecipeItemEntry = 25846, SkillIndex = 164, CreatedItemEntry = 25844 },
		[32657] = { RecipeItemEntry = 25847, SkillIndex = 164, CreatedItemEntry = 25845 },
		[34529] = { SkillIndex = 164, CreatedItemEntry = 23563 },
		[34530] = { SkillIndex = 164, CreatedItemEntry = 23564 },
		[34533] = { SkillIndex = 164, CreatedItemEntry = 28483 },
		[34534] = { SkillIndex = 164, CreatedItemEntry = 28484 },
		[34535] = { SkillIndex = 164, CreatedItemEntry = 28425 },
		[34537] = { SkillIndex = 164, CreatedItemEntry = 28426 },
		[34538] = { SkillIndex = 164, CreatedItemEntry = 28428 },
		[34540] = { SkillIndex = 164, CreatedItemEntry = 28429 },
		[34541] = { SkillIndex = 164, CreatedItemEntry = 28431 },
		[34542] = { SkillIndex = 164, CreatedItemEntry = 28432 },
		[34543] = { SkillIndex = 164, CreatedItemEntry = 28434 },
		[34544] = { SkillIndex = 164, CreatedItemEntry = 28435 },
		[34545] = { SkillIndex = 164, CreatedItemEntry = 28437 },
		[34546] = { SkillIndex = 164, CreatedItemEntry = 28438 },
		[34547] = { SkillIndex = 164, CreatedItemEntry = 28440 },
		[34548] = { SkillIndex = 164, CreatedItemEntry = 28441 },
		[34607] = { SkillIndex = 164, CreatedItemEntry = 28420 },
		[34608] = { RecipeItemEntry = 28632, SkillIndex = 164, CreatedItemEntry = 28421 },
		[34979] = { SkillIndex = 164, CreatedItemEntry = 29201 },
		[34981] = { SkillIndex = 164, CreatedItemEntry = 29202 },
		[34982] = { SkillIndex = 164, CreatedItemEntry = 29203 },
		[34983] = { SkillIndex = 164, CreatedItemEntry = 29204 },
		[36122] = { SkillIndex = 164, CreatedItemEntry = 30069 },
		[36124] = { SkillIndex = 164, CreatedItemEntry = 30070 },
		[36125] = { SkillIndex = 164, CreatedItemEntry = 30071 },
		[36126] = { SkillIndex = 164, CreatedItemEntry = 30072 },
		[36128] = { SkillIndex = 164, CreatedItemEntry = 30073 },
		[36129] = { SkillIndex = 164, CreatedItemEntry = 30074 },
		[36130] = { SkillIndex = 164, CreatedItemEntry = 30076 },
		[36131] = { SkillIndex = 164, CreatedItemEntry = 30077 },
		[36133] = { SkillIndex = 164, CreatedItemEntry = 30086 },
		[36134] = { SkillIndex = 164, CreatedItemEntry = 30087 },
		[36135] = { SkillIndex = 164, CreatedItemEntry = 30088 },
		[36136] = { SkillIndex = 164, CreatedItemEntry = 30089 },
		[36137] = { SkillIndex = 164, CreatedItemEntry = 30093 },
		[36256] = { SkillIndex = 164, CreatedItemEntry = 23565 },
		[36257] = { SkillIndex = 164, CreatedItemEntry = 28485 },
		[36258] = { SkillIndex = 164, CreatedItemEntry = 28427 },
		[36259] = { SkillIndex = 164, CreatedItemEntry = 28430 },
		[36260] = { SkillIndex = 164, CreatedItemEntry = 28433 },
		[36261] = { SkillIndex = 164, CreatedItemEntry = 28436 },
		[36262] = { SkillIndex = 164, CreatedItemEntry = 28439 },
		[36263] = { SkillIndex = 164, CreatedItemEntry = 28442 },
		[36389] = { RecipeItemEntry = 30321, SkillIndex = 164, CreatedItemEntry = 30034 },
		[36390] = { RecipeItemEntry = 30322, SkillIndex = 164, CreatedItemEntry = 30032 },
		[36391] = { RecipeItemEntry = 30323, SkillIndex = 164, CreatedItemEntry = 30033 },
		[36392] = { RecipeItemEntry = 30324, SkillIndex = 164, CreatedItemEntry = 30031 },
		[38473] = { RecipeItemEntry = 31390, SkillIndex = 164, CreatedItemEntry = 31364 },
		[38475] = { RecipeItemEntry = 31391, SkillIndex = 164, CreatedItemEntry = 31367 },
		[38476] = { RecipeItemEntry = 31392, SkillIndex = 164, CreatedItemEntry = 31368 },
		[38477] = { RecipeItemEntry = 31393, SkillIndex = 164, CreatedItemEntry = 31369 },
		[38478] = { RecipeItemEntry = 31394, SkillIndex = 164, CreatedItemEntry = 31370 },
		[38479] = { RecipeItemEntry = 31395, SkillIndex = 164, CreatedItemEntry = 31371 },
		[40033] = { RecipeItemEntry = 32441, SkillIndex = 164, CreatedItemEntry = 32402 },
		[40034] = { RecipeItemEntry = 32442, SkillIndex = 164, CreatedItemEntry = 32403 },
		[40035] = { RecipeItemEntry = 32443, SkillIndex = 164, CreatedItemEntry = 32404 },
		[40036] = { RecipeItemEntry = 32444, SkillIndex = 164, CreatedItemEntry = 32401 },
		[41132] = { RecipeItemEntry = 32736, SkillIndex = 164, CreatedItemEntry = 32568 },
		[41133] = { RecipeItemEntry = 32737, SkillIndex = 164, CreatedItemEntry = 32570 },
		[41134] = { RecipeItemEntry = 32738, SkillIndex = 164, CreatedItemEntry = 32571 },
		[41135] = { RecipeItemEntry = 32739, SkillIndex = 164, CreatedItemEntry = 32573 },
		[42662] = { RecipeItemEntry = 33174, SkillIndex = 164, CreatedItemEntry = 33173 },
		[42688] = { RecipeItemEntry = 33186, SkillIndex = 164, CreatedItemEntry = 33185 },
		[43549] = { RecipeItemEntry = 33792, SkillIndex = 164, CreatedItemEntry = 33791 },
		[43846] = { RecipeItemEntry = 33954, SkillIndex = 164, CreatedItemEntry = 32854 },
		[46140] = { RecipeItemEntry = 35208, SkillIndex = 164, CreatedItemEntry = 34380 },
		[46141] = { RecipeItemEntry = 35209, SkillIndex = 164, CreatedItemEntry = 34378 },
		[46142] = { RecipeItemEntry = 35210, SkillIndex = 164, CreatedItemEntry = 34379 },
		[46144] = { RecipeItemEntry = 35211, SkillIndex = 164, CreatedItemEntry = 34377 },
		[52567] = { SkillIndex = 164, CreatedItemEntry = 39086 },
		[52568] = { SkillIndex = 164, CreatedItemEntry = 39087 },
		[52569] = { SkillIndex = 164, CreatedItemEntry = 39088 },
		[52570] = { SkillIndex = 164, CreatedItemEntry = 39085 },
		[52571] = { SkillIndex = 164, CreatedItemEntry = 39084 },
		[52572] = { SkillIndex = 164, CreatedItemEntry = 39083 },
		[54550] = { SkillIndex = 164, CreatedItemEntry = 40668 },
		[54551] = { SkillIndex = 164, CreatedItemEntry = 40669 },
		[54552] = { SkillIndex = 164, CreatedItemEntry = 40671 },
		[54553] = { SkillIndex = 164, CreatedItemEntry = 40672 },
		[54554] = { SkillIndex = 164, CreatedItemEntry = 40674 },
		[54555] = { SkillIndex = 164, CreatedItemEntry = 40673 },
		[54556] = { SkillIndex = 164, CreatedItemEntry = 40675 },
		[54557] = { SkillIndex = 164, CreatedItemEntry = 40670 },
		[54917] = { SkillIndex = 164, CreatedItemEntry = 40942 },
		[54918] = { SkillIndex = 164, CreatedItemEntry = 40949 },
		[54941] = { SkillIndex = 164, CreatedItemEntry = 40950 },
		[54944] = { SkillIndex = 164, CreatedItemEntry = 40951 },
		[54945] = { SkillIndex = 164, CreatedItemEntry = 40952 },
		[54946] = { SkillIndex = 164, CreatedItemEntry = 40953 },
		[54947] = { SkillIndex = 164, CreatedItemEntry = 40943 },
		[54948] = { SkillIndex = 164, CreatedItemEntry = 40954 },
		[54949] = { SkillIndex = 164, CreatedItemEntry = 40955 },
		[54978] = { RecipeItemEntry = 41124, SkillIndex = 164, CreatedItemEntry = 40956 },
		[54979] = { RecipeItemEntry = 41123, SkillIndex = 164, CreatedItemEntry = 40957 },
		[54980] = { RecipeItemEntry = 41120, SkillIndex = 164, CreatedItemEntry = 40958 },
		[54981] = { RecipeItemEntry = 41122, SkillIndex = 164, CreatedItemEntry = 40959 },
		[55013] = { SkillIndex = 164, CreatedItemEntry = 41117 },
		[55014] = { SkillIndex = 164, CreatedItemEntry = 41113 },
		[55015] = { SkillIndex = 164, CreatedItemEntry = 41114 },
		[55017] = { SkillIndex = 164, CreatedItemEntry = 41116 },
		[55055] = { SkillIndex = 164, CreatedItemEntry = 41126 },
		[55056] = { SkillIndex = 164, CreatedItemEntry = 41127 },
		[55057] = { SkillIndex = 164, CreatedItemEntry = 41128 },
		[55058] = { SkillIndex = 164, CreatedItemEntry = 41129 },
		[55174] = { SkillIndex = 164, CreatedItemEntry = 41181 },
		[55177] = { SkillIndex = 164, CreatedItemEntry = 41182 },
		[55179] = { SkillIndex = 164, CreatedItemEntry = 41183 },
		[55181] = { SkillIndex = 164, CreatedItemEntry = 41184 },
		[55182] = { SkillIndex = 164, CreatedItemEntry = 41185 },
		[55183] = { SkillIndex = 164, CreatedItemEntry = 41186 },
		[55184] = { SkillIndex = 164, CreatedItemEntry = 41187 },
		[55185] = { SkillIndex = 164, CreatedItemEntry = 41188 },
		[55186] = { SkillIndex = 164, CreatedItemEntry = 41189 },
		[55187] = { SkillIndex = 164, CreatedItemEntry = 41190 },
		[55200] = { SkillIndex = 164, CreatedItemEntry = 41239 },
		[55201] = { SkillIndex = 164, CreatedItemEntry = 41240 },
		[55202] = { SkillIndex = 164, CreatedItemEntry = 41241 },
		[55203] = { SkillIndex = 164, CreatedItemEntry = 41242 },
		[55204] = { SkillIndex = 164, CreatedItemEntry = 41243 },
		[55206] = { SkillIndex = 164, CreatedItemEntry = 41245 },
		[55298] = { SkillIndex = 164, CreatedItemEntry = 41355 },
		[55300] = { SkillIndex = 164, CreatedItemEntry = 41356 },
		[55301] = { SkillIndex = 164, CreatedItemEntry = 41357 },
		[55302] = { SkillIndex = 164, CreatedItemEntry = 41344 },
		[55303] = { SkillIndex = 164, CreatedItemEntry = 41345 },
		[55304] = { SkillIndex = 164, CreatedItemEntry = 41346 },
		[55305] = { SkillIndex = 164, CreatedItemEntry = 41354 },
		[55306] = { SkillIndex = 164, CreatedItemEntry = 41351 },
		[55307] = { SkillIndex = 164, CreatedItemEntry = 41352 },
		[55308] = { SkillIndex = 164, CreatedItemEntry = 41348 },
		[55309] = { SkillIndex = 164, CreatedItemEntry = 41349 },
		[55310] = { SkillIndex = 164, CreatedItemEntry = 41347 },
		[55311] = { SkillIndex = 164, CreatedItemEntry = 41353 },
		[55312] = { SkillIndex = 164, CreatedItemEntry = 41350 },
		[55369] = { SkillIndex = 164, CreatedItemEntry = 41257 },
		[55370] = { SkillIndex = 164, CreatedItemEntry = 41383 },
		[55371] = { SkillIndex = 164, CreatedItemEntry = 41384 },
		[55372] = { SkillIndex = 164, CreatedItemEntry = 41386 },
		[55373] = { SkillIndex = 164, CreatedItemEntry = 41387 },
		[55374] = { SkillIndex = 164, CreatedItemEntry = 41388 },
		[55375] = { SkillIndex = 164, CreatedItemEntry = 41391 },
		[55376] = { SkillIndex = 164, CreatedItemEntry = 41392 },
		[55377] = { SkillIndex = 164, CreatedItemEntry = 41394 },
		[55656] = { SkillIndex = 164, CreatedItemEntry = 41611 },
		[55732] = { SkillIndex = 164, CreatedItemEntry = 41745 },
		[55834] = { SkillIndex = 164, CreatedItemEntry = 41974 },
		[55835] = { SkillIndex = 164, CreatedItemEntry = 41975 },
		[55839] = { SkillIndex = 164, CreatedItemEntry = 41976 },
		[56234] = { SkillIndex = 164, CreatedItemEntry = 42435 },
		[56280] = { SkillIndex = 164, CreatedItemEntry = 42443 },
		[56357] = { SkillIndex = 164, CreatedItemEntry = 42500 },
		[56400] = { SkillIndex = 164, CreatedItemEntry = 42508 },
		[56549] = { SkillIndex = 164, CreatedItemEntry = 42723 },
		[56550] = { SkillIndex = 164, CreatedItemEntry = 42727 },
		[56551] = { SkillIndex = 164, CreatedItemEntry = 42729 },
		[56552] = { SkillIndex = 164, CreatedItemEntry = 42730 },
		[56553] = { SkillIndex = 164, CreatedItemEntry = 42724 },
		[56554] = { SkillIndex = 164, CreatedItemEntry = 42726 },
		[56555] = { SkillIndex = 164, CreatedItemEntry = 42725 },
		[56556] = { SkillIndex = 164, CreatedItemEntry = 42728 },
		[59405] = { SkillIndex = 164, CreatedItemEntry = 43854 },
		[59406] = { SkillIndex = 164, CreatedItemEntry = 43853 },
		[59436] = { SkillIndex = 164, CreatedItemEntry = 43860 },
		[59438] = { SkillIndex = 164, CreatedItemEntry = 43864 },
		[59440] = { SkillIndex = 164, CreatedItemEntry = 43865 },
		[59441] = { SkillIndex = 164, CreatedItemEntry = 43870 },
		[59442] = { SkillIndex = 164, CreatedItemEntry = 43871 },
		[61008] = { SkillIndex = 164, CreatedItemEntry = 43586 },
		[61009] = { SkillIndex = 164, CreatedItemEntry = 43587 },
		[61010] = { SkillIndex = 164, CreatedItemEntry = 43588 },
		[62202] = { RecipeItemEntry = 44937, SkillIndex = 164, CreatedItemEntry = 44936 },
		[63182] = { SkillIndex = 164, CreatedItemEntry = 45085 },
		[63187] = { RecipeItemEntry = 45088, SkillIndex = 164, CreatedItemEntry = 45550 },
		[63188] = { RecipeItemEntry = 45089, SkillIndex = 164, CreatedItemEntry = 45559 },
		[63189] = { RecipeItemEntry = 45090, SkillIndex = 164, CreatedItemEntry = 45552 },
		[63190] = { RecipeItemEntry = 45091, SkillIndex = 164, CreatedItemEntry = 45561 },
		[63191] = { RecipeItemEntry = 45092, SkillIndex = 164, CreatedItemEntry = 45551 },
		[63192] = { RecipeItemEntry = 45093, SkillIndex = 164, CreatedItemEntry = 45560 },
		[67091] = { RecipeItemEntry = 47622, SkillIndex = 164, CreatedItemEntry = 47591 },
		[67092] = { RecipeItemEntry = 47623, SkillIndex = 164, CreatedItemEntry = 47570 },
		[67093] = { RecipeItemEntry = 47624, SkillIndex = 164, CreatedItemEntry = 47589 },
		[67094] = { RecipeItemEntry = 47625, SkillIndex = 164, CreatedItemEntry = 47572 },
		[67095] = { RecipeItemEntry = 47626, SkillIndex = 164, CreatedItemEntry = 47593 },
		[67096] = { RecipeItemEntry = 47627, SkillIndex = 164, CreatedItemEntry = 47574 },
		[67130] = { RecipeItemEntry = 47640, SkillIndex = 164, CreatedItemEntry = 47592 },
		[67131] = { RecipeItemEntry = 47641, SkillIndex = 164, CreatedItemEntry = 47571 },
		[67132] = { RecipeItemEntry = 47644, SkillIndex = 164, CreatedItemEntry = 47590 },
		[67133] = { RecipeItemEntry = 47645, SkillIndex = 164, CreatedItemEntry = 47573 },
		[67134] = { RecipeItemEntry = 47643, SkillIndex = 164, CreatedItemEntry = 47594 },
		[67135] = { RecipeItemEntry = 47642, SkillIndex = 164, CreatedItemEntry = 47575 },
		[70562] = { RecipeItemEntry = 49969, SkillIndex = 164, CreatedItemEntry = 49902 },
		[70563] = { RecipeItemEntry = 49970, SkillIndex = 164, CreatedItemEntry = 49905 },
		[70565] = { RecipeItemEntry = 49971, SkillIndex = 164, CreatedItemEntry = 49903 },
		[70566] = { RecipeItemEntry = 49972, SkillIndex = 164, CreatedItemEntry = 49906 },
		[70567] = { RecipeItemEntry = 49973, SkillIndex = 164, CreatedItemEntry = 49904 },
		[70568] = { RecipeItemEntry = 49974, SkillIndex = 164, CreatedItemEntry = 49907 },
		[934537] = { SkillIndex = 164, CreatedItemEntry = 6028426 },
		[934540] = { SkillIndex = 164, CreatedItemEntry = 6028429 },
		[934542] = { SkillIndex = 164, CreatedItemEntry = 6028432 },
		[934544] = { SkillIndex = 164, CreatedItemEntry = 6028435 },
		[934546] = { SkillIndex = 164, CreatedItemEntry = 6028438 },
		[934548] = { SkillIndex = 164, CreatedItemEntry = 6028441 },
		[936258] = { SkillIndex = 164, CreatedItemEntry = 6028427 },
		[936259] = { SkillIndex = 164, CreatedItemEntry = 6028430 },
		[936260] = { SkillIndex = 164, CreatedItemEntry = 6028433 },
		[936261] = { SkillIndex = 164, CreatedItemEntry = 6028436 },
		[936262] = { SkillIndex = 164, CreatedItemEntry = 6028439 },
		[936263] = { SkillIndex = 164, CreatedItemEntry = 6028442 },
		[968019] = { RecipeItemEntry = 967251, SkillIndex = 164, CreatedItemEntry = 967173 },
		[968020] = { RecipeItemEntry = 967252, SkillIndex = 164, CreatedItemEntry = 967174 },
		[968022] = { RecipeItemEntry = 967254, SkillIndex = 164, CreatedItemEntry = 967176 },
		[968023] = { RecipeItemEntry = 967255, SkillIndex = 164, CreatedItemEntry = 967177 },
		[968025] = { RecipeItemEntry = 967257, SkillIndex = 164, CreatedItemEntry = 967179 },
		[968026] = { RecipeItemEntry = 967258, SkillIndex = 164, CreatedItemEntry = 967180 },
		[968028] = { RecipeItemEntry = 967260, SkillIndex = 164, CreatedItemEntry = 967182 },
		[968029] = { RecipeItemEntry = 967261, SkillIndex = 164, CreatedItemEntry = 967183 },
		[968031] = { RecipeItemEntry = 967263, SkillIndex = 164, CreatedItemEntry = 967185 },
		[968032] = { RecipeItemEntry = 967264, SkillIndex = 164, CreatedItemEntry = 967186 },
		[968034] = { RecipeItemEntry = 967266, SkillIndex = 164, CreatedItemEntry = 967188 },
		[968035] = { RecipeItemEntry = 967267, SkillIndex = 164, CreatedItemEntry = 967189 },
		[968037] = { RecipeItemEntry = 967269, SkillIndex = 164, CreatedItemEntry = 967191 },
		[968038] = { RecipeItemEntry = 967270, SkillIndex = 164, CreatedItemEntry = 967192 },
		[968040] = { RecipeItemEntry = 967272, SkillIndex = 164, CreatedItemEntry = 967194 },
		[968041] = { RecipeItemEntry = 967273, SkillIndex = 164, CreatedItemEntry = 967195 },
		[968480] = { RecipeItemEntry = 967683, SkillIndex = 164, CreatedItemEntry = 967680 },
		[968481] = { RecipeItemEntry = 967684, SkillIndex = 164, CreatedItemEntry = 967681 },
		[968482] = { RecipeItemEntry = 967685, SkillIndex = 164, CreatedItemEntry = 967682 },
		[979349] = { RecipeItemEntry = 1203249, SkillIndex = 164, CreatedItemEntry = 1203234 },
		[979350] = { SkillIndex = 164, CreatedItemEntry = 1203235 },
		[979351] = { RecipeItemEntry = 1203251, SkillIndex = 164, CreatedItemEntry = 1203236 },
		[979534] = { RecipeItemEntry = 1204085, SkillIndex = 164, CreatedItemEntry = 1204033 },
		[979535] = { RecipeItemEntry = 1204086, SkillIndex = 164, CreatedItemEntry = 1204034 },
		[979536] = { RecipeItemEntry = 1204087, SkillIndex = 164, CreatedItemEntry = 1204035 },
		[979537] = { RecipeItemEntry = 1204088, SkillIndex = 164, CreatedItemEntry = 1204036 },
		[979538] = { RecipeItemEntry = 1204089, SkillIndex = 164, CreatedItemEntry = 1204037 },
		[979539] = { RecipeItemEntry = 1204090, SkillIndex = 164, CreatedItemEntry = 1204038 },
		[979540] = { RecipeItemEntry = 1204091, SkillIndex = 164, CreatedItemEntry = 1204039 },
		[979541] = { RecipeItemEntry = 1204092, SkillIndex = 164, CreatedItemEntry = 1204040 },
		[979542] = { RecipeItemEntry = 1204093, SkillIndex = 164, CreatedItemEntry = 1204041 },
		[979543] = { RecipeItemEntry = 1204094, SkillIndex = 164, CreatedItemEntry = 1204042 },
		[979544] = { RecipeItemEntry = 1204095, SkillIndex = 164, CreatedItemEntry = 1204043 },
		[979545] = { RecipeItemEntry = 1204096, SkillIndex = 164, CreatedItemEntry = 1204044 },
		[979546] = { RecipeItemEntry = 1204097, SkillIndex = 164, CreatedItemEntry = 1204045 },
		[979547] = { RecipeItemEntry = 1204098, SkillIndex = 164, CreatedItemEntry = 1204046 },
		[979548] = { RecipeItemEntry = 1204099, SkillIndex = 164, CreatedItemEntry = 1204047 },
		[979549] = { RecipeItemEntry = 1204100, SkillIndex = 164, CreatedItemEntry = 1204048 },
		[1979337] = { RecipeItemEntry = 1303529, SkillIndex = 164, CreatedItemEntry = 1303481 },
		[1979338] = { RecipeItemEntry = 1303530, SkillIndex = 164, CreatedItemEntry = 1303131 },
		[1979339] = { RecipeItemEntry = 1303531, SkillIndex = 164, CreatedItemEntry = 1303133 },
		[1979340] = { RecipeItemEntry = 1303532, SkillIndex = 164, CreatedItemEntry = 1303135 },
		[2149] = { SkillIndex = 165, CreatedItemEntry = 2302 },
		[2152] = { SkillIndex = 165, CreatedItemEntry = 2304 },
		[2153] = { SkillIndex = 165, CreatedItemEntry = 2303 },
		[2158] = { RecipeItemEntry = 2406, SkillIndex = 165, CreatedItemEntry = 2307 },
		[2159] = { SkillIndex = 165, CreatedItemEntry = 2308 },
		[2160] = { SkillIndex = 165, CreatedItemEntry = 2300 },
		[2161] = { SkillIndex = 165, CreatedItemEntry = 2309 },
		[2162] = { SkillIndex = 165, CreatedItemEntry = 2310 },
		[2163] = { RecipeItemEntry = 2407, SkillIndex = 165, CreatedItemEntry = 2311 },
		[2164] = { RecipeItemEntry = 2408, SkillIndex = 165, CreatedItemEntry = 2312 },
		[2165] = { SkillIndex = 165, CreatedItemEntry = 2313 },
		[2166] = { SkillIndex = 165, CreatedItemEntry = 2314 },
		[2167] = { SkillIndex = 165, CreatedItemEntry = 2315 },
		[2168] = { SkillIndex = 165, CreatedItemEntry = 2316 },
		[2169] = { RecipeItemEntry = 2409, SkillIndex = 165, CreatedItemEntry = 2317 },
		[2881] = { SkillIndex = 165, CreatedItemEntry = 2318 },
		[3753] = { SkillIndex = 165, CreatedItemEntry = 4237 },
		[3756] = { SkillIndex = 165, CreatedItemEntry = 4239 },
		[3759] = { SkillIndex = 165, CreatedItemEntry = 4242 },
		[3760] = { SkillIndex = 165, CreatedItemEntry = 3719 },
		[3761] = { SkillIndex = 165, CreatedItemEntry = 4243 },
		[3762] = { RecipeItemEntry = 4293, SkillIndex = 165, CreatedItemEntry = 4244 },
		[3763] = { SkillIndex = 165, CreatedItemEntry = 4246 },
		[3764] = { SkillIndex = 165, CreatedItemEntry = 4247 },
		[3765] = { RecipeItemEntry = 7360, SkillIndex = 165, CreatedItemEntry = 4248 },
		[3766] = { SkillIndex = 165, CreatedItemEntry = 4249 },
		[3767] = { RecipeItemEntry = 4294, SkillIndex = 165, CreatedItemEntry = 4250 },
		[3768] = { SkillIndex = 165, CreatedItemEntry = 4251 },
		[3769] = { RecipeItemEntry = 4296, SkillIndex = 165, CreatedItemEntry = 4252 },
		[3770] = { SkillIndex = 165, CreatedItemEntry = 4253 },
		[3771] = { RecipeItemEntry = 4297, SkillIndex = 165, CreatedItemEntry = 4254 },
		[3772] = { RecipeItemEntry = 7613, SkillIndex = 165, CreatedItemEntry = 4255 },
		[3773] = { RecipeItemEntry = 4299, SkillIndex = 165, CreatedItemEntry = 4256 },
		[3774] = { SkillIndex = 165, CreatedItemEntry = 4257 },
		[3775] = { RecipeItemEntry = 4298, SkillIndex = 165, CreatedItemEntry = 4258 },
		[3776] = { SkillIndex = 165, CreatedItemEntry = 4259 },
		[3777] = { RecipeItemEntry = 4300, SkillIndex = 165, CreatedItemEntry = 4260 },
		[3778] = { RecipeItemEntry = 14635, SkillIndex = 165, CreatedItemEntry = 4262 },
		[3779] = { RecipeItemEntry = 4301, SkillIndex = 165, CreatedItemEntry = 4264 },
		[3780] = { SkillIndex = 165, CreatedItemEntry = 4265 },
		[3816] = { SkillIndex = 165, CreatedItemEntry = 4231 },
		[3817] = { SkillIndex = 165, CreatedItemEntry = 4233 },
		[3818] = { SkillIndex = 165, CreatedItemEntry = 4236 },
		[4096] = { RecipeItemEntry = 13287, SkillIndex = 165, CreatedItemEntry = 4455 },
		[4097] = { RecipeItemEntry = 13288, SkillIndex = 165, CreatedItemEntry = 4456 },
		[5244] = { RecipeItemEntry = 5083, SkillIndex = 165, CreatedItemEntry = 5081 },
		[6661] = { SkillIndex = 165, CreatedItemEntry = 5739 },
		[6702] = { RecipeItemEntry = 5786, SkillIndex = 165, CreatedItemEntry = 5780 },
		[6703] = { RecipeItemEntry = 5787, SkillIndex = 165, CreatedItemEntry = 5781 },
		[6704] = { RecipeItemEntry = 5788, SkillIndex = 165, CreatedItemEntry = 5782 },
		[6705] = { RecipeItemEntry = 5789, SkillIndex = 165, CreatedItemEntry = 5783 },
		[7126] = { SkillIndex = 165, CreatedItemEntry = 5957 },
		[7133] = { RecipeItemEntry = 5972, SkillIndex = 165, CreatedItemEntry = 5958 },
		[7135] = { SkillIndex = 165, CreatedItemEntry = 5961 },
		[7147] = { SkillIndex = 165, CreatedItemEntry = 5962 },
		[7149] = { RecipeItemEntry = 5973, SkillIndex = 165, CreatedItemEntry = 5963 },
		[7151] = { SkillIndex = 165, CreatedItemEntry = 5964 },
		[7153] = { RecipeItemEntry = 5974, SkillIndex = 165, CreatedItemEntry = 5965 },
		[7156] = { SkillIndex = 165, CreatedItemEntry = 5966 },
		[7953] = { RecipeItemEntry = 6474, SkillIndex = 165, CreatedItemEntry = 6466 },
		[7954] = { RecipeItemEntry = 6475, SkillIndex = 165, CreatedItemEntry = 6467 },
		[7955] = { RecipeItemEntry = 6476, SkillIndex = 165, CreatedItemEntry = 6468 },
		[8322] = { RecipeItemEntry = 6710, SkillIndex = 165, CreatedItemEntry = 6709 },
		[9058] = { SkillIndex = 165, CreatedItemEntry = 7276 },
		[9059] = { SkillIndex = 165, CreatedItemEntry = 7277 },
		[9060] = { SkillIndex = 165, CreatedItemEntry = 7278 },
		[9062] = { SkillIndex = 165, CreatedItemEntry = 7279 },
		[9064] = { RecipeItemEntry = 7288, SkillIndex = 165, CreatedItemEntry = 7280 },
		[9065] = { SkillIndex = 165, CreatedItemEntry = 7281 },
		[9068] = { SkillIndex = 165, CreatedItemEntry = 7282 },
		[9070] = { RecipeItemEntry = 7289, SkillIndex = 165, CreatedItemEntry = 7283 },
		[9072] = { RecipeItemEntry = 7290, SkillIndex = 165, CreatedItemEntry = 7284 },
		[9074] = { SkillIndex = 165, CreatedItemEntry = 7285 },
		[9145] = { SkillIndex = 165, CreatedItemEntry = 7348 },
		[9146] = { RecipeItemEntry = 7361, SkillIndex = 165, CreatedItemEntry = 7349 },
		[9147] = { RecipeItemEntry = 7362, SkillIndex = 165, CreatedItemEntry = 7352 },
		[9148] = { RecipeItemEntry = 7363, SkillIndex = 165, CreatedItemEntry = 7358 },
		[9149] = { RecipeItemEntry = 7364, SkillIndex = 165, CreatedItemEntry = 7359 },
		[9193] = { SkillIndex = 165, CreatedItemEntry = 7371 },
		[9194] = { SkillIndex = 165, CreatedItemEntry = 7372 },
		[9195] = { RecipeItemEntry = 7449, SkillIndex = 165, CreatedItemEntry = 7373 },
		[9196] = { SkillIndex = 165, CreatedItemEntry = 7374 },
		[9197] = { RecipeItemEntry = 7450, SkillIndex = 165, CreatedItemEntry = 7375 },
		[9198] = { SkillIndex = 165, CreatedItemEntry = 7377 },
		[9201] = { SkillIndex = 165, CreatedItemEntry = 7378 },
		[9202] = { RecipeItemEntry = 7451, SkillIndex = 165, CreatedItemEntry = 7386 },
		[9206] = { SkillIndex = 165, CreatedItemEntry = 7387 },
		[9207] = { RecipeItemEntry = 7452, SkillIndex = 165, CreatedItemEntry = 7390 },
		[9208] = { RecipeItemEntry = 7453, SkillIndex = 165, CreatedItemEntry = 7391 },
		[10482] = { SkillIndex = 165, CreatedItemEntry = 8172 },
		[10487] = { SkillIndex = 165, CreatedItemEntry = 8173 },
		[10490] = { RecipeItemEntry = 8384, SkillIndex = 165, CreatedItemEntry = 8174 },
		[10499] = { SkillIndex = 165, CreatedItemEntry = 8175 },
		[10507] = { SkillIndex = 165, CreatedItemEntry = 8176 },
		[10509] = { RecipeItemEntry = 8385, SkillIndex = 165, CreatedItemEntry = 8187 },
		[10511] = { SkillIndex = 165, CreatedItemEntry = 8189 },
		[10516] = { RecipeItemEntry = 8409, SkillIndex = 165, CreatedItemEntry = 8192 },
		[10518] = { SkillIndex = 165, CreatedItemEntry = 8198 },
		[10520] = { RecipeItemEntry = 8386, SkillIndex = 165, CreatedItemEntry = 8200 },
		[10525] = { RecipeItemEntry = 8395, SkillIndex = 165, CreatedItemEntry = 8203 },
		[10529] = { RecipeItemEntry = 8403, SkillIndex = 165, CreatedItemEntry = 8210 },
		[10531] = { RecipeItemEntry = 8387, SkillIndex = 165, CreatedItemEntry = 8201 },
		[10533] = { RecipeItemEntry = 8397, SkillIndex = 165, CreatedItemEntry = 8205 },
		[10542] = { RecipeItemEntry = 8398, SkillIndex = 165, CreatedItemEntry = 8204 },
		[10544] = { RecipeItemEntry = 8404, SkillIndex = 165, CreatedItemEntry = 8211 },
		[10546] = { RecipeItemEntry = 8405, SkillIndex = 165, CreatedItemEntry = 8214 },
		[10548] = { SkillIndex = 165, CreatedItemEntry = 8193 },
		[10550] = { SkillIndex = 165, CreatedItemEntry = 8195 },
		[10552] = { SkillIndex = 165, CreatedItemEntry = 8191 },
		[10554] = { RecipeItemEntry = 8399, SkillIndex = 165, CreatedItemEntry = 8209 },
		[10556] = { SkillIndex = 165, CreatedItemEntry = 8185 },
		[10558] = { SkillIndex = 165, CreatedItemEntry = 8197 },
		[10560] = { RecipeItemEntry = 8389, SkillIndex = 165, CreatedItemEntry = 8202 },
		[10562] = { RecipeItemEntry = 8390, SkillIndex = 165, CreatedItemEntry = 8216 },
		[10564] = { RecipeItemEntry = 8400, SkillIndex = 165, CreatedItemEntry = 8207 },
		[10566] = { RecipeItemEntry = 8406, SkillIndex = 165, CreatedItemEntry = 8213 },
		[10568] = { RecipeItemEntry = 8401, SkillIndex = 165, CreatedItemEntry = 8206 },
		[10570] = { RecipeItemEntry = 8402, SkillIndex = 165, CreatedItemEntry = 8208 },
		[10572] = { RecipeItemEntry = 8407, SkillIndex = 165, CreatedItemEntry = 8212 },
		[10574] = { RecipeItemEntry = 8408, SkillIndex = 165, CreatedItemEntry = 8215 },
		[10619] = { SkillIndex = 165, CreatedItemEntry = 8347 },
		[10621] = { SkillIndex = 165, CreatedItemEntry = 8345 },
		[10630] = { SkillIndex = 165, CreatedItemEntry = 8346 },
		[10632] = { SkillIndex = 165, CreatedItemEntry = 8348 },
		[10647] = { SkillIndex = 165, CreatedItemEntry = 8349 },
		[10650] = { SkillIndex = 165, CreatedItemEntry = 8367 },
		[14930] = { SkillIndex = 165, CreatedItemEntry = 8217 },
		[14932] = { SkillIndex = 165, CreatedItemEntry = 8218 },
		[19047] = { SkillIndex = 165, CreatedItemEntry = 15407 },
		[19048] = { RecipeItemEntry = 15724, SkillIndex = 165, CreatedItemEntry = 15077 },
		[19049] = { RecipeItemEntry = 15725, SkillIndex = 165, CreatedItemEntry = 15083 },
		[19050] = { RecipeItemEntry = 15726, SkillIndex = 165, CreatedItemEntry = 15045 },
		[19051] = { RecipeItemEntry = 15727, SkillIndex = 165, CreatedItemEntry = 15076 },
		[19052] = { RecipeItemEntry = 15728, SkillIndex = 165, CreatedItemEntry = 15084 },
		[19053] = { RecipeItemEntry = 15729, SkillIndex = 165, CreatedItemEntry = 15074 },
		[19054] = { RecipeItemEntry = 15730, SkillIndex = 165, CreatedItemEntry = 15047 },
		[19055] = { RecipeItemEntry = 15731, SkillIndex = 165, CreatedItemEntry = 15091 },
		[19058] = { SkillIndex = 165, CreatedItemEntry = 15564 },
		[19059] = { RecipeItemEntry = 15732, SkillIndex = 165, CreatedItemEntry = 15054 },
		[19060] = { RecipeItemEntry = 15733, SkillIndex = 165, CreatedItemEntry = 15046 },
		[19061] = { RecipeItemEntry = 15734, SkillIndex = 165, CreatedItemEntry = 15061 },
		[19062] = { RecipeItemEntry = 15735, SkillIndex = 165, CreatedItemEntry = 15067 },
		[19063] = { RecipeItemEntry = 15737, SkillIndex = 165, CreatedItemEntry = 15073 },
		[19064] = { RecipeItemEntry = 15738, SkillIndex = 165, CreatedItemEntry = 15078 },
		[19065] = { RecipeItemEntry = 15739, SkillIndex = 165, CreatedItemEntry = 15092 },
		[19066] = { RecipeItemEntry = 15740, SkillIndex = 165, CreatedItemEntry = 15071 },
		[19067] = { RecipeItemEntry = 15741, SkillIndex = 165, CreatedItemEntry = 15057 },
		[19068] = { RecipeItemEntry = 15742, SkillIndex = 165, CreatedItemEntry = 15064 },
		[19070] = { RecipeItemEntry = 15743, SkillIndex = 165, CreatedItemEntry = 15082 },
		[19071] = { RecipeItemEntry = 15744, SkillIndex = 165, CreatedItemEntry = 15086 },
		[19072] = { RecipeItemEntry = 15745, SkillIndex = 165, CreatedItemEntry = 15093 },
		[19073] = { RecipeItemEntry = 15746, SkillIndex = 165, CreatedItemEntry = 15072 },
		[19074] = { RecipeItemEntry = 15747, SkillIndex = 165, CreatedItemEntry = 15069 },
		[19075] = { RecipeItemEntry = 15748, SkillIndex = 165, CreatedItemEntry = 15079 },
		[19076] = { RecipeItemEntry = 15749, SkillIndex = 165, CreatedItemEntry = 15053 },
		[19077] = { RecipeItemEntry = 15751, SkillIndex = 165, CreatedItemEntry = 15048 },
		[19078] = { RecipeItemEntry = 15752, SkillIndex = 165, CreatedItemEntry = 15060 },
		[19079] = { RecipeItemEntry = 15753, SkillIndex = 165, CreatedItemEntry = 15056 },
		[19080] = { RecipeItemEntry = 15754, SkillIndex = 165, CreatedItemEntry = 15065 },
		[19081] = { RecipeItemEntry = 15755, SkillIndex = 165, CreatedItemEntry = 15075 },
		[19082] = { RecipeItemEntry = 15756, SkillIndex = 165, CreatedItemEntry = 15094 },
		[19083] = { RecipeItemEntry = 15757, SkillIndex = 165, CreatedItemEntry = 15087 },
		[19084] = { RecipeItemEntry = 15758, SkillIndex = 165, CreatedItemEntry = 15063 },
		[19085] = { RecipeItemEntry = 15759, SkillIndex = 165, CreatedItemEntry = 15050 },
		[19086] = { RecipeItemEntry = 15760, SkillIndex = 165, CreatedItemEntry = 15066 },
		[19087] = { RecipeItemEntry = 15761, SkillIndex = 165, CreatedItemEntry = 15070 },
		[19088] = { RecipeItemEntry = 15762, SkillIndex = 165, CreatedItemEntry = 15080 },
		[19089] = { RecipeItemEntry = 15763, SkillIndex = 165, CreatedItemEntry = 15049 },
		[19090] = { RecipeItemEntry = 15764, SkillIndex = 165, CreatedItemEntry = 15058 },
		[19091] = { RecipeItemEntry = 15765, SkillIndex = 165, CreatedItemEntry = 15095 },
		[19092] = { RecipeItemEntry = 15768, SkillIndex = 165, CreatedItemEntry = 15088 },
		[19093] = { SkillIndex = 165, CreatedItemEntry = 15138 },
		[19094] = { RecipeItemEntry = 15770, SkillIndex = 165, CreatedItemEntry = 15051 },
		[19095] = { RecipeItemEntry = 15771, SkillIndex = 165, CreatedItemEntry = 15059 },
		[19097] = { RecipeItemEntry = 15772, SkillIndex = 165, CreatedItemEntry = 15062 },
		[19098] = { RecipeItemEntry = 15773, SkillIndex = 165, CreatedItemEntry = 15085 },
		[19100] = { RecipeItemEntry = 15774, SkillIndex = 165, CreatedItemEntry = 15081 },
		[19101] = { RecipeItemEntry = 15775, SkillIndex = 165, CreatedItemEntry = 15055 },
		[19102] = { RecipeItemEntry = 15776, SkillIndex = 165, CreatedItemEntry = 15090 },
		[19103] = { RecipeItemEntry = 15777, SkillIndex = 165, CreatedItemEntry = 15096 },
		[19104] = { RecipeItemEntry = 15779, SkillIndex = 165, CreatedItemEntry = 15068 },
		[19106] = { RecipeItemEntry = 15780, SkillIndex = 165, CreatedItemEntry = 15141 },
		[19107] = { RecipeItemEntry = 15781, SkillIndex = 165, CreatedItemEntry = 15052 },
		[20648] = { SkillIndex = 165, CreatedItemEntry = 2319 },
		[20649] = { SkillIndex = 165, CreatedItemEntry = 4234 },
		[20650] = { SkillIndex = 165, CreatedItemEntry = 4304 },
		[20853] = { RecipeItemEntry = 17022, SkillIndex = 165, CreatedItemEntry = 16982 },
		[20854] = { RecipeItemEntry = 17023, SkillIndex = 165, CreatedItemEntry = 16983 },
		[20855] = { RecipeItemEntry = 17025, SkillIndex = 165, CreatedItemEntry = 16984 },
		[21943] = { RecipeItemEntry = 17722, SkillIndex = 165, CreatedItemEntry = 17721 },
		[22331] = { SkillIndex = 165, CreatedItemEntry = 8170 },
		[22711] = { RecipeItemEntry = 18239, SkillIndex = 165, CreatedItemEntry = 18238 },
		[22727] = { RecipeItemEntry = 18252, SkillIndex = 165, CreatedItemEntry = 18251 },
		[22815] = { SkillIndex = 165, CreatedItemEntry = 18258 },
		[22921] = { RecipeItemEntry = 18514, SkillIndex = 165, CreatedItemEntry = 18504 },
		[22922] = { RecipeItemEntry = 18515, SkillIndex = 165, CreatedItemEntry = 18506 },
		[22923] = { RecipeItemEntry = 18516, SkillIndex = 165, CreatedItemEntry = 18508 },
		[22926] = { RecipeItemEntry = 18517, SkillIndex = 165, CreatedItemEntry = 18509 },
		[22927] = { RecipeItemEntry = 18518, SkillIndex = 165, CreatedItemEntry = 18510 },
		[22928] = { RecipeItemEntry = 18519, SkillIndex = 165, CreatedItemEntry = 18511 },
		[23190] = { RecipeItemEntry = 18731, SkillIndex = 165, CreatedItemEntry = 18662 },
		[23399] = { RecipeItemEntry = 18949, SkillIndex = 165, CreatedItemEntry = 18948 },
		[23703] = { RecipeItemEntry = 19326, SkillIndex = 165, CreatedItemEntry = 19044 },
		[23704] = { RecipeItemEntry = 19327, SkillIndex = 165, CreatedItemEntry = 19049 },
		[23705] = { RecipeItemEntry = 19328, SkillIndex = 165, CreatedItemEntry = 19052 },
		[23706] = { RecipeItemEntry = 19329, SkillIndex = 165, CreatedItemEntry = 19058 },
		[23707] = { RecipeItemEntry = 19330, SkillIndex = 165, CreatedItemEntry = 19149 },
		[23708] = { RecipeItemEntry = 19331, SkillIndex = 165, CreatedItemEntry = 19157 },
		[23709] = { RecipeItemEntry = 19332, SkillIndex = 165, CreatedItemEntry = 19162 },
		[23710] = { RecipeItemEntry = 19333, SkillIndex = 165, CreatedItemEntry = 19163 },
		[24121] = { RecipeItemEntry = 19769, SkillIndex = 165, CreatedItemEntry = 19685 },
		[24122] = { RecipeItemEntry = 19770, SkillIndex = 165, CreatedItemEntry = 19686 },
		[24123] = { RecipeItemEntry = 19771, SkillIndex = 165, CreatedItemEntry = 19687 },
		[24124] = { RecipeItemEntry = 19772, SkillIndex = 165, CreatedItemEntry = 19688 },
		[24125] = { RecipeItemEntry = 19773, SkillIndex = 165, CreatedItemEntry = 19689 },
		[24654] = { SkillIndex = 165, CreatedItemEntry = 20295 },
		[24655] = { SkillIndex = 165, CreatedItemEntry = 20296 },
		[24703] = { RecipeItemEntry = 20382, SkillIndex = 165, CreatedItemEntry = 20380 },
		[24846] = { RecipeItemEntry = 20506, SkillIndex = 165, CreatedItemEntry = 20481 },
		[24847] = { RecipeItemEntry = 20507, SkillIndex = 165, CreatedItemEntry = 20480 },
		[24848] = { RecipeItemEntry = 20508, SkillIndex = 165, CreatedItemEntry = 20479 },
		[24849] = { RecipeItemEntry = 20509, SkillIndex = 165, CreatedItemEntry = 20476 },
		[24850] = { RecipeItemEntry = 20510, SkillIndex = 165, CreatedItemEntry = 20477 },
		[24851] = { RecipeItemEntry = 20511, SkillIndex = 165, CreatedItemEntry = 20478 },
		[24940] = { RecipeItemEntry = 20576, SkillIndex = 165, CreatedItemEntry = 20575 },
		[26279] = { RecipeItemEntry = 21548, SkillIndex = 165, CreatedItemEntry = 21278 },
		[28219] = { SkillIndex = 165, CreatedItemEntry = 22661 },
		[28220] = { SkillIndex = 165, CreatedItemEntry = 22662 },
		[28221] = { SkillIndex = 165, CreatedItemEntry = 22663 },
		[28222] = { SkillIndex = 165, CreatedItemEntry = 22664 },
		[28223] = { SkillIndex = 165, CreatedItemEntry = 22666 },
		[28224] = { SkillIndex = 165, CreatedItemEntry = 22665 },
		[28472] = { RecipeItemEntry = 22771, SkillIndex = 165, CreatedItemEntry = 22759 },
		[28473] = { RecipeItemEntry = 22770, SkillIndex = 165, CreatedItemEntry = 22760 },
		[28474] = { RecipeItemEntry = 22769, SkillIndex = 165, CreatedItemEntry = 22761 },
		[32454] = { SkillIndex = 165, CreatedItemEntry = 21887 },
		[32455] = { RecipeItemEntry = 25720, SkillIndex = 165, CreatedItemEntry = 23793 },
		[32456] = { SkillIndex = 165, CreatedItemEntry = 25650 },
		[32457] = { RecipeItemEntry = 25721, SkillIndex = 165, CreatedItemEntry = 25651 },
		[32458] = { RecipeItemEntry = 25722, SkillIndex = 165, CreatedItemEntry = 25652 },
		[32461] = { RecipeItemEntry = 25725, SkillIndex = 165, CreatedItemEntry = 25653 },
		[32462] = { SkillIndex = 165, CreatedItemEntry = 25654 },
		[32463] = { SkillIndex = 165, CreatedItemEntry = 25655 },
		[32464] = { SkillIndex = 165, CreatedItemEntry = 25656 },
		[32465] = { SkillIndex = 165, CreatedItemEntry = 25657 },
		[32466] = { SkillIndex = 165, CreatedItemEntry = 25662 },
		[32467] = { SkillIndex = 165, CreatedItemEntry = 25661 },
		[32468] = { SkillIndex = 165, CreatedItemEntry = 25660 },
		[32469] = { SkillIndex = 165, CreatedItemEntry = 25659 },
		[32470] = { SkillIndex = 165, CreatedItemEntry = 25669 },
		[32471] = { SkillIndex = 165, CreatedItemEntry = 25670 },
		[32472] = { SkillIndex = 165, CreatedItemEntry = 25668 },
		[32473] = { SkillIndex = 165, CreatedItemEntry = 25671 },
		[32478] = { SkillIndex = 165, CreatedItemEntry = 25673 },
		[32479] = { SkillIndex = 165, CreatedItemEntry = 25674 },
		[32480] = { SkillIndex = 165, CreatedItemEntry = 25675 },
		[32481] = { SkillIndex = 165, CreatedItemEntry = 25676 },
		[32482] = { RecipeItemEntry = 25726, SkillIndex = 165, CreatedItemEntry = 25679 },
		[32485] = { RecipeItemEntry = 25728, SkillIndex = 165, CreatedItemEntry = 25680 },
		[32487] = { RecipeItemEntry = 25729, SkillIndex = 165, CreatedItemEntry = 25681 },
		[32488] = { RecipeItemEntry = 25731, SkillIndex = 165, CreatedItemEntry = 25683 },
		[32489] = { RecipeItemEntry = 25730, SkillIndex = 165, CreatedItemEntry = 25682 },
		[32490] = { RecipeItemEntry = 25732, SkillIndex = 165, CreatedItemEntry = 25685 },
		[32493] = { RecipeItemEntry = 25733, SkillIndex = 165, CreatedItemEntry = 25686 },
		[32494] = { RecipeItemEntry = 25734, SkillIndex = 165, CreatedItemEntry = 25687 },
		[32495] = { RecipeItemEntry = 25735, SkillIndex = 165, CreatedItemEntry = 25689 },
		[32496] = { RecipeItemEntry = 25736, SkillIndex = 165, CreatedItemEntry = 25690 },
		[32497] = { RecipeItemEntry = 25737, SkillIndex = 165, CreatedItemEntry = 25691 },
		[32498] = { RecipeItemEntry = 25738, SkillIndex = 165, CreatedItemEntry = 25695 },
		[32499] = { RecipeItemEntry = 25739, SkillIndex = 165, CreatedItemEntry = 25697 },
		[32500] = { RecipeItemEntry = 25740, SkillIndex = 165, CreatedItemEntry = 25696 },
		[32501] = { RecipeItemEntry = 25741, SkillIndex = 165, CreatedItemEntry = 25694 },
		[32502] = { RecipeItemEntry = 25742, SkillIndex = 165, CreatedItemEntry = 25692 },
		[32503] = { RecipeItemEntry = 25743, SkillIndex = 165, CreatedItemEntry = 25693 },
		[35520] = { RecipeItemEntry = 29669, SkillIndex = 165, CreatedItemEntry = 29483 },
		[35521] = { RecipeItemEntry = 29672, SkillIndex = 165, CreatedItemEntry = 29485 },
		[35522] = { RecipeItemEntry = 29673, SkillIndex = 165, CreatedItemEntry = 29486 },
		[35523] = { RecipeItemEntry = 29674, SkillIndex = 165, CreatedItemEntry = 29487 },
		[35524] = { RecipeItemEntry = 29675, SkillIndex = 165, CreatedItemEntry = 29488 },
		[35525] = { RecipeItemEntry = 29677, SkillIndex = 165, CreatedItemEntry = 29489 },
		[35526] = { RecipeItemEntry = 29682, SkillIndex = 165, CreatedItemEntry = 29490 },
		[35527] = { RecipeItemEntry = 29684, SkillIndex = 165, CreatedItemEntry = 29491 },
		[35528] = { RecipeItemEntry = 29691, SkillIndex = 165, CreatedItemEntry = 29493 },
		[35529] = { RecipeItemEntry = 29689, SkillIndex = 165, CreatedItemEntry = 29492 },
		[35530] = { RecipeItemEntry = 29664, SkillIndex = 165, CreatedItemEntry = 29540 },
		[35531] = { RecipeItemEntry = 29693, SkillIndex = 165, CreatedItemEntry = 29494 },
		[35532] = { RecipeItemEntry = 29698, SkillIndex = 165, CreatedItemEntry = 29495 },
		[35533] = { RecipeItemEntry = 29700, SkillIndex = 165, CreatedItemEntry = 29496 },
		[35534] = { RecipeItemEntry = 29701, SkillIndex = 165, CreatedItemEntry = 29497 },
		[35535] = { RecipeItemEntry = 29702, SkillIndex = 165, CreatedItemEntry = 29498 },
		[35536] = { RecipeItemEntry = 29703, SkillIndex = 165, CreatedItemEntry = 29499 },
		[35537] = { RecipeItemEntry = 29704, SkillIndex = 165, CreatedItemEntry = 29500 },
		[35538] = { RecipeItemEntry = 29713, SkillIndex = 165, CreatedItemEntry = 29532 },
		[35539] = { RecipeItemEntry = 29714, SkillIndex = 165, CreatedItemEntry = 29531 },
		[35540] = { SkillIndex = 165, CreatedItemEntry = 29528 },
		[35543] = { RecipeItemEntry = 29717, SkillIndex = 165, CreatedItemEntry = 29529 },
		[35544] = { RecipeItemEntry = 29718, SkillIndex = 165, CreatedItemEntry = 29530 },
		[35549] = { RecipeItemEntry = 29719, SkillIndex = 165, CreatedItemEntry = 29533 },
		[35554] = { RecipeItemEntry = 29722, SkillIndex = 165, CreatedItemEntry = 29535 },
		[35555] = { RecipeItemEntry = 29720, SkillIndex = 165, CreatedItemEntry = 29534 },
		[35557] = { RecipeItemEntry = 29721, SkillIndex = 165, CreatedItemEntry = 29536 },
		[35558] = { RecipeItemEntry = 29723, SkillIndex = 165, CreatedItemEntry = 29502 },
		[35559] = { RecipeItemEntry = 29724, SkillIndex = 165, CreatedItemEntry = 29503 },
		[35560] = { RecipeItemEntry = 29725, SkillIndex = 165, CreatedItemEntry = 29504 },
		[35561] = { RecipeItemEntry = 29726, SkillIndex = 165, CreatedItemEntry = 29505 },
		[35562] = { RecipeItemEntry = 29727, SkillIndex = 165, CreatedItemEntry = 29506 },
		[35563] = { RecipeItemEntry = 29728, SkillIndex = 165, CreatedItemEntry = 29507 },
		[35564] = { RecipeItemEntry = 29729, SkillIndex = 165, CreatedItemEntry = 29508 },
		[35567] = { RecipeItemEntry = 29730, SkillIndex = 165, CreatedItemEntry = 29512 },
		[35568] = { RecipeItemEntry = 29731, SkillIndex = 165, CreatedItemEntry = 29509 },
		[35572] = { RecipeItemEntry = 29732, SkillIndex = 165, CreatedItemEntry = 29510 },
		[35573] = { RecipeItemEntry = 29733, SkillIndex = 165, CreatedItemEntry = 29511 },
		[35574] = { RecipeItemEntry = 29734, SkillIndex = 165, CreatedItemEntry = 29514 },
		[35575] = { SkillIndex = 165, CreatedItemEntry = 29515 },
		[35576] = { SkillIndex = 165, CreatedItemEntry = 29516 },
		[35577] = { SkillIndex = 165, CreatedItemEntry = 29517 },
		[35580] = { SkillIndex = 165, CreatedItemEntry = 29519 },
		[35582] = { SkillIndex = 165, CreatedItemEntry = 29520 },
		[35584] = { SkillIndex = 165, CreatedItemEntry = 29521 },
		[35585] = { SkillIndex = 165, CreatedItemEntry = 29522 },
		[35587] = { SkillIndex = 165, CreatedItemEntry = 29524 },
		[35588] = { SkillIndex = 165, CreatedItemEntry = 29523 },
		[35589] = { SkillIndex = 165, CreatedItemEntry = 29525 },
		[35590] = { SkillIndex = 165, CreatedItemEntry = 29526 },
		[35591] = { SkillIndex = 165, CreatedItemEntry = 29527 },
		[36074] = { SkillIndex = 165, CreatedItemEntry = 29964 },
		[36075] = { SkillIndex = 165, CreatedItemEntry = 29970 },
		[36076] = { SkillIndex = 165, CreatedItemEntry = 29971 },
		[36077] = { SkillIndex = 165, CreatedItemEntry = 29973 },
		[36078] = { SkillIndex = 165, CreatedItemEntry = 29974 },
		[36079] = { SkillIndex = 165, CreatedItemEntry = 29975 },
		[36349] = { RecipeItemEntry = 30301, SkillIndex = 165, CreatedItemEntry = 30042 },
		[36351] = { RecipeItemEntry = 30302, SkillIndex = 165, CreatedItemEntry = 30040 },
		[36352] = { RecipeItemEntry = 30303, SkillIndex = 165, CreatedItemEntry = 30046 },
		[36353] = { RecipeItemEntry = 30304, SkillIndex = 165, CreatedItemEntry = 30044 },
		[36355] = { RecipeItemEntry = 30305, SkillIndex = 165, CreatedItemEntry = 30041 },
		[36357] = { RecipeItemEntry = 30306, SkillIndex = 165, CreatedItemEntry = 30039 },
		[36358] = { RecipeItemEntry = 30307, SkillIndex = 165, CreatedItemEntry = 30045 },
		[36359] = { RecipeItemEntry = 30308, SkillIndex = 165, CreatedItemEntry = 30043 },
		[39997] = { RecipeItemEntry = 32429, SkillIndex = 165, CreatedItemEntry = 32398 },
		[40001] = { RecipeItemEntry = 32431, SkillIndex = 165, CreatedItemEntry = 32400 },
		[40002] = { RecipeItemEntry = 32432, SkillIndex = 165, CreatedItemEntry = 32397 },
		[40003] = { RecipeItemEntry = 32433, SkillIndex = 165, CreatedItemEntry = 32394 },
		[40004] = { RecipeItemEntry = 32434, SkillIndex = 165, CreatedItemEntry = 32395 },
		[40005] = { RecipeItemEntry = 32435, SkillIndex = 165, CreatedItemEntry = 32396 },
		[40006] = { RecipeItemEntry = 32436, SkillIndex = 165, CreatedItemEntry = 32393 },
		[41156] = { RecipeItemEntry = 32744, SkillIndex = 165, CreatedItemEntry = 32582 },
		[41157] = { RecipeItemEntry = 32745, SkillIndex = 165, CreatedItemEntry = 32583 },
		[41158] = { RecipeItemEntry = 32746, SkillIndex = 165, CreatedItemEntry = 32580 },
		[41160] = { RecipeItemEntry = 32747, SkillIndex = 165, CreatedItemEntry = 32581 },
		[41161] = { RecipeItemEntry = 32748, SkillIndex = 165, CreatedItemEntry = 32574 },
		[41162] = { RecipeItemEntry = 32749, SkillIndex = 165, CreatedItemEntry = 32575 },
		[41163] = { RecipeItemEntry = 32750, SkillIndex = 165, CreatedItemEntry = 32577 },
		[41164] = { RecipeItemEntry = 32751, SkillIndex = 165, CreatedItemEntry = 32579 },
		[42546] = { RecipeItemEntry = 33124, SkillIndex = 165, CreatedItemEntry = 33122 },
		[42731] = { RecipeItemEntry = 33205, SkillIndex = 165, CreatedItemEntry = 33204 },
		[44343] = { SkillIndex = 165, CreatedItemEntry = 34099 },
		[44344] = { SkillIndex = 165, CreatedItemEntry = 34100 },
		[44359] = { RecipeItemEntry = 34200, SkillIndex = 165, CreatedItemEntry = 34105 },
		[44768] = { RecipeItemEntry = 34201, SkillIndex = 165, CreatedItemEntry = 34106 },
		[44770] = { SkillIndex = 165, CreatedItemEntry = 34207 },
		[44953] = { RecipeItemEntry = 34262, SkillIndex = 165, CreatedItemEntry = 34086 },
		[44970] = { SkillIndex = 165, CreatedItemEntry = 34330 },
		[45100] = { SkillIndex = 165, CreatedItemEntry = 34482 },
		[45117] = { RecipeItemEntry = 34491, SkillIndex = 165, CreatedItemEntry = 34490 },
		[46132] = { RecipeItemEntry = 35212, SkillIndex = 165, CreatedItemEntry = 34372 },
		[46133] = { RecipeItemEntry = 35213, SkillIndex = 165, CreatedItemEntry = 34374 },
		[46134] = { RecipeItemEntry = 35214, SkillIndex = 165, CreatedItemEntry = 34370 },
		[46135] = { RecipeItemEntry = 35215, SkillIndex = 165, CreatedItemEntry = 34376 },
		[46136] = { RecipeItemEntry = 35216, SkillIndex = 165, CreatedItemEntry = 34371 },
		[46137] = { RecipeItemEntry = 35217, SkillIndex = 165, CreatedItemEntry = 34373 },
		[46138] = { RecipeItemEntry = 35218, SkillIndex = 165, CreatedItemEntry = 34369 },
		[46139] = { RecipeItemEntry = 35219, SkillIndex = 165, CreatedItemEntry = 34375 },
		[50936] = { SkillIndex = 165, CreatedItemEntry = 38425 },
		[50938] = { SkillIndex = 165, CreatedItemEntry = 38408 },
		[50939] = { SkillIndex = 165, CreatedItemEntry = 38410 },
		[50940] = { SkillIndex = 165, CreatedItemEntry = 38411 },
		[50941] = { SkillIndex = 165, CreatedItemEntry = 38409 },
		[50942] = { SkillIndex = 165, CreatedItemEntry = 38407 },
		[50943] = { SkillIndex = 165, CreatedItemEntry = 38406 },
		[50944] = { SkillIndex = 165, CreatedItemEntry = 38400 },
		[50945] = { SkillIndex = 165, CreatedItemEntry = 38401 },
		[50946] = { SkillIndex = 165, CreatedItemEntry = 38402 },
		[50947] = { SkillIndex = 165, CreatedItemEntry = 38403 },
		[50948] = { SkillIndex = 165, CreatedItemEntry = 38404 },
		[50949] = { SkillIndex = 165, CreatedItemEntry = 38405 },
		[50950] = { SkillIndex = 165, CreatedItemEntry = 38414 },
		[50951] = { SkillIndex = 165, CreatedItemEntry = 38416 },
		[50952] = { SkillIndex = 165, CreatedItemEntry = 38424 },
		[50953] = { SkillIndex = 165, CreatedItemEntry = 38415 },
		[50954] = { SkillIndex = 165, CreatedItemEntry = 38413 },
		[50955] = { SkillIndex = 165, CreatedItemEntry = 38412 },
		[50956] = { SkillIndex = 165, CreatedItemEntry = 38420 },
		[50957] = { SkillIndex = 165, CreatedItemEntry = 38422 },
		[50958] = { SkillIndex = 165, CreatedItemEntry = 38417 },
		[50959] = { SkillIndex = 165, CreatedItemEntry = 38421 },
		[50960] = { SkillIndex = 165, CreatedItemEntry = 38419 },
		[50961] = { SkillIndex = 165, CreatedItemEntry = 38418 },
		[50962] = { SkillIndex = 165, CreatedItemEntry = 38375 },
		[50963] = { SkillIndex = 165, CreatedItemEntry = 38376 },
		[50964] = { SkillIndex = 165, CreatedItemEntry = 38371 },
		[50965] = { SkillIndex = 165, CreatedItemEntry = 38373 },
		[50966] = { SkillIndex = 165, CreatedItemEntry = 38372 },
		[50967] = { SkillIndex = 165, CreatedItemEntry = 38374 },
		[50970] = { RecipeItemEntry = 44509, SkillIndex = 165, CreatedItemEntry = 38399 },
		[50971] = { RecipeItemEntry = 44510, SkillIndex = 165, CreatedItemEntry = 38347 },
		[51568] = { RecipeItemEntry = 38597, SkillIndex = 165, CreatedItemEntry = 38590 },
		[51569] = { SkillIndex = 165, CreatedItemEntry = 38591 },
		[51570] = { SkillIndex = 165, CreatedItemEntry = 38592 },
		[51571] = { SkillIndex = 165, CreatedItemEntry = 38433 },
		[51572] = { SkillIndex = 165, CreatedItemEntry = 38437 },
		[52733] = { RecipeItemEntry = 32430, SkillIndex = 165, CreatedItemEntry = 32399 },
		[55199] = { SkillIndex = 165, CreatedItemEntry = 41238 },
		[55243] = { SkillIndex = 165, CreatedItemEntry = 41264 },
		[60599] = { SkillIndex = 165, CreatedItemEntry = 38436 },
		[60600] = { SkillIndex = 165, CreatedItemEntry = 38440 },
		[60601] = { SkillIndex = 165, CreatedItemEntry = 44436 },
		[60604] = { SkillIndex = 165, CreatedItemEntry = 44437 },
		[60605] = { SkillIndex = 165, CreatedItemEntry = 44438 },
		[60607] = { SkillIndex = 165, CreatedItemEntry = 38434 },
		[60608] = { SkillIndex = 165, CreatedItemEntry = 38438 },
		[60611] = { SkillIndex = 165, CreatedItemEntry = 44440 },
		[60613] = { SkillIndex = 165, CreatedItemEntry = 44441 },
		[60620] = { SkillIndex = 165, CreatedItemEntry = 44442 },
		[60622] = { SkillIndex = 165, CreatedItemEntry = 38435 },
		[60624] = { SkillIndex = 165, CreatedItemEntry = 38439 },
		[60627] = { SkillIndex = 165, CreatedItemEntry = 44443 },
		[60629] = { SkillIndex = 165, CreatedItemEntry = 44444 },
		[60630] = { SkillIndex = 165, CreatedItemEntry = 44445 },
		[60631] = { SkillIndex = 165, CreatedItemEntry = 38441 },
		[60637] = { SkillIndex = 165, CreatedItemEntry = 43566 },
		[60640] = { SkillIndex = 165, CreatedItemEntry = 43565 },
		[60643] = { SkillIndex = 165, CreatedItemEntry = 44446 },
		[60645] = { RecipeItemEntry = 44511, SkillIndex = 165, CreatedItemEntry = 44447 },
		[60647] = { RecipeItemEntry = 44512, SkillIndex = 165, CreatedItemEntry = 44448 },
		[60649] = { SkillIndex = 165, CreatedItemEntry = 43129 },
		[60651] = { SkillIndex = 165, CreatedItemEntry = 43130 },
		[60652] = { SkillIndex = 165, CreatedItemEntry = 43131 },
		[60655] = { SkillIndex = 165, CreatedItemEntry = 43132 },
		[60658] = { SkillIndex = 165, CreatedItemEntry = 43133 },
		[60660] = { SkillIndex = 165, CreatedItemEntry = 42731 },
		[60665] = { SkillIndex = 165, CreatedItemEntry = 43255 },
		[60666] = { SkillIndex = 165, CreatedItemEntry = 43256 },
		[60669] = { SkillIndex = 165, CreatedItemEntry = 43257 },
		[60671] = { SkillIndex = 165, CreatedItemEntry = 43258 },
		[60697] = { RecipeItemEntry = 44513, SkillIndex = 165, CreatedItemEntry = 43260 },
		[60702] = { RecipeItemEntry = 44514, SkillIndex = 165, CreatedItemEntry = 43433 },
		[60703] = { RecipeItemEntry = 44515, SkillIndex = 165, CreatedItemEntry = 43434 },
		[60704] = { RecipeItemEntry = 44516, SkillIndex = 165, CreatedItemEntry = 43435 },
		[60705] = { RecipeItemEntry = 44517, SkillIndex = 165, CreatedItemEntry = 43436 },
		[60706] = { RecipeItemEntry = 44518, SkillIndex = 165, CreatedItemEntry = 43437 },
		[60711] = { RecipeItemEntry = 44519, SkillIndex = 165, CreatedItemEntry = 43438 },
		[60712] = { RecipeItemEntry = 44520, SkillIndex = 165, CreatedItemEntry = 43439 },
		[60715] = { RecipeItemEntry = 44521, SkillIndex = 165, CreatedItemEntry = 43261 },
		[60716] = { RecipeItemEntry = 44522, SkillIndex = 165, CreatedItemEntry = 43262 },
		[60718] = { RecipeItemEntry = 44523, SkillIndex = 165, CreatedItemEntry = 43263 },
		[60720] = { RecipeItemEntry = 44524, SkillIndex = 165, CreatedItemEntry = 43264 },
		[60721] = { RecipeItemEntry = 44525, SkillIndex = 165, CreatedItemEntry = 43265 },
		[60723] = { RecipeItemEntry = 44526, SkillIndex = 165, CreatedItemEntry = 43266 },
		[60725] = { RecipeItemEntry = 44527, SkillIndex = 165, CreatedItemEntry = 43271 },
		[60727] = { RecipeItemEntry = 44528, SkillIndex = 165, CreatedItemEntry = 43273 },
		[60728] = { RecipeItemEntry = 44530, SkillIndex = 165, CreatedItemEntry = 43447 },
		[60729] = { RecipeItemEntry = 44531, SkillIndex = 165, CreatedItemEntry = 43449 },
		[60730] = { RecipeItemEntry = 44532, SkillIndex = 165, CreatedItemEntry = 43445 },
		[60731] = { RecipeItemEntry = 44533, SkillIndex = 165, CreatedItemEntry = 43444 },
		[60732] = { RecipeItemEntry = 44534, SkillIndex = 165, CreatedItemEntry = 43446 },
		[60734] = { RecipeItemEntry = 44535, SkillIndex = 165, CreatedItemEntry = 43442 },
		[60735] = { RecipeItemEntry = 44536, SkillIndex = 165, CreatedItemEntry = 43448 },
		[60737] = { RecipeItemEntry = 44537, SkillIndex = 165, CreatedItemEntry = 43443 },
		[60743] = { RecipeItemEntry = 44538, SkillIndex = 165, CreatedItemEntry = 43455 },
		[60746] = { RecipeItemEntry = 44539, SkillIndex = 165, CreatedItemEntry = 43457 },
		[60747] = { RecipeItemEntry = 44540, SkillIndex = 165, CreatedItemEntry = 43453 },
		[60748] = { RecipeItemEntry = 44541, SkillIndex = 165, CreatedItemEntry = 43452 },
		[60749] = { RecipeItemEntry = 44542, SkillIndex = 165, CreatedItemEntry = 43454 },
		[60750] = { RecipeItemEntry = 44543, SkillIndex = 165, CreatedItemEntry = 43450 },
		[60751] = { RecipeItemEntry = 44544, SkillIndex = 165, CreatedItemEntry = 43456 },
		[60752] = { RecipeItemEntry = 44545, SkillIndex = 165, CreatedItemEntry = 43451 },
		[60754] = { RecipeItemEntry = 44546, SkillIndex = 165, CreatedItemEntry = 43458 },
		[60755] = { RecipeItemEntry = 44547, SkillIndex = 165, CreatedItemEntry = 43459 },
		[60756] = { RecipeItemEntry = 44548, SkillIndex = 165, CreatedItemEntry = 43461 },
		[60757] = { RecipeItemEntry = 44549, SkillIndex = 165, CreatedItemEntry = 43469 },
		[60758] = { RecipeItemEntry = 44550, SkillIndex = 165, CreatedItemEntry = 43481 },
		[60759] = { RecipeItemEntry = 44551, SkillIndex = 165, CreatedItemEntry = 43484 },
		[60760] = { RecipeItemEntry = 44552, SkillIndex = 165, CreatedItemEntry = 43495 },
		[60761] = { RecipeItemEntry = 44553, SkillIndex = 165, CreatedItemEntry = 43502 },
		[60996] = { RecipeItemEntry = 44584, SkillIndex = 165, CreatedItemEntry = 43590 },
		[60997] = { RecipeItemEntry = 44585, SkillIndex = 165, CreatedItemEntry = 43591 },
		[60998] = { RecipeItemEntry = 44586, SkillIndex = 165, CreatedItemEntry = 43592 },
		[60999] = { RecipeItemEntry = 44587, SkillIndex = 165, CreatedItemEntry = 43593 },
		[61000] = { RecipeItemEntry = 44588, SkillIndex = 165, CreatedItemEntry = 43594 },
		[61002] = { RecipeItemEntry = 44589, SkillIndex = 165, CreatedItemEntry = 43595 },
		[62176] = { RecipeItemEntry = 44932, SkillIndex = 165, CreatedItemEntry = 44930 },
		[62177] = { RecipeItemEntry = 44933, SkillIndex = 165, CreatedItemEntry = 44931 },
		[62448] = { SkillIndex = 165, CreatedItemEntry = 44963 },
		[63194] = { RecipeItemEntry = 45094, SkillIndex = 165, CreatedItemEntry = 45553 },
		[63195] = { RecipeItemEntry = 45095, SkillIndex = 165, CreatedItemEntry = 45562 },
		[63196] = { RecipeItemEntry = 45096, SkillIndex = 165, CreatedItemEntry = 45554 },
		[63197] = { RecipeItemEntry = 45097, SkillIndex = 165, CreatedItemEntry = 45563 },
		[63198] = { RecipeItemEntry = 45098, SkillIndex = 165, CreatedItemEntry = 45555 },
		[63199] = { RecipeItemEntry = 45099, SkillIndex = 165, CreatedItemEntry = 45564 },
		[63200] = { RecipeItemEntry = 45100, SkillIndex = 165, CreatedItemEntry = 45556 },
		[63201] = { RecipeItemEntry = 45101, SkillIndex = 165, CreatedItemEntry = 45565 },
		[64661] = { SkillIndex = 165, CreatedItemEntry = 33568 },
		[67080] = { RecipeItemEntry = 47628, SkillIndex = 165, CreatedItemEntry = 47597 },
		[67081] = { RecipeItemEntry = 47629, SkillIndex = 165, CreatedItemEntry = 47579 },
		[67082] = { RecipeItemEntry = 47630, SkillIndex = 165, CreatedItemEntry = 47595 },
		[67083] = { RecipeItemEntry = 47631, SkillIndex = 165, CreatedItemEntry = 47576 },
		[67084] = { RecipeItemEntry = 47632, SkillIndex = 165, CreatedItemEntry = 47602 },
		[67085] = { RecipeItemEntry = 47633, SkillIndex = 165, CreatedItemEntry = 47583 },
		[67086] = { RecipeItemEntry = 47634, SkillIndex = 165, CreatedItemEntry = 47599 },
		[67087] = { RecipeItemEntry = 47635, SkillIndex = 165, CreatedItemEntry = 47581 },
		[67136] = { RecipeItemEntry = 47650, SkillIndex = 165, CreatedItemEntry = 47598 },
		[67137] = { RecipeItemEntry = 47646, SkillIndex = 165, CreatedItemEntry = 47580 },
		[67138] = { RecipeItemEntry = 47649, SkillIndex = 165, CreatedItemEntry = 47596 },
		[67139] = { RecipeItemEntry = 47647, SkillIndex = 165, CreatedItemEntry = 47582 },
		[67140] = { RecipeItemEntry = 47652, SkillIndex = 165, CreatedItemEntry = 47601 },
		[67141] = { RecipeItemEntry = 47653, SkillIndex = 165, CreatedItemEntry = 47584 },
		[67142] = { RecipeItemEntry = 47651, SkillIndex = 165, CreatedItemEntry = 47600 },
		[67143] = { RecipeItemEntry = 47648, SkillIndex = 165, CreatedItemEntry = 47577 },
		[69386] = { SkillIndex = 165, CreatedItemEntry = 49633 },
		[69388] = { SkillIndex = 165, CreatedItemEntry = 49634 },
		[70554] = { RecipeItemEntry = 49957, SkillIndex = 165, CreatedItemEntry = 49898 },
		[70555] = { RecipeItemEntry = 49958, SkillIndex = 165, CreatedItemEntry = 49894 },
		[70556] = { RecipeItemEntry = 49959, SkillIndex = 165, CreatedItemEntry = 49899 },
		[70557] = { RecipeItemEntry = 49961, SkillIndex = 165, CreatedItemEntry = 49895 },
		[70558] = { RecipeItemEntry = 49962, SkillIndex = 165, CreatedItemEntry = 49900 },
		[70559] = { RecipeItemEntry = 49963, SkillIndex = 165, CreatedItemEntry = 49896 },
		[70560] = { RecipeItemEntry = 49965, SkillIndex = 165, CreatedItemEntry = 49901 },
		[70561] = { RecipeItemEntry = 49966, SkillIndex = 165, CreatedItemEntry = 49897 },
		[968001] = { RecipeItemEntry = 967233, SkillIndex = 165, CreatedItemEntry = 967155 },
		[968002] = { RecipeItemEntry = 967234, SkillIndex = 165, CreatedItemEntry = 967156 },
		[968004] = { RecipeItemEntry = 967236, SkillIndex = 165, CreatedItemEntry = 967158 },
		[968005] = { RecipeItemEntry = 967237, SkillIndex = 165, CreatedItemEntry = 967159 },
		[968007] = { RecipeItemEntry = 967239, SkillIndex = 165, CreatedItemEntry = 967161 },
		[968008] = { RecipeItemEntry = 967240, SkillIndex = 165, CreatedItemEntry = 967162 },
		[968010] = { RecipeItemEntry = 967242, SkillIndex = 165, CreatedItemEntry = 967164 },
		[968011] = { RecipeItemEntry = 967243, SkillIndex = 165, CreatedItemEntry = 967165 },
		[968013] = { RecipeItemEntry = 967245, SkillIndex = 165, CreatedItemEntry = 967167 },
		[968014] = { RecipeItemEntry = 967246, SkillIndex = 165, CreatedItemEntry = 967168 },
		[968016] = { RecipeItemEntry = 967248, SkillIndex = 165, CreatedItemEntry = 967170 },
		[968017] = { RecipeItemEntry = 967249, SkillIndex = 165, CreatedItemEntry = 967171 },
		[979329] = { RecipeItemEntry = 1203214, SkillIndex = 165, CreatedItemEntry = 1203483 },
		[979330] = { RecipeItemEntry = 1203215, SkillIndex = 165, CreatedItemEntry = 1203485 },
		[979331] = { RecipeItemEntry = 1203216, SkillIndex = 165, CreatedItemEntry = 1203487 },
		[979332] = { RecipeItemEntry = 1203217, SkillIndex = 165, CreatedItemEntry = 1203489 },
		[979484] = { SkillIndex = 165, CreatedItemEntry = 1203482 },
		[979485] = { SkillIndex = 165, CreatedItemEntry = 1203483 },
		[979486] = { SkillIndex = 165, CreatedItemEntry = 1203484 },
		[979487] = { SkillIndex = 165, CreatedItemEntry = 1203485 },
		[979488] = { SkillIndex = 165, CreatedItemEntry = 1203486 },
		[979489] = { SkillIndex = 165, CreatedItemEntry = 1203487 },
		[979490] = { SkillIndex = 165, CreatedItemEntry = 1203488 },
		[979491] = { SkillIndex = 165, CreatedItemEntry = 1203489 },
		[979522] = { RecipeItemEntry = 1204073, SkillIndex = 165, CreatedItemEntry = 1204021 },
		[979523] = { RecipeItemEntry = 1204074, SkillIndex = 165, CreatedItemEntry = 1204022 },
		[979524] = { RecipeItemEntry = 1204075, SkillIndex = 165, CreatedItemEntry = 1204023 },
		[979525] = { RecipeItemEntry = 1204076, SkillIndex = 165, CreatedItemEntry = 1204024 },
		[979526] = { RecipeItemEntry = 1204077, SkillIndex = 165, CreatedItemEntry = 1204025 },
		[979527] = { RecipeItemEntry = 1204078, SkillIndex = 165, CreatedItemEntry = 1204026 },
		[979528] = { RecipeItemEntry = 1204079, SkillIndex = 165, CreatedItemEntry = 1204027 },
		[979529] = { RecipeItemEntry = 1204080, SkillIndex = 165, CreatedItemEntry = 1204028 },
		[979530] = { RecipeItemEntry = 1204081, SkillIndex = 165, CreatedItemEntry = 1204029 },
		[979531] = { RecipeItemEntry = 1204082, SkillIndex = 165, CreatedItemEntry = 1204030 },
		[979532] = { RecipeItemEntry = 1204083, SkillIndex = 165, CreatedItemEntry = 1204031 },
		[979533] = { RecipeItemEntry = 1204084, SkillIndex = 165, CreatedItemEntry = 1204032 },
		[1979329] = { RecipeItemEntry = 1303521, SkillIndex = 165, CreatedItemEntry = 1303483 },
		[1979330] = { RecipeItemEntry = 1303522, SkillIndex = 165, CreatedItemEntry = 1303485 },
		[1979331] = { RecipeItemEntry = 1303523, SkillIndex = 165, CreatedItemEntry = 1303487 },
		[1979332] = { RecipeItemEntry = 1303524, SkillIndex = 165, CreatedItemEntry = 1303489 },
		[1979484] = { SkillIndex = 165, CreatedItemEntry = 1303482 },
		[1979485] = { SkillIndex = 165, CreatedItemEntry = 1303483 },
		[1979486] = { SkillIndex = 165, CreatedItemEntry = 1303484 },
		[1979487] = { SkillIndex = 165, CreatedItemEntry = 1303485 },
		[1979490] = { SkillIndex = 165, CreatedItemEntry = 1303488 },
		[1979491] = { SkillIndex = 165, CreatedItemEntry = 1303489 },
		[2329] = { SkillIndex = 171, CreatedItemEntry = 2454 },
		[2330] = { SkillIndex = 171, CreatedItemEntry = 118 },
		[2331] = { SkillIndex = 171, CreatedItemEntry = 2455 },
		[2332] = { SkillIndex = 171, CreatedItemEntry = 2456 },
		[2333] = { RecipeItemEntry = 3396, SkillIndex = 171, CreatedItemEntry = 3390 },
		[2334] = { SkillIndex = 171, CreatedItemEntry = 2458 },
		[2335] = { RecipeItemEntry = 2555, SkillIndex = 171, CreatedItemEntry = 2459 },
		[2336] = { SkillIndex = 171, CreatedItemEntry = 2460 },
		[2337] = { SkillIndex = 171, CreatedItemEntry = 858 },
		[3170] = { SkillIndex = 171, CreatedItemEntry = 3382 },
		[3171] = { SkillIndex = 171, CreatedItemEntry = 3383 },
		[3172] = { RecipeItemEntry = 3393, SkillIndex = 171, CreatedItemEntry = 3384 },
		[3173] = { SkillIndex = 171, CreatedItemEntry = 3385 },
		[3174] = { RecipeItemEntry = 3394, SkillIndex = 171, CreatedItemEntry = 3386 },
		[3175] = { RecipeItemEntry = 3395, SkillIndex = 171, CreatedItemEntry = 3387 },
		[3176] = { SkillIndex = 171, CreatedItemEntry = 3388 },
		[3177] = { SkillIndex = 171, CreatedItemEntry = 3389 },
		[3188] = { RecipeItemEntry = 6211, SkillIndex = 171, CreatedItemEntry = 3391 },
		[3230] = { RecipeItemEntry = 2553, SkillIndex = 171, CreatedItemEntry = 2457 },
		[3447] = { SkillIndex = 171, CreatedItemEntry = 929 },
		[3448] = { SkillIndex = 171, CreatedItemEntry = 3823 },
		[3449] = { RecipeItemEntry = 6068, SkillIndex = 171, CreatedItemEntry = 3824 },
		[3450] = { RecipeItemEntry = 3830, SkillIndex = 171, CreatedItemEntry = 3825 },
		[3451] = { RecipeItemEntry = 3831, SkillIndex = 171, CreatedItemEntry = 3826 },
		[3452] = { SkillIndex = 171, CreatedItemEntry = 3827 },
		[3453] = { RecipeItemEntry = 3832, SkillIndex = 171, CreatedItemEntry = 3828 },
		[3454] = { RecipeItemEntry = 14634, SkillIndex = 171, CreatedItemEntry = 3829 },
		[4508] = { RecipeItemEntry = 4597, SkillIndex = 171, CreatedItemEntry = 4596 },
		[4942] = { RecipeItemEntry = 4624, SkillIndex = 171, CreatedItemEntry = 4623 },
		[6617] = { RecipeItemEntry = 5640, SkillIndex = 171, CreatedItemEntry = 5631 },
		[6618] = { RecipeItemEntry = 5643, SkillIndex = 171, CreatedItemEntry = 5633 },
		[6624] = { RecipeItemEntry = 5642, SkillIndex = 171, CreatedItemEntry = 5634 },
		[7179] = { SkillIndex = 171, CreatedItemEntry = 5996 },
		[7181] = { SkillIndex = 171, CreatedItemEntry = 1710 },
		[7183] = { SkillIndex = 171, CreatedItemEntry = 5997 },
		[7255] = { RecipeItemEntry = 6053, SkillIndex = 171, CreatedItemEntry = 6051 },
		[7256] = { RecipeItemEntry = 6054, SkillIndex = 171, CreatedItemEntry = 6048 },
		[7257] = { RecipeItemEntry = 6055, SkillIndex = 171, CreatedItemEntry = 6049 },
		[7258] = { RecipeItemEntry = 6056, SkillIndex = 171, CreatedItemEntry = 6050 },
		[7259] = { RecipeItemEntry = 6057, SkillIndex = 171, CreatedItemEntry = 6052 },
		[7836] = { SkillIndex = 171, CreatedItemEntry = 6370 },
		[7837] = { SkillIndex = 171, CreatedItemEntry = 6371 },
		[7841] = { SkillIndex = 171, CreatedItemEntry = 6372 },
		[7845] = { SkillIndex = 171, CreatedItemEntry = 6373 },
		[8240] = { RecipeItemEntry = 6663, SkillIndex = 171, CreatedItemEntry = 6662 },
		[11448] = { SkillIndex = 171, CreatedItemEntry = 6149 },
		[11449] = { SkillIndex = 171, CreatedItemEntry = 8949 },
		[11450] = { SkillIndex = 171, CreatedItemEntry = 8951 },
		[11451] = { SkillIndex = 171, CreatedItemEntry = 8956 },
		[11452] = { SkillIndex = 171, CreatedItemEntry = 9030 },
		[11453] = { RecipeItemEntry = 9293, SkillIndex = 171, CreatedItemEntry = 9036 },
		[11456] = { RecipeItemEntry = 10644, SkillIndex = 171, CreatedItemEntry = 9061 },
		[11457] = { SkillIndex = 171, CreatedItemEntry = 3928 },
		[11458] = { RecipeItemEntry = 9294, SkillIndex = 171, CreatedItemEntry = 9144 },
		[11459] = { RecipeItemEntry = 9303, SkillIndex = 171, CreatedItemEntry = 9149 },
		[11460] = { SkillIndex = 171, CreatedItemEntry = 9154 },
		[11461] = { SkillIndex = 171, CreatedItemEntry = 9155 },
		[11464] = { RecipeItemEntry = 9295, SkillIndex = 171, CreatedItemEntry = 9172 },
		[11465] = { SkillIndex = 171, CreatedItemEntry = 9179 },
		[11466] = { RecipeItemEntry = 9296, SkillIndex = 171, CreatedItemEntry = 9088 },
		[11467] = { SkillIndex = 171, CreatedItemEntry = 9187 },
		[11468] = { RecipeItemEntry = 9297, SkillIndex = 171, CreatedItemEntry = 9197 },
		[11472] = { RecipeItemEntry = 9298, SkillIndex = 171, CreatedItemEntry = 9206 },
		[11473] = { RecipeItemEntry = 9302, SkillIndex = 171, CreatedItemEntry = 9210 },
		[11476] = { RecipeItemEntry = 9301, SkillIndex = 171, CreatedItemEntry = 9264 },
		[11477] = { RecipeItemEntry = 9300, SkillIndex = 171, CreatedItemEntry = 9224 },
		[11478] = { SkillIndex = 171, CreatedItemEntry = 9233 },
		[11479] = { RecipeItemEntry = 9304, SkillIndex = 171, CreatedItemEntry = 3577 },
		[11480] = { RecipeItemEntry = 9305, SkillIndex = 171, CreatedItemEntry = 6037 },
		[12609] = { SkillIndex = 171, CreatedItemEntry = 10592 },
		[15833] = { SkillIndex = 171, CreatedItemEntry = 12190 },
		[17187] = { RecipeItemEntry = 12958, SkillIndex = 171, CreatedItemEntry = 12360 },
		[17551] = { SkillIndex = 171, CreatedItemEntry = 13423 },
		[17552] = { RecipeItemEntry = 13476, SkillIndex = 171, CreatedItemEntry = 13442 },
		[17553] = { RecipeItemEntry = 13477, SkillIndex = 171, CreatedItemEntry = 13443 },
		[17554] = { RecipeItemEntry = 13478, SkillIndex = 171, CreatedItemEntry = 13445 },
		[17555] = { RecipeItemEntry = 13479, SkillIndex = 171, CreatedItemEntry = 13447 },
		[17556] = { RecipeItemEntry = 13480, SkillIndex = 171, CreatedItemEntry = 13446 },
		[17557] = { RecipeItemEntry = 13481, SkillIndex = 171, CreatedItemEntry = 13453 },
		[17559] = { RecipeItemEntry = 13482, SkillIndex = 171, CreatedItemEntry = 7078 },
		[17560] = { RecipeItemEntry = 13483, SkillIndex = 171, CreatedItemEntry = 7076 },
		[17561] = { RecipeItemEntry = 13484, SkillIndex = 171, CreatedItemEntry = 7080 },
		[17562] = { RecipeItemEntry = 13485, SkillIndex = 171, CreatedItemEntry = 7082 },
		[17563] = { RecipeItemEntry = 13486, SkillIndex = 171, CreatedItemEntry = 7080 },
		[17564] = { RecipeItemEntry = 13487, SkillIndex = 171, CreatedItemEntry = 12808 },
		[17565] = { RecipeItemEntry = 13488, SkillIndex = 171, CreatedItemEntry = 7076 },
		[17566] = { RecipeItemEntry = 13489, SkillIndex = 171, CreatedItemEntry = 12803 },
		[17570] = { RecipeItemEntry = 13490, SkillIndex = 171, CreatedItemEntry = 13455 },
		[17571] = { RecipeItemEntry = 13491, SkillIndex = 171, CreatedItemEntry = 13452 },
		[17572] = { RecipeItemEntry = 13492, SkillIndex = 171, CreatedItemEntry = 13462 },
		[17573] = { RecipeItemEntry = 13493, SkillIndex = 171, CreatedItemEntry = 13454 },
		[17574] = { RecipeItemEntry = 13494, SkillIndex = 171, CreatedItemEntry = 13457 },
		[17575] = { RecipeItemEntry = 13495, SkillIndex = 171, CreatedItemEntry = 13456 },
		[17576] = { RecipeItemEntry = 13496, SkillIndex = 171, CreatedItemEntry = 13458 },
		[17577] = { RecipeItemEntry = 13497, SkillIndex = 171, CreatedItemEntry = 13461 },
		[17578] = { RecipeItemEntry = 13499, SkillIndex = 171, CreatedItemEntry = 13459 },
		[17579] = { SkillIndex = 171, CreatedItemEntry = 13460 },
		[17580] = { RecipeItemEntry = 13501, SkillIndex = 171, CreatedItemEntry = 13444 },
		[17632] = { RecipeItemEntry = 13517, SkillIndex = 171, CreatedItemEntry = 13503 },
		[17634] = { RecipeItemEntry = 13518, SkillIndex = 171, CreatedItemEntry = 13506 },
		[17635] = { RecipeItemEntry = 13519, SkillIndex = 171, CreatedItemEntry = 13510 },
		[17636] = { RecipeItemEntry = 13520, SkillIndex = 171, CreatedItemEntry = 13511 },
		[17637] = { RecipeItemEntry = 13521, SkillIndex = 171, CreatedItemEntry = 13512 },
		[17638] = { RecipeItemEntry = 13522, SkillIndex = 171, CreatedItemEntry = 13513 },
		[21923] = { RecipeItemEntry = 17709, SkillIndex = 171, CreatedItemEntry = 17708 },
		[22732] = { RecipeItemEntry = 18257, SkillIndex = 171, CreatedItemEntry = 18253 },
		[22808] = { SkillIndex = 171, CreatedItemEntry = 18294 },
		[24266] = { SkillIndex = 171, CreatedItemEntry = 19931 },
		[24365] = { RecipeItemEntry = 20011, SkillIndex = 171, CreatedItemEntry = 20007 },
		[24366] = { RecipeItemEntry = 20012, SkillIndex = 171, CreatedItemEntry = 20002 },
		[24367] = { RecipeItemEntry = 20013, SkillIndex = 171, CreatedItemEntry = 20008 },
		[24368] = { RecipeItemEntry = 20014, SkillIndex = 171, CreatedItemEntry = 20004 },
		[25146] = { RecipeItemEntry = 20761, SkillIndex = 171, CreatedItemEntry = 7068 },
		[26277] = { RecipeItemEntry = 21547, SkillIndex = 171, CreatedItemEntry = 21546 },
		[28543] = { RecipeItemEntry = 22900, SkillIndex = 171, CreatedItemEntry = 22823 },
		[28544] = { SkillIndex = 171, CreatedItemEntry = 22824 },
		[28545] = { SkillIndex = 171, CreatedItemEntry = 22825 },
		[28546] = { RecipeItemEntry = 22901, SkillIndex = 171, CreatedItemEntry = 22826 },
		[28549] = { RecipeItemEntry = 22902, SkillIndex = 171, CreatedItemEntry = 22827 },
		[28550] = { RecipeItemEntry = 22903, SkillIndex = 171, CreatedItemEntry = 22828 },
		[28551] = { SkillIndex = 171, CreatedItemEntry = 22829 },
		[28552] = { RecipeItemEntry = 22904, SkillIndex = 171, CreatedItemEntry = 22830 },
		[28553] = { RecipeItemEntry = 22905, SkillIndex = 171, CreatedItemEntry = 22831 },
		[28554] = { RecipeItemEntry = 22906, SkillIndex = 171, CreatedItemEntry = 22871 },
		[28555] = { RecipeItemEntry = 22907, SkillIndex = 171, CreatedItemEntry = 22832 },
		[28556] = { RecipeItemEntry = 22908, SkillIndex = 171, CreatedItemEntry = 22833 },
		[28557] = { RecipeItemEntry = 22909, SkillIndex = 171, CreatedItemEntry = 22834 },
		[28558] = { RecipeItemEntry = 22910, SkillIndex = 171, CreatedItemEntry = 22835 },
		[28562] = { RecipeItemEntry = 22911, SkillIndex = 171, CreatedItemEntry = 22836 },
		[28563] = { RecipeItemEntry = 22912, SkillIndex = 171, CreatedItemEntry = 22837 },
		[28564] = { RecipeItemEntry = 22913, SkillIndex = 171, CreatedItemEntry = 22838 },
		[28565] = { RecipeItemEntry = 22914, SkillIndex = 171, CreatedItemEntry = 22839 },
		[28566] = { RecipeItemEntry = 22915, SkillIndex = 171, CreatedItemEntry = 21884 },
		[28567] = { RecipeItemEntry = 22916, SkillIndex = 171, CreatedItemEntry = 21885 },
		[28568] = { RecipeItemEntry = 22917, SkillIndex = 171, CreatedItemEntry = 22452 },
		[28569] = { RecipeItemEntry = 22918, SkillIndex = 171, CreatedItemEntry = 22451 },
		[28570] = { RecipeItemEntry = 22919, SkillIndex = 171, CreatedItemEntry = 22840 },
		[28571] = { RecipeItemEntry = 22920, SkillIndex = 171, CreatedItemEntry = 22841 },
		[28572] = { RecipeItemEntry = 22921, SkillIndex = 171, CreatedItemEntry = 22842 },
		[28573] = { RecipeItemEntry = 22922, SkillIndex = 171, CreatedItemEntry = 22844 },
		[28575] = { RecipeItemEntry = 22923, SkillIndex = 171, CreatedItemEntry = 22845 },
		[28576] = { RecipeItemEntry = 22924, SkillIndex = 171, CreatedItemEntry = 22846 },
		[28577] = { RecipeItemEntry = 22925, SkillIndex = 171, CreatedItemEntry = 22847 },
		[28578] = { RecipeItemEntry = 22926, SkillIndex = 171, CreatedItemEntry = 22848 },
		[28579] = { RecipeItemEntry = 22927, SkillIndex = 171, CreatedItemEntry = 22849 },
		[28580] = { SkillIndex = 171, CreatedItemEntry = 21885 },
		[28581] = { SkillIndex = 171, CreatedItemEntry = 22456 },
		[28582] = { SkillIndex = 171, CreatedItemEntry = 21884 },
		[28583] = { SkillIndex = 171, CreatedItemEntry = 22457 },
		[28584] = { SkillIndex = 171, CreatedItemEntry = 22452 },
		[28585] = { SkillIndex = 171, CreatedItemEntry = 21886 },
		[28586] = { SkillIndex = 171, CreatedItemEntry = 22850 },
		[28587] = { SkillIndex = 171, CreatedItemEntry = 22851 },
		[28588] = { SkillIndex = 171, CreatedItemEntry = 22853 },
		[28589] = { SkillIndex = 171, CreatedItemEntry = 22854 },
		[28590] = { SkillIndex = 171, CreatedItemEntry = 22861 },
		[28591] = { SkillIndex = 171, CreatedItemEntry = 22866 },
		[29688] = { RecipeItemEntry = 23574, SkillIndex = 171, CreatedItemEntry = 23571 },
		[32765] = { RecipeItemEntry = 25869, SkillIndex = 171, CreatedItemEntry = 25867 },
		[32766] = { RecipeItemEntry = 25870, SkillIndex = 171, CreatedItemEntry = 25868 },
		[33732] = { SkillIndex = 171, CreatedItemEntry = 28100 },
		[33733] = { SkillIndex = 171, CreatedItemEntry = 28101 },
		[33738] = { SkillIndex = 171, CreatedItemEntry = 28102 },
		[33740] = { SkillIndex = 171, CreatedItemEntry = 28103 },
		[33741] = { SkillIndex = 171, CreatedItemEntry = 28104 },
		[38070] = { SkillIndex = 171, CreatedItemEntry = 31080 },
		[38960] = { RecipeItemEntry = 31680, SkillIndex = 171, CreatedItemEntry = 31679 },
		[38961] = { RecipeItemEntry = 31682, SkillIndex = 171, CreatedItemEntry = 31677 },
		[38962] = { RecipeItemEntry = 31681, SkillIndex = 171, CreatedItemEntry = 31676 },
		[39636] = { SkillIndex = 171, CreatedItemEntry = 32062 },
		[39637] = { RecipeItemEntry = 32070, SkillIndex = 171, CreatedItemEntry = 32063 },
		[39638] = { SkillIndex = 171, CreatedItemEntry = 32067 },
		[39639] = { RecipeItemEntry = 32071, SkillIndex = 171, CreatedItemEntry = 32068 },
		[41458] = { SkillIndex = 171, CreatedItemEntry = 32839 },
		[41500] = { SkillIndex = 171, CreatedItemEntry = 32849 },
		[41501] = { SkillIndex = 171, CreatedItemEntry = 32850 },
		[41502] = { SkillIndex = 171, CreatedItemEntry = 32851 },
		[41503] = { SkillIndex = 171, CreatedItemEntry = 32852 },
		[42736] = { RecipeItemEntry = 33209, SkillIndex = 171, CreatedItemEntry = 33208 },
		[45061] = { SkillIndex = 171, CreatedItemEntry = 34440 },
		[47046] = { RecipeItemEntry = 35752, SkillIndex = 171, CreatedItemEntry = 35748 },
		[47048] = { RecipeItemEntry = 35753, SkillIndex = 171, CreatedItemEntry = 35749 },
		[47049] = { RecipeItemEntry = 35754, SkillIndex = 171, CreatedItemEntry = 35750 },
		[47050] = { RecipeItemEntry = 35755, SkillIndex = 171, CreatedItemEntry = 35751 },
		[53771] = { SkillIndex = 171, CreatedItemEntry = 35627 },
		[53773] = { SkillIndex = 171, CreatedItemEntry = 36860 },
		[53774] = { SkillIndex = 171, CreatedItemEntry = 35622 },
		[53775] = { SkillIndex = 171, CreatedItemEntry = 35625 },
		[53776] = { SkillIndex = 171, CreatedItemEntry = 35622 },
		[53777] = { SkillIndex = 171, CreatedItemEntry = 35624 },
		[53779] = { SkillIndex = 171, CreatedItemEntry = 35624 },
		[53780] = { SkillIndex = 171, CreatedItemEntry = 35625 },
		[53781] = { SkillIndex = 171, CreatedItemEntry = 35623 },
		[53782] = { SkillIndex = 171, CreatedItemEntry = 35627 },
		[53783] = { SkillIndex = 171, CreatedItemEntry = 35623 },
		[53784] = { SkillIndex = 171, CreatedItemEntry = 36860 },
		[53812] = { SkillIndex = 171, CreatedItemEntry = 40195 },
		[53836] = { SkillIndex = 171, CreatedItemEntry = 33447 },
		[53837] = { SkillIndex = 171, CreatedItemEntry = 33448 },
		[53838] = { SkillIndex = 171, CreatedItemEntry = 39671 },
		[53839] = { SkillIndex = 171, CreatedItemEntry = 40067 },
		[53840] = { SkillIndex = 171, CreatedItemEntry = 39666 },
		[53841] = { SkillIndex = 171, CreatedItemEntry = 40068 },
		[53842] = { SkillIndex = 171, CreatedItemEntry = 40070 },
		[53847] = { SkillIndex = 171, CreatedItemEntry = 40072 },
		[53848] = { SkillIndex = 171, CreatedItemEntry = 40076 },
		[53895] = { SkillIndex = 171, CreatedItemEntry = 40077 },
		[53898] = { SkillIndex = 171, CreatedItemEntry = 40078 },
		[53899] = { SkillIndex = 171, CreatedItemEntry = 40079 },
		[53900] = { SkillIndex = 171, CreatedItemEntry = 40081 },
		[53901] = { SkillIndex = 171, CreatedItemEntry = 46376 },
		[53902] = { SkillIndex = 171, CreatedItemEntry = 46379 },
		[53903] = { SkillIndex = 171, CreatedItemEntry = 46377 },
		[53904] = { SkillIndex = 171, CreatedItemEntry = 40087 },
		[53905] = { SkillIndex = 171, CreatedItemEntry = 40093 },
		[53936] = { RecipeItemEntry = 44564, SkillIndex = 171, CreatedItemEntry = 40213 },
		[53937] = { RecipeItemEntry = 44566, SkillIndex = 171, CreatedItemEntry = 40215 },
		[53938] = { RecipeItemEntry = 44568, SkillIndex = 171, CreatedItemEntry = 40217 },
		[53939] = { RecipeItemEntry = 44565, SkillIndex = 171, CreatedItemEntry = 40214 },
		[53942] = { RecipeItemEntry = 44567, SkillIndex = 171, CreatedItemEntry = 40216 },
		[54020] = { SkillIndex = 171, CreatedItemEntry = 40248 },
		[54213] = { SkillIndex = 171, CreatedItemEntry = 46378 },
		[54218] = { SkillIndex = 171, CreatedItemEntry = 40073 },
		[54220] = { SkillIndex = 171, CreatedItemEntry = 40097 },
		[54221] = { SkillIndex = 171, CreatedItemEntry = 40211 },
		[54222] = { SkillIndex = 171, CreatedItemEntry = 40212 },
		[56519] = { SkillIndex = 171, CreatedItemEntry = 40109 },
		[57425] = { SkillIndex = 171, CreatedItemEntry = 41266 },
		[57427] = { SkillIndex = 171, CreatedItemEntry = 41334 },
		[58868] = { SkillIndex = 171, CreatedItemEntry = 43570 },
		[58871] = { SkillIndex = 171, CreatedItemEntry = 43569 },
		[60350] = { SkillIndex = 171, CreatedItemEntry = 41163 },
		[60354] = { SkillIndex = 171, CreatedItemEntry = 44325 },
		[60355] = { SkillIndex = 171, CreatedItemEntry = 44327 },
		[60356] = { SkillIndex = 171, CreatedItemEntry = 44328 },
		[60357] = { SkillIndex = 171, CreatedItemEntry = 44329 },
		[60365] = { SkillIndex = 171, CreatedItemEntry = 44330 },
		[60366] = { SkillIndex = 171, CreatedItemEntry = 44331 },
		[60367] = { SkillIndex = 171, CreatedItemEntry = 44332 },
		[60396] = { SkillIndex = 171, CreatedItemEntry = 44322 },
		[60403] = { SkillIndex = 171, CreatedItemEntry = 44323 },
		[60405] = { SkillIndex = 171, CreatedItemEntry = 44324 },
		[62213] = { SkillIndex = 171, CreatedItemEntry = 44939 },
		[62409] = { SkillIndex = 171, CreatedItemEntry = 44958 },
		[62410] = { SkillIndex = 171, CreatedItemEntry = 8827 },
		[63732] = { SkillIndex = 171, CreatedItemEntry = 45621 },
		[66658] = { SkillIndex = 171, CreatedItemEntry = 36931 },
		[66659] = { SkillIndex = 171, CreatedItemEntry = 36919 },
		[66660] = { SkillIndex = 171, CreatedItemEntry = 36922 },
		[66662] = { SkillIndex = 171, CreatedItemEntry = 36928 },
		[66663] = { SkillIndex = 171, CreatedItemEntry = 36925 },
		[66664] = { SkillIndex = 171, CreatedItemEntry = 36934 },
		[67025] = { RecipeItemEntry = 47507, SkillIndex = 171, CreatedItemEntry = 47499 },
		[966444] = { RecipeItemEntry = 100623, SkillIndex = 171, CreatedItemEntry = 12360 },
		[968403] = { RecipeItemEntry = 967477, SkillIndex = 171, CreatedItemEntry = 967444 },
		[968404] = { RecipeItemEntry = 967478, SkillIndex = 171, CreatedItemEntry = 967445 },
		[968406] = { RecipeItemEntry = 967480, SkillIndex = 171, CreatedItemEntry = 967447 },
		[968407] = { RecipeItemEntry = 967481, SkillIndex = 171, CreatedItemEntry = 967448 },
		[968409] = { RecipeItemEntry = 967483, SkillIndex = 171, CreatedItemEntry = 967450 },
		[968410] = { RecipeItemEntry = 967484, SkillIndex = 171, CreatedItemEntry = 967451 },
		[968412] = { RecipeItemEntry = 967486, SkillIndex = 171, CreatedItemEntry = 967453 },
		[968413] = { RecipeItemEntry = 967487, SkillIndex = 171, CreatedItemEntry = 967454 },
		[968415] = { RecipeItemEntry = 967489, SkillIndex = 171, CreatedItemEntry = 967456 },
		[968416] = { RecipeItemEntry = 967490, SkillIndex = 171, CreatedItemEntry = 967457 },
		[968418] = { RecipeItemEntry = 967492, SkillIndex = 171, CreatedItemEntry = 967459 },
		[968419] = { RecipeItemEntry = 967493, SkillIndex = 171, CreatedItemEntry = 967460 },
		[968421] = { RecipeItemEntry = 967495, SkillIndex = 171, CreatedItemEntry = 967462 },
		[968422] = { RecipeItemEntry = 967496, SkillIndex = 171, CreatedItemEntry = 967463 },
		[968424] = { RecipeItemEntry = 967498, SkillIndex = 171, CreatedItemEntry = 967465 },
		[968425] = { RecipeItemEntry = 967499, SkillIndex = 171, CreatedItemEntry = 967466 },
		[968427] = { RecipeItemEntry = 967501, SkillIndex = 171, CreatedItemEntry = 967468 },
		[968428] = { RecipeItemEntry = 967502, SkillIndex = 171, CreatedItemEntry = 967469 },
		[968430] = { RecipeItemEntry = 967504, SkillIndex = 171, CreatedItemEntry = 967471 },
		[968431] = { RecipeItemEntry = 967505, SkillIndex = 171, CreatedItemEntry = 967472 },
		[968433] = { RecipeItemEntry = 967507, SkillIndex = 171, CreatedItemEntry = 967474 },
		[968434] = { RecipeItemEntry = 967508, SkillIndex = 171, CreatedItemEntry = 967475 },
		[979333] = { RecipeItemEntry = 1203218, SkillIndex = 171, CreatedItemEntry = 1203479 },
		[979334] = { RecipeItemEntry = 1203219, SkillIndex = 171, CreatedItemEntry = 1203113 },
		[979335] = { RecipeItemEntry = 1203220, SkillIndex = 171, CreatedItemEntry = 1203115 },
		[979336] = { RecipeItemEntry = 1203221, SkillIndex = 171, CreatedItemEntry = 1203117 },
		[979362] = { RecipeItemEntry = 1203362, SkillIndex = 171, CreatedItemEntry = 1203258 },
		[979363] = { RecipeItemEntry = 1203363, SkillIndex = 171, CreatedItemEntry = 1203259 },
		[979364] = { RecipeItemEntry = 1203364, SkillIndex = 171, CreatedItemEntry = 1203260 },
		[979365] = { RecipeItemEntry = 1203365, SkillIndex = 171, CreatedItemEntry = 1203261 },
		[979366] = { RecipeItemEntry = 1203366, SkillIndex = 171, CreatedItemEntry = 1203262 },
		[979367] = { RecipeItemEntry = 1203367, SkillIndex = 171, CreatedItemEntry = 1203263 },
		[979368] = { RecipeItemEntry = 1203368, SkillIndex = 171, CreatedItemEntry = 1203264 },
		[979369] = { RecipeItemEntry = 1203369, SkillIndex = 171, CreatedItemEntry = 1203265 },
		[979370] = { RecipeItemEntry = 1203370, SkillIndex = 171, CreatedItemEntry = 1203266 },
		[979371] = { RecipeItemEntry = 1203371, SkillIndex = 171, CreatedItemEntry = 1203267 },
		[979372] = { RecipeItemEntry = 1203372, SkillIndex = 171, CreatedItemEntry = 1203268 },
		[979373] = { RecipeItemEntry = 1203373, SkillIndex = 171, CreatedItemEntry = 1203269 },
		[979374] = { RecipeItemEntry = 1203374, SkillIndex = 171, CreatedItemEntry = 1203270 },
		[979375] = { RecipeItemEntry = 1203375, SkillIndex = 171, CreatedItemEntry = 1203271 },
		[979376] = { RecipeItemEntry = 1203376, SkillIndex = 171, CreatedItemEntry = 1203272 },
		[979377] = { RecipeItemEntry = 1203377, SkillIndex = 171, CreatedItemEntry = 1203273 },
		[979378] = { RecipeItemEntry = 1203378, SkillIndex = 171, CreatedItemEntry = 1203274 },
		[979379] = { RecipeItemEntry = 1203379, SkillIndex = 171, CreatedItemEntry = 1203275 },
		[979380] = { RecipeItemEntry = 1203380, SkillIndex = 171, CreatedItemEntry = 1203276 },
		[979381] = { RecipeItemEntry = 1203381, SkillIndex = 171, CreatedItemEntry = 1203277 },
		[979382] = { RecipeItemEntry = 1203382, SkillIndex = 171, CreatedItemEntry = 1203278 },
		[979383] = { RecipeItemEntry = 1203383, SkillIndex = 171, CreatedItemEntry = 1203279 },
		[979468] = { SkillIndex = 171, CreatedItemEntry = 1203478 },
		[979469] = { SkillIndex = 171, CreatedItemEntry = 1203479 },
		[979470] = { SkillIndex = 171, CreatedItemEntry = 1203112 },
		[979471] = { SkillIndex = 171, CreatedItemEntry = 1203113 },
		[979472] = { SkillIndex = 171, CreatedItemEntry = 1203114 },
		[979473] = { SkillIndex = 171, CreatedItemEntry = 1203115 },
		[979474] = { SkillIndex = 171, CreatedItemEntry = 1203116 },
		[979475] = { SkillIndex = 171, CreatedItemEntry = 1203117 },
		[1979333] = { RecipeItemEntry = 1303525, SkillIndex = 171, CreatedItemEntry = 1303479 },
		[1979334] = { RecipeItemEntry = 1303526, SkillIndex = 171, CreatedItemEntry = 1303113 },
		[1979335] = { RecipeItemEntry = 1303527, SkillIndex = 171, CreatedItemEntry = 1303115 },
		[1979336] = { RecipeItemEntry = 1303528, SkillIndex = 171, CreatedItemEntry = 1303117 },
		[1979468] = { SkillIndex = 171, CreatedItemEntry = 1303478 },
		[1979469] = { SkillIndex = 171, CreatedItemEntry = 1303479 },
		[1979470] = { SkillIndex = 171, CreatedItemEntry = 1303112 },
		[1979471] = { SkillIndex = 171, CreatedItemEntry = 1303113 },
		[1979474] = { SkillIndex = 171, CreatedItemEntry = 1303116 },
		[1979475] = { SkillIndex = 171, CreatedItemEntry = 1303117 },
		[2538] = { SkillIndex = 185, CreatedItemEntry = 2679 },
		[2539] = { SkillIndex = 185, CreatedItemEntry = 2680 },
		[2540] = { SkillIndex = 185, CreatedItemEntry = 2681 },
		[2541] = { SkillIndex = 185, CreatedItemEntry = 2684 },
		[2542] = { RecipeItemEntry = 2697, SkillIndex = 185, CreatedItemEntry = 724 },
		[2543] = { RecipeItemEntry = 728, SkillIndex = 185, CreatedItemEntry = 733 },
		[2544] = { SkillIndex = 185, CreatedItemEntry = 2683 },
		[2545] = { RecipeItemEntry = 2698, SkillIndex = 185, CreatedItemEntry = 2682 },
		[2546] = { SkillIndex = 185, CreatedItemEntry = 2687 },
		[2547] = { RecipeItemEntry = 2699, SkillIndex = 185, CreatedItemEntry = 1082 },
		[2548] = { RecipeItemEntry = 2700, SkillIndex = 185, CreatedItemEntry = 2685 },
		[2549] = { RecipeItemEntry = 2701, SkillIndex = 185, CreatedItemEntry = 1017 },
		[2795] = { RecipeItemEntry = 2889, SkillIndex = 185, CreatedItemEntry = 2888 },
		[3370] = { RecipeItemEntry = 3678, SkillIndex = 185, CreatedItemEntry = 3662 },
		[3371] = { RecipeItemEntry = 3679, SkillIndex = 185, CreatedItemEntry = 3220 },
		[3372] = { RecipeItemEntry = 3680, SkillIndex = 185, CreatedItemEntry = 3663 },
		[3373] = { RecipeItemEntry = 3681, SkillIndex = 185, CreatedItemEntry = 3664 },
		[3376] = { RecipeItemEntry = 3682, SkillIndex = 185, CreatedItemEntry = 3665 },
		[3377] = { RecipeItemEntry = 3683, SkillIndex = 185, CreatedItemEntry = 3666 },
		[3397] = { RecipeItemEntry = 3734, SkillIndex = 185, CreatedItemEntry = 3726 },
		[3398] = { RecipeItemEntry = 3735, SkillIndex = 185, CreatedItemEntry = 3727 },
		[3399] = { RecipeItemEntry = 3736, SkillIndex = 185, CreatedItemEntry = 3728 },
		[3400] = { RecipeItemEntry = 3737, SkillIndex = 185, CreatedItemEntry = 3729 },
		[4094] = { RecipeItemEntry = 4609, SkillIndex = 185, CreatedItemEntry = 4457 },
		[6412] = { RecipeItemEntry = 5482, SkillIndex = 185, CreatedItemEntry = 5472 },
		[6413] = { RecipeItemEntry = 5483, SkillIndex = 185, CreatedItemEntry = 5473 },
		[6414] = { RecipeItemEntry = 5484, SkillIndex = 185, CreatedItemEntry = 5474 },
		[6415] = { RecipeItemEntry = 5485, SkillIndex = 185, CreatedItemEntry = 5476 },
		[6416] = { RecipeItemEntry = 5486, SkillIndex = 185, CreatedItemEntry = 5477 },
		[6417] = { RecipeItemEntry = 5487, SkillIndex = 185, CreatedItemEntry = 5478 },
		[6418] = { RecipeItemEntry = 5488, SkillIndex = 185, CreatedItemEntry = 5479 },
		[6419] = { RecipeItemEntry = 5489, SkillIndex = 185, CreatedItemEntry = 5480 },
		[6499] = { SkillIndex = 185, CreatedItemEntry = 5525 },
		[6500] = { SkillIndex = 185, CreatedItemEntry = 5527 },
		[6501] = { RecipeItemEntry = 5528, SkillIndex = 185, CreatedItemEntry = 5526 },
		[7213] = { RecipeItemEntry = 6039, SkillIndex = 185, CreatedItemEntry = 6038 },
		[7751] = { RecipeItemEntry = 6325, SkillIndex = 185, CreatedItemEntry = 6290 },
		[7752] = { RecipeItemEntry = 6326, SkillIndex = 185, CreatedItemEntry = 787 },
		[7753] = { RecipeItemEntry = 6328, SkillIndex = 185, CreatedItemEntry = 4592 },
		[7754] = { RecipeItemEntry = 6329, SkillIndex = 185, CreatedItemEntry = 6316 },
		[7755] = { RecipeItemEntry = 6330, SkillIndex = 185, CreatedItemEntry = 4593 },
		[7827] = { RecipeItemEntry = 6368, SkillIndex = 185, CreatedItemEntry = 5095 },
		[7828] = { RecipeItemEntry = 6369, SkillIndex = 185, CreatedItemEntry = 4594 },
		[8238] = { RecipeItemEntry = 6661, SkillIndex = 185, CreatedItemEntry = 6657 },
		[8604] = { SkillIndex = 185, CreatedItemEntry = 6888 },
		[8607] = { RecipeItemEntry = 6892, SkillIndex = 185, CreatedItemEntry = 6890 },
		[9513] = { RecipeItemEntry = 7678, SkillIndex = 185, CreatedItemEntry = 7676 },
		[13028] = { SkillIndex = 185, CreatedItemEntry = 10841 },
		[15853] = { RecipeItemEntry = 12227, SkillIndex = 185, CreatedItemEntry = 12209 },
		[15855] = { RecipeItemEntry = 12228, SkillIndex = 185, CreatedItemEntry = 12210 },
		[15856] = { RecipeItemEntry = 12229, SkillIndex = 185, CreatedItemEntry = 13851 },
		[15861] = { RecipeItemEntry = 12231, SkillIndex = 185, CreatedItemEntry = 12212 },
		[15863] = { RecipeItemEntry = 12232, SkillIndex = 185, CreatedItemEntry = 12213 },
		[15865] = { RecipeItemEntry = 12233, SkillIndex = 185, CreatedItemEntry = 12214 },
		[15906] = { RecipeItemEntry = 12239, SkillIndex = 185, CreatedItemEntry = 12217 },
		[15910] = { RecipeItemEntry = 12240, SkillIndex = 185, CreatedItemEntry = 12215 },
		[15915] = { RecipeItemEntry = 16111, SkillIndex = 185, CreatedItemEntry = 12216 },
		[15933] = { RecipeItemEntry = 16110, SkillIndex = 185, CreatedItemEntry = 12218 },
		[15935] = { RecipeItemEntry = 12226, SkillIndex = 185, CreatedItemEntry = 12224 },
		[18238] = { RecipeItemEntry = 13939, SkillIndex = 185, CreatedItemEntry = 6887 },
		[18239] = { RecipeItemEntry = 13940, SkillIndex = 185, CreatedItemEntry = 13927 },
		[18240] = { RecipeItemEntry = 13942, SkillIndex = 185, CreatedItemEntry = 13928 },
		[18241] = { RecipeItemEntry = 13941, SkillIndex = 185, CreatedItemEntry = 13930 },
		[18242] = { RecipeItemEntry = 13943, SkillIndex = 185, CreatedItemEntry = 13929 },
		[18243] = { RecipeItemEntry = 13945, SkillIndex = 185, CreatedItemEntry = 13931 },
		[18244] = { RecipeItemEntry = 13946, SkillIndex = 185, CreatedItemEntry = 13932 },
		[18245] = { RecipeItemEntry = 13947, SkillIndex = 185, CreatedItemEntry = 13933 },
		[18246] = { RecipeItemEntry = 13948, SkillIndex = 185, CreatedItemEntry = 13934 },
		[18247] = { RecipeItemEntry = 13949, SkillIndex = 185, CreatedItemEntry = 13935 },
		[20626] = { RecipeItemEntry = 16767, SkillIndex = 185, CreatedItemEntry = 16766 },
		[20916] = { RecipeItemEntry = 17062, SkillIndex = 185, CreatedItemEntry = 8364 },
		[21143] = { RecipeItemEntry = 17200, SkillIndex = 185, CreatedItemEntry = 17197 },
		[21144] = { RecipeItemEntry = 17201, SkillIndex = 185, CreatedItemEntry = 17198 },
		[21175] = { SkillIndex = 185, CreatedItemEntry = 17222 },
		[22480] = { RecipeItemEntry = 18046, SkillIndex = 185, CreatedItemEntry = 18045 },
		[22761] = { RecipeItemEntry = 18267, SkillIndex = 185, CreatedItemEntry = 18254 },
		[24418] = { RecipeItemEntry = 20075, SkillIndex = 185, CreatedItemEntry = 20074 },
		[24801] = { SkillIndex = 185, CreatedItemEntry = 20452 },
		[25659] = { RecipeItemEntry = 21025, SkillIndex = 185, CreatedItemEntry = 21023 },
		[25704] = { RecipeItemEntry = 21099, SkillIndex = 185, CreatedItemEntry = 21072 },
		[25954] = { RecipeItemEntry = 21219, SkillIndex = 185, CreatedItemEntry = 21217 },
		[28267] = { RecipeItemEntry = 22647, SkillIndex = 185, CreatedItemEntry = 22645 },
		[33276] = { RecipeItemEntry = 27685, SkillIndex = 185, CreatedItemEntry = 27635 },
		[33277] = { RecipeItemEntry = 27686, SkillIndex = 185, CreatedItemEntry = 24105 },
		[33278] = { RecipeItemEntry = 27687, SkillIndex = 185, CreatedItemEntry = 27636 },
		[33279] = { RecipeItemEntry = 27684, SkillIndex = 185, CreatedItemEntry = 27651 },
		[33284] = { RecipeItemEntry = 27688, SkillIndex = 185, CreatedItemEntry = 27655 },
		[33285] = { RecipeItemEntry = 27689, SkillIndex = 185, CreatedItemEntry = 27656 },
		[33286] = { RecipeItemEntry = 27690, SkillIndex = 185, CreatedItemEntry = 27657 },
		[33287] = { RecipeItemEntry = 27691, SkillIndex = 185, CreatedItemEntry = 27658 },
		[33288] = { RecipeItemEntry = 27692, SkillIndex = 185, CreatedItemEntry = 27659 },
		[33289] = { RecipeItemEntry = 27693, SkillIndex = 185, CreatedItemEntry = 27660 },
		[33290] = { RecipeItemEntry = 27694, SkillIndex = 185, CreatedItemEntry = 27661 },
		[33291] = { RecipeItemEntry = 27695, SkillIndex = 185, CreatedItemEntry = 27662 },
		[33292] = { RecipeItemEntry = 27696, SkillIndex = 185, CreatedItemEntry = 27663 },
		[33293] = { RecipeItemEntry = 27697, SkillIndex = 185, CreatedItemEntry = 27664 },
		[33294] = { RecipeItemEntry = 27698, SkillIndex = 185, CreatedItemEntry = 27665 },
		[33295] = { RecipeItemEntry = 27699, SkillIndex = 185, CreatedItemEntry = 27666 },
		[33296] = { RecipeItemEntry = 27700, SkillIndex = 185, CreatedItemEntry = 27667 },
		[36210] = { RecipeItemEntry = 30156, SkillIndex = 185, CreatedItemEntry = 30155 },
		[37836] = { SkillIndex = 185, CreatedItemEntry = 30816 },
		[38867] = { RecipeItemEntry = 31675, SkillIndex = 185, CreatedItemEntry = 31672 },
		[38868] = { RecipeItemEntry = 31674, SkillIndex = 185, CreatedItemEntry = 31673 },
		[42296] = { SkillIndex = 185, CreatedItemEntry = 33048 },
		[42302] = { SkillIndex = 185, CreatedItemEntry = 33052 },
		[42305] = { SkillIndex = 185, CreatedItemEntry = 33053 },
		[43707] = { RecipeItemEntry = 33870, SkillIndex = 185, CreatedItemEntry = 33825 },
		[43758] = { RecipeItemEntry = 33871, SkillIndex = 185, CreatedItemEntry = 33866 },
		[43761] = { RecipeItemEntry = 33869, SkillIndex = 185, CreatedItemEntry = 33867 },
		[43765] = { RecipeItemEntry = 33873, SkillIndex = 185, CreatedItemEntry = 33872 },
		[43772] = { RecipeItemEntry = 33875, SkillIndex = 185, CreatedItemEntry = 33874 },
		[43779] = { RecipeItemEntry = 33925, SkillIndex = 185, CreatedItemEntry = 33924 },
		[45022] = { RecipeItemEntry = 34413, SkillIndex = 185, CreatedItemEntry = 34411 },
		[45549] = { SkillIndex = 185, CreatedItemEntry = 34748 },
		[45550] = { SkillIndex = 185, CreatedItemEntry = 34749 },
		[45551] = { SkillIndex = 185, CreatedItemEntry = 34750 },
		[45552] = { SkillIndex = 185, CreatedItemEntry = 34751 },
		[45553] = { SkillIndex = 185, CreatedItemEntry = 34752 },
		[45554] = { SkillIndex = 185, CreatedItemEntry = 34753 },
		[45555] = { RecipeItemEntry = 43018, SkillIndex = 185, CreatedItemEntry = 34754 },
		[45556] = { RecipeItemEntry = 43019, SkillIndex = 185, CreatedItemEntry = 34755 },
		[45557] = { RecipeItemEntry = 43020, SkillIndex = 185, CreatedItemEntry = 34756 },
		[45558] = { RecipeItemEntry = 43021, SkillIndex = 185, CreatedItemEntry = 34757 },
		[45559] = { RecipeItemEntry = 43022, SkillIndex = 185, CreatedItemEntry = 34758 },
		[45560] = { SkillIndex = 185, CreatedItemEntry = 34759 },
		[45561] = { SkillIndex = 185, CreatedItemEntry = 34760 },
		[45562] = { SkillIndex = 185, CreatedItemEntry = 34761 },
		[45563] = { SkillIndex = 185, CreatedItemEntry = 34762 },
		[45564] = { SkillIndex = 185, CreatedItemEntry = 34763 },
		[45565] = { SkillIndex = 185, CreatedItemEntry = 34764 },
		[45566] = { SkillIndex = 185, CreatedItemEntry = 34765 },
		[45567] = { RecipeItemEntry = 43023, SkillIndex = 185, CreatedItemEntry = 34766 },
		[45568] = { RecipeItemEntry = 43024, SkillIndex = 185, CreatedItemEntry = 34767 },
		[45569] = { SkillIndex = 185, CreatedItemEntry = 42942 },
		[45570] = { RecipeItemEntry = 43026, SkillIndex = 185, CreatedItemEntry = 34769 },
		[45571] = { RecipeItemEntry = 43025, SkillIndex = 185, CreatedItemEntry = 34768 },
		[45695] = { RecipeItemEntry = 34834, SkillIndex = 185, CreatedItemEntry = 34832 },
		[46684] = { RecipeItemEntry = 35564, SkillIndex = 185, CreatedItemEntry = 35563 },
		[46688] = { RecipeItemEntry = 35566, SkillIndex = 185, CreatedItemEntry = 35565 },
		[53056] = { RecipeItemEntry = 39644, SkillIndex = 185, CreatedItemEntry = 39520 },
		[57421] = { SkillIndex = 185, CreatedItemEntry = 34747 },
		[57423] = { RecipeItemEntry = 43017, SkillIndex = 185, CreatedItemEntry = 43015 },
		[57433] = { RecipeItemEntry = 43027, SkillIndex = 185, CreatedItemEntry = 42993 },
		[57434] = { RecipeItemEntry = 43028, SkillIndex = 185, CreatedItemEntry = 42994 },
		[57435] = { RecipeItemEntry = 43029, SkillIndex = 185, CreatedItemEntry = 43004 },
		[57436] = { RecipeItemEntry = 43030, SkillIndex = 185, CreatedItemEntry = 42995 },
		[57437] = { RecipeItemEntry = 43031, SkillIndex = 185, CreatedItemEntry = 42996 },
		[57438] = { RecipeItemEntry = 43032, SkillIndex = 185, CreatedItemEntry = 42997 },
		[57439] = { RecipeItemEntry = 43033, SkillIndex = 185, CreatedItemEntry = 42998 },
		[57440] = { RecipeItemEntry = 43034, SkillIndex = 185, CreatedItemEntry = 43005 },
		[57441] = { RecipeItemEntry = 43035, SkillIndex = 185, CreatedItemEntry = 42999 },
		[57442] = { RecipeItemEntry = 43036, SkillIndex = 185, CreatedItemEntry = 43000 },
		[57443] = { RecipeItemEntry = 43037, SkillIndex = 185, CreatedItemEntry = 43001 },
		[58065] = { SkillIndex = 185, CreatedItemEntry = 43268 },
		[58512] = { RecipeItemEntry = 43507, SkillIndex = 185, CreatedItemEntry = 43490 },
		[58521] = { RecipeItemEntry = 43508, SkillIndex = 185, CreatedItemEntry = 43488 },
		[58523] = { RecipeItemEntry = 43509, SkillIndex = 185, CreatedItemEntry = 43491 },
		[58525] = { RecipeItemEntry = 43510, SkillIndex = 185, CreatedItemEntry = 43492 },
		[58527] = { RecipeItemEntry = 43505, SkillIndex = 185, CreatedItemEntry = 43478 },
		[58528] = { RecipeItemEntry = 43506, SkillIndex = 185, CreatedItemEntry = 43480 },
		[62044] = { RecipeItemEntry = 44862, SkillIndex = 185, CreatedItemEntry = 44836 },
		[62045] = { RecipeItemEntry = 44861, SkillIndex = 185, CreatedItemEntry = 44838 },
		[62049] = { RecipeItemEntry = 44858, SkillIndex = 185, CreatedItemEntry = 44840 },
		[62050] = { RecipeItemEntry = 44860, SkillIndex = 185, CreatedItemEntry = 44837 },
		[62051] = { RecipeItemEntry = 44859, SkillIndex = 185, CreatedItemEntry = 44839 },
		[62350] = { RecipeItemEntry = 44954, SkillIndex = 185, CreatedItemEntry = 44953 },
		[64054] = { SkillIndex = 185, CreatedItemEntry = 33004 },
		[64358] = { SkillIndex = 185, CreatedItemEntry = 45932 },
		[65454] = { RecipeItemEntry = 46710, SkillIndex = 185, CreatedItemEntry = 46691 },
		[66034] = { RecipeItemEntry = 46806, SkillIndex = 185, CreatedItemEntry = 44839 },
		[66035] = { RecipeItemEntry = 46805, SkillIndex = 185, CreatedItemEntry = 44840 },
		[66036] = { RecipeItemEntry = 46804, SkillIndex = 185, CreatedItemEntry = 44836 },
		[66037] = { RecipeItemEntry = 46807, SkillIndex = 185, CreatedItemEntry = 44838 },
		[66038] = { RecipeItemEntry = 46803, SkillIndex = 185, CreatedItemEntry = 44837 },
		[418243] = { SkillIndex = 185, CreatedItemEntry = 813931 },
		[966398] = { RecipeItemEntry = 100581, SkillIndex = 185, CreatedItemEntry = 100583 },
		[966425] = { RecipeItemEntry = 100610, SkillIndex = 185, CreatedItemEntry = 100597 },
		[966426] = { RecipeItemEntry = 100611, SkillIndex = 185, CreatedItemEntry = 100598 },
		[966427] = { RecipeItemEntry = 100612, SkillIndex = 185, CreatedItemEntry = 100599 },
		[966428] = { RecipeItemEntry = 100613, SkillIndex = 185, CreatedItemEntry = 100601 },
		[966429] = { RecipeItemEntry = 100614, SkillIndex = 185, CreatedItemEntry = 100602 },
		[966430] = { RecipeItemEntry = 100615, SkillIndex = 185, CreatedItemEntry = 100603 },
		[966431] = { RecipeItemEntry = 100616, SkillIndex = 185, CreatedItemEntry = 100604 },
		[966432] = { RecipeItemEntry = 100617, SkillIndex = 185, CreatedItemEntry = 100605 },
		[966433] = { RecipeItemEntry = 100618, SkillIndex = 185, CreatedItemEntry = 100606 },
		[966434] = { RecipeItemEntry = 100619, SkillIndex = 185, CreatedItemEntry = 100607 },
		[966435] = { RecipeItemEntry = 100620, SkillIndex = 185, CreatedItemEntry = 100608 },
		[966436] = { RecipeItemEntry = 100621, SkillIndex = 185, CreatedItemEntry = 100609 },
		[966455] = { RecipeItemEntry = 100627, SkillIndex = 185, CreatedItemEntry = 100626 },
		[968280] = { RecipeItemEntry = 967321, SkillIndex = 185, CreatedItemEntry = 967510 },
		[968281] = { RecipeItemEntry = 967322, SkillIndex = 185, CreatedItemEntry = 967511 },
		[968283] = { RecipeItemEntry = 967324, SkillIndex = 185, CreatedItemEntry = 967513 },
		[968284] = { RecipeItemEntry = 967325, SkillIndex = 185, CreatedItemEntry = 967514 },
		[968286] = { RecipeItemEntry = 967327, SkillIndex = 185, CreatedItemEntry = 967516 },
		[968287] = { RecipeItemEntry = 967328, SkillIndex = 185, CreatedItemEntry = 967517 },
		[968289] = { RecipeItemEntry = 967330, SkillIndex = 185, CreatedItemEntry = 967519 },
		[968290] = { RecipeItemEntry = 967331, SkillIndex = 185, CreatedItemEntry = 967520 },
		[968292] = { RecipeItemEntry = 967333, SkillIndex = 185, CreatedItemEntry = 967522 },
		[968293] = { RecipeItemEntry = 967334, SkillIndex = 185, CreatedItemEntry = 967523 },
		[968295] = { RecipeItemEntry = 967336, SkillIndex = 185, CreatedItemEntry = 967525 },
		[968296] = { RecipeItemEntry = 967337, SkillIndex = 185, CreatedItemEntry = 967526 },
		[968298] = { RecipeItemEntry = 967339, SkillIndex = 185, CreatedItemEntry = 967528 },
		[968299] = { RecipeItemEntry = 967340, SkillIndex = 185, CreatedItemEntry = 967529 },
		[968301] = { RecipeItemEntry = 967342, SkillIndex = 185, CreatedItemEntry = 967531 },
		[968302] = { RecipeItemEntry = 967343, SkillIndex = 185, CreatedItemEntry = 967532 },
		[968304] = { RecipeItemEntry = 967345, SkillIndex = 185, CreatedItemEntry = 967534 },
		[968305] = { RecipeItemEntry = 967346, SkillIndex = 185, CreatedItemEntry = 967535 },
		[968307] = { RecipeItemEntry = 967348, SkillIndex = 185, CreatedItemEntry = 967537 },
		[968308] = { RecipeItemEntry = 967349, SkillIndex = 185, CreatedItemEntry = 967538 },
		[968310] = { RecipeItemEntry = 967351, SkillIndex = 185, CreatedItemEntry = 967540 },
		[968311] = { RecipeItemEntry = 967352, SkillIndex = 185, CreatedItemEntry = 967541 },
		[968313] = { RecipeItemEntry = 967354, SkillIndex = 185, CreatedItemEntry = 967543 },
		[968314] = { RecipeItemEntry = 967355, SkillIndex = 185, CreatedItemEntry = 967544 },
		[968316] = { RecipeItemEntry = 967357, SkillIndex = 185, CreatedItemEntry = 967546 },
		[968317] = { RecipeItemEntry = 967358, SkillIndex = 185, CreatedItemEntry = 967547 },
		[968319] = { RecipeItemEntry = 967360, SkillIndex = 185, CreatedItemEntry = 967549 },
		[968320] = { RecipeItemEntry = 967361, SkillIndex = 185, CreatedItemEntry = 967550 },
		[968322] = { RecipeItemEntry = 967363, SkillIndex = 185, CreatedItemEntry = 967552 },
		[968323] = { RecipeItemEntry = 967364, SkillIndex = 185, CreatedItemEntry = 967553 },
		[968325] = { RecipeItemEntry = 967366, SkillIndex = 185, CreatedItemEntry = 967555 },
		[968326] = { RecipeItemEntry = 967367, SkillIndex = 185, CreatedItemEntry = 967556 },
		[968328] = { RecipeItemEntry = 967369, SkillIndex = 185, CreatedItemEntry = 967558 },
		[968329] = { RecipeItemEntry = 967370, SkillIndex = 185, CreatedItemEntry = 967559 },
		[968331] = { RecipeItemEntry = 967372, SkillIndex = 185, CreatedItemEntry = 967561 },
		[968332] = { RecipeItemEntry = 967373, SkillIndex = 185, CreatedItemEntry = 967562 },
		[968334] = { RecipeItemEntry = 967375, SkillIndex = 185, CreatedItemEntry = 967564 },
		[968335] = { RecipeItemEntry = 967376, SkillIndex = 185, CreatedItemEntry = 967565 },
		[968337] = { RecipeItemEntry = 967378, SkillIndex = 185, CreatedItemEntry = 967567 },
		[968338] = { RecipeItemEntry = 967379, SkillIndex = 185, CreatedItemEntry = 967568 },
		[968340] = { RecipeItemEntry = 967381, SkillIndex = 185, CreatedItemEntry = 967570 },
		[968341] = { RecipeItemEntry = 967382, SkillIndex = 185, CreatedItemEntry = 967571 },
		[968343] = { RecipeItemEntry = 967384, SkillIndex = 185, CreatedItemEntry = 967573 },
		[968344] = { RecipeItemEntry = 967385, SkillIndex = 185, CreatedItemEntry = 967574 },
		[968346] = { RecipeItemEntry = 967387, SkillIndex = 185, CreatedItemEntry = 967576 },
		[968347] = { RecipeItemEntry = 967388, SkillIndex = 185, CreatedItemEntry = 967577 },
		[968349] = { RecipeItemEntry = 967390, SkillIndex = 185, CreatedItemEntry = 967579 },
		[968350] = { RecipeItemEntry = 967391, SkillIndex = 185, CreatedItemEntry = 967580 },
		[968352] = { RecipeItemEntry = 967393, SkillIndex = 185, CreatedItemEntry = 967582 },
		[968353] = { RecipeItemEntry = 967394, SkillIndex = 185, CreatedItemEntry = 967583 },
		[968355] = { RecipeItemEntry = 967396, SkillIndex = 185, CreatedItemEntry = 967585 },
		[968356] = { RecipeItemEntry = 967397, SkillIndex = 185, CreatedItemEntry = 967586 },
		[968358] = { RecipeItemEntry = 967399, SkillIndex = 185, CreatedItemEntry = 967588 },
		[968359] = { RecipeItemEntry = 967400, SkillIndex = 185, CreatedItemEntry = 967589 },
		[968361] = { RecipeItemEntry = 967402, SkillIndex = 185, CreatedItemEntry = 967591 },
		[968362] = { RecipeItemEntry = 967403, SkillIndex = 185, CreatedItemEntry = 967592 },
		[968364] = { RecipeItemEntry = 967405, SkillIndex = 185, CreatedItemEntry = 967594 },
		[968365] = { RecipeItemEntry = 967406, SkillIndex = 185, CreatedItemEntry = 967595 },
		[968367] = { RecipeItemEntry = 967408, SkillIndex = 185, CreatedItemEntry = 967597 },
		[968368] = { RecipeItemEntry = 967409, SkillIndex = 185, CreatedItemEntry = 967598 },
		[968370] = { RecipeItemEntry = 967411, SkillIndex = 185, CreatedItemEntry = 967600 },
		[968371] = { RecipeItemEntry = 967412, SkillIndex = 185, CreatedItemEntry = 967601 },
		[968373] = { RecipeItemEntry = 967414, SkillIndex = 185, CreatedItemEntry = 967603 },
		[968374] = { RecipeItemEntry = 967415, SkillIndex = 185, CreatedItemEntry = 967604 },
		[968376] = { RecipeItemEntry = 967417, SkillIndex = 185, CreatedItemEntry = 967606 },
		[968377] = { RecipeItemEntry = 967418, SkillIndex = 185, CreatedItemEntry = 967607 },
		[968379] = { RecipeItemEntry = 967420, SkillIndex = 185, CreatedItemEntry = 967609 },
		[968380] = { RecipeItemEntry = 967421, SkillIndex = 185, CreatedItemEntry = 967610 },
		[968382] = { RecipeItemEntry = 967423, SkillIndex = 185, CreatedItemEntry = 967612 },
		[968383] = { RecipeItemEntry = 967424, SkillIndex = 185, CreatedItemEntry = 967613 },
		[968385] = { RecipeItemEntry = 967426, SkillIndex = 185, CreatedItemEntry = 967615 },
		[968386] = { RecipeItemEntry = 967427, SkillIndex = 185, CreatedItemEntry = 967616 },
		[968388] = { RecipeItemEntry = 967429, SkillIndex = 185, CreatedItemEntry = 967618 },
		[968389] = { RecipeItemEntry = 967430, SkillIndex = 185, CreatedItemEntry = 967619 },
		[968391] = { RecipeItemEntry = 967432, SkillIndex = 185, CreatedItemEntry = 967621 },
		[968392] = { RecipeItemEntry = 967433, SkillIndex = 185, CreatedItemEntry = 967622 },
		[968394] = { RecipeItemEntry = 967435, SkillIndex = 185, CreatedItemEntry = 967624 },
		[968395] = { RecipeItemEntry = 967436, SkillIndex = 185, CreatedItemEntry = 967625 },
		[968397] = { RecipeItemEntry = 967438, SkillIndex = 185, CreatedItemEntry = 967627 },
		[968398] = { RecipeItemEntry = 967439, SkillIndex = 185, CreatedItemEntry = 967628 },
		[968400] = { RecipeItemEntry = 967441, SkillIndex = 185, CreatedItemEntry = 967630 },
		[968401] = { RecipeItemEntry = 967442, SkillIndex = 185, CreatedItemEntry = 967631 },
		[968649] = { RecipeItemEntry = 967700, SkillIndex = 185, CreatedItemEntry = 967703 },
		[968650] = { RecipeItemEntry = 967701, SkillIndex = 185, CreatedItemEntry = 967704 },
		[968651] = { RecipeItemEntry = 967702, SkillIndex = 185, CreatedItemEntry = 967705 },
		[979345] = { RecipeItemEntry = 1203230, SkillIndex = 185, CreatedItemEntry = 1203471 },
		[979346] = { RecipeItemEntry = 1203231, SkillIndex = 185, CreatedItemEntry = 1203473 },
		[979347] = { RecipeItemEntry = 1203232, SkillIndex = 185, CreatedItemEntry = 1203475 },
		[979348] = { RecipeItemEntry = 1203233, SkillIndex = 185, CreatedItemEntry = 1203477 },
		[979355] = { RecipeItemEntry = 1203255, SkillIndex = 185, CreatedItemEntry = 1203243 },
		[979356] = { SkillIndex = 185, CreatedItemEntry = 1203244 },
		[979357] = { RecipeItemEntry = 1203257, SkillIndex = 185, CreatedItemEntry = 1203245 },
		[979384] = { RecipeItemEntry = 1203384, SkillIndex = 185, CreatedItemEntry = 1203280 },
		[979385] = { RecipeItemEntry = 1203385, SkillIndex = 185, CreatedItemEntry = 1203281 },
		[979386] = { RecipeItemEntry = 1203386, SkillIndex = 185, CreatedItemEntry = 1203282 },
		[979387] = { RecipeItemEntry = 1203387, SkillIndex = 185, CreatedItemEntry = 1203283 },
		[979388] = { RecipeItemEntry = 1203388, SkillIndex = 185, CreatedItemEntry = 1203284 },
		[979389] = { RecipeItemEntry = 1203389, SkillIndex = 185, CreatedItemEntry = 1203285 },
		[979390] = { RecipeItemEntry = 1203390, SkillIndex = 185, CreatedItemEntry = 1203286 },
		[979391] = { RecipeItemEntry = 1203391, SkillIndex = 185, CreatedItemEntry = 1203287 },
		[979392] = { RecipeItemEntry = 1203392, SkillIndex = 185, CreatedItemEntry = 1203288 },
		[979393] = { RecipeItemEntry = 1203393, SkillIndex = 185, CreatedItemEntry = 1203289 },
		[979394] = { RecipeItemEntry = 1203394, SkillIndex = 185, CreatedItemEntry = 1203290 },
		[979395] = { RecipeItemEntry = 1203395, SkillIndex = 185, CreatedItemEntry = 1203291 },
		[979396] = { RecipeItemEntry = 1203396, SkillIndex = 185, CreatedItemEntry = 1203292 },
		[979397] = { RecipeItemEntry = 1203397, SkillIndex = 185, CreatedItemEntry = 1203293 },
		[979398] = { RecipeItemEntry = 1203398, SkillIndex = 185, CreatedItemEntry = 1203294 },
		[979399] = { RecipeItemEntry = 1203399, SkillIndex = 185, CreatedItemEntry = 1203295 },
		[979400] = { RecipeItemEntry = 1203400, SkillIndex = 185, CreatedItemEntry = 1203296 },
		[979401] = { RecipeItemEntry = 1203401, SkillIndex = 185, CreatedItemEntry = 1203297 },
		[979402] = { RecipeItemEntry = 1203402, SkillIndex = 185, CreatedItemEntry = 1203298 },
		[979403] = { RecipeItemEntry = 1203403, SkillIndex = 185, CreatedItemEntry = 1203299 },
		[979404] = { RecipeItemEntry = 1203404, SkillIndex = 185, CreatedItemEntry = 1203300 },
		[979405] = { RecipeItemEntry = 1203405, SkillIndex = 185, CreatedItemEntry = 1203301 },
		[979406] = { RecipeItemEntry = 1203406, SkillIndex = 185, CreatedItemEntry = 1203302 },
		[979407] = { RecipeItemEntry = 1203407, SkillIndex = 185, CreatedItemEntry = 1203303 },
		[979408] = { RecipeItemEntry = 1203408, SkillIndex = 185, CreatedItemEntry = 1203304 },
		[979409] = { RecipeItemEntry = 1203409, SkillIndex = 185, CreatedItemEntry = 1203305 },
		[979410] = { RecipeItemEntry = 1203410, SkillIndex = 185, CreatedItemEntry = 1203306 },
		[979412] = { RecipeItemEntry = 1203411, SkillIndex = 185, CreatedItemEntry = 1203307 },
		[979413] = { RecipeItemEntry = 1203412, SkillIndex = 185, CreatedItemEntry = 1203308 },
		[979414] = { RecipeItemEntry = 1203413, SkillIndex = 185, CreatedItemEntry = 1203309 },
		[979415] = { RecipeItemEntry = 1203414, SkillIndex = 185, CreatedItemEntry = 1203310 },
		[979416] = { RecipeItemEntry = 1203415, SkillIndex = 185, CreatedItemEntry = 1203311 },
		[979417] = { RecipeItemEntry = 1203416, SkillIndex = 185, CreatedItemEntry = 1203312 },
		[979418] = { RecipeItemEntry = 1203417, SkillIndex = 185, CreatedItemEntry = 1203313 },
		[979419] = { RecipeItemEntry = 1203418, SkillIndex = 185, CreatedItemEntry = 1203314 },
		[979420] = { RecipeItemEntry = 1203419, SkillIndex = 185, CreatedItemEntry = 1203315 },
		[979421] = { RecipeItemEntry = 1203420, SkillIndex = 185, CreatedItemEntry = 1203316 },
		[979422] = { RecipeItemEntry = 1203421, SkillIndex = 185, CreatedItemEntry = 1203317 },
		[979423] = { RecipeItemEntry = 1203422, SkillIndex = 185, CreatedItemEntry = 1203318 },
		[979424] = { RecipeItemEntry = 1203423, SkillIndex = 185, CreatedItemEntry = 1203319 },
		[979425] = { RecipeItemEntry = 1203424, SkillIndex = 185, CreatedItemEntry = 1203320 },
		[979426] = { RecipeItemEntry = 1203425, SkillIndex = 185, CreatedItemEntry = 1203321 },
		[979427] = { RecipeItemEntry = 1203426, SkillIndex = 185, CreatedItemEntry = 1203322 },
		[979428] = { RecipeItemEntry = 1203427, SkillIndex = 185, CreatedItemEntry = 1203323 },
		[979429] = { RecipeItemEntry = 1203428, SkillIndex = 185, CreatedItemEntry = 1203324 },
		[979430] = { RecipeItemEntry = 1203429, SkillIndex = 185, CreatedItemEntry = 1203325 },
		[979431] = { RecipeItemEntry = 1203430, SkillIndex = 185, CreatedItemEntry = 1203326 },
		[979432] = { RecipeItemEntry = 1203431, SkillIndex = 185, CreatedItemEntry = 1203327 },
		[979433] = { RecipeItemEntry = 1203432, SkillIndex = 185, CreatedItemEntry = 1203328 },
		[979434] = { RecipeItemEntry = 1203433, SkillIndex = 185, CreatedItemEntry = 1203329 },
		[979435] = { RecipeItemEntry = 1203434, SkillIndex = 185, CreatedItemEntry = 1203330 },
		[979436] = { RecipeItemEntry = 1203435, SkillIndex = 185, CreatedItemEntry = 1203331 },
		[979437] = { RecipeItemEntry = 1203436, SkillIndex = 185, CreatedItemEntry = 1203332 },
		[979438] = { RecipeItemEntry = 1203437, SkillIndex = 185, CreatedItemEntry = 1203333 },
		[979439] = { RecipeItemEntry = 1203438, SkillIndex = 185, CreatedItemEntry = 1203334 },
		[979440] = { RecipeItemEntry = 1203439, SkillIndex = 185, CreatedItemEntry = 1203335 },
		[979441] = { RecipeItemEntry = 1203440, SkillIndex = 185, CreatedItemEntry = 1203336 },
		[979442] = { RecipeItemEntry = 1203441, SkillIndex = 185, CreatedItemEntry = 1203337 },
		[979443] = { RecipeItemEntry = 1203442, SkillIndex = 185, CreatedItemEntry = 1203338 },
		[979444] = { RecipeItemEntry = 1203443, SkillIndex = 185, CreatedItemEntry = 1203339 },
		[979445] = { RecipeItemEntry = 1203444, SkillIndex = 185, CreatedItemEntry = 1203340 },
		[979446] = { RecipeItemEntry = 1203445, SkillIndex = 185, CreatedItemEntry = 1203341 },
		[979447] = { RecipeItemEntry = 1203446, SkillIndex = 185, CreatedItemEntry = 1203342 },
		[979448] = { RecipeItemEntry = 1203447, SkillIndex = 185, CreatedItemEntry = 1203343 },
		[979449] = { RecipeItemEntry = 1203448, SkillIndex = 185, CreatedItemEntry = 1203344 },
		[979450] = { RecipeItemEntry = 1203449, SkillIndex = 185, CreatedItemEntry = 1203345 },
		[979451] = { RecipeItemEntry = 1203450, SkillIndex = 185, CreatedItemEntry = 1203346 },
		[979452] = { RecipeItemEntry = 1203451, SkillIndex = 185, CreatedItemEntry = 1203347 },
		[979453] = { RecipeItemEntry = 1203452, SkillIndex = 185, CreatedItemEntry = 1203348 },
		[979454] = { RecipeItemEntry = 1203453, SkillIndex = 185, CreatedItemEntry = 1203349 },
		[979455] = { RecipeItemEntry = 1203454, SkillIndex = 185, CreatedItemEntry = 1203350 },
		[979456] = { RecipeItemEntry = 1203455, SkillIndex = 185, CreatedItemEntry = 1203351 },
		[979457] = { RecipeItemEntry = 1203456, SkillIndex = 185, CreatedItemEntry = 1203352 },
		[979458] = { RecipeItemEntry = 1203457, SkillIndex = 185, CreatedItemEntry = 1203353 },
		[979459] = { RecipeItemEntry = 1203458, SkillIndex = 185, CreatedItemEntry = 1203354 },
		[979460] = { RecipeItemEntry = 1203459, SkillIndex = 185, CreatedItemEntry = 1203355 },
		[979461] = { RecipeItemEntry = 1203460, SkillIndex = 185, CreatedItemEntry = 1203356 },
		[979462] = { RecipeItemEntry = 1203461, SkillIndex = 185, CreatedItemEntry = 1203357 },
		[979463] = { RecipeItemEntry = 1203462, SkillIndex = 185, CreatedItemEntry = 1203358 },
		[979464] = { RecipeItemEntry = 1203463, SkillIndex = 185, CreatedItemEntry = 1203359 },
		[979465] = { RecipeItemEntry = 1203464, SkillIndex = 185, CreatedItemEntry = 1203360 },
		[979466] = { RecipeItemEntry = 1203465, SkillIndex = 185, CreatedItemEntry = 1203361 },
		[979514] = { SkillIndex = 185, CreatedItemEntry = 1203470 },
		[979515] = { SkillIndex = 185, CreatedItemEntry = 1203471 },
		[979516] = { SkillIndex = 185, CreatedItemEntry = 1203472 },
		[979517] = { SkillIndex = 185, CreatedItemEntry = 1203473 },
		[979518] = { SkillIndex = 185, CreatedItemEntry = 1203474 },
		[979519] = { SkillIndex = 185, CreatedItemEntry = 1203475 },
		[979520] = { SkillIndex = 185, CreatedItemEntry = 1203476 },
		[979521] = { SkillIndex = 185, CreatedItemEntry = 1203477 },
		[1979345] = { RecipeItemEntry = 1303537, SkillIndex = 185, CreatedItemEntry = 1303471 },
		[1979346] = { RecipeItemEntry = 1303538, SkillIndex = 185, CreatedItemEntry = 1303473 },
		[1979347] = { RecipeItemEntry = 1303539, SkillIndex = 185, CreatedItemEntry = 1303475 },
		[1979348] = { RecipeItemEntry = 1303540, SkillIndex = 185, CreatedItemEntry = 1303477 },
		[1979514] = { SkillIndex = 185, CreatedItemEntry = 1303470 },
		[1979515] = { SkillIndex = 185, CreatedItemEntry = 1303471 },
		[1979516] = { SkillIndex = 185, CreatedItemEntry = 1303472 },
		[1979517] = { SkillIndex = 185, CreatedItemEntry = 1303473 },
		[1979520] = { SkillIndex = 185, CreatedItemEntry = 1303476 },
		[1979521] = { SkillIndex = 185, CreatedItemEntry = 1303477 },
		[2657] = { SkillIndex = 186, CreatedItemEntry = 2840 },
		[2658] = { SkillIndex = 186, CreatedItemEntry = 2842 },
		[2659] = { SkillIndex = 186, CreatedItemEntry = 2841 },
		[3304] = { SkillIndex = 186, CreatedItemEntry = 3576 },
		[3307] = { SkillIndex = 186, CreatedItemEntry = 3575 },
		[3308] = { SkillIndex = 186, CreatedItemEntry = 3577 },
		[3569] = { SkillIndex = 186, CreatedItemEntry = 3859 },
		[10097] = { SkillIndex = 186, CreatedItemEntry = 3860 },
		[10098] = { SkillIndex = 186, CreatedItemEntry = 6037 },
		[14891] = { SkillIndex = 186, CreatedItemEntry = 11371 },
		[16153] = { SkillIndex = 186, CreatedItemEntry = 12359 },
		[22967] = { RecipeItemEntry = 44956, SkillIndex = 186, CreatedItemEntry = 17771 },
		[29356] = { SkillIndex = 186, CreatedItemEntry = 23445 },
		[29358] = { SkillIndex = 186, CreatedItemEntry = 23446 },
		[29359] = { SkillIndex = 186, CreatedItemEntry = 23447 },
		[29360] = { SkillIndex = 186, CreatedItemEntry = 23448 },
		[29361] = { SkillIndex = 186, CreatedItemEntry = 23449 },
		[29686] = { SkillIndex = 186, CreatedItemEntry = 23573 },
		[35750] = { SkillIndex = 186, CreatedItemEntry = 22573 },
		[35751] = { SkillIndex = 186, CreatedItemEntry = 22574 },
		[46353] = { RecipeItemEntry = 35273, SkillIndex = 186, CreatedItemEntry = 35128 },
		[49252] = { SkillIndex = 186, CreatedItemEntry = 36916 },
		[49258] = { SkillIndex = 186, CreatedItemEntry = 36913 },
		[55208] = { SkillIndex = 186, CreatedItemEntry = 37663 },
		[55211] = { SkillIndex = 186, CreatedItemEntry = 41163 },
		[70524] = { SkillIndex = 186, CreatedItemEntry = 12655 },
		[979337] = { RecipeItemEntry = 1203222, SkillIndex = 186, CreatedItemEntry = 1203481 },
		[979338] = { RecipeItemEntry = 1203223, SkillIndex = 186, CreatedItemEntry = 1203131 },
		[979339] = { RecipeItemEntry = 1203224, SkillIndex = 186, CreatedItemEntry = 1203133 },
		[979340] = { RecipeItemEntry = 1203225, SkillIndex = 186, CreatedItemEntry = 1203135 },
		[979476] = { SkillIndex = 186, CreatedItemEntry = 1203480 },
		[979477] = { SkillIndex = 186, CreatedItemEntry = 1203481 },
		[979478] = { SkillIndex = 186, CreatedItemEntry = 1203130 },
		[979479] = { SkillIndex = 186, CreatedItemEntry = 1203131 },
		[979480] = { SkillIndex = 186, CreatedItemEntry = 1203132 },
		[979481] = { SkillIndex = 186, CreatedItemEntry = 1203133 },
		[979482] = { SkillIndex = 186, CreatedItemEntry = 1203134 },
		[979483] = { SkillIndex = 186, CreatedItemEntry = 1203135 },
		[1979476] = { SkillIndex = 186, CreatedItemEntry = 1303480 },
		[1979477] = { SkillIndex = 186, CreatedItemEntry = 1303481 },
		[1979478] = { SkillIndex = 186, CreatedItemEntry = 1303130 },
		[1979479] = { SkillIndex = 186, CreatedItemEntry = 1303131 },
		[1979482] = { SkillIndex = 186, CreatedItemEntry = 1303134 },
		[1979483] = { SkillIndex = 186, CreatedItemEntry = 1303135 },
		[2385] = { SkillIndex = 197, CreatedItemEntry = 2568 },
		[2386] = { SkillIndex = 197, CreatedItemEntry = 2569 },
		[2387] = { SkillIndex = 197, CreatedItemEntry = 2570 },
		[2389] = { RecipeItemEntry = 2598, SkillIndex = 197, CreatedItemEntry = 2572 },
		[2392] = { SkillIndex = 197, CreatedItemEntry = 2575 },
		[2393] = { SkillIndex = 197, CreatedItemEntry = 2576 },
		[2394] = { SkillIndex = 197, CreatedItemEntry = 2577 },
		[2395] = { SkillIndex = 197, CreatedItemEntry = 2578 },
		[2396] = { SkillIndex = 197, CreatedItemEntry = 2579 },
		[2397] = { SkillIndex = 197, CreatedItemEntry = 2580 },
		[2399] = { SkillIndex = 197, CreatedItemEntry = 2582 },
		[2401] = { SkillIndex = 197, CreatedItemEntry = 2583 },
		[2402] = { SkillIndex = 197, CreatedItemEntry = 2584 },
		[2403] = { RecipeItemEntry = 2601, SkillIndex = 197, CreatedItemEntry = 2585 },
		[2406] = { SkillIndex = 197, CreatedItemEntry = 2587 },
		[2963] = { SkillIndex = 197, CreatedItemEntry = 2996 },
		[2964] = { SkillIndex = 197, CreatedItemEntry = 2997 },
		[3755] = { SkillIndex = 197, CreatedItemEntry = 4238 },
		[3757] = { SkillIndex = 197, CreatedItemEntry = 4240 },
		[3758] = { RecipeItemEntry = 4292, SkillIndex = 197, CreatedItemEntry = 4241 },
		[3813] = { SkillIndex = 197, CreatedItemEntry = 4245 },
		[3839] = { SkillIndex = 197, CreatedItemEntry = 4305 },
		[3840] = { SkillIndex = 197, CreatedItemEntry = 4307 },
		[3841] = { SkillIndex = 197, CreatedItemEntry = 4308 },
		[3842] = { SkillIndex = 197, CreatedItemEntry = 4309 },
		[3843] = { SkillIndex = 197, CreatedItemEntry = 4310 },
		[3844] = { RecipeItemEntry = 4346, SkillIndex = 197, CreatedItemEntry = 4311 },
		[3845] = { SkillIndex = 197, CreatedItemEntry = 4312 },
		[3847] = { RecipeItemEntry = 4345, SkillIndex = 197, CreatedItemEntry = 4313 },
		[3848] = { SkillIndex = 197, CreatedItemEntry = 4314 },
		[3849] = { RecipeItemEntry = 4347, SkillIndex = 197, CreatedItemEntry = 4315 },
		[3850] = { SkillIndex = 197, CreatedItemEntry = 4316 },
		[3851] = { RecipeItemEntry = 4349, SkillIndex = 197, CreatedItemEntry = 4317 },
		[3852] = { SkillIndex = 197, CreatedItemEntry = 4318 },
		[3854] = { RecipeItemEntry = 7114, SkillIndex = 197, CreatedItemEntry = 4319 },
		[3855] = { SkillIndex = 197, CreatedItemEntry = 4320 },
		[3856] = { RecipeItemEntry = 4350, SkillIndex = 197, CreatedItemEntry = 4321 },
		[3857] = { RecipeItemEntry = 14630, SkillIndex = 197, CreatedItemEntry = 4322 },
		[3858] = { RecipeItemEntry = 4351, SkillIndex = 197, CreatedItemEntry = 4323 },
		[3859] = { SkillIndex = 197, CreatedItemEntry = 4324 },
		[3860] = { RecipeItemEntry = 4352, SkillIndex = 197, CreatedItemEntry = 4325 },
		[3861] = { SkillIndex = 197, CreatedItemEntry = 4326 },
		[3862] = { RecipeItemEntry = 4355, SkillIndex = 197, CreatedItemEntry = 4327 },
		[3863] = { RecipeItemEntry = 4353, SkillIndex = 197, CreatedItemEntry = 4328 },
		[3864] = { RecipeItemEntry = 4356, SkillIndex = 197, CreatedItemEntry = 4329 },
		[3865] = { SkillIndex = 197, CreatedItemEntry = 4339 },
		[3866] = { SkillIndex = 197, CreatedItemEntry = 4330 },
		[3868] = { RecipeItemEntry = 4348, SkillIndex = 197, CreatedItemEntry = 4331 },
		[3869] = { RecipeItemEntry = 14627, SkillIndex = 197, CreatedItemEntry = 4332 },
		[3870] = { RecipeItemEntry = 6401, SkillIndex = 197, CreatedItemEntry = 4333 },
		[3871] = { SkillIndex = 197, CreatedItemEntry = 4334 },
		[3872] = { RecipeItemEntry = 4354, SkillIndex = 197, CreatedItemEntry = 4335 },
		[3873] = { RecipeItemEntry = 10728, SkillIndex = 197, CreatedItemEntry = 4336 },
		[3914] = { SkillIndex = 197, CreatedItemEntry = 4343 },
		[3915] = { SkillIndex = 197, CreatedItemEntry = 4344 },
		[6521] = { SkillIndex = 197, CreatedItemEntry = 5542 },
		[6686] = { RecipeItemEntry = 5771, SkillIndex = 197, CreatedItemEntry = 5762 },
		[6688] = { RecipeItemEntry = 5772, SkillIndex = 197, CreatedItemEntry = 5763 },
		[6690] = { SkillIndex = 197, CreatedItemEntry = 5766 },
		[6692] = { RecipeItemEntry = 5773, SkillIndex = 197, CreatedItemEntry = 5770 },
		[6693] = { RecipeItemEntry = 5774, SkillIndex = 197, CreatedItemEntry = 5764 },
		[6695] = { RecipeItemEntry = 5775, SkillIndex = 197, CreatedItemEntry = 5765 },
		[7623] = { SkillIndex = 197, CreatedItemEntry = 6238 },
		[7624] = { SkillIndex = 197, CreatedItemEntry = 6241 },
		[7629] = { RecipeItemEntry = 6271, SkillIndex = 197, CreatedItemEntry = 6239 },
		[7630] = { RecipeItemEntry = 6270, SkillIndex = 197, CreatedItemEntry = 6240 },
		[7633] = { RecipeItemEntry = 6272, SkillIndex = 197, CreatedItemEntry = 6242 },
		[7636] = { SkillIndex = 197, CreatedItemEntry = 6243 },
		[7639] = { RecipeItemEntry = 6274, SkillIndex = 197, CreatedItemEntry = 6263 },
		[7643] = { RecipeItemEntry = 6275, SkillIndex = 197, CreatedItemEntry = 6264 },
		[7892] = { RecipeItemEntry = 6390, SkillIndex = 197, CreatedItemEntry = 6384 },
		[7893] = { RecipeItemEntry = 6391, SkillIndex = 197, CreatedItemEntry = 6385 },
		[8465] = { SkillIndex = 197, CreatedItemEntry = 6786 },
		[8467] = { SkillIndex = 197, CreatedItemEntry = 6787 },
		[8483] = { SkillIndex = 197, CreatedItemEntry = 6795 },
		[8489] = { SkillIndex = 197, CreatedItemEntry = 6796 },
		[8758] = { SkillIndex = 197, CreatedItemEntry = 7046 },
		[8760] = { SkillIndex = 197, CreatedItemEntry = 7048 },
		[8762] = { SkillIndex = 197, CreatedItemEntry = 7050 },
		[8764] = { SkillIndex = 197, CreatedItemEntry = 7051 },
		[8766] = { SkillIndex = 197, CreatedItemEntry = 7052 },
		[8770] = { SkillIndex = 197, CreatedItemEntry = 7054 },
		[8772] = { SkillIndex = 197, CreatedItemEntry = 7055 },
		[8774] = { SkillIndex = 197, CreatedItemEntry = 7057 },
		[8776] = { SkillIndex = 197, CreatedItemEntry = 7026 },
		[8778] = { SkillIndex = 197, CreatedItemEntry = 7027 },
		[8780] = { RecipeItemEntry = 7092, SkillIndex = 197, CreatedItemEntry = 7047 },
		[8782] = { RecipeItemEntry = 7091, SkillIndex = 197, CreatedItemEntry = 7049 },
		[8784] = { RecipeItemEntry = 7090, SkillIndex = 197, CreatedItemEntry = 7065 },
		[8786] = { RecipeItemEntry = 7089, SkillIndex = 197, CreatedItemEntry = 7053 },
		[8789] = { RecipeItemEntry = 7087, SkillIndex = 197, CreatedItemEntry = 7056 },
		[8791] = { SkillIndex = 197, CreatedItemEntry = 7058 },
		[8793] = { RecipeItemEntry = 7084, SkillIndex = 197, CreatedItemEntry = 7059 },
		[8795] = { RecipeItemEntry = 7085, SkillIndex = 197, CreatedItemEntry = 7060 },
		[8797] = { RecipeItemEntry = 7086, SkillIndex = 197, CreatedItemEntry = 7061 },
		[8799] = { SkillIndex = 197, CreatedItemEntry = 7062 },
		[8802] = { RecipeItemEntry = 7088, SkillIndex = 197, CreatedItemEntry = 7063 },
		[8804] = { SkillIndex = 197, CreatedItemEntry = 7064 },
		[12044] = { SkillIndex = 197, CreatedItemEntry = 10045 },
		[12045] = { SkillIndex = 197, CreatedItemEntry = 10046 },
		[12046] = { SkillIndex = 197, CreatedItemEntry = 10047 },
		[12047] = { RecipeItemEntry = 10316, SkillIndex = 197, CreatedItemEntry = 10048 },
		[12048] = { SkillIndex = 197, CreatedItemEntry = 9998 },
		[12049] = { SkillIndex = 197, CreatedItemEntry = 9999 },
		[12050] = { SkillIndex = 197, CreatedItemEntry = 10001 },
		[12052] = { SkillIndex = 197, CreatedItemEntry = 10002 },
		[12053] = { SkillIndex = 197, CreatedItemEntry = 10003 },
		[12055] = { SkillIndex = 197, CreatedItemEntry = 10004 },
		[12056] = { RecipeItemEntry = 10300, SkillIndex = 197, CreatedItemEntry = 10007 },
		[12059] = { RecipeItemEntry = 10301, SkillIndex = 197, CreatedItemEntry = 10008 },
		[12060] = { RecipeItemEntry = 10302, SkillIndex = 197, CreatedItemEntry = 10009 },
		[12061] = { SkillIndex = 197, CreatedItemEntry = 10056 },
		[12062] = { SkillIndex = 197, CreatedItemEntry = 10010 },
		[12063] = { SkillIndex = 197, CreatedItemEntry = 10011 },
		[12064] = { RecipeItemEntry = 10311, SkillIndex = 197, CreatedItemEntry = 10052 },
		[12065] = { SkillIndex = 197, CreatedItemEntry = 10050 },
		[12066] = { RecipeItemEntry = 10312, SkillIndex = 197, CreatedItemEntry = 10018 },
		[12067] = { SkillIndex = 197, CreatedItemEntry = 10019 },
		[12068] = { SkillIndex = 197, CreatedItemEntry = 10020 },
		[12069] = { SkillIndex = 197, CreatedItemEntry = 10042 },
		[12070] = { SkillIndex = 197, CreatedItemEntry = 10021 },
		[12071] = { SkillIndex = 197, CreatedItemEntry = 10023 },
		[12072] = { SkillIndex = 197, CreatedItemEntry = 10024 },
		[12073] = { SkillIndex = 197, CreatedItemEntry = 10026 },
		[12074] = { SkillIndex = 197, CreatedItemEntry = 10027 },
		[12075] = { RecipeItemEntry = 10314, SkillIndex = 197, CreatedItemEntry = 10054 },
		[12076] = { SkillIndex = 197, CreatedItemEntry = 10028 },
		[12077] = { SkillIndex = 197, CreatedItemEntry = 10053 },
		[12078] = { RecipeItemEntry = 10315, SkillIndex = 197, CreatedItemEntry = 10029 },
		[12079] = { SkillIndex = 197, CreatedItemEntry = 10051 },
		[12080] = { RecipeItemEntry = 10317, SkillIndex = 197, CreatedItemEntry = 10055 },
		[12081] = { RecipeItemEntry = 10318, SkillIndex = 197, CreatedItemEntry = 10030 },
		[12082] = { SkillIndex = 197, CreatedItemEntry = 10031 },
		[12083] = { SkillIndex = 197, CreatedItemEntry = 10032 },
		[12084] = { RecipeItemEntry = 10320, SkillIndex = 197, CreatedItemEntry = 10033 },
		[12085] = { RecipeItemEntry = 10321, SkillIndex = 197, CreatedItemEntry = 10034 },
		[12086] = { RecipeItemEntry = 10463, SkillIndex = 197, CreatedItemEntry = 10025 },
		[12087] = { SkillIndex = 197, CreatedItemEntry = 10038 },
		[12088] = { SkillIndex = 197, CreatedItemEntry = 10044 },
		[12089] = { RecipeItemEntry = 10323, SkillIndex = 197, CreatedItemEntry = 10035 },
		[12090] = { SkillIndex = 197, CreatedItemEntry = 10039 },
		[12091] = { RecipeItemEntry = 10325, SkillIndex = 197, CreatedItemEntry = 10040 },
		[12092] = { SkillIndex = 197, CreatedItemEntry = 10041 },
		[12093] = { RecipeItemEntry = 10326, SkillIndex = 197, CreatedItemEntry = 10036 },
		[18401] = { SkillIndex = 197, CreatedItemEntry = 14048 },
		[18402] = { SkillIndex = 197, CreatedItemEntry = 13856 },
		[18403] = { RecipeItemEntry = 14466, SkillIndex = 197, CreatedItemEntry = 13869 },
		[18404] = { RecipeItemEntry = 14467, SkillIndex = 197, CreatedItemEntry = 13868 },
		[18405] = { RecipeItemEntry = 14468, SkillIndex = 197, CreatedItemEntry = 14046 },
		[18406] = { RecipeItemEntry = 14469, SkillIndex = 197, CreatedItemEntry = 13858 },
		[18407] = { RecipeItemEntry = 14470, SkillIndex = 197, CreatedItemEntry = 13857 },
		[18408] = { RecipeItemEntry = 14471, SkillIndex = 197, CreatedItemEntry = 14042 },
		[18409] = { RecipeItemEntry = 14472, SkillIndex = 197, CreatedItemEntry = 13860 },
		[18410] = { RecipeItemEntry = 14473, SkillIndex = 197, CreatedItemEntry = 14143 },
		[18411] = { RecipeItemEntry = 14474, SkillIndex = 197, CreatedItemEntry = 13870 },
		[18412] = { RecipeItemEntry = 14476, SkillIndex = 197, CreatedItemEntry = 14043 },
		[18413] = { RecipeItemEntry = 14477, SkillIndex = 197, CreatedItemEntry = 14142 },
		[18414] = { RecipeItemEntry = 14478, SkillIndex = 197, CreatedItemEntry = 14100 },
		[18415] = { RecipeItemEntry = 14479, SkillIndex = 197, CreatedItemEntry = 14101 },
		[18416] = { RecipeItemEntry = 14480, SkillIndex = 197, CreatedItemEntry = 14141 },
		[18417] = { RecipeItemEntry = 14481, SkillIndex = 197, CreatedItemEntry = 13863 },
		[18418] = { RecipeItemEntry = 14482, SkillIndex = 197, CreatedItemEntry = 14044 },
		[18419] = { RecipeItemEntry = 14483, SkillIndex = 197, CreatedItemEntry = 14107 },
		[18420] = { RecipeItemEntry = 14484, SkillIndex = 197, CreatedItemEntry = 14103 },
		[18421] = { RecipeItemEntry = 14485, SkillIndex = 197, CreatedItemEntry = 14132 },
		[18422] = { RecipeItemEntry = 14486, SkillIndex = 197, CreatedItemEntry = 14134 },
		[18423] = { RecipeItemEntry = 14488, SkillIndex = 197, CreatedItemEntry = 13864 },
		[18424] = { RecipeItemEntry = 14489, SkillIndex = 197, CreatedItemEntry = 13871 },
		[18434] = { RecipeItemEntry = 14490, SkillIndex = 197, CreatedItemEntry = 14045 },
		[18436] = { RecipeItemEntry = 14493, SkillIndex = 197, CreatedItemEntry = 14136 },
		[18437] = { RecipeItemEntry = 14492, SkillIndex = 197, CreatedItemEntry = 14108 },
		[18438] = { RecipeItemEntry = 14491, SkillIndex = 197, CreatedItemEntry = 13865 },
		[18439] = { RecipeItemEntry = 14494, SkillIndex = 197, CreatedItemEntry = 14104 },
		[18440] = { RecipeItemEntry = 14497, SkillIndex = 197, CreatedItemEntry = 14137 },
		[18441] = { RecipeItemEntry = 14495, SkillIndex = 197, CreatedItemEntry = 14144 },
		[18442] = { RecipeItemEntry = 14496, SkillIndex = 197, CreatedItemEntry = 14111 },
		[18444] = { RecipeItemEntry = 14498, SkillIndex = 197, CreatedItemEntry = 13866 },
		[18445] = { RecipeItemEntry = 14499, SkillIndex = 197, CreatedItemEntry = 14155 },
		[18446] = { RecipeItemEntry = 14500, SkillIndex = 197, CreatedItemEntry = 14128 },
		[18447] = { RecipeItemEntry = 14501, SkillIndex = 197, CreatedItemEntry = 14138 },
		[18448] = { RecipeItemEntry = 14507, SkillIndex = 197, CreatedItemEntry = 14139 },
		[18449] = { RecipeItemEntry = 14504, SkillIndex = 197, CreatedItemEntry = 13867 },
		[18450] = { RecipeItemEntry = 14505, SkillIndex = 197, CreatedItemEntry = 14130 },
		[18451] = { RecipeItemEntry = 14506, SkillIndex = 197, CreatedItemEntry = 14106 },
		[18452] = { RecipeItemEntry = 14509, SkillIndex = 197, CreatedItemEntry = 14140 },
		[18453] = { RecipeItemEntry = 14508, SkillIndex = 197, CreatedItemEntry = 14112 },
		[18454] = { RecipeItemEntry = 14511, SkillIndex = 197, CreatedItemEntry = 14146 },
		[18455] = { RecipeItemEntry = 14510, SkillIndex = 197, CreatedItemEntry = 14156 },
		[18456] = { RecipeItemEntry = 14512, SkillIndex = 197, CreatedItemEntry = 14154 },
		[18457] = { RecipeItemEntry = 14513, SkillIndex = 197, CreatedItemEntry = 14152 },
		[18458] = { RecipeItemEntry = 14514, SkillIndex = 197, CreatedItemEntry = 14153 },
		[18560] = { RecipeItemEntry = 14526, SkillIndex = 197, CreatedItemEntry = 14342 },
		[19435] = { SkillIndex = 197, CreatedItemEntry = 15802 },
		[20848] = { RecipeItemEntry = 17017, SkillIndex = 197, CreatedItemEntry = 16980 },
		[20849] = { RecipeItemEntry = 17018, SkillIndex = 197, CreatedItemEntry = 16979 },
		[21945] = { RecipeItemEntry = 17724, SkillIndex = 197, CreatedItemEntry = 17723 },
		[22759] = { RecipeItemEntry = 18265, SkillIndex = 197, CreatedItemEntry = 18263 },
		[22813] = { SkillIndex = 197, CreatedItemEntry = 18258 },
		[22866] = { RecipeItemEntry = 18414, SkillIndex = 197, CreatedItemEntry = 18405 },
		[22867] = { RecipeItemEntry = 18415, SkillIndex = 197, CreatedItemEntry = 18407 },
		[22868] = { RecipeItemEntry = 18416, SkillIndex = 197, CreatedItemEntry = 18408 },
		[22869] = { RecipeItemEntry = 18417, SkillIndex = 197, CreatedItemEntry = 18409 },
		[22870] = { RecipeItemEntry = 18418, SkillIndex = 197, CreatedItemEntry = 18413 },
		[22902] = { RecipeItemEntry = 18487, SkillIndex = 197, CreatedItemEntry = 18486 },
		[23662] = { RecipeItemEntry = 19215, SkillIndex = 197, CreatedItemEntry = 19047 },
		[23663] = { RecipeItemEntry = 19218, SkillIndex = 197, CreatedItemEntry = 19050 },
		[23664] = { RecipeItemEntry = 19216, SkillIndex = 197, CreatedItemEntry = 19056 },
		[23665] = { RecipeItemEntry = 19217, SkillIndex = 197, CreatedItemEntry = 19059 },
		[23666] = { RecipeItemEntry = 19219, SkillIndex = 197, CreatedItemEntry = 19156 },
		[23667] = { RecipeItemEntry = 19220, SkillIndex = 197, CreatedItemEntry = 19165 },
		[24091] = { RecipeItemEntry = 19764, SkillIndex = 197, CreatedItemEntry = 19682 },
		[24092] = { RecipeItemEntry = 19765, SkillIndex = 197, CreatedItemEntry = 19683 },
		[24093] = { RecipeItemEntry = 19766, SkillIndex = 197, CreatedItemEntry = 19684 },
		[24901] = { RecipeItemEntry = 20546, SkillIndex = 197, CreatedItemEntry = 20538 },
		[24902] = { RecipeItemEntry = 20548, SkillIndex = 197, CreatedItemEntry = 20539 },
		[24903] = { RecipeItemEntry = 20547, SkillIndex = 197, CreatedItemEntry = 20537 },
		[26085] = { RecipeItemEntry = 21358, SkillIndex = 197, CreatedItemEntry = 21340 },
		[26086] = { SkillIndex = 197, CreatedItemEntry = 21341 },
		[26087] = { RecipeItemEntry = 21371, SkillIndex = 197, CreatedItemEntry = 21342 },
		[26403] = { RecipeItemEntry = 21722, SkillIndex = 197, CreatedItemEntry = 21154 },
		[26407] = { RecipeItemEntry = 21723, SkillIndex = 197, CreatedItemEntry = 21542 },
		[26745] = { SkillIndex = 197, CreatedItemEntry = 21840 },
		[26746] = { SkillIndex = 197, CreatedItemEntry = 21841 },
		[26747] = { RecipeItemEntry = 21892, SkillIndex = 197, CreatedItemEntry = 21842 },
		[26749] = { RecipeItemEntry = 21893, SkillIndex = 197, CreatedItemEntry = 21843 },
		[26750] = { RecipeItemEntry = 21894, SkillIndex = 197, CreatedItemEntry = 21844 },
		[26751] = { RecipeItemEntry = 21895, SkillIndex = 197, CreatedItemEntry = 21845 },
		[26752] = { RecipeItemEntry = 21908, SkillIndex = 197, CreatedItemEntry = 21846 },
		[26753] = { RecipeItemEntry = 21909, SkillIndex = 197, CreatedItemEntry = 21847 },
		[26754] = { RecipeItemEntry = 21910, SkillIndex = 197, CreatedItemEntry = 21848 },
		[26755] = { RecipeItemEntry = 21911, SkillIndex = 197, CreatedItemEntry = 21858 },
		[26756] = { RecipeItemEntry = 21912, SkillIndex = 197, CreatedItemEntry = 21869 },
		[26757] = { RecipeItemEntry = 21914, SkillIndex = 197, CreatedItemEntry = 21870 },
		[26758] = { RecipeItemEntry = 21913, SkillIndex = 197, CreatedItemEntry = 21871 },
		[26759] = { RecipeItemEntry = 21915, SkillIndex = 197, CreatedItemEntry = 21872 },
		[26760] = { RecipeItemEntry = 21916, SkillIndex = 197, CreatedItemEntry = 21873 },
		[26761] = { RecipeItemEntry = 21918, SkillIndex = 197, CreatedItemEntry = 21874 },
		[26762] = { RecipeItemEntry = 21917, SkillIndex = 197, CreatedItemEntry = 21875 },
		[26763] = { RecipeItemEntry = 21919, SkillIndex = 197, CreatedItemEntry = 21876 },
		[26764] = { SkillIndex = 197, CreatedItemEntry = 21849 },
		[26765] = { SkillIndex = 197, CreatedItemEntry = 21850 },
		[26770] = { SkillIndex = 197, CreatedItemEntry = 21851 },
		[26771] = { SkillIndex = 197, CreatedItemEntry = 21852 },
		[26772] = { SkillIndex = 197, CreatedItemEntry = 21853 },
		[26773] = { RecipeItemEntry = 21896, SkillIndex = 197, CreatedItemEntry = 21854 },
		[26774] = { RecipeItemEntry = 21897, SkillIndex = 197, CreatedItemEntry = 21855 },
		[26775] = { RecipeItemEntry = 21898, SkillIndex = 197, CreatedItemEntry = 21859 },
		[26776] = { RecipeItemEntry = 21899, SkillIndex = 197, CreatedItemEntry = 21860 },
		[26777] = { RecipeItemEntry = 21900, SkillIndex = 197, CreatedItemEntry = 21861 },
		[26778] = { RecipeItemEntry = 21901, SkillIndex = 197, CreatedItemEntry = 21862 },
		[26779] = { RecipeItemEntry = 21902, SkillIndex = 197, CreatedItemEntry = 21863 },
		[26780] = { RecipeItemEntry = 21903, SkillIndex = 197, CreatedItemEntry = 21864 },
		[26781] = { RecipeItemEntry = 21904, SkillIndex = 197, CreatedItemEntry = 21865 },
		[26782] = { RecipeItemEntry = 21905, SkillIndex = 197, CreatedItemEntry = 21866 },
		[26783] = { RecipeItemEntry = 21906, SkillIndex = 197, CreatedItemEntry = 21867 },
		[26784] = { RecipeItemEntry = 21907, SkillIndex = 197, CreatedItemEntry = 21868 },
		[27658] = { RecipeItemEntry = 22307, SkillIndex = 197, CreatedItemEntry = 22246 },
		[27659] = { RecipeItemEntry = 22308, SkillIndex = 197, CreatedItemEntry = 22248 },
		[27660] = { RecipeItemEntry = 22309, SkillIndex = 197, CreatedItemEntry = 22249 },
		[27724] = { RecipeItemEntry = 22310, SkillIndex = 197, CreatedItemEntry = 22251 },
		[27725] = { RecipeItemEntry = 22312, SkillIndex = 197, CreatedItemEntry = 22252 },
		[28205] = { SkillIndex = 197, CreatedItemEntry = 22654 },
		[28207] = { SkillIndex = 197, CreatedItemEntry = 22652 },
		[28208] = { SkillIndex = 197, CreatedItemEntry = 22658 },
		[28209] = { SkillIndex = 197, CreatedItemEntry = 22655 },
		[28210] = { RecipeItemEntry = 22683, SkillIndex = 197, CreatedItemEntry = 22660 },
		[28480] = { RecipeItemEntry = 22774, SkillIndex = 197, CreatedItemEntry = 22756 },
		[28481] = { RecipeItemEntry = 22773, SkillIndex = 197, CreatedItemEntry = 22757 },
		[28482] = { RecipeItemEntry = 22772, SkillIndex = 197, CreatedItemEntry = 22758 },
		[31373] = { RecipeItemEntry = 24316, SkillIndex = 197, CreatedItemEntry = 24271 },
		[31430] = { RecipeItemEntry = 24292, SkillIndex = 197, CreatedItemEntry = 24273 },
		[31431] = { RecipeItemEntry = 24293, SkillIndex = 197, CreatedItemEntry = 24275 },
		[31432] = { RecipeItemEntry = 24294, SkillIndex = 197, CreatedItemEntry = 24274 },
		[31433] = { RecipeItemEntry = 24295, SkillIndex = 197, CreatedItemEntry = 24276 },
		[31434] = { RecipeItemEntry = 24296, SkillIndex = 197, CreatedItemEntry = 24249 },
		[31435] = { RecipeItemEntry = 24297, SkillIndex = 197, CreatedItemEntry = 24250 },
		[31437] = { RecipeItemEntry = 24298, SkillIndex = 197, CreatedItemEntry = 24251 },
		[31438] = { RecipeItemEntry = 24299, SkillIndex = 197, CreatedItemEntry = 24252 },
		[31440] = { RecipeItemEntry = 24300, SkillIndex = 197, CreatedItemEntry = 24253 },
		[31441] = { RecipeItemEntry = 24301, SkillIndex = 197, CreatedItemEntry = 24254 },
		[31442] = { RecipeItemEntry = 24302, SkillIndex = 197, CreatedItemEntry = 24255 },
		[31443] = { RecipeItemEntry = 24303, SkillIndex = 197, CreatedItemEntry = 24256 },
		[31444] = { RecipeItemEntry = 24304, SkillIndex = 197, CreatedItemEntry = 24257 },
		[31448] = { RecipeItemEntry = 24305, SkillIndex = 197, CreatedItemEntry = 24258 },
		[31449] = { RecipeItemEntry = 24306, SkillIndex = 197, CreatedItemEntry = 24259 },
		[31450] = { RecipeItemEntry = 24307, SkillIndex = 197, CreatedItemEntry = 24260 },
		[31451] = { RecipeItemEntry = 24308, SkillIndex = 197, CreatedItemEntry = 24261 },
		[31452] = { RecipeItemEntry = 24309, SkillIndex = 197, CreatedItemEntry = 24262 },
		[31453] = { RecipeItemEntry = 24310, SkillIndex = 197, CreatedItemEntry = 24263 },
		[31454] = { RecipeItemEntry = 24311, SkillIndex = 197, CreatedItemEntry = 24264 },
		[31455] = { RecipeItemEntry = 24312, SkillIndex = 197, CreatedItemEntry = 24266 },
		[31456] = { RecipeItemEntry = 24313, SkillIndex = 197, CreatedItemEntry = 24267 },
		[31459] = { RecipeItemEntry = 24314, SkillIndex = 197, CreatedItemEntry = 24270 },
		[31460] = { SkillIndex = 197, CreatedItemEntry = 24268 },
		[31461] = { RecipeItemEntry = 24315, SkillIndex = 197, CreatedItemEntry = 24269 },
		[36315] = { RecipeItemEntry = 30280, SkillIndex = 197, CreatedItemEntry = 30038 },
		[36316] = { RecipeItemEntry = 30281, SkillIndex = 197, CreatedItemEntry = 30036 },
		[36317] = { RecipeItemEntry = 30282, SkillIndex = 197, CreatedItemEntry = 30037 },
		[36318] = { RecipeItemEntry = 30283, SkillIndex = 197, CreatedItemEntry = 30035 },
		[36665] = { SkillIndex = 197, CreatedItemEntry = 30459 },
		[36667] = { SkillIndex = 197, CreatedItemEntry = 30460 },
		[36668] = { SkillIndex = 197, CreatedItemEntry = 30461 },
		[36669] = { SkillIndex = 197, CreatedItemEntry = 30465 },
		[36670] = { SkillIndex = 197, CreatedItemEntry = 30463 },
		[36672] = { SkillIndex = 197, CreatedItemEntry = 30464 },
		[36686] = { RecipeItemEntry = 30483, SkillIndex = 197, CreatedItemEntry = 24272 },
		[37873] = { RecipeItemEntry = 30833, SkillIndex = 197, CreatedItemEntry = 30831 },
		[37882] = { RecipeItemEntry = 30842, SkillIndex = 197, CreatedItemEntry = 30837 },
		[37883] = { RecipeItemEntry = 30843, SkillIndex = 197, CreatedItemEntry = 30838 },
		[37884] = { RecipeItemEntry = 30844, SkillIndex = 197, CreatedItemEntry = 30839 },
		[40020] = { RecipeItemEntry = 32437, SkillIndex = 197, CreatedItemEntry = 32391 },
		[40021] = { RecipeItemEntry = 32438, SkillIndex = 197, CreatedItemEntry = 32392 },
		[40023] = { RecipeItemEntry = 32439, SkillIndex = 197, CreatedItemEntry = 32389 },
		[40024] = { RecipeItemEntry = 32440, SkillIndex = 197, CreatedItemEntry = 32390 },
		[40060] = { RecipeItemEntry = 32447, SkillIndex = 197, CreatedItemEntry = 32420 },
		[41205] = { RecipeItemEntry = 32754, SkillIndex = 197, CreatedItemEntry = 32586 },
		[41206] = { RecipeItemEntry = 32755, SkillIndex = 197, CreatedItemEntry = 32587 },
		[41207] = { RecipeItemEntry = 32752, SkillIndex = 197, CreatedItemEntry = 32584 },
		[41208] = { RecipeItemEntry = 32753, SkillIndex = 197, CreatedItemEntry = 32585 },
		[44950] = { RecipeItemEntry = 34261, SkillIndex = 197, CreatedItemEntry = 34087 },
		[44958] = { RecipeItemEntry = 34319, SkillIndex = 197, CreatedItemEntry = 34085 },
		[46128] = { RecipeItemEntry = 35204, SkillIndex = 197, CreatedItemEntry = 34366 },
		[46129] = { RecipeItemEntry = 35205, SkillIndex = 197, CreatedItemEntry = 34367 },
		[46130] = { RecipeItemEntry = 35206, SkillIndex = 197, CreatedItemEntry = 34364 },
		[46131] = { RecipeItemEntry = 35207, SkillIndex = 197, CreatedItemEntry = 34365 },
		[49677] = { RecipeItemEntry = 37915, SkillIndex = 197, CreatedItemEntry = 6836 },
		[50194] = { RecipeItemEntry = 38229, SkillIndex = 197, CreatedItemEntry = 38225 },
		[50644] = { RecipeItemEntry = 38327, SkillIndex = 197, CreatedItemEntry = 38277 },
		[50647] = { RecipeItemEntry = 38328, SkillIndex = 197, CreatedItemEntry = 38278 },
		[55898] = { SkillIndex = 197, CreatedItemEntry = 41509 },
		[55899] = { SkillIndex = 197, CreatedItemEntry = 41510 },
		[55900] = { SkillIndex = 197, CreatedItemEntry = 41511 },
		[55901] = { SkillIndex = 197, CreatedItemEntry = 41548 },
		[55902] = { SkillIndex = 197, CreatedItemEntry = 41513 },
		[55903] = { SkillIndex = 197, CreatedItemEntry = 41515 },
		[55904] = { SkillIndex = 197, CreatedItemEntry = 44211 },
		[55906] = { SkillIndex = 197, CreatedItemEntry = 41520 },
		[55907] = { SkillIndex = 197, CreatedItemEntry = 41521 },
		[55908] = { SkillIndex = 197, CreatedItemEntry = 41522 },
		[55910] = { SkillIndex = 197, CreatedItemEntry = 41523 },
		[55911] = { SkillIndex = 197, CreatedItemEntry = 41525 },
		[55913] = { SkillIndex = 197, CreatedItemEntry = 41528 },
		[55914] = { SkillIndex = 197, CreatedItemEntry = 41543 },
		[55919] = { SkillIndex = 197, CreatedItemEntry = 41546 },
		[55920] = { SkillIndex = 197, CreatedItemEntry = 41551 },
		[55921] = { SkillIndex = 197, CreatedItemEntry = 41549 },
		[55922] = { SkillIndex = 197, CreatedItemEntry = 41545 },
		[55923] = { SkillIndex = 197, CreatedItemEntry = 41550 },
		[55924] = { SkillIndex = 197, CreatedItemEntry = 41544 },
		[55925] = { SkillIndex = 197, CreatedItemEntry = 41553 },
		[55941] = { SkillIndex = 197, CreatedItemEntry = 41554 },
		[55943] = { SkillIndex = 197, CreatedItemEntry = 41555 },
		[55993] = { RecipeItemEntry = 42172, SkillIndex = 197, CreatedItemEntry = 41248 },
		[55994] = { RecipeItemEntry = 42173, SkillIndex = 197, CreatedItemEntry = 41249 },
		[55995] = { RecipeItemEntry = 42174, SkillIndex = 197, CreatedItemEntry = 41251 },
		[55996] = { RecipeItemEntry = 42175, SkillIndex = 197, CreatedItemEntry = 41250 },
		[55997] = { RecipeItemEntry = 42177, SkillIndex = 197, CreatedItemEntry = 41252 },
		[55998] = { RecipeItemEntry = 42176, SkillIndex = 197, CreatedItemEntry = 41253 },
		[55999] = { RecipeItemEntry = 42178, SkillIndex = 197, CreatedItemEntry = 41254 },
		[56000] = { RecipeItemEntry = 42179, SkillIndex = 197, CreatedItemEntry = 41255 },
		[56001] = { RecipeItemEntry = 42181, SkillIndex = 197, CreatedItemEntry = 41594 },
		[56002] = { RecipeItemEntry = 42180, SkillIndex = 197, CreatedItemEntry = 41593 },
		[56003] = { RecipeItemEntry = 42182, SkillIndex = 197, CreatedItemEntry = 41595 },
		[56004] = { RecipeItemEntry = 42183, SkillIndex = 197, CreatedItemEntry = 41597 },
		[56005] = { RecipeItemEntry = 42184, SkillIndex = 197, CreatedItemEntry = 41600 },
		[56006] = { RecipeItemEntry = 42185, SkillIndex = 197, CreatedItemEntry = 41598 },
		[56007] = { RecipeItemEntry = 42186, SkillIndex = 197, CreatedItemEntry = 41599 },
		[56008] = { SkillIndex = 197, CreatedItemEntry = 41601 },
		[56009] = { RecipeItemEntry = 42187, SkillIndex = 197, CreatedItemEntry = 41602 },
		[56010] = { SkillIndex = 197, CreatedItemEntry = 41603 },
		[56011] = { RecipeItemEntry = 42188, SkillIndex = 197, CreatedItemEntry = 41604 },
		[56014] = { SkillIndex = 197, CreatedItemEntry = 41607 },
		[56015] = { SkillIndex = 197, CreatedItemEntry = 41608 },
		[56016] = { RecipeItemEntry = 42189, SkillIndex = 197, CreatedItemEntry = 41609 },
		[56017] = { RecipeItemEntry = 42190, SkillIndex = 197, CreatedItemEntry = 41610 },
		[56018] = { RecipeItemEntry = 42191, SkillIndex = 197, CreatedItemEntry = 41984 },
		[56019] = { RecipeItemEntry = 42192, SkillIndex = 197, CreatedItemEntry = 41985 },
		[56020] = { RecipeItemEntry = 42193, SkillIndex = 197, CreatedItemEntry = 41986 },
		[56021] = { RecipeItemEntry = 42194, SkillIndex = 197, CreatedItemEntry = 42093 },
		[56022] = { RecipeItemEntry = 42195, SkillIndex = 197, CreatedItemEntry = 42095 },
		[56023] = { RecipeItemEntry = 42196, SkillIndex = 197, CreatedItemEntry = 42096 },
		[56024] = { RecipeItemEntry = 42197, SkillIndex = 197, CreatedItemEntry = 42100 },
		[56025] = { RecipeItemEntry = 42198, SkillIndex = 197, CreatedItemEntry = 42103 },
		[56026] = { RecipeItemEntry = 42199, SkillIndex = 197, CreatedItemEntry = 42101 },
		[56027] = { RecipeItemEntry = 42200, SkillIndex = 197, CreatedItemEntry = 42111 },
		[56028] = { RecipeItemEntry = 42201, SkillIndex = 197, CreatedItemEntry = 42102 },
		[56029] = { RecipeItemEntry = 42202, SkillIndex = 197, CreatedItemEntry = 42113 },
		[56030] = { SkillIndex = 197, CreatedItemEntry = 41519 },
		[56031] = { SkillIndex = 197, CreatedItemEntry = 41512 },
		[56048] = { SkillIndex = 197, CreatedItemEntry = 41544 },
		[59582] = { SkillIndex = 197, CreatedItemEntry = 43969 },
		[59583] = { SkillIndex = 197, CreatedItemEntry = 43974 },
		[59584] = { SkillIndex = 197, CreatedItemEntry = 43973 },
		[59585] = { SkillIndex = 197, CreatedItemEntry = 43970 },
		[59586] = { SkillIndex = 197, CreatedItemEntry = 41516 },
		[59587] = { SkillIndex = 197, CreatedItemEntry = 43972 },
		[59588] = { SkillIndex = 197, CreatedItemEntry = 43975 },
		[59589] = { SkillIndex = 197, CreatedItemEntry = 43971 },
		[60969] = { SkillIndex = 197, CreatedItemEntry = 44554 },
		[60971] = { SkillIndex = 197, CreatedItemEntry = 44558 },
		[60990] = { SkillIndex = 197, CreatedItemEntry = 43584 },
		[60993] = { SkillIndex = 197, CreatedItemEntry = 43583 },
		[60994] = { SkillIndex = 197, CreatedItemEntry = 43585 },
		[63203] = { RecipeItemEntry = 45102, SkillIndex = 197, CreatedItemEntry = 45557 },
		[63204] = { RecipeItemEntry = 45103, SkillIndex = 197, CreatedItemEntry = 45566 },
		[63205] = { RecipeItemEntry = 45104, SkillIndex = 197, CreatedItemEntry = 45558 },
		[63206] = { RecipeItemEntry = 45105, SkillIndex = 197, CreatedItemEntry = 45567 },
		[63742] = { SkillIndex = 197, CreatedItemEntry = 45626 },
		[63924] = { RecipeItemEntry = 45774, SkillIndex = 197, CreatedItemEntry = 45773 },
		[64729] = { SkillIndex = 197, CreatedItemEntry = 45811 },
		[64730] = { SkillIndex = 197, CreatedItemEntry = 45810 },
		[67064] = { RecipeItemEntry = 47657, SkillIndex = 197, CreatedItemEntry = 47605 },
		[67065] = { RecipeItemEntry = 47656, SkillIndex = 197, CreatedItemEntry = 47587 },
		[67066] = { RecipeItemEntry = 47655, SkillIndex = 197, CreatedItemEntry = 47603 },
		[67079] = { RecipeItemEntry = 47654, SkillIndex = 197, CreatedItemEntry = 47585 },
		[67144] = { RecipeItemEntry = 47636, SkillIndex = 197, CreatedItemEntry = 47606 },
		[67145] = { RecipeItemEntry = 47639, SkillIndex = 197, CreatedItemEntry = 47586 },
		[67146] = { RecipeItemEntry = 47638, SkillIndex = 197, CreatedItemEntry = 47604 },
		[67147] = { RecipeItemEntry = 47637, SkillIndex = 197, CreatedItemEntry = 47588 },
		[70550] = { RecipeItemEntry = 49953, SkillIndex = 197, CreatedItemEntry = 49891 },
		[70551] = { RecipeItemEntry = 49954, SkillIndex = 197, CreatedItemEntry = 49890 },
		[70552] = { RecipeItemEntry = 49955, SkillIndex = 197, CreatedItemEntry = 49892 },
		[70553] = { RecipeItemEntry = 49956, SkillIndex = 197, CreatedItemEntry = 49893 },
		[75597] = { RecipeItemEntry = 54798, SkillIndex = 197, CreatedItemEntry = 54797 },
		[966445] = { RecipeItemEntry = 100624, SkillIndex = 197, CreatedItemEntry = 14342 },
		[968061] = { RecipeItemEntry = 967293, SkillIndex = 197, CreatedItemEntry = 967215 },
		[968062] = { RecipeItemEntry = 967294, SkillIndex = 197, CreatedItemEntry = 967216 },
		[968064] = { RecipeItemEntry = 967296, SkillIndex = 197, CreatedItemEntry = 967218 },
		[968065] = { RecipeItemEntry = 967297, SkillIndex = 197, CreatedItemEntry = 967219 },
		[968067] = { RecipeItemEntry = 967299, SkillIndex = 197, CreatedItemEntry = 967221 },
		[968068] = { RecipeItemEntry = 967300, SkillIndex = 197, CreatedItemEntry = 967222 },
		[968070] = { RecipeItemEntry = 967302, SkillIndex = 197, CreatedItemEntry = 967224 },
		[968071] = { RecipeItemEntry = 967303, SkillIndex = 197, CreatedItemEntry = 967225 },
		[968073] = { RecipeItemEntry = 967305, SkillIndex = 197, CreatedItemEntry = 967227 },
		[968074] = { RecipeItemEntry = 967306, SkillIndex = 197, CreatedItemEntry = 967228 },
		[968076] = { RecipeItemEntry = 967308, SkillIndex = 197, CreatedItemEntry = 967230 },
		[968077] = { RecipeItemEntry = 967309, SkillIndex = 197, CreatedItemEntry = 967231 },
		[968496] = { RecipeItemEntry = 967813, SkillIndex = 197, CreatedItemEntry = 967801 },
		[968497] = { RecipeItemEntry = 967814, SkillIndex = 197, CreatedItemEntry = 967807 },
		[968498] = { RecipeItemEntry = 967815, SkillIndex = 197, CreatedItemEntry = 967802 },
		[968499] = { RecipeItemEntry = 967816, SkillIndex = 197, CreatedItemEntry = 967808 },
		[968500] = { RecipeItemEntry = 967817, SkillIndex = 197, CreatedItemEntry = 967803 },
		[968501] = { RecipeItemEntry = 967818, SkillIndex = 197, CreatedItemEntry = 967809 },
		[968502] = { RecipeItemEntry = 967819, SkillIndex = 197, CreatedItemEntry = 967804 },
		[968503] = { RecipeItemEntry = 967820, SkillIndex = 197, CreatedItemEntry = 967810 },
		[968504] = { RecipeItemEntry = 967821, SkillIndex = 197, CreatedItemEntry = 967805 },
		[968505] = { RecipeItemEntry = 967822, SkillIndex = 197, CreatedItemEntry = 967811 },
		[968506] = { RecipeItemEntry = 967823, SkillIndex = 197, CreatedItemEntry = 967806 },
		[968507] = { RecipeItemEntry = 967824, SkillIndex = 197, CreatedItemEntry = 967812 },
		[979325] = { RecipeItemEntry = 1203210, SkillIndex = 197, CreatedItemEntry = 1203491 },
		[979326] = { RecipeItemEntry = 1203211, SkillIndex = 197, CreatedItemEntry = 1203493 },
		[979327] = { RecipeItemEntry = 1203212, SkillIndex = 197, CreatedItemEntry = 1203495 },
		[979328] = { RecipeItemEntry = 1203213, SkillIndex = 197, CreatedItemEntry = 1203497 },
		[979498] = { SkillIndex = 197, CreatedItemEntry = 1203490 },
		[979499] = { SkillIndex = 197, CreatedItemEntry = 1203491 },
		[979508] = { SkillIndex = 197, CreatedItemEntry = 1203492 },
		[979509] = { SkillIndex = 197, CreatedItemEntry = 1203493 },
		[979510] = { SkillIndex = 197, CreatedItemEntry = 1203494 },
		[979511] = { SkillIndex = 197, CreatedItemEntry = 1203495 },
		[979512] = { SkillIndex = 197, CreatedItemEntry = 1203496 },
		[979513] = { SkillIndex = 197, CreatedItemEntry = 1203497 },
		[979562] = { RecipeItemEntry = 1204113, SkillIndex = 197, CreatedItemEntry = 1204061 },
		[979563] = { RecipeItemEntry = 1204114, SkillIndex = 197, CreatedItemEntry = 1204062 },
		[979564] = { RecipeItemEntry = 1204115, SkillIndex = 197, CreatedItemEntry = 1204063 },
		[979565] = { RecipeItemEntry = 1204116, SkillIndex = 197, CreatedItemEntry = 1204064 },
		[979566] = { RecipeItemEntry = 1204117, SkillIndex = 197, CreatedItemEntry = 1204065 },
		[979567] = { RecipeItemEntry = 1204118, SkillIndex = 197, CreatedItemEntry = 1204066 },
		[979568] = { RecipeItemEntry = 1204119, SkillIndex = 197, CreatedItemEntry = 1204067 },
		[979569] = { RecipeItemEntry = 1204120, SkillIndex = 197, CreatedItemEntry = 1204068 },
		[979570] = { RecipeItemEntry = 1204121, SkillIndex = 197, CreatedItemEntry = 1204069 },
		[979571] = { RecipeItemEntry = 1204122, SkillIndex = 197, CreatedItemEntry = 1204070 },
		[979572] = { RecipeItemEntry = 1204123, SkillIndex = 197, CreatedItemEntry = 1204071 },
		[979573] = { RecipeItemEntry = 1204124, SkillIndex = 197, CreatedItemEntry = 1204072 },
		[1979325] = { RecipeItemEntry = 1303517, SkillIndex = 197, CreatedItemEntry = 1303491 },
		[1979326] = { RecipeItemEntry = 1303518, SkillIndex = 197, CreatedItemEntry = 1303493 },
		[1979327] = { RecipeItemEntry = 1303519, SkillIndex = 197, CreatedItemEntry = 1303495 },
		[1979328] = { RecipeItemEntry = 1303520, SkillIndex = 197, CreatedItemEntry = 1303497 },
		[1979498] = { SkillIndex = 197, CreatedItemEntry = 1303490 },
		[1979499] = { SkillIndex = 197, CreatedItemEntry = 1303491 },
		[1979508] = { SkillIndex = 197, CreatedItemEntry = 1303492 },
		[1979509] = { SkillIndex = 197, CreatedItemEntry = 1303493 },
		[1979512] = { SkillIndex = 197, CreatedItemEntry = 1303496 },
		[1979513] = { SkillIndex = 197, CreatedItemEntry = 1303497 },
		[3918] = { SkillIndex = 202, CreatedItemEntry = 4357 },
		[3919] = { SkillIndex = 202, CreatedItemEntry = 4358 },
		[3920] = { SkillIndex = 202, CreatedItemEntry = 8067 },
		[3922] = { SkillIndex = 202, CreatedItemEntry = 4359 },
		[3923] = { SkillIndex = 202, CreatedItemEntry = 4360 },
		[3924] = { SkillIndex = 202, CreatedItemEntry = 4361 },
		[3925] = { SkillIndex = 202, CreatedItemEntry = 4362 },
		[3926] = { SkillIndex = 202, CreatedItemEntry = 4363 },
		[3928] = { RecipeItemEntry = 4408, SkillIndex = 202, CreatedItemEntry = 4401 },
		[3929] = { SkillIndex = 202, CreatedItemEntry = 4364 },
		[3930] = { SkillIndex = 202, CreatedItemEntry = 8068 },
		[3931] = { SkillIndex = 202, CreatedItemEntry = 4365 },
		[3932] = { SkillIndex = 202, CreatedItemEntry = 4366 },
		[3933] = { RecipeItemEntry = 4409, SkillIndex = 202, CreatedItemEntry = 4367 },
		[3934] = { SkillIndex = 202, CreatedItemEntry = 4368 },
		[3936] = { SkillIndex = 202, CreatedItemEntry = 4369 },
		[3937] = { SkillIndex = 202, CreatedItemEntry = 4370 },
		[3938] = { SkillIndex = 202, CreatedItemEntry = 4371 },
		[3939] = { RecipeItemEntry = 13309, SkillIndex = 202, CreatedItemEntry = 4372 },
		[3940] = { RecipeItemEntry = 4410, SkillIndex = 202, CreatedItemEntry = 4373 },
		[3941] = { SkillIndex = 202, CreatedItemEntry = 4374 },
		[3942] = { SkillIndex = 202, CreatedItemEntry = 4375 },
		[3944] = { RecipeItemEntry = 4411, SkillIndex = 202, CreatedItemEntry = 4376 },
		[3945] = { SkillIndex = 202, CreatedItemEntry = 4377 },
		[3946] = { SkillIndex = 202, CreatedItemEntry = 4378 },
		[3947] = { SkillIndex = 202, CreatedItemEntry = 8069 },
		[3949] = { SkillIndex = 202, CreatedItemEntry = 4379 },
		[3950] = { SkillIndex = 202, CreatedItemEntry = 4380 },
		[3952] = { RecipeItemEntry = 14639, SkillIndex = 202, CreatedItemEntry = 4381 },
		[3953] = { SkillIndex = 202, CreatedItemEntry = 4382 },
		[3954] = { RecipeItemEntry = 4412, SkillIndex = 202, CreatedItemEntry = 4383 },
		[3955] = { SkillIndex = 202, CreatedItemEntry = 4384 },
		[3956] = { SkillIndex = 202, CreatedItemEntry = 4385 },
		[3957] = { RecipeItemEntry = 13308, SkillIndex = 202, CreatedItemEntry = 4386 },
		[3958] = { SkillIndex = 202, CreatedItemEntry = 4387 },
		[3959] = { RecipeItemEntry = 4413, SkillIndex = 202, CreatedItemEntry = 4388 },
		[3960] = { RecipeItemEntry = 4414, SkillIndex = 202, CreatedItemEntry = 4403 },
		[3961] = { SkillIndex = 202, CreatedItemEntry = 4389 },
		[3962] = { SkillIndex = 202, CreatedItemEntry = 4390 },
		[3963] = { SkillIndex = 202, CreatedItemEntry = 4391 },
		[3965] = { SkillIndex = 202, CreatedItemEntry = 4392 },
		[3966] = { RecipeItemEntry = 4415, SkillIndex = 202, CreatedItemEntry = 4393 },
		[3967] = { SkillIndex = 202, CreatedItemEntry = 4394 },
		[3968] = { RecipeItemEntry = 4416, SkillIndex = 202, CreatedItemEntry = 4395 },
		[3969] = { RecipeItemEntry = 13311, SkillIndex = 202, CreatedItemEntry = 4396 },
		[3971] = { RecipeItemEntry = 7742, SkillIndex = 202, CreatedItemEntry = 4397 },
		[3972] = { RecipeItemEntry = 4417, SkillIndex = 202, CreatedItemEntry = 4398 },
		[3973] = { SkillIndex = 202, CreatedItemEntry = 4404 },
		[3977] = { SkillIndex = 202, CreatedItemEntry = 4405 },
		[3978] = { SkillIndex = 202, CreatedItemEntry = 4406 },
		[3979] = { RecipeItemEntry = 13310, SkillIndex = 202, CreatedItemEntry = 4407 },
		[6458] = { SkillIndex = 202, CreatedItemEntry = 5507 },
		[7430] = { SkillIndex = 202, CreatedItemEntry = 6219 },
		[8243] = { RecipeItemEntry = 6672, SkillIndex = 202, CreatedItemEntry = 4852 },
		[8334] = { SkillIndex = 202, CreatedItemEntry = 6712 },
		[8339] = { RecipeItemEntry = 6716, SkillIndex = 202, CreatedItemEntry = 6714 },
		[8895] = { SkillIndex = 202, CreatedItemEntry = 7189 },
		[9269] = { RecipeItemEntry = 7560, SkillIndex = 202, CreatedItemEntry = 7506 },
		[9271] = { SkillIndex = 202, CreatedItemEntry = 6533 },
		[9273] = { RecipeItemEntry = 7561, SkillIndex = 202, CreatedItemEntry = 7148 },
		[12584] = { SkillIndex = 202, CreatedItemEntry = 10558 },
		[12585] = { SkillIndex = 202, CreatedItemEntry = 10505 },
		[12586] = { SkillIndex = 202, CreatedItemEntry = 10507 },
		[12587] = { RecipeItemEntry = 10601, SkillIndex = 202, CreatedItemEntry = 10499 },
		[12589] = { SkillIndex = 202, CreatedItemEntry = 10559 },
		[12590] = { SkillIndex = 202, CreatedItemEntry = 10498 },
		[12591] = { SkillIndex = 202, CreatedItemEntry = 10560 },
		[12594] = { SkillIndex = 202, CreatedItemEntry = 10500 },
		[12595] = { SkillIndex = 202, CreatedItemEntry = 10508 },
		[12596] = { SkillIndex = 202, CreatedItemEntry = 10512 },
		[12597] = { RecipeItemEntry = 10602, SkillIndex = 202, CreatedItemEntry = 10546 },
		[12599] = { SkillIndex = 202, CreatedItemEntry = 10561 },
		[12603] = { SkillIndex = 202, CreatedItemEntry = 10514 },
		[12607] = { RecipeItemEntry = 10603, SkillIndex = 202, CreatedItemEntry = 10501 },
		[12614] = { RecipeItemEntry = 10604, SkillIndex = 202, CreatedItemEntry = 10510 },
		[12615] = { RecipeItemEntry = 10605, SkillIndex = 202, CreatedItemEntry = 10502 },
		[12616] = { RecipeItemEntry = 10606, SkillIndex = 202, CreatedItemEntry = 10518 },
		[12617] = { RecipeItemEntry = 10607, SkillIndex = 202, CreatedItemEntry = 10506 },
		[12618] = { SkillIndex = 202, CreatedItemEntry = 10503 },
		[12619] = { SkillIndex = 202, CreatedItemEntry = 10562 },
		[12620] = { RecipeItemEntry = 10608, SkillIndex = 202, CreatedItemEntry = 10548 },
		[12621] = { SkillIndex = 202, CreatedItemEntry = 10513 },
		[12622] = { SkillIndex = 202, CreatedItemEntry = 10504 },
		[12624] = { RecipeItemEntry = 10609, SkillIndex = 202, CreatedItemEntry = 10576 },
		[12715] = { SkillIndex = 202, CreatedItemEntry = 10644 },
		[12716] = { SkillIndex = 202, CreatedItemEntry = 10577 },
		[12717] = { SkillIndex = 202, CreatedItemEntry = 10542 },
		[12718] = { SkillIndex = 202, CreatedItemEntry = 10543 },
		[12720] = { SkillIndex = 202, CreatedItemEntry = 10580 },
		[12722] = { SkillIndex = 202, CreatedItemEntry = 10585 },
		[12754] = { SkillIndex = 202, CreatedItemEntry = 10586 },
		[12755] = { SkillIndex = 202, CreatedItemEntry = 10587 },
		[12758] = { SkillIndex = 202, CreatedItemEntry = 10588 },
		[12759] = { SkillIndex = 202, CreatedItemEntry = 10645 },
		[12760] = { SkillIndex = 202, CreatedItemEntry = 10646 },
		[12895] = { SkillIndex = 202, CreatedItemEntry = 10713 },
		[12897] = { SkillIndex = 202, CreatedItemEntry = 10545 },
		[12899] = { SkillIndex = 202, CreatedItemEntry = 10716 },
		[12900] = { SkillIndex = 202, CreatedItemEntry = 10719 },
		[12902] = { SkillIndex = 202, CreatedItemEntry = 10720 },
		[12903] = { SkillIndex = 202, CreatedItemEntry = 10721 },
		[12904] = { SkillIndex = 202, CreatedItemEntry = 10723 },
		[12905] = { SkillIndex = 202, CreatedItemEntry = 10724 },
		[12906] = { SkillIndex = 202, CreatedItemEntry = 10725 },
		[12907] = { SkillIndex = 202, CreatedItemEntry = 10726 },
		[12908] = { SkillIndex = 202, CreatedItemEntry = 10727 },
		[13240] = { SkillIndex = 202, CreatedItemEntry = 10577 },
		[15255] = { SkillIndex = 202, CreatedItemEntry = 11590 },
		[15628] = { RecipeItemEntry = 11828, SkillIndex = 202, CreatedItemEntry = 11825 },
		[15633] = { RecipeItemEntry = 11827, SkillIndex = 202, CreatedItemEntry = 11826 },
		[19567] = { SkillIndex = 202, CreatedItemEntry = 15846 },
		[19788] = { SkillIndex = 202, CreatedItemEntry = 15992 },
		[19790] = { RecipeItemEntry = 16041, SkillIndex = 202, CreatedItemEntry = 15993 },
		[19791] = { RecipeItemEntry = 16042, SkillIndex = 202, CreatedItemEntry = 15994 },
		[19792] = { RecipeItemEntry = 16043, SkillIndex = 202, CreatedItemEntry = 15995 },
		[19793] = { RecipeItemEntry = 16044, SkillIndex = 202, CreatedItemEntry = 15996 },
		[19794] = { RecipeItemEntry = 16045, SkillIndex = 202, CreatedItemEntry = 15999 },
		[19795] = { RecipeItemEntry = 16047, SkillIndex = 202, CreatedItemEntry = 16000 },
		[19796] = { RecipeItemEntry = 16048, SkillIndex = 202, CreatedItemEntry = 16004 },
		[19799] = { RecipeItemEntry = 16049, SkillIndex = 202, CreatedItemEntry = 16005 },
		[19800] = { RecipeItemEntry = 16051, SkillIndex = 202, CreatedItemEntry = 15997 },
		[19814] = { RecipeItemEntry = 16046, SkillIndex = 202, CreatedItemEntry = 16023 },
		[19815] = { RecipeItemEntry = 16050, SkillIndex = 202, CreatedItemEntry = 16006 },
		[19819] = { RecipeItemEntry = 16052, SkillIndex = 202, CreatedItemEntry = 16009 },
		[19825] = { RecipeItemEntry = 16053, SkillIndex = 202, CreatedItemEntry = 16008 },
		[19830] = { RecipeItemEntry = 16054, SkillIndex = 202, CreatedItemEntry = 16022 },
		[19831] = { RecipeItemEntry = 16055, SkillIndex = 202, CreatedItemEntry = 16040 },
		[19833] = { RecipeItemEntry = 16056, SkillIndex = 202, CreatedItemEntry = 16007 },
		[21940] = { RecipeItemEntry = 17720, SkillIndex = 202, CreatedItemEntry = 17716 },
		[22704] = { SkillIndex = 202, CreatedItemEntry = 18232 },
		[22793] = { RecipeItemEntry = 18290, SkillIndex = 202, CreatedItemEntry = 18283 },
		[22795] = { RecipeItemEntry = 18292, SkillIndex = 202, CreatedItemEntry = 18282 },
		[22797] = { RecipeItemEntry = 18291, SkillIndex = 202, CreatedItemEntry = 18168 },
		[23066] = { RecipeItemEntry = 18647, SkillIndex = 202, CreatedItemEntry = 9318 },
		[23067] = { RecipeItemEntry = 18649, SkillIndex = 202, CreatedItemEntry = 9312 },
		[23068] = { RecipeItemEntry = 18648, SkillIndex = 202, CreatedItemEntry = 9313 },
		[23069] = { RecipeItemEntry = 18650, SkillIndex = 202, CreatedItemEntry = 18588 },
		[23070] = { SkillIndex = 202, CreatedItemEntry = 18641 },
		[23071] = { RecipeItemEntry = 18651, SkillIndex = 202, CreatedItemEntry = 18631 },
		[23077] = { RecipeItemEntry = 18652, SkillIndex = 202, CreatedItemEntry = 18634 },
		[23078] = { RecipeItemEntry = 18653, SkillIndex = 202, CreatedItemEntry = 18587 },
		[23079] = { RecipeItemEntry = 18655, SkillIndex = 202, CreatedItemEntry = 18637 },
		[23080] = { RecipeItemEntry = 18656, SkillIndex = 202, CreatedItemEntry = 18594 },
		[23081] = { RecipeItemEntry = 18657, SkillIndex = 202, CreatedItemEntry = 18638 },
		[23082] = { RecipeItemEntry = 18658, SkillIndex = 202, CreatedItemEntry = 18639 },
		[23096] = { RecipeItemEntry = 18654, SkillIndex = 202, CreatedItemEntry = 18645 },
		[23129] = { RecipeItemEntry = 18661, SkillIndex = 202, CreatedItemEntry = 18660 },
		[23486] = { SkillIndex = 202, CreatedItemEntry = 18984 },
		[23489] = { SkillIndex = 202, CreatedItemEntry = 18986 },
		[23507] = { RecipeItemEntry = 19027, SkillIndex = 202, CreatedItemEntry = 19026 },
		[24356] = { RecipeItemEntry = 20000, SkillIndex = 202, CreatedItemEntry = 19999 },
		[24357] = { RecipeItemEntry = 20001, SkillIndex = 202, CreatedItemEntry = 19998 },
		[26011] = { SkillIndex = 202, CreatedItemEntry = 21277 },
		[26416] = { RecipeItemEntry = 21724, SkillIndex = 202, CreatedItemEntry = 21558 },
		[26417] = { RecipeItemEntry = 21725, SkillIndex = 202, CreatedItemEntry = 21559 },
		[26418] = { RecipeItemEntry = 21726, SkillIndex = 202, CreatedItemEntry = 21557 },
		[26420] = { RecipeItemEntry = 21727, SkillIndex = 202, CreatedItemEntry = 21589 },
		[26421] = { RecipeItemEntry = 21728, SkillIndex = 202, CreatedItemEntry = 21590 },
		[26422] = { RecipeItemEntry = 21729, SkillIndex = 202, CreatedItemEntry = 21592 },
		[26423] = { RecipeItemEntry = 21730, SkillIndex = 202, CreatedItemEntry = 21571 },
		[26424] = { RecipeItemEntry = 21731, SkillIndex = 202, CreatedItemEntry = 21574 },
		[26425] = { RecipeItemEntry = 21732, SkillIndex = 202, CreatedItemEntry = 21576 },
		[26426] = { RecipeItemEntry = 21733, SkillIndex = 202, CreatedItemEntry = 21714 },
		[26427] = { RecipeItemEntry = 21734, SkillIndex = 202, CreatedItemEntry = 21716 },
		[26428] = { RecipeItemEntry = 21735, SkillIndex = 202, CreatedItemEntry = 21718 },
		[26442] = { RecipeItemEntry = 21738, SkillIndex = 202, CreatedItemEntry = 21569 },
		[26443] = { RecipeItemEntry = 21737, SkillIndex = 202, CreatedItemEntry = 21570 },
		[28327] = { RecipeItemEntry = 22729, SkillIndex = 202, CreatedItemEntry = 22728 },
		[30303] = { SkillIndex = 202, CreatedItemEntry = 23781 },
		[30304] = { SkillIndex = 202, CreatedItemEntry = 23782 },
		[30305] = { SkillIndex = 202, CreatedItemEntry = 23783 },
		[30306] = { SkillIndex = 202, CreatedItemEntry = 23784 },
		[30307] = { SkillIndex = 202, CreatedItemEntry = 23785 },
		[30308] = { SkillIndex = 202, CreatedItemEntry = 23786 },
		[30309] = { SkillIndex = 202, CreatedItemEntry = 23787 },
		[30310] = { SkillIndex = 202, CreatedItemEntry = 23736 },
		[30311] = { SkillIndex = 202, CreatedItemEntry = 23737 },
		[30312] = { SkillIndex = 202, CreatedItemEntry = 23742 },
		[30313] = { RecipeItemEntry = 23799, SkillIndex = 202, CreatedItemEntry = 23746 },
		[30314] = { RecipeItemEntry = 23800, SkillIndex = 202, CreatedItemEntry = 23747 },
		[30315] = { RecipeItemEntry = 23802, SkillIndex = 202, CreatedItemEntry = 23748 },
		[30316] = { RecipeItemEntry = 23803, SkillIndex = 202, CreatedItemEntry = 23758 },
		[30317] = { RecipeItemEntry = 23804, SkillIndex = 202, CreatedItemEntry = 23761 },
		[30318] = { RecipeItemEntry = 23805, SkillIndex = 202, CreatedItemEntry = 23762 },
		[30325] = { RecipeItemEntry = 23806, SkillIndex = 202, CreatedItemEntry = 23763 },
		[30329] = { RecipeItemEntry = 23807, SkillIndex = 202, CreatedItemEntry = 23764 },
		[30332] = { RecipeItemEntry = 23808, SkillIndex = 202, CreatedItemEntry = 23765 },
		[30334] = { RecipeItemEntry = 23809, SkillIndex = 202, CreatedItemEntry = 23766 },
		[30337] = { RecipeItemEntry = 23810, SkillIndex = 202, CreatedItemEntry = 23767 },
		[30341] = { RecipeItemEntry = 23811, SkillIndex = 202, CreatedItemEntry = 23768 },
		[30342] = { SkillIndex = 202, CreatedItemEntry = 23769 },
		[30343] = { SkillIndex = 202, CreatedItemEntry = 23770 },
		[30344] = { RecipeItemEntry = 23814, SkillIndex = 202, CreatedItemEntry = 23771 },
		[30346] = { SkillIndex = 202, CreatedItemEntry = 23772 },
		[30347] = { RecipeItemEntry = 23815, SkillIndex = 202, CreatedItemEntry = 34504 },
		[30348] = { RecipeItemEntry = 23816, SkillIndex = 202, CreatedItemEntry = 23774 },
		[30349] = { RecipeItemEntry = 23817, SkillIndex = 202, CreatedItemEntry = 23775 },
		[30547] = { RecipeItemEntry = 23874, SkillIndex = 202, CreatedItemEntry = 23819 },
		[30548] = { RecipeItemEntry = 23888, SkillIndex = 202, CreatedItemEntry = 23821 },
		[30549] = { RecipeItemEntry = 23882, SkillIndex = 202, CreatedItemEntry = 23820 },
		[30551] = { RecipeItemEntry = 23883, SkillIndex = 202, CreatedItemEntry = 33092 },
		[30552] = { RecipeItemEntry = 23884, SkillIndex = 202, CreatedItemEntry = 33093 },
		[30556] = { RecipeItemEntry = 23887, SkillIndex = 202, CreatedItemEntry = 23824 },
		[30558] = { SkillIndex = 202, CreatedItemEntry = 23826 },
		[30560] = { SkillIndex = 202, CreatedItemEntry = 23827 },
		[30561] = { SkillIndex = 202, CreatedItemEntry = 23831 },
		[30563] = { SkillIndex = 202, CreatedItemEntry = 23836 },
		[30565] = { SkillIndex = 202, CreatedItemEntry = 23838 },
		[30566] = { SkillIndex = 202, CreatedItemEntry = 23839 },
		[30568] = { SkillIndex = 202, CreatedItemEntry = 23841 },
		[30569] = { SkillIndex = 202, CreatedItemEntry = 23835 },
		[30570] = { SkillIndex = 202, CreatedItemEntry = 23825 },
		[30573] = { SkillIndex = 202, CreatedItemEntry = 23832 },
		[30574] = { SkillIndex = 202, CreatedItemEntry = 23828 },
		[30575] = { SkillIndex = 202, CreatedItemEntry = 23829 },
		[32814] = { RecipeItemEntry = 25887, SkillIndex = 202, CreatedItemEntry = 25886 },
		[36954] = { SkillIndex = 202, CreatedItemEntry = 30542 },
		[36955] = { SkillIndex = 202, CreatedItemEntry = 30544 },
		[39895] = { RecipeItemEntry = 32381, SkillIndex = 202, CreatedItemEntry = 7191 },
		[39971] = { SkillIndex = 202, CreatedItemEntry = 32423 },
		[39973] = { SkillIndex = 202, CreatedItemEntry = 32413 },
		[40274] = { SkillIndex = 202, CreatedItemEntry = 32461 },
		[41307] = { SkillIndex = 202, CreatedItemEntry = 32756 },
		[41311] = { SkillIndex = 202, CreatedItemEntry = 32472 },
		[41312] = { SkillIndex = 202, CreatedItemEntry = 32473 },
		[41314] = { SkillIndex = 202, CreatedItemEntry = 32474 },
		[41315] = { SkillIndex = 202, CreatedItemEntry = 32476 },
		[41316] = { SkillIndex = 202, CreatedItemEntry = 32475 },
		[41317] = { SkillIndex = 202, CreatedItemEntry = 32478 },
		[41318] = { SkillIndex = 202, CreatedItemEntry = 32479 },
		[41319] = { SkillIndex = 202, CreatedItemEntry = 32480 },
		[41320] = { SkillIndex = 202, CreatedItemEntry = 32494 },
		[41321] = { SkillIndex = 202, CreatedItemEntry = 32495 },
		[43676] = { RecipeItemEntry = 33804, SkillIndex = 202, CreatedItemEntry = 20475 },
		[44155] = { SkillIndex = 202, CreatedItemEntry = 34060 },
		[44157] = { SkillIndex = 202, CreatedItemEntry = 34061 },
		[44391] = { RecipeItemEntry = 34114, SkillIndex = 202, CreatedItemEntry = 34113 },
		[46106] = { RecipeItemEntry = 35191, SkillIndex = 202, CreatedItemEntry = 35183 },
		[46107] = { RecipeItemEntry = 35187, SkillIndex = 202, CreatedItemEntry = 35185 },
		[46108] = { RecipeItemEntry = 35189, SkillIndex = 202, CreatedItemEntry = 35181 },
		[46109] = { RecipeItemEntry = 35190, SkillIndex = 202, CreatedItemEntry = 35182 },
		[46110] = { RecipeItemEntry = 35192, SkillIndex = 202, CreatedItemEntry = 35184 },
		[46111] = { RecipeItemEntry = 35186, SkillIndex = 202, CreatedItemEntry = 34847 },
		[46112] = { RecipeItemEntry = 35193, SkillIndex = 202, CreatedItemEntry = 34355 },
		[46113] = { RecipeItemEntry = 35194, SkillIndex = 202, CreatedItemEntry = 34356 },
		[46114] = { RecipeItemEntry = 35195, SkillIndex = 202, CreatedItemEntry = 34354 },
		[46115] = { RecipeItemEntry = 35196, SkillIndex = 202, CreatedItemEntry = 34357 },
		[46116] = { RecipeItemEntry = 35197, SkillIndex = 202, CreatedItemEntry = 34353 },
		[46697] = { RecipeItemEntry = 35582, SkillIndex = 202, CreatedItemEntry = 35581 },
		[53281] = { SkillIndex = 202, CreatedItemEntry = 39690 },
		[54353] = { SkillIndex = 202, CreatedItemEntry = 39688 },
		[55252] = { SkillIndex = 202, CreatedItemEntry = 40769 },
		[56349] = { SkillIndex = 202, CreatedItemEntry = 39681 },
		[56459] = { SkillIndex = 202, CreatedItemEntry = 40892 },
		[56460] = { SkillIndex = 202, CreatedItemEntry = 40771 },
		[56461] = { SkillIndex = 202, CreatedItemEntry = 40893 },
		[56462] = { SkillIndex = 202, CreatedItemEntry = 40772 },
		[56463] = { SkillIndex = 202, CreatedItemEntry = 40536 },
		[56464] = { SkillIndex = 202, CreatedItemEntry = 39682 },
		[56465] = { SkillIndex = 202, CreatedItemEntry = 41112 },
		[56466] = { SkillIndex = 202, CreatedItemEntry = 40767 },
		[56467] = { SkillIndex = 202, CreatedItemEntry = 40865 },
		[56468] = { SkillIndex = 202, CreatedItemEntry = 44951 },
		[56469] = { SkillIndex = 202, CreatedItemEntry = 41121 },
		[56470] = { SkillIndex = 202, CreatedItemEntry = 41146 },
		[56471] = { SkillIndex = 202, CreatedItemEntry = 39683 },
		[56472] = { SkillIndex = 202, CreatedItemEntry = 40768 },
		[56473] = { SkillIndex = 202, CreatedItemEntry = 40895 },
		[56474] = { SkillIndex = 202, CreatedItemEntry = 41164 },
		[56475] = { SkillIndex = 202, CreatedItemEntry = 41165 },
		[56476] = { SkillIndex = 202, CreatedItemEntry = 37567 },
		[56477] = { SkillIndex = 202, CreatedItemEntry = 42546 },
		[56478] = { SkillIndex = 202, CreatedItemEntry = 41167 },
		[56479] = { SkillIndex = 202, CreatedItemEntry = 41168 },
		[56480] = { SkillIndex = 202, CreatedItemEntry = 42549 },
		[56481] = { SkillIndex = 202, CreatedItemEntry = 42550 },
		[56483] = { SkillIndex = 202, CreatedItemEntry = 42552 },
		[56484] = { SkillIndex = 202, CreatedItemEntry = 42553 },
		[56486] = { SkillIndex = 202, CreatedItemEntry = 42554 },
		[56487] = { SkillIndex = 202, CreatedItemEntry = 42555 },
		[56514] = { SkillIndex = 202, CreatedItemEntry = 42641 },
		[56574] = { SkillIndex = 202, CreatedItemEntry = 42551 },
		[60866] = { RecipeItemEntry = 44502, SkillIndex = 202, CreatedItemEntry = 41508 },
		[60867] = { RecipeItemEntry = 44503, SkillIndex = 202, CreatedItemEntry = 44413 },
		[60874] = { SkillIndex = 202, CreatedItemEntry = 44504 },
		[61471] = { SkillIndex = 202, CreatedItemEntry = 44739 },
		[61481] = { SkillIndex = 202, CreatedItemEntry = 44740 },
		[61482] = { SkillIndex = 202, CreatedItemEntry = 44741 },
		[61483] = { SkillIndex = 202, CreatedItemEntry = 44742 },
		[62271] = { SkillIndex = 202, CreatedItemEntry = 44949 },
		[63750] = { SkillIndex = 202, CreatedItemEntry = 45631 },
		[67326] = { SkillIndex = 202, CreatedItemEntry = 47828 },
		[67790] = { SkillIndex = 202, CreatedItemEntry = 48933 },
		[67920] = { SkillIndex = 202, CreatedItemEntry = 48933 },
		[68067] = { RecipeItemEntry = 49050, SkillIndex = 202, CreatedItemEntry = 49040 },
		[72952] = { RecipeItemEntry = 52022, SkillIndex = 202, CreatedItemEntry = 52020 },
		[72953] = { RecipeItemEntry = 52023, SkillIndex = 202, CreatedItemEntry = 52021 },
		[967683] = { RecipeItemEntry = 967689, SkillIndex = 202, CreatedItemEntry = 967680 },
		[967684] = { RecipeItemEntry = 967690, SkillIndex = 202, CreatedItemEntry = 967681 },
		[967685] = { RecipeItemEntry = 967691, SkillIndex = 202, CreatedItemEntry = 967682 },
		[968043] = { RecipeItemEntry = 967275, SkillIndex = 202, CreatedItemEntry = 967197 },
		[968044] = { RecipeItemEntry = 967276, SkillIndex = 202, CreatedItemEntry = 967198 },
		[968046] = { RecipeItemEntry = 967278, SkillIndex = 202, CreatedItemEntry = 967200 },
		[968047] = { RecipeItemEntry = 967279, SkillIndex = 202, CreatedItemEntry = 967201 },
		[968049] = { RecipeItemEntry = 967281, SkillIndex = 202, CreatedItemEntry = 967203 },
		[968050] = { RecipeItemEntry = 967282, SkillIndex = 202, CreatedItemEntry = 967204 },
		[968052] = { RecipeItemEntry = 967284, SkillIndex = 202, CreatedItemEntry = 967206 },
		[968053] = { RecipeItemEntry = 967285, SkillIndex = 202, CreatedItemEntry = 967207 },
		[968055] = { RecipeItemEntry = 967287, SkillIndex = 202, CreatedItemEntry = 967209 },
		[968056] = { RecipeItemEntry = 967288, SkillIndex = 202, CreatedItemEntry = 967210 },
		[968058] = { RecipeItemEntry = 967290, SkillIndex = 202, CreatedItemEntry = 967212 },
		[968059] = { RecipeItemEntry = 967291, SkillIndex = 202, CreatedItemEntry = 967213 },
		[979352] = { RecipeItemEntry = 1203252, SkillIndex = 202, CreatedItemEntry = 1203234 },
		[979353] = { SkillIndex = 202, CreatedItemEntry = 1203235 },
		[979354] = { RecipeItemEntry = 1203254, SkillIndex = 202, CreatedItemEntry = 1203236 },
		[979550] = { RecipeItemEntry = 1204101, SkillIndex = 202, CreatedItemEntry = 1204049 },
		[979551] = { RecipeItemEntry = 1204102, SkillIndex = 202, CreatedItemEntry = 1204050 },
		[979552] = { RecipeItemEntry = 1204103, SkillIndex = 202, CreatedItemEntry = 1204051 },
		[979553] = { RecipeItemEntry = 1204104, SkillIndex = 202, CreatedItemEntry = 1204052 },
		[979554] = { RecipeItemEntry = 1204105, SkillIndex = 202, CreatedItemEntry = 1204053 },
		[979555] = { RecipeItemEntry = 1204106, SkillIndex = 202, CreatedItemEntry = 1204054 },
		[979556] = { RecipeItemEntry = 1204107, SkillIndex = 202, CreatedItemEntry = 1204055 },
		[979557] = { RecipeItemEntry = 1204108, SkillIndex = 202, CreatedItemEntry = 1204056 },
		[979558] = { RecipeItemEntry = 1204109, SkillIndex = 202, CreatedItemEntry = 1204057 },
		[979559] = { RecipeItemEntry = 1204110, SkillIndex = 202, CreatedItemEntry = 1204058 },
		[979560] = { RecipeItemEntry = 1204111, SkillIndex = 202, CreatedItemEntry = 1204059 },
		[979561] = { RecipeItemEntry = 1204112, SkillIndex = 202, CreatedItemEntry = 1204060 },
		[979833] = { SkillIndex = 202, CreatedItemEntry = 1203481 },
		[979834] = { SkillIndex = 202, CreatedItemEntry = 1203131 },
		[979835] = { SkillIndex = 202, CreatedItemEntry = 1203133 },
		[979836] = { SkillIndex = 202, CreatedItemEntry = 1203135 },
		[1979833] = { RecipeItemEntry = 1303541, SkillIndex = 202, CreatedItemEntry = 1303481 },
		[1979834] = { RecipeItemEntry = 1303542, SkillIndex = 202, CreatedItemEntry = 1303131 },
		[1979835] = { RecipeItemEntry = 1303543, SkillIndex = 202, CreatedItemEntry = 1303133 },
		[1979836] = { RecipeItemEntry = 1303544, SkillIndex = 202, CreatedItemEntry = 1303135 },
		[7418] = { SkillIndex = 333, CreatedItemEntry = 38679 },
		[7420] = { SkillIndex = 333, CreatedItemEntry = 38766 },
		[7421] = { SkillIndex = 333, CreatedItemEntry = 6218 },
		[7426] = { SkillIndex = 333, CreatedItemEntry = 38767 },
		[7428] = { SkillIndex = 333, CreatedItemEntry = 38768 },
		[7443] = { RecipeItemEntry = 6342, SkillIndex = 333, CreatedItemEntry = 38769 },
		[7454] = { SkillIndex = 333, CreatedItemEntry = 38770 },
		[7457] = { SkillIndex = 333, CreatedItemEntry = 38771 },
		[7745] = { SkillIndex = 333, CreatedItemEntry = 38772 },
		[7748] = { SkillIndex = 333, CreatedItemEntry = 38773 },
		[7766] = { RecipeItemEntry = 6344, SkillIndex = 333, CreatedItemEntry = 38774 },
		[7771] = { SkillIndex = 333, CreatedItemEntry = 38775 },
		[7776] = { RecipeItemEntry = 6346, SkillIndex = 333, CreatedItemEntry = 38776 },
		[7779] = { SkillIndex = 333, CreatedItemEntry = 38777 },
		[7782] = { RecipeItemEntry = 6347, SkillIndex = 333, CreatedItemEntry = 38778 },
		[7786] = { RecipeItemEntry = 6348, SkillIndex = 333, CreatedItemEntry = 38779 },
		[7788] = { SkillIndex = 333, CreatedItemEntry = 38780 },
		[7793] = { RecipeItemEntry = 6349, SkillIndex = 333, CreatedItemEntry = 38781 },
		[7795] = { SkillIndex = 333, CreatedItemEntry = 6339 },
		[7857] = { SkillIndex = 333, CreatedItemEntry = 38782 },
		[7859] = { RecipeItemEntry = 6375, SkillIndex = 333, CreatedItemEntry = 38783 },
		[7861] = { SkillIndex = 333, CreatedItemEntry = 38784 },
		[7863] = { SkillIndex = 333, CreatedItemEntry = 38785 },
		[7867] = { RecipeItemEntry = 6377, SkillIndex = 333, CreatedItemEntry = 38786 },
		[13378] = { SkillIndex = 333, CreatedItemEntry = 38787 },
		[13380] = { RecipeItemEntry = 11038, SkillIndex = 333, CreatedItemEntry = 38788 },
		[13419] = { RecipeItemEntry = 11039, SkillIndex = 333, CreatedItemEntry = 38789 },
		[13421] = { SkillIndex = 333, CreatedItemEntry = 38790 },
		[13464] = { RecipeItemEntry = 11081, SkillIndex = 333, CreatedItemEntry = 38791 },
		[13485] = { SkillIndex = 333, CreatedItemEntry = 38792 },
		[13501] = { SkillIndex = 333, CreatedItemEntry = 38793 },
		[13503] = { SkillIndex = 333, CreatedItemEntry = 38794 },
		[13522] = { RecipeItemEntry = 11098, SkillIndex = 333, CreatedItemEntry = 38795 },
		[13529] = { SkillIndex = 333, CreatedItemEntry = 38796 },
		[13536] = { RecipeItemEntry = 11101, SkillIndex = 333, CreatedItemEntry = 38797 },
		[13538] = { SkillIndex = 333, CreatedItemEntry = 38798 },
		[13607] = { SkillIndex = 333, CreatedItemEntry = 38799 },
		[13612] = { RecipeItemEntry = 11150, SkillIndex = 333, CreatedItemEntry = 38800 },
		[13617] = { RecipeItemEntry = 11151, SkillIndex = 333, CreatedItemEntry = 38801 },
		[13620] = { RecipeItemEntry = 11152, SkillIndex = 333, CreatedItemEntry = 38802 },
		[13622] = { SkillIndex = 333, CreatedItemEntry = 38803 },
		[13626] = { SkillIndex = 333, CreatedItemEntry = 38804 },
		[13628] = { SkillIndex = 333, CreatedItemEntry = 11130 },
		[13631] = { SkillIndex = 333, CreatedItemEntry = 38805 },
		[13635] = { SkillIndex = 333, CreatedItemEntry = 38806 },
		[13637] = { SkillIndex = 333, CreatedItemEntry = 38807 },
		[13640] = { SkillIndex = 333, CreatedItemEntry = 38808 },
		[13642] = { SkillIndex = 333, CreatedItemEntry = 38809 },
		[13644] = { SkillIndex = 333, CreatedItemEntry = 38810 },
		[13646] = { RecipeItemEntry = 11163, SkillIndex = 333, CreatedItemEntry = 38811 },
		[13648] = { SkillIndex = 333, CreatedItemEntry = 38812 },
		[13653] = { RecipeItemEntry = 11164, SkillIndex = 333, CreatedItemEntry = 38813 },
		[13655] = { RecipeItemEntry = 11165, SkillIndex = 333, CreatedItemEntry = 38814 },
		[13657] = { SkillIndex = 333, CreatedItemEntry = 38815 },
		[13659] = { SkillIndex = 333, CreatedItemEntry = 38816 },
		[13661] = { SkillIndex = 333, CreatedItemEntry = 38817 },
		[13663] = { SkillIndex = 333, CreatedItemEntry = 38818 },
		[13687] = { RecipeItemEntry = 11167, SkillIndex = 333, CreatedItemEntry = 38819 },
		[13689] = { RecipeItemEntry = 11168, SkillIndex = 333, CreatedItemEntry = 38820 },
		[13693] = { SkillIndex = 333, CreatedItemEntry = 38821 },
		[13695] = { SkillIndex = 333, CreatedItemEntry = 38822 },
		[13698] = { RecipeItemEntry = 11166, SkillIndex = 333, CreatedItemEntry = 38823 },
		[13700] = { SkillIndex = 333, CreatedItemEntry = 38824 },
		[13702] = { SkillIndex = 333, CreatedItemEntry = 11145 },
		[13746] = { SkillIndex = 333, CreatedItemEntry = 38825 },
		[13794] = { SkillIndex = 333, CreatedItemEntry = 38826 },
		[13815] = { SkillIndex = 333, CreatedItemEntry = 38827 },
		[13817] = { RecipeItemEntry = 11202, SkillIndex = 333, CreatedItemEntry = 38828 },
		[13822] = { SkillIndex = 333, CreatedItemEntry = 38829 },
		[13836] = { SkillIndex = 333, CreatedItemEntry = 38830 },
		[13841] = { RecipeItemEntry = 11203, SkillIndex = 333, CreatedItemEntry = 38831 },
		[13846] = { RecipeItemEntry = 11204, SkillIndex = 333, CreatedItemEntry = 38832 },
		[13858] = { SkillIndex = 333, CreatedItemEntry = 38833 },
		[13868] = { RecipeItemEntry = 11205, SkillIndex = 333, CreatedItemEntry = 38834 },
		[13882] = { RecipeItemEntry = 11206, SkillIndex = 333, CreatedItemEntry = 38835 },
		[13887] = { SkillIndex = 333, CreatedItemEntry = 38836 },
		[13890] = { SkillIndex = 333, CreatedItemEntry = 38837 },
		[13898] = { RecipeItemEntry = 11207, SkillIndex = 333, CreatedItemEntry = 38838 },
		[13905] = { SkillIndex = 333, CreatedItemEntry = 38839 },
		[13915] = { RecipeItemEntry = 11208, SkillIndex = 333, CreatedItemEntry = 38840 },
		[13917] = { SkillIndex = 333, CreatedItemEntry = 38841 },
		[13931] = { RecipeItemEntry = 11223, SkillIndex = 333, CreatedItemEntry = 38842 },
		[13933] = { RecipeItemEntry = 11224, SkillIndex = 333, CreatedItemEntry = 38843 },
		[13935] = { SkillIndex = 333, CreatedItemEntry = 38844 },
		[13937] = { SkillIndex = 333, CreatedItemEntry = 38845 },
		[13939] = { SkillIndex = 333, CreatedItemEntry = 38846 },
		[13941] = { SkillIndex = 333, CreatedItemEntry = 38847 },
		[13943] = { SkillIndex = 333, CreatedItemEntry = 38848 },
		[13945] = { RecipeItemEntry = 11225, SkillIndex = 333, CreatedItemEntry = 38849 },
		[13947] = { RecipeItemEntry = 11226, SkillIndex = 333, CreatedItemEntry = 38850 },
		[13948] = { SkillIndex = 333, CreatedItemEntry = 38851 },
		[14293] = { SkillIndex = 333, CreatedItemEntry = 11287 },
		[14807] = { SkillIndex = 333, CreatedItemEntry = 11288 },
		[14809] = { SkillIndex = 333, CreatedItemEntry = 11289 },
		[14810] = { SkillIndex = 333, CreatedItemEntry = 11290 },
		[15596] = { RecipeItemEntry = 11813, SkillIndex = 333, CreatedItemEntry = 11811 },
		[17180] = { SkillIndex = 333, CreatedItemEntry = 12655 },
		[17181] = { SkillIndex = 333, CreatedItemEntry = 12810 },
		[20008] = { RecipeItemEntry = 16214, SkillIndex = 333, CreatedItemEntry = 38852 },
		[20009] = { RecipeItemEntry = 16218, SkillIndex = 333, CreatedItemEntry = 38853 },
		[20010] = { RecipeItemEntry = 16246, SkillIndex = 333, CreatedItemEntry = 38854 },
		[20011] = { RecipeItemEntry = 16251, SkillIndex = 333, CreatedItemEntry = 38855 },
		[20012] = { RecipeItemEntry = 16219, SkillIndex = 333, CreatedItemEntry = 38856 },
		[20013] = { RecipeItemEntry = 16244, SkillIndex = 333, CreatedItemEntry = 38857 },
		[20014] = { RecipeItemEntry = 16216, SkillIndex = 333, CreatedItemEntry = 38858 },
		[20015] = { RecipeItemEntry = 16224, SkillIndex = 333, CreatedItemEntry = 38859 },
		[20016] = { RecipeItemEntry = 16222, SkillIndex = 333, CreatedItemEntry = 38860 },
		[20017] = { RecipeItemEntry = 16217, SkillIndex = 333, CreatedItemEntry = 38861 },
		[20020] = { RecipeItemEntry = 16215, SkillIndex = 333, CreatedItemEntry = 38862 },
		[20023] = { RecipeItemEntry = 16245, SkillIndex = 333, CreatedItemEntry = 38863 },
		[20024] = { RecipeItemEntry = 16220, SkillIndex = 333, CreatedItemEntry = 38864 },
		[20025] = { RecipeItemEntry = 16253, SkillIndex = 333, CreatedItemEntry = 38865 },
		[20026] = { RecipeItemEntry = 16221, SkillIndex = 333, CreatedItemEntry = 38866 },
		[20028] = { RecipeItemEntry = 16242, SkillIndex = 333, CreatedItemEntry = 38867 },
		[20029] = { RecipeItemEntry = 16223, SkillIndex = 333, CreatedItemEntry = 38868 },
		[20030] = { RecipeItemEntry = 16247, SkillIndex = 333, CreatedItemEntry = 38869 },
		[20031] = { RecipeItemEntry = 16250, SkillIndex = 333, CreatedItemEntry = 38870 },
		[20032] = { RecipeItemEntry = 16254, SkillIndex = 333, CreatedItemEntry = 38871 },
		[20033] = { RecipeItemEntry = 16248, SkillIndex = 333, CreatedItemEntry = 38872 },
		[20034] = { RecipeItemEntry = 16252, SkillIndex = 333, CreatedItemEntry = 38873 },
		[20035] = { RecipeItemEntry = 16255, SkillIndex = 333, CreatedItemEntry = 38874 },
		[20036] = { RecipeItemEntry = 16249, SkillIndex = 333, CreatedItemEntry = 38875 },
		[20051] = { RecipeItemEntry = 16243, SkillIndex = 333, CreatedItemEntry = 16207 },
		[21931] = { RecipeItemEntry = 17725, SkillIndex = 333, CreatedItemEntry = 38876 },
		[22749] = { RecipeItemEntry = 18259, SkillIndex = 333, CreatedItemEntry = 38877 },
		[22750] = { RecipeItemEntry = 18260, SkillIndex = 333, CreatedItemEntry = 38878 },
		[23799] = { RecipeItemEntry = 19444, SkillIndex = 333, CreatedItemEntry = 38879 },
		[23800] = { RecipeItemEntry = 19445, SkillIndex = 333, CreatedItemEntry = 38880 },
		[23801] = { RecipeItemEntry = 19446, SkillIndex = 333, CreatedItemEntry = 38881 },
		[23802] = { RecipeItemEntry = 19447, SkillIndex = 333, CreatedItemEntry = 38882 },
		[23803] = { RecipeItemEntry = 19448, SkillIndex = 333, CreatedItemEntry = 38883 },
		[23804] = { RecipeItemEntry = 19449, SkillIndex = 333, CreatedItemEntry = 38884 },
		[25072] = { RecipeItemEntry = 20726, SkillIndex = 333, CreatedItemEntry = 38885 },
		[25073] = { RecipeItemEntry = 20727, SkillIndex = 333, CreatedItemEntry = 38886 },
		[25074] = { RecipeItemEntry = 20728, SkillIndex = 333, CreatedItemEntry = 38887 },
		[25078] = { RecipeItemEntry = 20729, SkillIndex = 333, CreatedItemEntry = 38888 },
		[25079] = { RecipeItemEntry = 20730, SkillIndex = 333, CreatedItemEntry = 38889 },
		[25080] = { RecipeItemEntry = 20731, SkillIndex = 333, CreatedItemEntry = 38890 },
		[25081] = { RecipeItemEntry = 20732, SkillIndex = 333, CreatedItemEntry = 38891 },
		[25082] = { RecipeItemEntry = 20733, SkillIndex = 333, CreatedItemEntry = 38892 },
		[25083] = { RecipeItemEntry = 20734, SkillIndex = 333, CreatedItemEntry = 38893 },
		[25084] = { RecipeItemEntry = 20735, SkillIndex = 333, CreatedItemEntry = 38894 },
		[25086] = { RecipeItemEntry = 20736, SkillIndex = 333, CreatedItemEntry = 38895 },
		[25124] = { RecipeItemEntry = 20758, SkillIndex = 333, CreatedItemEntry = 20744 },
		[25125] = { RecipeItemEntry = 20752, SkillIndex = 333, CreatedItemEntry = 20745 },
		[25126] = { RecipeItemEntry = 20753, SkillIndex = 333, CreatedItemEntry = 20746 },
		[25127] = { RecipeItemEntry = 20754, SkillIndex = 333, CreatedItemEntry = 20747 },
		[25128] = { RecipeItemEntry = 20755, SkillIndex = 333, CreatedItemEntry = 20750 },
		[25129] = { RecipeItemEntry = 20756, SkillIndex = 333, CreatedItemEntry = 20749 },
		[25130] = { RecipeItemEntry = 20757, SkillIndex = 333, CreatedItemEntry = 20748 },
		[27837] = { RecipeItemEntry = 22392, SkillIndex = 333, CreatedItemEntry = 38896 },
		[27899] = { SkillIndex = 333, CreatedItemEntry = 38897 },
		[27905] = { SkillIndex = 333, CreatedItemEntry = 38898 },
		[27906] = { RecipeItemEntry = 22530, SkillIndex = 333, CreatedItemEntry = 38899 },
		[27911] = { RecipeItemEntry = 22531, SkillIndex = 333, CreatedItemEntry = 38900 },
		[27913] = { RecipeItemEntry = 22532, SkillIndex = 333, CreatedItemEntry = 38901 },
		[27914] = { RecipeItemEntry = 22533, SkillIndex = 333, CreatedItemEntry = 38902 },
		[27917] = { RecipeItemEntry = 22534, SkillIndex = 333, CreatedItemEntry = 38903 },
		[27920] = { RecipeItemEntry = 22535, SkillIndex = 333 },
		[27924] = { RecipeItemEntry = 22536, SkillIndex = 333 },
		[27926] = { RecipeItemEntry = 22537, SkillIndex = 333 },
		[27927] = { RecipeItemEntry = 22538, SkillIndex = 333 },
		[27944] = { SkillIndex = 333, CreatedItemEntry = 38904 },
		[27945] = { RecipeItemEntry = 22539, SkillIndex = 333, CreatedItemEntry = 38905 },
		[27946] = { RecipeItemEntry = 22540, SkillIndex = 333, CreatedItemEntry = 38906 },
		[27947] = { RecipeItemEntry = 22541, SkillIndex = 333, CreatedItemEntry = 38907 },
		[27948] = { RecipeItemEntry = 22542, SkillIndex = 333, CreatedItemEntry = 38908 },
		[27950] = { RecipeItemEntry = 22543, SkillIndex = 333, CreatedItemEntry = 38909 },
		[27951] = { RecipeItemEntry = 22544, SkillIndex = 333, CreatedItemEntry = 37603 },
		[27954] = { RecipeItemEntry = 22545, SkillIndex = 333, CreatedItemEntry = 38910 },
		[27957] = { SkillIndex = 333, CreatedItemEntry = 38911 },
		[27958] = { SkillIndex = 333, CreatedItemEntry = 38912 },
		[27960] = { RecipeItemEntry = 22547, SkillIndex = 333, CreatedItemEntry = 38913 },
		[27961] = { SkillIndex = 333, CreatedItemEntry = 38914 },
		[27962] = { RecipeItemEntry = 22548, SkillIndex = 333, CreatedItemEntry = 38915 },
		[27967] = { RecipeItemEntry = 22552, SkillIndex = 333, CreatedItemEntry = 38917 },
		[27968] = { RecipeItemEntry = 22551, SkillIndex = 333, CreatedItemEntry = 38918 },
		[27971] = { RecipeItemEntry = 22554, SkillIndex = 333, CreatedItemEntry = 38919 },
		[27972] = { RecipeItemEntry = 22553, SkillIndex = 333, CreatedItemEntry = 38920 },
		[27975] = { RecipeItemEntry = 22555, SkillIndex = 333, CreatedItemEntry = 38921 },
		[27977] = { RecipeItemEntry = 22556, SkillIndex = 333, CreatedItemEntry = 38922 },
		[27981] = { RecipeItemEntry = 22560, SkillIndex = 333, CreatedItemEntry = 38923 },
		[27982] = { RecipeItemEntry = 22561, SkillIndex = 333, CreatedItemEntry = 38924 },
		[27984] = { RecipeItemEntry = 22559, SkillIndex = 333, CreatedItemEntry = 38925 },
		[28003] = { RecipeItemEntry = 22558, SkillIndex = 333, CreatedItemEntry = 38926 },
		[28004] = { RecipeItemEntry = 22557, SkillIndex = 333, CreatedItemEntry = 38927 },
		[28016] = { RecipeItemEntry = 22562, SkillIndex = 333, CreatedItemEntry = 22521 },
		[28019] = { RecipeItemEntry = 22563, SkillIndex = 333, CreatedItemEntry = 22522 },
		[28021] = { SkillIndex = 333, CreatedItemEntry = 22445 },
		[28022] = { RecipeItemEntry = 22565, SkillIndex = 333, CreatedItemEntry = 22449 },
		[28027] = { SkillIndex = 333, CreatedItemEntry = 22460 },
		[28028] = { SkillIndex = 333, CreatedItemEntry = 22459 },
		[32664] = { SkillIndex = 333, CreatedItemEntry = 22461 },
		[32665] = { RecipeItemEntry = 25848, SkillIndex = 333, CreatedItemEntry = 22462 },
		[32667] = { RecipeItemEntry = 25849, SkillIndex = 333, CreatedItemEntry = 22463 },
		[33990] = { SkillIndex = 333, CreatedItemEntry = 38928 },
		[33991] = { SkillIndex = 333, CreatedItemEntry = 38929 },
		[33992] = { RecipeItemEntry = 28270, SkillIndex = 333, CreatedItemEntry = 38930 },
		[33993] = { SkillIndex = 333, CreatedItemEntry = 38931 },
		[33994] = { RecipeItemEntry = 28271, SkillIndex = 333, CreatedItemEntry = 38932 },
		[33995] = { SkillIndex = 333, CreatedItemEntry = 38933 },
		[33996] = { SkillIndex = 333, CreatedItemEntry = 38934 },
		[33997] = { RecipeItemEntry = 28272, SkillIndex = 333, CreatedItemEntry = 38935 },
		[33999] = { RecipeItemEntry = 28273, SkillIndex = 333, CreatedItemEntry = 38936 },
		[34001] = { SkillIndex = 333, CreatedItemEntry = 38937 },
		[34002] = { SkillIndex = 333, CreatedItemEntry = 38938 },
		[34003] = { RecipeItemEntry = 28274, SkillIndex = 333, CreatedItemEntry = 38939 },
		[34004] = { SkillIndex = 333, CreatedItemEntry = 38940 },
		[34005] = { RecipeItemEntry = 28276, SkillIndex = 333, CreatedItemEntry = 38941 },
		[34006] = { RecipeItemEntry = 28277, SkillIndex = 333, CreatedItemEntry = 38942 },
		[34007] = { RecipeItemEntry = 28279, SkillIndex = 333, CreatedItemEntry = 38943 },
		[34008] = { RecipeItemEntry = 28280, SkillIndex = 333, CreatedItemEntry = 38944 },
		[34009] = { RecipeItemEntry = 28282, SkillIndex = 333, CreatedItemEntry = 38945 },
		[34010] = { RecipeItemEntry = 28281, SkillIndex = 333, CreatedItemEntry = 38946 },
		[42613] = { SkillIndex = 333, CreatedItemEntry = 22448 },
		[42615] = { SkillIndex = 333, CreatedItemEntry = 22448 },
		[42620] = { RecipeItemEntry = 33165, SkillIndex = 333, CreatedItemEntry = 38947 },
		[42974] = { RecipeItemEntry = 33307, SkillIndex = 333, CreatedItemEntry = 38948 },
		[44383] = { SkillIndex = 333, CreatedItemEntry = 38949 },
		[44483] = { RecipeItemEntry = 37332, SkillIndex = 333, CreatedItemEntry = 38950 },
		[44484] = { SkillIndex = 333, CreatedItemEntry = 38951 },
		[44488] = { SkillIndex = 333, CreatedItemEntry = 38953 },
		[44489] = { SkillIndex = 333, CreatedItemEntry = 38954 },
		[44492] = { SkillIndex = 333, CreatedItemEntry = 38955 },
		[44494] = { RecipeItemEntry = 37333, SkillIndex = 333, CreatedItemEntry = 38956 },
		[44500] = { RecipeItemEntry = 37335, SkillIndex = 333, CreatedItemEntry = 38959 },
		[44506] = { SkillIndex = 333, CreatedItemEntry = 38960 },
		[44508] = { SkillIndex = 333, CreatedItemEntry = 38961 },
		[44509] = { SkillIndex = 333, CreatedItemEntry = 38962 },
		[44510] = { RecipeItemEntry = 37329, SkillIndex = 333, CreatedItemEntry = 38963 },
		[44513] = { RecipeItemEntry = 37345, SkillIndex = 333, CreatedItemEntry = 38964 },
		[44524] = { RecipeItemEntry = 37344, SkillIndex = 333, CreatedItemEntry = 38965 },
		[44528] = { SkillIndex = 333, CreatedItemEntry = 38966 },
		[44529] = { SkillIndex = 333, CreatedItemEntry = 38967 },
		[44555] = { SkillIndex = 333, CreatedItemEntry = 38968 },
		[44556] = { RecipeItemEntry = 37331, SkillIndex = 333, CreatedItemEntry = 38969 },
		[44575] = { RecipeItemEntry = 44484, SkillIndex = 333, CreatedItemEntry = 44815 },
		[44576] = { RecipeItemEntry = 44494, SkillIndex = 333, CreatedItemEntry = 38972 },
		[44582] = { SkillIndex = 333, CreatedItemEntry = 38973 },
		[44584] = { SkillIndex = 333, CreatedItemEntry = 38974 },
		[44588] = { RecipeItemEntry = 37340, SkillIndex = 333, CreatedItemEntry = 38975 },
		[44589] = { SkillIndex = 333, CreatedItemEntry = 38976 },
		[44590] = { RecipeItemEntry = 37334, SkillIndex = 333, CreatedItemEntry = 38977 },
		[44591] = { RecipeItemEntry = 37347, SkillIndex = 333, CreatedItemEntry = 38978 },
		[44592] = { SkillIndex = 333, CreatedItemEntry = 38979 },
		[44593] = { RecipeItemEntry = 37326, SkillIndex = 333, CreatedItemEntry = 38980 },
		[44595] = { RecipeItemEntry = 44473, SkillIndex = 333, CreatedItemEntry = 38981 },
		[44596] = { RecipeItemEntry = 37330, SkillIndex = 333, CreatedItemEntry = 38982 },
		[44598] = { RecipeItemEntry = 37346, SkillIndex = 333, CreatedItemEntry = 38984 },
		[44612] = { SkillIndex = 333, CreatedItemEntry = 38985 },
		[44616] = { RecipeItemEntry = 37337, SkillIndex = 333, CreatedItemEntry = 38987 },
		[44621] = { RecipeItemEntry = 37339, SkillIndex = 333, CreatedItemEntry = 38988 },
		[44623] = { SkillIndex = 333, CreatedItemEntry = 38989 },
		[44625] = { RecipeItemEntry = 44485, SkillIndex = 333, CreatedItemEntry = 38990 },
		[44629] = { SkillIndex = 333, CreatedItemEntry = 38991 },
		[44630] = { RecipeItemEntry = 37338, SkillIndex = 333, CreatedItemEntry = 38992 },
		[44631] = { RecipeItemEntry = 37349, SkillIndex = 333, CreatedItemEntry = 38993 },
		[44633] = { RecipeItemEntry = 37343, SkillIndex = 333, CreatedItemEntry = 38995 },
		[44635] = { SkillIndex = 333, CreatedItemEntry = 38997 },
		[44636] = { SkillIndex = 333 },
		[44645] = { SkillIndex = 333 },
		[45765] = { RecipeItemEntry = 34872, SkillIndex = 333, CreatedItemEntry = 22449 },
		[46578] = { RecipeItemEntry = 35498, SkillIndex = 333, CreatedItemEntry = 38998 },
		[46594] = { RecipeItemEntry = 35500, SkillIndex = 333, CreatedItemEntry = 38999 },
		[47051] = { RecipeItemEntry = 35756, SkillIndex = 333, CreatedItemEntry = 39000 },
		[47672] = { RecipeItemEntry = 44471, SkillIndex = 333, CreatedItemEntry = 39001 },
		[47766] = { RecipeItemEntry = 37336, SkillIndex = 333, CreatedItemEntry = 39002 },
		[47898] = { RecipeItemEntry = 37348, SkillIndex = 333, CreatedItemEntry = 39003 },
		[47899] = { RecipeItemEntry = 44488, SkillIndex = 333, CreatedItemEntry = 39004 },
		[47900] = { SkillIndex = 333, CreatedItemEntry = 39005 },
		[47901] = { RecipeItemEntry = 44491, SkillIndex = 333, CreatedItemEntry = 39006 },
		[59619] = { RecipeItemEntry = 44496, SkillIndex = 333, CreatedItemEntry = 44497 },
		[59621] = { RecipeItemEntry = 44492, SkillIndex = 333, CreatedItemEntry = 44493 },
		[59625] = { RecipeItemEntry = 44495, SkillIndex = 333, CreatedItemEntry = 43987 },
		[59636] = { SkillIndex = 333 },
		[60606] = { SkillIndex = 333, CreatedItemEntry = 44449 },
		[60609] = { SkillIndex = 333, CreatedItemEntry = 44456 },
		[60616] = { SkillIndex = 333, CreatedItemEntry = 38971 },
		[60619] = { SkillIndex = 333, CreatedItemEntry = 44452 },
		[60621] = { SkillIndex = 333, CreatedItemEntry = 44453 },
		[60623] = { SkillIndex = 333, CreatedItemEntry = 38986 },
		[60653] = { SkillIndex = 333, CreatedItemEntry = 44455 },
		[60663] = { SkillIndex = 333, CreatedItemEntry = 44457 },
		[60668] = { SkillIndex = 333, CreatedItemEntry = 44458 },
		[60691] = { RecipeItemEntry = 44483, SkillIndex = 333, CreatedItemEntry = 44463 },
		[60692] = { RecipeItemEntry = 44489, SkillIndex = 333, CreatedItemEntry = 44465 },
		[60707] = { RecipeItemEntry = 44486, SkillIndex = 333, CreatedItemEntry = 44466 },
		[60714] = { RecipeItemEntry = 44487, SkillIndex = 333, CreatedItemEntry = 44467 },
		[60763] = { RecipeItemEntry = 44490, SkillIndex = 333, CreatedItemEntry = 44469 },
		[60767] = { RecipeItemEntry = 44498, SkillIndex = 333, CreatedItemEntry = 44470 },
		[62256] = { RecipeItemEntry = 44944, SkillIndex = 333, CreatedItemEntry = 44947 },
		[62257] = { RecipeItemEntry = 44945, SkillIndex = 333, CreatedItemEntry = 44946 },
		[62948] = { RecipeItemEntry = 45059, SkillIndex = 333, CreatedItemEntry = 45056 },
		[62959] = { SkillIndex = 333, CreatedItemEntry = 45060 },
		[63746] = { SkillIndex = 333, CreatedItemEntry = 45628 },
		[64441] = { RecipeItemEntry = 46027, SkillIndex = 333, CreatedItemEntry = 46026 },
		[64579] = { RecipeItemEntry = 46348, SkillIndex = 333, CreatedItemEntry = 46098 },
		[69412] = { SkillIndex = 333 },
		[71692] = { RecipeItemEntry = 50406, SkillIndex = 333, CreatedItemEntry = 50816 },
		[225072] = { RecipeItemEntry = 33153, SkillIndex = 333, CreatedItemEntry = 238885 },
		[225080] = { RecipeItemEntry = 33152, SkillIndex = 333, CreatedItemEntry = 338890 },
		[225083] = { RecipeItemEntry = 33149, SkillIndex = 333, CreatedItemEntry = 238893 },
		[225084] = { RecipeItemEntry = 33147, SkillIndex = 333, CreatedItemEntry = 238894 },
		[225086] = { RecipeItemEntry = 33148, SkillIndex = 333, CreatedItemEntry = 238895 },
		[351501] = { RecipeItemEntry = 816254, SkillIndex = 333, CreatedItemEntry = 838875 },
		[351530] = { RecipeItemEntry = 1816254, SkillIndex = 333, CreatedItemEntry = 1838875 },
		[351535] = { RecipeItemEntry = 2033307, SkillIndex = 333, CreatedItemEntry = 2038948 },
		[359012] = { RecipeItemEntry = 816253, SkillIndex = 333, CreatedItemEntry = 838874 },
		[820034] = { RecipeItemEntry = 816252, SkillIndex = 333, CreatedItemEntry = 838873 },
		[968677] = { RecipeItemEntry = 967731, SkillIndex = 333, CreatedItemEntry = 967761 },
		[968678] = { RecipeItemEntry = 967732, SkillIndex = 333, CreatedItemEntry = 967762 },
		[968680] = { RecipeItemEntry = 967734, SkillIndex = 333, CreatedItemEntry = 967764 },
		[968681] = { RecipeItemEntry = 967735, SkillIndex = 333, CreatedItemEntry = 967765 },
		[968683] = { RecipeItemEntry = 967737, SkillIndex = 333, CreatedItemEntry = 967767 },
		[968684] = { RecipeItemEntry = 967738, SkillIndex = 333, CreatedItemEntry = 967768 },
		[968686] = { RecipeItemEntry = 967740, SkillIndex = 333, CreatedItemEntry = 967770 },
		[968687] = { RecipeItemEntry = 967741, SkillIndex = 333, CreatedItemEntry = 967771 },
		[968689] = { RecipeItemEntry = 967743, SkillIndex = 333, CreatedItemEntry = 967773 },
		[968690] = { RecipeItemEntry = 967744, SkillIndex = 333, CreatedItemEntry = 967774 },
		[968692] = { RecipeItemEntry = 967746, SkillIndex = 333, CreatedItemEntry = 967776 },
		[968693] = { RecipeItemEntry = 967747, SkillIndex = 333, CreatedItemEntry = 967777 },
		[968695] = { RecipeItemEntry = 967749, SkillIndex = 333, CreatedItemEntry = 967779 },
		[968696] = { RecipeItemEntry = 967750, SkillIndex = 333, CreatedItemEntry = 967780 },
		[968698] = { RecipeItemEntry = 967752, SkillIndex = 333, CreatedItemEntry = 967782 },
		[968699] = { RecipeItemEntry = 967753, SkillIndex = 333, CreatedItemEntry = 967783 },
		[968701] = { RecipeItemEntry = 967755, SkillIndex = 333, CreatedItemEntry = 967785 },
		[968702] = { RecipeItemEntry = 967756, SkillIndex = 333, CreatedItemEntry = 967786 },
		[968770] = { RecipeItemEntry = 967789, SkillIndex = 333, CreatedItemEntry = 967787 },
		[968771] = { RecipeItemEntry = 967790, SkillIndex = 333, CreatedItemEntry = 967788 },
		[968779] = { SkillIndex = 333, CreatedItemEntry = 1201029 },
		[968880] = { SkillIndex = 333, CreatedItemEntry = 1201029 },
		[968881] = { SkillIndex = 333, CreatedItemEntry = 1201029 },
		[968882] = { SkillIndex = 333, CreatedItemEntry = 1201029 },
		[968883] = { SkillIndex = 333, CreatedItemEntry = 1201029 },
		[979341] = { RecipeItemEntry = 1203226, SkillIndex = 333, CreatedItemEntry = 1203150 },
		[979342] = { RecipeItemEntry = 1203227, SkillIndex = 333, CreatedItemEntry = 1203161 },
		[979343] = { RecipeItemEntry = 1203228, SkillIndex = 333, CreatedItemEntry = 1203163 },
		[979344] = { RecipeItemEntry = 1203229, SkillIndex = 333, CreatedItemEntry = 1203165 },
		[979492] = { SkillIndex = 333, CreatedItemEntry = 1203160 },
		[979493] = { SkillIndex = 333, CreatedItemEntry = 1203161 },
		[979494] = { SkillIndex = 333, CreatedItemEntry = 1203162 },
		[979495] = { SkillIndex = 333, CreatedItemEntry = 1203163 },
		[979496] = { SkillIndex = 333, CreatedItemEntry = 1203164 },
		[979497] = { SkillIndex = 333, CreatedItemEntry = 1203165 },
		[1968677] = { RecipeItemEntry = 1204145, SkillIndex = 333, CreatedItemEntry = 1204125 },
		[1968678] = { RecipeItemEntry = 1204146, SkillIndex = 333, CreatedItemEntry = 1204126 },
		[1968680] = { RecipeItemEntry = 1204147, SkillIndex = 333, CreatedItemEntry = 1204127 },
		[1968681] = { RecipeItemEntry = 1204148, SkillIndex = 333, CreatedItemEntry = 1204128 },
		[1968683] = { RecipeItemEntry = 1204149, SkillIndex = 333, CreatedItemEntry = 1204129 },
		[1968684] = { RecipeItemEntry = 1204150, SkillIndex = 333, CreatedItemEntry = 1204130 },
		[1968686] = { RecipeItemEntry = 1204151, SkillIndex = 333, CreatedItemEntry = 1204131 },
		[1968687] = { RecipeItemEntry = 1204152, SkillIndex = 333, CreatedItemEntry = 1204132 },
		[1968689] = { RecipeItemEntry = 1204153, SkillIndex = 333, CreatedItemEntry = 1204133 },
		[1968690] = { RecipeItemEntry = 1204154, SkillIndex = 333, CreatedItemEntry = 1204134 },
		[1968692] = { RecipeItemEntry = 1204155, SkillIndex = 333, CreatedItemEntry = 1204135 },
		[1968693] = { RecipeItemEntry = 1204156, SkillIndex = 333, CreatedItemEntry = 1204136 },
		[1968695] = { RecipeItemEntry = 1204157, SkillIndex = 333, CreatedItemEntry = 1204137 },
		[1968696] = { RecipeItemEntry = 1204158, SkillIndex = 333, CreatedItemEntry = 1204138 },
		[1968698] = { RecipeItemEntry = 1204159, SkillIndex = 333, CreatedItemEntry = 1204139 },
		[1968699] = { RecipeItemEntry = 1204160, SkillIndex = 333, CreatedItemEntry = 1204140 },
		[1968701] = { RecipeItemEntry = 1204161, SkillIndex = 333, CreatedItemEntry = 1204141 },
		[1968702] = { RecipeItemEntry = 1204162, SkillIndex = 333, CreatedItemEntry = 1204142 },
		[1968770] = { RecipeItemEntry = 1204163, SkillIndex = 333, CreatedItemEntry = 1204143 },
		[1968771] = { RecipeItemEntry = 1204164, SkillIndex = 333, CreatedItemEntry = 1204144 },
		[1979341] = { RecipeItemEntry = 1303533, SkillIndex = 333, CreatedItemEntry = 1303150 },
		[1979342] = { RecipeItemEntry = 1303534, SkillIndex = 333, CreatedItemEntry = 1303161 },
		[1979343] = { RecipeItemEntry = 1303535, SkillIndex = 333, CreatedItemEntry = 1303163 },
		[1979344] = { RecipeItemEntry = 1303536, SkillIndex = 333, CreatedItemEntry = 1303165 },
		[1979492] = { SkillIndex = 333, CreatedItemEntry = 1303160 },
		[1979493] = { SkillIndex = 333, CreatedItemEntry = 1303161 },
		[1979496] = { SkillIndex = 333, CreatedItemEntry = 1303164 },
		[1979497] = { SkillIndex = 333, CreatedItemEntry = 1303165 },
		[13977861] = { SkillIndex = 732, CreatedItemEntry = 8210230 },
		[13977881] = { SkillIndex = 732, CreatedItemEntry = 8210231 },
		[13977888] = { SkillIndex = 732, CreatedItemEntry = 8210232 },
		[13977889] = { SkillIndex = 732, CreatedItemEntry = 8210233 },
		[13977890] = { SkillIndex = 732, CreatedItemEntry = 8210234 },
		[25255] = { SkillIndex = 755, CreatedItemEntry = 20816 },
		[25278] = { SkillIndex = 755, CreatedItemEntry = 20817 },
		[25280] = { SkillIndex = 755, CreatedItemEntry = 20818 },
		[25283] = { SkillIndex = 755, CreatedItemEntry = 20821 },
		[25284] = { SkillIndex = 755, CreatedItemEntry = 20820 },
		[25287] = { SkillIndex = 755, CreatedItemEntry = 20823 },
		[25305] = { SkillIndex = 755, CreatedItemEntry = 20826 },
		[25317] = { SkillIndex = 755, CreatedItemEntry = 20827 },
		[25318] = { SkillIndex = 755, CreatedItemEntry = 20828 },
		[25320] = { RecipeItemEntry = 20856, SkillIndex = 755, CreatedItemEntry = 20831 },
		[25321] = { SkillIndex = 755, CreatedItemEntry = 20832 },
		[25323] = { RecipeItemEntry = 20855, SkillIndex = 755, CreatedItemEntry = 20833 },
		[25339] = { RecipeItemEntry = 20854, SkillIndex = 755, CreatedItemEntry = 20830 },
		[25490] = { SkillIndex = 755, CreatedItemEntry = 20907 },
		[25493] = { SkillIndex = 755, CreatedItemEntry = 20906 },
		[25498] = { SkillIndex = 755, CreatedItemEntry = 20909 },
		[25610] = { RecipeItemEntry = 20970, SkillIndex = 755, CreatedItemEntry = 20950 },
		[25612] = { RecipeItemEntry = 20971, SkillIndex = 755, CreatedItemEntry = 20954 },
		[25613] = { SkillIndex = 755, CreatedItemEntry = 20955 },
		[25614] = { SkillIndex = 755, CreatedItemEntry = 20956 },
		[25615] = { SkillIndex = 755, CreatedItemEntry = 20963 },
		[25617] = { RecipeItemEntry = 20973, SkillIndex = 755, CreatedItemEntry = 20958 },
		[25618] = { RecipeItemEntry = 20974, SkillIndex = 755, CreatedItemEntry = 20966 },
		[25619] = { RecipeItemEntry = 20975, SkillIndex = 755, CreatedItemEntry = 20959 },
		[25620] = { SkillIndex = 755, CreatedItemEntry = 20960 },
		[25621] = { SkillIndex = 755, CreatedItemEntry = 20961 },
		[25622] = { RecipeItemEntry = 20976, SkillIndex = 755, CreatedItemEntry = 20967 },
		[26872] = { SkillIndex = 755, CreatedItemEntry = 21748 },
		[26873] = { RecipeItemEntry = 21940, SkillIndex = 755, CreatedItemEntry = 21756 },
		[26874] = { SkillIndex = 755, CreatedItemEntry = 20964 },
		[26875] = { RecipeItemEntry = 21941, SkillIndex = 755, CreatedItemEntry = 21758 },
		[26876] = { SkillIndex = 755, CreatedItemEntry = 21755 },
		[26878] = { RecipeItemEntry = 21942, SkillIndex = 755, CreatedItemEntry = 20969 },
		[26880] = { SkillIndex = 755, CreatedItemEntry = 21752 },
		[26881] = { RecipeItemEntry = 21943, SkillIndex = 755, CreatedItemEntry = 21760 },
		[26882] = { RecipeItemEntry = 21944, SkillIndex = 755, CreatedItemEntry = 21763 },
		[26883] = { SkillIndex = 755, CreatedItemEntry = 21764 },
		[26885] = { SkillIndex = 755, CreatedItemEntry = 21765 },
		[26887] = { RecipeItemEntry = 21945, SkillIndex = 755, CreatedItemEntry = 21754 },
		[26896] = { RecipeItemEntry = 21947, SkillIndex = 755, CreatedItemEntry = 21753 },
		[26897] = { RecipeItemEntry = 21948, SkillIndex = 755, CreatedItemEntry = 21766 },
		[26900] = { RecipeItemEntry = 21949, SkillIndex = 755, CreatedItemEntry = 21769 },
		[26902] = { SkillIndex = 755, CreatedItemEntry = 21767 },
		[26903] = { SkillIndex = 755, CreatedItemEntry = 21768 },
		[26906] = { RecipeItemEntry = 21952, SkillIndex = 755, CreatedItemEntry = 21774 },
		[26907] = { SkillIndex = 755, CreatedItemEntry = 21775 },
		[26908] = { SkillIndex = 755, CreatedItemEntry = 21790 },
		[26909] = { RecipeItemEntry = 21953, SkillIndex = 755, CreatedItemEntry = 21777 },
		[26910] = { RecipeItemEntry = 21954, SkillIndex = 755, CreatedItemEntry = 21778 },
		[26911] = { SkillIndex = 755, CreatedItemEntry = 21791 },
		[26912] = { RecipeItemEntry = 21955, SkillIndex = 755, CreatedItemEntry = 21784 },
		[26914] = { RecipeItemEntry = 21956, SkillIndex = 755, CreatedItemEntry = 21789 },
		[26915] = { RecipeItemEntry = 21957, SkillIndex = 755, CreatedItemEntry = 21792 },
		[26916] = { SkillIndex = 755, CreatedItemEntry = 21779 },
		[26918] = { SkillIndex = 755, CreatedItemEntry = 21793 },
		[26920] = { SkillIndex = 755, CreatedItemEntry = 21780 },
		[26925] = { SkillIndex = 755, CreatedItemEntry = 21931 },
		[26926] = { SkillIndex = 755, CreatedItemEntry = 21932 },
		[26927] = { SkillIndex = 755, CreatedItemEntry = 21933 },
		[26928] = { SkillIndex = 755, CreatedItemEntry = 21934 },
		[28903] = { RecipeItemEntry = 23130, SkillIndex = 755, CreatedItemEntry = 23094 },
		[28905] = { RecipeItemEntry = 23131, SkillIndex = 755, CreatedItemEntry = 23095 },
		[28906] = { RecipeItemEntry = 23133, SkillIndex = 755, CreatedItemEntry = 23096 },
		[28907] = { RecipeItemEntry = 23134, SkillIndex = 755, CreatedItemEntry = 23097 },
		[28910] = { RecipeItemEntry = 23135, SkillIndex = 755, CreatedItemEntry = 23098 },
		[28912] = { RecipeItemEntry = 23136, SkillIndex = 755, CreatedItemEntry = 23099 },
		[28914] = { RecipeItemEntry = 23137, SkillIndex = 755, CreatedItemEntry = 23100 },
		[28915] = { RecipeItemEntry = 23138, SkillIndex = 755, CreatedItemEntry = 23101 },
		[28916] = { RecipeItemEntry = 23140, SkillIndex = 755, CreatedItemEntry = 23103 },
		[28917] = { RecipeItemEntry = 23141, SkillIndex = 755, CreatedItemEntry = 23104 },
		[28918] = { RecipeItemEntry = 23142, SkillIndex = 755, CreatedItemEntry = 23105 },
		[28924] = { RecipeItemEntry = 23143, SkillIndex = 755, CreatedItemEntry = 23106 },
		[28925] = { RecipeItemEntry = 23144, SkillIndex = 755, CreatedItemEntry = 23108 },
		[28927] = { RecipeItemEntry = 23145, SkillIndex = 755, CreatedItemEntry = 23109 },
		[28933] = { RecipeItemEntry = 23146, SkillIndex = 755, CreatedItemEntry = 23110 },
		[28936] = { RecipeItemEntry = 23147, SkillIndex = 755, CreatedItemEntry = 23111 },
		[28938] = { RecipeItemEntry = 23148, SkillIndex = 755, CreatedItemEntry = 23113 },
		[28944] = { RecipeItemEntry = 23149, SkillIndex = 755, CreatedItemEntry = 23114 },
		[28947] = { RecipeItemEntry = 23150, SkillIndex = 755, CreatedItemEntry = 23115 },
		[28948] = { RecipeItemEntry = 23151, SkillIndex = 755, CreatedItemEntry = 23116 },
		[28950] = { RecipeItemEntry = 23152, SkillIndex = 755, CreatedItemEntry = 23118 },
		[28953] = { RecipeItemEntry = 23153, SkillIndex = 755, CreatedItemEntry = 23119 },
		[28955] = { RecipeItemEntry = 23154, SkillIndex = 755, CreatedItemEntry = 23120 },
		[28957] = { RecipeItemEntry = 23155, SkillIndex = 755, CreatedItemEntry = 23121 },
		[31048] = { SkillIndex = 755, CreatedItemEntry = 24074 },
		[31049] = { SkillIndex = 755, CreatedItemEntry = 24075 },
		[31050] = { SkillIndex = 755, CreatedItemEntry = 24076 },
		[31051] = { SkillIndex = 755, CreatedItemEntry = 24077 },
		[31052] = { SkillIndex = 755, CreatedItemEntry = 24078 },
		[31053] = { RecipeItemEntry = 24158, SkillIndex = 755, CreatedItemEntry = 24079 },
		[31054] = { RecipeItemEntry = 24159, SkillIndex = 755, CreatedItemEntry = 24080 },
		[31055] = { RecipeItemEntry = 24160, SkillIndex = 755, CreatedItemEntry = 24082 },
		[31056] = { RecipeItemEntry = 24161, SkillIndex = 755, CreatedItemEntry = 24085 },
		[31057] = { RecipeItemEntry = 24162, SkillIndex = 755, CreatedItemEntry = 24086 },
		[31058] = { RecipeItemEntry = 24163, SkillIndex = 755, CreatedItemEntry = 24087 },
		[31060] = { RecipeItemEntry = 24164, SkillIndex = 755, CreatedItemEntry = 24088 },
		[31061] = { RecipeItemEntry = 24165, SkillIndex = 755, CreatedItemEntry = 24089 },
		[31062] = { RecipeItemEntry = 24174, SkillIndex = 755, CreatedItemEntry = 24092 },
		[31063] = { RecipeItemEntry = 24175, SkillIndex = 755, CreatedItemEntry = 24093 },
		[31064] = { RecipeItemEntry = 24176, SkillIndex = 755, CreatedItemEntry = 24095 },
		[31065] = { RecipeItemEntry = 24177, SkillIndex = 755, CreatedItemEntry = 24097 },
		[31066] = { RecipeItemEntry = 24178, SkillIndex = 755, CreatedItemEntry = 24098 },
		[31067] = { RecipeItemEntry = 24166, SkillIndex = 755, CreatedItemEntry = 24106 },
		[31068] = { RecipeItemEntry = 24167, SkillIndex = 755, CreatedItemEntry = 24110 },
		[31070] = { RecipeItemEntry = 24168, SkillIndex = 755, CreatedItemEntry = 24114 },
		[31071] = { RecipeItemEntry = 24169, SkillIndex = 755, CreatedItemEntry = 24116 },
		[31072] = { RecipeItemEntry = 24170, SkillIndex = 755, CreatedItemEntry = 24117 },
		[31076] = { RecipeItemEntry = 24171, SkillIndex = 755, CreatedItemEntry = 24121 },
		[31077] = { RecipeItemEntry = 24172, SkillIndex = 755, CreatedItemEntry = 24122 },
		[31078] = { RecipeItemEntry = 24173, SkillIndex = 755, CreatedItemEntry = 24123 },
		[31079] = { RecipeItemEntry = 24179, SkillIndex = 755, CreatedItemEntry = 24124 },
		[31080] = { RecipeItemEntry = 24180, SkillIndex = 755, CreatedItemEntry = 24125 },
		[31081] = { RecipeItemEntry = 24181, SkillIndex = 755, CreatedItemEntry = 24126 },
		[31082] = { RecipeItemEntry = 24182, SkillIndex = 755, CreatedItemEntry = 24127 },
		[31083] = { RecipeItemEntry = 24183, SkillIndex = 755, CreatedItemEntry = 24128 },
		[31084] = { RecipeItemEntry = 24193, SkillIndex = 755, CreatedItemEntry = 24027 },
		[31085] = { RecipeItemEntry = 24194, SkillIndex = 755, CreatedItemEntry = 24028 },
		[31087] = { RecipeItemEntry = 24195, SkillIndex = 755, CreatedItemEntry = 24029 },
		[31088] = { RecipeItemEntry = 24196, SkillIndex = 755, CreatedItemEntry = 24030 },
		[31089] = { RecipeItemEntry = 24192, SkillIndex = 755, CreatedItemEntry = 24031 },
		[31090] = { RecipeItemEntry = 24197, SkillIndex = 755, CreatedItemEntry = 24032 },
		[31091] = { RecipeItemEntry = 24198, SkillIndex = 755, CreatedItemEntry = 24036 },
		[31092] = { RecipeItemEntry = 24199, SkillIndex = 755, CreatedItemEntry = 24033 },
		[31094] = { RecipeItemEntry = 24201, SkillIndex = 755, CreatedItemEntry = 24037 },
		[31095] = { RecipeItemEntry = 24202, SkillIndex = 755, CreatedItemEntry = 24039 },
		[31096] = { RecipeItemEntry = 24203, SkillIndex = 755, CreatedItemEntry = 24047 },
		[31097] = { RecipeItemEntry = 24204, SkillIndex = 755, CreatedItemEntry = 24048 },
		[31098] = { RecipeItemEntry = 24205, SkillIndex = 755, CreatedItemEntry = 24051 },
		[31099] = { RecipeItemEntry = 24206, SkillIndex = 755, CreatedItemEntry = 24050 },
		[31100] = { RecipeItemEntry = 24207, SkillIndex = 755, CreatedItemEntry = 24052 },
		[31101] = { RecipeItemEntry = 24208, SkillIndex = 755, CreatedItemEntry = 24053 },
		[31102] = { RecipeItemEntry = 24209, SkillIndex = 755, CreatedItemEntry = 24054 },
		[31103] = { RecipeItemEntry = 24210, SkillIndex = 755, CreatedItemEntry = 24055 },
		[31104] = { RecipeItemEntry = 24211, SkillIndex = 755, CreatedItemEntry = 24056 },
		[31105] = { RecipeItemEntry = 24212, SkillIndex = 755, CreatedItemEntry = 24057 },
		[31106] = { RecipeItemEntry = 24213, SkillIndex = 755, CreatedItemEntry = 24058 },
		[31107] = { RecipeItemEntry = 24214, SkillIndex = 755, CreatedItemEntry = 24059 },
		[31108] = { RecipeItemEntry = 24215, SkillIndex = 755, CreatedItemEntry = 24060 },
		[31109] = { RecipeItemEntry = 24216, SkillIndex = 755, CreatedItemEntry = 24061 },
		[31110] = { RecipeItemEntry = 24217, SkillIndex = 755, CreatedItemEntry = 24062 },
		[31111] = { RecipeItemEntry = 24218, SkillIndex = 755, CreatedItemEntry = 24066 },
		[31112] = { RecipeItemEntry = 24219, SkillIndex = 755, CreatedItemEntry = 24065 },
		[31113] = { RecipeItemEntry = 24220, SkillIndex = 755, CreatedItemEntry = 24067 },
		[31149] = { RecipeItemEntry = 24200, SkillIndex = 755, CreatedItemEntry = 24035 },
		[32178] = { SkillIndex = 755, CreatedItemEntry = 25438 },
		[32179] = { SkillIndex = 755, CreatedItemEntry = 25439 },
		[32259] = { SkillIndex = 755, CreatedItemEntry = 25498 },
		[32801] = { SkillIndex = 755, CreatedItemEntry = 25880 },
		[32807] = { SkillIndex = 755, CreatedItemEntry = 25881 },
		[32808] = { SkillIndex = 755, CreatedItemEntry = 25882 },
		[32809] = { SkillIndex = 755, CreatedItemEntry = 25883 },
		[32810] = { SkillIndex = 755, CreatedItemEntry = 25884 },
		[32866] = { RecipeItemEntry = 25902, SkillIndex = 755, CreatedItemEntry = 25896 },
		[32867] = { RecipeItemEntry = 25903, SkillIndex = 755, CreatedItemEntry = 25897 },
		[32868] = { RecipeItemEntry = 25905, SkillIndex = 755, CreatedItemEntry = 25898 },
		[32869] = { RecipeItemEntry = 25906, SkillIndex = 755, CreatedItemEntry = 25899 },
		[32870] = { RecipeItemEntry = 25904, SkillIndex = 755, CreatedItemEntry = 25901 },
		[32871] = { RecipeItemEntry = 25907, SkillIndex = 755, CreatedItemEntry = 25890 },
		[32872] = { RecipeItemEntry = 25909, SkillIndex = 755, CreatedItemEntry = 25893 },
		[32873] = { RecipeItemEntry = 25908, SkillIndex = 755, CreatedItemEntry = 25894 },
		[32874] = { RecipeItemEntry = 25910, SkillIndex = 755, CreatedItemEntry = 25895 },
		[34069] = { RecipeItemEntry = 28291, SkillIndex = 755, CreatedItemEntry = 28290 },
		[34590] = { RecipeItemEntry = 28596, SkillIndex = 755, CreatedItemEntry = 28595 },
		[34955] = { SkillIndex = 755, CreatedItemEntry = 29157 },
		[34959] = { SkillIndex = 755, CreatedItemEntry = 29158 },
		[34960] = { SkillIndex = 755, CreatedItemEntry = 29159 },
		[34961] = { SkillIndex = 755, CreatedItemEntry = 29160 },
		[36523] = { SkillIndex = 755, CreatedItemEntry = 30419 },
		[36524] = { SkillIndex = 755, CreatedItemEntry = 30420 },
		[36525] = { SkillIndex = 755, CreatedItemEntry = 30421 },
		[36526] = { SkillIndex = 755, CreatedItemEntry = 30422 },
		[37818] = { SkillIndex = 755, CreatedItemEntry = 30804 },
		[37855] = { RecipeItemEntry = 30826, SkillIndex = 755, CreatedItemEntry = 30825 },
		[38068] = { SkillIndex = 755, CreatedItemEntry = 31079 },
		[38175] = { SkillIndex = 755, CreatedItemEntry = 31154 },
		[38503] = { RecipeItemEntry = 31401, SkillIndex = 755, CreatedItemEntry = 31398 },
		[38504] = { RecipeItemEntry = 31402, SkillIndex = 755, CreatedItemEntry = 31399 },
		[39451] = { RecipeItemEntry = 31870, SkillIndex = 755, CreatedItemEntry = 31860 },
		[39452] = { RecipeItemEntry = 31875, SkillIndex = 755, CreatedItemEntry = 31861 },
		[39455] = { RecipeItemEntry = 31871, SkillIndex = 755, CreatedItemEntry = 31862 },
		[39458] = { RecipeItemEntry = 31872, SkillIndex = 755, CreatedItemEntry = 31864 },
		[39462] = { RecipeItemEntry = 31877, SkillIndex = 755, CreatedItemEntry = 31865 },
		[39463] = { RecipeItemEntry = 31876, SkillIndex = 755, CreatedItemEntry = 31863 },
		[39466] = { RecipeItemEntry = 31873, SkillIndex = 755, CreatedItemEntry = 31866 },
		[39467] = { RecipeItemEntry = 31874, SkillIndex = 755, CreatedItemEntry = 31869 },
		[39470] = { RecipeItemEntry = 31878, SkillIndex = 755, CreatedItemEntry = 31867 },
		[39471] = { RecipeItemEntry = 31879, SkillIndex = 755, CreatedItemEntry = 31868 },
		[39705] = { RecipeItemEntry = 32274, SkillIndex = 755, CreatedItemEntry = 32193 },
		[39706] = { RecipeItemEntry = 32277, SkillIndex = 755, CreatedItemEntry = 32194 },
		[39710] = { RecipeItemEntry = 32281, SkillIndex = 755, CreatedItemEntry = 32195 },
		[39711] = { RecipeItemEntry = 32282, SkillIndex = 755, CreatedItemEntry = 32196 },
		[39712] = { RecipeItemEntry = 32283, SkillIndex = 755, CreatedItemEntry = 32197 },
		[39713] = { RecipeItemEntry = 32284, SkillIndex = 755, CreatedItemEntry = 32198 },
		[39714] = { RecipeItemEntry = 32285, SkillIndex = 755, CreatedItemEntry = 32199 },
		[39715] = { RecipeItemEntry = 32286, SkillIndex = 755, CreatedItemEntry = 32200 },
		[39716] = { RecipeItemEntry = 32287, SkillIndex = 755, CreatedItemEntry = 32201 },
		[39717] = { RecipeItemEntry = 32288, SkillIndex = 755, CreatedItemEntry = 32202 },
		[39718] = { RecipeItemEntry = 32289, SkillIndex = 755, CreatedItemEntry = 32203 },
		[39719] = { RecipeItemEntry = 32290, SkillIndex = 755, CreatedItemEntry = 32204 },
		[39720] = { RecipeItemEntry = 32291, SkillIndex = 755, CreatedItemEntry = 32205 },
		[39721] = { RecipeItemEntry = 32292, SkillIndex = 755, CreatedItemEntry = 32206 },
		[39722] = { RecipeItemEntry = 32293, SkillIndex = 755, CreatedItemEntry = 32207 },
		[39723] = { RecipeItemEntry = 32294, SkillIndex = 755, CreatedItemEntry = 32208 },
		[39724] = { RecipeItemEntry = 32295, SkillIndex = 755, CreatedItemEntry = 32209 },
		[39725] = { RecipeItemEntry = 32296, SkillIndex = 755, CreatedItemEntry = 32210 },
		[39727] = { RecipeItemEntry = 32297, SkillIndex = 755, CreatedItemEntry = 32211 },
		[39728] = { RecipeItemEntry = 32298, SkillIndex = 755, CreatedItemEntry = 32212 },
		[39729] = { RecipeItemEntry = 32299, SkillIndex = 755, CreatedItemEntry = 32213 },
		[39730] = { RecipeItemEntry = 32300, SkillIndex = 755, CreatedItemEntry = 32214 },
		[39731] = { RecipeItemEntry = 32301, SkillIndex = 755, CreatedItemEntry = 32215 },
		[39732] = { RecipeItemEntry = 32302, SkillIndex = 755, CreatedItemEntry = 32216 },
		[39733] = { RecipeItemEntry = 32303, SkillIndex = 755, CreatedItemEntry = 32217 },
		[39734] = { RecipeItemEntry = 32304, SkillIndex = 755, CreatedItemEntry = 32218 },
		[39735] = { RecipeItemEntry = 32305, SkillIndex = 755, CreatedItemEntry = 32219 },
		[39736] = { RecipeItemEntry = 32306, SkillIndex = 755, CreatedItemEntry = 32220 },
		[39737] = { RecipeItemEntry = 32307, SkillIndex = 755, CreatedItemEntry = 32221 },
		[39738] = { RecipeItemEntry = 32308, SkillIndex = 755, CreatedItemEntry = 32222 },
		[39739] = { RecipeItemEntry = 32309, SkillIndex = 755, CreatedItemEntry = 32223 },
		[39740] = { RecipeItemEntry = 32310, SkillIndex = 755, CreatedItemEntry = 32224 },
		[39741] = { RecipeItemEntry = 32311, SkillIndex = 755, CreatedItemEntry = 32225 },
		[39742] = { RecipeItemEntry = 32312, SkillIndex = 755, CreatedItemEntry = 32226 },
		[39961] = { RecipeItemEntry = 32412, SkillIndex = 755, CreatedItemEntry = 32409 },
		[39963] = { RecipeItemEntry = 32411, SkillIndex = 755, CreatedItemEntry = 32410 },
		[40514] = { SkillIndex = 755, CreatedItemEntry = 32508 },
		[41414] = { SkillIndex = 755, CreatedItemEntry = 32772 },
		[41415] = { SkillIndex = 755, CreatedItemEntry = 32774 },
		[41418] = { SkillIndex = 755, CreatedItemEntry = 32776 },
		[41420] = { SkillIndex = 755, CreatedItemEntry = 32833 },
		[41429] = { SkillIndex = 755, CreatedItemEntry = 32836 },
		[42558] = { RecipeItemEntry = 33305, SkillIndex = 755, CreatedItemEntry = 33133 },
		[42588] = { RecipeItemEntry = 33155, SkillIndex = 755, CreatedItemEntry = 33134 },
		[42589] = { RecipeItemEntry = 33156, SkillIndex = 755, CreatedItemEntry = 33131 },
		[42590] = { RecipeItemEntry = 33157, SkillIndex = 755, CreatedItemEntry = 33135 },
		[42591] = { RecipeItemEntry = 33158, SkillIndex = 755, CreatedItemEntry = 33143 },
		[42592] = { RecipeItemEntry = 33159, SkillIndex = 755, CreatedItemEntry = 33140 },
		[42593] = { RecipeItemEntry = 33160, SkillIndex = 755, CreatedItemEntry = 33144 },
		[43493] = { RecipeItemEntry = 33783, SkillIndex = 755, CreatedItemEntry = 33782 },
		[44794] = { RecipeItemEntry = 34221, SkillIndex = 755, CreatedItemEntry = 34220 },
		[46122] = { RecipeItemEntry = 35198, SkillIndex = 755, CreatedItemEntry = 34362 },
		[46123] = { RecipeItemEntry = 35199, SkillIndex = 755, CreatedItemEntry = 34363 },
		[46124] = { RecipeItemEntry = 35200, SkillIndex = 755, CreatedItemEntry = 34361 },
		[46125] = { RecipeItemEntry = 35201, SkillIndex = 755, CreatedItemEntry = 34359 },
		[46126] = { RecipeItemEntry = 35202, SkillIndex = 755, CreatedItemEntry = 34360 },
		[46127] = { RecipeItemEntry = 35203, SkillIndex = 755, CreatedItemEntry = 34358 },
		[46403] = { RecipeItemEntry = 15316, SkillIndex = 755, CreatedItemEntry = 35315 },
		[46404] = { RecipeItemEntry = 15317, SkillIndex = 755, CreatedItemEntry = 35316 },
		[46405] = { RecipeItemEntry = 15318, SkillIndex = 755, CreatedItemEntry = 35318 },
		[46597] = { RecipeItemEntry = 35502, SkillIndex = 755, CreatedItemEntry = 35501 },
		[46601] = { RecipeItemEntry = 35505, SkillIndex = 755, CreatedItemEntry = 35503 },
		[46775] = { RecipeItemEntry = 35695, SkillIndex = 755, CreatedItemEntry = 35693 },
		[46776] = { RecipeItemEntry = 35696, SkillIndex = 755, CreatedItemEntry = 35694 },
		[46777] = { RecipeItemEntry = 35697, SkillIndex = 755, CreatedItemEntry = 35700 },
		[46778] = { RecipeItemEntry = 35698, SkillIndex = 755, CreatedItemEntry = 35702 },
		[46779] = { RecipeItemEntry = 35699, SkillIndex = 755, CreatedItemEntry = 35703 },
		[46803] = { RecipeItemEntry = 35708, SkillIndex = 755, CreatedItemEntry = 35707 },
		[47053] = { RecipeItemEntry = 35765, SkillIndex = 755, CreatedItemEntry = 35759 },
		[47054] = { RecipeItemEntry = 35764, SkillIndex = 755, CreatedItemEntry = 35758 },
		[47055] = { RecipeItemEntry = 35762, SkillIndex = 755, CreatedItemEntry = 35760 },
		[47056] = { RecipeItemEntry = 35763, SkillIndex = 755, CreatedItemEntry = 35761 },
		[47280] = { SkillIndex = 755, CreatedItemEntry = 35945 },
		[48789] = { RecipeItemEntry = 15315, SkillIndex = 755, CreatedItemEntry = 37503 },
		[53830] = { RecipeItemEntry = 41576, SkillIndex = 755, CreatedItemEntry = 39996 },
		[53831] = { SkillIndex = 755, CreatedItemEntry = 39900 },
		[53832] = { SkillIndex = 755, CreatedItemEntry = 39905 },
		[53834] = { SkillIndex = 755, CreatedItemEntry = 39911 },
		[53835] = { SkillIndex = 755, CreatedItemEntry = 39906 },
		[53843] = { SkillIndex = 755, CreatedItemEntry = 39907 },
		[53844] = { SkillIndex = 755, CreatedItemEntry = 39908 },
		[53845] = { SkillIndex = 755, CreatedItemEntry = 39909 },
		[53852] = { SkillIndex = 755, CreatedItemEntry = 39912 },
		[53853] = { SkillIndex = 755, CreatedItemEntry = 39914 },
		[53854] = { SkillIndex = 755, CreatedItemEntry = 39915 },
		[53855] = { SkillIndex = 755, CreatedItemEntry = 39916 },
		[53856] = { SkillIndex = 755, CreatedItemEntry = 39918 },
		[53857] = { RecipeItemEntry = 41559, SkillIndex = 755, CreatedItemEntry = 39917 },
		[53859] = { SkillIndex = 755, CreatedItemEntry = 39934 },
		[53860] = { SkillIndex = 755, CreatedItemEntry = 39935 },
		[53861] = { SkillIndex = 755, CreatedItemEntry = 39942 },
		[53862] = { SkillIndex = 755, CreatedItemEntry = 39936 },
		[53863] = { SkillIndex = 755, CreatedItemEntry = 39941 },
		[53864] = { SkillIndex = 755, CreatedItemEntry = 39943 },
		[53865] = { RecipeItemEntry = 41575, SkillIndex = 755, CreatedItemEntry = 39945 },
		[53866] = { SkillIndex = 755, CreatedItemEntry = 39937 },
		[53867] = { SkillIndex = 755, CreatedItemEntry = 39944 },
		[53868] = { SkillIndex = 755, CreatedItemEntry = 39938 },
		[53869] = { RecipeItemEntry = 41574, SkillIndex = 755, CreatedItemEntry = 39939 },
		[53870] = { SkillIndex = 755, CreatedItemEntry = 39933 },
		[53871] = { SkillIndex = 755, CreatedItemEntry = 39940 },
		[53872] = { SkillIndex = 755, CreatedItemEntry = 39947 },
		[53873] = { SkillIndex = 755, CreatedItemEntry = 39948 },
		[53874] = { SkillIndex = 755, CreatedItemEntry = 39949 },
		[53875] = { RecipeItemEntry = 41566, SkillIndex = 755, CreatedItemEntry = 39950 },
		[53876] = { SkillIndex = 755, CreatedItemEntry = 39951 },
		[53877] = { RecipeItemEntry = 41562, SkillIndex = 755, CreatedItemEntry = 39952 },
		[53878] = { SkillIndex = 755, CreatedItemEntry = 39953 },
		[53879] = { RecipeItemEntry = 41565, SkillIndex = 755, CreatedItemEntry = 39954 },
		[53880] = { SkillIndex = 755, CreatedItemEntry = 39955 },
		[53881] = { SkillIndex = 755, CreatedItemEntry = 39946 },
		[53882] = { SkillIndex = 755, CreatedItemEntry = 39956 },
		[53883] = { SkillIndex = 755, CreatedItemEntry = 39957 },
		[53884] = { RecipeItemEntry = 41563, SkillIndex = 755, CreatedItemEntry = 39958 },
		[53885] = { RecipeItemEntry = 41561, SkillIndex = 755, CreatedItemEntry = 39959 },
		[53886] = { SkillIndex = 755, CreatedItemEntry = 39960 },
		[53887] = { SkillIndex = 755, CreatedItemEntry = 39961 },
		[53888] = { RecipeItemEntry = 41564, SkillIndex = 755, CreatedItemEntry = 39962 },
		[53889] = { SkillIndex = 755, CreatedItemEntry = 39963 },
		[53890] = { SkillIndex = 755, CreatedItemEntry = 39964 },
		[53891] = { SkillIndex = 755, CreatedItemEntry = 39965 },
		[53892] = { SkillIndex = 755, CreatedItemEntry = 39966 },
		[53893] = { SkillIndex = 755, CreatedItemEntry = 39967 },
		[53894] = { SkillIndex = 755, CreatedItemEntry = 39968 },
		[53916] = { SkillIndex = 755, CreatedItemEntry = 39974 },
		[53917] = { RecipeItemEntry = 41567, SkillIndex = 755, CreatedItemEntry = 39975 },
		[53918] = { SkillIndex = 755, CreatedItemEntry = 39976 },
		[53919] = { RecipeItemEntry = 41572, SkillIndex = 755, CreatedItemEntry = 39977 },
		[53920] = { SkillIndex = 755, CreatedItemEntry = 39978 },
		[53921] = { RecipeItemEntry = 41568, SkillIndex = 755, CreatedItemEntry = 39979 },
		[53922] = { SkillIndex = 755, CreatedItemEntry = 39980 },
		[53923] = { SkillIndex = 755, CreatedItemEntry = 39981 },
		[53924] = { RecipeItemEntry = 41571, SkillIndex = 755, CreatedItemEntry = 39982 },
		[53925] = { SkillIndex = 755, CreatedItemEntry = 39983 },
		[53926] = { SkillIndex = 755, CreatedItemEntry = 39984 },
		[53927] = { SkillIndex = 755, CreatedItemEntry = 39985 },
		[53928] = { SkillIndex = 755, CreatedItemEntry = 39986 },
		[53929] = { RecipeItemEntry = 41573, SkillIndex = 755, CreatedItemEntry = 39988 },
		[53930] = { SkillIndex = 755, CreatedItemEntry = 39989 },
		[53931] = { SkillIndex = 755, CreatedItemEntry = 39990 },
		[53932] = { RecipeItemEntry = 41570, SkillIndex = 755, CreatedItemEntry = 39991 },
		[53933] = { RecipeItemEntry = 41569, SkillIndex = 755, CreatedItemEntry = 39992 },
		[53934] = { SkillIndex = 755, CreatedItemEntry = 39919 },
		[53940] = { SkillIndex = 755, CreatedItemEntry = 39920 },
		[53941] = { SkillIndex = 755, CreatedItemEntry = 39927 },
		[53943] = { RecipeItemEntry = 41560, SkillIndex = 755, CreatedItemEntry = 39932 },
		[53945] = { RecipeItemEntry = 41577, SkillIndex = 755, CreatedItemEntry = 39997 },
		[53946] = { RecipeItemEntry = 41718, SkillIndex = 755, CreatedItemEntry = 39998 },
		[53947] = { SkillIndex = 755, CreatedItemEntry = 39999 },
		[53948] = { RecipeItemEntry = 41719, SkillIndex = 755, CreatedItemEntry = 40000 },
		[53949] = { RecipeItemEntry = 41578, SkillIndex = 755, CreatedItemEntry = 40001 },
		[53950] = { RecipeItemEntry = 41817, SkillIndex = 755, CreatedItemEntry = 40002 },
		[53951] = { RecipeItemEntry = 41790, SkillIndex = 755, CreatedItemEntry = 40003 },
		[53952] = { RecipeItemEntry = 42138, SkillIndex = 755, CreatedItemEntry = 40008 },
		[53953] = { SkillIndex = 755, CreatedItemEntry = 40009 },
		[53954] = { RecipeItemEntry = 41581, SkillIndex = 755, CreatedItemEntry = 40010 },
		[53955] = { RecipeItemEntry = 41728, SkillIndex = 755, CreatedItemEntry = 40011 },
		[53956] = { SkillIndex = 755, CreatedItemEntry = 40012 },
		[53957] = { RecipeItemEntry = 41720, SkillIndex = 755, CreatedItemEntry = 40013 },
		[53958] = { RecipeItemEntry = 41580, SkillIndex = 755, CreatedItemEntry = 40014 },
		[53959] = { RecipeItemEntry = 41791, SkillIndex = 755, CreatedItemEntry = 40015 },
		[53960] = { RecipeItemEntry = 41727, SkillIndex = 755, CreatedItemEntry = 40016 },
		[53961] = { RecipeItemEntry = 41579, SkillIndex = 755, CreatedItemEntry = 40017 },
		[53962] = { RecipeItemEntry = 41784, SkillIndex = 755, CreatedItemEntry = 40022 },
		[53963] = { RecipeItemEntry = 41747, SkillIndex = 755, CreatedItemEntry = 40023 },
		[53964] = { RecipeItemEntry = 41785, SkillIndex = 755, CreatedItemEntry = 40024 },
		[53965] = { RecipeItemEntry = 41725, SkillIndex = 755, CreatedItemEntry = 40025 },
		[53966] = { RecipeItemEntry = 41783, SkillIndex = 755, CreatedItemEntry = 40026 },
		[53967] = { RecipeItemEntry = 41701, SkillIndex = 755, CreatedItemEntry = 40027 },
		[53968] = { RecipeItemEntry = 41740, SkillIndex = 755, CreatedItemEntry = 40028 },
		[53969] = { SkillIndex = 755, CreatedItemEntry = 40029 },
		[53970] = { RecipeItemEntry = 41796, SkillIndex = 755, CreatedItemEntry = 40030 },
		[53971] = { RecipeItemEntry = 41703, SkillIndex = 755, CreatedItemEntry = 40031 },
		[53972] = { RecipeItemEntry = 41820, SkillIndex = 755, CreatedItemEntry = 40032 },
		[53973] = { RecipeItemEntry = 41702, SkillIndex = 755, CreatedItemEntry = 40033 },
		[53974] = { RecipeItemEntry = 41726, SkillIndex = 755, CreatedItemEntry = 40034 },
		[53975] = { RecipeItemEntry = 41789, SkillIndex = 755, CreatedItemEntry = 40037 },
		[53976] = { RecipeItemEntry = 41777, SkillIndex = 755, CreatedItemEntry = 40038 },
		[53977] = { RecipeItemEntry = 41780, SkillIndex = 755, CreatedItemEntry = 40039 },
		[53978] = { RecipeItemEntry = 41734, SkillIndex = 755, CreatedItemEntry = 40040 },
		[53979] = { RecipeItemEntry = 41794, SkillIndex = 755, CreatedItemEntry = 40043 },
		[53980] = { RecipeItemEntry = 41582, SkillIndex = 755, CreatedItemEntry = 40044 },
		[53981] = { RecipeItemEntry = 41733, SkillIndex = 755, CreatedItemEntry = 40045 },
		[53982] = { RecipeItemEntry = 41792, SkillIndex = 755, CreatedItemEntry = 40046 },
		[53983] = { RecipeItemEntry = 41689, SkillIndex = 755, CreatedItemEntry = 40047 },
		[53984] = { RecipeItemEntry = 41686, SkillIndex = 755, CreatedItemEntry = 40048 },
		[53985] = { RecipeItemEntry = 41688, SkillIndex = 755, CreatedItemEntry = 40049 },
		[53986] = { RecipeItemEntry = 41730, SkillIndex = 755, CreatedItemEntry = 40050 },
		[53987] = { RecipeItemEntry = 41690, SkillIndex = 755, CreatedItemEntry = 40051 },
		[53988] = { RecipeItemEntry = 41721, SkillIndex = 755, CreatedItemEntry = 40052 },
		[53989] = { SkillIndex = 755, CreatedItemEntry = 40053 },
		[53990] = { RecipeItemEntry = 41732, SkillIndex = 755, CreatedItemEntry = 40054 },
		[53991] = { RecipeItemEntry = 41687, SkillIndex = 755, CreatedItemEntry = 40055 },
		[53992] = { RecipeItemEntry = 41779, SkillIndex = 755, CreatedItemEntry = 40056 },
		[53993] = { RecipeItemEntry = 41722, SkillIndex = 755, CreatedItemEntry = 40057 },
		[53994] = { RecipeItemEntry = 41818, SkillIndex = 755, CreatedItemEntry = 40058 },
		[53995] = { RecipeItemEntry = 41795, SkillIndex = 755, CreatedItemEntry = 40085 },
		[53996] = { RecipeItemEntry = 41723, SkillIndex = 755, CreatedItemEntry = 40086 },
		[53997] = { RecipeItemEntry = 41698, SkillIndex = 755, CreatedItemEntry = 40088 },
		[53998] = { RecipeItemEntry = 41697, SkillIndex = 755, CreatedItemEntry = 40089 },
		[54000] = { RecipeItemEntry = 41738, SkillIndex = 755, CreatedItemEntry = 40090 },
		[54001] = { RecipeItemEntry = 41693, SkillIndex = 755, CreatedItemEntry = 40091 },
		[54002] = { RecipeItemEntry = 41699, SkillIndex = 755, CreatedItemEntry = 40092 },
		[54003] = { RecipeItemEntry = 41781, SkillIndex = 755, CreatedItemEntry = 40095 },
		[54004] = { RecipeItemEntry = 41782, SkillIndex = 755, CreatedItemEntry = 40099 },
		[54005] = { RecipeItemEntry = 41737, SkillIndex = 755, CreatedItemEntry = 40102 },
		[54006] = { RecipeItemEntry = 41694, SkillIndex = 755, CreatedItemEntry = 40104 },
		[54007] = { SkillIndex = 755, CreatedItemEntry = 40094 },
		[54008] = { RecipeItemEntry = 41724, SkillIndex = 755, CreatedItemEntry = 40096 },
		[54009] = { RecipeItemEntry = 41696, SkillIndex = 755, CreatedItemEntry = 40100 },
		[54010] = { RecipeItemEntry = 41739, SkillIndex = 755, CreatedItemEntry = 40103 },
		[54011] = { RecipeItemEntry = 41692, SkillIndex = 755, CreatedItemEntry = 40105 },
		[54012] = { RecipeItemEntry = 41819, SkillIndex = 755, CreatedItemEntry = 40098 },
		[54013] = { RecipeItemEntry = 41736, SkillIndex = 755, CreatedItemEntry = 40101 },
		[54014] = { RecipeItemEntry = 41735, SkillIndex = 755, CreatedItemEntry = 40106 },
		[54017] = { SkillIndex = 755, CreatedItemEntry = 39910 },
		[54019] = { RecipeItemEntry = 41793, SkillIndex = 755, CreatedItemEntry = 40041 },
		[54023] = { RecipeItemEntry = 41778, SkillIndex = 755, CreatedItemEntry = 40059 },
		[55384] = { RecipeItemEntry = 41414, SkillIndex = 755, CreatedItemEntry = 41377 },
		[55386] = { RecipeItemEntry = 41415, SkillIndex = 755, CreatedItemEntry = 41375 },
		[55387] = { RecipeItemEntry = 41416, SkillIndex = 755, CreatedItemEntry = 41378 },
		[55388] = { RecipeItemEntry = 41417, SkillIndex = 755, CreatedItemEntry = 41379 },
		[55389] = { RecipeItemEntry = 41418, SkillIndex = 755, CreatedItemEntry = 41285 },
		[55390] = { RecipeItemEntry = 41419, SkillIndex = 755, CreatedItemEntry = 41307 },
		[55392] = { RecipeItemEntry = 41420, SkillIndex = 755, CreatedItemEntry = 41333 },
		[55393] = { RecipeItemEntry = 41421, SkillIndex = 755, CreatedItemEntry = 41335 },
		[55394] = { RecipeItemEntry = 41422, SkillIndex = 755, CreatedItemEntry = 41339 },
		[55395] = { RecipeItemEntry = 41423, SkillIndex = 755, CreatedItemEntry = 41400 },
		[55396] = { RecipeItemEntry = 41403, SkillIndex = 755, CreatedItemEntry = 41401 },
		[55397] = { RecipeItemEntry = 41404, SkillIndex = 755, CreatedItemEntry = 41395 },
		[55398] = { RecipeItemEntry = 41405, SkillIndex = 755, CreatedItemEntry = 41396 },
		[55399] = { RecipeItemEntry = 41406, SkillIndex = 755, CreatedItemEntry = 41397 },
		[55400] = { RecipeItemEntry = 41407, SkillIndex = 755, CreatedItemEntry = 41398 },
		[55401] = { RecipeItemEntry = 41408, SkillIndex = 755, CreatedItemEntry = 41380 },
		[55402] = { RecipeItemEntry = 41409, SkillIndex = 755, CreatedItemEntry = 41381 },
		[55403] = { RecipeItemEntry = 41410, SkillIndex = 755, CreatedItemEntry = 41382 },
		[55404] = { RecipeItemEntry = 41411, SkillIndex = 755, CreatedItemEntry = 41385 },
		[55405] = { RecipeItemEntry = 41412, SkillIndex = 755, CreatedItemEntry = 41389 },
		[55407] = { RecipeItemEntry = 41413, SkillIndex = 755, CreatedItemEntry = 41376 },
		[56049] = { RecipeItemEntry = 42298, SkillIndex = 755, CreatedItemEntry = 42142 },
		[56052] = { RecipeItemEntry = 42301, SkillIndex = 755, CreatedItemEntry = 42143 },
		[56053] = { RecipeItemEntry = 42309, SkillIndex = 755, CreatedItemEntry = 42144 },
		[56054] = { RecipeItemEntry = 42299, SkillIndex = 755, CreatedItemEntry = 36766 },
		[56055] = { RecipeItemEntry = 42314, SkillIndex = 755, CreatedItemEntry = 42151 },
		[56056] = { RecipeItemEntry = 42302, SkillIndex = 755, CreatedItemEntry = 42152 },
		[56074] = { RecipeItemEntry = 42300, SkillIndex = 755, CreatedItemEntry = 42148 },
		[56076] = { RecipeItemEntry = 42303, SkillIndex = 755, CreatedItemEntry = 42153 },
		[56077] = { RecipeItemEntry = 42304, SkillIndex = 755, CreatedItemEntry = 42146 },
		[56079] = { RecipeItemEntry = 42305, SkillIndex = 755, CreatedItemEntry = 42158 },
		[56081] = { RecipeItemEntry = 42306, SkillIndex = 755, CreatedItemEntry = 42154 },
		[56083] = { RecipeItemEntry = 42307, SkillIndex = 755, CreatedItemEntry = 42150 },
		[56084] = { RecipeItemEntry = 42308, SkillIndex = 755, CreatedItemEntry = 42156 },
		[56085] = { RecipeItemEntry = 42310, SkillIndex = 755, CreatedItemEntry = 42149 },
		[56086] = { RecipeItemEntry = 42311, SkillIndex = 755, CreatedItemEntry = 36767 },
		[56087] = { RecipeItemEntry = 42312, SkillIndex = 755, CreatedItemEntry = 42145 },
		[56088] = { RecipeItemEntry = 42313, SkillIndex = 755, CreatedItemEntry = 42155 },
		[56089] = { RecipeItemEntry = 42315, SkillIndex = 755, CreatedItemEntry = 42157 },
		[56193] = { SkillIndex = 755, CreatedItemEntry = 42336 },
		[56194] = { SkillIndex = 755, CreatedItemEntry = 42337 },
		[56195] = { SkillIndex = 755, CreatedItemEntry = 42338 },
		[56196] = { SkillIndex = 755, CreatedItemEntry = 42339 },
		[56197] = { SkillIndex = 755, CreatedItemEntry = 42340 },
		[56199] = { SkillIndex = 755, CreatedItemEntry = 42341 },
		[56201] = { SkillIndex = 755, CreatedItemEntry = 42395 },
		[56202] = { SkillIndex = 755, CreatedItemEntry = 42413 },
		[56203] = { SkillIndex = 755, CreatedItemEntry = 42418 },
		[56205] = { SkillIndex = 755, CreatedItemEntry = 41367 },
		[56206] = { SkillIndex = 755, CreatedItemEntry = 42420 },
		[56208] = { SkillIndex = 755, CreatedItemEntry = 42421 },
		[56496] = { RecipeItemEntry = 42648, SkillIndex = 755, CreatedItemEntry = 42642 },
		[56497] = { RecipeItemEntry = 42649, SkillIndex = 755, CreatedItemEntry = 42643 },
		[56498] = { RecipeItemEntry = 42650, SkillIndex = 755, CreatedItemEntry = 42644 },
		[56499] = { RecipeItemEntry = 42651, SkillIndex = 755, CreatedItemEntry = 42645 },
		[56500] = { RecipeItemEntry = 42652, SkillIndex = 755, CreatedItemEntry = 42646 },
		[56501] = { RecipeItemEntry = 42653, SkillIndex = 755, CreatedItemEntry = 42647 },
		[56530] = { SkillIndex = 755, CreatedItemEntry = 42701 },
		[56531] = { SkillIndex = 755, CreatedItemEntry = 42702 },
		[58141] = { SkillIndex = 755, CreatedItemEntry = 43244 },
		[58142] = { SkillIndex = 755, CreatedItemEntry = 43245 },
		[58143] = { SkillIndex = 755, CreatedItemEntry = 43246 },
		[58144] = { SkillIndex = 755, CreatedItemEntry = 43247 },
		[58145] = { SkillIndex = 755, CreatedItemEntry = 43248 },
		[58146] = { SkillIndex = 755, CreatedItemEntry = 43249 },
		[58147] = { RecipeItemEntry = 43317, SkillIndex = 755, CreatedItemEntry = 43250 },
		[58148] = { RecipeItemEntry = 43318, SkillIndex = 755, CreatedItemEntry = 43251 },
		[58149] = { RecipeItemEntry = 43319, SkillIndex = 755, CreatedItemEntry = 43252 },
		[58150] = { RecipeItemEntry = 43320, SkillIndex = 755, CreatedItemEntry = 43253 },
		[58492] = { RecipeItemEntry = 43485, SkillIndex = 755, CreatedItemEntry = 43482 },
		[58507] = { RecipeItemEntry = 43497, SkillIndex = 755, CreatedItemEntry = 43498 },
		[58954] = { RecipeItemEntry = 43597, SkillIndex = 755, CreatedItemEntry = 43582 },
		[59759] = { SkillIndex = 755, CreatedItemEntry = 44063 },
		[62242] = { SkillIndex = 755, CreatedItemEntry = 44943 },
		[62941] = { SkillIndex = 755, CreatedItemEntry = 45054 },
		[63743] = { SkillIndex = 755, CreatedItemEntry = 45627 },
		[64725] = { SkillIndex = 755, CreatedItemEntry = 45812 },
		[64726] = { SkillIndex = 755, CreatedItemEntry = 45813 },
		[64727] = { SkillIndex = 755, CreatedItemEntry = 45808 },
		[64728] = { SkillIndex = 755, CreatedItemEntry = 45809 },
		[66338] = { RecipeItemEntry = 46897, SkillIndex = 755, CreatedItemEntry = 40167 },
		[66428] = { RecipeItemEntry = 46898, SkillIndex = 755, CreatedItemEntry = 40168 },
		[66429] = { RecipeItemEntry = 46899, SkillIndex = 755, CreatedItemEntry = 40166 },
		[66430] = { RecipeItemEntry = 46900, SkillIndex = 755, CreatedItemEntry = 40175 },
		[66431] = { RecipeItemEntry = 46901, SkillIndex = 755, CreatedItemEntry = 40165 },
		[66432] = { RecipeItemEntry = 46902, SkillIndex = 755, CreatedItemEntry = 40164 },
		[66433] = { RecipeItemEntry = 46903, SkillIndex = 755, CreatedItemEntry = 40170 },
		[66434] = { RecipeItemEntry = 46904, SkillIndex = 755, CreatedItemEntry = 40169 },
		[66435] = { RecipeItemEntry = 46905, SkillIndex = 755, CreatedItemEntry = 40171 },
		[66436] = { RecipeItemEntry = 46906, SkillIndex = 755, CreatedItemEntry = 40176 },
		[66437] = { RecipeItemEntry = 46907, SkillIndex = 755, CreatedItemEntry = 40172 },
		[66438] = { RecipeItemEntry = 46908, SkillIndex = 755, CreatedItemEntry = 40181 },
		[66439] = { RecipeItemEntry = 46909, SkillIndex = 755, CreatedItemEntry = 40177 },
		[66440] = { RecipeItemEntry = 46910, SkillIndex = 755, CreatedItemEntry = 40174 },
		[66441] = { RecipeItemEntry = 46911, SkillIndex = 755, CreatedItemEntry = 40180 },
		[66442] = { RecipeItemEntry = 46912, SkillIndex = 755, CreatedItemEntry = 40179 },
		[66443] = { RecipeItemEntry = 46913, SkillIndex = 755, CreatedItemEntry = 40182 },
		[66444] = { RecipeItemEntry = 46914, SkillIndex = 755, CreatedItemEntry = 40178 },
		[66445] = { RecipeItemEntry = 46915, SkillIndex = 755, CreatedItemEntry = 40173 },
		[66446] = { RecipeItemEntry = 46916, SkillIndex = 755, CreatedItemEntry = 40113 },
		[66447] = { RecipeItemEntry = 46917, SkillIndex = 755, CreatedItemEntry = 40111 },
		[66448] = { RecipeItemEntry = 46918, SkillIndex = 755, CreatedItemEntry = 40112 },
		[66449] = { RecipeItemEntry = 46919, SkillIndex = 755, CreatedItemEntry = 40114 },
		[66450] = { RecipeItemEntry = 46920, SkillIndex = 755, CreatedItemEntry = 40118 },
		[66451] = { RecipeItemEntry = 46921, SkillIndex = 755, CreatedItemEntry = 40117 },
		[66452] = { RecipeItemEntry = 46922, SkillIndex = 755, CreatedItemEntry = 40115 },
		[66453] = { RecipeItemEntry = 46923, SkillIndex = 755, CreatedItemEntry = 40116 },
		[66497] = { RecipeItemEntry = 46924, SkillIndex = 755, CreatedItemEntry = 40119 },
		[66498] = { RecipeItemEntry = 46925, SkillIndex = 755, CreatedItemEntry = 40120 },
		[66499] = { RecipeItemEntry = 46926, SkillIndex = 755, CreatedItemEntry = 40122 },
		[66500] = { RecipeItemEntry = 46927, SkillIndex = 755, CreatedItemEntry = 40121 },
		[66501] = { RecipeItemEntry = 46928, SkillIndex = 755, CreatedItemEntry = 40125 },
		[66502] = { RecipeItemEntry = 46929, SkillIndex = 755, CreatedItemEntry = 40124 },
		[66503] = { RecipeItemEntry = 46930, SkillIndex = 755, CreatedItemEntry = 40123 },
		[66504] = { RecipeItemEntry = 46931, SkillIndex = 755, CreatedItemEntry = 40126 },
		[66505] = { RecipeItemEntry = 46932, SkillIndex = 755, CreatedItemEntry = 40127 },
		[66506] = { RecipeItemEntry = 46933, SkillIndex = 755, CreatedItemEntry = 40128 },
		[66553] = { RecipeItemEntry = 46934, SkillIndex = 755, CreatedItemEntry = 40136 },
		[66554] = { RecipeItemEntry = 46935, SkillIndex = 755, CreatedItemEntry = 40129 },
		[66555] = { RecipeItemEntry = 46936, SkillIndex = 755, CreatedItemEntry = 40132 },
		[66556] = { RecipeItemEntry = 46937, SkillIndex = 755, CreatedItemEntry = 40133 },
		[66557] = { RecipeItemEntry = 46938, SkillIndex = 755, CreatedItemEntry = 40130 },
		[66558] = { RecipeItemEntry = 46939, SkillIndex = 755, CreatedItemEntry = 40134 },
		[66559] = { RecipeItemEntry = 46940, SkillIndex = 755, CreatedItemEntry = 40138 },
		[66560] = { RecipeItemEntry = 46941, SkillIndex = 755, CreatedItemEntry = 40139 },
		[66561] = { RecipeItemEntry = 46942, SkillIndex = 755, CreatedItemEntry = 40141 },
		[66562] = { RecipeItemEntry = 46943, SkillIndex = 755, CreatedItemEntry = 40135 },
		[66563] = { RecipeItemEntry = 46944, SkillIndex = 755, CreatedItemEntry = 40140 },
		[66564] = { RecipeItemEntry = 46945, SkillIndex = 755, CreatedItemEntry = 40137 },
		[66565] = { RecipeItemEntry = 46946, SkillIndex = 755, CreatedItemEntry = 40131 },
		[66566] = { RecipeItemEntry = 46947, SkillIndex = 755, CreatedItemEntry = 40151 },
		[66567] = { RecipeItemEntry = 46948, SkillIndex = 755, CreatedItemEntry = 40142 },
		[66568] = { RecipeItemEntry = 46949, SkillIndex = 755, CreatedItemEntry = 40147 },
		[66569] = { RecipeItemEntry = 46950, SkillIndex = 755, CreatedItemEntry = 40152 },
		[66570] = { RecipeItemEntry = 46951, SkillIndex = 755, CreatedItemEntry = 40153 },
		[66571] = { RecipeItemEntry = 46952, SkillIndex = 755, CreatedItemEntry = 40154 },
		[66572] = { RecipeItemEntry = 46953, SkillIndex = 755, CreatedItemEntry = 40143 },
		[66573] = { RecipeItemEntry = 46956, SkillIndex = 755, CreatedItemEntry = 40157 },
		[66574] = { RecipeItemEntry = 47007, SkillIndex = 755, CreatedItemEntry = 40155 },
		[66575] = { RecipeItemEntry = 47008, SkillIndex = 755, CreatedItemEntry = 40148 },
		[66576] = { RecipeItemEntry = 47010, SkillIndex = 755, CreatedItemEntry = 40162 },
		[66577] = { RecipeItemEntry = 47011, SkillIndex = 755, CreatedItemEntry = 40156 },
		[66578] = { RecipeItemEntry = 47012, SkillIndex = 755, CreatedItemEntry = 40161 },
		[66579] = { RecipeItemEntry = 47015, SkillIndex = 755, CreatedItemEntry = 40144 },
		[66580] = { RecipeItemEntry = 47016, SkillIndex = 755, CreatedItemEntry = 40158 },
		[66581] = { RecipeItemEntry = 47017, SkillIndex = 755, CreatedItemEntry = 40160 },
		[66582] = { RecipeItemEntry = 47018, SkillIndex = 755, CreatedItemEntry = 40145 },
		[66583] = { RecipeItemEntry = 47019, SkillIndex = 755, CreatedItemEntry = 40146 },
		[66584] = { RecipeItemEntry = 47020, SkillIndex = 755, CreatedItemEntry = 40150 },
		[66585] = { RecipeItemEntry = 47021, SkillIndex = 755, CreatedItemEntry = 40149 },
		[66586] = { RecipeItemEntry = 47022, SkillIndex = 755, CreatedItemEntry = 40163 },
		[66587] = { RecipeItemEntry = 47023, SkillIndex = 755, CreatedItemEntry = 40159 },
		[68253] = { RecipeItemEntry = 49112, SkillIndex = 755, CreatedItemEntry = 49110 },
		[884036] = { RecipeItemEntry = 884038, SkillIndex = 755, CreatedItemEntry = 884036 },
		[884037] = { RecipeItemEntry = 884039, SkillIndex = 755, CreatedItemEntry = 884037 },
		[979639] = { RecipeItemEntry = 1204183, SkillIndex = 755, CreatedItemEntry = 1204165 },
		[979640] = { RecipeItemEntry = 1204184, SkillIndex = 755, CreatedItemEntry = 1204166 },
		[979641] = { RecipeItemEntry = 1204185, SkillIndex = 755, CreatedItemEntry = 1204167 },
		[979642] = { RecipeItemEntry = 1204186, SkillIndex = 755, CreatedItemEntry = 1204168 },
		[979643] = { RecipeItemEntry = 1204187, SkillIndex = 755, CreatedItemEntry = 1204169 },
		[979644] = { RecipeItemEntry = 1204188, SkillIndex = 755, CreatedItemEntry = 1204170 },
		[979645] = { RecipeItemEntry = 1204189, SkillIndex = 755, CreatedItemEntry = 1204171 },
		[979646] = { RecipeItemEntry = 1204190, SkillIndex = 755, CreatedItemEntry = 1204172 },
		[979647] = { RecipeItemEntry = 1204191, SkillIndex = 755, CreatedItemEntry = 1204173 },
		[979648] = { RecipeItemEntry = 1204192, SkillIndex = 755, CreatedItemEntry = 1204174 },
		[979649] = { RecipeItemEntry = 1204193, SkillIndex = 755, CreatedItemEntry = 1204175 },
		[979650] = { RecipeItemEntry = 1204194, SkillIndex = 755, CreatedItemEntry = 1204176 },
		[979651] = { RecipeItemEntry = 1204195, SkillIndex = 755, CreatedItemEntry = 1204177 },
		[979652] = { RecipeItemEntry = 1204196, SkillIndex = 755, CreatedItemEntry = 1204178 },
		[979653] = { RecipeItemEntry = 1204197, SkillIndex = 755, CreatedItemEntry = 1204179 },
		[979654] = { RecipeItemEntry = 1204198, SkillIndex = 755, CreatedItemEntry = 1204180 },
		[979655] = { RecipeItemEntry = 1204199, SkillIndex = 755, CreatedItemEntry = 1204181 },
		[979656] = { RecipeItemEntry = 1204200, SkillIndex = 755, CreatedItemEntry = 1204182 },
		[979837] = { SkillIndex = 755, CreatedItemEntry = 1203481 },
		[979838] = { SkillIndex = 755, CreatedItemEntry = 1203131 },
		[979839] = { SkillIndex = 755, CreatedItemEntry = 1203133 },
		[979840] = { SkillIndex = 755, CreatedItemEntry = 1203135 },
		[45382] = { SkillIndex = 773, CreatedItemEntry = 1180 },
		[48114] = { SkillIndex = 773, CreatedItemEntry = 955 },
		[48116] = { SkillIndex = 773, CreatedItemEntry = 1181 },
		[48121] = { SkillIndex = 773, CreatedItemEntry = 40924 },
		[48247] = { SkillIndex = 773, CreatedItemEntry = 37168 },
		[48248] = { SkillIndex = 773, CreatedItemEntry = 37118 },
		[50598] = { SkillIndex = 773, CreatedItemEntry = 2290 },
		[50599] = { SkillIndex = 773, CreatedItemEntry = 4419 },
		[50600] = { SkillIndex = 773, CreatedItemEntry = 10308 },
		[50601] = { SkillIndex = 773, CreatedItemEntry = 27499 },
		[50602] = { SkillIndex = 773, CreatedItemEntry = 33458 },
		[50603] = { SkillIndex = 773, CreatedItemEntry = 37091 },
		[50604] = { SkillIndex = 773, CreatedItemEntry = 37092 },
		[50605] = { SkillIndex = 773, CreatedItemEntry = 1712 },
		[50606] = { SkillIndex = 773, CreatedItemEntry = 4424 },
		[50607] = { SkillIndex = 773, CreatedItemEntry = 10306 },
		[50608] = { SkillIndex = 773, CreatedItemEntry = 27501 },
		[50609] = { SkillIndex = 773, CreatedItemEntry = 33460 },
		[50610] = { SkillIndex = 773, CreatedItemEntry = 37097 },
		[50611] = { SkillIndex = 773, CreatedItemEntry = 37098 },
		[50612] = { SkillIndex = 773, CreatedItemEntry = 1711 },
		[50614] = { SkillIndex = 773, CreatedItemEntry = 4422 },
		[50616] = { SkillIndex = 773, CreatedItemEntry = 10307 },
		[50617] = { SkillIndex = 773, CreatedItemEntry = 27502 },
		[50618] = { SkillIndex = 773, CreatedItemEntry = 33461 },
		[50619] = { SkillIndex = 773, CreatedItemEntry = 37093 },
		[50620] = { SkillIndex = 773, CreatedItemEntry = 37094 },
		[52738] = { SkillIndex = 773, CreatedItemEntry = 37101 },
		[52739] = { SkillIndex = 773, CreatedItemEntry = 38682 },
		[52840] = { SkillIndex = 773, CreatedItemEntry = 39349 },
		[52843] = { SkillIndex = 773, CreatedItemEntry = 39469 },
		[53462] = { SkillIndex = 773, CreatedItemEntry = 39774 },
		[56943] = { SkillIndex = 773, CreatedItemEntry = 40896 },
		[56944] = { SkillIndex = 773, CreatedItemEntry = 40899 },
		[56945] = { SkillIndex = 773, CreatedItemEntry = 40914 },
		[56946] = { SkillIndex = 773, CreatedItemEntry = 40920 },
		[56947] = { SkillIndex = 773, CreatedItemEntry = 40908 },
		[56948] = { SkillIndex = 773, CreatedItemEntry = 40919 },
		[56949] = { SkillIndex = 773, CreatedItemEntry = 40915 },
		[56950] = { SkillIndex = 773, CreatedItemEntry = 40900 },
		[56951] = { SkillIndex = 773, CreatedItemEntry = 40923 },
		[56952] = { SkillIndex = 773, CreatedItemEntry = 40903 },
		[56953] = { SkillIndex = 773, CreatedItemEntry = 40909 },
		[56954] = { SkillIndex = 773, CreatedItemEntry = 40912 },
		[56955] = { SkillIndex = 773, CreatedItemEntry = 40913 },
		[56956] = { SkillIndex = 773, CreatedItemEntry = 40902 },
		[56957] = { SkillIndex = 773, CreatedItemEntry = 40901 },
		[56958] = { SkillIndex = 773, CreatedItemEntry = 40921 },
		[56959] = { SkillIndex = 773, CreatedItemEntry = 40916 },
		[56960] = { SkillIndex = 773, CreatedItemEntry = 40906 },
		[56961] = { SkillIndex = 773, CreatedItemEntry = 40897 },
		[56963] = { SkillIndex = 773, CreatedItemEntry = 40922 },
		[56965] = { SkillIndex = 773, CreatedItemEntry = 44922 },
		[56968] = { SkillIndex = 773, CreatedItemEntry = 42734 },
		[56971] = { SkillIndex = 773, CreatedItemEntry = 42735 },
		[56972] = { SkillIndex = 773, CreatedItemEntry = 42736 },
		[56973] = { SkillIndex = 773, CreatedItemEntry = 42737 },
		[56974] = { SkillIndex = 773, CreatedItemEntry = 42738 },
		[56975] = { SkillIndex = 773, CreatedItemEntry = 42739 },
		[56976] = { SkillIndex = 773, CreatedItemEntry = 42741 },
		[56977] = { SkillIndex = 773, CreatedItemEntry = 42742 },
		[56978] = { SkillIndex = 773, CreatedItemEntry = 42743 },
		[56979] = { SkillIndex = 773, CreatedItemEntry = 42744 },
		[56980] = { SkillIndex = 773, CreatedItemEntry = 42745 },
		[56981] = { SkillIndex = 773, CreatedItemEntry = 42746 },
		[56982] = { SkillIndex = 773, CreatedItemEntry = 42747 },
		[56983] = { SkillIndex = 773, CreatedItemEntry = 42748 },
		[56984] = { SkillIndex = 773, CreatedItemEntry = 42749 },
		[56985] = { SkillIndex = 773, CreatedItemEntry = 42750 },
		[56986] = { SkillIndex = 773, CreatedItemEntry = 42751 },
		[56987] = { SkillIndex = 773, CreatedItemEntry = 42752 },
		[56988] = { SkillIndex = 773, CreatedItemEntry = 42753 },
		[56989] = { SkillIndex = 773, CreatedItemEntry = 42754 },
		[56990] = { SkillIndex = 773, CreatedItemEntry = 44920 },
		[56991] = { SkillIndex = 773, CreatedItemEntry = 44955 },
		[56994] = { SkillIndex = 773, CreatedItemEntry = 42897 },
		[56995] = { SkillIndex = 773, CreatedItemEntry = 42898 },
		[56996] = { SkillIndex = 773, CreatedItemEntry = 42899 },
		[56997] = { SkillIndex = 773, CreatedItemEntry = 42900 },
		[56998] = { SkillIndex = 773, CreatedItemEntry = 42901 },
		[56999] = { SkillIndex = 773, CreatedItemEntry = 42902 },
		[57000] = { SkillIndex = 773, CreatedItemEntry = 42903 },
		[57001] = { SkillIndex = 773, CreatedItemEntry = 42904 },
		[57002] = { SkillIndex = 773, CreatedItemEntry = 42905 },
		[57003] = { SkillIndex = 773, CreatedItemEntry = 42906 },
		[57004] = { SkillIndex = 773, CreatedItemEntry = 42907 },
		[57005] = { SkillIndex = 773, CreatedItemEntry = 42908 },
		[57006] = { SkillIndex = 773, CreatedItemEntry = 42909 },
		[57007] = { SkillIndex = 773, CreatedItemEntry = 42910 },
		[57008] = { SkillIndex = 773, CreatedItemEntry = 42911 },
		[57009] = { SkillIndex = 773, CreatedItemEntry = 42912 },
		[57010] = { SkillIndex = 773, CreatedItemEntry = 42913 },
		[57011] = { SkillIndex = 773, CreatedItemEntry = 42914 },
		[57012] = { SkillIndex = 773, CreatedItemEntry = 42915 },
		[57013] = { SkillIndex = 773, CreatedItemEntry = 42916 },
		[57014] = { SkillIndex = 773, CreatedItemEntry = 42917 },
		[57019] = { SkillIndex = 773, CreatedItemEntry = 41101 },
		[57020] = { SkillIndex = 773, CreatedItemEntry = 41104 },
		[57021] = { SkillIndex = 773, CreatedItemEntry = 41107 },
		[57022] = { SkillIndex = 773, CreatedItemEntry = 41096 },
		[57023] = { SkillIndex = 773, CreatedItemEntry = 41099 },
		[57024] = { SkillIndex = 773, CreatedItemEntry = 41098 },
		[57025] = { SkillIndex = 773, CreatedItemEntry = 41103 },
		[57026] = { SkillIndex = 773, CreatedItemEntry = 41105 },
		[57027] = { SkillIndex = 773, CreatedItemEntry = 41095 },
		[57028] = { SkillIndex = 773, CreatedItemEntry = 41097 },
		[57029] = { SkillIndex = 773, CreatedItemEntry = 41106 },
		[57030] = { SkillIndex = 773, CreatedItemEntry = 41092 },
		[57031] = { SkillIndex = 773, CreatedItemEntry = 41108 },
		[57032] = { SkillIndex = 773, CreatedItemEntry = 41100 },
		[57033] = { SkillIndex = 773, CreatedItemEntry = 41094 },
		[57034] = { SkillIndex = 773, CreatedItemEntry = 41110 },
		[57035] = { SkillIndex = 773, CreatedItemEntry = 41109 },
		[57036] = { SkillIndex = 773, CreatedItemEntry = 41102 },
		[57112] = { SkillIndex = 773, CreatedItemEntry = 42954 },
		[57113] = { SkillIndex = 773, CreatedItemEntry = 42955 },
		[57114] = { SkillIndex = 773, CreatedItemEntry = 42956 },
		[57115] = { SkillIndex = 773, CreatedItemEntry = 42957 },
		[57116] = { SkillIndex = 773, CreatedItemEntry = 42958 },
		[57117] = { SkillIndex = 773, CreatedItemEntry = 42959 },
		[57119] = { SkillIndex = 773, CreatedItemEntry = 42960 },
		[57120] = { SkillIndex = 773, CreatedItemEntry = 42961 },
		[57121] = { SkillIndex = 773, CreatedItemEntry = 42962 },
		[57122] = { SkillIndex = 773, CreatedItemEntry = 42963 },
		[57123] = { SkillIndex = 773, CreatedItemEntry = 42964 },
		[57124] = { SkillIndex = 773, CreatedItemEntry = 42965 },
		[57125] = { SkillIndex = 773, CreatedItemEntry = 42966 },
		[57126] = { SkillIndex = 773, CreatedItemEntry = 42967 },
		[57127] = { SkillIndex = 773, CreatedItemEntry = 42968 },
		[57128] = { SkillIndex = 773, CreatedItemEntry = 42969 },
		[57129] = { SkillIndex = 773, CreatedItemEntry = 42970 },
		[57130] = { SkillIndex = 773, CreatedItemEntry = 42971 },
		[57131] = { SkillIndex = 773, CreatedItemEntry = 42972 },
		[57132] = { SkillIndex = 773, CreatedItemEntry = 42973 },
		[57133] = { SkillIndex = 773, CreatedItemEntry = 42974 },
		[57151] = { SkillIndex = 773, CreatedItemEntry = 43420 },
		[57152] = { SkillIndex = 773, CreatedItemEntry = 43425 },
		[57153] = { SkillIndex = 773, CreatedItemEntry = 43412 },
		[57154] = { SkillIndex = 773, CreatedItemEntry = 43414 },
		[57155] = { SkillIndex = 773, CreatedItemEntry = 43415 },
		[57156] = { SkillIndex = 773, CreatedItemEntry = 43416 },
		[57157] = { SkillIndex = 773, CreatedItemEntry = 43417 },
		[57158] = { SkillIndex = 773, CreatedItemEntry = 43418 },
		[57159] = { SkillIndex = 773, CreatedItemEntry = 43419 },
		[57160] = { SkillIndex = 773, CreatedItemEntry = 43421 },
		[57161] = { SkillIndex = 773, CreatedItemEntry = 43422 },
		[57162] = { SkillIndex = 773, CreatedItemEntry = 43413 },
		[57163] = { SkillIndex = 773, CreatedItemEntry = 43423 },
		[57164] = { SkillIndex = 773, CreatedItemEntry = 43430 },
		[57165] = { SkillIndex = 773, CreatedItemEntry = 43424 },
		[57166] = { SkillIndex = 773, CreatedItemEntry = 43426 },
		[57167] = { SkillIndex = 773, CreatedItemEntry = 43427 },
		[57168] = { SkillIndex = 773, CreatedItemEntry = 43428 },
		[57169] = { SkillIndex = 773, CreatedItemEntry = 43429 },
		[57170] = { SkillIndex = 773, CreatedItemEntry = 43431 },
		[57172] = { SkillIndex = 773, CreatedItemEntry = 43432 },
		[57181] = { SkillIndex = 773, CreatedItemEntry = 42396 },
		[57183] = { SkillIndex = 773, CreatedItemEntry = 42397 },
		[57184] = { SkillIndex = 773, CreatedItemEntry = 42398 },
		[57185] = { SkillIndex = 773, CreatedItemEntry = 42399 },
		[57186] = { SkillIndex = 773, CreatedItemEntry = 42400 },
		[57187] = { SkillIndex = 773, CreatedItemEntry = 42401 },
		[57188] = { SkillIndex = 773, CreatedItemEntry = 42402 },
		[57189] = { SkillIndex = 773, CreatedItemEntry = 42403 },
		[57190] = { SkillIndex = 773, CreatedItemEntry = 42404 },
		[57191] = { SkillIndex = 773, CreatedItemEntry = 42405 },
		[57192] = { SkillIndex = 773, CreatedItemEntry = 42406 },
		[57193] = { SkillIndex = 773, CreatedItemEntry = 42407 },
		[57194] = { SkillIndex = 773, CreatedItemEntry = 42408 },
		[57195] = { SkillIndex = 773, CreatedItemEntry = 42409 },
		[57196] = { SkillIndex = 773, CreatedItemEntry = 42410 },
		[57197] = { SkillIndex = 773, CreatedItemEntry = 42411 },
		[57198] = { SkillIndex = 773, CreatedItemEntry = 42412 },
		[57199] = { SkillIndex = 773, CreatedItemEntry = 42414 },
		[57200] = { SkillIndex = 773, CreatedItemEntry = 42415 },
		[57201] = { SkillIndex = 773, CreatedItemEntry = 42416 },
		[57202] = { SkillIndex = 773, CreatedItemEntry = 42417 },
		[57207] = { SkillIndex = 773, CreatedItemEntry = 43533 },
		[57208] = { SkillIndex = 773, CreatedItemEntry = 43534 },
		[57209] = { SkillIndex = 773, CreatedItemEntry = 43535 },
		[57210] = { SkillIndex = 773, CreatedItemEntry = 43536 },
		[57211] = { SkillIndex = 773, CreatedItemEntry = 43537 },
		[57212] = { SkillIndex = 773, CreatedItemEntry = 43538 },
		[57213] = { SkillIndex = 773, CreatedItemEntry = 43541 },
		[57214] = { SkillIndex = 773, CreatedItemEntry = 43542 },
		[57215] = { SkillIndex = 773, CreatedItemEntry = 43539 },
		[57216] = { SkillIndex = 773, CreatedItemEntry = 43543 },
		[57217] = { SkillIndex = 773, CreatedItemEntry = 43544 },
		[57218] = { SkillIndex = 773, CreatedItemEntry = 43545 },
		[57219] = { SkillIndex = 773, CreatedItemEntry = 43546 },
		[57220] = { SkillIndex = 773, CreatedItemEntry = 43547 },
		[57221] = { SkillIndex = 773, CreatedItemEntry = 43548 },
		[57222] = { SkillIndex = 773, CreatedItemEntry = 43549 },
		[57223] = { SkillIndex = 773, CreatedItemEntry = 43550 },
		[57224] = { SkillIndex = 773, CreatedItemEntry = 43551 },
		[57225] = { SkillIndex = 773, CreatedItemEntry = 43552 },
		[57226] = { SkillIndex = 773, CreatedItemEntry = 43553 },
		[57227] = { SkillIndex = 773, CreatedItemEntry = 43554 },
		[57228] = { SkillIndex = 773, CreatedItemEntry = 43673 },
		[57229] = { SkillIndex = 773, CreatedItemEntry = 43671 },
		[57230] = { SkillIndex = 773, CreatedItemEntry = 43672 },
		[57231] = { SkillIndex = 773, CreatedItemEntry = 42897 },
		[57232] = { SkillIndex = 773, CreatedItemEntry = 41517 },
		[57233] = { SkillIndex = 773, CreatedItemEntry = 41518 },
		[57234] = { SkillIndex = 773, CreatedItemEntry = 41524 },
		[57235] = { SkillIndex = 773, CreatedItemEntry = 41526 },
		[57236] = { SkillIndex = 773, CreatedItemEntry = 41527 },
		[57237] = { SkillIndex = 773, CreatedItemEntry = 41529 },
		[57238] = { SkillIndex = 773, CreatedItemEntry = 41530 },
		[57239] = { SkillIndex = 773, CreatedItemEntry = 41531 },
		[57240] = { SkillIndex = 773, CreatedItemEntry = 41532 },
		[57241] = { SkillIndex = 773, CreatedItemEntry = 41547 },
		[57242] = { SkillIndex = 773, CreatedItemEntry = 41533 },
		[57243] = { SkillIndex = 773, CreatedItemEntry = 41534 },
		[57244] = { SkillIndex = 773, CreatedItemEntry = 41535 },
		[57245] = { SkillIndex = 773, CreatedItemEntry = 41536 },
		[57246] = { SkillIndex = 773, CreatedItemEntry = 41537 },
		[57247] = { SkillIndex = 773, CreatedItemEntry = 41538 },
		[57248] = { SkillIndex = 773, CreatedItemEntry = 41539 },
		[57249] = { SkillIndex = 773, CreatedItemEntry = 41540 },
		[57250] = { SkillIndex = 773, CreatedItemEntry = 41552 },
		[57251] = { SkillIndex = 773, CreatedItemEntry = 41541 },
		[57252] = { SkillIndex = 773, CreatedItemEntry = 41542 },
		[57253] = { SkillIndex = 773, CreatedItemEntry = 44923 },
		[57257] = { SkillIndex = 773, CreatedItemEntry = 42453 },
		[57258] = { SkillIndex = 773, CreatedItemEntry = 42454 },
		[57259] = { SkillIndex = 773, CreatedItemEntry = 42455 },
		[57260] = { SkillIndex = 773, CreatedItemEntry = 42456 },
		[57261] = { SkillIndex = 773, CreatedItemEntry = 42457 },
		[57262] = { SkillIndex = 773, CreatedItemEntry = 42458 },
		[57263] = { SkillIndex = 773, CreatedItemEntry = 42459 },
		[57264] = { SkillIndex = 773, CreatedItemEntry = 42460 },
		[57265] = { SkillIndex = 773, CreatedItemEntry = 42461 },
		[57266] = { SkillIndex = 773, CreatedItemEntry = 42462 },
		[57267] = { SkillIndex = 773, CreatedItemEntry = 42463 },
		[57268] = { SkillIndex = 773, CreatedItemEntry = 42464 },
		[57269] = { SkillIndex = 773, CreatedItemEntry = 42465 },
		[57270] = { SkillIndex = 773, CreatedItemEntry = 42466 },
		[57271] = { SkillIndex = 773, CreatedItemEntry = 42467 },
		[57272] = { SkillIndex = 773, CreatedItemEntry = 42468 },
		[57273] = { SkillIndex = 773, CreatedItemEntry = 42469 },
		[57274] = { SkillIndex = 773, CreatedItemEntry = 42470 },
		[57275] = { SkillIndex = 773, CreatedItemEntry = 42471 },
		[57276] = { SkillIndex = 773, CreatedItemEntry = 42472 },
		[57277] = { SkillIndex = 773, CreatedItemEntry = 42473 },
		[57703] = { SkillIndex = 773, CreatedItemEntry = 43115 },
		[57704] = { SkillIndex = 773, CreatedItemEntry = 43116 },
		[57706] = { SkillIndex = 773, CreatedItemEntry = 43117 },
		[57707] = { SkillIndex = 773, CreatedItemEntry = 43118 },
		[57708] = { SkillIndex = 773, CreatedItemEntry = 43119 },
		[57709] = { SkillIndex = 773, CreatedItemEntry = 43120 },
		[57710] = { SkillIndex = 773, CreatedItemEntry = 43121 },
		[57711] = { SkillIndex = 773, CreatedItemEntry = 43122 },
		[57712] = { SkillIndex = 773, CreatedItemEntry = 43123 },
		[57713] = { SkillIndex = 773, CreatedItemEntry = 43124 },
		[57714] = { SkillIndex = 773, CreatedItemEntry = 43125 },
		[57715] = { SkillIndex = 773, CreatedItemEntry = 43126 },
		[57716] = { SkillIndex = 773, CreatedItemEntry = 43127 },
		[57719] = { SkillIndex = 773, CreatedItemEntry = 42740 },
		[58286] = { SkillIndex = 773, CreatedItemEntry = 43316 },
		[58287] = { SkillIndex = 773, CreatedItemEntry = 43334 },
		[58288] = { SkillIndex = 773, CreatedItemEntry = 43331 },
		[58289] = { SkillIndex = 773, CreatedItemEntry = 43332 },
		[58296] = { SkillIndex = 773, CreatedItemEntry = 43335 },
		[58297] = { SkillIndex = 773, CreatedItemEntry = 43355 },
		[58298] = { SkillIndex = 773, CreatedItemEntry = 43356 },
		[58299] = { SkillIndex = 773, CreatedItemEntry = 43338 },
		[58300] = { SkillIndex = 773, CreatedItemEntry = 43354 },
		[58301] = { SkillIndex = 773, CreatedItemEntry = 43350 },
		[58302] = { SkillIndex = 773, CreatedItemEntry = 43351 },
		[58303] = { SkillIndex = 773, CreatedItemEntry = 43339 },
		[58305] = { SkillIndex = 773, CreatedItemEntry = 43357 },
		[58306] = { SkillIndex = 773, CreatedItemEntry = 43359 },
		[58307] = { SkillIndex = 773, CreatedItemEntry = 43360 },
		[58308] = { SkillIndex = 773, CreatedItemEntry = 43364 },
		[58310] = { SkillIndex = 773, CreatedItemEntry = 43361 },
		[58311] = { SkillIndex = 773, CreatedItemEntry = 43365 },
		[58312] = { SkillIndex = 773, CreatedItemEntry = 43366 },
		[58313] = { SkillIndex = 773, CreatedItemEntry = 43367 },
		[58314] = { SkillIndex = 773, CreatedItemEntry = 43340 },
		[58315] = { SkillIndex = 773, CreatedItemEntry = 43368 },
		[58316] = { SkillIndex = 773, CreatedItemEntry = 43369 },
		[58317] = { SkillIndex = 773, CreatedItemEntry = 43342 },
		[58318] = { SkillIndex = 773, CreatedItemEntry = 43371 },
		[58319] = { SkillIndex = 773, CreatedItemEntry = 43370 },
		[58320] = { SkillIndex = 773, CreatedItemEntry = 43373 },
		[58321] = { SkillIndex = 773, CreatedItemEntry = 43372 },
		[58322] = { SkillIndex = 773, CreatedItemEntry = 43374 },
		[58323] = { SkillIndex = 773, CreatedItemEntry = 43379 },
		[58324] = { SkillIndex = 773, CreatedItemEntry = 43376 },
		[58325] = { SkillIndex = 773, CreatedItemEntry = 43377 },
		[58326] = { SkillIndex = 773, CreatedItemEntry = 43343 },
		[58327] = { SkillIndex = 773, CreatedItemEntry = 43378 },
		[58328] = { SkillIndex = 773, CreatedItemEntry = 43380 },
		[58329] = { SkillIndex = 773, CreatedItemEntry = 43381 },
		[58330] = { SkillIndex = 773, CreatedItemEntry = 43385 },
		[58331] = { SkillIndex = 773, CreatedItemEntry = 43344 },
		[58332] = { SkillIndex = 773, CreatedItemEntry = 43386 },
		[58333] = { SkillIndex = 773, CreatedItemEntry = 43388 },
		[58336] = { SkillIndex = 773, CreatedItemEntry = 43389 },
		[58337] = { SkillIndex = 773, CreatedItemEntry = 43390 },
		[58338] = { SkillIndex = 773, CreatedItemEntry = 43392 },
		[58339] = { SkillIndex = 773, CreatedItemEntry = 43393 },
		[58340] = { SkillIndex = 773, CreatedItemEntry = 43391 },
		[58341] = { SkillIndex = 773, CreatedItemEntry = 43394 },
		[58342] = { SkillIndex = 773, CreatedItemEntry = 43395 },
		[58343] = { SkillIndex = 773, CreatedItemEntry = 43396 },
		[58344] = { SkillIndex = 773, CreatedItemEntry = 43397 },
		[58345] = { SkillIndex = 773, CreatedItemEntry = 43398 },
		[58346] = { SkillIndex = 773, CreatedItemEntry = 43399 },
		[58347] = { SkillIndex = 773, CreatedItemEntry = 43400 },
		[58472] = { SkillIndex = 773, CreatedItemEntry = 3012 },
		[58473] = { SkillIndex = 773, CreatedItemEntry = 1477 },
		[58476] = { SkillIndex = 773, CreatedItemEntry = 4425 },
		[58478] = { SkillIndex = 773, CreatedItemEntry = 10309 },
		[58480] = { SkillIndex = 773, CreatedItemEntry = 27498 },
		[58481] = { SkillIndex = 773, CreatedItemEntry = 33457 },
		[58482] = { SkillIndex = 773, CreatedItemEntry = 43463 },
		[58483] = { SkillIndex = 773, CreatedItemEntry = 43464 },
		[58484] = { SkillIndex = 773, CreatedItemEntry = 954 },
		[58485] = { SkillIndex = 773, CreatedItemEntry = 2289 },
		[58486] = { SkillIndex = 773, CreatedItemEntry = 4426 },
		[58487] = { SkillIndex = 773, CreatedItemEntry = 10310 },
		[58488] = { SkillIndex = 773, CreatedItemEntry = 27503 },
		[58489] = { SkillIndex = 773, CreatedItemEntry = 33462 },
		[58490] = { SkillIndex = 773, CreatedItemEntry = 43465 },
		[58491] = { SkillIndex = 773, CreatedItemEntry = 43466 },
		[58565] = { SkillIndex = 773, CreatedItemEntry = 43515 },
		[59315] = { SkillIndex = 773, CreatedItemEntry = 43674 },
		[59326] = { SkillIndex = 773, CreatedItemEntry = 43725 },
		[59338] = { SkillIndex = 773, CreatedItemEntry = 43825 },
		[59339] = { SkillIndex = 773, CreatedItemEntry = 43826 },
		[59340] = { SkillIndex = 773, CreatedItemEntry = 43827 },
		[59387] = { SkillIndex = 773, CreatedItemEntry = 43850 },
		[59475] = { SkillIndex = 773, CreatedItemEntry = 43654 },
		[59478] = { SkillIndex = 773, CreatedItemEntry = 43655 },
		[59480] = { SkillIndex = 773, CreatedItemEntry = 44142 },
		[59484] = { SkillIndex = 773, CreatedItemEntry = 43656 },
		[59486] = { SkillIndex = 773, CreatedItemEntry = 43657 },
		[59487] = { SkillIndex = 773, CreatedItemEntry = 44161 },
		[59488] = { SkillIndex = 773, CreatedItemEntry = 39350 },
		[59489] = { SkillIndex = 773, CreatedItemEntry = 43660 },
		[59490] = { SkillIndex = 773, CreatedItemEntry = 43661 },
		[59491] = { SkillIndex = 773, CreatedItemEntry = 44163 },
		[59493] = { SkillIndex = 773, CreatedItemEntry = 43663 },
		[59494] = { SkillIndex = 773, CreatedItemEntry = 43664 },
		[59495] = { SkillIndex = 773, CreatedItemEntry = 43666 },
		[59496] = { SkillIndex = 773, CreatedItemEntry = 43667 },
		[59497] = { SkillIndex = 773, CreatedItemEntry = 38322 },
		[59498] = { SkillIndex = 773, CreatedItemEntry = 44210 },
		[59499] = { SkillIndex = 773, CreatedItemEntry = 37602 },
		[59500] = { SkillIndex = 773, CreatedItemEntry = 43145 },
		[59501] = { SkillIndex = 773, CreatedItemEntry = 43146 },
		[59502] = { SkillIndex = 773, CreatedItemEntry = 44316 },
		[59503] = { SkillIndex = 773, CreatedItemEntry = 44317 },
		[59504] = { SkillIndex = 773, CreatedItemEntry = 44318 },
		[59559] = { SkillIndex = 773, CreatedItemEntry = 43867 },
		[59560] = { SkillIndex = 773, CreatedItemEntry = 43868 },
		[59561] = { SkillIndex = 773, CreatedItemEntry = 43869 },
		[60336] = { SkillIndex = 773, CreatedItemEntry = 44314 },
		[60337] = { SkillIndex = 773, CreatedItemEntry = 44315 },
		[61677] = { SkillIndex = 773, CreatedItemEntry = 44684 },
		[62162] = { SkillIndex = 773, CreatedItemEntry = 44928 },
		[64051] = { RecipeItemEntry = 46108, SkillIndex = 773, CreatedItemEntry = 45854 },
		[64053] = { SkillIndex = 773, CreatedItemEntry = 45849 },
		[64246] = { SkillIndex = 773, CreatedItemEntry = 45735 },
		[64247] = { SkillIndex = 773, CreatedItemEntry = 45778 },
		[64248] = { SkillIndex = 773, CreatedItemEntry = 45785 },
		[64249] = { SkillIndex = 773, CreatedItemEntry = 45734 },
		[64250] = { SkillIndex = 773, CreatedItemEntry = 45789 },
		[64251] = { SkillIndex = 773, CreatedItemEntry = 45747 },
		[64252] = { SkillIndex = 773, CreatedItemEntry = 45797 },
		[64253] = { SkillIndex = 773, CreatedItemEntry = 45733 },
		[64254] = { SkillIndex = 773, CreatedItemEntry = 45746 },
		[64255] = { SkillIndex = 773, CreatedItemEntry = 45793 },
		[64256] = { SkillIndex = 773, CreatedItemEntry = 45623 },
		[64257] = { SkillIndex = 773, CreatedItemEntry = 45740 },
		[64258] = { SkillIndex = 773, CreatedItemEntry = 45622 },
		[64259] = { SkillIndex = 773, CreatedItemEntry = 45760 },
		[64260] = { SkillIndex = 773, CreatedItemEntry = 45768 },
		[64261] = { SkillIndex = 773, CreatedItemEntry = 45775 },
		[64262] = { SkillIndex = 773, CreatedItemEntry = 45776 },
		[64266] = { SkillIndex = 773, CreatedItemEntry = 45804 },
		[64267] = { SkillIndex = 773, CreatedItemEntry = 45805 },
		[64268] = { SkillIndex = 773, CreatedItemEntry = 45601 },
		[64270] = { SkillIndex = 773, CreatedItemEntry = 45602 },
		[64271] = { SkillIndex = 773, CreatedItemEntry = 45625 },
		[64273] = { SkillIndex = 773, CreatedItemEntry = 45731 },
		[64274] = { SkillIndex = 773, CreatedItemEntry = 45736 },
		[64275] = { SkillIndex = 773, CreatedItemEntry = 45737 },
		[64276] = { SkillIndex = 773, CreatedItemEntry = 45738 },
		[64277] = { SkillIndex = 773, CreatedItemEntry = 45741 },
		[64278] = { SkillIndex = 773, CreatedItemEntry = 45742 },
		[64279] = { SkillIndex = 773, CreatedItemEntry = 45743 },
		[64280] = { SkillIndex = 773, CreatedItemEntry = 45753 },
		[64281] = { SkillIndex = 773, CreatedItemEntry = 45755 },
		[64282] = { SkillIndex = 773, CreatedItemEntry = 45756 },
		[64283] = { SkillIndex = 773, CreatedItemEntry = 45758 },
		[64284] = { SkillIndex = 773, CreatedItemEntry = 45761 },
		[64285] = { SkillIndex = 773, CreatedItemEntry = 45762 },
		[64286] = { SkillIndex = 773, CreatedItemEntry = 45764 },
		[64287] = { SkillIndex = 773, CreatedItemEntry = 45770 },
		[64288] = { SkillIndex = 773, CreatedItemEntry = 45771 },
		[64289] = { SkillIndex = 773, CreatedItemEntry = 45772 },
		[64291] = { SkillIndex = 773, CreatedItemEntry = 45779 },
		[64294] = { SkillIndex = 773, CreatedItemEntry = 45781 },
		[64295] = { SkillIndex = 773, CreatedItemEntry = 45790 },
		[64296] = { SkillIndex = 773, CreatedItemEntry = 45792 },
		[64297] = { SkillIndex = 773, CreatedItemEntry = 45799 },
		[64298] = { SkillIndex = 773, CreatedItemEntry = 45800 },
		[64299] = { SkillIndex = 773, CreatedItemEntry = 45803 },
		[64300] = { SkillIndex = 773, CreatedItemEntry = 45806 },
		[64302] = { SkillIndex = 773, CreatedItemEntry = 45795 },
		[64303] = { SkillIndex = 773, CreatedItemEntry = 45769 },
		[64304] = { SkillIndex = 773, CreatedItemEntry = 45732 },
		[64305] = { SkillIndex = 773, CreatedItemEntry = 45745 },
		[64307] = { SkillIndex = 773, CreatedItemEntry = 45604 },
		[64308] = { SkillIndex = 773, CreatedItemEntry = 45744 },
		[64309] = { SkillIndex = 773, CreatedItemEntry = 45757 },
		[64310] = { SkillIndex = 773, CreatedItemEntry = 45767 },
		[64311] = { SkillIndex = 773, CreatedItemEntry = 45783 },
		[64312] = { SkillIndex = 773, CreatedItemEntry = 45794 },
		[64313] = { SkillIndex = 773, CreatedItemEntry = 45603 },
		[64314] = { SkillIndex = 773, CreatedItemEntry = 45739 },
		[64315] = { SkillIndex = 773, CreatedItemEntry = 45766 },
		[64316] = { SkillIndex = 773, CreatedItemEntry = 45777 },
		[64317] = { SkillIndex = 773, CreatedItemEntry = 45782 },
		[64318] = { SkillIndex = 773, CreatedItemEntry = 45780 },
		[65245] = { SkillIndex = 773, CreatedItemEntry = 46372 },
		[67600] = { SkillIndex = 773, CreatedItemEntry = 48720 },
		[68166] = { SkillIndex = 773, CreatedItemEntry = 49084 },
		[69385] = { SkillIndex = 773, CreatedItemEntry = 49632 },
		[71015] = { RecipeItemEntry = 50167, SkillIndex = 773, CreatedItemEntry = 50125 },
		[71101] = { RecipeItemEntry = 50166, SkillIndex = 773, CreatedItemEntry = 50045 },
		[71102] = { RecipeItemEntry = 50168, SkillIndex = 773, CreatedItemEntry = 50077 },
	}
})