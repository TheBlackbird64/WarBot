// fonctions de paramétrage des robots
function set_nb_max_mod(id_robot, if_str)
{
	if id_robot == 1 {var tab_temp = [3, 2, 2, 1]}
	if id_robot == 2 {var tab_temp = [3, 1, 2, 1]}
	if id_robot == 3 {var tab_temp = [2, 2, 3, 1]}
	if id_robot == 4 {var tab_temp = [3, 2, 4, 1]}
	if id_robot == 5 {var tab_temp = [3, 1, 2, 1]}
	if id_robot == 6 {var tab_temp = [4, 3, 3, 1]}
	if id_robot == 7 {var tab_temp = [1, 3, 2, 1]}
	if id_robot == 8 {var tab_temp = [5, 5, 2, 1]}
	if id_robot == 9 {var tab_temp = [2, 1, 1, 1]}
	if id_robot == 10 {var tab_temp = [3, 3, 4, 1]}
	if id_robot == 11 {var tab_temp = [3, 0, 2, 1]}
	if id_robot == 12 {var tab_temp = [1, 6, 1, 1]}
	if id_robot == 13 {var tab_temp = [2, 1, 3, 1]}
	if id_robot == 14 {var tab_temp = [6, 6, 6, 1]}
	if id_robot == 15 {var tab_temp = [1, 2, 3, 1]}
	
	if debug.robot_cheat {var tab_temp = [7, 7, 7, 7]}
	
	if not if_str
	{
		fond_config.liste_max_modules[0] = int64(tab_temp[0])
		fond_config.liste_max_modules[1] = int64(tab_temp[1])
		fond_config.liste_max_modules[2] = int64(tab_temp[2])
		fond_config.liste_max_modules[4] = int64(tab_temp[3])
		with (fond_config) {event_user(1)}
	}
	else
	{
		var result = "nombre module max. attaque: " + string(tab_temp[0])
		 + " nombre module max. defense: " + string(tab_temp[1])
		 + " nombre module max. powerups: " + string(tab_temp[2])
		//result += "nombre module max. amélioration: " + string(tab_temp[3]) + "\n"
		return result
	}
}

function get_module_robot_stats(id_module, nom_var)
{
	var tab_stats_noms = ["vie_max", "energie_max", "vitesse"]
	if id_module == 1 {var tab_stats = [1000, 3500, 7]}
	if id_module == 2 {var tab_stats = [1350, 3200, 6]}
	if id_module == 3 {var tab_stats = [2000, 4000, 4]}
	if id_module == 4 {var tab_stats = [750, 2900, 10]}
	if id_module == 5 {var tab_stats = [1100, 4000, 6]}
	if id_module == 6 {var tab_stats = [850, 3600, 7]}
	if id_module == 7 {var tab_stats = [1200, 3700, 8]}
	if id_module == 8 {var tab_stats = [900, 4200, 5]}
	if id_module == 9 {var tab_stats = [1800, 1800, 8]}
	if id_module == 10 {var tab_stats = [1200, 3100, 7]}
	if id_module == 11 {var tab_stats = [500, 2000, 12]}
	if id_module == 12 {var tab_stats = [1800, 3200, 6]}
	if id_module == 13 {var tab_stats = [1100, 3000, 9]}
	if id_module == 14 {var tab_stats = [1000, 3800, 6]}
	if id_module == 15 {var tab_stats = [1500, 3800, 7]}
	
	return raccourci(nom_var, tab_stats_noms, tab_stats)
}

