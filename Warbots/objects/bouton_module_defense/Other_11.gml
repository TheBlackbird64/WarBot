id_module = set_module_defense(player, global.config[1][num_module], false)
compteur_total = get_module_defense_stats(global.config[1][num_module], "temps_activation")

envoi_grp(["defense_set", string(global.config[1][num_module])])