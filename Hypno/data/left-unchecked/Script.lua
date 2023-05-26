function onCreatePost()
    makeAnimatedLuaSprite('Spacebar', 'Mech/Extras', 400, 350)
    addLuaSprite('Spacebar', true)
    addAnimationByPrefix('Spacebar', 'Spacebar', 'Spacebar', 18.5,true)
    setScrollFactor('Spacebar', 0, 0)
    scaleObject('Spacebar', 2, 2)
    setProperty('Spacebar.alpha',0)
end

function onStepHit()
    if curStep == 7 then
    doTweenAlpha('Spacebar', 'Spacebar', 1, 1, 'ExpoInOut')
    end

    if curStep == 23 then
        doTweenAlpha('Spacebar', 'Spacebar', 0, 1, 'ExpoInOut')

    end
    if curStep == 39 then
        removeLuaSprite('Spacebar', true)
    end

end
