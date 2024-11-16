if not game:IsLoaded() then
    repeat
        task.wait()
    until game:IsLoaded()
end

shared.LoaderTitle = 'YUME' -- Your Script Name



local loadTime = math.random(3, 5) -- Random duration between 3 and 5 seconds

-- Adjust the keyframes based on the random load time
shared.LoaderKeyFrames = {
    [1] = {loadTime * 0.2, 10}, -- [Time (s), Percentage] 
    [2] = {loadTime * 0.2, 30},
    [3] = {loadTime * 0.2, 60},
    [4] = {loadTime * 0.4, 100} -- Total of random seconds
}

local Metadata = {
    LoaderData = {
        Name = (shared.LoaderTitle or 'A Loader'),
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(24, 24, 24),
            Topic = Color3.fromRGB(255, 255, 255),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(30, 30, 30),
            LoaderSplash = Color3.fromRGB(255, 255, 255)
        }
    },
    Keyframes = shared.LoaderKeyFrames
}

local TweenService = game:GetService("TweenService")

local function tweenObject(object, speed, info)
    local tween = TweenService:Create(object, TweenInfo.new(speed, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), info)
    tween:Play()
    return tween
end

local function createObject(className, properties)
    local instance = Instance.new(className)
    for propertyName, propertyValue in pairs(properties) do
        instance[propertyName] = propertyValue
    end
    return instance
end

-- Create Blur Effect
local Blur = Instance.new("BlurEffect")
Blur.Size = 0 -- Start with no blur
Blur.Parent = game:GetService("Lighting")

local Core = createObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
})

local Main = createObject("Frame", {
    Name = "Main",
    Parent = Core,
    BackgroundColor3 = Metadata.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0),
})

local MainCorner = createObject("UICorner", {
    Parent = Main,
})

local Top = createObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = Main,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 8),
    Size = UDim2.new(0, 301, 0, 50),
    Font = Enum.Font.Gotham,
    Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, -- Script Map Name
    TextColor3 = Metadata.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left,
})

local Title = createObject("TextLabel", {
    Name = "Title",
    Parent = Main,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 27),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. Metadata.LoaderData.Name .. "</b>",
    TextColor3 = Metadata.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left,
})

local Hub = createObject("TextLabel", {
    Name = "Hub",
    Parent = Main,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1.000,
    Position = UDim2.new(0, 70, 0, 27),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.GothamBold,
    Text = "HUB", -- Change this to the desired text
    TextColor3 = Color3.fromRGB(255, 117, 56),
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left,
})

local BG = createObject("Frame", {
    Name = "BG",
    Parent = Main,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = Metadata.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24),
})

local BGCorner = createObject("UICorner", {
    Parent = BG,
})

local Progress = createObject("Frame", {
    Name = "Progress",
    Parent = BG,
    BackgroundColor3 = Color3.fromRGB(255, 117, 56), -- Updated color
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24),
})

local ProgressCorner = createObject("UICorner", {
    Parent = Progress,
})

local function updatePercentage(percentage)
    tweenObject(Progress, 0.2, {
        Size = UDim2.new(percentage / 100, 0, 0, 24)
    })
end

-- Loader itself
tweenObject(Main, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
})
tweenObject(Blur, 0.5, {
    Size = 100 -- Fade in the blur
})

wait(0.25)

-- Fade in UI elements
tweenObject(Top, 0.5, {
    TextTransparency = 0
})
tweenObject(Title, 0.5, {
    TextTransparency = 0
})
tweenObject(Hub, 0.5, {
    TextTransparency = 0
})
tweenObject(BG, 0.5, {
    BackgroundTransparency = 0
})
tweenObject(Progress, 0.5, {
    BackgroundTransparency = 0
})

-- Update progress in smaller increments for smoothness
for i = 1, 100, 5 do
    wait(loadTime / 20) -- Adjust for smoother transition based on random duration
    updatePercentage(i)
end

-- Fade out UI elements
tweenObject(Top, 0.5, {
    TextTransparency = 1
})
tweenObject(Title, 0.5, {
    TextTransparency = 1
})
tweenObject(Hub, 0.5, {
    TextTransparency = 1
})
tweenObject(BG, 0.5, {
    BackgroundTransparency = 1
})
tweenObject(Progress, 0.5, {
    BackgroundTransparency = 1
})

-- Fade out the blur effect
tweenObject(Blur, 0.5, {
    Size = 0 -- Fade out the blur
})

wait(0.5)
tweenObject(Main, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
})
wait(0.25)
Core:Destroy()

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

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Artifacttx/YumeHub/main/Library/Vape%20but%20rewrite.lua"))()
local win = lib:Window("YUME", Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local home = win:Tab("Home")
local main = win:Tab("Main")
local ss = win:Tab("Auto Farm")
local sss = win:Tab("Teleport")
local race = win:Tab("Race")
local egg = win:Tab("Crystal")
local misc = win:Tab("Misc")

local player = game.Players.LocalPlayer

local antiAFK = true

player.Idled:connect(function()
while wait(5) do
	if antiAFK then
		game.VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		wait(1)
		game.VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		end
	end
end)

home:Label("-//-Information-//-")
home:Button("Discord", function() setclipboard("https://discord.com/invite/T4SpWZwQMJ")
end)
home:Label("Name : "..tostring(game:GetService("Players").LocalPlayer.Name))
home:Label("Game : "..tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name))
home:Label("Executor : "..identifyexecutor())

