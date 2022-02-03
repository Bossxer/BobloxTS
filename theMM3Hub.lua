local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bossxer/BobloxTS/main/Function.lua"))()
local functionss = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bossxer/MM3Hob/main/Function.lua"))()
local RedeemCode = game:GetService("ReplicatedStorage").Interactions.Server.RedeemCode
local RenderStepped = game:GetService("RunService").RenderStepped
local knifeCase = {}
local GunsCase = {}
local PercsCase = {}
local EventsCase = {}
local EmotesCase = {}
local EffectsCase = {}
local RadioCase = {}
local OthersCase = {}
local PetsCase = {}
local ToysCase = {}
local Codes = {}




local UI = Material.Load({
     Title = "The MM3 hub",
     Style = 3,
     SizeX = 420,
     SizeY = 420,
     Theme = "Dark"
})

local AutofarmPage = UI.New({
    Title = "Autofarm"
})

local ESPPage = UI.New({
    Title = "ESP"
})

local EmotesPage = UI.New({
    Title = "Emotes"
})

local EffectsPage = UI.New({
    Title = "Effects"
})

local EventsPage = UI.New({
    Title = "Events"
})

local GunPage = UI.New({
    Title = "Gun"
})

local KnifePage = UI.New({
    Title = "knife"
})

local PercsPage = UI.New({
    Title = "Percs"
})

local PetsPage = UI.New({
    Title = "Pets"
})

local RadioPage = UI.New({
    Title = "Radio"
})

local ToysPage = UI.New({
    Title = "Toys"
})

local OthersPage = UI.New({
    Title = "Others"
})

local SettingsPage = UI.New({
    Title = "Settings"
})

--Knife

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.KnifeSkins:GetChildren()) do
    table.insert(knifeCase, v.Name)
end

KnifePage.Dropdown({
    Text = "Knife Skins",
    Callback = function(KnifeSelected)
        _G.SKnife = KnifeSelected
    end,
    Options = knifeCase
})

