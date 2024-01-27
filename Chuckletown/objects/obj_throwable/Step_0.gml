if mouse_check_button_pressed(mb_left) {
	show_debug_message("mouse button down");
	var inst = instance_position(mouse_x, mouse_y, obj_customer)
	if (inst != noone) {
		throw_target = inst;
		throw_target.image_index = 1;
		//note locked is now true, changed in obj_dotted_line
	}
}


