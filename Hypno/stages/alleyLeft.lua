function onCreate()
	-- background shit
	makeLuaSprite('BACKGROUND', 'stages/alley/BACKGROUND', -600, -300);
	scaleObject('BACKGROUND', 0.7, 0.7);
	addLuaSprite('BACKGROUND', false); -- false = add behind characters, true = add over characters
	setScrollFactor('BACKGROUND', 1.0, 1.0);
	
	makeLuaSprite('MIDGROUND BLOOD', 'stages/alley/MIDGROUND BLOOD', -550, -400);
	setScrollFactor('MIDGROUND BLOOD', 1.0, 1.0);
	scaleObject('MIDGROUND BLOOD', 0.8, 0.8);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('FOREGROUND TREE', 'stages/alley/FOREGROUND TREE', -600, -200);
		setScrollFactor('FOREGROUND TREE', 1.0, 1.0);
		addLuaSprite('FOREGROUND TREE', true); -- false = add behind characters, true = add over characters
		scaleObject('FOREGROUND TREE', 0.7, 0.7);

		makeLuaSprite('Behind the Fence', 'stages/alley/Behind the Fence', -700, -300);
		setScrollFactor('Behind the Fence', 1.0, 1.0);
		addLuaSprite('Behind the Fence', false); -- false = add behind characters, true = add over characters
		scaleObject('Behind the Fence', 0.8, 0.8);

		makeLuaSprite('Behind the clouds and fence', 'stages/alley/Behind the clouds and fence', -225, 50);
		setScrollFactor('Behind the clouds and fence', 1.0, 1.0);
		addLuaSprite('Behind the clouds and fence', false); -- false = add behind characters, true = add over characters
		scaleObject('Behind the clouds and fence', 0.7, 0.7);
		
	end

	addLuaSprite('BACKGROUND', false);
	addLuaSprite('MIDGROUND BLOOD', false);
	addLuaSprite('FOREGROUND TREE', false);
	addLuaSprite('Behind the Fence', false);
	addLuaSprite('Behind the clouds and fence', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end