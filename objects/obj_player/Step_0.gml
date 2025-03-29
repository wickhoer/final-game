if (global.gameOver) exit;

scr_jump_new();
scr_set_sprite();

if (keyboard_check(ord("S"))) {
    sprite_index = spr_player_duck;
} else if (keyboard_check(ord("W"))) {
    sprite_index = spr_player_jump;
} else {
    sprite_index = spr_player_run; 
}