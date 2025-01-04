draw_self()
compteur -= 3
if compteur < -255 {compteur = 255}
draw_sprite_ext(S_porte, 1, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(255, abs(compteur), abs(compteur)), image_alpha)
