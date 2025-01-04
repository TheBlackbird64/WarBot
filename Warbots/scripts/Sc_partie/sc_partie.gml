function tirer(nb_module, equipe, _x, _y, xdest, ydest, local)
{
	if local {
		recharge = 0
		player.energie -= get_module_attaque_stats(nb_module, "depense_energie")
	}
	var tab_noms_modules = [arme1, arme2, arme3, arme4, arme5, arme6, arme7, arme8, arme9, arme10, arme11, arme12, arme13, arme14, arme15, arme16, arme17, arme18, arme19]//, arme20]
	var a = instance_create_depth(_x, _y, -100, tab_noms_modules[nb_module-1])
	a.equipe = equipe
	a._parent = id
	a.direction = point_direction(_x, _y, xdest, ydest)
	if nb_module == 9
	{
		a.x = xdest
		a.y = ydest
	}
}

function set_module_defense(cible, num_module, active)
{
	var exists = false
	for (var i = 0; array_length(cible.tab_defense) > i; i++)
	{
		if cible.tab_defense[i][0] == num_module {
			exists = true
			cible.tab_defense[i][1] = active
			with (cible.tab_defense[i][2]) {event_user(1)}
		}
	}
	if not exists {
		var tab_noms_modules = [defense1, defense2, defense3, defense4, defense5, defense6, defense7, defense8, defense9, defense10, defense11, defense12, defense13]
		var a = instance_create_depth(cible.x, cible.y, cible.depth-10, tab_noms_modules[num_module-1])
		a._parent = cible
		array_push(cible.tab_defense, [num_module, active, a])
		return a
	}
}

function power_up(parent, num_module, x_dest, y_dest, local)
{
	if local {
		recharge = 0
		nombre_utilisation --
		player.energie -= get_module_powerups_stats(num_module, "depense_energie")
	}
	var tab_noms_modules = [power_up1, power_up2, power_up3, power_up4, power_up5, power_up6, power_up7, power_up8]
	var a = instance_create_depth(x_dest, y_dest, -100, tab_noms_modules[num_module-1])
	a._parent = parent
}

function fin_partie()
{
	var gagnant = -1
	while (player.vie > 0 and player_2.vie > 0)
	{
		player.vie --
		player_2.vie --
	}
	if player.vie <= 0 {
		gagnant = 0
		player.visible = false
	}
	if player_2.vie <= 0 {
		gagnant = 1
		player_2.visible = false
	}
	instance_destroy(chat)
	var a = instance_create_depth(x, y, -250, anim_fin_partie)
	a.image_index = gagnant
	player.active = false
	if instance_exists(mP_ref) {instance_destroy(mP_ref)}
	player_2.active = false
}

function set_degats(nb, type, cible)
{
	if cible.equipe == "E1" {
		var tab_noms_type = ["protection_feu", "protection_elec", "protection_matiere"]
		var protect = 1
		if type != -1
		{
			for (var i = 0; array_length(cible.tab_defense) > i; i++)
			{
				if cible.tab_defense[i][1] {protect -= variable_instance_get(cible.tab_defense[i][2], tab_noms_type[type])}
				cible.tab_defense[i][2].degats_encaisse = nb
				with (cible.tab_defense[i][2]) {event_user(0)}
			}
		}
		else
		{
			for (var i = 0; array_length(cible.tab_defense) > i; i++)
			{
				cible.tab_defense[i][2].degats_encaisse = nb
				with (cible.tab_defense[i][2]) {event_user(0)}
			}
		}
		if protect < 0 {protect = 0}
		cible.vie -= nb*protect
	}
}

function temps_restant(if_str)
{
	//var tp_min = string(date_minute_span(date_current_datetime(), date_get_minute(global.temps)))
	var tp_sec = global.temps_total_secondes-date_second_span(global.temps, date_current_datetime())
	
	if if_str {
		if string(round(tp_sec%60)) >= 10
		{
			return string(floor(tp_sec/60)) + ":" + string(round(tp_sec%60))
		}
		else
		{
			return string(floor(tp_sec/60)) + ":0" + string(round(tp_sec%60))
		}
	}
	else
	{
		return tp_sec
	}
}