main:Button('Claim All Chests', function()
	workspace.goldenChest.circleInner.CFrame = player.Character.HumanoidRootPart.CFrame
	workspace.enchantedChest.circleInner.CFrame = player.Character.HumanoidRootPart.CFrame
	workspace.magmaChest.circleInner.CFrame = player.Character.HumanoidRootPart.CFrame
	workspace.groupRewardsCircle.circleInner.CFrame = player.Character.HumanoidRootPart.CFrame
	wait()
	workspace.goldenChest.circleInner.CFrame = oldGoldenChestPosition
	workspace.enchantedChest.circleInner.CFrame = oldEnchantedChestPosition
	workspace.magmaChest.circleInner.CFrame = oldMagmaChestPosition
	workspace.groupRewardsCircle.circleInner.CFrame = oldGroupRewardsPosition
end)

main:Toggle("Auto Rebirth",false,function(state)
_G.Rebirth = (state and true or false)
	wait()
	while _G.Rebirth == true do
		wait()
		game.ReplicatedStorage.rEvents.rebirthEvent:FireServer("rebirthRequest")
		end
		end)
    	spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.NoClip then
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    	end)

main:Slider("Speed",0,5000,300,function(v)

 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v

 end)

main:Slider("Jump",0,1000,50,function(v)
 game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

   local locate; 

    ss:Dropdown("Select Location", {"City","Snow City","Magma City","Legends Highway","Space","Desert"}, function(value)
        locate = value; 
    end)
 
local orbs; 
    ss:Dropdown("Select Orbs",{"Red Orb","Yellow Orb","Gem"}, function(value)
        orbs = value; --STORES THE USERS SELECTION
    end)
   local setFarm;
   ss:Dropdown("Select Mode",{"Super Fast","Fast","Medium","Slow"}, function(value)
   setFarm = value;

   if setFarm == "Super Fast" then
       setFarm = 40
    elseif setFarm == "Fast" then
       setFarm = 30 
    elseif setFarm == "Medium" then
       setFarm = 20
    elseif setFarm == "Slow" then
       setFarm = 10
    end
   end)
    
  ss:Toggle("Start Farm",false,function(state)
_G.Farm = (state and true or false)
	wait()
	while _G.Farm == true do
		wait()
	for i=1, setFarm do
local A_1 = "collectOrb"
local A_2 = orbs
local A_3 = locate
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
end
end
end) 

ss:Toggle("Hoops Farm",false,function(state)
_G.Hoops = (state and true or false)
	wait()
	while _G.Hoops == true do
		wait()
    local children = workspace.Hoops:GetChildren()
    for i, child in ipairs(children) do
        if child.Name == 'Hoop' then
child.Transparency = 1
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
        end
        end 
        end)
 
game.ReplicatedStorage.raceInProgress.Changed:Connect(function(state)
	if not getgenv().AutoRace then return end
	if state then
		game.ReplicatedStorage.rEvents.raceEvent:FireServer('joinRace')
		wait()
		player.PlayerGui.gameGui.raceJoinLabel.Visible = false
	end
end)
game.ReplicatedStorage.raceStarted.Changed:Connect(function(state)
	if not getgenv().AutoRace then return end
	if state then
		for i, v in pairs(workspace.raceMaps:GetChildren()) do
			local oldFinishPosition = v.finishPart.CFrame
			v.finishPart.CFrame = player.Character.HumanoidRootPart.CFrame
			wait()
			v.finishPart.CFrame = oldFinishPosition
		end
	end
end)
race:Toggle('Auto Finish Race',false,function(state)
	getgenv().AutoRace = state
end)

if game.PlaceId == 3101667897 then --City

		sss:Button("City", function()

game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-9687.1923828125, 59.072853088378906, 3096.58837890625))
end)

sss:Button("Snow City", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-9677.6640625, 59.072853088378906, 3783.736572265625))
end)

sss:Button("Magma City", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-11053.3837890625, 217.0328369140625, 4896.10986328125))
end)

sss:Button("Legends Highway", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-13097.8583984375, 217.0328369140625, 5904.84716796875))
end)

sss:Button("Space", function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(3232996272, p)
end)

sss:Button("Desert", function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(3276265788, p)
end)

elseif game.PlaceId == 3232996272 then --space
sss:Button("City", function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(3101667897, p)
end)

sss:Button("Desert", function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(3276265788, p)
end)
elseif game.PlaceId == 3276265788 then --desert
sss:Button("City", function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(3101667897, p)
end)

sss:Button("Space", function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(3232996272, p)
end)
end

