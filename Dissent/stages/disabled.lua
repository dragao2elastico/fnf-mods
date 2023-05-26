

function onCreatePost()
    addAnimationByPrefix('fakeN0', '0', 'left press', 24, false)
	addAnimationByPrefix('fakeN1', '1', 'down press', 24, false)
	addAnimationByPrefix('fakeN2', '2', 'up press', 24, false)
	addAnimationByPrefix('fakeN3', '3', 'right press', 24, false)
	
	for i = 0, 3 do
		setProperty('fakeN'..i..'.visible', false)
		setObjectCamera('fakeN'..i, 'hud')
		addLuaSprite('fakeN'..i, false)
		scaleObject('fakeN'..i, 0.7, 0.7)
	end

    makeLuaSprite('bg', 'disabledBG/background', -800, -300)
    addLuaSprite('bg', false)
    scaleObject('bg', 2.5, 2.5)

    makeLuaSprite('bgAlt', 'disabledBG/background2', -800, -300)
    scaleObject('bgAlt', 2.5, 2.5)

    makeLuaSprite('place1', 'disabledBG/Purple_place', 850, 330)
    addLuaSprite('place1', false)

    makeLuaSprite('place2', 'disabledBG/Purple_place', -140, 610)
    addLuaSprite('place2', false)

    makeLuaSprite('place1Alt', 'disabledBG/Purple_place', 850, 330)

    makeLuaSprite('place2Alt', 'disabledBG/Purple_place', -140, 610)

    makeLuaSprite('blackA', 'blak', -600, -300);
	makeGraphic('blackA',2560,1400,'000000');
	screenCenter('blackA');
    addLuaSprite('blackA',false);

    makeLuaSprite('white', 'whit', -600, -300);
	makeGraphic('white',2560,1400,'FFFFFF');
	screenCenter('white');
    addLuaSprite('white',false);

    makeAnimatedLuaSprite('staticP', 'disabledBG/static', -5, 0);
	addAnimationByPrefix('staticP', 'estatica', 'static', 24, true);
	scaleObject('staticP', 1.9, 1.9)
	setObjectCamera('staticP','HUD');
	setProperty('staticP.alpha',0.3);
    objectPlayAnimation('staticP', 'static', true);

    setProperty('dad.visible', false)
    setProperty('boyfriend.visible', false)
    setProperty('gf.visible', false)
    setProperty('camHUD.visible', false)
    
    
    runTimer('test', 0.3)
end

function onCreate()
    setProperty('skipCountdown', true)
end

local DadSingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local DadSingDir = 1
function onUpdatePost(elapsed)

    for a = 0, getProperty('notes.length') - 1 do
        noteData = getPropertyFromGroup('notes', a, 'noteData')
		strumTime = getPropertyFromGroup('notes', a, 'strumTime')
		mustPress = getPropertyFromGroup('notes', a, 'mustPress')
		--isSustainNote = getPropertyFromGroup('notes', a, 'isSustainNote')
		if not mustPress then
			if (strumTime - getSongPosition()) / getProperty('songSpeed') < 1 and getPropertyFromGroup('notes', a, 'active') and getRandomBool(250, 300) then
				setPropertyFromGroup('notes', a, 'ignoreNote', true)
				DadSingDir = noteData
				if getProperty('dad.hasMissAnimations') then
					characterPlayAnim('dad', DadSingAnims[DadSingDir+1]..'miss', true)
				else
					characterPlayAnim('dad', DadSingAnims[DadSingDir+1], true)
				end
				setProperty('dad.specialAnim', true)
				fakeNote(noteData)
				setPropertyFromGroup('notes', a, 'active', false)
			end
			if (strumTime - getSongPosition()) < -310 / getProperty('songSpeed') and getPropertyFromGroup('notes', a, 'ignoreNote') then
				setPropertyFromGroup('opponentStrums', noteData, 'visible', true)
				setProperty('fakeN'..noteData..'.visible', false)
			end
		end
	end

    setProperty('iconP2.y', 520);
end


function onUpdate()

    doTweenZoom('hey', 'camGame', 0.70, 0.30, 'linear')
    setProperty('defaultCamZoom', 0.70)

    if mustHitSection then
        doTweenZoom('hey', 'camGame', 0.80, 0.60, 'linear')
        setProperty('defaultCamZoom', 0.80)
    end
end

function onBeatHit()
    if curBeat == 8 then
        cameraFlash('HUD', 'FFFFFFF', 0.5, true)
    end
end

function onStepHit()
    if curStep >= 15 then
       -- doTweenX('wigglyTween', 'gf', 180, 0.3, 'linear')
       doTweenY('wigTween', 'gf', 70, 0.5);
       doTweenX('wigTweenX', 'gf', 630, 0.5);
        setProperty('gf.visible', true)
    end

    if curStep >= 24 then
        doTweenX('ponyTween', 'boyfriend', 1100, 0.3, 'linear')
        setProperty('boyfriend.visible', true)
    end

    if curStep >= 33 then
        cancelTimer('test')
        cancelTimer('test2')

        setProperty('dad.visible', true)
       -- setProperty('gf.visible', false)
        setProperty('camHUD.visible', true)

        removeLuaSprite('blackA')
        removeLuaSprite('white')
    end

    if curStep >= 543 then
        addLuaSprite('bgAlt', false)
        addLuaSprite('place1Alt', false)
        addLuaSprite('place2Alt', false)
    end

    if curStep >= 732 then
        addLuaSprite('staticP', true);
    end

    if curStep >= 800 then

        noteTweenX('haha5', 4, 90, 0.5, 'linear');
        noteTweenX('haha6', 5, 200, 0.5, 'linear');
        noteTweenX('haha7', 6, 320, 0.5, 'linear');
        noteTweenX('haha8', 7, 432, 0.5, 'linear');

        noteTweenX('haha1', 0, 735, 0.5, 'linear');
        noteTweenX('haha2', 1, 845, 0.5, 'linear');
        noteTweenX('haha3', 2, 957, 0.5, 'linear');
        noteTweenX('haha4', 3, 1070, 0.5, 'linear');

        noteTweenAngle('angle', 4, 360, 0.5, 'linear');
        noteTweenAngle('angle2', 5, 360, 0.5, 'linear');
        noteTweenAngle('angle3', 6, 360, 0.5, 'linear');
        noteTweenAngle('angle4', 7, 360, 0.5, 'linear');

        noteTweenAngle('angle5', 0, 360, 0.5, 'linear');
        noteTweenAngle('angle6', 1, 360, 0.5, 'linear');
        noteTweenAngle('angle7', 2, 360, 0.5, 'linear');
        noteTweenAngle('angle8', 3, 360, 0.5, 'linear');

        setProperty('gf.visible', true)
        setProperty('dad.visible', false)

        doTweenY('wigTween', 'gf', 85, 0.5);
        doTweenY('wigTweenX', 'gf', 80, 0.5);
    end

    if curStep >= 809 then
        cancelTween('ponyTween')
    end


end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'test' then
        doTweenAlpha('whiteAlpha', 'white', 0, 0.3)
        runTimer('test2', 0.3)
    end

    if tag == 'test2' then
        doTweenAlpha('whiteAlpha', 'white', 1, 0.3)
        runTimer('test', 0.3)
    end
end

function opponentNoteHit(id, dir, nt, sus)                                                    
	setPropertyFromGroup('opponentStrums', dir, 'visible', true)
end

function fakeNote(note)
	setProperty('fakeN'..note..'.visible', true)
	objectPlayAnimation('fakeN'..note, note, true)
end 