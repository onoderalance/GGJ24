/// @description Insert description here
// You can write your code in this editor

//number of drinks selected, must be 2 to make a drink
var ing_arr = obj_bartender.m_ingredient_array;
m_num_selected = ing_arr[0]+ing_arr[1] + ing_arr[2] + ing_arr[3]
	if (m_num_selected == 2) {
		image_blend = c_white;
	} else {
		image_blend = c_gray;
	}

if (mouse_check_button_pressed(mb_left)) {
	//check if you clicked on the mix button
	
	if (instance_position(mouse_x, mouse_y, obj_button_mix) && (m_num_selected == 2)) {
		//vodka, whisky, seltzer, juice
		
		//convert array to a number using binary, e.g. vokda and whisky is [1,1,0,0] = 12
		var ingredients_code = (8*ing_arr[0]) + (4*ing_arr[1]) + (2*ing_arr[2]) + (1*ing_arr[3]);
		
		switch(ingredients_code) {
			case 12:
				//create a beer
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.m_name = "beer";
				break;
			case 10:
				//create a fat twink
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.m_name = "fat twink";
				break;
			case 9:
				//create an allen wrench
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.m_name = "allen wrench";
				break;
			case 5:
				//create a boom box
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.m_name = "boom box";
				break;
			case 3:
				//create a san penguino
				var newDrink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				newDrink.m_name = "san penguino";
				break;
		}
			
	}
	
	
}