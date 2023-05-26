local t = 0
local s = 0

function onCreate()

--Smol Hypno
makeLuaSprite('bgClouds1', 'Bygone Purpose/BG1 Clouds', -100, -150)
    addLuaSprite('bgClouds1',false)
    setGraphicSize('bgClouds1', getProperty('bgClouds1.width') * 1.0)

makeLuaSprite('bgMoon1', 'Bygone Purpose/BG1 Moon', -550, -350)
    addLuaSprite('bgMoon1',false)
    setGraphicSize('bgMoon1', getProperty('bgMoon1.width') *1.0)

    makeLuaSprite('bg1', 'Bygone Purpose/BG1 Buildings', -100, -150)
    addLuaSprite('bg1',false)
    setGraphicSize('bg1', getProperty('bg1.width') * 1.0)

makeLuaSprite('Rope1', 'Bygone Purpose/BridgeRope', 275, -50)
    addLuaSprite('Rope1',false)
    setGraphicSize('Rope1', getProperty('Rope1.width') * 1.0)

makeLuaSprite('Bridge', 'Bygone Purpose/Bridge', -150, -25)
    addLuaSprite('Bridge',true)
    setGraphicSize('Bridge', getProperty('Bridge.width') * 1.0)

--Big Hypno
    makeLuaSprite('bgClouds2', 'Bygone Purpose/BG2 Sky', -100, -150)
    addLuaSprite('bgClouds2',false)
    setGraphicSize('bgClouds2', getProperty('bgClouds2.width') * 1.0)
    setProperty('bgClouds2.visible', true)
    setProperty('bgClouds2.alpha', 0)

    makeLuaSprite('bg2', 'Bygone Purpose/BG2 Buildings', -100, -150)
    addLuaSprite('bg2',false)
    setGraphicSize('bg2', getProperty('bg2.width') * 1.0)
    setProperty('bg2.visible', true)
    setProperty('bg2.alpha', 0)

    makeLuaSprite('Bridge2', 'Bygone Purpose/Bridge2', -150, -25)
    addLuaSprite('Bridge2',true)
    setGraphicSize('Bridge2', getProperty('Bridge2.width') * 1.0)
    setProperty('Bridge2.visible', true)
    setProperty('Bridge2.alpha', 0)

    makeLuaSprite('Rope2', 'Bygone Purpose/BridgeRope2', 275, -50)
    addLuaSprite('Rope2',false)
    setGraphicSize('Rope2', getProperty('Rope2.width') * 1.0)
    setProperty('Rope2.visible', true)
    setProperty('Rope2.alpha', 0)

    makeLuaSprite('H', 'Bygone Purpose/BigHypno', 600, 100)
    addLuaSprite('H',false)
    setGraphicSize('H', getProperty('H.width') * 1.0)
    setProperty('H.visible', true)
    setProperty('H.alpha', 0)

--Transition
	makeLuaSprite('Trans', 'Bygone Purpose/AlexisTransition', 300, 0)
    addLuaSprite('Trans', true)
    setGraphicSize('Trans', getProperty('Trans.width') * 1.0)
    setProperty('Trans.visible', true)
    setProperty('Trans.alpha', 0)
end