/// @description Insert description here
// You can write your code in this editor

//limit laughter
global.laughter = min(global.laughter, 100);

//calculate offset
m_ui_laugh_offsetpx = (global.laughter/100) * 128; //pixel difference from top to bottom is 112

show_debug_message(global.laughter/100);


