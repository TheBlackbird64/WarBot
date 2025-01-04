if tabcom[0] == "version"
{
	if tabcom[1] == global.version
	{
		send_message_server("message")
	}
	else
	{
		instance_destroy(ecran_noir_chargement)
		instance_create_depth(683, 384, -200, fen_erreur2)
	}
}
if tabcom[0] == "message"
{
	instance_destroy(ecran_noir_chargement)
	instance_create_depth(0, 0, -100, fen_connection)
	if tabcom[1] != "-"
	{
		var a = instance_create_depth(683, 384, -200, fen_message)
		a.str = tabcom[1]
	}
}