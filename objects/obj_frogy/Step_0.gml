#region controles
direita = keyboard_check(ord("D"))
esquerda = keyboard_check(ord("A"))
cima = keyboard_check_pressed(ord("W"))
key_shoot = keyboard_check_pressed(ord("R"))
key_restart = keyboard_check(ord("P"))
#endregion

#region movimentação

hveloc = (direita - esquerda) * veloc;

if direita {
	direc = 0;
	sprite_index = frog_esquerda;
} else if esquerda{
	direc = 1;
	sprite_index = frog_direita;
} else {
	if direc == 0{
		sprite_index = frog_idle_esquerda;
	}else if direc == 1{
		sprite_index = frog_idle_direita;
	}
}

if !place_meeting(x, y + 1, obj_parede){
	vveloc += grv;
}else{
if cima{
	vveloc = -5;
}
}

if place_meeting(x + hveloc, y, obj_parede){
	while !place_meeting(x + sign(hveloc), y, obj_parede){
	x += sign(hveloc);	
}
hveloc = 0;
}

x += hveloc

if place_meeting(x, y + vveloc, obj_parede){
	while !place_meeting(x, y + sign(vveloc), obj_parede){
		y += sign(vveloc);
	}
	
	vveloc = 0;
}

y += vveloc;





#endregion

#region tiro

var flipped = direction;
var gun_x = (x+4)*(flipped)
var _xx = x + lengthdir_x(1, image_angle)
var y_offset = lengthdir_y(-20,image_angle)

if key_shoot and global.bullets > 0
{
	with (instance_create_layer(_xx,y+-1,"shoot", obj_shoot))
{
audio_play_sound(Sound2, 1, 0)
global.bullets --;
speed = 4;
direction = -90 + 90 * other.image_xscale;
image_angle = direction;
}
}
#endregion


if key_restart 
{
	game_restart();
}



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

///MORRENDO
if global.life = 0{
	game_restart()
	
}

var fire 

fire = mouse_check_button_pressed(mb_left)

//criando tiro
if global.bullets > 0 {
	
if (fire) 
	{
		audio_play_sound(Sound2, 1, 0)
		global.bullets --;
	var _tiro = instance_create_layer( obj_varinha.x, obj_varinha.y, "shoot", obj_shoot);
	_tiro.speed = 10;
	_tiro.direction = point_direction(x, y, mouse_x, mouse_y);
}

} 


	
	




