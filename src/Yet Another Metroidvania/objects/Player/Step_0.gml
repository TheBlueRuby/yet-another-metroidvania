var bbox_side;

up_pressed    = (keyboard_check(vk_up)    || keyboard_check(ord("W")) || keyboard_check(vk_space));
left_pressed  = (keyboard_check(vk_left)  || keyboard_check(ord("A"))                            );
right_pressed = (keyboard_check(vk_right) || keyboard_check(ord("D"))                            );

xSpeed = (right_pressed - left_pressed) * 5;
ySpeed = (0             - up_pressed  ) * 14 + 6;

//Horizontal Collision
    if (xSpeed > 0) {
        bbox_side = bbox_right;
    } else {
        bbox_side = bbox_left;
    }

    if (    (tilemap_get_at_pixel(collisionMap, bbox_side + xSpeed, bbox_top   ) != 0) 
        ||  (tilemap_get_at_pixel(collisionMap, bbox_side + xSpeed, bbox_bottom) != 0)
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