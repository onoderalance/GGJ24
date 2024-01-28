//aim reticle visible when aiming
visible = aiming;

//logic if bartender has a drink
if (obj_bartender.m_has_drink) {
	
	//set aim range and speed based on cup type
	switch (obj_bartender.m_cup){
		case ("beer"):
			angle_range = 30;
			aim_speed = 1;
			break;
		case ("martini"):
			angle_range = 45;
			aim_speed = 1;
			break;
		case ("syringe"):
			angle_range = 60;
			aim_speed = 3.5;
			break;
	}
	//indicator_direction = aim_speed;
	
	//checks if we are locked on and aiming
	if(instance_exists(obj_customer) && target_set = false && obj_throwable.locked) {
		angle_towards_target = point_direction(obj_bartender.x, obj_bartender.y, target_customer.x, target_customer.y);
		indicator_direction = aim_speed;
		target_set = true;
	}

	show_debug_message("ANGLE");
	show_debug_message(angle_towards_target);
	
	image_angle = (image_angle %360);

	if (aiming = true) {
		
		visible = true;
		if (image_angle > ((angle_towards_target + angle_range)%360) && indicator_direction > 0) {
			indicator_direction = -aim_speed;
		} else if (image_angle < ((angle_towards_target - angle_range)%360) && indicator_direction < 0){
			indicator_direction = aim_speed;
		}
		image_angle = image_angle + indicator_direction;
		show_debug_message("image angle = " + string(image_angle));
	
	
		if (mouse_check_button_pressed(mb_left)) { //THROW DRINK
			var final_throw_angle = image_angle;
			show_debug_message("final throw angle = " + string(final_throw_angle));
			audio_play_sound(snd_throw, 1, false);
			with (instance_create_layer(obj_bartender.x, obj_bartender.y, "Instances", obj_throwable))
			{
				m_throw_target = obj_aim.target_customer;
				m_name = obj_button_mix.m_new_drink;
				m_cup = obj_bartender.m_cup;
			
				switch (m_cup) {
					case ("beer"):
						sprite_index = spr_glass_beer;
						break;
					case ("martini"):
						sprite_index = spr_glass_martini;
						break;
					case ("syringe"):
						sprite_index = spr_glass_syringe;
						break;
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
					case ("lowball"):
						image_blend = c_silver;
				}
			
				direction = final_throw_angle;
				var rad_direction = degtorad(final_throw_angle);
				move_towards_point(x+((cos(rad_direction))*10), y-((sin(rad_direction))*10), 4);
				show_debug_message("THROW!!!!");
				show_debug_message("direction = " + string(direction));
			}

			//DESTROY DRINNK, SET LOCKED AND AIMING TO FALSE
			alarm[2] = 7;
			with (obj_bartender) {
				instance_destroy(m_drink)
				m_has_drink = false;
			}
		
		}
	
	
		} else if (obj_throwable.locked = true) {
			visible = true;
			//WHAT THE FUCK IS THIS
			image_angle = point_direction(obj_bartender.x, obj_bartender.y, instance_nearest(mouse_x, mouse_y, obj_customer).x, instance_nearest(mouse_x, mouse_y, obj_customer).y);
			//show_debug_message("changed image angle");
			aiming = true;
		}
	} else if (aiming = false) {
		visible = false;
}

//throw
//angle_towards_target = 0
//locked = false