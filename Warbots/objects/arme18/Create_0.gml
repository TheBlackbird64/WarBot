get_module_attaque_stats(18, "setup")
set_scale(0.1)

part_arme18 = part_type_create() {
part_type_shape(part_arme18, pt_shape_pixel)
part_type_color1(part_arme18, $FFFFFF)
part_type_life(part_arme18, 40, 110)
part_type_alpha2(part_arme18, 1, 0.3)
part_type_size(part_arme18, 4, 8, -0.05, 0)
part_type_orientation(part_arme18, 0, 359, 0, 10, 0)
}