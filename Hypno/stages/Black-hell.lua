function onCreate()
	-- background shit
	makeLuaSprite('black', 'black', -600, -300);
	scaleObject('black', 0.7, 0.7);
	addLuaSprite('black', false); -- false = add behind characters, true = add over characters
	setScrollFactor('black', 1.0, 1.0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('hellmode', 'hellmode', -20, -30);
		setScrollFactor('hellmode', 1.0, 1.0);
		addLuaSprite('hellmode', true); -- false = add behind characters, true = add over characters
		scaleObject('hellmode', 0.2, 0.2);
		setObjectCamera('hellmode','hud');
	end

	addLuaSprite('black', false);
	addLuaSprite('hellmode', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end