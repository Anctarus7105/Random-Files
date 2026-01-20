    local cue2 = Instance.new("Sound")
	cue2.Parent = game.Workspace
	cue2.Name = "It"
	cue2.SoundId = "rbxassetid://1837403780"
	cue2.Volume = 5
	cue2.PlaybackSpeed = 0.198
	cue2.Looped = true
  cue2.PlayOnRemove = true
	cue2.RollOffMode = "Linear"
	cue2.RollOffMaxDistance = 36
	cue2.RollOffMinDistance = 2
  cue2.TimePosition = 48.607
  cue2:Play()
--Equalizer
	Eq = Instance.new("EqualizerSoundEffect")
	Eq.Parent = game.Workspace.It
	Eq.LowGain = -80
	Eq.Enabled = true
	Eq.Name = "Equalizer"
	--Reverb
	Rb = Instance.new("ReverbSoundEffect")
	Rb.Parent = game.Workspace.It
	Rb.DecayTime = 2.687
	Rb.Density = 1
	Rb.Diffusion = 1
	Rb.DryLevel = -80
	Rb.Enabled = true
	Rb.Name = "Reverb"
	wait(0.3)
	Spawn:Play()
end
