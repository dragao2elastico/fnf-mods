#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main

void mainImage()
{
    vec2 uv = fragCoord.xy / iResolution.xy;

    float amount = 0.0;
    
    amount = (1.0 + sin(iTime*24.0)) * 0.1;
    amount *= 1.0 + sin(iTime*64.0) * 0.1;
    amount *= 1.0 + sin(iTime*76.0) * 0.1;
    amount *= 1.0 + sin(iTime*108.0) * 0.1;
    amount = pow(amount, 1.0);

    amount *= 0.02;
    
    vec4 col;
    col.r = texture( iChannel0, vec2(uv.x+amount,uv.y) ).r;
    col.ga = texture( iChannel0, uv ).ga;
    col.b = texture( iChannel0, vec2(uv.x-amount,uv.y) ).b;

    col.rgb *= (1.0);
    
    fragColor = col;
}