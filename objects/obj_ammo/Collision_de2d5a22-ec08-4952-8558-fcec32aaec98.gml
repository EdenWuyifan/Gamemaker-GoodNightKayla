/// @description Insert description here
// You can write your code in this editor

if(global.ammo < 3){
	global.ammo += 1;
	instance_destroy();
	audio_play_sound(snd_kayla_yeah,1,0);
}
