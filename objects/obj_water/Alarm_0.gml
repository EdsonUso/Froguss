/// @description Criar efeito de bolhas
// Criar uma bolha em uma posição aleatória dentro do objeto
var xx = x + random(sprite_width);
var yy = y + random(sprite_height);

// Cria o efeito visual de bolha
effect_create_above(ef_bubble, xx, yy, 0, c_aqua);

// Reinicia o alarme para efeito contínuo
alarm[0] = irandom_range(10, 60); 