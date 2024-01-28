/// @description Insert description here
// You can write your code in this editor

//number of drinks selected, must be 2 to make a drink
var ing_arr = obj_bartender.m_ingredient_array;
m_num_selected = ing_arr[0]+ing_arr[1] + ing_arr[2] + ing_arr[3]
if (m_num_selected == 2 && !obj_bartender.m_has_drink) {
	if instance_position(mouse_x,mouse_y,obj_button_mix) {
		image_blend = c_ltgray;
	} else {
		image_blend = c_white;
	}
} else {
	image_blend = c_gray;
}

if (mouse_check_button_pressed(mb_left)) {
	//check if you clicked on the mix button
	
	if (instance_position(mouse_x, mouse_y, obj_button_mix) && (m_num_selected == 2) && (!obj_bartender.m_has_drink)) {
		//vodka, whisky, seltzer, juice
		
		audio_play_sound(snd_mix, 1, false);
		
		//convert array to a number using binary, e.g. vokda and whisky is [1,1,0,0] = 12
		var ingredients_code = (8*ing_arr[0]) + (4*ing_arr[1]) + (2*ing_arr[2]) + (1*ing_arr[3]);
		
		switch(ingredients_code) {
			case 12:
				//create a beer
				obj_bartender.m_drink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				//var newThrowable = instance_create_layer(obj_bartender.x, obj_bartender.y,"instances", obj_throwable);
				obj_bartender.m_drink.m_name = "beer";
				m_new_drink = "beer";
				obj_bartender.m_drink.m_cup = obj_bartender.m_cup;
				obj_bartender.m_has_drink = true;
				
				break;
			case 10:
				//create a fat twink
				obj_bartender.m_drink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				//var newThrowable = instance_create_layer(obj_bartender.x, obj_bartender.y,"instances", obj_throwable);
				obj_bartender.m_drink.m_name = "fat twink";
				m_new_drink = "fat twink";
				obj_bartender.m_drink.m_cup = obj_bartender.m_cup;
				obj_bartender.m_has_drink = true;
				break;
			case 9:
				//create an allen wrench
				obj_bartender.m_drink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				//var newThrowable = instance_create_layer(obj_bartender.x, obj_bartender.y,"instances", obj_throwable);
				obj_bartender.m_drink.m_name = "allen wrench";
				m_new_drink = "allen wrench";
				obj_bartender.m_drink.m_cup = obj_bartender.m_cup;
				obj_bartender.m_has_drink = true;
				break;
			case 6:
				//create a lowball
				obj_bartender.m_drink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				//var newThrowable = instance_create_layer(obj_bartender.x, obj_bartender.y,"instances", obj_throwable);
				obj_bartender.m_drink.m_name = "lowball";
				m_new_drink = "lowball";
				obj_bartender.m_drink.m_cup = obj_bartender.m_cup;
				obj_bartender.m_has_drink = true;
				break;
			case 5:
				//create a boom box
				obj_bartender.m_drink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				//var newThrowable = instance_create_layer(obj_bartender.x, obj_bartender.y,"instances", obj_throwable);
				obj_bartender.m_drink.m_name = "boom box";
				m_new_drink = "boom box";
				obj_bartender.m_drink.m_cup = obj_bartender.m_cup;
				obj_bartender.m_has_drink = true;
				break;
			case 3:
				//create a san penguino
				obj_bartender.m_drink = instance_create_layer(obj_bartender.x, obj_bartender.y, "instances",obj_drink);
				//var newThrowable = instance_create_layer(obj_bartender.x, obj_bartender.y,"instances", obj_throwable);
				obj_bartender.m_drink.m_name = "san penguino";
				m_new_drink = "san penguino";
				obj_bartender.m_drink.m_cup = obj_bartender.m_cup;
				obj_bartender.m_has_drink = true;
				break;
		}
			
	}
	
}