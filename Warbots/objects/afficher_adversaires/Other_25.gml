if groupe() and image_index == 1
{
	var tab_temp = tab_temp_grp()
	if tab_temp[0] == "envoi_donnees_adv"
	{
		envoi_grp(["recu_donnees_adv", global.pseudo, string(get_xp(true, false, global.xp)), string(global.classement), string(global.config[3][0])])
	}
	if tab_temp[0] == "recu_donnees_adv"
	{
		global.pseudo_adv = tab_temp[1]
		niveau_adv = tab_temp[2]
		global.classement_adv = int64(tab_temp[3])
		sprite = get_module_robot_sprite(tab_temp[4], true)
	}
}