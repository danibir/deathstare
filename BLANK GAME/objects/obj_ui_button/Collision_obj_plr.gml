if ready > 1
if other.state = "pointer" and (other.liveinput.mb_leftpress) and other.active = true
{
	if not array_contains(entry, other)
		array_push(entry, other)
	if obj_eng_engine.offline = true or array_length(entry) = instance_number(obj_plr)
	if output = "start" 
	{
		obj_eng_transition.next = "Fight"
		instance_destroy()
	}
	if output = "color" and input = 0
	{
		while true
		{
			other.colorid++
			if other.colorid = array_length(struct_get_names(obj_eng_dictionary.colordictionary))
				other.colorid = 0
			var valid = true
			for (var i = 0; i < instance_number(obj_plr); i++)
			{
				if other.player_id != instance_find(obj_plr, i).player_id
				{
					if other.colorid = instance_find(obj_plr, i).colorid
						valid = false
				}
			}
			if valid = true
				break
		}
	}
	input = 1
}