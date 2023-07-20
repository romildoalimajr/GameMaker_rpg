/// @description Insert description here
// You can write your code in this editor

//sprite_index = spr_player

if(keyboard_check(ord("W")) && place_free(x,y-spd)){
	y -= spd;
}
else if(keyboard_check(ord("S")) && place_free(x,y+spd)){
	y += spd;
}

else if(keyboard_check(ord("D")) && place_free(x + spd,y)){
	x += spd;
	image_xscale  = 1;
}

else if(keyboard_check(ord("A")) && place_free(x - spd,y)){
	x -= spd
	image_xscale = -1;
}

camera_set_view_pos(view_camera[0], x - view_wport[0] / 2, y - view_hport[0] / 2);
depth = -y;

if(place_meeting(x,y, obj_enemy1) || place_meeting(x,y, obj_enemy2)){
	if(random(100) < 50){
		life--; 
		audio_play_sound(snd_hurt, 1, false);
	}
}

if(mouse_check_button_pressed(mb_left)){
	var arrow = instance_create_depth(x,y,1, obj_arrow);
	arrow.image_angle = point_direction(x,y,mouse_x, mouse_y);
	arrow.direction = point_direction(x,y,mouse_x, mouse_y);
	arrow.speed = 7;
}

if(life <= 0){
	room_restart();
}

if(instance_number(pontos) == 10){
	room_goto_next();
	//room_goto(rm_02);
}