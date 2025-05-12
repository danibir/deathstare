if fps != 0
{
move_in_direction(self, thedirection, thespeed * 1/fps)
image_angle = 360 - thedirection mod 360

image_xscale = sqrt(damage)
image_yscale = sqrt(damage)

range -= thespeed / 64 * 1/fps
if range < 0
	instance_destroy()
}