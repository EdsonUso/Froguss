/// @description Create Event
/// @param {real} x Coordenada x do objeto
/// @param {real} y Coordenada y do objeto
/// @param {real} spell_type Tipo de magia do livro
    // Informações da magia
    spell_info = {
        name: "Magia de Fogo",
        description: "Lança uma bola de fogo que causa dano aos inimigos",
        key: "E"
    }
    
    // Configurações visuais
    alpha = 0;
    target_alpha = 0;
    fade_speed = 0.1;
    
    // Posicionamento
    offset_y = -32; // Posição acima do livro 