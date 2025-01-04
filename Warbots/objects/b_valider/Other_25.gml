if client_reseau.tabcom[0] == "connection"
{
	if client_reseau.tabcom[1] == "valide"
	{
		if fen_connection.case_c.image_index == 1 {
			var f = file_text_open_write("autoconnect.txt")
			file_text_write_string(f, "connection," + fen_connection.txt1.saisie + "," + fen_connection.txt2.saisie)
			file_text_close(f)
		}
		else
		{
			if file_exists("autoconnect.txt") {file_delete("autoconnect.txt")}
		}
		connection()
	}
	else
	{
		fen_err("Identifiant ou mot de passe incorrect.")
	}
}

if client_reseau.tabcom[0] == "creer_compte"
{
	if client_reseau.tabcom[1] == "valide"
	{
		send_message_server("connection," + fen_connection.txt1.saisie + "," + fen_connection.txt2.saisie)
	}
	else
	{
		fen_err("L'identifiant est déja utilisé, ou le mot de passe est trop court.")
	}
}