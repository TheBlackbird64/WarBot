if visible {
	if mod_cible == "3:1"
	{
		array_delete(global.config, 0, array_length(global.config))
		repeat (5) { array_push(global.config, []) }
		for (var i = 0; array_length(fond_config.liste_max_modules) > i; i++)
		{
			if i != 3
			{
				fond_config.liste_max_modules[i] = 0
			}
		}
	}
	else
	{
		var temp_tab = separer(mod_cible, ":")
		array_delete(global.config[temp_tab[0]], temp_tab[1], 1)
	}
	with (fond_config) {event_user(1)}
}