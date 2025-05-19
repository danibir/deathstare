if host != noone and instance_exists(host)
{
	host.move = false
	if host.liveinput != -4
		if host.state = "fight"
		{
			var input = host.liveinput
			if abs(host.xspeed) < host.stats.stat_speed / 2 and abs(host.yspeed) < host.stats.stat_speed / 2
			host.startaccel = 2.5
			host.startaccel -= 1/60 * 5 * global.time
			
			if host.startaccel < 1
				host.startaccel = 1

			var maxdash = 4
			if host.liveinput.shift and host.stamina > 0
			{
				host.stamina -= 0.3
				host.breath = 0
			}
			if host.liveinput.shift and host.stamina > 0
			{
				dashspeed = lerp(dashspeed, maxdash, 0.4)
			}
			else
			{
				dashspeed = lerp(dashspeed, 1, 0.4)
			}
			
			if (input.walkleft)
			{
				host.move = true
				var mul = 1
				if input.walkup and !input.walkdown or input.walkdown and !input.walkup
					mul = 0.8
				host.xspeed -= host.stats.stat_speed / 1.5 * host.startaccel * mul * dashspeed
			}
			if (input.walkright)
			{
				host.move = true
				var mul = 1
				if input.walkup and !input.walkdown or input.walkdown and !input.walkup
					mul = 0.8
				host.xspeed += host.stats.stat_speed/ 1.5 * host.startaccel * mul * dashspeed
			}
			if (input.walkup)
			{
				host.move = true
				var mul = 1
				if input.walkleft and !input.walkright or input.walkright and !input.walkleft
					mul = 0.8
				host.yspeed -= host.stats.stat_speed / 1.5 * host.startaccel * mul * dashspeed
			}
			if (input.walkdown)
			{
				host.move = true
				var mul = 1
				if input.walkleft and !input.walkright or input.walkright and !input.walkleft
					mul = 0.8
				host.yspeed += host.stats.stat_speed / 1.5 * host.startaccel * mul * dashspeed
			}
			if input.mb_leftpress and normalattackcooldown < 0
			{
		
				var bullet = instance_create_layer(host.x, host.y - host.stats.stat_size * 16, "Instances", obj_bullethitbox)
				bullet.host = host
		
				bullet.thedirection = 360 - host.pointer.image_angle
				move_in_direction(bullet, bullet.thedirection, host.size * 16)
				bullet.damage = host.stats.stat_strength
				bullet.thespeed = host.stats.stat_shotspeed
				bullet.size = host.stats.stat_shotsize
				bullet.range = host.stats.stat_range
				var items = host.stats.items
				var speciallist = []
				for (var i = 0; i < array_length(items); i++)
				{
					var item = struct_get(obj_dictionary.passiveitemstruct, items[i])
					var special = struct_get(item, "special")
					for (var o = 0; o < array_length(special); o++)
					{
						var specialeffect = special[o]
						if string_copy(specialeffect, 1, 2) = "a_"
						{
							array_push(speciallist, specialeffect)
						}
					}
				}
				bullet.special = speciallist
				//*/
		
				normalattackcooldown = 1 / host.stats.stat_attackspeed
			}
		//*/
		}

	normalattackcooldown -= global.time / 60
}