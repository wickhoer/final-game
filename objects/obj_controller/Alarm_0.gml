randomize();

// Skapa ett hinder
var i = instance_create_layer(room_width + 100, room_height - 150, "Instances", obj_obstacle);
i.sprite_index = choose(spr_rock, spr_mushroom, spr_mushroom2, spr_tree, spr_tree2);
i.image_speed = 0;
i.image_index = random_range(0, sprite_get_number(i.sprite_index) - 1);


if (global.gameOver) exit;

// Sätt alarm för nästa hinder
alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);