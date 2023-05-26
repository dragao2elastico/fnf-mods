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
    
    
    makeLuaSprite('background2', 'disabled/background2',-470, -180);
    addLuaSprite('background2',false)
    setScrollFactor('background2',0.2,0.2)
    scaleObject('background2',1.5, 1.5)

    makeLuaSprite('background', 'disabled/background',-470, -180);
    addLuaSprite('background',false)
    setScrollFactor('background',0.5,0.5)
    scaleObject('background',1.5, 1.5)


    makeLuaSprite('ponyta', 'disabled/Purple_place',330, 330);
    addLuaSprite('ponyta',false)
    setScrollFactor('ponyta',1,1)
    scaleObject('ponyta',0.7, 0.7)

    
    makeLuaSprite('wiggly', 'disabled/Purple_place',-510, 550);
    addLuaSprite('wiggly',false)
    setScrollFactor('wiggly',1,1)
    scaleObject('wiggly',1.2, 1.2)

    makeAnimatedLuaSprite('static', 'disabled/static', -5, -5)
    addLuaSprite('static', true)
    addAnimationByPrefix('static', 'static', 'static', 18.5,true)
    setScrollFactor('static', 0, 0)
    scaleObject('static', 1.35, 1.35)
    setProperty('static.alpha',0)
    setObjectCamera('static', 'camOther')
    makeAnimatedLuaSprite('statico', 'disabled/static-overlay', -5, -5)
    addLuaSprite('statico', true)
    addAnimationByPrefix('statico', 'static', 'static', 18.5,true)
    setScrollFactor('statico', 0, 0)
    scaleObject('statico', 1.35, 1.35)
    setProperty('statico.alpha',0)
    addLuaSprite('black',false)
    addLuaSprite('bang',false)
    setObjectCamera('statico', 'camOther')
end

