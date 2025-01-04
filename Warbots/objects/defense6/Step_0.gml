if active {
	part_charge = false
}
if part_charge or active
{
	part_emitter_region(global.effet_part_sys, part_emit, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y+sprite_height/2, ps_shape_ellipse, ps_distr_linear)
	part_emitter_burst(global.effet_part_sys, part_emit, part_defense, -2)
}

if active {
	var temp_list = ds_list_create()
	collision_circle_list(x, y, 500, mA_ref, true, true, temp_list, false)
	for (var i = 0; ds_list_size(temp_list) > i; i++)
	{
		var inst_temp = ds_list_find_value(temp_list, i)
		if variable_instance_exists(inst_temp, "equipe") and variable_instance_exists(_parent, "equipe")
		{
			if inst_temp.equipe != _parent.equipe
			{
				part_emitter_region(global.effet_part_sys, part_emit2, x, inst_temp.x, y, inst_temp.y, ps_shape_line, ps_distr_linear)
				
				var dir_temp = point_direction(x, y, inst_temp.x, inst_temp.y)
				part_type_orientation(part_defense_laser2, dir_temp, dir_temp, 0, 0, 0)
				part_emitter_burst(global.effet_part_sys, part_emit2, part_defense_laser2, 30)
				part_emitter_burst(global.effet_part_sys, part_emit2, part_defense_laser, 25)
			}
		}
	}
}