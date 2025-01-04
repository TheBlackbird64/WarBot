
if (compteur > 130) and (compteur % 5 == 0)
{
	part_particles_create(global.effet_part_sys, _parent.x, _parent.y, part_pw2, 1)
	if mur_touche {part_type_color2(part_pw3, $FFFFFF, $0000FF)}
	part_particles_create(global.effet_part_sys, x, y, part_pw3, 1)
}

if (not effectue) and (compteur < 130)
{
	effectue = true
	part_emitter_region(global.effet_part_sys, part_emit, _parent.x-_parent.sprite_width/2, _parent.x+_parent.sprite_width/2, _parent.y-_parent.sprite_height/2, _parent.y+_parent.sprite_height/2, ps_shape_rectangle, ps_distr_linear)
	part_emitter_burst(global.effet_part_sys, part_emit, part_pw, 50)
	if not mur_touche {
		_parent.x = x
		_parent.y = y
		part_system_position(part_sys_local, _parent.x, _parent.y)
		part_emitter_region(part_sys_local, part_emit2, -_parent.sprite_width/2, _parent.sprite_width/2, -_parent.sprite_height/2, _parent.sprite_height/2, ps_shape_rectangle, ps_distr_linear)
		part_emitter_burst(part_sys_local, part_emit2, part_pw, 50)
	}
}
part_system_position(part_sys_local, _parent.x, _parent.y)
compteur --
if compteur == 0 {instance_destroy()}