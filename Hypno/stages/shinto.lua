function onCreate()
	makeLuaSprite('BG_shitno', 'shitty-cave/BG_shitno', -20, 0);
     setLuaSpriteScrollFactor('BG_shitno', 0.95, 0.95);
	scaleObject('BG_shitno', 6, 6);
	setProperty('BG_shitno.antialiasing', false);
addLuaSprite('BG_shitno', false);

zoomshit = (getProperty('camGame.zoom')/0.75);
setCharacterX('boyfriend',bfx*zoomshit)
setCharacterY('boyfriend',bfy*zoomshit)
setProperty('boyfriend.scale.x',zoomshit)
setProperty('boyfriend.scale.y',zoomshit)
end
function onCreatePost()
    setProperty("boyfriend.visible", false)
	setProperty("gf.visible", false)
	doTweenAlpha('currentTime', 'other', 0, 0.1, 'linea')
	makeLuaText("message", "Mod Porteado By PEREZ SEN", 1200, 30, 50)
	setTextAlignment("message", "Right")
	addLuaText("message")
	setTextFont('message', 'font.ttf');       
	makeLuaText("engineText", "- Psych Engine  -", 1200, 30, -1300)
	setTextAlignment("engineText", "Right")
	addLuaText("engineText")
	setTextFont('engineText', 'font.ttf');       
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
		setProperty('message.y', 630)
		setProperty('engineText.y', 610)
	end
end
function onStepHit()
	if curStep == 2078 then
		makeAnimatedLuaSprite('shitno_pokeball','shitty-cave/shitno_pokeball',1000,780)
		addAnimationByIndices('shitno_pokeball', 'idle', 'shitno_pokeballend0','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24',24)
		objectPlayAnimation('shitno_pokeball', 'idle', true);
		scaleObject('shitno_pokeball',4,4)
		setProperty('shitno_pokeball.antialiasing', false);
		addLuaSprite('shitno_pokeball',true)

	end
end