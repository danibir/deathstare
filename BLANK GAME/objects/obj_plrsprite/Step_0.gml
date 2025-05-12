if host != noone
{
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
	var xspeed = 1 + sqrt(abs(host.xspeed)) / (host.speedstat * 12)
	var yspeed = 1 + sqrt(abs(host.yspeed)) / (host.speedstat * 12)
	var aspeed = (xspeed + yspeed) / 2
	if host.yspeed >= 0
	{
	image_xscale = 1 / yspeed * host.size 
	image_yscale = 1 * yspeed * host.size 
	}
	else
	{
	image_xscale = 1 * yspeed * host.size 
	image_yscale = 1 / yspeed * host.size 
	}
	image_angle = 0 + host.xspeed * 5
	flatdepth = layer_get_depth(layer)
	depth = flatdepth + depthindex
}