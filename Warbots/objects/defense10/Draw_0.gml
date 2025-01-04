if active {
	var col = make_color_hsv(compteur_col-30, 255, 255)
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale*0.7, image_yscale*0.7, image_angle, col, random_range(0.1, 1))
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale*0.7, image_yscale*0.7, image_angle, c_white, 1)
	
	col = make_color_hsv(compteur_col, 255, 255)
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, col, random_range(0.1, 1))
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
	
	col = make_color_hsv(compteur_col+30, 255, 255)
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale*1.3, image_yscale*1.3, image_angle, col, random_range(0.1, 1))
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale*1.3, image_yscale*1.3, image_angle, c_white, 1)
}