
if host != noone
{
	x = host.x
	y = host.y
	image_xscale = host.image_xscale
	image_yscale = host.image_yscale
	image_angle = host.image_angle
	image_alpha = host.image_alpha
	depth = host.flatdepth + host.depthindex
	if host.host.state = "fight"
	{
		if type = "back"
		{
			depth += 1
			sprite = host.back_skin
		}
		if type = "mouth"
		{
			depth -= 1
			sprite = host.mouth_skin
		}
		if type = "eyes"
		{
			depth -= 2
			sprite = host.eyes_skin
			if host.host.pointer != noone
			move_in_direction(self, 360 - host.host.pointer.image_angle, host.host.size)
		}
		if type = "hat"
		{
			depth -= 2
			sprite = host.hat_skin
		}
	}
	else
		sprite = noone
		
	sprite_index = sprite
}