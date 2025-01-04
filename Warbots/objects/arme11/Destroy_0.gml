var nb = 5
for (var i = 0; nb > i; i++)
{
	var a = instance_create_depth(x, y, depth, arme11b)
	a.direction = (360/nb)*i
	a.equipe = equipe
}

