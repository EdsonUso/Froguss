/// @description Draw Event

    // Atualiza o alpha com fade
    alpha += (target_alpha - alpha) * fade_speed;
    
    // Desenha o texto com alpha
    draw_set_alpha(alpha);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    
    // Desenha as informações
    var _x = x;
    var _y = y + offset_y;
    
    draw_text(_x, _y, spell_info.name);
    draw_text(_x, _y + 16, spell_info.description);
    draw_text(_x, _y + 32, "Pressione " + spell_info.key + " para pegar");
    
    draw_set_alpha(1);
