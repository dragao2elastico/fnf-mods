function onCreate()
    doTweenAlpha('boyfriendGone', 'boyfriend', 0, 0.0001, linear);
    doTweenAlpha('dadGone', 'dad', 0, 0.0001, linear);
    doTweenAlpha('fusion2Gone', 'fusion2', 0, 0.0001, linear);
    doTweenAlpha('fusionGone', 'fusion', 0, 0.0001, linear);
    doTweenAlpha('tvGone', 'tv', 0, 0.0001, linear);
end

function onUpdate()

    if curStep == 784 then
        doTweenAlpha('fusion2Gone', 'fusion2', 0.6, 0.0001, linear);
        doTweenAlpha('fusionGone', 'fusion', 0.6, 0.0001, linear);
    end

    if curStep == 912 then
        doTweenX('fusionTweenX', 'fusion2', 550, 12, 'linear')
        doTweenX('fusion2TweenX', 'fusion', 550, 12, 'linear')
    end

    if curStep == 1040 then
        doTweenAlpha('fusion2Gone', 'fusion2', 0, 0.0001, linear);
        doTweenAlpha('fusionGone', 'fusion', 0, 0.0001, linear);
    end

end