function onCreatePost()
    makeLuaSprite('bg', 'mike room/back', -50, 320);
    scaleObject('bg', 1.1, 1.1)
    setLuaSpriteScrollFactor('bg', 0.7, 0.7);

    setProperty('gf.visible', false);
    setProperty('boyfriend.visible', false);
    setProperty('camHUD.visible', false);

    doTweenZoom('hey', 'camGame', 0.50, 0.40, 'linear')
    setProperty('defaultCamZoom', 0.50) 

    makeLuaSprite('bedR', 'mike room/bed', 200, 700);
    makeLuaSprite('photo', 'mike room/portrait', 200, 700);
    makeLuaSprite('help', 'mike room/pillow', 200, 700);
    scaleObject(0.5, 0.5)

    setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)

    makeLuaSprite('idk', 'mike room/redoverlay', 0, 0)
    setObjectCamera('idk', 'camHUD')

    makeLuaSprite('blackScreen', 'blak', -500, 1200);
	makeGraphic('blackScreen',5100,4500,'000000');
    setObjectCamera('blackScreen', 'game');
	screenCenter('blackScreen');

    makeLuaSprite('blackScreenALT', 'blakALT', -500, 1200);
	makeGraphic('blackScreenALT',5100,4500,'000000');
	screenCenter('blackScreenALT');

    makeLuaText('textWhite', '', 650, 250, 500);
	setTextString('textWhite', 'Good');
	setTextColor('textWhite', 'FFFFFF');
	setTextSize('textWhite', '25');
    setTextFont('textWhite', 'PokemonGB.TTF')

    makeLuaText('textRed', '', 650, 250, 500);
	setTextString('textRed', 'Good');
	setTextColor('textRed', 'FF0000');
	setTextSize('textRed', '25');
    setTextFont('textRed', 'PokemonGB.TTF')

    makeLuaText('text2', '', 650, 350, 490);
	setTextString('text2', 'bye');
	setTextColor('text2', 'FF0000');
	setTextSize('text2', '25');
    setTextFont('text2', 'PokemonGB.TTF')

    makeLuaText('text2White', '', 650, 350, 500);
	setTextString('text2White', 'bye');
	setTextColor('text2White', 'FFFFFF');
	setTextSize('text2White', '25');
    setTextFont('text2White', 'PokemonGB.TTF')

    doTweenZoom('hey', 'camGame', 1.70, 0.30, 'linear');
    setProperty('defaultCamZoom', 1.70);
end
function onCreate()
    setProperty('skipCountdown', true)
end

function onBeatHit()
    if curBeat > 228 and curBeat < 260 then
        setProperty('camHUD.zoom' , 1.20)
        --triggerEvent('Add Camera Zoom', '0.25', '0.001')
    end
end

function onStepHit()

    if curStep >= 128 then
        addLuaSprite('bg', false)
        addLuaSprite('bedR', false)
        setObjectOrder('bedR', getObjectOrder('dadGroup') + 1);
        addLuaSprite('photo', false)
        addLuaSprite('help', false)
        setObjectOrder('help', getObjectOrder('bedR') + 1);
        setProperty('boyfriend.visible', true)
        setProperty('camHUD.visible', true)
        doTweenZoom('hey', 'camGame', 1.00, 0.40, 'linear')
        setProperty('defaultCamZoom', 1.00)

        if not mustHitSection then
            doTweenZoom('hey', 'camGame', 1.20, 0.70, 'linear')
            setProperty('defaultCamZoom', 1.20)
        elseif mustHitSection then
            doTweenZoom('hey', 'camGame', 1.10, 0.70, 'linear')
            setProperty('defaultCamZoom', 1.10)
        end
    end

    if curStep >= 399 then
        doTweenY('shiTween', 'boyfriend', -2900, 0.40, 'linear');
        doTweenX('shiTweenX', 'boyfriend', 3250, 0.40, 'linear');
        doTweenY('sTween', 'dad', 2000, 0.20, 'linear');
        setProperty('health', getProperty('health')-0.017, 9000000);
    end

    if curStep >= 401 then
        removeLuaSprite('bg', false)
        removeLuaSprite('bedR', false)
        removeLuaSprite('help', false)
        removeLuaSprite('photo', false)
        doTweenY('ohNo', 'boyfriend', 700, 1.0, 'linear');
        doTweenY('ohYea', 'dad', 1000, 1.0, 'linear');
        cancelTween('shiTween')
        cancelTween('shiTweenX')
        cancelTween('sTween')
        doTweenZoom('hey', 'camGame', 0.85, 0.40, 'linear')
        setProperty('defaultCamZoom', 0.85)

        if not mustHitSection then
            doTweenZoom('hey', 'camGame', 0.85, 0.40, 'linear')
            setProperty('defaultCamZoom', 0.85)
        elseif mustHitSection then
            doTweenZoom('hey', 'camGame', 0.85, 0.40, 'linear')
            setProperty('defaultCamZoom', 0.85)
        end
    end

    if curStep >= 903 then
        addLuaSprite('blackScreenALT', true)
    end

    if curStep >= 906 then
        addLuaText('textRed')
        addLuaText('text2White')
    end

    if curStep >= 908 then
        removeLuaText('textRed')
        addLuaText('textWhite')
        removeLuaText('text2White')
        addLuaText('text2')
    end

    if curStep >= 912 then
        addLuaSprite('idk', true)
        addLuaSprite('blackScreen', true)
        setProperty('blackScreen.alpha', 0.7);
        removeLuaText('text2')
        removeLuaText('textWhite')
        removeLuaSprite('blackScreenALT')
    end

    if curStep >= 1439 then
        setProperty('health', 0.075)
    end

    if curStep >= 1441 then
        --setProperty('health', getProperty('health')+0.017, 9000000);
        doTweenY('ohNo', 'boyfriend', -100, 1.0, 'linear');
    end

    if curStep == 1439 then
        playSound('DissensionDeath', 3.9)
    end

    if curStep >= 1039 then
        doTweenAlpha('byeRed', 'idk', 0, 0.5, 'linear')
    end

end 

-- crash prevention
function onUpdate() end
function onUpdatePost() end