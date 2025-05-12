
host.move = false
if host.state = "fight"
{
	var input = host.liveinput
	if abs(host.xspeed) < host.speedstat / 2 and abs(host.yspeed) < host.speedstat / 2
	host.startaccel = 2.5
	host.startaccel -= 1/fps * 5

	if host.startaccel < 1
		host.startaccel = 1

	if (input.walkleft)
	{
		host.move = true
		var mul = 1
		if input.walkup and !input.walkdown or input.walkdown and !input.walkup
			mul = 0.7
		host.xspeed -= host.speedstat / 1.5 * host.startaccel
	}
	if (input.walkright)
	{
		host.move = true
		var mul = 1
		if input.walkup and !input.walkdown or input.walkdown and !input.walkup
			mul = 0.7
		host.xspeed += host.speedstat / 1.5 * host.startaccel
	}
	if (input.walkup)
	{
		host.move = true
		var mul = 1
		if input.walkleft and !input.walkright or input.walkright and !input.walkleft
			mul = 0.7
		host.yspeed -= host.speedstat / 1.5 * host.startaccel
	}
	if (input.walkdown)
	{
		host.move = true
		var mul = 1
		if input.walkleft and !input.walkright or input.walkright and !input.walkleft
			mul = 0.7
		host.yspeed += host.speedstat / 1.5 * host.startaccel
	}
	if input.mb_leftpress and normalattackcooldown < 0
	{
		var bullet = instance_create_layer(host.x, host.y - host.size * 16, "Instances", obj_bullet)
		bullet.thedirection = 360 - host.pointer.image_angle
		bullet.damage = host.stats.strengthstat
		bullet.thespeed = host.stats.shotspeedstat
		bullet.range = host.stats.rangestat
		normalattackcooldown = 1 / host.stats.attackspeedstat
	}
//*/
}
if fps != 0
normalattackcooldown -= 1 / fps