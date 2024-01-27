/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_pressed(mb_left)) {
	//check if you clicked on an instance of an ingredient
	var _ingredient = instance_position(mouse_x, mouse_y, obj_ingredient);
	if (_ingredient != noone) {
		show_debug_message(_ingredient.m_name);
	}
}