event_inherited()

set_scale(0.15)
part_defense = part_type_create() {
part_type_shape(part_defense, pt_shape_line)
part_type_color3(part_defense, $00FFFF, $FFFFFF, $FFFFFF)
part_type_life(part_defense, 20, 60)
part_type_alpha2(part_defense, 1, 0.3)
part_type_size(part_defense, 0.05, 0.2, 0, 0)
part_type_direction(part_defense, 0, 359, 0, 0)
part_type_orientation(part_defense, 0, 359, 5, 0, 2)
part_type_speed(part_defense, 1, 2, 0, 0)
}

part_sys_local = part_system_create()
part_system_depth(part_sys_local, depth - 10)
part_emit = part_emitter_create(part_sys_local)
part_charge = false
dr_compteur1 = 15
dr_compteur2 = 0
dr_compteur3 = -15
dr_compteur4 = -30