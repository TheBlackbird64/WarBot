if not detruit {
	speed = vitesse
	image_angle += 5
	portee --
}
else
{
	if irandom_range(1, 2) == 1 {x ++}
	else {x --}
	if irandom_range(1, 2) == 1 {y ++}
	else {y --}
	part_particles_create(global.effet_part_sys, x, y, part_arme14, 2)
	speed = 0
	compteur_destruction --
	if compteur_destruction == -10 {instance_destroy()}
	if compteur_destruction == 0
	{
		var temp_list = ds_list_create()
		collision_circle_list(x, y, rayon, her_joueur, true, true, temp_list, false)
		for (var i = 0; ds_list_size(temp_list) > i; i++)
		{
			with (ds_list_find_value(temp_list, i))
			{
				if equipe != other.equipe {
					set_degats(other.degats, other.type, id)
					var a = set_effet(effet_elec)
					a.compteur = 120
				}
			}
		}
	}
}
if portee <= 0 {detruit = true}