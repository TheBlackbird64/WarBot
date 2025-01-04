if not instance_exists(_parent) {instance_destroy()}

if compteur_degats == 30
{
	compteur_degats = 0
	if variable_instance_exists(_parent, "vie")
	{
		set_degats(degats, 0, _parent)
	}
}
else {compteur_degats++}


part_emitter_region(global.effet_part_sys, part_emit, x-pix_x, x+pix_x, y-pix_x, y+pix_x, ps_shape_ellipse, ps_distr_linear)
part_emitter_burst(global.effet_part_sys, part_emit, part_feu, _parent.sprite_width/10)