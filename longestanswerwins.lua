getgenv().autoFarm = true 
answer = game:GetService("ReplicatedStorage").HintAnswer 

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("PapaHub") -- Creates the window

local b = w:CreateFolder("AutoFarm") -- Creates the folder(U will put here your buttons,etc)

b:Toggle("AutoFarm",function(bool)
	getgenv().autoFarm = bool
	print("Status: " , bool)
	if bool then 
		autoFarm()
	end
end)

function autoFarm()
  spawn(function()
    while getgenv().autoFarm == true do 
      local args = {
        [1] = answer.Value
    }

    game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(unpack(args))
wait()
         end 
 end)
end
     
