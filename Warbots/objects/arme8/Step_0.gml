if not instance_exists(_parent) {instance_destroy()}
// solution temporaire parce que j'ai la flemme
if equipe == "E1"
{
	x = player.x
	y = player.y
}
if equipe == "E2"
{
	x = player_2.x
	y = player_2.y
}
/*x = _parent.x
y = _parent.y
show_message(string(_parent.id) + "		" + string(player.id))*/

portee --
if portee <= 0 {instance_destroy()}
image_alpha = portee/get_module_attaque_stats(8, "portee")

set_effet(effet_elec)

if not effectue {
	effectue = true
	var liste_temp = ds_list_create()
	collision_circle_list(x, y, sprite_width/2, her_joueur, true, false, liste_temp, false)

	for (var i = 0; ds_list_size(liste_temp) > i; i++)
	{
		with (ds_list_find_value(liste_temp, i)) {
			if other.equipe != equipe {
				set_effet(effet_elec)
				set_degats(other.degats, other.type, id)
			}
			/*if other.equipe != equipe and equipe == "E1" {set_effet(effet_elec)}
			if other.equipe != equipe and equipe != "E1" {set_degats(other.degats, other.type, id)}*/
		}
	}
}