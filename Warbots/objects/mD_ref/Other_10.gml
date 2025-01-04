/// @description joueur reçoit degats
if active {
	vie -= degats_encaisse
	if vie < 0 {vie = 0}
	envoi_grp(["defense_vie", string(num_module), string(vie)])
}