function get_module_robot_sprite(id_module, if_sprite)
{
	var result = ""
	if if_sprite {
		if id_module == 1 {result = S_robot1}
		if id_module == 2 {result = S_robot2}
		if id_module == 3 {result = S_robot3}
		if id_module == 4 {result = S_robot4}
		if id_module == 5 {result = S_robot5}
		if id_module == 6 {result = S_robot6}
		if id_module == 7 {result = S_robot7}
		if id_module == 8 {result = S_robot8}
		if id_module == 9 {result = S_robot9}
		if id_module == 10 {result = S_robot10}
		if id_module == 11 {result = S_robot11}
		if id_module == 12 {result = S_robot12}
		if id_module == 13 {result = S_robot13}
		if id_module == 14 {result = S_robot14}
		if id_module == 15 {result = S_robot15}
	}
	if not if_sprite {
		if id_module == 1 {result = robot1}
		if id_module == 2 {result = robot2}
		if id_module == 3 {result = robot3}
		if id_module == 4 {result = robot4}
		if id_module == 5 {result = robot5}
		if id_module == 6 {result = robot6}
		if id_module == 7 {result = robot7}
		if id_module == 8 {result = robot8}
		if id_module == 9 {result = robot9}
		if id_module == 10 {result = robot10}
		if id_module == 11 {result = robot11}
		if id_module == 12 {result = robot12}
		if id_module == 13 {result = robot13}
		if id_module == 14 {result = robot14}
		if id_module == 15 {result = robot15}
	}
	return result
}



// setup des differents modules
function raccourci(nom_var, tab_stats_noms, tab_stats)
{
	if nom_var == "setup"
	{
		for (var i = 0; array_length(tab_stats_noms) > i; i++)
		{
			variable_instance_set(id, tab_stats_noms[i], tab_stats[i])
		}
		return 0
	}
	else
	{
		for (var i = 0; array_length(tab_stats_noms) > i; i++)
		{
			if nom_var == tab_stats_noms[i] {return tab_stats[i]}
		}
	}
}

function get_module_attaque_stats(id_module, nom_var)
{
	var tab_stats_noms = ["degats", "portee", "depense_energie", "recharge", "type", "vitesse"]
	if id_module == 1 {var tab_stats = [25, 100, 5, 60, 0, 13]}
	if id_module == 2 {var tab_stats = [45, 200, 2, 80, 2, 20]}
	if id_module == 3 {var tab_stats = [17, 90, 13, 40, 1, 11]}
	if id_module == 4 {var tab_stats = [15, 90, 12, 30, 2, 9]}
	if id_module == 5 {var tab_stats = [130, 150, 70, 360, 0, 15]}
	if id_module == 6 {var tab_stats = [115, 100, 25, 140, 1, 10]}
	if id_module == 7 {var tab_stats = [10, 60, 3, 10, 1, 14]}
	if id_module == 8 {var tab_stats = [55, 40, 15, 60, 1, 0]}
	if id_module == 9 {var tab_stats = [50, 45, 18, 40, 0, 0]}
	if id_module == 10 {var tab_stats = [20, 150, 10, 15, 2, 12]}
	if id_module == 11 {var tab_stats = [30, 100, 20, 70, 2, 8*2]}
	if id_module == "l'autre 11" {var tab_stats = [10, 20, 0, 0, 2, 20]}
	if id_module == 12 {var tab_stats = [65, 225, 45, 250, 0, 8]}
	if id_module == 13 {var tab_stats = [35, 65, 35, 210, 1, 14]}
	if id_module == 14 {var tab_stats = [30, 95, 30, 300, 1, 15]}
	if id_module == 15 {var tab_stats = [7, 50, 11, 20, 0, 13]}
	if id_module == 16 {var tab_stats = [12, 115, 13, 70, 0, 14]}
	if id_module == 17 {var tab_stats = [30, 480, 40, 480+300, 2, 8]}
	if id_module == "l'autre 17" {var tab_stats = [30, 160+30, 0, 0, 2, 8]}
	if id_module == 18 {var tab_stats = [20, 180, 7, 35, 1, 12]}
	if id_module == 19 {var tab_stats = [1, 50, 2, 5, 2, 10]}
	//if id_module == 20 {var tab_stats = [1, 50, 1, 5, 2, 10]}
	
	return raccourci(nom_var, tab_stats_noms, tab_stats)
}

