/// @description Insert description here
// You can write your code in this editor

//intro sequence curtain draw
if(global.game_state == 0)
{
	if(introdraw_tick >= INTRO_LENGTH)
	{
		//add customers, fill 75% for now
		obj_manager_customer.num_customers_to_create += round(obj_manager_customer.num_customers_max*1);
		//set to the first set state
		global.game_state = 1;
	}

	draw_rectangle_color(0, 0, room_width, room_height-introdraw_offset, c_black, c_black, c_black, c_black, false);
	introdraw_tick++;
	introdraw_offset += room_height/INTRO_LENGTH;
	//show_debug_message("BABBABA");
}
if(global.game_state == 2)
{
	if(transdraw_tick < INTRO_LENGTH)
	{
		show_debug_message("HELP ME");
		show_debug_message(transdraw_offset);
		//we hit maximum length, hallelujah
		draw_set_halign(fa_center);
		draw_text_transformed(transdraw_offset, room_height/2, "SECOND SET!", 1, 1, 0);
	}
	transdraw_tick++;
	transdraw_offset += (room_width+64)/INTRO_LENGTH;
	
}
if(global.game_state == 3)
{
	if(enddraw_tick >= INTRO_LENGTH)
	{
		draw_rectangle_color(0, 0, room_width, 0+enddraw_offset, c_black, c_black, c_black, c_black, false);
		//we hit maximum length, hallelujah
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/2, "VICTORY");
	}
	else
	{
		draw_rectangle_color(0, 0, room_width, 0+enddraw_offset, c_black, c_black, c_black, c_black, false);
		enddraw_tick++;
		enddraw_offset += room_height/INTRO_LENGTH;
	}
	
}
if(global.game_state == 4)
{
	if(enddraw_tick >= INTRO_LENGTH)
	{
		draw_rectangle_color(0, 0, room_width, 0+enddraw_offset, c_black, c_black, c_black, c_black, false);
		//we hit maximum length, hallelujah
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/2, "GAME OVER");
	}
	else
	{
		draw_rectangle_color(0, 0, room_width, 0+enddraw_offset, c_black, c_black, c_black, c_black, false);
		enddraw_tick++;
		enddraw_offset += room_height/INTRO_LENGTH;
	}
	
}



