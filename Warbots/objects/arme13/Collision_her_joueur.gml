if equipe != other.equipe
{
	if find_index_array(liste_degats, other.id) == -1 {
		set_degats(degats, type, other)
		array_push(liste_degats, other.id)
	}
	with (other) {if equipe == "E1" {set_recul(x+lengthdir_x(100, other.direction+180), y+lengthdir_y(100, other.direction+180), 200)}}
}