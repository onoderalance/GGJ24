x = obj_bartender.x;
y = obj_bartender.y;

visible = false;

aiming = false;

angle_towards_target = 0;

//how wide the aming is. beer = 30, wine = 45, syringe = 60?
angle_range = 45;
//how fast aiming is. beer = 1, wine = 1, syringe = 1.5?
aim_speed = 1;

target_set = false;

indicator_direction = 1;

target_customer = noone;

with (instance_create_layer(0, 0, "Instances", obj_throwable))  //use to check obj_throwable.locked
{
	visible = false;	
}