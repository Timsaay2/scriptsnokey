-- Gui to Lua
-- Version: 3.2

-- Instances:

local toggle = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

toggle.Name = "toggle"
toggle.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
toggle.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = toggle
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.166493237, 0, 0.125636131, 0)
Frame.Size = UDim2.new(0, 137, 0, 139)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.129744455, 0, 0.139624283, 0)
TextButton.Size = UDim2.new(0, 100, 0, 100)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "TOGGLE"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.00138998032, 0, 0.994174123, 0)
TextLabel.Size = UDim2.new(0, 137, 0, 42)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "discord.gg/882ukwB58k"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

-- Scripts:

local function TAIHZMO_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	toggle = false
	script.Parent.MouseButton1Down:connect(function()
	
		if toggle == true then 
			toggle = false 
		else
			toggle = true
		end
		while toggle == true do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["island5(Small)"].Model.MeshPart.CFrame
			game:GetService("Players").LocalPlayer.PlayerGui.AFK.Enabled = false
			game:GetService("ReplicatedStorage").EventsFolder.GameLoop:ClearAllChildren()
			game.Players.LocalPlayer.Character.Humanoid.Sit = false 	
		end
		if toggle == false then 
			print("Toggle turned off")
		end
	end)
	
end
coroutine.wrap(TAIHZMO_fake_script)()
