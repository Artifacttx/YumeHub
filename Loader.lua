--why are you here?
--bro skided
--↓↓↓ Fix ui ↓↓↓--
local crackme = loadstring(game:HttpGet("https://raw.githubusercontent.com/Artifacttx/YumeHub/refs/heads/main/Script/EasyCrack.lua"))()
--↑↑↑ Fix ui ↑↑↑--

--↓↓↓ Dont Delete or it will not work ↓↓↓--
local cum = loadstring(game:HttpGet("https://raw.githubusercontent.com/Artifacttx/YumeHub/refs/heads/main/Script/Unknow.lua"))()
--↑↑↑ Dont Delete or it will not work ↑↑↑--

_G.GameList = {
    [537413528] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Script/Build%20a%20boat.lua",
    [3101667897] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Script/Legends%20of%20Speed.lua",
    [3232996272] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Script/Legends%20of%20Speed.lua",
    [3276265788] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Script/Legends%20of%20Speed.lua",
    [10260193230] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/refs/heads/main/Script/Normal%20Meme%20Sea.lua"
}

_G.CheckGame = _G.GameList[game.PlaceId]
if _G.GameList[game.PlaceId] then
    loadstring(game:HttpGet(_G.CheckGame))()
else
    game.Players.LocalPlayer:Kick("Game Not Support")
end