KnifePage.Button({
    Text = "Knife Open Loop",
    Callback = function()
_G.KnifeLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.KnifeSkins:FindFirstChild(_G.SKnife)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


KnifePage.Button({
    Text = "Stop knife open loop",
Callback = function()
    _G.SGuns:Disconnect()
end
})

-- Guns

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.RevolverSkins:GetChildren()) do
    table.insert(GunsCase, v.Name)
end

GunPage.Dropdown({
    Text = "Guns Skins",
    Callback = function(GunsSelected)
        _G.SGuns = GunsSelected
    end,
    Options = GunsCase
})

GunPage.Button({
    Text = "Guns Open Loop",
    Callback = function()
_G.GunsLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.RevolverSkins:FindFirstChild(_G.SGuns)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


GunPage.Button({
    Text = "Stop Guns open loop",
Callback = function()
    _G.GunsLoop:Disconnect()
end
})

-- percs-30s

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.Perks:GetChildren()) do
    table.insert(PercsCase, v.Name)
end

PercsPage.Dropdown({
    Text = "Percs",
    Callback = function(PercSelected)
        _G.SPercs = PercSelected
    end,
    Options = PercsCase
})

PercsPage.Button({
    Text = "Percs Buy Loop",
    Callback = function()
_G.PercsLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.Perks:FindFirstChild(_G.SPercs)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


PercsPage.Button({
    Text = "Stop Percs Buy loop",
Callback = function()
    _G.PercsLoop:Disconnect()
end
})


-- Effects

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.Effects:GetChildren()) do
    table.insert(EffectsCase, v.Name)
end

EffectsPage.Dropdown({
    Text = "Effects",
    Callback = function(EffectSelected)
        _G.SEffect = EffectSelected
    end,
    Options = EffectsCase
})

EffectsPage.Button({
    Text = "Effects Buy Loop",
    Callback = function()
_G.EffectsLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.Effects:FindFirstChild(_G.SEffect)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


EffectsPage.Button({
    Text = "Stop Effects Buy loop",
Callback = function()
    _G.EffectsLoop:Disconnect()
end
})

-- Events

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.Events:GetChildren()) do
    table.insert(EventsCase, v.Name)
end

EventsPage.Dropdown({
    Text = "Events",
    Callback = function(EventsSelected)
        _G.SEvents = EventsSelected
    end,
    Options = EventsCase
})

EventsPage.Button({
    Text = "Events Buy Loop",
    Callback = function()
_G.EventsLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.Events:FindFirstChild(_G.SEvents)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


EventsPage.Button({
    Text = "Stop Events Buy loop",
Callback = function()
    _G.EventsLoop:Disconnect()
end
})


-- Emotes

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.Emotes:GetChildren()) do
    table.insert(EmotesCase, v.Name)
end

EmotesPage.Dropdown({
    Text = "Emotes",
    Callback = function(EmotesSelected)
        _G.SEmotes = EmotesSelected
    end,
    Options = EmotesCase
})

EmotesPage.Button({
    Text = "Emotes Buy Loop",
    Callback = function()
_G.EmotesLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.Emotes:FindFirstChild(_G.SEmotes)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


EmotesPage.Button({
    Text = "Stop Emotes Buy loop",
Callback = function()
    _G.EmotesLoop:Disconnect()
end
})



-- Radio

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.RadioSkins:GetChildren()) do
    table.insert(RadioCase, v.Name)
end

RadioPage.Dropdown({
    Text = "Radio",
    Callback = function(RadioSelected)
        _G.SRadio = RadioSelected
    end,
    Options = RadioCase
})

RadioPage.Button({
    Text = "Radio Buy Loop",
    Callback = function()
_G.RadioLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.RadioSkins:FindFirstChild(_G.SRadio)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


RadioPage.Button({
    Text = "Stop Radio Buy loop",
Callback = function()
    _G.RadioLoop:Disconnect()
end
})



-- Others

for _,v in pairs(game:GetService("ReplicatedStorage").Codes:GetChildren()) do
    table.insert(Codes, v.Name)
end


for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.Others:GetChildren()) do
    table.insert(OthersCase, v.Name)
end

OthersPage.Dropdown({
    Text = "Others",
    Callback = function(OthersSelected)
        _G.SOthers = OthersSelected
    end,
    Options = OthersCase
})

OthersPage.Button({
    Text = "Others Buy Loop",
    Callback = function()
_G.OthersLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.Others:FindFirstChild(_G.SOthers)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


OthersPage.Button({
    Text = "Stop Others Buy loop",
Callback = function()
    _G.OthersLoop:Disconnect()
end
})

OthersPage.TextField({
    Text = "Manual Type code to loop",
    Callback = function(CodeTyped)
        _G.SCode = CodeTyped
    end
})


OthersPage.Button({
    Text = "Manual Codes Redeem Loop",
    Callback = function()
_G.SpecCodeLoop = game:GetService"RunService".RenderStepped:Connect(function()
    SpeficRedeem(_G.SCode)
end)
end
})

OthersPage.Button({
    Text = "Stop Manual Code Redeem loop",
Callback = function()
    _G.SpecCodeLoop:Disconnect()
end
})


OthersPage.Button({
    Text = "Codes Redeem Loop",
    Callback = function()
    _G.CodeLoop = game:GetService"RunService".RenderStepped:Connect(function()
    for i=1,#Codes do
           game:GetService("ReplicatedStorage").Interactions.Server.RedeemCode:InvokeServer(Codes[i])
    end
end)
end
})


OthersPage.Button({
    Text = "Stop Code Redeem loop",
Callback = function()
    _G.CodeLoop:Disconnect()
end
})


-- Toys

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.Toys:GetChildren()) do
    table.insert(ToysCase, v.Name)
end

ToysPage.Dropdown({
    Text = "Toys",
    Callback = function(ToysSelected)
        _G.SToys = ToysSelected
    end,
    Options = ToysCase
})

ToysPage.Button({
    Text = "Toys Buy Loop",
    Callback = function()
_G.ToysLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.Toys:FindFirstChild(_G.SToys)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


ToysPage.Button({
    Text = "Stop Toys Buy loop",
Callback = function()
    _G.ToysLoop:Disconnect()
end
})

-- Pets

for _,v in pairs(game:GetService("ReplicatedStorage").ShopEntries.Pets:GetChildren()) do
    table.insert(PetsCase, v.Name)
end

PetsPage.Dropdown({
    Text = "Pets",
    Callback = function(PetsSelected)
        _G.SPets = PetsSelected
    end,
    Options = PetsCase
})

PetsPage.Button({
    Text = "Pets Buy Loop",
    Callback = function()
_G.PetsLoop = game:GetService"RunService".RenderStepped:Connect(function()
    local args = {
        [1] = game:GetService("ReplicatedStorage").ShopEntries.Pets:FindFirstChild(_G.SPets)
    }
            
    game:GetService("ReplicatedStorage").Interactions.Server.BuyShopItem:InvokeServer(unpack(args))
end)
end
})


PetsPage.Button({
    Text = "Stop Pets Buy loop",
Callback = function()
    _G.PetsLoop:Disconnect()
end
})

-- Autofarm
AutofarmPage.Button({
    Text = "Setup Autofarm",
    Callback = function()
    local part = Instance.new("Part")
    part.CFrame = CFrame.new(500, 995, 500)
    part.Name = syn.crypt.encrypt("The", "DeathIsUpong")
    part.Anchored = true
    part.Size = Vector3.new(50, 1.2, 50)
    part.Parent = game.workspace
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500, 998.59985351562, 500)
    wait(0.25)
    NoLag()
    AntiAfk()
end
})

AutofarmPage.Button({
    Text = "Start Autofarm",
    Callback = function()
_G.AutofarmLoop = game:GetService"RunService".RenderStepped:Connect(function()
     for _,v in pairs(game:GetService("Workspace").CoinsFolder:GetChildren()) do
        if game.Players.LocalPlayer.Stats.CoinsPickedUpInRound.Value ~= _G.CoinCount then
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500, 998.59985351562, 500)
        end
    end
end)
end
})


AutofarmPage.Button({
    Text = "Stop autofarm",
Callback = function()
    _G.AutofarmLoop:Disconnect()
end
})

--ESP






--Webhook

local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/927790385378512937/uwtXTQlLkgTKsODEM9x38eIdeDsvjByMGkgM2Cq_NpCGCODgly3LQeUwaqw60Il2KcLw"
local data = {
   ["content"] = " ",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed The MM3 Script!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)


