local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local spiningrat = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local rathack = Instance.new("TextLabel")
local rodent = Instance.new("TextLabel")
local loaded = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Frame.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.436862499, 0, 0.250473022, 0)
Frame.Size = UDim2.new(0, 300, 0, 300)

spiningrat.Name = "spining rat"
spiningrat.Parent = Frame
spiningrat.BackgroundColor3 = Color3.new(1, 1, 1)
spiningrat.BackgroundTransparency = 1
spiningrat.BorderColor3 = Color3.new(0, 0, 0)
spiningrat.BorderSizePixel = 0
spiningrat.Position = UDim2.new(0.330393463, 0, 0.331284285, 0)
spiningrat.Size = UDim2.new(0, 100, 0, 100)
spiningrat.Font = Enum.Font.Gotham
spiningrat.Text = "🐀"
spiningrat.TextColor3 = Color3.new(1, 1, 1)
spiningrat.TextScaled = true
spiningrat.TextSize = 18
spiningrat.TextWrapped = true

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.623529, 0.45098, 1)
Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, -0.000259704597, 0)
Frame_2.Size = UDim2.new(0, 300, 0, 2)

rathack.Name = "rathack"
rathack.Parent = Frame
rathack.BackgroundColor3 = Color3.new(1, 1, 1)
rathack.BackgroundTransparency = 1
rathack.BorderColor3 = Color3.new(0, 0, 0)
rathack.BorderSizePixel = 0
rathack.Position = UDim2.new(0.00497497572, 0, 0.00923278835, 0)
rathack.Size = UDim2.new(0, 199, 0, 14)
rathack.Font = Enum.Font.Code
rathack.Text = " rathack"
rathack.TextColor3 = Color3.new(0.309804, 0.309804, 0.309804)
rathack.TextSize = 9
rathack.TextWrapped = true
rathack.TextXAlignment = Enum.TextXAlignment.Left

rodent.Name = "rodent"
rodent.Parent = Frame
rodent.BackgroundColor3 = Color3.new(1, 1, 1)
rodent.BackgroundTransparency = 1
rodent.BorderColor3 = Color3.new(0, 0, 0)
rodent.BorderSizePixel = 0
rodent.Position = UDim2.new(0.334974974, 0, 0.00923278835, 0)
rodent.Size = UDim2.new(0, 199, 0, 14)
rodent.Font = Enum.Font.Code
rodent.Text = "made by rats for rats "
rodent.TextColor3 = Color3.new(0.309804, 0.309804, 0.309804)
rodent.TextSize = 9
rodent.TextWrapped = true
rodent.TextXAlignment = Enum.TextXAlignment.Right

loaded.Name = "loaded"
loaded.Parent = Frame
loaded.BackgroundColor3 = Color3.new(1, 1, 1)
loaded.BackgroundTransparency = 1
loaded.BorderColor3 = Color3.new(0, 0, 0)
loaded.BorderSizePixel = 0
loaded.Position = UDim2.new(0.166666672, 0, 0.416666657, 0)
loaded.Size = UDim2.new(0, 200, 0, 50)
loaded.Visible = false
loaded.Font = Enum.Font.Code
loaded.Text = "fard"
loaded.TextColor3 = Color3.new(0.498039, 0.498039, 0.498039)
loaded.TextSize = 14

-- Scripts:

local function PJXCQUV_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local TweenService = game:GetService("TweenService")
	local object = script.Parent  -- The GUI element you want to tween
	
	-- Set the AnchorPoint to (0.5, 0.5) for proper centering
	object.AnchorPoint = Vector2.new(0.5, 0.5)
	
	-- Set the starting position (off the bottom of the screen)
	object.Position = UDim2.new(0.5, 0, 1, 0)  -- Adjust this based on your GUI element's starting position
	
	-- Define the target position (center of the screen)
	local targetPosition = UDim2.new(0.5, 0, 0.5, 0)  -- Centered position
	
	-- Create a TweenInfo object
	local tweenInfo = TweenInfo.new(
		1,  -- Time in seconds for the tween
		Enum.EasingStyle.Sine,  -- Smooth easing style
		Enum.EasingDirection.Out,  -- Smooth easing direction
		0,  -- Don't repeat
		false,  -- No reverse
		0  -- No delay
	)
	
	-- Create the tween
	local tween = TweenService:Create(object, tweenInfo, {Position = targetPosition})
	
	-- Play the tween
	tween:Play()
	
end
coroutine.wrap(PJXCQUV_fake_script)()
local function EMGU_fake_script() -- spiningrat.LocalScript 
	local script = Instance.new('LocalScript', spiningrat)

	local textLabel = script.Parent
	
	local rotationSpeed = 300
	
	
	coroutine.wrap(function()
		while true do
			textLabel.Rotation = textLabel.Rotation + rotationSpeed * game:GetService("RunService").Heartbeat:Wait()
		end
	end)()
	
	
	wait(3)
	
	local fadeDuration = 1 
	
	
	for i = 0, 1, 1/(fadeDuration * 60) do
		textLabel.TextTransparency = i
		textLabel.TextStrokeTransparency = i 
		wait(1/60) 
	end
	
	textLabel.Visible = false 
	script.Parent.Parent.loaded.Visible = true
	
	local gameList = {
		{Name = "Project Delta", ID = 7336302630, LoadString = "https://raw.githubusercontent.com/TheCollecting/RatHack-pd/refs/heads/main/script.lua"},
		{Name = "Arsenal", ID = 286090429, LoadString = "https://raw.githubusercontent.com/TheCollecting/Rathack-Arsenal/refs/heads/main/ArsenalV2.lua"},
		{Name = "Trident Survial", ID = 13253735473, LoadString = "https://raw.githubusercontent.com/TheCollecting/RatHackTrident/refs/heads/main/RatHack.lua"},
	}
	
	local isSupportedGame = false
	
	for i = 1, #gameList do
		if gameList[i].ID == game.PlaceId then
			script.Parent.Parent.loaded.Text = "Loading " .. gameList[i].Name
			wait(1)
			isSupportedGame = true
			script.Parent.Parent.Parent.Parent.ScreenGui:Destroy()
			loadstring(game:HttpGet(gameList[i].LoadString))()
			break
		end
	end
	
	if not isSupportedGame then
		game.Players.LocalPlayer:Kick("You are not in a supported game!")
	end
	
	
	
end
coroutine.wrap(EMGU_fake_script)()
local function VIGRH_fake_script() -- rodent.LocalScript 
	local script = Instance.new('LocalScript', rodent)

	script.Parent.Text = game.Players.LocalPlayer.Name
end
coroutine.wrap(VIGRH_fake_script)()
