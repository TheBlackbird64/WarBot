get_module_attaque_stats(17, "setup")
set_scale(0.7)
effectue = false
image_alpha = 0.2

part_arme17 = part_type_create() {
part_type_shape(part_arme17, pt_shape_flare)
part_type_color3(part_arme17, $FF006C, $29922E, $D4BDAB)
part_type_life(part_arme17, 10, 25)
part_type_alpha2(part_arme17, 1, 0.5)
part_type_size(part_arme17, 0.02, 0.25, 0, 0.05)
part_type_direction(part_arme17, 0, 359, 0, 0)
part_type_speed(part_arme17, 0.2, 0.4, 0, 0)
}

part_emit = part_emitter_create(global.effet_part_sys)
