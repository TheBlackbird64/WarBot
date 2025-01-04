
function set_effet(effet)
{
	var verif = true
	if instance_number(effet) > 0
	{
		for (var i = 0; instance_number(effet) > i; i++)
		{
			var inst_temp = instance_find(effet, i)
			if inst_temp._parent == id
			{
				inst_temp.compteur = inst_temp.compteur_max
				verif = false
				return inst_temp
			}
		}
	}
	if verif
	{
		var a = instance_create_depth(x, y, depth-10, effet)
		a._parent = id
		return a
	}
}//*/

function set_recul(centre_recul_x, centre_recul_y, diametre_recul)
{
	var inst_temp = instance_create_depth(x, y, 0, recul)
	inst_temp.diametre_recul = diametre_recul
	inst_temp.centre_recul_x = centre_recul_x
	inst_temp.centre_recul_y = centre_recul_y
	inst_temp._parent = id
}