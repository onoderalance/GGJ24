x = mouse_x;
y = mouse_y;

with (obj_customer) {
	target = false;
}

closest_customer = instance_nearest(x, y, obj_customer);

if (distance_to_object(closest_customer) < range)
{
	closest_customer.target = true;
	show_debug_message("customer true");
	//var pointdir = point_direction(x, y, closest_customer.x, closest_customer.y)
	//image_angle += sin(degtorad(pointdir - image_angle)) * rotation_speed;
	//direction = image_angle
	
}