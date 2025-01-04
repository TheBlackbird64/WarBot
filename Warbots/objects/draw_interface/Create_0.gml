liste_ajouts_vie = []
compteur_pw = 100
active = true


// energie part
part_pw = part_type_create() {
part_type_shape(part_pw, pt_shape_pixel)
part_type_color_rgb(part_pw, 255, 255, 143, 255, 0, 0)
part_type_life(part_pw, 40, 100)
part_type_alpha2(part_pw, 1, 0.8)
part_type_size(part_pw, 2, 5, 0, 5)
part_type_direction(part_pw, 0, 359, 0, 0)
part_type_speed(part_pw, 0.2, 0.5, 0, 0)
}

part_sys_local = part_system_create()
part_system_depth(part_sys_local, depth)
part_sys_local2 = part_system_create()
part_system_depth(part_sys_local2, depth-1)
part_emit = part_emitter_create(part_sys_local)
part_emit2 = part_emitter_create(part_sys_local2)
