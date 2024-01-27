/// @description Insert description here
// You can write your code in this editor

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
				ds_list_replace(m_ingredient_list, 0, !ds_list_find_index(m_ingredient_list, 0));
				break;
			case ("whisky"):
				ds_list_replace(m_ingredient_list, 1, !ds_list_find_index(m_ingredient_list, 1));
				break;
			case ("seltzer"):
				ds_list_replace(m_ingredient_list, 2, !ds_list_find_index(m_ingredient_list, 2));
				break;
			case ("juice"):
				ds_list_replace(m_ingredient_list, 3, !ds_list_find_index(m_ingredient_list, 3));
				break;
		 }
	}
	
	
}