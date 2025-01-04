draw_self()
if active or part_charge {
	draw_sprite_ext(sprite_index, 1, x, y+(sprite_height/2)+30-(dr_compteur1*2), image_xscale, image_yscale, 0, c_white, dr_compteur1)
	draw_sprite_ext(sprite_index, 1, x, y-(sprite_height/2)-30+(dr_compteur2*2), image_xscale, image_yscale, 0, c_white, dr_compteur2)
	draw_sprite_ext(sprite_index, 1, x+(sprite_height/2)+30-(dr_compteur3*2), y, image_xscale, image_yscale, 90, c_white, dr_compteur3)
	draw_sprite_ext(sprite_index, 1, x-(sprite_height/2)-30+(dr_compteur4*2), y, image_xscale, image_yscale, 90, c_white, dr_compteur4)
}
