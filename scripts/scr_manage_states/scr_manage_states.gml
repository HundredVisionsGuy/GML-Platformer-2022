function scr_manage_states() {
	// Manage the transition into any possible state

	// To idle (we're not moving in any direction)
	if ( vsp == 0 && hsp == 0) {
		state = player_states.idle;
	}

	// To jumping (vertical speed is negative)
	if ( vsp < 0 ) {
		state = player_states.jumping;	
	}

	// Falling (positive vsp)
	if ( vsp > 0 ) {
		state = player_states.falling;	
	}

	// Running (left or right but not moving up or down)
	if ( abs(hsp) > 0 && vsp == 0 ) {
		state = player_states.running;	
	}

}
