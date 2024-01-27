/// @description Insert description here
// You can write your code in this editor

draw_self();

switch (m_name) {
	case "vodka":
		draw_sprite(spr_ingredient_vodka, 0, x, y);
		break;
	case "whisky":
		draw_sprite(spr_ingredient_whisky, 0, x, y);
		break;
	case "seltzer":
		draw_sprite(spr_ingredient_seltzer, 0, x, y);
		break;
	case "juice":
		draw_sprite(spr_ingredient_juice, 0, x, y);
		break;
}