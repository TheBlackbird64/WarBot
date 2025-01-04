if client_reseau.tabcom[0] == "ch_pseudo" and client_reseau.tabcom[1] == "valide"
{
	if file_exists("autoconnect.txt")
	{
		var f = file_text_open_write("autoconnect.txt")
		file_text_write_string(f, "connection," + client_reseau.tabcom[2] + "," + client_reseau.tabcom[3])
		file_text_close(f)
	}
	global.pseudo = client_reseau.tabcom[2]
	instance_destroy(_parent)
}
else
{
	fen_err("Le nouveau pseudo est trop court ou est déjà utilisé.")
}