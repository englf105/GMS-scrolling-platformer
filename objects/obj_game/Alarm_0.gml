if(room != rm_game) {
	exit;
}

instance_create_layer(608, 672, "Instances", obj_spike);

alarm[0] = 1 * room_speed;