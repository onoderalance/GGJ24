/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left)) {
	//check if you clicked on the ix button
	/*
	if (instance_position(mouse_x, mouse_y, obj_button_mix)) {
		if (ds_list_find_index(obj_bartender.m_ingredient_list, "vodka") > -1) {
			if (ds_list_find_index(obj_bartender.m_ingredient_list, "seltzer") > -1) {
				//create a fat twink
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "fat twink";
			}
			else if (ds_list_find_index(obj_bartender.m_ingredient_list, "juice") > -1) {
				//create an allen wrench
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "allen wrench";
			}
			else if (ds_list_find_index(obj_bartender.m_ingredient_list, "whisky") > -1) {
				//create a beer
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "beer";
			}
		} else if (ds_list_find_value(obj_bartender.m_ingredient_list, "juice") > -1) {
			if (ds_list_find_value(obj_bartender.m_ingredient_list, "seltzer") > -1) {
				//create a san penguino
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "san penguino";
			}
			else if (ds_list_find_value(obj_bartender.m_ingredient_list, "whisky") > -1) {
				//create a boom box
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.name = "boom box";
			}
		}
	} */
	
	if (instance_position(mouse_x, mouse_y, obj_button_mix)) {
		//vodka, whisky, seltzer, juice
		var ing_arr = obj_bartender.m_ingredient_array;
		//convert array to a number using binary, e.g. vokda and whisky is [1,1,0,0] = 12
		var ingredients_code = (8*ing_arr[0]) + (4*ing_arr[1]) + (2*ing_arr[2]) + (1*ing_arr[3]);
		switch(ingredients_code) {
			case 0:
				break;
		}
			
	}
	
	
}