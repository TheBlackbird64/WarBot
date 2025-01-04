visible = active

if active {
	part_charge = false
}
if part_charge or active
{
	part_system_position(part_sys_local, x, y)
	part_emitter_region(part_sys_local, part_emit, -sprite_width/2, sprite_width/2, -sprite_height/2, sprite_height/2, ps_shape_rectangle, ps_distr_linear)
	part_emitter_burst(part_sys_local, part_emit, part_defense, 2)
}

if dr_compteur1 >= 15 {dr_compteur1 = -45}
dr_compteur1 ++
if dr_compteur2 >= 15 {dr_compteur2 = -45}
dr_compteur2 ++
if dr_compteur3 >= 15 {dr_compteur3 = -45}
dr_compteur3 ++
if dr_compteur4 >= 15 {dr_compteur4 = -45}
dr_compteur4 ++