if creer_nv { var envoi_msg = "creer_compte," }
else { var envoi_msg = "connection," }
envoi_msg += fen_connection.txt1.saisie + "," + fen_connection.txt2.saisie

var test = liste_caracteres_non_valide(fen_connection.txt1.saisie)
var test2 = liste_caracteres_non_valide(fen_connection.txt2.saisie)

if test != "" {fen_err("Caractères non valide: " + test)}
else {if test2 != "" {fen_err("Caractères non valide: " + test2)}}

if test == "" and test2 == "" {
	send_message_server(envoi_msg)
}
