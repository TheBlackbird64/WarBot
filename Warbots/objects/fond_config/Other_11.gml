for (var j = array_length(liste_b_suppr)-1; 0 <= j; j--)
{
	instance_destroy(liste_b_suppr[j])
	array_delete(liste_b_suppr, j, 1)
}

for (var i = 0; array_length(liste_max_modules) > i; i++)
{
	if i != 3 {
		for (var i2 = 0; liste_max_modules[i] > i2; i2++)
		{
			array_push(liste_b_suppr, create_widget(b_supprimer, x, y, 0.3))
		}
	}
}