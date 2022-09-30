function controller_check(button) {
    if (gamepad_button_check(global.controllerSlot, button)) {
		show_debug_message(string(button) + " Pressed!");
        return true;
	} else {
        return false;
    }
}