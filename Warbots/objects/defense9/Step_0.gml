if active
{
	charge = false
	image_angle += 2
	compteur_alpha -= 0.01
	if compteur_alpha <= -1 {compteur_alpha = 1}
}

if active or charge
{
	compteur_eclair -= random_range(1, 3)
	if charge {compteur_eclair++}
	if compteur_eclair <= 0
	{
		compteur_eclair = 15
		var a = instance_create_depth(x, y, depth, test_eclair)
		a.couleur = $0000FF
	}
}