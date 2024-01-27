if (obj_throwable.locked = true) {
	visible = true;
	image_angle = point_direction(obj_bartender.x, obj_bartender.y, instance_nearest(mouse_x, mouse_y, obj_customer).x, instance_nearest(mouse_x, mouse_y, obj_customer).y);
	show_debug_message("changed image angle");
}
