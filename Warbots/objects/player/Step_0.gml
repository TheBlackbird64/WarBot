///@description dep réseau + overtime
if active {
	envoi_grp(["sync_coord_prec", string(x), string(y), string(image_angle), string(vie), string(energie)])

	if compteur_req_ping > 30 {
		compteur_req_ping = 0
		ping = current_time
		send_message_server("ping," + string(current_time))
	}
	compteur_req_ping++
	
	if instance_number(recul) > 0 {if instance_nearest(x, y, recul)._parent != id {speed = 0}}
	else {speed = 0}
	if vie <= 0 {fin_partie()}
	
	if round(temps_restant(false)) <= 0
	{
		fin_partie()
	}
}


