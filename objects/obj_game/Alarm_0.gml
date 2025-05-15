if(room != rm_game) {
	exit;
}

alarm[0] = 1 * choose(room_speed, 16, 0);

if (alarm[0] != 0) {
	
	instance_create_layer(608, 672, "Instances", obj_spike);
	
	// caps the number of possible spikes to 3

	if (alarm[0] == 16) {
		i += 1;
		if (i = 2) {
			alarm[0] = room_speed;
			i = 0;
		}
	}
	else {
		i = 0;
	}
	
}

// creates a gap in the floor
if (alarm[0] == 0) {
	
	alarm[1] = 64;
	alarm[0] = 128;
	
}