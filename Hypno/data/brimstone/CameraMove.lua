function onCreate()

 Move=2.5
 FD=10
end
function goodNoteHit(id, direction, noteType, isSustainNote)
    
 
  if direction==0 and OriginalCamMove[2]-FD<getProperty('camFollowPos.x')  then

    setProperty('camFollowPos.x',cameraX-Move)
  end
  
  if direction==1 and OriginalCamMove[1]+FD>getProperty('camFollowPos.y')  then
 
    setProperty('camFollowPos.y',cameraY+Move)
  end
  if direction==2 and OriginalCamMove[1]-FD<getProperty('camFollowPos.y')   then
    
    setProperty('camFollowPos.y',cameraY-Move)
  end
  if direction==3 and OriginalCamMove[2]+FD>getProperty('camFollowPos.x') then
    
    setProperty('camFollowPos.x',cameraX+Move)
  end
end
function onKeyRelease(Key)
  if Key==1 or Key==2 then
    cameraY=OriginalCamMove[1]
  elseif Key==0 or Key==3 then
    cameraX=OriginalCamMove[2]
  end
end
function onTweenCompleted(tag)
  if tag== 'BARS1' then
    OriginalCamMove={getProperty('camFollowPos.y'),getProperty('camFollowPos.x')}
    
 end
end



