var _sprl = sprite_get_width(spr_life);
var _buffer = 10; 
var _vidas = global.life

for (var i = 0; i < _vidas; i++;){
	
	draw_sprite_ext(spr_life, 0, 30 + (_sprl * i) + (_buffer * 1), 20, 1.5, 1.5, 0, c_white,1);
	
}