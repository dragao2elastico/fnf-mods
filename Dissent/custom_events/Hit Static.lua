local scl = 3.3
local ysno = 0
function onCreate()
	makeAnimatedLuaSprite('static', 'disabledBG/static-overlay', -5, 0);
	addAnimationByPrefix('static', 'estatica', 'static-overlay', 24, true);
	scaleObject('static', scl, scl)
	setObjectCamera('static','other');
	setProperty('static.visible', false);
	setProperty('static.alpha',0.7);
	addLuaSprite('static', false);
end

function onEvent(n,v1,v2)

	if n == 'Hit Static' then
		ysno = tonumber(v1)
		if ysno == 0 then
			setProperty('static.visible', false);
		else
			setProperty('static.visible', true);
			objectPlayAnimation('static', 'static-overlay', true);
		end
	end
end