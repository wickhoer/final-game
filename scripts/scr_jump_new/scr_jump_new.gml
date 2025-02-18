function scr_jump_new() {
    
    if (!grounded) {
            if (global.underworld) {
                vspeed -= 0.4;  
            } else {
                vspeed += 0.5;
            }
        }

   
    if (keyboard_check_pressed(jump_key) && grounded) {
        if (global.underworld) {
            vspeed = 10; 
        } else {
            vspeed = -10; 
        }
        grounded = false; 
    }

    if (global.underworld) {
        y += vspeed; 
    } else {
        y += vspeed;
    }
    
   if (place_meeting(x, y + (global.underworld ? -1 : 1), obj_block)) {
    grounded = true;
    vspeed = 0;

    if (!global.underworld) {
        while (place_meeting(x, y, obj_block)) {
            y -= 1; 
        }
    } else {
        while (place_meeting(x, y, obj_block)) {
            y += 1;
        }
    }
} else {
    grounded = false;
}

}
