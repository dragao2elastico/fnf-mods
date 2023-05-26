--Made by Drawoon_
--If you using this code in some mods give me credits
function onCreate()
--Very IMPORTANT fill this variable
    Name='BF'--Character TAG
    Image='ba_BF_assets'--Image Name in character file
    AnimationName='BF_'
    charName='bf'--bf,dad
--Idle
    Idle='Idle'
    OffsetIdle={0,0}
    FrameIdle=24
    IndiceIdle=''
--Up
    Up='Up'
    OffsetUp={0,0}
    FrameUp=24
    IndiceUp='0,1,2,3,4,5'
--Down
    Down='Down'
   OffsetDown={0,0}
   FrameDown=24
   IndiceDown='0,1,2,3,4,5'
--Left  
   Left ='Left' 
   OffsetLeft ={0,0}
   FrameLeft =24 
   IndiceLeft='0,1,2,3,4,5'
--Right 
   Right='Right'
   OffsetRight={0,0}
   FrameRight=24
   IndiceRight='0,1,2,3,4,5'
--Up miss
   Upmiss='Up Miss'
   OffsetUpmiss={0,0}
   IndiceUpmiss=''
--Down miss  
   Downmiss='Down Miss'
   OffsetDownmiss={0,0}
   IndiceDownmiss=''
--Left miss
   Leftmiss='Left Miss'
   OffsetLeftmiss={0,0}
   IndiceLeftmiss=''
--Right miss 
   Rightmiss='Right Miss'
   OffsetRightmiss={0,0}
   IndiceRightmiss=''
--Special Animation
SpecialAnimName='Aurgh'
SpecialAnim='BF_AURGH'
OffsetSpecialAnim={0,0}
FrameSpecialAnim=24
IndiceSpecialAnim=''

SpecialAnimName1='Throw'
SpecialAnim1='BF_Ball_Throw'
OffsetSpecialAnim1={0,0}
FrameSpecialAnim1=24
IndiceSpecialAnim1=''

SpecialAnimName2=''
SpecialAnim2='boyfriend dodge'
OffsetSpecialAnim2={0,0}
FrameSpecialAnim2=24
IndiceSpecialAnim2=''

SpecialAnimName3=''
SpecialAnim3='bf pre attack'
OffsetSpecialAnim3={0,0}
FrameSpecialAnim3=24
IndiceSpecialAnim3=''
--Extra 
Antialiasing=false
Position={-601,500}
Scale=4
FlipX=false
Front=false
--Work play animation event 
   
-----------------------------------------------------------------------------------------------------------  
   
   
   
   
   
   
   --The code
   
   
   
   
   if charName == 'bf'then
    Group='boyfriendGroup'
   elseif charName == 'dad' then
    Group='dadGroup'
   end
   CURanim='Idle'
  
   

   canOffset=false

  
  

   
   
   
   makeAnimatedLuaSprite(Name,'characters/'.. Image, getCharacterX(charName)+Position[1], getCharacterY(charName)+Position[2])
   if IndiceIdle=='' or IndiceIdle==nil then 
   addAnimationByPrefix(Name, 'Idle', AnimationName ..''.. Idle,FrameIdle,true)
   else
    addAnimationByIndicesLoop(Name, 'Idle', AnimationName ..''.. Idle, IndiceIdle, FrameIdle)
   end
   Origins={getProperty(Name..'.x'),getProperty(Name..'.y')}
   playAnim(Name, 'Idle',true)
   
   
   addLuaSprite(Name,false)
   
   AnimationSpecial()
   Animation()
   Extra()
end
function onCreatePost()
	if luaSpriteExists(Name) ==false then
    debugPrint('Not Exist ', Name)
    end
    
    
end
function Extra()
   if Front==true then
    setObjectOrder(Name, getObjectOrder(Group)+1)
   else
    setObjectOrder(Name, getObjectOrder(Group)-1)
   end
    if charName == 'bf' then
    scaleObject(Name, Scale, Scale)
    else
        scaleObject(Name, -Scale, Scale)
    end
    setProperty(Name..'.antialiasing',Antialiasing)
    setProperty(Name..'.flipX',FlipX)



end
function Animation()

if IndiceLeft=='' or IndiceLeft==nil then
    addAnimationByPrefix(Name, '0', AnimationName ..''.. Left,FrameLeft,false)   
else
    addAnimationByIndices(Name, '0', AnimationName ..''.. Left, IndiceLeft, FrameLeft)
