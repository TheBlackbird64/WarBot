get_module_attaque_stats(1, "setup")
set_scale(0.2)
set_effet(effet_elec)
compteur_destruction = 40
compteur_destruction_max = compteur_destruction
detruit = false
rayon = 450


part_arme14 = part_type_create() {
part_type_shape(part_arme14, pt_shape_pixel)
part_type_color1(part_arme14, $FFFFFF)
part_type_life(part_arme14, 40, 110)
part_type_alpha2(part_arme14, 1, 0.6)
part_type_size(part_arme14, 3, 6, +0.05, 0)
part_type_orientation(part_arme14, 0, 359, 0, 10, 0)
part_type_direction(part_arme14, 0, 359, 0, 0)
part_type_speed(part_arme14, 4, 8, -0.03, 0)
}