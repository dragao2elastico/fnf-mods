function onCreate()
	Scale=3.5

	makeLuaSprite('Back', 'brimstoneBack', 40, 0);
setProperty('Back.antialiasing',false)
scaleObject('Back',Scale,Scale);
	
	makeLuaSprite('Floor', 'floor', 40, 0);
	setProperty('Floor.antialiasing',false)
	scaleObject('Floor',Scale,Scale);

	makeLuaSprite('Graves', 'graves', 40, 0);
	setProperty('Graves.antialiasing',false)
	scaleObject('Graves',Scale,Scale);

	makeLuaSprite('hellmode', 'hellmode', 1130, -30);
	setScrollFactor('hellmode', 1.0, 1.0);
	addLuaSprite('hellmode', true); -- false = add behind characters, true = add over characters
	scaleObject('hellmode', 0.2, 0.2);
	setObjectCamera('hellmode','hud');


	addLuaSprite('Back', false);
	addLuaSprite('Floor', false);
	addLuaSprite('Graves', false);
	addLuaSprite('hellmode', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end