if groupe()
{
	var tab_temp = tab_temp_grp()
	if tab_temp[0] == "defense_set"
	{
		set_module_defense(player_2, tab_temp[1], false)
	}
	if tab_temp[0] == "defense_preactive"
	{
		for (var i = 0; array_length(player_2.tab_defense) > i; i++)
		{
			if player_2.tab_defense[i][0] == tab_temp[1] {
				with (player_2.tab_defense[i][2]) {event_user(2)}
			}
		}
	}
	if tab_temp[0] == "defense_active"
	{
		set_module_defense(player_2, tab_temp[1], true)
	}
	if tab_temp[0] == "defense_desactive"
	{
		set_module_defense(player_2, tab_temp[1], false)
	}
}