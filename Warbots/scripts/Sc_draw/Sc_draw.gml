function draw_number_police(_x, _y, signe, str, taille, alpha)
{
	var a = 1
	if signe == "-" {a = 0}
	if signe != "" {draw_sprite_ext(S_police, a, _x, _y, taille, taille, 0, c_white, alpha)}
	
	for (var i = 0; string_length(str) > i; i++)
	{
		draw_sprite_ext(S_police, int64(string_char_at(str, i+1))+2, _x+(sprite_get_width(S_police)*taille)*(i+1), _y, taille, taille, 0, c_white, alpha)
	}
}