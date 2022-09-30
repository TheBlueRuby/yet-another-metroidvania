function controller_axis_check_positive(axis) {
    if (gamepad_axis_value(global.controllerSlot, axis) > 0.25) {
		show_debug_message(string(axis) + " moved positive!");
        return true;
	} else {
        return false;
    }
}