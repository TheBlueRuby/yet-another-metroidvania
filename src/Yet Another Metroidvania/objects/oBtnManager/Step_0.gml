var paused = keyboard_check_pressed(vk_escape);
if (global.controllerReady) {
	paused = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(global.controllerSlot, gp_start);
}

if (room_get_name(room) == "titleScreen") {
	event_user(0);
} else if (paused) {
	menuOpen = !menuOpen;
	
	if (menuOpen) {
		event_user(0);
	} else {
		event_user(1);
	}
}