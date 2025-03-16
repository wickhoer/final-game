randomize();

// Välj ett hinder
var sprite_choice = choose(spr_rock, spr_mushroom, spr_mushroom2, spr_tree, spr_tree2, spr_bird, spr_portal);

// Bestäm Y-position baserat på om hindret är en fågel
var y_pos = global.underworld ? room_height - 570 : room_height - 150;

if (sprite_choice == spr_bird) {
    y_pos = global.underworld ? room_height - 420 : room_height - 280; 
}

if (sprite_choice == spr_portal && !global.underworld){
	event_perform(ev_alarm, 11);
	alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);
	exit;
} else if(global.underworld) {
	sprite_choice = spr_rock
}


var i = instance_create_layer(room_width + 100, y_pos, "Instances", obj_obstacle);
i.sprite_index = sprite_choice;

i.image_speed = 1;
i.image_index = random_range(0, sprite_get_number(i.sprite_index) - 1);

if (global.underworld) {
    i.image_angle = 180;
	i.image_xscale = -1;
}

if (global.gameOver) exit;

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);
