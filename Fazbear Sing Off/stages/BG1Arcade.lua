function onCreate()
	-- background shit
	makeLuaSprite('Bonnie', 'Arcade', -600, -300);
        
	addLuaSprite('Bonnie', false);
	addGlitchEffect('Bonnie', 1, 1)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end