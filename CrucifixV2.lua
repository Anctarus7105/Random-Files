---====== Load module ======---

local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/refs/heads/main/Doors/Crucifix%20Everything/Source.lua"))()

---====== Create crucifix ======---

module.GiveCrucifix({
    Type = 1,
    Uses = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, -- nil : infinite uses
    Resist = false,
    EntitiesOnly = true, -- true : custom entities only
    IgnoreList = {}
})

-- Crucifix
loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Tools/refs/heads/main/GiveCrucifix.lua"))()

--[[

CRUCIFIX TYPES:
-> 1: Guiding Light


COMING SOON:
-> Curious Light crucifix type

]]--
