/// @description Insert description here
// You can write your code in this editor

var cust_instance = instance_position(mouse_x,mouse_y,obj_customer);
if cust_instance != noone 
{
	draw_self();
	draw_text(x+5, y+2,cust_instance.cust_name);
	draw_text(x+5, y+2,cust_instance.drink_pref);
	draw_text(x+5, y+2,cust_instance.mood);
}
