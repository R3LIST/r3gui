-- Full R3gui Script (Clean + All Features)
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Clear old GUI
if LocalPlayer.PlayerGui:FindFirstChild("R3gui") then
	LocalPlayer.PlayerGui.R3gui:Destroy()
end

-- Create GUI
local gui = Instance.new("ScreenGui", LocalPlayer.PlayerGui)
gui.Name = "R3gui"
gui.ResetOnSpawn = false

-- Splash screen
local splash = Instance.new("Frame", gui)
splash.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
splash.Size = UDim2.new(1, 0, 1, 0)

local splashLogo = Instance.new("TextLabel", splash)
splashLogo.BackgroundTransparency = 1
splashLogo.Size = UDim2.new(0, 160, 0, 60)
splashLogo.Position = UDim2.new(0.5, -80, 0.5, -30)
splashLogo.Text = "R"
splashLogo.Font = Enum.Font.GothamBold
splashLogo.TextSize = 36
splashLogo.TextColor3 = Color3.new(1, 1, 1)
splashLogo.TextXAlignment = Enum.TextXAlignment.Left

local splashRed3 = Instance.new("TextLabel", splash)
splashRed3.BackgroundTransparency = 1
splashRed3.Size = UDim2.new(0, 160, 0, 60)
splashRed3.Position = UDim2.new(0.5, -60, 0.5, -30)
splashRed3.Text = "3"
splashRed3.Font = Enum.Font.GothamBold
splashRed3.TextSize = 36
splashRed3.TextColor3 = Color3.fromRGB(255, 0, 0)
splashRed3.TextXAlignment = Enum.TextXAlignment.Left

task.wait(1.5)
TweenService:Create(splash, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
TweenService:Create(splashLogo, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(splashRed3, TweenInfo.new(1), {TextTransparency = 1}):Play()
task.wait(1.1)
splash:Destroy()

-- Main container
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 480, 0, 280)
main.Position = UDim2.new(0.5, -240, 0.5, -140)
main.BackgroundTransparency = 1
main.Active = true
main.Draggable = true
main.Parent = gui

-- Sidebar
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 150, 1, 0)
sidebar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
sidebar.Parent = main
Instance.new("UICorner", sidebar).CornerRadius = UDim.new(0, 0)

-- X button
local close = Instance.new("TextButton")
close.Text = "X"
close.Font = Enum.Font.GothamBold
close.TextSize = 20
close.TextColor3 = Color3.new(1, 1, 1)
close.BackgroundColor3 = Color3.fromRGB(200, 30, 30)
close.Size = UDim2.new(0, 40, 0, 40)
close.Position = UDim2.new(0, 10, 0, 10)
close.Parent = sidebar
Instance.new("UICorner", close).CornerRadius = UDim.new(0, 6)

-- Title with red "3"
local title = Instance.new("TextLabel")
title.Text = "R"
title.Font = Enum.Font.GothamBlack
title.TextSize = 24
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Size = UDim2.new(0, 20, 0, 30)
title.Position = UDim2.new(0, 10, 0, 60)
title.BackgroundTransparency = 1
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = sidebar

local red3 = Instance.new("TextLabel")
red3.Text = "3gui"
red3.Font = Enum.Font.GothamBlack
red3.TextSize = 24
red3.TextColor3 = Color3.fromRGB(255, 0, 0)
red3.Position = UDim2.new(0, 28, 0, 60)
red3.Size = UDim2.new(0, 100, 0, 30)
red3.BackgroundTransparency = 1
red3.TextXAlignment = Enum.TextXAlignment.Left
red3.Parent = sidebar

-- Greeting
local greeting = Instance.new("TextLabel")
greeting.Text = "Greetings!"
greeting.Font = Enum.Font.GothamSemibold
greeting.TextSize = 14
greeting.TextColor3 = Color3.fromRGB(255, 255, 255)
greeting.Size = UDim2.new(0, 130, 0, 20)
greeting.Position = UDim2.new(0, 10, 0, 100)
greeting.BackgroundTransparency = 1
greeting.TextXAlignment = Enum.TextXAlignment.Left
greeting.Parent = sidebar

-- Username
local username = Instance.new("TextLabel")
username.Text = LocalPlayer.Name
username.Font = Enum.Font.GothamBlack
username.TextSize = 16
username.TextColor3 = Color3.fromRGB(255, 255, 255)
username.Size = UDim2.new(0, 130, 0, 20)
username.Position = UDim2.new(0, 10, 0, 120)
username.BackgroundTransparency = 1
username.TextXAlignment = Enum.TextXAlignment.Left
username.Parent = sidebar

-- Avatar headshot
local avatar = Instance.new("ImageLabel")
avatar.Size = UDim2.new(0, 60, 0, 60)
avatar.Position = UDim2.new(0.5, -30, 1, -70)
avatar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
avatar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..LocalPlayer.UserId.."&width=420&height=420&format=png"
avatar.Parent = sidebar
Instance.new("UICorner", avatar).CornerRadius = UDim.new(1, 0)

