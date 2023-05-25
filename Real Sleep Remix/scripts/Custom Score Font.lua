function onCreatePost()
	makeLuaText("scoretext", "skill issue", 1000, 140, 670)
	setTextAlignment("scoretext", 'center')
	setTextSize("scoretext", 20)
	setTextFont("scoretext", "m42.ttf");
	addLuaText("scoretext")
end
function onUpdatePost()
	setProperty("scoreTxt.y", -100)
	setTextString("scoretext", getProperty("scoreTxt.text"))
end