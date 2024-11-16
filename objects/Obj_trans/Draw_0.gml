/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

for (var i = 0; i < lins; i++)
{
	for (var j = 0; j < cols; j++)
	{
		var _img = max(0, img - j);
		
		draw_sprite_ext(spr_quad, _img, j * tamanho, i* tamanho, 1, 1, 0, c_black, 1)
	}
}