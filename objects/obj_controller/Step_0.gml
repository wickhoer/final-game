
if (keyboard_check_pressed(vk_enter)) {
    if (!underworld_active) {
        layer_background_sprite(game_background, spr_underworld);  
        global.speedModifier /= 2; 
        obj_player.grav /= 2;  
        obj_player.jspd /= 1.5;  
        underworld_active = true;  
    } else {
        layer_background_sprite(game_background, spr_overworld);  
        global.speedModifier = 1;
        obj_player.grav = 5;
        obj_player.jspd = 50;
        underworld_active = false;
    }
}



