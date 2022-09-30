//Controller Stuff
if (!global.controllerReady) {
	controllerInit();
}

if (!oBtnManager.menuOpen){
//Movement & Collision

    var bbox_side;
	
	if (global.controllerReady) {
		controllerUp = controller_axis_check_negative(gp_axislv) || controller_check(gp_face1);
		controllerLeft = controller_axis_check_negative(gp_axislh);
		controllerRight = controller_axis_check_positive(gp_axislh);
	} else {
		controllerUp = false;
		controllerLeft = false;
		controllerRight = false;
	}

    up_pressed    = (keyboard_check(vk_up)    || keyboard_check(ord("W")) || keyboard_check(vk_space) || controllerUp	);
    left_pressed  = (keyboard_check(vk_left)  || keyboard_check(ord("A"))                             || controllerLeft	);
    right_pressed = (keyboard_check(vk_right) || keyboard_check(ord("D"))                             || controllerRight);

    xSpeed = (right_pressed - left_pressed) * 7;

    if (jumpTimer < 16) {
        ySpeed = (0             - up_pressed  ) * 32 + 16;
        jumpTimer = jumpTimer + 1;
    } else if (jumpTimer >= 16) {
        ySpeed = lerp(ySpeed, 16, (jumpTimer - 16)/50);
		jumpTimer = jumpTimer + 1;
    }

    //Horizontal Collision
        if (xSpeed > 0) {
            bbox_side = bbox_right;
        } else {
            bbox_side = bbox_left;
        }

        if (    (tilemap_get_at_pixel(collisionMap, bbox_side + xSpeed, bbox_top   ) != 0) 
            ||  (tilemap_get_at_pixel(collisionMap, bbox_side + xSpeed, bbox_bottom) != 0)
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

    if (!up_pressed) {
        jumpTimer = 0;
    }
    show_debug_message("Timer: " + string(jumpTimer) + " Y Speed: "+ string(ySpeed));
}