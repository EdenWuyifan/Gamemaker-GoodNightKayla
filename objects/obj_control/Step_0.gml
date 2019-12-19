/// @description Insert description here
// You can write your code in this editor

if(global.alive == false){
	if(keyboard_check(ord("R"))){
		room_restart();
	}
	
}

enemy_count = instance_number(obj_enemy) + instance_number(obj_enemy1) + instance_number(obj_enemy_tutorial);

if(enemy_count == 0){
	if(keyboard_check(ord("R"))){
		room_restart();
	}
}