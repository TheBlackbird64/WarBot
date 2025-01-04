if client_reseau.tabcom[0] == "ch_mdp" and client_reseau.tabcom[1] == "valide"
{
	if file_exists("autoconnect.txt")
	{
		var f = file_text_open_write("autoconnect.txt")
		file_text_write_string(f, "connection," + global.pseudo + "," + _parent.ch_txt.saisie)
		file_text_close(f)
	}
	instance_destroy(_parent)
}
else
{
	fen_err("Le nouveau mot de passe est trop court.")
}