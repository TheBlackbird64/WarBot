var temp_list = ds_list_create()
collision_circle_list(x, y, 50*taille, her_inst_explosives, true, true, temp_list, false)
for (var i = 0; ds_list_size(temp_list) > i; i++)
{
	with (ds_list_find_value(temp_list, i))
	{
		var vie_reste = 0
		if variable_instance_exists(id, "vie")
		{
			set_degats(other.degats, 0, id)
			vie_reste = vie
		}
		if vie_reste > 0 {
			if variable_instance_exists(id, "equipe") {if equipe == "E1" set_recul(other.x, other.y, 50*other.taille+20)}
		}
	}
}


part_emitter_region(global.effet_part_sys, part_emit3, x+50*taille, x-50*taille, y+50*taille, y-50*taille, ps_shape_ellipse, ps_distr_invgaussian)
part_emitter_region(global.effet_part_sys, part_emit2, x+40*taille, x-40*taille, y+40*taille, y-40*taille, ps_shape_ellipse, ps_distr_invgaussian)
part_emitter_region(global.effet_part_sys, part_emit, x+20*taille, x-20*taille, y+20*taille, y-20*taille, ps_shape_ellipse, ps_distr_gaussian)

part_emitter_burst(global.effet_part_sys, part_emit3, part_fumee, 100*taille)
repeat(300*taille) {
	part_emitter_burst(global.effet_part_sys, part_emit, part_explosion, 1)
	part_emitter_burst(global.effet_part_sys, part_emit2, part_explosion2, 1)
	part_emitter_burst(global.effet_part_sys, part_emit3, part_explosion3, 1)
}
instance_destroy()