function onCreate()
	-- background shit
	makeLuaSprite('cave', 'stages/cave/cave', -600, -300);
	scaleObject('cave', 1.0, 1.0);
	setScrollFactor('cave', 1.0, 1.0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('cave', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end