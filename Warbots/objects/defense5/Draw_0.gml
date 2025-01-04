if active {
	if _parent.id == player_2.id
	{
		shader_set(Shader_blanc)
		draw_sprite_ext(_parent.inst_sprite.sprite_index, _parent.inst_sprite.image_index, _parent.x, _parent.y, _parent.image_xscale, _parent.image_yscale, _parent.image_angle, c_white, 1)
		shader_reset()
		draw_sprite_ext(_parent.inst_sprite.sprite_index, _parent.inst_sprite.image_index, _parent.x, _parent.y, _parent.image_xscale, _parent.image_yscale, _parent.image_angle, c_white, abs(dr_compteur)/30)
	}
	else
	{
		shader_set(Shader_blanc)
		draw_sprite_ext(_parent.sprite_index, _parent.image_index, _parent.x, _parent.y, _parent.image_xscale, _parent.image_yscale, _parent.image_angle, c_white, 1)
		shader_reset()
		draw_sprite_ext(_parent.sprite_index, _parent.image_index, _parent.x, _parent.y, _parent.image_xscale, _parent.image_yscale, _parent.image_angle, c_white, abs(dr_compteur)/30)
	}
}
