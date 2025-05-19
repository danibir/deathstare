
if host.state = "fight"
{
//draw_line_width(x - 16 * host.stats.stat_size, y + 16 * host.stats.stat_size + 12, x + 16 * host.stats.stat_size, y + 16 * host.stats.stat_size + 12, 4)
draw_healthbar(x - 16 * host.stats.stat_size, y + 18 * host.stats.stat_size, x + 16 * host.stats.stat_size, y + 18 * host.stats.stat_size + 4, host.stamina / host.maxstamina * 100, c_black, c_teal, c_aqua, 0, false, true)
draw_healthbar(x - 16 * host.stats.stat_size, y + 16 * host.stats.stat_size, x + 16 * host.stats.stat_size, y + 16 * host.stats.stat_size + 4, host.hp / host.stats.stat_hp * 100, c_black, c_red, c_lime, 0, true, true)
}