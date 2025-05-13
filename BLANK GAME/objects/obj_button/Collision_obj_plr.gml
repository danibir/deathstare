
if other.state = "pointer"// and (other.liveinput.mb_leftpress)
{
	if output = "start"
	{
		instance_create_layer(x, y, "Engines", obj_start)
	}
	instance_destroy()
}