direction = point_direction(x, y, _x, _y)
speed = speed*1.05

if not (sprite_index == S_classement)
{
	if y < _y {
		part_particles_create(global.effet_part_sys, x, y+20, part_r, 5)
		instance_destroy()
	}
}
else
{
	if x < _x {
		part_particles_create(global.effet_part_sys, x, y+20, part_r, 5)
		instance_destroy()
	}
}

if sprite_index == S_pieces {part_type_color2(part_r, $FFFFFF, $00FFFF)}
if sprite_index == S_xp {part_type_color2(part_r, $FFFFFF, $FF0000)}
if sprite_index == S_classement {part_type_color2(part_r, $FFFFFF, $FFFF00)}