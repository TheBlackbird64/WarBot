if page != image_index
{
	for (var i = 0; i < array_length(liste_id_icone); i += 1)
	{
		instance_destroy(liste_id_icone[i])
	}
	page = image_index
	
	//nombre de modules de la section
	var boucle = 0
	if image_index == 0 {boucle = sprite_get_number(S_icone_attaque)-1} 
	if image_index == 1 {boucle = sprite_get_number(S_icone_defense)-1}
	if image_index == 2 {boucle = sprite_get_number(S_icone_power_ups)-1}
	if image_index == 3 {boucle = sprite_get_number(S_icone_robots)-1}
	if image_index == 4 {boucle = sprite_get_number(S_icone_ameliorations)-1}
	
	var _x = 0
	var _y = 0
	var i = 0
	while boucle > i
	{
		i++
		if _x == 5 {
			_x = 0
			_y ++
		}
		var a = instance_create_depth((x-320) + _x*160, (y+120) + _y*150, depth-10, icone_modules)
		
		if image_index == 0 {a.sprite_index = S_icone_attaque} //nombre de modules de la section
		if image_index == 1 {a.sprite_index = S_icone_defense}
		if image_index == 2 {a.sprite_index = S_icone_power_ups}
		if image_index == 3 {a.sprite_index = S_icone_robots}
		if image_index == 4 {a.sprite_index = S_icone_ameliorations}
		
		a.image_index = i
		try {
			a.texte = liste_icone[image_index][i-1]
		} catch(e)
		{
			a.texte = "- pas de description -"
		}
		array_push(liste_id_icone, a)
		_x ++
	}
}