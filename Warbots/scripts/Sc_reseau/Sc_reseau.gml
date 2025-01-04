function send_message_server(str){
	static err = 0
	str += "|"
	var buff = buffer_create(1, buffer_grow, 1)
	buffer_seek(buff, buffer_seek_start, 0)
	buffer_write(buff, buffer_string, str)
	if network_send_raw(client_reseau.clients, buff, string_length(str)) < 0
	{
		err ++
	}
	else
	{
		err = 0
	}
	if err > 3
	{
		err = 0
		//with (client_reseau) {network_destroy(clients)}
		
	}
}

function connection()
{
	global.pseudo = client_reseau.tabcom[2]
	global.classement = int64(client_reseau.tabcom[4])
	global.xp = int64(client_reseau.tabcom[5])
	global.pieces = int64(client_reseau.tabcom[6])
	global.objets = separer(client_reseau.tabcom[7], ";")
	global.defis = separer(client_reseau.tabcom[8], ";")
	global.amis = separer(client_reseau.tabcom[9], ";")
	var temp_liste = separer(client_reseau.tabcom[10], ";")
	if array_length(temp_liste) > 0 {
		for (var i = 0; array_length(temp_liste) > i; i++)
		{
			array_push(global.config, separer(temp_liste[i], "."))
		}
	}
	global.admin = client_reseau.tabcom[11]
	global.ban = client_reseau.tabcom[12]
	instance_destroy(fen_connection)
	if global.ban != "false" {instance_create_depth(683, 384, -300, fen_msg_ban)}
}

function groupe()
{
	return client_reseau.tabcom[0] == "recu_groupe" and client_reseau.tabcom[1] == global.id_groupe
}

function envoi_grp(msg_array)
{
	send_message_server("envoi_groupe," + global.id_groupe + "," + regrouper(msg_array, "!"))
}

function tab_temp_grp()
{
	return separer(client_reseau.tabcom[2], "!")
}

function sauvegarde_compte()
{
	
	send_message_server("save," + global.pseudo + "," + string(global.classement) + "," + string(global.xp) + ","
	+ string(global.pieces) + "," + regrouper(global.objets, ";") + "," + regrouper(global.defis, ";") + "," + regrouper(global.amis, ";")
	+ "," + regrouper_2d(global.config, ";", ".") + "," + global.admin + "," + global.ban)
}

function liste_caracteres_non_valide(str)
{
	var liste_carac_autorises = "abcdefghijklmnopqrstuvwzyzABCDEFGHIJKLMNOPQRSTUVWZYZ1234567890_ +-=/<>"
	var verif = false
	var result = ""
	for (var i = 1; string_length(str)+1 > i; i++)
	{
		verif = false
		for (var j = 1; string_length(liste_carac_autorises) > j; j++)
		{
			if string_char_at(str, i) == string_char_at(liste_carac_autorises, j) {verif = true}
		}
		if not verif {
			result += "'" + string_char_at(str, i) + "', "
		}
	}
	if string_length(result) > 0 {result = string_copy(result, 1, string_length(result)-2)}
	return result
}