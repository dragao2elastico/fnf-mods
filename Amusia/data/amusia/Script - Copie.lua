function onCreate()
    for i = 0, getProperty('unspawnNotes.length') do
       if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
          setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true) 
       end
    end
 end
 
 local ani = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
 function onUpdate()
    for i = 0, getProperty('notes.length') do
       if not getPropertyFromGroup('notes', i, 'mustPress') then
          if getSongPosition() >= getPropertyFromGroup('notes', i, 'strumTime') - 10 and getSongPosition() < getPropertyFromGroup('notes', i, 'strumTime') + 10 then
             lol = getPropertyFromGroup('notes', i, 'noteData')
             playAnim('dad', ani[lol + 1], true)
             setProperty('dad.holdTimer', 0)
          end
       end
    end

    songPos = getSongPosition()
	local currentBeat = (songPos/2000)*(bpm/60)
   local currentBeatX = (songPos/2000)*(bpm/120)
   local currentBeatA = (songPos/2000)*(bpm/20)
   local currentBeatAn = (songPos/2000)*(bpm/240)
	if curStep >= 790 and curStep < 2904 then
		
      noteTweenY('defaultPlayerStrumY0', 0, defaultPlayerStrumY0 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenY('defaultPlayerStrumY1', 1, defaultPlayerStrumY1 - 40*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
      noteTweenY('defaultPlayerStrumY2', 2, defaultPlayerStrumY2 - 40*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
      noteTweenY('defaultPlayerStrumY3', 3, defaultPlayerStrumY3 - 40*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
      noteTweenY('defaultPlayerStrumY4', 4, defaultPlayerStrumY0 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenY('defaultPlayerStrumY5', 5, defaultPlayerStrumY1 - 40*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
      noteTweenY('defaultPlayerStrumY6', 6, defaultPlayerStrumY2 - 40*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
      noteTweenY('defaultPlayerStrumY7', 7, defaultPlayerStrumY3 - 40*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
	end

   if curStep >= 1311 and curStep < 2904 then
		
      noteTweenX('defaultPlayerStrumX0', 0, defaultPlayerStrumX0 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumX1', 1, defaultPlayerStrumX1 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumX2', 2, defaultPlayerStrumX2 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumX3', 3, defaultPlayerStrumX3 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumX4', 4, defaultOpponentStrumX0 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumX5', 5, defaultOpponentStrumX1 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumX6', 6, defaultOpponentStrumX2 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumX7', 7, defaultOpponentStrumX3 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)


       doTweenAlpha('black', 'black',0.5,1)
      doTweenAlpha('statico', 'statico',(10*math.sin((currentBeatA*0.25)*math.pi))-9, 0.5); 
      
      noteTweenAngle('defaultPlayerStrumA0', 0, defaultPlayerStrumX0 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenAngle('defaultPlayerStrumA1', 1, defaultPlayerStrumX1 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenAngle('defaultPlayerStrumA2', 2, defaultPlayerStrumX2 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenAngle('defaultPlayerStrumA3', 3, defaultPlayerStrumX3 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenAngle('defaultPlayerStrumA4', 4, defaultOpponentStrumX0 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenAngle('defaultPlayerStrumA5', 5, defaultOpponentStrumX1 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenAngle('defaultPlayerStrumA6', 6, defaultOpponentStrumX2 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)
      noteTweenAngle('defaultPlayerStrumA7', 7, defaultOpponentStrumX3 - 120*math.sin((currentBeatX+4*0.25)*math.pi), 0.5)

	end
 end
