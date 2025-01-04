if not variable_global_exists("part_sys") {
start_game()

// particules

global.part_sys = part_system_create()
part_system_depth(global.part_sys, 50)

{
global.part_bg = part_type_create()
part_type_alpha2(global.part_bg, 1, 0.6)
part_type_color3(global.part_bg, $FFFFFF, $FF00CD, $FF0013)
part_type_direction(global.part_bg, 90, 90, 0, 0)
part_type_life(global.part_bg, 60, 120)
part_type_orientation(global.part_bg, 0, 359, 3, 0, 0)
part_type_shape(global.part_bg, pt_shape_square)
part_type_size(global.part_bg, 0.05, 0.12, 0, 0)
part_type_speed(global.part_bg, 2, 2, 0, 0)
}

{
global.part_debut_partie = part_type_create()
part_type_alpha2(global.part_debut_partie, 1, 0.6)
part_type_color3(global.part_debut_partie, $FFFFFF, $00DCFF, $0000FF)
part_type_direction(global.part_debut_partie, 0, 0, 0, 0)
part_type_life(global.part_debut_partie, 40, 70)
//part_type_orientation(global.part_debut_partie, 0, 359, 3, 0, 0)
part_type_shape(global.part_debut_partie, pt_shape_sphere)
part_type_size(global.part_debut_partie, 0.2, 0.4, -0.002, 0)
part_type_speed(global.part_debut_partie, 1.5, 2, 0, 0)
}

{
global.part_debut_partie2 = part_type_create()
part_type_alpha2(global.part_debut_partie2, 1, 0.6)
part_type_color3(global.part_debut_partie2, $FFFFFF, $00DCFF, $0000FF)
part_type_direction(global.part_debut_partie2, 0, 359, 0, 0)
part_type_life(global.part_debut_partie2, 40, 70)
//part_type_orientation(global.part_debut_partie2, 0, 0, 0, 0, 0)
part_type_shape(global.part_debut_partie2, pt_shape_pixel)
part_type_size(global.part_debut_partie2, 0.2*15, 0.4*15, 0, 0.1)
part_type_speed(global.part_debut_partie2, 0.5, 1.5, 0, 0)
}

{
global.part_debut_partie3 = part_type_create()
part_type_alpha2(global.part_debut_partie3, 1, 0.6)
part_type_color3(global.part_debut_partie3, $FFFFFF, $FF8300, $FF00B9)
part_type_direction(global.part_debut_partie3, 0, 359, 0, 0)
part_type_life(global.part_debut_partie3, 40, 70)
//part_type_orientation(global.part_debut_partie2, 0, 0, 0, 0, 0)
part_type_shape(global.part_debut_partie3, pt_shape_pixel)
part_type_size(global.part_debut_partie3, 0.2*15, 0.4*15, 0, 0.1)
part_type_speed(global.part_debut_partie3, 0.5, 1.5, 0, 0)
}



// particules de jeu
global.effet_part_sys = part_system_create()
part_system_depth(global.effet_part_sys, -150)
}