end

    
if IndiceDown=='' or IndiceDown==nil then 
addAnimationByPrefix(Name, '1', AnimationName ..''.. Down,FrameDown,false)
else
    addAnimationByIndices(Name, '1', AnimationName ..''.. Down, IndiceDown, FrameDown)
end
    
    
if IndiceUp=='' or IndiceUp==nil then 
    addAnimationByPrefix(Name, '2', AnimationName ..''.. Up,FrameUp,false)
else
    addAnimationByIndices(Name, '2', AnimationName ..''.. Up, IndiceUp, FrameUp)
end
    
    
if IndiceRight=='' or IndiceRight==nil then 
    addAnimationByPrefix(Name, '3', AnimationName ..''.. Right,FrameRight,false)
else
    addAnimationByIndices(Name, '3', AnimationName ..''.. Right, IndiceRight, FrameRight)
end
   

    
    
    
 if charName =='bf' then  
if IndiceLeftmiss=='' or IndiceLeftmiss==nil then 
    addAnimationByPrefix(Name, '0miss', AnimationName ..''.. Leftmiss,FrameLeft,false)
else
    addAnimationByIndices(Name, '0miss', AnimationName ..''.. Leftmiss, IndiceLeftmiss, FrameLeft)
end
    
   
if IndiceDownmiss=='' or IndiceDownmiss==nil then 
    addAnimationByPrefix(Name, '1miss', AnimationName ..''.. Downmiss,FrameDown,false)
else
    addAnimationByIndices(Name, '1miss', AnimationName ..''.. Downmiss, IndiceDownmiss, FrameDown)
end
   
    
if IndiceUpmiss=='' or IndiceUpmiss==nil then 
    addAnimationByPrefix(Name, '2miss', AnimationName ..''.. Upmiss,FrameUp,false)
else
    addAnimationByIndices(Name, '2miss', AnimationName ..''.. Upmiss, IndiceLeftmiss, FrameUp)
end
    
    
if IndiceRightmiss=='' or IndiceRightmiss==nil then 
    addAnimationByPrefix(Name, '3miss', AnimationName ..''.. Rightmiss,FrameRight,false)
else
    addAnimationByIndices(Name, '3miss', AnimationName ..''.. Rightmiss, IndiceRightmiss, FrameRight)
end
    
end

end
function AnimationSpecial()
    if IndiceSpecialAnim=='' or IndiceSpecialAnim==nil then 
        addAnimationByPrefix(Name, SpecialAnimName, SpecialAnim,FrameSpecialAnim,false)
    else
        addAnimationByIndices(Name, SpecialAnimName, SpecialAnim, IndiceSpecialAnim, FrameSpecialAnim)
    end
    if IndiceSpecialAnim1=='' or IndiceSpecialAnim1==nil then 
        addAnimationByPrefix(Name, SpecialAnimName1, SpecialAnim1,FrameSpecialAnim1,false)
    else
        addAnimationByIndices(Name, SpecialAnimName1, SpecialAnim1, IndiceSpecialAnim1, FrameSpecialAnim1)
    end
    if IndiceSpecialAnim2=='' or IndiceSpecialAnim2==nil then 
        addAnimationByPrefix(Name, SpecialAnimName2, SpecialAnim2,FrameSpecialAnim2,false)
    else
        addAnimationByIndices(Name, SpecialAnimName2, SpecialAnim2, IndiceSpecialAnim2, FrameSpecialAnim2)
    end
    if IndiceSpecialAnim3=='' or IndiceSpecialAnim3==nil then 
        addAnimationByPrefix(Name, SpecialAnimName3, SpecialAnim3,FrameSpecialAnim3,false)
    else
        addAnimationByIndices(Name, SpecialAnimName3, SpecialAnim3, IndiceSpecialAnim3, FrameSpecialAnim3)
    end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if charName== 'bf'and noteType=='DuoChartNOTE' then
        playAnim(Name,tostring(direction) ,true)
        
        runTimer('Change1',0.3,1)
    end
  
   
end
function noteMiss(id, direction, noteType, isSustainNote)
	if charName== 'bf'and noteType=='DuoChartNOTE' then
        playAnim(Name, tostring(direction)..'miss' ,true)
        runTimer('Change1',0.7,1)
       
    end
    
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Change1' then
        playAnim(Name, 'Idle' ,true)
    end
end
--function opponentNoteHit(id, direction, noteType, isSustainNote)
	--if charName== 'dad' then
        --playAnim(Name, tostring(direction) ,true)
       -- runTimer('Change',0.3,1)
   -- end
    --if charName== 'dad' then
       -- playAnim(Name, tostring(direction) ,true)
        --runTimer('Change',0.3,1)
    --end
