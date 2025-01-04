draw_set_color(c_black)
draw_set_alpha(0.6)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_color(c_white)
draw_set_alpha(1)

draw_sprite_ext(sprite_index, 1, x, y, image_xscale+0.1, image_yscale+0.1, 0, c_white, 1)
draw_self()

draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text(x, y, str)
draw_set_valign(fa_left)
draw_set_halign(fa_top)