local AtlasLoot = LibStub("AceAddon-3.0"):NewAddon("AtlasLoot", "AceEvent-3.0", "AceTimer-3.0", "NewsFrame-1.0", "SettingsCreator-1.0", "AceSerializer-3.0", "AceComm-3.0")
ATLASLOOT = AtlasLoot


AtlasLoot.Version = GetAddOnMetadata("AtlasLoot", "Version")
AtlasLoot.DebugMessages = false
AtlasLoot.Dewdrop = AceLibrary("Dewdrop-2.0")
AtlasLoot.CurrentType = "Default"
AtlasLoot.type = {}
AtlasLoot.skin = { buttons = {}, frames = {} }

-- Colours stored for code readability
AtlasLoot.Colors = {
	GREY = "|cff999999",
	RED = "|cffff0000",
	WHITE = "|cffFFFFFF",
	GREEN = "|cff1eff00",
	LIMEGREEN = "|cFF32CD32",
	BLUE = "|cff0070dd",
	ORANGE = "|cffFF8400",
	YELLOW = "|cffFFd200",
	GOLD  = "|cffffcc00",
	CYAN =  "|cff00ffff",
	PURPLE = "|cff9F3FFF",
	SPRINGGREEN = "|cFF00FF7F",
	LIGHTBLUE = "|cFFADD8E6",
	ORANGE2 = "|cFFFFA500",
}

AtlasLoot.DBDefaults = {
    profile = {
		savedState = {},
		LastBoss = {},
		settingsProfile = "default",
	},
	settingsProfiles = {
		default = {
			EquipCompare = false,
			Opaque = false,
			PartialMatching = true,
			LootBrowserStyle = 1,
			LootBrowserScale = 1.0,
			MerchantGlow = false,
			SearchOn = {
				All = false,
			},
			txtSize = 12,
			showUnknownRecipeTooltip = true,
			ItemLoadingSpeed = 1,
		},
	}
}

local CharDefaultSettings = {
	QuickLooks = {},
	SearchResult = {Name = "Search Result" , Type = "Search", Back = true},
}

local LootFilterDefaultSettings = {
	VanityFilters = {},
	CraftingFilters = {},
}

--[[
AtlasLoot:OnInitialize()
Performs inital setup of the mod and registers it for further setup when
the required resources are in place
]]
function AtlasLoot:OnInitialize()
    self:SetupDB("AtlasLootCharDB", CharDefaultSettings)
	self:SetupDB("AtlasLootFilterDB", LootFilterDefaultSettings)
	self.db = self:SetupDB("AtlasLootDB", self.DBDefaults)
	self.selectedProfile = self.db.settingsProfiles[self.db.profile.settingsProfile]
	self.selectedProfile.ItemLoadingSpeed = self.selectedProfile.ItemLoadingSpeed or 1
	self:InitializeSlashCommands()
	--Sets the default loot tables for the current expansion enabled on the server.
	local xpaclist = {"CLASSIC", "TBC", "WRATH"}
	self.Expac = xpaclist[GetAccountExpansionLevel()+1]
end

--Runs after all addons have fully loaded
function AtlasLoot:OnEnable()

	self:SetSeverType()
	LoadItemIDsDatabase()
	self:InitializeWishLists()
	self:InitializeUI()
	self:CreateSearchFrame()
	self:InitializeSkins()
	self:MinimapIconSetup()
	self:InitializeOptionsFrame()
	self:LoadTradeskillRecipes()
	self:PopulateProfessions()
	self:CreateVanityCollection()
	self:CreateItemSourceList()
	self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	self:RegisterComm("AtlasLootWishlist")
	self:InitializeWishlistMerchantGlow()
	self:PatchNotes()


	if IsAddOnLoaded("TomTom") then self.TomTomLoaded = true end

	collectgarbage("collect")
end

function AtlasLoot:Reset(data)
    self.ui:Hide()
    if data == "frames" then
		self.ui:ClearAllPoints()
		self.ui:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
        self.selectedProfile.LootBrowserScale = 1.0
        self:UpdateLootBrowserScale()
    elseif data == "quicklooks" then
        AtlasLootCharDB.QuickLooks = {}
    elseif data == "wishlist" then
		AtlasLootWishList = {}
		self:WishlistSetup()
        AtlasLootCharDB.SearchResult = {}
    elseif data == "all" then
		self.ui:ClearAllPoints()
		self.ui:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
        self.selectedProfile.LootBrowserScale = 1.0
        self:UpdateLootBrowserScale()
        AtlasLootCharDB.QuickLooks = {}
        AtlasLootCharDB.SearchResult = {}
		AtlasLootWishList = {}
		self:WishlistSetup()
    end
    DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE.."AtlasLoot"..": "..self.Colors.RED.."Reset complete!")
end

function AtlasLoot:InitializeSlashCommands()
	--Enable the use of /al or /atlasloot to open the loot browser
	SLASH_ATLASLOOT1 = "/atlasloot"
	SLASH_ATLASLOOT2 = "/al"
	SlashCmdList["ATLASLOOT"] = function(msg) self:SlashCommand(msg) end
end

