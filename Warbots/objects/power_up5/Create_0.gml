equipe = ""
_parent = ""
compteur = 160
effectue = false
mur_touche = false
if collision_point(x, y, her_solide, true, false) {mur_touche = true}

part_pw = part_type_create() {
part_type_shape(part_pw, pt_shape_flare)
part_type_color2(part_pw, $00FF1F, $FFFFFF)
part_type_life(part_pw, 40, 80)
part_type_alpha2(part_pw, 1, 0.4)
part_type_size(part_pw, 0.05, 0.2, 0, 0.5)
part_type_direction(part_pw, 45, 135, 0, 0)
part_type_speed(part_pw, 1, 3, 0, 0)
part_type_gravity(part_pw, 0.05, 270)
}

part_pw2 = part_type_create() {
part_type_sprite(part_pw2, S_part_carre, 0, 0, 0)
part_type_color2(part_pw2, $FFFFFF, $00FF1F)
part_type_life(part_pw2, 30, 30)
part_type_alpha2(part_pw2, 1, 0.8)
part_type_size(part_pw2, 1.6, 1.6, -0.05, 0)
}

part_pw3 = part_type_create() {
part_type_sprite(part_pw3, S_part_carre, 0, 0, 0)
part_type_color2(part_pw3, $FFFFFF, $00FF1F)
part_type_life(part_pw3, 30, 30)
part_type_alpha2(part_pw3, 1, 0.8)
part_type_size(part_pw3, 0.1, 0.1, 0.05, 0)
}



part_sys_local = part_system_create()
part_system_depth(part_sys_local, depth)
part_emit = part_emitter_create(global.effet_part_sys)
part_emit2 = part_emitter_create(part_sys_local)
