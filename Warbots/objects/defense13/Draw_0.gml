
var nb = 5
var temp_afficher = (-get_module_defense_stats(13, "temps_activation"))/nb
for (var i = 0; nb > i; i++)
{
	var rot_temp = dr_taille+((360/nb)*i)
	if dr_taille > temp_afficher*i {draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, rot_temp, c_white, image_alpha)}
}
