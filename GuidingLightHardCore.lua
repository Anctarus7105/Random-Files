if game.Players.LocalPlayer.Character.Humanoid.Health = 0 or game.Players.LocalPlayer.Character.Humanoid.Health = -100 then
wait(0.4)
-- Getting Guiding Light Sound Link

function GitAud(soundgit,filename)
    SoundName=tostring(SoundName)
    local url=soundgit
    local FileName = filename
    writefile(FileName..".mp3", game:HttpGet(url))
    return (getcustomasset or getsynasset)(FileName..".mp3")
end

function CustomGitSound(soundlink, vol, filename)
    local Sound89 = Instance.new("Sound")
    Sound89.SoundId = GitAud(soundlink, filename)
    Sound89.Parent = workspace
    Sound89.Volume = 1
    Sound89:Play()
end

CustomGitSound("https://github.com/Anctarus7105/Custom-Sounds/raw/main/HardcoreGuidingLight.mp3", 1, "HardcoreGuide")

-- Destroy Basic Guiding Light

game.Workspace:FindFirstChild("Guiding Light") or game.Workspace:FindFirstChild("GuidingLight") or game.Workspace:FindFirstChild("Guiding_Light")

if Guiding Light or GuidingLight or Giding_Light then

game.Workspace.GuidingLight:Destroy() or game.Workspace.Guiding Light:Destroy() or game.Workspace.Guiding_Light:Destroy()
end
