

games = { 
	[3101667897] = 'https://raw.githubusercontent.com/ReeAndArceus/Legends-Of-Speed-Gui/main/Gui'; --legends of speed
	[60684962] = 'https://scripts.luawl.com/14245/JailbreakerFree.lua'; -- jailbreak 
	[537413528] = 'https://raw.githubusercontent.com/1201for/littlegui/main/Build-A-Boat'; -- buildaboat
	[6772424226] = 'https://raw.githubusercontent.com/Timsaay2/scriptsnokey/main/2playermillionairetycoon.lua'; -- 2 player millionaire tycoon
	[815405518] = 'https://raw.githubusercontent.com/Timsaay2/scriptsnokey/main/thefloorislava'; -- the floor is lava
	[11605808253] = 'https://raw.githubusercontent.com/Timsaay2/scriptsnokey/main/climbrace.lua'; -- climb race
}	


if games[game.PlaceId] then
	print("Game is supported")
	
else 
	print("Game is not supported")
	
end


loadstring(game:HttpGet(games[game.PlaceId]))()
