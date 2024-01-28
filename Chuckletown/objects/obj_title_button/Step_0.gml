/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_any))
{
	if collision_point(mouse_x, mouse_y, obj_title_button, true, false)
	{
		room_goto(obj_title_button.room_id);
	}
}










