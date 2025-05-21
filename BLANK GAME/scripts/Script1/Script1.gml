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
	
	array_push(colorrgblist, struct_get(struct_get(obj_eng_dictionary.colordictionary, color_name), "r"))
	if struct_get(struct_get(obj_eng_dictionary.colordictionary, color_name), "name") = "yellow"
		show_message("r")
	array_push(colorrgblist, struct_get(struct_get(obj_eng_dictionary.colordictionary, color_name), "g"))
	if struct_get(struct_get(obj_eng_dictionary.colordictionary, color_name), "name") = "yellow"
		show_message("g")
	array_push(colorrgblist, struct_get(struct_get(obj_eng_dictionary.colordictionary, color_name), "b"))
	if struct_get(struct_get(obj_eng_dictionary.colordictionary, color_name), "name") = "yellow"
		show_message("b")

	
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