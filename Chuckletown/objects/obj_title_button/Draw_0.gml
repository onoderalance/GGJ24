/// @description Insert description here
// You can write your code in this editor

tick++;

if (obj_title.y <= 3) 
{
	
	draw_set_alpha(aval);
	draw_self();
	draw_set_font(fnt_title);
	draw_set_halign(fa_center);
	draw_text_transformed(x+(sprite_width/2), y+12, button_name, 0.6, 0.6, 0);
	draw_set_alpha(1);
	aval += 0.05;
}



