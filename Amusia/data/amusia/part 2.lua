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
		
      noteTweenX('defaultPlayerStrumY0', 0, defaultPlayerStrumY0 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumY1', 1, defaultPlayerStrumY1 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumY2', 2, defaultPlayerStrumY2 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumY3', 3, defaultPlayerStrumY3 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumY4', 4, defaultPlayerStrumY0 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumY5', 5, defaultPlayerStrumY1 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumY6', 6, defaultPlayerStrumY2 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
      noteTweenX('defaultPlayerStrumY7', 7, defaultPlayerStrumY3 - 40*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
	end
 end
