function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.9)
	makeLuaSprite('floor', 'shitno/floor', 90, 400);
     setLuaSpriteScrollFactor('floor', 0.95, 0.95);
	scaleObject('floor', 0.9, 0.9);
addLuaSprite('floor', false);

zoomshit = (getProperty('camGame.zoom')/0.75);
setCharacterX('boyfriend',bfx*zoomshit)
setCharacterY('boyfriend',bfy*zoomshit)
setProperty('boyfriend.scale.x',zoomshit)
setProperty('boyfriend.scale.y',zoomshit)
end
function onCreatePost()
	setProperty('defaultCamZoom', 1)
    setProperty("gf.visible", false)
	doTweenAlpha('dad', 'dad', 0, 0.1, 'linea')
	doTweenAlpha('floor', 'floor', 0, 0.1, 'linea')
	doTweenAlpha('camGame', 'camGame', 0, 0.1, 'linea')
	doTweenAlpha('camHUD', 'camHUD', 0, 0.1, 'linea')
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
	if curStep == 416 then
		doTweenAlpha('camHUD', 'camHUD', 0, 0.1, 'linea');
		doTweenAlpha('floor1', 'floor', 0.25, 0.1, 'quadInOut');
		doTweenAlpha('dad1', 'dad', 0.25, 0.1, 'quadInOut')

	end	
		if curStep == 420 then
		doTweenAlpha('floor2', 'floor', 0.50, 0.1, 'quadInOut');
		doTweenAlpha('dad2', 'dad', 0.50, 0.1, 'quadInOut')

	end		
	if curStep == 424 then
		doTweenAlpha('floor3', 'floor', 0.75, 0.1, 'quadInOut');
		doTweenAlpha('dad3', 'dad', 0.75, 0.1, 'quadInOut')

	end		
	if curStep == 428 then
		doTweenAlpha('camHUD', 'camHUD', 0.8, 2, 'linea');
		doTweenAlpha('floor4', 'floor', 1, 0.1, 'quadInOut');
		doTweenAlpha('dad4', 'dad', 1, 0.1, 'quadInOut');
		setPropertyFromGroup('opponentStrums',0,'alpha',0);
		setPropertyFromGroup('opponentStrums',1,'alpha',0);
		setPropertyFromGroup('opponentStrums',2,'alpha',0);
		setPropertyFromGroup('opponentStrums',3,'alpha',0)

	end
		if curStep == 426 then
		doTweenX("boyfriend", "boyfriend", 1150, 0.9, "quadInOut");
		setPropertyFromGroup('opponentStrums',0,'alpha',0);
		setPropertyFromGroup('opponentStrums',1,'alpha',0);
		setPropertyFromGroup('opponentStrums',2,'alpha',0);
		setPropertyFromGroup('opponentStrums',3,'alpha',0)
	end
	if curStep == 720 then
		function onBeatHit()
			if curBeat % 1== 0 then
				triggerEvent('Add Camera Zoom', '0.15', '0.10');
			end
		end
		if curStep == 2928 then
			doTweenAlpha('camGame', 'camGame', 0, 1, 'quadInOut')
			doTweenAlpha('camHUD', 'camHUD', 0, 1, 'quadInOut')
			 end
end
end