/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fnt_box);

switch (m_name) {
	case "beer":
		draw_sprite(spr_glass_beer, 0, x, y);
		draw_text_transformed(x+1, y+16,"beer\nglass", 0.35, 0.35, 0);
		break;
	case "martini":
		draw_sprite(spr_glass_martini, 0, x, y);
		draw_text_transformed(x-1, y+16,"martini\n glass", 0.35, 0.35, 0);
		break;
	case "syringe":
		draw_sprite(spr_glass_syringe, 0, x, y);
		draw_text_transformed(x-3, y+16,"syringe", 0.4, 0.4, 0);
		break;
}