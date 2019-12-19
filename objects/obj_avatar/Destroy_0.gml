/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"Instances",obj_blood);
if(!audio_is_playing(snd_gameover)){
	audio_play_sound(snd_gameover,1,0);
}