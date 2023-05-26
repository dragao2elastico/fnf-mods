function onCreatePost()
    setProperty('iconP2.alpha',0)
    setProperty('iconP1.alpha',0)
    setProperty('healthBar.alpha',0)
    setProperty('scoreTxt.y',10)
    setProperty('scoreTxt.size',30)
    setTextFont('scoreTxt', 'poke.ttf')
    

    PositionX={defaultOpponentStrumX0+XO ,defaultOpponentStrumX1+XO,defaultOpponentStrumX2+XO ,defaultOpponentStrumX3+XO,defaultPlayerStrumX0+XP ,defaultPlayerStrumX1+XP,defaultPlayerStrumX2+XP,defaultPlayerStrumX3+XP }
    PositionY={defaultOpponentStrumY0+YO ,defaultOpponentStrumY1+YO,defaultOpponentStrumY2+YO ,defaultOpponentStrumY3+YO,defaultPlayerStrumY0+YP,defaultPlayerStrumY1+YP,defaultPlayerStrumY2+YP,defaultPlayerStrumY3+YP }

   
    for i=0,#PositionX-1 do
        noteTweenX('x'..tostring(i), i,PositionX[i+1], 0.00001, 'circInOut')   
        noteTweenY('y'..tostring(i), i,PositionY[i+1], 0.00001, 'circInOut') 
        if screenHeight/2>=PositionY[i+1] and downscroll then
        
            setPropertyFromGroup('strumLineNotes',i,'downScroll',false)
        elseif screenHeight/2<=PositionY[i+1] and not downscroll then
            setPropertyFromGroup('strumLineNotes',i,'downScroll',true)
        end
    end
    
    
end

function onSongStart()
     
end
function onCreate()

    ScaleMult=3.5
    if downscroll then
        YP=-60
        YO=-510
        XO=-80
        XP=80
      if middlescroll then
        XO=screenWidth
        XP=0
      end 

    else
        XO=720
        YO=460
        XP=-720
        YP=10
        if middlescroll then
            XO=screenWidth
            XP=0
        end 
    end

    if middlescroll ==false then
    --HUB LEFT
    makeAnimatedLuaSprite('HubLEFT', 'buried_hud', 0, 40)
    addAnimationByIndices('HubLEFT', 'Idle', 'buried_hud idle', '0', 0)
    setGraphicSize('HubLEFT', getProperty('HubLEFT.width')*ScaleMult,getProperty('HubLEFT.height')*ScaleMult)
    setObjectCamera('HubLEFT', 'hud')
    addLuaSprite('HubLEFT',false)
    
    setProperty('HubLEFT.antialiasing',false)
    setProperty('HubLEFT.x',getProperty('HubLEFT.width'))

    --HUB Right
    makeAnimatedLuaSprite('HubRIGHT', 'buried_hud', 0, 40)
    addAnimationByIndices('HubRIGHT', 'Idle', 'buried_hud idle', '1', 0)
    setGraphicSize('HubRIGHT', getProperty('HubRIGHT.width')*ScaleMult,getProperty('HubRIGHT.height')*ScaleMult)
    setObjectCamera('HubRIGHT', 'hud')
    addLuaSprite('HubRIGHT',false)
    
    setProperty('HubRIGHT.antialiasing',false)
    setProperty('HubRIGHT.x',screenWidth-getProperty('HubRIGHT.width'))
    setProperty('HubRIGHT.y',screenHeight-getProperty('HubRIGHT.height')-40)
    --Opponent Health bar
if downscroll==false then
    makeLuaSprite('HealthOpponent','brimstone_healthbar', getProperty('HubRIGHT.x')+277, getProperty('HubRIGHT.y')+168);
    setObjectCamera('HealthOpponent', 'hud')
    setGraphicSize('HealthOpponent', getProperty('HealthOpponent.width')*1.17,getProperty('HealthOpponent.height')*1.25)
    addLuaSprite('HealthOpponent',false)
    setProperty('HealthOpponent.antialiasing',false)
