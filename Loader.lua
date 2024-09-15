--why are you here?
--bro skided
if not game:IsLoaded() then
    repeat
        task.wait()
    until game:IsLoaded()
end

_G.GameList = {
	[537413528] = "https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Script/Build%20a%20boat.lua",
}
_G.CheckGame = _G.GameList[game.PlaceId]
if _G.GameList[game.PlaceId] then
loadstring(game:HttpGet(_G.CheckGame))()
else
game.Players.LocalPlayer:Kick("Not Game Support")
end
