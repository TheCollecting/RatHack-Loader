local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local loadlabel = Instance.new("TextLabel")
local spiningrat = Instance.new("TextLabel")
local rathack = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Frame.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Frame.Position = UDim2.new(0.436862499, 0, 0.374851137, 0)
Frame.Size = UDim2.new(0, 200, 0, 200)

loadlabel.Name = "loadlabel"
loadlabel.Parent = Frame
loadlabel.BackgroundColor3 = Color3.new(1, 1, 1)
loadlabel.BackgroundTransparency = 1
loadlabel.BorderColor3 = Color3.new(0, 0, 0)
loadlabel.BorderSizePixel = 0
loadlabel.Position = UDim2.new(0.123434752, 0, 0.434615016, 0)
loadlabel.Size = UDim2.new(0, 150, 0, 25)
loadlabel.Font = Enum.Font.Gotham
loadlabel.Text = "Loading..."
loadlabel.TextColor3 = Color3.new(1, 1, 1)
loadlabel.TextSize = 20
loadlabel.TextWrapped = true

spiningrat.Name = "spining rat"
spiningrat.Parent = loadlabel
spiningrat.BackgroundColor3 = Color3.new(1, 1, 1)
spiningrat.BackgroundTransparency = 1
spiningrat.BorderColor3 = Color3.new(0, 0, 0)
spiningrat.BorderSizePixel = 0
spiningrat.Position = UDim2.new(0.796736658, 0, -0.00823364221, 0)
spiningrat.Size = UDim2.new(0, 30, 0, 25)
spiningrat.Font = Enum.Font.Gotham
spiningrat.Text = "🐀"
spiningrat.TextColor3 = Color3.new(1, 1, 1)
spiningrat.TextSize = 18
spiningrat.TextWrapped = true

rathack.Name = "rathack"
rathack.Parent = Frame
rathack.BackgroundColor3 = Color3.new(1, 1, 1)
rathack.BackgroundTransparency = 1
rathack.BorderColor3 = Color3.new(0, 0, 0)
rathack.BorderSizePixel = 0
rathack.Position = UDim2.new(0.00497497572, 0, 0.00423263572, 0)
rathack.Size = UDim2.new(0, 199, 0, 20)
rathack.Font = Enum.Font.Gotham
rathack.Text = "Rathack Loader"
rathack.TextColor3 = Color3.new(1, 1, 1)
rathack.TextSize = 20
rathack.TextWrapped = true

-- Scripts:

local function VYLYD_fake_script() -- loadlabel.LocalScript 
	local script = Instance.new('LocalScript', loadlabel)

	local colorDone = Color3.fromHex("11ff7c") --- fake loading lollll
	wait(3)
	script.Parent.TextColor3 = colorDone
	script.Parent.Text = ("Loaded!")
	wait(1)
	script.Parent.Visible = false
	script.Parent["spining rat"].Visible = false
	script.Parent.Parent.Parent.Frame:Destroy()
	
	local gameList = {
		{ID = 7336302630, LoadString = "https://raw.githubusercontent.com/TheCollecting/RatHack-pd/refs/heads/main/script.lua"},
		{ID = 286090429, LoadString = "https://raw.githubusercontent.com/TheCollecting/Rathack-Arsenal/refs/heads/main/ArsenalV2.lua"},
		{ID = 13253735473, LoadString = "https://raw.githubusercontent.com/TheCollecting/RatHackTrident/refs/heads/main/RatHack.lua"},
	}
	
	for i = 1, #gameList do
		if (gameList[i].ID == game.PlaceId) then
			loadstring(game:HttpGet(gameList[i].LoadString))()
			print(gameList[i].ID)
			print("Loaded RatHack")
		end
	end
end
coroutine.wrap(VYLYD_fake_script)()
local function IMGM_fake_script() -- spiningrat.LocalScript 
	local script = Instance.new('LocalScript', spiningrat)

	local textLabel = script.Parent
	
	local rotationSpeed = 200
	
	while true do
		textLabel.Rotation = textLabel.Rotation + rotationSpeed * game:GetService("RunService").Heartbeat:Wait()
	end
end
coroutine.wrap(IMGM_fake_script)()
local function WFBBOU_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local TweenService = game:GetService("TweenService")
	local object = script.Parent
	
	object.AnchorPoint = Vector2.new(0.5, 0.5)
	
	object.Position = UDim2.new(0.5, 0, 1, 0)
	
	local targetPosition = UDim2.new(0.5, 0, 0.5, 0)
	
	local tweenInfo = TweenInfo.new(
		1,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)
	
	local tween = TweenService:Create(object, tweenInfo, {Position = targetPosition})
	
	tween:Play()
	
end
coroutine.wrap(WFBBOU_fake_script)()
