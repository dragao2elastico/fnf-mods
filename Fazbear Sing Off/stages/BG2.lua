function onCreate()
	-- background shit
	makeLuaSprite('Fazbear', 'BG2', -600, -300);
        
	addLuaSprite('Fazbear', false);
	addGlitchEffect('Fazbear', 1, 1)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end