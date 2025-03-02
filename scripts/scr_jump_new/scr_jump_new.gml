function scr_jump_new() {
    static jumps = 0;
    
    if (!grounded) {
    
	var fall = 0.5; 
    
	if (global.underworld) {
        fall = -0.4; 
    }

    
    if (keyboard_check(fall_key)) {
        fall *= 4; 
    }
      vspeed += fall;
    }
    
    if (keyboard_check_pressed(jump_key) && (grounded || jumps < 2)) {
        if (global.underworld) {
            vspeed = 10;
        } else {
            vspeed = -10;
        }
        grounded = false;
        jumps += 1;
    }
    
    y += vspeed;
    
    if (place_meeting(x, y + (global.underworld ? -1 : 1), obj_block)) {
        grounded = true;
        vspeed = 0;
        jumps = 0;
        
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
