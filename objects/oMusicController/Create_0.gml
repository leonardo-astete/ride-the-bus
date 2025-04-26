if (!variable_global_exists("music_id") || !audio_is_playing(global.music_id)) {
    global.music_id = audio_play_sound(background_sound, 1, true);
    audio_sound_gain(global.music_id, 0.3, 0); // 🔊 Volumen al 30%
}