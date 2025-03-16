if (!collision_disabled) {
    global.gameOver = true;
    grav = 0;
    global.speedModifier = 0;
    global.undercount = 0;
    image_speed = 0;

    collision_disabled = true;

    array_push(global.scores, score);

    // Debugga alla scores
    for (var i = 0; i < array_length(global.scores); i++) {
        //show_debug_message("Score " + string(i) + ": " + string(global.scores[i]));
    }

    // Highest score
    global.maxScore = global.scores[0]; 
    
	for (var i = 1; i < array_length(global.scores); i++) {
        if (global.scores[i] > global.maxScore) {
           global.maxScore = global.scores[i]; 
        }
    }

    // Debugga
    // show_debug_message("Highest Score: " + string(max_score));
    
    if (!instance_exists(obj_play_again)) {
        var play_again_x = room_width / 2;
        var play_again_y = room_height / 2 - 100;
        instance_create_layer(play_again_x, play_again_y, "Instances", obj_play_again);

        var menu_btn_y = play_again_y + 200;
        instance_create_layer(play_again_x, menu_btn_y, "Instances", obj_menu_btn);
    }
}