#region controles
key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check(vk_space)
key_shoot = keyboard_check_pressed(ord("R"))
key_restart = keyboard_check(ord("P"))
#endregion

#region movimentação
var move = key_right - key_left

global.hspd = move * spd;

vspd = vspd + grv;

if (global.hspd != 0) image_xscale = sign(global.hspd);

//colisão horizontal
if place_meeting(x+global.hspd,y,obj_parede)
{
	while(!place_meeting(x+sign(global.hspd),y,obj_parede))
	{
		x = x + sign(global.hspd);
	}
	vspd = 0;
}
x = x + global.hspd;
		

//colisão vertical
if place_meeting(x,y+vspd,obj_parede)
{
	while(!place_meeting(x,y+sign(vspd),obj_parede))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}
y = y + vspd;


//JUMP
if place_meeting(x,y+1,obj_parede) and key_jump
{
vspd -= 7;
}
#endregion

#region tiro

var flipped = direction;
var gun_x = (x+4)*(flipped)
var _xx = x + lengthdir_x(1, image_angle)
var y_offset = lengthdir_y(-20,image_angle)

if key_shoot and global.bullets > 0
{
	with (instance_create_layer(_xx,y+-1,"shoot", obi_shoot))
{
audio_play_sound(Sound2, 1, 0)
global.bullets --;
speed = 4;
direction = -90 + 90 * other.image_xscale;
image_angle = direction;
}
}
#endregion

if global.life < 1
{
	instance_destroy();
	game_restart();
}

if key_restart 
{
	game_restart();
}

#region troca de sprites
if (!place_meeting(x, y+1,obj_parede))
{
	sprite_index = frogy_jumpinicial;
	if (sign(vspd) > 0.5) sprite_index = frogy_jumpfinal; else sprite_index = frogy_jumpinicial;
}
else
{
	if (global.hspd != 0)
	{
		sprite_index = frogy_mov;
	}
}
if global.hspd = 0 {
	if place_meeting(x,y+1,obj_parede){
		
		sprite_index = frogy_idle
	}
}

if global.hspd != 0 {
	if place_meeting(x,y+1,obj_parede){
		sprite_index = frogy_mov;
	}
}
#endregion

if alarm[0] > 0{
	if image_alpha >= 1{
		alpha_hit = - 0.05;
	}else if image_alpha <= 0{
		alpha_hit = 0.05;
	}
	image_alpha += alpha_hit;
}else{
	image_alpha = 1;
}
