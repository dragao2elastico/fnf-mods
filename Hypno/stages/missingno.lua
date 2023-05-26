function onCreate()
    makeAnimatedLuaSprite('bg1', 'missingno/bg',-680, -250)
    addAnimationByPrefix('bg','idle','sky',24, true)
    setProperty('bg1.antialiasing', false)
    scaleObject('bg1',7,5)
    objectPlayAnimation('bg1','idle', true)

    makeAnimatedLuaSprite('bg2', 'missingno/BG_assets', -670, -240)
    addAnimationByPrefix('bg2','idle','Bg Ocean',24, true)
    setProperty('bg2.antialiasing', false)
    scaleObject('bg2',7,5)
    objectPlayAnimation('bg2','idle', true)

    makeAnimatedLuaSprite('bg3', 'missingno/BG_assets', -670, -240)
    addAnimationByPrefix('bg3','idle','Bg Wave',24, true)
    setProperty('bg3.antialiasing', false)
    scaleObject('bg3',6,6)
    objectPlayAnimation('bg3','idle', true)

    addLuaSprite('gameboy', true)
    addLuaSprite('gameboy2', true)
    addLuaSprite('gameboy3', true)
    addLuaSprite('bg1', false)
    addLuaSprite('bg2', false)
    addLuaSprite('bg3', false)
    setProperty('camFollow.x', 510)
    setProperty('camFollow.y', 358)
    snapCamFollowToPos(510, 358);
    close(false);

end