--[[
AtlasLoot:SlashCommand(msg):
msg - takes the argument for the /atlasloot command so that the appropriate action can be performed
If someone types /atlasloot, bring up the options box
]]
function AtlasLoot:SlashCommand(msg)
	msg = msg or ""

	local cmd, arg1 = string.split(" ", msg, 2)
	cmd = string.lower(cmd or "")

	if cmd == "reset" then
		self:Reset("frames")
	elseif cmd == "options" then
		self:OptionsToggle()
	elseif cmd == "updatecache" and self.selectedProfile.isAdmin then
		local low, high = string.split(" ", arg1, 2)
		self:UpdateItemIDsDatabase(tonumber(low), tonumber(high))
	elseif cmd == "clearcache" and self.selectedProfile.isAdmin then
		wipe(AtlasLootItemCache)
	elseif cmd == "clearmerchantcache" and self.selectedProfile.isAdmin then
		wipe(AtlasLootOtherIds)
	elseif cmd == "news" then
		self:OpenNewsFrame("AtlasLoot")
	elseif cmd == "getwishlist" then
		self:GetWishListVanityItems(arg1)
	elseif cmd == "getmerchant" and self.selectedProfile.isAdmin then
		self:GetMerchantItems(arg1)
	elseif cmd == "admin" then
		self.selectedProfile.isAdmin = not self.selectedProfile.isAdmin
		DEFAULT_CHAT_FRAME:AddMessage(self.selectedProfile.isAdmin and "AtlasLoot Admin mode is now enabled" or "AtlasLoot Admin is mode now disabled")
	else
		self.ui:Show()
	end
end

-- List of Moduel Names
AtlasLoot.ModuleName = {
	["AtlasLootOriginalWoW"] = "AtlasLoot_OriginalWoW";
	["AtlasLootBurningCrusade"] = "AtlasLoot_BurningCrusade";
	["AtlasLootCraftingOriginalWoW"] = "AtlasLoot_Crafting_OriginalWoW";
	["AtlasLootCraftingBurningCrusade"] = "AtlasLoot_Crafting_TBC";
	["AtlasLootCraftingWotLK"] = "AtlasLoot_Crafting_Wrath";
	["AtlasLootWorldEvents"] = "AtlasLoot_WorldEvents";
	["AtlasLootWotLK"] = "AtlasLoot_WrathoftheLichKing";
	["AtlasLootVanity"] = "AtlasLoot_Vanity";
}

AtlasLoot.dataModules = {
	"AtlasLoot_OriginalWoW",
	"AtlasLoot_BurningCrusade",
	"AtlasLoot_WrathoftheLichKing",
	"AtlasLoot_Crafting_OriginalWoW",
	"AtlasLoot_Crafting_TBC",
	"AtlasLoot_Crafting_Wrath",
	"AtlasLoot_WorldEvents",
	"AtlasLoot_Vanity"
}

--[[
AtlasLoot:LoadAllModules()
Used to load all available LoD modules
]]
function AtlasLoot:LoadAllModules()
	local loadedModules = {}
	local flag = 0
	for _, module in pairs(self.dataModules) do
		loadedModules[module] = LoadAddOn(module)
	end

	for module, state in pairs(loadedModules) do
		if not state then
			LoadAddOn(module)
			flag = 1
		end
	end

	if flag == 1 then
		if self.DebugMessages then
			DEFAULT_CHAT_FRAME:AddMessage(self.Colors.GREEN.."AtlasLoot"..": "..self.Colors.WHITE.."All Available Modules Loaded")
		end
		collectgarbage("collect")
	end
end

function AtlasLoot:UNIT_SPELLCAST_SUCCEEDED(event, arg1, arg2 , arg3)
	if arg1 == "player" and arg2 == "Learning" then
		self:PopulateProfessions()
	end
end

function AtlasLoot:MERCHANT_SHOW()
	self:SetMerchantFrameGlow()
end

function AtlasLoot:MERCHANT_UPDATE()
	self:SetMerchantFrameGlow()
end

local serverClasses = {
	OGCLASSES = {
		"DRUID",
		"HUNTER",
		"MAGE",
		"PALADIN",
		"PRIEST",
		"ROGUE",
		"SHAMAN",
		"WARLOCK",
		"WARRIOR",
		"DEATHKNIGHT",
	},
	COA = {
		"BARBARIAN",
    	"WITCHDOCTOR",
    	"DEMONHUNTER",
    	"WITCHHUNTER",
    	"STORMBRINGER",
    	"FLESHWARDEN",
    	"GUARDIAN",
    	"MONK",
    	"SONOFARUGAL",
    	"RANGER",
    	"CHRONOMANCER",
    	"NECROMANCER",
    	"PYROMANCER",
    	"CULTIST",
    	"STARCALLER",
    	"SUNCLERIC",
    	"TINKER",
    	"PROPHET",
    	"REAPER",
    	"WILDWALKER",
    	"SPIRITMAGE",
	},
	CLASSESLESS = {
		"HERO"
	}

}

function AtlasLoot:SetSeverType()
	local _, playerClass = UnitClass("player")
	for type, classes in pairs(serverClasses) do
		for _, class in pairs(classes) do
			if playerClass == class then
				self.serverType = type
				return
			end
		end
	end
end