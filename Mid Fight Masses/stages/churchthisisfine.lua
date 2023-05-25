
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('floor', 'floor', -600, -300);
	setScrollFactor('floor', 0.9, 0.9);

	makeLuaSprite('bg', 'bg', -600, -300);
	setScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('pillars', 'pillars', -600, -300);
	setScrollFactor('pillars', 0.9, 0.9);
	
	makeLuaSprite('pillarbroke', 'pillarbroke', -600, -300);
	setScrollFactor('pillarbroke', 0.9, 0.9);
	
	makeLuaSprite('bothpillars', '271', -600, -300);
	setScrollFactor('bothpillars', 0.9, 0.9);

	addLuaSprite('floor', false);
	addLuaSprite('bg', false);
	addLuaSprite('pillars', false);
	addLuaSprite('pillarbroke', false);
	addLuaSprite('bothpillars', false);

	setObjectOrder(floor, 0)
	setObjectOrder(bg, 1)
	setObjectOrder(pillars, 2)
	setObjectOrder(pillarbroke, 3)
	setObjectOrder(bothpillars, 4)


	

end