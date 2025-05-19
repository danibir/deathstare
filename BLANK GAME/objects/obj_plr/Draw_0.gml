if respawn = true
{
	var text = "You are dead. You have " + string(lifecount) + " li"
	if lifecount = 1
	text += "fe"
	else
	text += "ves"
	text += " left...\n"
	if respawntimer > 0
		text += "You can respawn in " + string(respawntimer) + " seconds..."
	else
		text += "Click to respawn!"
	draw_text(x, y - 32, text)
}