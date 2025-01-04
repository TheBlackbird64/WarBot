draw_self()
if collision_point(mouse_x, mouse_y, id, false, false) {
	draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, 0, c_white, 1)
}
if mouse_check_button_released(mb_left) and collision_point(mouse_x, mouse_y, id, false, false)
{
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
}