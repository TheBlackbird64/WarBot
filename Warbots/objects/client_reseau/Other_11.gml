clients = network_create_socket(network_socket_tcp)
network_set_config(network_config_connect_timeout, 1000)
//network_set_timeout(clients, 3000, 3000)

var f = ""
var host = ""
var port = 0

if file_exists(fname) {
	f = file_text_open_read(fname)
	host = file_text_read_string(f)
	port = file_text_read_real(f)
	file_text_close(f)
}
else {
	f = file_text_open_write(fname)
	file_text_close(f)
}

if network_connect_raw(clients, host, port) < 0
{
	network_destroy(clients)
	if id_fen_erreur == ""
	{
		id_fen_erreur = fen_err_reseau()
	}
}
else
{
	if id_fen_erreur != ""
	{
		instance_destroy(id_fen_erreur)
	}
	id_fen_erreur = "connection"
	send_message_server("version")
	instance_create_depth(0, 0, 1, ecran_noir_chargement)
}
//network_connect_raw(clients, "127.0.0.1", 50000)
