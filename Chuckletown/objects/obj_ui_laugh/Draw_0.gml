/// @description Insert description here
// You can write your code in this editor

//draws the bar fill
draw_sprite(spr_ui_laugh_fill, 0, x+24, y+8-m_ui_laugh_offsetpx);

draw_sprite(spr_mixing_background, 0, x, y+sprite_height);

//draw labels for cups and stuff
draw_set_halign(fa_center);
draw_text_transformed(24, y+sprite_height+3, "Ingr.", .5, .5, 0);
draw_text_transformed(56, y+sprite_height+3, "Cups", .5, .5, 0);


//draw overlay at the end
draw_self();

