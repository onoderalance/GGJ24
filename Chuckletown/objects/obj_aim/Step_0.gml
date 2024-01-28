
if(instance_exists(obj_customer) && target_set = false && obj_throwable.locked) {
	angle_towards_target = point_direction(obj_bartender.x, obj_bartender.y, instance_nearest(mouse_x, mouse_y, obj_customer).x, instance_nearest(mouse_x, mouse_y, obj_customer).y);
	target_set = true;
}

show_debug_message("ANGLE");
show_debug_message(angle_towards_target);

image_angle = (image_angle %360);

if (aiming = true) {
	if (image_angle > ((angle_towards_target + 45)%360) && indicator_direction == 1) {
		indicator_direction = -1;
	} else if (image_angle < ((angle_towards_target - 45)%360) && indicator_direction == -1){
		indicator_direction = 1;
	}
	image_angle = image_angle + indicator_direction;
	show_debug_message("image angle = " + string(image_angle));
	
	
	if mouse_check_button_pressed(mb_left) {
		var final_throw_angle = image_angle;
		show_debug_message("final throw angle = " + string(final_throw_angle));
		with (instance_create_layer(obj_bartender.x, obj_bartender.y, "Instances", obj_throwable))
		{
			direction = final_throw_angle;
			var rad_direction = degtorad(final_throw_angle);
			move_towards_point(x+((cos(rad_direction))*10), y-((sin(rad_direction))*10), 4);
			show_debug_message("THROW!!!!");
			show_debug_message("direction = " + string(direction));
		}
		aiming = false;
		obj_throwable.locked = false;
	}
	
	
	
} else if (obj_throwable.locked = true) {
	visible = true;
	image_angle = point_direction(obj_bartender.x, obj_bartender.y, instance_nearest(mouse_x, mouse_y, obj_customer).x, instance_nearest(mouse_x, mouse_y, obj_customer).y);
	//show_debug_message("changed image angle");
	aiming = true;
}


//throw
//angle_towards_target = 0
//locked = false