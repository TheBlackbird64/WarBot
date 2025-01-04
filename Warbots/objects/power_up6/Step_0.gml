if not effectue
{
	effectue = true
	if _parent.equipe == "E1" {_parent.vitesse_rotation = 2}
}
compteur--
if compteur == 0 or not instance_exists(_parent) {instance_destroy()}

var dir = _parent.image_angle
var x2 = lengthdir_x(point_distance(0, 0, room_width, room_height), dir)
var y2 = lengthdir_y(point_distance(0, 0, room_width, room_height), dir)

var liste_temp = ds_list_create()
collision_line_list(x, y, x+x2, y+y2, her_joueur, false, true, liste_temp, false)
for (var i = 0; ds_list_size(liste_temp) > i; i++)
{
	with (ds_list_find_value(liste_temp, i))
	{
		if equipe != other.equipe
		{
			set_effet(effet_feu)
			set_degats(other.degats, -1, id)
		}
	}
}


part_system_position(part_sys_local, x, y)
part_type_orientation(part_pw2, dir, dir, 0, 0, 0)
part_emitter_region(part_sys_local, part_emit, 0, x2, 0, y2, ps_shape_line, ps_distr_linear)
part_emitter_burst(part_sys_local, part_emit, part_pw2, 100)
part_emitter_burst(part_sys_local, part_emit, part_pw, 150)
part_emitter_burst(part_sys_local, part_emit, part_pw3, 150)