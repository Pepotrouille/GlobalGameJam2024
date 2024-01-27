shader_type canvas_item;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;
uniform float pixelate: hint_range(4, 512, 2) = 256;

void fragment()
{
    vec2 uv = floor(UV * pixelate) / pixelate;
    COLOR = textureLod(SCREEN_TEXTURE, uv, 0.0);
}