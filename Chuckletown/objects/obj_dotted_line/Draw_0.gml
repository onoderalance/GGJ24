if (instance_exists(obj_customer)) {
	origin = obj_bartender
		var x_orig = origin.x;
		var y_orig = origin.y;
	if (obj_throwable.locked == false) {
		var x_dest = instance_nearest(mouse_x, mouse_y, obj_customer).x;
		var y_dest = instance_nearest(mouse_x, mouse_y, obj_customer).y;
		//var x_dest = target_x;
		//var y_dest = target_y;
	} else {
		var x_dest = chosen_customer_x;
		var y_dest = chosen_customer_y;
	}

	x = x_orig;
	y = y_orig

	var _angle = point_direction(x_orig, y_orig, x_dest, y_dest);
	var _width = sprite_width;

	for (var i = 0; distance_to_point(x_dest, y_dest) > (i * _width); i++) {
		draw_sprite_ext(sprite_index, image_index, 
		x + lengthdir_x(i * _width, _angle), 
		y + lengthdir_y(i * _width, _angle),
		1, 1, _angle, image_blend, image_alpha);
	}
	if (mouse_check_button(mb_left)) {
		obj_throwable.locked = true;
		chosen_customer_x = instance_nearest(mouse_x, mouse_y, obj_customer).x;
		chosen_customer_y = instance_nearest(mouse_x, mouse_y, obj_customer).y;
	}
	
	show_debug_message("drew dotted line");
}
