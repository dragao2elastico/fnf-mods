function onCreate()
	
	makeLuaSprite('Fundillo', 'fundillo', -540, -490)
	scaleObject('Fundillo', 2.6, 2.6);
	setLuaSpriteScrollFactor('Fundillo', 0.9, 0.9)

	addLuaSprite('Fundillo', false)

	setProperty('Fundillo.visible', true)

		makeAnimatedLuaSprite('hellbell', 'HellBell', 320, -137)
luaSpriteAddAnimationByPrefix('hellbell', 'hellbell', ' twerk_sexi', 13, true);
	setScrollFactor('hellbell', 1, 1);
	scaleObject('hellbell', 1.19, 1.19)
		addLuaSprite("hellbell", false)

	setProperty('Pisoabajo.visible', true)

		makeAnimatedLuaSprite('Lava', 'lava', -350, 110)
luaSpriteAddAnimationByPrefix('Lava', 'Lava', 'lavita', 3, true);
	setScrollFactor('Lava', 1, 1);
	scaleObject('Lava', 1.73, 1.73)

		addLuaSprite("Lava", false)

	makeLuaSprite('Pisoabajo', 'floorbot', 206, 263)
	scaleObject('Pisoabajo', 2.0, 2.0);
	setLuaSpriteScrollFactor('Pisoabajo', 1, 1)

	addLuaSprite('Pisoabajo', false)

		makeAnimatedLuaSprite('Capa', 'capa', -363, 50)
luaSpriteAddAnimationByPrefix('Capa', 'Capa', 'mamaguevodigoglugluglu', 3, true);
	setScrollFactor('Capa', 1, 1);
	scaleObject('Capa', 1.8, 1.8)

		addLuaSprite("Capa", false)

		makeAnimatedLuaSprite('Reflejoleft', 'reflejo', -670, 90)
luaSpriteAddAnimationByPrefix('Reflejoleft', 'Reflejoleft', ' animacion', 3, true);
	setScrollFactor('Reflejoleft', 1, 1);
	scaleObject('Reflejoleft', 5.9, 5.9)

		addLuaSprite("Reflejoleft", false)

		makeAnimatedLuaSprite('Reflejoright', 'reflejo2', 730, 30)
luaSpriteAddAnimationByPrefix('Reflejoright', 'Reflejoright', ' animacion', 3, true);
	setScrollFactor('Reflejoright', 1, 1);
	scaleObject('Reflejoright', 5.9, 5.9)

		addLuaSprite("Reflejoright", false)

	makeLuaSprite('Piso', 'pisoxdd', -500, -200)
	scaleObject('Piso', 1.79, 1.79);
	setLuaSpriteScrollFactor('Piso', 1, 1)
	addLuaSprite('Piso', false)

	setProperty('Piso.visible', true)

end