if angle_towards_target != 0 {
	angle_towards_target = point_direction(obj_bartender.x, obj_bartender.y, instance_nearest(mouse_x, mouse_y, obj_customer).x, instance_nearest(mouse_x, mouse_y, obj_customer).y);
}

if (aiming = true) {
	if (image_angle > (angle_towards_target + 45)%360) {
		image_angle++;	
	} else {
		image_angle--;	
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