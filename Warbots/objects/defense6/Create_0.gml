event_inherited()

part_defense = part_type_create() {
part_type_shape(part_defense, pt_shape_pixel)
part_type_color2(part_defense, $FFFFFF, $00FF20)
part_type_life(part_defense, 20, 30)
part_type_alpha2(part_defense, 0.1, 0.6)
part_type_size(part_defense, 2, 5, 0, 2)
part_type_orientation(part_defense, 0, 359, 10, 0, 0)
part_type_direction(part_defense, 0, 359, 0, 0)
part_type_speed(part_defense, 2, 4, 0, 0)
}

part_defense_laser = part_type_create() {
part_type_shape(part_defense_laser, pt_shape_flare)
part_type_color2(part_defense_laser, $FFFFFF, $00FF51)
part_type_life(part_defense_laser, 2, 2)
part_type_alpha1(part_defense_laser, 1)
part_type_size(part_defense_laser, 0.3, 0.7, 0, 0)
part_type_direction(part_defense_laser, 0, 359, 0, 0)
part_type_speed(part_defense_laser, 2, 4, 0, 0)
}

part_defense_laser2 = part_type_create() {
part_type_shape(part_defense_laser2, pt_shape_line)
part_type_scale(part_defense_laser2, 1, 0.5)
part_type_color1(part_defense_laser2, $00FF00)
part_type_life(part_defense_laser2, 2, 2)
part_type_alpha1(part_defense_laser2, 0.5)
part_type_size(part_defense_laser2, 0.3, 0.7, 0, 0)
}

part_emit = part_emitter_create(global.effet_part_sys)
part_emit2 = part_emitter_create(global.effet_part_sys)
part_charge = false