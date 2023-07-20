/// @description Insert description here
// You can write your code in this editor

if(instance_number(obj_enemy1) + instance_number(obj_enemy2) < 10){

	if(irandom(2) % 2 == 0){
		instance_create_depth(irandom_range(32,room_width-32),irandom_range(32,room_height-32),-1, obj_enemy1);
	}else{
		instance_create_depth(irandom_range(32,room_width-32),irandom_range(32,room_height-32),-1, obj_enemy2);
	}
	alarm[0] = irandom_range(60,60*10);
}

