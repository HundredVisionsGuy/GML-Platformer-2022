function scr_player_jumping() {
	// What do we do in jumping state?
	// Switch sprites to jumping
	// first make sure we begin with the first frame
	if (sprite_index != sPlayerJumping) {
		image_index = 0;
	}
	sprite_index = sPlayerJumping;
	// Flip the sprite based on direction
	if (hsp > 0) {
		image_xscale = 1;	
	}
	if (hsp < 0) {
		image_xscale = -1;
	}

	// run the animation cycle once, then hold on the last frame
	if (image_index > image_number -1) {
		image_index = image_number - 1;
	}

	// Manage my transitions to other states
	scr_manage_states();



}
