local Services = setmetatable({}, {
    __index = function(self, index)
        local s = game:GetService(index)
        if s then return s end
    end
})

local Client = Services.Players.LocalPlayer

DupeInventory = function()
    local Head = Client.Character:WaitForChild("Head")
    local Pos = Head.CFrame
    Client.Character.Humanoid:UnequipTools()
	Head:Destroy()
    for _, v in next, Client.Backpack:GetChildren() do
        task.spawn(function()
            Services.ReplicatedStorage.Interaction.ClientInteracted:FireServer(v, "Drop tool", Pos)
        end)
    end
    Client.CharacterAdded:Wait()
    local hrp = Client.Character:WaitForChild("HumanoidRootPart")
    wait(1)
    hrp.CFrame = Pos
end

SaveSlot = function()
    Services.ReplicatedStorage.LoadSaveRequests.RequestSave:InvokeServer(Client.CurrentSaveSlot.Value)
end

MaxLand = function()
for i, v in pairs(game:GetService("Workspace").Properties:GetChildren()) do
		if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
			base = v
			square = v.OriginSquare
			end
		end
	function MakePlot(pos)
		local Event = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
		Event:FireServer(base, pos)
		end
	spos = square.Position

	MakePlot(CFrame.new(spos.X + 40, spos.Y, spos.Z))
	MakePlot(CFrame.new(spos.X - 40, spos.Y, spos.Z))
	MakePlot(CFrame.new(spos.X, spos.Y, spos.Z + 40))
	MakePlot(CFrame.new(spos.X, spos.Y, spos.Z - 40))
	MakePlot(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40))
	MakePlot(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40))
	MakePlot(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40))
	MakePlot(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40))
	MakePlot(CFrame.new(spos.X + 80, spos.Y, spos.Z))
	MakePlot(CFrame.new(spos.X - 80, spos.Y, spos.Z))
	MakePlot(CFrame.new(spos.X, spos.Y, spos.Z + 80))
	MakePlot(CFrame.new(spos.X, spos.Y, spos.Z - 80))
	MakePlot(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80))
	MakePlot(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80))
	MakePlot(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80))
	MakePlot(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80))
	MakePlot(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80))
	MakePlot(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80))
	MakePlot(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40))
	MakePlot(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40))
	MakePlot(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40))
	MakePlot(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40))
	MakePlot(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80))
	MakePlot(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))
end
