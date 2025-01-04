compteur --
image_alpha = compteur/480
if compteur == 0 {instance_destroy()}

var liste_temp = ds_list_create()
collision_circle_list(x, y, sprite_width/2, her_joueur, true, false, liste_temp, false)
var tab = liste_vers_tab(liste_temp)

for (var i = 0; array_length(tab) > i; i++)
{
	if variable_instance_exists(tab[i], "vitesse") and variable_instance_exists(tab[i], "equipe")
	{
		if equipe != tab[i].equipe
		{
			with (tab[i])
			{
				var a = set_effet(effet_ralenti)
				a.compteur_max = 50
				a.compteur = 50
			}
		}
	}
}