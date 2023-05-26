function onCreatePost()
	    setProperty('scoreTxt.alpha', 0)
	    setProperty('healthBar.alpha', 0)
	    setProperty('healthBarBG.alpha', 0)
            setProperty('iconP1.alpha', 0)
            setProperty('iconP2.alpha', 0)
            doTweenAlpha('timeBartween', 'timeBar', 0, 10, 'linear')
            doTweenAlpha('timeTxttween', 'timeTxt', 0, 10, 'linear')
	    noteTweenAlpha('note4alphatween', 4, 0, 10, 'linear')
	    noteTweenAlpha('note5alphatween', 5, 0, 11, 'linear')
	    noteTweenAlpha('note6alphatween', 6, 0, 10, 'linear')
	    noteTweenAlpha('note7alphatween', 7, 0, 10, 'linear')
            setPropertyFromGroup('playerStrums', 2, 'x', 9999)
            setPropertyFromGroup('playerStrums', 3, 'x', 9999)
end

function onStepHit()
	if curStep == 1 then
            setProperty('timeBar.alpha', 0)
end

	if curStep == 15 then

        setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
        setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
        setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
        setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
end

	if curStep == 25 or curStep == 185 or curStep == 713 then

	    noteTweenAlpha('note4alphatween', 4, 1, 2, 'linear')
	    noteTweenAlpha('note5alphatween', 5, 1, 2, 'linear')
	    noteTweenAlpha('note6alphatween', 6, 1, 2, 'linear')
	    noteTweenAlpha('note7alphatween', 7, 1, 2, 'linear')
            doTweenAlpha('healthBartween', 'healthBar', 1, 2, 'linear')
            doTweenAlpha('healthBarBGtween', 'healthBarBG', 1, 2, 'linear')
            doTweenAlpha('iconP1tween', 'iconP1', 1, 2, 'linear')
            doTweenAlpha('scoreTxttween', 'scoreTxt', 1, 2, 'linear')
            doTweenAlpha('timeBartween', 'timeBar', 1, 2, 'linear')
            doTweenAlpha('timeBarBGtween', 'timeBarBG', 1, 2, 'linear')
            doTweenAlpha('timeTxttween', 'timeTxt', 1, 2, 'linear')
end
	if curStep == 156 or curStep == 574 then

	    noteTweenAlpha('note4alphatween', 4, 0, 2, 'linear')
	    noteTweenAlpha('note5alphatween', 5, 0, 2, 'linear')
	    noteTweenAlpha('note6alphatween', 6, 0, 2, 'linear')
	    noteTweenAlpha('note7alphatween', 7, 0, 2, 'linear')
            doTweenAlpha('healthBartween', 'healthBar', 0, 2, 'linear')
            doTweenAlpha('healthBarBGtween', 'healthBarBG', 0, 2, 'linear')
            doTweenAlpha('iconP1tween', 'iconP1', 0, 2, 'linear')
            doTweenAlpha('scoreTxttween', 'scoreTxt', 0, 2, 'linear')
            doTweenAlpha('timeBartween', 'timeBar', 0, 2, 'linear')
            doTweenAlpha('timeBarBGtween', 'timeBarBG', 0, 2, 'linear')
            doTweenAlpha('timeTxttween', 'timeTxt', 0, 2, 'linear')
end
end