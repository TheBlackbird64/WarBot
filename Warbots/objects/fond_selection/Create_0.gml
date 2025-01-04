image_index = 3
page = -1
liste_id_icone = []

{
liste_icone = []
liste_icone[0] = []
liste_icone[1] = []
liste_icone[2] = []
liste_icone[3] = []
liste_icone[4] = []

// message personnalisés
liste_icone[0][0] = "Pas d'effets particuliers."
liste_icone[0][1] = "Pas d'effets particuliers."
liste_icone[0][2] = "Lorsque l'ennemi est touché, il est paralysé pendant 0.3 secondes."
liste_icone[0][3] = "Lorsque le projectile explose, il crée un zone qui ralentit l'ennemi pendant 3 secondes à son contact."
liste_icone[0][4] = "Le missile produit une explosion de grande taille qui peut affecter aussi bien son utilisateur que l'ennemi."
liste_icone[0][5] = "Le laser paralyse son utilisateur pendant 0.5 seconde quand il est utilisé."
liste_icone[0][6] = "Pas d'effets particuliers."
liste_icone[0][7] = "Crée une zone autour de son utilisateur qui paralyse l'ennemi pendant 0.3 secondes."
liste_icone[0][8] = "Crée un carré (à la position de la souris) qui va s'agrandir jusqu'à exploser et mettre le feu à l'ennemi si il est à l'intérieur."
liste_icone[0][9] = "Les projectiles rebondissent sur les murs."
liste_icone[0][10] = "Le projectile se divise et crée 5 autre projectiles qui ralentisse l'ennemi pendant 3 secondes au contact."
liste_icone[0][11] = "Ce drone suit l'ennemi et provoque une explosion."
liste_icone[0][12] = "Cette onde repousse l'ennemi."
liste_icone[0][13] = "Ce projectile crée une grande zone qui paralyse l'ennemi (si il est à l'intérieur) pendant pendant 2 secondes"
liste_icone[0][14] = "Lorsque le projectile explose, il crée une zone qui met le feu à l'ennemi quand il passe dedans."
liste_icone[0][15] = "Ce projectile enflamme infiniment si il touche l'ennemi."
liste_icone[0][16] = "Crée des projectiles qui encerclent l'ennemi et qui l'attaque chacun leur tour."
liste_icone[0][17] = "Ce projectile peut passer à travers les murs."
liste_icone[0][18] = "Envoie une grande quantité de projectiles à courte portée."

liste_icone[1][0] = "Champ de force basique."
liste_icone[1][1] = "Champ de force basique."
liste_icone[1][2] = "Champ de force basique."
liste_icone[1][3] = "Champ de force moyen."
liste_icone[1][4] = "Protection très basique mais ne coûte aucune énergie."
liste_icone[1][5] = "Protection au laser qui affaiblit les projectiles adverses. Faiblesse contre l'électricité."
liste_icone[1][6] = "Champ de force efficace mais faible contre la matière."
liste_icone[1][7] = "Champ de force efficace mais faible contre le feu."
liste_icone[1][8] = "Champ de force très puissant mais très peu de points de vie."
liste_icone[1][9] = "Champ de force ultime."
liste_icone[1][10] = "Ce champ de force est temporaire, sa vie diminue au fil du temps mais il est moins sensible au attaques adverses."
liste_icone[1][11] = "Ce champ de force est temporaire, sa vie diminue au fil du temps mais il est moins sensible au attaques adverses."
liste_icone[1][12] = "Ce champ de force est temporaire, sa vie diminue au fil du temps mais il est moins sensible au attaques adverses."

liste_icone[2][0] = "Multiplie la recharge par " + string(get_module_powerups_stats_ind(1, "ajout_recharge")+1) + " pendant " + string(get_module_powerups_stats_ind(1, "compteur")/60) + "secondes."
liste_icone[2][1] = "Ajoute " + string(get_module_powerups_stats_ind(2, "ajout_vie")) + " points de vie."
liste_icone[2][2] = "Ajoute " + string(get_module_powerups_stats_ind(3, "ajout_energie")*get_module_powerups_stats_ind(3, "compteur")) + " d'énergie pendant " + string(get_module_powerups_stats_ind(3, "compteur")/60) + "secondes."
liste_icone[2][3] = "Ajoute " + string(get_module_powerups_stats_ind(4, "ajout_vie")) + " points de vie, " + string(get_module_powerups_stats_ind(4, "ajout_energie")) + " énergie, ajoute " + string(get_module_powerups_stats_ind(4, "ajout_attaque")*100) + "% d'attaque, et multiplie la recharge par " + string(get_module_powerups_stats_ind(4, "ajout_recharge")+1) + "pendant "  + string(get_module_powerups_stats_ind(4, "compteur")/60) + " secondes."
liste_icone[2][4] = "Téléporte l'utilisateur à la position de la souris."
liste_icone[2][5] = "Ce laser fait " + string(get_module_powerups_stats_ind(6, "degats")) + " de dégats et dure " + string(get_module_powerups_stats_ind(6, "compteur")/60) + " seconde."
liste_icone[2][6] = "Tire " + string(get_module_powerups_stats_ind(7, "nombre")) + " projectiles qui inverse les commandes de l'ennemi pendant " + string(get_module_powerups_stats_ind(7, "vitesse")) + " seconde si il est touché."
liste_icone[2][7] = "Provoque une trainée pendant " + string(get_module_powerups_stats_ind(8, "compteur")) + "seconde derrière son utilisateur qui inflige des dégats croissants à l'ennemi quand il est au contact de cette trainée."

liste_icone[3][0] = set_nb_max_mod(1, true)
liste_icone[3][1] = set_nb_max_mod(2, true)
liste_icone[3][2] = set_nb_max_mod(3, true)
liste_icone[3][3] = set_nb_max_mod(4, true)
liste_icone[3][4] = set_nb_max_mod(5, true)
liste_icone[3][5] = set_nb_max_mod(6, true)
liste_icone[3][6] = set_nb_max_mod(7, true)
liste_icone[3][7] = set_nb_max_mod(8, true)
liste_icone[3][8] = set_nb_max_mod(9, true)
liste_icone[3][9] = set_nb_max_mod(10, true)
liste_icone[3][10] = set_nb_max_mod(11, true)
liste_icone[3][11] = set_nb_max_mod(12, true)
liste_icone[3][12] = set_nb_max_mod(13, true)
liste_icone[3][13] = set_nb_max_mod(14, true)
liste_icone[3][14] = set_nb_max_mod(15, true)

liste_icone[4][0] = "-"
liste_icone[4][1] = "-"
liste_icone[4][2] = "-"
liste_icone[4][3] = "-"
liste_icone[4][4] = "-"
liste_icone[4][5] = "-"
}
// stats
for (var i = 1; sprite_get_number(S_icone_attaque) > i; i++)
{
	liste_icone[0][i-1] = "dégats: " + string(get_module_attaque_stats(i, "degats")) + "\n" + 
	"portée: " + string(get_module_attaque_stats(i, "portee")) + "\n" + 
	"dépense énergie/tir: " + string(get_module_attaque_stats(i, "depense_energie")) + "\n" + 
	"recharge: " + string(get_module_attaque_stats(i, "recharge")/60) + " seconde\n" + 
	"vitesse: " + string(get_module_attaque_stats(i, "vitesse")) + "\n" + 
	"type: " + type_to_str(get_module_attaque_stats(i, "type")) + ";" + liste_icone[0][i-1]
}

