if (!audio_is_playing(snd_bg_music)) {
    music_id = audio_play_sound(snd_bg_music, 1, true);
    audio_sound_gain(music_id, 0.20, 0); // volymen till 20%
}