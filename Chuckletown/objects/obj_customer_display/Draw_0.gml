/// @description Insert description here
// You can write your code in this editor

var cust_instance = instance_position(mouse_x,mouse_y,obj_customer);
// if hovering over customer
if cust_instance != noone 
{
	draw_self(); // a wild box was summoned!
	draw_text(x+5, y+2,cust_instance.cust_name);
	
	// this is the mood vibe
	if cust_instance.mood == -1 // angry
		draw_sprite(spr_mood, 1, x+5, y+30);
	if cust_instance.mood == 0 // neutral
		draw_sprite(spr_mood, 2, x+5, y+30);
	if cust_instance.mood == 1 // mildly pleased
		draw_sprite(spr_mood, 3, x+5, y+30);
	if cust_instance.mood == 2 // omg comedy genius
		draw_sprite(spr_mood, 4, x+5, y+30);
	
	// this is the drink pref
	if cust_instance.drink_pref == "beer" // vodka + whisky
		draw_sprite(spr_ingredient_vodka, 0, x+30, y+30);
		draw_sprite(spr_ingredient_whisky, 0, x+50, y+30);
	if cust_instance.drink_pref == "fat twink" // vodka + seltzer
		draw_sprite(spr_ingredient_vodka, 0, x+30, y+30);
		draw_sprite(spr_ingredient_seltzer, 0, x+50, y+30);
	if cust_instance.drink_pref == "boom box" // whisky + juice
		draw_sprite(spr_ingredient_whisky, 0, x+30, y+30);
		draw_sprite(spr_ingredient_juice, 0, x+50, y+30);
	if cust_instance.drink_pref == "allen wrench" // vodka + juice
		draw_sprite(spr_ingredient_vodka, 0, x+30, y+30);
		draw_sprite(spr_ingredient_juice, 0, x+50, y+30);
	if cust_instance.drink_pref == "san penguino" // seltzer + juice
		draw_sprite(spr_ingredient_seltzer, 0, x+30, y+30);
		draw_sprite(spr_ingredient_juice, 0, x+50, y+30);
}
