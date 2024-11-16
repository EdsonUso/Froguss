

tamanho = sprite_get_width(spr_quad);

cols = ceil(room_width / tamanho);

lins = ceil(room_height / tamanho);

//variaveis para animaça~do sprite

img=0;

img_vel = sprite_get_speed(spr_quad) / game_get_speed(gamespeed_fps);