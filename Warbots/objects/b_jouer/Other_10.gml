if array_length(global.config[3]) != 0 {
	var a = instance_create_depth(683, 384, depth-10, fen_chargement)
	a.texte = "Recherche d'une partie..."
	send_message_server("jouer")
}
else
{
	fen_err("Il faut équiper un robot avant de jouer.")
}