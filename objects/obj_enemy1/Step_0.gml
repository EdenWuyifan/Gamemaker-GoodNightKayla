/// @description Insert description here
// You can write your code in this editor


if(distance_to_object(obj_avatar) <= 250){
	image_angle = point_direction(x,y,obj_avatar.x,obj_avatar.y);
	if(count == 80){
		bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy);
		
		bullet.direction = point_direction(x, y, obj_avatar.x, obj_avatar.y);
		bullet.image_angle = point_direction(x, y, obj_avatar.x, obj_avatar.y);
	}
	
}else{
	image_angle += 0.1;
}

if(count == 80){
	count = 0;
}
count ++;