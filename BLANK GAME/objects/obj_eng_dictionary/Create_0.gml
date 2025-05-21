plrdefaultstats = {
	hpstat: 15, //5
	livesstat: 3, //3
	sizestat: 1, //0.3
	speedstat: 1, //0.3
	strengthstat: 4, //1
	attackspeedstat: 3, //1
	shotspeedstat: 9, //3
	shotsizestat: 1, //0.3
	rangestat: 6, //2
	bullettype: obj_bullet_bullethitbox
}

function colorset (_name, _r, _g, _b) 
	constructor {
	name = _name
	r = _r / 255
	g = _g / 255
	b = _b / 255
}
colordictionary = {
	a: new colorset("Red", 255, -255, -255),
	b: new colorset("Yellow", 255, 255, -255),
	c: new colorset("Green", -255, 255, -255),
	d: new colorset("Cyan", 0, 255, 255),
	e: new colorset("Blue", 0, 0, 255),
	f: new colorset("Purple", 255, 0, 255)
}

function passiveitem_set(_name, _icon, _call, _description, _decor, _hpstat, _livesstat, _speedstat, _sizestat, _strengthstat, _attackspeedstat, _shotspeedstat, _shotsizestat, _rangestat, _special)
	constructor {
	type = "passive"
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

itemstruct = {
	bar_of_soap: new passiveitem_set("Bar of Soap", spr_itemspr_soapy, "Tastes... soapy", "Damage down\nBubbles up!",
			spr_plrhat_soapy, 0, 0, 0, 0, -0.5, 0, -7, 1, 0, ["a_decel"]),
	orange_pill: new passiveitem_set("Orange Pill", spr_itemspr_pill, "", "Stim up",
			noone, -2, 0, 0.3, 0, 0, 1, 1.5, 0, 0, []),
	white_pill: new passiveitem_set("White Pill", spr_itemspr_pill, "", "Resist up?",
			noone, 5, 0, 0, 0, -1, 0, 0, 0, 0, []),
	green_pill: new passiveitem_set("Green Pill", spr_itemspr_pill, "", "Energy up",
			noone, 2, 0, 0.4, 0, 0, 0.5, 1, 0, 0, []),
	blue_pill: new passiveitem_set("Blue Pill", spr_itemspr_pill, "", "Stim down",
			noone, 10, 0, -0.3, 0, 0, -0.5, 0, 0, 0, []),
	dkgreen_pill: new passiveitem_set("Dark Green Pill", spr_itemspr_pill, "", "Pump up",
			noone, 3, 0, -0.2, 0.3, 2, -0.3, 0, 0, 0, []),
	brother: new passiveitem_set("Brother", noone, "", "Attempts up",
			noone, -5, 1, 0, 0, 0, 0, 0, 0, 0, [])
}
/*
	red_pill: new passiveitem_set("Red Pill", noone, "IReallyNeedThis", "Tiredness down",
			noone, 0, 0, 0.4, -0.2, 0, 0, 0, 0, 0, []),
	blue_pill: new passiveitem_set("Blue Pill", noone, "...", "Focus up",
			noone, 0, 0, 0, 0, 1, 0, 3, -0.2, 2, []),
	green_pill: new passiveitem_set("Green Pill", noone, "...", "Health up",
			noone, 2, 0, 0.2, -0.1, 0.3, 0, 0, 0, 0, []),
	yellow_pill: new passiveitem_set("Yellow Pill", noone, "...", "Resist up",
			noone, 5, 0, 0, 0, 0, 0, 0, 0, 0, []),
	orange_pill: new passiveitem_set("Orange Pill", noone, "...", "Performance up",
			noone, 0, 0, 0, 0, 1, 0, 0, 0, 0, []),
	pink_pill: new passiveitem_set("Blue Pill", noone, "...", "Rage down",
			noone, 0, 0, -0.2, 0, 0.5, 0, -3, 0, 4, []),