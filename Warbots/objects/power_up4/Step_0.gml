if equipe == "E1"
{
	if _parent.energie + ajout_energie > _parent.energie_max {_parent.energie = _parent.energie_max}
	else {_parent.energie += ajout_energie}
	for (var i = 0; instance_number(bouton_module_attaque) > i; i++)
	{
		var inst = instance_find(bouton_module_attaque, i)
		if inst.recharge + ajout_recharge > inst.recharge_max {inst.recharge = inst.recharge_max}
		else {inst.recharge += ajout_recharge}
	}
	
	if not effectue
	{
		effectue = true
		array_push(draw_interface.liste_ajouts_vie, [_parent.id, _parent.vie])
		if _parent.vie + ajout_vie >= _parent.vie_max {_parent.vie = _parent.vie_max}
		else {_parent.vie += ajout_vie}
	}
}


if equipe != "E1"
{
	if not effectue2 {
		effectue2 = true
		var result = find_index_array_2d(global.degats_multipli, 0, equipe)
		if result == -1
		{
			array_push(global.degats_multipli, [equipe, 1+ajout_attaque])
		}
		else
		{
			global.degats_multipli[result][1] += ajout_attaque
		}
	}
}
compteur --
if compteur == 0 {instance_destroy()}

