if not effectue
{
	effectue = true
	array_push(draw_interface.liste_ajouts_vie, [_parent.id, _parent.vie])
	if _parent.vie + ajout_vie >= _parent.vie_max {_parent.vie = _parent.vie_max}
	else {_parent.vie += ajout_vie}
	part_emitter_region(part_sys_local, part_emit, -100, 100, -100, 100, ps_shape_ellipse, ps_distr_linear)
	part_emitter_burst(part_sys_local, part_emit, part_pw, 100)
}
part_system_position(part_sys_local, x, y)