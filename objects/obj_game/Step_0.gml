if keyboard_check_pressed(vk_enter) {
	switch(room) {
		case rm_title:
			room_goto(rm_game);
			break;
		case rm_game:
			room_restart();
			lives = 1;
			break;
	}

}

if (lives == 1) {
	score += 1
}