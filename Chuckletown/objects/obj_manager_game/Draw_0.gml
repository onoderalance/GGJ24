/// @description Insert description here
// You can write your code in this editor

//intro sequence curtain draw
if(global.game_state == 0)
{
	if(introdraw_tick >= INTRO_LENGTH)
	{
		//add customers, fill 75% for now
		obj_manager_customer.num_customers_to_create += round(obj_manager_customer.num_customers_max*.75);
		//set to the first set state
		global.game_state = 1;
	}

	draw_rectangle_color(0, 0, room_width, room_height-introdraw_offset, c_black, c_black, c_black, c_black, false);
	introdraw_tick++;
	introdraw_offset += room_height/INTRO_LENGTH;
	show_debug_message("BABBABA");
}




