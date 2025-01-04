global.focus_boutons = 1000

compteur --

if compteur == 60
{
	compteur_nb_classement = nb_classement
	compteur_nb_pieces = nb_pieces
	compteur_nb_xp = nb_xp
}

if compteur_nb_classement > 100 {compteur_nb_classement = 100}
if compteur_nb_pieces > 100 {compteur_nb_pieces = 100}
if compteur_nb_xp > 100 {compteur_nb_xp = 100}

if compteur <= 0
{
	var z = 150
	if room = R_accueil
	{
		if compteur_nb_pieces > 0
		{
			var a = instance_create_depth(x-z/2+random_range(0, z), y-z/2+random_range(0, z), depth, part_rec)
			a.sprite_index = S_pieces
			a._x = 935
			a._y = 40
			compteur_nb_pieces -= 1
		}
		else
		{
			if compteur_nb_xp > 0
			{
				var a = instance_create_depth(x-z/2+random_range(0, z), y, depth-z/2+random_range(0, z), part_rec)
				a.sprite_index = S_xp
				a._x = 355
				a._y = 40
				compteur_nb_xp -= 1
			}
			else
			{
				if compteur_nb_classement > 0
				{
					var a = instance_create_depth(x-z/2+random_range(0, z), y, depth-z/2+random_range(0, z), part_rec)
					a.sprite_index = S_classement
					a._x = 266
					a._y = 478
					compteur_nb_classement -= 1
				}
				else
				{
					if not instance_exists(part_rec) {instance_destroy()}
				}
			}
		}
	}
}