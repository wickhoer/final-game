function scr_jump_new() {
    // Apply Gravity (Normal or Fast Fall)
    if (!grounded) {
            if (global.underworld) {
                vspeed -= 0.5;  // Pull upwards in the underworld
            } else {
                vspeed += 0.5;  // Pull downward in normal world
            }
        }

    // Jumping (Only if grounded)
    if (keyboard_check_pressed(jump_key) && grounded) {
        if (global.underworld) {
            vspeed = 10; // Move up in underworld (opposite direction)
        } else {
            vspeed = -10; // Move up in normal world
        }
        grounded = false; // Prevent multiple jumps
    }

    // Apply vertical movement
    if (global.underworld) {
        y += vspeed; // Move up in underworld (negative gravity)
    } else {
        y += vspeed; // Move down in normal world (positive gravity)
    }
    
   if (place_meeting(x, y + (global.underworld ? -1 : 1), obj_block)) {
    grounded = true;
    vspeed = 0; // Stop downward motion

    // Resolve collision: Move player out of the ground/block
    if (!global.underworld) {
        while (place_meeting(x, y, obj_block)) {
            y -= 1; // Move player up slightly if stuck in normal world
        }
    } else {
        while (place_meeting(x, y, obj_block)) {
            y += 1; // Move player down slightly if stuck in the underworld
        }
    }
} else {
    grounded = false;
}

}