-- Grid Panel
local gridPanel = Instance.new("Frame")
gridPanel.Size = UDim2.new(0, 310, 0, 220)
gridPanel.Position = UDim2.new(0, 160, 0, 30)
gridPanel.BackgroundTransparency = 1
gridPanel.Parent = main

local uiGrid = Instance.new("UIGridLayout", gridPanel)
uiGrid.CellSize = UDim2.new(0, 140, 0, 45)
uiGrid.CellPadding = UDim2.new(0, 10, 0, 10)
uiGrid.HorizontalAlignment = Enum.HorizontalAlignment.Center
uiGrid.VerticalAlignment = Enum.VerticalAlignment.Top

-- Noclip system
local Noclip = nil
local Clip = true
local dot

local function noclip()
	Clip = false
	Noclip = RunService.Stepped:Connect(function()
		if not Clip and LocalPlayer.Character then
			for _,v in pairs(LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		end
	end)
end

local function reclip()
	Clip = true
	if Noclip then Noclip:Disconnect() end
	if LocalPlayer.Character then
		for _,v in pairs(LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = true
			end
		end
	end
end

-- Buttons
local buttonActions = {
	["Fly"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
	end,
	["Touch Fling"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/LgZwZ7ZB"))()
	end,
	["Yarhm"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua"))()
	end,
	["Invisible"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Gui"))()
	end,
	["Vortex (NDS)"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/GoofyBlox/GoofyZ/refs/heads/main/Best/Vortex.lua"))()
	end,
	["Solara Hub"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/Solara%20Hub.lua"))()
	end,
	["Noclip"] = function()
		noclip()
		if dot then dot.BackgroundColor3 = Color3.fromRGB(0, 255, 0) end
	end,
	["Reclip"] = function()
		reclip()
		if dot then dot.BackgroundColor3 = Color3.fromRGB(255, 0, 0) end
	end,
	["NDS Hub"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaterHub-Inc/NaturalDisasterSurvival/refs/heads/main/main.lua"))()
	end,
	["Absense"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/vnausea/absence-mini/refs/heads/main/absencemini.lua"))()
	end,
	["Bloxburg"] = function()
		loadstring(game:HttpGet("https://luxhub.cc/script.lua"))()
	end,
	["Eclipse Hub"] = function()
		getgenv().mainKey = "nil"
		local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"
		c(a and b,"Executor not Supported")
		a(b({Url=e.."?key="..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
	end,
}

for label, action in pairs(buttonActions) do
	local button = Instance.new("TextButton")
	button.Text = label
	button.Font = Enum.Font.GothamBold
	button.TextSize = 16
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.BackgroundColor3 = Color3.fromRGB(40, 35, 35)
	button.Parent = gridPanel
	Instance.new("UICorner", button).CornerRadius = UDim.new(0, 8)

	if label == "Noclip" then
		dot = Instance.new("Frame")
		dot.Size = UDim2.new(0, 8, 0, 8)
		dot.Position = UDim2.new(0, 6, 0, 6)
		dot.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		dot.BorderSizePixel = 0
		dot.Parent = button
		Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)
	end

	button.MouseButton1Click:Connect(action)
end

-- Minimized button
local minimized = Instance.new("TextButton", gui)
minimized.Size = UDim2.new(0, 60, 0, 40)
minimized.Position = UDim2.new(0, 10, 1, -60)
minimized.Text = ""
minimized.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
minimized.Visible = false
minimized.Draggable = true
minimized.Active = true
Instance.new("UICorner", minimized).CornerRadius = UDim.new(0, 10)

local miniR = Instance.new("TextLabel", minimized)
miniR.BackgroundTransparency = 1
miniR.Size = UDim2.new(1, 0, 1, 0)
miniR.Text = "r"
miniR.Font = Enum.Font.GothamBold
miniR.TextSize = 20
miniR.TextXAlignment = Enum.TextXAlignment.Left
miniR.Position = UDim2.new(0, 6, 0, 0)
miniR.TextColor3 = Color3.new(1, 1, 1)

local mini3 = Instance.new("TextLabel", minimized)
mini3.BackgroundTransparency = 1
mini3.Size = UDim2.new(1, 0, 1, 0)
mini3.Text = "3"
mini3.Font = Enum.Font.GothamBold
mini3.TextSize = 20
mini3.TextXAlignment = Enum.TextXAlignment.Left
mini3.Position = UDim2.new(0, 20, 0, 0)
mini3.TextColor3 = Color3.fromRGB(255, 0, 0)

-- Toggle GUI
close.MouseButton1Click:Connect(function()
	main.Visible = false
	minimized.Visible = true
end)

minimized.MouseButton1Click:Connect(function()
	main.Visible = true
	minimized.Visible = false
end)
