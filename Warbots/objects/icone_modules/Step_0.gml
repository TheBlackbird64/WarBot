if collision_point(mouse_x, mouse_y, id, false, false) {
	if focus >= global.focus_boutons {
		entree = true
	} else {entree = false}
}
else
{
	entree = false
}
if mouse_check_button(mb_left) and debloque
{
	if entree {
		var a = create_widget(infos_modules, camera_get_view_x(view_camera[0])+683, camera_get_view_y(view_camera[0])+384, 0.6)
		a.texte2 = texte
	}
}

image_index = round(image_index)//?
if not effectue {
	visible = true
	effectue = true
	for (var i = 0; array_length(global.objets) > i; i++)
	{
		if global.objets[i] == string(fond_selection.image_index+1) + ":" + string(image_index) {debloque = true}
	}
}


set_scale(0.35)