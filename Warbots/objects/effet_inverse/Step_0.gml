if not instance_exists(_parent) {instance_destroy()}

if variable_instance_exists(_parent, "equipe") and (not effectue)
{
	if _parent.equipe == "E1"
	{
		effectue = true
		global.touche_haut = ancienne_touche_bas
		global.touche_bas = ancienne_touche_haut
		global.touche_gauche = ancienne_touche_droite
		global.touche_droite = ancienne_touche_gauche
	}
}

part_system_position(part_sys_local, x, y)
part_emitter_region(part_sys_local, part_emit, -pix_x, pix_x, -pix_x, pix_x, ps_shape_ellipse, ps_distr_linear)
part_emitter_burst(part_sys_local, part_emit, part_pw, 3)
part_emitter_burst(part_sys_local, part_emit, part_pw2, 2)