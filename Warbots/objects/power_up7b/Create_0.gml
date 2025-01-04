get_module_powerups_stats_ind(7, "setup")
visible = false
speed = vitesse
equipe = ""
_parent = ""

part_pw = part_type_create() {
part_type_shape(part_pw, pt_shape_flare)
part_type_color2(part_pw, $FF0000, $FF00C9)
part_type_life(part_pw, 10, 20)
part_type_alpha2(part_pw, 1, 0.3)
part_type_size(part_pw, 0.2, 0.4, 0, 0.5)
part_type_direction(part_pw, 0, 359, 0, 20)
part_type_speed(part_pw, 2, 4, 0, 1)
}

part_pw2 = part_type_create() {
part_type_sprite(part_pw2, S_part_sort, 0, 0, 0)
part_type_color2(part_pw2, $FFC000, $FF00B0)
part_type_life(part_pw2, 10, 30)
part_type_alpha2(part_pw2, 1, 0.5)
part_type_size(part_pw2, 0.05, 0.1, 0, 0)
part_type_orientation(part_pw2, 0, 359, 20, 0, 0)
part_type_direction(part_pw2, 0, 359, 0, 2)
part_type_speed(part_pw2, 0.5, 3, 0, 0)
}

part_emit = part_emitter_create(global.effet_part_sys)