else
    makeLuaSprite('HealthOpponent','brimstone_healthbar', getProperty('HubLEFT.x')-427, getProperty('HubLEFT.y')+168);
    setObjectCamera('HealthOpponent', 'hud')
    setGraphicSize('HealthOpponent', getProperty('HealthOpponent.width')*1.17,getProperty('HealthOpponent.height')*1.25)
    addLuaSprite('HealthOpponent',false)
    setProperty('HealthOpponent.antialiasing',false)
end
else
    --Hud Center
    makeLuaSprite('HubCENTER', 'buried_center', 0, 40)

    setGraphicSize('HubCENTER', getProperty('HubCENTER.width')*ScaleMult,getProperty('HubCENTER.height')*ScaleMult)
    setObjectCamera('HubCENTER', 'hud')
    addLuaSprite('HubCENTER',false)
    setProperty('HubCENTER.antialiasing',false)
    if downscroll then
        setProperty('HubCENTER.y',screenHeight-getProperty('HubCENTER.height')-40)  
    end
    setProperty('HubCENTER.x',screenWidth/2-getProperty('HubCENTER.width')/2)
    
    
end
makeLuaText('SongName',songName..'-'..Dificulty(difficulty), 500,-160,680)
setTextFont('SongName', 'poke.ttf')
setTextSize('SongName', 30)
addLuaText('SongName')
end
function onUpdate(elapsed)
    setProperty('timeTxt.alpha',0)
    setProperty('timeBar.alpha',0)
if luaSpriteExists('HealthPlayer')==false and getProperty('health')>=0 then
   if downscroll then
    if middlescroll then
        makeLuaSprite('HealthPlayer','brimstone_healthbar', getProperty('HubCENTER.x')+273, getProperty('HubCENTER.y')+168);
        setObjectCamera('HealthPlayer', 'hud')
        setGraphicSize('HealthPlayer', getProperty('HealthPlayer.width')*1.17,getProperty('HealthPlayer.height')*1.25)
        addLuaSprite('HealthPlayer',false)
        setProperty('HealthPlayer.antialiasing',false)
    else
    makeLuaSprite('HealthPlayer','brimstone_healthbar', getProperty('HubRIGHT.x')+277, getProperty('HubRIGHT.y')+168);
    setObjectCamera('HealthPlayer', 'hud')
    setGraphicSize('HealthPlayer', getProperty('HealthPlayer.width')*1.17,getProperty('HealthPlayer.height')*1.25)
    addLuaSprite('HealthPlayer',false)
    setProperty('HealthPlayer.antialiasing',false)
    end
   else
    if middlescroll then
        makeLuaSprite('HealthPlayer','brimstone_healthbar', getProperty('HubCENTER.x')+273, getProperty('HubCENTER.y')+168);
        setObjectCamera('HealthPlayer', 'hud')
        setGraphicSize('HealthPlayer', getProperty('HealthPlayer.width')*1.17,getProperty('HealthPlayer.height')*1.25)
        addLuaSprite('HealthPlayer',false)
        setProperty('HealthPlayer.antialiasing',false)
    else
    makeLuaSprite('HealthPlayer','brimstone_healthbar', getProperty('HubLEFT.x')-427, getProperty('HubLEFT.y')+168);
    setObjectCamera('HealthPlayer', 'hud')
    setGraphicSize('HealthPlayer', getProperty('HealthPlayer.width')*1.17,getProperty('HealthPlayer.height')*1.25)
    addLuaSprite('HealthPlayer',false)
    setProperty('HealthPlayer.antialiasing',false)
    end
   end
   WidthPlay=getProperty('HealthPlayer.width')
   HeightPlay=getProperty('HealthPlayer.height')

end
setGraphicSize('HealthPlayer', WidthPlay*getProperty('healthBar.percent')/100,HeightPlay)
if getProperty('health')<=0 then
    removeLuaSprite('HealthPlayer',true)
end

if getProperty('health')>=1 then
    setProperty('HealthPlayer.color',getColorFromHex('FFFFFF'))
   
elseif getProperty('health')>=0.5 then
    setProperty('HealthPlayer.color',getColorFromHex('FFFF00'))
   
elseif getProperty('health')>=0 then
    setProperty('HealthPlayer.color',getColorFromHex('FF0000'))
   
end

end
function Dificulty(a)
if a==0 then
    return 'Normal'
elseif a==1 then
    return 'Normal'
elseif a==2 then
    return 'Hard'
end
end