getgenv().autoFarm = false  
getgenv().antiAFK =  false 
answer = game:GetService("ReplicatedStorage").HintAnswer 

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("PapaHub") -- Creates the window

local b = w:CreateFolder("AutoFarm") -- Creates the folder(U will put here your buttons,etc)
local c = w:CreateFolder("Misc")

b:Toggle("AutoFarm",function(bool)
	getgenv().autoFarm = bool
	print("Status: " , bool)
	if bool then 
		autoFarm()
	end
end)

b:Slider("Cooldown",{
	min = 1; -- min value of the slider
	max = 10; -- max value of the slider
	precise = false; -- max 2 decimals
},function(value)
	cooldown = value 	
	print(value)
end)

c:Toggle("AntiAFK",function(bool)
	getgenv().antiAFK = bool
	print("Status: " , bool)
	if bool then 
		antiAFK()
	end
end)

function autoFarm()
	spawn(function()
		while getgenv().autoFarm == true do 
			local args = {
				[1] = answer.Value
			}
			game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(unpack(args))
			wait(cooldown)
		end 
	end)
end
function antiAFK()
	spawn(function()
		while getgenv().antiAFK == true do 
			wait(60)
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end)
		end
	end)
end



