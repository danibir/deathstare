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

var min_hp = 0.1
stat_hp = max(min_hp, stat_hp)
var min_lives = 1
stat_lives = max(min_lives, stat_lives)
var min_size = 0.1
stat_size = max(min_size, stat_size)
var min_speed = 0.1
stat_speed = max(min_speed, stat_speed)
var min_strength = 0.01
stat_strength = max(min_strength, stat_strength)
var min_attackspeed = 1/18
stat_attackspeed = max(min_attackspeed, stat_attackspeed)
var min_shotspeed = 0.25
stat_shotspeed = max(min_shotspeed, stat_shotspeed)
var min_shotsize = 0.1
stat_shotsize = max(min_shotsize, stat_shotsize)
var min_range = 0.5
stat_range = max(min_range, stat_range)
	