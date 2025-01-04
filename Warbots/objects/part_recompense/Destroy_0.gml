global.focus_boutons = 0
if get_xp(true, true, global.xp) - get_xp(true, true, global.xp - nb_xp) != 0
{
	instance_create_depth(x, y, depth, anim_nv)
}
