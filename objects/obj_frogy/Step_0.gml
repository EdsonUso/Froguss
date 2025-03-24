#region controles
direita = keyboard_check(ord("D"))
esquerda = keyboard_check(ord("A"))
cima = keyboard_check_pressed(ord("W"))
key_shoot = keyboard_check_pressed(ord("R"))
key_restart = keyboard_check(ord("P"))
#endregion

#region verificação de ambiente
// Incrementa o timer
check_environment_timer++;

// Verifica o ambiente a cada X passos
if (check_environment_timer >= check_environment_interval) {
    check_environment_timer = 0;
    
    // Verifica o ambiente atual
    var new_environment = check_environment(x, y);
    
    // Se o ambiente mudou, inicia a transformação
    if (new_environment != current_environment && can_transform) {
        transform_frog(id, new_environment);
        
        // Aplica cooldown na transformação
        transformation_cooldown = 60; // 1 segundo de cooldown (60 frames)
        can_transform = false;
    }
}

// Atualiza o cooldown de transformação
if (transformation_cooldown > 0) {
    transformation_cooldown--;
    if (transformation_cooldown <= 0) {
        can_transform = true;
    }
}
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

	
}

var fire 

fire = mouse_check_button_pressed(mb_left)

var municao = obj_shoot 

// Usa a magia atual com base na transformação
if (array_length(spells) > 0) {
    municao = spells[array_length(spells) - 1];	
} else {
    // Se não tem magia na lista, usa a magia ativa da transformação
    municao = active_magic;
}

//criando tiro
if global.bullets > 0 {
    if (fire) {
        audio_play_sound(Sound2, 1, 0)
        global.bullets --;
        var _tiro = instance_create_layer(obj_varinha.x, obj_varinha.y, "shoot", municao);
        _tiro.speed = 10;
        _tiro.direction = point_direction(x, y, mouse_x, mouse_y);
        
        // Adiciona efeitos especiais com base no tipo de magia
        switch(municao) {
            case global.SpellType.FIRE:
                // Efeito de fogo
                effect_create_above(ef_spark, obj_varinha.x, obj_varinha.y, 0, c_red);
                break;
            case global.SpellType.WATER:
                // Efeito de água
                effect_create_above(ef_rain, obj_varinha.x, obj_varinha.y, 0, c_aqua);
                break;
            case global.SpellType.ICE:
                // Efeito de gelo
                effect_create_above(ef_snow, obj_varinha.x, obj_varinha.y, 0, c_white);
                break;
            case global.SpellType.WIND:
                // Efeito de vento
                effect_create_above(ef_smoke, obj_varinha.x, obj_varinha.y, 0, c_white);
                break;
        }
    }
} 


    
    // Sistema de tiro
    if (keyboard_check_pressed(ord("X"))) {
        var _is_super = super_shots > 0;
        var _spell = current_spell;
        
        if (_spell != noone) {
            // Cria o tiro
            var _shoot = instance_create_layer(x, y, "Instances", _spell);
            
            // Configura o tiro
            _shoot.direction = image_xscale;
            _shoot.speed = 8;
            
            // Se for tiro super, configura propriedades especiais
            if (_is_super) {
                _shoot.is_super = true;
                _shoot.damage *= 2;
                _shoot.scale = 1.5;
                super_shots--;
            }
        }
    }
 

