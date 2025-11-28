local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")


--[[
AtlasLoot:OptionsToggle:
Toggle on/off the options window
]]
function AtlasLoot:OptionsToggle()
    if InterfaceOptionsFrame_OpenToCategory and not InterfaceOptionsFrame:IsVisible() then
	    InterfaceOptionsFrame_OpenToCategory("AtlasLoot")
	else
		InterfaceOptionsFrame:Hide()
    end
    InterfaceOptionsFrame:SetFrameStrata("DIALOG")
end

function AtlasLoot:InitializeOptionsFrame()
        local Options = {
            AddonName = "AtlasLoot",
            TitleText = "Atlasloot",
            About = true,
            {
                Name = "AtlasLoot Ascension: "..self.Version,
                Left = {
                    {
                        Type = "CheckButton",
                        Name = "Opaque",
                        Lable = "Make Loot Table Opaque",
                        OnClick = function(button) self.selectedProfile.Opaque = button:GetChecked() self:FrameOpaqueToogle() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "AutoCurrentInstance",
                        Lable = "Auto Load Instance Loot Pages",
                        OnClick = function(button) self.selectedProfile.AutoCurrentInstance = button:GetChecked() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "showdropLocationOnSearch",
                        Lable = "Show drop location on search results",
                        OnClick = function(button) self.selectedProfile.showdropLocationOnSearch = button:GetChecked() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "showUnknownRecipeTooltip",
                        Lable = "Show if recipe is unknown in tooltips",
                        OnClick = function(button) self.selectedProfile.showUnknownRecipeTooltip = button:GetChecked() end
                    },
                    {
                        Type = "CheckButton",
                        
                        Name = "recipeExtraInfoSwitch",
                        Lable = "Hide crafting source unless holding CTRL",
                        OnClick = function(button) self.selectedProfile.recipeExtraInfoSwitch = button:GetChecked() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "showdropLocationTooltips",
                        Lable = "Show drop locations in tooltips",
                        OnClick = function(button) self.selectedProfile.showdropLocationTooltips = button:GetChecked() self:CreateItemSourceList(true) end
                    },
                    {
                        Type = "CheckButton",
                        Name = "MerchantGlow",
                        Lable = "Wishlist Vendor Glow",
                        Tooltip = "Make items in a vendor window glow if they are on a wishlist",
                        OnClick = function(button) self.selectedProfile.MerchantGlow = button:GetChecked() self:InitializeWishlistMerchantGlow() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "EquipCompare",
                        Lable = "Show Comparison Tooltips",
                        OnClick = function(button) self.selectedProfile.EquipCompare = button:GetChecked() end
                    },
                    {
                        Type = "Menu",
                        Name = "LootBrowserStyle",
                        Lable = "Skin",
                        Tooltip = "Change Atlasloot skin",
                        Func = 	function(name, selection)
                            self.selectedProfile.LootBrowserStyle = selection
                            self:SetSkin(self.skinKeys[self.selectedProfile.LootBrowserStyle][1])
                        end,
                        Menu = function()
                            local selections = {}
                            for _, skin in pairs(self.skinKeys) do
                                tinsert(selections, skin[2])
                            end
                            return selections, self.skinKeys[self.selectedProfile.LootBrowserStyle][2]
                        end
                    },
                    {
                        Type = "Menu",
                        Name = "selectedProfile",
                        Lable = "Settings Profile",
                        Tooltip = "Change settings the profile of AtlasLoot",
                        Func = 	function(name, selection)
                            self.db.profile.settingsProfile = name
                            self.selectedProfile = self.db.settingsProfiles[name]
                            self:RefreshOptions("AtlasLoot", self.selectedProfile)
                            self:SetSkin(self.skinKeys[self.selectedProfile.LootBrowserStyle][1])
                        end,
                        Menu = function()
                            local selections = {}
                            for profile, _ in pairs(self.db.settingsProfiles) do
                                tinsert(selections, profile)
                            end
                            return selections, self.db.profile.settingsProfile
                        end
                    },
                    {
                        Type = "Button",
                        Name = "ProfileAdd",
                        Lable = "Add Profile",
                        Size = {100,25},
                        OnClick = function() StaticPopup_Show("ATLASLOOT_ADD_PROFILE") end
                    },
                    {
                        Type = "Button",
                        Position = "Right",
                        Name = "ProfileDelete",
                        Lable = "Delete Profile",
                        Size = {100,25},
                        OnClick = function()
                            StaticPopupDialogs.ATLASLOOT_DELETE_PROFILE.profile = self.db.profile.settingsProfile
                            StaticPopup_Show("ATLASLOOT_DELETE_PROFILE")
                        end
                    },
                },
                Right = {
                    {
                        Type = "CheckButton",
                        Name = "minimap",
                        Lable = "Hide minimap icon",
                        OnClick = function() self:ToggleMinimap() end
                    },
                    {
                        Type = "Menu",
                        Name = "txtSize",
                        Lable = "Menu text size",
                        Menu = {10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25}
                    },
                    {
                        Type = "Slider",
                        Name = "LootBrowserScale",
                        Lable = "UI Scale",
                        MinMax = {0.25, 1.5},
                        Step = 0.01,
                        Size = {240,16},
                        OnShow = function() self.options.LootBrowserScale:SetValue(self.selectedProfile.LootBrowserScale or 1) end,
                        OnValueChanged = function()
                            self.selectedProfile.LootBrowserScale = self.options.LootBrowserScale:GetValue()
                            self:UpdateLootBrowserScale()
                        end
                    },
                    {
                        Type = "Slider",
                        Name = "ItemLoadingSpeed",
                        Lable = "Item Loading Speed",
                        MinMax = {1, 20},
                        Step = 1,
                        Size = {240,16},
                        OnShow = function() 
                            self.options.ItemLoadingSpeed:SetValue(self.selectedProfile.ItemLoadingSpeed or 1) end,
                        OnValueChanged = function()
                            self.selectedProfile.ItemLoadingSpeed = self.options.ItemLoadingSpeed:GetValue()
                        end,
                        Tooltip = {
                            "This controlls the speed that items load.",
                            "Setting it higher will lower your frame rate while loading large loot tables"
                        }
                    }
                }
            },
            {
                Name = "Help",
                TitleText = "AtlasLoot Help",
            },
            {
                Name = "Reset",
                TitleText = "Reset Settings",
                Left = {
                    {
                        Type = "Button",
                        Name = "ResetWishList",
                        Lable = "Reset Wishlist",
                        Size = {130,25},
                        OnClick = function() self:Reset("wishlist") end
                    },
                    {
                        Type = "Button",
                        Name = "ResetFrames",
                        Lable = "Reset Frames",
                        Size = {130,25},
                        OnClick = function() self:Reset("frames") end
                    },
                    {
                        Type = "Button",
                        Name = "ResetFavorites",
                        Lable = "Reset Favorites",
                        Size = {130,25},
                        OnClick = function() self:Reset("quicklooks") end
                    },
                }
            }
        }

    self.options = self:CreateOptionsPages(Options, self.selectedProfile)
    self:DisplayHelp()

    function self:RefreshSettings()
        self:CreateOptionsPages(Options, self.selectedProfile)
    end
