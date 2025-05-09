if(room != rm_game) {
	exit;
}

instance_create_layer(608, 672, "Instances", obj_spike);

alarm[0] = 1 * choose(room_speed, 16);

// caps the number of possible spikes to 3
if (alarm[0] == 16) {
	i += 1;
	if (i = 3) {
		alarm[0] = room_speed;
		i = 0;
	}
}
else {
	i = 0;
}