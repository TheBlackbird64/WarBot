event_inherited()
image_alpha = 0.4
set_scale(0.5)
part_defense = part_type_create() {
part_type_shape(part_defense, pt_shape_pixel)
part_type_color2(part_defense, $FFFFFF, $0020FF)
part_type_life(part_defense, 20, 30)
part_type_alpha2(part_defense, 0.1, 0.6)
part_type_size(part_defense, 2, 5, 0, 2)
part_type_orientation(part_defense, 0, 359, 10, 0, 0)
part_type_direction(part_defense, 90, 90, 0, 0)
part_type_speed(part_defense, 2, 4, 0, 0)
}

part_emit = part_emitter_create(global.effet_part_sys)
part_charge = false
dr_taille = 0