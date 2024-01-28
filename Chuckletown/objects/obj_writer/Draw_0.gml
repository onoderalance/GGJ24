/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

//tick++
tick = tick + 10;

if(i < textlen + 1)
{
	var _temp_string = string_copy(intro_text, 1, i);
	
	if(tick%5 = 0)
		i++;
		
	xpos = 50;
	ypos = 10; //70
 
	for(var j = 1; j < i+1; j++)
	{
	
		draw_text(xpos, ypos, string_char_at(_temp_string,j));
		xpos += 8;
		if (xpos >= 450) // new line condition
		{
			ypos += 20;
			xpos = 50;
		}
	}
}

else
{
	xpos = 50;
	ypos = 10;
	for (var k = 1; k < (textlen + 1); k++)
	{
		draw_text(xpos, ypos, string_char_at(intro_text, k));
		xpos += 8;
		if (xpos >= 450) // new line condition
		{
			ypos += 20;
			xpos = 50;
		}
	
	}
}

if mouse_check_button_pressed(mb_left)
{
	audio_stop_sound(snd_typewriter);
    room = rm_henry;
}







