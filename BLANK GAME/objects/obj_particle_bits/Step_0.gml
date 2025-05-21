move_in_direction(self, mydirection, myspeed)
myspeed *= 1 - decel

if myspeed <= 0.1 and permanent = false
{
	time -= 1/60
}
if time <= 0
{
	size *= 1 - sqrt(abs(time)) / 20
}
image_xscale = size
image_yscale = size
if size < 0.1
	instance_destroy()