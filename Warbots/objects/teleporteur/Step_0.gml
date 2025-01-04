if compteur_part == 1 {part_particles_create(global.effet_part_sys, x, y, part_pw2, 1)}
part_particles_create(global.effet_part_sys, x, y, part_pw, 1)

part_system_position(part_sys_local, _parent.x, _parent.y)
compteur_part --
if compteur_part == 0 {compteur_part = 10}
if compteur_active > 0
{
	compteur_active --
	part_type_color2(part_pw, $0010FF, $FFFFFF)
	part_type_color2(part_pw2, $FFFFFF, $0010FF)
}
else
{
	part_type_color2(part_pw2, $FFFFFF, $00FF1F)
	part_type_color2(part_pw, $00FF1F, $FFFFFF)
}