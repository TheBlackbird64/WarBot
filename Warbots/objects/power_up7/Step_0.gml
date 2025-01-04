var coef_angle = 15
for (var i = 0; nombre > i; i++)
{
	var a = instance_create_depth(_parent.x, _parent.y, depth, power_up7b)
	a._parent = _parent
	a.direction = point_direction(_parent.x, _parent.y, x, y)-(coef_angle/2)*nombre + coef_angle*i
}

instance_destroy()