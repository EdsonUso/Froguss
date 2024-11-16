if global.life = 3
{
	draw_sprite(spr_life, 0, 110, 25)
}
if global.life = 2
{
	draw_sprite(spr_life, 0, 110, 25)
}
if global.life = 1
{
	draw_sprite(spr_life, 0, 110, 25)
}

if global.life = 0
{
instance_destroy();
}