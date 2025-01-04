if not effectue {
	create_widget(croix_fermer, x+140, y-100, 0.3)
	var a = true
	if (int64(_parent.prix) > global.pieces) {
		texte = "Vous n'avez pas assez d'argent."
		a = false
	}
	if _parent.deja_debloque {
		texte = "Vous possédez déjà ce module."
		a = false
	}
	if a {create_widget(b_achat, x, y+95, 0.4)}
	effectue = true
}