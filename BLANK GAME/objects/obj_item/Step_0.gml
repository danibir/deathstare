if not instance_exists(button)
{
	button = noone
}
if button != noone
{
	button.image_xscale = (button.image_xscale / button.sprite_width) * sprite_width
	button.image_yscale = (button.image_yscale / button.sprite_height) * sprite_height
	if array_length(button.entry) > 0
	{
		button.entry[0].active = false
		array_push(button.entry[0].stats.items, item)
		instance_destroy(button)
	}
}
else
{
	decay += 0.5 / (decay + 1)
}
image_alpha -= lerp(1, 0, 1 - decay / 100)
image_xscale -= lerp(xscale, 0, 1 - decay/100)
image_yscale -= lerp(yscale, 0, 1 - decay/100)
	
if image_alpha <= 0
	instance_destroy()
var iteminfo = struct_get(obj_dictionary.itemstruct, item)
if iteminfo != undefined
sprite = sprite_from_num(struct_get(iteminfo, "icon"))