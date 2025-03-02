global.speedModifier += 0.0005;

score += 0.5 * global.speedModifier;

if (keyboard_check_pressed(ord("A")) && !global.underworld) {
    var portal_x = room_width / 2;
    var portal_y = (room_height / 2) - 150;
    instance_create_depth(portal_x, portal_y, 0, obj_portal);
}

