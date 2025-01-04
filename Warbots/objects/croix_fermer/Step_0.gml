if mouse_check_button_released(mb_left) and collision_point(mouse_x, mouse_y, id, false, false) and compteur == 0
{
	if focus >= global.focus_boutons {instance_destroy(_parent)}
}

if compteur > 0 {compteur--}