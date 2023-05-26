function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'gega' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'gega'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0');
            setPropertyFromGroup('unspawnNotes', i, 'scale.x','3.48');
            setPropertyFromGroup('unspawnNotes', i, 'scale.y','3.48');
            setPropertyFromGroup('unspawnNotes', i, 'antialiasing',false);
			setPropertyFromGroup('unspawnNotes', i, 'offsetX','42');
            setPropertyFromGroup('unspawnNotes', i, 'ratingDisabled',true);
            setPropertyFromGroup('unspawnNotes', i, 'ignoreNote',true);
            
            
           
		end
	end
	Alpha=1
    gegaHIT=0
end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType=='gega' then
        gegaHIT=gegaHIT+1
        for i = 0, getProperty('notes.length')-1 do
            --Check if the note is an Instakill Note
            setPropertyFromGroup('notes', i, 'multAlpha',alphas(Alpha))
               
            
         end
        for i = 0, getProperty('unspawnNotes.length')-1 do
            setPropertyFromGroup('unspawnNotes', i, 'multAlpha',alphas(Alpha))
        end
        
         
         runTimer('Reset',5,1)
    end
end
function alphas(alpas)
if gegaHIT == 0 then
    return 1
elseif gegaHIT==1 then
    return 0.8
elseif gegaHIT==2 then
    return 0.6
elseif gegaHIT==3 then
    return 0.4
elseif gegaHIT==4 then
    return 0.2
else
    return 0
end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag =='Reset' then
        gegaHIT=0
        for i = 0, getProperty('unspawnNotes.length')-1 do
            setPropertyFromGroup('unspawnNotes', i, 'multAlpha',alphas(Alpha))
        end
        for i = 0, getProperty('notes.length')-1 do
            --Check if the note is an Instakill Note
            setPropertyFromGroup('notes', i, 'multAlpha',alphas(Alpha))
               
            
         end
    end
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
