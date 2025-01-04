if active_debug
{
	if keyboard_check_pressed(vk_numpad1) {affichage = not affichage}
	
	if keyboard_check_pressed(vk_numpad2)
	{
		array_delete(global.objets, 0, array_length(global.objets))
		for (var i = 1; 6 > i; i++)
		{
			var a = 0
			if i == 1 {a = sprite_get_number(S_icone_attaque)} 
			if i == 2 {a = sprite_get_number(S_icone_defense)}
			if i == 3 {a = sprite_get_number(S_icone_power_ups)}
			if i == 4 {a = sprite_get_number(S_icone_robots)}
			if i == 5 {a = sprite_get_number(S_icone_ameliorations)}
			for (var j = 1; a > j; j++)
			{
			    array_push(global.objets, string(i) + ":" + string(j))
			}
		}
		sauvegarde_compte()
	}
	
	if keyboard_check_pressed(vk_numpad3) {decalage_p2 = not decalage_p2}
	
	if keyboard_check_pressed(vk_numpad4) {invincible = not invincible}
	
	if keyboard_check_pressed(vk_numpad5) {global.temps = date_create_datetime(current_year, current_month, current_day, current_hour, current_minute-4, current_second-58)}
	
	if keyboard_check_pressed(vk_numpad6) {layer_set_visible(layer_get_id("Tiles_1"), not layer_get_visible(layer_get_id("Tiles_1")))}
	
	if keyboard_check_pressed(vk_numpad7) {robot_cheat = not robot_cheat}
	
	if keyboard_check_pressed(vk_numpad8) {show_message("pause")}
	
	if keyboard_check_pressed(vk_numpad9) {draw_interface.active = not draw_interface.active}
	
	if keyboard_check(vk_control)
	{
		if keyboard_check(vk_subtract) {global.xp --}
		if keyboard_check(vk_add) {global.xp ++}
	}
	else
	{
		try {
		/*
		var inst = get_module_robot_sprite(global.config[3][0], false)
		if keyboard_check(vk_subtract)
		{
			with (inst) {set_scale(image_xscale - 0.01)}
		}
		if keyboard_check(vk_add)
		{
			with (inst) {set_scale(image_xscale + 0.01)}
		}*/
		} catch(e) {}
	}
	
	
	if instance_exists(diffuseur_part)
	{
		diffuseur_part.compteur += 100
	}
	if invincible and instance_exists(player)
	{
		player.vie = player.vie_max
		player.energie = player.energie_max
	}
	
	if instance_exists(player_2)
	{
		if decalage_p2
		{
			player_2.ajout = 0
		}
		else
		{
			player_2.ajout = 700
		}
	}
}


if global.admin == "true"
{
	if not effectue
	{
		effectue = true
		active_debug = true
	}
	if keyboard_check_pressed(vk_numpad0)
	{
		active_debug = not active_debug
		event_user(0)
		if instance_exists(player_2) {player_2.ajout = 0}
	}
}
else
{
	active_debug = false
}