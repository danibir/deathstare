function move_in_direction (subject, thedir, length)
{
	var x_offset = length * cos(degtorad(thedir));
	var y_offset = length * sin(degtorad(thedir));
	subject.x += x_offset
	subject.y += y_offset
}

function item_apply ()
{
	
}
function get_set_color_rgb (color_name)
{
	var colorrgblist = []
	
	array_push(colorrgblist, struct_get(struct_get(obj_dictionary.colordictionary, color_name), "r"))
	array_push(colorrgblist, struct_get(struct_get(obj_dictionary.colordictionary, color_name), "g"))
	array_push(colorrgblist, struct_get(struct_get(obj_dictionary.colordictionary, color_name), "b"))
	
	return colorrgblist
}

function sprite_from_num (num)
{
	var old_index = sprite_index
	sprite_index = num
	var sprite_num = sprite_index
	sprite_index = old_index
	return sprite_num
}