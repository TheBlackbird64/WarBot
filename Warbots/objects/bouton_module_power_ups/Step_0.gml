

if recharge_max != -1 and not player.paralyse and player.active {
	if collision_point(mouse_x, mouse_y, id, false, false) {entree = true}
	else {entree = false}
	
	if entree and mouse_check_button_pressed(mb_left) 
	{
		bouton_module_power_ups.select_module = num_module
	}
	
	if mouse_check_button(mb_right) and not collision_point(mouse_x, mouse_y, her_menus_partie, false, false)
	{
		if (nombre_utilisation > 0) and (recharge >= recharge_max) and (select_module == num_module) and (player.energie >= depense_energie)
		{
			envoi_grp(["power_up", global.config[2][num_module], mouse_x, mouse_y])
			power_up(player, global.config[2][num_module], mouse_x, mouse_y, true)
		}
	}
	if recharge < recharge_max {recharge++}
}
