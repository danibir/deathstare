var itemcount = 3
for (var i = 0; i < itemcount; i++)
{
	var dis = room_width * 0.7
	var distrubution = (i - (itemcount - 1) / 2) / ((itemcount - 1) / 2)
	var item = instance_create_layer(room_width / 2 + (dis / 2) * distrubution, y, "UI", obj_item)
	var getitem = struct_get_names(obj_dictionary.itemstruct)[floor(random_range(0, struct_names_count(obj_dictionary.itemstruct) - 1))]
	item.item = getitem
}
wait = 3