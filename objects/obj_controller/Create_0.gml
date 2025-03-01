if (room != rm_under){
  global.underworld = false;
}

if (room = rm_under) {
	obj_player.jump_key = vk_down;
    obj_player.fall_key = vk_up;
	alarm[1] = room_speed * 10;
}


global.speedModifier = 1;

if (room = rm_under) {
	event_perform(ev_alarm, 0);
} else {
alarm[0] = room_speed * 3;
}