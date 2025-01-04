draw_self()
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x, y, texte)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
if entree
{
	draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, 0, c_white, 0.5)
}
