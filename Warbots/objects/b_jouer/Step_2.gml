if compteur_chargement > 0
{
	compteur_chargement++
	if compteur_chargement > 60
	{
		transition_room(R_anim)
	}
}