x = lerp(room_width / 2 + threshold, room_width / 2 - threshold, length)
if next != noone or length > 0.5
{
	length += 1/60
	for (var i = 0; i < 5; i++)
	{
		var particle = instance_create_layer(x + sprite_width / 3, y + random_range(0, sprite_height / 2) * choose(-1, 1), "Floor", obj_particle_particle)
		particle.upspeed = sqr(random_range(1, 2.5))
		particle.mydirection = random_range(0, 90) - 45
		particle.permanent = true
		particle.size = random_range(0.2, 4)
		particle.image_blend = c_lime
	}
}
if length > 0.5
{
	if next != noone
	{
		with obj_ui_button
			instance_destroy()
	}
	if next = "Start"
	{
		var button = instance_create_layer(room_width / 2, room_height * 5/6, "UI", obj_ui_button)
		button.output = "start"
		button.image_xscale = 20
		button.image_yscale = 7
		button.text = "Start!"
	
		var colorbutton = instance_create_layer(room_width / 2, room_height / 2, "UI", obj_ui_button)
		colorbutton.output = "color"
		colorbutton.image_xscale = 20
		colorbutton.image_yscale = 15
		colorbutton.text = "Change color!"
	}
	if next = "Fight"
	{
		instance_create_layer(x, y, "Engines", obj_eng_fight)
		particlestat = "Fight"
	}
	if next = "Items"
	{
		instance_create_layer(x, y, "Engines", obj_eng_itemselect)
		for (var i = 0; i < instance_number(obj_plr); i++)
		{
			var plr = instance_find(obj_plr, i)
			plr.state = "pointer"
		}
	}
	next = noone
}
if length > 1
{
	particlestat = noone
	length = 0
}