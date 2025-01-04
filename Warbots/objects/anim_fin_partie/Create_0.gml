col = 0
compteur = 0
compteur2_max = 300
compteur2 = compteur2_max
effectue = false

pt_classement = 0
pt_xp = 0
pt_pieces = 0



x = camera_get_view_x(view_camera[0]) + 683
y = camera_get_view_y(view_camera[0]) - 100

part_victoire = part_type_create()
part_type_alpha2(part_victoire, 1, 0.6)
part_type_color3(part_victoire, $FFFFFF, $FF00CD, $FF0000)
part_type_direction(part_victoire, 45, 135, 0, 0)
part_type_life(part_victoire, 60, 180)
part_type_orientation(part_victoire, 0, 359, 7, 0, 0)
part_type_shape(part_victoire, pt_shape_square)
part_type_size(part_victoire, 0.05, 0.12, 0.002, 0)
part_type_speed(part_victoire, 3, 10, 0, 0)
part_type_gravity(part_victoire, 0.1, 270)

part_defaite = part_type_create()
part_type_alpha2(part_defaite, 1, 0.6)
part_type_color3(part_defaite, $FFFFFF, $00C0FF, $0000FF)
part_type_direction(part_defaite, 45, 135, 0, 0)
part_type_life(part_defaite, 60, 180)
part_type_orientation(part_defaite, 0, 359, 7, 0, 0)
part_type_shape(part_defaite, pt_shape_square)
part_type_size(part_defaite, 0.05, 0.12, 0.002, 0)
part_type_speed(part_defaite, 3, 10, 0, 0)
part_type_gravity(part_defaite, 0.1, 270)

part_sys_local = part_system_create()
part_system_depth(part_sys_local, -250)