compteur --
image_alpha = compteur/200
if compteur == 0 {instance_destroy()}

var liste_temp = ds_list_create()
collision_circle_list(x, y, sprite_width/2, her_joueur, true, false, liste_temp, false)
var tab = liste_vers_tab(liste_temp)

for (var i = 0; array_length(tab) > i; i++)
{
	if tab[i].equipe != equipe {with (tab[i]) {set_effet(effet_feu)}}
}