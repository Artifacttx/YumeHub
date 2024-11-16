--why are you here?
--bro skided
local log = loadstring(game:HttpGet("https://raw.githubusercontent.com/Artifacttx/YumeHub/refs/heads/main/Script/Unknow.lua"))()

_G.GameList = {
	[537413528] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Script/Build%20a%20boat.lua",
	[3101667897] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Script/Legends%20of%20Speed.lua",
	[3232996272] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Script/Legends%20of%20Speed.lua"
}
_G.CheckGame = _G.GameList[game.PlaceId]
if _G.GameList[game.PlaceId] then
loadstring(game:HttpGet(_G.CheckGame))()
else
game.Players.LocalPlayer:Kick("Game Not Support")
end
