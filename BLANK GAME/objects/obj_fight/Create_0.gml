var thedir = random_range(0, 360)
for (var i = 0; i < instance_number(obj_plr); i++)
{
	var plr = instance_find(obj_plr, i)
	
	var length = min(room_width, room_height) * 0.4;   // pixels
	plr.x = room_width / 2
	plr.y = room_height / 2
	move_in_direction(plr, thedir, length)
	thedir += 360 / instance_number(obj_plr)
	plr.state = "fight"
	plr.active = true
	plr.lifecount = plr.stats.stat_lives
	plr.hp = plr.stats.stat_hp
}
count = 0