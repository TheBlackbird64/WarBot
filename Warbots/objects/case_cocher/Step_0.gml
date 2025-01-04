
if mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, id, false, false)
{
	if image_index == 0 {image_index = 1}
	else {image_index = 0}
}
