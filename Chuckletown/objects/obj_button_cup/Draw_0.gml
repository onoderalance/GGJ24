/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fnt_box);
draw_set_halign(fa_center);

switch (m_name) {
	case "beer":
		draw_sprite(spr_glass_beer, 0, x, y);
		draw_text_transformed(x+sprite_width/2, y+16,"beer", 0.5, 0.5, 0);
		break;
	case "martini":
		draw_sprite(spr_glass_martini, 0, x, y);
		draw_text_transformed(x+sprite_width/2, y+16,"martini", 0.5, 0.5, 0);
		break;
	case "syringe":
		draw_sprite(spr_glass_syringe, 0, x, y);
		draw_text_transformed(x+sprite_width/2, y+16,"syringe", 0.5, 0.5, 0);
		break;
}