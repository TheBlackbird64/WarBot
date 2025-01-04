if not effectue {
	create_widget(croix_fermer, x+220, y-160, 0.4)
	create_widget(b_selectionner, x, y+150, 0.5)
	texte = separer(texte2, ";")
	texte[1] = saut_ligne_str(texte[1], 32)
	effectue = true
}