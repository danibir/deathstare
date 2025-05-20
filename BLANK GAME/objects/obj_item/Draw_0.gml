draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_sprite_stretched(spr_square, 0, x - sprite_width * 0.4, y - sprite_height * 0.4, sprite_width * 0.8, sprite_width * 0.8)
if sprite != noone
		draw_sprite_stretched(sprite, 0, x - sprite_width * 0.4, y - sprite_height * 0.4, sprite_width * 0.8, sprite_width * 0.8)
if button != noone
{
	var iteminfo = struct_get(obj_dictionary.itemstruct, item)
	if iteminfo != undefined
	{
	draw_text(x, y - sprite_height * 0.45, struct_get(iteminfo, "name"))
	draw_text(x, y + sprite_height * 0.2, struct_get(iteminfo, "description"))
	}
	else
	{
	draw_text(x, y - sprite_height * 0.45, item)
	}
}