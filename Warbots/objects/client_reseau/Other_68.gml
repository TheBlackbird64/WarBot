var buff = ds_map_find_value(async_load, "buffer")
msg = ""

if ds_map_find_value(async_load, "succeeded") != 1
{
	msg = buffer_read(buff, buffer_string)
}

var test = 0
var boucle = true
while boucle {
	try {
		test ++
		if test > 100 {show_message("erreur reseau")}
		msg += buffer_read(buff, buffer_string)
	} catch (e) {boucle = false}
}

//tabcom = separer(msg, ",")
//with (all) {event_user(15)}
var msg_bug = string_char_at(msg, string_length(msg)) != "|"
if msg_bug {compteur_erreurs++} //debug
var liste_msg = separer(msg, "|")

// debug
/*var a = file_text_open_append("log.txt")
file_text_write_string(a, "recu: " + regrouper(liste_msg, "|"))
file_text_writeln(a)
file_text_close(a)*/

for (var i = 0; array_length(liste_msg) > i; i++)
{
	tabcom = separer(liste_msg[i], ",")
	
	if not (msg_bug and array_length(liste_msg)-1 == i)
	{
		with (all) {event_user(15)}
	}
}

