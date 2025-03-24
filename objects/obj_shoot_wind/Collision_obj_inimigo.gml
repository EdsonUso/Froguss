// Causa menos dano, mas tem efeito maior de knockback
// Reduz a vida do inimigo
other.hp -= 0.5; // Metade do dano dos outros projéteis
other.alpha = 1;

// Efeito visual de vento
effect_create_above(ef_smoke, other.x, other.y, 1, c_white);

// Efeito de knockback muito forte 
var push_dir = point_direction(x, y, other.x, other.y);
var push_spd = 8; // Mais forte que o da água
other.hspeed += lengthdir_x(push_spd, push_dir);
other.vspeed += lengthdir_y(push_spd, push_dir);

// Destruir o projétil
instance_destroy();