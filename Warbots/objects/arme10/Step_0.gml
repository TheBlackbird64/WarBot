speed = vitesse
image_angle += 15

portee --
if portee <= 0 {instance_destroy()}



var _x = sprite_width/2
var _y = sprite_height/2
var aj = 10
var effectue = 0
if collision_line(x-_x-aj, y+_y, x-_x-aj, y-_y, her_solide, false, true) //gauche
{
	set_direction(180-direction)
	effectue ++
}
if collision_line(x-_x, y+_y+aj, x+_x, y+_y+aj, her_solide, false, true) //bas
{
	set_direction(180+(180-direction))
	effectue ++
}
if collision_line(x+_x+aj, y+_y, x+_x+aj, y-_y, her_solide, false, true) //droite
{
	set_direction(180-direction)
	effectue ++
}
if collision_line(x-_x, y-_y-aj, x+_x, y-_y-aj, her_solide, false, true) //haut
{
	set_direction(180+(180-direction))
	effectue ++
}
if effectue > 1 {instance_destroy()}


part_type_direction(part_arme10, direction, direction, 0, 0)
part_type_speed(part_arme10, speed-4, speed-1, 0, 0)
part_emitter_region(global.effet_part_sys, part_emit, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y+sprite_height/2, ps_shape_ellipse, ps_distr_linear)
part_emitter_burst(global.effet_part_sys, part_emit, part_arme10, -4)