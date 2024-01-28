/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y

closest_customer = instance_nearest(x, y, obj_customer);

//resets customers target to false
with (obj_customer)
	target = false;
	
if(obj_throwable.locked)
	obj_aim.target_customer.target = true;
else if (distance_to_object(closest_customer) < range)
{
	
	if (mouse_check_button_pressed(mb_left) && obj_bartender.m_has_drink && 
		instance_exists(obj_customer)&& obj_throwable.locked == false) 
	{ //LOCKED

		
		obj_throwable.locked = true;
		obj_aim.target_customer = closest_customer;
	}




	closest_customer.target = true;
	//show_debug_message("customer true");
	//var pointdir = point_direction(x, y, closest_customer.x, closest_customer.y)
	//image_angle += sin(degtorad(pointdir - image_angle)) * rotation_speed;
	//direction = image_angle
	
}






