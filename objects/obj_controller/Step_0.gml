global.speedModifier += 0.0005;

score += 0.5 * global.speedModifier;

if (keyboard_check_pressed(vk_left) && !global.underworld) {
	global.underworld = true
	room_goto(rm_under)
}