end

local helpText = {
    {"How to link an item to someone else:",
    "Shift+Left Click the item like you would for any other in-game item",},
    {"How to view an item in the Dressing Room:",
    "Simply Ctrl+Left Click on the item.  Sometimes the dressing room window is hidden behind the AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden.",},
    {"How to add an item to the wishlist:",
    "Right Click any item and open the context menu and click add to wishlist.",
    "Or Alt+Left Click any item to add it to the default wishlist.",},
    {"How to delete an item from the wishlist:",
    "While on the wishlist screen, just Alt+Left Click on an item to delete it.",},
    {"What else does the wishlist do?",
    "If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.  Also, on a loot page any item already in your wishlist is marked with a yellow star.",},
    {"How to set of change a page filter:",
    "If you Right Click on the filter check box you will get a drop downmenu with a list of filters. Click the filter you want to use.",},
    {"HELP!! I have broken the mod somehow!",
    "Use the reset buttons available in the options menu, or type '/al reset' in your chat window.",},
    "For further help, join us of discord: "..AtlasLoot.Colors.GREEN.."https://discord.gg/uYCE2X2FgA"
}

function AtlasLoot:DisplayHelp()
        local help = self.options.frame.Help.frame
		help.text = help:CreateFontString("AtlasLootHelpFrame_HelpText","OVERLAY","GameFontNormal")
		help.text:SetPoint("TOPLEFT", help, "TOPLEFT", 15, 0)
        help.text:SetWidth(help:GetWidth()-80)
		help.text:SetJustifyH("LEFT")
		help.text:SetJustifyV("TOP")
        local text = ""
        for num, value in pairs(helpText) do
            if type(value) == "table" then
                for i , newText in pairs(value) do
                    if num == 1 and i == 1 then
                        text = self.Colors.ORANGE..newText
                    elseif i == 1 then
                        text = text.."\n\n"..self.Colors.ORANGE..newText
                    else
                        text = text.."\n"..self.Colors.WHITE..newText
                    end
                end
            else
                text = text.."\n\n"..self.Colors.WHITE..value
            end
        end
		help.text:SetText(text)
