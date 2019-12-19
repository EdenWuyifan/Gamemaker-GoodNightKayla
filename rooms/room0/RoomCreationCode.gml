global.ammo = 3;
if(!audio_is_playing(snd_bgm)){
	audio_play_sound(snd_bgm,0,1);
}
if(!audio_is_playing(snd_start)){
	audio_play_sound(snd_start,1,0);
}
if(keyboard_check(vk_escape)){
	game_end();	
}