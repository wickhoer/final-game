global.maxScore = 0;

if (room != rm_under){
  global.underworld = false;
}

if (room == rm_under) {
	obj_player.jump_key = ord("S");
    obj_player.fall_key = ord("W");
	alarm[1] = room_speed * 10;
}


if (global.undercount <= 0) {
    global.speedModifier = 1; 
}


if (room == rm_under) {
    event_perform(ev_alarm, 0);  
} else if (global.undercount > 0){
	alarm[0] = room_speed * 1;
} else {
    alarm[0] = room_speed * 3;
}