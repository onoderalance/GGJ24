/// @description Insert description here
// You can write your code in this editor

draw_self();

switch (m_name) {
	case "beer":
		draw_sprite(spr_glass_beer, 0, x, y);
		break;
	case "martini":
		draw_sprite(spr_glass_martini, 0, x, y);
		break;
	case "syringe":
		draw_sprite(spr_glass_syringe, 0, x, y);
		break;
}