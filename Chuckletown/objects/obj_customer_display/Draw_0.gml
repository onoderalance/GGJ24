/// @description Insert description here
// You can write your code in this editor

var cust_instance = instance_position(mouse_x,mouse_y,obj_customer);


// if hovering over customer
if(cust_instance != noone)
{
	var _cust_x = cust_instance.x-sprite_width/2;
	var _cust_y = cust_instance.y-sprite_height;
	
	//draw_self(); // a wild box was summoned!
	draw_sprite(sprite_index, 0, _cust_x, _cust_y);
	draw_set_halign(fa_left);
	draw_set_font(fnt_box);
	draw_text(_cust_x+10, _cust_y+7,cust_instance.cust_name);
	
	// this is the mood vibe
	if cust_instance.mood == -1 // angry
		draw_sprite(spr_mood, 0, _cust_x+10, _cust_y+30);
	if cust_instance.mood == 0 // neutral
		draw_sprite(spr_mood, 1, _cust_x+10, _cust_y+30);
	if cust_instance.mood == 1 // mildly pleased
		draw_sprite(spr_mood, 2, _cust_x+10, _cust_y+30);
	if cust_instance.mood == 2 // omg comedy genius
		draw_sprite(spr_mood, 3, _cust_x+10, _cust_y+30);
	
	// this is the drink pref
	if(cust_instance.drink_pref == "beer") // vodka + whisky
	{
		draw_sprite(spr_ingredient_vodka, 0, _cust_x+30, _cust_y+30);
		draw_sprite(spr_ingredient_whisky, 0, _cust_x+50, _cust_y+30);
	}
	if(cust_instance.drink_pref == "fat twink") // vodka + seltzer
	{
		draw_sprite(spr_ingredient_vodka, 0, _cust_x+30, _cust_y+30);
		draw_sprite(spr_ingredient_seltzer, 0, _cust_x+50, _cust_y+30);
	}
	if(cust_instance.drink_pref == "boom box") // whisky + juice
	{
		draw_sprite(spr_ingredient_whisky, 0, _cust_x+30, _cust_y+30);
		draw_sprite(spr_ingredient_juice, 0, _cust_x+50, _cust_y+30);
	}
	if(cust_instance.drink_pref == "allen wrench") // vodka + juice
	{
		draw_sprite(spr_ingredient_vodka, 0, _cust_x+30, _cust_y+30);
		draw_sprite(spr_ingredient_juice, 0, _cust_x+50, _cust_y+30);
	}
	if(cust_instance.drink_pref == "san penguino") // seltzer + juice
	{
		draw_sprite(spr_ingredient_seltzer, 0, _cust_x+30, _cust_y+30);
		draw_sprite(spr_ingredient_juice, 0, _cust_x+50, _cust_y+30);
	}
}
