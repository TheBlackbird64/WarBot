if not instance_exists(_parent) {instance_destroy()}
if variable_instance_exists(_parent, "vie") {if _parent.vie <= 0 {instance_destroy()}}

coef = 1 - point_distance(_parent.x, _parent.y, centre_recul_x, centre_recul_y)/diametre_recul
if coef <= 0 {instance_destroy()}

_parent.direction = point_direction(centre_recul_x, centre_recul_y, _parent.x, _parent.y)
_parent.image_angle = _parent.direction

_parent.speed = coef*(diametre_recul/3)+_parent.vitesse
calc = _parent.speed

with (_parent)
{
	var i = 0
	while i < 7 and place_meeting(x + lengthdir_x(other.calc, direction), y + lengthdir_y(other.calc, direction), her_solide)
	{
		i ++
		speed = other.coef*(other.diametre_recul/(i+3))+vitesse
		other.calc = speed
	}
	if i == 7
	{
		instance_destroy(other)
	}
}

x = _parent.x
y = _parent.y