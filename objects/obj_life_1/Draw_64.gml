if global.life = 3
{
	draw_sprite(spr_life, 0, 62, 25)
}

if global.life = 2
{
	draw_sprite(spr_life, 0, 62, 25)
}


if global.life = 1
{
	instance_destroy();
}