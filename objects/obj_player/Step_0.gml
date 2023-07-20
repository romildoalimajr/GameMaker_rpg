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
