function scr_move_portal(){
if (keyboard_check(ord("D"))) {
    if global.underworld = true exit;
	
    var portal = instance_nearest(x, y, obj_portal);

    if (portal != noone) {
        var move_speed = 20; 

        var dir = point_direction(x, y, portal.x, portal.y);
        var dist = point_distance(x, y, portal.x, portal.y);

        if (dist <= move_speed) {
            x = portal.x;
            y = portal.y;
        } else {
            x += lengthdir_x(move_speed, dir);
            y += lengthdir_y(move_speed, dir);
        }
    }
}

}