for (var i = 1; sprite_get_number(S_icone_defense) > i; i++)
{
	liste_icone[1][i-1] = "protection feu: " + string(get_module_defense_stats(i, "protection_feu")*100) + "%\n" + 
	"protection électrique: " + string(get_module_defense_stats(i, "protection_elec")*100) + "%\n" + 
	"protection matière: " + string(get_module_defense_stats(i, "protection_matiere")*100) + "%\n" + 
	"depense énergie/s: " + string(get_module_defense_stats(i, "depense_energie")*60) + "\n" + 
	"temps activation: " + string(get_module_defense_stats(i, "temps_activation")/60) + " seconde\n" + 
	"vie max: " + string(get_module_defense_stats(i, "vie_max")) + ";" + liste_icone[1][i-1]
}

for (var i = 1; sprite_get_number(S_icone_power_ups) > i; i++)
{
	liste_icone[2][i-1] = "recharge max: " + string(get_module_powerups_stats(i, "recharge_max")/60) + " seconde\n" + 
	"nombre d'utilisation en 1 partie: " + string(get_module_powerups_stats(i, "nombre_utilisation")) + "\n" + 
	"depense énergie: " + string(get_module_powerups_stats(i, "depense_energie")) + ";" + liste_icone[2][i-1]
}

for (var i = 1; sprite_get_number(S_icone_robots) > i; i++)
{
	liste_icone[3][i-1] = "vie max: " + string(get_module_robot_stats(i, "vie_max")) + "\n" + 
	"énergie max: " + string(get_module_robot_stats(i, "energie_max")) + "\n" + 
	"vitesse: " + string(get_module_robot_stats(i, "vitesse")) + "\n" +
	";" + liste_icone[3][i-1]
}