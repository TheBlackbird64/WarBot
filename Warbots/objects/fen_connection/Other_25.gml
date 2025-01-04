if client_reseau.tabcom[0] == "connection" and file_exists("autoconnect.txt")
{
	if client_reseau.tabcom[1] == "valide"
	{
		connection()
	}
	else
	{
		if file_exists("autoconnect.txt")
		{
			file_delete("autoconnect.txt")
		}
		else
		{
			fen_err("Identifiant ou mot de passe incorrect.")
		}
	}
}