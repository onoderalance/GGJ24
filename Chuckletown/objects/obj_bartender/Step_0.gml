/// @description Insert description here
// You can write your code in this editor

//hovering over ingredients
var _ingredient = instance_position(mouse_x, mouse_y, obj_ingredient);
if (_ingredient != noone) {
	_ingredient.image_blend += 2;
}
var _glass = instance_position(mouse_x, mouse_y, obj_button_cup);
if (_glass != noone) {
	_glass.image_blend += 2;
}
	

//clicking on ingredients
if (mouse_check_button_pressed(mb_left)) {
	//check if you clicked on an instance of an ingredient
	var _ingredient = instance_position(mouse_x, mouse_y, obj_ingredient);
	if (_ingredient != noone) {
		show_debug_message(_ingredient.m_name);
		//add this ingredient to the ingredient list
		//ds_list_add(m_ingredient_list, _ingredient.m_name);
		switch(_ingredient.m_name)
		 {
			 case ("vodka"):
				m_ingredient_array[0] = !m_ingredient_array[0];
				break;
			case ("whisky"):
				m_ingredient_array[1] = !m_ingredient_array[1];
				break;
			case ("seltzer"):
				m_ingredient_array[2] = !m_ingredient_array[2];
				break;
			case ("juice"):
				m_ingredient_array[3] = !m_ingredient_array[3];
				break;
		 }
		 
	}
	
	var _cup = instance_position(mouse_x, mouse_y, obj_button_cup);
	if (_cup != noone) {
		m_cup = _cup.m_name;
	}
	
	
}