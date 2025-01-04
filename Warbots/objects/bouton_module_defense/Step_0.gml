
if num_module != -1  and not player.paralyse and player.active{
	if collision_point(mouse_x, mouse_y, id, false, false) {entree = true}
	else {entree = false}	
	
	if (id_module.vie <= 0 or player.energie < get_module_defense_stats(global.config[1][num_module], "depense_energie")) and (not effectue){
		effectue = true
		active = false
		envoi_grp(["defense_desactive", string(global.config[1][num_module])])
		compteur_active = -1
		set_module_defense(player, global.config[1][num_module], false)
	}
	if id_module.vie > 0 and player.energie > get_module_defense_stats(global.config[1][num_module], "depense_energie") {effectue = false}
	
	if entree and mouse_check_button_pressed(mb_left) and (not desactive_temp)
	{
		if id_module.vie > 0 {active = not active}
		else {active = false}
		if player.energie < get_module_defense_stats(global.config[1][num_module], "depense_energie") {active = false}
		if active
		{
			desactive_temp = true
			envoi_grp(["defense_preactive", string(global.config[1][num_module])])
			compteur_active = 0
			with (id_module) {event_user(2)}
		}
		else
		{
			envoi_grp(["defense_desactive", string(global.config[1][num_module])])
			compteur_active = -1
			set_module_defense(player, global.config[1][num_module], false)
		}
	}
	
	if compteur_active >= 0 and compteur_active < compteur_total {compteur_active++}
	if compteur_active == compteur_total
	{
		desactive_temp = false
		envoi_grp(["defense_active", string(global.config[1][num_module])])
		set_module_defense(player, global.config[1][num_module], true)
		compteur_active++
	}
}
