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
			show_debug_message("CORRECT " + m_name + " " + m_cup);
			_inst.current_drink = m_name;
			_inst.current_cup = m_cup;
			_inst.alarm[1] = _inst.drink_time;
			_inst.alarm[2] = _inst.mood_increase_time;
			if(_inst.current_cup == "syringe") {
				audio_play_sound(snd_pain, 1, false);
				_inst.mood = 2;
			} else if (_inst.current_cup == "martini") {
				audio_play_sound(snd_ice, 1, false,1,1.3);
				_inst.alarm[2] = _inst.mood_increase_time_martini;
			} else {
				audio_play_sound(snd_ice, 1, false,1,1.3);
				_inst.alarm[2] = _inst.mood_increase_time;
			}
			m_throw_target.state = CUSTOMER_STATE.SATIATED;
		} else {
			audio_play_sound(snd_glass_break, 1, false, 0.7, 0.7);
		}
		//SET VALUES OF THE DRINK TO THE CUSTOMER!!!
		//KILL YOURSELF
		instance_destroy();
	}
}


