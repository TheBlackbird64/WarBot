

//particules
part_elec = part_type_create()
part_type_sprite(part_elec, S_part_elec, true, true, true)
part_type_orientation(part_elec, 0, 359, 0, 0, 0)
part_type_life(part_elec, 3, 10)
part_type_alpha2(part_elec, 1, 0.75)
part_type_size(part_elec, 0.01, 0.08, 0, 0)

part_emit = part_emitter_create(global.effet_part_sys)
