//Controller Stuff
if (global.controllerReady) {
	show_debug_message("Controller ready!");
} else {
	show_debug_message("Controller not ready!");
	
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

function controller_check(button) {
    if (gamepad_button_check(global.controllerSlot, button)) {
		show_debug_message(string(button) + " Pressed!");
        return true;
	} else {
        return false;
    }
}

function controller_axis_check_positive(axis) {
    if (gamepad_axis_value(global.controllerSlot, axis) > 0.25) {
		show_debug_message(string(axis) + " moved positive!");
        return true;
	} else {
        return false;
    }
}

function controller_axis_check_negative(axis) {
    if (gamepad_axis_value(global.controllerSlot, axis) < -0.25) {
		show_debug_message(string(axis) + " moved negative!");
        return true;
	} else {
        return false;
    }
}

//Movement & Collision

    var bbox_side;

    up_pressed    = (keyboard_check(vk_up)    || keyboard_check(ord("W")) || keyboard_check(vk_space) || controller_axis_check_negative(gp_axislv) || controller_check(gp_face1));
    left_pressed  = (keyboard_check(vk_left)  || keyboard_check(ord("A"))                             || controller_axis_check_negative(gp_axislh)                               );
    right_pressed = (keyboard_check(vk_right) || keyboard_check(ord("D"))                             || controller_axis_check_positive(gp_axislh)                               );

    xSpeed = (right_pressed - left_pressed) * 7;
    ySpeed = (0             - up_pressed  ) * 25 + 10;

    //Horizontal Collision
        if (xSpeed > 0) {
            bbox_side = bbox_right;
        } else {
            bbox_side = bbox_left;
        }

        if (    (tilemap_get_at_pixel(collisionMap, bbox_side + xSpeed, bbox_top   ) != 0) 
            ||  (tilemap_get_at_pixel(collisionMap, bbox_side + xSpeed, bbox_bottom) != 0)
			||  (tilemap_get_at_pixel(collisionMap, bbox_side + xSpeed, y		   ) != 0) 
            ||  (tilemap_get_at_pixel(collisionMap, bbox_side + xSpeed, y		   ) != 0)
            ) 
        {
            if (xSpeed > 0) 
            {
                    x = x - (x % 36) + 35 - (bbox_right - x);
            } else {
                    x = x - (x % 36)      - (bbox_left  - x);
            }
            xSpeed = 0;
        }
    x += xSpeed;

    //Vertical Collision
        if (ySpeed > 0) {
            bbox_side = bbox_bottom;
        } else {
            bbox_side = bbox_top;
        }

        if (    (tilemap_get_at_pixel(collisionMap, bbox_left,   bbox_side + ySpeed) != 0) 
            ||  (tilemap_get_at_pixel(collisionMap, bbox_right,  bbox_side + ySpeed) != 0)
            ) 
        {
            ySpeed = 0;
        }
    y += ySpeed;
