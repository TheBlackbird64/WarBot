if compteur_active == 0
{
	with (teleporteur)
	{
		if num_grp_tp == other.num_grp_tp
		{
			compteur_active = 120
		}
	}
	compteur_active = 120
	_parent.x = _x
	_parent.y = _y

	part_emitter_region(part_sys_local, part_emit, -_parent.sprite_width/2, _parent.sprite_width/2, -_parent.sprite_height/2, _parent.sprite_height/2, ps_shape_rectangle, ps_distr_linear)
	part_emitter_burst(part_sys_local, part_emit, part_pw3, 70)
}