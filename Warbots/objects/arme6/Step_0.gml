if not instance_exists(_parent) {instance_destroy()}
compteur --
image_alpha = abs(compteur-compteur_max)/compteur_max

if compteur == 0
{
	//paralysie
	if  equipe == "E1" {player.paralyse = true}
	
	// particules
	part_laser = part_type_create() {
	part_type_shape(part_laser, pt_shape_line)
	part_type_scale(part_laser, 1, 1.5)
	part_type_color1(part_laser, $FFFFFF)
	part_type_life(part_laser, 10, 10)
	part_type_alpha2(part_laser, 1, 0.2)
	part_type_size(part_laser, 0.2, 0.2, 0, 0)
	part_type_orientation(part_laser, orient, orient, 0, 0, false)
	}
	part_laser2 = part_type_create() {
	part_type_shape(part_laser2, pt_shape_flare)
	part_type_direction(part_laser2, 0, 359, 0, 0)
	part_type_speed(part_laser2, 0.2, 0.4, 0, 0)
	part_type_color2(part_laser2, $FFFFFF, $FF0F00)
	part_type_life(part_laser2, 20, 60)
	part_type_alpha2(part_laser2, 1, 0.3)
	part_type_size(part_laser2, 0.3, 0.5, 0, 0)
	}
	part_laser3 = part_type_create() {
	part_type_direction(part_laser3, 0, 359, 0, 0.1)
	part_type_speed(part_laser3, 0.6, 2, -0.01, 0)
	part_type_shape(part_laser3, pt_shape_pixel)
	part_type_color_rgb(part_laser3, 0, 200, 0, 0, 255, 255)
	part_type_life(part_laser3, 30, 60)
	part_type_alpha2(part_laser3, 0.8, 0.3)
	part_type_size(part_laser3, 3, 6, -0.04, 0)
	part_type_orientation(part_laser3, 0, 359, 0, 1, false)
	}
	
	//detection mur
	var detection_lenght = 0
	while (not place_meeting(x+lengthdir_x(detection_lenght, orient), y+lengthdir_y(detection_lenght, orient), her_solide)) and (detection_lenght < portee*vitesse)
	{
		detection_lenght += 5
	}
	//degats
	var temp_liste = ds_list_create()
	collision_line_list(x, y, x+lengthdir_x(detection_lenght, orient), y+lengthdir_y(detection_lenght, orient), her_joueur, true, true, temp_liste, false)
	for (var i = 0; ds_list_size(temp_liste) > i; i++)
	{
		var inst = ds_list_find_value(temp_liste, i)
		if inst.equipe != equipe {set_degats(degats, type, inst)}
	}
	//particules emission
	
	part_emit = part_emitter_create(global.effet_part_sys)
	part_emitter_region(global.effet_part_sys, part_emit, x, x+lengthdir_x(detection_lenght, orient), y, y+lengthdir_y(detection_lenght, orient), ps_shape_line, ps_distr_linear)
	part_emitter_burst(global.effet_part_sys, part_emit, part_laser2, 150)
	part_emitter_burst(global.effet_part_sys, part_emit, part_laser3, 150)
	part_emitter_burst(global.effet_part_sys, part_emit, part_laser, 150)
}
if compteur == -30
{
	if  equipe == "E1" {player.paralyse = false}
	instance_destroy()
}