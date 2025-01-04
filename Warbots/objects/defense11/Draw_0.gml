if active 
{
	var dr_col = 255
	for (var i = 0; array_length(dr_tab_rand) > i; i++)
	{
		var dr_ecart = _parent.sprite_width/2 + 10*(i+1)
		draw_set_alpha(0.3)
		draw_circle(x, y, dr_ecart, true)
		draw_set_alpha(1)
		if dr_tab_rand[i][1]
		{
			var dr_temp = dr_compteur*dr_tab_rand[i][0]
			var _x = x+lengthdir_x(dr_ecart, dr_temp)
			var _y = y+lengthdir_y(dr_ecart, dr_temp)
			if instance_exists(collision_point(_x, _y, mA_ref, false, true)) {if collision_point(_x, _y, mA_ref, false, true).equipe != _parent.equipe {dr_col = 0} else {dr_col = 255}}
			draw_sprite_ext(sprite_index, 0, _x, _y, image_xscale, image_yscale, dr_temp, make_color_rgb(255, dr_col, dr_col), 1)
			
			_x = x+lengthdir_x(dr_ecart, dr_temp+180)
			_y = y+lengthdir_y(dr_ecart, dr_temp+180)
			if instance_exists(collision_point(_x, _y, mA_ref, false, true)) {if collision_point(_x, _y, mA_ref, false, true).equipe != _parent.equipe {dr_col = 0} else {dr_col = 255}}
			draw_sprite_ext(sprite_index, 0, _x, _y, image_xscale, image_yscale, dr_temp, make_color_rgb(255, dr_col, dr_col), 1)
		}
		else
		{
			var dr_temp = 360-dr_compteur*dr_tab_rand[i][0]
			var _x = x+lengthdir_x(dr_ecart, dr_temp)
			var _y = y+lengthdir_y(dr_ecart, dr_temp)
			if instance_exists(collision_point(_x, _y, mA_ref, false, true)) {if collision_point(_x, _y, mA_ref, false, true).equipe != _parent.equipe {dr_col = 0} else {dr_col = 255}}
			
			draw_sprite_ext(sprite_index, 0, _x, _y, image_xscale, image_yscale, dr_temp, make_color_rgb(255, dr_col, dr_col), 1)
			_x = x+lengthdir_x(dr_ecart, dr_temp+180)
			_y = y+lengthdir_y(dr_ecart, dr_temp+180)
			if instance_exists(collision_point(_x, _y, mA_ref, false, true)) {if collision_point(_x, _y, mA_ref, false, true).equipe != _parent.equipe {dr_col = 0} else {dr_col = 255}}
			draw_sprite_ext(sprite_index, 0, _x, _y, image_xscale, image_yscale, dr_temp, make_color_rgb(255, dr_col, dr_col), 1)
		}
	}
}


/*
if instance_number(mA_ref) > 0 {
				if round(point_distance(x, y, instance_nearest(x, y, mA_ref).x, instance_nearest(x, y, mA_ref).y)/10) == round(dr_temp/10) {dr_temp = dr_tab_rand[i][2]}
				else {dr_tab_rand[i][2] = dr_temp}
			}