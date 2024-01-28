/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, self))
{
	show_debug_message("FUCK MY LIFE");
	if (mouse_check_button_pressed(mb_any))
	{
		if(room_id == rm_main)
		{
			audio_stop_sound(obj_title.title_track);
		}
		room_goto(room_id);
	}
}










