function controller_axis_check_negative(axis) {
    if (gamepad_axis_value(global.controllerSlot, axis) < -0.25) {
		//show_debug_message(string(axis) + " moved negative!");
        return true;
	} else {
        return false;
    }
}