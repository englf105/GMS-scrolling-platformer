if(room != rm_game) {
	exit;
}

instance_create_layer(608, 736, "Instances", obj_block);

alarm[1] = 16;

// caps the number of possible spikes to 3