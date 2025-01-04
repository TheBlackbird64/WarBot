
if global.admin == "true" and affichage {draw_text(600, 20, "0: on/off mode développeur: " + texte_debug(active_debug))}

if active_debug and affichage {
	
	draw_text(600, 40, "1: on/off affichage: " + texte_debug(affichage))
	draw_text(600, 60, "2: debloquer tout les modules")
	draw_text(600, 80, "3: on/off decalage player 2: " + texte_debug(decalage_p2))
	draw_text(600, 100, "4: on/off invincible: " + texte_debug(invincible))
	draw_text(600, 120, "5: finir partie")
	
	draw_text(600, 160, "7: on/off robot modules max: " + texte_debug(robot_cheat))
	draw_text(600, 180, "8: pause")
	try{
	draw_text(600, 140, "6: on/off sol: " + texte_debug(layer_get_visible(layer_get_id("Tiles_1"))))
	draw_text(600, 200, "9: on/off interface visible: " + texte_debug(draw_interface.active))
	} catch(e) {}


//debug
try {
//draw_text(100, 300, string(instance_number(recul)))


} catch(e) {}

}