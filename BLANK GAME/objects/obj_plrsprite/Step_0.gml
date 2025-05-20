if host != noone or instance_exists(host)
{
	if host.state = "fight"
	{
		sprite_index = body_skin
	}
	if host.state = "pointer"
	{
		sprite_index = spr_mousepointer
	}
	yaxis += step
	if yaxis < 0
	yaxis = 0
	x = host.x
	y = host.y - yaxis
	if yaxis = 0 and host.move = true
	{
		step = 2
		stepside *= -1
	}
	step -= 1/5
	var xspeed = 1 + sqrt(abs(host.xspeed)) / (host.stats.stat_speed * 12)
	var yspeed = 1 + sqrt(abs(host.yspeed)) / (host.stats.stat_speed * 12)
	var aspeed = (xspeed + yspeed) / 2
	if host.yspeed >= 0
	{
	image_xscale = 1 / yspeed * host.stats.stat_size 
	image_yscale = 1 * yspeed * host.stats.stat_size 
	}
	else
	{
	image_xscale = 1 * yspeed * host.stats.stat_size 
	image_yscale = 1 / yspeed * host.stats.stat_size 
	}
	image_angle = 0 + host.xspeed * 5
	flatdepth = layer_get_depth(layer)
	depth = flatdepth + depthindex
	image_blend = host.image_blend
	image_alpha = host.image_alpha
	var items = host.stats.items
	for (var i = 0; i < array_length(items); i++)
	{
		var item = struct_get(obj_dictionary.itemstruct, host.stats.items[i])
		var itemsprite = sprite_from_num(struct_get(item, "decor"))
		var decortypes = ["hat", "eyes", "mouth", "body", "back"]
		if string_copy(itemsprite, 19, 3) = "hat"
			hat_skin = real(itemsprite)	
		if string_copy(itemsprite, 19, 4) = "eyes"
			eyes_skin = real(itemsprite)		
		if string_copy(itemsprite, 19, 5) = "mouth"
			mouth_skin = real(itemsprite)	
		if string_copy(itemsprite, 19, 4) = "body"
			body_skin = real(itemsprite)		
		if string_copy(itemsprite, 19, 4) = "back"
			back_skin = real(itemsprite)
		
	}
	
}