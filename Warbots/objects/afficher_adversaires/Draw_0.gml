draw_self()
draw_set_halign(fa_center)
draw_set_color(c_black)
if image_index == 1
{
	if sprite != 0 {
		var coef = 0
		if sprite_get_width(sprite) > sprite_get_height(sprite) {coef = (sprite_width-60)/sprite_get_width(sprite)}
		else {coef = (sprite_height/2-60)/sprite_get_height(sprite)}
		draw_sprite_ext(sprite, 0, x, y-sprite_height/4, coef, coef, 0, c_white, 1)
	}
	draw_set_color(c_red)
	draw_text(x, y, global.pseudo_adv)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	draw_text(x-100, y+40, "Niveau: " + niveau_adv)
	draw_text(x-100, y+70, "classement: " + string(global.classement_adv))
}
else
{
	var spr = get_module_robot_sprite(global.config[3][0], true)
	var coef = 0
	if sprite_get_width(spr) > sprite_get_height(spr) {coef = (sprite_width-60)/sprite_get_width(spr)}
	else {coef = (sprite_height/2-60)/sprite_get_height(spr)}
	draw_sprite_ext(spr, 0, x, y-sprite_height/4, coef, coef, 0, c_white, 1)
	
	draw_set_color(c_green)
	draw_text(x, y, global.pseudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	draw_text(x-100, y+40, "Niveau: " + string(get_xp(true, false, global.xp)))
	draw_text(x-100, y+70, "classement: " + string(global.classement))
}
draw_set_color(c_white)