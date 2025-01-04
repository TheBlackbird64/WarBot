if collision_point(mouse_x, mouse_y, id, false, false) {
	image_index = 1
} else {image_index = 0}
if mouse_check_button_pressed(mb_left) and image_index == 1
{
	champ_texte.focus_texte = false
	keyboard_string = saisie
	focus_texte = true
}
if focus_texte {
	image_index = 2
	if string_length(keyboard_string) > 20 { keyboard_string = string_copy(keyboard_string, 1, 20) }
	saisie = keyboard_string
}
