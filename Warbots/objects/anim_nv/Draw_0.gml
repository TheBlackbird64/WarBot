draw_set_color(c_black)
draw_set_alpha(0.6)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_color(c_white)
draw_set_alpha(1)

draw_self()
draw_number_police(x-80, y, "", nv, 0.4, 1)