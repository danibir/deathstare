/*
var _count = 0
for (var i = 0; i < instance_number(obj_plr); i++)
{
	var plr = instance_find(obj_plr, i)
	if plr.hp <= 0 and plr.lifecount <= 0
	{}
	else
		_count++
}
if _count <= 1
for (var i = 0; i < instance_number(obj_plr); i++)
{
	var plr = instance_find(obj_plr, i)
	if plr.hp <= 0 and plr.lifecount <= 0
	{
		plr.tools = instance_create_layer(x, y, "Engines", obj_plr_tools)
		plr.tools.host = plr
		plr.hitbox = instance_create_layer(x, y, "Engines", obj_plr_hitbox)
		plr.hitbox.host = plr
	}
	else
	{
		plr.active = false
	}
	obj_eng_transition.next = "Items"
	instance_destroy()	
}
count = _count