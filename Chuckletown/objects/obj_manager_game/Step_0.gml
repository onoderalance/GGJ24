/// @description Insert description here
// You can write your code in this editor

//calculates time in seconds
global.time_sec = global.time_tick/FRAMES_SEC;

//show_debug_message(global.time_sec);

//increment timer
global.time_tick++;

//toggle debug
if(keyboard_check_pressed(vk_escape))
	global.debug = !global.debug;
	
switch(global.game_state)
{
	case 0: //case for intro
		break;
	case 1: //case for first set
		//SURVIVED SET 1
		if(global.time_sec >= SET_LENGTH)
		{
			obj_manager_customer.num_customers_to_create += round(obj_manager_customer.num_customers_max*.2);
			global.game_state = 2;
		}
		else if(global.time_sec >= SET_LENGTH/2 && irandom(100) == 2)
		{
			if(obj_manager_customer.total_num_customers < round(obj_manager_customer.num_customers_max*.6))	
				obj_manager_customer.num_customers_to_create++;
		}
		//gameover case
		else if(global.laughter <= 0)
		{
			obj_manager_music.playing_game = false;
			obj_manager_music.music_state = 8;
			global.game_state = 4;
		}
		break;
	case 2: //case for second set
		//SURVIVED SET 1
		if(global.time_sec >= SET_LENGTH*2)
			global.game_state = 3;
		else if(global.time_sec >= SET_LENGTH*1.5 && irandom(100) == 2)
		{
			if(obj_manager_customer.total_num_customers < round(obj_manager_customer.num_customers_max))	
				obj_manager_customer.num_customers_to_create++;
		}
		//gameover case
		else if(global.laughter <= 0)
		{
			obj_manager_music.playing_game = false;
			obj_manager_music.music_state = 8;
			global.game_state = 4;
		}
		break;
	case 3: //case for end state
		obj_manager_music.playing_game = false;
		obj_manager_music.music_state = 9;
		break;
}