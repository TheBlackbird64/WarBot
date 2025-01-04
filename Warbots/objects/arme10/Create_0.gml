get_module_attaque_stats(10, "setup")
set_scale(0.1)

part_arme10 = part_type_create() {
part_type_shape(part_arme10, pt_shape_pixel)
part_type_color2(part_arme10, $FFFFFF, $B0B0B0)
part_type_life(part_arme10, 20, 40)
part_type_alpha2(part_arme10, 1, 0.6)
part_type_size(part_arme10, 3, 6, -0.05, 0)
part_type_orientation(part_arme10, 0, 359, 5, 0, 0)
}

part_emit = part_emitter_create(global.effet_part_sys)
