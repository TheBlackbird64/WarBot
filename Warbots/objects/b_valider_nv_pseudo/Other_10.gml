var test = liste_caracteres_non_valide(_parent.ch_txt.saisie)

if test == "" {
	send_message_server("ch_pseudo," + global.pseudo + "," + _parent.ch_txt.saisie)
}
else
{
	fen_err("Caractères non valide: " + test)
}