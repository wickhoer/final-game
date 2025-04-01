if (global.gameOver) exit;

scr_jump_new();
scr_set_sprite();

if (global.underworld) {
    if (keyboard_check(ord("S"))) {
        sprite_index = spr_uw_player_jump;
    } else if (keyboard_check(ord("W"))) {
        sprite_index = spr_uw_player_duck;
    } else {
        sprite_index = spr_uw_player_run;
    }
} else {
    if (keyboard_check(ord("W"))) {
        sprite_index = spr_player_jump;
    } else if (keyboard_check(ord("S"))) {
        sprite_index = spr_player_duck;
    } else {
        sprite_index = spr_player_run;
    }
}
