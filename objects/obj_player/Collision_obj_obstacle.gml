global.gameOver = true;
grav = 0;
global.speedModifier = 0;
global.undercount = 0
image_speed = 0;

if (!instance_exists(obj_play_again)) {
    var play_again_x = room_width / 2;
    var play_again_y = room_height / 2 - 100;
    instance_create_layer(play_again_x, play_again_y, "Instances", obj_play_again);

    var menu_btn_y = play_again_y + 200; 
    instance_create_layer(play_again_x, menu_btn_y, "Instances", obj_menu_btn);
}