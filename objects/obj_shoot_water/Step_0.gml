/// @description Movimento e efeitos
// Atualiza ângulo com base na direção
image_angle = direction;

// Deixa rastro de partículas de água
if (irandom(4) > 2) {
    effect_create_below(ef_rain, x, y, 0, trail_color);
}

// Verifica colisão com parede
if (place_meeting(x, y, obj_parede)) {
    // Cria efeito de splash
    repeat(5) {
        effect_create_above(ef_ring, x, y, 0, trail_color);
    }
    instance_destroy();
} 