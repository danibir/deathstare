x = room_width / 2
y = room_width / 2

image_alpha = 0.5
image_blend = c_teal

stop = false

border = 20

hp = 5
size = 1

speedstat = 1

xspeed = 0
yspeed = 0
startaccel = 1
decel = 0.6
move = false

cameraid = obj_engine.cameraid
obj_engine.cameraid++

liveinput = noone
state = "pointer"
pointer = noone

stats = instance_create_layer(x, y, "Engines", obj_plrstats)
stats.host = self

hitbox = instance_create_layer(x, y, "Engines", obj_hitbox)
hitbox.host = self

sprite = instance_create_layer(x, y, "Instances", obj_plrsprite)
sprite.host = self

tools = instance_create_layer(x, y, "Engines", obj_plrtools)
tools.host = self


//sprite.visible = false