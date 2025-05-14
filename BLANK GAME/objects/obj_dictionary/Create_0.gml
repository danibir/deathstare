plrdefaultstats = {
	hpstat: 15,
	livesstat: 3,
	sizestat: 1,
	speedstat: 1,
	strengthstat: 3.5,
	attackspeedstat: 3,
	shotspeedstat: 6,
	shotsizestat: 1,
	rangestat: 6,
	bullettype: obj_bullethitbox
}

function passiveitem_set(_name, _decor, _hpstat, _livesstat, _speedstat, _sizestat, _strengthstat, _attackspeedstat, _shotspeedstat, _shotsizestat, _rangestat, _special)
	constructor {
	name = _name
	decor = _decor
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
	soapy: new passiveitem_set("Soapy", spr_plr_hat_soapy, 0, 0, -0.1, -0.15, -1, 1, -3, 1.5, 3, "")
		
}