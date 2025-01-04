num_module = -1
select_module = 0
entree = false
recharge_max = -1
recharge = recharge_max


//power ups
part_pw = part_type_create() {
part_type_shape(part_pw, pt_shape_pixel)
part_type_color3(part_pw, $FFFFFF, $E8FF00, $FF0F00)
part_type_life(part_pw, 40, 60)
part_type_alpha2(part_pw, 1, 0.6)
part_type_size(part_pw, 1, 4, -0.05, 0)
part_type_orientation(part_pw, 0, 359, 10, 0, 0)
part_type_direction(part_pw, 45, 135, 0, 3)
part_type_speed(part_pw, 1, 2, 0, 0)
part_type_gravity(part_pw, 0.1, 270)
}

part_sys = part_system_create()
part_emit = part_emitter_create(part_sys)
part_system_depth(part_sys, -300)


set_scale(0.25)