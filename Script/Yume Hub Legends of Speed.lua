
if game.PlaceId == 3101667897 then
    world1 = true
elseif game.PlaceId == 3232996272 then
    world2 = true
    else
    print("wrong game xd 1189")
end

if game:GetService("CoreGui"):FindFirstChild("ToggleScreen") then
   game:GetService("CoreGui"):FindFirstChild("ToggleScreen"):Destroy()
end

local ToggleScreen = Instance.new("ScreenGui")
ToggleScreen.Name = "ToggleScreen"
ToggleScreen.Parent = game.CoreGui
ToggleScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local ToggleToggle = Instance.new("TextButton")
ToggleToggle.Name = "ToggleToggle"
ToggleToggle.Parent = ToggleScreen
ToggleToggle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
ToggleToggle.BackgroundTransparency = 1.000
ToggleToggle.BorderSizePixel = 2
ToggleToggle.BorderColor3 = Color3.fromRGB(255, 117, 56)
ToggleToggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ToggleToggle.Size = UDim2.new(0, 50, 0, 50)
ToggleToggle.Font = Enum.Font.SourceSans
ToggleToggle.Text = ""
ToggleToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleToggle.TextSize = 14.000
ToggleToggle.Draggable = true

local UICornerToggle = Instance.new("UICorner")
UICornerToggle.CornerRadius = UDim.new(0.3, 0)
UICornerToggle.Parent = ToggleToggle

local ToggleToggleFrame = Instance.new("Frame")
ToggleToggleFrame.Name = "ToggleToggleFrame"
ToggleToggleFrame.Parent = ToggleToggle
ToggleToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleToggleFrame.BackgroundTransparency = 1.000
ToggleToggleFrame.BorderSizePixel = 2
ToggleToggleFrame.BorderColor3 = Color3.fromRGB(255, 117, 56)
ToggleToggleFrame.Position = UDim2.new(0, 0, 0, 0)
ToggleToggleFrame.Size = UDim2.new(1, 0, 1, 0)

local UICornerFrame = Instance.new("UICorner")
UICornerFrame.CornerRadius = UDim.new(0.3, 0)
UICornerFrame.Parent = ToggleToggleFrame

local ToggleImageUI = Instance.new("Frame")
ToggleImageUI.Name = "MODILEMAGE"
ToggleImageUI.Parent = ToggleToggle
ToggleImageUI.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
ToggleImageUI.BackgroundTransparency = 1.000
ToggleImageUI.BorderSizePixel = 2
ToggleImageUI.BorderColor3 = Color3.fromRGB(255, 117, 56)
ToggleImageUI.Position = UDim2.new(0, 0, 0, 0)
ToggleImageUI.Size = UDim2.new(1, 0, 1, 0)

local UICornerImageUI = Instance.new("UICorner")
UICornerImageUI.CornerRadius = UDim.new(0.3, 0)
UICornerImageUI.Parent = ToggleImageUI

local ToggleImageLabel = Instance.new("ImageLabel")
ToggleImageLabel.Name = "ToggleImageLabel"
ToggleImageLabel.Parent = ToggleImageUI
ToggleImageLabel.BackgroundTransparency = 1.000
ToggleImageLabel.Size = UDim2.new(1, 0, 1, 0)
ToggleImageLabel.Image = "rbxassetid://129092070401999"
ToggleImageLabel.ScaleType = Enum.ScaleType.Fit
ToggleImageLabel.SliceCenter = Rect.new(0, 0, 0, 0)

local UICornerImageLabel = Instance.new("UICorner")
UICornerImageLabel.CornerRadius = UDim.new(0.3, 0)
UICornerImageLabel.Parent = ToggleImageLabel

ToggleToggle.MouseButton1Click:Connect(function()
	game.CoreGui:FindFirstChild("Vaperewrite").Enabled = not game.CoreGui:FindFirstChild("Vaperewrite").Enabled
end)

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Library/Vape%20but%20rewrite.lua")()
local win = lib:Window("YUME",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local home = win:Tab("Home")

home:Label("-//-Information-//-")
home:Button("Discord", function() setclipboard("https://discord.com/invite/T4SpWZwQMJ")
end)
home:Label("Name : "..tostring(game:GetService("Players").LocalPlayer.Name))
home:Label("Game : "..tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name))
home:Label("Executor : "..identifyexecutor())