local Crystal = {}

for i,v in pairs(game.workspace.mapCrystalsFolder:GetChildren()) do 

    table.insert(Crystal,v.Name)
end

function OpenCrystal(v) 
local args = {
            [1] = "openCrystal",
            [2] = v
        }
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
        end

local OPENEGG
egg:Dropdown('Select Crystal', Crystal,function(value)
    OPENEGG = value
end)

egg:Toggle("Open Crystal", 
    false,function(state)
    _G.Mm = state
    while _G.Mm do
        wait()
        OpenCrystal(OPENEGG) 
    end
end)
  
spawn(function() 
while wait() do
if _G.AutoSellAllTrails then
local rank = {}
for i,rank in pairs(game:GetService("Players").LocalPlayer.trailsFolder:GetChildren()) do
rank = rank.Name
    for i,item in pairs(game:GetService("Players").LocalPlayer.trailsFolder[rank]:GetChildren()) do
   
local args = {
    [1] = "sellTrail",
    [2] = game:GetService("Players").LocalPlayer.trailsFolder[rank]:FindFirstChild(item.Name)
}

game:GetService("ReplicatedStorage").rEvents.sellTrailEvent:FireServer(unpack(args))

    
    end
end
end
end
end) 

spawn(function() 
while wait() do
if _G.AutoSellAllPets then
local rank = {}
for i,rank in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
rank = rank.Name
    for i,item in pairs(game:GetService("Players").LocalPlayer.petsFolder[rank]:GetChildren()) do
    if item.Name ~= "Ultra Birdie" then
local args = {
    [1] = "sellPet",
    [2] = game:GetService("Players").LocalPlayer.petsFolder[rank]:FindFirstChild(item.Name)
}

game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer(unpack(args))

    end
    end
end
end
end
end) 

spawn(function() 
while wait() do
if _G.BunnyFarm then
local rank = {}
for i,rank in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
rank = rank.Name
    for i,item in pairs(game:GetService("Players").LocalPlayer.petsFolder[rank]:GetChildren()) do
    if item.Name ~= "Ultimate Overdrive Bunny" then
local args = {
    [1] = "sellPet",
    [2] = game:GetService("Players").LocalPlayer.petsFolder[rank]:FindFirstChild(item.Name)
}

game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer(unpack(args))

    end
    end
end
end
end
end) 

spawn(function() 
while wait() do
if _G.AutoUnique then
local rank = {}
for i,rank in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
rank = rank.Name
  if rank ~= "Unique" then
    for i,item in pairs(game:GetService("Players").LocalPlayer.petsFolder[rank]:GetChildren()) do
  
local args = {
    [1] = "sellPet",
    [2] = game:GetService("Players").LocalPlayer.petsFolder[rank]:FindFirstChild(item.Name)
}

game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer(unpack(args))

    end
    end
end
end
end
end) 

spawn(function() 
while wait() do
if _G.OpenBirdieEgg then
OpenCrystal("Electro Crystal") 
end
end
end) 

spawn(function() 
while wait() do
if _G.OpenVoidEgg then
OpenCrystal("Desert Crystal") 
end
end
end) 

spawn(function() 
while wait() do
if _G.OpenLegendsEgg then
OpenCrystal("Electro Legends Crystal") 
end
end
end) 

egg:Toggle("Auto Void Dragon [Desert]",false,function(state)

_G.OpenVoidEgg = state
_G.AutoUnique = state
_G.AutoSellAllTrails = state
end)

egg:Toggle("Auto Ultra Birdie [Best Pet Desert]",false,function(state)

_G.OpenBirdieEgg = state
_G.AutoSellAllPets = state
_G.AutoSellAllTrails = state
end)

egg:Toggle("Auto Unltimate Overdrive Bunny",false,function(state)
_G.BunnyFarm = state
_G.OpenLegendsEgg = state
end)

egg:Toggle("Auto Evolved All Pets",false,function(state)
_G.Evo = (state and true or false)
	wait()
	while _G.Evo == true do
		wait()
		for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
    for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder[v.Name]:GetChildren()) do
local args = {
    [1] = "evolvePet",
    [2] = v.Name
}

game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer(unpack(args))
end
end
end
end)

misc:Toggle("Inf Jump",false,function(v)

_G.InfJump = v

local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
end)
end)
 
spawn(function()
     pcall(function()
          game:GetService("RunService").Stepped:Connect(function()
                if _G.NoClip then
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)

misc:Toggle("No Clip",false,function(value)

        _G.NoClip = value

    end)

 local PLIST = {}



for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.Name)
end

local TpPlayer;

 misc:Dropdown("Select Player",PLIST,function(value)
    TpPlayer = value;
end)

misc:Button("Teleport To Player",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[TpPlayer].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)
 
 misc:Button("Rejoin",function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end)
misc:Button("Low Server Hop",function()
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/raw-scriptpastebin/FE/main/Server_Hop_Settings")()
		module:Teleport(game.PlaceId) ;
    end)
