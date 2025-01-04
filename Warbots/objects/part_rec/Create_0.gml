_x = 0
_y = 0
set_scale(0.012)
speed = 1

part_r = part_type_create()
part_type_shape(part_r, pt_shape_pixel)
part_type_color2(part_r, $FFFFFF, $00FFFF)
part_type_alpha2(part_r, 1, 0.5)
part_type_size(part_r, 4, 8, -0.05, 0)
part_type_life(part_r, 30, 40)
part_type_direction(part_r, 0, 359, 0, 0)
part_type_speed(part_r, 2, 4, 0, 0)
part_type_gravity(part_r, 0.1, 270)
part_type_orientation(part_r, 0, 359, 5, 0, 0)