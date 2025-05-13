if fps != 0
move_in_direction(self, thedirection, thespeed)
image_angle = 360 - thedirection mod 360

image_xscale = sqrt(damage)
image_yscale = sqrt(damage)

range -= thespeed / 48
if range < 0
	instance_destroy()