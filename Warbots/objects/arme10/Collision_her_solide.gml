var _x = sprite_width/2
var _y = sprite_height/2
var aj = 5


if collision_line(x-_x-aj, y+_y, x-_x-aj, y-_y, her_solide, false, true) //gauche
{
	set_direction(180-direction)
}
if collision_line(x-_x, y+_y+aj, x+_x, y+_y+aj, her_solide, false, true) //haut
{
	instance_destroy()//direction = 90-direction
}
if collision_line(x+_x+aj, y+_y, x+_x+aj, y-_y, her_solide, false, true) //droite
{
	instance_destroy()
}
if collision_line(x-_x, y-_y-aj, x+_x, y-_y-aj, her_solide, false, true) //bas
{
	instance_destroy()
}