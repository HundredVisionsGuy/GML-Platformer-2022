function scr_check_state() {
	// Use case switch statement to check what state we're in
	// and use it to call our player state scripts

	switch (state) {
		case player_states.idle:
			scr_player_idle();
			break;
		case player_states.falling:
			scr_player_falling();
			break;
		case player_states.jumping:
			scr_player_jumping();
			break;
		case player_states.running:
			scr_player_running();
			break;
	}
}
