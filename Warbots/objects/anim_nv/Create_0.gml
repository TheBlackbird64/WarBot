global.focus_boutons = 1000
x = 683
y = 0
set_scale(0.15)
nv = get_xp(true, true, global.xp)
compteur = 90

var rdm = random_range(13, 20)
for (var i = 0; rdm > i; i++)
{
	var a = instance_create_depth(x, y, depth, truc_lumineux)
	a._parent = id
}

part_anim_nv = part_type_create()
part_type_sprite(part_anim_nv, S_xp, 0, 0, 0)
part_type_direction(part_anim_nv, 45, 135, 0, 0)
part_type_gravity(part_anim_nv, 0.1, 270)
part_type_speed(part_anim_nv, 6, 15, 0, 0)
part_type_life(part_anim_nv, 80, 140)
part_type_alpha2(part_anim_nv, 1, 0.8)
part_type_size(part_anim_nv, 0.006, 0.02, 0, 0)

part_anim_nv2 = part_type_create()
part_type_shape(part_anim_nv2, pt_shape_flare)
part_type_color2(part_anim_nv2, $FF0000, $00FFFF)
part_type_direction(part_anim_nv2, 45, 135, 0, 0)
part_type_gravity(part_anim_nv2, 0.1, 270)
part_type_speed(part_anim_nv2, 6, 15, 0, 0)
part_type_life(part_anim_nv2, 100, 180)
part_type_alpha2(part_anim_nv2, 1, 0.8)
part_type_size(part_anim_nv2, 0.2, 0.5, 0, 0)