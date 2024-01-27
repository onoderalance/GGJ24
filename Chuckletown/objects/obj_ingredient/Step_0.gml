/// @description Insert description here
// You can write your code in this editor

//find if it is selected
switch (m_name) {
	case ("vodka"):
		m_selected = obj_bartender.m_ingredient_array[0];
		break;
	case ("whisky"):
		m_selected = obj_bartender.m_ingredient_array[1];
		break;
	case ("seltzer"):
		m_selected = obj_bartender.m_ingredient_array[2];
		break;
	case ("juice"):
		m_selected = obj_bartender.m_ingredient_array[3];
		break;
}

//tint diffferently if selected
if (m_selected) {
	image_blend = c_green;
} else {
	image_blend = c_white;
}