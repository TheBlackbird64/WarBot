if image_index == 1 {if get_xp(true, true, global.xp) < 3 {str = saut_ligne_str("disponible au niveau 3", sprite_width/10)}}
if image_index == 2 {if get_xp(true, true, global.xp) < 5 {str = saut_ligne_str("disponible au niveau 5", sprite_width/10)}}
if image_index == 4 {str = saut_ligne_str("pas encore disponible", sprite_width/10)}

if client_reseau.tabcom[0] == "boutique"
{
	if client_reseau.tabcom[1] == tab[image_index]
	{
		if str == "" {
			modules_a_vendre = separer(client_reseau.tabcom[2], ".")
			for (var i = 0; array_length(modules_a_vendre) > i; i++)
			{
				var tab_tempo = separer(modules_a_vendre[i], "/")
				var a = instance_create_depth(x, y-sprite_height/2+60 + i*90, -10, acheter_obj)
				a.categorie_module = tab[image_index]
				a.num_module = tab_tempo[0]
				a.prix = tab_tempo[1]
				with (a) {event_user(0)}
			}
		}
	}
}