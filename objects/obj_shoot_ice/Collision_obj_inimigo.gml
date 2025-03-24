// Reduz a vida do inimigo
other.hp--;
other.alpha = 1;

// Efeito de congelamento (reduz a velocidade do inimigo)
other.speed *= 0.5;
other.alarm[1] = room_speed * 3; // Timer para descongelar

// Efeito visual de congelamento
effect_create_above(ef_snow, other.x, other.y, 1, c_aqua);

// Destruir o projétil
instance_destroy(); 