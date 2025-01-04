try
{
	x = camera_get_view_x(view_camera[0])
	y = camera_get_view_y(view_camera[0])
} catch(e)
{
	x = 0
	y = 0
}

var i = 0
while i < 14
{
	draw_sprite_ext(sprite_index, 0, x+i*100, y, 1, (compteur+i*5)/10, 0, c_white, 1)
	i++
}