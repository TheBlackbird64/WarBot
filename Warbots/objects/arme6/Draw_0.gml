if compteur > 0
{
	if equipe == "E1" 
	{
		var _x = player.x
		var _y = player.y
		x = player.x
		y = player.y
		orient = player.image_angle
	}
	if equipe == "E2" 
	{
		var _x = player_2.x
		var _y = player_2.y
		x = player_2.x
		y = player_2.y
		orient = player_2.image_angle
	}

	for (var i = 0; round((portee*vitesse)/(sprite_width*1.5)) > i; i++)
	{
		_x += lengthdir_x(sprite_width + sprite_width/2, orient)
		_y += lengthdir_y(sprite_width + sprite_width/2, orient)
		draw_sprite_ext(sprite_index, 0, _x, _y, image_xscale, image_yscale, orient, c_white, image_alpha)
	}
}