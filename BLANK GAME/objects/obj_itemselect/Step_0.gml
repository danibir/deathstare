var plrdone = true
for (var i = 0; i < instance_number(obj_plr); i++)
{
	var plr = instance_find(obj_plr, i)
	if plr.active = true
		plrdone = false
}
if plrdone = true or not instance_exists(obj_item) and wait <= 0
{
	for (var i = 0; i < instance_number(obj_item); i++)
	{
		var item = instance_find(obj_item, i)
		{
			if item.button != noone
			instance_destroy(item.button)
			item.button = noone
		}
	}
	if not instance_exists(obj_item)
	{
		obj_limetransition.next = "Fight"
		instance_destroy()
	}
}
wait -= 1/60