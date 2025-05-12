if host = noone
{
	image_xscale *= 0.95
	image_yscale *= 0.95
	if (image_xscale + image_yscale) / 2 < + 0.01
	instance_destroy()
}
else
{
	image_xscale /= sprite_width
	image_yscale /= sprite_height
	if host.sprite_index != -1
	{
	image_xscale *= host.sprite_width * 2/3
	image_yscale *= host.sprite_height / 3
	image_alpha = host.image_alpha * defaultalpha
	}//*/
	x = host.x
	y = host.y// + host.sprite_height / 2 //*/
}