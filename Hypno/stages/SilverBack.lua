function onCreate()
	-- background shit
	makeLuaSprite('Lost_silver_back', 'stages/Inso/Lost_silver_back', -600, -300);
	scaleObject('Lost_silver_back', 0.7, 0.7);
	addLuaSprite('Lost_silver_back', false); -- false = add behind characters, true = add over characters
	setScrollFactor('Lost_silver_back', 1.0, 1.0);
	
	makeLuaSprite('Lost_silver_ground', 'stages/Inso/Lost_silver_ground', -450, 800);
	setScrollFactor('Lost_silver_ground', 1.0, 1.0);
	scaleObject('Lost_silver_ground', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('Lost_silver_lake', 'stages/Inso/Lost_silver_lake', -450, 600);
		setScrollFactor('Lost_silver_lake', 1.0, 1.0);
		addLuaSprite('Lost_silver_lake', false); -- false = add behind characters, true = add over characters
		scaleObject('Lost_silver_lake', 1.2, 1.2);

		makeLuaSprite('Lost_silver_tree', 'stages/Inso/Lost_silver_tree', -200, -50);
		setScrollFactor('Lost_silver_tree', 1.0, 1.0);
		addLuaSprite('Lost_silver_tree', true); -- false = add behind characters, true = add over characters
		scaleObject('Lost_silver_tree', 0.8, 0.8);

		makeLuaSprite('Lost_silver_fog', 'stages/Inso/Lost_silver_fog', -100, 500);
		setScrollFactor('Lost_silver_fog', 1.0, 1.0);
		addLuaSprite('Lost_silver_fog', true); -- false = add behind characters, true = add over characters
		scaleObject('Lost_silver_fog', 1.0, 1.0);
		
	end

	addLuaSprite('Lost_silver_back', false);
	addLuaSprite('Lost_silver_ground', false);
	addLuaSprite('Lost_silver_lake', false);
	addLuaSprite('Lost_silver_tree', false);
	addLuaSprite('Lost_silver_fog', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end