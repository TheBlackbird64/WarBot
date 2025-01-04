speed = vitesse
image_angle = direction
portee --

if portee <= 0 {instance_destroy()}

var liste_temp = ds_list_create()
var cible = 0
var len = collision_rectangle_list(x-room_width, y-room_height, x+room_width, y+room_height, her_joueur, false, true, liste_temp, true)
for (var i = 0; len > i; i++)
{
	var inst_temp = ds_list_find_value(liste_temp, i)
	if inst_temp.equipe != equipe and cible == 0
	{
		cible = inst_temp
	}
}

if angle_difference(direction, point_direction(x, y, cible.x, cible.y)) > 2 {direction -= 2}
if angle_difference(direction, point_direction(x, y, cible.x, cible.y)) < 2 {direction += 2}


compteur_helices+=20
if compteur_helices > 359 {compteur_helices = 0}
if portee % 10 == 0 {
	if image_index == 0 {image_index = 1}
	else {image_index = 0}
}