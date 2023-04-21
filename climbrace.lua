getgenv().autoFarm = false
getgenv().autoRebirth = false 
getgenv().antiAFK = false 
getgenv().chatSpammer = false

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("PapaHub")
local b = w:CreateFolder("Auto Farm")
local c = w:CreateFolder("Pets")
local d = w:CreateFolder("Misc")

b:Toggle("AutoFarm",function(bool)
	getgenv().autoFarm = bool
	print("Status: ", bool)
	if bool then 
		autoFarm()
	end
end)

b:Toggle("AutoRebirth",function(bool)
	getgenv().autoRebirth = bool
	print("Status: ", bool)
	if bool then 
		autoRebirth()
	end
end)

local selectedPet;

c:Dropdown("Pets",{"Coming Soon!"},true,function(mob)
	selectedPet = mob;
	print(mob)
end)

c:Button("Get Pet!",function()
	if selectedPet then 
		getPet()
	end
end)

d:Toggle("AntiAFK",function(bool)
	getgenv().antiAFK = bool
	print("Status: ", bool)
	if bool then 
		doAntiAFK()
	end
end)

function autoFarm()
	spawn(function()
		while getgenv().autoFarm == true do 
			local args = {
				[1] = "Game"
			}
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("Game"):FireServer(unpack(args))
			wait()
		end
	end)
end

function autoRebirth()
	spawn(function()
		while getgenv().autoRebirth == true do 
			local args = {
				[1] = "Rebirth"
			}
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
			wait(10)
		end
	end)
end

local numAFK = 0
function doAntiAFK()
	spawn(function()
		while getgenv().antiAFK == true do
			wait(60)
			numAFK = numAFK+1
			print("Anti AFK run: ".. numAFK )
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end)
		end
	end)
end
