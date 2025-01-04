get_module_attaque_stats(9, "setup")
effectue = false
visible = false

part_exp_carre = part_type_create()
part_type_shape(part_exp_carre, pt_shape_flare)
part_type_direction(part_exp_carre, 0, 359, 0, 0)


part_arme9 = part_type_create() {
part_type_shape(part_arme9, pt_shape_flare)
part_type_color_rgb(part_arme9, 255, 255, 100, 200, 0, 0)
part_type_direction(part_arme9, 0, 359, 0, 0)
part_type_speed(part_arme9, 0.1, 0.1, 0, 0)
part_type_life(part_arme9, 100, 100)
part_type_alpha2(part_arme9, 1, 0.8)
part_type_size(part_arme9, 0.1, 0.25, 0, 0.3)

part_emit = part_emitter_create(global.effet_part_sys)

}