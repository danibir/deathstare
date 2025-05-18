if host != noone
{
	var widthratio = sprite_get_width(host.sprite_index) / sprite_get_width(sprite_index)
	var heightratio = sprite_get_height(host.sprite_index) / sprite_get_height(sprite_index)
	
	x = host.x - sprite_get_xoffset(host.sprite_index) + sprite_get_xoffset(spr_smooth) * widthratio
	y = host.y - sprite_get_yoffset(host.sprite_index) + sprite_get_yoffset(spr_smooth) * heightratio
	depth = host.depth + 7
	image_xscale = host.image_xscale * widthratio * 1.2
	image_yscale = host.image_yscale * heightratio * 1.2
	image_angle = host.image_angle
	image_alpha = 0.4
}