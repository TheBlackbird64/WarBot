// power ups
for (var i = 0; array_length(liste_ajouts_vie) > i; i++)
{
	if liste_ajouts_vie[i][1] > liste_ajouts_vie[i][0].vie
	{
		array_delete(liste_ajouts_vie, i, 1)
	}
}

compteur_pw -= 5
if compteur_pw == -100 {compteur_pw = 100}