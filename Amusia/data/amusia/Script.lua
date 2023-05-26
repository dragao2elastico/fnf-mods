function onCreatePost()
    luaDebugMode = true;
    doTweenX('jiggly', 'dad', 1500, 0.1, 'Linear');
    doTweenX('Pony', 'boyfriend', -1500, 0.1, 'Linear');
    initLuaShader("pincushion")
    setSpriteShader("background", "pincushion")
    setProperty('iconP2.y', 520);
    
end


function onStepHit()
    if curStep == 1 then
        doTweenAlpha('bang', 'bang', 1, 0.2, 'Linear'); 
        function onUpdate(elapsed)
            function onMoveCamera(focus)
                if focus == 'dad' then
                    doTweenZoom('in','camGame',0.7,9,'ExpoOut')
                else
                    doTweenZoom('in','camGame',1,9,'ExpoOut')
                end
            end
        end  
    end
    if curStep == 4 then
        doTweenAlpha('bang', 'bang',0, 0.2, 'Linear');   
    end
    if curStep == 8 then
        doTweenAlpha('bang', 'bang', 1, 0.2, 'Linear');   
    end
    if curStep == 12 then
        doTweenAlpha('bang', 'bang',0, 0.2, 'Linear');   
    end
    if curStep == 16 then
        doTweenAlpha('bang', 'bang', 1, 0.2, 'Linear'); 
        doTweenX('jiggly', 'dad', -100, 1, 'ExpoOut');  
    end
    if curStep == 20 then
        doTweenAlpha('bang', 'bang',0, 0.2, 'Linear'); 
        doTweenX('pony', 'boyfriend', 500, 1, 'ExpoOut'); 
    end
    if curStep == 24 then
        doTweenAlpha('bang', 'bang', 1, 0.2, 'Linear');    
    end
    if curStep == 28 then
        doTweenAlpha('bang', 'bang',0, 0.2, 'Linear');  
        doTweenAlpha('black', 'black',0, 0.001, 'Linear');   
        cameraFlash("game", "FFFFFF", 0.2,"forced")
    end
    if curStep == 270 then
        doTweenAlpha('static', 'static',0.7, 0.2, 'Linear');  
        doTweenAlpha('statico', 'statico',0.4, 0.7, 'Linear');   

    end
    if curStep == 287 then
        doTweenAlpha('static', 'static',0, 0.2, 'Linear');  
        doTweenAlpha('statico', 'statico',0, 0.7, 'Linear');   

    end

    if curStep == 542 then
        doTweenAlpha('static', 'static',0.7, 0.1, 'Linear');   
    end
    if curStep == 545 then
        doTweenAlpha('static', 'static',0.1, 0.2, 'Linear');   
        doTweenAlpha('background', 'background',0, 0.2, 'Linear'); 
        setSpriteShader("background2", "pincushion")  
        
    end
    if curStep == 787 then
        doTweenX('pony', 'boyfriend', -1000, 0.8, 'ExpoIn');   
        doTweenX('jiggly', 'dad', 1500, 0.8, 'ExpoIn');  
        doTweenX('ponyv', 'wiggly', 1400, 0.8, 'ExpoIn');   
        doTweenX('jigglyv', 'ponyta', -1100, 0.8, 'ExpoIn'); 
        noteTweenX('bfg',4, 93, 1.5, 'expoInOut')
        noteTweenX('bfh',5, 205, 1.5, 'expoInOut')
        noteTweenX('bfb',6, 316, 1.5, 'expoInOut')
        noteTweenX('bfd',7, 428, 1.5, 'expoInOut')
    
        noteTweenX('dadg',0, 732, 1.5, 'expoInOut')
        noteTweenX('dadh',1, 844, 1.5, 'expoInOut')
        noteTweenX('dadb',2, 956, 1.5, 'expoInOut')
        noteTweenX('dadd',3, 1068, 1.5, 'expoInOut')

        noteTweenAngle('bfrh',4, 360, 1.5, 'expoInOut')
        noteTweenAngle('bfrotd',5, 360, 1.5, 'expoInOut')
        noteTweenAngle('bfrb',6, 360, 1.5, 'expoInOut')
        noteTweenAngle('bfrd',7, 360, 1.5, 'expoInOut')

        noteTweenAngle('dadrotd',0, 360, 1.5, 'expoInOut')
        noteTweenAngle('dadrh',1, 360, 1.5, 'expoInOut')
        noteTweenAngle('dadrb',2, 360, 1.5, 'expoInOut')
        noteTweenAngle('dadrd',3, 360, 1.5, 'expoInOut')
        
    end
   if curStep == 801 then
        doTweenX('ponyx', 'dad', 450, 1, 'ExpoOut');   
        doTweenX('jigglyx', 'boyfriend', -500, 1, 'ExpoOut');   
        doTweenX('ponyv', 'wiggly', -800, 1, 'ExpoOut');   
        doTweenX('jigglyv', 'ponyta', 250, 1, 'ExpoOut'); 



local healthBarIsFlip = true
local stickThere = false
function onUpdate(elapsed)
	if healthBarIsFlip == true then
		setProperty('healthBar.flipX', true)

		if getProperty('health') < 2 then
			stickThere = false
		end

		if getProperty('health') >= 2 then
			stickThere = true
		end
	else
		setProperty('healthBar.flipX', false)
	end
end

function onUpdatePost()
	if healthBarIsFlip == true then
		setProperty('iconP1.flipX', true)
		setProperty('iconP2.flipX', true)

		if stickThere == false then
			if getProperty('health') > 0 then
				setProperty('iconP1.x', 216+getProperty('health')*296+getProperty('healthBar.x')-343.5)
				setProperty('iconP2.x', 317+getProperty('health')*297+getProperty('healthBar.x')-343.5)
			end

			if getProperty('health') <= 0 then
				setProperty('iconP1.x', 216+getProperty('healthBar.x')-343.5)
				setProperty('iconP2.x', 317+getProperty('healthBar.x')-343.5)
			end
		end

		if stickThere == true then
		   setProperty('iconP1.x', 808+getProperty('healthBar.x')-343.5)
		   setProperty('iconP2.x', 911+getProperty('healthBar.x')-343.5)
		end

		
	else
		setProperty('iconP1.flipX', false)
		setProperty('iconP2.flipX', false)
	end
  
end

        
        function onUpdate(elapsed)
            function onMoveCamera(focus)
                if focus == 'dad' then
                    doTweenZoom('in','camGame',1,9,'ExpoOut')
                else
                    doTweenZoom('in','camGame',0.8,9,'ExpoOut')
                end
            end
        end  
    end


   
end


