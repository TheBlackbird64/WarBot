col += 2
compteur ++
if col >= 255 {col = 0}

if compteur < 200 {
	y += 3
	compteur ++
}

if compteur2 == 0 {transition_room(R_accueil)}
compteur2 --

if compteur2 > 180 {
	if image_index == 0 {part_particles_create(part_sys_local, x, y+200, part_defaite, 1)}
	if image_index == 1 {part_particles_create(part_sys_local, x, y+200, part_victoire, 10)}
}


// calcul des points classement
if not effectue
{
	effectue = true
	
	pt_classement = -10 + 20*image_index
	var result = global.classement_adv - global.classement
	
	if result > 100 {result = 100}
	if result < -100 {result = -100}
	
	pt_classement += round(result/20)
	if global.classement + pt_classement < 0 {pt_classement = 0}
	
	pt_xp = 10 + 30*image_index
	
	pt_pieces = ceil((global.classement+1)/100)*20
	
	var inst = instance_create_depth(x, y, -100, part_recompense)
	inst.nb_classement = pt_classement
	inst.nb_pieces = pt_pieces
	inst.nb_xp = pt_xp
	
	global.classement += pt_classement
	global.xp += pt_xp
	global.pieces += pt_pieces
	sauvegarde_compte()
}