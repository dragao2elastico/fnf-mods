function onCreate()
	-- background shit
	makeLuaSprite('white', '', -250, -250)
	makeGraphic('white', screenWidth * 2, screenHeight* 2, 'fffffff')
	setScrollFactor('white', 0, 0)
	
	makeAnimatedLuaSprite('elefante', 'elefante_lol', 0, 30)
	addAnimationByPrefix('elefante', 'beat', 'elefante lol idle', 24, false)
	

	addLuaSprite('white', false)
	addLuaSprite('elefante', false)
end

function onBeatHit()
	-- triggered 4 times per section
	objectPlayAnimation('elefante', 'beat', true)
end