local Players = game:GetService('Players');
local Player = Players['LocalPlayer']
-- local player check     if (Client ~= Player) and Client.Character then

local espfunc = function(parent, adornee, color)
local esp = Instance.new("BoxHandleAdornment")
esp.Adornee = adornee
esp.Name = "TheTwoTs"
esp.Size = Vector3.new(2, 2, 1)
esp.Color3 = color
esp.AlwaysOnTop = true
esp.Visible = true
esp.ZIndex = 2
esp.Parent = parent 
end

local Check = function()
for i, Client in pairs(Players:GetPlayers()) do
    if (Client ~= Player) and Client.Character then
                                if Client.Character.HumanoidRootPart:FindFirstChild("TheTwoTs") == nil then
                                        espfunc(Client.Character.HumanoidRootPart, Client.Character.HumanoidRootPart, Color3.fromRGB(0,255,0))
                                if  Client.Backpack:findFirstChild("Revolver") or Client.Character:findFirstChild("Revolver") then
                                        Client.Character.HumanoidRootPart.TheTwoTs.Color3 = Color3.new(0,50,255)
                            else do
                                if  Client.Backpack:findFirstChild("Knife") or Client.Character:findFirstChild("Knife") then
                                        Client.Character.HumanoidRootPart.TheTwoTs.Color3 = Color3.new(255,0,0)
                            else do
                                        Client.Character.HumanoidRootPart.TheTwoTs.Color3 = Color3.new(0,255,0)
                            end
                        end
                    end
                end
            end
        end
    end
end

game:GetService"RunService".RenderStepped:Connect(function()
    for i,Client in pairs(Players:GetPlayers()) do
        if (Client ~= Player) and Client.Character then
            Check()
        end
    end
end)
