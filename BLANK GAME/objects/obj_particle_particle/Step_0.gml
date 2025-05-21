image_xscale = size
image_yscale = size

move_in_direction(self, mydirection, myspeed)

if yaxis <= 0
{
	for (var i = 0; i < 3; i++)
	{
		var obj = choose(obj_particle_bits, obj_particle_particle)
		if abs(size) < 10
		obj = obj_particle_bits
		var theobj = instance_create_layer(x, y, "Floor", obj)
		theobj.myspeed = abs(upspeed)
		theobj.size = size / (random_range(1.5, 2.5))
		theobj.image_blend = image_blend
		theobj.permanent = permanent
		if obj = obj_particle_particle
		{
			theobj.myspeed = myspeed
			theobj.upspeed = -upspeed / 2
		}
	}
	instance_destroy()
}

y += yaxis
yaxis += upspeed
y -= yaxis

var mygrav = 0.2
if fly = false
upspeed -= mygrav

if fly = true and y < room_height * -0.2
	instance_destroy()