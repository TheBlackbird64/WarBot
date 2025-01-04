visible = active


if active {
	part_charge = false
}
if part_charge or active
{
	part_emitter_region(global.effet_part_sys, part_emit, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y+sprite_height/2, ps_shape_rectangle, ps_distr_linear)
	//part_emitter_burst(global.effet_part_sys, part_emit, part_defense, 2)
}


dr_compteur++
if vie > 0 and active {vie --}