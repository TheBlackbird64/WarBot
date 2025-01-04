cam_x = camera_get_view_x(view_camera[0])
cam_y = camera_get_view_y(view_camera[0])

x = cam_x+10
y = cam_y+758
draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x+sprite_width/2, y-sprite_height/2, texte)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

for (var i = 0; array_length(tab_msg) > i; i++)
{
	draw_set_color(c_red)
	draw_set_alpha(1)
	if tab_msg[i][1] {draw_set_color(c_green)}
	if array_length(tab_msg) > 2 {draw_set_alpha((i+1)*0.3)}
	draw_text(x+13, y-80-25*(array_length(tab_msg)-i-1), tab_msg[i][0])
}
draw_set_color(c_white)
draw_set_alpha(1)