if world1 then
local Players = game:GetService("Players")
local Client = Players.LocalPlayer
getgenv().AutoOrb = nil -- orb
getgenv().AutoRebirth = nil -- rebirth
getgenv().AutoGem = nil -- gem
getgenv().Red = nil -- crystal
getgenv().Yellow = nil -- crystal
getgenv().Blue = nil  -- crystal
getgenv().Lava = nil  -- crystal
getgenv().White = nil  -- crystal
getgenv().Electro = nil  -- crystal

local Main = win:Tab("Main")

Main:Toggle("Auto Orb",false, function(AutoOrb)
if AutoOrb then
            getgenv().AutoOrb = true
            while getgenv().AutoOrb == true do task.wait(0.1)
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            wait()
            end
AutoOrb()
	else
		getgenv().AutoOrb = false
end
end)

Main:Toggle("Auto Gem",false, function(AutoGem)
if AutoGem then
	getgenv().AutoGem = true
    while getgenv().AutoGem == true do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
            wait()
        end
AutoGem()
	else
		getgenv().AutoGem = false
end
end)

Main:Toggle("Auto Steps",false, function(steps)
getgenv().Autostep = steps
    while wait() do
        if getgenv().Autostep == true then
                    pcall(function ()
                        for i = 1,20 do
                            local args = {
                                [1] = "collectOrb",
                                [2] = "Red Orb",
                                [3] = "City"
                            }
                            
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                            local args = {
                                [1] = "collectOrb",
                                [2] = "Blue Orb",
                                [3] = "City"
                            }
                            
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                        end
                	end)
             end
        end
end)

Main:Toggle("Auto Rebirth",false, function(AutoRebirth)
	if AutoRebirth then
getgenv().AutoRebirth = true
    while getgenv().AutoRebirth == true do
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            wait()
        end
AutoRebirth()
else
	getgenv().AutoRebirth = false
end
end)

Main:Toggle("Auto Hoops",false, function(Hops)
HoopsFarm = Hops
spawn(function()
    while task.wait() do
        if HoopsFarm then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    wait(.3)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(.3) do
        if HoopsFarm then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-547.52026, 2893.19995, 327.647003)
            end)
        end
    end
end)
end)

Main:Toggle("Auto join race",false, function(join)
Auto_Join_Race = join
end)

spawn(function()
    while task.wait() do
        if Auto_Join_Race then
            pcall(function()
                if Client.PlayerGui.gameGui.raceJoinLabel.Visible then
                    game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
                end
            end)
        end
    end
end)

Main:Toggle("Auto win race",false, function(race)
Auto_Race = race
end)

spawn(function()
    while task.wait() do
        if Auto_Race then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").raceMaps:GetChildren()) do
                    if game.Players.LocalPlayer.currentMap.Value == v.mapValue.Value then
                        repeat task.wait() until Client.PlayerGui.gameGui.countdownLabels.goLabel.Visible
                        Client.Character.HumanoidRootPart.CFrame = v.finishPart.CFrame
                    end
                end
            end)
        end
    end
end)


local Egg = win:Tab("Crystal")

Egg:Label("Warning: please check your bag don't full 20")

Egg:Toggle("Auto Open Red Crystal",false, function(Red)
	if Red then
getgenv().Red = true
while getgenv().Red == true do
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Red Crystal")
wait(0)
end
Red()
else
getgenv().Red = false
end
end)
	
Egg:Toggle("Auto Open Blue Crystal",false, function(Blue)
	if Blue then
getgenv().Blue = true
while getgenv().Blue == true do
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Red Crystal")
wait(0)
end
Blue()
else
getgenv().Blue = false
end
end)

Egg:Toggle("Auto Open Lava Crystal",false, function(Lava)
if Lava then
getgenv().Lava = true
while getgenv().Lava == true do
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lava Crystal")
wait(0)
end
Lava()
else
getgenv().Lava = false
end
end)

Egg:Toggle("Auto Open Yellow crystal",false, function(Yellow)
if Yellow then
getgenv().Yellow = true
while getgenv().Yellow == true do
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Yellow Crystal")
wait(0)
end
Yellow()
else
getgenv().Yellow = false
end
end)

Egg:Toggle("Auto Open Snow Crystal",false, function(white)
	if white then
getgenv().white = true
while getgenv().white == true do
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Snow Crystal")
wait(0)
end
white()
else
getgenv().white = false
end
end)

