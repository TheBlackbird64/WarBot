event_inherited()

set_scale(0.5)

part_defense = part_type_create() {
part_type_shape(part_defense, pt_shape_spark)
part_type_life(part_defense, 20, 30)
part_type_alpha2(part_defense, 0.3, 0.6)
part_type_size(part_defense, 0.1, 0.2, 0, 0)
part_type_orientation(part_defense, 0, 359, 10, 0, 5)
part_type_direction(part_defense, 0, 359, 0, 0)
part_type_speed(part_defense, 0.5, 2, 0, 0)
}

part_emit = part_emitter_create(global.effet_part_sys)
part_charge = false
dr_compteur = 0
dr_compteur2 = -20
dr_compteur3 = -40
