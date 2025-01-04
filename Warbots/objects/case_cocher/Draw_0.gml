draw_self()
draw_text(x+30, y-10, "Reconnection automatique")
if collision_point(mouse_x, mouse_y, id, false, false) {
	draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, 0, c_white, 0.5)
}