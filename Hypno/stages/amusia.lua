function onCreatePost()

    makeLuaSprite('bang','bang',-1000,-1000)
	makeGraphic('bang',1,1,'FFFAFA')
  
    setScrollFactor('bang',1,1)
    scaleObject('bang',99999, 99999)
    setProperty('bang.alpha',0)


    makeLuaSprite('black','black',-1000,-1000)
	makeGraphic('black',1,1,'020202')
    
    setScrollFactor('black',1,1)
    scaleObject('black',99999, 99999)
    setProperty('black.alpha',1 )
    
    
    makeLuaSprite('background2', 'disabled/background2',-900, -200);
    addLuaSprite('background2',false)
    setScrollFactor('background2',0.2,0.2)
    scaleObject('background2',2, 2)

    makeLuaSprite('background', 'disabled/background',-900, -200);
    addLuaSprite('background',false)
    setScrollFactor('background',0.2,0.2)
    scaleObject('background',2, 2)


    makeLuaSprite('ponyta', 'disabled/Purple_place',330, 330);
    addLuaSprite('ponyta',false)
    setScrollFactor('ponyta',1,1)
    scaleObject('ponyta',0.7, 0.7)

    
    makeLuaSprite('wiggly', 'disabled/Purple_place',-510, 550);
    addLuaSprite('wiggly',false)
    setScrollFactor('wiggly',1,1)
    scaleObject('wiggly',1.2, 1.2)

    makeAnimatedLuaSprite('static', 'disabled/static', -300, -200)
    addLuaSprite('static', true)
    addAnimationByPrefix('static', 'static', 'static', 18.5,true)
    setScrollFactor('static', 0, 0)
    scaleObject('static', 2, 2)
    setProperty('static.alpha',0)

    makeAnimatedLuaSprite('statico', 'disabled/static-overlay', -300, -200)
    addLuaSprite('statico', true)
    addAnimationByPrefix('statico', 'static', 'static', 18.5,true)
    setScrollFactor('statico', 0, 0)
    scaleObject('statico', 2, 2)
    setProperty('statico.alpha',0)
    addLuaSprite('black',false)
    addLuaSprite('bang',false)
end

