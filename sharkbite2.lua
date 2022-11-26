--Made by : https://v3rmillion.net/member.php?action=profile&uid=507120
--Go vouch release thread : https://v3rmillion.net/showthread.php?tid=1040650
getgenv().autoFarm = false
getgenv().autoSafeFarm = false 
getgenv().antiAFK = false 
getgenv().chatSpammer = false 

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("PapaHub") -- Creates the window

local b = w:CreateFolder("AutoFarm") -- Creates the folder(U will put here your buttons,etc)
local c = w:CreateFolder("ESP")
local d = w:CreateFolder("Teleports")
local e = w:CreateFolder("Misc")

b:Toggle("AutoFarm",function(bool)
	getgenv().autoFarm = bool
	print("Status: " , bool)
	if bool then 
		doFarm()
	end
end)

b:Toggle("AutoSafeFarm",function(bool)
	getgenv().autoSafeFarm = bool
	print("Status: " , bool)
	if bool then 
		doSafeFarm()
	end
end)

--c:Toggle("Survivor ESP",function(bool)
--	getgenv().autoSafeFarm = bool
--	print("Status: " , bool)
--	if bool then 
--		doSafeFarm()
--	end
--end)

--c:Toggle("Shark ESP",function(bool)
--	getgenv().autoSafeFarm = bool
--	print("Status: " , bool)
--	if bool then 
--		doSafeFarm()
--	end
--end)

d:Dropdown("Location Teleport",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
	print(mob)
end)

d:Dropdown("Player Teleport",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
	print(mob)
end)

e:Toggle("AntiAFK",function(bool)
	getgenv().antiAFK = bool
	print("Status: " , bool)
	if bool then 
		doaAtiAFK()
	end
end)

e:Toggle("ChatSpammer",function(bool)
	getgenv().chatSpammer = bool
	print("Status: " , bool)
	if bool then 
		chatSpammer()
	end
end)


e:Button("Discord",function()
	setclipboard('discord.gg/882ukwB58k')
end)


function doFarm()
	spawn(function()
		while getgenv().autoFarm == true do 
			game.Players.LocalPlayer.Character.Humanoid.Sit = false 	
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["island5(Small)"].Model.MeshPart.CFrame
			game:GetService("Players").LocalPlayer.PlayerGui.AFK.Enabled = false
			game:GetService("ReplicatedStorage").EventsFolder.GameLoop:ClearAllChildren()
			wait()
		end
	end)
end

function doSafeFarm()
	spawn(function()
		while getgenv().autoSafeFarm == true do 
			print("AutoSafeFarm is on")
			wait()
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
				[1] = "dizzy: NmnRbRwtDD for free vip servers and the best sharkbite autofarm script",
				[2] = "All"
			}
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

			wait(10)
		end
	end)
end


--b:Label("Pretty Useless NGL",{
--	TextSize = 25; -- Self Explaining
--	TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
--	BgColor = Color3.fromRGB(69,69,69); -- Self Explaining

--}) 

--b:Button("Button",function()
--	print("Elym Winning")
--end)

--b:Toggle("Toggle",function(bool)
--	shared.toggle = bool
--	print(shared.toggle)
--end)

--b:Slider("Slider",{
--	min = 10; -- min value of the slider
--	max = 50; -- max value of the slider
--	precise = true; -- max 2 decimals
--},function(value)
--	print(value)
--end)

--b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
--	print(mob)
--end)

--b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
--	print("Yes")
--end)

--b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
--	print(color)
--end)

--b:Box("Box","number",function(value) -- "number" or "string"
--	print(value)
--end)

--b:DestroyGui()

--[[
How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]