function get_module_defense_stats(id_module, nom_var)
{
	var tab_stats_noms = ["protection_feu", "protection_elec", "protection_matiere", "depense_energie", "temps_activation", "vie_max"]
	if id_module == 1 {var tab_stats = [0.10, 0.25, 0.10, 0.07, 60, 600]}
	if id_module == 2 {var tab_stats = [0.25, 0.10, 0.10, 0.07, 60, 600]}
	if id_module == 3 {var tab_stats = [0.10, 0.10, 0.25, 0.07, 60, 600]}
	if id_module == 4 {var tab_stats = [0.20, 0.20, 0.20, 0.10, 80, 450]}
	if id_module == 5 {var tab_stats = [0.07, 0.07, 0.07, 0.00, 20, 1000]}
	if id_module == 6 {var tab_stats = [0.35, 0.05, 0.35, 0.15, 90, 700]}
	if id_module == 7 {var tab_stats = [0.25, 0.25, 0.10, 0.12, 60, 750]}
	if id_module == 8 {var tab_stats = [0.00, 0.30, 0.30, 0.11, 120, 850]}
	if id_module == 9 {var tab_stats = [0.45, 0.45, 0.45, 0.16, 600, 400]}
	if id_module == 10 {var tab_stats = [0.90, 0.90, 0.90, 2.00, 10, 3000]}
	if id_module == 11 {var tab_stats = [0.35, 0.20, 0.10, 0.18, 30, 2000]}
	if id_module == 12 {var tab_stats = [0.05, 0.30, 0.20, 0.16, 25, 2500]}
	if id_module == 13 {var tab_stats = [0.15, 0.20, 0.40, 0.20, 180, 2800]}
	//if id_module == 9 {var tab_stats = [0.80, 0.80, 0.80, 0.10, 60, 150]} idée stats
	
	return raccourci(nom_var, tab_stats_noms, tab_stats)
}

function get_module_powerups_stats(id_module, nom_var)
{
	var tab_stats_noms = ["recharge_max", "nombre_utilisation", "depense_energie"]
	if id_module == 1 {var tab_stats = [60*20, 2, 150]}
	if id_module == 2 {var tab_stats = [60, 1, 100]}
	if id_module == 3 {var tab_stats = [60*5, 2, 400]}
	if id_module == 4 {var tab_stats = [60, 1, 350]}
	if id_module == 5 {var tab_stats = [60*15, 4, 100]}
	if id_module == 6 {var tab_stats = [60*60, 2, 380]}
	if id_module == 7 {var tab_stats = [60*5, 3, 80]}
	if id_module == 8 {var tab_stats = [60*45, 4, 130]}
	
	return raccourci(nom_var, tab_stats_noms, tab_stats)
}

function get_module_powerups_stats_ind(id_module, nom_var)
{
	if id_module == 1
	{
		var tab_stats_noms = ["ajout_recharge", "compteur"]
		var tab_stats = [0.7, 15*60]
	}
	if id_module == 2
	{
		var tab_stats_noms = ["ajout_vie"]
		var tab_stats = [100]
	}
	if id_module == 3
	{
		var tab_stats_noms = ["ajout_energie", "compteur"]
		var tab_stats = [1, 20*60]
	}
	if id_module == 4
	{
		var tab_stats_noms = ["ajout_energie", "ajout_attaque", "ajout_vie", "ajout_recharge", "compteur"]
		var tab_stats = [0.3, 0.2, 50, 0.3, 10*60]
	}
	// pas de variables spécifiques pour le module 5
	if id_module == 6
	{
		var tab_stats_noms = ["degats", "compteur"]
		var tab_stats = [3, 60*5]
	}
	if id_module == 7
	{
		var tab_stats_noms = ["vitesse", "nombre"]
		var tab_stats = [10, 6]
	}
	if id_module == 8
	{
		var tab_stats_noms = ["degats", "compteur"]
		var tab_stats = [50, 60*7]
	}
	
	return raccourci(nom_var, tab_stats_noms, tab_stats)
}