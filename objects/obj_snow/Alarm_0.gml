/// @description Criar efeito de neve
// Criar um floco de neve em uma posição aleatória acima do objeto
var xx = x + random(sprite_width);
var yy = y - random(10);

// Cria o efeito visual de neve
effect_create_above(ef_snow, xx, yy, 0, c_white);

// Reinicia o alarme para efeito contínuo
alarm[0] = irandom_range(10, 30); 