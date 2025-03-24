/// @description transform_frog()
/// @param {object} frog O objeto do sapo
/// @param {real} environmentType O tipo de ambiente
function transform_frog(frog, environmentType) {
    // Transforma o sapo com base no ambiente
    
    // Salva o ambiente atual
    global.currentEnvironment = environmentType;
    
    // Recupera as informações da transformação
    var transformation = undefined;
    
    switch (environmentType) {
        case global.EnvironmentType.FOREST:
            transformation = global.FrogTransformation.FOREST;
            break;
        case global.EnvironmentType.WATER:
            transformation = global.FrogTransformation.WATER;
            break;
        case global.EnvironmentType.FIRE:
            transformation = global.FrogTransformation.FIRE;
            break;
        case global.EnvironmentType.SNOW:
            transformation = global.FrogTransformation.SNOW;
            break;
        default:
            transformation = global.FrogTransformation.FOREST;
            break;
    }
    
    // Aplica a transformação se for válida
    if (transformation != undefined) {
        // Aplica efeito visual de transformação
        effect_create_above(ef_ring, frog.x, frog.y, 1, make_color_hsv(irandom(255), 255, 255));
        
        // Atualiza a magia ativa
        frog.active_magic = transformation.magicType;
        
        // Atualiza a sprite se houver uma direção definida
        if (frog.direc == 0) { // direita
            frog.transformed_idle_sprite = transformation.sprite;
            frog.sprite_index = transformation.sprite;
        } else if (frog.direc == 1) { // esquerda
            frog.transformed_idle_sprite = transformation.sprite; 
            frog.sprite_index = transformation.sprite;
        }
        
        // Retorna true se a transformação foi aplicada com sucesso
        return true;
    }
    
    // Retorna false se a transformação falhou
    return false;
} 