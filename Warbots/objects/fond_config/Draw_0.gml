draw_self()
draw_set_font(F_affichage_select)

draw_text(x-120, y+100, "Robot choisi:")
if array_length(global.config[3]) > 0 { 
	draw_sprite_ext(S_icone_robots, global.config[3][0], x, y+235, 3*0.25, 3*0.25, 0, c_white, 1)
	id_rob_suppr.visible = true
	id_rob_suppr.x = x+30
	id_rob_suppr.y = y+115
}
else {id_rob_suppr.visible = false}

var tab_nom_spr = []
tab_nom_spr[0] = S_icone_attaque
tab_nom_spr[1] = S_icone_defense
tab_nom_spr[2] = S_icone_power_ups
tab_nom_spr[3] = S_icone_robots
tab_nom_spr[4] = S_icone_ameliorations
var nom_mod = []
nom_mod[0] = " d'attaque: "
nom_mod[1] = " de défense: "
nom_mod[2] = " de power ups: "
nom_mod[3] = " robot: "
nom_mod[4] = " d'amélioration: "

var sc = 0.5*0.25
var dist = 392
var compteur_mod = 0

for (var i2 = 0; array_length(liste_max_modules) > i2; i2++)
{
	if i2 == 3 {}
	else {
		if not i2 == 0 {
			if i2 == 4 {dist += liste_max_modules[i2-2]*35 - 10}
			else {dist += liste_max_modules[i2-1]*35 - 10}
			draw_text(x-130, y+dist, "Modules" + nom_mod[i2] + "(maximum: " + string(liste_max_modules[i2]) + ")")
			dist += 50
		}
		else {draw_text(x-130, y+350, "Modules" + nom_mod[i2] + "(maximum: " + string(liste_max_modules[i2]) + ")")}
		
		
		for (var i = 0; liste_max_modules[i2] > i; i++) {
			try {
				liste_b_suppr[compteur_mod].x = x
				liste_b_suppr[compteur_mod].y = y+dist+(35*i)
				liste_b_suppr[compteur_mod].mod_cible = string(i2) + ":" + string(i)
			} catch (e) {}
			
			if array_length(global.config[i2]) > i {
				draw_sprite_ext(tab_nom_spr[i2], global.config[i2][i], x-105, y+dist+(35*i), sc, sc, 0, c_white, 1) 
				try {liste_b_suppr[compteur_mod].visible = true} catch (e) {}
			}
			else {
				draw_sprite_ext(tab_nom_spr[i2], 0, x-105, y+dist+(35*i), sc, sc, 0, c_white, 1)
				try {liste_b_suppr[compteur_mod].visible = false} catch (e) {}
			}
			compteur_mod++
		}
	}
}
draw_set_font(F_principale)
draw_set_halign(fa_left)