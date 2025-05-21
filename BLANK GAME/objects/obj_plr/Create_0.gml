
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
respawn = false
maxrespawntimer = 5
respawntimer =  maxrespawntimer
active = true

lightencolor = [0, 0, 0]

cameraid = obj_eng_engine.cameraid
obj_eng_engine.cameraid++

liveinput = noone
state = "pointer"
pointer = noone

maxstamina = 10
stamina = maxstamina
breath = 3

stats = instance_create_layer(x, y, "Engines", obj_plr_stats)
stats.host = self

hp = 0
size = stats.stat_size
lifecount = 0
speedstat = stats.stat_size

hitbox = instance_create_layer(x, y, "Screen", obj_plr_hitbox)
hitbox.host = self

sprite = instance_create_layer(x, y, "Instances", obj_plr_sprite)
sprite.host = self

tools = instance_create_layer(x, y, "Engines", obj_plr_tools)
tools.host = self

colorid = player_id
lightencolor = get_set_color_rgb(struct_get_names(obj_eng_dictionary.colordictionary)[colorid])

//sprite.visible = false