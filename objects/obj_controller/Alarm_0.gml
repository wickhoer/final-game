randomize();

var count = irandom_range(1, 2);

// Set the Y position based on underworld state
var y_pos = global.underworld ? room_height - 650 : room_height - 200;

// Create the obstacle instance
var i = instance_create_layer(room_width + 100, y_pos, "Instances", obj_obstacle);
i.sprite_index = choose(spr_obstacle, spr_obstacle2);

switch (i.sprite_index)
{
    case spr_obstacle:
    case spr_obstacle2:
        i.image_speed = 0;
        i.image_index = random_range(0, sprite_get_number(i.sprite_index) - 1);
        
        if (global.speedModifier > 1.5)
        {
            if (count == 2)
            {
                // Create another obstacle with the same mirrored logic
                var j = instance_create_layer(room_width + 100, y_pos, "Instances", obj_obstacle);
                j.sprite_index = choose(spr_obstacle, spr_obstacle2);
                j.image_speed = 0;
                j.image_index = random_range(0, sprite_get_number(j.sprite_index) - 1);
            }
        }
        break;
    default:
        i.image_speed = 1;
        i.y = choose(room_height - 85, room_height - 145, room_height - 180);
}

alarm[0] = room_speed * random_range(1 / global.speedModifier, 3 / global.speedModifier);
