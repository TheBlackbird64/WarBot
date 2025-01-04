if equipe == "E1"
{
	if _parent.energie + ajout_energie > _parent.energie_max {_parent.energie = _parent.energie_max}
	else {_parent.energie += ajout_energie}
}
compteur --
if compteur == 0 {instance_destroy()}

