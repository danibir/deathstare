playerlist = []
for (var i = 0; i < instance_number(obj_plr); i++)
	array_push(playerlist, instance_find(obj_plr, i))

var thedir = random_range(0, 360) * 4

for (var i = 0; i < array_length(playerlist); i++)
{

	var length = min(room_width, room_height) * 0.4;   // pixels
	var plr = playerlist[i]
	plr.x = room_width / 2
	plr.y = room_height / 2
	move_in_direction(plr, thedir, length)
	thedir += 360 / array_length(playerlist)
	plr.state = "fight"
}