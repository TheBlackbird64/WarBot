if not instance_exists(_parent) {instance_destroy()}

if compteur_degats >= 15
{
	compteur_degats = 0
	if variable_instance_exists(_parent, "vie")
	{
		set_degats(degats*coef_degats, -1, _parent)
	}
}
else {compteur_degats++}

temp_debug = false
if compteur > compteur_max - 2 {
	temp_debug = true
	coef_degats *= 1.01
	if not effectue
	{
		effectue2 = false
		effectue = true
		if variable_instance_exists(_parent, "vitesse") {_parent.vitesse -= 3}
	}
}
else
{
	coef_degats /= 1.01
	if not effectue2
	{
		effectue2 = true
		effectue = false
		if variable_instance_exists(_parent, "vitesse") {_parent.vitesse += 3}
	}
}

if coef_degats >= coef_degats_max {coef_degats = coef_degats_max}
if coef_degats <= 1 {coef_degats = 1}


var col_coef = (coef_degats-1)/(coef_degats_max-1)
part_type_color2(part_effet2, make_color_hsv(0, 255, col_coef*255), make_color_rgb(170*col_coef, 0, col_coef*255))
part_type_color2(part_effet, $666666, make_color_rgb(205+col_coef*50, 205-col_coef*205, 205-col_coef*205))
part_type_alpha2(part_effet, 0.5, 0.2 + 0.8*col_coef)

part_system_position(part_sys_local, x, y)
if compteur > 60 {
	part_emitter_region(part_sys_local, part_emit, -pix_x, pix_x, -pix_x, pix_x, ps_shape_ellipse, ps_distr_linear)
	part_emitter_burst(part_sys_local, part_emit, part_effet, 4)
	part_emitter_burst(part_sys_local, part_emit, part_effet2, 1)
	part_emitter_burst(part_sys_local, part_emit, part_effet3, 1)
}