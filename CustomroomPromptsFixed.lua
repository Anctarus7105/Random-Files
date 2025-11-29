local lastroom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
local cl_exist = game.Workspace.CurrentRooms[lastroom]:FindFirstChild("custom")
if cl_exist then

local customlast = game.Workspace.CurrentRooms[lastroom].custom
local paint1 = customlast.Assets.Painting_Big1.PaintPrompt
local paint1_1 = customlast.Assets.Painting_Big1
local paint2 = customlast.Assets.Painting_Big2.PaintPrompt
local paint3 = customlast.Assets.Painting_Big3.PaintPrompt
local paint4 = customlast.Assets.Painting_Tall.InteractPrompt
local wd1 = customlast.Assets.Wardrobe1.HidePrompt
local wd2 = customlast.Assets.Wardrobe2.HidePrompt
local crates = customlast.Assets.Crates.WoodenCrate4.CratesPrompt
local crux = customlast.Assets.Crucifix.CrucifixPrompt
local paint5 = customlast.Assets.Painting_Small.InteractPrompt
local clicknumber = 0
--
local function onTriggered()
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "The door is stuck.")
end
--
local function onTriggered2()
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "I can't hide here.")
end
--
local function onTriggered3()
	clicknumber = clicknumber + 1
	if clicknumber ~= 25 and clicknumber ~= 50 and clicknumber ~= 75 and clicknumber <= 75 then
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "This painting is titled ''??''")
	end
	if clicknumber == 25 then
	wait(0.1)
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Stop spam clicking me.")
	end
	if clicknumber == 50 then
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Okay, this is what you get.")
	game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 25
	wait(2)
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Not that funny now, huh?")
	end
	if clicknumber == 75 then
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Ok i'm done.")
	paint1_1.Canvas.SurfaceGui.ImageLabel:Destroy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Entities-Spawns/refs/heads/main/Question"))()
	end
if clicknumber >= 76 then
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "There is no painting.")
end

end
--
local function onTriggered4()
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "This painting is titled ''oh no i was oops!''")
    wait(1.69420)
    firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "He's friends with Oof.")
end
--
local function onTriggeredLisa()
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "This painting is titled ''Mohner Liser''. Drawn by ThatOneAmethystIceCube.")
wait(2.5)
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "This is true art.")
end
--
local function onTriggered5()
    firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "This painting is titled ''The Screechset''. Drawn by Zenyx.")
    wait(2.5)
    firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "The true meaning of screech.")
end
--
local function onTriggeredCrates()
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Just a bunch of crates. I wonder if there is something inside one of them.")
end
--
local function onTriggeredCrucifix()
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "The Crucifix emits a strange aura.")
end
--
local function onTriggeredSmall()
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "This painting is titled ''oh no''. Drawn by valencanceladevi")
wait(2.5)
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Someone should tell him to turn around.")
end
--

-- triggers
paint1.Triggered:Connect(onTriggered3)
paint2.Triggered:Connect(onTriggered4)
paint3.Triggered:Connect(onTriggered5)
paint4.Triggered:Connect(onTriggeredLisa)
crates.Triggered:Connect(onTriggeredCrates)
wd1.Triggered:Connect(onTriggered2)
wd2.Triggered:Connect(onTriggered)
crux.Triggered:Connect(onTriggeredCrucifix)
paint5.Triggered:Connect(onTriggeredSmall)
--
end
--
