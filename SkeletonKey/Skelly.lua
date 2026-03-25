firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Made by Zepsyy3543")

local Debris = game:GetService("Debris")
local Player = game.Players.LocalPlayer
local char = Player.Character or Player.CharacterAdded:Wait()
local hum = char:FindFirstChild("Humanoid")
local rootPart = char:FindFirstChild("HumanoidRootPart")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EntitiesList = ReplicatedStorage:WaitForChild("Entities")




function DeleteDebris(obj, Time)
    Debris:AddItem(obj, Time)
end

function ReplaceItem(i,item, handle)
    if item == "Key" then
        DeleteDebris(handle, 0)
        wait(0.1)
        local bone = game:GetObjects("rbxassetid://11601375028")[1]
        bone.Parent = i
    end
end

Player.Backpack.ChildAdded:Connect(function(child)
    wait(.1)
    if child.Name == "Key" then
        local Key_Handle = child:FindFirstChild("Handle")
        child.TextureId = LoadCustomAsset("https://tr.rbxcdn.com/307bfcd7de55e90473eae51d63bef2ea/420/420/Model/Png")

        ReplaceItem(child,"Key", Key_Handle)
    end
end)

--3D Entities
if EntitiesList then
    local Screech = game:GetObjects("rbxassetid://11599277464")[1]
    Screech.Parent = EntitiesList

    DeleteDebris(EntitiesList.Screech, 0)

    local Tim = game:GetObjects("rbxassetid://11599287160")[1]
    Tim.Parent = EntitiesList

    for i, collided in pairs(Tim:GetDescendants()) do
        if collided:IsA("BasePart") then
            collided.CanCollide = false
            collided.Massless = true
        end
    end

    DeleteDebris(EntitiesList.Spider, 0)
end
function AddFigureDecor(e)
    if e.Name == "FigureRagdoll" then

        local Hat = game:GetObjects("rbxassetid://11567380682")[1]
        Hat.Parent = e

        local TurkeyLegItem_Figure = game:GetObjects("rbxassetid://11583625617")[1]
        TurkeyLegItem_Figure.Parent = e
        TurkeyLegItem_Figure.Massless = true
        TurkeyLegItem_Figure.Anchored = false
    
        while task.wait() do
            if e:FindFirstChild("Head") then
                Hat.CFrame = e.Head.CFrame * CFrame.new(0,1,-0.2) 
                TurkeyLegItem_Figure.CFrame = e.RightHand.CFrame * CFrame.Angles(0,math.rad(10),0)
            end
        end
    end
end


game.Workspace.CurrentRooms.ChildAdded:Connect(function(child)
    wait(2)
    if child.Name == "50" or child.Name == "100" then
        local figure = child.FigureSetup:WaitForChild("FigureRagdoll")
        if figure then
            AddFigureDecor(figure)
        end
    end
end)



for i,entity in pairs(workspace.CurrentRooms:GetDescendants()) do
        AddFigureDecor(entity)
end


function AddWindowDecor(obj)
    if obj.Name == "Skybox" then
        obj.Color = Color3.fromRGB(102,0,17)
        obj.Material = Enum.Material.SmoothPlastic
    end

    -- if obj.Name == "LibraryWindow" then
    --     for i,v in pairs(obj:GetDescendants()) do
    --         if v.Name == "Particles" then
    --             local Leafs = game:GetObjects("rbxassetid://11522503715")[1]
    --             Leafs.Parent = v
    
    --             if v:FindFirstChild("RainParticle") then
    --                 v.Orientation = Vector3.new(0, obj.Glass.Orientation.Y, 180)
    --                 game:GetService("Debris"):AddItem(v:FindFirstChild("RainParticle"), 0.2)
    --             end
    --         end
    --     end
    -- end

    if obj.Name == "Window" or "Window_Tall" then
        if obj:FindFirstChild("Particles") then
            local Part_Particles = obj:FindFirstChild("Particles")
            local Leafs = game:GetObjects("rbxassetid://11522503715")[1]
            Leafs.Parent = Part_Particles

            if Part_Particles:FindFirstChild("RainParticle") then
                Part_Particles.Orientation = Vector3.new(0, obj.Glass.Orientation.Y, 180)
                game:GetService("Debris"):AddItem(Part_Particles:FindFirstChild("RainParticle"), 0.2)
            end
        end
    end
end



for index, Skybox in pairs(game.Workspace.CurrentRooms:GetDescendants()) do
    AddWindowDecor(Skybox)
end



workspace.CurrentRooms.ChildAdded:Connect(function(child)
    wait(1)
    for i, v in pairs(child:GetDescendants()) do
        AddWindowDecor(v)
    end
end)





