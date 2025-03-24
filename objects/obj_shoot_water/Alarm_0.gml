/// @description Cria efeito de água
// Cria partícula de água
part_type_shape(0, pt_shape_pixel);
part_type_size(0, 0.1, 0.3, 0, 0);
part_type_scale(0, 1, 1);
part_type_color1(0, trail_color);
part_type_alpha1(0, 0.6);
part_type_speed(0, 0.2, 0.5, 0, 0);
part_type_direction(0, 0, 359, 0, 0);
part_type_gravity(0, 0.02, 270);
part_type_life(0, 20, 40);

// Emite partículas
part_particles_create(0, x, y, 0, 5);

// Reinicia o alarme
alarm[0] = 2; 