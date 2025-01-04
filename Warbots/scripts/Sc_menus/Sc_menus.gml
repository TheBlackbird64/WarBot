function fen_err(str)
{
	var a = instance_create_depth(683, 384, depth-10, fen_erreur)
	a.str = saut_ligne_str(str, a.sprite_width/10)
}

function fen_err_reseau()
{
	var a = instance_create_depth(683, 384, depth-10, fen_erreur_reseau)
	return a
}

function fen_selection_err(str, _x, _y)
{
	instance_destroy(message_erreur)
	var a = instance_create_depth(_x, _y, depth-10, message_erreur)
	a.texte = str
}

function create_widget(obj, _x, _y, scale)
{
	var a = instance_create_depth(x, y, depth-10, obj)
	a.x = _x
	a.y = _y
	a.image_xscale = scale
	a.image_yscale = scale
	a._parent = id
	if global.focus_boutons >= 1000 {a.focus = 0}
	else {a.focus = global.focus_boutons}
	return a
}
