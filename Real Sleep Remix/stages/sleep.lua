function onCreate()
	-- background shit
	makeAnimatedLuaSprite('bg1', 'sleep/orionbeltBG', -150, -200);
	scaleObject('bg1', 1.2, 1.2);
	addLuaSprite('bg1', false);
	addAnimationByPrefix('bg1', 'notv', 'notv', 1, false);
	doTweenAlpha('bg1Gone', 'bg1', 0, 0.0001, linear);

	makeAnimatedLuaSprite('bg2', 'sleep/BothBG', -150, -200);
	scaleObject('bg2', 1.2, 1.2);
	addLuaSprite('bg2', false);
	addAnimationByPrefix('bg2', 'line', 'line', 12, true);
	doTweenAlpha('bg2Gone', 'bg2', 0, 0.0001, linear);

	makeLuaSprite('moon', 'sleep/Moon', 75, -560);
	scaleObject('moon', 1.6, 1.6);
	addLuaSprite('moon', false)
	doTweenAlpha('moonGone', 'moon', 0, 0.0001, linear)

	makeAnimatedLuaSprite('bgin1', 'sleep/RealSleepBG', -150, -200);
	scaleObject('bgin1', 1.2, 1.2);
	addLuaSprite('bgin1', false);
	addAnimationByPrefix('bgin1', 'green', 'idle0000', 1, false);
	addAnimationByPrefix('bgin1', 'red', '20000', 1, false);
	addAnimationByPrefix('bgin1', 'blue', '30000', 1, false);
	doTweenAlpha('bgin1Gone', 'bgin1', 0, 0.0001, linear);


end

function onUpdate()

    if curStep == 0 then
    	triggerEvent('Camera Follow Pos','715','250')
    end

end

function onEvent(name,value1)
	if name == '' then 

		if value1 == 'tvgone1' then
			objectPlayAnimation('bgin1','blue',true)
			doTweenAlpha('bg1Gone', 'bg1', 0, 0.0001, linear);
			doTweenAlpha('bgin1Gone', 'bgin1', 1, 0.0001, linear);
			doTweenAlpha('gfGone', 'gf', 0, 0.0001, linear);
		end

		if value1 == 'tvbg' then
			doTweenAlpha('bg1Gone', 'bg1', 1, 0.0001, linear);
			doTweenAlpha('bgin1Gone', 'bgin1', 0, 0.0001, linear);
		end

		if value1 == 'both' then
			doTweenAlpha('bg1Gone', 'bg1', 0, 0.0001, linear);
			doTweenAlpha('bg2Gone', 'bg2', 1, 0.0001, linear);
			doTweenAlpha('bgin1Gone', 'bgin1', 0, 0.0001, linear);
		    doTweenAlpha('tvGone', 'tv', 1, 0.0001, linear);
		end

		if value1 == 'dad1' then
			doTweenAlpha('dadGone', 'dad', 1, 0.001, linear);
		end

		if value1 == 'blue' then
			doTweenAlpha('bg1Gone', 'bg1', 0, 0.0001, linear);
			doTweenAlpha('bgin1Gone', 'bgin1', 1, 0.0001, linear);
			doTweenAlpha('gfGone', 'gf', 0, 0.001, linear);
			objectPlayAnimation('bgin1','blue',true)
		end

		if value1 == 'green' then
			doTweenAlpha('bg1Gone', 'bg1', 0, 0.0001, linear);
			doTweenAlpha('bgin1Gone', 'bgin1', 1, 0.0001, linear);
			doTweenAlpha('gfGone', 'gf', 0, 0.001, linear);
			objectPlayAnimation('bgin1','green',true)
		end

		if value1 == 'red' then
			doTweenAlpha('tvGone', 'tv', 0, 0.0001, linear);
			doTweenAlpha('bg1Gone', 'bg1', 0, 0.0001, linear);
			doTweenAlpha('bgin1Gone', 'bgin1', 1, 0.0001, linear);
			objectPlayAnimation('bgin1','red',true)
			doTweenAlpha('bg2Gone', 'bg2', 0, 0.0001, linear);
			doTweenAlpha('gfGone', 'gf', 0, 0.0001, linear);
		end

		if value1 == 'noinside' then
			doTweenAlpha('bgin1Gone', 'bgin1', 0, 1, linear);
			doTweenAlpha('dadGone', 'dad', 0, 1, linear);
		end

		if value1 == 'moon1' then
			doTweenAlpha('moonGone', 'moon', 1, 20, linear)
		end

		if value1 == 'moon0' then
			doTweenAlpha('moonGone', 'moon', 0, 0.001, linear)
		end

		if value1 == 'negro' then
			doTweenAlpha('tvGone', 'tv', 0, 0.0001, linear);
			doTweenAlpha('bg1Gone', 'bg1', 0, 0.0001, linear);
			doTweenAlpha('bgin1Gone', 'bgin1', 1, 0.0001, linear);
			doTweenAlpha('bg2Gone', 'bg2', 0, 0.0001, linear);
		end

	end
end


