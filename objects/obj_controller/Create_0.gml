idtoget = layer_get_id("Background");
game_background = layer_background_get_id(idtoget);
layer_background_sprite(game_background,spr_overworld); 

underworld_active = false;

global.speedModifier = 1;

alarm[0] = room_speed * 3;