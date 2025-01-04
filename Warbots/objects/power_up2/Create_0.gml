equipe = ""
_parent = ""
effectue = false
get_module_powerups_stats_ind(2, "setup")

part_pw = part_type_create() {
part_type_shape(part_pw, pt_shape_pixel)
part_type_color2(part_pw, $FFFFFF, $00FF27)
part_type_life(part_pw, 40, 100)
part_type_alpha2(part_pw, 1, 0.8)
part_type_size(part_pw, 3, 8, 0, 1)
part_type_direction(part_pw, 45, 135, 0, 3)
part_type_speed(part_pw, 1, 5, 0, 0)
part_type_gravity(part_pw, 0.1, 270)
}

part_sys_local = part_system_create()
part_system_depth(part_sys_local, depth)
part_emit = part_emitter_create(part_sys_local)
