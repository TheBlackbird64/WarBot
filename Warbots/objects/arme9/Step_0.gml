portee --
if portee <= 0 {instance_destroy()}
//image_alpha = portee/get_module_attaque_stats(9, "portee")
if portee > 10 {
	set_scale(((get_module_attaque_stats(9, "portee")-portee)/get_module_attaque_stats(9, "portee"))*0.7)
}
if portee < 5 {set_effet(effet_feu)}

if portee == 1 {
	part_emitter_clear(global.effet_part_sys, part_emit)
	var liste_temp = ds_list_create()
	collision_rectangle_list(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, her_joueur, true, false, liste_temp, false)

	for (var i = 0; ds_list_size(liste_temp) > i; i++)
	{
		with (ds_list_find_value(liste_temp, i)) {
			if other.equipe != equipe
			{
				set_degats(other.degats, other.type, id)
				set_effet(effet_feu)
			}
		}
	}
}

if not effectue {
	effectue = true
	visible = true
	if equipe == "E1"
	{
		x = mouse_x
		y = mouse_y
	}
}

part_type_life(part_arme9, portee, portee)
part_emitter_region(global.effet_part_sys, part_emit, x-sprite_width/2, x+sprite_width/2, y+sprite_height/2, y-sprite_height/2, ps_shape_rectangle, ps_distr_linear)
part_emitter_burst(global.effet_part_sys, part_emit, part_arme9, 1)