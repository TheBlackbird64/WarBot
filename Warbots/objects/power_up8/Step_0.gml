compteur--
if compteur == 0 or not instance_exists(_parent) {instance_destroy()}


if compteur%10 == 0 and compteur != 0
{
	var a = instance_create_depth(x, y, depth, power_up8b)
	a._parent = _parent
	array_push(liste_inst, a)
}