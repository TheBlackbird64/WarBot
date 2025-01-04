draw_self()
if dr_taille > image_xscale {dr_taille = 0}
else {dr_taille += image_xscale/30}
draw_sprite_ext(sprite_index, image_index, x, y, dr_taille, dr_taille, 0, c_white, image_alpha-0.1)