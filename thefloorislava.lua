
getgenv().pointFarm = false
getgenv().survivalFarm = false 
getgenv().antiAFK = false 
getgenv().chatSpammer = false

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("PapaHub") -- Creates the window

local b = w:CreateFolder("Auto Farm") -- Creates the folder(U will put here your buttons,etc)
local c = w:CreateFolder("Misc")

b:Label("Do NOT use both Farms at the same time!!!",{
	TextSize = 16; -- Self Explaining
	TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
	BgColor = Color3.fromRGB(38, 38, 38); -- Self Explaining

}) 

b:Toggle("PointFarm",function(bool)
	getgenv().pointFarm = bool
	print("Status: " , bool)
	if bool then 
		pointFarm()
	end
end)

b:Toggle("SurvivalFarm",function(bool)
	getgenv().survivalFarm = bool
	print("Status: " , bool)
	if bool then 
		survivalFarm()
	end
end)



c:Toggle("AntiAFK",function(bool)
	getgenv().antiAFK = bool
	print("Status: " , bool)
	if bool then 
		doaAtiAFK()
	end
end)

c:Toggle("ChatSpammer",function(bool)
	getgenv().chatSpammer = bool
	print("Status: " , bool)
	if bool then 
		chatSpammer()
	end
end)


c:Button("Discord",function()
	setclipboard('discord.gg/882ukwB58k')
end)


function pointFarm()
	spawn(function()
		while getgenv().pointFarm == true do 
			game:GetService("Workspace").ZLobby.Obby.Head.Transparency = 1
			game:GetService("Workspace").ZLobby.Obby.Head.CustomPlayerTag.Enabled = false
			game:GetService("Workspace").ZLobby.Obby.Head.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

			wait(3)
		end
	end)
end

function survivalFarm()
	spawn(function()
		while getgenv().survivalFarm == true do 
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ZLobby.SpawnLocation.CFrame
			wait(5)
		end
	end)
end

function doAntiAFK()
	spawn(function()
		while getgenv().antiAFK == true do 
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait()
			end)
		end
	end)
end

function chatSpammer()
	spawn(function()
		while getgenv().chatSpammer == true do 
			
			local args = {
				[1] = "dizzy: NmnRbRwtDD for free vip servers and the best autofarm script",
				[2] = "All"
			}
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

			wait(10)
		end
	end)
end

