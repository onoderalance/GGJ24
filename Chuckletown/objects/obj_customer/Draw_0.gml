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
	var drinkColor = c_white;
	//choose color
	switch (current_drink) {
		case ("fat twink"):
			drinkColor = c_blue;
			break;
		case ("beer"):
			drinkColor = c_yellow;
			break;
		case ("boombox"):
			drinkColor = c_purple;
			break;
		case ("san penguino"):
			drinkColor = c_blue;
			break;
		case ("lowball"):
			drinkColor = c_silver;
			break;
		case ("allen wrench"):
			drinkColor = c_orange;
			break;
	}
	draw_set_color(drinkColor);
	//draw the correct glass
	switch (current_cup) {
		case ("beer"):
			draw_sprite(spr_glass_beer,x,y,image_index);
			break;
		case ("martini"):
			draw_sprite(spr_glass_martini,x,y,image_index);
			break;
		case ("syringe"):
			draw_sprite(spr_glass_syringe,x,y,image_index);
			break;
	}
	draw_set_color(c_white);
	//TODO- DRAW CUP ON TABLE - SEE CODE IN THROWABLE FOR PLACE TO RETRIEVE DRINK HIT WITH
}
	
