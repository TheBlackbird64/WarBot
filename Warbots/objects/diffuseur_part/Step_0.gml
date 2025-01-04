var dir = choose(0, 180)
part_type_direction(global.part_debut_partie, dir, dir, 0, 0)

part_emitter_region(global.part_sys, part_emit, 683+130, 683-130, 0, 768, ps_shape_line, ps_distr_linear)
part_emitter_burst(global.part_sys, part_emit, global.part_debut_partie, 150)

part_emitter_region(global.part_sys, part_emit2, 0, room_width/2, 0, room_height, ps_shape_rectangle, ps_distr_linear)
part_emitter_burst(global.part_sys, part_emit2, global.part_debut_partie2, 1)

part_emitter_region(global.part_sys, part_emit3, room_width/2, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear)
part_emitter_burst(global.part_sys, part_emit3, global.part_debut_partie3, 1)


compteur ++
if compteur > 240
{
	transition_room(R_arene_1)
}