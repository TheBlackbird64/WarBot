if client_reseau.tabcom[0] == "partie_trouvee"
{
	global.id_groupe = client_reseau.tabcom[1]
	global.attaque = client_reseau.tabcom[2]
	compteur_chargement += 1
	fen_chargement.texte = "Partie trouvée"
	instance_destroy(b_annuler)
}
