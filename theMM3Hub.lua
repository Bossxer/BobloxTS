local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bossxer/BobloxTS/main/Function.lua"))()
local RedeemCode = game:GetService("ReplicatedStorage").Interactions.Server.RedeemCode
local RenderStepped = game:GetService("RunService").RenderStepped

local Codes = {}

local UI = Material.Load({
     Title = "The MM3 hub",
     Style = 4,
     SizeX = 420,
     SizeY = 420,
     Theme = "Dark"
})
local AutofarmPage = UI.New({
    Title = "Autofarm"
})

for _,v in pairs(game:GetService("ReplicatedStorage").Codes:GetChildren()) do
    table.insert(Codes, v.Name)
end


AutofarmPage.Dropdown({
    Text = "Codes",
    Callback = function(CodeSelected)
        _G.SCode = CodeSelected
    end,
    Options = Codes
})

AutofarmPage.Button({
    Text = "Spefic Codes Redeem Loop",
    Callback = function()
_G.SpecCodeLoop = game:GetService"RunService".RenderStepped:Connect(function()
    SpeficRedeem(SCode)
end)
end
})

AutofarmPage.Button({
    Text = "Stop Spefic Code Redeem loop",
Callback = function()
    _G.SpecCodeLoop:Disconnect()
end
})


AutofarmPage.Button({
    Text = "Codes Redeem Loop",
    Callback = function()
    _G.CodeLoop = game:GetService"RunService".RenderStepped:Connect(function()
    for i=1,#Codes do
           RedeemCode:InvokeServer(Codes[i])
    end
end)
end
})


AutofarmPage.Button({
    Text = "Stop Code Redeem loop",
Callback = function()
    _G.CodeLoop:Disconnect()
end
})
