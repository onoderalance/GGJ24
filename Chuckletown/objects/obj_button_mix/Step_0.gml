/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left)) {
	//check if you clicked on the mix button
	if (instance_position(mouse_x, mouse_y, obj_button_mix)) {
		if (ds_list_find_value(obj_bartender.m_ingredient_list, "vodka")) {
			if ds_list_find_value(obj_bartender.m_ingredient_list, "seltzer") {
				//create a fat twink
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "fat twink";
			}
			else if ds_list_find_value(obj_bartender.m_ingredient_list, "juice") {
				//create an allen wrench
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "allen wrench";
			}
			else if ds_list_find_value(obj_bartender.m_ingredient_list, "whisky") {
				//create a beer
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "beer";
			}
		} else if (ds_list_find_value(obj_bartender.m_ingredient_list, "juice")) {
			if ds_list_find_value(obj_bartender.m_ingredient_list, "seltzer") {
				//create a san penguino
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "san penguino";
			}
			else if ds_list_find_value(obj_bartender.m_ingredient_list, "whisky") {
				//create a boom box
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "boom box";
			}
		}
	}
	
	
}