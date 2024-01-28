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
	//show_debug_message("I AM DRINKING!!");
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
			//show_debug_message("proc");
			drinkColor = c_orange;
			break;
	}
	draw_sprite(spr_table,0,x-16,y);
	//draw the correct glass
	switch (current_cup) {
		case ("beer"):
			draw_sprite_ext(spr_glass_beer,0,x-16,y-8, 1, 1, 0, drinkColor, 1);
			//show_debug_message("PIVO");
			break;
		case ("martini"):
			draw_sprite_ext(spr_glass_martini,0,x-16,y-8, 1, 1, 0, drinkColor, 1);
			break;
		case ("syringe"):
			draw_sprite_ext(spr_glass_syringe,0,x-16,y-8, 1, 1, 0, drinkColor, 1);
			break;
	}
	//TODO- DRAW CUP ON TABLE - SEE CODE IN THROWABLE FOR PLACE TO RETRIEVE DRINK HIT WITH
}


	
