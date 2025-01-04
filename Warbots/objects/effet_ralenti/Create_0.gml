effectue = false

//particules
part_glace = part_type_create()
part_type_shape(part_glace, pt_shape_sphere)
part_type_color3(part_glace, $FFFFFF, $FFF700, $FFFCA3)
part_type_direction(part_glace, 250, 290, 0, 0)
part_type_gravity(part_glace, 0.02, 270)
part_type_speed(part_glace, 0.3, 2, -0.01, 0)
part_type_life(part_glace, 20, 30)
part_type_alpha2(part_glace, 1, 0.5)
part_type_size(part_glace, 0.05, 0.15, 0, 0)

part_emit = part_emitter_create(global.effet_part_sys)
