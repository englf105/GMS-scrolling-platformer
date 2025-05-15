if (room == rm_game) {

	repeat(1) {
		
		instance_create_layer(608, 672, "Instances", obj_spike);
		
		instance_create_layer(608, 736, "Instances", obj_block);
	}
	alarm[0] = 80;
	alarm[1] = 80;

}