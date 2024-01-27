/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) {
	if instance_place(mouse_x,mouse_y,obj_ingredient) {
		//add this ingredient to the ingredient list
		ds_list_add(obj_bartender.m_ingredient_list, instance_place(mouse_x,mouse_y,obj_ingredient));
		show_debug_message("hi");
	}
}