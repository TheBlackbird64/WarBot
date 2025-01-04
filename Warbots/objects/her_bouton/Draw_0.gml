draw_self()
draw_sprite_ext(S_contour, 0, x, y, image_xscale, image_yscale, 0, make_color_hsv(col, 255, 255), 1)
if entree
{
	if compteur < 1 {compteur += 0.1}
}
else
{
	if compteur > 0 {compteur -= 0.1}
}
draw_sprite_ext(S_bouton_flou, 0, x, y, image_xscale, compteur*image_yscale, 0, c_white, 1)
draw_sprite_ext(S_bouton_flou, 0, x, y, image_xscale, -(compteur*image_yscale), 0, c_white, 1)

