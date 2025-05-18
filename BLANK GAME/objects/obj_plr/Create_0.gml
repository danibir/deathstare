x = room_width / 2
y = room_width / 2

stop = false

border = 20

xspeed = 0
yspeed = 0
startaccel = 1
decel = 0.6
move = false

flicker = 5

lightencolor = [0, 0, 0]

cameraid = obj_engine.cameraid
obj_engine.cameraid++

liveinput = noone
state = "pointer"
pointer = noone



stats = instance_create_layer(x, y, "Engines", obj_plrstats)
stats.host = self

hp = 0
size = stats.stat_size
lifecount = 0
speedstat = stats.stat_size

hitbox = instance_create_layer(x, y, "Screen", obj_hitbox)
hitbox.host = self

sprite = instance_create_layer(x, y, "Instances", obj_plrsprite)
sprite.host = self

tools = instance_create_layer(x, y, "Engines", obj_plrtools)
tools.host = self

colorid = player_id
lightencolor = get_set_color_rgb(struct_get_names(obj_dictionary.colordictionary)[colorid])

//sprite.visible = false