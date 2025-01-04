x = fen_classement.x
y = fen_classement.y-fen_classement.sprite_height/2+70 + sprite_height*(position_compte-1)
draw_self()

if global.pseudo == pseudo_compte
{
	draw_set_alpha(0.3)
	draw_set_color($00FF00)
	draw_rectangle(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, false)
	draw_set_color($FFFFFF)
	draw_set_alpha(1)
}
draw_set_font(F_compte)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x-sprite_width/2+37, y, string(position_compte) + ".")
draw_set_halign(fa_left)
draw_set_color($00FFFF)

if global.pseudo == pseudo_compte
{
	draw_set_color($00FF00)
	draw_rectangle(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, true)
}
draw_text(x-sprite_width/2+80, y, pseudo_compte)
draw_set_color(c_white)

draw_sprite_ext(S_classement, 0, x, y, 0.03, 0.03, 0, c_white, 1)
draw_text(x+35, y, string(classement_compte))

draw_sprite_ext(S_xp, 0, x+180, y, 0.03, 0.03, 0, c_white, 1)
draw_text(x+215, y, get_xp(true, true, xp_compte))

draw_set_valign(fa_top)