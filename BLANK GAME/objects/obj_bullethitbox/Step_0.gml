
move_in_direction(self, thedirection, thespeed * global.time)
image_angle = 360 - thedirection mod 360

image_xscale = sqrt(damage) * size
image_yscale = sqrt(damage) * size

range -= thespeed / 48 * global.time
if range < 0
	instance_destroy()