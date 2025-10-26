-- Noticement
firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, "Script made by iCherryKardes. You might need to reexecute if you are at door 51. Also thanks for using, ".. game.Players.LocalPlayer.Name .."!")


-- Achievement
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "The Cave",
    Desc = "Deep in the Hotel!",
    Reason = 'Play "The Cave" Theme.',
    Image = "https://tr.rbxcdn.com/e97b809a33e25c3ca823b224b3f981b9/420/420/Image/Png",
})

-- Sounds
--game.Workspace.Ambience_Figure.SoundId = game.Workspace.Ambience_FigureIntense.SoundId
--game.Workspace.Ambience_Figure.Volume = "0.7"
game.Workspace.Ambience_Seek.SoundId = "rbxassetid://1846862303"
--game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
	--if game.ReplicatedStorage.GameData.LatestRoom.Value > "50" then
		--game.Workspace.Ambience_Seek.SoundId = "rbxassetid://1848156876"
	--end
--end)
-- Settings
game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Floors Escaped"].Text = "Floors Escaped (2)"

--[[ Lighting Setup
while task.wait(0.00005) do
	game.Lighting.Ambient = Color3.new(0, 0, 0)
	game.Lighting.Caves.Enabled = true
	game.Lighting.Bloom.Enabled = true
	game.Lighting.FogEnd = "75"
	game.Lighting.FogStart = "10"
end
]]

-- Bright Game (90 and Above)
if game.ReplicatedStorage.GameData.LatestRoom.Value > 90 then
	if not getgenv().FullBrightExecuted then

	getgenv().FullBrightEnabled = false

	getgenv().NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= getgenv().NormalLightingSettings.Brightness then
			getgenv().NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not getgenv().FullBrightEnabled then
				repeat
					wait()
				until getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= getgenv().NormalLightingSettings.ClockTime then
			getgenv().NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not getgenv().FullBrightEnabled then
				repeat
					wait()
				until getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= getgenv().NormalLightingSettings.FogEnd then
			getgenv().NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not getgenv().FullBrightEnabled then
				repeat
					wait()
				until getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= getgenv().NormalLightingSettings.GlobalShadows then
			getgenv().NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not getgenv().FullBrightEnabled then
				repeat
					wait()
				until getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= getgenv().NormalLightingSettings.Ambient then
			getgenv().NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not getgenv().FullBrightEnabled then
				repeat
					wait()
				until getgenv().FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until getgenv().FullBrightEnabled
		while wait() do
			if getgenv().FullBrightEnabled ~= LatestValue then
				if not getgenv().FullBrightEnabled then
					game:GetService("Lighting").Brightness = getgenv().NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = getgenv().NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = getgenv().NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = getgenv().NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = getgenv().NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

getgenv().FullBrightExecuted = true
getgenv().FullBrightEnabled = not getgenv().FullBrightEnabled
else
	print("player not reached greenhouse")
end

--game.Lighting.Ambient = Color3.new(0, 0, 0)
game.Lighting.Caves.Enabled = true
game.Lighting.Bloom.Enabled = true
game.Lighting.FogEnd = "75"
game.Lighting.FogStart = "10"

--[[ Figure Room Setup (50)
if game.ReplicatedStorage.GameData.LatestRoom.Value == 50 then
	firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms["50"], 0.416, 60)
	workspace.Ambience_Dark:Play()
end
]]

-- Room Setup (0)
    for i,v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Parts:GetDescendants()) do
  if v:IsA("BasePart") and game.ReplicatedStorage.GameData.LatestRoom.Value < 90 then
        v.Material = Enum.Material.Limestone
        v.Color = Color3.new(0.243137, 0.25098, 0.278431) -- sets the color
        end
    end

-- Room Setup (Loop)
--while task.wait(0.000005) do
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Floors Escaped"].Text = "Floors Escaped (2)" -- if you escaped it will make it floors escaped 2
    for i,v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Parts:GetDescendants()) do
  if v:IsA("BasePart") and game.ReplicatedStorage.GameData.LatestRoom.Value < 90 then
        v.Material = Enum.Material.Limestone
        v.Color = Color3.new(0.243137, 0.25098, 0.278431) -- sets the color
        end
    end
--[[	local roomdoor = game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door
		roomdoor.Material = "Slate"
		roomdoor.Sign.Material = "Slate"
		game.Lighting.FogEnd = "75"
		game.Lighting.FogStart = "10"]]
	end)
