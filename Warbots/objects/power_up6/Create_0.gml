get_module_powerups_stats_ind(6, "setup")

equipe = ""
_parent = ""
effectue = false
part_pw = part_type_create() {
part_type_shape(part_pw, pt_shape_flare)
part_type_color2(part_pw, $0000FF, $00FFFF)
part_type_life(part_pw, 10, 30)
part_type_alpha2(part_pw, 1, 0.8)
part_type_size(part_pw, 0.5, 0.8, 0, 0)
part_type_orientation(part_pw, 0, 0, 0, 0, 0)
part_type_direction(part_pw, 0, 359, 0, 3)
part_type_speed(part_pw, 2, 4, 0, 0)
}

part_pw3 = part_type_create() {
part_type_shape(part_pw3, pt_shape_pixel)
//part_type_color2(part_pw3, $0000FF, $00FFFF)
part_type_color_rgb(part_pw3, 255, 255, 0, 255, 0, 0)
part_type_life(part_pw3, 10, 30)
part_type_alpha2(part_pw3, 1, 0.8)
part_type_size(part_pw3, 0.5*7, 0.8*7, 0, 0)
part_type_orientation(part_pw3, 0, 0, 0, 0, 0)
part_type_direction(part_pw3, 0, 359, 0, 3)
part_type_speed(part_pw3, 0.5, 3, 0, 0)
}

part_pw2 = part_type_create() {
part_type_sprite(part_pw2, S_part_laser, 0, 0, 0)
part_type_life(part_pw2, 2, 2)
part_type_alpha1(part_pw2, 0.6)
part_type_size(part_pw2, 0.3, 0.3, 0, 0.1)
part_type_scale(part_pw2, 5, 0.5)
}

part_sys_local = part_system_create()
part_system_depth(part_sys_local, depth-10)
part_emit = part_emitter_create(part_sys_local)