function AddTurkey(obj)        
    local Turkey = game:GetObjects("rbxassetid://11566138084")[1]
    Turkey.Parent = obj
    Turkey.CFrame  =  obj.CFrame * CFrame.new(
        math.random(-obj.Size.X/3, obj.Size.X/3),math.random(-obj.Size.Y/3, obj.Size.Y/3),math.random(-obj.Size.Z/3, obj.Size.Z/3)
    ) * CFrame.new(0,0.12,0)
    Turkey.Orientation = Vector3.new(0, math.random(-190, 190), 85.16)

    Turkey.Prompt.Triggered:Connect(function()
        local args  = {
            "I'm too much of a loser so I can't pick this up.",
            "I can't Pick this up.",
            "Why am I trying to pick this up.",
            "I don't like Turkey.",
            "I don't touch grass.",
            "I eat balls.",
        }


        firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, args[math.random(1, #args)])
    end)
    --  for i,v in pairs(Turkey:GetChildren()) do
    --     if v:IsA("MeshPart") and v:IsA("Part") then
    --         v.CFrame = v.CFrame * CFrame.new(0,2,0)
    --     end
    -- end
end



for i, table in pairs(game.Workspace.CurrentRooms:GetDescendants()) do
    local args = math.random(0,1)
    if args == 1 then
        if table.Name == "Table" then
        
            local Part = Instance.new("Part")
            Part.CFrame = table:WaitForChild("Main").CFrame * CFrame.new(0,1.7,0)
            Part.Transparency = 1
            Part.Size = Vector3.new(table:WaitForChild("Main").Size.X, 0.2, table:WaitForChild("Main").Size.Z)
            Part.Parent = table
            Part.Name = "Turkey Zone"
            Part.Anchored = true
            wait(0.1)
            AddTurkey(Part)
        end
        if table.Name == "Turkey Zone" then
            table:Remove()
        end
    end
end



game.Workspace.CurrentRooms.ChildAdded:Connect(function(Child)
    wait(2)
    for i,v in pairs(Child:GetDescendants()) do
        if v.Name == "Table" then
            local Part = Instance.new("Part")
            Part.CFrame = v:WaitForChild("Main").CFrame * CFrame.new(0,1.7,0)
            Part.Transparency = 1
            Part.Size = Vector3.new(v:WaitForChild("Main").Size.X, 0.2, v:WaitForChild("Main").Size.Z)
            Part.Parent = v
            Part.Name = "Turkey Zone"
            Part.Anchored = true
            wait(0.1)
            AddTurkey(Part)
        end

    end
end)


function AddSeekDecor(e)
    local randomargs = math.random(1,2)


    if e.Name == "SeekRig" then
        if randomargs == 1 then
            local Hat = game:GetObjects("rbxassetid://11567381364")[1]
            Hat.Parent = e
            Hat.Name = "Hat_thing"
    
            while task.wait() do
                Hat.CFrame = e.Head.CFrame * CFrame.new(0,0.3,0)
            end
        else
            local Hat = game:GetObjects("rbxassetid://11574970455")[1]
            Hat.Parent = e
            Hat.Name = "Hat_thing"
    
            while task.wait() do
                Hat.CFrame = e.Head.CFrame * CFrame.new(0,0.3,0)
            end
        end
    end
end



    
game.Workspace.ChildAdded:Connect(function(child)
    wait(0.2)
    if child.Name == "SeekMoving" then
        local seekrig = child:WaitForChild("SeekRig")

        if seekrig:FindFirstChild("Hat_thing") then
            seekrig:FindFirstChild("Hat_thing"):Destroy()
        end

        if seekrig then
            AddSeekDecor(seekrig)
        end
    end
end)



for i,entity in pairs(workspace:GetDescendants()) do
    AddSeekDecor(entity)
end

local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()


-- Create your tool here
local TurkeyLeg = game:GetObjects("rbxassetid://11575007432")[1]

local TurkeyLegActivated = false
local duration = 5

TurkeyLeg.Activated:Connect(function()
    if not TurkeyLegActivated then
        TurkeyLegActivated = true
        TurkeyLeg.Handle.DrinkSound:Play()
        wait(.7)
        TurkeyLeg.Handle.Burp:Play()
        local PoopSound = Instance.new("Sound")
        PoopSound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        PoopSound.SoundId = "rbxassetid://8720014366"
        PoopSound:Play()

        local poopmodel = game:GetObjects("rbxassetid://11575104351")[1]
        poopmodel.Parent = workspace
        poopmodel.PoopBottom.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0.5)
        for i,v in pairs(poopmodel:GetChildren()) do
            v.CanCollide = true
        end
        task.wait(3)
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Taking Big Dumps Of Diarrhea"
        debug.setupvalue(
            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
            1,
            {
                "Looks Like You Took A Big Fat Dump.",
                "You died from too much diarrhea leaking from your crack.",
                "Happy thanks giving fatty >:)",
                "Your balls look itchy let me scratch them",

            }
        )

        wait(duration)
        TurkeyLegActivated = false
    end
end)


local char=game.Players.LocalPlayer.Character
local animation=Instance.new("Animation")
animation.Name="thing"
animation.AnimationId="rbxassetid://9982615727"
local track=char.Humanoid.Animator:LoadAnimation(animation)
    
    
TurkeyLeg.Parent = game.Players.LocalPlayer.Backpack
TurkeyLeg.Equipped:Connect(function()
    track:Play()
end)
TurkeyLeg.Unequipped:Connect(function()
    track:Stop()
end)


game:GetService("RunService").RenderStepped:Connect(function()
    if TurkeyLegActivated then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 34
    end
end)

-- Create custom shop item
CustomShop.CreateItem(TurkeyLeg, {
    Title = "Turkey Leg",
    Desc = "Get Fat.",
    Image = "https://cdn.shopify.com/s/files/1/0451/8097/7303/products/WillieBirdSmokedDrumstick_321x.png?v=1631649988",
    Price = "100 Billion",
    Stack = 1,
})
