button.image_xscale = (button.image_xscale / button.sprite_width) * sprite_width
button.image_yscale = (button.image_yscale / button.sprite_width) * sprite_width


var iteminfo = struct_get(obj_dictionary.passiveitemstruct, item)
sprite = sprite_from_num(struct_get(iteminfo, "icon"))