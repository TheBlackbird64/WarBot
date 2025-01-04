if not instance_exists(_parent) {instance_destroy()}

if not effectue {
	effectue = true
	if variable_instance_exists(_parent, "vitesse") {
		_parent.vitesse = _parent.vitesse/2
	}
}

if _parent.sprite_width > _parent.sprite_height {var pix_x = _parent.sprite_width*0.7}
else {var pix_x = _parent.sprite_height*0.7}
part_emitter_region(global.effet_part_sys, part_emit, x-pix_x, x+pix_x, y-pix_x, y+pix_x, ps_shape_ellipse, ps_distr_linear)
part_emitter_burst(global.effet_part_sys, part_emit, part_glace, _parent.sprite_width/17)