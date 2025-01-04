if temps_restant(false)/30 == round(temps_restant(false)/30)
{
	if not effectue
	{
		move *= -1
		compteur_anim = 60
	}
	effectue = true
}
else
{
	effectue = false
}
if compteur_anim >= 0 {
	compteur_anim--
	x += _x*move*(sprite_width/60)
	y += _y*move*(sprite_width/60)
}