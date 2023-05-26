
function onCreatePost()
setProperty('BF.x',1900)


end
function onCreate()
   ENDAnim=false
   GameOver=false
   Tweens=true
   CumColdown=80
   SpeedY=0.025
   Y= 10
   Down=true
   Altura=getCharacterY('dad')
setProperty('skipCountdown',true)
   CamSpeed=getProperty('cameraSpeed')
   setProperty('cameraSpeed',100)
   addCharacterToList('ApparitionGF', 'dad')
   addCharacterToList('Hand', 'dad')
   addCharacterToList('Missingno', 'bf')
   addCharacterToList('MissingnoPokeBall', 'bf')
   addCharacterToList('Enter_gengar', 'dad')
   addCharacterToList('Gengar', 'dad')
   addCharacterToList('Leanmonster', 'dad')
   precacheImage('muksludge')
   precacheSound('MukCums')

   setPropertyFromClass('GameOverSubstate', 'characterName', 'BF_buried_GameOver');
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'BA'..tostring(math.random(0,3)));
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'BurymanDeath');
   YBars=0
   for i=1 ,18 do
      
      makeLuaSprite('Bar'..tostring(i), nil, 0, YBars);
      makeGraphic('Bar'..tostring(i), screenWidth, screenHeight/18, '000000')
      setObjectCamera('Bar'..tostring(i),'Other')
      addLuaSprite('Bar'..tostring(i),false)
      if i==1 or i==3 or i==5 or i==7 or i==9 or i==11 or i==13 or i==15 or i==17 then
     
     doTweenX('BARS'..tostring(i), 'Bar'..tostring(i),-1300, 2, 'linear')
      else
         
         doTweenX('BARS'..tostring(i), 'Bar'..tostring(i),1300, 2, 'linear')
      end
      YBars=YBars+screenHeight/18
      
   end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'SpawnerBuryman' then
        playAnim('Buryman', 'Scream' ,true)
       
        
    end
    if tag=='CUm' then
      makeAnimatedLuaSprite('muksludge', 'muksludge', 0, 0)
      addAnimationByPrefix('muksludge', '0', 'Sludge_01', 24,false)
      addAnimationByPrefix('muksludge', '1', 'Sludge_02', 24,false)
      addAnimationByPrefix('muksludge', '2', 'Sludge_03', 24,false)
      setGraphicSize('muksludge', screenWidth,screenHeight)
      setProperty('muksludge.antialiasing',false)
      cancelTween('Cumleave')
      setProperty('muksludge.alpha',1)
      playAnim('muksludge',tostring(math.random(0,2)),true)
      setObjectCamera('muksludge', 'other')
 
      addLuaSprite('muksludge',false)
      playSound('MukCums',1)
    end
   
end

function onTweenCompleted(tag)
	if tag== 'BARS1' then
      doTweenX('BFStart', 'BF',getCharacterX('bf')-601, 2, 'linear')
      for i=1 ,18 do
         removeLuaSprite('Bar'..tostring(i),true)
         
      end
   end
   if tag== 'BFGO' then
      GameOver=true
      setProperty('health',-1)
      
      playSound('buriedThud',1)
   
      GameOver()
   end
   if tag =='Cumleave'then
removeLuaSprite('muksludge',false)
   end
end
function onSongStart()
   
   setProperty('cameraSpeed',CamSpeed)
   runTimer('SpawnerBuryman',9.5,1)
end
function onGameOver()
   
   if GameOver==false then
      
	return Function_Stop;
   elseif GameOver==true then
      
   return Function_Continue;
   end
end
function onUpdatePost(elapsed)
if getProperty('health')<=0 and Tweens==true then
   cameraShake('Game', 0.0125, 2)   
   Tweens=false
   playSound('buriedDeath',1)
   doTweenY('BFGO', 'BF',getCharacterY('bf')+900, 2, 'linear')
   

runHaxeCode([[
   FlxG.sound.music.volume=0;
]])
setProperty('vocals.volume',0)
end



end
function onStepHit()
if dadName=='Leanmonster' and getProperty('dad.animation.curAnim.name')=='idle' then

   CumColdown=CumColdown-1

   if CumColdown<=0 then
      if getProperty('dad.animation.curAnim.name')~= "Intro" then
        playAnim('dad','Puke',true)
        runTimer('CUm',(stepCrochet * 4) / 1000,1)
      end
      CumColdown=80
   end
end


end
function onUpdate(elapsed)
if luaSpriteExists('muksludge') then
   
   if getProperty('muksludge.animation.curAnim.finished')==true then
      
      doTweenAlpha('Cumleave','muksludge',0,(stepCrochet * 4) / 1000,'linear')
   end
end
if dadName=='ApparitionGF' then
if Y+Altura>=getCharacterY('dad') and Down== true then
   setCharacterY('dad',getCharacterY('dad')+SpeedY)
  
else
   
   Down=false
end
if Altura-Y<=getCharacterY('dad') and Down== false then
   setCharacterY('dad',getCharacterY('dad')-SpeedY)
  
else
  
   Down=true
end
end
end

