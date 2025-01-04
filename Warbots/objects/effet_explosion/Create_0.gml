part_emit = part_emitter_create(global.effet_part_sys)
part_emit2 = part_emitter_create(global.effet_part_sys)
part_emit3 = part_emitter_create(global.effet_part_sys)
taille = 4
degats = 0

part_fumee = part_type_create() {
part_type_shape(part_fumee, pt_shape_explosion)
part_type_color2(part_fumee, $777777, $333333)
part_type_alpha2(part_fumee, 1, 0.25)
part_type_direction(part_fumee, 0, 359, 0, 0)
part_type_gravity(part_fumee, 0.005, 90)
part_type_speed(part_fumee, 0.2, 0.8, 0, 0)
part_type_life(part_fumee, 70, 120)
part_type_size(part_fumee, 0.2, 0.8, 0, 0)
}

part_explosion = part_type_create() {
part_type_shape(part_explosion, pt_shape_flare)
part_type_color3(part_explosion, $FFFFFF, $42F5FF, $0000A3)
part_type_direction(part_explosion, 0, 359, 0, 0)
part_type_speed(part_explosion, 1, 2, -0.03, 0)
part_type_life(part_explosion, 55, 80)
part_type_alpha2(part_explosion, 1, 0.75)
part_type_size(part_explosion, 0.2, 0.4, 0, 0)
}

part_explosion2 = part_type_create() {
part_type_shape(part_explosion2, pt_shape_flare)
part_type_color2(part_explosion2, $42F5FF, $0000A3)
part_type_direction(part_explosion2, 0, 359, 0, 0)
part_type_speed(part_explosion2, 1, 2, -0.03, 0)
part_type_life(part_explosion2, 30, 50)
part_type_alpha2(part_explosion2, 1, 0.75)
part_type_size(part_explosion2, 0.2, 0.4, 0, 0)
}

part_explosion3 = part_type_create() {
part_type_shape(part_explosion3, pt_shape_flare)
part_type_color2(part_explosion3, $0053FF, $000070)
part_type_direction(part_explosion3, 0, 359, 0, 0)
part_type_speed(part_explosion3, 1, 2, -0.03, 0)
part_type_life(part_explosion3, 20, 30)
part_type_alpha2(part_explosion3, 1, 0.75)
part_type_size(part_explosion3, 0.2, 0.4, 0, 0)
part_type_step(part_explosion3, -400, part_fumee)
}