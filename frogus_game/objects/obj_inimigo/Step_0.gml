if hp = 0
{
	instance_destroy();
	drop_loot = function(_chance = 100, _valor = 1)
	{
		show_message(_chance);
		show_message(_valor);
	}
}

if place_meeting(x, y, Obj_parede_inmg)
{
	if direc == 0{
		direc = 1;
	}else if direc == 1{
		direc = 0;
	}
}

if direc == 0{
	sprite_index = spr_enemy_mov_direi
	x += veloc;
}else if direc == 1{
	sprite_index = spr_enemy_mov
	x-= veloc;
}



