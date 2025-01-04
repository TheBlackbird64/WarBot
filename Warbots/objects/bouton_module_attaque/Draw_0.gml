if recharge_max != -1 {
	image_index = global.config[0][num_module]
	x = camera_get_view_x(view_camera[0]) + 1300
	y = camera_get_view_y(view_camera[0]) + (instance_nearest(x, y, menu_modules).y-camera_get_view_y(view_camera[0])-184) + num_module*90
	draw_self()
	
	draw_rectangle(x+sprite_width/2+5, y-sprite_height/2, x+sprite_width/2+15, y+sprite_height/2, true)
	if recharge == recharge_max {draw_set_color(c_green)}
	else {draw_set_color(c_yellow)}
	
		// power ups
		if power_up_active(power_up1, "E1") or power_up_active(power_up4, "E1")
		{
			draw_set_color($E8FF00)
		}
	
	draw_rectangle(x+sprite_width/2+7, y-sprite_height/2+2, x+sprite_width/2+13, y-sprite_height/2+(recharge/recharge_max)*(sprite_height-2), false)
	draw_set_color(c_white)
	
	if (entree) {draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.5)}
	if num_module == select_module
	{
		draw_set_color(c_green)
		draw_rectangle(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, true)
		draw_rectangle(x-1-sprite_width/2, y-1-sprite_height/2, x+1+sprite_width/2, y+1+sprite_height/2, true)
		draw_set_color(c_white)
	}
}