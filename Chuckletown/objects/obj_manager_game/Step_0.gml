/// @description Insert description here
// You can write your code in this editor

//calculates time in seconds
global.time_sec = global.time_tick/FRAMES_SEC;

show_debug_message(global.time_sec);

//increment timer
global.time_tick++;

if(keyboard_check_pressed(vk_escape))
	global.debug = !global.debug;