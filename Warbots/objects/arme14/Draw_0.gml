draw_self()
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_white, (compteur_destruction_max-compteur_destruction)/compteur_destruction_max)

if detruit
{
	draw_set_alpha(0.05)
	draw_circle_color(x, y, rayon, c_red, c_red, false)
	draw_set_alpha(1)
}


if compteur_destruction <= 0 {
	draw_set_alpha(((10+compteur_destruction)/10)*0.3)
	draw_circle_color(x, y, rayon, c_white, $FF0000, false)
	draw_set_alpha(1)
}