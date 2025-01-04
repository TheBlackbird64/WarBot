if collision_point(mouse_x, mouse_y, id, false, false) {
	if focus >= global.focus_boutons {
		entree = true
	} else {entree = false}
}
else
{
	entree = false
}
if mouse_check_button(mb_left)
{
	if entree {
		var a = create_widget(confirmation_achat, 683, 384, 0.4)
		a.texte += " (prix: " + prix + ")"
	}
}

if find_index_array(global.objets, string(categorie_module_int) + ":" + string(num_module)) != -1
{
	deja_debloque = true
}


set_scale(0.25)