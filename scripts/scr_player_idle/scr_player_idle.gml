function scr_player_idle() {
	// What do we do in idle state?
	// switch to Idle animation cycle
	// first make sure we begin with the first frame
	if (sprite_index != sPlayerIdle) {
		image_index = 0;
	}
	sprite_index = sPlayerIdle;

	// Manage my transitions to other states
	scr_manage_states();

}
