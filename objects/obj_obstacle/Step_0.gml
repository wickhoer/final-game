if (sprite_index == spr_bird) {
    speed = -14 * global.speedModifier;
} else {
    speed = -11 * global.speedModifier;
}

if (x < -100)
	instance_destroy();