if groupe()
{
	var tab_temp = tab_temp_grp()
	if tab_temp[0] == "sync_coord_prec"
	{
		try {
		x = int64(tab_temp[1])+ajout
		y = int64(tab_temp[2])
		image_angle = int64(tab_temp[3])
		vie = int64(tab_temp[4])
		energie = int64(tab_temp[5])
		
		if not envoi_robot_effectue
		{
			envoi_robot_effectue = true
			envoi_grp(["robot", string(global.config[3][0])])
		}
		} catch (e)
		{
			client_reseau.compteur_erreurs ++
		}
	}
	if tab_temp[0] == "robot"
	{
		vie_max = get_module_robot_stats(int64(tab_temp[1]), "vie_max")
		vie = vie_max
		energie_max = get_module_robot_stats(int64(tab_temp[1]), "energie_max")
		energie = energie_max
		
		inst_sprite = instance_create_depth(x, y, depth, get_module_robot_sprite(int64(tab_temp[1]), false))
		inst_sprite._parent = id
		sprite_index = get_module_robot_sprite(global.config[3][0], true)
		set_scale(inst_sprite.image_xscale)
		image_alpha = 0
	}
	if tab_temp[0] == "tir"
	{
		try {
			tirer(int64(tab_temp[1]), equipe, int64(tab_temp[2])+ajout, int64(tab_temp[3]), int64(tab_temp[4])+ajout, int64(tab_temp[5]), false)
		} catch (e)
		{
			client_reseau.compteur_erreurs ++
		}
	}
	if tab_temp[0] == "power_up"
	{
		try {
			power_up(id, int64(tab_temp[1]), int64(tab_temp[2])+ajout, int64(tab_temp[3]), false)
		} catch (e)
		{
			client_reseau.compteur_erreurs ++
		}
	}
}