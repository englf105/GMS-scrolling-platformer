/// @description Core Player Logic

// Get player inputs
var _key_jump = keyboard_check_pressed(vk_space);

// Calculate movement

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_barrier)) and (_key_jump) 
{
	vsp = -jumpspeed;
}

// Horizontal collision
if (place_meeting(x + hsp, y ,obj_barrier)) 
{
	while (!place_meeting(x + sign(hsp), y, obj_barrier)) 
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

// Vertical collision
if (place_meeting(x, y+vsp, obj_barrier))
{
	while (!place_meeting(x, y + sign(vsp), obj_barrier)) 
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;

// Animation
if (!place_meeting(x, y+1, obj_barrier)) 
{
		sprite_index = spr_player_jumping;
		image_speed = 0;
		if (vsp > 0) image_index = 0; else image_index = 1; {}


}
else
{	
	image_speed = 2;
	sprite_index = spr_player_running;
}