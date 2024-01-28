/// @description Insert description here
// You can write your code in this editor

image_index = mood;

particle_alpha = 1-(particle_x/particle_distance);

draw_sprite_ext(spr_mood_particle,mood,x+particle_x,y+particle_y,1,1,particle_rotation,c_white,particle_alpha);
particle_x += particle_speed;
particle_y -= particle_speed*particle_angle;

if (particle_x > particle_distance) {
	particle_x = 0;
	particle_y = 0;
	particle_speed = random_range(0.2,0.5);
	particle_angle = random_range(0.5,1.5);
	particle_rotation = irandom_range(-20,20);
	particle_distance = irandom_range(15,35);
}