function onEvent(name, value1, value2)
    local var string = (value1)
    local var color = (value2)
    if name == "lyrics" then

        makeLuaText('captions', 'Lyrics go here', 1000, 150, 360)
        setTextString('captions',  '' .. string)
        setTextFont('captions', 'fnf.ttf')
        setTextColor('FFFFFF', FFFFFF)
        setTextSize('captions', 35);
        addLuaText('captions')
	setObjectCamera('captions', 'other');
        setTextAlignment('captions', 'center')
        
    end
end

