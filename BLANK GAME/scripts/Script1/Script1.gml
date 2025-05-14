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