function onStepHit()
	if curStep == 1024 then
		function onBeatHit()
			if curBeat % 1== 0 then
				triggerEvent('Add Camera Zoom', '0.15', '0.10');
			end
		end
			if curStep == 2078 then
				function onBeatHit()
				if curBeat % 1== 0 then
					triggerEvent('Add Camera Zoom', '0.0', '0.0');
				end
			end
		end
	end
end