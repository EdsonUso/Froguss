/// @description Step Event

    // Verifica se o jogador está próximo
    var _player = obj_frogy;
    var _distance = point_distance(x, y, _player.x, _player.y);
    
    // Mostra/esconde a informação baseado na distância
    if (_distance < 32) {
    	with(info_book){
	        target_alpha = 1;
	        
	        // Verifica se o jogador quer pegar a magia
	        if (keyboard_check_pressed(ord("E"))) {
	            // Adiciona a magia ao jogador
	            _player.current_spell = other.spell_type;
	            _player.super_shots = 0;
	            
	            // Destrói o livro e a informação
	            instance_destroy();
	            instance_destroy(self);
	        }
    	}
    } else {
    	with(info_book){
        	target_alpha = 0;
    	}
    }

if (!variable_instance_exists(id, "alpha")) {
    alpha = 1;
}
alpha = lerp(alpha, 0, 0.1);

