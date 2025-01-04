event_inherited()
compteur_col = 0
compteur_eclair = 0

set_scale(0.25)
part_defense = part_type_create() {
part_type_shape(part_defense, pt_shape_line)
part_type_color2(part_defense, $00FFFF, $FFFFFF)
part_type_life(part_defense, 20, 60)
part_type_alpha2(part_defense, 1, 0.3)
part_type_size(part_defense, 0.05, 0.2, 0, 0)
part_type_direction(part_defense, 0, 359, 0, 0)
part_type_orientation(part_defense, 0, 359, 5, 0, 2)
part_type_speed(part_defense, 1, 2, 0, 0)
}

part_emit = part_emitter_create(global.effet_part_sys)
part_charge = false

