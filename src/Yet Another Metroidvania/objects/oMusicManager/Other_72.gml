if (audio_group_is_loaded(music)) {
    
    var musicTrack = "mus_" + room_get_name(room);

    audio_stop_all();
    audio_play_sound(asset_get_index(musicTrack), 1, true);
               
    
}