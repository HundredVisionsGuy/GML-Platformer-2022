function scr_player_running() {
	// What do we do in running state?
	// Switch sprites to running
	// first make sure we begin with the first frame
	if (sprite_index != sPlayerRunning) {
		image_index = 0;
	}
	sprite_index = sPlayerRunning;

	// Flip the sprite based on direction
	if (hsp > 0) {
		image_xscale = 1;	
	}
	if (hsp < 0) {
		image_xscale = -1;
	}

	// Manage my transitions to other states
	scr_manage_states();



}
