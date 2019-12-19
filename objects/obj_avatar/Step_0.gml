/// @description Insert description here
// You can write your code in this editor

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
move_x = 0;
move_y = 0;

move_x = (right - left)*spd;
move_y = (down - up)*spd; 
//collision wall & blocker
if(place_meeting(x + move_x,y,obj_wall)){
	while(!place_meeting(x + sign(move_x),y,obj_wall)){
		x += sign(move_x);
	}
}else if(place_meeting(x + move_x,y,obj_blocker)){
	while(!place_meeting(x + sign(move_x),y,obj_blocker)){
		x += sign(move_x);
	}
}else{
	x += move_x;
}
if(place_meeting(x,y+move_y,obj_wall)){
	while(!place_meeting(x,y + sign(move_y),obj_wall)){
		y += sign(move_y);
	}
}else if(place_meeting(x,y+move_y,obj_blocker)){
	while(!place_meeting(x,y + sign(move_y),obj_blocker)){
		y += sign(move_y);
	}
}else{
	y += move_y;
}


//facing mouse
dir = point_direction(x, y, mouse_x, mouse_y);
image_angle += sin(degtorad(dir - image_angle)) * rspeed;


//shooting
trigger = mouse_check_button(mb_left);

if(global.ammo > 0 && trigger && game_count > 50){
	audio_play_sound(snd_kayla_shoot,1,0);
	bullet = instance_create_layer(x,y,"Instances",obj_bullet);
	bullet.direction = point_direction(x, y, mouse_x, mouse_y);
	bullet.image_angle = point_direction(x, y, mouse_x, mouse_y);
	global.ammo -= 1;
	game_count = 0;
}else if(global.ammo == 0 && trigger){
	if(!audio_is_playing(snd_kayla_empty)){
		audio_play_sound(snd_kayla_empty,1,0);
	}
}

game_count ++;