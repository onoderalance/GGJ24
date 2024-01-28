/// @description Insert description here
// You can write your code in this editor

m_name = obj_button_mix.m_new_drink;
m_cup = obj_bartender.m_cup;

switch (m_cup) {
	case ("beer"):
		sprite_index = spr_glass_beer;
		break;
	case ("martini"):
		sprite_index = spr_glass_martini;
		break;
	case ("syringe"):
		sprite_index = spr_glass_syringe;
		break;
}

switch (m_name) {
	case ("beer"):
		image_blend = c_yellow;
		break;
	case ("fat twink"):
		image_blend = c_blue;
		break;
	case ("allen wrench"):
		image_blend = c_orange;
		break;
	case ("boom box"):
		image_blend = c_purple;
		break;
	case ("san penguino"):
		image_blend = c_red;
		break;
	case ("lowball"):
		image_blend = c_silver;
}