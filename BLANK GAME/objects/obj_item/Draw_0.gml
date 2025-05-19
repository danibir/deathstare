draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var iteminfo = struct_get(obj_dictionary.passiveitemstruct, item)
draw_text(x, y - sprite_height * 0.45, struct_get(iteminfo, "name"))
if sprite != noone
	draw_sprite_stretched(sprite, 0, x - sprite_width * 0.4, y - sprite_height * 0.4, sprite_width * 0.8, sprite_width * 0.8)
draw_text(x, y + sprite_height * 0, struct_get(iteminfo, "description"))