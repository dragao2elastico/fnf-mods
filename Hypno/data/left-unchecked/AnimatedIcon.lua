function onCreate()

	makeAnimatedLuaSprite('wacky animated icon lol what the fuck not clickbait 3 am', 'icons/Hypno2 Health Icon', getProperty('iconP2.x'), getProperty('iconP2.y'))
	addAnimationByPrefix('wacky animated icon lol what the fuck not clickbait 3 am', 'idle', 'Hypno2 Icon', 24, false)
	setObjectCamera('wacky animated icon lol what the fuck not clickbait 3 am', 'hud')
	addLuaSprite('wacky animated icon lol what the fuck not clickbait 3 am', true)

end

function onUpdate(elapsed)

	setObjectOrder('wacky animated icon lol what the fuck not clickbait 3 am', getObjectOrder('iconP1') + 10)

	setProperty('wacky animated icon lol what the fuck not clickbait 3 am.flipX', false)
	setProperty('wacky animated icon lol what the fuck not clickbait 3 am.visible', true)
	setProperty('wacky animated icon lol what the fuck not clickbait 3 am.x', getProperty('iconP2.x') - 30)
	setProperty('wacky animated icon lol what the fuck not clickbait 3 am.angle', getProperty('iconP2.angle'))
	setProperty('wacky animated icon lol what the fuck not clickbait 3 am.y', getProperty('iconP2.y') - 50)
	setProperty('wacky animated icon lol what the fuck not clickbait 3 am.scale.x', getProperty('iconP2.scale.x') - 0)
	setProperty('wacky animated icon lol what the fuck not clickbait 3 am.scale.y', getProperty('iconP2.scale.y') - 0)
	setProperty('wacky animated icon lol what the fuck not clickbait 3 am.antialiasing',true)

	setProperty('iconP2.alpha', 0) 

        objectPlayAnimation('wacky animated icon lol what the fuck not clickbait 3 am','idle');	

end