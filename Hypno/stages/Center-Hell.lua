function onCreate()
	-- background shit
	makeLuaSprite('4toplayer', 'stages/pokecenter/4toplayer', -600, -300);
	setScrollFactor('4toplayer', 1.0, 1.0);
	
	makeLuaSprite('8floor', 'stages/pokecenter/8floor', -750, -400);
	setScrollFactor('8floor', 1.0, 1.0);
	addLuaSprite('8floor', false); -- false = add behind characters, true = add over characters
	scaleObject('8floor', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('3window', 'stages/pokecenter/3window', -600, -200);
		setScrollFactor('3window', 1.0, 1.0);
		scaleObject('3window', 1.0, 1.0);

		makeLuaSprite('5table', 'stages/pokecenter/5table', -220, 50);
		setScrollFactor('5table', 1.0, 1.0);
		scaleObject('5table', 0.7, 0.7);

		makeLuaSprite('7backlayer', 'stages/pokecenter/7backlayer', -225, 50);
		setScrollFactor('7backlayer', 1.0, 1.0);
		addLuaSprite('7backlayer', false); -- false = add behind characters, true = add over characters
		scaleObject('7backlayer', 0.7, 0.7);
		
		makeLuaSprite('2painting', 'stages/pokecenter/2painting', -600, -200);
		setScrollFactor('2painting', 1.0, 1.0);
		scaleObject('2painting', 1.0, 1.0);

		makeLuaSprite('1darknessoverlay', 'stages/pokecenter/1darknessoverlay', -600, -300);
		setScrollFactor('1darknessoverlay', 1.0, 1.0);
		addLuaSprite('1darknessoverlay', true); -- false = add behind characters, true = add over characters
		scaleObject('1darknessoverlay', 1.1, 1.1);

		makeLuaSprite('hellmode', 'hellmode', -20, -30);
		setScrollFactor('hellmode', 1.0, 1.0);
		addLuaSprite('hellmode', true); -- false = add behind characters, true = add over characters
		scaleObject('hellmode', 0.2, 0.2);
		setObjectCamera('hellmode','hud');
	end

	addLuaSprite('4toplayer', false);
	addLuaSprite('8floor', false);
	addLuaSprite('3window', false);
	addLuaSprite('5table', false);
	addLuaSprite('7backlayer', false);
	addLuaSprite('2painting', false);
	addLuaSprite('1darknessoverlay', false);
	addLuaSprite('hellmode', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end