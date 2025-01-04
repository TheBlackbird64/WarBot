var liste_comptes_2 = separer(liste_comptes, "*")
for (var i = 0; array_length(liste_comptes_2) > i; i++)
{
	liste_comptes_2[i] = separer(liste_comptes_2[i], "!")
}

var liste_tri = []
var pos = 0

for (var i = 0; array_length(liste_comptes_2) > i; i++)
{
	pos = array_length(liste_tri)
	for (var j = 0; array_length(liste_tri) > j; j++)
	{
		if not (int64(liste_comptes_2[i][2]) > int64(liste_tri[j][2]))
		{
			pos --
		}
	}
	array_insert(liste_tri, pos, liste_comptes_2[i])
}

for (var i = 0; array_length(liste_tri) > i; i++)
{
	if array_length(liste_tri) - i < 10
	{
		var inst = instance_create_depth(x, y, depth-1, icone_comptes)
		inst.position_compte = array_length(liste_tri) - i
		inst.pseudo_compte = liste_tri[i][0]
		inst.classement_compte = liste_tri[i][2]
		inst.xp_compte = liste_tri[i][3]
	}
}