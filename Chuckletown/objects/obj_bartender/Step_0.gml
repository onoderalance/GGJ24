/// @description Insert description here
// You can write your code in this editor


if mouse_check_button_pressed(mb_left) {
	var _ingredient = instance_place(mouse_x,mouse_y,obj_ingredient);
	if (_ingredient) {
		//add this ingredient to the ingredient list
		ds_list_add(obj_bartender.m_ingredient_list, _ingredient);
		show_debug_message(_ingredient.m_name);
	}
}