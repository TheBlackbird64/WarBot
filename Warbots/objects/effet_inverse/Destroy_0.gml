if instance_exists(_parent) {
	if variable_instance_exists(_parent, "equipe")
	{
		if _parent.equipe == "E1"
		{
			global.touche_haut = ancienne_touche_haut
			global.touche_bas = ancienne_touche_bas
			global.touche_gauche = ancienne_touche_gauche
			global.touche_droite = ancienne_touche_droite
		}
	}
}