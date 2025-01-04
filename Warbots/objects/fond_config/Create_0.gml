liste_b_suppr = []
id_rob_suppr = create_widget(b_supprimer, x, y, 0.3)
id_rob_suppr.mod_cible = "3:1"
liste_max_modules = []
liste_max_modules[0] = 0
liste_max_modules[1] = 0
liste_max_modules[2] = 0
liste_max_modules[3] = 1
liste_max_modules[4] = 0
if array_length(global.config[3]) > 0 {set_nb_max_mod(global.config[3][0], false)}

event_user(1)