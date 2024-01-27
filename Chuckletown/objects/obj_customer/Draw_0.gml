if(global.debug)
{
	draw_set_color(c_white);
	draw_path(m_path, x, y, false);
}

draw_self();

if(target) {
	draw_sprite(spr_crosshair, 0, x, y)
	//show_debug_message("drawing crosshair");
}