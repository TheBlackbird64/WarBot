var type_mod = fond_selection.image_index
var ajout_mod = string(_parent._parent.image_index)
if array_length(global.config[type_mod]) < fond_config.liste_max_modules[type_mod]
{
	var deja_select = false
	for (var i = 0; array_length(global.config[type_mod]) > i; i++)
	{
		if global.config[type_mod][i] == ajout_mod {deja_select = true}
	}
	if not deja_select
	{
		if type_mod == 3 {set_nb_max_mod(ajout_mod, false)}
		array_push(global.config[type_mod], ajout_mod)
		instance_destroy(_parent)
	}
	else
	{
		fen_selection_err("Module déjà sélectionné.", x, y+200)
	}
}
else
{
	fen_selection_err("Tout les emplacements sont occupés.", x, y+200)
}