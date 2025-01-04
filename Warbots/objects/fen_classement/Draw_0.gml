draw_set_alpha(0.5)
draw_set_color(c_black)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_alpha(1)

draw_self()

draw_rectangle(x-sprite_width/2+30, y+sprite_height/2-100, x+sprite_width/2-30, y+sprite_height/2-105, false)
draw_set_color(c_white)