if active {
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_white, abs(compteur_alpha)*0.3+random_range(0.1, 0.7))
	draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, image_angle, c_white, abs(compteur_alpha)*0.2+0.2)
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
}