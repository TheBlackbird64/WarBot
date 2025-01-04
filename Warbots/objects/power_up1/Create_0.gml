get_module_powerups_stats_ind(1, "setup")

equipe = ""
_parent = ""

part_pw = part_type_create() {
part_type_shape(part_pw, pt_shape_pixel)
part_type_color3(part_pw, $FFFFFF, $E8FF00, $FF0F00)
part_type_life(part_pw, 40, 60)
part_type_alpha2(part_pw, 1, 0.6)
part_type_size(part_pw, 3, 8, -0.05, 0)
part_type_orientation(part_pw, 0, 359, 10, 0, 0)
part_type_direction(part_pw, 45, 135, 0, 3)
part_type_speed(part_pw, 1, 2, 0, 0)
part_type_gravity(part_pw, 0.1, 270)
}

part_pw2 = part_type_create() {
part_type_shape(part_pw2, pt_shape_circle)
part_type_color2(part_pw2, $FFFFFF, $FF0F00)
part_type_life(part_pw2, 10, 30)
part_type_alpha2(part_pw2, 1, 0.6)
part_type_size(part_pw2, 0.02, 0.6, 0.02, 0)
}

part_emit = part_emitter_create(global.effet_part_sys)
