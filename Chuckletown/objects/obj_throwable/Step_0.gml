//if mouse_check_button_pressed(mb_left /*&& obj_bartender.m_has_drink*/) {
//	show_debug_message("mouse button down");
//	var inst = instance_position(mouse_x, mouse_y, obj_customer)
//	if (inst != noone) {
//		throw_target = inst;
//		throw_target.image_index = 1;
//		//note locked is now true, changed in obj_dotted_line
//	}
//}

var _inst = instance_place(x, y, obj_customer);
if(_inst != noone)
{
	//if collided with the custoemr that is our throwing target, HUZZAH!
	if(_inst == m_throw_target)
	{
		//set values of the customer to satiated properly
		if (_inst.drink_pref == m_name) {
			show_debug_message("CORRECT");
			_inst.current_drink = m_name;
			_inst.current_cup = m_cup;
			m_throw_target.state = CUSTOMER_STATE.SATIATED;
		} else {
			_inst.mood--;
		}
		//SET VALUES OF THE DRINK TO THE CUSTOMER!!!
		//KILL YOURSELF
		instance_destroy();
	}
}


