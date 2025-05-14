x = host.x
y = host.y - host.stats.stat_size * 16
image_angle = point_direction(x, y, host.liveinput.mb_x, host.liveinput.mb_y)
depth = host.sprite.depth + 1

image_xscale = host.stats.stat_size / 2
image_yscale = host.stats.stat_size