end

function AtlasLoot:OpenSettingQuickMenu(button)
    GameTooltip:Hide()
    local admin = self.selectedProfile.isAdmin
    local menuList = {
        {
            {text = "Quick Settings", isTitle = true},
            {text = "News/Patch Notes", tooltip = "Open the news/patch notes ui", func = function() self:OpenNewsFrame("AtlasLoot") end},
            {text = "Learn vanity", tooltip = "Learn all unknown vanity spells", func = function() self:LearnAllUnknownVanitySpells() end},
            {text = "Admin Menu", isTitle = true, show = admin, divider = true},
            {text = "Update ItemId Database", tooltip = "Updates the item id variations cache",func = function() self:UpdateItemIDsDatabase() end, show = admin},
            {text = "Wipe ItemIds Database", tooltip = "Wipe the item id variations cache", func = function() wipe(AtlasLootItemCache) end, show = admin},
            {text = "Pull Merchant items", tooltip = "Cache all off the items in the currently open merchant window", func = function() self:GetMerchantItems() end, show = admin},
            {text = "Wipe Merchant Cache", tooltip = "Wipe the item merchant cache", func = function() wipe(AtlasLootOtherIds) end, show = admin},
        }}
    self:OpenDewdropMenu(button, menuList)
end

StaticPopupDialogs["ATLASLOOT_ADD_PROFILE"] = {
	text = "Add New Profile",
	button1 = "Confirm",
	button2 = "Cancel",
	hasEditBox = true,
	OnShow = function(self)
	self:SetFrameStrata("TOOLTIP");
  end,
	OnAccept = function (button)
        local self = AtlasLoot
		local text = button.editBox:GetText()
		if text ~= "" and not self.db.settingsProfiles[text] then
        self.db.settingsProfiles[text] = self:CloneTable(self.DBDefaults.settingsProfiles.default)
          self.db.profile.settingsProfile = text
          self.selectedProfile = self.db.settingsProfiles[text]
          self:RefreshOptions("AtlasLoot", self.selectedProfile)
        elseif self.db.settingsProfiles[text] then
            DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE.."AtlasLoot: "..self.Colors.WHITE.."A profile with this name already exists")
		end
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3,
	enterClicksFirstButton = true,
  }

  StaticPopupDialogs["ATLASLOOT_DELETE_PROFILE"] = {
	text = "Delete Profile?",
	button1 = "Confirm",
	button2 = "Cancel",
	OnShow = function(button)
        button:SetFrameStrata("TOOLTIP");
	end,
	OnAccept = function (button)
        local self = AtlasLoot
        local profile = StaticPopupDialogs.ATLASLOOT_DELETE_PROFILE.profile
        if profile == "default" then
                DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE.."AtlasLoot: "..self.Colors.WHITE.."You can not delete the default profile")
        else
            if self.db.profile.settingsProfile == profile then
                self.db.profile.settingsProfile = "default"
                self.selectedProfile = self.db.settingsProfiles[profile]
                self:RefreshOptions("AtlasLoot", self.selectedProfile)
            end
            self.db.settingsProfiles[profile] = nil
        end
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3,
	enterClicksFirstButton = true,
  }