function get_hover(xPos, yPos) {
	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);

	return point_in_rectangle(_mouseX, _mouseY, xPos-width/2, yPos-height/2, xPos+width/2, yPos+height/2);
}