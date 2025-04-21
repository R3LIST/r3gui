
-- R3gui Full Script with 3rd Column & annabypasser Button

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Destroy previous GUI
if PlayerGui:FindFirstChild("R3gui") then
	PlayerGui.R3gui:Destroy()
end

-- Create GUI first
local gui = Instance.new("ScreenGui", PlayerGui)
gui.Name = "R3gui"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

-- Splash screen
local splash = Instance.new("Frame", gui)


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



local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 640, 0, 300)
main.Position = UDim2.new(0.5, -320, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

local uicorner = Instance.new("UICorner", main)
uicorner.CornerRadius = UDim.new(0, 10)

-- Sidebar
local sidebar = Instance.new("Frame", main)
sidebar.Size = UDim2.new(0, 140, 1, 0)
sidebar.Position = UDim2.new(0, 0, 0, 0)
sidebar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Instance.new("UICorner", sidebar).CornerRadius = UDim.new(0, 10)

-- Title
local title = Instance.new("TextLabel", sidebar)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "<font color='rgb(255,255,255)'>R</font><font color='rgb(255,0,0)'>3gui</font>"
title.RichText = true
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1

-- Close Button
local closeBtn = Instance.new("TextButton", sidebar)
closeBtn.Size = UDim2.new(0, 20, 0, 20)
closeBtn.Position = UDim2.new(1, -25, 0, 5)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255, 0, 0)
closeBtn.BackgroundTransparency = 1
closeBtn.TextSize = 16
closeBtn.Font = Enum.Font.GothamBold

-- Greeting
local greeting = Instance.new("TextLabel", sidebar)
greeting.Size = UDim2.new(1, -10, 0, 20)
greeting.Position = UDim2.new(0, 5, 0, 50)
greeting.Text = "Greetings, " .. LocalPlayer.Name
greeting.Font = Enum.Font.Gotham
greeting.TextSize = 14
greeting.TextColor3 = Color3.new(1, 1, 1)
greeting.BackgroundTransparency = 1
greeting.TextWrapped = true

-- Avatar Frame
local avatarFrame = Instance.new("Frame", sidebar)
avatarFrame.Size = UDim2.new(0, 60, 0, 60)
avatarFrame.Position = UDim2.new(0.5, -30, 1, -70)
avatarFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
avatarFrame.BorderSizePixel = 0
Instance.new("UICorner", avatarFrame).CornerRadius = UDim.new(1, 0)

local thumb = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size60x60)
local avatar = Instance.new("ImageLabel", avatarFrame)
avatar.Size = UDim2.new(1, 0, 1, 0)
avatar.BackgroundTransparency = 1
avatar.Image = thumb

-- Grid Panel
local gridPanel = Instance.new("Frame", main)
gridPanel.Size = UDim2.new(0, 480, 0, 240)
gridPanel.Position = UDim2.new(0, 150, 0, 30)
gridPanel.BackgroundTransparency = 1

local uiGrid = Instance.new("UIGridLayout", gridPanel)
uiGrid.CellSize = UDim2.new(0, 140, 0, 45)
uiGrid.CellPadding = UDim2.new(0, 10, 0, 10)
uiGrid.FillDirectionMaxCells = 3 -- 3 columns
uiGrid.SortOrder = Enum.SortOrder.LayoutOrder

-- Script Buttons
local dot
local buttonList = {
	["Fly"] = "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt",
	["Touch Fling"] = "https://pastebin.com/raw/LgZwZ7ZB",
	["Yarhm"] = "https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua",
	["Invisible"] = "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Gui",
	["Vortex (NDS)"] = "https://raw.githubusercontent.com/GoofyBlox/GoofyZ/refs/heads/main/Best/Vortex.lua",
	["Solara Hub"] = "https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/Solara%20Hub.lua",
	["Noclip"] = "noclip",
	["Reclip"] = "reclip",
	["NDS Hub"] = "https://raw.githubusercontent.com/KaterHub-Inc/NaturalDisasterSurvival/refs/heads/main/main.lua",
	["Absense"] = "https://raw.githubusercontent.com/vnausea/absence-mini/refs/heads/main/absencemini.lua",
	["Bloxburg"] = "https://luxhub.cc/script.lua",
	["Eclipse Hub"] = "eclipse",
	["annabypasser"] = "https://raw.githubusercontent.com/AnnaRoblox/AnnaBypasser/refs/heads/main/AnnaBypasser.lua"
}

local Noclip = nil
local Clip = true

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

for name, link in pairs(buttonList) do
	local button = Instance.new("TextButton", gridPanel)
	button.Text = name
	button.Font = Enum.Font.GothamBold
	button.TextSize = 16
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.BackgroundColor3 = Color3.fromRGB(40, 35, 35)
	button.AutoButtonColor = true
	Instance.new("UICorner", button).CornerRadius = UDim.new(0, 8)

	if name == "Noclip" then
		dot = Instance.new("Frame", button)
		dot.Size = UDim2.new(0, 8, 0, 8)
		dot.Position = UDim2.new(0, 6, 0, 6)
		dot.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		dot.BorderSizePixel = 0
		Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)
	end

	button.MouseButton1Click:Connect(function()
		if link == "noclip" then
			noclip()
			if dot then dot.BackgroundColor3 = Color3.fromRGB(0, 255, 0) end
		elseif link == "reclip" then
			reclip()
			if dot then dot.BackgroundColor3 = Color3.fromRGB(255, 0, 0) end
		elseif link == "eclipse" then
			getgenv().mainKey = "nil"
			local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"
			c(a and b,"Executor not Supported")
			a(b({Url=e.."?key="..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
		else
			loadstring(game:HttpGet(link, true))()
		end
	end)
end

-- Minimized Button
local mini = Instance.new("TextButton", gui)
mini.Size = UDim2.new(0, 60, 0, 30)
mini.Position = UDim2.new(0, 20, 0, 20)
mini.BackgroundColor3 = Color3.new(0, 0, 0)
mini.Text = "<font color='rgb(255,255,255)'>R</font><font color='rgb(255,0,0)'>3</font>"
mini.RichText = true
mini.TextColor3 = Color3.new(1, 1, 1)
mini.TextSize = 16
mini.Font = Enum.Font.GothamBold
mini.Visible = false
mini.Draggable = true
Instance.new("UICorner", mini).CornerRadius = UDim.new(0, 6)

closeBtn.MouseButton1Click:Connect(function()
	TweenService:Create(main, TweenInfo.new(0.4), {BackgroundTransparency = 1}):Play()
	for _,v in pairs(main:GetDescendants()) do
		if v:IsA("TextLabel") or v:IsA("TextButton") then
			TweenService:Create(v, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
		elseif v:IsA("Frame") and v.BackgroundTransparency ~= 1 then
			TweenService:Create(v, TweenInfo.new(0.4), {BackgroundTransparency = 1}):Play()
		end
	end
	wait(0.4)
	main.Visible = false
	mini.Visible = true
end)

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



minimized.MouseButton1Click:Connect(function()
	main.Visible = true
	for _,v in pairs(main:GetDescendants()) do
		if v:IsA("TextLabel") or v:IsA("TextButton") then
			v.TextTransparency = 0
		elseif v:IsA("Frame") then
			v.BackgroundTransparency = 0
		end
	end
	minimized.Visible = false
end)
