get_module_powerups_stats_ind(8, "setup")
image_alpha = 0
equipe = ""
_parent = ""

part_effet = part_type_create()
part_type_shape(part_effet, pt_shape_explosion)
part_type_color2(part_effet, $666666, $CCCCCC)
part_type_direction(part_effet, 225, 315, 0, 0)
part_type_speed(part_effet, 1, 2, 0, 0)
part_type_life(part_effet, 40, 60)
part_type_alpha2(part_effet, 0.5, 0.2)
part_type_size(part_effet, 0.1, 0.3, 0, 0.05)
part_type_gravity(part_effet, 0.05, 90)

part_effet2 = part_type_create()
part_type_shape(part_effet2, pt_shape_square)
part_type_color3(part_effet2, $000000, $999999, $FF00AA)
part_type_direction(part_effet2, 0, 359, 0, 0)
part_type_orientation(part_effet2, 0, 359, 10, 0, 0)
part_type_speed(part_effet2, 0.1, 0.1, 0.02, 0)
part_type_life(part_effet2, 40, 70)
part_type_alpha2(part_effet2, 1, 0.8)
part_type_size(part_effet2, 0.005, 0.01, 0.001, 0.2)

part_effet3 = part_type_create()
part_type_shape(part_effet3, pt_shape_flare)
part_type_color2(part_effet3, $000000, $AAAAAA)
part_type_life(part_effet3, 30, 60)
part_type_alpha2(part_effet3, 1, 0.5)
part_type_size(part_effet3, 0.5, 1, -0.02, 0.3)

part_emit = part_emitter_create(global.effet_part_sys)