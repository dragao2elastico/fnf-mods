function onCreate()
	-- background shit
	makeLuaSprite('white', '', -250, -250)
	makeGraphic('white', screenWidth * 2, screenHeight* 2, 'fffffff')
	setScrollFactor('white', 0, 0)
	
	makeAnimatedLuaSprite('elefante', 'elefante', 100, 100)
	addAnimationByPrefix('elefante', 'beat', 'Elefante', 24, false)
	
	makeLuaSprite('otros', 'Personajesdefondo', -410, 30)
	scaleObject('otros', 0.7, 0.7)

	addLuaSprite('white', false)
	addLuaSprite('elefante', false)
	addLuaSprite('otros', false)
end

function onBeatHit()
	-- triggered 4 times per section
	objectPlayAnimation('elefante', 'beat', true)
end