liveinput = rollback_get_input();

xspeed *= decel
yspeed *= decel

sprite.sprite_index = noone
if state = "fight"
{
	if pointer = noone
	{
		pointer = instance_create_layer(x, y, "Pointer", obj_pointer)
		pointer.host = self
	}
	sprite.sprite_index = Sprite3
	layer_add_instance("Instances", sprite)
		if abs(xspeed) < speedstat / 2 and abs(yspeed) < speedstat / 2
	startaccel = 2.5
	startaccel -= 1/fps * 5

	if startaccel < 1
		startaccel = 1

	if (liveinput.walkleft)
	{
		var mul = 1
		if liveinput.walkup and !liveinput.walkdown or liveinput.walkdown and !liveinput.walkup
			mul = 0.7
		xspeed -= speedstat / 1.5 * startaccel
	}
	if (liveinput.walkright)
	{
		var mul = 1
		if liveinput.walkup and !liveinput.walkdown or liveinput.walkdown and !liveinput.walkup
			mul = 0.7
		xspeed += speedstat / 1.5 * startaccel
	}
	if (liveinput.walkup)
	{
		var mul = 1
		if liveinput.walkleft and !liveinput.walkright or liveinput.walkright and !liveinput.walkleft
			mul = 0.7
		yspeed -= speedstat / 1.5 * startaccel
	}
	if (liveinput.walkdown)
	{
		var mul = 1
		if liveinput.walkleft and !liveinput.walkright or liveinput.walkright and !liveinput.walkleft
			mul = 0.7
		yspeed += speedstat / 1.5 * startaccel
	}
	if (liveinput.mb_leftpress)
	{
		
	}
}
if state = "pointer"
{
	if pointer != noone
	{
		instance_destroy(pointer)
		pointer = noone
	}
	sprite.sprite_index = Sprite7
	layer_add_instance("Pointer", sprite)
	x = liveinput.mb_x
	y = liveinput.mb_y
}

x += xspeed
y += yspeed

if x < 0 + border
	x = 0 + border
if x > room_width - border
	x = room_width - border
if y < 0 + border
	y = 0 + border
if y > room_height - border
	y = room_height - border