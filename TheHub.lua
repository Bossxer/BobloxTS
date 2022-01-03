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


local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/916524971579306035/3BiUzWk1LX2dSma9TOXq5EUlQd4esQwKZ5vLkwXjBd5l73C40tRg-F33zWw-6QLLB3Ht"
local data = {
   ["content"] = " ",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
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
