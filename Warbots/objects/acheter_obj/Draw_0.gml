draw_self()
if entree {draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5)}
if deja_debloque {draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 0.7)}
draw_sprite_ext(S_affichage_prix, 0, x, y+sprite_height/2, 0.35, 0.35, image_angle, c_white, 0.8)
draw_sprite_ext(S_pieces_xp, 0, x+sprite_width/2+10, y+sprite_height/2, 0.02, 0.02, image_angle, c_white, 1)

draw_set_color(c_black)
draw_set_font(F_affichage_select)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x, y+sprite_height/2, prix)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(F_principale)
draw_set_color(c_white)
