/// @description Insert description here
// You can write your code in this editor

//this is all placeholder
//when you click on a drink it says its name and dies
if (mouse_check_button_pressed(mb_left)) {
	//check if you clicked on an instance of an ingredient
	var _drink = instance_position(mouse_x, mouse_y, obj_drink);
	if (_drink != noone) {
		show_debug_message(_drink.m_name);
		instance_destroy(_drink);
	}
}

switch (m_name) {
	case ("beer"):
		image_blend = c_yellow;
		break;
	case ("fat twink"):
		image_blend = c_blue;
		break;
	case ("allen wrench"):
		image_blend = c_orange;
		break;
	case ("boom box"):
		image_blend = c_purple;
		break;
	case ("san penguino"):
		image_blend = c_red;
		break;
}