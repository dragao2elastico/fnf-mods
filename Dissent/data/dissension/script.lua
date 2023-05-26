function onCreatePost()
    luaDebugMode = true
   initLuaShader("chromaticAbberation")
   
   makeLuaSprite("shaderImage")
   makeGraphic("shaderImage", screenWidth, screenHeight)
   
   setSpriteShader("shaderImage", "chromaticAbberation")
   
   addHaxeLibrary("ShaderFilter", "openfl.filters")
end

function onStepHit()
    if curStep >= 400 then
        runHaxeCode([[
            trace(ShaderFilter);
            game.camGame.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
            game.camOther.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
            game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
        ]])
    end
end