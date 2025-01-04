if recharge_max != -1 {
	image_index = global.config[2][num_module]
	x = camera_get_view_x(view_camera[0]) + 683 - (array_length(global.config[2])-2)*100 + (num_module+1)*100
	y = camera_get_view_y(view_camera[0]) + 700
	draw_self()
	if nombre_utilisation < 1 {draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.5)}
	
	draw_rectangle(x+sprite_width/2+5, y-sprite_height/2, x+sprite_width/2+15, y+sprite_height/2, true)
	if recharge == recharge_max {draw_set_color(c_green)}
	else {draw_set_color(c_yellow)}
	draw_rectangle(x+sprite_width/2+7, y-sprite_height/2+2, x+sprite_width/2+13, y-sprite_height/2+(recharge/recharge_max)*(sprite_height-2), false)
	draw_set_color(c_white)
	
	if (entree) {draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.5)}
	if num_module == select_module
	{
		draw_set_color(c_green)
		draw_rectangle(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, true)
		draw_rectangle(x-1-sprite_width/2, y-1-sprite_height/2, x+1+sprite_width/2, y+1+sprite_height/2, true)
	}
	
	var _x1 = -(sprite_width/2)
	
	for (var i = 0; nombre_utilisation_max > i; i++)
	{
		var _x2 = -(sprite_width/2)+(sprite_width/nombre_utilisation_max)*(i+1)
		draw_set_color(c_white)
		//draw_rectangle(x-(sprite_width/2)+(sprite_width/nombre_utilisation_max)*i, y-sprite_height/2-10, x-(sprite_width/2)+(sprite_width/nombre_utilisation_max)*(i+1), y-sprite_height/2-20, true)
		draw_rectangle(x+_x1, y-sprite_height/2-10, x+_x2, y-sprite_height/2-20, true)
		if nombre_utilisation >= i+1
		{
			draw_set_color(c_blue)
			//draw_rectangle(x-(sprite_width/2)+(sprite_width/nombre_utilisation_max)*i+1, y-sprite_height/2-11, x-(sprite_width/2)+(sprite_width/nombre_utilisation_max)*(i+1)-1, y-sprite_height/2-19, false)
			draw_rectangle(x+_x1+1, y-sprite_height/2-11, x+_x2-1, y-sprite_height/2-19, false)
		}
		//if num_module == 5 show_message("x1: " + string(_x1) + "\n" + "x2: " + string(_x2))
		_x1 = _x2+2
	}
	draw_set_color(c_white)
}
