if (sound_on) {
    audio_stop_sound(snd_bg_music);
    audio_sound_gain(snd_jump, 0, 0);
	audio_sound_gain(snd_switch, 0, 0);
    sound_on = false;
    sprite_index = spr_sound_off;
}
else {
    audio_play_sound(snd_bg_music, 1, true);
    audio_sound_gain(snd_bg_music, 0.20, 0);
    audio_sound_gain(snd_jump, 1, 0);
	audio_sound_gain(snd_switch, 1, 0);
    
    sound_on = true;
    sprite_index = spr_sound_on;
}