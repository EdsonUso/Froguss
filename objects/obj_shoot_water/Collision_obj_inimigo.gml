// Reduz a vida do inimigo
other.hp--;
other.alpha = 1;

// Efeito visual de respingo
effect_create_above(ef_rain, other.x, other.y, 1, c_aqua);

// Adiciona efeito de knockback (empurra o inimigo)
var push_dir = point_direction(x, y, other.x, other.y);
var push_spd = 4;
other.hspeed += lengthdir_x(push_spd, push_dir);
other.vspeed += lengthdir_y(push_spd, push_dir);

// Destruir o projétil
instance_destroy(); 