/// @description Insert description here
// You can write your code in this 

if(global.alive == false){
	if(count % 10 != 0){
		draw_text_color(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+180,"Kayla awake! Press 'R' to restart.",c_aqua,c_aqua,c_fuchsia,c_fuchsia,1);
	}
	count ++;
}else{
	global.ammo = global.ammo;
	if(global.ammo != 0){
		for(i = 0;i<global.ammo;i++){
			draw_sprite_ext(spr_bullet,0,obj_avatar.x-20+18*i,obj_avatar.y+48,1,1,90,-1,1);
		}
	}else{
		if(count % 4 == 0){
			draw_sprite_ext(spr_empty,0,obj_avatar.x-16,obj_avatar.y+32,1,1,0,-1,1);
		}
		count ++;
	}
}
