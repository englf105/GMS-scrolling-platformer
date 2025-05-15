/// @description Core Player Logic

// Get player inputs
var _key_jump = keyboard_check_pressed(vk_space);

// Calculate movement

vsp = vsp + grv;

if (place_meeting(x, y+1, obj_block)) and (_key_jump) 
{
	vsp = -jumpspeed;
}

// returns to the running spot
if (x != 128 and !place_meeting(x + 2, y - 10 ,obj_block)) 
{
	x += 1;
}

// Horizontal collision
if (place_meeting(x + 2, y - 10 ,obj_block)) 
{
	x -= 4;
}

// Vertical collision
if (place_meeting(x, y+vsp, obj_block))
{
	while (!place_meeting(x, y + sign(vsp), obj_block)) 
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;

// Animation
if (!place_meeting(x, y+1, obj_block)) 
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