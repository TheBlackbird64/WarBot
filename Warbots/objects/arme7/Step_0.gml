speed = vitesse
image_angle = direction
visible = true
portee --
if portee <= 0 {instance_destroy()}


//part_emitter_region(global.effet_part_sys, part_emit, x-lengthdir_x(sprite_width/2, direction-180), x+lengthdir_x(sprite_width/2, direction-180), y-lengthdir_y(sprite_width/2, direction-180), y+lengthdir_y(sprite_width/2, direction-180), ps_shape_line, ps_distr_linear)
//part_emitter_burst(global.effet_part_sys, part_emit, part_tir_laser, 1)