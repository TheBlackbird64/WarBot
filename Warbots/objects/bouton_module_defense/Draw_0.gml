if num_module != -1 {
	image_index = global.config[1][num_module]
	x = camera_get_view_x(view_camera[0]) + 70
	y = camera_get_view_y(view_camera[0]) + (instance_nearest(x, y, menu_modules).y-camera_get_view_y(view_camera[0])-184) + num_module*90
	if active {
		draw_set_color(c_green)
		draw_rectangle(x-sprite_width/2-2, y-sprite_height/2-2, x+sprite_width/2+2, y+sprite_height/2+2, true)
	}
	draw_self()
	if entree {draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.5)}
	if id_module.vie <= 0 {draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.5)}
	
	if (compteur_active >= 0) and (compteur_active < compteur_total) {
		draw_set_color(c_white)
		draw_rectangle(x-65, y+sprite_height/2, x-50, y-sprite_height/2, true)
		draw_set_color(c_yellow)
		draw_rectangle(x-65, y+sprite_height/2, x-50, (y+sprite_height/2)-(compteur_active/compteur_total)*sprite_height, false)
	}
	if compteur_active > compteur_total
	{
		draw_set_color(c_white)
		draw_rectangle(x-65, y+sprite_height/2, x-50, y-sprite_height/2, true)
		draw_set_color(c_blue)
		draw_rectangle(x-65, y+sprite_height/2, x-50, (y+sprite_height/2)-(id_module.vie/id_module.vie_max)*sprite_height, false)
	}
	
	draw_set_color(c_white)
}