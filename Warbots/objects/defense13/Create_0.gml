event_inherited()

set_scale(0.15)
part_defense = part_type_create() {
part_type_shape(part_defense, pt_shape_pixel)
part_type_color2(part_defense, $FFFFFF, $FF0F00)
part_type_life(part_defense, 20, 45)
part_type_alpha2(part_defense, 1, 0.5)
part_type_size(part_defense, 2, 5, 0, 2)
part_type_orientation(part_defense, 0, 359, 10, 0, 0)
part_type_direction(part_defense, 0, 359, 0, 0)
part_type_speed(part_defense, 2, 4, 0, 0)
}

part_sys_local = part_system_create()
part_system_depth(part_sys_local, depth-10)
part_charge = false
dr_taille = - get_module_defense_stats(13, "temps_activation")