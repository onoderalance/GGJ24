if(global.debug)
{
	draw_set_color(c_white);
	draw_path(m_path, x, y, false);
}

draw_self();

//if targeted, draw crosshair
if(target) {
	draw_sprite(spr_crosshair, 0, x, y)
	//show_debug_message("drawing crosshair");
}

//if satiated, draw cup on table
if(state == CUSTOMER_STATE.SATIATED)
{
	//TODO- DRAW CUP ON TABLE - SEE CODE IN THROWABLE FOR PLACE TO RETRIEVE DRINK HIT WITH
}
	
