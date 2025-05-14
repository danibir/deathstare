
liveinput = rollback_get_input();

xspeed *= decel
yspeed *= decel

if state = "fight"
{
	sprite.sprite_index = spr_plr
	if pointer = noone
	{
		pointer = instance_create_layer(x, y, "Pointer", obj_pointer)
		pointer.host = self
	}
}
if state = "pointer"
{
	if pointer != noone
	{
		instance_destroy(pointer)
		pointer = noone
	}
	sprite.sprite_index = spr_mousepointer
	layer_add_instance("Pointer", sprite)
	x = liveinput.mb_x
	y = liveinput.mb_y
}

x += xspeed * 1 * global.time
y += yspeed * 1 * global.time  

if x < 0 + border
	x = 0 + border
if x > room_width - border
	x = room_width - border
if y < 0 + border
	y = 0 + border
if y > room_height - border
	y = room_height - border