sprite_index = _parent.sprite_index

if active {
	part_charge = false
}
if part_charge or active
{
	part_emitter_region(global.effet_part_sys, part_emit, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y+sprite_height/2, ps_shape_ellipse, ps_distr_invgaussian)
	part_emitter_burst(global.effet_part_sys, part_emit, part_defense, -2)
}
if dr_compteur >= 30 {dr_compteur = -30}
else {dr_compteur++}