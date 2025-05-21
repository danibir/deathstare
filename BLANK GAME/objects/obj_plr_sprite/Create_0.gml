

host = noone
flatdepth = layer_get_depth(layer)
depthindex = 0
step = 0
stepside = choose(-1, 1)
yaxis = 0

aura = instance_create_layer(x, y, "Instances", obj_spraura)
aura.host = self

back_skin = noone
back_decal = instance_create_layer(x, y, "Instances", obj_plr_decal)
back_decal.host = self
back_decal.type = "back"

body_skin = real(spr_plrbody_default)

mouth_skin = real(spr_plrmouth_default)
mouth_decal = instance_create_layer(x, y, "Instances", obj_plr_decal)
mouth_decal.host = self
mouth_decal.type = "mouth"

eyes_skin = real(spr_plreyes_default)
eyes_decal = instance_create_layer(x, y, "Instances", obj_plr_decal)
eyes_decal.host = self
eyes_decal.type = "eyes"

hat_skin = noone
hat_decal = instance_create_layer(x, y, "Instances", obj_plr_decal)
hat_decal.host = self
hat_decal.type = "hat"

