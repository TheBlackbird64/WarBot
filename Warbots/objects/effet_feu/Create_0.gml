degats = 4
compteur_degats = 0
pix_x = 1

//particules


part_feu = part_type_create()
part_type_shape(part_feu, pt_shape_sphere)
part_type_color2(part_feu, $73E8FF, $0000FF)
part_type_direction(part_feu, 45, 135, 0, 0)
part_type_gravity(part_feu, 0.1, 90)
part_type_speed(part_feu, 1, 4, -0.01, 0)
part_type_life(part_feu, 15, 25)
part_type_alpha2(part_feu, 1, 0.75)
part_type_size(part_feu, 0.1, 0.5, 0, 0)


part_emit = part_emitter_create(global.effet_part_sys)
