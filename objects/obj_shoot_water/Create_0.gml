/// @description Projétil de água
// Propriedades do projétil
speed = 10;
direction = 0;
image_angle = 0;

// Dano e efeitos
damage = 2;
knockback = 3;
effect_type = global.SpellType.WATER;

// Propriedades visuais
image_blend = c_aqua;
trail_color = c_aqua;
trail_size = 2;

// Cria trilha de partículas a cada passo
alarm[0] = 2; 