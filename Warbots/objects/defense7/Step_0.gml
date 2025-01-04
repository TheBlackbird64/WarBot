visible = active
if active {
	part_charge = false
}
if part_charge or active
{
	part_emitter_region(global.effet_part_sys, part_emit, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y+sprite_height/2, ps_shape_ellipse, ps_distr_invgaussian)
	var a = irandom_range(100, 255)
	part_type_color_rgb(part_defense, a, a, a, a, a, a)
	part_emitter_burst(global.effet_part_sys, part_emit, part_defense, -2)
}

dr_compteur ++
if dr_compteur == 60 {dr_compteur = 0}
dr_compteur2 ++
if dr_compteur2 == 60 {dr_compteur2 = 0}
dr_compteur3 ++
if dr_compteur3 == 60 {dr_compteur3 = 0}