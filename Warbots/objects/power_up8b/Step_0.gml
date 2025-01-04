var len = sprite_width/2
part_emitter_region(global.effet_part_sys, part_emit, x-len, x+len, y-len, y+len, ps_shape_ellipse, ps_distr_linear)
part_emitter_burst(global.effet_part_sys, part_emit, part_effet, 1)
part_emitter_burst(global.effet_part_sys, part_emit, part_effet2, -5)
part_emitter_burst(global.effet_part_sys, part_emit, part_effet3, -5)