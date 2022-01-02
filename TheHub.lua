local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bossxer/BobloxTS/main/Function.lua"))()

local UI = Material.Load({
     Title = "The Hub",
     Style = 1,
     SizeX = 400,
     SizeY = 300,
     Theme = "Dark"
})

local Page = UI.New({
    Title = "Main"
})

local Page2 = UI.New({
    Title = "Settings"
})

Page.Toggle({
    Text = "Walkspeed on or off",
    Callback = function(Value1)
        _G.EWalkspeed = Value1

end
})

Page.Slider({
    Text = "Walkspeed speed",
    Callback = function(value)
        VWalkspeed(value)
    end,
    Min = 0,
    Max = 500,
    Def = 50
})

Page2.Button({
    Text = "Anti Lag",
    Callback = function()
        NoLag()
    end
})

Page2.Button({
    Text = "Anti AFK",
    Callback = function()
        AntiAfk()
    end
})
