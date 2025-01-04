event_inherited()

set_scale(0.4)
part_defense = part_type_create()
part_type_sprite(part_defense, S_part_elec, true, true, true)
part_type_orientation(part_defense, 0, 359, 0, 0, 0)
part_type_life(part_defense, 3, 10)
part_type_alpha2(part_defense, 1, 0.75)
part_type_size(part_defense, 0.01, 0.08, 0, 0)

part_emit = part_emitter_create(global.effet_part_sys)
part_charge = false


compteur_animation = 200