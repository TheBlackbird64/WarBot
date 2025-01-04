global.focus_boutons = 0
if get_xp(true, true, global.xp) == 3
{
	var a = instance_create_depth(683, 384, depth, fen_tuto)
	a.image_xscale = 6
	a.image_yscale = 3
	a.str = saut_ligne_str("Les modules de protection sont maintenant disponibles à la boutique!", a.sprite_width/10)
}

if get_xp(true, true, global.xp) == 5
{
	var a = instance_create_depth(683, 384, depth, fen_tuto)
	a.image_xscale = 6
	a.image_yscale = 3
	a.str = saut_ligne_str("Les power ups sont maintenant disponibles à la boutique!", a.sprite_width/10)
}