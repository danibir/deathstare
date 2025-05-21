
if fps != 0
global.time = 1
else
global.time = 0

with all
{
	if asset_has_tags(object_index, "hasShadow") and not array_contains(global.shadowlist, self)
	{
		var shadow = instance_create_layer(0, 0, "shadow", obj_shadow)
		shadow.host = self
		array_push(global.shadowlist, self)
	}
}
if not rollback_game_running and keyboard_check_pressed(vk_enter)
{
    rollback_start_game()
}
if instance_exists(obj_plr) and start = true
{
	instance_create_layer(room_width * 1.6, room_height / 2, "Limesmile", obj_eng_transition)
	obj_eng_transition.next = "Start"
	
	start = false
}
if instance_exists(obj_plr)
{
	var playerlist = []
	for (var i = 0; i < instance_number(obj_plr); i++)
		array_push(playerlist, instance_find(obj_plr, i))
	var depthlist = []
	for (var i = 0; i < array_length(playerlist); i++)
	{
		if i = 0 or depthlist[array_length(depthlist) - 1].y < playerlist[i].y
		{
			array_push(depthlist, playerlist[i])
		}
		else
		{
			var index = array_length(depthlist)
			for (var j = 0; j < array_length(depthlist); j++)
			{
				var reversej = array_length(depthlist) - j - 1
				if depthlist[j].y > playerlist[i].y
					index--
			}
			array_insert(depthlist, index, playerlist[i])
		}
	}
	for (var i = 0; i < array_length(depthlist); i++)
	{
		depthlist[i].sprite.depthindex = (array_length(depthlist) - i) * (90 / array_length(depthlist))
	}
}