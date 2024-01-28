if (mouse_check_button_pressed(mb_left) && obj_bartender.m_has_drink && instance_exists(obj_customer)&& obj_throwable.locked == false) { //LOCKED
	obj_throwable.locked = true;
	chosen_customer_x = instance_nearest(mouse_x, mouse_y, obj_customer).x;
	chosen_customer_y = instance_nearest(mouse_x, mouse_y, obj_customer).y;
}