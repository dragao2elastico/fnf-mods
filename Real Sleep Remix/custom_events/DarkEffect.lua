-- The first event mabe by me(Scarlet Eye) --
function onEvent(name, value1, value2)
	if name == 'BlueEffect' then
		if value1 then -- begining
		makeLuaSprite('D', 'DarkEffect', 0, 0)
	    setObjectCamera('D', 'object')
	    setObjectOrder('D', 5)
	    addLuaSprite('D', true)
	    doTweenAlpha('D', 'D', 1, value1, 'quadInIn');
	end
	    if value2 then -- end
	    makeLuaSprite('D', 'DarkEffect', 0, 0)
	    setObjectCamera('D', 'object')
	    setObjectOrder('D', 5)
	    addLuaSprite('D', true)
		doTweenAlpha('D', 'D', 0, value2, 'quadInOut');
	    end
	end
end