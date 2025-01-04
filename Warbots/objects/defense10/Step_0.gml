visible = active
if compteur_col > 255 {compteur_col = 0}
compteur_col ++

compteur_eclair ++


if active {
	part_charge = false
}
if part_charge or active
{
	if compteur_eclair == 5
	{
		var a = instance_create_depth(x, y, depth, test_eclair)
		a.couleur = make_color_hsv(compteur_col-30, 255, 255)
	}
	if compteur_eclair == 10
	{
		var a = instance_create_depth(x, y, depth, test_eclair)
		a.couleur = make_color_hsv(compteur_col, 255, 255)
	}
	if compteur_eclair > 15
	{
		compteur_eclair = 0
		var a = instance_create_depth(x, y, depth, test_eclair)
		a.couleur = make_color_hsv(compteur_col+30, 255, 255)
	}
	part_emitter_region(global.effet_part_sys, part_emit, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y+sprite_height/2, ps_shape_rectangle, ps_distr_linear)
	//part_emitter_burst(global.effet_part_sys, part_emit, part_defense, 2)
}
