-- R3gui Full Script (Fixed Version with 3 Columns)
if game.CoreGui:FindFirstChild("R3gui") then game.CoreGui.R3gui:Destroy() end

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size100x100
local content, _ = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

local R3 = Instance.new("ScreenGui", game.CoreGui)
R3.Name = "R3gui"
R3.ResetOnSpawn = false

-- Splash screen
local splash = Instance.new("TextLabel", R3)
splash.Size = UDim2.new(1, 0, 1, 0)
splash.BackgroundColor3 = Color3.new(0, 0, 0)
splash.Text = "R"
splash.Font = Enum.Font.GothamBlack
splash.TextSize = 100
splash.TextColor3 = Color3.new(1, 1, 1)
splash.RichText = true
splash.TextXAlignment = Enum.TextXAlignment.Center
splash.TextYAlignment = Enum.TextYAlignment.Center
splash.Text = "<font color='rgb(255,255,255)'>R</font><font color='rgb(255,0,0)'>3</font>"

wait(5)
splash:Destroy()

-- Main Frame
local frame = Instance.new("Frame", R3)
frame.Name = "Main"
frame.Size = UDim2.new(0, 600, 0, 400)
frame.Position = UDim2.new(0.5, -300, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

-- Sidebar
local sidebar = Instance.new("Frame", frame)
sidebar.Size = UDim2.new(0, 180, 1, 0)
sidebar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sidebar.BorderSizePixel = 0

-- R3gui Label
local title = Instance.new("TextLabel", sidebar)
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "<font color='rgb(255,255,255)'>R</font><font color='rgb(255,0,0)'>3gui</font>"
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.RichText = true
title.TextColor3 = Color3.new(1, 1, 1)

-- Close button
local close = Instance.new("TextButton", sidebar)
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -35, 0, 5)
close.Text = "X"
close.Font = Enum.Font.Gotham
close.TextColor3 = Color3.new(1, 0, 0)
close.TextSize = 16
close.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
close.BorderSizePixel = 0

-- Greeting
local greet = Instance.new("TextLabel", sidebar)
greet.Size = UDim2.new(1, 0, 0, 30)
greet.Position = UDim2.new(0, 0, 0, 60)
greet.BackgroundTransparency = 1
greet.Text = "Greetings, " .. player.Name
greet.TextColor3 = Color3.new(1, 1, 1)
greet.Font = Enum.Font.Gotham
greet.TextSize = 14

-- Divider
local divider = Instance.new("Frame", sidebar)
divider.Size = UDim2.new(1, 0, 0, 2)
divider.Position = UDim2.new(0, 0, 1, -100)
divider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

-- Avatar Container
local avatarContainer = Instance.new("Frame", sidebar)
avatarContainer.Size = UDim2.new(1, 0, 0, 100)
avatarContainer.Position = UDim2.new(0, 0, 1, -100)
avatarContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
avatarContainer.BorderSizePixel = 0

-- Avatar Image
local avatar = Instance.new("ImageLabel", avatarContainer)
avatar.Size = UDim2.new(0, 80, 0, 80)
avatar.Position = UDim2.new(0.5, -40, 0.5, -40)
avatar.Image = content
avatar.BackgroundTransparency = 1

-- Buttons Container
local buttonBG = Instance.new("Frame", frame)
buttonBG.Size = UDim2.new(1, -180, 1, 0)
buttonBG.Position = UDim2.new(0, 180, 0, 0)
buttonBG.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
buttonBG.BorderSizePixel = 0

-- Button function
local function createButton(text, func)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(1, -20, 0, 40)
	btn.Text = text
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 14
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	btn.BorderSizePixel = 0
	btn.MouseButton1Click:Connect(func)
	return btn
end

-- Buttons Grid
local layout = Instance.new("UIGridLayout", buttonBG)
layout.CellSize = UDim2.new(0, 120, 0, 40)
layout.CellPadding = UDim2.new(0, 10, 0, 10)
layout.FillDirectionMaxCells = 3
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.VerticalAlignment = Enum.VerticalAlignment.Top

-- Add Buttons
local buttons = {
	{"Noclip", function()
		local char = player.Character
		if char then
			for _, p in pairs(char:GetDescendants()) do
				if p:IsA("BasePart") then
					p.CanCollide = false
				end
			end
		end
	end},
	{"Reclip", function()
		local char = player.Character
		if char then
			for _, p in pairs(char:GetDescendants()) do
				if p:IsA("BasePart") then
					p.CanCollide = true
				end
			end
		end
	end},
	{"Invisible", function()
		loadstring(game:HttpGet("https://pastebin.com/raw/BJm7XjcV"))()
	end},
	{"NDS Hub", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaterHub-Inc/NDSHub/main/Protected.lua"))()
	end},
	{"Absense", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/Nexus/main/NexusLoader.lua"))()
	end},
	{"Bloxburg", function()
		loadstring(game:HttpGet("https://luxhub.cc/script.lua"))()
	end},
	{"Eclipse Hub", function()
		loadstring(game:HttpGet("https://eclipsehub.xyz/scripts/loader.lua"))()
	end},
	{"annabypasser", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RunDTM/RobloxScripts/main/Bypasser.lua"))()
	end}
}

for _, info in ipairs(buttons) do
	local b = createButton(info[1], info[2])
	b.Parent = buttonBG
end

-- Minimized Button
local minimized = Instance.new("TextButton", R3)
minimized.Size = UDim2.new(0, 60, 0, 30)
minimized.Position = UDim2.new(0, 20, 0, 20)
minimized.Text = "<font color='rgb(255,255,255)'>R</font><font color='rgb(255,0,0)'>3</font>"
minimized.Font = Enum.Font.GothamBlack
minimized.TextSize = 18
minimized.RichText = true
minimized.TextColor3 = Color3.new(1, 1, 1)
minimized.BackgroundColor3 = Color3.new(0, 0, 0)
minimized.Visible = false
minimized.Active = true
minimized.Draggable = true

-- Minimize logic
close.MouseButton1Click:Connect(function()
	frame.Visible = false
	minimized.Visible = true
end)

minimized.MouseButton1Click:Connect(function()
	frame.Visible = true
	minimized.Visible = false
end)
