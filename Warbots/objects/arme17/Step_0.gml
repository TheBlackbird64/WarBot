if equipe == "E1" {
	x = player_2.x
	y = player_2.y
}
if equipe == "E2" {
	x = player.x
	y = player.y
}
portee --
if portee <= 0 {instance_destroy()}


if not effectue {
	effectue = true
	var nb_inst = 8
	for (var compteur_nb_at = 0; nb_inst > compteur_nb_at; compteur_nb_at++) {
		var dir = compteur_nb_at*(360/nb_inst)+90
		_x = x+lengthdir_x(300, dir)
		_y = y+lengthdir_y(300, dir)
		var a = instance_create_depth(_x, _y, depth, arme17b)
		a.equipe = equipe
		a.dir = dir
		a._parent = id
		a.portee += 40*(compteur_nb_at+1)
		a.direction = point_direction(_x, _y, x, y)
	}
}


part_emitter_region(global.effet_part_sys, part_emit, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y+sprite_height/2, ps_shape_ellipse, ps_distr_linear)
part_emitter_burst(global.effet_part_sys, part_emit, part_arme17, 3)