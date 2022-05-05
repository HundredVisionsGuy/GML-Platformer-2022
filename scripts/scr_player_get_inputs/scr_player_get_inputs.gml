function scr_player_get_inputs() {
	// Get keyboard inputs
	// keyboard_check(key) will return 1 if pressed or 0 if not pressed
	key_right = keyboard_check(vk_right); // ord('D') for the letter D
	key_left = keyboard_check(vk_left);   // ord('A') for A
	key_jump = keyboard_check(vk_up); 
}
