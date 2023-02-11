local Main = game:GetService("CoreGui").Rayfield:WaitForChild("Main") 
while Main.visible == true and Main.Topbar.Title.Text ~= 'PapaHub'
    
wait()
game:GetService("CoreGui").Rayfield.Main.Topbar.Title.Text = 'PapaHub'
Main.TabList.Credits.Visible == False
print('Loop')
end 
