/// @description Step Event

    // Movimento de flutuação
    y += sin(bob_offset + current_time * bob_speed) * bob_amount;
	//TODO: A mosca deve fugir do jogador para não ser capturada
    
    // Verifica colisão com o jogador
    if (place_meeting(x, y, obj_frogy)) {
        var _player = obj_frogy;
        
        // Adiciona tiros super ao jogador
        _player.super_shots = super_shots;
        
        // Destrói a mosca
        instance_destroy();
    }
