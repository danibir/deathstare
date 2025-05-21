global.shadowlist = []

instance_create_layer(x, y, "Engines", obj_eng_dictionary)

callid = 0
cameraid = 0


rollback_define_input({
	walkup: ord("W"),
	walkleft: ord("A"),
	walkdown: ord("S"),
	walkright: ord("D"),
	shift: vk_shift,
	mb_x: m_axisx,
	mb_y: m_axisy,
	mb_leftpress: mb_left
})

rollback_define_player(obj_plr, "Instances");

offline = true
if not rollback_join_game()
{
	rollback_create_game(3, offline)
}
num = 1

start = true