/// @description check_environment()
/// @param {real} x Coordenada x do jogador
/// @param {real} y Coordenada y do jogador
function check_environment(x, y) {
    // Valores de retorno:
    // global.EnvironmentType.FOREST (0) - Ambiente de floresta
    // global.EnvironmentType.WATER (1) - Ambiente de água
    // global.EnvironmentType.FIRE (2) - Ambiente de fogo
    // global.EnvironmentType.SNOW (3) - Ambiente de neve
    
    // Verificar colisão com objetos de ambiente
    
    // Verifica se está sobre água
    if (position_meeting(x, y, obj_water)) {
        return global.EnvironmentType.WATER;
    }
    
    // Verifica se está sobre lava/fogo
    if (position_meeting(x, y, obj_lava)) {
        return global.EnvironmentType.FIRE;
    }
    
    // Verifica se está sobre neve
    if (position_meeting(x, y, obj_snow)) {
        return global.EnvironmentType.SNOW;
    }
    
    // Se não está em nenhum ambiente especial, é floresta (padrão)
    return global.EnvironmentType.FOREST;
} 