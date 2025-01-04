draw_self()
if entree {draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5)}
if not debloque {draw_sprite_ext(S_icone_bloquee, fond_selection.image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)}
//if collision_point(mouse_x, mouse_y, id, false, false) draw_text(100, 100, test_debug)
