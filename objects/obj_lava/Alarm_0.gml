/// @description Criar efeito de fogo
// Criar uma partícula de fogo em uma posição aleatória dentro do objeto
var xx = x + random(sprite_width);
var yy = y + random(sprite_height);

// Cria o efeito visual de fogo
effect_create_above(ef_fire, xx, yy, 0, c_red);

// Reinicia o alarme para efeito contínuo
alarm[0] = irandom_range(5, 20); 