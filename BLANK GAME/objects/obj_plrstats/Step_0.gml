stat_hp = struct_get(obj_dictionary.plrdefaultstats, "hpstat")
stat_lives = struct_get(obj_dictionary.plrdefaultstats, "livesstat")
stat_size = struct_get(obj_dictionary.plrdefaultstats, "sizestat")
stat_speed = struct_get(obj_dictionary.plrdefaultstats, "speedstat")
stat_strength = struct_get(obj_dictionary.plrdefaultstats, "strengthstat")
stat_attackspeed = struct_get(obj_dictionary.plrdefaultstats, "attackspeedstat")
stat_shotspeed = struct_get(obj_dictionary.plrdefaultstats, "shotspeedstat")
stat_shotsize = struct_get(obj_dictionary.plrdefaultstats, "shotsizestat")
stat_range = struct_get(obj_dictionary.plrdefaultstats, "rangestat")

var statsnames = ["hpstat", "livesstat", 
"sizestat", "speedstat", 
"strengthstat", "attackspeedstat", 
"shotspeedstat", "shotsizestat", 
"rangestat"]
var statincreases = []
for (var i = 0; i < array_length(statsnames); i++)
	array_push(statincreases, 0)
	
for (var a = 0; a < array_length(items); a++)
{
	var itemstat = struct_get(obj_dictionary.passiveitemstruct, string(items[a]))
	for (var b = 0; b < array_length(statsnames); b++)
	{
		//show_message([statsnames[b],struct_get(itemstat, statsnames[b])])
		statincreases[b] += struct_get(itemstat, statsnames[b])
	}
}
stat_hp += statincreases[0]
stat_lives += statincreases[1]
stat_size += statincreases[2]
stat_speed += statincreases[3]
stat_strength += statincreases[4]
stat_attackspeed += statincreases[5]
stat_shotspeed += statincreases[6]
stat_shotsize += statincreases[7]
stat_range += statincreases[8]

var minhp = 0.1
if stat_hp < minhp
	stat_hp = minhp
var minlives = 1
if stat_lives < minlives
	stat_lives = minlives
var minsize = 0.1
if stat_size = minsize
	stat_size = minsize
	