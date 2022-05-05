function scr_player_falling() {
	// What do we do in falling state?
	// Switch sprites to falling
	// first make sure we begin with the first frame
	if (sprite_index != sPlayerFalling) {
		image_index = 0;
	}
	sprite_index = sPlayerFalling;

	// run the animation cycle once, then hold on the last frame
	if (image_index > image_number -1) {
		image_index = image_number - 1;
	}

	// What states can we change into?
	// Manage my transitions to other states
	scr_manage_states();



}
