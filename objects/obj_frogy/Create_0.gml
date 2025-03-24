///teclas
direita = 0;
esquerda = 0;
cima= 0;

global.bullets = 6;
global.life = 3;

//Lista de magias do player 
spells = [];

//função que irá capturar as magias
grant_spells = function(magic){
	//adicionando magias a lista de magias
	array_push(spells, magic)
}

// Variáveis de transformação

current_environment = global.EnvironmentType.FOREST;
active_magic = global.SpellType.FIRE; // Magia padrão
transformation_cooldown = 0;
can_transform = true;
transformed_idle_sprite = frog_idle_esquerda; // Substitua pelo sprite padrão

// Variáveis de movimento
direc = 0;
grv = 0.36;
veloc = 1.8;
vveloc = 0;
hveloc = 0;

// Verificação de ambiente a cada passo
check_environment_timer = 0;
check_environment_interval = 15; // A cada 15 passos

audio_play_sound(musiquinha_temporaria, 1, 0 )


    
//Sistema de super magias
current_spell = noone;
super_shots = 0;
