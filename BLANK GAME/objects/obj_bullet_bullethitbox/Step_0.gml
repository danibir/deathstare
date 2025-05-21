
move_in_direction(self, thedirection, thespeed * global.time)

if range > maxrange
	maxrange = range

if array_contains(special, "a_snake")
{
	move_in_direction(self, thedirection - 90, snake * global.time)
	snakeform += snakestrength * global.time
	snake += snakeform * global.time / 5
	if sign(snake) = sign(snakestrength)
		snakestrength *= -1
	move_in_direction(self, thedirection + 90, snake * global.time)
}
if array_contains(special, "a_decel")
{
	move_in_direction(self, thedirection, thespeed * global.time * (-1 + (range / maxrange)))
}


image_angle = 360 - thedirection mod 360

image_xscale = sqrt(damage) * size / 2
image_yscale = sqrt(damage) * size / 2
depth = host.sprite.flatdepth + 95


range -= thespeed / 48 * global.time
if range < 0
	instance_destroy()