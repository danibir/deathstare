//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float light_r;
uniform float light_g;
uniform float light_b;

void main()
{
	vec4 thecolor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
	thecolor.r = thecolor.r + (1.0 - thecolor.r) * light_r;
	thecolor.g = thecolor.g + (1.0 - thecolor.g) * light_g;
	thecolor.b = thecolor.b + (1.0 - thecolor.b) * light_b;
	
	gl_FragColor = thecolor;
}
