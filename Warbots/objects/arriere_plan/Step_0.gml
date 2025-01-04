emit_bg = part_emitter_create(global.part_sys)
part_emitter_region(global.part_sys, emit_bg, 0, 1366, y-10, y+10, ps_shape_rectangle, ps_distr_linear)

col2 +=1
if col2 == 255 { col2 = -255 }
col = make_color_rgb(abs(col2), 0, 255)
var dir = choose(90, 270)
part_type_direction(global.part_bg, dir, dir, 0, 0)
part_emitter_burst(global.part_sys, emit_bg, global.part_bg, 2)
