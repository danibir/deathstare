
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
		for (var i = 0; i < stats.stat_hp * 5; i++)
		{
			var bits = instance_create_layer(x, y, "Floor", obj_particle_bits)
			bits.image_blend = c_yellow
			bits.myspeed = random_range(0, sqr(size * 4))
			bits.decel = 0.005
		}
		state = "pointer"
		if lifecount > 0
		{
			lifecount--
		}
		if lifecount > 0
		{
			respawn = true
			respawntimer = maxrespawntimer
		}
	}
}
else
{
	flicker = 0.5
}

image_blend = c_white
if state = "fighte"
{
	if pointer = noone
	{
		pointer = instance_create_layer(x, y, "Pointer", obj_plr_pointer)
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
	if active = false
		image_blend = c_gray
	if respawn = true and respawntimer <= 0
	{
		hp = stats.stat_hp
		state = "fight"
		hitbox = instance_create_layer(x, y, "Instances", obj_plr_hitbox)
		hitbox.host = self
		tools = instance_create_layer(x, y, "Instances", obj_plr_tools)
		tools.host = self
		respawn = false
	}
}
respawntimer -= 1 / 60 * global.time

x += xspeed * 1 * global.time
y += yspeed * 1 * global.time  

image_xscale = stats.stat_size
image_yscale = stats.stat_size

if x < 0 + border
	x = 0 + border
if x > room_width - border
	x = room_width - border
if y < 0 + border
	y = 0 + border
if y > room_height - border
	y = room_height - border
	
var colorname = struct_get_names(obj_eng_dictionary.colordictionary)[colorid]
lightencolor = get_set_color_rgb(colorname)