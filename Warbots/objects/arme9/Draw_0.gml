draw_self()
draw_set_color($0080FF)
draw_set_alpha(((get_module_attaque_stats(9, "portee")-portee)/get_module_attaque_stats(9, "portee"))*0.3)
draw_rectangle(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, false)
draw_set_alpha(1)
draw_set_color(c_white)