Egg:Toggle("Auto Open Electro crystal",false, function(Electro)
	if Electro then
getgenv().Electro = true
while getgenv().Electro == true do
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Legends Crystal")
wait(0)
end
Electro()
else
getgenv().Electro = false
end
end)
local Teleport = win:Tab("Teleport")

Teleport:Button("Main City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-574.839111, 4.12686396, 387.61615, 0.686054528, 2.76707119e-08, 0.727550149, -3.89566814e-08, 1, -1.29792466e-09, -0.727550149, -2.74524918e-08, 0.686054528)
end)

Teleport:Button("Snow City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-866.386841, 4.00088787, 2165.70654, -0.499959469, -9.93534854e-08, -0.866048813, -4.44803661e-08, 1, -8.90424445e-08, 0.866048813, -5.99544503e-09, -0.499959469)
end)

Teleport:Button("Lava City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1616.82739, 4.05089617, 4330.65283, 7.86637156e-06, -4.15036254e-08, -1, -6.3789912e-08, 1, -4.15041264e-08, 1, 6.37902389e-08, 7.86637156e-06)
end)

Teleport:Button("Highway Legends", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3682.60254, 71.5308151, 5592.50879, -0.0193620101, 3.62180188e-08, -0.999812543, 4.99353519e-08, 1, 3.52577771e-08, 0.999812543, -4.92433294e-08, -0.0193620101)
end)
end

if world2 then
local Players = game:GetService("Players")
local Client = Players.LocalPlayer
getgenv().AutoOrb = nil
getgenv().AutoGem = nil
getgenv().Alien = nil
getgenv().Space = nil

local Main = win:Tab("Main")

Main:Toggle("Auto Orb",false, function(AutoOrb)
if AutoOrb then
getgenv().AutoOrb = true
while getgenv().AutoOrb == true do task.wait(0.1)
game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space")
game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Space")
game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space")
game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Space")
wait()
end
AutoOrb()
else
getgenv().AutoOrb = false
end
end)

Main:Toggle("Auto Gem",false, function(AutoGem)
if AutoGem then
getgenv().AutoGem = true
while getgenv().AutoGem == true do 
game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space")
wait()
end
AutoGem()
else
getgenv().AutoGem = false
end
end)

Main:Toggle("Auto Steps",false, function(steps)
getgenv().Autostep = steps
    while wait() do
        if getgenv().Autostep == true then
                    pcall(function ()
                        for i = 1,20 do
                            local args = {
                                [1] = "collectOrb",
                                [2] = "Red Orb",
                                [3] = "City"
                            }
                            
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                            local args = {
                                [1] = "collectOrb",
                                [2] = "Blue Orb",
                                [3] = "City"
                            }
                            
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                        end
                	end)
             end
        end
end)

Main:Toggle("Auto join race",false, function(join)
Auto_Join_Race = join
end)

spawn(function()
    while task.wait() do
        if Auto_Join_Race then
            pcall(function()
                if Client.PlayerGui.gameGui.raceJoinLabel.Visible then
                    game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
                end
            end)
        end
    end
end)

Main:Toggle("Auto win race",false, function(race)
Auto_Race = race
end)

spawn(function()
    while task.wait() do
        if Auto_Race then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").raceMaps:GetChildren()) do
                    if game.Players.LocalPlayer.currentMap.Value == v.mapValue.Value then
                        repeat task.wait() until Client.PlayerGui.gameGui.countdownLabels.goLabel.Visible
                        Client.Character.HumanoidRootPart.CFrame = v.finishPart.CFrame
                    end
                end
            end)
        end
    end
end)

local Teleport = win:Tab("Teleport")

Teleport:Button("Space City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(307.780823, 73.3749695, -257.75174, -0.821405411, 4.88987695e-08, 0.570344806, 4.46597141e-08, 1, -2.14169393e-08, -0.570344806, 7.87944643e-09, -0.821405411)
UILib:Notification("Yume Hub", "Teleport Done!", "Okay!")
end)

local Egg = win:Tab("Crystal")

Egg:Label("Warning: please check your bag don't full 20")
Egg:Toggle("Auto open Alien Crystal",false, function(Alien)
if Alien then
getgenv().Alien = true
while getgenv().Alien == true do
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Alien Crystal")
wait()
end
Alien()
else
getgenv().Alien = false
end
end)

Egg:Toggle("Auto open Space Crystal",false, function(Space)
if Space then
getgenv().Space = true
while getgenv().Space == true do
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Space Crystal")
end
Space()
else
getgenv().Space = false
end
end)

end