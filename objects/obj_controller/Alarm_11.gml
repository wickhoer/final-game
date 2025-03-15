randomize();

// Set Y-position for the portal
var portal_y_pos = global.underworld ? room_height - 570 : room_height - 150;

// Create the portal instance
var p = instance_create_layer(room_width + 100, portal_y_pos, "Instances", obj_portal);

p.image_speed = 1;
p.image_index = random_range(0, sprite_get_number(p.sprite_index) - 1);


if (global.gameOver) exit;