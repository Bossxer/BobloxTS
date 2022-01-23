local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local W, A, S, D
local xVelo, yVelo
local mt = getrawmetatable(game)
local oldnc = mt.__namecall
setreadonly(mt,false)



function NoLag()
   	workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
	workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
	workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end 
end

function AntiAfk()
	local GC = getconnections or get_signal_cons
	    if GC then
		for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
		    if v["Disable"] then
			v["Disable"](v)
		    elseif v["Disconnect"] then
			v["Disconnect"](v)
		end
	    end
	end
end

function VWalkspeed(Ammount)
while _G.EWalkspeed == true do
   local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
   local C = game.Workspace.CurrentCamera
   local LV = C.CFrame.LookVector
   for i,v in pairs(UIS:GetKeysPressed()) do
       if v.KeyCode == Enum.KeyCode.W then
           W = true
       end
       if v.KeyCode == Enum.KeyCode.A then
           A = true
       end
       if v.KeyCode == Enum.KeyCode.S then
           S = true
       end
       if v.KeyCode == Enum.KeyCode.D then
           D = true
       end
   end

   if W == true and S == true then
       yVelo = false
       W,S = nil
   end

   if A == true and D == true then
       xVelo = false
       A,D = nil
   end

   if yVelo ~= false then
       if W == true then
           if xVelo ~= false then
               if A == true then
                   local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(45), 0)).LookVector
                   HRP.Velocity = Vector3.new((LeftLV.X * Ammount), HRP.Velocity.Y, (LeftLV.Z * Ammount))
                   W,A = nil
               else
                   if D == true then
                       local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-45), 0)).LookVector
                       HRP.Velocity = Vector3.new((RightLV.X * Ammount), HRP.Velocity.Y, (RightLV.Z * Ammount))
                       W,D = nil
                   end
               end
           end
       else
           if S == true then
               if xVelo ~= false then
                   if A == true then
                       local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(135), 0)).LookVector
                       HRP.Velocity = Vector3.new((LeftLV.X * Ammount), HRP.Velocity.Y, (LeftLV.Z * Ammount))
                       S,A = nil
                   else
                       if D == true then
                           local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-135), 0)).LookVector
                           HRP.Velocity = Vector3.new((RightLV.X * Ammount), HRP.Velocity.Y, (RightLV.Z * Ammount))
                           S,D = nil
                       end
                   end
               end
           end
       end
   end

   if W == true then
       HRP.Velocity = Vector3.new((LV.X * Ammount), HRP.Velocity.Y, (LV.Z * Ammount))
   end
   if S == true then
       HRP.Velocity = Vector3.new(-(LV.X * Ammount), HRP.Velocity.Y, -(LV.Z * Ammount))
   end
   if A == true then
       local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(90), 0)).LookVector
       HRP.Velocity = Vector3.new((LeftLV.X * Ammount), HRP.Velocity.Y, (LeftLV.Z * Ammount))
   end
   if D == true then
       local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-90), 0)).LookVector
       HRP.Velocity = Vector3.new((RightLV.X * Ammount), HRP.Velocity.Y, (RightLV.Z * Ammount))
   end

   xVelo, yVelo, W, A, S, D = nil
   wait()
   end
end

function SpeficRedeem(Code)
    RedeemCode:InvokeServer(Codes[Code])
end

function antikick()
	mt.__namecall = function(self,...)
		local method = getnamecallmethod()
		if method == "Kick" and self == LocalPlayer then 
			return
		end
		return oldnc(self,...)
	end
end


setreadonly(mt,true)
