draw_set_alpha(0.5 + (1-compteur2/compteur2_max)*0.4)
draw_set_color(c_black)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_alpha(1)
draw_set_color(c_white)
draw_self()
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, make_color_hsv(col, 255, 255), image_alpha)

if compteur2 < 180
{
	draw_set_alpha(1-compteur2/compteur2_max)
	var a = "+"
	var taille = 0.04
	if pt_classement < 0 {a = "-"}
	
	draw_number_police(x-100, y+320, a, string(abs(pt_classement)), 0.3, 1)
	draw_sprite_ext(S_pieces_xp, 2, x+120, y+320, taille, taille, 0, c_white, 1)
	
	draw_number_police(x-100, y+400, "+", string(pt_pieces), 0.3, 1)
	draw_sprite_ext(S_pieces_xp, 0, x+120, y+400, taille, taille, 0, c_white, 1)
	
	draw_number_police(x-100, y+480, "+", string(pt_xp), 0.3, 1)
	draw_sprite_ext(S_pieces_xp, 1, x+120, y+480, taille, taille, 0, c_white, 1)
	
	draw_set_alpha(1)
}