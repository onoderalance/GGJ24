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
		//gameover case
		if(global.laughter <= 0)
			global.game_state = 4;
		break;
	case 2: //case for second set
		//gameover case
		if(global.laughter <= 0)
			global.game_state = 4;
		break;
	case 3: //case for end state
		break;
}