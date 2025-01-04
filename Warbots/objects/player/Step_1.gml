///@description module de déplacement
if speed != 0
{
	v_acceleration = 0
	h_acceleration = 0
}



if active and not paralyse and speed == 0 {


var diff = angle_difference(image_angle, point_direction(x, y, mouse_x, mouse_y))

if diff > 0
{
	image_angle -= vitesse_rotation
}
if diff < 0
{
	image_angle += vitesse_rotation
}
if abs(diff) <= vitesse_rotation {image_angle = point_direction(x, y, mouse_x, mouse_y)}


if (keyboard_check(global.touche_bas)) {
	if v_acceleration < 1 {v_acceleration += coef_acceleration}
} else {
	if v_acceleration > 0
	{
		v_acceleration -= coef_ralentissement
		if v_acceleration < 0 {v_acceleration = 0}
	}
}
if (keyboard_check(global.touche_gauche)) {
	if h_acceleration > -1 {h_acceleration -= coef_acceleration}
} else {
	if h_acceleration < 0
	{
		h_acceleration += coef_ralentissement
		if h_acceleration > 0 {h_acceleration = 0}
	}
}
if (keyboard_check(global.touche_haut)) {
	if v_acceleration > -1 {v_acceleration -=coef_acceleration}
} else {
	if v_acceleration < 0
	{
		v_acceleration += coef_ralentissement
		if v_acceleration > 0 {v_acceleration = 0}
	}
}
if (keyboard_check(global.touche_droite)) {
	if h_acceleration < 1 {h_acceleration += coef_acceleration}
} else {
	if h_acceleration > 0
	{
		h_acceleration -= coef_ralentissement
		if h_acceleration < 0 {h_acceleration = 0}
	}
}

if h_acceleration > 1 {h_acceleration = 1}
if v_acceleration > 1 {v_acceleration = 1}
if h_acceleration < -1 {h_acceleration = -1}
if v_acceleration < -1 {v_acceleration = -1}


//var z = 33
//var z1 = 40
if sprite_width > sprite_height {var z = sprite_width/2-10}
else {var z = sprite_height/2-10}
var z1 = z+7

if (h_acceleration < 0) and (not collision_line(x-z1, y-z, x-z1, y+z, her_solide, true, true)) {x += vitesse*h_acceleration}
if (h_acceleration > 0) and (not collision_line(x+z1, y-z, x+z1, y+z, her_solide, true, true)) {x += vitesse*h_acceleration}

if (v_acceleration < 0) and (not collision_line(x-z, y-z1, x+z, y-z1, her_solide, true, true)) {y += vitesse*v_acceleration}
if (v_acceleration > 0) and (not collision_line(x-z, y+z1, x+z, y+z1, her_solide, true, true)) {y += vitesse*v_acceleration}

}