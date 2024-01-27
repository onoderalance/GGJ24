if mouse_check_button(mb_left) {
	origin = obj_bartender
	var x_orig = origin.x;
	var y_orig = origin.y;

	var x_dest = mouse_x;
	var y_dest = mouse_y;
	//var x_dest = target_x;
	//var y_dest = target_y;

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
	show_debug_message("drew dotted line");
}