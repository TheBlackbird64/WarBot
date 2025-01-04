degats = 4
compteur_degats = 0
coef_degats = 1
coef_degats_max = 5
pix_x = 1
effectue = false
effectue2 = true

temp_debug = false

//particules
part_effet = part_type_create()
part_type_shape(part_effet, pt_shape_explosion)
part_type_color2(part_effet, $666666, $CCCCCC)
part_type_direction(part_effet, 225, 315, 0, 0)
part_type_speed(part_effet, 1, 2, 0, 0)
part_type_life(part_effet, 40, 60)
part_type_alpha2(part_effet, 0.5, 0.2)
part_type_size(part_effet, 0.1, 0.3, 0, 0.05)
part_type_gravity(part_effet, 0.1, 90)

part_effet2 = part_type_create()
part_type_shape(part_effet2, pt_shape_square)
part_type_color3(part_effet2, $000000, $999999, $FF00AA)
part_type_direction(part_effet2, 270, 270, 0, 0)
part_type_speed(part_effet2, 0.1, 0.1, 0.05, 0)
part_type_life(part_effet2, 40, 70)
part_type_alpha2(part_effet2, 1, 0.8)
part_type_size(part_effet2, 0.005, 0.01, 0.001, 0.1)

part_effet3 = part_type_create()
part_type_shape(part_effet3, pt_shape_flare)
part_type_color2(part_effet3, $000000, $AAAAAA)
part_type_life(part_effet3, 30, 60)
part_type_alpha2(part_effet3, 1, 0.5)
part_type_size(part_effet3, 0.5, 1, -0.02, 0.3)

part_sys_local = part_system_create()
part_system_depth(part_sys_local, depth)
part_emit = part_emitter_create(part_sys_local)
