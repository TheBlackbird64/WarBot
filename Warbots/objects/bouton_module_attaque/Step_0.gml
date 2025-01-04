

if recharge_max != -1 and not player.paralyse and player.active{
	if collision_point(mouse_x, mouse_y, id, false, false) {entree = true}
	else {entree = false}

	if entree and mouse_check_button_pressed(mb_left) 
	{
		bouton_module_attaque.select_module = num_module
	}
	
	if mouse_check_button(mb_left) and not collision_point(mouse_x, mouse_y, her_menus_partie, false, false)
	{
		if recharge >= recharge_max and select_module == num_module and player.energie >= get_module_attaque_stats(global.config[0][num_module], "depense_energie")
		{
			envoi_grp(["tir", string(global.config[0][num_module]), string(round(player.x)), string(round(player.y)), string(round(mouse_x)), string(round(mouse_y))])
			tirer(global.config[0][num_module], player.equipe, player.x, player.y, mouse_x, mouse_y, true)
		}
	}
	if recharge < recharge_max {recharge++}
}


if power_up_active(power_up1, "E1") or power_up_active(power_up4, "E1"){
	part_system_position(part_sys, x, y)
	part_emitter_region(part_sys, part_emit, sprite_width/2+5, sprite_width/2+15, -sprite_height/2, sprite_height/2, ps_shape_rectangle, ps_distr_linear)
	part_emitter_burst(part_sys, part_emit, part_pw, 1)
}
