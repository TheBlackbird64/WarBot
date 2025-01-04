if active {

var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])

//état connection

var etat_connection = 0
if player.ping_reel > 40 and player.ping_reel < 100
{
	etat_connection = 1
}
if player.ping_reel > 100 and player.ping_reel < 250
{
	etat_connection = 2
}
if player.ping_reel > 250
{
	etat_connection = 3
}
draw_sprite_ext(S_icone_wifi, etat_connection, cam_x+1300, cam_y+35, 0.2, 0.2, 0, c_white, 1)
if temps_restant(false) >= 0 {draw_text(cam_x+1200, cam_y+30, temps_restant(true))}
draw_text(cam_x+1200, cam_y+60, string(fps))
//draw_text(cam_x+1100, cam_y+50, "erreurs reseau: " + string(client_reseau.compteur_erreurs))


//protection
draw_set_color(c_white)
var tab_noms_type = ["protection_feu", "protection_elec", "protection_matiere"]
for (var j = 0; array_length(tab_noms_type) > j; j++)
{
	var protect = 0
	for (var i = 0; array_length(player.tab_defense) > i; i++)
	{
		if player.tab_defense[i][1] {protect += variable_instance_get(player.tab_defense[i][2], tab_noms_type[j])}
	}
	if protect > 1 {protect = 1}
	draw_sprite_ext(S_icone_protection, j, cam_x+1270, cam_y+630+50*j, 0.2, 0.2, 0, c_white, 1)
	draw_set_valign(fa_middle)
	draw_text(cam_x+1300, cam_y+630+50*j, string(round(protect*100))+"%")
	draw_set_valign(fa_top)
}





var _x = 0
var _y = 0
var inst = 0
for (var i = 0; array_length(global.liste_joueurs) > i; i++)
{
	inst = global.liste_joueurs[i]
	if inst.visible {
		_x = inst.x
		_y = inst.y
		
		//vie
		draw_set_color(c_white)
		draw_rectangle(_x-100, _y-60, _x+100, _y-50, true)
		draw_set_color(c_green)
		if inst.vie < inst.vie_max/2 {draw_set_color(c_yellow)}
		if inst.vie < inst.vie_max/4 {draw_set_color($0000FF)}
		if inst.vie > 0 {draw_rectangle(_x-98, _y-58, _x-98+196*(inst.vie/inst.vie_max), _y-52, false)}
			//power ups
			if power_up_active(power_up2, inst.equipe) or power_up_active(power_up4, inst.equipe)
			{
				for (var j = 0; array_length(liste_ajouts_vie) > j; j++) {
					if liste_ajouts_vie[j][0] == inst {
						draw_set_color($FFAA00)
						draw_rectangle(_x-98+196*(liste_ajouts_vie[j][1]/inst.vie_max), _y-58, _x-98+196*(inst.vie/inst.vie_max), _y-52, false)
					}
				}
			}
		
		
		//energie
		if inst.equipe == "E1"
		{
			var rec_x1 = cam_x+70
			var rec_x2 = cam_x+400
			var rec_y1 = cam_y+40
			var rec_y2 = cam_y+55
			draw_set_color(c_white)
			draw_text(rec_x2+20, rec_y1, string(round(inst.energie)) + "/" + string(inst.energie_max))
			draw_sprite_ext(S_icone_pile, 0, rec_x2+130, rec_y1+10, 0.3, 0.3, 0, c_white, 1)
			part_system_position(part_sys_local, cam_x, cam_y)
			part_emitter_region(part_sys_local, part_emit, rec_x1-cam_x, rec_x2-cam_x, rec_y1-cam_y, rec_y2-cam_y, ps_shape_rectangle, ps_distr_linear)
		}
		else
		{
			var rec_x1 = _x-100
			var rec_x2 = _x+100
			var rec_y1 = _y-80
			var rec_y2 = _y-70
			part_system_position(part_sys_local2, _x, _y)
			part_emitter_region(part_sys_local2, part_emit2, rec_x1-_x, rec_x2-_x, rec_y1-_y, rec_y2-_y, ps_shape_rectangle, ps_distr_linear)
		}
		draw_set_color(c_white)
		draw_rectangle(rec_x1, rec_y1, rec_x2, rec_y2, true)
		draw_set_color(c_yellow)
		if inst.energie > 0 {draw_rectangle(rec_x1+2, rec_y1+2, rec_x1+2+(rec_x2-rec_x1-4)*(inst.energie/inst.energie_max), rec_y2-2, false)}
			//power ups
			if power_up_active(power_up3, inst.equipe) or power_up_active(power_up4, inst.equipe) {
				if inst.equipe == "E1" {part_emitter_burst(part_sys_local, part_emit, part_pw, -3)}
				else {part_emitter_burst(part_sys_local2, part_emit2, part_pw, -3)}
				
				draw_set_alpha(abs(compteur_pw)/100)
				draw_set_color(c_white)
				draw_rectangle(rec_x1+2, rec_y1+2, rec_x1+2+(rec_x2-rec_x1-4)*(inst.energie/inst.energie_max), rec_y2-2, false)
			}
		draw_set_alpha(1)
		
		//pseudo
		draw_set_halign(fa_center)
		if inst.equipe == "E1"
		{
			draw_set_color(c_green)
			draw_text(_x, _y-100, global.pseudo)
		}
		else
		{
			draw_set_color(c_red)
			draw_text(_x, _y-130, global.pseudo_adv)
		}
		draw_set_halign(fa_left)
		draw_set_color(c_white)
	}
}


}