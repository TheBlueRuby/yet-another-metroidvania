// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controllerInit(){
	global.controllerSupported = gamepad_is_supported();
	if (global.controllerSupported) {
		global.controllerNum	   = gamepad_get_device_count();
		global.controllerReady	   = false;

		for (var i = 0; i < global.controllerNum; i++;)
		{
		    if (gamepad_is_connected(i)) {
				global.controllerSlot = i;
				global.controllerReady = true;
				break;
			}
		}
	} else {
		show_debug_message("Controller not supported!");
	}
}