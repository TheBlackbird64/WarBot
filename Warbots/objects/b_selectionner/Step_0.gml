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
	if (entree) { image_index = 1 }
	else {image_index = 0}
}
else
{
	if image_index == 1 { event_user(0) }
	image_index = 0
}