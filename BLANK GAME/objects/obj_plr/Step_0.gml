
liveinput = rollback_get_input();

xspeed *= decel
yspeed *= decel

stamina += 1*60 / global.time * breath
stamina = min(stamina, maxstamina)
breath += 1/60 / global.time / 1200
breath = min(breath, 2)

flicker -= 1/60
image_alpha = 1
if hp <= 0 and state = "fight"
{
	if tools != noone
	instance_destroy(tools)
	tools = noone
	if hitbox != noone
	instance_destroy(hitbox)
	hitbox = noone
	move = false
	var flickertime = 1/10
	if flicker % flickertime <= flickertime / 2
		image_alpha = 0
	if flicker <= 0
	{
		state = "pointer"
		if lifecount > 1
		{
			lifecount--
			respawn = true
			respawntimer = maxrespawntimer
		}
	}
}
else
{
	flicker = 0.5
}


if state = "fight"
{
	if pointer = noone
	{
		pointer = instance_create_layer(x, y, "Pointer", obj_pointer)
		pointer.host = self
	}
	layer_add_instance("Instances", sprite)
}
if state = "pointer"
{
	if pointer != noone
	{
		instance_destroy(pointer)
		pointer = noone
	}
	layer_add_instance("Pointer", sprite)
	x = liveinput.mb_x
	y = liveinput.mb_y
	
	if respawn = true and respawntimer <= 0 and liveinput.mb_leftpress
	{
		hp = stats.stat_hp
		state = "fight"
		hitbox = instance_create_layer(x, y, "Instances", obj_hitbox)
		hitbox.host = self
		tools = instance_create_layer(x, y, "Instances", obj_plrtools)
		tools.host = self
		respawn = false
	}
}
respawntimer -= 1 / 60 * global.time

x += xspeed * 1 * global.time
y += yspeed * 1 * global.time  

image_xscale = size
image_yscale = size

if x < 0 + border
	x = 0 + border
if x > room_width - border
	x = room_width - border
if y < 0 + border
	y = 0 + border
if y > room_height - border
	y = room_height - border
	
	
lightencolor = get_set_color_rgb(struct_get_names(obj_dictionary.colordictionary)[colorid])