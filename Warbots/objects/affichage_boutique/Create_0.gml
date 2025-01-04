tab = ["attaque", "defense", "power_ups", "robot", "ameliorations"]
send_message_server("boutique," + tab[image_index])
modules_a_vendre = []

var tab2 = [[make_color_rgb(255, 100, 100), make_color_rgb(255, 100, 0)], [make_color_rgb(0, 0, 255), make_color_rgb(100, 100, 255)], [make_color_rgb(255, 255, 0), make_color_rgb(255, 255, 100)], [make_color_rgb(80, 80, 80), make_color_rgb(170, 170, 170)], [make_color_rgb(0, 255, 0), make_color_rgb(100, 255, 100)]]
part_sys2 = part_system_create()
part_system_depth(part_sys2, depth-1)

part_affichage_boutique = part_type_create()
part_type_alpha2(part_affichage_boutique, 0.5, 0.3)
part_type_color2(part_affichage_boutique, tab2[image_index][0], tab2[image_index][1])
part_type_direction(part_affichage_boutique, 270, 270, 0, 0)
part_type_life(part_affichage_boutique, 90, 150)
part_type_orientation(part_affichage_boutique, 0, 359, 1, 0, 0)
part_type_shape(part_affichage_boutique, pt_shape_square)
part_type_size(part_affichage_boutique, 0.1, 0.05, -0.001, 0)
part_type_speed(part_affichage_boutique, 1, 2, 0.001, 0)

part_emit = part_emitter_create(part_sys2)
part_emitter_region(part_sys2, part_emit, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y+sprite_height/2, ps_shape_rectangle, ps_distr_linear)


str = ""