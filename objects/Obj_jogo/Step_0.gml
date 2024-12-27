//aparecendo somente quando o player morrer

if global.life < 1 
{
	if (!instance_exists(Obj_trans))
{
	instance_create_layer(0, 0, layer, Obj_trans, {destino : Room1})
	room_restart();
}

}