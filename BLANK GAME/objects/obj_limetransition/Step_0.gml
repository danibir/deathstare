x = lerp(room_width / 2 + threshold, room_width / 2 - threshold, length)
if next != noone or length > 0.5
{
	length += 1/30
}
if length > 0.5
{
	if next != noone
	{
		with obj_button
			instance_destroy()
	}
	if next = "Start"
	{
		var button = instance_create_layer(room_width / 2, room_height * 5/6, "UI", obj_button)
		button.output = "start"
		button.image_xscale = 20
		button.image_yscale = 7
		button.text = "Start!"
	
		var colorbutton = instance_create_layer(room_width / 2, room_height / 2, "UI", obj_button)
		colorbutton.output = "color"
		colorbutton.image_xscale = 20
		colorbutton.image_yscale = 15
		colorbutton.text = "Change color!"
	}
	if next = "Fight"
	{
		instance_create_layer(x, y, "Engines", obj_fight)
	}
	if next = "Items"
	{
		instance_create_layer(x, y, "Engines", obj_itemselect)
	}
	next = noone
}
if length > 1
length = 0