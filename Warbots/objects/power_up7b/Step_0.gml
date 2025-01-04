
if not instance_exists(_parent) {instance_destroy()}

part_emitter_region(global.effet_part_sys, part_emit, x-10, x+10, y-10, y+10, ps_shape_ellipse, ps_distr_linear)
part_emitter_burst(global.effet_part_sys, part_emit, part_pw, 5)
part_emitter_burst(global.effet_part_sys, part_emit, part_pw2, 4)
