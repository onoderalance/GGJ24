/// @description Insert description here
// You can write your code in this editor

m_name = "";
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