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

direc = 0;

grv = 0.36;

veloc = 1.8;
vveloc = 0;

hveloc = 0;

audio_play_sound(musiquinha_temporaria, 1, 0 )