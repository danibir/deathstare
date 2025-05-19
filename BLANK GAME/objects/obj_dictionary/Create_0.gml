plrdefaultstats = {
	hpstat: 15,
	livesstat: 3,
	sizestat: 1,
	speedstat: 1,
	strengthstat: 3.5,
	attackspeedstat: 3,
	shotspeedstat: 10,
	shotsizestat: 1,
	rangestat: 6,
	bullettype: obj_bullethitbox
}

function colorset (_name, _r, _g, _b) 
	constructor {
	name = _name
	r = _r / 255
	g = _g / 255
	b = _b / 255
}
colordictionary = {
	a: new colorset("Red", 255, -255, -128),
	b: new colorset("Yellow", 255, 255, 0),
	c: new colorset("Green", -255, 64, -255),
	d: new colorset("Cyan", 0, 255, 255),
	e: new colorset("Blue", 0, 0, 255),
	f: new colorset("Purple", 255, 0, 255)
}

function passiveitem_set(_name, _icon, _call, _description, _decor, _hpstat, _livesstat, _speedstat, _sizestat, _strengthstat, _attackspeedstat, _shotspeedstat, _shotsizestat, _rangestat, _special)
	constructor {
	name = _name
	icon = real(_icon)
	call = _call
	description = _description
	decor = real(_decor)
	hpstat = _hpstat
	livesstat = _livesstat
	speedstat = _speedstat
	sizestat = _sizestat
	strengthstat = _strengthstat
	attackspeedstat = _attackspeedstat
	shotspeedstat = _shotspeedstat
	shotsizestat = _shotsizestat
	rangestat = _rangestat
	special = _special
	}


passiveitemstruct = {
	bubbles: new passiveitem_set("Bubbles", real(spr_soapy), "Tastes... soapy", "Damage down\nShotspeed down",
			spr_plrhat_soapy, 0, 0, 0, 0, -0.5, 0, -7, 1, 5, ["a_decel"]),
	stupid: new passiveitem_set("Stupid", noone, "", "",
			spr_plreyes_googlyeyes, 0, 0, 0, 0, 0, 100, -8, 0, 10, ["a_snake"])
		
}