--end
function onUpdate(elapsed)
    if canOffset==true then
	if getProperty(Name..'.animation.curAnim.name') == 'Idle' then
    setProperty(Name..'.x',Origins[1]-OffsetIdle[1])
    setProperty(Name..'.y',Origins[2]-OffsetIdle[2])
    elseif getProperty(Name..'.animation.curAnim.name') == '0' then
    setProperty(Name..'.x',Origins[1]-OffsetLeft[1])
    setProperty(Name..'.y',Origins[2]-OffsetLeft[2])
    elseif getProperty(Name..'.animation.curAnim.name') == '1' then
        setProperty(Name..'.x',Origins[1]-OffsetDown[1])
        setProperty(Name..'.y',Origins[2]-OffsetDown[2])
    elseif getProperty(Name..'.animation.curAnim.name') == '2' then
        setProperty(Name..'.x',Origins[1]-OffsetUp[1])
        setProperty(Name..'.y',Origins[2]-OffsetUp[2])
    elseif getProperty(Name..'.animation.curAnim.name') == '3' then
        setProperty(Name..'.x',Origins[1]-OffsetRight[1])
        setProperty(Name..'.y',Origins[2]-OffsetRight[2])
    elseif getProperty(Name..'.animation.curAnim.name') == '0miss' then
        setProperty(Name..'.x',Origins[1]-OffsetLeftmiss[1])
        setProperty(Name..'.y',Origins[2]-OffsetLeftmiss[2])
    elseif getProperty(Name..'.animation.curAnim.name') == '1miss' then
        setProperty(Name..'.x',Origins[1]-OffsetDownmiss[1])
        setProperty(Name..'.y',Origins[2]-OffsetDownmiss[2])
    elseif getProperty(Name..'.animation.curAnim.name') == '2miss' then
        setProperty(Name..'.x',Origins[1]-OffsetUpmiss[1])
        setProperty(Name..'.y',Origins[2]-OffsetUpmiss[2])
    elseif getProperty(Name..'.animation.curAnim.name') == '3miss' then
        setProperty(Name..'.x',Origins[1]-OffsetRightmiss[1])
        setProperty(Name..'.y',Origins[2]-OffsetRightmiss[2])
    elseif getProperty(Name..'.animation.curAnim.name') == SpecialAnimName then
        setProperty(Name..'.x',Origins[1]-OffsetSpecialAnim[1])
        setProperty(Name..'.y',Origins[2]-OffsetSpecialAnim[2])
    elseif getProperty(Name..'.animation.curAnim.name') == SpecialAnimName1 then
        setProperty(Name..'.x',Origins[1]-OffsetSpecialAnim1[1])
        setProperty(Name..'.y',Origins[2]-OffsetSpecialAnim1[2])
    elseif getProperty(Name..'.animation.curAnim.name') == SpecialAnimName2 then
        setProperty(Name..'.x',Origins[1]-OffsetSpecialAnim2[1])
        setProperty(Name..'.y',Origins[2]-OffsetSpecialAnim2[2])
    elseif getProperty(Name..'.animation.curAnim.name') == SpecialAnimName3 then
        setProperty(Name..'.x',Origins[1]-OffsetSpecialAnim3[1])
        setProperty(Name..'.y',Origins[2]-OffsetSpecialAnim3[2])
    end
    end
    if getProperty(Name..'.animation.curAnim.finished') == true and getProperty(Name..'.animation.curAnim.name')==SpecialAnimName then
        playAnim(Name, 'Idle' ,true)
    elseif getProperty(Name..'.animation.curAnim.finished') == true and getProperty(Name..'.animation.curAnim.name')==SpecialAnimName1 then
        playAnim(Name, 'Idle' ,true)
    elseif getProperty(Name..'.animation.curAnim.finished') == true and getProperty(Name..'.animation.curAnim.name')==SpecialAnimName2 then
        playAnim(Name, 'Idle' ,true)
    elseif getProperty(Name..'.animation.curAnim.finished') == true and getProperty(Name..'.animation.curAnim.name')==SpecialAnimName3 then
        playAnim(Name, 'Idle' ,true)
    end
    
end
function onEvent(name, value1, value2)
if name == 'Play Animation' then
    playAnim(value2, value1 ,false)
    CURanim=value1
end
end
function Bool(bool)
if bool=='true'then
return true
else
return false
end


end
function onTweenCompleted(tag)
	if tag=='BFStart' then
canOffset=true
    end
end
function onUpdate(elapsed)
    if getProperty('health')<=0 then
        canOffset=false
    
    end
    
end